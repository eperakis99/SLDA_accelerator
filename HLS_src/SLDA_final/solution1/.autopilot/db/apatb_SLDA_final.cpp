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
#define AUTOTB_TVIN_mu_in_V_data_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_data_V.dat"
#define AUTOTB_TVOUT_mu_in_V_data_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_data_V.dat"
#define AUTOTB_TVIN_mu_in_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_keep_V.dat"
#define AUTOTB_TVOUT_mu_in_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_keep_V.dat"
#define AUTOTB_TVIN_mu_in_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_strb_V.dat"
#define AUTOTB_TVOUT_mu_in_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_strb_V.dat"
#define AUTOTB_TVIN_mu_in_V_user_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_user_V.dat"
#define AUTOTB_TVOUT_mu_in_V_user_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_user_V.dat"
#define AUTOTB_TVIN_mu_in_V_last_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_last_V.dat"
#define AUTOTB_TVOUT_mu_in_V_last_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_last_V.dat"
#define AUTOTB_TVIN_mu_in_V_id_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_id_V.dat"
#define AUTOTB_TVOUT_mu_in_V_id_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_id_V.dat"
#define AUTOTB_TVIN_mu_in_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvin_mu_in_V_dest_V.dat"
#define AUTOTB_TVOUT_mu_in_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvout_mu_in_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_data_V "../tv/stream_size/stream_size_in_mu_in_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V "../tv/stream_size/stream_ingress_status_mu_in_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_keep_V "../tv/stream_size/stream_size_in_mu_in_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V "../tv/stream_size/stream_ingress_status_mu_in_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_strb_V "../tv/stream_size/stream_size_in_mu_in_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V "../tv/stream_size/stream_ingress_status_mu_in_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_user_V "../tv/stream_size/stream_size_in_mu_in_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V "../tv/stream_size/stream_ingress_status_mu_in_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_last_V "../tv/stream_size/stream_size_in_mu_in_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V "../tv/stream_size/stream_ingress_status_mu_in_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_id_V "../tv/stream_size/stream_size_in_mu_in_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V "../tv/stream_size/stream_ingress_status_mu_in_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_mu_in_V_dest_V "../tv/stream_size/stream_size_in_mu_in_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V "../tv/stream_size/stream_ingress_status_mu_in_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_vector1_V_data_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_data_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_data_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_data_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_keep_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_keep_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_strb_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_strb_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_user_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_user_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_user_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_user_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_last_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_last_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_last_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_last_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_id_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_id_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_id_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_id_V.dat"
#define AUTOTB_TVIN_feature_vector1_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector1_V_dest_V.dat"
#define AUTOTB_TVOUT_feature_vector1_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector1_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V "../tv/stream_size/stream_size_in_feature_vector1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_keep_V "../tv/stream_size/stream_size_in_feature_vector1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_strb_V "../tv/stream_size/stream_size_in_feature_vector1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_user_V "../tv/stream_size/stream_size_in_feature_vector1_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_last_V "../tv/stream_size/stream_size_in_feature_vector1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_id_V "../tv/stream_size/stream_size_in_feature_vector1_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector1_V_dest_V "../tv/stream_size/stream_size_in_feature_vector1_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V "../tv/stream_size/stream_ingress_status_feature_vector1_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_feature_vector2_V_data_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_data_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_data_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_data_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_keep_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_keep_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_strb_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_strb_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_user_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_user_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_user_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_user_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_last_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_last_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_last_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_last_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_id_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_id_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_id_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_id_V.dat"
#define AUTOTB_TVIN_feature_vector2_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvin_feature_vector2_V_dest_V.dat"
#define AUTOTB_TVOUT_feature_vector2_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvout_feature_vector2_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V "../tv/stream_size/stream_size_in_feature_vector2_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_keep_V "../tv/stream_size/stream_size_in_feature_vector2_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_strb_V "../tv/stream_size/stream_size_in_feature_vector2_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_user_V "../tv/stream_size/stream_size_in_feature_vector2_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_last_V "../tv/stream_size/stream_size_in_feature_vector2_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_id_V "../tv/stream_size/stream_size_in_feature_vector2_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_feature_vector2_V_dest_V "../tv/stream_size/stream_size_in_feature_vector2_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V "../tv/stream_size/stream_ingress_status_feature_vector2_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_Lambda_V_data_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_data_V.dat"
#define AUTOTB_TVOUT_Lambda_V_data_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_data_V.dat"
#define AUTOTB_TVIN_Lambda_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_keep_V.dat"
#define AUTOTB_TVOUT_Lambda_V_keep_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_keep_V.dat"
#define AUTOTB_TVIN_Lambda_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_strb_V.dat"
#define AUTOTB_TVOUT_Lambda_V_strb_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_strb_V.dat"
#define AUTOTB_TVIN_Lambda_V_user_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_user_V.dat"
#define AUTOTB_TVOUT_Lambda_V_user_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_user_V.dat"
#define AUTOTB_TVIN_Lambda_V_last_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_last_V.dat"
#define AUTOTB_TVOUT_Lambda_V_last_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_last_V.dat"
#define AUTOTB_TVIN_Lambda_V_id_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_id_V.dat"
#define AUTOTB_TVOUT_Lambda_V_id_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_id_V.dat"
#define AUTOTB_TVIN_Lambda_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvin_Lambda_V_dest_V.dat"
#define AUTOTB_TVOUT_Lambda_V_dest_V "../tv/cdatafile/c.SLDA_final.autotvout_Lambda_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_data_V "../tv/stream_size/stream_size_in_Lambda_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V "../tv/stream_size/stream_ingress_status_Lambda_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_keep_V "../tv/stream_size/stream_size_in_Lambda_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V "../tv/stream_size/stream_ingress_status_Lambda_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_strb_V "../tv/stream_size/stream_size_in_Lambda_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V "../tv/stream_size/stream_ingress_status_Lambda_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_user_V "../tv/stream_size/stream_size_in_Lambda_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V "../tv/stream_size/stream_ingress_status_Lambda_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_last_V "../tv/stream_size/stream_size_in_Lambda_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V "../tv/stream_size/stream_ingress_status_Lambda_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_id_V "../tv/stream_size/stream_size_in_Lambda_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V "../tv/stream_size/stream_ingress_status_Lambda_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_Lambda_V_dest_V "../tv/stream_size/stream_size_in_Lambda_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V "../tv/stream_size/stream_ingress_status_Lambda_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_scores "../tv/cdatafile/c.SLDA_final.autotvin_scores.dat"
#define AUTOTB_TVOUT_scores "../tv/cdatafile/c.SLDA_final.autotvout_scores.dat"
// wrapc file define:
#define AUTOTB_TVIN_reset "../tv/cdatafile/c.SLDA_final.autotvin_reset.dat"
#define AUTOTB_TVOUT_reset "../tv/cdatafile/c.SLDA_final.autotvout_reset.dat"
// wrapc file define:
#define AUTOTB_TVIN_init "../tv/cdatafile/c.SLDA_final.autotvin_init.dat"
#define AUTOTB_TVOUT_init "../tv/cdatafile/c.SLDA_final.autotvout_init.dat"
// wrapc file define:
#define AUTOTB_TVIN_ready "../tv/cdatafile/c.SLDA_final.autotvin_ready_r.dat"
#define AUTOTB_TVOUT_ready "../tv/cdatafile/c.SLDA_final.autotvout_ready_r.dat"
// wrapc file define:
#define AUTOTB_TVIN_complete "../tv/cdatafile/c.SLDA_final.autotvin_complete.dat"
#define AUTOTB_TVOUT_complete "../tv/cdatafile/c.SLDA_final.autotvout_complete.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_mu_in_V_data_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_data_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_keep_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_strb_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_user_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_user_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_last_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_last_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_id_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_id_V.dat"
#define AUTOTB_TVOUT_PC_mu_in_V_dest_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_mu_in_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_vector1_V_data_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_keep_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_strb_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_user_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_user_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_last_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_id_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_id_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector1_V_dest_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector1_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_feature_vector2_V_data_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_data_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_keep_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_strb_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_user_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_user_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_last_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_last_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_id_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_id_V.dat"
#define AUTOTB_TVOUT_PC_feature_vector2_V_dest_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_feature_vector2_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_Lambda_V_data_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_data_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_keep_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_strb_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_user_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_user_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_last_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_last_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_id_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_id_V.dat"
#define AUTOTB_TVOUT_PC_Lambda_V_dest_V "../tv/rtldatafile/rtl.SLDA_final.autotvout_Lambda_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_scores "../tv/rtldatafile/rtl.SLDA_final.autotvout_scores.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_reset "../tv/rtldatafile/rtl.SLDA_final.autotvout_reset.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_init "../tv/rtldatafile/rtl.SLDA_final.autotvout_init.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ready "../tv/rtldatafile/rtl.SLDA_final.autotvout_ready_r.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_complete "../tv/rtldatafile/rtl.SLDA_final.autotvout_complete.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  mu_in_V_data_V_depth = 0;
  mu_in_V_keep_V_depth = 0;
  mu_in_V_strb_V_depth = 0;
  mu_in_V_user_V_depth = 0;
  mu_in_V_last_V_depth = 0;
  mu_in_V_id_V_depth = 0;
  mu_in_V_dest_V_depth = 0;
  feature_vector1_V_data_V_depth = 0;
  feature_vector1_V_keep_V_depth = 0;
  feature_vector1_V_strb_V_depth = 0;
  feature_vector1_V_user_V_depth = 0;
  feature_vector1_V_last_V_depth = 0;
  feature_vector1_V_id_V_depth = 0;
  feature_vector1_V_dest_V_depth = 0;
  feature_vector2_V_data_V_depth = 0;
  feature_vector2_V_keep_V_depth = 0;
  feature_vector2_V_strb_V_depth = 0;
  feature_vector2_V_user_V_depth = 0;
  feature_vector2_V_last_V_depth = 0;
  feature_vector2_V_id_V_depth = 0;
  feature_vector2_V_dest_V_depth = 0;
  Lambda_V_data_V_depth = 0;
  Lambda_V_keep_V_depth = 0;
  Lambda_V_strb_V_depth = 0;
  Lambda_V_user_V_depth = 0;
  Lambda_V_last_V_depth = 0;
  Lambda_V_id_V_depth = 0;
  Lambda_V_dest_V_depth = 0;
  scores_depth = 0;
  reset_depth = 0;
  init_depth = 0;
  ready_depth = 0;
  complete_depth = 0;
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
  total_list << "{mu_in_V_data_V " << mu_in_V_data_V_depth << "}\n";
  total_list << "{mu_in_V_keep_V " << mu_in_V_keep_V_depth << "}\n";
  total_list << "{mu_in_V_strb_V " << mu_in_V_strb_V_depth << "}\n";
  total_list << "{mu_in_V_user_V " << mu_in_V_user_V_depth << "}\n";
  total_list << "{mu_in_V_last_V " << mu_in_V_last_V_depth << "}\n";
  total_list << "{mu_in_V_id_V " << mu_in_V_id_V_depth << "}\n";
  total_list << "{mu_in_V_dest_V " << mu_in_V_dest_V_depth << "}\n";
  total_list << "{feature_vector1_V_data_V " << feature_vector1_V_data_V_depth << "}\n";
  total_list << "{feature_vector1_V_keep_V " << feature_vector1_V_keep_V_depth << "}\n";
  total_list << "{feature_vector1_V_strb_V " << feature_vector1_V_strb_V_depth << "}\n";
  total_list << "{feature_vector1_V_user_V " << feature_vector1_V_user_V_depth << "}\n";
  total_list << "{feature_vector1_V_last_V " << feature_vector1_V_last_V_depth << "}\n";
  total_list << "{feature_vector1_V_id_V " << feature_vector1_V_id_V_depth << "}\n";
  total_list << "{feature_vector1_V_dest_V " << feature_vector1_V_dest_V_depth << "}\n";
  total_list << "{feature_vector2_V_data_V " << feature_vector2_V_data_V_depth << "}\n";
  total_list << "{feature_vector2_V_keep_V " << feature_vector2_V_keep_V_depth << "}\n";
  total_list << "{feature_vector2_V_strb_V " << feature_vector2_V_strb_V_depth << "}\n";
  total_list << "{feature_vector2_V_user_V " << feature_vector2_V_user_V_depth << "}\n";
  total_list << "{feature_vector2_V_last_V " << feature_vector2_V_last_V_depth << "}\n";
  total_list << "{feature_vector2_V_id_V " << feature_vector2_V_id_V_depth << "}\n";
  total_list << "{feature_vector2_V_dest_V " << feature_vector2_V_dest_V_depth << "}\n";
  total_list << "{Lambda_V_data_V " << Lambda_V_data_V_depth << "}\n";
  total_list << "{Lambda_V_keep_V " << Lambda_V_keep_V_depth << "}\n";
  total_list << "{Lambda_V_strb_V " << Lambda_V_strb_V_depth << "}\n";
  total_list << "{Lambda_V_user_V " << Lambda_V_user_V_depth << "}\n";
  total_list << "{Lambda_V_last_V " << Lambda_V_last_V_depth << "}\n";
  total_list << "{Lambda_V_id_V " << Lambda_V_id_V_depth << "}\n";
  total_list << "{Lambda_V_dest_V " << Lambda_V_dest_V_depth << "}\n";
  total_list << "{scores " << scores_depth << "}\n";
  total_list << "{reset " << reset_depth << "}\n";
  total_list << "{init " << init_depth << "}\n";
  total_list << "{ready_r " << ready_depth << "}\n";
  total_list << "{complete " << complete_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int mu_in_V_data_V_depth;
    int mu_in_V_keep_V_depth;
    int mu_in_V_strb_V_depth;
    int mu_in_V_user_V_depth;
    int mu_in_V_last_V_depth;
    int mu_in_V_id_V_depth;
    int mu_in_V_dest_V_depth;
    int feature_vector1_V_data_V_depth;
    int feature_vector1_V_keep_V_depth;
    int feature_vector1_V_strb_V_depth;
    int feature_vector1_V_user_V_depth;
    int feature_vector1_V_last_V_depth;
    int feature_vector1_V_id_V_depth;
    int feature_vector1_V_dest_V_depth;
    int feature_vector2_V_data_V_depth;
    int feature_vector2_V_keep_V_depth;
    int feature_vector2_V_strb_V_depth;
    int feature_vector2_V_user_V_depth;
    int feature_vector2_V_last_V_depth;
    int feature_vector2_V_id_V_depth;
    int feature_vector2_V_dest_V_depth;
    int Lambda_V_data_V_depth;
    int Lambda_V_keep_V_depth;
    int Lambda_V_strb_V_depth;
    int Lambda_V_user_V_depth;
    int Lambda_V_last_V_depth;
    int Lambda_V_id_V_depth;
    int Lambda_V_dest_V_depth;
    int scores_depth;
    int reset_depth;
    int init_depth;
    int ready_depth;
    int complete_depth;
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
struct __cosim_s10__ { char data[32]; };
extern "C" void SLDA_final_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, int, int, volatile void *, volatile void *);

extern "C" void apatb_SLDA_final_hw(volatile void * __xlx_apatb_param_mu_in, volatile void * __xlx_apatb_param_feature_vector1, volatile void * __xlx_apatb_param_feature_vector2, volatile void * __xlx_apatb_param_Lambda, volatile void * __xlx_apatb_param_scores, int __xlx_apatb_param_reset, int __xlx_apatb_param_init, volatile void * __xlx_apatb_param_ready, volatile void * __xlx_apatb_param_complete) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_mu_in_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_mu_in_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_mu_in_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_mu_in_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->read();
long __xlx_apatb_param_feature_vector1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_feature_vector1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_feature_vector1_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->read();
long __xlx_apatb_param_feature_vector2_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_feature_vector2_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_feature_vector2_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->read();
long __xlx_apatb_param_Lambda_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_Lambda_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_Lambda_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_Lambda_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->read();
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
          std::vector<sc_bv<32> > scores_pc_buffer(10);
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
            for (int j = 0, e = 10; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_scores)[j] = scores_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_ready);
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
          std::vector<sc_bv<32> > ready_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "ready");
  
            // push token into output port buffer
            if (AESL_token != "") {
              ready_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_ready)[0] = ready_pc_buffer[0].to_int64();
          }
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
//mu_in
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_mu_in_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_mu_in_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_mu_in_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V);
//feature_vector1
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector1_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector1_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V);
//feature_vector2
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_feature_vector2_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_feature_vector2_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_feature_vector2_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V);
//Lambda
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_Lambda_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_Lambda_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_Lambda_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V);
//scores
aesl_fh.touch(AUTOTB_TVIN_scores);
aesl_fh.touch(AUTOTB_TVOUT_scores);
//reset
aesl_fh.touch(AUTOTB_TVIN_reset);
aesl_fh.touch(AUTOTB_TVOUT_reset);
//init
aesl_fh.touch(AUTOTB_TVIN_init);
aesl_fh.touch(AUTOTB_TVOUT_init);
//ready
aesl_fh.touch(AUTOTB_TVIN_ready);
aesl_fh.touch(AUTOTB_TVOUT_ready);
//complete
aesl_fh.touch(AUTOTB_TVIN_complete);
aesl_fh.touch(AUTOTB_TVOUT_complete);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s20__> __xlx_apatb_param_mu_in_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->empty())
    __xlx_apatb_param_mu_in_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->read());
  for (int i = 0; i < __xlx_apatb_param_mu_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->write(__xlx_apatb_param_mu_in_stream_buf[i]);
  }
long __xlx_apatb_param_mu_in_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_feature_vector1_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->empty())
    __xlx_apatb_param_feature_vector1_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->read());
  for (int i = 0; i < __xlx_apatb_param_feature_vector1_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->write(__xlx_apatb_param_feature_vector1_stream_buf[i]);
  }
long __xlx_apatb_param_feature_vector1_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_feature_vector2_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->empty())
    __xlx_apatb_param_feature_vector2_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->read());
  for (int i = 0; i < __xlx_apatb_param_feature_vector2_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->write(__xlx_apatb_param_feature_vector2_stream_buf[i]);
  }
long __xlx_apatb_param_feature_vector2_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_Lambda_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->empty())
    __xlx_apatb_param_Lambda_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->read());
  for (int i = 0; i < __xlx_apatb_param_Lambda_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->write(__xlx_apatb_param_Lambda_stream_buf[i]);
  }
long __xlx_apatb_param_Lambda_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->size();
unsigned __xlx_offset_byte_param_scores = 0;
// print scores Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_scores = 0*4;
  if (__xlx_apatb_param_scores) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_scores)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.scores_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_scores, __xlx_sprintf_buffer.data());
}
// print reset Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_reset, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_reset);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_reset, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.reset_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_reset, __xlx_sprintf_buffer.data());
}
// print init Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_init, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_init);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_init, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.init_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_init, __xlx_sprintf_buffer.data());
}
// print ready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ready, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_ready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_ready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.ready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ready, __xlx_sprintf_buffer.data());
}
// print complete Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_complete, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_complete);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_complete, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.complete_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_complete, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
SLDA_final_hw_stub_wrapper(__xlx_apatb_param_mu_in, __xlx_apatb_param_feature_vector1, __xlx_apatb_param_feature_vector2, __xlx_apatb_param_Lambda, __xlx_apatb_param_scores, __xlx_apatb_param_reset, __xlx_apatb_param_init, __xlx_apatb_param_ready, __xlx_apatb_param_complete);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_mu_in_stream_buf_final_size = __xlx_apatb_param_mu_in_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_mu_in_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_mu_in_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_mu_in_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_mu_in_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(167, 160);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(183, 176);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(191, 184);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_mu_in_stream_buf_final_size, &tcl_file.mu_in_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_data_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_keep_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_strb_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_user_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_last_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_id_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_mu_in_stream_buf_final_size > 0) {
  long mu_in_V_dest_V_stream_ingress_size = __xlx_apatb_param_mu_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_mu_in_stream_buf_final_size; j != e; j++) {
    mu_in_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long mu_in_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", mu_in_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_mu_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_mu_in_V_dest_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_feature_vector1_stream_buf_final_size = __xlx_apatb_param_feature_vector1_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_feature_vector1_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_feature_vector1_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_feature_vector1_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_feature_vector1_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(167, 160);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(183, 176);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(191, 184);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector1_stream_buf_final_size, &tcl_file.feature_vector1_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_data_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_keep_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_strb_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_user_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_last_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_id_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector1_stream_buf_final_size > 0) {
  long feature_vector1_V_dest_V_stream_ingress_size = __xlx_apatb_param_feature_vector1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector1_stream_buf_final_size; j != e; j++) {
    feature_vector1_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector1_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector1_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector1_V_dest_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_feature_vector2_stream_buf_final_size = __xlx_apatb_param_feature_vector2_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_feature_vector2_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_feature_vector2_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_feature_vector2_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_feature_vector2_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(167, 160);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(183, 176);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(191, 184);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_feature_vector2_stream_buf_final_size, &tcl_file.feature_vector2_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_data_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_keep_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_strb_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_user_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_last_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_id_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_feature_vector2_stream_buf_final_size > 0) {
  long feature_vector2_V_dest_V_stream_ingress_size = __xlx_apatb_param_feature_vector2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_feature_vector2_stream_buf_final_size; j != e; j++) {
    feature_vector2_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long feature_vector2_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", feature_vector2_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_feature_vector2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_feature_vector2_V_dest_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_Lambda_stream_buf_final_size = __xlx_apatb_param_Lambda_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_Lambda_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_Lambda_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_Lambda_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_Lambda_stream_buf[j])[0*4+3];
sc_bv<128> __xlx_tmp_0_lv = __xlx_tmp_lv.range(127, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_1_lv = __xlx_tmp_lv.range(143, 128);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<16> __xlx_tmp_2_lv = __xlx_tmp_lv.range(159, 144);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(167, 160);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(175, 168);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(183, 176);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(191, 184);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_Lambda_stream_buf_final_size, &tcl_file.Lambda_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_data_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_keep_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_strb_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_user_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_last_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_id_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_Lambda_stream_buf_final_size > 0) {
  long Lambda_V_dest_V_stream_ingress_size = __xlx_apatb_param_Lambda_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_Lambda_stream_buf_final_size; j != e; j++) {
    Lambda_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long Lambda_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", Lambda_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_Lambda_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_Lambda_V_dest_V, __xlx_sprintf_buffer.data());
}// print scores Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_scores = 0*4;
  if (__xlx_apatb_param_scores) {
    for (int j = 0  - 0, e = 10 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_scores)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(10, &tcl_file.scores_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_scores, __xlx_sprintf_buffer.data());
}
// print ready Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_ready, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_ready);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_ready, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.ready_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_ready, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
