/******************************************************************************
 * @file    obstacle.c
 * @brief   Contains functions for Initalisation and detection of Obstacle usign Obstacle Sensor
 *
 ******************************************************************************/

#include <obstacle.h>
volatile int obs_cnt = 0;

void EXTI4_15_IRQHandler(void)
{
	for(int i = 0; i < 10000; i++);
    if ((EXTI->PR & EXTI_PR_PR8) != 0) // Check if the interrupt is for EXTI5 (PA5).
    {
    	if(obs_cnt % 2 == 0)
    	{
    		obstacleDetected = 1;
    	}
    	else
    	{
    		obstacleDetected = 0;

    	}
      EXTI->PR = EXTI_PR_PR8; // Clear the pending bit for EXTI5.
    }
}

void Init_Interrupt()
{
    RCC->APB2ENR |= RCC_APB2ENR_SYSCFGCOMPEN;
    // Enable the clock for the SYSCFG (System Configuration Controller).

    RCC->AHBENR |= RCC_AHBENR_GPIOAEN;
    // Enable the clock for GPIOA.

    GPIOA->MODER &= ~GPIO_MODER_MODER8;   // Set PA8 as input.
    GPIOA->PUPDR |= GPIO_PUPDR_PUPDR8_0; // Enable pull-up resistor for PA8.

    MODIFY_FIELD(SYSCFG->EXTICR[2], SYSCFG_EXTICR3_EXTI8, 0);
    // Set EXTI8 line to be connected to GPIOA pin 8 (PA8).
    // SYSCFG->EXTICR[2] configures EXTI lines 8-11.
    // The value '0' specifies GPIOA as the source.

    EXTI->IMR |= EXTI_IMR_MR8;
    // Unmask the interrupt for EXTI line 8 by setting the corresponding bit in the Interrupt Mask Register (IMR).
    // This allows the interrupt to be triggered by events on EXTI line 8 (associated with PA8).

    EXTI->RTSR |= EXTI_RTSR_TR8;
    EXTI->FTSR |= EXTI_FTSR_TR8;
    // Enable both rising and falling edge triggers for EXTI line 8.

    NVIC_SetPriority(EXTI4_15_IRQn, 1);
    NVIC_ClearPendingIRQ(EXTI4_15_IRQn);
    NVIC_EnableIRQ(EXTI4_15_IRQn);
}



