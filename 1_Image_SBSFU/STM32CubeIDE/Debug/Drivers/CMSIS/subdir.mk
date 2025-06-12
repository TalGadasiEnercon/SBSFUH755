################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32h7xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32h7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32h7xx.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/system_stm32h7xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32h7xx.cyclo ./Drivers/CMSIS/system_stm32h7xx.d ./Drivers/CMSIS/system_stm32h7xx.o ./Drivers/CMSIS/system_stm32h7xx.su

.PHONY: clean-Drivers-2f-CMSIS

