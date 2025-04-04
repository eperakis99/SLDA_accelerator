-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vec_vec_op_streaming_vector_scale is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    vec1_TDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    vec1_TVALID : IN STD_LOGIC;
    vec1_TREADY : OUT STD_LOGIC;
    vec1_TKEEP : IN STD_LOGIC_VECTOR (15 downto 0);
    vec1_TSTRB : IN STD_LOGIC_VECTOR (15 downto 0);
    vec1_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
    vec1_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    vec1_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    vec1_TDEST : IN STD_LOGIC_VECTOR (5 downto 0);
    vec_out_TDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    vec_out_TVALID : OUT STD_LOGIC;
    vec_out_TREADY : IN STD_LOGIC;
    vec_out_TKEEP : OUT STD_LOGIC_VECTOR (15 downto 0);
    vec_out_TSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    vec_out_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
    vec_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    vec_out_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    vec_out_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0) );
end;


architecture behav of vec_vec_op_streaming_vector_scale is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv6_1F : STD_LOGIC_VECTOR (5 downto 0) := "011111";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv190_lc_1 : STD_LOGIC_VECTOR (189 downto 0) := "0000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_2E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101110";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_36 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110110";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_44 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000100";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";
    constant ap_const_lv32_4C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001100";
    constant ap_const_lv32_4E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001110";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_54 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010100";
    constant ap_const_lv32_56 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010110";
    constant ap_const_lv32_58 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011000";
    constant ap_const_lv32_5C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011100";
    constant ap_const_lv32_5E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011110";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100100";
    constant ap_const_lv32_66 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100110";
    constant ap_const_lv32_68 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101000";
    constant ap_const_lv32_6C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101100";
    constant ap_const_lv32_6E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101110";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_74 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110100";
    constant ap_const_lv32_76 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110110";
    constant ap_const_lv32_78 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111000";
    constant ap_const_lv32_7C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111100";
    constant ap_const_lv32_7E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111110";
    constant ap_const_lv32_90 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010010000";
    constant ap_const_lv32_9F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_8F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010001111";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv32_A1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100001";
    constant ap_const_lv32_A8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101000";
    constant ap_const_lv32_B0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010110000";
    constant ap_const_lv32_B4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010110100";
    constant ap_const_lv32_B8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111000";
    constant ap_const_lv32_BD : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal vec1_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln250_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal vec_out_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal icmp_ln250_reg_1108 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_reg_249 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln250_fu_260_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln257_fu_354_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_reg_1112 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_1_fu_430_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_1_reg_1117 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_2_fu_472_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_2_reg_1122 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_3_fu_514_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_3_reg_1127 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_4_fu_556_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_4_reg_1132 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_5_fu_598_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_5_reg_1137 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_6_fu_640_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_6_reg_1142 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_7_fu_682_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_7_reg_1147 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_8_fu_724_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_8_reg_1152 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_9_fu_766_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_9_reg_1157 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_10_fu_808_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_10_reg_1162 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_11_fu_850_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_11_reg_1167 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_12_fu_892_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_12_reg_1172 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_13_fu_934_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_13_reg_1177 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_14_fu_976_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_14_reg_1182 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_15_fu_1018_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln257_15_reg_1187 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln_reg_1192 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_31_reg_1197 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln308_7_reg_1202 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_reg_1207 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln308_9_reg_1212 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln308_s_reg_1217 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln257_fu_330_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal trunc_ln257_1_fu_342_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal shl_ln_fu_334_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln257_1_fu_346_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln_cast_fu_360_p9 : STD_LOGIC_VECTOR (189 downto 0);
    signal cmp26_fu_324_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln258_fu_380_p2 : STD_LOGIC_VECTOR (189 downto 0);
    signal tmp_s_fu_300_p11 : STD_LOGIC_VECTOR (189 downto 0);
    signal select_ln258_fu_386_p3 : STD_LOGIC_VECTOR (189 downto 0);
    signal tmp_2_fu_394_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_fu_412_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln1_fu_404_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_1_fu_422_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_436_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_5_fu_454_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_2_fu_446_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_3_fu_464_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_478_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_7_fu_496_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_4_fu_488_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_5_fu_506_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_fu_520_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_9_fu_538_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_6_fu_530_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_7_fu_548_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_fu_562_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_10_fu_580_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_8_fu_572_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_9_fu_590_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_11_fu_604_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_12_fu_622_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_s_fu_614_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_10_fu_632_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_646_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_14_fu_664_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_11_fu_656_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_12_fu_674_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_15_fu_688_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_16_fu_706_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_13_fu_698_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_14_fu_716_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_fu_730_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_18_fu_748_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_15_fu_740_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_16_fu_758_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_19_fu_772_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_20_fu_790_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_17_fu_782_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_18_fu_800_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_21_fu_814_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_22_fu_832_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_19_fu_824_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_20_fu_842_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_23_fu_856_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_24_fu_874_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_21_fu_866_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_22_fu_884_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_25_fu_898_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_26_fu_916_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_23_fu_908_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_24_fu_926_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_27_fu_940_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_28_fu_958_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_25_fu_950_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_26_fu_968_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_29_fu_982_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_30_fu_1000_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal and_ln257_27_fu_992_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln257_28_fu_1010_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    j_reg_249_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_reg_249 <= ap_const_lv6_0;
            elsif (((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                j_reg_249 <= add_ln250_fu_260_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    add_ln257_10_reg_1162(7 downto 1) <= add_ln257_10_fu_808_p2(7 downto 1);
                    add_ln257_11_reg_1167(7 downto 1) <= add_ln257_11_fu_850_p2(7 downto 1);
                    add_ln257_12_reg_1172(7 downto 1) <= add_ln257_12_fu_892_p2(7 downto 1);
                    add_ln257_13_reg_1177(7 downto 1) <= add_ln257_13_fu_934_p2(7 downto 1);
                    add_ln257_14_reg_1182(7 downto 1) <= add_ln257_14_fu_976_p2(7 downto 1);
                    add_ln257_15_reg_1187(7 downto 1) <= add_ln257_15_fu_1018_p2(7 downto 1);
                    add_ln257_1_reg_1117(7 downto 1) <= add_ln257_1_fu_430_p2(7 downto 1);
                    add_ln257_2_reg_1122(7 downto 1) <= add_ln257_2_fu_472_p2(7 downto 1);
                    add_ln257_3_reg_1127(7 downto 1) <= add_ln257_3_fu_514_p2(7 downto 1);
                    add_ln257_4_reg_1132(7 downto 1) <= add_ln257_4_fu_556_p2(7 downto 1);
                    add_ln257_5_reg_1137(7 downto 1) <= add_ln257_5_fu_598_p2(7 downto 1);
                    add_ln257_6_reg_1142(7 downto 1) <= add_ln257_6_fu_640_p2(7 downto 1);
                    add_ln257_7_reg_1147(7 downto 1) <= add_ln257_7_fu_682_p2(7 downto 1);
                    add_ln257_8_reg_1152(7 downto 1) <= add_ln257_8_fu_724_p2(7 downto 1);
                    add_ln257_9_reg_1157(7 downto 1) <= add_ln257_9_fu_766_p2(7 downto 1);
                    add_ln257_reg_1112(7 downto 1) <= add_ln257_fu_354_p2(7 downto 1);
                tmp_31_reg_1197 <= select_ln258_fu_386_p3(143 downto 128);
                tmp_reg_1207 <= select_ln258_fu_386_p3(168 downto 168);
                trunc_ln308_7_reg_1202 <= select_ln258_fu_386_p3(161 downto 160);
                trunc_ln308_9_reg_1212 <= select_ln258_fu_386_p3(180 downto 176);
                trunc_ln308_s_reg_1217 <= select_ln258_fu_386_p3(189 downto 184);
                trunc_ln_reg_1192 <= select_ln258_fu_386_p3(159 downto 144);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln250_reg_1108 <= icmp_ln250_fu_266_p2;
            end if;
        end if;
    end process;
    add_ln257_reg_1112(0) <= '0';
    add_ln257_1_reg_1117(0) <= '0';
    add_ln257_2_reg_1122(0) <= '0';
    add_ln257_3_reg_1127(0) <= '0';
    add_ln257_4_reg_1132(0) <= '0';
    add_ln257_5_reg_1137(0) <= '0';
    add_ln257_6_reg_1142(0) <= '0';
    add_ln257_7_reg_1147(0) <= '0';
    add_ln257_8_reg_1152(0) <= '0';
    add_ln257_9_reg_1157(0) <= '0';
    add_ln257_10_reg_1162(0) <= '0';
    add_ln257_11_reg_1167(0) <= '0';
    add_ln257_12_reg_1172(0) <= '0';
    add_ln257_13_reg_1177(0) <= '0';
    add_ln257_14_reg_1182(0) <= '0';
    add_ln257_15_reg_1187(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter0, icmp_ln250_fu_266_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln250_fu_266_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln250_fu_266_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln250_fu_260_p2 <= std_logic_vector(unsigned(j_reg_249) + unsigned(ap_const_lv6_1));
    add_ln257_10_fu_808_p2 <= std_logic_vector(unsigned(and_ln257_17_fu_782_p3) + unsigned(and_ln257_18_fu_800_p3));
    add_ln257_11_fu_850_p2 <= std_logic_vector(unsigned(and_ln257_19_fu_824_p3) + unsigned(and_ln257_20_fu_842_p3));
    add_ln257_12_fu_892_p2 <= std_logic_vector(unsigned(and_ln257_21_fu_866_p3) + unsigned(and_ln257_22_fu_884_p3));
    add_ln257_13_fu_934_p2 <= std_logic_vector(unsigned(and_ln257_23_fu_908_p3) + unsigned(and_ln257_24_fu_926_p3));
    add_ln257_14_fu_976_p2 <= std_logic_vector(unsigned(and_ln257_25_fu_950_p3) + unsigned(and_ln257_26_fu_968_p3));
    add_ln257_15_fu_1018_p2 <= std_logic_vector(unsigned(and_ln257_27_fu_992_p3) + unsigned(and_ln257_28_fu_1010_p3));
    add_ln257_1_fu_430_p2 <= std_logic_vector(unsigned(and_ln1_fu_404_p3) + unsigned(and_ln257_1_fu_422_p3));
    add_ln257_2_fu_472_p2 <= std_logic_vector(unsigned(and_ln257_2_fu_446_p3) + unsigned(and_ln257_3_fu_464_p3));
    add_ln257_3_fu_514_p2 <= std_logic_vector(unsigned(and_ln257_4_fu_488_p3) + unsigned(and_ln257_5_fu_506_p3));
    add_ln257_4_fu_556_p2 <= std_logic_vector(unsigned(and_ln257_6_fu_530_p3) + unsigned(and_ln257_7_fu_548_p3));
    add_ln257_5_fu_598_p2 <= std_logic_vector(unsigned(and_ln257_8_fu_572_p3) + unsigned(and_ln257_9_fu_590_p3));
    add_ln257_6_fu_640_p2 <= std_logic_vector(unsigned(and_ln257_s_fu_614_p3) + unsigned(and_ln257_10_fu_632_p3));
    add_ln257_7_fu_682_p2 <= std_logic_vector(unsigned(and_ln257_11_fu_656_p3) + unsigned(and_ln257_12_fu_674_p3));
    add_ln257_8_fu_724_p2 <= std_logic_vector(unsigned(and_ln257_13_fu_698_p3) + unsigned(and_ln257_14_fu_716_p3));
    add_ln257_9_fu_766_p2 <= std_logic_vector(unsigned(and_ln257_15_fu_740_p3) + unsigned(and_ln257_16_fu_758_p3));
    add_ln257_fu_354_p2 <= std_logic_vector(unsigned(shl_ln_fu_334_p3) + unsigned(shl_ln257_1_fu_346_p3));
    and_ln1_fu_404_p3 <= (tmp_2_fu_394_p4 & ap_const_lv3_0);
    and_ln257_10_fu_632_p3 <= (tmp_12_fu_622_p4 & ap_const_lv1_0);
    and_ln257_11_fu_656_p3 <= (tmp_13_fu_646_p4 & ap_const_lv3_0);
    and_ln257_12_fu_674_p3 <= (tmp_14_fu_664_p4 & ap_const_lv1_0);
    and_ln257_13_fu_698_p3 <= (tmp_15_fu_688_p4 & ap_const_lv3_0);
    and_ln257_14_fu_716_p3 <= (tmp_16_fu_706_p4 & ap_const_lv1_0);
    and_ln257_15_fu_740_p3 <= (tmp_17_fu_730_p4 & ap_const_lv3_0);
    and_ln257_16_fu_758_p3 <= (tmp_18_fu_748_p4 & ap_const_lv1_0);
    and_ln257_17_fu_782_p3 <= (tmp_19_fu_772_p4 & ap_const_lv3_0);
    and_ln257_18_fu_800_p3 <= (tmp_20_fu_790_p4 & ap_const_lv1_0);
    and_ln257_19_fu_824_p3 <= (tmp_21_fu_814_p4 & ap_const_lv3_0);
    and_ln257_1_fu_422_p3 <= (tmp_3_fu_412_p4 & ap_const_lv1_0);
    and_ln257_20_fu_842_p3 <= (tmp_22_fu_832_p4 & ap_const_lv1_0);
    and_ln257_21_fu_866_p3 <= (tmp_23_fu_856_p4 & ap_const_lv3_0);
    and_ln257_22_fu_884_p3 <= (tmp_24_fu_874_p4 & ap_const_lv1_0);
    and_ln257_23_fu_908_p3 <= (tmp_25_fu_898_p4 & ap_const_lv3_0);
    and_ln257_24_fu_926_p3 <= (tmp_26_fu_916_p4 & ap_const_lv1_0);
    and_ln257_25_fu_950_p3 <= (tmp_27_fu_940_p4 & ap_const_lv3_0);
    and_ln257_26_fu_968_p3 <= (tmp_28_fu_958_p4 & ap_const_lv1_0);
    and_ln257_27_fu_992_p3 <= (tmp_29_fu_982_p4 & ap_const_lv3_0);
    and_ln257_28_fu_1010_p3 <= (tmp_30_fu_1000_p4 & ap_const_lv1_0);
    and_ln257_2_fu_446_p3 <= (tmp_4_fu_436_p4 & ap_const_lv3_0);
    and_ln257_3_fu_464_p3 <= (tmp_5_fu_454_p4 & ap_const_lv1_0);
    and_ln257_4_fu_488_p3 <= (tmp_6_fu_478_p4 & ap_const_lv3_0);
    and_ln257_5_fu_506_p3 <= (tmp_7_fu_496_p4 & ap_const_lv1_0);
    and_ln257_6_fu_530_p3 <= (tmp_8_fu_520_p4 & ap_const_lv3_0);
    and_ln257_7_fu_548_p3 <= (tmp_9_fu_538_p4 & ap_const_lv1_0);
    and_ln257_8_fu_572_p3 <= (tmp_1_fu_562_p4 & ap_const_lv3_0);
    and_ln257_9_fu_590_p3 <= (tmp_10_fu_580_p4 & ap_const_lv1_0);
    and_ln257_s_fu_614_p3 <= (tmp_11_fu_604_p4 & ap_const_lv3_0);
    and_ln_cast_fu_360_p9 <= (((((((vec1_TDEST & ap_const_lv3_0) & vec1_TID) & ap_const_lv14_0) & vec1_TUSER) & vec1_TSTRB) & vec1_TKEEP) & vec1_TDATA);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(vec1_TVALID, vec_out_TREADY, ap_enable_reg_pp0_iter0, icmp_ln250_fu_266_p2, ap_enable_reg_pp0_iter1, icmp_ln250_reg_1108)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln250_reg_1108 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (vec_out_TREADY = ap_const_logic_0)) or ((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (vec1_TVALID = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(vec1_TVALID, vec_out_TREADY, ap_enable_reg_pp0_iter0, icmp_ln250_fu_266_p2, ap_enable_reg_pp0_iter1, icmp_ln250_reg_1108, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((icmp_ln250_reg_1108 = ap_const_lv1_0) and (vec_out_TREADY = ap_const_logic_0)))) or ((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (vec1_TVALID = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(vec1_TVALID, vec_out_TREADY, ap_enable_reg_pp0_iter0, icmp_ln250_fu_266_p2, ap_enable_reg_pp0_iter1, icmp_ln250_reg_1108, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((icmp_ln250_reg_1108 = ap_const_lv1_0) and (vec_out_TREADY = ap_const_logic_0)))) or ((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (vec1_TVALID = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(vec1_TVALID, icmp_ln250_fu_266_p2)
    begin
                ap_block_state2_pp0_stage0_iter0 <= ((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (vec1_TVALID = ap_const_logic_0));
    end process;


    ap_block_state3_io_assign_proc : process(vec_out_TREADY, icmp_ln250_reg_1108)
    begin
                ap_block_state3_io <= ((icmp_ln250_reg_1108 = ap_const_lv1_0) and (vec_out_TREADY = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(vec_out_TREADY, icmp_ln250_reg_1108)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((icmp_ln250_reg_1108 = ap_const_lv1_0) and (vec_out_TREADY = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln250_fu_266_p2)
    begin
        if ((icmp_ln250_fu_266_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cmp26_fu_324_p2 <= "1" when (j_reg_249 = ap_const_lv6_1F) else "0";
    icmp_ln250_fu_266_p2 <= "1" when (j_reg_249 = ap_const_lv6_20) else "0";
    or_ln258_fu_380_p2 <= (ap_const_lv190_lc_1 or and_ln_cast_fu_360_p9);
    select_ln258_fu_386_p3 <= 
        or_ln258_fu_380_p2 when (cmp26_fu_324_p2(0) = '1') else 
        tmp_s_fu_300_p11;
    shl_ln257_1_fu_346_p3 <= (trunc_ln257_1_fu_342_p1 & ap_const_lv1_0);
    shl_ln_fu_334_p3 <= (trunc_ln257_fu_330_p1 & ap_const_lv3_0);
    tmp_10_fu_580_p4 <= select_ln258_fu_386_p3(46 downto 40);
    tmp_11_fu_604_p4 <= select_ln258_fu_386_p3(52 downto 48);
    tmp_12_fu_622_p4 <= select_ln258_fu_386_p3(54 downto 48);
    tmp_13_fu_646_p4 <= select_ln258_fu_386_p3(60 downto 56);
    tmp_14_fu_664_p4 <= select_ln258_fu_386_p3(62 downto 56);
    tmp_15_fu_688_p4 <= select_ln258_fu_386_p3(68 downto 64);
    tmp_16_fu_706_p4 <= select_ln258_fu_386_p3(70 downto 64);
    tmp_17_fu_730_p4 <= select_ln258_fu_386_p3(76 downto 72);
    tmp_18_fu_748_p4 <= select_ln258_fu_386_p3(78 downto 72);
    tmp_19_fu_772_p4 <= select_ln258_fu_386_p3(84 downto 80);
    tmp_1_fu_562_p4 <= select_ln258_fu_386_p3(44 downto 40);
    tmp_20_fu_790_p4 <= select_ln258_fu_386_p3(86 downto 80);
    tmp_21_fu_814_p4 <= select_ln258_fu_386_p3(92 downto 88);
    tmp_22_fu_832_p4 <= select_ln258_fu_386_p3(94 downto 88);
    tmp_23_fu_856_p4 <= select_ln258_fu_386_p3(100 downto 96);
    tmp_24_fu_874_p4 <= select_ln258_fu_386_p3(102 downto 96);
    tmp_25_fu_898_p4 <= select_ln258_fu_386_p3(108 downto 104);
    tmp_26_fu_916_p4 <= select_ln258_fu_386_p3(110 downto 104);
    tmp_27_fu_940_p4 <= select_ln258_fu_386_p3(116 downto 112);
    tmp_28_fu_958_p4 <= select_ln258_fu_386_p3(118 downto 112);
    tmp_29_fu_982_p4 <= select_ln258_fu_386_p3(124 downto 120);
    tmp_2_fu_394_p4 <= select_ln258_fu_386_p3(12 downto 8);
    tmp_30_fu_1000_p4 <= select_ln258_fu_386_p3(126 downto 120);
    tmp_3_fu_412_p4 <= select_ln258_fu_386_p3(14 downto 8);
    tmp_4_fu_436_p4 <= select_ln258_fu_386_p3(20 downto 16);
    tmp_5_fu_454_p4 <= select_ln258_fu_386_p3(22 downto 16);
    tmp_6_fu_478_p4 <= select_ln258_fu_386_p3(28 downto 24);
    tmp_7_fu_496_p4 <= select_ln258_fu_386_p3(30 downto 24);
    tmp_8_fu_520_p4 <= select_ln258_fu_386_p3(36 downto 32);
    tmp_9_fu_538_p4 <= select_ln258_fu_386_p3(38 downto 32);
    tmp_s_fu_300_p11 <= (((((((((vec1_TDEST & ap_const_lv3_0) & vec1_TID) & ap_const_lv7_0) & vec1_TLAST) & ap_const_lv6_0) & vec1_TUSER) & vec1_TSTRB) & vec1_TKEEP) & vec1_TDATA);
    trunc_ln257_1_fu_342_p1 <= vec1_TDATA(7 - 1 downto 0);
    trunc_ln257_fu_330_p1 <= vec1_TDATA(5 - 1 downto 0);

    vec1_TDATA_blk_n_assign_proc : process(vec1_TVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln250_fu_266_p2)
    begin
        if (((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vec1_TDATA_blk_n <= vec1_TVALID;
        else 
            vec1_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    vec1_TREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln250_fu_266_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln250_fu_266_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vec1_TREADY <= ap_const_logic_1;
        else 
            vec1_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    vec_out_TDATA <= (((((((((((((((add_ln257_15_reg_1187 & add_ln257_14_reg_1182) & add_ln257_13_reg_1177) & add_ln257_12_reg_1172) & add_ln257_11_reg_1167) & add_ln257_10_reg_1162) & add_ln257_9_reg_1157) & add_ln257_8_reg_1152) & add_ln257_7_reg_1147) & add_ln257_6_reg_1142) & add_ln257_5_reg_1137) & add_ln257_4_reg_1132) & add_ln257_3_reg_1127) & add_ln257_2_reg_1122) & add_ln257_1_reg_1117) & add_ln257_reg_1112);

    vec_out_TDATA_blk_n_assign_proc : process(vec_out_TREADY, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln250_reg_1108)
    begin
        if (((icmp_ln250_reg_1108 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vec_out_TDATA_blk_n <= vec_out_TREADY;
        else 
            vec_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    vec_out_TDEST <= trunc_ln308_s_reg_1217;
    vec_out_TID <= trunc_ln308_9_reg_1212;
    vec_out_TKEEP <= tmp_31_reg_1197;
    vec_out_TLAST <= tmp_reg_1207;
    vec_out_TSTRB <= trunc_ln_reg_1192;
    vec_out_TUSER <= trunc_ln308_7_reg_1202;

    vec_out_TVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln250_reg_1108, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln250_reg_1108 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            vec_out_TVALID <= ap_const_logic_1;
        else 
            vec_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
