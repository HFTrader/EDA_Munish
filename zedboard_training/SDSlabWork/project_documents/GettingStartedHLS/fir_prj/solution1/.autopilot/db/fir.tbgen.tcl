set moduleName fir
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName fir
set C_modelType { void 0 }
set C_modelArgList { 
	{ y int 32 regular {pointer 1}  }
	{ c int 32 regular {array 11 { 1 3 } 1 1 }  }
	{ x int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "y","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "rtlName" : "c","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","cArray": [{"low" : 0,"up" : 10,"step" : 1}]}]}]} , 
 	{ "rtlName" : "x","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "x","cData": "int","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y sc_out sc_lv 32 signal 0 } 
	{ y_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ c_address0 sc_out sc_lv 4 signal 1 } 
	{ c_ce0 sc_out sc_logic 1 signal 1 } 
	{ c_q0 sc_in sc_lv 32 signal 1 } 
	{ x sc_in sc_lv 32 signal 2 } 
}

set Spec2ImplPortList { 
	y { ap_vld {  { y out_data 1 32 }  { y_ap_vld out_vld 1 1 } } }
	c { ap_memory {  { c_address0 mem_address 1 4 }  { c_ce0 mem_ce 1 1 }  { c_q0 mem_dout 0 32 } } }
	x { ap_none {  { x in_data 0 32 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
