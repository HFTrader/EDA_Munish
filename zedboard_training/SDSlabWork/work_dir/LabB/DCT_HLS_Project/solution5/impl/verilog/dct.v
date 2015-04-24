// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2013_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=795,HLS_SYN_TPT=262,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module dct (
        input_r_address0,
        input_r_ce0,
        input_r_d0,
        input_r_q0,
        input_r_we0,
        input_r_address1,
        input_r_ce1,
        input_r_d1,
        input_r_q1,
        input_r_we1,
        output_r_address0,
        output_r_ce0,
        output_r_d0,
        output_r_q0,
        output_r_we0,
        output_r_address1,
        output_r_ce1,
        output_r_d1,
        output_r_q1,
        output_r_we1,
        ap_clk,
        ap_rst,
        ap_done,
        ap_start,
        ap_idle,
        ap_ready
);

output  [5:0] input_r_address0;
output   input_r_ce0;
output  [15:0] input_r_d0;
input  [15:0] input_r_q0;
output   input_r_we0;
output  [5:0] input_r_address1;
output   input_r_ce1;
output  [15:0] input_r_d1;
input  [15:0] input_r_q1;
output   input_r_we1;
output  [5:0] output_r_address0;
output   output_r_ce0;
output  [15:0] output_r_d0;
input  [15:0] output_r_q0;
output   output_r_we0;
output  [5:0] output_r_address1;
output   output_r_ce1;
output  [15:0] output_r_d1;
input  [15:0] output_r_q1;
output   output_r_we1;
input   ap_clk;
input   ap_rst;
output   ap_done;
input   ap_start;
output   ap_idle;
output   ap_ready;

reg ap_idle;
wire    read_data_U0_ap_start;
wire    read_data_U0_ap_done;
wire    read_data_U0_ap_continue;
wire    read_data_U0_ap_idle;
wire    read_data_U0_ap_ready;
wire   [5:0] read_data_U0_input_r_address0;
wire    read_data_U0_input_r_ce0;
wire   [15:0] read_data_U0_input_r_q0;
wire   [5:0] read_data_U0_buf_r_address0;
wire    read_data_U0_buf_r_ce0;
wire    read_data_U0_buf_r_we0;
wire   [15:0] read_data_U0_buf_r_d0;
wire    ap_chn_write_read_data_U0_buf_2d_in;
wire    read_data_U0_buf_r_pipo_status;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_start;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_done;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_continue;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_idle;
wire    dct_Loop_Row_DCT_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0;
wire   [15:0] dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q0;
wire   [5:0] dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address1;
wire    dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce1;
wire   [15:0] dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q1;
wire   [5:0] dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_address0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_ce0;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_we0;
wire   [15:0] dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_d0;
wire    ap_chn_write_dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf;
wire    dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_pipo_status;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_address0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_ce0;
wire   [15:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_q0;
wire   [5:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0;
wire   [15:0] dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0;
wire    ap_chn_write_dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf;
wire    dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_pipo_status;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_start;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_done;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_continue;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_idle;
wire    dct_Loop_Col_DCT_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0;
wire   [15:0] dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q0;
wire   [5:0] dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address1;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce1;
wire   [15:0] dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q1;
wire   [5:0] dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_address0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_ce0;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_we0;
wire   [15:0] dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_d0;
wire    ap_chn_write_dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf;
wire    dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_pipo_status;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready;
wire   [5:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_address0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_ce0;
wire   [15:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_q0;
wire   [5:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0;
wire   [15:0] dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0;
wire    ap_chn_write_dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out;
wire    dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_pipo_status;
wire    write_data_U0_ap_start;
wire    write_data_U0_ap_done;
wire    write_data_U0_ap_continue;
wire    write_data_U0_ap_idle;
wire    write_data_U0_ap_ready;
wire   [5:0] write_data_U0_buf_r_address0;
wire    write_data_U0_buf_r_ce0;
wire   [15:0] write_data_U0_buf_r_q0;
wire   [5:0] write_data_U0_output_r_address0;
wire    write_data_U0_output_r_ce0;
wire    write_data_U0_output_r_we0;
wire   [15:0] write_data_U0_output_r_d0;
wire    ap_sig_hs_continue;
wire   [5:0] buf_2d_in_i_address0;
wire    buf_2d_in_i_ce0;
wire    buf_2d_in_i_we0;
wire   [15:0] buf_2d_in_i_d0;
wire   [15:0] buf_2d_in_i_q0;
wire   [5:0] buf_2d_in_i_address1;
wire    buf_2d_in_i_ce1;
wire   [15:0] buf_2d_in_i_q1;
wire   [5:0] buf_2d_in_t_address0;
wire    buf_2d_in_t_ce0;
wire    buf_2d_in_t_we0;
wire   [15:0] buf_2d_in_t_d0;
wire   [15:0] buf_2d_in_t_q0;
wire   [5:0] buf_2d_in_t_address1;
wire    buf_2d_in_t_ce1;
wire   [15:0] buf_2d_in_t_q1;
wire    buf_2d_in_U_ap_dummy_ce;
wire    buf_2d_in_i_full_n;
wire    buf_2d_in_i_write;
wire    buf_2d_in_t_empty_n;
wire    buf_2d_in_t_read;
wire   [5:0] row_outbuf_i_address0;
wire    row_outbuf_i_ce0;
wire    row_outbuf_i_we0;
wire   [15:0] row_outbuf_i_d0;
wire   [15:0] row_outbuf_i_q0;
wire   [5:0] row_outbuf_t_address0;
wire    row_outbuf_t_ce0;
wire    row_outbuf_t_we0;
wire   [15:0] row_outbuf_t_d0;
wire   [15:0] row_outbuf_t_q0;
wire    row_outbuf_U_ap_dummy_ce;
wire    row_outbuf_i_full_n;
wire    row_outbuf_i_write;
wire    row_outbuf_t_empty_n;
wire    row_outbuf_t_read;
wire   [5:0] col_inbuf_i_address0;
wire    col_inbuf_i_ce0;
wire    col_inbuf_i_we0;
wire   [15:0] col_inbuf_i_d0;
wire   [15:0] col_inbuf_i_q0;
wire   [5:0] col_inbuf_i_address1;
wire    col_inbuf_i_ce1;
wire   [15:0] col_inbuf_i_q1;
wire   [5:0] col_inbuf_t_address0;
wire    col_inbuf_t_ce0;
wire    col_inbuf_t_we0;
wire   [15:0] col_inbuf_t_d0;
wire   [15:0] col_inbuf_t_q0;
wire   [5:0] col_inbuf_t_address1;
wire    col_inbuf_t_ce1;
wire   [15:0] col_inbuf_t_q1;
wire    col_inbuf_U_ap_dummy_ce;
wire    col_inbuf_i_full_n;
wire    col_inbuf_i_write;
wire    col_inbuf_t_empty_n;
wire    col_inbuf_t_read;
wire   [5:0] col_outbuf_i_address0;
wire    col_outbuf_i_ce0;
wire    col_outbuf_i_we0;
wire   [15:0] col_outbuf_i_d0;
wire   [15:0] col_outbuf_i_q0;
wire   [5:0] col_outbuf_t_address0;
wire    col_outbuf_t_ce0;
wire    col_outbuf_t_we0;
wire   [15:0] col_outbuf_t_d0;
wire   [15:0] col_outbuf_t_q0;
wire    col_outbuf_U_ap_dummy_ce;
wire    col_outbuf_i_full_n;
wire    col_outbuf_i_write;
wire    col_outbuf_t_empty_n;
wire    col_outbuf_t_read;
wire   [5:0] buf_2d_out_i_address0;
wire    buf_2d_out_i_ce0;
wire    buf_2d_out_i_we0;
wire   [15:0] buf_2d_out_i_d0;
wire   [15:0] buf_2d_out_i_q0;
wire   [5:0] buf_2d_out_t_address0;
wire    buf_2d_out_t_ce0;
wire    buf_2d_out_t_we0;
wire   [15:0] buf_2d_out_t_d0;
wire   [15:0] buf_2d_out_t_q0;
wire    buf_2d_out_U_ap_dummy_ce;
wire    buf_2d_out_i_full_n;
wire    buf_2d_out_i_write;
wire    buf_2d_out_t_empty_n;
wire    buf_2d_out_t_read;
reg    ap_reg_procdone_read_data_U0 = 1'b0;
reg    ap_sig_hs_done;
reg    ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0 = 1'b0;
reg    ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0 = 1'b0;
reg    ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0 = 1'b0;
reg    ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0 = 1'b0;
reg    ap_reg_procdone_write_data_U0 = 1'b0;
wire    ap_CS;
wire    ap_sig_top_allready;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_true = 1'b1;


read_data read_data_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( read_data_U0_ap_start ),
    .ap_done( read_data_U0_ap_done ),
    .ap_continue( read_data_U0_ap_continue ),
    .ap_idle( read_data_U0_ap_idle ),
    .ap_ready( read_data_U0_ap_ready ),
    .input_r_address0( read_data_U0_input_r_address0 ),
    .input_r_ce0( read_data_U0_input_r_ce0 ),
    .input_r_q0( read_data_U0_input_r_q0 ),
    .buf_r_address0( read_data_U0_buf_r_address0 ),
    .buf_r_ce0( read_data_U0_buf_r_ce0 ),
    .buf_r_we0( read_data_U0_buf_r_we0 ),
    .buf_r_d0( read_data_U0_buf_r_d0 )
);

dct_Loop_Row_DCT_Loop_proc dct_Loop_Row_DCT_Loop_proc_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( dct_Loop_Row_DCT_Loop_proc_U0_ap_start ),
    .ap_done( dct_Loop_Row_DCT_Loop_proc_U0_ap_done ),
    .ap_continue( dct_Loop_Row_DCT_Loop_proc_U0_ap_continue ),
    .ap_idle( dct_Loop_Row_DCT_Loop_proc_U0_ap_idle ),
    .ap_ready( dct_Loop_Row_DCT_Loop_proc_U0_ap_ready ),
    .buf_2d_in_address0( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0 ),
    .buf_2d_in_ce0( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0 ),
    .buf_2d_in_q0( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q0 ),
    .buf_2d_in_address1( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address1 ),
    .buf_2d_in_ce1( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce1 ),
    .buf_2d_in_q1( dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q1 ),
    .row_outbuf_address0( dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_address0 ),
    .row_outbuf_ce0( dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_ce0 ),
    .row_outbuf_we0( dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_we0 ),
    .row_outbuf_d0( dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_d0 )
);

dct_Loop_Xpose_Row_Outer_Loop_proc dct_Loop_Xpose_Row_Outer_Loop_proc_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start ),
    .ap_done( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done ),
    .ap_continue( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue ),
    .ap_idle( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle ),
    .ap_ready( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready ),
    .row_outbuf_address0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_address0 ),
    .row_outbuf_ce0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_ce0 ),
    .row_outbuf_q0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_q0 ),
    .col_inbuf_address0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0 ),
    .col_inbuf_ce0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0 ),
    .col_inbuf_we0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0 ),
    .col_inbuf_d0( dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0 )
);

dct_Loop_Col_DCT_Loop_proc dct_Loop_Col_DCT_Loop_proc_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( dct_Loop_Col_DCT_Loop_proc_U0_ap_start ),
    .ap_done( dct_Loop_Col_DCT_Loop_proc_U0_ap_done ),
    .ap_continue( dct_Loop_Col_DCT_Loop_proc_U0_ap_continue ),
    .ap_idle( dct_Loop_Col_DCT_Loop_proc_U0_ap_idle ),
    .ap_ready( dct_Loop_Col_DCT_Loop_proc_U0_ap_ready ),
    .col_inbuf_address0( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0 ),
    .col_inbuf_ce0( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0 ),
    .col_inbuf_q0( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q0 ),
    .col_inbuf_address1( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address1 ),
    .col_inbuf_ce1( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce1 ),
    .col_inbuf_q1( dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q1 ),
    .col_outbuf_address0( dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_address0 ),
    .col_outbuf_ce0( dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_ce0 ),
    .col_outbuf_we0( dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_we0 ),
    .col_outbuf_d0( dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_d0 )
);

dct_Loop_Xpose_Col_Outer_Loop_proc dct_Loop_Xpose_Col_Outer_Loop_proc_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start ),
    .ap_done( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done ),
    .ap_continue( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue ),
    .ap_idle( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle ),
    .ap_ready( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready ),
    .col_outbuf_address0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_address0 ),
    .col_outbuf_ce0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_ce0 ),
    .col_outbuf_q0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_q0 ),
    .buf_2d_out_address0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0 ),
    .buf_2d_out_ce0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0 ),
    .buf_2d_out_we0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0 ),
    .buf_2d_out_d0( dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0 )
);

write_data write_data_U0(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( write_data_U0_ap_start ),
    .ap_done( write_data_U0_ap_done ),
    .ap_continue( write_data_U0_ap_continue ),
    .ap_idle( write_data_U0_ap_idle ),
    .ap_ready( write_data_U0_ap_ready ),
    .buf_r_address0( write_data_U0_buf_r_address0 ),
    .buf_r_ce0( write_data_U0_buf_r_ce0 ),
    .buf_r_q0( write_data_U0_buf_r_q0 ),
    .output_r_address0( write_data_U0_output_r_address0 ),
    .output_r_ce0( write_data_U0_output_r_ce0 ),
    .output_r_we0( write_data_U0_output_r_we0 ),
    .output_r_d0( write_data_U0_output_r_d0 )
);

dct_buf_2d_in #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_in_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .i_address0( buf_2d_in_i_address0 ),
    .i_ce0( buf_2d_in_i_ce0 ),
    .i_we0( buf_2d_in_i_we0 ),
    .i_d0( buf_2d_in_i_d0 ),
    .i_q0( buf_2d_in_i_q0 ),
    .i_address1( buf_2d_in_i_address1 ),
    .i_ce1( buf_2d_in_i_ce1 ),
    .i_q1( buf_2d_in_i_q1 ),
    .t_address0( buf_2d_in_t_address0 ),
    .t_ce0( buf_2d_in_t_ce0 ),
    .t_we0( buf_2d_in_t_we0 ),
    .t_d0( buf_2d_in_t_d0 ),
    .t_q0( buf_2d_in_t_q0 ),
    .t_address1( buf_2d_in_t_address1 ),
    .t_ce1( buf_2d_in_t_ce1 ),
    .t_q1( buf_2d_in_t_q1 ),
    .i_ce( buf_2d_in_U_ap_dummy_ce ),
    .t_ce( buf_2d_in_U_ap_dummy_ce ),
    .i_full_n( buf_2d_in_i_full_n ),
    .i_write( buf_2d_in_i_write ),
    .t_empty_n( buf_2d_in_t_empty_n ),
    .t_read( buf_2d_in_t_read )
);

dct_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .i_address0( row_outbuf_i_address0 ),
    .i_ce0( row_outbuf_i_ce0 ),
    .i_we0( row_outbuf_i_we0 ),
    .i_d0( row_outbuf_i_d0 ),
    .i_q0( row_outbuf_i_q0 ),
    .t_address0( row_outbuf_t_address0 ),
    .t_ce0( row_outbuf_t_ce0 ),
    .t_we0( row_outbuf_t_we0 ),
    .t_d0( row_outbuf_t_d0 ),
    .t_q0( row_outbuf_t_q0 ),
    .i_ce( row_outbuf_U_ap_dummy_ce ),
    .t_ce( row_outbuf_U_ap_dummy_ce ),
    .i_full_n( row_outbuf_i_full_n ),
    .i_write( row_outbuf_i_write ),
    .t_empty_n( row_outbuf_t_empty_n ),
    .t_read( row_outbuf_t_read )
);

dct_buf_2d_in #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_inbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .i_address0( col_inbuf_i_address0 ),
    .i_ce0( col_inbuf_i_ce0 ),
    .i_we0( col_inbuf_i_we0 ),
    .i_d0( col_inbuf_i_d0 ),
    .i_q0( col_inbuf_i_q0 ),
    .i_address1( col_inbuf_i_address1 ),
    .i_ce1( col_inbuf_i_ce1 ),
    .i_q1( col_inbuf_i_q1 ),
    .t_address0( col_inbuf_t_address0 ),
    .t_ce0( col_inbuf_t_ce0 ),
    .t_we0( col_inbuf_t_we0 ),
    .t_d0( col_inbuf_t_d0 ),
    .t_q0( col_inbuf_t_q0 ),
    .t_address1( col_inbuf_t_address1 ),
    .t_ce1( col_inbuf_t_ce1 ),
    .t_q1( col_inbuf_t_q1 ),
    .i_ce( col_inbuf_U_ap_dummy_ce ),
    .t_ce( col_inbuf_U_ap_dummy_ce ),
    .i_full_n( col_inbuf_i_full_n ),
    .i_write( col_inbuf_i_write ),
    .t_empty_n( col_inbuf_t_empty_n ),
    .t_read( col_inbuf_t_read )
);

dct_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .i_address0( col_outbuf_i_address0 ),
    .i_ce0( col_outbuf_i_ce0 ),
    .i_we0( col_outbuf_i_we0 ),
    .i_d0( col_outbuf_i_d0 ),
    .i_q0( col_outbuf_i_q0 ),
    .t_address0( col_outbuf_t_address0 ),
    .t_ce0( col_outbuf_t_ce0 ),
    .t_we0( col_outbuf_t_we0 ),
    .t_d0( col_outbuf_t_d0 ),
    .t_q0( col_outbuf_t_q0 ),
    .i_ce( col_outbuf_U_ap_dummy_ce ),
    .t_ce( col_outbuf_U_ap_dummy_ce ),
    .i_full_n( col_outbuf_i_full_n ),
    .i_write( col_outbuf_i_write ),
    .t_empty_n( col_outbuf_t_empty_n ),
    .t_read( col_outbuf_t_read )
);

dct_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .i_address0( buf_2d_out_i_address0 ),
    .i_ce0( buf_2d_out_i_ce0 ),
    .i_we0( buf_2d_out_i_we0 ),
    .i_d0( buf_2d_out_i_d0 ),
    .i_q0( buf_2d_out_i_q0 ),
    .t_address0( buf_2d_out_t_address0 ),
    .t_ce0( buf_2d_out_t_ce0 ),
    .t_we0( buf_2d_out_t_we0 ),
    .t_d0( buf_2d_out_t_d0 ),
    .t_q0( buf_2d_out_t_q0 ),
    .i_ce( buf_2d_out_U_ap_dummy_ce ),
    .t_ce( buf_2d_out_U_ap_dummy_ce ),
    .i_full_n( buf_2d_out_i_full_n ),
    .i_write( buf_2d_out_i_write ),
    .t_empty_n( buf_2d_out_t_empty_n ),
    .t_read( buf_2d_out_t_read )
);



/// ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0 <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == dct_Loop_Col_DCT_Loop_proc_U0_ap_done)) begin
            ap_reg_procdone_dct_Loop_Col_DCT_Loop_proc_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0 <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == dct_Loop_Row_DCT_Loop_proc_U0_ap_done)) begin
            ap_reg_procdone_dct_Loop_Row_DCT_Loop_proc_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0 <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done)) begin
            ap_reg_procdone_dct_Loop_Xpose_Col_Outer_Loop_proc_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0 <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done)) begin
            ap_reg_procdone_dct_Loop_Xpose_Row_Outer_Loop_proc_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_procdone_read_data_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_read_data_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_read_data_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_read_data_U0 <= ap_const_logic_0;
        end else if ((read_data_U0_ap_done == ap_const_logic_1)) begin
            ap_reg_procdone_read_data_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_procdone_write_data_U0 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_procdone_write_data_U0
    if (ap_rst == 1'b1) begin
        ap_reg_procdone_write_data_U0 <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_sig_hs_done)) begin
            ap_reg_procdone_write_data_U0 <= ap_const_logic_0;
        end else if ((ap_const_logic_1 == write_data_U0_ap_done)) begin
            ap_reg_procdone_write_data_U0 <= ap_const_logic_1;
        end
    end
end

/// ap_idle assign process. ///
always @ (read_data_U0_ap_idle or dct_Loop_Row_DCT_Loop_proc_U0_ap_idle or dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle or dct_Loop_Col_DCT_Loop_proc_U0_ap_idle or dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle or write_data_U0_ap_idle or buf_2d_in_t_empty_n or row_outbuf_t_empty_n or col_inbuf_t_empty_n or col_outbuf_t_empty_n or buf_2d_out_t_empty_n)
begin
    if (((read_data_U0_ap_idle == ap_const_logic_1) & (ap_const_logic_1 == dct_Loop_Row_DCT_Loop_proc_U0_ap_idle) & (ap_const_logic_1 == dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_idle) & (ap_const_logic_1 == dct_Loop_Col_DCT_Loop_proc_U0_ap_idle) & (ap_const_logic_1 == dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_idle) & (ap_const_logic_1 == write_data_U0_ap_idle) & (ap_const_logic_0 == buf_2d_in_t_empty_n) & (ap_const_logic_0 == row_outbuf_t_empty_n) & (ap_const_logic_0 == col_inbuf_t_empty_n) & (ap_const_logic_0 == col_outbuf_t_empty_n) & (ap_const_logic_0 == buf_2d_out_t_empty_n))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_sig_hs_done assign process. ///
always @ (write_data_U0_ap_done or ap_reg_procdone_write_data_U0)
begin
    if (((ap_const_logic_1 == write_data_U0_ap_done) | (ap_const_logic_1 == ap_reg_procdone_write_data_U0))) begin
        ap_sig_hs_done = ap_const_logic_1;
    end else begin
        ap_sig_hs_done = ap_const_logic_0;
    end
end
assign ap_chn_write_dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf = dct_Loop_Col_DCT_Loop_proc_U0_ap_done;
assign ap_chn_write_dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf = dct_Loop_Row_DCT_Loop_proc_U0_ap_done;
assign ap_chn_write_dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done;
assign ap_chn_write_dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done;
assign ap_chn_write_read_data_U0_buf_2d_in = read_data_U0_ap_done;
assign ap_done = ap_sig_hs_done;
assign ap_ready = ap_sig_top_allready;
assign ap_sig_hs_continue = ap_const_logic_1;
assign ap_sig_top_allready = read_data_U0_ap_ready;
assign buf_2d_in_U_ap_dummy_ce = ap_const_logic_1;
assign buf_2d_in_i_address0 = read_data_U0_buf_r_address0;
assign buf_2d_in_i_ce0 = read_data_U0_buf_r_ce0;
assign buf_2d_in_i_d0 = read_data_U0_buf_r_d0;
assign buf_2d_in_i_we0 = read_data_U0_buf_r_we0;
assign buf_2d_in_i_write = read_data_U0_ap_done;
assign buf_2d_in_t_address0 = dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address0;
assign buf_2d_in_t_address1 = dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_address1;
assign buf_2d_in_t_ce0 = dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce0;
assign buf_2d_in_t_ce1 = dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_ce1;
assign buf_2d_in_t_read = dct_Loop_Row_DCT_Loop_proc_U0_ap_ready;
assign buf_2d_out_U_ap_dummy_ce = ap_const_logic_1;
assign buf_2d_out_i_address0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_address0;
assign buf_2d_out_i_ce0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_ce0;
assign buf_2d_out_i_d0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_d0;
assign buf_2d_out_i_we0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_we0;
assign buf_2d_out_i_write = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_done;
assign buf_2d_out_t_address0 = write_data_U0_buf_r_address0;
assign buf_2d_out_t_ce0 = write_data_U0_buf_r_ce0;
assign buf_2d_out_t_read = write_data_U0_ap_ready;
assign col_inbuf_U_ap_dummy_ce = ap_const_logic_1;
assign col_inbuf_i_address0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_address0;
assign col_inbuf_i_ce0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_ce0;
assign col_inbuf_i_d0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_d0;
assign col_inbuf_i_we0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_we0;
assign col_inbuf_i_write = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_done;
assign col_inbuf_t_address0 = dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address0;
assign col_inbuf_t_address1 = dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_address1;
assign col_inbuf_t_ce0 = dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce0;
assign col_inbuf_t_ce1 = dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_ce1;
assign col_inbuf_t_read = dct_Loop_Col_DCT_Loop_proc_U0_ap_ready;
assign col_outbuf_U_ap_dummy_ce = ap_const_logic_1;
assign col_outbuf_i_address0 = dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_address0;
assign col_outbuf_i_ce0 = dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_ce0;
assign col_outbuf_i_d0 = dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_d0;
assign col_outbuf_i_we0 = dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_we0;
assign col_outbuf_i_write = dct_Loop_Col_DCT_Loop_proc_U0_ap_done;
assign col_outbuf_t_address0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_address0;
assign col_outbuf_t_ce0 = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_ce0;
assign col_outbuf_t_read = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_ready;
assign dct_Loop_Col_DCT_Loop_proc_U0_ap_continue = dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_pipo_status;
assign dct_Loop_Col_DCT_Loop_proc_U0_ap_start = col_inbuf_t_empty_n;
assign dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q0 = col_inbuf_t_q0;
assign dct_Loop_Col_DCT_Loop_proc_U0_col_inbuf_q1 = col_inbuf_t_q1;
assign dct_Loop_Col_DCT_Loop_proc_U0_col_outbuf_pipo_status = col_outbuf_i_full_n;
assign dct_Loop_Row_DCT_Loop_proc_U0_ap_continue = dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_pipo_status;
assign dct_Loop_Row_DCT_Loop_proc_U0_ap_start = buf_2d_in_t_empty_n;
assign dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q0 = buf_2d_in_t_q0;
assign dct_Loop_Row_DCT_Loop_proc_U0_buf_2d_in_q1 = buf_2d_in_t_q1;
assign dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_pipo_status = row_outbuf_i_full_n;
assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_continue = dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_pipo_status;
assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_ap_start = col_outbuf_t_empty_n;
assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_buf_2d_out_pipo_status = buf_2d_out_i_full_n;
assign dct_Loop_Xpose_Col_Outer_Loop_proc_U0_col_outbuf_q0 = col_outbuf_t_q0;
assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_continue = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_pipo_status;
assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_start = row_outbuf_t_empty_n;
assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_col_inbuf_pipo_status = col_inbuf_i_full_n;
assign dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_q0 = row_outbuf_t_q0;
assign input_r_address0 = read_data_U0_input_r_address0;
assign input_r_address1 = ap_const_lv6_0;
assign input_r_ce0 = read_data_U0_input_r_ce0;
assign input_r_ce1 = ap_const_logic_0;
assign input_r_d0 = ap_const_lv16_0;
assign input_r_d1 = ap_const_lv16_0;
assign input_r_we0 = ap_const_logic_0;
assign input_r_we1 = ap_const_logic_0;
assign output_r_address0 = write_data_U0_output_r_address0;
assign output_r_address1 = ap_const_lv6_0;
assign output_r_ce0 = write_data_U0_output_r_ce0;
assign output_r_ce1 = ap_const_logic_0;
assign output_r_d0 = write_data_U0_output_r_d0;
assign output_r_d1 = ap_const_lv16_0;
assign output_r_we0 = write_data_U0_output_r_we0;
assign output_r_we1 = ap_const_logic_0;
assign read_data_U0_ap_continue = read_data_U0_buf_r_pipo_status;
assign read_data_U0_ap_start = ap_start;
assign read_data_U0_buf_r_pipo_status = buf_2d_in_i_full_n;
assign read_data_U0_input_r_q0 = input_r_q0;
assign row_outbuf_U_ap_dummy_ce = ap_const_logic_1;
assign row_outbuf_i_address0 = dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_address0;
assign row_outbuf_i_ce0 = dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_ce0;
assign row_outbuf_i_d0 = dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_d0;
assign row_outbuf_i_we0 = dct_Loop_Row_DCT_Loop_proc_U0_row_outbuf_we0;
assign row_outbuf_i_write = dct_Loop_Row_DCT_Loop_proc_U0_ap_done;
assign row_outbuf_t_address0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_address0;
assign row_outbuf_t_ce0 = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_row_outbuf_ce0;
assign row_outbuf_t_read = dct_Loop_Xpose_Row_Outer_Loop_proc_U0_ap_ready;
assign write_data_U0_ap_continue = ap_sig_hs_continue;
assign write_data_U0_ap_start = buf_2d_out_t_empty_n;
assign write_data_U0_buf_r_q0 = buf_2d_out_t_q0;


endmodule //dct
