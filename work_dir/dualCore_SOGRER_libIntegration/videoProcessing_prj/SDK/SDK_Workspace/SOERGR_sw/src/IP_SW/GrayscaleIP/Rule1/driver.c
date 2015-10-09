#include "driver.h"

Grayscale_R1_RegMap Grayscale_R1_InitMode = {
                ._GrayscaleIP_RegMap = {
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
           
           
Grayscale_R1_RegMap Grayscale_R1_StartMode = {
                ._GrayscaleIP_RegMap = {
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
           
Grayscale_R1_RegMap Grayscale_R1_StopMode = {
                ._GrayscaleIP_RegMap = {
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



void Grayscale_R1_initialize(Grayscale_R1_DriverInstance *InstancePtr, IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // initializing the GrayscaleIP
	Grayscale_R1_InitMode._GrayscaleIP_RegMap.ROWS_DATA.mask = 0xffffffff;
	Grayscale_R1_InitMode._GrayscaleIP_RegMap.ROWS_DATA.value = verticalActiveTime;
	Grayscale_R1_InitMode._GrayscaleIP_RegMap.COLS_DATA.mask = 0xffffffff;
	Grayscale_R1_InitMode._GrayscaleIP_RegMap.COLS_DATA.value = horizontalActiveTime;
    GrayscaleIP_Driver_initialize(&InstancePtr->_GrayscaleIP_DriverInstance, InterruptController, Grayscale_R1_InitMode._GrayscaleIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    RegWrite(InstancePtr->_GrayscaleIP_DriverInstance.baseaddr + 0x0, 0x00000081, 0x81);
    
    // initializing the VDMAIP
    VDMAIP_Driver_initialize(&InstancePtr->_VDMAIP_DriverInstance, InterruptController, Grayscale_R1_InitMode._VDMAIP_RegMap);
}



void Grayscale_R1_start(Grayscale_R1_DriverInstance *InstancePtr, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// starting the GrayscaleIP
	GrayscaleIP_Driver_start(&InstancePtr->_GrayscaleIP_DriverInstance, Grayscale_R1_StartMode._GrayscaleIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);

	// starting the VDMAIP
	VDMAIP_Driver_start(&InstancePtr->_VDMAIP_DriverInstance, Grayscale_R1_StartMode._VDMAIP_RegMap);
	// MEM2DEV
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x5c, 0xffffffff, ImgIn_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x60, 0xffffffff, ImgIn_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x64, 0xffffffff, ImgIn_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x58, 0xffffffff, horizontalActiveTime*4);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x54, 0xffffffff, horizontalActiveTime*4);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0x50, 0xffffffff, verticalActiveTime);
	// DEV2MEM
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xac, 0xffffffff, ImgOut_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb0, 0xffffffff, ImgOut_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xb4, 0xffffffff, ImgOut_BaseAddr);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa8, 0xffffffff, horizontalActiveTime*4);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa4, 0xffffffff, horizontalActiveTime*4);
	RegWrite(InstancePtr->_VDMAIP_DriverInstance.baseaddr + 0xa0, 0xffffffff, verticalActiveTime);
}



void Grayscale_R1_stop(Grayscale_R1_DriverInstance *InstancePtr) {
	// stopping GrayscaleIP
	GrayscaleIP_Driver_stop(&InstancePtr->_GrayscaleIP_DriverInstance, Grayscale_R1_StopMode._GrayscaleIP_RegMap);

	// stopping VDMAIP
	VDMAIP_Driver_stop(&InstancePtr->_VDMAIP_DriverInstance, Grayscale_R1_StopMode._VDMAIP_RegMap);
}



bool Grayscale_R1_isBusy(Grayscale_R1_DriverInstance *InstancePtr) {
	return VDMAIP_Driver_isBusy(&InstancePtr->_VDMAIP_DriverInstance);
}










