/***************************************************************************//**
 *   @file   main.c

*******************************************************************************/

/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include <stdio.h>
#include "xil_cache.h"
#include "xbasic_types.h"
#include "xil_io.h"
#include "cf_hdmi.h"
#include "atv_platform.h"
#include "transmitter.h"
#include "xil_exception.h"
#include "xuartps.h"
// for interrupt handling
#include "axi_interrupt.h"
#include "xscugic.h"
#include "xil_mmu.h"
#include "sw_functions.h"
#include "xpseudo_asm.h"
#include "global.h"
//#include "xgray_scale.h"
#include "hw_config.h"


/******************************************************************************/
/************************ Variables Definitions *******************************/
/******************************************************************************/
static UCHAR    MajorRev;      /* Major Release Number */
static UCHAR    MinorRev;      /* Usually used for code-drops */
static UCHAR    RcRev;         /* Release Candidate Number */
static BOOL     DriverEnable;
static BOOL     LastEnable;


XScuGic InterruptController; /* Instance of the Interrupt Controller */
static XScuGic_Config *GicConfig;/* The configuration parameters of the controller */

short int FRAME_INTR = 0;

int ScuGicInterrupt_Init()
{
	int Status;
	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 * */
	Xil_ExceptionInit();

	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig,
			GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	 // **** Setup the Interrupt System *****

//	 * Connect the interrupt controller interrupt handler to the hardware
//	 * interrupt handling logic in the ARM processor.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			(void *) &InterruptController);

//	 * Connect a device driver handler that will be called when an
//	 * interrupt for the device occurs, the device driver handler performs
//	 * the specific interrupt processing for the device
	Status = XScuGic_Connect(&InterruptController,XPAR_FABRIC_CAM_INTERFACE_0_VSYNC_NEGEDGE_INTR,
			(Xil_ExceptionHandler)AXI_INTERRUPT_VsyncIntr_Handler,
			(void *) &InterruptController);
	XScuGic_Enable(&InterruptController, XPAR_FABRIC_CAM_INTERFACE_0_VSYNC_NEGEDGE_INTR);

// 	Enable interrupts in the ARM
	Xil_ExceptionEnable();

	//Only used for edge sensitive Interrupts
	XScuGic_SetPriorityTriggerType(&InterruptController, XPAR_FABRIC_CAM_INTERFACE_0_VSYNC_NEGEDGE_INTR, 0xa0, 3);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS ; 
}

void delay_us(u32 us_count) {
  u32 count;
  for (count = 0; count < ((us_count * 800) + 1); count++) {
    asm("nop");
  }
}

/***************************************************************************//**
 * @brief Enables the driver.
 *
 * @return Returns ATVERR_OK.
*******************************************************************************/
void APP_EnableDriver (BOOL Enable)
{
    DriverEnable = Enable;
}

/***************************************************************************//**
 * @brief Returns the driver enable status.
 *
 * @return Returns the driver enable status.
*******************************************************************************/
static BOOL APP_DriverEnabled (void)
{
    if ((DriverEnable && HAL_GetMBSwitchState()) != LastEnable)
    {
        LastEnable = DriverEnable && HAL_GetMBSwitchState();
        DBG_MSG ("APP: Driver %s\n\r", LastEnable? "Enabled": "Disabled");
    }
    return (LastEnable);
}


/***************************************************************************//**
 * @brief Changes the video resolution depending on User input.
 *
 * @return None.
*******************************************************************************/
static int APP_ChangeResolution (void)
{
	char *resolutions[7] = {"640x480", "800x600", "1024x768", "1280x720", "1360x768", "1600x900", "1920x1080"};
	char receivedChar    = 0;

	if(XUartPs_IsReceiveData(UART_BASEADDR))
	{
		receivedChar = inbyte();
		if((receivedChar >= 0x30) && (receivedChar <= 0x36))
		{
			SetVideoResolution(receivedChar - 0x30);
			DBG_MSG("Resolution was changed to %s \r\n", resolutions[receivedChar - 0x30]);
		}
		else if (receivedChar == 'q') {
			DBG_MSG("Exiting Application. \n\r");
		    return(0);
		    }
		else
		{
			if((receivedChar != 0x0A) && (receivedChar != 0x0D))
			{
				SetVideoResolution(RESOLUTION_640x480);
				DBG_MSG("Resolution was changed to %s \r\n", resolutions[0]);
			}
		}
	}
	return 1;
}


void CPU1_init() {
	// duplicating the initial boot code for CPU1 into ddr and then jumping to that boot code!
	Xil_Out32((u32) 0x06000000, (u32) 0xe3e0000f);
	Xil_Out32((u32) 0x06000004, (u32) 0xe3a01000);
	Xil_Out32((u32) 0x06000008, (u32) 0xe5801000);
	Xil_Out32((u32) 0x0600000c, (u32) 0xe320f002);
	Xil_Out32((u32) 0x06000010, (u32) 0xe5902000);
	Xil_Out32((u32) 0x06000014, (u32) 0xe1520001);
	Xil_Out32((u32) 0x06000018, (u32) 0x0afffffb);
	Xil_Out32((u32) 0x0600001c, (u32) 0xe1a0f002);

	asm volatile("bx %0" : : "r" (0x06000000));
}


void CPU1processFrame() {
/*	if (FRAME_INTR == 1)
	{
		ConvToGrayHLS(VIDEO_BASEADDR_even, PROC_VIDEO_BASEADDR, detailedTiming[currentResolution][H_ACTIVE_TIME]);
	} else if (FRAME_INTR == 2) {
		ConvToGrayHLS(VIDEO_BASEADDR_odd, PROC_VIDEO_BASEADDR, detailedTiming[currentResolution][H_ACTIVE_TIME]);
	}*/

	// ISSUE: FLOATING POINT INSTRUCTIONS ARE NOT SUPPORTED ON CPU1 AT START (No startup code to boot used)!!!!

	int 	i,j,V_offset;
	int    	cols = 640;
	//int   	rows = 480;
	int rows = 350;
	float 	_par[3] = {0.114,0.587,0.299};

	int _s;	// src pixel
	int _d;	// dst pixel
	int b,g,r,c;

	V_offset = 0;
	if (FRAME_INTR == 1) {
		for(i = 0; i < rows; i++) {
			for (j = 0; j < cols; j++) {
				_s = Xil_In32(VIDEO_BASEADDR_even + ((V_offset + j) * 4) ); //Get the colored image pixel

				r = (_s & 0xff);
				g = (_s & 0xff00 >> 8);
				b = (_s & 0xff0000 >> 16);
				c = (r + g + b)/3;
				if (c > 255)
					c = 255;
				_d = (c & 0xff) | ((c & 0xff) << 8) | ((c & 0xff) << 16);
				Xil_Out32( PROC_VIDEO_BASEADDR + ((V_offset + j) * 4 ), _d ); //write to another location gray pixel
			}
			V_offset = V_offset + 640;
		}
	} else if (FRAME_INTR == 2) {
		for(i = 0; i < rows; i++) {
			for (j = 0; j < cols; j++) {
				_s = Xil_In32(VIDEO_BASEADDR_odd + ((V_offset + j) * 4) ); //Get the colored image pixel

				r = (_s & 0xff);
				g = (_s & 0xff00 >> 8);
				b = (_s & 0xff0000 >> 16);
				c = (r + g + b)/3;
				if (c > 255)
					c = 255;
				_d = (c & 0xff) | ((c & 0xff) << 8) | ((c & 0xff) << 16);
				Xil_Out32( PROC_VIDEO_BASEADDR + ((V_offset + j) * 4 ), _d ); //write to another location gray pixel
			}
			V_offset = V_offset + 640;
		}
	}


	Xil_Out32((u32) 0xfffffff0, (u32) 0x0);
	asm volatile("bx %0" : : "r" (0x06000000));
}


/***************************************************************************//**
 * @brief Main function.
 *
 * @return Returns 0.
*******************************************************************************/
int main()
{
	UINT32 StartCount;
	int xstatus;
	int delay;
	MajorRev     = 1;
	MinorRev     = 1;
	RcRev        = 1;
	DriverEnable = TRUE;
	LastEnable   = FALSE;

	void (*funcPtr_CPU1init)() = CPU1_init;
	void (*funcPtr_CPU1processFrame)() = CPU1processFrame;

    /* Disable caching on shared OCM data by setting the appropriate TLB
     * attributes for the shared data space in OCM.
	 *
     * S=b1
     * TEX=b100
     * AP=b11
     * Domain=b1111
     * C=b0
     * B=b0
	 */
    Xil_SetTlbAttributes(SHARED_OCM_MEMORY_BASE, 0x14de2);

	Xil_ICacheEnable();
	Xil_DCacheEnable();

	HAL_PlatformInit(XPAR_AXI_IIC_0_BASEADDR,	/* Perform any required platform init */
					 XPAR_SCUTIMER_DEVICE_ID,	/* including hardware reset to HDMI devices */
					 XPAR_SCUGIC_SINGLE_DEVICE_ID,
					 XPAR_SCUTIMER_INTR);


	DBG_MSG("  To change the video resolution press:\r\n");
	DBG_MSG("  '0' - 640x480;  '1' - 800x600;  '2' - 1024x768; '3' - 1280x720 \r\n");
	DBG_MSG("  '4' - 1360x768; '5' - 1600x900; '6' - 1920x1080.\r\n");

	ADIAPI_TransmitterInit();   /* Initialize ADI repeater software and h/w */
	ADIAPI_TransmitterSetPowerMode(REP_POWER_UP);

	StartCount = HAL_GetCurrentMsCount();
	ADIAPI_TransmitterMain();
	
	/*Initialize the HDMI Core with default display settings*/
	SetVideoResolution(RESOLUTION_640x480); 




	// initializing cpu1
	Xil_Out32(0xfffffff0, (u32) funcPtr_CPU1init);
	dmb(); // Wait until memory write has finished.
	sev();

	for (delay=0; delay<10000000; delay++);			//sufficient delay to ensure cpu1 has been initialized!! better way could be use semaphore for inter cpu communuication




	/* Initialize the interrupt controller */
	xstatus = ScuGicInterrupt_Init();
	if (xstatus != XST_SUCCESS) {
		xil_printf("Unable to initialize Interrupts");
	  		//return XST_FAILURE;
	  	}

	ConfigHdmiVDMA(detailedTiming[currentResolution][H_ACTIVE_TIME], detailedTiming[currentResolution][V_ACTIVE_TIME], PROC_VIDEO_BASEADDR);



	while (APP_ChangeResolution())
	{
		if (ATV_GetElapsedMs (StartCount, NULL) >= HDMI_CALL_INTERVAL_MS)
		{
			StartCount = HAL_GetCurrentMsCount();
			if (APP_DriverEnabled())
			{
				ADIAPI_TransmitterMain();
			}
		}

		//ISSUE: very small time b/w two interrupts left so for whole image only one image is served
		// if somehow both are copied then there is slight allignment problem b/w 2 frames as respective DDRVideoWr() calls are not in sync.

		while (FRAME_INTR == 0);

		if (FRAME_INTR == 1) {
			DDRVideoWr(640, 480, detailedTiming[currentResolution][H_ACTIVE_TIME], detailedTiming[currentResolution][V_ACTIVE_TIME], VIDEO_BASEADDR_odd);
		} else if (FRAME_INTR == 2) {
			DDRVideoWr(640, 480, detailedTiming[currentResolution][H_ACTIVE_TIME], detailedTiming[currentResolution][V_ACTIVE_TIME], VIDEO_BASEADDR_even);
		}
		// interrupting CPU1 to start processing these frames
		Xil_Out32(0xfffffff0, (u32) funcPtr_CPU1processFrame);
		dmb(); // Wait until memory write has finished.
		sev();

		FRAME_INTR = 0;
	}

	Xil_DCacheDisable();
	Xil_ICacheDisable();

	return(0);
}