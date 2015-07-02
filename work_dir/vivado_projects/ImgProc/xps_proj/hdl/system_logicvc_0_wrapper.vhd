-------------------------------------------------------------------------------
-- system_logicvc_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library logicvc_v3_00_a;
use logicvc_v3_00_a.all;

entity system_logicvc_0_wrapper is
  port (
    mem_req : out std_logic;
    mem_wr : out std_logic;
    mem_ack : in std_logic;
    mem_addr : out std_logic_vector(31 downto 0);
    mem_data : out std_logic_vector(63 downto 0);
    mem_data_be : out std_logic_vector(7 downto 0);
    mem_wrack : in std_logic;
    mem_burst : out std_logic_vector(3 downto 0);
    mem_data_in : in std_logic_vector(63 downto 0);
    mem_data_valid : in std_logic;
    MPLB_Rst : in std_logic;
    M_Request : out std_logic;
    M_Abort : out std_logic;
    M_Priority : out std_logic_vector(0 to 1);
    M_Buslock : out std_logic;
    M_LockErr : out std_logic;
    M_TAttribute : out std_logic_vector(0 to 15);
    M_Type : out std_logic_vector(0 to 2);
    M_BE : out std_logic_vector(0 to 7);
    M_RNW : out std_logic;
    M_UABus : out std_logic_vector(0 to 31);
    M_ABus : out std_logic_vector(0 to 31);
    M_MSize : out std_logic_vector(0 to 1);
    M_size : out std_logic_vector(0 to 3);
    M_WrBurst : out std_logic;
    M_RdBurst : out std_logic;
    M_WrDBus : out std_logic_vector(0 to 63);
    PLB_MAddrAck : in std_logic;
    PLB_MSSize : in std_logic_vector(0 to 1);
    PLB_MRearbitrate : in std_logic;
    PLB_MTimeout : in std_logic;
    PLB_MWrDAck : in std_logic;
    PLB_MWrBTerm : in std_logic;
    PLB_MRdDBus : in std_logic_vector(0 to 63);
    PLB_MRdWdAddr : in std_logic_vector(0 to 3);
    PLB_MRdDAck : in std_logic;
    PLB_MRdBTerm : in std_logic;
    PLB_MBusy : in std_logic;
    PLB_MRdErr : in std_logic;
    PLB_MWrErr : in std_logic;
    PLB_MIRQ : in std_logic;
    M_AXI_ARESETN : in std_logic;
    M_AXI_AWID : out std_logic_vector(0 downto 0);
    M_AXI_AWADDR : out std_logic_vector(31 downto 0);
    M_AXI_AWLEN : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST : out std_logic_vector(1 downto 0);
    M_AXI_AWLOCK : out std_logic_vector(1 downto 0);
    M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
    M_AXI_AWPROT : out std_logic_vector(2 downto 0);
    M_AXI_AWQOS : out std_logic_vector(3 downto 0);
    M_AXI_AWVALID : out std_logic;
    M_AXI_AWREADY : in std_logic;
    M_AXI_WDATA : out std_logic_vector(127 downto 0);
    M_AXI_WSTRB : out std_logic_vector(15 downto 0);
    M_AXI_WLAST : out std_logic;
    M_AXI_WVALID : out std_logic;
    M_AXI_WREADY : in std_logic;
    M_AXI_BID : in std_logic_vector(0 downto 0);
    M_AXI_BRESP : in std_logic_vector(1 downto 0);
    M_AXI_BVALID : in std_logic;
    M_AXI_BREADY : out std_logic;
    M_AXI_ARID : out std_logic_vector(0 downto 0);
    M_AXI_ARADDR : out std_logic_vector(31 downto 0);
    M_AXI_ARLEN : out std_logic_vector(7 downto 0);
    M_AXI_ARSIZE : out std_logic_vector(2 downto 0);
    M_AXI_ARBURST : out std_logic_vector(1 downto 0);
    M_AXI_ARLOCK : out std_logic_vector(1 downto 0);
    M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
    M_AXI_ARPROT : out std_logic_vector(2 downto 0);
    M_AXI_ARQOS : out std_logic_vector(3 downto 0);
    M_AXI_ARVALID : out std_logic;
    M_AXI_ARREADY : in std_logic;
    M_AXI_RID : in std_logic_vector(0 downto 0);
    M_AXI_RDATA : in std_logic_vector(127 downto 0);
    M_AXI_RRESP : in std_logic_vector(1 downto 0);
    M_AXI_RLAST : in std_logic;
    M_AXI_RVALID : in std_logic;
    M_AXI_RREADY : out std_logic;
    OPB_Clk : in std_logic;
    OPB_Rst : in std_logic;
    OPB_ABus : in std_logic_vector(0 to 31);
    OPB_BE : in std_logic_vector(0 to 3);
    OPB_RNW : in std_logic;
    OPB_select : in std_logic;
    OPB_seqAddr : in std_logic;
    OPB_DBus : in std_logic_vector(0 to 31);
    Sl_DBus : out std_logic_vector(0 to 31);
    Sl_errAck : out std_logic;
    Sl_retry : out std_logic;
    Sl_toutSup : out std_logic;
    Sl_xferAck : out std_logic;
    SPLB_Clk : in std_logic;
    SPLB_Rst : in std_logic;
    PLB_ABus : in std_logic_vector(0 to 31);
    PLB_UABus : in std_logic_vector(0 to 31);
    PLB_PAValid : in std_logic;
    PLB_SAValid : in std_logic;
    PLB_rdPrim : in std_logic;
    PLB_wrPrim : in std_logic;
    PLB_masterID : in std_logic_vector(0 to 0);
    PLB_abort : in std_logic;
    PLB_busLock : in std_logic;
    PLB_RNW : in std_logic;
    PLB_BE : in std_logic_vector(0 to 3);
    PLB_MSize : in std_logic_vector(0 to 1);
    PLB_size : in std_logic_vector(0 to 3);
    PLB_type : in std_logic_vector(0 to 2);
    PLB_lockErr : in std_logic;
    PLB_wrDBus : in std_logic_vector(0 to 31);
    PLB_wrBurst : in std_logic;
    PLB_rdBurst : in std_logic;
    PLB_wrPendReq : in std_logic;
    PLB_rdPendReq : in std_logic;
    PLB_wrPendPri : in std_logic_vector(0 to 1);
    PLB_rdPendPri : in std_logic_vector(0 to 1);
    PLB_reqPri : in std_logic_vector(0 to 1);
    PLB_TAttribute : in std_logic_vector(0 to 15);
    Sl_addrAck : out std_logic;
    Sl_SSize : out std_logic_vector(0 to 1);
    Sl_wait : out std_logic;
    Sl_rearbitrate : out std_logic;
    Sl_wrDAck : out std_logic;
    Sl_wrComp : out std_logic;
    Sl_wrBTerm : out std_logic;
    Sl_rdDBus : out std_logic_vector(0 to 31);
    Sl_rdWdAddr : out std_logic_vector(0 to 3);
    Sl_rdDAck : out std_logic;
    Sl_rdComp : out std_logic;
    Sl_rdBTerm : out std_logic;
    Sl_MBusy : out std_logic_vector(0 to 1);
    Sl_MWrErr : out std_logic_vector(0 to 1);
    Sl_MRdErr : out std_logic_vector(0 to 1);
    Sl_MIRQ : out std_logic_vector(0 to 1);
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_RREADY : in std_logic;
    rst : in std_logic;
    mclk : in std_logic;
    vclk : in std_logic;
    vclk2 : in std_logic;
    itu_clk_in : in std_logic;
    pix_clk_i : in std_logic;
    pix_clk_o : out std_logic;
    pix_clk_t : out std_logic;
    pix_clk_n_i : in std_logic;
    pix_clk_n_o : out std_logic;
    pix_clk_n_t : out std_logic;
    d_pix_i : in std_logic_vector(15 downto 0);
    d_pix_o : out std_logic_vector(15 downto 0);
    d_pix_t : out std_logic;
    hsync_i : in std_logic;
    hsync_o : out std_logic;
    hsync_t : out std_logic;
    vsync_i : in std_logic;
    vsync_o : out std_logic;
    vsync_t : out std_logic;
    blank_i : in std_logic;
    blank_o : out std_logic;
    blank_t : out std_logic;
    itu656_clk_o : out std_logic;
    itu656_data_o : out std_logic_vector(7 downto 0);
    lvds_clk : in std_logic;
    lvds_clkn : in std_logic;
    lvds_data_out_p : out std_logic_vector(3 downto 0);
    lvds_data_out_n : out std_logic_vector(3 downto 0);
    lvds_clk_out_p : out std_logic;
    lvds_clk_out_n : out std_logic;
    pllvclk_locked : in std_logic;
    dvi_clk_p : out std_logic;
    dvi_clk_n : out std_logic;
    dvi_data_p : out std_logic_vector(2 downto 0);
    dvi_data_n : out std_logic_vector(2 downto 0);
    e_vclk : in std_logic;
    e_vsync : in std_logic;
    e_hsync : in std_logic;
    e_blank : in std_logic;
    e_data : in std_logic_vector(23 downto 0);
    e_video_present : in std_logic;
    e_curr_vbuff : in std_logic_vector(5 downto 0);
    e_next_vbuff : out std_logic_vector(5 downto 0);
    e_sw_vbuff : in std_logic_vector(2 downto 0);
    e_sw_grant : out std_logic_vector(2 downto 0);
    vcdivsel : out std_logic_vector(1 downto 0);
    vclksel : out std_logic_vector(2 downto 0);
    en_vdd : out std_logic;
    en_blight : out std_logic;
    v_en : out std_logic;
    en_vee : out std_logic;
    interrupt : out std_logic
  );
end system_logicvc_0_wrapper;

architecture STRUCTURE of system_logicvc_0_wrapper is

  component logicvc is
    generic (
      C_IP_LICENSE_TYPE : INTEGER;
      C_IP_MAJOR_REVISION : INTEGER;
      C_IP_MINOR_REVISION : INTEGER;
      C_IP_PATCH_LEVEL : INTEGER;
      C_IP_LICENSE_CHECK : INTEGER;
      C_IP_TIME_BEFORE_BREAK : INTEGER;
      C_FAMILY : STRING;
      C_VMEM_INTERFACE : INTEGER;
      C_VMEM_BASEADDR : std_logic_vector;
      C_VMEM_HIGHADDR : std_logic_vector;
      C_MEM_BURST : INTEGER;
      C_MEM_BYTE_SWAP : INTEGER;
      C_MEM_LITTLE_ENDIAN : INTEGER;
      C_INCREASE_FIFO : INTEGER;
      C_MPLB_AWIDTH : INTEGER;
      C_MPLB_DWIDTH : INTEGER;
      C_MPLB_NUM_MASTERS : INTEGER;
      C_MPLB_SMALLEST_SLAVE : INTEGER;
      C_MPLB_PRIORITY : INTEGER;
      C_XMB_DATA_BUS_WIDTH : INTEGER;
      C_M_AXI_THREAD_ID_WIDTH : integer;
      C_M_AXI_DATA_WIDTH : integer;
      C_M_AXI_ADDR_WIDTH : integer;
      C_REGS_INTERFACE : integer;
      C_READABLE_REGS : integer;
      C_REG_BYTE_SWAP : INTEGER;
      C_REGS_BASEADDR : std_logic_vector;
      C_REGS_HIGHADDR : std_logic_vector;
      C_OPB_DWIDTH : integer;
      C_OPB_AWIDTH : integer;
      C_SPLB_AWIDTH : INTEGER;
      C_SPLB_DWIDTH : INTEGER;
      C_SPLB_MID_WIDTH : INTEGER;
      C_SPLB_NUM_MASTERS : INTEGER;
      C_SPLB_NATIVE_DWIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_PIXEL_DATA_WIDTH : INTEGER;
      C_USE_VCLK2 : INTEGER;
      C_ROW_STRIDE : INTEGER;
      C_XCOLOR : INTEGER;
      C_USE_SIZE_POSITION : INTEGER;
      C_DISPLAY_INTERFACE : INTEGER;
      C_DISPLAY_COLOR_SPACE : INTEGER;
      C_VCLK_PERIOD : INTEGER;
      C_LVDS_DATA_WIDTH : INTEGER;
      C_NUM_OF_LAYERS : integer;
      C_LAYER_0_TYPE : integer;
      C_LAYER_1_TYPE : integer;
      C_LAYER_2_TYPE : integer;
      C_LAYER_3_TYPE : integer;
      C_LAYER_4_TYPE : integer;
      C_LAYER_0_DATA_WIDTH : integer;
      C_LAYER_1_DATA_WIDTH : integer;
      C_LAYER_2_DATA_WIDTH : integer;
      C_LAYER_3_DATA_WIDTH : integer;
      C_LAYER_4_DATA_WIDTH : integer;
      C_LAYER_0_ALPHA_MODE : integer;
      C_LAYER_1_ALPHA_MODE : integer;
      C_LAYER_2_ALPHA_MODE : integer;
      C_LAYER_3_ALPHA_MODE : integer;
      C_LAYER_4_ALPHA_MODE : integer;
      C_USE_BACKGROUND : integer;
      C_USE_XTREME_DSP : INTEGER;
      C_USE_MULTIPLIER : INTEGER;
      C_LAYER_0_OFFSET : natural;
      C_LAYER_1_OFFSET : natural;
      C_LAYER_2_OFFSET : natural;
      C_LAYER_3_OFFSET : natural;
      C_LAYER_4_OFFSET : natural;
      C_BUFFER_0_OFFSET : natural;
      C_BUFFER_1_OFFSET : natural;
      C_BUFFER_2_OFFSET : natural;
      C_BUFFER_3_OFFSET : natural;
      C_BUFFER_4_OFFSET : natural;
      C_USE_E_PARALLEL_INPUT : integer;
      C_USE_E_VCLK_BUFGMUX : integer;
      C_E_LAYER : integer;
      C_E_DATA_WIDTH : integer
    );
    port (
      mem_req : out std_logic;
      mem_wr : out std_logic;
      mem_ack : in std_logic;
      mem_addr : out std_logic_vector(31 downto 0);
      mem_data : out std_logic_vector(C_XMB_DATA_BUS_WIDTH-1 downto 0);
      mem_data_be : out std_logic_vector(C_XMB_DATA_BUS_WIDTH/8-1 downto 0);
      mem_wrack : in std_logic;
      mem_burst : out std_logic_vector(C_MEM_BURST-1 downto 0);
      mem_data_in : in std_logic_vector(C_XMB_DATA_BUS_WIDTH-1 downto 0);
      mem_data_valid : in std_logic;
      MPLB_Rst : in std_logic;
      M_Request : out std_logic;
      M_Abort : out std_logic;
      M_Priority : out std_logic_vector(0 to 1);
      M_Buslock : out std_logic;
      M_LockErr : out std_logic;
      M_TAttribute : out std_logic_vector(0 to 15);
      M_Type : out std_logic_vector(0 to 2);
      M_BE : out std_logic_vector(0 to ((C_MPLB_DWIDTH/8)-1));
      M_RNW : out std_logic;
      M_UABus : out std_logic_vector(0 to (C_MPLB_AWIDTH-1));
      M_ABus : out std_logic_vector(0 to (C_MPLB_AWIDTH-1));
      M_MSize : out std_logic_vector(0 to 1);
      M_size : out std_logic_vector(0 to 3);
      M_WrBurst : out std_logic;
      M_RdBurst : out std_logic;
      M_WrDBus : out std_logic_vector(0 to (C_MPLB_DWIDTH-1));
      PLB_MAddrAck : in std_logic;
      PLB_MSSize : in std_logic_vector(0 to 1);
      PLB_MRearbitrate : in std_logic;
      PLB_MTimeout : in std_logic;
      PLB_MWrDAck : in std_logic;
      PLB_MWrBTerm : in std_logic;
      PLB_MRdDBus : in std_logic_vector(0 to (C_MPLB_DWIDTH-1));
      PLB_MRdWdAddr : in std_logic_vector(0 to 3);
      PLB_MRdDAck : in std_logic;
      PLB_MRdBTerm : in std_logic;
      PLB_MBusy : in std_logic;
      PLB_MRdErr : in std_logic;
      PLB_MWrErr : in std_logic;
      PLB_MIRQ : in std_logic;
      M_AXI_ARESETN : in std_logic;
      M_AXI_AWID : out std_logic_vector((C_M_AXI_THREAD_ID_WIDTH-1) downto 0);
      M_AXI_AWADDR : out std_logic_vector((C_M_AXI_ADDR_WIDTH-1) downto 0);
      M_AXI_AWLEN : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK : out std_logic_vector(1 downto 0);
      M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT : out std_logic_vector(2 downto 0);
      M_AXI_AWQOS : out std_logic_vector(3 downto 0);
      M_AXI_AWVALID : out std_logic;
      M_AXI_AWREADY : in std_logic;
      M_AXI_WDATA : out std_logic_vector((C_M_AXI_DATA_WIDTH-1) downto 0);
      M_AXI_WSTRB : out std_logic_vector(((C_M_AXI_DATA_WIDTH/8)-1) downto 0);
      M_AXI_WLAST : out std_logic;
      M_AXI_WVALID : out std_logic;
      M_AXI_WREADY : in std_logic;
      M_AXI_BID : in std_logic_vector((C_M_AXI_THREAD_ID_WIDTH-1) downto 0);
      M_AXI_BRESP : in std_logic_vector(1 downto 0);
      M_AXI_BVALID : in std_logic;
      M_AXI_BREADY : out std_logic;
      M_AXI_ARID : out std_logic_vector((C_M_AXI_THREAD_ID_WIDTH-1) downto 0);
      M_AXI_ARADDR : out std_logic_vector((C_M_AXI_ADDR_WIDTH-1) downto 0);
      M_AXI_ARLEN : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK : out std_logic_vector(1 downto 0);
      M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT : out std_logic_vector(2 downto 0);
      M_AXI_ARQOS : out std_logic_vector(3 downto 0);
      M_AXI_ARVALID : out std_logic;
      M_AXI_ARREADY : in std_logic;
      M_AXI_RID : in std_logic_vector((C_M_AXI_THREAD_ID_WIDTH-1) downto 0);
      M_AXI_RDATA : in std_logic_vector((C_M_AXI_DATA_WIDTH-1) downto 0);
      M_AXI_RRESP : in std_logic_vector(1 downto 0);
      M_AXI_RLAST : in std_logic;
      M_AXI_RVALID : in std_logic;
      M_AXI_RREADY : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      OPB_ABus : in std_logic_vector(0 to C_OPB_AWIDTH-1);
      OPB_BE : in std_logic_vector(0 to C_OPB_DWIDTH/8-1);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      OPB_DBus : in std_logic_vector(0 to C_OPB_DWIDTH-1);
      Sl_DBus : out std_logic_vector(0 to C_OPB_DWIDTH-1);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      SPLB_Clk : in std_logic;
      SPLB_Rst : in std_logic;
      PLB_ABus : in std_logic_vector(0 to 31);
      PLB_UABus : in std_logic_vector(0 to 31);
      PLB_PAValid : in std_logic;
      PLB_SAValid : in std_logic;
      PLB_rdPrim : in std_logic;
      PLB_wrPrim : in std_logic;
      PLB_masterID : in std_logic_vector(0 to (C_SPLB_MID_WIDTH-1));
      PLB_abort : in std_logic;
      PLB_busLock : in std_logic;
      PLB_RNW : in std_logic;
      PLB_BE : in std_logic_vector(0 to ((C_SPLB_DWIDTH/8)-1));
      PLB_MSize : in std_logic_vector(0 to 1);
      PLB_size : in std_logic_vector(0 to 3);
      PLB_type : in std_logic_vector(0 to 2);
      PLB_lockErr : in std_logic;
      PLB_wrDBus : in std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      PLB_wrBurst : in std_logic;
      PLB_rdBurst : in std_logic;
      PLB_wrPendReq : in std_logic;
      PLB_rdPendReq : in std_logic;
      PLB_wrPendPri : in std_logic_vector(0 to 1);
      PLB_rdPendPri : in std_logic_vector(0 to 1);
      PLB_reqPri : in std_logic_vector(0 to 1);
      PLB_TAttribute : in std_logic_vector(0 to 15);
      Sl_addrAck : out std_logic;
      Sl_SSize : out std_logic_vector(0 to 1);
      Sl_wait : out std_logic;
      Sl_rearbitrate : out std_logic;
      Sl_wrDAck : out std_logic;
      Sl_wrComp : out std_logic;
      Sl_wrBTerm : out std_logic;
      Sl_rdDBus : out std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      Sl_rdWdAddr : out std_logic_vector(0 to 3);
      Sl_rdDAck : out std_logic;
      Sl_rdComp : out std_logic;
      Sl_rdBTerm : out std_logic;
      Sl_MBusy : out std_logic_vector(0 to (C_SPLB_NUM_MASTERS-1));
      Sl_MWrErr : out std_logic_vector(0 to (C_SPLB_NUM_MASTERS-1));
      Sl_MRdErr : out std_logic_vector(0 to (C_SPLB_NUM_MASTERS-1));
      Sl_MIRQ : out std_logic_vector(0 to (C_SPLB_NUM_MASTERS-1));
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      rst : in std_logic;
      mclk : in std_logic;
      vclk : in std_logic;
      vclk2 : in std_logic;
      itu_clk_in : in std_logic;
      pix_clk_i : in std_logic;
      pix_clk_o : out std_logic;
      pix_clk_t : out std_logic;
      pix_clk_n_i : in std_logic;
      pix_clk_n_o : out std_logic;
      pix_clk_n_t : out std_logic;
      d_pix_i : in std_logic_vector(C_PIXEL_DATA_WIDTH-1 downto 0);
      d_pix_o : out std_logic_vector(C_PIXEL_DATA_WIDTH-1 downto 0);
      d_pix_t : out std_logic;
      hsync_i : in std_logic;
      hsync_o : out std_logic;
      hsync_t : out std_logic;
      vsync_i : in std_logic;
      vsync_o : out std_logic;
      vsync_t : out std_logic;
      blank_i : in std_logic;
      blank_o : out std_logic;
      blank_t : out std_logic;
      itu656_clk_o : out std_logic;
      itu656_data_o : out std_logic_vector(7 downto 0);
      lvds_clk : in std_logic;
      lvds_clkn : in std_logic;
      lvds_data_out_p : out std_logic_vector(C_LVDS_DATA_WIDTH-1 downto 0);
      lvds_data_out_n : out std_logic_vector(C_LVDS_DATA_WIDTH-1 downto 0);
      lvds_clk_out_p : out std_logic;
      lvds_clk_out_n : out std_logic;
      pllvclk_locked : in std_logic;
      dvi_clk_p : out std_logic;
      dvi_clk_n : out std_logic;
      dvi_data_p : out std_logic_vector(2 downto 0);
      dvi_data_n : out std_logic_vector(2 downto 0);
      e_vclk : in std_logic;
      e_vsync : in std_logic;
      e_hsync : in std_logic;
      e_blank : in std_logic;
      e_data : in std_logic_vector(C_E_DATA_WIDTH-1 downto 0);
      e_video_present : in std_logic;
      e_curr_vbuff : in std_logic_vector(C_NUM_OF_LAYERS*2-1 downto 0);
      e_next_vbuff : out std_logic_vector(C_NUM_OF_LAYERS*2-1 downto 0);
      e_sw_vbuff : in std_logic_vector(C_NUM_OF_LAYERS-1 downto 0);
      e_sw_grant : out std_logic_vector(C_NUM_OF_LAYERS-1 downto 0);
      vcdivsel : out std_logic_vector(1 downto 0);
      vclksel : out std_logic_vector(2 downto 0);
      en_vdd : out std_logic;
      en_blight : out std_logic;
      v_en : out std_logic;
      en_vee : out std_logic;
      interrupt : out std_logic
    );
  end component;

begin

  LOGICVC_0 : logicvc
    generic map (
      C_IP_LICENSE_TYPE => 1,
      C_IP_MAJOR_REVISION => 3,
      C_IP_MINOR_REVISION => 00,
      C_IP_PATCH_LEVEL => 0,
      C_IP_LICENSE_CHECK => 0,
      C_IP_TIME_BEFORE_BREAK => 1,
      C_FAMILY => "zynq",
      C_VMEM_INTERFACE => 2,
      C_VMEM_BASEADDR => X"30000000",
      C_VMEM_HIGHADDR => X"37ffffff",
      C_MEM_BURST => 4,
      C_MEM_BYTE_SWAP => 0,
      C_MEM_LITTLE_ENDIAN => 1,
      C_INCREASE_FIFO => 1,
      C_MPLB_AWIDTH => 32,
      C_MPLB_DWIDTH => 64,
      C_MPLB_NUM_MASTERS => 8,
      C_MPLB_SMALLEST_SLAVE => 32,
      C_MPLB_PRIORITY => 3,
      C_XMB_DATA_BUS_WIDTH => 64,
      C_M_AXI_THREAD_ID_WIDTH => 1,
      C_M_AXI_DATA_WIDTH => 128,
      C_M_AXI_ADDR_WIDTH => 32,
      C_REGS_INTERFACE => 2,
      C_READABLE_REGS => 1,
      C_REG_BYTE_SWAP => 0,
      C_REGS_BASEADDR => X"40030000",
      C_REGS_HIGHADDR => X"4003ffff",
      C_OPB_DWIDTH => 32,
      C_OPB_AWIDTH => 32,
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 32,
      C_SPLB_MID_WIDTH => 1,
      C_SPLB_NUM_MASTERS => 2,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_DATA_WIDTH => 32,
      C_PIXEL_DATA_WIDTH => 16,
      C_USE_VCLK2 => 1,
      C_ROW_STRIDE => 2048,
      C_XCOLOR => 0,
      C_USE_SIZE_POSITION => 1,
      C_DISPLAY_INTERFACE => 0,
      C_DISPLAY_COLOR_SPACE => 1,
      C_VCLK_PERIOD => 25000,
      C_LVDS_DATA_WIDTH => 4,
      C_NUM_OF_LAYERS => 3,
      C_LAYER_0_TYPE => 0,
      C_LAYER_1_TYPE => 0,
      C_LAYER_2_TYPE => 0,
      C_LAYER_3_TYPE => 0,
      C_LAYER_4_TYPE => 0,
      C_LAYER_0_DATA_WIDTH => 16,
      C_LAYER_1_DATA_WIDTH => 24,
      C_LAYER_2_DATA_WIDTH => 24,
      C_LAYER_3_DATA_WIDTH => 16,
      C_LAYER_4_DATA_WIDTH => 16,
      C_LAYER_0_ALPHA_MODE => 0,
      C_LAYER_1_ALPHA_MODE => 0,
      C_LAYER_2_ALPHA_MODE => 0,
      C_LAYER_3_ALPHA_MODE => 0,
      C_LAYER_4_ALPHA_MODE => 0,
      C_USE_BACKGROUND => 1,
      C_USE_XTREME_DSP => 2,
      C_USE_MULTIPLIER => 2,
      C_LAYER_0_OFFSET => 0,
      C_LAYER_1_OFFSET => 3240,
      C_LAYER_2_OFFSET => 6480,
      C_LAYER_3_OFFSET => 6144,
      C_LAYER_4_OFFSET => 8192,
      C_BUFFER_0_OFFSET => 1080,
      C_BUFFER_1_OFFSET => 1080,
      C_BUFFER_2_OFFSET => 1080,
      C_BUFFER_3_OFFSET => 1024,
      C_BUFFER_4_OFFSET => 1024,
      C_USE_E_PARALLEL_INPUT => 0,
      C_USE_E_VCLK_BUFGMUX => 1,
      C_E_LAYER => 0,
      C_E_DATA_WIDTH => 24
    )
    port map (
      mem_req => mem_req,
      mem_wr => mem_wr,
      mem_ack => mem_ack,
      mem_addr => mem_addr,
      mem_data => mem_data,
      mem_data_be => mem_data_be,
      mem_wrack => mem_wrack,
      mem_burst => mem_burst,
      mem_data_in => mem_data_in,
      mem_data_valid => mem_data_valid,
      MPLB_Rst => MPLB_Rst,
      M_Request => M_Request,
      M_Abort => M_Abort,
      M_Priority => M_Priority,
      M_Buslock => M_Buslock,
      M_LockErr => M_LockErr,
      M_TAttribute => M_TAttribute,
      M_Type => M_Type,
      M_BE => M_BE,
      M_RNW => M_RNW,
      M_UABus => M_UABus,
      M_ABus => M_ABus,
      M_MSize => M_MSize,
      M_size => M_size,
      M_WrBurst => M_WrBurst,
      M_RdBurst => M_RdBurst,
      M_WrDBus => M_WrDBus,
      PLB_MAddrAck => PLB_MAddrAck,
      PLB_MSSize => PLB_MSSize,
      PLB_MRearbitrate => PLB_MRearbitrate,
      PLB_MTimeout => PLB_MTimeout,
      PLB_MWrDAck => PLB_MWrDAck,
      PLB_MWrBTerm => PLB_MWrBTerm,
      PLB_MRdDBus => PLB_MRdDBus,
      PLB_MRdWdAddr => PLB_MRdWdAddr,
      PLB_MRdDAck => PLB_MRdDAck,
      PLB_MRdBTerm => PLB_MRdBTerm,
      PLB_MBusy => PLB_MBusy,
      PLB_MRdErr => PLB_MRdErr,
      PLB_MWrErr => PLB_MWrErr,
      PLB_MIRQ => PLB_MIRQ,
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_AWID => M_AXI_AWID,
      M_AXI_AWADDR => M_AXI_AWADDR,
      M_AXI_AWLEN => M_AXI_AWLEN,
      M_AXI_AWSIZE => M_AXI_AWSIZE,
      M_AXI_AWBURST => M_AXI_AWBURST,
      M_AXI_AWLOCK => M_AXI_AWLOCK,
      M_AXI_AWCACHE => M_AXI_AWCACHE,
      M_AXI_AWPROT => M_AXI_AWPROT,
      M_AXI_AWQOS => M_AXI_AWQOS,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_WDATA => M_AXI_WDATA,
      M_AXI_WSTRB => M_AXI_WSTRB,
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WVALID => M_AXI_WVALID,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_BID => M_AXI_BID,
      M_AXI_BRESP => M_AXI_BRESP,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_ARID => M_AXI_ARID,
      M_AXI_ARADDR => M_AXI_ARADDR,
      M_AXI_ARLEN => M_AXI_ARLEN,
      M_AXI_ARSIZE => M_AXI_ARSIZE,
      M_AXI_ARBURST => M_AXI_ARBURST,
      M_AXI_ARLOCK => M_AXI_ARLOCK,
      M_AXI_ARCACHE => M_AXI_ARCACHE,
      M_AXI_ARPROT => M_AXI_ARPROT,
      M_AXI_ARQOS => M_AXI_ARQOS,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_RID => M_AXI_RID,
      M_AXI_RDATA => M_AXI_RDATA,
      M_AXI_RRESP => M_AXI_RRESP,
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_RREADY => M_AXI_RREADY,
      OPB_Clk => OPB_Clk,
      OPB_Rst => OPB_Rst,
      OPB_ABus => OPB_ABus,
      OPB_BE => OPB_BE,
      OPB_RNW => OPB_RNW,
      OPB_select => OPB_select,
      OPB_seqAddr => OPB_seqAddr,
      OPB_DBus => OPB_DBus,
      Sl_DBus => Sl_DBus,
      Sl_errAck => Sl_errAck,
      Sl_retry => Sl_retry,
      Sl_toutSup => Sl_toutSup,
      Sl_xferAck => Sl_xferAck,
      SPLB_Clk => SPLB_Clk,
      SPLB_Rst => SPLB_Rst,
      PLB_ABus => PLB_ABus,
      PLB_UABus => PLB_UABus,
      PLB_PAValid => PLB_PAValid,
      PLB_SAValid => PLB_SAValid,
      PLB_rdPrim => PLB_rdPrim,
      PLB_wrPrim => PLB_wrPrim,
      PLB_masterID => PLB_masterID,
      PLB_abort => PLB_abort,
      PLB_busLock => PLB_busLock,
      PLB_RNW => PLB_RNW,
      PLB_BE => PLB_BE,
      PLB_MSize => PLB_MSize,
      PLB_size => PLB_size,
      PLB_type => PLB_type,
      PLB_lockErr => PLB_lockErr,
      PLB_wrDBus => PLB_wrDBus,
      PLB_wrBurst => PLB_wrBurst,
      PLB_rdBurst => PLB_rdBurst,
      PLB_wrPendReq => PLB_wrPendReq,
      PLB_rdPendReq => PLB_rdPendReq,
      PLB_wrPendPri => PLB_wrPendPri,
      PLB_rdPendPri => PLB_rdPendPri,
      PLB_reqPri => PLB_reqPri,
      PLB_TAttribute => PLB_TAttribute,
      Sl_addrAck => Sl_addrAck,
      Sl_SSize => Sl_SSize,
      Sl_wait => Sl_wait,
      Sl_rearbitrate => Sl_rearbitrate,
      Sl_wrDAck => Sl_wrDAck,
      Sl_wrComp => Sl_wrComp,
      Sl_wrBTerm => Sl_wrBTerm,
      Sl_rdDBus => Sl_rdDBus,
      Sl_rdWdAddr => Sl_rdWdAddr,
      Sl_rdDAck => Sl_rdDAck,
      Sl_rdComp => Sl_rdComp,
      Sl_rdBTerm => Sl_rdBTerm,
      Sl_MBusy => Sl_MBusy,
      Sl_MWrErr => Sl_MWrErr,
      Sl_MRdErr => Sl_MRdErr,
      Sl_MIRQ => Sl_MIRQ,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      rst => rst,
      mclk => mclk,
      vclk => vclk,
      vclk2 => vclk2,
      itu_clk_in => itu_clk_in,
      pix_clk_i => pix_clk_i,
      pix_clk_o => pix_clk_o,
      pix_clk_t => pix_clk_t,
      pix_clk_n_i => pix_clk_n_i,
      pix_clk_n_o => pix_clk_n_o,
      pix_clk_n_t => pix_clk_n_t,
      d_pix_i => d_pix_i,
      d_pix_o => d_pix_o,
      d_pix_t => d_pix_t,
      hsync_i => hsync_i,
      hsync_o => hsync_o,
      hsync_t => hsync_t,
      vsync_i => vsync_i,
      vsync_o => vsync_o,
      vsync_t => vsync_t,
      blank_i => blank_i,
      blank_o => blank_o,
      blank_t => blank_t,
      itu656_clk_o => itu656_clk_o,
      itu656_data_o => itu656_data_o,
      lvds_clk => lvds_clk,
      lvds_clkn => lvds_clkn,
      lvds_data_out_p => lvds_data_out_p,
      lvds_data_out_n => lvds_data_out_n,
      lvds_clk_out_p => lvds_clk_out_p,
      lvds_clk_out_n => lvds_clk_out_n,
      pllvclk_locked => pllvclk_locked,
      dvi_clk_p => dvi_clk_p,
      dvi_clk_n => dvi_clk_n,
      dvi_data_p => dvi_data_p,
      dvi_data_n => dvi_data_n,
      e_vclk => e_vclk,
      e_vsync => e_vsync,
      e_hsync => e_hsync,
      e_blank => e_blank,
      e_data => e_data,
      e_video_present => e_video_present,
      e_curr_vbuff => e_curr_vbuff,
      e_next_vbuff => e_next_vbuff,
      e_sw_vbuff => e_sw_vbuff,
      e_sw_grant => e_sw_grant,
      vcdivsel => vcdivsel,
      vclksel => vclksel,
      en_vdd => en_vdd,
      en_blight => en_blight,
      v_en => v_en,
      en_vee => en_vee,
      interrupt => interrupt
    );

end architecture STRUCTURE;

