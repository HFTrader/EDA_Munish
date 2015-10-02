// this is going to be auto-generated via template engine and then customized by IP supplier


#ifndef __SOBELIP_DRIVER_H__
#define __SOBELIP_DRIVER_H__

#include "SobelIP_RegMap.h"
#include "xscugic.h"

#define bool unsigned char

// all the hardware related info needed by the driver functions should be provided in this struct
typedef struct {
    unsigned int baseaddr;
    unsigned int intr_id;
    bool busy;
} SobelIP_DriverInstance;


// API for SobelIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function

void SobelIP_Driver_initialize(SobelIP_DriverInstance *InstancePtr, XScuGic *InterruptController, SobelIP_RegMap InitMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void SobelIP_Driver_start(SobelIP_DriverInstance *InstancePtr, SobelIP_RegMap StartMode, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void SobelIP_Driver_stop(SobelIP_DriverInstance *InstancePtr, SobelIP_RegMap StopMode);
bool SobelIP_Driver_isBusy(SobelIP_DriverInstance *InstancePtr);


// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













