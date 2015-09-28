// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware Sobel filtering on captured video

#include "Sobel_func.h"

// driver instances for Sobel_HA
Sobel_Rule1_DriverInstance Sobel_Rule1_Driver[SOBEL_NUM_GRIPRULE1_INSTANCES];

void Sobel_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime) {
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.baseaddr = SOBEL_0_SOBELIP_BASEADDR;
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.intr_id = SOBEL_0_SOBELIP_INTRID;
    Sobel_Rule1_Driver[0]._SobelIP_DriverInstance.busy = 0;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.baseaddr = SOBEL_0_VDMAIP_BASEADDR;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.intr_id = SOBEL_0_VDMAIP_INTRID;
    Sobel_Rule1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
    Sobel_Rule1Driver_initialize(&Sobel_Rule1_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);

}

void EdgeDetection_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime) {
#if SOBEL_NUM_INSTANCES == 0
    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
#else
    int idx;    
    // seeing if Sobel filtering for current captured frame can be done on any Sobel rule1 system    
    for (idx = 0; idx<SOBEL_NUM_GRIPRULE1_INSTANCES; idx++) {
        if (Sobel_Rule1Driver_isBusy(&Sobel_Rule1_Driver[idx]) == 0) {
            Sobel_Rule1Driver_start(&Sobel_Rule1_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
            while(Sobel_Rule1Driver_isBusy(&Sobel_Rule1_Driver[idx]) == 1);
            return;
        }
    }
    
EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);    
#endif
}









