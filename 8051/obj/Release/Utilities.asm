;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module Utilities
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_tiny
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
	.globl _putchar
	.globl _getchar
	.globl _putstr
	.globl _hex_to_int
	.globl _get_user_buffer_size
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_hex_to_int_sloc0_1_0:
	.ds 3
_hex_to_int_sloc1_1_0:
	.ds 1
_hex_to_int_sloc2_1_0:
	.ds 2
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
_putchar_c_10000_82:
	.ds 2
_putstr_s_10000_86:
	.ds 3
_hex_to_int_str_10000_89:
	.ds 3
_hex_to_int_result_10000_90:
	.ds 2
_hex_to_int_ASCII_20000_91:
	.ds 2
_get_user_buffer_size_input_10000_96:
	.ds 10
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_10000_82'
;------------------------------------------------------------
;	Utilities.c:18: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
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
	mov	dptr,#_putchar_c_10000_82
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Utilities.c:21: while (!TI);
00101$:
	jnb	_TI,00101$
;	Utilities.c:23: SBUF = c;           // load serial port with transmit value
	mov	dptr,#_putchar_c_10000_82
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	Utilities.c:24: TI = 0;             // clear TI flag
;	assignBit
	clr	_TI
;	Utilities.c:26: return c;
	mov	dpl, r6
	mov	dph, r7
;	Utilities.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	Utilities.c:30: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	Utilities.c:33: while (!RI);
00101$:
;	Utilities.c:35: RI = 0;                         // clear RI flag
;	assignBit
	jbc	_RI,00118$
	sjmp	00101$
00118$:
;	Utilities.c:36: return SBUF;                    // return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r7
;	Utilities.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putstr'
;------------------------------------------------------------
;s                         Allocated with name '_putstr_s_10000_86'
;i                         Allocated with name '_putstr_i_10000_87'
;------------------------------------------------------------
;	Utilities.c:39: int putstr (char *s)
;	-----------------------------------------
;	 function putstr
;	-----------------------------------------
_putstr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_putstr_s_10000_86
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Utilities.c:42: while (*s){            // output characters until NULL found
	mov	dptr,#_putstr_s_10000_86
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	jz	00108$
;	Utilities.c:43: putchar(*s++);
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	mov	dptr,#_putstr_s_10000_86
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar1,r2
	mov	r2,#0x00
	mov	dpl, r1
	mov	dph, r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Utilities.c:44: i++;
	inc	r3
	cjne	r3,#0x00,00101$
	inc	r4
	sjmp	00101$
00108$:
	mov	dptr,#_putstr_s_10000_86
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Utilities.c:46: return i+1;
	inc	r3
	cjne	r3,#0x00,00122$
	inc	r4
00122$:
	mov	dpl, r3
	mov	dph, r4
;	Utilities.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_to_int'
;------------------------------------------------------------
;str                       Allocated with name '_hex_to_int_str_10000_89'
;i                         Allocated with name '_hex_to_int_i_10000_90'
;result                    Allocated with name '_hex_to_int_result_10000_90'
;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_91'
;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
;------------------------------------------------------------
;	Utilities.c:49: int hex_to_int(char* str)
;	-----------------------------------------
;	 function hex_to_int
;	-----------------------------------------
_hex_to_int:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_hex_to_int_str_10000_89
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Utilities.c:52: int i = 0, result = 0;
	mov	dptr,#_hex_to_int_result_10000_90
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	Utilities.c:53: while(str[i] != '\0')
	mov	dptr,#_hex_to_int_str_10000_89
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	_hex_to_int_sloc0_1_0,r5
	mov	(_hex_to_int_sloc0_1_0 + 1),r6
	mov	(_hex_to_int_sloc0_1_0 + 2),r7
	mov	r0,#0x00
	mov	r1,#0x00
00112$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a, _hex_to_int_sloc0_1_0
	mov	r2,a
	mov	a,r1
	addc	a, (_hex_to_int_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_hex_to_int_sloc1_1_0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_hex_to_int_sloc1_1_0
	jnz	00166$
	ljmp	00114$
00166$:
;	Utilities.c:55: int ASCII = (int)str[i];
	push	ar2
	push	ar3
	push	ar4
	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
	mov	dptr,#_hex_to_int_ASCII_20000_91
	mov	a,_hex_to_int_sloc2_1_0
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	Utilities.c:56: result *= 16;
	mov	dptr,#_hex_to_int_result_10000_90
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_90
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	Utilities.c:57: if(ASCII >= '0' && ASCII <= '9')
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x30
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00109$
	mov	a,#0x39
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	Utilities.c:59: result += str[i] - 48;
	push	ar2
	push	ar3
	push	ar4
	mov	a,_hex_to_int_sloc2_1_0
	add	a,#0xd0
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_90
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_90
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r2
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r4
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00109$:
;	Utilities.c:61: else if(ASCII >= 'A' && ASCII <= 'F')
	mov	dptr,#_hex_to_int_ASCII_20000_91
	movx	a,@dptr
	mov	_hex_to_int_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x41
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	a,#0x46
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	Utilities.c:63: result += str[i] - 55;
	push	ar5
	push	ar6
	push	ar7
	mov	a,r0
	add	a, r2
	mov	r5,a
	mov	a,r1
	addc	a, r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,#0xc9
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hex_to_int_result_10000_90
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r6
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r7
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00110$
00105$:
;	Utilities.c:65: else if(ASCII >= 'a' && ASCII <= 'f')
	mov	dptr,#_hex_to_int_ASCII_20000_91
	movx	a,@dptr
	mov	_hex_to_int_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x61
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
	mov	a,#0x66
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	Utilities.c:67: result += str[i] - 87;
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a, r5
	mov	r2,a
	mov	a,r1
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	add	a,#0xa9
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,r4
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_90
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_90
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r3
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r4
	inc	dptr
	movx	@dptr,a
;	Utilities.c:71: return result;
	pop	ar4
	pop	ar3
	pop	ar2
;	Utilities.c:67: result += str[i] - 87;
00110$:
;	Utilities.c:69: i++;
	inc	r0
	cjne	r0,#0x00,00173$
	inc	r1
00173$:
	ljmp	00112$
00114$:
;	Utilities.c:71: return result;
	mov	dptr,#_hex_to_int_result_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	Utilities.c:73: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_user_buffer_size'
;------------------------------------------------------------
;i                         Allocated with name '_get_user_buffer_size_i_10000_96'
;output                    Allocated with name '_get_user_buffer_size_output_10000_96'
;input                     Allocated with name '_get_user_buffer_size_input_10000_96'
;ch                        Allocated with name '_get_user_buffer_size_ch_10000_96'
;------------------------------------------------------------
;	Utilities.c:76: int get_user_buffer_size(void)
;	-----------------------------------------
;	 function get_user_buffer_size
;	-----------------------------------------
_get_user_buffer_size:
;	Utilities.c:82: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4, dpl
	pop	ar6
	pop	ar7
	cjne	r4,#0x0a,00133$
	sjmp	00105$
00133$:
	cjne	r4,#0x0d,00134$
	sjmp	00105$
00134$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	Utilities.c:84: putchar(ch);
	mov	ar3,r4
	mov	r5,#0x00
	mov	dpl, r3
	mov	dph, r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
;	Utilities.c:85: input[i] = ch;      //Append the input array with the received character
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_96
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_96 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	Utilities.c:86: i++;
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	Utilities.c:88: input[i] = '\0';
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_96
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_96 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	Utilities.c:89: output = hex_to_int(input); //Convert the char hex data to int
	mov	dptr,#_get_user_buffer_size_input_10000_96
	mov	b,a
	lcall	_hex_to_int
	mov	r6, dpl
	mov	r7, dph
;	Utilities.c:90: printf_tiny("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	Utilities.c:92: return output;
	mov	dpl, r6
	mov	dph, r7
;	Utilities.c:93: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
