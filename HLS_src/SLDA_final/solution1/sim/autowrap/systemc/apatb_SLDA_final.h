// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_SLDA_final (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&mu_in),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&feature_vector1),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&feature_vector2),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&Lambda),
volatile void* scores,
int reset,
int init,
volatile void* ready,
volatile void* complete);
