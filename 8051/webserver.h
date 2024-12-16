
/******************************************************************************
 * @file        webserver.h
 * @brief       Header file for the web server functionalities, including 
 *              handling Ethernet, IP, and TCP packet parsing, as well as 
 *              generating ARP, TCP, and HTTP responses.
 * @author      Abhishek Koppa
 * @date        December 07, 2024
 ******************************************************************************/


#ifndef WEBSERVER_H_
#define WEBSERVER_H_

#include "global.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>




uint16_t packetReceive(void);
void makeArpReply(void) ;
void makeTcpSynAck(void) ;
void makeHttpResponse(void);
void makeTcpAck(void) ;
void packetLoop(void);

#endif /* WEBSERVER_H_ */
