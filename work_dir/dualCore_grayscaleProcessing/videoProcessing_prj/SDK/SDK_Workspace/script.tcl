connect arm hw
fpga -f videoProcessing_prj_hw_platform/system.bit

source videoProcessing_prj_hw_platform/ps7_init.tcl
ps7_init
#dow app_cpu0/Debug/app_cpu0.elf
dow video_filter_sw_bothCPUs/Debug/video_filter_sw_bothCPUs.elf

connect arm hw -debugdevice cpunr 2
source stub.tcl
con







