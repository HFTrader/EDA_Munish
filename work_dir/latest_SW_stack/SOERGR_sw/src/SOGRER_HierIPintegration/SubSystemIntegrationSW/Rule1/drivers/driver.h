#ifndef __SOBELFILTER1_DRIVER_H__
#define __SOBELFILTER1_DRIVER_H__

//#include "../../common.h" 
#include "../../../IP_SWDrivers/VDMAIP/drivers/VDMAIP_driver.h"
#include "../../../IP_SWDrivers/SobelfilterIP/drivers/SobelfilterIP_driver.h"

typedef struct {
    SobelfilterIP_DriverInstance _SobelfilterIP_DriverInstance;
    VDMAIP_DriverInstance _VDMAIP_DriverInstance;
} Subsystem_R1_DriverInstance;



typedef struct {
    SobelfilterIP_RegMap _SobelfilterIP_RegMap;
    VDMAIP_RegMap _VDMAIP_RegMap;
} Subsystem_R1_RegMap;



// API for SobelfilterIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function..for multiple IPs having their own SW implementations then they all should be passed on in a specific order
// NOTE: template driver functions would have no SW argument...this is the responsibility of IP supplier to pass these arguments incase they are needed at runtime

void Subsystem_R1_intrInitialize(Subsystem_R1_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void Subsystem_R1_initialize(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_InitMode);
void Subsystem_R1_start(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_R1_InitMode,
		unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height,
		unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Subsystem_R1_stop(Subsystem_R1_DriverInstance *InstancePtr, Subsystem_R1_RegMap Subsystem_R1_StopMode);
bool Subsystem_R1_isBusy(Subsystem_R1_DriverInstance *InstancePtr);

// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!


#endif
