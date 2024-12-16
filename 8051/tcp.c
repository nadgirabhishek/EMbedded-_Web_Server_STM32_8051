
/******************************************************************************
 * @file    tcp.c
 * @brief   Contains functions for transmitting TCP packets using ENC28J60.
 * 
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * This file provides the implementation for transmitting TCP packets over the network
 * using the ENC28J60 Ethernet controller. It handles writing the packet to the buffer,
 * setting transmission pointers, starting the transmission, and checking for completion.
 ******************************************************************************/

#include "tcp.h"

/**
 * @brief Transmits a TCP packet over the network.
 * 
 * This function writes a TCP packet to the ENC28J60 buffer, sets the transmission
 * pointers, and starts the transmission. It waits for the transmission to complete
 * and checks for successful transmission. If successful, a confirmation message
 * is displayed; otherwise, an error message is shown.
 * 
 * @param packet      Pointer to the packet data to be transmitted.
 * @param packet_size Size of the packet in bytes.
 * 
 * @return None
 */
void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
{
	//Write the ARP packet to the ENC28J60 buffer
	
	uint16_t start_address = TX_BUFFER_START;
	if ((start_address + packet_size - 1) > 0x1FFF) {
		printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
		return;
	}
	uint16_t end_address = start_address + packet_size - 1;
	enc_buffer_write(packet_size, start_address, packet);

	// Set transmit pointers
	enc28j60_set_transmit_pointers(start_address, end_address);

	// Start transmission
	enc28j60_start_transmission();

	// Wait for transmission to complete
	if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
		// Check if transmission was successful
		if (enc28j60_transmission_successful()) {
			printf("TCP request sent successfully.\n\r");
		} else {
			printf("TCP transmission failed. Check error flags.\n\r");
		}
	} else {
		printf(
				"Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
	}
}

