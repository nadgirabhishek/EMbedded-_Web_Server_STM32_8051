/*
 * webserver.h
 *
 *  Created on: Dec 7, 2024
 *      Author: Abhishek Nadgir
 */

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
