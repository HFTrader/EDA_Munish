#include "function.h"

// driver instances for Grayscale_HA
Grayscale_R0_DriverInstance Grayscale_R0_Driver[Grayscale_R0_NUM_INSTANCES];

void Grayscale_R0_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	Grayscale_R0_Driver[0]._GrayscaleIP_DriverInstance.baseaddr = Grayscale_R0_IP_BASEADDR;
	Grayscale_R0_Driver[0]._GrayscaleIP_DriverInstance.intr_id = Grayscale_R0_IP_INTRID;
	Grayscale_R0_Driver[0]._GrayscaleIP_DriverInstance.busy = 0;

	int i;
	for (i=0; i<Grayscale_R0_NUM_INSTANCES; i++) {
		Grayscale_R0_initialize(&Grayscale_R0_Driver[i], InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
	}
}

int Grayscale_R0_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
#if Grayscale_R0_NUM_INSTANCES == 0
    return 0;
#else
    int idx;    
    // seeing if Grayscale filtering for current captured frame can be done on this Grayscale Rule system    
    for (idx = 0; idx<Grayscale_R0_NUM_INSTANCES; idx++) {
        if (Grayscale_R0_isBusy(&Grayscale_R0_Driver[idx]) == 0) {
        	Grayscale_R0_start(&Grayscale_R0_Driver[idx], ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
            while(Grayscale_R0_isBusy(&Grayscale_R0_Driver[idx]) == 1);
            return 1;
        }
    }    
    
    return 0;
#endif
}









