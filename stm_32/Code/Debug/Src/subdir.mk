################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/arp.c \
../Src/cbfifo.c \
../Src/enc.c \
../Src/global.c \
../Src/init_functions.c \
../Src/main.c \
../Src/obstacle.c \
../Src/spi.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/tcp.c \
../Src/uart_functions.c \
../Src/webserver.c 

OBJS += \
./Src/arp.o \
./Src/cbfifo.o \
./Src/enc.o \
./Src/global.o \
./Src/init_functions.o \
./Src/main.o \
./Src/obstacle.o \
./Src/spi.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/tcp.o \
./Src/uart_functions.o \
./Src/webserver.o 

C_DEPS += \
./Src/arp.d \
./Src/cbfifo.d \
./Src/enc.d \
./Src/global.d \
./Src/init_functions.d \
./Src/main.d \
./Src/obstacle.d \
./Src/spi.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/tcp.d \
./Src/uart_functions.d \
./Src/webserver.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F0 -DNUCLEO_F091RC -DSTM32F091RCTx -DSTM32F091xC -c -I../Inc -I../CMSIS -O0 -ffunction-sections -fdata-sections -Wall -Werror -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/arp.cyclo ./Src/arp.d ./Src/arp.o ./Src/arp.su ./Src/cbfifo.cyclo ./Src/cbfifo.d ./Src/cbfifo.o ./Src/cbfifo.su ./Src/enc.cyclo ./Src/enc.d ./Src/enc.o ./Src/enc.su ./Src/global.cyclo ./Src/global.d ./Src/global.o ./Src/global.su ./Src/init_functions.cyclo ./Src/init_functions.d ./Src/init_functions.o ./Src/init_functions.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/obstacle.cyclo ./Src/obstacle.d ./Src/obstacle.o ./Src/obstacle.su ./Src/spi.cyclo ./Src/spi.d ./Src/spi.o ./Src/spi.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/tcp.cyclo ./Src/tcp.d ./Src/tcp.o ./Src/tcp.su ./Src/uart_functions.cyclo ./Src/uart_functions.d ./Src/uart_functions.o ./Src/uart_functions.su ./Src/webserver.cyclo ./Src/webserver.d ./Src/webserver.o ./Src/webserver.su

.PHONY: clean-Src

