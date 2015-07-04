set moduleName borderInterpolate
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 3
set C_modelName borderInterpolate
set C_modelType { int 15 }
set C_modelArgList { 
	{ p int 13 regular  }
	{ len int 12 regular  }
	{ borderType int 5 regular  }
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p sc_in sc_lv 13 signal 0 } 
	{ len sc_in sc_lv 12 signal 1 } 
	{ borderType sc_in sc_lv 5 signal 2 } 
	{ ap_return sc_out sc_lv 15 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}

set Spec2ImplPortList { 
	p { ap_none {  { p in_data 0 13 } } }
	len { ap_none {  { len in_data 0 12 } } }
	borderType { ap_none {  { borderType in_data 0 5 } } }
}
