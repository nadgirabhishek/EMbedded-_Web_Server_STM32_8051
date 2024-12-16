/*
 * arp.h
 *
 *  Created on: Dec 2, 2024
 *      Author: nadgi
 */

#ifndef ARP_H_
#define ARP_H_

#include "global.h"
#include <stdbool.h>
#define ETH_TYPE_ARP 0x0806

void enc28j60_start_transmission(void);
void enc28j60_set_transmit_pointers(uint16_t start_address,uint16_t end_address);
bool wait_for_transmission_complete(uint16_t timeout_ms);
bool enc28j60_transmission_successful();



#endif /* ARP_H_ */
