// still to think of the best way to generate this file from SoC architecture description (IP-Xact) that could be used to HA related methods and data in "hwsw_functions.h"

#ifndef SOC_CONFIG_H_
#define SOC_CONFIG_H_

#define SOBEL_HA
#define SobelFilter_VDMA_BASEADDR 0x43020000
#define SobelFilter_VDMA_INTR_ID 65
#define SobelFilter_CONTROL_BUS_BASEADDR 0x71800000

#define ERODE_HA
#define ErodeFilter_VDMA_BASEADDR 0x43000000
#define ErodeFilter_VDMA_INTR_ID 61
#define ErodeFilter_CONTROL_BUS_BASEADDR 0x7C800000

#define GRAYSCALE_HA
#define GrayscaleFilter_VDMA_BASEADDR 0x43040000
#define GrayscaleFilter_VDMA_INTR_ID 68
#define GrayscaleFilter_CONTROL_BUS_BASEADDR 0x67C00000

#define NUM_PROCS 2
// one processor of type ARM CortexA9 on ZynqPS
// this processor has its private memory space with baseaddr = 0x10000000
#define ZYNQ_BOOT_ADDR 0xffffff34			// only specific for ARM Cortex A9 processors on Zynq-PS

// one processor of type Microblaze 8.5 IP core on ZynqPL
// this processor has its private memory space with baseaddr = 0x20000000

#endif
