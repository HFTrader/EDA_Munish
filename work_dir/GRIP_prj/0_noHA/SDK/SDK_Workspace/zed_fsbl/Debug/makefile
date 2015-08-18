################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
zed_fsbl.elf.size \


# All Target
all: zed_fsbl.elf secondary-outputs

# Tool invocations
zed_fsbl.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-xilinx-eabi-gcc -L"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/munish/OS_zed/zynq_workspace/cf_adv7511_zed_SEG_UIO_newcores/SDK/SDK_Workspace/zed_fsbl/src" -Wl,-T -Wl,../src/lscript.ld -L../../zed_fsbl_bsp/ps7_cortexa9_0/lib -o "zed_fsbl.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

zed_fsbl.elf.size: zed_fsbl.elf
	@echo 'Invoking: ARM Print Size'
	arm-xilinx-eabi-size zed_fsbl.elf  |tee "zed_fsbl.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(S_UPPER_DEPS) zed_fsbl.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
