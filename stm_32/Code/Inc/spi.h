/******************************************************************************
 * @file        spi.h
 * @brief       Header file for SPI (Serial Peripheral Interface) communication
 *              functions, including initialization, write, and read operations.
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 **********************************************************************/

#ifndef SPI_H_
#define SPI_H_

#include "global.h"


#define SPI2_CS_PIN    (1U << 12) // GPIO_PIN_12 (CS)
#define SPI2_SCK_PIN   (1U << 13) // GPIO_PIN_13 (SCK)
#define SPI2_MISO_PIN  (1U << 14) // GPIO_PIN_14 (MISO)
#define SPI2_MOSI_PIN  (1U << 15) // GPIO_PIN_15 (MOSI)

#define SPI2_CS_PORT   GPIOB
#define SPI2_SCK_PORT  GPIOB
#define SPI2_MISO_PORT GPIOB
#define SPI2_MOSI_PORT GPIOB

void SPI_Init(void);
void SPI_WriteByte(uint8_t data);
uint8_t SPI_ReadByte(void);

#endif /* SPI_H_ */

