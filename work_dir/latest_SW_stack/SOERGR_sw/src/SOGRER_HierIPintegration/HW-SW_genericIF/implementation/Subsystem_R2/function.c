#include "function.h"
#include "profile_cnt.h"


// driver instances for Subsystem_R2
Subsystem_R2_DriverInstance Subsystem_R2_Driver[Subsystem_R2_NUM_INSTANCES];
void Subsystems_R2_driverInstanceInit() {
	Subsystem_R2_Driver[0]._ErodefilterIP_DriverInstance.baseaddr = Subsystem_R2_ERODEFILTERIP_BASEADDR;
	Subsystem_R2_Driver[0]._ErodefilterIP_DriverInstance.intr_id = Subsystem_R2_ERODEFILTERIP_INTRID;
	Subsystem_R2_Driver[0]._ErodefilterIP_DriverInstance.busy = 0;
	Subsystem_R2_Driver[0]._VDMAIP_DriverInstance.baseaddr = Subsystem_R2_VDMAIP_BASEADDR;
	Subsystem_R2_Driver[0]._VDMAIP_DriverInstance.intr_id = Subsystem_R2_VDMAIP_INTRID;
	Subsystem_R2_Driver[0]._VDMAIP_DriverInstance.busy = 0;
}



void Subsystems_R2_intrInitialize(IntCntrl_t *InterruptController) {
    int i;
	for (i = 0; i<Subsystem_R2_NUM_INSTANCES; i++) {
		Subsystem_R2_intrInitialize(&Subsystem_R2_Driver[i], InterruptController);
	}
}



void Subsystems_R2_initialize() {
	int i;
	for (i = 0; i<Subsystem_R2_NUM_INSTANCES; i++) {
		Subsystem_R2_initialize(&Subsystem_R2_Driver[i], Subsystem_R2_InitMode);
	}
}



void Subsystems_R2_Init(IntCntrl_t *InterruptController) {
    Subsystems_R1_driverInstanceInit();
    Subsystems_R1_intrInitialize(InterruptController);
    Subsystems_R1_initialize();
}



int Subsystem_R2_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr,
			unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {

	#if Subsystem_R2_NUM_INSTANCES == 0
    	return 0;
	#else

    int idx;    
    // seeing if Erodefilter filtering for current captured frame can be done on this Erodefilter Rule system    
    for (idx = 0; idx<Subsystem_R2_NUM_INSTANCES; idx++) {
        if (Subsystem_R2_isBusy(&Subsystem_R2_Driver[idx]) == 0) {
        	Subsystem_R2_start(&Subsystem_R2_Driver[idx], Subsystem_R2_StartMode, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
        	double cpu_cycles = get_cyclecount();
        	printf("CPU cycles for Erode Start HW: %f \n", cpu_cycles);
        	// Munish Commented while(Subsystem_R2_isBusy(&Subsystem_R2_Driver[idx]) == 1);
            return 1;
        }
    }    
    
    return 0;
#endif
}
