# tcl script to init arm and run sdk

fpga -debugdevice devicenr 2 -f sw/videoProcessing_prj.bit
connect arm hw
source sw/ps7_init.tcl
ps7_init
init_user
dow sw/videoProcessing_prj.elf
run
disconnect 64
exit
