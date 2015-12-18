// config for rule1 i.e corresponding to only SobelfilterIP+VDMAIP to do grayscale filtering

#ifndef __SOBELFILTER1_CONFIG_H__
#define __SOBELFILTER1_CONFIG_H__

#define Subsystem_R1_NUM_INSTANCES 1

#define Subsystem_R1_SOBELFILTERIP_BASEADDR 0x6e800000
#define Subsystem_R1_SOBELFILTERIP_INTRID 0

#define Subsystem_R1_VDMAIP_BASEADDR 0x43040000
#define Subsystem_R1_VDMAIP_INTRID 84

#define Subsystem_R1_NUM_INSTANCES 0



#endif
