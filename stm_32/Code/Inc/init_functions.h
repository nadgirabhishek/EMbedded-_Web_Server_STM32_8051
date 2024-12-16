/*
******************************************************************************
 * @file        init_functions.h
 * @brief       Initalisation function for UART and Systick
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 * @reference   This file is referenced from PES Assignment 6
 *****************************************************************************
 */

#ifndef INIT_FUNCTIONS_H_
#define INIT_FUNCTIONS_H_

#include "global.h"

// Define clock frequency and desired baud rate
#define APB1_CLOCK_FREQ 24000000U  // 24 MHz
#define UART_BAUD_RATE  19200U

// Calculate the baud rate register value
#define USART_BRR_VALUE (APB1_CLOCK_FREQ / UART_BAUD_RATE)

// Uncomment one of the following to select the word length:
// wORD lENGTH = Data Bits + Parity Bits(if Any)
#define WORD_LENGTH_9_BITS
//#define WORD_LENGTH_8_BITS
//#define WORD_LENGTH_7_BITS

#ifdef WORD_LENGTH_8_BITS
    #define USART_WORD_LENGTH (~USART_CR1_M)  // 8 data bits
#elif defined(WORD_LENGTH_9_BITS)
    #define USART_WORD_LENGTH (USART_CR1_M0) // 9 data bits
#elif defined(WORD_LENGTH_7_BITS)
    #define USART_WORD_LENGTH (USART_CR1_M1)  // 7 data bits
#else
    #error "Please define a word length option: WORD_LENGTH_8_BITS, WORD_LENGTH_9_BITS, or WORD_LENGTH_7_BITS"
#endif

// Uncomment one of the following to select the parity configuration:
//#define PARITY_NONE
//#define PARITY_EVEN
#define PARITY_ODD

#ifdef PARITY_NONE
    #define USART_PARITY_CONFIG (~USART_CR1_PCE)  // No parity
#elif defined(PARITY_EVEN)
    #define USART_PARITY_CONFIG (USART_CR1_PCE)  // Even parity
#elif defined(PARITY_ODD)
    #define USART_PARITY_CONFIG (USART_CR1_PCE | USART_CR1_PS)  // Odd parity
#else
    #error "Please define a parity option: PARITY_NONE, PARITY_EVEN, or PARITY_ODD"
#endif

// Uncomment one of the following to select the stop bits:
// STOP BIT OPTIONS:
#define STOP_BITS_1
//#define STOP_BITS_2
//#define STOP_BITS_1_5

#ifdef STOP_BITS_1
    #define USART_STOP_BITS  0x00   // 1 stop bit (By Default)
#elif defined(STOP_BITS_2)
    #define USART_STOP_BITS (USART_CR2_STOP_1)  // 2 stop bits (STOP[1:0] = 10)
#elif defined(STOP_BITS_1_5)
    #define USART_STOP_BITS (USART_CR2_STOP_0|USART_CR2_STOP_1)  // 1.5 stop bits (STOP[1:0] = 11)
#else
    #error "Please define a stop bit option: STOP_BITS_1, STOP_BITS_0_5, STOP_BITS_2, or STOP_BITS_1_5"
#endif


void uart_init(void) ;
void init_uled(void);
void SysTick_Init(void);
#endif /* INIT_FUNCTIONS_H_ */
