#ifndef __ERODEFILTER1_DRIVER_H__
#define __ERODEFILTER1_DRIVER_H__

//#include "../../common.h" 
#include "../../../IP_SWDrivers/VDMAIP/drivers/VDMAIP_driver.h"
#include "../../../IP_SWDrivers/ErodefilterIP/drivers/ErodefilterIP_driver.h"

typedef struct {
    ErodefilterIP_DriverInstance _ErodefilterIP_DriverInstance;
    VDMAIP_DriverInstance _VDMAIP_DriverInstance;
} Subsystem_R2_DriverInstance;



typedef struct {
    ErodefilterIP_RegMap _ErodefilterIP_RegMap;
    VDMAIP_RegMap _VDMAIP_RegMap;
} Subsystem_R2_RegMap;



// API for ErodefilterIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function..for multiple IPs having their own SW implementations then they all should be passed on in a specific order
// NOTE: template driver functions would have no SW argument...this is the responsibility of IP supplier to pass these arguments incase they are needed at runtime

void Subsystem_R2_intrInitialize(Subsystem_R2_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void Subsystem_R2_initialize(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_InitMode);
void Subsystem_R2_start(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_R2_InitMode,
		unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height,
		unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Subsystem_R2_stop(Subsystem_R2_DriverInstance *InstancePtr, Subsystem_R2_RegMap Subsystem_R2_StopMode);
bool Subsystem_R2_isBusy(Subsystem_R2_DriverInstance *InstancePtr);

// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!


#endif
