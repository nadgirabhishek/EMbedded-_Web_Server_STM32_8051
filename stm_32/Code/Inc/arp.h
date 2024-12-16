
/******************************************************************************
 * @file        arp.h
 * @brief       Header file for ARP functionality, including ARP packet structure
 *              and functions for handling ARP requests and transmission.
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 ******************************************************************************/

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
