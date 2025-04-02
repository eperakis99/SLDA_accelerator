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
unsigned int ap_apatb_vec1_V_cap_bc;
static AESL_RUNTIME_BC __xlx_vec1_V_size_Reader("../tv/stream_size/stream_size_in_vec1_V.dat");
unsigned int ap_apatb_vec2_V_cap_bc;
static AESL_RUNTIME_BC __xlx_vec2_V_size_Reader("../tv/stream_size/stream_size_in_vec2_V.dat");
unsigned int ap_apatb_vec_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_vec_out_V_size_Reader("../tv/stream_size/stream_size_out_vec_out_V.dat");
struct __cosim_s18__ { char data[24]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void vec_vec_op_streaming(char, __cosim_s18__*, __cosim_s18__*, __cosim_s18__*);
extern "C" void apatb_vec_vec_op_streaming_hw(char __xlx_apatb_param_op, volatile void * __xlx_apatb_param_vec1, volatile void * __xlx_apatb_param_vec2, volatile void * __xlx_apatb_param_vec_out) {
  // collect __xlx_vec1_tmp_vec
  unsigned __xlx_vec1_V_tmp_Count = 0;
  unsigned __xlx_vec1_V_read_Size = __xlx_vec1_V_size_Reader.read_size();
  vector<__cosim_s18__> __xlx_vec1_tmp_vec;
  while (!((hls::stream<__cosim_s18__>*)__xlx_apatb_param_vec1)->empty() && __xlx_vec1_V_tmp_Count < __xlx_vec1_V_read_Size) {
    __xlx_vec1_tmp_vec.push_back(((hls::stream<__cosim_s18__>*)__xlx_apatb_param_vec1)->read());
    __xlx_vec1_V_tmp_Count++;
  }
  ap_apatb_vec1_V_cap_bc = __xlx_vec1_tmp_vec.size();
  // store input buffer
  __cosim_s18__* __xlx_vec1_input_buffer= new __cosim_s18__[__xlx_vec1_tmp_vec.size()];
  for (int i = 0; i < __xlx_vec1_tmp_vec.size(); ++i) {
    __xlx_vec1_input_buffer[i] = __xlx_vec1_tmp_vec[i];
  }
  // collect __xlx_vec2_tmp_vec
  unsigned __xlx_vec2_V_tmp_Count = 0;
  unsigned __xlx_vec2_V_read_Size = __xlx_vec2_V_size_Reader.read_size();
  vector<__cosim_s18__> __xlx_vec2_tmp_vec;
  while (!((hls::stream<__cosim_s18__>*)__xlx_apatb_param_vec2)->empty() && __xlx_vec2_V_tmp_Count < __xlx_vec2_V_read_Size) {
    __xlx_vec2_tmp_vec.push_back(((hls::stream<__cosim_s18__>*)__xlx_apatb_param_vec2)->read());
    __xlx_vec2_V_tmp_Count++;
  }
  ap_apatb_vec2_V_cap_bc = __xlx_vec2_tmp_vec.size();
  // store input buffer
  __cosim_s18__* __xlx_vec2_input_buffer= new __cosim_s18__[__xlx_vec2_tmp_vec.size()];
  for (int i = 0; i < __xlx_vec2_tmp_vec.size(); ++i) {
    __xlx_vec2_input_buffer[i] = __xlx_vec2_tmp_vec[i];
  }
  //Create input buffer for vec_out
  ap_apatb_vec_out_V_cap_bc = __xlx_vec_out_V_size_Reader.read_size();
  __cosim_s18__* __xlx_vec_out_input_buffer= new __cosim_s18__[ap_apatb_vec_out_V_cap_bc];
  // DUT call
  vec_vec_op_streaming(__xlx_apatb_param_op, __xlx_vec1_input_buffer, __xlx_vec2_input_buffer, __xlx_vec_out_input_buffer);
  for (unsigned i = 0; i <ap_apatb_vec_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_vec_out)->write(__xlx_vec_out_input_buffer[i]);
}
