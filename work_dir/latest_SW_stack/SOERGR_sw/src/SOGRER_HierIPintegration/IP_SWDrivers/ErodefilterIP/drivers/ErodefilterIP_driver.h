// this is going to be auto-generated via template engine and then customized by IP supplier


#ifndef __ERODEFILTER_DRIVER_H__
#define __ERODEFILTER_DRIVER_H__

#include "ipconfig.h"

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;
    bool busy;
} ErodefilterIP_DriverInstance;


// API for ErodefilterIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() functions
void ErodefilterIP_Driver_intrInitialize(ErodefilterIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void ErodefilterIP_Driver_initialize(ErodefilterIP_DriverInstance *InstancePtr, ErodefilterIP_RegMap InitMode);
void ErodefilterIP_Driver_start(ErodefilterIP_DriverInstance *InstancePtr, ErodefilterIP_RegMap StartMode);
void ErodefilterIP_Driver_stop(ErodefilterIP_DriverInstance *InstancePtr, ErodefilterIP_RegMap StopMode);
bool ErodefilterIP_Driver_isBusy(ErodefilterIP_DriverInstance *InstancePtr);


// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













