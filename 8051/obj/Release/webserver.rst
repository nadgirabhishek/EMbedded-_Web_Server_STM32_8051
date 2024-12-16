                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module webserver
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _makeTcpAck2
                                     12 	.globl _makeTcpAck3
                                     13 	.globl _makeTcpFinPshAck
                                     14 	.globl _calculateTcpChecksum
                                     15 	.globl _calculateIPChecksum
                                     16 	.globl ___memcpy
                                     17 	.globl _strlen
                                     18 	.globl _memset
                                     19 	.globl _memmove
                                     20 	.globl _printf
                                     21 	.globl _transmit_tcp_packet
                                     22 	.globl _enc_eth_read
                                     23 	.globl _enc_buffer_read
                                     24 	.globl _enc_control_write
                                     25 	.globl _P5_7
                                     26 	.globl _P5_6
                                     27 	.globl _P5_5
                                     28 	.globl _P5_4
                                     29 	.globl _P5_3
                                     30 	.globl _P5_2
                                     31 	.globl _P5_1
                                     32 	.globl _P5_0
                                     33 	.globl _P4_7
                                     34 	.globl _P4_6
                                     35 	.globl _P4_5
                                     36 	.globl _P4_4
                                     37 	.globl _P4_3
                                     38 	.globl _P4_2
                                     39 	.globl _P4_1
                                     40 	.globl _P4_0
                                     41 	.globl _PX0L
                                     42 	.globl _PT0L
                                     43 	.globl _PX1L
                                     44 	.globl _PT1L
                                     45 	.globl _PSL
                                     46 	.globl _PT2L
                                     47 	.globl _PPCL
                                     48 	.globl _EC
                                     49 	.globl _CCF0
                                     50 	.globl _CCF1
                                     51 	.globl _CCF2
                                     52 	.globl _CCF3
                                     53 	.globl _CCF4
                                     54 	.globl _CR
                                     55 	.globl _CF
                                     56 	.globl _TF2
                                     57 	.globl _EXF2
                                     58 	.globl _RCLK
                                     59 	.globl _TCLK
                                     60 	.globl _EXEN2
                                     61 	.globl _TR2
                                     62 	.globl _C_T2
                                     63 	.globl _CP_RL2
                                     64 	.globl _T2CON_7
                                     65 	.globl _T2CON_6
                                     66 	.globl _T2CON_5
                                     67 	.globl _T2CON_4
                                     68 	.globl _T2CON_3
                                     69 	.globl _T2CON_2
                                     70 	.globl _T2CON_1
                                     71 	.globl _T2CON_0
                                     72 	.globl _PT2
                                     73 	.globl _ET2
                                     74 	.globl _CY
                                     75 	.globl _AC
                                     76 	.globl _F0
                                     77 	.globl _RS1
                                     78 	.globl _RS0
                                     79 	.globl _OV
                                     80 	.globl _F1
                                     81 	.globl _P
                                     82 	.globl _PS
                                     83 	.globl _PT1
                                     84 	.globl _PX1
                                     85 	.globl _PT0
                                     86 	.globl _PX0
                                     87 	.globl _RD
                                     88 	.globl _WR
                                     89 	.globl _T1
                                     90 	.globl _T0
                                     91 	.globl _INT1
                                     92 	.globl _INT0
                                     93 	.globl _TXD
                                     94 	.globl _RXD
                                     95 	.globl _P3_7
                                     96 	.globl _P3_6
                                     97 	.globl _P3_5
                                     98 	.globl _P3_4
                                     99 	.globl _P3_3
                                    100 	.globl _P3_2
                                    101 	.globl _P3_1
                                    102 	.globl _P3_0
                                    103 	.globl _EA
                                    104 	.globl _ES
                                    105 	.globl _ET1
                                    106 	.globl _EX1
                                    107 	.globl _ET0
                                    108 	.globl _EX0
                                    109 	.globl _P2_7
                                    110 	.globl _P2_6
                                    111 	.globl _P2_5
                                    112 	.globl _P2_4
                                    113 	.globl _P2_3
                                    114 	.globl _P2_2
                                    115 	.globl _P2_1
                                    116 	.globl _P2_0
                                    117 	.globl _SM0
                                    118 	.globl _SM1
                                    119 	.globl _SM2
                                    120 	.globl _REN
                                    121 	.globl _TB8
                                    122 	.globl _RB8
                                    123 	.globl _TI
                                    124 	.globl _RI
                                    125 	.globl _P1_7
                                    126 	.globl _P1_6
                                    127 	.globl _P1_5
                                    128 	.globl _P1_4
                                    129 	.globl _P1_3
                                    130 	.globl _P1_2
                                    131 	.globl _P1_1
                                    132 	.globl _P1_0
                                    133 	.globl _TF1
                                    134 	.globl _TR1
                                    135 	.globl _TF0
                                    136 	.globl _TR0
                                    137 	.globl _IE1
                                    138 	.globl _IT1
                                    139 	.globl _IE0
                                    140 	.globl _IT0
                                    141 	.globl _P0_7
                                    142 	.globl _P0_6
                                    143 	.globl _P0_5
                                    144 	.globl _P0_4
                                    145 	.globl _P0_3
                                    146 	.globl _P0_2
                                    147 	.globl _P0_1
                                    148 	.globl _P0_0
                                    149 	.globl _EECON
                                    150 	.globl _KBF
                                    151 	.globl _KBE
                                    152 	.globl _KBLS
                                    153 	.globl _BRL
                                    154 	.globl _BDRCON
                                    155 	.globl _T2MOD
                                    156 	.globl _SPDAT
                                    157 	.globl _SPSTA
                                    158 	.globl _SPCON
                                    159 	.globl _SADEN
                                    160 	.globl _SADDR
                                    161 	.globl _WDTPRG
                                    162 	.globl _WDTRST
                                    163 	.globl _P5
                                    164 	.globl _P4
                                    165 	.globl _IPH1
                                    166 	.globl _IPL1
                                    167 	.globl _IPH0
                                    168 	.globl _IPL0
                                    169 	.globl _IEN1
                                    170 	.globl _IEN0
                                    171 	.globl _CMOD
                                    172 	.globl _CL
                                    173 	.globl _CH
                                    174 	.globl _CCON
                                    175 	.globl _CCAPM4
                                    176 	.globl _CCAPM3
                                    177 	.globl _CCAPM2
                                    178 	.globl _CCAPM1
                                    179 	.globl _CCAPM0
                                    180 	.globl _CCAP4L
                                    181 	.globl _CCAP3L
                                    182 	.globl _CCAP2L
                                    183 	.globl _CCAP1L
                                    184 	.globl _CCAP0L
                                    185 	.globl _CCAP4H
                                    186 	.globl _CCAP3H
                                    187 	.globl _CCAP2H
                                    188 	.globl _CCAP1H
                                    189 	.globl _CCAP0H
                                    190 	.globl _CKCON1
                                    191 	.globl _CKCON0
                                    192 	.globl _CKRL
                                    193 	.globl _AUXR1
                                    194 	.globl _AUXR
                                    195 	.globl _TH2
                                    196 	.globl _TL2
                                    197 	.globl _RCAP2H
                                    198 	.globl _RCAP2L
                                    199 	.globl _T2CON
                                    200 	.globl _B
                                    201 	.globl _ACC
                                    202 	.globl _PSW
                                    203 	.globl _IP
                                    204 	.globl _P3
                                    205 	.globl _IE
                                    206 	.globl _P2
                                    207 	.globl _SBUF
                                    208 	.globl _SCON
                                    209 	.globl _P1
                                    210 	.globl _TH1
                                    211 	.globl _TH0
                                    212 	.globl _TL1
                                    213 	.globl _TL0
                                    214 	.globl _TMOD
                                    215 	.globl _TCON
                                    216 	.globl _PCON
                                    217 	.globl _DPH
                                    218 	.globl _DPL
                                    219 	.globl _SP
                                    220 	.globl _P0
                                    221 	.globl _connectionState
                                    222 	.globl _prevAck
                                    223 	.globl _prevSeq
                                    224 	.globl _buffer
                                    225 	.globl _packetReceive
                                    226 	.globl _makeArpReply
                                    227 	.globl _makeTcpSynAck
                                    228 	.globl _makeHttpResponse
                                    229 	.globl _makeTcpAck
                                    230 	.globl _trial_arp_request
                                    231 	.globl _packetLoop
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0	=	0x0080
                           000081   238 _SP	=	0x0081
                           000082   239 _DPL	=	0x0082
                           000083   240 _DPH	=	0x0083
                           000087   241 _PCON	=	0x0087
                           000088   242 _TCON	=	0x0088
                           000089   243 _TMOD	=	0x0089
                           00008A   244 _TL0	=	0x008a
                           00008B   245 _TL1	=	0x008b
                           00008C   246 _TH0	=	0x008c
                           00008D   247 _TH1	=	0x008d
                           000090   248 _P1	=	0x0090
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           0000A0   251 _P2	=	0x00a0
                           0000A8   252 _IE	=	0x00a8
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 _IP	=	0x00b8
                           0000D0   255 _PSW	=	0x00d0
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P0_0	=	0x0080
                           000081   315 _P0_1	=	0x0081
                           000082   316 _P0_2	=	0x0082
                           000083   317 _P0_3	=	0x0083
                           000084   318 _P0_4	=	0x0084
                           000085   319 _P0_5	=	0x0085
                           000086   320 _P0_6	=	0x0086
                           000087   321 _P0_7	=	0x0087
                           000088   322 _IT0	=	0x0088
                           000089   323 _IE0	=	0x0089
                           00008A   324 _IT1	=	0x008a
                           00008B   325 _IE1	=	0x008b
                           00008C   326 _TR0	=	0x008c
                           00008D   327 _TF0	=	0x008d
                           00008E   328 _TR1	=	0x008e
                           00008F   329 _TF1	=	0x008f
                           000090   330 _P1_0	=	0x0090
                           000091   331 _P1_1	=	0x0091
                           000092   332 _P1_2	=	0x0092
                           000093   333 _P1_3	=	0x0093
                           000094   334 _P1_4	=	0x0094
                           000095   335 _P1_5	=	0x0095
                           000096   336 _P1_6	=	0x0096
                           000097   337 _P1_7	=	0x0097
                           000098   338 _RI	=	0x0098
                           000099   339 _TI	=	0x0099
                           00009A   340 _RB8	=	0x009a
                           00009B   341 _TB8	=	0x009b
                           00009C   342 _REN	=	0x009c
                           00009D   343 _SM2	=	0x009d
                           00009E   344 _SM1	=	0x009e
                           00009F   345 _SM0	=	0x009f
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000A8   354 _EX0	=	0x00a8
                           0000A9   355 _ET0	=	0x00a9
                           0000AA   356 _EX1	=	0x00aa
                           0000AB   357 _ET1	=	0x00ab
                           0000AC   358 _ES	=	0x00ac
                           0000AF   359 _EA	=	0x00af
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B1   369 _TXD	=	0x00b1
                           0000B2   370 _INT0	=	0x00b2
                           0000B3   371 _INT1	=	0x00b3
                           0000B4   372 _T0	=	0x00b4
                           0000B5   373 _T1	=	0x00b5
                           0000B6   374 _WR	=	0x00b6
                           0000B7   375 _RD	=	0x00b7
                           0000B8   376 _PX0	=	0x00b8
                           0000B9   377 _PT0	=	0x00b9
                           0000BA   378 _PX1	=	0x00ba
                           0000BB   379 _PT1	=	0x00bb
                           0000BC   380 _PS	=	0x00bc
                           0000D0   381 _P	=	0x00d0
                           0000D1   382 _F1	=	0x00d1
                           0000D2   383 _OV	=	0x00d2
                           0000D3   384 _RS0	=	0x00d3
                           0000D4   385 _RS1	=	0x00d4
                           0000D5   386 _F0	=	0x00d5
                           0000D6   387 _AC	=	0x00d6
                           0000D7   388 _CY	=	0x00d7
                           0000AD   389 _ET2	=	0x00ad
                           0000BD   390 _PT2	=	0x00bd
                           0000C8   391 _T2CON_0	=	0x00c8
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 _T2CON_2	=	0x00ca
                           0000CB   394 _T2CON_3	=	0x00cb
                           0000CC   395 _T2CON_4	=	0x00cc
                           0000CD   396 _T2CON_5	=	0x00cd
                           0000CE   397 _T2CON_6	=	0x00ce
                           0000CF   398 _T2CON_7	=	0x00cf
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000DF   407 _CF	=	0x00df
                           0000DE   408 _CR	=	0x00de
                           0000DC   409 _CCF4	=	0x00dc
                           0000DB   410 _CCF3	=	0x00db
                           0000DA   411 _CCF2	=	0x00da
                           0000D9   412 _CCF1	=	0x00d9
                           0000D8   413 _CCF0	=	0x00d8
                           0000AE   414 _EC	=	0x00ae
                           0000BE   415 _PPCL	=	0x00be
                           0000BD   416 _PT2L	=	0x00bd
                           0000BC   417 _PSL	=	0x00bc
                           0000BB   418 _PT1L	=	0x00bb
                           0000BA   419 _PX1L	=	0x00ba
                           0000B9   420 _PT0L	=	0x00b9
                           0000B8   421 _PX0L	=	0x00b8
                           0000C0   422 _P4_0	=	0x00c0
                           0000C1   423 _P4_1	=	0x00c1
                           0000C2   424 _P4_2	=	0x00c2
                           0000C3   425 _P4_3	=	0x00c3
                           0000C4   426 _P4_4	=	0x00c4
                           0000C5   427 _P4_5	=	0x00c5
                           0000C6   428 _P4_6	=	0x00c6
                           0000C7   429 _P4_7	=	0x00c7
                           0000E8   430 _P5_0	=	0x00e8
                           0000E9   431 _P5_1	=	0x00e9
                           0000EA   432 _P5_2	=	0x00ea
                           0000EB   433 _P5_3	=	0x00eb
                           0000EC   434 _P5_4	=	0x00ec
                           0000ED   435 _P5_5	=	0x00ed
                           0000EE   436 _P5_6	=	0x00ee
                           0000EF   437 _P5_7	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
      000021                        447 _makeTcpAck3_sloc0_1_0:
      000021                        448 	.ds 4
      000025                        449 _makeTcpAck2_sloc0_1_0:
      000025                        450 	.ds 2
      000027                        451 _makeTcpAck2_sloc1_1_0:
      000027                        452 	.ds 4
      00002B                        453 _makeTcpAck2_sloc2_1_0:
      00002B                        454 	.ds 4
      00002F                        455 _makeTcpSynAck_sloc0_1_0:
      00002F                        456 	.ds 4
      000033                        457 _makeHttpResponse_sloc0_1_0:
      000033                        458 	.ds 2
      000035                        459 _makeHttpResponse_sloc1_1_0:
      000035                        460 	.ds 4
      000039                        461 _makeHttpResponse_sloc2_1_0:
      000039                        462 	.ds 4
      00003D                        463 _makeHttpResponse_sloc3_1_0:
      00003D                        464 	.ds 4
      000041                        465 _makeHttpResponse_sloc4_1_0:
      000041                        466 	.ds 4
      000045                        467 _makeHttpResponse_sloc5_1_0:
      000045                        468 	.ds 2
                                    469 ;--------------------------------------------------------
                                    470 ; overlayable items in internal ram
                                    471 ;--------------------------------------------------------
                                    472 	.area	OSEG    (OVR,DATA)
      000047                        473 _calculateIPChecksum_sloc0_1_0:
      000047                        474 	.ds 2
      000049                        475 _calculateIPChecksum_sloc1_1_0:
      000049                        476 	.ds 4
                                    477 	.area	OSEG    (OVR,DATA)
      000047                        478 _calculateTcpChecksum_sloc0_1_0:
      000047                        479 	.ds 1
      000048                        480 _calculateTcpChecksum_sloc1_1_0:
      000048                        481 	.ds 3
      00004B                        482 _calculateTcpChecksum_sloc2_1_0:
      00004B                        483 	.ds 4
      00004F                        484 _calculateTcpChecksum_sloc3_1_0:
      00004F                        485 	.ds 4
      000053                        486 _calculateTcpChecksum_sloc4_1_0:
      000053                        487 	.ds 4
                                    488 ;--------------------------------------------------------
                                    489 ; indirectly addressable internal ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area ISEG    (DATA)
                                    492 ;--------------------------------------------------------
                                    493 ; absolute internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area IABS    (ABS,DATA)
                                    496 	.area IABS    (ABS,DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; bit data
                                    499 ;--------------------------------------------------------
                                    500 	.area BSEG    (BIT)
                                    501 ;--------------------------------------------------------
                                    502 ; paged external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area PSEG    (PAG,XDATA)
                                    505 ;--------------------------------------------------------
                                    506 ; uninitialized external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XSEG    (XDATA)
      0001A7                        509 _buffer::
      0001A7                        510 	.ds 1500
      000783                        511 _prevSeq::
      000783                        512 	.ds 4
      000787                        513 _prevAck::
      000787                        514 	.ds 4
      00078B                        515 _packetReceive_device_mac_10000_90:
      00078B                        516 	.ds 6
      000791                        517 _packetReceive_target_mac_10000_90:
      000791                        518 	.ds 6
      000797                        519 _packetReceive_device_ip_10000_90:
      000797                        520 	.ds 4
      00079B                        521 _packetReceive_target_ip_10000_90:
      00079B                        522 	.ds 4
      00079F                        523 _packetReceive_gNextPacketPtr_10000_90:
      00079F                        524 	.ds 2
      0007A1                        525 _packetReceive_unreleasedPacket_10000_90:
      0007A1                        526 	.ds 1
      0007A2                        527 _packetReceive_len_10000_90:
      0007A2                        528 	.ds 2
      0007A4                        529 _packetReceive_header_20002_96:
      0007A4                        530 	.ds 6
      0007AA                        531 _packetReceive_start_20003_97:
      0007AA                        532 	.ds 2
      0007AC                        533 _makeArpReply_device_mac_10000_100:
      0007AC                        534 	.ds 6
      0007B2                        535 _makeArpReply_target_mac_10000_100:
      0007B2                        536 	.ds 6
      0007B8                        537 _makeArpReply_device_ip_10000_100:
      0007B8                        538 	.ds 4
      0007BC                        539 _makeArpReply_target_ip_10000_100:
      0007BC                        540 	.ds 4
      0007C0                        541 _calculateIPChecksum_buffer_10000_101:
      0007C0                        542 	.ds 3
      0007C3                        543 _calculateIPChecksum_sum_10001_103:
      0007C3                        544 	.ds 4
      0007C7                        545 _calculateIPChecksum_i_20001_104:
      0007C7                        546 	.ds 2
      0007C9                        547 _calculateTcpChecksum_buffer_10000_108:
      0007C9                        548 	.ds 3
      0007CC                        549 _calculateTcpChecksum_sum_10001_110:
      0007CC                        550 	.ds 4
      0007D0                        551 _calculateTcpChecksum_i_20001_115:
      0007D0                        552 	.ds 2
      0007D2                        553 _makeTcpFinPshAck_device_mac_10000_120:
      0007D2                        554 	.ds 6
      0007D8                        555 _makeTcpFinPshAck_target_mac_10000_120:
      0007D8                        556 	.ds 6
      0007DE                        557 _makeTcpFinPshAck_device_ip_10000_120:
      0007DE                        558 	.ds 4
      0007E2                        559 _makeTcpFinPshAck_target_ip_10000_120:
      0007E2                        560 	.ds 4
      0007E6                        561 _makeTcpFinPshAck_serverSeqNum_10002_122:
      0007E6                        562 	.ds 4
      0007EA                        563 _makeTcpFinPshAck_ackNum_10002_122:
      0007EA                        564 	.ds 4
      0007EE                        565 _makeTcpAck3_device_mac_10000_125:
      0007EE                        566 	.ds 6
      0007F4                        567 _makeTcpAck3_target_mac_10000_125:
      0007F4                        568 	.ds 6
      0007FA                        569 _makeTcpAck3_device_ip_10000_125:
      0007FA                        570 	.ds 4
      0007FE                        571 _makeTcpAck3_target_ip_10000_125:
      0007FE                        572 	.ds 4
      000802                        573 _makeTcpAck2_device_mac_10000_130:
      000802                        574 	.ds 6
      000808                        575 _makeTcpAck2_target_mac_10000_130:
      000808                        576 	.ds 6
      00080E                        577 _makeTcpAck2_device_ip_10000_130:
      00080E                        578 	.ds 4
      000812                        579 _makeTcpAck2_target_ip_10000_130:
      000812                        580 	.ds 4
      000816                        581 _makeTcpSynAck_device_mac_10000_135:
      000816                        582 	.ds 6
      00081C                        583 _makeTcpSynAck_target_mac_10000_135:
      00081C                        584 	.ds 6
      000822                        585 _makeTcpSynAck_device_ip_10000_135:
      000822                        586 	.ds 4
      000826                        587 _makeTcpSynAck_target_ip_10000_135:
      000826                        588 	.ds 4
      00082A                        589 _makeHttpResponse_device_mac_10000_140:
      00082A                        590 	.ds 6
      000830                        591 _makeHttpResponse_target_mac_10000_140:
      000830                        592 	.ds 6
      000836                        593 _makeHttpResponse_device_ip_10000_140:
      000836                        594 	.ds 4
      00083A                        595 _makeHttpResponse_target_ip_10000_140:
      00083A                        596 	.ds 4
      00083E                        597 _makeTcpAck_device_mac_10000_146:
      00083E                        598 	.ds 6
      000844                        599 _makeTcpAck_target_mac_10000_146:
      000844                        600 	.ds 6
      00084A                        601 _makeTcpAck_device_ip_10000_146:
      00084A                        602 	.ds 4
      00084E                        603 _makeTcpAck_target_ip_10000_146:
      00084E                        604 	.ds 4
      000852                        605 _trial_arp_request_device_mac_10000_148:
      000852                        606 	.ds 6
      000858                        607 _trial_arp_request_target_mac_10000_148:
      000858                        608 	.ds 6
      00085E                        609 _trial_arp_request_device_ip_10000_148:
      00085E                        610 	.ds 4
      000862                        611 _trial_arp_request_target_ip_10000_148:
      000862                        612 	.ds 4
      000866                        613 _trial_arp_request_arp_packet_10001_149:
      000866                        614 	.ds 43
                                    615 ;--------------------------------------------------------
                                    616 ; absolute external ram data
                                    617 ;--------------------------------------------------------
                                    618 	.area XABS    (ABS,XDATA)
                                    619 ;--------------------------------------------------------
                                    620 ; initialized external ram data
                                    621 ;--------------------------------------------------------
                                    622 	.area XISEG   (XDATA)
      0008DE                        623 _connectionState::
      0008DE                        624 	.ds 1
                                    625 	.area HOME    (CODE)
                                    626 	.area GSINIT0 (CODE)
                                    627 	.area GSINIT1 (CODE)
                                    628 	.area GSINIT2 (CODE)
                                    629 	.area GSINIT3 (CODE)
                                    630 	.area GSINIT4 (CODE)
                                    631 	.area GSINIT5 (CODE)
                                    632 	.area GSINIT  (CODE)
                                    633 	.area GSFINAL (CODE)
                                    634 	.area CSEG    (CODE)
                                    635 ;--------------------------------------------------------
                                    636 ; global & static initialisations
                                    637 ;--------------------------------------------------------
                                    638 	.area HOME    (CODE)
                                    639 	.area GSINIT  (CODE)
                                    640 	.area GSFINAL (CODE)
                                    641 	.area GSINIT  (CODE)
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'packetReceive'
                                    644 ;------------------------------------------------------------
                                    645 ;device_mac                Allocated with name '_packetReceive_device_mac_10000_90'
                                    646 ;target_mac                Allocated with name '_packetReceive_target_mac_10000_90'
                                    647 ;device_ip                 Allocated with name '_packetReceive_device_ip_10000_90'
                                    648 ;target_ip                 Allocated with name '_packetReceive_target_ip_10000_90'
                                    649 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_90'
                                    650 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_90'
                                    651 ;len                       Allocated with name '_packetReceive_len_10000_90'
                                    652 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_92'
                                    653 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_94'
                                    654 ;header                    Allocated with name '_packetReceive_header_20002_96'
                                    655 ;start                     Allocated with name '_packetReceive_start_20003_97'
                                    656 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_98'
                                    657 ;------------------------------------------------------------
                                    658 ;	webserver.c:66: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      00208D 90 07 9F         [24]  659 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      002090 E4               [12]  660 	clr	a
      002091 F0               [24]  661 	movx	@dptr,a
      002092 A3               [24]  662 	inc	dptr
      002093 F0               [24]  663 	movx	@dptr,a
                                    664 ;	webserver.c:67: static bool unreleasedPacket = false;
      002094 90 07 A1         [24]  665 	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
      002097 F0               [24]  666 	movx	@dptr,a
                                    667 ;--------------------------------------------------------
                                    668 ; Home
                                    669 ;--------------------------------------------------------
                                    670 	.area HOME    (CODE)
                                    671 	.area HOME    (CODE)
                                    672 ;--------------------------------------------------------
                                    673 ; code
                                    674 ;--------------------------------------------------------
                                    675 	.area CSEG    (CODE)
                                    676 ;------------------------------------------------------------
                                    677 ;Allocation info for local variables in function 'packetReceive'
                                    678 ;------------------------------------------------------------
                                    679 ;device_mac                Allocated with name '_packetReceive_device_mac_10000_90'
                                    680 ;target_mac                Allocated with name '_packetReceive_target_mac_10000_90'
                                    681 ;device_ip                 Allocated with name '_packetReceive_device_ip_10000_90'
                                    682 ;target_ip                 Allocated with name '_packetReceive_target_ip_10000_90'
                                    683 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_90'
                                    684 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_90'
                                    685 ;len                       Allocated with name '_packetReceive_len_10000_90'
                                    686 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_92'
                                    687 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_94'
                                    688 ;header                    Allocated with name '_packetReceive_header_20002_96'
                                    689 ;start                     Allocated with name '_packetReceive_start_20003_97'
                                    690 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_98'
                                    691 ;------------------------------------------------------------
                                    692 ;	webserver.c:60: uint16_t packetReceive(void) 
                                    693 ;	-----------------------------------------
                                    694 ;	 function packetReceive
                                    695 ;	-----------------------------------------
      003522                        696 _packetReceive:
                           000007   697 	ar7 = 0x07
                           000006   698 	ar6 = 0x06
                           000005   699 	ar5 = 0x05
                           000004   700 	ar4 = 0x04
                           000003   701 	ar3 = 0x03
                           000002   702 	ar2 = 0x02
                           000001   703 	ar1 = 0x01
                           000000   704 	ar0 = 0x00
                                    705 ;	webserver.c:62: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      003522 90 07 8B         [24]  706 	mov	dptr,#_packetReceive_device_mac_10000_90
      003525 74 02            [12]  707 	mov	a,#0x02
      003527 F0               [24]  708 	movx	@dptr,a
      003528 90 07 8C         [24]  709 	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0001)
      00352B 23               [12]  710 	rl	a
      00352C F0               [24]  711 	movx	@dptr,a
      00352D 90 07 8D         [24]  712 	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0002)
      003530 74 A3            [12]  713 	mov	a,#0xa3
      003532 F0               [24]  714 	movx	@dptr,a
      003533 90 07 8E         [24]  715 	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0003)
      003536 74 3C            [12]  716 	mov	a,#0x3c
      003538 F0               [24]  717 	movx	@dptr,a
      003539 90 07 8F         [24]  718 	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0004)
      00353C 74 4D            [12]  719 	mov	a,#0x4d
      00353E F0               [24]  720 	movx	@dptr,a
      00353F 90 07 90         [24]  721 	mov	dptr,#(_packetReceive_device_mac_10000_90 + 0x0005)
      003542 74 50            [12]  722 	mov	a,#0x50
      003544 F0               [24]  723 	movx	@dptr,a
                                    724 ;	webserver.c:63: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      003545 90 07 91         [24]  725 	mov	dptr,#_packetReceive_target_mac_10000_90
      003548 74 FF            [12]  726 	mov	a,#0xff
      00354A F0               [24]  727 	movx	@dptr,a
      00354B 90 07 92         [24]  728 	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0001)
      00354E F0               [24]  729 	movx	@dptr,a
      00354F 90 07 93         [24]  730 	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0002)
      003552 F0               [24]  731 	movx	@dptr,a
      003553 90 07 94         [24]  732 	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0003)
      003556 F0               [24]  733 	movx	@dptr,a
      003557 90 07 95         [24]  734 	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0004)
      00355A F0               [24]  735 	movx	@dptr,a
      00355B 90 07 96         [24]  736 	mov	dptr,#(_packetReceive_target_mac_10000_90 + 0x0005)
      00355E F0               [24]  737 	movx	@dptr,a
                                    738 ;	webserver.c:64: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      00355F 90 07 97         [24]  739 	mov	dptr,#_packetReceive_device_ip_10000_90
      003562 74 C0            [12]  740 	mov	a,#0xc0
      003564 F0               [24]  741 	movx	@dptr,a
      003565 90 07 98         [24]  742 	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0001)
      003568 74 A8            [12]  743 	mov	a,#0xa8
      00356A F0               [24]  744 	movx	@dptr,a
      00356B 90 07 99         [24]  745 	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0002)
      00356E 74 01            [12]  746 	mov	a,#0x01
      003570 F0               [24]  747 	movx	@dptr,a
      003571 90 07 9A         [24]  748 	mov	dptr,#(_packetReceive_device_ip_10000_90 + 0x0003)
      003574 74 64            [12]  749 	mov	a,#0x64
      003576 F0               [24]  750 	movx	@dptr,a
                                    751 ;	webserver.c:65: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      003577 90 07 9B         [24]  752 	mov	dptr,#_packetReceive_target_ip_10000_90
      00357A 74 C0            [12]  753 	mov	a,#0xc0
      00357C F0               [24]  754 	movx	@dptr,a
      00357D 90 07 9C         [24]  755 	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0001)
      003580 74 A8            [12]  756 	mov	a,#0xa8
      003582 F0               [24]  757 	movx	@dptr,a
      003583 90 07 9D         [24]  758 	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0002)
      003586 74 01            [12]  759 	mov	a,#0x01
      003588 F0               [24]  760 	movx	@dptr,a
      003589 90 07 9E         [24]  761 	mov	dptr,#(_packetReceive_target_ip_10000_90 + 0x0003)
      00358C F0               [24]  762 	movx	@dptr,a
                                    763 ;	webserver.c:68: uint16_t len = 0;
      00358D 90 07 A2         [24]  764 	mov	dptr,#_packetReceive_len_10000_90
      003590 E4               [12]  765 	clr	a
      003591 F0               [24]  766 	movx	@dptr,a
      003592 A3               [24]  767 	inc	dptr
      003593 F0               [24]  768 	movx	@dptr,a
                                    769 ;	webserver.c:71: if (unreleasedPacket) {
      003594 90 07 A1         [24]  770 	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
      003597 E0               [24]  771 	movx	a,@dptr
      003598 70 03            [24]  772 	jnz	00145$
      00359A 02 36 0D         [24]  773 	ljmp	00105$
      00359D                        774 00145$:
                                    775 ;	webserver.c:72: if (gNextPacketPtr == 0) {
      00359D 90 07 9F         [24]  776 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      0035A0 E0               [24]  777 	movx	a,@dptr
      0035A1 FE               [12]  778 	mov	r6,a
      0035A2 A3               [24]  779 	inc	dptr
      0035A3 E0               [24]  780 	movx	a,@dptr
      0035A4 90 07 9F         [24]  781 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      0035A7 E0               [24]  782 	movx	a,@dptr
      0035A8 F5 F0            [12]  783 	mov	b,a
      0035AA A3               [24]  784 	inc	dptr
      0035AB E0               [24]  785 	movx	a,@dptr
      0035AC 45 F0            [12]  786 	orl	a,b
      0035AE 70 26            [24]  787 	jnz	00102$
                                    788 ;	webserver.c:74: enc_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
      0035B0 90 01 50         [24]  789 	mov	dptr,#_enc_control_write_PARM_2
      0035B3 74 0C            [12]  790 	mov	a,#0x0c
      0035B5 F0               [24]  791 	movx	@dptr,a
      0035B6 90 01 51         [24]  792 	mov	dptr,#_enc_control_write_PARM_3
      0035B9 74 FF            [12]  793 	mov	a,#0xff
      0035BB F0               [24]  794 	movx	@dptr,a
      0035BC 90 00 00         [24]  795 	mov	dptr,#0x0000
      0035BF 12 26 62         [24]  796 	lcall	_enc_control_write
                                    797 ;	webserver.c:75: enc_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
      0035C2 90 01 50         [24]  798 	mov	dptr,#_enc_control_write_PARM_2
      0035C5 74 0D            [12]  799 	mov	a,#0x0d
      0035C7 F0               [24]  800 	movx	@dptr,a
      0035C8 90 01 51         [24]  801 	mov	dptr,#_enc_control_write_PARM_3
      0035CB 74 1B            [12]  802 	mov	a,#0x1b
      0035CD F0               [24]  803 	movx	@dptr,a
      0035CE 90 00 00         [24]  804 	mov	dptr,#0x0000
      0035D1 12 26 62         [24]  805 	lcall	_enc_control_write
      0035D4 80 32            [24]  806 	sjmp	00103$
      0035D6                        807 00102$:
                                    808 ;	webserver.c:77: enc_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
      0035D6 1E               [12]  809 	dec	r6
      0035D7 90 01 50         [24]  810 	mov	dptr,#_enc_control_write_PARM_2
      0035DA 74 0C            [12]  811 	mov	a,#0x0c
      0035DC F0               [24]  812 	movx	@dptr,a
      0035DD 90 01 51         [24]  813 	mov	dptr,#_enc_control_write_PARM_3
      0035E0 EE               [12]  814 	mov	a,r6
      0035E1 F0               [24]  815 	movx	@dptr,a
      0035E2 90 00 00         [24]  816 	mov	dptr,#0x0000
      0035E5 12 26 62         [24]  817 	lcall	_enc_control_write
                                    818 ;	webserver.c:79: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
      0035E8 90 07 9F         [24]  819 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      0035EB E0               [24]  820 	movx	a,@dptr
      0035EC FE               [12]  821 	mov	r6,a
      0035ED A3               [24]  822 	inc	dptr
      0035EE E0               [24]  823 	movx	a,@dptr
      0035EF FF               [12]  824 	mov	r7,a
      0035F0 1E               [12]  825 	dec	r6
      0035F1 BE FF 01         [24]  826 	cjne	r6,#0xff,00147$
      0035F4 1F               [12]  827 	dec	r7
      0035F5                        828 00147$:
      0035F5 8F 06            [24]  829 	mov	ar6,r7
      0035F7 90 01 50         [24]  830 	mov	dptr,#_enc_control_write_PARM_2
      0035FA 74 0D            [12]  831 	mov	a,#0x0d
      0035FC F0               [24]  832 	movx	@dptr,a
      0035FD 90 01 51         [24]  833 	mov	dptr,#_enc_control_write_PARM_3
      003600 EE               [12]  834 	mov	a,r6
      003601 F0               [24]  835 	movx	@dptr,a
      003602 90 00 00         [24]  836 	mov	dptr,#0x0000
      003605 12 26 62         [24]  837 	lcall	_enc_control_write
      003608                        838 00103$:
                                    839 ;	webserver.c:81: unreleasedPacket = false;
      003608 90 07 A1         [24]  840 	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
      00360B E4               [12]  841 	clr	a
      00360C F0               [24]  842 	movx	@dptr,a
      00360D                        843 00105$:
                                    844 ;	webserver.c:84: uint8_t EPKTCNT = enc_eth_read(0x19, 1);
      00360D 90 01 6D         [24]  845 	mov	dptr,#_enc_eth_read_PARM_2
      003610 74 01            [12]  846 	mov	a,#0x01
      003612 F0               [24]  847 	movx	@dptr,a
      003613 75 82 19         [24]  848 	mov	dpl, #0x19
      003616 12 2C 59         [24]  849 	lcall	_enc_eth_read
      003619 E5 82            [12]  850 	mov	a, dpl
                                    851 ;	webserver.c:85: if (EPKTCNT > 0) {
      00361B 70 03            [24]  852 	jnz	00148$
      00361D 02 37 3E         [24]  853 	ljmp	00112$
      003620                        854 00148$:
                                    855 ;	webserver.c:86: enc_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
      003620 90 07 9F         [24]  856 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      003623 E0               [24]  857 	movx	a,@dptr
      003624 FE               [12]  858 	mov	r6,a
      003625 A3               [24]  859 	inc	dptr
      003626 E0               [24]  860 	movx	a,@dptr
      003627 90 01 50         [24]  861 	mov	dptr,#_enc_control_write_PARM_2
      00362A E4               [12]  862 	clr	a
      00362B F0               [24]  863 	movx	@dptr,a
      00362C 90 01 51         [24]  864 	mov	dptr,#_enc_control_write_PARM_3
      00362F EE               [12]  865 	mov	a,r6
      003630 F0               [24]  866 	movx	@dptr,a
      003631 90 00 00         [24]  867 	mov	dptr,#0x0000
      003634 12 26 62         [24]  868 	lcall	_enc_control_write
                                    869 ;	webserver.c:87: enc_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
      003637 90 07 9F         [24]  870 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      00363A E0               [24]  871 	movx	a,@dptr
      00363B A3               [24]  872 	inc	dptr
      00363C E0               [24]  873 	movx	a,@dptr
      00363D FE               [12]  874 	mov	r6,a
      00363E 90 01 50         [24]  875 	mov	dptr,#_enc_control_write_PARM_2
      003641 74 01            [12]  876 	mov	a,#0x01
      003643 F0               [24]  877 	movx	@dptr,a
      003644 90 01 51         [24]  878 	mov	dptr,#_enc_control_write_PARM_3
      003647 EE               [12]  879 	mov	a,r6
      003648 F0               [24]  880 	movx	@dptr,a
      003649 90 00 00         [24]  881 	mov	dptr,#0x0000
      00364C 12 26 62         [24]  882 	lcall	_enc_control_write
                                    883 ;	webserver.c:96: enc_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
      00364F 90 07 9F         [24]  884 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      003652 E0               [24]  885 	movx	a,@dptr
      003653 FE               [12]  886 	mov	r6,a
      003654 A3               [24]  887 	inc	dptr
      003655 E0               [24]  888 	movx	a,@dptr
      003656 FF               [12]  889 	mov	r7,a
                                    890 ;	webserver.c:97: (uint8_t*) &header);
      003657 90 01 5F         [24]  891 	mov	dptr,#_enc_buffer_read_PARM_2
      00365A EE               [12]  892 	mov	a,r6
      00365B F0               [24]  893 	movx	@dptr,a
      00365C EF               [12]  894 	mov	a,r7
      00365D A3               [24]  895 	inc	dptr
      00365E F0               [24]  896 	movx	@dptr,a
      00365F 90 01 61         [24]  897 	mov	dptr,#_enc_buffer_read_PARM_3
      003662 74 A4            [12]  898 	mov	a,#_packetReceive_header_20002_96
      003664 F0               [24]  899 	movx	@dptr,a
      003665 74 07            [12]  900 	mov	a,#(_packetReceive_header_20002_96 >> 8)
      003667 A3               [24]  901 	inc	dptr
      003668 F0               [24]  902 	movx	@dptr,a
      003669 E4               [12]  903 	clr	a
      00366A A3               [24]  904 	inc	dptr
      00366B F0               [24]  905 	movx	@dptr,a
      00366C 90 00 06         [24]  906 	mov	dptr,#0x0006
      00366F 12 29 57         [24]  907 	lcall	_enc_buffer_read
                                    908 ;	webserver.c:99: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
      003672 90 07 9F         [24]  909 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      003675 E0               [24]  910 	movx	a,@dptr
      003676 FE               [12]  911 	mov	r6,a
      003677 A3               [24]  912 	inc	dptr
      003678 E0               [24]  913 	movx	a,@dptr
      003679 FF               [12]  914 	mov	r7,a
      00367A 74 06            [12]  915 	mov	a,#0x06
      00367C 2E               [12]  916 	add	a, r6
      00367D FE               [12]  917 	mov	r6,a
      00367E E4               [12]  918 	clr	a
      00367F 3F               [12]  919 	addc	a, r7
      003680 FF               [12]  920 	mov	r7,a
      003681 90 07 AA         [24]  921 	mov	dptr,#_packetReceive_start_20003_97
      003684 EE               [12]  922 	mov	a,r6
      003685 F0               [24]  923 	movx	@dptr,a
      003686 EF               [12]  924 	mov	a,r7
      003687 A3               [24]  925 	inc	dptr
      003688 F0               [24]  926 	movx	@dptr,a
                                    927 ;	webserver.c:100: gNextPacketPtr = header.nextPacket;
      003689 90 07 A4         [24]  928 	mov	dptr,#_packetReceive_header_20002_96
      00368C E0               [24]  929 	movx	a,@dptr
      00368D FE               [12]  930 	mov	r6,a
      00368E A3               [24]  931 	inc	dptr
      00368F E0               [24]  932 	movx	a,@dptr
      003690 FF               [12]  933 	mov	r7,a
      003691 90 07 9F         [24]  934 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_90
      003694 EE               [12]  935 	mov	a,r6
      003695 F0               [24]  936 	movx	@dptr,a
      003696 EF               [12]  937 	mov	a,r7
      003697 A3               [24]  938 	inc	dptr
      003698 F0               [24]  939 	movx	@dptr,a
                                    940 ;	webserver.c:102: len = header.byteCount - 4; // Exclude CRC
      003699 90 07 A6         [24]  941 	mov	dptr,#(_packetReceive_header_20002_96 + 0x0002)
      00369C E0               [24]  942 	movx	a,@dptr
      00369D FE               [12]  943 	mov	r6,a
      00369E A3               [24]  944 	inc	dptr
      00369F E0               [24]  945 	movx	a,@dptr
      0036A0 FF               [12]  946 	mov	r7,a
      0036A1 EE               [12]  947 	mov	a,r6
      0036A2 24 FC            [12]  948 	add	a,#0xfc
      0036A4 FE               [12]  949 	mov	r6,a
      0036A5 EF               [12]  950 	mov	a,r7
      0036A6 34 FF            [12]  951 	addc	a,#0xff
      0036A8 FF               [12]  952 	mov	r7,a
      0036A9 90 07 A2         [24]  953 	mov	dptr,#_packetReceive_len_10000_90
      0036AC EE               [12]  954 	mov	a,r6
      0036AD F0               [24]  955 	movx	@dptr,a
      0036AE EF               [12]  956 	mov	a,r7
      0036AF A3               [24]  957 	inc	dptr
      0036B0 F0               [24]  958 	movx	@dptr,a
                                    959 ;	webserver.c:103: if (len > BUFFER_SIZE - 1)
      0036B1 C3               [12]  960 	clr	c
      0036B2 74 DB            [12]  961 	mov	a,#0xdb
      0036B4 9E               [12]  962 	subb	a,r6
      0036B5 74 05            [12]  963 	mov	a,#0x05
      0036B7 9F               [12]  964 	subb	a,r7
      0036B8 50 0A            [24]  965 	jnc	00107$
                                    966 ;	webserver.c:104: len = BUFFER_SIZE - 1;
      0036BA 90 07 A2         [24]  967 	mov	dptr,#_packetReceive_len_10000_90
      0036BD 74 DB            [12]  968 	mov	a,#0xdb
      0036BF F0               [24]  969 	movx	@dptr,a
      0036C0 74 05            [12]  970 	mov	a,#0x05
      0036C2 A3               [24]  971 	inc	dptr
      0036C3 F0               [24]  972 	movx	@dptr,a
      0036C4                        973 00107$:
                                    974 ;	webserver.c:106: if ((header.status & 0x80) == 0)
      0036C4 90 07 A8         [24]  975 	mov	dptr,#(_packetReceive_header_20002_96 + 0x0004)
      0036C7 E0               [24]  976 	movx	a,@dptr
      0036C8 FE               [12]  977 	mov	r6,a
      0036C9 A3               [24]  978 	inc	dptr
      0036CA E0               [24]  979 	movx	a,@dptr
      0036CB EE               [12]  980 	mov	a,r6
      0036CC 20 E7 09         [24]  981 	jb	acc.7,00109$
                                    982 ;	webserver.c:107: len = 0; // Invalid packet
      0036CF 90 07 A2         [24]  983 	mov	dptr,#_packetReceive_len_10000_90
      0036D2 E4               [12]  984 	clr	a
      0036D3 F0               [24]  985 	movx	@dptr,a
      0036D4 A3               [24]  986 	inc	dptr
      0036D5 F0               [24]  987 	movx	@dptr,a
      0036D6 80 2C            [24]  988 	sjmp	00110$
      0036D8                        989 00109$:
                                    990 ;	webserver.c:109: enc_buffer_read(len, start, buffer);
      0036D8 90 07 A2         [24]  991 	mov	dptr,#_packetReceive_len_10000_90
      0036DB E0               [24]  992 	movx	a,@dptr
      0036DC FE               [12]  993 	mov	r6,a
      0036DD A3               [24]  994 	inc	dptr
      0036DE E0               [24]  995 	movx	a,@dptr
      0036DF FF               [12]  996 	mov	r7,a
      0036E0 90 07 AA         [24]  997 	mov	dptr,#_packetReceive_start_20003_97
      0036E3 E0               [24]  998 	movx	a,@dptr
      0036E4 FC               [12]  999 	mov	r4,a
      0036E5 A3               [24] 1000 	inc	dptr
      0036E6 E0               [24] 1001 	movx	a,@dptr
      0036E7 FD               [12] 1002 	mov	r5,a
      0036E8 90 01 5F         [24] 1003 	mov	dptr,#_enc_buffer_read_PARM_2
      0036EB EC               [12] 1004 	mov	a,r4
      0036EC F0               [24] 1005 	movx	@dptr,a
      0036ED ED               [12] 1006 	mov	a,r5
      0036EE A3               [24] 1007 	inc	dptr
      0036EF F0               [24] 1008 	movx	@dptr,a
      0036F0 90 01 61         [24] 1009 	mov	dptr,#_enc_buffer_read_PARM_3
      0036F3 74 A7            [12] 1010 	mov	a,#_buffer
      0036F5 F0               [24] 1011 	movx	@dptr,a
      0036F6 74 01            [12] 1012 	mov	a,#(_buffer >> 8)
      0036F8 A3               [24] 1013 	inc	dptr
      0036F9 F0               [24] 1014 	movx	@dptr,a
      0036FA E4               [12] 1015 	clr	a
      0036FB A3               [24] 1016 	inc	dptr
      0036FC F0               [24] 1017 	movx	@dptr,a
      0036FD 8E 82            [24] 1018 	mov	dpl, r6
      0036FF 8F 83            [24] 1019 	mov	dph, r7
      003701 12 29 57         [24] 1020 	lcall	_enc_buffer_read
      003704                       1021 00110$:
                                   1022 ;	webserver.c:111: buffer[len] = 0; // Null-terminate
      003704 90 07 A2         [24] 1023 	mov	dptr,#_packetReceive_len_10000_90
      003707 E0               [24] 1024 	movx	a,@dptr
      003708 FE               [12] 1025 	mov	r6,a
      003709 A3               [24] 1026 	inc	dptr
      00370A E0               [24] 1027 	movx	a,@dptr
      00370B FF               [12] 1028 	mov	r7,a
      00370C EE               [12] 1029 	mov	a,r6
      00370D 24 A7            [12] 1030 	add	a, #_buffer
      00370F F5 82            [12] 1031 	mov	dpl,a
      003711 EF               [12] 1032 	mov	a,r7
      003712 34 01            [12] 1033 	addc	a, #(_buffer >> 8)
      003714 F5 83            [12] 1034 	mov	dph,a
      003716 E4               [12] 1035 	clr	a
      003717 F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	webserver.c:112: unreleasedPacket = true;
      003718 90 07 A1         [24] 1038 	mov	dptr,#_packetReceive_unreleasedPacket_10000_90
      00371B 04               [12] 1039 	inc	a
      00371C F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	webserver.c:114: uint8_t ECON2 = enc_eth_read(0x1E, 0);
      00371D 90 01 6D         [24] 1042 	mov	dptr,#_enc_eth_read_PARM_2
      003720 E4               [12] 1043 	clr	a
      003721 F0               [24] 1044 	movx	@dptr,a
      003722 75 82 1E         [24] 1045 	mov	dpl, #0x1e
      003725 12 2C 59         [24] 1046 	lcall	_enc_eth_read
      003728 E5 82            [12] 1047 	mov	a, dpl
                                   1048 ;	webserver.c:115: enc_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
      00372A 44 40            [12] 1049 	orl	a,#0x40
      00372C FF               [12] 1050 	mov	r7,a
      00372D 90 01 50         [24] 1051 	mov	dptr,#_enc_control_write_PARM_2
      003730 74 1E            [12] 1052 	mov	a,#0x1e
      003732 F0               [24] 1053 	movx	@dptr,a
      003733 90 01 51         [24] 1054 	mov	dptr,#_enc_control_write_PARM_3
      003736 EF               [12] 1055 	mov	a,r7
      003737 F0               [24] 1056 	movx	@dptr,a
      003738 90 00 00         [24] 1057 	mov	dptr,#0x0000
      00373B 12 26 62         [24] 1058 	lcall	_enc_control_write
      00373E                       1059 00112$:
                                   1060 ;	webserver.c:118: return len;
      00373E 90 07 A2         [24] 1061 	mov	dptr,#_packetReceive_len_10000_90
      003741 E0               [24] 1062 	movx	a,@dptr
      003742 FE               [12] 1063 	mov	r6,a
      003743 A3               [24] 1064 	inc	dptr
      003744 E0               [24] 1065 	movx	a,@dptr
                                   1066 ;	webserver.c:119: }
      003745 8E 82            [24] 1067 	mov	dpl,r6
      003747 F5 83            [12] 1068 	mov	dph,a
      003749 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'makeArpReply'
                                   1072 ;------------------------------------------------------------
                                   1073 ;device_mac                Allocated with name '_makeArpReply_device_mac_10000_100'
                                   1074 ;target_mac                Allocated with name '_makeArpReply_target_mac_10000_100'
                                   1075 ;device_ip                 Allocated with name '_makeArpReply_device_ip_10000_100'
                                   1076 ;target_ip                 Allocated with name '_makeArpReply_target_ip_10000_100'
                                   1077 ;------------------------------------------------------------
                                   1078 ;	webserver.c:130: void makeArpReply(void) 
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function makeArpReply
                                   1081 ;	-----------------------------------------
      00374A                       1082 _makeArpReply:
                                   1083 ;	webserver.c:132: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      00374A 90 07 AC         [24] 1084 	mov	dptr,#_makeArpReply_device_mac_10000_100
      00374D 74 02            [12] 1085 	mov	a,#0x02
      00374F F0               [24] 1086 	movx	@dptr,a
      003750 90 07 AD         [24] 1087 	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0001)
      003753 23               [12] 1088 	rl	a
      003754 F0               [24] 1089 	movx	@dptr,a
      003755 90 07 AE         [24] 1090 	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0002)
      003758 74 A3            [12] 1091 	mov	a,#0xa3
      00375A F0               [24] 1092 	movx	@dptr,a
      00375B 90 07 AF         [24] 1093 	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0003)
      00375E 74 3C            [12] 1094 	mov	a,#0x3c
      003760 F0               [24] 1095 	movx	@dptr,a
      003761 90 07 B0         [24] 1096 	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0004)
      003764 74 4D            [12] 1097 	mov	a,#0x4d
      003766 F0               [24] 1098 	movx	@dptr,a
      003767 90 07 B1         [24] 1099 	mov	dptr,#(_makeArpReply_device_mac_10000_100 + 0x0005)
      00376A 74 50            [12] 1100 	mov	a,#0x50
      00376C F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	webserver.c:133: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      00376D 90 07 B2         [24] 1103 	mov	dptr,#_makeArpReply_target_mac_10000_100
      003770 74 FF            [12] 1104 	mov	a,#0xff
      003772 F0               [24] 1105 	movx	@dptr,a
      003773 90 07 B3         [24] 1106 	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0001)
      003776 F0               [24] 1107 	movx	@dptr,a
      003777 90 07 B4         [24] 1108 	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0002)
      00377A F0               [24] 1109 	movx	@dptr,a
      00377B 90 07 B5         [24] 1110 	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0003)
      00377E F0               [24] 1111 	movx	@dptr,a
      00377F 90 07 B6         [24] 1112 	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0004)
      003782 F0               [24] 1113 	movx	@dptr,a
      003783 90 07 B7         [24] 1114 	mov	dptr,#(_makeArpReply_target_mac_10000_100 + 0x0005)
      003786 F0               [24] 1115 	movx	@dptr,a
                                   1116 ;	webserver.c:134: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      003787 90 07 B8         [24] 1117 	mov	dptr,#_makeArpReply_device_ip_10000_100
      00378A 74 C0            [12] 1118 	mov	a,#0xc0
      00378C F0               [24] 1119 	movx	@dptr,a
      00378D 90 07 B9         [24] 1120 	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0001)
      003790 74 A8            [12] 1121 	mov	a,#0xa8
      003792 F0               [24] 1122 	movx	@dptr,a
      003793 90 07 BA         [24] 1123 	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0002)
      003796 74 01            [12] 1124 	mov	a,#0x01
      003798 F0               [24] 1125 	movx	@dptr,a
      003799 90 07 BB         [24] 1126 	mov	dptr,#(_makeArpReply_device_ip_10000_100 + 0x0003)
      00379C 74 64            [12] 1127 	mov	a,#0x64
      00379E F0               [24] 1128 	movx	@dptr,a
                                   1129 ;	webserver.c:135: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      00379F 90 07 BC         [24] 1130 	mov	dptr,#_makeArpReply_target_ip_10000_100
      0037A2 74 C0            [12] 1131 	mov	a,#0xc0
      0037A4 F0               [24] 1132 	movx	@dptr,a
      0037A5 90 07 BD         [24] 1133 	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0001)
      0037A8 74 A8            [12] 1134 	mov	a,#0xa8
      0037AA F0               [24] 1135 	movx	@dptr,a
      0037AB 90 07 BE         [24] 1136 	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0002)
      0037AE 74 01            [12] 1137 	mov	a,#0x01
      0037B0 F0               [24] 1138 	movx	@dptr,a
      0037B1 90 07 BF         [24] 1139 	mov	dptr,#(_makeArpReply_target_ip_10000_100 + 0x0003)
      0037B4 F0               [24] 1140 	movx	@dptr,a
                                   1141 ;	webserver.c:136: printf("trialarpreply\n\r");
      0037B5 74 54            [12] 1142 	mov	a,#___str_0
      0037B7 C0 E0            [24] 1143 	push	acc
      0037B9 74 60            [12] 1144 	mov	a,#(___str_0 >> 8)
      0037BB C0 E0            [24] 1145 	push	acc
      0037BD 74 80            [12] 1146 	mov	a,#0x80
      0037BF C0 E0            [24] 1147 	push	acc
      0037C1 12 52 65         [24] 1148 	lcall	_printf
      0037C4 15 81            [12] 1149 	dec	sp
      0037C6 15 81            [12] 1150 	dec	sp
      0037C8 15 81            [12] 1151 	dec	sp
                                   1152 ;	webserver.c:138: memmove(&buffer[1], &buffer[0], 42);
      0037CA 90 08 9D         [24] 1153 	mov	dptr,#_memmove_PARM_2
      0037CD 74 A7            [12] 1154 	mov	a,#_buffer
      0037CF F0               [24] 1155 	movx	@dptr,a
      0037D0 74 01            [12] 1156 	mov	a,#(_buffer >> 8)
      0037D2 A3               [24] 1157 	inc	dptr
      0037D3 F0               [24] 1158 	movx	@dptr,a
      0037D4 E4               [12] 1159 	clr	a
      0037D5 A3               [24] 1160 	inc	dptr
      0037D6 F0               [24] 1161 	movx	@dptr,a
      0037D7 90 08 A0         [24] 1162 	mov	dptr,#_memmove_PARM_3
      0037DA 74 2A            [12] 1163 	mov	a,#0x2a
      0037DC F0               [24] 1164 	movx	@dptr,a
      0037DD E4               [12] 1165 	clr	a
      0037DE A3               [24] 1166 	inc	dptr
      0037DF F0               [24] 1167 	movx	@dptr,a
      0037E0 90 01 A8         [24] 1168 	mov	dptr,#(_buffer + 0x0001)
      0037E3 F5 F0            [12] 1169 	mov	b,a
      0037E5 12 4F B3         [24] 1170 	lcall	_memmove
                                   1171 ;	webserver.c:141: buffer[0] = 0x0E;
      0037E8 90 01 A7         [24] 1172 	mov	dptr,#_buffer
      0037EB 74 0E            [12] 1173 	mov	a,#0x0e
      0037ED F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	webserver.c:144: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
      0037EE 90 08 91         [24] 1176 	mov	dptr,#___memcpy_PARM_2
      0037F1 74 AE            [12] 1177 	mov	a,#(_buffer + 0x0007)
      0037F3 F0               [24] 1178 	movx	@dptr,a
      0037F4 74 01            [12] 1179 	mov	a,#((_buffer + 0x0007) >> 8)
      0037F6 A3               [24] 1180 	inc	dptr
      0037F7 F0               [24] 1181 	movx	@dptr,a
      0037F8 E4               [12] 1182 	clr	a
      0037F9 A3               [24] 1183 	inc	dptr
      0037FA F0               [24] 1184 	movx	@dptr,a
      0037FB 90 08 94         [24] 1185 	mov	dptr,#___memcpy_PARM_3
      0037FE 74 06            [12] 1186 	mov	a,#0x06
      003800 F0               [24] 1187 	movx	@dptr,a
      003801 E4               [12] 1188 	clr	a
      003802 A3               [24] 1189 	inc	dptr
      003803 F0               [24] 1190 	movx	@dptr,a
      003804 90 01 A8         [24] 1191 	mov	dptr,#(_buffer + 0x0001)
      003807 F5 F0            [12] 1192 	mov	b,a
      003809 12 4E FC         [24] 1193 	lcall	___memcpy
                                   1194 ;	webserver.c:147: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
      00380C 90 08 91         [24] 1195 	mov	dptr,#___memcpy_PARM_2
      00380F 74 AC            [12] 1196 	mov	a,#_makeArpReply_device_mac_10000_100
      003811 F0               [24] 1197 	movx	@dptr,a
      003812 74 07            [12] 1198 	mov	a,#(_makeArpReply_device_mac_10000_100 >> 8)
      003814 A3               [24] 1199 	inc	dptr
      003815 F0               [24] 1200 	movx	@dptr,a
      003816 E4               [12] 1201 	clr	a
      003817 A3               [24] 1202 	inc	dptr
      003818 F0               [24] 1203 	movx	@dptr,a
      003819 90 08 94         [24] 1204 	mov	dptr,#___memcpy_PARM_3
      00381C 74 06            [12] 1205 	mov	a,#0x06
      00381E F0               [24] 1206 	movx	@dptr,a
      00381F E4               [12] 1207 	clr	a
      003820 A3               [24] 1208 	inc	dptr
      003821 F0               [24] 1209 	movx	@dptr,a
      003822 90 01 AE         [24] 1210 	mov	dptr,#(_buffer + 0x0007)
      003825 F5 F0            [12] 1211 	mov	b,a
      003827 12 4E FC         [24] 1212 	lcall	___memcpy
                                   1213 ;	webserver.c:150: buffer[1 + 21] = 0x02; // ARP Reply opcode
      00382A 90 01 BD         [24] 1214 	mov	dptr,#(_buffer + 0x0016)
      00382D 74 02            [12] 1215 	mov	a,#0x02
      00382F F0               [24] 1216 	movx	@dptr,a
                                   1217 ;	webserver.c:153: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
      003830 90 08 91         [24] 1218 	mov	dptr,#___memcpy_PARM_2
      003833 74 BE            [12] 1219 	mov	a,#(_buffer + 0x0017)
      003835 F0               [24] 1220 	movx	@dptr,a
      003836 74 01            [12] 1221 	mov	a,#((_buffer + 0x0017) >> 8)
      003838 A3               [24] 1222 	inc	dptr
      003839 F0               [24] 1223 	movx	@dptr,a
      00383A E4               [12] 1224 	clr	a
      00383B A3               [24] 1225 	inc	dptr
      00383C F0               [24] 1226 	movx	@dptr,a
      00383D 90 08 94         [24] 1227 	mov	dptr,#___memcpy_PARM_3
      003840 74 06            [12] 1228 	mov	a,#0x06
      003842 F0               [24] 1229 	movx	@dptr,a
      003843 E4               [12] 1230 	clr	a
      003844 A3               [24] 1231 	inc	dptr
      003845 F0               [24] 1232 	movx	@dptr,a
      003846 90 01 C8         [24] 1233 	mov	dptr,#(_buffer + 0x0021)
      003849 F5 F0            [12] 1234 	mov	b,a
      00384B 12 4E FC         [24] 1235 	lcall	___memcpy
                                   1236 ;	webserver.c:154: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
      00384E 90 08 91         [24] 1237 	mov	dptr,#___memcpy_PARM_2
      003851 74 C4            [12] 1238 	mov	a,#(_buffer + 0x001d)
      003853 F0               [24] 1239 	movx	@dptr,a
      003854 74 01            [12] 1240 	mov	a,#((_buffer + 0x001d) >> 8)
      003856 A3               [24] 1241 	inc	dptr
      003857 F0               [24] 1242 	movx	@dptr,a
      003858 E4               [12] 1243 	clr	a
      003859 A3               [24] 1244 	inc	dptr
      00385A F0               [24] 1245 	movx	@dptr,a
      00385B 90 08 94         [24] 1246 	mov	dptr,#___memcpy_PARM_3
      00385E 74 04            [12] 1247 	mov	a,#0x04
      003860 F0               [24] 1248 	movx	@dptr,a
      003861 E4               [12] 1249 	clr	a
      003862 A3               [24] 1250 	inc	dptr
      003863 F0               [24] 1251 	movx	@dptr,a
      003864 90 01 CE         [24] 1252 	mov	dptr,#(_buffer + 0x0027)
      003867 F5 F0            [12] 1253 	mov	b,a
      003869 12 4E FC         [24] 1254 	lcall	___memcpy
                                   1255 ;	webserver.c:157: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
      00386C 90 08 91         [24] 1256 	mov	dptr,#___memcpy_PARM_2
      00386F 74 AC            [12] 1257 	mov	a,#_makeArpReply_device_mac_10000_100
      003871 F0               [24] 1258 	movx	@dptr,a
      003872 74 07            [12] 1259 	mov	a,#(_makeArpReply_device_mac_10000_100 >> 8)
      003874 A3               [24] 1260 	inc	dptr
      003875 F0               [24] 1261 	movx	@dptr,a
      003876 E4               [12] 1262 	clr	a
      003877 A3               [24] 1263 	inc	dptr
      003878 F0               [24] 1264 	movx	@dptr,a
      003879 90 08 94         [24] 1265 	mov	dptr,#___memcpy_PARM_3
      00387C 74 06            [12] 1266 	mov	a,#0x06
      00387E F0               [24] 1267 	movx	@dptr,a
      00387F E4               [12] 1268 	clr	a
      003880 A3               [24] 1269 	inc	dptr
      003881 F0               [24] 1270 	movx	@dptr,a
      003882 90 01 BE         [24] 1271 	mov	dptr,#(_buffer + 0x0017)
      003885 F5 F0            [12] 1272 	mov	b,a
      003887 12 4E FC         [24] 1273 	lcall	___memcpy
                                   1274 ;	webserver.c:158: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
      00388A 90 08 91         [24] 1275 	mov	dptr,#___memcpy_PARM_2
      00388D 74 B8            [12] 1276 	mov	a,#_makeArpReply_device_ip_10000_100
      00388F F0               [24] 1277 	movx	@dptr,a
      003890 74 07            [12] 1278 	mov	a,#(_makeArpReply_device_ip_10000_100 >> 8)
      003892 A3               [24] 1279 	inc	dptr
      003893 F0               [24] 1280 	movx	@dptr,a
      003894 E4               [12] 1281 	clr	a
      003895 A3               [24] 1282 	inc	dptr
      003896 F0               [24] 1283 	movx	@dptr,a
      003897 90 08 94         [24] 1284 	mov	dptr,#___memcpy_PARM_3
      00389A 74 04            [12] 1285 	mov	a,#0x04
      00389C F0               [24] 1286 	movx	@dptr,a
      00389D E4               [12] 1287 	clr	a
      00389E A3               [24] 1288 	inc	dptr
      00389F F0               [24] 1289 	movx	@dptr,a
      0038A0 90 01 C4         [24] 1290 	mov	dptr,#(_buffer + 0x001d)
      0038A3 F5 F0            [12] 1291 	mov	b,a
      0038A5 12 4E FC         [24] 1292 	lcall	___memcpy
                                   1293 ;	webserver.c:161: transmit_tcp_packet(buffer, 43);
      0038A8 90 01 8C         [24] 1294 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0038AB 74 2B            [12] 1295 	mov	a,#0x2b
      0038AD F0               [24] 1296 	movx	@dptr,a
      0038AE E4               [12] 1297 	clr	a
      0038AF A3               [24] 1298 	inc	dptr
      0038B0 F0               [24] 1299 	movx	@dptr,a
      0038B1 90 01 A7         [24] 1300 	mov	dptr,#_buffer
      0038B4 F5 F0            [12] 1301 	mov	b,a
                                   1302 ;	webserver.c:162: }
      0038B6 02 31 62         [24] 1303 	ljmp	_transmit_tcp_packet
                                   1304 ;------------------------------------------------------------
                                   1305 ;Allocation info for local variables in function 'calculateIPChecksum'
                                   1306 ;------------------------------------------------------------
                                   1307 ;buffer                    Allocated with name '_calculateIPChecksum_buffer_10000_101'
                                   1308 ;length                    Allocated with name '_calculateIPChecksum_length_10001_103'
                                   1309 ;sum                       Allocated with name '_calculateIPChecksum_sum_10001_103'
                                   1310 ;i                         Allocated with name '_calculateIPChecksum_i_20001_104'
                                   1311 ;word                      Allocated with name '_calculateIPChecksum_word_30001_105'
                                   1312 ;checksum                  Allocated with name '_calculateIPChecksum_checksum_10002_107'
                                   1313 ;sloc0                     Allocated with name '_calculateIPChecksum_sloc0_1_0'
                                   1314 ;sloc1                     Allocated with name '_calculateIPChecksum_sloc1_1_0'
                                   1315 ;------------------------------------------------------------
                                   1316 ;	webserver.c:174: void calculateIPChecksum(uint8_t *buffer) 
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function calculateIPChecksum
                                   1319 ;	-----------------------------------------
      0038B9                       1320 _calculateIPChecksum:
      0038B9 AF F0            [24] 1321 	mov	r7,b
      0038BB AE 83            [24] 1322 	mov	r6,dph
      0038BD E5 82            [12] 1323 	mov	a,dpl
      0038BF 90 07 C0         [24] 1324 	mov	dptr,#_calculateIPChecksum_buffer_10000_101
      0038C2 F0               [24] 1325 	movx	@dptr,a
      0038C3 EE               [12] 1326 	mov	a,r6
      0038C4 A3               [24] 1327 	inc	dptr
      0038C5 F0               [24] 1328 	movx	@dptr,a
      0038C6 EF               [12] 1329 	mov	a,r7
      0038C7 A3               [24] 1330 	inc	dptr
      0038C8 F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	webserver.c:177: buffer[IP_CHECKSUM_P] = 0;
      0038C9 90 07 C0         [24] 1333 	mov	dptr,#_calculateIPChecksum_buffer_10000_101
      0038CC E0               [24] 1334 	movx	a,@dptr
      0038CD FD               [12] 1335 	mov	r5,a
      0038CE A3               [24] 1336 	inc	dptr
      0038CF E0               [24] 1337 	movx	a,@dptr
      0038D0 FE               [12] 1338 	mov	r6,a
      0038D1 A3               [24] 1339 	inc	dptr
      0038D2 E0               [24] 1340 	movx	a,@dptr
      0038D3 FF               [12] 1341 	mov	r7,a
      0038D4 74 18            [12] 1342 	mov	a,#0x18
      0038D6 2D               [12] 1343 	add	a, r5
      0038D7 FA               [12] 1344 	mov	r2,a
      0038D8 E4               [12] 1345 	clr	a
      0038D9 3E               [12] 1346 	addc	a, r6
      0038DA FB               [12] 1347 	mov	r3,a
      0038DB 8F 04            [24] 1348 	mov	ar4,r7
      0038DD 8A 82            [24] 1349 	mov	dpl,r2
      0038DF 8B 83            [24] 1350 	mov	dph,r3
      0038E1 8C F0            [24] 1351 	mov	b,r4
      0038E3 E4               [12] 1352 	clr	a
      0038E4 12 4F 98         [24] 1353 	lcall	__gptrput
                                   1354 ;	webserver.c:178: buffer[IP_CHECKSUM_P + 1] = 0;
      0038E7 74 19            [12] 1355 	mov	a,#0x19
      0038E9 2D               [12] 1356 	add	a, r5
      0038EA FA               [12] 1357 	mov	r2,a
      0038EB E4               [12] 1358 	clr	a
      0038EC 3E               [12] 1359 	addc	a, r6
      0038ED FB               [12] 1360 	mov	r3,a
      0038EE 8F 04            [24] 1361 	mov	ar4,r7
      0038F0 8A 82            [24] 1362 	mov	dpl,r2
      0038F2 8B 83            [24] 1363 	mov	dph,r3
      0038F4 8C F0            [24] 1364 	mov	b,r4
      0038F6 E4               [12] 1365 	clr	a
      0038F7 12 4F 98         [24] 1366 	lcall	__gptrput
                                   1367 ;	webserver.c:182: uint32_t sum = 0;
      0038FA 90 07 C3         [24] 1368 	mov	dptr,#_calculateIPChecksum_sum_10001_103
      0038FD F0               [24] 1369 	movx	@dptr,a
      0038FE A3               [24] 1370 	inc	dptr
      0038FF F0               [24] 1371 	movx	@dptr,a
      003900 A3               [24] 1372 	inc	dptr
      003901 F0               [24] 1373 	movx	@dptr,a
      003902 A3               [24] 1374 	inc	dptr
      003903 F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	webserver.c:185: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      003904 90 07 C7         [24] 1377 	mov	dptr,#_calculateIPChecksum_i_20001_104
      003907 74 0E            [12] 1378 	mov	a,#0x0e
      003909 F0               [24] 1379 	movx	@dptr,a
      00390A E4               [12] 1380 	clr	a
      00390B A3               [24] 1381 	inc	dptr
      00390C F0               [24] 1382 	movx	@dptr,a
      00390D                       1383 00106$:
      00390D 90 07 C7         [24] 1384 	mov	dptr,#_calculateIPChecksum_i_20001_104
      003910 E0               [24] 1385 	movx	a,@dptr
      003911 FB               [12] 1386 	mov	r3,a
      003912 A3               [24] 1387 	inc	dptr
      003913 E0               [24] 1388 	movx	a,@dptr
      003914 FC               [12] 1389 	mov	r4,a
      003915 8B 01            [24] 1390 	mov	ar1,r3
      003917 8C 02            [24] 1391 	mov	ar2,r4
      003919 C3               [12] 1392 	clr	c
      00391A E9               [12] 1393 	mov	a,r1
      00391B 94 22            [12] 1394 	subb	a,#0x22
      00391D EA               [12] 1395 	mov	a,r2
      00391E 94 00            [12] 1396 	subb	a,#0x00
      003920 40 03            [24] 1397 	jc	00134$
      003922 02 39 A6         [24] 1398 	ljmp	00102$
      003925                       1399 00134$:
                                   1400 ;	webserver.c:186: uint16_t word = (buffer[i] << 8) | buffer[i + 1]; // combine bytes to word
      003925 EB               [12] 1401 	mov	a,r3
      003926 2D               [12] 1402 	add	a, r5
      003927 FB               [12] 1403 	mov	r3,a
      003928 EC               [12] 1404 	mov	a,r4
      003929 3E               [12] 1405 	addc	a, r6
      00392A F8               [12] 1406 	mov	r0,a
      00392B 8F 04            [24] 1407 	mov	ar4,r7
      00392D 8B 82            [24] 1408 	mov	dpl,r3
      00392F 88 83            [24] 1409 	mov	dph,r0
      003931 8C F0            [24] 1410 	mov	b,r4
      003933 12 5C 87         [24] 1411 	lcall	__gptrget
      003936 FB               [12] 1412 	mov	r3,a
      003937 7C 00            [12] 1413 	mov	r4,#0x00
      003939 8B 48            [24] 1414 	mov	(_calculateIPChecksum_sloc0_1_0 + 1),r3
      00393B 8C 47            [24] 1415 	mov	_calculateIPChecksum_sloc0_1_0,r4
      00393D 74 01            [12] 1416 	mov	a,#0x01
      00393F 29               [12] 1417 	add	a, r1
      003940 F8               [12] 1418 	mov	r0,a
      003941 E4               [12] 1419 	clr	a
      003942 3A               [12] 1420 	addc	a, r2
      003943 FC               [12] 1421 	mov	r4,a
      003944 E8               [12] 1422 	mov	a,r0
      003945 2D               [12] 1423 	add	a, r5
      003946 F8               [12] 1424 	mov	r0,a
      003947 EC               [12] 1425 	mov	a,r4
      003948 3E               [12] 1426 	addc	a, r6
      003949 FC               [12] 1427 	mov	r4,a
      00394A 8F 03            [24] 1428 	mov	ar3,r7
      00394C 88 82            [24] 1429 	mov	dpl,r0
      00394E 8C 83            [24] 1430 	mov	dph,r4
      003950 8B F0            [24] 1431 	mov	b,r3
      003952 12 5C 87         [24] 1432 	lcall	__gptrget
      003955 F8               [12] 1433 	mov	r0,a
      003956 7C 00            [12] 1434 	mov	r4,#0x00
      003958 E5 48            [12] 1435 	mov	a,(_calculateIPChecksum_sloc0_1_0 + 1)
      00395A 42 04            [12] 1436 	orl	ar4,a
                                   1437 ;	webserver.c:187: sum += word;
      00395C C0 05            [24] 1438 	push	ar5
      00395E C0 06            [24] 1439 	push	ar6
      003960 C0 07            [24] 1440 	push	ar7
      003962 90 07 C3         [24] 1441 	mov	dptr,#_calculateIPChecksum_sum_10001_103
      003965 E0               [24] 1442 	movx	a,@dptr
      003966 F5 49            [12] 1443 	mov	_calculateIPChecksum_sloc1_1_0,a
      003968 A3               [24] 1444 	inc	dptr
      003969 E0               [24] 1445 	movx	a,@dptr
      00396A F5 4A            [12] 1446 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      00396C A3               [24] 1447 	inc	dptr
      00396D E0               [24] 1448 	movx	a,@dptr
      00396E F5 4B            [12] 1449 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      003970 A3               [24] 1450 	inc	dptr
      003971 E0               [24] 1451 	movx	a,@dptr
      003972 F5 4C            [12] 1452 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      003974 7E 00            [12] 1453 	mov	r6,#0x00
      003976 7F 00            [12] 1454 	mov	r7,#0x00
      003978 90 07 C3         [24] 1455 	mov	dptr,#_calculateIPChecksum_sum_10001_103
      00397B E8               [12] 1456 	mov	a,r0
      00397C 25 49            [12] 1457 	add	a, _calculateIPChecksum_sloc1_1_0
      00397E F0               [24] 1458 	movx	@dptr,a
      00397F EC               [12] 1459 	mov	a,r4
      003980 35 4A            [12] 1460 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 1)
      003982 A3               [24] 1461 	inc	dptr
      003983 F0               [24] 1462 	movx	@dptr,a
      003984 EE               [12] 1463 	mov	a,r6
      003985 35 4B            [12] 1464 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 2)
      003987 A3               [24] 1465 	inc	dptr
      003988 F0               [24] 1466 	movx	@dptr,a
      003989 EF               [12] 1467 	mov	a,r7
      00398A 35 4C            [12] 1468 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 3)
      00398C A3               [24] 1469 	inc	dptr
      00398D F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	webserver.c:185: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      00398E 74 02            [12] 1472 	mov	a,#0x02
      003990 29               [12] 1473 	add	a, r1
      003991 F9               [12] 1474 	mov	r1,a
      003992 E4               [12] 1475 	clr	a
      003993 3A               [12] 1476 	addc	a, r2
      003994 FA               [12] 1477 	mov	r2,a
      003995 90 07 C7         [24] 1478 	mov	dptr,#_calculateIPChecksum_i_20001_104
      003998 E9               [12] 1479 	mov	a,r1
      003999 F0               [24] 1480 	movx	@dptr,a
      00399A EA               [12] 1481 	mov	a,r2
      00399B A3               [24] 1482 	inc	dptr
      00399C F0               [24] 1483 	movx	@dptr,a
      00399D D0 07            [24] 1484 	pop	ar7
      00399F D0 06            [24] 1485 	pop	ar6
      0039A1 D0 05            [24] 1486 	pop	ar5
      0039A3 02 39 0D         [24] 1487 	ljmp	00106$
                                   1488 ;	webserver.c:191: while (sum >> 16) {
      0039A6                       1489 00102$:
      0039A6 90 07 C3         [24] 1490 	mov	dptr,#_calculateIPChecksum_sum_10001_103
      0039A9 E0               [24] 1491 	movx	a,@dptr
      0039AA FC               [12] 1492 	mov	r4,a
      0039AB A3               [24] 1493 	inc	dptr
      0039AC E0               [24] 1494 	movx	a,@dptr
      0039AD FD               [12] 1495 	mov	r5,a
      0039AE A3               [24] 1496 	inc	dptr
      0039AF E0               [24] 1497 	movx	a,@dptr
      0039B0 FE               [12] 1498 	mov	r6,a
      0039B1 A3               [24] 1499 	inc	dptr
      0039B2 E0               [24] 1500 	movx	a,@dptr
      0039B3 FF               [12] 1501 	mov	r7,a
      0039B4 8E 49            [24] 1502 	mov	_calculateIPChecksum_sloc1_1_0,r6
      0039B6 8F 4A            [24] 1503 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),r7
      0039B8 E4               [12] 1504 	clr	a
      0039B9 F5 4B            [12] 1505 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      0039BB F5 4C            [12] 1506 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      0039BD E5 49            [12] 1507 	mov	a,_calculateIPChecksum_sloc1_1_0
      0039BF 45 4A            [12] 1508 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      0039C1 45 4B            [12] 1509 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      0039C3 45 4C            [12] 1510 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      0039C5 60 20            [24] 1511 	jz	00104$
                                   1512 ;	webserver.c:192: sum = (sum & 0xFFFF) + (sum >> 16);
      0039C7 8C 00            [24] 1513 	mov	ar0,r4
      0039C9 8D 01            [24] 1514 	mov	ar1,r5
      0039CB 7A 00            [12] 1515 	mov	r2,#0x00
      0039CD 7B 00            [12] 1516 	mov	r3,#0x00
      0039CF 90 07 C3         [24] 1517 	mov	dptr,#_calculateIPChecksum_sum_10001_103
      0039D2 E5 49            [12] 1518 	mov	a,_calculateIPChecksum_sloc1_1_0
      0039D4 28               [12] 1519 	add	a, r0
      0039D5 F0               [24] 1520 	movx	@dptr,a
      0039D6 E5 4A            [12] 1521 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      0039D8 39               [12] 1522 	addc	a, r1
      0039D9 A3               [24] 1523 	inc	dptr
      0039DA F0               [24] 1524 	movx	@dptr,a
      0039DB E5 4B            [12] 1525 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      0039DD 3A               [12] 1526 	addc	a, r2
      0039DE A3               [24] 1527 	inc	dptr
      0039DF F0               [24] 1528 	movx	@dptr,a
      0039E0 E5 4C            [12] 1529 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      0039E2 3B               [12] 1530 	addc	a, r3
      0039E3 A3               [24] 1531 	inc	dptr
      0039E4 F0               [24] 1532 	movx	@dptr,a
      0039E5 80 BF            [24] 1533 	sjmp	00102$
      0039E7                       1534 00104$:
                                   1535 ;	webserver.c:196: uint16_t checksum = ~((uint16_t) sum);
      0039E7 EC               [12] 1536 	mov	a,r4
      0039E8 F4               [12] 1537 	cpl	a
      0039E9 FC               [12] 1538 	mov	r4,a
      0039EA ED               [12] 1539 	mov	a,r5
      0039EB F4               [12] 1540 	cpl	a
      0039EC FD               [12] 1541 	mov	r5,a
                                   1542 ;	webserver.c:197: buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
      0039ED 90 07 C0         [24] 1543 	mov	dptr,#_calculateIPChecksum_buffer_10000_101
      0039F0 E0               [24] 1544 	movx	a,@dptr
      0039F1 FB               [12] 1545 	mov	r3,a
      0039F2 A3               [24] 1546 	inc	dptr
      0039F3 E0               [24] 1547 	movx	a,@dptr
      0039F4 FE               [12] 1548 	mov	r6,a
      0039F5 A3               [24] 1549 	inc	dptr
      0039F6 E0               [24] 1550 	movx	a,@dptr
      0039F7 FF               [12] 1551 	mov	r7,a
      0039F8 74 18            [12] 1552 	mov	a,#0x18
      0039FA 2B               [12] 1553 	add	a, r3
      0039FB F5 49            [12] 1554 	mov	_calculateIPChecksum_sloc1_1_0,a
      0039FD E4               [12] 1555 	clr	a
      0039FE 3E               [12] 1556 	addc	a, r6
      0039FF F5 4A            [12] 1557 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      003A01 8F 4B            [24] 1558 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),r7
      003A03 8D 02            [24] 1559 	mov	ar2,r5
      003A05 85 49 82         [24] 1560 	mov	dpl,_calculateIPChecksum_sloc1_1_0
      003A08 85 4A 83         [24] 1561 	mov	dph,(_calculateIPChecksum_sloc1_1_0 + 1)
      003A0B 85 4B F0         [24] 1562 	mov	b,(_calculateIPChecksum_sloc1_1_0 + 2)
      003A0E EA               [12] 1563 	mov	a,r2
      003A0F 12 4F 98         [24] 1564 	lcall	__gptrput
                                   1565 ;	webserver.c:198: buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
      003A12 74 19            [12] 1566 	mov	a,#0x19
      003A14 2B               [12] 1567 	add	a, r3
      003A15 FB               [12] 1568 	mov	r3,a
      003A16 E4               [12] 1569 	clr	a
      003A17 3E               [12] 1570 	addc	a, r6
      003A18 FE               [12] 1571 	mov	r6,a
      003A19 8B 82            [24] 1572 	mov	dpl,r3
      003A1B 8E 83            [24] 1573 	mov	dph,r6
      003A1D 8F F0            [24] 1574 	mov	b,r7
      003A1F EC               [12] 1575 	mov	a,r4
                                   1576 ;	webserver.c:199: }
      003A20 02 4F 98         [24] 1577 	ljmp	__gptrput
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'calculateTcpChecksum'
                                   1580 ;------------------------------------------------------------
                                   1581 ;buffer                    Allocated with name '_calculateTcpChecksum_buffer_10000_108'
                                   1582 ;tcpLength                 Allocated with name '_calculateTcpChecksum_tcpLength_10001_110'
                                   1583 ;sum                       Allocated with name '_calculateTcpChecksum_sum_10001_110'
                                   1584 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_111'
                                   1585 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_113'
                                   1586 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_115'
                                   1587 ;word                      Allocated with name '_calculateTcpChecksum_word_30001_116'
                                   1588 ;checksum                  Allocated with name '_calculateTcpChecksum_checksum_10002_118'
                                   1589 ;sloc0                     Allocated with name '_calculateTcpChecksum_sloc0_1_0'
                                   1590 ;sloc1                     Allocated with name '_calculateTcpChecksum_sloc1_1_0'
                                   1591 ;sloc2                     Allocated with name '_calculateTcpChecksum_sloc2_1_0'
                                   1592 ;sloc3                     Allocated with name '_calculateTcpChecksum_sloc3_1_0'
                                   1593 ;sloc4                     Allocated with name '_calculateTcpChecksum_sloc4_1_0'
                                   1594 ;------------------------------------------------------------
                                   1595 ;	webserver.c:214: void calculateTcpChecksum(uint8_t *buffer) 
                                   1596 ;	-----------------------------------------
                                   1597 ;	 function calculateTcpChecksum
                                   1598 ;	-----------------------------------------
      003A23                       1599 _calculateTcpChecksum:
      003A23 AF F0            [24] 1600 	mov	r7,b
      003A25 AE 83            [24] 1601 	mov	r6,dph
      003A27 E5 82            [12] 1602 	mov	a,dpl
      003A29 90 07 C9         [24] 1603 	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
      003A2C F0               [24] 1604 	movx	@dptr,a
      003A2D EE               [12] 1605 	mov	a,r6
      003A2E A3               [24] 1606 	inc	dptr
      003A2F F0               [24] 1607 	movx	@dptr,a
      003A30 EF               [12] 1608 	mov	a,r7
      003A31 A3               [24] 1609 	inc	dptr
      003A32 F0               [24] 1610 	movx	@dptr,a
                                   1611 ;	webserver.c:217: buffer[TCP_CHECKSUM_H_P] = 0;
      003A33 90 07 C9         [24] 1612 	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
      003A36 E0               [24] 1613 	movx	a,@dptr
      003A37 FD               [12] 1614 	mov	r5,a
      003A38 A3               [24] 1615 	inc	dptr
      003A39 E0               [24] 1616 	movx	a,@dptr
      003A3A FE               [12] 1617 	mov	r6,a
      003A3B A3               [24] 1618 	inc	dptr
      003A3C E0               [24] 1619 	movx	a,@dptr
      003A3D FF               [12] 1620 	mov	r7,a
      003A3E 74 32            [12] 1621 	mov	a,#0x32
      003A40 2D               [12] 1622 	add	a, r5
      003A41 FA               [12] 1623 	mov	r2,a
      003A42 E4               [12] 1624 	clr	a
      003A43 3E               [12] 1625 	addc	a, r6
      003A44 FB               [12] 1626 	mov	r3,a
      003A45 8F 04            [24] 1627 	mov	ar4,r7
      003A47 8A 82            [24] 1628 	mov	dpl,r2
      003A49 8B 83            [24] 1629 	mov	dph,r3
      003A4B 8C F0            [24] 1630 	mov	b,r4
      003A4D E4               [12] 1631 	clr	a
      003A4E 12 4F 98         [24] 1632 	lcall	__gptrput
                                   1633 ;	webserver.c:218: buffer[TCP_CHECKSUM_L_P] = 0;
      003A51 74 33            [12] 1634 	mov	a,#0x33
      003A53 2D               [12] 1635 	add	a, r5
      003A54 FA               [12] 1636 	mov	r2,a
      003A55 E4               [12] 1637 	clr	a
      003A56 3E               [12] 1638 	addc	a, r6
      003A57 FB               [12] 1639 	mov	r3,a
      003A58 8F 04            [24] 1640 	mov	ar4,r7
      003A5A 8A 82            [24] 1641 	mov	dpl,r2
      003A5C 8B 83            [24] 1642 	mov	dph,r3
      003A5E 8C F0            [24] 1643 	mov	b,r4
      003A60 E4               [12] 1644 	clr	a
      003A61 12 4F 98         [24] 1645 	lcall	__gptrput
                                   1646 ;	webserver.c:221: uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
      003A64 74 10            [12] 1647 	mov	a,#0x10
      003A66 2D               [12] 1648 	add	a, r5
      003A67 FA               [12] 1649 	mov	r2,a
      003A68 E4               [12] 1650 	clr	a
      003A69 3E               [12] 1651 	addc	a, r6
      003A6A FB               [12] 1652 	mov	r3,a
      003A6B 8F 04            [24] 1653 	mov	ar4,r7
      003A6D 8A 82            [24] 1654 	mov	dpl,r2
      003A6F 8B 83            [24] 1655 	mov	dph,r3
      003A71 8C F0            [24] 1656 	mov	b,r4
      003A73 12 5C 87         [24] 1657 	lcall	__gptrget
      003A76 FC               [12] 1658 	mov	r4,a
      003A77 7A 00            [12] 1659 	mov	r2,#0x00
      003A79 74 11            [12] 1660 	mov	a,#0x11
      003A7B 2D               [12] 1661 	add	a, r5
      003A7C F8               [12] 1662 	mov	r0,a
      003A7D E4               [12] 1663 	clr	a
      003A7E 3E               [12] 1664 	addc	a, r6
      003A7F F9               [12] 1665 	mov	r1,a
      003A80 8F 03            [24] 1666 	mov	ar3,r7
      003A82 88 82            [24] 1667 	mov	dpl,r0
      003A84 89 83            [24] 1668 	mov	dph,r1
      003A86 8B F0            [24] 1669 	mov	b,r3
      003A88 12 5C 87         [24] 1670 	lcall	__gptrget
      003A8B 7B 00            [12] 1671 	mov	r3,#0x00
      003A8D 42 02            [12] 1672 	orl	ar2,a
      003A8F EB               [12] 1673 	mov	a,r3
      003A90 42 04            [12] 1674 	orl	ar4,a
      003A92 EA               [12] 1675 	mov	a,r2
      003A93 24 EC            [12] 1676 	add	a,#0xec
      003A95 FA               [12] 1677 	mov	r2,a
      003A96 EC               [12] 1678 	mov	a,r4
      003A97 34 FF            [12] 1679 	addc	a,#0xff
      003A99 FC               [12] 1680 	mov	r4,a
                                   1681 ;	webserver.c:222: uint32_t sum = 0;
      003A9A 90 07 CC         [24] 1682 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003A9D E4               [12] 1683 	clr	a
      003A9E F0               [24] 1684 	movx	@dptr,a
      003A9F A3               [24] 1685 	inc	dptr
      003AA0 F0               [24] 1686 	movx	@dptr,a
      003AA1 A3               [24] 1687 	inc	dptr
      003AA2 F0               [24] 1688 	movx	@dptr,a
      003AA3 A3               [24] 1689 	inc	dptr
      003AA4 F0               [24] 1690 	movx	@dptr,a
                                   1691 ;	webserver.c:225: for (uint8_t i = 0; i < 4; i++) {
      003AA5 8D 48            [24] 1692 	mov	_calculateTcpChecksum_sloc1_1_0,r5
      003AA7 8E 49            [24] 1693 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r6
      003AA9 8F 4A            [24] 1694 	mov	(_calculateTcpChecksum_sloc1_1_0 + 2),r7
      003AAB FB               [12] 1695 	mov	r3,a
      003AAC                       1696 00108$:
      003AAC BB 04 00         [24] 1697 	cjne	r3,#0x04,00168$
      003AAF                       1698 00168$:
      003AAF 50 5B            [24] 1699 	jnc	00101$
                                   1700 ;	webserver.c:226: sum += buffer[IP_SRC_P + i];
      003AB1 C0 02            [24] 1701 	push	ar2
      003AB3 C0 04            [24] 1702 	push	ar4
      003AB5 8B 00            [24] 1703 	mov	ar0,r3
      003AB7 79 00            [12] 1704 	mov	r1,#0x00
      003AB9 74 1A            [12] 1705 	mov	a,#0x1a
      003ABB 28               [12] 1706 	add	a, r0
      003ABC F8               [12] 1707 	mov	r0,a
      003ABD E4               [12] 1708 	clr	a
      003ABE 39               [12] 1709 	addc	a, r1
      003ABF F9               [12] 1710 	mov	r1,a
      003AC0 E8               [12] 1711 	mov	a,r0
      003AC1 25 48            [12] 1712 	add	a, _calculateTcpChecksum_sloc1_1_0
      003AC3 F8               [12] 1713 	mov	r0,a
      003AC4 E9               [12] 1714 	mov	a,r1
      003AC5 35 49            [12] 1715 	addc	a, (_calculateTcpChecksum_sloc1_1_0 + 1)
      003AC7 F9               [12] 1716 	mov	r1,a
      003AC8 AC 4A            [24] 1717 	mov	r4,(_calculateTcpChecksum_sloc1_1_0 + 2)
      003ACA 88 82            [24] 1718 	mov	dpl,r0
      003ACC 89 83            [24] 1719 	mov	dph,r1
      003ACE 8C F0            [24] 1720 	mov	b,r4
      003AD0 12 5C 87         [24] 1721 	lcall	__gptrget
      003AD3 F5 47            [12] 1722 	mov	_calculateTcpChecksum_sloc0_1_0,a
      003AD5 90 07 CC         [24] 1723 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003AD8 E0               [24] 1724 	movx	a,@dptr
      003AD9 F5 4B            [12] 1725 	mov	_calculateTcpChecksum_sloc2_1_0,a
      003ADB A3               [24] 1726 	inc	dptr
      003ADC E0               [24] 1727 	movx	a,@dptr
      003ADD F5 4C            [12] 1728 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
      003ADF A3               [24] 1729 	inc	dptr
      003AE0 E0               [24] 1730 	movx	a,@dptr
      003AE1 F5 4D            [12] 1731 	mov	(_calculateTcpChecksum_sloc2_1_0 + 2),a
      003AE3 A3               [24] 1732 	inc	dptr
      003AE4 E0               [24] 1733 	movx	a,@dptr
      003AE5 F5 4E            [12] 1734 	mov	(_calculateTcpChecksum_sloc2_1_0 + 3),a
      003AE7 AC 47            [24] 1735 	mov	r4,_calculateTcpChecksum_sloc0_1_0
      003AE9 7D 00            [12] 1736 	mov	r5,#0x00
      003AEB 7E 00            [12] 1737 	mov	r6,#0x00
      003AED 7F 00            [12] 1738 	mov	r7,#0x00
      003AEF 90 07 CC         [24] 1739 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003AF2 EC               [12] 1740 	mov	a,r4
      003AF3 25 4B            [12] 1741 	add	a, _calculateTcpChecksum_sloc2_1_0
      003AF5 F0               [24] 1742 	movx	@dptr,a
      003AF6 ED               [12] 1743 	mov	a,r5
      003AF7 35 4C            [12] 1744 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      003AF9 A3               [24] 1745 	inc	dptr
      003AFA F0               [24] 1746 	movx	@dptr,a
      003AFB EE               [12] 1747 	mov	a,r6
      003AFC 35 4D            [12] 1748 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 2)
      003AFE A3               [24] 1749 	inc	dptr
      003AFF F0               [24] 1750 	movx	@dptr,a
      003B00 EF               [12] 1751 	mov	a,r7
      003B01 35 4E            [12] 1752 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 3)
      003B03 A3               [24] 1753 	inc	dptr
      003B04 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	webserver.c:225: for (uint8_t i = 0; i < 4; i++) {
      003B05 0B               [12] 1756 	inc	r3
      003B06 D0 04            [24] 1757 	pop	ar4
      003B08 D0 02            [24] 1758 	pop	ar2
      003B0A 80 A0            [24] 1759 	sjmp	00108$
      003B0C                       1760 00101$:
                                   1761 ;	webserver.c:230: for (uint8_t i = 0; i < 4; i++) {
      003B0C 90 07 C9         [24] 1762 	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
      003B0F E0               [24] 1763 	movx	a,@dptr
      003B10 F5 48            [12] 1764 	mov	_calculateTcpChecksum_sloc1_1_0,a
      003B12 A3               [24] 1765 	inc	dptr
      003B13 E0               [24] 1766 	movx	a,@dptr
      003B14 F5 49            [12] 1767 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),a
      003B16 A3               [24] 1768 	inc	dptr
      003B17 E0               [24] 1769 	movx	a,@dptr
      003B18 F5 4A            [12] 1770 	mov	(_calculateTcpChecksum_sloc1_1_0 + 2),a
      003B1A 7B 00            [12] 1771 	mov	r3,#0x00
      003B1C                       1772 00111$:
      003B1C BB 04 00         [24] 1773 	cjne	r3,#0x04,00170$
      003B1F                       1774 00170$:
      003B1F 50 5B            [24] 1775 	jnc	00102$
                                   1776 ;	webserver.c:231: sum += buffer[IP_DST_P + i];
      003B21 C0 02            [24] 1777 	push	ar2
      003B23 C0 04            [24] 1778 	push	ar4
      003B25 8B 00            [24] 1779 	mov	ar0,r3
      003B27 79 00            [12] 1780 	mov	r1,#0x00
      003B29 74 1E            [12] 1781 	mov	a,#0x1e
      003B2B 28               [12] 1782 	add	a, r0
      003B2C F8               [12] 1783 	mov	r0,a
      003B2D E4               [12] 1784 	clr	a
      003B2E 39               [12] 1785 	addc	a, r1
      003B2F F9               [12] 1786 	mov	r1,a
      003B30 E8               [12] 1787 	mov	a,r0
      003B31 25 48            [12] 1788 	add	a, _calculateTcpChecksum_sloc1_1_0
      003B33 F8               [12] 1789 	mov	r0,a
      003B34 E9               [12] 1790 	mov	a,r1
      003B35 35 49            [12] 1791 	addc	a, (_calculateTcpChecksum_sloc1_1_0 + 1)
      003B37 F9               [12] 1792 	mov	r1,a
      003B38 AC 4A            [24] 1793 	mov	r4,(_calculateTcpChecksum_sloc1_1_0 + 2)
      003B3A 88 82            [24] 1794 	mov	dpl,r0
      003B3C 89 83            [24] 1795 	mov	dph,r1
      003B3E 8C F0            [24] 1796 	mov	b,r4
      003B40 12 5C 87         [24] 1797 	lcall	__gptrget
      003B43 F5 4B            [12] 1798 	mov	_calculateTcpChecksum_sloc2_1_0,a
      003B45 90 07 CC         [24] 1799 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003B48 E0               [24] 1800 	movx	a,@dptr
      003B49 F5 4F            [12] 1801 	mov	_calculateTcpChecksum_sloc3_1_0,a
      003B4B A3               [24] 1802 	inc	dptr
      003B4C E0               [24] 1803 	movx	a,@dptr
      003B4D F5 50            [12] 1804 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      003B4F A3               [24] 1805 	inc	dptr
      003B50 E0               [24] 1806 	movx	a,@dptr
      003B51 F5 51            [12] 1807 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      003B53 A3               [24] 1808 	inc	dptr
      003B54 E0               [24] 1809 	movx	a,@dptr
      003B55 F5 52            [12] 1810 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      003B57 AC 4B            [24] 1811 	mov	r4,_calculateTcpChecksum_sloc2_1_0
      003B59 7D 00            [12] 1812 	mov	r5,#0x00
      003B5B 7E 00            [12] 1813 	mov	r6,#0x00
      003B5D 7F 00            [12] 1814 	mov	r7,#0x00
      003B5F 90 07 CC         [24] 1815 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003B62 EC               [12] 1816 	mov	a,r4
      003B63 25 4F            [12] 1817 	add	a, _calculateTcpChecksum_sloc3_1_0
      003B65 F0               [24] 1818 	movx	@dptr,a
      003B66 ED               [12] 1819 	mov	a,r5
      003B67 35 50            [12] 1820 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      003B69 A3               [24] 1821 	inc	dptr
      003B6A F0               [24] 1822 	movx	@dptr,a
      003B6B EE               [12] 1823 	mov	a,r6
      003B6C 35 51            [12] 1824 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      003B6E A3               [24] 1825 	inc	dptr
      003B6F F0               [24] 1826 	movx	@dptr,a
      003B70 EF               [12] 1827 	mov	a,r7
      003B71 35 52            [12] 1828 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      003B73 A3               [24] 1829 	inc	dptr
      003B74 F0               [24] 1830 	movx	@dptr,a
                                   1831 ;	webserver.c:230: for (uint8_t i = 0; i < 4; i++) {
      003B75 0B               [12] 1832 	inc	r3
      003B76 D0 04            [24] 1833 	pop	ar4
      003B78 D0 02            [24] 1834 	pop	ar2
      003B7A 80 A0            [24] 1835 	sjmp	00111$
      003B7C                       1836 00102$:
                                   1837 ;	webserver.c:235: sum += (uint16_t) IP_PROTO_TCP;  // Protocol number for TCP
      003B7C 90 07 CC         [24] 1838 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003B7F E0               [24] 1839 	movx	a,@dptr
      003B80 FB               [12] 1840 	mov	r3,a
      003B81 A3               [24] 1841 	inc	dptr
      003B82 E0               [24] 1842 	movx	a,@dptr
      003B83 FD               [12] 1843 	mov	r5,a
      003B84 A3               [24] 1844 	inc	dptr
      003B85 E0               [24] 1845 	movx	a,@dptr
      003B86 FE               [12] 1846 	mov	r6,a
      003B87 A3               [24] 1847 	inc	dptr
      003B88 E0               [24] 1848 	movx	a,@dptr
      003B89 FF               [12] 1849 	mov	r7,a
      003B8A 90 07 CC         [24] 1850 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003B8D 74 06            [12] 1851 	mov	a,#0x06
      003B8F 2B               [12] 1852 	add	a, r3
      003B90 F0               [24] 1853 	movx	@dptr,a
      003B91 E4               [12] 1854 	clr	a
      003B92 3D               [12] 1855 	addc	a, r5
      003B93 A3               [24] 1856 	inc	dptr
      003B94 F0               [24] 1857 	movx	@dptr,a
      003B95 E4               [12] 1858 	clr	a
      003B96 3E               [12] 1859 	addc	a, r6
      003B97 A3               [24] 1860 	inc	dptr
      003B98 F0               [24] 1861 	movx	@dptr,a
      003B99 E4               [12] 1862 	clr	a
      003B9A 3F               [12] 1863 	addc	a, r7
      003B9B A3               [24] 1864 	inc	dptr
      003B9C F0               [24] 1865 	movx	@dptr,a
                                   1866 ;	webserver.c:236: sum += tcpLength;  // TCP length is the total length minus IP header length
      003B9D 90 07 CC         [24] 1867 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003BA0 E0               [24] 1868 	movx	a,@dptr
      003BA1 F5 4F            [12] 1869 	mov	_calculateTcpChecksum_sloc3_1_0,a
      003BA3 A3               [24] 1870 	inc	dptr
      003BA4 E0               [24] 1871 	movx	a,@dptr
      003BA5 F5 50            [12] 1872 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      003BA7 A3               [24] 1873 	inc	dptr
      003BA8 E0               [24] 1874 	movx	a,@dptr
      003BA9 F5 51            [12] 1875 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      003BAB A3               [24] 1876 	inc	dptr
      003BAC E0               [24] 1877 	movx	a,@dptr
      003BAD F5 52            [12] 1878 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      003BAF 8A 00            [24] 1879 	mov	ar0,r2
      003BB1 8C 01            [24] 1880 	mov	ar1,r4
      003BB3 7E 00            [12] 1881 	mov	r6,#0x00
      003BB5 7F 00            [12] 1882 	mov	r7,#0x00
      003BB7 90 07 CC         [24] 1883 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003BBA E8               [12] 1884 	mov	a,r0
      003BBB 25 4F            [12] 1885 	add	a, _calculateTcpChecksum_sloc3_1_0
      003BBD F0               [24] 1886 	movx	@dptr,a
      003BBE E9               [12] 1887 	mov	a,r1
      003BBF 35 50            [12] 1888 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      003BC1 A3               [24] 1889 	inc	dptr
      003BC2 F0               [24] 1890 	movx	@dptr,a
      003BC3 EE               [12] 1891 	mov	a,r6
      003BC4 35 51            [12] 1892 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      003BC6 A3               [24] 1893 	inc	dptr
      003BC7 F0               [24] 1894 	movx	@dptr,a
      003BC8 EF               [12] 1895 	mov	a,r7
      003BC9 35 52            [12] 1896 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      003BCB A3               [24] 1897 	inc	dptr
      003BCC F0               [24] 1898 	movx	@dptr,a
                                   1899 ;	webserver.c:239: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
      003BCD 90 07 D0         [24] 1900 	mov	dptr,#_calculateTcpChecksum_i_20001_115
      003BD0 74 22            [12] 1901 	mov	a,#0x22
      003BD2 F0               [24] 1902 	movx	@dptr,a
      003BD3 E4               [12] 1903 	clr	a
      003BD4 A3               [24] 1904 	inc	dptr
      003BD5 F0               [24] 1905 	movx	@dptr,a
      003BD6 90 07 C9         [24] 1906 	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
      003BD9 E0               [24] 1907 	movx	a,@dptr
      003BDA FD               [12] 1908 	mov	r5,a
      003BDB A3               [24] 1909 	inc	dptr
      003BDC E0               [24] 1910 	movx	a,@dptr
      003BDD FE               [12] 1911 	mov	r6,a
      003BDE A3               [24] 1912 	inc	dptr
      003BDF E0               [24] 1913 	movx	a,@dptr
      003BE0 FF               [12] 1914 	mov	r7,a
      003BE1                       1915 00114$:
      003BE1 8A 01            [24] 1916 	mov	ar1,r2
      003BE3 8C 03            [24] 1917 	mov	ar3,r4
      003BE5 74 22            [12] 1918 	mov	a,#0x22
      003BE7 29               [12] 1919 	add	a, r1
      003BE8 F9               [12] 1920 	mov	r1,a
      003BE9 E4               [12] 1921 	clr	a
      003BEA 3B               [12] 1922 	addc	a, r3
      003BEB FB               [12] 1923 	mov	r3,a
      003BEC 90 07 D0         [24] 1924 	mov	dptr,#_calculateTcpChecksum_i_20001_115
      003BEF E0               [24] 1925 	movx	a,@dptr
      003BF0 F5 4F            [12] 1926 	mov	_calculateTcpChecksum_sloc3_1_0,a
      003BF2 A3               [24] 1927 	inc	dptr
      003BF3 E0               [24] 1928 	movx	a,@dptr
      003BF4 F5 50            [12] 1929 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      003BF6 85 4F 4B         [24] 1930 	mov	_calculateTcpChecksum_sloc2_1_0,_calculateTcpChecksum_sloc3_1_0
      003BF9 85 50 4C         [24] 1931 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),(_calculateTcpChecksum_sloc3_1_0 + 1)
      003BFC C3               [12] 1932 	clr	c
      003BFD E5 4B            [12] 1933 	mov	a,_calculateTcpChecksum_sloc2_1_0
      003BFF 99               [12] 1934 	subb	a,r1
      003C00 E5 4C            [12] 1935 	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
      003C02 9B               [12] 1936 	subb	a,r3
      003C03 40 03            [24] 1937 	jc	00172$
      003C05 02 3C 8F         [24] 1938 	ljmp	00104$
      003C08                       1939 00172$:
                                   1940 ;	webserver.c:240: uint16_t word = (buffer[i] << 8) | buffer[i + 1];  // Combine the bytes into 16-bit word
      003C08 C0 02            [24] 1941 	push	ar2
      003C0A C0 04            [24] 1942 	push	ar4
      003C0C E5 4F            [12] 1943 	mov	a,_calculateTcpChecksum_sloc3_1_0
      003C0E 2D               [12] 1944 	add	a, r5
      003C0F F8               [12] 1945 	mov	r0,a
      003C10 E5 50            [12] 1946 	mov	a,(_calculateTcpChecksum_sloc3_1_0 + 1)
      003C12 3E               [12] 1947 	addc	a, r6
      003C13 F9               [12] 1948 	mov	r1,a
      003C14 8F 03            [24] 1949 	mov	ar3,r7
      003C16 88 82            [24] 1950 	mov	dpl,r0
      003C18 89 83            [24] 1951 	mov	dph,r1
      003C1A 8B F0            [24] 1952 	mov	b,r3
      003C1C 12 5C 87         [24] 1953 	lcall	__gptrget
      003C1F FB               [12] 1954 	mov	r3,a
      003C20 78 00            [12] 1955 	mov	r0,#0x00
      003C22 74 01            [12] 1956 	mov	a,#0x01
      003C24 25 4B            [12] 1957 	add	a, _calculateTcpChecksum_sloc2_1_0
      003C26 F9               [12] 1958 	mov	r1,a
      003C27 E4               [12] 1959 	clr	a
      003C28 35 4C            [12] 1960 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      003C2A FC               [12] 1961 	mov	r4,a
      003C2B E9               [12] 1962 	mov	a,r1
      003C2C 2D               [12] 1963 	add	a, r5
      003C2D F9               [12] 1964 	mov	r1,a
      003C2E EC               [12] 1965 	mov	a,r4
      003C2F 3E               [12] 1966 	addc	a, r6
      003C30 FC               [12] 1967 	mov	r4,a
      003C31 8F 02            [24] 1968 	mov	ar2,r7
      003C33 89 82            [24] 1969 	mov	dpl,r1
      003C35 8C 83            [24] 1970 	mov	dph,r4
      003C37 8A F0            [24] 1971 	mov	b,r2
      003C39 12 5C 87         [24] 1972 	lcall	__gptrget
      003C3C 7C 00            [12] 1973 	mov	r4,#0x00
      003C3E 42 00            [12] 1974 	orl	ar0,a
      003C40 EC               [12] 1975 	mov	a,r4
      003C41 42 03            [12] 1976 	orl	ar3,a
      003C43 88 4F            [24] 1977 	mov	_calculateTcpChecksum_sloc3_1_0,r0
      003C45 8B 50            [24] 1978 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),r3
                                   1979 ;	webserver.c:241: sum += word;
      003C47 90 07 CC         [24] 1980 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003C4A E0               [24] 1981 	movx	a,@dptr
      003C4B F5 53            [12] 1982 	mov	_calculateTcpChecksum_sloc4_1_0,a
      003C4D A3               [24] 1983 	inc	dptr
      003C4E E0               [24] 1984 	movx	a,@dptr
      003C4F F5 54            [12] 1985 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      003C51 A3               [24] 1986 	inc	dptr
      003C52 E0               [24] 1987 	movx	a,@dptr
      003C53 F5 55            [12] 1988 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      003C55 A3               [24] 1989 	inc	dptr
      003C56 E0               [24] 1990 	movx	a,@dptr
      003C57 F5 56            [12] 1991 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      003C59 A8 4F            [24] 1992 	mov	r0,_calculateTcpChecksum_sloc3_1_0
      003C5B AA 50            [24] 1993 	mov	r2,(_calculateTcpChecksum_sloc3_1_0 + 1)
      003C5D 7B 00            [12] 1994 	mov	r3,#0x00
      003C5F 7C 00            [12] 1995 	mov	r4,#0x00
      003C61 90 07 CC         [24] 1996 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003C64 E8               [12] 1997 	mov	a,r0
      003C65 25 53            [12] 1998 	add	a, _calculateTcpChecksum_sloc4_1_0
      003C67 F0               [24] 1999 	movx	@dptr,a
      003C68 EA               [12] 2000 	mov	a,r2
      003C69 35 54            [12] 2001 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 1)
      003C6B A3               [24] 2002 	inc	dptr
      003C6C F0               [24] 2003 	movx	@dptr,a
      003C6D EB               [12] 2004 	mov	a,r3
      003C6E 35 55            [12] 2005 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 2)
      003C70 A3               [24] 2006 	inc	dptr
      003C71 F0               [24] 2007 	movx	@dptr,a
      003C72 EC               [12] 2008 	mov	a,r4
      003C73 35 56            [12] 2009 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 3)
      003C75 A3               [24] 2010 	inc	dptr
      003C76 F0               [24] 2011 	movx	@dptr,a
                                   2012 ;	webserver.c:239: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
      003C77 74 02            [12] 2013 	mov	a,#0x02
      003C79 25 4B            [12] 2014 	add	a, _calculateTcpChecksum_sloc2_1_0
      003C7B FB               [12] 2015 	mov	r3,a
      003C7C E4               [12] 2016 	clr	a
      003C7D 35 4C            [12] 2017 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      003C7F FC               [12] 2018 	mov	r4,a
      003C80 90 07 D0         [24] 2019 	mov	dptr,#_calculateTcpChecksum_i_20001_115
      003C83 EB               [12] 2020 	mov	a,r3
      003C84 F0               [24] 2021 	movx	@dptr,a
      003C85 EC               [12] 2022 	mov	a,r4
      003C86 A3               [24] 2023 	inc	dptr
      003C87 F0               [24] 2024 	movx	@dptr,a
      003C88 D0 04            [24] 2025 	pop	ar4
      003C8A D0 02            [24] 2026 	pop	ar2
      003C8C 02 3B E1         [24] 2027 	ljmp	00114$
                                   2028 ;	webserver.c:245: while (sum >> 16) {
      003C8F                       2029 00104$:
      003C8F 90 07 CC         [24] 2030 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003C92 E0               [24] 2031 	movx	a,@dptr
      003C93 FC               [12] 2032 	mov	r4,a
      003C94 A3               [24] 2033 	inc	dptr
      003C95 E0               [24] 2034 	movx	a,@dptr
      003C96 FD               [12] 2035 	mov	r5,a
      003C97 A3               [24] 2036 	inc	dptr
      003C98 E0               [24] 2037 	movx	a,@dptr
      003C99 FE               [12] 2038 	mov	r6,a
      003C9A A3               [24] 2039 	inc	dptr
      003C9B E0               [24] 2040 	movx	a,@dptr
      003C9C FF               [12] 2041 	mov	r7,a
      003C9D 8E 53            [24] 2042 	mov	_calculateTcpChecksum_sloc4_1_0,r6
      003C9F 8F 54            [24] 2043 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),r7
      003CA1 E4               [12] 2044 	clr	a
      003CA2 F5 55            [12] 2045 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      003CA4 F5 56            [12] 2046 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      003CA6 E5 53            [12] 2047 	mov	a,_calculateTcpChecksum_sloc4_1_0
      003CA8 45 54            [12] 2048 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      003CAA 45 55            [12] 2049 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      003CAC 45 56            [12] 2050 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      003CAE 60 20            [24] 2051 	jz	00106$
                                   2052 ;	webserver.c:246: sum = (sum & 0xFFFF) + (sum >> 16);
      003CB0 8C 00            [24] 2053 	mov	ar0,r4
      003CB2 8D 01            [24] 2054 	mov	ar1,r5
      003CB4 7A 00            [12] 2055 	mov	r2,#0x00
      003CB6 7B 00            [12] 2056 	mov	r3,#0x00
      003CB8 90 07 CC         [24] 2057 	mov	dptr,#_calculateTcpChecksum_sum_10001_110
      003CBB E5 53            [12] 2058 	mov	a,_calculateTcpChecksum_sloc4_1_0
      003CBD 28               [12] 2059 	add	a, r0
      003CBE F0               [24] 2060 	movx	@dptr,a
      003CBF E5 54            [12] 2061 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      003CC1 39               [12] 2062 	addc	a, r1
      003CC2 A3               [24] 2063 	inc	dptr
      003CC3 F0               [24] 2064 	movx	@dptr,a
      003CC4 E5 55            [12] 2065 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      003CC6 3A               [12] 2066 	addc	a, r2
      003CC7 A3               [24] 2067 	inc	dptr
      003CC8 F0               [24] 2068 	movx	@dptr,a
      003CC9 E5 56            [12] 2069 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      003CCB 3B               [12] 2070 	addc	a, r3
      003CCC A3               [24] 2071 	inc	dptr
      003CCD F0               [24] 2072 	movx	@dptr,a
      003CCE 80 BF            [24] 2073 	sjmp	00104$
      003CD0                       2074 00106$:
                                   2075 ;	webserver.c:250: uint16_t checksum = ~((uint16_t) sum);
      003CD0 EC               [12] 2076 	mov	a,r4
      003CD1 F4               [12] 2077 	cpl	a
      003CD2 FC               [12] 2078 	mov	r4,a
      003CD3 ED               [12] 2079 	mov	a,r5
      003CD4 F4               [12] 2080 	cpl	a
      003CD5 FD               [12] 2081 	mov	r5,a
                                   2082 ;	webserver.c:251: buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
      003CD6 90 07 C9         [24] 2083 	mov	dptr,#_calculateTcpChecksum_buffer_10000_108
      003CD9 E0               [24] 2084 	movx	a,@dptr
      003CDA FB               [12] 2085 	mov	r3,a
      003CDB A3               [24] 2086 	inc	dptr
      003CDC E0               [24] 2087 	movx	a,@dptr
      003CDD FE               [12] 2088 	mov	r6,a
      003CDE A3               [24] 2089 	inc	dptr
      003CDF E0               [24] 2090 	movx	a,@dptr
      003CE0 FF               [12] 2091 	mov	r7,a
      003CE1 74 32            [12] 2092 	mov	a,#0x32
      003CE3 2B               [12] 2093 	add	a, r3
      003CE4 F5 53            [12] 2094 	mov	_calculateTcpChecksum_sloc4_1_0,a
      003CE6 E4               [12] 2095 	clr	a
      003CE7 3E               [12] 2096 	addc	a, r6
      003CE8 F5 54            [12] 2097 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      003CEA 8F 55            [24] 2098 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),r7
      003CEC 8D 02            [24] 2099 	mov	ar2,r5
      003CEE 85 53 82         [24] 2100 	mov	dpl,_calculateTcpChecksum_sloc4_1_0
      003CF1 85 54 83         [24] 2101 	mov	dph,(_calculateTcpChecksum_sloc4_1_0 + 1)
      003CF4 85 55 F0         [24] 2102 	mov	b,(_calculateTcpChecksum_sloc4_1_0 + 2)
      003CF7 EA               [12] 2103 	mov	a,r2
      003CF8 12 4F 98         [24] 2104 	lcall	__gptrput
                                   2105 ;	webserver.c:252: buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
      003CFB 74 33            [12] 2106 	mov	a,#0x33
      003CFD 2B               [12] 2107 	add	a, r3
      003CFE FB               [12] 2108 	mov	r3,a
      003CFF E4               [12] 2109 	clr	a
      003D00 3E               [12] 2110 	addc	a, r6
      003D01 FE               [12] 2111 	mov	r6,a
      003D02 8B 82            [24] 2112 	mov	dpl,r3
      003D04 8E 83            [24] 2113 	mov	dph,r6
      003D06 8F F0            [24] 2114 	mov	b,r7
      003D08 EC               [12] 2115 	mov	a,r4
                                   2116 ;	webserver.c:253: }
      003D09 02 4F 98         [24] 2117 	ljmp	__gptrput
                                   2118 ;------------------------------------------------------------
                                   2119 ;Allocation info for local variables in function 'makeTcpFinPshAck'
                                   2120 ;------------------------------------------------------------
                                   2121 ;device_mac                Allocated with name '_makeTcpFinPshAck_device_mac_10000_120'
                                   2122 ;target_mac                Allocated with name '_makeTcpFinPshAck_target_mac_10000_120'
                                   2123 ;device_ip                 Allocated with name '_makeTcpFinPshAck_device_ip_10000_120'
                                   2124 ;target_ip                 Allocated with name '_makeTcpFinPshAck_target_ip_10000_120'
                                   2125 ;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_121'
                                   2126 ;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_121'
                                   2127 ;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_122'
                                   2128 ;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_122'
                                   2129 ;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_123'
                                   2130 ;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_123'
                                   2131 ;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_123'
                                   2132 ;------------------------------------------------------------
                                   2133 ;	webserver.c:265: void makeTcpFinPshAck(void) 
                                   2134 ;	-----------------------------------------
                                   2135 ;	 function makeTcpFinPshAck
                                   2136 ;	-----------------------------------------
      003D0C                       2137 _makeTcpFinPshAck:
                                   2138 ;	webserver.c:267: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      003D0C 90 07 D2         [24] 2139 	mov	dptr,#_makeTcpFinPshAck_device_mac_10000_120
      003D0F 74 02            [12] 2140 	mov	a,#0x02
      003D11 F0               [24] 2141 	movx	@dptr,a
      003D12 90 07 D3         [24] 2142 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0001)
      003D15 23               [12] 2143 	rl	a
      003D16 F0               [24] 2144 	movx	@dptr,a
      003D17 90 07 D4         [24] 2145 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0002)
      003D1A 74 A3            [12] 2146 	mov	a,#0xa3
      003D1C F0               [24] 2147 	movx	@dptr,a
      003D1D 90 07 D5         [24] 2148 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0003)
      003D20 74 3C            [12] 2149 	mov	a,#0x3c
      003D22 F0               [24] 2150 	movx	@dptr,a
      003D23 90 07 D6         [24] 2151 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0004)
      003D26 74 4D            [12] 2152 	mov	a,#0x4d
      003D28 F0               [24] 2153 	movx	@dptr,a
      003D29 90 07 D7         [24] 2154 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_120 + 0x0005)
      003D2C 74 50            [12] 2155 	mov	a,#0x50
      003D2E F0               [24] 2156 	movx	@dptr,a
                                   2157 ;	webserver.c:268: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      003D2F 90 07 D8         [24] 2158 	mov	dptr,#_makeTcpFinPshAck_target_mac_10000_120
      003D32 74 FF            [12] 2159 	mov	a,#0xff
      003D34 F0               [24] 2160 	movx	@dptr,a
      003D35 90 07 D9         [24] 2161 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0001)
      003D38 F0               [24] 2162 	movx	@dptr,a
      003D39 90 07 DA         [24] 2163 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0002)
      003D3C F0               [24] 2164 	movx	@dptr,a
      003D3D 90 07 DB         [24] 2165 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0003)
      003D40 F0               [24] 2166 	movx	@dptr,a
      003D41 90 07 DC         [24] 2167 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0004)
      003D44 F0               [24] 2168 	movx	@dptr,a
      003D45 90 07 DD         [24] 2169 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_120 + 0x0005)
      003D48 F0               [24] 2170 	movx	@dptr,a
                                   2171 ;	webserver.c:269: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      003D49 90 07 DE         [24] 2172 	mov	dptr,#_makeTcpFinPshAck_device_ip_10000_120
      003D4C 74 C0            [12] 2173 	mov	a,#0xc0
      003D4E F0               [24] 2174 	movx	@dptr,a
      003D4F 90 07 DF         [24] 2175 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0001)
      003D52 74 A8            [12] 2176 	mov	a,#0xa8
      003D54 F0               [24] 2177 	movx	@dptr,a
      003D55 90 07 E0         [24] 2178 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0002)
      003D58 74 01            [12] 2179 	mov	a,#0x01
      003D5A F0               [24] 2180 	movx	@dptr,a
      003D5B 90 07 E1         [24] 2181 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_120 + 0x0003)
      003D5E 74 64            [12] 2182 	mov	a,#0x64
      003D60 F0               [24] 2183 	movx	@dptr,a
                                   2184 ;	webserver.c:270: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      003D61 90 07 E2         [24] 2185 	mov	dptr,#_makeTcpFinPshAck_target_ip_10000_120
      003D64 74 C0            [12] 2186 	mov	a,#0xc0
      003D66 F0               [24] 2187 	movx	@dptr,a
      003D67 90 07 E3         [24] 2188 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0001)
      003D6A 74 A8            [12] 2189 	mov	a,#0xa8
      003D6C F0               [24] 2190 	movx	@dptr,a
      003D6D 90 07 E4         [24] 2191 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0002)
      003D70 74 01            [12] 2192 	mov	a,#0x01
      003D72 F0               [24] 2193 	movx	@dptr,a
      003D73 90 07 E5         [24] 2194 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_120 + 0x0003)
      003D76 F0               [24] 2195 	movx	@dptr,a
                                   2196 ;	webserver.c:271: printf("makeTcpFinPshAck\n\r");
      003D77 74 DF            [12] 2197 	mov	a,#___str_2
      003D79 C0 E0            [24] 2198 	push	acc
      003D7B 74 63            [12] 2199 	mov	a,#(___str_2 >> 8)
      003D7D C0 E0            [24] 2200 	push	acc
      003D7F 74 80            [12] 2201 	mov	a,#0x80
      003D81 C0 E0            [24] 2202 	push	acc
      003D83 12 52 65         [24] 2203 	lcall	_printf
      003D86 15 81            [12] 2204 	dec	sp
      003D88 15 81            [12] 2205 	dec	sp
      003D8A 15 81            [12] 2206 	dec	sp
                                   2207 ;	webserver.c:274: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      003D8C 90 08 9D         [24] 2208 	mov	dptr,#_memmove_PARM_2
      003D8F 74 A7            [12] 2209 	mov	a,#_buffer
      003D91 F0               [24] 2210 	movx	@dptr,a
      003D92 74 01            [12] 2211 	mov	a,#(_buffer >> 8)
      003D94 A3               [24] 2212 	inc	dptr
      003D95 F0               [24] 2213 	movx	@dptr,a
      003D96 E4               [12] 2214 	clr	a
      003D97 A3               [24] 2215 	inc	dptr
      003D98 F0               [24] 2216 	movx	@dptr,a
      003D99 90 08 A0         [24] 2217 	mov	dptr,#_memmove_PARM_3
      003D9C 74 36            [12] 2218 	mov	a,#0x36
      003D9E F0               [24] 2219 	movx	@dptr,a
      003D9F E4               [12] 2220 	clr	a
      003DA0 A3               [24] 2221 	inc	dptr
      003DA1 F0               [24] 2222 	movx	@dptr,a
      003DA2 90 01 A8         [24] 2223 	mov	dptr,#(_buffer + 0x0001)
      003DA5 F5 F0            [12] 2224 	mov	b,a
      003DA7 12 4F B3         [24] 2225 	lcall	_memmove
                                   2226 ;	webserver.c:275: buffer[0] = 0x0E;
      003DAA 90 01 A7         [24] 2227 	mov	dptr,#_buffer
      003DAD 74 0E            [12] 2228 	mov	a,#0x0e
      003DAF F0               [24] 2229 	movx	@dptr,a
                                   2230 ;	webserver.c:278: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      003DB0 90 08 91         [24] 2231 	mov	dptr,#___memcpy_PARM_2
      003DB3 74 AE            [12] 2232 	mov	a,#(_buffer + 0x0007)
      003DB5 F0               [24] 2233 	movx	@dptr,a
      003DB6 74 01            [12] 2234 	mov	a,#((_buffer + 0x0007) >> 8)
      003DB8 A3               [24] 2235 	inc	dptr
      003DB9 F0               [24] 2236 	movx	@dptr,a
      003DBA E4               [12] 2237 	clr	a
      003DBB A3               [24] 2238 	inc	dptr
      003DBC F0               [24] 2239 	movx	@dptr,a
      003DBD 90 08 94         [24] 2240 	mov	dptr,#___memcpy_PARM_3
      003DC0 74 06            [12] 2241 	mov	a,#0x06
      003DC2 F0               [24] 2242 	movx	@dptr,a
      003DC3 E4               [12] 2243 	clr	a
      003DC4 A3               [24] 2244 	inc	dptr
      003DC5 F0               [24] 2245 	movx	@dptr,a
      003DC6 90 01 A8         [24] 2246 	mov	dptr,#(_buffer + 0x0001)
      003DC9 F5 F0            [12] 2247 	mov	b,a
      003DCB 12 4E FC         [24] 2248 	lcall	___memcpy
                                   2249 ;	webserver.c:279: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      003DCE 90 08 91         [24] 2250 	mov	dptr,#___memcpy_PARM_2
      003DD1 74 D2            [12] 2251 	mov	a,#_makeTcpFinPshAck_device_mac_10000_120
      003DD3 F0               [24] 2252 	movx	@dptr,a
      003DD4 74 07            [12] 2253 	mov	a,#(_makeTcpFinPshAck_device_mac_10000_120 >> 8)
      003DD6 A3               [24] 2254 	inc	dptr
      003DD7 F0               [24] 2255 	movx	@dptr,a
      003DD8 E4               [12] 2256 	clr	a
      003DD9 A3               [24] 2257 	inc	dptr
      003DDA F0               [24] 2258 	movx	@dptr,a
      003DDB 90 08 94         [24] 2259 	mov	dptr,#___memcpy_PARM_3
      003DDE 74 06            [12] 2260 	mov	a,#0x06
      003DE0 F0               [24] 2261 	movx	@dptr,a
      003DE1 E4               [12] 2262 	clr	a
      003DE2 A3               [24] 2263 	inc	dptr
      003DE3 F0               [24] 2264 	movx	@dptr,a
      003DE4 90 01 AE         [24] 2265 	mov	dptr,#(_buffer + 0x0007)
      003DE7 F5 F0            [12] 2266 	mov	b,a
      003DE9 12 4E FC         [24] 2267 	lcall	___memcpy
                                   2268 ;	webserver.c:282: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      003DEC 90 08 91         [24] 2269 	mov	dptr,#___memcpy_PARM_2
      003DEF 74 C2            [12] 2270 	mov	a,#(_buffer + 0x001b)
      003DF1 F0               [24] 2271 	movx	@dptr,a
      003DF2 74 01            [12] 2272 	mov	a,#((_buffer + 0x001b) >> 8)
      003DF4 A3               [24] 2273 	inc	dptr
      003DF5 F0               [24] 2274 	movx	@dptr,a
      003DF6 E4               [12] 2275 	clr	a
      003DF7 A3               [24] 2276 	inc	dptr
      003DF8 F0               [24] 2277 	movx	@dptr,a
      003DF9 90 08 94         [24] 2278 	mov	dptr,#___memcpy_PARM_3
      003DFC 74 04            [12] 2279 	mov	a,#0x04
      003DFE F0               [24] 2280 	movx	@dptr,a
      003DFF E4               [12] 2281 	clr	a
      003E00 A3               [24] 2282 	inc	dptr
      003E01 F0               [24] 2283 	movx	@dptr,a
      003E02 90 01 C6         [24] 2284 	mov	dptr,#(_buffer + 0x001f)
      003E05 F5 F0            [12] 2285 	mov	b,a
      003E07 12 4E FC         [24] 2286 	lcall	___memcpy
                                   2287 ;	webserver.c:283: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      003E0A 90 08 91         [24] 2288 	mov	dptr,#___memcpy_PARM_2
      003E0D 74 DE            [12] 2289 	mov	a,#_makeTcpFinPshAck_device_ip_10000_120
      003E0F F0               [24] 2290 	movx	@dptr,a
      003E10 74 07            [12] 2291 	mov	a,#(_makeTcpFinPshAck_device_ip_10000_120 >> 8)
      003E12 A3               [24] 2292 	inc	dptr
      003E13 F0               [24] 2293 	movx	@dptr,a
      003E14 E4               [12] 2294 	clr	a
      003E15 A3               [24] 2295 	inc	dptr
      003E16 F0               [24] 2296 	movx	@dptr,a
      003E17 90 08 94         [24] 2297 	mov	dptr,#___memcpy_PARM_3
      003E1A 74 04            [12] 2298 	mov	a,#0x04
      003E1C F0               [24] 2299 	movx	@dptr,a
      003E1D E4               [12] 2300 	clr	a
      003E1E A3               [24] 2301 	inc	dptr
      003E1F F0               [24] 2302 	movx	@dptr,a
      003E20 90 01 C2         [24] 2303 	mov	dptr,#(_buffer + 0x001b)
      003E23 F5 F0            [12] 2304 	mov	b,a
      003E25 12 4E FC         [24] 2305 	lcall	___memcpy
                                   2306 ;	webserver.c:286: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      003E28 90 01 CA         [24] 2307 	mov	dptr,#(_buffer + 0x0023)
      003E2B E0               [24] 2308 	movx	a,@dptr
      003E2C FE               [12] 2309 	mov	r6,a
      003E2D 7F 00            [12] 2310 	mov	r7,#0x00
      003E2F 90 01 CB         [24] 2311 	mov	dptr,#(_buffer + 0x0024)
      003E32 E0               [24] 2312 	movx	a,@dptr
      003E33 7C 00            [12] 2313 	mov	r4,#0x00
      003E35 42 07            [12] 2314 	orl	ar7,a
      003E37 EC               [12] 2315 	mov	a,r4
      003E38 42 06            [12] 2316 	orl	ar6,a
                                   2317 ;	webserver.c:288: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      003E3A 90 01 CC         [24] 2318 	mov	dptr,#(_buffer + 0x0025)
      003E3D E0               [24] 2319 	movx	a,@dptr
      003E3E FC               [12] 2320 	mov	r4,a
      003E3F 7D 00            [12] 2321 	mov	r5,#0x00
      003E41 90 01 CD         [24] 2322 	mov	dptr,#(_buffer + 0x0026)
      003E44 E0               [24] 2323 	movx	a,@dptr
      003E45 7A 00            [12] 2324 	mov	r2,#0x00
      003E47 42 05            [12] 2325 	orl	ar5,a
      003E49 EA               [12] 2326 	mov	a,r2
      003E4A 42 04            [12] 2327 	orl	ar4,a
                                   2328 ;	webserver.c:290: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      003E4C 8C 03            [24] 2329 	mov	ar3,r4
      003E4E 90 01 CA         [24] 2330 	mov	dptr,#(_buffer + 0x0023)
      003E51 EB               [12] 2331 	mov	a,r3
      003E52 F0               [24] 2332 	movx	@dptr,a
                                   2333 ;	webserver.c:291: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      003E53 90 01 CB         [24] 2334 	mov	dptr,#(_buffer + 0x0024)
      003E56 ED               [12] 2335 	mov	a,r5
      003E57 F0               [24] 2336 	movx	@dptr,a
                                   2337 ;	webserver.c:292: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      003E58 8E 05            [24] 2338 	mov	ar5,r6
      003E5A 90 01 CC         [24] 2339 	mov	dptr,#(_buffer + 0x0025)
      003E5D ED               [12] 2340 	mov	a,r5
      003E5E F0               [24] 2341 	movx	@dptr,a
                                   2342 ;	webserver.c:293: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      003E5F 90 01 CD         [24] 2343 	mov	dptr,#(_buffer + 0x0026)
      003E62 EF               [12] 2344 	mov	a,r7
      003E63 F0               [24] 2345 	movx	@dptr,a
                                   2346 ;	webserver.c:296: uint32_t serverSeqNum = prevSeq;
      003E64 90 07 83         [24] 2347 	mov	dptr,#_prevSeq
      003E67 E0               [24] 2348 	movx	a,@dptr
      003E68 FC               [12] 2349 	mov	r4,a
      003E69 A3               [24] 2350 	inc	dptr
      003E6A E0               [24] 2351 	movx	a,@dptr
      003E6B FD               [12] 2352 	mov	r5,a
      003E6C A3               [24] 2353 	inc	dptr
      003E6D E0               [24] 2354 	movx	a,@dptr
      003E6E FE               [12] 2355 	mov	r6,a
      003E6F A3               [24] 2356 	inc	dptr
      003E70 E0               [24] 2357 	movx	a,@dptr
      003E71 FF               [12] 2358 	mov	r7,a
      003E72 90 07 E6         [24] 2359 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_122
      003E75 EC               [12] 2360 	mov	a,r4
      003E76 F0               [24] 2361 	movx	@dptr,a
      003E77 ED               [12] 2362 	mov	a,r5
      003E78 A3               [24] 2363 	inc	dptr
      003E79 F0               [24] 2364 	movx	@dptr,a
      003E7A EE               [12] 2365 	mov	a,r6
      003E7B A3               [24] 2366 	inc	dptr
      003E7C F0               [24] 2367 	movx	@dptr,a
      003E7D EF               [12] 2368 	mov	a,r7
      003E7E A3               [24] 2369 	inc	dptr
      003E7F F0               [24] 2370 	movx	@dptr,a
                                   2371 ;	webserver.c:297: uint32_t ackNum = prevAck;
      003E80 90 07 87         [24] 2372 	mov	dptr,#_prevAck
      003E83 E0               [24] 2373 	movx	a,@dptr
      003E84 F8               [12] 2374 	mov	r0,a
      003E85 A3               [24] 2375 	inc	dptr
      003E86 E0               [24] 2376 	movx	a,@dptr
      003E87 F9               [12] 2377 	mov	r1,a
      003E88 A3               [24] 2378 	inc	dptr
      003E89 E0               [24] 2379 	movx	a,@dptr
      003E8A FA               [12] 2380 	mov	r2,a
      003E8B A3               [24] 2381 	inc	dptr
      003E8C E0               [24] 2382 	movx	a,@dptr
      003E8D FB               [12] 2383 	mov	r3,a
      003E8E 90 07 EA         [24] 2384 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_122
      003E91 E8               [12] 2385 	mov	a,r0
      003E92 F0               [24] 2386 	movx	@dptr,a
      003E93 E9               [12] 2387 	mov	a,r1
      003E94 A3               [24] 2388 	inc	dptr
      003E95 F0               [24] 2389 	movx	@dptr,a
      003E96 EA               [12] 2390 	mov	a,r2
      003E97 A3               [24] 2391 	inc	dptr
      003E98 F0               [24] 2392 	movx	@dptr,a
      003E99 EB               [12] 2393 	mov	a,r3
      003E9A A3               [24] 2394 	inc	dptr
      003E9B F0               [24] 2395 	movx	@dptr,a
                                   2396 ;	webserver.c:299: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      003E9C 8F 04            [24] 2397 	mov	ar4,r7
      003E9E 90 01 CE         [24] 2398 	mov	dptr,#(_buffer + 0x0027)
      003EA1 EC               [12] 2399 	mov	a,r4
      003EA2 F0               [24] 2400 	movx	@dptr,a
                                   2401 ;	webserver.c:300: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      003EA3 90 07 E6         [24] 2402 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_122
      003EA6 E0               [24] 2403 	movx	a,@dptr
      003EA7 FC               [12] 2404 	mov	r4,a
      003EA8 A3               [24] 2405 	inc	dptr
      003EA9 E0               [24] 2406 	movx	a,@dptr
      003EAA FD               [12] 2407 	mov	r5,a
      003EAB A3               [24] 2408 	inc	dptr
      003EAC E0               [24] 2409 	movx	a,@dptr
      003EAD FE               [12] 2410 	mov	r6,a
      003EAE A3               [24] 2411 	inc	dptr
      003EAF E0               [24] 2412 	movx	a,@dptr
      003EB0 8E 03            [24] 2413 	mov	ar3,r6
      003EB2 90 01 CF         [24] 2414 	mov	dptr,#(_buffer + 0x0028)
      003EB5 EB               [12] 2415 	mov	a,r3
      003EB6 F0               [24] 2416 	movx	@dptr,a
                                   2417 ;	webserver.c:301: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      003EB7 8D 03            [24] 2418 	mov	ar3,r5
      003EB9 90 01 D0         [24] 2419 	mov	dptr,#(_buffer + 0x0029)
      003EBC EB               [12] 2420 	mov	a,r3
      003EBD F0               [24] 2421 	movx	@dptr,a
                                   2422 ;	webserver.c:302: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      003EBE 90 01 D1         [24] 2423 	mov	dptr,#(_buffer + 0x002a)
      003EC1 EC               [12] 2424 	mov	a,r4
      003EC2 F0               [24] 2425 	movx	@dptr,a
                                   2426 ;	webserver.c:303: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      003EC3 90 07 EA         [24] 2427 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_122
      003EC6 E0               [24] 2428 	movx	a,@dptr
      003EC7 FC               [12] 2429 	mov	r4,a
      003EC8 A3               [24] 2430 	inc	dptr
      003EC9 E0               [24] 2431 	movx	a,@dptr
      003ECA FD               [12] 2432 	mov	r5,a
      003ECB A3               [24] 2433 	inc	dptr
      003ECC E0               [24] 2434 	movx	a,@dptr
      003ECD FE               [12] 2435 	mov	r6,a
      003ECE A3               [24] 2436 	inc	dptr
      003ECF E0               [24] 2437 	movx	a,@dptr
      003ED0 90 01 D2         [24] 2438 	mov	dptr,#(_buffer + 0x002b)
      003ED3 F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	webserver.c:304: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      003ED4 8E 03            [24] 2441 	mov	ar3,r6
      003ED6 90 01 D3         [24] 2442 	mov	dptr,#(_buffer + 0x002c)
      003ED9 EB               [12] 2443 	mov	a,r3
      003EDA F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	webserver.c:305: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      003EDB 8D 03            [24] 2446 	mov	ar3,r5
      003EDD 90 01 D4         [24] 2447 	mov	dptr,#(_buffer + 0x002d)
      003EE0 EB               [12] 2448 	mov	a,r3
      003EE1 F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	webserver.c:306: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      003EE2 90 01 D5         [24] 2451 	mov	dptr,#(_buffer + 0x002e)
      003EE5 EC               [12] 2452 	mov	a,r4
      003EE6 F0               [24] 2453 	movx	@dptr,a
                                   2454 ;	webserver.c:309: const char *html_payload =
                                   2455 ;	webserver.c:332: uint16_t dataLength = strlen(html_payload);
      003EE7 90 60 64         [24] 2456 	mov	dptr,#___str_1
      003EEA 75 F0 80         [24] 2457 	mov	b, #0x80
      003EED 12 5C 6F         [24] 2458 	lcall	_strlen
      003EF0 AE 82            [24] 2459 	mov	r6, dpl
      003EF2 AF 83            [24] 2460 	mov	r7, dph
                                   2461 ;	webserver.c:335: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
      003EF4 74 28            [12] 2462 	mov	a,#0x28
      003EF6 2E               [12] 2463 	add	a, r6
      003EF7 FC               [12] 2464 	mov	r4,a
      003EF8 E4               [12] 2465 	clr	a
      003EF9 3F               [12] 2466 	addc	a, r7
                                   2467 ;	webserver.c:336: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      003EFA 90 01 B8         [24] 2468 	mov	dptr,#(_buffer + 0x0011)
      003EFD F0               [24] 2469 	movx	@dptr,a
                                   2470 ;	webserver.c:337: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      003EFE 90 01 B9         [24] 2471 	mov	dptr,#(_buffer + 0x0012)
      003F01 EC               [12] 2472 	mov	a,r4
      003F02 F0               [24] 2473 	movx	@dptr,a
                                   2474 ;	webserver.c:340: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
      003F03 90 01 D7         [24] 2475 	mov	dptr,#(_buffer + 0x0030)
      003F06 74 19            [12] 2476 	mov	a,#0x19
      003F08 F0               [24] 2477 	movx	@dptr,a
                                   2478 ;	webserver.c:341: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
      003F09 90 01 D8         [24] 2479 	mov	dptr,#(_buffer + 0x0031)
      003F0C 74 FF            [12] 2480 	mov	a,#0xff
      003F0E F0               [24] 2481 	movx	@dptr,a
                                   2482 ;	webserver.c:342: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      003F0F 90 01 D9         [24] 2483 	mov	dptr,#(_buffer + 0x0032)
      003F12 F0               [24] 2484 	movx	@dptr,a
                                   2485 ;	webserver.c:343: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      003F13 90 01 D6         [24] 2486 	mov	dptr,#(_buffer + 0x002f)
      003F16 74 50            [12] 2487 	mov	a,#0x50
      003F18 F0               [24] 2488 	movx	@dptr,a
                                   2489 ;	webserver.c:346: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
      003F19 90 08 91         [24] 2490 	mov	dptr,#___memcpy_PARM_2
      003F1C 74 64            [12] 2491 	mov	a,#___str_1
      003F1E F0               [24] 2492 	movx	@dptr,a
      003F1F 74 60            [12] 2493 	mov	a,#(___str_1 >> 8)
      003F21 A3               [24] 2494 	inc	dptr
      003F22 F0               [24] 2495 	movx	@dptr,a
      003F23 74 80            [12] 2496 	mov	a,#0x80
      003F25 A3               [24] 2497 	inc	dptr
      003F26 F0               [24] 2498 	movx	@dptr,a
      003F27 90 08 94         [24] 2499 	mov	dptr,#___memcpy_PARM_3
      003F2A EE               [12] 2500 	mov	a,r6
      003F2B F0               [24] 2501 	movx	@dptr,a
      003F2C EF               [12] 2502 	mov	a,r7
      003F2D A3               [24] 2503 	inc	dptr
      003F2E F0               [24] 2504 	movx	@dptr,a
      003F2F 90 01 DE         [24] 2505 	mov	dptr,#(_buffer + 0x0037)
      003F32 75 F0 00         [24] 2506 	mov	b, #0x00
      003F35 C0 07            [24] 2507 	push	ar7
      003F37 C0 06            [24] 2508 	push	ar6
      003F39 12 4E FC         [24] 2509 	lcall	___memcpy
                                   2510 ;	webserver.c:349: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      003F3C 90 01 A8         [24] 2511 	mov	dptr,#(_buffer + 0x0001)
      003F3F 75 F0 00         [24] 2512 	mov	b, #0x00
      003F42 12 38 B9         [24] 2513 	lcall	_calculateIPChecksum
                                   2514 ;	webserver.c:350: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      003F45 90 01 A8         [24] 2515 	mov	dptr,#(_buffer + 0x0001)
      003F48 75 F0 00         [24] 2516 	mov	b, #0x00
      003F4B 12 3A 23         [24] 2517 	lcall	_calculateTcpChecksum
      003F4E D0 06            [24] 2518 	pop	ar6
      003F50 D0 07            [24] 2519 	pop	ar7
                                   2520 ;	webserver.c:353: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
      003F52 74 37            [12] 2521 	mov	a,#0x37
      003F54 2E               [12] 2522 	add	a, r6
      003F55 FE               [12] 2523 	mov	r6,a
      003F56 E4               [12] 2524 	clr	a
      003F57 3F               [12] 2525 	addc	a, r7
      003F58 FF               [12] 2526 	mov	r7,a
      003F59 90 01 8C         [24] 2527 	mov	dptr,#_transmit_tcp_packet_PARM_2
      003F5C EE               [12] 2528 	mov	a,r6
      003F5D F0               [24] 2529 	movx	@dptr,a
      003F5E EF               [12] 2530 	mov	a,r7
      003F5F A3               [24] 2531 	inc	dptr
      003F60 F0               [24] 2532 	movx	@dptr,a
      003F61 90 01 A7         [24] 2533 	mov	dptr,#_buffer
      003F64 75 F0 00         [24] 2534 	mov	b, #0x00
      003F67 12 31 62         [24] 2535 	lcall	_transmit_tcp_packet
                                   2536 ;	webserver.c:356: connectionState = FIN_WAIT;
      003F6A 90 08 DE         [24] 2537 	mov	dptr,#_connectionState
      003F6D 74 03            [12] 2538 	mov	a,#0x03
      003F6F F0               [24] 2539 	movx	@dptr,a
                                   2540 ;	webserver.c:357: }
      003F70 22               [24] 2541 	ret
                                   2542 ;------------------------------------------------------------
                                   2543 ;Allocation info for local variables in function 'makeTcpAck3'
                                   2544 ;------------------------------------------------------------
                                   2545 ;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
                                   2546 ;device_mac                Allocated with name '_makeTcpAck3_device_mac_10000_125'
                                   2547 ;target_mac                Allocated with name '_makeTcpAck3_target_mac_10000_125'
                                   2548 ;device_ip                 Allocated with name '_makeTcpAck3_device_ip_10000_125'
                                   2549 ;target_ip                 Allocated with name '_makeTcpAck3_target_ip_10000_125'
                                   2550 ;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_126'
                                   2551 ;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_126'
                                   2552 ;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_127'
                                   2553 ;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_127'
                                   2554 ;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_127'
                                   2555 ;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_127'
                                   2556 ;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_128'
                                   2557 ;------------------------------------------------------------
                                   2558 ;	webserver.c:368: void makeTcpAck3(void) 
                                   2559 ;	-----------------------------------------
                                   2560 ;	 function makeTcpAck3
                                   2561 ;	-----------------------------------------
      003F71                       2562 _makeTcpAck3:
                                   2563 ;	webserver.c:370: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      003F71 90 07 EE         [24] 2564 	mov	dptr,#_makeTcpAck3_device_mac_10000_125
      003F74 74 02            [12] 2565 	mov	a,#0x02
      003F76 F0               [24] 2566 	movx	@dptr,a
      003F77 90 07 EF         [24] 2567 	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0001)
      003F7A 23               [12] 2568 	rl	a
      003F7B F0               [24] 2569 	movx	@dptr,a
      003F7C 90 07 F0         [24] 2570 	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0002)
      003F7F 74 A3            [12] 2571 	mov	a,#0xa3
      003F81 F0               [24] 2572 	movx	@dptr,a
      003F82 90 07 F1         [24] 2573 	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0003)
      003F85 74 3C            [12] 2574 	mov	a,#0x3c
      003F87 F0               [24] 2575 	movx	@dptr,a
      003F88 90 07 F2         [24] 2576 	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0004)
      003F8B 74 4D            [12] 2577 	mov	a,#0x4d
      003F8D F0               [24] 2578 	movx	@dptr,a
      003F8E 90 07 F3         [24] 2579 	mov	dptr,#(_makeTcpAck3_device_mac_10000_125 + 0x0005)
      003F91 74 50            [12] 2580 	mov	a,#0x50
      003F93 F0               [24] 2581 	movx	@dptr,a
                                   2582 ;	webserver.c:371: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      003F94 90 07 F4         [24] 2583 	mov	dptr,#_makeTcpAck3_target_mac_10000_125
      003F97 74 FF            [12] 2584 	mov	a,#0xff
      003F99 F0               [24] 2585 	movx	@dptr,a
      003F9A 90 07 F5         [24] 2586 	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0001)
      003F9D F0               [24] 2587 	movx	@dptr,a
      003F9E 90 07 F6         [24] 2588 	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0002)
      003FA1 F0               [24] 2589 	movx	@dptr,a
      003FA2 90 07 F7         [24] 2590 	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0003)
      003FA5 F0               [24] 2591 	movx	@dptr,a
      003FA6 90 07 F8         [24] 2592 	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0004)
      003FA9 F0               [24] 2593 	movx	@dptr,a
      003FAA 90 07 F9         [24] 2594 	mov	dptr,#(_makeTcpAck3_target_mac_10000_125 + 0x0005)
      003FAD F0               [24] 2595 	movx	@dptr,a
                                   2596 ;	webserver.c:372: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      003FAE 90 07 FA         [24] 2597 	mov	dptr,#_makeTcpAck3_device_ip_10000_125
      003FB1 74 C0            [12] 2598 	mov	a,#0xc0
      003FB3 F0               [24] 2599 	movx	@dptr,a
      003FB4 90 07 FB         [24] 2600 	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0001)
      003FB7 74 A8            [12] 2601 	mov	a,#0xa8
      003FB9 F0               [24] 2602 	movx	@dptr,a
      003FBA 90 07 FC         [24] 2603 	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0002)
      003FBD 74 01            [12] 2604 	mov	a,#0x01
      003FBF F0               [24] 2605 	movx	@dptr,a
      003FC0 90 07 FD         [24] 2606 	mov	dptr,#(_makeTcpAck3_device_ip_10000_125 + 0x0003)
      003FC3 74 64            [12] 2607 	mov	a,#0x64
      003FC5 F0               [24] 2608 	movx	@dptr,a
                                   2609 ;	webserver.c:373: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      003FC6 90 07 FE         [24] 2610 	mov	dptr,#_makeTcpAck3_target_ip_10000_125
      003FC9 74 C0            [12] 2611 	mov	a,#0xc0
      003FCB F0               [24] 2612 	movx	@dptr,a
      003FCC 90 07 FF         [24] 2613 	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0001)
      003FCF 74 A8            [12] 2614 	mov	a,#0xa8
      003FD1 F0               [24] 2615 	movx	@dptr,a
      003FD2 90 08 00         [24] 2616 	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0002)
      003FD5 74 01            [12] 2617 	mov	a,#0x01
      003FD7 F0               [24] 2618 	movx	@dptr,a
      003FD8 90 08 01         [24] 2619 	mov	dptr,#(_makeTcpAck3_target_ip_10000_125 + 0x0003)
      003FDB F0               [24] 2620 	movx	@dptr,a
                                   2621 ;	webserver.c:374: printf("makeTcpAck\n\r");
      003FDC 74 F2            [12] 2622 	mov	a,#___str_3
      003FDE C0 E0            [24] 2623 	push	acc
      003FE0 74 63            [12] 2624 	mov	a,#(___str_3 >> 8)
      003FE2 C0 E0            [24] 2625 	push	acc
      003FE4 74 80            [12] 2626 	mov	a,#0x80
      003FE6 C0 E0            [24] 2627 	push	acc
      003FE8 12 52 65         [24] 2628 	lcall	_printf
      003FEB 15 81            [12] 2629 	dec	sp
      003FED 15 81            [12] 2630 	dec	sp
      003FEF 15 81            [12] 2631 	dec	sp
                                   2632 ;	webserver.c:377: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      003FF1 90 08 9D         [24] 2633 	mov	dptr,#_memmove_PARM_2
      003FF4 74 A7            [12] 2634 	mov	a,#_buffer
      003FF6 F0               [24] 2635 	movx	@dptr,a
      003FF7 74 01            [12] 2636 	mov	a,#(_buffer >> 8)
      003FF9 A3               [24] 2637 	inc	dptr
      003FFA F0               [24] 2638 	movx	@dptr,a
      003FFB E4               [12] 2639 	clr	a
      003FFC A3               [24] 2640 	inc	dptr
      003FFD F0               [24] 2641 	movx	@dptr,a
      003FFE 90 08 A0         [24] 2642 	mov	dptr,#_memmove_PARM_3
      004001 74 36            [12] 2643 	mov	a,#0x36
      004003 F0               [24] 2644 	movx	@dptr,a
      004004 E4               [12] 2645 	clr	a
      004005 A3               [24] 2646 	inc	dptr
      004006 F0               [24] 2647 	movx	@dptr,a
      004007 90 01 A8         [24] 2648 	mov	dptr,#(_buffer + 0x0001)
      00400A F5 F0            [12] 2649 	mov	b,a
      00400C 12 4F B3         [24] 2650 	lcall	_memmove
                                   2651 ;	webserver.c:378: buffer[0] = 0x0E;
      00400F 90 01 A7         [24] 2652 	mov	dptr,#_buffer
      004012 74 0E            [12] 2653 	mov	a,#0x0e
      004014 F0               [24] 2654 	movx	@dptr,a
                                   2655 ;	webserver.c:381: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      004015 90 08 91         [24] 2656 	mov	dptr,#___memcpy_PARM_2
      004018 74 AE            [12] 2657 	mov	a,#(_buffer + 0x0007)
      00401A F0               [24] 2658 	movx	@dptr,a
      00401B 74 01            [12] 2659 	mov	a,#((_buffer + 0x0007) >> 8)
      00401D A3               [24] 2660 	inc	dptr
      00401E F0               [24] 2661 	movx	@dptr,a
      00401F E4               [12] 2662 	clr	a
      004020 A3               [24] 2663 	inc	dptr
      004021 F0               [24] 2664 	movx	@dptr,a
      004022 90 08 94         [24] 2665 	mov	dptr,#___memcpy_PARM_3
      004025 74 06            [12] 2666 	mov	a,#0x06
      004027 F0               [24] 2667 	movx	@dptr,a
      004028 E4               [12] 2668 	clr	a
      004029 A3               [24] 2669 	inc	dptr
      00402A F0               [24] 2670 	movx	@dptr,a
      00402B 90 01 A8         [24] 2671 	mov	dptr,#(_buffer + 0x0001)
      00402E F5 F0            [12] 2672 	mov	b,a
      004030 12 4E FC         [24] 2673 	lcall	___memcpy
                                   2674 ;	webserver.c:382: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004033 90 08 91         [24] 2675 	mov	dptr,#___memcpy_PARM_2
      004036 74 EE            [12] 2676 	mov	a,#_makeTcpAck3_device_mac_10000_125
      004038 F0               [24] 2677 	movx	@dptr,a
      004039 74 07            [12] 2678 	mov	a,#(_makeTcpAck3_device_mac_10000_125 >> 8)
      00403B A3               [24] 2679 	inc	dptr
      00403C F0               [24] 2680 	movx	@dptr,a
      00403D E4               [12] 2681 	clr	a
      00403E A3               [24] 2682 	inc	dptr
      00403F F0               [24] 2683 	movx	@dptr,a
      004040 90 08 94         [24] 2684 	mov	dptr,#___memcpy_PARM_3
      004043 74 06            [12] 2685 	mov	a,#0x06
      004045 F0               [24] 2686 	movx	@dptr,a
      004046 E4               [12] 2687 	clr	a
      004047 A3               [24] 2688 	inc	dptr
      004048 F0               [24] 2689 	movx	@dptr,a
      004049 90 01 AE         [24] 2690 	mov	dptr,#(_buffer + 0x0007)
      00404C F5 F0            [12] 2691 	mov	b,a
      00404E 12 4E FC         [24] 2692 	lcall	___memcpy
                                   2693 ;	webserver.c:385: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004051 90 08 91         [24] 2694 	mov	dptr,#___memcpy_PARM_2
      004054 74 C2            [12] 2695 	mov	a,#(_buffer + 0x001b)
      004056 F0               [24] 2696 	movx	@dptr,a
      004057 74 01            [12] 2697 	mov	a,#((_buffer + 0x001b) >> 8)
      004059 A3               [24] 2698 	inc	dptr
      00405A F0               [24] 2699 	movx	@dptr,a
      00405B E4               [12] 2700 	clr	a
      00405C A3               [24] 2701 	inc	dptr
      00405D F0               [24] 2702 	movx	@dptr,a
      00405E 90 08 94         [24] 2703 	mov	dptr,#___memcpy_PARM_3
      004061 74 04            [12] 2704 	mov	a,#0x04
      004063 F0               [24] 2705 	movx	@dptr,a
      004064 E4               [12] 2706 	clr	a
      004065 A3               [24] 2707 	inc	dptr
      004066 F0               [24] 2708 	movx	@dptr,a
      004067 90 01 C6         [24] 2709 	mov	dptr,#(_buffer + 0x001f)
      00406A F5 F0            [12] 2710 	mov	b,a
      00406C 12 4E FC         [24] 2711 	lcall	___memcpy
                                   2712 ;	webserver.c:386: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      00406F 90 08 91         [24] 2713 	mov	dptr,#___memcpy_PARM_2
      004072 74 FA            [12] 2714 	mov	a,#_makeTcpAck3_device_ip_10000_125
      004074 F0               [24] 2715 	movx	@dptr,a
      004075 74 07            [12] 2716 	mov	a,#(_makeTcpAck3_device_ip_10000_125 >> 8)
      004077 A3               [24] 2717 	inc	dptr
      004078 F0               [24] 2718 	movx	@dptr,a
      004079 E4               [12] 2719 	clr	a
      00407A A3               [24] 2720 	inc	dptr
      00407B F0               [24] 2721 	movx	@dptr,a
      00407C 90 08 94         [24] 2722 	mov	dptr,#___memcpy_PARM_3
      00407F 74 04            [12] 2723 	mov	a,#0x04
      004081 F0               [24] 2724 	movx	@dptr,a
      004082 E4               [12] 2725 	clr	a
      004083 A3               [24] 2726 	inc	dptr
      004084 F0               [24] 2727 	movx	@dptr,a
      004085 90 01 C2         [24] 2728 	mov	dptr,#(_buffer + 0x001b)
      004088 F5 F0            [12] 2729 	mov	b,a
      00408A 12 4E FC         [24] 2730 	lcall	___memcpy
                                   2731 ;	webserver.c:389: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00408D 90 01 CA         [24] 2732 	mov	dptr,#(_buffer + 0x0023)
      004090 E0               [24] 2733 	movx	a,@dptr
      004091 FE               [12] 2734 	mov	r6,a
      004092 7F 00            [12] 2735 	mov	r7,#0x00
      004094 90 01 CB         [24] 2736 	mov	dptr,#(_buffer + 0x0024)
      004097 E0               [24] 2737 	movx	a,@dptr
      004098 7C 00            [12] 2738 	mov	r4,#0x00
      00409A 42 07            [12] 2739 	orl	ar7,a
      00409C EC               [12] 2740 	mov	a,r4
      00409D 42 06            [12] 2741 	orl	ar6,a
                                   2742 ;	webserver.c:391: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      00409F 90 01 CC         [24] 2743 	mov	dptr,#(_buffer + 0x0025)
      0040A2 E0               [24] 2744 	movx	a,@dptr
      0040A3 FC               [12] 2745 	mov	r4,a
      0040A4 7D 00            [12] 2746 	mov	r5,#0x00
      0040A6 90 01 CD         [24] 2747 	mov	dptr,#(_buffer + 0x0026)
      0040A9 E0               [24] 2748 	movx	a,@dptr
      0040AA 7A 00            [12] 2749 	mov	r2,#0x00
      0040AC 42 05            [12] 2750 	orl	ar5,a
      0040AE EA               [12] 2751 	mov	a,r2
      0040AF 42 04            [12] 2752 	orl	ar4,a
                                   2753 ;	webserver.c:393: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0040B1 8C 03            [24] 2754 	mov	ar3,r4
      0040B3 90 01 CA         [24] 2755 	mov	dptr,#(_buffer + 0x0023)
      0040B6 EB               [12] 2756 	mov	a,r3
      0040B7 F0               [24] 2757 	movx	@dptr,a
                                   2758 ;	webserver.c:394: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0040B8 90 01 CB         [24] 2759 	mov	dptr,#(_buffer + 0x0024)
      0040BB ED               [12] 2760 	mov	a,r5
      0040BC F0               [24] 2761 	movx	@dptr,a
                                   2762 ;	webserver.c:395: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0040BD 8E 05            [24] 2763 	mov	ar5,r6
      0040BF 90 01 CC         [24] 2764 	mov	dptr,#(_buffer + 0x0025)
      0040C2 ED               [12] 2765 	mov	a,r5
      0040C3 F0               [24] 2766 	movx	@dptr,a
                                   2767 ;	webserver.c:396: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0040C4 90 01 CD         [24] 2768 	mov	dptr,#(_buffer + 0x0026)
      0040C7 EF               [12] 2769 	mov	a,r7
      0040C8 F0               [24] 2770 	movx	@dptr,a
                                   2771 ;	webserver.c:399: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      0040C9 90 01 CE         [24] 2772 	mov	dptr,#(_buffer + 0x0027)
      0040CC E0               [24] 2773 	movx	a,@dptr
      0040CD FF               [12] 2774 	mov	r7,a
      0040CE 7E 00            [12] 2775 	mov	r6,#0x00
      0040D0 7D 00            [12] 2776 	mov	r5,#0x00
      0040D2 8F 04            [24] 2777 	mov	ar4,r7
      0040D4 7F 00            [12] 2778 	mov	r7,#0x00
      0040D6 90 01 CF         [24] 2779 	mov	dptr,#(_buffer + 0x0028)
      0040D9 E0               [24] 2780 	movx	a,@dptr
      0040DA F8               [12] 2781 	mov	r0,a
      0040DB 79 00            [12] 2782 	mov	r1,#0x00
      0040DD 89 03            [24] 2783 	mov	ar3,r1
      0040DF 88 02            [24] 2784 	mov	ar2,r0
      0040E1 E4               [12] 2785 	clr	a
      0040E2 42 07            [12] 2786 	orl	ar7,a
      0040E4 E9               [12] 2787 	mov	a,r1
      0040E5 42 06            [12] 2788 	orl	ar6,a
      0040E7 EA               [12] 2789 	mov	a,r2
      0040E8 42 05            [12] 2790 	orl	ar5,a
      0040EA EB               [12] 2791 	mov	a,r3
      0040EB 42 04            [12] 2792 	orl	ar4,a
      0040ED 90 01 D0         [24] 2793 	mov	dptr,#(_buffer + 0x0029)
      0040F0 E0               [24] 2794 	movx	a,@dptr
      0040F1 F8               [12] 2795 	mov	r0,a
      0040F2 79 00            [12] 2796 	mov	r1,#0x00
      0040F4 7A 00            [12] 2797 	mov	r2,#0x00
      0040F6 8A 03            [24] 2798 	mov	ar3,r2
      0040F8 89 02            [24] 2799 	mov	ar2,r1
      0040FA 88 01            [24] 2800 	mov	ar1,r0
      0040FC E4               [12] 2801 	clr	a
      0040FD 42 07            [12] 2802 	orl	ar7,a
      0040FF E9               [12] 2803 	mov	a,r1
      004100 42 06            [12] 2804 	orl	ar6,a
      004102 EA               [12] 2805 	mov	a,r2
      004103 42 05            [12] 2806 	orl	ar5,a
      004105 EB               [12] 2807 	mov	a,r3
      004106 42 04            [12] 2808 	orl	ar4,a
      004108 90 01 D1         [24] 2809 	mov	dptr,#(_buffer + 0x002a)
      00410B E0               [24] 2810 	movx	a,@dptr
      00410C F8               [12] 2811 	mov	r0,a
      00410D E4               [12] 2812 	clr	a
      00410E F9               [12] 2813 	mov	r1,a
      00410F FA               [12] 2814 	mov	r2,a
      004110 FB               [12] 2815 	mov	r3,a
      004111 E8               [12] 2816 	mov	a,r0
      004112 42 07            [12] 2817 	orl	ar7,a
      004114 E9               [12] 2818 	mov	a,r1
      004115 42 06            [12] 2819 	orl	ar6,a
      004117 EA               [12] 2820 	mov	a,r2
      004118 42 05            [12] 2821 	orl	ar5,a
      00411A EB               [12] 2822 	mov	a,r3
      00411B 42 04            [12] 2823 	orl	ar4,a
                                   2824 ;	webserver.c:404: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
      00411D 90 01 D2         [24] 2825 	mov	dptr,#(_buffer + 0x002b)
      004120 E0               [24] 2826 	movx	a,@dptr
      004121 F8               [12] 2827 	mov	r0,a
      004122 79 00            [12] 2828 	mov	r1,#0x00
      004124 7B 00            [12] 2829 	mov	r3,#0x00
      004126 88 24            [24] 2830 	mov	(_makeTcpAck3_sloc0_1_0 + 3),r0
      004128 8B 21            [24] 2831 	mov	_makeTcpAck3_sloc0_1_0,r3
      00412A 8B 22            [24] 2832 	mov	(_makeTcpAck3_sloc0_1_0 + 1),r3
      00412C 8B 23            [24] 2833 	mov	(_makeTcpAck3_sloc0_1_0 + 2),r3
      00412E 90 01 D3         [24] 2834 	mov	dptr,#(_buffer + 0x002c)
      004131 E0               [24] 2835 	movx	a,@dptr
      004132 F8               [12] 2836 	mov	r0,a
      004133 89 03            [24] 2837 	mov	ar3,r1
      004135 88 02            [24] 2838 	mov	ar2,r0
      004137 E4               [12] 2839 	clr	a
      004138 42 21            [12] 2840 	orl	_makeTcpAck3_sloc0_1_0,a
      00413A E9               [12] 2841 	mov	a,r1
      00413B 42 22            [12] 2842 	orl	(_makeTcpAck3_sloc0_1_0 + 1),a
      00413D EA               [12] 2843 	mov	a,r2
      00413E 42 23            [12] 2844 	orl	(_makeTcpAck3_sloc0_1_0 + 2),a
      004140 EB               [12] 2845 	mov	a,r3
      004141 42 24            [12] 2846 	orl	(_makeTcpAck3_sloc0_1_0 + 3),a
      004143 90 01 D4         [24] 2847 	mov	dptr,#(_buffer + 0x002d)
      004146 E0               [24] 2848 	movx	a,@dptr
      004147 F8               [12] 2849 	mov	r0,a
      004148 79 00            [12] 2850 	mov	r1,#0x00
      00414A 7A 00            [12] 2851 	mov	r2,#0x00
      00414C 8A 03            [24] 2852 	mov	ar3,r2
      00414E 89 02            [24] 2853 	mov	ar2,r1
      004150 88 01            [24] 2854 	mov	ar1,r0
      004152 E4               [12] 2855 	clr	a
      004153 42 21            [12] 2856 	orl	_makeTcpAck3_sloc0_1_0,a
      004155 E9               [12] 2857 	mov	a,r1
      004156 42 22            [12] 2858 	orl	(_makeTcpAck3_sloc0_1_0 + 1),a
      004158 EA               [12] 2859 	mov	a,r2
      004159 42 23            [12] 2860 	orl	(_makeTcpAck3_sloc0_1_0 + 2),a
      00415B EB               [12] 2861 	mov	a,r3
      00415C 42 24            [12] 2862 	orl	(_makeTcpAck3_sloc0_1_0 + 3),a
      00415E 90 01 D5         [24] 2863 	mov	dptr,#(_buffer + 0x002e)
      004161 E0               [24] 2864 	movx	a,@dptr
      004162 F8               [12] 2865 	mov	r0,a
      004163 E4               [12] 2866 	clr	a
      004164 F9               [12] 2867 	mov	r1,a
      004165 FA               [12] 2868 	mov	r2,a
      004166 FB               [12] 2869 	mov	r3,a
      004167 E5 22            [12] 2870 	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
      004169 42 01            [12] 2871 	orl	ar1,a
      00416B E5 23            [12] 2872 	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
      00416D 42 02            [12] 2873 	orl	ar2,a
      00416F E5 24            [12] 2874 	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
      004171 42 03            [12] 2875 	orl	ar3,a
                                   2876 ;	webserver.c:410: uint32_t ackNum = clientSeqNum + 1;
      004173 74 01            [12] 2877 	mov	a,#0x01
      004175 2F               [12] 2878 	add	a, r7
      004176 F5 21            [12] 2879 	mov	_makeTcpAck3_sloc0_1_0,a
      004178 E4               [12] 2880 	clr	a
      004179 3E               [12] 2881 	addc	a, r6
      00417A F5 22            [12] 2882 	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
      00417C E4               [12] 2883 	clr	a
      00417D 3D               [12] 2884 	addc	a, r5
      00417E F5 23            [12] 2885 	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
      004180 E4               [12] 2886 	clr	a
      004181 3C               [12] 2887 	addc	a, r4
      004182 F5 24            [12] 2888 	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
                                   2889 ;	webserver.c:411: prevSeq = serverSeqNum;
      004184 90 07 83         [24] 2890 	mov	dptr,#_prevSeq
      004187 E8               [12] 2891 	mov	a,r0
      004188 F0               [24] 2892 	movx	@dptr,a
      004189 E9               [12] 2893 	mov	a,r1
      00418A A3               [24] 2894 	inc	dptr
      00418B F0               [24] 2895 	movx	@dptr,a
      00418C EA               [12] 2896 	mov	a,r2
      00418D A3               [24] 2897 	inc	dptr
      00418E F0               [24] 2898 	movx	@dptr,a
      00418F EB               [12] 2899 	mov	a,r3
      004190 A3               [24] 2900 	inc	dptr
      004191 F0               [24] 2901 	movx	@dptr,a
                                   2902 ;	webserver.c:412: prevAck = ackNum;
      004192 90 07 87         [24] 2903 	mov	dptr,#_prevAck
      004195 E5 21            [12] 2904 	mov	a,_makeTcpAck3_sloc0_1_0
      004197 F0               [24] 2905 	movx	@dptr,a
      004198 E5 22            [12] 2906 	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
      00419A A3               [24] 2907 	inc	dptr
      00419B F0               [24] 2908 	movx	@dptr,a
      00419C E5 23            [12] 2909 	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
      00419E A3               [24] 2910 	inc	dptr
      00419F F0               [24] 2911 	movx	@dptr,a
      0041A0 E5 24            [12] 2912 	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
      0041A2 A3               [24] 2913 	inc	dptr
      0041A3 F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	webserver.c:415: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0041A4 8B 07            [24] 2916 	mov	ar7,r3
      0041A6 90 01 CE         [24] 2917 	mov	dptr,#(_buffer + 0x0027)
      0041A9 EF               [12] 2918 	mov	a,r7
      0041AA F0               [24] 2919 	movx	@dptr,a
                                   2920 ;	webserver.c:416: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0041AB 8A 07            [24] 2921 	mov	ar7,r2
      0041AD 90 01 CF         [24] 2922 	mov	dptr,#(_buffer + 0x0028)
      0041B0 EF               [12] 2923 	mov	a,r7
      0041B1 F0               [24] 2924 	movx	@dptr,a
                                   2925 ;	webserver.c:417: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0041B2 89 07            [24] 2926 	mov	ar7,r1
      0041B4 90 01 D0         [24] 2927 	mov	dptr,#(_buffer + 0x0029)
      0041B7 EF               [12] 2928 	mov	a,r7
      0041B8 F0               [24] 2929 	movx	@dptr,a
                                   2930 ;	webserver.c:418: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0041B9 90 01 D1         [24] 2931 	mov	dptr,#(_buffer + 0x002a)
      0041BC E8               [12] 2932 	mov	a,r0
      0041BD F0               [24] 2933 	movx	@dptr,a
                                   2934 ;	webserver.c:419: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      0041BE AF 24            [24] 2935 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
      0041C0 90 01 D2         [24] 2936 	mov	dptr,#(_buffer + 0x002b)
      0041C3 EF               [12] 2937 	mov	a,r7
      0041C4 F0               [24] 2938 	movx	@dptr,a
                                   2939 ;	webserver.c:420: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      0041C5 AF 23            [24] 2940 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
      0041C7 90 01 D3         [24] 2941 	mov	dptr,#(_buffer + 0x002c)
      0041CA EF               [12] 2942 	mov	a,r7
      0041CB F0               [24] 2943 	movx	@dptr,a
                                   2944 ;	webserver.c:421: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      0041CC AF 22            [24] 2945 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
      0041CE 90 01 D4         [24] 2946 	mov	dptr,#(_buffer + 0x002d)
      0041D1 EF               [12] 2947 	mov	a,r7
      0041D2 F0               [24] 2948 	movx	@dptr,a
                                   2949 ;	webserver.c:422: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      0041D3 AF 21            [24] 2950 	mov	r7,_makeTcpAck3_sloc0_1_0
      0041D5 90 01 D5         [24] 2951 	mov	dptr,#(_buffer + 0x002e)
      0041D8 EF               [12] 2952 	mov	a,r7
      0041D9 F0               [24] 2953 	movx	@dptr,a
                                   2954 ;	webserver.c:426: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      0041DA 90 01 B8         [24] 2955 	mov	dptr,#(_buffer + 0x0011)
      0041DD E4               [12] 2956 	clr	a
      0041DE F0               [24] 2957 	movx	@dptr,a
                                   2958 ;	webserver.c:427: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      0041DF 90 01 B9         [24] 2959 	mov	dptr,#(_buffer + 0x0012)
      0041E2 74 28            [12] 2960 	mov	a,#0x28
      0041E4 F0               [24] 2961 	movx	@dptr,a
                                   2962 ;	webserver.c:430: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      0041E5 90 01 D7         [24] 2963 	mov	dptr,#(_buffer + 0x0030)
      0041E8 74 10            [12] 2964 	mov	a,#0x10
      0041EA F0               [24] 2965 	movx	@dptr,a
                                   2966 ;	webserver.c:431: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      0041EB 90 01 D8         [24] 2967 	mov	dptr,#(_buffer + 0x0031)
      0041EE 74 FF            [12] 2968 	mov	a,#0xff
      0041F0 F0               [24] 2969 	movx	@dptr,a
                                   2970 ;	webserver.c:432: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0041F1 90 01 D9         [24] 2971 	mov	dptr,#(_buffer + 0x0032)
      0041F4 F0               [24] 2972 	movx	@dptr,a
                                   2973 ;	webserver.c:433: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0041F5 90 01 D6         [24] 2974 	mov	dptr,#(_buffer + 0x002f)
      0041F8 74 50            [12] 2975 	mov	a,#0x50
      0041FA F0               [24] 2976 	movx	@dptr,a
                                   2977 ;	webserver.c:436: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0041FB 90 01 A8         [24] 2978 	mov	dptr,#(_buffer + 0x0001)
      0041FE 75 F0 00         [24] 2979 	mov	b, #0x00
      004201 12 38 B9         [24] 2980 	lcall	_calculateIPChecksum
                                   2981 ;	webserver.c:437: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      004204 90 01 A8         [24] 2982 	mov	dptr,#(_buffer + 0x0001)
      004207 75 F0 00         [24] 2983 	mov	b, #0x00
      00420A 12 3A 23         [24] 2984 	lcall	_calculateTcpChecksum
                                   2985 ;	webserver.c:441: transmit_tcp_packet(buffer, 1 + 54);
      00420D 90 01 8C         [24] 2986 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004210 74 37            [12] 2987 	mov	a,#0x37
      004212 F0               [24] 2988 	movx	@dptr,a
      004213 E4               [12] 2989 	clr	a
      004214 A3               [24] 2990 	inc	dptr
      004215 F0               [24] 2991 	movx	@dptr,a
      004216 90 01 A7         [24] 2992 	mov	dptr,#_buffer
      004219 F5 F0            [12] 2993 	mov	b,a
      00421B 12 31 62         [24] 2994 	lcall	_transmit_tcp_packet
                                   2995 ;	webserver.c:444: connectionState = ACK_SENT;
      00421E 90 08 DE         [24] 2996 	mov	dptr,#_connectionState
      004221 74 05            [12] 2997 	mov	a,#0x05
      004223 F0               [24] 2998 	movx	@dptr,a
                                   2999 ;	webserver.c:445: }
      004224 22               [24] 3000 	ret
                                   3001 ;------------------------------------------------------------
                                   3002 ;Allocation info for local variables in function 'makeTcpAck2'
                                   3003 ;------------------------------------------------------------
                                   3004 ;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
                                   3005 ;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
                                   3006 ;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
                                   3007 ;device_mac                Allocated with name '_makeTcpAck2_device_mac_10000_130'
                                   3008 ;target_mac                Allocated with name '_makeTcpAck2_target_mac_10000_130'
                                   3009 ;device_ip                 Allocated with name '_makeTcpAck2_device_ip_10000_130'
                                   3010 ;target_ip                 Allocated with name '_makeTcpAck2_target_ip_10000_130'
                                   3011 ;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_130'
                                   3012 ;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_130'
                                   3013 ;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_131'
                                   3014 ;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_131'
                                   3015 ;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_132'
                                   3016 ;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_132'
                                   3017 ;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_132'
                                   3018 ;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_132'
                                   3019 ;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_133'
                                   3020 ;------------------------------------------------------------
                                   3021 ;	webserver.c:459: void makeTcpAck2(void) 
                                   3022 ;	-----------------------------------------
                                   3023 ;	 function makeTcpAck2
                                   3024 ;	-----------------------------------------
      004225                       3025 _makeTcpAck2:
                                   3026 ;	webserver.c:461: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      004225 90 08 02         [24] 3027 	mov	dptr,#_makeTcpAck2_device_mac_10000_130
      004228 74 02            [12] 3028 	mov	a,#0x02
      00422A F0               [24] 3029 	movx	@dptr,a
      00422B 90 08 03         [24] 3030 	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0001)
      00422E 23               [12] 3031 	rl	a
      00422F F0               [24] 3032 	movx	@dptr,a
      004230 90 08 04         [24] 3033 	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0002)
      004233 74 A3            [12] 3034 	mov	a,#0xa3
      004235 F0               [24] 3035 	movx	@dptr,a
      004236 90 08 05         [24] 3036 	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0003)
      004239 74 3C            [12] 3037 	mov	a,#0x3c
      00423B F0               [24] 3038 	movx	@dptr,a
      00423C 90 08 06         [24] 3039 	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0004)
      00423F 74 4D            [12] 3040 	mov	a,#0x4d
      004241 F0               [24] 3041 	movx	@dptr,a
      004242 90 08 07         [24] 3042 	mov	dptr,#(_makeTcpAck2_device_mac_10000_130 + 0x0005)
      004245 74 50            [12] 3043 	mov	a,#0x50
      004247 F0               [24] 3044 	movx	@dptr,a
                                   3045 ;	webserver.c:462: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      004248 90 08 08         [24] 3046 	mov	dptr,#_makeTcpAck2_target_mac_10000_130
      00424B 74 FF            [12] 3047 	mov	a,#0xff
      00424D F0               [24] 3048 	movx	@dptr,a
      00424E 90 08 09         [24] 3049 	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0001)
      004251 F0               [24] 3050 	movx	@dptr,a
      004252 90 08 0A         [24] 3051 	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0002)
      004255 F0               [24] 3052 	movx	@dptr,a
      004256 90 08 0B         [24] 3053 	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0003)
      004259 F0               [24] 3054 	movx	@dptr,a
      00425A 90 08 0C         [24] 3055 	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0004)
      00425D F0               [24] 3056 	movx	@dptr,a
      00425E 90 08 0D         [24] 3057 	mov	dptr,#(_makeTcpAck2_target_mac_10000_130 + 0x0005)
      004261 F0               [24] 3058 	movx	@dptr,a
                                   3059 ;	webserver.c:463: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004262 90 08 0E         [24] 3060 	mov	dptr,#_makeTcpAck2_device_ip_10000_130
      004265 74 C0            [12] 3061 	mov	a,#0xc0
      004267 F0               [24] 3062 	movx	@dptr,a
      004268 90 08 0F         [24] 3063 	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0001)
      00426B 74 A8            [12] 3064 	mov	a,#0xa8
      00426D F0               [24] 3065 	movx	@dptr,a
      00426E 90 08 10         [24] 3066 	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0002)
      004271 74 01            [12] 3067 	mov	a,#0x01
      004273 F0               [24] 3068 	movx	@dptr,a
      004274 90 08 11         [24] 3069 	mov	dptr,#(_makeTcpAck2_device_ip_10000_130 + 0x0003)
      004277 74 64            [12] 3070 	mov	a,#0x64
      004279 F0               [24] 3071 	movx	@dptr,a
                                   3072 ;	webserver.c:464: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      00427A 90 08 12         [24] 3073 	mov	dptr,#_makeTcpAck2_target_ip_10000_130
      00427D 74 C0            [12] 3074 	mov	a,#0xc0
      00427F F0               [24] 3075 	movx	@dptr,a
      004280 90 08 13         [24] 3076 	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0001)
      004283 74 A8            [12] 3077 	mov	a,#0xa8
      004285 F0               [24] 3078 	movx	@dptr,a
      004286 90 08 14         [24] 3079 	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0002)
      004289 74 01            [12] 3080 	mov	a,#0x01
      00428B F0               [24] 3081 	movx	@dptr,a
      00428C 90 08 15         [24] 3082 	mov	dptr,#(_makeTcpAck2_target_ip_10000_130 + 0x0003)
      00428F F0               [24] 3083 	movx	@dptr,a
                                   3084 ;	webserver.c:465: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
      004290 90 01 B7         [24] 3085 	mov	dptr,#(_buffer + 0x0010)
      004293 E0               [24] 3086 	movx	a,@dptr
      004294 FE               [12] 3087 	mov	r6,a
      004295 7F 00            [12] 3088 	mov	r7,#0x00
      004297 90 01 B8         [24] 3089 	mov	dptr,#(_buffer + 0x0011)
      00429A E0               [24] 3090 	movx	a,@dptr
      00429B 7C 00            [12] 3091 	mov	r4,#0x00
      00429D 42 07            [12] 3092 	orl	ar7,a
      00429F EC               [12] 3093 	mov	a,r4
      0042A0 42 06            [12] 3094 	orl	ar6,a
                                   3095 ;	webserver.c:466: uint16_t receivedPayloadLength = totalLength1 - 40;
      0042A2 EF               [12] 3096 	mov	a,r7
      0042A3 24 D8            [12] 3097 	add	a,#0xd8
      0042A5 FF               [12] 3098 	mov	r7,a
      0042A6 EE               [12] 3099 	mov	a,r6
      0042A7 34 FF            [12] 3100 	addc	a,#0xff
      0042A9 FE               [12] 3101 	mov	r6,a
      0042AA 8F 25            [24] 3102 	mov	_makeTcpAck2_sloc0_1_0,r7
      0042AC 8E 26            [24] 3103 	mov	(_makeTcpAck2_sloc0_1_0 + 1),r6
                                   3104 ;	webserver.c:467: printf("makeTcpAck\n\r");
      0042AE 74 F2            [12] 3105 	mov	a,#___str_3
      0042B0 C0 E0            [24] 3106 	push	acc
      0042B2 74 63            [12] 3107 	mov	a,#(___str_3 >> 8)
      0042B4 C0 E0            [24] 3108 	push	acc
      0042B6 74 80            [12] 3109 	mov	a,#0x80
      0042B8 C0 E0            [24] 3110 	push	acc
      0042BA 12 52 65         [24] 3111 	lcall	_printf
      0042BD 15 81            [12] 3112 	dec	sp
      0042BF 15 81            [12] 3113 	dec	sp
      0042C1 15 81            [12] 3114 	dec	sp
                                   3115 ;	webserver.c:470: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0042C3 90 08 9D         [24] 3116 	mov	dptr,#_memmove_PARM_2
      0042C6 74 A7            [12] 3117 	mov	a,#_buffer
      0042C8 F0               [24] 3118 	movx	@dptr,a
      0042C9 74 01            [12] 3119 	mov	a,#(_buffer >> 8)
      0042CB A3               [24] 3120 	inc	dptr
      0042CC F0               [24] 3121 	movx	@dptr,a
      0042CD E4               [12] 3122 	clr	a
      0042CE A3               [24] 3123 	inc	dptr
      0042CF F0               [24] 3124 	movx	@dptr,a
      0042D0 90 08 A0         [24] 3125 	mov	dptr,#_memmove_PARM_3
      0042D3 74 36            [12] 3126 	mov	a,#0x36
      0042D5 F0               [24] 3127 	movx	@dptr,a
      0042D6 E4               [12] 3128 	clr	a
      0042D7 A3               [24] 3129 	inc	dptr
      0042D8 F0               [24] 3130 	movx	@dptr,a
      0042D9 90 01 A8         [24] 3131 	mov	dptr,#(_buffer + 0x0001)
      0042DC F5 F0            [12] 3132 	mov	b,a
      0042DE 12 4F B3         [24] 3133 	lcall	_memmove
                                   3134 ;	webserver.c:471: buffer[0] = 0x0E;
      0042E1 90 01 A7         [24] 3135 	mov	dptr,#_buffer
      0042E4 74 0E            [12] 3136 	mov	a,#0x0e
      0042E6 F0               [24] 3137 	movx	@dptr,a
                                   3138 ;	webserver.c:474: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      0042E7 90 08 91         [24] 3139 	mov	dptr,#___memcpy_PARM_2
      0042EA 74 AE            [12] 3140 	mov	a,#(_buffer + 0x0007)
      0042EC F0               [24] 3141 	movx	@dptr,a
      0042ED 74 01            [12] 3142 	mov	a,#((_buffer + 0x0007) >> 8)
      0042EF A3               [24] 3143 	inc	dptr
      0042F0 F0               [24] 3144 	movx	@dptr,a
      0042F1 E4               [12] 3145 	clr	a
      0042F2 A3               [24] 3146 	inc	dptr
      0042F3 F0               [24] 3147 	movx	@dptr,a
      0042F4 90 08 94         [24] 3148 	mov	dptr,#___memcpy_PARM_3
      0042F7 74 06            [12] 3149 	mov	a,#0x06
      0042F9 F0               [24] 3150 	movx	@dptr,a
      0042FA E4               [12] 3151 	clr	a
      0042FB A3               [24] 3152 	inc	dptr
      0042FC F0               [24] 3153 	movx	@dptr,a
      0042FD 90 01 A8         [24] 3154 	mov	dptr,#(_buffer + 0x0001)
      004300 F5 F0            [12] 3155 	mov	b,a
      004302 12 4E FC         [24] 3156 	lcall	___memcpy
                                   3157 ;	webserver.c:475: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004305 90 08 91         [24] 3158 	mov	dptr,#___memcpy_PARM_2
      004308 74 02            [12] 3159 	mov	a,#_makeTcpAck2_device_mac_10000_130
      00430A F0               [24] 3160 	movx	@dptr,a
      00430B 74 08            [12] 3161 	mov	a,#(_makeTcpAck2_device_mac_10000_130 >> 8)
      00430D A3               [24] 3162 	inc	dptr
      00430E F0               [24] 3163 	movx	@dptr,a
      00430F E4               [12] 3164 	clr	a
      004310 A3               [24] 3165 	inc	dptr
      004311 F0               [24] 3166 	movx	@dptr,a
      004312 90 08 94         [24] 3167 	mov	dptr,#___memcpy_PARM_3
      004315 74 06            [12] 3168 	mov	a,#0x06
      004317 F0               [24] 3169 	movx	@dptr,a
      004318 E4               [12] 3170 	clr	a
      004319 A3               [24] 3171 	inc	dptr
      00431A F0               [24] 3172 	movx	@dptr,a
      00431B 90 01 AE         [24] 3173 	mov	dptr,#(_buffer + 0x0007)
      00431E F5 F0            [12] 3174 	mov	b,a
      004320 12 4E FC         [24] 3175 	lcall	___memcpy
                                   3176 ;	webserver.c:478: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004323 90 08 91         [24] 3177 	mov	dptr,#___memcpy_PARM_2
      004326 74 C2            [12] 3178 	mov	a,#(_buffer + 0x001b)
      004328 F0               [24] 3179 	movx	@dptr,a
      004329 74 01            [12] 3180 	mov	a,#((_buffer + 0x001b) >> 8)
      00432B A3               [24] 3181 	inc	dptr
      00432C F0               [24] 3182 	movx	@dptr,a
      00432D E4               [12] 3183 	clr	a
      00432E A3               [24] 3184 	inc	dptr
      00432F F0               [24] 3185 	movx	@dptr,a
      004330 90 08 94         [24] 3186 	mov	dptr,#___memcpy_PARM_3
      004333 74 04            [12] 3187 	mov	a,#0x04
      004335 F0               [24] 3188 	movx	@dptr,a
      004336 E4               [12] 3189 	clr	a
      004337 A3               [24] 3190 	inc	dptr
      004338 F0               [24] 3191 	movx	@dptr,a
      004339 90 01 C6         [24] 3192 	mov	dptr,#(_buffer + 0x001f)
      00433C F5 F0            [12] 3193 	mov	b,a
      00433E 12 4E FC         [24] 3194 	lcall	___memcpy
                                   3195 ;	webserver.c:479: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      004341 90 08 91         [24] 3196 	mov	dptr,#___memcpy_PARM_2
      004344 74 0E            [12] 3197 	mov	a,#_makeTcpAck2_device_ip_10000_130
      004346 F0               [24] 3198 	movx	@dptr,a
      004347 74 08            [12] 3199 	mov	a,#(_makeTcpAck2_device_ip_10000_130 >> 8)
      004349 A3               [24] 3200 	inc	dptr
      00434A F0               [24] 3201 	movx	@dptr,a
      00434B E4               [12] 3202 	clr	a
      00434C A3               [24] 3203 	inc	dptr
      00434D F0               [24] 3204 	movx	@dptr,a
      00434E 90 08 94         [24] 3205 	mov	dptr,#___memcpy_PARM_3
      004351 74 04            [12] 3206 	mov	a,#0x04
      004353 F0               [24] 3207 	movx	@dptr,a
      004354 E4               [12] 3208 	clr	a
      004355 A3               [24] 3209 	inc	dptr
      004356 F0               [24] 3210 	movx	@dptr,a
      004357 90 01 C2         [24] 3211 	mov	dptr,#(_buffer + 0x001b)
      00435A F5 F0            [12] 3212 	mov	b,a
      00435C 12 4E FC         [24] 3213 	lcall	___memcpy
                                   3214 ;	webserver.c:482: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00435F 90 01 CA         [24] 3215 	mov	dptr,#(_buffer + 0x0023)
      004362 E0               [24] 3216 	movx	a,@dptr
      004363 FC               [12] 3217 	mov	r4,a
      004364 7D 00            [12] 3218 	mov	r5,#0x00
      004366 90 01 CB         [24] 3219 	mov	dptr,#(_buffer + 0x0024)
      004369 E0               [24] 3220 	movx	a,@dptr
      00436A 7A 00            [12] 3221 	mov	r2,#0x00
      00436C 42 05            [12] 3222 	orl	ar5,a
      00436E EA               [12] 3223 	mov	a,r2
      00436F 42 04            [12] 3224 	orl	ar4,a
                                   3225 ;	webserver.c:484: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004371 90 01 CC         [24] 3226 	mov	dptr,#(_buffer + 0x0025)
      004374 E0               [24] 3227 	movx	a,@dptr
      004375 FA               [12] 3228 	mov	r2,a
      004376 7B 00            [12] 3229 	mov	r3,#0x00
      004378 90 01 CD         [24] 3230 	mov	dptr,#(_buffer + 0x0026)
      00437B E0               [24] 3231 	movx	a,@dptr
      00437C 79 00            [12] 3232 	mov	r1,#0x00
      00437E 42 03            [12] 3233 	orl	ar3,a
      004380 E9               [12] 3234 	mov	a,r1
      004381 42 02            [12] 3235 	orl	ar2,a
                                   3236 ;	webserver.c:486: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      004383 8A 01            [24] 3237 	mov	ar1,r2
      004385 90 01 CA         [24] 3238 	mov	dptr,#(_buffer + 0x0023)
      004388 E9               [12] 3239 	mov	a,r1
      004389 F0               [24] 3240 	movx	@dptr,a
                                   3241 ;	webserver.c:487: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      00438A 90 01 CB         [24] 3242 	mov	dptr,#(_buffer + 0x0024)
      00438D EB               [12] 3243 	mov	a,r3
      00438E F0               [24] 3244 	movx	@dptr,a
                                   3245 ;	webserver.c:488: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00438F 8C 03            [24] 3246 	mov	ar3,r4
      004391 90 01 CC         [24] 3247 	mov	dptr,#(_buffer + 0x0025)
      004394 EB               [12] 3248 	mov	a,r3
      004395 F0               [24] 3249 	movx	@dptr,a
                                   3250 ;	webserver.c:489: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      004396 90 01 CD         [24] 3251 	mov	dptr,#(_buffer + 0x0026)
      004399 ED               [12] 3252 	mov	a,r5
      00439A F0               [24] 3253 	movx	@dptr,a
                                   3254 ;	webserver.c:492: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      00439B 90 01 CE         [24] 3255 	mov	dptr,#(_buffer + 0x0027)
      00439E E0               [24] 3256 	movx	a,@dptr
      00439F FD               [12] 3257 	mov	r5,a
      0043A0 7C 00            [12] 3258 	mov	r4,#0x00
      0043A2 7B 00            [12] 3259 	mov	r3,#0x00
      0043A4 8D 02            [24] 3260 	mov	ar2,r5
      0043A6 7D 00            [12] 3261 	mov	r5,#0x00
      0043A8 90 01 CF         [24] 3262 	mov	dptr,#(_buffer + 0x0028)
      0043AB E0               [24] 3263 	movx	a,@dptr
      0043AC F8               [12] 3264 	mov	r0,a
      0043AD 79 00            [12] 3265 	mov	r1,#0x00
      0043AF 89 07            [24] 3266 	mov	ar7,r1
      0043B1 88 06            [24] 3267 	mov	ar6,r0
      0043B3 E4               [12] 3268 	clr	a
      0043B4 42 05            [12] 3269 	orl	ar5,a
      0043B6 E9               [12] 3270 	mov	a,r1
      0043B7 42 04            [12] 3271 	orl	ar4,a
      0043B9 EE               [12] 3272 	mov	a,r6
      0043BA 42 03            [12] 3273 	orl	ar3,a
      0043BC EF               [12] 3274 	mov	a,r7
      0043BD 42 02            [12] 3275 	orl	ar2,a
      0043BF 90 01 D0         [24] 3276 	mov	dptr,#(_buffer + 0x0029)
      0043C2 E0               [24] 3277 	movx	a,@dptr
      0043C3 F8               [12] 3278 	mov	r0,a
      0043C4 79 00            [12] 3279 	mov	r1,#0x00
      0043C6 7E 00            [12] 3280 	mov	r6,#0x00
      0043C8 8E 07            [24] 3281 	mov	ar7,r6
      0043CA 89 06            [24] 3282 	mov	ar6,r1
      0043CC 88 01            [24] 3283 	mov	ar1,r0
      0043CE E4               [12] 3284 	clr	a
      0043CF 42 05            [12] 3285 	orl	ar5,a
      0043D1 E9               [12] 3286 	mov	a,r1
      0043D2 42 04            [12] 3287 	orl	ar4,a
      0043D4 EE               [12] 3288 	mov	a,r6
      0043D5 42 03            [12] 3289 	orl	ar3,a
      0043D7 EF               [12] 3290 	mov	a,r7
      0043D8 42 02            [12] 3291 	orl	ar2,a
      0043DA 90 01 D1         [24] 3292 	mov	dptr,#(_buffer + 0x002a)
      0043DD E0               [24] 3293 	movx	a,@dptr
      0043DE F8               [12] 3294 	mov	r0,a
      0043DF E4               [12] 3295 	clr	a
      0043E0 F9               [12] 3296 	mov	r1,a
      0043E1 FE               [12] 3297 	mov	r6,a
      0043E2 FF               [12] 3298 	mov	r7,a
      0043E3 E8               [12] 3299 	mov	a,r0
      0043E4 4D               [12] 3300 	orl	a,r5
      0043E5 F5 2B            [12] 3301 	mov	_makeTcpAck2_sloc2_1_0,a
      0043E7 E9               [12] 3302 	mov	a,r1
      0043E8 4C               [12] 3303 	orl	a,r4
      0043E9 F5 2C            [12] 3304 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      0043EB EE               [12] 3305 	mov	a,r6
      0043EC 4B               [12] 3306 	orl	a,r3
      0043ED F5 2D            [12] 3307 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      0043EF EF               [12] 3308 	mov	a,r7
      0043F0 4A               [12] 3309 	orl	a,r2
      0043F1 F5 2E            [12] 3310 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   3311 ;	webserver.c:497: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
      0043F3 90 01 D2         [24] 3312 	mov	dptr,#(_buffer + 0x002b)
      0043F6 E0               [24] 3313 	movx	a,@dptr
      0043F7 F8               [12] 3314 	mov	r0,a
      0043F8 7F 00            [12] 3315 	mov	r7,#0x00
      0043FA 88 2A            [24] 3316 	mov	(_makeTcpAck2_sloc1_1_0 + 3),r0
      0043FC 8F 27            [24] 3317 	mov	_makeTcpAck2_sloc1_1_0,r7
      0043FE 8F 28            [24] 3318 	mov	(_makeTcpAck2_sloc1_1_0 + 1),r7
      004400 8F 29            [24] 3319 	mov	(_makeTcpAck2_sloc1_1_0 + 2),r7
      004402 90 01 D3         [24] 3320 	mov	dptr,#(_buffer + 0x002c)
      004405 E0               [24] 3321 	movx	a,@dptr
      004406 F8               [12] 3322 	mov	r0,a
      004407 89 07            [24] 3323 	mov	ar7,r1
      004409 88 06            [24] 3324 	mov	ar6,r0
      00440B E4               [12] 3325 	clr	a
      00440C 42 27            [12] 3326 	orl	_makeTcpAck2_sloc1_1_0,a
      00440E E9               [12] 3327 	mov	a,r1
      00440F 42 28            [12] 3328 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      004411 EE               [12] 3329 	mov	a,r6
      004412 42 29            [12] 3330 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      004414 EF               [12] 3331 	mov	a,r7
      004415 42 2A            [12] 3332 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      004417 90 01 D4         [24] 3333 	mov	dptr,#(_buffer + 0x002d)
      00441A E0               [24] 3334 	movx	a,@dptr
      00441B F8               [12] 3335 	mov	r0,a
      00441C 79 00            [12] 3336 	mov	r1,#0x00
      00441E 7E 00            [12] 3337 	mov	r6,#0x00
      004420 8E 07            [24] 3338 	mov	ar7,r6
      004422 89 06            [24] 3339 	mov	ar6,r1
      004424 88 01            [24] 3340 	mov	ar1,r0
      004426 E4               [12] 3341 	clr	a
      004427 42 27            [12] 3342 	orl	_makeTcpAck2_sloc1_1_0,a
      004429 E9               [12] 3343 	mov	a,r1
      00442A 42 28            [12] 3344 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      00442C EE               [12] 3345 	mov	a,r6
      00442D 42 29            [12] 3346 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      00442F EF               [12] 3347 	mov	a,r7
      004430 42 2A            [12] 3348 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      004432 90 01 D5         [24] 3349 	mov	dptr,#(_buffer + 0x002e)
      004435 E0               [24] 3350 	movx	a,@dptr
      004436 F8               [12] 3351 	mov	r0,a
      004437 E4               [12] 3352 	clr	a
      004438 F9               [12] 3353 	mov	r1,a
      004439 FE               [12] 3354 	mov	r6,a
      00443A FF               [12] 3355 	mov	r7,a
      00443B E5 28            [12] 3356 	mov	a,(_makeTcpAck2_sloc1_1_0 + 1)
      00443D 42 01            [12] 3357 	orl	ar1,a
      00443F E5 29            [12] 3358 	mov	a,(_makeTcpAck2_sloc1_1_0 + 2)
      004441 42 06            [12] 3359 	orl	ar6,a
      004443 E5 2A            [12] 3360 	mov	a,(_makeTcpAck2_sloc1_1_0 + 3)
      004445 42 07            [12] 3361 	orl	ar7,a
                                   3362 ;	webserver.c:503: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
      004447 AA 25            [24] 3363 	mov	r2,_makeTcpAck2_sloc0_1_0
      004449 AB 26            [24] 3364 	mov	r3,(_makeTcpAck2_sloc0_1_0 + 1)
      00444B E4               [12] 3365 	clr	a
      00444C FC               [12] 3366 	mov	r4,a
      00444D FD               [12] 3367 	mov	r5,a
      00444E EA               [12] 3368 	mov	a,r2
      00444F 25 2B            [12] 3369 	add	a, _makeTcpAck2_sloc2_1_0
      004451 FA               [12] 3370 	mov	r2,a
      004452 EB               [12] 3371 	mov	a,r3
      004453 35 2C            [12] 3372 	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
      004455 FB               [12] 3373 	mov	r3,a
      004456 EC               [12] 3374 	mov	a,r4
      004457 35 2D            [12] 3375 	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
      004459 FC               [12] 3376 	mov	r4,a
      00445A ED               [12] 3377 	mov	a,r5
      00445B 35 2E            [12] 3378 	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
      00445D FD               [12] 3379 	mov	r5,a
      00445E EA               [12] 3380 	mov	a,r2
      00445F 24 FF            [12] 3381 	add	a,#0xff
      004461 F5 2B            [12] 3382 	mov	_makeTcpAck2_sloc2_1_0,a
      004463 EB               [12] 3383 	mov	a,r3
      004464 34 FF            [12] 3384 	addc	a,#0xff
      004466 F5 2C            [12] 3385 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      004468 EC               [12] 3386 	mov	a,r4
      004469 34 FF            [12] 3387 	addc	a,#0xff
      00446B F5 2D            [12] 3388 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      00446D ED               [12] 3389 	mov	a,r5
      00446E 34 FF            [12] 3390 	addc	a,#0xff
      004470 F5 2E            [12] 3391 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   3392 ;	webserver.c:504: prevSeq = serverSeqNum;
      004472 90 07 83         [24] 3393 	mov	dptr,#_prevSeq
      004475 E8               [12] 3394 	mov	a,r0
      004476 F0               [24] 3395 	movx	@dptr,a
      004477 E9               [12] 3396 	mov	a,r1
      004478 A3               [24] 3397 	inc	dptr
      004479 F0               [24] 3398 	movx	@dptr,a
      00447A EE               [12] 3399 	mov	a,r6
      00447B A3               [24] 3400 	inc	dptr
      00447C F0               [24] 3401 	movx	@dptr,a
      00447D EF               [12] 3402 	mov	a,r7
      00447E A3               [24] 3403 	inc	dptr
      00447F F0               [24] 3404 	movx	@dptr,a
                                   3405 ;	webserver.c:505: prevAck = ackNum;
      004480 90 07 87         [24] 3406 	mov	dptr,#_prevAck
      004483 E5 2B            [12] 3407 	mov	a,_makeTcpAck2_sloc2_1_0
      004485 F0               [24] 3408 	movx	@dptr,a
      004486 E5 2C            [12] 3409 	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
      004488 A3               [24] 3410 	inc	dptr
      004489 F0               [24] 3411 	movx	@dptr,a
      00448A E5 2D            [12] 3412 	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
      00448C A3               [24] 3413 	inc	dptr
      00448D F0               [24] 3414 	movx	@dptr,a
      00448E E5 2E            [12] 3415 	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
      004490 A3               [24] 3416 	inc	dptr
      004491 F0               [24] 3417 	movx	@dptr,a
                                   3418 ;	webserver.c:508: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      004492 8F 05            [24] 3419 	mov	ar5,r7
      004494 90 01 CE         [24] 3420 	mov	dptr,#(_buffer + 0x0027)
      004497 ED               [12] 3421 	mov	a,r5
      004498 F0               [24] 3422 	movx	@dptr,a
                                   3423 ;	webserver.c:509: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      004499 8E 05            [24] 3424 	mov	ar5,r6
      00449B 90 01 CF         [24] 3425 	mov	dptr,#(_buffer + 0x0028)
      00449E ED               [12] 3426 	mov	a,r5
      00449F F0               [24] 3427 	movx	@dptr,a
                                   3428 ;	webserver.c:510: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0044A0 89 05            [24] 3429 	mov	ar5,r1
      0044A2 90 01 D0         [24] 3430 	mov	dptr,#(_buffer + 0x0029)
      0044A5 ED               [12] 3431 	mov	a,r5
      0044A6 F0               [24] 3432 	movx	@dptr,a
                                   3433 ;	webserver.c:511: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0044A7 90 01 D1         [24] 3434 	mov	dptr,#(_buffer + 0x002a)
      0044AA E8               [12] 3435 	mov	a,r0
      0044AB F0               [24] 3436 	movx	@dptr,a
                                   3437 ;	webserver.c:512: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      0044AC AF 2E            [24] 3438 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
      0044AE 90 01 D2         [24] 3439 	mov	dptr,#(_buffer + 0x002b)
      0044B1 EF               [12] 3440 	mov	a,r7
      0044B2 F0               [24] 3441 	movx	@dptr,a
                                   3442 ;	webserver.c:513: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      0044B3 AF 2D            [24] 3443 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
      0044B5 90 01 D3         [24] 3444 	mov	dptr,#(_buffer + 0x002c)
      0044B8 EF               [12] 3445 	mov	a,r7
      0044B9 F0               [24] 3446 	movx	@dptr,a
                                   3447 ;	webserver.c:514: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      0044BA AF 2C            [24] 3448 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
      0044BC 90 01 D4         [24] 3449 	mov	dptr,#(_buffer + 0x002d)
      0044BF EF               [12] 3450 	mov	a,r7
      0044C0 F0               [24] 3451 	movx	@dptr,a
                                   3452 ;	webserver.c:515: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      0044C1 AA 2B            [24] 3453 	mov	r2,_makeTcpAck2_sloc2_1_0
      0044C3 90 01 D5         [24] 3454 	mov	dptr,#(_buffer + 0x002e)
      0044C6 EA               [12] 3455 	mov	a,r2
      0044C7 F0               [24] 3456 	movx	@dptr,a
                                   3457 ;	webserver.c:519: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      0044C8 90 01 B8         [24] 3458 	mov	dptr,#(_buffer + 0x0011)
      0044CB E4               [12] 3459 	clr	a
      0044CC F0               [24] 3460 	movx	@dptr,a
                                   3461 ;	webserver.c:520: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      0044CD 90 01 B9         [24] 3462 	mov	dptr,#(_buffer + 0x0012)
      0044D0 74 28            [12] 3463 	mov	a,#0x28
      0044D2 F0               [24] 3464 	movx	@dptr,a
                                   3465 ;	webserver.c:523: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      0044D3 90 01 D7         [24] 3466 	mov	dptr,#(_buffer + 0x0030)
      0044D6 74 10            [12] 3467 	mov	a,#0x10
      0044D8 F0               [24] 3468 	movx	@dptr,a
                                   3469 ;	webserver.c:524: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      0044D9 90 01 D8         [24] 3470 	mov	dptr,#(_buffer + 0x0031)
      0044DC 74 FF            [12] 3471 	mov	a,#0xff
      0044DE F0               [24] 3472 	movx	@dptr,a
                                   3473 ;	webserver.c:525: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0044DF 90 01 D9         [24] 3474 	mov	dptr,#(_buffer + 0x0032)
      0044E2 F0               [24] 3475 	movx	@dptr,a
                                   3476 ;	webserver.c:526: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0044E3 90 01 D6         [24] 3477 	mov	dptr,#(_buffer + 0x002f)
      0044E6 74 50            [12] 3478 	mov	a,#0x50
      0044E8 F0               [24] 3479 	movx	@dptr,a
                                   3480 ;	webserver.c:529: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0044E9 90 01 A8         [24] 3481 	mov	dptr,#(_buffer + 0x0001)
      0044EC 75 F0 00         [24] 3482 	mov	b, #0x00
      0044EF 12 38 B9         [24] 3483 	lcall	_calculateIPChecksum
                                   3484 ;	webserver.c:530: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0044F2 90 01 A8         [24] 3485 	mov	dptr,#(_buffer + 0x0001)
      0044F5 75 F0 00         [24] 3486 	mov	b, #0x00
      0044F8 12 3A 23         [24] 3487 	lcall	_calculateTcpChecksum
                                   3488 ;	webserver.c:534: transmit_tcp_packet(buffer, 1 + 54);
      0044FB 90 01 8C         [24] 3489 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0044FE 74 37            [12] 3490 	mov	a,#0x37
      004500 F0               [24] 3491 	movx	@dptr,a
      004501 E4               [12] 3492 	clr	a
      004502 A3               [24] 3493 	inc	dptr
      004503 F0               [24] 3494 	movx	@dptr,a
      004504 90 01 A7         [24] 3495 	mov	dptr,#_buffer
      004507 F5 F0            [12] 3496 	mov	b,a
      004509 12 31 62         [24] 3497 	lcall	_transmit_tcp_packet
                                   3498 ;	webserver.c:537: connectionState = ACK_SENT;
      00450C 90 08 DE         [24] 3499 	mov	dptr,#_connectionState
      00450F 74 05            [12] 3500 	mov	a,#0x05
      004511 F0               [24] 3501 	movx	@dptr,a
                                   3502 ;	webserver.c:538: }
      004512 22               [24] 3503 	ret
                                   3504 ;------------------------------------------------------------
                                   3505 ;Allocation info for local variables in function 'makeTcpSynAck'
                                   3506 ;------------------------------------------------------------
                                   3507 ;sloc0                     Allocated with name '_makeTcpSynAck_sloc0_1_0'
                                   3508 ;device_mac                Allocated with name '_makeTcpSynAck_device_mac_10000_135'
                                   3509 ;target_mac                Allocated with name '_makeTcpSynAck_target_mac_10000_135'
                                   3510 ;device_ip                 Allocated with name '_makeTcpSynAck_device_ip_10000_135'
                                   3511 ;target_ip                 Allocated with name '_makeTcpSynAck_target_ip_10000_135'
                                   3512 ;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_136'
                                   3513 ;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_136'
                                   3514 ;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_137'
                                   3515 ;clientAckNumber           Allocated with name '_makeTcpSynAck_clientAckNumber_10002_137'
                                   3516 ;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10002_137'
                                   3517 ;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10002_137'
                                   3518 ;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10003_138'
                                   3519 ;------------------------------------------------------------
                                   3520 ;	webserver.c:552: void makeTcpSynAck(void) 
                                   3521 ;	-----------------------------------------
                                   3522 ;	 function makeTcpSynAck
                                   3523 ;	-----------------------------------------
      004513                       3524 _makeTcpSynAck:
                                   3525 ;	webserver.c:554: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      004513 90 08 16         [24] 3526 	mov	dptr,#_makeTcpSynAck_device_mac_10000_135
      004516 74 02            [12] 3527 	mov	a,#0x02
      004518 F0               [24] 3528 	movx	@dptr,a
      004519 90 08 17         [24] 3529 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0001)
      00451C 23               [12] 3530 	rl	a
      00451D F0               [24] 3531 	movx	@dptr,a
      00451E 90 08 18         [24] 3532 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0002)
      004521 74 A3            [12] 3533 	mov	a,#0xa3
      004523 F0               [24] 3534 	movx	@dptr,a
      004524 90 08 19         [24] 3535 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0003)
      004527 74 3C            [12] 3536 	mov	a,#0x3c
      004529 F0               [24] 3537 	movx	@dptr,a
      00452A 90 08 1A         [24] 3538 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0004)
      00452D 74 4D            [12] 3539 	mov	a,#0x4d
      00452F F0               [24] 3540 	movx	@dptr,a
      004530 90 08 1B         [24] 3541 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_135 + 0x0005)
      004533 74 50            [12] 3542 	mov	a,#0x50
      004535 F0               [24] 3543 	movx	@dptr,a
                                   3544 ;	webserver.c:555: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      004536 90 08 1C         [24] 3545 	mov	dptr,#_makeTcpSynAck_target_mac_10000_135
      004539 74 FF            [12] 3546 	mov	a,#0xff
      00453B F0               [24] 3547 	movx	@dptr,a
      00453C 90 08 1D         [24] 3548 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0001)
      00453F F0               [24] 3549 	movx	@dptr,a
      004540 90 08 1E         [24] 3550 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0002)
      004543 F0               [24] 3551 	movx	@dptr,a
      004544 90 08 1F         [24] 3552 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0003)
      004547 F0               [24] 3553 	movx	@dptr,a
      004548 90 08 20         [24] 3554 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0004)
      00454B F0               [24] 3555 	movx	@dptr,a
      00454C 90 08 21         [24] 3556 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_135 + 0x0005)
      00454F F0               [24] 3557 	movx	@dptr,a
                                   3558 ;	webserver.c:556: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004550 90 08 22         [24] 3559 	mov	dptr,#_makeTcpSynAck_device_ip_10000_135
      004553 74 C0            [12] 3560 	mov	a,#0xc0
      004555 F0               [24] 3561 	movx	@dptr,a
      004556 90 08 23         [24] 3562 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0001)
      004559 74 A8            [12] 3563 	mov	a,#0xa8
      00455B F0               [24] 3564 	movx	@dptr,a
      00455C 90 08 24         [24] 3565 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0002)
      00455F 74 01            [12] 3566 	mov	a,#0x01
      004561 F0               [24] 3567 	movx	@dptr,a
      004562 90 08 25         [24] 3568 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_135 + 0x0003)
      004565 74 64            [12] 3569 	mov	a,#0x64
      004567 F0               [24] 3570 	movx	@dptr,a
                                   3571 ;	webserver.c:557: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004568 90 08 26         [24] 3572 	mov	dptr,#_makeTcpSynAck_target_ip_10000_135
      00456B 74 C0            [12] 3573 	mov	a,#0xc0
      00456D F0               [24] 3574 	movx	@dptr,a
      00456E 90 08 27         [24] 3575 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0001)
      004571 74 A8            [12] 3576 	mov	a,#0xa8
      004573 F0               [24] 3577 	movx	@dptr,a
      004574 90 08 28         [24] 3578 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0002)
      004577 74 01            [12] 3579 	mov	a,#0x01
      004579 F0               [24] 3580 	movx	@dptr,a
      00457A 90 08 29         [24] 3581 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_135 + 0x0003)
      00457D F0               [24] 3582 	movx	@dptr,a
                                   3583 ;	webserver.c:558: printf("makeTcpSynAck\n\r");
      00457E 74 FF            [12] 3584 	mov	a,#___str_4
      004580 C0 E0            [24] 3585 	push	acc
      004582 74 63            [12] 3586 	mov	a,#(___str_4 >> 8)
      004584 C0 E0            [24] 3587 	push	acc
      004586 74 80            [12] 3588 	mov	a,#0x80
      004588 C0 E0            [24] 3589 	push	acc
      00458A 12 52 65         [24] 3590 	lcall	_printf
      00458D 15 81            [12] 3591 	dec	sp
      00458F 15 81            [12] 3592 	dec	sp
      004591 15 81            [12] 3593 	dec	sp
                                   3594 ;	webserver.c:561: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004593 90 08 9D         [24] 3595 	mov	dptr,#_memmove_PARM_2
      004596 74 A7            [12] 3596 	mov	a,#_buffer
      004598 F0               [24] 3597 	movx	@dptr,a
      004599 74 01            [12] 3598 	mov	a,#(_buffer >> 8)
      00459B A3               [24] 3599 	inc	dptr
      00459C F0               [24] 3600 	movx	@dptr,a
      00459D E4               [12] 3601 	clr	a
      00459E A3               [24] 3602 	inc	dptr
      00459F F0               [24] 3603 	movx	@dptr,a
      0045A0 90 08 A0         [24] 3604 	mov	dptr,#_memmove_PARM_3
      0045A3 74 36            [12] 3605 	mov	a,#0x36
      0045A5 F0               [24] 3606 	movx	@dptr,a
      0045A6 E4               [12] 3607 	clr	a
      0045A7 A3               [24] 3608 	inc	dptr
      0045A8 F0               [24] 3609 	movx	@dptr,a
      0045A9 90 01 A8         [24] 3610 	mov	dptr,#(_buffer + 0x0001)
      0045AC F5 F0            [12] 3611 	mov	b,a
      0045AE 12 4F B3         [24] 3612 	lcall	_memmove
                                   3613 ;	webserver.c:562: buffer[0] = 0x0E;
      0045B1 90 01 A7         [24] 3614 	mov	dptr,#_buffer
      0045B4 74 0E            [12] 3615 	mov	a,#0x0e
      0045B6 F0               [24] 3616 	movx	@dptr,a
                                   3617 ;	webserver.c:564: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      0045B7 90 08 91         [24] 3618 	mov	dptr,#___memcpy_PARM_2
      0045BA 74 AE            [12] 3619 	mov	a,#(_buffer + 0x0007)
      0045BC F0               [24] 3620 	movx	@dptr,a
      0045BD 74 01            [12] 3621 	mov	a,#((_buffer + 0x0007) >> 8)
      0045BF A3               [24] 3622 	inc	dptr
      0045C0 F0               [24] 3623 	movx	@dptr,a
      0045C1 E4               [12] 3624 	clr	a
      0045C2 A3               [24] 3625 	inc	dptr
      0045C3 F0               [24] 3626 	movx	@dptr,a
      0045C4 90 08 94         [24] 3627 	mov	dptr,#___memcpy_PARM_3
      0045C7 74 06            [12] 3628 	mov	a,#0x06
      0045C9 F0               [24] 3629 	movx	@dptr,a
      0045CA E4               [12] 3630 	clr	a
      0045CB A3               [24] 3631 	inc	dptr
      0045CC F0               [24] 3632 	movx	@dptr,a
      0045CD 90 01 A8         [24] 3633 	mov	dptr,#(_buffer + 0x0001)
      0045D0 F5 F0            [12] 3634 	mov	b,a
      0045D2 12 4E FC         [24] 3635 	lcall	___memcpy
                                   3636 ;	webserver.c:565: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      0045D5 90 08 91         [24] 3637 	mov	dptr,#___memcpy_PARM_2
      0045D8 74 16            [12] 3638 	mov	a,#_makeTcpSynAck_device_mac_10000_135
      0045DA F0               [24] 3639 	movx	@dptr,a
      0045DB 74 08            [12] 3640 	mov	a,#(_makeTcpSynAck_device_mac_10000_135 >> 8)
      0045DD A3               [24] 3641 	inc	dptr
      0045DE F0               [24] 3642 	movx	@dptr,a
      0045DF E4               [12] 3643 	clr	a
      0045E0 A3               [24] 3644 	inc	dptr
      0045E1 F0               [24] 3645 	movx	@dptr,a
      0045E2 90 08 94         [24] 3646 	mov	dptr,#___memcpy_PARM_3
      0045E5 74 06            [12] 3647 	mov	a,#0x06
      0045E7 F0               [24] 3648 	movx	@dptr,a
      0045E8 E4               [12] 3649 	clr	a
      0045E9 A3               [24] 3650 	inc	dptr
      0045EA F0               [24] 3651 	movx	@dptr,a
      0045EB 90 01 AE         [24] 3652 	mov	dptr,#(_buffer + 0x0007)
      0045EE F5 F0            [12] 3653 	mov	b,a
      0045F0 12 4E FC         [24] 3654 	lcall	___memcpy
                                   3655 ;	webserver.c:568: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      0045F3 90 08 91         [24] 3656 	mov	dptr,#___memcpy_PARM_2
      0045F6 74 C2            [12] 3657 	mov	a,#(_buffer + 0x001b)
      0045F8 F0               [24] 3658 	movx	@dptr,a
      0045F9 74 01            [12] 3659 	mov	a,#((_buffer + 0x001b) >> 8)
      0045FB A3               [24] 3660 	inc	dptr
      0045FC F0               [24] 3661 	movx	@dptr,a
      0045FD E4               [12] 3662 	clr	a
      0045FE A3               [24] 3663 	inc	dptr
      0045FF F0               [24] 3664 	movx	@dptr,a
      004600 90 08 94         [24] 3665 	mov	dptr,#___memcpy_PARM_3
      004603 74 04            [12] 3666 	mov	a,#0x04
      004605 F0               [24] 3667 	movx	@dptr,a
      004606 E4               [12] 3668 	clr	a
      004607 A3               [24] 3669 	inc	dptr
      004608 F0               [24] 3670 	movx	@dptr,a
      004609 90 01 C6         [24] 3671 	mov	dptr,#(_buffer + 0x001f)
      00460C F5 F0            [12] 3672 	mov	b,a
      00460E 12 4E FC         [24] 3673 	lcall	___memcpy
                                   3674 ;	webserver.c:569: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      004611 90 08 91         [24] 3675 	mov	dptr,#___memcpy_PARM_2
      004614 74 22            [12] 3676 	mov	a,#_makeTcpSynAck_device_ip_10000_135
      004616 F0               [24] 3677 	movx	@dptr,a
      004617 74 08            [12] 3678 	mov	a,#(_makeTcpSynAck_device_ip_10000_135 >> 8)
      004619 A3               [24] 3679 	inc	dptr
      00461A F0               [24] 3680 	movx	@dptr,a
      00461B E4               [12] 3681 	clr	a
      00461C A3               [24] 3682 	inc	dptr
      00461D F0               [24] 3683 	movx	@dptr,a
      00461E 90 08 94         [24] 3684 	mov	dptr,#___memcpy_PARM_3
      004621 74 04            [12] 3685 	mov	a,#0x04
      004623 F0               [24] 3686 	movx	@dptr,a
      004624 E4               [12] 3687 	clr	a
      004625 A3               [24] 3688 	inc	dptr
      004626 F0               [24] 3689 	movx	@dptr,a
      004627 90 01 C2         [24] 3690 	mov	dptr,#(_buffer + 0x001b)
      00462A F5 F0            [12] 3691 	mov	b,a
      00462C 12 4E FC         [24] 3692 	lcall	___memcpy
                                   3693 ;	webserver.c:572: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00462F 90 01 CA         [24] 3694 	mov	dptr,#(_buffer + 0x0023)
      004632 E0               [24] 3695 	movx	a,@dptr
      004633 FE               [12] 3696 	mov	r6,a
      004634 7F 00            [12] 3697 	mov	r7,#0x00
      004636 90 01 CB         [24] 3698 	mov	dptr,#(_buffer + 0x0024)
      004639 E0               [24] 3699 	movx	a,@dptr
      00463A 7C 00            [12] 3700 	mov	r4,#0x00
      00463C 42 07            [12] 3701 	orl	ar7,a
      00463E EC               [12] 3702 	mov	a,r4
      00463F 42 06            [12] 3703 	orl	ar6,a
                                   3704 ;	webserver.c:574: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004641 90 01 CC         [24] 3705 	mov	dptr,#(_buffer + 0x0025)
      004644 E0               [24] 3706 	movx	a,@dptr
      004645 FC               [12] 3707 	mov	r4,a
      004646 7D 00            [12] 3708 	mov	r5,#0x00
      004648 90 01 CD         [24] 3709 	mov	dptr,#(_buffer + 0x0026)
      00464B E0               [24] 3710 	movx	a,@dptr
      00464C 7A 00            [12] 3711 	mov	r2,#0x00
      00464E 42 05            [12] 3712 	orl	ar5,a
      004650 EA               [12] 3713 	mov	a,r2
      004651 42 04            [12] 3714 	orl	ar4,a
                                   3715 ;	webserver.c:576: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      004653 8C 03            [24] 3716 	mov	ar3,r4
      004655 90 01 CA         [24] 3717 	mov	dptr,#(_buffer + 0x0023)
      004658 EB               [12] 3718 	mov	a,r3
      004659 F0               [24] 3719 	movx	@dptr,a
                                   3720 ;	webserver.c:577: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      00465A 90 01 CB         [24] 3721 	mov	dptr,#(_buffer + 0x0024)
      00465D ED               [12] 3722 	mov	a,r5
      00465E F0               [24] 3723 	movx	@dptr,a
                                   3724 ;	webserver.c:578: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00465F 8E 05            [24] 3725 	mov	ar5,r6
      004661 90 01 CC         [24] 3726 	mov	dptr,#(_buffer + 0x0025)
      004664 ED               [12] 3727 	mov	a,r5
      004665 F0               [24] 3728 	movx	@dptr,a
                                   3729 ;	webserver.c:579: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      004666 90 01 CD         [24] 3730 	mov	dptr,#(_buffer + 0x0026)
      004669 EF               [12] 3731 	mov	a,r7
      00466A F0               [24] 3732 	movx	@dptr,a
                                   3733 ;	webserver.c:582: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      00466B 90 01 CE         [24] 3734 	mov	dptr,#(_buffer + 0x0027)
      00466E E0               [24] 3735 	movx	a,@dptr
      00466F FF               [12] 3736 	mov	r7,a
      004670 7E 00            [12] 3737 	mov	r6,#0x00
      004672 7D 00            [12] 3738 	mov	r5,#0x00
      004674 8F 04            [24] 3739 	mov	ar4,r7
      004676 7F 00            [12] 3740 	mov	r7,#0x00
      004678 90 01 CF         [24] 3741 	mov	dptr,#(_buffer + 0x0028)
      00467B E0               [24] 3742 	movx	a,@dptr
      00467C F8               [12] 3743 	mov	r0,a
      00467D 79 00            [12] 3744 	mov	r1,#0x00
      00467F 89 03            [24] 3745 	mov	ar3,r1
      004681 88 02            [24] 3746 	mov	ar2,r0
      004683 E4               [12] 3747 	clr	a
      004684 42 07            [12] 3748 	orl	ar7,a
      004686 E9               [12] 3749 	mov	a,r1
      004687 42 06            [12] 3750 	orl	ar6,a
      004689 EA               [12] 3751 	mov	a,r2
      00468A 42 05            [12] 3752 	orl	ar5,a
      00468C EB               [12] 3753 	mov	a,r3
      00468D 42 04            [12] 3754 	orl	ar4,a
      00468F 90 01 D0         [24] 3755 	mov	dptr,#(_buffer + 0x0029)
      004692 E0               [24] 3756 	movx	a,@dptr
      004693 F8               [12] 3757 	mov	r0,a
      004694 79 00            [12] 3758 	mov	r1,#0x00
      004696 7A 00            [12] 3759 	mov	r2,#0x00
      004698 8A 03            [24] 3760 	mov	ar3,r2
      00469A 89 02            [24] 3761 	mov	ar2,r1
      00469C 88 01            [24] 3762 	mov	ar1,r0
      00469E E4               [12] 3763 	clr	a
      00469F 42 07            [12] 3764 	orl	ar7,a
      0046A1 E9               [12] 3765 	mov	a,r1
      0046A2 42 06            [12] 3766 	orl	ar6,a
      0046A4 EA               [12] 3767 	mov	a,r2
      0046A5 42 05            [12] 3768 	orl	ar5,a
      0046A7 EB               [12] 3769 	mov	a,r3
      0046A8 42 04            [12] 3770 	orl	ar4,a
      0046AA 90 01 D1         [24] 3771 	mov	dptr,#(_buffer + 0x002a)
      0046AD E0               [24] 3772 	movx	a,@dptr
      0046AE F8               [12] 3773 	mov	r0,a
      0046AF E4               [12] 3774 	clr	a
      0046B0 F9               [12] 3775 	mov	r1,a
      0046B1 FA               [12] 3776 	mov	r2,a
      0046B2 FB               [12] 3777 	mov	r3,a
      0046B3 E8               [12] 3778 	mov	a,r0
      0046B4 42 07            [12] 3779 	orl	ar7,a
      0046B6 E9               [12] 3780 	mov	a,r1
      0046B7 42 06            [12] 3781 	orl	ar6,a
      0046B9 EA               [12] 3782 	mov	a,r2
      0046BA 42 05            [12] 3783 	orl	ar5,a
      0046BC EB               [12] 3784 	mov	a,r3
      0046BD 42 04            [12] 3785 	orl	ar4,a
                                   3786 ;	webserver.c:587: uint32_t clientAckNumber = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
      0046BF 90 01 D2         [24] 3787 	mov	dptr,#(_buffer + 0x002b)
      0046C2 E0               [24] 3788 	movx	a,@dptr
      0046C3 F8               [12] 3789 	mov	r0,a
      0046C4 79 00            [12] 3790 	mov	r1,#0x00
      0046C6 7B 00            [12] 3791 	mov	r3,#0x00
      0046C8 88 32            [24] 3792 	mov	(_makeTcpSynAck_sloc0_1_0 + 3),r0
      0046CA 8B 2F            [24] 3793 	mov	_makeTcpSynAck_sloc0_1_0,r3
      0046CC 8B 30            [24] 3794 	mov	(_makeTcpSynAck_sloc0_1_0 + 1),r3
      0046CE 8B 31            [24] 3795 	mov	(_makeTcpSynAck_sloc0_1_0 + 2),r3
      0046D0 90 01 D3         [24] 3796 	mov	dptr,#(_buffer + 0x002c)
      0046D3 E0               [24] 3797 	movx	a,@dptr
      0046D4 F8               [12] 3798 	mov	r0,a
      0046D5 89 03            [24] 3799 	mov	ar3,r1
      0046D7 88 02            [24] 3800 	mov	ar2,r0
      0046D9 E4               [12] 3801 	clr	a
      0046DA 42 2F            [12] 3802 	orl	_makeTcpSynAck_sloc0_1_0,a
      0046DC E9               [12] 3803 	mov	a,r1
      0046DD 42 30            [12] 3804 	orl	(_makeTcpSynAck_sloc0_1_0 + 1),a
      0046DF EA               [12] 3805 	mov	a,r2
      0046E0 42 31            [12] 3806 	orl	(_makeTcpSynAck_sloc0_1_0 + 2),a
      0046E2 EB               [12] 3807 	mov	a,r3
      0046E3 42 32            [12] 3808 	orl	(_makeTcpSynAck_sloc0_1_0 + 3),a
      0046E5 90 01 D4         [24] 3809 	mov	dptr,#(_buffer + 0x002d)
      0046E8 E0               [24] 3810 	movx	a,@dptr
      0046E9 F8               [12] 3811 	mov	r0,a
      0046EA 79 00            [12] 3812 	mov	r1,#0x00
      0046EC 7A 00            [12] 3813 	mov	r2,#0x00
      0046EE 8A 03            [24] 3814 	mov	ar3,r2
      0046F0 89 02            [24] 3815 	mov	ar2,r1
      0046F2 88 01            [24] 3816 	mov	ar1,r0
      0046F4 E4               [12] 3817 	clr	a
      0046F5 42 2F            [12] 3818 	orl	_makeTcpSynAck_sloc0_1_0,a
      0046F7 E9               [12] 3819 	mov	a,r1
      0046F8 42 30            [12] 3820 	orl	(_makeTcpSynAck_sloc0_1_0 + 1),a
      0046FA EA               [12] 3821 	mov	a,r2
      0046FB 42 31            [12] 3822 	orl	(_makeTcpSynAck_sloc0_1_0 + 2),a
      0046FD EB               [12] 3823 	mov	a,r3
      0046FE 42 32            [12] 3824 	orl	(_makeTcpSynAck_sloc0_1_0 + 3),a
      004700 90 01 D5         [24] 3825 	mov	dptr,#(_buffer + 0x002e)
      004703 E0               [24] 3826 	movx	a,@dptr
      004704 F8               [12] 3827 	mov	r0,a
      004705 E4               [12] 3828 	clr	a
      004706 F9               [12] 3829 	mov	r1,a
      004707 FA               [12] 3830 	mov	r2,a
      004708 FB               [12] 3831 	mov	r3,a
      004709 E5 30            [12] 3832 	mov	a,(_makeTcpSynAck_sloc0_1_0 + 1)
      00470B 42 01            [12] 3833 	orl	ar1,a
      00470D E5 31            [12] 3834 	mov	a,(_makeTcpSynAck_sloc0_1_0 + 2)
      00470F 42 02            [12] 3835 	orl	ar2,a
      004711 E5 32            [12] 3836 	mov	a,(_makeTcpSynAck_sloc0_1_0 + 3)
      004713 42 03            [12] 3837 	orl	ar3,a
                                   3838 ;	webserver.c:593: uint32_t ackNum = clientSeqNum + 1;
      004715 74 01            [12] 3839 	mov	a,#0x01
      004717 2F               [12] 3840 	add	a, r7
      004718 F5 2F            [12] 3841 	mov	_makeTcpSynAck_sloc0_1_0,a
      00471A E4               [12] 3842 	clr	a
      00471B 3E               [12] 3843 	addc	a, r6
      00471C F5 30            [12] 3844 	mov	(_makeTcpSynAck_sloc0_1_0 + 1),a
      00471E E4               [12] 3845 	clr	a
      00471F 3D               [12] 3846 	addc	a, r5
      004720 F5 31            [12] 3847 	mov	(_makeTcpSynAck_sloc0_1_0 + 2),a
      004722 E4               [12] 3848 	clr	a
      004723 3C               [12] 3849 	addc	a, r4
      004724 F5 32            [12] 3850 	mov	(_makeTcpSynAck_sloc0_1_0 + 3),a
                                   3851 ;	webserver.c:595: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      004726 8B 07            [24] 3852 	mov	ar7,r3
      004728 90 01 CE         [24] 3853 	mov	dptr,#(_buffer + 0x0027)
      00472B EF               [12] 3854 	mov	a,r7
      00472C F0               [24] 3855 	movx	@dptr,a
                                   3856 ;	webserver.c:596: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      00472D 8A 07            [24] 3857 	mov	ar7,r2
      00472F 90 01 CF         [24] 3858 	mov	dptr,#(_buffer + 0x0028)
      004732 EF               [12] 3859 	mov	a,r7
      004733 F0               [24] 3860 	movx	@dptr,a
                                   3861 ;	webserver.c:597: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      004734 89 07            [24] 3862 	mov	ar7,r1
      004736 90 01 D0         [24] 3863 	mov	dptr,#(_buffer + 0x0029)
      004739 EF               [12] 3864 	mov	a,r7
      00473A F0               [24] 3865 	movx	@dptr,a
                                   3866 ;	webserver.c:598: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      00473B 90 01 D1         [24] 3867 	mov	dptr,#(_buffer + 0x002a)
      00473E E8               [12] 3868 	mov	a,r0
      00473F F0               [24] 3869 	movx	@dptr,a
                                   3870 ;	webserver.c:599: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      004740 AF 32            [24] 3871 	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 3)
      004742 90 01 D2         [24] 3872 	mov	dptr,#(_buffer + 0x002b)
      004745 EF               [12] 3873 	mov	a,r7
      004746 F0               [24] 3874 	movx	@dptr,a
                                   3875 ;	webserver.c:600: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      004747 AF 31            [24] 3876 	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 2)
      004749 90 01 D3         [24] 3877 	mov	dptr,#(_buffer + 0x002c)
      00474C EF               [12] 3878 	mov	a,r7
      00474D F0               [24] 3879 	movx	@dptr,a
                                   3880 ;	webserver.c:601: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      00474E AF 30            [24] 3881 	mov	r7,(_makeTcpSynAck_sloc0_1_0 + 1)
      004750 90 01 D4         [24] 3882 	mov	dptr,#(_buffer + 0x002d)
      004753 EF               [12] 3883 	mov	a,r7
      004754 F0               [24] 3884 	movx	@dptr,a
                                   3885 ;	webserver.c:602: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      004755 AF 2F            [24] 3886 	mov	r7,_makeTcpSynAck_sloc0_1_0
      004757 90 01 D5         [24] 3887 	mov	dptr,#(_buffer + 0x002e)
      00475A EF               [12] 3888 	mov	a,r7
      00475B F0               [24] 3889 	movx	@dptr,a
                                   3890 ;	webserver.c:606: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00475C 90 01 B8         [24] 3891 	mov	dptr,#(_buffer + 0x0011)
      00475F E4               [12] 3892 	clr	a
      004760 F0               [24] 3893 	movx	@dptr,a
                                   3894 ;	webserver.c:607: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      004761 90 01 B9         [24] 3895 	mov	dptr,#(_buffer + 0x0012)
      004764 74 28            [12] 3896 	mov	a,#0x28
      004766 F0               [24] 3897 	movx	@dptr,a
                                   3898 ;	webserver.c:610: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
      004767 90 01 D7         [24] 3899 	mov	dptr,#(_buffer + 0x0030)
      00476A 74 12            [12] 3900 	mov	a,#0x12
      00476C F0               [24] 3901 	movx	@dptr,a
                                   3902 ;	webserver.c:611: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      00476D 90 01 D8         [24] 3903 	mov	dptr,#(_buffer + 0x0031)
      004770 74 FF            [12] 3904 	mov	a,#0xff
      004772 F0               [24] 3905 	movx	@dptr,a
                                   3906 ;	webserver.c:612: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      004773 90 01 D9         [24] 3907 	mov	dptr,#(_buffer + 0x0032)
      004776 F0               [24] 3908 	movx	@dptr,a
                                   3909 ;	webserver.c:613: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      004777 90 01 D6         [24] 3910 	mov	dptr,#(_buffer + 0x002f)
      00477A 74 50            [12] 3911 	mov	a,#0x50
      00477C F0               [24] 3912 	movx	@dptr,a
                                   3913 ;	webserver.c:616: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      00477D 90 01 A8         [24] 3914 	mov	dptr,#(_buffer + 0x0001)
      004780 75 F0 00         [24] 3915 	mov	b, #0x00
      004783 12 38 B9         [24] 3916 	lcall	_calculateIPChecksum
                                   3917 ;	webserver.c:617: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      004786 90 01 A8         [24] 3918 	mov	dptr,#(_buffer + 0x0001)
      004789 75 F0 00         [24] 3919 	mov	b, #0x00
      00478C 12 3A 23         [24] 3920 	lcall	_calculateTcpChecksum
                                   3921 ;	webserver.c:621: transmit_tcp_packet(buffer, 1 + 54);
      00478F 90 01 8C         [24] 3922 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004792 74 37            [12] 3923 	mov	a,#0x37
      004794 F0               [24] 3924 	movx	@dptr,a
      004795 E4               [12] 3925 	clr	a
      004796 A3               [24] 3926 	inc	dptr
      004797 F0               [24] 3927 	movx	@dptr,a
      004798 90 01 A7         [24] 3928 	mov	dptr,#_buffer
      00479B F5 F0            [12] 3929 	mov	b,a
      00479D 12 31 62         [24] 3930 	lcall	_transmit_tcp_packet
                                   3931 ;	webserver.c:624: connectionState = SYN_RECEIVED;
      0047A0 90 08 DE         [24] 3932 	mov	dptr,#_connectionState
      0047A3 74 01            [12] 3933 	mov	a,#0x01
      0047A5 F0               [24] 3934 	movx	@dptr,a
                                   3935 ;	webserver.c:625: }
      0047A6 22               [24] 3936 	ret
                                   3937 ;------------------------------------------------------------
                                   3938 ;Allocation info for local variables in function 'makeHttpResponse'
                                   3939 ;------------------------------------------------------------
                                   3940 ;sloc0                     Allocated with name '_makeHttpResponse_sloc0_1_0'
                                   3941 ;sloc1                     Allocated with name '_makeHttpResponse_sloc1_1_0'
                                   3942 ;sloc2                     Allocated with name '_makeHttpResponse_sloc2_1_0'
                                   3943 ;sloc3                     Allocated with name '_makeHttpResponse_sloc3_1_0'
                                   3944 ;sloc4                     Allocated with name '_makeHttpResponse_sloc4_1_0'
                                   3945 ;sloc5                     Allocated with name '_makeHttpResponse_sloc5_1_0'
                                   3946 ;device_mac                Allocated with name '_makeHttpResponse_device_mac_10000_140'
                                   3947 ;target_mac                Allocated with name '_makeHttpResponse_target_mac_10000_140'
                                   3948 ;device_ip                 Allocated with name '_makeHttpResponse_device_ip_10000_140'
                                   3949 ;target_ip                 Allocated with name '_makeHttpResponse_target_ip_10000_140'
                                   3950 ;ethernetHeaderSize        Allocated with name '_makeHttpResponse_ethernetHeaderSize_10001_141'
                                   3951 ;ipHeaderSize              Allocated with name '_makeHttpResponse_ipHeaderSize_10001_141'
                                   3952 ;tcpHeaderSize             Allocated with name '_makeHttpResponse_tcpHeaderSize_10001_141'
                                   3953 ;headerSize                Allocated with name '_makeHttpResponse_headerSize_10001_141'
                                   3954 ;httpResponse              Allocated with name '_makeHttpResponse_httpResponse_10001_141'
                                   3955 ;responseLen               Allocated with name '_makeHttpResponse_responseLen_10001_141'
                                   3956 ;totalLength               Allocated with name '_makeHttpResponse_totalLength_10002_142'
                                   3957 ;ipHeader                  Allocated with name '_makeHttpResponse_ipHeader_10002_142'
                                   3958 ;srcPort                   Allocated with name '_makeHttpResponse_srcPort_10003_143'
                                   3959 ;dstPort                   Allocated with name '_makeHttpResponse_dstPort_10003_143'
                                   3960 ;seqNum                    Allocated with name '_makeHttpResponse_seqNum_10003_143'
                                   3961 ;seqPart1                  Allocated with name '_makeHttpResponse_seqPart1_10003_143'
                                   3962 ;seqPart2                  Allocated with name '_makeHttpResponse_seqPart2_10003_143'
                                   3963 ;seqPart3                  Allocated with name '_makeHttpResponse_seqPart3_10003_143'
                                   3964 ;seqPart4                  Allocated with name '_makeHttpResponse_seqPart4_10003_143'
                                   3965 ;ackNum                    Allocated with name '_makeHttpResponse_ackNum_10003_143'
                                   3966 ;tcpHeader                 Allocated with name '_makeHttpResponse_tcpHeader_10004_144'
                                   3967 ;------------------------------------------------------------
                                   3968 ;	webserver.c:640: void makeHttpResponse(void) 
                                   3969 ;	-----------------------------------------
                                   3970 ;	 function makeHttpResponse
                                   3971 ;	-----------------------------------------
      0047A7                       3972 _makeHttpResponse:
                                   3973 ;	webserver.c:642: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      0047A7 90 08 2A         [24] 3974 	mov	dptr,#_makeHttpResponse_device_mac_10000_140
      0047AA 74 02            [12] 3975 	mov	a,#0x02
      0047AC F0               [24] 3976 	movx	@dptr,a
      0047AD 90 08 2B         [24] 3977 	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0001)
      0047B0 23               [12] 3978 	rl	a
      0047B1 F0               [24] 3979 	movx	@dptr,a
      0047B2 90 08 2C         [24] 3980 	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0002)
      0047B5 74 A3            [12] 3981 	mov	a,#0xa3
      0047B7 F0               [24] 3982 	movx	@dptr,a
      0047B8 90 08 2D         [24] 3983 	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0003)
      0047BB 74 3C            [12] 3984 	mov	a,#0x3c
      0047BD F0               [24] 3985 	movx	@dptr,a
      0047BE 90 08 2E         [24] 3986 	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0004)
      0047C1 74 4D            [12] 3987 	mov	a,#0x4d
      0047C3 F0               [24] 3988 	movx	@dptr,a
      0047C4 90 08 2F         [24] 3989 	mov	dptr,#(_makeHttpResponse_device_mac_10000_140 + 0x0005)
      0047C7 74 50            [12] 3990 	mov	a,#0x50
      0047C9 F0               [24] 3991 	movx	@dptr,a
                                   3992 ;	webserver.c:643: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      0047CA 90 08 30         [24] 3993 	mov	dptr,#_makeHttpResponse_target_mac_10000_140
      0047CD 74 FF            [12] 3994 	mov	a,#0xff
      0047CF F0               [24] 3995 	movx	@dptr,a
      0047D0 90 08 31         [24] 3996 	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0001)
      0047D3 F0               [24] 3997 	movx	@dptr,a
      0047D4 90 08 32         [24] 3998 	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0002)
      0047D7 F0               [24] 3999 	movx	@dptr,a
      0047D8 90 08 33         [24] 4000 	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0003)
      0047DB F0               [24] 4001 	movx	@dptr,a
      0047DC 90 08 34         [24] 4002 	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0004)
      0047DF F0               [24] 4003 	movx	@dptr,a
      0047E0 90 08 35         [24] 4004 	mov	dptr,#(_makeHttpResponse_target_mac_10000_140 + 0x0005)
      0047E3 F0               [24] 4005 	movx	@dptr,a
                                   4006 ;	webserver.c:644: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0047E4 90 08 36         [24] 4007 	mov	dptr,#_makeHttpResponse_device_ip_10000_140
      0047E7 74 C0            [12] 4008 	mov	a,#0xc0
      0047E9 F0               [24] 4009 	movx	@dptr,a
      0047EA 90 08 37         [24] 4010 	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0001)
      0047ED 74 A8            [12] 4011 	mov	a,#0xa8
      0047EF F0               [24] 4012 	movx	@dptr,a
      0047F0 90 08 38         [24] 4013 	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0002)
      0047F3 74 01            [12] 4014 	mov	a,#0x01
      0047F5 F0               [24] 4015 	movx	@dptr,a
      0047F6 90 08 39         [24] 4016 	mov	dptr,#(_makeHttpResponse_device_ip_10000_140 + 0x0003)
      0047F9 74 64            [12] 4017 	mov	a,#0x64
      0047FB F0               [24] 4018 	movx	@dptr,a
                                   4019 ;	webserver.c:645: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0047FC 90 08 3A         [24] 4020 	mov	dptr,#_makeHttpResponse_target_ip_10000_140
      0047FF 74 C0            [12] 4021 	mov	a,#0xc0
      004801 F0               [24] 4022 	movx	@dptr,a
      004802 90 08 3B         [24] 4023 	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0001)
      004805 74 A8            [12] 4024 	mov	a,#0xa8
      004807 F0               [24] 4025 	movx	@dptr,a
      004808 90 08 3C         [24] 4026 	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0002)
      00480B 74 01            [12] 4027 	mov	a,#0x01
      00480D F0               [24] 4028 	movx	@dptr,a
      00480E 90 08 3D         [24] 4029 	mov	dptr,#(_makeHttpResponse_target_ip_10000_140 + 0x0003)
      004811 F0               [24] 4030 	movx	@dptr,a
                                   4031 ;	webserver.c:647: printf("httpresponse\n\r");
      004812 74 69            [12] 4032 	mov	a,#___str_6
      004814 C0 E0            [24] 4033 	push	acc
      004816 74 66            [12] 4034 	mov	a,#(___str_6 >> 8)
      004818 C0 E0            [24] 4035 	push	acc
      00481A 74 80            [12] 4036 	mov	a,#0x80
      00481C C0 E0            [24] 4037 	push	acc
      00481E 12 52 65         [24] 4038 	lcall	_printf
      004821 15 81            [12] 4039 	dec	sp
      004823 15 81            [12] 4040 	dec	sp
      004825 15 81            [12] 4041 	dec	sp
                                   4042 ;	webserver.c:657: const char *httpResponse = "HTTP/1.1 200 OK\r\n"
                                   4043 ;	webserver.c:678: uint16_t responseLen = strlen(httpResponse);
      004827 90 64 0F         [24] 4044 	mov	dptr,#___str_5
      00482A 75 F0 80         [24] 4045 	mov	b, #0x80
      00482D 12 5C 6F         [24] 4046 	lcall	_strlen
      004830 AE 82            [24] 4047 	mov	r6, dpl
      004832 AF 83            [24] 4048 	mov	r7, dph
                                   4049 ;	webserver.c:681: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004834 90 08 9D         [24] 4050 	mov	dptr,#_memmove_PARM_2
      004837 74 A7            [12] 4051 	mov	a,#_buffer
      004839 F0               [24] 4052 	movx	@dptr,a
      00483A 74 01            [12] 4053 	mov	a,#(_buffer >> 8)
      00483C A3               [24] 4054 	inc	dptr
      00483D F0               [24] 4055 	movx	@dptr,a
      00483E E4               [12] 4056 	clr	a
      00483F A3               [24] 4057 	inc	dptr
      004840 F0               [24] 4058 	movx	@dptr,a
      004841 90 08 A0         [24] 4059 	mov	dptr,#_memmove_PARM_3
      004844 74 36            [12] 4060 	mov	a,#0x36
      004846 F0               [24] 4061 	movx	@dptr,a
      004847 E4               [12] 4062 	clr	a
      004848 A3               [24] 4063 	inc	dptr
      004849 F0               [24] 4064 	movx	@dptr,a
      00484A 90 01 A8         [24] 4065 	mov	dptr,#(_buffer + 0x0001)
      00484D F5 F0            [12] 4066 	mov	b,a
      00484F C0 07            [24] 4067 	push	ar7
      004851 C0 06            [24] 4068 	push	ar6
      004853 12 4F B3         [24] 4069 	lcall	_memmove
                                   4070 ;	webserver.c:682: buffer[0] = 0x0E;
      004856 90 01 A7         [24] 4071 	mov	dptr,#_buffer
      004859 74 0E            [12] 4072 	mov	a,#0x0e
      00485B F0               [24] 4073 	movx	@dptr,a
                                   4074 ;	webserver.c:685: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Swap MACs
      00485C 90 08 91         [24] 4075 	mov	dptr,#___memcpy_PARM_2
      00485F 74 AE            [12] 4076 	mov	a,#(_buffer + 0x0007)
      004861 F0               [24] 4077 	movx	@dptr,a
      004862 74 01            [12] 4078 	mov	a,#((_buffer + 0x0007) >> 8)
      004864 A3               [24] 4079 	inc	dptr
      004865 F0               [24] 4080 	movx	@dptr,a
      004866 E4               [12] 4081 	clr	a
      004867 A3               [24] 4082 	inc	dptr
      004868 F0               [24] 4083 	movx	@dptr,a
      004869 90 08 94         [24] 4084 	mov	dptr,#___memcpy_PARM_3
      00486C 74 06            [12] 4085 	mov	a,#0x06
      00486E F0               [24] 4086 	movx	@dptr,a
      00486F E4               [12] 4087 	clr	a
      004870 A3               [24] 4088 	inc	dptr
      004871 F0               [24] 4089 	movx	@dptr,a
      004872 90 01 A8         [24] 4090 	mov	dptr,#(_buffer + 0x0001)
      004875 F5 F0            [12] 4091 	mov	b,a
      004877 12 4E FC         [24] 4092 	lcall	___memcpy
      00487A D0 06            [24] 4093 	pop	ar6
      00487C D0 07            [24] 4094 	pop	ar7
                                   4095 ;	webserver.c:686: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);           // Set device MAC
      00487E 90 08 91         [24] 4096 	mov	dptr,#___memcpy_PARM_2
      004881 74 2A            [12] 4097 	mov	a,#_makeHttpResponse_device_mac_10000_140
      004883 F0               [24] 4098 	movx	@dptr,a
      004884 74 08            [12] 4099 	mov	a,#(_makeHttpResponse_device_mac_10000_140 >> 8)
      004886 A3               [24] 4100 	inc	dptr
      004887 F0               [24] 4101 	movx	@dptr,a
      004888 E4               [12] 4102 	clr	a
      004889 A3               [24] 4103 	inc	dptr
      00488A F0               [24] 4104 	movx	@dptr,a
      00488B 90 08 94         [24] 4105 	mov	dptr,#___memcpy_PARM_3
      00488E 74 06            [12] 4106 	mov	a,#0x06
      004890 F0               [24] 4107 	movx	@dptr,a
      004891 E4               [12] 4108 	clr	a
      004892 A3               [24] 4109 	inc	dptr
      004893 F0               [24] 4110 	movx	@dptr,a
      004894 90 01 AE         [24] 4111 	mov	dptr,#(_buffer + 0x0007)
      004897 F5 F0            [12] 4112 	mov	b,a
      004899 C0 07            [24] 4113 	push	ar7
      00489B C0 06            [24] 4114 	push	ar6
      00489D 12 4E FC         [24] 4115 	lcall	___memcpy
      0048A0 D0 06            [24] 4116 	pop	ar6
      0048A2 D0 07            [24] 4117 	pop	ar7
                                   4118 ;	webserver.c:687: buffer[1 + ETH_TYPE_H_P] = (ETH_TYPE_IP >> 8) & 0xFF; // Set EtherType to IPv4
      0048A4 90 01 B4         [24] 4119 	mov	dptr,#(_buffer + 0x000d)
      0048A7 74 08            [12] 4120 	mov	a,#0x08
      0048A9 F0               [24] 4121 	movx	@dptr,a
                                   4122 ;	webserver.c:688: buffer[1 + ETH_TYPE_L_P] = ETH_TYPE_IP & 0xFF;
      0048AA 90 01 B5         [24] 4123 	mov	dptr,#(_buffer + 0x000e)
      0048AD E4               [12] 4124 	clr	a
      0048AE F0               [24] 4125 	movx	@dptr,a
                                   4126 ;	webserver.c:691: uint16_t totalLength = ipHeaderSize + tcpHeaderSize + responseLen;
      0048AF 74 28            [12] 4127 	mov	a,#0x28
      0048B1 2E               [12] 4128 	add	a, r6
      0048B2 FC               [12] 4129 	mov	r4,a
      0048B3 E4               [12] 4130 	clr	a
      0048B4 3F               [12] 4131 	addc	a, r7
      0048B5 FD               [12] 4132 	mov	r5,a
                                   4133 ;	webserver.c:692: uint8_t *ipHeader = &buffer[1 + ethernetHeaderSize];
                                   4134 ;	webserver.c:693: ipHeader[0] = 0x45; // Version and header length
      0048B6 90 01 B6         [24] 4135 	mov	dptr,#(_buffer + 0x000f)
      0048B9 74 45            [12] 4136 	mov	a,#0x45
      0048BB F0               [24] 4137 	movx	@dptr,a
                                   4138 ;	webserver.c:694: ipHeader[1] = 0x00; // Differentiated services
      0048BC 90 01 B7         [24] 4139 	mov	dptr,#(_buffer + 0x0010)
      0048BF E4               [12] 4140 	clr	a
      0048C0 F5 F0            [12] 4141 	mov	b,a
      0048C2 12 4F 98         [24] 4142 	lcall	__gptrput
                                   4143 ;	webserver.c:695: ipHeader[2] = (totalLength >> 8) & 0xFF; // Total length high byte
      0048C5 8D 03            [24] 4144 	mov	ar3,r5
      0048C7 90 01 B8         [24] 4145 	mov	dptr,#(_buffer + 0x0011)
      0048CA F5 F0            [12] 4146 	mov	b,a
      0048CC EB               [12] 4147 	mov	a,r3
      0048CD 12 4F 98         [24] 4148 	lcall	__gptrput
                                   4149 ;	webserver.c:696: ipHeader[3] = totalLength & 0xFF;        // Total length low byte
      0048D0 90 01 B9         [24] 4150 	mov	dptr,#(_buffer + 0x0012)
      0048D3 EC               [12] 4151 	mov	a,r4
      0048D4 12 4F 98         [24] 4152 	lcall	__gptrput
                                   4153 ;	webserver.c:697: ipHeader[4] = 0x00; // Identification
      0048D7 90 01 BA         [24] 4154 	mov	dptr,#(_buffer + 0x0013)
      0048DA E4               [12] 4155 	clr	a
      0048DB 12 4F 98         [24] 4156 	lcall	__gptrput
                                   4157 ;	webserver.c:698: ipHeader[5] = 0x00;
      0048DE 90 01 BB         [24] 4158 	mov	dptr,#(_buffer + 0x0014)
      0048E1 F5 F0            [12] 4159 	mov	b,a
      0048E3 12 4F 98         [24] 4160 	lcall	__gptrput
                                   4161 ;	webserver.c:699: ipHeader[6] = 0x40; // Flags and Fragment Offset (Don't Fragment)
      0048E6 90 01 BC         [24] 4162 	mov	dptr,#(_buffer + 0x0015)
      0048E9 F5 F0            [12] 4163 	mov	b,a
      0048EB 74 40            [12] 4164 	mov	a,#0x40
      0048ED 12 4F 98         [24] 4165 	lcall	__gptrput
                                   4166 ;	webserver.c:700: ipHeader[7] = 0x00;
      0048F0 90 01 BD         [24] 4167 	mov	dptr,#(_buffer + 0x0016)
      0048F3 E4               [12] 4168 	clr	a
      0048F4 12 4F 98         [24] 4169 	lcall	__gptrput
                                   4170 ;	webserver.c:701: ipHeader[8] = 64;   // Time to Live
      0048F7 90 01 BE         [24] 4171 	mov	dptr,#(_buffer + 0x0017)
      0048FA F5 F0            [12] 4172 	mov	b,a
      0048FC 74 40            [12] 4173 	mov	a,#0x40
      0048FE 12 4F 98         [24] 4174 	lcall	__gptrput
                                   4175 ;	webserver.c:702: ipHeader[9] = IP_PROTO_TCP; // Protocol: TCP
      004901 90 01 BF         [24] 4176 	mov	dptr,#(_buffer + 0x0018)
      004904 74 06            [12] 4177 	mov	a,#0x06
      004906 12 4F 98         [24] 4178 	lcall	__gptrput
                                   4179 ;	webserver.c:703: ipHeader[10] = 0x00; // Header checksum (reset for calculation)
      004909 90 01 C0         [24] 4180 	mov	dptr,#(_buffer + 0x0019)
      00490C E4               [12] 4181 	clr	a
      00490D 12 4F 98         [24] 4182 	lcall	__gptrput
                                   4183 ;	webserver.c:704: ipHeader[11] = 0x00;
      004910 90 01 C1         [24] 4184 	mov	dptr,#(_buffer + 0x001a)
      004913 F5 F0            [12] 4185 	mov	b,a
      004915 12 4F 98         [24] 4186 	lcall	__gptrput
                                   4187 ;	webserver.c:705: memcpy(&ipHeader[12], device_ip, 4); // Source IP
      004918 90 08 91         [24] 4188 	mov	dptr,#___memcpy_PARM_2
      00491B 74 36            [12] 4189 	mov	a,#_makeHttpResponse_device_ip_10000_140
      00491D F0               [24] 4190 	movx	@dptr,a
      00491E 74 08            [12] 4191 	mov	a,#(_makeHttpResponse_device_ip_10000_140 >> 8)
      004920 A3               [24] 4192 	inc	dptr
      004921 F0               [24] 4193 	movx	@dptr,a
      004922 E4               [12] 4194 	clr	a
      004923 A3               [24] 4195 	inc	dptr
      004924 F0               [24] 4196 	movx	@dptr,a
      004925 90 08 94         [24] 4197 	mov	dptr,#___memcpy_PARM_3
      004928 74 04            [12] 4198 	mov	a,#0x04
      00492A F0               [24] 4199 	movx	@dptr,a
      00492B E4               [12] 4200 	clr	a
      00492C A3               [24] 4201 	inc	dptr
      00492D F0               [24] 4202 	movx	@dptr,a
      00492E 90 01 C2         [24] 4203 	mov	dptr,#(_buffer + 0x001b)
      004931 F5 F0            [12] 4204 	mov	b,a
      004933 C0 07            [24] 4205 	push	ar7
      004935 C0 06            [24] 4206 	push	ar6
      004937 12 4E FC         [24] 4207 	lcall	___memcpy
      00493A D0 06            [24] 4208 	pop	ar6
      00493C D0 07            [24] 4209 	pop	ar7
                                   4210 ;	webserver.c:707: memcpy(&ipHeader[16], target_ip, 4); // Destination IP
      00493E 90 08 91         [24] 4211 	mov	dptr,#___memcpy_PARM_2
      004941 74 3A            [12] 4212 	mov	a,#_makeHttpResponse_target_ip_10000_140
      004943 F0               [24] 4213 	movx	@dptr,a
      004944 74 08            [12] 4214 	mov	a,#(_makeHttpResponse_target_ip_10000_140 >> 8)
      004946 A3               [24] 4215 	inc	dptr
      004947 F0               [24] 4216 	movx	@dptr,a
      004948 E4               [12] 4217 	clr	a
      004949 A3               [24] 4218 	inc	dptr
      00494A F0               [24] 4219 	movx	@dptr,a
      00494B 90 08 94         [24] 4220 	mov	dptr,#___memcpy_PARM_3
      00494E 74 04            [12] 4221 	mov	a,#0x04
      004950 F0               [24] 4222 	movx	@dptr,a
      004951 E4               [12] 4223 	clr	a
      004952 A3               [24] 4224 	inc	dptr
      004953 F0               [24] 4225 	movx	@dptr,a
      004954 90 01 C6         [24] 4226 	mov	dptr,#(_buffer + 0x001f)
      004957 F5 F0            [12] 4227 	mov	b,a
      004959 C0 07            [24] 4228 	push	ar7
      00495B C0 06            [24] 4229 	push	ar6
      00495D 12 4E FC         [24] 4230 	lcall	___memcpy
                                   4231 ;	webserver.c:708: calculateIPChecksum(ipHeader);
      004960 90 01 B6         [24] 4232 	mov	dptr,#(_buffer + 0x000f)
      004963 75 F0 00         [24] 4233 	mov	b, #0x00
      004966 12 38 B9         [24] 4234 	lcall	_calculateIPChecksum
      004969 D0 06            [24] 4235 	pop	ar6
      00496B D0 07            [24] 4236 	pop	ar7
                                   4237 ;	webserver.c:711: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00496D 90 01 CA         [24] 4238 	mov	dptr,#(_buffer + 0x0023)
      004970 E0               [24] 4239 	movx	a,@dptr
      004971 FC               [12] 4240 	mov	r4,a
      004972 7D 00            [12] 4241 	mov	r5,#0x00
      004974 90 01 CB         [24] 4242 	mov	dptr,#(_buffer + 0x0024)
      004977 E0               [24] 4243 	movx	a,@dptr
      004978 7A 00            [12] 4244 	mov	r2,#0x00
      00497A 42 05            [12] 4245 	orl	ar5,a
      00497C EA               [12] 4246 	mov	a,r2
      00497D 42 04            [12] 4247 	orl	ar4,a
      00497F 8D 45            [24] 4248 	mov	_makeHttpResponse_sloc5_1_0,r5
      004981 8C 46            [24] 4249 	mov	(_makeHttpResponse_sloc5_1_0 + 1),r4
                                   4250 ;	webserver.c:713: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004983 90 01 CC         [24] 4251 	mov	dptr,#(_buffer + 0x0025)
      004986 E0               [24] 4252 	movx	a,@dptr
      004987 FA               [12] 4253 	mov	r2,a
      004988 7B 00            [12] 4254 	mov	r3,#0x00
      00498A 90 01 CD         [24] 4255 	mov	dptr,#(_buffer + 0x0026)
      00498D E0               [24] 4256 	movx	a,@dptr
      00498E 79 00            [12] 4257 	mov	r1,#0x00
      004990 42 03            [12] 4258 	orl	ar3,a
      004992 E9               [12] 4259 	mov	a,r1
      004993 42 02            [12] 4260 	orl	ar2,a
      004995 8B 33            [24] 4261 	mov	_makeHttpResponse_sloc0_1_0,r3
      004997 8A 34            [24] 4262 	mov	(_makeHttpResponse_sloc0_1_0 + 1),r2
                                   4263 ;	webserver.c:719: seqPart1 = (uint32_t)buffer[1 + TCP_SEQ_H_P] << 24;     // Most significant byte
      004999 90 01 CE         [24] 4264 	mov	dptr,#(_buffer + 0x0027)
      00499C E0               [24] 4265 	movx	a,@dptr
      00499D F8               [12] 4266 	mov	r0,a
      00499E 79 00            [12] 4267 	mov	r1,#0x00
      0049A0 7A 00            [12] 4268 	mov	r2,#0x00
      0049A2 7B 00            [12] 4269 	mov	r3,#0x00
      0049A4 88 38            [24] 4270 	mov	(_makeHttpResponse_sloc1_1_0 + 3),r0
      0049A6 8B 35            [24] 4271 	mov	_makeHttpResponse_sloc1_1_0,r3
      0049A8 8B 36            [24] 4272 	mov	(_makeHttpResponse_sloc1_1_0 + 1),r3
      0049AA 8B 37            [24] 4273 	mov	(_makeHttpResponse_sloc1_1_0 + 2),r3
                                   4274 ;	webserver.c:720: seqPart2 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 1] << 16; // Second byte
      0049AC 90 01 CF         [24] 4275 	mov	dptr,#(_buffer + 0x0028)
      0049AF E0               [24] 4276 	movx	a,@dptr
      0049B0 F8               [12] 4277 	mov	r0,a
      0049B1 7B 00            [12] 4278 	mov	r3,#0x00
      0049B3 89 3C            [24] 4279 	mov	(_makeHttpResponse_sloc2_1_0 + 3),r1
      0049B5 88 3B            [24] 4280 	mov	(_makeHttpResponse_sloc2_1_0 + 2),r0
      0049B7 8B 39            [24] 4281 	mov	_makeHttpResponse_sloc2_1_0,r3
      0049B9 8B 3A            [24] 4282 	mov	(_makeHttpResponse_sloc2_1_0 + 1),r3
                                   4283 ;	webserver.c:721: seqPart3 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 2] << 8;  // Third byte
      0049BB 90 01 D0         [24] 4284 	mov	dptr,#(_buffer + 0x0029)
      0049BE E0               [24] 4285 	movx	a,@dptr
      0049BF F8               [12] 4286 	mov	r0,a
      0049C0 7B 00            [12] 4287 	mov	r3,#0x00
      0049C2 8A 40            [24] 4288 	mov	(_makeHttpResponse_sloc3_1_0 + 3),r2
      0049C4 89 3F            [24] 4289 	mov	(_makeHttpResponse_sloc3_1_0 + 2),r1
      0049C6 88 3E            [24] 4290 	mov	(_makeHttpResponse_sloc3_1_0 + 1),r0
      0049C8 8B 3D            [24] 4291 	mov	_makeHttpResponse_sloc3_1_0,r3
                                   4292 ;	webserver.c:722: seqPart4 = (uint32_t)buffer[1 + TCP_SEQ_H_P + 3];       // Least significant byte
      0049CA 90 01 D1         [24] 4293 	mov	dptr,#(_buffer + 0x002a)
      0049CD E0               [24] 4294 	movx	a,@dptr
      0049CE FB               [12] 4295 	mov	r3,a
      0049CF 8B 41            [24] 4296 	mov	_makeHttpResponse_sloc4_1_0,r3
      0049D1 8A 42            [24] 4297 	mov	(_makeHttpResponse_sloc4_1_0 + 1),r2
      0049D3 8A 43            [24] 4298 	mov	(_makeHttpResponse_sloc4_1_0 + 2),r2
      0049D5 8A 44            [24] 4299 	mov	(_makeHttpResponse_sloc4_1_0 + 3),r2
                                   4300 ;	webserver.c:725: ackNum = seqPart1 | seqPart2 | seqPart3 | seqPart4;
      0049D7 A8 35            [24] 4301 	mov	r0,_makeHttpResponse_sloc1_1_0
      0049D9 A9 36            [24] 4302 	mov	r1,(_makeHttpResponse_sloc1_1_0 + 1)
      0049DB E5 3B            [12] 4303 	mov	a,(_makeHttpResponse_sloc2_1_0 + 2)
      0049DD 45 37            [12] 4304 	orl	a,(_makeHttpResponse_sloc1_1_0 + 2)
      0049DF FA               [12] 4305 	mov	r2,a
      0049E0 AB 38            [24] 4306 	mov	r3,(_makeHttpResponse_sloc1_1_0 + 3)
      0049E2 E5 3E            [12] 4307 	mov	a,(_makeHttpResponse_sloc3_1_0 + 1)
      0049E4 42 01            [12] 4308 	orl	ar1,a
      0049E6 E5 41            [12] 4309 	mov	a,_makeHttpResponse_sloc4_1_0
      0049E8 42 00            [12] 4310 	orl	ar0,a
                                   4311 ;	webserver.c:728: ackNum += 1;
      0049EA 08               [12] 4312 	inc	r0
      0049EB B8 00 09         [24] 4313 	cjne	r0,#0x00,00103$
      0049EE 09               [12] 4314 	inc	r1
      0049EF B9 00 05         [24] 4315 	cjne	r1,#0x00,00103$
      0049F2 0A               [12] 4316 	inc	r2
      0049F3 BA 00 01         [24] 4317 	cjne	r2,#0x00,00103$
      0049F6 0B               [12] 4318 	inc	r3
      0049F7                       4319 00103$:
                                   4320 ;	webserver.c:730: uint8_t *tcpHeader = &buffer[1 + ethernetHeaderSize + ipHeaderSize];
                                   4321 ;	webserver.c:731: tcpHeader[0] = (dstPort >> 8) & 0xFF; // Source port high byte
      0049F7 AD 34            [24] 4322 	mov	r5,(_makeHttpResponse_sloc0_1_0 + 1)
      0049F9 90 01 CA         [24] 4323 	mov	dptr,#(_buffer + 0x0023)
      0049FC ED               [12] 4324 	mov	a,r5
      0049FD F0               [24] 4325 	movx	@dptr,a
                                   4326 ;	webserver.c:732: tcpHeader[1] = dstPort & 0xFF;        // Source port low byte
      0049FE AD 33            [24] 4327 	mov	r5,_makeHttpResponse_sloc0_1_0
      004A00 90 01 CB         [24] 4328 	mov	dptr,#(_buffer + 0x0024)
      004A03 ED               [12] 4329 	mov	a,r5
      004A04 F0               [24] 4330 	movx	@dptr,a
                                   4331 ;	webserver.c:733: tcpHeader[2] = (srcPort >> 8) & 0xFF; // Destination port high byte
      004A05 AD 46            [24] 4332 	mov	r5,(_makeHttpResponse_sloc5_1_0 + 1)
      004A07 90 01 CC         [24] 4333 	mov	dptr,#(_buffer + 0x0025)
      004A0A ED               [12] 4334 	mov	a,r5
      004A0B F0               [24] 4335 	movx	@dptr,a
                                   4336 ;	webserver.c:734: tcpHeader[3] = srcPort & 0xFF;        // Destination port low byte
      004A0C AD 45            [24] 4337 	mov	r5,_makeHttpResponse_sloc5_1_0
      004A0E 90 01 CD         [24] 4338 	mov	dptr,#(_buffer + 0x0026)
      004A11 ED               [12] 4339 	mov	a,r5
      004A12 F0               [24] 4340 	movx	@dptr,a
                                   4341 ;	webserver.c:735: tcpHeader[4] = (seqNum >> 24) & 0xFF; // Sequence number
      004A13 90 01 CE         [24] 4342 	mov	dptr,#(_buffer + 0x0027)
      004A16 E4               [12] 4343 	clr	a
      004A17 F0               [24] 4344 	movx	@dptr,a
                                   4345 ;	webserver.c:736: tcpHeader[5] = (seqNum >> 16) & 0xFF;
      004A18 90 01 CF         [24] 4346 	mov	dptr,#(_buffer + 0x0028)
      004A1B F0               [24] 4347 	movx	@dptr,a
                                   4348 ;	webserver.c:737: tcpHeader[6] = (seqNum >> 8) & 0xFF;
      004A1C 90 01 D0         [24] 4349 	mov	dptr,#(_buffer + 0x0029)
      004A1F 74 03            [12] 4350 	mov	a,#0x03
      004A21 F0               [24] 4351 	movx	@dptr,a
                                   4352 ;	webserver.c:738: tcpHeader[7] = seqNum & 0xFF;
      004A22 90 01 D1         [24] 4353 	mov	dptr,#(_buffer + 0x002a)
      004A25 74 E8            [12] 4354 	mov	a,#0xe8
      004A27 F0               [24] 4355 	movx	@dptr,a
                                   4356 ;	webserver.c:739: tcpHeader[8] = (ackNum >> 24) & 0xFF; // Acknowledgment number
      004A28 8B 05            [24] 4357 	mov	ar5,r3
      004A2A 90 01 D2         [24] 4358 	mov	dptr,#(_buffer + 0x002b)
      004A2D ED               [12] 4359 	mov	a,r5
      004A2E F0               [24] 4360 	movx	@dptr,a
                                   4361 ;	webserver.c:740: tcpHeader[9] = (ackNum >> 16) & 0xFF;
      004A2F 8A 05            [24] 4362 	mov	ar5,r2
      004A31 90 01 D3         [24] 4363 	mov	dptr,#(_buffer + 0x002c)
      004A34 ED               [12] 4364 	mov	a,r5
      004A35 F0               [24] 4365 	movx	@dptr,a
                                   4366 ;	webserver.c:741: tcpHeader[10] = (ackNum >> 8) & 0xFF;
      004A36 89 05            [24] 4367 	mov	ar5,r1
      004A38 90 01 D4         [24] 4368 	mov	dptr,#(_buffer + 0x002d)
      004A3B ED               [12] 4369 	mov	a,r5
      004A3C F0               [24] 4370 	movx	@dptr,a
                                   4371 ;	webserver.c:742: tcpHeader[11] = ackNum & 0xFF;
      004A3D 90 01 D5         [24] 4372 	mov	dptr,#(_buffer + 0x002e)
      004A40 E8               [12] 4373 	mov	a,r0
      004A41 F0               [24] 4374 	movx	@dptr,a
                                   4375 ;	webserver.c:743: tcpHeader[12] = 0x50; // Data offset (5 words) + Reserved
      004A42 90 01 D6         [24] 4376 	mov	dptr,#(_buffer + 0x002f)
      004A45 74 50            [12] 4377 	mov	a,#0x50
      004A47 F0               [24] 4378 	movx	@dptr,a
                                   4379 ;	webserver.c:744: tcpHeader[13] = TCP_FLAG_ACK | TCP_FLAG_PUSH; // Flags
      004A48 90 01 D7         [24] 4380 	mov	dptr,#(_buffer + 0x0030)
      004A4B 74 18            [12] 4381 	mov	a,#0x18
      004A4D F0               [24] 4382 	movx	@dptr,a
                                   4383 ;	webserver.c:745: tcpHeader[14] = 0xFF; // Window size high byte
      004A4E 90 01 D8         [24] 4384 	mov	dptr,#(_buffer + 0x0031)
      004A51 74 FF            [12] 4385 	mov	a,#0xff
      004A53 F0               [24] 4386 	movx	@dptr,a
                                   4387 ;	webserver.c:746: tcpHeader[15] = 0xFF; // Window size low byte
      004A54 90 01 D9         [24] 4388 	mov	dptr,#(_buffer + 0x0032)
      004A57 F0               [24] 4389 	movx	@dptr,a
                                   4390 ;	webserver.c:747: tcpHeader[16] = 0x00; // Checksum (reset for calculation)
      004A58 90 01 DA         [24] 4391 	mov	dptr,#(_buffer + 0x0033)
      004A5B E4               [12] 4392 	clr	a
      004A5C F0               [24] 4393 	movx	@dptr,a
                                   4394 ;	webserver.c:748: tcpHeader[17] = 0x00;
      004A5D 90 01 DB         [24] 4395 	mov	dptr,#(_buffer + 0x0034)
      004A60 F0               [24] 4396 	movx	@dptr,a
                                   4397 ;	webserver.c:749: tcpHeader[18] = 0x00; // Urgent pointer
      004A61 90 01 DC         [24] 4398 	mov	dptr,#(_buffer + 0x0035)
      004A64 F0               [24] 4399 	movx	@dptr,a
                                   4400 ;	webserver.c:750: tcpHeader[19] = 0x00;
      004A65 90 01 DD         [24] 4401 	mov	dptr,#(_buffer + 0x0036)
      004A68 F0               [24] 4402 	movx	@dptr,a
                                   4403 ;	webserver.c:751: calculateTcpChecksum(&buffer[1]);
      004A69 90 01 A8         [24] 4404 	mov	dptr,#(_buffer + 0x0001)
      004A6C F5 F0            [12] 4405 	mov	b,a
      004A6E C0 07            [24] 4406 	push	ar7
      004A70 C0 06            [24] 4407 	push	ar6
      004A72 12 3A 23         [24] 4408 	lcall	_calculateTcpChecksum
      004A75 D0 06            [24] 4409 	pop	ar6
      004A77 D0 07            [24] 4410 	pop	ar7
                                   4411 ;	webserver.c:754: memcpy(&buffer[1 + headerSize], httpResponse, responseLen);
      004A79 90 08 91         [24] 4412 	mov	dptr,#___memcpy_PARM_2
      004A7C 74 0F            [12] 4413 	mov	a,#___str_5
      004A7E F0               [24] 4414 	movx	@dptr,a
      004A7F 74 64            [12] 4415 	mov	a,#(___str_5 >> 8)
      004A81 A3               [24] 4416 	inc	dptr
      004A82 F0               [24] 4417 	movx	@dptr,a
      004A83 74 80            [12] 4418 	mov	a,#0x80
      004A85 A3               [24] 4419 	inc	dptr
      004A86 F0               [24] 4420 	movx	@dptr,a
      004A87 90 08 94         [24] 4421 	mov	dptr,#___memcpy_PARM_3
      004A8A EE               [12] 4422 	mov	a,r6
      004A8B F0               [24] 4423 	movx	@dptr,a
      004A8C EF               [12] 4424 	mov	a,r7
      004A8D A3               [24] 4425 	inc	dptr
      004A8E F0               [24] 4426 	movx	@dptr,a
      004A8F 90 01 DE         [24] 4427 	mov	dptr,#(_buffer + 0x0037)
      004A92 75 F0 00         [24] 4428 	mov	b, #0x00
      004A95 C0 07            [24] 4429 	push	ar7
      004A97 C0 06            [24] 4430 	push	ar6
      004A99 12 4E FC         [24] 4431 	lcall	___memcpy
      004A9C D0 06            [24] 4432 	pop	ar6
      004A9E D0 07            [24] 4433 	pop	ar7
                                   4434 ;	webserver.c:757: transmit_tcp_packet(buffer, 1 + headerSize + responseLen);
      004AA0 90 01 8C         [24] 4435 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004AA3 74 37            [12] 4436 	mov	a,#0x37
      004AA5 2E               [12] 4437 	add	a, r6
      004AA6 F0               [24] 4438 	movx	@dptr,a
      004AA7 E4               [12] 4439 	clr	a
      004AA8 3F               [12] 4440 	addc	a, r7
      004AA9 A3               [24] 4441 	inc	dptr
      004AAA F0               [24] 4442 	movx	@dptr,a
      004AAB 90 01 A7         [24] 4443 	mov	dptr,#_buffer
      004AAE 75 F0 00         [24] 4444 	mov	b, #0x00
                                   4445 ;	webserver.c:758: }
      004AB1 02 31 62         [24] 4446 	ljmp	_transmit_tcp_packet
                                   4447 ;------------------------------------------------------------
                                   4448 ;Allocation info for local variables in function 'makeTcpAck'
                                   4449 ;------------------------------------------------------------
                                   4450 ;device_mac                Allocated with name '_makeTcpAck_device_mac_10000_146'
                                   4451 ;target_mac                Allocated with name '_makeTcpAck_target_mac_10000_146'
                                   4452 ;device_ip                 Allocated with name '_makeTcpAck_device_ip_10000_146'
                                   4453 ;target_ip                 Allocated with name '_makeTcpAck_target_ip_10000_146'
                                   4454 ;------------------------------------------------------------
                                   4455 ;	webserver.c:769: void makeTcpAck(void) 
                                   4456 ;	-----------------------------------------
                                   4457 ;	 function makeTcpAck
                                   4458 ;	-----------------------------------------
      004AB4                       4459 _makeTcpAck:
                                   4460 ;	webserver.c:771: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      004AB4 90 08 3E         [24] 4461 	mov	dptr,#_makeTcpAck_device_mac_10000_146
      004AB7 74 02            [12] 4462 	mov	a,#0x02
      004AB9 F0               [24] 4463 	movx	@dptr,a
      004ABA 90 08 3F         [24] 4464 	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0001)
      004ABD 23               [12] 4465 	rl	a
      004ABE F0               [24] 4466 	movx	@dptr,a
      004ABF 90 08 40         [24] 4467 	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0002)
      004AC2 74 A3            [12] 4468 	mov	a,#0xa3
      004AC4 F0               [24] 4469 	movx	@dptr,a
      004AC5 90 08 41         [24] 4470 	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0003)
      004AC8 74 3C            [12] 4471 	mov	a,#0x3c
      004ACA F0               [24] 4472 	movx	@dptr,a
      004ACB 90 08 42         [24] 4473 	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0004)
      004ACE 74 4D            [12] 4474 	mov	a,#0x4d
      004AD0 F0               [24] 4475 	movx	@dptr,a
      004AD1 90 08 43         [24] 4476 	mov	dptr,#(_makeTcpAck_device_mac_10000_146 + 0x0005)
      004AD4 74 50            [12] 4477 	mov	a,#0x50
      004AD6 F0               [24] 4478 	movx	@dptr,a
                                   4479 ;	webserver.c:772: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      004AD7 90 08 44         [24] 4480 	mov	dptr,#_makeTcpAck_target_mac_10000_146
      004ADA 74 FF            [12] 4481 	mov	a,#0xff
      004ADC F0               [24] 4482 	movx	@dptr,a
      004ADD 90 08 45         [24] 4483 	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0001)
      004AE0 F0               [24] 4484 	movx	@dptr,a
      004AE1 90 08 46         [24] 4485 	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0002)
      004AE4 F0               [24] 4486 	movx	@dptr,a
      004AE5 90 08 47         [24] 4487 	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0003)
      004AE8 F0               [24] 4488 	movx	@dptr,a
      004AE9 90 08 48         [24] 4489 	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0004)
      004AEC F0               [24] 4490 	movx	@dptr,a
      004AED 90 08 49         [24] 4491 	mov	dptr,#(_makeTcpAck_target_mac_10000_146 + 0x0005)
      004AF0 F0               [24] 4492 	movx	@dptr,a
                                   4493 ;	webserver.c:773: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004AF1 90 08 4A         [24] 4494 	mov	dptr,#_makeTcpAck_device_ip_10000_146
      004AF4 74 C0            [12] 4495 	mov	a,#0xc0
      004AF6 F0               [24] 4496 	movx	@dptr,a
      004AF7 90 08 4B         [24] 4497 	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0001)
      004AFA 74 A8            [12] 4498 	mov	a,#0xa8
      004AFC F0               [24] 4499 	movx	@dptr,a
      004AFD 90 08 4C         [24] 4500 	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0002)
      004B00 74 01            [12] 4501 	mov	a,#0x01
      004B02 F0               [24] 4502 	movx	@dptr,a
      004B03 90 08 4D         [24] 4503 	mov	dptr,#(_makeTcpAck_device_ip_10000_146 + 0x0003)
      004B06 74 64            [12] 4504 	mov	a,#0x64
      004B08 F0               [24] 4505 	movx	@dptr,a
                                   4506 ;	webserver.c:774: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004B09 90 08 4E         [24] 4507 	mov	dptr,#_makeTcpAck_target_ip_10000_146
      004B0C 74 C0            [12] 4508 	mov	a,#0xc0
      004B0E F0               [24] 4509 	movx	@dptr,a
      004B0F 90 08 4F         [24] 4510 	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0001)
      004B12 74 A8            [12] 4511 	mov	a,#0xa8
      004B14 F0               [24] 4512 	movx	@dptr,a
      004B15 90 08 50         [24] 4513 	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0002)
      004B18 74 01            [12] 4514 	mov	a,#0x01
      004B1A F0               [24] 4515 	movx	@dptr,a
      004B1B 90 08 51         [24] 4516 	mov	dptr,#(_makeTcpAck_target_ip_10000_146 + 0x0003)
      004B1E F0               [24] 4517 	movx	@dptr,a
                                   4518 ;	webserver.c:775: printf("tcpack\n\r");
      004B1F 74 78            [12] 4519 	mov	a,#___str_7
      004B21 C0 E0            [24] 4520 	push	acc
      004B23 74 66            [12] 4521 	mov	a,#(___str_7 >> 8)
      004B25 C0 E0            [24] 4522 	push	acc
      004B27 74 80            [12] 4523 	mov	a,#0x80
      004B29 C0 E0            [24] 4524 	push	acc
      004B2B 12 52 65         [24] 4525 	lcall	_printf
      004B2E 15 81            [12] 4526 	dec	sp
      004B30 15 81            [12] 4527 	dec	sp
      004B32 15 81            [12] 4528 	dec	sp
                                   4529 ;	webserver.c:776: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004B34 90 08 9D         [24] 4530 	mov	dptr,#_memmove_PARM_2
      004B37 74 A7            [12] 4531 	mov	a,#_buffer
      004B39 F0               [24] 4532 	movx	@dptr,a
      004B3A 74 01            [12] 4533 	mov	a,#(_buffer >> 8)
      004B3C A3               [24] 4534 	inc	dptr
      004B3D F0               [24] 4535 	movx	@dptr,a
      004B3E E4               [12] 4536 	clr	a
      004B3F A3               [24] 4537 	inc	dptr
      004B40 F0               [24] 4538 	movx	@dptr,a
      004B41 90 08 A0         [24] 4539 	mov	dptr,#_memmove_PARM_3
      004B44 74 36            [12] 4540 	mov	a,#0x36
      004B46 F0               [24] 4541 	movx	@dptr,a
      004B47 E4               [12] 4542 	clr	a
      004B48 A3               [24] 4543 	inc	dptr
      004B49 F0               [24] 4544 	movx	@dptr,a
      004B4A 90 01 A8         [24] 4545 	mov	dptr,#(_buffer + 0x0001)
      004B4D F5 F0            [12] 4546 	mov	b,a
      004B4F 12 4F B3         [24] 4547 	lcall	_memmove
                                   4548 ;	webserver.c:779: buffer[0] = 0x0E;
      004B52 90 01 A7         [24] 4549 	mov	dptr,#_buffer
      004B55 74 0E            [12] 4550 	mov	a,#0x0e
      004B57 F0               [24] 4551 	movx	@dptr,a
                                   4552 ;	webserver.c:780: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
      004B58 90 01 D7         [24] 4553 	mov	dptr,#(_buffer + 0x0030)
      004B5B 74 10            [12] 4554 	mov	a,#0x10
      004B5D F0               [24] 4555 	movx	@dptr,a
                                   4556 ;	webserver.c:781: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
      004B5E 90 01 8C         [24] 4557 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004B61 74 37            [12] 4558 	mov	a,#0x37
      004B63 F0               [24] 4559 	movx	@dptr,a
      004B64 E4               [12] 4560 	clr	a
      004B65 A3               [24] 4561 	inc	dptr
      004B66 F0               [24] 4562 	movx	@dptr,a
      004B67 90 01 A7         [24] 4563 	mov	dptr,#_buffer
      004B6A F5 F0            [12] 4564 	mov	b,a
                                   4565 ;	webserver.c:782: }
      004B6C 02 31 62         [24] 4566 	ljmp	_transmit_tcp_packet
                                   4567 ;------------------------------------------------------------
                                   4568 ;Allocation info for local variables in function 'trial_arp_request'
                                   4569 ;------------------------------------------------------------
                                   4570 ;device_mac                Allocated with name '_trial_arp_request_device_mac_10000_148'
                                   4571 ;target_mac                Allocated with name '_trial_arp_request_target_mac_10000_148'
                                   4572 ;device_ip                 Allocated with name '_trial_arp_request_device_ip_10000_148'
                                   4573 ;target_ip                 Allocated with name '_trial_arp_request_target_ip_10000_148'
                                   4574 ;arp_packet                Allocated with name '_trial_arp_request_arp_packet_10001_149'
                                   4575 ;------------------------------------------------------------
                                   4576 ;	webserver.c:794: void trial_arp_request(void) 
                                   4577 ;	-----------------------------------------
                                   4578 ;	 function trial_arp_request
                                   4579 ;	-----------------------------------------
      004B6F                       4580 _trial_arp_request:
                                   4581 ;	webserver.c:796: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      004B6F 90 08 52         [24] 4582 	mov	dptr,#_trial_arp_request_device_mac_10000_148
      004B72 74 02            [12] 4583 	mov	a,#0x02
      004B74 F0               [24] 4584 	movx	@dptr,a
      004B75 90 08 53         [24] 4585 	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0001)
      004B78 23               [12] 4586 	rl	a
      004B79 F0               [24] 4587 	movx	@dptr,a
      004B7A 90 08 54         [24] 4588 	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0002)
      004B7D 74 A3            [12] 4589 	mov	a,#0xa3
      004B7F F0               [24] 4590 	movx	@dptr,a
      004B80 90 08 55         [24] 4591 	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0003)
      004B83 74 3C            [12] 4592 	mov	a,#0x3c
      004B85 F0               [24] 4593 	movx	@dptr,a
      004B86 90 08 56         [24] 4594 	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0004)
      004B89 74 4D            [12] 4595 	mov	a,#0x4d
      004B8B F0               [24] 4596 	movx	@dptr,a
      004B8C 90 08 57         [24] 4597 	mov	dptr,#(_trial_arp_request_device_mac_10000_148 + 0x0005)
      004B8F 74 50            [12] 4598 	mov	a,#0x50
      004B91 F0               [24] 4599 	movx	@dptr,a
                                   4600 ;	webserver.c:797: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      004B92 90 08 58         [24] 4601 	mov	dptr,#_trial_arp_request_target_mac_10000_148
      004B95 74 FF            [12] 4602 	mov	a,#0xff
      004B97 F0               [24] 4603 	movx	@dptr,a
      004B98 90 08 59         [24] 4604 	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0001)
      004B9B F0               [24] 4605 	movx	@dptr,a
      004B9C 90 08 5A         [24] 4606 	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0002)
      004B9F F0               [24] 4607 	movx	@dptr,a
      004BA0 90 08 5B         [24] 4608 	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0003)
      004BA3 F0               [24] 4609 	movx	@dptr,a
      004BA4 90 08 5C         [24] 4610 	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0004)
      004BA7 F0               [24] 4611 	movx	@dptr,a
      004BA8 90 08 5D         [24] 4612 	mov	dptr,#(_trial_arp_request_target_mac_10000_148 + 0x0005)
      004BAB F0               [24] 4613 	movx	@dptr,a
                                   4614 ;	webserver.c:798: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004BAC 90 08 5E         [24] 4615 	mov	dptr,#_trial_arp_request_device_ip_10000_148
      004BAF 74 C0            [12] 4616 	mov	a,#0xc0
      004BB1 F0               [24] 4617 	movx	@dptr,a
      004BB2 90 08 5F         [24] 4618 	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0001)
      004BB5 74 A8            [12] 4619 	mov	a,#0xa8
      004BB7 F0               [24] 4620 	movx	@dptr,a
      004BB8 90 08 60         [24] 4621 	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0002)
      004BBB 74 01            [12] 4622 	mov	a,#0x01
      004BBD F0               [24] 4623 	movx	@dptr,a
      004BBE 90 08 61         [24] 4624 	mov	dptr,#(_trial_arp_request_device_ip_10000_148 + 0x0003)
      004BC1 74 64            [12] 4625 	mov	a,#0x64
      004BC3 F0               [24] 4626 	movx	@dptr,a
                                   4627 ;	webserver.c:799: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004BC4 90 08 62         [24] 4628 	mov	dptr,#_trial_arp_request_target_ip_10000_148
      004BC7 74 C0            [12] 4629 	mov	a,#0xc0
      004BC9 F0               [24] 4630 	movx	@dptr,a
      004BCA 90 08 63         [24] 4631 	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0001)
      004BCD 74 A8            [12] 4632 	mov	a,#0xa8
      004BCF F0               [24] 4633 	movx	@dptr,a
      004BD0 90 08 64         [24] 4634 	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0002)
      004BD3 74 01            [12] 4635 	mov	a,#0x01
      004BD5 F0               [24] 4636 	movx	@dptr,a
      004BD6 90 08 65         [24] 4637 	mov	dptr,#(_trial_arp_request_target_ip_10000_148 + 0x0003)
      004BD9 F0               [24] 4638 	movx	@dptr,a
                                   4639 ;	webserver.c:800: printf("refresharp\n\r");
      004BDA 74 81            [12] 4640 	mov	a,#___str_8
      004BDC C0 E0            [24] 4641 	push	acc
      004BDE 74 66            [12] 4642 	mov	a,#(___str_8 >> 8)
      004BE0 C0 E0            [24] 4643 	push	acc
      004BE2 74 80            [12] 4644 	mov	a,#0x80
      004BE4 C0 E0            [24] 4645 	push	acc
      004BE6 12 52 65         [24] 4646 	lcall	_printf
      004BE9 15 81            [12] 4647 	dec	sp
      004BEB 15 81            [12] 4648 	dec	sp
      004BED 15 81            [12] 4649 	dec	sp
                                   4650 ;	webserver.c:801: uint8_t arp_packet[43] = { 0x0E };
      004BEF 90 08 66         [24] 4651 	mov	dptr,#_trial_arp_request_arp_packet_10001_149
      004BF2 74 0E            [12] 4652 	mov	a,#0x0e
      004BF4 F0               [24] 4653 	movx	@dptr,a
      004BF5 90 08 67         [24] 4654 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0001)
      004BF8 E4               [12] 4655 	clr	a
      004BF9 F0               [24] 4656 	movx	@dptr,a
      004BFA 90 08 68         [24] 4657 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0002)
      004BFD F0               [24] 4658 	movx	@dptr,a
      004BFE 90 08 69         [24] 4659 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0003)
      004C01 F0               [24] 4660 	movx	@dptr,a
      004C02 90 08 6A         [24] 4661 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0004)
      004C05 F0               [24] 4662 	movx	@dptr,a
      004C06 90 08 6B         [24] 4663 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0005)
      004C09 F0               [24] 4664 	movx	@dptr,a
      004C0A 90 08 6C         [24] 4665 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0006)
      004C0D F0               [24] 4666 	movx	@dptr,a
      004C0E 90 08 6D         [24] 4667 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0007)
      004C11 F0               [24] 4668 	movx	@dptr,a
      004C12 90 08 6E         [24] 4669 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0008)
      004C15 F0               [24] 4670 	movx	@dptr,a
      004C16 90 08 6F         [24] 4671 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0009)
      004C19 F0               [24] 4672 	movx	@dptr,a
      004C1A 90 08 70         [24] 4673 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000a)
      004C1D F0               [24] 4674 	movx	@dptr,a
      004C1E 90 08 71         [24] 4675 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000b)
      004C21 F0               [24] 4676 	movx	@dptr,a
      004C22 90 08 72         [24] 4677 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000c)
      004C25 F0               [24] 4678 	movx	@dptr,a
      004C26 90 08 73         [24] 4679 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000d)
      004C29 F0               [24] 4680 	movx	@dptr,a
      004C2A 90 08 74         [24] 4681 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000e)
      004C2D F0               [24] 4682 	movx	@dptr,a
      004C2E 90 08 75         [24] 4683 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000f)
      004C31 F0               [24] 4684 	movx	@dptr,a
      004C32 90 08 76         [24] 4685 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0010)
      004C35 F0               [24] 4686 	movx	@dptr,a
      004C36 90 08 77         [24] 4687 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0011)
      004C39 F0               [24] 4688 	movx	@dptr,a
      004C3A 90 08 78         [24] 4689 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0012)
      004C3D F0               [24] 4690 	movx	@dptr,a
      004C3E 90 08 79         [24] 4691 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0013)
      004C41 F0               [24] 4692 	movx	@dptr,a
      004C42 90 08 7A         [24] 4693 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0014)
      004C45 F0               [24] 4694 	movx	@dptr,a
      004C46 90 08 7B         [24] 4695 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0015)
      004C49 F0               [24] 4696 	movx	@dptr,a
      004C4A 90 08 7C         [24] 4697 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0016)
      004C4D F0               [24] 4698 	movx	@dptr,a
      004C4E 90 08 7D         [24] 4699 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0017)
      004C51 F0               [24] 4700 	movx	@dptr,a
      004C52 90 08 7E         [24] 4701 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0018)
      004C55 F0               [24] 4702 	movx	@dptr,a
      004C56 90 08 7F         [24] 4703 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0019)
      004C59 F0               [24] 4704 	movx	@dptr,a
      004C5A 90 08 80         [24] 4705 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001a)
      004C5D F0               [24] 4706 	movx	@dptr,a
      004C5E 90 08 81         [24] 4707 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001b)
      004C61 F0               [24] 4708 	movx	@dptr,a
      004C62 90 08 82         [24] 4709 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001c)
      004C65 F0               [24] 4710 	movx	@dptr,a
      004C66 90 08 83         [24] 4711 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001d)
      004C69 F0               [24] 4712 	movx	@dptr,a
      004C6A 90 08 84         [24] 4713 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001e)
      004C6D F0               [24] 4714 	movx	@dptr,a
      004C6E 90 08 85         [24] 4715 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001f)
      004C71 F0               [24] 4716 	movx	@dptr,a
      004C72 90 08 86         [24] 4717 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0020)
      004C75 F0               [24] 4718 	movx	@dptr,a
      004C76 90 08 87         [24] 4719 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0021)
      004C79 F0               [24] 4720 	movx	@dptr,a
      004C7A 90 08 88         [24] 4721 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0022)
      004C7D F0               [24] 4722 	movx	@dptr,a
      004C7E 90 08 89         [24] 4723 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0023)
      004C81 F0               [24] 4724 	movx	@dptr,a
      004C82 90 08 8A         [24] 4725 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0024)
      004C85 F0               [24] 4726 	movx	@dptr,a
      004C86 90 08 8B         [24] 4727 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0025)
      004C89 F0               [24] 4728 	movx	@dptr,a
      004C8A 90 08 8C         [24] 4729 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0026)
      004C8D F0               [24] 4730 	movx	@dptr,a
      004C8E 90 08 8D         [24] 4731 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0027)
      004C91 F0               [24] 4732 	movx	@dptr,a
      004C92 90 08 8E         [24] 4733 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0028)
      004C95 F0               [24] 4734 	movx	@dptr,a
      004C96 90 08 8F         [24] 4735 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0029)
      004C99 F0               [24] 4736 	movx	@dptr,a
      004C9A 90 08 90         [24] 4737 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x002a)
      004C9D F0               [24] 4738 	movx	@dptr,a
                                   4739 ;	webserver.c:802: memcpy(&arp_packet[1], target_mac, 6);
      004C9E 90 08 91         [24] 4740 	mov	dptr,#___memcpy_PARM_2
      004CA1 74 58            [12] 4741 	mov	a,#_trial_arp_request_target_mac_10000_148
      004CA3 F0               [24] 4742 	movx	@dptr,a
      004CA4 74 08            [12] 4743 	mov	a,#(_trial_arp_request_target_mac_10000_148 >> 8)
      004CA6 A3               [24] 4744 	inc	dptr
      004CA7 F0               [24] 4745 	movx	@dptr,a
      004CA8 E4               [12] 4746 	clr	a
      004CA9 A3               [24] 4747 	inc	dptr
      004CAA F0               [24] 4748 	movx	@dptr,a
      004CAB 90 08 94         [24] 4749 	mov	dptr,#___memcpy_PARM_3
      004CAE 74 06            [12] 4750 	mov	a,#0x06
      004CB0 F0               [24] 4751 	movx	@dptr,a
      004CB1 E4               [12] 4752 	clr	a
      004CB2 A3               [24] 4753 	inc	dptr
      004CB3 F0               [24] 4754 	movx	@dptr,a
      004CB4 90 08 67         [24] 4755 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0001)
      004CB7 F5 F0            [12] 4756 	mov	b,a
      004CB9 12 4E FC         [24] 4757 	lcall	___memcpy
                                   4758 ;	webserver.c:803: memcpy(&arp_packet[7], device_mac, 6);
      004CBC 90 08 91         [24] 4759 	mov	dptr,#___memcpy_PARM_2
      004CBF 74 52            [12] 4760 	mov	a,#_trial_arp_request_device_mac_10000_148
      004CC1 F0               [24] 4761 	movx	@dptr,a
      004CC2 74 08            [12] 4762 	mov	a,#(_trial_arp_request_device_mac_10000_148 >> 8)
      004CC4 A3               [24] 4763 	inc	dptr
      004CC5 F0               [24] 4764 	movx	@dptr,a
      004CC6 E4               [12] 4765 	clr	a
      004CC7 A3               [24] 4766 	inc	dptr
      004CC8 F0               [24] 4767 	movx	@dptr,a
      004CC9 90 08 94         [24] 4768 	mov	dptr,#___memcpy_PARM_3
      004CCC 74 06            [12] 4769 	mov	a,#0x06
      004CCE F0               [24] 4770 	movx	@dptr,a
      004CCF E4               [12] 4771 	clr	a
      004CD0 A3               [24] 4772 	inc	dptr
      004CD1 F0               [24] 4773 	movx	@dptr,a
      004CD2 90 08 6D         [24] 4774 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0007)
      004CD5 F5 F0            [12] 4775 	mov	b,a
      004CD7 12 4E FC         [24] 4776 	lcall	___memcpy
                                   4777 ;	webserver.c:804: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      004CDA 90 08 73         [24] 4778 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000d)
      004CDD 74 08            [12] 4779 	mov	a,#0x08
      004CDF F0               [24] 4780 	movx	@dptr,a
                                   4781 ;	webserver.c:805: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      004CE0 90 08 74         [24] 4782 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000e)
      004CE3 74 06            [12] 4783 	mov	a,#0x06
      004CE5 F0               [24] 4784 	movx	@dptr,a
                                   4785 ;	webserver.c:806: arp_packet[15] = 0x00;
      004CE6 90 08 75         [24] 4786 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x000f)
      004CE9 E4               [12] 4787 	clr	a
      004CEA F0               [24] 4788 	movx	@dptr,a
                                   4789 ;	webserver.c:807: arp_packet[16] = 0x01; // Hardware type
      004CEB 90 08 76         [24] 4790 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0010)
      004CEE 04               [12] 4791 	inc	a
      004CEF F0               [24] 4792 	movx	@dptr,a
                                   4793 ;	webserver.c:808: arp_packet[17] = 0x08;
      004CF0 90 08 77         [24] 4794 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0011)
      004CF3 74 08            [12] 4795 	mov	a,#0x08
      004CF5 F0               [24] 4796 	movx	@dptr,a
                                   4797 ;	webserver.c:809: arp_packet[18] = 0x00; // Protocol type
      004CF6 90 08 78         [24] 4798 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0012)
      004CF9 E4               [12] 4799 	clr	a
      004CFA F0               [24] 4800 	movx	@dptr,a
                                   4801 ;	webserver.c:810: arp_packet[19] = 0x06; // Hardware size
      004CFB 90 08 79         [24] 4802 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0013)
      004CFE 74 06            [12] 4803 	mov	a,#0x06
      004D00 F0               [24] 4804 	movx	@dptr,a
                                   4805 ;	webserver.c:811: arp_packet[20] = 0x04; // Protocol size
      004D01 90 08 7A         [24] 4806 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0014)
      004D04 74 04            [12] 4807 	mov	a,#0x04
      004D06 F0               [24] 4808 	movx	@dptr,a
                                   4809 ;	webserver.c:812: arp_packet[21] = 0x00;
      004D07 90 08 7B         [24] 4810 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0015)
      004D0A E4               [12] 4811 	clr	a
      004D0B F0               [24] 4812 	movx	@dptr,a
                                   4813 ;	webserver.c:813: arp_packet[22] = 0x01; // Operation (request)
      004D0C 90 08 7C         [24] 4814 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0016)
      004D0F 04               [12] 4815 	inc	a
      004D10 F0               [24] 4816 	movx	@dptr,a
                                   4817 ;	webserver.c:814: memcpy(&arp_packet[23], device_mac, 6);
      004D11 90 08 91         [24] 4818 	mov	dptr,#___memcpy_PARM_2
      004D14 74 52            [12] 4819 	mov	a,#_trial_arp_request_device_mac_10000_148
      004D16 F0               [24] 4820 	movx	@dptr,a
      004D17 74 08            [12] 4821 	mov	a,#(_trial_arp_request_device_mac_10000_148 >> 8)
      004D19 A3               [24] 4822 	inc	dptr
      004D1A F0               [24] 4823 	movx	@dptr,a
      004D1B E4               [12] 4824 	clr	a
      004D1C A3               [24] 4825 	inc	dptr
      004D1D F0               [24] 4826 	movx	@dptr,a
      004D1E 90 08 94         [24] 4827 	mov	dptr,#___memcpy_PARM_3
      004D21 74 06            [12] 4828 	mov	a,#0x06
      004D23 F0               [24] 4829 	movx	@dptr,a
      004D24 E4               [12] 4830 	clr	a
      004D25 A3               [24] 4831 	inc	dptr
      004D26 F0               [24] 4832 	movx	@dptr,a
      004D27 90 08 7D         [24] 4833 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0017)
      004D2A F5 F0            [12] 4834 	mov	b,a
      004D2C 12 4E FC         [24] 4835 	lcall	___memcpy
                                   4836 ;	webserver.c:815: memcpy(&arp_packet[29], device_ip, 4);
      004D2F 90 08 91         [24] 4837 	mov	dptr,#___memcpy_PARM_2
      004D32 74 5E            [12] 4838 	mov	a,#_trial_arp_request_device_ip_10000_148
      004D34 F0               [24] 4839 	movx	@dptr,a
      004D35 74 08            [12] 4840 	mov	a,#(_trial_arp_request_device_ip_10000_148 >> 8)
      004D37 A3               [24] 4841 	inc	dptr
      004D38 F0               [24] 4842 	movx	@dptr,a
      004D39 E4               [12] 4843 	clr	a
      004D3A A3               [24] 4844 	inc	dptr
      004D3B F0               [24] 4845 	movx	@dptr,a
      004D3C 90 08 94         [24] 4846 	mov	dptr,#___memcpy_PARM_3
      004D3F 74 04            [12] 4847 	mov	a,#0x04
      004D41 F0               [24] 4848 	movx	@dptr,a
      004D42 E4               [12] 4849 	clr	a
      004D43 A3               [24] 4850 	inc	dptr
      004D44 F0               [24] 4851 	movx	@dptr,a
      004D45 90 08 83         [24] 4852 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x001d)
      004D48 F5 F0            [12] 4853 	mov	b,a
      004D4A 12 4E FC         [24] 4854 	lcall	___memcpy
                                   4855 ;	webserver.c:816: memset(&arp_packet[33], 0, 6);
      004D4D 90 08 99         [24] 4856 	mov	dptr,#_memset_PARM_2
      004D50 E4               [12] 4857 	clr	a
      004D51 F0               [24] 4858 	movx	@dptr,a
      004D52 90 08 9A         [24] 4859 	mov	dptr,#_memset_PARM_3
      004D55 74 06            [12] 4860 	mov	a,#0x06
      004D57 F0               [24] 4861 	movx	@dptr,a
      004D58 E4               [12] 4862 	clr	a
      004D59 A3               [24] 4863 	inc	dptr
      004D5A F0               [24] 4864 	movx	@dptr,a
      004D5B 90 08 87         [24] 4865 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0021)
      004D5E F5 F0            [12] 4866 	mov	b,a
      004D60 12 4F 70         [24] 4867 	lcall	_memset
                                   4868 ;	webserver.c:817: memcpy(&arp_packet[39], target_ip, 4);
      004D63 90 08 91         [24] 4869 	mov	dptr,#___memcpy_PARM_2
      004D66 74 62            [12] 4870 	mov	a,#_trial_arp_request_target_ip_10000_148
      004D68 F0               [24] 4871 	movx	@dptr,a
      004D69 74 08            [12] 4872 	mov	a,#(_trial_arp_request_target_ip_10000_148 >> 8)
      004D6B A3               [24] 4873 	inc	dptr
      004D6C F0               [24] 4874 	movx	@dptr,a
      004D6D E4               [12] 4875 	clr	a
      004D6E A3               [24] 4876 	inc	dptr
      004D6F F0               [24] 4877 	movx	@dptr,a
      004D70 90 08 94         [24] 4878 	mov	dptr,#___memcpy_PARM_3
      004D73 74 04            [12] 4879 	mov	a,#0x04
      004D75 F0               [24] 4880 	movx	@dptr,a
      004D76 E4               [12] 4881 	clr	a
      004D77 A3               [24] 4882 	inc	dptr
      004D78 F0               [24] 4883 	movx	@dptr,a
      004D79 90 08 8D         [24] 4884 	mov	dptr,#(_trial_arp_request_arp_packet_10001_149 + 0x0027)
      004D7C F5 F0            [12] 4885 	mov	b,a
      004D7E 12 4E FC         [24] 4886 	lcall	___memcpy
                                   4887 ;	webserver.c:818: transmit_tcp_packet(arp_packet, 43);
      004D81 90 01 8C         [24] 4888 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004D84 74 2B            [12] 4889 	mov	a,#0x2b
      004D86 F0               [24] 4890 	movx	@dptr,a
      004D87 E4               [12] 4891 	clr	a
      004D88 A3               [24] 4892 	inc	dptr
      004D89 F0               [24] 4893 	movx	@dptr,a
      004D8A 90 08 66         [24] 4894 	mov	dptr,#_trial_arp_request_arp_packet_10001_149
      004D8D F5 F0            [12] 4895 	mov	b,a
                                   4896 ;	webserver.c:819: }
      004D8F 02 31 62         [24] 4897 	ljmp	_transmit_tcp_packet
                                   4898 ;------------------------------------------------------------
                                   4899 ;Allocation info for local variables in function 'packetLoop'
                                   4900 ;------------------------------------------------------------
                                   4901 ;plen                      Allocated with name '_packetLoop_plen_10000_151'
                                   4902 ;ethType                   Allocated with name '_packetLoop_ethType_20000_152'
                                   4903 ;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_155'
                                   4904 ;------------------------------------------------------------
                                   4905 ;	webserver.c:832: void packetLoop(void) 
                                   4906 ;	-----------------------------------------
                                   4907 ;	 function packetLoop
                                   4908 ;	-----------------------------------------
      004D92                       4909 _packetLoop:
                                   4910 ;	webserver.c:834: uint16_t plen = packetReceive();
      004D92 12 35 22         [24] 4911 	lcall	_packetReceive
      004D95 AE 82            [24] 4912 	mov	r6, dpl
      004D97 AF 83            [24] 4913 	mov	r7, dph
                                   4914 ;	webserver.c:837: if (plen > 0) {
      004D99 EE               [12] 4915 	mov	a,r6
      004D9A 4F               [12] 4916 	orl	a,r7
      004D9B 70 01            [24] 4917 	jnz	00219$
      004D9D 22               [24] 4918 	ret
      004D9E                       4919 00219$:
                                   4920 ;	webserver.c:838: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
      004D9E 90 01 B3         [24] 4921 	mov	dptr,#(_buffer + 0x000c)
      004DA1 E0               [24] 4922 	movx	a,@dptr
      004DA2 FC               [12] 4923 	mov	r4,a
      004DA3 7D 00            [12] 4924 	mov	r5,#0x00
      004DA5 90 01 B4         [24] 4925 	mov	dptr,#(_buffer + 0x000d)
      004DA8 E0               [24] 4926 	movx	a,@dptr
      004DA9 FB               [12] 4927 	mov	r3,a
      004DAA 7A 00            [12] 4928 	mov	r2,#0x00
      004DAC 42 05            [12] 4929 	orl	ar5,a
      004DAE EA               [12] 4930 	mov	a,r2
      004DAF 42 04            [12] 4931 	orl	ar4,a
                                   4932 ;	webserver.c:839: if (ethType == ETH_TYPE_ARP) {
      004DB1 BD 06 0F         [24] 4933 	cjne	r5,#0x06,00104$
      004DB4 BC 08 0C         [24] 4934 	cjne	r4,#0x08,00104$
                                   4935 ;	webserver.c:840: if (buffer[21] == 0x01) {
      004DB7 90 01 BC         [24] 4936 	mov	dptr,#(_buffer + 0x0015)
      004DBA E0               [24] 4937 	movx	a,@dptr
      004DBB FB               [12] 4938 	mov	r3,a
      004DBC BB 01 03         [24] 4939 	cjne	r3,#0x01,00102$
                                   4940 ;	webserver.c:841: makeArpReply();
                                   4941 ;	webserver.c:843: return;
      004DBF 02 37 4A         [24] 4942 	ljmp	_makeArpReply
      004DC2                       4943 00102$:
      004DC2 22               [24] 4944 	ret
      004DC3                       4945 00104$:
                                   4946 ;	webserver.c:846: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP) {
      004DC3 BD 00 05         [24] 4947 	cjne	r5,#0x00,00224$
      004DC6 BC 08 02         [24] 4948 	cjne	r4,#0x08,00224$
      004DC9 80 01            [24] 4949 	sjmp	00225$
      004DCB                       4950 00224$:
      004DCB 22               [24] 4951 	ret
      004DCC                       4952 00225$:
      004DCC 90 01 BE         [24] 4953 	mov	dptr,#(_buffer + 0x0017)
      004DCF E0               [24] 4954 	movx	a,@dptr
      004DD0 FD               [12] 4955 	mov	r5,a
      004DD1 BD 06 02         [24] 4956 	cjne	r5,#0x06,00226$
      004DD4 80 01            [24] 4957 	sjmp	00227$
      004DD6                       4958 00226$:
      004DD6 22               [24] 4959 	ret
      004DD7                       4960 00227$:
                                   4961 ;	webserver.c:847: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
      004DD7 90 01 D6         [24] 4962 	mov	dptr,#(_buffer + 0x002f)
      004DDA E0               [24] 4963 	movx	a,@dptr
                                   4964 ;	webserver.c:850: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
      004DDB FD               [12] 4965 	mov	r5,a
      004DDC 30 E4 23         [24] 4966 	jnb	acc.4,00106$
      004DDF ED               [12] 4967 	mov	a,r5
      004DE0 30 E0 1F         [24] 4968 	jnb	acc.0,00106$
                                   4969 ;	webserver.c:851: printf("TCP(ACK_FIN) packet detected\n\r");
      004DE3 74 8E            [12] 4970 	mov	a,#___str_9
      004DE5 C0 E0            [24] 4971 	push	acc
      004DE7 74 66            [12] 4972 	mov	a,#(___str_9 >> 8)
      004DE9 C0 E0            [24] 4973 	push	acc
      004DEB 74 80            [12] 4974 	mov	a,#0x80
      004DED C0 E0            [24] 4975 	push	acc
      004DEF 12 52 65         [24] 4976 	lcall	_printf
      004DF2 15 81            [12] 4977 	dec	sp
      004DF4 15 81            [12] 4978 	dec	sp
      004DF6 15 81            [12] 4979 	dec	sp
                                   4980 ;	webserver.c:852: makeTcpAck3(); // Send an acknowledgment
      004DF8 12 3F 71         [24] 4981 	lcall	_makeTcpAck3
                                   4982 ;	webserver.c:853: connectionState = CLOSED;
      004DFB 90 08 DE         [24] 4983 	mov	dptr,#_connectionState
      004DFE 74 04            [12] 4984 	mov	a,#0x04
      004E00 F0               [24] 4985 	movx	@dptr,a
                                   4986 ;	webserver.c:855: return;
      004E01 22               [24] 4987 	ret
      004E02                       4988 00106$:
                                   4989 ;	webserver.c:857: if ((tcpFlags & TCP_FLAG_SYN)) {
      004E02 ED               [12] 4990 	mov	a,r5
      004E03 30 E1 26         [24] 4991 	jnb	acc.1,00109$
                                   4992 ;	webserver.c:858: printf("TCP(SYN) packet detected\n\r");
      004E06 C0 07            [24] 4993 	push	ar7
      004E08 C0 06            [24] 4994 	push	ar6
      004E0A C0 05            [24] 4995 	push	ar5
      004E0C 74 AD            [12] 4996 	mov	a,#___str_10
      004E0E C0 E0            [24] 4997 	push	acc
      004E10 74 66            [12] 4998 	mov	a,#(___str_10 >> 8)
      004E12 C0 E0            [24] 4999 	push	acc
      004E14 74 80            [12] 5000 	mov	a,#0x80
      004E16 C0 E0            [24] 5001 	push	acc
      004E18 12 52 65         [24] 5002 	lcall	_printf
      004E1B 15 81            [12] 5003 	dec	sp
      004E1D 15 81            [12] 5004 	dec	sp
      004E1F 15 81            [12] 5005 	dec	sp
      004E21 D0 05            [24] 5006 	pop	ar5
      004E23 D0 06            [24] 5007 	pop	ar6
      004E25 D0 07            [24] 5008 	pop	ar7
                                   5009 ;	webserver.c:860: connectionState = LISTEN;
      004E27 90 08 DE         [24] 5010 	mov	dptr,#_connectionState
      004E2A E4               [12] 5011 	clr	a
      004E2B F0               [24] 5012 	movx	@dptr,a
      004E2C                       5013 00109$:
                                   5014 ;	webserver.c:863: switch (connectionState) {
      004E2C 90 08 DE         [24] 5015 	mov	dptr,#_connectionState
      004E2F E0               [24] 5016 	movx	a,@dptr
      004E30 FC               [12] 5017 	mov  r4,a
      004E31 24 FA            [12] 5018 	add	a,#0xff - 0x05
      004E33 50 01            [24] 5019 	jnc	00231$
      004E35 22               [24] 5020 	ret
      004E36                       5021 00231$:
      004E36 EC               [12] 5022 	mov	a,r4
      004E37 2C               [12] 5023 	add	a,r4
      004E38 2C               [12] 5024 	add	a,r4
      004E39 90 4E 3D         [24] 5025 	mov	dptr,#00232$
      004E3C 73               [24] 5026 	jmp	@a+dptr
      004E3D                       5027 00232$:
      004E3D 02 4E 4F         [24] 5028 	ljmp	00110$
      004E40 02 4E 70         [24] 5029 	ljmp	00113$
      004E43 02 4E 94         [24] 5030 	ljmp	00116$
      004E46 02 4E CE         [24] 5031 	ljmp	00122$
      004E49 02 4E FB         [24] 5032 	ljmp	00133$
      004E4C 02 4E F2         [24] 5033 	ljmp	00125$
                                   5034 ;	webserver.c:864: case LISTEN:
      004E4F                       5035 00110$:
                                   5036 ;	webserver.c:865: printf("listen\n\r");
      004E4F C0 05            [24] 5037 	push	ar5
      004E51 74 C8            [12] 5038 	mov	a,#___str_11
      004E53 C0 E0            [24] 5039 	push	acc
      004E55 74 66            [12] 5040 	mov	a,#(___str_11 >> 8)
      004E57 C0 E0            [24] 5041 	push	acc
      004E59 74 80            [12] 5042 	mov	a,#0x80
      004E5B C0 E0            [24] 5043 	push	acc
      004E5D 12 52 65         [24] 5044 	lcall	_printf
      004E60 15 81            [12] 5045 	dec	sp
      004E62 15 81            [12] 5046 	dec	sp
      004E64 15 81            [12] 5047 	dec	sp
      004E66 D0 05            [24] 5048 	pop	ar5
                                   5049 ;	webserver.c:866: if (tcpFlags & TCP_FLAG_SYN)
      004E68 ED               [12] 5050 	mov	a,r5
      004E69 20 E1 01         [24] 5051 	jb	acc.1,00233$
      004E6C 22               [24] 5052 	ret
      004E6D                       5053 00233$:
                                   5054 ;	webserver.c:867: makeTcpSynAck();
                                   5055 ;	webserver.c:868: break;
      004E6D 02 45 13         [24] 5056 	ljmp	_makeTcpSynAck
                                   5057 ;	webserver.c:869: case SYN_RECEIVED:
      004E70                       5058 00113$:
                                   5059 ;	webserver.c:870: printf("syn received\n\r");
      004E70 C0 05            [24] 5060 	push	ar5
      004E72 74 D1            [12] 5061 	mov	a,#___str_12
      004E74 C0 E0            [24] 5062 	push	acc
      004E76 74 66            [12] 5063 	mov	a,#(___str_12 >> 8)
      004E78 C0 E0            [24] 5064 	push	acc
      004E7A 74 80            [12] 5065 	mov	a,#0x80
      004E7C C0 E0            [24] 5066 	push	acc
      004E7E 12 52 65         [24] 5067 	lcall	_printf
      004E81 15 81            [12] 5068 	dec	sp
      004E83 15 81            [12] 5069 	dec	sp
      004E85 15 81            [12] 5070 	dec	sp
      004E87 D0 05            [24] 5071 	pop	ar5
                                   5072 ;	webserver.c:871: if (tcpFlags & TCP_FLAG_ACK)
      004E89 ED               [12] 5073 	mov	a,r5
      004E8A 30 E4 6E         [24] 5074 	jnb	acc.4,00133$
                                   5075 ;	webserver.c:872: connectionState = ESTABLISHED;
      004E8D 90 08 DE         [24] 5076 	mov	dptr,#_connectionState
      004E90 74 02            [12] 5077 	mov	a,#0x02
      004E92 F0               [24] 5078 	movx	@dptr,a
                                   5079 ;	webserver.c:873: break;
                                   5080 ;	webserver.c:874: case ESTABLISHED:
      004E93 22               [24] 5081 	ret
      004E94                       5082 00116$:
                                   5083 ;	webserver.c:875: printf("established\n\r");
      004E94 C0 07            [24] 5084 	push	ar7
      004E96 C0 06            [24] 5085 	push	ar6
      004E98 C0 05            [24] 5086 	push	ar5
      004E9A 74 E0            [12] 5087 	mov	a,#___str_13
      004E9C C0 E0            [24] 5088 	push	acc
      004E9E 74 66            [12] 5089 	mov	a,#(___str_13 >> 8)
      004EA0 C0 E0            [24] 5090 	push	acc
      004EA2 74 80            [12] 5091 	mov	a,#0x80
      004EA4 C0 E0            [24] 5092 	push	acc
      004EA6 12 52 65         [24] 5093 	lcall	_printf
      004EA9 15 81            [12] 5094 	dec	sp
      004EAB 15 81            [12] 5095 	dec	sp
      004EAD 15 81            [12] 5096 	dec	sp
      004EAF D0 05            [24] 5097 	pop	ar5
      004EB1 D0 06            [24] 5098 	pop	ar6
      004EB3 D0 07            [24] 5099 	pop	ar7
                                   5100 ;	webserver.c:876: if (tcpFlags & TCP_FLAG_FIN) {
      004EB5 ED               [12] 5101 	mov	a,r5
      004EB6 30 E0 0A         [24] 5102 	jnb	acc.0,00120$
                                   5103 ;	webserver.c:877: makeTcpAck();
      004EB9 12 4A B4         [24] 5104 	lcall	_makeTcpAck
                                   5105 ;	webserver.c:878: connectionState = FIN_WAIT;
      004EBC 90 08 DE         [24] 5106 	mov	dptr,#_connectionState
      004EBF 74 03            [12] 5107 	mov	a,#0x03
      004EC1 F0               [24] 5108 	movx	@dptr,a
      004EC2 22               [24] 5109 	ret
      004EC3                       5110 00120$:
                                   5111 ;	webserver.c:879: } else if (plen > TCP_DATA_START_P) {
      004EC3 C3               [12] 5112 	clr	c
      004EC4 74 36            [12] 5113 	mov	a,#0x36
      004EC6 9E               [12] 5114 	subb	a,r6
      004EC7 E4               [12] 5115 	clr	a
      004EC8 9F               [12] 5116 	subb	a,r7
      004EC9 50 30            [24] 5117 	jnc	00133$
                                   5118 ;	webserver.c:880: makeTcpAck2();
                                   5119 ;	webserver.c:883: break;
                                   5120 ;	webserver.c:884: case FIN_WAIT:
      004ECB 02 42 25         [24] 5121 	ljmp	_makeTcpAck2
      004ECE                       5122 00122$:
                                   5123 ;	webserver.c:885: printf("fin wait\n\r");
      004ECE C0 05            [24] 5124 	push	ar5
      004ED0 74 EE            [12] 5125 	mov	a,#___str_14
      004ED2 C0 E0            [24] 5126 	push	acc
      004ED4 74 66            [12] 5127 	mov	a,#(___str_14 >> 8)
      004ED6 C0 E0            [24] 5128 	push	acc
      004ED8 74 80            [12] 5129 	mov	a,#0x80
      004EDA C0 E0            [24] 5130 	push	acc
      004EDC 12 52 65         [24] 5131 	lcall	_printf
      004EDF 15 81            [12] 5132 	dec	sp
      004EE1 15 81            [12] 5133 	dec	sp
      004EE3 15 81            [12] 5134 	dec	sp
      004EE5 D0 05            [24] 5135 	pop	ar5
                                   5136 ;	webserver.c:886: if (tcpFlags & TCP_FLAG_ACK)
      004EE7 ED               [12] 5137 	mov	a,r5
      004EE8 30 E4 10         [24] 5138 	jnb	acc.4,00133$
                                   5139 ;	webserver.c:887: connectionState = CLOSED;
      004EEB 90 08 DE         [24] 5140 	mov	dptr,#_connectionState
      004EEE 74 04            [12] 5141 	mov	a,#0x04
      004EF0 F0               [24] 5142 	movx	@dptr,a
                                   5143 ;	webserver.c:888: break;
                                   5144 ;	webserver.c:889: case ACK_SENT:
      004EF1 22               [24] 5145 	ret
      004EF2                       5146 00125$:
                                   5147 ;	webserver.c:890: makeTcpFinPshAck();
      004EF2 12 3D 0C         [24] 5148 	lcall	_makeTcpFinPshAck
                                   5149 ;	webserver.c:891: connectionState = CLOSED;
      004EF5 90 08 DE         [24] 5150 	mov	dptr,#_connectionState
      004EF8 74 04            [12] 5151 	mov	a,#0x04
      004EFA F0               [24] 5152 	movx	@dptr,a
                                   5153 ;	webserver.c:895: }
      004EFB                       5154 00133$:
                                   5155 ;	webserver.c:898: }
      004EFB 22               [24] 5156 	ret
                                   5157 	.area CSEG    (CODE)
                                   5158 	.area CONST   (CODE)
                                   5159 	.area CONST   (CODE)
      006054                       5160 ___str_0:
      006054 74 72 69 61 6C 61 72  5161 	.ascii "trialarpreply"
             70 72 65 70 6C 79
      006061 0A                    5162 	.db 0x0a
      006062 0D                    5163 	.db 0x0d
      006063 00                    5164 	.db 0x00
                                   5165 	.area CSEG    (CODE)
                                   5166 	.area CONST   (CODE)
      006064                       5167 ___str_1:
      006064 48 54 54 50 2F 31 2E  5168 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      006073 0D                    5169 	.db 0x0d
      006074 0A                    5170 	.db 0x0a
      006075 43 6F 6E 74 65 6E 74  5171 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      00608C 0D                    5172 	.db 0x0d
      00608D 0A                    5173 	.db 0x0a
      00608E 43 6F 6E 74 65 6E 74  5174 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      0060A1 0D                    5175 	.db 0x0d
      0060A2 0A                    5176 	.db 0x0a
      0060A3 0D                    5177 	.db 0x0d
      0060A4 0A                    5178 	.db 0x0a
      0060A5 3C 21 44 4F 43 54 59  5179 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      0060E1 6D 65 74 61 20 6E 61  5180 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      00611D 61 6C 65 3D 31 2E 30  5181 	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
             27 3E 3C 74 69 74 6C
             65 3E 45 74 68 65 72
             6E 65 74 20 57 65 62
             20 53 65 72 76 65 72
             3C 2F 74 69 74 6C 65
             3E 3C 73 74 79 6C 65
             3E 62 6F 64 79 20 7B
             66 6F 6E 74
      006159 2D 66 61 6D 69 6C 79  5182 	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
             3A 20 41 72 69 61 6C
             2C 20 73 61 6E 73 2D
             73 65 72 69 66 3B 20
             62 61 63 6B 67 72 6F
             75 6E 64 2D 63 6F 6C
             6F 72 3A 20 23 66 30
             66 30 66 30 3B 20 74
             65 78 74 2D
      006195 61 6C 69 67 6E 3A 20  5183 	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
             63 65 6E 74 65 72 3B
             20 70 61 64 64 69 6E
             67 3A 20 32 30 70 78
             3B 7D 68 31 20 7B 63
             6F 6C 6F 72 3A 20 23
             33 33 33 33 33 33 3B
             7D 70 20 7B 63 6F 6C
             6F 72 3A 20
      0061D1 23 36 36 36 36 36 36  5184 	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
             3B 7D 3C 2F 73 74 79
             6C 65 3E 3C 2F 68 65
             61 64 3E 3C 62 6F 64
             79 3E 3C 68 31 3E 45
             53 44 20 46 41 4C 4C
             20 32 30 32 34 3C 2F
             68 31 3E 3C 70 3E 45
             74 68 65 72
      00620D 6E 65 74 20 62 61 73  5185 	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
             65 64 20 57 65 62 20
             53 65 72 76 65 72 20
             66 6F 72 20 45 6D 62
             65 64 64 65 64 20 53
             79 73 74 65 6D 73 20
             2D 20 4E 41 44 47 49
             52 20 61 6E 64 20 4B
             4F 50 50 41
      006249 20 6D 61 64 65 20 69  5186 	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
             74 74 74 74 2C 20 6C
             65 73 73 67 6F 6F 6F
             6F 21 21 21 20 54 68
             69 73 20 77 65 62 20
             73 65 72 76 65 72 20
             73 68 6F 77 63 61 73
             65 73 20 74 68 65 20
             70 6F 77 65
      006285 72 20 6F 66 20 6D 69  5187 	.ascii "r of microcontrollers and Ethernet communication. By leverag"
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 61 6E 64 20 45 74
             68 65 72 6E 65 74 20
             63 6F 6D 6D 75 6E 69
             63 61 74 69 6F 6E 2E
             20 42 79 20 6C 65 76
             65 72 61 67
      0062C1 69 6E 67 20 74 68 65  5188 	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
             20 41 54 38 39 43 35
             31 52 43 32 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 20
             61 6E 64 20 74 68 65
             20 45 4E 43 32 38 4A
             36 30 20 45 74 68 65
             72 6E 65 74
      0062FD 20 63 6F 6E 74 72 6F  5189 	.ascii " controller, we can serve dynamic web pages and control embe"
             6C 6C 65 72 2C 20 77
             65 20 63 61 6E 20 73
             65 72 76 65 20 64 79
             6E 61 6D 69 63 20 77
             65 62 20 70 61 67 65
             73 20 61 6E 64 20 63
             6F 6E 74 72 6F 6C 20
             65 6D 62 65
      006339 64 64 65 64 20 64 65  5190 	.ascii "dded devices remotely. The server allows seamless communicat"
             76 69 63 65 73 20 72
             65 6D 6F 74 65 6C 79
             2E 20 54 68 65 20 73
             65 72 76 65 72 20 61
             6C 6C 6F 77 73 20 73
             65 61 6D 6C 65 73 73
             20 63 6F 6D 6D 75 6E
             69 63 61 74
      006375 69 6F 6E 20 62 65 74  5191 	.ascii "ion between hardware and software, enabling real-time data e"
             77 65 65 6E 20 68 61
             72 64 77 61 72 65 20
             61 6E 64 20 73 6F 66
             74 77 61 72 65 2C 20
             65 6E 61 62 6C 69 6E
             67 20 72 65 61 6C 2D
             74 69 6D 65 20 64 61
             74 61 20 65
      0063B1 78 63 68 61 6E 67 65  5192 	.ascii "xchange across the network.</p></body></html>"
             20 61 63 72 6F 73 73
             20 74 68 65 20 6E 65
             74 77 6F 72 6B 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      0063DE 00                    5193 	.db 0x00
                                   5194 	.area CSEG    (CODE)
                                   5195 	.area CONST   (CODE)
      0063DF                       5196 ___str_2:
      0063DF 6D 61 6B 65 54 63 70  5197 	.ascii "makeTcpFinPshAck"
             46 69 6E 50 73 68 41
             63 6B
      0063EF 0A                    5198 	.db 0x0a
      0063F0 0D                    5199 	.db 0x0d
      0063F1 00                    5200 	.db 0x00
                                   5201 	.area CSEG    (CODE)
                                   5202 	.area CONST   (CODE)
      0063F2                       5203 ___str_3:
      0063F2 6D 61 6B 65 54 63 70  5204 	.ascii "makeTcpAck"
             41 63 6B
      0063FC 0A                    5205 	.db 0x0a
      0063FD 0D                    5206 	.db 0x0d
      0063FE 00                    5207 	.db 0x00
                                   5208 	.area CSEG    (CODE)
                                   5209 	.area CONST   (CODE)
      0063FF                       5210 ___str_4:
      0063FF 6D 61 6B 65 54 63 70  5211 	.ascii "makeTcpSynAck"
             53 79 6E 41 63 6B
      00640C 0A                    5212 	.db 0x0a
      00640D 0D                    5213 	.db 0x0d
      00640E 00                    5214 	.db 0x00
                                   5215 	.area CSEG    (CODE)
                                   5216 	.area CONST   (CODE)
      00640F                       5217 ___str_5:
      00640F 48 54 54 50 2F 31 2E  5218 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      00641E 0D                    5219 	.db 0x0d
      00641F 0A                    5220 	.db 0x0a
      006420 43 6F 6E 74 65 6E 74  5221 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      006437 0D                    5222 	.db 0x0d
      006438 0A                    5223 	.db 0x0a
      006439 43 6F 6E 74 65 6E 74  5224 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      00644C 0D                    5225 	.db 0x0d
      00644D 0A                    5226 	.db 0x0a
      00644E 0D                    5227 	.db 0x0d
      00644F 0A                    5228 	.db 0x0a
      006450 3C 21 44 4F 43 54 59  5229 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      00648C 6D 65 74 61 20 6E 61  5230 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      0064C8 61 6C 65 3D 31 2E 30  5231 	.ascii "ale=1.0'><title>Electronics Tree</title><style>body {font-fa"
             27 3E 3C 74 69 74 6C
             65 3E 45 6C 65 63 74
             72 6F 6E 69 63 73 20
             54 72 65 65 3C 2F 74
             69 74 6C 65 3E 3C 73
             74 79 6C 65 3E 62 6F
             64 79 20 7B 66 6F 6E
             74 2D 66 61
      006504 6D 69 6C 79 3A 20 41  5232 	.ascii "mily: Arial, sans-serif; background-color: #f0f0f0; text-ali"
             72 69 61 6C 2C 20 73
             61 6E 73 2D 73 65 72
             69 66 3B 20 62 61 63
             6B 67 72 6F 75 6E 64
             2D 63 6F 6C 6F 72 3A
             20 23 66 30 66 30 66
             30 3B 20 74 65 78 74
             2D 61 6C 69
      006540 67 6E 3A 20 63 65 6E  5233 	.ascii "gn: center; padding: 20px;}h1 {color: #333333;}p {color: #66"
             74 65 72 3B 20 70 61
             64 64 69 6E 67 3A 20
             32 30 70 78 3B 7D 68
             31 20 7B 63 6F 6C 6F
             72 3A 20 23 33 33 33
             33 33 33 3B 7D 70 20
             7B 63 6F 6C 6F 72 3A
             20 23 36 36
      00657C 36 36 36 36 3B 7D 3C  5234 	.ascii "6666;}</style></head><body><h1>ESD FALL 2024</h1><p>Welcome "
             2F 73 74 79 6C 65 3E
             3C 2F 68 65 61 64 3E
             3C 62 6F 64 79 3E 3C
             68 31 3E 45 53 44 20
             46 41 4C 4C 20 32 30
             32 34 3C 2F 68 31 3E
             3C 70 3E 57 65 6C 63
             6F 6D 65 20
      0065B8 74 6F 20 45 6C 65 63  5235 	.ascii "to Electronics Tree, where our name isn't just a title"
             74 72 6F 6E 69 63 73
             20 54 72 65 65 2C 20
             77 68 65 72 65 20 6F
             75 72 20 6E 61 6D 65
             20 69 73 6E 27 74 20
             6A 75 73 74 20 61 20
             74 69 74 6C 65
      0065EE EF                    5236 	.db 0xef
      0065EF BF                    5237 	.db 0xbf
      0065F0 BD                    5238 	.db 0xbd
      0065F1 69 74 27 73 20 61 20  5239 	.ascii "it's a commitment to practical growth in your knowledge and "
             63 6F 6D 6D 69 74 6D
             65 6E 74 20 74 6F 20
             70 72 61 63 74 69 63
             61 6C 20 67 72 6F 77
             74 68 20 69 6E 20 79
             6F 75 72 20 6B 6E 6F
             77 6C 65 64 67 65 20
             61 6E 64 20
      00662D 73 6B 69 6C 6C 73 2E  5240 	.ascii "skills. Think of it like planting a seed.</p></body></html>"
             20 54 68 69 6E 6B 20
             6F 66 20 69 74 20 6C
             69 6B 65 20 70 6C 61
             6E 74 69 6E 67 20 61
             20 73 65 65 64 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      006668 00                    5241 	.db 0x00
                                   5242 	.area CSEG    (CODE)
                                   5243 	.area CONST   (CODE)
      006669                       5244 ___str_6:
      006669 68 74 74 70 72 65 73  5245 	.ascii "httpresponse"
             70 6F 6E 73 65
      006675 0A                    5246 	.db 0x0a
      006676 0D                    5247 	.db 0x0d
      006677 00                    5248 	.db 0x00
                                   5249 	.area CSEG    (CODE)
                                   5250 	.area CONST   (CODE)
      006678                       5251 ___str_7:
      006678 74 63 70 61 63 6B     5252 	.ascii "tcpack"
      00667E 0A                    5253 	.db 0x0a
      00667F 0D                    5254 	.db 0x0d
      006680 00                    5255 	.db 0x00
                                   5256 	.area CSEG    (CODE)
                                   5257 	.area CONST   (CODE)
      006681                       5258 ___str_8:
      006681 72 65 66 72 65 73 68  5259 	.ascii "refresharp"
             61 72 70
      00668B 0A                    5260 	.db 0x0a
      00668C 0D                    5261 	.db 0x0d
      00668D 00                    5262 	.db 0x00
                                   5263 	.area CSEG    (CODE)
                                   5264 	.area CONST   (CODE)
      00668E                       5265 ___str_9:
      00668E 54 43 50 28 41 43 4B  5266 	.ascii "TCP(ACK_FIN) packet detected"
             5F 46 49 4E 29 20 70
             61 63 6B 65 74 20 64
             65 74 65 63 74 65 64
      0066AA 0A                    5267 	.db 0x0a
      0066AB 0D                    5268 	.db 0x0d
      0066AC 00                    5269 	.db 0x00
                                   5270 	.area CSEG    (CODE)
                                   5271 	.area CONST   (CODE)
      0066AD                       5272 ___str_10:
      0066AD 54 43 50 28 53 59 4E  5273 	.ascii "TCP(SYN) packet detected"
             29 20 70 61 63 6B 65
             74 20 64 65 74 65 63
             74 65 64
      0066C5 0A                    5274 	.db 0x0a
      0066C6 0D                    5275 	.db 0x0d
      0066C7 00                    5276 	.db 0x00
                                   5277 	.area CSEG    (CODE)
                                   5278 	.area CONST   (CODE)
      0066C8                       5279 ___str_11:
      0066C8 6C 69 73 74 65 6E     5280 	.ascii "listen"
      0066CE 0A                    5281 	.db 0x0a
      0066CF 0D                    5282 	.db 0x0d
      0066D0 00                    5283 	.db 0x00
                                   5284 	.area CSEG    (CODE)
                                   5285 	.area CONST   (CODE)
      0066D1                       5286 ___str_12:
      0066D1 73 79 6E 20 72 65 63  5287 	.ascii "syn received"
             65 69 76 65 64
      0066DD 0A                    5288 	.db 0x0a
      0066DE 0D                    5289 	.db 0x0d
      0066DF 00                    5290 	.db 0x00
                                   5291 	.area CSEG    (CODE)
                                   5292 	.area CONST   (CODE)
      0066E0                       5293 ___str_13:
      0066E0 65 73 74 61 62 6C 69  5294 	.ascii "established"
             73 68 65 64
      0066EB 0A                    5295 	.db 0x0a
      0066EC 0D                    5296 	.db 0x0d
      0066ED 00                    5297 	.db 0x00
                                   5298 	.area CSEG    (CODE)
                                   5299 	.area CONST   (CODE)
      0066EE                       5300 ___str_14:
      0066EE 66 69 6E 20 77 61 69  5301 	.ascii "fin wait"
             74
      0066F6 0A                    5302 	.db 0x0a
      0066F7 0D                    5303 	.db 0x0d
      0066F8 00                    5304 	.db 0x00
                                   5305 	.area CSEG    (CODE)
                                   5306 	.area XINIT   (CODE)
      006704                       5307 __xinit__connectionState:
      006704 00                    5308 	.db #0x00	; 0
                                   5309 	.area CABS    (ABS,CODE)
