// should be auto-generated


#ifndef __GRAYSCALEIP_RULE1_DRIVER_TEMPLATE_H__
#define __GRAYSCALEIP_RULE1_DRIVER_TEMPLATE_H__


#include "GrayscaleIP_VDMA_Driver.h"
#include "xscugic.h"


#define bool unsigned char

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    GRAYSCALEIP_VDMADriverInstance vdmaDriver;
    unsigned int intr_id;
} GrayscaleIPRule1DriverInstance;


typedef struct {
    unsigned int offset;
    unsigned int value;
    unsigned int mask;
} GrayscaleIPRule1RegType;



// register map for Grayscale IP peripheral registers
typedef struct {
	GrayscaleIPRule1RegType AP_CTRL;
	GrayscaleIPRule1RegType GIE;
	GrayscaleIPRule1RegType IER;
	GrayscaleIPRule1RegType ISR;
	GrayscaleIPRule1RegType ROWS_DATA;
	GrayscaleIPRule1RegType COLS_DATA;
} GrayscaleIPRule1RegMap;



// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
void GrayscaleIP_Rule1Driver_initialize(GrayscaleIPRule1DriverInstance *InstancePtr, XScuGic *InterruptController);
void GrayscaleIP_Rule1Driver_start(GrayscaleIPRule1DriverInstance *InstancePtr);
void GrayscaleIP_Rule1Driver_stop(GrayscaleIPRule1DriverInstance *InstancePtr);
bool GrayscaleIP_Rule1Driver_isBusy(GrayscaleIPRule1DriverInstance *InstancePtr);










#endif













