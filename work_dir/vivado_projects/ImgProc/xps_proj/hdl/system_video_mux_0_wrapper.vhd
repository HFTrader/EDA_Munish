-------------------------------------------------------------------------------
-- system_video_mux_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library vsrc_sel_v1_00_a;
use vsrc_sel_v1_00_a.all;

entity system_video_mux_0_wrapper is
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
end system_video_mux_0_wrapper;

architecture STRUCTURE of system_video_mux_0_wrapper is

  component vsrc_sel is
    generic (
      C_NUM_CHANNELS : INTEGER
    );
    port (
      video_clk_1 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      video_clk_2 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      hsync_1 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      hsync_2 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      vsync_1 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      vsync_2 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      de_1 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      de_2 : in std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      video_clk : out std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      hsync : out std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      vsync : out std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      de : out std_logic_vector((C_NUM_CHANNELS-1)  to  0);
      video_sel : in std_logic
    );
  end component;

begin

  VIDEO_MUX_0 : vsrc_sel
    generic map (
      C_NUM_CHANNELS => 1
    )
    port map (
      video_clk_1 => video_clk_1,
      video_clk_2 => video_clk_2,
      hsync_1 => hsync_1,
      hsync_2 => hsync_2,
      vsync_1 => vsync_1,
      vsync_2 => vsync_2,
      de_1 => de_1,
      de_2 => de_2,
      video_clk => video_clk,
      hsync => hsync,
      vsync => vsync,
      de => de,
      video_sel => video_sel
    );

end architecture STRUCTURE;

