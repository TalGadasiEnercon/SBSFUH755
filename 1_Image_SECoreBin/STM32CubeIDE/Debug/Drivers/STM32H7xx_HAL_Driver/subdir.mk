################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc_ex.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.c 

OBJS += \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.o \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.o \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.o \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.o 

C_DEPS += \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.d \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.d \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.d \
./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc.c Drivers/STM32H7xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H753xx -DUSE_STM32H7XX_NUCLEO_144 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32H7/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../1_Image_SBSFU/SBSFU/App -I../../../1_Image_SBSFU/SBSFU/Target -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_crc_ex.c Drivers/STM32H7xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H753xx -DUSE_STM32H7XX_NUCLEO_144 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32H7/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../1_Image_SBSFU/SBSFU/App -I../../../1_Image_SBSFU/SBSFU/Target -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.c Drivers/STM32H7xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H753xx -DUSE_STM32H7XX_NUCLEO_144 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32H7/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../1_Image_SBSFU/SBSFU/App -I../../../1_Image_SBSFU/SBSFU/Target -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.c Drivers/STM32H7xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H753xx -DUSE_STM32H7XX_NUCLEO_144 -c -I../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32H7/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../1_Image_SBSFU/SBSFU/App -I../../../1_Image_SBSFU/SBSFU/Target -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-STM32H7xx_HAL_Driver

clean-Drivers-2f-STM32H7xx_HAL_Driver:
	-$(RM) ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.cyclo ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.d ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.o ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc.su ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.cyclo ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.d ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.o ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_crc_ex.su ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.cyclo ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.d ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.o ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash.su ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.cyclo ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.d ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.o ./Drivers/STM32H7xx_HAL_Driver/stm32h7xx_hal_flash_ex.su

.PHONY: clean-Drivers-2f-STM32H7xx_HAL_Driver

