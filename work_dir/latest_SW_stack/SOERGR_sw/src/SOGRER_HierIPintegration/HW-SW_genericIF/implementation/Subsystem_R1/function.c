#include "function.h"
#include "profile_cnt.h"


// driver instances for Subsystem_R1
Subsystem_R1_DriverInstance Subsystem_R1_Driver[Subsystem_R1_NUM_INSTANCES];
void Subsystems_R1_driverInstanceInit() {
	Subsystem_R1_Driver[0]._SobelfilterIP_DriverInstance.baseaddr = Subsystem_R1_SOBELFILTERIP_BASEADDR;
	Subsystem_R1_Driver[0]._SobelfilterIP_DriverInstance.intr_id = Subsystem_R1_SOBELFILTERIP_INTRID;
	Subsystem_R1_Driver[0]._SobelfilterIP_DriverInstance.busy = 0;
	Subsystem_R1_Driver[0]._VDMAIP_DriverInstance.baseaddr = Subsystem_R1_VDMAIP_BASEADDR;
	Subsystem_R1_Driver[0]._VDMAIP_DriverInstance.intr_id = Subsystem_R1_VDMAIP_INTRID;
	Subsystem_R1_Driver[0]._VDMAIP_DriverInstance.busy = 0;
}



void Subsystems_R1_intrInitialize(IntCntrl_t *InterruptController) {
    int i;
	for (i = 0; i<Subsystem_R1_NUM_INSTANCES; i++) {
		Subsystem_R1_intrInitialize(&Subsystem_R1_Driver[i], InterruptController);
	}
}



void Subsystems_R1_initialize() {
	int i;
	for (i = 0; i<Subsystem_R1_NUM_INSTANCES; i++) {
		Subsystem_R1_initialize(&Subsystem_R1_Driver[i], Subsystem_R1_InitMode);
	}
}



void Subsystems_R1_Init(IntCntrl_t *InterruptController) {
    Subsystems_R1_driverInstanceInit();
    Subsystems_R1_intrInitialize(InterruptController);
    Subsystems_R1_initialize();
}



int Subsystem_R1_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr,
			unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

	#if Subsystem_R1_NUM_INSTANCES == 0
    	return 0;
	#else

    int idx;    
    // seeing if Sobelfilter filtering for current captured frame can be done on this Sobelfilter Rule system    
    for (idx = 0; idx<Subsystem_R1_NUM_INSTANCES; idx++) {
        if (Subsystem_R1_isBusy(&Subsystem_R1_Driver[idx]) == 0) {
        	Subsystem_R1_start(&Subsystem_R1_Driver[idx], Subsystem_R1_StartMode, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
        	double cpu_cycles = get_cyclecount();
        	printf("CPU cycles for Sobel Start HW: %f \n", cpu_cycles);
        	// Munish Commented while(Subsystem_R1_isBusy(&Subsystem_R1_Driver[idx]) == 1);
            return 1;
        }
    }    
    
    return 0;
#endif
}
