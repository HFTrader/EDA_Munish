#include "function.h"
#include "profile_cnt.h"


// driver instances for Subsystem_R3
Subsystem_R3_DriverInstance Subsystem_R3_Driver[Subsystem_R3_NUM_INSTANCES];
void Subsystems_R3_driverInstanceInit() {
	Subsystem_R3_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = Subsystem_R3_GRAYSCALEIP_BASEADDR;
	Subsystem_R3_Driver[0]._GrayscaleIP_DriverInstance.intr_id = Subsystem_R3_GRAYSCALEIP_INTRID;
	Subsystem_R3_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;
	Subsystem_R3_Driver[0]._VDMAIP_DriverInstance.baseaddr = Subsystem_R3_VDMAIP_BASEADDR;
	Subsystem_R3_Driver[0]._VDMAIP_DriverInstance.intr_id = Subsystem_R3_VDMAIP_INTRID;
	Subsystem_R3_Driver[0]._VDMAIP_DriverInstance.busy = 0;
}



void Subsystems_R3_intrInitialize(IntCntrl_t *InterruptController) {
    int i;
	for (i = 0; i<Subsystem_R3_NUM_INSTANCES; i++) {
		Subsystem_R3_intrInitialize(&Subsystem_R3_Driver[i], InterruptController);
	}
}



void Subsystems_R3_initialize() {
	int i;
	for (i = 0; i<Subsystem_R3_NUM_INSTANCES; i++) {
		Subsystem_R3_initialize(&Subsystem_R3_Driver[i], Subsystem_R3_InitMode);
	}
}



void Subsystems_R3_Init(IntCntrl_t *InterruptController) {
    Subsystems_R1_driverInstanceInit();
    Subsystems_R1_intrInitialize(InterruptController);
    Subsystems_R1_initialize();
}



int Subsystem_R3_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr,
			unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

	#if Subsystem_R3_NUM_INSTANCES == 0
    	return 0;
	#else

    int idx;    
    // seeing if Grayscale filtering for current captured frame can be done on this Grayscale Rule system    
    for (idx = 0; idx<Subsystem_R3_NUM_INSTANCES; idx++) {
        if (Subsystem_R3_isBusy(&Subsystem_R3_Driver[idx]) == 0) {
        	Subsystem_R3_start(&Subsystem_R3_Driver[idx], Subsystem_R3_StartMode, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
        	double cpu_cycles = get_cyclecount();
        	printf("CPU cycles for Sobel Start HW: %f \n", cpu_cycles);
        	// Munish Commented while(Subsystem_R3_isBusy(&Subsystem_R3_Driver[idx]) == 1);
            return 1;
        }
    }    
    
    return 0;
#endif
}
