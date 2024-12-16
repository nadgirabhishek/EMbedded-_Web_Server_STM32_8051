/******************************************************************************
 * @file    global.c
 * @brief   Gloabl functions like ISR routines are mentioned in this file.
 * 
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 **************************************************************/
#include "global.h"

volatile uint32_t tick_counter = 0;

/*
 * This function handles the ISR for UART Interrupt
 */
void USART2_IRQHandler(void) {
	// Check if RXNE flag is set (data received)
	if (USART2->ISR & USART_ISR_RXNE) {
		char newval = USART2->RDR; // Read the received character
		cbfifo_enqueue(&fiforx, &newval, sizeof(newval));
	}
	if (USART2->ISR & USART_ISR_TXE) {
		char newval; // Read the received character
		if (cbfifo_dequeue(&fifotx, &newval, sizeof(newval)) > 0) {
			if (newval == '\n') {
				USART2->TDR = '\r';
				while (!(USART2->ISR & USART_ISR_TXE))
					;
				USART2->TDR = '\n';
			} else {
				USART2->TDR = newval; // Send the character
			}
		} else {
			USART2->CR1 &= (~(USART_CR1_TXEIE));
		}
	}
}

/*
 * This function increments tick counter and global tick counter every 10ms.
 * Tick counter is used to run the functions whereas global tick counter is used for
 * keeping a time record since startup.
 */
void SysTick_Handler(void) {
	tick_counter++;
	//global_tick_counter++;
}
