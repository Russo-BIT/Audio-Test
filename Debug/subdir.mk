################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../audioFunc.c \
../main.c \
../shotAudio.c 

OBJS += \
./audioFunc.o \
./main.o \
./shotAudio.o 

C_DEPS += \
./audioFunc.d \
./main.d \
./shotAudio.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Arm C Compiler for Embedded 6'
	armclang.exe --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=none -mfloat-abi=soft -marm -I"C:\Users\rooth\Workspace\ELEC5620M-Resources\Drivers" -O0 -g -mno-unaligned-access -MD -MP -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


