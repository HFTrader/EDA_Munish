set moduleName borderInterpolate
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
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
set portNum 4
set portList { 
	{ p sc_in sc_lv 13 signal 0 } 
	{ len sc_in sc_lv 12 signal 1 } 
	{ borderType sc_in sc_lv 5 signal 2 } 
	{ ap_return sc_out sc_lv 15 signal -1 } 
}

set Spec2ImplPortList { 
	p { ap_none {  { p in_data 0 13 } } }
	len { ap_none {  { len in_data 0 12 } } }
	borderType { ap_none {  { borderType in_data 0 5 } } }
}
