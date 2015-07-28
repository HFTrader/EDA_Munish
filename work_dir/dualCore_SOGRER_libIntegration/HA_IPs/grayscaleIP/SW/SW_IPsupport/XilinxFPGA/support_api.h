// this module is simulated to be as if being provided by the Grayscale HA IP supplier as SW support to configure its IP at runtime
// this could later be used by the code generator at library integration step in generating the API that will be exposed to application developer
// this module provides support for IP running in the SoC that is to target for Xilinx FPGA prototype!!
// for any future platform, this template should be strictly followed

#ifndef __API_SUPPORT_H__
#define __API_SUPPORT_H__

#include "xconvert_to_gray.h"
#include "xscugic.h"

// to initialize Grayscale HA in SoC
void GrayscaleIPSupport_initialize(XConvert_to_gray *xGrayscaleFilter, XScuGic *InterruptController, unsigned short frameRows, unsigned short frameCols, 
                                   unsigned long CONTROL_BUS_BASEADDRESS, unsigned long VDMA_BASEADDR, unsigned int VDMA_INTR_ID);                       

// to trigger Grayscale HA to start processing
void GrayscaleIPSupport_trigger(XConvert_to_gray *xGrayscaleFilter, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime);             

// to inform about the runtime status of Grayscale HA
unsigned char GrayscaleIPSupport_isBusy(XConvert_to_gray *xGrayscaleFilter);




#endif






