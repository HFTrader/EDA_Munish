-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
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
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
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
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fmc_imageon_hdmi_in_0_clk_pin => fmc_imageon_hdmi_in_0_clk_pin,
      fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin => fmc_imageon_hdmi_in_0_io_hdmii_spdif_pin,
      fmc_imageon_hdmi_in_0_io_hdmii_video_pin => fmc_imageon_hdmi_in_0_io_hdmii_video_pin,
      HDMI_O_data_pin => HDMI_O_data_pin,
      HDMI_O_de_pin => HDMI_O_de_pin,
      HDMI_O_hsync_pin => HDMI_O_hsync_pin,
      HDMI_O_vsync_pin => HDMI_O_vsync_pin,
      HDMI_O_clk_pin => HDMI_O_clk_pin,
      VIDEO_CLK_P => VIDEO_CLK_P,
      VIDEO_CLK_N => VIDEO_CLK_N,
      ps7_0_PS_SRSTB_pin => ps7_0_PS_SRSTB_pin,
      ps7_0_PS_CLK_pin => ps7_0_PS_CLK_pin,
      ps7_0_PS_PORB_pin => ps7_0_PS_PORB_pin,
      fmc_imageon_iic_Rst_b_pin => fmc_imageon_iic_Rst_b_pin,
      fmc_imageon_iic_Sda_pin => fmc_imageon_iic_Sda_pin,
      fmc_imageon_iic_Scl_pin => fmc_imageon_iic_Scl_pin,
      ps7_0_MIO_pin => ps7_0_MIO_pin,
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
      DDR_VRP => DDR_VRP
    );

end architecture STRUCTURE;

