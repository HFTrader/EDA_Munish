// this driver corresponds to Erode IP configuration corresponding to GRIP Rule 1 i.e Erode IP integrated with AXI-VDMA 
// it is generated by modifying the auto-generated template

#include "Erode_Rule1Driver.h"
#include "xil_assert.h"

// NOTE: the value maps in the following are got using IP-Xact descriptions from GRIP and individual IPs 
// NOTE: these are modified by IP supplier to perform the desired functionality

Erode_Rule1_RegMap Erode_Rule1_InitMode = {
                ._ErodeIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
										.GIE = {.offset = 0x04, .mask = 0x00000001, .value = 0x00000000},
										.IER = {.offset = 0x08, .mask = 0x00000001, .value = 0x00000000},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}   
									  },
									  
			   ._VDMAIP_RegMap = {
								    .MM2S_DMACR = {.offset = 0x00, .mask = 0x00000004, .value = 0x00000004},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_DMACR = {.offset = 0x30, .mask = 0x00000004, .value = 0x00000004},
								    .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								    //      ...     //  NOTE: not shown here for simplicity
							    }
           };
           
           
Erode_Rule1_RegMap Erode_Rule1_StartMode = {
                ._ErodeIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
										.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
										.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}   
									  },
									  
			   ._VDMAIP_RegMap = {
								    .MM2S_DMACR = {.offset = 0x00, .mask = 0xffffffff, .value = 0x00011003},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_DMACR = {.offset = 0x30, .mask = 0xffffffff, .value = 0x00011003},
								    .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								    //      ...     //  NOTE: not shown here for simplicity
							    }
           };
           
Erode_Rule1_RegMap Erode_Rule1_StopMode = {
                ._ErodeIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000001, .value = 0x00000000},
										.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
										.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}   
									  },
									  
			   ._VDMAIP_RegMap = {
								    .MM2S_DMACR = {.offset = 0x00, .mask = 0x00000001, .value = 0x00000000},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_DMACR = {.offset = 0x30, .mask = 0x00000001, .value = 0x00000000},
								    .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								    .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								    //      ...     //  NOTE: not shown here for simplicity
								    .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								    .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								    //      ...     //  NOTE: not shown here for simplicity
							    }
           };



void Erode_Rule1Driver_initialize(Erode_Rule1_DriverInstance *InstancePtr, XScuGic *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // initializing the ErodeIP
    Erode_Rule1_InitMode._ErodeIP_RegMap.ROWS_DATA.mask = 0xffffffff;
    Erode_Rule1_InitMode._ErodeIP_RegMap.ROWS_DATA.value = verticalActiveTime;
    Erode_Rule1_InitMode._ErodeIP_RegMap.COLS_DATA.mask = 0xffffffff;
    Erode_Rule1_InitMode._ErodeIP_RegMap.COLS_DATA.value = horizontalActiveTime;
    ErodeIP_Driver_initialize(&InstancePtr->_ErodeIP_DriverInstance, InterruptController, Erode_Rule1_InitMode._ErodeIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    RegWrite(InstancePtr->_ErodeIP_DriverInstance.baseaddr + 0x0, 0x00000081, 0x81);
    
    // initializing the VDMAIP
    VDMAIP_Driver_initialize(&InstancePtr->_VDMAIP_DriverInstance, InterruptController, Erode_Rule1_InitMode._VDMAIP_RegMap);
}



void Erode_Rule1Driver_start(Erode_Rule1_DriverInstance *InstancePtr, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// starting the ErodeIP
	ErodeIP_Driver_start(&InstancePtr->_ErodeIP_DriverInstance, Erode_Rule1_StartMode._ErodeIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);

	// starting the VDMAIP
	VDMAIP_Driver_start(&InstancePtr->_VDMAIP_DriverInstance, Erode_Rule1_StartMode._VDMAIP_RegMap);
	// MEM2DEV
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x5c, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x60, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x64, 0xffffffff, ImgIn_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x58, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x54, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x50, 0xffffffff, verticalActiveTime);
	// DEV2MEM
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xac, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb0, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb4, 0xffffffff, ImgOut_BaseAddr);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa8, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa4, 0xffffffff, horizontalActiveTime*4);
	VDMAIP_Driver_WriteReg(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa0, 0xffffffff, verticalActiveTime);
}



void Erode_Rule1Driver_stop(Erode_Rule1_DriverInstance *InstancePtr) {
	// stopping ErodeIP
	ErodeIP_Driver_stop(&InstancePtr->_ErodeIP_DriverInstance, Erode_Rule1_StopMode._ErodeIP_RegMap);

	// stopping VDMAIP
	VDMAIP_Driver_stop(&InstancePtr->_VDMAIP_DriverInstance, Erode_Rule1_StopMode._VDMAIP_RegMap);
}



bool Erode_Rule1Driver_isBusy(Erode_Rule1_DriverInstance *InstancePtr) {
	return VDMAIP_Driver_isBusy(&InstancePtr->_VDMAIP_DriverInstance);
}










