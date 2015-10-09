// DUMMY IMPLEMENTATION just to verify that embedded SW is able to handle multiple GRIP rules for Grayscale filter......doesnt actually do Grayscale filtering....maybe later implement this if needed

#include "driver.h"    

// NOTE: the value maps in the following are got using IP-Xact descriptions from GRIP and individual IPs
// NOTE: these are modified by IP supplier to perform the desired functionality

Grayscale_R0_RegMap Grayscale_R0_InitMode = {
                ._GrayscaleIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
										.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
										.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
									  }
           };


Grayscale_R0_RegMap Grayscale_R0_StartMode = {
                ._GrayscaleIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
										.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
										.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
									  }
           };

Grayscale_R0_RegMap Grayscale_R0_StopMode = {
                ._GrayscaleIP_RegMap = {
										.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
										.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
										.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
										.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
										.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
										.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
									  }
           };



void Grayscale_R0_initialize(Grayscale_R0_DriverInstance *InstancePtr, IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // initializing the GrayscaleIP
    GrayscaleIP_Driver_initialize(&InstancePtr->_GrayscaleIP_DriverInstance, InterruptController, Grayscale_R0_InitMode._GrayscaleIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
}



void Grayscale_R0_start(Grayscale_R0_DriverInstance *InstancePtr, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// starting the GrayscaleIP
	GrayscaleIP_Driver_start(&InstancePtr->_GrayscaleIP_DriverInstance, Grayscale_R0_StartMode._GrayscaleIP_RegMap, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
}



void Grayscale_R0_stop(Grayscale_R0_DriverInstance *InstancePtr) {
	// stopping GrayscaleIP
	GrayscaleIP_Driver_stop(&InstancePtr->_GrayscaleIP_DriverInstance, Grayscale_R0_StopMode._GrayscaleIP_RegMap);
}



bool Grayscale_R0_isBusy(Grayscale_R0_DriverInstance *InstancePtr) {
	//return GrayscaleIP_Driver_isBusy(&InstancePtr->_GrayscaleIP_DriverInstance);

	// designing this to be always busy!!
	return 1;
}










