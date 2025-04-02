// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVEC_VEC_OP_STREAMING_H
#define XVEC_VEC_OP_STREAMING_H

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
#include "xvec_vec_op_streaming_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Bus_a_BaseAddress;
} XVec_vec_op_streaming_Config;
#endif

typedef struct {
    u64 Bus_a_BaseAddress;
    u32 IsReady;
} XVec_vec_op_streaming;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVec_vec_op_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVec_vec_op_streaming_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVec_vec_op_streaming_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVec_vec_op_streaming_ReadReg(BaseAddress, RegOffset) \
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
int XVec_vec_op_streaming_Initialize(XVec_vec_op_streaming *InstancePtr, u16 DeviceId);
XVec_vec_op_streaming_Config* XVec_vec_op_streaming_LookupConfig(u16 DeviceId);
int XVec_vec_op_streaming_CfgInitialize(XVec_vec_op_streaming *InstancePtr, XVec_vec_op_streaming_Config *ConfigPtr);
#else
int XVec_vec_op_streaming_Initialize(XVec_vec_op_streaming *InstancePtr, const char* InstanceName);
int XVec_vec_op_streaming_Release(XVec_vec_op_streaming *InstancePtr);
#endif

void XVec_vec_op_streaming_Start(XVec_vec_op_streaming *InstancePtr);
u32 XVec_vec_op_streaming_IsDone(XVec_vec_op_streaming *InstancePtr);
u32 XVec_vec_op_streaming_IsIdle(XVec_vec_op_streaming *InstancePtr);
u32 XVec_vec_op_streaming_IsReady(XVec_vec_op_streaming *InstancePtr);
void XVec_vec_op_streaming_EnableAutoRestart(XVec_vec_op_streaming *InstancePtr);
void XVec_vec_op_streaming_DisableAutoRestart(XVec_vec_op_streaming *InstancePtr);

void XVec_vec_op_streaming_Set_op(XVec_vec_op_streaming *InstancePtr, u32 Data);
u32 XVec_vec_op_streaming_Get_op(XVec_vec_op_streaming *InstancePtr);

void XVec_vec_op_streaming_InterruptGlobalEnable(XVec_vec_op_streaming *InstancePtr);
void XVec_vec_op_streaming_InterruptGlobalDisable(XVec_vec_op_streaming *InstancePtr);
void XVec_vec_op_streaming_InterruptEnable(XVec_vec_op_streaming *InstancePtr, u32 Mask);
void XVec_vec_op_streaming_InterruptDisable(XVec_vec_op_streaming *InstancePtr, u32 Mask);
void XVec_vec_op_streaming_InterruptClear(XVec_vec_op_streaming *InstancePtr, u32 Mask);
u32 XVec_vec_op_streaming_InterruptGetEnabled(XVec_vec_op_streaming *InstancePtr);
u32 XVec_vec_op_streaming_InterruptGetStatus(XVec_vec_op_streaming *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
