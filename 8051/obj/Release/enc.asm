;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module enc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf
	.globl _SPI_ReadByte
	.globl _SPI_WriteByte
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _enc_bit_clear_PARM_2
	.globl _enc_bit_set_PARM_2
	.globl _enc_eth_read_PARM_2
	.globl _enc_phy_write_PARM_2
	.globl _enc_mac_read_PARM_2
	.globl _enc_buffer_read_PARM_3
	.globl _enc_buffer_read_PARM_2
	.globl _enc_buffer_write_PARM_3
	.globl _enc_buffer_write_PARM_2
	.globl _enc_buffer_init_PARM_2
	.globl _enc_control_write_PARM_3
	.globl _enc_control_write_PARM_2
	.globl _enc_set_autoinc
	.globl _enc_select_reg_bank
	.globl _enc_control_write
	.globl _enc_buffer_init
	.globl _enc_buffer_write
	.globl _enc_buffer_read
	.globl _enc_mac_read
	.globl _enc_busy_wait
	.globl _enc_phy_read
	.globl _enc_phy_write
	.globl _enc_eth_read
	.globl _enc_reset
	.globl _enc_init
	.globl _enc_bit_set
	.globl _enc_bit_clear
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_enc_init_sloc0_1_0:
	.ds 3
_enc_init_sloc1_1_0:
	.ds 3
_enc_init_sloc2_1_0:
	.ds 3
_enc_init_sloc3_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_enc_select_reg_bank_bank_10000_85:
	.ds 1
_enc_select_reg_bank_data_10001_87:
	.ds 1
_enc_control_write_PARM_2:
	.ds 1
_enc_control_write_PARM_3:
	.ds 1
_enc_control_write_reg_bank_10000_90:
	.ds 2
_enc_buffer_init_PARM_2:
	.ds 2
_enc_buffer_init_start_address_10000_92:
	.ds 2
_enc_buffer_write_PARM_2:
	.ds 2
_enc_buffer_write_PARM_3:
	.ds 3
_enc_buffer_write_num_bytes_10000_95:
	.ds 2
_enc_buffer_read_PARM_2:
	.ds 2
_enc_buffer_read_PARM_3:
	.ds 3
_enc_buffer_read_num_bytes_10000_105:
	.ds 2
_enc_mac_read_PARM_2:
	.ds 1
_enc_mac_read_addr_10000_115:
	.ds 1
_enc_busy_wait_data_10000_120:
	.ds 1
_enc_phy_read_addr_10000_122:
	.ds 1
_enc_phy_write_PARM_2:
	.ds 2
_enc_phy_write_addr_10000_125:
	.ds 1
_enc_eth_read_PARM_2:
	.ds 1
_enc_eth_read_addr_10000_127:
	.ds 1
_enc_init_mac_10000_133:
	.ds 3
_enc_bit_set_PARM_2:
	.ds 1
_enc_bit_set_addr_10000_139:
	.ds 1
_enc_bit_clear_PARM_2:
	.ds 1
_enc_bit_clear_addr_10000_141:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_set_autoinc'
;------------------------------------------------------------
;data                      Allocated with name '_enc_set_autoinc_data_10001_84'
;------------------------------------------------------------
;	enc.c:14: void enc_set_autoinc(void) {
;	-----------------------------------------
;	 function enc_set_autoinc
;	-----------------------------------------
_enc_set_autoinc:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	enc.c:15: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:16: SPI_WriteByte(ENC_ECON2);
	mov	dpl, #0x1e
	lcall	_SPI_WriteByte
;	enc.c:17: uint8_t data = SPI_ReadByte(); // Read the data from the SPI slave
	lcall	_SPI_ReadByte
	mov	r7, dpl
;	enc.c:18: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:19: data |= (1 << 7); // Set bit 7 of the data to 1
	orl	ar7,#0x80
;	enc.c:20: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:21: SPI_WriteByte(SPI_WRITE_ECON2);      // Write ECON2 address
	mov	dpl, #0x5e
	push	ar7
	lcall	_SPI_WriteByte
	pop	ar7
;	enc.c:22: SPI_WriteByte(data);      // Write the modified data with MSB set
	mov	dpl, r7
	lcall	_SPI_WriteByte
;	enc.c:23: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_select_reg_bank'
;------------------------------------------------------------
;bank                      Allocated with name '_enc_select_reg_bank_bank_10000_85'
;data                      Allocated with name '_enc_select_reg_bank_data_10001_87'
;i                         Allocated with name '_enc_select_reg_bank_i_20001_89'
;------------------------------------------------------------
;	enc.c:25: void enc_select_reg_bank(uint8_t bank) {
;	-----------------------------------------
;	 function enc_select_reg_bank
;	-----------------------------------------
_enc_select_reg_bank:
	mov	a,dpl
	mov	dptr,#_enc_select_reg_bank_bank_10000_85
	movx	@dptr,a
;	enc.c:26: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:27: SPI_WriteByte(ENC_ECON1); // Send the address
	mov	dpl, #0x1f
	lcall	_SPI_WriteByte
;	enc.c:28: uint8_t data = SPI_ReadByte(); // Read the data
	lcall	_SPI_ReadByte
	mov	r7, dpl
;	enc.c:29: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:32: data &= ~0x03; // Clear the last two bits
	anl	ar7,#0xfc
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	mov	a,r7
	movx	@dptr,a
;	enc.c:33: switch (bank) {
	mov	dptr,#_enc_select_reg_bank_bank_10000_85
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r6
	add	a,r6
;	enc.c:34: case 0:
	mov	dptr,#00133$
	jmp	@a+dptr
00133$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	enc.c:35: data |= 0x00; // Last two bits: 00
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	mov	a,r7
	movx	@dptr,a
;	enc.c:36: break;
;	enc.c:37: case 1:
	sjmp	00115$
00102$:
;	enc.c:38: data |= 0x01; // Last two bits: 01
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	enc.c:39: break;
;	enc.c:40: case 2:
	sjmp	00115$
00103$:
;	enc.c:41: data |= 0x02; // Last two bits: 10
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
;	enc.c:42: break;
;	enc.c:43: case 3:
	sjmp	00115$
00104$:
;	enc.c:44: data |= 0x03; // Last two bits: 11
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	mov	a,#0x03
	orl	a,r7
	movx	@dptr,a
;	enc.c:45: break;
;	enc.c:46: default:
	sjmp	00115$
00105$:
;	enc.c:47: printf("wrong bank");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	enc.c:50: for (int i = 0; i < 16; i++)
00115$:
	mov	r7,#0x00
00109$:
	cjne	r7,#0x10,00134$
00134$:
	jnc	00107$
	inc	r7
	sjmp	00109$
00107$:
;	enc.c:53: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:54: SPI_WriteByte(SPI_WRITE_ECON1);
	mov	dpl, #0x5f
	lcall	_SPI_WriteByte
;	enc.c:55: SPI_WriteByte(data); // Send the modified data
	mov	dptr,#_enc_select_reg_bank_data_10001_87
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_WriteByte
;	enc.c:56: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_control_write'
;------------------------------------------------------------
;addr                      Allocated with name '_enc_control_write_PARM_2'
;data                      Allocated with name '_enc_control_write_PARM_3'
;reg_bank                  Allocated with name '_enc_control_write_reg_bank_10000_90'
;opcode                    Allocated with name '_enc_control_write_opcode_10000_91'
;------------------------------------------------------------
;	enc.c:59: void enc_control_write(int reg_bank, uint8_t addr, uint8_t data) {
;	-----------------------------------------
;	 function enc_control_write
;	-----------------------------------------
_enc_control_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc_control_write_reg_bank_10000_90
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:61: addr = addr + opcode;
	mov	dptr,#_enc_control_write_PARM_2
	movx	a,@dptr
	add	a, #0x40
	movx	@dptr,a
;	enc.c:62: enc_select_reg_bank(reg_bank);
	mov	dptr,#_enc_control_write_reg_bank_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl, r6
	lcall	_enc_select_reg_bank
;	enc.c:63: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:64: SPI_WriteByte(addr);
	mov	dptr,#_enc_control_write_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_WriteByte
;	enc.c:65: SPI_WriteByte(data);
	mov	dptr,#_enc_control_write_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_WriteByte
;	enc.c:66: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_buffer_init'
;------------------------------------------------------------
;end_address               Allocated with name '_enc_buffer_init_PARM_2'
;start_address             Allocated with name '_enc_buffer_init_start_address_10000_92'
;------------------------------------------------------------
;	enc.c:69: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
;	-----------------------------------------
;	 function enc_buffer_init
;	-----------------------------------------
_enc_buffer_init:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc_buffer_init_start_address_10000_92
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:71: if (start_address > TX_BUFFER_END || end_address > TX_BUFFER_END) {
	mov	dptr,#_enc_buffer_init_start_address_10000_92
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x1f
	subb	a,r7
	jc	00101$
	mov	dptr,#_enc_buffer_init_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00102$
00101$:
;	enc.c:72: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
	mov	dptr,#_enc_buffer_init_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_enc_buffer_init_start_address_10000_92
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	enc.c:74: return;
	ret
00102$:
;	enc.c:77: start_address &= ~1;  // Align to even address
	anl	ar6,#0xfe
	mov	dptr,#_enc_buffer_init_start_address_10000_92
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:79: enc_control_write(0, ENC_ERDPTL, (uint8_t) (start_address & 0xFF)); // ERDPTL
	mov	dptr,#_enc_buffer_init_start_address_10000_92
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar3,r6
	mov	dptr,#_enc_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_enc_control_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:80: enc_control_write(0, ENC_ERDPTH, (uint8_t) (start_address >> 8)); // ERDPTH
	mov	ar2,r7
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_enc_control_write
	pop	ar2
	pop	ar3
;	enc.c:81: enc_control_write(0, ENC_ERXSTL, (uint8_t) (start_address & 0xFF)); // ERXSTL
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar3
	push	ar2
	lcall	_enc_control_write
	pop	ar2
;	enc.c:82: enc_control_write(0, ENC_ERXSTH, (uint8_t) (start_address >> 8)); // ERXSTH
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar2
	lcall	_enc_control_write
	pop	ar2
	pop	ar3
	pop	ar4
;	enc.c:83: enc_control_write(0, ENC_ERXNDL, (uint8_t) (end_address & 0xFF)); // ERXNDL
	mov	ar1,r4
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar4
	push	ar3
	push	ar2
	lcall	_enc_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	enc.c:84: enc_control_write(0, ENC_ERXNDH, (uint8_t) (end_address >> 8)); // ERXNDH
	mov	ar1,r5
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_enc_control_write
	pop	ar2
	pop	ar3
;	enc.c:85: enc_control_write(0, ENC_ERXRDPTL, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar2
	lcall	_enc_control_write
	pop	ar2
;	enc.c:86: enc_control_write(0, ENC_ERXRDPTH, (uint8_t) (start_address >> 8)); // ERXRDPTH
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:87: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	enc.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_buffer_write'
;------------------------------------------------------------
;start_address             Allocated with name '_enc_buffer_write_PARM_2'
;data_ptr                  Allocated with name '_enc_buffer_write_PARM_3'
;num_bytes                 Allocated with name '_enc_buffer_write_num_bytes_10000_95'
;higher_byte               Allocated with name '_enc_buffer_write_higher_byte_10001_101'
;lower_byte                Allocated with name '_enc_buffer_write_lower_byte_10001_101'
;opcode                    Allocated with name '_enc_buffer_write_opcode_10002_102'
;i                         Allocated with name '_enc_buffer_write_i_20002_103'
;------------------------------------------------------------
;	enc.c:91: void enc_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr) {
;	-----------------------------------------
;	 function enc_buffer_write
;	-----------------------------------------
_enc_buffer_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:92: if (num_bytes < 1) {
	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	enc.c:93: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	enc.c:94: return;
	ret
00102$:
;	enc.c:96: if (start_address > TX_BUFFER_END) {
	mov	dptr,#_enc_buffer_write_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00104$
;	enc.c:97: printf("\n\rInvalid address: %04X\n\r", start_address);
	push	ar4
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	enc.c:98: return;
	ret
00104$:
;	enc.c:101: || (start_address + num_bytes) > TX_BUFFER_END) {
	mov	a,#0x100 - 0x1c
	add	a,r3
	jnc	00105$
	mov	ar0,r6
	mov	ar1,r7
	mov	a,r0
	add	a, r2
	mov	r2,a
	mov	a,r1
	addc	a, r3
	mov	r3,a
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00106$
00105$:
;	enc.c:102: printf("\nInvalid TX Address: Start 0x%04X, Size %d\n", start_address,
	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar4
	push	ar5
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	enc.c:104: return;
	ret
00106$:
;	enc.c:107: if (num_bytes > 1) {
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	enc.c:108: enc_set_autoinc();
	push	ar5
	push	ar4
	lcall	_enc_set_autoinc
	pop	ar4
	pop	ar5
00109$:
;	enc.c:110: uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	mov	ar7,r5
;	enc.c:111: uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
;	enc.c:113: enc_control_write(0, ENC_EWRPTH, higher_byte); // High byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar4
	lcall	_enc_control_write
	pop	ar4
;	enc.c:114: enc_control_write(0, ENC_EWRPTL, lower_byte); //
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:117: CS_LOW; // Pull CS Low
;	assignBit
	clr	_P1_1
;	enc.c:118: SPI_WriteByte(opcode);
	mov	dpl, #0x7a
	lcall	_SPI_WriteByte
;	enc.c:121: for (int i = 0; i < num_bytes; i++) {
	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enc_buffer_write_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00112$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	enc.c:123: SPI_WriteByte(*data_ptr); // Send data
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dpl, r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SPI_WriteByte
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:124: data_ptr++;
;	enc.c:121: for (int i = 0; i < num_bytes; i++) {
	inc	r1
	cjne	r1,#0x00,00112$
	inc	r2
	sjmp	00112$
00110$:
;	enc.c:126: CS_HIGH; // Pull CS High
;	assignBit
	setb	_P1_1
;	enc.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_buffer_read'
;------------------------------------------------------------
;start_address             Allocated with name '_enc_buffer_read_PARM_2'
;data_ptr                  Allocated with name '_enc_buffer_read_PARM_3'
;num_bytes                 Allocated with name '_enc_buffer_read_num_bytes_10000_105'
;higher_byte               Allocated with name '_enc_buffer_read_higher_byte_10001_111'
;lower_byte                Allocated with name '_enc_buffer_read_lower_byte_10001_111'
;opcode                    Allocated with name '_enc_buffer_read_opcode_10002_112'
;i                         Allocated with name '_enc_buffer_read_i_20002_113'
;------------------------------------------------------------
;	enc.c:130: uint16_t enc_buffer_read(int num_bytes, uint16_t start_address,
;	-----------------------------------------
;	 function enc_buffer_read
;	-----------------------------------------
_enc_buffer_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:132: if (num_bytes < 1) {
	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	enc.c:133: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	enc.c:134: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	enc.c:136: if (start_address > TX_BUFFER_END) {
	mov	dptr,#_enc_buffer_read_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00104$
;	enc.c:137: printf("\n\rInvalid address: %04X\n\r", start_address);
	push	ar4
	push	ar5
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	enc.c:138: return 0;
	mov	dptr,#0x0000
	ret
00104$:
;	enc.c:141: if ((start_address + num_bytes) > RX_BUFFER_END) {
	mov	ar0,r6
	mov	ar1,r7
	mov	a,r0
	add	a, r2
	mov	r2,a
	mov	a,r1
	addc	a, r3
	mov	r3,a
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1b
	subb	a,r3
	jnc	00106$
;	enc.c:142: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	enc.c:144: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	enc.c:147: if (num_bytes > 1) {
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	enc.c:148: enc_set_autoinc();
	push	ar5
	push	ar4
	lcall	_enc_set_autoinc
	pop	ar4
	pop	ar5
00108$:
;	enc.c:151: uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	mov	ar7,r5
;	enc.c:152: uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
;	enc.c:153: enc_control_write(0, ENC_ERDPTH, higher_byte); // ERDPTH
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar4
	lcall	_enc_control_write
	pop	ar4
;	enc.c:154: enc_control_write(0, ENC_ERDPTL, lower_byte); // ERDPTL
	mov	dptr,#_enc_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:158: CS_LOW; // Pull CS Low
;	assignBit
	clr	_P1_1
;	enc.c:159: SPI_WriteByte(opcode);
	mov	dpl, #0x3a
	lcall	_SPI_WriteByte
;	enc.c:160: for (int i = 0; i < num_bytes; i++) {
	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enc_buffer_read_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00111$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	enc.c:161: *data_ptr = SPI_ReadByte(); // Read data
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SPI_ReadByte
	mov	r0, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	enc.c:163: data_ptr++;
;	enc.c:160: for (int i = 0; i < num_bytes; i++) {
	inc	r1
	cjne	r1,#0x00,00111$
	inc	r2
	sjmp	00111$
00109$:
;	enc.c:165: CS_HIGH;// Pull CS High
;	assignBit
	setb	_P1_1
;	enc.c:166: return (uint16_t) num_bytes;
	mov	dpl, r6
	mov	dph, r7
;	enc.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_mac_read'
;------------------------------------------------------------
;bank                      Allocated with name '_enc_mac_read_PARM_2'
;addr                      Allocated with name '_enc_mac_read_addr_10000_115'
;data                      Allocated with name '_enc_mac_read_data_10001_118'
;------------------------------------------------------------
;	enc.c:169: uint8_t enc_mac_read(uint8_t addr, uint8_t bank) {
;	-----------------------------------------
;	 function enc_mac_read
;	-----------------------------------------
_enc_mac_read:
	mov	a,dpl
	mov	dptr,#_enc_mac_read_addr_10000_115
	movx	@dptr,a
;	enc.c:170: if (addr > ENC_MAC_MAX_ADDRESS) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x1f
	jnc	00102$
;	enc.c:171: printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	enc.c:172: return 0;
	mov	dpl, #0x00
	ret
00102$:
;	enc.c:175: enc_select_reg_bank(bank);
	mov	dptr,#_enc_mac_read_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_enc_select_reg_bank
	pop	ar7
;	enc.c:177: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:180: SPI_WriteByte(addr);           // Send the address
	mov	dpl, r7
	push	ar7
	lcall	_SPI_WriteByte
;	enc.c:182: uint8_t data = SPI_ReadByte(); // Read the data
	lcall	_SPI_ReadByte
	mov	r6, dpl
	pop	ar7
;	enc.c:185: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:186: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
	mov	ar4,r6
	mov	r5,#0x00
	mov	r3,#0x00
	push	ar6
	push	ar4
	push	ar5
	push	ar7
	push	ar3
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
;	enc.c:188: return data;
	mov	dpl, r6
;	enc.c:189: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_busy_wait'
;------------------------------------------------------------
;data                      Allocated with name '_enc_busy_wait_data_10000_120'
;------------------------------------------------------------
;	enc.c:191: void enc_busy_wait(void) {
;	-----------------------------------------
;	 function enc_busy_wait
;	-----------------------------------------
_enc_busy_wait:
;	enc.c:192: uint8_t data = enc_mac_read(0x0A, 3); // Read ESTAT register (bank 3)
	mov	dptr,#_enc_mac_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x0a
	lcall	_enc_mac_read
	mov	a, dpl
	mov	dptr,#_enc_busy_wait_data_10000_120
	movx	@dptr,a
;	enc.c:193: while (data & 0x01) {                 // Wait until BUSY bit clears
00101$:
	mov	dptr,#_enc_busy_wait_data_10000_120
	movx	a,@dptr
	jnb	acc.0,00104$
;	enc.c:194: data = enc_mac_read(0x0A, 3);
	mov	dptr,#_enc_mac_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x0a
	lcall	_enc_mac_read
	mov	a, dpl
	mov	dptr,#_enc_busy_wait_data_10000_120
	movx	@dptr,a
	sjmp	00101$
00104$:
;	enc.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_phy_read'
;------------------------------------------------------------
;addr                      Allocated with name '_enc_phy_read_addr_10000_122'
;data_LSB                  Allocated with name '_enc_phy_read_data_LSB_10001_124'
;data_MSB                  Allocated with name '_enc_phy_read_data_MSB_10001_124'
;data                      Allocated with name '_enc_phy_read_data_10001_124'
;------------------------------------------------------------
;	enc.c:197: uint16_t enc_phy_read(uint8_t addr) {
;	-----------------------------------------
;	 function enc_phy_read
;	-----------------------------------------
_enc_phy_read:
	mov	a,dpl
	mov	dptr,#_enc_phy_read_addr_10000_122
	movx	@dptr,a
;	enc.c:198: enc_control_write(2, ENC_MIREGADR, addr);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0002
	push	ar7
	lcall	_enc_control_write
;	enc.c:199: enc_control_write(2, ENC_MICMD, 1);				//MICMD.MIIRD bit set
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:201: enc_busy_wait();
	lcall	_enc_busy_wait
;	enc.c:203: enc_control_write(2, ENC_MICMD, 0);				//MICMD.MIIRD bit cleared
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:205: uint16_t data_LSB = enc_mac_read(ENC_MIRDL, 2);
	mov	dptr,#_enc_mac_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x18
	lcall	_enc_mac_read
	mov	r6, dpl
	mov	r5,#0x00
;	enc.c:206: uint16_t data_MSB = enc_mac_read(ENC_MIRDH, 2);
	mov	dptr,#_enc_mac_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x19
	push	ar6
	push	ar5
	lcall	_enc_mac_read
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:208: uint16_t data = (data_MSB << 8) + data_LSB;
	mov	ar3,r4
	mov	r4,#0x00
	mov	a,r6
	add	a, r4
	mov	r6,a
	mov	a,r5
	addc	a, r3
	mov	r5,a
;	enc.c:209: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	push	ar6
	push	ar5
	push	ar6
	push	ar5
	push	ar7
	push	ar4
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar6
;	enc.c:210: return data;
	mov	dpl, r6
	mov	dph, r5
;	enc.c:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_phy_write'
;------------------------------------------------------------
;data                      Allocated with name '_enc_phy_write_PARM_2'
;addr                      Allocated with name '_enc_phy_write_addr_10000_125'
;------------------------------------------------------------
;	enc.c:213: void enc_phy_write(uint8_t addr, uint16_t data) {
;	-----------------------------------------
;	 function enc_phy_write
;	-----------------------------------------
_enc_phy_write:
	mov	a,dpl
	mov	dptr,#_enc_phy_write_addr_10000_125
	movx	@dptr,a
;	enc.c:214: enc_control_write(2, ENC_MIREGADR, addr);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0002
	push	ar7
	lcall	_enc_control_write
;	enc.c:215: enc_control_write(2, ENC_MIWRL, (uint8_t) (data & 0xFF));
	mov	dptr,#_enc_phy_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar4,r5
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
;	enc.c:216: enc_control_write(2, ENC_MIWRH, (uint8_t) ((data >> 8) & 0xFF));
	mov	ar4,r6
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0002
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:217: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	mov	r4,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	enc.c:218: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_eth_read'
;------------------------------------------------------------
;bank                      Allocated with name '_enc_eth_read_PARM_2'
;addr                      Allocated with name '_enc_eth_read_addr_10000_127'
;data                      Allocated with name '_enc_eth_read_data_10001_130'
;------------------------------------------------------------
;	enc.c:220: uint8_t enc_eth_read(uint8_t addr, uint8_t bank) {
;	-----------------------------------------
;	 function enc_eth_read
;	-----------------------------------------
_enc_eth_read:
	mov	a,dpl
	mov	dptr,#_enc_eth_read_addr_10000_127
	movx	@dptr,a
;	enc.c:221: if (addr > ENC_MAC_MAX_ADDRESS) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x1f
	jnc	00102$
;	enc.c:222: printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	push	ar7
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
00102$:
;	enc.c:225: enc_select_reg_bank(bank);
	mov	dptr,#_enc_eth_read_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_enc_select_reg_bank
	pop	ar7
;	enc.c:227: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:230: SPI_WriteByte(addr);           // Send the address
	mov	dpl, r7
	lcall	_SPI_WriteByte
;	enc.c:232: uint8_t data = SPI_ReadByte(); // Read the data
	lcall	_SPI_ReadByte
	mov	r7, dpl
;	enc.c:235: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:237: return data;
	mov	dpl, r7
;	enc.c:238: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_reset'
;------------------------------------------------------------
;	enc.c:240: void enc_reset(void) {
;	-----------------------------------------
;	 function enc_reset
;	-----------------------------------------
_enc_reset:
;	enc.c:241: CS_LOW;
;	assignBit
	clr	_P1_1
;	enc.c:243: SPI_WriteByte(0XFF);
	mov	dpl, #0xff
	lcall	_SPI_WriteByte
;	enc.c:245: CS_HIGH;
;	assignBit
	setb	_P1_1
;	enc.c:247: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
;mac                       Allocated with name '_enc_init_mac_10000_133'
;rx_start                  Allocated with name '_enc_init_rx_start_10001_135'
;rx_end                    Allocated with name '_enc_init_rx_end_10001_135'
;tx_start                  Allocated with name '_enc_init_tx_start_10001_135'
;tx_end                    Allocated with name '_enc_init_tx_end_10001_135'
;read_macon1               Allocated with name '_enc_init_read_macon1_10002_136'
;rev                       Allocated with name '_enc_init_rev_10003_137'
;------------------------------------------------------------
;	enc.c:251: void enc_init(const uint8_t *mac) {
;	-----------------------------------------
;	 function enc_init
;	-----------------------------------------
_enc_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_enc_init_mac_10000_133
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	enc.c:253: enc_reset();
	lcall	_enc_reset
;	enc.c:256: while (!(enc_mac_read(ENC_ESTAT, 0) & 0x01))
00101$:
	mov	dptr,#_enc_mac_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1d
	lcall	_enc_mac_read
	mov	a, dpl
	jnb	acc.0,00101$
;	enc.c:265: enc_buffer_init(rx_start, rx_end);
	mov	dptr,#_enc_buffer_init_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	mov	a,#0x1b
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_buffer_init
;	enc.c:266: enc_control_write(0, ENC_ETXSTL, (uint8_t) (tx_start & 0xFF)); // Low byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:267: enc_control_write(0, ENC_ETXSTH, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x1c
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:270: enc_control_write(0, ENC_ETXNDL, (uint8_t) (tx_end & 0xFF)); // Low byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:271: enc_control_write(0, ENC_ETXNDH, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:279: enc_control_write(1, ERXFCON, 0xB1);// crcen,ucen,pcen,bcen
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xb1
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_enc_control_write
;	enc.c:280: enc_control_write(1, EPMM0, 0x3F); //pattern match
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x3f
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_enc_control_write
;	enc.c:281: enc_control_write(1, EPMM1, 0x30); //pattern match
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_enc_control_write
;	enc.c:282: enc_control_write(1, EPMCSL, 0xF9); //pattern match
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xf9
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_enc_control_write
;	enc.c:283: enc_control_write(1, EPMCSH, 0xF7); //pattern match
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xf7
	movx	@dptr,a
	mov	dptr,#0x0001
	lcall	_enc_control_write
;	enc.c:286: uint8_t read_macon1 = enc_mac_read(ENC_MACON1, 2); //mac enable for reception
	mov	dptr,#_enc_mac_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_enc_mac_read
	mov	a, dpl
;	enc.c:287: enc_control_write(2, ENC_MACON1, (read_macon1 | (1 << 0))); //mac enable for reception
	orl	a,#0x01
	mov	r7,a
	mov	dptr,#_enc_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:289: enc_control_write(2, MACON3, 0x33); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:294: enc_control_write(2, MAIPGL, 0x12); // MAIPGL: Non-back-to-back gap
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:295: enc_control_write(2, MAIPGH, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:297: enc_control_write(2, MABBIPG, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:299: enc_control_write(2, MACON4, 0x40); // MACON4: IEEE compliance00
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:302: enc_control_write(2, MAMXFLL, 0xDC); // MAMXFLL
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xdc
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:303: enc_control_write(2, MAMXFLH, 0x05); // MAMXFLH
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#0x0002
	lcall	_enc_control_write
;	enc.c:308: enc_control_write(3, ENC_MAADR6, mac[5]); // MAADR6
	mov	dptr,#_enc_init_mac_10000_133
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a, r5
	mov	_enc_init_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_enc_init_sloc0_1_0 + 1),a
	mov	(_enc_init_sloc0_1_0 + 2),r7
	mov	dpl,_enc_init_sloc0_1_0
	mov	dph,(_enc_init_sloc0_1_0 + 1)
	mov	b,(_enc_init_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:309: enc_control_write(3, ENC_MAADR5, mac[4]); // MAADR5
	mov	a,#0x04
	add	a, r5
	mov	_enc_init_sloc1_1_0,a
	clr	a
	addc	a, r6
	mov	(_enc_init_sloc1_1_0 + 1),a
	mov	(_enc_init_sloc1_1_0 + 2),r7
	mov	dpl,_enc_init_sloc1_1_0
	mov	dph,(_enc_init_sloc1_1_0 + 1)
	mov	b,(_enc_init_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_enc_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:310: enc_control_write(3, ENC_MAADR4, mac[3]); // MAADR4
	mov	a,#0x03
	add	a, r5
	mov	_enc_init_sloc2_1_0,a
	clr	a
	addc	a, r6
	mov	(_enc_init_sloc2_1_0 + 1),a
	mov	(_enc_init_sloc2_1_0 + 2),r7
	mov	dpl,_enc_init_sloc2_1_0
	mov	dph,(_enc_init_sloc2_1_0 + 1)
	mov	b,(_enc_init_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:311: enc_control_write(3, ENC_MAADR3, mac[2]); // MAADR3
	mov	a,#0x02
	add	a, r5
	mov	_enc_init_sloc3_1_0,a
	clr	a
	addc	a, r6
	mov	(_enc_init_sloc3_1_0 + 1),a
	mov	(_enc_init_sloc3_1_0 + 2),r7
	mov	dpl,_enc_init_sloc3_1_0
	mov	dph,(_enc_init_sloc3_1_0 + 1)
	mov	b,(_enc_init_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	_enc_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:312: enc_control_write(3, ENC_MAADR2, mac[1]); // MAADR2
	mov	a,#0x01
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_enc_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:313: enc_control_write(3, ENC_MAADR1, mac[0]); // MAADR1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_enc_control_write
;	enc.c:314: enc_phy_write(PHCON1, 0x0100);
	mov	dptr,#_enc_phy_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_enc_phy_write
;	enc.c:315: enc_phy_write(PHCON2, 0x0100);
	mov	dptr,#_enc_phy_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, #0x10
	lcall	_enc_phy_write
;	enc.c:318: enc_control_write(0, ENC_EIE, 0XC0); // reception enable bit
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:319: enc_control_write(0, ENC_ECON1, 0X04); // reception enable bit
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	enc.c:320: uint8_t rev = enc_eth_read(ENC_EREVID,3);
	mov	dptr,#_enc_eth_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x12
	lcall	_enc_eth_read
;	enc.c:325: printf("\nENC28J60 Initialization Complete.\n");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	enc.c:327: mac[2], mac[3], mac[4], mac[5]);
	mov	dpl,_enc_init_sloc0_1_0
	mov	dph,(_enc_init_sloc0_1_0 + 1)
	mov	b,(_enc_init_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	mov	_enc_init_sloc0_1_0,r1
	mov	(_enc_init_sloc0_1_0 + 1),#0x00
	mov	dpl,_enc_init_sloc1_1_0
	mov	dph,(_enc_init_sloc1_1_0 + 1)
	mov	b,(_enc_init_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	mov	_enc_init_sloc1_1_0,r1
	mov	(_enc_init_sloc1_1_0 + 1),#0x00
	mov	dpl,_enc_init_sloc2_1_0
	mov	dph,(_enc_init_sloc2_1_0 + 1)
	mov	b,(_enc_init_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	mov	_enc_init_sloc2_1_0,r1
	mov	(_enc_init_sloc2_1_0 + 1),#0x00
	mov	dpl,_enc_init_sloc3_1_0
	mov	dph,(_enc_init_sloc3_1_0 + 1)
	mov	b,(_enc_init_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
;	enc.c:326: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	_enc_init_sloc0_1_0
	push	(_enc_init_sloc0_1_0 + 1)
	push	_enc_init_sloc1_1_0
	push	(_enc_init_sloc1_1_0 + 1)
	push	_enc_init_sloc2_1_0
	push	(_enc_init_sloc2_1_0 + 1)
	push	ar0
	push	ar1
	push	ar2
	push	ar4
	push	ar5
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
;	enc.c:328: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_bit_set'
;------------------------------------------------------------
;mask                      Allocated with name '_enc_bit_set_PARM_2'
;addr                      Allocated with name '_enc_bit_set_addr_10000_139'
;opcode                    Allocated with name '_enc_bit_set_opcode_10000_140'
;------------------------------------------------------------
;	enc.c:330: void enc_bit_set(uint8_t addr, uint8_t mask) {
;	-----------------------------------------
;	 function enc_bit_set
;	-----------------------------------------
_enc_bit_set:
	mov	a,dpl
	mov	dptr,#_enc_bit_set_addr_10000_139
	movx	@dptr,a
;	enc.c:331: uint8_t opcode = BIT_FIELD_SET_OPCODE | addr; // BFS opcode
	movx	a,@dptr
	orl	a,#0x80
	mov	r7,a
;	enc.c:332: CS_LOW;   // Pull CS Low
;	assignBit
	clr	_P1_1
;	enc.c:333: SPI_WriteByte(opcode);
	mov	dpl, r7
	lcall	_SPI_WriteByte
;	enc.c:334: SPI_WriteByte(mask);          // Set the specified bits
	mov	dptr,#_enc_bit_set_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_WriteByte
;	enc.c:335: CS_HIGH;    // Pull CS High
;	assignBit
	setb	_P1_1
;	enc.c:336: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_bit_clear'
;------------------------------------------------------------
;mask                      Allocated with name '_enc_bit_clear_PARM_2'
;addr                      Allocated with name '_enc_bit_clear_addr_10000_141'
;opcode                    Allocated with name '_enc_bit_clear_opcode_10000_142'
;------------------------------------------------------------
;	enc.c:338: void enc_bit_clear(uint8_t addr, uint8_t mask) {
;	-----------------------------------------
;	 function enc_bit_clear
;	-----------------------------------------
_enc_bit_clear:
	mov	a,dpl
	mov	dptr,#_enc_bit_clear_addr_10000_141
	movx	@dptr,a
;	enc.c:339: uint8_t opcode = BIT_FIELD_CLEAR_OPCODE | addr; // BFC opcode
	movx	a,@dptr
	orl	a,#0xa0
	mov	r7,a
;	enc.c:340: CS_LOW;  // Pull CS Low
;	assignBit
	clr	_P1_1
;	enc.c:341: SPI_WriteByte(opcode);
	mov	dpl, r7
	lcall	_SPI_WriteByte
;	enc.c:342: SPI_WriteByte(mask);          // Clear the specified bits
	mov	dptr,#_enc_bit_clear_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_WriteByte
;	enc.c:343: CS_HIGH;    // Pull CS High
;	assignBit
	setb	_P1_1
;	enc.c:344: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "wrong bank"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid number of bytes: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid address: %04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.ascii "Invalid TX Address: Start 0x%04X, Size %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.ascii "Invalid address: MAC register address range [0, 0x1F]"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Read: Address 0x%02X, Data 0x%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.ascii "ENC28J60 Initialization Complete."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
