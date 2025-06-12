################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.c 

OBJS += \
./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.o 

C_DEPS += \
./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.c Drivers/BSP/STM32H7xx_Nucleo_144/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DCORE_CM7 -DSTM32H755xx -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../1_Image_SECoreBin/Inc -I../../../1_Image_SBSFU/SBSFU/App -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32H7xx_Nucleo_144

clean-Drivers-2f-BSP-2f-STM32H7xx_Nucleo_144:
	-$(RM) ./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.cyclo ./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.d ./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.o ./Drivers/BSP/STM32H7xx_Nucleo_144/stm32h7xx_nucleo_144.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32H7xx_Nucleo_144

