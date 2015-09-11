// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#include "GrayscaleIP_func.h"

// driver instances for Grayscale_HA
#if GRAYSCALEIP_NUM_GRIPRULE1_INSTANCES != 0
    GrayscaleIPRule1DriverInstance GrayscaleIPRule1Driver[GRAYSCALEIP_NUM_GRIPRULE1_INSTANCES];
#endif
#if GRAYSCALEIP_NUM_GRIPRULE2_INSTANCES != 0
    GrayscaleIPRule2DriverInstance GrayscaleIPRule2Driver[GRAYSCALEIP_NUM_GRIPRULE2_INSTANCES];
#endif

void GrayscaleIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

#if GRAYSCALEIP_NUM_INSTANCES != 0
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    int rule2_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<GRAYSCALEIP_NUM_INSTANCES; ip_instance_idx++) {
#if GRAYSCALEIP_NUM_GRIPRULE1_INSTANCES != 0    
		if (GRAYSCALEIP_INFO[ip_instance_idx].grip_rule == 1) {
			GrayscaleIPRule1Driver[rule1_driver_idx].baseaddr = GRAYSCALEIP_INFO[ip_instance_idx].baseaddr;
			GrayscaleIPRule1Driver[rule1_driver_idx].vdmaDriver.baseaddr = GRAYSCALEIP_INFO[ip_instance_idx].vdma_baseaddr;
			GrayscaleIPRule1Driver[rule1_driver_idx].vdmaDriver.intr_id = GRAYSCALEIP_INFO[ip_instance_idx].intr_id;
			GrayscaleIPRule1Driver[rule1_driver_idx].vdmaDriver.busy = 0;

			GrayscaleIP_Rule1Driver_initialize(&GrayscaleIPRule1Driver[rule1_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
			rule1_driver_idx++;
		}
#endif		
		
#if GRAYSCALEIP_NUM_GRIPRULE2_INSTANCES != 0
		if (GRAYSCALEIP_INFO[ip_instance_idx].grip_rule == 2) {
			GrayscaleIPRule2Driver[rule2_driver_idx].baseaddr = GRAYSCALEIP_INFO[ip_instance_idx].baseaddr;
			GrayscaleIPRule2Driver[rule2_driver_idx].intr_id = GRAYSCALEIP_INFO[ip_instance_idx].intr_id;
			GrayscaleIPRule2Driver[rule2_driver_idx].busy = 0;

			GrayscaleIP_Rule2Driver_initialize(&GrayscaleIPRule2Driver[rule2_driver_idx], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
			rule2_driver_idx++;
		}
#endif
    }
    
    ip_instance_idx = 0;
    rule1_driver_idx = 0;
    rule2_driver_idx = 0;

#endif    
}


void ConvToGray_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

#if GRAYSCALEIP_NUM_INSTANCES == 0
    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;
    int rule2_driver_idx = 0;
    
    for (ip_instance_idx=0; ip_instance_idx<GRAYSCALEIP_NUM_INSTANCES; ip_instance_idx++) {
#if GRAYSCALEIP_NUM_GRIPRULE1_INSTANCES != 0
        if (GRAYSCALEIP_INFO[ip_instance_idx].grip_rule == 1) {
            if (GrayscaleIP_Rule1Driver_isBusy(&GrayscaleIPRule1Driver[rule1_driver_idx]) == 0) {               // a free IP instance found
                GrayscaleIP_Rule1Driver_start(&GrayscaleIPRule1Driver[rule1_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
                while(GrayscaleIP_Rule1Driver_isBusy(&GrayscaleIPRule1Driver[rule1_driver_idx]) == 1);
                return;            
            } 
            rule1_driver_idx++;
        }
#endif        
#if GRAYSCALEIP_NUM_GRIPRULE2_INSTANCES != 0
        if (GRAYSCALEIP_INFO[ip_instance_idx].grip_rule == 2) {
            if (GrayscaleIP_Rule2Driver_isBusy(&GrayscaleIPRule2Driver[rule2_driver_idx]) == 0) {               // a free IP instance found
                GrayscaleIP_Rule2Driver_start(&GrayscaleIPRule2Driver[rule2_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
                while(GrayscaleIP_Rule2Driver_isBusy(&GrayscaleIPRule2Driver[rule2_driver_idx]) == 1);
                return;            
            } 
            rule2_driver_idx++;
        }
#endif        
    }
    
    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);    
#endif    
}









