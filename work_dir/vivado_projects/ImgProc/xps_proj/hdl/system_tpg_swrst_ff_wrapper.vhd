-------------------------------------------------------------------------------
-- system_tpg_swrst_ff_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library util_flipflop_v1_10_a;
use util_flipflop_v1_10_a.all;

entity system_tpg_swrst_ff_wrapper is
  port (
    Clk : in std_logic;
    RST : in std_logic;
    SET : in std_logic;
    CE : in std_logic;
    D : in std_logic_vector(0 to 0);
    Q : out std_logic_vector(0 to 0)
  );

  attribute x_core_info : STRING;
  attribute x_core_info of system_tpg_swrst_ff_wrapper : entity is "util_flipflop_v1_10_a";

end system_tpg_swrst_ff_wrapper;

architecture STRUCTURE of system_tpg_swrst_ff_wrapper is

  component util_flipflop is
    generic (
      C_SET_RST_HIGH : integer;
      C_USE_RST : integer;
      C_USE_SET : integer;
      C_USE_CE : integer;
      C_USE_ASYNCH : integer;
      C_SIZE : integer;
      C_INIT : string
    );
    port (
      Clk : in std_logic;
      RST : in std_logic;
      SET : in std_logic;
      CE : in std_logic;
      D : in std_logic_vector(0 to C_SIZE-1);
      Q : out std_logic_vector(0 to C_SIZE-1)
    );
  end component;

begin

  TPG_SWRST_FF : util_flipflop
    generic map (
      C_SET_RST_HIGH => 0,
      C_USE_RST => 0,
      C_USE_SET => 0,
      C_USE_CE => 0,
      C_USE_ASYNCH => 0,
      C_SIZE => 1,
      C_INIT => "0"
    )
    port map (
      Clk => Clk,
      RST => RST,
      SET => SET,
      CE => CE,
      D => D,
      Q => Q
    );

end architecture STRUCTURE;

