// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalculatecoefficients.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalculatecoefficients_CfgInitialize(XCalculatecoefficients *InstancePtr, XCalculatecoefficients_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalculatecoefficients_Start(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalculatecoefficients_IsDone(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalculatecoefficients_IsIdle(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalculatecoefficients_IsReady(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalculatecoefficients_EnableAutoRestart(XCalculatecoefficients *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCalculatecoefficients_DisableAutoRestart(XCalculatecoefficients *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_AP_CTRL, 0);
}

void XCalculatecoefficients_Set_lowerCutoff(XCalculatecoefficients *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_LOWERCUTOFF_DATA, Data);
}

u32 XCalculatecoefficients_Get_lowerCutoff(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_LOWERCUTOFF_DATA);
    return Data;
}

void XCalculatecoefficients_Set_upperCutoff(XCalculatecoefficients *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_UPPERCUTOFF_DATA, Data);
}

u32 XCalculatecoefficients_Get_upperCutoff(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_UPPERCUTOFF_DATA);
    return Data;
}

void XCalculatecoefficients_Set_samplingRate(XCalculatecoefficients *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_SAMPLINGRATE_DATA, Data);
}

u32 XCalculatecoefficients_Get_samplingRate(XCalculatecoefficients *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_SAMPLINGRATE_DATA);
    return Data;
}

void XCalculatecoefficients_Set_bram(XCalculatecoefficients *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_BRAM_DATA, (u32)(Data));
    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_BRAM_DATA + 4, (u32)(Data >> 32));
}

u64 XCalculatecoefficients_Get_bram(XCalculatecoefficients *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_BRAM_DATA);
    Data += (u64)XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_BRAM_DATA + 4) << 32;
    return Data;
}

void XCalculatecoefficients_InterruptGlobalEnable(XCalculatecoefficients *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_GIE, 1);
}

void XCalculatecoefficients_InterruptGlobalDisable(XCalculatecoefficients *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_GIE, 0);
}

void XCalculatecoefficients_InterruptEnable(XCalculatecoefficients *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER);
    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER, Register | Mask);
}

void XCalculatecoefficients_InterruptDisable(XCalculatecoefficients *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER);
    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCalculatecoefficients_InterruptClear(XCalculatecoefficients *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatecoefficients_WriteReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_ISR, Mask);
}

u32 XCalculatecoefficients_InterruptGetEnabled(XCalculatecoefficients *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_IER);
}

u32 XCalculatecoefficients_InterruptGetStatus(XCalculatecoefficients *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatecoefficients_ReadReg(InstancePtr->Control_BaseAddress, XCALCULATECOEFFICIENTS_CONTROL_ADDR_ISR);
}

