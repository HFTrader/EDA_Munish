// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "ErodeIP_func.h"

// driver instances for Grayscale_HA
#if ERODEIP_NUM_GRIPRULE1_INSTANCES != 0
    ErodeIPRule1DriverInstance ErodeIPRule1Driver[ERODEIP_NUM_GRIPRULE1_INSTANCES];
#endif

void ErodeIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

#if ERODEIP_NUM_INSTANCES != 0
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<ERODEIP_NUM_INSTANCES; ip_instance_idx++) {
#if ERODEIP_NUM_GRIPRULE1_INSTANCES != 0    
		if (ERODEIP_INFO[ip_instance_idx].grip_rule == 1) {
			ErodeIPRule1Driver[rule1_driver_idx].baseaddr = ERODEIP_INFO[ip_instance_idx].baseaddr;
			ErodeIPRule1Driver[rule1_driver_idx].vdmaDriver.baseaddr = ERODEIP_INFO[ip_instance_idx].vdma_baseaddr;
			ErodeIPRule1Driver[rule1_driver_idx].vdmaDriver.intr_id = ERODEIP_INFO[ip_instance_idx].intr_id;
			ErodeIPRule1Driver[rule1_driver_idx].vdmaDriver.busy = 0;

			ErodeIP_Rule1Driver_initialize(&ErodeIPRule1Driver[rule1_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
			rule1_driver_idx++;
		}
#endif		
		
#if ERODEIP_NUM_GRIPRULE2_INSTANCES != 0
		if (ERODEIP_INFO[ip_instance_idx].grip_rule == 2) {
			ErodeIPRule2Driver[rule2_driver_idx].baseaddr = ERODEIP_INFO[ip_instance_idx].baseaddr;
			ErodeIPRule2Driver[rule2_driver_idx].intr_id = ERODEIP_INFO[ip_instance_idx].intr_id;
			ErodeIPRule2Driver[rule2_driver_idx].busy = 0;

			ErodeIP_Rule2Driver_initialize(&ErodeIPRule2Driver[rule2_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
			rule2_driver_idx++;
		}
#endif
    }
    
    ip_instance_idx = 0;
    rule1_driver_idx = 0;

#endif    
}


void Erode_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

#if ERODEIP_NUM_INSTANCES == 0
    Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<ERODEIP_NUM_INSTANCES; ip_instance_idx++) {
#if ERODEIP_NUM_GRIPRULE1_INSTANCES != 0
        if (ERODEIP_INFO[ip_instance_idx].grip_rule == 1) {
            if (ErodeIP_Rule1Driver_isBusy(&ErodeIPRule1Driver[rule1_driver_idx]) == 0) {               // a free IP instance found
                ErodeIP_Rule1Driver_start(&ErodeIPRule1Driver[rule1_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
                while(ErodeIP_Rule1Driver_isBusy(&ErodeIPRule1Driver[rule1_driver_idx]) == 1);
                return;            
            } 
            rule1_driver_idx++;
        }
#endif        
    }
    
    Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);    
#endif    
}









