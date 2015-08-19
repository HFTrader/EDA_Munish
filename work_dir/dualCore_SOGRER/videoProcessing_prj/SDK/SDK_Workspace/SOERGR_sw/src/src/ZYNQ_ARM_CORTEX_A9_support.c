/*
 * ZYNQ_ARM_CORTEX_A9_support.c
 *
 *  Created on: Jul 17, 2015
 *      Author: ga38qoh
 */

// this file contains code that is used to setup Zynq ARM Cortex A9 core and to enable it to execute any dataprocessing task
// The Master CPU does:
// * triggers this core to execute the initial bootup code to power up
// * triggers this core to execute a particular data processing method
#include "ZYNQ_ARM_CORTEX_A9_support.h"
#include "xil_io.h"
#include "xil_mmu.h"



void ZYNQ_ARM_CORTEX_A9_initialize(unsigned int MEM_BASEADDR) {
	CORE_MEM_BASEADDR = MEM_BASEADDR;		// storing the passed MEM_BASEADDR by the callee (SoCProc_support.h) into this module's global variable which will later be stored in CPU's function's local scope

	// interrupting this core to run startup code
	Xil_Out32(0xfffffff0, (u32) Powerup);
	dmb();			// wait till memory write has finished
	sev();			// trigger this core to start executing Powerup() function
}



void ZYNQ_ARM_CORTEX_A9_process(unsigned char *busy, unsigned int MEM_BASEADDR) {
	// storing the MEM_BASEADDR and pointer to SoCProc_element.busy from passed variables (from SoCProc_support module) to Global variables so that can be stored in local variables later
	CORE_MEM_BASEADDR = MEM_BASEADDR;			   // see Powerup() function
	CORE_BUSY_STATUS_PTR = busy;				   // binds the global busy pointer for this module to passed busy flag memory location

	// interrupting this core to run data processing chain that is passed
	Xil_Out32(0xfffffff0, (u32) mainProcess);
	dmb();
	sev();
}



// the initial boot code (wait for SEV from cpu0 code) is copied to DDR memory as it was found that it got corrupted while using code from 0xffffff00 during runtime
void Powerup() {
    // BSP startup code!!
	asm volatile (
						/* Write to ACTLR */
						"mrc	p15, 0, r0, c1, c0, 1		/* Read ACTLR*/\n"
						"orr	r0, r0, #(0x01 << 6)		/* set SMP bit */\n"
						"orr	r0, r0, #(0x01 )		/* */\n"
						"mcr	p15, 0, r0, c1, c0, 1		/* Write ACTLR*/\n"

						/* Invalidate caches and TLBs */
						"mov	r0,#0				/* r0 = 0  */\n"
						"mcr	p15, 0, r0, c8, c7, 0		/* invalidate TLBs */\n"
						"mcr	p15, 0, r0, c7, c5, 0		/* invalidate icache */\n"
						"mcr	p15, 0, r0, c7, c5, 6		/* Invalidate branch predictor array */\n"
						"bl	invalidate_dcache		/* invalidate dcache */\n"

						"invalidate_dcache:\n"
						"	mrc	p15, 1, r0, c0, c0, 1		/* read CLIDR */\n"
						"	ands	r3, r0, #0x7000000\n"
						"	mov	r3, r3, lsr #23			/* cache level value (naturally aligned) */\n"
						"	beq	finished\n"
						"	mov	r10, #0				/* start with level 0 */\n"
						"loop1:\n"
						"	add	r2, r10, r10, lsr #1		/* work out 3xcachelevel */\n"
						"	mov	r1, r0, lsr r2			/* bottom 3 bits are the Cache type for this level */\n"
						"	and	r1, r1, #7			/* get those 3 bits alone */\n"
						"	cmp	r1, #2\n"
						"	blt	skip				/* no cache or only instruction cache at this level */\n"
						"	mcr	p15, 2, r10, c0, c0, 0		/* write the Cache Size selection register */\n"
						"	isb					/* isb to sync the change to the CacheSizeID reg */\n"
						"	mrc	p15, 1, r1, c0, c0, 0		/* reads current Cache Size ID register */\n"
						"	and	r2, r1, #7			/* extract the line length field */\n"
						"	add	r2, r2, #4			/* add 4 for the line length offset (log2 16 bytes) */\n"
						"	ldr	r4, =0x3ff\n"
						"	ands	r4, r4, r1, lsr #3		/* r4 is the max number on the way size (right aligned) */\n"
						"	clz	r5, r4				/* r5 is the bit position of the way size increment */\n"
						"	ldr	r7, =0x7fff\n"
						"	ands	r7, r7, r1, lsr #13		/* r7 is the max number of the index size (right aligned) */\n"
						"loop2:\n"
						"	mov	r9, r4				/* r9 working copy of the max way size (right aligned) */\n"
						"loop3:\n"
						"	orr	r11, r10, r9, lsl r5		/* factor in the way number and cache number into r11 */\n"
						"	orr	r11, r11, r7, lsl r2		/* factor in the index number */\n"
						"	mcr	p15, 0, r11, c7, c14, 2		/* clean & invalidate by set/way */\n"
						"	subs	r9, r9, #1			/* decrement the way number */\n"
						"	bge	loop3\n"
						"	subs	r7, r7, #1			/* decrement the index */\n"
						"	bge	loop2\n"
						"skip:\n"
						"	add	r10, r10, #2			/* increment the cache number */\n"
						"	cmp	r3, r10\n"
						"	bgt	loop1\n"

						"finished:\n"
						"	mov	r10, #0				/* swith back to cache level 0 */\n"
						"	mcr	p15, 2, r10, c0, c0, 0		/* select current cache level in cssr */\n"
						"	dsb\n"
						"	isb\n"


						/* Disable MMU, if enabled */
						"mrc	p15, 0, r0, c1, c0, 0		/* read CP15 register 1 */\n"
						"bic	r0, r0, #0x1			/* clear bit 0 */\n"
						"mcr	p15, 0, r0, c1, c0, 0		/* write value back */\n"

						/* setup stack pointer for cpu1*/
						"mrs	r0, cpsr			/* get the current PSR */\n"
						"mvn	r1, #0x1f			/* set up the system stack pointer */\n"
						"and	r2, r1, r0\n"
						"orr	r2, r2, #0x1F			/* SYS mode */\n"
						"msr	cpsr, r2\n"
						"ldr	r13,=__stack1			/* SYS stack pointer */\n"

						/* enable MMU and cache */
						"ldr	r0,=MMUTable			/* Load MMU translation table base */\n"
						"orr	r0, r0, #0x5B			/* Outer-cacheable, WB */\n"
						"mcr	15, 0, r0, c2, c0, 0		/* TTB0 */\n"

						"mvn	r0,#0				/* Load MMU domains -- all ones=manager */\n"
						"mcr	p15,0,r0,c3,c0,0\n"

						/* Enable mmu, icahce and dcache */
						"ldr	r0,=0b01000000000101\n"
						"mcr	p15,0,r0,c1,c0,0		/* Enable cache and MMU */\n"
						"dsb					/* dsb	allow the MMU to start up */\n"
						"isb					/* isb	flush prefetch buffer */\n"

						/* enable FPU */
						"mov	r0, r0\n"
						"mrc	p15, 0, r1, c1, c0, 2		/* read cp access control register (CACR) into r1 */\n"
						"orr	r1, r1, #(0xf << 20)		/* enable full access for p10 & p11 */\n"
						"mcr	p15, 0, r1, c1, c0, 2		/* write back into CACR */\n"

						/* enable vfp*/
						"fmrx	r1, FPEXC			/* read the exception register */\n"
						"orr	r1,r1, #0x40000000		/* set VFP enable bit, leave the others in orig state */\n"
						"fmxr	FPEXC, r1			/* write back the exception register */\n"

						"mrc	p15,0,r0,c1,c0,0		/* flow prediction enable */\n"
						"orr	r0, r0, #(0x01 << 11)		/* #0x8000 */\n"
						"mcr	p15,0,r0,c1,c0,0\n"

						"mrc	p15,0,r0,c1,c0,1		/* read Auxiliary Control Register */\n"
						"orr	r0, r0, #(0x1 << 2)		/* enable Dside prefetch */\n"
						"orr	r0, r0, #(0x1 << 1)		/* enable L2 Prefetch hint */\n"
						"mcr	p15,0,r0,c1,c0,1		/* write Auxiliary Control Register */\n"

				);


	// duplicating the initial boot code for CPU1 into ddr
	Xil_Out32((u32) CORE_MEM_BASEADDR, (u32) 0xe3e0000f);
	Xil_Out32((u32) CORE_MEM_BASEADDR+4, (u32) 0xe3a01000);
	Xil_Out32((u32) CORE_MEM_BASEADDR+8, (u32) 0xe5801000);
	Xil_Out32((u32) CORE_MEM_BASEADDR+12, (u32) 0xe320f002);
	Xil_Out32((u32) CORE_MEM_BASEADDR+16, (u32) 0xe5902000);
	Xil_Out32((u32) CORE_MEM_BASEADDR+20, (u32) 0xe1520001);
	Xil_Out32((u32) CORE_MEM_BASEADDR+24, (u32) 0x0afffffb);
	Xil_Out32((u32) CORE_MEM_BASEADDR+28, (u32) 0xe1a0f002);

    /* Disable caching on shared OCM data by setting the appropriate TLB
       attributes for the shared data space in OCM.*/
	// making sure that this core has the same memory view as that of Master CPU!!
    Xil_SetTlbAttributes(0xffff0000, 0x14de2);

	// branching to initial boot code (waiting for sev from Master CPU)
	Xil_Out32((u32) 0xfffffff0, (u32) 0x0);
	asm volatile("bx %0" : : "r" (CORE_MEM_BASEADDR));
}


void mainProcess() {
	// storing the MEM_BASEADDR and pointer to SoCProc_element.busy from Global to local variable so as not to conflict with other cores of this type simultaneously executing this code
	unsigned int local_MEM_BASEADDR = CORE_MEM_BASEADDR;			// see Powerup() for more details

	// this is verified in C that statement "unsigned char *local_busy_ptr = CORE_BUSY_STATUS_PTR;" would cause to store CORE_BUSY_STATUS_PTR(global) content at this time onto "local_busy_ptr"(local) and local_busy_ptr is bound to that location which could only change by assigning it to some other location only...any further change to global pointer wont cause any change in local (which is expected Python behavior)
	unsigned char *local_busy_ptr = CORE_BUSY_STATUS_PTR;			// binds this function's local local busy ptr (this CORE's INSTANCE's pointer for busy flag) to global busy ptr (this CORE's pointer to busy flag......this is accessible to all instances of these cores)
																	// this is done to so that after completion of processing (mainProcess() call) the correct SoCProc_elem (in SoCProc_support module) busy flag is deasserted
																	// suppose there are 2 cores of this type (A and B) in SoC and assume that A core gets a request to process the data first...if you dont do this then there is a chance that
																	// B's process method is called before A has finished processing (and deasserted the busy flag) which would cause the global pointer to point to some other busy flag which could mess up the operation of  A method as it should know the location of the old busy flag!!

	// NOTE: function call should be generated by the template engine
	processFrame(local_MEM_BASEADDR + 0x1000000);

	// make busy low to indicate to SoCProc_support moudle of successful completion
	*local_busy_ptr = 0;

	// should reset stack here and return to initial boot code to stop the CPU1 stack buffer to overflow (No return statement at the end of this function to pop stack!!)
	asm volatile (
						"mrs	r0, cpsr			/* get the current PSR */\n"
						"mvn	r1, #0x1f			/* set up the system stack pointer */\n"
						"and	r2, r1, r0\n"
						"orr	r2, r2, #0x1F			/* SYS mode */\n"
						"msr	cpsr, r2\n"
						"ldr	r13,=__stack1			/* SYS stack pointer */\n"
				   );

	// branching to initial boot code (waiting for sev from cpu 0)
	Xil_Out32((u32) 0xfffffff0, (u32) 0x0);
	asm volatile("bx %0" : : "r" (local_MEM_BASEADDR));
}


