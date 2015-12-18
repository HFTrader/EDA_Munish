#include "hwsw_func.h"
#include "profile_cnt.h"

#include "./IP_SWDrivers/SobelfilterIP/software/Sobelfilter_SW.h"
#include "./IP_SWDrivers/ErodefilterIP/software/Erodefilter_SW.h"
#include "./IP_SWDrivers/GrayscaleIP/software/Grayscale_SW.h"



//
// Sobel filter
//
void EdgeDetection_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    Subsystems_R1_driverInstanceInit();
    Subsystems_R1_intrInitialize(InterruptController);
    Subsystems_R1_initialize();
}

void EdgeDetection_func(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// no hw resources available for processing this current frame so using SW implementation
    if (Subsystem_R1_func(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime) == 0) {
    	double cpu_cycles = get_cyclecount();
    	printf("CPU cycles for Sobel Start SW: %f \n", cpu_cycles);
    	EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    }
}




//
// Erode filter
//
void Erode_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    Subsystems_R2_driverInstanceInit();
    Subsystems_R2_intrInitialize(InterruptController);
    Subsystems_R2_initialize();
}

void Erode_func(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// no hw resources available for processing this current frame so using SW implementation
    if (Subsystem_R2_func(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime) == 0) {
    	double cpu_cycles = get_cyclecount();
    	printf("CPU cycles for Sobel Start SW: %f \n", cpu_cycles);
    	Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    }
}



//
// Grayscale filter
//
void Grayscale_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    Subsystems_R3_driverInstanceInit();
    Subsystems_R3_intrInitialize(InterruptController);
    Subsystems_R3_initialize();
}

void Grayscale_func(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	// no hw resources available for processing this current frame so using SW implementation
    if (Subsystem_R3_func(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime) == 0) {
    	double cpu_cycles = get_cyclecount();
    	printf("CPU cycles for Grayscale Start SW: %f \n", cpu_cycles);
    	ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    }
}
