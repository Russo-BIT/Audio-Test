################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_globaltmr.c \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_sdmmc.c \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_timers.c \
C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_watchdog.c 

OBJS += \
./Drivers/FatFS/hwlib/alt_globaltmr.o \
./Drivers/FatFS/hwlib/alt_sdmmc.o \
./Drivers/FatFS/hwlib/alt_timers.o \
./Drivers/FatFS/hwlib/alt_watchdog.o 

C_DEPS += \
./Drivers/FatFS/hwlib/alt_globaltmr.d \
./Drivers/FatFS/hwlib/alt_sdmmc.d \
./Drivers/FatFS/hwlib/alt_timers.d \
./Drivers/FatFS/hwlib/alt_watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/FatFS/hwlib/alt_globaltmr.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_globaltmr.c Drivers/FatFS/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/hwlib/alt_sdmmc.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_sdmmc.c Drivers/FatFS/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/hwlib/alt_timers.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_timers.c Drivers/FatFS/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/FatFS/hwlib/alt_watchdog.o: C:/Users/rooth/Workspace/ELEC5620M-Resources/Drivers/FatFS/hwlib/alt_watchdog.c Drivers/FatFS/hwlib/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


