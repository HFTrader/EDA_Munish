// this file is going to be auto-generated after reading in the IP_SW and all of IP_Rule*Driver modules
// it will use the configuration flags provided in config file

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video



#include "SobelIP_func.h"



void EdgeDetection_func(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    int ip_instance_idx = 0;
    int rule1_driver_idx = 0;

#if SOBELIP_NUM_INSTANCES != 0
    static bool driverInit = 0;

    // initializing the drivers for the first time when this func is called
    if (driverInit == 0) {
    	for (ip_instance_idx=0; ip_instance_idx<SOBELIP_NUM_INSTANCES; ip_instance_idx++) {
    		if (SOBELIP_INFO[ip_instance_idx].grip_rule == 1) {
    			SobelIPRule1Driver[rule1_driver_idx].baseaddr = SOBELIP_INFO[ip_instance_idx].baseaddr;
    			SobelIPRule1Driver[rule1_driver_idx].vdmaDriver.baseaddr = SOBELIP_INFO[ip_instance_idx].vdma_baseaddr;
    			SobelIP_Rule1Driver_initialize(&SobelIPRule1Driver[rule1_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    			rule1_driver_idx++;
    		} 
    	}
        ip_instance_idx = 0;
        rule1_driver_idx = 0;

        driverInit = 1;
    }
#endif

#if SOBELIP_NUM_INSTANCES == 0                      // no IP module in design so using SW implementation
    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
#else
    for (ip_instance_idx=0; ip_instance_idx<SOBELIP_NUM_INSTANCES; ip_instance_idx++) {
    	if (SOBELIP_INFO[ip_instance_idx].grip_rule == 1) {
    		if (SobelIP_Rule1Driver_isBusy(&SobelIPRule1Driver[rule1_driver_idx]) == 0) {      // a free IP instance found
				SobelIP_Rule1Driver_start(&SobelIPRule1Driver[rule1_driver_idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
				while(SobelIP_Rule1Driver_isBusy(&SobelIPRule1Driver[rule1_driver_idx]) == 1);
				return;
			}
    		rule1_driver_idx++;
    	}
    }    

    EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime); 
#endif
}




