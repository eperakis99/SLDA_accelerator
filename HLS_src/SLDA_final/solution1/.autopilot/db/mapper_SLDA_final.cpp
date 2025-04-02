#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_mu_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_mu_in_V_size_Reader("../tv/stream_size/stream_size_in_mu_in_V.dat");
unsigned int ap_apatb_feature_vector1_V_cap_bc;
static AESL_RUNTIME_BC __xlx_feature_vector1_V_size_Reader("../tv/stream_size/stream_size_in_feature_vector1_V.dat");
unsigned int ap_apatb_feature_vector2_V_cap_bc;
static AESL_RUNTIME_BC __xlx_feature_vector2_V_size_Reader("../tv/stream_size/stream_size_in_feature_vector2_V.dat");
unsigned int ap_apatb_Lambda_V_cap_bc;
static AESL_RUNTIME_BC __xlx_Lambda_V_size_Reader("../tv/stream_size/stream_size_in_Lambda_V.dat");
struct __cosim_s20__ { char data[32]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void SLDA_final(__cosim_s20__*, __cosim_s20__*, __cosim_s20__*, __cosim_s20__*, int*, int, int, volatile void *, volatile void *);
extern "C" void apatb_SLDA_final_hw(volatile void * __xlx_apatb_param_mu_in, volatile void * __xlx_apatb_param_feature_vector1, volatile void * __xlx_apatb_param_feature_vector2, volatile void * __xlx_apatb_param_Lambda, volatile void * __xlx_apatb_param_scores, int __xlx_apatb_param_reset, int __xlx_apatb_param_init, volatile void * __xlx_apatb_param_ready, volatile void * __xlx_apatb_param_complete) {
  // collect __xlx_mu_in_tmp_vec
  unsigned __xlx_mu_in_V_tmp_Count = 0;
  unsigned __xlx_mu_in_V_read_Size = __xlx_mu_in_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_mu_in_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->empty() && __xlx_mu_in_V_tmp_Count < __xlx_mu_in_V_read_Size) {
    __xlx_mu_in_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_mu_in)->read());
    __xlx_mu_in_V_tmp_Count++;
  }
  ap_apatb_mu_in_V_cap_bc = __xlx_mu_in_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_mu_in_input_buffer= new __cosim_s20__[__xlx_mu_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_mu_in_tmp_vec.size(); ++i) {
    __xlx_mu_in_input_buffer[i] = __xlx_mu_in_tmp_vec[i];
  }
  // collect __xlx_feature_vector1_tmp_vec
  unsigned __xlx_feature_vector1_V_tmp_Count = 0;
  unsigned __xlx_feature_vector1_V_read_Size = __xlx_feature_vector1_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_feature_vector1_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->empty() && __xlx_feature_vector1_V_tmp_Count < __xlx_feature_vector1_V_read_Size) {
    __xlx_feature_vector1_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector1)->read());
    __xlx_feature_vector1_V_tmp_Count++;
  }
  ap_apatb_feature_vector1_V_cap_bc = __xlx_feature_vector1_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_feature_vector1_input_buffer= new __cosim_s20__[__xlx_feature_vector1_tmp_vec.size()];
  for (int i = 0; i < __xlx_feature_vector1_tmp_vec.size(); ++i) {
    __xlx_feature_vector1_input_buffer[i] = __xlx_feature_vector1_tmp_vec[i];
  }
  // collect __xlx_feature_vector2_tmp_vec
  unsigned __xlx_feature_vector2_V_tmp_Count = 0;
  unsigned __xlx_feature_vector2_V_read_Size = __xlx_feature_vector2_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_feature_vector2_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->empty() && __xlx_feature_vector2_V_tmp_Count < __xlx_feature_vector2_V_read_Size) {
    __xlx_feature_vector2_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector2)->read());
    __xlx_feature_vector2_V_tmp_Count++;
  }
  ap_apatb_feature_vector2_V_cap_bc = __xlx_feature_vector2_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_feature_vector2_input_buffer= new __cosim_s20__[__xlx_feature_vector2_tmp_vec.size()];
  for (int i = 0; i < __xlx_feature_vector2_tmp_vec.size(); ++i) {
    __xlx_feature_vector2_input_buffer[i] = __xlx_feature_vector2_tmp_vec[i];
  }
  // collect __xlx_Lambda_tmp_vec
  unsigned __xlx_Lambda_V_tmp_Count = 0;
  unsigned __xlx_Lambda_V_read_Size = __xlx_Lambda_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_Lambda_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->empty() && __xlx_Lambda_V_tmp_Count < __xlx_Lambda_V_read_Size) {
    __xlx_Lambda_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_Lambda)->read());
    __xlx_Lambda_V_tmp_Count++;
  }
  ap_apatb_Lambda_V_cap_bc = __xlx_Lambda_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_Lambda_input_buffer= new __cosim_s20__[__xlx_Lambda_tmp_vec.size()];
  for (int i = 0; i < __xlx_Lambda_tmp_vec.size(); ++i) {
    __xlx_Lambda_input_buffer[i] = __xlx_Lambda_tmp_vec[i];
  }
  // Collect __xlx_scores__tmp_vec
  vector<sc_bv<32> >__xlx_scores__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    __xlx_scores__tmp_vec.push_back(((int*)__xlx_apatb_param_scores)[j]);
  }
  int __xlx_size_param_scores = 10;
  int __xlx_offset_param_scores = 0;
  int __xlx_offset_byte_param_scores = 0*4;
  int* __xlx_scores__input_buffer= new int[__xlx_scores__tmp_vec.size()];
  for (int i = 0; i < __xlx_scores__tmp_vec.size(); ++i) {
    __xlx_scores__input_buffer[i] = __xlx_scores__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  SLDA_final(__xlx_mu_in_input_buffer, __xlx_feature_vector1_input_buffer, __xlx_feature_vector2_input_buffer, __xlx_Lambda_input_buffer, __xlx_scores__input_buffer, __xlx_apatb_param_reset, __xlx_apatb_param_init, __xlx_apatb_param_ready, __xlx_apatb_param_complete);
// print __xlx_apatb_param_scores
  sc_bv<32>*__xlx_scores_output_buffer = new sc_bv<32>[__xlx_size_param_scores];
  for (int i = 0; i < __xlx_size_param_scores; ++i) {
    __xlx_scores_output_buffer[i] = __xlx_scores__input_buffer[i+__xlx_offset_param_scores];
  }
  for (int i = 0; i < __xlx_size_param_scores; ++i) {
    ((int*)__xlx_apatb_param_scores)[i] = __xlx_scores_output_buffer[i].to_uint64();
  }
}
