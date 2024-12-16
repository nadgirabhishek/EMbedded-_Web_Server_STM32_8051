/******************************************************************************

 * @file    spi.c
 * @brief   Contains functions for establishing SPI Protocol.
 *
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 * This file provides the implementation for transmitting and Receiving data over
 * SPI Lines as well as Initialization of SPI
 ******************************************************************************/

#include "spi.h"

void SPI_Init(void) 
{
	// Enable GPIOB clock
	RCC->AHBENR |= RCC_AHBENR_GPIOBEN;

	// Configure CS, SCK, and MOSI as output
	GPIOB->MODER &= ~(GPIO_MODER_MODER12 | GPIO_MODER_MODER13
			| GPIO_MODER_MODER15); // Clear MODER bits
	GPIOB->MODER |= (GPIO_MODER_MODER12_0 | GPIO_MODER_MODER13_0
			| GPIO_MODER_MODER15_0); // Set as output

	// Configure MISO as input
	GPIOB->MODER &= ~GPIO_MODER_MODER14; // Set as input

	// Set all pins to high-speed mode
	GPIOB->OSPEEDR |= (GPIO_OSPEEDR_OSPEEDR12 | GPIO_OSPEEDR_OSPEEDR13
			| GPIO_OSPEEDR_OSPEEDR14 | GPIO_OSPEEDR_OSPEEDR15);

	// Set default states
	GPIOB->ODR |= SPI2_CS_PIN;    // CS High (inactive)
	GPIOB->ODR &= ~SPI2_SCK_PIN;  // SCK Low (idle)
	GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}

void SPI_WriteByte(uint8_t data) {
	for (int i = 0; i < 8; i++) {
		// Write the MSB to MOSI
		if (data & 0x80) {
			GPIOB->ODR |= SPI2_MOSI_PIN; // Set MOSI High
		} else {
			GPIOB->ODR &= ~SPI2_MOSI_PIN; // Set MOSI Low
		}
		data <<= 1; // Shift to the next bit

		// Toggle SCK to clock the bit
		GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
		GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
	}
	GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}

uint8_t SPI_ReadByte(void) {
	uint8_t received_data = 0;

	for (int i = 0; i < 8; i++) {
		received_data <<= 1; // Make room for the next bit

		// Toggle SCK to clock the bit
		GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;

		// Read the bit from MISO
		if (GPIOB->IDR & SPI2_MISO_PIN) {
			received_data |= 0x01; // Set the LSB
		}

		GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
	}

	return received_data;
}

