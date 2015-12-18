// config for rule1 i.e corresponding to only GrayscaleIP+VDMAIP to do grayscale filtering


#ifndef __CONFIG_H__
#include "../../../SubSystemIntegrationSW/Rule3/drivers/driver.h"

//#define XPAR_CONVERT_TO_GRAY_TOP_0_S_AXI_CONTROL_BUS_BASEADDR 0x6E800000
//#define XPAR_FABRIC_CONVERT_TO_GRAY_TOP_0_INTERRUPT_INTR 67
//#define XPAR_AXI_VDMA_1_BASEADDR 0x43040000
//#define XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR 84
//#define XPAR_FABRIC_AXI_VDMA_1_MM2S_INTROUT_INTR 68

#define Subsystem_R3_NUM_INSTANCES 1
#define Subsystem_R3_GRAYSCALEIP_BASEADDR XPAR_CONVERT_TO_GRAY_TOP_0_S_AXI_CONTROL_BUS_BASEADDR
#define Subsystem_R3_GRAYSCALEIP_INTRID XPAR_FABRIC_CONVERT_TO_GRAY_TOP_0_INTERRUPT_INTR
#define Subsystem_R3_VDMAIP_BASEADDR XPAR_AXI_VDMA_1_BASEADDR
#define Subsystem_R3_VDMAIP_INTRID XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR


Subsystem_R3_RegMap Subsystem_R3_InitMode = {
                ._GrayscaleIP_RegMap = {
								.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
								.GIE = {.offset = 0x04, .mask = 0x00000001, .value = 0x00000000},
								.IER = {.offset = 0x08, .mask = 0x00000001, .value = 0x00000000},
								.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
								.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
								.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
							  },

		 ._VDMAIP_RegMap = {
								 .MM2S_DMACR = {.offset = 0x00, .mask = 0x00000004, .value = 0x00000004},
								 //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_DMACR = {.offset = 0x30, .mask = 0x00000004, .value = 0x00000004},
								 .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								 //      ...     //  NOTE: not shown here for simplicity
								 .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								  //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								 //      ...     //  NOTE: not shown here for simplicity
							    }
           };




Subsystem_R3_RegMap Subsystem_R3_StartMode = {
                ._GrayscaleIP_RegMap = {
								.AP_CTRL = {.offset = 0x00, .mask = 0x00000000, .value = 0xffffffff},
								.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
								.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
								.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
								.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
								.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
							 },

 	   	._VDMAIP_RegMap = {
								 .MM2S_DMACR = {.offset = 0x00, .mask = 0xffffffff, .value = 0x00011003},
								 //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_DMACR = {.offset = 0x30, .mask = 0xffffffff, .value = 0x00011003},
								 .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								 //      ...     //  NOTE: not shown here for simplicity
								 .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								 //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								 //      ...     //  NOTE: not shown here for simplicity
                }
           };




Subsystem_R3_RegMap Subsystem_R3_StopMode = {
                ._GrayscaleIP_RegMap = {
								.AP_CTRL = {.offset = 0x00, .mask = 0x00000001, .value = 0x00000000},
								.GIE = {.offset = 0x04, .mask = 0x00000000, .value = 0xffffffff},
								.IER = {.offset = 0x08, .mask = 0x00000000, .value = 0xffffffff},
								.ISR = {.offset = 0x0c, .mask = 0x00000000, .value = 0xffffffff},
								.ROWS_DATA = {.offset = 0x14, .mask = 0x00000000, .value = 0xffffffff},
								.COLS_DATA = {.offset = 0x1c, .mask = 0x00000000, .value = 0xffffffff}
							 },

		._VDMAIP_RegMap = {
								 .MM2S_DMACR = {.offset = 0x00, .mask = 0x00000001, .value = 0x00000000},
								 //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_DMACR = {.offset = 0x30, .mask = 0x00000001, .value = 0x00000000},
								 .S2MM_DMASR = {.offset = 0x34, .mask = 0x00000000, .value = 0xffffffff},
								 //      ...     //  NOTE: not shown here for simplicity
								 .MM2S_VSIZE = {.offset = 0x50, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_HSIZE = {.offset = 0x54, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_FRMDLY_STRIDE  = {.offset = 0x58, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS1 = {.offset = 0x5c, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS2 = {.offset = 0x60, .mask = 0x00000000, .value = 0xffffffff},
								 .MM2S_START_ADDRESS3 = {.offset = 0x64, .mask = 0x00000000, .value = 0xffffffff},
								 //      ...     //  NOTE: not shown here for simplicity
								 .S2MM_VSIZE = {.offset = 0xa0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_HSIZE = {.offset = 0xa4, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_FRMDLY_STRIDE  = {.offset = 0xa8, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS1 = {.offset = 0xac, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS2 = {.offset = 0xb0, .mask = 0x00000000, .value = 0xffffffff},
								 .S2MM_START_ADDRESS3 = {.offset = 0xb4, .mask = 0x00000000, .value = 0xffffffff}
								 //      ...     //  NOTE: not shown here for simplicity
							    }
           };

#endif