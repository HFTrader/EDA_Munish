// this is going to be auto-generated via template engine and then customized by IP supplier


#ifndef __SOBELFILTER_DRIVER_H__
#define __SOBELFILTER_DRIVER_H__

#include "ipconfig.h"

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;
    bool busy;
} SobelfilterIP_DriverInstance;


// API for SobelfilterIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() functions
void SobelfilterIP_Driver_intrInitialize(SobelfilterIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void SobelfilterIP_Driver_initialize(SobelfilterIP_DriverInstance *InstancePtr, SobelfilterIP_RegMap InitMode);
void SobelfilterIP_Driver_start(SobelfilterIP_DriverInstance *InstancePtr, SobelfilterIP_RegMap StartMode);
void SobelfilterIP_Driver_stop(SobelfilterIP_DriverInstance *InstancePtr, SobelfilterIP_RegMap StopMode);
bool SobelfilterIP_Driver_isBusy(SobelfilterIP_DriverInstance *InstancePtr);


// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













