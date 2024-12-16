/*
*****************************************************************************
 * @file        global.h
 * @brief       Global header file for definitions, macros, and variable declarations
 *              related to the ENC28J60 Ethernet controller, ARP, and network settings.
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 *****************************************************************************
 */
#ifndef GLOBAL_H_
#define GLOBAL_H_

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stm32f091xc.h>
#include "stm32f0xx.h"
#include "utilities.h"
#include "cbfifo.h"
#include "arp.h"
#include "init_functions.h"
#include "spi.h"
#include "enc.h"
#include "obstacle.h"
#include "tcp.h"

//Bank
#define Bank0 0
#define Bank1 1
#define Bank2 2
#define Bank3 3

#define ENABLE_X2 0x05
#define SPI_WRITE_ECON2 0x5E
#define SPI_WRITE_ECON1 0x5F
#define SPI_WRITE_RESET 0xFF

#define ENC_CONTROL_WRITE_OPCODE 0x40
#define ENC_WRITE_BUFFER_OPCODE 0X7A
#define ENC_READ_BUFFER_OPCODE 0x3A
#define BIT_FIELD_CLEAR_OPCODE 0xA0
#define BIT_FIELD_SET_OPCODE 0x80

//Control Register
#define ENC_EIE 0x1B
#define ENC_EIR 0x1C
#define ENC_ESTAT 0x1D
#define ENC_ECON2 0x1E
#define ENC_ECON1 0x1F
 
//Bank 0 Register Macros
#define ENC_ERDPTL 0x00
#define ENC_ERDPTH 0x01
#define ENC_EWRPTL 0x02
#define ENC_EWRPTH 0x03
#define ENC_ETXSTL 0x04
#define ENC_ETXSTH 0x05
#define ENC_ETXNDL 0x06
#define ENC_ETXNDH 0x07
#define ENC_ERXSTL 0x08
#define ENC_ERXSTH 0x09
#define ENC_ERXNDL 0x0A
#define ENC_ERXNDH 0x0B
#define ENC_ERXRDPTL 0x0C
#define ENC_ERXRDPTH 0x0D
#define ENC_ERXWRPTL 0x0E
#define ENC_ERXWRPTH 0x0F
#define ENC_ERXRDPTH 0x0D

//Bank 1 Register
 #define EPMM0 0x08
#define EPMM1 0x09
#define EPMCSL 0x10
#define EPMCSH 0x11
#define ERXFCON 0x18

//Bank 2 Register Macros
#define ENC_MACON1 0x00
#define MACON3 0x02
#define MACON4 0x03
#define MABBIPG 0x04
#define MAIPGL 0x06
#define MAIPGH 0x07
#define MAMXFLL 0x0A
#define MAMXFLH 0x0B
#define ENC_MICMD 0x12
#define ENC_MIREGADR 0x14
#define ENC_MIWRL 0x16
#define ENC_MIWRH 0x17
#define ENC_MIRDL 0x18
#define ENC_MIRDH 0x19
 
//Bank3 Register Macros
#define ENC_MAADR5 0x00
#define ENC_MAADR6 0x01
#define ENC_MAADR3 0x02
#define ENC_MAADR4 0x03
#define ENC_MAADR1 0x04
#define ENC_MAADR2 0x05
#define ENC_MISTAT 0x0A
#define ENC_EREVID 0x12

//PHY registers MACROS
#define PHCON1 0x00
#define PHSTAT1 0x01
#define PHCON2 0x10
#define PHLCON 0x14

#define htons(x) __builtin_bswap16(x)
#define ntohs(x) __builtin_bswap16(x)

#define RX_BUFFER_START 0x0000
#define RX_BUFFER_END   0x1BFF
#define TX_BUFFER_START 0x1C00
#define TX_BUFFER_END   0x1FFF

extern volatile uint32_t tick_counter;
extern uint8_t target_mac[6];

extern uint8_t device_mac[6]; // Default MAC
extern uint8_t device_ip[4]; // Default IP Address
extern uint8_t target_ip[4];

extern cbfifo_t fifotx, fiforx;

#endif /* GLOBAL_H_ */
