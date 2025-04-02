// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_vec_vec_op_streaming (
char op,
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&vec1),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&vec2),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&vec_out));
