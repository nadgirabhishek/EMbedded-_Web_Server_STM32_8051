/*
 * obstacle.h
 *
 *  Created on: Dec 9, 2024
 *      Author: Abhishek Koppa
 */

#ifndef OBSTACLE_H_
#define OBSTACLE_H_

#include "webserver.h"
#include <stdlib.h>
#include "stm32f0xx.h"
#include "stm32f091xc.h"

void Init_Interrupt();
void EXTI4_15_IRQHandler(void);

#endif /* OBSTACLE_H_ */
