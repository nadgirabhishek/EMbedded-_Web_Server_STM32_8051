
/******************************************************************************
 * @file    arp.c
 * @brief   Contains functions for transmitting TCP packets using ENC28J60.
 *
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * This file provides the implementation for transmitting TCP packets over the network
 * using the ENC28J60 Ethernet controller. It handles writing the packet to the buffer,
 * setting transmission pointers, starting the transmission, and checking for completion.
 ******************************************************************************/

#include "arp.h"


/*
 * Delay Function
 *
 * Parameters:
 *   None
 *
 * Returns:
 *   None
 */
void delay_ms(uint16_t ms) 
{

	for (volatile uint32_t i = 0; i < ms * 1000; i++) 
	{
	}

}


/*
 * enc28j60_start_transmission : Enabling transmission by setting a bit in ECON1 Register
 *
 * Parameters:
 *   None
 *
 * Returns:
 *   None
 */
void enc28j60_start_transmission(void) 
{

	uint8_t econ1 = enc_mac_read(ENC_ECON1, 0); // Read ECON1

	econ1 |= 0x08; // Set TXRTS (bit 3)

	enc_control_write(0, ENC_ECON1, econ1); // Write back to ECON1

}


/*
 * Sets the start and end of Tranmit pointers
 *
 * Parameters:
 *   Start Address
 *   End Address
 *
 * Returns:
 *   None
 */
void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address) 
{

	// Write to ETXST (Transmit Start Pointer)

	enc_control_write(0, ENC_ETXSTL, (uint8_t) (start_address & 0xFF)); // Low byte

	enc_control_write(0, ENC_ETXSTH, (uint8_t) ((start_address >> 8) & 0xFF)); // High byte

	// Write to ETXND (Transmit End Pointer)

	enc_control_write(0, ENC_ETXNDL, (uint8_t) (end_address & 0xFF)); // Low byte

	enc_control_write(0, ENC_ETXNDH, (uint8_t) ((end_address >> 8) & 0xFF)); // High byte

}


/*
 * SChecks for transmission to be complete
 *
 * Parameters:
 *   timeout to avoid program stuck
 *
 * Returns:
 *   trasnmission complet or not
 */
bool wait_for_transmission_complete(uint16_t timeout_ms) 
{

	uint16_t elapsed = 0;

	while (elapsed < timeout_ms) 
	{

		uint8_t econ1 = enc_mac_read(ENC_ECON1, 0); // Read ECON1

		if (!(econ1 & (1 << 3))) 
		{ // TXRTS (bit 3) cleared means transmission complete

			return true;  // Transmission completed

		}

		delay_ms(1);  // Wait 1 ms

		elapsed++;

	}

	return false;  // Timed out

}


/*
 * Checks whether transmission is successful or not
 *
 * Parameters:
 *   None
 *
 * Returns:
 *   None
 */
bool enc28j60_transmission_successful(void) 
{

	uint8_t estat = enc_mac_read(ENC_ESTAT, 0); // Read ESTAT

	return !(estat & 0x02); // Check if TXABRT (bit 1) is not set

}


/******************************************************************************
 * @function   set_mac_address
 * @brief      Sets the MAC address for the ENC28J60 network controller.
 * @param      mac_address: Pointer to the 6-byte MAC address to be set.
 * @return     None.
 ******************************************************************************/
void set_mac_address(uint8_t *mac_address) 
{

	// Write the MAC address to the MAC Address registers (MAADR6 to MAADR1)

	// The MAC address is 6 bytes long

	//select_reg_bank(3);

	enc_control_write(3, ENC_MAADR6, *mac_address++);  // MAADR6

	enc_control_write(3, ENC_MAADR5, *mac_address++);  // MAADR5

	enc_control_write(3, ENC_MAADR4, *mac_address++);  // MAADR4

	enc_control_write(3, ENC_MAADR3, *mac_address++);  // MAADR3

	enc_control_write(3, ENC_MAADR2, *mac_address++);  // MAADR2

	enc_control_write(3, ENC_MAADR1, *mac_address);  // MAADR1

	//select_reg_bank(0);

}


/******************************************************************************
 * @function   arp_request
 * @brief      Constructs and sends an ARP request packet over Ethernet using
 *             the ENC28J60 controller.
 * @param      None.
 * @return     None.
 ******************************************************************************/
void arp_request(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };

	uint8_t arp_packet[43]; // Minimum ARP packet size for Ethernet

	// Set the first byte to 0x0E

	arp_packet[0] = ETH_PACKET_FIRST_BYTE;

	// Ethernet header

	// Set the MAC address

	//set_mac_address(device_mac);

	for (int i = 0; i < 6; i++) 
	{
		arp_packet[i + 1] = target_mac[i];  // Destination MAC address

		arp_packet[i + 7] = device_mac[i];  // Source MAC address
	}

	// Ethernet Type: ARP (0x0806)

	arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;

	arp_packet[14] = ETH_TYPE_ARP & 0xFF;

	// ARP request fields

	// Hardware type: Ethernet (0x0001)

	arp_packet[15] = 0x00;

	arp_packet[16] = 0x01;

	// Protocol type: IPv4 (0x0800)

	arp_packet[17] = 0x08;

	arp_packet[18] = 0x00;

	// Hardware size (MAC address = 6 bytes)

	arp_packet[19] = 0x06;

	// Protocol size (IPv4 = 4 bytes)

	arp_packet[20] = 0x04;

	// Operation: ARP request (0x0001)

	arp_packet[21] = 0x00;

	arp_packet[22] = 0x01;

	// Sender MAC address

	for (int i = 0; i < 6; i++) 
	{

		arp_packet[23 + i] = device_mac[i];

	}

	// Sender IP address

	for (int i = 0; i < 4; i++) 
	{

		arp_packet[29 + i] = device_ip[i];

	}

	// Target MAC address (0x00 for ARP request)

	for (int i = 0; i < 6; i++) 
	{

		arp_packet[33 + i] = 0x00;

	}

	// Target IP address

	for (int i = 0; i < 4; i++) 
	{

		arp_packet[39 + i] = target_ip[i];

	}

	// Write the ARP packet to the ENC28J60 buffer

	uint16_t frame_size = ARP_FRAME_SIZE; // The total length is now exactly 42 bytes (without padding)

	uint16_t start_address = TX_BUFFER_START;

	if ((start_address + frame_size - 1) > ENC_BUFFER_MAX_ADDRESS) 
	{

		printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");

		return;

	}

	uint16_t end_address = start_address + frame_size - 1;

	enc_buffer_write(frame_size, start_address, arp_packet);

	// Set transmit pointers

	enc28j60_set_transmit_pointers(start_address, end_address);

	// Start transmission

	enc28j60_start_transmission();

	// Wait for transmission to complete

	if (wait_for_transmission_complete(500)) 
	{  // Wait up to 500 ms

		// Check if transmission was successful

		if (enc28j60_transmission_successful()) 
		{

			printf("ARP request sent successfully.\n\r");
		} 
		else 
		{
			printf("ARP transmission failed. Check error flags.\n\r");

		}

	} 
	else 
	{
		printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
	}

}

