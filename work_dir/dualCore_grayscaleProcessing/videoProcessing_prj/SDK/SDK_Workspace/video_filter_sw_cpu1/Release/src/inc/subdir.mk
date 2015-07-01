################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/inc/xgray_scale.c 

OBJS += \
./src/inc/xgray_scale.o 

C_DEPS += \
./src/inc/xgray_scale.d 


# Each subdirectory must supply rules for building sources it contributes
src/inc/%.o: ../src/inc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -c -fmessage-length=0 -I../../standalone_amp_bsp_0/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


