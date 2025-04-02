// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      matrix_matrix_mult_streaming
`define AUTOTB_DUT_INST AESL_inst_matrix_matrix_mult_streaming
`define AUTOTB_TOP      apatb_matrix_matrix_mult_streaming_top
`define AUTOTB_LAT_RESULT_FILE "matrix_matrix_mult_streaming.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "matrix_matrix_mult_streaming.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_matrix_matrix_mult_streaming_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_BRAM_A_0 AESL_autobram_A_0
`define AESL_BRAM_INST_A_0 bram_inst_A_0
`define AESL_BRAM_A_1 AESL_autobram_A_1
`define AESL_BRAM_INST_A_1 bram_inst_A_1
`define AESL_BRAM_A_2 AESL_autobram_A_2
`define AESL_BRAM_INST_A_2 bram_inst_A_2
`define AESL_BRAM_A_3 AESL_autobram_A_3
`define AESL_BRAM_INST_A_3 bram_inst_A_3
`define AESL_BRAM_A_4 AESL_autobram_A_4
`define AESL_BRAM_INST_A_4 bram_inst_A_4
`define AESL_BRAM_A_5 AESL_autobram_A_5
`define AESL_BRAM_INST_A_5 bram_inst_A_5
`define AESL_BRAM_A_6 AESL_autobram_A_6
`define AESL_BRAM_INST_A_6 bram_inst_A_6
`define AESL_BRAM_A_7 AESL_autobram_A_7
`define AESL_BRAM_INST_A_7 bram_inst_A_7
`define AESL_BRAM_A_8 AESL_autobram_A_8
`define AESL_BRAM_INST_A_8 bram_inst_A_8
`define AESL_BRAM_A_9 AESL_autobram_A_9
`define AESL_BRAM_INST_A_9 bram_inst_A_9
`define AESL_BRAM_A_10 AESL_autobram_A_10
`define AESL_BRAM_INST_A_10 bram_inst_A_10
`define AESL_BRAM_A_11 AESL_autobram_A_11
`define AESL_BRAM_INST_A_11 bram_inst_A_11
`define AESL_BRAM_A_12 AESL_autobram_A_12
`define AESL_BRAM_INST_A_12 bram_inst_A_12
`define AESL_BRAM_A_13 AESL_autobram_A_13
`define AESL_BRAM_INST_A_13 bram_inst_A_13
`define AESL_BRAM_A_14 AESL_autobram_A_14
`define AESL_BRAM_INST_A_14 bram_inst_A_14
`define AESL_BRAM_A_15 AESL_autobram_A_15
`define AESL_BRAM_INST_A_15 bram_inst_A_15
`define AESL_BRAM_A_16 AESL_autobram_A_16
`define AESL_BRAM_INST_A_16 bram_inst_A_16
`define AESL_BRAM_A_17 AESL_autobram_A_17
`define AESL_BRAM_INST_A_17 bram_inst_A_17
`define AESL_BRAM_A_18 AESL_autobram_A_18
`define AESL_BRAM_INST_A_18 bram_inst_A_18
`define AESL_BRAM_A_19 AESL_autobram_A_19
`define AESL_BRAM_INST_A_19 bram_inst_A_19
`define AESL_BRAM_A_20 AESL_autobram_A_20
`define AESL_BRAM_INST_A_20 bram_inst_A_20
`define AESL_BRAM_A_21 AESL_autobram_A_21
`define AESL_BRAM_INST_A_21 bram_inst_A_21
`define AESL_BRAM_A_22 AESL_autobram_A_22
`define AESL_BRAM_INST_A_22 bram_inst_A_22
`define AESL_BRAM_A_23 AESL_autobram_A_23
`define AESL_BRAM_INST_A_23 bram_inst_A_23
`define AESL_BRAM_A_24 AESL_autobram_A_24
`define AESL_BRAM_INST_A_24 bram_inst_A_24
`define AESL_BRAM_A_25 AESL_autobram_A_25
`define AESL_BRAM_INST_A_25 bram_inst_A_25
`define AESL_BRAM_A_26 AESL_autobram_A_26
`define AESL_BRAM_INST_A_26 bram_inst_A_26
`define AESL_BRAM_A_27 AESL_autobram_A_27
`define AESL_BRAM_INST_A_27 bram_inst_A_27
`define AESL_BRAM_A_28 AESL_autobram_A_28
`define AESL_BRAM_INST_A_28 bram_inst_A_28
`define AESL_BRAM_A_29 AESL_autobram_A_29
`define AESL_BRAM_INST_A_29 bram_inst_A_29
`define AESL_BRAM_A_30 AESL_autobram_A_30
`define AESL_BRAM_INST_A_30 bram_inst_A_30
`define AESL_BRAM_A_31 AESL_autobram_A_31
`define AESL_BRAM_INST_A_31 bram_inst_A_31
`define AESL_BRAM_B_0 AESL_autobram_B_0
`define AESL_BRAM_INST_B_0 bram_inst_B_0
`define AESL_BRAM_B_1 AESL_autobram_B_1
`define AESL_BRAM_INST_B_1 bram_inst_B_1
`define AESL_BRAM_B_2 AESL_autobram_B_2
`define AESL_BRAM_INST_B_2 bram_inst_B_2
`define AESL_BRAM_B_3 AESL_autobram_B_3
`define AESL_BRAM_INST_B_3 bram_inst_B_3
`define AESL_BRAM_B_4 AESL_autobram_B_4
`define AESL_BRAM_INST_B_4 bram_inst_B_4
`define AESL_BRAM_B_5 AESL_autobram_B_5
`define AESL_BRAM_INST_B_5 bram_inst_B_5
`define AESL_BRAM_B_6 AESL_autobram_B_6
`define AESL_BRAM_INST_B_6 bram_inst_B_6
`define AESL_BRAM_B_7 AESL_autobram_B_7
`define AESL_BRAM_INST_B_7 bram_inst_B_7
`define AESL_BRAM_B_8 AESL_autobram_B_8
`define AESL_BRAM_INST_B_8 bram_inst_B_8
`define AESL_BRAM_B_9 AESL_autobram_B_9
`define AESL_BRAM_INST_B_9 bram_inst_B_9
`define AESL_BRAM_B_10 AESL_autobram_B_10
`define AESL_BRAM_INST_B_10 bram_inst_B_10
`define AESL_BRAM_B_11 AESL_autobram_B_11
`define AESL_BRAM_INST_B_11 bram_inst_B_11
`define AESL_BRAM_B_12 AESL_autobram_B_12
`define AESL_BRAM_INST_B_12 bram_inst_B_12
`define AESL_BRAM_B_13 AESL_autobram_B_13
`define AESL_BRAM_INST_B_13 bram_inst_B_13
`define AESL_BRAM_B_14 AESL_autobram_B_14
`define AESL_BRAM_INST_B_14 bram_inst_B_14
`define AESL_BRAM_B_15 AESL_autobram_B_15
`define AESL_BRAM_INST_B_15 bram_inst_B_15
`define AESL_BRAM_B_16 AESL_autobram_B_16
`define AESL_BRAM_INST_B_16 bram_inst_B_16
`define AESL_BRAM_B_17 AESL_autobram_B_17
`define AESL_BRAM_INST_B_17 bram_inst_B_17
`define AESL_BRAM_B_18 AESL_autobram_B_18
`define AESL_BRAM_INST_B_18 bram_inst_B_18
`define AESL_BRAM_B_19 AESL_autobram_B_19
`define AESL_BRAM_INST_B_19 bram_inst_B_19
`define AESL_BRAM_B_20 AESL_autobram_B_20
`define AESL_BRAM_INST_B_20 bram_inst_B_20
`define AESL_BRAM_B_21 AESL_autobram_B_21
`define AESL_BRAM_INST_B_21 bram_inst_B_21
`define AESL_BRAM_B_22 AESL_autobram_B_22
`define AESL_BRAM_INST_B_22 bram_inst_B_22
`define AESL_BRAM_B_23 AESL_autobram_B_23
`define AESL_BRAM_INST_B_23 bram_inst_B_23
`define AESL_BRAM_B_24 AESL_autobram_B_24
`define AESL_BRAM_INST_B_24 bram_inst_B_24
`define AESL_BRAM_B_25 AESL_autobram_B_25
`define AESL_BRAM_INST_B_25 bram_inst_B_25
`define AESL_BRAM_B_26 AESL_autobram_B_26
`define AESL_BRAM_INST_B_26 bram_inst_B_26
`define AESL_BRAM_B_27 AESL_autobram_B_27
`define AESL_BRAM_INST_B_27 bram_inst_B_27
`define AESL_BRAM_B_28 AESL_autobram_B_28
`define AESL_BRAM_INST_B_28 bram_inst_B_28
`define AESL_BRAM_B_29 AESL_autobram_B_29
`define AESL_BRAM_INST_B_29 bram_inst_B_29
`define AESL_BRAM_B_30 AESL_autobram_B_30
`define AESL_BRAM_INST_B_30 bram_inst_B_30
`define AESL_BRAM_B_31 AESL_autobram_B_31
`define AESL_BRAM_INST_B_31 bram_inst_B_31
`define AESL_DEPTH_feature_vector_V_data_V 1
`define AESL_DEPTH_feature_vector_V_keep_V 1
`define AESL_DEPTH_feature_vector_V_strb_V 1
`define AESL_DEPTH_feature_vector_V_user_V 1
`define AESL_DEPTH_feature_vector_V_last_V 1
`define AESL_DEPTH_feature_vector_V_id_V 1
`define AESL_DEPTH_feature_vector_V_dest_V 1
`define AESL_MEM_scores AESL_automem_scores
`define AESL_MEM_INST_scores mem_inst_scores
`define AUTOTB_TVIN_A_0  "./c.matrix_matrix_mult_streaming.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1  "./c.matrix_matrix_mult_streaming.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2  "./c.matrix_matrix_mult_streaming.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3  "./c.matrix_matrix_mult_streaming.autotvin_A_3.dat"
`define AUTOTB_TVIN_A_4  "./c.matrix_matrix_mult_streaming.autotvin_A_4.dat"
`define AUTOTB_TVIN_A_5  "./c.matrix_matrix_mult_streaming.autotvin_A_5.dat"
`define AUTOTB_TVIN_A_6  "./c.matrix_matrix_mult_streaming.autotvin_A_6.dat"
`define AUTOTB_TVIN_A_7  "./c.matrix_matrix_mult_streaming.autotvin_A_7.dat"
`define AUTOTB_TVIN_A_8  "./c.matrix_matrix_mult_streaming.autotvin_A_8.dat"
`define AUTOTB_TVIN_A_9  "./c.matrix_matrix_mult_streaming.autotvin_A_9.dat"
`define AUTOTB_TVIN_A_10  "./c.matrix_matrix_mult_streaming.autotvin_A_10.dat"
`define AUTOTB_TVIN_A_11  "./c.matrix_matrix_mult_streaming.autotvin_A_11.dat"
`define AUTOTB_TVIN_A_12  "./c.matrix_matrix_mult_streaming.autotvin_A_12.dat"
`define AUTOTB_TVIN_A_13  "./c.matrix_matrix_mult_streaming.autotvin_A_13.dat"
`define AUTOTB_TVIN_A_14  "./c.matrix_matrix_mult_streaming.autotvin_A_14.dat"
`define AUTOTB_TVIN_A_15  "./c.matrix_matrix_mult_streaming.autotvin_A_15.dat"
`define AUTOTB_TVIN_A_16  "./c.matrix_matrix_mult_streaming.autotvin_A_16.dat"
`define AUTOTB_TVIN_A_17  "./c.matrix_matrix_mult_streaming.autotvin_A_17.dat"
`define AUTOTB_TVIN_A_18  "./c.matrix_matrix_mult_streaming.autotvin_A_18.dat"
`define AUTOTB_TVIN_A_19  "./c.matrix_matrix_mult_streaming.autotvin_A_19.dat"
`define AUTOTB_TVIN_A_20  "./c.matrix_matrix_mult_streaming.autotvin_A_20.dat"
`define AUTOTB_TVIN_A_21  "./c.matrix_matrix_mult_streaming.autotvin_A_21.dat"
`define AUTOTB_TVIN_A_22  "./c.matrix_matrix_mult_streaming.autotvin_A_22.dat"
`define AUTOTB_TVIN_A_23  "./c.matrix_matrix_mult_streaming.autotvin_A_23.dat"
`define AUTOTB_TVIN_A_24  "./c.matrix_matrix_mult_streaming.autotvin_A_24.dat"
`define AUTOTB_TVIN_A_25  "./c.matrix_matrix_mult_streaming.autotvin_A_25.dat"
`define AUTOTB_TVIN_A_26  "./c.matrix_matrix_mult_streaming.autotvin_A_26.dat"
`define AUTOTB_TVIN_A_27  "./c.matrix_matrix_mult_streaming.autotvin_A_27.dat"
`define AUTOTB_TVIN_A_28  "./c.matrix_matrix_mult_streaming.autotvin_A_28.dat"
`define AUTOTB_TVIN_A_29  "./c.matrix_matrix_mult_streaming.autotvin_A_29.dat"
`define AUTOTB_TVIN_A_30  "./c.matrix_matrix_mult_streaming.autotvin_A_30.dat"
`define AUTOTB_TVIN_A_31  "./c.matrix_matrix_mult_streaming.autotvin_A_31.dat"
`define AUTOTB_TVIN_B_0  "./c.matrix_matrix_mult_streaming.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1  "./c.matrix_matrix_mult_streaming.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2  "./c.matrix_matrix_mult_streaming.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3  "./c.matrix_matrix_mult_streaming.autotvin_B_3.dat"
`define AUTOTB_TVIN_B_4  "./c.matrix_matrix_mult_streaming.autotvin_B_4.dat"
`define AUTOTB_TVIN_B_5  "./c.matrix_matrix_mult_streaming.autotvin_B_5.dat"
`define AUTOTB_TVIN_B_6  "./c.matrix_matrix_mult_streaming.autotvin_B_6.dat"
`define AUTOTB_TVIN_B_7  "./c.matrix_matrix_mult_streaming.autotvin_B_7.dat"
`define AUTOTB_TVIN_B_8  "./c.matrix_matrix_mult_streaming.autotvin_B_8.dat"
`define AUTOTB_TVIN_B_9  "./c.matrix_matrix_mult_streaming.autotvin_B_9.dat"
`define AUTOTB_TVIN_B_10  "./c.matrix_matrix_mult_streaming.autotvin_B_10.dat"
`define AUTOTB_TVIN_B_11  "./c.matrix_matrix_mult_streaming.autotvin_B_11.dat"
`define AUTOTB_TVIN_B_12  "./c.matrix_matrix_mult_streaming.autotvin_B_12.dat"
`define AUTOTB_TVIN_B_13  "./c.matrix_matrix_mult_streaming.autotvin_B_13.dat"
`define AUTOTB_TVIN_B_14  "./c.matrix_matrix_mult_streaming.autotvin_B_14.dat"
`define AUTOTB_TVIN_B_15  "./c.matrix_matrix_mult_streaming.autotvin_B_15.dat"
`define AUTOTB_TVIN_B_16  "./c.matrix_matrix_mult_streaming.autotvin_B_16.dat"
`define AUTOTB_TVIN_B_17  "./c.matrix_matrix_mult_streaming.autotvin_B_17.dat"
`define AUTOTB_TVIN_B_18  "./c.matrix_matrix_mult_streaming.autotvin_B_18.dat"
`define AUTOTB_TVIN_B_19  "./c.matrix_matrix_mult_streaming.autotvin_B_19.dat"
`define AUTOTB_TVIN_B_20  "./c.matrix_matrix_mult_streaming.autotvin_B_20.dat"
`define AUTOTB_TVIN_B_21  "./c.matrix_matrix_mult_streaming.autotvin_B_21.dat"
`define AUTOTB_TVIN_B_22  "./c.matrix_matrix_mult_streaming.autotvin_B_22.dat"
`define AUTOTB_TVIN_B_23  "./c.matrix_matrix_mult_streaming.autotvin_B_23.dat"
`define AUTOTB_TVIN_B_24  "./c.matrix_matrix_mult_streaming.autotvin_B_24.dat"
`define AUTOTB_TVIN_B_25  "./c.matrix_matrix_mult_streaming.autotvin_B_25.dat"
`define AUTOTB_TVIN_B_26  "./c.matrix_matrix_mult_streaming.autotvin_B_26.dat"
`define AUTOTB_TVIN_B_27  "./c.matrix_matrix_mult_streaming.autotvin_B_27.dat"
`define AUTOTB_TVIN_B_28  "./c.matrix_matrix_mult_streaming.autotvin_B_28.dat"
`define AUTOTB_TVIN_B_29  "./c.matrix_matrix_mult_streaming.autotvin_B_29.dat"
`define AUTOTB_TVIN_B_30  "./c.matrix_matrix_mult_streaming.autotvin_B_30.dat"
`define AUTOTB_TVIN_B_31  "./c.matrix_matrix_mult_streaming.autotvin_B_31.dat"
`define AUTOTB_TVIN_feature_vector_V_data_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector_V_keep_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector_V_strb_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector_V_user_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector_V_last_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector_V_id_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector_V_dest_V  "./c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat"
`define AUTOTB_TVIN_scores  "./c.matrix_matrix_mult_streaming.autotvin_scores.dat"
`define AUTOTB_TVIN_A_0_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_0.dat"
`define AUTOTB_TVIN_A_1_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_1.dat"
`define AUTOTB_TVIN_A_2_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_2.dat"
`define AUTOTB_TVIN_A_3_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_3.dat"
`define AUTOTB_TVIN_A_4_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_4.dat"
`define AUTOTB_TVIN_A_5_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_5.dat"
`define AUTOTB_TVIN_A_6_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_6.dat"
`define AUTOTB_TVIN_A_7_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_7.dat"
`define AUTOTB_TVIN_A_8_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_8.dat"
`define AUTOTB_TVIN_A_9_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_9.dat"
`define AUTOTB_TVIN_A_10_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_10.dat"
`define AUTOTB_TVIN_A_11_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_11.dat"
`define AUTOTB_TVIN_A_12_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_12.dat"
`define AUTOTB_TVIN_A_13_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_13.dat"
`define AUTOTB_TVIN_A_14_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_14.dat"
`define AUTOTB_TVIN_A_15_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_15.dat"
`define AUTOTB_TVIN_A_16_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_16.dat"
`define AUTOTB_TVIN_A_17_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_17.dat"
`define AUTOTB_TVIN_A_18_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_18.dat"
`define AUTOTB_TVIN_A_19_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_19.dat"
`define AUTOTB_TVIN_A_20_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_20.dat"
`define AUTOTB_TVIN_A_21_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_21.dat"
`define AUTOTB_TVIN_A_22_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_22.dat"
`define AUTOTB_TVIN_A_23_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_23.dat"
`define AUTOTB_TVIN_A_24_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_24.dat"
`define AUTOTB_TVIN_A_25_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_25.dat"
`define AUTOTB_TVIN_A_26_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_26.dat"
`define AUTOTB_TVIN_A_27_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_27.dat"
`define AUTOTB_TVIN_A_28_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_28.dat"
`define AUTOTB_TVIN_A_29_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_29.dat"
`define AUTOTB_TVIN_A_30_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_30.dat"
`define AUTOTB_TVIN_A_31_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_A_31.dat"
`define AUTOTB_TVIN_B_0_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_0.dat"
`define AUTOTB_TVIN_B_1_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_1.dat"
`define AUTOTB_TVIN_B_2_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_2.dat"
`define AUTOTB_TVIN_B_3_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_3.dat"
`define AUTOTB_TVIN_B_4_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_4.dat"
`define AUTOTB_TVIN_B_5_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_5.dat"
`define AUTOTB_TVIN_B_6_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_6.dat"
`define AUTOTB_TVIN_B_7_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_7.dat"
`define AUTOTB_TVIN_B_8_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_8.dat"
`define AUTOTB_TVIN_B_9_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_9.dat"
`define AUTOTB_TVIN_B_10_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_10.dat"
`define AUTOTB_TVIN_B_11_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_11.dat"
`define AUTOTB_TVIN_B_12_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_12.dat"
`define AUTOTB_TVIN_B_13_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_13.dat"
`define AUTOTB_TVIN_B_14_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_14.dat"
`define AUTOTB_TVIN_B_15_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_15.dat"
`define AUTOTB_TVIN_B_16_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_16.dat"
`define AUTOTB_TVIN_B_17_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_17.dat"
`define AUTOTB_TVIN_B_18_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_18.dat"
`define AUTOTB_TVIN_B_19_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_19.dat"
`define AUTOTB_TVIN_B_20_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_20.dat"
`define AUTOTB_TVIN_B_21_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_21.dat"
`define AUTOTB_TVIN_B_22_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_22.dat"
`define AUTOTB_TVIN_B_23_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_23.dat"
`define AUTOTB_TVIN_B_24_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_24.dat"
`define AUTOTB_TVIN_B_25_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_25.dat"
`define AUTOTB_TVIN_B_26_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_26.dat"
`define AUTOTB_TVIN_B_27_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_27.dat"
`define AUTOTB_TVIN_B_28_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_28.dat"
`define AUTOTB_TVIN_B_29_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_29.dat"
`define AUTOTB_TVIN_B_30_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_30.dat"
`define AUTOTB_TVIN_B_31_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_B_31.dat"
`define AUTOTB_TVIN_feature_vector_V_data_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat"
`define AUTOTB_TVIN_feature_vector_V_keep_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat"
`define AUTOTB_TVIN_feature_vector_V_strb_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat"
`define AUTOTB_TVIN_feature_vector_V_user_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat"
`define AUTOTB_TVIN_feature_vector_V_last_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat"
`define AUTOTB_TVIN_feature_vector_V_id_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat"
`define AUTOTB_TVIN_feature_vector_V_dest_V_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat"
`define AUTOTB_TVIN_scores_out_wrapc  "./rtl.matrix_matrix_mult_streaming.autotvin_scores.dat"
`define AUTOTB_TVOUT_scores  "./c.matrix_matrix_mult_streaming.autotvout_scores.dat"
`define AUTOTB_TVOUT_scores_out_wrapc  "./impl_rtl.matrix_matrix_mult_streaming.autotvout_scores.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 421;
parameter LENGTH_A_0 = 32;
parameter LENGTH_A_1 = 32;
parameter LENGTH_A_2 = 32;
parameter LENGTH_A_3 = 32;
parameter LENGTH_A_4 = 32;
parameter LENGTH_A_5 = 32;
parameter LENGTH_A_6 = 32;
parameter LENGTH_A_7 = 32;
parameter LENGTH_A_8 = 32;
parameter LENGTH_A_9 = 32;
parameter LENGTH_A_10 = 32;
parameter LENGTH_A_11 = 32;
parameter LENGTH_A_12 = 32;
parameter LENGTH_A_13 = 32;
parameter LENGTH_A_14 = 32;
parameter LENGTH_A_15 = 32;
parameter LENGTH_A_16 = 32;
parameter LENGTH_A_17 = 32;
parameter LENGTH_A_18 = 32;
parameter LENGTH_A_19 = 32;
parameter LENGTH_A_20 = 32;
parameter LENGTH_A_21 = 32;
parameter LENGTH_A_22 = 32;
parameter LENGTH_A_23 = 32;
parameter LENGTH_A_24 = 32;
parameter LENGTH_A_25 = 32;
parameter LENGTH_A_26 = 32;
parameter LENGTH_A_27 = 32;
parameter LENGTH_A_28 = 32;
parameter LENGTH_A_29 = 32;
parameter LENGTH_A_30 = 32;
parameter LENGTH_A_31 = 32;
parameter LENGTH_B_0 = 10;
parameter LENGTH_B_1 = 10;
parameter LENGTH_B_2 = 10;
parameter LENGTH_B_3 = 10;
parameter LENGTH_B_4 = 10;
parameter LENGTH_B_5 = 10;
parameter LENGTH_B_6 = 10;
parameter LENGTH_B_7 = 10;
parameter LENGTH_B_8 = 10;
parameter LENGTH_B_9 = 10;
parameter LENGTH_B_10 = 10;
parameter LENGTH_B_11 = 10;
parameter LENGTH_B_12 = 10;
parameter LENGTH_B_13 = 10;
parameter LENGTH_B_14 = 10;
parameter LENGTH_B_15 = 10;
parameter LENGTH_B_16 = 10;
parameter LENGTH_B_17 = 10;
parameter LENGTH_B_18 = 10;
parameter LENGTH_B_19 = 10;
parameter LENGTH_B_20 = 10;
parameter LENGTH_B_21 = 10;
parameter LENGTH_B_22 = 10;
parameter LENGTH_B_23 = 10;
parameter LENGTH_B_24 = 10;
parameter LENGTH_B_25 = 10;
parameter LENGTH_B_26 = 10;
parameter LENGTH_B_27 = 10;
parameter LENGTH_B_28 = 10;
parameter LENGTH_B_29 = 10;
parameter LENGTH_B_30 = 10;
parameter LENGTH_B_31 = 10;
parameter LENGTH_feature_vector_V_data_V = 32;
parameter LENGTH_feature_vector_V_keep_V = 32;
parameter LENGTH_feature_vector_V_strb_V = 32;
parameter LENGTH_feature_vector_V_user_V = 32;
parameter LENGTH_feature_vector_V_last_V = 32;
parameter LENGTH_feature_vector_V_id_V = 32;
parameter LENGTH_feature_vector_V_dest_V = 32;
parameter LENGTH_scores = 10;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [279 : 0] token1;
    reg [279 : 0] token2;
    reg [279 : 0] golden;
    reg [279 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] CTRL_BUS_AWADDR;
wire  CTRL_BUS_AWVALID;
wire  CTRL_BUS_AWREADY;
wire  CTRL_BUS_WVALID;
wire  CTRL_BUS_WREADY;
wire [31 : 0] CTRL_BUS_WDATA;
wire [3 : 0] CTRL_BUS_WSTRB;
wire [3 : 0] CTRL_BUS_ARADDR;
wire  CTRL_BUS_ARVALID;
wire  CTRL_BUS_ARREADY;
wire  CTRL_BUS_RVALID;
wire  CTRL_BUS_RREADY;
wire [31 : 0] CTRL_BUS_RDATA;
wire [1 : 0] CTRL_BUS_RRESP;
wire  CTRL_BUS_BVALID;
wire  CTRL_BUS_BREADY;
wire [1 : 0] CTRL_BUS_BRESP;
wire  CTRL_BUS_INTERRUPT;
wire [31 : 0] A_0_ADDR_A;
wire  A_0_EN_A;
wire [15 : 0] A_0_WEN_A;
wire [127 : 0] A_0_DIN_A;
wire [127 : 0] A_0_DOUT_A;
wire  A_0_CLK_A;
wire  A_0_RST_A;
wire [31 : 0] A_1_ADDR_A;
wire  A_1_EN_A;
wire [15 : 0] A_1_WEN_A;
wire [127 : 0] A_1_DIN_A;
wire [127 : 0] A_1_DOUT_A;
wire  A_1_CLK_A;
wire  A_1_RST_A;
wire [31 : 0] A_2_ADDR_A;
wire  A_2_EN_A;
wire [15 : 0] A_2_WEN_A;
wire [127 : 0] A_2_DIN_A;
wire [127 : 0] A_2_DOUT_A;
wire  A_2_CLK_A;
wire  A_2_RST_A;
wire [31 : 0] A_3_ADDR_A;
wire  A_3_EN_A;
wire [15 : 0] A_3_WEN_A;
wire [127 : 0] A_3_DIN_A;
wire [127 : 0] A_3_DOUT_A;
wire  A_3_CLK_A;
wire  A_3_RST_A;
wire [31 : 0] A_4_ADDR_A;
wire  A_4_EN_A;
wire [15 : 0] A_4_WEN_A;
wire [127 : 0] A_4_DIN_A;
wire [127 : 0] A_4_DOUT_A;
wire  A_4_CLK_A;
wire  A_4_RST_A;
wire [31 : 0] A_5_ADDR_A;
wire  A_5_EN_A;
wire [15 : 0] A_5_WEN_A;
wire [127 : 0] A_5_DIN_A;
wire [127 : 0] A_5_DOUT_A;
wire  A_5_CLK_A;
wire  A_5_RST_A;
wire [31 : 0] A_6_ADDR_A;
wire  A_6_EN_A;
wire [15 : 0] A_6_WEN_A;
wire [127 : 0] A_6_DIN_A;
wire [127 : 0] A_6_DOUT_A;
wire  A_6_CLK_A;
wire  A_6_RST_A;
wire [31 : 0] A_7_ADDR_A;
wire  A_7_EN_A;
wire [15 : 0] A_7_WEN_A;
wire [127 : 0] A_7_DIN_A;
wire [127 : 0] A_7_DOUT_A;
wire  A_7_CLK_A;
wire  A_7_RST_A;
wire [31 : 0] A_8_ADDR_A;
wire  A_8_EN_A;
wire [15 : 0] A_8_WEN_A;
wire [127 : 0] A_8_DIN_A;
wire [127 : 0] A_8_DOUT_A;
wire  A_8_CLK_A;
wire  A_8_RST_A;
wire [31 : 0] A_9_ADDR_A;
wire  A_9_EN_A;
wire [15 : 0] A_9_WEN_A;
wire [127 : 0] A_9_DIN_A;
wire [127 : 0] A_9_DOUT_A;
wire  A_9_CLK_A;
wire  A_9_RST_A;
wire [31 : 0] A_10_ADDR_A;
wire  A_10_EN_A;
wire [15 : 0] A_10_WEN_A;
wire [127 : 0] A_10_DIN_A;
wire [127 : 0] A_10_DOUT_A;
wire  A_10_CLK_A;
wire  A_10_RST_A;
wire [31 : 0] A_11_ADDR_A;
wire  A_11_EN_A;
wire [15 : 0] A_11_WEN_A;
wire [127 : 0] A_11_DIN_A;
wire [127 : 0] A_11_DOUT_A;
wire  A_11_CLK_A;
wire  A_11_RST_A;
wire [31 : 0] A_12_ADDR_A;
wire  A_12_EN_A;
wire [15 : 0] A_12_WEN_A;
wire [127 : 0] A_12_DIN_A;
wire [127 : 0] A_12_DOUT_A;
wire  A_12_CLK_A;
wire  A_12_RST_A;
wire [31 : 0] A_13_ADDR_A;
wire  A_13_EN_A;
wire [15 : 0] A_13_WEN_A;
wire [127 : 0] A_13_DIN_A;
wire [127 : 0] A_13_DOUT_A;
wire  A_13_CLK_A;
wire  A_13_RST_A;
wire [31 : 0] A_14_ADDR_A;
wire  A_14_EN_A;
wire [15 : 0] A_14_WEN_A;
wire [127 : 0] A_14_DIN_A;
wire [127 : 0] A_14_DOUT_A;
wire  A_14_CLK_A;
wire  A_14_RST_A;
wire [31 : 0] A_15_ADDR_A;
wire  A_15_EN_A;
wire [15 : 0] A_15_WEN_A;
wire [127 : 0] A_15_DIN_A;
wire [127 : 0] A_15_DOUT_A;
wire  A_15_CLK_A;
wire  A_15_RST_A;
wire [31 : 0] A_16_ADDR_A;
wire  A_16_EN_A;
wire [15 : 0] A_16_WEN_A;
wire [127 : 0] A_16_DIN_A;
wire [127 : 0] A_16_DOUT_A;
wire  A_16_CLK_A;
wire  A_16_RST_A;
wire [31 : 0] A_17_ADDR_A;
wire  A_17_EN_A;
wire [15 : 0] A_17_WEN_A;
wire [127 : 0] A_17_DIN_A;
wire [127 : 0] A_17_DOUT_A;
wire  A_17_CLK_A;
wire  A_17_RST_A;
wire [31 : 0] A_18_ADDR_A;
wire  A_18_EN_A;
wire [15 : 0] A_18_WEN_A;
wire [127 : 0] A_18_DIN_A;
wire [127 : 0] A_18_DOUT_A;
wire  A_18_CLK_A;
wire  A_18_RST_A;
wire [31 : 0] A_19_ADDR_A;
wire  A_19_EN_A;
wire [15 : 0] A_19_WEN_A;
wire [127 : 0] A_19_DIN_A;
wire [127 : 0] A_19_DOUT_A;
wire  A_19_CLK_A;
wire  A_19_RST_A;
wire [31 : 0] A_20_ADDR_A;
wire  A_20_EN_A;
wire [15 : 0] A_20_WEN_A;
wire [127 : 0] A_20_DIN_A;
wire [127 : 0] A_20_DOUT_A;
wire  A_20_CLK_A;
wire  A_20_RST_A;
wire [31 : 0] A_21_ADDR_A;
wire  A_21_EN_A;
wire [15 : 0] A_21_WEN_A;
wire [127 : 0] A_21_DIN_A;
wire [127 : 0] A_21_DOUT_A;
wire  A_21_CLK_A;
wire  A_21_RST_A;
wire [31 : 0] A_22_ADDR_A;
wire  A_22_EN_A;
wire [15 : 0] A_22_WEN_A;
wire [127 : 0] A_22_DIN_A;
wire [127 : 0] A_22_DOUT_A;
wire  A_22_CLK_A;
wire  A_22_RST_A;
wire [31 : 0] A_23_ADDR_A;
wire  A_23_EN_A;
wire [15 : 0] A_23_WEN_A;
wire [127 : 0] A_23_DIN_A;
wire [127 : 0] A_23_DOUT_A;
wire  A_23_CLK_A;
wire  A_23_RST_A;
wire [31 : 0] A_24_ADDR_A;
wire  A_24_EN_A;
wire [15 : 0] A_24_WEN_A;
wire [127 : 0] A_24_DIN_A;
wire [127 : 0] A_24_DOUT_A;
wire  A_24_CLK_A;
wire  A_24_RST_A;
wire [31 : 0] A_25_ADDR_A;
wire  A_25_EN_A;
wire [15 : 0] A_25_WEN_A;
wire [127 : 0] A_25_DIN_A;
wire [127 : 0] A_25_DOUT_A;
wire  A_25_CLK_A;
wire  A_25_RST_A;
wire [31 : 0] A_26_ADDR_A;
wire  A_26_EN_A;
wire [15 : 0] A_26_WEN_A;
wire [127 : 0] A_26_DIN_A;
wire [127 : 0] A_26_DOUT_A;
wire  A_26_CLK_A;
wire  A_26_RST_A;
wire [31 : 0] A_27_ADDR_A;
wire  A_27_EN_A;
wire [15 : 0] A_27_WEN_A;
wire [127 : 0] A_27_DIN_A;
wire [127 : 0] A_27_DOUT_A;
wire  A_27_CLK_A;
wire  A_27_RST_A;
wire [31 : 0] A_28_ADDR_A;
wire  A_28_EN_A;
wire [15 : 0] A_28_WEN_A;
wire [127 : 0] A_28_DIN_A;
wire [127 : 0] A_28_DOUT_A;
wire  A_28_CLK_A;
wire  A_28_RST_A;
wire [31 : 0] A_29_ADDR_A;
wire  A_29_EN_A;
wire [15 : 0] A_29_WEN_A;
wire [127 : 0] A_29_DIN_A;
wire [127 : 0] A_29_DOUT_A;
wire  A_29_CLK_A;
wire  A_29_RST_A;
wire [31 : 0] A_30_ADDR_A;
wire  A_30_EN_A;
wire [15 : 0] A_30_WEN_A;
wire [127 : 0] A_30_DIN_A;
wire [127 : 0] A_30_DOUT_A;
wire  A_30_CLK_A;
wire  A_30_RST_A;
wire [31 : 0] A_31_ADDR_A;
wire  A_31_EN_A;
wire [15 : 0] A_31_WEN_A;
wire [127 : 0] A_31_DIN_A;
wire [127 : 0] A_31_DOUT_A;
wire  A_31_CLK_A;
wire  A_31_RST_A;
wire [31 : 0] B_0_ADDR_A;
wire  B_0_EN_A;
wire [15 : 0] B_0_WEN_A;
wire [127 : 0] B_0_DIN_A;
wire [127 : 0] B_0_DOUT_A;
wire  B_0_CLK_A;
wire  B_0_RST_A;
wire [31 : 0] B_1_ADDR_A;
wire  B_1_EN_A;
wire [15 : 0] B_1_WEN_A;
wire [127 : 0] B_1_DIN_A;
wire [127 : 0] B_1_DOUT_A;
wire  B_1_CLK_A;
wire  B_1_RST_A;
wire [31 : 0] B_2_ADDR_A;
wire  B_2_EN_A;
wire [15 : 0] B_2_WEN_A;
wire [127 : 0] B_2_DIN_A;
wire [127 : 0] B_2_DOUT_A;
wire  B_2_CLK_A;
wire  B_2_RST_A;
wire [31 : 0] B_3_ADDR_A;
wire  B_3_EN_A;
wire [15 : 0] B_3_WEN_A;
wire [127 : 0] B_3_DIN_A;
wire [127 : 0] B_3_DOUT_A;
wire  B_3_CLK_A;
wire  B_3_RST_A;
wire [31 : 0] B_4_ADDR_A;
wire  B_4_EN_A;
wire [15 : 0] B_4_WEN_A;
wire [127 : 0] B_4_DIN_A;
wire [127 : 0] B_4_DOUT_A;
wire  B_4_CLK_A;
wire  B_4_RST_A;
wire [31 : 0] B_5_ADDR_A;
wire  B_5_EN_A;
wire [15 : 0] B_5_WEN_A;
wire [127 : 0] B_5_DIN_A;
wire [127 : 0] B_5_DOUT_A;
wire  B_5_CLK_A;
wire  B_5_RST_A;
wire [31 : 0] B_6_ADDR_A;
wire  B_6_EN_A;
wire [15 : 0] B_6_WEN_A;
wire [127 : 0] B_6_DIN_A;
wire [127 : 0] B_6_DOUT_A;
wire  B_6_CLK_A;
wire  B_6_RST_A;
wire [31 : 0] B_7_ADDR_A;
wire  B_7_EN_A;
wire [15 : 0] B_7_WEN_A;
wire [127 : 0] B_7_DIN_A;
wire [127 : 0] B_7_DOUT_A;
wire  B_7_CLK_A;
wire  B_7_RST_A;
wire [31 : 0] B_8_ADDR_A;
wire  B_8_EN_A;
wire [15 : 0] B_8_WEN_A;
wire [127 : 0] B_8_DIN_A;
wire [127 : 0] B_8_DOUT_A;
wire  B_8_CLK_A;
wire  B_8_RST_A;
wire [31 : 0] B_9_ADDR_A;
wire  B_9_EN_A;
wire [15 : 0] B_9_WEN_A;
wire [127 : 0] B_9_DIN_A;
wire [127 : 0] B_9_DOUT_A;
wire  B_9_CLK_A;
wire  B_9_RST_A;
wire [31 : 0] B_10_ADDR_A;
wire  B_10_EN_A;
wire [15 : 0] B_10_WEN_A;
wire [127 : 0] B_10_DIN_A;
wire [127 : 0] B_10_DOUT_A;
wire  B_10_CLK_A;
wire  B_10_RST_A;
wire [31 : 0] B_11_ADDR_A;
wire  B_11_EN_A;
wire [15 : 0] B_11_WEN_A;
wire [127 : 0] B_11_DIN_A;
wire [127 : 0] B_11_DOUT_A;
wire  B_11_CLK_A;
wire  B_11_RST_A;
wire [31 : 0] B_12_ADDR_A;
wire  B_12_EN_A;
wire [15 : 0] B_12_WEN_A;
wire [127 : 0] B_12_DIN_A;
wire [127 : 0] B_12_DOUT_A;
wire  B_12_CLK_A;
wire  B_12_RST_A;
wire [31 : 0] B_13_ADDR_A;
wire  B_13_EN_A;
wire [15 : 0] B_13_WEN_A;
wire [127 : 0] B_13_DIN_A;
wire [127 : 0] B_13_DOUT_A;
wire  B_13_CLK_A;
wire  B_13_RST_A;
wire [31 : 0] B_14_ADDR_A;
wire  B_14_EN_A;
wire [15 : 0] B_14_WEN_A;
wire [127 : 0] B_14_DIN_A;
wire [127 : 0] B_14_DOUT_A;
wire  B_14_CLK_A;
wire  B_14_RST_A;
wire [31 : 0] B_15_ADDR_A;
wire  B_15_EN_A;
wire [15 : 0] B_15_WEN_A;
wire [127 : 0] B_15_DIN_A;
wire [127 : 0] B_15_DOUT_A;
wire  B_15_CLK_A;
wire  B_15_RST_A;
wire [31 : 0] B_16_ADDR_A;
wire  B_16_EN_A;
wire [15 : 0] B_16_WEN_A;
wire [127 : 0] B_16_DIN_A;
wire [127 : 0] B_16_DOUT_A;
wire  B_16_CLK_A;
wire  B_16_RST_A;
wire [31 : 0] B_17_ADDR_A;
wire  B_17_EN_A;
wire [15 : 0] B_17_WEN_A;
wire [127 : 0] B_17_DIN_A;
wire [127 : 0] B_17_DOUT_A;
wire  B_17_CLK_A;
wire  B_17_RST_A;
wire [31 : 0] B_18_ADDR_A;
wire  B_18_EN_A;
wire [15 : 0] B_18_WEN_A;
wire [127 : 0] B_18_DIN_A;
wire [127 : 0] B_18_DOUT_A;
wire  B_18_CLK_A;
wire  B_18_RST_A;
wire [31 : 0] B_19_ADDR_A;
wire  B_19_EN_A;
wire [15 : 0] B_19_WEN_A;
wire [127 : 0] B_19_DIN_A;
wire [127 : 0] B_19_DOUT_A;
wire  B_19_CLK_A;
wire  B_19_RST_A;
wire [31 : 0] B_20_ADDR_A;
wire  B_20_EN_A;
wire [15 : 0] B_20_WEN_A;
wire [127 : 0] B_20_DIN_A;
wire [127 : 0] B_20_DOUT_A;
wire  B_20_CLK_A;
wire  B_20_RST_A;
wire [31 : 0] B_21_ADDR_A;
wire  B_21_EN_A;
wire [15 : 0] B_21_WEN_A;
wire [127 : 0] B_21_DIN_A;
wire [127 : 0] B_21_DOUT_A;
wire  B_21_CLK_A;
wire  B_21_RST_A;
wire [31 : 0] B_22_ADDR_A;
wire  B_22_EN_A;
wire [15 : 0] B_22_WEN_A;
wire [127 : 0] B_22_DIN_A;
wire [127 : 0] B_22_DOUT_A;
wire  B_22_CLK_A;
wire  B_22_RST_A;
wire [31 : 0] B_23_ADDR_A;
wire  B_23_EN_A;
wire [15 : 0] B_23_WEN_A;
wire [127 : 0] B_23_DIN_A;
wire [127 : 0] B_23_DOUT_A;
wire  B_23_CLK_A;
wire  B_23_RST_A;
wire [31 : 0] B_24_ADDR_A;
wire  B_24_EN_A;
wire [15 : 0] B_24_WEN_A;
wire [127 : 0] B_24_DIN_A;
wire [127 : 0] B_24_DOUT_A;
wire  B_24_CLK_A;
wire  B_24_RST_A;
wire [31 : 0] B_25_ADDR_A;
wire  B_25_EN_A;
wire [15 : 0] B_25_WEN_A;
wire [127 : 0] B_25_DIN_A;
wire [127 : 0] B_25_DOUT_A;
wire  B_25_CLK_A;
wire  B_25_RST_A;
wire [31 : 0] B_26_ADDR_A;
wire  B_26_EN_A;
wire [15 : 0] B_26_WEN_A;
wire [127 : 0] B_26_DIN_A;
wire [127 : 0] B_26_DOUT_A;
wire  B_26_CLK_A;
wire  B_26_RST_A;
wire [31 : 0] B_27_ADDR_A;
wire  B_27_EN_A;
wire [15 : 0] B_27_WEN_A;
wire [127 : 0] B_27_DIN_A;
wire [127 : 0] B_27_DOUT_A;
wire  B_27_CLK_A;
wire  B_27_RST_A;
wire [31 : 0] B_28_ADDR_A;
wire  B_28_EN_A;
wire [15 : 0] B_28_WEN_A;
wire [127 : 0] B_28_DIN_A;
wire [127 : 0] B_28_DOUT_A;
wire  B_28_CLK_A;
wire  B_28_RST_A;
wire [31 : 0] B_29_ADDR_A;
wire  B_29_EN_A;
wire [15 : 0] B_29_WEN_A;
wire [127 : 0] B_29_DIN_A;
wire [127 : 0] B_29_DOUT_A;
wire  B_29_CLK_A;
wire  B_29_RST_A;
wire [31 : 0] B_30_ADDR_A;
wire  B_30_EN_A;
wire [15 : 0] B_30_WEN_A;
wire [127 : 0] B_30_DIN_A;
wire [127 : 0] B_30_DOUT_A;
wire  B_30_CLK_A;
wire  B_30_RST_A;
wire [31 : 0] B_31_ADDR_A;
wire  B_31_EN_A;
wire [15 : 0] B_31_WEN_A;
wire [127 : 0] B_31_DIN_A;
wire [127 : 0] B_31_DOUT_A;
wire  B_31_CLK_A;
wire  B_31_RST_A;
wire [127 : 0] feature_vector_TDATA;
wire  feature_vector_TVALID;
wire  feature_vector_TREADY;
wire [15 : 0] feature_vector_TKEEP;
wire [15 : 0] feature_vector_TSTRB;
wire [1 : 0] feature_vector_TUSER;
wire [0 : 0] feature_vector_TLAST;
wire [4 : 0] feature_vector_TID;
wire [5 : 0] feature_vector_TDEST;
wire [3 : 0] scores_address0;
wire  scores_ce0;
wire  scores_we0;
wire [127 : 0] scores_d0;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_BUS_AWADDR(CTRL_BUS_AWADDR),
    .s_axi_CTRL_BUS_AWVALID(CTRL_BUS_AWVALID),
    .s_axi_CTRL_BUS_AWREADY(CTRL_BUS_AWREADY),
    .s_axi_CTRL_BUS_WVALID(CTRL_BUS_WVALID),
    .s_axi_CTRL_BUS_WREADY(CTRL_BUS_WREADY),
    .s_axi_CTRL_BUS_WDATA(CTRL_BUS_WDATA),
    .s_axi_CTRL_BUS_WSTRB(CTRL_BUS_WSTRB),
    .s_axi_CTRL_BUS_ARADDR(CTRL_BUS_ARADDR),
    .s_axi_CTRL_BUS_ARVALID(CTRL_BUS_ARVALID),
    .s_axi_CTRL_BUS_ARREADY(CTRL_BUS_ARREADY),
    .s_axi_CTRL_BUS_RVALID(CTRL_BUS_RVALID),
    .s_axi_CTRL_BUS_RREADY(CTRL_BUS_RREADY),
    .s_axi_CTRL_BUS_RDATA(CTRL_BUS_RDATA),
    .s_axi_CTRL_BUS_RRESP(CTRL_BUS_RRESP),
    .s_axi_CTRL_BUS_BVALID(CTRL_BUS_BVALID),
    .s_axi_CTRL_BUS_BREADY(CTRL_BUS_BREADY),
    .s_axi_CTRL_BUS_BRESP(CTRL_BUS_BRESP),
    .interrupt(CTRL_BUS_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .A_0_Addr_A(A_0_ADDR_A),
    .A_0_EN_A(A_0_EN_A),
    .A_0_WEN_A(A_0_WEN_A),
    .A_0_Din_A(A_0_DIN_A),
    .A_0_Dout_A(A_0_DOUT_A),
    .A_0_Clk_A(A_0_CLK_A),
    .A_0_Rst_A(A_0_RST_A),
    .A_1_Addr_A(A_1_ADDR_A),
    .A_1_EN_A(A_1_EN_A),
    .A_1_WEN_A(A_1_WEN_A),
    .A_1_Din_A(A_1_DIN_A),
    .A_1_Dout_A(A_1_DOUT_A),
    .A_1_Clk_A(A_1_CLK_A),
    .A_1_Rst_A(A_1_RST_A),
    .A_2_Addr_A(A_2_ADDR_A),
    .A_2_EN_A(A_2_EN_A),
    .A_2_WEN_A(A_2_WEN_A),
    .A_2_Din_A(A_2_DIN_A),
    .A_2_Dout_A(A_2_DOUT_A),
    .A_2_Clk_A(A_2_CLK_A),
    .A_2_Rst_A(A_2_RST_A),
    .A_3_Addr_A(A_3_ADDR_A),
    .A_3_EN_A(A_3_EN_A),
    .A_3_WEN_A(A_3_WEN_A),
    .A_3_Din_A(A_3_DIN_A),
    .A_3_Dout_A(A_3_DOUT_A),
    .A_3_Clk_A(A_3_CLK_A),
    .A_3_Rst_A(A_3_RST_A),
    .A_4_Addr_A(A_4_ADDR_A),
    .A_4_EN_A(A_4_EN_A),
    .A_4_WEN_A(A_4_WEN_A),
    .A_4_Din_A(A_4_DIN_A),
    .A_4_Dout_A(A_4_DOUT_A),
    .A_4_Clk_A(A_4_CLK_A),
    .A_4_Rst_A(A_4_RST_A),
    .A_5_Addr_A(A_5_ADDR_A),
    .A_5_EN_A(A_5_EN_A),
    .A_5_WEN_A(A_5_WEN_A),
    .A_5_Din_A(A_5_DIN_A),
    .A_5_Dout_A(A_5_DOUT_A),
    .A_5_Clk_A(A_5_CLK_A),
    .A_5_Rst_A(A_5_RST_A),
    .A_6_Addr_A(A_6_ADDR_A),
    .A_6_EN_A(A_6_EN_A),
    .A_6_WEN_A(A_6_WEN_A),
    .A_6_Din_A(A_6_DIN_A),
    .A_6_Dout_A(A_6_DOUT_A),
    .A_6_Clk_A(A_6_CLK_A),
    .A_6_Rst_A(A_6_RST_A),
    .A_7_Addr_A(A_7_ADDR_A),
    .A_7_EN_A(A_7_EN_A),
    .A_7_WEN_A(A_7_WEN_A),
    .A_7_Din_A(A_7_DIN_A),
    .A_7_Dout_A(A_7_DOUT_A),
    .A_7_Clk_A(A_7_CLK_A),
    .A_7_Rst_A(A_7_RST_A),
    .A_8_Addr_A(A_8_ADDR_A),
    .A_8_EN_A(A_8_EN_A),
    .A_8_WEN_A(A_8_WEN_A),
    .A_8_Din_A(A_8_DIN_A),
    .A_8_Dout_A(A_8_DOUT_A),
    .A_8_Clk_A(A_8_CLK_A),
    .A_8_Rst_A(A_8_RST_A),
    .A_9_Addr_A(A_9_ADDR_A),
    .A_9_EN_A(A_9_EN_A),
    .A_9_WEN_A(A_9_WEN_A),
    .A_9_Din_A(A_9_DIN_A),
    .A_9_Dout_A(A_9_DOUT_A),
    .A_9_Clk_A(A_9_CLK_A),
    .A_9_Rst_A(A_9_RST_A),
    .A_10_Addr_A(A_10_ADDR_A),
    .A_10_EN_A(A_10_EN_A),
    .A_10_WEN_A(A_10_WEN_A),
    .A_10_Din_A(A_10_DIN_A),
    .A_10_Dout_A(A_10_DOUT_A),
    .A_10_Clk_A(A_10_CLK_A),
    .A_10_Rst_A(A_10_RST_A),
    .A_11_Addr_A(A_11_ADDR_A),
    .A_11_EN_A(A_11_EN_A),
    .A_11_WEN_A(A_11_WEN_A),
    .A_11_Din_A(A_11_DIN_A),
    .A_11_Dout_A(A_11_DOUT_A),
    .A_11_Clk_A(A_11_CLK_A),
    .A_11_Rst_A(A_11_RST_A),
    .A_12_Addr_A(A_12_ADDR_A),
    .A_12_EN_A(A_12_EN_A),
    .A_12_WEN_A(A_12_WEN_A),
    .A_12_Din_A(A_12_DIN_A),
    .A_12_Dout_A(A_12_DOUT_A),
    .A_12_Clk_A(A_12_CLK_A),
    .A_12_Rst_A(A_12_RST_A),
    .A_13_Addr_A(A_13_ADDR_A),
    .A_13_EN_A(A_13_EN_A),
    .A_13_WEN_A(A_13_WEN_A),
    .A_13_Din_A(A_13_DIN_A),
    .A_13_Dout_A(A_13_DOUT_A),
    .A_13_Clk_A(A_13_CLK_A),
    .A_13_Rst_A(A_13_RST_A),
    .A_14_Addr_A(A_14_ADDR_A),
    .A_14_EN_A(A_14_EN_A),
    .A_14_WEN_A(A_14_WEN_A),
    .A_14_Din_A(A_14_DIN_A),
    .A_14_Dout_A(A_14_DOUT_A),
    .A_14_Clk_A(A_14_CLK_A),
    .A_14_Rst_A(A_14_RST_A),
    .A_15_Addr_A(A_15_ADDR_A),
    .A_15_EN_A(A_15_EN_A),
    .A_15_WEN_A(A_15_WEN_A),
    .A_15_Din_A(A_15_DIN_A),
    .A_15_Dout_A(A_15_DOUT_A),
    .A_15_Clk_A(A_15_CLK_A),
    .A_15_Rst_A(A_15_RST_A),
    .A_16_Addr_A(A_16_ADDR_A),
    .A_16_EN_A(A_16_EN_A),
    .A_16_WEN_A(A_16_WEN_A),
    .A_16_Din_A(A_16_DIN_A),
    .A_16_Dout_A(A_16_DOUT_A),
    .A_16_Clk_A(A_16_CLK_A),
    .A_16_Rst_A(A_16_RST_A),
    .A_17_Addr_A(A_17_ADDR_A),
    .A_17_EN_A(A_17_EN_A),
    .A_17_WEN_A(A_17_WEN_A),
    .A_17_Din_A(A_17_DIN_A),
    .A_17_Dout_A(A_17_DOUT_A),
    .A_17_Clk_A(A_17_CLK_A),
    .A_17_Rst_A(A_17_RST_A),
    .A_18_Addr_A(A_18_ADDR_A),
    .A_18_EN_A(A_18_EN_A),
    .A_18_WEN_A(A_18_WEN_A),
    .A_18_Din_A(A_18_DIN_A),
    .A_18_Dout_A(A_18_DOUT_A),
    .A_18_Clk_A(A_18_CLK_A),
    .A_18_Rst_A(A_18_RST_A),
    .A_19_Addr_A(A_19_ADDR_A),
    .A_19_EN_A(A_19_EN_A),
    .A_19_WEN_A(A_19_WEN_A),
    .A_19_Din_A(A_19_DIN_A),
    .A_19_Dout_A(A_19_DOUT_A),
    .A_19_Clk_A(A_19_CLK_A),
    .A_19_Rst_A(A_19_RST_A),
    .A_20_Addr_A(A_20_ADDR_A),
    .A_20_EN_A(A_20_EN_A),
    .A_20_WEN_A(A_20_WEN_A),
    .A_20_Din_A(A_20_DIN_A),
    .A_20_Dout_A(A_20_DOUT_A),
    .A_20_Clk_A(A_20_CLK_A),
    .A_20_Rst_A(A_20_RST_A),
    .A_21_Addr_A(A_21_ADDR_A),
    .A_21_EN_A(A_21_EN_A),
    .A_21_WEN_A(A_21_WEN_A),
    .A_21_Din_A(A_21_DIN_A),
    .A_21_Dout_A(A_21_DOUT_A),
    .A_21_Clk_A(A_21_CLK_A),
    .A_21_Rst_A(A_21_RST_A),
    .A_22_Addr_A(A_22_ADDR_A),
    .A_22_EN_A(A_22_EN_A),
    .A_22_WEN_A(A_22_WEN_A),
    .A_22_Din_A(A_22_DIN_A),
    .A_22_Dout_A(A_22_DOUT_A),
    .A_22_Clk_A(A_22_CLK_A),
    .A_22_Rst_A(A_22_RST_A),
    .A_23_Addr_A(A_23_ADDR_A),
    .A_23_EN_A(A_23_EN_A),
    .A_23_WEN_A(A_23_WEN_A),
    .A_23_Din_A(A_23_DIN_A),
    .A_23_Dout_A(A_23_DOUT_A),
    .A_23_Clk_A(A_23_CLK_A),
    .A_23_Rst_A(A_23_RST_A),
    .A_24_Addr_A(A_24_ADDR_A),
    .A_24_EN_A(A_24_EN_A),
    .A_24_WEN_A(A_24_WEN_A),
    .A_24_Din_A(A_24_DIN_A),
    .A_24_Dout_A(A_24_DOUT_A),
    .A_24_Clk_A(A_24_CLK_A),
    .A_24_Rst_A(A_24_RST_A),
    .A_25_Addr_A(A_25_ADDR_A),
    .A_25_EN_A(A_25_EN_A),
    .A_25_WEN_A(A_25_WEN_A),
    .A_25_Din_A(A_25_DIN_A),
    .A_25_Dout_A(A_25_DOUT_A),
    .A_25_Clk_A(A_25_CLK_A),
    .A_25_Rst_A(A_25_RST_A),
    .A_26_Addr_A(A_26_ADDR_A),
    .A_26_EN_A(A_26_EN_A),
    .A_26_WEN_A(A_26_WEN_A),
    .A_26_Din_A(A_26_DIN_A),
    .A_26_Dout_A(A_26_DOUT_A),
    .A_26_Clk_A(A_26_CLK_A),
    .A_26_Rst_A(A_26_RST_A),
    .A_27_Addr_A(A_27_ADDR_A),
    .A_27_EN_A(A_27_EN_A),
    .A_27_WEN_A(A_27_WEN_A),
    .A_27_Din_A(A_27_DIN_A),
    .A_27_Dout_A(A_27_DOUT_A),
    .A_27_Clk_A(A_27_CLK_A),
    .A_27_Rst_A(A_27_RST_A),
    .A_28_Addr_A(A_28_ADDR_A),
    .A_28_EN_A(A_28_EN_A),
    .A_28_WEN_A(A_28_WEN_A),
    .A_28_Din_A(A_28_DIN_A),
    .A_28_Dout_A(A_28_DOUT_A),
    .A_28_Clk_A(A_28_CLK_A),
    .A_28_Rst_A(A_28_RST_A),
    .A_29_Addr_A(A_29_ADDR_A),
    .A_29_EN_A(A_29_EN_A),
    .A_29_WEN_A(A_29_WEN_A),
    .A_29_Din_A(A_29_DIN_A),
    .A_29_Dout_A(A_29_DOUT_A),
    .A_29_Clk_A(A_29_CLK_A),
    .A_29_Rst_A(A_29_RST_A),
    .A_30_Addr_A(A_30_ADDR_A),
    .A_30_EN_A(A_30_EN_A),
    .A_30_WEN_A(A_30_WEN_A),
    .A_30_Din_A(A_30_DIN_A),
    .A_30_Dout_A(A_30_DOUT_A),
    .A_30_Clk_A(A_30_CLK_A),
    .A_30_Rst_A(A_30_RST_A),
    .A_31_Addr_A(A_31_ADDR_A),
    .A_31_EN_A(A_31_EN_A),
    .A_31_WEN_A(A_31_WEN_A),
    .A_31_Din_A(A_31_DIN_A),
    .A_31_Dout_A(A_31_DOUT_A),
    .A_31_Clk_A(A_31_CLK_A),
    .A_31_Rst_A(A_31_RST_A),
    .B_0_Addr_A(B_0_ADDR_A),
    .B_0_EN_A(B_0_EN_A),
    .B_0_WEN_A(B_0_WEN_A),
    .B_0_Din_A(B_0_DIN_A),
    .B_0_Dout_A(B_0_DOUT_A),
    .B_0_Clk_A(B_0_CLK_A),
    .B_0_Rst_A(B_0_RST_A),
    .B_1_Addr_A(B_1_ADDR_A),
    .B_1_EN_A(B_1_EN_A),
    .B_1_WEN_A(B_1_WEN_A),
    .B_1_Din_A(B_1_DIN_A),
    .B_1_Dout_A(B_1_DOUT_A),
    .B_1_Clk_A(B_1_CLK_A),
    .B_1_Rst_A(B_1_RST_A),
    .B_2_Addr_A(B_2_ADDR_A),
    .B_2_EN_A(B_2_EN_A),
    .B_2_WEN_A(B_2_WEN_A),
    .B_2_Din_A(B_2_DIN_A),
    .B_2_Dout_A(B_2_DOUT_A),
    .B_2_Clk_A(B_2_CLK_A),
    .B_2_Rst_A(B_2_RST_A),
    .B_3_Addr_A(B_3_ADDR_A),
    .B_3_EN_A(B_3_EN_A),
    .B_3_WEN_A(B_3_WEN_A),
    .B_3_Din_A(B_3_DIN_A),
    .B_3_Dout_A(B_3_DOUT_A),
    .B_3_Clk_A(B_3_CLK_A),
    .B_3_Rst_A(B_3_RST_A),
    .B_4_Addr_A(B_4_ADDR_A),
    .B_4_EN_A(B_4_EN_A),
    .B_4_WEN_A(B_4_WEN_A),
    .B_4_Din_A(B_4_DIN_A),
    .B_4_Dout_A(B_4_DOUT_A),
    .B_4_Clk_A(B_4_CLK_A),
    .B_4_Rst_A(B_4_RST_A),
    .B_5_Addr_A(B_5_ADDR_A),
    .B_5_EN_A(B_5_EN_A),
    .B_5_WEN_A(B_5_WEN_A),
    .B_5_Din_A(B_5_DIN_A),
    .B_5_Dout_A(B_5_DOUT_A),
    .B_5_Clk_A(B_5_CLK_A),
    .B_5_Rst_A(B_5_RST_A),
    .B_6_Addr_A(B_6_ADDR_A),
    .B_6_EN_A(B_6_EN_A),
    .B_6_WEN_A(B_6_WEN_A),
    .B_6_Din_A(B_6_DIN_A),
    .B_6_Dout_A(B_6_DOUT_A),
    .B_6_Clk_A(B_6_CLK_A),
    .B_6_Rst_A(B_6_RST_A),
    .B_7_Addr_A(B_7_ADDR_A),
    .B_7_EN_A(B_7_EN_A),
    .B_7_WEN_A(B_7_WEN_A),
    .B_7_Din_A(B_7_DIN_A),
    .B_7_Dout_A(B_7_DOUT_A),
    .B_7_Clk_A(B_7_CLK_A),
    .B_7_Rst_A(B_7_RST_A),
    .B_8_Addr_A(B_8_ADDR_A),
    .B_8_EN_A(B_8_EN_A),
    .B_8_WEN_A(B_8_WEN_A),
    .B_8_Din_A(B_8_DIN_A),
    .B_8_Dout_A(B_8_DOUT_A),
    .B_8_Clk_A(B_8_CLK_A),
    .B_8_Rst_A(B_8_RST_A),
    .B_9_Addr_A(B_9_ADDR_A),
    .B_9_EN_A(B_9_EN_A),
    .B_9_WEN_A(B_9_WEN_A),
    .B_9_Din_A(B_9_DIN_A),
    .B_9_Dout_A(B_9_DOUT_A),
    .B_9_Clk_A(B_9_CLK_A),
    .B_9_Rst_A(B_9_RST_A),
    .B_10_Addr_A(B_10_ADDR_A),
    .B_10_EN_A(B_10_EN_A),
    .B_10_WEN_A(B_10_WEN_A),
    .B_10_Din_A(B_10_DIN_A),
    .B_10_Dout_A(B_10_DOUT_A),
    .B_10_Clk_A(B_10_CLK_A),
    .B_10_Rst_A(B_10_RST_A),
    .B_11_Addr_A(B_11_ADDR_A),
    .B_11_EN_A(B_11_EN_A),
    .B_11_WEN_A(B_11_WEN_A),
    .B_11_Din_A(B_11_DIN_A),
    .B_11_Dout_A(B_11_DOUT_A),
    .B_11_Clk_A(B_11_CLK_A),
    .B_11_Rst_A(B_11_RST_A),
    .B_12_Addr_A(B_12_ADDR_A),
    .B_12_EN_A(B_12_EN_A),
    .B_12_WEN_A(B_12_WEN_A),
    .B_12_Din_A(B_12_DIN_A),
    .B_12_Dout_A(B_12_DOUT_A),
    .B_12_Clk_A(B_12_CLK_A),
    .B_12_Rst_A(B_12_RST_A),
    .B_13_Addr_A(B_13_ADDR_A),
    .B_13_EN_A(B_13_EN_A),
    .B_13_WEN_A(B_13_WEN_A),
    .B_13_Din_A(B_13_DIN_A),
    .B_13_Dout_A(B_13_DOUT_A),
    .B_13_Clk_A(B_13_CLK_A),
    .B_13_Rst_A(B_13_RST_A),
    .B_14_Addr_A(B_14_ADDR_A),
    .B_14_EN_A(B_14_EN_A),
    .B_14_WEN_A(B_14_WEN_A),
    .B_14_Din_A(B_14_DIN_A),
    .B_14_Dout_A(B_14_DOUT_A),
    .B_14_Clk_A(B_14_CLK_A),
    .B_14_Rst_A(B_14_RST_A),
    .B_15_Addr_A(B_15_ADDR_A),
    .B_15_EN_A(B_15_EN_A),
    .B_15_WEN_A(B_15_WEN_A),
    .B_15_Din_A(B_15_DIN_A),
    .B_15_Dout_A(B_15_DOUT_A),
    .B_15_Clk_A(B_15_CLK_A),
    .B_15_Rst_A(B_15_RST_A),
    .B_16_Addr_A(B_16_ADDR_A),
    .B_16_EN_A(B_16_EN_A),
    .B_16_WEN_A(B_16_WEN_A),
    .B_16_Din_A(B_16_DIN_A),
    .B_16_Dout_A(B_16_DOUT_A),
    .B_16_Clk_A(B_16_CLK_A),
    .B_16_Rst_A(B_16_RST_A),
    .B_17_Addr_A(B_17_ADDR_A),
    .B_17_EN_A(B_17_EN_A),
    .B_17_WEN_A(B_17_WEN_A),
    .B_17_Din_A(B_17_DIN_A),
    .B_17_Dout_A(B_17_DOUT_A),
    .B_17_Clk_A(B_17_CLK_A),
    .B_17_Rst_A(B_17_RST_A),
    .B_18_Addr_A(B_18_ADDR_A),
    .B_18_EN_A(B_18_EN_A),
    .B_18_WEN_A(B_18_WEN_A),
    .B_18_Din_A(B_18_DIN_A),
    .B_18_Dout_A(B_18_DOUT_A),
    .B_18_Clk_A(B_18_CLK_A),
    .B_18_Rst_A(B_18_RST_A),
    .B_19_Addr_A(B_19_ADDR_A),
    .B_19_EN_A(B_19_EN_A),
    .B_19_WEN_A(B_19_WEN_A),
    .B_19_Din_A(B_19_DIN_A),
    .B_19_Dout_A(B_19_DOUT_A),
    .B_19_Clk_A(B_19_CLK_A),
    .B_19_Rst_A(B_19_RST_A),
    .B_20_Addr_A(B_20_ADDR_A),
    .B_20_EN_A(B_20_EN_A),
    .B_20_WEN_A(B_20_WEN_A),
    .B_20_Din_A(B_20_DIN_A),
    .B_20_Dout_A(B_20_DOUT_A),
    .B_20_Clk_A(B_20_CLK_A),
    .B_20_Rst_A(B_20_RST_A),
    .B_21_Addr_A(B_21_ADDR_A),
    .B_21_EN_A(B_21_EN_A),
    .B_21_WEN_A(B_21_WEN_A),
    .B_21_Din_A(B_21_DIN_A),
    .B_21_Dout_A(B_21_DOUT_A),
    .B_21_Clk_A(B_21_CLK_A),
    .B_21_Rst_A(B_21_RST_A),
    .B_22_Addr_A(B_22_ADDR_A),
    .B_22_EN_A(B_22_EN_A),
    .B_22_WEN_A(B_22_WEN_A),
    .B_22_Din_A(B_22_DIN_A),
    .B_22_Dout_A(B_22_DOUT_A),
    .B_22_Clk_A(B_22_CLK_A),
    .B_22_Rst_A(B_22_RST_A),
    .B_23_Addr_A(B_23_ADDR_A),
    .B_23_EN_A(B_23_EN_A),
    .B_23_WEN_A(B_23_WEN_A),
    .B_23_Din_A(B_23_DIN_A),
    .B_23_Dout_A(B_23_DOUT_A),
    .B_23_Clk_A(B_23_CLK_A),
    .B_23_Rst_A(B_23_RST_A),
    .B_24_Addr_A(B_24_ADDR_A),
    .B_24_EN_A(B_24_EN_A),
    .B_24_WEN_A(B_24_WEN_A),
    .B_24_Din_A(B_24_DIN_A),
    .B_24_Dout_A(B_24_DOUT_A),
    .B_24_Clk_A(B_24_CLK_A),
    .B_24_Rst_A(B_24_RST_A),
    .B_25_Addr_A(B_25_ADDR_A),
    .B_25_EN_A(B_25_EN_A),
    .B_25_WEN_A(B_25_WEN_A),
    .B_25_Din_A(B_25_DIN_A),
    .B_25_Dout_A(B_25_DOUT_A),
    .B_25_Clk_A(B_25_CLK_A),
    .B_25_Rst_A(B_25_RST_A),
    .B_26_Addr_A(B_26_ADDR_A),
    .B_26_EN_A(B_26_EN_A),
    .B_26_WEN_A(B_26_WEN_A),
    .B_26_Din_A(B_26_DIN_A),
    .B_26_Dout_A(B_26_DOUT_A),
    .B_26_Clk_A(B_26_CLK_A),
    .B_26_Rst_A(B_26_RST_A),
    .B_27_Addr_A(B_27_ADDR_A),
    .B_27_EN_A(B_27_EN_A),
    .B_27_WEN_A(B_27_WEN_A),
    .B_27_Din_A(B_27_DIN_A),
    .B_27_Dout_A(B_27_DOUT_A),
    .B_27_Clk_A(B_27_CLK_A),
    .B_27_Rst_A(B_27_RST_A),
    .B_28_Addr_A(B_28_ADDR_A),
    .B_28_EN_A(B_28_EN_A),
    .B_28_WEN_A(B_28_WEN_A),
    .B_28_Din_A(B_28_DIN_A),
    .B_28_Dout_A(B_28_DOUT_A),
    .B_28_Clk_A(B_28_CLK_A),
    .B_28_Rst_A(B_28_RST_A),
    .B_29_Addr_A(B_29_ADDR_A),
    .B_29_EN_A(B_29_EN_A),
    .B_29_WEN_A(B_29_WEN_A),
    .B_29_Din_A(B_29_DIN_A),
    .B_29_Dout_A(B_29_DOUT_A),
    .B_29_Clk_A(B_29_CLK_A),
    .B_29_Rst_A(B_29_RST_A),
    .B_30_Addr_A(B_30_ADDR_A),
    .B_30_EN_A(B_30_EN_A),
    .B_30_WEN_A(B_30_WEN_A),
    .B_30_Din_A(B_30_DIN_A),
    .B_30_Dout_A(B_30_DOUT_A),
    .B_30_Clk_A(B_30_CLK_A),
    .B_30_Rst_A(B_30_RST_A),
    .B_31_Addr_A(B_31_ADDR_A),
    .B_31_EN_A(B_31_EN_A),
    .B_31_WEN_A(B_31_WEN_A),
    .B_31_Din_A(B_31_DIN_A),
    .B_31_Dout_A(B_31_DOUT_A),
    .B_31_Clk_A(B_31_CLK_A),
    .B_31_Rst_A(B_31_RST_A),
    .feature_vector_TDATA(feature_vector_TDATA),
    .feature_vector_TVALID(feature_vector_TVALID),
    .feature_vector_TREADY(feature_vector_TREADY),
    .feature_vector_TKEEP(feature_vector_TKEEP),
    .feature_vector_TSTRB(feature_vector_TSTRB),
    .feature_vector_TUSER(feature_vector_TUSER),
    .feature_vector_TLAST(feature_vector_TLAST),
    .feature_vector_TID(feature_vector_TID),
    .feature_vector_TDEST(feature_vector_TDEST),
    .scores_address0(scores_address0),
    .scores_ce0(scores_ce0),
    .scores_we0(scores_we0),
    .scores_d0(scores_d0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end
//------------------------bramA_0 Instantiation--------------

// The input and output of bramA_0
wire  bramA_0_Clk_A, bramA_0_Clk_B;
wire  bramA_0_EN_A, bramA_0_EN_B;
wire  [16 - 1 : 0] bramA_0_WEN_A, bramA_0_WEN_B;
wire    [31 : 0]    bramA_0_Addr_A, bramA_0_Addr_B;
wire    [127 : 0]    bramA_0_Din_A, bramA_0_Din_B;
wire    [127 : 0]    bramA_0_Dout_A, bramA_0_Dout_B;
wire    bramA_0_ready;
wire    bramA_0_done;

`AESL_BRAM_A_0 `AESL_BRAM_INST_A_0(
    .Clk_A    (bramA_0_Clk_A),
    .Rst_A    (bramA_0_Rst_A),
    .EN_A     (bramA_0_EN_A),
    .WEN_A    (bramA_0_WEN_A),
    .Addr_A   (bramA_0_Addr_A),
    .Din_A    (bramA_0_Din_A),
    .Dout_A   (bramA_0_Dout_A),
    .Clk_B    (bramA_0_Clk_B),
    .Rst_B    (bramA_0_Rst_B),
    .EN_B     (bramA_0_EN_B),
    .WEN_B    (bramA_0_WEN_B),
    .Addr_B   (bramA_0_Addr_B),
    .Din_B    (bramA_0_Din_B),
    .Dout_B   (bramA_0_Dout_B),
    .ready    (bramA_0_ready),
    .done        (bramA_0_done)
);

// Assignment between dut and bramA_0
assign bramA_0_Clk_A = A_0_CLK_A;
assign bramA_0_Rst_A = A_0_RST_A;
assign bramA_0_Addr_A = A_0_ADDR_A;
assign bramA_0_EN_A = A_0_EN_A;
assign A_0_DOUT_A = bramA_0_Dout_A;
assign bramA_0_WEN_A = 0;
assign bramA_0_Din_A = 0;
assign bramA_0_WEN_B = 0;
assign bramA_0_Din_B = 0;
assign bramA_0_ready=    ready;
assign bramA_0_done = 0;


//------------------------bramA_1 Instantiation--------------

// The input and output of bramA_1
wire  bramA_1_Clk_A, bramA_1_Clk_B;
wire  bramA_1_EN_A, bramA_1_EN_B;
wire  [16 - 1 : 0] bramA_1_WEN_A, bramA_1_WEN_B;
wire    [31 : 0]    bramA_1_Addr_A, bramA_1_Addr_B;
wire    [127 : 0]    bramA_1_Din_A, bramA_1_Din_B;
wire    [127 : 0]    bramA_1_Dout_A, bramA_1_Dout_B;
wire    bramA_1_ready;
wire    bramA_1_done;

`AESL_BRAM_A_1 `AESL_BRAM_INST_A_1(
    .Clk_A    (bramA_1_Clk_A),
    .Rst_A    (bramA_1_Rst_A),
    .EN_A     (bramA_1_EN_A),
    .WEN_A    (bramA_1_WEN_A),
    .Addr_A   (bramA_1_Addr_A),
    .Din_A    (bramA_1_Din_A),
    .Dout_A   (bramA_1_Dout_A),
    .Clk_B    (bramA_1_Clk_B),
    .Rst_B    (bramA_1_Rst_B),
    .EN_B     (bramA_1_EN_B),
    .WEN_B    (bramA_1_WEN_B),
    .Addr_B   (bramA_1_Addr_B),
    .Din_B    (bramA_1_Din_B),
    .Dout_B   (bramA_1_Dout_B),
    .ready    (bramA_1_ready),
    .done        (bramA_1_done)
);

// Assignment between dut and bramA_1
assign bramA_1_Clk_A = A_1_CLK_A;
assign bramA_1_Rst_A = A_1_RST_A;
assign bramA_1_Addr_A = A_1_ADDR_A;
assign bramA_1_EN_A = A_1_EN_A;
assign A_1_DOUT_A = bramA_1_Dout_A;
assign bramA_1_WEN_A = 0;
assign bramA_1_Din_A = 0;
assign bramA_1_WEN_B = 0;
assign bramA_1_Din_B = 0;
assign bramA_1_ready=    ready;
assign bramA_1_done = 0;


//------------------------bramA_2 Instantiation--------------

// The input and output of bramA_2
wire  bramA_2_Clk_A, bramA_2_Clk_B;
wire  bramA_2_EN_A, bramA_2_EN_B;
wire  [16 - 1 : 0] bramA_2_WEN_A, bramA_2_WEN_B;
wire    [31 : 0]    bramA_2_Addr_A, bramA_2_Addr_B;
wire    [127 : 0]    bramA_2_Din_A, bramA_2_Din_B;
wire    [127 : 0]    bramA_2_Dout_A, bramA_2_Dout_B;
wire    bramA_2_ready;
wire    bramA_2_done;

`AESL_BRAM_A_2 `AESL_BRAM_INST_A_2(
    .Clk_A    (bramA_2_Clk_A),
    .Rst_A    (bramA_2_Rst_A),
    .EN_A     (bramA_2_EN_A),
    .WEN_A    (bramA_2_WEN_A),
    .Addr_A   (bramA_2_Addr_A),
    .Din_A    (bramA_2_Din_A),
    .Dout_A   (bramA_2_Dout_A),
    .Clk_B    (bramA_2_Clk_B),
    .Rst_B    (bramA_2_Rst_B),
    .EN_B     (bramA_2_EN_B),
    .WEN_B    (bramA_2_WEN_B),
    .Addr_B   (bramA_2_Addr_B),
    .Din_B    (bramA_2_Din_B),
    .Dout_B   (bramA_2_Dout_B),
    .ready    (bramA_2_ready),
    .done        (bramA_2_done)
);

// Assignment between dut and bramA_2
assign bramA_2_Clk_A = A_2_CLK_A;
assign bramA_2_Rst_A = A_2_RST_A;
assign bramA_2_Addr_A = A_2_ADDR_A;
assign bramA_2_EN_A = A_2_EN_A;
assign A_2_DOUT_A = bramA_2_Dout_A;
assign bramA_2_WEN_A = 0;
assign bramA_2_Din_A = 0;
assign bramA_2_WEN_B = 0;
assign bramA_2_Din_B = 0;
assign bramA_2_ready=    ready;
assign bramA_2_done = 0;


//------------------------bramA_3 Instantiation--------------

// The input and output of bramA_3
wire  bramA_3_Clk_A, bramA_3_Clk_B;
wire  bramA_3_EN_A, bramA_3_EN_B;
wire  [16 - 1 : 0] bramA_3_WEN_A, bramA_3_WEN_B;
wire    [31 : 0]    bramA_3_Addr_A, bramA_3_Addr_B;
wire    [127 : 0]    bramA_3_Din_A, bramA_3_Din_B;
wire    [127 : 0]    bramA_3_Dout_A, bramA_3_Dout_B;
wire    bramA_3_ready;
wire    bramA_3_done;

`AESL_BRAM_A_3 `AESL_BRAM_INST_A_3(
    .Clk_A    (bramA_3_Clk_A),
    .Rst_A    (bramA_3_Rst_A),
    .EN_A     (bramA_3_EN_A),
    .WEN_A    (bramA_3_WEN_A),
    .Addr_A   (bramA_3_Addr_A),
    .Din_A    (bramA_3_Din_A),
    .Dout_A   (bramA_3_Dout_A),
    .Clk_B    (bramA_3_Clk_B),
    .Rst_B    (bramA_3_Rst_B),
    .EN_B     (bramA_3_EN_B),
    .WEN_B    (bramA_3_WEN_B),
    .Addr_B   (bramA_3_Addr_B),
    .Din_B    (bramA_3_Din_B),
    .Dout_B   (bramA_3_Dout_B),
    .ready    (bramA_3_ready),
    .done        (bramA_3_done)
);

// Assignment between dut and bramA_3
assign bramA_3_Clk_A = A_3_CLK_A;
assign bramA_3_Rst_A = A_3_RST_A;
assign bramA_3_Addr_A = A_3_ADDR_A;
assign bramA_3_EN_A = A_3_EN_A;
assign A_3_DOUT_A = bramA_3_Dout_A;
assign bramA_3_WEN_A = 0;
assign bramA_3_Din_A = 0;
assign bramA_3_WEN_B = 0;
assign bramA_3_Din_B = 0;
assign bramA_3_ready=    ready;
assign bramA_3_done = 0;


//------------------------bramA_4 Instantiation--------------

// The input and output of bramA_4
wire  bramA_4_Clk_A, bramA_4_Clk_B;
wire  bramA_4_EN_A, bramA_4_EN_B;
wire  [16 - 1 : 0] bramA_4_WEN_A, bramA_4_WEN_B;
wire    [31 : 0]    bramA_4_Addr_A, bramA_4_Addr_B;
wire    [127 : 0]    bramA_4_Din_A, bramA_4_Din_B;
wire    [127 : 0]    bramA_4_Dout_A, bramA_4_Dout_B;
wire    bramA_4_ready;
wire    bramA_4_done;

`AESL_BRAM_A_4 `AESL_BRAM_INST_A_4(
    .Clk_A    (bramA_4_Clk_A),
    .Rst_A    (bramA_4_Rst_A),
    .EN_A     (bramA_4_EN_A),
    .WEN_A    (bramA_4_WEN_A),
    .Addr_A   (bramA_4_Addr_A),
    .Din_A    (bramA_4_Din_A),
    .Dout_A   (bramA_4_Dout_A),
    .Clk_B    (bramA_4_Clk_B),
    .Rst_B    (bramA_4_Rst_B),
    .EN_B     (bramA_4_EN_B),
    .WEN_B    (bramA_4_WEN_B),
    .Addr_B   (bramA_4_Addr_B),
    .Din_B    (bramA_4_Din_B),
    .Dout_B   (bramA_4_Dout_B),
    .ready    (bramA_4_ready),
    .done        (bramA_4_done)
);

// Assignment between dut and bramA_4
assign bramA_4_Clk_A = A_4_CLK_A;
assign bramA_4_Rst_A = A_4_RST_A;
assign bramA_4_Addr_A = A_4_ADDR_A;
assign bramA_4_EN_A = A_4_EN_A;
assign A_4_DOUT_A = bramA_4_Dout_A;
assign bramA_4_WEN_A = 0;
assign bramA_4_Din_A = 0;
assign bramA_4_WEN_B = 0;
assign bramA_4_Din_B = 0;
assign bramA_4_ready=    ready;
assign bramA_4_done = 0;


//------------------------bramA_5 Instantiation--------------

// The input and output of bramA_5
wire  bramA_5_Clk_A, bramA_5_Clk_B;
wire  bramA_5_EN_A, bramA_5_EN_B;
wire  [16 - 1 : 0] bramA_5_WEN_A, bramA_5_WEN_B;
wire    [31 : 0]    bramA_5_Addr_A, bramA_5_Addr_B;
wire    [127 : 0]    bramA_5_Din_A, bramA_5_Din_B;
wire    [127 : 0]    bramA_5_Dout_A, bramA_5_Dout_B;
wire    bramA_5_ready;
wire    bramA_5_done;

`AESL_BRAM_A_5 `AESL_BRAM_INST_A_5(
    .Clk_A    (bramA_5_Clk_A),
    .Rst_A    (bramA_5_Rst_A),
    .EN_A     (bramA_5_EN_A),
    .WEN_A    (bramA_5_WEN_A),
    .Addr_A   (bramA_5_Addr_A),
    .Din_A    (bramA_5_Din_A),
    .Dout_A   (bramA_5_Dout_A),
    .Clk_B    (bramA_5_Clk_B),
    .Rst_B    (bramA_5_Rst_B),
    .EN_B     (bramA_5_EN_B),
    .WEN_B    (bramA_5_WEN_B),
    .Addr_B   (bramA_5_Addr_B),
    .Din_B    (bramA_5_Din_B),
    .Dout_B   (bramA_5_Dout_B),
    .ready    (bramA_5_ready),
    .done        (bramA_5_done)
);

// Assignment between dut and bramA_5
assign bramA_5_Clk_A = A_5_CLK_A;
assign bramA_5_Rst_A = A_5_RST_A;
assign bramA_5_Addr_A = A_5_ADDR_A;
assign bramA_5_EN_A = A_5_EN_A;
assign A_5_DOUT_A = bramA_5_Dout_A;
assign bramA_5_WEN_A = 0;
assign bramA_5_Din_A = 0;
assign bramA_5_WEN_B = 0;
assign bramA_5_Din_B = 0;
assign bramA_5_ready=    ready;
assign bramA_5_done = 0;


//------------------------bramA_6 Instantiation--------------

// The input and output of bramA_6
wire  bramA_6_Clk_A, bramA_6_Clk_B;
wire  bramA_6_EN_A, bramA_6_EN_B;
wire  [16 - 1 : 0] bramA_6_WEN_A, bramA_6_WEN_B;
wire    [31 : 0]    bramA_6_Addr_A, bramA_6_Addr_B;
wire    [127 : 0]    bramA_6_Din_A, bramA_6_Din_B;
wire    [127 : 0]    bramA_6_Dout_A, bramA_6_Dout_B;
wire    bramA_6_ready;
wire    bramA_6_done;

`AESL_BRAM_A_6 `AESL_BRAM_INST_A_6(
    .Clk_A    (bramA_6_Clk_A),
    .Rst_A    (bramA_6_Rst_A),
    .EN_A     (bramA_6_EN_A),
    .WEN_A    (bramA_6_WEN_A),
    .Addr_A   (bramA_6_Addr_A),
    .Din_A    (bramA_6_Din_A),
    .Dout_A   (bramA_6_Dout_A),
    .Clk_B    (bramA_6_Clk_B),
    .Rst_B    (bramA_6_Rst_B),
    .EN_B     (bramA_6_EN_B),
    .WEN_B    (bramA_6_WEN_B),
    .Addr_B   (bramA_6_Addr_B),
    .Din_B    (bramA_6_Din_B),
    .Dout_B   (bramA_6_Dout_B),
    .ready    (bramA_6_ready),
    .done        (bramA_6_done)
);

// Assignment between dut and bramA_6
assign bramA_6_Clk_A = A_6_CLK_A;
assign bramA_6_Rst_A = A_6_RST_A;
assign bramA_6_Addr_A = A_6_ADDR_A;
assign bramA_6_EN_A = A_6_EN_A;
assign A_6_DOUT_A = bramA_6_Dout_A;
assign bramA_6_WEN_A = 0;
assign bramA_6_Din_A = 0;
assign bramA_6_WEN_B = 0;
assign bramA_6_Din_B = 0;
assign bramA_6_ready=    ready;
assign bramA_6_done = 0;


//------------------------bramA_7 Instantiation--------------

// The input and output of bramA_7
wire  bramA_7_Clk_A, bramA_7_Clk_B;
wire  bramA_7_EN_A, bramA_7_EN_B;
wire  [16 - 1 : 0] bramA_7_WEN_A, bramA_7_WEN_B;
wire    [31 : 0]    bramA_7_Addr_A, bramA_7_Addr_B;
wire    [127 : 0]    bramA_7_Din_A, bramA_7_Din_B;
wire    [127 : 0]    bramA_7_Dout_A, bramA_7_Dout_B;
wire    bramA_7_ready;
wire    bramA_7_done;

`AESL_BRAM_A_7 `AESL_BRAM_INST_A_7(
    .Clk_A    (bramA_7_Clk_A),
    .Rst_A    (bramA_7_Rst_A),
    .EN_A     (bramA_7_EN_A),
    .WEN_A    (bramA_7_WEN_A),
    .Addr_A   (bramA_7_Addr_A),
    .Din_A    (bramA_7_Din_A),
    .Dout_A   (bramA_7_Dout_A),
    .Clk_B    (bramA_7_Clk_B),
    .Rst_B    (bramA_7_Rst_B),
    .EN_B     (bramA_7_EN_B),
    .WEN_B    (bramA_7_WEN_B),
    .Addr_B   (bramA_7_Addr_B),
    .Din_B    (bramA_7_Din_B),
    .Dout_B   (bramA_7_Dout_B),
    .ready    (bramA_7_ready),
    .done        (bramA_7_done)
);

// Assignment between dut and bramA_7
assign bramA_7_Clk_A = A_7_CLK_A;
assign bramA_7_Rst_A = A_7_RST_A;
assign bramA_7_Addr_A = A_7_ADDR_A;
assign bramA_7_EN_A = A_7_EN_A;
assign A_7_DOUT_A = bramA_7_Dout_A;
assign bramA_7_WEN_A = 0;
assign bramA_7_Din_A = 0;
assign bramA_7_WEN_B = 0;
assign bramA_7_Din_B = 0;
assign bramA_7_ready=    ready;
assign bramA_7_done = 0;


//------------------------bramA_8 Instantiation--------------

// The input and output of bramA_8
wire  bramA_8_Clk_A, bramA_8_Clk_B;
wire  bramA_8_EN_A, bramA_8_EN_B;
wire  [16 - 1 : 0] bramA_8_WEN_A, bramA_8_WEN_B;
wire    [31 : 0]    bramA_8_Addr_A, bramA_8_Addr_B;
wire    [127 : 0]    bramA_8_Din_A, bramA_8_Din_B;
wire    [127 : 0]    bramA_8_Dout_A, bramA_8_Dout_B;
wire    bramA_8_ready;
wire    bramA_8_done;

`AESL_BRAM_A_8 `AESL_BRAM_INST_A_8(
    .Clk_A    (bramA_8_Clk_A),
    .Rst_A    (bramA_8_Rst_A),
    .EN_A     (bramA_8_EN_A),
    .WEN_A    (bramA_8_WEN_A),
    .Addr_A   (bramA_8_Addr_A),
    .Din_A    (bramA_8_Din_A),
    .Dout_A   (bramA_8_Dout_A),
    .Clk_B    (bramA_8_Clk_B),
    .Rst_B    (bramA_8_Rst_B),
    .EN_B     (bramA_8_EN_B),
    .WEN_B    (bramA_8_WEN_B),
    .Addr_B   (bramA_8_Addr_B),
    .Din_B    (bramA_8_Din_B),
    .Dout_B   (bramA_8_Dout_B),
    .ready    (bramA_8_ready),
    .done        (bramA_8_done)
);

// Assignment between dut and bramA_8
assign bramA_8_Clk_A = A_8_CLK_A;
assign bramA_8_Rst_A = A_8_RST_A;
assign bramA_8_Addr_A = A_8_ADDR_A;
assign bramA_8_EN_A = A_8_EN_A;
assign A_8_DOUT_A = bramA_8_Dout_A;
assign bramA_8_WEN_A = 0;
assign bramA_8_Din_A = 0;
assign bramA_8_WEN_B = 0;
assign bramA_8_Din_B = 0;
assign bramA_8_ready=    ready;
assign bramA_8_done = 0;


//------------------------bramA_9 Instantiation--------------

// The input and output of bramA_9
wire  bramA_9_Clk_A, bramA_9_Clk_B;
wire  bramA_9_EN_A, bramA_9_EN_B;
wire  [16 - 1 : 0] bramA_9_WEN_A, bramA_9_WEN_B;
wire    [31 : 0]    bramA_9_Addr_A, bramA_9_Addr_B;
wire    [127 : 0]    bramA_9_Din_A, bramA_9_Din_B;
wire    [127 : 0]    bramA_9_Dout_A, bramA_9_Dout_B;
wire    bramA_9_ready;
wire    bramA_9_done;

`AESL_BRAM_A_9 `AESL_BRAM_INST_A_9(
    .Clk_A    (bramA_9_Clk_A),
    .Rst_A    (bramA_9_Rst_A),
    .EN_A     (bramA_9_EN_A),
    .WEN_A    (bramA_9_WEN_A),
    .Addr_A   (bramA_9_Addr_A),
    .Din_A    (bramA_9_Din_A),
    .Dout_A   (bramA_9_Dout_A),
    .Clk_B    (bramA_9_Clk_B),
    .Rst_B    (bramA_9_Rst_B),
    .EN_B     (bramA_9_EN_B),
    .WEN_B    (bramA_9_WEN_B),
    .Addr_B   (bramA_9_Addr_B),
    .Din_B    (bramA_9_Din_B),
    .Dout_B   (bramA_9_Dout_B),
    .ready    (bramA_9_ready),
    .done        (bramA_9_done)
);

// Assignment between dut and bramA_9
assign bramA_9_Clk_A = A_9_CLK_A;
assign bramA_9_Rst_A = A_9_RST_A;
assign bramA_9_Addr_A = A_9_ADDR_A;
assign bramA_9_EN_A = A_9_EN_A;
assign A_9_DOUT_A = bramA_9_Dout_A;
assign bramA_9_WEN_A = 0;
assign bramA_9_Din_A = 0;
assign bramA_9_WEN_B = 0;
assign bramA_9_Din_B = 0;
assign bramA_9_ready=    ready;
assign bramA_9_done = 0;


//------------------------bramA_10 Instantiation--------------

// The input and output of bramA_10
wire  bramA_10_Clk_A, bramA_10_Clk_B;
wire  bramA_10_EN_A, bramA_10_EN_B;
wire  [16 - 1 : 0] bramA_10_WEN_A, bramA_10_WEN_B;
wire    [31 : 0]    bramA_10_Addr_A, bramA_10_Addr_B;
wire    [127 : 0]    bramA_10_Din_A, bramA_10_Din_B;
wire    [127 : 0]    bramA_10_Dout_A, bramA_10_Dout_B;
wire    bramA_10_ready;
wire    bramA_10_done;

`AESL_BRAM_A_10 `AESL_BRAM_INST_A_10(
    .Clk_A    (bramA_10_Clk_A),
    .Rst_A    (bramA_10_Rst_A),
    .EN_A     (bramA_10_EN_A),
    .WEN_A    (bramA_10_WEN_A),
    .Addr_A   (bramA_10_Addr_A),
    .Din_A    (bramA_10_Din_A),
    .Dout_A   (bramA_10_Dout_A),
    .Clk_B    (bramA_10_Clk_B),
    .Rst_B    (bramA_10_Rst_B),
    .EN_B     (bramA_10_EN_B),
    .WEN_B    (bramA_10_WEN_B),
    .Addr_B   (bramA_10_Addr_B),
    .Din_B    (bramA_10_Din_B),
    .Dout_B   (bramA_10_Dout_B),
    .ready    (bramA_10_ready),
    .done        (bramA_10_done)
);

// Assignment between dut and bramA_10
assign bramA_10_Clk_A = A_10_CLK_A;
assign bramA_10_Rst_A = A_10_RST_A;
assign bramA_10_Addr_A = A_10_ADDR_A;
assign bramA_10_EN_A = A_10_EN_A;
assign A_10_DOUT_A = bramA_10_Dout_A;
assign bramA_10_WEN_A = 0;
assign bramA_10_Din_A = 0;
assign bramA_10_WEN_B = 0;
assign bramA_10_Din_B = 0;
assign bramA_10_ready=    ready;
assign bramA_10_done = 0;


//------------------------bramA_11 Instantiation--------------

// The input and output of bramA_11
wire  bramA_11_Clk_A, bramA_11_Clk_B;
wire  bramA_11_EN_A, bramA_11_EN_B;
wire  [16 - 1 : 0] bramA_11_WEN_A, bramA_11_WEN_B;
wire    [31 : 0]    bramA_11_Addr_A, bramA_11_Addr_B;
wire    [127 : 0]    bramA_11_Din_A, bramA_11_Din_B;
wire    [127 : 0]    bramA_11_Dout_A, bramA_11_Dout_B;
wire    bramA_11_ready;
wire    bramA_11_done;

`AESL_BRAM_A_11 `AESL_BRAM_INST_A_11(
    .Clk_A    (bramA_11_Clk_A),
    .Rst_A    (bramA_11_Rst_A),
    .EN_A     (bramA_11_EN_A),
    .WEN_A    (bramA_11_WEN_A),
    .Addr_A   (bramA_11_Addr_A),
    .Din_A    (bramA_11_Din_A),
    .Dout_A   (bramA_11_Dout_A),
    .Clk_B    (bramA_11_Clk_B),
    .Rst_B    (bramA_11_Rst_B),
    .EN_B     (bramA_11_EN_B),
    .WEN_B    (bramA_11_WEN_B),
    .Addr_B   (bramA_11_Addr_B),
    .Din_B    (bramA_11_Din_B),
    .Dout_B   (bramA_11_Dout_B),
    .ready    (bramA_11_ready),
    .done        (bramA_11_done)
);

// Assignment between dut and bramA_11
assign bramA_11_Clk_A = A_11_CLK_A;
assign bramA_11_Rst_A = A_11_RST_A;
assign bramA_11_Addr_A = A_11_ADDR_A;
assign bramA_11_EN_A = A_11_EN_A;
assign A_11_DOUT_A = bramA_11_Dout_A;
assign bramA_11_WEN_A = 0;
assign bramA_11_Din_A = 0;
assign bramA_11_WEN_B = 0;
assign bramA_11_Din_B = 0;
assign bramA_11_ready=    ready;
assign bramA_11_done = 0;


//------------------------bramA_12 Instantiation--------------

// The input and output of bramA_12
wire  bramA_12_Clk_A, bramA_12_Clk_B;
wire  bramA_12_EN_A, bramA_12_EN_B;
wire  [16 - 1 : 0] bramA_12_WEN_A, bramA_12_WEN_B;
wire    [31 : 0]    bramA_12_Addr_A, bramA_12_Addr_B;
wire    [127 : 0]    bramA_12_Din_A, bramA_12_Din_B;
wire    [127 : 0]    bramA_12_Dout_A, bramA_12_Dout_B;
wire    bramA_12_ready;
wire    bramA_12_done;

`AESL_BRAM_A_12 `AESL_BRAM_INST_A_12(
    .Clk_A    (bramA_12_Clk_A),
    .Rst_A    (bramA_12_Rst_A),
    .EN_A     (bramA_12_EN_A),
    .WEN_A    (bramA_12_WEN_A),
    .Addr_A   (bramA_12_Addr_A),
    .Din_A    (bramA_12_Din_A),
    .Dout_A   (bramA_12_Dout_A),
    .Clk_B    (bramA_12_Clk_B),
    .Rst_B    (bramA_12_Rst_B),
    .EN_B     (bramA_12_EN_B),
    .WEN_B    (bramA_12_WEN_B),
    .Addr_B   (bramA_12_Addr_B),
    .Din_B    (bramA_12_Din_B),
    .Dout_B   (bramA_12_Dout_B),
    .ready    (bramA_12_ready),
    .done        (bramA_12_done)
);

// Assignment between dut and bramA_12
assign bramA_12_Clk_A = A_12_CLK_A;
assign bramA_12_Rst_A = A_12_RST_A;
assign bramA_12_Addr_A = A_12_ADDR_A;
assign bramA_12_EN_A = A_12_EN_A;
assign A_12_DOUT_A = bramA_12_Dout_A;
assign bramA_12_WEN_A = 0;
assign bramA_12_Din_A = 0;
assign bramA_12_WEN_B = 0;
assign bramA_12_Din_B = 0;
assign bramA_12_ready=    ready;
assign bramA_12_done = 0;


//------------------------bramA_13 Instantiation--------------

// The input and output of bramA_13
wire  bramA_13_Clk_A, bramA_13_Clk_B;
wire  bramA_13_EN_A, bramA_13_EN_B;
wire  [16 - 1 : 0] bramA_13_WEN_A, bramA_13_WEN_B;
wire    [31 : 0]    bramA_13_Addr_A, bramA_13_Addr_B;
wire    [127 : 0]    bramA_13_Din_A, bramA_13_Din_B;
wire    [127 : 0]    bramA_13_Dout_A, bramA_13_Dout_B;
wire    bramA_13_ready;
wire    bramA_13_done;

`AESL_BRAM_A_13 `AESL_BRAM_INST_A_13(
    .Clk_A    (bramA_13_Clk_A),
    .Rst_A    (bramA_13_Rst_A),
    .EN_A     (bramA_13_EN_A),
    .WEN_A    (bramA_13_WEN_A),
    .Addr_A   (bramA_13_Addr_A),
    .Din_A    (bramA_13_Din_A),
    .Dout_A   (bramA_13_Dout_A),
    .Clk_B    (bramA_13_Clk_B),
    .Rst_B    (bramA_13_Rst_B),
    .EN_B     (bramA_13_EN_B),
    .WEN_B    (bramA_13_WEN_B),
    .Addr_B   (bramA_13_Addr_B),
    .Din_B    (bramA_13_Din_B),
    .Dout_B   (bramA_13_Dout_B),
    .ready    (bramA_13_ready),
    .done        (bramA_13_done)
);

// Assignment between dut and bramA_13
assign bramA_13_Clk_A = A_13_CLK_A;
assign bramA_13_Rst_A = A_13_RST_A;
assign bramA_13_Addr_A = A_13_ADDR_A;
assign bramA_13_EN_A = A_13_EN_A;
assign A_13_DOUT_A = bramA_13_Dout_A;
assign bramA_13_WEN_A = 0;
assign bramA_13_Din_A = 0;
assign bramA_13_WEN_B = 0;
assign bramA_13_Din_B = 0;
assign bramA_13_ready=    ready;
assign bramA_13_done = 0;


//------------------------bramA_14 Instantiation--------------

// The input and output of bramA_14
wire  bramA_14_Clk_A, bramA_14_Clk_B;
wire  bramA_14_EN_A, bramA_14_EN_B;
wire  [16 - 1 : 0] bramA_14_WEN_A, bramA_14_WEN_B;
wire    [31 : 0]    bramA_14_Addr_A, bramA_14_Addr_B;
wire    [127 : 0]    bramA_14_Din_A, bramA_14_Din_B;
wire    [127 : 0]    bramA_14_Dout_A, bramA_14_Dout_B;
wire    bramA_14_ready;
wire    bramA_14_done;

`AESL_BRAM_A_14 `AESL_BRAM_INST_A_14(
    .Clk_A    (bramA_14_Clk_A),
    .Rst_A    (bramA_14_Rst_A),
    .EN_A     (bramA_14_EN_A),
    .WEN_A    (bramA_14_WEN_A),
    .Addr_A   (bramA_14_Addr_A),
    .Din_A    (bramA_14_Din_A),
    .Dout_A   (bramA_14_Dout_A),
    .Clk_B    (bramA_14_Clk_B),
    .Rst_B    (bramA_14_Rst_B),
    .EN_B     (bramA_14_EN_B),
    .WEN_B    (bramA_14_WEN_B),
    .Addr_B   (bramA_14_Addr_B),
    .Din_B    (bramA_14_Din_B),
    .Dout_B   (bramA_14_Dout_B),
    .ready    (bramA_14_ready),
    .done        (bramA_14_done)
);

// Assignment between dut and bramA_14
assign bramA_14_Clk_A = A_14_CLK_A;
assign bramA_14_Rst_A = A_14_RST_A;
assign bramA_14_Addr_A = A_14_ADDR_A;
assign bramA_14_EN_A = A_14_EN_A;
assign A_14_DOUT_A = bramA_14_Dout_A;
assign bramA_14_WEN_A = 0;
assign bramA_14_Din_A = 0;
assign bramA_14_WEN_B = 0;
assign bramA_14_Din_B = 0;
assign bramA_14_ready=    ready;
assign bramA_14_done = 0;


//------------------------bramA_15 Instantiation--------------

// The input and output of bramA_15
wire  bramA_15_Clk_A, bramA_15_Clk_B;
wire  bramA_15_EN_A, bramA_15_EN_B;
wire  [16 - 1 : 0] bramA_15_WEN_A, bramA_15_WEN_B;
wire    [31 : 0]    bramA_15_Addr_A, bramA_15_Addr_B;
wire    [127 : 0]    bramA_15_Din_A, bramA_15_Din_B;
wire    [127 : 0]    bramA_15_Dout_A, bramA_15_Dout_B;
wire    bramA_15_ready;
wire    bramA_15_done;

`AESL_BRAM_A_15 `AESL_BRAM_INST_A_15(
    .Clk_A    (bramA_15_Clk_A),
    .Rst_A    (bramA_15_Rst_A),
    .EN_A     (bramA_15_EN_A),
    .WEN_A    (bramA_15_WEN_A),
    .Addr_A   (bramA_15_Addr_A),
    .Din_A    (bramA_15_Din_A),
    .Dout_A   (bramA_15_Dout_A),
    .Clk_B    (bramA_15_Clk_B),
    .Rst_B    (bramA_15_Rst_B),
    .EN_B     (bramA_15_EN_B),
    .WEN_B    (bramA_15_WEN_B),
    .Addr_B   (bramA_15_Addr_B),
    .Din_B    (bramA_15_Din_B),
    .Dout_B   (bramA_15_Dout_B),
    .ready    (bramA_15_ready),
    .done        (bramA_15_done)
);

// Assignment between dut and bramA_15
assign bramA_15_Clk_A = A_15_CLK_A;
assign bramA_15_Rst_A = A_15_RST_A;
assign bramA_15_Addr_A = A_15_ADDR_A;
assign bramA_15_EN_A = A_15_EN_A;
assign A_15_DOUT_A = bramA_15_Dout_A;
assign bramA_15_WEN_A = 0;
assign bramA_15_Din_A = 0;
assign bramA_15_WEN_B = 0;
assign bramA_15_Din_B = 0;
assign bramA_15_ready=    ready;
assign bramA_15_done = 0;


//------------------------bramA_16 Instantiation--------------

// The input and output of bramA_16
wire  bramA_16_Clk_A, bramA_16_Clk_B;
wire  bramA_16_EN_A, bramA_16_EN_B;
wire  [16 - 1 : 0] bramA_16_WEN_A, bramA_16_WEN_B;
wire    [31 : 0]    bramA_16_Addr_A, bramA_16_Addr_B;
wire    [127 : 0]    bramA_16_Din_A, bramA_16_Din_B;
wire    [127 : 0]    bramA_16_Dout_A, bramA_16_Dout_B;
wire    bramA_16_ready;
wire    bramA_16_done;

`AESL_BRAM_A_16 `AESL_BRAM_INST_A_16(
    .Clk_A    (bramA_16_Clk_A),
    .Rst_A    (bramA_16_Rst_A),
    .EN_A     (bramA_16_EN_A),
    .WEN_A    (bramA_16_WEN_A),
    .Addr_A   (bramA_16_Addr_A),
    .Din_A    (bramA_16_Din_A),
    .Dout_A   (bramA_16_Dout_A),
    .Clk_B    (bramA_16_Clk_B),
    .Rst_B    (bramA_16_Rst_B),
    .EN_B     (bramA_16_EN_B),
    .WEN_B    (bramA_16_WEN_B),
    .Addr_B   (bramA_16_Addr_B),
    .Din_B    (bramA_16_Din_B),
    .Dout_B   (bramA_16_Dout_B),
    .ready    (bramA_16_ready),
    .done        (bramA_16_done)
);

// Assignment between dut and bramA_16
assign bramA_16_Clk_A = A_16_CLK_A;
assign bramA_16_Rst_A = A_16_RST_A;
assign bramA_16_Addr_A = A_16_ADDR_A;
assign bramA_16_EN_A = A_16_EN_A;
assign A_16_DOUT_A = bramA_16_Dout_A;
assign bramA_16_WEN_A = 0;
assign bramA_16_Din_A = 0;
assign bramA_16_WEN_B = 0;
assign bramA_16_Din_B = 0;
assign bramA_16_ready=    ready;
assign bramA_16_done = 0;


//------------------------bramA_17 Instantiation--------------

// The input and output of bramA_17
wire  bramA_17_Clk_A, bramA_17_Clk_B;
wire  bramA_17_EN_A, bramA_17_EN_B;
wire  [16 - 1 : 0] bramA_17_WEN_A, bramA_17_WEN_B;
wire    [31 : 0]    bramA_17_Addr_A, bramA_17_Addr_B;
wire    [127 : 0]    bramA_17_Din_A, bramA_17_Din_B;
wire    [127 : 0]    bramA_17_Dout_A, bramA_17_Dout_B;
wire    bramA_17_ready;
wire    bramA_17_done;

`AESL_BRAM_A_17 `AESL_BRAM_INST_A_17(
    .Clk_A    (bramA_17_Clk_A),
    .Rst_A    (bramA_17_Rst_A),
    .EN_A     (bramA_17_EN_A),
    .WEN_A    (bramA_17_WEN_A),
    .Addr_A   (bramA_17_Addr_A),
    .Din_A    (bramA_17_Din_A),
    .Dout_A   (bramA_17_Dout_A),
    .Clk_B    (bramA_17_Clk_B),
    .Rst_B    (bramA_17_Rst_B),
    .EN_B     (bramA_17_EN_B),
    .WEN_B    (bramA_17_WEN_B),
    .Addr_B   (bramA_17_Addr_B),
    .Din_B    (bramA_17_Din_B),
    .Dout_B   (bramA_17_Dout_B),
    .ready    (bramA_17_ready),
    .done        (bramA_17_done)
);

// Assignment between dut and bramA_17
assign bramA_17_Clk_A = A_17_CLK_A;
assign bramA_17_Rst_A = A_17_RST_A;
assign bramA_17_Addr_A = A_17_ADDR_A;
assign bramA_17_EN_A = A_17_EN_A;
assign A_17_DOUT_A = bramA_17_Dout_A;
assign bramA_17_WEN_A = 0;
assign bramA_17_Din_A = 0;
assign bramA_17_WEN_B = 0;
assign bramA_17_Din_B = 0;
assign bramA_17_ready=    ready;
assign bramA_17_done = 0;


//------------------------bramA_18 Instantiation--------------

// The input and output of bramA_18
wire  bramA_18_Clk_A, bramA_18_Clk_B;
wire  bramA_18_EN_A, bramA_18_EN_B;
wire  [16 - 1 : 0] bramA_18_WEN_A, bramA_18_WEN_B;
wire    [31 : 0]    bramA_18_Addr_A, bramA_18_Addr_B;
wire    [127 : 0]    bramA_18_Din_A, bramA_18_Din_B;
wire    [127 : 0]    bramA_18_Dout_A, bramA_18_Dout_B;
wire    bramA_18_ready;
wire    bramA_18_done;

`AESL_BRAM_A_18 `AESL_BRAM_INST_A_18(
    .Clk_A    (bramA_18_Clk_A),
    .Rst_A    (bramA_18_Rst_A),
    .EN_A     (bramA_18_EN_A),
    .WEN_A    (bramA_18_WEN_A),
    .Addr_A   (bramA_18_Addr_A),
    .Din_A    (bramA_18_Din_A),
    .Dout_A   (bramA_18_Dout_A),
    .Clk_B    (bramA_18_Clk_B),
    .Rst_B    (bramA_18_Rst_B),
    .EN_B     (bramA_18_EN_B),
    .WEN_B    (bramA_18_WEN_B),
    .Addr_B   (bramA_18_Addr_B),
    .Din_B    (bramA_18_Din_B),
    .Dout_B   (bramA_18_Dout_B),
    .ready    (bramA_18_ready),
    .done        (bramA_18_done)
);

// Assignment between dut and bramA_18
assign bramA_18_Clk_A = A_18_CLK_A;
assign bramA_18_Rst_A = A_18_RST_A;
assign bramA_18_Addr_A = A_18_ADDR_A;
assign bramA_18_EN_A = A_18_EN_A;
assign A_18_DOUT_A = bramA_18_Dout_A;
assign bramA_18_WEN_A = 0;
assign bramA_18_Din_A = 0;
assign bramA_18_WEN_B = 0;
assign bramA_18_Din_B = 0;
assign bramA_18_ready=    ready;
assign bramA_18_done = 0;


//------------------------bramA_19 Instantiation--------------

// The input and output of bramA_19
wire  bramA_19_Clk_A, bramA_19_Clk_B;
wire  bramA_19_EN_A, bramA_19_EN_B;
wire  [16 - 1 : 0] bramA_19_WEN_A, bramA_19_WEN_B;
wire    [31 : 0]    bramA_19_Addr_A, bramA_19_Addr_B;
wire    [127 : 0]    bramA_19_Din_A, bramA_19_Din_B;
wire    [127 : 0]    bramA_19_Dout_A, bramA_19_Dout_B;
wire    bramA_19_ready;
wire    bramA_19_done;

`AESL_BRAM_A_19 `AESL_BRAM_INST_A_19(
    .Clk_A    (bramA_19_Clk_A),
    .Rst_A    (bramA_19_Rst_A),
    .EN_A     (bramA_19_EN_A),
    .WEN_A    (bramA_19_WEN_A),
    .Addr_A   (bramA_19_Addr_A),
    .Din_A    (bramA_19_Din_A),
    .Dout_A   (bramA_19_Dout_A),
    .Clk_B    (bramA_19_Clk_B),
    .Rst_B    (bramA_19_Rst_B),
    .EN_B     (bramA_19_EN_B),
    .WEN_B    (bramA_19_WEN_B),
    .Addr_B   (bramA_19_Addr_B),
    .Din_B    (bramA_19_Din_B),
    .Dout_B   (bramA_19_Dout_B),
    .ready    (bramA_19_ready),
    .done        (bramA_19_done)
);

// Assignment between dut and bramA_19
assign bramA_19_Clk_A = A_19_CLK_A;
assign bramA_19_Rst_A = A_19_RST_A;
assign bramA_19_Addr_A = A_19_ADDR_A;
assign bramA_19_EN_A = A_19_EN_A;
assign A_19_DOUT_A = bramA_19_Dout_A;
assign bramA_19_WEN_A = 0;
assign bramA_19_Din_A = 0;
assign bramA_19_WEN_B = 0;
assign bramA_19_Din_B = 0;
assign bramA_19_ready=    ready;
assign bramA_19_done = 0;


//------------------------bramA_20 Instantiation--------------

// The input and output of bramA_20
wire  bramA_20_Clk_A, bramA_20_Clk_B;
wire  bramA_20_EN_A, bramA_20_EN_B;
wire  [16 - 1 : 0] bramA_20_WEN_A, bramA_20_WEN_B;
wire    [31 : 0]    bramA_20_Addr_A, bramA_20_Addr_B;
wire    [127 : 0]    bramA_20_Din_A, bramA_20_Din_B;
wire    [127 : 0]    bramA_20_Dout_A, bramA_20_Dout_B;
wire    bramA_20_ready;
wire    bramA_20_done;

`AESL_BRAM_A_20 `AESL_BRAM_INST_A_20(
    .Clk_A    (bramA_20_Clk_A),
    .Rst_A    (bramA_20_Rst_A),
    .EN_A     (bramA_20_EN_A),
    .WEN_A    (bramA_20_WEN_A),
    .Addr_A   (bramA_20_Addr_A),
    .Din_A    (bramA_20_Din_A),
    .Dout_A   (bramA_20_Dout_A),
    .Clk_B    (bramA_20_Clk_B),
    .Rst_B    (bramA_20_Rst_B),
    .EN_B     (bramA_20_EN_B),
    .WEN_B    (bramA_20_WEN_B),
    .Addr_B   (bramA_20_Addr_B),
    .Din_B    (bramA_20_Din_B),
    .Dout_B   (bramA_20_Dout_B),
    .ready    (bramA_20_ready),
    .done        (bramA_20_done)
);

// Assignment between dut and bramA_20
assign bramA_20_Clk_A = A_20_CLK_A;
assign bramA_20_Rst_A = A_20_RST_A;
assign bramA_20_Addr_A = A_20_ADDR_A;
assign bramA_20_EN_A = A_20_EN_A;
assign A_20_DOUT_A = bramA_20_Dout_A;
assign bramA_20_WEN_A = 0;
assign bramA_20_Din_A = 0;
assign bramA_20_WEN_B = 0;
assign bramA_20_Din_B = 0;
assign bramA_20_ready=    ready;
assign bramA_20_done = 0;


//------------------------bramA_21 Instantiation--------------

// The input and output of bramA_21
wire  bramA_21_Clk_A, bramA_21_Clk_B;
wire  bramA_21_EN_A, bramA_21_EN_B;
wire  [16 - 1 : 0] bramA_21_WEN_A, bramA_21_WEN_B;
wire    [31 : 0]    bramA_21_Addr_A, bramA_21_Addr_B;
wire    [127 : 0]    bramA_21_Din_A, bramA_21_Din_B;
wire    [127 : 0]    bramA_21_Dout_A, bramA_21_Dout_B;
wire    bramA_21_ready;
wire    bramA_21_done;

`AESL_BRAM_A_21 `AESL_BRAM_INST_A_21(
    .Clk_A    (bramA_21_Clk_A),
    .Rst_A    (bramA_21_Rst_A),
    .EN_A     (bramA_21_EN_A),
    .WEN_A    (bramA_21_WEN_A),
    .Addr_A   (bramA_21_Addr_A),
    .Din_A    (bramA_21_Din_A),
    .Dout_A   (bramA_21_Dout_A),
    .Clk_B    (bramA_21_Clk_B),
    .Rst_B    (bramA_21_Rst_B),
    .EN_B     (bramA_21_EN_B),
    .WEN_B    (bramA_21_WEN_B),
    .Addr_B   (bramA_21_Addr_B),
    .Din_B    (bramA_21_Din_B),
    .Dout_B   (bramA_21_Dout_B),
    .ready    (bramA_21_ready),
    .done        (bramA_21_done)
);

// Assignment between dut and bramA_21
assign bramA_21_Clk_A = A_21_CLK_A;
assign bramA_21_Rst_A = A_21_RST_A;
assign bramA_21_Addr_A = A_21_ADDR_A;
assign bramA_21_EN_A = A_21_EN_A;
assign A_21_DOUT_A = bramA_21_Dout_A;
assign bramA_21_WEN_A = 0;
assign bramA_21_Din_A = 0;
assign bramA_21_WEN_B = 0;
assign bramA_21_Din_B = 0;
assign bramA_21_ready=    ready;
assign bramA_21_done = 0;


//------------------------bramA_22 Instantiation--------------

// The input and output of bramA_22
wire  bramA_22_Clk_A, bramA_22_Clk_B;
wire  bramA_22_EN_A, bramA_22_EN_B;
wire  [16 - 1 : 0] bramA_22_WEN_A, bramA_22_WEN_B;
wire    [31 : 0]    bramA_22_Addr_A, bramA_22_Addr_B;
wire    [127 : 0]    bramA_22_Din_A, bramA_22_Din_B;
wire    [127 : 0]    bramA_22_Dout_A, bramA_22_Dout_B;
wire    bramA_22_ready;
wire    bramA_22_done;

`AESL_BRAM_A_22 `AESL_BRAM_INST_A_22(
    .Clk_A    (bramA_22_Clk_A),
    .Rst_A    (bramA_22_Rst_A),
    .EN_A     (bramA_22_EN_A),
    .WEN_A    (bramA_22_WEN_A),
    .Addr_A   (bramA_22_Addr_A),
    .Din_A    (bramA_22_Din_A),
    .Dout_A   (bramA_22_Dout_A),
    .Clk_B    (bramA_22_Clk_B),
    .Rst_B    (bramA_22_Rst_B),
    .EN_B     (bramA_22_EN_B),
    .WEN_B    (bramA_22_WEN_B),
    .Addr_B   (bramA_22_Addr_B),
    .Din_B    (bramA_22_Din_B),
    .Dout_B   (bramA_22_Dout_B),
    .ready    (bramA_22_ready),
    .done        (bramA_22_done)
);

// Assignment between dut and bramA_22
assign bramA_22_Clk_A = A_22_CLK_A;
assign bramA_22_Rst_A = A_22_RST_A;
assign bramA_22_Addr_A = A_22_ADDR_A;
assign bramA_22_EN_A = A_22_EN_A;
assign A_22_DOUT_A = bramA_22_Dout_A;
assign bramA_22_WEN_A = 0;
assign bramA_22_Din_A = 0;
assign bramA_22_WEN_B = 0;
assign bramA_22_Din_B = 0;
assign bramA_22_ready=    ready;
assign bramA_22_done = 0;


//------------------------bramA_23 Instantiation--------------

// The input and output of bramA_23
wire  bramA_23_Clk_A, bramA_23_Clk_B;
wire  bramA_23_EN_A, bramA_23_EN_B;
wire  [16 - 1 : 0] bramA_23_WEN_A, bramA_23_WEN_B;
wire    [31 : 0]    bramA_23_Addr_A, bramA_23_Addr_B;
wire    [127 : 0]    bramA_23_Din_A, bramA_23_Din_B;
wire    [127 : 0]    bramA_23_Dout_A, bramA_23_Dout_B;
wire    bramA_23_ready;
wire    bramA_23_done;

`AESL_BRAM_A_23 `AESL_BRAM_INST_A_23(
    .Clk_A    (bramA_23_Clk_A),
    .Rst_A    (bramA_23_Rst_A),
    .EN_A     (bramA_23_EN_A),
    .WEN_A    (bramA_23_WEN_A),
    .Addr_A   (bramA_23_Addr_A),
    .Din_A    (bramA_23_Din_A),
    .Dout_A   (bramA_23_Dout_A),
    .Clk_B    (bramA_23_Clk_B),
    .Rst_B    (bramA_23_Rst_B),
    .EN_B     (bramA_23_EN_B),
    .WEN_B    (bramA_23_WEN_B),
    .Addr_B   (bramA_23_Addr_B),
    .Din_B    (bramA_23_Din_B),
    .Dout_B   (bramA_23_Dout_B),
    .ready    (bramA_23_ready),
    .done        (bramA_23_done)
);

// Assignment between dut and bramA_23
assign bramA_23_Clk_A = A_23_CLK_A;
assign bramA_23_Rst_A = A_23_RST_A;
assign bramA_23_Addr_A = A_23_ADDR_A;
assign bramA_23_EN_A = A_23_EN_A;
assign A_23_DOUT_A = bramA_23_Dout_A;
assign bramA_23_WEN_A = 0;
assign bramA_23_Din_A = 0;
assign bramA_23_WEN_B = 0;
assign bramA_23_Din_B = 0;
assign bramA_23_ready=    ready;
assign bramA_23_done = 0;


//------------------------bramA_24 Instantiation--------------

// The input and output of bramA_24
wire  bramA_24_Clk_A, bramA_24_Clk_B;
wire  bramA_24_EN_A, bramA_24_EN_B;
wire  [16 - 1 : 0] bramA_24_WEN_A, bramA_24_WEN_B;
wire    [31 : 0]    bramA_24_Addr_A, bramA_24_Addr_B;
wire    [127 : 0]    bramA_24_Din_A, bramA_24_Din_B;
wire    [127 : 0]    bramA_24_Dout_A, bramA_24_Dout_B;
wire    bramA_24_ready;
wire    bramA_24_done;

`AESL_BRAM_A_24 `AESL_BRAM_INST_A_24(
    .Clk_A    (bramA_24_Clk_A),
    .Rst_A    (bramA_24_Rst_A),
    .EN_A     (bramA_24_EN_A),
    .WEN_A    (bramA_24_WEN_A),
    .Addr_A   (bramA_24_Addr_A),
    .Din_A    (bramA_24_Din_A),
    .Dout_A   (bramA_24_Dout_A),
    .Clk_B    (bramA_24_Clk_B),
    .Rst_B    (bramA_24_Rst_B),
    .EN_B     (bramA_24_EN_B),
    .WEN_B    (bramA_24_WEN_B),
    .Addr_B   (bramA_24_Addr_B),
    .Din_B    (bramA_24_Din_B),
    .Dout_B   (bramA_24_Dout_B),
    .ready    (bramA_24_ready),
    .done        (bramA_24_done)
);

// Assignment between dut and bramA_24
assign bramA_24_Clk_A = A_24_CLK_A;
assign bramA_24_Rst_A = A_24_RST_A;
assign bramA_24_Addr_A = A_24_ADDR_A;
assign bramA_24_EN_A = A_24_EN_A;
assign A_24_DOUT_A = bramA_24_Dout_A;
assign bramA_24_WEN_A = 0;
assign bramA_24_Din_A = 0;
assign bramA_24_WEN_B = 0;
assign bramA_24_Din_B = 0;
assign bramA_24_ready=    ready;
assign bramA_24_done = 0;


//------------------------bramA_25 Instantiation--------------

// The input and output of bramA_25
wire  bramA_25_Clk_A, bramA_25_Clk_B;
wire  bramA_25_EN_A, bramA_25_EN_B;
wire  [16 - 1 : 0] bramA_25_WEN_A, bramA_25_WEN_B;
wire    [31 : 0]    bramA_25_Addr_A, bramA_25_Addr_B;
wire    [127 : 0]    bramA_25_Din_A, bramA_25_Din_B;
wire    [127 : 0]    bramA_25_Dout_A, bramA_25_Dout_B;
wire    bramA_25_ready;
wire    bramA_25_done;

`AESL_BRAM_A_25 `AESL_BRAM_INST_A_25(
    .Clk_A    (bramA_25_Clk_A),
    .Rst_A    (bramA_25_Rst_A),
    .EN_A     (bramA_25_EN_A),
    .WEN_A    (bramA_25_WEN_A),
    .Addr_A   (bramA_25_Addr_A),
    .Din_A    (bramA_25_Din_A),
    .Dout_A   (bramA_25_Dout_A),
    .Clk_B    (bramA_25_Clk_B),
    .Rst_B    (bramA_25_Rst_B),
    .EN_B     (bramA_25_EN_B),
    .WEN_B    (bramA_25_WEN_B),
    .Addr_B   (bramA_25_Addr_B),
    .Din_B    (bramA_25_Din_B),
    .Dout_B   (bramA_25_Dout_B),
    .ready    (bramA_25_ready),
    .done        (bramA_25_done)
);

// Assignment between dut and bramA_25
assign bramA_25_Clk_A = A_25_CLK_A;
assign bramA_25_Rst_A = A_25_RST_A;
assign bramA_25_Addr_A = A_25_ADDR_A;
assign bramA_25_EN_A = A_25_EN_A;
assign A_25_DOUT_A = bramA_25_Dout_A;
assign bramA_25_WEN_A = 0;
assign bramA_25_Din_A = 0;
assign bramA_25_WEN_B = 0;
assign bramA_25_Din_B = 0;
assign bramA_25_ready=    ready;
assign bramA_25_done = 0;


//------------------------bramA_26 Instantiation--------------

// The input and output of bramA_26
wire  bramA_26_Clk_A, bramA_26_Clk_B;
wire  bramA_26_EN_A, bramA_26_EN_B;
wire  [16 - 1 : 0] bramA_26_WEN_A, bramA_26_WEN_B;
wire    [31 : 0]    bramA_26_Addr_A, bramA_26_Addr_B;
wire    [127 : 0]    bramA_26_Din_A, bramA_26_Din_B;
wire    [127 : 0]    bramA_26_Dout_A, bramA_26_Dout_B;
wire    bramA_26_ready;
wire    bramA_26_done;

`AESL_BRAM_A_26 `AESL_BRAM_INST_A_26(
    .Clk_A    (bramA_26_Clk_A),
    .Rst_A    (bramA_26_Rst_A),
    .EN_A     (bramA_26_EN_A),
    .WEN_A    (bramA_26_WEN_A),
    .Addr_A   (bramA_26_Addr_A),
    .Din_A    (bramA_26_Din_A),
    .Dout_A   (bramA_26_Dout_A),
    .Clk_B    (bramA_26_Clk_B),
    .Rst_B    (bramA_26_Rst_B),
    .EN_B     (bramA_26_EN_B),
    .WEN_B    (bramA_26_WEN_B),
    .Addr_B   (bramA_26_Addr_B),
    .Din_B    (bramA_26_Din_B),
    .Dout_B   (bramA_26_Dout_B),
    .ready    (bramA_26_ready),
    .done        (bramA_26_done)
);

// Assignment between dut and bramA_26
assign bramA_26_Clk_A = A_26_CLK_A;
assign bramA_26_Rst_A = A_26_RST_A;
assign bramA_26_Addr_A = A_26_ADDR_A;
assign bramA_26_EN_A = A_26_EN_A;
assign A_26_DOUT_A = bramA_26_Dout_A;
assign bramA_26_WEN_A = 0;
assign bramA_26_Din_A = 0;
assign bramA_26_WEN_B = 0;
assign bramA_26_Din_B = 0;
assign bramA_26_ready=    ready;
assign bramA_26_done = 0;


//------------------------bramA_27 Instantiation--------------

// The input and output of bramA_27
wire  bramA_27_Clk_A, bramA_27_Clk_B;
wire  bramA_27_EN_A, bramA_27_EN_B;
wire  [16 - 1 : 0] bramA_27_WEN_A, bramA_27_WEN_B;
wire    [31 : 0]    bramA_27_Addr_A, bramA_27_Addr_B;
wire    [127 : 0]    bramA_27_Din_A, bramA_27_Din_B;
wire    [127 : 0]    bramA_27_Dout_A, bramA_27_Dout_B;
wire    bramA_27_ready;
wire    bramA_27_done;

`AESL_BRAM_A_27 `AESL_BRAM_INST_A_27(
    .Clk_A    (bramA_27_Clk_A),
    .Rst_A    (bramA_27_Rst_A),
    .EN_A     (bramA_27_EN_A),
    .WEN_A    (bramA_27_WEN_A),
    .Addr_A   (bramA_27_Addr_A),
    .Din_A    (bramA_27_Din_A),
    .Dout_A   (bramA_27_Dout_A),
    .Clk_B    (bramA_27_Clk_B),
    .Rst_B    (bramA_27_Rst_B),
    .EN_B     (bramA_27_EN_B),
    .WEN_B    (bramA_27_WEN_B),
    .Addr_B   (bramA_27_Addr_B),
    .Din_B    (bramA_27_Din_B),
    .Dout_B   (bramA_27_Dout_B),
    .ready    (bramA_27_ready),
    .done        (bramA_27_done)
);

// Assignment between dut and bramA_27
assign bramA_27_Clk_A = A_27_CLK_A;
assign bramA_27_Rst_A = A_27_RST_A;
assign bramA_27_Addr_A = A_27_ADDR_A;
assign bramA_27_EN_A = A_27_EN_A;
assign A_27_DOUT_A = bramA_27_Dout_A;
assign bramA_27_WEN_A = 0;
assign bramA_27_Din_A = 0;
assign bramA_27_WEN_B = 0;
assign bramA_27_Din_B = 0;
assign bramA_27_ready=    ready;
assign bramA_27_done = 0;


//------------------------bramA_28 Instantiation--------------

// The input and output of bramA_28
wire  bramA_28_Clk_A, bramA_28_Clk_B;
wire  bramA_28_EN_A, bramA_28_EN_B;
wire  [16 - 1 : 0] bramA_28_WEN_A, bramA_28_WEN_B;
wire    [31 : 0]    bramA_28_Addr_A, bramA_28_Addr_B;
wire    [127 : 0]    bramA_28_Din_A, bramA_28_Din_B;
wire    [127 : 0]    bramA_28_Dout_A, bramA_28_Dout_B;
wire    bramA_28_ready;
wire    bramA_28_done;

`AESL_BRAM_A_28 `AESL_BRAM_INST_A_28(
    .Clk_A    (bramA_28_Clk_A),
    .Rst_A    (bramA_28_Rst_A),
    .EN_A     (bramA_28_EN_A),
    .WEN_A    (bramA_28_WEN_A),
    .Addr_A   (bramA_28_Addr_A),
    .Din_A    (bramA_28_Din_A),
    .Dout_A   (bramA_28_Dout_A),
    .Clk_B    (bramA_28_Clk_B),
    .Rst_B    (bramA_28_Rst_B),
    .EN_B     (bramA_28_EN_B),
    .WEN_B    (bramA_28_WEN_B),
    .Addr_B   (bramA_28_Addr_B),
    .Din_B    (bramA_28_Din_B),
    .Dout_B   (bramA_28_Dout_B),
    .ready    (bramA_28_ready),
    .done        (bramA_28_done)
);

// Assignment between dut and bramA_28
assign bramA_28_Clk_A = A_28_CLK_A;
assign bramA_28_Rst_A = A_28_RST_A;
assign bramA_28_Addr_A = A_28_ADDR_A;
assign bramA_28_EN_A = A_28_EN_A;
assign A_28_DOUT_A = bramA_28_Dout_A;
assign bramA_28_WEN_A = 0;
assign bramA_28_Din_A = 0;
assign bramA_28_WEN_B = 0;
assign bramA_28_Din_B = 0;
assign bramA_28_ready=    ready;
assign bramA_28_done = 0;


//------------------------bramA_29 Instantiation--------------

// The input and output of bramA_29
wire  bramA_29_Clk_A, bramA_29_Clk_B;
wire  bramA_29_EN_A, bramA_29_EN_B;
wire  [16 - 1 : 0] bramA_29_WEN_A, bramA_29_WEN_B;
wire    [31 : 0]    bramA_29_Addr_A, bramA_29_Addr_B;
wire    [127 : 0]    bramA_29_Din_A, bramA_29_Din_B;
wire    [127 : 0]    bramA_29_Dout_A, bramA_29_Dout_B;
wire    bramA_29_ready;
wire    bramA_29_done;

`AESL_BRAM_A_29 `AESL_BRAM_INST_A_29(
    .Clk_A    (bramA_29_Clk_A),
    .Rst_A    (bramA_29_Rst_A),
    .EN_A     (bramA_29_EN_A),
    .WEN_A    (bramA_29_WEN_A),
    .Addr_A   (bramA_29_Addr_A),
    .Din_A    (bramA_29_Din_A),
    .Dout_A   (bramA_29_Dout_A),
    .Clk_B    (bramA_29_Clk_B),
    .Rst_B    (bramA_29_Rst_B),
    .EN_B     (bramA_29_EN_B),
    .WEN_B    (bramA_29_WEN_B),
    .Addr_B   (bramA_29_Addr_B),
    .Din_B    (bramA_29_Din_B),
    .Dout_B   (bramA_29_Dout_B),
    .ready    (bramA_29_ready),
    .done        (bramA_29_done)
);

// Assignment between dut and bramA_29
assign bramA_29_Clk_A = A_29_CLK_A;
assign bramA_29_Rst_A = A_29_RST_A;
assign bramA_29_Addr_A = A_29_ADDR_A;
assign bramA_29_EN_A = A_29_EN_A;
assign A_29_DOUT_A = bramA_29_Dout_A;
assign bramA_29_WEN_A = 0;
assign bramA_29_Din_A = 0;
assign bramA_29_WEN_B = 0;
assign bramA_29_Din_B = 0;
assign bramA_29_ready=    ready;
assign bramA_29_done = 0;


//------------------------bramA_30 Instantiation--------------

// The input and output of bramA_30
wire  bramA_30_Clk_A, bramA_30_Clk_B;
wire  bramA_30_EN_A, bramA_30_EN_B;
wire  [16 - 1 : 0] bramA_30_WEN_A, bramA_30_WEN_B;
wire    [31 : 0]    bramA_30_Addr_A, bramA_30_Addr_B;
wire    [127 : 0]    bramA_30_Din_A, bramA_30_Din_B;
wire    [127 : 0]    bramA_30_Dout_A, bramA_30_Dout_B;
wire    bramA_30_ready;
wire    bramA_30_done;

`AESL_BRAM_A_30 `AESL_BRAM_INST_A_30(
    .Clk_A    (bramA_30_Clk_A),
    .Rst_A    (bramA_30_Rst_A),
    .EN_A     (bramA_30_EN_A),
    .WEN_A    (bramA_30_WEN_A),
    .Addr_A   (bramA_30_Addr_A),
    .Din_A    (bramA_30_Din_A),
    .Dout_A   (bramA_30_Dout_A),
    .Clk_B    (bramA_30_Clk_B),
    .Rst_B    (bramA_30_Rst_B),
    .EN_B     (bramA_30_EN_B),
    .WEN_B    (bramA_30_WEN_B),
    .Addr_B   (bramA_30_Addr_B),
    .Din_B    (bramA_30_Din_B),
    .Dout_B   (bramA_30_Dout_B),
    .ready    (bramA_30_ready),
    .done        (bramA_30_done)
);

// Assignment between dut and bramA_30
assign bramA_30_Clk_A = A_30_CLK_A;
assign bramA_30_Rst_A = A_30_RST_A;
assign bramA_30_Addr_A = A_30_ADDR_A;
assign bramA_30_EN_A = A_30_EN_A;
assign A_30_DOUT_A = bramA_30_Dout_A;
assign bramA_30_WEN_A = 0;
assign bramA_30_Din_A = 0;
assign bramA_30_WEN_B = 0;
assign bramA_30_Din_B = 0;
assign bramA_30_ready=    ready;
assign bramA_30_done = 0;


//------------------------bramA_31 Instantiation--------------

// The input and output of bramA_31
wire  bramA_31_Clk_A, bramA_31_Clk_B;
wire  bramA_31_EN_A, bramA_31_EN_B;
wire  [16 - 1 : 0] bramA_31_WEN_A, bramA_31_WEN_B;
wire    [31 : 0]    bramA_31_Addr_A, bramA_31_Addr_B;
wire    [127 : 0]    bramA_31_Din_A, bramA_31_Din_B;
wire    [127 : 0]    bramA_31_Dout_A, bramA_31_Dout_B;
wire    bramA_31_ready;
wire    bramA_31_done;

`AESL_BRAM_A_31 `AESL_BRAM_INST_A_31(
    .Clk_A    (bramA_31_Clk_A),
    .Rst_A    (bramA_31_Rst_A),
    .EN_A     (bramA_31_EN_A),
    .WEN_A    (bramA_31_WEN_A),
    .Addr_A   (bramA_31_Addr_A),
    .Din_A    (bramA_31_Din_A),
    .Dout_A   (bramA_31_Dout_A),
    .Clk_B    (bramA_31_Clk_B),
    .Rst_B    (bramA_31_Rst_B),
    .EN_B     (bramA_31_EN_B),
    .WEN_B    (bramA_31_WEN_B),
    .Addr_B   (bramA_31_Addr_B),
    .Din_B    (bramA_31_Din_B),
    .Dout_B   (bramA_31_Dout_B),
    .ready    (bramA_31_ready),
    .done        (bramA_31_done)
);

// Assignment between dut and bramA_31
assign bramA_31_Clk_A = A_31_CLK_A;
assign bramA_31_Rst_A = A_31_RST_A;
assign bramA_31_Addr_A = A_31_ADDR_A;
assign bramA_31_EN_A = A_31_EN_A;
assign A_31_DOUT_A = bramA_31_Dout_A;
assign bramA_31_WEN_A = 0;
assign bramA_31_Din_A = 0;
assign bramA_31_WEN_B = 0;
assign bramA_31_Din_B = 0;
assign bramA_31_ready=    ready;
assign bramA_31_done = 0;


//------------------------bramB_0 Instantiation--------------

// The input and output of bramB_0
wire  bramB_0_Clk_A, bramB_0_Clk_B;
wire  bramB_0_EN_A, bramB_0_EN_B;
wire  [16 - 1 : 0] bramB_0_WEN_A, bramB_0_WEN_B;
wire    [31 : 0]    bramB_0_Addr_A, bramB_0_Addr_B;
wire    [127 : 0]    bramB_0_Din_A, bramB_0_Din_B;
wire    [127 : 0]    bramB_0_Dout_A, bramB_0_Dout_B;
wire    bramB_0_ready;
wire    bramB_0_done;

`AESL_BRAM_B_0 `AESL_BRAM_INST_B_0(
    .Clk_A    (bramB_0_Clk_A),
    .Rst_A    (bramB_0_Rst_A),
    .EN_A     (bramB_0_EN_A),
    .WEN_A    (bramB_0_WEN_A),
    .Addr_A   (bramB_0_Addr_A),
    .Din_A    (bramB_0_Din_A),
    .Dout_A   (bramB_0_Dout_A),
    .Clk_B    (bramB_0_Clk_B),
    .Rst_B    (bramB_0_Rst_B),
    .EN_B     (bramB_0_EN_B),
    .WEN_B    (bramB_0_WEN_B),
    .Addr_B   (bramB_0_Addr_B),
    .Din_B    (bramB_0_Din_B),
    .Dout_B   (bramB_0_Dout_B),
    .ready    (bramB_0_ready),
    .done        (bramB_0_done)
);

// Assignment between dut and bramB_0
assign bramB_0_Clk_A = B_0_CLK_A;
assign bramB_0_Rst_A = B_0_RST_A;
assign bramB_0_Addr_A = B_0_ADDR_A;
assign bramB_0_EN_A = B_0_EN_A;
assign B_0_DOUT_A = bramB_0_Dout_A;
assign bramB_0_WEN_A = 0;
assign bramB_0_Din_A = 0;
assign bramB_0_WEN_B = 0;
assign bramB_0_Din_B = 0;
assign bramB_0_ready=    ready;
assign bramB_0_done = 0;


//------------------------bramB_1 Instantiation--------------

// The input and output of bramB_1
wire  bramB_1_Clk_A, bramB_1_Clk_B;
wire  bramB_1_EN_A, bramB_1_EN_B;
wire  [16 - 1 : 0] bramB_1_WEN_A, bramB_1_WEN_B;
wire    [31 : 0]    bramB_1_Addr_A, bramB_1_Addr_B;
wire    [127 : 0]    bramB_1_Din_A, bramB_1_Din_B;
wire    [127 : 0]    bramB_1_Dout_A, bramB_1_Dout_B;
wire    bramB_1_ready;
wire    bramB_1_done;

`AESL_BRAM_B_1 `AESL_BRAM_INST_B_1(
    .Clk_A    (bramB_1_Clk_A),
    .Rst_A    (bramB_1_Rst_A),
    .EN_A     (bramB_1_EN_A),
    .WEN_A    (bramB_1_WEN_A),
    .Addr_A   (bramB_1_Addr_A),
    .Din_A    (bramB_1_Din_A),
    .Dout_A   (bramB_1_Dout_A),
    .Clk_B    (bramB_1_Clk_B),
    .Rst_B    (bramB_1_Rst_B),
    .EN_B     (bramB_1_EN_B),
    .WEN_B    (bramB_1_WEN_B),
    .Addr_B   (bramB_1_Addr_B),
    .Din_B    (bramB_1_Din_B),
    .Dout_B   (bramB_1_Dout_B),
    .ready    (bramB_1_ready),
    .done        (bramB_1_done)
);

// Assignment between dut and bramB_1
assign bramB_1_Clk_A = B_1_CLK_A;
assign bramB_1_Rst_A = B_1_RST_A;
assign bramB_1_Addr_A = B_1_ADDR_A;
assign bramB_1_EN_A = B_1_EN_A;
assign B_1_DOUT_A = bramB_1_Dout_A;
assign bramB_1_WEN_A = 0;
assign bramB_1_Din_A = 0;
assign bramB_1_WEN_B = 0;
assign bramB_1_Din_B = 0;
assign bramB_1_ready=    ready;
assign bramB_1_done = 0;


//------------------------bramB_2 Instantiation--------------

// The input and output of bramB_2
wire  bramB_2_Clk_A, bramB_2_Clk_B;
wire  bramB_2_EN_A, bramB_2_EN_B;
wire  [16 - 1 : 0] bramB_2_WEN_A, bramB_2_WEN_B;
wire    [31 : 0]    bramB_2_Addr_A, bramB_2_Addr_B;
wire    [127 : 0]    bramB_2_Din_A, bramB_2_Din_B;
wire    [127 : 0]    bramB_2_Dout_A, bramB_2_Dout_B;
wire    bramB_2_ready;
wire    bramB_2_done;

`AESL_BRAM_B_2 `AESL_BRAM_INST_B_2(
    .Clk_A    (bramB_2_Clk_A),
    .Rst_A    (bramB_2_Rst_A),
    .EN_A     (bramB_2_EN_A),
    .WEN_A    (bramB_2_WEN_A),
    .Addr_A   (bramB_2_Addr_A),
    .Din_A    (bramB_2_Din_A),
    .Dout_A   (bramB_2_Dout_A),
    .Clk_B    (bramB_2_Clk_B),
    .Rst_B    (bramB_2_Rst_B),
    .EN_B     (bramB_2_EN_B),
    .WEN_B    (bramB_2_WEN_B),
    .Addr_B   (bramB_2_Addr_B),
    .Din_B    (bramB_2_Din_B),
    .Dout_B   (bramB_2_Dout_B),
    .ready    (bramB_2_ready),
    .done        (bramB_2_done)
);

// Assignment between dut and bramB_2
assign bramB_2_Clk_A = B_2_CLK_A;
assign bramB_2_Rst_A = B_2_RST_A;
assign bramB_2_Addr_A = B_2_ADDR_A;
assign bramB_2_EN_A = B_2_EN_A;
assign B_2_DOUT_A = bramB_2_Dout_A;
assign bramB_2_WEN_A = 0;
assign bramB_2_Din_A = 0;
assign bramB_2_WEN_B = 0;
assign bramB_2_Din_B = 0;
assign bramB_2_ready=    ready;
assign bramB_2_done = 0;


//------------------------bramB_3 Instantiation--------------

// The input and output of bramB_3
wire  bramB_3_Clk_A, bramB_3_Clk_B;
wire  bramB_3_EN_A, bramB_3_EN_B;
wire  [16 - 1 : 0] bramB_3_WEN_A, bramB_3_WEN_B;
wire    [31 : 0]    bramB_3_Addr_A, bramB_3_Addr_B;
wire    [127 : 0]    bramB_3_Din_A, bramB_3_Din_B;
wire    [127 : 0]    bramB_3_Dout_A, bramB_3_Dout_B;
wire    bramB_3_ready;
wire    bramB_3_done;

`AESL_BRAM_B_3 `AESL_BRAM_INST_B_3(
    .Clk_A    (bramB_3_Clk_A),
    .Rst_A    (bramB_3_Rst_A),
    .EN_A     (bramB_3_EN_A),
    .WEN_A    (bramB_3_WEN_A),
    .Addr_A   (bramB_3_Addr_A),
    .Din_A    (bramB_3_Din_A),
    .Dout_A   (bramB_3_Dout_A),
    .Clk_B    (bramB_3_Clk_B),
    .Rst_B    (bramB_3_Rst_B),
    .EN_B     (bramB_3_EN_B),
    .WEN_B    (bramB_3_WEN_B),
    .Addr_B   (bramB_3_Addr_B),
    .Din_B    (bramB_3_Din_B),
    .Dout_B   (bramB_3_Dout_B),
    .ready    (bramB_3_ready),
    .done        (bramB_3_done)
);

// Assignment between dut and bramB_3
assign bramB_3_Clk_A = B_3_CLK_A;
assign bramB_3_Rst_A = B_3_RST_A;
assign bramB_3_Addr_A = B_3_ADDR_A;
assign bramB_3_EN_A = B_3_EN_A;
assign B_3_DOUT_A = bramB_3_Dout_A;
assign bramB_3_WEN_A = 0;
assign bramB_3_Din_A = 0;
assign bramB_3_WEN_B = 0;
assign bramB_3_Din_B = 0;
assign bramB_3_ready=    ready;
assign bramB_3_done = 0;


//------------------------bramB_4 Instantiation--------------

// The input and output of bramB_4
wire  bramB_4_Clk_A, bramB_4_Clk_B;
wire  bramB_4_EN_A, bramB_4_EN_B;
wire  [16 - 1 : 0] bramB_4_WEN_A, bramB_4_WEN_B;
wire    [31 : 0]    bramB_4_Addr_A, bramB_4_Addr_B;
wire    [127 : 0]    bramB_4_Din_A, bramB_4_Din_B;
wire    [127 : 0]    bramB_4_Dout_A, bramB_4_Dout_B;
wire    bramB_4_ready;
wire    bramB_4_done;

`AESL_BRAM_B_4 `AESL_BRAM_INST_B_4(
    .Clk_A    (bramB_4_Clk_A),
    .Rst_A    (bramB_4_Rst_A),
    .EN_A     (bramB_4_EN_A),
    .WEN_A    (bramB_4_WEN_A),
    .Addr_A   (bramB_4_Addr_A),
    .Din_A    (bramB_4_Din_A),
    .Dout_A   (bramB_4_Dout_A),
    .Clk_B    (bramB_4_Clk_B),
    .Rst_B    (bramB_4_Rst_B),
    .EN_B     (bramB_4_EN_B),
    .WEN_B    (bramB_4_WEN_B),
    .Addr_B   (bramB_4_Addr_B),
    .Din_B    (bramB_4_Din_B),
    .Dout_B   (bramB_4_Dout_B),
    .ready    (bramB_4_ready),
    .done        (bramB_4_done)
);

// Assignment between dut and bramB_4
assign bramB_4_Clk_A = B_4_CLK_A;
assign bramB_4_Rst_A = B_4_RST_A;
assign bramB_4_Addr_A = B_4_ADDR_A;
assign bramB_4_EN_A = B_4_EN_A;
assign B_4_DOUT_A = bramB_4_Dout_A;
assign bramB_4_WEN_A = 0;
assign bramB_4_Din_A = 0;
assign bramB_4_WEN_B = 0;
assign bramB_4_Din_B = 0;
assign bramB_4_ready=    ready;
assign bramB_4_done = 0;


//------------------------bramB_5 Instantiation--------------

// The input and output of bramB_5
wire  bramB_5_Clk_A, bramB_5_Clk_B;
wire  bramB_5_EN_A, bramB_5_EN_B;
wire  [16 - 1 : 0] bramB_5_WEN_A, bramB_5_WEN_B;
wire    [31 : 0]    bramB_5_Addr_A, bramB_5_Addr_B;
wire    [127 : 0]    bramB_5_Din_A, bramB_5_Din_B;
wire    [127 : 0]    bramB_5_Dout_A, bramB_5_Dout_B;
wire    bramB_5_ready;
wire    bramB_5_done;

`AESL_BRAM_B_5 `AESL_BRAM_INST_B_5(
    .Clk_A    (bramB_5_Clk_A),
    .Rst_A    (bramB_5_Rst_A),
    .EN_A     (bramB_5_EN_A),
    .WEN_A    (bramB_5_WEN_A),
    .Addr_A   (bramB_5_Addr_A),
    .Din_A    (bramB_5_Din_A),
    .Dout_A   (bramB_5_Dout_A),
    .Clk_B    (bramB_5_Clk_B),
    .Rst_B    (bramB_5_Rst_B),
    .EN_B     (bramB_5_EN_B),
    .WEN_B    (bramB_5_WEN_B),
    .Addr_B   (bramB_5_Addr_B),
    .Din_B    (bramB_5_Din_B),
    .Dout_B   (bramB_5_Dout_B),
    .ready    (bramB_5_ready),
    .done        (bramB_5_done)
);

// Assignment between dut and bramB_5
assign bramB_5_Clk_A = B_5_CLK_A;
assign bramB_5_Rst_A = B_5_RST_A;
assign bramB_5_Addr_A = B_5_ADDR_A;
assign bramB_5_EN_A = B_5_EN_A;
assign B_5_DOUT_A = bramB_5_Dout_A;
assign bramB_5_WEN_A = 0;
assign bramB_5_Din_A = 0;
assign bramB_5_WEN_B = 0;
assign bramB_5_Din_B = 0;
assign bramB_5_ready=    ready;
assign bramB_5_done = 0;


//------------------------bramB_6 Instantiation--------------

// The input and output of bramB_6
wire  bramB_6_Clk_A, bramB_6_Clk_B;
wire  bramB_6_EN_A, bramB_6_EN_B;
wire  [16 - 1 : 0] bramB_6_WEN_A, bramB_6_WEN_B;
wire    [31 : 0]    bramB_6_Addr_A, bramB_6_Addr_B;
wire    [127 : 0]    bramB_6_Din_A, bramB_6_Din_B;
wire    [127 : 0]    bramB_6_Dout_A, bramB_6_Dout_B;
wire    bramB_6_ready;
wire    bramB_6_done;

`AESL_BRAM_B_6 `AESL_BRAM_INST_B_6(
    .Clk_A    (bramB_6_Clk_A),
    .Rst_A    (bramB_6_Rst_A),
    .EN_A     (bramB_6_EN_A),
    .WEN_A    (bramB_6_WEN_A),
    .Addr_A   (bramB_6_Addr_A),
    .Din_A    (bramB_6_Din_A),
    .Dout_A   (bramB_6_Dout_A),
    .Clk_B    (bramB_6_Clk_B),
    .Rst_B    (bramB_6_Rst_B),
    .EN_B     (bramB_6_EN_B),
    .WEN_B    (bramB_6_WEN_B),
    .Addr_B   (bramB_6_Addr_B),
    .Din_B    (bramB_6_Din_B),
    .Dout_B   (bramB_6_Dout_B),
    .ready    (bramB_6_ready),
    .done        (bramB_6_done)
);

// Assignment between dut and bramB_6
assign bramB_6_Clk_A = B_6_CLK_A;
assign bramB_6_Rst_A = B_6_RST_A;
assign bramB_6_Addr_A = B_6_ADDR_A;
assign bramB_6_EN_A = B_6_EN_A;
assign B_6_DOUT_A = bramB_6_Dout_A;
assign bramB_6_WEN_A = 0;
assign bramB_6_Din_A = 0;
assign bramB_6_WEN_B = 0;
assign bramB_6_Din_B = 0;
assign bramB_6_ready=    ready;
assign bramB_6_done = 0;


//------------------------bramB_7 Instantiation--------------

// The input and output of bramB_7
wire  bramB_7_Clk_A, bramB_7_Clk_B;
wire  bramB_7_EN_A, bramB_7_EN_B;
wire  [16 - 1 : 0] bramB_7_WEN_A, bramB_7_WEN_B;
wire    [31 : 0]    bramB_7_Addr_A, bramB_7_Addr_B;
wire    [127 : 0]    bramB_7_Din_A, bramB_7_Din_B;
wire    [127 : 0]    bramB_7_Dout_A, bramB_7_Dout_B;
wire    bramB_7_ready;
wire    bramB_7_done;

`AESL_BRAM_B_7 `AESL_BRAM_INST_B_7(
    .Clk_A    (bramB_7_Clk_A),
    .Rst_A    (bramB_7_Rst_A),
    .EN_A     (bramB_7_EN_A),
    .WEN_A    (bramB_7_WEN_A),
    .Addr_A   (bramB_7_Addr_A),
    .Din_A    (bramB_7_Din_A),
    .Dout_A   (bramB_7_Dout_A),
    .Clk_B    (bramB_7_Clk_B),
    .Rst_B    (bramB_7_Rst_B),
    .EN_B     (bramB_7_EN_B),
    .WEN_B    (bramB_7_WEN_B),
    .Addr_B   (bramB_7_Addr_B),
    .Din_B    (bramB_7_Din_B),
    .Dout_B   (bramB_7_Dout_B),
    .ready    (bramB_7_ready),
    .done        (bramB_7_done)
);

// Assignment between dut and bramB_7
assign bramB_7_Clk_A = B_7_CLK_A;
assign bramB_7_Rst_A = B_7_RST_A;
assign bramB_7_Addr_A = B_7_ADDR_A;
assign bramB_7_EN_A = B_7_EN_A;
assign B_7_DOUT_A = bramB_7_Dout_A;
assign bramB_7_WEN_A = 0;
assign bramB_7_Din_A = 0;
assign bramB_7_WEN_B = 0;
assign bramB_7_Din_B = 0;
assign bramB_7_ready=    ready;
assign bramB_7_done = 0;


//------------------------bramB_8 Instantiation--------------

// The input and output of bramB_8
wire  bramB_8_Clk_A, bramB_8_Clk_B;
wire  bramB_8_EN_A, bramB_8_EN_B;
wire  [16 - 1 : 0] bramB_8_WEN_A, bramB_8_WEN_B;
wire    [31 : 0]    bramB_8_Addr_A, bramB_8_Addr_B;
wire    [127 : 0]    bramB_8_Din_A, bramB_8_Din_B;
wire    [127 : 0]    bramB_8_Dout_A, bramB_8_Dout_B;
wire    bramB_8_ready;
wire    bramB_8_done;

`AESL_BRAM_B_8 `AESL_BRAM_INST_B_8(
    .Clk_A    (bramB_8_Clk_A),
    .Rst_A    (bramB_8_Rst_A),
    .EN_A     (bramB_8_EN_A),
    .WEN_A    (bramB_8_WEN_A),
    .Addr_A   (bramB_8_Addr_A),
    .Din_A    (bramB_8_Din_A),
    .Dout_A   (bramB_8_Dout_A),
    .Clk_B    (bramB_8_Clk_B),
    .Rst_B    (bramB_8_Rst_B),
    .EN_B     (bramB_8_EN_B),
    .WEN_B    (bramB_8_WEN_B),
    .Addr_B   (bramB_8_Addr_B),
    .Din_B    (bramB_8_Din_B),
    .Dout_B   (bramB_8_Dout_B),
    .ready    (bramB_8_ready),
    .done        (bramB_8_done)
);

// Assignment between dut and bramB_8
assign bramB_8_Clk_A = B_8_CLK_A;
assign bramB_8_Rst_A = B_8_RST_A;
assign bramB_8_Addr_A = B_8_ADDR_A;
assign bramB_8_EN_A = B_8_EN_A;
assign B_8_DOUT_A = bramB_8_Dout_A;
assign bramB_8_WEN_A = 0;
assign bramB_8_Din_A = 0;
assign bramB_8_WEN_B = 0;
assign bramB_8_Din_B = 0;
assign bramB_8_ready=    ready;
assign bramB_8_done = 0;


//------------------------bramB_9 Instantiation--------------

// The input and output of bramB_9
wire  bramB_9_Clk_A, bramB_9_Clk_B;
wire  bramB_9_EN_A, bramB_9_EN_B;
wire  [16 - 1 : 0] bramB_9_WEN_A, bramB_9_WEN_B;
wire    [31 : 0]    bramB_9_Addr_A, bramB_9_Addr_B;
wire    [127 : 0]    bramB_9_Din_A, bramB_9_Din_B;
wire    [127 : 0]    bramB_9_Dout_A, bramB_9_Dout_B;
wire    bramB_9_ready;
wire    bramB_9_done;

`AESL_BRAM_B_9 `AESL_BRAM_INST_B_9(
    .Clk_A    (bramB_9_Clk_A),
    .Rst_A    (bramB_9_Rst_A),
    .EN_A     (bramB_9_EN_A),
    .WEN_A    (bramB_9_WEN_A),
    .Addr_A   (bramB_9_Addr_A),
    .Din_A    (bramB_9_Din_A),
    .Dout_A   (bramB_9_Dout_A),
    .Clk_B    (bramB_9_Clk_B),
    .Rst_B    (bramB_9_Rst_B),
    .EN_B     (bramB_9_EN_B),
    .WEN_B    (bramB_9_WEN_B),
    .Addr_B   (bramB_9_Addr_B),
    .Din_B    (bramB_9_Din_B),
    .Dout_B   (bramB_9_Dout_B),
    .ready    (bramB_9_ready),
    .done        (bramB_9_done)
);

// Assignment between dut and bramB_9
assign bramB_9_Clk_A = B_9_CLK_A;
assign bramB_9_Rst_A = B_9_RST_A;
assign bramB_9_Addr_A = B_9_ADDR_A;
assign bramB_9_EN_A = B_9_EN_A;
assign B_9_DOUT_A = bramB_9_Dout_A;
assign bramB_9_WEN_A = 0;
assign bramB_9_Din_A = 0;
assign bramB_9_WEN_B = 0;
assign bramB_9_Din_B = 0;
assign bramB_9_ready=    ready;
assign bramB_9_done = 0;


//------------------------bramB_10 Instantiation--------------

// The input and output of bramB_10
wire  bramB_10_Clk_A, bramB_10_Clk_B;
wire  bramB_10_EN_A, bramB_10_EN_B;
wire  [16 - 1 : 0] bramB_10_WEN_A, bramB_10_WEN_B;
wire    [31 : 0]    bramB_10_Addr_A, bramB_10_Addr_B;
wire    [127 : 0]    bramB_10_Din_A, bramB_10_Din_B;
wire    [127 : 0]    bramB_10_Dout_A, bramB_10_Dout_B;
wire    bramB_10_ready;
wire    bramB_10_done;

`AESL_BRAM_B_10 `AESL_BRAM_INST_B_10(
    .Clk_A    (bramB_10_Clk_A),
    .Rst_A    (bramB_10_Rst_A),
    .EN_A     (bramB_10_EN_A),
    .WEN_A    (bramB_10_WEN_A),
    .Addr_A   (bramB_10_Addr_A),
    .Din_A    (bramB_10_Din_A),
    .Dout_A   (bramB_10_Dout_A),
    .Clk_B    (bramB_10_Clk_B),
    .Rst_B    (bramB_10_Rst_B),
    .EN_B     (bramB_10_EN_B),
    .WEN_B    (bramB_10_WEN_B),
    .Addr_B   (bramB_10_Addr_B),
    .Din_B    (bramB_10_Din_B),
    .Dout_B   (bramB_10_Dout_B),
    .ready    (bramB_10_ready),
    .done        (bramB_10_done)
);

// Assignment between dut and bramB_10
assign bramB_10_Clk_A = B_10_CLK_A;
assign bramB_10_Rst_A = B_10_RST_A;
assign bramB_10_Addr_A = B_10_ADDR_A;
assign bramB_10_EN_A = B_10_EN_A;
assign B_10_DOUT_A = bramB_10_Dout_A;
assign bramB_10_WEN_A = 0;
assign bramB_10_Din_A = 0;
assign bramB_10_WEN_B = 0;
assign bramB_10_Din_B = 0;
assign bramB_10_ready=    ready;
assign bramB_10_done = 0;


//------------------------bramB_11 Instantiation--------------

// The input and output of bramB_11
wire  bramB_11_Clk_A, bramB_11_Clk_B;
wire  bramB_11_EN_A, bramB_11_EN_B;
wire  [16 - 1 : 0] bramB_11_WEN_A, bramB_11_WEN_B;
wire    [31 : 0]    bramB_11_Addr_A, bramB_11_Addr_B;
wire    [127 : 0]    bramB_11_Din_A, bramB_11_Din_B;
wire    [127 : 0]    bramB_11_Dout_A, bramB_11_Dout_B;
wire    bramB_11_ready;
wire    bramB_11_done;

`AESL_BRAM_B_11 `AESL_BRAM_INST_B_11(
    .Clk_A    (bramB_11_Clk_A),
    .Rst_A    (bramB_11_Rst_A),
    .EN_A     (bramB_11_EN_A),
    .WEN_A    (bramB_11_WEN_A),
    .Addr_A   (bramB_11_Addr_A),
    .Din_A    (bramB_11_Din_A),
    .Dout_A   (bramB_11_Dout_A),
    .Clk_B    (bramB_11_Clk_B),
    .Rst_B    (bramB_11_Rst_B),
    .EN_B     (bramB_11_EN_B),
    .WEN_B    (bramB_11_WEN_B),
    .Addr_B   (bramB_11_Addr_B),
    .Din_B    (bramB_11_Din_B),
    .Dout_B   (bramB_11_Dout_B),
    .ready    (bramB_11_ready),
    .done        (bramB_11_done)
);

// Assignment between dut and bramB_11
assign bramB_11_Clk_A = B_11_CLK_A;
assign bramB_11_Rst_A = B_11_RST_A;
assign bramB_11_Addr_A = B_11_ADDR_A;
assign bramB_11_EN_A = B_11_EN_A;
assign B_11_DOUT_A = bramB_11_Dout_A;
assign bramB_11_WEN_A = 0;
assign bramB_11_Din_A = 0;
assign bramB_11_WEN_B = 0;
assign bramB_11_Din_B = 0;
assign bramB_11_ready=    ready;
assign bramB_11_done = 0;


//------------------------bramB_12 Instantiation--------------

// The input and output of bramB_12
wire  bramB_12_Clk_A, bramB_12_Clk_B;
wire  bramB_12_EN_A, bramB_12_EN_B;
wire  [16 - 1 : 0] bramB_12_WEN_A, bramB_12_WEN_B;
wire    [31 : 0]    bramB_12_Addr_A, bramB_12_Addr_B;
wire    [127 : 0]    bramB_12_Din_A, bramB_12_Din_B;
wire    [127 : 0]    bramB_12_Dout_A, bramB_12_Dout_B;
wire    bramB_12_ready;
wire    bramB_12_done;

`AESL_BRAM_B_12 `AESL_BRAM_INST_B_12(
    .Clk_A    (bramB_12_Clk_A),
    .Rst_A    (bramB_12_Rst_A),
    .EN_A     (bramB_12_EN_A),
    .WEN_A    (bramB_12_WEN_A),
    .Addr_A   (bramB_12_Addr_A),
    .Din_A    (bramB_12_Din_A),
    .Dout_A   (bramB_12_Dout_A),
    .Clk_B    (bramB_12_Clk_B),
    .Rst_B    (bramB_12_Rst_B),
    .EN_B     (bramB_12_EN_B),
    .WEN_B    (bramB_12_WEN_B),
    .Addr_B   (bramB_12_Addr_B),
    .Din_B    (bramB_12_Din_B),
    .Dout_B   (bramB_12_Dout_B),
    .ready    (bramB_12_ready),
    .done        (bramB_12_done)
);

// Assignment between dut and bramB_12
assign bramB_12_Clk_A = B_12_CLK_A;
assign bramB_12_Rst_A = B_12_RST_A;
assign bramB_12_Addr_A = B_12_ADDR_A;
assign bramB_12_EN_A = B_12_EN_A;
assign B_12_DOUT_A = bramB_12_Dout_A;
assign bramB_12_WEN_A = 0;
assign bramB_12_Din_A = 0;
assign bramB_12_WEN_B = 0;
assign bramB_12_Din_B = 0;
assign bramB_12_ready=    ready;
assign bramB_12_done = 0;


//------------------------bramB_13 Instantiation--------------

// The input and output of bramB_13
wire  bramB_13_Clk_A, bramB_13_Clk_B;
wire  bramB_13_EN_A, bramB_13_EN_B;
wire  [16 - 1 : 0] bramB_13_WEN_A, bramB_13_WEN_B;
wire    [31 : 0]    bramB_13_Addr_A, bramB_13_Addr_B;
wire    [127 : 0]    bramB_13_Din_A, bramB_13_Din_B;
wire    [127 : 0]    bramB_13_Dout_A, bramB_13_Dout_B;
wire    bramB_13_ready;
wire    bramB_13_done;

`AESL_BRAM_B_13 `AESL_BRAM_INST_B_13(
    .Clk_A    (bramB_13_Clk_A),
    .Rst_A    (bramB_13_Rst_A),
    .EN_A     (bramB_13_EN_A),
    .WEN_A    (bramB_13_WEN_A),
    .Addr_A   (bramB_13_Addr_A),
    .Din_A    (bramB_13_Din_A),
    .Dout_A   (bramB_13_Dout_A),
    .Clk_B    (bramB_13_Clk_B),
    .Rst_B    (bramB_13_Rst_B),
    .EN_B     (bramB_13_EN_B),
    .WEN_B    (bramB_13_WEN_B),
    .Addr_B   (bramB_13_Addr_B),
    .Din_B    (bramB_13_Din_B),
    .Dout_B   (bramB_13_Dout_B),
    .ready    (bramB_13_ready),
    .done        (bramB_13_done)
);

// Assignment between dut and bramB_13
assign bramB_13_Clk_A = B_13_CLK_A;
assign bramB_13_Rst_A = B_13_RST_A;
assign bramB_13_Addr_A = B_13_ADDR_A;
assign bramB_13_EN_A = B_13_EN_A;
assign B_13_DOUT_A = bramB_13_Dout_A;
assign bramB_13_WEN_A = 0;
assign bramB_13_Din_A = 0;
assign bramB_13_WEN_B = 0;
assign bramB_13_Din_B = 0;
assign bramB_13_ready=    ready;
assign bramB_13_done = 0;


//------------------------bramB_14 Instantiation--------------

// The input and output of bramB_14
wire  bramB_14_Clk_A, bramB_14_Clk_B;
wire  bramB_14_EN_A, bramB_14_EN_B;
wire  [16 - 1 : 0] bramB_14_WEN_A, bramB_14_WEN_B;
wire    [31 : 0]    bramB_14_Addr_A, bramB_14_Addr_B;
wire    [127 : 0]    bramB_14_Din_A, bramB_14_Din_B;
wire    [127 : 0]    bramB_14_Dout_A, bramB_14_Dout_B;
wire    bramB_14_ready;
wire    bramB_14_done;

`AESL_BRAM_B_14 `AESL_BRAM_INST_B_14(
    .Clk_A    (bramB_14_Clk_A),
    .Rst_A    (bramB_14_Rst_A),
    .EN_A     (bramB_14_EN_A),
    .WEN_A    (bramB_14_WEN_A),
    .Addr_A   (bramB_14_Addr_A),
    .Din_A    (bramB_14_Din_A),
    .Dout_A   (bramB_14_Dout_A),
    .Clk_B    (bramB_14_Clk_B),
    .Rst_B    (bramB_14_Rst_B),
    .EN_B     (bramB_14_EN_B),
    .WEN_B    (bramB_14_WEN_B),
    .Addr_B   (bramB_14_Addr_B),
    .Din_B    (bramB_14_Din_B),
    .Dout_B   (bramB_14_Dout_B),
    .ready    (bramB_14_ready),
    .done        (bramB_14_done)
);

// Assignment between dut and bramB_14
assign bramB_14_Clk_A = B_14_CLK_A;
assign bramB_14_Rst_A = B_14_RST_A;
assign bramB_14_Addr_A = B_14_ADDR_A;
assign bramB_14_EN_A = B_14_EN_A;
assign B_14_DOUT_A = bramB_14_Dout_A;
assign bramB_14_WEN_A = 0;
assign bramB_14_Din_A = 0;
assign bramB_14_WEN_B = 0;
assign bramB_14_Din_B = 0;
assign bramB_14_ready=    ready;
assign bramB_14_done = 0;


//------------------------bramB_15 Instantiation--------------

// The input and output of bramB_15
wire  bramB_15_Clk_A, bramB_15_Clk_B;
wire  bramB_15_EN_A, bramB_15_EN_B;
wire  [16 - 1 : 0] bramB_15_WEN_A, bramB_15_WEN_B;
wire    [31 : 0]    bramB_15_Addr_A, bramB_15_Addr_B;
wire    [127 : 0]    bramB_15_Din_A, bramB_15_Din_B;
wire    [127 : 0]    bramB_15_Dout_A, bramB_15_Dout_B;
wire    bramB_15_ready;
wire    bramB_15_done;

`AESL_BRAM_B_15 `AESL_BRAM_INST_B_15(
    .Clk_A    (bramB_15_Clk_A),
    .Rst_A    (bramB_15_Rst_A),
    .EN_A     (bramB_15_EN_A),
    .WEN_A    (bramB_15_WEN_A),
    .Addr_A   (bramB_15_Addr_A),
    .Din_A    (bramB_15_Din_A),
    .Dout_A   (bramB_15_Dout_A),
    .Clk_B    (bramB_15_Clk_B),
    .Rst_B    (bramB_15_Rst_B),
    .EN_B     (bramB_15_EN_B),
    .WEN_B    (bramB_15_WEN_B),
    .Addr_B   (bramB_15_Addr_B),
    .Din_B    (bramB_15_Din_B),
    .Dout_B   (bramB_15_Dout_B),
    .ready    (bramB_15_ready),
    .done        (bramB_15_done)
);

// Assignment between dut and bramB_15
assign bramB_15_Clk_A = B_15_CLK_A;
assign bramB_15_Rst_A = B_15_RST_A;
assign bramB_15_Addr_A = B_15_ADDR_A;
assign bramB_15_EN_A = B_15_EN_A;
assign B_15_DOUT_A = bramB_15_Dout_A;
assign bramB_15_WEN_A = 0;
assign bramB_15_Din_A = 0;
assign bramB_15_WEN_B = 0;
assign bramB_15_Din_B = 0;
assign bramB_15_ready=    ready;
assign bramB_15_done = 0;


//------------------------bramB_16 Instantiation--------------

// The input and output of bramB_16
wire  bramB_16_Clk_A, bramB_16_Clk_B;
wire  bramB_16_EN_A, bramB_16_EN_B;
wire  [16 - 1 : 0] bramB_16_WEN_A, bramB_16_WEN_B;
wire    [31 : 0]    bramB_16_Addr_A, bramB_16_Addr_B;
wire    [127 : 0]    bramB_16_Din_A, bramB_16_Din_B;
wire    [127 : 0]    bramB_16_Dout_A, bramB_16_Dout_B;
wire    bramB_16_ready;
wire    bramB_16_done;

`AESL_BRAM_B_16 `AESL_BRAM_INST_B_16(
    .Clk_A    (bramB_16_Clk_A),
    .Rst_A    (bramB_16_Rst_A),
    .EN_A     (bramB_16_EN_A),
    .WEN_A    (bramB_16_WEN_A),
    .Addr_A   (bramB_16_Addr_A),
    .Din_A    (bramB_16_Din_A),
    .Dout_A   (bramB_16_Dout_A),
    .Clk_B    (bramB_16_Clk_B),
    .Rst_B    (bramB_16_Rst_B),
    .EN_B     (bramB_16_EN_B),
    .WEN_B    (bramB_16_WEN_B),
    .Addr_B   (bramB_16_Addr_B),
    .Din_B    (bramB_16_Din_B),
    .Dout_B   (bramB_16_Dout_B),
    .ready    (bramB_16_ready),
    .done        (bramB_16_done)
);

// Assignment between dut and bramB_16
assign bramB_16_Clk_A = B_16_CLK_A;
assign bramB_16_Rst_A = B_16_RST_A;
assign bramB_16_Addr_A = B_16_ADDR_A;
assign bramB_16_EN_A = B_16_EN_A;
assign B_16_DOUT_A = bramB_16_Dout_A;
assign bramB_16_WEN_A = 0;
assign bramB_16_Din_A = 0;
assign bramB_16_WEN_B = 0;
assign bramB_16_Din_B = 0;
assign bramB_16_ready=    ready;
assign bramB_16_done = 0;


//------------------------bramB_17 Instantiation--------------

// The input and output of bramB_17
wire  bramB_17_Clk_A, bramB_17_Clk_B;
wire  bramB_17_EN_A, bramB_17_EN_B;
wire  [16 - 1 : 0] bramB_17_WEN_A, bramB_17_WEN_B;
wire    [31 : 0]    bramB_17_Addr_A, bramB_17_Addr_B;
wire    [127 : 0]    bramB_17_Din_A, bramB_17_Din_B;
wire    [127 : 0]    bramB_17_Dout_A, bramB_17_Dout_B;
wire    bramB_17_ready;
wire    bramB_17_done;

`AESL_BRAM_B_17 `AESL_BRAM_INST_B_17(
    .Clk_A    (bramB_17_Clk_A),
    .Rst_A    (bramB_17_Rst_A),
    .EN_A     (bramB_17_EN_A),
    .WEN_A    (bramB_17_WEN_A),
    .Addr_A   (bramB_17_Addr_A),
    .Din_A    (bramB_17_Din_A),
    .Dout_A   (bramB_17_Dout_A),
    .Clk_B    (bramB_17_Clk_B),
    .Rst_B    (bramB_17_Rst_B),
    .EN_B     (bramB_17_EN_B),
    .WEN_B    (bramB_17_WEN_B),
    .Addr_B   (bramB_17_Addr_B),
    .Din_B    (bramB_17_Din_B),
    .Dout_B   (bramB_17_Dout_B),
    .ready    (bramB_17_ready),
    .done        (bramB_17_done)
);

// Assignment between dut and bramB_17
assign bramB_17_Clk_A = B_17_CLK_A;
assign bramB_17_Rst_A = B_17_RST_A;
assign bramB_17_Addr_A = B_17_ADDR_A;
assign bramB_17_EN_A = B_17_EN_A;
assign B_17_DOUT_A = bramB_17_Dout_A;
assign bramB_17_WEN_A = 0;
assign bramB_17_Din_A = 0;
assign bramB_17_WEN_B = 0;
assign bramB_17_Din_B = 0;
assign bramB_17_ready=    ready;
assign bramB_17_done = 0;


//------------------------bramB_18 Instantiation--------------

// The input and output of bramB_18
wire  bramB_18_Clk_A, bramB_18_Clk_B;
wire  bramB_18_EN_A, bramB_18_EN_B;
wire  [16 - 1 : 0] bramB_18_WEN_A, bramB_18_WEN_B;
wire    [31 : 0]    bramB_18_Addr_A, bramB_18_Addr_B;
wire    [127 : 0]    bramB_18_Din_A, bramB_18_Din_B;
wire    [127 : 0]    bramB_18_Dout_A, bramB_18_Dout_B;
wire    bramB_18_ready;
wire    bramB_18_done;

`AESL_BRAM_B_18 `AESL_BRAM_INST_B_18(
    .Clk_A    (bramB_18_Clk_A),
    .Rst_A    (bramB_18_Rst_A),
    .EN_A     (bramB_18_EN_A),
    .WEN_A    (bramB_18_WEN_A),
    .Addr_A   (bramB_18_Addr_A),
    .Din_A    (bramB_18_Din_A),
    .Dout_A   (bramB_18_Dout_A),
    .Clk_B    (bramB_18_Clk_B),
    .Rst_B    (bramB_18_Rst_B),
    .EN_B     (bramB_18_EN_B),
    .WEN_B    (bramB_18_WEN_B),
    .Addr_B   (bramB_18_Addr_B),
    .Din_B    (bramB_18_Din_B),
    .Dout_B   (bramB_18_Dout_B),
    .ready    (bramB_18_ready),
    .done        (bramB_18_done)
);

// Assignment between dut and bramB_18
assign bramB_18_Clk_A = B_18_CLK_A;
assign bramB_18_Rst_A = B_18_RST_A;
assign bramB_18_Addr_A = B_18_ADDR_A;
assign bramB_18_EN_A = B_18_EN_A;
assign B_18_DOUT_A = bramB_18_Dout_A;
assign bramB_18_WEN_A = 0;
assign bramB_18_Din_A = 0;
assign bramB_18_WEN_B = 0;
assign bramB_18_Din_B = 0;
assign bramB_18_ready=    ready;
assign bramB_18_done = 0;


//------------------------bramB_19 Instantiation--------------

// The input and output of bramB_19
wire  bramB_19_Clk_A, bramB_19_Clk_B;
wire  bramB_19_EN_A, bramB_19_EN_B;
wire  [16 - 1 : 0] bramB_19_WEN_A, bramB_19_WEN_B;
wire    [31 : 0]    bramB_19_Addr_A, bramB_19_Addr_B;
wire    [127 : 0]    bramB_19_Din_A, bramB_19_Din_B;
wire    [127 : 0]    bramB_19_Dout_A, bramB_19_Dout_B;
wire    bramB_19_ready;
wire    bramB_19_done;

`AESL_BRAM_B_19 `AESL_BRAM_INST_B_19(
    .Clk_A    (bramB_19_Clk_A),
    .Rst_A    (bramB_19_Rst_A),
    .EN_A     (bramB_19_EN_A),
    .WEN_A    (bramB_19_WEN_A),
    .Addr_A   (bramB_19_Addr_A),
    .Din_A    (bramB_19_Din_A),
    .Dout_A   (bramB_19_Dout_A),
    .Clk_B    (bramB_19_Clk_B),
    .Rst_B    (bramB_19_Rst_B),
    .EN_B     (bramB_19_EN_B),
    .WEN_B    (bramB_19_WEN_B),
    .Addr_B   (bramB_19_Addr_B),
    .Din_B    (bramB_19_Din_B),
    .Dout_B   (bramB_19_Dout_B),
    .ready    (bramB_19_ready),
    .done        (bramB_19_done)
);

// Assignment between dut and bramB_19
assign bramB_19_Clk_A = B_19_CLK_A;
assign bramB_19_Rst_A = B_19_RST_A;
assign bramB_19_Addr_A = B_19_ADDR_A;
assign bramB_19_EN_A = B_19_EN_A;
assign B_19_DOUT_A = bramB_19_Dout_A;
assign bramB_19_WEN_A = 0;
assign bramB_19_Din_A = 0;
assign bramB_19_WEN_B = 0;
assign bramB_19_Din_B = 0;
assign bramB_19_ready=    ready;
assign bramB_19_done = 0;


//------------------------bramB_20 Instantiation--------------

// The input and output of bramB_20
wire  bramB_20_Clk_A, bramB_20_Clk_B;
wire  bramB_20_EN_A, bramB_20_EN_B;
wire  [16 - 1 : 0] bramB_20_WEN_A, bramB_20_WEN_B;
wire    [31 : 0]    bramB_20_Addr_A, bramB_20_Addr_B;
wire    [127 : 0]    bramB_20_Din_A, bramB_20_Din_B;
wire    [127 : 0]    bramB_20_Dout_A, bramB_20_Dout_B;
wire    bramB_20_ready;
wire    bramB_20_done;

`AESL_BRAM_B_20 `AESL_BRAM_INST_B_20(
    .Clk_A    (bramB_20_Clk_A),
    .Rst_A    (bramB_20_Rst_A),
    .EN_A     (bramB_20_EN_A),
    .WEN_A    (bramB_20_WEN_A),
    .Addr_A   (bramB_20_Addr_A),
    .Din_A    (bramB_20_Din_A),
    .Dout_A   (bramB_20_Dout_A),
    .Clk_B    (bramB_20_Clk_B),
    .Rst_B    (bramB_20_Rst_B),
    .EN_B     (bramB_20_EN_B),
    .WEN_B    (bramB_20_WEN_B),
    .Addr_B   (bramB_20_Addr_B),
    .Din_B    (bramB_20_Din_B),
    .Dout_B   (bramB_20_Dout_B),
    .ready    (bramB_20_ready),
    .done        (bramB_20_done)
);

// Assignment between dut and bramB_20
assign bramB_20_Clk_A = B_20_CLK_A;
assign bramB_20_Rst_A = B_20_RST_A;
assign bramB_20_Addr_A = B_20_ADDR_A;
assign bramB_20_EN_A = B_20_EN_A;
assign B_20_DOUT_A = bramB_20_Dout_A;
assign bramB_20_WEN_A = 0;
assign bramB_20_Din_A = 0;
assign bramB_20_WEN_B = 0;
assign bramB_20_Din_B = 0;
assign bramB_20_ready=    ready;
assign bramB_20_done = 0;


//------------------------bramB_21 Instantiation--------------

// The input and output of bramB_21
wire  bramB_21_Clk_A, bramB_21_Clk_B;
wire  bramB_21_EN_A, bramB_21_EN_B;
wire  [16 - 1 : 0] bramB_21_WEN_A, bramB_21_WEN_B;
wire    [31 : 0]    bramB_21_Addr_A, bramB_21_Addr_B;
wire    [127 : 0]    bramB_21_Din_A, bramB_21_Din_B;
wire    [127 : 0]    bramB_21_Dout_A, bramB_21_Dout_B;
wire    bramB_21_ready;
wire    bramB_21_done;

`AESL_BRAM_B_21 `AESL_BRAM_INST_B_21(
    .Clk_A    (bramB_21_Clk_A),
    .Rst_A    (bramB_21_Rst_A),
    .EN_A     (bramB_21_EN_A),
    .WEN_A    (bramB_21_WEN_A),
    .Addr_A   (bramB_21_Addr_A),
    .Din_A    (bramB_21_Din_A),
    .Dout_A   (bramB_21_Dout_A),
    .Clk_B    (bramB_21_Clk_B),
    .Rst_B    (bramB_21_Rst_B),
    .EN_B     (bramB_21_EN_B),
    .WEN_B    (bramB_21_WEN_B),
    .Addr_B   (bramB_21_Addr_B),
    .Din_B    (bramB_21_Din_B),
    .Dout_B   (bramB_21_Dout_B),
    .ready    (bramB_21_ready),
    .done        (bramB_21_done)
);

// Assignment between dut and bramB_21
assign bramB_21_Clk_A = B_21_CLK_A;
assign bramB_21_Rst_A = B_21_RST_A;
assign bramB_21_Addr_A = B_21_ADDR_A;
assign bramB_21_EN_A = B_21_EN_A;
assign B_21_DOUT_A = bramB_21_Dout_A;
assign bramB_21_WEN_A = 0;
assign bramB_21_Din_A = 0;
assign bramB_21_WEN_B = 0;
assign bramB_21_Din_B = 0;
assign bramB_21_ready=    ready;
assign bramB_21_done = 0;


//------------------------bramB_22 Instantiation--------------

// The input and output of bramB_22
wire  bramB_22_Clk_A, bramB_22_Clk_B;
wire  bramB_22_EN_A, bramB_22_EN_B;
wire  [16 - 1 : 0] bramB_22_WEN_A, bramB_22_WEN_B;
wire    [31 : 0]    bramB_22_Addr_A, bramB_22_Addr_B;
wire    [127 : 0]    bramB_22_Din_A, bramB_22_Din_B;
wire    [127 : 0]    bramB_22_Dout_A, bramB_22_Dout_B;
wire    bramB_22_ready;
wire    bramB_22_done;

`AESL_BRAM_B_22 `AESL_BRAM_INST_B_22(
    .Clk_A    (bramB_22_Clk_A),
    .Rst_A    (bramB_22_Rst_A),
    .EN_A     (bramB_22_EN_A),
    .WEN_A    (bramB_22_WEN_A),
    .Addr_A   (bramB_22_Addr_A),
    .Din_A    (bramB_22_Din_A),
    .Dout_A   (bramB_22_Dout_A),
    .Clk_B    (bramB_22_Clk_B),
    .Rst_B    (bramB_22_Rst_B),
    .EN_B     (bramB_22_EN_B),
    .WEN_B    (bramB_22_WEN_B),
    .Addr_B   (bramB_22_Addr_B),
    .Din_B    (bramB_22_Din_B),
    .Dout_B   (bramB_22_Dout_B),
    .ready    (bramB_22_ready),
    .done        (bramB_22_done)
);

// Assignment between dut and bramB_22
assign bramB_22_Clk_A = B_22_CLK_A;
assign bramB_22_Rst_A = B_22_RST_A;
assign bramB_22_Addr_A = B_22_ADDR_A;
assign bramB_22_EN_A = B_22_EN_A;
assign B_22_DOUT_A = bramB_22_Dout_A;
assign bramB_22_WEN_A = 0;
assign bramB_22_Din_A = 0;
assign bramB_22_WEN_B = 0;
assign bramB_22_Din_B = 0;
assign bramB_22_ready=    ready;
assign bramB_22_done = 0;


//------------------------bramB_23 Instantiation--------------

// The input and output of bramB_23
wire  bramB_23_Clk_A, bramB_23_Clk_B;
wire  bramB_23_EN_A, bramB_23_EN_B;
wire  [16 - 1 : 0] bramB_23_WEN_A, bramB_23_WEN_B;
wire    [31 : 0]    bramB_23_Addr_A, bramB_23_Addr_B;
wire    [127 : 0]    bramB_23_Din_A, bramB_23_Din_B;
wire    [127 : 0]    bramB_23_Dout_A, bramB_23_Dout_B;
wire    bramB_23_ready;
wire    bramB_23_done;

`AESL_BRAM_B_23 `AESL_BRAM_INST_B_23(
    .Clk_A    (bramB_23_Clk_A),
    .Rst_A    (bramB_23_Rst_A),
    .EN_A     (bramB_23_EN_A),
    .WEN_A    (bramB_23_WEN_A),
    .Addr_A   (bramB_23_Addr_A),
    .Din_A    (bramB_23_Din_A),
    .Dout_A   (bramB_23_Dout_A),
    .Clk_B    (bramB_23_Clk_B),
    .Rst_B    (bramB_23_Rst_B),
    .EN_B     (bramB_23_EN_B),
    .WEN_B    (bramB_23_WEN_B),
    .Addr_B   (bramB_23_Addr_B),
    .Din_B    (bramB_23_Din_B),
    .Dout_B   (bramB_23_Dout_B),
    .ready    (bramB_23_ready),
    .done        (bramB_23_done)
);

// Assignment between dut and bramB_23
assign bramB_23_Clk_A = B_23_CLK_A;
assign bramB_23_Rst_A = B_23_RST_A;
assign bramB_23_Addr_A = B_23_ADDR_A;
assign bramB_23_EN_A = B_23_EN_A;
assign B_23_DOUT_A = bramB_23_Dout_A;
assign bramB_23_WEN_A = 0;
assign bramB_23_Din_A = 0;
assign bramB_23_WEN_B = 0;
assign bramB_23_Din_B = 0;
assign bramB_23_ready=    ready;
assign bramB_23_done = 0;


//------------------------bramB_24 Instantiation--------------

// The input and output of bramB_24
wire  bramB_24_Clk_A, bramB_24_Clk_B;
wire  bramB_24_EN_A, bramB_24_EN_B;
wire  [16 - 1 : 0] bramB_24_WEN_A, bramB_24_WEN_B;
wire    [31 : 0]    bramB_24_Addr_A, bramB_24_Addr_B;
wire    [127 : 0]    bramB_24_Din_A, bramB_24_Din_B;
wire    [127 : 0]    bramB_24_Dout_A, bramB_24_Dout_B;
wire    bramB_24_ready;
wire    bramB_24_done;

`AESL_BRAM_B_24 `AESL_BRAM_INST_B_24(
    .Clk_A    (bramB_24_Clk_A),
    .Rst_A    (bramB_24_Rst_A),
    .EN_A     (bramB_24_EN_A),
    .WEN_A    (bramB_24_WEN_A),
    .Addr_A   (bramB_24_Addr_A),
    .Din_A    (bramB_24_Din_A),
    .Dout_A   (bramB_24_Dout_A),
    .Clk_B    (bramB_24_Clk_B),
    .Rst_B    (bramB_24_Rst_B),
    .EN_B     (bramB_24_EN_B),
    .WEN_B    (bramB_24_WEN_B),
    .Addr_B   (bramB_24_Addr_B),
    .Din_B    (bramB_24_Din_B),
    .Dout_B   (bramB_24_Dout_B),
    .ready    (bramB_24_ready),
    .done        (bramB_24_done)
);

// Assignment between dut and bramB_24
assign bramB_24_Clk_A = B_24_CLK_A;
assign bramB_24_Rst_A = B_24_RST_A;
assign bramB_24_Addr_A = B_24_ADDR_A;
assign bramB_24_EN_A = B_24_EN_A;
assign B_24_DOUT_A = bramB_24_Dout_A;
assign bramB_24_WEN_A = 0;
assign bramB_24_Din_A = 0;
assign bramB_24_WEN_B = 0;
assign bramB_24_Din_B = 0;
assign bramB_24_ready=    ready;
assign bramB_24_done = 0;


//------------------------bramB_25 Instantiation--------------

// The input and output of bramB_25
wire  bramB_25_Clk_A, bramB_25_Clk_B;
wire  bramB_25_EN_A, bramB_25_EN_B;
wire  [16 - 1 : 0] bramB_25_WEN_A, bramB_25_WEN_B;
wire    [31 : 0]    bramB_25_Addr_A, bramB_25_Addr_B;
wire    [127 : 0]    bramB_25_Din_A, bramB_25_Din_B;
wire    [127 : 0]    bramB_25_Dout_A, bramB_25_Dout_B;
wire    bramB_25_ready;
wire    bramB_25_done;

`AESL_BRAM_B_25 `AESL_BRAM_INST_B_25(
    .Clk_A    (bramB_25_Clk_A),
    .Rst_A    (bramB_25_Rst_A),
    .EN_A     (bramB_25_EN_A),
    .WEN_A    (bramB_25_WEN_A),
    .Addr_A   (bramB_25_Addr_A),
    .Din_A    (bramB_25_Din_A),
    .Dout_A   (bramB_25_Dout_A),
    .Clk_B    (bramB_25_Clk_B),
    .Rst_B    (bramB_25_Rst_B),
    .EN_B     (bramB_25_EN_B),
    .WEN_B    (bramB_25_WEN_B),
    .Addr_B   (bramB_25_Addr_B),
    .Din_B    (bramB_25_Din_B),
    .Dout_B   (bramB_25_Dout_B),
    .ready    (bramB_25_ready),
    .done        (bramB_25_done)
);

// Assignment between dut and bramB_25
assign bramB_25_Clk_A = B_25_CLK_A;
assign bramB_25_Rst_A = B_25_RST_A;
assign bramB_25_Addr_A = B_25_ADDR_A;
assign bramB_25_EN_A = B_25_EN_A;
assign B_25_DOUT_A = bramB_25_Dout_A;
assign bramB_25_WEN_A = 0;
assign bramB_25_Din_A = 0;
assign bramB_25_WEN_B = 0;
assign bramB_25_Din_B = 0;
assign bramB_25_ready=    ready;
assign bramB_25_done = 0;


//------------------------bramB_26 Instantiation--------------

// The input and output of bramB_26
wire  bramB_26_Clk_A, bramB_26_Clk_B;
wire  bramB_26_EN_A, bramB_26_EN_B;
wire  [16 - 1 : 0] bramB_26_WEN_A, bramB_26_WEN_B;
wire    [31 : 0]    bramB_26_Addr_A, bramB_26_Addr_B;
wire    [127 : 0]    bramB_26_Din_A, bramB_26_Din_B;
wire    [127 : 0]    bramB_26_Dout_A, bramB_26_Dout_B;
wire    bramB_26_ready;
wire    bramB_26_done;

`AESL_BRAM_B_26 `AESL_BRAM_INST_B_26(
    .Clk_A    (bramB_26_Clk_A),
    .Rst_A    (bramB_26_Rst_A),
    .EN_A     (bramB_26_EN_A),
    .WEN_A    (bramB_26_WEN_A),
    .Addr_A   (bramB_26_Addr_A),
    .Din_A    (bramB_26_Din_A),
    .Dout_A   (bramB_26_Dout_A),
    .Clk_B    (bramB_26_Clk_B),
    .Rst_B    (bramB_26_Rst_B),
    .EN_B     (bramB_26_EN_B),
    .WEN_B    (bramB_26_WEN_B),
    .Addr_B   (bramB_26_Addr_B),
    .Din_B    (bramB_26_Din_B),
    .Dout_B   (bramB_26_Dout_B),
    .ready    (bramB_26_ready),
    .done        (bramB_26_done)
);

// Assignment between dut and bramB_26
assign bramB_26_Clk_A = B_26_CLK_A;
assign bramB_26_Rst_A = B_26_RST_A;
assign bramB_26_Addr_A = B_26_ADDR_A;
assign bramB_26_EN_A = B_26_EN_A;
assign B_26_DOUT_A = bramB_26_Dout_A;
assign bramB_26_WEN_A = 0;
assign bramB_26_Din_A = 0;
assign bramB_26_WEN_B = 0;
assign bramB_26_Din_B = 0;
assign bramB_26_ready=    ready;
assign bramB_26_done = 0;


//------------------------bramB_27 Instantiation--------------

// The input and output of bramB_27
wire  bramB_27_Clk_A, bramB_27_Clk_B;
wire  bramB_27_EN_A, bramB_27_EN_B;
wire  [16 - 1 : 0] bramB_27_WEN_A, bramB_27_WEN_B;
wire    [31 : 0]    bramB_27_Addr_A, bramB_27_Addr_B;
wire    [127 : 0]    bramB_27_Din_A, bramB_27_Din_B;
wire    [127 : 0]    bramB_27_Dout_A, bramB_27_Dout_B;
wire    bramB_27_ready;
wire    bramB_27_done;

`AESL_BRAM_B_27 `AESL_BRAM_INST_B_27(
    .Clk_A    (bramB_27_Clk_A),
    .Rst_A    (bramB_27_Rst_A),
    .EN_A     (bramB_27_EN_A),
    .WEN_A    (bramB_27_WEN_A),
    .Addr_A   (bramB_27_Addr_A),
    .Din_A    (bramB_27_Din_A),
    .Dout_A   (bramB_27_Dout_A),
    .Clk_B    (bramB_27_Clk_B),
    .Rst_B    (bramB_27_Rst_B),
    .EN_B     (bramB_27_EN_B),
    .WEN_B    (bramB_27_WEN_B),
    .Addr_B   (bramB_27_Addr_B),
    .Din_B    (bramB_27_Din_B),
    .Dout_B   (bramB_27_Dout_B),
    .ready    (bramB_27_ready),
    .done        (bramB_27_done)
);

// Assignment between dut and bramB_27
assign bramB_27_Clk_A = B_27_CLK_A;
assign bramB_27_Rst_A = B_27_RST_A;
assign bramB_27_Addr_A = B_27_ADDR_A;
assign bramB_27_EN_A = B_27_EN_A;
assign B_27_DOUT_A = bramB_27_Dout_A;
assign bramB_27_WEN_A = 0;
assign bramB_27_Din_A = 0;
assign bramB_27_WEN_B = 0;
assign bramB_27_Din_B = 0;
assign bramB_27_ready=    ready;
assign bramB_27_done = 0;


//------------------------bramB_28 Instantiation--------------

// The input and output of bramB_28
wire  bramB_28_Clk_A, bramB_28_Clk_B;
wire  bramB_28_EN_A, bramB_28_EN_B;
wire  [16 - 1 : 0] bramB_28_WEN_A, bramB_28_WEN_B;
wire    [31 : 0]    bramB_28_Addr_A, bramB_28_Addr_B;
wire    [127 : 0]    bramB_28_Din_A, bramB_28_Din_B;
wire    [127 : 0]    bramB_28_Dout_A, bramB_28_Dout_B;
wire    bramB_28_ready;
wire    bramB_28_done;

`AESL_BRAM_B_28 `AESL_BRAM_INST_B_28(
    .Clk_A    (bramB_28_Clk_A),
    .Rst_A    (bramB_28_Rst_A),
    .EN_A     (bramB_28_EN_A),
    .WEN_A    (bramB_28_WEN_A),
    .Addr_A   (bramB_28_Addr_A),
    .Din_A    (bramB_28_Din_A),
    .Dout_A   (bramB_28_Dout_A),
    .Clk_B    (bramB_28_Clk_B),
    .Rst_B    (bramB_28_Rst_B),
    .EN_B     (bramB_28_EN_B),
    .WEN_B    (bramB_28_WEN_B),
    .Addr_B   (bramB_28_Addr_B),
    .Din_B    (bramB_28_Din_B),
    .Dout_B   (bramB_28_Dout_B),
    .ready    (bramB_28_ready),
    .done        (bramB_28_done)
);

// Assignment between dut and bramB_28
assign bramB_28_Clk_A = B_28_CLK_A;
assign bramB_28_Rst_A = B_28_RST_A;
assign bramB_28_Addr_A = B_28_ADDR_A;
assign bramB_28_EN_A = B_28_EN_A;
assign B_28_DOUT_A = bramB_28_Dout_A;
assign bramB_28_WEN_A = 0;
assign bramB_28_Din_A = 0;
assign bramB_28_WEN_B = 0;
assign bramB_28_Din_B = 0;
assign bramB_28_ready=    ready;
assign bramB_28_done = 0;


//------------------------bramB_29 Instantiation--------------

// The input and output of bramB_29
wire  bramB_29_Clk_A, bramB_29_Clk_B;
wire  bramB_29_EN_A, bramB_29_EN_B;
wire  [16 - 1 : 0] bramB_29_WEN_A, bramB_29_WEN_B;
wire    [31 : 0]    bramB_29_Addr_A, bramB_29_Addr_B;
wire    [127 : 0]    bramB_29_Din_A, bramB_29_Din_B;
wire    [127 : 0]    bramB_29_Dout_A, bramB_29_Dout_B;
wire    bramB_29_ready;
wire    bramB_29_done;

`AESL_BRAM_B_29 `AESL_BRAM_INST_B_29(
    .Clk_A    (bramB_29_Clk_A),
    .Rst_A    (bramB_29_Rst_A),
    .EN_A     (bramB_29_EN_A),
    .WEN_A    (bramB_29_WEN_A),
    .Addr_A   (bramB_29_Addr_A),
    .Din_A    (bramB_29_Din_A),
    .Dout_A   (bramB_29_Dout_A),
    .Clk_B    (bramB_29_Clk_B),
    .Rst_B    (bramB_29_Rst_B),
    .EN_B     (bramB_29_EN_B),
    .WEN_B    (bramB_29_WEN_B),
    .Addr_B   (bramB_29_Addr_B),
    .Din_B    (bramB_29_Din_B),
    .Dout_B   (bramB_29_Dout_B),
    .ready    (bramB_29_ready),
    .done        (bramB_29_done)
);

// Assignment between dut and bramB_29
assign bramB_29_Clk_A = B_29_CLK_A;
assign bramB_29_Rst_A = B_29_RST_A;
assign bramB_29_Addr_A = B_29_ADDR_A;
assign bramB_29_EN_A = B_29_EN_A;
assign B_29_DOUT_A = bramB_29_Dout_A;
assign bramB_29_WEN_A = 0;
assign bramB_29_Din_A = 0;
assign bramB_29_WEN_B = 0;
assign bramB_29_Din_B = 0;
assign bramB_29_ready=    ready;
assign bramB_29_done = 0;


//------------------------bramB_30 Instantiation--------------

// The input and output of bramB_30
wire  bramB_30_Clk_A, bramB_30_Clk_B;
wire  bramB_30_EN_A, bramB_30_EN_B;
wire  [16 - 1 : 0] bramB_30_WEN_A, bramB_30_WEN_B;
wire    [31 : 0]    bramB_30_Addr_A, bramB_30_Addr_B;
wire    [127 : 0]    bramB_30_Din_A, bramB_30_Din_B;
wire    [127 : 0]    bramB_30_Dout_A, bramB_30_Dout_B;
wire    bramB_30_ready;
wire    bramB_30_done;

`AESL_BRAM_B_30 `AESL_BRAM_INST_B_30(
    .Clk_A    (bramB_30_Clk_A),
    .Rst_A    (bramB_30_Rst_A),
    .EN_A     (bramB_30_EN_A),
    .WEN_A    (bramB_30_WEN_A),
    .Addr_A   (bramB_30_Addr_A),
    .Din_A    (bramB_30_Din_A),
    .Dout_A   (bramB_30_Dout_A),
    .Clk_B    (bramB_30_Clk_B),
    .Rst_B    (bramB_30_Rst_B),
    .EN_B     (bramB_30_EN_B),
    .WEN_B    (bramB_30_WEN_B),
    .Addr_B   (bramB_30_Addr_B),
    .Din_B    (bramB_30_Din_B),
    .Dout_B   (bramB_30_Dout_B),
    .ready    (bramB_30_ready),
    .done        (bramB_30_done)
);

// Assignment between dut and bramB_30
assign bramB_30_Clk_A = B_30_CLK_A;
assign bramB_30_Rst_A = B_30_RST_A;
assign bramB_30_Addr_A = B_30_ADDR_A;
assign bramB_30_EN_A = B_30_EN_A;
assign B_30_DOUT_A = bramB_30_Dout_A;
assign bramB_30_WEN_A = 0;
assign bramB_30_Din_A = 0;
assign bramB_30_WEN_B = 0;
assign bramB_30_Din_B = 0;
assign bramB_30_ready=    ready;
assign bramB_30_done = 0;


//------------------------bramB_31 Instantiation--------------

// The input and output of bramB_31
wire  bramB_31_Clk_A, bramB_31_Clk_B;
wire  bramB_31_EN_A, bramB_31_EN_B;
wire  [16 - 1 : 0] bramB_31_WEN_A, bramB_31_WEN_B;
wire    [31 : 0]    bramB_31_Addr_A, bramB_31_Addr_B;
wire    [127 : 0]    bramB_31_Din_A, bramB_31_Din_B;
wire    [127 : 0]    bramB_31_Dout_A, bramB_31_Dout_B;
wire    bramB_31_ready;
wire    bramB_31_done;

`AESL_BRAM_B_31 `AESL_BRAM_INST_B_31(
    .Clk_A    (bramB_31_Clk_A),
    .Rst_A    (bramB_31_Rst_A),
    .EN_A     (bramB_31_EN_A),
    .WEN_A    (bramB_31_WEN_A),
    .Addr_A   (bramB_31_Addr_A),
    .Din_A    (bramB_31_Din_A),
    .Dout_A   (bramB_31_Dout_A),
    .Clk_B    (bramB_31_Clk_B),
    .Rst_B    (bramB_31_Rst_B),
    .EN_B     (bramB_31_EN_B),
    .WEN_B    (bramB_31_WEN_B),
    .Addr_B   (bramB_31_Addr_B),
    .Din_B    (bramB_31_Din_B),
    .Dout_B   (bramB_31_Dout_B),
    .ready    (bramB_31_ready),
    .done        (bramB_31_done)
);

// Assignment between dut and bramB_31
assign bramB_31_Clk_A = B_31_CLK_A;
assign bramB_31_Rst_A = B_31_RST_A;
assign bramB_31_Addr_A = B_31_ADDR_A;
assign bramB_31_EN_A = B_31_EN_A;
assign B_31_DOUT_A = bramB_31_Dout_A;
assign bramB_31_WEN_A = 0;
assign bramB_31_Din_A = 0;
assign bramB_31_WEN_B = 0;
assign bramB_31_Din_B = 0;
assign bramB_31_ready=    ready;
assign bramB_31_done = 0;









//------------------------arrayscores Instantiation--------------

// The input and output of arrayscores
wire    arrayscores_ce0, arrayscores_ce1;
wire [16 - 1 : 0]    arrayscores_we0, arrayscores_we1;
wire    [3 : 0]    arrayscores_address0, arrayscores_address1;
wire    [127 : 0]    arrayscores_din0, arrayscores_din1;
wire    [127 : 0]    arrayscores_dout0, arrayscores_dout1;
wire    arrayscores_ready;
wire    arrayscores_done;

`AESL_MEM_scores `AESL_MEM_INST_scores(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayscores_ce0),
    .we0        (arrayscores_we0),
    .address0   (arrayscores_address0),
    .din0       (arrayscores_din0),
    .dout0      (arrayscores_dout0),
    .ce1        (arrayscores_ce1),
    .we1        (arrayscores_we1),
    .address1   (arrayscores_address1),
    .din1       (arrayscores_din1),
    .dout1      (arrayscores_dout1),
    .ready      (arrayscores_ready),
    .done    (arrayscores_done)
);

// Assignment between dut and arrayscores
assign arrayscores_address0 = scores_address0;
assign arrayscores_ce0 = scores_ce0;
assign arrayscores_we0[0] = scores_we0;
assign arrayscores_we0[1] = scores_we0;
assign arrayscores_we0[2] = scores_we0;
assign arrayscores_we0[3] = scores_we0;
assign arrayscores_we0[4] = scores_we0;
assign arrayscores_we0[5] = scores_we0;
assign arrayscores_we0[6] = scores_we0;
assign arrayscores_we0[7] = scores_we0;
assign arrayscores_we0[8] = scores_we0;
assign arrayscores_we0[9] = scores_we0;
assign arrayscores_we0[10] = scores_we0;
assign arrayscores_we0[11] = scores_we0;
assign arrayscores_we0[12] = scores_we0;
assign arrayscores_we0[13] = scores_we0;
assign arrayscores_we0[14] = scores_we0;
assign arrayscores_we0[15] = scores_we0;
assign arrayscores_din0 = scores_d0;
assign arrayscores_we1 = 0;
assign arrayscores_din1 = 0;
assign arrayscores_ready= ready_initial | arrayscores_done;
assign arrayscores_done =    AESL_done_delay;


reg [31:0] ap_c_n_tvin_trans_num_feature_vector_V_data_V;

reg feature_vector_ready_reg; // for self-sync

wire feature_vector_ready;
wire feature_vector_done;
wire [31:0] feature_vector_transaction;
wire axi_s_feature_vector_TVALID;
wire axi_s_feature_vector_TREADY;

AESL_axi_s_feature_vector AESL_AXI_S_feature_vector(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_feature_vector_TDATA(feature_vector_TDATA),
    .TRAN_feature_vector_TKEEP(feature_vector_TKEEP),
    .TRAN_feature_vector_TSTRB(feature_vector_TSTRB),
    .TRAN_feature_vector_TUSER(feature_vector_TUSER),
    .TRAN_feature_vector_TLAST(feature_vector_TLAST),
    .TRAN_feature_vector_TID(feature_vector_TID),
    .TRAN_feature_vector_TDEST(feature_vector_TDEST),
    .TRAN_feature_vector_TVALID(axi_s_feature_vector_TVALID),
    .TRAN_feature_vector_TREADY(axi_s_feature_vector_TREADY),
    .ready(feature_vector_ready),
    .done(feature_vector_done),
    .transaction(feature_vector_transaction));

assign feature_vector_ready = feature_vector_ready_reg | ready_initial;
assign feature_vector_done = 0;

assign feature_vector_TVALID = axi_s_feature_vector_TVALID;

assign axi_s_feature_vector_TREADY = feature_vector_TREADY;

AESL_axi_slave_CTRL_BUS AESL_AXI_SLAVE_CTRL_BUS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_BUS_AWADDR (CTRL_BUS_AWADDR),
    .TRAN_s_axi_CTRL_BUS_AWVALID (CTRL_BUS_AWVALID),
    .TRAN_s_axi_CTRL_BUS_AWREADY (CTRL_BUS_AWREADY),
    .TRAN_s_axi_CTRL_BUS_WVALID (CTRL_BUS_WVALID),
    .TRAN_s_axi_CTRL_BUS_WREADY (CTRL_BUS_WREADY),
    .TRAN_s_axi_CTRL_BUS_WDATA (CTRL_BUS_WDATA),
    .TRAN_s_axi_CTRL_BUS_WSTRB (CTRL_BUS_WSTRB),
    .TRAN_s_axi_CTRL_BUS_ARADDR (CTRL_BUS_ARADDR),
    .TRAN_s_axi_CTRL_BUS_ARVALID (CTRL_BUS_ARVALID),
    .TRAN_s_axi_CTRL_BUS_ARREADY (CTRL_BUS_ARREADY),
    .TRAN_s_axi_CTRL_BUS_RVALID (CTRL_BUS_RVALID),
    .TRAN_s_axi_CTRL_BUS_RREADY (CTRL_BUS_RREADY),
    .TRAN_s_axi_CTRL_BUS_RDATA (CTRL_BUS_RDATA),
    .TRAN_s_axi_CTRL_BUS_RRESP (CTRL_BUS_RRESP),
    .TRAN_s_axi_CTRL_BUS_BVALID (CTRL_BUS_BVALID),
    .TRAN_s_axi_CTRL_BUS_BREADY (CTRL_BUS_BREADY),
    .TRAN_s_axi_CTRL_BUS_BRESP (CTRL_BUS_BRESP),
    .TRAN_CTRL_BUS_interrupt (CTRL_BUS_INTERRUPT),
    .TRAN_CTRL_BUS_ready_out (AESL_ready),
    .TRAN_CTRL_BUS_ready_in (AESL_slave_ready),
    .TRAN_CTRL_BUS_done_out (AESL_slave_output_done),
    .TRAN_CTRL_BUS_idle_out (AESL_idle),
    .TRAN_CTRL_BUS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_BUS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_BUS_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_BUS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.matrix_matrix_mult_streaming.autotvout_scores.dat", "r");
    fp2 = $fopen("./impl_rtl.matrix_matrix_mult_streaming.autotvout_scores.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.matrix_matrix_mult_streaming.autotvout_scores.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.matrix_matrix_mult_streaming.autotvout_scores.dat\"!");
    else begin
        $display("Comparing rtl.matrix_matrix_mult_streaming.autotvout_scores.dat with impl_rtl.matrix_matrix_mult_streaming.autotvout_scores.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A_0;
reg [31:0] size_A_0;
reg [31:0] size_A_0_backup;
reg end_A_1;
reg [31:0] size_A_1;
reg [31:0] size_A_1_backup;
reg end_A_2;
reg [31:0] size_A_2;
reg [31:0] size_A_2_backup;
reg end_A_3;
reg [31:0] size_A_3;
reg [31:0] size_A_3_backup;
reg end_A_4;
reg [31:0] size_A_4;
reg [31:0] size_A_4_backup;
reg end_A_5;
reg [31:0] size_A_5;
reg [31:0] size_A_5_backup;
reg end_A_6;
reg [31:0] size_A_6;
reg [31:0] size_A_6_backup;
reg end_A_7;
reg [31:0] size_A_7;
reg [31:0] size_A_7_backup;
reg end_A_8;
reg [31:0] size_A_8;
reg [31:0] size_A_8_backup;
reg end_A_9;
reg [31:0] size_A_9;
reg [31:0] size_A_9_backup;
reg end_A_10;
reg [31:0] size_A_10;
reg [31:0] size_A_10_backup;
reg end_A_11;
reg [31:0] size_A_11;
reg [31:0] size_A_11_backup;
reg end_A_12;
reg [31:0] size_A_12;
reg [31:0] size_A_12_backup;
reg end_A_13;
reg [31:0] size_A_13;
reg [31:0] size_A_13_backup;
reg end_A_14;
reg [31:0] size_A_14;
reg [31:0] size_A_14_backup;
reg end_A_15;
reg [31:0] size_A_15;
reg [31:0] size_A_15_backup;
reg end_A_16;
reg [31:0] size_A_16;
reg [31:0] size_A_16_backup;
reg end_A_17;
reg [31:0] size_A_17;
reg [31:0] size_A_17_backup;
reg end_A_18;
reg [31:0] size_A_18;
reg [31:0] size_A_18_backup;
reg end_A_19;
reg [31:0] size_A_19;
reg [31:0] size_A_19_backup;
reg end_A_20;
reg [31:0] size_A_20;
reg [31:0] size_A_20_backup;
reg end_A_21;
reg [31:0] size_A_21;
reg [31:0] size_A_21_backup;
reg end_A_22;
reg [31:0] size_A_22;
reg [31:0] size_A_22_backup;
reg end_A_23;
reg [31:0] size_A_23;
reg [31:0] size_A_23_backup;
reg end_A_24;
reg [31:0] size_A_24;
reg [31:0] size_A_24_backup;
reg end_A_25;
reg [31:0] size_A_25;
reg [31:0] size_A_25_backup;
reg end_A_26;
reg [31:0] size_A_26;
reg [31:0] size_A_26_backup;
reg end_A_27;
reg [31:0] size_A_27;
reg [31:0] size_A_27_backup;
reg end_A_28;
reg [31:0] size_A_28;
reg [31:0] size_A_28_backup;
reg end_A_29;
reg [31:0] size_A_29;
reg [31:0] size_A_29_backup;
reg end_A_30;
reg [31:0] size_A_30;
reg [31:0] size_A_30_backup;
reg end_A_31;
reg [31:0] size_A_31;
reg [31:0] size_A_31_backup;
reg end_B_0;
reg [31:0] size_B_0;
reg [31:0] size_B_0_backup;
reg end_B_1;
reg [31:0] size_B_1;
reg [31:0] size_B_1_backup;
reg end_B_2;
reg [31:0] size_B_2;
reg [31:0] size_B_2_backup;
reg end_B_3;
reg [31:0] size_B_3;
reg [31:0] size_B_3_backup;
reg end_B_4;
reg [31:0] size_B_4;
reg [31:0] size_B_4_backup;
reg end_B_5;
reg [31:0] size_B_5;
reg [31:0] size_B_5_backup;
reg end_B_6;
reg [31:0] size_B_6;
reg [31:0] size_B_6_backup;
reg end_B_7;
reg [31:0] size_B_7;
reg [31:0] size_B_7_backup;
reg end_B_8;
reg [31:0] size_B_8;
reg [31:0] size_B_8_backup;
reg end_B_9;
reg [31:0] size_B_9;
reg [31:0] size_B_9_backup;
reg end_B_10;
reg [31:0] size_B_10;
reg [31:0] size_B_10_backup;
reg end_B_11;
reg [31:0] size_B_11;
reg [31:0] size_B_11_backup;
reg end_B_12;
reg [31:0] size_B_12;
reg [31:0] size_B_12_backup;
reg end_B_13;
reg [31:0] size_B_13;
reg [31:0] size_B_13_backup;
reg end_B_14;
reg [31:0] size_B_14;
reg [31:0] size_B_14_backup;
reg end_B_15;
reg [31:0] size_B_15;
reg [31:0] size_B_15_backup;
reg end_B_16;
reg [31:0] size_B_16;
reg [31:0] size_B_16_backup;
reg end_B_17;
reg [31:0] size_B_17;
reg [31:0] size_B_17_backup;
reg end_B_18;
reg [31:0] size_B_18;
reg [31:0] size_B_18_backup;
reg end_B_19;
reg [31:0] size_B_19;
reg [31:0] size_B_19_backup;
reg end_B_20;
reg [31:0] size_B_20;
reg [31:0] size_B_20_backup;
reg end_B_21;
reg [31:0] size_B_21;
reg [31:0] size_B_21_backup;
reg end_B_22;
reg [31:0] size_B_22;
reg [31:0] size_B_22_backup;
reg end_B_23;
reg [31:0] size_B_23;
reg [31:0] size_B_23_backup;
reg end_B_24;
reg [31:0] size_B_24;
reg [31:0] size_B_24_backup;
reg end_B_25;
reg [31:0] size_B_25;
reg [31:0] size_B_25_backup;
reg end_B_26;
reg [31:0] size_B_26;
reg [31:0] size_B_26_backup;
reg end_B_27;
reg [31:0] size_B_27;
reg [31:0] size_B_27_backup;
reg end_B_28;
reg [31:0] size_B_28;
reg [31:0] size_B_28_backup;
reg end_B_29;
reg [31:0] size_B_29;
reg [31:0] size_B_29_backup;
reg end_B_30;
reg [31:0] size_B_30;
reg [31:0] size_B_30_backup;
reg end_B_31;
reg [31:0] size_B_31;
reg [31:0] size_B_31_backup;
reg end_feature_vector_V_data_V;
reg [31:0] size_feature_vector_V_data_V;
reg [31:0] size_feature_vector_V_data_V_backup;
reg end_feature_vector_V_keep_V;
reg [31:0] size_feature_vector_V_keep_V;
reg [31:0] size_feature_vector_V_keep_V_backup;
reg end_feature_vector_V_strb_V;
reg [31:0] size_feature_vector_V_strb_V;
reg [31:0] size_feature_vector_V_strb_V_backup;
reg end_feature_vector_V_user_V;
reg [31:0] size_feature_vector_V_user_V;
reg [31:0] size_feature_vector_V_user_V_backup;
reg end_feature_vector_V_last_V;
reg [31:0] size_feature_vector_V_last_V;
reg [31:0] size_feature_vector_V_last_V_backup;
reg end_feature_vector_V_id_V;
reg [31:0] size_feature_vector_V_id_V;
reg [31:0] size_feature_vector_V_id_V_backup;
reg end_feature_vector_V_dest_V;
reg [31:0] size_feature_vector_V_dest_V;
reg [31:0] size_feature_vector_V_dest_V_backup;
reg end_scores;
reg [31:0] size_scores;
reg [31:0] size_scores_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_feature_vector
        feature_vector_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_feature_vector_V_data_V or feature_vector_transaction);
            if (ap_c_n_tvin_trans_num_feature_vector_V_data_V > feature_vector_transaction) begin
                feature_vector_ready_reg = 1;
            end else begin
                feature_vector_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_feature_vector_V_data_V "./stream_size_in_feature_vector_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_feature_vector_V_data_V
        integer fp_feature_vector_V_data_V;
        reg [127:0] token_feature_vector_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_feature_vector_V_data_V = 0;
        end_feature_vector_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_feature_vector_V_data_V = $fopen(`STREAM_SIZE_IN_feature_vector_V_data_V, "r");
        if(fp_feature_vector_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_feature_vector_V_data_V);
            $finish;
        end
        read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be [[[runtime]]]
        if (token_feature_vector_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_feature_vector_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_feature_vector_V_data_V = 0;
        size_feature_vector_V_data_V_backup = 0;
        while (size_feature_vector_V_data_V == 0 && end_feature_vector_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_feature_vector_V_data_V = ap_c_n_tvin_trans_num_feature_vector_V_data_V + 1;
            read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_feature_vector_V_data_V == "[[transaction]]") begin
                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be transaction number
                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_feature_vector_V_data_V, "%d", size_feature_vector_V_data_V);
                if (size_feature_vector_V_data_V > 0) begin
                    size_feature_vector_V_data_V_backup = size_feature_vector_V_data_V;
                end
                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be [[/transaction]]
            end else if (token_feature_vector_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_feature_vector_V_data_V);
                end_feature_vector_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_feature_vector_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_feature_vector_V_data_V == 0) begin
                if ((feature_vector_TREADY & feature_vector_TVALID) == 1) begin
                    if (size_feature_vector_V_data_V > 0) begin
                        size_feature_vector_V_data_V = size_feature_vector_V_data_V - 1;
                        while (size_feature_vector_V_data_V == 0 && end_feature_vector_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector_V_data_V = ap_c_n_tvin_trans_num_feature_vector_V_data_V + 1;
                            read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_feature_vector_V_data_V == "[[transaction]]") begin
                                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be transaction number
                                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_feature_vector_V_data_V, "%d", size_feature_vector_V_data_V);
                                if (size_feature_vector_V_data_V > 0) begin
                                    size_feature_vector_V_data_V_backup = size_feature_vector_V_data_V;
                                end
                                read_token(fp_feature_vector_V_data_V, token_feature_vector_V_data_V); // should be [[/transaction]]
                            end else if (token_feature_vector_V_data_V == "[[[/runtime]]]") begin
                                size_feature_vector_V_data_V = size_feature_vector_V_data_V_backup;
                                $fclose(fp_feature_vector_V_data_V);
                                end_feature_vector_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_feature_vector_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((feature_vector_TREADY & feature_vector_TVALID) == 1) begin
                    if (size_feature_vector_V_data_V > 0) begin
                        size_feature_vector_V_data_V = size_feature_vector_V_data_V - 1;
                        if (size_feature_vector_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_feature_vector_V_data_V = ap_c_n_tvin_trans_num_feature_vector_V_data_V + 1;
                            size_feature_vector_V_data_V = size_feature_vector_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_scores;

initial begin : dump_tvout_runtime_sign_scores
    integer fp;
    dump_tvout_finish_scores = 0;
    fp = $fopen(`AUTOTB_TVOUT_scores_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_scores_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_scores_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_scores_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_scores = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
