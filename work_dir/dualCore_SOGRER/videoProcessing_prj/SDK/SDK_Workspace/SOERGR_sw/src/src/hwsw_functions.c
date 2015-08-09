#include "hwsw_functions.h"
#include <stdlib.h>

#if 1
// NOTE: if Grayscale HA is present
void hwConvToGray(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short h_ActiveTime, unsigned short v_ActiveTime) {
	if (GrayscaleFilter_busy == 1) {
		ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, h_ActiveTime);
	} else {
		config_filterVDMA(GrayscaleFilter_VDMA_BASEADDR, DMA_MEM_TO_DEV, ImgIn_BaseAddr, h_ActiveTime, v_ActiveTime);
		config_filterVDMA(GrayscaleFilter_VDMA_BASEADDR, DMA_DEV_TO_MEM, ImgOut_BaseAddr, h_ActiveTime, v_ActiveTime);
		GrayscaleFilter_busy = 1;
		while (GrayscaleFilter_busy == 1);
	}
}
#endif

#if 0
// NOTE: if Grayscale HA is absent
void hwConvToGray(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime) {
	ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime);
}
#endif

// NOTE: similarly generate function definitions for Sobel and Erode filters as well depending on the presence/absence of their corresponding HAs in SoC
#if 1
void hwEdgeDetection(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short h_ActiveTime, unsigned short v_ActiveTime) {
	if (SobelFilter_busy == 1) {
		EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, h_ActiveTime);
	} else {
		config_filterVDMA(SobelFilter_VDMA_BASEADDR, DMA_MEM_TO_DEV, ImgIn_BaseAddr, h_ActiveTime, v_ActiveTime);
		config_filterVDMA(SobelFilter_VDMA_BASEADDR, DMA_DEV_TO_MEM, ImgOut_BaseAddr, h_ActiveTime, v_ActiveTime);
		SobelFilter_busy = 1;
		while (SobelFilter_busy == 1);
	}
}
#endif

#if 0
void hwEdgeDetection(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short h_ActiveTime) {
	EdgeDetection(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, h_ActiveTime);
}
#endif


#if 1
void hwErode(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short h_ActiveTime, unsigned short v_ActiveTime) {
	if (ImageFilter_busy == 1) {
		Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, h_ActiveTime);
	} else {
		config_filterVDMA(ImageFilter_VDMA_BASEADDR, DMA_MEM_TO_DEV, ImgIn_BaseAddr, h_ActiveTime, v_ActiveTime);
		config_filterVDMA(ImageFilter_VDMA_BASEADDR, DMA_DEV_TO_MEM, ImgOut_BaseAddr, h_ActiveTime, v_ActiveTime);
		ImageFilter_busy = 1;
		while (ImageFilter_busy == 1);
	}
}
#endif

#if 0
void hwErode(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short h_ActiveTime) {
	Erode(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, h_ActiveTime);
}
#endif




// NOTE: only generate this if Sobel HA is present
void SobelFilter_Init(unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	SobelFilter_busy = 0;

	xSobelFilter.Control_bus_BaseAddress = SobelFilter_CONTROL_BUS_BASEADDR;
	xSobelFilter.IsReady = XIL_COMPONENT_IS_READY;
	XSobel_filter_InterruptGlobalDisable(&xSobelFilter);
	XSobel_filter_InterruptDisable(&xSobelFilter, 1);
	XSobel_filter_DisableAutoRestart(&xSobelFilter);
	XSobel_filter_SetRows(&xSobelFilter, verticalActiveTime);
	XSobel_filter_SetCols(&xSobelFilter, horizontalActiveTime);
	XSobel_filter_EnableAutoRestart(&xSobelFilter);
	XSobel_filter_Start(&xSobelFilter);

	resetVDMA(SobelFilter_VDMA_BASEADDR);
}


// NOTE: only generate this if Erode HA is present
void ImageFilter_Init(unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	ImageFilter_busy = 0;

	xImageFilter.Control_bus_BaseAddress = ImageFilter_CONTROL_BUS_BASEADDR;
	xImageFilter.IsReady = XIL_COMPONENT_IS_READY;
	XImage_filter_InterruptGlobalDisable(&xImageFilter);
	XImage_filter_InterruptDisable(&xImageFilter, 1);
	XImage_filter_DisableAutoRestart(&xImageFilter);
	XImage_filter_SetRows(&xImageFilter, verticalActiveTime);
	XImage_filter_SetCols(&xImageFilter, horizontalActiveTime);
	XImage_filter_EnableAutoRestart(&xImageFilter);
	XImage_filter_Start(&xImageFilter);

	resetVDMA(ImageFilter_VDMA_BASEADDR);
}


// NOTE: only generate this if Grayscale HA is present
void GrayscaleFilter_Init(unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	GrayscaleFilter_busy = 0;

	xGrayScaleFilter.Control_bus_BaseAddress = GrayscaleFilter_CONTROL_BUS_BASEADDR;
	xGrayScaleFilter.IsReady = XIL_COMPONENT_IS_READY;
	XConvert_to_gray_InterruptGlobalEnable(&xGrayScaleFilter);
	XConvert_to_gray_InterruptDisable(&xGrayScaleFilter, 1);
	XConvert_to_gray_DisableAutoRestart(&xGrayScaleFilter);
	XConvert_to_gray_SetRows(&xGrayScaleFilter, verticalActiveTime);
	XConvert_to_gray_SetCols(&xGrayScaleFilter, horizontalActiveTime);
	XConvert_to_gray_EnableAutoRestart(&xGrayScaleFilter);
	XConvert_to_gray_Start(&xGrayScaleFilter);

	resetVDMA(GrayscaleFilter_VDMA_BASEADDR);
}



void HA_Initialize(XScuGic *InterruptController, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
	int Status;
	// NOTE: only if Sobel HA is present
	SobelFilter_Init(horizontalActiveTime, verticalActiveTime);
	Status = XScuGic_Connect(InterruptController, SobelFilter_VDMA_INTR_ID, (Xil_ExceptionHandler)SobelFilter_VDMA_ISR, (void *)InterruptController);
	if (Status != XST_SUCCESS) {
		exit(1);
	}
	XScuGic_Enable(InterruptController, SobelFilter_VDMA_INTR_ID);
	// NOTE: only if Erode HA is present
	ImageFilter_Init(horizontalActiveTime, verticalActiveTime);
	Status = XScuGic_Connect(InterruptController, ImageFilter_VDMA_INTR_ID, (Xil_ExceptionHandler)ImageFilter_VDMA_ISR, (void *)InterruptController);
	if (Status != XST_SUCCESS) {
		exit(1);
	}
	XScuGic_Enable(InterruptController, ImageFilter_VDMA_INTR_ID);
	// NOTE: only if Grayscale HA is present
	GrayscaleFilter_Init(horizontalActiveTime, verticalActiveTime);
	Status = XScuGic_Connect(InterruptController, GrayscaleFilter_VDMA_INTR_ID, (Xil_ExceptionHandler)GrayscaleFilter_VDMA_ISR, (void *)InterruptController);
	if (Status != XST_SUCCESS) {
		exit(1);
	}
	XScuGic_Enable(InterruptController, GrayscaleFilter_VDMA_INTR_ID);
}

// NOTE: only if Sobel HA is present
void SobelFilter_VDMA_ISR(void * baseaddr_p)
{
	Xil_Out32((SobelFilter_VDMA_BASEADDR + AXI_FILTER_RX_CTRL), 0x00000004);
	SobelFilter_busy = 0;
}

// NOTE: only if Erode HA is present
void ImageFilter_VDMA_ISR(void * baseaddr_p)
{
	Xil_Out32((ImageFilter_VDMA_BASEADDR + AXI_FILTER_RX_CTRL), 0x00000004);
	ImageFilter_busy = 0;
}

// NOTE: only if Grayscale HA is present
void GrayscaleFilter_VDMA_ISR(void * baseaddr_p)
{
	//printf("%x\r\n", (unsigned int) *(volatile unsigned int *)(0x6E800000));
	Xil_Out32((GrayscaleFilter_VDMA_BASEADDR + AXI_FILTER_RX_CTRL), 0x00000004);
	GrayscaleFilter_busy = 0;
}








