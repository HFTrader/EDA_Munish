############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project grayscale_prj
set_top gray_scale
add_files top.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 8MHz -name default
source "./grayscale_prj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design -trace_level none
export_design -format pcore -version "1.01.a" -use_netlist none
