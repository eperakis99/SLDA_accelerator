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
unsigned int ap_apatb_feature_vector_V_cap_bc;
static AESL_RUNTIME_BC __xlx_feature_vector_V_size_Reader("../tv/stream_size/stream_size_in_feature_vector_V.dat");
struct __cosim_s20__ { char data[32]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void matrix_matrix_mult_streaming(__cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s20__*, __cosim_s10__*);
extern "C" void apatb_matrix_matrix_mult_streaming_hw(volatile void * __xlx_apatb_param_A_0, volatile void * __xlx_apatb_param_A_1, volatile void * __xlx_apatb_param_A_2, volatile void * __xlx_apatb_param_A_3, volatile void * __xlx_apatb_param_A_4, volatile void * __xlx_apatb_param_A_5, volatile void * __xlx_apatb_param_A_6, volatile void * __xlx_apatb_param_A_7, volatile void * __xlx_apatb_param_A_8, volatile void * __xlx_apatb_param_A_9, volatile void * __xlx_apatb_param_A_10, volatile void * __xlx_apatb_param_A_11, volatile void * __xlx_apatb_param_A_12, volatile void * __xlx_apatb_param_A_13, volatile void * __xlx_apatb_param_A_14, volatile void * __xlx_apatb_param_A_15, volatile void * __xlx_apatb_param_A_16, volatile void * __xlx_apatb_param_A_17, volatile void * __xlx_apatb_param_A_18, volatile void * __xlx_apatb_param_A_19, volatile void * __xlx_apatb_param_A_20, volatile void * __xlx_apatb_param_A_21, volatile void * __xlx_apatb_param_A_22, volatile void * __xlx_apatb_param_A_23, volatile void * __xlx_apatb_param_A_24, volatile void * __xlx_apatb_param_A_25, volatile void * __xlx_apatb_param_A_26, volatile void * __xlx_apatb_param_A_27, volatile void * __xlx_apatb_param_A_28, volatile void * __xlx_apatb_param_A_29, volatile void * __xlx_apatb_param_A_30, volatile void * __xlx_apatb_param_A_31, volatile void * __xlx_apatb_param_B_0, volatile void * __xlx_apatb_param_B_1, volatile void * __xlx_apatb_param_B_2, volatile void * __xlx_apatb_param_B_3, volatile void * __xlx_apatb_param_B_4, volatile void * __xlx_apatb_param_B_5, volatile void * __xlx_apatb_param_B_6, volatile void * __xlx_apatb_param_B_7, volatile void * __xlx_apatb_param_B_8, volatile void * __xlx_apatb_param_B_9, volatile void * __xlx_apatb_param_B_10, volatile void * __xlx_apatb_param_B_11, volatile void * __xlx_apatb_param_B_12, volatile void * __xlx_apatb_param_B_13, volatile void * __xlx_apatb_param_B_14, volatile void * __xlx_apatb_param_B_15, volatile void * __xlx_apatb_param_B_16, volatile void * __xlx_apatb_param_B_17, volatile void * __xlx_apatb_param_B_18, volatile void * __xlx_apatb_param_B_19, volatile void * __xlx_apatb_param_B_20, volatile void * __xlx_apatb_param_B_21, volatile void * __xlx_apatb_param_B_22, volatile void * __xlx_apatb_param_B_23, volatile void * __xlx_apatb_param_B_24, volatile void * __xlx_apatb_param_B_25, volatile void * __xlx_apatb_param_B_26, volatile void * __xlx_apatb_param_B_27, volatile void * __xlx_apatb_param_B_28, volatile void * __xlx_apatb_param_B_29, volatile void * __xlx_apatb_param_B_30, volatile void * __xlx_apatb_param_B_31, volatile void * __xlx_apatb_param_feature_vector, volatile void * __xlx_apatb_param_scores) {
  // Collect __xlx_A_0__tmp_vec
  vector<sc_bv<128> >__xlx_A_0__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_0)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_0)[j*2+1];
    __xlx_A_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_0 = 32;
  int __xlx_offset_param_A_0 = 0;
  int __xlx_offset_byte_param_A_0 = 0*16;
  __cosim_s10__* __xlx_A_0__input_buffer= new __cosim_s10__[__xlx_A_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_0__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_0__input_buffer)[i*2+0] = __xlx_A_0__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_0__input_buffer)[i*2+1] = __xlx_A_0__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_1__tmp_vec
  vector<sc_bv<128> >__xlx_A_1__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_1)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_1)[j*2+1];
    __xlx_A_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_1 = 32;
  int __xlx_offset_param_A_1 = 0;
  int __xlx_offset_byte_param_A_1 = 0*16;
  __cosim_s10__* __xlx_A_1__input_buffer= new __cosim_s10__[__xlx_A_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_1__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_1__input_buffer)[i*2+0] = __xlx_A_1__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_1__input_buffer)[i*2+1] = __xlx_A_1__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_2__tmp_vec
  vector<sc_bv<128> >__xlx_A_2__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_2)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_2)[j*2+1];
    __xlx_A_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_2 = 32;
  int __xlx_offset_param_A_2 = 0;
  int __xlx_offset_byte_param_A_2 = 0*16;
  __cosim_s10__* __xlx_A_2__input_buffer= new __cosim_s10__[__xlx_A_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_2__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_2__input_buffer)[i*2+0] = __xlx_A_2__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_2__input_buffer)[i*2+1] = __xlx_A_2__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_3__tmp_vec
  vector<sc_bv<128> >__xlx_A_3__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_3)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_3)[j*2+1];
    __xlx_A_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_3 = 32;
  int __xlx_offset_param_A_3 = 0;
  int __xlx_offset_byte_param_A_3 = 0*16;
  __cosim_s10__* __xlx_A_3__input_buffer= new __cosim_s10__[__xlx_A_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_3__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_3__input_buffer)[i*2+0] = __xlx_A_3__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_3__input_buffer)[i*2+1] = __xlx_A_3__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_4__tmp_vec
  vector<sc_bv<128> >__xlx_A_4__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_4)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_4)[j*2+1];
    __xlx_A_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_4 = 32;
  int __xlx_offset_param_A_4 = 0;
  int __xlx_offset_byte_param_A_4 = 0*16;
  __cosim_s10__* __xlx_A_4__input_buffer= new __cosim_s10__[__xlx_A_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_4__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_4__input_buffer)[i*2+0] = __xlx_A_4__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_4__input_buffer)[i*2+1] = __xlx_A_4__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_5__tmp_vec
  vector<sc_bv<128> >__xlx_A_5__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_5)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_5)[j*2+1];
    __xlx_A_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_5 = 32;
  int __xlx_offset_param_A_5 = 0;
  int __xlx_offset_byte_param_A_5 = 0*16;
  __cosim_s10__* __xlx_A_5__input_buffer= new __cosim_s10__[__xlx_A_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_5__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_5__input_buffer)[i*2+0] = __xlx_A_5__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_5__input_buffer)[i*2+1] = __xlx_A_5__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_6__tmp_vec
  vector<sc_bv<128> >__xlx_A_6__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_6)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_6)[j*2+1];
    __xlx_A_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_6 = 32;
  int __xlx_offset_param_A_6 = 0;
  int __xlx_offset_byte_param_A_6 = 0*16;
  __cosim_s10__* __xlx_A_6__input_buffer= new __cosim_s10__[__xlx_A_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_6__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_6__input_buffer)[i*2+0] = __xlx_A_6__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_6__input_buffer)[i*2+1] = __xlx_A_6__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_7__tmp_vec
  vector<sc_bv<128> >__xlx_A_7__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_7)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_7)[j*2+1];
    __xlx_A_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_7 = 32;
  int __xlx_offset_param_A_7 = 0;
  int __xlx_offset_byte_param_A_7 = 0*16;
  __cosim_s10__* __xlx_A_7__input_buffer= new __cosim_s10__[__xlx_A_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_7__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_7__input_buffer)[i*2+0] = __xlx_A_7__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_7__input_buffer)[i*2+1] = __xlx_A_7__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_8__tmp_vec
  vector<sc_bv<128> >__xlx_A_8__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_8)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_8)[j*2+1];
    __xlx_A_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_8 = 32;
  int __xlx_offset_param_A_8 = 0;
  int __xlx_offset_byte_param_A_8 = 0*16;
  __cosim_s10__* __xlx_A_8__input_buffer= new __cosim_s10__[__xlx_A_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_8__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_8__input_buffer)[i*2+0] = __xlx_A_8__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_8__input_buffer)[i*2+1] = __xlx_A_8__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_9__tmp_vec
  vector<sc_bv<128> >__xlx_A_9__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_9)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_9)[j*2+1];
    __xlx_A_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_9 = 32;
  int __xlx_offset_param_A_9 = 0;
  int __xlx_offset_byte_param_A_9 = 0*16;
  __cosim_s10__* __xlx_A_9__input_buffer= new __cosim_s10__[__xlx_A_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_9__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_9__input_buffer)[i*2+0] = __xlx_A_9__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_9__input_buffer)[i*2+1] = __xlx_A_9__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_10__tmp_vec
  vector<sc_bv<128> >__xlx_A_10__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_10)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_10)[j*2+1];
    __xlx_A_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_10 = 32;
  int __xlx_offset_param_A_10 = 0;
  int __xlx_offset_byte_param_A_10 = 0*16;
  __cosim_s10__* __xlx_A_10__input_buffer= new __cosim_s10__[__xlx_A_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_10__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_10__input_buffer)[i*2+0] = __xlx_A_10__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_10__input_buffer)[i*2+1] = __xlx_A_10__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_11__tmp_vec
  vector<sc_bv<128> >__xlx_A_11__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_11)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_11)[j*2+1];
    __xlx_A_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_11 = 32;
  int __xlx_offset_param_A_11 = 0;
  int __xlx_offset_byte_param_A_11 = 0*16;
  __cosim_s10__* __xlx_A_11__input_buffer= new __cosim_s10__[__xlx_A_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_11__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_11__input_buffer)[i*2+0] = __xlx_A_11__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_11__input_buffer)[i*2+1] = __xlx_A_11__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_12__tmp_vec
  vector<sc_bv<128> >__xlx_A_12__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_12)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_12)[j*2+1];
    __xlx_A_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_12 = 32;
  int __xlx_offset_param_A_12 = 0;
  int __xlx_offset_byte_param_A_12 = 0*16;
  __cosim_s10__* __xlx_A_12__input_buffer= new __cosim_s10__[__xlx_A_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_12__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_12__input_buffer)[i*2+0] = __xlx_A_12__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_12__input_buffer)[i*2+1] = __xlx_A_12__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_13__tmp_vec
  vector<sc_bv<128> >__xlx_A_13__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_13)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_13)[j*2+1];
    __xlx_A_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_13 = 32;
  int __xlx_offset_param_A_13 = 0;
  int __xlx_offset_byte_param_A_13 = 0*16;
  __cosim_s10__* __xlx_A_13__input_buffer= new __cosim_s10__[__xlx_A_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_13__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_13__input_buffer)[i*2+0] = __xlx_A_13__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_13__input_buffer)[i*2+1] = __xlx_A_13__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_14__tmp_vec
  vector<sc_bv<128> >__xlx_A_14__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_14)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_14)[j*2+1];
    __xlx_A_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_14 = 32;
  int __xlx_offset_param_A_14 = 0;
  int __xlx_offset_byte_param_A_14 = 0*16;
  __cosim_s10__* __xlx_A_14__input_buffer= new __cosim_s10__[__xlx_A_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_14__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_14__input_buffer)[i*2+0] = __xlx_A_14__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_14__input_buffer)[i*2+1] = __xlx_A_14__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_15__tmp_vec
  vector<sc_bv<128> >__xlx_A_15__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_15)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_15)[j*2+1];
    __xlx_A_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_15 = 32;
  int __xlx_offset_param_A_15 = 0;
  int __xlx_offset_byte_param_A_15 = 0*16;
  __cosim_s10__* __xlx_A_15__input_buffer= new __cosim_s10__[__xlx_A_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_15__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_15__input_buffer)[i*2+0] = __xlx_A_15__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_15__input_buffer)[i*2+1] = __xlx_A_15__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_16__tmp_vec
  vector<sc_bv<128> >__xlx_A_16__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_16)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_16)[j*2+1];
    __xlx_A_16__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_16 = 32;
  int __xlx_offset_param_A_16 = 0;
  int __xlx_offset_byte_param_A_16 = 0*16;
  __cosim_s10__* __xlx_A_16__input_buffer= new __cosim_s10__[__xlx_A_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_16__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_16__input_buffer)[i*2+0] = __xlx_A_16__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_16__input_buffer)[i*2+1] = __xlx_A_16__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_17__tmp_vec
  vector<sc_bv<128> >__xlx_A_17__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_17)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_17)[j*2+1];
    __xlx_A_17__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_17 = 32;
  int __xlx_offset_param_A_17 = 0;
  int __xlx_offset_byte_param_A_17 = 0*16;
  __cosim_s10__* __xlx_A_17__input_buffer= new __cosim_s10__[__xlx_A_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_17__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_17__input_buffer)[i*2+0] = __xlx_A_17__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_17__input_buffer)[i*2+1] = __xlx_A_17__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_18__tmp_vec
  vector<sc_bv<128> >__xlx_A_18__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_18)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_18)[j*2+1];
    __xlx_A_18__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_18 = 32;
  int __xlx_offset_param_A_18 = 0;
  int __xlx_offset_byte_param_A_18 = 0*16;
  __cosim_s10__* __xlx_A_18__input_buffer= new __cosim_s10__[__xlx_A_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_18__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_18__input_buffer)[i*2+0] = __xlx_A_18__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_18__input_buffer)[i*2+1] = __xlx_A_18__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_19__tmp_vec
  vector<sc_bv<128> >__xlx_A_19__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_19)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_19)[j*2+1];
    __xlx_A_19__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_19 = 32;
  int __xlx_offset_param_A_19 = 0;
  int __xlx_offset_byte_param_A_19 = 0*16;
  __cosim_s10__* __xlx_A_19__input_buffer= new __cosim_s10__[__xlx_A_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_19__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_19__input_buffer)[i*2+0] = __xlx_A_19__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_19__input_buffer)[i*2+1] = __xlx_A_19__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_20__tmp_vec
  vector<sc_bv<128> >__xlx_A_20__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_20)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_20)[j*2+1];
    __xlx_A_20__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_20 = 32;
  int __xlx_offset_param_A_20 = 0;
  int __xlx_offset_byte_param_A_20 = 0*16;
  __cosim_s10__* __xlx_A_20__input_buffer= new __cosim_s10__[__xlx_A_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_20__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_20__input_buffer)[i*2+0] = __xlx_A_20__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_20__input_buffer)[i*2+1] = __xlx_A_20__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_21__tmp_vec
  vector<sc_bv<128> >__xlx_A_21__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_21)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_21)[j*2+1];
    __xlx_A_21__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_21 = 32;
  int __xlx_offset_param_A_21 = 0;
  int __xlx_offset_byte_param_A_21 = 0*16;
  __cosim_s10__* __xlx_A_21__input_buffer= new __cosim_s10__[__xlx_A_21__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_21__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_21__input_buffer)[i*2+0] = __xlx_A_21__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_21__input_buffer)[i*2+1] = __xlx_A_21__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_22__tmp_vec
  vector<sc_bv<128> >__xlx_A_22__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_22)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_22)[j*2+1];
    __xlx_A_22__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_22 = 32;
  int __xlx_offset_param_A_22 = 0;
  int __xlx_offset_byte_param_A_22 = 0*16;
  __cosim_s10__* __xlx_A_22__input_buffer= new __cosim_s10__[__xlx_A_22__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_22__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_22__input_buffer)[i*2+0] = __xlx_A_22__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_22__input_buffer)[i*2+1] = __xlx_A_22__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_23__tmp_vec
  vector<sc_bv<128> >__xlx_A_23__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_23)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_23)[j*2+1];
    __xlx_A_23__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_23 = 32;
  int __xlx_offset_param_A_23 = 0;
  int __xlx_offset_byte_param_A_23 = 0*16;
  __cosim_s10__* __xlx_A_23__input_buffer= new __cosim_s10__[__xlx_A_23__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_23__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_23__input_buffer)[i*2+0] = __xlx_A_23__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_23__input_buffer)[i*2+1] = __xlx_A_23__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_24__tmp_vec
  vector<sc_bv<128> >__xlx_A_24__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_24)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_24)[j*2+1];
    __xlx_A_24__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_24 = 32;
  int __xlx_offset_param_A_24 = 0;
  int __xlx_offset_byte_param_A_24 = 0*16;
  __cosim_s10__* __xlx_A_24__input_buffer= new __cosim_s10__[__xlx_A_24__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_24__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_24__input_buffer)[i*2+0] = __xlx_A_24__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_24__input_buffer)[i*2+1] = __xlx_A_24__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_25__tmp_vec
  vector<sc_bv<128> >__xlx_A_25__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_25)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_25)[j*2+1];
    __xlx_A_25__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_25 = 32;
  int __xlx_offset_param_A_25 = 0;
  int __xlx_offset_byte_param_A_25 = 0*16;
  __cosim_s10__* __xlx_A_25__input_buffer= new __cosim_s10__[__xlx_A_25__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_25__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_25__input_buffer)[i*2+0] = __xlx_A_25__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_25__input_buffer)[i*2+1] = __xlx_A_25__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_26__tmp_vec
  vector<sc_bv<128> >__xlx_A_26__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_26)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_26)[j*2+1];
    __xlx_A_26__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_26 = 32;
  int __xlx_offset_param_A_26 = 0;
  int __xlx_offset_byte_param_A_26 = 0*16;
  __cosim_s10__* __xlx_A_26__input_buffer= new __cosim_s10__[__xlx_A_26__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_26__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_26__input_buffer)[i*2+0] = __xlx_A_26__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_26__input_buffer)[i*2+1] = __xlx_A_26__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_27__tmp_vec
  vector<sc_bv<128> >__xlx_A_27__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_27)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_27)[j*2+1];
    __xlx_A_27__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_27 = 32;
  int __xlx_offset_param_A_27 = 0;
  int __xlx_offset_byte_param_A_27 = 0*16;
  __cosim_s10__* __xlx_A_27__input_buffer= new __cosim_s10__[__xlx_A_27__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_27__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_27__input_buffer)[i*2+0] = __xlx_A_27__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_27__input_buffer)[i*2+1] = __xlx_A_27__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_28__tmp_vec
  vector<sc_bv<128> >__xlx_A_28__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_28)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_28)[j*2+1];
    __xlx_A_28__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_28 = 32;
  int __xlx_offset_param_A_28 = 0;
  int __xlx_offset_byte_param_A_28 = 0*16;
  __cosim_s10__* __xlx_A_28__input_buffer= new __cosim_s10__[__xlx_A_28__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_28__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_28__input_buffer)[i*2+0] = __xlx_A_28__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_28__input_buffer)[i*2+1] = __xlx_A_28__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_29__tmp_vec
  vector<sc_bv<128> >__xlx_A_29__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_29)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_29)[j*2+1];
    __xlx_A_29__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_29 = 32;
  int __xlx_offset_param_A_29 = 0;
  int __xlx_offset_byte_param_A_29 = 0*16;
  __cosim_s10__* __xlx_A_29__input_buffer= new __cosim_s10__[__xlx_A_29__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_29__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_29__input_buffer)[i*2+0] = __xlx_A_29__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_29__input_buffer)[i*2+1] = __xlx_A_29__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_30__tmp_vec
  vector<sc_bv<128> >__xlx_A_30__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_30)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_30)[j*2+1];
    __xlx_A_30__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_30 = 32;
  int __xlx_offset_param_A_30 = 0;
  int __xlx_offset_byte_param_A_30 = 0*16;
  __cosim_s10__* __xlx_A_30__input_buffer= new __cosim_s10__[__xlx_A_30__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_30__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_30__input_buffer)[i*2+0] = __xlx_A_30__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_30__input_buffer)[i*2+1] = __xlx_A_30__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_A_31__tmp_vec
  vector<sc_bv<128> >__xlx_A_31__tmp_vec;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_A_31)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_A_31)[j*2+1];
    __xlx_A_31__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_A_31 = 32;
  int __xlx_offset_param_A_31 = 0;
  int __xlx_offset_byte_param_A_31 = 0*16;
  __cosim_s10__* __xlx_A_31__input_buffer= new __cosim_s10__[__xlx_A_31__tmp_vec.size()];
  for (int i = 0; i < __xlx_A_31__tmp_vec.size(); ++i) {
    ((long long*)__xlx_A_31__input_buffer)[i*2+0] = __xlx_A_31__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_A_31__input_buffer)[i*2+1] = __xlx_A_31__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_0__tmp_vec
  vector<sc_bv<128> >__xlx_B_0__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_0)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_0)[j*2+1];
    __xlx_B_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_0 = 10;
  int __xlx_offset_param_B_0 = 0;
  int __xlx_offset_byte_param_B_0 = 0*16;
  __cosim_s10__* __xlx_B_0__input_buffer= new __cosim_s10__[__xlx_B_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_0__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_0__input_buffer)[i*2+0] = __xlx_B_0__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_0__input_buffer)[i*2+1] = __xlx_B_0__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_1__tmp_vec
  vector<sc_bv<128> >__xlx_B_1__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_1)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_1)[j*2+1];
    __xlx_B_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_1 = 10;
  int __xlx_offset_param_B_1 = 0;
  int __xlx_offset_byte_param_B_1 = 0*16;
  __cosim_s10__* __xlx_B_1__input_buffer= new __cosim_s10__[__xlx_B_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_1__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_1__input_buffer)[i*2+0] = __xlx_B_1__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_1__input_buffer)[i*2+1] = __xlx_B_1__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_2__tmp_vec
  vector<sc_bv<128> >__xlx_B_2__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_2)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_2)[j*2+1];
    __xlx_B_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_2 = 10;
  int __xlx_offset_param_B_2 = 0;
  int __xlx_offset_byte_param_B_2 = 0*16;
  __cosim_s10__* __xlx_B_2__input_buffer= new __cosim_s10__[__xlx_B_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_2__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_2__input_buffer)[i*2+0] = __xlx_B_2__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_2__input_buffer)[i*2+1] = __xlx_B_2__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_3__tmp_vec
  vector<sc_bv<128> >__xlx_B_3__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_3)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_3)[j*2+1];
    __xlx_B_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_3 = 10;
  int __xlx_offset_param_B_3 = 0;
  int __xlx_offset_byte_param_B_3 = 0*16;
  __cosim_s10__* __xlx_B_3__input_buffer= new __cosim_s10__[__xlx_B_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_3__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_3__input_buffer)[i*2+0] = __xlx_B_3__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_3__input_buffer)[i*2+1] = __xlx_B_3__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_4__tmp_vec
  vector<sc_bv<128> >__xlx_B_4__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_4)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_4)[j*2+1];
    __xlx_B_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_4 = 10;
  int __xlx_offset_param_B_4 = 0;
  int __xlx_offset_byte_param_B_4 = 0*16;
  __cosim_s10__* __xlx_B_4__input_buffer= new __cosim_s10__[__xlx_B_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_4__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_4__input_buffer)[i*2+0] = __xlx_B_4__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_4__input_buffer)[i*2+1] = __xlx_B_4__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_5__tmp_vec
  vector<sc_bv<128> >__xlx_B_5__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_5)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_5)[j*2+1];
    __xlx_B_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_5 = 10;
  int __xlx_offset_param_B_5 = 0;
  int __xlx_offset_byte_param_B_5 = 0*16;
  __cosim_s10__* __xlx_B_5__input_buffer= new __cosim_s10__[__xlx_B_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_5__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_5__input_buffer)[i*2+0] = __xlx_B_5__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_5__input_buffer)[i*2+1] = __xlx_B_5__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_6__tmp_vec
  vector<sc_bv<128> >__xlx_B_6__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_6)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_6)[j*2+1];
    __xlx_B_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_6 = 10;
  int __xlx_offset_param_B_6 = 0;
  int __xlx_offset_byte_param_B_6 = 0*16;
  __cosim_s10__* __xlx_B_6__input_buffer= new __cosim_s10__[__xlx_B_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_6__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_6__input_buffer)[i*2+0] = __xlx_B_6__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_6__input_buffer)[i*2+1] = __xlx_B_6__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_7__tmp_vec
  vector<sc_bv<128> >__xlx_B_7__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_7)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_7)[j*2+1];
    __xlx_B_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_7 = 10;
  int __xlx_offset_param_B_7 = 0;
  int __xlx_offset_byte_param_B_7 = 0*16;
  __cosim_s10__* __xlx_B_7__input_buffer= new __cosim_s10__[__xlx_B_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_7__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_7__input_buffer)[i*2+0] = __xlx_B_7__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_7__input_buffer)[i*2+1] = __xlx_B_7__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_8__tmp_vec
  vector<sc_bv<128> >__xlx_B_8__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_8)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_8)[j*2+1];
    __xlx_B_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_8 = 10;
  int __xlx_offset_param_B_8 = 0;
  int __xlx_offset_byte_param_B_8 = 0*16;
  __cosim_s10__* __xlx_B_8__input_buffer= new __cosim_s10__[__xlx_B_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_8__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_8__input_buffer)[i*2+0] = __xlx_B_8__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_8__input_buffer)[i*2+1] = __xlx_B_8__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_9__tmp_vec
  vector<sc_bv<128> >__xlx_B_9__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_9)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_9)[j*2+1];
    __xlx_B_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_9 = 10;
  int __xlx_offset_param_B_9 = 0;
  int __xlx_offset_byte_param_B_9 = 0*16;
  __cosim_s10__* __xlx_B_9__input_buffer= new __cosim_s10__[__xlx_B_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_9__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_9__input_buffer)[i*2+0] = __xlx_B_9__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_9__input_buffer)[i*2+1] = __xlx_B_9__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_10__tmp_vec
  vector<sc_bv<128> >__xlx_B_10__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_10)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_10)[j*2+1];
    __xlx_B_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_10 = 10;
  int __xlx_offset_param_B_10 = 0;
  int __xlx_offset_byte_param_B_10 = 0*16;
  __cosim_s10__* __xlx_B_10__input_buffer= new __cosim_s10__[__xlx_B_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_10__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_10__input_buffer)[i*2+0] = __xlx_B_10__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_10__input_buffer)[i*2+1] = __xlx_B_10__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_11__tmp_vec
  vector<sc_bv<128> >__xlx_B_11__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_11)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_11)[j*2+1];
    __xlx_B_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_11 = 10;
  int __xlx_offset_param_B_11 = 0;
  int __xlx_offset_byte_param_B_11 = 0*16;
  __cosim_s10__* __xlx_B_11__input_buffer= new __cosim_s10__[__xlx_B_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_11__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_11__input_buffer)[i*2+0] = __xlx_B_11__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_11__input_buffer)[i*2+1] = __xlx_B_11__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_12__tmp_vec
  vector<sc_bv<128> >__xlx_B_12__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_12)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_12)[j*2+1];
    __xlx_B_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_12 = 10;
  int __xlx_offset_param_B_12 = 0;
  int __xlx_offset_byte_param_B_12 = 0*16;
  __cosim_s10__* __xlx_B_12__input_buffer= new __cosim_s10__[__xlx_B_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_12__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_12__input_buffer)[i*2+0] = __xlx_B_12__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_12__input_buffer)[i*2+1] = __xlx_B_12__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_13__tmp_vec
  vector<sc_bv<128> >__xlx_B_13__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_13)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_13)[j*2+1];
    __xlx_B_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_13 = 10;
  int __xlx_offset_param_B_13 = 0;
  int __xlx_offset_byte_param_B_13 = 0*16;
  __cosim_s10__* __xlx_B_13__input_buffer= new __cosim_s10__[__xlx_B_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_13__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_13__input_buffer)[i*2+0] = __xlx_B_13__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_13__input_buffer)[i*2+1] = __xlx_B_13__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_14__tmp_vec
  vector<sc_bv<128> >__xlx_B_14__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_14)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_14)[j*2+1];
    __xlx_B_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_14 = 10;
  int __xlx_offset_param_B_14 = 0;
  int __xlx_offset_byte_param_B_14 = 0*16;
  __cosim_s10__* __xlx_B_14__input_buffer= new __cosim_s10__[__xlx_B_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_14__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_14__input_buffer)[i*2+0] = __xlx_B_14__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_14__input_buffer)[i*2+1] = __xlx_B_14__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_15__tmp_vec
  vector<sc_bv<128> >__xlx_B_15__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_15)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_15)[j*2+1];
    __xlx_B_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_15 = 10;
  int __xlx_offset_param_B_15 = 0;
  int __xlx_offset_byte_param_B_15 = 0*16;
  __cosim_s10__* __xlx_B_15__input_buffer= new __cosim_s10__[__xlx_B_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_15__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_15__input_buffer)[i*2+0] = __xlx_B_15__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_15__input_buffer)[i*2+1] = __xlx_B_15__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_16__tmp_vec
  vector<sc_bv<128> >__xlx_B_16__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_16)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_16)[j*2+1];
    __xlx_B_16__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_16 = 10;
  int __xlx_offset_param_B_16 = 0;
  int __xlx_offset_byte_param_B_16 = 0*16;
  __cosim_s10__* __xlx_B_16__input_buffer= new __cosim_s10__[__xlx_B_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_16__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_16__input_buffer)[i*2+0] = __xlx_B_16__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_16__input_buffer)[i*2+1] = __xlx_B_16__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_17__tmp_vec
  vector<sc_bv<128> >__xlx_B_17__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_17)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_17)[j*2+1];
    __xlx_B_17__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_17 = 10;
  int __xlx_offset_param_B_17 = 0;
  int __xlx_offset_byte_param_B_17 = 0*16;
  __cosim_s10__* __xlx_B_17__input_buffer= new __cosim_s10__[__xlx_B_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_17__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_17__input_buffer)[i*2+0] = __xlx_B_17__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_17__input_buffer)[i*2+1] = __xlx_B_17__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_18__tmp_vec
  vector<sc_bv<128> >__xlx_B_18__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_18)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_18)[j*2+1];
    __xlx_B_18__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_18 = 10;
  int __xlx_offset_param_B_18 = 0;
  int __xlx_offset_byte_param_B_18 = 0*16;
  __cosim_s10__* __xlx_B_18__input_buffer= new __cosim_s10__[__xlx_B_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_18__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_18__input_buffer)[i*2+0] = __xlx_B_18__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_18__input_buffer)[i*2+1] = __xlx_B_18__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_19__tmp_vec
  vector<sc_bv<128> >__xlx_B_19__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_19)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_19)[j*2+1];
    __xlx_B_19__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_19 = 10;
  int __xlx_offset_param_B_19 = 0;
  int __xlx_offset_byte_param_B_19 = 0*16;
  __cosim_s10__* __xlx_B_19__input_buffer= new __cosim_s10__[__xlx_B_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_19__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_19__input_buffer)[i*2+0] = __xlx_B_19__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_19__input_buffer)[i*2+1] = __xlx_B_19__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_20__tmp_vec
  vector<sc_bv<128> >__xlx_B_20__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_20)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_20)[j*2+1];
    __xlx_B_20__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_20 = 10;
  int __xlx_offset_param_B_20 = 0;
  int __xlx_offset_byte_param_B_20 = 0*16;
  __cosim_s10__* __xlx_B_20__input_buffer= new __cosim_s10__[__xlx_B_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_20__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_20__input_buffer)[i*2+0] = __xlx_B_20__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_20__input_buffer)[i*2+1] = __xlx_B_20__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_21__tmp_vec
  vector<sc_bv<128> >__xlx_B_21__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_21)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_21)[j*2+1];
    __xlx_B_21__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_21 = 10;
  int __xlx_offset_param_B_21 = 0;
  int __xlx_offset_byte_param_B_21 = 0*16;
  __cosim_s10__* __xlx_B_21__input_buffer= new __cosim_s10__[__xlx_B_21__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_21__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_21__input_buffer)[i*2+0] = __xlx_B_21__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_21__input_buffer)[i*2+1] = __xlx_B_21__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_22__tmp_vec
  vector<sc_bv<128> >__xlx_B_22__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_22)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_22)[j*2+1];
    __xlx_B_22__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_22 = 10;
  int __xlx_offset_param_B_22 = 0;
  int __xlx_offset_byte_param_B_22 = 0*16;
  __cosim_s10__* __xlx_B_22__input_buffer= new __cosim_s10__[__xlx_B_22__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_22__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_22__input_buffer)[i*2+0] = __xlx_B_22__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_22__input_buffer)[i*2+1] = __xlx_B_22__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_23__tmp_vec
  vector<sc_bv<128> >__xlx_B_23__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_23)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_23)[j*2+1];
    __xlx_B_23__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_23 = 10;
  int __xlx_offset_param_B_23 = 0;
  int __xlx_offset_byte_param_B_23 = 0*16;
  __cosim_s10__* __xlx_B_23__input_buffer= new __cosim_s10__[__xlx_B_23__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_23__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_23__input_buffer)[i*2+0] = __xlx_B_23__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_23__input_buffer)[i*2+1] = __xlx_B_23__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_24__tmp_vec
  vector<sc_bv<128> >__xlx_B_24__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_24)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_24)[j*2+1];
    __xlx_B_24__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_24 = 10;
  int __xlx_offset_param_B_24 = 0;
  int __xlx_offset_byte_param_B_24 = 0*16;
  __cosim_s10__* __xlx_B_24__input_buffer= new __cosim_s10__[__xlx_B_24__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_24__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_24__input_buffer)[i*2+0] = __xlx_B_24__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_24__input_buffer)[i*2+1] = __xlx_B_24__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_25__tmp_vec
  vector<sc_bv<128> >__xlx_B_25__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_25)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_25)[j*2+1];
    __xlx_B_25__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_25 = 10;
  int __xlx_offset_param_B_25 = 0;
  int __xlx_offset_byte_param_B_25 = 0*16;
  __cosim_s10__* __xlx_B_25__input_buffer= new __cosim_s10__[__xlx_B_25__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_25__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_25__input_buffer)[i*2+0] = __xlx_B_25__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_25__input_buffer)[i*2+1] = __xlx_B_25__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_26__tmp_vec
  vector<sc_bv<128> >__xlx_B_26__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_26)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_26)[j*2+1];
    __xlx_B_26__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_26 = 10;
  int __xlx_offset_param_B_26 = 0;
  int __xlx_offset_byte_param_B_26 = 0*16;
  __cosim_s10__* __xlx_B_26__input_buffer= new __cosim_s10__[__xlx_B_26__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_26__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_26__input_buffer)[i*2+0] = __xlx_B_26__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_26__input_buffer)[i*2+1] = __xlx_B_26__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_27__tmp_vec
  vector<sc_bv<128> >__xlx_B_27__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_27)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_27)[j*2+1];
    __xlx_B_27__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_27 = 10;
  int __xlx_offset_param_B_27 = 0;
  int __xlx_offset_byte_param_B_27 = 0*16;
  __cosim_s10__* __xlx_B_27__input_buffer= new __cosim_s10__[__xlx_B_27__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_27__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_27__input_buffer)[i*2+0] = __xlx_B_27__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_27__input_buffer)[i*2+1] = __xlx_B_27__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_28__tmp_vec
  vector<sc_bv<128> >__xlx_B_28__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_28)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_28)[j*2+1];
    __xlx_B_28__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_28 = 10;
  int __xlx_offset_param_B_28 = 0;
  int __xlx_offset_byte_param_B_28 = 0*16;
  __cosim_s10__* __xlx_B_28__input_buffer= new __cosim_s10__[__xlx_B_28__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_28__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_28__input_buffer)[i*2+0] = __xlx_B_28__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_28__input_buffer)[i*2+1] = __xlx_B_28__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_29__tmp_vec
  vector<sc_bv<128> >__xlx_B_29__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_29)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_29)[j*2+1];
    __xlx_B_29__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_29 = 10;
  int __xlx_offset_param_B_29 = 0;
  int __xlx_offset_byte_param_B_29 = 0*16;
  __cosim_s10__* __xlx_B_29__input_buffer= new __cosim_s10__[__xlx_B_29__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_29__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_29__input_buffer)[i*2+0] = __xlx_B_29__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_29__input_buffer)[i*2+1] = __xlx_B_29__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_30__tmp_vec
  vector<sc_bv<128> >__xlx_B_30__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_30)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_30)[j*2+1];
    __xlx_B_30__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_30 = 10;
  int __xlx_offset_param_B_30 = 0;
  int __xlx_offset_byte_param_B_30 = 0*16;
  __cosim_s10__* __xlx_B_30__input_buffer= new __cosim_s10__[__xlx_B_30__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_30__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_30__input_buffer)[i*2+0] = __xlx_B_30__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_30__input_buffer)[i*2+1] = __xlx_B_30__tmp_vec[i].range(127, 64).to_uint64();
  }
  // Collect __xlx_B_31__tmp_vec
  vector<sc_bv<128> >__xlx_B_31__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_B_31)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_B_31)[j*2+1];
    __xlx_B_31__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_B_31 = 10;
  int __xlx_offset_param_B_31 = 0;
  int __xlx_offset_byte_param_B_31 = 0*16;
  __cosim_s10__* __xlx_B_31__input_buffer= new __cosim_s10__[__xlx_B_31__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_31__tmp_vec.size(); ++i) {
    ((long long*)__xlx_B_31__input_buffer)[i*2+0] = __xlx_B_31__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_B_31__input_buffer)[i*2+1] = __xlx_B_31__tmp_vec[i].range(127, 64).to_uint64();
  }
  // collect __xlx_feature_vector_tmp_vec
  unsigned __xlx_feature_vector_V_tmp_Count = 0;
  unsigned __xlx_feature_vector_V_read_Size = __xlx_feature_vector_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_feature_vector_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->empty() && __xlx_feature_vector_V_tmp_Count < __xlx_feature_vector_V_read_Size) {
    __xlx_feature_vector_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_feature_vector)->read());
    __xlx_feature_vector_V_tmp_Count++;
  }
  ap_apatb_feature_vector_V_cap_bc = __xlx_feature_vector_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_feature_vector_input_buffer= new __cosim_s20__[__xlx_feature_vector_tmp_vec.size()];
  for (int i = 0; i < __xlx_feature_vector_tmp_vec.size(); ++i) {
    __xlx_feature_vector_input_buffer[i] = __xlx_feature_vector_tmp_vec[i];
  }
  // Collect __xlx_scores__tmp_vec
  vector<sc_bv<128> >__xlx_scores__tmp_vec;
  for (int j = 0, e = 10; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_scores)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_scores)[j*2+1];
    __xlx_scores__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_scores = 10;
  int __xlx_offset_param_scores = 0;
  int __xlx_offset_byte_param_scores = 0*16;
  __cosim_s10__* __xlx_scores__input_buffer= new __cosim_s10__[__xlx_scores__tmp_vec.size()];
  for (int i = 0; i < __xlx_scores__tmp_vec.size(); ++i) {
    ((long long*)__xlx_scores__input_buffer)[i*2+0] = __xlx_scores__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_scores__input_buffer)[i*2+1] = __xlx_scores__tmp_vec[i].range(127, 64).to_uint64();
  }
  // DUT call
  matrix_matrix_mult_streaming(__xlx_A_0__input_buffer, __xlx_A_1__input_buffer, __xlx_A_2__input_buffer, __xlx_A_3__input_buffer, __xlx_A_4__input_buffer, __xlx_A_5__input_buffer, __xlx_A_6__input_buffer, __xlx_A_7__input_buffer, __xlx_A_8__input_buffer, __xlx_A_9__input_buffer, __xlx_A_10__input_buffer, __xlx_A_11__input_buffer, __xlx_A_12__input_buffer, __xlx_A_13__input_buffer, __xlx_A_14__input_buffer, __xlx_A_15__input_buffer, __xlx_A_16__input_buffer, __xlx_A_17__input_buffer, __xlx_A_18__input_buffer, __xlx_A_19__input_buffer, __xlx_A_20__input_buffer, __xlx_A_21__input_buffer, __xlx_A_22__input_buffer, __xlx_A_23__input_buffer, __xlx_A_24__input_buffer, __xlx_A_25__input_buffer, __xlx_A_26__input_buffer, __xlx_A_27__input_buffer, __xlx_A_28__input_buffer, __xlx_A_29__input_buffer, __xlx_A_30__input_buffer, __xlx_A_31__input_buffer, __xlx_B_0__input_buffer, __xlx_B_1__input_buffer, __xlx_B_2__input_buffer, __xlx_B_3__input_buffer, __xlx_B_4__input_buffer, __xlx_B_5__input_buffer, __xlx_B_6__input_buffer, __xlx_B_7__input_buffer, __xlx_B_8__input_buffer, __xlx_B_9__input_buffer, __xlx_B_10__input_buffer, __xlx_B_11__input_buffer, __xlx_B_12__input_buffer, __xlx_B_13__input_buffer, __xlx_B_14__input_buffer, __xlx_B_15__input_buffer, __xlx_B_16__input_buffer, __xlx_B_17__input_buffer, __xlx_B_18__input_buffer, __xlx_B_19__input_buffer, __xlx_B_20__input_buffer, __xlx_B_21__input_buffer, __xlx_B_22__input_buffer, __xlx_B_23__input_buffer, __xlx_B_24__input_buffer, __xlx_B_25__input_buffer, __xlx_B_26__input_buffer, __xlx_B_27__input_buffer, __xlx_B_28__input_buffer, __xlx_B_29__input_buffer, __xlx_B_30__input_buffer, __xlx_B_31__input_buffer, __xlx_feature_vector_input_buffer, __xlx_scores__input_buffer);
// print __xlx_apatb_param_A_0
  sc_bv<128>*__xlx_A_0_output_buffer = new sc_bv<128>[__xlx_size_param_A_0];
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    char* start = (char*)(&(__xlx_A_0__input_buffer[__xlx_offset_param_A_0]));
    __xlx_A_0_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_0_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_0; ++i) {
    ((long long*)__xlx_apatb_param_A_0)[i*2+0] = __xlx_A_0_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_0)[i*2+1] = __xlx_A_0_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_1
  sc_bv<128>*__xlx_A_1_output_buffer = new sc_bv<128>[__xlx_size_param_A_1];
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    char* start = (char*)(&(__xlx_A_1__input_buffer[__xlx_offset_param_A_1]));
    __xlx_A_1_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_1_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_1; ++i) {
    ((long long*)__xlx_apatb_param_A_1)[i*2+0] = __xlx_A_1_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_1)[i*2+1] = __xlx_A_1_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_2
  sc_bv<128>*__xlx_A_2_output_buffer = new sc_bv<128>[__xlx_size_param_A_2];
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    char* start = (char*)(&(__xlx_A_2__input_buffer[__xlx_offset_param_A_2]));
    __xlx_A_2_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_2_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_2; ++i) {
    ((long long*)__xlx_apatb_param_A_2)[i*2+0] = __xlx_A_2_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_2)[i*2+1] = __xlx_A_2_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_3
  sc_bv<128>*__xlx_A_3_output_buffer = new sc_bv<128>[__xlx_size_param_A_3];
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    char* start = (char*)(&(__xlx_A_3__input_buffer[__xlx_offset_param_A_3]));
    __xlx_A_3_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_3_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_3; ++i) {
    ((long long*)__xlx_apatb_param_A_3)[i*2+0] = __xlx_A_3_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_3)[i*2+1] = __xlx_A_3_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_4
  sc_bv<128>*__xlx_A_4_output_buffer = new sc_bv<128>[__xlx_size_param_A_4];
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    char* start = (char*)(&(__xlx_A_4__input_buffer[__xlx_offset_param_A_4]));
    __xlx_A_4_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_4_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_4; ++i) {
    ((long long*)__xlx_apatb_param_A_4)[i*2+0] = __xlx_A_4_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_4)[i*2+1] = __xlx_A_4_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_5
  sc_bv<128>*__xlx_A_5_output_buffer = new sc_bv<128>[__xlx_size_param_A_5];
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    char* start = (char*)(&(__xlx_A_5__input_buffer[__xlx_offset_param_A_5]));
    __xlx_A_5_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_5_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_5; ++i) {
    ((long long*)__xlx_apatb_param_A_5)[i*2+0] = __xlx_A_5_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_5)[i*2+1] = __xlx_A_5_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_6
  sc_bv<128>*__xlx_A_6_output_buffer = new sc_bv<128>[__xlx_size_param_A_6];
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    char* start = (char*)(&(__xlx_A_6__input_buffer[__xlx_offset_param_A_6]));
    __xlx_A_6_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_6_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_6; ++i) {
    ((long long*)__xlx_apatb_param_A_6)[i*2+0] = __xlx_A_6_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_6)[i*2+1] = __xlx_A_6_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_7
  sc_bv<128>*__xlx_A_7_output_buffer = new sc_bv<128>[__xlx_size_param_A_7];
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    char* start = (char*)(&(__xlx_A_7__input_buffer[__xlx_offset_param_A_7]));
    __xlx_A_7_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_7_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_7; ++i) {
    ((long long*)__xlx_apatb_param_A_7)[i*2+0] = __xlx_A_7_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_7)[i*2+1] = __xlx_A_7_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_8
  sc_bv<128>*__xlx_A_8_output_buffer = new sc_bv<128>[__xlx_size_param_A_8];
  for (int i = 0; i < __xlx_size_param_A_8; ++i) {
    char* start = (char*)(&(__xlx_A_8__input_buffer[__xlx_offset_param_A_8]));
    __xlx_A_8_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_8_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_8; ++i) {
    ((long long*)__xlx_apatb_param_A_8)[i*2+0] = __xlx_A_8_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_8)[i*2+1] = __xlx_A_8_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_9
  sc_bv<128>*__xlx_A_9_output_buffer = new sc_bv<128>[__xlx_size_param_A_9];
  for (int i = 0; i < __xlx_size_param_A_9; ++i) {
    char* start = (char*)(&(__xlx_A_9__input_buffer[__xlx_offset_param_A_9]));
    __xlx_A_9_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_9_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_9; ++i) {
    ((long long*)__xlx_apatb_param_A_9)[i*2+0] = __xlx_A_9_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_9)[i*2+1] = __xlx_A_9_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_10
  sc_bv<128>*__xlx_A_10_output_buffer = new sc_bv<128>[__xlx_size_param_A_10];
  for (int i = 0; i < __xlx_size_param_A_10; ++i) {
    char* start = (char*)(&(__xlx_A_10__input_buffer[__xlx_offset_param_A_10]));
    __xlx_A_10_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_10_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_10; ++i) {
    ((long long*)__xlx_apatb_param_A_10)[i*2+0] = __xlx_A_10_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_10)[i*2+1] = __xlx_A_10_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_11
  sc_bv<128>*__xlx_A_11_output_buffer = new sc_bv<128>[__xlx_size_param_A_11];
  for (int i = 0; i < __xlx_size_param_A_11; ++i) {
    char* start = (char*)(&(__xlx_A_11__input_buffer[__xlx_offset_param_A_11]));
    __xlx_A_11_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_11_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_11; ++i) {
    ((long long*)__xlx_apatb_param_A_11)[i*2+0] = __xlx_A_11_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_11)[i*2+1] = __xlx_A_11_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_12
  sc_bv<128>*__xlx_A_12_output_buffer = new sc_bv<128>[__xlx_size_param_A_12];
  for (int i = 0; i < __xlx_size_param_A_12; ++i) {
    char* start = (char*)(&(__xlx_A_12__input_buffer[__xlx_offset_param_A_12]));
    __xlx_A_12_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_12_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_12; ++i) {
    ((long long*)__xlx_apatb_param_A_12)[i*2+0] = __xlx_A_12_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_12)[i*2+1] = __xlx_A_12_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_13
  sc_bv<128>*__xlx_A_13_output_buffer = new sc_bv<128>[__xlx_size_param_A_13];
  for (int i = 0; i < __xlx_size_param_A_13; ++i) {
    char* start = (char*)(&(__xlx_A_13__input_buffer[__xlx_offset_param_A_13]));
    __xlx_A_13_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_13_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_13; ++i) {
    ((long long*)__xlx_apatb_param_A_13)[i*2+0] = __xlx_A_13_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_13)[i*2+1] = __xlx_A_13_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_14
  sc_bv<128>*__xlx_A_14_output_buffer = new sc_bv<128>[__xlx_size_param_A_14];
  for (int i = 0; i < __xlx_size_param_A_14; ++i) {
    char* start = (char*)(&(__xlx_A_14__input_buffer[__xlx_offset_param_A_14]));
    __xlx_A_14_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_14_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_14; ++i) {
    ((long long*)__xlx_apatb_param_A_14)[i*2+0] = __xlx_A_14_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_14)[i*2+1] = __xlx_A_14_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_15
  sc_bv<128>*__xlx_A_15_output_buffer = new sc_bv<128>[__xlx_size_param_A_15];
  for (int i = 0; i < __xlx_size_param_A_15; ++i) {
    char* start = (char*)(&(__xlx_A_15__input_buffer[__xlx_offset_param_A_15]));
    __xlx_A_15_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_15_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_15; ++i) {
    ((long long*)__xlx_apatb_param_A_15)[i*2+0] = __xlx_A_15_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_15)[i*2+1] = __xlx_A_15_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_16
  sc_bv<128>*__xlx_A_16_output_buffer = new sc_bv<128>[__xlx_size_param_A_16];
  for (int i = 0; i < __xlx_size_param_A_16; ++i) {
    char* start = (char*)(&(__xlx_A_16__input_buffer[__xlx_offset_param_A_16]));
    __xlx_A_16_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_16_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_16; ++i) {
    ((long long*)__xlx_apatb_param_A_16)[i*2+0] = __xlx_A_16_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_16)[i*2+1] = __xlx_A_16_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_17
  sc_bv<128>*__xlx_A_17_output_buffer = new sc_bv<128>[__xlx_size_param_A_17];
  for (int i = 0; i < __xlx_size_param_A_17; ++i) {
    char* start = (char*)(&(__xlx_A_17__input_buffer[__xlx_offset_param_A_17]));
    __xlx_A_17_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_17_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_17; ++i) {
    ((long long*)__xlx_apatb_param_A_17)[i*2+0] = __xlx_A_17_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_17)[i*2+1] = __xlx_A_17_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_18
  sc_bv<128>*__xlx_A_18_output_buffer = new sc_bv<128>[__xlx_size_param_A_18];
  for (int i = 0; i < __xlx_size_param_A_18; ++i) {
    char* start = (char*)(&(__xlx_A_18__input_buffer[__xlx_offset_param_A_18]));
    __xlx_A_18_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_18_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_18; ++i) {
    ((long long*)__xlx_apatb_param_A_18)[i*2+0] = __xlx_A_18_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_18)[i*2+1] = __xlx_A_18_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_19
  sc_bv<128>*__xlx_A_19_output_buffer = new sc_bv<128>[__xlx_size_param_A_19];
  for (int i = 0; i < __xlx_size_param_A_19; ++i) {
    char* start = (char*)(&(__xlx_A_19__input_buffer[__xlx_offset_param_A_19]));
    __xlx_A_19_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_19_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_19; ++i) {
    ((long long*)__xlx_apatb_param_A_19)[i*2+0] = __xlx_A_19_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_19)[i*2+1] = __xlx_A_19_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_20
  sc_bv<128>*__xlx_A_20_output_buffer = new sc_bv<128>[__xlx_size_param_A_20];
  for (int i = 0; i < __xlx_size_param_A_20; ++i) {
    char* start = (char*)(&(__xlx_A_20__input_buffer[__xlx_offset_param_A_20]));
    __xlx_A_20_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_20_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_20; ++i) {
    ((long long*)__xlx_apatb_param_A_20)[i*2+0] = __xlx_A_20_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_20)[i*2+1] = __xlx_A_20_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_21
  sc_bv<128>*__xlx_A_21_output_buffer = new sc_bv<128>[__xlx_size_param_A_21];
  for (int i = 0; i < __xlx_size_param_A_21; ++i) {
    char* start = (char*)(&(__xlx_A_21__input_buffer[__xlx_offset_param_A_21]));
    __xlx_A_21_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_21_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_21; ++i) {
    ((long long*)__xlx_apatb_param_A_21)[i*2+0] = __xlx_A_21_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_21)[i*2+1] = __xlx_A_21_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_22
  sc_bv<128>*__xlx_A_22_output_buffer = new sc_bv<128>[__xlx_size_param_A_22];
  for (int i = 0; i < __xlx_size_param_A_22; ++i) {
    char* start = (char*)(&(__xlx_A_22__input_buffer[__xlx_offset_param_A_22]));
    __xlx_A_22_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_22_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_22; ++i) {
    ((long long*)__xlx_apatb_param_A_22)[i*2+0] = __xlx_A_22_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_22)[i*2+1] = __xlx_A_22_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_23
  sc_bv<128>*__xlx_A_23_output_buffer = new sc_bv<128>[__xlx_size_param_A_23];
  for (int i = 0; i < __xlx_size_param_A_23; ++i) {
    char* start = (char*)(&(__xlx_A_23__input_buffer[__xlx_offset_param_A_23]));
    __xlx_A_23_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_23_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_23; ++i) {
    ((long long*)__xlx_apatb_param_A_23)[i*2+0] = __xlx_A_23_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_23)[i*2+1] = __xlx_A_23_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_24
  sc_bv<128>*__xlx_A_24_output_buffer = new sc_bv<128>[__xlx_size_param_A_24];
  for (int i = 0; i < __xlx_size_param_A_24; ++i) {
    char* start = (char*)(&(__xlx_A_24__input_buffer[__xlx_offset_param_A_24]));
    __xlx_A_24_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_24_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_24; ++i) {
    ((long long*)__xlx_apatb_param_A_24)[i*2+0] = __xlx_A_24_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_24)[i*2+1] = __xlx_A_24_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_25
  sc_bv<128>*__xlx_A_25_output_buffer = new sc_bv<128>[__xlx_size_param_A_25];
  for (int i = 0; i < __xlx_size_param_A_25; ++i) {
    char* start = (char*)(&(__xlx_A_25__input_buffer[__xlx_offset_param_A_25]));
    __xlx_A_25_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_25_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_25; ++i) {
    ((long long*)__xlx_apatb_param_A_25)[i*2+0] = __xlx_A_25_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_25)[i*2+1] = __xlx_A_25_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_26
  sc_bv<128>*__xlx_A_26_output_buffer = new sc_bv<128>[__xlx_size_param_A_26];
  for (int i = 0; i < __xlx_size_param_A_26; ++i) {
    char* start = (char*)(&(__xlx_A_26__input_buffer[__xlx_offset_param_A_26]));
    __xlx_A_26_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_26_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_26; ++i) {
    ((long long*)__xlx_apatb_param_A_26)[i*2+0] = __xlx_A_26_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_26)[i*2+1] = __xlx_A_26_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_27
  sc_bv<128>*__xlx_A_27_output_buffer = new sc_bv<128>[__xlx_size_param_A_27];
  for (int i = 0; i < __xlx_size_param_A_27; ++i) {
    char* start = (char*)(&(__xlx_A_27__input_buffer[__xlx_offset_param_A_27]));
    __xlx_A_27_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_27_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_27; ++i) {
    ((long long*)__xlx_apatb_param_A_27)[i*2+0] = __xlx_A_27_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_27)[i*2+1] = __xlx_A_27_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_28
  sc_bv<128>*__xlx_A_28_output_buffer = new sc_bv<128>[__xlx_size_param_A_28];
  for (int i = 0; i < __xlx_size_param_A_28; ++i) {
    char* start = (char*)(&(__xlx_A_28__input_buffer[__xlx_offset_param_A_28]));
    __xlx_A_28_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_28_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_28; ++i) {
    ((long long*)__xlx_apatb_param_A_28)[i*2+0] = __xlx_A_28_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_28)[i*2+1] = __xlx_A_28_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_29
  sc_bv<128>*__xlx_A_29_output_buffer = new sc_bv<128>[__xlx_size_param_A_29];
  for (int i = 0; i < __xlx_size_param_A_29; ++i) {
    char* start = (char*)(&(__xlx_A_29__input_buffer[__xlx_offset_param_A_29]));
    __xlx_A_29_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_29_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_29; ++i) {
    ((long long*)__xlx_apatb_param_A_29)[i*2+0] = __xlx_A_29_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_29)[i*2+1] = __xlx_A_29_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_30
  sc_bv<128>*__xlx_A_30_output_buffer = new sc_bv<128>[__xlx_size_param_A_30];
  for (int i = 0; i < __xlx_size_param_A_30; ++i) {
    char* start = (char*)(&(__xlx_A_30__input_buffer[__xlx_offset_param_A_30]));
    __xlx_A_30_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_30_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_30; ++i) {
    ((long long*)__xlx_apatb_param_A_30)[i*2+0] = __xlx_A_30_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_30)[i*2+1] = __xlx_A_30_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_A_31
  sc_bv<128>*__xlx_A_31_output_buffer = new sc_bv<128>[__xlx_size_param_A_31];
  for (int i = 0; i < __xlx_size_param_A_31; ++i) {
    char* start = (char*)(&(__xlx_A_31__input_buffer[__xlx_offset_param_A_31]));
    __xlx_A_31_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_A_31_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_A_31; ++i) {
    ((long long*)__xlx_apatb_param_A_31)[i*2+0] = __xlx_A_31_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_A_31)[i*2+1] = __xlx_A_31_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_0
  sc_bv<128>*__xlx_B_0_output_buffer = new sc_bv<128>[__xlx_size_param_B_0];
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    char* start = (char*)(&(__xlx_B_0__input_buffer[__xlx_offset_param_B_0]));
    __xlx_B_0_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_0_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_0; ++i) {
    ((long long*)__xlx_apatb_param_B_0)[i*2+0] = __xlx_B_0_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_0)[i*2+1] = __xlx_B_0_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_1
  sc_bv<128>*__xlx_B_1_output_buffer = new sc_bv<128>[__xlx_size_param_B_1];
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    char* start = (char*)(&(__xlx_B_1__input_buffer[__xlx_offset_param_B_1]));
    __xlx_B_1_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_1_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_1; ++i) {
    ((long long*)__xlx_apatb_param_B_1)[i*2+0] = __xlx_B_1_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_1)[i*2+1] = __xlx_B_1_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_2
  sc_bv<128>*__xlx_B_2_output_buffer = new sc_bv<128>[__xlx_size_param_B_2];
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    char* start = (char*)(&(__xlx_B_2__input_buffer[__xlx_offset_param_B_2]));
    __xlx_B_2_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_2_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_2; ++i) {
    ((long long*)__xlx_apatb_param_B_2)[i*2+0] = __xlx_B_2_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_2)[i*2+1] = __xlx_B_2_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_3
  sc_bv<128>*__xlx_B_3_output_buffer = new sc_bv<128>[__xlx_size_param_B_3];
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    char* start = (char*)(&(__xlx_B_3__input_buffer[__xlx_offset_param_B_3]));
    __xlx_B_3_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_3_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_3; ++i) {
    ((long long*)__xlx_apatb_param_B_3)[i*2+0] = __xlx_B_3_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_3)[i*2+1] = __xlx_B_3_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_4
  sc_bv<128>*__xlx_B_4_output_buffer = new sc_bv<128>[__xlx_size_param_B_4];
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    char* start = (char*)(&(__xlx_B_4__input_buffer[__xlx_offset_param_B_4]));
    __xlx_B_4_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_4_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_4; ++i) {
    ((long long*)__xlx_apatb_param_B_4)[i*2+0] = __xlx_B_4_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_4)[i*2+1] = __xlx_B_4_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_5
  sc_bv<128>*__xlx_B_5_output_buffer = new sc_bv<128>[__xlx_size_param_B_5];
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    char* start = (char*)(&(__xlx_B_5__input_buffer[__xlx_offset_param_B_5]));
    __xlx_B_5_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_5_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_5; ++i) {
    ((long long*)__xlx_apatb_param_B_5)[i*2+0] = __xlx_B_5_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_5)[i*2+1] = __xlx_B_5_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_6
  sc_bv<128>*__xlx_B_6_output_buffer = new sc_bv<128>[__xlx_size_param_B_6];
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    char* start = (char*)(&(__xlx_B_6__input_buffer[__xlx_offset_param_B_6]));
    __xlx_B_6_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_6_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_6; ++i) {
    ((long long*)__xlx_apatb_param_B_6)[i*2+0] = __xlx_B_6_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_6)[i*2+1] = __xlx_B_6_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_7
  sc_bv<128>*__xlx_B_7_output_buffer = new sc_bv<128>[__xlx_size_param_B_7];
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    char* start = (char*)(&(__xlx_B_7__input_buffer[__xlx_offset_param_B_7]));
    __xlx_B_7_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_7_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_7; ++i) {
    ((long long*)__xlx_apatb_param_B_7)[i*2+0] = __xlx_B_7_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_7)[i*2+1] = __xlx_B_7_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_8
  sc_bv<128>*__xlx_B_8_output_buffer = new sc_bv<128>[__xlx_size_param_B_8];
  for (int i = 0; i < __xlx_size_param_B_8; ++i) {
    char* start = (char*)(&(__xlx_B_8__input_buffer[__xlx_offset_param_B_8]));
    __xlx_B_8_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_8_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_8; ++i) {
    ((long long*)__xlx_apatb_param_B_8)[i*2+0] = __xlx_B_8_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_8)[i*2+1] = __xlx_B_8_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_9
  sc_bv<128>*__xlx_B_9_output_buffer = new sc_bv<128>[__xlx_size_param_B_9];
  for (int i = 0; i < __xlx_size_param_B_9; ++i) {
    char* start = (char*)(&(__xlx_B_9__input_buffer[__xlx_offset_param_B_9]));
    __xlx_B_9_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_9_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_9; ++i) {
    ((long long*)__xlx_apatb_param_B_9)[i*2+0] = __xlx_B_9_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_9)[i*2+1] = __xlx_B_9_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_10
  sc_bv<128>*__xlx_B_10_output_buffer = new sc_bv<128>[__xlx_size_param_B_10];
  for (int i = 0; i < __xlx_size_param_B_10; ++i) {
    char* start = (char*)(&(__xlx_B_10__input_buffer[__xlx_offset_param_B_10]));
    __xlx_B_10_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_10_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_10; ++i) {
    ((long long*)__xlx_apatb_param_B_10)[i*2+0] = __xlx_B_10_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_10)[i*2+1] = __xlx_B_10_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_11
  sc_bv<128>*__xlx_B_11_output_buffer = new sc_bv<128>[__xlx_size_param_B_11];
  for (int i = 0; i < __xlx_size_param_B_11; ++i) {
    char* start = (char*)(&(__xlx_B_11__input_buffer[__xlx_offset_param_B_11]));
    __xlx_B_11_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_11_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_11; ++i) {
    ((long long*)__xlx_apatb_param_B_11)[i*2+0] = __xlx_B_11_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_11)[i*2+1] = __xlx_B_11_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_12
  sc_bv<128>*__xlx_B_12_output_buffer = new sc_bv<128>[__xlx_size_param_B_12];
  for (int i = 0; i < __xlx_size_param_B_12; ++i) {
    char* start = (char*)(&(__xlx_B_12__input_buffer[__xlx_offset_param_B_12]));
    __xlx_B_12_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_12_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_12; ++i) {
    ((long long*)__xlx_apatb_param_B_12)[i*2+0] = __xlx_B_12_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_12)[i*2+1] = __xlx_B_12_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_13
  sc_bv<128>*__xlx_B_13_output_buffer = new sc_bv<128>[__xlx_size_param_B_13];
  for (int i = 0; i < __xlx_size_param_B_13; ++i) {
    char* start = (char*)(&(__xlx_B_13__input_buffer[__xlx_offset_param_B_13]));
    __xlx_B_13_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_13_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_13; ++i) {
    ((long long*)__xlx_apatb_param_B_13)[i*2+0] = __xlx_B_13_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_13)[i*2+1] = __xlx_B_13_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_14
  sc_bv<128>*__xlx_B_14_output_buffer = new sc_bv<128>[__xlx_size_param_B_14];
  for (int i = 0; i < __xlx_size_param_B_14; ++i) {
    char* start = (char*)(&(__xlx_B_14__input_buffer[__xlx_offset_param_B_14]));
    __xlx_B_14_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_14_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_14; ++i) {
    ((long long*)__xlx_apatb_param_B_14)[i*2+0] = __xlx_B_14_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_14)[i*2+1] = __xlx_B_14_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_15
  sc_bv<128>*__xlx_B_15_output_buffer = new sc_bv<128>[__xlx_size_param_B_15];
  for (int i = 0; i < __xlx_size_param_B_15; ++i) {
    char* start = (char*)(&(__xlx_B_15__input_buffer[__xlx_offset_param_B_15]));
    __xlx_B_15_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_15_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_15; ++i) {
    ((long long*)__xlx_apatb_param_B_15)[i*2+0] = __xlx_B_15_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_15)[i*2+1] = __xlx_B_15_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_16
  sc_bv<128>*__xlx_B_16_output_buffer = new sc_bv<128>[__xlx_size_param_B_16];
  for (int i = 0; i < __xlx_size_param_B_16; ++i) {
    char* start = (char*)(&(__xlx_B_16__input_buffer[__xlx_offset_param_B_16]));
    __xlx_B_16_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_16_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_16; ++i) {
    ((long long*)__xlx_apatb_param_B_16)[i*2+0] = __xlx_B_16_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_16)[i*2+1] = __xlx_B_16_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_17
  sc_bv<128>*__xlx_B_17_output_buffer = new sc_bv<128>[__xlx_size_param_B_17];
  for (int i = 0; i < __xlx_size_param_B_17; ++i) {
    char* start = (char*)(&(__xlx_B_17__input_buffer[__xlx_offset_param_B_17]));
    __xlx_B_17_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_17_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_17; ++i) {
    ((long long*)__xlx_apatb_param_B_17)[i*2+0] = __xlx_B_17_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_17)[i*2+1] = __xlx_B_17_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_18
  sc_bv<128>*__xlx_B_18_output_buffer = new sc_bv<128>[__xlx_size_param_B_18];
  for (int i = 0; i < __xlx_size_param_B_18; ++i) {
    char* start = (char*)(&(__xlx_B_18__input_buffer[__xlx_offset_param_B_18]));
    __xlx_B_18_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_18_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_18; ++i) {
    ((long long*)__xlx_apatb_param_B_18)[i*2+0] = __xlx_B_18_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_18)[i*2+1] = __xlx_B_18_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_19
  sc_bv<128>*__xlx_B_19_output_buffer = new sc_bv<128>[__xlx_size_param_B_19];
  for (int i = 0; i < __xlx_size_param_B_19; ++i) {
    char* start = (char*)(&(__xlx_B_19__input_buffer[__xlx_offset_param_B_19]));
    __xlx_B_19_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_19_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_19; ++i) {
    ((long long*)__xlx_apatb_param_B_19)[i*2+0] = __xlx_B_19_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_19)[i*2+1] = __xlx_B_19_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_20
  sc_bv<128>*__xlx_B_20_output_buffer = new sc_bv<128>[__xlx_size_param_B_20];
  for (int i = 0; i < __xlx_size_param_B_20; ++i) {
    char* start = (char*)(&(__xlx_B_20__input_buffer[__xlx_offset_param_B_20]));
    __xlx_B_20_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_20_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_20; ++i) {
    ((long long*)__xlx_apatb_param_B_20)[i*2+0] = __xlx_B_20_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_20)[i*2+1] = __xlx_B_20_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_21
  sc_bv<128>*__xlx_B_21_output_buffer = new sc_bv<128>[__xlx_size_param_B_21];
  for (int i = 0; i < __xlx_size_param_B_21; ++i) {
    char* start = (char*)(&(__xlx_B_21__input_buffer[__xlx_offset_param_B_21]));
    __xlx_B_21_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_21_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_21; ++i) {
    ((long long*)__xlx_apatb_param_B_21)[i*2+0] = __xlx_B_21_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_21)[i*2+1] = __xlx_B_21_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_22
  sc_bv<128>*__xlx_B_22_output_buffer = new sc_bv<128>[__xlx_size_param_B_22];
  for (int i = 0; i < __xlx_size_param_B_22; ++i) {
    char* start = (char*)(&(__xlx_B_22__input_buffer[__xlx_offset_param_B_22]));
    __xlx_B_22_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_22_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_22; ++i) {
    ((long long*)__xlx_apatb_param_B_22)[i*2+0] = __xlx_B_22_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_22)[i*2+1] = __xlx_B_22_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_23
  sc_bv<128>*__xlx_B_23_output_buffer = new sc_bv<128>[__xlx_size_param_B_23];
  for (int i = 0; i < __xlx_size_param_B_23; ++i) {
    char* start = (char*)(&(__xlx_B_23__input_buffer[__xlx_offset_param_B_23]));
    __xlx_B_23_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_23_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_23; ++i) {
    ((long long*)__xlx_apatb_param_B_23)[i*2+0] = __xlx_B_23_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_23)[i*2+1] = __xlx_B_23_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_24
  sc_bv<128>*__xlx_B_24_output_buffer = new sc_bv<128>[__xlx_size_param_B_24];
  for (int i = 0; i < __xlx_size_param_B_24; ++i) {
    char* start = (char*)(&(__xlx_B_24__input_buffer[__xlx_offset_param_B_24]));
    __xlx_B_24_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_24_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_24; ++i) {
    ((long long*)__xlx_apatb_param_B_24)[i*2+0] = __xlx_B_24_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_24)[i*2+1] = __xlx_B_24_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_25
  sc_bv<128>*__xlx_B_25_output_buffer = new sc_bv<128>[__xlx_size_param_B_25];
  for (int i = 0; i < __xlx_size_param_B_25; ++i) {
    char* start = (char*)(&(__xlx_B_25__input_buffer[__xlx_offset_param_B_25]));
    __xlx_B_25_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_25_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_25; ++i) {
    ((long long*)__xlx_apatb_param_B_25)[i*2+0] = __xlx_B_25_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_25)[i*2+1] = __xlx_B_25_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_26
  sc_bv<128>*__xlx_B_26_output_buffer = new sc_bv<128>[__xlx_size_param_B_26];
  for (int i = 0; i < __xlx_size_param_B_26; ++i) {
    char* start = (char*)(&(__xlx_B_26__input_buffer[__xlx_offset_param_B_26]));
    __xlx_B_26_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_26_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_26; ++i) {
    ((long long*)__xlx_apatb_param_B_26)[i*2+0] = __xlx_B_26_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_26)[i*2+1] = __xlx_B_26_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_27
  sc_bv<128>*__xlx_B_27_output_buffer = new sc_bv<128>[__xlx_size_param_B_27];
  for (int i = 0; i < __xlx_size_param_B_27; ++i) {
    char* start = (char*)(&(__xlx_B_27__input_buffer[__xlx_offset_param_B_27]));
    __xlx_B_27_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_27_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_27; ++i) {
    ((long long*)__xlx_apatb_param_B_27)[i*2+0] = __xlx_B_27_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_27)[i*2+1] = __xlx_B_27_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_28
  sc_bv<128>*__xlx_B_28_output_buffer = new sc_bv<128>[__xlx_size_param_B_28];
  for (int i = 0; i < __xlx_size_param_B_28; ++i) {
    char* start = (char*)(&(__xlx_B_28__input_buffer[__xlx_offset_param_B_28]));
    __xlx_B_28_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_28_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_28; ++i) {
    ((long long*)__xlx_apatb_param_B_28)[i*2+0] = __xlx_B_28_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_28)[i*2+1] = __xlx_B_28_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_29
  sc_bv<128>*__xlx_B_29_output_buffer = new sc_bv<128>[__xlx_size_param_B_29];
  for (int i = 0; i < __xlx_size_param_B_29; ++i) {
    char* start = (char*)(&(__xlx_B_29__input_buffer[__xlx_offset_param_B_29]));
    __xlx_B_29_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_29_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_29; ++i) {
    ((long long*)__xlx_apatb_param_B_29)[i*2+0] = __xlx_B_29_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_29)[i*2+1] = __xlx_B_29_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_30
  sc_bv<128>*__xlx_B_30_output_buffer = new sc_bv<128>[__xlx_size_param_B_30];
  for (int i = 0; i < __xlx_size_param_B_30; ++i) {
    char* start = (char*)(&(__xlx_B_30__input_buffer[__xlx_offset_param_B_30]));
    __xlx_B_30_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_30_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_30; ++i) {
    ((long long*)__xlx_apatb_param_B_30)[i*2+0] = __xlx_B_30_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_30)[i*2+1] = __xlx_B_30_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_B_31
  sc_bv<128>*__xlx_B_31_output_buffer = new sc_bv<128>[__xlx_size_param_B_31];
  for (int i = 0; i < __xlx_size_param_B_31; ++i) {
    char* start = (char*)(&(__xlx_B_31__input_buffer[__xlx_offset_param_B_31]));
    __xlx_B_31_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_B_31_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_B_31; ++i) {
    ((long long*)__xlx_apatb_param_B_31)[i*2+0] = __xlx_B_31_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_B_31)[i*2+1] = __xlx_B_31_output_buffer[i].range(127, 64).to_uint64();
  }
// print __xlx_apatb_param_scores
  sc_bv<128>*__xlx_scores_output_buffer = new sc_bv<128>[__xlx_size_param_scores];
  for (int i = 0; i < __xlx_size_param_scores; ++i) {
    char* start = (char*)(&(__xlx_scores__input_buffer[__xlx_offset_param_scores]));
    __xlx_scores_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_scores_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_scores; ++i) {
    ((long long*)__xlx_apatb_param_scores)[i*2+0] = __xlx_scores_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_scores)[i*2+1] = __xlx_scores_output_buffer[i].range(127, 64).to_uint64();
  }
}
