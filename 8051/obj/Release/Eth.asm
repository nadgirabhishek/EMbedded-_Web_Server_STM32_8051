;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module Eth
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _external_interrupt0_isr
	.globl _enc28j60_transmission_successful
	.globl _enc28j60_start_transmission
	.globl _delay_ms
	.globl _spi_control_write
	.globl _eth_spi_read
	.globl _phy_spi_write
	.globl _spi_buffer_write
	.globl _mac_spi_read
	.globl _enc_reset
	.globl _printf
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
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
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
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
	.globl _enc_buffer_init_PARM_2
	.globl _enc28j60_set_transmit_pointers_PARM_2
	.globl _enc28j60_set_transmit_pointers
	.globl _wait_for_transmission_complete
	.globl _send_arp_request
	.globl _enc_buffer_init
	.globl _enc_init
	.globl _ENC_pkt_count
	.globl _update_ERXRDPT
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_enc28j60_transmission_successful_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_delay_ms_ms_10000_124:
	.ds 2
_delay_ms_i_20000_126:
	.ds 4
_enc28j60_set_transmit_pointers_PARM_2:
	.ds 2
_enc28j60_set_transmit_pointers_start_address_10000_130:
	.ds 2
_wait_for_transmission_complete_timeout_ms_10000_132:
	.ds 2
_send_arp_request_source_mac_10000_138:
	.ds 6
_send_arp_request_dest_mac_10000_138:
	.ds 6
_send_arp_request_source_ip_10000_138:
	.ds 4
_send_arp_request_target_ip_10000_138:
	.ds 4
_send_arp_request_arp_packet_10000_138:
	.ds 43
_external_interrupt0_isr_i_10000_157:
	.ds 2
_enc_buffer_init_PARM_2:
	.ds 2
_enc_buffer_init_start_address_10000_159:
	.ds 2
_enc_init_mac_10000_162:
	.ds 3
_update_ERXRDPT_new_address_10000_169:
	.ds 2
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
;------------------------------------------------------------
;Allocation info for local variables in function 'external_interrupt0_isr'
;------------------------------------------------------------
;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
;------------------------------------------------------------
;	Eth.c:200: static int i = 0;
	mov	dptr,#_external_interrupt0_isr_i_10000_157
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_10000_124'
;i                         Allocated with name '_delay_ms_i_20000_126'
;------------------------------------------------------------
;	Eth.c:48: void delay_ms(uint16_t ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_ms_10000_124
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
	mov	dptr,#_delay_ms_i_20000_126
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_delay_ms_ms_10000_124
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	dptr,#_delay_ms_i_20000_126
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar6
	push	ar7
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	pop	ar7
	pop	ar6
	jnc	00105$
	mov	dptr,#_delay_ms_i_20000_126
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_delay_ms_i_20000_126
	mov	a,#0x01
	add	a, r2
	movx	@dptr,a
	clr	a
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r5
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00105$:
;	Eth.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_start_transmission'
;------------------------------------------------------------
;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_129'
;------------------------------------------------------------
;	Eth.c:56: void enc28j60_start_transmission(void)
;	-----------------------------------------
;	 function enc28j60_start_transmission
;	-----------------------------------------
_enc28j60_start_transmission:
;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	lcall	_mac_spi_read
	mov	a, dpl
;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
	orl	a,#0x08
	mov	r7,a
;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:61: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
;------------------------------------------------------------
;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_130'
;------------------------------------------------------------
;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
;	-----------------------------------------
;	 function enc28j60_set_transmit_pointers
;	-----------------------------------------
_enc28j60_set_transmit_pointers:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_spi_control_write
	pop	ar6
	pop	ar7
;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
	mov	ar6,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_spi_control_write
	pop	ar6
	pop	ar7
;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
	mov	ar6,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:73: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'wait_for_transmission_complete'
;------------------------------------------------------------
;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_132'
;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_133'
;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_134'
;------------------------------------------------------------
;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
;	-----------------------------------------
;	 function wait_for_transmission_complete
;	-----------------------------------------
_wait_for_transmission_complete:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:79: while (elapsed < timeout_ms) {
	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mac_spi_read
	mov	a, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
	jb	acc.3,00102$
;	Eth.c:82: return true;  // Transmission completed
	mov	dpl, #0x01
	ret
00102$:
;	Eth.c:85: delay_ms(1);  // Wait 1 ms
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:86: elapsed++;
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	Eth.c:89: return false;  // Timed out
	mov	dpl, #0x00
;	Eth.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_transmission_successful'
;------------------------------------------------------------
;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_136'
;------------------------------------------------------------
;	Eth.c:92: bool enc28j60_transmission_successful()
;	-----------------------------------------
;	 function enc28j60_transmission_successful
;	-----------------------------------------
_enc28j60_transmission_successful:
;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1d
	lcall	_mac_spi_read
;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
	mov	a,dpl
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	mov  _enc28j60_transmission_successful_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl, a
;	Eth.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_arp_request'
;------------------------------------------------------------
;source_mac                Allocated with name '_send_arp_request_source_mac_10000_138'
;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_138'
;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_138'
;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_138'
;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_138'
;i                         Allocated with name '_send_arp_request_i_20000_139'
;i                         Allocated with name '_send_arp_request_i_20000_141'
;i                         Allocated with name '_send_arp_request_i_20000_143'
;i                         Allocated with name '_send_arp_request_i_20000_145'
;i                         Allocated with name '_send_arp_request_i_20000_147'
;frame_size                Allocated with name '_send_arp_request_frame_size_10001_149'
;start_address             Allocated with name '_send_arp_request_start_address_10001_149'
;end_address               Allocated with name '_send_arp_request_end_address_10002_151'
;------------------------------------------------------------
;	Eth.c:98: void send_arp_request(void)
;	-----------------------------------------
;	 function send_arp_request
;	-----------------------------------------
_send_arp_request:
;	Eth.c:102: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
	mov	dptr,#_send_arp_request_source_mac_10000_138
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0003)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0004)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0005)
	mov	a,#0x55
	movx	@dptr,a
;	Eth.c:103: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
	mov	dptr,#_send_arp_request_dest_mac_10000_138
	mov	a,#0xf8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0001)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0002)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0003)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0004)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0005)
	mov	a,#0x31
	movx	@dptr,a
;	Eth.c:104: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
	mov	dptr,#_send_arp_request_source_ip_10000_138
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	Eth.c:105: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
	mov	dptr,#_send_arp_request_target_ip_10000_138
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0003)
	movx	@dptr,a
;	Eth.c:109: arp_packet[0] = 0x0E;
	mov	dptr,#_send_arp_request_arp_packet_10000_138
	mov	a,#0x0e
	movx	@dptr,a
;	Eth.c:117: for (int i = 0; i < 6; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	Eth.c:119: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
	mov	ar5,r6
	mov	a,r5
	inc	a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	r4,a
	mov	a,r3
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	r3,a
	mov	a,r6
	add	a, #_send_arp_request_dest_mac_10000_138
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_dest_mac_10000_138 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
;	Eth.c:120: arp_packet[i + 7] = source_mac[i];  // Source MAC address
	mov	a,#0x07
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_mac_10000_138
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:117: for (int i = 0; i < 6; i++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
	sjmp	00115$
00101$:
;	Eth.c:124: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000d)
	mov	a,#0x08
	movx	@dptr,a
;	Eth.c:125: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000e)
	mov	a,#0x06
	movx	@dptr,a
;	Eth.c:129: arp_packet[15] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000f)
	clr	a
	movx	@dptr,a
;	Eth.c:130: arp_packet[16] = 0x01;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0010)
	inc	a
	movx	@dptr,a
;	Eth.c:133: arp_packet[17] = 0x08;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0011)
	mov	a,#0x08
	movx	@dptr,a
;	Eth.c:134: arp_packet[18] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0012)
	clr	a
	movx	@dptr,a
;	Eth.c:137: arp_packet[19] = 0x06;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0013)
	mov	a,#0x06
	movx	@dptr,a
;	Eth.c:140: arp_packet[20] = 0x04;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0014)
	mov	a,#0x04
	movx	@dptr,a
;	Eth.c:143: arp_packet[21] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0015)
	clr	a
	movx	@dptr,a
;	Eth.c:144: arp_packet[22] = 0x01;
	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0016)
	inc	a
	movx	@dptr,a
;	Eth.c:147: for (int i = 0; i < 6; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	Eth.c:148: arp_packet[23 + i] = source_mac[i];
	mov	ar5,r6
	mov	a,#0x17
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_mac_10000_138
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:147: for (int i = 0; i < 6; i++) {
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
	sjmp	00118$
00102$:
;	Eth.c:152: for (int i = 0; i < 4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00121$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	Eth.c:153: arp_packet[29 + i] = source_ip[i];
	mov	ar5,r6
	mov	a,#0x1d
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_ip_10000_138
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_ip_10000_138 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:152: for (int i = 0; i < 4; i++) {
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
	sjmp	00121$
00103$:
;	Eth.c:157: for (int i = 0; i < 6; i++) {
	mov	r7,#0x00
00124$:
	cjne	r7,#0x06,00215$
00215$:
	jnc	00104$
;	Eth.c:158: arp_packet[33 + i] = 0x00;
	mov	ar6,r7
	mov	a,#0x21
	add	a, r6
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	dpl,a
	mov	a,r5
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	Eth.c:157: for (int i = 0; i < 6; i++) {
	inc	r7
	sjmp	00124$
00104$:
;	Eth.c:162: for (int i = 0; i < 4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	Eth.c:163: arp_packet[39 + i] = target_ip[i];
	mov	ar5,r6
	mov	a,#0x27
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_138
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_target_ip_10000_138
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_target_ip_10000_138 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:162: for (int i = 0; i < 4; i++) {
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
	sjmp	00127$
00105$:
;	Eth.c:176: spi_buffer_write(frame_size, start_address, arp_packet);
	mov	dptr,#_spi_buffer_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x1c
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_write_PARM_3
	mov	a,#_send_arp_request_arp_packet_10000_138
	movx	@dptr,a
	mov	a,#(_send_arp_request_arp_packet_10000_138 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x002c
	lcall	_spi_buffer_write
;	Eth.c:179: enc28j60_set_transmit_pointers(start_address, end_address);
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	mov	a,#0x2b
	movx	@dptr,a
	mov	a,#0x1c
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x1c00
	lcall	_enc28j60_set_transmit_pointers
;	Eth.c:183: enc28j60_start_transmission();
	lcall	_enc28j60_start_transmission
;	Eth.c:186: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
	mov	dptr,#0x01f4
	lcall	_wait_for_transmission_complete
	mov	a, dpl
	jz	00112$
;	Eth.c:188: if (enc28j60_transmission_successful()) {
	lcall	_enc28j60_transmission_successful
	mov	a, dpl
	jz	00109$
;	Eth.c:189: printf("ARP request sent successfully.\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00109$:
;	Eth.c:191: printf("ARP transmission failed. Check error flags.\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00112$:
;	Eth.c:194: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	Eth.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external_interrupt0_isr'
;------------------------------------------------------------
;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
;------------------------------------------------------------
;	Eth.c:198: void external_interrupt0_isr(void) __interrupt (0)
;	-----------------------------------------
;	 function external_interrupt0_isr
;	-----------------------------------------
_external_interrupt0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	Eth.c:202: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	Eth.c:217: i++;
	mov	dptr,#_external_interrupt0_isr_i_10000_157
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a, #0x00
	movx	@dptr,a
;	Eth.c:218: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_buffer_init'
;------------------------------------------------------------
;end_address               Allocated with name '_enc_buffer_init_PARM_2'
;start_address             Allocated with name '_enc_buffer_init_start_address_10000_159'
;------------------------------------------------------------
;	Eth.c:221: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
;	-----------------------------------------
;	 function enc_buffer_init
;	-----------------------------------------
_enc_buffer_init:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc_buffer_init_start_address_10000_159
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:223: if (start_address > 0x1FFF || end_address > 0x1FFF) {
	mov	dptr,#_enc_buffer_init_start_address_10000_159
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
;	Eth.c:224: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
	mov	dptr,#_enc_buffer_init_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_enc_buffer_init_start_address_10000_159
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
;	Eth.c:226: return;
	ret
00102$:
;	Eth.c:229: start_address &= ~1;  // Align to even address
	anl	ar6,#0xfe
	mov	dptr,#_enc_buffer_init_start_address_10000_159
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:231: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
	mov	dptr,#_enc_buffer_init_start_address_10000_159
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar3,r6
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spi_control_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:232: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
	mov	ar2,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:233: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:234: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:235: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
	mov	ar1,r4
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:236: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
	mov	ar1,r5
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:237: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:238: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:239: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
;	Eth.c:241: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
;mac                       Allocated with name '_enc_init_mac_10000_162'
;rx_start                  Allocated with name '_enc_init_rx_start_10001_164'
;rx_end                    Allocated with name '_enc_init_rx_end_10001_164'
;tx_start                  Allocated with name '_enc_init_tx_start_10001_164'
;tx_end                    Allocated with name '_enc_init_tx_end_10001_164'
;read_macon1               Allocated with name '_enc_init_read_macon1_10002_165'
;rev                       Allocated with name '_enc_init_rev_10003_166'
;------------------------------------------------------------
;	Eth.c:243: void enc_init(const uint8_t *mac)
;	-----------------------------------------
;	 function enc_init
;	-----------------------------------------
_enc_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_enc_init_mac_10000_162
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:246: enc_reset();
	lcall	_enc_reset
;	Eth.c:249: while (!(mac_spi_read(0x1D, 0) & 0x01))
00101$:
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1d
	lcall	_mac_spi_read
	mov	a, dpl
	jnb	acc.0,00101$
;	Eth.c:259: enc_buffer_init(rx_start, rx_end);
	mov	dptr,#_enc_buffer_init_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	mov	a,#0x1b
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_buffer_init
;	Eth.c:261: spi_control_write(0, 0x04, (uint8_t) (tx_start & 0xFF)); // Low byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:262: spi_control_write(0, 0x05, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x1c
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:265: spi_control_write(0, 0x06, (uint8_t) (tx_end & 0xFF)); // Low byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:266: spi_control_write(0, 0x07, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x1f
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:268: spi_control_write(1, 0x18, 0xB1);// crcen,ucen,pcen,bcen
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xb1
	movx	@dptr,a
	mov	dpl, #0x01
	lcall	_spi_control_write
;	Eth.c:269: spi_control_write(1, 0x08, 0x3F); //pattern match
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x3f
	movx	@dptr,a
	mov	dpl, #0x01
	lcall	_spi_control_write
;	Eth.c:270: spi_control_write(1, 0x09, 0x30); //pattern match
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x30
	movx	@dptr,a
	mov	dpl, #0x01
	lcall	_spi_control_write
;	Eth.c:271: spi_control_write(1, 0x10, 0xF9); //pattern match
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xf9
	movx	@dptr,a
	mov	dpl, #0x01
	lcall	_spi_control_write
;	Eth.c:272: spi_control_write(1, 0x11, 0xF7); //pattern match
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xf7
	movx	@dptr,a
	mov	dpl, #0x01
	lcall	_spi_control_write
;	Eth.c:274: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_mac_spi_read
	mov	a, dpl
;	Eth.c:275: spi_control_write   (2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
	orl	a,#0x01
	mov	r7,a
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:277: spi_control_write(2, 0x02, 0x32); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x32
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:281: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x12
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:282: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x0c
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:284: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x12
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:286: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:289: spi_control_write(2, 0x0A, 0xDC); // MAMXFLL
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xdc
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:290: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl, #0x02
	lcall	_spi_control_write
;	Eth.c:293: spi_control_write(3, 0x01, mac[5]); // MAADR6
	mov	dptr,#_enc_init_mac_10000_162
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
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:294: spi_control_write(3, 0x00, mac[4]); // MAADR5
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
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:295: spi_control_write(3, 0x03, mac[3]); // MAADR4
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
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:296: spi_control_write(3, 0x02, mac[2]); // MAADR3
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
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:297: spi_control_write(3, 0x05, mac[1]); // MAADR2
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
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:298: spi_control_write(3, 0x04, mac[0]); // MAADR1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl, #0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:299: phy_spi_write(0x10, 0x0100);
	mov	dptr,#_phy_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, #0x10
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_phy_spi_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:302: spi_control_write(0, 0X1B, 0XC0); // reception enable bit
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xc0
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:303: spi_control_write(0, 0X1F, 0X04); // reception enable bit
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_control_write
;	Eth.c:305: printf("\nENC28J60 Initialization Complete.\n");
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:307: mac[2], mac[3], mac[4], mac[5]);
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
;	Eth.c:306: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
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
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
;	Eth.c:308: uint8_t rev = eth_spi_read(0x12,3);
	mov	dptr,#_eth_spi_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x12
;	Eth.c:310: if (rev > 5) ++rev;
;	Eth.c:358: }
	ljmp	_eth_spi_read
;------------------------------------------------------------
;Allocation info for local variables in function 'ENC_pkt_count'
;------------------------------------------------------------
;count                     Allocated with name '_ENC_pkt_count_count_10000_168'
;------------------------------------------------------------
;	Eth.c:360: uint8_t ENC_pkt_count(void)
;	-----------------------------------------
;	 function ENC_pkt_count
;	-----------------------------------------
_ENC_pkt_count:
;	Eth.c:362: uint8_t count = mac_spi_read(0x19, 1);
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl, #0x19
;	Eth.c:363: return count;
;	Eth.c:364: }
	ljmp	_mac_spi_read
;------------------------------------------------------------
;Allocation info for local variables in function 'update_ERXRDPT'
;------------------------------------------------------------
;new_address               Allocated with name '_update_ERXRDPT_new_address_10000_169'
;high_byte                 Allocated with name '_update_ERXRDPT_high_byte_10000_170'
;low_byte                  Allocated with name '_update_ERXRDPT_low_byte_10000_170'
;------------------------------------------------------------
;	Eth.c:366: void update_ERXRDPT(uint16_t new_address) {
;	-----------------------------------------
;	 function update_ERXRDPT
;	-----------------------------------------
_update_ERXRDPT:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_update_ERXRDPT_new_address_10000_169
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:368: uint8_t high_byte = (uint8_t)((new_address >> 8) & 0xFF);
	mov	dptr,#_update_ERXRDPT_new_address_10000_169
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
;	Eth.c:369: uint8_t low_byte = (uint8_t)(new_address & 0xFF);
	mov	ar4,r6
;	Eth.c:372: spi_control_write(0, 0x0C, low_byte);  // Write to low-byte register
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:373: spi_control_write(0, 0x0D, high_byte); // Write to high-byte register
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_spi_control_write
	pop	ar6
	pop	ar7
;	Eth.c:376: printf("Updated ERXRDPT to 0x%04X\n", new_address);
	push	ar6
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	Eth.c:377: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "ARP request sent successfully."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "ARP transmission failed. Check error flags."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
	.ascii "tly."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.ascii "ENC28J60 Initialization Complete."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Updated ERXRDPT to 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
