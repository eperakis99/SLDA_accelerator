-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity apatb_matrix_matrix_mult_streaming_top is
  generic (
       AUTOTB_CLOCK_PERIOD_DIV2 :   TIME := 5.00 ns;
       AUTOTB_TVIN_A_0 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_0.dat";
       AUTOTB_TVIN_A_1 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_1.dat";
       AUTOTB_TVIN_A_2 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_2.dat";
       AUTOTB_TVIN_A_3 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_3.dat";
       AUTOTB_TVIN_A_4 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_4.dat";
       AUTOTB_TVIN_A_5 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_5.dat";
       AUTOTB_TVIN_A_6 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_6.dat";
       AUTOTB_TVIN_A_7 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_7.dat";
       AUTOTB_TVIN_A_8 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_8.dat";
       AUTOTB_TVIN_A_9 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_9.dat";
       AUTOTB_TVIN_A_10 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_10.dat";
       AUTOTB_TVIN_A_11 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_11.dat";
       AUTOTB_TVIN_A_12 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_12.dat";
       AUTOTB_TVIN_A_13 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_13.dat";
       AUTOTB_TVIN_A_14 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_14.dat";
       AUTOTB_TVIN_A_15 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_15.dat";
       AUTOTB_TVIN_A_16 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_16.dat";
       AUTOTB_TVIN_A_17 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_17.dat";
       AUTOTB_TVIN_A_18 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_18.dat";
       AUTOTB_TVIN_A_19 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_19.dat";
       AUTOTB_TVIN_A_20 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_20.dat";
       AUTOTB_TVIN_A_21 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_21.dat";
       AUTOTB_TVIN_A_22 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_22.dat";
       AUTOTB_TVIN_A_23 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_23.dat";
       AUTOTB_TVIN_A_24 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_24.dat";
       AUTOTB_TVIN_A_25 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_25.dat";
       AUTOTB_TVIN_A_26 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_26.dat";
       AUTOTB_TVIN_A_27 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_27.dat";
       AUTOTB_TVIN_A_28 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_28.dat";
       AUTOTB_TVIN_A_29 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_29.dat";
       AUTOTB_TVIN_A_30 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_30.dat";
       AUTOTB_TVIN_A_31 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_31.dat";
       AUTOTB_TVIN_B_0 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_0.dat";
       AUTOTB_TVIN_B_1 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_1.dat";
       AUTOTB_TVIN_B_2 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_2.dat";
       AUTOTB_TVIN_B_3 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_3.dat";
       AUTOTB_TVIN_B_4 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_4.dat";
       AUTOTB_TVIN_B_5 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_5.dat";
       AUTOTB_TVIN_B_6 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_6.dat";
       AUTOTB_TVIN_B_7 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_7.dat";
       AUTOTB_TVIN_B_8 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_8.dat";
       AUTOTB_TVIN_B_9 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_9.dat";
       AUTOTB_TVIN_B_10 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_10.dat";
       AUTOTB_TVIN_B_11 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_11.dat";
       AUTOTB_TVIN_B_12 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_12.dat";
       AUTOTB_TVIN_B_13 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_13.dat";
       AUTOTB_TVIN_B_14 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_14.dat";
       AUTOTB_TVIN_B_15 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_15.dat";
       AUTOTB_TVIN_B_16 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_16.dat";
       AUTOTB_TVIN_B_17 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_17.dat";
       AUTOTB_TVIN_B_18 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_18.dat";
       AUTOTB_TVIN_B_19 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_19.dat";
       AUTOTB_TVIN_B_20 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_20.dat";
       AUTOTB_TVIN_B_21 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_21.dat";
       AUTOTB_TVIN_B_22 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_22.dat";
       AUTOTB_TVIN_B_23 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_23.dat";
       AUTOTB_TVIN_B_24 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_24.dat";
       AUTOTB_TVIN_B_25 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_25.dat";
       AUTOTB_TVIN_B_26 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_26.dat";
       AUTOTB_TVIN_B_27 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_27.dat";
       AUTOTB_TVIN_B_28 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_28.dat";
       AUTOTB_TVIN_B_29 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_29.dat";
       AUTOTB_TVIN_B_30 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_30.dat";
       AUTOTB_TVIN_B_31 : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_31.dat";
       AUTOTB_TVIN_feature_vector_V_data_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat";
       AUTOTB_TVIN_feature_vector_V_keep_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat";
       AUTOTB_TVIN_feature_vector_V_strb_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat";
       AUTOTB_TVIN_feature_vector_V_user_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat";
       AUTOTB_TVIN_feature_vector_V_last_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat";
       AUTOTB_TVIN_feature_vector_V_id_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat";
       AUTOTB_TVIN_feature_vector_V_dest_V : STRING := "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat";
       AUTOTB_TVIN_A_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_0.dat";
       AUTOTB_TVIN_A_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_1.dat";
       AUTOTB_TVIN_A_2_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_2.dat";
       AUTOTB_TVIN_A_3_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_3.dat";
       AUTOTB_TVIN_A_4_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_4.dat";
       AUTOTB_TVIN_A_5_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_5.dat";
       AUTOTB_TVIN_A_6_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_6.dat";
       AUTOTB_TVIN_A_7_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_7.dat";
       AUTOTB_TVIN_A_8_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_8.dat";
       AUTOTB_TVIN_A_9_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_9.dat";
       AUTOTB_TVIN_A_10_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_10.dat";
       AUTOTB_TVIN_A_11_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_11.dat";
       AUTOTB_TVIN_A_12_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_12.dat";
       AUTOTB_TVIN_A_13_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_13.dat";
       AUTOTB_TVIN_A_14_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_14.dat";
       AUTOTB_TVIN_A_15_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_15.dat";
       AUTOTB_TVIN_A_16_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_16.dat";
       AUTOTB_TVIN_A_17_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_17.dat";
       AUTOTB_TVIN_A_18_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_18.dat";
       AUTOTB_TVIN_A_19_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_19.dat";
       AUTOTB_TVIN_A_20_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_20.dat";
       AUTOTB_TVIN_A_21_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_21.dat";
       AUTOTB_TVIN_A_22_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_22.dat";
       AUTOTB_TVIN_A_23_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_23.dat";
       AUTOTB_TVIN_A_24_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_24.dat";
       AUTOTB_TVIN_A_25_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_25.dat";
       AUTOTB_TVIN_A_26_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_26.dat";
       AUTOTB_TVIN_A_27_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_27.dat";
       AUTOTB_TVIN_A_28_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_28.dat";
       AUTOTB_TVIN_A_29_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_29.dat";
       AUTOTB_TVIN_A_30_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_30.dat";
       AUTOTB_TVIN_A_31_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_A_31.dat";
       AUTOTB_TVIN_B_0_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_0.dat";
       AUTOTB_TVIN_B_1_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_1.dat";
       AUTOTB_TVIN_B_2_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_2.dat";
       AUTOTB_TVIN_B_3_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_3.dat";
       AUTOTB_TVIN_B_4_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_4.dat";
       AUTOTB_TVIN_B_5_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_5.dat";
       AUTOTB_TVIN_B_6_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_6.dat";
       AUTOTB_TVIN_B_7_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_7.dat";
       AUTOTB_TVIN_B_8_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_8.dat";
       AUTOTB_TVIN_B_9_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_9.dat";
       AUTOTB_TVIN_B_10_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_10.dat";
       AUTOTB_TVIN_B_11_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_11.dat";
       AUTOTB_TVIN_B_12_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_12.dat";
       AUTOTB_TVIN_B_13_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_13.dat";
       AUTOTB_TVIN_B_14_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_14.dat";
       AUTOTB_TVIN_B_15_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_15.dat";
       AUTOTB_TVIN_B_16_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_16.dat";
       AUTOTB_TVIN_B_17_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_17.dat";
       AUTOTB_TVIN_B_18_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_18.dat";
       AUTOTB_TVIN_B_19_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_19.dat";
       AUTOTB_TVIN_B_20_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_20.dat";
       AUTOTB_TVIN_B_21_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_21.dat";
       AUTOTB_TVIN_B_22_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_22.dat";
       AUTOTB_TVIN_B_23_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_23.dat";
       AUTOTB_TVIN_B_24_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_24.dat";
       AUTOTB_TVIN_B_25_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_25.dat";
       AUTOTB_TVIN_B_26_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_26.dat";
       AUTOTB_TVIN_B_27_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_27.dat";
       AUTOTB_TVIN_B_28_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_28.dat";
       AUTOTB_TVIN_B_29_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_29.dat";
       AUTOTB_TVIN_B_30_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_30.dat";
       AUTOTB_TVIN_B_31_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_B_31.dat";
       AUTOTB_TVIN_feature_vector_V_data_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat";
       AUTOTB_TVIN_feature_vector_V_keep_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat";
       AUTOTB_TVIN_feature_vector_V_strb_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat";
       AUTOTB_TVIN_feature_vector_V_user_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat";
       AUTOTB_TVIN_feature_vector_V_last_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat";
       AUTOTB_TVIN_feature_vector_V_id_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat";
       AUTOTB_TVIN_feature_vector_V_dest_V_out_wrapc : STRING := "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat";
      AUTOTB_LAT_RESULT_FILE    : STRING  := "matrix_matrix_mult_streaming.result.lat.rb";
      AUTOTB_PER_RESULT_TRANS_FILE    : STRING  := "matrix_matrix_mult_streaming.performance.result.transaction.xml";
      LENGTH_A_0     : INTEGER := 32;
      LENGTH_A_1     : INTEGER := 32;
      LENGTH_A_2     : INTEGER := 32;
      LENGTH_A_3     : INTEGER := 32;
      LENGTH_A_4     : INTEGER := 32;
      LENGTH_A_5     : INTEGER := 32;
      LENGTH_A_6     : INTEGER := 32;
      LENGTH_A_7     : INTEGER := 32;
      LENGTH_A_8     : INTEGER := 32;
      LENGTH_A_9     : INTEGER := 32;
      LENGTH_A_10     : INTEGER := 32;
      LENGTH_A_11     : INTEGER := 32;
      LENGTH_A_12     : INTEGER := 32;
      LENGTH_A_13     : INTEGER := 32;
      LENGTH_A_14     : INTEGER := 32;
      LENGTH_A_15     : INTEGER := 32;
      LENGTH_A_16     : INTEGER := 32;
      LENGTH_A_17     : INTEGER := 32;
      LENGTH_A_18     : INTEGER := 32;
      LENGTH_A_19     : INTEGER := 32;
      LENGTH_A_20     : INTEGER := 32;
      LENGTH_A_21     : INTEGER := 32;
      LENGTH_A_22     : INTEGER := 32;
      LENGTH_A_23     : INTEGER := 32;
      LENGTH_A_24     : INTEGER := 32;
      LENGTH_A_25     : INTEGER := 32;
      LENGTH_A_26     : INTEGER := 32;
      LENGTH_A_27     : INTEGER := 32;
      LENGTH_A_28     : INTEGER := 32;
      LENGTH_A_29     : INTEGER := 32;
      LENGTH_A_30     : INTEGER := 32;
      LENGTH_A_31     : INTEGER := 32;
      LENGTH_B_0     : INTEGER := 10;
      LENGTH_B_1     : INTEGER := 10;
      LENGTH_B_2     : INTEGER := 10;
      LENGTH_B_3     : INTEGER := 10;
      LENGTH_B_4     : INTEGER := 10;
      LENGTH_B_5     : INTEGER := 10;
      LENGTH_B_6     : INTEGER := 10;
      LENGTH_B_7     : INTEGER := 10;
      LENGTH_B_8     : INTEGER := 10;
      LENGTH_B_9     : INTEGER := 10;
      LENGTH_B_10     : INTEGER := 10;
      LENGTH_B_11     : INTEGER := 10;
      LENGTH_B_12     : INTEGER := 10;
      LENGTH_B_13     : INTEGER := 10;
      LENGTH_B_14     : INTEGER := 10;
      LENGTH_B_15     : INTEGER := 10;
      LENGTH_B_16     : INTEGER := 10;
      LENGTH_B_17     : INTEGER := 10;
      LENGTH_B_18     : INTEGER := 10;
      LENGTH_B_19     : INTEGER := 10;
      LENGTH_B_20     : INTEGER := 10;
      LENGTH_B_21     : INTEGER := 10;
      LENGTH_B_22     : INTEGER := 10;
      LENGTH_B_23     : INTEGER := 10;
      LENGTH_B_24     : INTEGER := 10;
      LENGTH_B_25     : INTEGER := 10;
      LENGTH_B_26     : INTEGER := 10;
      LENGTH_B_27     : INTEGER := 10;
      LENGTH_B_28     : INTEGER := 10;
      LENGTH_B_29     : INTEGER := 10;
      LENGTH_B_30     : INTEGER := 10;
      LENGTH_B_31     : INTEGER := 10;
      LENGTH_feature_vector_V_data_V     : INTEGER := 32;
      LENGTH_feature_vector_V_keep_V     : INTEGER := 32;
      LENGTH_feature_vector_V_strb_V     : INTEGER := 32;
      LENGTH_feature_vector_V_user_V     : INTEGER := 32;
      LENGTH_feature_vector_V_last_V     : INTEGER := 32;
      LENGTH_feature_vector_V_id_V     : INTEGER := 32;
      LENGTH_feature_vector_V_dest_V     : INTEGER := 32;
	    AUTOTB_TRANSACTION_NUM    : INTEGER := 1
);

end apatb_matrix_matrix_mult_streaming_top;

architecture behav of apatb_matrix_matrix_mult_streaming_top is 
  signal AESL_clock	:   STD_LOGIC := '0';
  signal rst      :   STD_LOGIC;
  signal dut_rst  :   STD_LOGIC;
  signal start    :   STD_LOGIC := '0';
  signal ce       :   STD_LOGIC;
  signal continue :   STD_LOGIC := '0';
  signal AESL_reset :   STD_LOGIC := '0';
  signal AESL_start :   STD_LOGIC := '0';
  signal AESL_ce :   STD_LOGIC := '0';
  signal AESL_continue :   STD_LOGIC := '0';
  signal AESL_ready :   STD_LOGIC := '0';
  signal AESL_idle :   STD_LOGIC := '0';
  signal AESL_done :   STD_LOGIC := '0';
  signal AESL_done_delay :   STD_LOGIC := '0';
  signal AESL_done_delay2 :   STD_LOGIC := '0';
  signal AESL_ready_delay :   STD_LOGIC := '0';
  signal ready :   STD_LOGIC := '0';
  signal ready_wire :   STD_LOGIC := '0';

  signal CTRL_BUS_AWADDR:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal CTRL_BUS_AWVALID:  STD_LOGIC;
  signal CTRL_BUS_AWREADY:  STD_LOGIC;
  signal CTRL_BUS_WVALID:  STD_LOGIC;
  signal CTRL_BUS_WREADY:  STD_LOGIC;
  signal CTRL_BUS_WDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal CTRL_BUS_WSTRB:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal CTRL_BUS_ARADDR:  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal CTRL_BUS_ARVALID:  STD_LOGIC;
  signal CTRL_BUS_ARREADY:  STD_LOGIC;
  signal CTRL_BUS_RVALID:  STD_LOGIC;
  signal CTRL_BUS_RREADY:  STD_LOGIC;
  signal CTRL_BUS_RDATA:  STD_LOGIC_VECTOR (31 DOWNTO 0);
  signal CTRL_BUS_RRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal CTRL_BUS_BVALID:  STD_LOGIC;
  signal CTRL_BUS_BREADY:  STD_LOGIC;
  signal CTRL_BUS_BRESP:  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal CTRL_BUS_INTERRUPT:  STD_LOGIC;
  signal ap_clk :  STD_LOGIC;
  signal ap_rst_n :  STD_LOGIC;
  signal A_0_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_0_ce0 :  STD_LOGIC;
  signal A_0_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_0_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_0_we0 :  STD_LOGIC;
  signal A_0_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_0_ce1 :  STD_LOGIC;
  signal A_0_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_0_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_0_we1 :  STD_LOGIC;
  signal A_1_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_1_ce0 :  STD_LOGIC;
  signal A_1_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_1_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_1_we0 :  STD_LOGIC;
  signal A_1_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_1_ce1 :  STD_LOGIC;
  signal A_1_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_1_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_1_we1 :  STD_LOGIC;
  signal A_2_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_2_ce0 :  STD_LOGIC;
  signal A_2_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_2_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_2_we0 :  STD_LOGIC;
  signal A_2_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_2_ce1 :  STD_LOGIC;
  signal A_2_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_2_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_2_we1 :  STD_LOGIC;
  signal A_3_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_3_ce0 :  STD_LOGIC;
  signal A_3_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_3_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_3_we0 :  STD_LOGIC;
  signal A_3_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_3_ce1 :  STD_LOGIC;
  signal A_3_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_3_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_3_we1 :  STD_LOGIC;
  signal A_4_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_4_ce0 :  STD_LOGIC;
  signal A_4_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_4_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_4_we0 :  STD_LOGIC;
  signal A_4_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_4_ce1 :  STD_LOGIC;
  signal A_4_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_4_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_4_we1 :  STD_LOGIC;
  signal A_5_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_5_ce0 :  STD_LOGIC;
  signal A_5_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_5_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_5_we0 :  STD_LOGIC;
  signal A_5_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_5_ce1 :  STD_LOGIC;
  signal A_5_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_5_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_5_we1 :  STD_LOGIC;
  signal A_6_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_6_ce0 :  STD_LOGIC;
  signal A_6_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_6_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_6_we0 :  STD_LOGIC;
  signal A_6_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_6_ce1 :  STD_LOGIC;
  signal A_6_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_6_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_6_we1 :  STD_LOGIC;
  signal A_7_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_7_ce0 :  STD_LOGIC;
  signal A_7_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_7_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_7_we0 :  STD_LOGIC;
  signal A_7_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_7_ce1 :  STD_LOGIC;
  signal A_7_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_7_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_7_we1 :  STD_LOGIC;
  signal A_8_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_8_ce0 :  STD_LOGIC;
  signal A_8_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_8_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_8_we0 :  STD_LOGIC;
  signal A_8_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_8_ce1 :  STD_LOGIC;
  signal A_8_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_8_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_8_we1 :  STD_LOGIC;
  signal A_9_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_9_ce0 :  STD_LOGIC;
  signal A_9_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_9_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_9_we0 :  STD_LOGIC;
  signal A_9_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_9_ce1 :  STD_LOGIC;
  signal A_9_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_9_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_9_we1 :  STD_LOGIC;
  signal A_10_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_10_ce0 :  STD_LOGIC;
  signal A_10_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_10_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_10_we0 :  STD_LOGIC;
  signal A_10_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_10_ce1 :  STD_LOGIC;
  signal A_10_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_10_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_10_we1 :  STD_LOGIC;
  signal A_11_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_11_ce0 :  STD_LOGIC;
  signal A_11_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_11_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_11_we0 :  STD_LOGIC;
  signal A_11_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_11_ce1 :  STD_LOGIC;
  signal A_11_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_11_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_11_we1 :  STD_LOGIC;
  signal A_12_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_12_ce0 :  STD_LOGIC;
  signal A_12_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_12_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_12_we0 :  STD_LOGIC;
  signal A_12_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_12_ce1 :  STD_LOGIC;
  signal A_12_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_12_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_12_we1 :  STD_LOGIC;
  signal A_13_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_13_ce0 :  STD_LOGIC;
  signal A_13_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_13_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_13_we0 :  STD_LOGIC;
  signal A_13_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_13_ce1 :  STD_LOGIC;
  signal A_13_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_13_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_13_we1 :  STD_LOGIC;
  signal A_14_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_14_ce0 :  STD_LOGIC;
  signal A_14_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_14_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_14_we0 :  STD_LOGIC;
  signal A_14_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_14_ce1 :  STD_LOGIC;
  signal A_14_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_14_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_14_we1 :  STD_LOGIC;
  signal A_15_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_15_ce0 :  STD_LOGIC;
  signal A_15_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_15_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_15_we0 :  STD_LOGIC;
  signal A_15_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_15_ce1 :  STD_LOGIC;
  signal A_15_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_15_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_15_we1 :  STD_LOGIC;
  signal A_16_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_16_ce0 :  STD_LOGIC;
  signal A_16_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_16_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_16_we0 :  STD_LOGIC;
  signal A_16_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_16_ce1 :  STD_LOGIC;
  signal A_16_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_16_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_16_we1 :  STD_LOGIC;
  signal A_17_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_17_ce0 :  STD_LOGIC;
  signal A_17_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_17_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_17_we0 :  STD_LOGIC;
  signal A_17_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_17_ce1 :  STD_LOGIC;
  signal A_17_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_17_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_17_we1 :  STD_LOGIC;
  signal A_18_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_18_ce0 :  STD_LOGIC;
  signal A_18_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_18_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_18_we0 :  STD_LOGIC;
  signal A_18_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_18_ce1 :  STD_LOGIC;
  signal A_18_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_18_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_18_we1 :  STD_LOGIC;
  signal A_19_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_19_ce0 :  STD_LOGIC;
  signal A_19_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_19_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_19_we0 :  STD_LOGIC;
  signal A_19_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_19_ce1 :  STD_LOGIC;
  signal A_19_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_19_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_19_we1 :  STD_LOGIC;
  signal A_20_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_20_ce0 :  STD_LOGIC;
  signal A_20_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_20_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_20_we0 :  STD_LOGIC;
  signal A_20_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_20_ce1 :  STD_LOGIC;
  signal A_20_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_20_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_20_we1 :  STD_LOGIC;
  signal A_21_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_21_ce0 :  STD_LOGIC;
  signal A_21_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_21_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_21_we0 :  STD_LOGIC;
  signal A_21_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_21_ce1 :  STD_LOGIC;
  signal A_21_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_21_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_21_we1 :  STD_LOGIC;
  signal A_22_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_22_ce0 :  STD_LOGIC;
  signal A_22_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_22_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_22_we0 :  STD_LOGIC;
  signal A_22_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_22_ce1 :  STD_LOGIC;
  signal A_22_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_22_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_22_we1 :  STD_LOGIC;
  signal A_23_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_23_ce0 :  STD_LOGIC;
  signal A_23_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_23_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_23_we0 :  STD_LOGIC;
  signal A_23_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_23_ce1 :  STD_LOGIC;
  signal A_23_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_23_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_23_we1 :  STD_LOGIC;
  signal A_24_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_24_ce0 :  STD_LOGIC;
  signal A_24_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_24_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_24_we0 :  STD_LOGIC;
  signal A_24_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_24_ce1 :  STD_LOGIC;
  signal A_24_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_24_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_24_we1 :  STD_LOGIC;
  signal A_25_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_25_ce0 :  STD_LOGIC;
  signal A_25_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_25_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_25_we0 :  STD_LOGIC;
  signal A_25_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_25_ce1 :  STD_LOGIC;
  signal A_25_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_25_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_25_we1 :  STD_LOGIC;
  signal A_26_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_26_ce0 :  STD_LOGIC;
  signal A_26_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_26_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_26_we0 :  STD_LOGIC;
  signal A_26_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_26_ce1 :  STD_LOGIC;
  signal A_26_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_26_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_26_we1 :  STD_LOGIC;
  signal A_27_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_27_ce0 :  STD_LOGIC;
  signal A_27_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_27_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_27_we0 :  STD_LOGIC;
  signal A_27_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_27_ce1 :  STD_LOGIC;
  signal A_27_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_27_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_27_we1 :  STD_LOGIC;
  signal A_28_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_28_ce0 :  STD_LOGIC;
  signal A_28_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_28_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_28_we0 :  STD_LOGIC;
  signal A_28_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_28_ce1 :  STD_LOGIC;
  signal A_28_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_28_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_28_we1 :  STD_LOGIC;
  signal A_29_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_29_ce0 :  STD_LOGIC;
  signal A_29_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_29_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_29_we0 :  STD_LOGIC;
  signal A_29_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_29_ce1 :  STD_LOGIC;
  signal A_29_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_29_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_29_we1 :  STD_LOGIC;
  signal A_30_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_30_ce0 :  STD_LOGIC;
  signal A_30_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_30_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_30_we0 :  STD_LOGIC;
  signal A_30_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_30_ce1 :  STD_LOGIC;
  signal A_30_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_30_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_30_we1 :  STD_LOGIC;
  signal A_31_address0 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_31_ce0 :  STD_LOGIC;
  signal A_31_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_31_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_31_we0 :  STD_LOGIC;
  signal A_31_address1 :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal A_31_ce1 :  STD_LOGIC;
  signal A_31_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_31_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal A_31_we1 :  STD_LOGIC;
  signal B_0_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_0_ce0 :  STD_LOGIC;
  signal B_0_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_0_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_0_we0 :  STD_LOGIC;
  signal B_0_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_0_ce1 :  STD_LOGIC;
  signal B_0_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_0_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_0_we1 :  STD_LOGIC;
  signal B_1_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_1_ce0 :  STD_LOGIC;
  signal B_1_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_1_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_1_we0 :  STD_LOGIC;
  signal B_1_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_1_ce1 :  STD_LOGIC;
  signal B_1_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_1_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_1_we1 :  STD_LOGIC;
  signal B_2_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_2_ce0 :  STD_LOGIC;
  signal B_2_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_2_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_2_we0 :  STD_LOGIC;
  signal B_2_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_2_ce1 :  STD_LOGIC;
  signal B_2_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_2_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_2_we1 :  STD_LOGIC;
  signal B_3_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_3_ce0 :  STD_LOGIC;
  signal B_3_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_3_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_3_we0 :  STD_LOGIC;
  signal B_3_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_3_ce1 :  STD_LOGIC;
  signal B_3_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_3_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_3_we1 :  STD_LOGIC;
  signal B_4_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_4_ce0 :  STD_LOGIC;
  signal B_4_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_4_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_4_we0 :  STD_LOGIC;
  signal B_4_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_4_ce1 :  STD_LOGIC;
  signal B_4_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_4_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_4_we1 :  STD_LOGIC;
  signal B_5_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_5_ce0 :  STD_LOGIC;
  signal B_5_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_5_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_5_we0 :  STD_LOGIC;
  signal B_5_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_5_ce1 :  STD_LOGIC;
  signal B_5_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_5_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_5_we1 :  STD_LOGIC;
  signal B_6_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_6_ce0 :  STD_LOGIC;
  signal B_6_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_6_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_6_we0 :  STD_LOGIC;
  signal B_6_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_6_ce1 :  STD_LOGIC;
  signal B_6_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_6_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_6_we1 :  STD_LOGIC;
  signal B_7_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_7_ce0 :  STD_LOGIC;
  signal B_7_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_7_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_7_we0 :  STD_LOGIC;
  signal B_7_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_7_ce1 :  STD_LOGIC;
  signal B_7_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_7_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_7_we1 :  STD_LOGIC;
  signal B_8_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_8_ce0 :  STD_LOGIC;
  signal B_8_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_8_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_8_we0 :  STD_LOGIC;
  signal B_8_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_8_ce1 :  STD_LOGIC;
  signal B_8_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_8_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_8_we1 :  STD_LOGIC;
  signal B_9_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_9_ce0 :  STD_LOGIC;
  signal B_9_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_9_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_9_we0 :  STD_LOGIC;
  signal B_9_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_9_ce1 :  STD_LOGIC;
  signal B_9_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_9_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_9_we1 :  STD_LOGIC;
  signal B_10_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_10_ce0 :  STD_LOGIC;
  signal B_10_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_10_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_10_we0 :  STD_LOGIC;
  signal B_10_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_10_ce1 :  STD_LOGIC;
  signal B_10_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_10_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_10_we1 :  STD_LOGIC;
  signal B_11_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_11_ce0 :  STD_LOGIC;
  signal B_11_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_11_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_11_we0 :  STD_LOGIC;
  signal B_11_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_11_ce1 :  STD_LOGIC;
  signal B_11_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_11_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_11_we1 :  STD_LOGIC;
  signal B_12_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_12_ce0 :  STD_LOGIC;
  signal B_12_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_12_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_12_we0 :  STD_LOGIC;
  signal B_12_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_12_ce1 :  STD_LOGIC;
  signal B_12_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_12_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_12_we1 :  STD_LOGIC;
  signal B_13_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_13_ce0 :  STD_LOGIC;
  signal B_13_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_13_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_13_we0 :  STD_LOGIC;
  signal B_13_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_13_ce1 :  STD_LOGIC;
  signal B_13_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_13_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_13_we1 :  STD_LOGIC;
  signal B_14_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_14_ce0 :  STD_LOGIC;
  signal B_14_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_14_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_14_we0 :  STD_LOGIC;
  signal B_14_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_14_ce1 :  STD_LOGIC;
  signal B_14_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_14_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_14_we1 :  STD_LOGIC;
  signal B_15_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_15_ce0 :  STD_LOGIC;
  signal B_15_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_15_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_15_we0 :  STD_LOGIC;
  signal B_15_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_15_ce1 :  STD_LOGIC;
  signal B_15_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_15_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_15_we1 :  STD_LOGIC;
  signal B_16_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_16_ce0 :  STD_LOGIC;
  signal B_16_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_16_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_16_we0 :  STD_LOGIC;
  signal B_16_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_16_ce1 :  STD_LOGIC;
  signal B_16_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_16_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_16_we1 :  STD_LOGIC;
  signal B_17_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_17_ce0 :  STD_LOGIC;
  signal B_17_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_17_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_17_we0 :  STD_LOGIC;
  signal B_17_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_17_ce1 :  STD_LOGIC;
  signal B_17_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_17_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_17_we1 :  STD_LOGIC;
  signal B_18_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_18_ce0 :  STD_LOGIC;
  signal B_18_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_18_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_18_we0 :  STD_LOGIC;
  signal B_18_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_18_ce1 :  STD_LOGIC;
  signal B_18_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_18_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_18_we1 :  STD_LOGIC;
  signal B_19_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_19_ce0 :  STD_LOGIC;
  signal B_19_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_19_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_19_we0 :  STD_LOGIC;
  signal B_19_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_19_ce1 :  STD_LOGIC;
  signal B_19_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_19_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_19_we1 :  STD_LOGIC;
  signal B_20_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_20_ce0 :  STD_LOGIC;
  signal B_20_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_20_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_20_we0 :  STD_LOGIC;
  signal B_20_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_20_ce1 :  STD_LOGIC;
  signal B_20_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_20_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_20_we1 :  STD_LOGIC;
  signal B_21_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_21_ce0 :  STD_LOGIC;
  signal B_21_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_21_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_21_we0 :  STD_LOGIC;
  signal B_21_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_21_ce1 :  STD_LOGIC;
  signal B_21_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_21_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_21_we1 :  STD_LOGIC;
  signal B_22_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_22_ce0 :  STD_LOGIC;
  signal B_22_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_22_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_22_we0 :  STD_LOGIC;
  signal B_22_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_22_ce1 :  STD_LOGIC;
  signal B_22_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_22_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_22_we1 :  STD_LOGIC;
  signal B_23_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_23_ce0 :  STD_LOGIC;
  signal B_23_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_23_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_23_we0 :  STD_LOGIC;
  signal B_23_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_23_ce1 :  STD_LOGIC;
  signal B_23_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_23_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_23_we1 :  STD_LOGIC;
  signal B_24_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_24_ce0 :  STD_LOGIC;
  signal B_24_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_24_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_24_we0 :  STD_LOGIC;
  signal B_24_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_24_ce1 :  STD_LOGIC;
  signal B_24_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_24_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_24_we1 :  STD_LOGIC;
  signal B_25_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_25_ce0 :  STD_LOGIC;
  signal B_25_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_25_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_25_we0 :  STD_LOGIC;
  signal B_25_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_25_ce1 :  STD_LOGIC;
  signal B_25_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_25_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_25_we1 :  STD_LOGIC;
  signal B_26_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_26_ce0 :  STD_LOGIC;
  signal B_26_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_26_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_26_we0 :  STD_LOGIC;
  signal B_26_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_26_ce1 :  STD_LOGIC;
  signal B_26_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_26_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_26_we1 :  STD_LOGIC;
  signal B_27_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_27_ce0 :  STD_LOGIC;
  signal B_27_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_27_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_27_we0 :  STD_LOGIC;
  signal B_27_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_27_ce1 :  STD_LOGIC;
  signal B_27_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_27_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_27_we1 :  STD_LOGIC;
  signal B_28_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_28_ce0 :  STD_LOGIC;
  signal B_28_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_28_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_28_we0 :  STD_LOGIC;
  signal B_28_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_28_ce1 :  STD_LOGIC;
  signal B_28_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_28_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_28_we1 :  STD_LOGIC;
  signal B_29_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_29_ce0 :  STD_LOGIC;
  signal B_29_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_29_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_29_we0 :  STD_LOGIC;
  signal B_29_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_29_ce1 :  STD_LOGIC;
  signal B_29_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_29_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_29_we1 :  STD_LOGIC;
  signal B_30_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_30_ce0 :  STD_LOGIC;
  signal B_30_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_30_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_30_we0 :  STD_LOGIC;
  signal B_30_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_30_ce1 :  STD_LOGIC;
  signal B_30_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_30_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_30_we1 :  STD_LOGIC;
  signal B_31_address0 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_31_ce0 :  STD_LOGIC;
  signal B_31_d0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_31_q0 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_31_we0 :  STD_LOGIC;
  signal B_31_address1 :  STD_LOGIC_VECTOR (3 DOWNTO 0);
  signal B_31_ce1 :  STD_LOGIC;
  signal B_31_d1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_31_q1 :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal B_31_we1 :  STD_LOGIC;
  signal feature_vector_TDATA :  STD_LOGIC_VECTOR (127 DOWNTO 0);
  signal feature_vector_TKEEP :  STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal feature_vector_TSTRB :  STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal feature_vector_TUSER :  STD_LOGIC_VECTOR (1 DOWNTO 0);
  signal feature_vector_TLAST :  STD_LOGIC_VECTOR (0 DOWNTO 0);
  signal feature_vector_TID :  STD_LOGIC_VECTOR (4 DOWNTO 0);
  signal feature_vector_TDEST :  STD_LOGIC_VECTOR (5 DOWNTO 0);
  signal feature_vector_TVALID :  STD_LOGIC;
  signal feature_vector_TREADY :  STD_LOGIC;

  signal ready_cnt : STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal done_cnt	: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal ready_initial  :	STD_LOGIC;
  signal ready_initial_n	:   STD_LOGIC;
  signal ready_last_n   :	STD_LOGIC;
  signal ready_delay_last_n	:   STD_LOGIC;
  signal done_delay_last_n	:   STD_LOGIC;
  signal interface_done :	STD_LOGIC := '0';
  -- Subtype for random state number, to prevent confusing it with true integers
  -- Top of range should be (2**31)-1 but this literal calculation causes overflow on 32-bit machines
  subtype T_RANDINT is integer range 1 to integer'high;

  type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
  shared variable AESL_mLatCnterIn : latency_record;
  shared variable AESL_mLatCnterOut : latency_record;
  shared variable AESL_mLatCnterIn_addr : INTEGER;
  shared variable AESL_mLatCnterOut_addr : INTEGER;
  shared variable AESL_mThrCnterIn : latency_record;
  shared variable AESL_mThrCnterIn_addr : INTEGER;
  signal AESL_clk_counter : INTEGER;
  signal AESL_start_p1 : STD_LOGIC := '0';
  signal AESL_ready_p1 : STD_LOGIC := '0';
  signal lat_total : INTEGER;
  signal reported_stuck : STD_LOGIC   := '0';
  shared variable reported_stuck_cnt : INTEGER := 0;
component matrix_matrix_mult_streaming is
port (
    s_axi_CTRL_BUS_AWVALID :  IN STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY :  OUT STD_LOGIC;
    s_axi_CTRL_BUS_AWADDR :  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    s_axi_CTRL_BUS_WVALID :  IN STD_LOGIC;
    s_axi_CTRL_BUS_WREADY :  OUT STD_LOGIC;
    s_axi_CTRL_BUS_WDATA :  IN STD_LOGIC_VECTOR (31 DOWNTO 0);
    s_axi_CTRL_BUS_WSTRB :  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    s_axi_CTRL_BUS_ARVALID :  IN STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY :  OUT STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR :  IN STD_LOGIC_VECTOR (3 DOWNTO 0);
    s_axi_CTRL_BUS_RVALID :  OUT STD_LOGIC;
    s_axi_CTRL_BUS_RREADY :  IN STD_LOGIC;
    s_axi_CTRL_BUS_RDATA :  OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
    s_axi_CTRL_BUS_RRESP :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    s_axi_CTRL_BUS_BVALID :  OUT STD_LOGIC;
    s_axi_CTRL_BUS_BREADY :  IN STD_LOGIC;
    s_axi_CTRL_BUS_BRESP :  OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
    ap_clk :  IN STD_LOGIC;
    ap_rst_n :  IN STD_LOGIC;
    interrupt :  OUT STD_LOGIC;
    A_0_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_0_ce0 :  OUT STD_LOGIC;
    A_0_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_0_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_0_we0 :  OUT STD_LOGIC;
    A_0_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_0_ce1 :  OUT STD_LOGIC;
    A_0_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_0_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_0_we1 :  OUT STD_LOGIC;
    A_1_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_1_ce0 :  OUT STD_LOGIC;
    A_1_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_1_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_1_we0 :  OUT STD_LOGIC;
    A_1_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_1_ce1 :  OUT STD_LOGIC;
    A_1_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_1_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_1_we1 :  OUT STD_LOGIC;
    A_2_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_2_ce0 :  OUT STD_LOGIC;
    A_2_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_2_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_2_we0 :  OUT STD_LOGIC;
    A_2_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_2_ce1 :  OUT STD_LOGIC;
    A_2_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_2_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_2_we1 :  OUT STD_LOGIC;
    A_3_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_3_ce0 :  OUT STD_LOGIC;
    A_3_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_3_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_3_we0 :  OUT STD_LOGIC;
    A_3_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_3_ce1 :  OUT STD_LOGIC;
    A_3_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_3_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_3_we1 :  OUT STD_LOGIC;
    A_4_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_4_ce0 :  OUT STD_LOGIC;
    A_4_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_4_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_4_we0 :  OUT STD_LOGIC;
    A_4_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_4_ce1 :  OUT STD_LOGIC;
    A_4_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_4_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_4_we1 :  OUT STD_LOGIC;
    A_5_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_5_ce0 :  OUT STD_LOGIC;
    A_5_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_5_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_5_we0 :  OUT STD_LOGIC;
    A_5_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_5_ce1 :  OUT STD_LOGIC;
    A_5_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_5_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_5_we1 :  OUT STD_LOGIC;
    A_6_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_6_ce0 :  OUT STD_LOGIC;
    A_6_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_6_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_6_we0 :  OUT STD_LOGIC;
    A_6_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_6_ce1 :  OUT STD_LOGIC;
    A_6_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_6_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_6_we1 :  OUT STD_LOGIC;
    A_7_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_7_ce0 :  OUT STD_LOGIC;
    A_7_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_7_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_7_we0 :  OUT STD_LOGIC;
    A_7_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_7_ce1 :  OUT STD_LOGIC;
    A_7_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_7_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_7_we1 :  OUT STD_LOGIC;
    A_8_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_8_ce0 :  OUT STD_LOGIC;
    A_8_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_8_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_8_we0 :  OUT STD_LOGIC;
    A_8_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_8_ce1 :  OUT STD_LOGIC;
    A_8_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_8_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_8_we1 :  OUT STD_LOGIC;
    A_9_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_9_ce0 :  OUT STD_LOGIC;
    A_9_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_9_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_9_we0 :  OUT STD_LOGIC;
    A_9_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_9_ce1 :  OUT STD_LOGIC;
    A_9_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_9_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_9_we1 :  OUT STD_LOGIC;
    A_10_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_10_ce0 :  OUT STD_LOGIC;
    A_10_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_10_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_10_we0 :  OUT STD_LOGIC;
    A_10_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_10_ce1 :  OUT STD_LOGIC;
    A_10_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_10_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_10_we1 :  OUT STD_LOGIC;
    A_11_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_11_ce0 :  OUT STD_LOGIC;
    A_11_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_11_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_11_we0 :  OUT STD_LOGIC;
    A_11_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_11_ce1 :  OUT STD_LOGIC;
    A_11_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_11_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_11_we1 :  OUT STD_LOGIC;
    A_12_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_12_ce0 :  OUT STD_LOGIC;
    A_12_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_12_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_12_we0 :  OUT STD_LOGIC;
    A_12_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_12_ce1 :  OUT STD_LOGIC;
    A_12_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_12_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_12_we1 :  OUT STD_LOGIC;
    A_13_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_13_ce0 :  OUT STD_LOGIC;
    A_13_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_13_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_13_we0 :  OUT STD_LOGIC;
    A_13_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_13_ce1 :  OUT STD_LOGIC;
    A_13_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_13_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_13_we1 :  OUT STD_LOGIC;
    A_14_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_14_ce0 :  OUT STD_LOGIC;
    A_14_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_14_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_14_we0 :  OUT STD_LOGIC;
    A_14_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_14_ce1 :  OUT STD_LOGIC;
    A_14_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_14_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_14_we1 :  OUT STD_LOGIC;
    A_15_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_15_ce0 :  OUT STD_LOGIC;
    A_15_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_15_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_15_we0 :  OUT STD_LOGIC;
    A_15_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_15_ce1 :  OUT STD_LOGIC;
    A_15_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_15_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_15_we1 :  OUT STD_LOGIC;
    A_16_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_16_ce0 :  OUT STD_LOGIC;
    A_16_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_16_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_16_we0 :  OUT STD_LOGIC;
    A_16_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_16_ce1 :  OUT STD_LOGIC;
    A_16_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_16_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_16_we1 :  OUT STD_LOGIC;
    A_17_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_17_ce0 :  OUT STD_LOGIC;
    A_17_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_17_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_17_we0 :  OUT STD_LOGIC;
    A_17_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_17_ce1 :  OUT STD_LOGIC;
    A_17_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_17_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_17_we1 :  OUT STD_LOGIC;
    A_18_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_18_ce0 :  OUT STD_LOGIC;
    A_18_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_18_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_18_we0 :  OUT STD_LOGIC;
    A_18_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_18_ce1 :  OUT STD_LOGIC;
    A_18_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_18_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_18_we1 :  OUT STD_LOGIC;
    A_19_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_19_ce0 :  OUT STD_LOGIC;
    A_19_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_19_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_19_we0 :  OUT STD_LOGIC;
    A_19_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_19_ce1 :  OUT STD_LOGIC;
    A_19_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_19_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_19_we1 :  OUT STD_LOGIC;
    A_20_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_20_ce0 :  OUT STD_LOGIC;
    A_20_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_20_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_20_we0 :  OUT STD_LOGIC;
    A_20_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_20_ce1 :  OUT STD_LOGIC;
    A_20_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_20_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_20_we1 :  OUT STD_LOGIC;
    A_21_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_21_ce0 :  OUT STD_LOGIC;
    A_21_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_21_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_21_we0 :  OUT STD_LOGIC;
    A_21_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_21_ce1 :  OUT STD_LOGIC;
    A_21_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_21_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_21_we1 :  OUT STD_LOGIC;
    A_22_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_22_ce0 :  OUT STD_LOGIC;
    A_22_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_22_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_22_we0 :  OUT STD_LOGIC;
    A_22_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_22_ce1 :  OUT STD_LOGIC;
    A_22_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_22_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_22_we1 :  OUT STD_LOGIC;
    A_23_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_23_ce0 :  OUT STD_LOGIC;
    A_23_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_23_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_23_we0 :  OUT STD_LOGIC;
    A_23_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_23_ce1 :  OUT STD_LOGIC;
    A_23_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_23_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_23_we1 :  OUT STD_LOGIC;
    A_24_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_24_ce0 :  OUT STD_LOGIC;
    A_24_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_24_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_24_we0 :  OUT STD_LOGIC;
    A_24_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_24_ce1 :  OUT STD_LOGIC;
    A_24_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_24_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_24_we1 :  OUT STD_LOGIC;
    A_25_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_25_ce0 :  OUT STD_LOGIC;
    A_25_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_25_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_25_we0 :  OUT STD_LOGIC;
    A_25_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_25_ce1 :  OUT STD_LOGIC;
    A_25_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_25_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_25_we1 :  OUT STD_LOGIC;
    A_26_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_26_ce0 :  OUT STD_LOGIC;
    A_26_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_26_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_26_we0 :  OUT STD_LOGIC;
    A_26_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_26_ce1 :  OUT STD_LOGIC;
    A_26_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_26_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_26_we1 :  OUT STD_LOGIC;
    A_27_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_27_ce0 :  OUT STD_LOGIC;
    A_27_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_27_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_27_we0 :  OUT STD_LOGIC;
    A_27_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_27_ce1 :  OUT STD_LOGIC;
    A_27_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_27_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_27_we1 :  OUT STD_LOGIC;
    A_28_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_28_ce0 :  OUT STD_LOGIC;
    A_28_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_28_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_28_we0 :  OUT STD_LOGIC;
    A_28_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_28_ce1 :  OUT STD_LOGIC;
    A_28_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_28_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_28_we1 :  OUT STD_LOGIC;
    A_29_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_29_ce0 :  OUT STD_LOGIC;
    A_29_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_29_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_29_we0 :  OUT STD_LOGIC;
    A_29_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_29_ce1 :  OUT STD_LOGIC;
    A_29_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_29_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_29_we1 :  OUT STD_LOGIC;
    A_30_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_30_ce0 :  OUT STD_LOGIC;
    A_30_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_30_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_30_we0 :  OUT STD_LOGIC;
    A_30_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_30_ce1 :  OUT STD_LOGIC;
    A_30_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_30_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_30_we1 :  OUT STD_LOGIC;
    A_31_address0 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_31_ce0 :  OUT STD_LOGIC;
    A_31_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_31_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_31_we0 :  OUT STD_LOGIC;
    A_31_address1 :  OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
    A_31_ce1 :  OUT STD_LOGIC;
    A_31_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_31_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    A_31_we1 :  OUT STD_LOGIC;
    B_0_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_0_ce0 :  OUT STD_LOGIC;
    B_0_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_0_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_0_we0 :  OUT STD_LOGIC;
    B_0_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_0_ce1 :  OUT STD_LOGIC;
    B_0_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_0_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_0_we1 :  OUT STD_LOGIC;
    B_1_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_1_ce0 :  OUT STD_LOGIC;
    B_1_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_1_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_1_we0 :  OUT STD_LOGIC;
    B_1_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_1_ce1 :  OUT STD_LOGIC;
    B_1_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_1_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_1_we1 :  OUT STD_LOGIC;
    B_2_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_2_ce0 :  OUT STD_LOGIC;
    B_2_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_2_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_2_we0 :  OUT STD_LOGIC;
    B_2_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_2_ce1 :  OUT STD_LOGIC;
    B_2_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_2_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_2_we1 :  OUT STD_LOGIC;
    B_3_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_3_ce0 :  OUT STD_LOGIC;
    B_3_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_3_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_3_we0 :  OUT STD_LOGIC;
    B_3_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_3_ce1 :  OUT STD_LOGIC;
    B_3_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_3_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_3_we1 :  OUT STD_LOGIC;
    B_4_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_4_ce0 :  OUT STD_LOGIC;
    B_4_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_4_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_4_we0 :  OUT STD_LOGIC;
    B_4_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_4_ce1 :  OUT STD_LOGIC;
    B_4_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_4_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_4_we1 :  OUT STD_LOGIC;
    B_5_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_5_ce0 :  OUT STD_LOGIC;
    B_5_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_5_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_5_we0 :  OUT STD_LOGIC;
    B_5_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_5_ce1 :  OUT STD_LOGIC;
    B_5_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_5_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_5_we1 :  OUT STD_LOGIC;
    B_6_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_6_ce0 :  OUT STD_LOGIC;
    B_6_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_6_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_6_we0 :  OUT STD_LOGIC;
    B_6_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_6_ce1 :  OUT STD_LOGIC;
    B_6_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_6_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_6_we1 :  OUT STD_LOGIC;
    B_7_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_7_ce0 :  OUT STD_LOGIC;
    B_7_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_7_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_7_we0 :  OUT STD_LOGIC;
    B_7_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_7_ce1 :  OUT STD_LOGIC;
    B_7_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_7_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_7_we1 :  OUT STD_LOGIC;
    B_8_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_8_ce0 :  OUT STD_LOGIC;
    B_8_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_8_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_8_we0 :  OUT STD_LOGIC;
    B_8_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_8_ce1 :  OUT STD_LOGIC;
    B_8_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_8_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_8_we1 :  OUT STD_LOGIC;
    B_9_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_9_ce0 :  OUT STD_LOGIC;
    B_9_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_9_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_9_we0 :  OUT STD_LOGIC;
    B_9_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_9_ce1 :  OUT STD_LOGIC;
    B_9_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_9_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_9_we1 :  OUT STD_LOGIC;
    B_10_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_10_ce0 :  OUT STD_LOGIC;
    B_10_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_10_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_10_we0 :  OUT STD_LOGIC;
    B_10_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_10_ce1 :  OUT STD_LOGIC;
    B_10_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_10_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_10_we1 :  OUT STD_LOGIC;
    B_11_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_11_ce0 :  OUT STD_LOGIC;
    B_11_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_11_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_11_we0 :  OUT STD_LOGIC;
    B_11_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_11_ce1 :  OUT STD_LOGIC;
    B_11_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_11_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_11_we1 :  OUT STD_LOGIC;
    B_12_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_12_ce0 :  OUT STD_LOGIC;
    B_12_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_12_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_12_we0 :  OUT STD_LOGIC;
    B_12_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_12_ce1 :  OUT STD_LOGIC;
    B_12_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_12_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_12_we1 :  OUT STD_LOGIC;
    B_13_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_13_ce0 :  OUT STD_LOGIC;
    B_13_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_13_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_13_we0 :  OUT STD_LOGIC;
    B_13_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_13_ce1 :  OUT STD_LOGIC;
    B_13_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_13_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_13_we1 :  OUT STD_LOGIC;
    B_14_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_14_ce0 :  OUT STD_LOGIC;
    B_14_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_14_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_14_we0 :  OUT STD_LOGIC;
    B_14_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_14_ce1 :  OUT STD_LOGIC;
    B_14_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_14_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_14_we1 :  OUT STD_LOGIC;
    B_15_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_15_ce0 :  OUT STD_LOGIC;
    B_15_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_15_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_15_we0 :  OUT STD_LOGIC;
    B_15_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_15_ce1 :  OUT STD_LOGIC;
    B_15_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_15_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_15_we1 :  OUT STD_LOGIC;
    B_16_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_16_ce0 :  OUT STD_LOGIC;
    B_16_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_16_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_16_we0 :  OUT STD_LOGIC;
    B_16_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_16_ce1 :  OUT STD_LOGIC;
    B_16_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_16_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_16_we1 :  OUT STD_LOGIC;
    B_17_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_17_ce0 :  OUT STD_LOGIC;
    B_17_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_17_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_17_we0 :  OUT STD_LOGIC;
    B_17_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_17_ce1 :  OUT STD_LOGIC;
    B_17_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_17_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_17_we1 :  OUT STD_LOGIC;
    B_18_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_18_ce0 :  OUT STD_LOGIC;
    B_18_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_18_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_18_we0 :  OUT STD_LOGIC;
    B_18_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_18_ce1 :  OUT STD_LOGIC;
    B_18_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_18_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_18_we1 :  OUT STD_LOGIC;
    B_19_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_19_ce0 :  OUT STD_LOGIC;
    B_19_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_19_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_19_we0 :  OUT STD_LOGIC;
    B_19_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_19_ce1 :  OUT STD_LOGIC;
    B_19_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_19_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_19_we1 :  OUT STD_LOGIC;
    B_20_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_20_ce0 :  OUT STD_LOGIC;
    B_20_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_20_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_20_we0 :  OUT STD_LOGIC;
    B_20_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_20_ce1 :  OUT STD_LOGIC;
    B_20_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_20_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_20_we1 :  OUT STD_LOGIC;
    B_21_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_21_ce0 :  OUT STD_LOGIC;
    B_21_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_21_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_21_we0 :  OUT STD_LOGIC;
    B_21_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_21_ce1 :  OUT STD_LOGIC;
    B_21_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_21_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_21_we1 :  OUT STD_LOGIC;
    B_22_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_22_ce0 :  OUT STD_LOGIC;
    B_22_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_22_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_22_we0 :  OUT STD_LOGIC;
    B_22_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_22_ce1 :  OUT STD_LOGIC;
    B_22_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_22_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_22_we1 :  OUT STD_LOGIC;
    B_23_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_23_ce0 :  OUT STD_LOGIC;
    B_23_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_23_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_23_we0 :  OUT STD_LOGIC;
    B_23_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_23_ce1 :  OUT STD_LOGIC;
    B_23_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_23_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_23_we1 :  OUT STD_LOGIC;
    B_24_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_24_ce0 :  OUT STD_LOGIC;
    B_24_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_24_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_24_we0 :  OUT STD_LOGIC;
    B_24_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_24_ce1 :  OUT STD_LOGIC;
    B_24_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_24_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_24_we1 :  OUT STD_LOGIC;
    B_25_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_25_ce0 :  OUT STD_LOGIC;
    B_25_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_25_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_25_we0 :  OUT STD_LOGIC;
    B_25_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_25_ce1 :  OUT STD_LOGIC;
    B_25_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_25_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_25_we1 :  OUT STD_LOGIC;
    B_26_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_26_ce0 :  OUT STD_LOGIC;
    B_26_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_26_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_26_we0 :  OUT STD_LOGIC;
    B_26_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_26_ce1 :  OUT STD_LOGIC;
    B_26_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_26_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_26_we1 :  OUT STD_LOGIC;
    B_27_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_27_ce0 :  OUT STD_LOGIC;
    B_27_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_27_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_27_we0 :  OUT STD_LOGIC;
    B_27_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_27_ce1 :  OUT STD_LOGIC;
    B_27_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_27_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_27_we1 :  OUT STD_LOGIC;
    B_28_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_28_ce0 :  OUT STD_LOGIC;
    B_28_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_28_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_28_we0 :  OUT STD_LOGIC;
    B_28_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_28_ce1 :  OUT STD_LOGIC;
    B_28_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_28_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_28_we1 :  OUT STD_LOGIC;
    B_29_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_29_ce0 :  OUT STD_LOGIC;
    B_29_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_29_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_29_we0 :  OUT STD_LOGIC;
    B_29_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_29_ce1 :  OUT STD_LOGIC;
    B_29_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_29_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_29_we1 :  OUT STD_LOGIC;
    B_30_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_30_ce0 :  OUT STD_LOGIC;
    B_30_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_30_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_30_we0 :  OUT STD_LOGIC;
    B_30_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_30_ce1 :  OUT STD_LOGIC;
    B_30_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_30_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_30_we1 :  OUT STD_LOGIC;
    B_31_address0 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_31_ce0 :  OUT STD_LOGIC;
    B_31_d0 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_31_q0 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_31_we0 :  OUT STD_LOGIC;
    B_31_address1 :  OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    B_31_ce1 :  OUT STD_LOGIC;
    B_31_d1 :  OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_31_q1 :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    B_31_we1 :  OUT STD_LOGIC;
    feature_vector_TDATA :  IN STD_LOGIC_VECTOR (127 DOWNTO 0);
    feature_vector_TKEEP :  IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    feature_vector_TSTRB :  IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    feature_vector_TUSER :  IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    feature_vector_TLAST :  IN STD_LOGIC_VECTOR (0 DOWNTO 0);
    feature_vector_TID :  IN STD_LOGIC_VECTOR (4 DOWNTO 0);
    feature_vector_TDEST :  IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    feature_vector_TVALID :  IN STD_LOGIC;
    feature_vector_TREADY :  OUT STD_LOGIC);
end component;

signal arrayA_0_ce0, arrayA_0_ce1 : STD_LOGIC;
signal arrayA_0_we0, arrayA_0_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_0_address0, arrayA_0_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_0_din0, arrayA_0_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_0_dout0, arrayA_0_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_0_ready : STD_LOGIC;
signal arrayA_0_done : STD_LOGIC;

component AESL_automem_A_0 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_1_ce0, arrayA_1_ce1 : STD_LOGIC;
signal arrayA_1_we0, arrayA_1_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_1_address0, arrayA_1_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_1_din0, arrayA_1_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_1_dout0, arrayA_1_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_1_ready : STD_LOGIC;
signal arrayA_1_done : STD_LOGIC;

component AESL_automem_A_1 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_2_ce0, arrayA_2_ce1 : STD_LOGIC;
signal arrayA_2_we0, arrayA_2_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_2_address0, arrayA_2_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_2_din0, arrayA_2_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_2_dout0, arrayA_2_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_2_ready : STD_LOGIC;
signal arrayA_2_done : STD_LOGIC;

component AESL_automem_A_2 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_3_ce0, arrayA_3_ce1 : STD_LOGIC;
signal arrayA_3_we0, arrayA_3_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_3_address0, arrayA_3_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_3_din0, arrayA_3_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_3_dout0, arrayA_3_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_3_ready : STD_LOGIC;
signal arrayA_3_done : STD_LOGIC;

component AESL_automem_A_3 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_4_ce0, arrayA_4_ce1 : STD_LOGIC;
signal arrayA_4_we0, arrayA_4_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_4_address0, arrayA_4_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_4_din0, arrayA_4_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_4_dout0, arrayA_4_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_4_ready : STD_LOGIC;
signal arrayA_4_done : STD_LOGIC;

component AESL_automem_A_4 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_5_ce0, arrayA_5_ce1 : STD_LOGIC;
signal arrayA_5_we0, arrayA_5_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_5_address0, arrayA_5_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_5_din0, arrayA_5_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_5_dout0, arrayA_5_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_5_ready : STD_LOGIC;
signal arrayA_5_done : STD_LOGIC;

component AESL_automem_A_5 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_6_ce0, arrayA_6_ce1 : STD_LOGIC;
signal arrayA_6_we0, arrayA_6_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_6_address0, arrayA_6_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_6_din0, arrayA_6_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_6_dout0, arrayA_6_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_6_ready : STD_LOGIC;
signal arrayA_6_done : STD_LOGIC;

component AESL_automem_A_6 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_7_ce0, arrayA_7_ce1 : STD_LOGIC;
signal arrayA_7_we0, arrayA_7_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_7_address0, arrayA_7_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_7_din0, arrayA_7_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_7_dout0, arrayA_7_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_7_ready : STD_LOGIC;
signal arrayA_7_done : STD_LOGIC;

component AESL_automem_A_7 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_8_ce0, arrayA_8_ce1 : STD_LOGIC;
signal arrayA_8_we0, arrayA_8_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_8_address0, arrayA_8_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_8_din0, arrayA_8_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_8_dout0, arrayA_8_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_8_ready : STD_LOGIC;
signal arrayA_8_done : STD_LOGIC;

component AESL_automem_A_8 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_9_ce0, arrayA_9_ce1 : STD_LOGIC;
signal arrayA_9_we0, arrayA_9_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_9_address0, arrayA_9_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_9_din0, arrayA_9_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_9_dout0, arrayA_9_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_9_ready : STD_LOGIC;
signal arrayA_9_done : STD_LOGIC;

component AESL_automem_A_9 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_10_ce0, arrayA_10_ce1 : STD_LOGIC;
signal arrayA_10_we0, arrayA_10_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_10_address0, arrayA_10_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_10_din0, arrayA_10_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_10_dout0, arrayA_10_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_10_ready : STD_LOGIC;
signal arrayA_10_done : STD_LOGIC;

component AESL_automem_A_10 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_11_ce0, arrayA_11_ce1 : STD_LOGIC;
signal arrayA_11_we0, arrayA_11_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_11_address0, arrayA_11_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_11_din0, arrayA_11_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_11_dout0, arrayA_11_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_11_ready : STD_LOGIC;
signal arrayA_11_done : STD_LOGIC;

component AESL_automem_A_11 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_12_ce0, arrayA_12_ce1 : STD_LOGIC;
signal arrayA_12_we0, arrayA_12_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_12_address0, arrayA_12_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_12_din0, arrayA_12_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_12_dout0, arrayA_12_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_12_ready : STD_LOGIC;
signal arrayA_12_done : STD_LOGIC;

component AESL_automem_A_12 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_13_ce0, arrayA_13_ce1 : STD_LOGIC;
signal arrayA_13_we0, arrayA_13_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_13_address0, arrayA_13_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_13_din0, arrayA_13_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_13_dout0, arrayA_13_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_13_ready : STD_LOGIC;
signal arrayA_13_done : STD_LOGIC;

component AESL_automem_A_13 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_14_ce0, arrayA_14_ce1 : STD_LOGIC;
signal arrayA_14_we0, arrayA_14_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_14_address0, arrayA_14_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_14_din0, arrayA_14_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_14_dout0, arrayA_14_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_14_ready : STD_LOGIC;
signal arrayA_14_done : STD_LOGIC;

component AESL_automem_A_14 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_15_ce0, arrayA_15_ce1 : STD_LOGIC;
signal arrayA_15_we0, arrayA_15_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_15_address0, arrayA_15_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_15_din0, arrayA_15_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_15_dout0, arrayA_15_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_15_ready : STD_LOGIC;
signal arrayA_15_done : STD_LOGIC;

component AESL_automem_A_15 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_16_ce0, arrayA_16_ce1 : STD_LOGIC;
signal arrayA_16_we0, arrayA_16_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_16_address0, arrayA_16_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_16_din0, arrayA_16_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_16_dout0, arrayA_16_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_16_ready : STD_LOGIC;
signal arrayA_16_done : STD_LOGIC;

component AESL_automem_A_16 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_17_ce0, arrayA_17_ce1 : STD_LOGIC;
signal arrayA_17_we0, arrayA_17_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_17_address0, arrayA_17_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_17_din0, arrayA_17_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_17_dout0, arrayA_17_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_17_ready : STD_LOGIC;
signal arrayA_17_done : STD_LOGIC;

component AESL_automem_A_17 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_18_ce0, arrayA_18_ce1 : STD_LOGIC;
signal arrayA_18_we0, arrayA_18_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_18_address0, arrayA_18_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_18_din0, arrayA_18_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_18_dout0, arrayA_18_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_18_ready : STD_LOGIC;
signal arrayA_18_done : STD_LOGIC;

component AESL_automem_A_18 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_19_ce0, arrayA_19_ce1 : STD_LOGIC;
signal arrayA_19_we0, arrayA_19_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_19_address0, arrayA_19_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_19_din0, arrayA_19_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_19_dout0, arrayA_19_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_19_ready : STD_LOGIC;
signal arrayA_19_done : STD_LOGIC;

component AESL_automem_A_19 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_20_ce0, arrayA_20_ce1 : STD_LOGIC;
signal arrayA_20_we0, arrayA_20_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_20_address0, arrayA_20_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_20_din0, arrayA_20_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_20_dout0, arrayA_20_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_20_ready : STD_LOGIC;
signal arrayA_20_done : STD_LOGIC;

component AESL_automem_A_20 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_21_ce0, arrayA_21_ce1 : STD_LOGIC;
signal arrayA_21_we0, arrayA_21_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_21_address0, arrayA_21_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_21_din0, arrayA_21_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_21_dout0, arrayA_21_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_21_ready : STD_LOGIC;
signal arrayA_21_done : STD_LOGIC;

component AESL_automem_A_21 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_22_ce0, arrayA_22_ce1 : STD_LOGIC;
signal arrayA_22_we0, arrayA_22_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_22_address0, arrayA_22_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_22_din0, arrayA_22_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_22_dout0, arrayA_22_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_22_ready : STD_LOGIC;
signal arrayA_22_done : STD_LOGIC;

component AESL_automem_A_22 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_23_ce0, arrayA_23_ce1 : STD_LOGIC;
signal arrayA_23_we0, arrayA_23_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_23_address0, arrayA_23_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_23_din0, arrayA_23_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_23_dout0, arrayA_23_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_23_ready : STD_LOGIC;
signal arrayA_23_done : STD_LOGIC;

component AESL_automem_A_23 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_24_ce0, arrayA_24_ce1 : STD_LOGIC;
signal arrayA_24_we0, arrayA_24_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_24_address0, arrayA_24_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_24_din0, arrayA_24_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_24_dout0, arrayA_24_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_24_ready : STD_LOGIC;
signal arrayA_24_done : STD_LOGIC;

component AESL_automem_A_24 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_25_ce0, arrayA_25_ce1 : STD_LOGIC;
signal arrayA_25_we0, arrayA_25_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_25_address0, arrayA_25_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_25_din0, arrayA_25_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_25_dout0, arrayA_25_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_25_ready : STD_LOGIC;
signal arrayA_25_done : STD_LOGIC;

component AESL_automem_A_25 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_26_ce0, arrayA_26_ce1 : STD_LOGIC;
signal arrayA_26_we0, arrayA_26_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_26_address0, arrayA_26_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_26_din0, arrayA_26_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_26_dout0, arrayA_26_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_26_ready : STD_LOGIC;
signal arrayA_26_done : STD_LOGIC;

component AESL_automem_A_26 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_27_ce0, arrayA_27_ce1 : STD_LOGIC;
signal arrayA_27_we0, arrayA_27_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_27_address0, arrayA_27_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_27_din0, arrayA_27_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_27_dout0, arrayA_27_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_27_ready : STD_LOGIC;
signal arrayA_27_done : STD_LOGIC;

component AESL_automem_A_27 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_28_ce0, arrayA_28_ce1 : STD_LOGIC;
signal arrayA_28_we0, arrayA_28_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_28_address0, arrayA_28_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_28_din0, arrayA_28_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_28_dout0, arrayA_28_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_28_ready : STD_LOGIC;
signal arrayA_28_done : STD_LOGIC;

component AESL_automem_A_28 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_29_ce0, arrayA_29_ce1 : STD_LOGIC;
signal arrayA_29_we0, arrayA_29_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_29_address0, arrayA_29_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_29_din0, arrayA_29_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_29_dout0, arrayA_29_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_29_ready : STD_LOGIC;
signal arrayA_29_done : STD_LOGIC;

component AESL_automem_A_29 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_30_ce0, arrayA_30_ce1 : STD_LOGIC;
signal arrayA_30_we0, arrayA_30_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_30_address0, arrayA_30_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_30_din0, arrayA_30_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_30_dout0, arrayA_30_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_30_ready : STD_LOGIC;
signal arrayA_30_done : STD_LOGIC;

component AESL_automem_A_30 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayA_31_ce0, arrayA_31_ce1 : STD_LOGIC;
signal arrayA_31_we0, arrayA_31_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayA_31_address0, arrayA_31_address1 : STD_LOGIC_VECTOR(4 downto 0);
signal arrayA_31_din0, arrayA_31_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_31_dout0, arrayA_31_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayA_31_ready : STD_LOGIC;
signal arrayA_31_done : STD_LOGIC;

component AESL_automem_A_31 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_0_ce0, arrayB_0_ce1 : STD_LOGIC;
signal arrayB_0_we0, arrayB_0_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_0_address0, arrayB_0_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_0_din0, arrayB_0_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_0_dout0, arrayB_0_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_0_ready : STD_LOGIC;
signal arrayB_0_done : STD_LOGIC;

component AESL_automem_B_0 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_1_ce0, arrayB_1_ce1 : STD_LOGIC;
signal arrayB_1_we0, arrayB_1_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_1_address0, arrayB_1_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_1_din0, arrayB_1_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_1_dout0, arrayB_1_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_1_ready : STD_LOGIC;
signal arrayB_1_done : STD_LOGIC;

component AESL_automem_B_1 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_2_ce0, arrayB_2_ce1 : STD_LOGIC;
signal arrayB_2_we0, arrayB_2_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_2_address0, arrayB_2_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_2_din0, arrayB_2_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_2_dout0, arrayB_2_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_2_ready : STD_LOGIC;
signal arrayB_2_done : STD_LOGIC;

component AESL_automem_B_2 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_3_ce0, arrayB_3_ce1 : STD_LOGIC;
signal arrayB_3_we0, arrayB_3_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_3_address0, arrayB_3_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_3_din0, arrayB_3_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_3_dout0, arrayB_3_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_3_ready : STD_LOGIC;
signal arrayB_3_done : STD_LOGIC;

component AESL_automem_B_3 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_4_ce0, arrayB_4_ce1 : STD_LOGIC;
signal arrayB_4_we0, arrayB_4_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_4_address0, arrayB_4_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_4_din0, arrayB_4_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_4_dout0, arrayB_4_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_4_ready : STD_LOGIC;
signal arrayB_4_done : STD_LOGIC;

component AESL_automem_B_4 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_5_ce0, arrayB_5_ce1 : STD_LOGIC;
signal arrayB_5_we0, arrayB_5_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_5_address0, arrayB_5_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_5_din0, arrayB_5_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_5_dout0, arrayB_5_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_5_ready : STD_LOGIC;
signal arrayB_5_done : STD_LOGIC;

component AESL_automem_B_5 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_6_ce0, arrayB_6_ce1 : STD_LOGIC;
signal arrayB_6_we0, arrayB_6_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_6_address0, arrayB_6_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_6_din0, arrayB_6_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_6_dout0, arrayB_6_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_6_ready : STD_LOGIC;
signal arrayB_6_done : STD_LOGIC;

component AESL_automem_B_6 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_7_ce0, arrayB_7_ce1 : STD_LOGIC;
signal arrayB_7_we0, arrayB_7_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_7_address0, arrayB_7_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_7_din0, arrayB_7_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_7_dout0, arrayB_7_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_7_ready : STD_LOGIC;
signal arrayB_7_done : STD_LOGIC;

component AESL_automem_B_7 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_8_ce0, arrayB_8_ce1 : STD_LOGIC;
signal arrayB_8_we0, arrayB_8_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_8_address0, arrayB_8_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_8_din0, arrayB_8_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_8_dout0, arrayB_8_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_8_ready : STD_LOGIC;
signal arrayB_8_done : STD_LOGIC;

component AESL_automem_B_8 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_9_ce0, arrayB_9_ce1 : STD_LOGIC;
signal arrayB_9_we0, arrayB_9_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_9_address0, arrayB_9_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_9_din0, arrayB_9_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_9_dout0, arrayB_9_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_9_ready : STD_LOGIC;
signal arrayB_9_done : STD_LOGIC;

component AESL_automem_B_9 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_10_ce0, arrayB_10_ce1 : STD_LOGIC;
signal arrayB_10_we0, arrayB_10_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_10_address0, arrayB_10_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_10_din0, arrayB_10_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_10_dout0, arrayB_10_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_10_ready : STD_LOGIC;
signal arrayB_10_done : STD_LOGIC;

component AESL_automem_B_10 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_11_ce0, arrayB_11_ce1 : STD_LOGIC;
signal arrayB_11_we0, arrayB_11_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_11_address0, arrayB_11_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_11_din0, arrayB_11_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_11_dout0, arrayB_11_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_11_ready : STD_LOGIC;
signal arrayB_11_done : STD_LOGIC;

component AESL_automem_B_11 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_12_ce0, arrayB_12_ce1 : STD_LOGIC;
signal arrayB_12_we0, arrayB_12_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_12_address0, arrayB_12_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_12_din0, arrayB_12_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_12_dout0, arrayB_12_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_12_ready : STD_LOGIC;
signal arrayB_12_done : STD_LOGIC;

component AESL_automem_B_12 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_13_ce0, arrayB_13_ce1 : STD_LOGIC;
signal arrayB_13_we0, arrayB_13_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_13_address0, arrayB_13_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_13_din0, arrayB_13_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_13_dout0, arrayB_13_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_13_ready : STD_LOGIC;
signal arrayB_13_done : STD_LOGIC;

component AESL_automem_B_13 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_14_ce0, arrayB_14_ce1 : STD_LOGIC;
signal arrayB_14_we0, arrayB_14_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_14_address0, arrayB_14_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_14_din0, arrayB_14_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_14_dout0, arrayB_14_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_14_ready : STD_LOGIC;
signal arrayB_14_done : STD_LOGIC;

component AESL_automem_B_14 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_15_ce0, arrayB_15_ce1 : STD_LOGIC;
signal arrayB_15_we0, arrayB_15_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_15_address0, arrayB_15_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_15_din0, arrayB_15_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_15_dout0, arrayB_15_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_15_ready : STD_LOGIC;
signal arrayB_15_done : STD_LOGIC;

component AESL_automem_B_15 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_16_ce0, arrayB_16_ce1 : STD_LOGIC;
signal arrayB_16_we0, arrayB_16_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_16_address0, arrayB_16_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_16_din0, arrayB_16_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_16_dout0, arrayB_16_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_16_ready : STD_LOGIC;
signal arrayB_16_done : STD_LOGIC;

component AESL_automem_B_16 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_17_ce0, arrayB_17_ce1 : STD_LOGIC;
signal arrayB_17_we0, arrayB_17_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_17_address0, arrayB_17_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_17_din0, arrayB_17_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_17_dout0, arrayB_17_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_17_ready : STD_LOGIC;
signal arrayB_17_done : STD_LOGIC;

component AESL_automem_B_17 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_18_ce0, arrayB_18_ce1 : STD_LOGIC;
signal arrayB_18_we0, arrayB_18_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_18_address0, arrayB_18_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_18_din0, arrayB_18_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_18_dout0, arrayB_18_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_18_ready : STD_LOGIC;
signal arrayB_18_done : STD_LOGIC;

component AESL_automem_B_18 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_19_ce0, arrayB_19_ce1 : STD_LOGIC;
signal arrayB_19_we0, arrayB_19_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_19_address0, arrayB_19_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_19_din0, arrayB_19_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_19_dout0, arrayB_19_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_19_ready : STD_LOGIC;
signal arrayB_19_done : STD_LOGIC;

component AESL_automem_B_19 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_20_ce0, arrayB_20_ce1 : STD_LOGIC;
signal arrayB_20_we0, arrayB_20_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_20_address0, arrayB_20_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_20_din0, arrayB_20_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_20_dout0, arrayB_20_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_20_ready : STD_LOGIC;
signal arrayB_20_done : STD_LOGIC;

component AESL_automem_B_20 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_21_ce0, arrayB_21_ce1 : STD_LOGIC;
signal arrayB_21_we0, arrayB_21_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_21_address0, arrayB_21_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_21_din0, arrayB_21_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_21_dout0, arrayB_21_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_21_ready : STD_LOGIC;
signal arrayB_21_done : STD_LOGIC;

component AESL_automem_B_21 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_22_ce0, arrayB_22_ce1 : STD_LOGIC;
signal arrayB_22_we0, arrayB_22_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_22_address0, arrayB_22_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_22_din0, arrayB_22_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_22_dout0, arrayB_22_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_22_ready : STD_LOGIC;
signal arrayB_22_done : STD_LOGIC;

component AESL_automem_B_22 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_23_ce0, arrayB_23_ce1 : STD_LOGIC;
signal arrayB_23_we0, arrayB_23_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_23_address0, arrayB_23_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_23_din0, arrayB_23_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_23_dout0, arrayB_23_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_23_ready : STD_LOGIC;
signal arrayB_23_done : STD_LOGIC;

component AESL_automem_B_23 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_24_ce0, arrayB_24_ce1 : STD_LOGIC;
signal arrayB_24_we0, arrayB_24_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_24_address0, arrayB_24_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_24_din0, arrayB_24_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_24_dout0, arrayB_24_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_24_ready : STD_LOGIC;
signal arrayB_24_done : STD_LOGIC;

component AESL_automem_B_24 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_25_ce0, arrayB_25_ce1 : STD_LOGIC;
signal arrayB_25_we0, arrayB_25_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_25_address0, arrayB_25_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_25_din0, arrayB_25_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_25_dout0, arrayB_25_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_25_ready : STD_LOGIC;
signal arrayB_25_done : STD_LOGIC;

component AESL_automem_B_25 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_26_ce0, arrayB_26_ce1 : STD_LOGIC;
signal arrayB_26_we0, arrayB_26_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_26_address0, arrayB_26_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_26_din0, arrayB_26_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_26_dout0, arrayB_26_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_26_ready : STD_LOGIC;
signal arrayB_26_done : STD_LOGIC;

component AESL_automem_B_26 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_27_ce0, arrayB_27_ce1 : STD_LOGIC;
signal arrayB_27_we0, arrayB_27_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_27_address0, arrayB_27_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_27_din0, arrayB_27_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_27_dout0, arrayB_27_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_27_ready : STD_LOGIC;
signal arrayB_27_done : STD_LOGIC;

component AESL_automem_B_27 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_28_ce0, arrayB_28_ce1 : STD_LOGIC;
signal arrayB_28_we0, arrayB_28_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_28_address0, arrayB_28_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_28_din0, arrayB_28_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_28_dout0, arrayB_28_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_28_ready : STD_LOGIC;
signal arrayB_28_done : STD_LOGIC;

component AESL_automem_B_28 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_29_ce0, arrayB_29_ce1 : STD_LOGIC;
signal arrayB_29_we0, arrayB_29_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_29_address0, arrayB_29_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_29_din0, arrayB_29_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_29_dout0, arrayB_29_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_29_ready : STD_LOGIC;
signal arrayB_29_done : STD_LOGIC;

component AESL_automem_B_29 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_30_ce0, arrayB_30_ce1 : STD_LOGIC;
signal arrayB_30_we0, arrayB_30_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_30_address0, arrayB_30_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_30_din0, arrayB_30_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_30_dout0, arrayB_30_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_30_ready : STD_LOGIC;
signal arrayB_30_done : STD_LOGIC;

component AESL_automem_B_30 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal arrayB_31_ce0, arrayB_31_ce1 : STD_LOGIC;
signal arrayB_31_we0, arrayB_31_we1 : STD_LOGIC_VECTOR(15 downto 0);
signal arrayB_31_address0, arrayB_31_address1 : STD_LOGIC_VECTOR(3 downto 0);
signal arrayB_31_din0, arrayB_31_din1 : STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_31_dout0, arrayB_31_dout1 :  STD_LOGIC_VECTOR(127 downto 0);
signal arrayB_31_ready : STD_LOGIC;
signal arrayB_31_done : STD_LOGIC;

component AESL_automem_B_31 is
  port(
    clk        :  IN  STD_LOGIC;
    rst        :  IN  STD_LOGIC;
    ce0        :  IN  STD_LOGIC;
    we0        :  IN  STD_LOGIC_VECTOR;
    address0   :  IN  STD_LOGIC_VECTOR;
    din0       :  IN  STD_LOGIC_VECTOR;
    dout0      :  OUT STD_LOGIC_VECTOR;
    ce1        :  IN  STD_LOGIC;
    we1        :  IN  STD_LOGIC_VECTOR;
    address1   :  IN  STD_LOGIC_VECTOR;
    din1       :  IN  STD_LOGIC_VECTOR;
    dout1      :  OUT STD_LOGIC_VECTOR;
    ready	     :  IN  STD_LOGIC;
    done	     :  IN  STD_LOGIC
  );
end component;

signal feature_vector_ready :   STD_LOGIC := '0';
signal feature_vector_done  :   STD_LOGIC := '0';
signal axi_s_feature_vector_TVALID :   STD_LOGIC := '0';
signal axi_s_feature_vector_TREADY :   STD_LOGIC := '0';
signal reg_feature_vector_TVALID :   STD_LOGIC := '0';
signal reg_feature_vector_TREADY :   STD_LOGIC := '0';
signal ap_c_n_tvin_trans_num_feature_vector_V_data_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_keep_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_strb_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_user_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_last_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_id_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal ap_c_n_tvin_trans_num_feature_vector_V_dest_V : STD_LOGIC_VECTOR(31 DOWNTO 0) := conv_std_logic_vector(1, 32);
signal   feature_vector_ready_reg :   STD_LOGIC := '0';

component AESL_axi_s_feature_vector is
  port(
    clk          :    IN  STD_LOGIC;
    reset        :    IN  STD_LOGIC;
    TRAN_feature_vector_TDATA : OUT STD_LOGIC_VECTOR;
    feature_vector_TDATA_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TKEEP : OUT STD_LOGIC_VECTOR;
    feature_vector_TKEEP_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TSTRB : OUT STD_LOGIC_VECTOR;
    feature_vector_TSTRB_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TUSER : OUT STD_LOGIC_VECTOR;
    feature_vector_TUSER_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TLAST : OUT STD_LOGIC_VECTOR;
    feature_vector_TLAST_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TID : OUT STD_LOGIC_VECTOR;
    feature_vector_TID_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TDEST : OUT STD_LOGIC_VECTOR;
    feature_vector_TDEST_trans_num : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    TRAN_feature_vector_TVALID : OUT STD_LOGIC;
    TRAN_feature_vector_TREADY : IN STD_LOGIC;
    ready        :    IN  STD_LOGIC;
    done         :    IN  STD_LOGIC
  );
end component;

    signal AESL_slave_output_done : STD_LOGIC;
    signal AESL_slave_start : STD_LOGIC;
    signal AESL_slave_start_lock : STD_LOGIC := '0';
    signal AESL_slave_write_start_in : STD_LOGIC;
    signal AESL_slave_write_start_finish : STD_LOGIC;
    signal AESL_slave_ready : STD_LOGIC;
    signal AESL_slave_done : STD_LOGIC;
    signal slave_start_status : STD_LOGIC := '0';
    signal start_rise : STD_LOGIC := '0';
    signal ready_rise : STD_LOGIC := '0';
    signal slave_done_status : STD_LOGIC := '0';
    signal ap_done_lock : STD_LOGIC := '0';
component AESL_AXI_SLAVE_CTRL_BUS is
  port(
    clk   :   IN STD_LOGIC;
    reset :   IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_AWADDR : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_AWVALID : OUT STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_AWREADY : IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_WVALID : OUT STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_WREADY : IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_WDATA : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_WSTRB : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_ARADDR : OUT STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_ARVALID : OUT STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_ARREADY : IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_RVALID : IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_RREADY : OUT STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_RDATA : IN STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_RRESP : IN STD_LOGIC_VECTOR;
    TRAN_s_axi_CTRL_BUS_BVALID : IN STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_BREADY : OUT STD_LOGIC;
    TRAN_s_axi_CTRL_BUS_BRESP : IN STD_LOGIC_VECTOR;
    TRAN_CTRL_BUS_interrupt   : IN STD_LOGIC;
    TRAN_CTRL_BUS_ready_out : OUT STD_LOGIC;
    TRAN_CTRL_BUS_ready_in  : IN STD_LOGIC;
    TRAN_CTRL_BUS_done_out  : OUT STD_LOGIC;
    TRAN_CTRL_BUS_idle_out  : OUT STD_LOGIC;
    TRAN_CTRL_BUS_write_start_in     : IN  STD_LOGIC;
    TRAN_CTRL_BUS_write_start_finish : OUT STD_LOGIC;
    TRAN_CTRL_BUS_transaction_done_in    : IN STD_LOGIC;
    TRAN_CTRL_BUS_start_in    : IN STD_LOGIC
);
end component;

      procedure esl_read_token (file textfile: TEXT; textline: inout LINE; token: out STRING; token_len: out INTEGER) is
          variable whitespace : CHARACTER;
          variable i : INTEGER;
          variable ok: BOOLEAN;
          variable buff: STRING(1 to token'length);
      begin
          ok := false;
          i := 1;
          loop_main: while not endfile(textfile) loop
              if textline = null or textline'length = 0 then
                  readline(textfile, textline);
              end if;
              loop_remove_whitespace: while textline'length > 0 loop
                  if textline(textline'left) = ' ' or
                      textline(textline'left) = HT or
                      textline(textline'left) = CR or
                      textline(textline'left) = LF then
                      read(textline, whitespace);
                  else
                      exit loop_remove_whitespace;
                  end if;
              end loop;
              loop_aesl_read_token: while textline'length > 0 and i <= buff'length loop
                  if textline(textline'left) = ' ' or
                     textline(textline'left) = HT or
                     textline(textline'left) = CR or
                     textline(textline'left) = LF then
                      exit loop_aesl_read_token;
                  else
                      read(textline, buff(i));
                      i := i + 1;
                  end if;
                  ok := true;
              end loop;
              if ok = true then
                  exit loop_main;
              end if;
          end loop;
          buff(i) := ' ';
          token := buff;
          token_len:= i-1;
      end procedure esl_read_token;

      procedure esl_read_token (file textfile: TEXT;
                                textline: inout LINE;
                                token: out STRING) is
          variable i : INTEGER;
      begin
          esl_read_token (textfile, textline, token, i);
      end procedure esl_read_token;

      function esl_str2lv_hex (RHS : STRING; data_width : INTEGER) return STD_LOGIC_VECTOR is
          variable	ret	:   STD_LOGIC_VECTOR(data_width - 1 downto 0);
          variable	idx	:   integer := 3;
      begin
          ret := (others => '0');
          if(RHS(1) /= '0' and (RHS(2) /= 'x' or RHS(2) /= 'X')) then
     	        report "Error! The format of hex number is not initialed by 0x";
          end if;
          while true loop
              if (data_width > 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := ret(data_width - 5 downto 0) & "0000";
     	                when '1'    =>  ret := ret(data_width - 5 downto 0) & "0001";
                      when '2'    =>  ret := ret(data_width - 5 downto 0) & "0010";
                      when '3'    =>  ret := ret(data_width - 5 downto 0) & "0011";
                      when '4'    =>  ret := ret(data_width - 5 downto 0) & "0100";
                      when '5'    =>  ret := ret(data_width - 5 downto 0) & "0101";
                      when '6'    =>  ret := ret(data_width - 5 downto 0) & "0110";
                      when '7'    =>  ret := ret(data_width - 5 downto 0) & "0111";
                      when '8'    =>  ret := ret(data_width - 5 downto 0) & "1000";
                      when '9'    =>  ret := ret(data_width - 5 downto 0) & "1001";
                      when 'a' | 'A'  =>  ret := ret(data_width - 5 downto 0) & "1010";
                      when 'b' | 'B'  =>  ret := ret(data_width - 5 downto 0) & "1011";
                      when 'c' | 'C'  =>  ret := ret(data_width - 5 downto 0) & "1100";
                      when 'd' | 'D'  =>  ret := ret(data_width - 5 downto 0) & "1101";
                      when 'e' | 'E'  =>  ret := ret(data_width - 5 downto 0) & "1110";
                      when 'f' | 'F'  =>  ret := ret(data_width - 5 downto 0) & "1111";
                      when 'x' | 'X'  =>  ret := ret(data_width - 5 downto 0) & "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 4) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0000";
     	                when '1'    =>  ret := "0001";
                      when '2'    =>  ret := "0010";
                      when '3'    =>  ret := "0011";
                      when '4'    =>  ret := "0100";
                      when '5'    =>  ret := "0101";
                      when '6'    =>  ret := "0110";
                      when '7'    =>  ret := "0111";
                      when '8'    =>  ret := "1000";
                      when '9'    =>  ret := "1001";
                      when 'a' | 'A'  =>  ret := "1010";
                      when 'b' | 'B'  =>  ret := "1011";
                      when 'c' | 'C'  =>  ret := "1100";
                      when 'd' | 'D'  =>  ret := "1101";
                      when 'e' | 'E'  =>  ret := "1110";
                      when 'f' | 'F'  =>  ret := "1111";
                      when 'x' | 'X'  =>  ret := "XXXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 3) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "000";
     	                when '1'    =>  ret := "001";
                      when '2'    =>  ret := "010";
                      when '3'    =>  ret := "011";
                      when '4'    =>  ret := "100";
                      when '5'    =>  ret := "101";
                      when '6'    =>  ret := "110";
                      when '7'    =>  ret := "111";
                      when 'x' | 'X'  =>  ret := "XXX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 2) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "00";
     	                when '1'    =>  ret := "01";
                      when '2'    =>  ret := "10";
                      when '3'    =>  ret := "11";
                      when 'x' | 'X'  =>  ret := "XX";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              elsif (data_width = 1) then
                  case RHS(idx)  is
                      when '0'    =>  ret := "0";
     	                when '1'    =>  ret := "1";
                      when 'x' | 'X'  =>  ret := "X";
                      when ' '    =>  return ret;
                      when others    =>  report "Wrong hex char " & RHS(idx);	return ret;
                  end case;
              else
                  report string'("Wrong data_width.");
                  return ret;
              end if;
              idx := idx + 1;
          end loop;
          return ret;
      end function;

    function esl_str_dec2int (RHS : STRING) return INTEGER is
        variable	ret	:   integer;
        variable	idx	:   integer := 1;
    begin
        ret := 0;
        while true loop
            case RHS(idx)  is
                when '0'    =>  ret := ret * 10 + 0;
                when '1'    =>  ret := ret * 10 + 1;
                when '2'    =>  ret := ret * 10 + 2;
                when '3'    =>  ret := ret * 10 + 3;
                when '4'    =>  ret := ret * 10 + 4;
                when '5'    =>  ret := ret * 10 + 5;
                when '6'    =>  ret := ret * 10 + 6;
                when '7'    =>  ret := ret * 10 + 7;
                when '8'    =>  ret := ret * 10 + 8;
                when '9'    =>  ret := ret * 10 + 9;
                when ' '    =>  return ret;
                when others    =>  report "Wrong dec char " & RHS(idx);	return ret;
            end case;
            idx := idx + 1;
        end loop;
        return ret;
    end esl_str_dec2int;
      function esl_conv_string_hex (lv : STD_LOGIC_VECTOR) return STRING is
          constant str_len : integer := (lv'length + 3)/4;
          variable ret : STRING (1 to str_len);
          variable i, tmp: INTEGER;
          variable normal_lv : STD_LOGIC_VECTOR(lv'length - 1 downto 0);
          variable tmp_lv : STD_LOGIC_VECTOR(3 downto 0);
      begin
          normal_lv := lv;
          for i in 1 to str_len loop
              if(i = 1) then
                  if((lv'length mod 4) = 3) then
                      tmp_lv(2 downto 0) := normal_lv(lv'length - 1 downto lv'length - 3);
                      case tmp_lv(2 downto 0) is
                          when "000" => ret(i) := '0';
                          when "001" => ret(i) := '1';
                          when "010" => ret(i) := '2';
                          when "011" => ret(i) := '3';
                          when "100" => ret(i) := '4';
                          when "101" => ret(i) := '5';
                          when "110" => ret(i) := '6';
                          when "111" => ret(i) := '7';
                          when others  => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 2) then
                      tmp_lv(1 downto 0) := normal_lv(lv'length - 1 downto lv'length - 2);
                      case tmp_lv(1 downto 0) is
                          when "00" => ret(i) := '0';
                          when "01" => ret(i) := '1';
                          when "10" => ret(i) := '2';
                          when "11" => ret(i) := '3';
                          when others => ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 1) then
                      tmp_lv(0 downto 0) := normal_lv(lv'length - 1 downto lv'length - 1);
                      case tmp_lv(0 downto 0) is
                          when "0" => ret(i) := '0';
                          when "1" => ret(i) := '1';
                          when others=> ret(i) := 'X';
                      end case;
                  elsif((lv'length mod 4) = 0) then
                      tmp_lv(3 downto 0) := normal_lv(lv'length - 1 downto lv'length - 4);
                      case tmp_lv(3 downto 0) is
                          when "0000" => ret(i) := '0';
                          when "0001" => ret(i) := '1';
                          when "0010" => ret(i) := '2';
                          when "0011" => ret(i) := '3';
                          when "0100" => ret(i) := '4';
                          when "0101" => ret(i) := '5';
                          when "0110" => ret(i) := '6';
                          when "0111" => ret(i) := '7';
                          when "1000" => ret(i) := '8';
                          when "1001" => ret(i) := '9';
                          when "1010" => ret(i) := 'a';
                          when "1011" => ret(i) := 'b';
                          when "1100" => ret(i) := 'c';
                          when "1101" => ret(i) := 'd';
                          when "1110" => ret(i) := 'e';
                          when "1111" => ret(i) := 'f';
                          when others   => ret(i) := 'X';
                      end case;
                  end if;
              else
                  tmp_lv(3 downto 0) := normal_lv((str_len - i) * 4 + 3 downto (str_len - i) * 4);
                  case tmp_lv(3 downto 0) is
                      when "0000" => ret(i) := '0';
                      when "0001" => ret(i) := '1';
                      when "0010" => ret(i) := '2';
                      when "0011" => ret(i) := '3';
                      when "0100" => ret(i) := '4';
                      when "0101" => ret(i) := '5';
                      when "0110" => ret(i) := '6';
                      when "0111" => ret(i) := '7';
                      when "1000" => ret(i) := '8';
                      when "1001" => ret(i) := '9';
                      when "1010" => ret(i) := 'a';
                      when "1011" => ret(i) := 'b';
                      when "1100" => ret(i) := 'c';
                      when "1101" => ret(i) := 'd';
                      when "1110" => ret(i) := 'e';
                      when "1111" => ret(i) := 'f';
                      when others   => ret(i) := 'X';
                  end case;
              end if;
          end loop;
          return ret;
      end function;

  -- purpose: initialise the random state variable based on an integer seed
  function init_rand(seed : integer) return T_RANDINT is
    variable result : T_RANDINT;
  begin
    -- If the seed is smaller than the minimum value of the random state variable, use the minimum value
    if seed < T_RANDINT'low then
      result := T_RANDINT'low;
      -- If the seed is larger than the maximum value of the random state variable, use the maximum value
    elsif seed > T_RANDINT'high then
      result := T_RANDINT'high;
      -- If the seed is within the range of the random state variable, just use the seed
    else
      result := seed;
    end if;
    -- Return the result
    return result;
  end init_rand;


  -- purpose: generate a random integer between min and max limits
  procedure rand_int(variable rand   : inout T_RANDINT;
                     constant minval : in    integer;
                     constant maxval : in    integer;
                     variable result : out   integer
                     ) is

    variable k, q      : integer;
    variable real_rand : real;
    variable res       : integer;

  begin
    -- Create a new random integer in the range 1 to 2**31-1 and put it back into rand VARIABLE
    -- Based on an example from Numerical Recipes in C, 2nd Edition, page 279
    k   := rand/127773;
    q   := 16807*(rand-k*127773)-2836*k;
    if q < 0 then
      q := q + 2147483647;
    end if;
    rand := init_rand(q);

    -- Convert this integer to a real number in the range 0 to 1
    real_rand := (real(rand - T_RANDINT'low)) / real(T_RANDINT'high - T_RANDINT'low);
    -- Convert this real number to an integer in the range minval to maxval
    -- The +1 and -0.5 are to get equal probability of minval and maxval as other values
    res    := integer((real_rand * real(maxval+1-minval)) - 0.5) + minval;
    -- VHDL real to integer conversion doesn't define what happens for x.5 so deal with this
    if res < minval then
      res  := minval;
    elsif res > maxval then
      res  := maxval;
    end if;
    -- assign output
    result := res;

  end rand_int;

begin
AESL_inst_matrix_matrix_mult_streaming    :   matrix_matrix_mult_streaming port map (
   s_axi_CTRL_BUS_AWADDR  =>  CTRL_BUS_AWADDR,
   s_axi_CTRL_BUS_AWVALID  =>  CTRL_BUS_AWVALID,
   s_axi_CTRL_BUS_AWREADY  =>  CTRL_BUS_AWREADY,
   s_axi_CTRL_BUS_WVALID  =>  CTRL_BUS_WVALID,
   s_axi_CTRL_BUS_WREADY  =>  CTRL_BUS_WREADY,
   s_axi_CTRL_BUS_WDATA  =>  CTRL_BUS_WDATA,
   s_axi_CTRL_BUS_WSTRB  =>  CTRL_BUS_WSTRB,
   s_axi_CTRL_BUS_ARADDR  =>  CTRL_BUS_ARADDR,
   s_axi_CTRL_BUS_ARVALID  =>  CTRL_BUS_ARVALID,
   s_axi_CTRL_BUS_ARREADY  =>  CTRL_BUS_ARREADY,
   s_axi_CTRL_BUS_RVALID  =>  CTRL_BUS_RVALID,
   s_axi_CTRL_BUS_RREADY  =>  CTRL_BUS_RREADY,
   s_axi_CTRL_BUS_RDATA  =>  CTRL_BUS_RDATA,
   s_axi_CTRL_BUS_RRESP  =>  CTRL_BUS_RRESP,
   s_axi_CTRL_BUS_BVALID  =>  CTRL_BUS_BVALID,
   s_axi_CTRL_BUS_BREADY  =>  CTRL_BUS_BREADY,
   s_axi_CTRL_BUS_BRESP  =>  CTRL_BUS_BRESP,
   interrupt  =>  CTRL_BUS_INTERRUPT,
   ap_clk  =>  ap_clk,
   ap_rst_n  =>  ap_rst_n,
   A_0_address0  =>  A_0_address0,
   A_0_ce0  =>  A_0_ce0,
   A_0_d0  =>  A_0_d0,
   A_0_q0  =>  A_0_q0,
   A_0_we0  =>  A_0_we0,
   A_0_address1  =>  A_0_address1,
   A_0_ce1  =>  A_0_ce1,
   A_0_d1  =>  A_0_d1,
   A_0_q1  =>  A_0_q1,
   A_0_we1  =>  A_0_we1,
   A_1_address0  =>  A_1_address0,
   A_1_ce0  =>  A_1_ce0,
   A_1_d0  =>  A_1_d0,
   A_1_q0  =>  A_1_q0,
   A_1_we0  =>  A_1_we0,
   A_1_address1  =>  A_1_address1,
   A_1_ce1  =>  A_1_ce1,
   A_1_d1  =>  A_1_d1,
   A_1_q1  =>  A_1_q1,
   A_1_we1  =>  A_1_we1,
   A_2_address0  =>  A_2_address0,
   A_2_ce0  =>  A_2_ce0,
   A_2_d0  =>  A_2_d0,
   A_2_q0  =>  A_2_q0,
   A_2_we0  =>  A_2_we0,
   A_2_address1  =>  A_2_address1,
   A_2_ce1  =>  A_2_ce1,
   A_2_d1  =>  A_2_d1,
   A_2_q1  =>  A_2_q1,
   A_2_we1  =>  A_2_we1,
   A_3_address0  =>  A_3_address0,
   A_3_ce0  =>  A_3_ce0,
   A_3_d0  =>  A_3_d0,
   A_3_q0  =>  A_3_q0,
   A_3_we0  =>  A_3_we0,
   A_3_address1  =>  A_3_address1,
   A_3_ce1  =>  A_3_ce1,
   A_3_d1  =>  A_3_d1,
   A_3_q1  =>  A_3_q1,
   A_3_we1  =>  A_3_we1,
   A_4_address0  =>  A_4_address0,
   A_4_ce0  =>  A_4_ce0,
   A_4_d0  =>  A_4_d0,
   A_4_q0  =>  A_4_q0,
   A_4_we0  =>  A_4_we0,
   A_4_address1  =>  A_4_address1,
   A_4_ce1  =>  A_4_ce1,
   A_4_d1  =>  A_4_d1,
   A_4_q1  =>  A_4_q1,
   A_4_we1  =>  A_4_we1,
   A_5_address0  =>  A_5_address0,
   A_5_ce0  =>  A_5_ce0,
   A_5_d0  =>  A_5_d0,
   A_5_q0  =>  A_5_q0,
   A_5_we0  =>  A_5_we0,
   A_5_address1  =>  A_5_address1,
   A_5_ce1  =>  A_5_ce1,
   A_5_d1  =>  A_5_d1,
   A_5_q1  =>  A_5_q1,
   A_5_we1  =>  A_5_we1,
   A_6_address0  =>  A_6_address0,
   A_6_ce0  =>  A_6_ce0,
   A_6_d0  =>  A_6_d0,
   A_6_q0  =>  A_6_q0,
   A_6_we0  =>  A_6_we0,
   A_6_address1  =>  A_6_address1,
   A_6_ce1  =>  A_6_ce1,
   A_6_d1  =>  A_6_d1,
   A_6_q1  =>  A_6_q1,
   A_6_we1  =>  A_6_we1,
   A_7_address0  =>  A_7_address0,
   A_7_ce0  =>  A_7_ce0,
   A_7_d0  =>  A_7_d0,
   A_7_q0  =>  A_7_q0,
   A_7_we0  =>  A_7_we0,
   A_7_address1  =>  A_7_address1,
   A_7_ce1  =>  A_7_ce1,
   A_7_d1  =>  A_7_d1,
   A_7_q1  =>  A_7_q1,
   A_7_we1  =>  A_7_we1,
   A_8_address0  =>  A_8_address0,
   A_8_ce0  =>  A_8_ce0,
   A_8_d0  =>  A_8_d0,
   A_8_q0  =>  A_8_q0,
   A_8_we0  =>  A_8_we0,
   A_8_address1  =>  A_8_address1,
   A_8_ce1  =>  A_8_ce1,
   A_8_d1  =>  A_8_d1,
   A_8_q1  =>  A_8_q1,
   A_8_we1  =>  A_8_we1,
   A_9_address0  =>  A_9_address0,
   A_9_ce0  =>  A_9_ce0,
   A_9_d0  =>  A_9_d0,
   A_9_q0  =>  A_9_q0,
   A_9_we0  =>  A_9_we0,
   A_9_address1  =>  A_9_address1,
   A_9_ce1  =>  A_9_ce1,
   A_9_d1  =>  A_9_d1,
   A_9_q1  =>  A_9_q1,
   A_9_we1  =>  A_9_we1,
   A_10_address0  =>  A_10_address0,
   A_10_ce0  =>  A_10_ce0,
   A_10_d0  =>  A_10_d0,
   A_10_q0  =>  A_10_q0,
   A_10_we0  =>  A_10_we0,
   A_10_address1  =>  A_10_address1,
   A_10_ce1  =>  A_10_ce1,
   A_10_d1  =>  A_10_d1,
   A_10_q1  =>  A_10_q1,
   A_10_we1  =>  A_10_we1,
   A_11_address0  =>  A_11_address0,
   A_11_ce0  =>  A_11_ce0,
   A_11_d0  =>  A_11_d0,
   A_11_q0  =>  A_11_q0,
   A_11_we0  =>  A_11_we0,
   A_11_address1  =>  A_11_address1,
   A_11_ce1  =>  A_11_ce1,
   A_11_d1  =>  A_11_d1,
   A_11_q1  =>  A_11_q1,
   A_11_we1  =>  A_11_we1,
   A_12_address0  =>  A_12_address0,
   A_12_ce0  =>  A_12_ce0,
   A_12_d0  =>  A_12_d0,
   A_12_q0  =>  A_12_q0,
   A_12_we0  =>  A_12_we0,
   A_12_address1  =>  A_12_address1,
   A_12_ce1  =>  A_12_ce1,
   A_12_d1  =>  A_12_d1,
   A_12_q1  =>  A_12_q1,
   A_12_we1  =>  A_12_we1,
   A_13_address0  =>  A_13_address0,
   A_13_ce0  =>  A_13_ce0,
   A_13_d0  =>  A_13_d0,
   A_13_q0  =>  A_13_q0,
   A_13_we0  =>  A_13_we0,
   A_13_address1  =>  A_13_address1,
   A_13_ce1  =>  A_13_ce1,
   A_13_d1  =>  A_13_d1,
   A_13_q1  =>  A_13_q1,
   A_13_we1  =>  A_13_we1,
   A_14_address0  =>  A_14_address0,
   A_14_ce0  =>  A_14_ce0,
   A_14_d0  =>  A_14_d0,
   A_14_q0  =>  A_14_q0,
   A_14_we0  =>  A_14_we0,
   A_14_address1  =>  A_14_address1,
   A_14_ce1  =>  A_14_ce1,
   A_14_d1  =>  A_14_d1,
   A_14_q1  =>  A_14_q1,
   A_14_we1  =>  A_14_we1,
   A_15_address0  =>  A_15_address0,
   A_15_ce0  =>  A_15_ce0,
   A_15_d0  =>  A_15_d0,
   A_15_q0  =>  A_15_q0,
   A_15_we0  =>  A_15_we0,
   A_15_address1  =>  A_15_address1,
   A_15_ce1  =>  A_15_ce1,
   A_15_d1  =>  A_15_d1,
   A_15_q1  =>  A_15_q1,
   A_15_we1  =>  A_15_we1,
   A_16_address0  =>  A_16_address0,
   A_16_ce0  =>  A_16_ce0,
   A_16_d0  =>  A_16_d0,
   A_16_q0  =>  A_16_q0,
   A_16_we0  =>  A_16_we0,
   A_16_address1  =>  A_16_address1,
   A_16_ce1  =>  A_16_ce1,
   A_16_d1  =>  A_16_d1,
   A_16_q1  =>  A_16_q1,
   A_16_we1  =>  A_16_we1,
   A_17_address0  =>  A_17_address0,
   A_17_ce0  =>  A_17_ce0,
   A_17_d0  =>  A_17_d0,
   A_17_q0  =>  A_17_q0,
   A_17_we0  =>  A_17_we0,
   A_17_address1  =>  A_17_address1,
   A_17_ce1  =>  A_17_ce1,
   A_17_d1  =>  A_17_d1,
   A_17_q1  =>  A_17_q1,
   A_17_we1  =>  A_17_we1,
   A_18_address0  =>  A_18_address0,
   A_18_ce0  =>  A_18_ce0,
   A_18_d0  =>  A_18_d0,
   A_18_q0  =>  A_18_q0,
   A_18_we0  =>  A_18_we0,
   A_18_address1  =>  A_18_address1,
   A_18_ce1  =>  A_18_ce1,
   A_18_d1  =>  A_18_d1,
   A_18_q1  =>  A_18_q1,
   A_18_we1  =>  A_18_we1,
   A_19_address0  =>  A_19_address0,
   A_19_ce0  =>  A_19_ce0,
   A_19_d0  =>  A_19_d0,
   A_19_q0  =>  A_19_q0,
   A_19_we0  =>  A_19_we0,
   A_19_address1  =>  A_19_address1,
   A_19_ce1  =>  A_19_ce1,
   A_19_d1  =>  A_19_d1,
   A_19_q1  =>  A_19_q1,
   A_19_we1  =>  A_19_we1,
   A_20_address0  =>  A_20_address0,
   A_20_ce0  =>  A_20_ce0,
   A_20_d0  =>  A_20_d0,
   A_20_q0  =>  A_20_q0,
   A_20_we0  =>  A_20_we0,
   A_20_address1  =>  A_20_address1,
   A_20_ce1  =>  A_20_ce1,
   A_20_d1  =>  A_20_d1,
   A_20_q1  =>  A_20_q1,
   A_20_we1  =>  A_20_we1,
   A_21_address0  =>  A_21_address0,
   A_21_ce0  =>  A_21_ce0,
   A_21_d0  =>  A_21_d0,
   A_21_q0  =>  A_21_q0,
   A_21_we0  =>  A_21_we0,
   A_21_address1  =>  A_21_address1,
   A_21_ce1  =>  A_21_ce1,
   A_21_d1  =>  A_21_d1,
   A_21_q1  =>  A_21_q1,
   A_21_we1  =>  A_21_we1,
   A_22_address0  =>  A_22_address0,
   A_22_ce0  =>  A_22_ce0,
   A_22_d0  =>  A_22_d0,
   A_22_q0  =>  A_22_q0,
   A_22_we0  =>  A_22_we0,
   A_22_address1  =>  A_22_address1,
   A_22_ce1  =>  A_22_ce1,
   A_22_d1  =>  A_22_d1,
   A_22_q1  =>  A_22_q1,
   A_22_we1  =>  A_22_we1,
   A_23_address0  =>  A_23_address0,
   A_23_ce0  =>  A_23_ce0,
   A_23_d0  =>  A_23_d0,
   A_23_q0  =>  A_23_q0,
   A_23_we0  =>  A_23_we0,
   A_23_address1  =>  A_23_address1,
   A_23_ce1  =>  A_23_ce1,
   A_23_d1  =>  A_23_d1,
   A_23_q1  =>  A_23_q1,
   A_23_we1  =>  A_23_we1,
   A_24_address0  =>  A_24_address0,
   A_24_ce0  =>  A_24_ce0,
   A_24_d0  =>  A_24_d0,
   A_24_q0  =>  A_24_q0,
   A_24_we0  =>  A_24_we0,
   A_24_address1  =>  A_24_address1,
   A_24_ce1  =>  A_24_ce1,
   A_24_d1  =>  A_24_d1,
   A_24_q1  =>  A_24_q1,
   A_24_we1  =>  A_24_we1,
   A_25_address0  =>  A_25_address0,
   A_25_ce0  =>  A_25_ce0,
   A_25_d0  =>  A_25_d0,
   A_25_q0  =>  A_25_q0,
   A_25_we0  =>  A_25_we0,
   A_25_address1  =>  A_25_address1,
   A_25_ce1  =>  A_25_ce1,
   A_25_d1  =>  A_25_d1,
   A_25_q1  =>  A_25_q1,
   A_25_we1  =>  A_25_we1,
   A_26_address0  =>  A_26_address0,
   A_26_ce0  =>  A_26_ce0,
   A_26_d0  =>  A_26_d0,
   A_26_q0  =>  A_26_q0,
   A_26_we0  =>  A_26_we0,
   A_26_address1  =>  A_26_address1,
   A_26_ce1  =>  A_26_ce1,
   A_26_d1  =>  A_26_d1,
   A_26_q1  =>  A_26_q1,
   A_26_we1  =>  A_26_we1,
   A_27_address0  =>  A_27_address0,
   A_27_ce0  =>  A_27_ce0,
   A_27_d0  =>  A_27_d0,
   A_27_q0  =>  A_27_q0,
   A_27_we0  =>  A_27_we0,
   A_27_address1  =>  A_27_address1,
   A_27_ce1  =>  A_27_ce1,
   A_27_d1  =>  A_27_d1,
   A_27_q1  =>  A_27_q1,
   A_27_we1  =>  A_27_we1,
   A_28_address0  =>  A_28_address0,
   A_28_ce0  =>  A_28_ce0,
   A_28_d0  =>  A_28_d0,
   A_28_q0  =>  A_28_q0,
   A_28_we0  =>  A_28_we0,
   A_28_address1  =>  A_28_address1,
   A_28_ce1  =>  A_28_ce1,
   A_28_d1  =>  A_28_d1,
   A_28_q1  =>  A_28_q1,
   A_28_we1  =>  A_28_we1,
   A_29_address0  =>  A_29_address0,
   A_29_ce0  =>  A_29_ce0,
   A_29_d0  =>  A_29_d0,
   A_29_q0  =>  A_29_q0,
   A_29_we0  =>  A_29_we0,
   A_29_address1  =>  A_29_address1,
   A_29_ce1  =>  A_29_ce1,
   A_29_d1  =>  A_29_d1,
   A_29_q1  =>  A_29_q1,
   A_29_we1  =>  A_29_we1,
   A_30_address0  =>  A_30_address0,
   A_30_ce0  =>  A_30_ce0,
   A_30_d0  =>  A_30_d0,
   A_30_q0  =>  A_30_q0,
   A_30_we0  =>  A_30_we0,
   A_30_address1  =>  A_30_address1,
   A_30_ce1  =>  A_30_ce1,
   A_30_d1  =>  A_30_d1,
   A_30_q1  =>  A_30_q1,
   A_30_we1  =>  A_30_we1,
   A_31_address0  =>  A_31_address0,
   A_31_ce0  =>  A_31_ce0,
   A_31_d0  =>  A_31_d0,
   A_31_q0  =>  A_31_q0,
   A_31_we0  =>  A_31_we0,
   A_31_address1  =>  A_31_address1,
   A_31_ce1  =>  A_31_ce1,
   A_31_d1  =>  A_31_d1,
   A_31_q1  =>  A_31_q1,
   A_31_we1  =>  A_31_we1,
   B_0_address0  =>  B_0_address0,
   B_0_ce0  =>  B_0_ce0,
   B_0_d0  =>  B_0_d0,
   B_0_q0  =>  B_0_q0,
   B_0_we0  =>  B_0_we0,
   B_0_address1  =>  B_0_address1,
   B_0_ce1  =>  B_0_ce1,
   B_0_d1  =>  B_0_d1,
   B_0_q1  =>  B_0_q1,
   B_0_we1  =>  B_0_we1,
   B_1_address0  =>  B_1_address0,
   B_1_ce0  =>  B_1_ce0,
   B_1_d0  =>  B_1_d0,
   B_1_q0  =>  B_1_q0,
   B_1_we0  =>  B_1_we0,
   B_1_address1  =>  B_1_address1,
   B_1_ce1  =>  B_1_ce1,
   B_1_d1  =>  B_1_d1,
   B_1_q1  =>  B_1_q1,
   B_1_we1  =>  B_1_we1,
   B_2_address0  =>  B_2_address0,
   B_2_ce0  =>  B_2_ce0,
   B_2_d0  =>  B_2_d0,
   B_2_q0  =>  B_2_q0,
   B_2_we0  =>  B_2_we0,
   B_2_address1  =>  B_2_address1,
   B_2_ce1  =>  B_2_ce1,
   B_2_d1  =>  B_2_d1,
   B_2_q1  =>  B_2_q1,
   B_2_we1  =>  B_2_we1,
   B_3_address0  =>  B_3_address0,
   B_3_ce0  =>  B_3_ce0,
   B_3_d0  =>  B_3_d0,
   B_3_q0  =>  B_3_q0,
   B_3_we0  =>  B_3_we0,
   B_3_address1  =>  B_3_address1,
   B_3_ce1  =>  B_3_ce1,
   B_3_d1  =>  B_3_d1,
   B_3_q1  =>  B_3_q1,
   B_3_we1  =>  B_3_we1,
   B_4_address0  =>  B_4_address0,
   B_4_ce0  =>  B_4_ce0,
   B_4_d0  =>  B_4_d0,
   B_4_q0  =>  B_4_q0,
   B_4_we0  =>  B_4_we0,
   B_4_address1  =>  B_4_address1,
   B_4_ce1  =>  B_4_ce1,
   B_4_d1  =>  B_4_d1,
   B_4_q1  =>  B_4_q1,
   B_4_we1  =>  B_4_we1,
   B_5_address0  =>  B_5_address0,
   B_5_ce0  =>  B_5_ce0,
   B_5_d0  =>  B_5_d0,
   B_5_q0  =>  B_5_q0,
   B_5_we0  =>  B_5_we0,
   B_5_address1  =>  B_5_address1,
   B_5_ce1  =>  B_5_ce1,
   B_5_d1  =>  B_5_d1,
   B_5_q1  =>  B_5_q1,
   B_5_we1  =>  B_5_we1,
   B_6_address0  =>  B_6_address0,
   B_6_ce0  =>  B_6_ce0,
   B_6_d0  =>  B_6_d0,
   B_6_q0  =>  B_6_q0,
   B_6_we0  =>  B_6_we0,
   B_6_address1  =>  B_6_address1,
   B_6_ce1  =>  B_6_ce1,
   B_6_d1  =>  B_6_d1,
   B_6_q1  =>  B_6_q1,
   B_6_we1  =>  B_6_we1,
   B_7_address0  =>  B_7_address0,
   B_7_ce0  =>  B_7_ce0,
   B_7_d0  =>  B_7_d0,
   B_7_q0  =>  B_7_q0,
   B_7_we0  =>  B_7_we0,
   B_7_address1  =>  B_7_address1,
   B_7_ce1  =>  B_7_ce1,
   B_7_d1  =>  B_7_d1,
   B_7_q1  =>  B_7_q1,
   B_7_we1  =>  B_7_we1,
   B_8_address0  =>  B_8_address0,
   B_8_ce0  =>  B_8_ce0,
   B_8_d0  =>  B_8_d0,
   B_8_q0  =>  B_8_q0,
   B_8_we0  =>  B_8_we0,
   B_8_address1  =>  B_8_address1,
   B_8_ce1  =>  B_8_ce1,
   B_8_d1  =>  B_8_d1,
   B_8_q1  =>  B_8_q1,
   B_8_we1  =>  B_8_we1,
   B_9_address0  =>  B_9_address0,
   B_9_ce0  =>  B_9_ce0,
   B_9_d0  =>  B_9_d0,
   B_9_q0  =>  B_9_q0,
   B_9_we0  =>  B_9_we0,
   B_9_address1  =>  B_9_address1,
   B_9_ce1  =>  B_9_ce1,
   B_9_d1  =>  B_9_d1,
   B_9_q1  =>  B_9_q1,
   B_9_we1  =>  B_9_we1,
   B_10_address0  =>  B_10_address0,
   B_10_ce0  =>  B_10_ce0,
   B_10_d0  =>  B_10_d0,
   B_10_q0  =>  B_10_q0,
   B_10_we0  =>  B_10_we0,
   B_10_address1  =>  B_10_address1,
   B_10_ce1  =>  B_10_ce1,
   B_10_d1  =>  B_10_d1,
   B_10_q1  =>  B_10_q1,
   B_10_we1  =>  B_10_we1,
   B_11_address0  =>  B_11_address0,
   B_11_ce0  =>  B_11_ce0,
   B_11_d0  =>  B_11_d0,
   B_11_q0  =>  B_11_q0,
   B_11_we0  =>  B_11_we0,
   B_11_address1  =>  B_11_address1,
   B_11_ce1  =>  B_11_ce1,
   B_11_d1  =>  B_11_d1,
   B_11_q1  =>  B_11_q1,
   B_11_we1  =>  B_11_we1,
   B_12_address0  =>  B_12_address0,
   B_12_ce0  =>  B_12_ce0,
   B_12_d0  =>  B_12_d0,
   B_12_q0  =>  B_12_q0,
   B_12_we0  =>  B_12_we0,
   B_12_address1  =>  B_12_address1,
   B_12_ce1  =>  B_12_ce1,
   B_12_d1  =>  B_12_d1,
   B_12_q1  =>  B_12_q1,
   B_12_we1  =>  B_12_we1,
   B_13_address0  =>  B_13_address0,
   B_13_ce0  =>  B_13_ce0,
   B_13_d0  =>  B_13_d0,
   B_13_q0  =>  B_13_q0,
   B_13_we0  =>  B_13_we0,
   B_13_address1  =>  B_13_address1,
   B_13_ce1  =>  B_13_ce1,
   B_13_d1  =>  B_13_d1,
   B_13_q1  =>  B_13_q1,
   B_13_we1  =>  B_13_we1,
   B_14_address0  =>  B_14_address0,
   B_14_ce0  =>  B_14_ce0,
   B_14_d0  =>  B_14_d0,
   B_14_q0  =>  B_14_q0,
   B_14_we0  =>  B_14_we0,
   B_14_address1  =>  B_14_address1,
   B_14_ce1  =>  B_14_ce1,
   B_14_d1  =>  B_14_d1,
   B_14_q1  =>  B_14_q1,
   B_14_we1  =>  B_14_we1,
   B_15_address0  =>  B_15_address0,
   B_15_ce0  =>  B_15_ce0,
   B_15_d0  =>  B_15_d0,
   B_15_q0  =>  B_15_q0,
   B_15_we0  =>  B_15_we0,
   B_15_address1  =>  B_15_address1,
   B_15_ce1  =>  B_15_ce1,
   B_15_d1  =>  B_15_d1,
   B_15_q1  =>  B_15_q1,
   B_15_we1  =>  B_15_we1,
   B_16_address0  =>  B_16_address0,
   B_16_ce0  =>  B_16_ce0,
   B_16_d0  =>  B_16_d0,
   B_16_q0  =>  B_16_q0,
   B_16_we0  =>  B_16_we0,
   B_16_address1  =>  B_16_address1,
   B_16_ce1  =>  B_16_ce1,
   B_16_d1  =>  B_16_d1,
   B_16_q1  =>  B_16_q1,
   B_16_we1  =>  B_16_we1,
   B_17_address0  =>  B_17_address0,
   B_17_ce0  =>  B_17_ce0,
   B_17_d0  =>  B_17_d0,
   B_17_q0  =>  B_17_q0,
   B_17_we0  =>  B_17_we0,
   B_17_address1  =>  B_17_address1,
   B_17_ce1  =>  B_17_ce1,
   B_17_d1  =>  B_17_d1,
   B_17_q1  =>  B_17_q1,
   B_17_we1  =>  B_17_we1,
   B_18_address0  =>  B_18_address0,
   B_18_ce0  =>  B_18_ce0,
   B_18_d0  =>  B_18_d0,
   B_18_q0  =>  B_18_q0,
   B_18_we0  =>  B_18_we0,
   B_18_address1  =>  B_18_address1,
   B_18_ce1  =>  B_18_ce1,
   B_18_d1  =>  B_18_d1,
   B_18_q1  =>  B_18_q1,
   B_18_we1  =>  B_18_we1,
   B_19_address0  =>  B_19_address0,
   B_19_ce0  =>  B_19_ce0,
   B_19_d0  =>  B_19_d0,
   B_19_q0  =>  B_19_q0,
   B_19_we0  =>  B_19_we0,
   B_19_address1  =>  B_19_address1,
   B_19_ce1  =>  B_19_ce1,
   B_19_d1  =>  B_19_d1,
   B_19_q1  =>  B_19_q1,
   B_19_we1  =>  B_19_we1,
   B_20_address0  =>  B_20_address0,
   B_20_ce0  =>  B_20_ce0,
   B_20_d0  =>  B_20_d0,
   B_20_q0  =>  B_20_q0,
   B_20_we0  =>  B_20_we0,
   B_20_address1  =>  B_20_address1,
   B_20_ce1  =>  B_20_ce1,
   B_20_d1  =>  B_20_d1,
   B_20_q1  =>  B_20_q1,
   B_20_we1  =>  B_20_we1,
   B_21_address0  =>  B_21_address0,
   B_21_ce0  =>  B_21_ce0,
   B_21_d0  =>  B_21_d0,
   B_21_q0  =>  B_21_q0,
   B_21_we0  =>  B_21_we0,
   B_21_address1  =>  B_21_address1,
   B_21_ce1  =>  B_21_ce1,
   B_21_d1  =>  B_21_d1,
   B_21_q1  =>  B_21_q1,
   B_21_we1  =>  B_21_we1,
   B_22_address0  =>  B_22_address0,
   B_22_ce0  =>  B_22_ce0,
   B_22_d0  =>  B_22_d0,
   B_22_q0  =>  B_22_q0,
   B_22_we0  =>  B_22_we0,
   B_22_address1  =>  B_22_address1,
   B_22_ce1  =>  B_22_ce1,
   B_22_d1  =>  B_22_d1,
   B_22_q1  =>  B_22_q1,
   B_22_we1  =>  B_22_we1,
   B_23_address0  =>  B_23_address0,
   B_23_ce0  =>  B_23_ce0,
   B_23_d0  =>  B_23_d0,
   B_23_q0  =>  B_23_q0,
   B_23_we0  =>  B_23_we0,
   B_23_address1  =>  B_23_address1,
   B_23_ce1  =>  B_23_ce1,
   B_23_d1  =>  B_23_d1,
   B_23_q1  =>  B_23_q1,
   B_23_we1  =>  B_23_we1,
   B_24_address0  =>  B_24_address0,
   B_24_ce0  =>  B_24_ce0,
   B_24_d0  =>  B_24_d0,
   B_24_q0  =>  B_24_q0,
   B_24_we0  =>  B_24_we0,
   B_24_address1  =>  B_24_address1,
   B_24_ce1  =>  B_24_ce1,
   B_24_d1  =>  B_24_d1,
   B_24_q1  =>  B_24_q1,
   B_24_we1  =>  B_24_we1,
   B_25_address0  =>  B_25_address0,
   B_25_ce0  =>  B_25_ce0,
   B_25_d0  =>  B_25_d0,
   B_25_q0  =>  B_25_q0,
   B_25_we0  =>  B_25_we0,
   B_25_address1  =>  B_25_address1,
   B_25_ce1  =>  B_25_ce1,
   B_25_d1  =>  B_25_d1,
   B_25_q1  =>  B_25_q1,
   B_25_we1  =>  B_25_we1,
   B_26_address0  =>  B_26_address0,
   B_26_ce0  =>  B_26_ce0,
   B_26_d0  =>  B_26_d0,
   B_26_q0  =>  B_26_q0,
   B_26_we0  =>  B_26_we0,
   B_26_address1  =>  B_26_address1,
   B_26_ce1  =>  B_26_ce1,
   B_26_d1  =>  B_26_d1,
   B_26_q1  =>  B_26_q1,
   B_26_we1  =>  B_26_we1,
   B_27_address0  =>  B_27_address0,
   B_27_ce0  =>  B_27_ce0,
   B_27_d0  =>  B_27_d0,
   B_27_q0  =>  B_27_q0,
   B_27_we0  =>  B_27_we0,
   B_27_address1  =>  B_27_address1,
   B_27_ce1  =>  B_27_ce1,
   B_27_d1  =>  B_27_d1,
   B_27_q1  =>  B_27_q1,
   B_27_we1  =>  B_27_we1,
   B_28_address0  =>  B_28_address0,
   B_28_ce0  =>  B_28_ce0,
   B_28_d0  =>  B_28_d0,
   B_28_q0  =>  B_28_q0,
   B_28_we0  =>  B_28_we0,
   B_28_address1  =>  B_28_address1,
   B_28_ce1  =>  B_28_ce1,
   B_28_d1  =>  B_28_d1,
   B_28_q1  =>  B_28_q1,
   B_28_we1  =>  B_28_we1,
   B_29_address0  =>  B_29_address0,
   B_29_ce0  =>  B_29_ce0,
   B_29_d0  =>  B_29_d0,
   B_29_q0  =>  B_29_q0,
   B_29_we0  =>  B_29_we0,
   B_29_address1  =>  B_29_address1,
   B_29_ce1  =>  B_29_ce1,
   B_29_d1  =>  B_29_d1,
   B_29_q1  =>  B_29_q1,
   B_29_we1  =>  B_29_we1,
   B_30_address0  =>  B_30_address0,
   B_30_ce0  =>  B_30_ce0,
   B_30_d0  =>  B_30_d0,
   B_30_q0  =>  B_30_q0,
   B_30_we0  =>  B_30_we0,
   B_30_address1  =>  B_30_address1,
   B_30_ce1  =>  B_30_ce1,
   B_30_d1  =>  B_30_d1,
   B_30_q1  =>  B_30_q1,
   B_30_we1  =>  B_30_we1,
   B_31_address0  =>  B_31_address0,
   B_31_ce0  =>  B_31_ce0,
   B_31_d0  =>  B_31_d0,
   B_31_q0  =>  B_31_q0,
   B_31_we0  =>  B_31_we0,
   B_31_address1  =>  B_31_address1,
   B_31_ce1  =>  B_31_ce1,
   B_31_d1  =>  B_31_d1,
   B_31_q1  =>  B_31_q1,
   B_31_we1  =>  B_31_we1,
   feature_vector_TDATA  =>  feature_vector_TDATA,
   feature_vector_TKEEP  =>  feature_vector_TKEEP,
   feature_vector_TSTRB  =>  feature_vector_TSTRB,
   feature_vector_TUSER  =>  feature_vector_TUSER,
   feature_vector_TLAST  =>  feature_vector_TLAST,
   feature_vector_TID  =>  feature_vector_TID,
   feature_vector_TDEST  =>  feature_vector_TDEST,
   feature_vector_TVALID  =>  feature_vector_TVALID,
   feature_vector_TREADY  =>  feature_vector_TREADY
);

-- Assignment for control signal
  ap_clk <= AESL_clock;
  ap_rst_n <= dut_rst;
  AESL_reset <= rst;
  AESL_start <= start;
  AESL_ce <= ce;
  AESL_continue <= continue;
  AESL_slave_write_start_in <= slave_start_status ;
  AESL_slave_start <= AESL_slave_write_start_finish;
  AESL_done <= slave_done_status ;

slave_start_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        slave_start_status <= '1';
    else
        if (AESL_start = '1' ) then
            start_rise <= '1';
        end if;
        if (start_rise = '1' and AESL_done = '1' ) then
            slave_start_status <= '1';
        end if;
        if (AESL_slave_write_start_in = '1' and AESL_done = '0') then 
            slave_start_status <= '0';
            start_rise <= '0';
        end if;
    end if;
  end if;
end process;

slave_ready_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_slave_ready <= '0';
        ready_rise <= '0';
    else
        if (AESL_ready = '1' ) then
            ready_rise <= '1';
        end if;
        if (ready_rise = '1' and AESL_done_delay = '1' ) then
            AESL_slave_ready <= '1';
        end if;
        if (AESL_slave_ready = '1') then 
            AESL_slave_ready <= '0';
            ready_rise <= '0';
        end if;
    end if;
  end if;
end process;

slave_done_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if (AESL_done = '1') then
        slave_done_status <= '0';
    elsif (AESL_slave_output_done = '1' ) then
        slave_done_status <= '1';
    end if;
  end if;
end process;
AESL_inst_A_0 : AESL_automem_A_0 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_0_ce0,
    we0       =>  arrayA_0_we0,
    address0  =>  arrayA_0_address0,
    din0      =>  arrayA_0_din0,
    dout0     =>  arrayA_0_dout0,
    ce1       =>  arrayA_0_ce1,
    we1       =>  arrayA_0_we1,
    address1  =>  arrayA_0_address1,
    din1      =>  arrayA_0_din1,
    dout1     =>  arrayA_0_dout1,
    ready	    =>  arrayA_0_ready,
    done	    =>  arrayA_0_done
);

-- Assignment between dut and arrayA_0
arrayA_0_address0 <= A_0_address0;
arrayA_0_ce0 <= A_0_ce0;
A_0_q0 <= arrayA_0_dout0;
arrayA_0_we0 <= (others => '0');
arrayA_0_din0 <= (others => '0');
arrayA_0_we1 <= (others => '0');
arrayA_0_din1 <= (others => '0');
arrayA_0_ready <=	ready;
arrayA_0_done <= '0';

AESL_inst_A_1 : AESL_automem_A_1 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_1_ce0,
    we0       =>  arrayA_1_we0,
    address0  =>  arrayA_1_address0,
    din0      =>  arrayA_1_din0,
    dout0     =>  arrayA_1_dout0,
    ce1       =>  arrayA_1_ce1,
    we1       =>  arrayA_1_we1,
    address1  =>  arrayA_1_address1,
    din1      =>  arrayA_1_din1,
    dout1     =>  arrayA_1_dout1,
    ready	    =>  arrayA_1_ready,
    done	    =>  arrayA_1_done
);

-- Assignment between dut and arrayA_1
arrayA_1_address0 <= A_1_address0;
arrayA_1_ce0 <= A_1_ce0;
A_1_q0 <= arrayA_1_dout0;
arrayA_1_we0 <= (others => '0');
arrayA_1_din0 <= (others => '0');
arrayA_1_we1 <= (others => '0');
arrayA_1_din1 <= (others => '0');
arrayA_1_ready <=	ready;
arrayA_1_done <= '0';

AESL_inst_A_2 : AESL_automem_A_2 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_2_ce0,
    we0       =>  arrayA_2_we0,
    address0  =>  arrayA_2_address0,
    din0      =>  arrayA_2_din0,
    dout0     =>  arrayA_2_dout0,
    ce1       =>  arrayA_2_ce1,
    we1       =>  arrayA_2_we1,
    address1  =>  arrayA_2_address1,
    din1      =>  arrayA_2_din1,
    dout1     =>  arrayA_2_dout1,
    ready	    =>  arrayA_2_ready,
    done	    =>  arrayA_2_done
);

-- Assignment between dut and arrayA_2
arrayA_2_address0 <= A_2_address0;
arrayA_2_ce0 <= A_2_ce0;
A_2_q0 <= arrayA_2_dout0;
arrayA_2_we0 <= (others => '0');
arrayA_2_din0 <= (others => '0');
arrayA_2_we1 <= (others => '0');
arrayA_2_din1 <= (others => '0');
arrayA_2_ready <=	ready;
arrayA_2_done <= '0';

AESL_inst_A_3 : AESL_automem_A_3 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_3_ce0,
    we0       =>  arrayA_3_we0,
    address0  =>  arrayA_3_address0,
    din0      =>  arrayA_3_din0,
    dout0     =>  arrayA_3_dout0,
    ce1       =>  arrayA_3_ce1,
    we1       =>  arrayA_3_we1,
    address1  =>  arrayA_3_address1,
    din1      =>  arrayA_3_din1,
    dout1     =>  arrayA_3_dout1,
    ready	    =>  arrayA_3_ready,
    done	    =>  arrayA_3_done
);

-- Assignment between dut and arrayA_3
arrayA_3_address0 <= A_3_address0;
arrayA_3_ce0 <= A_3_ce0;
A_3_q0 <= arrayA_3_dout0;
arrayA_3_we0 <= (others => '0');
arrayA_3_din0 <= (others => '0');
arrayA_3_we1 <= (others => '0');
arrayA_3_din1 <= (others => '0');
arrayA_3_ready <=	ready;
arrayA_3_done <= '0';

AESL_inst_A_4 : AESL_automem_A_4 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_4_ce0,
    we0       =>  arrayA_4_we0,
    address0  =>  arrayA_4_address0,
    din0      =>  arrayA_4_din0,
    dout0     =>  arrayA_4_dout0,
    ce1       =>  arrayA_4_ce1,
    we1       =>  arrayA_4_we1,
    address1  =>  arrayA_4_address1,
    din1      =>  arrayA_4_din1,
    dout1     =>  arrayA_4_dout1,
    ready	    =>  arrayA_4_ready,
    done	    =>  arrayA_4_done
);

-- Assignment between dut and arrayA_4
arrayA_4_address0 <= A_4_address0;
arrayA_4_ce0 <= A_4_ce0;
A_4_q0 <= arrayA_4_dout0;
arrayA_4_we0 <= (others => '0');
arrayA_4_din0 <= (others => '0');
arrayA_4_we1 <= (others => '0');
arrayA_4_din1 <= (others => '0');
arrayA_4_ready <=	ready;
arrayA_4_done <= '0';

AESL_inst_A_5 : AESL_automem_A_5 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_5_ce0,
    we0       =>  arrayA_5_we0,
    address0  =>  arrayA_5_address0,
    din0      =>  arrayA_5_din0,
    dout0     =>  arrayA_5_dout0,
    ce1       =>  arrayA_5_ce1,
    we1       =>  arrayA_5_we1,
    address1  =>  arrayA_5_address1,
    din1      =>  arrayA_5_din1,
    dout1     =>  arrayA_5_dout1,
    ready	    =>  arrayA_5_ready,
    done	    =>  arrayA_5_done
);

-- Assignment between dut and arrayA_5
arrayA_5_address0 <= A_5_address0;
arrayA_5_ce0 <= A_5_ce0;
A_5_q0 <= arrayA_5_dout0;
arrayA_5_we0 <= (others => '0');
arrayA_5_din0 <= (others => '0');
arrayA_5_we1 <= (others => '0');
arrayA_5_din1 <= (others => '0');
arrayA_5_ready <=	ready;
arrayA_5_done <= '0';

AESL_inst_A_6 : AESL_automem_A_6 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_6_ce0,
    we0       =>  arrayA_6_we0,
    address0  =>  arrayA_6_address0,
    din0      =>  arrayA_6_din0,
    dout0     =>  arrayA_6_dout0,
    ce1       =>  arrayA_6_ce1,
    we1       =>  arrayA_6_we1,
    address1  =>  arrayA_6_address1,
    din1      =>  arrayA_6_din1,
    dout1     =>  arrayA_6_dout1,
    ready	    =>  arrayA_6_ready,
    done	    =>  arrayA_6_done
);

-- Assignment between dut and arrayA_6
arrayA_6_address0 <= A_6_address0;
arrayA_6_ce0 <= A_6_ce0;
A_6_q0 <= arrayA_6_dout0;
arrayA_6_we0 <= (others => '0');
arrayA_6_din0 <= (others => '0');
arrayA_6_we1 <= (others => '0');
arrayA_6_din1 <= (others => '0');
arrayA_6_ready <=	ready;
arrayA_6_done <= '0';

AESL_inst_A_7 : AESL_automem_A_7 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_7_ce0,
    we0       =>  arrayA_7_we0,
    address0  =>  arrayA_7_address0,
    din0      =>  arrayA_7_din0,
    dout0     =>  arrayA_7_dout0,
    ce1       =>  arrayA_7_ce1,
    we1       =>  arrayA_7_we1,
    address1  =>  arrayA_7_address1,
    din1      =>  arrayA_7_din1,
    dout1     =>  arrayA_7_dout1,
    ready	    =>  arrayA_7_ready,
    done	    =>  arrayA_7_done
);

-- Assignment between dut and arrayA_7
arrayA_7_address0 <= A_7_address0;
arrayA_7_ce0 <= A_7_ce0;
A_7_q0 <= arrayA_7_dout0;
arrayA_7_we0 <= (others => '0');
arrayA_7_din0 <= (others => '0');
arrayA_7_we1 <= (others => '0');
arrayA_7_din1 <= (others => '0');
arrayA_7_ready <=	ready;
arrayA_7_done <= '0';

AESL_inst_A_8 : AESL_automem_A_8 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_8_ce0,
    we0       =>  arrayA_8_we0,
    address0  =>  arrayA_8_address0,
    din0      =>  arrayA_8_din0,
    dout0     =>  arrayA_8_dout0,
    ce1       =>  arrayA_8_ce1,
    we1       =>  arrayA_8_we1,
    address1  =>  arrayA_8_address1,
    din1      =>  arrayA_8_din1,
    dout1     =>  arrayA_8_dout1,
    ready	    =>  arrayA_8_ready,
    done	    =>  arrayA_8_done
);

-- Assignment between dut and arrayA_8
arrayA_8_address0 <= A_8_address0;
arrayA_8_ce0 <= A_8_ce0;
A_8_q0 <= arrayA_8_dout0;
arrayA_8_we0 <= (others => '0');
arrayA_8_din0 <= (others => '0');
arrayA_8_we1 <= (others => '0');
arrayA_8_din1 <= (others => '0');
arrayA_8_ready <=	ready;
arrayA_8_done <= '0';

AESL_inst_A_9 : AESL_automem_A_9 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_9_ce0,
    we0       =>  arrayA_9_we0,
    address0  =>  arrayA_9_address0,
    din0      =>  arrayA_9_din0,
    dout0     =>  arrayA_9_dout0,
    ce1       =>  arrayA_9_ce1,
    we1       =>  arrayA_9_we1,
    address1  =>  arrayA_9_address1,
    din1      =>  arrayA_9_din1,
    dout1     =>  arrayA_9_dout1,
    ready	    =>  arrayA_9_ready,
    done	    =>  arrayA_9_done
);

-- Assignment between dut and arrayA_9
arrayA_9_address0 <= A_9_address0;
arrayA_9_ce0 <= A_9_ce0;
A_9_q0 <= arrayA_9_dout0;
arrayA_9_we0 <= (others => '0');
arrayA_9_din0 <= (others => '0');
arrayA_9_we1 <= (others => '0');
arrayA_9_din1 <= (others => '0');
arrayA_9_ready <=	ready;
arrayA_9_done <= '0';

AESL_inst_A_10 : AESL_automem_A_10 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_10_ce0,
    we0       =>  arrayA_10_we0,
    address0  =>  arrayA_10_address0,
    din0      =>  arrayA_10_din0,
    dout0     =>  arrayA_10_dout0,
    ce1       =>  arrayA_10_ce1,
    we1       =>  arrayA_10_we1,
    address1  =>  arrayA_10_address1,
    din1      =>  arrayA_10_din1,
    dout1     =>  arrayA_10_dout1,
    ready	    =>  arrayA_10_ready,
    done	    =>  arrayA_10_done
);

-- Assignment between dut and arrayA_10
arrayA_10_address0 <= A_10_address0;
arrayA_10_ce0 <= A_10_ce0;
A_10_q0 <= arrayA_10_dout0;
arrayA_10_we0 <= (others => '0');
arrayA_10_din0 <= (others => '0');
arrayA_10_we1 <= (others => '0');
arrayA_10_din1 <= (others => '0');
arrayA_10_ready <=	ready;
arrayA_10_done <= '0';

AESL_inst_A_11 : AESL_automem_A_11 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_11_ce0,
    we0       =>  arrayA_11_we0,
    address0  =>  arrayA_11_address0,
    din0      =>  arrayA_11_din0,
    dout0     =>  arrayA_11_dout0,
    ce1       =>  arrayA_11_ce1,
    we1       =>  arrayA_11_we1,
    address1  =>  arrayA_11_address1,
    din1      =>  arrayA_11_din1,
    dout1     =>  arrayA_11_dout1,
    ready	    =>  arrayA_11_ready,
    done	    =>  arrayA_11_done
);

-- Assignment between dut and arrayA_11
arrayA_11_address0 <= A_11_address0;
arrayA_11_ce0 <= A_11_ce0;
A_11_q0 <= arrayA_11_dout0;
arrayA_11_we0 <= (others => '0');
arrayA_11_din0 <= (others => '0');
arrayA_11_we1 <= (others => '0');
arrayA_11_din1 <= (others => '0');
arrayA_11_ready <=	ready;
arrayA_11_done <= '0';

AESL_inst_A_12 : AESL_automem_A_12 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_12_ce0,
    we0       =>  arrayA_12_we0,
    address0  =>  arrayA_12_address0,
    din0      =>  arrayA_12_din0,
    dout0     =>  arrayA_12_dout0,
    ce1       =>  arrayA_12_ce1,
    we1       =>  arrayA_12_we1,
    address1  =>  arrayA_12_address1,
    din1      =>  arrayA_12_din1,
    dout1     =>  arrayA_12_dout1,
    ready	    =>  arrayA_12_ready,
    done	    =>  arrayA_12_done
);

-- Assignment between dut and arrayA_12
arrayA_12_address0 <= A_12_address0;
arrayA_12_ce0 <= A_12_ce0;
A_12_q0 <= arrayA_12_dout0;
arrayA_12_we0 <= (others => '0');
arrayA_12_din0 <= (others => '0');
arrayA_12_we1 <= (others => '0');
arrayA_12_din1 <= (others => '0');
arrayA_12_ready <=	ready;
arrayA_12_done <= '0';

AESL_inst_A_13 : AESL_automem_A_13 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_13_ce0,
    we0       =>  arrayA_13_we0,
    address0  =>  arrayA_13_address0,
    din0      =>  arrayA_13_din0,
    dout0     =>  arrayA_13_dout0,
    ce1       =>  arrayA_13_ce1,
    we1       =>  arrayA_13_we1,
    address1  =>  arrayA_13_address1,
    din1      =>  arrayA_13_din1,
    dout1     =>  arrayA_13_dout1,
    ready	    =>  arrayA_13_ready,
    done	    =>  arrayA_13_done
);

-- Assignment between dut and arrayA_13
arrayA_13_address0 <= A_13_address0;
arrayA_13_ce0 <= A_13_ce0;
A_13_q0 <= arrayA_13_dout0;
arrayA_13_we0 <= (others => '0');
arrayA_13_din0 <= (others => '0');
arrayA_13_we1 <= (others => '0');
arrayA_13_din1 <= (others => '0');
arrayA_13_ready <=	ready;
arrayA_13_done <= '0';

AESL_inst_A_14 : AESL_automem_A_14 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_14_ce0,
    we0       =>  arrayA_14_we0,
    address0  =>  arrayA_14_address0,
    din0      =>  arrayA_14_din0,
    dout0     =>  arrayA_14_dout0,
    ce1       =>  arrayA_14_ce1,
    we1       =>  arrayA_14_we1,
    address1  =>  arrayA_14_address1,
    din1      =>  arrayA_14_din1,
    dout1     =>  arrayA_14_dout1,
    ready	    =>  arrayA_14_ready,
    done	    =>  arrayA_14_done
);

-- Assignment between dut and arrayA_14
arrayA_14_address0 <= A_14_address0;
arrayA_14_ce0 <= A_14_ce0;
A_14_q0 <= arrayA_14_dout0;
arrayA_14_we0 <= (others => '0');
arrayA_14_din0 <= (others => '0');
arrayA_14_we1 <= (others => '0');
arrayA_14_din1 <= (others => '0');
arrayA_14_ready <=	ready;
arrayA_14_done <= '0';

AESL_inst_A_15 : AESL_automem_A_15 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_15_ce0,
    we0       =>  arrayA_15_we0,
    address0  =>  arrayA_15_address0,
    din0      =>  arrayA_15_din0,
    dout0     =>  arrayA_15_dout0,
    ce1       =>  arrayA_15_ce1,
    we1       =>  arrayA_15_we1,
    address1  =>  arrayA_15_address1,
    din1      =>  arrayA_15_din1,
    dout1     =>  arrayA_15_dout1,
    ready	    =>  arrayA_15_ready,
    done	    =>  arrayA_15_done
);

-- Assignment between dut and arrayA_15
arrayA_15_address0 <= A_15_address0;
arrayA_15_ce0 <= A_15_ce0;
A_15_q0 <= arrayA_15_dout0;
arrayA_15_we0 <= (others => '0');
arrayA_15_din0 <= (others => '0');
arrayA_15_we1 <= (others => '0');
arrayA_15_din1 <= (others => '0');
arrayA_15_ready <=	ready;
arrayA_15_done <= '0';

AESL_inst_A_16 : AESL_automem_A_16 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_16_ce0,
    we0       =>  arrayA_16_we0,
    address0  =>  arrayA_16_address0,
    din0      =>  arrayA_16_din0,
    dout0     =>  arrayA_16_dout0,
    ce1       =>  arrayA_16_ce1,
    we1       =>  arrayA_16_we1,
    address1  =>  arrayA_16_address1,
    din1      =>  arrayA_16_din1,
    dout1     =>  arrayA_16_dout1,
    ready	    =>  arrayA_16_ready,
    done	    =>  arrayA_16_done
);

-- Assignment between dut and arrayA_16
arrayA_16_address0 <= A_16_address0;
arrayA_16_ce0 <= A_16_ce0;
A_16_q0 <= arrayA_16_dout0;
arrayA_16_we0 <= (others => '0');
arrayA_16_din0 <= (others => '0');
arrayA_16_we1 <= (others => '0');
arrayA_16_din1 <= (others => '0');
arrayA_16_ready <=	ready;
arrayA_16_done <= '0';

AESL_inst_A_17 : AESL_automem_A_17 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_17_ce0,
    we0       =>  arrayA_17_we0,
    address0  =>  arrayA_17_address0,
    din0      =>  arrayA_17_din0,
    dout0     =>  arrayA_17_dout0,
    ce1       =>  arrayA_17_ce1,
    we1       =>  arrayA_17_we1,
    address1  =>  arrayA_17_address1,
    din1      =>  arrayA_17_din1,
    dout1     =>  arrayA_17_dout1,
    ready	    =>  arrayA_17_ready,
    done	    =>  arrayA_17_done
);

-- Assignment between dut and arrayA_17
arrayA_17_address0 <= A_17_address0;
arrayA_17_ce0 <= A_17_ce0;
A_17_q0 <= arrayA_17_dout0;
arrayA_17_we0 <= (others => '0');
arrayA_17_din0 <= (others => '0');
arrayA_17_we1 <= (others => '0');
arrayA_17_din1 <= (others => '0');
arrayA_17_ready <=	ready;
arrayA_17_done <= '0';

AESL_inst_A_18 : AESL_automem_A_18 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_18_ce0,
    we0       =>  arrayA_18_we0,
    address0  =>  arrayA_18_address0,
    din0      =>  arrayA_18_din0,
    dout0     =>  arrayA_18_dout0,
    ce1       =>  arrayA_18_ce1,
    we1       =>  arrayA_18_we1,
    address1  =>  arrayA_18_address1,
    din1      =>  arrayA_18_din1,
    dout1     =>  arrayA_18_dout1,
    ready	    =>  arrayA_18_ready,
    done	    =>  arrayA_18_done
);

-- Assignment between dut and arrayA_18
arrayA_18_address0 <= A_18_address0;
arrayA_18_ce0 <= A_18_ce0;
A_18_q0 <= arrayA_18_dout0;
arrayA_18_we0 <= (others => '0');
arrayA_18_din0 <= (others => '0');
arrayA_18_we1 <= (others => '0');
arrayA_18_din1 <= (others => '0');
arrayA_18_ready <=	ready;
arrayA_18_done <= '0';

AESL_inst_A_19 : AESL_automem_A_19 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_19_ce0,
    we0       =>  arrayA_19_we0,
    address0  =>  arrayA_19_address0,
    din0      =>  arrayA_19_din0,
    dout0     =>  arrayA_19_dout0,
    ce1       =>  arrayA_19_ce1,
    we1       =>  arrayA_19_we1,
    address1  =>  arrayA_19_address1,
    din1      =>  arrayA_19_din1,
    dout1     =>  arrayA_19_dout1,
    ready	    =>  arrayA_19_ready,
    done	    =>  arrayA_19_done
);

-- Assignment between dut and arrayA_19
arrayA_19_address0 <= A_19_address0;
arrayA_19_ce0 <= A_19_ce0;
A_19_q0 <= arrayA_19_dout0;
arrayA_19_we0 <= (others => '0');
arrayA_19_din0 <= (others => '0');
arrayA_19_we1 <= (others => '0');
arrayA_19_din1 <= (others => '0');
arrayA_19_ready <=	ready;
arrayA_19_done <= '0';

AESL_inst_A_20 : AESL_automem_A_20 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_20_ce0,
    we0       =>  arrayA_20_we0,
    address0  =>  arrayA_20_address0,
    din0      =>  arrayA_20_din0,
    dout0     =>  arrayA_20_dout0,
    ce1       =>  arrayA_20_ce1,
    we1       =>  arrayA_20_we1,
    address1  =>  arrayA_20_address1,
    din1      =>  arrayA_20_din1,
    dout1     =>  arrayA_20_dout1,
    ready	    =>  arrayA_20_ready,
    done	    =>  arrayA_20_done
);

-- Assignment between dut and arrayA_20
arrayA_20_address0 <= A_20_address0;
arrayA_20_ce0 <= A_20_ce0;
A_20_q0 <= arrayA_20_dout0;
arrayA_20_we0 <= (others => '0');
arrayA_20_din0 <= (others => '0');
arrayA_20_we1 <= (others => '0');
arrayA_20_din1 <= (others => '0');
arrayA_20_ready <=	ready;
arrayA_20_done <= '0';

AESL_inst_A_21 : AESL_automem_A_21 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_21_ce0,
    we0       =>  arrayA_21_we0,
    address0  =>  arrayA_21_address0,
    din0      =>  arrayA_21_din0,
    dout0     =>  arrayA_21_dout0,
    ce1       =>  arrayA_21_ce1,
    we1       =>  arrayA_21_we1,
    address1  =>  arrayA_21_address1,
    din1      =>  arrayA_21_din1,
    dout1     =>  arrayA_21_dout1,
    ready	    =>  arrayA_21_ready,
    done	    =>  arrayA_21_done
);

-- Assignment between dut and arrayA_21
arrayA_21_address0 <= A_21_address0;
arrayA_21_ce0 <= A_21_ce0;
A_21_q0 <= arrayA_21_dout0;
arrayA_21_we0 <= (others => '0');
arrayA_21_din0 <= (others => '0');
arrayA_21_we1 <= (others => '0');
arrayA_21_din1 <= (others => '0');
arrayA_21_ready <=	ready;
arrayA_21_done <= '0';

AESL_inst_A_22 : AESL_automem_A_22 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_22_ce0,
    we0       =>  arrayA_22_we0,
    address0  =>  arrayA_22_address0,
    din0      =>  arrayA_22_din0,
    dout0     =>  arrayA_22_dout0,
    ce1       =>  arrayA_22_ce1,
    we1       =>  arrayA_22_we1,
    address1  =>  arrayA_22_address1,
    din1      =>  arrayA_22_din1,
    dout1     =>  arrayA_22_dout1,
    ready	    =>  arrayA_22_ready,
    done	    =>  arrayA_22_done
);

-- Assignment between dut and arrayA_22
arrayA_22_address0 <= A_22_address0;
arrayA_22_ce0 <= A_22_ce0;
A_22_q0 <= arrayA_22_dout0;
arrayA_22_we0 <= (others => '0');
arrayA_22_din0 <= (others => '0');
arrayA_22_we1 <= (others => '0');
arrayA_22_din1 <= (others => '0');
arrayA_22_ready <=	ready;
arrayA_22_done <= '0';

AESL_inst_A_23 : AESL_automem_A_23 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_23_ce0,
    we0       =>  arrayA_23_we0,
    address0  =>  arrayA_23_address0,
    din0      =>  arrayA_23_din0,
    dout0     =>  arrayA_23_dout0,
    ce1       =>  arrayA_23_ce1,
    we1       =>  arrayA_23_we1,
    address1  =>  arrayA_23_address1,
    din1      =>  arrayA_23_din1,
    dout1     =>  arrayA_23_dout1,
    ready	    =>  arrayA_23_ready,
    done	    =>  arrayA_23_done
);

-- Assignment between dut and arrayA_23
arrayA_23_address0 <= A_23_address0;
arrayA_23_ce0 <= A_23_ce0;
A_23_q0 <= arrayA_23_dout0;
arrayA_23_we0 <= (others => '0');
arrayA_23_din0 <= (others => '0');
arrayA_23_we1 <= (others => '0');
arrayA_23_din1 <= (others => '0');
arrayA_23_ready <=	ready;
arrayA_23_done <= '0';

AESL_inst_A_24 : AESL_automem_A_24 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_24_ce0,
    we0       =>  arrayA_24_we0,
    address0  =>  arrayA_24_address0,
    din0      =>  arrayA_24_din0,
    dout0     =>  arrayA_24_dout0,
    ce1       =>  arrayA_24_ce1,
    we1       =>  arrayA_24_we1,
    address1  =>  arrayA_24_address1,
    din1      =>  arrayA_24_din1,
    dout1     =>  arrayA_24_dout1,
    ready	    =>  arrayA_24_ready,
    done	    =>  arrayA_24_done
);

-- Assignment between dut and arrayA_24
arrayA_24_address0 <= A_24_address0;
arrayA_24_ce0 <= A_24_ce0;
A_24_q0 <= arrayA_24_dout0;
arrayA_24_we0 <= (others => '0');
arrayA_24_din0 <= (others => '0');
arrayA_24_we1 <= (others => '0');
arrayA_24_din1 <= (others => '0');
arrayA_24_ready <=	ready;
arrayA_24_done <= '0';

AESL_inst_A_25 : AESL_automem_A_25 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_25_ce0,
    we0       =>  arrayA_25_we0,
    address0  =>  arrayA_25_address0,
    din0      =>  arrayA_25_din0,
    dout0     =>  arrayA_25_dout0,
    ce1       =>  arrayA_25_ce1,
    we1       =>  arrayA_25_we1,
    address1  =>  arrayA_25_address1,
    din1      =>  arrayA_25_din1,
    dout1     =>  arrayA_25_dout1,
    ready	    =>  arrayA_25_ready,
    done	    =>  arrayA_25_done
);

-- Assignment between dut and arrayA_25
arrayA_25_address0 <= A_25_address0;
arrayA_25_ce0 <= A_25_ce0;
A_25_q0 <= arrayA_25_dout0;
arrayA_25_we0 <= (others => '0');
arrayA_25_din0 <= (others => '0');
arrayA_25_we1 <= (others => '0');
arrayA_25_din1 <= (others => '0');
arrayA_25_ready <=	ready;
arrayA_25_done <= '0';

AESL_inst_A_26 : AESL_automem_A_26 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_26_ce0,
    we0       =>  arrayA_26_we0,
    address0  =>  arrayA_26_address0,
    din0      =>  arrayA_26_din0,
    dout0     =>  arrayA_26_dout0,
    ce1       =>  arrayA_26_ce1,
    we1       =>  arrayA_26_we1,
    address1  =>  arrayA_26_address1,
    din1      =>  arrayA_26_din1,
    dout1     =>  arrayA_26_dout1,
    ready	    =>  arrayA_26_ready,
    done	    =>  arrayA_26_done
);

-- Assignment between dut and arrayA_26
arrayA_26_address0 <= A_26_address0;
arrayA_26_ce0 <= A_26_ce0;
A_26_q0 <= arrayA_26_dout0;
arrayA_26_we0 <= (others => '0');
arrayA_26_din0 <= (others => '0');
arrayA_26_we1 <= (others => '0');
arrayA_26_din1 <= (others => '0');
arrayA_26_ready <=	ready;
arrayA_26_done <= '0';

AESL_inst_A_27 : AESL_automem_A_27 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_27_ce0,
    we0       =>  arrayA_27_we0,
    address0  =>  arrayA_27_address0,
    din0      =>  arrayA_27_din0,
    dout0     =>  arrayA_27_dout0,
    ce1       =>  arrayA_27_ce1,
    we1       =>  arrayA_27_we1,
    address1  =>  arrayA_27_address1,
    din1      =>  arrayA_27_din1,
    dout1     =>  arrayA_27_dout1,
    ready	    =>  arrayA_27_ready,
    done	    =>  arrayA_27_done
);

-- Assignment between dut and arrayA_27
arrayA_27_address0 <= A_27_address0;
arrayA_27_ce0 <= A_27_ce0;
A_27_q0 <= arrayA_27_dout0;
arrayA_27_we0 <= (others => '0');
arrayA_27_din0 <= (others => '0');
arrayA_27_we1 <= (others => '0');
arrayA_27_din1 <= (others => '0');
arrayA_27_ready <=	ready;
arrayA_27_done <= '0';

AESL_inst_A_28 : AESL_automem_A_28 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_28_ce0,
    we0       =>  arrayA_28_we0,
    address0  =>  arrayA_28_address0,
    din0      =>  arrayA_28_din0,
    dout0     =>  arrayA_28_dout0,
    ce1       =>  arrayA_28_ce1,
    we1       =>  arrayA_28_we1,
    address1  =>  arrayA_28_address1,
    din1      =>  arrayA_28_din1,
    dout1     =>  arrayA_28_dout1,
    ready	    =>  arrayA_28_ready,
    done	    =>  arrayA_28_done
);

-- Assignment between dut and arrayA_28
arrayA_28_address0 <= A_28_address0;
arrayA_28_ce0 <= A_28_ce0;
A_28_q0 <= arrayA_28_dout0;
arrayA_28_we0 <= (others => '0');
arrayA_28_din0 <= (others => '0');
arrayA_28_we1 <= (others => '0');
arrayA_28_din1 <= (others => '0');
arrayA_28_ready <=	ready;
arrayA_28_done <= '0';

AESL_inst_A_29 : AESL_automem_A_29 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_29_ce0,
    we0       =>  arrayA_29_we0,
    address0  =>  arrayA_29_address0,
    din0      =>  arrayA_29_din0,
    dout0     =>  arrayA_29_dout0,
    ce1       =>  arrayA_29_ce1,
    we1       =>  arrayA_29_we1,
    address1  =>  arrayA_29_address1,
    din1      =>  arrayA_29_din1,
    dout1     =>  arrayA_29_dout1,
    ready	    =>  arrayA_29_ready,
    done	    =>  arrayA_29_done
);

-- Assignment between dut and arrayA_29
arrayA_29_address0 <= A_29_address0;
arrayA_29_ce0 <= A_29_ce0;
A_29_q0 <= arrayA_29_dout0;
arrayA_29_we0 <= (others => '0');
arrayA_29_din0 <= (others => '0');
arrayA_29_we1 <= (others => '0');
arrayA_29_din1 <= (others => '0');
arrayA_29_ready <=	ready;
arrayA_29_done <= '0';

AESL_inst_A_30 : AESL_automem_A_30 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_30_ce0,
    we0       =>  arrayA_30_we0,
    address0  =>  arrayA_30_address0,
    din0      =>  arrayA_30_din0,
    dout0     =>  arrayA_30_dout0,
    ce1       =>  arrayA_30_ce1,
    we1       =>  arrayA_30_we1,
    address1  =>  arrayA_30_address1,
    din1      =>  arrayA_30_din1,
    dout1     =>  arrayA_30_dout1,
    ready	    =>  arrayA_30_ready,
    done	    =>  arrayA_30_done
);

-- Assignment between dut and arrayA_30
arrayA_30_address0 <= A_30_address0;
arrayA_30_ce0 <= A_30_ce0;
A_30_q0 <= arrayA_30_dout0;
arrayA_30_we0 <= (others => '0');
arrayA_30_din0 <= (others => '0');
arrayA_30_we1 <= (others => '0');
arrayA_30_din1 <= (others => '0');
arrayA_30_ready <=	ready;
arrayA_30_done <= '0';

AESL_inst_A_31 : AESL_automem_A_31 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayA_31_ce0,
    we0       =>  arrayA_31_we0,
    address0  =>  arrayA_31_address0,
    din0      =>  arrayA_31_din0,
    dout0     =>  arrayA_31_dout0,
    ce1       =>  arrayA_31_ce1,
    we1       =>  arrayA_31_we1,
    address1  =>  arrayA_31_address1,
    din1      =>  arrayA_31_din1,
    dout1     =>  arrayA_31_dout1,
    ready	    =>  arrayA_31_ready,
    done	    =>  arrayA_31_done
);

-- Assignment between dut and arrayA_31
arrayA_31_address0 <= A_31_address0;
arrayA_31_ce0 <= A_31_ce0;
A_31_q0 <= arrayA_31_dout0;
arrayA_31_we0 <= (others => '0');
arrayA_31_din0 <= (others => '0');
arrayA_31_we1 <= (others => '0');
arrayA_31_din1 <= (others => '0');
arrayA_31_ready <=	ready;
arrayA_31_done <= '0';

AESL_inst_B_0 : AESL_automem_B_0 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_0_ce0,
    we0       =>  arrayB_0_we0,
    address0  =>  arrayB_0_address0,
    din0      =>  arrayB_0_din0,
    dout0     =>  arrayB_0_dout0,
    ce1       =>  arrayB_0_ce1,
    we1       =>  arrayB_0_we1,
    address1  =>  arrayB_0_address1,
    din1      =>  arrayB_0_din1,
    dout1     =>  arrayB_0_dout1,
    ready	    =>  arrayB_0_ready,
    done	    =>  arrayB_0_done
);

-- Assignment between dut and arrayB_0
arrayB_0_address0 <= B_0_address0;
arrayB_0_ce0 <= B_0_ce0;
B_0_q0 <= arrayB_0_dout0;
arrayB_0_we0 <= (others => '0');
arrayB_0_din0 <= (others => '0');
arrayB_0_address1 <= B_0_address1;
arrayB_0_ce1 <= B_0_ce1;
B_0_q1 <= arrayB_0_dout1;
arrayB_0_we1 <= (others => '0');
arrayB_0_din1 <= (others => '0');
arrayB_0_ready <=	ready;
arrayB_0_done <= '0';

AESL_inst_B_1 : AESL_automem_B_1 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_1_ce0,
    we0       =>  arrayB_1_we0,
    address0  =>  arrayB_1_address0,
    din0      =>  arrayB_1_din0,
    dout0     =>  arrayB_1_dout0,
    ce1       =>  arrayB_1_ce1,
    we1       =>  arrayB_1_we1,
    address1  =>  arrayB_1_address1,
    din1      =>  arrayB_1_din1,
    dout1     =>  arrayB_1_dout1,
    ready	    =>  arrayB_1_ready,
    done	    =>  arrayB_1_done
);

-- Assignment between dut and arrayB_1
arrayB_1_address0 <= B_1_address0;
arrayB_1_ce0 <= B_1_ce0;
B_1_q0 <= arrayB_1_dout0;
arrayB_1_we0 <= (others => '0');
arrayB_1_din0 <= (others => '0');
arrayB_1_address1 <= B_1_address1;
arrayB_1_ce1 <= B_1_ce1;
B_1_q1 <= arrayB_1_dout1;
arrayB_1_we1 <= (others => '0');
arrayB_1_din1 <= (others => '0');
arrayB_1_ready <=	ready;
arrayB_1_done <= '0';

AESL_inst_B_2 : AESL_automem_B_2 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_2_ce0,
    we0       =>  arrayB_2_we0,
    address0  =>  arrayB_2_address0,
    din0      =>  arrayB_2_din0,
    dout0     =>  arrayB_2_dout0,
    ce1       =>  arrayB_2_ce1,
    we1       =>  arrayB_2_we1,
    address1  =>  arrayB_2_address1,
    din1      =>  arrayB_2_din1,
    dout1     =>  arrayB_2_dout1,
    ready	    =>  arrayB_2_ready,
    done	    =>  arrayB_2_done
);

-- Assignment between dut and arrayB_2
arrayB_2_address0 <= B_2_address0;
arrayB_2_ce0 <= B_2_ce0;
B_2_q0 <= arrayB_2_dout0;
arrayB_2_we0 <= (others => '0');
arrayB_2_din0 <= (others => '0');
arrayB_2_address1 <= B_2_address1;
arrayB_2_ce1 <= B_2_ce1;
B_2_q1 <= arrayB_2_dout1;
arrayB_2_we1 <= (others => '0');
arrayB_2_din1 <= (others => '0');
arrayB_2_ready <=	ready;
arrayB_2_done <= '0';

AESL_inst_B_3 : AESL_automem_B_3 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_3_ce0,
    we0       =>  arrayB_3_we0,
    address0  =>  arrayB_3_address0,
    din0      =>  arrayB_3_din0,
    dout0     =>  arrayB_3_dout0,
    ce1       =>  arrayB_3_ce1,
    we1       =>  arrayB_3_we1,
    address1  =>  arrayB_3_address1,
    din1      =>  arrayB_3_din1,
    dout1     =>  arrayB_3_dout1,
    ready	    =>  arrayB_3_ready,
    done	    =>  arrayB_3_done
);

-- Assignment between dut and arrayB_3
arrayB_3_address0 <= B_3_address0;
arrayB_3_ce0 <= B_3_ce0;
B_3_q0 <= arrayB_3_dout0;
arrayB_3_we0 <= (others => '0');
arrayB_3_din0 <= (others => '0');
arrayB_3_address1 <= B_3_address1;
arrayB_3_ce1 <= B_3_ce1;
B_3_q1 <= arrayB_3_dout1;
arrayB_3_we1 <= (others => '0');
arrayB_3_din1 <= (others => '0');
arrayB_3_ready <=	ready;
arrayB_3_done <= '0';

AESL_inst_B_4 : AESL_automem_B_4 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_4_ce0,
    we0       =>  arrayB_4_we0,
    address0  =>  arrayB_4_address0,
    din0      =>  arrayB_4_din0,
    dout0     =>  arrayB_4_dout0,
    ce1       =>  arrayB_4_ce1,
    we1       =>  arrayB_4_we1,
    address1  =>  arrayB_4_address1,
    din1      =>  arrayB_4_din1,
    dout1     =>  arrayB_4_dout1,
    ready	    =>  arrayB_4_ready,
    done	    =>  arrayB_4_done
);

-- Assignment between dut and arrayB_4
arrayB_4_address0 <= B_4_address0;
arrayB_4_ce0 <= B_4_ce0;
B_4_q0 <= arrayB_4_dout0;
arrayB_4_we0 <= (others => '0');
arrayB_4_din0 <= (others => '0');
arrayB_4_address1 <= B_4_address1;
arrayB_4_ce1 <= B_4_ce1;
B_4_q1 <= arrayB_4_dout1;
arrayB_4_we1 <= (others => '0');
arrayB_4_din1 <= (others => '0');
arrayB_4_ready <=	ready;
arrayB_4_done <= '0';

AESL_inst_B_5 : AESL_automem_B_5 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_5_ce0,
    we0       =>  arrayB_5_we0,
    address0  =>  arrayB_5_address0,
    din0      =>  arrayB_5_din0,
    dout0     =>  arrayB_5_dout0,
    ce1       =>  arrayB_5_ce1,
    we1       =>  arrayB_5_we1,
    address1  =>  arrayB_5_address1,
    din1      =>  arrayB_5_din1,
    dout1     =>  arrayB_5_dout1,
    ready	    =>  arrayB_5_ready,
    done	    =>  arrayB_5_done
);

-- Assignment between dut and arrayB_5
arrayB_5_address0 <= B_5_address0;
arrayB_5_ce0 <= B_5_ce0;
B_5_q0 <= arrayB_5_dout0;
arrayB_5_we0 <= (others => '0');
arrayB_5_din0 <= (others => '0');
arrayB_5_address1 <= B_5_address1;
arrayB_5_ce1 <= B_5_ce1;
B_5_q1 <= arrayB_5_dout1;
arrayB_5_we1 <= (others => '0');
arrayB_5_din1 <= (others => '0');
arrayB_5_ready <=	ready;
arrayB_5_done <= '0';

AESL_inst_B_6 : AESL_automem_B_6 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_6_ce0,
    we0       =>  arrayB_6_we0,
    address0  =>  arrayB_6_address0,
    din0      =>  arrayB_6_din0,
    dout0     =>  arrayB_6_dout0,
    ce1       =>  arrayB_6_ce1,
    we1       =>  arrayB_6_we1,
    address1  =>  arrayB_6_address1,
    din1      =>  arrayB_6_din1,
    dout1     =>  arrayB_6_dout1,
    ready	    =>  arrayB_6_ready,
    done	    =>  arrayB_6_done
);

-- Assignment between dut and arrayB_6
arrayB_6_address0 <= B_6_address0;
arrayB_6_ce0 <= B_6_ce0;
B_6_q0 <= arrayB_6_dout0;
arrayB_6_we0 <= (others => '0');
arrayB_6_din0 <= (others => '0');
arrayB_6_address1 <= B_6_address1;
arrayB_6_ce1 <= B_6_ce1;
B_6_q1 <= arrayB_6_dout1;
arrayB_6_we1 <= (others => '0');
arrayB_6_din1 <= (others => '0');
arrayB_6_ready <=	ready;
arrayB_6_done <= '0';

AESL_inst_B_7 : AESL_automem_B_7 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_7_ce0,
    we0       =>  arrayB_7_we0,
    address0  =>  arrayB_7_address0,
    din0      =>  arrayB_7_din0,
    dout0     =>  arrayB_7_dout0,
    ce1       =>  arrayB_7_ce1,
    we1       =>  arrayB_7_we1,
    address1  =>  arrayB_7_address1,
    din1      =>  arrayB_7_din1,
    dout1     =>  arrayB_7_dout1,
    ready	    =>  arrayB_7_ready,
    done	    =>  arrayB_7_done
);

-- Assignment between dut and arrayB_7
arrayB_7_address0 <= B_7_address0;
arrayB_7_ce0 <= B_7_ce0;
B_7_q0 <= arrayB_7_dout0;
arrayB_7_we0 <= (others => '0');
arrayB_7_din0 <= (others => '0');
arrayB_7_address1 <= B_7_address1;
arrayB_7_ce1 <= B_7_ce1;
B_7_q1 <= arrayB_7_dout1;
arrayB_7_we1 <= (others => '0');
arrayB_7_din1 <= (others => '0');
arrayB_7_ready <=	ready;
arrayB_7_done <= '0';

AESL_inst_B_8 : AESL_automem_B_8 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_8_ce0,
    we0       =>  arrayB_8_we0,
    address0  =>  arrayB_8_address0,
    din0      =>  arrayB_8_din0,
    dout0     =>  arrayB_8_dout0,
    ce1       =>  arrayB_8_ce1,
    we1       =>  arrayB_8_we1,
    address1  =>  arrayB_8_address1,
    din1      =>  arrayB_8_din1,
    dout1     =>  arrayB_8_dout1,
    ready	    =>  arrayB_8_ready,
    done	    =>  arrayB_8_done
);

-- Assignment between dut and arrayB_8
arrayB_8_address0 <= B_8_address0;
arrayB_8_ce0 <= B_8_ce0;
B_8_q0 <= arrayB_8_dout0;
arrayB_8_we0 <= (others => '0');
arrayB_8_din0 <= (others => '0');
arrayB_8_address1 <= B_8_address1;
arrayB_8_ce1 <= B_8_ce1;
B_8_q1 <= arrayB_8_dout1;
arrayB_8_we1 <= (others => '0');
arrayB_8_din1 <= (others => '0');
arrayB_8_ready <=	ready;
arrayB_8_done <= '0';

AESL_inst_B_9 : AESL_automem_B_9 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_9_ce0,
    we0       =>  arrayB_9_we0,
    address0  =>  arrayB_9_address0,
    din0      =>  arrayB_9_din0,
    dout0     =>  arrayB_9_dout0,
    ce1       =>  arrayB_9_ce1,
    we1       =>  arrayB_9_we1,
    address1  =>  arrayB_9_address1,
    din1      =>  arrayB_9_din1,
    dout1     =>  arrayB_9_dout1,
    ready	    =>  arrayB_9_ready,
    done	    =>  arrayB_9_done
);

-- Assignment between dut and arrayB_9
arrayB_9_address0 <= B_9_address0;
arrayB_9_ce0 <= B_9_ce0;
B_9_q0 <= arrayB_9_dout0;
arrayB_9_we0 <= (others => '0');
arrayB_9_din0 <= (others => '0');
arrayB_9_address1 <= B_9_address1;
arrayB_9_ce1 <= B_9_ce1;
B_9_q1 <= arrayB_9_dout1;
arrayB_9_we1 <= (others => '0');
arrayB_9_din1 <= (others => '0');
arrayB_9_ready <=	ready;
arrayB_9_done <= '0';

AESL_inst_B_10 : AESL_automem_B_10 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_10_ce0,
    we0       =>  arrayB_10_we0,
    address0  =>  arrayB_10_address0,
    din0      =>  arrayB_10_din0,
    dout0     =>  arrayB_10_dout0,
    ce1       =>  arrayB_10_ce1,
    we1       =>  arrayB_10_we1,
    address1  =>  arrayB_10_address1,
    din1      =>  arrayB_10_din1,
    dout1     =>  arrayB_10_dout1,
    ready	    =>  arrayB_10_ready,
    done	    =>  arrayB_10_done
);

-- Assignment between dut and arrayB_10
arrayB_10_address0 <= B_10_address0;
arrayB_10_ce0 <= B_10_ce0;
B_10_q0 <= arrayB_10_dout0;
arrayB_10_we0 <= (others => '0');
arrayB_10_din0 <= (others => '0');
arrayB_10_address1 <= B_10_address1;
arrayB_10_ce1 <= B_10_ce1;
B_10_q1 <= arrayB_10_dout1;
arrayB_10_we1 <= (others => '0');
arrayB_10_din1 <= (others => '0');
arrayB_10_ready <=	ready;
arrayB_10_done <= '0';

AESL_inst_B_11 : AESL_automem_B_11 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_11_ce0,
    we0       =>  arrayB_11_we0,
    address0  =>  arrayB_11_address0,
    din0      =>  arrayB_11_din0,
    dout0     =>  arrayB_11_dout0,
    ce1       =>  arrayB_11_ce1,
    we1       =>  arrayB_11_we1,
    address1  =>  arrayB_11_address1,
    din1      =>  arrayB_11_din1,
    dout1     =>  arrayB_11_dout1,
    ready	    =>  arrayB_11_ready,
    done	    =>  arrayB_11_done
);

-- Assignment between dut and arrayB_11
arrayB_11_address0 <= B_11_address0;
arrayB_11_ce0 <= B_11_ce0;
B_11_q0 <= arrayB_11_dout0;
arrayB_11_we0 <= (others => '0');
arrayB_11_din0 <= (others => '0');
arrayB_11_address1 <= B_11_address1;
arrayB_11_ce1 <= B_11_ce1;
B_11_q1 <= arrayB_11_dout1;
arrayB_11_we1 <= (others => '0');
arrayB_11_din1 <= (others => '0');
arrayB_11_ready <=	ready;
arrayB_11_done <= '0';

AESL_inst_B_12 : AESL_automem_B_12 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_12_ce0,
    we0       =>  arrayB_12_we0,
    address0  =>  arrayB_12_address0,
    din0      =>  arrayB_12_din0,
    dout0     =>  arrayB_12_dout0,
    ce1       =>  arrayB_12_ce1,
    we1       =>  arrayB_12_we1,
    address1  =>  arrayB_12_address1,
    din1      =>  arrayB_12_din1,
    dout1     =>  arrayB_12_dout1,
    ready	    =>  arrayB_12_ready,
    done	    =>  arrayB_12_done
);

-- Assignment between dut and arrayB_12
arrayB_12_address0 <= B_12_address0;
arrayB_12_ce0 <= B_12_ce0;
B_12_q0 <= arrayB_12_dout0;
arrayB_12_we0 <= (others => '0');
arrayB_12_din0 <= (others => '0');
arrayB_12_address1 <= B_12_address1;
arrayB_12_ce1 <= B_12_ce1;
B_12_q1 <= arrayB_12_dout1;
arrayB_12_we1 <= (others => '0');
arrayB_12_din1 <= (others => '0');
arrayB_12_ready <=	ready;
arrayB_12_done <= '0';

AESL_inst_B_13 : AESL_automem_B_13 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_13_ce0,
    we0       =>  arrayB_13_we0,
    address0  =>  arrayB_13_address0,
    din0      =>  arrayB_13_din0,
    dout0     =>  arrayB_13_dout0,
    ce1       =>  arrayB_13_ce1,
    we1       =>  arrayB_13_we1,
    address1  =>  arrayB_13_address1,
    din1      =>  arrayB_13_din1,
    dout1     =>  arrayB_13_dout1,
    ready	    =>  arrayB_13_ready,
    done	    =>  arrayB_13_done
);

-- Assignment between dut and arrayB_13
arrayB_13_address0 <= B_13_address0;
arrayB_13_ce0 <= B_13_ce0;
B_13_q0 <= arrayB_13_dout0;
arrayB_13_we0 <= (others => '0');
arrayB_13_din0 <= (others => '0');
arrayB_13_address1 <= B_13_address1;
arrayB_13_ce1 <= B_13_ce1;
B_13_q1 <= arrayB_13_dout1;
arrayB_13_we1 <= (others => '0');
arrayB_13_din1 <= (others => '0');
arrayB_13_ready <=	ready;
arrayB_13_done <= '0';

AESL_inst_B_14 : AESL_automem_B_14 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_14_ce0,
    we0       =>  arrayB_14_we0,
    address0  =>  arrayB_14_address0,
    din0      =>  arrayB_14_din0,
    dout0     =>  arrayB_14_dout0,
    ce1       =>  arrayB_14_ce1,
    we1       =>  arrayB_14_we1,
    address1  =>  arrayB_14_address1,
    din1      =>  arrayB_14_din1,
    dout1     =>  arrayB_14_dout1,
    ready	    =>  arrayB_14_ready,
    done	    =>  arrayB_14_done
);

-- Assignment between dut and arrayB_14
arrayB_14_address0 <= B_14_address0;
arrayB_14_ce0 <= B_14_ce0;
B_14_q0 <= arrayB_14_dout0;
arrayB_14_we0 <= (others => '0');
arrayB_14_din0 <= (others => '0');
arrayB_14_address1 <= B_14_address1;
arrayB_14_ce1 <= B_14_ce1;
B_14_q1 <= arrayB_14_dout1;
arrayB_14_we1 <= (others => '0');
arrayB_14_din1 <= (others => '0');
arrayB_14_ready <=	ready;
arrayB_14_done <= '0';

AESL_inst_B_15 : AESL_automem_B_15 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_15_ce0,
    we0       =>  arrayB_15_we0,
    address0  =>  arrayB_15_address0,
    din0      =>  arrayB_15_din0,
    dout0     =>  arrayB_15_dout0,
    ce1       =>  arrayB_15_ce1,
    we1       =>  arrayB_15_we1,
    address1  =>  arrayB_15_address1,
    din1      =>  arrayB_15_din1,
    dout1     =>  arrayB_15_dout1,
    ready	    =>  arrayB_15_ready,
    done	    =>  arrayB_15_done
);

-- Assignment between dut and arrayB_15
arrayB_15_address0 <= B_15_address0;
arrayB_15_ce0 <= B_15_ce0;
B_15_q0 <= arrayB_15_dout0;
arrayB_15_we0 <= (others => '0');
arrayB_15_din0 <= (others => '0');
arrayB_15_address1 <= B_15_address1;
arrayB_15_ce1 <= B_15_ce1;
B_15_q1 <= arrayB_15_dout1;
arrayB_15_we1 <= (others => '0');
arrayB_15_din1 <= (others => '0');
arrayB_15_ready <=	ready;
arrayB_15_done <= '0';

AESL_inst_B_16 : AESL_automem_B_16 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_16_ce0,
    we0       =>  arrayB_16_we0,
    address0  =>  arrayB_16_address0,
    din0      =>  arrayB_16_din0,
    dout0     =>  arrayB_16_dout0,
    ce1       =>  arrayB_16_ce1,
    we1       =>  arrayB_16_we1,
    address1  =>  arrayB_16_address1,
    din1      =>  arrayB_16_din1,
    dout1     =>  arrayB_16_dout1,
    ready	    =>  arrayB_16_ready,
    done	    =>  arrayB_16_done
);

-- Assignment between dut and arrayB_16
arrayB_16_address0 <= B_16_address0;
arrayB_16_ce0 <= B_16_ce0;
B_16_q0 <= arrayB_16_dout0;
arrayB_16_we0 <= (others => '0');
arrayB_16_din0 <= (others => '0');
arrayB_16_address1 <= B_16_address1;
arrayB_16_ce1 <= B_16_ce1;
B_16_q1 <= arrayB_16_dout1;
arrayB_16_we1 <= (others => '0');
arrayB_16_din1 <= (others => '0');
arrayB_16_ready <=	ready;
arrayB_16_done <= '0';

AESL_inst_B_17 : AESL_automem_B_17 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_17_ce0,
    we0       =>  arrayB_17_we0,
    address0  =>  arrayB_17_address0,
    din0      =>  arrayB_17_din0,
    dout0     =>  arrayB_17_dout0,
    ce1       =>  arrayB_17_ce1,
    we1       =>  arrayB_17_we1,
    address1  =>  arrayB_17_address1,
    din1      =>  arrayB_17_din1,
    dout1     =>  arrayB_17_dout1,
    ready	    =>  arrayB_17_ready,
    done	    =>  arrayB_17_done
);

-- Assignment between dut and arrayB_17
arrayB_17_address0 <= B_17_address0;
arrayB_17_ce0 <= B_17_ce0;
B_17_q0 <= arrayB_17_dout0;
arrayB_17_we0 <= (others => '0');
arrayB_17_din0 <= (others => '0');
arrayB_17_address1 <= B_17_address1;
arrayB_17_ce1 <= B_17_ce1;
B_17_q1 <= arrayB_17_dout1;
arrayB_17_we1 <= (others => '0');
arrayB_17_din1 <= (others => '0');
arrayB_17_ready <=	ready;
arrayB_17_done <= '0';

AESL_inst_B_18 : AESL_automem_B_18 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_18_ce0,
    we0       =>  arrayB_18_we0,
    address0  =>  arrayB_18_address0,
    din0      =>  arrayB_18_din0,
    dout0     =>  arrayB_18_dout0,
    ce1       =>  arrayB_18_ce1,
    we1       =>  arrayB_18_we1,
    address1  =>  arrayB_18_address1,
    din1      =>  arrayB_18_din1,
    dout1     =>  arrayB_18_dout1,
    ready	    =>  arrayB_18_ready,
    done	    =>  arrayB_18_done
);

-- Assignment between dut and arrayB_18
arrayB_18_address0 <= B_18_address0;
arrayB_18_ce0 <= B_18_ce0;
B_18_q0 <= arrayB_18_dout0;
arrayB_18_we0 <= (others => '0');
arrayB_18_din0 <= (others => '0');
arrayB_18_address1 <= B_18_address1;
arrayB_18_ce1 <= B_18_ce1;
B_18_q1 <= arrayB_18_dout1;
arrayB_18_we1 <= (others => '0');
arrayB_18_din1 <= (others => '0');
arrayB_18_ready <=	ready;
arrayB_18_done <= '0';

AESL_inst_B_19 : AESL_automem_B_19 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_19_ce0,
    we0       =>  arrayB_19_we0,
    address0  =>  arrayB_19_address0,
    din0      =>  arrayB_19_din0,
    dout0     =>  arrayB_19_dout0,
    ce1       =>  arrayB_19_ce1,
    we1       =>  arrayB_19_we1,
    address1  =>  arrayB_19_address1,
    din1      =>  arrayB_19_din1,
    dout1     =>  arrayB_19_dout1,
    ready	    =>  arrayB_19_ready,
    done	    =>  arrayB_19_done
);

-- Assignment between dut and arrayB_19
arrayB_19_address0 <= B_19_address0;
arrayB_19_ce0 <= B_19_ce0;
B_19_q0 <= arrayB_19_dout0;
arrayB_19_we0 <= (others => '0');
arrayB_19_din0 <= (others => '0');
arrayB_19_address1 <= B_19_address1;
arrayB_19_ce1 <= B_19_ce1;
B_19_q1 <= arrayB_19_dout1;
arrayB_19_we1 <= (others => '0');
arrayB_19_din1 <= (others => '0');
arrayB_19_ready <=	ready;
arrayB_19_done <= '0';

AESL_inst_B_20 : AESL_automem_B_20 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_20_ce0,
    we0       =>  arrayB_20_we0,
    address0  =>  arrayB_20_address0,
    din0      =>  arrayB_20_din0,
    dout0     =>  arrayB_20_dout0,
    ce1       =>  arrayB_20_ce1,
    we1       =>  arrayB_20_we1,
    address1  =>  arrayB_20_address1,
    din1      =>  arrayB_20_din1,
    dout1     =>  arrayB_20_dout1,
    ready	    =>  arrayB_20_ready,
    done	    =>  arrayB_20_done
);

-- Assignment between dut and arrayB_20
arrayB_20_address0 <= B_20_address0;
arrayB_20_ce0 <= B_20_ce0;
B_20_q0 <= arrayB_20_dout0;
arrayB_20_we0 <= (others => '0');
arrayB_20_din0 <= (others => '0');
arrayB_20_address1 <= B_20_address1;
arrayB_20_ce1 <= B_20_ce1;
B_20_q1 <= arrayB_20_dout1;
arrayB_20_we1 <= (others => '0');
arrayB_20_din1 <= (others => '0');
arrayB_20_ready <=	ready;
arrayB_20_done <= '0';

AESL_inst_B_21 : AESL_automem_B_21 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_21_ce0,
    we0       =>  arrayB_21_we0,
    address0  =>  arrayB_21_address0,
    din0      =>  arrayB_21_din0,
    dout0     =>  arrayB_21_dout0,
    ce1       =>  arrayB_21_ce1,
    we1       =>  arrayB_21_we1,
    address1  =>  arrayB_21_address1,
    din1      =>  arrayB_21_din1,
    dout1     =>  arrayB_21_dout1,
    ready	    =>  arrayB_21_ready,
    done	    =>  arrayB_21_done
);

-- Assignment between dut and arrayB_21
arrayB_21_address0 <= B_21_address0;
arrayB_21_ce0 <= B_21_ce0;
B_21_q0 <= arrayB_21_dout0;
arrayB_21_we0 <= (others => '0');
arrayB_21_din0 <= (others => '0');
arrayB_21_address1 <= B_21_address1;
arrayB_21_ce1 <= B_21_ce1;
B_21_q1 <= arrayB_21_dout1;
arrayB_21_we1 <= (others => '0');
arrayB_21_din1 <= (others => '0');
arrayB_21_ready <=	ready;
arrayB_21_done <= '0';

AESL_inst_B_22 : AESL_automem_B_22 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_22_ce0,
    we0       =>  arrayB_22_we0,
    address0  =>  arrayB_22_address0,
    din0      =>  arrayB_22_din0,
    dout0     =>  arrayB_22_dout0,
    ce1       =>  arrayB_22_ce1,
    we1       =>  arrayB_22_we1,
    address1  =>  arrayB_22_address1,
    din1      =>  arrayB_22_din1,
    dout1     =>  arrayB_22_dout1,
    ready	    =>  arrayB_22_ready,
    done	    =>  arrayB_22_done
);

-- Assignment between dut and arrayB_22
arrayB_22_address0 <= B_22_address0;
arrayB_22_ce0 <= B_22_ce0;
B_22_q0 <= arrayB_22_dout0;
arrayB_22_we0 <= (others => '0');
arrayB_22_din0 <= (others => '0');
arrayB_22_address1 <= B_22_address1;
arrayB_22_ce1 <= B_22_ce1;
B_22_q1 <= arrayB_22_dout1;
arrayB_22_we1 <= (others => '0');
arrayB_22_din1 <= (others => '0');
arrayB_22_ready <=	ready;
arrayB_22_done <= '0';

AESL_inst_B_23 : AESL_automem_B_23 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_23_ce0,
    we0       =>  arrayB_23_we0,
    address0  =>  arrayB_23_address0,
    din0      =>  arrayB_23_din0,
    dout0     =>  arrayB_23_dout0,
    ce1       =>  arrayB_23_ce1,
    we1       =>  arrayB_23_we1,
    address1  =>  arrayB_23_address1,
    din1      =>  arrayB_23_din1,
    dout1     =>  arrayB_23_dout1,
    ready	    =>  arrayB_23_ready,
    done	    =>  arrayB_23_done
);

-- Assignment between dut and arrayB_23
arrayB_23_address0 <= B_23_address0;
arrayB_23_ce0 <= B_23_ce0;
B_23_q0 <= arrayB_23_dout0;
arrayB_23_we0 <= (others => '0');
arrayB_23_din0 <= (others => '0');
arrayB_23_address1 <= B_23_address1;
arrayB_23_ce1 <= B_23_ce1;
B_23_q1 <= arrayB_23_dout1;
arrayB_23_we1 <= (others => '0');
arrayB_23_din1 <= (others => '0');
arrayB_23_ready <=	ready;
arrayB_23_done <= '0';

AESL_inst_B_24 : AESL_automem_B_24 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_24_ce0,
    we0       =>  arrayB_24_we0,
    address0  =>  arrayB_24_address0,
    din0      =>  arrayB_24_din0,
    dout0     =>  arrayB_24_dout0,
    ce1       =>  arrayB_24_ce1,
    we1       =>  arrayB_24_we1,
    address1  =>  arrayB_24_address1,
    din1      =>  arrayB_24_din1,
    dout1     =>  arrayB_24_dout1,
    ready	    =>  arrayB_24_ready,
    done	    =>  arrayB_24_done
);

-- Assignment between dut and arrayB_24
arrayB_24_address0 <= B_24_address0;
arrayB_24_ce0 <= B_24_ce0;
B_24_q0 <= arrayB_24_dout0;
arrayB_24_we0 <= (others => '0');
arrayB_24_din0 <= (others => '0');
arrayB_24_address1 <= B_24_address1;
arrayB_24_ce1 <= B_24_ce1;
B_24_q1 <= arrayB_24_dout1;
arrayB_24_we1 <= (others => '0');
arrayB_24_din1 <= (others => '0');
arrayB_24_ready <=	ready;
arrayB_24_done <= '0';

AESL_inst_B_25 : AESL_automem_B_25 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_25_ce0,
    we0       =>  arrayB_25_we0,
    address0  =>  arrayB_25_address0,
    din0      =>  arrayB_25_din0,
    dout0     =>  arrayB_25_dout0,
    ce1       =>  arrayB_25_ce1,
    we1       =>  arrayB_25_we1,
    address1  =>  arrayB_25_address1,
    din1      =>  arrayB_25_din1,
    dout1     =>  arrayB_25_dout1,
    ready	    =>  arrayB_25_ready,
    done	    =>  arrayB_25_done
);

-- Assignment between dut and arrayB_25
arrayB_25_address0 <= B_25_address0;
arrayB_25_ce0 <= B_25_ce0;
B_25_q0 <= arrayB_25_dout0;
arrayB_25_we0 <= (others => '0');
arrayB_25_din0 <= (others => '0');
arrayB_25_address1 <= B_25_address1;
arrayB_25_ce1 <= B_25_ce1;
B_25_q1 <= arrayB_25_dout1;
arrayB_25_we1 <= (others => '0');
arrayB_25_din1 <= (others => '0');
arrayB_25_ready <=	ready;
arrayB_25_done <= '0';

AESL_inst_B_26 : AESL_automem_B_26 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_26_ce0,
    we0       =>  arrayB_26_we0,
    address0  =>  arrayB_26_address0,
    din0      =>  arrayB_26_din0,
    dout0     =>  arrayB_26_dout0,
    ce1       =>  arrayB_26_ce1,
    we1       =>  arrayB_26_we1,
    address1  =>  arrayB_26_address1,
    din1      =>  arrayB_26_din1,
    dout1     =>  arrayB_26_dout1,
    ready	    =>  arrayB_26_ready,
    done	    =>  arrayB_26_done
);

-- Assignment between dut and arrayB_26
arrayB_26_address0 <= B_26_address0;
arrayB_26_ce0 <= B_26_ce0;
B_26_q0 <= arrayB_26_dout0;
arrayB_26_we0 <= (others => '0');
arrayB_26_din0 <= (others => '0');
arrayB_26_address1 <= B_26_address1;
arrayB_26_ce1 <= B_26_ce1;
B_26_q1 <= arrayB_26_dout1;
arrayB_26_we1 <= (others => '0');
arrayB_26_din1 <= (others => '0');
arrayB_26_ready <=	ready;
arrayB_26_done <= '0';

AESL_inst_B_27 : AESL_automem_B_27 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_27_ce0,
    we0       =>  arrayB_27_we0,
    address0  =>  arrayB_27_address0,
    din0      =>  arrayB_27_din0,
    dout0     =>  arrayB_27_dout0,
    ce1       =>  arrayB_27_ce1,
    we1       =>  arrayB_27_we1,
    address1  =>  arrayB_27_address1,
    din1      =>  arrayB_27_din1,
    dout1     =>  arrayB_27_dout1,
    ready	    =>  arrayB_27_ready,
    done	    =>  arrayB_27_done
);

-- Assignment between dut and arrayB_27
arrayB_27_address0 <= B_27_address0;
arrayB_27_ce0 <= B_27_ce0;
B_27_q0 <= arrayB_27_dout0;
arrayB_27_we0 <= (others => '0');
arrayB_27_din0 <= (others => '0');
arrayB_27_address1 <= B_27_address1;
arrayB_27_ce1 <= B_27_ce1;
B_27_q1 <= arrayB_27_dout1;
arrayB_27_we1 <= (others => '0');
arrayB_27_din1 <= (others => '0');
arrayB_27_ready <=	ready;
arrayB_27_done <= '0';

AESL_inst_B_28 : AESL_automem_B_28 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_28_ce0,
    we0       =>  arrayB_28_we0,
    address0  =>  arrayB_28_address0,
    din0      =>  arrayB_28_din0,
    dout0     =>  arrayB_28_dout0,
    ce1       =>  arrayB_28_ce1,
    we1       =>  arrayB_28_we1,
    address1  =>  arrayB_28_address1,
    din1      =>  arrayB_28_din1,
    dout1     =>  arrayB_28_dout1,
    ready	    =>  arrayB_28_ready,
    done	    =>  arrayB_28_done
);

-- Assignment between dut and arrayB_28
arrayB_28_address0 <= B_28_address0;
arrayB_28_ce0 <= B_28_ce0;
B_28_q0 <= arrayB_28_dout0;
arrayB_28_we0 <= (others => '0');
arrayB_28_din0 <= (others => '0');
arrayB_28_address1 <= B_28_address1;
arrayB_28_ce1 <= B_28_ce1;
B_28_q1 <= arrayB_28_dout1;
arrayB_28_we1 <= (others => '0');
arrayB_28_din1 <= (others => '0');
arrayB_28_ready <=	ready;
arrayB_28_done <= '0';

AESL_inst_B_29 : AESL_automem_B_29 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_29_ce0,
    we0       =>  arrayB_29_we0,
    address0  =>  arrayB_29_address0,
    din0      =>  arrayB_29_din0,
    dout0     =>  arrayB_29_dout0,
    ce1       =>  arrayB_29_ce1,
    we1       =>  arrayB_29_we1,
    address1  =>  arrayB_29_address1,
    din1      =>  arrayB_29_din1,
    dout1     =>  arrayB_29_dout1,
    ready	    =>  arrayB_29_ready,
    done	    =>  arrayB_29_done
);

-- Assignment between dut and arrayB_29
arrayB_29_address0 <= B_29_address0;
arrayB_29_ce0 <= B_29_ce0;
B_29_q0 <= arrayB_29_dout0;
arrayB_29_we0 <= (others => '0');
arrayB_29_din0 <= (others => '0');
arrayB_29_address1 <= B_29_address1;
arrayB_29_ce1 <= B_29_ce1;
B_29_q1 <= arrayB_29_dout1;
arrayB_29_we1 <= (others => '0');
arrayB_29_din1 <= (others => '0');
arrayB_29_ready <=	ready;
arrayB_29_done <= '0';

AESL_inst_B_30 : AESL_automem_B_30 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_30_ce0,
    we0       =>  arrayB_30_we0,
    address0  =>  arrayB_30_address0,
    din0      =>  arrayB_30_din0,
    dout0     =>  arrayB_30_dout0,
    ce1       =>  arrayB_30_ce1,
    we1       =>  arrayB_30_we1,
    address1  =>  arrayB_30_address1,
    din1      =>  arrayB_30_din1,
    dout1     =>  arrayB_30_dout1,
    ready	    =>  arrayB_30_ready,
    done	    =>  arrayB_30_done
);

-- Assignment between dut and arrayB_30
arrayB_30_address0 <= B_30_address0;
arrayB_30_ce0 <= B_30_ce0;
B_30_q0 <= arrayB_30_dout0;
arrayB_30_we0 <= (others => '0');
arrayB_30_din0 <= (others => '0');
arrayB_30_address1 <= B_30_address1;
arrayB_30_ce1 <= B_30_ce1;
B_30_q1 <= arrayB_30_dout1;
arrayB_30_we1 <= (others => '0');
arrayB_30_din1 <= (others => '0');
arrayB_30_ready <=	ready;
arrayB_30_done <= '0';

AESL_inst_B_31 : AESL_automem_B_31 port map (
    clk       =>  AESL_clock,
    rst       =>  AESL_reset,
    ce0       =>  arrayB_31_ce0,
    we0       =>  arrayB_31_we0,
    address0  =>  arrayB_31_address0,
    din0      =>  arrayB_31_din0,
    dout0     =>  arrayB_31_dout0,
    ce1       =>  arrayB_31_ce1,
    we1       =>  arrayB_31_we1,
    address1  =>  arrayB_31_address1,
    din1      =>  arrayB_31_din1,
    dout1     =>  arrayB_31_dout1,
    ready	    =>  arrayB_31_ready,
    done	    =>  arrayB_31_done
);

-- Assignment between dut and arrayB_31
arrayB_31_address0 <= B_31_address0;
arrayB_31_ce0 <= B_31_ce0;
B_31_q0 <= arrayB_31_dout0;
arrayB_31_we0 <= (others => '0');
arrayB_31_din0 <= (others => '0');
arrayB_31_address1 <= B_31_address1;
arrayB_31_ce1 <= B_31_ce1;
B_31_q1 <= arrayB_31_dout1;
arrayB_31_we1 <= (others => '0');
arrayB_31_din1 <= (others => '0');
arrayB_31_ready <=	ready;
arrayB_31_done <= '0';

AESL_axi_s_inst_feature_vector : AESL_axi_s_feature_vector port map (
    clk   =>   AESL_clock,
    reset =>   AESL_reset,
    TRAN_feature_vector_TDATA =>   feature_vector_TDATA,
    feature_vector_TDATA_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_data_V,
    TRAN_feature_vector_TKEEP =>   feature_vector_TKEEP,
    feature_vector_TKEEP_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_keep_V,
    TRAN_feature_vector_TSTRB =>   feature_vector_TSTRB,
    feature_vector_TSTRB_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_strb_V,
    TRAN_feature_vector_TUSER =>   feature_vector_TUSER,
    feature_vector_TUSER_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_user_V,
    TRAN_feature_vector_TLAST =>   feature_vector_TLAST,
    feature_vector_TLAST_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_last_V,
    TRAN_feature_vector_TID =>   feature_vector_TID,
    feature_vector_TID_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_id_V,
    TRAN_feature_vector_TDEST =>   feature_vector_TDEST,
    feature_vector_TDEST_trans_num => ap_c_n_tvin_trans_num_feature_vector_V_dest_V,
    TRAN_feature_vector_TVALID => axi_s_feature_vector_TVALID,
    TRAN_feature_vector_TREADY => axi_s_feature_vector_TREADY,
    ready   =>   feature_vector_ready,
    done    =>   feature_vector_done
);
feature_vector_ready   <=   feature_vector_ready_reg or ready_initial;
feature_vector_done    <=   '0';

feature_vector_TVALID    <=   axi_s_feature_vector_TVALID;

axi_s_feature_vector_TREADY    <=   feature_vector_TREADY;

AESL_axi_slave_inst_CTRL_BUS : AESL_AXI_SLAVE_CTRL_BUS port map (
    clk   =>  AESL_clock,
    reset =>  AESL_reset,
    TRAN_s_axi_CTRL_BUS_AWADDR => CTRL_BUS_AWADDR,
    TRAN_s_axi_CTRL_BUS_AWVALID => CTRL_BUS_AWVALID,
    TRAN_s_axi_CTRL_BUS_AWREADY => CTRL_BUS_AWREADY,
    TRAN_s_axi_CTRL_BUS_WVALID => CTRL_BUS_WVALID,
    TRAN_s_axi_CTRL_BUS_WREADY => CTRL_BUS_WREADY,
    TRAN_s_axi_CTRL_BUS_WDATA => CTRL_BUS_WDATA,
    TRAN_s_axi_CTRL_BUS_WSTRB => CTRL_BUS_WSTRB,
    TRAN_s_axi_CTRL_BUS_ARADDR => CTRL_BUS_ARADDR,
    TRAN_s_axi_CTRL_BUS_ARVALID => CTRL_BUS_ARVALID,
    TRAN_s_axi_CTRL_BUS_ARREADY => CTRL_BUS_ARREADY,
    TRAN_s_axi_CTRL_BUS_RVALID => CTRL_BUS_RVALID,
    TRAN_s_axi_CTRL_BUS_RREADY => CTRL_BUS_RREADY,
    TRAN_s_axi_CTRL_BUS_RDATA => CTRL_BUS_RDATA,
    TRAN_s_axi_CTRL_BUS_RRESP => CTRL_BUS_RRESP,
    TRAN_s_axi_CTRL_BUS_BVALID => CTRL_BUS_BVALID,
    TRAN_s_axi_CTRL_BUS_BREADY => CTRL_BUS_BREADY,
    TRAN_s_axi_CTRL_BUS_BRESP => CTRL_BUS_BRESP,
    TRAN_CTRL_BUS_interrupt => CTRL_BUS_INTERRUPT,
    TRAN_CTRL_BUS_ready_out => AESL_ready,
    TRAN_CTRL_BUS_ready_in => AESL_slave_ready,
    TRAN_CTRL_BUS_done_out => AESL_slave_output_done,
    TRAN_CTRL_BUS_idle_out => AESL_idle,
    TRAN_CTRL_BUS_write_start_in     => AESL_slave_write_start_in,
    TRAN_CTRL_BUS_write_start_finish => AESL_slave_write_start_finish,
    TRAN_CTRL_BUS_transaction_done_in => AESL_done_delay,
    TRAN_CTRL_BUS_start_in  => AESL_slave_start
);

generate_ready_cnt_proc : process(ready_initial, AESL_clock)
begin
    if(AESL_clock'event and AESL_clock = '0') then
        if(ready_initial = '1') then
            ready_cnt <= conv_std_logic_vector(1, 32);
        end if;
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(ready_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_ready = '1') then
                ready_cnt <= ready_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_done_cnt_proc : process(AESL_reset, AESL_clock)
begin
    if(AESL_reset = '0') then
        done_cnt <= (others => '0');
    elsif(AESL_clock'event and AESL_clock = '1') then
        if(done_cnt /= AUTOTB_TRANSACTION_NUM) then
            if(AESL_done = '1') then
                done_cnt <= done_cnt + 1;
            end if;
        end if;
    end if;
end process;

generate_sim_done_proc    :   process
begin
    while(done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
        wait until AESL_clock'event and AESL_clock = '1';
    assert false report "simulation done!" severity note;
    assert false report "NORMAL EXIT (note: failure is to force the simulator to stop)" severity failure;
    wait;
end process;

gen_clock_proc :   process
begin
    AESL_clock <= '0';
    while(true) loop
        wait for AUTOTB_CLOCK_PERIOD_DIV2;
        AESL_clock <= not AESL_clock;
    end loop;
    wait;
end process;

gen_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    rst <= '0';
    wait for 100 ns;
    for i in 1 to (3+0) loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    rst <= '1';
    wait;
end process;

gen_dut_reset_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
    dut_rst <= '0';
    wait for 100 ns;
    for i in 1 to 3 loop
        wait until AESL_clock'event and AESL_clock = '1';
    end loop;
    dut_rst <= '1';
    wait;
end process;

gen_start_proc : process
    variable  rand            :   T_RANDINT     := init_rand(0);
    variable  rint            :   INTEGER;
begin
  start <= '0';
  ce <= '1';
    wait until AESL_reset = '1';
  wait until (AESL_clock'event and AESL_clock = '1');
  start <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
      wait until (AESL_clock'event and AESL_clock = '1');
      if(AESL_ready = '1') then
          start <= '0';
          start <= '1';
      end if;
  end loop;
  while (start = '1') loop
      if(AESL_ready = '1') then
          start <= '0';
      end if;
      wait until (AESL_clock'event and AESL_clock = '1');
  end loop;
  wait;
end process;


gen_continue_proc : process(AESL_done)
begin
    continue <= AESL_done;
end process;

gen_AESL_ready_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_ready_delay <= '0';
      else
          AESL_ready_delay <= AESL_ready;
      end if;
  end if;
end process;

gen_ready_initial_proc : process
begin
    ready_initial <= '0';
    wait until AESL_start = '1';
    ready_initial <= '1';
    wait until AESL_clock'event and AESL_clock = '1';
    ready_initial <= '0';
    wait;
end process;

ready_last_n_proc : process
begin
  ready_last_n <= '1';
  while(ready_cnt /= AUTOTB_TRANSACTION_NUM) loop
    wait until AESL_clock'event and AESL_clock = '1';
  end loop;
  ready_last_n <= '0';
  wait;
end process;

gen_ready_delay_n_last_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          ready_delay_last_n <= '0';
      else
          ready_delay_last_n <= ready_last_n;
      end if;
  end if;
end process;

ready <= (ready_initial or AESL_ready_delay);
ready_wire <= ready_initial or AESL_ready_delay;
done_delay_last_n <= '0' when done_cnt = AUTOTB_TRANSACTION_NUM else '1';

gen_done_delay_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_done_delay <= '0';
          AESL_done_delay2 <= '0';
      else
          AESL_done_delay <= AESL_done and done_delay_last_n;
          AESL_done_delay2 <= AESL_done_delay;
      end if;
  end if;
end process;

gen_interface_done : process(done_cnt, AESL_ready_delay, AESL_done_delay)
begin
    if(done_cnt < AUTOTB_TRANSACTION_NUM) then
        interface_done <= AESL_ready_delay;
    else
        interface_done <= AESL_done_delay;
    end if;
end process;
proc_gen_feature_vector_internal_ready : process
variable    internal_trans_num :   INTEGER;
begin
    wait until AESL_reset = '1';
    wait until ready_initial = '1';
    feature_vector_ready_reg <= '0';
    wait until AESL_clock'event and AESL_clock = '1';
    internal_trans_num := 1;
    while(internal_trans_num /= AUTOTB_TRANSACTION_NUM + 1) loop
      if (true 
          and ap_c_n_tvin_trans_num_feature_vector_V_data_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_keep_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_strb_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_user_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_last_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_id_V > internal_trans_num
          and ap_c_n_tvin_trans_num_feature_vector_V_dest_V > internal_trans_num
      ) then
            feature_vector_ready_reg <= '1';
            wait until AESL_clock'event and AESL_clock = '1';
            feature_vector_ready_reg <= '0';
            internal_trans_num := internal_trans_num + 1;
        else
            wait until AESL_clock'event and AESL_clock = '1';
        end if;
    end loop;
    feature_vector_ready_reg <= '0';
    wait;
end process;
gen_clock_counter_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_clk_counter <= 0;
        AESL_start_p1 <= '0';
        AESL_ready_p1 <= '0';
    else
        AESL_clk_counter <= AESL_clk_counter + 1;
        AESL_start_p1 <= AESL_start;
        AESL_ready_p1 <= AESL_ready;
    end if;
  end if;
end process;

gen_mLatcnterout_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
          AESL_mLatCnterOut_addr := 0;
          AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter + 1 ;
          reported_stuck_cnt := 0;
      else
          if (AESL_done = '1' and AESL_mLatCnterOut_addr < AUTOTB_TRANSACTION_NUM + 1) then
              AESL_mLatCnterOut(AESL_mLatCnterOut_addr) := AESL_clk_counter;
              AESL_mLatCnterOut_addr := AESL_mLatCnterOut_addr + 1;
              reported_stuck <= '0';
          end if;
      end if;
  end if;
end process;

gen_mLatcnterin_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mLatCnterIn_addr := 0;
      else
        if (AESL_mLatCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
          if (AESL_start = '1' and AESL_start_p1 = '0') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          elsif (AESL_start = '1' and AESL_ready_p1 = '1') then
            AESL_mLatCnterIn(AESL_mLatCnterIn_addr) := AESL_clk_counter;
            AESL_mLatCnterIn_addr := AESL_mLatCnterIn_addr + 1;
          end if;
        end if;
      end if;
  end if;
end process;

gen_mThrCnterrIn_proc : process(AESL_clock)
begin
  if (AESL_clock'event and AESL_clock = '1') then
    if(AESL_reset = '0') then
        AESL_mThrCnterIn_addr := 0;
    else
      if (AESL_mThrCnterIn_addr < AUTOTB_TRANSACTION_NUM) then
        if (AESL_start_p1 = '1' and AESL_ready_p1 = '1') then
          AESL_mThrCnterIn(AESL_mThrCnterIn_addr) := AESL_clk_counter;
          AESL_mThrCnterIn_addr := AESL_mThrCnterIn_addr + 1;
        end if;
      end if;
    end if;
  end if;
end process;

gen_performance_check_proc : process
    variable transaction_counter : INTEGER;
    variable i : INTEGER;
    file     fp :   TEXT;
    variable    fstatus         :   FILE_OPEN_STATUS;
    variable    token_line      :   LINE;
    variable    token           :   STRING(1 to 1024);

    variable latthistime : INTEGER;
    variable lattotal : INTEGER;
    variable latmax : INTEGER;
    variable latmin : INTEGER;


    variable thrthistime : INTEGER;
    variable thrtotal : INTEGER;
    variable thrmax : INTEGER;
    variable thrmin : INTEGER;

    variable lataver : INTEGER;
    variable thraver : INTEGER;
    variable total_execute_time : INTEGER;
    type latency_record is array(0 to AUTOTB_TRANSACTION_NUM + 1) of INTEGER;
    variable lat_array : latency_record;
    variable thr_array : latency_record;

begin
    i := 0;
    lattotal  := 0;
    latmax    := 0;
    latmin    := 16#7fffffff#;
    lataver   := 0;

    thrtotal  := 0;
    thrmax    := 0;
    thrmin    := 16#7fffffff#;
    thraver   := 0;

    wait until (AESL_clock'event and AESL_clock = '1');
    wait until (AESL_reset = '1'); 
    while (done_cnt /= AUTOTB_TRANSACTION_NUM) loop
        wait until (AESL_clock'event and AESL_clock = '1');
    end loop;
  wait for 0.001 ns;

    for i in 0 to AUTOTB_TRANSACTION_NUM - 1 loop
        latthistime := AESL_mLatCnterOut(i) - AESL_mLatCnterIn(i);
        lat_array(i) := latthistime;
        if (latthistime > latmax) then
            latmax := latthistime; 
        end if;
        if (latthistime < latmin) then
            latmin := latthistime;
        end if;
		lattotal := lattotal + latthistime;
	end loop;
	lataver := lattotal / AUTOTB_TRANSACTION_NUM;
  if (AUTOTB_TRANSACTION_NUM = 1) then
	  thrthistime := 0;
    thrmin := 0;
    thrmax := 0;
    thrtotal := 0;
    thraver := 0;
	else
    for i in 0 to AUTOTB_TRANSACTION_NUM - 2 loop
      thrthistime := AESL_mLatCnterIn(i + 1) - AESL_mLatCnterIn(i);
      thr_array(i) := thrthistime;
		if (thrthistime > thrmax) then
		    thrmax := thrthistime;
      end if;
		if (thrthistime < thrmin) then
	        thrmin := thrthistime;
      end if;
		thrtotal := thrtotal + thrthistime;
	  end loop;
	  thraver := thrtotal / (AUTOTB_TRANSACTION_NUM - 1);
	end if;
  total_execute_time := lat_total;


    file_open(fstatus, fp, AUTOTB_LAT_RESULT_FILE, WRITE_MODE);
    if (fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_LAT_RESULT_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    else
        write(token_line, "$MAX_LATENCY = " & '"' & integer'image(latmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_LATENCY = " & '"' & integer'image(latmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_LATENCY = " & '"' & integer'image(lataver) & '"');
        writeline(fp, token_line);
        write(token_line, "$MAX_THROUGHPUT = " & '"' & integer'image(thrmax) & '"');
        writeline(fp, token_line);
        write(token_line, "$MIN_THROUGHPUT = " & '"' & integer'image(thrmin) & '"');
        writeline(fp, token_line);
        write(token_line, "$AVER_THROUGHPUT = " & '"' & integer'image(thraver) & '"');
        writeline(fp, token_line);
        write(token_line, "$TOTAL_EXECUTE_TIME = " & '"' & integer'image(total_execute_time) & '"');
        writeline(fp, token_line);
    end if;

    file_close(fp);

    file_open(fstatus, fp, AUTOTB_PER_RESULT_TRANS_FILE, WRITE_MODE);
    if(fstatus /= OPEN_OK) then
        assert false report "Open file " & AUTOTB_PER_RESULT_TRANS_FILE & " failed!!!" severity note;
        assert false report "ERROR: Simulation using HLS TB failed." severity failure;
    end if;

    write(token_line,string'("                            latency            interval"));
    writeline(fp, token_line);
    if (AUTOTB_TRANSACTION_NUM = 1) then
        i := 0;
        thr_array(i) := 0;
        write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
        writeline(fp, token_line);
    else
        for i in 0 to AESL_mLatCnterOut_addr - 1 loop
            write(token_line,"transaction        " & integer'image(i) & "            " & integer'image(lat_array(i) ) & "            " & integer'image(thr_array(i) ) );
            writeline(fp, token_line);
        end loop;
    end if;
    file_close(fp);
    wait;
end process;

calc_lat_total : process(AESL_clock)
begin
    if (AESL_clock'event and AESL_clock = '1') then
        if (done_cnt = AUTOTB_TRANSACTION_NUM - 1 and AESL_done = '1') then
            lat_total <= AESL_clk_counter - AESL_mLatCnterIn(0);
        end if;
    end if;
end process;
end behav;
