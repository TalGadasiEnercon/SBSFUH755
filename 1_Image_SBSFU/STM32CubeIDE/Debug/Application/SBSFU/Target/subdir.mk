################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash_ext.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash_int.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_security.c 

OBJS += \
./Application/SBSFU/Target/sfu_low_level.o \
./Application/SBSFU/Target/sfu_low_level_flash.o \
./Application/SBSFU/Target/sfu_low_level_flash_ext.o \
./Application/SBSFU/Target/sfu_low_level_flash_int.o \
./Application/SBSFU/Target/sfu_low_level_security.o 

C_DEPS += \
./Application/SBSFU/Target/sfu_low_level.d \
./Application/SBSFU/Target/sfu_low_level_flash.d \
./Application/SBSFU/Target/sfu_low_level_flash_ext.d \
./Application/SBSFU/Target/sfu_low_level_flash_int.d \
./Application/SBSFU/Target/sfu_low_level_security.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SBSFU/Target/sfu_low_level.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash_ext.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash_ext.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash_int.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_flash_int.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_security.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/SBSFU/Target/sfu_low_level_security.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32H755xx -DCORE_CM7 -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-SBSFU-2f-Target

clean-Application-2f-SBSFU-2f-Target:
	-$(RM) ./Application/SBSFU/Target/sfu_low_level.cyclo ./Application/SBSFU/Target/sfu_low_level.d ./Application/SBSFU/Target/sfu_low_level.o ./Application/SBSFU/Target/sfu_low_level.su ./Application/SBSFU/Target/sfu_low_level_flash.cyclo ./Application/SBSFU/Target/sfu_low_level_flash.d ./Application/SBSFU/Target/sfu_low_level_flash.o ./Application/SBSFU/Target/sfu_low_level_flash.su ./Application/SBSFU/Target/sfu_low_level_flash_ext.cyclo ./Application/SBSFU/Target/sfu_low_level_flash_ext.d ./Application/SBSFU/Target/sfu_low_level_flash_ext.o ./Application/SBSFU/Target/sfu_low_level_flash_ext.su ./Application/SBSFU/Target/sfu_low_level_flash_int.cyclo ./Application/SBSFU/Target/sfu_low_level_flash_int.d ./Application/SBSFU/Target/sfu_low_level_flash_int.o ./Application/SBSFU/Target/sfu_low_level_flash_int.su ./Application/SBSFU/Target/sfu_low_level_security.cyclo ./Application/SBSFU/Target/sfu_low_level_security.d ./Application/SBSFU/Target/sfu_low_level_security.o ./Application/SBSFU/Target/sfu_low_level_security.su

.PHONY: clean-Application-2f-SBSFU-2f-Target

