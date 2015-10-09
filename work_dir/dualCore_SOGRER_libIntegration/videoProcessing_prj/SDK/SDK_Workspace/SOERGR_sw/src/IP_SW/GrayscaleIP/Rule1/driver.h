#ifndef __GRAYSCALE1_DRIVER_H__
#define __GRAYSCALE1_DRIVER_H__

#include "../../common.h"

#include "../base/base_driver.h"
#include "../../VDMAIP/base/base_driver.h"

typedef struct {
    GrayscaleIP_DriverInstance _GrayscaleIP_DriverInstance;
    VDMAIP_DriverInstance _VDMAIP_DriverInstance;
} Grayscale_R1_DriverInstance;



typedef struct {
    GrayscaleIP_RegMap _GrayscaleIP_RegMap;
    VDMAIP_RegMap _VDMAIP_RegMap;
} Grayscale_R1_RegMap;



// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function..for multiple IPs having their own SW implementations then they all should be passed on in a specific order
// NOTE: template driver functions would have no SW argument...this is the responsibility of IP supplier to pass these arguments incase they are needed at runtime

void Grayscale_R1_initialize(Grayscale_R1_DriverInstance *InstancePtr, IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Grayscale_R1_start(Grayscale_R1_DriverInstance *InstancePtr, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Grayscale_R1_stop(Grayscale_R1_DriverInstance *InstancePtr);
bool Grayscale_R1_isBusy(Grayscale_R1_DriverInstance *InstancePtr);

// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













