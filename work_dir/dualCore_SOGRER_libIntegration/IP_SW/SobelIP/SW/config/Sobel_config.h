// configurations for using SobelIP functionality in the system
// should be auto generated after GRIP has finished producing a SoC architecture

#ifndef __SOBEL_CONFIG_H__
#define __SOBEL_CONFIG_H__

// the template generator knows from the architecture how many erode ip instances/subsystems are present in the
// architecture and what are the HW IPs present in each instance...these would later be used by "function" module to create driver instances
// for each of these ip systems

#define SOBEL_NUM_INSTANCES 1
#define SOBEL_NUM_GRIPRULE1_INSTANCES 1
#define SOBEL_NUM_GRIPRULE2_INSTANCES 0

#define SOBEL_0_SOBELIP_BASEADDR 0x71800000
#define SOBEL_0_SOBELIP_INTRID 0
#define SOBEL_0_VDMAIP_BASEADDR 0x43020000
#define SOBEL_0_VDMAIP_INTRID 66

#endif













