set moduleName dct_1d
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName dct_1d
set C_modelType { void 0 }
set C_modelArgList { 
	{ src int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ tmp_1 int 4 regular  }
	{ dst int 16 regular {array 64 { 0 3 } 0 1 }  }
	{ tmp_11 int 4 regular  }
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_address0 sc_out sc_lv 6 signal 0 } 
	{ src_ce0 sc_out sc_logic 1 signal 0 } 
	{ src_q0 sc_in sc_lv 16 signal 0 } 
	{ src_address1 sc_out sc_lv 6 signal 0 } 
	{ src_ce1 sc_out sc_logic 1 signal 0 } 
	{ src_q1 sc_in sc_lv 16 signal 0 } 
	{ tmp_1 sc_in sc_lv 4 signal 1 } 
	{ dst_address0 sc_out sc_lv 6 signal 2 } 
	{ dst_ce0 sc_out sc_logic 1 signal 2 } 
	{ dst_we0 sc_out sc_logic 1 signal 2 } 
	{ dst_d0 sc_out sc_lv 16 signal 2 } 
	{ tmp_11 sc_in sc_lv 4 signal 3 } 
}

set Spec2ImplPortList { 
	src { ap_memory {  { src_address0 mem_address 1 6 }  { src_ce0 mem_ce 1 1 }  { src_q0 mem_dout 0 16 }  { src_address1 mem_address 1 6 }  { src_ce1 mem_ce 1 1 }  { src_q1 mem_dout 0 16 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 4 } } }
	dst { ap_memory {  { dst_address0 mem_address 1 6 }  { dst_ce0 mem_ce 1 1 }  { dst_we0 mem_we 1 1 }  { dst_d0 mem_din 1 16 } } }
	tmp_11 { ap_none {  { tmp_11 in_data 0 4 } } }
}
