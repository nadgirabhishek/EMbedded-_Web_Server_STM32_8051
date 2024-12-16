/******************************************************************************
 * @file    enc.c
 * @brief   Contains functions for basic Functions of ENC Chip Driver
 *
 * @author      Abhishek Koppa
 * @date        December 05, 2024
 * This file provides the implementation for Reading, Writing and Initalising the
 * ENC Chip.
 ******************************************************************************/


#include "enc.h"

void enc_set_autoinc(void) {
	CS_LOW;
	SPI_WriteByte(ENC_ECON2);
	uint8_t data = SPI_ReadByte(); // Read the data from the SPI slave
	CS_HIGH;
	data |= (1 << 7); // Set bit 7 of the data to 1
	CS_LOW;
	SPI_WriteByte(SPI_WRITE_ECON2);      // Write ECON2 address
	SPI_WriteByte(data);      // Write the modified data with MSB set
	CS_HIGH;
}
void enc_select_reg_bank(uint8_t bank) {
	CS_LOW;
	SPI_WriteByte(ENC_ECON1); // Send the address
	uint8_t data = SPI_ReadByte(); // Read the data
	CS_HIGH;

	// Modify the last two bits of 'data' based on 'bank'
	data &= ~0x03; // Clear the last two bits
	switch (bank) {
	case 0:
		data |= 0x00; // Last two bits: 00
		break;
	case 1:
		data |= 0x01; // Last two bits: 01
		break;
	case 2:
		data |= 0x02; // Last two bits: 10
		break;
	case 3:
		data |= 0x03; // Last two bits: 11
		break;
	default:
		printf("wrong bank");
	}

	for (int i = 0; i < 16; i++)
		; // Delay

	CS_LOW;
	SPI_WriteByte(SPI_WRITE_ECON1);
	SPI_WriteByte(data); // Send the modified data
	CS_HIGH;
}

void enc_control_write(int reg_bank, uint8_t addr, uint8_t data) {
	uint8_t opcode = ENC_CONTROL_WRITE_OPCODE;
	addr = addr + opcode;
	enc_select_reg_bank(reg_bank);
	CS_LOW;
	SPI_WriteByte(addr);
	SPI_WriteByte(data);
	CS_HIGH;
}

void enc_buffer_init(uint16_t start_address, uint16_t end_address) {

	if (start_address > TX_BUFFER_END || end_address > TX_BUFFER_END) {
		printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
				start_address, end_address);
		return;
	}

	start_address &= ~1;  // Align to even address

	enc_control_write(0, ENC_ERDPTL, (uint8_t) (start_address & 0xFF)); // ERDPTL
	enc_control_write(0, ENC_ERDPTH, (uint8_t) (start_address >> 8)); // ERDPTH
	enc_control_write(0, ENC_ERXSTL, (uint8_t) (start_address & 0xFF)); // ERXSTL
	enc_control_write(0, ENC_ERXSTH, (uint8_t) (start_address >> 8)); // ERXSTH
	enc_control_write(0, ENC_ERXNDL, (uint8_t) (end_address & 0xFF)); // ERXNDL
	enc_control_write(0, ENC_ERXNDH, (uint8_t) (end_address >> 8)); // ERXNDH
	enc_control_write(0, ENC_ERXRDPTL, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
	enc_control_write(0, ENC_ERXRDPTH, (uint8_t) (start_address >> 8)); // ERXRDPTH
	printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
			end_address);
}

void enc_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr) {
	if (num_bytes < 1) {
		printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
		return;
	}
	if (start_address > TX_BUFFER_END) {
		printf("\n\rInvalid address: %04X\n\r", start_address);
		return;
	}
	if (start_address < TX_BUFFER_START
			|| (start_address + num_bytes) > TX_BUFFER_END) {
		printf("\nInvalid TX Address: Start 0x%04X, Size %d\n", start_address,
				num_bytes);
		return;
	}
	//buffer_init(0000,start_address-2);
	if (num_bytes > 1) {
		enc_set_autoinc();
	}
	uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t) (start_address & 0xFF);

	enc_control_write(0, ENC_EWRPTH, higher_byte); // High byte
	enc_control_write(0, ENC_EWRPTL, lower_byte); //

	uint8_t opcode = ENC_WRITE_BUFFER_OPCODE; // Write buffer memory command
	CS_LOW; // Pull CS Low
	SPI_WriteByte(opcode);
	//printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r",
	//		num_bytes, start_address);
	for (int i = 0; i < num_bytes; i++) {
		//printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
		SPI_WriteByte(*data_ptr); // Send data
		data_ptr++;
	}
	CS_HIGH; // Pull CS High
}


uint16_t enc_buffer_read(int num_bytes, uint16_t start_address,
		uint8_t *data_ptr) {
	if (num_bytes < 1) {
		printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
		return 0;
	}
	if (start_address > TX_BUFFER_END) {
		printf("\n\rInvalid address: %04X\n\r", start_address);
		return 0;
	}

	if ((start_address + num_bytes) > RX_BUFFER_END) {
		printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
				num_bytes);
		return 0;
	}

	if (num_bytes > 1) {
		enc_set_autoinc();
	}
	//buffer_init(start_address,start_address+num_bytes);
	uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
	enc_control_write(0, ENC_ERDPTH, higher_byte); // ERDPTH
	enc_control_write(0, ENC_ERDPTL, lower_byte); // ERDPTL
	//printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r",
	//		num_bytes, start_address);
	uint8_t opcode = ENC_READ_BUFFER_OPCODE; // Read buffer memory command
	CS_LOW; // Pull CS Low
	SPI_WriteByte(opcode);
	for (int i = 0; i < num_bytes; i++) {
		*data_ptr = SPI_ReadByte(); // Read data
		//printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
		data_ptr++;
	}
	CS_HIGH;// Pull CS High
	return (uint16_t) num_bytes;
}

uint8_t enc_mac_read(uint8_t addr, uint8_t bank) {
	if (addr > ENC_MAC_MAX_ADDRESS) {
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
		return 0;
	}

	enc_select_reg_bank(bank);
	// Pull CS Low
	CS_LOW;

	// Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

	// Pull CS High
	CS_HIGH;
	printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);

	return data;
}

void enc_busy_wait(void) {
	uint8_t data = enc_mac_read(0x0A, 3); // Read ESTAT register (bank 3)
	while (data & 0x01) {                 // Wait until BUSY bit clears
		data = enc_mac_read(0x0A, 3);
	}
}
uint16_t enc_phy_read(uint8_t addr) {
	enc_control_write(2, ENC_MIREGADR, addr);
	enc_control_write(2, ENC_MICMD, 1);				//MICMD.MIIRD bit set

	enc_busy_wait();

	enc_control_write(2, ENC_MICMD, 0);				//MICMD.MIIRD bit cleared

	uint16_t data_LSB = enc_mac_read(ENC_MIRDL, 2);
	uint16_t data_MSB = enc_mac_read(ENC_MIRDH, 2);

	uint16_t data = (data_MSB << 8) + data_LSB;
	printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	return data;
}

void enc_phy_write(uint8_t addr, uint16_t data) {
	enc_control_write(2, ENC_MIREGADR, addr);
	enc_control_write(2, ENC_MIWRL, (uint8_t) (data & 0xFF));
	enc_control_write(2, ENC_MIWRH, (uint8_t) ((data >> 8) & 0xFF));
	printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
}

uint8_t enc_eth_read(uint8_t addr, uint8_t bank) {
	if (addr > ENC_MAC_MAX_ADDRESS) {
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	}

	enc_select_reg_bank(bank);
	// Pull CS Low
	CS_LOW;

	// Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

	// Pull CS High
	CS_HIGH;

	return data;
}

void enc_reset(void) {
	CS_LOW;

	SPI_WriteByte(0XFF);

	CS_HIGH;

}



void enc_init(const uint8_t *mac) {
	// Perform a system reset
	enc_reset();

	// Wait for the ENC28J60 to stabilize (poll CLKRDY bit in ESTAT register)
	while (!(enc_mac_read(ENC_ESTAT, 0) & 0x01))
		; // ESTAT.CLKRDY

	// Split Memory: Reserve RX and TX buffers
	uint16_t rx_start = RX_BUFFER_START;
	uint16_t rx_end = RX_BUFFER_END;
	uint16_t tx_start = TX_BUFFER_START;
	uint16_t tx_end  = TX_BUFFER_END;
	// Initialize RX Buffer
	enc_buffer_init(rx_start, rx_end);
	enc_control_write(0, ENC_ETXSTL, (uint8_t) (tx_start & 0xFF)); // Low byte
	enc_control_write(0, ENC_ETXSTH, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte

	// Write to ETXND (Transmit End Pointer)
	enc_control_write(0, ENC_ETXNDL, (uint8_t) (tx_end & 0xFF)); // Low byte
	enc_control_write(0, ENC_ETXNDH, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
	// Set RX Read Pointer to Start Address
	//spi_control_write(0, 0x0C, (uint8_t) (rx_start & 0xFF)); // ERXRDPTL
	//spi_control_write(0, 0x0D, (uint8_t) ((rx_start >> 8) & 0xFF)); // ERXRDPTH

	// Enable MAC Receive
	//spi_control_write(2, 0x00, 0x0D); // MACON1: Enable RX (MARXEN), TXPAUS, RXPAUS

	enc_control_write(1, ERXFCON, 0xB1);// crcen,ucen,pcen,bcen
	enc_control_write(1, EPMM0, 0x3F); //pattern match
	enc_control_write(1, EPMM1, 0x30); //pattern match
	enc_control_write(1, EPMCSL, 0xF9); //pattern match
	enc_control_write(1, EPMCSH, 0xF7); //pattern match


	uint8_t read_macon1 = enc_mac_read(ENC_MACON1, 2); //mac enable for reception
	enc_control_write(2, ENC_MACON1, (read_macon1 | (1 << 0))); //mac enable for reception

	enc_control_write(2, MACON3, 0x33); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
	// Configure MACON3 for padding, CRC, and frame length
	//enc_control_write(2, 0x02, 0x70); // MACON3: Padding, CRC, and frame length checking enabled37


	enc_control_write(2, MAIPGL, 0x12); // MAIPGL: Non-back-to-back gap
	enc_control_write(2, MAIPGH, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)

	enc_control_write(2, MABBIPG, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)

	enc_control_write(2, MACON4, 0x40); // MACON4: IEEE compliance00

	// Set maximum frame length (1518 bytes for standard Ethernet)
	enc_control_write(2, MAMXFLL, 0xDC); // MAMXFLL
	enc_control_write(2, MAMXFLH, 0x05); // MAMXFLH



	// Configure MAC Address (write in reverse order)
	enc_control_write(3, ENC_MAADR6, mac[5]); // MAADR6
	enc_control_write(3, ENC_MAADR5, mac[4]); // MAADR5
	enc_control_write(3, ENC_MAADR4, mac[3]); // MAADR4
	enc_control_write(3, ENC_MAADR3, mac[2]); // MAADR3
	enc_control_write(3, ENC_MAADR2, mac[1]); // MAADR2
	enc_control_write(3, ENC_MAADR1, mac[0]); // MAADR1
	enc_phy_write(PHCON1, 0x0100);
	enc_phy_write(PHCON2, 0x0100);

	// Configure PHY LEDs for activity indication
	enc_control_write(0, ENC_EIE, 0XC0); // reception enable bit
	enc_control_write(0, ENC_ECON1, 0X04); // reception enable bit
		uint8_t rev = enc_eth_read(ENC_EREVID,3);
	    if (rev > 5)
        {
            ++rev;
        }
	printf("\nENC28J60 Initialization Complete.\n");
	printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
			mac[2], mac[3], mac[4], mac[5]);
}

void enc_bit_set(uint8_t addr, uint8_t mask) {
	uint8_t opcode = BIT_FIELD_SET_OPCODE | addr; // BFS opcode
	CS_LOW;   // Pull CS Low
	SPI_WriteByte(opcode);
	SPI_WriteByte(mask);          // Set the specified bits
	CS_HIGH;    // Pull CS High
}

void enc_bit_clear(uint8_t addr, uint8_t mask) {
	uint8_t opcode = BIT_FIELD_CLEAR_OPCODE | addr; // BFC opcode
	CS_LOW;  // Pull CS Low
	SPI_WriteByte(opcode);
	SPI_WriteByte(mask);          // Clear the specified bits
	CS_HIGH;    // Pull CS High
}
