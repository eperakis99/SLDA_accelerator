// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of reset
//        bit 31~0 - reset[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of init
//        bit 31~0 - init[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of ready_r_i
//        bit 31~0 - ready_r_i[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of ready_r_o
//        bit 31~0 - ready_r_o[31:0] (Read)
// 0x2c : Control signal of ready_r_o
//        bit 0  - ready_r_o_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of complete
//        bit 31~0 - complete[31:0] (Read/Write)
// 0x34 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSLDA_FINAL_CTRL_ADDR_AP_CTRL        0x00
#define XSLDA_FINAL_CTRL_ADDR_GIE            0x04
#define XSLDA_FINAL_CTRL_ADDR_IER            0x08
#define XSLDA_FINAL_CTRL_ADDR_ISR            0x0c
#define XSLDA_FINAL_CTRL_ADDR_RESET_DATA     0x10
#define XSLDA_FINAL_CTRL_BITS_RESET_DATA     32
#define XSLDA_FINAL_CTRL_ADDR_INIT_DATA      0x18
#define XSLDA_FINAL_CTRL_BITS_INIT_DATA      32
#define XSLDA_FINAL_CTRL_ADDR_READY_R_I_DATA 0x20
#define XSLDA_FINAL_CTRL_BITS_READY_R_I_DATA 32
#define XSLDA_FINAL_CTRL_ADDR_READY_R_O_DATA 0x28
#define XSLDA_FINAL_CTRL_BITS_READY_R_O_DATA 32
#define XSLDA_FINAL_CTRL_ADDR_READY_R_O_CTRL 0x2c
#define XSLDA_FINAL_CTRL_ADDR_COMPLETE_DATA  0x30
#define XSLDA_FINAL_CTRL_BITS_COMPLETE_DATA  32

