
/******************************************************************************
 * @file        arp.h
 * @brief       Header file for ARP functionality, including ARP packet structure
 *              and functions for handling ARP requests and transmission.
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 ******************************************************************************/


#ifndef ARP_H_
#define ARP_H_
#include "global.h"
#include <stdbool.h>

typedef struct {
	uint8_t padding;
	uint16_t hw_type;
	uint16_t proto_type;
	uint8_t hw_size;
	uint8_t proto_size;
	uint16_t opcode;
	uint8_t sender_mac[6];
	uint8_t sender_ip[4];
	uint8_t target_mac[6];
	uint8_t target_ip[4];
} ArpPacket;

//void arp_request(uint8_t *target_ip);

void delay_ms(uint16_t ms);
void enc28j60_start_transmission(void);
void enc28j60_set_transmit_pointers(uint16_t start_address,
		uint16_t end_address);

bool wait_for_transmission_complete(uint16_t timeout_ms);

bool enc28j60_transmission_successful(void);
void set_mac_address(uint8_t *mac_address);
void enc28j60_set_transmit_pointers(uint16_t start_address,

		uint16_t end_address);
void arp_request(void);
#endif /* ARP_H_ */

