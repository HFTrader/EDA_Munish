################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/inc/xgray_scale.c \
../src/inc/ximage_filter.c \
../src/inc/xsobel_filter.c 

OBJS += \
./src/inc/xgray_scale.o \
./src/inc/ximage_filter.o \
./src/inc/xsobel_filter.o 

C_DEPS += \
./src/inc/xgray_scale.d \
./src/inc/ximage_filter.d \
./src/inc/xsobel_filter.d 


# Each subdirectory must supply rules for building sources it contributes
src/inc/%.o: ../src/inc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I/home/ga46sam/zync_work/Performances/opencv_install -c -fmessage-length=0 -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


