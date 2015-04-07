set moduleName dct_2d
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName dct_2d
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_block int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ out_block int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_block_address0 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_block_q0 sc_in sc_lv 16 signal 0 } 
	{ in_block_address1 sc_out sc_lv 6 signal 0 } 
	{ in_block_ce1 sc_out sc_logic 1 signal 0 } 
	{ in_block_q1 sc_in sc_lv 16 signal 0 } 
	{ out_block_address0 sc_out sc_lv 6 signal 1 } 
	{ out_block_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_block_we0 sc_out sc_logic 1 signal 1 } 
	{ out_block_d0 sc_out sc_lv 16 signal 1 } 
}

set Spec2ImplPortList { 
	in_block { ap_memory {  { in_block_address0 mem_address 1 6 }  { in_block_ce0 mem_ce 1 1 }  { in_block_q0 mem_dout 0 16 }  { in_block_address1 mem_address 1 6 }  { in_block_ce1 mem_ce 1 1 }  { in_block_q1 mem_dout 0 16 } } }
	out_block { ap_memory {  { out_block_address0 mem_address 1 6 }  { out_block_ce0 mem_ce 1 1 }  { out_block_we0 mem_we 1 1 }  { out_block_d0 mem_din 1 16 } } }
}
