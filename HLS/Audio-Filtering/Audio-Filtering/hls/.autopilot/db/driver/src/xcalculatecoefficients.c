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

