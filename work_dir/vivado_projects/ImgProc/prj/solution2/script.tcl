############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project prj
set_top image_processor
add_files top.cpp
add_files -tb test.cpp -cflags "-I../../opencv_install/x86_64_Linux/include -I../../opencv_install/x86_64_Linux/include/opencv"
add_files -tb opencv_top.cpp -cflags "-I/home/ga73koz/thesis/xapp1167/opencv_install/x86_64_Linux/include -I/home/ga73koz/thesis/xapp1167/opencv_install/x86_64_Linux/include/opencv"
add_files -tb test_1080p.bmp
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 150MHz -name default
source "./prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level none -rtl vhdl -tool xsim
cosim_design -trace_level none
export_design -format pcore -version "1.04.a" -use_netlist none
