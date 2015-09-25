// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "Sobel_func.h"

// driver instances for Sobel_HA...the template engine knows that there could be 2 variations of ip subsystems (2 grip rules) performing sobel filtering in the architecture
Sobel_Rule1_DriverInstance Sobel_Rule1_Driver[SOBEL_NUM_GRIPRULE1_INSTANCES];


void Sobel_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // the template generator knows from the architecture how many sobel ip instances/subsystems are present in the
    // architecture and what are the HW IPs present in each instance...so it can generate a 1to1 mapping here with the config file to define drivers

    // for instance the template generator knows that 1st sobel instance defined in _config.h corresponds to rule1 and has SobelIP + VDMAIP in the subsystem
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.baseaddr = SOBEL_0_IP_BASEADDR;
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.intr_id = SOBEL_0_IP_INTRID;
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.busy = 0;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.baseaddr = SOBEL_0_VDMAIP_BASEADDR;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.intr_id = SOBEL_0_VDMAIP_INTRID;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
    Sobel_Rule1Driver_initialize(&Sobel_Rule1_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    // and so on.....
}


void EdgeDetection_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
#if SOBEL_NUM_INSTANCES == 0
	EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int idx;
    // seeing if sobel filtering for current captured frame can be done on any sobel rule1 system
    for (idx = 0; idx<SOBEL_NUM_GRIPRULE1_INSTANCES; idx++) {
    	if (Sobel_Rule1Driver_isBusy(&Sobel_Rule1_Driver[idx]) == 0) {
    		Sobel_Rule1Driver_start(&Sobel_Rule1_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    		while(Sobel_Rule1Driver_isBusy(&Sobel_Rule1_Driver[idx]) == 1);
    		return;
    	}
    }
    // and so on based on all grip rules supported

    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#endif
}






