-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    fmc_imageon_hdmi_in_0_clk_pin : in std_logic;
    fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin : in std_logic;
    fmc_imageon_hdmi_in_0_io_hdmii_video_pin : in std_logic_vector(15 downto 0);
    HDMI_O_data_pin : out std_logic_vector(15 downto 0);
    HDMI_O_de_pin : out std_logic;
    HDMI_O_hsync_pin : out std_logic;
    HDMI_O_vsync_pin : out std_logic;
    HDMI_O_clk_pin : out std_logic;
    VIDEO_CLK_P : in std_logic;
    VIDEO_CLK_N : in std_logic;
    ps7_0_PS_SRSTB_pin : in std_logic;
    ps7_0_PS_CLK_pin : in std_logic;
    ps7_0_PS_PORB_pin : in std_logic;
    fmc_imageon_iic_Rst_b_pin : out std_logic;
    fmc_imageon_iic_Sda_pin : inout std_logic;
    fmc_imageon_iic_Scl_pin : inout std_logic;
    ps7_0_MIO_pin : inout std_logic_vector(53 downto 0);
    DDR_Clk : inout std_logic;
    DDR_Clk_n : inout std_logic;
    DDR_CKE : inout std_logic;
    DDR_CS_n : inout std_logic;
    DDR_RAS_n : inout std_logic;
    DDR_CAS_n : inout std_logic;
    DDR_WEB : out std_logic;
    DDR_BankAddr : inout std_logic_vector(2 downto 0);
    DDR_Addr : inout std_logic_vector(14 downto 0);
    DDR_ODT : inout std_logic;
    DDR_DRSTB : inout std_logic;
    DDR_DQ : inout std_logic_vector(31 downto 0);
    DDR_DM : inout std_logic_vector(3 downto 0);
    DDR_DQS : inout std_logic_vector(3 downto 0);
    DDR_DQS_n : inout std_logic_vector(3 downto 0);
    DDR_VRN : inout std_logic;
    DDR_VRP : inout std_logic
  );
end system;

architecture STRUCTURE of system is

  component system_ps7_0_wrapper is
    port (
      CAN0_PHY_TX : out std_logic;
      CAN0_PHY_RX : in std_logic;
      CAN1_PHY_TX : out std_logic;
      CAN1_PHY_RX : in std_logic;
      ENET0_GMII_TX_EN : out std_logic;
      ENET0_GMII_TX_ER : out std_logic;
      ENET0_MDIO_MDC : out std_logic;
      ENET0_MDIO_O : out std_logic;
      ENET0_MDIO_T : out std_logic;
      ENET0_PTP_DELAY_REQ_RX : out std_logic;
      ENET0_PTP_DELAY_REQ_TX : out std_logic;
      ENET0_PTP_PDELAY_REQ_RX : out std_logic;
      ENET0_PTP_PDELAY_REQ_TX : out std_logic;
      ENET0_PTP_PDELAY_RESP_RX : out std_logic;
      ENET0_PTP_PDELAY_RESP_TX : out std_logic;
      ENET0_PTP_SYNC_FRAME_RX : out std_logic;
      ENET0_PTP_SYNC_FRAME_TX : out std_logic;
      ENET0_SOF_RX : out std_logic;
      ENET0_SOF_TX : out std_logic;
      ENET0_GMII_TXD : out std_logic_vector(7 downto 0);
      ENET0_GMII_COL : in std_logic;
      ENET0_GMII_CRS : in std_logic;
      ENET0_EXT_INTIN : in std_logic;
      ENET0_GMII_RX_CLK : in std_logic;
      ENET0_GMII_RX_DV : in std_logic;
      ENET0_GMII_RX_ER : in std_logic;
      ENET0_GMII_TX_CLK : in std_logic;
      ENET0_MDIO_I : in std_logic;
      ENET0_GMII_RXD : in std_logic_vector(7 downto 0);
      ENET1_GMII_TX_EN : out std_logic;
      ENET1_GMII_TX_ER : out std_logic;
      ENET1_MDIO_MDC : out std_logic;
      ENET1_MDIO_O : out std_logic;
      ENET1_MDIO_T : out std_logic;
      ENET1_PTP_DELAY_REQ_RX : out std_logic;
      ENET1_PTP_DELAY_REQ_TX : out std_logic;
      ENET1_PTP_PDELAY_REQ_RX : out std_logic;
      ENET1_PTP_PDELAY_REQ_TX : out std_logic;
      ENET1_PTP_PDELAY_RESP_RX : out std_logic;
      ENET1_PTP_PDELAY_RESP_TX : out std_logic;
      ENET1_PTP_SYNC_FRAME_RX : out std_logic;
      ENET1_PTP_SYNC_FRAME_TX : out std_logic;
      ENET1_SOF_RX : out std_logic;
      ENET1_SOF_TX : out std_logic;
      ENET1_GMII_TXD : out std_logic_vector(7 downto 0);
      ENET1_GMII_COL : in std_logic;
      ENET1_GMII_CRS : in std_logic;
      ENET1_EXT_INTIN : in std_logic;
      ENET1_GMII_RX_CLK : in std_logic;
      ENET1_GMII_RX_DV : in std_logic;
      ENET1_GMII_RX_ER : in std_logic;
      ENET1_GMII_TX_CLK : in std_logic;
      ENET1_MDIO_I : in std_logic;
      ENET1_GMII_RXD : in std_logic_vector(7 downto 0);
      GPIO_I : in std_logic_vector(7 downto 0);
      GPIO_O : out std_logic_vector(7 downto 0);
      GPIO_T : out std_logic_vector(7 downto 0);
      I2C0_SDA_I : in std_logic;
      I2C0_SDA_O : out std_logic;
      I2C0_SDA_T : out std_logic;
      I2C0_SCL_I : in std_logic;
      I2C0_SCL_O : out std_logic;
      I2C0_SCL_T : out std_logic;
      I2C1_SDA_I : in std_logic;
      I2C1_SDA_O : out std_logic;
      I2C1_SDA_T : out std_logic;
      I2C1_SCL_I : in std_logic;
      I2C1_SCL_O : out std_logic;
      I2C1_SCL_T : out std_logic;
      PJTAG_TCK : in std_logic;
      PJTAG_TMS : in std_logic;
      PJTAG_TD_I : in std_logic;
      PJTAG_TD_T : out std_logic;
      PJTAG_TD_O : out std_logic;
      SDIO0_CLK : out std_logic;
      SDIO0_CLK_FB : in std_logic;
      SDIO0_CMD_O : out std_logic;
      SDIO0_CMD_I : in std_logic;
      SDIO0_CMD_T : out std_logic;
      SDIO0_DATA_I : in std_logic_vector(3 downto 0);
      SDIO0_DATA_O : out std_logic_vector(3 downto 0);
      SDIO0_DATA_T : out std_logic_vector(3 downto 0);
      SDIO0_LED : out std_logic;
      SDIO0_CDN : in std_logic;
      SDIO0_WP : in std_logic;
      SDIO0_BUSPOW : out std_logic;
      SDIO0_BUSVOLT : out std_logic_vector(2 downto 0);
      SDIO1_CLK : out std_logic;
      SDIO1_CLK_FB : in std_logic;
      SDIO1_CMD_O : out std_logic;
      SDIO1_CMD_I : in std_logic;
      SDIO1_CMD_T : out std_logic;
      SDIO1_DATA_I : in std_logic_vector(3 downto 0);
      SDIO1_DATA_O : out std_logic_vector(3 downto 0);
      SDIO1_DATA_T : out std_logic_vector(3 downto 0);
      SDIO1_LED : out std_logic;
      SDIO1_CDN : in std_logic;
      SDIO1_WP : in std_logic;
      SDIO1_BUSPOW : out std_logic;
      SDIO1_BUSVOLT : out std_logic_vector(2 downto 0);
      SPI0_SCLK_I : in std_logic;
      SPI0_SCLK_O : out std_logic;
      SPI0_SCLK_T : out std_logic;
      SPI0_MOSI_I : in std_logic;
      SPI0_MOSI_O : out std_logic;
      SPI0_MOSI_T : out std_logic;
      SPI0_MISO_I : in std_logic;
      SPI0_MISO_O : out std_logic;
      SPI0_MISO_T : out std_logic;
      SPI0_SS_I : in std_logic;
      SPI0_SS_O : out std_logic;
      SPI0_SS1_O : out std_logic;
      SPI0_SS2_O : out std_logic;
      SPI0_SS_T : out std_logic;
      SPI1_SCLK_I : in std_logic;
      SPI1_SCLK_O : out std_logic;
      SPI1_SCLK_T : out std_logic;
      SPI1_MOSI_I : in std_logic;
      SPI1_MOSI_O : out std_logic;
      SPI1_MOSI_T : out std_logic;
      SPI1_MISO_I : in std_logic;
      SPI1_MISO_O : out std_logic;
      SPI1_MISO_T : out std_logic;
      SPI1_SS_I : in std_logic;
      SPI1_SS_O : out std_logic;
      SPI1_SS1_O : out std_logic;
      SPI1_SS2_O : out std_logic;
      SPI1_SS_T : out std_logic;
      UART0_DTRN : out std_logic;
      UART0_RTSN : out std_logic;
      UART0_TX : out std_logic;
      UART0_CTSN : in std_logic;
      UART0_DCDN : in std_logic;
      UART0_DSRN : in std_logic;
      UART0_RIN : in std_logic;
      UART0_RX : in std_logic;
      UART1_DTRN : out std_logic;
      UART1_RTSN : out std_logic;
      UART1_TX : out std_logic;
      UART1_CTSN : in std_logic;
      UART1_DCDN : in std_logic;
      UART1_DSRN : in std_logic;
      UART1_RIN : in std_logic;
      UART1_RX : in std_logic;
      TTC0_WAVE0_OUT : out std_logic;
      TTC0_WAVE1_OUT : out std_logic;
      TTC0_WAVE2_OUT : out std_logic;
      TTC0_CLK0_IN : in std_logic;
      TTC0_CLK1_IN : in std_logic;
      TTC0_CLK2_IN : in std_logic;
      TTC1_WAVE0_OUT : out std_logic;
      TTC1_WAVE1_OUT : out std_logic;
      TTC1_WAVE2_OUT : out std_logic;
      TTC1_CLK0_IN : in std_logic;
      TTC1_CLK1_IN : in std_logic;
      TTC1_CLK2_IN : in std_logic;
      WDT_CLK_IN : in std_logic;
      WDT_RST_OUT : out std_logic;
      TRACE_CLK : in std_logic;
      TRACE_CTL : out std_logic;
      TRACE_DATA : out std_logic_vector(31 downto 0);
      USB0_PORT_INDCTL : out std_logic_vector(1 downto 0);
      USB1_PORT_INDCTL : out std_logic_vector(1 downto 0);
      USB0_VBUS_PWRSELECT : out std_logic;
      USB1_VBUS_PWRSELECT : out std_logic;
      USB0_VBUS_PWRFAULT : in std_logic;
      USB1_VBUS_PWRFAULT : in std_logic;
      SRAM_INTIN : in std_logic;
      M_AXI_GP0_ARESETN : out std_logic;
      M_AXI_GP0_ARVALID : out std_logic;
      M_AXI_GP0_AWVALID : out std_logic;
      M_AXI_GP0_BREADY : out std_logic;
      M_AXI_GP0_RREADY : out std_logic;
      M_AXI_GP0_WLAST : out std_logic;
      M_AXI_GP0_WVALID : out std_logic;
      M_AXI_GP0_ARID : out std_logic_vector(11 downto 0);
      M_AXI_GP0_AWID : out std_logic_vector(11 downto 0);
      M_AXI_GP0_WID : out std_logic_vector(11 downto 0);
      M_AXI_GP0_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_GP0_ARLOCK : out std_logic_vector(1 downto 0);
      M_AXI_GP0_ARSIZE : out std_logic_vector(2 downto 0);
      M_AXI_GP0_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_GP0_AWLOCK : out std_logic_vector(1 downto 0);
      M_AXI_GP0_AWSIZE : out std_logic_vector(2 downto 0);
      M_AXI_GP0_ARPROT : out std_logic_vector(2 downto 0);
      M_AXI_GP0_AWPROT : out std_logic_vector(2 downto 0);
      M_AXI_GP0_ARADDR : out std_logic_vector(31 downto 0);
      M_AXI_GP0_AWADDR : out std_logic_vector(31 downto 0);
      M_AXI_GP0_WDATA : out std_logic_vector(31 downto 0);
      M_AXI_GP0_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_GP0_ARLEN : out std_logic_vector(3 downto 0);
      M_AXI_GP0_ARQOS : out std_logic_vector(3 downto 0);
      M_AXI_GP0_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_GP0_AWLEN : out std_logic_vector(3 downto 0);
      M_AXI_GP0_AWQOS : out std_logic_vector(3 downto 0);
      M_AXI_GP0_WSTRB : out std_logic_vector(3 downto 0);
      M_AXI_GP0_ACLK : in std_logic;
      M_AXI_GP0_ARREADY : in std_logic;
      M_AXI_GP0_AWREADY : in std_logic;
      M_AXI_GP0_BVALID : in std_logic;
      M_AXI_GP0_RLAST : in std_logic;
      M_AXI_GP0_RVALID : in std_logic;
      M_AXI_GP0_WREADY : in std_logic;
      M_AXI_GP0_BID : in std_logic_vector(11 downto 0);
      M_AXI_GP0_RID : in std_logic_vector(11 downto 0);
      M_AXI_GP0_BRESP : in std_logic_vector(1 downto 0);
      M_AXI_GP0_RRESP : in std_logic_vector(1 downto 0);
      M_AXI_GP0_RDATA : in std_logic_vector(31 downto 0);
      M_AXI_GP1_ARESETN : out std_logic;
      M_AXI_GP1_ARVALID : out std_logic;
      M_AXI_GP1_AWVALID : out std_logic;
      M_AXI_GP1_BREADY : out std_logic;
      M_AXI_GP1_RREADY : out std_logic;
      M_AXI_GP1_WLAST : out std_logic;
      M_AXI_GP1_WVALID : out std_logic;
      M_AXI_GP1_ARID : out std_logic_vector(11 downto 0);
      M_AXI_GP1_AWID : out std_logic_vector(11 downto 0);
      M_AXI_GP1_WID : out std_logic_vector(11 downto 0);
      M_AXI_GP1_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_GP1_ARLOCK : out std_logic_vector(1 downto 0);
      M_AXI_GP1_ARSIZE : out std_logic_vector(2 downto 0);
      M_AXI_GP1_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_GP1_AWLOCK : out std_logic_vector(1 downto 0);
      M_AXI_GP1_AWSIZE : out std_logic_vector(2 downto 0);
      M_AXI_GP1_ARPROT : out std_logic_vector(2 downto 0);
      M_AXI_GP1_AWPROT : out std_logic_vector(2 downto 0);
      M_AXI_GP1_ARADDR : out std_logic_vector(31 downto 0);
      M_AXI_GP1_AWADDR : out std_logic_vector(31 downto 0);
      M_AXI_GP1_WDATA : out std_logic_vector(31 downto 0);
      M_AXI_GP1_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_GP1_ARLEN : out std_logic_vector(3 downto 0);
      M_AXI_GP1_ARQOS : out std_logic_vector(3 downto 0);
      M_AXI_GP1_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_GP1_AWLEN : out std_logic_vector(3 downto 0);
      M_AXI_GP1_AWQOS : out std_logic_vector(3 downto 0);
      M_AXI_GP1_WSTRB : out std_logic_vector(3 downto 0);
      M_AXI_GP1_ACLK : in std_logic;
      M_AXI_GP1_ARREADY : in std_logic;
      M_AXI_GP1_AWREADY : in std_logic;
      M_AXI_GP1_BVALID : in std_logic;
      M_AXI_GP1_RLAST : in std_logic;
      M_AXI_GP1_RVALID : in std_logic;
      M_AXI_GP1_WREADY : in std_logic;
      M_AXI_GP1_BID : in std_logic_vector(11 downto 0);
      M_AXI_GP1_RID : in std_logic_vector(11 downto 0);
      M_AXI_GP1_BRESP : in std_logic_vector(1 downto 0);
      M_AXI_GP1_RRESP : in std_logic_vector(1 downto 0);
      M_AXI_GP1_RDATA : in std_logic_vector(31 downto 0);
      S_AXI_GP0_ARESETN : out std_logic;
      S_AXI_GP0_ARREADY : out std_logic;
      S_AXI_GP0_AWREADY : out std_logic;
      S_AXI_GP0_BVALID : out std_logic;
      S_AXI_GP0_RLAST : out std_logic;
      S_AXI_GP0_RVALID : out std_logic;
      S_AXI_GP0_WREADY : out std_logic;
      S_AXI_GP0_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_GP0_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_GP0_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_GP0_BID : out std_logic_vector(5 downto 0);
      S_AXI_GP0_RID : out std_logic_vector(5 downto 0);
      S_AXI_GP0_ACLK : in std_logic;
      S_AXI_GP0_ARVALID : in std_logic;
      S_AXI_GP0_AWVALID : in std_logic;
      S_AXI_GP0_BREADY : in std_logic;
      S_AXI_GP0_RREADY : in std_logic;
      S_AXI_GP0_WLAST : in std_logic;
      S_AXI_GP0_WVALID : in std_logic;
      S_AXI_GP0_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_GP0_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_GP0_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_GP0_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_GP0_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_GP0_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_GP0_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_GP0_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_GP0_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_GP0_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_GP0_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_GP0_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_GP0_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_GP0_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_GP0_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_GP0_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_GP0_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_GP0_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_GP0_ARID : in std_logic_vector(5 downto 0);
      S_AXI_GP0_AWID : in std_logic_vector(5 downto 0);
      S_AXI_GP0_WID : in std_logic_vector(5 downto 0);
      S_AXI_GP1_ARESETN : out std_logic;
      S_AXI_GP1_ARREADY : out std_logic;
      S_AXI_GP1_AWREADY : out std_logic;
      S_AXI_GP1_BVALID : out std_logic;
      S_AXI_GP1_RLAST : out std_logic;
      S_AXI_GP1_RVALID : out std_logic;
      S_AXI_GP1_WREADY : out std_logic;
      S_AXI_GP1_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_GP1_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_GP1_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_GP1_BID : out std_logic_vector(5 downto 0);
      S_AXI_GP1_RID : out std_logic_vector(5 downto 0);
      S_AXI_GP1_ACLK : in std_logic;
      S_AXI_GP1_ARVALID : in std_logic;
      S_AXI_GP1_AWVALID : in std_logic;
      S_AXI_GP1_BREADY : in std_logic;
      S_AXI_GP1_RREADY : in std_logic;
      S_AXI_GP1_WLAST : in std_logic;
      S_AXI_GP1_WVALID : in std_logic;
      S_AXI_GP1_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_GP1_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_GP1_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_GP1_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_GP1_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_GP1_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_GP1_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_GP1_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_GP1_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_GP1_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_GP1_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_GP1_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_GP1_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_GP1_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_GP1_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_GP1_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_GP1_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_GP1_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_GP1_ARID : in std_logic_vector(5 downto 0);
      S_AXI_GP1_AWID : in std_logic_vector(5 downto 0);
      S_AXI_GP1_WID : in std_logic_vector(5 downto 0);
      S_AXI_ACP_ARESETN : out std_logic;
      S_AXI_ACP_AWREADY : out std_logic;
      S_AXI_ACP_ARREADY : out std_logic;
      S_AXI_ACP_BVALID : out std_logic;
      S_AXI_ACP_RLAST : out std_logic;
      S_AXI_ACP_RVALID : out std_logic;
      S_AXI_ACP_WREADY : out std_logic;
      S_AXI_ACP_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_ACP_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_ACP_BID : out std_logic_vector(2 downto 0);
      S_AXI_ACP_RID : out std_logic_vector(2 downto 0);
      S_AXI_ACP_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_ACP_ACLK : in std_logic;
      S_AXI_ACP_ARVALID : in std_logic;
      S_AXI_ACP_AWVALID : in std_logic;
      S_AXI_ACP_BREADY : in std_logic;
      S_AXI_ACP_RREADY : in std_logic;
      S_AXI_ACP_WLAST : in std_logic;
      S_AXI_ACP_WVALID : in std_logic;
      S_AXI_ACP_ARID : in std_logic_vector(2 downto 0);
      S_AXI_ACP_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_ACP_AWID : in std_logic_vector(2 downto 0);
      S_AXI_ACP_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_ACP_WID : in std_logic_vector(2 downto 0);
      S_AXI_ACP_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ACP_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_ACP_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ACP_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_ACP_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_ACP_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ACP_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_ACP_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_ACP_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ACP_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_ACP_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ACP_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_ACP_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_ACP_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ACP_ARUSER : in std_logic_vector(4 downto 0);
      S_AXI_ACP_AWUSER : in std_logic_vector(4 downto 0);
      S_AXI_ACP_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_ACP_WSTRB : in std_logic_vector(7 downto 0);
      S_AXI_HP0_ARESETN : out std_logic;
      S_AXI_HP0_ARREADY : out std_logic;
      S_AXI_HP0_AWREADY : out std_logic;
      S_AXI_HP0_BVALID : out std_logic;
      S_AXI_HP0_RLAST : out std_logic;
      S_AXI_HP0_RVALID : out std_logic;
      S_AXI_HP0_WREADY : out std_logic;
      S_AXI_HP0_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP0_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP0_BID : out std_logic_vector(0 to 0);
      S_AXI_HP0_RID : out std_logic_vector(0 to 0);
      S_AXI_HP0_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_HP0_RCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP0_WCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP0_RACOUNT : out std_logic_vector(2 downto 0);
      S_AXI_HP0_WACOUNT : out std_logic_vector(5 downto 0);
      S_AXI_HP0_ACLK : in std_logic;
      S_AXI_HP0_ARVALID : in std_logic;
      S_AXI_HP0_AWVALID : in std_logic;
      S_AXI_HP0_BREADY : in std_logic;
      S_AXI_HP0_RDISSUECAP1_EN : in std_logic;
      S_AXI_HP0_RREADY : in std_logic;
      S_AXI_HP0_WLAST : in std_logic;
      S_AXI_HP0_WRISSUECAP1_EN : in std_logic;
      S_AXI_HP0_WVALID : in std_logic;
      S_AXI_HP0_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP0_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP0_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP0_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP0_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP0_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP0_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP0_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP0_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP0_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP0_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP0_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP0_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP0_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP0_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP0_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP0_ARID : in std_logic_vector(0 to 0);
      S_AXI_HP0_AWID : in std_logic_vector(0 to 0);
      S_AXI_HP0_WID : in std_logic_vector(0 to 0);
      S_AXI_HP0_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_HP0_WSTRB : in std_logic_vector(7 downto 0);
      S_AXI_HP1_ARESETN : out std_logic;
      S_AXI_HP1_ARREADY : out std_logic;
      S_AXI_HP1_AWREADY : out std_logic;
      S_AXI_HP1_BVALID : out std_logic;
      S_AXI_HP1_RLAST : out std_logic;
      S_AXI_HP1_RVALID : out std_logic;
      S_AXI_HP1_WREADY : out std_logic;
      S_AXI_HP1_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP1_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP1_BID : out std_logic_vector(5 downto 0);
      S_AXI_HP1_RID : out std_logic_vector(5 downto 0);
      S_AXI_HP1_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_HP1_RCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP1_WCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP1_RACOUNT : out std_logic_vector(2 downto 0);
      S_AXI_HP1_WACOUNT : out std_logic_vector(5 downto 0);
      S_AXI_HP1_ACLK : in std_logic;
      S_AXI_HP1_ARVALID : in std_logic;
      S_AXI_HP1_AWVALID : in std_logic;
      S_AXI_HP1_BREADY : in std_logic;
      S_AXI_HP1_RDISSUECAP1_EN : in std_logic;
      S_AXI_HP1_RREADY : in std_logic;
      S_AXI_HP1_WLAST : in std_logic;
      S_AXI_HP1_WRISSUECAP1_EN : in std_logic;
      S_AXI_HP1_WVALID : in std_logic;
      S_AXI_HP1_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP1_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP1_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP1_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP1_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP1_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP1_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP1_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP1_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP1_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP1_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP1_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP1_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP1_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP1_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP1_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP1_ARID : in std_logic_vector(5 downto 0);
      S_AXI_HP1_AWID : in std_logic_vector(5 downto 0);
      S_AXI_HP1_WID : in std_logic_vector(5 downto 0);
      S_AXI_HP1_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_HP1_WSTRB : in std_logic_vector(7 downto 0);
      S_AXI_HP2_ARESETN : out std_logic;
      S_AXI_HP2_ARREADY : out std_logic;
      S_AXI_HP2_AWREADY : out std_logic;
      S_AXI_HP2_BVALID : out std_logic;
      S_AXI_HP2_RLAST : out std_logic;
      S_AXI_HP2_RVALID : out std_logic;
      S_AXI_HP2_WREADY : out std_logic;
      S_AXI_HP2_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP2_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP2_BID : out std_logic_vector(0 to 0);
      S_AXI_HP2_RID : out std_logic_vector(0 to 0);
      S_AXI_HP2_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_HP2_RCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP2_WCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP2_RACOUNT : out std_logic_vector(2 downto 0);
      S_AXI_HP2_WACOUNT : out std_logic_vector(5 downto 0);
      S_AXI_HP2_ACLK : in std_logic;
      S_AXI_HP2_ARVALID : in std_logic;
      S_AXI_HP2_AWVALID : in std_logic;
      S_AXI_HP2_BREADY : in std_logic;
      S_AXI_HP2_RDISSUECAP1_EN : in std_logic;
      S_AXI_HP2_RREADY : in std_logic;
      S_AXI_HP2_WLAST : in std_logic;
      S_AXI_HP2_WRISSUECAP1_EN : in std_logic;
      S_AXI_HP2_WVALID : in std_logic;
      S_AXI_HP2_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP2_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP2_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP2_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP2_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP2_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP2_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP2_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP2_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP2_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP2_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP2_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP2_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP2_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP2_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP2_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP2_ARID : in std_logic_vector(0 to 0);
      S_AXI_HP2_AWID : in std_logic_vector(0 to 0);
      S_AXI_HP2_WID : in std_logic_vector(0 to 0);
      S_AXI_HP2_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_HP2_WSTRB : in std_logic_vector(7 downto 0);
      S_AXI_HP3_ARESETN : out std_logic;
      S_AXI_HP3_ARREADY : out std_logic;
      S_AXI_HP3_AWREADY : out std_logic;
      S_AXI_HP3_BVALID : out std_logic;
      S_AXI_HP3_RLAST : out std_logic;
      S_AXI_HP3_RVALID : out std_logic;
      S_AXI_HP3_WREADY : out std_logic;
      S_AXI_HP3_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP3_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_HP3_BID : out std_logic_vector(5 downto 0);
      S_AXI_HP3_RID : out std_logic_vector(5 downto 0);
      S_AXI_HP3_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_HP3_RCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP3_WCOUNT : out std_logic_vector(7 downto 0);
      S_AXI_HP3_RACOUNT : out std_logic_vector(2 downto 0);
      S_AXI_HP3_WACOUNT : out std_logic_vector(5 downto 0);
      S_AXI_HP3_ACLK : in std_logic;
      S_AXI_HP3_ARVALID : in std_logic;
      S_AXI_HP3_AWVALID : in std_logic;
      S_AXI_HP3_BREADY : in std_logic;
      S_AXI_HP3_RDISSUECAP1_EN : in std_logic;
      S_AXI_HP3_RREADY : in std_logic;
      S_AXI_HP3_WLAST : in std_logic;
      S_AXI_HP3_WRISSUECAP1_EN : in std_logic;
      S_AXI_HP3_WVALID : in std_logic;
      S_AXI_HP3_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP3_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP3_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP3_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_HP3_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_HP3_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_HP3_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP3_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_HP3_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP3_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_HP3_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP3_ARLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP3_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP3_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_HP3_AWLEN : in std_logic_vector(3 downto 0);
      S_AXI_HP3_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_HP3_ARID : in std_logic_vector(5 downto 0);
      S_AXI_HP3_AWID : in std_logic_vector(5 downto 0);
      S_AXI_HP3_WID : in std_logic_vector(5 downto 0);
      S_AXI_HP3_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_HP3_WSTRB : in std_logic_vector(7 downto 0);
      DMA0_DATYPE : out std_logic_vector(1 downto 0);
      DMA0_DAVALID : out std_logic;
      DMA0_DRREADY : out std_logic;
      DMA0_RSTN : out std_logic;
      DMA0_ACLK : in std_logic;
      DMA0_DAREADY : in std_logic;
      DMA0_DRLAST : in std_logic;
      DMA0_DRVALID : in std_logic;
      DMA0_DRTYPE : in std_logic_vector(1 downto 0);
      DMA1_DATYPE : out std_logic_vector(1 downto 0);
      DMA1_DAVALID : out std_logic;
      DMA1_DRREADY : out std_logic;
      DMA1_RSTN : out std_logic;
      DMA1_ACLK : in std_logic;
      DMA1_DAREADY : in std_logic;
      DMA1_DRLAST : in std_logic;
      DMA1_DRVALID : in std_logic;
      DMA1_DRTYPE : in std_logic_vector(1 downto 0);
      DMA2_DATYPE : out std_logic_vector(1 downto 0);
      DMA2_DAVALID : out std_logic;
      DMA2_DRREADY : out std_logic;
      DMA2_RSTN : out std_logic;
      DMA2_ACLK : in std_logic;
      DMA2_DAREADY : in std_logic;
      DMA2_DRLAST : in std_logic;
      DMA2_DRVALID : in std_logic;
      DMA3_DRVALID : in std_logic;
      DMA3_DATYPE : out std_logic_vector(1 downto 0);
      DMA3_DAVALID : out std_logic;
      DMA3_DRREADY : out std_logic;
      DMA3_RSTN : out std_logic;
      DMA3_ACLK : in std_logic;
      DMA3_DAREADY : in std_logic;
      DMA3_DRLAST : in std_logic;
      DMA2_DRTYPE : in std_logic_vector(1 downto 0);
      DMA3_DRTYPE : in std_logic_vector(1 downto 0);
      FTMD_TRACEIN_DATA : in std_logic_vector(31 downto 0);
      FTMD_TRACEIN_VALID : in std_logic;
      FTMD_TRACEIN_CLK : in std_logic;
      FTMD_TRACEIN_ATID : in std_logic_vector(3 downto 0);
      FTMT_F2P_TRIG : in std_logic_vector(3 downto 0);
      FTMT_F2P_TRIGACK : out std_logic_vector(3 downto 0);
      FTMT_F2P_DEBUG : in std_logic_vector(31 downto 0);
      FTMT_P2F_TRIGACK : in std_logic_vector(3 downto 0);
      FTMT_P2F_TRIG : out std_logic_vector(3 downto 0);
      FTMT_P2F_DEBUG : out std_logic_vector(31 downto 0);
      FCLK_CLK3 : out std_logic;
      FCLK_CLK2 : out std_logic;
      FCLK_CLK1 : out std_logic;
      FCLK_CLK0 : out std_logic;
      FCLK_CLKTRIG3_N : in std_logic;
      FCLK_CLKTRIG2_N : in std_logic;
      FCLK_CLKTRIG1_N : in std_logic;
      FCLK_CLKTRIG0_N : in std_logic;
      FCLK_RESET3_N : out std_logic;
      FCLK_RESET2_N : out std_logic;
      FCLK_RESET1_N : out std_logic;
      FCLK_RESET0_N : out std_logic;
      FPGA_IDLE_N : in std_logic;
      DDR_ARB : in std_logic_vector(3 downto 0);
      IRQ_F2P : in std_logic_vector(4 downto 0);
      Core0_nFIQ : in std_logic;
      Core0_nIRQ : in std_logic;
      Core1_nFIQ : in std_logic;
      Core1_nIRQ : in std_logic;
      EVENT_EVENTO : out std_logic;
      EVENT_STANDBYWFE : out std_logic_vector(1 downto 0);
      EVENT_STANDBYWFI : out std_logic_vector(1 downto 0);
      EVENT_EVENTI : in std_logic;
      MIO : inout std_logic_vector(53 downto 0);
      DDR_Clk : inout std_logic;
      DDR_Clk_n : inout std_logic;
      DDR_CKE : inout std_logic;
      DDR_CS_n : inout std_logic;
      DDR_RAS_n : inout std_logic;
      DDR_CAS_n : inout std_logic;
      DDR_WEB : out std_logic;
      DDR_BankAddr : inout std_logic_vector(2 downto 0);
      DDR_Addr : inout std_logic_vector(14 downto 0);
      DDR_ODT : inout std_logic;
      DDR_DRSTB : inout std_logic;
      DDR_DQ : inout std_logic_vector(31 downto 0);
      DDR_DM : inout std_logic_vector(3 downto 0);
      DDR_DQS : inout std_logic_vector(3 downto 0);
      DDR_DQS_n : inout std_logic_vector(3 downto 0);
      DDR_VRN : inout std_logic;
      DDR_VRP : inout std_logic;
      PS_SRSTB : in std_logic;
      PS_CLK : in std_logic;
      PS_PORB : in std_logic;
      IRQ_P2F_DMAC_ABORT : out std_logic;
      IRQ_P2F_DMAC0 : out std_logic;
      IRQ_P2F_DMAC1 : out std_logic;
      IRQ_P2F_DMAC2 : out std_logic;
      IRQ_P2F_DMAC3 : out std_logic;
      IRQ_P2F_DMAC4 : out std_logic;
      IRQ_P2F_DMAC5 : out std_logic;
      IRQ_P2F_DMAC6 : out std_logic;
      IRQ_P2F_DMAC7 : out std_logic;
      IRQ_P2F_SMC : out std_logic;
      IRQ_P2F_QSPI : out std_logic;
      IRQ_P2F_CTI : out std_logic;
      IRQ_P2F_GPIO : out std_logic;
      IRQ_P2F_USB0 : out std_logic;
      IRQ_P2F_ENET0 : out std_logic;
      IRQ_P2F_ENET_WAKE0 : out std_logic;
      IRQ_P2F_SDIO0 : out std_logic;
      IRQ_P2F_I2C0 : out std_logic;
      IRQ_P2F_SPI0 : out std_logic;
      IRQ_P2F_UART0 : out std_logic;
      IRQ_P2F_CAN0 : out std_logic;
      IRQ_P2F_USB1 : out std_logic;
      IRQ_P2F_ENET1 : out std_logic;
      IRQ_P2F_ENET_WAKE1 : out std_logic;
      IRQ_P2F_SDIO1 : out std_logic;
      IRQ_P2F_I2C1 : out std_logic;
      IRQ_P2F_SPI1 : out std_logic;
      IRQ_P2F_UART1 : out std_logic;
      IRQ_P2F_CAN1 : out std_logic
    );
  end component;

  component system_axi4_0_wrapper is
    port (
      INTERCONNECT_ACLK : in std_logic;
      INTERCONNECT_ARESETN : in std_logic;
      S_AXI_ARESET_OUT_N : out std_logic_vector(1 downto 0);
      M_AXI_ARESET_OUT_N : out std_logic_vector(0 to 0);
      IRQ : out std_logic;
      S_AXI_ACLK : in std_logic_vector(1 downto 0);
      S_AXI_AWID : in std_logic_vector(1 downto 0);
      S_AXI_AWADDR : in std_logic_vector(63 downto 0);
      S_AXI_AWLEN : in std_logic_vector(15 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(5 downto 0);
      S_AXI_AWBURST : in std_logic_vector(3 downto 0);
      S_AXI_AWLOCK : in std_logic_vector(3 downto 0);
      S_AXI_AWCACHE : in std_logic_vector(7 downto 0);
      S_AXI_AWPROT : in std_logic_vector(5 downto 0);
      S_AXI_AWQOS : in std_logic_vector(7 downto 0);
      S_AXI_AWUSER : in std_logic_vector(1 downto 0);
      S_AXI_AWVALID : in std_logic_vector(1 downto 0);
      S_AXI_AWREADY : out std_logic_vector(1 downto 0);
      S_AXI_WID : in std_logic_vector(1 downto 0);
      S_AXI_WDATA : in std_logic_vector(255 downto 0);
      S_AXI_WSTRB : in std_logic_vector(31 downto 0);
      S_AXI_WLAST : in std_logic_vector(1 downto 0);
      S_AXI_WUSER : in std_logic_vector(1 downto 0);
      S_AXI_WVALID : in std_logic_vector(1 downto 0);
      S_AXI_WREADY : out std_logic_vector(1 downto 0);
      S_AXI_BID : out std_logic_vector(1 downto 0);
      S_AXI_BRESP : out std_logic_vector(3 downto 0);
      S_AXI_BUSER : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic_vector(1 downto 0);
      S_AXI_BREADY : in std_logic_vector(1 downto 0);
      S_AXI_ARID : in std_logic_vector(1 downto 0);
      S_AXI_ARADDR : in std_logic_vector(63 downto 0);
      S_AXI_ARLEN : in std_logic_vector(15 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(5 downto 0);
      S_AXI_ARBURST : in std_logic_vector(3 downto 0);
      S_AXI_ARLOCK : in std_logic_vector(3 downto 0);
      S_AXI_ARCACHE : in std_logic_vector(7 downto 0);
      S_AXI_ARPROT : in std_logic_vector(5 downto 0);
      S_AXI_ARQOS : in std_logic_vector(7 downto 0);
      S_AXI_ARUSER : in std_logic_vector(1 downto 0);
      S_AXI_ARVALID : in std_logic_vector(1 downto 0);
      S_AXI_ARREADY : out std_logic_vector(1 downto 0);
      S_AXI_RID : out std_logic_vector(1 downto 0);
      S_AXI_RDATA : out std_logic_vector(255 downto 0);
      S_AXI_RRESP : out std_logic_vector(3 downto 0);
      S_AXI_RLAST : out std_logic_vector(1 downto 0);
      S_AXI_RUSER : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic_vector(1 downto 0);
      S_AXI_RREADY : in std_logic_vector(1 downto 0);
      M_AXI_ACLK : in std_logic_vector(0 to 0);
      M_AXI_AWID : out std_logic_vector(0 to 0);
      M_AXI_AWADDR : out std_logic_vector(31 downto 0);
      M_AXI_AWLEN : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK : out std_logic_vector(1 downto 0);
      M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT : out std_logic_vector(2 downto 0);
      M_AXI_AWREGION : out std_logic_vector(3 downto 0);
      M_AXI_AWQOS : out std_logic_vector(3 downto 0);
      M_AXI_AWUSER : out std_logic_vector(0 to 0);
      M_AXI_AWVALID : out std_logic_vector(0 to 0);
      M_AXI_AWREADY : in std_logic_vector(0 to 0);
      M_AXI_WID : out std_logic_vector(0 to 0);
      M_AXI_WDATA : out std_logic_vector(127 downto 0);
      M_AXI_WSTRB : out std_logic_vector(15 downto 0);
      M_AXI_WLAST : out std_logic_vector(0 to 0);
      M_AXI_WUSER : out std_logic_vector(0 to 0);
      M_AXI_WVALID : out std_logic_vector(0 to 0);
      M_AXI_WREADY : in std_logic_vector(0 to 0);
      M_AXI_BID : in std_logic_vector(0 to 0);
      M_AXI_BRESP : in std_logic_vector(1 downto 0);
      M_AXI_BUSER : in std_logic_vector(0 to 0);
      M_AXI_BVALID : in std_logic_vector(0 to 0);
      M_AXI_BREADY : out std_logic_vector(0 to 0);
      M_AXI_ARID : out std_logic_vector(0 to 0);
      M_AXI_ARADDR : out std_logic_vector(31 downto 0);
      M_AXI_ARLEN : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK : out std_logic_vector(1 downto 0);
      M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT : out std_logic_vector(2 downto 0);
      M_AXI_ARREGION : out std_logic_vector(3 downto 0);
      M_AXI_ARQOS : out std_logic_vector(3 downto 0);
      M_AXI_ARUSER : out std_logic_vector(0 to 0);
      M_AXI_ARVALID : out std_logic_vector(0 to 0);
      M_AXI_ARREADY : in std_logic_vector(0 to 0);
      M_AXI_RID : in std_logic_vector(0 to 0);
      M_AXI_RDATA : in std_logic_vector(127 downto 0);
      M_AXI_RRESP : in std_logic_vector(1 downto 0);
      M_AXI_RLAST : in std_logic_vector(0 to 0);
      M_AXI_RUSER : in std_logic_vector(0 to 0);
      M_AXI_RVALID : in std_logic_vector(0 to 0);
      M_AXI_RREADY : out std_logic_vector(0 to 0);
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      INTERCONNECT_ARESET_OUT_N : out std_logic;
      DEBUG_AW_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AR_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AW_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AW_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AW_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AW_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AW_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AR_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AR_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AR_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AR_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_B_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_R_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_R_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_BID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_BID_ERROR : out std_logic;
      DEBUG_RID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_RID_ERROR : out std_logic;
      DEBUG_SR_SC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SR_SC_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_SR_SC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SR_SC_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_SR_SC_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_SC_SF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SC_SF_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_SC_SF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SC_SF_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_SC_SF_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_SF_CB_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SF_CB_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_SF_CB_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SF_CB_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_SF_CB_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_CB_MF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_CB_MF_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_CB_MF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_CB_MF_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_CB_MF_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_MF_MC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MF_MC_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_MF_MC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MF_MC_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_MF_MC_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_MC_MP_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MC_MP_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_MC_MP_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MC_MP_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_MC_MP_WDATACONTROL : out std_logic_vector(18 downto 0);
      DEBUG_MP_MR_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MP_MR_RDATA : out std_logic_vector(127 downto 0);
      DEBUG_MP_MR_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MP_MR_WDATA : out std_logic_vector(127 downto 0);
      DEBUG_MP_MR_WDATACONTROL : out std_logic_vector(18 downto 0)
    );
  end component;

  component system_axi4_1_wrapper is
    port (
      INTERCONNECT_ACLK : in std_logic;
      INTERCONNECT_ARESETN : in std_logic;
      S_AXI_ARESET_OUT_N : out std_logic_vector(1 downto 0);
      M_AXI_ARESET_OUT_N : out std_logic_vector(0 to 0);
      IRQ : out std_logic;
      S_AXI_ACLK : in std_logic_vector(1 downto 0);
      S_AXI_AWID : in std_logic_vector(1 downto 0);
      S_AXI_AWADDR : in std_logic_vector(63 downto 0);
      S_AXI_AWLEN : in std_logic_vector(15 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(5 downto 0);
      S_AXI_AWBURST : in std_logic_vector(3 downto 0);
      S_AXI_AWLOCK : in std_logic_vector(3 downto 0);
      S_AXI_AWCACHE : in std_logic_vector(7 downto 0);
      S_AXI_AWPROT : in std_logic_vector(5 downto 0);
      S_AXI_AWQOS : in std_logic_vector(7 downto 0);
      S_AXI_AWUSER : in std_logic_vector(1 downto 0);
      S_AXI_AWVALID : in std_logic_vector(1 downto 0);
      S_AXI_AWREADY : out std_logic_vector(1 downto 0);
      S_AXI_WID : in std_logic_vector(1 downto 0);
      S_AXI_WDATA : in std_logic_vector(127 downto 0);
      S_AXI_WSTRB : in std_logic_vector(15 downto 0);
      S_AXI_WLAST : in std_logic_vector(1 downto 0);
      S_AXI_WUSER : in std_logic_vector(1 downto 0);
      S_AXI_WVALID : in std_logic_vector(1 downto 0);
      S_AXI_WREADY : out std_logic_vector(1 downto 0);
      S_AXI_BID : out std_logic_vector(1 downto 0);
      S_AXI_BRESP : out std_logic_vector(3 downto 0);
      S_AXI_BUSER : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic_vector(1 downto 0);
      S_AXI_BREADY : in std_logic_vector(1 downto 0);
      S_AXI_ARID : in std_logic_vector(1 downto 0);
      S_AXI_ARADDR : in std_logic_vector(63 downto 0);
      S_AXI_ARLEN : in std_logic_vector(15 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(5 downto 0);
      S_AXI_ARBURST : in std_logic_vector(3 downto 0);
      S_AXI_ARLOCK : in std_logic_vector(3 downto 0);
      S_AXI_ARCACHE : in std_logic_vector(7 downto 0);
      S_AXI_ARPROT : in std_logic_vector(5 downto 0);
      S_AXI_ARQOS : in std_logic_vector(7 downto 0);
      S_AXI_ARUSER : in std_logic_vector(1 downto 0);
      S_AXI_ARVALID : in std_logic_vector(1 downto 0);
      S_AXI_ARREADY : out std_logic_vector(1 downto 0);
      S_AXI_RID : out std_logic_vector(1 downto 0);
      S_AXI_RDATA : out std_logic_vector(127 downto 0);
      S_AXI_RRESP : out std_logic_vector(3 downto 0);
      S_AXI_RLAST : out std_logic_vector(1 downto 0);
      S_AXI_RUSER : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic_vector(1 downto 0);
      S_AXI_RREADY : in std_logic_vector(1 downto 0);
      M_AXI_ACLK : in std_logic_vector(0 to 0);
      M_AXI_AWID : out std_logic_vector(0 to 0);
      M_AXI_AWADDR : out std_logic_vector(31 downto 0);
      M_AXI_AWLEN : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK : out std_logic_vector(1 downto 0);
      M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT : out std_logic_vector(2 downto 0);
      M_AXI_AWREGION : out std_logic_vector(3 downto 0);
      M_AXI_AWQOS : out std_logic_vector(3 downto 0);
      M_AXI_AWUSER : out std_logic_vector(0 to 0);
      M_AXI_AWVALID : out std_logic_vector(0 to 0);
      M_AXI_AWREADY : in std_logic_vector(0 to 0);
      M_AXI_WID : out std_logic_vector(0 to 0);
      M_AXI_WDATA : out std_logic_vector(63 downto 0);
      M_AXI_WSTRB : out std_logic_vector(7 downto 0);
      M_AXI_WLAST : out std_logic_vector(0 to 0);
      M_AXI_WUSER : out std_logic_vector(0 to 0);
      M_AXI_WVALID : out std_logic_vector(0 to 0);
      M_AXI_WREADY : in std_logic_vector(0 to 0);
      M_AXI_BID : in std_logic_vector(0 to 0);
      M_AXI_BRESP : in std_logic_vector(1 downto 0);
      M_AXI_BUSER : in std_logic_vector(0 to 0);
      M_AXI_BVALID : in std_logic_vector(0 to 0);
      M_AXI_BREADY : out std_logic_vector(0 to 0);
      M_AXI_ARID : out std_logic_vector(0 to 0);
      M_AXI_ARADDR : out std_logic_vector(31 downto 0);
      M_AXI_ARLEN : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK : out std_logic_vector(1 downto 0);
      M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT : out std_logic_vector(2 downto 0);
      M_AXI_ARREGION : out std_logic_vector(3 downto 0);
      M_AXI_ARQOS : out std_logic_vector(3 downto 0);
      M_AXI_ARUSER : out std_logic_vector(0 to 0);
      M_AXI_ARVALID : out std_logic_vector(0 to 0);
      M_AXI_ARREADY : in std_logic_vector(0 to 0);
      M_AXI_RID : in std_logic_vector(0 to 0);
      M_AXI_RDATA : in std_logic_vector(63 downto 0);
      M_AXI_RRESP : in std_logic_vector(1 downto 0);
      M_AXI_RLAST : in std_logic_vector(0 to 0);
      M_AXI_RUSER : in std_logic_vector(0 to 0);
      M_AXI_RVALID : in std_logic_vector(0 to 0);
      M_AXI_RREADY : out std_logic_vector(0 to 0);
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      INTERCONNECT_ARESET_OUT_N : out std_logic;
      DEBUG_AW_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AR_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AW_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AW_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AW_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AW_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AW_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AR_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AR_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AR_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AR_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_B_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_R_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_R_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_BID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_BID_ERROR : out std_logic;
      DEBUG_RID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_RID_ERROR : out std_logic;
      DEBUG_SR_SC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SR_SC_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_SR_SC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SR_SC_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_SR_SC_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_SC_SF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SC_SF_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_SC_SF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SC_SF_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_SC_SF_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_SF_CB_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SF_CB_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_SF_CB_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SF_CB_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_SF_CB_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_CB_MF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_CB_MF_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_CB_MF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_CB_MF_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_CB_MF_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_MF_MC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MF_MC_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_MF_MC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MF_MC_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_MF_MC_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_MC_MP_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MC_MP_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_MC_MP_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MC_MP_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_MC_MP_WDATACONTROL : out std_logic_vector(10 downto 0);
      DEBUG_MP_MR_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MP_MR_RDATA : out std_logic_vector(63 downto 0);
      DEBUG_MP_MR_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MP_MR_WDATA : out std_logic_vector(63 downto 0);
      DEBUG_MP_MR_WDATACONTROL : out std_logic_vector(10 downto 0)
    );
  end component;

  component system_axi4_lite_wrapper is
    port (
      INTERCONNECT_ACLK : in std_logic;
      INTERCONNECT_ARESETN : in std_logic;
      S_AXI_ARESET_OUT_N : out std_logic_vector(0 to 0);
      M_AXI_ARESET_OUT_N : out std_logic_vector(9 downto 0);
      IRQ : out std_logic;
      S_AXI_ACLK : in std_logic_vector(0 to 0);
      S_AXI_AWID : in std_logic_vector(11 downto 0);
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWLEN : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK : in std_logic_vector(1 downto 0);
      S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_AWQOS : in std_logic_vector(3 downto 0);
      S_AXI_AWUSER : in std_logic_vector(0 to 0);
      S_AXI_AWVALID : in std_logic_vector(0 to 0);
      S_AXI_AWREADY : out std_logic_vector(0 to 0);
      S_AXI_WID : in std_logic_vector(11 downto 0);
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WLAST : in std_logic_vector(0 to 0);
      S_AXI_WUSER : in std_logic_vector(0 to 0);
      S_AXI_WVALID : in std_logic_vector(0 to 0);
      S_AXI_WREADY : out std_logic_vector(0 to 0);
      S_AXI_BID : out std_logic_vector(11 downto 0);
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BUSER : out std_logic_vector(0 to 0);
      S_AXI_BVALID : out std_logic_vector(0 to 0);
      S_AXI_BREADY : in std_logic_vector(0 to 0);
      S_AXI_ARID : in std_logic_vector(11 downto 0);
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARLEN : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK : in std_logic_vector(1 downto 0);
      S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_ARQOS : in std_logic_vector(3 downto 0);
      S_AXI_ARUSER : in std_logic_vector(0 to 0);
      S_AXI_ARVALID : in std_logic_vector(0 to 0);
      S_AXI_ARREADY : out std_logic_vector(0 to 0);
      S_AXI_RID : out std_logic_vector(11 downto 0);
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RLAST : out std_logic_vector(0 to 0);
      S_AXI_RUSER : out std_logic_vector(0 to 0);
      S_AXI_RVALID : out std_logic_vector(0 to 0);
      S_AXI_RREADY : in std_logic_vector(0 to 0);
      M_AXI_ACLK : in std_logic_vector(9 downto 0);
      M_AXI_AWID : out std_logic_vector(119 downto 0);
      M_AXI_AWADDR : out std_logic_vector(319 downto 0);
      M_AXI_AWLEN : out std_logic_vector(79 downto 0);
      M_AXI_AWSIZE : out std_logic_vector(29 downto 0);
      M_AXI_AWBURST : out std_logic_vector(19 downto 0);
      M_AXI_AWLOCK : out std_logic_vector(19 downto 0);
      M_AXI_AWCACHE : out std_logic_vector(39 downto 0);
      M_AXI_AWPROT : out std_logic_vector(29 downto 0);
      M_AXI_AWREGION : out std_logic_vector(39 downto 0);
      M_AXI_AWQOS : out std_logic_vector(39 downto 0);
      M_AXI_AWUSER : out std_logic_vector(9 downto 0);
      M_AXI_AWVALID : out std_logic_vector(9 downto 0);
      M_AXI_AWREADY : in std_logic_vector(9 downto 0);
      M_AXI_WID : out std_logic_vector(119 downto 0);
      M_AXI_WDATA : out std_logic_vector(319 downto 0);
      M_AXI_WSTRB : out std_logic_vector(39 downto 0);
      M_AXI_WLAST : out std_logic_vector(9 downto 0);
      M_AXI_WUSER : out std_logic_vector(9 downto 0);
      M_AXI_WVALID : out std_logic_vector(9 downto 0);
      M_AXI_WREADY : in std_logic_vector(9 downto 0);
      M_AXI_BID : in std_logic_vector(119 downto 0);
      M_AXI_BRESP : in std_logic_vector(19 downto 0);
      M_AXI_BUSER : in std_logic_vector(9 downto 0);
      M_AXI_BVALID : in std_logic_vector(9 downto 0);
      M_AXI_BREADY : out std_logic_vector(9 downto 0);
      M_AXI_ARID : out std_logic_vector(119 downto 0);
      M_AXI_ARADDR : out std_logic_vector(319 downto 0);
      M_AXI_ARLEN : out std_logic_vector(79 downto 0);
      M_AXI_ARSIZE : out std_logic_vector(29 downto 0);
      M_AXI_ARBURST : out std_logic_vector(19 downto 0);
      M_AXI_ARLOCK : out std_logic_vector(19 downto 0);
      M_AXI_ARCACHE : out std_logic_vector(39 downto 0);
      M_AXI_ARPROT : out std_logic_vector(29 downto 0);
      M_AXI_ARREGION : out std_logic_vector(39 downto 0);
      M_AXI_ARQOS : out std_logic_vector(39 downto 0);
      M_AXI_ARUSER : out std_logic_vector(9 downto 0);
      M_AXI_ARVALID : out std_logic_vector(9 downto 0);
      M_AXI_ARREADY : in std_logic_vector(9 downto 0);
      M_AXI_RID : in std_logic_vector(119 downto 0);
      M_AXI_RDATA : in std_logic_vector(319 downto 0);
      M_AXI_RRESP : in std_logic_vector(19 downto 0);
      M_AXI_RLAST : in std_logic_vector(9 downto 0);
      M_AXI_RUSER : in std_logic_vector(9 downto 0);
      M_AXI_RVALID : in std_logic_vector(9 downto 0);
      M_AXI_RREADY : out std_logic_vector(9 downto 0);
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      INTERCONNECT_ARESET_OUT_N : out std_logic;
      DEBUG_AW_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AR_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AW_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AW_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AW_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AW_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AW_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AR_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AR_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AR_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AR_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_B_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_R_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_R_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_BID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_BID_ERROR : out std_logic;
      DEBUG_RID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_RID_ERROR : out std_logic;
      DEBUG_SR_SC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SR_SC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SR_SC_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_SR_SC_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_SR_SC_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_SC_SF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SC_SF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SC_SF_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_SC_SF_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_SC_SF_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_SF_CB_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SF_CB_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_SF_CB_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_SF_CB_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_SF_CB_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_CB_MF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_CB_MF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_CB_MF_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_CB_MF_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_CB_MF_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MF_MC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MF_MC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MF_MC_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_MF_MC_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_MF_MC_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MC_MP_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MC_MP_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MC_MP_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_MC_MP_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_MC_MP_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MP_MR_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_ARADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MP_MR_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_AWADDRCONTROL : out std_logic_vector(34 downto 0);
      DEBUG_MP_MR_BRESP : out std_logic_vector(15 downto 0);
      DEBUG_MP_MR_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_RDATACONTROL : out std_logic_vector(16 downto 0);
      DEBUG_MP_MR_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_WDATACONTROL : out std_logic_vector(6 downto 0)
    );
  end component;

  component system_clock_generator_0_wrapper is
    port (
      CLKIN : in std_logic;
      CLKOUT0 : out std_logic;
      CLKOUT1 : out std_logic;
      CLKOUT2 : out std_logic;
      CLKOUT3 : out std_logic;
      CLKOUT4 : out std_logic;
      CLKOUT5 : out std_logic;
      CLKOUT6 : out std_logic;
      CLKOUT7 : out std_logic;
      CLKOUT8 : out std_logic;
      CLKOUT9 : out std_logic;
      CLKOUT10 : out std_logic;
      CLKOUT11 : out std_logic;
      CLKOUT12 : out std_logic;
      CLKOUT13 : out std_logic;
      CLKOUT14 : out std_logic;
      CLKOUT15 : out std_logic;
      CLKFBIN : in std_logic;
      CLKFBOUT : out std_logic;
      PSCLK : in std_logic;
      PSEN : in std_logic;
      PSINCDEC : in std_logic;
      PSDONE : out std_logic;
      RST : in std_logic;
      LOCKED : out std_logic
    );
  end component;

  component system_proc_sys_reset_1_wrapper is
    port (
      Slowest_sync_clk : in std_logic;
      Ext_Reset_In : in std_logic;
      Aux_Reset_In : in std_logic;
      MB_Debug_Sys_Rst : in std_logic;
      Core_Reset_Req_0 : in std_logic;
      Chip_Reset_Req_0 : in std_logic;
      System_Reset_Req_0 : in std_logic;
      Core_Reset_Req_1 : in std_logic;
      Chip_Reset_Req_1 : in std_logic;
      System_Reset_Req_1 : in std_logic;
      Dcm_locked : in std_logic;
      RstcPPCresetcore_0 : out std_logic;
      RstcPPCresetchip_0 : out std_logic;
      RstcPPCresetsys_0 : out std_logic;
      RstcPPCresetcore_1 : out std_logic;
      RstcPPCresetchip_1 : out std_logic;
      RstcPPCresetsys_1 : out std_logic;
      MB_Reset : out std_logic;
      Bus_Struct_Reset : out std_logic_vector(0 to 0);
      Peripheral_Reset : out std_logic_vector(0 to 0);
      Interconnect_aresetn : out std_logic_vector(0 to 0);
      Peripheral_aresetn : out std_logic_vector(0 to 0)
    );
  end component;

  component system_tpg_swrst_ff_wrapper is
    port (
      Clk : in std_logic;
      RST : in std_logic;
      SET : in std_logic;
      CE : in std_logic;
      D : in std_logic_vector(0 to 0);
      Q : out std_logic_vector(0 to 0)
    );
  end component;

  component system_tpg_swrst_wrapper is
    port (
      Op1 : in std_logic_vector(0 to 2);
      Res : out std_logic
    );
  end component;

  component system_filter_swrst_ff_wrapper is
    port (
      Clk : in std_logic;
      RST : in std_logic;
      SET : in std_logic;
      CE : in std_logic;
      D : in std_logic_vector(0 to 0);
      Q : out std_logic_vector(0 to 0)
    );
  end component;

  component system_filter_swrst_wrapper is
    port (
      Op1 : in std_logic_vector(0 to 1);
      Res : out std_logic
    );
  end component;

  component system_video_mux_0_wrapper is
    port (
      video_clk_1 : in std_logic_vector(0 to 0);
      video_clk_2 : in std_logic_vector(0 to 0);
      hsync_1 : in std_logic_vector(0 to 0);
      hsync_2 : in std_logic_vector(0 to 0);
      vsync_1 : in std_logic_vector(0 to 0);
      vsync_2 : in std_logic_vector(0 to 0);
      de_1 : in std_logic_vector(0 to 0);
      de_2 : in std_logic_vector(0 to 0);
      video_clk : out std_logic_vector(0 to 0);
      hsync : out std_logic_vector(0 to 0);
      vsync : out std_logic_vector(0 to 0);
      de : out std_logic_vector(0 to 0);
      video_sel : in std_logic
    );
  end component;

  component system_clk_detect_0_wrapper is
    port (
      DUT_CLK : in std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic
    );
  end component;

  component system_vtc_0_wrapper is
    port (
      s_axi_aclk : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_aclken : in std_logic;
      s_axi_awaddr : in std_logic_vector(8 downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata : in std_logic_vector(31 downto 0);
      s_axi_wstrb : in std_logic_vector(3 downto 0);
      s_axi_wvalid : in std_logic;
      s_axi_wready : out std_logic;
      s_axi_bresp : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in std_logic;
      s_axi_araddr : in std_logic_vector(8 downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata : out std_logic_vector(31 downto 0);
      s_axi_rresp : out std_logic_vector(1 downto 0);
      s_axi_rvalid : out std_logic;
      s_axi_rready : in std_logic;
      irq : out std_logic;
      intc_if : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      resetn : in std_logic;
      clken : in std_logic;
      det_clken : in std_logic;
      gen_clken : in std_logic;
      fsync_in : in std_logic;
      vblank_in : in std_logic;
      vsync_in : in std_logic;
      hblank_in : in std_logic;
      hsync_in : in std_logic;
      active_video_in : in std_logic;
      active_chroma_in : in std_logic;
      vblank_out : out std_logic;
      vsync_out : out std_logic;
      hblank_out : out std_logic;
      hsync_out : out std_logic;
      active_video_out : out std_logic;
      active_chroma_out : out std_logic;
      fsync_out : out std_logic_vector(0 to 0)
    );
  end component;

  component system_hdmi_in_wrapper is
    port (
      clk : in std_logic;
      io_hdmii_spdif : in std_logic;
      io_hdmii_video : in std_logic_vector(15 downto 0);
      xsvi_vblank_o : out std_logic;
      xsvi_hblank_o : out std_logic;
      xsvi_active_video_o : out std_logic;
      xsvi_video_data_o : out std_logic_vector(15 downto 0);
      audio_spdif : out std_logic;
      debug_o : out std_logic_vector(23 downto 0)
    );
  end component;

  component system_tpg_0_wrapper is
    port (
      intc_if : out std_logic_vector(8 downto 0);
      aclk : in std_logic;
      aclken : in std_logic;
      aresetn : in std_logic;
      irq : out std_logic;
      s_axis_video_tdata : in std_logic_vector(15 downto 0);
      s_axis_video_tready : out std_logic;
      s_axis_video_tvalid : in std_logic;
      s_axis_video_tlast : in std_logic;
      s_axis_video_tuser : in std_logic;
      m_axis_video_tdata : out std_logic_vector(15 downto 0);
      m_axis_video_tready : in std_logic;
      m_axis_video_tvalid : out std_logic;
      m_axis_video_tlast : out std_logic;
      m_axis_video_tuser : out std_logic;
      s_axi_aclk : in std_logic;
      s_axi_aclken : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_awaddr : in std_logic_vector(8 downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata : in std_logic_vector(31 downto 0);
      s_axi_wstrb : in std_logic_vector(3 downto 0);
      s_axi_wvalid : in std_logic;
      s_axi_wready : out std_logic;
      s_axi_bresp : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in std_logic;
      s_axi_araddr : in std_logic_vector(8 downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata : out std_logic_vector(31 downto 0);
      s_axi_rresp : out std_logic_vector(1 downto 0);
      s_axi_rvalid : out std_logic;
      s_axi_rready : in std_logic
    );
  end component;

  component system_vid_in_axi4s_wrapper is
    port (
      vid_in_clk : in std_logic;
      rst : in std_logic;
      vid_de : in std_logic;
      vid_vblank : in std_logic;
      vid_hblank : in std_logic;
      vid_vsync : in std_logic;
      vid_hsync : in std_logic;
      vid_data : in std_logic_vector(15 downto 0);
      aclk : in std_logic;
      aresetn : in std_logic;
      aclken : in std_logic;
      m_axis_video_tdata : out std_logic_vector(15 downto 0);
      m_axis_video_tvalid : out std_logic;
      m_axis_video_tready : in std_logic;
      m_axis_video_tuser : out std_logic;
      m_axis_video_tlast : out std_logic;
      vtd_active_video : out std_logic;
      vtd_vblank : out std_logic;
      vtd_hblank : out std_logic;
      vtd_vsync : out std_logic;
      vtd_hsync : out std_logic;
      wr_error : out std_logic;
      empty : out std_logic;
      axis_enable : in std_logic
    );
  end component;

  component system_cresample_0_wrapper is
    port (
      aclk : in std_logic;
      aclken : in std_logic;
      aresetn : in std_logic;
      irq : out std_logic;
      intc_if : out std_logic_vector(8 downto 0);
      s_axis_video_tdata : in std_logic_vector(15 downto 0);
      s_axis_video_tready : out std_logic;
      s_axis_video_tvalid : in std_logic;
      s_axis_video_tlast : in std_logic;
      s_axis_video_tuser : in std_logic;
      m_axis_video_tdata : out std_logic_vector(23 downto 0);
      m_axis_video_tready : in std_logic;
      m_axis_video_tvalid : out std_logic;
      m_axis_video_tlast : out std_logic;
      m_axis_video_tuser : out std_logic;
      s_axi_aclk : in std_logic;
      s_axi_aclken : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_awaddr : in std_logic_vector(8 downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata : in std_logic_vector(31 downto 0);
      s_axi_wstrb : in std_logic_vector(3 downto 0);
      s_axi_wvalid : in std_logic;
      s_axi_wready : out std_logic;
      s_axi_bresp : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in std_logic;
      s_axi_araddr : in std_logic_vector(8 downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata : out std_logic_vector(31 downto 0);
      s_axi_rresp : out std_logic_vector(1 downto 0);
      s_axi_rvalid : out std_logic;
      s_axi_rready : in std_logic
    );
  end component;

  component system_yuv2rgb_0_wrapper is
    port (
      aclk : in std_logic;
      aclken : in std_logic;
      aresetn : in std_logic;
      irq : out std_logic;
      intc_if : out std_logic_vector(8 downto 0);
      s_axis_video_tdata : in std_logic_vector(23 downto 0);
      s_axis_video_tready : out std_logic;
      s_axis_video_tvalid : in std_logic;
      s_axis_video_tlast : in std_logic;
      s_axis_video_tuser_sof : in std_logic;
      m_axis_video_tdata : out std_logic_vector(23 downto 0);
      m_axis_video_tready : in std_logic;
      m_axis_video_tvalid : out std_logic;
      m_axis_video_tlast : out std_logic;
      m_axis_video_tuser_sof : out std_logic;
      s_axi_aclk : in std_logic;
      s_axi_aclken : in std_logic;
      s_axi_aresetn : in std_logic;
      s_axi_awaddr : in std_logic_vector(8 downto 0);
      s_axi_awvalid : in std_logic;
      s_axi_awready : out std_logic;
      s_axi_wdata : in std_logic_vector(31 downto 0);
      s_axi_wstrb : in std_logic_vector(3 downto 0);
      s_axi_wvalid : in std_logic;
      s_axi_wready : out std_logic;
      s_axi_bresp : out std_logic_vector(1 downto 0);
      s_axi_bvalid : out std_logic;
      s_axi_bready : in std_logic;
      s_axi_araddr : in std_logic_vector(8 downto 0);
      s_axi_arvalid : in std_logic;
      s_axi_arready : out std_logic;
      s_axi_rdata : out std_logic_vector(31 downto 0);
      s_axi_rresp : out std_logic_vector(1 downto 0);
      s_axi_rvalid : out std_logic;
      s_axi_rready : in std_logic
    );
  end component;

  component system_tpg_vdma_wrapper is
    port (
      s_axi_lite_aclk : in std_logic;
      m_axi_sg_aclk : in std_logic;
      m_axi_mm2s_aclk : in std_logic;
      m_axi_s2mm_aclk : in std_logic;
      m_axis_mm2s_aclk : in std_logic;
      s_axis_s2mm_aclk : in std_logic;
      axi_resetn : in std_logic;
      s_axi_lite_awvalid : in std_logic;
      s_axi_lite_awready : out std_logic;
      s_axi_lite_awaddr : in std_logic_vector(8 downto 0);
      s_axi_lite_wvalid : in std_logic;
      s_axi_lite_wready : out std_logic;
      s_axi_lite_wdata : in std_logic_vector(31 downto 0);
      s_axi_lite_bresp : out std_logic_vector(1 downto 0);
      s_axi_lite_bvalid : out std_logic;
      s_axi_lite_bready : in std_logic;
      s_axi_lite_arvalid : in std_logic;
      s_axi_lite_arready : out std_logic;
      s_axi_lite_araddr : in std_logic_vector(8 downto 0);
      s_axi_lite_rvalid : out std_logic;
      s_axi_lite_rready : in std_logic;
      s_axi_lite_rdata : out std_logic_vector(31 downto 0);
      s_axi_lite_rresp : out std_logic_vector(1 downto 0);
      m_axi_sg_araddr : out std_logic_vector(31 downto 0);
      m_axi_sg_arlen : out std_logic_vector(7 downto 0);
      m_axi_sg_arsize : out std_logic_vector(2 downto 0);
      m_axi_sg_arburst : out std_logic_vector(1 downto 0);
      m_axi_sg_arprot : out std_logic_vector(2 downto 0);
      m_axi_sg_arcache : out std_logic_vector(3 downto 0);
      m_axi_sg_arvalid : out std_logic;
      m_axi_sg_arready : in std_logic;
      m_axi_sg_rdata : in std_logic_vector(31 downto 0);
      m_axi_sg_rresp : in std_logic_vector(1 downto 0);
      m_axi_sg_rlast : in std_logic;
      m_axi_sg_rvalid : in std_logic;
      m_axi_sg_rready : out std_logic;
      m_axi_mm2s_araddr : out std_logic_vector(31 downto 0);
      m_axi_mm2s_arlen : out std_logic_vector(7 downto 0);
      m_axi_mm2s_arsize : out std_logic_vector(2 downto 0);
      m_axi_mm2s_arburst : out std_logic_vector(1 downto 0);
      m_axi_mm2s_arprot : out std_logic_vector(2 downto 0);
      m_axi_mm2s_arcache : out std_logic_vector(3 downto 0);
      m_axi_mm2s_arvalid : out std_logic;
      m_axi_mm2s_arready : in std_logic;
      m_axi_mm2s_rdata : in std_logic_vector(31 downto 0);
      m_axi_mm2s_rresp : in std_logic_vector(1 downto 0);
      m_axi_mm2s_rlast : in std_logic;
      m_axi_mm2s_rvalid : in std_logic;
      m_axi_mm2s_rready : out std_logic;
      mm2s_prmry_reset_out_n : out std_logic;
      m_axis_mm2s_tdata : out std_logic_vector(31 downto 0);
      m_axis_mm2s_tkeep : out std_logic_vector(3 downto 0);
      m_axis_mm2s_tvalid : out std_logic;
      m_axis_mm2s_tready : in std_logic;
      m_axis_mm2s_tlast : out std_logic;
      m_axis_mm2s_tuser : out std_logic_vector(0 to 0);
      m_axi_s2mm_awaddr : out std_logic_vector(31 downto 0);
      m_axi_s2mm_awlen : out std_logic_vector(7 downto 0);
      m_axi_s2mm_awsize : out std_logic_vector(2 downto 0);
      m_axi_s2mm_awburst : out std_logic_vector(1 downto 0);
      m_axi_s2mm_awprot : out std_logic_vector(2 downto 0);
      m_axi_s2mm_awcache : out std_logic_vector(3 downto 0);
      m_axi_s2mm_awvalid : out std_logic;
      m_axi_s2mm_awready : in std_logic;
      m_axi_s2mm_wdata : out std_logic_vector(63 downto 0);
      m_axi_s2mm_wstrb : out std_logic_vector(7 downto 0);
      m_axi_s2mm_wlast : out std_logic;
      m_axi_s2mm_wvalid : out std_logic;
      m_axi_s2mm_wready : in std_logic;
      m_axi_s2mm_bresp : in std_logic_vector(1 downto 0);
      m_axi_s2mm_bvalid : in std_logic;
      m_axi_s2mm_bready : out std_logic;
      s2mm_prmry_reset_out_n : out std_logic;
      s_axis_s2mm_tdata : in std_logic_vector(31 downto 0);
      s_axis_s2mm_tkeep : in std_logic_vector(3 downto 0);
      s_axis_s2mm_tvalid : in std_logic;
      s_axis_s2mm_tready : out std_logic;
      s_axis_s2mm_tlast : in std_logic;
      s_axis_s2mm_tuser : in std_logic_vector(0 to 0);
      mm2s_fsync : in std_logic;
      mm2s_frame_ptr_in : in std_logic_vector(5 downto 0);
      mm2s_frame_ptr_out : out std_logic_vector(5 downto 0);
      mm2s_fsync_out : out std_logic;
      mm2s_prmtr_update : out std_logic;
      mm2s_buffer_empty : out std_logic;
      mm2s_buffer_almost_empty : out std_logic;
      s2mm_fsync : in std_logic;
      s2mm_frame_ptr_in : in std_logic_vector(5 downto 0);
      s2mm_frame_ptr_out : out std_logic_vector(5 downto 0);
      s2mm_fsync_out : out std_logic;
      s2mm_buffer_full : out std_logic;
      s2mm_buffer_almost_full : out std_logic;
      s2mm_prmtr_update : out std_logic;
      mm2s_introut : out std_logic;
      s2mm_introut : out std_logic;
      axi_vdma_tstvec : out std_logic_vector(63 downto 0)
    );
  end component;

  component system_filter_engine_wrapper is
    port (
      aclk : in std_logic;
      aresetn : in std_logic;
      s_axi_CONTROL_BUS_AWADDR : in std_logic_vector(4 downto 0);
      s_axi_CONTROL_BUS_AWVALID : in std_logic;
      s_axi_CONTROL_BUS_AWREADY : out std_logic;
      s_axi_CONTROL_BUS_WDATA : in std_logic_vector(31 downto 0);
      s_axi_CONTROL_BUS_WSTRB : in std_logic_vector(3 downto 0);
      s_axi_CONTROL_BUS_WVALID : in std_logic;
      s_axi_CONTROL_BUS_WREADY : out std_logic;
      s_axi_CONTROL_BUS_BRESP : out std_logic_vector(1 downto 0);
      s_axi_CONTROL_BUS_BVALID : out std_logic;
      s_axi_CONTROL_BUS_BREADY : in std_logic;
      s_axi_CONTROL_BUS_ARADDR : in std_logic_vector(4 downto 0);
      s_axi_CONTROL_BUS_ARVALID : in std_logic;
      s_axi_CONTROL_BUS_ARREADY : out std_logic;
      s_axi_CONTROL_BUS_RDATA : out std_logic_vector(31 downto 0);
      s_axi_CONTROL_BUS_RRESP : out std_logic_vector(1 downto 0);
      s_axi_CONTROL_BUS_RVALID : out std_logic;
      s_axi_CONTROL_BUS_RREADY : in std_logic;
      interrupt : out std_logic;
      INPUT_STREAM_TVALID : in std_logic;
      INPUT_STREAM_TREADY : out std_logic;
      INPUT_STREAM_TDATA : in std_logic_vector(31 downto 0);
      INPUT_STREAM_TKEEP : in std_logic_vector(3 downto 0);
      INPUT_STREAM_TSTRB : in std_logic_vector(3 downto 0);
      INPUT_STREAM_TUSER : in std_logic_vector(0 to 0);
      INPUT_STREAM_TLAST : in std_logic_vector(0 to 0);
      INPUT_STREAM_TID : in std_logic_vector(0 to 0);
      INPUT_STREAM_TDEST : in std_logic_vector(0 to 0);
      OUTPUT_STREAM_TVALID : out std_logic;
      OUTPUT_STREAM_TREADY : in std_logic;
      OUTPUT_STREAM_TDATA : out std_logic_vector(31 downto 0);
      OUTPUT_STREAM_TKEEP : out std_logic_vector(3 downto 0);
      OUTPUT_STREAM_TSTRB : out std_logic_vector(3 downto 0);
      OUTPUT_STREAM_TUSER : out std_logic_vector(0 to 0);
      OUTPUT_STREAM_TLAST : out std_logic_vector(0 to 0);
      OUTPUT_STREAM_TID : out std_logic_vector(0 to 0);
      OUTPUT_STREAM_TDEST : out std_logic_vector(0 to 0)
    );
  end component;

  component system_filter_vdma_wrapper is
    port (
      s_axi_lite_aclk : in std_logic;
      m_axi_sg_aclk : in std_logic;
      m_axi_mm2s_aclk : in std_logic;
      m_axi_s2mm_aclk : in std_logic;
      m_axis_mm2s_aclk : in std_logic;
      s_axis_s2mm_aclk : in std_logic;
      axi_resetn : in std_logic;
      s_axi_lite_awvalid : in std_logic;
      s_axi_lite_awready : out std_logic;
      s_axi_lite_awaddr : in std_logic_vector(8 downto 0);
      s_axi_lite_wvalid : in std_logic;
      s_axi_lite_wready : out std_logic;
      s_axi_lite_wdata : in std_logic_vector(31 downto 0);
      s_axi_lite_bresp : out std_logic_vector(1 downto 0);
      s_axi_lite_bvalid : out std_logic;
      s_axi_lite_bready : in std_logic;
      s_axi_lite_arvalid : in std_logic;
      s_axi_lite_arready : out std_logic;
      s_axi_lite_araddr : in std_logic_vector(8 downto 0);
      s_axi_lite_rvalid : out std_logic;
      s_axi_lite_rready : in std_logic;
      s_axi_lite_rdata : out std_logic_vector(31 downto 0);
      s_axi_lite_rresp : out std_logic_vector(1 downto 0);
      m_axi_sg_araddr : out std_logic_vector(31 downto 0);
      m_axi_sg_arlen : out std_logic_vector(7 downto 0);
      m_axi_sg_arsize : out std_logic_vector(2 downto 0);
      m_axi_sg_arburst : out std_logic_vector(1 downto 0);
      m_axi_sg_arprot : out std_logic_vector(2 downto 0);
      m_axi_sg_arcache : out std_logic_vector(3 downto 0);
      m_axi_sg_arvalid : out std_logic;
      m_axi_sg_arready : in std_logic;
      m_axi_sg_rdata : in std_logic_vector(31 downto 0);
      m_axi_sg_rresp : in std_logic_vector(1 downto 0);
      m_axi_sg_rlast : in std_logic;
      m_axi_sg_rvalid : in std_logic;
      m_axi_sg_rready : out std_logic;
      m_axi_mm2s_araddr : out std_logic_vector(31 downto 0);
      m_axi_mm2s_arlen : out std_logic_vector(7 downto 0);
      m_axi_mm2s_arsize : out std_logic_vector(2 downto 0);
      m_axi_mm2s_arburst : out std_logic_vector(1 downto 0);
      m_axi_mm2s_arprot : out std_logic_vector(2 downto 0);
      m_axi_mm2s_arcache : out std_logic_vector(3 downto 0);
      m_axi_mm2s_arvalid : out std_logic;
      m_axi_mm2s_arready : in std_logic;
      m_axi_mm2s_rdata : in std_logic_vector(63 downto 0);
      m_axi_mm2s_rresp : in std_logic_vector(1 downto 0);
      m_axi_mm2s_rlast : in std_logic;
      m_axi_mm2s_rvalid : in std_logic;
      m_axi_mm2s_rready : out std_logic;
      mm2s_prmry_reset_out_n : out std_logic;
      m_axis_mm2s_tdata : out std_logic_vector(31 downto 0);
      m_axis_mm2s_tkeep : out std_logic_vector(3 downto 0);
      m_axis_mm2s_tvalid : out std_logic;
      m_axis_mm2s_tready : in std_logic;
      m_axis_mm2s_tlast : out std_logic;
      m_axis_mm2s_tuser : out std_logic_vector(0 to 0);
      m_axi_s2mm_awaddr : out std_logic_vector(31 downto 0);
      m_axi_s2mm_awlen : out std_logic_vector(7 downto 0);
      m_axi_s2mm_awsize : out std_logic_vector(2 downto 0);
      m_axi_s2mm_awburst : out std_logic_vector(1 downto 0);
      m_axi_s2mm_awprot : out std_logic_vector(2 downto 0);
      m_axi_s2mm_awcache : out std_logic_vector(3 downto 0);
      m_axi_s2mm_awvalid : out std_logic;
      m_axi_s2mm_awready : in std_logic;
      m_axi_s2mm_wdata : out std_logic_vector(63 downto 0);
      m_axi_s2mm_wstrb : out std_logic_vector(7 downto 0);
      m_axi_s2mm_wlast : out std_logic;
      m_axi_s2mm_wvalid : out std_logic;
      m_axi_s2mm_wready : in std_logic;
      m_axi_s2mm_bresp : in std_logic_vector(1 downto 0);
      m_axi_s2mm_bvalid : in std_logic;
      m_axi_s2mm_bready : out std_logic;
      s2mm_prmry_reset_out_n : out std_logic;
      s_axis_s2mm_tdata : in std_logic_vector(31 downto 0);
      s_axis_s2mm_tkeep : in std_logic_vector(3 downto 0);
      s_axis_s2mm_tvalid : in std_logic;
      s_axis_s2mm_tready : out std_logic;
      s_axis_s2mm_tlast : in std_logic;
      s_axis_s2mm_tuser : in std_logic_vector(0 to 0);
      mm2s_fsync : in std_logic;
      mm2s_frame_ptr_in : in std_logic_vector(5 downto 0);
      mm2s_frame_ptr_out : out std_logic_vector(5 downto 0);
      mm2s_fsync_out : out std_logic;
      mm2s_prmtr_update : out std_logic;
      mm2s_buffer_empty : out std_logic;
      mm2s_buffer_almost_empty : out std_logic;
      s2mm_fsync : in std_logic;
      s2mm_frame_ptr_in : in std_logic_vector(5 downto 0);
      s2mm_frame_ptr_out : out std_logic_vector(5 downto 0);
      s2mm_fsync_out : out std_logic;
      s2mm_buffer_full : out std_logic;
      s2mm_buffer_almost_full : out std_logic;
      s2mm_prmtr_update : out std_logic;
      mm2s_introut : out std_logic;
      s2mm_introut : out std_logic;
      axi_vdma_tstvec : out std_logic_vector(63 downto 0)
    );
  end component;

  component system_logicvc_0_wrapper is
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
  end component;

  component system_perf_mon_hp0_hp2_wrapper is
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector(15 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector(15 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      SLOT_0_AXI_ACLK : in std_logic;
      SLOT_0_AXI_ARESETN : in std_logic;
      SLOT_0_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_0_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_0_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_0_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_0_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_0_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_0_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_0_AXI_AWLOCK : in std_logic;
      SLOT_0_AXI_AWVALID : in std_logic;
      SLOT_0_AXI_AWREADY : in std_logic;
      SLOT_0_AXI_WDATA : in std_logic_vector(63 downto 0);
      SLOT_0_AXI_WSTRB : in std_logic_vector(7 downto 0);
      SLOT_0_AXI_WLAST : in std_logic;
      SLOT_0_AXI_WVALID : in std_logic;
      SLOT_0_AXI_WREADY : in std_logic;
      SLOT_0_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_0_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_0_AXI_BVALID : in std_logic;
      SLOT_0_AXI_BREADY : in std_logic;
      SLOT_0_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_0_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_0_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_0_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_0_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_0_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_0_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_0_AXI_ARLOCK : in std_logic;
      SLOT_0_AXI_ARVALID : in std_logic;
      SLOT_0_AXI_ARREADY : in std_logic;
      SLOT_0_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_0_AXI_RDATA : in std_logic_vector(63 downto 0);
      SLOT_0_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_0_AXI_RLAST : in std_logic;
      SLOT_0_AXI_RVALID : in std_logic;
      SLOT_0_AXI_RREADY : in std_logic;
      SLOT_0_AXIS_ACLK : in std_logic;
      SLOT_0_AXIS_ARESETN : in std_logic;
      SLOT_0_AXIS_TVALID : in std_logic;
      SLOT_0_AXIS_TREADY : in std_logic;
      SLOT_0_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_0_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_0_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_0_AXIS_TLAST : in std_logic;
      SLOT_0_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_0_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_0_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_1_AXI_ACLK : in std_logic;
      SLOT_1_AXI_ARESETN : in std_logic;
      SLOT_1_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_1_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_1_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_1_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_1_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_1_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_1_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_1_AXI_AWLOCK : in std_logic;
      SLOT_1_AXI_AWVALID : in std_logic;
      SLOT_1_AXI_AWREADY : in std_logic;
      SLOT_1_AXI_WDATA : in std_logic_vector(63 downto 0);
      SLOT_1_AXI_WSTRB : in std_logic_vector(7 downto 0);
      SLOT_1_AXI_WLAST : in std_logic;
      SLOT_1_AXI_WVALID : in std_logic;
      SLOT_1_AXI_WREADY : in std_logic;
      SLOT_1_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_1_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_1_AXI_BVALID : in std_logic;
      SLOT_1_AXI_BREADY : in std_logic;
      SLOT_1_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_1_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_1_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_1_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_1_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_1_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_1_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_1_AXI_ARLOCK : in std_logic;
      SLOT_1_AXI_ARVALID : in std_logic;
      SLOT_1_AXI_ARREADY : in std_logic;
      SLOT_1_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_1_AXI_RDATA : in std_logic_vector(63 downto 0);
      SLOT_1_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_1_AXI_RLAST : in std_logic;
      SLOT_1_AXI_RVALID : in std_logic;
      SLOT_1_AXI_RREADY : in std_logic;
      SLOT_1_AXIS_ACLK : in std_logic;
      SLOT_1_AXIS_ARESETN : in std_logic;
      SLOT_1_AXIS_TVALID : in std_logic;
      SLOT_1_AXIS_TREADY : in std_logic;
      SLOT_1_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_1_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_1_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_1_AXIS_TLAST : in std_logic;
      SLOT_1_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_1_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_1_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_2_AXI_ACLK : in std_logic;
      SLOT_2_AXI_ARESETN : in std_logic;
      SLOT_2_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_2_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_2_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_2_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_2_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_2_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_2_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_2_AXI_AWLOCK : in std_logic;
      SLOT_2_AXI_AWVALID : in std_logic;
      SLOT_2_AXI_AWREADY : in std_logic;
      SLOT_2_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_2_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_2_AXI_WLAST : in std_logic;
      SLOT_2_AXI_WVALID : in std_logic;
      SLOT_2_AXI_WREADY : in std_logic;
      SLOT_2_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_2_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_2_AXI_BVALID : in std_logic;
      SLOT_2_AXI_BREADY : in std_logic;
      SLOT_2_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_2_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_2_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_2_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_2_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_2_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_2_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_2_AXI_ARLOCK : in std_logic;
      SLOT_2_AXI_ARVALID : in std_logic;
      SLOT_2_AXI_ARREADY : in std_logic;
      SLOT_2_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_2_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_2_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_2_AXI_RLAST : in std_logic;
      SLOT_2_AXI_RVALID : in std_logic;
      SLOT_2_AXI_RREADY : in std_logic;
      SLOT_2_AXIS_ACLK : in std_logic;
      SLOT_2_AXIS_ARESETN : in std_logic;
      SLOT_2_AXIS_TVALID : in std_logic;
      SLOT_2_AXIS_TREADY : in std_logic;
      SLOT_2_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_2_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_2_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_2_AXIS_TLAST : in std_logic;
      SLOT_2_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_2_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_2_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_3_AXI_ACLK : in std_logic;
      SLOT_3_AXI_ARESETN : in std_logic;
      SLOT_3_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_3_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_3_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_3_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_3_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_3_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_3_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_3_AXI_AWLOCK : in std_logic;
      SLOT_3_AXI_AWVALID : in std_logic;
      SLOT_3_AXI_AWREADY : in std_logic;
      SLOT_3_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_3_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_3_AXI_WLAST : in std_logic;
      SLOT_3_AXI_WVALID : in std_logic;
      SLOT_3_AXI_WREADY : in std_logic;
      SLOT_3_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_3_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_3_AXI_BVALID : in std_logic;
      SLOT_3_AXI_BREADY : in std_logic;
      SLOT_3_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_3_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_3_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_3_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_3_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_3_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_3_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_3_AXI_ARLOCK : in std_logic;
      SLOT_3_AXI_ARVALID : in std_logic;
      SLOT_3_AXI_ARREADY : in std_logic;
      SLOT_3_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_3_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_3_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_3_AXI_RLAST : in std_logic;
      SLOT_3_AXI_RVALID : in std_logic;
      SLOT_3_AXI_RREADY : in std_logic;
      SLOT_3_AXIS_ACLK : in std_logic;
      SLOT_3_AXIS_ARESETN : in std_logic;
      SLOT_3_AXIS_TVALID : in std_logic;
      SLOT_3_AXIS_TREADY : in std_logic;
      SLOT_3_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_3_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_3_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_3_AXIS_TLAST : in std_logic;
      SLOT_3_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_3_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_3_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_4_AXI_ACLK : in std_logic;
      SLOT_4_AXI_ARESETN : in std_logic;
      SLOT_4_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_4_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_4_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_4_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_4_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_4_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_4_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_4_AXI_AWLOCK : in std_logic;
      SLOT_4_AXI_AWVALID : in std_logic;
      SLOT_4_AXI_AWREADY : in std_logic;
      SLOT_4_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_4_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_4_AXI_WLAST : in std_logic;
      SLOT_4_AXI_WVALID : in std_logic;
      SLOT_4_AXI_WREADY : in std_logic;
      SLOT_4_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_4_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_4_AXI_BVALID : in std_logic;
      SLOT_4_AXI_BREADY : in std_logic;
      SLOT_4_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_4_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_4_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_4_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_4_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_4_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_4_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_4_AXI_ARLOCK : in std_logic;
      SLOT_4_AXI_ARVALID : in std_logic;
      SLOT_4_AXI_ARREADY : in std_logic;
      SLOT_4_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_4_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_4_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_4_AXI_RLAST : in std_logic;
      SLOT_4_AXI_RVALID : in std_logic;
      SLOT_4_AXI_RREADY : in std_logic;
      SLOT_4_AXIS_ACLK : in std_logic;
      SLOT_4_AXIS_ARESETN : in std_logic;
      SLOT_4_AXIS_TVALID : in std_logic;
      SLOT_4_AXIS_TREADY : in std_logic;
      SLOT_4_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_4_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_4_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_4_AXIS_TLAST : in std_logic;
      SLOT_4_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_4_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_4_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_5_AXI_ACLK : in std_logic;
      SLOT_5_AXI_ARESETN : in std_logic;
      SLOT_5_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_5_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_5_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_5_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_5_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_5_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_5_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_5_AXI_AWLOCK : in std_logic;
      SLOT_5_AXI_AWVALID : in std_logic;
      SLOT_5_AXI_AWREADY : in std_logic;
      SLOT_5_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_5_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_5_AXI_WLAST : in std_logic;
      SLOT_5_AXI_WVALID : in std_logic;
      SLOT_5_AXI_WREADY : in std_logic;
      SLOT_5_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_5_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_5_AXI_BVALID : in std_logic;
      SLOT_5_AXI_BREADY : in std_logic;
      SLOT_5_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_5_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_5_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_5_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_5_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_5_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_5_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_5_AXI_ARLOCK : in std_logic;
      SLOT_5_AXI_ARVALID : in std_logic;
      SLOT_5_AXI_ARREADY : in std_logic;
      SLOT_5_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_5_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_5_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_5_AXI_RLAST : in std_logic;
      SLOT_5_AXI_RVALID : in std_logic;
      SLOT_5_AXI_RREADY : in std_logic;
      SLOT_5_AXIS_ACLK : in std_logic;
      SLOT_5_AXIS_ARESETN : in std_logic;
      SLOT_5_AXIS_TVALID : in std_logic;
      SLOT_5_AXIS_TREADY : in std_logic;
      SLOT_5_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_5_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_5_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_5_AXIS_TLAST : in std_logic;
      SLOT_5_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_5_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_5_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_6_AXI_ACLK : in std_logic;
      SLOT_6_AXI_ARESETN : in std_logic;
      SLOT_6_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_6_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_6_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_6_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_6_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_6_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_6_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_6_AXI_AWLOCK : in std_logic;
      SLOT_6_AXI_AWVALID : in std_logic;
      SLOT_6_AXI_AWREADY : in std_logic;
      SLOT_6_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_6_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_6_AXI_WLAST : in std_logic;
      SLOT_6_AXI_WVALID : in std_logic;
      SLOT_6_AXI_WREADY : in std_logic;
      SLOT_6_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_6_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_6_AXI_BVALID : in std_logic;
      SLOT_6_AXI_BREADY : in std_logic;
      SLOT_6_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_6_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_6_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_6_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_6_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_6_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_6_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_6_AXI_ARLOCK : in std_logic;
      SLOT_6_AXI_ARVALID : in std_logic;
      SLOT_6_AXI_ARREADY : in std_logic;
      SLOT_6_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_6_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_6_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_6_AXI_RLAST : in std_logic;
      SLOT_6_AXI_RVALID : in std_logic;
      SLOT_6_AXI_RREADY : in std_logic;
      SLOT_6_AXIS_ACLK : in std_logic;
      SLOT_6_AXIS_ARESETN : in std_logic;
      SLOT_6_AXIS_TVALID : in std_logic;
      SLOT_6_AXIS_TREADY : in std_logic;
      SLOT_6_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_6_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_6_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_6_AXIS_TLAST : in std_logic;
      SLOT_6_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_6_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_6_AXIS_TUSER : in std_logic_vector(0 downto 0);
      SLOT_7_AXI_ACLK : in std_logic;
      SLOT_7_AXI_ARESETN : in std_logic;
      SLOT_7_AXI_AWID : in std_logic_vector(0 downto 0);
      SLOT_7_AXI_AWADDR : in std_logic_vector(31 downto 0);
      SLOT_7_AXI_AWLEN : in std_logic_vector(7 downto 0);
      SLOT_7_AXI_AWPROT : in std_logic_vector(2 downto 0);
      SLOT_7_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      SLOT_7_AXI_AWBURST : in std_logic_vector(1 downto 0);
      SLOT_7_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      SLOT_7_AXI_AWLOCK : in std_logic;
      SLOT_7_AXI_AWVALID : in std_logic;
      SLOT_7_AXI_AWREADY : in std_logic;
      SLOT_7_AXI_WDATA : in std_logic_vector(31 downto 0);
      SLOT_7_AXI_WSTRB : in std_logic_vector(3 downto 0);
      SLOT_7_AXI_WLAST : in std_logic;
      SLOT_7_AXI_WVALID : in std_logic;
      SLOT_7_AXI_WREADY : in std_logic;
      SLOT_7_AXI_BID : in std_logic_vector(0 downto 0);
      SLOT_7_AXI_BRESP : in std_logic_vector(1 downto 0);
      SLOT_7_AXI_BVALID : in std_logic;
      SLOT_7_AXI_BREADY : in std_logic;
      SLOT_7_AXI_ARID : in std_logic_vector(0 downto 0);
      SLOT_7_AXI_ARADDR : in std_logic_vector(31 downto 0);
      SLOT_7_AXI_ARLEN : in std_logic_vector(7 downto 0);
      SLOT_7_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      SLOT_7_AXI_ARBURST : in std_logic_vector(1 downto 0);
      SLOT_7_AXI_ARPROT : in std_logic_vector(2 downto 0);
      SLOT_7_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      SLOT_7_AXI_ARLOCK : in std_logic;
      SLOT_7_AXI_ARVALID : in std_logic;
      SLOT_7_AXI_ARREADY : in std_logic;
      SLOT_7_AXI_RID : in std_logic_vector(0 downto 0);
      SLOT_7_AXI_RDATA : in std_logic_vector(31 downto 0);
      SLOT_7_AXI_RRESP : in std_logic_vector(1 downto 0);
      SLOT_7_AXI_RLAST : in std_logic;
      SLOT_7_AXI_RVALID : in std_logic;
      SLOT_7_AXI_RREADY : in std_logic;
      SLOT_7_AXIS_ACLK : in std_logic;
      SLOT_7_AXIS_ARESETN : in std_logic;
      SLOT_7_AXIS_TVALID : in std_logic;
      SLOT_7_AXIS_TREADY : in std_logic;
      SLOT_7_AXIS_TDATA : in std_logic_vector(31 downto 0);
      SLOT_7_AXIS_TSTRB : in std_logic_vector(3 downto 0);
      SLOT_7_AXIS_TKEEP : in std_logic_vector(3 downto 0);
      SLOT_7_AXIS_TLAST : in std_logic;
      SLOT_7_AXIS_TID : in std_logic_vector(0 downto 0);
      SLOT_7_AXIS_TDEST : in std_logic_vector(0 downto 0);
      SLOT_7_AXIS_TUSER : in std_logic_vector(0 downto 0);
      EXT_CLK_0 : in std_logic;
      EXT_RSTN_0 : in std_logic;
      EXT_EVENT_0_CNT_START : in std_logic;
      EXT_EVENT_0_CNT_STOP : in std_logic;
      EXT_EVENT_0 : in std_logic;
      EXT_CLK_1 : in std_logic;
      EXT_RSTN_1 : in std_logic;
      EXT_EVENT_1_CNT_START : in std_logic;
      EXT_EVENT_1_CNT_STOP : in std_logic;
      EXT_EVENT_1 : in std_logic;
      EXT_CLK_2 : in std_logic;
      EXT_RSTN_2 : in std_logic;
      EXT_EVENT_2_CNT_START : in std_logic;
      EXT_EVENT_2_CNT_STOP : in std_logic;
      EXT_EVENT_2 : in std_logic;
      EXT_CLK_3 : in std_logic;
      EXT_RSTN_3 : in std_logic;
      EXT_EVENT_3_CNT_START : in std_logic;
      EXT_EVENT_3_CNT_STOP : in std_logic;
      EXT_EVENT_3 : in std_logic;
      EXT_CLK_4 : in std_logic;
      EXT_RSTN_4 : in std_logic;
      EXT_EVENT_4_CNT_START : in std_logic;
      EXT_EVENT_4_CNT_STOP : in std_logic;
      EXT_EVENT_4 : in std_logic;
      EXT_CLK_5 : in std_logic;
      EXT_RSTN_5 : in std_logic;
      EXT_EVENT_5_CNT_START : in std_logic;
      EXT_EVENT_5_CNT_STOP : in std_logic;
      EXT_EVENT_5 : in std_logic;
      EXT_CLK_6 : in std_logic;
      EXT_RSTN_6 : in std_logic;
      EXT_EVENT_6_CNT_START : in std_logic;
      EXT_EVENT_6_CNT_STOP : in std_logic;
      EXT_EVENT_6 : in std_logic;
      EXT_CLK_7 : in std_logic;
      EXT_RSTN_7 : in std_logic;
      EXT_EVENT_7_CNT_START : in std_logic;
      EXT_EVENT_7_CNT_STOP : in std_logic;
      EXT_EVENT_7 : in std_logic;
      SLOT_0_EXT_TRIG : in std_logic;
      SLOT_1_EXT_TRIG : in std_logic;
      SLOT_2_EXT_TRIG : in std_logic;
      SLOT_3_EXT_TRIG : in std_logic;
      SLOT_4_EXT_TRIG : in std_logic;
      SLOT_5_EXT_TRIG : in std_logic;
      SLOT_6_EXT_TRIG : in std_logic;
      SLOT_7_EXT_TRIG : in std_logic;
      CAPTURE_EVENT : in std_logic;
      RESET_EVENT : in std_logic;
      M_AXIS_ACLK : in std_logic;
      M_AXIS_ARESETN : in std_logic;
      M_AXIS_TDATA : out std_logic_vector(79 downto 0);
      M_AXIS_TSTRB : out std_logic_vector(9 downto 0);
      M_AXIS_TVALID : out std_logic;
      M_AXIS_TID : out std_logic_vector(0 downto 0);
      M_AXIS_TREADY : in std_logic;
      CORE_ACLK : in std_logic;
      CORE_ARESETN : in std_logic;
      INTERRUPT : out std_logic
    );
  end component;

  component IBUFGDS is
    port (
      I : in std_logic;
      IB : in std_logic;
      O : out std_logic
    );
  end component;

  component IOBUF is
    port (
      I : in std_logic;
      IO : inout std_logic;
      O : out std_logic;
      T : in std_logic
    );
  end component;


  -- Internal signals

  signal CVC_DISPLAY_blank_o : std_logic;
  signal CVC_DISPLAY_d_pix_o : std_logic_vector(15 downto 0);
  signal CVC_DISPLAY_hsync_o : std_logic;
  signal CVC_DISPLAY_interrupt : std_logic;
  signal CVC_DISPLAY_pix_clk_o : std_logic;
  signal CVC_DISPLAY_vsync_o : std_logic;
  signal FCLK_RESET_N_i : std_logic;
  signal FILTER_0_interrupt : std_logic;
  signal FILTER_DMA_MM2S_TDATA : std_logic_vector(31 downto 0);
  signal FILTER_DMA_MM2S_TKEEP : std_logic_vector(3 downto 0);
  signal FILTER_DMA_MM2S_TLAST : std_logic_vector(0 to 0);
  signal FILTER_DMA_MM2S_TREADY : std_logic;
  signal FILTER_DMA_MM2S_TUSER : std_logic_vector(0 to 0);
  signal FILTER_DMA_MM2S_TVALID : std_logic;
  signal FILTER_DMA_S2MM_TDATA : std_logic_vector(31 downto 0);
  signal FILTER_DMA_S2MM_TKEEP : std_logic_vector(3 downto 0);
  signal FILTER_DMA_S2MM_TLAST : std_logic_vector(0 to 0);
  signal FILTER_DMA_S2MM_TREADY : std_logic;
  signal FILTER_DMA_S2MM_TUSER : std_logic_vector(0 to 0);
  signal FILTER_DMA_S2MM_TVALID : std_logic;
  signal FILTER_RST : std_logic_vector(0 to 0);
  signal FILTER_RST_O : std_logic_vector(0 to 0);
  signal FILTER_VDMA_mm2s_introut : std_logic;
  signal FILTER_VDMA_s2mm_introut : std_logic;
  signal FPGA_CLK : std_logic;
  signal TPG_RST : std_logic_vector(0 to 0);
  signal TPG_RST_O : std_logic_vector(0 to 0);
  signal TPG_S2MM_s2mm_prmry_reset_out_n : std_logic;
  signal TPG_VDMA_s2mm_introut : std_logic;
  signal VIDEO_CLK : std_logic_vector(0 to 0);
  signal axi4_0_M_ARADDR : std_logic_vector(31 downto 0);
  signal axi4_0_M_ARBURST : std_logic_vector(1 downto 0);
  signal axi4_0_M_ARCACHE : std_logic_vector(3 downto 0);
  signal axi4_0_M_ARESETN : std_logic_vector(0 to 0);
  signal axi4_0_M_ARID : std_logic_vector(0 to 0);
  signal axi4_0_M_ARLEN : std_logic_vector(7 downto 0);
  signal axi4_0_M_ARLOCK : std_logic_vector(1 downto 0);
  signal axi4_0_M_ARPROT : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARQOS : std_logic_vector(3 downto 0);
  signal axi4_0_M_ARREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_ARSIZE : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_AWADDR : std_logic_vector(31 downto 0);
  signal axi4_0_M_AWBURST : std_logic_vector(1 downto 0);
  signal axi4_0_M_AWCACHE : std_logic_vector(3 downto 0);
  signal axi4_0_M_AWID : std_logic_vector(0 to 0);
  signal axi4_0_M_AWLEN : std_logic_vector(7 downto 0);
  signal axi4_0_M_AWLOCK : std_logic_vector(1 downto 0);
  signal axi4_0_M_AWPROT : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWQOS : std_logic_vector(3 downto 0);
  signal axi4_0_M_AWREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_AWSIZE : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_BID : std_logic_vector(0 to 0);
  signal axi4_0_M_BREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_BRESP : std_logic_vector(1 downto 0);
  signal axi4_0_M_BVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_RDATA : std_logic_vector(127 downto 0);
  signal axi4_0_M_RID : std_logic_vector(0 to 0);
  signal axi4_0_M_RLAST : std_logic_vector(0 to 0);
  signal axi4_0_M_RREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_RRESP : std_logic_vector(1 downto 0);
  signal axi4_0_M_RVALID : std_logic_vector(0 to 0);
  signal axi4_0_M_WDATA : std_logic_vector(127 downto 0);
  signal axi4_0_M_WID : std_logic_vector(0 to 0);
  signal axi4_0_M_WLAST : std_logic_vector(0 to 0);
  signal axi4_0_M_WREADY : std_logic_vector(0 to 0);
  signal axi4_0_M_WSTRB : std_logic_vector(15 downto 0);
  signal axi4_0_M_WVALID : std_logic_vector(0 to 0);
  signal axi4_0_S_ARADDR : std_logic_vector(63 downto 0);
  signal axi4_0_S_ARBURST : std_logic_vector(3 downto 0);
  signal axi4_0_S_ARCACHE : std_logic_vector(7 downto 0);
  signal axi4_0_S_ARESETN : std_logic_vector(1 downto 0);
  signal axi4_0_S_ARID : std_logic_vector(1 downto 0);
  signal axi4_0_S_ARLEN : std_logic_vector(15 downto 0);
  signal axi4_0_S_ARLOCK : std_logic_vector(3 downto 0);
  signal axi4_0_S_ARPROT : std_logic_vector(5 downto 0);
  signal axi4_0_S_ARQOS : std_logic_vector(7 downto 0);
  signal axi4_0_S_ARREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_ARSIZE : std_logic_vector(5 downto 0);
  signal axi4_0_S_ARVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_AWADDR : std_logic_vector(63 downto 0);
  signal axi4_0_S_AWBURST : std_logic_vector(3 downto 0);
  signal axi4_0_S_AWCACHE : std_logic_vector(7 downto 0);
  signal axi4_0_S_AWID : std_logic_vector(1 downto 0);
  signal axi4_0_S_AWLEN : std_logic_vector(15 downto 0);
  signal axi4_0_S_AWLOCK : std_logic_vector(3 downto 0);
  signal axi4_0_S_AWPROT : std_logic_vector(5 downto 0);
  signal axi4_0_S_AWQOS : std_logic_vector(7 downto 0);
  signal axi4_0_S_AWREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_AWSIZE : std_logic_vector(5 downto 0);
  signal axi4_0_S_AWVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_BID : std_logic_vector(1 downto 0);
  signal axi4_0_S_BREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_BRESP : std_logic_vector(3 downto 0);
  signal axi4_0_S_BVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_RDATA : std_logic_vector(255 downto 0);
  signal axi4_0_S_RID : std_logic_vector(1 downto 0);
  signal axi4_0_S_RLAST : std_logic_vector(1 downto 0);
  signal axi4_0_S_RREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_RRESP : std_logic_vector(3 downto 0);
  signal axi4_0_S_RVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_WDATA : std_logic_vector(255 downto 0);
  signal axi4_0_S_WLAST : std_logic_vector(1 downto 0);
  signal axi4_0_S_WREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_WSTRB : std_logic_vector(31 downto 0);
  signal axi4_0_S_WVALID : std_logic_vector(1 downto 0);
  signal axi4_1_M_ARADDR : std_logic_vector(31 downto 0);
  signal axi4_1_M_ARBURST : std_logic_vector(1 downto 0);
  signal axi4_1_M_ARCACHE : std_logic_vector(3 downto 0);
  signal axi4_1_M_ARESETN : std_logic_vector(0 to 0);
  signal axi4_1_M_ARID : std_logic_vector(0 to 0);
  signal axi4_1_M_ARLEN : std_logic_vector(7 downto 0);
  signal axi4_1_M_ARLOCK : std_logic_vector(1 downto 0);
  signal axi4_1_M_ARPROT : std_logic_vector(2 downto 0);
  signal axi4_1_M_ARQOS : std_logic_vector(3 downto 0);
  signal axi4_1_M_ARREADY : std_logic_vector(0 to 0);
  signal axi4_1_M_ARSIZE : std_logic_vector(2 downto 0);
  signal axi4_1_M_ARVALID : std_logic_vector(0 to 0);
  signal axi4_1_M_AWADDR : std_logic_vector(31 downto 0);
  signal axi4_1_M_AWBURST : std_logic_vector(1 downto 0);
  signal axi4_1_M_AWCACHE : std_logic_vector(3 downto 0);
  signal axi4_1_M_AWID : std_logic_vector(0 to 0);
  signal axi4_1_M_AWLEN : std_logic_vector(7 downto 0);
  signal axi4_1_M_AWLOCK : std_logic_vector(1 downto 0);
  signal axi4_1_M_AWPROT : std_logic_vector(2 downto 0);
  signal axi4_1_M_AWQOS : std_logic_vector(3 downto 0);
  signal axi4_1_M_AWREADY : std_logic_vector(0 to 0);
  signal axi4_1_M_AWSIZE : std_logic_vector(2 downto 0);
  signal axi4_1_M_AWVALID : std_logic_vector(0 to 0);
  signal axi4_1_M_BID : std_logic_vector(0 to 0);
  signal axi4_1_M_BREADY : std_logic_vector(0 to 0);
  signal axi4_1_M_BRESP : std_logic_vector(1 downto 0);
  signal axi4_1_M_BVALID : std_logic_vector(0 to 0);
  signal axi4_1_M_RDATA : std_logic_vector(63 downto 0);
  signal axi4_1_M_RID : std_logic_vector(0 to 0);
  signal axi4_1_M_RLAST : std_logic_vector(0 to 0);
  signal axi4_1_M_RREADY : std_logic_vector(0 to 0);
  signal axi4_1_M_RRESP : std_logic_vector(1 downto 0);
  signal axi4_1_M_RVALID : std_logic_vector(0 to 0);
  signal axi4_1_M_WDATA : std_logic_vector(63 downto 0);
  signal axi4_1_M_WID : std_logic_vector(0 to 0);
  signal axi4_1_M_WLAST : std_logic_vector(0 to 0);
  signal axi4_1_M_WREADY : std_logic_vector(0 to 0);
  signal axi4_1_M_WSTRB : std_logic_vector(7 downto 0);
  signal axi4_1_M_WVALID : std_logic_vector(0 to 0);
  signal axi4_1_S_ARADDR : std_logic_vector(63 downto 0);
  signal axi4_1_S_ARBURST : std_logic_vector(3 downto 0);
  signal axi4_1_S_ARCACHE : std_logic_vector(7 downto 0);
  signal axi4_1_S_ARLEN : std_logic_vector(15 downto 0);
  signal axi4_1_S_ARPROT : std_logic_vector(5 downto 0);
  signal axi4_1_S_ARREADY : std_logic_vector(1 downto 0);
  signal axi4_1_S_ARSIZE : std_logic_vector(5 downto 0);
  signal axi4_1_S_ARVALID : std_logic_vector(1 downto 0);
  signal axi4_1_S_AWADDR : std_logic_vector(63 downto 0);
  signal axi4_1_S_AWBURST : std_logic_vector(3 downto 0);
  signal axi4_1_S_AWCACHE : std_logic_vector(7 downto 0);
  signal axi4_1_S_AWLEN : std_logic_vector(15 downto 0);
  signal axi4_1_S_AWPROT : std_logic_vector(5 downto 0);
  signal axi4_1_S_AWREADY : std_logic_vector(1 downto 0);
  signal axi4_1_S_AWSIZE : std_logic_vector(5 downto 0);
  signal axi4_1_S_AWVALID : std_logic_vector(1 downto 0);
  signal axi4_1_S_BREADY : std_logic_vector(1 downto 0);
  signal axi4_1_S_BRESP : std_logic_vector(3 downto 0);
  signal axi4_1_S_BVALID : std_logic_vector(1 downto 0);
  signal axi4_1_S_RDATA : std_logic_vector(127 downto 0);
  signal axi4_1_S_RLAST : std_logic_vector(1 downto 0);
  signal axi4_1_S_RREADY : std_logic_vector(1 downto 0);
  signal axi4_1_S_RRESP : std_logic_vector(3 downto 0);
  signal axi4_1_S_RVALID : std_logic_vector(1 downto 0);
  signal axi4_1_S_WDATA : std_logic_vector(127 downto 0);
  signal axi4_1_S_WLAST : std_logic_vector(1 downto 0);
  signal axi4_1_S_WREADY : std_logic_vector(1 downto 0);
  signal axi4_1_S_WSTRB : std_logic_vector(15 downto 0);
  signal axi4_1_S_WVALID : std_logic_vector(1 downto 0);
  signal axi4_lite_M_ARADDR : std_logic_vector(319 downto 0);
  signal axi4_lite_M_ARESETN : std_logic_vector(9 downto 0);
  signal axi4_lite_M_ARREADY : std_logic_vector(9 downto 0);
  signal axi4_lite_M_ARVALID : std_logic_vector(9 downto 0);
  signal axi4_lite_M_AWADDR : std_logic_vector(319 downto 0);
  signal axi4_lite_M_AWREADY : std_logic_vector(9 downto 0);
  signal axi4_lite_M_AWVALID : std_logic_vector(9 downto 0);
  signal axi4_lite_M_BREADY : std_logic_vector(9 downto 0);
  signal axi4_lite_M_BRESP : std_logic_vector(19 downto 0);
  signal axi4_lite_M_BVALID : std_logic_vector(9 downto 0);
  signal axi4_lite_M_RDATA : std_logic_vector(319 downto 0);
  signal axi4_lite_M_RREADY : std_logic_vector(9 downto 0);
  signal axi4_lite_M_RRESP : std_logic_vector(19 downto 0);
  signal axi4_lite_M_RVALID : std_logic_vector(9 downto 0);
  signal axi4_lite_M_WDATA : std_logic_vector(319 downto 0);
  signal axi4_lite_M_WREADY : std_logic_vector(9 downto 0);
  signal axi4_lite_M_WSTRB : std_logic_vector(39 downto 0);
  signal axi4_lite_M_WVALID : std_logic_vector(9 downto 0);
  signal axi4_lite_S_ARADDR : std_logic_vector(31 downto 0);
  signal axi4_lite_S_ARBURST : std_logic_vector(1 downto 0);
  signal axi4_lite_S_ARCACHE : std_logic_vector(3 downto 0);
  signal axi4_lite_S_ARID : std_logic_vector(11 downto 0);
  signal axi4_lite_S_ARLEN : std_logic_vector(7 downto 0);
  signal axi4_lite_S_ARLOCK : std_logic_vector(1 downto 0);
  signal axi4_lite_S_ARPROT : std_logic_vector(2 downto 0);
  signal axi4_lite_S_ARQOS : std_logic_vector(3 downto 0);
  signal axi4_lite_S_ARREADY : std_logic_vector(0 to 0);
  signal axi4_lite_S_ARSIZE : std_logic_vector(2 downto 0);
  signal axi4_lite_S_ARVALID : std_logic_vector(0 to 0);
  signal axi4_lite_S_AWADDR : std_logic_vector(31 downto 0);
  signal axi4_lite_S_AWBURST : std_logic_vector(1 downto 0);
  signal axi4_lite_S_AWCACHE : std_logic_vector(3 downto 0);
  signal axi4_lite_S_AWID : std_logic_vector(11 downto 0);
  signal axi4_lite_S_AWLEN : std_logic_vector(7 downto 0);
  signal axi4_lite_S_AWLOCK : std_logic_vector(1 downto 0);
  signal axi4_lite_S_AWPROT : std_logic_vector(2 downto 0);
  signal axi4_lite_S_AWQOS : std_logic_vector(3 downto 0);
  signal axi4_lite_S_AWREADY : std_logic_vector(0 to 0);
  signal axi4_lite_S_AWSIZE : std_logic_vector(2 downto 0);
  signal axi4_lite_S_AWVALID : std_logic_vector(0 to 0);
  signal axi4_lite_S_BID : std_logic_vector(11 downto 0);
  signal axi4_lite_S_BREADY : std_logic_vector(0 to 0);
  signal axi4_lite_S_BRESP : std_logic_vector(1 downto 0);
  signal axi4_lite_S_BVALID : std_logic_vector(0 to 0);
  signal axi4_lite_S_RDATA : std_logic_vector(31 downto 0);
  signal axi4_lite_S_RID : std_logic_vector(11 downto 0);
  signal axi4_lite_S_RLAST : std_logic_vector(0 to 0);
  signal axi4_lite_S_RREADY : std_logic_vector(0 to 0);
  signal axi4_lite_S_RRESP : std_logic_vector(1 downto 0);
  signal axi4_lite_S_RVALID : std_logic_vector(0 to 0);
  signal axi4_lite_S_WDATA : std_logic_vector(31 downto 0);
  signal axi4_lite_S_WID : std_logic_vector(11 downto 0);
  signal axi4_lite_S_WLAST : std_logic_vector(0 to 0);
  signal axi4_lite_S_WREADY : std_logic_vector(0 to 0);
  signal axi4_lite_S_WSTRB : std_logic_vector(3 downto 0);
  signal axi4_lite_S_WVALID : std_logic_vector(0 to 0);
  signal clk_75mhz : std_logic_vector(0 to 0);
  signal clk_150mhz : std_logic_vector(0 to 0);
  signal de_int : std_logic_vector(0 to 0);
  signal dvi2axi_M_AXIS_VIDEO_tlast : std_logic;
  signal dvi2axi_M_AXIS_VIDEO_tready : std_logic;
  signal dvi2axi_M_AXIS_VIDEO_tuser : std_logic;
  signal dvi2axi_M_AXIS_VIDEO_tvalid : std_logic;
  signal emu_reset_n : std_logic_vector(0 to 0);
  signal fsync_from_tpg_0_vdma : std_logic;
  signal hsync_int : std_logic_vector(0 to 0);
  signal net_fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin : std_logic;
  signal net_fmc_imageon_hdmi_in_0_io_hdmii_video_pin : std_logic_vector(15 downto 0);
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd2 : std_logic_vector(1 downto 0);
  signal net_gnd3 : std_logic_vector(2 downto 0);
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal net_gnd5 : std_logic_vector(4 downto 0);
  signal net_gnd6 : std_logic_vector(5 downto 0);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd10 : std_logic_vector(9 downto 0);
  signal net_gnd12 : std_logic_vector(11 downto 0);
  signal net_gnd16 : std_logic_vector(0 to 15);
  signal net_gnd24 : std_logic_vector(23 downto 0);
  signal net_gnd32 : std_logic_vector(31 downto 0);
  signal net_gnd64 : std_logic_vector(63 downto 0);
  signal net_gnd120 : std_logic_vector(119 downto 0);
  signal net_vcc0 : std_logic;
  signal net_vcc4 : std_logic_vector(3 downto 0);
  signal pgassign1 : std_logic_vector(0 to 0);
  signal pgassign2 : std_logic;
  signal pgassign3 : std_logic;
  signal pgassign4 : std_logic_vector(0 to 7);
  signal pgassign5 : std_logic_vector(4 downto 0);
  signal pgassign6 : std_logic_vector(1 downto 0);
  signal pgassign7 : std_logic_vector(1 downto 0);
  signal pgassign8 : std_logic_vector(9 downto 0);
  signal pgassign9 : std_logic_vector(0 to 2);
  signal pgassign10 : std_logic_vector(0 to 1);
  signal pgassign11 : std_logic_vector(15 downto 0);
  signal pgassign12 : std_logic_vector(31 downto 0);
  signal pgassign13 : std_logic_vector(2 downto 0);
  signal proc_sys_reset_0_Dcm_locked : std_logic;
  signal proc_sys_reset_1_BUS_STRUCT_RESET : std_logic_vector(0 to 0);
  signal ps7_0_GPIO_O : std_logic_vector(7 downto 0);
  signal ps7_0_I2C1_SCL_I : std_logic;
  signal ps7_0_I2C1_SCL_O : std_logic;
  signal ps7_0_I2C1_SCL_T : std_logic;
  signal ps7_0_I2C1_SDA_I : std_logic;
  signal ps7_0_I2C1_SDA_O : std_logic;
  signal ps7_0_I2C1_SDA_T : std_logic;
  signal tdata : std_logic_vector(15 downto 0);
  signal timebase_0_XSVI_OUT_active_video : std_logic_vector(0 to 0);
  signal timebase_0_XSVI_OUT_hsync : std_logic_vector(0 to 0);
  signal timebase_0_XSVI_OUT_vsync : std_logic_vector(0 to 0);
  signal v_cresample_0_M_AXIS_VIDEO_tdata : std_logic_vector(23 downto 0);
  signal v_cresample_0_M_AXIS_VIDEO_tlast : std_logic;
  signal v_cresample_0_M_AXIS_VIDEO_tready : std_logic;
  signal v_cresample_0_M_AXIS_VIDEO_tuser : std_logic;
  signal v_cresample_0_M_AXIS_VIDEO_tvalid : std_logic;
  signal v_tpg_M_AXIS_VIDEO_tdata : std_logic_vector(15 downto 0);
  signal v_tpg_M_AXIS_VIDEO_tlast : std_logic;
  signal v_tpg_M_AXIS_VIDEO_tready : std_logic;
  signal v_tpg_M_AXIS_VIDEO_tuser : std_logic;
  signal v_tpg_M_AXIS_VIDEO_tvalid : std_logic;
  signal v_ycrcb2rgb_0_M_AXIS_VIDEO_tlast : std_logic;
  signal v_ycrcb2rgb_0_M_AXIS_VIDEO_tready : std_logic;
  signal v_ycrcb2rgb_0_M_AXIS_VIDEO_tuser : std_logic_vector(0 to 0);
  signal v_ycrcb2rgb_0_M_AXIS_VIDEO_tvalid : std_logic;
  signal video_clk_int : std_logic_vector(0 to 0);
  signal vsync_int : std_logic_vector(0 to 0);
  signal xsvi_active_video_o : std_logic_vector(0 to 0);
  signal xsvi_hblank : std_logic_vector(0 to 0);
  signal xsvi_vblank : std_logic_vector(0 to 0);
  signal xsvi_video_data_o : std_logic_vector(15 downto 0);
  signal ycrcb2rgb_axis_tdata : std_logic_vector(23 downto 0);

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system_ps7_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_axi4_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_axi4_1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_axi4_lite_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_clock_generator_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_proc_sys_reset_1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_tpg_swrst_ff_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_tpg_swrst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_filter_swrst_ff_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_filter_swrst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_video_mux_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_clk_detect_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_vtc_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_hdmi_in_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_tpg_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_vid_in_axi4s_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_cresample_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_yuv2rgb_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_tpg_vdma_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_filter_engine_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_filter_vdma_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_logicvc_0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_perf_mon_hp0_hp2_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  net_fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin <= fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin;
  net_fmc_imageon_hdmi_in_0_io_hdmii_video_pin <= fmc_imageon_hdmi_in_0_io_hdmii_video_pin;
  HDMI_O_data_pin <= CVC_DISPLAY_d_pix_o;
  HDMI_O_de_pin <= CVC_DISPLAY_blank_o;
  HDMI_O_hsync_pin <= CVC_DISPLAY_hsync_o;
  HDMI_O_vsync_pin <= CVC_DISPLAY_vsync_o;
  HDMI_O_clk_pin <= CVC_DISPLAY_pix_clk_o;
  fmc_imageon_iic_Rst_b_pin <= ps7_0_GPIO_O(6);
  pgassign2 <= '1';
  axi4_0_S_AWID(0 downto 0) <= B"0";
  axi4_0_S_AWLOCK(1 downto 0) <= B"00";
  axi4_0_S_AWQOS(3 downto 0) <= B"0000";
  axi4_0_S_ARID(0 downto 0) <= B"0";
  axi4_0_S_ARADDR(31 downto 0) <= B"00000000000000000000000000000000";
  axi4_0_S_ARLEN(7 downto 0) <= B"00000000";
  axi4_0_S_ARSIZE(2 downto 0) <= B"000";
  axi4_0_S_ARBURST(1 downto 0) <= B"00";
  axi4_0_S_ARLOCK(1 downto 0) <= B"00";
  axi4_0_S_ARCACHE(3 downto 0) <= B"0000";
  axi4_0_S_ARPROT(2 downto 0) <= B"000";
  axi4_0_S_ARQOS(3 downto 0) <= B"0000";
  axi4_0_S_ARVALID(0 downto 0) <= B"0";
  axi4_0_S_RREADY(0 downto 0) <= B"0";
  axi4_1_S_AWADDR(31 downto 0) <= B"00000000000000000000000000000000";
  axi4_1_S_AWLEN(7 downto 0) <= B"00000000";
  axi4_1_S_AWSIZE(2 downto 0) <= B"000";
  axi4_1_S_AWBURST(1 downto 0) <= B"00";
  axi4_1_S_AWCACHE(3 downto 0) <= B"0000";
  axi4_1_S_AWPROT(2 downto 0) <= B"000";
  axi4_1_S_AWVALID(0 downto 0) <= B"0";
  axi4_1_S_WDATA(63 downto 0) <= B"0000000000000000000000000000000000000000000000000000000000000000";
  axi4_1_S_WSTRB(7 downto 0) <= B"00000000";
  axi4_1_S_WLAST(0 downto 0) <= B"0";
  axi4_1_S_WVALID(0 downto 0) <= B"0";
  axi4_1_S_BREADY(0 downto 0) <= B"0";
  axi4_1_S_ARADDR(63 downto 32) <= B"00000000000000000000000000000000";
  axi4_1_S_ARLEN(15 downto 8) <= B"00000000";
  axi4_1_S_ARSIZE(5 downto 3) <= B"000";
  axi4_1_S_ARBURST(3 downto 2) <= B"00";
  axi4_1_S_ARCACHE(7 downto 4) <= B"0000";
  axi4_1_S_ARPROT(5 downto 3) <= B"000";
  axi4_1_S_ARVALID(1 downto 1) <= B"0";
  axi4_1_S_RREADY(1 downto 1) <= B"0";
  pgassign3 <= '0';
  pgassign4(0 to 7) <= X"ff";
  pgassign1(0) <= fmc_imageon_hdmi_in_0_clk_pin;
  pgassign5(4) <= CVC_DISPLAY_interrupt;
  pgassign5(3) <= TPG_VDMA_s2mm_introut;
  pgassign5(2) <= FILTER_VDMA_s2mm_introut;
  pgassign5(1) <= FILTER_VDMA_mm2s_introut;
  pgassign5(0) <= FILTER_0_interrupt;
  pgassign6(1 downto 1) <= clk_150mhz(0 to 0);
  pgassign6(0 downto 0) <= clk_150mhz(0 to 0);
  pgassign7(1 downto 1) <= clk_150mhz(0 to 0);
  pgassign7(0 downto 0) <= clk_150mhz(0 to 0);
  pgassign8(9 downto 9) <= clk_75mhz(0 to 0);
  pgassign8(8 downto 8) <= clk_75mhz(0 to 0);
  pgassign8(7 downto 7) <= clk_75mhz(0 to 0);
  pgassign8(6 downto 6) <= clk_150mhz(0 to 0);
  pgassign8(5 downto 5) <= clk_75mhz(0 to 0);
  pgassign8(4 downto 4) <= clk_75mhz(0 to 0);
  pgassign8(3 downto 3) <= clk_75mhz(0 to 0);
  pgassign8(2 downto 2) <= clk_75mhz(0 to 0);
  pgassign8(1 downto 1) <= clk_75mhz(0 to 0);
  pgassign8(0 downto 0) <= clk_75mhz(0 to 0);
  pgassign9(0 to 0) <= emu_reset_n(0 to 0);
  pgassign9(1) <= TPG_S2MM_s2mm_prmry_reset_out_n;
  pgassign9(2 to 2) <= ps7_0_GPIO_O(0 downto 0);
  pgassign10(0 to 0) <= emu_reset_n(0 to 0);
  pgassign10(1 to 1) <= ps7_0_GPIO_O(1 downto 1);
  pgassign11(15 downto 8) <= tdata(7 downto 0);
  pgassign11(7 downto 0) <= tdata(15 downto 8);
  pgassign12(31 downto 24) <= X"ff";
  pgassign12(23 downto 16) <= ycrcb2rgb_axis_tdata(23 downto 16);
  pgassign12(15 downto 8) <= ycrcb2rgb_axis_tdata(7 downto 0);
  pgassign12(7 downto 0) <= ycrcb2rgb_axis_tdata(15 downto 8);
  pgassign13(2) <= '0';
  pgassign13(1) <= fsync_from_tpg_0_vdma;
  pgassign13(0) <= fsync_from_tpg_0_vdma;
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd10(9 downto 0) <= B"0000000000";
  net_gnd12(11 downto 0) <= B"000000000000";
  net_gnd120(119 downto 0) <= B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  net_gnd16(0 to 15) <= B"0000000000000000";
  net_gnd2(1 downto 0) <= B"00";
  net_gnd24(23 downto 0) <= B"000000000000000000000000";
  net_gnd3(2 downto 0) <= B"000";
  net_gnd32(31 downto 0) <= B"00000000000000000000000000000000";
  net_gnd4(3 downto 0) <= B"0000";
  net_gnd5(4 downto 0) <= B"00000";
  net_gnd6(5 downto 0) <= B"000000";
  net_gnd64(63 downto 0) <= B"0000000000000000000000000000000000000000000000000000000000000000";
  net_gnd8(7 downto 0) <= B"00000000";
  net_vcc0 <= '1';
  net_vcc4(3 downto 0) <= B"1111";

  ps7_0 : system_ps7_0_wrapper
    port map (
      CAN0_PHY_TX => open,
      CAN0_PHY_RX => net_gnd0,
      CAN1_PHY_TX => open,
      CAN1_PHY_RX => net_gnd0,
      ENET0_GMII_TX_EN => open,
      ENET0_GMII_TX_ER => open,
      ENET0_MDIO_MDC => open,
      ENET0_MDIO_O => open,
      ENET0_MDIO_T => open,
      ENET0_PTP_DELAY_REQ_RX => open,
      ENET0_PTP_DELAY_REQ_TX => open,
      ENET0_PTP_PDELAY_REQ_RX => open,
      ENET0_PTP_PDELAY_REQ_TX => open,
      ENET0_PTP_PDELAY_RESP_RX => open,
      ENET0_PTP_PDELAY_RESP_TX => open,
      ENET0_PTP_SYNC_FRAME_RX => open,
      ENET0_PTP_SYNC_FRAME_TX => open,
      ENET0_SOF_RX => open,
      ENET0_SOF_TX => open,
      ENET0_GMII_TXD => open,
      ENET0_GMII_COL => net_gnd0,
      ENET0_GMII_CRS => net_gnd0,
      ENET0_EXT_INTIN => net_gnd0,
      ENET0_GMII_RX_CLK => net_gnd0,
      ENET0_GMII_RX_DV => net_gnd0,
      ENET0_GMII_RX_ER => net_gnd0,
      ENET0_GMII_TX_CLK => net_gnd0,
      ENET0_MDIO_I => net_gnd0,
      ENET0_GMII_RXD => net_gnd8,
      ENET1_GMII_TX_EN => open,
      ENET1_GMII_TX_ER => open,
      ENET1_MDIO_MDC => open,
      ENET1_MDIO_O => open,
      ENET1_MDIO_T => open,
      ENET1_PTP_DELAY_REQ_RX => open,
      ENET1_PTP_DELAY_REQ_TX => open,
      ENET1_PTP_PDELAY_REQ_RX => open,
      ENET1_PTP_PDELAY_REQ_TX => open,
      ENET1_PTP_PDELAY_RESP_RX => open,
      ENET1_PTP_PDELAY_RESP_TX => open,
      ENET1_PTP_SYNC_FRAME_RX => open,
      ENET1_PTP_SYNC_FRAME_TX => open,
      ENET1_SOF_RX => open,
      ENET1_SOF_TX => open,
      ENET1_GMII_TXD => open,
      ENET1_GMII_COL => net_gnd0,
      ENET1_GMII_CRS => net_gnd0,
      ENET1_EXT_INTIN => net_gnd0,
      ENET1_GMII_RX_CLK => net_gnd0,
      ENET1_GMII_RX_DV => net_gnd0,
      ENET1_GMII_RX_ER => net_gnd0,
      ENET1_GMII_TX_CLK => net_gnd0,
      ENET1_MDIO_I => net_gnd0,
      ENET1_GMII_RXD => net_gnd8,
      GPIO_I => net_gnd8,
      GPIO_O => ps7_0_GPIO_O,
      GPIO_T => open,
      I2C0_SDA_I => net_gnd0,
      I2C0_SDA_O => open,
      I2C0_SDA_T => open,
      I2C0_SCL_I => net_gnd0,
      I2C0_SCL_O => open,
      I2C0_SCL_T => open,
      I2C1_SDA_I => ps7_0_I2C1_SDA_I,
      I2C1_SDA_O => ps7_0_I2C1_SDA_O,
      I2C1_SDA_T => ps7_0_I2C1_SDA_T,
      I2C1_SCL_I => ps7_0_I2C1_SCL_I,
      I2C1_SCL_O => ps7_0_I2C1_SCL_O,
      I2C1_SCL_T => ps7_0_I2C1_SCL_T,
      PJTAG_TCK => net_gnd0,
      PJTAG_TMS => net_gnd0,
      PJTAG_TD_I => net_gnd0,
      PJTAG_TD_T => open,
      PJTAG_TD_O => open,
      SDIO0_CLK => open,
      SDIO0_CLK_FB => net_gnd0,
      SDIO0_CMD_O => open,
      SDIO0_CMD_I => net_gnd0,
      SDIO0_CMD_T => open,
      SDIO0_DATA_I => net_gnd4,
      SDIO0_DATA_O => open,
      SDIO0_DATA_T => open,
      SDIO0_LED => open,
      SDIO0_CDN => net_gnd0,
      SDIO0_WP => net_gnd0,
      SDIO0_BUSPOW => open,
      SDIO0_BUSVOLT => open,
      SDIO1_CLK => open,
      SDIO1_CLK_FB => net_gnd0,
      SDIO1_CMD_O => open,
      SDIO1_CMD_I => net_gnd0,
      SDIO1_CMD_T => open,
      SDIO1_DATA_I => net_gnd4,
      SDIO1_DATA_O => open,
      SDIO1_DATA_T => open,
      SDIO1_LED => open,
      SDIO1_CDN => net_gnd0,
      SDIO1_WP => net_gnd0,
      SDIO1_BUSPOW => open,
      SDIO1_BUSVOLT => open,
      SPI0_SCLK_I => net_gnd0,
      SPI0_SCLK_O => open,
      SPI0_SCLK_T => open,
      SPI0_MOSI_I => net_gnd0,
      SPI0_MOSI_O => open,
      SPI0_MOSI_T => open,
      SPI0_MISO_I => net_gnd0,
      SPI0_MISO_O => open,
      SPI0_MISO_T => open,
      SPI0_SS_I => net_gnd0,
      SPI0_SS_O => open,
      SPI0_SS1_O => open,
      SPI0_SS2_O => open,
      SPI0_SS_T => open,
      SPI1_SCLK_I => net_gnd0,
      SPI1_SCLK_O => open,
      SPI1_SCLK_T => open,
      SPI1_MOSI_I => net_gnd0,
      SPI1_MOSI_O => open,
      SPI1_MOSI_T => open,
      SPI1_MISO_I => net_gnd0,
      SPI1_MISO_O => open,
      SPI1_MISO_T => open,
      SPI1_SS_I => net_gnd0,
      SPI1_SS_O => open,
      SPI1_SS1_O => open,
      SPI1_SS2_O => open,
      SPI1_SS_T => open,
      UART0_DTRN => open,
      UART0_RTSN => open,
      UART0_TX => open,
      UART0_CTSN => net_gnd0,
      UART0_DCDN => net_gnd0,
      UART0_DSRN => net_gnd0,
      UART0_RIN => net_gnd0,
      UART0_RX => net_gnd0,
      UART1_DTRN => open,
      UART1_RTSN => open,
      UART1_TX => open,
      UART1_CTSN => net_gnd0,
      UART1_DCDN => net_gnd0,
      UART1_DSRN => net_gnd0,
      UART1_RIN => net_gnd0,
      UART1_RX => net_gnd0,
      TTC0_WAVE0_OUT => open,
      TTC0_WAVE1_OUT => open,
      TTC0_WAVE2_OUT => open,
      TTC0_CLK0_IN => net_gnd0,
      TTC0_CLK1_IN => net_gnd0,
      TTC0_CLK2_IN => net_gnd0,
      TTC1_WAVE0_OUT => open,
      TTC1_WAVE1_OUT => open,
      TTC1_WAVE2_OUT => open,
      TTC1_CLK0_IN => net_gnd0,
      TTC1_CLK1_IN => net_gnd0,
      TTC1_CLK2_IN => net_gnd0,
      WDT_CLK_IN => net_gnd0,
      WDT_RST_OUT => open,
      TRACE_CLK => net_gnd0,
      TRACE_CTL => open,
      TRACE_DATA => open,
      USB0_PORT_INDCTL => open,
      USB1_PORT_INDCTL => open,
      USB0_VBUS_PWRSELECT => open,
      USB1_VBUS_PWRSELECT => open,
      USB0_VBUS_PWRFAULT => net_gnd0,
      USB1_VBUS_PWRFAULT => net_gnd0,
      SRAM_INTIN => net_gnd0,
      M_AXI_GP0_ARESETN => open,
      M_AXI_GP0_ARVALID => axi4_lite_S_ARVALID(0),
      M_AXI_GP0_AWVALID => axi4_lite_S_AWVALID(0),
      M_AXI_GP0_BREADY => axi4_lite_S_BREADY(0),
      M_AXI_GP0_RREADY => axi4_lite_S_RREADY(0),
      M_AXI_GP0_WLAST => axi4_lite_S_WLAST(0),
      M_AXI_GP0_WVALID => axi4_lite_S_WVALID(0),
      M_AXI_GP0_ARID => axi4_lite_S_ARID,
      M_AXI_GP0_AWID => axi4_lite_S_AWID,
      M_AXI_GP0_WID => axi4_lite_S_WID,
      M_AXI_GP0_ARBURST => axi4_lite_S_ARBURST,
      M_AXI_GP0_ARLOCK => axi4_lite_S_ARLOCK,
      M_AXI_GP0_ARSIZE => axi4_lite_S_ARSIZE,
      M_AXI_GP0_AWBURST => axi4_lite_S_AWBURST,
      M_AXI_GP0_AWLOCK => axi4_lite_S_AWLOCK,
      M_AXI_GP0_AWSIZE => axi4_lite_S_AWSIZE,
      M_AXI_GP0_ARPROT => axi4_lite_S_ARPROT,
      M_AXI_GP0_AWPROT => axi4_lite_S_AWPROT,
      M_AXI_GP0_ARADDR => axi4_lite_S_ARADDR,
      M_AXI_GP0_AWADDR => axi4_lite_S_AWADDR,
      M_AXI_GP0_WDATA => axi4_lite_S_WDATA,
      M_AXI_GP0_ARCACHE => axi4_lite_S_ARCACHE,
      M_AXI_GP0_ARLEN => axi4_lite_S_ARLEN(3 downto 0),
      M_AXI_GP0_ARQOS => axi4_lite_S_ARQOS,
      M_AXI_GP0_AWCACHE => axi4_lite_S_AWCACHE,
      M_AXI_GP0_AWLEN => axi4_lite_S_AWLEN(3 downto 0),
      M_AXI_GP0_AWQOS => axi4_lite_S_AWQOS,
      M_AXI_GP0_WSTRB => axi4_lite_S_WSTRB,
      M_AXI_GP0_ACLK => pgassign8(9),
      M_AXI_GP0_ARREADY => axi4_lite_S_ARREADY(0),
      M_AXI_GP0_AWREADY => axi4_lite_S_AWREADY(0),
      M_AXI_GP0_BVALID => axi4_lite_S_BVALID(0),
      M_AXI_GP0_RLAST => axi4_lite_S_RLAST(0),
      M_AXI_GP0_RVALID => axi4_lite_S_RVALID(0),
      M_AXI_GP0_WREADY => axi4_lite_S_WREADY(0),
      M_AXI_GP0_BID => axi4_lite_S_BID,
      M_AXI_GP0_RID => axi4_lite_S_RID,
      M_AXI_GP0_BRESP => axi4_lite_S_BRESP,
      M_AXI_GP0_RRESP => axi4_lite_S_RRESP,
      M_AXI_GP0_RDATA => axi4_lite_S_RDATA,
      M_AXI_GP1_ARESETN => open,
      M_AXI_GP1_ARVALID => open,
      M_AXI_GP1_AWVALID => open,
      M_AXI_GP1_BREADY => open,
      M_AXI_GP1_RREADY => open,
      M_AXI_GP1_WLAST => open,
      M_AXI_GP1_WVALID => open,
      M_AXI_GP1_ARID => open,
      M_AXI_GP1_AWID => open,
      M_AXI_GP1_WID => open,
      M_AXI_GP1_ARBURST => open,
      M_AXI_GP1_ARLOCK => open,
      M_AXI_GP1_ARSIZE => open,
      M_AXI_GP1_AWBURST => open,
      M_AXI_GP1_AWLOCK => open,
      M_AXI_GP1_AWSIZE => open,
      M_AXI_GP1_ARPROT => open,
      M_AXI_GP1_AWPROT => open,
      M_AXI_GP1_ARADDR => open,
      M_AXI_GP1_AWADDR => open,
      M_AXI_GP1_WDATA => open,
      M_AXI_GP1_ARCACHE => open,
      M_AXI_GP1_ARLEN => open,
      M_AXI_GP1_ARQOS => open,
      M_AXI_GP1_AWCACHE => open,
      M_AXI_GP1_AWLEN => open,
      M_AXI_GP1_AWQOS => open,
      M_AXI_GP1_WSTRB => open,
      M_AXI_GP1_ACLK => net_gnd0,
      M_AXI_GP1_ARREADY => net_gnd0,
      M_AXI_GP1_AWREADY => net_gnd0,
      M_AXI_GP1_BVALID => net_gnd0,
      M_AXI_GP1_RLAST => net_gnd0,
      M_AXI_GP1_RVALID => net_gnd0,
      M_AXI_GP1_WREADY => net_gnd0,
      M_AXI_GP1_BID => net_gnd12,
      M_AXI_GP1_RID => net_gnd12,
      M_AXI_GP1_BRESP => net_gnd2,
      M_AXI_GP1_RRESP => net_gnd2,
      M_AXI_GP1_RDATA => net_gnd32,
      S_AXI_GP0_ARESETN => open,
      S_AXI_GP0_ARREADY => open,
      S_AXI_GP0_AWREADY => open,
      S_AXI_GP0_BVALID => open,
      S_AXI_GP0_RLAST => open,
      S_AXI_GP0_RVALID => open,
      S_AXI_GP0_WREADY => open,
      S_AXI_GP0_BRESP => open,
      S_AXI_GP0_RRESP => open,
      S_AXI_GP0_RDATA => open,
      S_AXI_GP0_BID => open,
      S_AXI_GP0_RID => open,
      S_AXI_GP0_ACLK => net_gnd0,
      S_AXI_GP0_ARVALID => net_gnd0,
      S_AXI_GP0_AWVALID => net_gnd0,
      S_AXI_GP0_BREADY => net_gnd0,
      S_AXI_GP0_RREADY => net_gnd0,
      S_AXI_GP0_WLAST => net_gnd0,
      S_AXI_GP0_WVALID => net_gnd0,
      S_AXI_GP0_ARBURST => net_gnd2,
      S_AXI_GP0_ARLOCK => net_gnd2,
      S_AXI_GP0_ARSIZE => net_gnd3,
      S_AXI_GP0_AWBURST => net_gnd2,
      S_AXI_GP0_AWLOCK => net_gnd2,
      S_AXI_GP0_AWSIZE => net_gnd3,
      S_AXI_GP0_ARPROT => net_gnd3,
      S_AXI_GP0_AWPROT => net_gnd3,
      S_AXI_GP0_ARADDR => net_gnd32,
      S_AXI_GP0_AWADDR => net_gnd32,
      S_AXI_GP0_WDATA => net_gnd32,
      S_AXI_GP0_ARCACHE => net_gnd4,
      S_AXI_GP0_ARLEN => net_gnd4,
      S_AXI_GP0_ARQOS => net_gnd4,
      S_AXI_GP0_AWCACHE => net_gnd4,
      S_AXI_GP0_AWLEN => net_gnd4,
      S_AXI_GP0_AWQOS => net_gnd4,
      S_AXI_GP0_WSTRB => net_gnd4,
      S_AXI_GP0_ARID => net_gnd6,
      S_AXI_GP0_AWID => net_gnd6,
      S_AXI_GP0_WID => net_gnd6,
      S_AXI_GP1_ARESETN => open,
      S_AXI_GP1_ARREADY => open,
      S_AXI_GP1_AWREADY => open,
      S_AXI_GP1_BVALID => open,
      S_AXI_GP1_RLAST => open,
      S_AXI_GP1_RVALID => open,
      S_AXI_GP1_WREADY => open,
      S_AXI_GP1_BRESP => open,
      S_AXI_GP1_RRESP => open,
      S_AXI_GP1_RDATA => open,
      S_AXI_GP1_BID => open,
      S_AXI_GP1_RID => open,
      S_AXI_GP1_ACLK => net_gnd0,
      S_AXI_GP1_ARVALID => net_gnd0,
      S_AXI_GP1_AWVALID => net_gnd0,
      S_AXI_GP1_BREADY => net_gnd0,
      S_AXI_GP1_RREADY => net_gnd0,
      S_AXI_GP1_WLAST => net_gnd0,
      S_AXI_GP1_WVALID => net_gnd0,
      S_AXI_GP1_ARBURST => net_gnd2,
      S_AXI_GP1_ARLOCK => net_gnd2,
      S_AXI_GP1_ARSIZE => net_gnd3,
      S_AXI_GP1_AWBURST => net_gnd2,
      S_AXI_GP1_AWLOCK => net_gnd2,
      S_AXI_GP1_AWSIZE => net_gnd3,
      S_AXI_GP1_ARPROT => net_gnd3,
      S_AXI_GP1_AWPROT => net_gnd3,
      S_AXI_GP1_ARADDR => net_gnd32,
      S_AXI_GP1_AWADDR => net_gnd32,
      S_AXI_GP1_WDATA => net_gnd32,
      S_AXI_GP1_ARCACHE => net_gnd4,
      S_AXI_GP1_ARLEN => net_gnd4,
      S_AXI_GP1_ARQOS => net_gnd4,
      S_AXI_GP1_AWCACHE => net_gnd4,
      S_AXI_GP1_AWLEN => net_gnd4,
      S_AXI_GP1_AWQOS => net_gnd4,
      S_AXI_GP1_WSTRB => net_gnd4,
      S_AXI_GP1_ARID => net_gnd6,
      S_AXI_GP1_AWID => net_gnd6,
      S_AXI_GP1_WID => net_gnd6,
      S_AXI_ACP_ARESETN => open,
      S_AXI_ACP_AWREADY => open,
      S_AXI_ACP_ARREADY => open,
      S_AXI_ACP_BVALID => open,
      S_AXI_ACP_RLAST => open,
      S_AXI_ACP_RVALID => open,
      S_AXI_ACP_WREADY => open,
      S_AXI_ACP_BRESP => open,
      S_AXI_ACP_RRESP => open,
      S_AXI_ACP_BID => open,
      S_AXI_ACP_RID => open,
      S_AXI_ACP_RDATA => open,
      S_AXI_ACP_ACLK => net_gnd0,
      S_AXI_ACP_ARVALID => net_gnd0,
      S_AXI_ACP_AWVALID => net_gnd0,
      S_AXI_ACP_BREADY => net_gnd0,
      S_AXI_ACP_RREADY => net_gnd0,
      S_AXI_ACP_WLAST => net_gnd0,
      S_AXI_ACP_WVALID => net_gnd0,
      S_AXI_ACP_ARID => net_gnd3,
      S_AXI_ACP_ARPROT => net_gnd3,
      S_AXI_ACP_AWID => net_gnd3,
      S_AXI_ACP_AWPROT => net_gnd3,
      S_AXI_ACP_WID => net_gnd3,
      S_AXI_ACP_ARADDR => net_gnd32,
      S_AXI_ACP_AWADDR => net_gnd32,
      S_AXI_ACP_ARCACHE => net_gnd4,
      S_AXI_ACP_ARLEN => net_gnd4,
      S_AXI_ACP_ARQOS => net_gnd4,
      S_AXI_ACP_AWCACHE => net_gnd4,
      S_AXI_ACP_AWLEN => net_gnd4,
      S_AXI_ACP_AWQOS => net_gnd4,
      S_AXI_ACP_ARBURST => net_gnd2,
      S_AXI_ACP_ARLOCK => net_gnd2,
      S_AXI_ACP_ARSIZE => net_gnd3,
      S_AXI_ACP_AWBURST => net_gnd2,
      S_AXI_ACP_AWLOCK => net_gnd2,
      S_AXI_ACP_AWSIZE => net_gnd3,
      S_AXI_ACP_ARUSER => net_gnd5,
      S_AXI_ACP_AWUSER => net_gnd5,
      S_AXI_ACP_WDATA => net_gnd64,
      S_AXI_ACP_WSTRB => net_gnd8,
      S_AXI_HP0_ARESETN => open,
      S_AXI_HP0_ARREADY => axi4_0_M_ARREADY(0),
      S_AXI_HP0_AWREADY => axi4_0_M_AWREADY(0),
      S_AXI_HP0_BVALID => axi4_0_M_BVALID(0),
      S_AXI_HP0_RLAST => axi4_0_M_RLAST(0),
      S_AXI_HP0_RVALID => axi4_0_M_RVALID(0),
      S_AXI_HP0_WREADY => axi4_0_M_WREADY(0),
      S_AXI_HP0_BRESP => axi4_0_M_BRESP,
      S_AXI_HP0_RRESP => axi4_0_M_RRESP,
      S_AXI_HP0_BID => axi4_0_M_BID(0 to 0),
      S_AXI_HP0_RID => axi4_0_M_RID(0 to 0),
      S_AXI_HP0_RDATA => axi4_0_M_RDATA(63 downto 0),
      S_AXI_HP0_RCOUNT => open,
      S_AXI_HP0_WCOUNT => open,
      S_AXI_HP0_RACOUNT => open,
      S_AXI_HP0_WACOUNT => open,
      S_AXI_HP0_ACLK => pgassign6(1),
      S_AXI_HP0_ARVALID => axi4_0_M_ARVALID(0),
      S_AXI_HP0_AWVALID => axi4_0_M_AWVALID(0),
      S_AXI_HP0_BREADY => axi4_0_M_BREADY(0),
      S_AXI_HP0_RDISSUECAP1_EN => net_gnd0,
      S_AXI_HP0_RREADY => axi4_0_M_RREADY(0),
      S_AXI_HP0_WLAST => axi4_0_M_WLAST(0),
      S_AXI_HP0_WRISSUECAP1_EN => net_gnd0,
      S_AXI_HP0_WVALID => axi4_0_M_WVALID(0),
      S_AXI_HP0_ARBURST => axi4_0_M_ARBURST,
      S_AXI_HP0_ARLOCK => axi4_0_M_ARLOCK,
      S_AXI_HP0_ARSIZE => axi4_0_M_ARSIZE,
      S_AXI_HP0_AWBURST => axi4_0_M_AWBURST,
      S_AXI_HP0_AWLOCK => axi4_0_M_AWLOCK,
      S_AXI_HP0_AWSIZE => axi4_0_M_AWSIZE,
      S_AXI_HP0_ARPROT => axi4_0_M_ARPROT,
      S_AXI_HP0_AWPROT => axi4_0_M_AWPROT,
      S_AXI_HP0_ARADDR => axi4_0_M_ARADDR,
      S_AXI_HP0_AWADDR => axi4_0_M_AWADDR,
      S_AXI_HP0_ARCACHE => axi4_0_M_ARCACHE,
      S_AXI_HP0_ARLEN => axi4_0_M_ARLEN(3 downto 0),
      S_AXI_HP0_ARQOS => axi4_0_M_ARQOS,
      S_AXI_HP0_AWCACHE => axi4_0_M_AWCACHE,
      S_AXI_HP0_AWLEN => axi4_0_M_AWLEN(3 downto 0),
      S_AXI_HP0_AWQOS => axi4_0_M_AWQOS,
      S_AXI_HP0_ARID => axi4_0_M_ARID(0 to 0),
      S_AXI_HP0_AWID => axi4_0_M_AWID(0 to 0),
      S_AXI_HP0_WID => axi4_0_M_WID(0 to 0),
      S_AXI_HP0_WDATA => axi4_0_M_WDATA(63 downto 0),
      S_AXI_HP0_WSTRB => axi4_0_M_WSTRB(7 downto 0),
      S_AXI_HP1_ARESETN => open,
      S_AXI_HP1_ARREADY => open,
      S_AXI_HP1_AWREADY => open,
      S_AXI_HP1_BVALID => open,
      S_AXI_HP1_RLAST => open,
      S_AXI_HP1_RVALID => open,
      S_AXI_HP1_WREADY => open,
      S_AXI_HP1_BRESP => open,
      S_AXI_HP1_RRESP => open,
      S_AXI_HP1_BID => open,
      S_AXI_HP1_RID => open,
      S_AXI_HP1_RDATA => open,
      S_AXI_HP1_RCOUNT => open,
      S_AXI_HP1_WCOUNT => open,
      S_AXI_HP1_RACOUNT => open,
      S_AXI_HP1_WACOUNT => open,
      S_AXI_HP1_ACLK => net_gnd0,
      S_AXI_HP1_ARVALID => net_gnd0,
      S_AXI_HP1_AWVALID => net_gnd0,
      S_AXI_HP1_BREADY => net_gnd0,
      S_AXI_HP1_RDISSUECAP1_EN => net_gnd0,
      S_AXI_HP1_RREADY => net_gnd0,
      S_AXI_HP1_WLAST => net_gnd0,
      S_AXI_HP1_WRISSUECAP1_EN => net_gnd0,
      S_AXI_HP1_WVALID => net_gnd0,
      S_AXI_HP1_ARBURST => net_gnd2,
      S_AXI_HP1_ARLOCK => net_gnd2,
      S_AXI_HP1_ARSIZE => net_gnd3,
      S_AXI_HP1_AWBURST => net_gnd2,
      S_AXI_HP1_AWLOCK => net_gnd2,
      S_AXI_HP1_AWSIZE => net_gnd3,
      S_AXI_HP1_ARPROT => net_gnd3,
      S_AXI_HP1_AWPROT => net_gnd3,
      S_AXI_HP1_ARADDR => net_gnd32,
      S_AXI_HP1_AWADDR => net_gnd32,
      S_AXI_HP1_ARCACHE => net_gnd4,
      S_AXI_HP1_ARLEN => net_gnd4,
      S_AXI_HP1_ARQOS => net_gnd4,
      S_AXI_HP1_AWCACHE => net_gnd4,
      S_AXI_HP1_AWLEN => net_gnd4,
      S_AXI_HP1_AWQOS => net_gnd4,
      S_AXI_HP1_ARID => net_gnd6,
      S_AXI_HP1_AWID => net_gnd6,
      S_AXI_HP1_WID => net_gnd6,
      S_AXI_HP1_WDATA => net_gnd64,
      S_AXI_HP1_WSTRB => net_gnd8,
      S_AXI_HP2_ARESETN => open,
      S_AXI_HP2_ARREADY => axi4_1_M_ARREADY(0),
      S_AXI_HP2_AWREADY => axi4_1_M_AWREADY(0),
      S_AXI_HP2_BVALID => axi4_1_M_BVALID(0),
      S_AXI_HP2_RLAST => axi4_1_M_RLAST(0),
      S_AXI_HP2_RVALID => axi4_1_M_RVALID(0),
      S_AXI_HP2_WREADY => axi4_1_M_WREADY(0),
      S_AXI_HP2_BRESP => axi4_1_M_BRESP,
      S_AXI_HP2_RRESP => axi4_1_M_RRESP,
      S_AXI_HP2_BID => axi4_1_M_BID(0 to 0),
      S_AXI_HP2_RID => axi4_1_M_RID(0 to 0),
      S_AXI_HP2_RDATA => axi4_1_M_RDATA,
      S_AXI_HP2_RCOUNT => open,
      S_AXI_HP2_WCOUNT => open,
      S_AXI_HP2_RACOUNT => open,
      S_AXI_HP2_WACOUNT => open,
      S_AXI_HP2_ACLK => pgassign6(1),
      S_AXI_HP2_ARVALID => axi4_1_M_ARVALID(0),
      S_AXI_HP2_AWVALID => axi4_1_M_AWVALID(0),
      S_AXI_HP2_BREADY => axi4_1_M_BREADY(0),
      S_AXI_HP2_RDISSUECAP1_EN => net_gnd0,
      S_AXI_HP2_RREADY => axi4_1_M_RREADY(0),
      S_AXI_HP2_WLAST => axi4_1_M_WLAST(0),
      S_AXI_HP2_WRISSUECAP1_EN => net_gnd0,
      S_AXI_HP2_WVALID => axi4_1_M_WVALID(0),
      S_AXI_HP2_ARBURST => axi4_1_M_ARBURST,
      S_AXI_HP2_ARLOCK => axi4_1_M_ARLOCK,
      S_AXI_HP2_ARSIZE => axi4_1_M_ARSIZE,
      S_AXI_HP2_AWBURST => axi4_1_M_AWBURST,
      S_AXI_HP2_AWLOCK => axi4_1_M_AWLOCK,
      S_AXI_HP2_AWSIZE => axi4_1_M_AWSIZE,
      S_AXI_HP2_ARPROT => axi4_1_M_ARPROT,
      S_AXI_HP2_AWPROT => axi4_1_M_AWPROT,
      S_AXI_HP2_ARADDR => axi4_1_M_ARADDR,
      S_AXI_HP2_AWADDR => axi4_1_M_AWADDR,
      S_AXI_HP2_ARCACHE => axi4_1_M_ARCACHE,
      S_AXI_HP2_ARLEN => axi4_1_M_ARLEN(3 downto 0),
      S_AXI_HP2_ARQOS => axi4_1_M_ARQOS,
      S_AXI_HP2_AWCACHE => axi4_1_M_AWCACHE,
      S_AXI_HP2_AWLEN => axi4_1_M_AWLEN(3 downto 0),
      S_AXI_HP2_AWQOS => axi4_1_M_AWQOS,
      S_AXI_HP2_ARID => axi4_1_M_ARID(0 to 0),
      S_AXI_HP2_AWID => axi4_1_M_AWID(0 to 0),
      S_AXI_HP2_WID => axi4_1_M_WID(0 to 0),
      S_AXI_HP2_WDATA => axi4_1_M_WDATA,
      S_AXI_HP2_WSTRB => axi4_1_M_WSTRB,
      S_AXI_HP3_ARESETN => open,
      S_AXI_HP3_ARREADY => open,
      S_AXI_HP3_AWREADY => open,
      S_AXI_HP3_BVALID => open,
      S_AXI_HP3_RLAST => open,
      S_AXI_HP3_RVALID => open,
      S_AXI_HP3_WREADY => open,
      S_AXI_HP3_BRESP => open,
      S_AXI_HP3_RRESP => open,
      S_AXI_HP3_BID => open,
      S_AXI_HP3_RID => open,
      S_AXI_HP3_RDATA => open,
      S_AXI_HP3_RCOUNT => open,
      S_AXI_HP3_WCOUNT => open,
      S_AXI_HP3_RACOUNT => open,
      S_AXI_HP3_WACOUNT => open,
      S_AXI_HP3_ACLK => net_gnd0,
      S_AXI_HP3_ARVALID => net_gnd0,
      S_AXI_HP3_AWVALID => net_gnd0,
      S_AXI_HP3_BREADY => net_gnd0,
      S_AXI_HP3_RDISSUECAP1_EN => net_gnd0,
      S_AXI_HP3_RREADY => net_gnd0,
      S_AXI_HP3_WLAST => net_gnd0,
      S_AXI_HP3_WRISSUECAP1_EN => net_gnd0,
      S_AXI_HP3_WVALID => net_gnd0,
      S_AXI_HP3_ARBURST => net_gnd2,
      S_AXI_HP3_ARLOCK => net_gnd2,
      S_AXI_HP3_ARSIZE => net_gnd3,
      S_AXI_HP3_AWBURST => net_gnd2,
      S_AXI_HP3_AWLOCK => net_gnd2,
      S_AXI_HP3_AWSIZE => net_gnd3,
      S_AXI_HP3_ARPROT => net_gnd3,
      S_AXI_HP3_AWPROT => net_gnd3,
      S_AXI_HP3_ARADDR => net_gnd32,
      S_AXI_HP3_AWADDR => net_gnd32,
      S_AXI_HP3_ARCACHE => net_gnd4,
      S_AXI_HP3_ARLEN => net_gnd4,
      S_AXI_HP3_ARQOS => net_gnd4,
      S_AXI_HP3_AWCACHE => net_gnd4,
      S_AXI_HP3_AWLEN => net_gnd4,
      S_AXI_HP3_AWQOS => net_gnd4,
      S_AXI_HP3_ARID => net_gnd6,
      S_AXI_HP3_AWID => net_gnd6,
      S_AXI_HP3_WID => net_gnd6,
      S_AXI_HP3_WDATA => net_gnd64,
      S_AXI_HP3_WSTRB => net_gnd8,
      DMA0_DATYPE => open,
      DMA0_DAVALID => open,
      DMA0_DRREADY => open,
      DMA0_RSTN => open,
      DMA0_ACLK => net_gnd0,
      DMA0_DAREADY => net_gnd0,
      DMA0_DRLAST => net_gnd0,
      DMA0_DRVALID => net_gnd0,
      DMA0_DRTYPE => net_gnd2,
      DMA1_DATYPE => open,
      DMA1_DAVALID => open,
      DMA1_DRREADY => open,
      DMA1_RSTN => open,
      DMA1_ACLK => net_gnd0,
      DMA1_DAREADY => net_gnd0,
      DMA1_DRLAST => net_gnd0,
      DMA1_DRVALID => net_gnd0,
      DMA1_DRTYPE => net_gnd2,
      DMA2_DATYPE => open,
      DMA2_DAVALID => open,
      DMA2_DRREADY => open,
      DMA2_RSTN => open,
      DMA2_ACLK => net_gnd0,
      DMA2_DAREADY => net_gnd0,
      DMA2_DRLAST => net_gnd0,
      DMA2_DRVALID => net_gnd0,
      DMA3_DRVALID => net_gnd0,
      DMA3_DATYPE => open,
      DMA3_DAVALID => open,
      DMA3_DRREADY => open,
      DMA3_RSTN => open,
      DMA3_ACLK => net_gnd0,
      DMA3_DAREADY => net_gnd0,
      DMA3_DRLAST => net_gnd0,
      DMA2_DRTYPE => net_gnd2,
      DMA3_DRTYPE => net_gnd2,
      FTMD_TRACEIN_DATA => net_gnd32,
      FTMD_TRACEIN_VALID => net_gnd0,
      FTMD_TRACEIN_CLK => net_gnd0,
      FTMD_TRACEIN_ATID => net_gnd4,
      FTMT_F2P_TRIG => net_gnd4,
      FTMT_F2P_TRIGACK => open,
      FTMT_F2P_DEBUG => net_gnd32,
      FTMT_P2F_TRIGACK => net_gnd4,
      FTMT_P2F_TRIG => open,
      FTMT_P2F_DEBUG => open,
      FCLK_CLK3 => open,
      FCLK_CLK2 => open,
      FCLK_CLK1 => open,
      FCLK_CLK0 => FPGA_CLK,
      FCLK_CLKTRIG3_N => pgassign2,
      FCLK_CLKTRIG2_N => pgassign2,
      FCLK_CLKTRIG1_N => pgassign2,
      FCLK_CLKTRIG0_N => pgassign2,
      FCLK_RESET3_N => open,
      FCLK_RESET2_N => open,
      FCLK_RESET1_N => open,
      FCLK_RESET0_N => FCLK_RESET_N_i,
      FPGA_IDLE_N => net_gnd0,
      DDR_ARB => net_gnd4,
      IRQ_F2P => pgassign5,
      Core0_nFIQ => net_gnd0,
      Core0_nIRQ => net_gnd0,
      Core1_nFIQ => net_gnd0,
      Core1_nIRQ => net_gnd0,
      EVENT_EVENTO => open,
      EVENT_STANDBYWFE => open,
      EVENT_STANDBYWFI => open,
      EVENT_EVENTI => net_gnd0,
      MIO => ps7_0_MIO_pin,
      DDR_Clk => DDR_Clk,
      DDR_Clk_n => DDR_Clk_n,
      DDR_CKE => DDR_CKE,
      DDR_CS_n => DDR_CS_n,
      DDR_RAS_n => DDR_RAS_n,
      DDR_CAS_n => DDR_CAS_n,
      DDR_WEB => DDR_WEB,
      DDR_BankAddr => DDR_BankAddr,
      DDR_Addr => DDR_Addr,
      DDR_ODT => DDR_ODT,
      DDR_DRSTB => DDR_DRSTB,
      DDR_DQ => DDR_DQ,
      DDR_DM => DDR_DM,
      DDR_DQS => DDR_DQS,
      DDR_DQS_n => DDR_DQS_n,
      DDR_VRN => DDR_VRN,
      DDR_VRP => DDR_VRP,
      PS_SRSTB => ps7_0_PS_SRSTB_pin,
      PS_CLK => ps7_0_PS_CLK_pin,
      PS_PORB => ps7_0_PS_PORB_pin,
      IRQ_P2F_DMAC_ABORT => open,
      IRQ_P2F_DMAC0 => open,
      IRQ_P2F_DMAC1 => open,
      IRQ_P2F_DMAC2 => open,
      IRQ_P2F_DMAC3 => open,
      IRQ_P2F_DMAC4 => open,
      IRQ_P2F_DMAC5 => open,
      IRQ_P2F_DMAC6 => open,
      IRQ_P2F_DMAC7 => open,
      IRQ_P2F_SMC => open,
      IRQ_P2F_QSPI => open,
      IRQ_P2F_CTI => open,
      IRQ_P2F_GPIO => open,
      IRQ_P2F_USB0 => open,
      IRQ_P2F_ENET0 => open,
      IRQ_P2F_ENET_WAKE0 => open,
      IRQ_P2F_SDIO0 => open,
      IRQ_P2F_I2C0 => open,
      IRQ_P2F_SPI0 => open,
      IRQ_P2F_UART0 => open,
      IRQ_P2F_CAN0 => open,
      IRQ_P2F_USB1 => open,
      IRQ_P2F_ENET1 => open,
      IRQ_P2F_ENET_WAKE1 => open,
      IRQ_P2F_SDIO1 => open,
      IRQ_P2F_I2C1 => open,
      IRQ_P2F_SPI1 => open,
      IRQ_P2F_UART1 => open,
      IRQ_P2F_CAN1 => open
    );

  axi4_0 : system_axi4_0_wrapper
    port map (
      INTERCONNECT_ACLK => pgassign6(1),
      INTERCONNECT_ARESETN => emu_reset_n(0),
      S_AXI_ARESET_OUT_N => axi4_0_S_ARESETN,
      M_AXI_ARESET_OUT_N => axi4_0_M_ARESETN(0 to 0),
      IRQ => open,
      S_AXI_ACLK => pgassign6,
      S_AXI_AWID => axi4_0_S_AWID,
      S_AXI_AWADDR => axi4_0_S_AWADDR,
      S_AXI_AWLEN => axi4_0_S_AWLEN,
      S_AXI_AWSIZE => axi4_0_S_AWSIZE,
      S_AXI_AWBURST => axi4_0_S_AWBURST,
      S_AXI_AWLOCK => axi4_0_S_AWLOCK,
      S_AXI_AWCACHE => axi4_0_S_AWCACHE,
      S_AXI_AWPROT => axi4_0_S_AWPROT,
      S_AXI_AWQOS => axi4_0_S_AWQOS,
      S_AXI_AWUSER => net_gnd2,
      S_AXI_AWVALID => axi4_0_S_AWVALID,
      S_AXI_AWREADY => axi4_0_S_AWREADY,
      S_AXI_WID => net_gnd2,
      S_AXI_WDATA => axi4_0_S_WDATA,
      S_AXI_WSTRB => axi4_0_S_WSTRB,
      S_AXI_WLAST => axi4_0_S_WLAST,
      S_AXI_WUSER => net_gnd2,
      S_AXI_WVALID => axi4_0_S_WVALID,
      S_AXI_WREADY => axi4_0_S_WREADY,
      S_AXI_BID => axi4_0_S_BID,
      S_AXI_BRESP => axi4_0_S_BRESP,
      S_AXI_BUSER => open,
      S_AXI_BVALID => axi4_0_S_BVALID,
      S_AXI_BREADY => axi4_0_S_BREADY,
      S_AXI_ARID => axi4_0_S_ARID,
      S_AXI_ARADDR => axi4_0_S_ARADDR,
      S_AXI_ARLEN => axi4_0_S_ARLEN,
      S_AXI_ARSIZE => axi4_0_S_ARSIZE,
      S_AXI_ARBURST => axi4_0_S_ARBURST,
      S_AXI_ARLOCK => axi4_0_S_ARLOCK,
      S_AXI_ARCACHE => axi4_0_S_ARCACHE,
      S_AXI_ARPROT => axi4_0_S_ARPROT,
      S_AXI_ARQOS => axi4_0_S_ARQOS,
      S_AXI_ARUSER => net_gnd2,
      S_AXI_ARVALID => axi4_0_S_ARVALID,
      S_AXI_ARREADY => axi4_0_S_ARREADY,
      S_AXI_RID => axi4_0_S_RID,
      S_AXI_RDATA => axi4_0_S_RDATA,
      S_AXI_RRESP => axi4_0_S_RRESP,
      S_AXI_RLAST => axi4_0_S_RLAST,
      S_AXI_RUSER => open,
      S_AXI_RVALID => axi4_0_S_RVALID,
      S_AXI_RREADY => axi4_0_S_RREADY,
      M_AXI_ACLK => pgassign6(1 downto 1),
      M_AXI_AWID => axi4_0_M_AWID(0 to 0),
      M_AXI_AWADDR => axi4_0_M_AWADDR,
      M_AXI_AWLEN => axi4_0_M_AWLEN,
      M_AXI_AWSIZE => axi4_0_M_AWSIZE,
      M_AXI_AWBURST => axi4_0_M_AWBURST,
      M_AXI_AWLOCK => axi4_0_M_AWLOCK,
      M_AXI_AWCACHE => axi4_0_M_AWCACHE,
      M_AXI_AWPROT => axi4_0_M_AWPROT,
      M_AXI_AWREGION => open,
      M_AXI_AWQOS => axi4_0_M_AWQOS,
      M_AXI_AWUSER => open,
      M_AXI_AWVALID => axi4_0_M_AWVALID(0 to 0),
      M_AXI_AWREADY => axi4_0_M_AWREADY(0 to 0),
      M_AXI_WID => axi4_0_M_WID(0 to 0),
      M_AXI_WDATA => axi4_0_M_WDATA,
      M_AXI_WSTRB => axi4_0_M_WSTRB,
      M_AXI_WLAST => axi4_0_M_WLAST(0 to 0),
      M_AXI_WUSER => open,
      M_AXI_WVALID => axi4_0_M_WVALID(0 to 0),
      M_AXI_WREADY => axi4_0_M_WREADY(0 to 0),
      M_AXI_BID => axi4_0_M_BID(0 to 0),
      M_AXI_BRESP => axi4_0_M_BRESP,
      M_AXI_BUSER => net_gnd1(0 to 0),
      M_AXI_BVALID => axi4_0_M_BVALID(0 to 0),
      M_AXI_BREADY => axi4_0_M_BREADY(0 to 0),
      M_AXI_ARID => axi4_0_M_ARID(0 to 0),
      M_AXI_ARADDR => axi4_0_M_ARADDR,
      M_AXI_ARLEN => axi4_0_M_ARLEN,
      M_AXI_ARSIZE => axi4_0_M_ARSIZE,
      M_AXI_ARBURST => axi4_0_M_ARBURST,
      M_AXI_ARLOCK => axi4_0_M_ARLOCK,
      M_AXI_ARCACHE => axi4_0_M_ARCACHE,
      M_AXI_ARPROT => axi4_0_M_ARPROT,
      M_AXI_ARREGION => open,
      M_AXI_ARQOS => axi4_0_M_ARQOS,
      M_AXI_ARUSER => open,
      M_AXI_ARVALID => axi4_0_M_ARVALID(0 to 0),
      M_AXI_ARREADY => axi4_0_M_ARREADY(0 to 0),
      M_AXI_RID => axi4_0_M_RID(0 to 0),
      M_AXI_RDATA => axi4_0_M_RDATA,
      M_AXI_RRESP => axi4_0_M_RRESP,
      M_AXI_RLAST => axi4_0_M_RLAST(0 to 0),
      M_AXI_RUSER => net_gnd1(0 to 0),
      M_AXI_RVALID => axi4_0_M_RVALID(0 to 0),
      M_AXI_RREADY => axi4_0_M_RREADY(0 to 0),
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      INTERCONNECT_ARESET_OUT_N => open,
      DEBUG_AW_TRANS_SEQ => open,
      DEBUG_AW_ARB_GRANT => open,
      DEBUG_AR_TRANS_SEQ => open,
      DEBUG_AR_ARB_GRANT => open,
      DEBUG_AW_TRANS_QUAL => open,
      DEBUG_AW_ACCEPT_CNT => open,
      DEBUG_AW_ACTIVE_THREAD => open,
      DEBUG_AW_ACTIVE_TARGET => open,
      DEBUG_AW_ACTIVE_REGION => open,
      DEBUG_AW_ERROR => open,
      DEBUG_AW_TARGET => open,
      DEBUG_AR_TRANS_QUAL => open,
      DEBUG_AR_ACCEPT_CNT => open,
      DEBUG_AR_ACTIVE_THREAD => open,
      DEBUG_AR_ACTIVE_TARGET => open,
      DEBUG_AR_ACTIVE_REGION => open,
      DEBUG_AR_ERROR => open,
      DEBUG_AR_TARGET => open,
      DEBUG_B_TRANS_SEQ => open,
      DEBUG_R_BEAT_CNT => open,
      DEBUG_R_TRANS_SEQ => open,
      DEBUG_AW_ISSUING_CNT => open,
      DEBUG_AR_ISSUING_CNT => open,
      DEBUG_W_BEAT_CNT => open,
      DEBUG_W_TRANS_SEQ => open,
      DEBUG_BID_TARGET => open,
      DEBUG_BID_ERROR => open,
      DEBUG_RID_TARGET => open,
      DEBUG_RID_ERROR => open,
      DEBUG_SR_SC_ARADDR => open,
      DEBUG_SR_SC_ARADDRCONTROL => open,
      DEBUG_SR_SC_AWADDR => open,
      DEBUG_SR_SC_AWADDRCONTROL => open,
      DEBUG_SR_SC_BRESP => open,
      DEBUG_SR_SC_RDATA => open,
      DEBUG_SR_SC_RDATACONTROL => open,
      DEBUG_SR_SC_WDATA => open,
      DEBUG_SR_SC_WDATACONTROL => open,
      DEBUG_SC_SF_ARADDR => open,
      DEBUG_SC_SF_ARADDRCONTROL => open,
      DEBUG_SC_SF_AWADDR => open,
      DEBUG_SC_SF_AWADDRCONTROL => open,
      DEBUG_SC_SF_BRESP => open,
      DEBUG_SC_SF_RDATA => open,
      DEBUG_SC_SF_RDATACONTROL => open,
      DEBUG_SC_SF_WDATA => open,
      DEBUG_SC_SF_WDATACONTROL => open,
      DEBUG_SF_CB_ARADDR => open,
      DEBUG_SF_CB_ARADDRCONTROL => open,
      DEBUG_SF_CB_AWADDR => open,
      DEBUG_SF_CB_AWADDRCONTROL => open,
      DEBUG_SF_CB_BRESP => open,
      DEBUG_SF_CB_RDATA => open,
      DEBUG_SF_CB_RDATACONTROL => open,
      DEBUG_SF_CB_WDATA => open,
      DEBUG_SF_CB_WDATACONTROL => open,
      DEBUG_CB_MF_ARADDR => open,
      DEBUG_CB_MF_ARADDRCONTROL => open,
      DEBUG_CB_MF_AWADDR => open,
      DEBUG_CB_MF_AWADDRCONTROL => open,
      DEBUG_CB_MF_BRESP => open,
      DEBUG_CB_MF_RDATA => open,
      DEBUG_CB_MF_RDATACONTROL => open,
      DEBUG_CB_MF_WDATA => open,
      DEBUG_CB_MF_WDATACONTROL => open,
      DEBUG_MF_MC_ARADDR => open,
      DEBUG_MF_MC_ARADDRCONTROL => open,
      DEBUG_MF_MC_AWADDR => open,
      DEBUG_MF_MC_AWADDRCONTROL => open,
      DEBUG_MF_MC_BRESP => open,
      DEBUG_MF_MC_RDATA => open,
      DEBUG_MF_MC_RDATACONTROL => open,
      DEBUG_MF_MC_WDATA => open,
      DEBUG_MF_MC_WDATACONTROL => open,
      DEBUG_MC_MP_ARADDR => open,
      DEBUG_MC_MP_ARADDRCONTROL => open,
      DEBUG_MC_MP_AWADDR => open,
      DEBUG_MC_MP_AWADDRCONTROL => open,
      DEBUG_MC_MP_BRESP => open,
      DEBUG_MC_MP_RDATA => open,
      DEBUG_MC_MP_RDATACONTROL => open,
      DEBUG_MC_MP_WDATA => open,
      DEBUG_MC_MP_WDATACONTROL => open,
      DEBUG_MP_MR_ARADDR => open,
      DEBUG_MP_MR_ARADDRCONTROL => open,
      DEBUG_MP_MR_AWADDR => open,
      DEBUG_MP_MR_AWADDRCONTROL => open,
      DEBUG_MP_MR_BRESP => open,
      DEBUG_MP_MR_RDATA => open,
      DEBUG_MP_MR_RDATACONTROL => open,
      DEBUG_MP_MR_WDATA => open,
      DEBUG_MP_MR_WDATACONTROL => open
    );

  axi4_1 : system_axi4_1_wrapper
    port map (
      INTERCONNECT_ACLK => pgassign6(1),
      INTERCONNECT_ARESETN => emu_reset_n(0),
      S_AXI_ARESET_OUT_N => open,
      M_AXI_ARESET_OUT_N => axi4_1_M_ARESETN(0 to 0),
      IRQ => open,
      S_AXI_ACLK => pgassign7,
      S_AXI_AWID => net_gnd2,
      S_AXI_AWADDR => axi4_1_S_AWADDR,
      S_AXI_AWLEN => axi4_1_S_AWLEN,
      S_AXI_AWSIZE => axi4_1_S_AWSIZE,
      S_AXI_AWBURST => axi4_1_S_AWBURST,
      S_AXI_AWLOCK => net_gnd4,
      S_AXI_AWCACHE => axi4_1_S_AWCACHE,
      S_AXI_AWPROT => axi4_1_S_AWPROT,
      S_AXI_AWQOS => net_gnd8,
      S_AXI_AWUSER => net_gnd2,
      S_AXI_AWVALID => axi4_1_S_AWVALID,
      S_AXI_AWREADY => axi4_1_S_AWREADY,
      S_AXI_WID => net_gnd2,
      S_AXI_WDATA => axi4_1_S_WDATA,
      S_AXI_WSTRB => axi4_1_S_WSTRB,
      S_AXI_WLAST => axi4_1_S_WLAST,
      S_AXI_WUSER => net_gnd2,
      S_AXI_WVALID => axi4_1_S_WVALID,
      S_AXI_WREADY => axi4_1_S_WREADY,
      S_AXI_BID => open,
      S_AXI_BRESP => axi4_1_S_BRESP,
      S_AXI_BUSER => open,
      S_AXI_BVALID => axi4_1_S_BVALID,
      S_AXI_BREADY => axi4_1_S_BREADY,
      S_AXI_ARID => net_gnd2,
      S_AXI_ARADDR => axi4_1_S_ARADDR,
      S_AXI_ARLEN => axi4_1_S_ARLEN,
      S_AXI_ARSIZE => axi4_1_S_ARSIZE,
      S_AXI_ARBURST => axi4_1_S_ARBURST,
      S_AXI_ARLOCK => net_gnd4,
      S_AXI_ARCACHE => axi4_1_S_ARCACHE,
      S_AXI_ARPROT => axi4_1_S_ARPROT,
      S_AXI_ARQOS => net_gnd8,
      S_AXI_ARUSER => net_gnd2,
      S_AXI_ARVALID => axi4_1_S_ARVALID,
      S_AXI_ARREADY => axi4_1_S_ARREADY,
      S_AXI_RID => open,
      S_AXI_RDATA => axi4_1_S_RDATA,
      S_AXI_RRESP => axi4_1_S_RRESP,
      S_AXI_RLAST => axi4_1_S_RLAST,
      S_AXI_RUSER => open,
      S_AXI_RVALID => axi4_1_S_RVALID,
      S_AXI_RREADY => axi4_1_S_RREADY,
      M_AXI_ACLK => pgassign6(1 downto 1),
      M_AXI_AWID => axi4_1_M_AWID(0 to 0),
      M_AXI_AWADDR => axi4_1_M_AWADDR,
      M_AXI_AWLEN => axi4_1_M_AWLEN,
      M_AXI_AWSIZE => axi4_1_M_AWSIZE,
      M_AXI_AWBURST => axi4_1_M_AWBURST,
      M_AXI_AWLOCK => axi4_1_M_AWLOCK,
      M_AXI_AWCACHE => axi4_1_M_AWCACHE,
      M_AXI_AWPROT => axi4_1_M_AWPROT,
      M_AXI_AWREGION => open,
      M_AXI_AWQOS => axi4_1_M_AWQOS,
      M_AXI_AWUSER => open,
      M_AXI_AWVALID => axi4_1_M_AWVALID(0 to 0),
      M_AXI_AWREADY => axi4_1_M_AWREADY(0 to 0),
      M_AXI_WID => axi4_1_M_WID(0 to 0),
      M_AXI_WDATA => axi4_1_M_WDATA,
      M_AXI_WSTRB => axi4_1_M_WSTRB,
      M_AXI_WLAST => axi4_1_M_WLAST(0 to 0),
      M_AXI_WUSER => open,
      M_AXI_WVALID => axi4_1_M_WVALID(0 to 0),
      M_AXI_WREADY => axi4_1_M_WREADY(0 to 0),
      M_AXI_BID => axi4_1_M_BID(0 to 0),
      M_AXI_BRESP => axi4_1_M_BRESP,
      M_AXI_BUSER => net_gnd1(0 to 0),
      M_AXI_BVALID => axi4_1_M_BVALID(0 to 0),
      M_AXI_BREADY => axi4_1_M_BREADY(0 to 0),
      M_AXI_ARID => axi4_1_M_ARID(0 to 0),
      M_AXI_ARADDR => axi4_1_M_ARADDR,
      M_AXI_ARLEN => axi4_1_M_ARLEN,
      M_AXI_ARSIZE => axi4_1_M_ARSIZE,
      M_AXI_ARBURST => axi4_1_M_ARBURST,
      M_AXI_ARLOCK => axi4_1_M_ARLOCK,
      M_AXI_ARCACHE => axi4_1_M_ARCACHE,
      M_AXI_ARPROT => axi4_1_M_ARPROT,
      M_AXI_ARREGION => open,
      M_AXI_ARQOS => axi4_1_M_ARQOS,
      M_AXI_ARUSER => open,
      M_AXI_ARVALID => axi4_1_M_ARVALID(0 to 0),
      M_AXI_ARREADY => axi4_1_M_ARREADY(0 to 0),
      M_AXI_RID => axi4_1_M_RID(0 to 0),
      M_AXI_RDATA => axi4_1_M_RDATA,
      M_AXI_RRESP => axi4_1_M_RRESP,
      M_AXI_RLAST => axi4_1_M_RLAST(0 to 0),
      M_AXI_RUSER => net_gnd1(0 to 0),
      M_AXI_RVALID => axi4_1_M_RVALID(0 to 0),
      M_AXI_RREADY => axi4_1_M_RREADY(0 to 0),
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      INTERCONNECT_ARESET_OUT_N => open,
      DEBUG_AW_TRANS_SEQ => open,
      DEBUG_AW_ARB_GRANT => open,
      DEBUG_AR_TRANS_SEQ => open,
      DEBUG_AR_ARB_GRANT => open,
      DEBUG_AW_TRANS_QUAL => open,
      DEBUG_AW_ACCEPT_CNT => open,
      DEBUG_AW_ACTIVE_THREAD => open,
      DEBUG_AW_ACTIVE_TARGET => open,
      DEBUG_AW_ACTIVE_REGION => open,
      DEBUG_AW_ERROR => open,
      DEBUG_AW_TARGET => open,
      DEBUG_AR_TRANS_QUAL => open,
      DEBUG_AR_ACCEPT_CNT => open,
      DEBUG_AR_ACTIVE_THREAD => open,
      DEBUG_AR_ACTIVE_TARGET => open,
      DEBUG_AR_ACTIVE_REGION => open,
      DEBUG_AR_ERROR => open,
      DEBUG_AR_TARGET => open,
      DEBUG_B_TRANS_SEQ => open,
      DEBUG_R_BEAT_CNT => open,
      DEBUG_R_TRANS_SEQ => open,
      DEBUG_AW_ISSUING_CNT => open,
      DEBUG_AR_ISSUING_CNT => open,
      DEBUG_W_BEAT_CNT => open,
      DEBUG_W_TRANS_SEQ => open,
      DEBUG_BID_TARGET => open,
      DEBUG_BID_ERROR => open,
      DEBUG_RID_TARGET => open,
      DEBUG_RID_ERROR => open,
      DEBUG_SR_SC_ARADDR => open,
      DEBUG_SR_SC_ARADDRCONTROL => open,
      DEBUG_SR_SC_AWADDR => open,
      DEBUG_SR_SC_AWADDRCONTROL => open,
      DEBUG_SR_SC_BRESP => open,
      DEBUG_SR_SC_RDATA => open,
      DEBUG_SR_SC_RDATACONTROL => open,
      DEBUG_SR_SC_WDATA => open,
      DEBUG_SR_SC_WDATACONTROL => open,
      DEBUG_SC_SF_ARADDR => open,
      DEBUG_SC_SF_ARADDRCONTROL => open,
      DEBUG_SC_SF_AWADDR => open,
      DEBUG_SC_SF_AWADDRCONTROL => open,
      DEBUG_SC_SF_BRESP => open,
      DEBUG_SC_SF_RDATA => open,
      DEBUG_SC_SF_RDATACONTROL => open,
      DEBUG_SC_SF_WDATA => open,
      DEBUG_SC_SF_WDATACONTROL => open,
      DEBUG_SF_CB_ARADDR => open,
      DEBUG_SF_CB_ARADDRCONTROL => open,
      DEBUG_SF_CB_AWADDR => open,
      DEBUG_SF_CB_AWADDRCONTROL => open,
      DEBUG_SF_CB_BRESP => open,
      DEBUG_SF_CB_RDATA => open,
      DEBUG_SF_CB_RDATACONTROL => open,
      DEBUG_SF_CB_WDATA => open,
      DEBUG_SF_CB_WDATACONTROL => open,
      DEBUG_CB_MF_ARADDR => open,
      DEBUG_CB_MF_ARADDRCONTROL => open,
      DEBUG_CB_MF_AWADDR => open,
      DEBUG_CB_MF_AWADDRCONTROL => open,
      DEBUG_CB_MF_BRESP => open,
      DEBUG_CB_MF_RDATA => open,
      DEBUG_CB_MF_RDATACONTROL => open,
      DEBUG_CB_MF_WDATA => open,
      DEBUG_CB_MF_WDATACONTROL => open,
      DEBUG_MF_MC_ARADDR => open,
      DEBUG_MF_MC_ARADDRCONTROL => open,
      DEBUG_MF_MC_AWADDR => open,
      DEBUG_MF_MC_AWADDRCONTROL => open,
      DEBUG_MF_MC_BRESP => open,
      DEBUG_MF_MC_RDATA => open,
      DEBUG_MF_MC_RDATACONTROL => open,
      DEBUG_MF_MC_WDATA => open,
      DEBUG_MF_MC_WDATACONTROL => open,
      DEBUG_MC_MP_ARADDR => open,
      DEBUG_MC_MP_ARADDRCONTROL => open,
      DEBUG_MC_MP_AWADDR => open,
      DEBUG_MC_MP_AWADDRCONTROL => open,
      DEBUG_MC_MP_BRESP => open,
      DEBUG_MC_MP_RDATA => open,
      DEBUG_MC_MP_RDATACONTROL => open,
      DEBUG_MC_MP_WDATA => open,
      DEBUG_MC_MP_WDATACONTROL => open,
      DEBUG_MP_MR_ARADDR => open,
      DEBUG_MP_MR_ARADDRCONTROL => open,
      DEBUG_MP_MR_AWADDR => open,
      DEBUG_MP_MR_AWADDRCONTROL => open,
      DEBUG_MP_MR_BRESP => open,
      DEBUG_MP_MR_RDATA => open,
      DEBUG_MP_MR_RDATACONTROL => open,
      DEBUG_MP_MR_WDATA => open,
      DEBUG_MP_MR_WDATACONTROL => open
    );

  axi4_lite : system_axi4_lite_wrapper
    port map (
      INTERCONNECT_ACLK => pgassign8(9),
      INTERCONNECT_ARESETN => emu_reset_n(0),
      S_AXI_ARESET_OUT_N => open,
      M_AXI_ARESET_OUT_N => axi4_lite_M_ARESETN,
      IRQ => open,
      S_AXI_ACLK => pgassign8(9 downto 9),
      S_AXI_AWID => axi4_lite_S_AWID,
      S_AXI_AWADDR => axi4_lite_S_AWADDR,
      S_AXI_AWLEN => axi4_lite_S_AWLEN,
      S_AXI_AWSIZE => axi4_lite_S_AWSIZE,
      S_AXI_AWBURST => axi4_lite_S_AWBURST,
      S_AXI_AWLOCK => axi4_lite_S_AWLOCK,
      S_AXI_AWCACHE => axi4_lite_S_AWCACHE,
      S_AXI_AWPROT => axi4_lite_S_AWPROT,
      S_AXI_AWQOS => axi4_lite_S_AWQOS,
      S_AXI_AWUSER => net_gnd1(0 to 0),
      S_AXI_AWVALID => axi4_lite_S_AWVALID(0 to 0),
      S_AXI_AWREADY => axi4_lite_S_AWREADY(0 to 0),
      S_AXI_WID => axi4_lite_S_WID,
      S_AXI_WDATA => axi4_lite_S_WDATA,
      S_AXI_WSTRB => axi4_lite_S_WSTRB,
      S_AXI_WLAST => axi4_lite_S_WLAST(0 to 0),
      S_AXI_WUSER => net_gnd1(0 to 0),
      S_AXI_WVALID => axi4_lite_S_WVALID(0 to 0),
      S_AXI_WREADY => axi4_lite_S_WREADY(0 to 0),
      S_AXI_BID => axi4_lite_S_BID,
      S_AXI_BRESP => axi4_lite_S_BRESP,
      S_AXI_BUSER => open,
      S_AXI_BVALID => axi4_lite_S_BVALID(0 to 0),
      S_AXI_BREADY => axi4_lite_S_BREADY(0 to 0),
      S_AXI_ARID => axi4_lite_S_ARID,
      S_AXI_ARADDR => axi4_lite_S_ARADDR,
      S_AXI_ARLEN => axi4_lite_S_ARLEN,
      S_AXI_ARSIZE => axi4_lite_S_ARSIZE,
      S_AXI_ARBURST => axi4_lite_S_ARBURST,
      S_AXI_ARLOCK => axi4_lite_S_ARLOCK,
      S_AXI_ARCACHE => axi4_lite_S_ARCACHE,
      S_AXI_ARPROT => axi4_lite_S_ARPROT,
      S_AXI_ARQOS => axi4_lite_S_ARQOS,
      S_AXI_ARUSER => net_gnd1(0 to 0),
      S_AXI_ARVALID => axi4_lite_S_ARVALID(0 to 0),
      S_AXI_ARREADY => axi4_lite_S_ARREADY(0 to 0),
      S_AXI_RID => axi4_lite_S_RID,
      S_AXI_RDATA => axi4_lite_S_RDATA,
      S_AXI_RRESP => axi4_lite_S_RRESP,
      S_AXI_RLAST => axi4_lite_S_RLAST(0 to 0),
      S_AXI_RUSER => open,
      S_AXI_RVALID => axi4_lite_S_RVALID(0 to 0),
      S_AXI_RREADY => axi4_lite_S_RREADY(0 to 0),
      M_AXI_ACLK => pgassign8,
      M_AXI_AWID => open,
      M_AXI_AWADDR => axi4_lite_M_AWADDR,
      M_AXI_AWLEN => open,
      M_AXI_AWSIZE => open,
      M_AXI_AWBURST => open,
      M_AXI_AWLOCK => open,
      M_AXI_AWCACHE => open,
      M_AXI_AWPROT => open,
      M_AXI_AWREGION => open,
      M_AXI_AWQOS => open,
      M_AXI_AWUSER => open,
      M_AXI_AWVALID => axi4_lite_M_AWVALID,
      M_AXI_AWREADY => axi4_lite_M_AWREADY,
      M_AXI_WID => open,
      M_AXI_WDATA => axi4_lite_M_WDATA,
      M_AXI_WSTRB => axi4_lite_M_WSTRB,
      M_AXI_WLAST => open,
      M_AXI_WUSER => open,
      M_AXI_WVALID => axi4_lite_M_WVALID,
      M_AXI_WREADY => axi4_lite_M_WREADY,
      M_AXI_BID => net_gnd120,
      M_AXI_BRESP => axi4_lite_M_BRESP,
      M_AXI_BUSER => net_gnd10,
      M_AXI_BVALID => axi4_lite_M_BVALID,
      M_AXI_BREADY => axi4_lite_M_BREADY,
      M_AXI_ARID => open,
      M_AXI_ARADDR => axi4_lite_M_ARADDR,
      M_AXI_ARLEN => open,
      M_AXI_ARSIZE => open,
      M_AXI_ARBURST => open,
      M_AXI_ARLOCK => open,
      M_AXI_ARCACHE => open,
      M_AXI_ARPROT => open,
      M_AXI_ARREGION => open,
      M_AXI_ARQOS => open,
      M_AXI_ARUSER => open,
      M_AXI_ARVALID => axi4_lite_M_ARVALID,
      M_AXI_ARREADY => axi4_lite_M_ARREADY,
      M_AXI_RID => net_gnd120,
      M_AXI_RDATA => axi4_lite_M_RDATA,
      M_AXI_RRESP => axi4_lite_M_RRESP,
      M_AXI_RLAST => net_gnd10,
      M_AXI_RUSER => net_gnd10,
      M_AXI_RVALID => axi4_lite_M_RVALID,
      M_AXI_RREADY => axi4_lite_M_RREADY,
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      INTERCONNECT_ARESET_OUT_N => open,
      DEBUG_AW_TRANS_SEQ => open,
      DEBUG_AW_ARB_GRANT => open,
      DEBUG_AR_TRANS_SEQ => open,
      DEBUG_AR_ARB_GRANT => open,
      DEBUG_AW_TRANS_QUAL => open,
      DEBUG_AW_ACCEPT_CNT => open,
      DEBUG_AW_ACTIVE_THREAD => open,
      DEBUG_AW_ACTIVE_TARGET => open,
      DEBUG_AW_ACTIVE_REGION => open,
      DEBUG_AW_ERROR => open,
      DEBUG_AW_TARGET => open,
      DEBUG_AR_TRANS_QUAL => open,
      DEBUG_AR_ACCEPT_CNT => open,
      DEBUG_AR_ACTIVE_THREAD => open,
      DEBUG_AR_ACTIVE_TARGET => open,
      DEBUG_AR_ACTIVE_REGION => open,
      DEBUG_AR_ERROR => open,
      DEBUG_AR_TARGET => open,
      DEBUG_B_TRANS_SEQ => open,
      DEBUG_R_BEAT_CNT => open,
      DEBUG_R_TRANS_SEQ => open,
      DEBUG_AW_ISSUING_CNT => open,
      DEBUG_AR_ISSUING_CNT => open,
      DEBUG_W_BEAT_CNT => open,
      DEBUG_W_TRANS_SEQ => open,
      DEBUG_BID_TARGET => open,
      DEBUG_BID_ERROR => open,
      DEBUG_RID_TARGET => open,
      DEBUG_RID_ERROR => open,
      DEBUG_SR_SC_ARADDR => open,
      DEBUG_SR_SC_ARADDRCONTROL => open,
      DEBUG_SR_SC_AWADDR => open,
      DEBUG_SR_SC_AWADDRCONTROL => open,
      DEBUG_SR_SC_BRESP => open,
      DEBUG_SR_SC_RDATA => open,
      DEBUG_SR_SC_RDATACONTROL => open,
      DEBUG_SR_SC_WDATA => open,
      DEBUG_SR_SC_WDATACONTROL => open,
      DEBUG_SC_SF_ARADDR => open,
      DEBUG_SC_SF_ARADDRCONTROL => open,
      DEBUG_SC_SF_AWADDR => open,
      DEBUG_SC_SF_AWADDRCONTROL => open,
      DEBUG_SC_SF_BRESP => open,
      DEBUG_SC_SF_RDATA => open,
      DEBUG_SC_SF_RDATACONTROL => open,
      DEBUG_SC_SF_WDATA => open,
      DEBUG_SC_SF_WDATACONTROL => open,
      DEBUG_SF_CB_ARADDR => open,
      DEBUG_SF_CB_ARADDRCONTROL => open,
      DEBUG_SF_CB_AWADDR => open,
      DEBUG_SF_CB_AWADDRCONTROL => open,
      DEBUG_SF_CB_BRESP => open,
      DEBUG_SF_CB_RDATA => open,
      DEBUG_SF_CB_RDATACONTROL => open,
      DEBUG_SF_CB_WDATA => open,
      DEBUG_SF_CB_WDATACONTROL => open,
      DEBUG_CB_MF_ARADDR => open,
      DEBUG_CB_MF_ARADDRCONTROL => open,
      DEBUG_CB_MF_AWADDR => open,
      DEBUG_CB_MF_AWADDRCONTROL => open,
      DEBUG_CB_MF_BRESP => open,
      DEBUG_CB_MF_RDATA => open,
      DEBUG_CB_MF_RDATACONTROL => open,
      DEBUG_CB_MF_WDATA => open,
      DEBUG_CB_MF_WDATACONTROL => open,
      DEBUG_MF_MC_ARADDR => open,
      DEBUG_MF_MC_ARADDRCONTROL => open,
      DEBUG_MF_MC_AWADDR => open,
      DEBUG_MF_MC_AWADDRCONTROL => open,
      DEBUG_MF_MC_BRESP => open,
      DEBUG_MF_MC_RDATA => open,
      DEBUG_MF_MC_RDATACONTROL => open,
      DEBUG_MF_MC_WDATA => open,
      DEBUG_MF_MC_WDATACONTROL => open,
      DEBUG_MC_MP_ARADDR => open,
      DEBUG_MC_MP_ARADDRCONTROL => open,
      DEBUG_MC_MP_AWADDR => open,
      DEBUG_MC_MP_AWADDRCONTROL => open,
      DEBUG_MC_MP_BRESP => open,
      DEBUG_MC_MP_RDATA => open,
      DEBUG_MC_MP_RDATACONTROL => open,
      DEBUG_MC_MP_WDATA => open,
      DEBUG_MC_MP_WDATACONTROL => open,
      DEBUG_MP_MR_ARADDR => open,
      DEBUG_MP_MR_ARADDRCONTROL => open,
      DEBUG_MP_MR_AWADDR => open,
      DEBUG_MP_MR_AWADDRCONTROL => open,
      DEBUG_MP_MR_BRESP => open,
      DEBUG_MP_MR_RDATA => open,
      DEBUG_MP_MR_RDATACONTROL => open,
      DEBUG_MP_MR_WDATA => open,
      DEBUG_MP_MR_WDATACONTROL => open
    );

  clock_generator_0 : system_clock_generator_0_wrapper
    port map (
      CLKIN => FPGA_CLK,
      CLKOUT0 => clk_75mhz(0),
      CLKOUT1 => clk_150mhz(0),
      CLKOUT2 => open,
      CLKOUT3 => open,
      CLKOUT4 => open,
      CLKOUT5 => open,
      CLKOUT6 => open,
      CLKOUT7 => open,
      CLKOUT8 => open,
      CLKOUT9 => open,
      CLKOUT10 => open,
      CLKOUT11 => open,
      CLKOUT12 => open,
      CLKOUT13 => open,
      CLKOUT14 => open,
      CLKOUT15 => open,
      CLKFBIN => net_gnd0,
      CLKFBOUT => open,
      PSCLK => net_gnd0,
      PSEN => net_gnd0,
      PSINCDEC => net_gnd0,
      PSDONE => open,
      RST => FCLK_RESET_N_i,
      LOCKED => proc_sys_reset_0_Dcm_locked
    );

  proc_sys_reset_1 : system_proc_sys_reset_1_wrapper
    port map (
      Slowest_sync_clk => pgassign8(9),
      Ext_Reset_In => FCLK_RESET_N_i,
      Aux_Reset_In => net_gnd0,
      MB_Debug_Sys_Rst => net_gnd0,
      Core_Reset_Req_0 => net_gnd0,
      Chip_Reset_Req_0 => net_gnd0,
      System_Reset_Req_0 => net_gnd0,
      Core_Reset_Req_1 => net_gnd0,
      Chip_Reset_Req_1 => net_gnd0,
      System_Reset_Req_1 => net_gnd0,
      Dcm_locked => proc_sys_reset_0_Dcm_locked,
      RstcPPCresetcore_0 => open,
      RstcPPCresetchip_0 => open,
      RstcPPCresetsys_0 => open,
      RstcPPCresetcore_1 => open,
      RstcPPCresetchip_1 => open,
      RstcPPCresetsys_1 => open,
      MB_Reset => open,
      Bus_Struct_Reset => proc_sys_reset_1_BUS_STRUCT_RESET(0 to 0),
      Peripheral_Reset => open,
      Interconnect_aresetn => emu_reset_n(0 to 0),
      Peripheral_aresetn => open
    );

  TPG_SWRST_FF : system_tpg_swrst_ff_wrapper
    port map (
      Clk => pgassign8(9),
      RST => net_gnd0,
      SET => net_gnd0,
      CE => net_gnd0,
      D => TPG_RST(0 to 0),
      Q => TPG_RST_O(0 to 0)
    );

  TPG_SWRST : system_tpg_swrst_wrapper
    port map (
      Op1 => pgassign9,
      Res => TPG_RST(0)
    );

  FILTER_SWRST_FF : system_filter_swrst_ff_wrapper
    port map (
      Clk => pgassign8(9),
      RST => net_gnd0,
      SET => net_gnd0,
      CE => net_gnd0,
      D => FILTER_RST(0 to 0),
      Q => FILTER_RST_O(0 to 0)
    );

  FILTER_SWRST : system_filter_swrst_wrapper
    port map (
      Op1 => pgassign10,
      Res => FILTER_RST(0)
    );

  VIDEO_MUX_0 : system_video_mux_0_wrapper
    port map (
      video_clk_1 => VIDEO_CLK(0 to 0),
      video_clk_2 => pgassign1(0 to 0),
      hsync_1 => timebase_0_XSVI_OUT_hsync(0 to 0),
      hsync_2 => xsvi_hblank(0 to 0),
      vsync_1 => timebase_0_XSVI_OUT_vsync(0 to 0),
      vsync_2 => xsvi_vblank(0 to 0),
      de_1 => timebase_0_XSVI_OUT_active_video(0 to 0),
      de_2 => xsvi_active_video_o(0 to 0),
      video_clk => video_clk_int(0 to 0),
      hsync => hsync_int(0 to 0),
      vsync => vsync_int(0 to 0),
      de => de_int(0 to 0),
      video_sel => ps7_0_GPIO_O(3)
    );

  CLK_DETECT_0 : system_clk_detect_0_wrapper
    port map (
      DUT_CLK => video_clk_int(0),
      S_AXI_ACLK => pgassign8(9),
      S_AXI_ARESETN => axi4_lite_M_ARESETN(0),
      S_AXI_AWADDR => axi4_lite_M_AWADDR(31 downto 0),
      S_AXI_AWVALID => axi4_lite_M_AWVALID(0),
      S_AXI_WDATA => axi4_lite_M_WDATA(31 downto 0),
      S_AXI_WSTRB => axi4_lite_M_WSTRB(3 downto 0),
      S_AXI_WVALID => axi4_lite_M_WVALID(0),
      S_AXI_BREADY => axi4_lite_M_BREADY(0),
      S_AXI_ARADDR => axi4_lite_M_ARADDR(31 downto 0),
      S_AXI_ARVALID => axi4_lite_M_ARVALID(0),
      S_AXI_RREADY => axi4_lite_M_RREADY(0),
      S_AXI_ARREADY => axi4_lite_M_ARREADY(0),
      S_AXI_RDATA => axi4_lite_M_RDATA(31 downto 0),
      S_AXI_RRESP => axi4_lite_M_RRESP(1 downto 0),
      S_AXI_RVALID => axi4_lite_M_RVALID(0),
      S_AXI_WREADY => axi4_lite_M_WREADY(0),
      S_AXI_BRESP => axi4_lite_M_BRESP(1 downto 0),
      S_AXI_BVALID => axi4_lite_M_BVALID(0),
      S_AXI_AWREADY => axi4_lite_M_AWREADY(0)
    );

  VTC_0 : system_vtc_0_wrapper
    port map (
      s_axi_aclk => pgassign8(9),
      s_axi_aresetn => axi4_lite_M_ARESETN(1),
      s_axi_aclken => net_vcc0,
      s_axi_awaddr => axi4_lite_M_AWADDR(40 downto 32),
      s_axi_awvalid => axi4_lite_M_AWVALID(1),
      s_axi_awready => axi4_lite_M_AWREADY(1),
      s_axi_wdata => axi4_lite_M_WDATA(63 downto 32),
      s_axi_wstrb => axi4_lite_M_WSTRB(7 downto 4),
      s_axi_wvalid => axi4_lite_M_WVALID(1),
      s_axi_wready => axi4_lite_M_WREADY(1),
      s_axi_bresp => axi4_lite_M_BRESP(3 downto 2),
      s_axi_bvalid => axi4_lite_M_BVALID(1),
      s_axi_bready => axi4_lite_M_BREADY(1),
      s_axi_araddr => axi4_lite_M_ARADDR(40 downto 32),
      s_axi_arvalid => axi4_lite_M_ARVALID(1),
      s_axi_arready => axi4_lite_M_ARREADY(1),
      s_axi_rdata => axi4_lite_M_RDATA(63 downto 32),
      s_axi_rresp => axi4_lite_M_RRESP(3 downto 2),
      s_axi_rvalid => axi4_lite_M_RVALID(1),
      s_axi_rready => axi4_lite_M_RREADY(1),
      irq => open,
      intc_if => open,
      clk => video_clk_int(0),
      resetn => net_vcc0,
      clken => net_vcc0,
      det_clken => net_vcc0,
      gen_clken => net_vcc0,
      fsync_in => net_gnd0,
      vblank_in => net_gnd0,
      vsync_in => net_gnd0,
      hblank_in => net_gnd0,
      hsync_in => net_gnd0,
      active_video_in => net_gnd0,
      active_chroma_in => net_gnd0,
      vblank_out => open,
      vsync_out => timebase_0_XSVI_OUT_vsync(0),
      hblank_out => open,
      hsync_out => timebase_0_XSVI_OUT_hsync(0),
      active_video_out => timebase_0_XSVI_OUT_active_video(0),
      active_chroma_out => open,
      fsync_out => open
    );

  HDMI_IN : system_hdmi_in_wrapper
    port map (
      clk => fmc_imageon_hdmi_in_0_clk_pin,
      io_hdmii_spdif => net_fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin,
      io_hdmii_video => net_fmc_imageon_hdmi_in_0_io_hdmii_video_pin,
      xsvi_vblank_o => xsvi_vblank(0),
      xsvi_hblank_o => xsvi_hblank(0),
      xsvi_active_video_o => xsvi_active_video_o(0),
      xsvi_video_data_o => xsvi_video_data_o,
      audio_spdif => open,
      debug_o => open
    );

  TPG_0 : system_tpg_0_wrapper
    port map (
      intc_if => open,
      aclk => pgassign6(1),
      aclken => net_vcc0,
      aresetn => emu_reset_n(0),
      irq => open,
      s_axis_video_tdata => pgassign11,
      s_axis_video_tready => dvi2axi_M_AXIS_VIDEO_tready,
      s_axis_video_tvalid => dvi2axi_M_AXIS_VIDEO_tvalid,
      s_axis_video_tlast => dvi2axi_M_AXIS_VIDEO_tlast,
      s_axis_video_tuser => dvi2axi_M_AXIS_VIDEO_tuser,
      m_axis_video_tdata => v_tpg_M_AXIS_VIDEO_tdata,
      m_axis_video_tready => v_tpg_M_AXIS_VIDEO_tready,
      m_axis_video_tvalid => v_tpg_M_AXIS_VIDEO_tvalid,
      m_axis_video_tlast => v_tpg_M_AXIS_VIDEO_tlast,
      m_axis_video_tuser => v_tpg_M_AXIS_VIDEO_tuser,
      s_axi_aclk => pgassign8(9),
      s_axi_aclken => net_vcc0,
      s_axi_aresetn => axi4_lite_M_ARESETN(2),
      s_axi_awaddr => axi4_lite_M_AWADDR(72 downto 64),
      s_axi_awvalid => axi4_lite_M_AWVALID(2),
      s_axi_awready => axi4_lite_M_AWREADY(2),
      s_axi_wdata => axi4_lite_M_WDATA(95 downto 64),
      s_axi_wstrb => axi4_lite_M_WSTRB(11 downto 8),
      s_axi_wvalid => axi4_lite_M_WVALID(2),
      s_axi_wready => axi4_lite_M_WREADY(2),
      s_axi_bresp => axi4_lite_M_BRESP(5 downto 4),
      s_axi_bvalid => axi4_lite_M_BVALID(2),
      s_axi_bready => axi4_lite_M_BREADY(2),
      s_axi_araddr => axi4_lite_M_ARADDR(72 downto 64),
      s_axi_arvalid => axi4_lite_M_ARVALID(2),
      s_axi_arready => axi4_lite_M_ARREADY(2),
      s_axi_rdata => axi4_lite_M_RDATA(95 downto 64),
      s_axi_rresp => axi4_lite_M_RRESP(5 downto 4),
      s_axi_rvalid => axi4_lite_M_RVALID(2),
      s_axi_rready => axi4_lite_M_RREADY(2)
    );

  VID_IN_AXI4S : system_vid_in_axi4s_wrapper
    port map (
      vid_in_clk => video_clk_int(0),
      rst => proc_sys_reset_1_BUS_STRUCT_RESET(0),
      vid_de => de_int(0),
      vid_vblank => vsync_int(0),
      vid_hblank => hsync_int(0),
      vid_vsync => vsync_int(0),
      vid_hsync => hsync_int(0),
      vid_data => xsvi_video_data_o,
      aclk => pgassign6(1),
      aresetn => TPG_RST_O(0),
      aclken => net_vcc0,
      m_axis_video_tdata => tdata,
      m_axis_video_tvalid => dvi2axi_M_AXIS_VIDEO_tvalid,
      m_axis_video_tready => dvi2axi_M_AXIS_VIDEO_tready,
      m_axis_video_tuser => dvi2axi_M_AXIS_VIDEO_tuser,
      m_axis_video_tlast => dvi2axi_M_AXIS_VIDEO_tlast,
      vtd_active_video => open,
      vtd_vblank => open,
      vtd_hblank => open,
      vtd_vsync => open,
      vtd_hsync => open,
      wr_error => open,
      empty => open,
      axis_enable => net_vcc0
    );

  CRESAMPLE_0 : system_cresample_0_wrapper
    port map (
      aclk => pgassign6(1),
      aclken => net_vcc0,
      aresetn => emu_reset_n(0),
      irq => open,
      intc_if => open,
      s_axis_video_tdata => v_tpg_M_AXIS_VIDEO_tdata,
      s_axis_video_tready => v_tpg_M_AXIS_VIDEO_tready,
      s_axis_video_tvalid => v_tpg_M_AXIS_VIDEO_tvalid,
      s_axis_video_tlast => v_tpg_M_AXIS_VIDEO_tlast,
      s_axis_video_tuser => v_tpg_M_AXIS_VIDEO_tuser,
      m_axis_video_tdata => v_cresample_0_M_AXIS_VIDEO_tdata,
      m_axis_video_tready => v_cresample_0_M_AXIS_VIDEO_tready,
      m_axis_video_tvalid => v_cresample_0_M_AXIS_VIDEO_tvalid,
      m_axis_video_tlast => v_cresample_0_M_AXIS_VIDEO_tlast,
      m_axis_video_tuser => v_cresample_0_M_AXIS_VIDEO_tuser,
      s_axi_aclk => pgassign8(9),
      s_axi_aclken => net_vcc0,
      s_axi_aresetn => axi4_lite_M_ARESETN(3),
      s_axi_awaddr => axi4_lite_M_AWADDR(104 downto 96),
      s_axi_awvalid => axi4_lite_M_AWVALID(3),
      s_axi_awready => axi4_lite_M_AWREADY(3),
      s_axi_wdata => axi4_lite_M_WDATA(127 downto 96),
      s_axi_wstrb => axi4_lite_M_WSTRB(15 downto 12),
      s_axi_wvalid => axi4_lite_M_WVALID(3),
      s_axi_wready => axi4_lite_M_WREADY(3),
      s_axi_bresp => axi4_lite_M_BRESP(7 downto 6),
      s_axi_bvalid => axi4_lite_M_BVALID(3),
      s_axi_bready => axi4_lite_M_BREADY(3),
      s_axi_araddr => axi4_lite_M_ARADDR(104 downto 96),
      s_axi_arvalid => axi4_lite_M_ARVALID(3),
      s_axi_arready => axi4_lite_M_ARREADY(3),
      s_axi_rdata => axi4_lite_M_RDATA(127 downto 96),
      s_axi_rresp => axi4_lite_M_RRESP(7 downto 6),
      s_axi_rvalid => axi4_lite_M_RVALID(3),
      s_axi_rready => axi4_lite_M_RREADY(3)
    );

  YUV2RGB_0 : system_yuv2rgb_0_wrapper
    port map (
      aclk => pgassign6(1),
      aclken => net_vcc0,
      aresetn => emu_reset_n(0),
      irq => open,
      intc_if => open,
      s_axis_video_tdata => v_cresample_0_M_AXIS_VIDEO_tdata,
      s_axis_video_tready => v_cresample_0_M_AXIS_VIDEO_tready,
      s_axis_video_tvalid => v_cresample_0_M_AXIS_VIDEO_tvalid,
      s_axis_video_tlast => v_cresample_0_M_AXIS_VIDEO_tlast,
      s_axis_video_tuser_sof => v_cresample_0_M_AXIS_VIDEO_tuser,
      m_axis_video_tdata => ycrcb2rgb_axis_tdata,
      m_axis_video_tready => v_ycrcb2rgb_0_M_AXIS_VIDEO_tready,
      m_axis_video_tvalid => v_ycrcb2rgb_0_M_AXIS_VIDEO_tvalid,
      m_axis_video_tlast => v_ycrcb2rgb_0_M_AXIS_VIDEO_tlast,
      m_axis_video_tuser_sof => v_ycrcb2rgb_0_M_AXIS_VIDEO_tuser(0),
      s_axi_aclk => pgassign8(9),
      s_axi_aclken => net_vcc0,
      s_axi_aresetn => axi4_lite_M_ARESETN(4),
      s_axi_awaddr => axi4_lite_M_AWADDR(136 downto 128),
      s_axi_awvalid => axi4_lite_M_AWVALID(4),
      s_axi_awready => axi4_lite_M_AWREADY(4),
      s_axi_wdata => axi4_lite_M_WDATA(159 downto 128),
      s_axi_wstrb => axi4_lite_M_WSTRB(19 downto 16),
      s_axi_wvalid => axi4_lite_M_WVALID(4),
      s_axi_wready => axi4_lite_M_WREADY(4),
      s_axi_bresp => axi4_lite_M_BRESP(9 downto 8),
      s_axi_bvalid => axi4_lite_M_BVALID(4),
      s_axi_bready => axi4_lite_M_BREADY(4),
      s_axi_araddr => axi4_lite_M_ARADDR(136 downto 128),
      s_axi_arvalid => axi4_lite_M_ARVALID(4),
      s_axi_arready => axi4_lite_M_ARREADY(4),
      s_axi_rdata => axi4_lite_M_RDATA(159 downto 128),
      s_axi_rresp => axi4_lite_M_RRESP(9 downto 8),
      s_axi_rvalid => axi4_lite_M_RVALID(4),
      s_axi_rready => axi4_lite_M_RREADY(4)
    );

  TPG_VDMA : system_tpg_vdma_wrapper
    port map (
      s_axi_lite_aclk => pgassign8(9),
      m_axi_sg_aclk => net_gnd0,
      m_axi_mm2s_aclk => net_gnd0,
      m_axi_s2mm_aclk => pgassign6(1),
      m_axis_mm2s_aclk => net_gnd0,
      s_axis_s2mm_aclk => pgassign6(1),
      axi_resetn => axi4_lite_M_ARESETN(5),
      s_axi_lite_awvalid => axi4_lite_M_AWVALID(5),
      s_axi_lite_awready => axi4_lite_M_AWREADY(5),
      s_axi_lite_awaddr => axi4_lite_M_AWADDR(168 downto 160),
      s_axi_lite_wvalid => axi4_lite_M_WVALID(5),
      s_axi_lite_wready => axi4_lite_M_WREADY(5),
      s_axi_lite_wdata => axi4_lite_M_WDATA(191 downto 160),
      s_axi_lite_bresp => axi4_lite_M_BRESP(11 downto 10),
      s_axi_lite_bvalid => axi4_lite_M_BVALID(5),
      s_axi_lite_bready => axi4_lite_M_BREADY(5),
      s_axi_lite_arvalid => axi4_lite_M_ARVALID(5),
      s_axi_lite_arready => axi4_lite_M_ARREADY(5),
      s_axi_lite_araddr => axi4_lite_M_ARADDR(168 downto 160),
      s_axi_lite_rvalid => axi4_lite_M_RVALID(5),
      s_axi_lite_rready => axi4_lite_M_RREADY(5),
      s_axi_lite_rdata => axi4_lite_M_RDATA(191 downto 160),
      s_axi_lite_rresp => axi4_lite_M_RRESP(11 downto 10),
      m_axi_sg_araddr => open,
      m_axi_sg_arlen => open,
      m_axi_sg_arsize => open,
      m_axi_sg_arburst => open,
      m_axi_sg_arprot => open,
      m_axi_sg_arcache => open,
      m_axi_sg_arvalid => open,
      m_axi_sg_arready => net_gnd0,
      m_axi_sg_rdata => net_gnd32,
      m_axi_sg_rresp => net_gnd2,
      m_axi_sg_rlast => net_gnd0,
      m_axi_sg_rvalid => net_gnd0,
      m_axi_sg_rready => open,
      m_axi_mm2s_araddr => open,
      m_axi_mm2s_arlen => open,
      m_axi_mm2s_arsize => open,
      m_axi_mm2s_arburst => open,
      m_axi_mm2s_arprot => open,
      m_axi_mm2s_arcache => open,
      m_axi_mm2s_arvalid => open,
      m_axi_mm2s_arready => net_gnd0,
      m_axi_mm2s_rdata => net_gnd32,
      m_axi_mm2s_rresp => net_gnd2,
      m_axi_mm2s_rlast => net_gnd0,
      m_axi_mm2s_rvalid => net_gnd0,
      m_axi_mm2s_rready => open,
      mm2s_prmry_reset_out_n => open,
      m_axis_mm2s_tdata => open,
      m_axis_mm2s_tkeep => open,
      m_axis_mm2s_tvalid => open,
      m_axis_mm2s_tready => net_gnd0,
      m_axis_mm2s_tlast => open,
      m_axis_mm2s_tuser => open,
      m_axi_s2mm_awaddr => axi4_0_S_AWADDR(31 downto 0),
      m_axi_s2mm_awlen => axi4_0_S_AWLEN(7 downto 0),
      m_axi_s2mm_awsize => axi4_0_S_AWSIZE(2 downto 0),
      m_axi_s2mm_awburst => axi4_0_S_AWBURST(1 downto 0),
      m_axi_s2mm_awprot => axi4_0_S_AWPROT(2 downto 0),
      m_axi_s2mm_awcache => axi4_0_S_AWCACHE(3 downto 0),
      m_axi_s2mm_awvalid => axi4_0_S_AWVALID(0),
      m_axi_s2mm_awready => axi4_0_S_AWREADY(0),
      m_axi_s2mm_wdata => axi4_0_S_WDATA(63 downto 0),
      m_axi_s2mm_wstrb => axi4_0_S_WSTRB(7 downto 0),
      m_axi_s2mm_wlast => axi4_0_S_WLAST(0),
      m_axi_s2mm_wvalid => axi4_0_S_WVALID(0),
      m_axi_s2mm_wready => axi4_0_S_WREADY(0),
      m_axi_s2mm_bresp => axi4_0_S_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi4_0_S_BVALID(0),
      m_axi_s2mm_bready => axi4_0_S_BREADY(0),
      s2mm_prmry_reset_out_n => TPG_S2MM_s2mm_prmry_reset_out_n,
      s_axis_s2mm_tdata => pgassign12,
      s_axis_s2mm_tkeep => net_vcc4,
      s_axis_s2mm_tvalid => v_ycrcb2rgb_0_M_AXIS_VIDEO_tvalid,
      s_axis_s2mm_tready => v_ycrcb2rgb_0_M_AXIS_VIDEO_tready,
      s_axis_s2mm_tlast => v_ycrcb2rgb_0_M_AXIS_VIDEO_tlast,
      s_axis_s2mm_tuser => v_ycrcb2rgb_0_M_AXIS_VIDEO_tuser(0 to 0),
      mm2s_fsync => net_gnd0,
      mm2s_frame_ptr_in => net_gnd6,
      mm2s_frame_ptr_out => open,
      mm2s_fsync_out => open,
      mm2s_prmtr_update => open,
      mm2s_buffer_empty => open,
      mm2s_buffer_almost_empty => open,
      s2mm_fsync => net_gnd0,
      s2mm_frame_ptr_in => net_gnd6,
      s2mm_frame_ptr_out => open,
      s2mm_fsync_out => fsync_from_tpg_0_vdma,
      s2mm_buffer_full => open,
      s2mm_buffer_almost_full => open,
      s2mm_prmtr_update => open,
      mm2s_introut => open,
      s2mm_introut => TPG_VDMA_s2mm_introut,
      axi_vdma_tstvec => open
    );

  FILTER_ENGINE : system_filter_engine_wrapper
    port map (
      aclk => pgassign6(1),
      aresetn => FILTER_RST_O(0),
      s_axi_CONTROL_BUS_AWADDR => axi4_lite_M_AWADDR(196 downto 192),
      s_axi_CONTROL_BUS_AWVALID => axi4_lite_M_AWVALID(6),
      s_axi_CONTROL_BUS_AWREADY => axi4_lite_M_AWREADY(6),
      s_axi_CONTROL_BUS_WDATA => axi4_lite_M_WDATA(223 downto 192),
      s_axi_CONTROL_BUS_WSTRB => axi4_lite_M_WSTRB(27 downto 24),
      s_axi_CONTROL_BUS_WVALID => axi4_lite_M_WVALID(6),
      s_axi_CONTROL_BUS_WREADY => axi4_lite_M_WREADY(6),
      s_axi_CONTROL_BUS_BRESP => axi4_lite_M_BRESP(13 downto 12),
      s_axi_CONTROL_BUS_BVALID => axi4_lite_M_BVALID(6),
      s_axi_CONTROL_BUS_BREADY => axi4_lite_M_BREADY(6),
      s_axi_CONTROL_BUS_ARADDR => axi4_lite_M_ARADDR(196 downto 192),
      s_axi_CONTROL_BUS_ARVALID => axi4_lite_M_ARVALID(6),
      s_axi_CONTROL_BUS_ARREADY => axi4_lite_M_ARREADY(6),
      s_axi_CONTROL_BUS_RDATA => axi4_lite_M_RDATA(223 downto 192),
      s_axi_CONTROL_BUS_RRESP => axi4_lite_M_RRESP(13 downto 12),
      s_axi_CONTROL_BUS_RVALID => axi4_lite_M_RVALID(6),
      s_axi_CONTROL_BUS_RREADY => axi4_lite_M_RREADY(6),
      interrupt => FILTER_0_interrupt,
      INPUT_STREAM_TVALID => FILTER_DMA_MM2S_TVALID,
      INPUT_STREAM_TREADY => FILTER_DMA_MM2S_TREADY,
      INPUT_STREAM_TDATA => FILTER_DMA_MM2S_TDATA,
      INPUT_STREAM_TKEEP => FILTER_DMA_MM2S_TKEEP,
      INPUT_STREAM_TSTRB => net_gnd4,
      INPUT_STREAM_TUSER => FILTER_DMA_MM2S_TUSER(0 to 0),
      INPUT_STREAM_TLAST => FILTER_DMA_MM2S_TLAST(0 to 0),
      INPUT_STREAM_TID => net_gnd1(0 to 0),
      INPUT_STREAM_TDEST => net_gnd1(0 to 0),
      OUTPUT_STREAM_TVALID => FILTER_DMA_S2MM_TVALID,
      OUTPUT_STREAM_TREADY => FILTER_DMA_S2MM_TREADY,
      OUTPUT_STREAM_TDATA => FILTER_DMA_S2MM_TDATA,
      OUTPUT_STREAM_TKEEP => FILTER_DMA_S2MM_TKEEP,
      OUTPUT_STREAM_TSTRB => open,
      OUTPUT_STREAM_TUSER => FILTER_DMA_S2MM_TUSER(0 to 0),
      OUTPUT_STREAM_TLAST => FILTER_DMA_S2MM_TLAST(0 to 0),
      OUTPUT_STREAM_TID => open,
      OUTPUT_STREAM_TDEST => open
    );

  FILTER_VDMA : system_filter_vdma_wrapper
    port map (
      s_axi_lite_aclk => pgassign8(9),
      m_axi_sg_aclk => net_gnd0,
      m_axi_mm2s_aclk => pgassign6(1),
      m_axi_s2mm_aclk => pgassign6(1),
      m_axis_mm2s_aclk => pgassign6(1),
      s_axis_s2mm_aclk => pgassign6(1),
      axi_resetn => axi4_lite_M_ARESETN(7),
      s_axi_lite_awvalid => axi4_lite_M_AWVALID(7),
      s_axi_lite_awready => axi4_lite_M_AWREADY(7),
      s_axi_lite_awaddr => axi4_lite_M_AWADDR(232 downto 224),
      s_axi_lite_wvalid => axi4_lite_M_WVALID(7),
      s_axi_lite_wready => axi4_lite_M_WREADY(7),
      s_axi_lite_wdata => axi4_lite_M_WDATA(255 downto 224),
      s_axi_lite_bresp => axi4_lite_M_BRESP(15 downto 14),
      s_axi_lite_bvalid => axi4_lite_M_BVALID(7),
      s_axi_lite_bready => axi4_lite_M_BREADY(7),
      s_axi_lite_arvalid => axi4_lite_M_ARVALID(7),
      s_axi_lite_arready => axi4_lite_M_ARREADY(7),
      s_axi_lite_araddr => axi4_lite_M_ARADDR(232 downto 224),
      s_axi_lite_rvalid => axi4_lite_M_RVALID(7),
      s_axi_lite_rready => axi4_lite_M_RREADY(7),
      s_axi_lite_rdata => axi4_lite_M_RDATA(255 downto 224),
      s_axi_lite_rresp => axi4_lite_M_RRESP(15 downto 14),
      m_axi_sg_araddr => open,
      m_axi_sg_arlen => open,
      m_axi_sg_arsize => open,
      m_axi_sg_arburst => open,
      m_axi_sg_arprot => open,
      m_axi_sg_arcache => open,
      m_axi_sg_arvalid => open,
      m_axi_sg_arready => net_gnd0,
      m_axi_sg_rdata => net_gnd32,
      m_axi_sg_rresp => net_gnd2,
      m_axi_sg_rlast => net_gnd0,
      m_axi_sg_rvalid => net_gnd0,
      m_axi_sg_rready => open,
      m_axi_mm2s_araddr => axi4_1_S_ARADDR(31 downto 0),
      m_axi_mm2s_arlen => axi4_1_S_ARLEN(7 downto 0),
      m_axi_mm2s_arsize => axi4_1_S_ARSIZE(2 downto 0),
      m_axi_mm2s_arburst => axi4_1_S_ARBURST(1 downto 0),
      m_axi_mm2s_arprot => axi4_1_S_ARPROT(2 downto 0),
      m_axi_mm2s_arcache => axi4_1_S_ARCACHE(3 downto 0),
      m_axi_mm2s_arvalid => axi4_1_S_ARVALID(0),
      m_axi_mm2s_arready => axi4_1_S_ARREADY(0),
      m_axi_mm2s_rdata => axi4_1_S_RDATA(63 downto 0),
      m_axi_mm2s_rresp => axi4_1_S_RRESP(1 downto 0),
      m_axi_mm2s_rlast => axi4_1_S_RLAST(0),
      m_axi_mm2s_rvalid => axi4_1_S_RVALID(0),
      m_axi_mm2s_rready => axi4_1_S_RREADY(0),
      mm2s_prmry_reset_out_n => open,
      m_axis_mm2s_tdata => FILTER_DMA_MM2S_TDATA,
      m_axis_mm2s_tkeep => FILTER_DMA_MM2S_TKEEP,
      m_axis_mm2s_tvalid => FILTER_DMA_MM2S_TVALID,
      m_axis_mm2s_tready => FILTER_DMA_MM2S_TREADY,
      m_axis_mm2s_tlast => FILTER_DMA_MM2S_TLAST(0),
      m_axis_mm2s_tuser => FILTER_DMA_MM2S_TUSER(0 to 0),
      m_axi_s2mm_awaddr => axi4_1_S_AWADDR(63 downto 32),
      m_axi_s2mm_awlen => axi4_1_S_AWLEN(15 downto 8),
      m_axi_s2mm_awsize => axi4_1_S_AWSIZE(5 downto 3),
      m_axi_s2mm_awburst => axi4_1_S_AWBURST(3 downto 2),
      m_axi_s2mm_awprot => axi4_1_S_AWPROT(5 downto 3),
      m_axi_s2mm_awcache => axi4_1_S_AWCACHE(7 downto 4),
      m_axi_s2mm_awvalid => axi4_1_S_AWVALID(1),
      m_axi_s2mm_awready => axi4_1_S_AWREADY(1),
      m_axi_s2mm_wdata => axi4_1_S_WDATA(127 downto 64),
      m_axi_s2mm_wstrb => axi4_1_S_WSTRB(15 downto 8),
      m_axi_s2mm_wlast => axi4_1_S_WLAST(1),
      m_axi_s2mm_wvalid => axi4_1_S_WVALID(1),
      m_axi_s2mm_wready => axi4_1_S_WREADY(1),
      m_axi_s2mm_bresp => axi4_1_S_BRESP(3 downto 2),
      m_axi_s2mm_bvalid => axi4_1_S_BVALID(1),
      m_axi_s2mm_bready => axi4_1_S_BREADY(1),
      s2mm_prmry_reset_out_n => open,
      s_axis_s2mm_tdata => FILTER_DMA_S2MM_TDATA,
      s_axis_s2mm_tkeep => FILTER_DMA_S2MM_TKEEP,
      s_axis_s2mm_tvalid => FILTER_DMA_S2MM_TVALID,
      s_axis_s2mm_tready => FILTER_DMA_S2MM_TREADY,
      s_axis_s2mm_tlast => FILTER_DMA_S2MM_TLAST(0),
      s_axis_s2mm_tuser => FILTER_DMA_S2MM_TUSER(0 to 0),
      mm2s_fsync => fsync_from_tpg_0_vdma,
      mm2s_frame_ptr_in => net_gnd6,
      mm2s_frame_ptr_out => open,
      mm2s_fsync_out => open,
      mm2s_prmtr_update => open,
      mm2s_buffer_empty => open,
      mm2s_buffer_almost_empty => open,
      s2mm_fsync => fsync_from_tpg_0_vdma,
      s2mm_frame_ptr_in => net_gnd6,
      s2mm_frame_ptr_out => open,
      s2mm_fsync_out => open,
      s2mm_buffer_full => open,
      s2mm_buffer_almost_full => open,
      s2mm_prmtr_update => open,
      mm2s_introut => FILTER_VDMA_mm2s_introut,
      s2mm_introut => FILTER_VDMA_s2mm_introut,
      axi_vdma_tstvec => open
    );

  LOGICVC_0 : system_logicvc_0_wrapper
    port map (
      mem_req => open,
      mem_wr => open,
      mem_ack => net_gnd0,
      mem_addr => open,
      mem_data => open,
      mem_data_be => open,
      mem_wrack => net_gnd0,
      mem_burst => open,
      mem_data_in => net_gnd64,
      mem_data_valid => net_gnd0,
      MPLB_Rst => net_gnd0,
      M_Request => open,
      M_Abort => open,
      M_Priority => open,
      M_Buslock => open,
      M_LockErr => open,
      M_TAttribute => open,
      M_Type => open,
      M_BE => open,
      M_RNW => open,
      M_UABus => open,
      M_ABus => open,
      M_MSize => open,
      M_size => open,
      M_WrBurst => open,
      M_RdBurst => open,
      M_WrDBus => open,
      PLB_MAddrAck => net_gnd0,
      PLB_MSSize => net_gnd2(1 downto 0),
      PLB_MRearbitrate => net_gnd0,
      PLB_MTimeout => net_gnd0,
      PLB_MWrDAck => net_gnd0,
      PLB_MWrBTerm => net_gnd0,
      PLB_MRdDBus => net_gnd64(63 downto 0),
      PLB_MRdWdAddr => net_gnd4(3 downto 0),
      PLB_MRdDAck => net_gnd0,
      PLB_MRdBTerm => net_gnd0,
      PLB_MBusy => net_gnd0,
      PLB_MRdErr => net_gnd0,
      PLB_MWrErr => net_gnd0,
      PLB_MIRQ => net_gnd0,
      M_AXI_ARESETN => axi4_0_S_ARESETN(1),
      M_AXI_AWID => axi4_0_S_AWID(1 downto 1),
      M_AXI_AWADDR => axi4_0_S_AWADDR(63 downto 32),
      M_AXI_AWLEN => axi4_0_S_AWLEN(15 downto 8),
      M_AXI_AWSIZE => axi4_0_S_AWSIZE(5 downto 3),
      M_AXI_AWBURST => axi4_0_S_AWBURST(3 downto 2),
      M_AXI_AWLOCK => axi4_0_S_AWLOCK(3 downto 2),
      M_AXI_AWCACHE => axi4_0_S_AWCACHE(7 downto 4),
      M_AXI_AWPROT => axi4_0_S_AWPROT(5 downto 3),
      M_AXI_AWQOS => axi4_0_S_AWQOS(7 downto 4),
      M_AXI_AWVALID => axi4_0_S_AWVALID(1),
      M_AXI_AWREADY => axi4_0_S_AWREADY(1),
      M_AXI_WDATA => axi4_0_S_WDATA(255 downto 128),
      M_AXI_WSTRB => axi4_0_S_WSTRB(31 downto 16),
      M_AXI_WLAST => axi4_0_S_WLAST(1),
      M_AXI_WVALID => axi4_0_S_WVALID(1),
      M_AXI_WREADY => axi4_0_S_WREADY(1),
      M_AXI_BID => axi4_0_S_BID(1 downto 1),
      M_AXI_BRESP => axi4_0_S_BRESP(3 downto 2),
      M_AXI_BVALID => axi4_0_S_BVALID(1),
      M_AXI_BREADY => axi4_0_S_BREADY(1),
      M_AXI_ARID => axi4_0_S_ARID(1 downto 1),
      M_AXI_ARADDR => axi4_0_S_ARADDR(63 downto 32),
      M_AXI_ARLEN => axi4_0_S_ARLEN(15 downto 8),
      M_AXI_ARSIZE => axi4_0_S_ARSIZE(5 downto 3),
      M_AXI_ARBURST => axi4_0_S_ARBURST(3 downto 2),
      M_AXI_ARLOCK => axi4_0_S_ARLOCK(3 downto 2),
      M_AXI_ARCACHE => axi4_0_S_ARCACHE(7 downto 4),
      M_AXI_ARPROT => axi4_0_S_ARPROT(5 downto 3),
      M_AXI_ARQOS => axi4_0_S_ARQOS(7 downto 4),
      M_AXI_ARVALID => axi4_0_S_ARVALID(1),
      M_AXI_ARREADY => axi4_0_S_ARREADY(1),
      M_AXI_RID => axi4_0_S_RID(1 downto 1),
      M_AXI_RDATA => axi4_0_S_RDATA(255 downto 128),
      M_AXI_RRESP => axi4_0_S_RRESP(3 downto 2),
      M_AXI_RLAST => axi4_0_S_RLAST(1),
      M_AXI_RVALID => axi4_0_S_RVALID(1),
      M_AXI_RREADY => axi4_0_S_RREADY(1),
      OPB_Clk => net_gnd0,
      OPB_Rst => net_gnd0,
      OPB_ABus => net_gnd32(31 downto 0),
      OPB_BE => net_gnd4(3 downto 0),
      OPB_RNW => net_gnd0,
      OPB_select => net_gnd0,
      OPB_seqAddr => net_gnd0,
      OPB_DBus => net_gnd32(31 downto 0),
      Sl_DBus => open,
      Sl_errAck => open,
      Sl_retry => open,
      Sl_toutSup => open,
      Sl_xferAck => open,
      SPLB_Clk => net_gnd0,
      SPLB_Rst => net_gnd0,
      PLB_ABus => net_gnd32(31 downto 0),
      PLB_UABus => net_gnd32(31 downto 0),
      PLB_PAValid => net_gnd0,
      PLB_SAValid => net_gnd0,
      PLB_rdPrim => net_gnd0,
      PLB_wrPrim => net_gnd0,
      PLB_masterID => net_gnd1(0 to 0),
      PLB_abort => net_gnd0,
      PLB_busLock => net_gnd0,
      PLB_RNW => net_gnd0,
      PLB_BE => net_gnd4(3 downto 0),
      PLB_MSize => net_gnd2(1 downto 0),
      PLB_size => net_gnd4(3 downto 0),
      PLB_type => net_gnd3(2 downto 0),
      PLB_lockErr => net_gnd0,
      PLB_wrDBus => net_gnd32(31 downto 0),
      PLB_wrBurst => net_gnd0,
      PLB_rdBurst => net_gnd0,
      PLB_wrPendReq => net_gnd0,
      PLB_rdPendReq => net_gnd0,
      PLB_wrPendPri => net_gnd2(1 downto 0),
      PLB_rdPendPri => net_gnd2(1 downto 0),
      PLB_reqPri => net_gnd2(1 downto 0),
      PLB_TAttribute => net_gnd16,
      Sl_addrAck => open,
      Sl_SSize => open,
      Sl_wait => open,
      Sl_rearbitrate => open,
      Sl_wrDAck => open,
      Sl_wrComp => open,
      Sl_wrBTerm => open,
      Sl_rdDBus => open,
      Sl_rdWdAddr => open,
      Sl_rdDAck => open,
      Sl_rdComp => open,
      Sl_rdBTerm => open,
      Sl_MBusy => open,
      Sl_MWrErr => open,
      Sl_MRdErr => open,
      Sl_MIRQ => open,
      S_AXI_ACLK => pgassign8(9),
      S_AXI_ARESETN => axi4_lite_M_ARESETN(8),
      S_AXI_AWADDR => axi4_lite_M_AWADDR(287 downto 256),
      S_AXI_AWVALID => axi4_lite_M_AWVALID(8),
      S_AXI_AWREADY => axi4_lite_M_AWREADY(8),
      S_AXI_WDATA => axi4_lite_M_WDATA(287 downto 256),
      S_AXI_WSTRB => axi4_lite_M_WSTRB(35 downto 32),
      S_AXI_WVALID => axi4_lite_M_WVALID(8),
      S_AXI_WREADY => axi4_lite_M_WREADY(8),
      S_AXI_BRESP => axi4_lite_M_BRESP(17 downto 16),
      S_AXI_BVALID => axi4_lite_M_BVALID(8),
      S_AXI_BREADY => axi4_lite_M_BREADY(8),
      S_AXI_ARADDR => axi4_lite_M_ARADDR(287 downto 256),
      S_AXI_ARVALID => axi4_lite_M_ARVALID(8),
      S_AXI_ARREADY => axi4_lite_M_ARREADY(8),
      S_AXI_RDATA => axi4_lite_M_RDATA(287 downto 256),
      S_AXI_RRESP => axi4_lite_M_RRESP(17 downto 16),
      S_AXI_RVALID => axi4_lite_M_RVALID(8),
      S_AXI_RREADY => axi4_lite_M_RREADY(8),
      rst => proc_sys_reset_1_BUS_STRUCT_RESET(0),
      mclk => pgassign6(1),
      vclk => VIDEO_CLK(0),
      vclk2 => net_gnd0,
      itu_clk_in => net_gnd0,
      pix_clk_i => net_gnd0,
      pix_clk_o => CVC_DISPLAY_pix_clk_o,
      pix_clk_t => open,
      pix_clk_n_i => net_gnd0,
      pix_clk_n_o => open,
      pix_clk_n_t => open,
      d_pix_i => net_gnd16(0 to 15),
      d_pix_o => CVC_DISPLAY_d_pix_o,
      d_pix_t => open,
      hsync_i => net_gnd0,
      hsync_o => CVC_DISPLAY_hsync_o,
      hsync_t => open,
      vsync_i => net_gnd0,
      vsync_o => CVC_DISPLAY_vsync_o,
      vsync_t => open,
      blank_i => net_gnd0,
      blank_o => CVC_DISPLAY_blank_o,
      blank_t => open,
      itu656_clk_o => open,
      itu656_data_o => open,
      lvds_clk => net_gnd0,
      lvds_clkn => net_gnd0,
      lvds_data_out_p => open,
      lvds_data_out_n => open,
      lvds_clk_out_p => open,
      lvds_clk_out_n => open,
      pllvclk_locked => net_gnd0,
      dvi_clk_p => open,
      dvi_clk_n => open,
      dvi_data_p => open,
      dvi_data_n => open,
      e_vclk => net_gnd0,
      e_vsync => net_gnd0,
      e_hsync => net_gnd0,
      e_blank => net_gnd0,
      e_data => net_gnd24,
      e_video_present => net_gnd0,
      e_curr_vbuff => net_gnd6,
      e_next_vbuff => open,
      e_sw_vbuff => pgassign13,
      e_sw_grant => open,
      vcdivsel => open,
      vclksel => open,
      en_vdd => open,
      en_blight => open,
      v_en => open,
      en_vee => open,
      interrupt => CVC_DISPLAY_interrupt
    );

  PERF_MON_HP0_HP2 : system_perf_mon_hp0_hp2_wrapper
    port map (
      S_AXI_ACLK => pgassign8(9),
      S_AXI_ARESETN => axi4_lite_M_ARESETN(9),
      S_AXI_AWADDR => axi4_lite_M_AWADDR(303 downto 288),
      S_AXI_AWVALID => axi4_lite_M_AWVALID(9),
      S_AXI_AWREADY => axi4_lite_M_AWREADY(9),
      S_AXI_WDATA => axi4_lite_M_WDATA(319 downto 288),
      S_AXI_WSTRB => axi4_lite_M_WSTRB(39 downto 36),
      S_AXI_WVALID => axi4_lite_M_WVALID(9),
      S_AXI_WREADY => axi4_lite_M_WREADY(9),
      S_AXI_BRESP => axi4_lite_M_BRESP(19 downto 18),
      S_AXI_BVALID => axi4_lite_M_BVALID(9),
      S_AXI_BREADY => axi4_lite_M_BREADY(9),
      S_AXI_ARADDR => axi4_lite_M_ARADDR(303 downto 288),
      S_AXI_ARVALID => axi4_lite_M_ARVALID(9),
      S_AXI_ARREADY => axi4_lite_M_ARREADY(9),
      S_AXI_RDATA => axi4_lite_M_RDATA(319 downto 288),
      S_AXI_RRESP => axi4_lite_M_RRESP(19 downto 18),
      S_AXI_RVALID => axi4_lite_M_RVALID(9),
      S_AXI_RREADY => axi4_lite_M_RREADY(9),
      SLOT_0_AXI_ACLK => pgassign6(1),
      SLOT_0_AXI_ARESETN => axi4_0_M_ARESETN(0),
      SLOT_0_AXI_AWID => axi4_0_M_AWID(0 to 0),
      SLOT_0_AXI_AWADDR => axi4_0_M_AWADDR,
      SLOT_0_AXI_AWLEN => axi4_0_M_AWLEN,
      SLOT_0_AXI_AWPROT => axi4_0_M_AWPROT,
      SLOT_0_AXI_AWSIZE => axi4_0_M_AWSIZE,
      SLOT_0_AXI_AWBURST => axi4_0_M_AWBURST,
      SLOT_0_AXI_AWCACHE => axi4_0_M_AWCACHE,
      SLOT_0_AXI_AWLOCK => axi4_0_M_AWVALID(0),
      SLOT_0_AXI_AWVALID => axi4_0_M_AWVALID(0),
      SLOT_0_AXI_AWREADY => axi4_0_M_AWREADY(0),
      SLOT_0_AXI_WDATA => axi4_0_M_WDATA(63 downto 0),
      SLOT_0_AXI_WSTRB => axi4_0_M_WSTRB(7 downto 0),
      SLOT_0_AXI_WLAST => axi4_0_M_WLAST(0),
      SLOT_0_AXI_WVALID => axi4_0_M_WVALID(0),
      SLOT_0_AXI_WREADY => axi4_0_M_WREADY(0),
      SLOT_0_AXI_BID => axi4_0_M_BID(0 to 0),
      SLOT_0_AXI_BRESP => axi4_0_M_BRESP,
      SLOT_0_AXI_BVALID => axi4_0_M_BVALID(0),
      SLOT_0_AXI_BREADY => axi4_0_M_BREADY(0),
      SLOT_0_AXI_ARID => axi4_0_M_ARID(0 to 0),
      SLOT_0_AXI_ARADDR => axi4_0_M_ARADDR,
      SLOT_0_AXI_ARLEN => axi4_0_M_ARLEN,
      SLOT_0_AXI_ARSIZE => axi4_0_M_ARSIZE,
      SLOT_0_AXI_ARBURST => axi4_0_M_ARBURST,
      SLOT_0_AXI_ARPROT => axi4_0_M_AWPROT,
      SLOT_0_AXI_ARCACHE => axi4_0_M_ARCACHE,
      SLOT_0_AXI_ARLOCK => axi4_0_M_AWVALID(0),
      SLOT_0_AXI_ARVALID => axi4_0_M_ARVALID(0),
      SLOT_0_AXI_ARREADY => axi4_0_M_ARREADY(0),
      SLOT_0_AXI_RID => axi4_0_M_RID(0 to 0),
      SLOT_0_AXI_RDATA => axi4_0_M_RDATA(63 downto 0),
      SLOT_0_AXI_RRESP => axi4_0_M_RRESP,
      SLOT_0_AXI_RLAST => axi4_0_M_RLAST(0),
      SLOT_0_AXI_RVALID => axi4_0_M_RVALID(0),
      SLOT_0_AXI_RREADY => axi4_0_M_RREADY(0),
      SLOT_0_AXIS_ACLK => net_gnd0,
      SLOT_0_AXIS_ARESETN => net_gnd0,
      SLOT_0_AXIS_TVALID => net_gnd0,
      SLOT_0_AXIS_TREADY => net_gnd0,
      SLOT_0_AXIS_TDATA => net_gnd32,
      SLOT_0_AXIS_TSTRB => net_gnd4,
      SLOT_0_AXIS_TKEEP => net_gnd4,
      SLOT_0_AXIS_TLAST => net_gnd0,
      SLOT_0_AXIS_TID => net_gnd1(0 to 0),
      SLOT_0_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_0_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_1_AXI_ACLK => pgassign6(1),
      SLOT_1_AXI_ARESETN => axi4_1_M_ARESETN(0),
      SLOT_1_AXI_AWID => axi4_1_M_AWID(0 to 0),
      SLOT_1_AXI_AWADDR => axi4_1_M_AWADDR,
      SLOT_1_AXI_AWLEN => axi4_1_M_AWLEN,
      SLOT_1_AXI_AWPROT => axi4_1_M_AWPROT,
      SLOT_1_AXI_AWSIZE => axi4_1_M_AWSIZE,
      SLOT_1_AXI_AWBURST => axi4_1_M_AWBURST,
      SLOT_1_AXI_AWCACHE => axi4_1_M_AWCACHE,
      SLOT_1_AXI_AWLOCK => axi4_1_M_AWVALID(0),
      SLOT_1_AXI_AWVALID => axi4_1_M_AWVALID(0),
      SLOT_1_AXI_AWREADY => axi4_1_M_AWREADY(0),
      SLOT_1_AXI_WDATA => axi4_1_M_WDATA,
      SLOT_1_AXI_WSTRB => axi4_1_M_WSTRB,
      SLOT_1_AXI_WLAST => axi4_1_M_WLAST(0),
      SLOT_1_AXI_WVALID => axi4_1_M_WVALID(0),
      SLOT_1_AXI_WREADY => axi4_1_M_WREADY(0),
      SLOT_1_AXI_BID => axi4_1_M_BID(0 to 0),
      SLOT_1_AXI_BRESP => axi4_1_M_BRESP,
      SLOT_1_AXI_BVALID => axi4_1_M_BVALID(0),
      SLOT_1_AXI_BREADY => axi4_1_M_BREADY(0),
      SLOT_1_AXI_ARID => axi4_1_M_ARID(0 to 0),
      SLOT_1_AXI_ARADDR => axi4_1_M_ARADDR,
      SLOT_1_AXI_ARLEN => axi4_1_M_ARLEN,
      SLOT_1_AXI_ARSIZE => axi4_1_M_ARSIZE,
      SLOT_1_AXI_ARBURST => axi4_1_M_ARBURST,
      SLOT_1_AXI_ARPROT => axi4_1_M_AWPROT,
      SLOT_1_AXI_ARCACHE => axi4_1_M_ARCACHE,
      SLOT_1_AXI_ARLOCK => axi4_1_M_AWVALID(0),
      SLOT_1_AXI_ARVALID => axi4_1_M_ARVALID(0),
      SLOT_1_AXI_ARREADY => axi4_1_M_ARREADY(0),
      SLOT_1_AXI_RID => axi4_1_M_RID(0 to 0),
      SLOT_1_AXI_RDATA => axi4_1_M_RDATA,
      SLOT_1_AXI_RRESP => axi4_1_M_RRESP,
      SLOT_1_AXI_RLAST => axi4_1_M_RLAST(0),
      SLOT_1_AXI_RVALID => axi4_1_M_RVALID(0),
      SLOT_1_AXI_RREADY => axi4_1_M_RREADY(0),
      SLOT_1_AXIS_ACLK => net_gnd0,
      SLOT_1_AXIS_ARESETN => net_gnd0,
      SLOT_1_AXIS_TVALID => net_gnd0,
      SLOT_1_AXIS_TREADY => net_gnd0,
      SLOT_1_AXIS_TDATA => net_gnd32,
      SLOT_1_AXIS_TSTRB => net_gnd4,
      SLOT_1_AXIS_TKEEP => net_gnd4,
      SLOT_1_AXIS_TLAST => net_gnd0,
      SLOT_1_AXIS_TID => net_gnd1(0 to 0),
      SLOT_1_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_1_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_2_AXI_ACLK => net_gnd0,
      SLOT_2_AXI_ARESETN => net_gnd0,
      SLOT_2_AXI_AWID => net_gnd1(0 to 0),
      SLOT_2_AXI_AWADDR => net_gnd32,
      SLOT_2_AXI_AWLEN => net_gnd8,
      SLOT_2_AXI_AWPROT => net_gnd3,
      SLOT_2_AXI_AWSIZE => net_gnd3,
      SLOT_2_AXI_AWBURST => net_gnd2,
      SLOT_2_AXI_AWCACHE => net_gnd4,
      SLOT_2_AXI_AWLOCK => net_gnd0,
      SLOT_2_AXI_AWVALID => net_gnd0,
      SLOT_2_AXI_AWREADY => net_gnd0,
      SLOT_2_AXI_WDATA => net_gnd32,
      SLOT_2_AXI_WSTRB => net_gnd4,
      SLOT_2_AXI_WLAST => net_gnd0,
      SLOT_2_AXI_WVALID => net_gnd0,
      SLOT_2_AXI_WREADY => net_gnd0,
      SLOT_2_AXI_BID => net_gnd1(0 to 0),
      SLOT_2_AXI_BRESP => net_gnd2,
      SLOT_2_AXI_BVALID => net_gnd0,
      SLOT_2_AXI_BREADY => net_gnd0,
      SLOT_2_AXI_ARID => net_gnd1(0 to 0),
      SLOT_2_AXI_ARADDR => net_gnd32,
      SLOT_2_AXI_ARLEN => net_gnd8,
      SLOT_2_AXI_ARSIZE => net_gnd3,
      SLOT_2_AXI_ARBURST => net_gnd2,
      SLOT_2_AXI_ARPROT => net_gnd3,
      SLOT_2_AXI_ARCACHE => net_gnd4,
      SLOT_2_AXI_ARLOCK => net_gnd0,
      SLOT_2_AXI_ARVALID => net_gnd0,
      SLOT_2_AXI_ARREADY => net_gnd0,
      SLOT_2_AXI_RID => net_gnd1(0 to 0),
      SLOT_2_AXI_RDATA => net_gnd32,
      SLOT_2_AXI_RRESP => net_gnd2,
      SLOT_2_AXI_RLAST => net_gnd0,
      SLOT_2_AXI_RVALID => net_gnd0,
      SLOT_2_AXI_RREADY => net_gnd0,
      SLOT_2_AXIS_ACLK => net_gnd0,
      SLOT_2_AXIS_ARESETN => net_gnd0,
      SLOT_2_AXIS_TVALID => net_gnd0,
      SLOT_2_AXIS_TREADY => net_gnd0,
      SLOT_2_AXIS_TDATA => net_gnd32,
      SLOT_2_AXIS_TSTRB => net_gnd4,
      SLOT_2_AXIS_TKEEP => net_gnd4,
      SLOT_2_AXIS_TLAST => net_gnd0,
      SLOT_2_AXIS_TID => net_gnd1(0 to 0),
      SLOT_2_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_2_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_3_AXI_ACLK => net_gnd0,
      SLOT_3_AXI_ARESETN => net_gnd0,
      SLOT_3_AXI_AWID => net_gnd1(0 to 0),
      SLOT_3_AXI_AWADDR => net_gnd32,
      SLOT_3_AXI_AWLEN => net_gnd8,
      SLOT_3_AXI_AWPROT => net_gnd3,
      SLOT_3_AXI_AWSIZE => net_gnd3,
      SLOT_3_AXI_AWBURST => net_gnd2,
      SLOT_3_AXI_AWCACHE => net_gnd4,
      SLOT_3_AXI_AWLOCK => net_gnd0,
      SLOT_3_AXI_AWVALID => net_gnd0,
      SLOT_3_AXI_AWREADY => net_gnd0,
      SLOT_3_AXI_WDATA => net_gnd32,
      SLOT_3_AXI_WSTRB => net_gnd4,
      SLOT_3_AXI_WLAST => net_gnd0,
      SLOT_3_AXI_WVALID => net_gnd0,
      SLOT_3_AXI_WREADY => net_gnd0,
      SLOT_3_AXI_BID => net_gnd1(0 to 0),
      SLOT_3_AXI_BRESP => net_gnd2,
      SLOT_3_AXI_BVALID => net_gnd0,
      SLOT_3_AXI_BREADY => net_gnd0,
      SLOT_3_AXI_ARID => net_gnd1(0 to 0),
      SLOT_3_AXI_ARADDR => net_gnd32,
      SLOT_3_AXI_ARLEN => net_gnd8,
      SLOT_3_AXI_ARSIZE => net_gnd3,
      SLOT_3_AXI_ARBURST => net_gnd2,
      SLOT_3_AXI_ARPROT => net_gnd3,
      SLOT_3_AXI_ARCACHE => net_gnd4,
      SLOT_3_AXI_ARLOCK => net_gnd0,
      SLOT_3_AXI_ARVALID => net_gnd0,
      SLOT_3_AXI_ARREADY => net_gnd0,
      SLOT_3_AXI_RID => net_gnd1(0 to 0),
      SLOT_3_AXI_RDATA => net_gnd32,
      SLOT_3_AXI_RRESP => net_gnd2,
      SLOT_3_AXI_RLAST => net_gnd0,
      SLOT_3_AXI_RVALID => net_gnd0,
      SLOT_3_AXI_RREADY => net_gnd0,
      SLOT_3_AXIS_ACLK => net_gnd0,
      SLOT_3_AXIS_ARESETN => net_gnd0,
      SLOT_3_AXIS_TVALID => net_gnd0,
      SLOT_3_AXIS_TREADY => net_gnd0,
      SLOT_3_AXIS_TDATA => net_gnd32,
      SLOT_3_AXIS_TSTRB => net_gnd4,
      SLOT_3_AXIS_TKEEP => net_gnd4,
      SLOT_3_AXIS_TLAST => net_gnd0,
      SLOT_3_AXIS_TID => net_gnd1(0 to 0),
      SLOT_3_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_3_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_4_AXI_ACLK => net_gnd0,
      SLOT_4_AXI_ARESETN => net_gnd0,
      SLOT_4_AXI_AWID => net_gnd1(0 to 0),
      SLOT_4_AXI_AWADDR => net_gnd32,
      SLOT_4_AXI_AWLEN => net_gnd8,
      SLOT_4_AXI_AWPROT => net_gnd3,
      SLOT_4_AXI_AWSIZE => net_gnd3,
      SLOT_4_AXI_AWBURST => net_gnd2,
      SLOT_4_AXI_AWCACHE => net_gnd4,
      SLOT_4_AXI_AWLOCK => net_gnd0,
      SLOT_4_AXI_AWVALID => net_gnd0,
      SLOT_4_AXI_AWREADY => net_gnd0,
      SLOT_4_AXI_WDATA => net_gnd32,
      SLOT_4_AXI_WSTRB => net_gnd4,
      SLOT_4_AXI_WLAST => net_gnd0,
      SLOT_4_AXI_WVALID => net_gnd0,
      SLOT_4_AXI_WREADY => net_gnd0,
      SLOT_4_AXI_BID => net_gnd1(0 to 0),
      SLOT_4_AXI_BRESP => net_gnd2,
      SLOT_4_AXI_BVALID => net_gnd0,
      SLOT_4_AXI_BREADY => net_gnd0,
      SLOT_4_AXI_ARID => net_gnd1(0 to 0),
      SLOT_4_AXI_ARADDR => net_gnd32,
      SLOT_4_AXI_ARLEN => net_gnd8,
      SLOT_4_AXI_ARSIZE => net_gnd3,
      SLOT_4_AXI_ARBURST => net_gnd2,
      SLOT_4_AXI_ARPROT => net_gnd3,
      SLOT_4_AXI_ARCACHE => net_gnd4,
      SLOT_4_AXI_ARLOCK => net_gnd0,
      SLOT_4_AXI_ARVALID => net_gnd0,
      SLOT_4_AXI_ARREADY => net_gnd0,
      SLOT_4_AXI_RID => net_gnd1(0 to 0),
      SLOT_4_AXI_RDATA => net_gnd32,
      SLOT_4_AXI_RRESP => net_gnd2,
      SLOT_4_AXI_RLAST => net_gnd0,
      SLOT_4_AXI_RVALID => net_gnd0,
      SLOT_4_AXI_RREADY => net_gnd0,
      SLOT_4_AXIS_ACLK => net_gnd0,
      SLOT_4_AXIS_ARESETN => net_gnd0,
      SLOT_4_AXIS_TVALID => net_gnd0,
      SLOT_4_AXIS_TREADY => net_gnd0,
      SLOT_4_AXIS_TDATA => net_gnd32,
      SLOT_4_AXIS_TSTRB => net_gnd4,
      SLOT_4_AXIS_TKEEP => net_gnd4,
      SLOT_4_AXIS_TLAST => net_gnd0,
      SLOT_4_AXIS_TID => net_gnd1(0 to 0),
      SLOT_4_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_4_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_5_AXI_ACLK => net_gnd0,
      SLOT_5_AXI_ARESETN => net_gnd0,
      SLOT_5_AXI_AWID => net_gnd1(0 to 0),
      SLOT_5_AXI_AWADDR => net_gnd32,
      SLOT_5_AXI_AWLEN => net_gnd8,
      SLOT_5_AXI_AWPROT => net_gnd3,
      SLOT_5_AXI_AWSIZE => net_gnd3,
      SLOT_5_AXI_AWBURST => net_gnd2,
      SLOT_5_AXI_AWCACHE => net_gnd4,
      SLOT_5_AXI_AWLOCK => net_gnd0,
      SLOT_5_AXI_AWVALID => net_gnd0,
      SLOT_5_AXI_AWREADY => net_gnd0,
      SLOT_5_AXI_WDATA => net_gnd32,
      SLOT_5_AXI_WSTRB => net_gnd4,
      SLOT_5_AXI_WLAST => net_gnd0,
      SLOT_5_AXI_WVALID => net_gnd0,
      SLOT_5_AXI_WREADY => net_gnd0,
      SLOT_5_AXI_BID => net_gnd1(0 to 0),
      SLOT_5_AXI_BRESP => net_gnd2,
      SLOT_5_AXI_BVALID => net_gnd0,
      SLOT_5_AXI_BREADY => net_gnd0,
      SLOT_5_AXI_ARID => net_gnd1(0 to 0),
      SLOT_5_AXI_ARADDR => net_gnd32,
      SLOT_5_AXI_ARLEN => net_gnd8,
      SLOT_5_AXI_ARSIZE => net_gnd3,
      SLOT_5_AXI_ARBURST => net_gnd2,
      SLOT_5_AXI_ARPROT => net_gnd3,
      SLOT_5_AXI_ARCACHE => net_gnd4,
      SLOT_5_AXI_ARLOCK => net_gnd0,
      SLOT_5_AXI_ARVALID => net_gnd0,
      SLOT_5_AXI_ARREADY => net_gnd0,
      SLOT_5_AXI_RID => net_gnd1(0 to 0),
      SLOT_5_AXI_RDATA => net_gnd32,
      SLOT_5_AXI_RRESP => net_gnd2,
      SLOT_5_AXI_RLAST => net_gnd0,
      SLOT_5_AXI_RVALID => net_gnd0,
      SLOT_5_AXI_RREADY => net_gnd0,
      SLOT_5_AXIS_ACLK => net_gnd0,
      SLOT_5_AXIS_ARESETN => net_gnd0,
      SLOT_5_AXIS_TVALID => net_gnd0,
      SLOT_5_AXIS_TREADY => net_gnd0,
      SLOT_5_AXIS_TDATA => net_gnd32,
      SLOT_5_AXIS_TSTRB => net_gnd4,
      SLOT_5_AXIS_TKEEP => net_gnd4,
      SLOT_5_AXIS_TLAST => net_gnd0,
      SLOT_5_AXIS_TID => net_gnd1(0 to 0),
      SLOT_5_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_5_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_6_AXI_ACLK => net_gnd0,
      SLOT_6_AXI_ARESETN => net_gnd0,
      SLOT_6_AXI_AWID => net_gnd1(0 to 0),
      SLOT_6_AXI_AWADDR => net_gnd32,
      SLOT_6_AXI_AWLEN => net_gnd8,
      SLOT_6_AXI_AWPROT => net_gnd3,
      SLOT_6_AXI_AWSIZE => net_gnd3,
      SLOT_6_AXI_AWBURST => net_gnd2,
      SLOT_6_AXI_AWCACHE => net_gnd4,
      SLOT_6_AXI_AWLOCK => net_gnd0,
      SLOT_6_AXI_AWVALID => net_gnd0,
      SLOT_6_AXI_AWREADY => net_gnd0,
      SLOT_6_AXI_WDATA => net_gnd32,
      SLOT_6_AXI_WSTRB => net_gnd4,
      SLOT_6_AXI_WLAST => net_gnd0,
      SLOT_6_AXI_WVALID => net_gnd0,
      SLOT_6_AXI_WREADY => net_gnd0,
      SLOT_6_AXI_BID => net_gnd1(0 to 0),
      SLOT_6_AXI_BRESP => net_gnd2,
      SLOT_6_AXI_BVALID => net_gnd0,
      SLOT_6_AXI_BREADY => net_gnd0,
      SLOT_6_AXI_ARID => net_gnd1(0 to 0),
      SLOT_6_AXI_ARADDR => net_gnd32,
      SLOT_6_AXI_ARLEN => net_gnd8,
      SLOT_6_AXI_ARSIZE => net_gnd3,
      SLOT_6_AXI_ARBURST => net_gnd2,
      SLOT_6_AXI_ARPROT => net_gnd3,
      SLOT_6_AXI_ARCACHE => net_gnd4,
      SLOT_6_AXI_ARLOCK => net_gnd0,
      SLOT_6_AXI_ARVALID => net_gnd0,
      SLOT_6_AXI_ARREADY => net_gnd0,
      SLOT_6_AXI_RID => net_gnd1(0 to 0),
      SLOT_6_AXI_RDATA => net_gnd32,
      SLOT_6_AXI_RRESP => net_gnd2,
      SLOT_6_AXI_RLAST => net_gnd0,
      SLOT_6_AXI_RVALID => net_gnd0,
      SLOT_6_AXI_RREADY => net_gnd0,
      SLOT_6_AXIS_ACLK => net_gnd0,
      SLOT_6_AXIS_ARESETN => net_gnd0,
      SLOT_6_AXIS_TVALID => net_gnd0,
      SLOT_6_AXIS_TREADY => net_gnd0,
      SLOT_6_AXIS_TDATA => net_gnd32,
      SLOT_6_AXIS_TSTRB => net_gnd4,
      SLOT_6_AXIS_TKEEP => net_gnd4,
      SLOT_6_AXIS_TLAST => net_gnd0,
      SLOT_6_AXIS_TID => net_gnd1(0 to 0),
      SLOT_6_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_6_AXIS_TUSER => net_gnd1(0 to 0),
      SLOT_7_AXI_ACLK => net_gnd0,
      SLOT_7_AXI_ARESETN => net_gnd0,
      SLOT_7_AXI_AWID => net_gnd1(0 to 0),
      SLOT_7_AXI_AWADDR => net_gnd32,
      SLOT_7_AXI_AWLEN => net_gnd8,
      SLOT_7_AXI_AWPROT => net_gnd3,
      SLOT_7_AXI_AWSIZE => net_gnd3,
      SLOT_7_AXI_AWBURST => net_gnd2,
      SLOT_7_AXI_AWCACHE => net_gnd4,
      SLOT_7_AXI_AWLOCK => net_gnd0,
      SLOT_7_AXI_AWVALID => net_gnd0,
      SLOT_7_AXI_AWREADY => net_gnd0,
      SLOT_7_AXI_WDATA => net_gnd32,
      SLOT_7_AXI_WSTRB => net_gnd4,
      SLOT_7_AXI_WLAST => net_gnd0,
      SLOT_7_AXI_WVALID => net_gnd0,
      SLOT_7_AXI_WREADY => net_gnd0,
      SLOT_7_AXI_BID => net_gnd1(0 to 0),
      SLOT_7_AXI_BRESP => net_gnd2,
      SLOT_7_AXI_BVALID => net_gnd0,
      SLOT_7_AXI_BREADY => net_gnd0,
      SLOT_7_AXI_ARID => net_gnd1(0 to 0),
      SLOT_7_AXI_ARADDR => net_gnd32,
      SLOT_7_AXI_ARLEN => net_gnd8,
      SLOT_7_AXI_ARSIZE => net_gnd3,
      SLOT_7_AXI_ARBURST => net_gnd2,
      SLOT_7_AXI_ARPROT => net_gnd3,
      SLOT_7_AXI_ARCACHE => net_gnd4,
      SLOT_7_AXI_ARLOCK => net_gnd0,
      SLOT_7_AXI_ARVALID => net_gnd0,
      SLOT_7_AXI_ARREADY => net_gnd0,
      SLOT_7_AXI_RID => net_gnd1(0 to 0),
      SLOT_7_AXI_RDATA => net_gnd32,
      SLOT_7_AXI_RRESP => net_gnd2,
      SLOT_7_AXI_RLAST => net_gnd0,
      SLOT_7_AXI_RVALID => net_gnd0,
      SLOT_7_AXI_RREADY => net_gnd0,
      SLOT_7_AXIS_ACLK => net_gnd0,
      SLOT_7_AXIS_ARESETN => net_gnd0,
      SLOT_7_AXIS_TVALID => net_gnd0,
      SLOT_7_AXIS_TREADY => net_gnd0,
      SLOT_7_AXIS_TDATA => net_gnd32,
      SLOT_7_AXIS_TSTRB => net_gnd4,
      SLOT_7_AXIS_TKEEP => net_gnd4,
      SLOT_7_AXIS_TLAST => net_gnd0,
      SLOT_7_AXIS_TID => net_gnd1(0 to 0),
      SLOT_7_AXIS_TDEST => net_gnd1(0 to 0),
      SLOT_7_AXIS_TUSER => net_gnd1(0 to 0),
      EXT_CLK_0 => net_gnd0,
      EXT_RSTN_0 => net_gnd0,
      EXT_EVENT_0_CNT_START => net_gnd0,
      EXT_EVENT_0_CNT_STOP => net_gnd0,
      EXT_EVENT_0 => net_gnd0,
      EXT_CLK_1 => net_gnd0,
      EXT_RSTN_1 => net_gnd0,
      EXT_EVENT_1_CNT_START => net_gnd0,
      EXT_EVENT_1_CNT_STOP => net_gnd0,
      EXT_EVENT_1 => net_gnd0,
      EXT_CLK_2 => net_gnd0,
      EXT_RSTN_2 => net_gnd0,
      EXT_EVENT_2_CNT_START => net_gnd0,
      EXT_EVENT_2_CNT_STOP => net_gnd0,
      EXT_EVENT_2 => net_gnd0,
      EXT_CLK_3 => net_gnd0,
      EXT_RSTN_3 => net_gnd0,
      EXT_EVENT_3_CNT_START => net_gnd0,
      EXT_EVENT_3_CNT_STOP => net_gnd0,
      EXT_EVENT_3 => net_gnd0,
      EXT_CLK_4 => net_gnd0,
      EXT_RSTN_4 => net_gnd0,
      EXT_EVENT_4_CNT_START => net_gnd0,
      EXT_EVENT_4_CNT_STOP => net_gnd0,
      EXT_EVENT_4 => net_gnd0,
      EXT_CLK_5 => net_gnd0,
      EXT_RSTN_5 => net_gnd0,
      EXT_EVENT_5_CNT_START => net_gnd0,
      EXT_EVENT_5_CNT_STOP => net_gnd0,
      EXT_EVENT_5 => net_gnd0,
      EXT_CLK_6 => net_gnd0,
      EXT_RSTN_6 => net_gnd0,
      EXT_EVENT_6_CNT_START => net_gnd0,
      EXT_EVENT_6_CNT_STOP => net_gnd0,
      EXT_EVENT_6 => net_gnd0,
      EXT_CLK_7 => net_gnd0,
      EXT_RSTN_7 => net_gnd0,
      EXT_EVENT_7_CNT_START => net_gnd0,
      EXT_EVENT_7_CNT_STOP => net_gnd0,
      EXT_EVENT_7 => net_gnd0,
      SLOT_0_EXT_TRIG => net_gnd0,
      SLOT_1_EXT_TRIG => net_gnd0,
      SLOT_2_EXT_TRIG => net_gnd0,
      SLOT_3_EXT_TRIG => net_gnd0,
      SLOT_4_EXT_TRIG => net_gnd0,
      SLOT_5_EXT_TRIG => net_gnd0,
      SLOT_6_EXT_TRIG => net_gnd0,
      SLOT_7_EXT_TRIG => net_gnd0,
      CAPTURE_EVENT => pgassign3,
      RESET_EVENT => pgassign3,
      M_AXIS_ACLK => net_gnd0,
      M_AXIS_ARESETN => net_gnd0,
      M_AXIS_TDATA => open,
      M_AXIS_TSTRB => open,
      M_AXIS_TVALID => open,
      M_AXIS_TID => open,
      M_AXIS_TREADY => net_gnd0,
      CORE_ACLK => pgassign6(1),
      CORE_ARESETN => emu_reset_n(0),
      INTERRUPT => open
    );

  ibufgds_0 : IBUFGDS
    port map (
      I => VIDEO_CLK_P,
      IB => VIDEO_CLK_N,
      O => VIDEO_CLK(0)
    );

  iobuf_1 : IOBUF
    port map (
      I => ps7_0_I2C1_SDA_O,
      IO => fmc_imageon_iic_Sda_pin,
      O => ps7_0_I2C1_SDA_I,
      T => ps7_0_I2C1_SDA_T
    );

  iobuf_2 : IOBUF
    port map (
      I => ps7_0_I2C1_SCL_O,
      IO => fmc_imageon_iic_Scl_pin,
      O => ps7_0_I2C1_SCL_I,
      T => ps7_0_I2C1_SCL_T
    );

end architecture STRUCTURE;

