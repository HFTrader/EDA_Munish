--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2014 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--    Generated from core with identifier: xilinx.com:ip:fifo_generator:9.1   --
--                                                                            --
--    The FIFO Generator is a parameterizable first-in/first-out memory       --
--    queue generator. Use it to generate resource and performance            --
--    optimized FIFOs with common or independent read/write clock domains,    --
--    and optional fixed or programmable full and empty flags and             --
--    handshaking signals.  Choose from a selection of memory resource        --
--    types for implementation.  Optional Hamming code based error            --
--    detection and correction as well as error injection capability for      --
--    system test help to insure data integrity.  FIFO width and depth are    --
--    parameterizable, and for native interface FIFOs, asymmetric read and    --
--    write port widths are also supported.                                   --
--------------------------------------------------------------------------------
-- Source Code Wrapper
-- This file is provided to wrap around the source code (if appropriate)
-- and is designed for use with XST

-- Interfaces:
--   AXI4Stream_MASTER_M_AXIS
--   AXI4Stream_SLAVE_S_AXIS
--   AXI4_MASTER_M_AXI
--   AXI4_SLAVE_S_AXI
--   AXI4Lite_MASTER_M_AXI
--   AXI4Lite_SLAVE_S_AXI

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY fifo_generator_v9_1;
USE fifo_generator_v9_1.fifo_generator_v9_1;

ENTITY system_axi_interconnect_1_wrapper_fifo_generator_v9_1 IS
  PORT (
    backup : IN STD_LOGIC;
    backup_marker : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    wr_rst : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    rd_rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    prog_empty_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_empty_thresh_assert : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_empty_thresh_negate : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full_thresh_assert : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full_thresh_negate : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    int_clk : IN STD_LOGIC;
    injectdbiterr : IN STD_LOGIC;
    injectsbiterr : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    wr_ack : OUT STD_LOGIC;
    overflow : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC;
    underflow : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rd_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    wr_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full : OUT STD_LOGIC;
    prog_empty : OUT STD_LOGIC;
    sbiterr : OUT STD_LOGIC;
    dbiterr : OUT STD_LOGIC;
    m_aclk : IN STD_LOGIC;
    s_aclk : IN STD_LOGIC;
    s_aresetn : IN STD_LOGIC;
    m_aclk_en : IN STD_LOGIC;
    s_aclk_en : IN STD_LOGIC;
    s_axi_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC;
    s_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    m_axi_awid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_wid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wready : IN STD_LOGIC;
    m_axi_bid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    s_axi_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC;
    s_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    m_axi_arid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    m_axi_rid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rready : OUT STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_tdest : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tdest : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    axi_aw_injectsbiterr : IN STD_LOGIC;
    axi_aw_injectdbiterr : IN STD_LOGIC;
    axi_aw_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_aw_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_aw_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_aw_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_aw_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_aw_sbiterr : OUT STD_LOGIC;
    axi_aw_dbiterr : OUT STD_LOGIC;
    axi_aw_overflow : OUT STD_LOGIC;
    axi_aw_underflow : OUT STD_LOGIC;
    axi_aw_prog_full : OUT STD_LOGIC;
    axi_aw_prog_empty : OUT STD_LOGIC;
    axi_w_injectsbiterr : IN STD_LOGIC;
    axi_w_injectdbiterr : IN STD_LOGIC;
    axi_w_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_w_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_w_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_w_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_w_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_w_sbiterr : OUT STD_LOGIC;
    axi_w_dbiterr : OUT STD_LOGIC;
    axi_w_overflow : OUT STD_LOGIC;
    axi_w_underflow : OUT STD_LOGIC;
    axi_b_injectsbiterr : IN STD_LOGIC;
    axi_w_prog_full : OUT STD_LOGIC;
    axi_w_prog_empty : OUT STD_LOGIC;
    axi_b_injectdbiterr : IN STD_LOGIC;
    axi_b_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_b_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_b_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_b_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_b_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_b_sbiterr : OUT STD_LOGIC;
    axi_b_dbiterr : OUT STD_LOGIC;
    axi_b_overflow : OUT STD_LOGIC;
    axi_b_underflow : OUT STD_LOGIC;
    axi_ar_injectsbiterr : IN STD_LOGIC;
    axi_b_prog_full : OUT STD_LOGIC;
    axi_b_prog_empty : OUT STD_LOGIC;
    axi_ar_injectdbiterr : IN STD_LOGIC;
    axi_ar_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_ar_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_ar_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_ar_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_ar_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_ar_sbiterr : OUT STD_LOGIC;
    axi_ar_dbiterr : OUT STD_LOGIC;
    axi_ar_overflow : OUT STD_LOGIC;
    axi_ar_underflow : OUT STD_LOGIC;
    axi_ar_prog_full : OUT STD_LOGIC;
    axi_ar_prog_empty : OUT STD_LOGIC;
    axi_r_injectsbiterr : IN STD_LOGIC;
    axi_r_injectdbiterr : IN STD_LOGIC;
    axi_r_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_r_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axi_r_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_r_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_r_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axi_r_sbiterr : OUT STD_LOGIC;
    axi_r_dbiterr : OUT STD_LOGIC;
    axi_r_overflow : OUT STD_LOGIC;
    axi_r_underflow : OUT STD_LOGIC;
    axis_injectsbiterr : IN STD_LOGIC;
    axi_r_prog_full : OUT STD_LOGIC;
    axi_r_prog_empty : OUT STD_LOGIC;
    axis_injectdbiterr : IN STD_LOGIC;
    axis_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axis_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    axis_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axis_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axis_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    axis_sbiterr : OUT STD_LOGIC;
    axis_dbiterr : OUT STD_LOGIC;
    axis_overflow : OUT STD_LOGIC;
    axis_underflow : OUT STD_LOGIC;
    axis_prog_full : OUT STD_LOGIC;
    axis_prog_empty : OUT STD_LOGIC
  );
END system_axi_interconnect_1_wrapper_fifo_generator_v9_1;

ARCHITECTURE zynq OF system_axi_interconnect_1_wrapper_fifo_generator_v9_1 IS

  COMPONENT fifo_generator_v9_1 IS
    GENERIC (
      c_common_clock : INTEGER;
      c_count_type : INTEGER;
      c_data_count_width : INTEGER;
      c_default_value : STRING;
      c_din_width : INTEGER;
      c_dout_rst_val : STRING;
      c_dout_width : INTEGER;
      c_enable_rlocs : INTEGER;
      c_family : STRING;
      c_full_flags_rst_val : INTEGER;
      c_has_almost_empty : INTEGER;
      c_has_almost_full : INTEGER;
      c_has_backup : INTEGER;
      c_has_data_count : INTEGER;
      c_has_int_clk : INTEGER;
      c_has_meminit_file : INTEGER;
      c_has_overflow : INTEGER;
      c_has_rd_data_count : INTEGER;
      c_has_rd_rst : INTEGER;
      c_has_rst : INTEGER;
      c_has_srst : INTEGER;
      c_has_underflow : INTEGER;
      c_has_valid : INTEGER;
      c_has_wr_ack : INTEGER;
      c_has_wr_data_count : INTEGER;
      c_has_wr_rst : INTEGER;
      c_implementation_type : INTEGER;
      c_init_wr_pntr_val : INTEGER;
      c_memory_type : INTEGER;
      c_mif_file_name : STRING;
      c_optimization_mode : INTEGER;
      c_overflow_low : INTEGER;
      c_preload_latency : INTEGER;
      c_preload_regs : INTEGER;
      c_prim_fifo_type : STRING;
      c_prog_empty_thresh_assert_val : INTEGER;
      c_prog_empty_thresh_negate_val : INTEGER;
      c_prog_empty_type : INTEGER;
      c_prog_full_thresh_assert_val : INTEGER;
      c_prog_full_thresh_negate_val : INTEGER;
      c_prog_full_type : INTEGER;
      c_rd_data_count_width : INTEGER;
      c_rd_depth : INTEGER;
      c_rd_freq : INTEGER;
      c_rd_pntr_width : INTEGER;
      c_underflow_low : INTEGER;
      c_use_dout_rst : INTEGER;
      c_use_ecc : INTEGER;
      c_use_embedded_reg : INTEGER;
      c_use_fifo16_flags : INTEGER;
      c_use_fwft_data_count : INTEGER;
      c_valid_low : INTEGER;
      c_wr_ack_low : INTEGER;
      c_wr_data_count_width : INTEGER;
      c_wr_depth : INTEGER;
      c_wr_freq : INTEGER;
      c_wr_pntr_width : INTEGER;
      c_wr_response_latency : INTEGER;
      c_msgon_val : INTEGER;
      c_enable_rst_sync : INTEGER;
      c_error_injection_type : INTEGER;
      c_synchronizer_stage : INTEGER;
      c_interface_type : INTEGER;
      c_axi_type : INTEGER;
      c_has_axi_wr_channel : INTEGER;
      c_has_axi_rd_channel : INTEGER;
      c_has_slave_ce : INTEGER;
      c_has_master_ce : INTEGER;
      c_add_ngc_constraint : INTEGER;
      c_use_common_overflow : INTEGER;
      c_use_common_underflow : INTEGER;
      c_use_default_settings : INTEGER;
      c_axi_id_width : INTEGER;
      c_axi_addr_width : INTEGER;
      c_axi_data_width : INTEGER;
      c_has_axi_awuser : INTEGER;
      c_has_axi_wuser : INTEGER;
      c_has_axi_buser : INTEGER;
      c_has_axi_aruser : INTEGER;
      c_has_axi_ruser : INTEGER;
      c_axi_aruser_width : INTEGER;
      c_axi_awuser_width : INTEGER;
      c_axi_wuser_width : INTEGER;
      c_axi_buser_width : INTEGER;
      c_axi_ruser_width : INTEGER;
      c_has_axis_tdata : INTEGER;
      c_has_axis_tid : INTEGER;
      c_has_axis_tdest : INTEGER;
      c_has_axis_tuser : INTEGER;
      c_has_axis_tready : INTEGER;
      c_has_axis_tlast : INTEGER;
      c_has_axis_tstrb : INTEGER;
      c_has_axis_tkeep : INTEGER;
      c_axis_tdata_width : INTEGER;
      c_axis_tid_width : INTEGER;
      c_axis_tdest_width : INTEGER;
      c_axis_tuser_width : INTEGER;
      c_axis_tstrb_width : INTEGER;
      c_axis_tkeep_width : INTEGER;
      c_wach_type : INTEGER;
      c_wdch_type : INTEGER;
      c_wrch_type : INTEGER;
      c_rach_type : INTEGER;
      c_rdch_type : INTEGER;
      c_axis_type : INTEGER;
      c_implementation_type_wach : INTEGER;
      c_implementation_type_wdch : INTEGER;
      c_implementation_type_wrch : INTEGER;
      c_implementation_type_rach : INTEGER;
      c_implementation_type_rdch : INTEGER;
      c_implementation_type_axis : INTEGER;
      c_application_type_wach : INTEGER;
      c_application_type_wdch : INTEGER;
      c_application_type_wrch : INTEGER;
      c_application_type_rach : INTEGER;
      c_application_type_rdch : INTEGER;
      c_application_type_axis : INTEGER;
      c_use_ecc_wach : INTEGER;
      c_use_ecc_wdch : INTEGER;
      c_use_ecc_wrch : INTEGER;
      c_use_ecc_rach : INTEGER;
      c_use_ecc_rdch : INTEGER;
      c_use_ecc_axis : INTEGER;
      c_error_injection_type_wach : INTEGER;
      c_error_injection_type_wdch : INTEGER;
      c_error_injection_type_wrch : INTEGER;
      c_error_injection_type_rach : INTEGER;
      c_error_injection_type_rdch : INTEGER;
      c_error_injection_type_axis : INTEGER;
      c_din_width_wach : INTEGER;
      c_din_width_wdch : INTEGER;
      c_din_width_wrch : INTEGER;
      c_din_width_rach : INTEGER;
      c_din_width_rdch : INTEGER;
      c_din_width_axis : INTEGER;
      c_wr_depth_wach : INTEGER;
      c_wr_depth_wdch : INTEGER;
      c_wr_depth_wrch : INTEGER;
      c_wr_depth_rach : INTEGER;
      c_wr_depth_rdch : INTEGER;
      c_wr_depth_axis : INTEGER;
      c_wr_pntr_width_wach : INTEGER;
      c_wr_pntr_width_wdch : INTEGER;
      c_wr_pntr_width_wrch : INTEGER;
      c_wr_pntr_width_rach : INTEGER;
      c_wr_pntr_width_rdch : INTEGER;
      c_wr_pntr_width_axis : INTEGER;
      c_has_data_counts_wach : INTEGER;
      c_has_data_counts_wdch : INTEGER;
      c_has_data_counts_wrch : INTEGER;
      c_has_data_counts_rach : INTEGER;
      c_has_data_counts_rdch : INTEGER;
      c_has_data_counts_axis : INTEGER;
      c_has_prog_flags_wach : INTEGER;
      c_has_prog_flags_wdch : INTEGER;
      c_has_prog_flags_wrch : INTEGER;
      c_has_prog_flags_rach : INTEGER;
      c_has_prog_flags_rdch : INTEGER;
      c_has_prog_flags_axis : INTEGER;
      c_prog_full_type_wach : INTEGER;
      c_prog_full_type_wdch : INTEGER;
      c_prog_full_type_wrch : INTEGER;
      c_prog_full_type_rach : INTEGER;
      c_prog_full_type_rdch : INTEGER;
      c_prog_full_type_axis : INTEGER;
      c_prog_full_thresh_assert_val_wach : INTEGER;
      c_prog_full_thresh_assert_val_wdch : INTEGER;
      c_prog_full_thresh_assert_val_wrch : INTEGER;
      c_prog_full_thresh_assert_val_rach : INTEGER;
      c_prog_full_thresh_assert_val_rdch : INTEGER;
      c_prog_full_thresh_assert_val_axis : INTEGER;
      c_prog_empty_type_wach : INTEGER;
      c_prog_empty_type_wdch : INTEGER;
      c_prog_empty_type_wrch : INTEGER;
      c_prog_empty_type_rach : INTEGER;
      c_prog_empty_type_rdch : INTEGER;
      c_prog_empty_type_axis : INTEGER;
      c_prog_empty_thresh_assert_val_wach : INTEGER;
      c_prog_empty_thresh_assert_val_wdch : INTEGER;
      c_prog_empty_thresh_assert_val_wrch : INTEGER;
      c_prog_empty_thresh_assert_val_rach : INTEGER;
      c_prog_empty_thresh_assert_val_rdch : INTEGER;
      c_prog_empty_thresh_assert_val_axis : INTEGER;
      c_reg_slice_mode_wach : INTEGER;
      c_reg_slice_mode_wdch : INTEGER;
      c_reg_slice_mode_wrch : INTEGER;
      c_reg_slice_mode_rach : INTEGER;
      c_reg_slice_mode_rdch : INTEGER;
      c_reg_slice_mode_axis : INTEGER
    );
    PORT (
      backup : IN STD_LOGIC;
      backup_marker : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      srst : IN STD_LOGIC;
      wr_clk : IN STD_LOGIC;
      wr_rst : IN STD_LOGIC;
      rd_clk : IN STD_LOGIC;
      rd_rst : IN STD_LOGIC;
      din : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      wr_en : IN STD_LOGIC;
      rd_en : IN STD_LOGIC;
      prog_empty_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_empty_thresh_assert : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_empty_thresh_negate : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_full_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_full_thresh_assert : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_full_thresh_negate : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      int_clk : IN STD_LOGIC;
      injectdbiterr : IN STD_LOGIC;
      injectsbiterr : IN STD_LOGIC;
      dout : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      full : OUT STD_LOGIC;
      almost_full : OUT STD_LOGIC;
      wr_ack : OUT STD_LOGIC;
      overflow : OUT STD_LOGIC;
      empty : OUT STD_LOGIC;
      almost_empty : OUT STD_LOGIC;
      valid : OUT STD_LOGIC;
      underflow : OUT STD_LOGIC;
      data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      rd_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      wr_data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      prog_full : OUT STD_LOGIC;
      prog_empty : OUT STD_LOGIC;
      sbiterr : OUT STD_LOGIC;
      dbiterr : OUT STD_LOGIC;
      m_aclk : IN STD_LOGIC;
      s_aclk : IN STD_LOGIC;
      s_aresetn : IN STD_LOGIC;
      m_aclk_en : IN STD_LOGIC;
      s_aclk_en : IN STD_LOGIC;
      s_axi_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wlast : IN STD_LOGIC;
      s_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      m_axi_awid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_wid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      m_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wready : IN STD_LOGIC;
      m_axi_bid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      s_axi_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : OUT STD_LOGIC;
      s_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      m_axi_arid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_arready : IN STD_LOGIC;
      m_axi_rid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      m_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rready : OUT STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_tdest : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC;
      m_axis_tid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tdest : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      axi_aw_injectsbiterr : IN STD_LOGIC;
      axi_aw_injectdbiterr : IN STD_LOGIC;
      axi_aw_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_aw_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_aw_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_aw_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_aw_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_aw_sbiterr : OUT STD_LOGIC;
      axi_aw_dbiterr : OUT STD_LOGIC;
      axi_aw_overflow : OUT STD_LOGIC;
      axi_aw_underflow : OUT STD_LOGIC;
      axi_aw_prog_full : OUT STD_LOGIC;
      axi_aw_prog_empty : OUT STD_LOGIC;
      axi_w_injectsbiterr : IN STD_LOGIC;
      axi_w_injectdbiterr : IN STD_LOGIC;
      axi_w_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_w_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_w_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_w_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_w_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_w_sbiterr : OUT STD_LOGIC;
      axi_w_dbiterr : OUT STD_LOGIC;
      axi_w_overflow : OUT STD_LOGIC;
      axi_w_underflow : OUT STD_LOGIC;
      axi_b_injectsbiterr : IN STD_LOGIC;
      axi_w_prog_full : OUT STD_LOGIC;
      axi_w_prog_empty : OUT STD_LOGIC;
      axi_b_injectdbiterr : IN STD_LOGIC;
      axi_b_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_b_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_b_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_b_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_b_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_b_sbiterr : OUT STD_LOGIC;
      axi_b_dbiterr : OUT STD_LOGIC;
      axi_b_overflow : OUT STD_LOGIC;
      axi_b_underflow : OUT STD_LOGIC;
      axi_ar_injectsbiterr : IN STD_LOGIC;
      axi_b_prog_full : OUT STD_LOGIC;
      axi_b_prog_empty : OUT STD_LOGIC;
      axi_ar_injectdbiterr : IN STD_LOGIC;
      axi_ar_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_ar_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_ar_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_ar_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_ar_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_ar_sbiterr : OUT STD_LOGIC;
      axi_ar_dbiterr : OUT STD_LOGIC;
      axi_ar_overflow : OUT STD_LOGIC;
      axi_ar_underflow : OUT STD_LOGIC;
      axi_ar_prog_full : OUT STD_LOGIC;
      axi_ar_prog_empty : OUT STD_LOGIC;
      axi_r_injectsbiterr : IN STD_LOGIC;
      axi_r_injectdbiterr : IN STD_LOGIC;
      axi_r_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_r_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axi_r_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_r_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_r_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axi_r_sbiterr : OUT STD_LOGIC;
      axi_r_dbiterr : OUT STD_LOGIC;
      axi_r_overflow : OUT STD_LOGIC;
      axi_r_underflow : OUT STD_LOGIC;
      axis_injectsbiterr : IN STD_LOGIC;
      axi_r_prog_full : OUT STD_LOGIC;
      axi_r_prog_empty : OUT STD_LOGIC;
      axis_injectdbiterr : IN STD_LOGIC;
      axis_prog_full_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axis_prog_empty_thresh : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      axis_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axis_wr_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axis_rd_data_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      axis_sbiterr : OUT STD_LOGIC;
      axis_dbiterr : OUT STD_LOGIC;
      axis_overflow : OUT STD_LOGIC;
      axis_underflow : OUT STD_LOGIC;
      axis_prog_full : OUT STD_LOGIC;
      axis_prog_empty : OUT STD_LOGIC
    );
  END COMPONENT fifo_generator_v9_1;

  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF zynq : ARCHITECTURE IS "fifo_generator_v9_1, Xilinx CORE Generator 14.7";

  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF zynq : ARCHITECTURE IS "system_axi_interconnect_1_wrapper_fifo_generator_v9_1,fifo_generator_v9_1,{}";

  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF zynq : ARCHITECTURE IS "system_axi_interconnect_1_wrapper_fifo_generator_v9_1,fifo_generator_v9_1,{c_add_ngc_constraint=0,c_application_type_axis=0,c_application_type_rach=0,c_application_type_rdch=0,c_application_type_wach=0,c_application_type_wdch=0,c_application_type_wrch=0,c_axi_addr_width=32,c_axi_aruser_width=1,c_axi_awuser_width=1,c_axi_buser_width=1,c_axi_data_width=32,c_axi_id_width=6,c_axi_ruser_width=1,c_axi_type=1,c_axi_wuser_width=1,c_axis_tdata_width=64,c_axis_tdest_width=4,c_axis_tid_width=4,c_axis_tkeep_width=4,c_axis_tstrb_width=4,c_axis_tuser_width=4,c_axis_type=0,c_common_clock=0,c_count_type=0,c_data_count_width=10,c_default_value=BlankString,c_din_width=18,c_din_width_axis=1,c_din_width_rach=68,c_din_width_rdch=41,c_din_width_wach=68,c_din_width_wdch=43,c_din_width_wrch=8,c_dout_rst_val=0,c_dout_width=18,c_enable_rlocs=0,c_enable_rst_sync=1,c_error_injection_type=0,c_error_injection_type_axis=0,c_error_injection_type_rach=0,c_error_injection_type_rdch=0,c_error_injection_type_wach=0,c_error_injection_type_wdch=0,c_error_injection_type_wrch=0,c_family=zynq,c_full_flags_rst_val=1,c_has_almost_empty=0,c_has_almost_full=0,c_has_axi_aruser=0,c_has_axi_awuser=0,c_has_axi_buser=0,c_has_axi_rd_channel=1,c_has_axi_ruser=0,c_has_axi_wr_channel=1,c_has_axi_wuser=0,c_has_axis_tdata=0,c_has_axis_tdest=0,c_has_axis_tid=0,c_has_axis_tkeep=0,c_has_axis_tlast=0,c_has_axis_tready=1,c_has_axis_tstrb=0,c_has_axis_tuser=0,c_has_backup=0,c_has_data_count=0,c_has_data_counts_axis=0,c_has_data_counts_rach=0,c_has_data_counts_rdch=0,c_has_data_counts_wach=0,c_has_data_counts_wdch=0,c_has_data_counts_wrch=0,c_has_int_clk=0,c_has_master_ce=0,c_has_meminit_file=0,c_has_overflow=0,c_has_prog_flags_axis=0,c_has_prog_flags_rach=0,c_has_prog_flags_rdch=0,c_has_prog_flags_wach=0,c_has_prog_flags_wdch=0,c_has_prog_flags_wrch=0,c_has_rd_data_count=0,c_has_rd_rst=0,c_has_rst=1,c_has_slave_ce=0,c_has_srst=0,c_has_underflow=0,c_has_valid=0,c_has_wr_ack=0,c_has_wr_data_count=0,c_has_wr_rst=0,c_implementation_type=0,c_implementation_type_axis=12,c_implementation_type_rach=12,c_implementation_type_rdch=12,c_implementation_type_wach=12,c_implementation_type_wdch=12,c_implementation_type_wrch=12,c_init_wr_pntr_val=0,c_interface_type=1,c_memory_type=1,c_mif_file_name=BlankString,c_msgon_val=1,c_optimization_mode=0,c_overflow_low=0,c_preload_latency=1,c_preload_regs=0,c_prim_fifo_type=4kx4,c_prog_empty_thresh_assert_val=2,c_prog_empty_thresh_assert_val_axis=1021,c_prog_empty_thresh_assert_val_rach=29,c_prog_empty_thresh_assert_val_rdch=29,c_prog_empty_thresh_assert_val_wach=29,c_prog_empty_thresh_assert_val_wdch=29,c_prog_empty_thresh_assert_val_wrch=29,c_prog_empty_thresh_negate_val=3,c_prog_empty_type=0,c_prog_empty_type_axis=5,c_prog_empty_type_rach=5,c_prog_empty_type_rdch=5,c_prog_empty_type_wach=5,c_prog_empty_type_wdch=5,c_prog_empty_type_wrch=5,c_prog_full_thresh_assert_val=1022,c_prog_full_thresh_assert_val_axis=1023,c_prog_full_thresh_assert_val_rach=31,c_prog_full_thresh_assert_val_rdch=31,c_prog_full_thresh_assert_val_wach=31,c_prog_full_thresh_assert_val_wdch=31,c_prog_full_thresh_assert_val_wrch=31,c_prog_full_thresh_negate_val=1021,c_prog_full_type=0,c_prog_full_type_axis=5,c_prog_full_type_rach=5,c_prog_full_type_rdch=5,c_prog_full_type_wach=5,c_prog_full_type_wdch=5,c_prog_full_type_wrch=5,c_rach_type=0,c_rd_data_count_width=10,c_rd_depth=1024,c_rd_freq=1,c_rd_pntr_width=10,c_rdch_type=0,c_reg_slice_mode_axis=0,c_reg_slice_mode_rach=0,c_reg_slice_mode_rdch=0,c_reg_slice_mode_wach=0,c_reg_slice_mode_wdch=0,c_reg_slice_mode_wrch=0,c_synchronizer_stage=3,c_underflow_low=0,c_use_common_overflow=0,c_use_common_underflow=0,c_use_default_settings=0,c_use_dout_rst=1,c_use_ecc=0,c_use_ecc_axis=0,c_use_ecc_rach=0,c_use_ecc_rdch=0,c_use_ecc_wach=0,c_use_ecc_wdch=0,c_use_ecc_wrch=0,c_use_embedded_reg=0,c_use_fifo16_flags=0,c_use_fwft_data_count=0,c_valid_low=0,c_wach_type=0,c_wdch_type=0,c_wr_ack_low=0,c_wr_data_count_width=10,c_wr_depth=1024,c_wr_depth_axis=32,c_wr_depth_rach=32,c_wr_depth_rdch=32,c_wr_depth_wach=32,c_wr_depth_wdch=32,c_wr_depth_wrch=32,c_wr_freq=1,c_wr_pntr_width=10,c_wr_pntr_width_axis=5,c_wr_pntr_width_rach=5,c_wr_pntr_width_rdch=5,c_wr_pntr_width_wach=5,c_wr_pntr_width_wdch=5,c_wr_pntr_width_wrch=5,c_wr_response_latency=1,c_wrch_type=0}";

BEGIN

  U0 : fifo_generator_v9_1
    GENERIC MAP (
      c_add_ngc_constraint => 0,
      c_application_type_axis => 0,
      c_application_type_rach => 0,
      c_application_type_rdch => 0,
      c_application_type_wach => 0,
      c_application_type_wdch => 0,
      c_application_type_wrch => 0,
      c_axi_addr_width => 32,
      c_axi_aruser_width => 1,
      c_axi_awuser_width => 1,
      c_axi_buser_width => 1,
      c_axi_data_width => 32,
      c_axi_id_width => 6,
      c_axi_ruser_width => 1,
      c_axi_type => 1,
      c_axi_wuser_width => 1,
      c_axis_tdata_width => 64,
      c_axis_tdest_width => 4,
      c_axis_tid_width => 4,
      c_axis_tkeep_width => 4,
      c_axis_tstrb_width => 4,
      c_axis_tuser_width => 4,
      c_axis_type => 0,
      c_common_clock => 0,
      c_count_type => 0,
      c_data_count_width => 10,
      c_default_value => "BlankString",
      c_din_width => 18,
      c_din_width_axis => 1,
      c_din_width_rach => 68,
      c_din_width_rdch => 41,
      c_din_width_wach => 68,
      c_din_width_wdch => 43,
      c_din_width_wrch => 8,
      c_dout_rst_val => "0",
      c_dout_width => 18,
      c_enable_rlocs => 0,
      c_enable_rst_sync => 1,
      c_error_injection_type => 0,
      c_error_injection_type_axis => 0,
      c_error_injection_type_rach => 0,
      c_error_injection_type_rdch => 0,
      c_error_injection_type_wach => 0,
      c_error_injection_type_wdch => 0,
      c_error_injection_type_wrch => 0,
      c_family => "zynq",
      c_full_flags_rst_val => 1,
      c_has_almost_empty => 0,
      c_has_almost_full => 0,
      c_has_axi_aruser => 0,
      c_has_axi_awuser => 0,
      c_has_axi_buser => 0,
      c_has_axi_rd_channel => 1,
      c_has_axi_ruser => 0,
      c_has_axi_wr_channel => 1,
      c_has_axi_wuser => 0,
      c_has_axis_tdata => 0,
      c_has_axis_tdest => 0,
      c_has_axis_tid => 0,
      c_has_axis_tkeep => 0,
      c_has_axis_tlast => 0,
      c_has_axis_tready => 1,
      c_has_axis_tstrb => 0,
      c_has_axis_tuser => 0,
      c_has_backup => 0,
      c_has_data_count => 0,
      c_has_data_counts_axis => 0,
      c_has_data_counts_rach => 0,
      c_has_data_counts_rdch => 0,
      c_has_data_counts_wach => 0,
      c_has_data_counts_wdch => 0,
      c_has_data_counts_wrch => 0,
      c_has_int_clk => 0,
      c_has_master_ce => 0,
      c_has_meminit_file => 0,
      c_has_overflow => 0,
      c_has_prog_flags_axis => 0,
      c_has_prog_flags_rach => 0,
      c_has_prog_flags_rdch => 0,
      c_has_prog_flags_wach => 0,
      c_has_prog_flags_wdch => 0,
      c_has_prog_flags_wrch => 0,
      c_has_rd_data_count => 0,
      c_has_rd_rst => 0,
      c_has_rst => 1,
      c_has_slave_ce => 0,
      c_has_srst => 0,
      c_has_underflow => 0,
      c_has_valid => 0,
      c_has_wr_ack => 0,
      c_has_wr_data_count => 0,
      c_has_wr_rst => 0,
      c_implementation_type => 0,
      c_implementation_type_axis => 12,
      c_implementation_type_rach => 12,
      c_implementation_type_rdch => 12,
      c_implementation_type_wach => 12,
      c_implementation_type_wdch => 12,
      c_implementation_type_wrch => 12,
      c_init_wr_pntr_val => 0,
      c_interface_type => 1,
      c_memory_type => 1,
      c_mif_file_name => "BlankString",
      c_msgon_val => 1,
      c_optimization_mode => 0,
      c_overflow_low => 0,
      c_preload_latency => 1,
      c_preload_regs => 0,
      c_prim_fifo_type => "4kx4",
      c_prog_empty_thresh_assert_val => 2,
      c_prog_empty_thresh_assert_val_axis => 1021,
      c_prog_empty_thresh_assert_val_rach => 29,
      c_prog_empty_thresh_assert_val_rdch => 29,
      c_prog_empty_thresh_assert_val_wach => 29,
      c_prog_empty_thresh_assert_val_wdch => 29,
      c_prog_empty_thresh_assert_val_wrch => 29,
      c_prog_empty_thresh_negate_val => 3,
      c_prog_empty_type => 0,
      c_prog_empty_type_axis => 5,
      c_prog_empty_type_rach => 5,
      c_prog_empty_type_rdch => 5,
      c_prog_empty_type_wach => 5,
      c_prog_empty_type_wdch => 5,
      c_prog_empty_type_wrch => 5,
      c_prog_full_thresh_assert_val => 1022,
      c_prog_full_thresh_assert_val_axis => 1023,
      c_prog_full_thresh_assert_val_rach => 31,
      c_prog_full_thresh_assert_val_rdch => 31,
      c_prog_full_thresh_assert_val_wach => 31,
      c_prog_full_thresh_assert_val_wdch => 31,
      c_prog_full_thresh_assert_val_wrch => 31,
      c_prog_full_thresh_negate_val => 1021,
      c_prog_full_type => 0,
      c_prog_full_type_axis => 5,
      c_prog_full_type_rach => 5,
      c_prog_full_type_rdch => 5,
      c_prog_full_type_wach => 5,
      c_prog_full_type_wdch => 5,
      c_prog_full_type_wrch => 5,
      c_rach_type => 0,
      c_rd_data_count_width => 10,
      c_rd_depth => 1024,
      c_rd_freq => 1,
      c_rd_pntr_width => 10,
      c_rdch_type => 0,
      c_reg_slice_mode_axis => 0,
      c_reg_slice_mode_rach => 0,
      c_reg_slice_mode_rdch => 0,
      c_reg_slice_mode_wach => 0,
      c_reg_slice_mode_wdch => 0,
      c_reg_slice_mode_wrch => 0,
      c_synchronizer_stage => 3,
      c_underflow_low => 0,
      c_use_common_overflow => 0,
      c_use_common_underflow => 0,
      c_use_default_settings => 0,
      c_use_dout_rst => 1,
      c_use_ecc => 0,
      c_use_ecc_axis => 0,
      c_use_ecc_rach => 0,
      c_use_ecc_rdch => 0,
      c_use_ecc_wach => 0,
      c_use_ecc_wdch => 0,
      c_use_ecc_wrch => 0,
      c_use_embedded_reg => 0,
      c_use_fifo16_flags => 0,
      c_use_fwft_data_count => 0,
      c_valid_low => 0,
      c_wach_type => 0,
      c_wdch_type => 0,
      c_wr_ack_low => 0,
      c_wr_data_count_width => 10,
      c_wr_depth => 1024,
      c_wr_depth_axis => 32,
      c_wr_depth_rach => 32,
      c_wr_depth_rdch => 32,
      c_wr_depth_wach => 32,
      c_wr_depth_wdch => 32,
      c_wr_depth_wrch => 32,
      c_wr_freq => 1,
      c_wr_pntr_width => 10,
      c_wr_pntr_width_axis => 5,
      c_wr_pntr_width_rach => 5,
      c_wr_pntr_width_rdch => 5,
      c_wr_pntr_width_wach => 5,
      c_wr_pntr_width_wdch => 5,
      c_wr_pntr_width_wrch => 5,
      c_wr_response_latency => 1,
      c_wrch_type => 0
    )
    PORT MAP (
      backup => '0',
      backup_marker => '0',
      clk => '0',
      rst => '0',
      srst => '0',
      wr_clk => '0',
      wr_rst => '0',
      rd_clk => '0',
      rd_rst => '0',
      din => (others => '0'),
      wr_en => '0',
      rd_en => '0',
      prog_empty_thresh => (others => '0'),
      prog_empty_thresh_assert => (others => '0'),
      prog_empty_thresh_negate => (others => '0'),
      prog_full_thresh => (others => '0'),
      prog_full_thresh_assert => (others => '0'),
      prog_full_thresh_negate => (others => '0'),
      int_clk => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      m_aclk_en => '0',
      s_aclk_en => '0',
      s_axi_awid => s_axi_awid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awlen => s_axi_awlen,
      s_axi_awsize => s_axi_awsize,
      s_axi_awburst => s_axi_awburst,
      s_axi_awlock => s_axi_awlock,
      s_axi_awcache => s_axi_awcache,
      s_axi_awprot => s_axi_awprot,
      s_axi_awqos => s_axi_awqos,
      s_axi_awregion => s_axi_awregion,
      s_axi_awuser => (others => '0'),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wid => s_axi_wid,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => s_axi_wlast,
      s_axi_wuser => (others => '0'),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bid => s_axi_bid,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      m_axi_awid => m_axi_awid,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awlock => m_axi_awlock,
      m_axi_awcache => m_axi_awcache,
      m_axi_awprot => m_axi_awprot,
      m_axi_awqos => m_axi_awqos,
      m_axi_awregion => m_axi_awregion,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awready => m_axi_awready,
      m_axi_wid => m_axi_wid,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wready => m_axi_wready,
      m_axi_bid => m_axi_bid,
      m_axi_bresp => m_axi_bresp,
      m_axi_buser => (others => '0'),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bready => m_axi_bready,
      s_axi_arid => s_axi_arid,
      s_axi_araddr => s_axi_araddr,
      s_axi_arlen => s_axi_arlen,
      s_axi_arsize => s_axi_arsize,
      s_axi_arburst => s_axi_arburst,
      s_axi_arlock => s_axi_arlock,
      s_axi_arcache => s_axi_arcache,
      s_axi_arprot => s_axi_arprot,
      s_axi_arqos => s_axi_arqos,
      s_axi_arregion => s_axi_arregion,
      s_axi_aruser => (others => '0'),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rid => s_axi_rid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rlast => s_axi_rlast,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      m_axi_arid => m_axi_arid,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arlock => m_axi_arlock,
      m_axi_arcache => m_axi_arcache,
      m_axi_arprot => m_axi_arprot,
      m_axi_arqos => m_axi_arqos,
      m_axi_arregion => m_axi_arregion,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arready => m_axi_arready,
      m_axi_rid => m_axi_rid,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_ruser => (others => '0'),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rready => m_axi_rready,
      s_axis_tvalid => '0',
      s_axis_tdata => (others => '0'),
      s_axis_tstrb => (others => '0'),
      s_axis_tkeep => (others => '0'),
      s_axis_tlast => '0',
      s_axis_tid => (others => '0'),
      s_axis_tdest => (others => '0'),
      s_axis_tuser => (others => '0'),
      m_axis_tready => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_injectdbiterr => '0',
      axi_aw_prog_full_thresh => (others => '0'),
      axi_aw_prog_empty_thresh => (others => '0'),
      axi_aw_prog_full => axi_aw_prog_full,
      axi_aw_prog_empty => axi_aw_prog_empty,
      axi_w_injectsbiterr => '0',
      axi_w_injectdbiterr => '0',
      axi_w_prog_full_thresh => (others => '0'),
      axi_w_prog_empty_thresh => (others => '0'),
      axi_b_injectsbiterr => '0',
      axi_w_prog_full => axi_w_prog_full,
      axi_w_prog_empty => axi_w_prog_empty,
      axi_b_injectdbiterr => '0',
      axi_b_prog_full_thresh => (others => '0'),
      axi_b_prog_empty_thresh => (others => '0'),
      axi_ar_injectsbiterr => '0',
      axi_b_prog_full => axi_b_prog_full,
      axi_b_prog_empty => axi_b_prog_empty,
      axi_ar_injectdbiterr => '0',
      axi_ar_prog_full_thresh => (others => '0'),
      axi_ar_prog_empty_thresh => (others => '0'),
      axi_ar_prog_full => axi_ar_prog_full,
      axi_ar_prog_empty => axi_ar_prog_empty,
      axi_r_injectsbiterr => '0',
      axi_r_injectdbiterr => '0',
      axi_r_prog_full_thresh => (others => '0'),
      axi_r_prog_empty_thresh => (others => '0'),
      axis_injectsbiterr => '0',
      axi_r_prog_full => axi_r_prog_full,
      axi_r_prog_empty => axi_r_prog_empty,
      axis_injectdbiterr => '0',
      axis_prog_full_thresh => (others => '0'),
      axis_prog_empty_thresh => (others => '0')
    );

END zynq;
