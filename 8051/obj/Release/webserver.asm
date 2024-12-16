;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module webserver
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _makeTcpAck2
	.globl _makeTcpAck3
	.globl _makeTcpFinPshAck
	.globl _calculateTcpChecksum
	.globl _calculateIPChecksum
	.globl ___memcpy
	.globl _strlen
	.globl _memset
	.globl _memmove
	.globl _printf
	.globl _transmit_tcp_packet
	.globl _enc_eth_read
	.globl _enc_buffer_read
	.globl _enc_control_write
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
	.globl _connectionState
	.globl _prevAck
	.globl _prevSeq
	.globl _buffer
	.globl _packetReceive
	.globl _makeArpReply
	.globl _makeTcpSynAck
	.globl _makeHttpResponse
	.globl _makeTcpAck
	.globl _trial_arp_request
	.globl _packetLoop
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
_makeTcpAck3_sloc0_1_0:
	.ds 4
_makeTcpAck2_sloc0_1_0:
	.ds 2
_makeTcpAck2_sloc1_1_0:
	.ds 4
_makeTcpAck2_sloc2_1_0:
	.ds 4
_makeTcpSynAck_sloc0_1_0:
	.ds 4
_makeHttpResponse_sloc0_1_0:
	.ds 2
_makeHttpResponse_sloc1_1_0:
	.ds 4
_makeHttpResponse_sloc2_1_0:
	.ds 4
_makeHttpResponse_sloc3_1_0:
	.ds 4
_makeHttpResponse_sloc4_1_0:
	.ds 4
_makeHttpResponse_sloc5_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculateIPChecksum_sloc0_1_0:
	.ds 2
_calculateIPChecksum_sloc1_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_calculateTcpChecksum_sloc0_1_0:
	.ds 1
_calculateTcpChecksum_sloc1_1_0:
	.ds 3
_calculateTcpChecksum_sloc2_1_0:
	.ds 4
_calculateTcpChecksum_sloc3_1_0:
	.ds 4
_calculateTcpChecksum_sloc4_1_0:
	.ds 4
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
_buffer::
	.ds 1500
_prevSeq::
	.ds 4
_prevAck::
	.ds 4
_packetReceive_device_mac_10000_90:
	.ds 6
_packetReceive_target_mac_10000_90:
	.ds 6
_packetReceive_device_ip_10000_90:
	.ds 4
_packetReceive_target_ip_10000_90:
	.ds 4
_packetReceive_gNextPacketPtr_10000_90:
	.ds 2
_packetReceive_unreleasedPacket_10000_90:
	.ds 1
_packetReceive_len_10000_90:
	.ds 2
_packetReceive_header_20002_96:
	.ds 6
_packetReceive_start_20003_97:
	.ds 2
_makeArpReply_device_mac_10000_100:
	.ds 6
_makeArpReply_target_mac_10000_100:
	.ds 6
_makeArpReply_device_ip_10000_100:
	.ds 4
_makeArpReply_target_ip_10000_100:
	.ds 4
_calculateIPChecksum_buffer_10000_101:
	.ds 3
_calculateIPChecksum_sum_10001_103:
	.ds 4
_calculateIPChecksum_i_20001_104:
	.ds 2
_calculateTcpChecksum_buffer_10000_108:
	.ds 3
_calculateTcpChecksum_sum_10001_110:
	.ds 4
_calculateTcpChecksum_i_20001_115:
	.ds 2
_makeTcpFinPshAck_device_mac_10000_120:
	.ds 6
_makeTcpFinPshAck_target_mac_10000_120:
	.ds 6
_makeTcpFinPshAck_device_ip_10000_120:
	.ds 4
_makeTcpFinPshAck_target_ip_10000_120:
	.ds 4
_makeTcpFinPshAck_serverSeqNum_10002_122:
	.ds 4
_makeTcpFinPshAck_ackNum_10002_122:
	.ds 4
_makeTcpAck3_device_mac_10000_125:
	.ds 6
_makeTcpAck3_target_mac_10000_125:
	.ds 6
_makeTcpAck3_device_ip_10000_125:
	.ds 4
_makeTcpAck3_target_ip_10000_125:
	.ds 4
_makeTcpAck2_device_mac_10000_130:
	.ds 6
_makeTcpAck2_target_mac_10000_130:
	.ds 6
_makeTcpAck2_device_ip_10000_130:
	.ds 4
_makeTcpAck2_target_ip_10000_130:
	.ds 4
_makeTcpSynAck_device_mac_10000_135:
	.ds 6
_makeTcpSynAck_target_mac_10000_135:
	.ds 6
_makeTcpSynAck_device_ip_10000_135:
	.ds 4
_makeTcpSynAck_target_ip_10000_135:
	.ds 4
_makeHttpResponse_device_mac_10000_140:
	.ds 6
_makeHttpResponse_target_mac_10000_140:
	.ds 6
_makeHttpResponse_device_ip_10000_140:
	.ds 4
_makeHttpResponse_target_ip_10000_140:
	.ds 4
_makeTcpAck_device_mac_10000_146:
	.ds 6
_makeTcpAck_target_mac_10000_146:
	.ds 6
_makeTcpAck_device_ip_10000_146:
	.ds 4
_makeTcpAck_target_ip_10000_146:
	.ds 4
_trial_arp_request_device_mac_10000_148:
	.ds 6
_trial_arp_request_target_mac_10000_148:
	.ds 6
_trial_arp_request_device_ip_10000_148:
	.ds 4
_trial_arp_request_target_ip_10000_148:
	.ds 4
_trial_arp_request_arp_packet_10001_149:
	.ds 43
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_connectionState::
	.ds 1
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
;Allocation info for local variables in function 'packetReceive'
;------------------------------------------------------------
;device_mac                Allocated with name '_packetReceive_device_mac_10000_90'
;target_mac                Allocated with name '_packetReceive_target_mac_10000_90'
;device_ip                 Allocated with name '_packetReceive_device_ip_10000_90'
;target_ip                 Allocated with name '_packetReceive_target_ip_10000_90'
;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_90'
;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_90'
;len                       Allocated with name '_packetReceive_len_10000_90'
;RX_END                    Allocated with name '_packetReceive_RX_END_30000_92'
;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_94'
;header                    Allocated with name '_packetReceive_header_20002_96'
;start                     Allocated with name '_packetReceive_start_20003_97'
;ECON2                     Allocated with name '_packetReceive_ECON2_20004_98'
;------------------------------------------------------------
;	webserver.c:66: static uint16_t gNextPacketPtr = RX_BUFFER_START;
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	webserver.c:67: static bool unreleasedPacket = false;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
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
;Allocation info for local variables in function 'packetReceive'
;------------------------------------------------------------
;device_mac                Allocated with name '_packetReceive_device_mac_10000_90'
;target_mac                Allocated with name '_packetReceive_target_mac_10000_90'
;device_ip                 Allocated with name '_packetReceive_device_ip_10000_90'
;target_ip                 Allocated with name '_packetReceive_target_ip_10000_90'
;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_90'
;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_90'
;len                       Allocated with name '_packetReceive_len_10000_90'
;RX_END                    Allocated with name '_packetReceive_RX_END_30000_92'
;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_94'
;header                    Allocated with name '_packetReceive_header_20002_96'
;start                     Allocated with name '_packetReceive_start_20003_97'
;ECON2                     Allocated with name '_packetReceive_ECON2_20004_98'
;------------------------------------------------------------
;	webserver.c:60: uint16_t packetReceive(void) 
;	-----------------------------------------
;	 function packetReceive
;	-----------------------------------------
_packetReceive:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	webserver.c:62: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_packetReceive_device_mac_10000_90
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:63: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_packetReceive_target_mac_10000_90
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0005)
	movx	@dptr,a
;	webserver.c:64: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_packetReceive_device_ip_10000_90
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:65: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_packetReceive_target_ip_10000_90
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0003)
	movx	@dptr,a
;	webserver.c:68: uint16_t len = 0;
	mov	dptr,#_packetReceive_len_10000_90
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	webserver.c:71: if (unreleasedPacket) {
	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
	movx	a,@dptr
	jnz	00145$
	ljmp	00105$
00145$:
;	webserver.c:72: if (gNextPacketPtr == 0) {
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	webserver.c:74: enc_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	webserver.c:75: enc_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
	sjmp	00103$
00102$:
;	webserver.c:77: enc_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
	dec	r6
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	webserver.c:79: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00147$
	dec	r7
00147$:
	mov	ar6,r7
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
00103$:
;	webserver.c:81: unreleasedPacket = false;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
	clr	a
	movx	@dptr,a
00105$:
;	webserver.c:84: uint8_t EPKTCNT = enc_eth_read(0x19, 1);
	mov	dptr,#_enc_eth_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl, #0x19
	lcall	_enc_eth_read
	mov	a, dpl
;	webserver.c:85: if (EPKTCNT > 0) {
	jnz	00148$
	ljmp	00112$
00148$:
;	webserver.c:86: enc_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_enc_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	webserver.c:87: enc_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
;	webserver.c:96: enc_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	webserver.c:97: (uint8_t*) &header);
	mov	dptr,#_enc_buffer_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_enc_buffer_read_PARM_3
	mov	a,#_packetReceive_header_20002_96
	movx	@dptr,a
	mov	a,#(_packetReceive_header_20002_96 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	lcall	_enc_buffer_read
;	webserver.c:99: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	mov	dptr,#_packetReceive_start_20003_97
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:100: gNextPacketPtr = header.nextPacket;
	mov	dptr,#_packetReceive_header_20002_96
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:102: len = header.byteCount - 4; // Exclude CRC
	mov	dptr,#(_packetReceive_header_20002_96 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xfc
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_packetReceive_len_10000_90
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:103: if (len > BUFFER_SIZE - 1)
	clr	c
	mov	a,#0xdb
	subb	a,r6
	mov	a,#0x05
	subb	a,r7
	jnc	00107$
;	webserver.c:104: len = BUFFER_SIZE - 1;
	mov	dptr,#_packetReceive_len_10000_90
	mov	a,#0xdb
	movx	@dptr,a
	mov	a,#0x05
	inc	dptr
	movx	@dptr,a
00107$:
;	webserver.c:106: if ((header.status & 0x80) == 0)
	mov	dptr,#(_packetReceive_header_20002_96 + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jb	acc.7,00109$
;	webserver.c:107: len = 0; // Invalid packet
	mov	dptr,#_packetReceive_len_10000_90
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00109$:
;	webserver.c:109: enc_buffer_read(len, start, buffer);
	mov	dptr,#_packetReceive_len_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetReceive_start_20003_97
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_enc_buffer_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_enc_buffer_read_PARM_3
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	lcall	_enc_buffer_read
00110$:
;	webserver.c:111: buffer[len] = 0; // Null-terminate
	mov	dptr,#_packetReceive_len_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a, #_buffer
	mov	dpl,a
	mov	a,r7
	addc	a, #(_buffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	webserver.c:112: unreleasedPacket = true;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
	inc	a
	movx	@dptr,a
;	webserver.c:114: uint8_t ECON2 = enc_eth_read(0x1E, 0);
	mov	dptr,#_enc_eth_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1e
	lcall	_enc_eth_read
	mov	a, dpl
;	webserver.c:115: enc_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
	orl	a,#0x40
	mov	r7,a
	mov	dptr,#_enc_control_write_PARM_2
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#_enc_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc_control_write
00112$:
;	webserver.c:118: return len;
	mov	dptr,#_packetReceive_len_10000_90
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	webserver.c:119: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeArpReply'
;------------------------------------------------------------
;device_mac                Allocated with name '_makeArpReply_device_mac_10000_100'
;target_mac                Allocated with name '_makeArpReply_target_mac_10000_100'
;device_ip                 Allocated with name '_makeArpReply_device_ip_10000_100'
;target_ip                 Allocated with name '_makeArpReply_target_ip_10000_100'
;------------------------------------------------------------
;	webserver.c:130: void makeArpReply(void) 
;	-----------------------------------------
;	 function makeArpReply
;	-----------------------------------------
_makeArpReply:
;	webserver.c:132: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeArpReply_device_mac_10000_100
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:133: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeArpReply_target_mac_10000_100
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0005)
	movx	@dptr,a
;	webserver.c:134: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeArpReply_device_ip_10000_100
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:135: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeArpReply_target_ip_10000_100
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0003)
	movx	@dptr,a
;	webserver.c:136: printf("trialarpreply\n\r");
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
;	webserver.c:138: memmove(&buffer[1], &buffer[0], 42);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x2a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:141: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:144: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:147: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeArpReply_device_mac_10000_100
	movx	@dptr,a
	mov	a,#(_makeArpReply_device_mac_10000_100 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:150: buffer[1 + 21] = 0x02; // ARP Reply opcode
	mov	dptr,#(_buffer + 0x0016)
	mov	a,#0x02
	movx	@dptr,a
;	webserver.c:153: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0017)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0017) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0021)
	mov	b,a
	lcall	___memcpy
;	webserver.c:154: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001d)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0027)
	mov	b,a
	lcall	___memcpy
;	webserver.c:157: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeArpReply_device_mac_10000_100
	movx	@dptr,a
	mov	a,#(_makeArpReply_device_mac_10000_100 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0017)
	mov	b,a
	lcall	___memcpy
;	webserver.c:158: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeArpReply_device_ip_10000_100
	movx	@dptr,a
	mov	a,#(_makeArpReply_device_ip_10000_100 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001d)
	mov	b,a
	lcall	___memcpy
;	webserver.c:161: transmit_tcp_packet(buffer, 43);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x2b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
;	webserver.c:162: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'calculateIPChecksum'
;------------------------------------------------------------
;buffer                    Allocated with name '_calculateIPChecksum_buffer_10000_101'
;length                    Allocated with name '_calculateIPChecksum_length_10001_103'
;sum                       Allocated with name '_calculateIPChecksum_sum_10001_103'
;i                         Allocated with name '_calculateIPChecksum_i_20001_104'
;word                      Allocated with name '_calculateIPChecksum_word_30001_105'
;checksum                  Allocated with name '_calculateIPChecksum_checksum_10002_107'
;sloc0                     Allocated with name '_calculateIPChecksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculateIPChecksum_sloc1_1_0'
;------------------------------------------------------------
;	webserver.c:174: void calculateIPChecksum(uint8_t *buffer) 
;	-----------------------------------------
;	 function calculateIPChecksum
;	-----------------------------------------
_calculateIPChecksum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calculateIPChecksum_buffer_10000_101
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:177: buffer[IP_CHECKSUM_P] = 0;
	mov	dptr,#_calculateIPChecksum_buffer_10000_101
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x18
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	webserver.c:178: buffer[IP_CHECKSUM_P + 1] = 0;
	mov	a,#0x19
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	webserver.c:182: uint32_t sum = 0;
	mov	dptr,#_calculateIPChecksum_sum_10001_103
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	webserver.c:185: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
	mov	dptr,#_calculateIPChecksum_i_20001_104
	mov	a,#0x0e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00106$:
	mov	dptr,#_calculateIPChecksum_i_20001_104
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,r1
	subb	a,#0x22
	mov	a,r2
	subb	a,#0x00
	jc	00134$
	ljmp	00102$
00134$:
;	webserver.c:186: uint16_t word = (buffer[i] << 8) | buffer[i + 1]; // combine bytes to word
	mov	a,r3
	add	a, r5
	mov	r3,a
	mov	a,r4
	addc	a, r6
	mov	r0,a
	mov	ar4,r7
	mov	dpl,r3
	mov	dph,r0
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	mov	(_calculateIPChecksum_sloc0_1_0 + 1),r3
	mov	_calculateIPChecksum_sloc0_1_0,r4
	mov	a,#0x01
	add	a, r1
	mov	r0,a
	clr	a
	addc	a, r2
	mov	r4,a
	mov	a,r0
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r4,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	a,(_calculateIPChecksum_sloc0_1_0 + 1)
	orl	ar4,a
;	webserver.c:187: sum += word;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_calculateIPChecksum_sum_10001_103
	movx	a,@dptr
	mov	_calculateIPChecksum_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateIPChecksum_sum_10001_103
	mov	a,r0
	add	a, _calculateIPChecksum_sloc1_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:185: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
	mov	a,#0x02
	add	a, r1
	mov	r1,a
	clr	a
	addc	a, r2
	mov	r2,a
	mov	dptr,#_calculateIPChecksum_i_20001_104
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00106$
;	webserver.c:191: while (sum >> 16) {
00102$:
	mov	dptr,#_calculateIPChecksum_sum_10001_103
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_calculateIPChecksum_sloc1_1_0,r6
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),r7
	clr	a
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
	mov	a,_calculateIPChecksum_sloc1_1_0
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 1)
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 2)
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 3)
	jz	00104$
;	webserver.c:192: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#_calculateIPChecksum_sum_10001_103
	mov	a,_calculateIPChecksum_sloc1_1_0
	add	a, r0
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 1)
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 2)
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 3)
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	webserver.c:196: uint16_t checksum = ~((uint16_t) sum);
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
;	webserver.c:197: buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
	mov	dptr,#_calculateIPChecksum_buffer_10000_101
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x18
	add	a, r3
	mov	_calculateIPChecksum_sloc1_1_0,a
	clr	a
	addc	a, r6
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),r7
	mov	ar2,r5
	mov	dpl,_calculateIPChecksum_sloc1_1_0
	mov	dph,(_calculateIPChecksum_sloc1_1_0 + 1)
	mov	b,(_calculateIPChecksum_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	webserver.c:198: buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
	mov	a,#0x19
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	webserver.c:199: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calculateTcpChecksum'
;------------------------------------------------------------
;buffer                    Allocated with name '_calculateTcpChecksum_buffer_10000_108'
;tcpLength                 Allocated with name '_calculateTcpChecksum_tcpLength_10001_110'
;sum                       Allocated with name '_calculateTcpChecksum_sum_10001_110'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_111'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_113'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_115'
;word                      Allocated with name '_calculateTcpChecksum_word_30001_116'
;checksum                  Allocated with name '_calculateTcpChecksum_checksum_10002_118'
;sloc0                     Allocated with name '_calculateTcpChecksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculateTcpChecksum_sloc1_1_0'
;sloc2                     Allocated with name '_calculateTcpChecksum_sloc2_1_0'
;sloc3                     Allocated with name '_calculateTcpChecksum_sloc3_1_0'
;sloc4                     Allocated with name '_calculateTcpChecksum_sloc4_1_0'
;------------------------------------------------------------
;	webserver.c:214: void calculateTcpChecksum(uint8_t *buffer) 
;	-----------------------------------------
;	 function calculateTcpChecksum
;	-----------------------------------------
_calculateTcpChecksum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:217: buffer[TCP_CHECKSUM_H_P] = 0;
	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	webserver.c:218: buffer[TCP_CHECKSUM_L_P] = 0;
	mov	a,#0x33
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	webserver.c:221: uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
	mov	a,#0x10
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
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x11
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r3,#0x00
	orl	ar2,a
	mov	a,r3
	orl	ar4,a
	mov	a,r2
	add	a,#0xec
	mov	r2,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
;	webserver.c:222: uint32_t sum = 0;
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	webserver.c:225: for (uint8_t i = 0; i < 4; i++) {
	mov	_calculateTcpChecksum_sloc1_1_0,r5
	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r6
	mov	(_calculateTcpChecksum_sloc1_1_0 + 2),r7
	mov	r3,a
00108$:
	cjne	r3,#0x04,00168$
00168$:
	jnc	00101$
;	webserver.c:226: sum += buffer[IP_SRC_P + i];
	push	ar2
	push	ar4
	mov	ar0,r3
	mov	r1,#0x00
	mov	a,#0x1a
	add	a, r0
	mov	r0,a
	clr	a
	addc	a, r1
	mov	r1,a
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc1_1_0
	mov	r0,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_calculateTcpChecksum_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	_calculateTcpChecksum_sloc0_1_0,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 3),a
	mov	r4,_calculateTcpChecksum_sloc0_1_0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,r4
	add	a, _calculateTcpChecksum_sloc2_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:225: for (uint8_t i = 0; i < 4; i++) {
	inc	r3
	pop	ar4
	pop	ar2
	sjmp	00108$
00101$:
;	webserver.c:230: for (uint8_t i = 0; i < 4; i++) {
	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc1_1_0 + 2),a
	mov	r3,#0x00
00111$:
	cjne	r3,#0x04,00170$
00170$:
	jnc	00102$
;	webserver.c:231: sum += buffer[IP_DST_P + i];
	push	ar2
	push	ar4
	mov	ar0,r3
	mov	r1,#0x00
	mov	a,#0x1e
	add	a, r0
	mov	r0,a
	clr	a
	addc	a, r1
	mov	r1,a
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc1_1_0
	mov	r0,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_calculateTcpChecksum_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	_calculateTcpChecksum_sloc2_1_0,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
	mov	r4,_calculateTcpChecksum_sloc2_1_0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,r4
	add	a, _calculateTcpChecksum_sloc3_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:230: for (uint8_t i = 0; i < 4; i++) {
	inc	r3
	pop	ar4
	pop	ar2
	sjmp	00111$
00102$:
;	webserver.c:235: sum += (uint16_t) IP_PROTO_TCP;  // Protocol number for TCP
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,#0x06
	add	a, r3
	movx	@dptr,a
	clr	a
	addc	a, r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:236: sum += tcpLength;  // TCP length is the total length minus IP header length
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
	mov	ar0,r2
	mov	ar1,r4
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc3_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:239: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
	mov	dptr,#_calculateTcpChecksum_i_20001_115
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00114$:
	mov	ar1,r2
	mov	ar3,r4
	mov	a,#0x22
	add	a, r1
	mov	r1,a
	clr	a
	addc	a, r3
	mov	r3,a
	mov	dptr,#_calculateTcpChecksum_i_20001_115
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	mov	_calculateTcpChecksum_sloc2_1_0,_calculateTcpChecksum_sloc3_1_0
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),(_calculateTcpChecksum_sloc3_1_0 + 1)
	clr	c
	mov	a,_calculateTcpChecksum_sloc2_1_0
	subb	a,r1
	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
	subb	a,r3
	jc	00172$
	ljmp	00104$
00172$:
;	webserver.c:240: uint16_t word = (buffer[i] << 8) | buffer[i + 1];  // Combine the bytes into 16-bit word
	push	ar2
	push	ar4
	mov	a,_calculateTcpChecksum_sloc3_1_0
	add	a, r5
	mov	r0,a
	mov	a,(_calculateTcpChecksum_sloc3_1_0 + 1)
	addc	a, r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	mov	r0,#0x00
	mov	a,#0x01
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r4,a
	mov	a,r1
	add	a, r5
	mov	r1,a
	mov	a,r4
	addc	a, r6
	mov	r4,a
	mov	ar2,r7
	mov	dpl,r1
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r4,#0x00
	orl	ar0,a
	mov	a,r4
	orl	ar3,a
	mov	_calculateTcpChecksum_sloc3_1_0,r0
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),r3
;	webserver.c:241: sum += word;
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
	mov	r0,_calculateTcpChecksum_sloc3_1_0
	mov	r2,(_calculateTcpChecksum_sloc3_1_0 + 1)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc4_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:239: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
	mov	a,#0x02
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r3,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r4,a
	mov	dptr,#_calculateTcpChecksum_i_20001_115
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar2
	ljmp	00114$
;	webserver.c:245: while (sum >> 16) {
00104$:
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_calculateTcpChecksum_sloc4_1_0,r6
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),r7
	clr	a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
	mov	a,_calculateTcpChecksum_sloc4_1_0
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
	jz	00106$
;	webserver.c:246: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_110
	mov	a,_calculateTcpChecksum_sloc4_1_0
	add	a, r0
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	webserver.c:250: uint16_t checksum = ~((uint16_t) sum);
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
;	webserver.c:251: buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a, r3
	mov	_calculateTcpChecksum_sloc4_1_0,a
	clr	a
	addc	a, r6
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),r7
	mov	ar2,r5
	mov	dpl,_calculateTcpChecksum_sloc4_1_0
	mov	dph,(_calculateTcpChecksum_sloc4_1_0 + 1)
	mov	b,(_calculateTcpChecksum_sloc4_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	webserver.c:252: buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
	mov	a,#0x33
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	webserver.c:253: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpFinPshAck'
;------------------------------------------------------------
;device_mac                Allocated with name '_makeTcpFinPshAck_device_mac_10000_120'
;target_mac                Allocated with name '_makeTcpFinPshAck_target_mac_10000_120'
;device_ip                 Allocated with name '_makeTcpFinPshAck_device_ip_10000_120'
;target_ip                 Allocated with name '_makeTcpFinPshAck_target_ip_10000_120'
;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_121'
;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_121'
;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_122'
;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_122'
;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_123'
;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_123'
;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_123'
;------------------------------------------------------------
;	webserver.c:265: void makeTcpFinPshAck(void) 
;	-----------------------------------------
;	 function makeTcpFinPshAck
;	-----------------------------------------
_makeTcpFinPshAck:
;	webserver.c:267: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeTcpFinPshAck_device_mac_10000_120
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:268: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeTcpFinPshAck_target_mac_10000_120
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0005)
	movx	@dptr,a
;	webserver.c:269: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeTcpFinPshAck_device_ip_10000_120
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:270: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeTcpFinPshAck_target_ip_10000_120
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0003)
	movx	@dptr,a
;	webserver.c:271: printf("makeTcpFinPshAck\n\r");
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
;	webserver.c:274: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:275: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:278: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:279: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpFinPshAck_device_mac_10000_120
	movx	@dptr,a
	mov	a,#(_makeTcpFinPshAck_device_mac_10000_120 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:282: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	webserver.c:283: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpFinPshAck_device_ip_10000_120
	movx	@dptr,a
	mov	a,#(_makeTcpFinPshAck_device_ip_10000_120 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	webserver.c:286: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	webserver.c:288: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	webserver.c:290: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:291: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:292: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:293: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:296: uint32_t serverSeqNum = prevSeq;
	mov	dptr,#_prevSeq
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_122
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:297: uint32_t ackNum = prevAck;
	mov	dptr,#_prevAck
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
	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_122
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	webserver.c:299: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar4,r7
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r4
	movx	@dptr,a
;	webserver.c:300: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_122
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar3,r6
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:301: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:302: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r4
	movx	@dptr,a
;	webserver.c:303: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_122
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_buffer + 0x002b)
	movx	@dptr,a
;	webserver.c:304: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
	mov	ar3,r6
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:305: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:306: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r4
	movx	@dptr,a
;	webserver.c:309: const char *html_payload =
;	webserver.c:332: uint16_t dataLength = strlen(html_payload);
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	webserver.c:335: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
	mov	a,#0x28
	add	a, r6
	mov	r4,a
	clr	a
	addc	a, r7
;	webserver.c:336: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	movx	@dptr,a
;	webserver.c:337: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,r4
	movx	@dptr,a
;	webserver.c:340: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x19
	movx	@dptr,a
;	webserver.c:341: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	webserver.c:342: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	webserver.c:343: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:346: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0037)
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	___memcpy
;	webserver.c:349: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	webserver.c:350: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
	pop	ar6
	pop	ar7
;	webserver.c:353: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
	mov	a,#0x37
	add	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b, #0x00
	lcall	_transmit_tcp_packet
;	webserver.c:356: connectionState = FIN_WAIT;
	mov	dptr,#_connectionState
	mov	a,#0x03
	movx	@dptr,a
;	webserver.c:357: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck3'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
;device_mac                Allocated with name '_makeTcpAck3_device_mac_10000_125'
;target_mac                Allocated with name '_makeTcpAck3_target_mac_10000_125'
;device_ip                 Allocated with name '_makeTcpAck3_device_ip_10000_125'
;target_ip                 Allocated with name '_makeTcpAck3_target_ip_10000_125'
;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_126'
;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_126'
;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_127'
;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_127'
;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_127'
;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_127'
;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_128'
;------------------------------------------------------------
;	webserver.c:368: void makeTcpAck3(void) 
;	-----------------------------------------
;	 function makeTcpAck3
;	-----------------------------------------
_makeTcpAck3:
;	webserver.c:370: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeTcpAck3_device_mac_10000_125
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:371: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeTcpAck3_target_mac_10000_125
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0005)
	movx	@dptr,a
;	webserver.c:372: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeTcpAck3_device_ip_10000_125
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:373: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeTcpAck3_target_ip_10000_125
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0003)
	movx	@dptr,a
;	webserver.c:374: printf("makeTcpAck\n\r");
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
;	webserver.c:377: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:378: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:381: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:382: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpAck3_device_mac_10000_125
	movx	@dptr,a
	mov	a,#(_makeTcpAck3_device_mac_10000_125 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:385: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	webserver.c:386: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpAck3_device_ip_10000_125
	movx	@dptr,a
	mov	a,#(_makeTcpAck3_device_ip_10000_125 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	webserver.c:389: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	webserver.c:391: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	webserver.c:393: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:394: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:395: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:396: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:399: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0027)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	ar4,r7
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0028)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	ar3,r1
	mov	ar2,r0
	clr	a
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
;	webserver.c:404: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
	mov	dptr,#(_buffer + 0x002b)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r3,#0x00
	mov	(_makeTcpAck3_sloc0_1_0 + 3),r0
	mov	_makeTcpAck3_sloc0_1_0,r3
	mov	(_makeTcpAck3_sloc0_1_0 + 1),r3
	mov	(_makeTcpAck3_sloc0_1_0 + 2),r3
	mov	dptr,#(_buffer + 0x002c)
	movx	a,@dptr
	mov	r0,a
	mov	ar3,r1
	mov	ar2,r0
	clr	a
	orl	_makeTcpAck3_sloc0_1_0,a
	mov	a,r1
	orl	(_makeTcpAck3_sloc0_1_0 + 1),a
	mov	a,r2
	orl	(_makeTcpAck3_sloc0_1_0 + 2),a
	mov	a,r3
	orl	(_makeTcpAck3_sloc0_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002d)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	orl	_makeTcpAck3_sloc0_1_0,a
	mov	a,r1
	orl	(_makeTcpAck3_sloc0_1_0 + 1),a
	mov	a,r2
	orl	(_makeTcpAck3_sloc0_1_0 + 2),a
	mov	a,r3
	orl	(_makeTcpAck3_sloc0_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002e)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
	orl	ar1,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
	orl	ar3,a
;	webserver.c:410: uint32_t ackNum = clientSeqNum + 1;
	mov	a,#0x01
	add	a, r7
	mov	_makeTcpAck3_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
	clr	a
	addc	a, r5
	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
	clr	a
	addc	a, r4
	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
;	webserver.c:411: prevSeq = serverSeqNum;
	mov	dptr,#_prevSeq
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	webserver.c:412: prevAck = ackNum;
	mov	dptr,#_prevAck
	mov	a,_makeTcpAck3_sloc0_1_0
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:415: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar7,r3
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:416: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	ar7,r2
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:417: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar7,r1
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:418: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r0
	movx	@dptr,a
;	webserver.c:419: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:420: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:421: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:422: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
	mov	r7,_makeTcpAck3_sloc0_1_0
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:426: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	webserver.c:427: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	webserver.c:430: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	webserver.c:431: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	webserver.c:432: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	webserver.c:433: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:436: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	webserver.c:437: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	webserver.c:441: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	webserver.c:444: connectionState = ACK_SENT;
	mov	dptr,#_connectionState
	mov	a,#0x05
	movx	@dptr,a
;	webserver.c:445: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck2'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
;device_mac                Allocated with name '_makeTcpAck2_device_mac_10000_130'
;target_mac                Allocated with name '_makeTcpAck2_target_mac_10000_130'
;device_ip                 Allocated with name '_makeTcpAck2_device_ip_10000_130'
;target_ip                 Allocated with name '_makeTcpAck2_target_ip_10000_130'
;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_130'
;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_130'
;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_131'
;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_131'
;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_132'
;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_132'
;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_132'
;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_132'
;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_133'
;------------------------------------------------------------
;	webserver.c:459: void makeTcpAck2(void) 
;	-----------------------------------------
;	 function makeTcpAck2
;	-----------------------------------------
_makeTcpAck2:
;	webserver.c:461: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeTcpAck2_device_mac_10000_130
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:462: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeTcpAck2_target_mac_10000_130
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0005)
	movx	@dptr,a
;	webserver.c:463: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeTcpAck2_device_ip_10000_130
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:464: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeTcpAck2_target_ip_10000_130
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0003)
	movx	@dptr,a
;	webserver.c:465: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
	mov	dptr,#(_buffer + 0x0010)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0011)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	webserver.c:466: uint16_t receivedPayloadLength = totalLength1 - 40;
	mov	a,r7
	add	a,#0xd8
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	_makeTcpAck2_sloc0_1_0,r7
	mov	(_makeTcpAck2_sloc0_1_0 + 1),r6
;	webserver.c:467: printf("makeTcpAck\n\r");
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
;	webserver.c:470: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:471: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:474: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:475: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpAck2_device_mac_10000_130
	movx	@dptr,a
	mov	a,#(_makeTcpAck2_device_mac_10000_130 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:478: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	webserver.c:479: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpAck2_device_ip_10000_130
	movx	@dptr,a
	mov	a,#(_makeTcpAck2_device_ip_10000_130 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	webserver.c:482: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	webserver.c:484: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	webserver.c:486: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar1,r2
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r1
	movx	@dptr,a
;	webserver.c:487: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:488: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:489: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:492: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0027)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	ar2,r5
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0028)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	ar7,r1
	mov	ar6,r0
	clr	a
	orl	ar5,a
	mov	a,r1
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r6,#0x00
	mov	ar7,r6
	mov	ar6,r1
	mov	ar1,r0
	clr	a
	orl	ar5,a
	mov	a,r1
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	orl	a,r5
	mov	_makeTcpAck2_sloc2_1_0,a
	mov	a,r1
	orl	a,r4
	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
	mov	a,r6
	orl	a,r3
	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
	mov	a,r7
	orl	a,r2
	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
;	webserver.c:497: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
	mov	dptr,#(_buffer + 0x002b)
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	mov	(_makeTcpAck2_sloc1_1_0 + 3),r0
	mov	_makeTcpAck2_sloc1_1_0,r7
	mov	(_makeTcpAck2_sloc1_1_0 + 1),r7
	mov	(_makeTcpAck2_sloc1_1_0 + 2),r7
	mov	dptr,#(_buffer + 0x002c)
	movx	a,@dptr
	mov	r0,a
	mov	ar7,r1
	mov	ar6,r0
	clr	a
	orl	_makeTcpAck2_sloc1_1_0,a
	mov	a,r1
	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
	mov	a,r6
	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
	mov	a,r7
	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002d)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r6,#0x00
	mov	ar7,r6
	mov	ar6,r1
	mov	ar1,r0
	clr	a
	orl	_makeTcpAck2_sloc1_1_0,a
	mov	a,r1
	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
	mov	a,r6
	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
	mov	a,r7
	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002e)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r6,a
	mov	r7,a
	mov	a,(_makeTcpAck2_sloc1_1_0 + 1)
	orl	ar1,a
	mov	a,(_makeTcpAck2_sloc1_1_0 + 2)
	orl	ar6,a
	mov	a,(_makeTcpAck2_sloc1_1_0 + 3)
	orl	ar7,a
;	webserver.c:503: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
	mov	r2,_makeTcpAck2_sloc0_1_0
	mov	r3,(_makeTcpAck2_sloc0_1_0 + 1)
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r2
	add	a, _makeTcpAck2_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
	mov	r3,a
	mov	a,r4
	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
	mov	r5,a
	mov	a,r2
	add	a,#0xff
	mov	_makeTcpAck2_sloc2_1_0,a
	mov	a,r3
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
	mov	a,r4
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
	mov	a,r5
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
;	webserver.c:504: prevSeq = serverSeqNum;
	mov	dptr,#_prevSeq
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	webserver.c:505: prevAck = ackNum;
	mov	dptr,#_prevAck
	mov	a,_makeTcpAck2_sloc2_1_0
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	webserver.c:508: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar5,r7
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:509: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:510: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar5,r1
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:511: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r0
	movx	@dptr,a
;	webserver.c:512: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:513: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:514: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:515: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
	mov	r2,_makeTcpAck2_sloc2_1_0
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r2
	movx	@dptr,a
;	webserver.c:519: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	webserver.c:520: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	webserver.c:523: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	webserver.c:524: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	webserver.c:525: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	webserver.c:526: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:529: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	webserver.c:530: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	webserver.c:534: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	webserver.c:537: connectionState = ACK_SENT;
	mov	dptr,#_connectionState
	mov	a,#0x05
	movx	@dptr,a
;	webserver.c:538: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpSynAck'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeTcpSynAck_sloc0_1_0'
;device_mac                Allocated with name '_makeTcpSynAck_device_mac_10000_135'
;target_mac                Allocated with name '_makeTcpSynAck_target_mac_10000_135'
;device_ip                 Allocated with name '_makeTcpSynAck_device_ip_10000_135'
;target_ip                 Allocated with name '_makeTcpSynAck_target_ip_10000_135'
;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_136'
;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_136'
;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_137'
;clientAckNumber           Allocated with name '_makeTcpSynAck_clientAckNumber_10002_137'
;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10002_137'
;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10002_137'
;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10003_138'
;------------------------------------------------------------
;	webserver.c:552: void makeTcpSynAck(void) 
;	-----------------------------------------
;	 function makeTcpSynAck
;	-----------------------------------------
_makeTcpSynAck:
;	webserver.c:554: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeTcpSynAck_device_mac_10000_135
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:555: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeTcpSynAck_target_mac_10000_135
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0005)
	movx	@dptr,a
;	webserver.c:556: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeTcpSynAck_device_ip_10000_135
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:557: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeTcpSynAck_target_ip_10000_135
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0003)
	movx	@dptr,a
;	webserver.c:558: printf("makeTcpSynAck\n\r");
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
;	webserver.c:561: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:562: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:564: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:565: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpSynAck_device_mac_10000_135
	movx	@dptr,a
	mov	a,#(_makeTcpSynAck_device_mac_10000_135 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:568: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	webserver.c:569: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeTcpSynAck_device_ip_10000_135
	movx	@dptr,a
	mov	a,#(_makeTcpSynAck_device_ip_10000_135 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	webserver.c:572: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	webserver.c:574: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	webserver.c:576: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	webserver.c:577: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:578: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:579: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:582: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0027)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	ar4,r7
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0028)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	ar3,r1
	mov	ar2,r0
	clr	a
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
;	webserver.c:587: uint32_t clientAckNumber = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
	mov	dptr,#(_buffer + 0x002b)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r3,#0x00
	mov	(_makeTcpSynAck_sloc0_1_0 + 3),r0
	mov	_makeTcpSynAck_sloc0_1_0,r3
	mov	(_makeTcpSynAck_sloc0_1_0 + 1),r3
	mov	(_makeTcpSynAck_sloc0_1_0 + 2),r3
	mov	dptr,#(_buffer + 0x002c)
	movx	a,@dptr
	mov	r0,a
	mov	ar3,r1
	mov	ar2,r0
	clr	a
	orl	_makeTcpSynAck_sloc0_1_0,a
	mov	a,r1
	orl	(_makeTcpSynAck_sloc0_1_0 + 1),a
	mov	a,r2
	orl	(_makeTcpSynAck_sloc0_1_0 + 2),a
	mov	a,r3
	orl	(_makeTcpSynAck_sloc0_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002d)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	ar3,r2
	mov	ar2,r1
	mov	ar1,r0
	clr	a
	orl	_makeTcpSynAck_sloc0_1_0,a
	mov	a,r1
	orl	(_makeTcpSynAck_sloc0_1_0 + 1),a
	mov	a,r2
	orl	(_makeTcpSynAck_sloc0_1_0 + 2),a
	mov	a,r3
	orl	(_makeTcpSynAck_sloc0_1_0 + 3),a
	mov	dptr,#(_buffer + 0x002e)
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,(_makeTcpSynAck_sloc0_1_0 + 1)
	orl	ar1,a
	mov	a,(_makeTcpSynAck_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(_makeTcpSynAck_sloc0_1_0 + 3)
	orl	ar3,a
;	webserver.c:593: uint32_t ackNum = clientSeqNum + 1;
	mov	a,#0x01
	add	a, r7
	mov	_makeTcpSynAck_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_makeTcpSynAck_sloc0_1_0 + 1),a
	clr	a
	addc	a, r5
	mov	(_makeTcpSynAck_sloc0_1_0 + 2),a
	clr	a
	addc	a, r4
	mov	(_makeTcpSynAck_sloc0_1_0 + 3),a
;	webserver.c:595: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar7,r3
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:596: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	ar7,r2
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:597: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar7,r1
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:598: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r0
	movx	@dptr,a
;	webserver.c:599: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 3)
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:600: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 2)
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:601: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 1)
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:602: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
	mov	r7,_makeTcpSynAck_sloc0_1_0
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r7
	movx	@dptr,a
;	webserver.c:606: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	webserver.c:607: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	webserver.c:610: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x12
	movx	@dptr,a
;	webserver.c:611: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	webserver.c:612: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	webserver.c:613: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:616: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	webserver.c:617: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	webserver.c:621: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	webserver.c:624: connectionState = SYN_RECEIVED;
	mov	dptr,#_connectionState
	mov	a,#0x01
	movx	@dptr,a
;	webserver.c:625: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeHttpResponse'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeHttpResponse_sloc0_1_0'
;sloc1                     Allocated with name '_makeHttpResponse_sloc1_1_0'
;sloc2                     Allocated with name '_makeHttpResponse_sloc2_1_0'
;sloc3                     Allocated with name '_makeHttpResponse_sloc3_1_0'
;sloc4                     Allocated with name '_makeHttpResponse_sloc4_1_0'
;sloc5                     Allocated with name '_makeHttpResponse_sloc5_1_0'
;device_mac                Allocated with name '_makeHttpResponse_device_mac_10000_140'
;target_mac                Allocated with name '_makeHttpResponse_target_mac_10000_140'
;device_ip                 Allocated with name '_makeHttpResponse_device_ip_10000_140'
;target_ip                 Allocated with name '_makeHttpResponse_target_ip_10000_140'
;ethernetHeaderSize        Allocated with name '_makeHttpResponse_ethernetHeaderSize_10001_141'
;ipHeaderSize              Allocated with name '_makeHttpResponse_ipHeaderSize_10001_141'
;tcpHeaderSize             Allocated with name '_makeHttpResponse_tcpHeaderSize_10001_141'
;headerSize                Allocated with name '_makeHttpResponse_headerSize_10001_141'
;httpResponse              Allocated with name '_makeHttpResponse_httpResponse_10001_141'
;responseLen               Allocated with name '_makeHttpResponse_responseLen_10001_141'
;totalLength               Allocated with name '_makeHttpResponse_totalLength_10002_142'
;ipHeader                  Allocated with name '_makeHttpResponse_ipHeader_10002_142'
;srcPort                   Allocated with name '_makeHttpResponse_srcPort_10003_143'
;dstPort                   Allocated with name '_makeHttpResponse_dstPort_10003_143'
;seqNum                    Allocated with name '_makeHttpResponse_seqNum_10003_143'
;seqPart1                  Allocated with name '_makeHttpResponse_seqPart1_10003_143'
;seqPart2                  Allocated with name '_makeHttpResponse_seqPart2_10003_143'
;seqPart3                  Allocated with name '_makeHttpResponse_seqPart3_10003_143'
;seqPart4                  Allocated with name '_makeHttpResponse_seqPart4_10003_143'
;ackNum                    Allocated with name '_makeHttpResponse_ackNum_10003_143'
;tcpHeader                 Allocated with name '_makeHttpResponse_tcpHeader_10004_144'
;------------------------------------------------------------
;	webserver.c:640: void makeHttpResponse(void) 
;	-----------------------------------------
;	 function makeHttpResponse
;	-----------------------------------------
_makeHttpResponse:
;	webserver.c:642: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeHttpResponse_device_mac_10000_140
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:643: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeHttpResponse_target_mac_10000_140
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0005)
	movx	@dptr,a
;	webserver.c:644: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeHttpResponse_device_ip_10000_140
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:645: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeHttpResponse_target_ip_10000_140
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0003)
	movx	@dptr,a
;	webserver.c:647: printf("httpresponse\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	webserver.c:657: const char *httpResponse = "HTTP/1.1 200 OK\r\n"
;	webserver.c:678: uint16_t responseLen = strlen(httpResponse);
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	webserver.c:681: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	lcall	_memmove
;	webserver.c:682: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:685: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Swap MACs
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	webserver.c:686: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);           // Set device MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeHttpResponse_device_mac_10000_140
	movx	@dptr,a
	mov	a,#(_makeHttpResponse_device_mac_10000_140 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	push	ar7
	push	ar6
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	webserver.c:687: buffer[1 + ETH_TYPE_H_P] = (ETH_TYPE_IP >> 8) & 0xFF; // Set EtherType to IPv4
	mov	dptr,#(_buffer + 0x000d)
	mov	a,#0x08
	movx	@dptr,a
;	webserver.c:688: buffer[1 + ETH_TYPE_L_P] = ETH_TYPE_IP & 0xFF;
	mov	dptr,#(_buffer + 0x000e)
	clr	a
	movx	@dptr,a
;	webserver.c:691: uint16_t totalLength = ipHeaderSize + tcpHeaderSize + responseLen;
	mov	a,#0x28
	add	a, r6
	mov	r4,a
	clr	a
	addc	a, r7
	mov	r5,a
;	webserver.c:692: uint8_t *ipHeader = &buffer[1 + ethernetHeaderSize];
;	webserver.c:693: ipHeader[0] = 0x45; // Version and header length
	mov	dptr,#(_buffer + 0x000f)
	mov	a,#0x45
	movx	@dptr,a
;	webserver.c:694: ipHeader[1] = 0x00; // Differentiated services
	mov	dptr,#(_buffer + 0x0010)
	clr	a
	mov	b,a
	lcall	__gptrput
;	webserver.c:695: ipHeader[2] = (totalLength >> 8) & 0xFF; // Total length high byte
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x0011)
	mov	b,a
	mov	a,r3
	lcall	__gptrput
;	webserver.c:696: ipHeader[3] = totalLength & 0xFF;        // Total length low byte
	mov	dptr,#(_buffer + 0x0012)
	mov	a,r4
	lcall	__gptrput
;	webserver.c:697: ipHeader[4] = 0x00; // Identification
	mov	dptr,#(_buffer + 0x0013)
	clr	a
	lcall	__gptrput
;	webserver.c:698: ipHeader[5] = 0x00;
	mov	dptr,#(_buffer + 0x0014)
	mov	b,a
	lcall	__gptrput
;	webserver.c:699: ipHeader[6] = 0x40; // Flags and Fragment Offset (Don't Fragment)
	mov	dptr,#(_buffer + 0x0015)
	mov	b,a
	mov	a,#0x40
	lcall	__gptrput
;	webserver.c:700: ipHeader[7] = 0x00;
	mov	dptr,#(_buffer + 0x0016)
	clr	a
	lcall	__gptrput
;	webserver.c:701: ipHeader[8] = 64;   // Time to Live
	mov	dptr,#(_buffer + 0x0017)
	mov	b,a
	mov	a,#0x40
	lcall	__gptrput
;	webserver.c:702: ipHeader[9] = IP_PROTO_TCP; // Protocol: TCP
	mov	dptr,#(_buffer + 0x0018)
	mov	a,#0x06
	lcall	__gptrput
;	webserver.c:703: ipHeader[10] = 0x00; // Header checksum (reset for calculation)
	mov	dptr,#(_buffer + 0x0019)
	clr	a
	lcall	__gptrput
;	webserver.c:704: ipHeader[11] = 0x00;
	mov	dptr,#(_buffer + 0x001a)
	mov	b,a
	lcall	__gptrput
;	webserver.c:705: memcpy(&ipHeader[12], device_ip, 4); // Source IP
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeHttpResponse_device_ip_10000_140
	movx	@dptr,a
	mov	a,#(_makeHttpResponse_device_ip_10000_140 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	push	ar7
	push	ar6
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	webserver.c:707: memcpy(&ipHeader[16], target_ip, 4); // Destination IP
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_makeHttpResponse_target_ip_10000_140
	movx	@dptr,a
	mov	a,#(_makeHttpResponse_target_ip_10000_140 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	push	ar7
	push	ar6
	lcall	___memcpy
;	webserver.c:708: calculateIPChecksum(ipHeader);
	mov	dptr,#(_buffer + 0x000f)
	mov	b, #0x00
	lcall	_calculateIPChecksum
	pop	ar6
	pop	ar7
;	webserver.c:711: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	mov	_makeHttpResponse_sloc5_1_0,r5
	mov	(_makeHttpResponse_sloc5_1_0 + 1),r4
;	webserver.c:713: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
	mov	_makeHttpResponse_sloc0_1_0,r3
	mov	(_makeHttpResponse_sloc0_1_0 + 1),r2
;	webserver.c:719: seqPart1 = (uint32_t)buffer[1 + TCP_SEQ_H_P] << 24;     // Most significant byte
	mov	dptr,#(_buffer + 0x0027)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	(_makeHttpResponse_sloc1_1_0 + 3),r0
	mov	_makeHttpResponse_sloc1_1_0,r3
	mov	(_makeHttpResponse_sloc1_1_0 + 1),r3
	mov	(_makeHttpResponse_sloc1_1_0 + 2),r3
;	webserver.c:720: seqPart2 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16; // Second byte
	mov	dptr,#(_buffer + 0x0028)
	movx	a,@dptr
	mov	r0,a
	mov	r3,#0x00
	mov	(_makeHttpResponse_sloc2_1_0 + 3),r1
	mov	(_makeHttpResponse_sloc2_1_0 + 2),r0
	mov	_makeHttpResponse_sloc2_1_0,r3
	mov	(_makeHttpResponse_sloc2_1_0 + 1),r3
;	webserver.c:721: seqPart3 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8;  // Third byte
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r0,a
	mov	r3,#0x00
	mov	(_makeHttpResponse_sloc3_1_0 + 3),r2
	mov	(_makeHttpResponse_sloc3_1_0 + 2),r1
	mov	(_makeHttpResponse_sloc3_1_0 + 1),r0
	mov	_makeHttpResponse_sloc3_1_0,r3
;	webserver.c:722: seqPart4 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];       // Least significant byte
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r3,a
	mov	_makeHttpResponse_sloc4_1_0,r3
	mov	(_makeHttpResponse_sloc4_1_0 + 1),r2
	mov	(_makeHttpResponse_sloc4_1_0 + 2),r2
	mov	(_makeHttpResponse_sloc4_1_0 + 3),r2
;	webserver.c:725: ackNum = seqPart1 | seqPart2 | seqPart3 | seqPart4;
	mov	r0,_makeHttpResponse_sloc1_1_0
	mov	r1,(_makeHttpResponse_sloc1_1_0 + 1)
	mov	a,(_makeHttpResponse_sloc2_1_0 + 2)
	orl	a,(_makeHttpResponse_sloc1_1_0 + 2)
	mov	r2,a
	mov	r3,(_makeHttpResponse_sloc1_1_0 + 3)
	mov	a,(_makeHttpResponse_sloc3_1_0 + 1)
	orl	ar1,a
	mov	a,_makeHttpResponse_sloc4_1_0
	orl	ar0,a
;	webserver.c:728: ackNum += 1;
	inc	r0
	cjne	r0,#0x00,00103$
	inc	r1
	cjne	r1,#0x00,00103$
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
;	webserver.c:730: uint8_t *tcpHeader = &buffer[1 + ethernetHeaderSize + ipHeaderSize];
;	webserver.c:731: tcpHeader[0] = (dstPort >> 8) & 0xFF; // Source port high byte
	mov	r5,(_makeHttpResponse_sloc0_1_0 + 1)
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:732: tcpHeader[1] = dstPort & 0xFF;        // Source port low byte
	mov	r5,_makeHttpResponse_sloc0_1_0
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:733: tcpHeader[2] = (srcPort >> 8) & 0xFF; // Destination port high byte
	mov	r5,(_makeHttpResponse_sloc5_1_0 + 1)
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:734: tcpHeader[3] = srcPort & 0xFF;        // Destination port low byte
	mov	r5,_makeHttpResponse_sloc5_1_0
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:735: tcpHeader[4] = (seqNum >> 24) & 0xFF; // Sequence number
	mov	dptr,#(_buffer + 0x0027)
	clr	a
	movx	@dptr,a
;	webserver.c:736: tcpHeader[5] = (seqNum >> 16) & 0xFF;
	mov	dptr,#(_buffer + 0x0028)
	movx	@dptr,a
;	webserver.c:737: tcpHeader[6] = (seqNum >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0029)
	mov	a,#0x03
	movx	@dptr,a
;	webserver.c:738: tcpHeader[7] = seqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,#0xe8
	movx	@dptr,a
;	webserver.c:739: tcpHeader[8] = (ackNum >> 24) & 0xFF; // Acknowledgment number
	mov	ar5,r3
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:740: tcpHeader[9] = (ackNum >> 16) & 0xFF;
	mov	ar5,r2
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:741: tcpHeader[10] = (ackNum >> 8) & 0xFF;
	mov	ar5,r1
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r5
	movx	@dptr,a
;	webserver.c:742: tcpHeader[11] = ackNum & 0xFF;
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r0
	movx	@dptr,a
;	webserver.c:743: tcpHeader[12] = 0x50; // Data offset (5 words) + Reserved
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:744: tcpHeader[13] = TCP_FLAG_ACK | TCP_FLAG_PUSH; // Flags
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x18
	movx	@dptr,a
;	webserver.c:745: tcpHeader[14] = 0xFF; // Window size high byte
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	webserver.c:746: tcpHeader[15] = 0xFF; // Window size low byte
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	webserver.c:747: tcpHeader[16] = 0x00; // Checksum (reset for calculation)
	mov	dptr,#(_buffer + 0x0033)
	clr	a
	movx	@dptr,a
;	webserver.c:748: tcpHeader[17] = 0x00;
	mov	dptr,#(_buffer + 0x0034)
	movx	@dptr,a
;	webserver.c:749: tcpHeader[18] = 0x00; // Urgent pointer
	mov	dptr,#(_buffer + 0x0035)
	movx	@dptr,a
;	webserver.c:750: tcpHeader[19] = 0x00;
	mov	dptr,#(_buffer + 0x0036)
	movx	@dptr,a
;	webserver.c:751: calculateTcpChecksum(&buffer[1]);
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	lcall	_calculateTcpChecksum
	pop	ar6
	pop	ar7
;	webserver.c:754: memcpy(&buffer[1 + headerSize], httpResponse, responseLen);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#___str_5
	movx	@dptr,a
	mov	a,#(___str_5 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0037)
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	___memcpy
	pop	ar6
	pop	ar7
;	webserver.c:757: transmit_tcp_packet(buffer, 1 + headerSize + responseLen);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	add	a, r6
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b, #0x00
;	webserver.c:758: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck'
;------------------------------------------------------------
;device_mac                Allocated with name '_makeTcpAck_device_mac_10000_146'
;target_mac                Allocated with name '_makeTcpAck_target_mac_10000_146'
;device_ip                 Allocated with name '_makeTcpAck_device_ip_10000_146'
;target_ip                 Allocated with name '_makeTcpAck_target_ip_10000_146'
;------------------------------------------------------------
;	webserver.c:769: void makeTcpAck(void) 
;	-----------------------------------------
;	 function makeTcpAck
;	-----------------------------------------
_makeTcpAck:
;	webserver.c:771: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_makeTcpAck_device_mac_10000_146
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:772: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_makeTcpAck_target_mac_10000_146
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0005)
	movx	@dptr,a
;	webserver.c:773: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_makeTcpAck_device_ip_10000_146
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:774: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_makeTcpAck_target_ip_10000_146
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0003)
	movx	@dptr,a
;	webserver.c:775: printf("tcpack\n\r");
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
;	webserver.c:776: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	webserver.c:779: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	webserver.c:780: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	webserver.c:781: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
;	webserver.c:782: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'trial_arp_request'
;------------------------------------------------------------
;device_mac                Allocated with name '_trial_arp_request_device_mac_10000_148'
;target_mac                Allocated with name '_trial_arp_request_target_mac_10000_148'
;device_ip                 Allocated with name '_trial_arp_request_device_ip_10000_148'
;target_ip                 Allocated with name '_trial_arp_request_target_ip_10000_148'
;arp_packet                Allocated with name '_trial_arp_request_arp_packet_10001_149'
;------------------------------------------------------------
;	webserver.c:794: void trial_arp_request(void) 
;	-----------------------------------------
;	 function trial_arp_request
;	-----------------------------------------
_trial_arp_request:
;	webserver.c:796: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
	mov	dptr,#_trial_arp_request_device_mac_10000_148
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0002)
	mov	a,#0xa3
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0003)
	mov	a,#0x3c
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0004)
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0005)
	mov	a,#0x50
	movx	@dptr,a
;	webserver.c:797: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
	mov	dptr,#_trial_arp_request_target_mac_10000_148
	mov	a,#0xff
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0005)
	movx	@dptr,a
;	webserver.c:798: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_trial_arp_request_device_ip_10000_148
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	webserver.c:799: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_trial_arp_request_target_ip_10000_148
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0003)
	movx	@dptr,a
;	webserver.c:800: printf("refresharp\n\r");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	webserver.c:801: uint8_t arp_packet[43] = { 0x0E };
	mov	dptr,#_trial_arp_request_arp_packet_10001_149
	mov	a,#0x0e
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0001)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x002a)
	movx	@dptr,a
;	webserver.c:802: memcpy(&arp_packet[1], target_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_trial_arp_request_target_mac_10000_148
	movx	@dptr,a
	mov	a,#(_trial_arp_request_target_mac_10000_148 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0001)
	mov	b,a
	lcall	___memcpy
;	webserver.c:803: memcpy(&arp_packet[7], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_trial_arp_request_device_mac_10000_148
	movx	@dptr,a
	mov	a,#(_trial_arp_request_device_mac_10000_148 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0007)
	mov	b,a
	lcall	___memcpy
;	webserver.c:804: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000d)
	mov	a,#0x08
	movx	@dptr,a
;	webserver.c:805: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000e)
	mov	a,#0x06
	movx	@dptr,a
;	webserver.c:806: arp_packet[15] = 0x00;
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000f)
	clr	a
	movx	@dptr,a
;	webserver.c:807: arp_packet[16] = 0x01; // Hardware type
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0010)
	inc	a
	movx	@dptr,a
;	webserver.c:808: arp_packet[17] = 0x08;
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0011)
	mov	a,#0x08
	movx	@dptr,a
;	webserver.c:809: arp_packet[18] = 0x00; // Protocol type
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0012)
	clr	a
	movx	@dptr,a
;	webserver.c:810: arp_packet[19] = 0x06; // Hardware size
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0013)
	mov	a,#0x06
	movx	@dptr,a
;	webserver.c:811: arp_packet[20] = 0x04; // Protocol size
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0014)
	mov	a,#0x04
	movx	@dptr,a
;	webserver.c:812: arp_packet[21] = 0x00;
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0015)
	clr	a
	movx	@dptr,a
;	webserver.c:813: arp_packet[22] = 0x01; // Operation (request)
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0016)
	inc	a
	movx	@dptr,a
;	webserver.c:814: memcpy(&arp_packet[23], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_trial_arp_request_device_mac_10000_148
	movx	@dptr,a
	mov	a,#(_trial_arp_request_device_mac_10000_148 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0017)
	mov	b,a
	lcall	___memcpy
;	webserver.c:815: memcpy(&arp_packet[29], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_trial_arp_request_device_ip_10000_148
	movx	@dptr,a
	mov	a,#(_trial_arp_request_device_ip_10000_148 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001d)
	mov	b,a
	lcall	___memcpy
;	webserver.c:816: memset(&arp_packet[33], 0, 6);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0021)
	mov	b,a
	lcall	_memset
;	webserver.c:817: memcpy(&arp_packet[39], target_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_trial_arp_request_target_ip_10000_148
	movx	@dptr,a
	mov	a,#(_trial_arp_request_target_ip_10000_148 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0027)
	mov	b,a
	lcall	___memcpy
;	webserver.c:818: transmit_tcp_packet(arp_packet, 43);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x2b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_trial_arp_request_arp_packet_10001_149
	mov	b,a
;	webserver.c:819: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'packetLoop'
;------------------------------------------------------------
;plen                      Allocated with name '_packetLoop_plen_10000_151'
;ethType                   Allocated with name '_packetLoop_ethType_20000_152'
;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_155'
;------------------------------------------------------------
;	webserver.c:832: void packetLoop(void) 
;	-----------------------------------------
;	 function packetLoop
;	-----------------------------------------
_packetLoop:
;	webserver.c:834: uint16_t plen = packetReceive();
	lcall	_packetReceive
	mov	r6, dpl
	mov	r7, dph
;	webserver.c:837: if (plen > 0) {
	mov	a,r6
	orl	a,r7
	jnz	00219$
	ret
00219$:
;	webserver.c:838: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
	mov	dptr,#(_buffer + 0x000c)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x000d)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	webserver.c:839: if (ethType == ETH_TYPE_ARP) {
	cjne	r5,#0x06,00104$
	cjne	r4,#0x08,00104$
;	webserver.c:840: if (buffer[21] == 0x01) {
	mov	dptr,#(_buffer + 0x0015)
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x01,00102$
;	webserver.c:841: makeArpReply();
;	webserver.c:843: return;
	ljmp	_makeArpReply
00102$:
	ret
00104$:
;	webserver.c:846: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP) {
	cjne	r5,#0x00,00224$
	cjne	r4,#0x08,00224$
	sjmp	00225$
00224$:
	ret
00225$:
	mov	dptr,#(_buffer + 0x0017)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x06,00226$
	sjmp	00227$
00226$:
	ret
00227$:
;	webserver.c:847: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
	mov	dptr,#(_buffer + 0x002f)
	movx	a,@dptr
;	webserver.c:850: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
	mov	r5,a
	jnb	acc.4,00106$
	mov	a,r5
	jnb	acc.0,00106$
;	webserver.c:851: printf("TCP(ACK_FIN) packet detected\n\r");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	webserver.c:852: makeTcpAck3(); // Send an acknowledgment
	lcall	_makeTcpAck3
;	webserver.c:853: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	webserver.c:855: return;
	ret
00106$:
;	webserver.c:857: if ((tcpFlags & TCP_FLAG_SYN)) {
	mov	a,r5
	jnb	acc.1,00109$
;	webserver.c:858: printf("TCP(SYN) packet detected\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	webserver.c:860: connectionState = LISTEN;
	mov	dptr,#_connectionState
	clr	a
	movx	@dptr,a
00109$:
;	webserver.c:863: switch (connectionState) {
	mov	dptr,#_connectionState
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x05
	jnc	00231$
	ret
00231$:
	mov	a,r4
	add	a,r4
	add	a,r4
	mov	dptr,#00232$
	jmp	@a+dptr
00232$:
	ljmp	00110$
	ljmp	00113$
	ljmp	00116$
	ljmp	00122$
	ljmp	00133$
	ljmp	00125$
;	webserver.c:864: case LISTEN:
00110$:
;	webserver.c:865: printf("listen\n\r");
	push	ar5
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
	pop	ar5
;	webserver.c:866: if (tcpFlags & TCP_FLAG_SYN)
	mov	a,r5
	jb	acc.1,00233$
	ret
00233$:
;	webserver.c:867: makeTcpSynAck();
;	webserver.c:868: break;
	ljmp	_makeTcpSynAck
;	webserver.c:869: case SYN_RECEIVED:
00113$:
;	webserver.c:870: printf("syn received\n\r");
	push	ar5
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	webserver.c:871: if (tcpFlags & TCP_FLAG_ACK)
	mov	a,r5
	jnb	acc.4,00133$
;	webserver.c:872: connectionState = ESTABLISHED;
	mov	dptr,#_connectionState
	mov	a,#0x02
	movx	@dptr,a
;	webserver.c:873: break;
;	webserver.c:874: case ESTABLISHED:
	ret
00116$:
;	webserver.c:875: printf("established\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	webserver.c:876: if (tcpFlags & TCP_FLAG_FIN) {
	mov	a,r5
	jnb	acc.0,00120$
;	webserver.c:877: makeTcpAck();
	lcall	_makeTcpAck
;	webserver.c:878: connectionState = FIN_WAIT;
	mov	dptr,#_connectionState
	mov	a,#0x03
	movx	@dptr,a
	ret
00120$:
;	webserver.c:879: } else if (plen > TCP_DATA_START_P) {
	clr	c
	mov	a,#0x36
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00133$
;	webserver.c:880: makeTcpAck2();
;	webserver.c:883: break;
;	webserver.c:884: case FIN_WAIT:
	ljmp	_makeTcpAck2
00122$:
;	webserver.c:885: printf("fin wait\n\r");
	push	ar5
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	webserver.c:886: if (tcpFlags & TCP_FLAG_ACK)
	mov	a,r5
	jnb	acc.4,00133$
;	webserver.c:887: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	webserver.c:888: break;
;	webserver.c:889: case ACK_SENT:
	ret
00125$:
;	webserver.c:890: makeTcpFinPshAck();
	lcall	_makeTcpFinPshAck
;	webserver.c:891: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	webserver.c:895: }
00133$:
;	webserver.c:898: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "trialarpreply"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "HTTP/1.1 200 OK"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Type: text/html"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Length: 530"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
	.ascii "meta name='viewport' content='width=device-width, initial-sc"
	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
	.ascii "r of microcontrollers and Ethernet communication. By leverag"
	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
	.ascii " controller, we can serve dynamic web pages and control embe"
	.ascii "dded devices remotely. The server allows seamless communicat"
	.ascii "ion between hardware and software, enabling real-time data e"
	.ascii "xchange across the network.</p></body></html>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "makeTcpFinPshAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "makeTcpAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "makeTcpSynAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "HTTP/1.1 200 OK"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Type: text/html"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Length: 530"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
	.ascii "meta name='viewport' content='width=device-width, initial-sc"
	.ascii "ale=1.0'><title>Electronics Tree</title><style>body {font-fa"
	.ascii "mily: Arial, sans-serif; background-color: #f0f0f0; text-ali"
	.ascii "gn: center; padding: 20px;}h1 {color: #333333;}p {color: #66"
	.ascii "6666;}</style></head><body><h1>ESD FALL 2024</h1><p>Welcome "
	.ascii "to Electronics Tree, where our name isn't just a title"
	.db 0xef
	.db 0xbf
	.db 0xbd
	.ascii "it's a commitment to practical growth in your knowledge and "
	.ascii "skills. Think of it like planting a seed.</p></body></html>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "httpresponse"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "tcpack"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "refresharp"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "TCP(ACK_FIN) packet detected"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "TCP(SYN) packet detected"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "listen"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "syn received"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "established"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "fin wait"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__connectionState:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
