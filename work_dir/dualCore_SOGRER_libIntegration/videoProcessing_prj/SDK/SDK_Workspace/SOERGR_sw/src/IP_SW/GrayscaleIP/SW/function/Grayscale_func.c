// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "Grayscale_func.h"

// driver instances for Grayscale_HA...the template engine knows that there could be 2 variations of ip subsystems (2 grip rules) performing grayscale filtering in the architecture
Grayscale_Rule1_DriverInstance Grayscale_Rule1_Driver[GRAYSCALE_NUM_GRIPRULE1_INSTANCES];
Grayscale_Rule2_DriverInstance Grayscale_Rule2_Driver[GRAYSCALE_NUM_GRIPRULE2_INSTANCES];


void Grayscale_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    // the template generator knows from the architecture how many grayscale ip instances/subsystems are present in the
    // architecture and what are the HW IPs present in each instance...so it can generate a 1to1 mapping here with the config file to define drivers

    // for instance the template generator knows that 1st grayscale instance defined in _config.h corresponds to rule1 and has GrayscaleIP + VDMAIP in the subsystem
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = GRAYSCALE_0_IP_BASEADDR;
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.intr_id = GRAYSCALE_0_IP_INTRID;
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.baseaddr = GRAYSCALE_0_VDMAIP_BASEADDR;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.intr_id = GRAYSCALE_0_VDMAIP_INTRID;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
    Grayscale_Rule1Driver_initialize(&Grayscale_Rule1_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);

    // similarly for this specific GRIP architecture it knows that there is 2nd instance for grayscale corresponding to rule2 that only has grayscale ip in it
    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = GRAYSCALE_1_IP_BASEADDR;
    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.intr_id = GRAYSCALE_1_IP_INTRID;
    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;
    Grayscale_Rule2Driver_initialize(&Grayscale_Rule2_Driver[0], InterruptController);

    // and so on.....
}


void ConvToGray_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
#if GRAYSCALE_NUM_INSTANCES == 0
    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int idx;
    // seeing if grayscale filtering for current captured frame can be done on any grayscale rule1 system
    for (idx = 0; idx<GRAYSCALE_NUM_GRIPRULE1_INSTANCES; idx++) {
    	if (Grayscale_Rule1Driver_isBusy(&Grayscale_Rule1_Driver[idx]) == 0) {
    		Grayscale_Rule1Driver_start(&Grayscale_Rule1_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    		while(Grayscale_Rule1Driver_isBusy(&Grayscale_Rule1_Driver[idx]) == 1);
    		return;
    	}
    }
    // seeing if grayscale filtering for current captured frame can be done on any grayscale rule2 system
    for (idx = 0; idx<GRAYSCALE_NUM_GRIPRULE2_INSTANCES; idx++) {
    	if (Grayscale_Rule2Driver_isBusy(&Grayscale_Rule2_Driver[idx]) == 0) {
    		Grayscale_Rule2Driver_start(&Grayscale_Rule2_Driver[idx]);
    		while(Grayscale_Rule2Driver_isBusy(&Grayscale_Rule2_Driver[idx]) == 1);
    		return;
    	}
    }
    // and so on based on all grip rules supported

    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#endif
}






