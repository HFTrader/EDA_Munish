// configurations for using GrayscaleIP functionality in the system
// should be auto generated after GRIP has finished producing a SoC architecture

#ifndef __GRAYSCALE_CONFIG_H__
#define __GRAYSCALE_CONFIG_H__

// the template generator knows from the architecture how many grayscale ip instances/subsystems are present in the
// architecture and what are the HW IPs present in each instance...these would later be used by "function" module to create driver instances
// for each of these ip systems

#define GRAYSCALE_NUM_INSTANCES 2
#define GRAYSCALE_NUM_GRIPRULE1_INSTANCES 1
#define GRAYSCALE_NUM_GRIPRULE2_INSTANCES 1

#define GRAYSCALE_0_GRAYSCALEIP_BASEADDR 0x6e800000
#define GRAYSCALE_0_GRAYSCALEIP_INTRID 0
#define GRAYSCALE_0_VDMAIP_BASEADDR 0x43040000
#define GRAYSCALE_0_VDMAIP_INTRID 84

#define GRAYSCALE_1_GRAYSCALEIP_BASEADDR 0xffffffff
#define GRAYSCALE_1_GRAYSCALEIP_INTRID 0


#endif













