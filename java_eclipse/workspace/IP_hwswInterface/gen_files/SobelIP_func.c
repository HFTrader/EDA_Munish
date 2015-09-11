// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "SobelIP_func.h"

// driver instances for Grayscale_HA
#if SOBELIP_NUM_GRIPRULE1_INSTANCES != 0
    SobelIPRule1DriverInstance SobelIPRule1Driver[SOBELIP_NUM_GRIPRULE1_INSTANCES];
#endif

void SobelIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime) {

#if SOBELIP_NUM_INSTANCES != 0
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<SOBELIP_NUM_INSTANCES; ip_instance_idx++) {
#if SOBELIP_NUM_GRIPRULE1_INSTANCES != 0    
		if (SOBELIP_INFO[ip_instance_idx].grip_rule == 1) {
			SobelIPRule1Driver[rule1_driver_idx].baseaddr = SOBELIP_INFO[ip_instance_idx].baseaddr;
			SobelIPRule1Driver[rule1_driver_idx].vdmaDriver.baseaddr = SOBELIP_INFO[ip_instance_idx].vdma_baseaddr;
			SobelIPRule1Driver[rule1_driver_idx].vdmaDriver.intr_id = SOBELIP_INFO[ip_instance_idx].intr_id;
			SobelIPRule1Driver[rule1_driver_idx].vdmaDriver.busy = 0;

			SobelIP_Rule1Driver_initialize(&SobelIPRule1Driver[rule1_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
			rule1_driver_idx++;
		}
#endif		
		
#if SOBELIP_NUM_GRIPRULE2_INSTANCES != 0
		if (SOBELIP_INFO[ip_instance_idx].grip_rule == 2) {
			SobelIPRule2Driver[rule2_driver_idx].baseaddr = SOBELIP_INFO[ip_instance_idx].baseaddr;
			SobelIPRule2Driver[rule2_driver_idx].intr_id = SOBELIP_INFO[ip_instance_idx].intr_id;
			SobelIPRule2Driver[rule2_driver_idx].busy = 0;

			SobelIP_Rule2Driver_initialize(&SobelIPRule2Driver[rule2_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
			rule2_driver_idx++;
		}
#endif
    }
    
    ip_instance_idx = 0;
    rule1_driver_idx = 0;

#endif    
}


void EdgeDetection_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime) {

#if SOBELIP_NUM_INSTANCES == 0
    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
#else
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<SOBELIP_NUM_INSTANCES; ip_instance_idx++) {
#if SOBELIP_NUM_GRIPRULE1_INSTANCES != 0
        if (SOBELIP_INFO[ip_instance_idx].grip_rule == 1) {
            if (SobelIP_Rule1Driver_isBusy(&SobelIPRule1Driver[rule1_driver_idx]) == 0) {               // a free IP instance found
                SobelIP_Rule1Driver_start(&SobelIPRule1Driver[rule1_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);
                while(SobelIP_Rule1Driver_isBusy(&SobelIPRule1Driver[rule1_driver_idx]) == 1);
                return;            
            } 
            rule1_driver_idx++;
        }
#endif        
    }
    
    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, vertcialActiveTime);    
#endif    
}









