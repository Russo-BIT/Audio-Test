################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/HPS_usleep/HPS_usleep.c 

OBJS += \
./Drivers/HPS_usleep/HPS_usleep.o 

C_DEPS += \
./Drivers/HPS_usleep/HPS_usleep.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/HPS_usleep/HPS_usleep.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/HPS_usleep/HPS_usleep.c Drivers/HPS_usleep/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


