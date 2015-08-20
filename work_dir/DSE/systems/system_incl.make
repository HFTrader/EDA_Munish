#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/systems/system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /nfs/tools/xilinx/ise/14.7/ISE_DS/EDK

SYSTEM = system

MHSFILE = system.mhs

PCWPRJFILE = data/ps7_system_prj.xml

FPGA_ARCH = zynq

DEVICE = xc7z020clg484-1

INTSTYLE = default

XPS_HDL_LANG = vhdl
GLOBAL_SEARCHPATHOPT = 
PROJECT_SEARCHPATHOPT =  -lp /nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/

SEARCHPATHOPT = $(PROJECT_SEARCHPATHOPT) $(GLOBAL_SEARCHPATHOPT)

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst

OBSERVE_PAR_OPTIONS = -error yes

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
MICROBLAZE_BOOTLOOP_LE = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop_le.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

BRAMINIT_ELF_IMP_FILES =
BRAMINIT_ELF_IMP_FILE_ARGS =

BRAMINIT_ELF_SIM_FILES =
BRAMINIT_ELF_SIM_FILE_ARGS =

SIM_CMD = xterm -e ./isim_system

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.tcl

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.tcl

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.tcl

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_SIM_FILE_ARGS) -msg __xps/ise/xmsgprops.lst -s isim


CORE_STATE_DEVELOPMENT_FILES = /nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/proc_common_pkg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_pkg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate128.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family_support.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/family.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/coregen_comp_defs.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/common_types_pkg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/conv_funs_pkg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/async_fifo_fg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/sync_fifo_fg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/basic_sfifo_fg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/blk_mem_gen_wrapper.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/addsub.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter_bit.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/counter.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/direct_path_cntr.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/direct_path_cntr_ai.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/down_counter.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/eval_timer.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/inferred_lut4.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_steer.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_steer128.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ipif_mirror128.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ld_arith_reg.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/ld_arith_reg2.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/mux_onehot.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_bits.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_adder_bit.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_adder.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter_bit.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_counter_top.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_occ_counter.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_occ_counter_top.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pf_dpram_select.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/pselect_mask.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl16_fifo.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo2.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo3.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_rbu.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/valid_be.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_with_enable_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/muxf_struct_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/cntr_incr_decr_addn_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/dynshreg_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/dynshreg_i_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/mux_onehot_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_rbu_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/srl_fifo_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/compare_vectors_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_gate_f.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/soft_reset.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/address_decoder.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/slave_attachment.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_lite_ipif_v1_01_a/hdl/vhdl/axi_lite_ipif.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_mem.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_mul.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_add.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_csc_1.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_csc_RGB2CrYCb.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_ss_444to422.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_vdma.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_hdmi.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/cf_hdmi_tx_16b.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/verilog/user_logic.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_hdmi_tx_16b_v1_00_a/hdl/vhdl/axi_hdmi_tx_16b.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/verilog/cf_clkgen.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/verilog/user_logic.v \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_clkgen_v1_00_a/hdl/vhdl/axi_clkgen.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/user_logic.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/axi_i2s_adi.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_controller.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/axi_i2s_adi_v1_00_a/hdl/vhdl/i2s_rx_tx.vhd \
/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/DSE/cf_lib/edk/pcores/util_i2c_mixer_v1_00_a/hdl/vhdl/util_i2c_mixer.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_slave_burst_v1_00_a/hdl/vhdl/control_state_machine.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_slave_burst_v1_00_a/hdl/vhdl/read_data_path.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_slave_burst_v1_00_a/hdl/vhdl/address_decode.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_slave_burst_v1_00_a/hdl/vhdl/addr_gen.vhd \
/nfs/tools/xilinx/ise/14.7/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/axi_slave_burst_v1_00_a/hdl/vhdl/axi_slave_burst.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/ov7670_registers.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/i2c_sender.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/ov7670_controller.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/clocking.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/debounce.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/flag_crossing.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/ov7670_capture.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/ov7670cam_if.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/user_logic.vhd \
pcores/cam_interface_v1_00_a/hdl/vhdl/cam_interface.vhd \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/AXIvideo2Mat_32_1080_1920_16_s.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_mul_8ns_18ns_26_3.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_mul_8ns_20ns_28_3.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_mul_8ns_21ns_29_3.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/CvtColor_0_16_16_1080_1920_s.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_cols_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_cols_V_channel.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_data_stream_0_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_data_stream_1_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_data_stream_2_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_rows_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_0_rows_V_channel.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_1_cols_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_1_data_stream_0_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_1_data_stream_1_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_1_data_stream_2_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/FIFO_convert_to_gray_img_1_rows_V.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/init.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/init_1.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/Mat2AXIvideo_32_1080_1920_16_s.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_ap_rst_if.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_CONTROL_BUS_if.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_INPUT_STREAM_if.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_OUTPUT_STREAM_if.v \
pcores/convert_to_gray_top_v1_02_a/synhdl/verilog/convert_to_gray_top.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_buff_A_M_0.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_buff_A_M_2.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_mul_8ns_5ns_13_3.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_ap_rst_if.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_CONTROL_BUS_if.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_INPUT_STREAM_if.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_OUTPUT_STREAM_if.v \
pcores/sobel_filter_top_v1_01_a/synhdl/verilog/sobel_filter_top.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/AXIvideo2Mat_32_1080_1920_16_s.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/filter_opr_erode_kernel_16_16_unsigned_char_int_1080_1920_3_3_s_k_buf_0_val_0.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/filter_opr_erode_kernel_16_16_unsigned_char_int_1080_1920_3_3_s.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/Erode_16_16_1080_1920_s.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_cols_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_cols_V_channel.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_data_stream_0_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_data_stream_1_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_data_stream_2_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_rows_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_0_rows_V_channel.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_1_cols_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_1_data_stream_0_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_1_data_stream_1_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_1_data_stream_2_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/FIFO_image_filter_img_1_rows_V.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/init.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/init_1.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/Mat2AXIvideo_32_1080_1920_16_s.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter_ap_rst_if.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter_CONTROL_BUS_if.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter_INPUT_STREAM_if.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter_OUTPUT_STREAM_if.v \
pcores/image_filter_top_v1_00_a/synhdl/verilog/image_filter_top.v

WRAPPER_NGC_FILES = implementation/system_processing_system7_0_wrapper.ngc \
implementation/system_axi_vdma_0_wrapper.ngc \
implementation/system_axi_interconnect_1_wrapper.ngc \
implementation/system_axi_interconnect_2_wrapper.ngc \
implementation/system_axi_hdmi_tx_16b_0_wrapper.ngc \
implementation/system_axi_interconnect_0_wrapper.ngc \
implementation/system_axi_iic_0_wrapper.ngc \
implementation/system_axi_clkgen_0_wrapper.ngc \
implementation/system_clock_generator_0_wrapper.ngc \
implementation/system_util_vector_logic_0_wrapper.ngc \
implementation/system_axi_i2s_adi_0_wrapper.ngc \
implementation/system_util_i2c_mixer_0_wrapper.ngc \
implementation/system_axi_dma_i2s_wrapper.ngc \
implementation/system_cam_interface_0_wrapper.ngc \
implementation/system_axi_interconnect_3_wrapper.ngc \
implementation/system_convert_to_gray_top_0_wrapper.ngc \
implementation/system_sobel_filter_top_0_wrapper.ngc \
implementation/system_axi_vdma_2_wrapper.ngc \
implementation/system_image_filter_top_0_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = /nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/dualCore_SOGRER/videoProcessing_prj/SDK/SDK_Export/hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT)
