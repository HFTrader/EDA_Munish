
 add_fsm_encoding \
       {wr_chnl.GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs} \
       { }  \
       {{000 000001} {011 000010} {100 000100} {010 001000} {001 010000} }

 add_fsm_encoding \
       {rd_chnl.rlast_sm_cs} \
       { }  \
       {{000 000001} {100 000010} {001 000100} {010 001000} {011 010000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized0.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized1.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }

 add_fsm_encoding \
       {axi_data_fifo_v2_1_axic_reg_srl_fifo__parameterized2.state} \
       { }  \
       {{10 00001} {11 00010} {01 00100} {00 01000} }
