/*
 * init_functions.c
 *
 *  Created on: Nov 4, 2024
 *      Author: Abhishek Nadgir
 */

#include "init_functions.h"
#define F_TIM_CLOCK (48UL*1000UL*1000UL)	// 48 MHz
#define PWM_FREQUENCY (500)
#define PWM_MAX_DUTY_VALUE ( (F_TIM_CLOCK / (PWM_FREQUENCY * PWM_PRESCALER)) - 1)
#define PWM_PRESCALER (2)

void uart_init(void) {
	setvbuf(stdout, NULL, _IONBF, 0);
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN; // Enable GPIOA clock
	// Set PA2 (TX) and PA3 (RX) to alternate function mode (AF7 for USART2)
	GPIOA->MODER &= ~(GPIO_MODER_MODER2 | GPIO_MODER_MODER3);			// Clear
	GPIOA->MODER |= (GPIO_MODER_MODER2_1 | GPIO_MODER_MODER3_1);// Set AF mode
	GPIOA->AFR[0] |= (1 << GPIO_AFRL_AFSEL2_Pos) | (1 << GPIO_AFRL_AFSEL3_Pos); // AF7 (USART2) for PA2 and PA3
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN;				// Enable USART2 clock
	USART2->BRR = USART_BRR_VALUE;// Configure baud rate (assuming 24MHz APB1 clock and 19200 baud rate)
	USART2->CR1 |= USART_CR1_TE | USART_CR1_RE | USART_CR1_RXNEIE; // Enable TX, RX, and RX interrupt
	USART2->CR1 |= USART_PARITY_CONFIG;
	USART2->CR1 |= USART_WORD_LENGTH;
	USART2->CR2 |= USART_STOP_BITS;
	USART2->CR1 |= USART_CR1_UE;								// Enable USART
	NVIC_EnableIRQ(USART2_IRQn);			// Enable USART2 interrupt in NVIC
}

void init_uled(void) {
	RCC->AHBENR |= RCC_AHBENR_GPIOAEN;
	MODIFY_FIELD(GPIOA->MODER, GPIO_MODER_MODER5, ESF_GPIO_MODER_OUTPUT);

}

void SysTick_Init(void) {
    SysTick->LOAD = (F_TIM_CLOCK - 1); // Configure SysTick to generate 1 interrupt every 1 second
    NVIC_SetPriority(SysTick_IRQn, 3); // Set priority level (optional)
    SysTick->VAL = 0; // Clear the current value register
    SysTick->CTRL = SysTick_CTRL_TICKINT_Msk | SysTick_CTRL_ENABLE_Msk; // Enable SysTick with interrupt
}

