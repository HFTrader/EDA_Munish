// this is going to be auto-generated via template engine and then customized by IP supplier


#ifndef __ERODEIP_DRIVER_H__
#define __ERODEIP_DRIVER_H__

#include "ErodeIP_RegMap.h"
#include "xscugic.h"

#define bool unsigned char

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;
    bool busy;
} ErodeIP_DriverInstance;


// API for ErodeIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function
void ErodeIP_Driver_WriteReg(unsigned int addr, unsigned int mask, unsigned int value);
unsigned int ErodeIP_Driver_ReadReg(unsigned int addr);
void ErodeIP_Driver_initialize(ErodeIP_DriverInstance *InstancePtr, XScuGic *InterruptController, ErodeIP_RegMap InitMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void ErodeIP_Driver_start(ErodeIP_DriverInstance *InstancePtr, ErodeIP_RegMap StartMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void ErodeIP_Driver_stop(ErodeIP_DriverInstance *InstancePtr, ErodeIP_RegMap StopMode);
bool ErodeIP_Driver_isBusy(ErodeIP_DriverInstance *InstancePtr);
void ErodeIP_Driver_ISR(void *baseaddr_p);


// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













