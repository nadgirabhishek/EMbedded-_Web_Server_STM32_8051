/*************************************************************************
 * @file        webserver.c
 * @brief       Implementation of a basic TCP/IP web server handling ARP,
 *              TCP connection states, checksum calculations and other TCP response implementations.
 *
 * @details     This file contains functions for receiving packets, 
 *              responding to ARP requests, managing TCP connection states, 
 *              and calculating IP and TCP checksums for packet integrity.
 * 				[Reference] : The TCP response functions impplemented in this file are referenced from: 
 *
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 *
 *
 *
 * @dependencies
 *              - webserver.h
 *************************************************************************/

#include "webserver.h"


// Packet buffer and size
#define BUFFER_SIZE 1500
uint8_t buffer[BUFFER_SIZE];

uint32_t prevSeq;
uint32_t prevAck;



typedef enum 
{
	LISTEN, SYN_RECEIVED, ESTABLISHED, FIN_WAIT, CLOSED, ACK_SENT
} TcpState;

TcpState connectionState = LISTEN;

// Function prototypes
uint16_t packetReceive(void);
void makeArpReply(void);
void makeTcpSynAck(void);
void makeHttpResponse(void);
void makeTcpAck(void);
void refreshArp(void);
void trial_arp_request(void);


/**
 * @brief Receives an Ethernet packet from the ENC28J60 controller.
 * 
 * This function checks for incoming packets, validates their integrity, and
 * reads the data into a buffer. If a packet is successfully processed, its 
 * length is returned. Ensures proper handling of packet pointers and 
 * buffer management.
 * 
 * @return Length of the received packet in bytes, or 0 if no valid packet.
 */
uint16_t packetReceive(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	static uint16_t gNextPacketPtr = RX_BUFFER_START;
	static bool unreleasedPacket = false;
	uint16_t len = 0;

	// Release the last packet if necessary
	if (unreleasedPacket) 
	{
		if (gNextPacketPtr == 0) 
		{
			uint16_t RX_END = RX_BUFFER_END;
			enc_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
			enc_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
		} 
		else 
		{
			enc_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
			enc_control_write(0, 0x0D,
					(uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
		}
		unreleasedPacket = false;
	}

	uint8_t EPKTCNT = enc_eth_read(0x19, 1);
	if (EPKTCNT > 0) 
	{
		enc_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
		enc_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte

		typedef struct 
		{
			uint16_t nextPacket;
			uint16_t byteCount;
			uint16_t status;
		} PacketHeader;

		PacketHeader header;
		enc_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
				(uint8_t*) &header);

		uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
		gNextPacketPtr = header.nextPacket;

		len = header.byteCount - 4; // Exclude CRC
		if (len > BUFFER_SIZE - 1)
			len = BUFFER_SIZE - 1;

		if ((header.status & 0x80) == 0)
			len = 0; // Invalid packet
		else
			enc_buffer_read(len, start, buffer);

		buffer[len] = 0; // Null-terminate
		unreleasedPacket = true;

		uint8_t ECON2 = enc_eth_read(0x1E, 0);
		enc_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
	}

	return len;
}


/**
 * @brief Constructs and sends an ARP reply packet.
 * 
 * This function builds an ARP reply by setting the destination MAC to the 
 * sender's MAC, the source MAC to the device's MAC, and filling in the 
 * appropriate IP addresses. It updates the ARP opcode to reply (0x02) 
 * and transmits the constructed ARP reply packet.
 */
void makeArpReply(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	printf("trialarpreply\n\r");
	// Adjust buffer starting at index 1 for the correct shift
	memmove(&buffer[1], &buffer[0], 42);

	// Set the 0th value to 0x0E
	buffer[0] = 0x0E;

	// Copy sender MAC to destination MAC in the shifted buffer
	memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC

	// Set source MAC to device MAC
	memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC

	// Set ARP reply opcode
	buffer[1 + 21] = 0x02; // ARP Reply opcode

	// Copy the target MAC and IP (from the request) to the appropriate fields
	memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
	memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request

	// Set sender MAC to device MAC and sender IP to device IP
	memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
	memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP

	// Send ARP reply with new size of 43 bytes
	transmit_tcp_packet(buffer, 43);
}

/**
 * @brief Calculates the IP header checksum.
 * 
 * This function computes the checksum for the IP header by summing all 16-bit words 
 * in the header, adding carry bits if necessary, and storing the one's complement 
 * result in the checksum field.
 * 
 * @param buffer Pointer to the IP packet buffer containing the header.
 * 
 */
void calculateIPChecksum(uint8_t *buffer) 
{
    // Reset the checksum field
    buffer[IP_CHECKSUM_P] = 0;
    buffer[IP_CHECKSUM_P + 1] = 0;

    // Calculate checksum for a fixed IP header length (20 bytes)
    uint16_t length = IP_HEADER_LEN;
    uint32_t sum = 0;

    // Sum the 16-bit words in the header
    for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1]; // combine bytes to word
        sum += word;
    }

    // Add carry bits until the sum fits in 16 bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store it in the checksum field
    uint16_t checksum = ~((uint16_t) sum);
    buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
    buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
}


/**
 * @brief Calculates the TCP checksum including pseudo-header.
 * 
 * This function computes the checksum for the TCP segment by including the pseudo-header 
 * (source and destination IP, protocol, and TCP length), summing all 16-bit words in the TCP 
 * header and payload, adding carry bits if necessary, and storing the one's complement result 
 * in the checksum field.
 * 
 * @param buffer Pointer to the TCP packet buffer containing the header and payload.
 * 
 * @return None
 */
void calculateTcpChecksum(uint8_t *buffer) 
{
    // Reset the checksum field
    buffer[TCP_CHECKSUM_H_P] = 0;
    buffer[TCP_CHECKSUM_L_P] = 0;

    // Extract TCP length (Total Length - IP Header Length)
    uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
    uint32_t sum = 0;

    // Pseudo-header: Source IP (4 bytes)
    for (uint8_t i = 0; i < 4; i++) {
        sum += buffer[IP_SRC_P + i];
    }

    // Pseudo-header: Destination IP (4 bytes)
    for (uint8_t i = 0; i < 4; i++) {
        sum += buffer[IP_DST_P + i];
    }

    // Pseudo-header: Protocol (1 byte) and TCP length (2 bytes)
    sum += (uint16_t) IP_PROTO_TCP;  // Protocol number for TCP
    sum += tcpLength;  // TCP length is the total length minus IP header length

    // TCP Header and Payload
    for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1];  // Combine the bytes into 16-bit word
        sum += word;
    }

    // Add carry bits until the sum fits in 16 bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store it in the checksum field
    uint16_t checksum = ~((uint16_t) sum);
    buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
    buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
}


/**
 * @brief Constructs a TCP packet with FIN, PSH, and ACK flags set.
 * 
 * This function builds a TCP packet with the specified flags (FIN, PSH, ACK), 
 * updates the Ethernet, IP, and TCP headers, and includes an HTTP response payload.
 * It also calculates the IP and TCP checksums and transmits the packet.
 * 
 * @return None
 */
void makeTcpFinPshAck(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
    printf("makeTcpFinPshAck\n\r");

    // Shift buffer for alignment
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    buffer[0] = 0x0E;

    // Ethernet MAC addresses
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);

    // IP source and destination addresses
    memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
    memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);

    // TCP source and destination ports
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // Sequence and acknowledgment numbers
    uint32_t serverSeqNum = prevSeq;
    uint32_t ackNum = prevAck;

    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;

    // HTML payload (use payload from `makeHttpResponse`)
    const char *html_payload =
    		"HTTP/1.1 200 OK\r\n"
    		    "Content-Type: text/html\r\n"
    		    "Content-Length: 530\r\n" // Length matches the content
    		    "\r\n"
    		    "<!DOCTYPE html>"
    		    "<html lang='en'>"
    		    "<head>"
    		    "<meta charset='UTF-8'>"
    		    "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
    		    "<title>Ethernet Web Server</title>"
    		    "<style>"
    		    "body {font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; padding: 20px;}"
    		    "h1 {color: #333333;}"
    		    "p {color: #666666;}"
    		    "</style>"
    		    "</head>"
    		    "<body>"
    		    "<h1>ESD FALL 2024</h1>"
    		    "<p>Ethernet based Web Server for Embedded Systems - NADGIR and KOPPA made itttt, lessgoooo!!! This web server showcases the power of microcontrollers and Ethernet communication. By leveraging the AT89C51RC2 microcontroller and the ENC28J60 Ethernet controller, we can serve dynamic web pages and control embedded devices remotely. The server allows seamless communication between hardware and software, enabling real-time data exchange across the network.</p>"
    		    "</body>"
    		    "</html>";

    uint16_t dataLength = strlen(html_payload);

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // Copy the HTML payload into the buffer
    memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);

    // Update connection state
    connectionState = FIN_WAIT;
}

/**
 * @brief Constructs a TCP packet with the ACK flag set.
 * 
 * This function creates a TCP packet with the ACK flag set, updates the Ethernet, IP, 
 * and TCP headers, and calculates the IP and TCP checksums. The sequence and acknowledgment 
 * numbers are updated based on the client's request, and the packet is transmitted.
 * 
 * @return None
 */
void makeTcpAck3(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
    printf("makeTcpAck\n\r");

    // Shift buffer for alignment
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    buffer[0] = 0x0E;

    // Ethernet MAC addresses
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);

    // IP source and destination addresses
    memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
    memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);

    // TCP source and destination ports
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // TCP sequence and acknowledgment numbers
uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8)
        | (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];

uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
        | ((uint32_t)buffer[1 + TCP_ACK_H_P + 1] << 16)
        | ((uint32_t)buffer[1 + TCP_ACK_H_P + 2] << 8)
        | (uint32_t)buffer[1 + TCP_ACK_H_P + 3];

    uint32_t serverSeqNum = clientAckNum;
    uint32_t ackNum = clientSeqNum + 1;
    prevSeq = serverSeqNum;
    prevAck = ackNum;

    // Set sequence and acknowledgment numbers
    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Padding to meet minimum Ethernet size
    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + 54);

    // Update connection state
    connectionState = ACK_SENT;
}


/**
 * @brief Constructs a TCP packet with the ACK flag set, based on received IP and TCP headers.
 * 
 * This function creates a TCP ACK packet by extracting the total IP length and received payload length, 
 * updating the Ethernet, IP, and TCP headers. It calculates the acknowledgment number and sequence 
 * numbers based on the received data, sets the TCP flags, and computes the IP and TCP checksums. 
 * The packet is then transmitted, and the connection state is updated to ACK_SENT.
 * 
 * @return None
 */

void makeTcpAck2(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
			uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
	    uint16_t receivedPayloadLength = totalLength1 - 40;
    printf("makeTcpAck\n\r");

    // Shift buffer for alignment
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    buffer[0] = 0x0E;

    // Ethernet MAC addresses
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);

    // IP source and destination addresses
    memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
    memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);

    // TCP source and destination ports
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // TCP sequence and acknowledgment numbers
uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8)
        | (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];

uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
        | ((uint32_t)buffer[1 + TCP_ACK_H_P + 1] << 16)
        | ((uint32_t)buffer[1 + TCP_ACK_H_P + 2] << 8)
        | (uint32_t)buffer[1 + TCP_ACK_H_P + 3];

    uint32_t serverSeqNum = clientAckNum;
    uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
    prevSeq = serverSeqNum;
    prevAck = ackNum;

    // Set sequence and acknowledgment numbers
    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Padding to meet minimum Ethernet size
    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + 54);

    // Update connection state
    connectionState = ACK_SENT;
}


/**
 * @brief Constructs a TCP SYN-ACK packet in response to a received TCP SYN packet.
 * 
 * This function creates a TCP SYN-ACK packet by extracting the received TCP sequence and acknowledgment 
 * numbers, setting the source and destination MAC addresses, IP addresses, and TCP ports. It updates the 
 * sequence and acknowledgment numbers, sets the appropriate TCP flags (SYN and ACK), calculates the IP 
 * and TCP checksums, and transmits the packet. Finally, it updates the connection state to SYN_RECEIVED.
 * 
 * @return None
 */

void makeTcpSynAck(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	printf("makeTcpSynAck\n\r");

	// Shift buffer for alignment
	memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	buffer[0] = 0x0E;
	// Ethernet MAC addresses
	memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);

	// IP source and destination addresses
	memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);

	// TCP source and destination ports
	uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
			| buffer[1 + TCP_SRC_PORT_L_P];
	uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
			| buffer[1 + TCP_DST_PORT_L_P];
	buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

	// TCP sequence and acknowledgment numbers
uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16)
        | ((uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8)
        | (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];

uint32_t clientAckNumber = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
            | ((uint32_t)buffer[1 + TCP_ACK_H_P + 1] << 16)
            | ((uint32_t)buffer[1 + TCP_ACK_H_P + 2] << 8)
            | (uint32_t)buffer[1 + TCP_ACK_H_P + 3];

	uint32_t serverSeqNum = clientAckNumber;
	uint32_t ackNum = clientSeqNum + 1;

	buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
	buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;

	// IP total length
	uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
	buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

	// TCP flags, window size, and header length
	buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
	buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

	// IP and TCP checksums
	calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

	// Padding to meet minimum Ethernet size
	// Transmit the packet
	transmit_tcp_packet(buffer, 1 + 54);

	// Update connection state
	connectionState = SYN_RECEIVED;
}



/**
 * @brief Constructs an HTTP response packet with a 200 OK status.
 * 
 * This function prepares an HTTP response packet with a simple HTML page, fills in the Ethernet, IP, 
 * and TCP headers, including source/destination MAC and IP addresses, TCP ports, sequence and acknowledgment 
 * numbers, and appropriate flags. It calculates the IP and TCP checksums, copies the HTTP content into the buffer, 
 * and transmits the constructed packet.
 * 
 * @return None
 */

void makeHttpResponse(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };

	printf("httpresponse\n\r");

	// Header sizes
	const uint16_t ethernetHeaderSize = ETH_HEADER_LEN;
	const uint16_t ipHeaderSize = IP_HEADER_LEN;
	const uint16_t tcpHeaderSize = TCP_HEADER_LEN;
	const uint16_t headerSize = ethernetHeaderSize + ipHeaderSize
			+ tcpHeaderSize;

	// HTTP response content
	const char *httpResponse = "HTTP/1.1 200 OK\r\n"
			"Content-Type: text/html\r\n"
			"Content-Length: 530\r\n" // Length should match actual content
			"\r\n"
			"<!DOCTYPE html>"
			"<html lang='en'>"
			"<head>"
			"<meta charset='UTF-8'>"
			"<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
			"<title>Electronics Tree</title>"
			"<style>"
			"body {font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; padding: 20px;}"
			"h1 {color: #333333;}"
			"p {color: #666666;}"
			"</style>"
			"</head>"
			"<body>"
			"<h1>ESD FALL 2024</h1>"
			"<p>Welcome to Electronics Tree, where our name isn't just a title�it's a commitment to practical growth in your knowledge and skills. Think of it like planting a seed.</p>"
			"</body>"
			"</html>";
	uint16_t responseLen = strlen(httpResponse);

	// Ensure buffer[0] is 0x0E
	memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	buffer[0] = 0x0E;

	// Prepare Ethernet Header
	memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Swap MACs
	memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);           // Set device MAC
	buffer[1 + ETH_TYPE_H_P] = (ETH_TYPE_IP >> 8) & 0xFF; // Set EtherType to IPv4
	buffer[1 + ETH_TYPE_L_P] = ETH_TYPE_IP & 0xFF;

	// Prepare IP Header inline
	uint16_t totalLength = ipHeaderSize + tcpHeaderSize + responseLen;
	uint8_t *ipHeader = &buffer[1 + ethernetHeaderSize];
	ipHeader[0] = 0x45; // Version and header length
	ipHeader[1] = 0x00; // Differentiated services
	ipHeader[2] = (totalLength >> 8) & 0xFF; // Total length high byte
	ipHeader[3] = totalLength & 0xFF;        // Total length low byte
	ipHeader[4] = 0x00; // Identification
	ipHeader[5] = 0x00;
	ipHeader[6] = 0x40; // Flags and Fragment Offset (Don't Fragment)
	ipHeader[7] = 0x00;
	ipHeader[8] = 64;   // Time to Live
	ipHeader[9] = IP_PROTO_TCP; // Protocol: TCP
	ipHeader[10] = 0x00; // Header checksum (reset for calculation)
	ipHeader[11] = 0x00;
	memcpy(&ipHeader[12], device_ip, 4); // Source IP
	//memcpy(&ipHeader[16], &buffer[1 + IP_DST_P], 4); // Destination IP
	memcpy(&ipHeader[16], target_ip, 4); // Destination IP
	calculateIPChecksum(ipHeader);

	// Prepare TCP Header inline
	uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
			| buffer[1 + TCP_SRC_PORT_L_P];
	uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
			| buffer[1 + TCP_DST_PORT_L_P];
	uint32_t seqNum = 1000; // Example sequence number
	uint32_t seqPart1, seqPart2, seqPart3, seqPart4, ackNum;

	// Extract each part of the sequence number
seqPart1 = (uint32_t)buffer[1 + TCP_SEQ_H_P] << 24;     // Most significant byte
seqPart2 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16; // Second byte
seqPart3 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8;  // Third byte
seqPart4 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];       // Least significant byte

	// Combine all parts to form the sequence number
	ackNum = seqPart1 | seqPart2 | seqPart3 | seqPart4;

	// Increment by 1
	ackNum += 1;

	uint8_t *tcpHeader = &buffer[1 + ethernetHeaderSize + ipHeaderSize];
	tcpHeader[0] = (dstPort >> 8) & 0xFF; // Source port high byte
	tcpHeader[1] = dstPort & 0xFF;        // Source port low byte
	tcpHeader[2] = (srcPort >> 8) & 0xFF; // Destination port high byte
	tcpHeader[3] = srcPort & 0xFF;        // Destination port low byte
	tcpHeader[4] = (seqNum >> 24) & 0xFF; // Sequence number
	tcpHeader[5] = (seqNum >> 16) & 0xFF;
	tcpHeader[6] = (seqNum >> 8) & 0xFF;
	tcpHeader[7] = seqNum & 0xFF;
	tcpHeader[8] = (ackNum >> 24) & 0xFF; // Acknowledgment number
	tcpHeader[9] = (ackNum >> 16) & 0xFF;
	tcpHeader[10] = (ackNum >> 8) & 0xFF;
	tcpHeader[11] = ackNum & 0xFF;
	tcpHeader[12] = 0x50; // Data offset (5 words) + Reserved
	tcpHeader[13] = TCP_FLAG_ACK | TCP_FLAG_PUSH; // Flags
	tcpHeader[14] = 0xFF; // Window size high byte
	tcpHeader[15] = 0xFF; // Window size low byte
	tcpHeader[16] = 0x00; // Checksum (reset for calculation)
	tcpHeader[17] = 0x00;
	tcpHeader[18] = 0x00; // Urgent pointer
	tcpHeader[19] = 0x00;
	calculateTcpChecksum(&buffer[1]);

	// Copy HTTP response into the buffer
	memcpy(&buffer[1 + headerSize], httpResponse, responseLen);

	// Transmit the packet
	transmit_tcp_packet(buffer, 1 + headerSize + responseLen);
}


/**
 * @brief Sends a TCP acknowledgment (ACK) packet.
 * 
 * This function constructs and sends a TCP acknowledgment (ACK) packet by modifying the buffer contents,
 * setting the TCP flags to ACK, and transmitting the packet to the target device.
 * 
 * @return None
 */
void makeTcpAck(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	printf("tcpack\n\r");
	memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);

	// Set the 0th value to 0x0E
	buffer[0] = 0x0E;
	buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
	transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
}


/**
 * @brief Sends an ARP request packet.
 * 
 * This function constructs and sends an ARP request packet by populating the ARP packet structure with
 * the device's and target's MAC and IP addresses. It then transmits the packet to the network to request
 * the MAC address of the target device.
 * 
 * @return None
 */
void trial_arp_request(void) 
{
    uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
    uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	printf("refresharp\n\r");
	uint8_t arp_packet[43] = { 0x0E };
	memcpy(&arp_packet[1], target_mac, 6);
	memcpy(&arp_packet[7], device_mac, 6);
	arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
	arp_packet[14] = ETH_TYPE_ARP & 0xFF;
	arp_packet[15] = 0x00;
	arp_packet[16] = 0x01; // Hardware type
	arp_packet[17] = 0x08;
	arp_packet[18] = 0x00; // Protocol type
	arp_packet[19] = 0x06; // Hardware size
	arp_packet[20] = 0x04; // Protocol size
	arp_packet[21] = 0x00;
	arp_packet[22] = 0x01; // Operation (request)
	memcpy(&arp_packet[23], device_mac, 6);
	memcpy(&arp_packet[29], device_ip, 4);
	memset(&arp_packet[33], 0, 6);
	memcpy(&arp_packet[39], target_ip, 4);
	transmit_tcp_packet(arp_packet, 43);
}


/**
 * @brief Main loop for packet processing.
 * 
 * This function receives packets and processes them based on their Ethernet type. It handles ARP packets
 * by sending ARP replies if needed and processes IP packets, specifically TCP packets, to manage connection
 * states such as SYN, ACK, and FIN. The function adjusts connection states and sends the appropriate TCP 
 * responses based on the received packet flags.
 * 
 * @return None
 */
void packetLoop(void) 
{
	uint16_t plen = packetReceive();

	// Process received packets
	if (plen > 0) {
		uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
		if (ethType == ETH_TYPE_ARP) {
			if (buffer[21] == 0x01) {
				makeArpReply();
			}
			return;
		}

		if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP) {
			uint8_t tcpFlags = buffer[TCP_FLAGS_P];

			// Check for TCP(ACK_FIN)
						if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
							printf("TCP(ACK_FIN) packet detected\n\r");
							makeTcpAck3(); // Send an acknowledgment
							connectionState = CLOSED;
							//enc_init(device_mac);
							return;
						}
						if ((tcpFlags & TCP_FLAG_SYN)) {
													printf("TCP(SYN) packet detected\n\r");
													//makeTcpAck3(); // Send an acknowledgment
													connectionState = LISTEN;
													//enc_init(device_mac);
												}
			switch (connectionState) {
			case LISTEN:
				printf("listen\n\r");
				if (tcpFlags & TCP_FLAG_SYN)
					makeTcpSynAck();
				break;
			case SYN_RECEIVED:
				printf("syn received\n\r");
				if (tcpFlags & TCP_FLAG_ACK)
					connectionState = ESTABLISHED;
				break;
			case ESTABLISHED:
				printf("established\n\r");
				if (tcpFlags & TCP_FLAG_FIN) {
					makeTcpAck();
					connectionState = FIN_WAIT;
				} else if (plen > TCP_DATA_START_P) {
					makeTcpAck2();

				}
				break;
			case FIN_WAIT:
				printf("fin wait\n\r");
				if (tcpFlags & TCP_FLAG_ACK)
					connectionState = CLOSED;
				break;
			case ACK_SENT:
				makeTcpFinPshAck();
				connectionState = CLOSED;
				break;
			default:
				break;
			}
		}
	}
}


