// would be auto-generated


#ifndef __SOBELIP_RULE1DRIVER_TEMPLATE_H__
#define __SOBELIP_RULE1DRIVER_TEMPLATE_H__


#include "SobelIP_VDMA_Driver_template.h"
#include "xscugic.h"

#define bool unsigned char


// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    SOBELIP_VDMADriverInstance vdmaDriver;
} SobelIPRule1DriverInstance;


typedef struct {
    unsigned int offset;
    unsigned int value;
    unsigned int mask;
} SobelIPRule1RegType;



// register map for Grayscale IP peripheral registers
typedef struct {
	SobelIPRule1RegType AP_CTRL;
	SobelIPRule1RegType GIE;
	SobelIPRule1RegType IER;
	SobelIPRule1RegType ISR;
	SobelIPRule1RegType ROWS_DATA;
	SobelIPRule1RegType COLS_DATA;
} SobelIPRule1RegMap;



// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
void SobelIP_Rule1Driver_initialize(SobelIPRule1DriverInstance *InstancePtr, XScuGic *InterruptController);
void SobelIP_Rule1Driver_start(SobelIPRule1DriverInstance *InstancePtr);
void SobelIP_Rule1Driver_stop(SobelIPRule1DriverInstance *InstancePtr);
bool SobelIP_Rule1Driver_isBusy(SobelIPRule1DriverInstance *InstancePtr);

#endif










