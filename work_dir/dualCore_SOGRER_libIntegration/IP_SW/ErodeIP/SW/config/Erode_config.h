// configurations for using ErodeIP functionality in the system
// should be auto generated after GRIP has finished producing a SoC architecture

#ifndef __ERODE_CONFIG_H__
#define __ERODE_CONFIG_H__

// the template generator knows from the architecture how many erode ip instances/subsystems are present in the
// architecture and what are the HW IPs present in each instance...these would later be used by "function" module to create driver instances
// for each of these ip systems

#define ERODE_NUM_INSTANCES 1
#define ERODE_NUM_GRIPRULE1_INSTANCES 1
#define ERODE_NUM_GRIPRULE2_INSTANCES 0

#define ERODE_0_ERODEIP_BASEADDR 0x7C800000
#define ERODE_0_ERODEIP_INTRID 0
#define ERODE_0_VDMAIP_BASEADDR 0x43000000
#define ERODE_0_VDMAIP_INTRID 63

#endif













