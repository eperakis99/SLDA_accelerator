// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSLDA_FINAL_H
#define XSLDA_FINAL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xslda_final_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XSlda_final_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XSlda_final;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSlda_final_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSlda_final_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSlda_final_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSlda_final_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSlda_final_Initialize(XSlda_final *InstancePtr, u16 DeviceId);
XSlda_final_Config* XSlda_final_LookupConfig(u16 DeviceId);
int XSlda_final_CfgInitialize(XSlda_final *InstancePtr, XSlda_final_Config *ConfigPtr);
#else
int XSlda_final_Initialize(XSlda_final *InstancePtr, const char* InstanceName);
int XSlda_final_Release(XSlda_final *InstancePtr);
#endif

void XSlda_final_Start(XSlda_final *InstancePtr);
u32 XSlda_final_IsDone(XSlda_final *InstancePtr);
u32 XSlda_final_IsIdle(XSlda_final *InstancePtr);
u32 XSlda_final_IsReady(XSlda_final *InstancePtr);
void XSlda_final_EnableAutoRestart(XSlda_final *InstancePtr);
void XSlda_final_DisableAutoRestart(XSlda_final *InstancePtr);

void XSlda_final_Set_reset(XSlda_final *InstancePtr, u32 Data);
u32 XSlda_final_Get_reset(XSlda_final *InstancePtr);
void XSlda_final_Set_init(XSlda_final *InstancePtr, u32 Data);
u32 XSlda_final_Get_init(XSlda_final *InstancePtr);
void XSlda_final_Set_ready_r_i(XSlda_final *InstancePtr, u32 Data);
u32 XSlda_final_Get_ready_r_i(XSlda_final *InstancePtr);
u32 XSlda_final_Get_ready_r_o(XSlda_final *InstancePtr);
u32 XSlda_final_Get_ready_r_o_vld(XSlda_final *InstancePtr);
void XSlda_final_Set_complete(XSlda_final *InstancePtr, u32 Data);
u32 XSlda_final_Get_complete(XSlda_final *InstancePtr);

void XSlda_final_InterruptGlobalEnable(XSlda_final *InstancePtr);
void XSlda_final_InterruptGlobalDisable(XSlda_final *InstancePtr);
void XSlda_final_InterruptEnable(XSlda_final *InstancePtr, u32 Mask);
void XSlda_final_InterruptDisable(XSlda_final *InstancePtr, u32 Mask);
void XSlda_final_InterruptClear(XSlda_final *InstancePtr, u32 Mask);
u32 XSlda_final_InterruptGetEnabled(XSlda_final *InstancePtr);
u32 XSlda_final_InterruptGetStatus(XSlda_final *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
