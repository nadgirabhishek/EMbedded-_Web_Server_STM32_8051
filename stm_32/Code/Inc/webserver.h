
/******************************************************************************
 * @file        webserver.h
 * @brief       Header file for the web server functionalities, including 
 *              handling Ethernet, IP, and TCP packet parsing, as well as 
 *              generating ARP, TCP, and HTTP responses.
 * @author      Abhishek Nadgir
 * @date        December 07, 2024
 *****************************************************************************/
#ifndef WEBSERVER_H_
#define WEBSERVER_H_

#include "global.h"

extern bool obstacleDetected;

uint16_t packetReceive();
void makeArpReply() ;
void makeTcpSynAck() ;
void makeHttpResponse();
void makeTcpAck() ;
void packetLoop();

#endif /* WEBSERVER_H_ */
