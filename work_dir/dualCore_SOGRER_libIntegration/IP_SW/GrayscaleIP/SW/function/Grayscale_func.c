// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware Grayscale filtering on captured video

#include "Grayscale_func.h"

// driver instances for Grayscale_HA
Grayscale_Rule1_DriverInstance Grayscale_Rule1_Driver[GRAYSCALE_NUM_GRIPRULE1_INSTANCES];
Grayscale_Rule2_DriverInstance Grayscale_Rule2_Driver[GRAYSCALE_NUM_GRIPRULE2_INSTANCES];

void Grayscale_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = GRAYSCALE_0_GRAYSCALEIP_BASEADDR;
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.intr_id = GRAYSCALE_0_GRAYSCALEIP_INTRID;
    Grayscale_Rule1_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.baseaddr = GRAYSCALE_0_VDMAIP_BASEADDR;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.intr_id = GRAYSCALE_0_VDMAIP_INTRID;
    Grayscale_Rule1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
    Grayscale_Rule1Driver_initialize(&Grayscale_Rule1_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);

    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = GRAYSCALE_1_GRAYSCALEIP_BASEADDR;
    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.intr_id = GRAYSCALE_1_GRAYSCALEIP_INTRID;
    Grayscale_Rule2_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;
    Grayscale_Rule2Driver_initialize(&Grayscale_Rule2_Driver[0], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);

}

void ConvToGray_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
#if GRAYSCALE_NUM_INSTANCES == 0
    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int idx;    
    // seeing if Grayscale filtering for current captured frame can be done on any Grayscale rule1 system    
    for (idx = 0; idx<GRAYSCALE_NUM_GRIPRULE1_INSTANCES; idx++) {
        if (Grayscale_Rule1Driver_isBusy(&Grayscale_Rule1_Driver[idx]) == 0) {
            Grayscale_Rule1Driver_start(&Grayscale_Rule1_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
            while(Grayscale_Rule1Driver_isBusy(&Grayscale_Rule1_Driver[idx]) == 1);
            return;
        }
    }
    
    // seeing if Grayscale filtering for current captured frame can be done on any Grayscale rule2 system    
    for (idx = 0; idx<GRAYSCALE_NUM_GRIPRULE2_INSTANCES; idx++) {
        if (Grayscale_Rule2Driver_isBusy(&Grayscale_Rule2_Driver[idx]) == 0) {
            Grayscale_Rule2Driver_start(&Grayscale_Rule2_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
            while(Grayscale_Rule2Driver_isBusy(&Grayscale_Rule2_Driver[idx]) == 1);
            return;
        }
    }
    
ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);    
#endif
}









