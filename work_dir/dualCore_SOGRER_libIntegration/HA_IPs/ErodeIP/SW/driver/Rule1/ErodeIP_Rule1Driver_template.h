// would be auto-generated


#ifndef __ERODEIP_RULE1DRIVER_TEMPLATE_H__
#define __ERODEIP_RULE1DRIVER_TEMPLATE_H__


#include "ErodeIP_VDMA_Driver_template.h"
#include "xscugic.h"

#define bool unsigned char


// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    ERODEIP_VDMADriverInstance vdmaDriver;
} ErodeIPRule1DriverInstance;


typedef struct {
    unsigned int offset;
    unsigned int value;
    unsigned int mask;
} ErodeIPRule1RegType;



// register map for Grayscale IP peripheral registers
typedef struct {
	ErodeIPRule1RegType AP_CTRL;
	ErodeIPRule1RegType GIE;
	ErodeIPRule1RegType IER;
	ErodeIPRule1RegType ISR;
	ErodeIPRule1RegType ROWS_DATA;
	ErodeIPRule1RegType COLS_DATA;
} ErodeIPRule1RegMap;



// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
void ErodeIP_Rule1Driver_initialize(ErodeIPRule1DriverInstance *InstancePtr, XScuGic *InterruptController);
void ErodeIP_Rule1Driver_start(ErodeIPRule1DriverInstance *InstancePtr);
void ErodeIP_Rule1Driver_stop(ErodeIPRule1DriverInstance *InstancePtr);
bool ErodeIP_Rule1Driver_isBusy(ErodeIPRule1DriverInstance *InstancePtr);

#endif










