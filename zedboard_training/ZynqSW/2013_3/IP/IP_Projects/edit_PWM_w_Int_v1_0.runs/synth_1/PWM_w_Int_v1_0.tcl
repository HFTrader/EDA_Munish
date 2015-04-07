# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property ip_repo_paths c:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0 [current_fileset]
read_verilog {
  C:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.srcs/sources_1/imports/hdl/PWM_Controller_Int.v
  c:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0_S00_AXI.v
  c:/Speedway/ZynqHW/2013_3/IP/PWM_w_Int_1.0/hdl/PWM_w_Int_v1_0.v
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Speedway/ZynqHW/2013_3/ZynqDesign/edit_PWM_w_Int_v1_0.data/wt [current_project]
set_property parent.project_dir C:/Speedway/ZynqHW/2013_3/ZynqDesign [current_project]
synth_design -top PWM_w_Int_v1_0 -part xc7z020clg484-1
write_checkpoint PWM_w_Int_v1_0.dcp
report_utilization -file PWM_w_Int_v1_0_utilization_synth.rpt -pb PWM_w_Int_v1_0_utilization_synth.pb
