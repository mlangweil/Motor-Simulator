// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfirtop.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFirtop_CfgInitialize(XFirtop *InstancePtr, XFirtop_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFirtop_Set_bram(XFirtop *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFirtop_WriteReg(InstancePtr->Control_BaseAddress, XFIRTOP_CONTROL_ADDR_BRAM_DATA, (u32)(Data));
    XFirtop_WriteReg(InstancePtr->Control_BaseAddress, XFIRTOP_CONTROL_ADDR_BRAM_DATA + 4, (u32)(Data >> 32));
}

u64 XFirtop_Get_bram(XFirtop *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFirtop_ReadReg(InstancePtr->Control_BaseAddress, XFIRTOP_CONTROL_ADDR_BRAM_DATA);
    Data += (u64)XFirtop_ReadReg(InstancePtr->Control_BaseAddress, XFIRTOP_CONTROL_ADDR_BRAM_DATA + 4) << 32;
    return Data;
}

