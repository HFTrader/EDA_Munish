-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB : inout std_logic;
    processing_system7_0_PS_CLK : inout std_logic;
    processing_system7_0_PS_PORB : inout std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    hdmi_clk : out std_logic;
    hdmi_data : out std_logic_vector(15 downto 0);
    hdmi_hsync : out std_logic;
    hdmi_vsync : out std_logic;
    hdmi_data_e : out std_logic;
    hdmi_int : in std_logic;
    otg_reset : out std_logic;
    otg_vbusoc : in std_logic;
    util_vector_logic_0_Op1_pin : in std_logic_vector(0 to 0);
    axi_i2s_adi_0_BCLK_O_pin : out std_logic;
    axi_i2s_adi_0_LRCLK_O_pin : out std_logic;
    axi_i2s_adi_0_SDATA_I_pin : in std_logic;
    axi_i2s_adi_0_SDATA_O_pin : out std_logic;
    axi_i2s_adi_0_MCLK_pin : out std_logic;
    util_i2c_mixer_0_downstream_scl_pin : inout std_logic_vector(1 downto 0);
    util_i2c_mixer_0_downstream_sda_pin : inout std_logic_vector(1 downto 0);
    cam_interface_0_clk100_pin : in std_logic;
    cam_interface_0_OV7670_VSYNC_pin : in std_logic;
    cam_interface_0_OV7670_SIOD_pin : out std_logic;
    cam_interface_0_OV7670_D_pin : in std_logic_vector(7 downto 0);
    cam_interface_0_OV7670_SIOC_pin : out std_logic;
    cam_interface_0_OV7670_RESET_pin : out std_logic;
    cam_interface_0_OV7670_HREF_pin : in std_logic;
    cam_interface_0_OV7670_PWDN_pin : out std_logic;
    cam_interface_0_OV7670_PCLK_pin : in std_logic;
    cam_interface_0_config_finished_pin : out std_logic;
    cam_interface_0_btn_pin : in std_logic;
    cam_interface_0_OV7670_XCLK_pin : out std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB : inout std_logic;
      processing_system7_0_PS_CLK : inout std_logic;
      processing_system7_0_PS_PORB : inout std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic;
      hdmi_clk : out std_logic;
      hdmi_data : out std_logic_vector(15 downto 0);
      hdmi_hsync : out std_logic;
      hdmi_vsync : out std_logic;
      hdmi_data_e : out std_logic;
      hdmi_int : in std_logic;
      otg_reset : out std_logic;
      otg_vbusoc : in std_logic;
      util_vector_logic_0_Op1_pin : in std_logic_vector(0 to 0);
      axi_i2s_adi_0_BCLK_O_pin : out std_logic;
      axi_i2s_adi_0_LRCLK_O_pin : out std_logic;
      axi_i2s_adi_0_SDATA_I_pin : in std_logic;
      axi_i2s_adi_0_SDATA_O_pin : out std_logic;
      axi_i2s_adi_0_MCLK_pin : out std_logic;
      util_i2c_mixer_0_downstream_scl_pin : inout std_logic_vector(1 downto 0);
      util_i2c_mixer_0_downstream_sda_pin : inout std_logic_vector(1 downto 0);
      cam_interface_0_clk100_pin : in std_logic;
      cam_interface_0_OV7670_VSYNC_pin : in std_logic;
      cam_interface_0_OV7670_SIOD_pin : out std_logic;
      cam_interface_0_OV7670_D_pin : in std_logic_vector(7 downto 0);
      cam_interface_0_OV7670_SIOC_pin : out std_logic;
      cam_interface_0_OV7670_RESET_pin : out std_logic;
      cam_interface_0_OV7670_HREF_pin : in std_logic;
      cam_interface_0_OV7670_PWDN_pin : out std_logic;
      cam_interface_0_OV7670_PCLK_pin : in std_logic;
      cam_interface_0_config_finished_pin : out std_logic;
      cam_interface_0_btn_pin : in std_logic;
      cam_interface_0_OV7670_XCLK_pin : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB => processing_system7_0_PS_SRSTB,
      processing_system7_0_PS_CLK => processing_system7_0_PS_CLK,
      processing_system7_0_PS_PORB => processing_system7_0_PS_PORB,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      hdmi_clk => hdmi_clk,
      hdmi_data => hdmi_data,
      hdmi_hsync => hdmi_hsync,
      hdmi_vsync => hdmi_vsync,
      hdmi_data_e => hdmi_data_e,
      hdmi_int => hdmi_int,
      otg_reset => otg_reset,
      otg_vbusoc => otg_vbusoc,
      util_vector_logic_0_Op1_pin => util_vector_logic_0_Op1_pin(0 to 0),
      axi_i2s_adi_0_BCLK_O_pin => axi_i2s_adi_0_BCLK_O_pin,
      axi_i2s_adi_0_LRCLK_O_pin => axi_i2s_adi_0_LRCLK_O_pin,
      axi_i2s_adi_0_SDATA_I_pin => axi_i2s_adi_0_SDATA_I_pin,
      axi_i2s_adi_0_SDATA_O_pin => axi_i2s_adi_0_SDATA_O_pin,
      axi_i2s_adi_0_MCLK_pin => axi_i2s_adi_0_MCLK_pin,
      util_i2c_mixer_0_downstream_scl_pin => util_i2c_mixer_0_downstream_scl_pin,
      util_i2c_mixer_0_downstream_sda_pin => util_i2c_mixer_0_downstream_sda_pin,
      cam_interface_0_clk100_pin => cam_interface_0_clk100_pin,
      cam_interface_0_OV7670_VSYNC_pin => cam_interface_0_OV7670_VSYNC_pin,
      cam_interface_0_OV7670_SIOD_pin => cam_interface_0_OV7670_SIOD_pin,
      cam_interface_0_OV7670_D_pin => cam_interface_0_OV7670_D_pin,
      cam_interface_0_OV7670_SIOC_pin => cam_interface_0_OV7670_SIOC_pin,
      cam_interface_0_OV7670_RESET_pin => cam_interface_0_OV7670_RESET_pin,
      cam_interface_0_OV7670_HREF_pin => cam_interface_0_OV7670_HREF_pin,
      cam_interface_0_OV7670_PWDN_pin => cam_interface_0_OV7670_PWDN_pin,
      cam_interface_0_OV7670_PCLK_pin => cam_interface_0_OV7670_PCLK_pin,
      cam_interface_0_config_finished_pin => cam_interface_0_config_finished_pin,
      cam_interface_0_btn_pin => cam_interface_0_btn_pin,
      cam_interface_0_OV7670_XCLK_pin => cam_interface_0_OV7670_XCLK_pin
    );

end architecture STRUCTURE;

