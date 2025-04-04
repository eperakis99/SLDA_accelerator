// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL_BUS
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read)
//       bit 4  - ap_continue (Read/Write/SC)
//       bit 7  - auto_restart (Read/Write)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0  - enable ap_done interrupt (Read/Write)
//       bit 1  - enable ap_ready interrupt (Read/Write)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0  - ap_done (COR/TOW)
//       bit 1  - ap_ready (COR/TOW)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_AP_CTRL 0x0
#define XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_GIE     0x4
#define XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_IER     0x8
#define XMATRIX_MATRIX_MULT_STREAMING_CTRL_BUS_ADDR_ISR     0xc

