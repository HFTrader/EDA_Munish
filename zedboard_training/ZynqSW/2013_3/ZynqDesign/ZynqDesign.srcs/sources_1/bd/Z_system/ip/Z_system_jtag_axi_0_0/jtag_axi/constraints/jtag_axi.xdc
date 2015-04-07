set src_rd [get_cells -hierarchical -filter { NAME =~ "*axi_rd_en_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_rd [get_cells -hierarchical -filter { NAME =~ "*axi_rd_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }] 
set_multicycle_path -setup 2 -from $src_rd -to $dest_rd; 
set_multicycle_path -hold 1 -from $src_rd -to $dest_rd; 


set src_wr [get_cells -hierarchical -filter { NAME =~ "*axi_wr_en_ff*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_wr [get_cells -hierarchical -filter { NAME =~ "*axi_wr_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_wr -to $dest_wr; 
set_multicycle_path -hold 1 -from $src_wr -to $dest_wr; 


set src_rd_done_ack [get_cells -hierarchical -filter { NAME =~ "*rd_done_rack_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_rd_done_ack [get_cells -hierarchical -filter { NAME =~ "*rd_done_ack_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_rd_done_ack -to $dest_rd_done_ack; 
set_multicycle_path -hold 1 -from $src_rd_done_ack -to $dest_rd_done_ack; 

set src_wr_done_ack [get_cells -hierarchical -filter { NAME =~ "*wr_done_rack_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_wr_done_ack [get_cells -hierarchical -filter { NAME =~ "*wr_done_ack_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_wr_done_ack -to $dest_wr_done_ack; 
set_multicycle_path -hold 1 -from $src_wr_done_ack -to $dest_wr_done_ack; 

set src_sts [get_cells -hierarchical -filter { NAME =~ "*status_reg_datain_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_sts [get_cells -hierarchical -filter { NAME =~ "*status_reg_datain_ff_reg*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_sts -to $dest_sts; 
set_multicycle_path -hold 1 -from $src_sts -to $dest_sts; 

set src_wr_cmd [get_cells -hierarchical -filter { NAME =~ "*wr_cmd_fifo_data_out_xsdb*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_wr_cmd [get_cells -hierarchical -filter { NAME =~ "*wr_cmd_fifo_data_out_ff_axi*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_wr_cmd -to $dest_wr_cmd; 
set_multicycle_path -hold 1 -from $src_wr_cmd -to $dest_wr_cmd; 

set src_rd_cmd [get_cells -hierarchical -filter { NAME =~ "*rd_cmd_fifo_data_out_xsdb*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set dest_rd_cmd [get_cells -hierarchical -filter { NAME =~ "*rd_cmd_fifo_data_out_ff_axi*" &&  ( PRIMITIVE_TYPE =~ FLOP_LATCH.flop.*   || PRIMITIVE_TYPE == RTL_REGISTER.flop.RTL_REG ) }]
set_multicycle_path -setup 2 -from $src_rd_cmd -to $dest_rd_cmd; 
set_multicycle_path -hold 1 -from $src_rd_cmd -to $dest_rd_cmd; 
