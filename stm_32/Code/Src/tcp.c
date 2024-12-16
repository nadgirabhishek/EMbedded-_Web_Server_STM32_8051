
/******************************************************************************
 * @file    tcp.c
 * @brief   Contains functions for transmitting TCP packets using ENC28J60.
 * 
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * This file provides the implementation for transmitting TCP packets over the network
 * using the ENC28J60 Ethernet controller. It handles writing the packet to the buffer,
 * setting transmission pointers, starting the transmission, and checking for completion.
 * @reference   Functions related to TCp response are referenced from Arduino Ethercard Library.
 ***************************************************************/
#include "tcp.h"

// Define buffer sizes
#define MAX_PACKET_SIZE 1500
#define ETHERNET_HEADER_SIZE 14
#define IP_HEADER_SIZE 20
#define TCP_HEADER_SIZE 20
//#define TX_BUFFER_START 0x0000

// Function to calculate the checksum
uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
	uint32_t sum = 0;

	// Accumulate checksum
	for (uint16_t i = 0; i < length; i += 2) {
		uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
		sum += word;

		// Handle carry (wrap around)
		if (sum > 0xFFFF) {
			sum = (sum & 0xFFFF) + (sum >> 16);
		}
	}

	// Final wrap-around
	sum = (sum & 0xFFFF) + (sum >> 16);

	// Return one's complement
	return ~sum;
}

// Function to calculate TCP checksum (with pseudo-header)
uint16_t calculate_tcp_checksum(uint8_t *pseudo_header, uint8_t *tcp_header,
		uint16_t tcp_length) {
	uint32_t sum = 0;

	// Add pseudo-header
	for (uint16_t i = 0; i < 12; i += 2) {
		uint16_t word = (pseudo_header[i] << 8) | pseudo_header[i + 1];
		sum += word;
		if (sum > 0xFFFF)
			sum = (sum & 0xFFFF) + (sum >> 16);
	}

	// Add TCP header and data
	for (uint16_t i = 0; i < tcp_length; i += 2) {
		uint16_t word = (tcp_header[i] << 8)
				| (i + 1 < tcp_length ? tcp_header[i + 1] : 0);
		sum += word;
		if (sum > 0xFFFF)
			sum = (sum & 0xFFFF) + (sum >> 16);
	}

	// Final wrap-around and one's complement
	return ~((sum & 0xFFFF) + (sum >> 16));
}

uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size,
		uint16_t *response_size) {
	static uint8_t response[MAX_PACKET_SIZE + 1]; // Add extra byte for 0x0E at the start
	memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer

	response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
	uint8_t *data_start = response + 1;  // Start processing after the 0x0E byte

	// Validate packet size
	if (packet_size < ETHERNET_HEADER_SIZE + IP_HEADER_SIZE + TCP_HEADER_SIZE) {
		printf("Invalid packet size: %d\n", packet_size);
		return NULL;
	}

	// Parse the Ethernet header
	uint8_t *ethernet_header = packet;
	uint8_t *response_ethernet_header = data_start;
	memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);

	// Swap MAC addresses
	memcpy(response_ethernet_header, ethernet_header + 6, 6); // Destination MAC
	memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC

	// Parse the IP header
	uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
	uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
	memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);

	// Swap source and destination IPs
	memcpy(response_ip_header + 12, ip_header + 16, 4);  // Source IP
	memcpy(response_ip_header + 16, ip_header + 12, 4);  // Destination IP
	response_ip_header[10] = 0;  // Clear IP checksum
	response_ip_header[11] = 0;

	// Parse the TCP header
	uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
	uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE
			+ IP_HEADER_SIZE;
	memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);

	// Swap source and destination ports
	response_tcp_header[0] = tcp_header[2];
	response_tcp_header[1] = tcp_header[3];
	response_tcp_header[2] = tcp_header[0];
	response_tcp_header[3] = tcp_header[1];

	// Process sequence and acknowledgment numbers
	uint32_t seq_num = (tcp_header[4] << 24) | (tcp_header[5] << 16)
			| (tcp_header[6] << 8) | tcp_header[7];
	uint32_t ack_num = seq_num + 1;  // ACK for SYN
	response_tcp_header[4] = (ack_num >> 24) & 0xFF;
	response_tcp_header[5] = (ack_num >> 16) & 0xFF;
	response_tcp_header[6] = (ack_num >> 8) & 0xFF;
	response_tcp_header[7] = ack_num & 0xFF;

	// Set flags: SYN-ACK
	response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)

	// Clear urgent pointer
	response_tcp_header[18] = 0;
	response_tcp_header[19] = 0;

	// Recalculate checksums
	uint16_t tcp_length = TCP_HEADER_SIZE;
	uint16_t ip_total_length = IP_HEADER_SIZE + tcp_length;

	// Update IP total length
	response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
	response_ip_header[3] = ip_total_length & 0xFF;

	// Calculate IP checksum
	uint16_t ip_checksum = calculate_checksum(response_ip_header,
			IP_HEADER_SIZE);
	response_ip_header[10] = (ip_checksum >> 8) & 0xFF;
	response_ip_header[11] = ip_checksum & 0xFF;

	// Calculate TCP checksum with pseudo-header
	uint8_t pseudo_header[12];
	memcpy(pseudo_header, response_ip_header + 12, 4);  // Source IP
	memcpy(pseudo_header + 4, response_ip_header + 16, 4);  // Destination IP
	pseudo_header[8] = 0x00;  // Reserved
	pseudo_header[9] = 0x06;  // Protocol (TCP)
	pseudo_header[10] = (tcp_length >> 8) & 0xFF;
	pseudo_header[11] = tcp_length & 0xFF;

	uint16_t tcp_checksum = calculate_tcp_checksum(pseudo_header,
			response_tcp_header, tcp_length);
	response_tcp_header[16] = (tcp_checksum >> 8) & 0xFF;
	response_tcp_header[17] = tcp_checksum & 0xFF;

	// Set response size (including the shifted start with 0x0E)
	*response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length;

	return response;
}

// Debug function to print a hexdump of the packet
void print_hexdump(const uint8_t *data, uint16_t size) {
	printf("\nHexdump (Size: %d):\n", size);
	for (uint16_t i = 0; i < size; i++) {
		printf("%02X ", data[i]);
		if ((i + 1) % 16 == 0) {
			printf("\n");
		}
	}
	if (size % 16 != 0) {
		printf("\n");
	}
}

void process_packet_from_buffer(uint16_t start_address) {
	// Ensure valid address
	if (start_address > 0x1FFF) {
		printf("\n\rInvalid start address: %04X\n\r", start_address);
		return;
	}

	uint8_t next_packet_start[2]; // To hold the bytes at start+0 and start+1
	uint16_t next_start_address;
	uint16_t packet_size;
	uint16_t response_size; // Variable to hold the response size

	// Step 1: Read start+0 and start+1 to get the next packet start address
	if (enc_buffer_read(2, start_address, next_packet_start) != 2) {
		printf("\n\rFailed to read packet start address bytes\n\r");
		return;
	}

	// Step 2: Calculate the next packet start address (16-bit)
	next_start_address = ((uint16_t) next_packet_start[1] << 8)
			| next_packet_start[0];

	// Step 3: Calculate the size of the packet
	if (next_start_address < start_address) {
		printf("\n\rInvalid next start address: 0x%04X\n\r",
				next_start_address);
		return;
	}
	packet_size = next_start_address - (start_address + 6);

	// Step 4: Allocate buffer for the packet data
	uint8_t *packet_data = (uint8_t*) malloc(packet_size);
	if (packet_data == NULL) {
		printf("\n\rMemory allocation failed for packet size: %d\n\r",
				packet_size);
		return;
	}

	// Step 5: Read the packet data
	if (enc_buffer_read(packet_size, start_address + 6, packet_data)
			!= packet_size) {
		printf("\n\rFailed to read packet data\n\r");
		free(packet_data);
		return;
	}

	// Step 6: Pass the data to TCP packet processing
	uint8_t *response = process_tcp_packet(packet_data, packet_size,
			&response_size);

	// Print the response in hexdump format before freeing
	if (response != NULL) {
		printf("\nProcessed response data:\n");
		//print_hexdump(response, response_size);
		transmit_tcp_packet(response, response_size);
		free(response); // Free response memory if allocated dynamically
	} else {
		printf("\nNo response generated by TCP packet processing.\n");
	}

	// Step 7: Free the allocated memory
	free(packet_data);

	printf(
			"\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
			packet_size, start_address, next_start_address - 1);
}

void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size) {
	//Write the ARP packet to the ENC28J60 buffer
	//uint16_t frame_size = 43; // The total length is now exactly 42 bytes (without padding)
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
