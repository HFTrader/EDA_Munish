// this is going to be auto-generated via template engine



#ifndef __VDMA_DRIVER_H__
#define __VDMA_DRIVER_H__

#include "ipconfig.h"

#define bool unsigned char

typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;    
    bool busy;
} VDMAIP_DriverInstance;


// API to configure VDMA_IP
void VDMAIP_Driver_intrInitialize(VDMAIP_DriverInstance *InstancePtr, IntCntrl_t *InterruptController);
void VDMAIP_Driver_initialize(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap InitMode);
void VDMAIP_Driver_start(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StartMode);
void VDMAIP_Driver_stop(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StopMode);
bool VDMAIP_Driver_isBusy(VDMAIP_DriverInstance *InstancePtr);




#endif 



// NOTE: everything seems to be auto-generatable!!



    
    
    
    
    
    
    
    
