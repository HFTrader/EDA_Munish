-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2013.3
-- Copyright (C) 2013 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_1d is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    src_ce0 : OUT STD_LOGIC;
    src_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    tmp_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    dst_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    dst_ce0 : OUT STD_LOGIC;
    dst_we0 : OUT STD_LOGIC;
    dst_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    tmp_11 : IN STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of dct_1d is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv29_1000 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000001000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal dct_coeff_table_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal dct_coeff_table_ce0 : STD_LOGIC;
    signal dct_coeff_table_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_fu_138_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_1_reg_287 : STD_LOGIC_VECTOR (3 downto 0);
    signal n_1_fu_154_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal n_1_reg_295 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal dct_coeff_table_load_reg_310 : STD_LOGIC_VECTOR (14 downto 0);
    signal src_load_reg_315 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_268_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_96 : STD_LOGIC_VECTOR (3 downto 0);
    signal n_reg_108 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond1_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_reg_119 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_fu_204_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_fu_247_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_164_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal dct_coeff_table_addr6_cast_fu_172_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_trn5_cast_fu_160_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal dct_coeff_table_addr7_fu_176_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_10_fu_187_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_addr_cast_fu_194_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_addr1_fu_198_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_144_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_2_fu_209_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_fu_230_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_addr2_cast_fu_237_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_trn_cast_fu_226_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_addr3_fu_241_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_fu_258_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_8_fu_258_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_8_fu_258_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_5_fu_268_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_258_p2_temp: signed (31-1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component dct_1d_dct_coeff_table IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;



begin
    dct_coeff_table_U : component dct_1d_dct_coeff_table
    generic map (
        DataWidth => 15,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => dct_coeff_table_address0,
        ce0 => dct_coeff_table_ce0,
        q0 => dct_coeff_table_q0);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- k_reg_96 assign process. --
    k_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st3_fsm_2 = ap_CS_fsm) and not((exitcond_fu_148_p2 = ap_const_lv1_0)))) then 
                k_reg_96 <= k_1_reg_287;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not((ap_start = ap_const_logic_0)))) then 
                k_reg_96 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- n_reg_108 assign process. --
    n_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
                n_reg_108 <= n_1_reg_295;
            elsif (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = exitcond1_fu_132_p2))) then 
                n_reg_108 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- tmp1_reg_119 assign process. --
    tmp1_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
                tmp1_reg_119 <= tmp_5_fu_268_p2;
            elsif (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = exitcond1_fu_132_p2))) then 
                tmp1_reg_119 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st4_fsm_3 = ap_CS_fsm)) then
                dct_coeff_table_load_reg_310 <= dct_coeff_table_q0;
                src_load_reg_315 <= src_q0;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                k_1_reg_287 <= k_1_fu_138_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then
                n_1_reg_295 <= n_1_fu_154_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start , ap_CS_fsm , exitcond_fu_148_p2 , exitcond1_fu_132_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond1_fu_132_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if (not((exitcond_fu_148_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_start, ap_CS_fsm, exitcond1_fu_132_p2)
    begin
        if (((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm)) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond1_fu_132_p2))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, exitcond1_fu_132_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = exitcond1_fu_132_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dct_coeff_table_addr6_cast_fu_172_p1 <= std_logic_vector(resize(unsigned(tmp_7_fu_164_p3),8));
    dct_coeff_table_addr7_fu_176_p2 <= std_logic_vector(unsigned(dct_coeff_table_addr6_cast_fu_172_p1) + unsigned(tmp_6_trn5_cast_fu_160_p1));
    dct_coeff_table_address0 <= tmp_9_fu_182_p1(6 - 1 downto 0);

    -- dct_coeff_table_ce0 assign process. --
    dct_coeff_table_ce0_assign_proc : process(ap_CS_fsm, exitcond_fu_148_p2)
    begin
        if (((ap_ST_st3_fsm_2 = ap_CS_fsm) and (exitcond_fu_148_p2 = ap_const_lv1_0))) then 
            dct_coeff_table_ce0 <= ap_const_logic_1;
        else 
            dct_coeff_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_address0 <= tmp_6_fu_247_p1(6 - 1 downto 0);

    -- dst_ce0 assign process. --
    dst_ce0_assign_proc : process(ap_CS_fsm, exitcond_fu_148_p2)
    begin
        if (((ap_ST_st3_fsm_2 = ap_CS_fsm) and not((exitcond_fu_148_p2 = ap_const_lv1_0)))) then 
            dst_ce0 <= ap_const_logic_1;
        else 
            dst_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_d0 <= tmp_2_fu_209_p2(28 downto 13);

    -- dst_we0 assign process. --
    dst_we0_assign_proc : process(ap_CS_fsm, exitcond_fu_148_p2)
    begin
        if ((((ap_ST_st3_fsm_2 = ap_CS_fsm) and not((exitcond_fu_148_p2 = ap_const_lv1_0))))) then 
            dst_we0 <= ap_const_logic_1;
        else 
            dst_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_132_p2 <= "1" when (k_reg_96 = ap_const_lv4_8) else "0";
    exitcond_fu_148_p2 <= "1" when (n_reg_108 = ap_const_lv4_8) else "0";
    k_1_fu_138_p2 <= std_logic_vector(unsigned(k_reg_96) + unsigned(ap_const_lv4_1));
    n_1_fu_154_p2 <= std_logic_vector(unsigned(n_reg_108) + unsigned(ap_const_lv4_1));
    p_addr1_fu_198_p2 <= std_logic_vector(unsigned(p_addr_cast_fu_194_p1) + unsigned(tmp_6_trn5_cast_fu_160_p1));
    p_addr2_cast_fu_237_p1 <= std_logic_vector(resize(unsigned(tmp_fu_230_p3),8));
    p_addr3_fu_241_p2 <= std_logic_vector(unsigned(p_addr2_cast_fu_237_p1) + unsigned(tmp_trn_cast_fu_226_p1));
    p_addr_cast_fu_194_p1 <= std_logic_vector(resize(unsigned(tmp_10_fu_187_p3),8));
    src_address0 <= tmp_12_fu_204_p1(6 - 1 downto 0);

    -- src_ce0 assign process. --
    src_ce0_assign_proc : process(ap_CS_fsm, exitcond_fu_148_p2)
    begin
        if (((ap_ST_st3_fsm_2 = ap_CS_fsm) and (exitcond_fu_148_p2 = ap_const_lv1_0))) then 
            src_ce0 <= ap_const_logic_1;
        else 
            src_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_fu_187_p3 <= (tmp_1 & ap_const_lv3_0);
    tmp_12_fu_204_p1 <= std_logic_vector(resize(unsigned(p_addr1_fu_198_p2),64));
    tmp_2_fu_209_p2 <= std_logic_vector(unsigned(tmp_3_fu_144_p1) + unsigned(ap_const_lv29_1000));
    tmp_3_fu_144_p1 <= tmp1_reg_119(29 - 1 downto 0);
    
    tmp_8_fu_258_p2_temp <= signed(tmp_8_fu_258_p2);
    tmp_5_fu_268_p0 <= std_logic_vector(resize(tmp_8_fu_258_p2_temp,32));

    tmp_5_fu_268_p2 <= std_logic_vector(unsigned(tmp_5_fu_268_p0) + unsigned(tmp1_reg_119));
    tmp_6_fu_247_p1 <= std_logic_vector(resize(unsigned(p_addr3_fu_241_p2),64));
    tmp_6_trn5_cast_fu_160_p1 <= std_logic_vector(resize(unsigned(n_reg_108),8));
    tmp_7_fu_164_p3 <= (k_reg_96 & ap_const_lv3_0);
    tmp_8_fu_258_p0 <= src_load_reg_315;
    tmp_8_fu_258_p1 <= dct_coeff_table_load_reg_310;
    tmp_8_fu_258_p2 <= std_logic_vector(resize(unsigned(std_logic_vector(signed(tmp_8_fu_258_p0) * signed(tmp_8_fu_258_p1))), 31));
    tmp_9_fu_182_p1 <= std_logic_vector(resize(unsigned(dct_coeff_table_addr7_fu_176_p2),64));
    tmp_fu_230_p3 <= (tmp_11 & ap_const_lv3_0);
    tmp_trn_cast_fu_226_p1 <= std_logic_vector(resize(unsigned(k_reg_96),8));
end behav;