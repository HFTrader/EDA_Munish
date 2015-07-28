// this module is simulated to be as if being provided by the Grayscale HA IP supplier as SW support to configure its IP at runtime
// this could later be used by the code generator at library integration step in generating the API that will be exposed to application developer
// this module provides support for IP running in the SoC that is to target for Xilinx FPGA prototype!!


#include "support_api.h"
#include "vdma_config.h"


void GrayscaleIPSupport_initialize(XConvert_to_gray *xGrayscaleFilter, XScuGic *InterruptController, unsigned short frameRows, unsigned short frameCols, 
                                   unsigned long CONTROL_BUS_BASEADDRESS, unsigned long VDMA_BASEADDR, unsigned int VDMA_INTR_ID) {
	xGrayScaleFilter->CONTROL_BUS_BASEADDR = CONTROL_BUS_BASEADDR;
	xGrayScaleFilter->IsReady = XIL_COMPONENT_IS_READY;
	xGrayScaleFilter->Busy = 0;
	xGrayScaleFilter->VDMA_BASEADDR = VDMA_BASEADDR;
	xGrayScaleFilter->VDMA_INTR_ID = VDMA_INTR_ID;
	
	XConvert_to_gray_InterruptGlobalEnable(xGrayScaleFilter);
	XConvert_to_gray_InterruptDisable(xGrayScaleFilter, 1);
	XConvert_to_gray_DisableAutoRestart(xGrayScaleFilter);
	XConvert_to_gray_SetRows(xGrayScaleFilter, frameRows);
	XConvert_to_gray_SetCols(xGrayScaleFilter, frameCols);
	XConvert_to_gray_EnableAutoRestart(xGrayScaleFilter);
	XConvert_to_gray_Start(xGrayScaleFilter);

	resetVDMA(xGrayScaleFilter->VDMA_BASEADDR);    
	
	int Status = XScuGic_Connect(InterruptController, xGrayScaleFilter->VDMA_INTR_ID, (Xil_ExceptionHandler) GrayscaleIPSupport_ISR, (void *) xGrayscaleFilter);
	if (Status != XST_SUCCESS) {
		exit(1);
	}
	XScuGic_Enable(InterruptController, xGrayScaleFilter->VDMA_INTR_ID);	
}



void GrayscaleIPSupport_trigger(XConvert_to_gray *xGrayscaleFilter, XConvert_to_gray *xGrayscaleFilter, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime) {
	config_filterVDMA(xGrayscaleFilter->VDMA_BASEADDR, DMA_MEM_TO_DEV, ImgIn_BaseAddr, height, width);
	config_filterVDMA(xGrayscaleFilter->VDMA_BASEADDR, DMA_DEV_TO_MEM, ImgOut_BaseAddr, height, width);
	xGrayscaleFilter->Busy = 1;
}



unsigned char GrayscaleIPSupport_isBusy(XConvert_to_gray *xGrayscaleFilter) {
    return xGrayscaleFilter->Busy;
}




void GrayscaleIPSupport_ISR(void* InstancePtr) {
    XConvert_to_gray *xGrayscaleFilter = (xGrayscaleFilter *) InstancePtr;
	Xil_Out32((xGrayscaleFilter->VDMA_BASEADDR + AXI_FILTER_RX_CTRL), 0x00000004);
	xGrayscaleFilter->Busy = 0;
}    









