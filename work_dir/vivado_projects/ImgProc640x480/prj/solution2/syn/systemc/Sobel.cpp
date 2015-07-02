// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.1
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "Sobel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Sobel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Sobel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> Sobel::ap_ST_st1_fsm_0 = "0";
const sc_lv<1> Sobel::ap_ST_st2_fsm_1 = "1";

Sobel::Sobel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49 = new filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s("grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49");
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_clk(ap_clk);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_rst(ap_rst);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_start(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_done(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_idle(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_idle);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->ap_ready(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_ready);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_0_V_dout(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_0_V_empty_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_0_V_read(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_read);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_1_V_dout(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_1_V_empty_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_1_V_read(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_read);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_2_V_dout(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_2_V_empty_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_src_data_stream_2_V_read(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_read);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_0_V_din(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_din);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_0_V_full_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_0_V_write(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_write);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_1_V_din(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_din);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_1_V_full_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_1_V_write(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_write);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_2_V_din(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_din);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_2_V_full_n(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->p_dst_data_stream_2_V_write(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_write);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->rows(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows);
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49->cols(grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done );

    SC_METHOD(thread_ap_sig_bdd_52);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_dst_data_stream_0_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_din );

    SC_METHOD(thread_dst_data_stream_0_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_write );

    SC_METHOD(thread_dst_data_stream_1_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_din );

    SC_METHOD(thread_dst_data_stream_1_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_write );

    SC_METHOD(thread_dst_data_stream_2_V_din);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_din );

    SC_METHOD(thread_dst_data_stream_2_V_write);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_write );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start);
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_cols_V_read );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dst_data_stream_0_V_full_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dst_data_stream_1_V_full_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( dst_data_stream_2_V_full_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_0_V_dout );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_0_V_empty_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_1_V_dout );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_1_V_empty_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_2_V_dout );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_data_stream_2_V_empty_n );

    SC_METHOD(thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows);
    sensitive << ( ap_CS_fsm );
    sensitive << ( src_rows_V_read );

    SC_METHOD(thread_src_data_stream_0_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_read );

    SC_METHOD(thread_src_data_stream_1_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_read );

    SC_METHOD(thread_src_data_stream_2_V_read);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_read );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_sig_bdd_52 );
    sensitive << ( grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0";
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Sobel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(-12);
    const char* dump_vcd = std::getenv("AP_WRITE_VCD");
    if (dump_vcd && string(dump_vcd) == "1" ) {
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_rows_V_read, "(port)src_rows_V_read");
    sc_trace(mVcdFile, src_cols_V_read, "(port)src_cols_V_read");
    sc_trace(mVcdFile, src_data_stream_0_V_dout, "(port)src_data_stream_0_V_dout");
    sc_trace(mVcdFile, src_data_stream_0_V_empty_n, "(port)src_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_0_V_read, "(port)src_data_stream_0_V_read");
    sc_trace(mVcdFile, src_data_stream_1_V_dout, "(port)src_data_stream_1_V_dout");
    sc_trace(mVcdFile, src_data_stream_1_V_empty_n, "(port)src_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_1_V_read, "(port)src_data_stream_1_V_read");
    sc_trace(mVcdFile, src_data_stream_2_V_dout, "(port)src_data_stream_2_V_dout");
    sc_trace(mVcdFile, src_data_stream_2_V_empty_n, "(port)src_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, src_data_stream_2_V_read, "(port)src_data_stream_2_V_read");
    sc_trace(mVcdFile, dst_data_stream_0_V_din, "(port)dst_data_stream_0_V_din");
    sc_trace(mVcdFile, dst_data_stream_0_V_full_n, "(port)dst_data_stream_0_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_0_V_write, "(port)dst_data_stream_0_V_write");
    sc_trace(mVcdFile, dst_data_stream_1_V_din, "(port)dst_data_stream_1_V_din");
    sc_trace(mVcdFile, dst_data_stream_1_V_full_n, "(port)dst_data_stream_1_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_1_V_write, "(port)dst_data_stream_1_V_write");
    sc_trace(mVcdFile, dst_data_stream_2_V_din, "(port)dst_data_stream_2_V_din");
    sc_trace(mVcdFile, dst_data_stream_2_V_full_n, "(port)dst_data_stream_2_V_full_n");
    sc_trace(mVcdFile, dst_data_stream_2_V_write, "(port)dst_data_stream_2_V_write");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_bdd_52, "ap_sig_bdd_52");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_idle, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_idle");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_ready, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_ready");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_read, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_read");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_read, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_read");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_read, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_read");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_din, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_din");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_write, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_write");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_din, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_din");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_write, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_write");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_din, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_din");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_write, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_write");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols");
    sc_trace(mVcdFile, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg, "grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");

    }
    mHdltvinHandle.open("Sobel.hdltvin.dat");
    mHdltvoutHandle.open("Sobel.hdltvout.dat");
}

Sobel::~Sobel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49;
}

void Sobel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
                    !esl_seteq<1,1,1>(ap_const_logic_0, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
             !ap_sig_bdd_52.read())) {
            grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_ready.read())) {
            grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
}

void Sobel::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_logic_0, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Sobel::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Sobel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Sobel::thread_ap_sig_bdd_52() {
    ap_sig_bdd_52 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Sobel::thread_dst_data_stream_0_V_din() {
    dst_data_stream_0_V_din = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_din.read();
}

void Sobel::thread_dst_data_stream_0_V_write() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        dst_data_stream_0_V_write = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_write.read();
    } else {
        dst_data_stream_0_V_write = ap_const_logic_0;
    }
}

void Sobel::thread_dst_data_stream_1_V_din() {
    dst_data_stream_1_V_din = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_din.read();
}

void Sobel::thread_dst_data_stream_1_V_write() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        dst_data_stream_1_V_write = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_write.read();
    } else {
        dst_data_stream_1_V_write = ap_const_logic_0;
    }
}

void Sobel::thread_dst_data_stream_2_V_din() {
    dst_data_stream_2_V_din = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_din.read();
}

void Sobel::thread_dst_data_stream_2_V_write() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        dst_data_stream_2_V_write = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_write.read();
    } else {
        dst_data_stream_2_V_write = ap_const_logic_0;
    }
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_start_ap_start_reg.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_cols = src_cols_V_read.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_0_V_full_n = dst_data_stream_0_V_full_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_1_V_full_n = dst_data_stream_1_V_full_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_dst_data_stream_2_V_full_n = dst_data_stream_2_V_full_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_dout = src_data_stream_0_V_dout.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_empty_n = src_data_stream_0_V_empty_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_dout = src_data_stream_1_V_dout.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_empty_n = src_data_stream_1_V_empty_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_dout = src_data_stream_2_V_dout.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_empty_n = src_data_stream_2_V_empty_n.read();
}

void Sobel::thread_grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows() {
    grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_rows = src_rows_V_read.read();
}

void Sobel::thread_src_data_stream_0_V_read() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        src_data_stream_0_V_read = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_0_V_read.read();
    } else {
        src_data_stream_0_V_read = ap_const_logic_0;
    }
}

void Sobel::thread_src_data_stream_1_V_read() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        src_data_stream_1_V_read = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_1_V_read.read();
    } else {
        src_data_stream_1_V_read = ap_const_logic_0;
    }
}

void Sobel::thread_src_data_stream_2_V_read() {
    if ((esl_seteq<1,1,1>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) || 
         esl_seteq<1,1,1>(ap_ST_st2_fsm_1, ap_CS_fsm.read()))) {
        src_data_stream_2_V_read = grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_p_src_data_stream_2_V_read.read();
    } else {
        src_data_stream_2_V_read = ap_const_logic_0;
    }
}

void Sobel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!ap_sig_bdd_52.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_filter_opr_filter2d_kernel_16_16_int_int_480_640_3_3_s_fu_49_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}
}
