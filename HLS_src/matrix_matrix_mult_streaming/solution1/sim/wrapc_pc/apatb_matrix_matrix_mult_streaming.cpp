#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_A_0 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_0.dat"
#define AUTOTB_TVOUT_A_0 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_1 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_1.dat"
#define AUTOTB_TVOUT_A_1 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_2 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_2.dat"
#define AUTOTB_TVOUT_A_2 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_3 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_3.dat"
#define AUTOTB_TVOUT_A_3 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_4 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_4.dat"
#define AUTOTB_TVOUT_A_4 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_5 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_5.dat"
#define AUTOTB_TVOUT_A_5 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_6 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_6.dat"
#define AUTOTB_TVOUT_A_6 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_7 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_7.dat"
#define AUTOTB_TVOUT_A_7 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_8 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_8.dat"
#define AUTOTB_TVOUT_A_8 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_9 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_9.dat"
#define AUTOTB_TVOUT_A_9 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_10 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_10.dat"
#define AUTOTB_TVOUT_A_10 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_11 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_11.dat"
#define AUTOTB_TVOUT_A_11 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_12 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_12.dat"
#define AUTOTB_TVOUT_A_12 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_13 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_13.dat"
#define AUTOTB_TVOUT_A_13 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_14 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_14.dat"
#define AUTOTB_TVOUT_A_14 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_15 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_15.dat"
#define AUTOTB_TVOUT_A_15 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_16 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_16.dat"
#define AUTOTB_TVOUT_A_16 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_17 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_17.dat"
#define AUTOTB_TVOUT_A_17 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_18 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_18.dat"
#define AUTOTB_TVOUT_A_18 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_19 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_19.dat"
#define AUTOTB_TVOUT_A_19 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_20 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_20.dat"
#define AUTOTB_TVOUT_A_20 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_21 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_21.dat"
#define AUTOTB_TVOUT_A_21 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_22 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_22.dat"
#define AUTOTB_TVOUT_A_22 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_23 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_23.dat"
#define AUTOTB_TVOUT_A_23 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_24 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_24.dat"
#define AUTOTB_TVOUT_A_24 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_25 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_25.dat"
#define AUTOTB_TVOUT_A_25 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_26 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_26.dat"
#define AUTOTB_TVOUT_A_26 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_27 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_27.dat"
#define AUTOTB_TVOUT_A_27 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_28 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_28.dat"
#define AUTOTB_TVOUT_A_28 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_29 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_29.dat"
#define AUTOTB_TVOUT_A_29 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_30 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_30.dat"
#define AUTOTB_TVOUT_A_30 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_A_31 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_A_31.dat"
#define AUTOTB_TVOUT_A_31 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_A_31.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_0 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_0.dat"
#define AUTOTB_TVOUT_B_0 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_0.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_1 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_1.dat"
#define AUTOTB_TVOUT_B_1 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_1.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_2 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_2.dat"
#define AUTOTB_TVOUT_B_2 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_2.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_3 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_3.dat"
#define AUTOTB_TVOUT_B_3 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_3.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_4 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_4.dat"
#define AUTOTB_TVOUT_B_4 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_4.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_5 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_5.dat"
#define AUTOTB_TVOUT_B_5 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_5.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_6 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_6.dat"
#define AUTOTB_TVOUT_B_6 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_6.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_7 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_7.dat"
#define AUTOTB_TVOUT_B_7 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_8 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_8.dat"
#define AUTOTB_TVOUT_B_8 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_8.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_9 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_9.dat"
#define AUTOTB_TVOUT_B_9 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_9.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_10 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_10.dat"
#define AUTOTB_TVOUT_B_10 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_10.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_11 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_11.dat"
#define AUTOTB_TVOUT_B_11 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_11.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_12 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_12.dat"
#define AUTOTB_TVOUT_B_12 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_12.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_13 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_13.dat"
#define AUTOTB_TVOUT_B_13 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_13.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_14 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_14.dat"
#define AUTOTB_TVOUT_B_14 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_14.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_15 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_15.dat"
#define AUTOTB_TVOUT_B_15 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_15.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_16 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_16.dat"
#define AUTOTB_TVOUT_B_16 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_16.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_17 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_17.dat"
#define AUTOTB_TVOUT_B_17 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_17.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_18 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_18.dat"
#define AUTOTB_TVOUT_B_18 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_18.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_19 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_19.dat"
#define AUTOTB_TVOUT_B_19 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_19.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_20 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_20.dat"
#define AUTOTB_TVOUT_B_20 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_20.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_21 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_21.dat"
#define AUTOTB_TVOUT_B_21 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_21.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_22 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_22.dat"
#define AUTOTB_TVOUT_B_22 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_22.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_23 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_23.dat"
#define AUTOTB_TVOUT_B_23 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_23.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_24 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_24.dat"
#define AUTOTB_TVOUT_B_24 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_24.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_25 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_25.dat"
#define AUTOTB_TVOUT_B_25 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_25.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_26 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_26.dat"
#define AUTOTB_TVOUT_B_26 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_26.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_27 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_27.dat"
#define AUTOTB_TVOUT_B_27 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_27.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_28 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_28.dat"
#define AUTOTB_TVOUT_B_28 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_28.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_29 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_29.dat"
#define AUTOTB_TVOUT_B_29 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_29.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_30 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_30.dat"
#define AUTOTB_TVOUT_B_30 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_30.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_31 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_B_31.dat"
#define AUTOTB_TVOUT_B_31 "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_B_31.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_vector_V_data_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_data_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_data_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_data_V.dat"
#define AUTOTB_TVIN_feature_vector_V_keep_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_keep_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_keep_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_keep_V.dat"
#define AUTOTB_TVIN_feature_vector_V_strb_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_strb_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_strb_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_strb_V.dat"
#define AUTOTB_TVIN_feature_vector_V_user_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_user_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_user_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_user_V.dat"
#define AUTOTB_TVIN_feature_vector_V_last_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_last_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_last_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_last_V.dat"
#define AUTOTB_TVIN_feature_vector_V_id_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_id_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_id_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_id_V.dat"
#define AUTOTB_TVIN_feature_vector_V_dest_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_feature_vector_V_dest_V.dat"
#define AUTOTB_TVOUT_feature_vector_V_dest_V "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_feature_vector_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V "../tv/stream_size/stream_size_in_feature_vector_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V "../tv/stream_size/stream_ingress_status_feature_vector_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_keep_V "../tv/stream_size/stream_size_in_feature_vector_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V "../tv/stream_size/stream_ingress_status_feature_vector_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_strb_V "../tv/stream_size/stream_size_in_feature_vector_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V "../tv/stream_size/stream_ingress_status_feature_vector_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_user_V "../tv/stream_size/stream_size_in_feature_vector_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V "../tv/stream_size/stream_ingress_status_feature_vector_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_last_V "../tv/stream_size/stream_size_in_feature_vector_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V "../tv/stream_size/stream_ingress_status_feature_vector_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_id_V "../tv/stream_size/stream_size_in_feature_vector_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V "../tv/stream_size/stream_ingress_status_feature_vector_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector_V_dest_V "../tv/stream_size/stream_size_in_feature_vector_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V "../tv/stream_size/stream_ingress_status_feature_vector_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_scores "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvin_scores.dat"
#define AUTOTB_TVOUT_scores "../tv/cdatafile/c.matrix_matrix_mult_streaming.autotvout_scores.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_A_0 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_1 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_2 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_3 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_4 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_5 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_6 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_7 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_8 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_9 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_10 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_11 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_12 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_13 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_14 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_15 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_16 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_17 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_18 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_19 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_20 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_21 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_22 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_23 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_24 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_25 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_26 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_27 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_28 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_29 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_30 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_A_31 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_A_31.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_0 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_1 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_2 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_3 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_4 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_4.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_5 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_5.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_6 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_6.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_7 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_8 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_8.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_9 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_9.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_10 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_10.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_11 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_11.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_12 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_12.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_13 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_13.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_14 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_14.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_15 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_15.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_16 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_16.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_17 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_17.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_18 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_18.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_19 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_19.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_20 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_20.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_21 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_21.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_22 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_22.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_23 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_23.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_24 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_24.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_25 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_25.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_26 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_26.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_27 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_27.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_28 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_28.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_29 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_29.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_30 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_30.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_31 "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_B_31.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_vector_V_data_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_data_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_keep_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_strb_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_user_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_user_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_last_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_last_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_id_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_id_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector_V_dest_V "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_feature_vector_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_scores "../tv/rtldatafile/rtl.matrix_matrix_mult_streaming.autotvout_scores.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  A_0_depth = 0;
  A_1_depth = 0;
  A_2_depth = 0;
  A_3_depth = 0;
  A_4_depth = 0;
  A_5_depth = 0;
  A_6_depth = 0;
  A_7_depth = 0;
  A_8_depth = 0;
  A_9_depth = 0;
  A_10_depth = 0;
  A_11_depth = 0;
  A_12_depth = 0;
  A_13_depth = 0;
  A_14_depth = 0;
  A_15_depth = 0;
  A_16_depth = 0;
  A_17_depth = 0;
  A_18_depth = 0;
  A_19_depth = 0;
  A_20_depth = 0;
  A_21_depth = 0;
  A_22_depth = 0;
  A_23_depth = 0;
  A_24_depth = 0;
  A_25_depth = 0;
  A_26_depth = 0;
  A_27_depth = 0;
  A_28_depth = 0;
  A_29_depth = 0;
  A_30_depth = 0;
  A_31_depth = 0;
  B_0_depth = 0;
  B_1_depth = 0;
  B_2_depth = 0;
  B_3_depth = 0;
  B_4_depth = 0;
  B_5_depth = 0;
  B_6_depth = 0;
  B_7_depth = 0;
  B_8_depth = 0;
  B_9_depth = 0;
  B_10_depth = 0;
  B_11_depth = 0;
  B_12_depth = 0;
  B_13_depth = 0;
  B_14_depth = 0;
  B_15_depth = 0;
  B_16_depth = 0;
  B_17_depth = 0;
  B_18_depth = 0;
  B_19_depth = 0;
  B_20_depth = 0;
  B_21_depth = 0;
  B_22_depth = 0;
  B_23_depth = 0;
  B_24_depth = 0;
  B_25_depth = 0;
  B_26_depth = 0;
  B_27_depth = 0;
  B_28_depth = 0;
  B_29_depth = 0;
  B_30_depth = 0;
  B_31_depth = 0;
  feature_vector_V_data_V_depth = 0;
  feature_vector_V_keep_V_depth = 0;
  feature_vector_V_strb_V_depth = 0;
  feature_vector_V_user_V_depth = 0;
  feature_vector_V_last_V_depth = 0;
  feature_vector_V_id_V_depth = 0;
  feature_vector_V_dest_V_depth = 0;
  scores_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{A_0 " << A_0_depth << "}\n";
  total_list << "{A_1 " << A_1_depth << "}\n";
  total_list << "{A_2 " << A_2_depth << "}\n";
  total_list << "{A_3 " << A_3_depth << "}\n";
  total_list << "{A_4 " << A_4_depth << "}\n";
  total_list << "{A_5 " << A_5_depth << "}\n";
  total_list << "{A_6 " << A_6_depth << "}\n";
  total_list << "{A_7 " << A_7_depth << "}\n";
  total_list << "{A_8 " << A_8_depth << "}\n";
  total_list << "{A_9 " << A_9_depth << "}\n";
  total_list << "{A_10 " << A_10_depth << "}\n";
  total_list << "{A_11 " << A_11_depth << "}\n";
  total_list << "{A_12 " << A_12_depth << "}\n";
  total_list << "{A_13 " << A_13_depth << "}\n";
  total_list << "{A_14 " << A_14_depth << "}\n";
  total_list << "{A_15 " << A_15_depth << "}\n";
  total_list << "{A_16 " << A_16_depth << "}\n";
  total_list << "{A_17 " << A_17_depth << "}\n";
  total_list << "{A_18 " << A_18_depth << "}\n";
  total_list << "{A_19 " << A_19_depth << "}\n";
  total_list << "{A_20 " << A_20_depth << "}\n";
  total_list << "{A_21 " << A_21_depth << "}\n";
  total_list << "{A_22 " << A_22_depth << "}\n";
  total_list << "{A_23 " << A_23_depth << "}\n";
  total_list << "{A_24 " << A_24_depth << "}\n";
  total_list << "{A_25 " << A_25_depth << "}\n";
  total_list << "{A_26 " << A_26_depth << "}\n";
  total_list << "{A_27 " << A_27_depth << "}\n";
  total_list << "{A_28 " << A_28_depth << "}\n";
  total_list << "{A_29 " << A_29_depth << "}\n";
  total_list << "{A_30 " << A_30_depth << "}\n";
  total_list << "{A_31 " << A_31_depth << "}\n";
  total_list << "{B_0 " << B_0_depth << "}\n";
  total_list << "{B_1 " << B_1_depth << "}\n";
  total_list << "{B_2 " << B_2_depth << "}\n";
  total_list << "{B_3 " << B_3_depth << "}\n";
  total_list << "{B_4 " << B_4_depth << "}\n";
  total_list << "{B_5 " << B_5_depth << "}\n";
  total_list << "{B_6 " << B_6_depth << "}\n";
  total_list << "{B_7 " << B_7_depth << "}\n";
  total_list << "{B_8 " << B_8_depth << "}\n";
  total_list << "{B_9 " << B_9_depth << "}\n";
  total_list << "{B_10 " << B_10_depth << "}\n";
  total_list << "{B_11 " << B_11_depth << "}\n";
  total_list << "{B_12 " << B_12_depth << "}\n";
  total_list << "{B_13 " << B_13_depth << "}\n";
  total_list << "{B_14 " << B_14_depth << "}\n";
  total_list << "{B_15 " << B_15_depth << "}\n";
  total_list << "{B_16 " << B_16_depth << "}\n";
  total_list << "{B_17 " << B_17_depth << "}\n";
  total_list << "{B_18 " << B_18_depth << "}\n";
  total_list << "{B_19 " << B_19_depth << "}\n";
  total_list << "{B_20 " << B_20_depth << "}\n";
  total_list << "{B_21 " << B_21_depth << "}\n";
  total_list << "{B_22 " << B_22_depth << "}\n";
  total_list << "{B_23 " << B_23_depth << "}\n";
  total_list << "{B_24 " << B_24_depth << "}\n";
  total_list << "{B_25 " << B_25_depth << "}\n";
  total_list << "{B_26 " << B_26_depth << "}\n";
  total_list << "{B_27 " << B_27_depth << "}\n";
  total_list << "{B_28 " << B_28_depth << "}\n";
  total_list << "{B_29 " << B_29_depth << "}\n";
  total_list << "{B_30 " << B_30_depth << "}\n";
  total_list << "{B_31 " << B_31_depth << "}\n";
  total_list << "{feature_vector_V_data_V " << feature_vector_V_data_V_depth << "}\n";
  total_list << "{feature_vector_V_keep_V " << feature_vector_V_keep_V_depth << "}\n";
  total_list << "{feature_vector_V_strb_V " << feature_vector_V_strb_V_depth << "}\n";
  total_list << "{feature_vector_V_user_V " << feature_vector_V_user_V_depth << "}\n";
  total_list << "{feature_vector_V_last_V " << feature_vector_V_last_V_depth << "}\n";
  total_list << "{feature_vector_V_id_V " << feature_vector_V_id_V_depth << "}\n";
  total_list << "{feature_vector_V_dest_V " << feature_vector_V_dest_V_depth << "}\n";
  total_list << "{scores " << scores_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int A_0_depth;
    int A_1_depth;
    int A_2_depth;
    int A_3_depth;
    int A_4_depth;
    int A_5_depth;
    int A_6_depth;
    int A_7_depth;
    int A_8_depth;
    int A_9_depth;
    int A_10_depth;
    int A_11_depth;
    int A_12_depth;
    int A_13_depth;
    int A_14_depth;
    int A_15_depth;
    int A_16_depth;
    int A_17_depth;
    int A_18_depth;
    int A_19_depth;
    int A_20_depth;
    int A_21_depth;
    int A_22_depth;
    int A_23_depth;
    int A_24_depth;
    int A_25_depth;
    int A_26_depth;
    int A_27_depth;
    int A_28_depth;
    int A_29_depth;
    int A_30_depth;
    int A_31_depth;
    int B_0_depth;
    int B_1_depth;
    int B_2_depth;
    int B_3_depth;
    int B_4_depth;
    int B_5_depth;
    int B_6_depth;
    int B_7_depth;
    int B_8_depth;
    int B_9_depth;
    int B_10_depth;
    int B_11_depth;
    int B_12_depth;
    int B_13_depth;
    int B_14_depth;
    int B_15_depth;
    int B_16_depth;
    int B_17_depth;
    int B_18_depth;
    int B_19_depth;
    int B_20_depth;
    int B_21_depth;
    int B_22_depth;
    int B_23_depth;
    int B_24_depth;
    int B_25_depth;
    int B_26_depth;
    int B_27_depth;
    int B_28_depth;
    int B_29_depth;
    int B_30_depth;
    int B_31_depth;
    int feature_vector_V_data_V_depth;
    int feature_vector_V_keep_V_depth;
    int feature_vector_V_strb_V_depth;
    int feature_vector_V_user_V_depth;
    int feature_vector_V_last_V_depth;
    int feature_vector_V_id_V_depth;
    int feature_vector_V_dest_V_depth;
    int scores_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s20__ { char data[32]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void matrix_matrix_mult_streaming_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_matrix_matrix_mult_streaming_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_A_16, volatile void * __xlx_apatb_param_A_17, volatile void * __xlx_apatb_param_A_18, volatile void * __xlx_apatb_param_A_19, volatile void * __xlx_apatb_param_A_20, volatile void * __xlx_apatb_param_A_21, volatile void * __xlx_apatb_param_A_22, volatile void * __xlx_apatb_param_A_23, volatile void * __xlx_apatb_param_A_24, volatile void * __xlx_apatb_param_A_25, volatile void * __xlx_apatb_param_A_26, volatile void * __xlx_apatb_param_A_27, volatile void * __xlx_apatb_param_A_28, volatile void * __xlx_apatb_param_A_29, volatile void * __xlx_apatb_param_A_30, volatile void * __xlx_apatb_param_A_31, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_B_16, volatile void * __xlx_apatb_param_B_17, volatile void * __xlx_apatb_param_B_18, volatile void * __xlx_apatb_param_B_19, volatile void * __xlx_apatb_param_B_20, volatile void * __xlx_apatb_param_B_21, volatile void * __xlx_apatb_param_B_22, volatile void * __xlx_apatb_param_B_23, volatile void * __xlx_apatb_param_B_24, volatile void * __xlx_apatb_param_B_25, volatile void * __xlx_apatb_param_B_26, volatile void * __xlx_apatb_param_B_27, volatile void * __xlx_apatb_param_B_28, volatile void * __xlx_apatb_param_B_29, volatile void * __xlx_apatb_param_B_30, volatile void * __xlx_apatb_param_B_31, volatile void * __xlx_apatb_param_feature_vector, volatile void * __xlx_apatb_param_scores) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_feature_vector_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_feature_vector_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_feature_vector_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->read();
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_scores);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > scores_pc_buffer(10);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "scores");
  
            // push token into output port buffer
            if (AESL_token != "") {
              scores_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 10; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_scores)[j*2+0] = scores_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_scores)[j*2+1] = scores_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//A_0
aesl_fh.touch(AUTOTB_TVIN_A_0);
aesl_fh.touch(AUTOTB_TVOUT_A_0);
//A_1
aesl_fh.touch(AUTOTB_TVIN_A_1);
aesl_fh.touch(AUTOTB_TVOUT_A_1);
//A_2
aesl_fh.touch(AUTOTB_TVIN_A_2);
aesl_fh.touch(AUTOTB_TVOUT_A_2);
//A_3
aesl_fh.touch(AUTOTB_TVIN_A_3);
aesl_fh.touch(AUTOTB_TVOUT_A_3);
//A_4
aesl_fh.touch(AUTOTB_TVIN_A_4);
aesl_fh.touch(AUTOTB_TVOUT_A_4);
//A_5
aesl_fh.touch(AUTOTB_TVIN_A_5);
aesl_fh.touch(AUTOTB_TVOUT_A_5);
//A_6
aesl_fh.touch(AUTOTB_TVIN_A_6);
aesl_fh.touch(AUTOTB_TVOUT_A_6);
//A_7
aesl_fh.touch(AUTOTB_TVIN_A_7);
aesl_fh.touch(AUTOTB_TVOUT_A_7);
//A_8
aesl_fh.touch(AUTOTB_TVIN_A_8);
aesl_fh.touch(AUTOTB_TVOUT_A_8);
//A_9
aesl_fh.touch(AUTOTB_TVIN_A_9);
aesl_fh.touch(AUTOTB_TVOUT_A_9);
//A_10
aesl_fh.touch(AUTOTB_TVIN_A_10);
aesl_fh.touch(AUTOTB_TVOUT_A_10);
//A_11
aesl_fh.touch(AUTOTB_TVIN_A_11);
aesl_fh.touch(AUTOTB_TVOUT_A_11);
//A_12
aesl_fh.touch(AUTOTB_TVIN_A_12);
aesl_fh.touch(AUTOTB_TVOUT_A_12);
//A_13
aesl_fh.touch(AUTOTB_TVIN_A_13);
aesl_fh.touch(AUTOTB_TVOUT_A_13);
//A_14
aesl_fh.touch(AUTOTB_TVIN_A_14);
aesl_fh.touch(AUTOTB_TVOUT_A_14);
//A_15
aesl_fh.touch(AUTOTB_TVIN_A_15);
aesl_fh.touch(AUTOTB_TVOUT_A_15);
//A_16
aesl_fh.touch(AUTOTB_TVIN_A_16);
aesl_fh.touch(AUTOTB_TVOUT_A_16);
//A_17
aesl_fh.touch(AUTOTB_TVIN_A_17);
aesl_fh.touch(AUTOTB_TVOUT_A_17);
//A_18
aesl_fh.touch(AUTOTB_TVIN_A_18);
aesl_fh.touch(AUTOTB_TVOUT_A_18);
//A_19
aesl_fh.touch(AUTOTB_TVIN_A_19);
aesl_fh.touch(AUTOTB_TVOUT_A_19);
//A_20
aesl_fh.touch(AUTOTB_TVIN_A_20);
aesl_fh.touch(AUTOTB_TVOUT_A_20);
//A_21
aesl_fh.touch(AUTOTB_TVIN_A_21);
aesl_fh.touch(AUTOTB_TVOUT_A_21);
//A_22
aesl_fh.touch(AUTOTB_TVIN_A_22);
aesl_fh.touch(AUTOTB_TVOUT_A_22);
//A_23
aesl_fh.touch(AUTOTB_TVIN_A_23);
aesl_fh.touch(AUTOTB_TVOUT_A_23);
//A_24
aesl_fh.touch(AUTOTB_TVIN_A_24);
aesl_fh.touch(AUTOTB_TVOUT_A_24);
//A_25
aesl_fh.touch(AUTOTB_TVIN_A_25);
aesl_fh.touch(AUTOTB_TVOUT_A_25);
//A_26
aesl_fh.touch(AUTOTB_TVIN_A_26);
aesl_fh.touch(AUTOTB_TVOUT_A_26);
//A_27
aesl_fh.touch(AUTOTB_TVIN_A_27);
aesl_fh.touch(AUTOTB_TVOUT_A_27);
//A_28
aesl_fh.touch(AUTOTB_TVIN_A_28);
aesl_fh.touch(AUTOTB_TVOUT_A_28);
//A_29
aesl_fh.touch(AUTOTB_TVIN_A_29);
aesl_fh.touch(AUTOTB_TVOUT_A_29);
//A_30
aesl_fh.touch(AUTOTB_TVIN_A_30);
aesl_fh.touch(AUTOTB_TVOUT_A_30);
//A_31
aesl_fh.touch(AUTOTB_TVIN_A_31);
aesl_fh.touch(AUTOTB_TVOUT_A_31);
//B_0
aesl_fh.touch(AUTOTB_TVIN_B_0);
aesl_fh.touch(AUTOTB_TVOUT_B_0);
//B_1
aesl_fh.touch(AUTOTB_TVIN_B_1);
aesl_fh.touch(AUTOTB_TVOUT_B_1);
//B_2
aesl_fh.touch(AUTOTB_TVIN_B_2);
aesl_fh.touch(AUTOTB_TVOUT_B_2);
//B_3
aesl_fh.touch(AUTOTB_TVIN_B_3);
aesl_fh.touch(AUTOTB_TVOUT_B_3);
//B_4
aesl_fh.touch(AUTOTB_TVIN_B_4);
aesl_fh.touch(AUTOTB_TVOUT_B_4);
//B_5
aesl_fh.touch(AUTOTB_TVIN_B_5);
aesl_fh.touch(AUTOTB_TVOUT_B_5);
//B_6
aesl_fh.touch(AUTOTB_TVIN_B_6);
aesl_fh.touch(AUTOTB_TVOUT_B_6);
//B_7
aesl_fh.touch(AUTOTB_TVIN_B_7);
aesl_fh.touch(AUTOTB_TVOUT_B_7);
//B_8
aesl_fh.touch(AUTOTB_TVIN_B_8);
aesl_fh.touch(AUTOTB_TVOUT_B_8);
//B_9
aesl_fh.touch(AUTOTB_TVIN_B_9);
aesl_fh.touch(AUTOTB_TVOUT_B_9);
//B_10
aesl_fh.touch(AUTOTB_TVIN_B_10);
aesl_fh.touch(AUTOTB_TVOUT_B_10);
//B_11
aesl_fh.touch(AUTOTB_TVIN_B_11);
aesl_fh.touch(AUTOTB_TVOUT_B_11);
//B_12
aesl_fh.touch(AUTOTB_TVIN_B_12);
aesl_fh.touch(AUTOTB_TVOUT_B_12);
//B_13
aesl_fh.touch(AUTOTB_TVIN_B_13);
aesl_fh.touch(AUTOTB_TVOUT_B_13);
//B_14
aesl_fh.touch(AUTOTB_TVIN_B_14);
aesl_fh.touch(AUTOTB_TVOUT_B_14);
//B_15
aesl_fh.touch(AUTOTB_TVIN_B_15);
aesl_fh.touch(AUTOTB_TVOUT_B_15);
//B_16
aesl_fh.touch(AUTOTB_TVIN_B_16);
aesl_fh.touch(AUTOTB_TVOUT_B_16);
//B_17
aesl_fh.touch(AUTOTB_TVIN_B_17);
aesl_fh.touch(AUTOTB_TVOUT_B_17);
//B_18
aesl_fh.touch(AUTOTB_TVIN_B_18);
aesl_fh.touch(AUTOTB_TVOUT_B_18);
//B_19
aesl_fh.touch(AUTOTB_TVIN_B_19);
aesl_fh.touch(AUTOTB_TVOUT_B_19);
//B_20
aesl_fh.touch(AUTOTB_TVIN_B_20);
aesl_fh.touch(AUTOTB_TVOUT_B_20);
//B_21
aesl_fh.touch(AUTOTB_TVIN_B_21);
aesl_fh.touch(AUTOTB_TVOUT_B_21);
//B_22
aesl_fh.touch(AUTOTB_TVIN_B_22);
aesl_fh.touch(AUTOTB_TVOUT_B_22);
//B_23
aesl_fh.touch(AUTOTB_TVIN_B_23);
aesl_fh.touch(AUTOTB_TVOUT_B_23);
//B_24
aesl_fh.touch(AUTOTB_TVIN_B_24);
aesl_fh.touch(AUTOTB_TVOUT_B_24);
//B_25
aesl_fh.touch(AUTOTB_TVIN_B_25);
aesl_fh.touch(AUTOTB_TVOUT_B_25);
//B_26
aesl_fh.touch(AUTOTB_TVIN_B_26);
aesl_fh.touch(AUTOTB_TVOUT_B_26);
//B_27
aesl_fh.touch(AUTOTB_TVIN_B_27);
aesl_fh.touch(AUTOTB_TVOUT_B_27);
//B_28
aesl_fh.touch(AUTOTB_TVIN_B_28);
aesl_fh.touch(AUTOTB_TVOUT_B_28);
//B_29
aesl_fh.touch(AUTOTB_TVIN_B_29);
aesl_fh.touch(AUTOTB_TVOUT_B_29);
//B_30
aesl_fh.touch(AUTOTB_TVIN_B_30);
aesl_fh.touch(AUTOTB_TVOUT_B_30);
//B_31
aesl_fh.touch(AUTOTB_TVIN_B_31);
aesl_fh.touch(AUTOTB_TVOUT_B_31);
//feature_vector
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V);
//scores
aesl_fh.touch(AUTOTB_TVIN_scores);
aesl_fh.touch(AUTOTB_TVOUT_scores);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_A_0 = 0;
// print A_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_0 = 0*16;
  if (__xlx_apatb_param_A_0) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_0)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_0)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_1 = 0;
// print A_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_1 = 0*16;
  if (__xlx_apatb_param_A_1) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_1)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_2 = 0;
// print A_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_2 = 0*16;
  if (__xlx_apatb_param_A_2) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_2)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_3 = 0;
// print A_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_3 = 0*16;
  if (__xlx_apatb_param_A_3) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_3)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_3)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_4 = 0;
// print A_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_4 = 0*16;
  if (__xlx_apatb_param_A_4) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_4)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_4)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_5 = 0;
// print A_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_5 = 0*16;
  if (__xlx_apatb_param_A_5) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_5)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_5)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_6 = 0;
// print A_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_6 = 0*16;
  if (__xlx_apatb_param_A_6) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_6)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_6)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_7 = 0;
// print A_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_7 = 0*16;
  if (__xlx_apatb_param_A_7) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_7)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_7)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_7, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_8 = 0;
// print A_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_8 = 0*16;
  if (__xlx_apatb_param_A_8) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_8)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_8)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_8, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_9 = 0;
// print A_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_9 = 0*16;
  if (__xlx_apatb_param_A_9) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_9)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_9)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_9, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_10 = 0;
// print A_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_10 = 0*16;
  if (__xlx_apatb_param_A_10) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_10)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_10)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_10, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_11 = 0;
// print A_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_11 = 0*16;
  if (__xlx_apatb_param_A_11) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_11)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_11)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_11, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_12 = 0;
// print A_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_12 = 0*16;
  if (__xlx_apatb_param_A_12) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_12)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_12)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_12, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_13 = 0;
// print A_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_13 = 0*16;
  if (__xlx_apatb_param_A_13) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_13)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_13)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_13, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_14 = 0;
// print A_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_14 = 0*16;
  if (__xlx_apatb_param_A_14) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_14)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_14)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_14, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_15 = 0;
// print A_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_15 = 0*16;
  if (__xlx_apatb_param_A_15) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_15)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_15)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_15, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_16 = 0;
// print A_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_16, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_16 = 0*16;
  if (__xlx_apatb_param_A_16) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_16)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_16)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_16, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_16, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_17 = 0;
// print A_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_17, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_17 = 0*16;
  if (__xlx_apatb_param_A_17) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_17)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_17)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_17, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_17, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_18 = 0;
// print A_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_18, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_18 = 0*16;
  if (__xlx_apatb_param_A_18) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_18)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_18)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_18, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_18, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_19 = 0;
// print A_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_19, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_19 = 0*16;
  if (__xlx_apatb_param_A_19) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_19)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_19)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_19, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_19, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_20 = 0;
// print A_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_20, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_20 = 0*16;
  if (__xlx_apatb_param_A_20) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_20)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_20)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_20, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_20, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_21 = 0;
// print A_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_21, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_21 = 0*16;
  if (__xlx_apatb_param_A_21) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_21)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_21)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_21, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_21, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_22 = 0;
// print A_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_22, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_22 = 0*16;
  if (__xlx_apatb_param_A_22) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_22)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_22)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_22, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_22, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_23 = 0;
// print A_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_23, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_23 = 0*16;
  if (__xlx_apatb_param_A_23) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_23)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_23)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_23, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_23, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_24 = 0;
// print A_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_24, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_24 = 0*16;
  if (__xlx_apatb_param_A_24) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_24)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_24)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_24, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_24, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_25 = 0;
// print A_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_25, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_25 = 0*16;
  if (__xlx_apatb_param_A_25) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_25)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_25)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_25, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_25, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_26 = 0;
// print A_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_26, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_26 = 0*16;
  if (__xlx_apatb_param_A_26) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_26)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_26)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_26, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_26, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_27 = 0;
// print A_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_27, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_27 = 0*16;
  if (__xlx_apatb_param_A_27) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_27)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_27)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_27, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_27, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_28 = 0;
// print A_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_28, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_28 = 0*16;
  if (__xlx_apatb_param_A_28) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_28)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_28)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_28, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_28, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_29 = 0;
// print A_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_29, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_29 = 0*16;
  if (__xlx_apatb_param_A_29) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_29)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_29)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_29, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_29, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_30 = 0;
// print A_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_30, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_30 = 0*16;
  if (__xlx_apatb_param_A_30) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_30)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_30)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_30, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_30, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_A_31 = 0;
// print A_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_A_31, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_A_31 = 0*16;
  if (__xlx_apatb_param_A_31) {
    for (int j = 0  - 0, e = 32 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_A_31)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_A_31)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_A_31, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(32, &tcl_file.A_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_A_31, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_0 = 0;
// print B_0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_0 = 0*16;
  if (__xlx_apatb_param_B_0) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_0)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_0)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_1 = 0;
// print B_1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_1 = 0*16;
  if (__xlx_apatb_param_B_1) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_1)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_1)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_1, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_2 = 0;
// print B_2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_2 = 0*16;
  if (__xlx_apatb_param_B_2) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_2)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_2)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_2, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_3 = 0;
// print B_3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_3 = 0*16;
  if (__xlx_apatb_param_B_3) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_3)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_3)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_3, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_4 = 0;
// print B_4 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_4 = 0*16;
  if (__xlx_apatb_param_B_4) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_4)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_4)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_4_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_4, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_5 = 0;
// print B_5 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_5 = 0*16;
  if (__xlx_apatb_param_B_5) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_5)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_5)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_5_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_5, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_6 = 0;
// print B_6 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_6 = 0*16;
  if (__xlx_apatb_param_B_6) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_6)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_6)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_6_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_6, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_7 = 0;
// print B_7 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_7 = 0*16;
  if (__xlx_apatb_param_B_7) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_7)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_7)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_7_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_7, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_8 = 0;
// print B_8 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_8 = 0*16;
  if (__xlx_apatb_param_B_8) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_8)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_8)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_8_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_8, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_9 = 0;
// print B_9 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_9 = 0*16;
  if (__xlx_apatb_param_B_9) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_9)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_9)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_9_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_9, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_10 = 0;
// print B_10 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_10 = 0*16;
  if (__xlx_apatb_param_B_10) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_10)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_10)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_10_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_10, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_11 = 0;
// print B_11 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_11 = 0*16;
  if (__xlx_apatb_param_B_11) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_11)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_11)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_11_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_11, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_12 = 0;
// print B_12 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_12 = 0*16;
  if (__xlx_apatb_param_B_12) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_12)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_12)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_12_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_12, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_13 = 0;
// print B_13 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_13 = 0*16;
  if (__xlx_apatb_param_B_13) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_13)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_13)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_13_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_13, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_14 = 0;
// print B_14 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_14 = 0*16;
  if (__xlx_apatb_param_B_14) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_14)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_14)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_14_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_14, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_15 = 0;
// print B_15 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_15 = 0*16;
  if (__xlx_apatb_param_B_15) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_15)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_15)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_15_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_15, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_16 = 0;
// print B_16 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_16, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_16 = 0*16;
  if (__xlx_apatb_param_B_16) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_16)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_16)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_16, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_16_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_16, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_17 = 0;
// print B_17 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_17, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_17 = 0*16;
  if (__xlx_apatb_param_B_17) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_17)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_17)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_17, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_17_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_17, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_18 = 0;
// print B_18 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_18, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_18 = 0*16;
  if (__xlx_apatb_param_B_18) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_18)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_18)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_18, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_18_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_18, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_19 = 0;
// print B_19 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_19, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_19 = 0*16;
  if (__xlx_apatb_param_B_19) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_19)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_19)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_19, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_19_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_19, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_20 = 0;
// print B_20 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_20, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_20 = 0*16;
  if (__xlx_apatb_param_B_20) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_20)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_20)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_20, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_20_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_20, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_21 = 0;
// print B_21 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_21, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_21 = 0*16;
  if (__xlx_apatb_param_B_21) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_21)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_21)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_21, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_21_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_21, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_22 = 0;
// print B_22 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_22, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_22 = 0*16;
  if (__xlx_apatb_param_B_22) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_22)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_22)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_22, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_22_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_22, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_23 = 0;
// print B_23 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_23, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_23 = 0*16;
  if (__xlx_apatb_param_B_23) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_23)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_23)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_23, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_23_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_23, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_24 = 0;
// print B_24 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_24, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_24 = 0*16;
  if (__xlx_apatb_param_B_24) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_24)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_24)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_24, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_24_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_24, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_25 = 0;
// print B_25 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_25, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_25 = 0*16;
  if (__xlx_apatb_param_B_25) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_25)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_25)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_25, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_25_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_25, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_26 = 0;
// print B_26 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_26, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_26 = 0*16;
  if (__xlx_apatb_param_B_26) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_26)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_26)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_26, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_26_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_26, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_27 = 0;
// print B_27 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_27, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_27 = 0*16;
  if (__xlx_apatb_param_B_27) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_27)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_27)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_27, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_27_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_27, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_28 = 0;
// print B_28 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_28, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_28 = 0*16;
  if (__xlx_apatb_param_B_28) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_28)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_28)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_28, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_28_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_28, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_29 = 0;
// print B_29 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_29, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_29 = 0*16;
  if (__xlx_apatb_param_B_29) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_29)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_29)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_29, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_29_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_29, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_30 = 0;
// print B_30 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_30, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_30 = 0*16;
  if (__xlx_apatb_param_B_30) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_30)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_30)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_30, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_30_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_30, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_31 = 0;
// print B_31 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_31, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_31 = 0*16;
  if (__xlx_apatb_param_B_31) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_B_31)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_B_31)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_31, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.B_31_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_31, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s20__> __xlx_apatb_param_feature_vector_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->empty())
    __xlx_apatb_param_feature_vector_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->read());
  for (int i = 0; i < __xlx_apatb_param_feature_vector_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->write(__xlx_apatb_param_feature_vector_stream_buf[i]);
  }
long __xlx_apatb_param_feature_vector_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->size();
unsigned __xlx_offset_byte_param_scores = 0;
// print scores Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_scores = 0*16;
  if (__xlx_apatb_param_scores) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_scores)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_scores)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.scores_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
matrix_matrix_mult_streaming_hw_stub_wrapper(__xlx_apatb_param_A_0, __xlx_apatb_param_A_1, __xlx_apatb_param_A_2, __xlx_apatb_param_A_3, __xlx_apatb_param_A_4, __xlx_apatb_param_A_5, __xlx_apatb_param_A_6, __xlx_apatb_param_A_7, __xlx_apatb_param_A_8, __xlx_apatb_param_A_9, __xlx_apatb_param_A_10, __xlx_apatb_param_A_11, __xlx_apatb_param_A_12, __xlx_apatb_param_A_13, __xlx_apatb_param_A_14, __xlx_apatb_param_A_15, __xlx_apatb_param_A_16, __xlx_apatb_param_A_17, __xlx_apatb_param_A_18, __xlx_apatb_param_A_19, __xlx_apatb_param_A_20, __xlx_apatb_param_A_21, __xlx_apatb_param_A_22, __xlx_apatb_param_A_23, __xlx_apatb_param_A_24, __xlx_apatb_param_A_25, __xlx_apatb_param_A_26, __xlx_apatb_param_A_27, __xlx_apatb_param_A_28, __xlx_apatb_param_A_29, __xlx_apatb_param_A_30, __xlx_apatb_param_A_31, __xlx_apatb_param_B_0, __xlx_apatb_param_B_1, __xlx_apatb_param_B_2, __xlx_apatb_param_B_3, __xlx_apatb_param_B_4, __xlx_apatb_param_B_5, __xlx_apatb_param_B_6, __xlx_apatb_param_B_7, __xlx_apatb_param_B_8, __xlx_apatb_param_B_9, __xlx_apatb_param_B_10, __xlx_apatb_param_B_11, __xlx_apatb_param_B_12, __xlx_apatb_param_B_13, __xlx_apatb_param_B_14, __xlx_apatb_param_B_15, __xlx_apatb_param_B_16, __xlx_apatb_param_B_17, __xlx_apatb_param_B_18, __xlx_apatb_param_B_19, __xlx_apatb_param_B_20, __xlx_apatb_param_B_21, __xlx_apatb_param_B_22, __xlx_apatb_param_B_23, __xlx_apatb_param_B_24, __xlx_apatb_param_B_25, __xlx_apatb_param_B_26, __xlx_apatb_param_B_27, __xlx_apatb_param_B_28, __xlx_apatb_param_B_29, __xlx_apatb_param_B_30, __xlx_apatb_param_B_31, __xlx_apatb_param_feature_vector, __xlx_apatb_param_scores);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_feature_vector_stream_buf_final_size = __xlx_apatb_param_feature_vector_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_feature_vector_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_feature_vector_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_feature_vector_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_feature_vector_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(167, 160);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(183, 176);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(191, 184);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector_stream_buf_final_size, &tcl_file.feature_vector_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_data_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_keep_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_strb_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_user_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_last_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_id_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector_stream_buf_final_size > 0) {
  long feature_vector_V_dest_V_stream_ingress_size = __xlx_apatb_param_feature_vector_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector_stream_buf_final_size; j != e; j++) {
    feature_vector_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector_V_dest_V, __xlx_sprintf_buffer.data());
}// print scores Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_scores = 0*16;
  if (__xlx_apatb_param_scores) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_scores)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_scores)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.scores_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
