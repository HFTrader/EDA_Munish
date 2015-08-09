################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/GrayscaleIP_Rule1Driver.c \
../src/src/GrayscaleIP_Rule2Driver.c \
../src/src/GrayscaleIP_SW.c \
../src/src/GrayscaleIP_config.c \
../src/src/GrayscaleIP_func.c \
../src/src/VDMAIP_Driver.c \
../src/src/axi_interrupt.c \
../src/src/cf_hdmi.c \
../src/src/main.c \
../src/src/transmitter.c 

OBJS += \
./src/src/GrayscaleIP_Rule1Driver.o \
./src/src/GrayscaleIP_Rule2Driver.o \
./src/src/GrayscaleIP_SW.o \
./src/src/GrayscaleIP_config.o \
./src/src/GrayscaleIP_func.o \
./src/src/VDMAIP_Driver.o \
./src/src/axi_interrupt.o \
./src/src/cf_hdmi.o \
./src/src/main.o \
./src/src/transmitter.o 

C_DEPS += \
./src/src/GrayscaleIP_Rule1Driver.d \
./src/src/GrayscaleIP_Rule2Driver.d \
./src/src/GrayscaleIP_SW.d \
./src/src/GrayscaleIP_config.d \
./src/src/GrayscaleIP_func.d \
./src/src/VDMAIP_Driver.d \
./src/src/axi_interrupt.d \
./src/src/cf_hdmi.d \
./src/src/main.d \
./src/src/transmitter.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/work_dir/dualCore_SOGRER_libIntegration/videoProcessing_prj/SDK/SDK_Workspace/SOERGR_sw/src/inc" -c -fmessage-length=0 -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


