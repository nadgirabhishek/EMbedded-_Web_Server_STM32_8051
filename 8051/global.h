


/******************************************************************************
 * @file        global.h
 * @brief       Global header file for definitions, macros, and variable declarations
 *              related to the ENC28J60 Ethernet controller, ARP, and network settings.
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 ******************************************************************************/


#ifndef GLOBAL_H_
#define GLOBAL_H_

#include "Utilities.h"
#include "spi.h"
#include "enc.h"
#include "tcp.h"
#include "arp.h"
#include "webserver.h"

#include <stdio.h>
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdint.h>

// Definitions and constants
#define IP_PROTO_TCP 0x06
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP  0x0800
#define TCP_FLAG_SYN 0x02
#define TCP_FLAG_ACK 0x10
#define TCP_FLAG_FIN 0x01
#define TCP_FLAG_PUSH 0x08

// Buffer offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13
#define IP_PROTO_P 23
#define IP_SRC_P 26
#define IP_DST_P 30
#define TCP_FLAGS_P 47
#define TCP_SEQ_NUM_P 38
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DATA_START_P 54

// Device configurations
// Ethernet header offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13

// IP header offsets
#define IP_P 14 // Start of IP header
#define IP_HEADER_LEN 20 // IP header length (without options)
#define IP_CHECKSUM_P 24
#define IP_TOTLEN_H_P 16
#define IP_TOTLEN_L_P 17
#define IP_SRC_P 26
#define IP_DST_P 30

// TCP header offsets
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SEQ_H_P 38
#define TCP_SEQ_L_P 39
#define TCP_ACK_H_P 42
#define TCP_ACK_L_P 43
#define TCP_HEADER_LEN_P 46
#define TCP_FLAGS_P 47
#define TCP_CHECKSUM_H_P 50
#define TCP_CHECKSUM_L_P 51
#define TCP_OPTIONS_P 54
#define TCP_WIN_SIZE_H_P 48 // High byte of the TCP Window Size
#define TCP_WIN_SIZE_L_P 49 // Low byte of the TCP Window Size
#define TCP_HEADER_LEN 20
#define ETH_HEADER_LEN 14


#define ETH_PACKET_FIRST_BYTE 0x0E
#define ARP_FRAME_SIZE 43
//OPCODES
#define ENC_CONTROL_WRITE_OPCODE 0x40
#define ENC_WRITE_BUFFER_OPCODE 0X7A
#define ENC_READ_BUFFER_OPCODE 0x3A
#define BIT_FIELD_CLEAR_OPCODE 0xA0
#define BIT_FIELD_SET_OPCODE 0x80


#define ENABLE_X2 0x05
#define SPI_WRITE_ECON2 0x5E
#define SPI_WRITE_ECON1 0x5F
#define ENC_BUFFER_MAX_ADDRESS 0X1FFF
#define ENC_MAC_MAX_ADDRESS 0x1F
// Define buffer sizes
#define MAX_PACKET_SIZE 1500
#define ETHERNET_HEADER_SIZE 14
#define IP_HEADER_SIZE 20
#define TCP_HEADER_SIZE 20
#define htons(x) __builtin_bswap16(x)
#define ntohs(x) __builtin_bswap16(x)
#define RX_BUFFER_START 0x0000
#define RX_BUFFER_END   0x1BFF
#define TX_BUFFER_START 0x1C00
#define TX_BUFFER_END   0x1FFF

#define CS_PIN P1_1
#define CS_HIGH CS_PIN = 1
#define CS_LOW CS_PIN = 0
#define SCK P1_6
#define MOSI P1_7

//Control Register
#define ENC_EIE 0x1B
#define ENC_EIR 0x1C
#define ENC_ESTAT 0x1D
#define ENC_ECON2 0x1E
#define ENC_ECON1 0x1F

//PHY registers MACROS
#define PHCON1 0x00
#define PHSTAT1 0x01
#define PHCON2 0x10
#define PHLCON 0x14

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

//Bank 1 Register Macros
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


extern uint8_t target_mac[6];
extern uint8_t device_mac[6]; // Default MAC
extern uint8_t device_ip[4]; // Default IP Address
extern uint8_t target_ip[4];


#endif /* GLOBAL_H_ */
