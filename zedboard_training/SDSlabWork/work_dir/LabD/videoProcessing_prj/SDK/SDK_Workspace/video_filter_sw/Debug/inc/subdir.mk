################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../inc/xgray_scale.c 

OBJS += \
./inc/xgray_scale.o 

C_DEPS += \
./inc/xgray_scale.d 


# Each subdirectory must supply rules for building sources it contributes
inc/%.o: ../inc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I"/nfs/TUEIEDAprojects/SystemDesign/work/zynq/mamatha/uzair_sharif/EDA_Munish/zedboard_training/SDSlabWork/work_dir/LabD/videoProcessing_prj/SDK/SDK_Workspace/video_filter_sw/inc" -c -fmessage-length=0 -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


