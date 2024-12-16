/******************************************************************************
 * @file        global.h
 * @brief       Global header file for definitions, macros, and variable declarations
 *              related to the ENC28J60 Ethernet controller, ARP, and network settings.
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 ***************************************************************/
#ifndef OBSTACLE_H_
#define OBSTACLE_H_

#include "webserver.h"
#include <stdlib.h>
#include "stm32f0xx.h"
#include "stm32f091xc.h"

void Init_Interrupt();
void EXTI4_15_IRQHandler(void);

#endif /* OBSTACLE_H_ */
