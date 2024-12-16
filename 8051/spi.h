/******************************************************************************
 * @file        spi.h
 * @brief       Header file for SPI (Serial Peripheral Interface) communication
 *              functions, including initialization, write, and read operations.
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 ******************************************************************************/


#ifndef SPI_H_
#define SPI_H_

#include "global.h"
#include "stdint.h"



void SPI_Init(void);
void SPI_WriteByte(uint8_t data);
uint8_t SPI_ReadByte(void);

#endif /* SPI_H_ */
