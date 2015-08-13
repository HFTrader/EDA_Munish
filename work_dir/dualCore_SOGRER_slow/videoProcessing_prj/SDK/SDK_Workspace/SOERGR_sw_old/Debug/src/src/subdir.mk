################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/SoCProc_support.c \
../src/src/XIL_MICROBLAZE_8_5_support.c \
../src/src/ZYNQ_ARM_CORTEX_A9_support.c \
../src/src/axi_interrupt.c \
../src/src/cf_hdmi.c \
../src/src/hwsw_functions.c \
../src/src/main.c \
../src/src/sw_functions.c \
../src/src/transmitter.c \
../src/src/vdma_config.c \
../src/src/xgray_scale.c \
../src/src/ximage_filter.c \
../src/src/xsobel_filter.c 

OBJS += \
./src/src/SoCProc_support.o \
./src/src/XIL_MICROBLAZE_8_5_support.o \
./src/src/ZYNQ_ARM_CORTEX_A9_support.o \
./src/src/axi_interrupt.o \
./src/src/cf_hdmi.o \
./src/src/hwsw_functions.o \
./src/src/main.o \
./src/src/sw_functions.o \
./src/src/transmitter.o \
./src/src/vdma_config.o \
./src/src/xgray_scale.o \
./src/src/ximage_filter.o \
./src/src/xsobel_filter.o 

C_DEPS += \
./src/src/SoCProc_support.d \
./src/src/XIL_MICROBLAZE_8_5_support.d \
./src/src/ZYNQ_ARM_CORTEX_A9_support.d \
./src/src/axi_interrupt.d \
./src/src/cf_hdmi.d \
./src/src/hwsw_functions.d \
./src/src/main.d \
./src/src/sw_functions.d \
./src/src/transmitter.d \
./src/src/vdma_config.d \
./src/src/xgray_scale.d \
./src/src/ximage_filter.d \
./src/src/xsobel_filter.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/dualCore_SOGRER_slow/videoProcessing_prj/SDK/SDK_Workspace/SOERGR_sw/src/inc" -c -fmessage-length=0 -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


