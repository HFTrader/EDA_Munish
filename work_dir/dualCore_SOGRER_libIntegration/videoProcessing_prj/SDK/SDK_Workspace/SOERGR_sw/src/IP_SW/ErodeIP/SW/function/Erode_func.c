// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "Erode_func.h"

// driver instances for Erode_HA...the template engine knows that there could be 2 variations of ip subsystems (2 grip rules) performing erode filtering in the architecture
Erode_Rule1_DriverInstance Erode_Rule1_Driver[ERODE_NUM_GRIPRULE1_INSTANCES];


void Erode_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // the template generator knows from the architecture how many erode ip instances/subsystems are present in the
    // architecture and what are the HW IPs present in each instance...so it can generate a 1to1 mapping here with the config file to define drivers

    // for instance the template generator knows that 1st erode instance defined in _config.h corresponds to rule1 and has ErodeIP + VDMAIP in the subsystem
    Erode_Rule1_Driver[0]._ErodeIP_DriverInstance.baseaddr = ERODE_0_IP_BASEADDR;
    Erode_Rule1_Driver[0]._ErodeIP_DriverInstance.intr_id = ERODE_0_IP_INTRID;
    Erode_Rule1_Driver[0]._ErodeIP_DriverInstance.busy = 0;
    Erode_Rule1_Driver[0]._VDMAIP_DriverInstance.baseaddr = ERODE_0_VDMAIP_BASEADDR;
    Erode_Rule1_Driver[0]._VDMAIP_DriverInstance.intr_id = ERODE_0_VDMAIP_INTRID;
    Erode_Rule1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
    Erode_Rule1Driver_initialize(&Erode_Rule1_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    // and so on.....
}


void Erode_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
#if ERODE_NUM_INSTANCES == 0
    Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int idx;
    // seeing if erode filtering for current captured frame can be done on any erode rule1 system
    for (idx = 0; idx<ERODE_NUM_GRIPRULE1_INSTANCES; idx++) {
    	if (Erode_Rule1Driver_isBusy(&Erode_Rule1_Driver[idx]) == 0) {
    		Erode_Rule1Driver_start(&Erode_Rule1_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    		while(Erode_Rule1Driver_isBusy(&Erode_Rule1_Driver[idx]) == 1);
    		return;
    	}
    }
    // and so on based on all grip rules supported

    Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#endif
}






