// this is going to be auto-generated via template engine



#ifndef __VDMAIP_DRIVER_H__
#define __VDMAIP_DRIVER_H__

#include "VDMAIP_RegMap.h"
#include "xscugic.h"

#define bool unsigned char


typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;    
    bool busy;
} VDMAIP_DriverInstance;


// API to configure VDMA_IP
void VDMAIP_Driver_WriteReg(unsigned int addr, unsigned int mask, unsigned int value);
unsigned int VDMAIP_Driver_ReadReg(unsigned int addr);
//void VDMAIP_SetHAMode(VDMAIP_RegMap mode, unsigned int baseaddr);
void VDMAIP_Driver_initialize(VDMAIP_DriverInstance *InstancePtr, XScuGic *InterruptController, VDMAIP_RegMap InitMode);
void VDMAIP_Driver_start(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StartMode);
void VDMAIP_Driver_stop(VDMAIP_DriverInstance *InstancePtr, VDMAIP_RegMap StopMode);
bool VDMAIP_Driver_isBusy(VDMAIP_DriverInstance *InstancePtr);
void VDMAIP_Driver_ISR(void *baseaddr_p);




#endif 



// NOTE: everything seems to be auto-generatable!!



    
    
    
    
    
    
    
    
