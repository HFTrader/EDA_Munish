set moduleName filter_opr_filter2d_kernel_16_16_int_int_1080_1920_3_3_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isOneStateSeq 0
set C_modelName filter_opr<filter2d_kernel,16,16,int,int,1080,1920,3,3>
set C_modelType { void 0 }
set C_modelArgList { 
	{ p_src_data_stream_0_V int 8 {fifo 0 volatile}  }
	{ p_src_data_stream_1_V int 8 {fifo 0 volatile}  }
	{ p_src_data_stream_2_V int 8 {fifo 0 volatile}  }
	{ p_dst_data_stream_0_V int 8 {fifo 1 volatile}  }
	{ p_dst_data_stream_1_V int 8 {fifo 1 volatile}  }
	{ p_dst_data_stream_2_V int 8 {fifo 1 volatile}  }
	{ rows int 12  }
	{ cols int 12  }
}

# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ p_src_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ p_src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ p_src_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ p_dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
	{ p_dst_data_stream_1_V_din sc_out sc_lv 8 signal 4 } 
	{ p_dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 4 } 
	{ p_dst_data_stream_1_V_write sc_out sc_logic 1 signal 4 } 
	{ p_dst_data_stream_2_V_din sc_out sc_lv 8 signal 5 } 
	{ p_dst_data_stream_2_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst_data_stream_2_V_write sc_out sc_logic 1 signal 5 } 
	{ rows sc_in sc_lv 12 signal 6 } 
	{ cols sc_in sc_lv 12 signal 7 } 
}

set Spec2ImplPortList { 
	p_src_data_stream_0_V { ap_fifo {  { p_src_data_stream_0_V_dout fifo_data 0 8 }  { p_src_data_stream_0_V_empty_n fifo_status 0 1 }  { p_src_data_stream_0_V_read fifo_update 1 1 } } }
	p_src_data_stream_1_V { ap_fifo {  { p_src_data_stream_1_V_dout fifo_data 0 8 }  { p_src_data_stream_1_V_empty_n fifo_status 0 1 }  { p_src_data_stream_1_V_read fifo_update 1 1 } } }
	p_src_data_stream_2_V { ap_fifo {  { p_src_data_stream_2_V_dout fifo_data 0 8 }  { p_src_data_stream_2_V_empty_n fifo_status 0 1 }  { p_src_data_stream_2_V_read fifo_update 1 1 } } }
	p_dst_data_stream_0_V { ap_fifo {  { p_dst_data_stream_0_V_din fifo_data 1 8 }  { p_dst_data_stream_0_V_full_n fifo_status 0 1 }  { p_dst_data_stream_0_V_write fifo_update 1 1 } } }
	p_dst_data_stream_1_V { ap_fifo {  { p_dst_data_stream_1_V_din fifo_data 1 8 }  { p_dst_data_stream_1_V_full_n fifo_status 0 1 }  { p_dst_data_stream_1_V_write fifo_update 1 1 } } }
	p_dst_data_stream_2_V { ap_fifo {  { p_dst_data_stream_2_V_din fifo_data 1 8 }  { p_dst_data_stream_2_V_full_n fifo_status 0 1 }  { p_dst_data_stream_2_V_write fifo_update 1 1 } } }
	rows { ap_none {  { rows in_data 0 12 } } }
	cols { ap_none {  { cols in_data 0 12 } } }
}
