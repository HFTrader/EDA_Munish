// ***************************************************************************
// ***************************************************************************
// Copyright 2011(c) Analog Devices, Inc.
// 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//     - Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     - Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in
//       the documentation and/or other materials provided with the
//       distribution.
//     - Neither the name of Analog Devices, Inc. nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//     - The use of this software may or may not infringe the patent rights
//       of one or more patent holders.  This license does not release you
//       from the requirement that you obtain separate licenses from these
//       patent holders to use this software.
//     - Use of the software either in source or binary form, must be run
//       on or directly connected to an Analog Devices Inc. component.
//    
// THIS SOFTWARE IS PROVIDED BY ANALOG DEVICES "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
// INCLUDING, BUT NOT LIMITED TO, NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE ARE DISCLAIMED.
//
// IN NO EVENT SHALL ANALOG DEVICES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, INTELLECTUAL PROPERTY
// RIGHTS, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
// THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module ad_jesd_cntrl (

  // gtx interface

  rx_rst,
  rx_clk,
  rx_data,
  rx_charisk,
  rx_disperr,
  rx_notintable,

  // jesd interface

  rx_sysref,
  rx_sync,

  // jesd controls

  rx_sysref_enb,
  rx_sync_enb,

  // monitor signals

  mon_trigger,
  mon_data);

  // gtx interface

  input           rx_rst;
  input           rx_clk;
  input   [31:0]  rx_data;
  input   [ 3:0]  rx_charisk;
  input   [ 3:0]  rx_disperr;
  input   [ 3:0]  rx_notintable;

  // jesd interface

  input           rx_sysref;
  input           rx_sync;

  // jesd controls

  output          rx_sysref_enb;
  output          rx_sync_enb;

  // monitor signals

  output  [ 4:0]  mon_trigger;
  output  [55:0]  mon_data;

  // receive state machine parameters

  localparam  RX_FSM_IDLE     = 4'h0;
  localparam  RX_FSM_CGS      = 4'h1;
  localparam  RX_FSM_SYSREF   = 4'h2;
  localparam  RX_FSM_SYNC     = 4'h3;
  localparam  RX_FSM_DATA     = 4'h4;

  // internal registers

  reg             rx_sysref_enb = 'd0;
  reg             rx_sync_enb = 'd0;
  reg     [ 3:0]  rx_fsm = 'd0;

  // internal signals

  wire            rx_ilas_f_s;
  wire            rx_ilas_q_s;
  wire            rx_ilas_a_s;
  wire            rx_ilas_r_s;
  wire            rx_cgs_k_s;
  wire    [ 3:0]  rx_valid_k_s;
  wire            rx_valid_k_1_s;

  // monitor interface

  assign mon_data[55:55] = rx_ilas_f_s;
  assign mon_data[54:54] = rx_ilas_q_s;
  assign mon_data[53:53] = rx_ilas_a_s;
  assign mon_data[52:52] = rx_ilas_r_s;
  assign mon_data[51:51] = rx_cgs_k_s;
  assign mon_data[50:50] = rx_valid_k_1_s;
  assign mon_data[49:49] = rx_sysref_enb;
  assign mon_data[48:48] = rx_sync_enb;
  assign mon_data[47:44] = rx_fsm;
  assign mon_data[43:40] = rx_charisk;
  assign mon_data[39:36] = rx_disperr;
  assign mon_data[35:32] = rx_notintable;
  assign mon_data[31: 0] = rx_data;

  assign mon_trigger = {rx_valid_k_1_s, rx_fsm};

  // assert sysref and indicate data phase

  always @(posedge rx_clk) begin
    if (rx_rst == 1'b1) begin
      rx_sysref_enb <= 'd0;
      rx_sync_enb <= 'd0;
      rx_fsm <= 'd0;
    end else begin
      case (rx_fsm)
        RX_FSM_DATA: begin // data phase
          rx_sysref_enb <= 'd0;
          rx_sync_enb <= 'd1;
          if (rx_sync == 1'b0) begin
            rx_fsm <= RX_FSM_IDLE;
          end else begin
            rx_fsm <= RX_FSM_DATA;
          end
        end
        RX_FSM_SYNC: begin // sync assertion
          rx_sysref_enb <= 'd0;
          rx_sync_enb <= 'd1;
          if (rx_sync == 1'b1) begin
            rx_fsm <= RX_FSM_DATA;
          end else begin
            rx_fsm <= RX_FSM_SYNC;
          end
        end
        RX_FSM_CGS: begin // check for cgs
          rx_sysref_enb <= 'd0;
          rx_sync_enb <= 'd0;
          if (rx_cgs_k_s == 1'b0) begin
            rx_fsm <= RX_FSM_SYNC;
          end else begin
            rx_fsm <= RX_FSM_CGS;
          end
        end
        RX_FSM_SYSREF: begin // assert sysref
          rx_sysref_enb <= 'd1;
          rx_sync_enb <= 'd0;
          if (rx_sysref == 1'b1) begin
            rx_fsm <= RX_FSM_CGS;
          end else begin
            rx_fsm <= RX_FSM_SYSREF;
          end
        end
        RX_FSM_IDLE: begin // reset done
          rx_sysref_enb <= 'd0;
          rx_sync_enb <= 'd0;
          rx_fsm <= RX_FSM_SYSREF;
        end
        default: begin
          rx_sysref_enb <= 'd0;
          rx_sync_enb <= 'd0;
          rx_fsm <= RX_FSM_IDLE;
        end
      endcase
    end
  end

  // ilas frame characters

  assign rx_ilas_f_s = 
    (((rx_data[31:24] == 8'hfc) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'hfc) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'hfc) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'hfc) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_q_s = 
    (((rx_data[31:24] == 8'h9c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h9c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h9c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h9c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_a_s = 
    (((rx_data[31:24] == 8'h7c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h7c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h7c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h7c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_ilas_r_s = 
    (((rx_data[31:24] == 8'h1c) && (rx_valid_k_s[ 3] == 1'b1)) ||
     ((rx_data[23:16] == 8'h1c) && (rx_valid_k_s[ 2] == 1'b1)) ||
     ((rx_data[15: 8] == 8'h1c) && (rx_valid_k_s[ 1] == 1'b1)) ||
     ((rx_data[ 7: 0] == 8'h1c) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  assign rx_cgs_k_s = 
    (((rx_data[31:24] == 8'hbc) && (rx_valid_k_s[ 3] == 1'b1)) &&
     ((rx_data[23:16] == 8'hbc) && (rx_valid_k_s[ 2] == 1'b1)) &&
     ((rx_data[15: 8] == 8'hbc) && (rx_valid_k_s[ 1] == 1'b1)) &&
     ((rx_data[ 7: 0] == 8'hbc) && (rx_valid_k_s[ 0] == 1'b1))) ? 1'b1 : 1'b0;

  // validate all characters

  assign rx_valid_k_s = rx_charisk & (~rx_disperr) & (~rx_notintable);
  assign rx_valid_k_1_s = (rx_valid_k_s == 4'd0) ? 1'b0 : 1'b1;

endmodule

// ***************************************************************************
// ***************************************************************************
