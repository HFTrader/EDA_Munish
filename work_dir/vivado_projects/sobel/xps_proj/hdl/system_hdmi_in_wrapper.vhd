-------------------------------------------------------------------------------
-- system_hdmi_in_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library fmc_imageon_hdmi_in_v1_03_a;
use fmc_imageon_hdmi_in_v1_03_a.all;

entity system_hdmi_in_wrapper is
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
end system_hdmi_in_wrapper;

architecture STRUCTURE of system_hdmi_in_wrapper is

  component fmc_imageon_hdmi_in is
    generic (
      C_FAMILY : STRING;
      C_DATA_WIDTH : INTEGER
    );
    port (
      clk : in std_logic;
      io_hdmii_spdif : in std_logic;
      io_hdmii_video : in std_logic_vector(15 downto 0);
      xsvi_vblank_o : out std_logic;
      xsvi_hblank_o : out std_logic;
      xsvi_active_video_o : out std_logic;
      xsvi_video_data_o : out std_logic_vector((C_DATA_WIDTH-1) downto 0);
      audio_spdif : out std_logic;
      debug_o : out std_logic_vector(23 downto 0)
    );
  end component;

begin

  HDMI_IN : fmc_imageon_hdmi_in
    generic map (
      C_FAMILY => "zynq",
      C_DATA_WIDTH => 16
    )
    port map (
      clk => clk,
      io_hdmii_spdif => io_hdmii_spdif,
      io_hdmii_video => io_hdmii_video,
      xsvi_vblank_o => xsvi_vblank_o,
      xsvi_hblank_o => xsvi_hblank_o,
      xsvi_active_video_o => xsvi_active_video_o,
      xsvi_video_data_o => xsvi_video_data_o,
      audio_spdif => audio_spdif,
      debug_o => debug_o
    );

end architecture STRUCTURE;

