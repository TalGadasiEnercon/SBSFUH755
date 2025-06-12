################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/main.c \
../Application/Core/sfu_secorebin_Inc.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/stm32h7xx_hal_msp.c \
C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/stm32h7xx_it.c \
../Application/Core/syscalls.c 

OBJS += \
./Application/Core/main.o \
./Application/Core/sfu_secorebin_Inc.o \
./Application/Core/stm32h7xx_hal_msp.o \
./Application/Core/stm32h7xx_it.o \
./Application/Core/syscalls.o 

C_DEPS += \
./Application/Core/main.d \
./Application/Core/sfu_secorebin_Inc.d \
./Application/Core/stm32h7xx_hal_msp.d \
./Application/Core/stm32h7xx_it.d \
./Application/Core/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Core/main.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/main.c Application/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32H7XX_NUCLEO_144 -DSTM32H753xx -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Core/%.o Application/Core/%.su Application/Core/%.cyclo: ../Application/Core/%.c Application/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32H7XX_NUCLEO_144 -DSTM32H753xx -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Core/stm32h7xx_hal_msp.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/stm32h7xx_hal_msp.c Application/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32H7XX_NUCLEO_144 -DSTM32H753xx -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Core/stm32h7xx_it.o: C:/Users/tal.gadasi/Downloads/en.x-cube-sbsfu-v2-7-0/STM32CubeExpansion_SBSFU_V2.7.0/Projects/NUCLEO-H753ZI/Applications/1_Image/1_Image_SBSFU/Core/Src/stm32h7xx_it.c Application/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DUSE_STM32H7XX_NUCLEO_144 -DSTM32H753xx -c -I../../../../../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../../../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/STM32H7xx_Nucleo_144 -I../../../../../../../Drivers/BSP/Components/Common -I../../Core/Inc -I../../SBSFU/App -I../../SBSFU/Target -I../../../1_Image_SECoreBin/Inc -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Core

clean-Application-2f-Core:
	-$(RM) ./Application/Core/main.cyclo ./Application/Core/main.d ./Application/Core/main.o ./Application/Core/main.su ./Application/Core/sfu_secorebin_Inc.cyclo ./Application/Core/sfu_secorebin_Inc.d ./Application/Core/sfu_secorebin_Inc.o ./Application/Core/sfu_secorebin_Inc.su ./Application/Core/stm32h7xx_hal_msp.cyclo ./Application/Core/stm32h7xx_hal_msp.d ./Application/Core/stm32h7xx_hal_msp.o ./Application/Core/stm32h7xx_hal_msp.su ./Application/Core/stm32h7xx_it.cyclo ./Application/Core/stm32h7xx_it.d ./Application/Core/stm32h7xx_it.o ./Application/Core/stm32h7xx_it.su ./Application/Core/syscalls.cyclo ./Application/Core/syscalls.d ./Application/Core/syscalls.o ./Application/Core/syscalls.su

.PHONY: clean-Application-2f-Core

