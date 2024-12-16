
/******************************************************************************
 * @file        tcp.h
 * @brief       Header file for TCP (Transmission Control Protocol) functions,
 *              including packet processing, checksum calculation, and transmission.
 * @author      Abhishek Nadgir
 * @date        December 06, 2024
 ****************************************************************/

#ifndef TCP_H_
#define TCP_H_


#include "global.h"


// Define constants for header sizes
#define ETHERNET_HEADER_SIZE 14
#define IP_HEADER_SIZE 20
#define TCP_HEADER_SIZE 20
#define MAX_PACKET_SIZE 1500

uint16_t calculate_checksum(uint8_t *data, uint16_t length);
uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size);
void print_hexdump(const uint8_t *data, uint16_t size);
void process_packet_from_buffer(uint16_t start_address);
void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size);

#endif /* TCP_H_ */
