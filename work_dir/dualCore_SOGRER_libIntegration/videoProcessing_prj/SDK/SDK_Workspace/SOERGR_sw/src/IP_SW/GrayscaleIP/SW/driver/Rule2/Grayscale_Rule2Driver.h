// this file is going to be auto-generated..it will get the info from GRIP informing this module of the presence of Grayscale IP in the IP subsystem

// this module would then act as a driver for the IP subsystem providing low level functions like _init(), _start(), _stop(), _isBusy() etc using the corresponding
// functions of the individual drivers which are already generated...the template will be auto-generated and will be customized later by the IP supplier

#ifndef __GRAYSCALE_RULE2_DRIVER_H__
#define __GRAYSCALE_RULE2_DRIVER_H__

// NOTE: the template generator using info from GRIP knows about the presence of GrayscaleIP in the IP subsystem corresponding to this rule in the final architecture
// NOTE: the exact paths to these base IP drivers are to be configurable in the template generator
#include "../Base/GrayscaleIP_Driver.h"

// NOTE: need the interrupt controller which is platform specific and will be provided in template generator..again this is configurable targeting a specific platform
#include "xscugic.h"


#define bool unsigned char


typedef struct {
    GrayscaleIP_DriverInstance _GrayscaleIP_DriverInstance;
} Grayscale_Rule2_DriverInstance;



typedef struct {
    GrayscaleIP_RegMap _GrayscaleIP_RegMap;
} Grayscale_Rule2_RegMap;



// API for GrayscaleIP_Driver to use if this rule is applied by GRIP
// NOTE: if any of the functions requires runtime info then their prototype should be matched with _SW() function..for multiple IPs having their own SW implementations then they all should be passed on in a specific order
// NOTE: template driver functions would have no SW argument...this is the responsibility of IP supplier to pass these arguments incase they are needed at runtime

void Grayscale_Rule2Driver_initialize(Grayscale_Rule2_DriverInstance *InstancePtr, XScuGic *InterruptController);
void Grayscale_Rule2Driver_start(Grayscale_Rule2_DriverInstance *InstancePtr);
void Grayscale_Rule2Driver_stop(Grayscale_Rule2_DriverInstance *InstancePtr);
bool Grayscale_Rule2Driver_isBusy(Grayscale_Rule2_DriverInstance *InstancePtr);

// NOTE: for now _stop(), _isBusy() are not expected to take in any realtime info from SW so they have no arguments but if they need it in future then they should have same arguments as that of _initialize(), _start() methods to make the job of code-generator easier!!








#endif













