set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "fir"
set rawDecl [list "void" "fir \(
   data_t *y,
   coef_t c\[11\],
   data_t x
  \)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "y"
set portInterface0 "wire"
set portData0 "int"
set portPointer0 "1"
set portArrayDim0 0
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "c"
set portInterface1 "memory"
set portData1 "int"
set portPointer1 "0"
set portArrayDim1 [list 11]
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set portName2 "x"
set portInterface2 "wire"
set portData2 "int"
set portPointer2 "0"
set portArrayDim2 0
set portConst2 "0"
set portVolatile2 "0"
set portArrayOpt2 ""
set port2 [list $portName2 $portInterface2 $portData2 $portPointer2 $portArrayDim2 $portConst2 $portVolatile2 $portArrayOpt2]
lappend portList $port2
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 0
