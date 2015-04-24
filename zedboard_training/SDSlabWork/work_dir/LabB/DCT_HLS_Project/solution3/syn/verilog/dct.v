// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2013_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=894,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module dct (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [5:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [15:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;
reg   [2:0] ap_CS_fsm = 3'b000;
reg   [6:0] indvar_flatten_reg_130;
reg   [3:0] r_i_reg_141;
reg   [3:0] c_i_reg_153;
reg   [6:0] indvar_flatten1_reg_164;
reg   [3:0] r_i2_reg_175;
reg   [3:0] c_i6_reg_187;
wire   [0:0] exitcond_flatten_fu_221_p2;
reg   [0:0] exitcond_flatten_reg_413;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1;
wire   [6:0] indvar_flatten_next_fu_227_p2;
wire   [0:0] exitcond_i_fu_233_p2;
reg   [0:0] exitcond_i_reg_422;
wire   [3:0] c_i_mid2_fu_239_p3;
reg   [3:0] c_i_mid2_reg_427;
reg   [3:0] ap_reg_ppstg_c_i_mid2_reg_427_pp0_it1;
wire   [3:0] c_fu_247_p2;
wire   [3:0] r_i_mid2_fu_259_p3;
reg   [3:0] r_i_mid2_reg_438;
wire   [0:0] exitcond_flatten1_fu_317_p2;
reg   [0:0] exitcond_flatten1_reg_449;
reg    ap_reg_ppiten_pp1_it0 = 1'b0;
reg    ap_reg_ppiten_pp1_it1 = 1'b0;
reg    ap_reg_ppiten_pp1_it2 = 1'b0;
reg   [0:0] ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1;
wire   [6:0] indvar_flatten_next1_fu_323_p2;
wire   [0:0] exitcond_i1_fu_329_p2;
reg   [0:0] exitcond_i1_reg_458;
wire   [3:0] c_i6_mid2_fu_335_p3;
reg   [3:0] c_i6_mid2_reg_463;
wire   [3:0] c_1_fu_343_p2;
wire   [3:0] r_i2_mid2_fu_355_p3;
reg   [3:0] r_i2_mid2_reg_474;
wire   [5:0] tmp_9_i_fu_403_p2;
reg   [5:0] tmp_9_i_reg_484;
wire    grp_dct_2d_fu_199_ap_done;
reg   [5:0] buf_2d_in_address0;
reg    buf_2d_in_ce0;
reg    buf_2d_in_we0;
wire   [15:0] buf_2d_in_d0;
wire   [15:0] buf_2d_in_q0;
wire   [5:0] buf_2d_in_address1;
reg    buf_2d_in_ce1;
wire   [15:0] buf_2d_in_q1;
reg   [5:0] buf_2d_out_address0;
reg    buf_2d_out_ce0;
reg    buf_2d_out_we0;
wire   [15:0] buf_2d_out_d0;
wire   [15:0] buf_2d_out_q0;
wire    grp_dct_2d_fu_199_ap_start;
wire    grp_dct_2d_fu_199_ap_idle;
wire    grp_dct_2d_fu_199_ap_ready;
wire   [5:0] grp_dct_2d_fu_199_in_block_address0;
wire    grp_dct_2d_fu_199_in_block_ce0;
wire   [15:0] grp_dct_2d_fu_199_in_block_q0;
wire   [5:0] grp_dct_2d_fu_199_in_block_address1;
wire    grp_dct_2d_fu_199_in_block_ce1;
wire   [15:0] grp_dct_2d_fu_199_in_block_q1;
wire   [5:0] grp_dct_2d_fu_199_out_block_address0;
wire    grp_dct_2d_fu_199_out_block_ce0;
wire    grp_dct_2d_fu_199_out_block_we0;
wire   [15:0] grp_dct_2d_fu_199_out_block_d0;
reg   [3:0] r_i_phi_fu_145_p4;
reg   [3:0] r_i2_phi_fu_179_p4;
reg    grp_dct_2d_fu_199_ap_start_ap_start_reg = 1'b0;
wire   [63:0] tmp_6_i_fu_287_p1;
wire   [63:0] tmp_2_fu_312_p1;
wire   [63:0] tmp_5_fu_398_p1;
wire   [63:0] tmp_3_i_fu_409_p1;
wire   [3:0] r_fu_253_p2;
wire   [2:0] tmp_fu_266_p1;
wire   [5:0] c_i_cast6_fu_278_p1;
wire   [5:0] tmp_i_fu_270_p3;
wire   [5:0] tmp_5_i_fu_281_p2;
wire   [6:0] tmp_1_fu_295_p3;
wire   [7:0] p_addr_cast_fu_302_p1;
wire   [7:0] tmp_7_i_trn_cast_fu_292_p1;
wire   [7:0] p_addr1_fu_306_p2;
wire   [3:0] r_s_fu_349_p2;
wire   [2:0] tmp_3_fu_362_p1;
wire   [6:0] tmp_4_fu_380_p3;
wire   [7:0] p_addr2_cast_fu_388_p1;
wire   [7:0] tmp_8_i_trn_cast_fu_377_p1;
wire   [7:0] p_addr3_fu_392_p2;
wire   [5:0] c_i6_cast2_fu_374_p1;
wire   [5:0] tmp_i5_fu_366_p3;
reg   [2:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b000;
parameter    ap_ST_pp0_stg0_fsm_1 = 3'b1;
parameter    ap_ST_st5_fsm_2 = 3'b10;
parameter    ap_ST_st6_fsm_3 = 3'b11;
parameter    ap_ST_pp1_stg0_fsm_4 = 3'b100;
parameter    ap_ST_st10_fsm_5 = 3'b101;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv7_40 = 7'b1000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_true = 1'b1;


dct_2d_col_inbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_in_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( buf_2d_in_address0 ),
    .ce0( buf_2d_in_ce0 ),
    .we0( buf_2d_in_we0 ),
    .d0( buf_2d_in_d0 ),
    .q0( buf_2d_in_q0 ),
    .address1( buf_2d_in_address1 ),
    .ce1( buf_2d_in_ce1 ),
    .q1( buf_2d_in_q1 )
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( buf_2d_out_address0 ),
    .ce0( buf_2d_out_ce0 ),
    .we0( buf_2d_out_we0 ),
    .d0( buf_2d_out_d0 ),
    .q0( buf_2d_out_q0 )
);

dct_2d grp_dct_2d_fu_199(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_dct_2d_fu_199_ap_start ),
    .ap_done( grp_dct_2d_fu_199_ap_done ),
    .ap_idle( grp_dct_2d_fu_199_ap_idle ),
    .ap_ready( grp_dct_2d_fu_199_ap_ready ),
    .in_block_address0( grp_dct_2d_fu_199_in_block_address0 ),
    .in_block_ce0( grp_dct_2d_fu_199_in_block_ce0 ),
    .in_block_q0( grp_dct_2d_fu_199_in_block_q0 ),
    .in_block_address1( grp_dct_2d_fu_199_in_block_address1 ),
    .in_block_ce1( grp_dct_2d_fu_199_in_block_ce1 ),
    .in_block_q1( grp_dct_2d_fu_199_in_block_q1 ),
    .out_block_address0( grp_dct_2d_fu_199_out_block_address0 ),
    .out_block_ce0( grp_dct_2d_fu_199_out_block_ce0 ),
    .out_block_we0( grp_dct_2d_fu_199_out_block_we0 ),
    .out_block_d0( grp_dct_2d_fu_199_out_block_d0 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & ~(exitcond_flatten_fu_221_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (exitcond_flatten_fu_221_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0)) | ((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & ~(exitcond_flatten_fu_221_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp1_it0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond_flatten1_fu_317_p2))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
        end else if (((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done))) begin
            ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp1_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_lv1_0 == exitcond_flatten1_fu_317_p2))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
        end else if ((((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done)) | ((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & ~(ap_const_lv1_0 == exitcond_flatten1_fu_317_p2)))) begin
            ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp1_it2 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp1_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp1_it2 <= ap_const_logic_0;
    end else begin
        if ((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp1_it2 <= ap_reg_ppiten_pp1_it1;
        end else if (((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done))) begin
            ap_reg_ppiten_pp1_it2 <= ap_const_logic_0;
        end
    end
end

/// grp_dct_2d_fu_199_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_dct_2d_fu_199_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_dct_2d_fu_199_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if ((ap_ST_st5_fsm_2 == ap_CS_fsm)) begin
            grp_dct_2d_fu_199_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_dct_2d_fu_199_ap_ready)) begin
            grp_dct_2d_fu_199_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten1_fu_317_p2))) begin
        c_i6_reg_187 <= c_1_fu_343_p2;
    end else if (((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done))) begin
        c_i6_reg_187 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_221_p2 == ap_const_lv1_0))) begin
        c_i_reg_153 <= c_fu_247_p2;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        c_i_reg_153 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten1_fu_317_p2))) begin
        indvar_flatten1_reg_164 <= indvar_flatten_next1_fu_323_p2;
    end else if (((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done))) begin
        indvar_flatten1_reg_164 <= ap_const_lv7_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_221_p2 == ap_const_lv1_0))) begin
        indvar_flatten_reg_130 <= indvar_flatten_next_fu_227_p2;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        indvar_flatten_reg_130 <= ap_const_lv7_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it2) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1))) begin
        r_i2_reg_175 <= r_i2_mid2_reg_474;
    end else if (((ap_ST_st6_fsm_3 == ap_CS_fsm) & ~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done))) begin
        r_i2_reg_175 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 == ap_const_lv1_0))) begin
        r_i_reg_141 <= r_i_mid2_reg_438;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        r_i_reg_141 <= ap_const_lv4_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm)) begin
        ap_reg_ppstg_c_i_mid2_reg_427_pp0_it1 <= c_i_mid2_reg_427;
        ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 <= exitcond_flatten_reg_413;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm)) begin
        ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1 <= exitcond_flatten1_reg_449;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & (ap_const_lv1_0 == exitcond_flatten1_fu_317_p2))) begin
        c_i6_mid2_reg_463 <= c_i6_mid2_fu_335_p3;
        exitcond_i1_reg_458 <= exitcond_i1_fu_329_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_221_p2 == ap_const_lv1_0))) begin
        c_i_mid2_reg_427 <= c_i_mid2_fu_239_p3;
        exitcond_i_reg_422 <= exitcond_i_fu_233_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it0))) begin
        exitcond_flatten1_reg_449 <= exitcond_flatten1_fu_317_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        exitcond_flatten_reg_413 <= exitcond_flatten_fu_221_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & (ap_const_lv1_0 == exitcond_flatten1_reg_449))) begin
        r_i2_mid2_reg_474 <= r_i2_mid2_fu_355_p3;
        tmp_9_i_reg_484 <= tmp_9_i_fu_403_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_413 == ap_const_lv1_0))) begin
        r_i_mid2_reg_438 <= r_i_mid2_fu_259_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st10_fsm_5 == ap_CS_fsm)) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st10_fsm_5 == ap_CS_fsm)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// buf_2d_in_address0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it2 or grp_dct_2d_fu_199_in_block_address0 or tmp_2_fu_312_p1)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) begin
        buf_2d_in_address0 = tmp_2_fu_312_p1;
    end else if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_in_address0 = grp_dct_2d_fu_199_in_block_address0;
    end else begin
        buf_2d_in_address0 = 'bx;
    end
end

/// buf_2d_in_ce0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 or grp_dct_2d_fu_199_in_block_ce0)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 == ap_const_lv1_0))) begin
        buf_2d_in_ce0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_in_ce0 = grp_dct_2d_fu_199_in_block_ce0;
    end else begin
        buf_2d_in_ce0 = ap_const_logic_0;
    end
end

/// buf_2d_in_ce1 assign process. ///
always @ (ap_CS_fsm or grp_dct_2d_fu_199_in_block_ce1)
begin
    if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_in_ce1 = grp_dct_2d_fu_199_in_block_ce1;
    end else begin
        buf_2d_in_ce1 = ap_const_logic_0;
    end
end

/// buf_2d_in_we0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 == ap_const_lv1_0))) begin
        buf_2d_in_we0 = ap_const_logic_1;
    end else begin
        buf_2d_in_we0 = ap_const_logic_0;
    end
end

/// buf_2d_out_address0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp1_it1 or grp_dct_2d_fu_199_out_block_address0 or tmp_5_fu_398_p1)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
        buf_2d_out_address0 = tmp_5_fu_398_p1;
    end else if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_out_address0 = grp_dct_2d_fu_199_out_block_address0;
    end else begin
        buf_2d_out_address0 = 'bx;
    end
end

/// buf_2d_out_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_flatten1_reg_449 or ap_reg_ppiten_pp1_it1 or grp_dct_2d_fu_199_out_block_ce0)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it1) & (ap_const_lv1_0 == exitcond_flatten1_reg_449))) begin
        buf_2d_out_ce0 = ap_const_logic_1;
    end else if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_out_ce0 = grp_dct_2d_fu_199_out_block_ce0;
    end else begin
        buf_2d_out_ce0 = ap_const_logic_0;
    end
end

/// buf_2d_out_we0 assign process. ///
always @ (ap_CS_fsm or grp_dct_2d_fu_199_out_block_we0)
begin
    if ((ap_ST_st6_fsm_3 == ap_CS_fsm)) begin
        buf_2d_out_we0 = grp_dct_2d_fu_199_out_block_we0;
    end else begin
        buf_2d_out_we0 = ap_const_logic_0;
    end
end

/// input_r_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_flatten_reg_413 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_413 == ap_const_lv1_0))) begin
        input_r_ce0 = ap_const_logic_1;
    end else begin
        input_r_ce0 = ap_const_logic_0;
    end
end

/// output_r_ce0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp1_it2 or ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it2) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1))) begin
        output_r_ce0 = ap_const_logic_1;
    end else begin
        output_r_ce0 = ap_const_logic_0;
    end
end

/// output_r_we0 assign process. ///
always @ (ap_CS_fsm or ap_reg_ppiten_pp1_it2 or ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it2) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1))) begin
        output_r_we0 = ap_const_logic_1;
    end else begin
        output_r_we0 = ap_const_logic_0;
    end
end

/// r_i2_phi_fu_179_p4 assign process. ///
always @ (ap_CS_fsm or r_i2_reg_175 or ap_reg_ppiten_pp1_it2 or ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1 or r_i2_mid2_reg_474)
begin
    if (((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it2) & (ap_const_lv1_0 == ap_reg_ppstg_exitcond_flatten1_reg_449_pp1_it1))) begin
        r_i2_phi_fu_179_p4 = r_i2_mid2_reg_474;
    end else begin
        r_i2_phi_fu_179_p4 = r_i2_reg_175;
    end
end

/// r_i_phi_fu_145_p4 assign process. ///
always @ (ap_CS_fsm or r_i_reg_141 or ap_reg_ppiten_pp0_it2 or ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 or r_i_mid2_reg_438)
begin
    if (((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & (ap_reg_ppstg_exitcond_flatten_reg_413_pp0_it1 == ap_const_lv1_0))) begin
        r_i_phi_fu_145_p4 = r_i_mid2_reg_438;
    end else begin
        r_i_phi_fu_145_p4 = r_i_reg_141;
    end
end
always @ (ap_start or ap_CS_fsm or exitcond_flatten_fu_221_p2 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or exitcond_flatten1_fu_317_p2 or ap_reg_ppiten_pp1_it0 or ap_reg_ppiten_pp1_it1 or ap_reg_ppiten_pp1_it2 or grp_dct_2d_fu_199_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_pp0_stg0_fsm_1 : 
            if ((~((ap_ST_pp0_stg0_fsm_1 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_221_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_221_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
                ap_NS_fsm = ap_ST_st5_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_2;
            end
        ap_ST_st5_fsm_2 : 
            ap_NS_fsm = ap_ST_st6_fsm_3;
        ap_ST_st6_fsm_3 : 
            if (~(ap_const_logic_0 == grp_dct_2d_fu_199_ap_done)) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_3;
            end
        ap_ST_pp1_stg0_fsm_4 : 
            if ((~((ap_ST_pp1_stg0_fsm_4 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp1_it2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp1_it1)) & ~((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~(ap_const_lv1_0 == exitcond_flatten1_fu_317_p2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp1_it1)))) begin
                ap_NS_fsm = ap_ST_pp1_stg0_fsm_4;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp1_it0) & ~(ap_const_lv1_0 == exitcond_flatten1_fu_317_p2) & ~(ap_const_logic_1 == ap_reg_ppiten_pp1_it1))) begin
                ap_NS_fsm = ap_ST_st10_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st10_fsm_5;
            end
        ap_ST_st10_fsm_5 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign buf_2d_in_address1 = grp_dct_2d_fu_199_in_block_address1;
assign buf_2d_in_d0 = input_r_q0;
assign buf_2d_out_d0 = grp_dct_2d_fu_199_out_block_d0;
assign c_1_fu_343_p2 = (c_i6_mid2_fu_335_p3 + ap_const_lv4_1);
assign c_fu_247_p2 = (c_i_mid2_fu_239_p3 + ap_const_lv4_1);
assign c_i6_cast2_fu_374_p1 = $unsigned(c_i6_mid2_reg_463);
assign c_i6_mid2_fu_335_p3 = ((exitcond_i1_fu_329_p2)? ap_const_lv4_0: c_i6_reg_187);
assign c_i_cast6_fu_278_p1 = $unsigned(c_i_mid2_reg_427);
assign c_i_mid2_fu_239_p3 = ((exitcond_i_fu_233_p2)? ap_const_lv4_0: c_i_reg_153);
assign exitcond_flatten1_fu_317_p2 = (indvar_flatten1_reg_164 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond_flatten_fu_221_p2 = (indvar_flatten_reg_130 == ap_const_lv7_40? 1'b1: 1'b0);
assign exitcond_i1_fu_329_p2 = (c_i6_reg_187 == ap_const_lv4_8? 1'b1: 1'b0);
assign exitcond_i_fu_233_p2 = (c_i_reg_153 == ap_const_lv4_8? 1'b1: 1'b0);
assign grp_dct_2d_fu_199_ap_start = grp_dct_2d_fu_199_ap_start_ap_start_reg;
assign grp_dct_2d_fu_199_in_block_q0 = buf_2d_in_q0;
assign grp_dct_2d_fu_199_in_block_q1 = buf_2d_in_q1;
assign indvar_flatten_next1_fu_323_p2 = (indvar_flatten1_reg_164 + ap_const_lv7_1);
assign indvar_flatten_next_fu_227_p2 = (indvar_flatten_reg_130 + ap_const_lv7_1);
assign input_r_address0 = tmp_6_i_fu_287_p1;
assign output_r_address0 = tmp_3_i_fu_409_p1;
assign output_r_d0 = buf_2d_out_q0;
assign p_addr1_fu_306_p2 = (p_addr_cast_fu_302_p1 + tmp_7_i_trn_cast_fu_292_p1);
assign p_addr2_cast_fu_388_p1 = $unsigned(tmp_4_fu_380_p3);
assign p_addr3_fu_392_p2 = (p_addr2_cast_fu_388_p1 + tmp_8_i_trn_cast_fu_377_p1);
assign p_addr_cast_fu_302_p1 = $unsigned(tmp_1_fu_295_p3);
assign r_fu_253_p2 = (r_i_phi_fu_145_p4 + ap_const_lv4_1);
assign r_i2_mid2_fu_355_p3 = ((exitcond_i1_reg_458)? r_s_fu_349_p2: r_i2_phi_fu_179_p4);
assign r_i_mid2_fu_259_p3 = ((exitcond_i_reg_422)? r_fu_253_p2: r_i_phi_fu_145_p4);
assign r_s_fu_349_p2 = (r_i2_phi_fu_179_p4 + ap_const_lv4_1);
assign tmp_1_fu_295_p3 = {{r_i_mid2_reg_438}, {ap_const_lv3_0}};
assign tmp_2_fu_312_p1 = $unsigned(p_addr1_fu_306_p2);
assign tmp_3_fu_362_p1 = r_i2_mid2_fu_355_p3[2:0];
assign tmp_3_i_fu_409_p1 = $unsigned(tmp_9_i_reg_484);
assign tmp_4_fu_380_p3 = {{r_i2_mid2_fu_355_p3}, {ap_const_lv3_0}};
assign tmp_5_fu_398_p1 = $unsigned(p_addr3_fu_392_p2);
assign tmp_5_i_fu_281_p2 = (c_i_cast6_fu_278_p1 + tmp_i_fu_270_p3);
assign tmp_6_i_fu_287_p1 = $unsigned(tmp_5_i_fu_281_p2);
assign tmp_7_i_trn_cast_fu_292_p1 = $unsigned(ap_reg_ppstg_c_i_mid2_reg_427_pp0_it1);
assign tmp_8_i_trn_cast_fu_377_p1 = $unsigned(c_i6_mid2_reg_463);
assign tmp_9_i_fu_403_p2 = (c_i6_cast2_fu_374_p1 + tmp_i5_fu_366_p3);
assign tmp_fu_266_p1 = r_i_mid2_fu_259_p3[2:0];
assign tmp_i5_fu_366_p3 = {{tmp_3_fu_362_p1}, {ap_const_lv3_0}};
assign tmp_i_fu_270_p3 = {{tmp_fu_266_p1}, {ap_const_lv3_0}};


endmodule //dct
