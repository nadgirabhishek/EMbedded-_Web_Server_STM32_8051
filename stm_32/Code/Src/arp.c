
/******************************************************************************
 * @file    arp.c
 * @brief   Contains functions for transmitting TCP packets using ENC28J60.
 *
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 * This file provides the implementation for transmitting TCP packets over the network
 * using the ENC28J60 Ethernet controller. It handles writing the packet to the buffer,
 * setting transmission pointers, starting the transmission, and checking for completion.
 ****************************************************************/
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
void delay_ms(uint16_t ms) {
	for (volatile uint32_t i = 0; i < ms * 1000; i++) {
		// Simple loop for delay; adjust the multiplier based on clock speed
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
void enc28j60_start_transmission(void) {
	uint8_t econ1 = enc_mac_read(ENC_ECON1, Bank0); // Read ECON1
	econ1 |= 0x08; // Set TXRTS (bit 3)
	enc_control_write(Bank0, ENC_ECON1, econ1); // Write back to ECON1
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
void enc28j60_set_transmit_pointers(uint16_t start_address,
		uint16_t end_address) {
	// Write to ETXST (Transmit Start Pointer)
	enc_control_write(Bank0, ENC_ETXSTL, (uint8_t) (start_address & 0xFF)); // Low byte
	enc_control_write(Bank0, ENC_ETXSTH,
			(uint8_t) ((start_address >> 8) & 0xFF)); // High byte

	// Write to ETXND (Transmit End Pointer)
	enc_control_write(Bank0, ENC_ETXNDL, (uint8_t) (end_address & 0xFF)); // Low byte
	enc_control_write(Bank0, ENC_ETXNDH, (uint8_t) ((end_address >> 8) & 0xFF)); // High byte
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
bool wait_for_transmission_complete(uint16_t timeout_ms) {
	uint16_t elapsed = 0;

	while (elapsed < timeout_ms) {
		uint8_t econ1 = enc_mac_read(ENC_ECON1, Bank0); // Read ECON1
		if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
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
bool enc28j60_transmission_successful() {
	uint8_t estat = enc_mac_read(ENC_ESTAT, Bank0); // Read ESTAT
	return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
}

