################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/multicore_supp/SoCProc_support.c \
../src/multicore_supp/SoCProc_support_config.c \
../src/multicore_supp/XIL_MICROBLAZE_8_5_support.c \
../src/multicore_supp/ZYNQ_ARM_CORTEX_A9_support.c 

OBJS += \
./src/multicore_supp/SoCProc_support.o \
./src/multicore_supp/SoCProc_support_config.o \
./src/multicore_supp/XIL_MICROBLAZE_8_5_support.o \
./src/multicore_supp/ZYNQ_ARM_CORTEX_A9_support.o 

C_DEPS += \
./src/multicore_supp/SoCProc_support.d \
./src/multicore_supp/SoCProc_support_config.d \
./src/multicore_supp/XIL_MICROBLAZE_8_5_support.d \
./src/multicore_supp/ZYNQ_ARM_CORTEX_A9_support.d 


# Each subdirectory must supply rules for building sources it contributes
src/multicore_supp/%.o: ../src/multicore_supp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/dualCore_SOGRER_libIntegration/videoProcessing_prj/SDK/SDK_Workspace/SOERGR_sw/src/inc" -c -fmessage-length=0 -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


