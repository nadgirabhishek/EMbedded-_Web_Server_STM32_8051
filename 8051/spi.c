/******************************************************************************
 * @file    spi.c
 * @brief   Contains functions for establishing SPI Protocol.
 *
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * This file provides the implementation for transmitting and Receiving data over
 * SPI Lines as well as Initialization of SPI
 ******************************************************************************/

#include "spi.h"
#define SPI_ENABLE      (1 << 6)
#define SS_DISABLE     (1 << 5)
#define MASTER_MODE       (1 << 4)
#define SPIF_BIT 0X80
void SPI_Init(void) {
    CS_PIN = 1;
    SPCON = 0x00;
    SPCON |= SS_DISABLE;
    SPCON |= MASTER_MODE;
    SPCON |= SPI_ENABLE;
}

void SPI_WriteByte(uint8_t data) {
    SPDAT = data;           // Config + MSB of data
    //printf("Sending data: %x\n\r", data);
    while (!(SPSTA & 0x80));
}

uint8_t SPI_ReadByte(void) {
    uint8_t received_data = 0;
    // Send dummy data (0xFF or 0x00 depending on your system) to clock in bits
    SPDAT = 0xFF;
    // Wait for the transmission/reception to complete
    while (!(SPSTA & 0x80));
    received_data = SPDAT;
    return received_data;
}
