-------------------------------------------------------------------------------
-- system_tpg_swrst_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library util_reduced_logic_v1_00_a;
use util_reduced_logic_v1_00_a.all;

entity system_tpg_swrst_wrapper is
  port (
    Op1 : in std_logic_vector(0 to 2);
    Res : out std_logic
  );

  attribute x_core_info : STRING;
  attribute x_core_info of system_tpg_swrst_wrapper : entity is "util_reduced_logic_v1_00_a";

end system_tpg_swrst_wrapper;

architecture STRUCTURE of system_tpg_swrst_wrapper is

  component util_reduced_logic is
    generic (
      C_OPERATION : string;
      C_SIZE : INTEGER
    );
    port (
      Op1 : in std_logic_vector(0 to C_SIZE-1);
      Res : out std_logic
    );
  end component;

begin

  TPG_SWRST : util_reduced_logic
    generic map (
      C_OPERATION => "and",
      C_SIZE => 3
    )
    port map (
      Op1 => Op1,
      Res => Res
    );

end architecture STRUCTURE;

