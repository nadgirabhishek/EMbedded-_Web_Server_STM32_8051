
/******************************************************************************
 * @file        enc.h
 * @brief       Header file for ENC28J60 Ethernet controller functions including
 *              initialization, register access, buffer handling, and PHY operations.
 * @author      Abhishek Nadgir
 * @date        December 05, 2024
 ******************************************************************************
*/

#ifndef ENC_H_
#define ENC_H_

#include "global.h"

void enc_set_autoinc(void) ;
void enc_select_reg_bank(uint8_t bank);
void enc_control_write(int reg_bank, uint8_t addr, uint8_t data) ;
void enc_buffer_init(uint16_t start_address, uint16_t end_address);
void enc_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr);
uint16_t enc_buffer_read(int num_bytes, uint16_t start_address,
		uint8_t *data_ptr);
uint8_t enc_mac_read(uint8_t addr, uint8_t bank) ;
void enc_busy_wait(void) ;
uint16_t enc_phy_read(uint8_t addr) ;
void enc_phy_write(uint8_t addr, uint16_t data);
uint8_t enc_eth_read(uint8_t addr, uint8_t bank) ;
void enc_init(const uint8_t *mac);
void enc_bit_set(uint8_t addr, uint8_t mask);
void enc_bit_clear(uint8_t addr, uint8_t mask) ;
void enc_reset(void) ;


#endif /* ENC_H_ */
