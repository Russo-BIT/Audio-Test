################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/cv/alt_clock_manager.c 

OBJS += \
./Drivers/FatFS/hwlib/cv/alt_clock_manager.o 

C_DEPS += \
./Drivers/FatFS/hwlib/cv/alt_clock_manager.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FatFS/hwlib/cv/alt_clock_manager.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/cv/alt_clock_manager.c Drivers/FatFS/hwlib/cv/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


