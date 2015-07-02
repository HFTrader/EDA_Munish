############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project cvt_prj
set_top convert_to_gray
add_files top.cpp
add_files -tb test.cpp
add_files -tb result_1080p.bmp
add_files -tb opencv_top.cpp
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
source "./cvt_prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none
export_design -format pcore -version "1.01.a" -use_netlist none
