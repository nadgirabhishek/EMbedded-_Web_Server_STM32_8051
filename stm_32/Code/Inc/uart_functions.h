
/******************************************************************************
 * @file        uart_functions.h
 * @brief       Header file for TCP (Transmission Control Protocol) functions,
 *              including packet processing, checksum calculation, and transmission.
 * @author      Abhishek Nadgir
 * @date        December 06, 2024'
 * @reference   This file is referenced from PES Assignment 6
 ****************************************************************/

#ifndef UART_FUNCTIONS_H_
#define UART_FUNCTIONS_H_

#include "global.h"

char uart_getchar(void);
void uart_putchar(char data);
int __io_getchar(void);
int __io_putchar(int ch);
void echo(void);
void uart_printstring(char *message);


#endif /* UART_FUNCTIONS_H_ */
