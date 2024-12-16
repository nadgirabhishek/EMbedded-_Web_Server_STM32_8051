                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module trial_webserver
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _makeTcpFinPshAck
                                     12 	.globl _makeTcpAck
                                     13 	.globl _makeTcpSynAck
                                     14 	.globl _makeTcpAck2
                                     15 	.globl _makeTcpAck3
                                     16 	.globl _makeArpReply
                                     17 	.globl _spi_control_write
                                     18 	.globl _eth_spi_read
                                     19 	.globl _spi_buffer_read
                                     20 	.globl _mac_spi_read
                                     21 	.globl _calculateTcpChecksum
                                     22 	.globl _calculateIPChecksum
                                     23 	.globl _transmit_tcp_packet
                                     24 	.globl _printf
                                     25 	.globl ___memcpy
                                     26 	.globl _strlen
                                     27 	.globl _memmove
                                     28 	.globl _TF1
                                     29 	.globl _TR1
                                     30 	.globl _TF0
                                     31 	.globl _TR0
                                     32 	.globl _IE1
                                     33 	.globl _IT1
                                     34 	.globl _IE0
                                     35 	.globl _IT0
                                     36 	.globl _SM0
                                     37 	.globl _SM1
                                     38 	.globl _SM2
                                     39 	.globl _REN
                                     40 	.globl _TB8
                                     41 	.globl _RB8
                                     42 	.globl _TI
                                     43 	.globl _RI
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD0
                                     59 	.globl _TXD
                                     60 	.globl _RXD0
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _PS
                                     95 	.globl _PT1
                                     96 	.globl _PX1
                                     97 	.globl _PT0
                                     98 	.globl _PX0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _BREG_F7
                                    106 	.globl _BREG_F6
                                    107 	.globl _BREG_F5
                                    108 	.globl _BREG_F4
                                    109 	.globl _BREG_F3
                                    110 	.globl _BREG_F2
                                    111 	.globl _BREG_F1
                                    112 	.globl _BREG_F0
                                    113 	.globl _P5_7
                                    114 	.globl _P5_6
                                    115 	.globl _P5_5
                                    116 	.globl _P5_4
                                    117 	.globl _P5_3
                                    118 	.globl _P5_2
                                    119 	.globl _P5_1
                                    120 	.globl _P5_0
                                    121 	.globl _P4_7
                                    122 	.globl _P4_6
                                    123 	.globl _P4_5
                                    124 	.globl _P4_4
                                    125 	.globl _P4_3
                                    126 	.globl _P4_2
                                    127 	.globl _P4_1
                                    128 	.globl _P4_0
                                    129 	.globl _PX0L
                                    130 	.globl _PT0L
                                    131 	.globl _PX1L
                                    132 	.globl _PT1L
                                    133 	.globl _PSL
                                    134 	.globl _PT2L
                                    135 	.globl _PPCL
                                    136 	.globl _EC
                                    137 	.globl _CCF0
                                    138 	.globl _CCF1
                                    139 	.globl _CCF2
                                    140 	.globl _CCF3
                                    141 	.globl _CCF4
                                    142 	.globl _CR
                                    143 	.globl _CF
                                    144 	.globl _TF2
                                    145 	.globl _EXF2
                                    146 	.globl _RCLK
                                    147 	.globl _TCLK
                                    148 	.globl _EXEN2
                                    149 	.globl _TR2
                                    150 	.globl _C_T2
                                    151 	.globl _CP_RL2
                                    152 	.globl _T2CON_7
                                    153 	.globl _T2CON_6
                                    154 	.globl _T2CON_5
                                    155 	.globl _T2CON_4
                                    156 	.globl _T2CON_3
                                    157 	.globl _T2CON_2
                                    158 	.globl _T2CON_1
                                    159 	.globl _T2CON_0
                                    160 	.globl _PT2
                                    161 	.globl _ET2
                                    162 	.globl _TMOD
                                    163 	.globl _TL1
                                    164 	.globl _TL0
                                    165 	.globl _TH1
                                    166 	.globl _TH0
                                    167 	.globl _TCON
                                    168 	.globl _SP
                                    169 	.globl _SCON
                                    170 	.globl _SBUF0
                                    171 	.globl _SBUF
                                    172 	.globl _PSW
                                    173 	.globl _PCON
                                    174 	.globl _P3
                                    175 	.globl _P2
                                    176 	.globl _P1
                                    177 	.globl _P0
                                    178 	.globl _IP
                                    179 	.globl _IE
                                    180 	.globl _DP0L
                                    181 	.globl _DPL
                                    182 	.globl _DP0H
                                    183 	.globl _DPH
                                    184 	.globl _B
                                    185 	.globl _ACC
                                    186 	.globl _EECON
                                    187 	.globl _KBF
                                    188 	.globl _KBE
                                    189 	.globl _KBLS
                                    190 	.globl _BRL
                                    191 	.globl _BDRCON
                                    192 	.globl _T2MOD
                                    193 	.globl _SPDAT
                                    194 	.globl _SPSTA
                                    195 	.globl _SPCON
                                    196 	.globl _SADEN
                                    197 	.globl _SADDR
                                    198 	.globl _WDTPRG
                                    199 	.globl _WDTRST
                                    200 	.globl _P5
                                    201 	.globl _P4
                                    202 	.globl _IPH1
                                    203 	.globl _IPL1
                                    204 	.globl _IPH0
                                    205 	.globl _IPL0
                                    206 	.globl _IEN1
                                    207 	.globl _IEN0
                                    208 	.globl _CMOD
                                    209 	.globl _CL
                                    210 	.globl _CH
                                    211 	.globl _CCON
                                    212 	.globl _CCAPM4
                                    213 	.globl _CCAPM3
                                    214 	.globl _CCAPM2
                                    215 	.globl _CCAPM1
                                    216 	.globl _CCAPM0
                                    217 	.globl _CCAP4L
                                    218 	.globl _CCAP3L
                                    219 	.globl _CCAP2L
                                    220 	.globl _CCAP1L
                                    221 	.globl _CCAP0L
                                    222 	.globl _CCAP4H
                                    223 	.globl _CCAP3H
                                    224 	.globl _CCAP2H
                                    225 	.globl _CCAP1H
                                    226 	.globl _CCAP0H
                                    227 	.globl _CKCON1
                                    228 	.globl _CKCON0
                                    229 	.globl _CKRL
                                    230 	.globl _AUXR1
                                    231 	.globl _AUXR
                                    232 	.globl _TH2
                                    233 	.globl _TL2
                                    234 	.globl _RCAP2H
                                    235 	.globl _RCAP2L
                                    236 	.globl _T2CON
                                    237 	.globl _connectionState
                                    238 	.globl _buffer
                                    239 	.globl _prevAck
                                    240 	.globl _prevSeq
                                    241 	.globl _packetReceive
                                    242 	.globl _packetLoop
                                    243 ;--------------------------------------------------------
                                    244 ; special function registers
                                    245 ;--------------------------------------------------------
                                    246 	.area RSEG    (ABS,DATA)
      000000                        247 	.org 0x0000
                           0000C8   248 _T2CON	=	0x00c8
                           0000CA   249 _RCAP2L	=	0x00ca
                           0000CB   250 _RCAP2H	=	0x00cb
                           0000CC   251 _TL2	=	0x00cc
                           0000CD   252 _TH2	=	0x00cd
                           00008E   253 _AUXR	=	0x008e
                           0000A2   254 _AUXR1	=	0x00a2
                           000097   255 _CKRL	=	0x0097
                           00008F   256 _CKCON0	=	0x008f
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 _CCAP0H	=	0x00fa
                           0000FB   259 _CCAP1H	=	0x00fb
                           0000FC   260 _CCAP2H	=	0x00fc
                           0000FD   261 _CCAP3H	=	0x00fd
                           0000FE   262 _CCAP4H	=	0x00fe
                           0000EA   263 _CCAP0L	=	0x00ea
                           0000EB   264 _CCAP1L	=	0x00eb
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 _CCAP3L	=	0x00ed
                           0000EE   267 _CCAP4L	=	0x00ee
                           0000DA   268 _CCAPM0	=	0x00da
                           0000DB   269 _CCAPM1	=	0x00db
                           0000DC   270 _CCAPM2	=	0x00dc
                           0000DD   271 _CCAPM3	=	0x00dd
                           0000DE   272 _CCAPM4	=	0x00de
                           0000D8   273 _CCON	=	0x00d8
                           0000F9   274 _CH	=	0x00f9
                           0000E9   275 _CL	=	0x00e9
                           0000D9   276 _CMOD	=	0x00d9
                           0000A8   277 _IEN0	=	0x00a8
                           0000B1   278 _IEN1	=	0x00b1
                           0000B8   279 _IPL0	=	0x00b8
                           0000B7   280 _IPH0	=	0x00b7
                           0000B2   281 _IPL1	=	0x00b2
                           0000B3   282 _IPH1	=	0x00b3
                           0000C0   283 _P4	=	0x00c0
                           0000E8   284 _P5	=	0x00e8
                           0000A6   285 _WDTRST	=	0x00a6
                           0000A7   286 _WDTPRG	=	0x00a7
                           0000A9   287 _SADDR	=	0x00a9
                           0000B9   288 _SADEN	=	0x00b9
                           0000C3   289 _SPCON	=	0x00c3
                           0000C4   290 _SPSTA	=	0x00c4
                           0000C5   291 _SPDAT	=	0x00c5
                           0000C9   292 _T2MOD	=	0x00c9
                           00009B   293 _BDRCON	=	0x009b
                           00009A   294 _BRL	=	0x009a
                           00009C   295 _KBLS	=	0x009c
                           00009D   296 _KBE	=	0x009d
                           00009E   297 _KBF	=	0x009e
                           0000D2   298 _EECON	=	0x00d2
                           0000E0   299 _ACC	=	0x00e0
                           0000F0   300 _B	=	0x00f0
                           000083   301 _DPH	=	0x0083
                           000083   302 _DP0H	=	0x0083
                           000082   303 _DPL	=	0x0082
                           000082   304 _DP0L	=	0x0082
                           0000A8   305 _IE	=	0x00a8
                           0000B8   306 _IP	=	0x00b8
                           000080   307 _P0	=	0x0080
                           000090   308 _P1	=	0x0090
                           0000A0   309 _P2	=	0x00a0
                           0000B0   310 _P3	=	0x00b0
                           000087   311 _PCON	=	0x0087
                           0000D0   312 _PSW	=	0x00d0
                           000099   313 _SBUF	=	0x0099
                           000099   314 _SBUF0	=	0x0099
                           000098   315 _SCON	=	0x0098
                           000081   316 _SP	=	0x0081
                           000088   317 _TCON	=	0x0088
                           00008C   318 _TH0	=	0x008c
                           00008D   319 _TH1	=	0x008d
                           00008A   320 _TL0	=	0x008a
                           00008B   321 _TL1	=	0x008b
                           000089   322 _TMOD	=	0x0089
                                    323 ;--------------------------------------------------------
                                    324 ; special function bits
                                    325 ;--------------------------------------------------------
                                    326 	.area RSEG    (ABS,DATA)
      000000                        327 	.org 0x0000
                           0000AD   328 _ET2	=	0x00ad
                           0000BD   329 _PT2	=	0x00bd
                           0000C8   330 _T2CON_0	=	0x00c8
                           0000C9   331 _T2CON_1	=	0x00c9
                           0000CA   332 _T2CON_2	=	0x00ca
                           0000CB   333 _T2CON_3	=	0x00cb
                           0000CC   334 _T2CON_4	=	0x00cc
                           0000CD   335 _T2CON_5	=	0x00cd
                           0000CE   336 _T2CON_6	=	0x00ce
                           0000CF   337 _T2CON_7	=	0x00cf
                           0000C8   338 _CP_RL2	=	0x00c8
                           0000C9   339 _C_T2	=	0x00c9
                           0000CA   340 _TR2	=	0x00ca
                           0000CB   341 _EXEN2	=	0x00cb
                           0000CC   342 _TCLK	=	0x00cc
                           0000CD   343 _RCLK	=	0x00cd
                           0000CE   344 _EXF2	=	0x00ce
                           0000CF   345 _TF2	=	0x00cf
                           0000DF   346 _CF	=	0x00df
                           0000DE   347 _CR	=	0x00de
                           0000DC   348 _CCF4	=	0x00dc
                           0000DB   349 _CCF3	=	0x00db
                           0000DA   350 _CCF2	=	0x00da
                           0000D9   351 _CCF1	=	0x00d9
                           0000D8   352 _CCF0	=	0x00d8
                           0000AE   353 _EC	=	0x00ae
                           0000BE   354 _PPCL	=	0x00be
                           0000BD   355 _PT2L	=	0x00bd
                           0000BC   356 _PSL	=	0x00bc
                           0000BB   357 _PT1L	=	0x00bb
                           0000BA   358 _PX1L	=	0x00ba
                           0000B9   359 _PT0L	=	0x00b9
                           0000B8   360 _PX0L	=	0x00b8
                           0000C0   361 _P4_0	=	0x00c0
                           0000C1   362 _P4_1	=	0x00c1
                           0000C2   363 _P4_2	=	0x00c2
                           0000C3   364 _P4_3	=	0x00c3
                           0000C4   365 _P4_4	=	0x00c4
                           0000C5   366 _P4_5	=	0x00c5
                           0000C6   367 _P4_6	=	0x00c6
                           0000C7   368 _P4_7	=	0x00c7
                           0000E8   369 _P5_0	=	0x00e8
                           0000E9   370 _P5_1	=	0x00e9
                           0000EA   371 _P5_2	=	0x00ea
                           0000EB   372 _P5_3	=	0x00eb
                           0000EC   373 _P5_4	=	0x00ec
                           0000ED   374 _P5_5	=	0x00ed
                           0000EE   375 _P5_6	=	0x00ee
                           0000EF   376 _P5_7	=	0x00ef
                           0000F0   377 _BREG_F0	=	0x00f0
                           0000F1   378 _BREG_F1	=	0x00f1
                           0000F2   379 _BREG_F2	=	0x00f2
                           0000F3   380 _BREG_F3	=	0x00f3
                           0000F4   381 _BREG_F4	=	0x00f4
                           0000F5   382 _BREG_F5	=	0x00f5
                           0000F6   383 _BREG_F6	=	0x00f6
                           0000F7   384 _BREG_F7	=	0x00f7
                           0000A8   385 _EX0	=	0x00a8
                           0000A9   386 _ET0	=	0x00a9
                           0000AA   387 _EX1	=	0x00aa
                           0000AB   388 _ET1	=	0x00ab
                           0000AC   389 _ES	=	0x00ac
                           0000AF   390 _EA	=	0x00af
                           0000B8   391 _PX0	=	0x00b8
                           0000B9   392 _PT0	=	0x00b9
                           0000BA   393 _PX1	=	0x00ba
                           0000BB   394 _PT1	=	0x00bb
                           0000BC   395 _PS	=	0x00bc
                           000080   396 _P0_0	=	0x0080
                           000081   397 _P0_1	=	0x0081
                           000082   398 _P0_2	=	0x0082
                           000083   399 _P0_3	=	0x0083
                           000084   400 _P0_4	=	0x0084
                           000085   401 _P0_5	=	0x0085
                           000086   402 _P0_6	=	0x0086
                           000087   403 _P0_7	=	0x0087
                           000090   404 _P1_0	=	0x0090
                           000091   405 _P1_1	=	0x0091
                           000092   406 _P1_2	=	0x0092
                           000093   407 _P1_3	=	0x0093
                           000094   408 _P1_4	=	0x0094
                           000095   409 _P1_5	=	0x0095
                           000096   410 _P1_6	=	0x0096
                           000097   411 _P1_7	=	0x0097
                           0000A0   412 _P2_0	=	0x00a0
                           0000A1   413 _P2_1	=	0x00a1
                           0000A2   414 _P2_2	=	0x00a2
                           0000A3   415 _P2_3	=	0x00a3
                           0000A4   416 _P2_4	=	0x00a4
                           0000A5   417 _P2_5	=	0x00a5
                           0000A6   418 _P2_6	=	0x00a6
                           0000A7   419 _P2_7	=	0x00a7
                           0000B0   420 _P3_0	=	0x00b0
                           0000B1   421 _P3_1	=	0x00b1
                           0000B2   422 _P3_2	=	0x00b2
                           0000B3   423 _P3_3	=	0x00b3
                           0000B4   424 _P3_4	=	0x00b4
                           0000B5   425 _P3_5	=	0x00b5
                           0000B6   426 _P3_6	=	0x00b6
                           0000B7   427 _P3_7	=	0x00b7
                           0000B0   428 _RXD	=	0x00b0
                           0000B0   429 _RXD0	=	0x00b0
                           0000B1   430 _TXD	=	0x00b1
                           0000B1   431 _TXD0	=	0x00b1
                           0000B2   432 _INT0	=	0x00b2
                           0000B3   433 _INT1	=	0x00b3
                           0000B4   434 _T0	=	0x00b4
                           0000B5   435 _T1	=	0x00b5
                           0000B6   436 _WR	=	0x00b6
                           0000B7   437 _RD	=	0x00b7
                           0000D0   438 _P	=	0x00d0
                           0000D1   439 _F1	=	0x00d1
                           0000D2   440 _OV	=	0x00d2
                           0000D3   441 _RS0	=	0x00d3
                           0000D4   442 _RS1	=	0x00d4
                           0000D5   443 _F0	=	0x00d5
                           0000D6   444 _AC	=	0x00d6
                           0000D7   445 _CY	=	0x00d7
                           000098   446 _RI	=	0x0098
                           000099   447 _TI	=	0x0099
                           00009A   448 _RB8	=	0x009a
                           00009B   449 _TB8	=	0x009b
                           00009C   450 _REN	=	0x009c
                           00009D   451 _SM2	=	0x009d
                           00009E   452 _SM1	=	0x009e
                           00009F   453 _SM0	=	0x009f
                           000088   454 _IT0	=	0x0088
                           000089   455 _IE0	=	0x0089
                           00008A   456 _IT1	=	0x008a
                           00008B   457 _IE1	=	0x008b
                           00008C   458 _TR0	=	0x008c
                           00008D   459 _TF0	=	0x008d
                           00008E   460 _TR1	=	0x008e
                           00008F   461 _TF1	=	0x008f
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable register banks
                                    464 ;--------------------------------------------------------
                                    465 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        466 	.ds 8
                                    467 ;--------------------------------------------------------
                                    468 ; internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area DSEG    (DATA)
      000022                        471 _makeTcpAck3_sloc0_1_0:
      000022                        472 	.ds 4
      000026                        473 _makeTcpAck2_sloc0_1_0:
      000026                        474 	.ds 2
      000028                        475 _makeTcpAck2_sloc1_1_0:
      000028                        476 	.ds 4
      00002C                        477 _makeTcpAck2_sloc2_1_0:
      00002C                        478 	.ds 4
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable items in internal ram
                                    481 ;--------------------------------------------------------
                                    482 ;--------------------------------------------------------
                                    483 ; indirectly addressable internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area ISEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; absolute internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area IABS    (ABS,DATA)
                                    490 	.area IABS    (ABS,DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; bit data
                                    493 ;--------------------------------------------------------
                                    494 	.area BSEG    (BIT)
                                    495 ;--------------------------------------------------------
                                    496 ; paged external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area PSEG    (PAG,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; uninitialized external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XSEG    (XDATA)
      0009B1                        503 _prevSeq::
      0009B1                        504 	.ds 4
      0009B5                        505 _prevAck::
      0009B5                        506 	.ds 4
      0009B9                        507 _buffer::
      0009B9                        508 	.ds 1500
      000F95                        509 _makeArpReply_device_mac_10000_120:
      000F95                        510 	.ds 6
      000F9B                        511 _makeArpReply_target_mac_10000_120:
      000F9B                        512 	.ds 6
      000FA1                        513 _makeArpReply_device_ip_10000_120:
      000FA1                        514 	.ds 4
      000FA5                        515 _makeArpReply_target_ip_10000_120:
      000FA5                        516 	.ds 4
      000FA9                        517 _makeTcpAck3_device_mac_10000_121:
      000FA9                        518 	.ds 6
      000FAF                        519 _makeTcpAck3_target_mac_10000_121:
      000FAF                        520 	.ds 6
      000FB5                        521 _makeTcpAck3_device_ip_10000_121:
      000FB5                        522 	.ds 4
      000FB9                        523 _makeTcpAck3_target_ip_10000_121:
      000FB9                        524 	.ds 4
      000FBD                        525 _makeTcpAck2_device_mac_10000_125:
      000FBD                        526 	.ds 6
      000FC3                        527 _makeTcpAck2_target_mac_10000_125:
      000FC3                        528 	.ds 6
      000FC9                        529 _makeTcpAck2_device_ip_10000_125:
      000FC9                        530 	.ds 4
      000FCD                        531 _makeTcpAck2_target_ip_10000_125:
      000FCD                        532 	.ds 4
      000FD1                        533 _makeTcpSynAck_device_mac_10000_129:
      000FD1                        534 	.ds 6
      000FD7                        535 _makeTcpSynAck_target_mac_10000_129:
      000FD7                        536 	.ds 6
      000FDD                        537 _makeTcpSynAck_device_ip_10000_129:
      000FDD                        538 	.ds 4
      000FE1                        539 _makeTcpSynAck_target_ip_10000_129:
      000FE1                        540 	.ds 4
      000FE5                        541 _makeTcpAck_device_mac_10000_134:
      000FE5                        542 	.ds 6
      000FEB                        543 _makeTcpAck_target_mac_10000_134:
      000FEB                        544 	.ds 6
      000FF1                        545 _makeTcpAck_device_ip_10000_134:
      000FF1                        546 	.ds 4
      000FF5                        547 _makeTcpAck_target_ip_10000_134:
      000FF5                        548 	.ds 4
      000FF9                        549 _makeTcpFinPshAck_device_mac_10000_135:
      000FF9                        550 	.ds 6
      000FFF                        551 _makeTcpFinPshAck_target_mac_10000_135:
      000FFF                        552 	.ds 6
      001005                        553 _makeTcpFinPshAck_device_ip_10000_135:
      001005                        554 	.ds 4
      001009                        555 _makeTcpFinPshAck_target_ip_10000_135:
      001009                        556 	.ds 4
      00100D                        557 _makeTcpFinPshAck_serverSeqNum_10002_137:
      00100D                        558 	.ds 4
      001011                        559 _makeTcpFinPshAck_ackNum_10002_137:
      001011                        560 	.ds 4
      001015                        561 _packetReceive_gNextPacketPtr_10000_139:
      001015                        562 	.ds 2
      001017                        563 _packetReceive_unreleasedPacket_10000_139:
      001017                        564 	.ds 1
      001018                        565 _packetReceive_len_10000_139:
      001018                        566 	.ds 2
      00101A                        567 _packetReceive_header_20002_145:
      00101A                        568 	.ds 6
      001020                        569 _packetReceive_start_20003_146:
      001020                        570 	.ds 2
                                    571 ;--------------------------------------------------------
                                    572 ; absolute external ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area XABS    (ABS,XDATA)
                                    575 ;--------------------------------------------------------
                                    576 ; initialized external ram data
                                    577 ;--------------------------------------------------------
                                    578 	.area XISEG   (XDATA)
      001485                        579 _connectionState::
      001485                        580 	.ds 1
                                    581 	.area HOME    (CODE)
                                    582 	.area GSINIT0 (CODE)
                                    583 	.area GSINIT1 (CODE)
                                    584 	.area GSINIT2 (CODE)
                                    585 	.area GSINIT3 (CODE)
                                    586 	.area GSINIT4 (CODE)
                                    587 	.area GSINIT5 (CODE)
                                    588 	.area GSINIT  (CODE)
                                    589 	.area GSFINAL (CODE)
                                    590 	.area CSEG    (CODE)
                                    591 ;--------------------------------------------------------
                                    592 ; global & static initialisations
                                    593 ;--------------------------------------------------------
                                    594 	.area HOME    (CODE)
                                    595 	.area GSINIT  (CODE)
                                    596 	.area GSFINAL (CODE)
                                    597 	.area GSINIT  (CODE)
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'packetReceive'
                                    600 ;------------------------------------------------------------
                                    601 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_139'
                                    602 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_139'
                                    603 ;len                       Allocated with name '_packetReceive_len_10000_139'
                                    604 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_141'
                                    605 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_143'
                                    606 ;header                    Allocated with name '_packetReceive_header_20002_145'
                                    607 ;start                     Allocated with name '_packetReceive_start_20003_146'
                                    608 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_147'
                                    609 ;------------------------------------------------------------
                                    610 ;	trial_webserver.c:417: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      002097 90 10 15         [24]  611 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      00209A E4               [12]  612 	clr	a
      00209B F0               [24]  613 	movx	@dptr,a
      00209C A3               [24]  614 	inc	dptr
      00209D F0               [24]  615 	movx	@dptr,a
                                    616 ;	trial_webserver.c:418: static bool unreleasedPacket = false;
      00209E 90 10 17         [24]  617 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      0020A1 F0               [24]  618 	movx	@dptr,a
                                    619 ;--------------------------------------------------------
                                    620 ; Home
                                    621 ;--------------------------------------------------------
                                    622 	.area HOME    (CODE)
                                    623 	.area HOME    (CODE)
                                    624 ;--------------------------------------------------------
                                    625 ; code
                                    626 ;--------------------------------------------------------
                                    627 	.area CSEG    (CODE)
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'makeArpReply'
                                    630 ;------------------------------------------------------------
                                    631 ;device_mac                Allocated with name '_makeArpReply_device_mac_10000_120'
                                    632 ;target_mac                Allocated with name '_makeArpReply_target_mac_10000_120'
                                    633 ;device_ip                 Allocated with name '_makeArpReply_device_ip_10000_120'
                                    634 ;target_ip                 Allocated with name '_makeArpReply_target_ip_10000_120'
                                    635 ;------------------------------------------------------------
                                    636 ;	trial_webserver.c:21: void makeArpReply()
                                    637 ;	-----------------------------------------
                                    638 ;	 function makeArpReply
                                    639 ;	-----------------------------------------
      0049B6                        640 _makeArpReply:
                           000007   641 	ar7 = 0x07
                           000006   642 	ar6 = 0x06
                           000005   643 	ar5 = 0x05
                           000004   644 	ar4 = 0x04
                           000003   645 	ar3 = 0x03
                           000002   646 	ar2 = 0x02
                           000001   647 	ar1 = 0x01
                           000000   648 	ar0 = 0x00
                                    649 ;	trial_webserver.c:23: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      0049B6 90 0F 95         [24]  650 	mov	dptr,#_makeArpReply_device_mac_10000_120
      0049B9 74 02            [12]  651 	mov	a,#0x02
      0049BB F0               [24]  652 	movx	@dptr,a
      0049BC 90 0F 96         [24]  653 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0001)
      0049BF 74 11            [12]  654 	mov	a,#0x11
      0049C1 F0               [24]  655 	movx	@dptr,a
      0049C2 90 0F 97         [24]  656 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0002)
      0049C5 23               [12]  657 	rl	a
      0049C6 F0               [24]  658 	movx	@dptr,a
      0049C7 90 0F 98         [24]  659 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0003)
      0049CA 74 33            [12]  660 	mov	a,#0x33
      0049CC F0               [24]  661 	movx	@dptr,a
      0049CD 90 0F 99         [24]  662 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0004)
      0049D0 74 44            [12]  663 	mov	a,#0x44
      0049D2 F0               [24]  664 	movx	@dptr,a
      0049D3 90 0F 9A         [24]  665 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0005)
      0049D6 74 55            [12]  666 	mov	a,#0x55
      0049D8 F0               [24]  667 	movx	@dptr,a
                                    668 ;	trial_webserver.c:24: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0049D9 90 0F 9B         [24]  669 	mov	dptr,#_makeArpReply_target_mac_10000_120
      0049DC 74 F8            [12]  670 	mov	a,#0xf8
      0049DE F0               [24]  671 	movx	@dptr,a
      0049DF 90 0F 9C         [24]  672 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0001)
      0049E2 74 75            [12]  673 	mov	a,#0x75
      0049E4 F0               [24]  674 	movx	@dptr,a
      0049E5 90 0F 9D         [24]  675 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0002)
      0049E8 74 A4            [12]  676 	mov	a,#0xa4
      0049EA F0               [24]  677 	movx	@dptr,a
      0049EB 90 0F 9E         [24]  678 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0003)
      0049EE 74 8C            [12]  679 	mov	a,#0x8c
      0049F0 F0               [24]  680 	movx	@dptr,a
      0049F1 90 0F 9F         [24]  681 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0004)
      0049F4 74 41            [12]  682 	mov	a,#0x41
      0049F6 F0               [24]  683 	movx	@dptr,a
      0049F7 90 0F A0         [24]  684 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0005)
      0049FA 74 31            [12]  685 	mov	a,#0x31
      0049FC F0               [24]  686 	movx	@dptr,a
                                    687 ;	trial_webserver.c:25: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0049FD 90 0F A1         [24]  688 	mov	dptr,#_makeArpReply_device_ip_10000_120
      004A00 74 C0            [12]  689 	mov	a,#0xc0
      004A02 F0               [24]  690 	movx	@dptr,a
      004A03 90 0F A2         [24]  691 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0001)
      004A06 74 A8            [12]  692 	mov	a,#0xa8
      004A08 F0               [24]  693 	movx	@dptr,a
      004A09 90 0F A3         [24]  694 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0002)
      004A0C 74 01            [12]  695 	mov	a,#0x01
      004A0E F0               [24]  696 	movx	@dptr,a
      004A0F 90 0F A4         [24]  697 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0003)
      004A12 74 64            [12]  698 	mov	a,#0x64
      004A14 F0               [24]  699 	movx	@dptr,a
                                    700 ;	trial_webserver.c:26: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004A15 90 0F A5         [24]  701 	mov	dptr,#_makeArpReply_target_ip_10000_120
      004A18 74 C0            [12]  702 	mov	a,#0xc0
      004A1A F0               [24]  703 	movx	@dptr,a
      004A1B 90 0F A6         [24]  704 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0001)
      004A1E 74 A8            [12]  705 	mov	a,#0xa8
      004A20 F0               [24]  706 	movx	@dptr,a
      004A21 90 0F A7         [24]  707 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0002)
      004A24 74 01            [12]  708 	mov	a,#0x01
      004A26 F0               [24]  709 	movx	@dptr,a
      004A27 90 0F A8         [24]  710 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0003)
      004A2A F0               [24]  711 	movx	@dptr,a
                                    712 ;	trial_webserver.c:27: printf("trialarpreply\n\r");
      004A2B 74 AA            [12]  713 	mov	a,#___str_0
      004A2D C0 E0            [24]  714 	push	acc
      004A2F 74 74            [12]  715 	mov	a,#(___str_0 >> 8)
      004A31 C0 E0            [24]  716 	push	acc
      004A33 74 80            [12]  717 	mov	a,#0x80
      004A35 C0 E0            [24]  718 	push	acc
      004A37 12 60 38         [24]  719 	lcall	_printf
      004A3A 15 81            [12]  720 	dec	sp
      004A3C 15 81            [12]  721 	dec	sp
      004A3E 15 81            [12]  722 	dec	sp
                                    723 ;	trial_webserver.c:29: memmove(&buffer[1], &buffer[0], 42);
      004A40 90 10 3C         [24]  724 	mov	dptr,#_memmove_PARM_2
      004A43 74 B9            [12]  725 	mov	a,#_buffer
      004A45 F0               [24]  726 	movx	@dptr,a
      004A46 74 09            [12]  727 	mov	a,#(_buffer >> 8)
      004A48 A3               [24]  728 	inc	dptr
      004A49 F0               [24]  729 	movx	@dptr,a
      004A4A E4               [12]  730 	clr	a
      004A4B A3               [24]  731 	inc	dptr
      004A4C F0               [24]  732 	movx	@dptr,a
      004A4D 90 10 3F         [24]  733 	mov	dptr,#_memmove_PARM_3
      004A50 74 2A            [12]  734 	mov	a,#0x2a
      004A52 F0               [24]  735 	movx	@dptr,a
      004A53 E4               [12]  736 	clr	a
      004A54 A3               [24]  737 	inc	dptr
      004A55 F0               [24]  738 	movx	@dptr,a
      004A56 90 09 BA         [24]  739 	mov	dptr,#(_buffer + 0x0001)
      004A59 F5 F0            [12]  740 	mov	b,a
      004A5B 12 5B E1         [24]  741 	lcall	_memmove
                                    742 ;	trial_webserver.c:32: buffer[0] = 0x0E;
      004A5E 90 09 B9         [24]  743 	mov	dptr,#_buffer
      004A61 74 0E            [12]  744 	mov	a,#0x0e
      004A63 F0               [24]  745 	movx	@dptr,a
                                    746 ;	trial_webserver.c:35: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
      004A64 90 10 30         [24]  747 	mov	dptr,#___memcpy_PARM_2
      004A67 74 C0            [12]  748 	mov	a,#(_buffer + 0x0007)
      004A69 F0               [24]  749 	movx	@dptr,a
      004A6A 74 09            [12]  750 	mov	a,#((_buffer + 0x0007) >> 8)
      004A6C A3               [24]  751 	inc	dptr
      004A6D F0               [24]  752 	movx	@dptr,a
      004A6E E4               [12]  753 	clr	a
      004A6F A3               [24]  754 	inc	dptr
      004A70 F0               [24]  755 	movx	@dptr,a
      004A71 90 10 33         [24]  756 	mov	dptr,#___memcpy_PARM_3
      004A74 74 06            [12]  757 	mov	a,#0x06
      004A76 F0               [24]  758 	movx	@dptr,a
      004A77 E4               [12]  759 	clr	a
      004A78 A3               [24]  760 	inc	dptr
      004A79 F0               [24]  761 	movx	@dptr,a
      004A7A 90 09 BA         [24]  762 	mov	dptr,#(_buffer + 0x0001)
      004A7D F5 F0            [12]  763 	mov	b,a
      004A7F 12 5B 2A         [24]  764 	lcall	___memcpy
                                    765 ;	trial_webserver.c:38: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
      004A82 90 10 30         [24]  766 	mov	dptr,#___memcpy_PARM_2
      004A85 74 95            [12]  767 	mov	a,#_makeArpReply_device_mac_10000_120
      004A87 F0               [24]  768 	movx	@dptr,a
      004A88 74 0F            [12]  769 	mov	a,#(_makeArpReply_device_mac_10000_120 >> 8)
      004A8A A3               [24]  770 	inc	dptr
      004A8B F0               [24]  771 	movx	@dptr,a
      004A8C E4               [12]  772 	clr	a
      004A8D A3               [24]  773 	inc	dptr
      004A8E F0               [24]  774 	movx	@dptr,a
      004A8F 90 10 33         [24]  775 	mov	dptr,#___memcpy_PARM_3
      004A92 74 06            [12]  776 	mov	a,#0x06
      004A94 F0               [24]  777 	movx	@dptr,a
      004A95 E4               [12]  778 	clr	a
      004A96 A3               [24]  779 	inc	dptr
      004A97 F0               [24]  780 	movx	@dptr,a
      004A98 90 09 C0         [24]  781 	mov	dptr,#(_buffer + 0x0007)
      004A9B F5 F0            [12]  782 	mov	b,a
      004A9D 12 5B 2A         [24]  783 	lcall	___memcpy
                                    784 ;	trial_webserver.c:41: buffer[1 + 21] = 0x02; // ARP Reply opcode
      004AA0 90 09 CF         [24]  785 	mov	dptr,#(_buffer + 0x0016)
      004AA3 74 02            [12]  786 	mov	a,#0x02
      004AA5 F0               [24]  787 	movx	@dptr,a
                                    788 ;	trial_webserver.c:44: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
      004AA6 90 10 30         [24]  789 	mov	dptr,#___memcpy_PARM_2
      004AA9 74 D0            [12]  790 	mov	a,#(_buffer + 0x0017)
      004AAB F0               [24]  791 	movx	@dptr,a
      004AAC 74 09            [12]  792 	mov	a,#((_buffer + 0x0017) >> 8)
      004AAE A3               [24]  793 	inc	dptr
      004AAF F0               [24]  794 	movx	@dptr,a
      004AB0 E4               [12]  795 	clr	a
      004AB1 A3               [24]  796 	inc	dptr
      004AB2 F0               [24]  797 	movx	@dptr,a
      004AB3 90 10 33         [24]  798 	mov	dptr,#___memcpy_PARM_3
      004AB6 74 06            [12]  799 	mov	a,#0x06
      004AB8 F0               [24]  800 	movx	@dptr,a
      004AB9 E4               [12]  801 	clr	a
      004ABA A3               [24]  802 	inc	dptr
      004ABB F0               [24]  803 	movx	@dptr,a
      004ABC 90 09 DA         [24]  804 	mov	dptr,#(_buffer + 0x0021)
      004ABF F5 F0            [12]  805 	mov	b,a
      004AC1 12 5B 2A         [24]  806 	lcall	___memcpy
                                    807 ;	trial_webserver.c:45: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
      004AC4 90 10 30         [24]  808 	mov	dptr,#___memcpy_PARM_2
      004AC7 74 D6            [12]  809 	mov	a,#(_buffer + 0x001d)
      004AC9 F0               [24]  810 	movx	@dptr,a
      004ACA 74 09            [12]  811 	mov	a,#((_buffer + 0x001d) >> 8)
      004ACC A3               [24]  812 	inc	dptr
      004ACD F0               [24]  813 	movx	@dptr,a
      004ACE E4               [12]  814 	clr	a
      004ACF A3               [24]  815 	inc	dptr
      004AD0 F0               [24]  816 	movx	@dptr,a
      004AD1 90 10 33         [24]  817 	mov	dptr,#___memcpy_PARM_3
      004AD4 74 04            [12]  818 	mov	a,#0x04
      004AD6 F0               [24]  819 	movx	@dptr,a
      004AD7 E4               [12]  820 	clr	a
      004AD8 A3               [24]  821 	inc	dptr
      004AD9 F0               [24]  822 	movx	@dptr,a
      004ADA 90 09 E0         [24]  823 	mov	dptr,#(_buffer + 0x0027)
      004ADD F5 F0            [12]  824 	mov	b,a
      004ADF 12 5B 2A         [24]  825 	lcall	___memcpy
                                    826 ;	trial_webserver.c:48: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
      004AE2 90 10 30         [24]  827 	mov	dptr,#___memcpy_PARM_2
      004AE5 74 95            [12]  828 	mov	a,#_makeArpReply_device_mac_10000_120
      004AE7 F0               [24]  829 	movx	@dptr,a
      004AE8 74 0F            [12]  830 	mov	a,#(_makeArpReply_device_mac_10000_120 >> 8)
      004AEA A3               [24]  831 	inc	dptr
      004AEB F0               [24]  832 	movx	@dptr,a
      004AEC E4               [12]  833 	clr	a
      004AED A3               [24]  834 	inc	dptr
      004AEE F0               [24]  835 	movx	@dptr,a
      004AEF 90 10 33         [24]  836 	mov	dptr,#___memcpy_PARM_3
      004AF2 74 06            [12]  837 	mov	a,#0x06
      004AF4 F0               [24]  838 	movx	@dptr,a
      004AF5 E4               [12]  839 	clr	a
      004AF6 A3               [24]  840 	inc	dptr
      004AF7 F0               [24]  841 	movx	@dptr,a
      004AF8 90 09 D0         [24]  842 	mov	dptr,#(_buffer + 0x0017)
      004AFB F5 F0            [12]  843 	mov	b,a
      004AFD 12 5B 2A         [24]  844 	lcall	___memcpy
                                    845 ;	trial_webserver.c:49: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
      004B00 90 10 30         [24]  846 	mov	dptr,#___memcpy_PARM_2
      004B03 74 A1            [12]  847 	mov	a,#_makeArpReply_device_ip_10000_120
      004B05 F0               [24]  848 	movx	@dptr,a
      004B06 74 0F            [12]  849 	mov	a,#(_makeArpReply_device_ip_10000_120 >> 8)
      004B08 A3               [24]  850 	inc	dptr
      004B09 F0               [24]  851 	movx	@dptr,a
      004B0A E4               [12]  852 	clr	a
      004B0B A3               [24]  853 	inc	dptr
      004B0C F0               [24]  854 	movx	@dptr,a
      004B0D 90 10 33         [24]  855 	mov	dptr,#___memcpy_PARM_3
      004B10 74 04            [12]  856 	mov	a,#0x04
      004B12 F0               [24]  857 	movx	@dptr,a
      004B13 E4               [12]  858 	clr	a
      004B14 A3               [24]  859 	inc	dptr
      004B15 F0               [24]  860 	movx	@dptr,a
      004B16 90 09 D6         [24]  861 	mov	dptr,#(_buffer + 0x001d)
      004B19 F5 F0            [12]  862 	mov	b,a
      004B1B 12 5B 2A         [24]  863 	lcall	___memcpy
                                    864 ;	trial_webserver.c:52: transmit_tcp_packet(buffer, 43);
      004B1E 90 09 AC         [24]  865 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004B21 74 2B            [12]  866 	mov	a,#0x2b
      004B23 F0               [24]  867 	movx	@dptr,a
      004B24 E4               [12]  868 	clr	a
      004B25 A3               [24]  869 	inc	dptr
      004B26 F0               [24]  870 	movx	@dptr,a
      004B27 90 09 B9         [24]  871 	mov	dptr,#_buffer
      004B2A F5 F0            [12]  872 	mov	b,a
                                    873 ;	trial_webserver.c:53: }
      004B2C 02 48 D2         [24]  874 	ljmp	_transmit_tcp_packet
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'makeTcpAck3'
                                    877 ;------------------------------------------------------------
                                    878 ;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
                                    879 ;device_mac                Allocated with name '_makeTcpAck3_device_mac_10000_121'
                                    880 ;target_mac                Allocated with name '_makeTcpAck3_target_mac_10000_121'
                                    881 ;device_ip                 Allocated with name '_makeTcpAck3_device_ip_10000_121'
                                    882 ;target_ip                 Allocated with name '_makeTcpAck3_target_ip_10000_121'
                                    883 ;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_122'
                                    884 ;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_122'
                                    885 ;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_123'
                                    886 ;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_123'
                                    887 ;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_123'
                                    888 ;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_123'
                                    889 ;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_124'
                                    890 ;------------------------------------------------------------
                                    891 ;	trial_webserver.c:58: void makeTcpAck3() {
                                    892 ;	-----------------------------------------
                                    893 ;	 function makeTcpAck3
                                    894 ;	-----------------------------------------
      004B2F                        895 _makeTcpAck3:
                                    896 ;	trial_webserver.c:59: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      004B2F 90 0F A9         [24]  897 	mov	dptr,#_makeTcpAck3_device_mac_10000_121
      004B32 74 02            [12]  898 	mov	a,#0x02
      004B34 F0               [24]  899 	movx	@dptr,a
      004B35 90 0F AA         [24]  900 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0001)
      004B38 74 11            [12]  901 	mov	a,#0x11
      004B3A F0               [24]  902 	movx	@dptr,a
      004B3B 90 0F AB         [24]  903 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0002)
      004B3E 23               [12]  904 	rl	a
      004B3F F0               [24]  905 	movx	@dptr,a
      004B40 90 0F AC         [24]  906 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0003)
      004B43 74 33            [12]  907 	mov	a,#0x33
      004B45 F0               [24]  908 	movx	@dptr,a
      004B46 90 0F AD         [24]  909 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0004)
      004B49 74 44            [12]  910 	mov	a,#0x44
      004B4B F0               [24]  911 	movx	@dptr,a
      004B4C 90 0F AE         [24]  912 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0005)
      004B4F 74 55            [12]  913 	mov	a,#0x55
      004B51 F0               [24]  914 	movx	@dptr,a
                                    915 ;	trial_webserver.c:60: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      004B52 90 0F AF         [24]  916 	mov	dptr,#_makeTcpAck3_target_mac_10000_121
      004B55 74 F8            [12]  917 	mov	a,#0xf8
      004B57 F0               [24]  918 	movx	@dptr,a
      004B58 90 0F B0         [24]  919 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0001)
      004B5B 74 75            [12]  920 	mov	a,#0x75
      004B5D F0               [24]  921 	movx	@dptr,a
      004B5E 90 0F B1         [24]  922 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0002)
      004B61 74 A4            [12]  923 	mov	a,#0xa4
      004B63 F0               [24]  924 	movx	@dptr,a
      004B64 90 0F B2         [24]  925 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0003)
      004B67 74 8C            [12]  926 	mov	a,#0x8c
      004B69 F0               [24]  927 	movx	@dptr,a
      004B6A 90 0F B3         [24]  928 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0004)
      004B6D 74 41            [12]  929 	mov	a,#0x41
      004B6F F0               [24]  930 	movx	@dptr,a
      004B70 90 0F B4         [24]  931 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0005)
      004B73 74 31            [12]  932 	mov	a,#0x31
      004B75 F0               [24]  933 	movx	@dptr,a
                                    934 ;	trial_webserver.c:61: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004B76 90 0F B5         [24]  935 	mov	dptr,#_makeTcpAck3_device_ip_10000_121
      004B79 74 C0            [12]  936 	mov	a,#0xc0
      004B7B F0               [24]  937 	movx	@dptr,a
      004B7C 90 0F B6         [24]  938 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0001)
      004B7F 74 A8            [12]  939 	mov	a,#0xa8
      004B81 F0               [24]  940 	movx	@dptr,a
      004B82 90 0F B7         [24]  941 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0002)
      004B85 74 01            [12]  942 	mov	a,#0x01
      004B87 F0               [24]  943 	movx	@dptr,a
      004B88 90 0F B8         [24]  944 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0003)
      004B8B 74 64            [12]  945 	mov	a,#0x64
      004B8D F0               [24]  946 	movx	@dptr,a
                                    947 ;	trial_webserver.c:62: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004B8E 90 0F B9         [24]  948 	mov	dptr,#_makeTcpAck3_target_ip_10000_121
      004B91 74 C0            [12]  949 	mov	a,#0xc0
      004B93 F0               [24]  950 	movx	@dptr,a
      004B94 90 0F BA         [24]  951 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0001)
      004B97 74 A8            [12]  952 	mov	a,#0xa8
      004B99 F0               [24]  953 	movx	@dptr,a
      004B9A 90 0F BB         [24]  954 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0002)
      004B9D 74 01            [12]  955 	mov	a,#0x01
      004B9F F0               [24]  956 	movx	@dptr,a
      004BA0 90 0F BC         [24]  957 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0003)
      004BA3 F0               [24]  958 	movx	@dptr,a
                                    959 ;	trial_webserver.c:63: printf("makeTcpAck\n\r");
      004BA4 74 BA            [12]  960 	mov	a,#___str_1
      004BA6 C0 E0            [24]  961 	push	acc
      004BA8 74 74            [12]  962 	mov	a,#(___str_1 >> 8)
      004BAA C0 E0            [24]  963 	push	acc
      004BAC 74 80            [12]  964 	mov	a,#0x80
      004BAE C0 E0            [24]  965 	push	acc
      004BB0 12 60 38         [24]  966 	lcall	_printf
      004BB3 15 81            [12]  967 	dec	sp
      004BB5 15 81            [12]  968 	dec	sp
      004BB7 15 81            [12]  969 	dec	sp
                                    970 ;	trial_webserver.c:66: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004BB9 90 10 3C         [24]  971 	mov	dptr,#_memmove_PARM_2
      004BBC 74 B9            [12]  972 	mov	a,#_buffer
      004BBE F0               [24]  973 	movx	@dptr,a
      004BBF 74 09            [12]  974 	mov	a,#(_buffer >> 8)
      004BC1 A3               [24]  975 	inc	dptr
      004BC2 F0               [24]  976 	movx	@dptr,a
      004BC3 E4               [12]  977 	clr	a
      004BC4 A3               [24]  978 	inc	dptr
      004BC5 F0               [24]  979 	movx	@dptr,a
      004BC6 90 10 3F         [24]  980 	mov	dptr,#_memmove_PARM_3
      004BC9 74 36            [12]  981 	mov	a,#0x36
      004BCB F0               [24]  982 	movx	@dptr,a
      004BCC E4               [12]  983 	clr	a
      004BCD A3               [24]  984 	inc	dptr
      004BCE F0               [24]  985 	movx	@dptr,a
      004BCF 90 09 BA         [24]  986 	mov	dptr,#(_buffer + 0x0001)
      004BD2 F5 F0            [12]  987 	mov	b,a
      004BD4 12 5B E1         [24]  988 	lcall	_memmove
                                    989 ;	trial_webserver.c:67: buffer[0] = 0x0E;
      004BD7 90 09 B9         [24]  990 	mov	dptr,#_buffer
      004BDA 74 0E            [12]  991 	mov	a,#0x0e
      004BDC F0               [24]  992 	movx	@dptr,a
                                    993 ;	trial_webserver.c:70: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      004BDD 90 10 30         [24]  994 	mov	dptr,#___memcpy_PARM_2
      004BE0 74 C0            [12]  995 	mov	a,#(_buffer + 0x0007)
      004BE2 F0               [24]  996 	movx	@dptr,a
      004BE3 74 09            [12]  997 	mov	a,#((_buffer + 0x0007) >> 8)
      004BE5 A3               [24]  998 	inc	dptr
      004BE6 F0               [24]  999 	movx	@dptr,a
      004BE7 E4               [12] 1000 	clr	a
      004BE8 A3               [24] 1001 	inc	dptr
      004BE9 F0               [24] 1002 	movx	@dptr,a
      004BEA 90 10 33         [24] 1003 	mov	dptr,#___memcpy_PARM_3
      004BED 74 06            [12] 1004 	mov	a,#0x06
      004BEF F0               [24] 1005 	movx	@dptr,a
      004BF0 E4               [12] 1006 	clr	a
      004BF1 A3               [24] 1007 	inc	dptr
      004BF2 F0               [24] 1008 	movx	@dptr,a
      004BF3 90 09 BA         [24] 1009 	mov	dptr,#(_buffer + 0x0001)
      004BF6 F5 F0            [12] 1010 	mov	b,a
      004BF8 12 5B 2A         [24] 1011 	lcall	___memcpy
                                   1012 ;	trial_webserver.c:71: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004BFB 90 10 30         [24] 1013 	mov	dptr,#___memcpy_PARM_2
      004BFE 74 A9            [12] 1014 	mov	a,#_makeTcpAck3_device_mac_10000_121
      004C00 F0               [24] 1015 	movx	@dptr,a
      004C01 74 0F            [12] 1016 	mov	a,#(_makeTcpAck3_device_mac_10000_121 >> 8)
      004C03 A3               [24] 1017 	inc	dptr
      004C04 F0               [24] 1018 	movx	@dptr,a
      004C05 E4               [12] 1019 	clr	a
      004C06 A3               [24] 1020 	inc	dptr
      004C07 F0               [24] 1021 	movx	@dptr,a
      004C08 90 10 33         [24] 1022 	mov	dptr,#___memcpy_PARM_3
      004C0B 74 06            [12] 1023 	mov	a,#0x06
      004C0D F0               [24] 1024 	movx	@dptr,a
      004C0E E4               [12] 1025 	clr	a
      004C0F A3               [24] 1026 	inc	dptr
      004C10 F0               [24] 1027 	movx	@dptr,a
      004C11 90 09 C0         [24] 1028 	mov	dptr,#(_buffer + 0x0007)
      004C14 F5 F0            [12] 1029 	mov	b,a
      004C16 12 5B 2A         [24] 1030 	lcall	___memcpy
                                   1031 ;	trial_webserver.c:74: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004C19 90 10 30         [24] 1032 	mov	dptr,#___memcpy_PARM_2
      004C1C 74 D4            [12] 1033 	mov	a,#(_buffer + 0x001b)
      004C1E F0               [24] 1034 	movx	@dptr,a
      004C1F 74 09            [12] 1035 	mov	a,#((_buffer + 0x001b) >> 8)
      004C21 A3               [24] 1036 	inc	dptr
      004C22 F0               [24] 1037 	movx	@dptr,a
      004C23 E4               [12] 1038 	clr	a
      004C24 A3               [24] 1039 	inc	dptr
      004C25 F0               [24] 1040 	movx	@dptr,a
      004C26 90 10 33         [24] 1041 	mov	dptr,#___memcpy_PARM_3
      004C29 74 04            [12] 1042 	mov	a,#0x04
      004C2B F0               [24] 1043 	movx	@dptr,a
      004C2C E4               [12] 1044 	clr	a
      004C2D A3               [24] 1045 	inc	dptr
      004C2E F0               [24] 1046 	movx	@dptr,a
      004C2F 90 09 D8         [24] 1047 	mov	dptr,#(_buffer + 0x001f)
      004C32 F5 F0            [12] 1048 	mov	b,a
      004C34 12 5B 2A         [24] 1049 	lcall	___memcpy
                                   1050 ;	trial_webserver.c:75: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      004C37 90 10 30         [24] 1051 	mov	dptr,#___memcpy_PARM_2
      004C3A 74 B5            [12] 1052 	mov	a,#_makeTcpAck3_device_ip_10000_121
      004C3C F0               [24] 1053 	movx	@dptr,a
      004C3D 74 0F            [12] 1054 	mov	a,#(_makeTcpAck3_device_ip_10000_121 >> 8)
      004C3F A3               [24] 1055 	inc	dptr
      004C40 F0               [24] 1056 	movx	@dptr,a
      004C41 E4               [12] 1057 	clr	a
      004C42 A3               [24] 1058 	inc	dptr
      004C43 F0               [24] 1059 	movx	@dptr,a
      004C44 90 10 33         [24] 1060 	mov	dptr,#___memcpy_PARM_3
      004C47 74 04            [12] 1061 	mov	a,#0x04
      004C49 F0               [24] 1062 	movx	@dptr,a
      004C4A E4               [12] 1063 	clr	a
      004C4B A3               [24] 1064 	inc	dptr
      004C4C F0               [24] 1065 	movx	@dptr,a
      004C4D 90 09 D4         [24] 1066 	mov	dptr,#(_buffer + 0x001b)
      004C50 F5 F0            [12] 1067 	mov	b,a
      004C52 12 5B 2A         [24] 1068 	lcall	___memcpy
                                   1069 ;	trial_webserver.c:78: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      004C55 90 09 DC         [24] 1070 	mov	dptr,#(_buffer + 0x0023)
      004C58 E0               [24] 1071 	movx	a,@dptr
      004C59 FE               [12] 1072 	mov	r6,a
      004C5A 7F 00            [12] 1073 	mov	r7,#0x00
      004C5C 90 09 DD         [24] 1074 	mov	dptr,#(_buffer + 0x0024)
      004C5F E0               [24] 1075 	movx	a,@dptr
      004C60 7C 00            [12] 1076 	mov	r4,#0x00
      004C62 42 07            [12] 1077 	orl	ar7,a
      004C64 EC               [12] 1078 	mov	a,r4
      004C65 42 06            [12] 1079 	orl	ar6,a
                                   1080 ;	trial_webserver.c:80: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004C67 90 09 DE         [24] 1081 	mov	dptr,#(_buffer + 0x0025)
      004C6A E0               [24] 1082 	movx	a,@dptr
      004C6B FC               [12] 1083 	mov	r4,a
      004C6C 7D 00            [12] 1084 	mov	r5,#0x00
      004C6E 90 09 DF         [24] 1085 	mov	dptr,#(_buffer + 0x0026)
      004C71 E0               [24] 1086 	movx	a,@dptr
      004C72 7A 00            [12] 1087 	mov	r2,#0x00
      004C74 42 05            [12] 1088 	orl	ar5,a
      004C76 EA               [12] 1089 	mov	a,r2
      004C77 42 04            [12] 1090 	orl	ar4,a
                                   1091 ;	trial_webserver.c:82: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      004C79 8C 03            [24] 1092 	mov	ar3,r4
      004C7B 90 09 DC         [24] 1093 	mov	dptr,#(_buffer + 0x0023)
      004C7E EB               [12] 1094 	mov	a,r3
      004C7F F0               [24] 1095 	movx	@dptr,a
                                   1096 ;	trial_webserver.c:83: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      004C80 90 09 DD         [24] 1097 	mov	dptr,#(_buffer + 0x0024)
      004C83 ED               [12] 1098 	mov	a,r5
      004C84 F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	trial_webserver.c:84: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      004C85 8E 05            [24] 1101 	mov	ar5,r6
      004C87 90 09 DE         [24] 1102 	mov	dptr,#(_buffer + 0x0025)
      004C8A ED               [12] 1103 	mov	a,r5
      004C8B F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	trial_webserver.c:85: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      004C8C 90 09 DF         [24] 1106 	mov	dptr,#(_buffer + 0x0026)
      004C8F EF               [12] 1107 	mov	a,r7
      004C90 F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	trial_webserver.c:97: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      004C91 90 09 E2         [24] 1110 	mov	dptr,#(_buffer + 0x0029)
      004C94 E0               [24] 1111 	movx	a,@dptr
      004C95 FE               [12] 1112 	mov	r6,a
      004C96 7F 00            [12] 1113 	mov	r7,#0x00
      004C98 90 09 E3         [24] 1114 	mov	dptr,#(_buffer + 0x002a)
      004C9B E0               [24] 1115 	movx	a,@dptr
      004C9C 7C 00            [12] 1116 	mov	r4,#0x00
      004C9E 42 07            [12] 1117 	orl	ar7,a
      004CA0 EC               [12] 1118 	mov	a,r4
      004CA1 42 06            [12] 1119 	orl	ar6,a
      004CA3 EE               [12] 1120 	mov	a,r6
      004CA4 33               [12] 1121 	rlc	a
      004CA5 95 E0            [12] 1122 	subb	a,acc
      004CA7 FD               [12] 1123 	mov	r5,a
      004CA8 FC               [12] 1124 	mov	r4,a
                                   1125 ;	trial_webserver.c:100: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
      004CA9 90 09 E6         [24] 1126 	mov	dptr,#(_buffer + 0x002d)
      004CAC E0               [24] 1127 	movx	a,@dptr
      004CAD FA               [12] 1128 	mov	r2,a
      004CAE 7B 00            [12] 1129 	mov	r3,#0x00
      004CB0 90 09 E7         [24] 1130 	mov	dptr,#(_buffer + 0x002e)
      004CB3 E0               [24] 1131 	movx	a,@dptr
      004CB4 79 00            [12] 1132 	mov	r1,#0x00
      004CB6 42 03            [12] 1133 	orl	ar3,a
      004CB8 E9               [12] 1134 	mov	a,r1
      004CB9 42 02            [12] 1135 	orl	ar2,a
      004CBB 8B 00            [24] 1136 	mov	ar0,r3
      004CBD EA               [12] 1137 	mov	a,r2
      004CBE F9               [12] 1138 	mov	r1,a
      004CBF 33               [12] 1139 	rlc	a
      004CC0 95 E0            [12] 1140 	subb	a,acc
      004CC2 FA               [12] 1141 	mov	r2,a
      004CC3 FB               [12] 1142 	mov	r3,a
                                   1143 ;	trial_webserver.c:104: uint32_t ackNum = clientSeqNum + 1;
      004CC4 74 01            [12] 1144 	mov	a,#0x01
      004CC6 2F               [12] 1145 	add	a, r7
      004CC7 F5 22            [12] 1146 	mov	_makeTcpAck3_sloc0_1_0,a
      004CC9 E4               [12] 1147 	clr	a
      004CCA 3E               [12] 1148 	addc	a, r6
      004CCB F5 23            [12] 1149 	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
      004CCD E4               [12] 1150 	clr	a
      004CCE 3D               [12] 1151 	addc	a, r5
      004CCF F5 24            [12] 1152 	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
      004CD1 E4               [12] 1153 	clr	a
      004CD2 3C               [12] 1154 	addc	a, r4
      004CD3 F5 25            [12] 1155 	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
                                   1156 ;	trial_webserver.c:105: prevSeq = serverSeqNum;
      004CD5 90 09 B1         [24] 1157 	mov	dptr,#_prevSeq
      004CD8 E8               [12] 1158 	mov	a,r0
      004CD9 F0               [24] 1159 	movx	@dptr,a
      004CDA E9               [12] 1160 	mov	a,r1
      004CDB A3               [24] 1161 	inc	dptr
      004CDC F0               [24] 1162 	movx	@dptr,a
      004CDD EA               [12] 1163 	mov	a,r2
      004CDE A3               [24] 1164 	inc	dptr
      004CDF F0               [24] 1165 	movx	@dptr,a
      004CE0 EB               [12] 1166 	mov	a,r3
      004CE1 A3               [24] 1167 	inc	dptr
      004CE2 F0               [24] 1168 	movx	@dptr,a
                                   1169 ;	trial_webserver.c:106: prevAck = ackNum;
      004CE3 90 09 B5         [24] 1170 	mov	dptr,#_prevAck
      004CE6 E5 22            [12] 1171 	mov	a,_makeTcpAck3_sloc0_1_0
      004CE8 F0               [24] 1172 	movx	@dptr,a
      004CE9 E5 23            [12] 1173 	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
      004CEB A3               [24] 1174 	inc	dptr
      004CEC F0               [24] 1175 	movx	@dptr,a
      004CED E5 24            [12] 1176 	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
      004CEF A3               [24] 1177 	inc	dptr
      004CF0 F0               [24] 1178 	movx	@dptr,a
      004CF1 E5 25            [12] 1179 	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
      004CF3 A3               [24] 1180 	inc	dptr
      004CF4 F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	trial_webserver.c:109: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      004CF5 8B 07            [24] 1183 	mov	ar7,r3
      004CF7 90 09 E0         [24] 1184 	mov	dptr,#(_buffer + 0x0027)
      004CFA EF               [12] 1185 	mov	a,r7
      004CFB F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	trial_webserver.c:110: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      004CFC 8A 07            [24] 1188 	mov	ar7,r2
      004CFE 90 09 E1         [24] 1189 	mov	dptr,#(_buffer + 0x0028)
      004D01 EF               [12] 1190 	mov	a,r7
      004D02 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	trial_webserver.c:111: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      004D03 89 07            [24] 1193 	mov	ar7,r1
      004D05 90 09 E2         [24] 1194 	mov	dptr,#(_buffer + 0x0029)
      004D08 EF               [12] 1195 	mov	a,r7
      004D09 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	trial_webserver.c:112: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      004D0A 90 09 E3         [24] 1198 	mov	dptr,#(_buffer + 0x002a)
      004D0D E8               [12] 1199 	mov	a,r0
      004D0E F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	trial_webserver.c:113: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      004D0F AF 25            [24] 1202 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
      004D11 90 09 E4         [24] 1203 	mov	dptr,#(_buffer + 0x002b)
      004D14 EF               [12] 1204 	mov	a,r7
      004D15 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	trial_webserver.c:114: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      004D16 AF 24            [24] 1207 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
      004D18 90 09 E5         [24] 1208 	mov	dptr,#(_buffer + 0x002c)
      004D1B EF               [12] 1209 	mov	a,r7
      004D1C F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	trial_webserver.c:115: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      004D1D AF 23            [24] 1212 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
      004D1F 90 09 E6         [24] 1213 	mov	dptr,#(_buffer + 0x002d)
      004D22 EF               [12] 1214 	mov	a,r7
      004D23 F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	trial_webserver.c:116: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      004D24 AF 22            [24] 1217 	mov	r7,_makeTcpAck3_sloc0_1_0
      004D26 90 09 E7         [24] 1218 	mov	dptr,#(_buffer + 0x002e)
      004D29 EF               [12] 1219 	mov	a,r7
      004D2A F0               [24] 1220 	movx	@dptr,a
                                   1221 ;	trial_webserver.c:120: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      004D2B 90 09 CA         [24] 1222 	mov	dptr,#(_buffer + 0x0011)
      004D2E E4               [12] 1223 	clr	a
      004D2F F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	trial_webserver.c:121: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      004D30 90 09 CB         [24] 1226 	mov	dptr,#(_buffer + 0x0012)
      004D33 74 28            [12] 1227 	mov	a,#0x28
      004D35 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	trial_webserver.c:124: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      004D36 90 09 E9         [24] 1230 	mov	dptr,#(_buffer + 0x0030)
      004D39 74 10            [12] 1231 	mov	a,#0x10
      004D3B F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	trial_webserver.c:125: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      004D3C 90 09 EA         [24] 1234 	mov	dptr,#(_buffer + 0x0031)
      004D3F 74 FF            [12] 1235 	mov	a,#0xff
      004D41 F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	trial_webserver.c:126: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      004D42 90 09 EB         [24] 1238 	mov	dptr,#(_buffer + 0x0032)
      004D45 F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	trial_webserver.c:127: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      004D46 90 09 E8         [24] 1241 	mov	dptr,#(_buffer + 0x002f)
      004D49 74 50            [12] 1242 	mov	a,#0x50
      004D4B F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	trial_webserver.c:130: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      004D4C 90 09 BA         [24] 1245 	mov	dptr,#(_buffer + 0x0001)
      004D4F 75 F0 00         [24] 1246 	mov	b, #0x00
      004D52 12 3B 4B         [24] 1247 	lcall	_calculateIPChecksum
                                   1248 ;	trial_webserver.c:131: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      004D55 90 09 BA         [24] 1249 	mov	dptr,#(_buffer + 0x0001)
      004D58 75 F0 00         [24] 1250 	mov	b, #0x00
      004D5B 12 3C B5         [24] 1251 	lcall	_calculateTcpChecksum
                                   1252 ;	trial_webserver.c:135: transmit_tcp_packet(buffer, 1 + 54);
      004D5E 90 09 AC         [24] 1253 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004D61 74 37            [12] 1254 	mov	a,#0x37
      004D63 F0               [24] 1255 	movx	@dptr,a
      004D64 E4               [12] 1256 	clr	a
      004D65 A3               [24] 1257 	inc	dptr
      004D66 F0               [24] 1258 	movx	@dptr,a
      004D67 90 09 B9         [24] 1259 	mov	dptr,#_buffer
      004D6A F5 F0            [12] 1260 	mov	b,a
      004D6C 12 48 D2         [24] 1261 	lcall	_transmit_tcp_packet
                                   1262 ;	trial_webserver.c:138: connectionState = ACK_SENT;
      004D6F 90 14 85         [24] 1263 	mov	dptr,#_connectionState
      004D72 74 05            [12] 1264 	mov	a,#0x05
      004D74 F0               [24] 1265 	movx	@dptr,a
                                   1266 ;	trial_webserver.c:139: }
      004D75 22               [24] 1267 	ret
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'makeTcpAck2'
                                   1270 ;------------------------------------------------------------
                                   1271 ;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
                                   1272 ;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
                                   1273 ;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
                                   1274 ;device_mac                Allocated with name '_makeTcpAck2_device_mac_10000_125'
                                   1275 ;target_mac                Allocated with name '_makeTcpAck2_target_mac_10000_125'
                                   1276 ;device_ip                 Allocated with name '_makeTcpAck2_device_ip_10000_125'
                                   1277 ;target_ip                 Allocated with name '_makeTcpAck2_target_ip_10000_125'
                                   1278 ;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_125'
                                   1279 ;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_125'
                                   1280 ;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_126'
                                   1281 ;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_126'
                                   1282 ;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_127'
                                   1283 ;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_127'
                                   1284 ;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_127'
                                   1285 ;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_127'
                                   1286 ;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_128'
                                   1287 ;------------------------------------------------------------
                                   1288 ;	trial_webserver.c:141: void makeTcpAck2() {
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function makeTcpAck2
                                   1291 ;	-----------------------------------------
      004D76                       1292 _makeTcpAck2:
                                   1293 ;	trial_webserver.c:142: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      004D76 90 0F BD         [24] 1294 	mov	dptr,#_makeTcpAck2_device_mac_10000_125
      004D79 74 02            [12] 1295 	mov	a,#0x02
      004D7B F0               [24] 1296 	movx	@dptr,a
      004D7C 90 0F BE         [24] 1297 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0001)
      004D7F 74 11            [12] 1298 	mov	a,#0x11
      004D81 F0               [24] 1299 	movx	@dptr,a
      004D82 90 0F BF         [24] 1300 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0002)
      004D85 23               [12] 1301 	rl	a
      004D86 F0               [24] 1302 	movx	@dptr,a
      004D87 90 0F C0         [24] 1303 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0003)
      004D8A 74 33            [12] 1304 	mov	a,#0x33
      004D8C F0               [24] 1305 	movx	@dptr,a
      004D8D 90 0F C1         [24] 1306 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0004)
      004D90 74 44            [12] 1307 	mov	a,#0x44
      004D92 F0               [24] 1308 	movx	@dptr,a
      004D93 90 0F C2         [24] 1309 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0005)
      004D96 74 55            [12] 1310 	mov	a,#0x55
      004D98 F0               [24] 1311 	movx	@dptr,a
                                   1312 ;	trial_webserver.c:143: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      004D99 90 0F C3         [24] 1313 	mov	dptr,#_makeTcpAck2_target_mac_10000_125
      004D9C 74 F8            [12] 1314 	mov	a,#0xf8
      004D9E F0               [24] 1315 	movx	@dptr,a
      004D9F 90 0F C4         [24] 1316 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0001)
      004DA2 74 75            [12] 1317 	mov	a,#0x75
      004DA4 F0               [24] 1318 	movx	@dptr,a
      004DA5 90 0F C5         [24] 1319 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0002)
      004DA8 74 A4            [12] 1320 	mov	a,#0xa4
      004DAA F0               [24] 1321 	movx	@dptr,a
      004DAB 90 0F C6         [24] 1322 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0003)
      004DAE 74 8C            [12] 1323 	mov	a,#0x8c
      004DB0 F0               [24] 1324 	movx	@dptr,a
      004DB1 90 0F C7         [24] 1325 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0004)
      004DB4 74 41            [12] 1326 	mov	a,#0x41
      004DB6 F0               [24] 1327 	movx	@dptr,a
      004DB7 90 0F C8         [24] 1328 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0005)
      004DBA 74 31            [12] 1329 	mov	a,#0x31
      004DBC F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	trial_webserver.c:144: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004DBD 90 0F C9         [24] 1332 	mov	dptr,#_makeTcpAck2_device_ip_10000_125
      004DC0 74 C0            [12] 1333 	mov	a,#0xc0
      004DC2 F0               [24] 1334 	movx	@dptr,a
      004DC3 90 0F CA         [24] 1335 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0001)
      004DC6 74 A8            [12] 1336 	mov	a,#0xa8
      004DC8 F0               [24] 1337 	movx	@dptr,a
      004DC9 90 0F CB         [24] 1338 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0002)
      004DCC 74 01            [12] 1339 	mov	a,#0x01
      004DCE F0               [24] 1340 	movx	@dptr,a
      004DCF 90 0F CC         [24] 1341 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0003)
      004DD2 74 64            [12] 1342 	mov	a,#0x64
      004DD4 F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	trial_webserver.c:145: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004DD5 90 0F CD         [24] 1345 	mov	dptr,#_makeTcpAck2_target_ip_10000_125
      004DD8 74 C0            [12] 1346 	mov	a,#0xc0
      004DDA F0               [24] 1347 	movx	@dptr,a
      004DDB 90 0F CE         [24] 1348 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0001)
      004DDE 74 A8            [12] 1349 	mov	a,#0xa8
      004DE0 F0               [24] 1350 	movx	@dptr,a
      004DE1 90 0F CF         [24] 1351 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0002)
      004DE4 74 01            [12] 1352 	mov	a,#0x01
      004DE6 F0               [24] 1353 	movx	@dptr,a
      004DE7 90 0F D0         [24] 1354 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0003)
      004DEA F0               [24] 1355 	movx	@dptr,a
                                   1356 ;	trial_webserver.c:146: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
      004DEB 90 09 C9         [24] 1357 	mov	dptr,#(_buffer + 0x0010)
      004DEE E0               [24] 1358 	movx	a,@dptr
      004DEF FE               [12] 1359 	mov	r6,a
      004DF0 7F 00            [12] 1360 	mov	r7,#0x00
      004DF2 90 09 CA         [24] 1361 	mov	dptr,#(_buffer + 0x0011)
      004DF5 E0               [24] 1362 	movx	a,@dptr
      004DF6 7C 00            [12] 1363 	mov	r4,#0x00
      004DF8 42 07            [12] 1364 	orl	ar7,a
      004DFA EC               [12] 1365 	mov	a,r4
      004DFB 42 06            [12] 1366 	orl	ar6,a
                                   1367 ;	trial_webserver.c:147: uint16_t receivedPayloadLength = totalLength1 - 40;
      004DFD EF               [12] 1368 	mov	a,r7
      004DFE 24 D8            [12] 1369 	add	a,#0xd8
      004E00 FF               [12] 1370 	mov	r7,a
      004E01 EE               [12] 1371 	mov	a,r6
      004E02 34 FF            [12] 1372 	addc	a,#0xff
      004E04 FE               [12] 1373 	mov	r6,a
      004E05 8F 26            [24] 1374 	mov	_makeTcpAck2_sloc0_1_0,r7
      004E07 8E 27            [24] 1375 	mov	(_makeTcpAck2_sloc0_1_0 + 1),r6
                                   1376 ;	trial_webserver.c:148: printf("makeTcpAck\n\r");
      004E09 74 BA            [12] 1377 	mov	a,#___str_1
      004E0B C0 E0            [24] 1378 	push	acc
      004E0D 74 74            [12] 1379 	mov	a,#(___str_1 >> 8)
      004E0F C0 E0            [24] 1380 	push	acc
      004E11 74 80            [12] 1381 	mov	a,#0x80
      004E13 C0 E0            [24] 1382 	push	acc
      004E15 12 60 38         [24] 1383 	lcall	_printf
      004E18 15 81            [12] 1384 	dec	sp
      004E1A 15 81            [12] 1385 	dec	sp
      004E1C 15 81            [12] 1386 	dec	sp
                                   1387 ;	trial_webserver.c:151: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004E1E 90 10 3C         [24] 1388 	mov	dptr,#_memmove_PARM_2
      004E21 74 B9            [12] 1389 	mov	a,#_buffer
      004E23 F0               [24] 1390 	movx	@dptr,a
      004E24 74 09            [12] 1391 	mov	a,#(_buffer >> 8)
      004E26 A3               [24] 1392 	inc	dptr
      004E27 F0               [24] 1393 	movx	@dptr,a
      004E28 E4               [12] 1394 	clr	a
      004E29 A3               [24] 1395 	inc	dptr
      004E2A F0               [24] 1396 	movx	@dptr,a
      004E2B 90 10 3F         [24] 1397 	mov	dptr,#_memmove_PARM_3
      004E2E 74 36            [12] 1398 	mov	a,#0x36
      004E30 F0               [24] 1399 	movx	@dptr,a
      004E31 E4               [12] 1400 	clr	a
      004E32 A3               [24] 1401 	inc	dptr
      004E33 F0               [24] 1402 	movx	@dptr,a
      004E34 90 09 BA         [24] 1403 	mov	dptr,#(_buffer + 0x0001)
      004E37 F5 F0            [12] 1404 	mov	b,a
      004E39 12 5B E1         [24] 1405 	lcall	_memmove
                                   1406 ;	trial_webserver.c:152: buffer[0] = 0x0E;
      004E3C 90 09 B9         [24] 1407 	mov	dptr,#_buffer
      004E3F 74 0E            [12] 1408 	mov	a,#0x0e
      004E41 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	trial_webserver.c:155: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      004E42 90 10 30         [24] 1411 	mov	dptr,#___memcpy_PARM_2
      004E45 74 C0            [12] 1412 	mov	a,#(_buffer + 0x0007)
      004E47 F0               [24] 1413 	movx	@dptr,a
      004E48 74 09            [12] 1414 	mov	a,#((_buffer + 0x0007) >> 8)
      004E4A A3               [24] 1415 	inc	dptr
      004E4B F0               [24] 1416 	movx	@dptr,a
      004E4C E4               [12] 1417 	clr	a
      004E4D A3               [24] 1418 	inc	dptr
      004E4E F0               [24] 1419 	movx	@dptr,a
      004E4F 90 10 33         [24] 1420 	mov	dptr,#___memcpy_PARM_3
      004E52 74 06            [12] 1421 	mov	a,#0x06
      004E54 F0               [24] 1422 	movx	@dptr,a
      004E55 E4               [12] 1423 	clr	a
      004E56 A3               [24] 1424 	inc	dptr
      004E57 F0               [24] 1425 	movx	@dptr,a
      004E58 90 09 BA         [24] 1426 	mov	dptr,#(_buffer + 0x0001)
      004E5B F5 F0            [12] 1427 	mov	b,a
      004E5D 12 5B 2A         [24] 1428 	lcall	___memcpy
                                   1429 ;	trial_webserver.c:156: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004E60 90 10 30         [24] 1430 	mov	dptr,#___memcpy_PARM_2
      004E63 74 BD            [12] 1431 	mov	a,#_makeTcpAck2_device_mac_10000_125
      004E65 F0               [24] 1432 	movx	@dptr,a
      004E66 74 0F            [12] 1433 	mov	a,#(_makeTcpAck2_device_mac_10000_125 >> 8)
      004E68 A3               [24] 1434 	inc	dptr
      004E69 F0               [24] 1435 	movx	@dptr,a
      004E6A E4               [12] 1436 	clr	a
      004E6B A3               [24] 1437 	inc	dptr
      004E6C F0               [24] 1438 	movx	@dptr,a
      004E6D 90 10 33         [24] 1439 	mov	dptr,#___memcpy_PARM_3
      004E70 74 06            [12] 1440 	mov	a,#0x06
      004E72 F0               [24] 1441 	movx	@dptr,a
      004E73 E4               [12] 1442 	clr	a
      004E74 A3               [24] 1443 	inc	dptr
      004E75 F0               [24] 1444 	movx	@dptr,a
      004E76 90 09 C0         [24] 1445 	mov	dptr,#(_buffer + 0x0007)
      004E79 F5 F0            [12] 1446 	mov	b,a
      004E7B 12 5B 2A         [24] 1447 	lcall	___memcpy
                                   1448 ;	trial_webserver.c:159: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004E7E 90 10 30         [24] 1449 	mov	dptr,#___memcpy_PARM_2
      004E81 74 D4            [12] 1450 	mov	a,#(_buffer + 0x001b)
      004E83 F0               [24] 1451 	movx	@dptr,a
      004E84 74 09            [12] 1452 	mov	a,#((_buffer + 0x001b) >> 8)
      004E86 A3               [24] 1453 	inc	dptr
      004E87 F0               [24] 1454 	movx	@dptr,a
      004E88 E4               [12] 1455 	clr	a
      004E89 A3               [24] 1456 	inc	dptr
      004E8A F0               [24] 1457 	movx	@dptr,a
      004E8B 90 10 33         [24] 1458 	mov	dptr,#___memcpy_PARM_3
      004E8E 74 04            [12] 1459 	mov	a,#0x04
      004E90 F0               [24] 1460 	movx	@dptr,a
      004E91 E4               [12] 1461 	clr	a
      004E92 A3               [24] 1462 	inc	dptr
      004E93 F0               [24] 1463 	movx	@dptr,a
      004E94 90 09 D8         [24] 1464 	mov	dptr,#(_buffer + 0x001f)
      004E97 F5 F0            [12] 1465 	mov	b,a
      004E99 12 5B 2A         [24] 1466 	lcall	___memcpy
                                   1467 ;	trial_webserver.c:160: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      004E9C 90 10 30         [24] 1468 	mov	dptr,#___memcpy_PARM_2
      004E9F 74 C9            [12] 1469 	mov	a,#_makeTcpAck2_device_ip_10000_125
      004EA1 F0               [24] 1470 	movx	@dptr,a
      004EA2 74 0F            [12] 1471 	mov	a,#(_makeTcpAck2_device_ip_10000_125 >> 8)
      004EA4 A3               [24] 1472 	inc	dptr
      004EA5 F0               [24] 1473 	movx	@dptr,a
      004EA6 E4               [12] 1474 	clr	a
      004EA7 A3               [24] 1475 	inc	dptr
      004EA8 F0               [24] 1476 	movx	@dptr,a
      004EA9 90 10 33         [24] 1477 	mov	dptr,#___memcpy_PARM_3
      004EAC 74 04            [12] 1478 	mov	a,#0x04
      004EAE F0               [24] 1479 	movx	@dptr,a
      004EAF E4               [12] 1480 	clr	a
      004EB0 A3               [24] 1481 	inc	dptr
      004EB1 F0               [24] 1482 	movx	@dptr,a
      004EB2 90 09 D4         [24] 1483 	mov	dptr,#(_buffer + 0x001b)
      004EB5 F5 F0            [12] 1484 	mov	b,a
      004EB7 12 5B 2A         [24] 1485 	lcall	___memcpy
                                   1486 ;	trial_webserver.c:163: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      004EBA 90 09 DC         [24] 1487 	mov	dptr,#(_buffer + 0x0023)
      004EBD E0               [24] 1488 	movx	a,@dptr
      004EBE FC               [12] 1489 	mov	r4,a
      004EBF 7D 00            [12] 1490 	mov	r5,#0x00
      004EC1 90 09 DD         [24] 1491 	mov	dptr,#(_buffer + 0x0024)
      004EC4 E0               [24] 1492 	movx	a,@dptr
      004EC5 7A 00            [12] 1493 	mov	r2,#0x00
      004EC7 42 05            [12] 1494 	orl	ar5,a
      004EC9 EA               [12] 1495 	mov	a,r2
      004ECA 42 04            [12] 1496 	orl	ar4,a
                                   1497 ;	trial_webserver.c:165: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004ECC 90 09 DE         [24] 1498 	mov	dptr,#(_buffer + 0x0025)
      004ECF E0               [24] 1499 	movx	a,@dptr
      004ED0 FA               [12] 1500 	mov	r2,a
      004ED1 7B 00            [12] 1501 	mov	r3,#0x00
      004ED3 90 09 DF         [24] 1502 	mov	dptr,#(_buffer + 0x0026)
      004ED6 E0               [24] 1503 	movx	a,@dptr
      004ED7 79 00            [12] 1504 	mov	r1,#0x00
      004ED9 42 03            [12] 1505 	orl	ar3,a
      004EDB E9               [12] 1506 	mov	a,r1
      004EDC 42 02            [12] 1507 	orl	ar2,a
                                   1508 ;	trial_webserver.c:167: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      004EDE 8A 01            [24] 1509 	mov	ar1,r2
      004EE0 90 09 DC         [24] 1510 	mov	dptr,#(_buffer + 0x0023)
      004EE3 E9               [12] 1511 	mov	a,r1
      004EE4 F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	trial_webserver.c:168: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      004EE5 90 09 DD         [24] 1514 	mov	dptr,#(_buffer + 0x0024)
      004EE8 EB               [12] 1515 	mov	a,r3
      004EE9 F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	trial_webserver.c:169: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      004EEA 8C 03            [24] 1518 	mov	ar3,r4
      004EEC 90 09 DE         [24] 1519 	mov	dptr,#(_buffer + 0x0025)
      004EEF EB               [12] 1520 	mov	a,r3
      004EF0 F0               [24] 1521 	movx	@dptr,a
                                   1522 ;	trial_webserver.c:170: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      004EF1 90 09 DF         [24] 1523 	mov	dptr,#(_buffer + 0x0026)
      004EF4 ED               [12] 1524 	mov	a,r5
      004EF5 F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	trial_webserver.c:181: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      004EF6 90 09 E0         [24] 1527 	mov	dptr,#(_buffer + 0x0027)
      004EF9 E0               [24] 1528 	movx	a,@dptr
      004EFA FD               [12] 1529 	mov	r5,a
      004EFB 7C 00            [12] 1530 	mov	r4,#0x00
      004EFD 7B 00            [12] 1531 	mov	r3,#0x00
      004EFF 8D 02            [24] 1532 	mov	ar2,r5
      004F01 7D 00            [12] 1533 	mov	r5,#0x00
      004F03 90 09 E1         [24] 1534 	mov	dptr,#(_buffer + 0x0028)
      004F06 E0               [24] 1535 	movx	a,@dptr
      004F07 F8               [12] 1536 	mov	r0,a
      004F08 79 00            [12] 1537 	mov	r1,#0x00
      004F0A 89 07            [24] 1538 	mov	ar7,r1
      004F0C 88 06            [24] 1539 	mov	ar6,r0
      004F0E E4               [12] 1540 	clr	a
      004F0F 42 05            [12] 1541 	orl	ar5,a
      004F11 E9               [12] 1542 	mov	a,r1
      004F12 42 04            [12] 1543 	orl	ar4,a
      004F14 EE               [12] 1544 	mov	a,r6
      004F15 42 03            [12] 1545 	orl	ar3,a
      004F17 EF               [12] 1546 	mov	a,r7
      004F18 42 02            [12] 1547 	orl	ar2,a
      004F1A 90 09 E2         [24] 1548 	mov	dptr,#(_buffer + 0x0029)
      004F1D E0               [24] 1549 	movx	a,@dptr
      004F1E F8               [12] 1550 	mov	r0,a
      004F1F 79 00            [12] 1551 	mov	r1,#0x00
      004F21 7E 00            [12] 1552 	mov	r6,#0x00
      004F23 8E 07            [24] 1553 	mov	ar7,r6
      004F25 89 06            [24] 1554 	mov	ar6,r1
      004F27 88 01            [24] 1555 	mov	ar1,r0
      004F29 E4               [12] 1556 	clr	a
      004F2A 42 05            [12] 1557 	orl	ar5,a
      004F2C E9               [12] 1558 	mov	a,r1
      004F2D 42 04            [12] 1559 	orl	ar4,a
      004F2F EE               [12] 1560 	mov	a,r6
      004F30 42 03            [12] 1561 	orl	ar3,a
      004F32 EF               [12] 1562 	mov	a,r7
      004F33 42 02            [12] 1563 	orl	ar2,a
      004F35 90 09 E3         [24] 1564 	mov	dptr,#(_buffer + 0x002a)
      004F38 E0               [24] 1565 	movx	a,@dptr
      004F39 F8               [12] 1566 	mov	r0,a
      004F3A E4               [12] 1567 	clr	a
      004F3B F9               [12] 1568 	mov	r1,a
      004F3C FE               [12] 1569 	mov	r6,a
      004F3D FF               [12] 1570 	mov	r7,a
      004F3E E8               [12] 1571 	mov	a,r0
      004F3F 4D               [12] 1572 	orl	a,r5
      004F40 F5 2C            [12] 1573 	mov	_makeTcpAck2_sloc2_1_0,a
      004F42 E9               [12] 1574 	mov	a,r1
      004F43 4C               [12] 1575 	orl	a,r4
      004F44 F5 2D            [12] 1576 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      004F46 EE               [12] 1577 	mov	a,r6
      004F47 4B               [12] 1578 	orl	a,r3
      004F48 F5 2E            [12] 1579 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      004F4A EF               [12] 1580 	mov	a,r7
      004F4B 4A               [12] 1581 	orl	a,r2
      004F4C F5 2F            [12] 1582 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1583 ;	trial_webserver.c:186: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
      004F4E 90 09 E4         [24] 1584 	mov	dptr,#(_buffer + 0x002b)
      004F51 E0               [24] 1585 	movx	a,@dptr
      004F52 F8               [12] 1586 	mov	r0,a
      004F53 7F 00            [12] 1587 	mov	r7,#0x00
      004F55 88 2B            [24] 1588 	mov	(_makeTcpAck2_sloc1_1_0 + 3),r0
      004F57 8F 28            [24] 1589 	mov	_makeTcpAck2_sloc1_1_0,r7
      004F59 8F 29            [24] 1590 	mov	(_makeTcpAck2_sloc1_1_0 + 1),r7
      004F5B 8F 2A            [24] 1591 	mov	(_makeTcpAck2_sloc1_1_0 + 2),r7
      004F5D 90 09 E5         [24] 1592 	mov	dptr,#(_buffer + 0x002c)
      004F60 E0               [24] 1593 	movx	a,@dptr
      004F61 F8               [12] 1594 	mov	r0,a
      004F62 89 07            [24] 1595 	mov	ar7,r1
      004F64 88 06            [24] 1596 	mov	ar6,r0
      004F66 E4               [12] 1597 	clr	a
      004F67 42 28            [12] 1598 	orl	_makeTcpAck2_sloc1_1_0,a
      004F69 E9               [12] 1599 	mov	a,r1
      004F6A 42 29            [12] 1600 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      004F6C EE               [12] 1601 	mov	a,r6
      004F6D 42 2A            [12] 1602 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      004F6F EF               [12] 1603 	mov	a,r7
      004F70 42 2B            [12] 1604 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      004F72 90 09 E6         [24] 1605 	mov	dptr,#(_buffer + 0x002d)
      004F75 E0               [24] 1606 	movx	a,@dptr
      004F76 F8               [12] 1607 	mov	r0,a
      004F77 79 00            [12] 1608 	mov	r1,#0x00
      004F79 7E 00            [12] 1609 	mov	r6,#0x00
      004F7B 8E 07            [24] 1610 	mov	ar7,r6
      004F7D 89 06            [24] 1611 	mov	ar6,r1
      004F7F 88 01            [24] 1612 	mov	ar1,r0
      004F81 E4               [12] 1613 	clr	a
      004F82 42 28            [12] 1614 	orl	_makeTcpAck2_sloc1_1_0,a
      004F84 E9               [12] 1615 	mov	a,r1
      004F85 42 29            [12] 1616 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      004F87 EE               [12] 1617 	mov	a,r6
      004F88 42 2A            [12] 1618 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      004F8A EF               [12] 1619 	mov	a,r7
      004F8B 42 2B            [12] 1620 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      004F8D 90 09 E7         [24] 1621 	mov	dptr,#(_buffer + 0x002e)
      004F90 E0               [24] 1622 	movx	a,@dptr
      004F91 F8               [12] 1623 	mov	r0,a
      004F92 E4               [12] 1624 	clr	a
      004F93 F9               [12] 1625 	mov	r1,a
      004F94 FE               [12] 1626 	mov	r6,a
      004F95 FF               [12] 1627 	mov	r7,a
      004F96 E5 29            [12] 1628 	mov	a,(_makeTcpAck2_sloc1_1_0 + 1)
      004F98 42 01            [12] 1629 	orl	ar1,a
      004F9A E5 2A            [12] 1630 	mov	a,(_makeTcpAck2_sloc1_1_0 + 2)
      004F9C 42 06            [12] 1631 	orl	ar6,a
      004F9E E5 2B            [12] 1632 	mov	a,(_makeTcpAck2_sloc1_1_0 + 3)
      004FA0 42 07            [12] 1633 	orl	ar7,a
                                   1634 ;	trial_webserver.c:192: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
      004FA2 AA 26            [24] 1635 	mov	r2,_makeTcpAck2_sloc0_1_0
      004FA4 AB 27            [24] 1636 	mov	r3,(_makeTcpAck2_sloc0_1_0 + 1)
      004FA6 E4               [12] 1637 	clr	a
      004FA7 FC               [12] 1638 	mov	r4,a
      004FA8 FD               [12] 1639 	mov	r5,a
      004FA9 EA               [12] 1640 	mov	a,r2
      004FAA 25 2C            [12] 1641 	add	a, _makeTcpAck2_sloc2_1_0
      004FAC FA               [12] 1642 	mov	r2,a
      004FAD EB               [12] 1643 	mov	a,r3
      004FAE 35 2D            [12] 1644 	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
      004FB0 FB               [12] 1645 	mov	r3,a
      004FB1 EC               [12] 1646 	mov	a,r4
      004FB2 35 2E            [12] 1647 	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
      004FB4 FC               [12] 1648 	mov	r4,a
      004FB5 ED               [12] 1649 	mov	a,r5
      004FB6 35 2F            [12] 1650 	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
      004FB8 FD               [12] 1651 	mov	r5,a
      004FB9 EA               [12] 1652 	mov	a,r2
      004FBA 24 FF            [12] 1653 	add	a,#0xff
      004FBC F5 2C            [12] 1654 	mov	_makeTcpAck2_sloc2_1_0,a
      004FBE EB               [12] 1655 	mov	a,r3
      004FBF 34 FF            [12] 1656 	addc	a,#0xff
      004FC1 F5 2D            [12] 1657 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      004FC3 EC               [12] 1658 	mov	a,r4
      004FC4 34 FF            [12] 1659 	addc	a,#0xff
      004FC6 F5 2E            [12] 1660 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      004FC8 ED               [12] 1661 	mov	a,r5
      004FC9 34 FF            [12] 1662 	addc	a,#0xff
      004FCB F5 2F            [12] 1663 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1664 ;	trial_webserver.c:193: prevSeq = serverSeqNum;
      004FCD 90 09 B1         [24] 1665 	mov	dptr,#_prevSeq
      004FD0 E8               [12] 1666 	mov	a,r0
      004FD1 F0               [24] 1667 	movx	@dptr,a
      004FD2 E9               [12] 1668 	mov	a,r1
      004FD3 A3               [24] 1669 	inc	dptr
      004FD4 F0               [24] 1670 	movx	@dptr,a
      004FD5 EE               [12] 1671 	mov	a,r6
      004FD6 A3               [24] 1672 	inc	dptr
      004FD7 F0               [24] 1673 	movx	@dptr,a
      004FD8 EF               [12] 1674 	mov	a,r7
      004FD9 A3               [24] 1675 	inc	dptr
      004FDA F0               [24] 1676 	movx	@dptr,a
                                   1677 ;	trial_webserver.c:194: prevAck = ackNum;
      004FDB 90 09 B5         [24] 1678 	mov	dptr,#_prevAck
      004FDE E5 2C            [12] 1679 	mov	a,_makeTcpAck2_sloc2_1_0
      004FE0 F0               [24] 1680 	movx	@dptr,a
      004FE1 E5 2D            [12] 1681 	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
      004FE3 A3               [24] 1682 	inc	dptr
      004FE4 F0               [24] 1683 	movx	@dptr,a
      004FE5 E5 2E            [12] 1684 	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
      004FE7 A3               [24] 1685 	inc	dptr
      004FE8 F0               [24] 1686 	movx	@dptr,a
      004FE9 E5 2F            [12] 1687 	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
      004FEB A3               [24] 1688 	inc	dptr
      004FEC F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	trial_webserver.c:197: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      004FED 8F 05            [24] 1691 	mov	ar5,r7
      004FEF 90 09 E0         [24] 1692 	mov	dptr,#(_buffer + 0x0027)
      004FF2 ED               [12] 1693 	mov	a,r5
      004FF3 F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	trial_webserver.c:198: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      004FF4 8E 05            [24] 1696 	mov	ar5,r6
      004FF6 90 09 E1         [24] 1697 	mov	dptr,#(_buffer + 0x0028)
      004FF9 ED               [12] 1698 	mov	a,r5
      004FFA F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	trial_webserver.c:199: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      004FFB 89 05            [24] 1701 	mov	ar5,r1
      004FFD 90 09 E2         [24] 1702 	mov	dptr,#(_buffer + 0x0029)
      005000 ED               [12] 1703 	mov	a,r5
      005001 F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	trial_webserver.c:200: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005002 90 09 E3         [24] 1706 	mov	dptr,#(_buffer + 0x002a)
      005005 E8               [12] 1707 	mov	a,r0
      005006 F0               [24] 1708 	movx	@dptr,a
                                   1709 ;	trial_webserver.c:201: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      005007 AF 2F            [24] 1710 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
      005009 90 09 E4         [24] 1711 	mov	dptr,#(_buffer + 0x002b)
      00500C EF               [12] 1712 	mov	a,r7
      00500D F0               [24] 1713 	movx	@dptr,a
                                   1714 ;	trial_webserver.c:202: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      00500E AF 2E            [24] 1715 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
      005010 90 09 E5         [24] 1716 	mov	dptr,#(_buffer + 0x002c)
      005013 EF               [12] 1717 	mov	a,r7
      005014 F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	trial_webserver.c:203: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      005015 AF 2D            [24] 1720 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
      005017 90 09 E6         [24] 1721 	mov	dptr,#(_buffer + 0x002d)
      00501A EF               [12] 1722 	mov	a,r7
      00501B F0               [24] 1723 	movx	@dptr,a
                                   1724 ;	trial_webserver.c:204: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      00501C AA 2C            [24] 1725 	mov	r2,_makeTcpAck2_sloc2_1_0
      00501E 90 09 E7         [24] 1726 	mov	dptr,#(_buffer + 0x002e)
      005021 EA               [12] 1727 	mov	a,r2
      005022 F0               [24] 1728 	movx	@dptr,a
                                   1729 ;	trial_webserver.c:208: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005023 90 09 CA         [24] 1730 	mov	dptr,#(_buffer + 0x0011)
      005026 E4               [12] 1731 	clr	a
      005027 F0               [24] 1732 	movx	@dptr,a
                                   1733 ;	trial_webserver.c:209: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005028 90 09 CB         [24] 1734 	mov	dptr,#(_buffer + 0x0012)
      00502B 74 28            [12] 1735 	mov	a,#0x28
      00502D F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	trial_webserver.c:212: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      00502E 90 09 E9         [24] 1738 	mov	dptr,#(_buffer + 0x0030)
      005031 74 10            [12] 1739 	mov	a,#0x10
      005033 F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	trial_webserver.c:213: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005034 90 09 EA         [24] 1742 	mov	dptr,#(_buffer + 0x0031)
      005037 74 FF            [12] 1743 	mov	a,#0xff
      005039 F0               [24] 1744 	movx	@dptr,a
                                   1745 ;	trial_webserver.c:214: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      00503A 90 09 EB         [24] 1746 	mov	dptr,#(_buffer + 0x0032)
      00503D F0               [24] 1747 	movx	@dptr,a
                                   1748 ;	trial_webserver.c:215: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      00503E 90 09 E8         [24] 1749 	mov	dptr,#(_buffer + 0x002f)
      005041 74 50            [12] 1750 	mov	a,#0x50
      005043 F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	trial_webserver.c:218: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005044 90 09 BA         [24] 1753 	mov	dptr,#(_buffer + 0x0001)
      005047 75 F0 00         [24] 1754 	mov	b, #0x00
      00504A 12 3B 4B         [24] 1755 	lcall	_calculateIPChecksum
                                   1756 ;	trial_webserver.c:219: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      00504D 90 09 BA         [24] 1757 	mov	dptr,#(_buffer + 0x0001)
      005050 75 F0 00         [24] 1758 	mov	b, #0x00
      005053 12 3C B5         [24] 1759 	lcall	_calculateTcpChecksum
                                   1760 ;	trial_webserver.c:223: transmit_tcp_packet(buffer, 1 + 54);
      005056 90 09 AC         [24] 1761 	mov	dptr,#_transmit_tcp_packet_PARM_2
      005059 74 37            [12] 1762 	mov	a,#0x37
      00505B F0               [24] 1763 	movx	@dptr,a
      00505C E4               [12] 1764 	clr	a
      00505D A3               [24] 1765 	inc	dptr
      00505E F0               [24] 1766 	movx	@dptr,a
      00505F 90 09 B9         [24] 1767 	mov	dptr,#_buffer
      005062 F5 F0            [12] 1768 	mov	b,a
      005064 12 48 D2         [24] 1769 	lcall	_transmit_tcp_packet
                                   1770 ;	trial_webserver.c:226: connectionState = ACK_SENT;
      005067 90 14 85         [24] 1771 	mov	dptr,#_connectionState
      00506A 74 05            [12] 1772 	mov	a,#0x05
      00506C F0               [24] 1773 	movx	@dptr,a
                                   1774 ;	trial_webserver.c:227: }
      00506D 22               [24] 1775 	ret
                                   1776 ;------------------------------------------------------------
                                   1777 ;Allocation info for local variables in function 'makeTcpSynAck'
                                   1778 ;------------------------------------------------------------
                                   1779 ;device_mac                Allocated with name '_makeTcpSynAck_device_mac_10000_129'
                                   1780 ;target_mac                Allocated with name '_makeTcpSynAck_target_mac_10000_129'
                                   1781 ;device_ip                 Allocated with name '_makeTcpSynAck_device_ip_10000_129'
                                   1782 ;target_ip                 Allocated with name '_makeTcpSynAck_target_ip_10000_129'
                                   1783 ;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_130'
                                   1784 ;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_130'
                                   1785 ;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_131'
                                   1786 ;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10003_132'
                                   1787 ;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10003_132'
                                   1788 ;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10004_133'
                                   1789 ;------------------------------------------------------------
                                   1790 ;	trial_webserver.c:229: void makeTcpSynAck() {
                                   1791 ;	-----------------------------------------
                                   1792 ;	 function makeTcpSynAck
                                   1793 ;	-----------------------------------------
      00506E                       1794 _makeTcpSynAck:
                                   1795 ;	trial_webserver.c:230: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      00506E 90 0F D1         [24] 1796 	mov	dptr,#_makeTcpSynAck_device_mac_10000_129
      005071 74 02            [12] 1797 	mov	a,#0x02
      005073 F0               [24] 1798 	movx	@dptr,a
      005074 90 0F D2         [24] 1799 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0001)
      005077 74 11            [12] 1800 	mov	a,#0x11
      005079 F0               [24] 1801 	movx	@dptr,a
      00507A 90 0F D3         [24] 1802 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0002)
      00507D 23               [12] 1803 	rl	a
      00507E F0               [24] 1804 	movx	@dptr,a
      00507F 90 0F D4         [24] 1805 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0003)
      005082 74 33            [12] 1806 	mov	a,#0x33
      005084 F0               [24] 1807 	movx	@dptr,a
      005085 90 0F D5         [24] 1808 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0004)
      005088 74 44            [12] 1809 	mov	a,#0x44
      00508A F0               [24] 1810 	movx	@dptr,a
      00508B 90 0F D6         [24] 1811 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0005)
      00508E 74 55            [12] 1812 	mov	a,#0x55
      005090 F0               [24] 1813 	movx	@dptr,a
                                   1814 ;	trial_webserver.c:231: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      005091 90 0F D7         [24] 1815 	mov	dptr,#_makeTcpSynAck_target_mac_10000_129
      005094 74 F8            [12] 1816 	mov	a,#0xf8
      005096 F0               [24] 1817 	movx	@dptr,a
      005097 90 0F D8         [24] 1818 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0001)
      00509A 74 75            [12] 1819 	mov	a,#0x75
      00509C F0               [24] 1820 	movx	@dptr,a
      00509D 90 0F D9         [24] 1821 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0002)
      0050A0 74 A4            [12] 1822 	mov	a,#0xa4
      0050A2 F0               [24] 1823 	movx	@dptr,a
      0050A3 90 0F DA         [24] 1824 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0003)
      0050A6 74 8C            [12] 1825 	mov	a,#0x8c
      0050A8 F0               [24] 1826 	movx	@dptr,a
      0050A9 90 0F DB         [24] 1827 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0004)
      0050AC 74 41            [12] 1828 	mov	a,#0x41
      0050AE F0               [24] 1829 	movx	@dptr,a
      0050AF 90 0F DC         [24] 1830 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0005)
      0050B2 74 31            [12] 1831 	mov	a,#0x31
      0050B4 F0               [24] 1832 	movx	@dptr,a
                                   1833 ;	trial_webserver.c:232: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0050B5 90 0F DD         [24] 1834 	mov	dptr,#_makeTcpSynAck_device_ip_10000_129
      0050B8 74 C0            [12] 1835 	mov	a,#0xc0
      0050BA F0               [24] 1836 	movx	@dptr,a
      0050BB 90 0F DE         [24] 1837 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0001)
      0050BE 74 A8            [12] 1838 	mov	a,#0xa8
      0050C0 F0               [24] 1839 	movx	@dptr,a
      0050C1 90 0F DF         [24] 1840 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0002)
      0050C4 74 01            [12] 1841 	mov	a,#0x01
      0050C6 F0               [24] 1842 	movx	@dptr,a
      0050C7 90 0F E0         [24] 1843 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0003)
      0050CA 74 64            [12] 1844 	mov	a,#0x64
      0050CC F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	trial_webserver.c:233: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0050CD 90 0F E1         [24] 1847 	mov	dptr,#_makeTcpSynAck_target_ip_10000_129
      0050D0 74 C0            [12] 1848 	mov	a,#0xc0
      0050D2 F0               [24] 1849 	movx	@dptr,a
      0050D3 90 0F E2         [24] 1850 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0001)
      0050D6 74 A8            [12] 1851 	mov	a,#0xa8
      0050D8 F0               [24] 1852 	movx	@dptr,a
      0050D9 90 0F E3         [24] 1853 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0002)
      0050DC 74 01            [12] 1854 	mov	a,#0x01
      0050DE F0               [24] 1855 	movx	@dptr,a
      0050DF 90 0F E4         [24] 1856 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0003)
      0050E2 F0               [24] 1857 	movx	@dptr,a
                                   1858 ;	trial_webserver.c:234: printf("makeTcpSynAck\n\r");
      0050E3 74 C7            [12] 1859 	mov	a,#___str_2
      0050E5 C0 E0            [24] 1860 	push	acc
      0050E7 74 74            [12] 1861 	mov	a,#(___str_2 >> 8)
      0050E9 C0 E0            [24] 1862 	push	acc
      0050EB 74 80            [12] 1863 	mov	a,#0x80
      0050ED C0 E0            [24] 1864 	push	acc
      0050EF 12 60 38         [24] 1865 	lcall	_printf
      0050F2 15 81            [12] 1866 	dec	sp
      0050F4 15 81            [12] 1867 	dec	sp
      0050F6 15 81            [12] 1868 	dec	sp
                                   1869 ;	trial_webserver.c:237: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0050F8 90 10 3C         [24] 1870 	mov	dptr,#_memmove_PARM_2
      0050FB 74 B9            [12] 1871 	mov	a,#_buffer
      0050FD F0               [24] 1872 	movx	@dptr,a
      0050FE 74 09            [12] 1873 	mov	a,#(_buffer >> 8)
      005100 A3               [24] 1874 	inc	dptr
      005101 F0               [24] 1875 	movx	@dptr,a
      005102 E4               [12] 1876 	clr	a
      005103 A3               [24] 1877 	inc	dptr
      005104 F0               [24] 1878 	movx	@dptr,a
      005105 90 10 3F         [24] 1879 	mov	dptr,#_memmove_PARM_3
      005108 74 36            [12] 1880 	mov	a,#0x36
      00510A F0               [24] 1881 	movx	@dptr,a
      00510B E4               [12] 1882 	clr	a
      00510C A3               [24] 1883 	inc	dptr
      00510D F0               [24] 1884 	movx	@dptr,a
      00510E 90 09 BA         [24] 1885 	mov	dptr,#(_buffer + 0x0001)
      005111 F5 F0            [12] 1886 	mov	b,a
      005113 12 5B E1         [24] 1887 	lcall	_memmove
                                   1888 ;	trial_webserver.c:238: buffer[0] = 0x0E;
      005116 90 09 B9         [24] 1889 	mov	dptr,#_buffer
      005119 74 0E            [12] 1890 	mov	a,#0x0e
      00511B F0               [24] 1891 	movx	@dptr,a
                                   1892 ;	trial_webserver.c:240: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      00511C 90 10 30         [24] 1893 	mov	dptr,#___memcpy_PARM_2
      00511F 74 C0            [12] 1894 	mov	a,#(_buffer + 0x0007)
      005121 F0               [24] 1895 	movx	@dptr,a
      005122 74 09            [12] 1896 	mov	a,#((_buffer + 0x0007) >> 8)
      005124 A3               [24] 1897 	inc	dptr
      005125 F0               [24] 1898 	movx	@dptr,a
      005126 E4               [12] 1899 	clr	a
      005127 A3               [24] 1900 	inc	dptr
      005128 F0               [24] 1901 	movx	@dptr,a
      005129 90 10 33         [24] 1902 	mov	dptr,#___memcpy_PARM_3
      00512C 74 06            [12] 1903 	mov	a,#0x06
      00512E F0               [24] 1904 	movx	@dptr,a
      00512F E4               [12] 1905 	clr	a
      005130 A3               [24] 1906 	inc	dptr
      005131 F0               [24] 1907 	movx	@dptr,a
      005132 90 09 BA         [24] 1908 	mov	dptr,#(_buffer + 0x0001)
      005135 F5 F0            [12] 1909 	mov	b,a
      005137 12 5B 2A         [24] 1910 	lcall	___memcpy
                                   1911 ;	trial_webserver.c:241: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      00513A 90 10 30         [24] 1912 	mov	dptr,#___memcpy_PARM_2
      00513D 74 D1            [12] 1913 	mov	a,#_makeTcpSynAck_device_mac_10000_129
      00513F F0               [24] 1914 	movx	@dptr,a
      005140 74 0F            [12] 1915 	mov	a,#(_makeTcpSynAck_device_mac_10000_129 >> 8)
      005142 A3               [24] 1916 	inc	dptr
      005143 F0               [24] 1917 	movx	@dptr,a
      005144 E4               [12] 1918 	clr	a
      005145 A3               [24] 1919 	inc	dptr
      005146 F0               [24] 1920 	movx	@dptr,a
      005147 90 10 33         [24] 1921 	mov	dptr,#___memcpy_PARM_3
      00514A 74 06            [12] 1922 	mov	a,#0x06
      00514C F0               [24] 1923 	movx	@dptr,a
      00514D E4               [12] 1924 	clr	a
      00514E A3               [24] 1925 	inc	dptr
      00514F F0               [24] 1926 	movx	@dptr,a
      005150 90 09 C0         [24] 1927 	mov	dptr,#(_buffer + 0x0007)
      005153 F5 F0            [12] 1928 	mov	b,a
      005155 12 5B 2A         [24] 1929 	lcall	___memcpy
                                   1930 ;	trial_webserver.c:244: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005158 90 10 30         [24] 1931 	mov	dptr,#___memcpy_PARM_2
      00515B 74 D4            [12] 1932 	mov	a,#(_buffer + 0x001b)
      00515D F0               [24] 1933 	movx	@dptr,a
      00515E 74 09            [12] 1934 	mov	a,#((_buffer + 0x001b) >> 8)
      005160 A3               [24] 1935 	inc	dptr
      005161 F0               [24] 1936 	movx	@dptr,a
      005162 E4               [12] 1937 	clr	a
      005163 A3               [24] 1938 	inc	dptr
      005164 F0               [24] 1939 	movx	@dptr,a
      005165 90 10 33         [24] 1940 	mov	dptr,#___memcpy_PARM_3
      005168 74 04            [12] 1941 	mov	a,#0x04
      00516A F0               [24] 1942 	movx	@dptr,a
      00516B E4               [12] 1943 	clr	a
      00516C A3               [24] 1944 	inc	dptr
      00516D F0               [24] 1945 	movx	@dptr,a
      00516E 90 09 D8         [24] 1946 	mov	dptr,#(_buffer + 0x001f)
      005171 F5 F0            [12] 1947 	mov	b,a
      005173 12 5B 2A         [24] 1948 	lcall	___memcpy
                                   1949 ;	trial_webserver.c:245: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      005176 90 10 30         [24] 1950 	mov	dptr,#___memcpy_PARM_2
      005179 74 DD            [12] 1951 	mov	a,#_makeTcpSynAck_device_ip_10000_129
      00517B F0               [24] 1952 	movx	@dptr,a
      00517C 74 0F            [12] 1953 	mov	a,#(_makeTcpSynAck_device_ip_10000_129 >> 8)
      00517E A3               [24] 1954 	inc	dptr
      00517F F0               [24] 1955 	movx	@dptr,a
      005180 E4               [12] 1956 	clr	a
      005181 A3               [24] 1957 	inc	dptr
      005182 F0               [24] 1958 	movx	@dptr,a
      005183 90 10 33         [24] 1959 	mov	dptr,#___memcpy_PARM_3
      005186 74 04            [12] 1960 	mov	a,#0x04
      005188 F0               [24] 1961 	movx	@dptr,a
      005189 E4               [12] 1962 	clr	a
      00518A A3               [24] 1963 	inc	dptr
      00518B F0               [24] 1964 	movx	@dptr,a
      00518C 90 09 D4         [24] 1965 	mov	dptr,#(_buffer + 0x001b)
      00518F F5 F0            [12] 1966 	mov	b,a
      005191 12 5B 2A         [24] 1967 	lcall	___memcpy
                                   1968 ;	trial_webserver.c:248: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      005194 90 09 DC         [24] 1969 	mov	dptr,#(_buffer + 0x0023)
      005197 E0               [24] 1970 	movx	a,@dptr
      005198 FE               [12] 1971 	mov	r6,a
      005199 7F 00            [12] 1972 	mov	r7,#0x00
      00519B 90 09 DD         [24] 1973 	mov	dptr,#(_buffer + 0x0024)
      00519E E0               [24] 1974 	movx	a,@dptr
      00519F 7C 00            [12] 1975 	mov	r4,#0x00
      0051A1 42 07            [12] 1976 	orl	ar7,a
      0051A3 EC               [12] 1977 	mov	a,r4
      0051A4 42 06            [12] 1978 	orl	ar6,a
                                   1979 ;	trial_webserver.c:250: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      0051A6 90 09 DE         [24] 1980 	mov	dptr,#(_buffer + 0x0025)
      0051A9 E0               [24] 1981 	movx	a,@dptr
      0051AA FC               [12] 1982 	mov	r4,a
      0051AB 7D 00            [12] 1983 	mov	r5,#0x00
      0051AD 90 09 DF         [24] 1984 	mov	dptr,#(_buffer + 0x0026)
      0051B0 E0               [24] 1985 	movx	a,@dptr
      0051B1 7A 00            [12] 1986 	mov	r2,#0x00
      0051B3 42 05            [12] 1987 	orl	ar5,a
      0051B5 EA               [12] 1988 	mov	a,r2
      0051B6 42 04            [12] 1989 	orl	ar4,a
                                   1990 ;	trial_webserver.c:252: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0051B8 8C 03            [24] 1991 	mov	ar3,r4
      0051BA 90 09 DC         [24] 1992 	mov	dptr,#(_buffer + 0x0023)
      0051BD EB               [12] 1993 	mov	a,r3
      0051BE F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	trial_webserver.c:253: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0051BF 90 09 DD         [24] 1996 	mov	dptr,#(_buffer + 0x0024)
      0051C2 ED               [12] 1997 	mov	a,r5
      0051C3 F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	trial_webserver.c:254: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0051C4 8E 05            [24] 2000 	mov	ar5,r6
      0051C6 90 09 DE         [24] 2001 	mov	dptr,#(_buffer + 0x0025)
      0051C9 ED               [12] 2002 	mov	a,r5
      0051CA F0               [24] 2003 	movx	@dptr,a
                                   2004 ;	trial_webserver.c:255: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0051CB 90 09 DF         [24] 2005 	mov	dptr,#(_buffer + 0x0026)
      0051CE EF               [12] 2006 	mov	a,r7
      0051CF F0               [24] 2007 	movx	@dptr,a
                                   2008 ;	trial_webserver.c:264: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      0051D0 90 09 E0         [24] 2009 	mov	dptr,#(_buffer + 0x0027)
      0051D3 E0               [24] 2010 	movx	a,@dptr
      0051D4 FF               [12] 2011 	mov	r7,a
      0051D5 7E 00            [12] 2012 	mov	r6,#0x00
      0051D7 7D 00            [12] 2013 	mov	r5,#0x00
      0051D9 8F 04            [24] 2014 	mov	ar4,r7
      0051DB 7F 00            [12] 2015 	mov	r7,#0x00
      0051DD 90 09 E1         [24] 2016 	mov	dptr,#(_buffer + 0x0028)
      0051E0 E0               [24] 2017 	movx	a,@dptr
      0051E1 F8               [12] 2018 	mov	r0,a
      0051E2 79 00            [12] 2019 	mov	r1,#0x00
      0051E4 89 03            [24] 2020 	mov	ar3,r1
      0051E6 88 02            [24] 2021 	mov	ar2,r0
      0051E8 E4               [12] 2022 	clr	a
      0051E9 42 07            [12] 2023 	orl	ar7,a
      0051EB E9               [12] 2024 	mov	a,r1
      0051EC 42 06            [12] 2025 	orl	ar6,a
      0051EE EA               [12] 2026 	mov	a,r2
      0051EF 42 05            [12] 2027 	orl	ar5,a
      0051F1 EB               [12] 2028 	mov	a,r3
      0051F2 42 04            [12] 2029 	orl	ar4,a
      0051F4 90 09 E2         [24] 2030 	mov	dptr,#(_buffer + 0x0029)
      0051F7 E0               [24] 2031 	movx	a,@dptr
      0051F8 F8               [12] 2032 	mov	r0,a
      0051F9 79 00            [12] 2033 	mov	r1,#0x00
      0051FB 7A 00            [12] 2034 	mov	r2,#0x00
      0051FD 8A 03            [24] 2035 	mov	ar3,r2
      0051FF 89 02            [24] 2036 	mov	ar2,r1
      005201 88 01            [24] 2037 	mov	ar1,r0
      005203 E4               [12] 2038 	clr	a
      005204 42 07            [12] 2039 	orl	ar7,a
      005206 E9               [12] 2040 	mov	a,r1
      005207 42 06            [12] 2041 	orl	ar6,a
      005209 EA               [12] 2042 	mov	a,r2
      00520A 42 05            [12] 2043 	orl	ar5,a
      00520C EB               [12] 2044 	mov	a,r3
      00520D 42 04            [12] 2045 	orl	ar4,a
      00520F 90 09 E3         [24] 2046 	mov	dptr,#(_buffer + 0x002a)
      005212 E0               [24] 2047 	movx	a,@dptr
      005213 F8               [12] 2048 	mov	r0,a
      005214 E4               [12] 2049 	clr	a
      005215 F9               [12] 2050 	mov	r1,a
      005216 FA               [12] 2051 	mov	r2,a
      005217 FB               [12] 2052 	mov	r3,a
      005218 E8               [12] 2053 	mov	a,r0
      005219 42 07            [12] 2054 	orl	ar7,a
      00521B E9               [12] 2055 	mov	a,r1
      00521C 42 06            [12] 2056 	orl	ar6,a
      00521E EA               [12] 2057 	mov	a,r2
      00521F 42 05            [12] 2058 	orl	ar5,a
      005221 EB               [12] 2059 	mov	a,r3
      005222 42 04            [12] 2060 	orl	ar4,a
                                   2061 ;	trial_webserver.c:268: printf("clientSeqNum = %ld\n\r", clientSeqNum);
      005224 C0 07            [24] 2062 	push	ar7
      005226 C0 06            [24] 2063 	push	ar6
      005228 C0 05            [24] 2064 	push	ar5
      00522A C0 04            [24] 2065 	push	ar4
      00522C C0 07            [24] 2066 	push	ar7
      00522E C0 06            [24] 2067 	push	ar6
      005230 C0 05            [24] 2068 	push	ar5
      005232 C0 04            [24] 2069 	push	ar4
      005234 74 D7            [12] 2070 	mov	a,#___str_3
      005236 C0 E0            [24] 2071 	push	acc
      005238 74 74            [12] 2072 	mov	a,#(___str_3 >> 8)
      00523A C0 E0            [24] 2073 	push	acc
      00523C 74 80            [12] 2074 	mov	a,#0x80
      00523E C0 E0            [24] 2075 	push	acc
      005240 12 60 38         [24] 2076 	lcall	_printf
      005243 E5 81            [12] 2077 	mov	a,sp
      005245 24 F9            [12] 2078 	add	a,#0xf9
      005247 F5 81            [12] 2079 	mov	sp,a
      005249 D0 04            [24] 2080 	pop	ar4
      00524B D0 05            [24] 2081 	pop	ar5
      00524D D0 06            [24] 2082 	pop	ar6
      00524F D0 07            [24] 2083 	pop	ar7
                                   2084 ;	trial_webserver.c:270: uint32_t ackNum = clientSeqNum + 1;
      005251 0F               [12] 2085 	inc	r7
      005252 BF 00 09         [24] 2086 	cjne	r7,#0x00,00103$
      005255 0E               [12] 2087 	inc	r6
      005256 BE 00 05         [24] 2088 	cjne	r6,#0x00,00103$
      005259 0D               [12] 2089 	inc	r5
      00525A BD 00 01         [24] 2090 	cjne	r5,#0x00,00103$
      00525D 0C               [12] 2091 	inc	r4
      00525E                       2092 00103$:
                                   2093 ;	trial_webserver.c:272: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      00525E 90 09 E0         [24] 2094 	mov	dptr,#(_buffer + 0x0027)
      005261 E4               [12] 2095 	clr	a
      005262 F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	trial_webserver.c:273: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      005263 90 09 E1         [24] 2098 	mov	dptr,#(_buffer + 0x0028)
      005266 F0               [24] 2099 	movx	@dptr,a
                                   2100 ;	trial_webserver.c:274: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005267 90 09 E2         [24] 2101 	mov	dptr,#(_buffer + 0x0029)
      00526A 74 03            [12] 2102 	mov	a,#0x03
      00526C F0               [24] 2103 	movx	@dptr,a
                                   2104 ;	trial_webserver.c:275: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      00526D 90 09 E3         [24] 2105 	mov	dptr,#(_buffer + 0x002a)
      005270 74 E8            [12] 2106 	mov	a,#0xe8
      005272 F0               [24] 2107 	movx	@dptr,a
                                   2108 ;	trial_webserver.c:276: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      005273 8C 03            [24] 2109 	mov	ar3,r4
      005275 90 09 E4         [24] 2110 	mov	dptr,#(_buffer + 0x002b)
      005278 EB               [12] 2111 	mov	a,r3
      005279 F0               [24] 2112 	movx	@dptr,a
                                   2113 ;	trial_webserver.c:277: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      00527A 8D 03            [24] 2114 	mov	ar3,r5
      00527C 90 09 E5         [24] 2115 	mov	dptr,#(_buffer + 0x002c)
      00527F EB               [12] 2116 	mov	a,r3
      005280 F0               [24] 2117 	movx	@dptr,a
                                   2118 ;	trial_webserver.c:278: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005281 8E 03            [24] 2119 	mov	ar3,r6
      005283 90 09 E6         [24] 2120 	mov	dptr,#(_buffer + 0x002d)
      005286 EB               [12] 2121 	mov	a,r3
      005287 F0               [24] 2122 	movx	@dptr,a
                                   2123 ;	trial_webserver.c:279: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      005288 90 09 E7         [24] 2124 	mov	dptr,#(_buffer + 0x002e)
      00528B EF               [12] 2125 	mov	a,r7
      00528C F0               [24] 2126 	movx	@dptr,a
                                   2127 ;	trial_webserver.c:283: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00528D 90 09 CA         [24] 2128 	mov	dptr,#(_buffer + 0x0011)
      005290 E4               [12] 2129 	clr	a
      005291 F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	trial_webserver.c:284: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005292 90 09 CB         [24] 2132 	mov	dptr,#(_buffer + 0x0012)
      005295 74 28            [12] 2133 	mov	a,#0x28
      005297 F0               [24] 2134 	movx	@dptr,a
                                   2135 ;	trial_webserver.c:287: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
      005298 90 09 E9         [24] 2136 	mov	dptr,#(_buffer + 0x0030)
      00529B 74 12            [12] 2137 	mov	a,#0x12
      00529D F0               [24] 2138 	movx	@dptr,a
                                   2139 ;	trial_webserver.c:288: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      00529E 90 09 EA         [24] 2140 	mov	dptr,#(_buffer + 0x0031)
      0052A1 74 FF            [12] 2141 	mov	a,#0xff
      0052A3 F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	trial_webserver.c:289: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0052A4 90 09 EB         [24] 2144 	mov	dptr,#(_buffer + 0x0032)
      0052A7 F0               [24] 2145 	movx	@dptr,a
                                   2146 ;	trial_webserver.c:290: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0052A8 90 09 E8         [24] 2147 	mov	dptr,#(_buffer + 0x002f)
      0052AB 74 50            [12] 2148 	mov	a,#0x50
      0052AD F0               [24] 2149 	movx	@dptr,a
                                   2150 ;	trial_webserver.c:293: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0052AE 90 09 BA         [24] 2151 	mov	dptr,#(_buffer + 0x0001)
      0052B1 75 F0 00         [24] 2152 	mov	b, #0x00
      0052B4 12 3B 4B         [24] 2153 	lcall	_calculateIPChecksum
                                   2154 ;	trial_webserver.c:294: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0052B7 90 09 BA         [24] 2155 	mov	dptr,#(_buffer + 0x0001)
      0052BA 75 F0 00         [24] 2156 	mov	b, #0x00
      0052BD 12 3C B5         [24] 2157 	lcall	_calculateTcpChecksum
                                   2158 ;	trial_webserver.c:298: transmit_tcp_packet(buffer, 1 + 54);
      0052C0 90 09 AC         [24] 2159 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0052C3 74 37            [12] 2160 	mov	a,#0x37
      0052C5 F0               [24] 2161 	movx	@dptr,a
      0052C6 E4               [12] 2162 	clr	a
      0052C7 A3               [24] 2163 	inc	dptr
      0052C8 F0               [24] 2164 	movx	@dptr,a
      0052C9 90 09 B9         [24] 2165 	mov	dptr,#_buffer
      0052CC F5 F0            [12] 2166 	mov	b,a
      0052CE 12 48 D2         [24] 2167 	lcall	_transmit_tcp_packet
                                   2168 ;	trial_webserver.c:301: connectionState = SYN_RECEIVED;
      0052D1 90 14 85         [24] 2169 	mov	dptr,#_connectionState
      0052D4 74 01            [12] 2170 	mov	a,#0x01
      0052D6 F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	trial_webserver.c:302: }
      0052D7 22               [24] 2173 	ret
                                   2174 ;------------------------------------------------------------
                                   2175 ;Allocation info for local variables in function 'makeTcpAck'
                                   2176 ;------------------------------------------------------------
                                   2177 ;device_mac                Allocated with name '_makeTcpAck_device_mac_10000_134'
                                   2178 ;target_mac                Allocated with name '_makeTcpAck_target_mac_10000_134'
                                   2179 ;device_ip                 Allocated with name '_makeTcpAck_device_ip_10000_134'
                                   2180 ;target_ip                 Allocated with name '_makeTcpAck_target_ip_10000_134'
                                   2181 ;------------------------------------------------------------
                                   2182 ;	trial_webserver.c:305: void makeTcpAck() {
                                   2183 ;	-----------------------------------------
                                   2184 ;	 function makeTcpAck
                                   2185 ;	-----------------------------------------
      0052D8                       2186 _makeTcpAck:
                                   2187 ;	trial_webserver.c:306: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      0052D8 90 0F E5         [24] 2188 	mov	dptr,#_makeTcpAck_device_mac_10000_134
      0052DB 74 02            [12] 2189 	mov	a,#0x02
      0052DD F0               [24] 2190 	movx	@dptr,a
      0052DE 90 0F E6         [24] 2191 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0001)
      0052E1 74 11            [12] 2192 	mov	a,#0x11
      0052E3 F0               [24] 2193 	movx	@dptr,a
      0052E4 90 0F E7         [24] 2194 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0002)
      0052E7 23               [12] 2195 	rl	a
      0052E8 F0               [24] 2196 	movx	@dptr,a
      0052E9 90 0F E8         [24] 2197 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0003)
      0052EC 74 33            [12] 2198 	mov	a,#0x33
      0052EE F0               [24] 2199 	movx	@dptr,a
      0052EF 90 0F E9         [24] 2200 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0004)
      0052F2 74 44            [12] 2201 	mov	a,#0x44
      0052F4 F0               [24] 2202 	movx	@dptr,a
      0052F5 90 0F EA         [24] 2203 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0005)
      0052F8 74 55            [12] 2204 	mov	a,#0x55
      0052FA F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	trial_webserver.c:307: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0052FB 90 0F EB         [24] 2207 	mov	dptr,#_makeTcpAck_target_mac_10000_134
      0052FE 74 F8            [12] 2208 	mov	a,#0xf8
      005300 F0               [24] 2209 	movx	@dptr,a
      005301 90 0F EC         [24] 2210 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0001)
      005304 74 75            [12] 2211 	mov	a,#0x75
      005306 F0               [24] 2212 	movx	@dptr,a
      005307 90 0F ED         [24] 2213 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0002)
      00530A 74 A4            [12] 2214 	mov	a,#0xa4
      00530C F0               [24] 2215 	movx	@dptr,a
      00530D 90 0F EE         [24] 2216 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0003)
      005310 74 8C            [12] 2217 	mov	a,#0x8c
      005312 F0               [24] 2218 	movx	@dptr,a
      005313 90 0F EF         [24] 2219 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0004)
      005316 74 41            [12] 2220 	mov	a,#0x41
      005318 F0               [24] 2221 	movx	@dptr,a
      005319 90 0F F0         [24] 2222 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0005)
      00531C 74 31            [12] 2223 	mov	a,#0x31
      00531E F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	trial_webserver.c:308: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      00531F 90 0F F1         [24] 2226 	mov	dptr,#_makeTcpAck_device_ip_10000_134
      005322 74 C0            [12] 2227 	mov	a,#0xc0
      005324 F0               [24] 2228 	movx	@dptr,a
      005325 90 0F F2         [24] 2229 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0001)
      005328 74 A8            [12] 2230 	mov	a,#0xa8
      00532A F0               [24] 2231 	movx	@dptr,a
      00532B 90 0F F3         [24] 2232 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0002)
      00532E 74 01            [12] 2233 	mov	a,#0x01
      005330 F0               [24] 2234 	movx	@dptr,a
      005331 90 0F F4         [24] 2235 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0003)
      005334 74 64            [12] 2236 	mov	a,#0x64
      005336 F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	trial_webserver.c:309: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      005337 90 0F F5         [24] 2239 	mov	dptr,#_makeTcpAck_target_ip_10000_134
      00533A 74 C0            [12] 2240 	mov	a,#0xc0
      00533C F0               [24] 2241 	movx	@dptr,a
      00533D 90 0F F6         [24] 2242 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0001)
      005340 74 A8            [12] 2243 	mov	a,#0xa8
      005342 F0               [24] 2244 	movx	@dptr,a
      005343 90 0F F7         [24] 2245 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0002)
      005346 74 01            [12] 2246 	mov	a,#0x01
      005348 F0               [24] 2247 	movx	@dptr,a
      005349 90 0F F8         [24] 2248 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0003)
      00534C F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	trial_webserver.c:310: printf("tcpack\n\r");
      00534D 74 EC            [12] 2251 	mov	a,#___str_4
      00534F C0 E0            [24] 2252 	push	acc
      005351 74 74            [12] 2253 	mov	a,#(___str_4 >> 8)
      005353 C0 E0            [24] 2254 	push	acc
      005355 74 80            [12] 2255 	mov	a,#0x80
      005357 C0 E0            [24] 2256 	push	acc
      005359 12 60 38         [24] 2257 	lcall	_printf
      00535C 15 81            [12] 2258 	dec	sp
      00535E 15 81            [12] 2259 	dec	sp
      005360 15 81            [12] 2260 	dec	sp
                                   2261 ;	trial_webserver.c:311: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005362 90 10 3C         [24] 2262 	mov	dptr,#_memmove_PARM_2
      005365 74 B9            [12] 2263 	mov	a,#_buffer
      005367 F0               [24] 2264 	movx	@dptr,a
      005368 74 09            [12] 2265 	mov	a,#(_buffer >> 8)
      00536A A3               [24] 2266 	inc	dptr
      00536B F0               [24] 2267 	movx	@dptr,a
      00536C E4               [12] 2268 	clr	a
      00536D A3               [24] 2269 	inc	dptr
      00536E F0               [24] 2270 	movx	@dptr,a
      00536F 90 10 3F         [24] 2271 	mov	dptr,#_memmove_PARM_3
      005372 74 36            [12] 2272 	mov	a,#0x36
      005374 F0               [24] 2273 	movx	@dptr,a
      005375 E4               [12] 2274 	clr	a
      005376 A3               [24] 2275 	inc	dptr
      005377 F0               [24] 2276 	movx	@dptr,a
      005378 90 09 BA         [24] 2277 	mov	dptr,#(_buffer + 0x0001)
      00537B F5 F0            [12] 2278 	mov	b,a
      00537D 12 5B E1         [24] 2279 	lcall	_memmove
                                   2280 ;	trial_webserver.c:314: buffer[0] = 0x0E;
      005380 90 09 B9         [24] 2281 	mov	dptr,#_buffer
      005383 74 0E            [12] 2282 	mov	a,#0x0e
      005385 F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	trial_webserver.c:315: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
      005386 90 09 E9         [24] 2285 	mov	dptr,#(_buffer + 0x0030)
      005389 74 10            [12] 2286 	mov	a,#0x10
      00538B F0               [24] 2287 	movx	@dptr,a
                                   2288 ;	trial_webserver.c:316: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
      00538C 90 09 AC         [24] 2289 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00538F 74 37            [12] 2290 	mov	a,#0x37
      005391 F0               [24] 2291 	movx	@dptr,a
      005392 E4               [12] 2292 	clr	a
      005393 A3               [24] 2293 	inc	dptr
      005394 F0               [24] 2294 	movx	@dptr,a
      005395 90 09 B9         [24] 2295 	mov	dptr,#_buffer
      005398 F5 F0            [12] 2296 	mov	b,a
                                   2297 ;	trial_webserver.c:317: }
      00539A 02 48 D2         [24] 2298 	ljmp	_transmit_tcp_packet
                                   2299 ;------------------------------------------------------------
                                   2300 ;Allocation info for local variables in function 'makeTcpFinPshAck'
                                   2301 ;------------------------------------------------------------
                                   2302 ;device_mac                Allocated with name '_makeTcpFinPshAck_device_mac_10000_135'
                                   2303 ;target_mac                Allocated with name '_makeTcpFinPshAck_target_mac_10000_135'
                                   2304 ;device_ip                 Allocated with name '_makeTcpFinPshAck_device_ip_10000_135'
                                   2305 ;target_ip                 Allocated with name '_makeTcpFinPshAck_target_ip_10000_135'
                                   2306 ;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_136'
                                   2307 ;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_136'
                                   2308 ;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_137'
                                   2309 ;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_137'
                                   2310 ;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_138'
                                   2311 ;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_138'
                                   2312 ;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_138'
                                   2313 ;------------------------------------------------------------
                                   2314 ;	trial_webserver.c:319: void makeTcpFinPshAck() {
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function makeTcpFinPshAck
                                   2317 ;	-----------------------------------------
      00539D                       2318 _makeTcpFinPshAck:
                                   2319 ;	trial_webserver.c:320: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      00539D 90 0F F9         [24] 2320 	mov	dptr,#_makeTcpFinPshAck_device_mac_10000_135
      0053A0 74 02            [12] 2321 	mov	a,#0x02
      0053A2 F0               [24] 2322 	movx	@dptr,a
      0053A3 90 0F FA         [24] 2323 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0001)
      0053A6 74 11            [12] 2324 	mov	a,#0x11
      0053A8 F0               [24] 2325 	movx	@dptr,a
      0053A9 90 0F FB         [24] 2326 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0002)
      0053AC 23               [12] 2327 	rl	a
      0053AD F0               [24] 2328 	movx	@dptr,a
      0053AE 90 0F FC         [24] 2329 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0003)
      0053B1 74 33            [12] 2330 	mov	a,#0x33
      0053B3 F0               [24] 2331 	movx	@dptr,a
      0053B4 90 0F FD         [24] 2332 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0004)
      0053B7 74 44            [12] 2333 	mov	a,#0x44
      0053B9 F0               [24] 2334 	movx	@dptr,a
      0053BA 90 0F FE         [24] 2335 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0005)
      0053BD 74 55            [12] 2336 	mov	a,#0x55
      0053BF F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	trial_webserver.c:321: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0053C0 90 0F FF         [24] 2339 	mov	dptr,#_makeTcpFinPshAck_target_mac_10000_135
      0053C3 74 F8            [12] 2340 	mov	a,#0xf8
      0053C5 F0               [24] 2341 	movx	@dptr,a
      0053C6 90 10 00         [24] 2342 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0001)
      0053C9 74 75            [12] 2343 	mov	a,#0x75
      0053CB F0               [24] 2344 	movx	@dptr,a
      0053CC 90 10 01         [24] 2345 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0002)
      0053CF 74 A4            [12] 2346 	mov	a,#0xa4
      0053D1 F0               [24] 2347 	movx	@dptr,a
      0053D2 90 10 02         [24] 2348 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0003)
      0053D5 74 8C            [12] 2349 	mov	a,#0x8c
      0053D7 F0               [24] 2350 	movx	@dptr,a
      0053D8 90 10 03         [24] 2351 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0004)
      0053DB 74 41            [12] 2352 	mov	a,#0x41
      0053DD F0               [24] 2353 	movx	@dptr,a
      0053DE 90 10 04         [24] 2354 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0005)
      0053E1 74 31            [12] 2355 	mov	a,#0x31
      0053E3 F0               [24] 2356 	movx	@dptr,a
                                   2357 ;	trial_webserver.c:322: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0053E4 90 10 05         [24] 2358 	mov	dptr,#_makeTcpFinPshAck_device_ip_10000_135
      0053E7 74 C0            [12] 2359 	mov	a,#0xc0
      0053E9 F0               [24] 2360 	movx	@dptr,a
      0053EA 90 10 06         [24] 2361 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0001)
      0053ED 74 A8            [12] 2362 	mov	a,#0xa8
      0053EF F0               [24] 2363 	movx	@dptr,a
      0053F0 90 10 07         [24] 2364 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0002)
      0053F3 74 01            [12] 2365 	mov	a,#0x01
      0053F5 F0               [24] 2366 	movx	@dptr,a
      0053F6 90 10 08         [24] 2367 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0003)
      0053F9 74 64            [12] 2368 	mov	a,#0x64
      0053FB F0               [24] 2369 	movx	@dptr,a
                                   2370 ;	trial_webserver.c:323: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0053FC 90 10 09         [24] 2371 	mov	dptr,#_makeTcpFinPshAck_target_ip_10000_135
      0053FF 74 C0            [12] 2372 	mov	a,#0xc0
      005401 F0               [24] 2373 	movx	@dptr,a
      005402 90 10 0A         [24] 2374 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0001)
      005405 74 A8            [12] 2375 	mov	a,#0xa8
      005407 F0               [24] 2376 	movx	@dptr,a
      005408 90 10 0B         [24] 2377 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0002)
      00540B 74 01            [12] 2378 	mov	a,#0x01
      00540D F0               [24] 2379 	movx	@dptr,a
      00540E 90 10 0C         [24] 2380 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0003)
      005411 F0               [24] 2381 	movx	@dptr,a
                                   2382 ;	trial_webserver.c:324: printf("makeTcpFinPshAck\n\r");
      005412 74 70            [12] 2383 	mov	a,#___str_6
      005414 C0 E0            [24] 2384 	push	acc
      005416 74 78            [12] 2385 	mov	a,#(___str_6 >> 8)
      005418 C0 E0            [24] 2386 	push	acc
      00541A 74 80            [12] 2387 	mov	a,#0x80
      00541C C0 E0            [24] 2388 	push	acc
      00541E 12 60 38         [24] 2389 	lcall	_printf
      005421 15 81            [12] 2390 	dec	sp
      005423 15 81            [12] 2391 	dec	sp
      005425 15 81            [12] 2392 	dec	sp
                                   2393 ;	trial_webserver.c:327: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005427 90 10 3C         [24] 2394 	mov	dptr,#_memmove_PARM_2
      00542A 74 B9            [12] 2395 	mov	a,#_buffer
      00542C F0               [24] 2396 	movx	@dptr,a
      00542D 74 09            [12] 2397 	mov	a,#(_buffer >> 8)
      00542F A3               [24] 2398 	inc	dptr
      005430 F0               [24] 2399 	movx	@dptr,a
      005431 E4               [12] 2400 	clr	a
      005432 A3               [24] 2401 	inc	dptr
      005433 F0               [24] 2402 	movx	@dptr,a
      005434 90 10 3F         [24] 2403 	mov	dptr,#_memmove_PARM_3
      005437 74 36            [12] 2404 	mov	a,#0x36
      005439 F0               [24] 2405 	movx	@dptr,a
      00543A E4               [12] 2406 	clr	a
      00543B A3               [24] 2407 	inc	dptr
      00543C F0               [24] 2408 	movx	@dptr,a
      00543D 90 09 BA         [24] 2409 	mov	dptr,#(_buffer + 0x0001)
      005440 F5 F0            [12] 2410 	mov	b,a
      005442 12 5B E1         [24] 2411 	lcall	_memmove
                                   2412 ;	trial_webserver.c:328: buffer[0] = 0x0E;
      005445 90 09 B9         [24] 2413 	mov	dptr,#_buffer
      005448 74 0E            [12] 2414 	mov	a,#0x0e
      00544A F0               [24] 2415 	movx	@dptr,a
                                   2416 ;	trial_webserver.c:331: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      00544B 90 10 30         [24] 2417 	mov	dptr,#___memcpy_PARM_2
      00544E 74 C0            [12] 2418 	mov	a,#(_buffer + 0x0007)
      005450 F0               [24] 2419 	movx	@dptr,a
      005451 74 09            [12] 2420 	mov	a,#((_buffer + 0x0007) >> 8)
      005453 A3               [24] 2421 	inc	dptr
      005454 F0               [24] 2422 	movx	@dptr,a
      005455 E4               [12] 2423 	clr	a
      005456 A3               [24] 2424 	inc	dptr
      005457 F0               [24] 2425 	movx	@dptr,a
      005458 90 10 33         [24] 2426 	mov	dptr,#___memcpy_PARM_3
      00545B 74 06            [12] 2427 	mov	a,#0x06
      00545D F0               [24] 2428 	movx	@dptr,a
      00545E E4               [12] 2429 	clr	a
      00545F A3               [24] 2430 	inc	dptr
      005460 F0               [24] 2431 	movx	@dptr,a
      005461 90 09 BA         [24] 2432 	mov	dptr,#(_buffer + 0x0001)
      005464 F5 F0            [12] 2433 	mov	b,a
      005466 12 5B 2A         [24] 2434 	lcall	___memcpy
                                   2435 ;	trial_webserver.c:332: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005469 90 10 30         [24] 2436 	mov	dptr,#___memcpy_PARM_2
      00546C 74 F9            [12] 2437 	mov	a,#_makeTcpFinPshAck_device_mac_10000_135
      00546E F0               [24] 2438 	movx	@dptr,a
      00546F 74 0F            [12] 2439 	mov	a,#(_makeTcpFinPshAck_device_mac_10000_135 >> 8)
      005471 A3               [24] 2440 	inc	dptr
      005472 F0               [24] 2441 	movx	@dptr,a
      005473 E4               [12] 2442 	clr	a
      005474 A3               [24] 2443 	inc	dptr
      005475 F0               [24] 2444 	movx	@dptr,a
      005476 90 10 33         [24] 2445 	mov	dptr,#___memcpy_PARM_3
      005479 74 06            [12] 2446 	mov	a,#0x06
      00547B F0               [24] 2447 	movx	@dptr,a
      00547C E4               [12] 2448 	clr	a
      00547D A3               [24] 2449 	inc	dptr
      00547E F0               [24] 2450 	movx	@dptr,a
      00547F 90 09 C0         [24] 2451 	mov	dptr,#(_buffer + 0x0007)
      005482 F5 F0            [12] 2452 	mov	b,a
      005484 12 5B 2A         [24] 2453 	lcall	___memcpy
                                   2454 ;	trial_webserver.c:335: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005487 90 10 30         [24] 2455 	mov	dptr,#___memcpy_PARM_2
      00548A 74 D4            [12] 2456 	mov	a,#(_buffer + 0x001b)
      00548C F0               [24] 2457 	movx	@dptr,a
      00548D 74 09            [12] 2458 	mov	a,#((_buffer + 0x001b) >> 8)
      00548F A3               [24] 2459 	inc	dptr
      005490 F0               [24] 2460 	movx	@dptr,a
      005491 E4               [12] 2461 	clr	a
      005492 A3               [24] 2462 	inc	dptr
      005493 F0               [24] 2463 	movx	@dptr,a
      005494 90 10 33         [24] 2464 	mov	dptr,#___memcpy_PARM_3
      005497 74 04            [12] 2465 	mov	a,#0x04
      005499 F0               [24] 2466 	movx	@dptr,a
      00549A E4               [12] 2467 	clr	a
      00549B A3               [24] 2468 	inc	dptr
      00549C F0               [24] 2469 	movx	@dptr,a
      00549D 90 09 D8         [24] 2470 	mov	dptr,#(_buffer + 0x001f)
      0054A0 F5 F0            [12] 2471 	mov	b,a
      0054A2 12 5B 2A         [24] 2472 	lcall	___memcpy
                                   2473 ;	trial_webserver.c:336: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      0054A5 90 10 30         [24] 2474 	mov	dptr,#___memcpy_PARM_2
      0054A8 74 05            [12] 2475 	mov	a,#_makeTcpFinPshAck_device_ip_10000_135
      0054AA F0               [24] 2476 	movx	@dptr,a
      0054AB 74 10            [12] 2477 	mov	a,#(_makeTcpFinPshAck_device_ip_10000_135 >> 8)
      0054AD A3               [24] 2478 	inc	dptr
      0054AE F0               [24] 2479 	movx	@dptr,a
      0054AF E4               [12] 2480 	clr	a
      0054B0 A3               [24] 2481 	inc	dptr
      0054B1 F0               [24] 2482 	movx	@dptr,a
      0054B2 90 10 33         [24] 2483 	mov	dptr,#___memcpy_PARM_3
      0054B5 74 04            [12] 2484 	mov	a,#0x04
      0054B7 F0               [24] 2485 	movx	@dptr,a
      0054B8 E4               [12] 2486 	clr	a
      0054B9 A3               [24] 2487 	inc	dptr
      0054BA F0               [24] 2488 	movx	@dptr,a
      0054BB 90 09 D4         [24] 2489 	mov	dptr,#(_buffer + 0x001b)
      0054BE F5 F0            [12] 2490 	mov	b,a
      0054C0 12 5B 2A         [24] 2491 	lcall	___memcpy
                                   2492 ;	trial_webserver.c:339: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      0054C3 90 09 DC         [24] 2493 	mov	dptr,#(_buffer + 0x0023)
      0054C6 E0               [24] 2494 	movx	a,@dptr
      0054C7 FE               [12] 2495 	mov	r6,a
      0054C8 7F 00            [12] 2496 	mov	r7,#0x00
      0054CA 90 09 DD         [24] 2497 	mov	dptr,#(_buffer + 0x0024)
      0054CD E0               [24] 2498 	movx	a,@dptr
      0054CE 7C 00            [12] 2499 	mov	r4,#0x00
      0054D0 42 07            [12] 2500 	orl	ar7,a
      0054D2 EC               [12] 2501 	mov	a,r4
      0054D3 42 06            [12] 2502 	orl	ar6,a
                                   2503 ;	trial_webserver.c:341: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      0054D5 90 09 DE         [24] 2504 	mov	dptr,#(_buffer + 0x0025)
      0054D8 E0               [24] 2505 	movx	a,@dptr
      0054D9 FC               [12] 2506 	mov	r4,a
      0054DA 7D 00            [12] 2507 	mov	r5,#0x00
      0054DC 90 09 DF         [24] 2508 	mov	dptr,#(_buffer + 0x0026)
      0054DF E0               [24] 2509 	movx	a,@dptr
      0054E0 7A 00            [12] 2510 	mov	r2,#0x00
      0054E2 42 05            [12] 2511 	orl	ar5,a
      0054E4 EA               [12] 2512 	mov	a,r2
      0054E5 42 04            [12] 2513 	orl	ar4,a
                                   2514 ;	trial_webserver.c:343: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0054E7 8C 03            [24] 2515 	mov	ar3,r4
      0054E9 90 09 DC         [24] 2516 	mov	dptr,#(_buffer + 0x0023)
      0054EC EB               [12] 2517 	mov	a,r3
      0054ED F0               [24] 2518 	movx	@dptr,a
                                   2519 ;	trial_webserver.c:344: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0054EE 90 09 DD         [24] 2520 	mov	dptr,#(_buffer + 0x0024)
      0054F1 ED               [12] 2521 	mov	a,r5
      0054F2 F0               [24] 2522 	movx	@dptr,a
                                   2523 ;	trial_webserver.c:345: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0054F3 8E 05            [24] 2524 	mov	ar5,r6
      0054F5 90 09 DE         [24] 2525 	mov	dptr,#(_buffer + 0x0025)
      0054F8 ED               [12] 2526 	mov	a,r5
      0054F9 F0               [24] 2527 	movx	@dptr,a
                                   2528 ;	trial_webserver.c:346: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0054FA 90 09 DF         [24] 2529 	mov	dptr,#(_buffer + 0x0026)
      0054FD EF               [12] 2530 	mov	a,r7
      0054FE F0               [24] 2531 	movx	@dptr,a
                                   2532 ;	trial_webserver.c:349: uint32_t serverSeqNum = prevSeq;
      0054FF 90 09 B1         [24] 2533 	mov	dptr,#_prevSeq
      005502 E0               [24] 2534 	movx	a,@dptr
      005503 FC               [12] 2535 	mov	r4,a
      005504 A3               [24] 2536 	inc	dptr
      005505 E0               [24] 2537 	movx	a,@dptr
      005506 FD               [12] 2538 	mov	r5,a
      005507 A3               [24] 2539 	inc	dptr
      005508 E0               [24] 2540 	movx	a,@dptr
      005509 FE               [12] 2541 	mov	r6,a
      00550A A3               [24] 2542 	inc	dptr
      00550B E0               [24] 2543 	movx	a,@dptr
      00550C FF               [12] 2544 	mov	r7,a
      00550D 90 10 0D         [24] 2545 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_137
      005510 EC               [12] 2546 	mov	a,r4
      005511 F0               [24] 2547 	movx	@dptr,a
      005512 ED               [12] 2548 	mov	a,r5
      005513 A3               [24] 2549 	inc	dptr
      005514 F0               [24] 2550 	movx	@dptr,a
      005515 EE               [12] 2551 	mov	a,r6
      005516 A3               [24] 2552 	inc	dptr
      005517 F0               [24] 2553 	movx	@dptr,a
      005518 EF               [12] 2554 	mov	a,r7
      005519 A3               [24] 2555 	inc	dptr
      00551A F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	trial_webserver.c:350: uint32_t ackNum = prevAck;
      00551B 90 09 B5         [24] 2558 	mov	dptr,#_prevAck
      00551E E0               [24] 2559 	movx	a,@dptr
      00551F F8               [12] 2560 	mov	r0,a
      005520 A3               [24] 2561 	inc	dptr
      005521 E0               [24] 2562 	movx	a,@dptr
      005522 F9               [12] 2563 	mov	r1,a
      005523 A3               [24] 2564 	inc	dptr
      005524 E0               [24] 2565 	movx	a,@dptr
      005525 FA               [12] 2566 	mov	r2,a
      005526 A3               [24] 2567 	inc	dptr
      005527 E0               [24] 2568 	movx	a,@dptr
      005528 FB               [12] 2569 	mov	r3,a
      005529 90 10 11         [24] 2570 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_137
      00552C E8               [12] 2571 	mov	a,r0
      00552D F0               [24] 2572 	movx	@dptr,a
      00552E E9               [12] 2573 	mov	a,r1
      00552F A3               [24] 2574 	inc	dptr
      005530 F0               [24] 2575 	movx	@dptr,a
      005531 EA               [12] 2576 	mov	a,r2
      005532 A3               [24] 2577 	inc	dptr
      005533 F0               [24] 2578 	movx	@dptr,a
      005534 EB               [12] 2579 	mov	a,r3
      005535 A3               [24] 2580 	inc	dptr
      005536 F0               [24] 2581 	movx	@dptr,a
                                   2582 ;	trial_webserver.c:352: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      005537 8F 04            [24] 2583 	mov	ar4,r7
      005539 90 09 E0         [24] 2584 	mov	dptr,#(_buffer + 0x0027)
      00553C EC               [12] 2585 	mov	a,r4
      00553D F0               [24] 2586 	movx	@dptr,a
                                   2587 ;	trial_webserver.c:353: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      00553E 90 10 0D         [24] 2588 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_137
      005541 E0               [24] 2589 	movx	a,@dptr
      005542 FC               [12] 2590 	mov	r4,a
      005543 A3               [24] 2591 	inc	dptr
      005544 E0               [24] 2592 	movx	a,@dptr
      005545 FD               [12] 2593 	mov	r5,a
      005546 A3               [24] 2594 	inc	dptr
      005547 E0               [24] 2595 	movx	a,@dptr
      005548 FE               [12] 2596 	mov	r6,a
      005549 A3               [24] 2597 	inc	dptr
      00554A E0               [24] 2598 	movx	a,@dptr
      00554B 8E 03            [24] 2599 	mov	ar3,r6
      00554D 90 09 E1         [24] 2600 	mov	dptr,#(_buffer + 0x0028)
      005550 EB               [12] 2601 	mov	a,r3
      005551 F0               [24] 2602 	movx	@dptr,a
                                   2603 ;	trial_webserver.c:354: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005552 8D 03            [24] 2604 	mov	ar3,r5
      005554 90 09 E2         [24] 2605 	mov	dptr,#(_buffer + 0x0029)
      005557 EB               [12] 2606 	mov	a,r3
      005558 F0               [24] 2607 	movx	@dptr,a
                                   2608 ;	trial_webserver.c:355: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005559 90 09 E3         [24] 2609 	mov	dptr,#(_buffer + 0x002a)
      00555C EC               [12] 2610 	mov	a,r4
      00555D F0               [24] 2611 	movx	@dptr,a
                                   2612 ;	trial_webserver.c:356: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      00555E 90 10 11         [24] 2613 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_137
      005561 E0               [24] 2614 	movx	a,@dptr
      005562 FC               [12] 2615 	mov	r4,a
      005563 A3               [24] 2616 	inc	dptr
      005564 E0               [24] 2617 	movx	a,@dptr
      005565 FD               [12] 2618 	mov	r5,a
      005566 A3               [24] 2619 	inc	dptr
      005567 E0               [24] 2620 	movx	a,@dptr
      005568 FE               [12] 2621 	mov	r6,a
      005569 A3               [24] 2622 	inc	dptr
      00556A E0               [24] 2623 	movx	a,@dptr
      00556B 90 09 E4         [24] 2624 	mov	dptr,#(_buffer + 0x002b)
      00556E F0               [24] 2625 	movx	@dptr,a
                                   2626 ;	trial_webserver.c:357: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      00556F 8E 03            [24] 2627 	mov	ar3,r6
      005571 90 09 E5         [24] 2628 	mov	dptr,#(_buffer + 0x002c)
      005574 EB               [12] 2629 	mov	a,r3
      005575 F0               [24] 2630 	movx	@dptr,a
                                   2631 ;	trial_webserver.c:358: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005576 8D 03            [24] 2632 	mov	ar3,r5
      005578 90 09 E6         [24] 2633 	mov	dptr,#(_buffer + 0x002d)
      00557B EB               [12] 2634 	mov	a,r3
      00557C F0               [24] 2635 	movx	@dptr,a
                                   2636 ;	trial_webserver.c:359: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      00557D 90 09 E7         [24] 2637 	mov	dptr,#(_buffer + 0x002e)
      005580 EC               [12] 2638 	mov	a,r4
      005581 F0               [24] 2639 	movx	@dptr,a
                                   2640 ;	trial_webserver.c:362: const char *html_payload =
                                   2641 ;	trial_webserver.c:385: uint16_t dataLength = strlen(html_payload);
      005582 90 74 F5         [24] 2642 	mov	dptr,#___str_5
      005585 75 F0 80         [24] 2643 	mov	b, #0x80
      005588 12 6A 42         [24] 2644 	lcall	_strlen
      00558B AE 82            [24] 2645 	mov	r6, dpl
      00558D AF 83            [24] 2646 	mov	r7, dph
                                   2647 ;	trial_webserver.c:388: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
      00558F 74 28            [12] 2648 	mov	a,#0x28
      005591 2E               [12] 2649 	add	a, r6
      005592 FC               [12] 2650 	mov	r4,a
      005593 E4               [12] 2651 	clr	a
      005594 3F               [12] 2652 	addc	a, r7
                                   2653 ;	trial_webserver.c:389: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005595 90 09 CA         [24] 2654 	mov	dptr,#(_buffer + 0x0011)
      005598 F0               [24] 2655 	movx	@dptr,a
                                   2656 ;	trial_webserver.c:390: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005599 90 09 CB         [24] 2657 	mov	dptr,#(_buffer + 0x0012)
      00559C EC               [12] 2658 	mov	a,r4
      00559D F0               [24] 2659 	movx	@dptr,a
                                   2660 ;	trial_webserver.c:393: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
      00559E 90 09 E9         [24] 2661 	mov	dptr,#(_buffer + 0x0030)
      0055A1 74 19            [12] 2662 	mov	a,#0x19
      0055A3 F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	trial_webserver.c:394: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
      0055A4 90 09 EA         [24] 2665 	mov	dptr,#(_buffer + 0x0031)
      0055A7 74 FF            [12] 2666 	mov	a,#0xff
      0055A9 F0               [24] 2667 	movx	@dptr,a
                                   2668 ;	trial_webserver.c:395: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0055AA 90 09 EB         [24] 2669 	mov	dptr,#(_buffer + 0x0032)
      0055AD F0               [24] 2670 	movx	@dptr,a
                                   2671 ;	trial_webserver.c:396: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0055AE 90 09 E8         [24] 2672 	mov	dptr,#(_buffer + 0x002f)
      0055B1 74 50            [12] 2673 	mov	a,#0x50
      0055B3 F0               [24] 2674 	movx	@dptr,a
                                   2675 ;	trial_webserver.c:399: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
      0055B4 90 10 30         [24] 2676 	mov	dptr,#___memcpy_PARM_2
      0055B7 74 F5            [12] 2677 	mov	a,#___str_5
      0055B9 F0               [24] 2678 	movx	@dptr,a
      0055BA 74 74            [12] 2679 	mov	a,#(___str_5 >> 8)
      0055BC A3               [24] 2680 	inc	dptr
      0055BD F0               [24] 2681 	movx	@dptr,a
      0055BE 74 80            [12] 2682 	mov	a,#0x80
      0055C0 A3               [24] 2683 	inc	dptr
      0055C1 F0               [24] 2684 	movx	@dptr,a
      0055C2 90 10 33         [24] 2685 	mov	dptr,#___memcpy_PARM_3
      0055C5 EE               [12] 2686 	mov	a,r6
      0055C6 F0               [24] 2687 	movx	@dptr,a
      0055C7 EF               [12] 2688 	mov	a,r7
      0055C8 A3               [24] 2689 	inc	dptr
      0055C9 F0               [24] 2690 	movx	@dptr,a
      0055CA 90 09 F0         [24] 2691 	mov	dptr,#(_buffer + 0x0037)
      0055CD 75 F0 00         [24] 2692 	mov	b, #0x00
      0055D0 C0 07            [24] 2693 	push	ar7
      0055D2 C0 06            [24] 2694 	push	ar6
      0055D4 12 5B 2A         [24] 2695 	lcall	___memcpy
                                   2696 ;	trial_webserver.c:402: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0055D7 90 09 BA         [24] 2697 	mov	dptr,#(_buffer + 0x0001)
      0055DA 75 F0 00         [24] 2698 	mov	b, #0x00
      0055DD 12 3B 4B         [24] 2699 	lcall	_calculateIPChecksum
                                   2700 ;	trial_webserver.c:403: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0055E0 90 09 BA         [24] 2701 	mov	dptr,#(_buffer + 0x0001)
      0055E3 75 F0 00         [24] 2702 	mov	b, #0x00
      0055E6 12 3C B5         [24] 2703 	lcall	_calculateTcpChecksum
      0055E9 D0 06            [24] 2704 	pop	ar6
      0055EB D0 07            [24] 2705 	pop	ar7
                                   2706 ;	trial_webserver.c:406: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
      0055ED 74 37            [12] 2707 	mov	a,#0x37
      0055EF 2E               [12] 2708 	add	a, r6
      0055F0 FE               [12] 2709 	mov	r6,a
      0055F1 E4               [12] 2710 	clr	a
      0055F2 3F               [12] 2711 	addc	a, r7
      0055F3 FF               [12] 2712 	mov	r7,a
      0055F4 90 09 AC         [24] 2713 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0055F7 EE               [12] 2714 	mov	a,r6
      0055F8 F0               [24] 2715 	movx	@dptr,a
      0055F9 EF               [12] 2716 	mov	a,r7
      0055FA A3               [24] 2717 	inc	dptr
      0055FB F0               [24] 2718 	movx	@dptr,a
      0055FC 90 09 B9         [24] 2719 	mov	dptr,#_buffer
      0055FF 75 F0 00         [24] 2720 	mov	b, #0x00
      005602 12 48 D2         [24] 2721 	lcall	_transmit_tcp_packet
                                   2722 ;	trial_webserver.c:409: connectionState = FIN_WAIT;
      005605 90 14 85         [24] 2723 	mov	dptr,#_connectionState
      005608 74 03            [12] 2724 	mov	a,#0x03
      00560A F0               [24] 2725 	movx	@dptr,a
                                   2726 ;	trial_webserver.c:410: }
      00560B 22               [24] 2727 	ret
                                   2728 ;------------------------------------------------------------
                                   2729 ;Allocation info for local variables in function 'packetReceive'
                                   2730 ;------------------------------------------------------------
                                   2731 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_139'
                                   2732 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_139'
                                   2733 ;len                       Allocated with name '_packetReceive_len_10000_139'
                                   2734 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_141'
                                   2735 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_143'
                                   2736 ;header                    Allocated with name '_packetReceive_header_20002_145'
                                   2737 ;start                     Allocated with name '_packetReceive_start_20003_146'
                                   2738 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_147'
                                   2739 ;------------------------------------------------------------
                                   2740 ;	trial_webserver.c:415: uint16_t packetReceive()
                                   2741 ;	-----------------------------------------
                                   2742 ;	 function packetReceive
                                   2743 ;	-----------------------------------------
      00560C                       2744 _packetReceive:
                                   2745 ;	trial_webserver.c:419: uint16_t len = 0;
      00560C 90 10 18         [24] 2746 	mov	dptr,#_packetReceive_len_10000_139
      00560F E4               [12] 2747 	clr	a
      005610 F0               [24] 2748 	movx	@dptr,a
      005611 A3               [24] 2749 	inc	dptr
      005612 F0               [24] 2750 	movx	@dptr,a
                                   2751 ;	trial_webserver.c:422: if (unreleasedPacket) {
      005613 90 10 17         [24] 2752 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      005616 E0               [24] 2753 	movx	a,@dptr
      005617 60 70            [24] 2754 	jz	00105$
                                   2755 ;	trial_webserver.c:423: if (gNextPacketPtr == 0) {
      005619 90 10 15         [24] 2756 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      00561C E0               [24] 2757 	movx	a,@dptr
      00561D FE               [12] 2758 	mov	r6,a
      00561E A3               [24] 2759 	inc	dptr
      00561F E0               [24] 2760 	movx	a,@dptr
      005620 90 10 15         [24] 2761 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005623 E0               [24] 2762 	movx	a,@dptr
      005624 F5 F0            [12] 2763 	mov	b,a
      005626 A3               [24] 2764 	inc	dptr
      005627 E0               [24] 2765 	movx	a,@dptr
      005628 45 F0            [12] 2766 	orl	a,b
      00562A 70 26            [24] 2767 	jnz	00102$
                                   2768 ;	trial_webserver.c:425: spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
      00562C 90 03 7E         [24] 2769 	mov	dptr,#_spi_control_write_PARM_2
      00562F 74 0C            [12] 2770 	mov	a,#0x0c
      005631 F0               [24] 2771 	movx	@dptr,a
      005632 90 03 7F         [24] 2772 	mov	dptr,#_spi_control_write_PARM_3
      005635 74 FF            [12] 2773 	mov	a,#0xff
      005637 F0               [24] 2774 	movx	@dptr,a
      005638 75 82 00         [24] 2775 	mov	dpl, #0x00
      00563B 12 35 A0         [24] 2776 	lcall	_spi_control_write
                                   2777 ;	trial_webserver.c:426: spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
      00563E 90 03 7E         [24] 2778 	mov	dptr,#_spi_control_write_PARM_2
      005641 74 0D            [12] 2779 	mov	a,#0x0d
      005643 F0               [24] 2780 	movx	@dptr,a
      005644 90 03 7F         [24] 2781 	mov	dptr,#_spi_control_write_PARM_3
      005647 74 1B            [12] 2782 	mov	a,#0x1b
      005649 F0               [24] 2783 	movx	@dptr,a
      00564A 75 82 00         [24] 2784 	mov	dpl, #0x00
      00564D 12 35 A0         [24] 2785 	lcall	_spi_control_write
      005650 80 32            [24] 2786 	sjmp	00103$
      005652                       2787 00102$:
                                   2788 ;	trial_webserver.c:428: spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
      005652 1E               [12] 2789 	dec	r6
      005653 90 03 7E         [24] 2790 	mov	dptr,#_spi_control_write_PARM_2
      005656 74 0C            [12] 2791 	mov	a,#0x0c
      005658 F0               [24] 2792 	movx	@dptr,a
      005659 90 03 7F         [24] 2793 	mov	dptr,#_spi_control_write_PARM_3
      00565C EE               [12] 2794 	mov	a,r6
      00565D F0               [24] 2795 	movx	@dptr,a
      00565E 75 82 00         [24] 2796 	mov	dpl, #0x00
      005661 12 35 A0         [24] 2797 	lcall	_spi_control_write
                                   2798 ;	trial_webserver.c:430: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
      005664 90 10 15         [24] 2799 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005667 E0               [24] 2800 	movx	a,@dptr
      005668 FE               [12] 2801 	mov	r6,a
      005669 A3               [24] 2802 	inc	dptr
      00566A E0               [24] 2803 	movx	a,@dptr
      00566B FF               [12] 2804 	mov	r7,a
      00566C 1E               [12] 2805 	dec	r6
      00566D BE FF 01         [24] 2806 	cjne	r6,#0xff,00147$
      005670 1F               [12] 2807 	dec	r7
      005671                       2808 00147$:
      005671 8F 06            [24] 2809 	mov	ar6,r7
      005673 90 03 7E         [24] 2810 	mov	dptr,#_spi_control_write_PARM_2
      005676 74 0D            [12] 2811 	mov	a,#0x0d
      005678 F0               [24] 2812 	movx	@dptr,a
      005679 90 03 7F         [24] 2813 	mov	dptr,#_spi_control_write_PARM_3
      00567C EE               [12] 2814 	mov	a,r6
      00567D F0               [24] 2815 	movx	@dptr,a
      00567E 75 82 00         [24] 2816 	mov	dpl, #0x00
      005681 12 35 A0         [24] 2817 	lcall	_spi_control_write
      005684                       2818 00103$:
                                   2819 ;	trial_webserver.c:432: unreleasedPacket = false;
      005684 90 10 17         [24] 2820 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      005687 E4               [12] 2821 	clr	a
      005688 F0               [24] 2822 	movx	@dptr,a
      005689                       2823 00105$:
                                   2824 ;	trial_webserver.c:435: uint8_t EPKTCNT = eth_spi_read(0x19, 1);
      005689 90 03 82         [24] 2825 	mov	dptr,#_eth_spi_read_PARM_2
      00568C 74 01            [12] 2826 	mov	a,#0x01
      00568E F0               [24] 2827 	movx	@dptr,a
      00568F 75 82 19         [24] 2828 	mov	dpl, #0x19
      005692 12 35 F6         [24] 2829 	lcall	_eth_spi_read
      005695 E5 82            [12] 2830 	mov	a, dpl
                                   2831 ;	trial_webserver.c:436: if (EPKTCNT > 0) {
      005697 70 03            [24] 2832 	jnz	00148$
      005699 02 57 BA         [24] 2833 	ljmp	00112$
      00569C                       2834 00148$:
                                   2835 ;	trial_webserver.c:437: spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
      00569C 90 10 15         [24] 2836 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      00569F E0               [24] 2837 	movx	a,@dptr
      0056A0 FE               [12] 2838 	mov	r6,a
      0056A1 A3               [24] 2839 	inc	dptr
      0056A2 E0               [24] 2840 	movx	a,@dptr
      0056A3 90 03 7E         [24] 2841 	mov	dptr,#_spi_control_write_PARM_2
      0056A6 E4               [12] 2842 	clr	a
      0056A7 F0               [24] 2843 	movx	@dptr,a
      0056A8 90 03 7F         [24] 2844 	mov	dptr,#_spi_control_write_PARM_3
      0056AB EE               [12] 2845 	mov	a,r6
      0056AC F0               [24] 2846 	movx	@dptr,a
      0056AD 75 82 00         [24] 2847 	mov	dpl, #0x00
      0056B0 12 35 A0         [24] 2848 	lcall	_spi_control_write
                                   2849 ;	trial_webserver.c:438: spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
      0056B3 90 10 15         [24] 2850 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0056B6 E0               [24] 2851 	movx	a,@dptr
      0056B7 A3               [24] 2852 	inc	dptr
      0056B8 E0               [24] 2853 	movx	a,@dptr
      0056B9 FE               [12] 2854 	mov	r6,a
      0056BA 90 03 7E         [24] 2855 	mov	dptr,#_spi_control_write_PARM_2
      0056BD 74 01            [12] 2856 	mov	a,#0x01
      0056BF F0               [24] 2857 	movx	@dptr,a
      0056C0 90 03 7F         [24] 2858 	mov	dptr,#_spi_control_write_PARM_3
      0056C3 EE               [12] 2859 	mov	a,r6
      0056C4 F0               [24] 2860 	movx	@dptr,a
      0056C5 75 82 00         [24] 2861 	mov	dpl, #0x00
      0056C8 12 35 A0         [24] 2862 	lcall	_spi_control_write
                                   2863 ;	trial_webserver.c:447: spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
      0056CB 90 10 15         [24] 2864 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0056CE E0               [24] 2865 	movx	a,@dptr
      0056CF FE               [12] 2866 	mov	r6,a
      0056D0 A3               [24] 2867 	inc	dptr
      0056D1 E0               [24] 2868 	movx	a,@dptr
      0056D2 FF               [12] 2869 	mov	r7,a
                                   2870 ;	trial_webserver.c:448: (uint8_t*) &header);
      0056D3 90 03 8F         [24] 2871 	mov	dptr,#_spi_buffer_read_PARM_2
      0056D6 EE               [12] 2872 	mov	a,r6
      0056D7 F0               [24] 2873 	movx	@dptr,a
      0056D8 EF               [12] 2874 	mov	a,r7
      0056D9 A3               [24] 2875 	inc	dptr
      0056DA F0               [24] 2876 	movx	@dptr,a
      0056DB 90 03 91         [24] 2877 	mov	dptr,#_spi_buffer_read_PARM_3
      0056DE 74 1A            [12] 2878 	mov	a,#_packetReceive_header_20002_145
      0056E0 F0               [24] 2879 	movx	@dptr,a
      0056E1 74 10            [12] 2880 	mov	a,#(_packetReceive_header_20002_145 >> 8)
      0056E3 A3               [24] 2881 	inc	dptr
      0056E4 F0               [24] 2882 	movx	@dptr,a
      0056E5 E4               [12] 2883 	clr	a
      0056E6 A3               [24] 2884 	inc	dptr
      0056E7 F0               [24] 2885 	movx	@dptr,a
      0056E8 90 00 06         [24] 2886 	mov	dptr,#0x0006
      0056EB 12 38 BB         [24] 2887 	lcall	_spi_buffer_read
                                   2888 ;	trial_webserver.c:450: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
      0056EE 90 10 15         [24] 2889 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0056F1 E0               [24] 2890 	movx	a,@dptr
      0056F2 FE               [12] 2891 	mov	r6,a
      0056F3 A3               [24] 2892 	inc	dptr
      0056F4 E0               [24] 2893 	movx	a,@dptr
      0056F5 FF               [12] 2894 	mov	r7,a
      0056F6 74 06            [12] 2895 	mov	a,#0x06
      0056F8 2E               [12] 2896 	add	a, r6
      0056F9 FE               [12] 2897 	mov	r6,a
      0056FA E4               [12] 2898 	clr	a
      0056FB 3F               [12] 2899 	addc	a, r7
      0056FC FF               [12] 2900 	mov	r7,a
      0056FD 90 10 20         [24] 2901 	mov	dptr,#_packetReceive_start_20003_146
      005700 EE               [12] 2902 	mov	a,r6
      005701 F0               [24] 2903 	movx	@dptr,a
      005702 EF               [12] 2904 	mov	a,r7
      005703 A3               [24] 2905 	inc	dptr
      005704 F0               [24] 2906 	movx	@dptr,a
                                   2907 ;	trial_webserver.c:451: gNextPacketPtr = header.nextPacket;
      005705 90 10 1A         [24] 2908 	mov	dptr,#_packetReceive_header_20002_145
      005708 E0               [24] 2909 	movx	a,@dptr
      005709 FE               [12] 2910 	mov	r6,a
      00570A A3               [24] 2911 	inc	dptr
      00570B E0               [24] 2912 	movx	a,@dptr
      00570C FF               [12] 2913 	mov	r7,a
      00570D 90 10 15         [24] 2914 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005710 EE               [12] 2915 	mov	a,r6
      005711 F0               [24] 2916 	movx	@dptr,a
      005712 EF               [12] 2917 	mov	a,r7
      005713 A3               [24] 2918 	inc	dptr
      005714 F0               [24] 2919 	movx	@dptr,a
                                   2920 ;	trial_webserver.c:453: len = header.byteCount - 4; // Exclude CRC
      005715 90 10 1C         [24] 2921 	mov	dptr,#(_packetReceive_header_20002_145 + 0x0002)
      005718 E0               [24] 2922 	movx	a,@dptr
      005719 FE               [12] 2923 	mov	r6,a
      00571A A3               [24] 2924 	inc	dptr
      00571B E0               [24] 2925 	movx	a,@dptr
      00571C FF               [12] 2926 	mov	r7,a
      00571D EE               [12] 2927 	mov	a,r6
      00571E 24 FC            [12] 2928 	add	a,#0xfc
      005720 FE               [12] 2929 	mov	r6,a
      005721 EF               [12] 2930 	mov	a,r7
      005722 34 FF            [12] 2931 	addc	a,#0xff
      005724 FF               [12] 2932 	mov	r7,a
      005725 90 10 18         [24] 2933 	mov	dptr,#_packetReceive_len_10000_139
      005728 EE               [12] 2934 	mov	a,r6
      005729 F0               [24] 2935 	movx	@dptr,a
      00572A EF               [12] 2936 	mov	a,r7
      00572B A3               [24] 2937 	inc	dptr
      00572C F0               [24] 2938 	movx	@dptr,a
                                   2939 ;	trial_webserver.c:454: if (len > BUFFER_SIZE - 1)
      00572D C3               [12] 2940 	clr	c
      00572E 74 DB            [12] 2941 	mov	a,#0xdb
      005730 9E               [12] 2942 	subb	a,r6
      005731 74 05            [12] 2943 	mov	a,#0x05
      005733 9F               [12] 2944 	subb	a,r7
      005734 50 0A            [24] 2945 	jnc	00107$
                                   2946 ;	trial_webserver.c:455: len = BUFFER_SIZE - 1;
      005736 90 10 18         [24] 2947 	mov	dptr,#_packetReceive_len_10000_139
      005739 74 DB            [12] 2948 	mov	a,#0xdb
      00573B F0               [24] 2949 	movx	@dptr,a
      00573C 74 05            [12] 2950 	mov	a,#0x05
      00573E A3               [24] 2951 	inc	dptr
      00573F F0               [24] 2952 	movx	@dptr,a
      005740                       2953 00107$:
                                   2954 ;	trial_webserver.c:457: if ((header.status & 0x80) == 0)
      005740 90 10 1E         [24] 2955 	mov	dptr,#(_packetReceive_header_20002_145 + 0x0004)
      005743 E0               [24] 2956 	movx	a,@dptr
      005744 FE               [12] 2957 	mov	r6,a
      005745 A3               [24] 2958 	inc	dptr
      005746 E0               [24] 2959 	movx	a,@dptr
      005747 EE               [12] 2960 	mov	a,r6
      005748 20 E7 09         [24] 2961 	jb	acc.7,00109$
                                   2962 ;	trial_webserver.c:458: len = 0; // Invalid packet
      00574B 90 10 18         [24] 2963 	mov	dptr,#_packetReceive_len_10000_139
      00574E E4               [12] 2964 	clr	a
      00574F F0               [24] 2965 	movx	@dptr,a
      005750 A3               [24] 2966 	inc	dptr
      005751 F0               [24] 2967 	movx	@dptr,a
      005752 80 2C            [24] 2968 	sjmp	00110$
      005754                       2969 00109$:
                                   2970 ;	trial_webserver.c:460: spi_buffer_read(len, start, buffer);
      005754 90 10 18         [24] 2971 	mov	dptr,#_packetReceive_len_10000_139
      005757 E0               [24] 2972 	movx	a,@dptr
      005758 FE               [12] 2973 	mov	r6,a
      005759 A3               [24] 2974 	inc	dptr
      00575A E0               [24] 2975 	movx	a,@dptr
      00575B FF               [12] 2976 	mov	r7,a
      00575C 90 10 20         [24] 2977 	mov	dptr,#_packetReceive_start_20003_146
      00575F E0               [24] 2978 	movx	a,@dptr
      005760 FC               [12] 2979 	mov	r4,a
      005761 A3               [24] 2980 	inc	dptr
      005762 E0               [24] 2981 	movx	a,@dptr
      005763 FD               [12] 2982 	mov	r5,a
      005764 90 03 8F         [24] 2983 	mov	dptr,#_spi_buffer_read_PARM_2
      005767 EC               [12] 2984 	mov	a,r4
      005768 F0               [24] 2985 	movx	@dptr,a
      005769 ED               [12] 2986 	mov	a,r5
      00576A A3               [24] 2987 	inc	dptr
      00576B F0               [24] 2988 	movx	@dptr,a
      00576C 90 03 91         [24] 2989 	mov	dptr,#_spi_buffer_read_PARM_3
      00576F 74 B9            [12] 2990 	mov	a,#_buffer
      005771 F0               [24] 2991 	movx	@dptr,a
      005772 74 09            [12] 2992 	mov	a,#(_buffer >> 8)
      005774 A3               [24] 2993 	inc	dptr
      005775 F0               [24] 2994 	movx	@dptr,a
      005776 E4               [12] 2995 	clr	a
      005777 A3               [24] 2996 	inc	dptr
      005778 F0               [24] 2997 	movx	@dptr,a
      005779 8E 82            [24] 2998 	mov	dpl, r6
      00577B 8F 83            [24] 2999 	mov	dph, r7
      00577D 12 38 BB         [24] 3000 	lcall	_spi_buffer_read
      005780                       3001 00110$:
                                   3002 ;	trial_webserver.c:462: buffer[len] = 0; // Null-terminate
      005780 90 10 18         [24] 3003 	mov	dptr,#_packetReceive_len_10000_139
      005783 E0               [24] 3004 	movx	a,@dptr
      005784 FE               [12] 3005 	mov	r6,a
      005785 A3               [24] 3006 	inc	dptr
      005786 E0               [24] 3007 	movx	a,@dptr
      005787 FF               [12] 3008 	mov	r7,a
      005788 EE               [12] 3009 	mov	a,r6
      005789 24 B9            [12] 3010 	add	a, #_buffer
      00578B F5 82            [12] 3011 	mov	dpl,a
      00578D EF               [12] 3012 	mov	a,r7
      00578E 34 09            [12] 3013 	addc	a, #(_buffer >> 8)
      005790 F5 83            [12] 3014 	mov	dph,a
      005792 E4               [12] 3015 	clr	a
      005793 F0               [24] 3016 	movx	@dptr,a
                                   3017 ;	trial_webserver.c:463: unreleasedPacket = true;
      005794 90 10 17         [24] 3018 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      005797 04               [12] 3019 	inc	a
      005798 F0               [24] 3020 	movx	@dptr,a
                                   3021 ;	trial_webserver.c:465: uint8_t ECON2 = mac_spi_read(0x1E, 0);
      005799 90 03 87         [24] 3022 	mov	dptr,#_mac_spi_read_PARM_2
      00579C E4               [12] 3023 	clr	a
      00579D F0               [24] 3024 	movx	@dptr,a
      00579E 75 82 1E         [24] 3025 	mov	dpl, #0x1e
      0057A1 12 36 BC         [24] 3026 	lcall	_mac_spi_read
      0057A4 E5 82            [12] 3027 	mov	a, dpl
                                   3028 ;	trial_webserver.c:466: spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
      0057A6 44 40            [12] 3029 	orl	a,#0x40
      0057A8 FF               [12] 3030 	mov	r7,a
      0057A9 90 03 7E         [24] 3031 	mov	dptr,#_spi_control_write_PARM_2
      0057AC 74 1E            [12] 3032 	mov	a,#0x1e
      0057AE F0               [24] 3033 	movx	@dptr,a
      0057AF 90 03 7F         [24] 3034 	mov	dptr,#_spi_control_write_PARM_3
      0057B2 EF               [12] 3035 	mov	a,r7
      0057B3 F0               [24] 3036 	movx	@dptr,a
      0057B4 75 82 00         [24] 3037 	mov	dpl, #0x00
      0057B7 12 35 A0         [24] 3038 	lcall	_spi_control_write
      0057BA                       3039 00112$:
                                   3040 ;	trial_webserver.c:469: return len;
      0057BA 90 10 18         [24] 3041 	mov	dptr,#_packetReceive_len_10000_139
      0057BD E0               [24] 3042 	movx	a,@dptr
      0057BE FE               [12] 3043 	mov	r6,a
      0057BF A3               [24] 3044 	inc	dptr
      0057C0 E0               [24] 3045 	movx	a,@dptr
                                   3046 ;	trial_webserver.c:470: }
      0057C1 8E 82            [24] 3047 	mov	dpl,r6
      0057C3 F5 83            [12] 3048 	mov	dph,a
      0057C5 22               [24] 3049 	ret
                                   3050 ;------------------------------------------------------------
                                   3051 ;Allocation info for local variables in function 'packetLoop'
                                   3052 ;------------------------------------------------------------
                                   3053 ;plen                      Allocated with name '_packetLoop_plen_10000_149'
                                   3054 ;ethType                   Allocated with name '_packetLoop_ethType_20000_150'
                                   3055 ;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_153'
                                   3056 ;------------------------------------------------------------
                                   3057 ;	trial_webserver.c:472: void packetLoop(void)
                                   3058 ;	-----------------------------------------
                                   3059 ;	 function packetLoop
                                   3060 ;	-----------------------------------------
      0057C6                       3061 _packetLoop:
                                   3062 ;	trial_webserver.c:474: uint16_t plen = packetReceive();
      0057C6 12 56 0C         [24] 3063 	lcall	_packetReceive
      0057C9 AE 82            [24] 3064 	mov	r6, dpl
      0057CB AF 83            [24] 3065 	mov	r7, dph
                                   3066 ;	trial_webserver.c:477: if (plen > 0) {
      0057CD EE               [12] 3067 	mov	a,r6
      0057CE 4F               [12] 3068 	orl	a,r7
      0057CF 70 01            [24] 3069 	jnz	00219$
      0057D1 22               [24] 3070 	ret
      0057D2                       3071 00219$:
                                   3072 ;	trial_webserver.c:478: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
      0057D2 90 09 C5         [24] 3073 	mov	dptr,#(_buffer + 0x000c)
      0057D5 E0               [24] 3074 	movx	a,@dptr
      0057D6 FC               [12] 3075 	mov	r4,a
      0057D7 7D 00            [12] 3076 	mov	r5,#0x00
      0057D9 90 09 C6         [24] 3077 	mov	dptr,#(_buffer + 0x000d)
      0057DC E0               [24] 3078 	movx	a,@dptr
      0057DD FB               [12] 3079 	mov	r3,a
      0057DE 7A 00            [12] 3080 	mov	r2,#0x00
      0057E0 42 05            [12] 3081 	orl	ar5,a
      0057E2 EA               [12] 3082 	mov	a,r2
      0057E3 42 04            [12] 3083 	orl	ar4,a
                                   3084 ;	trial_webserver.c:479: if (ethType == ETH_TYPE_ARP) {
      0057E5 BD 06 0F         [24] 3085 	cjne	r5,#0x06,00104$
      0057E8 BC 08 0C         [24] 3086 	cjne	r4,#0x08,00104$
                                   3087 ;	trial_webserver.c:480: if (buffer[21] == 0x01) {
      0057EB 90 09 CE         [24] 3088 	mov	dptr,#(_buffer + 0x0015)
      0057EE E0               [24] 3089 	movx	a,@dptr
      0057EF FB               [12] 3090 	mov	r3,a
      0057F0 BB 01 03         [24] 3091 	cjne	r3,#0x01,00102$
                                   3092 ;	trial_webserver.c:481: makeArpReply();
                                   3093 ;	trial_webserver.c:483: return;
      0057F3 02 49 B6         [24] 3094 	ljmp	_makeArpReply
      0057F6                       3095 00102$:
      0057F6 22               [24] 3096 	ret
      0057F7                       3097 00104$:
                                   3098 ;	trial_webserver.c:486: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
      0057F7 BD 00 05         [24] 3099 	cjne	r5,#0x00,00224$
      0057FA BC 08 02         [24] 3100 	cjne	r4,#0x08,00224$
      0057FD 80 01            [24] 3101 	sjmp	00225$
      0057FF                       3102 00224$:
      0057FF 22               [24] 3103 	ret
      005800                       3104 00225$:
      005800 90 09 D0         [24] 3105 	mov	dptr,#(_buffer + 0x0017)
      005803 E0               [24] 3106 	movx	a,@dptr
      005804 FD               [12] 3107 	mov	r5,a
      005805 BD 06 02         [24] 3108 	cjne	r5,#0x06,00226$
      005808 80 01            [24] 3109 	sjmp	00227$
      00580A                       3110 00226$:
      00580A 22               [24] 3111 	ret
      00580B                       3112 00227$:
                                   3113 ;	trial_webserver.c:488: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
      00580B 90 09 E8         [24] 3114 	mov	dptr,#(_buffer + 0x002f)
      00580E E0               [24] 3115 	movx	a,@dptr
                                   3116 ;	trial_webserver.c:491: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
      00580F FD               [12] 3117 	mov	r5,a
      005810 30 E4 23         [24] 3118 	jnb	acc.4,00106$
      005813 ED               [12] 3119 	mov	a,r5
      005814 30 E0 1F         [24] 3120 	jnb	acc.0,00106$
                                   3121 ;	trial_webserver.c:492: printf("TCP(ACK_FIN) packet detected\n\r");
      005817 74 83            [12] 3122 	mov	a,#___str_7
      005819 C0 E0            [24] 3123 	push	acc
      00581B 74 78            [12] 3124 	mov	a,#(___str_7 >> 8)
      00581D C0 E0            [24] 3125 	push	acc
      00581F 74 80            [12] 3126 	mov	a,#0x80
      005821 C0 E0            [24] 3127 	push	acc
      005823 12 60 38         [24] 3128 	lcall	_printf
      005826 15 81            [12] 3129 	dec	sp
      005828 15 81            [12] 3130 	dec	sp
      00582A 15 81            [12] 3131 	dec	sp
                                   3132 ;	trial_webserver.c:493: makeTcpAck3(); // Send an acknowledgment
      00582C 12 4B 2F         [24] 3133 	lcall	_makeTcpAck3
                                   3134 ;	trial_webserver.c:494: connectionState = CLOSED;
      00582F 90 14 85         [24] 3135 	mov	dptr,#_connectionState
      005832 74 04            [12] 3136 	mov	a,#0x04
      005834 F0               [24] 3137 	movx	@dptr,a
                                   3138 ;	trial_webserver.c:496: return;
      005835 22               [24] 3139 	ret
      005836                       3140 00106$:
                                   3141 ;	trial_webserver.c:498: if ((tcpFlags & TCP_FLAG_SYN)) {
      005836 ED               [12] 3142 	mov	a,r5
      005837 30 E1 26         [24] 3143 	jnb	acc.1,00109$
                                   3144 ;	trial_webserver.c:499: printf("TCP(SYN) packet detected\n\r");
      00583A C0 07            [24] 3145 	push	ar7
      00583C C0 06            [24] 3146 	push	ar6
      00583E C0 05            [24] 3147 	push	ar5
      005840 74 A2            [12] 3148 	mov	a,#___str_8
      005842 C0 E0            [24] 3149 	push	acc
      005844 74 78            [12] 3150 	mov	a,#(___str_8 >> 8)
      005846 C0 E0            [24] 3151 	push	acc
      005848 74 80            [12] 3152 	mov	a,#0x80
      00584A C0 E0            [24] 3153 	push	acc
      00584C 12 60 38         [24] 3154 	lcall	_printf
      00584F 15 81            [12] 3155 	dec	sp
      005851 15 81            [12] 3156 	dec	sp
      005853 15 81            [12] 3157 	dec	sp
      005855 D0 05            [24] 3158 	pop	ar5
      005857 D0 06            [24] 3159 	pop	ar6
      005859 D0 07            [24] 3160 	pop	ar7
                                   3161 ;	trial_webserver.c:501: connectionState = LISTEN;
      00585B 90 14 85         [24] 3162 	mov	dptr,#_connectionState
      00585E E4               [12] 3163 	clr	a
      00585F F0               [24] 3164 	movx	@dptr,a
      005860                       3165 00109$:
                                   3166 ;	trial_webserver.c:504: switch (connectionState) {
      005860 90 14 85         [24] 3167 	mov	dptr,#_connectionState
      005863 E0               [24] 3168 	movx	a,@dptr
      005864 FC               [12] 3169 	mov  r4,a
      005865 24 FA            [12] 3170 	add	a,#0xff - 0x05
      005867 50 01            [24] 3171 	jnc	00231$
      005869 22               [24] 3172 	ret
      00586A                       3173 00231$:
      00586A EC               [12] 3174 	mov	a,r4
      00586B 2C               [12] 3175 	add	a,r4
      00586C 2C               [12] 3176 	add	a,r4
      00586D 90 58 71         [24] 3177 	mov	dptr,#00232$
      005870 73               [24] 3178 	jmp	@a+dptr
      005871                       3179 00232$:
      005871 02 58 83         [24] 3180 	ljmp	00110$
      005874 02 58 A4         [24] 3181 	ljmp	00113$
      005877 02 58 C8         [24] 3182 	ljmp	00116$
      00587A 02 59 02         [24] 3183 	ljmp	00122$
      00587D 02 59 2F         [24] 3184 	ljmp	00133$
      005880 02 59 26         [24] 3185 	ljmp	00125$
                                   3186 ;	trial_webserver.c:505: case LISTEN:
      005883                       3187 00110$:
                                   3188 ;	trial_webserver.c:506: printf("listen\n\r");
      005883 C0 05            [24] 3189 	push	ar5
      005885 74 BD            [12] 3190 	mov	a,#___str_9
      005887 C0 E0            [24] 3191 	push	acc
      005889 74 78            [12] 3192 	mov	a,#(___str_9 >> 8)
      00588B C0 E0            [24] 3193 	push	acc
      00588D 74 80            [12] 3194 	mov	a,#0x80
      00588F C0 E0            [24] 3195 	push	acc
      005891 12 60 38         [24] 3196 	lcall	_printf
      005894 15 81            [12] 3197 	dec	sp
      005896 15 81            [12] 3198 	dec	sp
      005898 15 81            [12] 3199 	dec	sp
      00589A D0 05            [24] 3200 	pop	ar5
                                   3201 ;	trial_webserver.c:507: if (tcpFlags & TCP_FLAG_SYN)
      00589C ED               [12] 3202 	mov	a,r5
      00589D 20 E1 01         [24] 3203 	jb	acc.1,00233$
      0058A0 22               [24] 3204 	ret
      0058A1                       3205 00233$:
                                   3206 ;	trial_webserver.c:508: makeTcpSynAck();
                                   3207 ;	trial_webserver.c:509: break;
      0058A1 02 50 6E         [24] 3208 	ljmp	_makeTcpSynAck
                                   3209 ;	trial_webserver.c:510: case SYN_RECEIVED:
      0058A4                       3210 00113$:
                                   3211 ;	trial_webserver.c:511: printf("syn received\n\r");
      0058A4 C0 05            [24] 3212 	push	ar5
      0058A6 74 C6            [12] 3213 	mov	a,#___str_10
      0058A8 C0 E0            [24] 3214 	push	acc
      0058AA 74 78            [12] 3215 	mov	a,#(___str_10 >> 8)
      0058AC C0 E0            [24] 3216 	push	acc
      0058AE 74 80            [12] 3217 	mov	a,#0x80
      0058B0 C0 E0            [24] 3218 	push	acc
      0058B2 12 60 38         [24] 3219 	lcall	_printf
      0058B5 15 81            [12] 3220 	dec	sp
      0058B7 15 81            [12] 3221 	dec	sp
      0058B9 15 81            [12] 3222 	dec	sp
      0058BB D0 05            [24] 3223 	pop	ar5
                                   3224 ;	trial_webserver.c:512: if (tcpFlags & TCP_FLAG_ACK)
      0058BD ED               [12] 3225 	mov	a,r5
      0058BE 30 E4 6E         [24] 3226 	jnb	acc.4,00133$
                                   3227 ;	trial_webserver.c:513: connectionState = ESTABLISHED;
      0058C1 90 14 85         [24] 3228 	mov	dptr,#_connectionState
      0058C4 74 02            [12] 3229 	mov	a,#0x02
      0058C6 F0               [24] 3230 	movx	@dptr,a
                                   3231 ;	trial_webserver.c:514: break;
                                   3232 ;	trial_webserver.c:515: case ESTABLISHED:
      0058C7 22               [24] 3233 	ret
      0058C8                       3234 00116$:
                                   3235 ;	trial_webserver.c:516: printf("established\n\r");
      0058C8 C0 07            [24] 3236 	push	ar7
      0058CA C0 06            [24] 3237 	push	ar6
      0058CC C0 05            [24] 3238 	push	ar5
      0058CE 74 D5            [12] 3239 	mov	a,#___str_11
      0058D0 C0 E0            [24] 3240 	push	acc
      0058D2 74 78            [12] 3241 	mov	a,#(___str_11 >> 8)
      0058D4 C0 E0            [24] 3242 	push	acc
      0058D6 74 80            [12] 3243 	mov	a,#0x80
      0058D8 C0 E0            [24] 3244 	push	acc
      0058DA 12 60 38         [24] 3245 	lcall	_printf
      0058DD 15 81            [12] 3246 	dec	sp
      0058DF 15 81            [12] 3247 	dec	sp
      0058E1 15 81            [12] 3248 	dec	sp
      0058E3 D0 05            [24] 3249 	pop	ar5
      0058E5 D0 06            [24] 3250 	pop	ar6
      0058E7 D0 07            [24] 3251 	pop	ar7
                                   3252 ;	trial_webserver.c:517: if (tcpFlags & TCP_FLAG_FIN) {
      0058E9 ED               [12] 3253 	mov	a,r5
      0058EA 30 E0 0A         [24] 3254 	jnb	acc.0,00120$
                                   3255 ;	trial_webserver.c:518: makeTcpAck();
      0058ED 12 52 D8         [24] 3256 	lcall	_makeTcpAck
                                   3257 ;	trial_webserver.c:519: connectionState = FIN_WAIT;
      0058F0 90 14 85         [24] 3258 	mov	dptr,#_connectionState
      0058F3 74 03            [12] 3259 	mov	a,#0x03
      0058F5 F0               [24] 3260 	movx	@dptr,a
      0058F6 22               [24] 3261 	ret
      0058F7                       3262 00120$:
                                   3263 ;	trial_webserver.c:520: } else if (plen > TCP_DATA_START_P) {
      0058F7 C3               [12] 3264 	clr	c
      0058F8 74 36            [12] 3265 	mov	a,#0x36
      0058FA 9E               [12] 3266 	subb	a,r6
      0058FB E4               [12] 3267 	clr	a
      0058FC 9F               [12] 3268 	subb	a,r7
      0058FD 50 30            [24] 3269 	jnc	00133$
                                   3270 ;	trial_webserver.c:521: makeTcpAck2();
                                   3271 ;	trial_webserver.c:524: break;
                                   3272 ;	trial_webserver.c:525: case FIN_WAIT:
      0058FF 02 4D 76         [24] 3273 	ljmp	_makeTcpAck2
      005902                       3274 00122$:
                                   3275 ;	trial_webserver.c:526: printf("fin wait\n\r");
      005902 C0 05            [24] 3276 	push	ar5
      005904 74 E3            [12] 3277 	mov	a,#___str_12
      005906 C0 E0            [24] 3278 	push	acc
      005908 74 78            [12] 3279 	mov	a,#(___str_12 >> 8)
      00590A C0 E0            [24] 3280 	push	acc
      00590C 74 80            [12] 3281 	mov	a,#0x80
      00590E C0 E0            [24] 3282 	push	acc
      005910 12 60 38         [24] 3283 	lcall	_printf
      005913 15 81            [12] 3284 	dec	sp
      005915 15 81            [12] 3285 	dec	sp
      005917 15 81            [12] 3286 	dec	sp
      005919 D0 05            [24] 3287 	pop	ar5
                                   3288 ;	trial_webserver.c:527: if (tcpFlags & TCP_FLAG_ACK)
      00591B ED               [12] 3289 	mov	a,r5
      00591C 30 E4 10         [24] 3290 	jnb	acc.4,00133$
                                   3291 ;	trial_webserver.c:528: connectionState = CLOSED;
      00591F 90 14 85         [24] 3292 	mov	dptr,#_connectionState
      005922 74 04            [12] 3293 	mov	a,#0x04
      005924 F0               [24] 3294 	movx	@dptr,a
                                   3295 ;	trial_webserver.c:529: break;
                                   3296 ;	trial_webserver.c:530: case ACK_SENT:
      005925 22               [24] 3297 	ret
      005926                       3298 00125$:
                                   3299 ;	trial_webserver.c:531: makeTcpFinPshAck();
      005926 12 53 9D         [24] 3300 	lcall	_makeTcpFinPshAck
                                   3301 ;	trial_webserver.c:532: connectionState = CLOSED;
      005929 90 14 85         [24] 3302 	mov	dptr,#_connectionState
      00592C 74 04            [12] 3303 	mov	a,#0x04
      00592E F0               [24] 3304 	movx	@dptr,a
                                   3305 ;	trial_webserver.c:536: }
      00592F                       3306 00133$:
                                   3307 ;	trial_webserver.c:542: }
      00592F 22               [24] 3308 	ret
                                   3309 	.area CSEG    (CODE)
                                   3310 	.area CONST   (CODE)
                                   3311 	.area CONST   (CODE)
      0074AA                       3312 ___str_0:
      0074AA 74 72 69 61 6C 61 72  3313 	.ascii "trialarpreply"
             70 72 65 70 6C 79
      0074B7 0A                    3314 	.db 0x0a
      0074B8 0D                    3315 	.db 0x0d
      0074B9 00                    3316 	.db 0x00
                                   3317 	.area CSEG    (CODE)
                                   3318 	.area CONST   (CODE)
      0074BA                       3319 ___str_1:
      0074BA 6D 61 6B 65 54 63 70  3320 	.ascii "makeTcpAck"
             41 63 6B
      0074C4 0A                    3321 	.db 0x0a
      0074C5 0D                    3322 	.db 0x0d
      0074C6 00                    3323 	.db 0x00
                                   3324 	.area CSEG    (CODE)
                                   3325 	.area CONST   (CODE)
      0074C7                       3326 ___str_2:
      0074C7 6D 61 6B 65 54 63 70  3327 	.ascii "makeTcpSynAck"
             53 79 6E 41 63 6B
      0074D4 0A                    3328 	.db 0x0a
      0074D5 0D                    3329 	.db 0x0d
      0074D6 00                    3330 	.db 0x00
                                   3331 	.area CSEG    (CODE)
                                   3332 	.area CONST   (CODE)
      0074D7                       3333 ___str_3:
      0074D7 63 6C 69 65 6E 74 53  3334 	.ascii "clientSeqNum = %ld"
             65 71 4E 75 6D 20 3D
             20 25 6C 64
      0074E9 0A                    3335 	.db 0x0a
      0074EA 0D                    3336 	.db 0x0d
      0074EB 00                    3337 	.db 0x00
                                   3338 	.area CSEG    (CODE)
                                   3339 	.area CONST   (CODE)
      0074EC                       3340 ___str_4:
      0074EC 74 63 70 61 63 6B     3341 	.ascii "tcpack"
      0074F2 0A                    3342 	.db 0x0a
      0074F3 0D                    3343 	.db 0x0d
      0074F4 00                    3344 	.db 0x00
                                   3345 	.area CSEG    (CODE)
                                   3346 	.area CONST   (CODE)
      0074F5                       3347 ___str_5:
      0074F5 48 54 54 50 2F 31 2E  3348 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      007504 0D                    3349 	.db 0x0d
      007505 0A                    3350 	.db 0x0a
      007506 43 6F 6E 74 65 6E 74  3351 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      00751D 0D                    3352 	.db 0x0d
      00751E 0A                    3353 	.db 0x0a
      00751F 43 6F 6E 74 65 6E 74  3354 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      007532 0D                    3355 	.db 0x0d
      007533 0A                    3356 	.db 0x0a
      007534 0D                    3357 	.db 0x0d
      007535 0A                    3358 	.db 0x0a
      007536 3C 21 44 4F 43 54 59  3359 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      007572 6D 65 74 61 20 6E 61  3360 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      0075AE 61 6C 65 3D 31 2E 30  3361 	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
             27 3E 3C 74 69 74 6C
             65 3E 45 74 68 65 72
             6E 65 74 20 57 65 62
             20 53 65 72 76 65 72
             3C 2F 74 69 74 6C 65
             3E 3C 73 74 79 6C 65
             3E 62 6F 64 79 20 7B
             66 6F 6E 74
      0075EA 2D 66 61 6D 69 6C 79  3362 	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
             3A 20 41 72 69 61 6C
             2C 20 73 61 6E 73 2D
             73 65 72 69 66 3B 20
             62 61 63 6B 67 72 6F
             75 6E 64 2D 63 6F 6C
             6F 72 3A 20 23 66 30
             66 30 66 30 3B 20 74
             65 78 74 2D
      007626 61 6C 69 67 6E 3A 20  3363 	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
             63 65 6E 74 65 72 3B
             20 70 61 64 64 69 6E
             67 3A 20 32 30 70 78
             3B 7D 68 31 20 7B 63
             6F 6C 6F 72 3A 20 23
             33 33 33 33 33 33 3B
             7D 70 20 7B 63 6F 6C
             6F 72 3A 20
      007662 23 36 36 36 36 36 36  3364 	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
             3B 7D 3C 2F 73 74 79
             6C 65 3E 3C 2F 68 65
             61 64 3E 3C 62 6F 64
             79 3E 3C 68 31 3E 45
             53 44 20 46 41 4C 4C
             20 32 30 32 34 3C 2F
             68 31 3E 3C 70 3E 45
             74 68 65 72
      00769E 6E 65 74 20 62 61 73  3365 	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
             65 64 20 57 65 62 20
             53 65 72 76 65 72 20
             66 6F 72 20 45 6D 62
             65 64 64 65 64 20 53
             79 73 74 65 6D 73 20
             2D 20 4E 41 44 47 49
             52 20 61 6E 64 20 4B
             4F 50 50 41
      0076DA 20 6D 61 64 65 20 69  3366 	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
             74 74 74 74 2C 20 6C
             65 73 73 67 6F 6F 6F
             6F 21 21 21 20 54 68
             69 73 20 77 65 62 20
             73 65 72 76 65 72 20
             73 68 6F 77 63 61 73
             65 73 20 74 68 65 20
             70 6F 77 65
      007716 72 20 6F 66 20 6D 69  3367 	.ascii "r of microcontrollers and Ethernet communication. By leverag"
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 61 6E 64 20 45 74
             68 65 72 6E 65 74 20
             63 6F 6D 6D 75 6E 69
             63 61 74 69 6F 6E 2E
             20 42 79 20 6C 65 76
             65 72 61 67
      007752 69 6E 67 20 74 68 65  3368 	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
             20 41 54 38 39 43 35
             31 52 43 32 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 20
             61 6E 64 20 74 68 65
             20 45 4E 43 32 38 4A
             36 30 20 45 74 68 65
             72 6E 65 74
      00778E 20 63 6F 6E 74 72 6F  3369 	.ascii " controller, we can serve dynamic web pages and control embe"
             6C 6C 65 72 2C 20 77
             65 20 63 61 6E 20 73
             65 72 76 65 20 64 79
             6E 61 6D 69 63 20 77
             65 62 20 70 61 67 65
             73 20 61 6E 64 20 63
             6F 6E 74 72 6F 6C 20
             65 6D 62 65
      0077CA 64 64 65 64 20 64 65  3370 	.ascii "dded devices remotely. The server allows seamless communicat"
             76 69 63 65 73 20 72
             65 6D 6F 74 65 6C 79
             2E 20 54 68 65 20 73
             65 72 76 65 72 20 61
             6C 6C 6F 77 73 20 73
             65 61 6D 6C 65 73 73
             20 63 6F 6D 6D 75 6E
             69 63 61 74
      007806 69 6F 6E 20 62 65 74  3371 	.ascii "ion between hardware and software, enabling real-time data e"
             77 65 65 6E 20 68 61
             72 64 77 61 72 65 20
             61 6E 64 20 73 6F 66
             74 77 61 72 65 2C 20
             65 6E 61 62 6C 69 6E
             67 20 72 65 61 6C 2D
             74 69 6D 65 20 64 61
             74 61 20 65
      007842 78 63 68 61 6E 67 65  3372 	.ascii "xchange across the network.</p></body></html>"
             20 61 63 72 6F 73 73
             20 74 68 65 20 6E 65
             74 77 6F 72 6B 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      00786F 00                    3373 	.db 0x00
                                   3374 	.area CSEG    (CODE)
                                   3375 	.area CONST   (CODE)
      007870                       3376 ___str_6:
      007870 6D 61 6B 65 54 63 70  3377 	.ascii "makeTcpFinPshAck"
             46 69 6E 50 73 68 41
             63 6B
      007880 0A                    3378 	.db 0x0a
      007881 0D                    3379 	.db 0x0d
      007882 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      007883                       3383 ___str_7:
      007883 54 43 50 28 41 43 4B  3384 	.ascii "TCP(ACK_FIN) packet detected"
             5F 46 49 4E 29 20 70
             61 63 6B 65 74 20 64
             65 74 65 63 74 65 64
      00789F 0A                    3385 	.db 0x0a
      0078A0 0D                    3386 	.db 0x0d
      0078A1 00                    3387 	.db 0x00
                                   3388 	.area CSEG    (CODE)
                                   3389 	.area CONST   (CODE)
      0078A2                       3390 ___str_8:
      0078A2 54 43 50 28 53 59 4E  3391 	.ascii "TCP(SYN) packet detected"
             29 20 70 61 63 6B 65
             74 20 64 65 74 65 63
             74 65 64
      0078BA 0A                    3392 	.db 0x0a
      0078BB 0D                    3393 	.db 0x0d
      0078BC 00                    3394 	.db 0x00
                                   3395 	.area CSEG    (CODE)
                                   3396 	.area CONST   (CODE)
      0078BD                       3397 ___str_9:
      0078BD 6C 69 73 74 65 6E     3398 	.ascii "listen"
      0078C3 0A                    3399 	.db 0x0a
      0078C4 0D                    3400 	.db 0x0d
      0078C5 00                    3401 	.db 0x00
                                   3402 	.area CSEG    (CODE)
                                   3403 	.area CONST   (CODE)
      0078C6                       3404 ___str_10:
      0078C6 73 79 6E 20 72 65 63  3405 	.ascii "syn received"
             65 69 76 65 64
      0078D2 0A                    3406 	.db 0x0a
      0078D3 0D                    3407 	.db 0x0d
      0078D4 00                    3408 	.db 0x00
                                   3409 	.area CSEG    (CODE)
                                   3410 	.area CONST   (CODE)
      0078D5                       3411 ___str_11:
      0078D5 65 73 74 61 62 6C 69  3412 	.ascii "established"
             73 68 65 64
      0078E0 0A                    3413 	.db 0x0a
      0078E1 0D                    3414 	.db 0x0d
      0078E2 00                    3415 	.db 0x00
                                   3416 	.area CSEG    (CODE)
                                   3417 	.area CONST   (CODE)
      0078E3                       3418 ___str_12:
      0078E3 66 69 6E 20 77 61 69  3419 	.ascii "fin wait"
             74
      0078EB 0A                    3420 	.db 0x0a
      0078EC 0D                    3421 	.db 0x0d
      0078ED 00                    3422 	.db 0x00
                                   3423 	.area CSEG    (CODE)
                                   3424 	.area XINIT   (CODE)
      0078FB                       3425 __xinit__connectionState:
      0078FB 00                    3426 	.db #0x00	; 0
                                   3427 	.area CABS    (ABS,CODE)
