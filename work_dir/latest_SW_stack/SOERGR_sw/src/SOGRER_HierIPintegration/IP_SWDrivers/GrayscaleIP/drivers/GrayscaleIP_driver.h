// this is going to be auto-generated via template engine and then customized by IP supplier


#ifndef __GRAYSCALE_DRIVER_H__
#define __GRAYSCALE_DRIVER_H__

#include "ipconfig.h"

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;
    bool busy;
} GrayscaleIP_DriverInstance;


// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() functions
void GrayscaleIP_Driver_intrInitialize(GrayscaleIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void GrayscaleIP_Driver_initialize(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap InitMode);
void GrayscaleIP_Driver_start(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap StartMode);
void GrayscaleIP_Driver_stop(GrayscaleIP_DriverInstance *InstancePtr, GrayscaleIP_RegMap StopMode);
bool GrayscaleIP_Driver_isBusy(GrayscaleIP_DriverInstance *InstancePtr);


// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













