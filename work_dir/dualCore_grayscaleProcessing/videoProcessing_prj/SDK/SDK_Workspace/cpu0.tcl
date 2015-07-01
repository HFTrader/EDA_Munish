connect arm hw -debugdevice cpunr 1
fpga -f videoProcessing_prj_hw_platform/system.bit
source videoProcessing_prj_hw_platform/ps7_init.tcl
ps7_init
dow app_cpu0/Debug/app_cpu0.elf

