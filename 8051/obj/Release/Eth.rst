                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Eth
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _external_interrupt0_isr
                                     12 	.globl _enc28j60_transmission_successful
                                     13 	.globl _enc28j60_start_transmission
                                     14 	.globl _delay_ms
                                     15 	.globl _spi_control_write
                                     16 	.globl _eth_spi_read
                                     17 	.globl _phy_spi_write
                                     18 	.globl _spi_buffer_write
                                     19 	.globl _mac_spi_read
                                     20 	.globl _enc_reset
                                     21 	.globl _printf
                                     22 	.globl _TF1
                                     23 	.globl _TR1
                                     24 	.globl _TF0
                                     25 	.globl _TR0
                                     26 	.globl _IE1
                                     27 	.globl _IT1
                                     28 	.globl _IE0
                                     29 	.globl _IT0
                                     30 	.globl _SM0
                                     31 	.globl _SM1
                                     32 	.globl _SM2
                                     33 	.globl _REN
                                     34 	.globl _TB8
                                     35 	.globl _RB8
                                     36 	.globl _TI
                                     37 	.globl _RI
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD0
                                     53 	.globl _TXD
                                     54 	.globl _RXD0
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _PS
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _BREG_F7
                                    100 	.globl _BREG_F6
                                    101 	.globl _BREG_F5
                                    102 	.globl _BREG_F4
                                    103 	.globl _BREG_F3
                                    104 	.globl _BREG_F2
                                    105 	.globl _BREG_F1
                                    106 	.globl _BREG_F0
                                    107 	.globl _P5_7
                                    108 	.globl _P5_6
                                    109 	.globl _P5_5
                                    110 	.globl _P5_4
                                    111 	.globl _P5_3
                                    112 	.globl _P5_2
                                    113 	.globl _P5_1
                                    114 	.globl _P5_0
                                    115 	.globl _P4_7
                                    116 	.globl _P4_6
                                    117 	.globl _P4_5
                                    118 	.globl _P4_4
                                    119 	.globl _P4_3
                                    120 	.globl _P4_2
                                    121 	.globl _P4_1
                                    122 	.globl _P4_0
                                    123 	.globl _PX0L
                                    124 	.globl _PT0L
                                    125 	.globl _PX1L
                                    126 	.globl _PT1L
                                    127 	.globl _PSL
                                    128 	.globl _PT2L
                                    129 	.globl _PPCL
                                    130 	.globl _EC
                                    131 	.globl _CCF0
                                    132 	.globl _CCF1
                                    133 	.globl _CCF2
                                    134 	.globl _CCF3
                                    135 	.globl _CCF4
                                    136 	.globl _CR
                                    137 	.globl _CF
                                    138 	.globl _TF2
                                    139 	.globl _EXF2
                                    140 	.globl _RCLK
                                    141 	.globl _TCLK
                                    142 	.globl _EXEN2
                                    143 	.globl _TR2
                                    144 	.globl _C_T2
                                    145 	.globl _CP_RL2
                                    146 	.globl _T2CON_7
                                    147 	.globl _T2CON_6
                                    148 	.globl _T2CON_5
                                    149 	.globl _T2CON_4
                                    150 	.globl _T2CON_3
                                    151 	.globl _T2CON_2
                                    152 	.globl _T2CON_1
                                    153 	.globl _T2CON_0
                                    154 	.globl _PT2
                                    155 	.globl _ET2
                                    156 	.globl _TMOD
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TCON
                                    162 	.globl _SP
                                    163 	.globl _SCON
                                    164 	.globl _SBUF0
                                    165 	.globl _SBUF
                                    166 	.globl _PSW
                                    167 	.globl _PCON
                                    168 	.globl _P3
                                    169 	.globl _P2
                                    170 	.globl _P1
                                    171 	.globl _P0
                                    172 	.globl _IP
                                    173 	.globl _IE
                                    174 	.globl _DP0L
                                    175 	.globl _DPL
                                    176 	.globl _DP0H
                                    177 	.globl _DPH
                                    178 	.globl _B
                                    179 	.globl _ACC
                                    180 	.globl _EECON
                                    181 	.globl _KBF
                                    182 	.globl _KBE
                                    183 	.globl _KBLS
                                    184 	.globl _BRL
                                    185 	.globl _BDRCON
                                    186 	.globl _T2MOD
                                    187 	.globl _SPDAT
                                    188 	.globl _SPSTA
                                    189 	.globl _SPCON
                                    190 	.globl _SADEN
                                    191 	.globl _SADDR
                                    192 	.globl _WDTPRG
                                    193 	.globl _WDTRST
                                    194 	.globl _P5
                                    195 	.globl _P4
                                    196 	.globl _IPH1
                                    197 	.globl _IPL1
                                    198 	.globl _IPH0
                                    199 	.globl _IPL0
                                    200 	.globl _IEN1
                                    201 	.globl _IEN0
                                    202 	.globl _CMOD
                                    203 	.globl _CL
                                    204 	.globl _CH
                                    205 	.globl _CCON
                                    206 	.globl _CCAPM4
                                    207 	.globl _CCAPM3
                                    208 	.globl _CCAPM2
                                    209 	.globl _CCAPM1
                                    210 	.globl _CCAPM0
                                    211 	.globl _CCAP4L
                                    212 	.globl _CCAP3L
                                    213 	.globl _CCAP2L
                                    214 	.globl _CCAP1L
                                    215 	.globl _CCAP0L
                                    216 	.globl _CCAP4H
                                    217 	.globl _CCAP3H
                                    218 	.globl _CCAP2H
                                    219 	.globl _CCAP1H
                                    220 	.globl _CCAP0H
                                    221 	.globl _CKCON1
                                    222 	.globl _CKCON0
                                    223 	.globl _CKRL
                                    224 	.globl _AUXR1
                                    225 	.globl _AUXR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T2CON
                                    231 	.globl _enc_buffer_init_PARM_2
                                    232 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    233 	.globl _enc28j60_set_transmit_pointers
                                    234 	.globl _wait_for_transmission_complete
                                    235 	.globl _send_arp_request
                                    236 	.globl _enc_buffer_init
                                    237 	.globl _enc_init
                                    238 	.globl _ENC_pkt_count
                                    239 	.globl _update_ERXRDPT
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                           0000E0   296 _ACC	=	0x00e0
                           0000F0   297 _B	=	0x00f0
                           000083   298 _DPH	=	0x0083
                           000083   299 _DP0H	=	0x0083
                           000082   300 _DPL	=	0x0082
                           000082   301 _DP0L	=	0x0082
                           0000A8   302 _IE	=	0x00a8
                           0000B8   303 _IP	=	0x00b8
                           000080   304 _P0	=	0x0080
                           000090   305 _P1	=	0x0090
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000087   308 _PCON	=	0x0087
                           0000D0   309 _PSW	=	0x00d0
                           000099   310 _SBUF	=	0x0099
                           000099   311 _SBUF0	=	0x0099
                           000098   312 _SCON	=	0x0098
                           000081   313 _SP	=	0x0081
                           000088   314 _TCON	=	0x0088
                           00008C   315 _TH0	=	0x008c
                           00008D   316 _TH1	=	0x008d
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           000089   319 _TMOD	=	0x0089
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           0000F0   374 _BREG_F0	=	0x00f0
                           0000F1   375 _BREG_F1	=	0x00f1
                           0000F2   376 _BREG_F2	=	0x00f2
                           0000F3   377 _BREG_F3	=	0x00f3
                           0000F4   378 _BREG_F4	=	0x00f4
                           0000F5   379 _BREG_F5	=	0x00f5
                           0000F6   380 _BREG_F6	=	0x00f6
                           0000F7   381 _BREG_F7	=	0x00f7
                           0000A8   382 _EX0	=	0x00a8
                           0000A9   383 _ET0	=	0x00a9
                           0000AA   384 _EX1	=	0x00aa
                           0000AB   385 _ET1	=	0x00ab
                           0000AC   386 _ES	=	0x00ac
                           0000AF   387 _EA	=	0x00af
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           000080   393 _P0_0	=	0x0080
                           000081   394 _P0_1	=	0x0081
                           000082   395 _P0_2	=	0x0082
                           000083   396 _P0_3	=	0x0083
                           000084   397 _P0_4	=	0x0084
                           000085   398 _P0_5	=	0x0085
                           000086   399 _P0_6	=	0x0086
                           000087   400 _P0_7	=	0x0087
                           000090   401 _P1_0	=	0x0090
                           000091   402 _P1_1	=	0x0091
                           000092   403 _P1_2	=	0x0092
                           000093   404 _P1_3	=	0x0093
                           000094   405 _P1_4	=	0x0094
                           000095   406 _P1_5	=	0x0095
                           000096   407 _P1_6	=	0x0096
                           000097   408 _P1_7	=	0x0097
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000B0   417 _P3_0	=	0x00b0
                           0000B1   418 _P3_1	=	0x00b1
                           0000B2   419 _P3_2	=	0x00b2
                           0000B3   420 _P3_3	=	0x00b3
                           0000B4   421 _P3_4	=	0x00b4
                           0000B5   422 _P3_5	=	0x00b5
                           0000B6   423 _P3_6	=	0x00b6
                           0000B7   424 _P3_7	=	0x00b7
                           0000B0   425 _RXD	=	0x00b0
                           0000B0   426 _RXD0	=	0x00b0
                           0000B1   427 _TXD	=	0x00b1
                           0000B1   428 _TXD0	=	0x00b1
                           0000B2   429 _INT0	=	0x00b2
                           0000B3   430 _INT1	=	0x00b3
                           0000B4   431 _T0	=	0x00b4
                           0000B5   432 _T1	=	0x00b5
                           0000B6   433 _WR	=	0x00b6
                           0000B7   434 _RD	=	0x00b7
                           0000D0   435 _P	=	0x00d0
                           0000D1   436 _F1	=	0x00d1
                           0000D2   437 _OV	=	0x00d2
                           0000D3   438 _RS0	=	0x00d3
                           0000D4   439 _RS1	=	0x00d4
                           0000D5   440 _F0	=	0x00d5
                           0000D6   441 _AC	=	0x00d6
                           0000D7   442 _CY	=	0x00d7
                           000098   443 _RI	=	0x0098
                           000099   444 _TI	=	0x0099
                           00009A   445 _RB8	=	0x009a
                           00009B   446 _TB8	=	0x009b
                           00009C   447 _REN	=	0x009c
                           00009D   448 _SM2	=	0x009d
                           00009E   449 _SM1	=	0x009e
                           00009F   450 _SM0	=	0x009f
                           000088   451 _IT0	=	0x0088
                           000089   452 _IE0	=	0x0089
                           00008A   453 _IT1	=	0x008a
                           00008B   454 _IE1	=	0x008b
                           00008C   455 _TR0	=	0x008c
                           00008D   456 _TF0	=	0x008d
                           00008E   457 _TR1	=	0x008e
                           00008F   458 _TF1	=	0x008f
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable register banks
                                    461 ;--------------------------------------------------------
                                    462 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        463 	.ds 8
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable bit register bank
                                    466 ;--------------------------------------------------------
                                    467 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        468 bits:
      000021                        469 	.ds 1
                           008000   470 	b0 = bits[0]
                           008100   471 	b1 = bits[1]
                           008200   472 	b2 = bits[2]
                           008300   473 	b3 = bits[3]
                           008400   474 	b4 = bits[4]
                           008500   475 	b5 = bits[5]
                           008600   476 	b6 = bits[6]
                           008700   477 	b7 = bits[7]
                                    478 ;--------------------------------------------------------
                                    479 ; internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area DSEG    (DATA)
      000008                        482 _enc_init_sloc0_1_0:
      000008                        483 	.ds 3
      00000B                        484 _enc_init_sloc1_1_0:
      00000B                        485 	.ds 3
      00000E                        486 _enc_init_sloc2_1_0:
      00000E                        487 	.ds 3
      000011                        488 _enc_init_sloc3_1_0:
      000011                        489 	.ds 3
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable items in internal ram
                                    492 ;--------------------------------------------------------
                                    493 ;--------------------------------------------------------
                                    494 ; indirectly addressable internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area ISEG    (DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; absolute internal ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area IABS    (ABS,DATA)
                                    501 	.area IABS    (ABS,DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; bit data
                                    504 ;--------------------------------------------------------
                                    505 	.area BSEG    (BIT)
      000000                        506 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        507 	.ds 1
                                    508 ;--------------------------------------------------------
                                    509 ; paged external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area PSEG    (PAG,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; uninitialized external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XSEG    (XDATA)
      000100                        516 _delay_ms_ms_10000_124:
      000100                        517 	.ds 2
      000102                        518 _delay_ms_i_20000_126:
      000102                        519 	.ds 4
      000106                        520 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        521 	.ds 2
      000108                        522 _enc28j60_set_transmit_pointers_start_address_10000_130:
      000108                        523 	.ds 2
      00010A                        524 _wait_for_transmission_complete_timeout_ms_10000_132:
      00010A                        525 	.ds 2
      00010C                        526 _send_arp_request_source_mac_10000_138:
      00010C                        527 	.ds 6
      000112                        528 _send_arp_request_dest_mac_10000_138:
      000112                        529 	.ds 6
      000118                        530 _send_arp_request_source_ip_10000_138:
      000118                        531 	.ds 4
      00011C                        532 _send_arp_request_target_ip_10000_138:
      00011C                        533 	.ds 4
      000120                        534 _send_arp_request_arp_packet_10000_138:
      000120                        535 	.ds 43
      00014B                        536 _external_interrupt0_isr_i_10000_157:
      00014B                        537 	.ds 2
      00014D                        538 _enc_buffer_init_PARM_2:
      00014D                        539 	.ds 2
      00014F                        540 _enc_buffer_init_start_address_10000_159:
      00014F                        541 	.ds 2
      000151                        542 _enc_init_mac_10000_162:
      000151                        543 	.ds 3
      000154                        544 _update_ERXRDPT_new_address_10000_169:
      000154                        545 	.ds 2
                                    546 ;--------------------------------------------------------
                                    547 ; absolute external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area XABS    (ABS,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; initialized external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XISEG   (XDATA)
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT0 (CODE)
                                    556 	.area GSINIT1 (CODE)
                                    557 	.area GSINIT2 (CODE)
                                    558 	.area GSINIT3 (CODE)
                                    559 	.area GSINIT4 (CODE)
                                    560 	.area GSINIT5 (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area CSEG    (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; global & static initialisations
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                    573 ;------------------------------------------------------------
                                    574 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
                                    575 ;------------------------------------------------------------
                                    576 ;	Eth.c:200: static int i = 0;
      002090 90 01 4B         [24]  577 	mov	dptr,#_external_interrupt0_isr_i_10000_157
      002093 E4               [12]  578 	clr	a
      002094 F0               [24]  579 	movx	@dptr,a
      002095 A3               [24]  580 	inc	dptr
      002096 F0               [24]  581 	movx	@dptr,a
                                    582 ;--------------------------------------------------------
                                    583 ; Home
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area HOME    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; code
                                    589 ;--------------------------------------------------------
                                    590 	.area CSEG    (CODE)
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'delay_ms'
                                    593 ;------------------------------------------------------------
                                    594 ;ms                        Allocated with name '_delay_ms_ms_10000_124'
                                    595 ;i                         Allocated with name '_delay_ms_i_20000_126'
                                    596 ;------------------------------------------------------------
                                    597 ;	Eth.c:48: void delay_ms(uint16_t ms)
                                    598 ;	-----------------------------------------
                                    599 ;	 function delay_ms
                                    600 ;	-----------------------------------------
      0020A5                        601 _delay_ms:
                           000007   602 	ar7 = 0x07
                           000006   603 	ar6 = 0x06
                           000005   604 	ar5 = 0x05
                           000004   605 	ar4 = 0x04
                           000003   606 	ar3 = 0x03
                           000002   607 	ar2 = 0x02
                           000001   608 	ar1 = 0x01
                           000000   609 	ar0 = 0x00
      0020A5 AF 83            [24]  610 	mov	r7,dph
      0020A7 E5 82            [12]  611 	mov	a,dpl
      0020A9 90 01 00         [24]  612 	mov	dptr,#_delay_ms_ms_10000_124
      0020AC F0               [24]  613 	movx	@dptr,a
      0020AD EF               [12]  614 	mov	a,r7
      0020AE A3               [24]  615 	inc	dptr
      0020AF F0               [24]  616 	movx	@dptr,a
                                    617 ;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020B0 90 01 02         [24]  618 	mov	dptr,#_delay_ms_i_20000_126
      0020B3 E4               [12]  619 	clr	a
      0020B4 F0               [24]  620 	movx	@dptr,a
      0020B5 A3               [24]  621 	inc	dptr
      0020B6 F0               [24]  622 	movx	@dptr,a
      0020B7 A3               [24]  623 	inc	dptr
      0020B8 F0               [24]  624 	movx	@dptr,a
      0020B9 A3               [24]  625 	inc	dptr
      0020BA F0               [24]  626 	movx	@dptr,a
      0020BB 90 01 00         [24]  627 	mov	dptr,#_delay_ms_ms_10000_124
      0020BE E0               [24]  628 	movx	a,@dptr
      0020BF FE               [12]  629 	mov	r6,a
      0020C0 A3               [24]  630 	inc	dptr
      0020C1 E0               [24]  631 	movx	a,@dptr
      0020C2 FF               [12]  632 	mov	r7,a
      0020C3                        633 00103$:
      0020C3 90 10 4C         [24]  634 	mov	dptr,#__mulint_PARM_2
      0020C6 EE               [12]  635 	mov	a,r6
      0020C7 F0               [24]  636 	movx	@dptr,a
      0020C8 EF               [12]  637 	mov	a,r7
      0020C9 A3               [24]  638 	inc	dptr
      0020CA F0               [24]  639 	movx	@dptr,a
      0020CB 90 03 E8         [24]  640 	mov	dptr,#0x03e8
      0020CE C0 07            [24]  641 	push	ar7
      0020D0 C0 06            [24]  642 	push	ar6
      0020D2 12 5F CA         [24]  643 	lcall	__mulint
      0020D5 AC 82            [24]  644 	mov	r4, dpl
      0020D7 AD 83            [24]  645 	mov	r5, dph
      0020D9 D0 06            [24]  646 	pop	ar6
      0020DB D0 07            [24]  647 	pop	ar7
      0020DD 90 01 02         [24]  648 	mov	dptr,#_delay_ms_i_20000_126
      0020E0 E0               [24]  649 	movx	a,@dptr
      0020E1 F8               [12]  650 	mov	r0,a
      0020E2 A3               [24]  651 	inc	dptr
      0020E3 E0               [24]  652 	movx	a,@dptr
      0020E4 F9               [12]  653 	mov	r1,a
      0020E5 A3               [24]  654 	inc	dptr
      0020E6 E0               [24]  655 	movx	a,@dptr
      0020E7 FA               [12]  656 	mov	r2,a
      0020E8 A3               [24]  657 	inc	dptr
      0020E9 E0               [24]  658 	movx	a,@dptr
      0020EA FB               [12]  659 	mov	r3,a
      0020EB C0 06            [24]  660 	push	ar6
      0020ED C0 07            [24]  661 	push	ar7
      0020EF 7E 00            [12]  662 	mov	r6,#0x00
      0020F1 7F 00            [12]  663 	mov	r7,#0x00
      0020F3 C3               [12]  664 	clr	c
      0020F4 E8               [12]  665 	mov	a,r0
      0020F5 9C               [12]  666 	subb	a,r4
      0020F6 E9               [12]  667 	mov	a,r1
      0020F7 9D               [12]  668 	subb	a,r5
      0020F8 EA               [12]  669 	mov	a,r2
      0020F9 9E               [12]  670 	subb	a,r6
      0020FA EB               [12]  671 	mov	a,r3
      0020FB 9F               [12]  672 	subb	a,r7
      0020FC D0 07            [24]  673 	pop	ar7
      0020FE D0 06            [24]  674 	pop	ar6
      002100 50 23            [24]  675 	jnc	00105$
      002102 90 01 02         [24]  676 	mov	dptr,#_delay_ms_i_20000_126
      002105 E0               [24]  677 	movx	a,@dptr
      002106 FA               [12]  678 	mov	r2,a
      002107 A3               [24]  679 	inc	dptr
      002108 E0               [24]  680 	movx	a,@dptr
      002109 FB               [12]  681 	mov	r3,a
      00210A A3               [24]  682 	inc	dptr
      00210B E0               [24]  683 	movx	a,@dptr
      00210C FC               [12]  684 	mov	r4,a
      00210D A3               [24]  685 	inc	dptr
      00210E E0               [24]  686 	movx	a,@dptr
      00210F FD               [12]  687 	mov	r5,a
      002110 90 01 02         [24]  688 	mov	dptr,#_delay_ms_i_20000_126
      002113 74 01            [12]  689 	mov	a,#0x01
      002115 2A               [12]  690 	add	a, r2
      002116 F0               [24]  691 	movx	@dptr,a
      002117 E4               [12]  692 	clr	a
      002118 3B               [12]  693 	addc	a, r3
      002119 A3               [24]  694 	inc	dptr
      00211A F0               [24]  695 	movx	@dptr,a
      00211B E4               [12]  696 	clr	a
      00211C 3C               [12]  697 	addc	a, r4
      00211D A3               [24]  698 	inc	dptr
      00211E F0               [24]  699 	movx	@dptr,a
      00211F E4               [12]  700 	clr	a
      002120 3D               [12]  701 	addc	a, r5
      002121 A3               [24]  702 	inc	dptr
      002122 F0               [24]  703 	movx	@dptr,a
      002123 80 9E            [24]  704 	sjmp	00103$
      002125                        705 00105$:
                                    706 ;	Eth.c:54: }
      002125 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    710 ;------------------------------------------------------------
                                    711 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_129'
                                    712 ;------------------------------------------------------------
                                    713 ;	Eth.c:56: void enc28j60_start_transmission(void)
                                    714 ;	-----------------------------------------
                                    715 ;	 function enc28j60_start_transmission
                                    716 ;	-----------------------------------------
      002126                        717 _enc28j60_start_transmission:
                                    718 ;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002126 90 03 87         [24]  719 	mov	dptr,#_mac_spi_read_PARM_2
      002129 E4               [12]  720 	clr	a
      00212A F0               [24]  721 	movx	@dptr,a
      00212B 75 82 1F         [24]  722 	mov	dpl, #0x1f
      00212E 12 36 BC         [24]  723 	lcall	_mac_spi_read
      002131 E5 82            [12]  724 	mov	a, dpl
                                    725 ;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
      002133 44 08            [12]  726 	orl	a,#0x08
      002135 FF               [12]  727 	mov	r7,a
                                    728 ;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      002136 90 03 7E         [24]  729 	mov	dptr,#_spi_control_write_PARM_2
      002139 74 1F            [12]  730 	mov	a,#0x1f
      00213B F0               [24]  731 	movx	@dptr,a
      00213C 90 03 7F         [24]  732 	mov	dptr,#_spi_control_write_PARM_3
      00213F EF               [12]  733 	mov	a,r7
      002140 F0               [24]  734 	movx	@dptr,a
      002141 75 82 00         [24]  735 	mov	dpl, #0x00
                                    736 ;	Eth.c:61: }
      002144 02 35 A0         [24]  737 	ljmp	_spi_control_write
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    740 ;------------------------------------------------------------
                                    741 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    742 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_130'
                                    743 ;------------------------------------------------------------
                                    744 ;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    745 ;	-----------------------------------------
                                    746 ;	 function enc28j60_set_transmit_pointers
                                    747 ;	-----------------------------------------
      002147                        748 _enc28j60_set_transmit_pointers:
      002147 AF 83            [24]  749 	mov	r7,dph
      002149 E5 82            [12]  750 	mov	a,dpl
      00214B 90 01 08         [24]  751 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
      00214E F0               [24]  752 	movx	@dptr,a
      00214F EF               [12]  753 	mov	a,r7
      002150 A3               [24]  754 	inc	dptr
      002151 F0               [24]  755 	movx	@dptr,a
                                    756 ;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      002152 90 01 08         [24]  757 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
      002155 E0               [24]  758 	movx	a,@dptr
      002156 FE               [12]  759 	mov	r6,a
      002157 A3               [24]  760 	inc	dptr
      002158 E0               [24]  761 	movx	a,@dptr
      002159 FF               [12]  762 	mov	r7,a
      00215A 8E 05            [24]  763 	mov	ar5,r6
      00215C 90 03 7E         [24]  764 	mov	dptr,#_spi_control_write_PARM_2
      00215F 74 04            [12]  765 	mov	a,#0x04
      002161 F0               [24]  766 	movx	@dptr,a
      002162 90 03 7F         [24]  767 	mov	dptr,#_spi_control_write_PARM_3
      002165 ED               [12]  768 	mov	a,r5
      002166 F0               [24]  769 	movx	@dptr,a
      002167 75 82 00         [24]  770 	mov	dpl, #0x00
      00216A C0 07            [24]  771 	push	ar7
      00216C C0 06            [24]  772 	push	ar6
      00216E 12 35 A0         [24]  773 	lcall	_spi_control_write
      002171 D0 06            [24]  774 	pop	ar6
      002173 D0 07            [24]  775 	pop	ar7
                                    776 ;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      002175 8F 06            [24]  777 	mov	ar6,r7
      002177 90 03 7E         [24]  778 	mov	dptr,#_spi_control_write_PARM_2
      00217A 74 05            [12]  779 	mov	a,#0x05
      00217C F0               [24]  780 	movx	@dptr,a
      00217D 90 03 7F         [24]  781 	mov	dptr,#_spi_control_write_PARM_3
      002180 EE               [12]  782 	mov	a,r6
      002181 F0               [24]  783 	movx	@dptr,a
      002182 75 82 00         [24]  784 	mov	dpl, #0x00
      002185 12 35 A0         [24]  785 	lcall	_spi_control_write
                                    786 ;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002188 90 01 06         [24]  787 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      00218B E0               [24]  788 	movx	a,@dptr
      00218C FE               [12]  789 	mov	r6,a
      00218D A3               [24]  790 	inc	dptr
      00218E E0               [24]  791 	movx	a,@dptr
      00218F FF               [12]  792 	mov	r7,a
      002190 8E 05            [24]  793 	mov	ar5,r6
      002192 90 03 7E         [24]  794 	mov	dptr,#_spi_control_write_PARM_2
      002195 74 06            [12]  795 	mov	a,#0x06
      002197 F0               [24]  796 	movx	@dptr,a
      002198 90 03 7F         [24]  797 	mov	dptr,#_spi_control_write_PARM_3
      00219B ED               [12]  798 	mov	a,r5
      00219C F0               [24]  799 	movx	@dptr,a
      00219D 75 82 00         [24]  800 	mov	dpl, #0x00
      0021A0 C0 07            [24]  801 	push	ar7
      0021A2 C0 06            [24]  802 	push	ar6
      0021A4 12 35 A0         [24]  803 	lcall	_spi_control_write
      0021A7 D0 06            [24]  804 	pop	ar6
      0021A9 D0 07            [24]  805 	pop	ar7
                                    806 ;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      0021AB 8F 06            [24]  807 	mov	ar6,r7
      0021AD 90 03 7E         [24]  808 	mov	dptr,#_spi_control_write_PARM_2
      0021B0 74 07            [12]  809 	mov	a,#0x07
      0021B2 F0               [24]  810 	movx	@dptr,a
      0021B3 90 03 7F         [24]  811 	mov	dptr,#_spi_control_write_PARM_3
      0021B6 EE               [12]  812 	mov	a,r6
      0021B7 F0               [24]  813 	movx	@dptr,a
      0021B8 75 82 00         [24]  814 	mov	dpl, #0x00
                                    815 ;	Eth.c:73: }
      0021BB 02 35 A0         [24]  816 	ljmp	_spi_control_write
                                    817 ;------------------------------------------------------------
                                    818 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    819 ;------------------------------------------------------------
                                    820 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_132'
                                    821 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_133'
                                    822 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_134'
                                    823 ;------------------------------------------------------------
                                    824 ;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                    825 ;	-----------------------------------------
                                    826 ;	 function wait_for_transmission_complete
                                    827 ;	-----------------------------------------
      0021BE                        828 _wait_for_transmission_complete:
      0021BE AF 83            [24]  829 	mov	r7,dph
      0021C0 E5 82            [12]  830 	mov	a,dpl
      0021C2 90 01 0A         [24]  831 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
      0021C5 F0               [24]  832 	movx	@dptr,a
      0021C6 EF               [12]  833 	mov	a,r7
      0021C7 A3               [24]  834 	inc	dptr
      0021C8 F0               [24]  835 	movx	@dptr,a
                                    836 ;	Eth.c:79: while (elapsed < timeout_ms) {
      0021C9 90 01 0A         [24]  837 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
      0021CC E0               [24]  838 	movx	a,@dptr
      0021CD FE               [12]  839 	mov	r6,a
      0021CE A3               [24]  840 	inc	dptr
      0021CF E0               [24]  841 	movx	a,@dptr
      0021D0 FF               [12]  842 	mov	r7,a
      0021D1 7C 00            [12]  843 	mov	r4,#0x00
      0021D3 7D 00            [12]  844 	mov	r5,#0x00
      0021D5                        845 00103$:
      0021D5 C3               [12]  846 	clr	c
      0021D6 EC               [12]  847 	mov	a,r4
      0021D7 9E               [12]  848 	subb	a,r6
      0021D8 ED               [12]  849 	mov	a,r5
      0021D9 9F               [12]  850 	subb	a,r7
      0021DA 50 41            [24]  851 	jnc	00105$
                                    852 ;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0021DC 90 03 87         [24]  853 	mov	dptr,#_mac_spi_read_PARM_2
      0021DF E4               [12]  854 	clr	a
      0021E0 F0               [24]  855 	movx	@dptr,a
      0021E1 75 82 1F         [24]  856 	mov	dpl, #0x1f
      0021E4 C0 07            [24]  857 	push	ar7
      0021E6 C0 06            [24]  858 	push	ar6
      0021E8 C0 05            [24]  859 	push	ar5
      0021EA C0 04            [24]  860 	push	ar4
      0021EC 12 36 BC         [24]  861 	lcall	_mac_spi_read
      0021EF E5 82            [12]  862 	mov	a, dpl
      0021F1 D0 04            [24]  863 	pop	ar4
      0021F3 D0 05            [24]  864 	pop	ar5
      0021F5 D0 06            [24]  865 	pop	ar6
      0021F7 D0 07            [24]  866 	pop	ar7
                                    867 ;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      0021F9 20 E3 04         [24]  868 	jb	acc.3,00102$
                                    869 ;	Eth.c:82: return true;  // Transmission completed
      0021FC 75 82 01         [24]  870 	mov	dpl, #0x01
      0021FF 22               [24]  871 	ret
      002200                        872 00102$:
                                    873 ;	Eth.c:85: delay_ms(1);  // Wait 1 ms
      002200 90 00 01         [24]  874 	mov	dptr,#0x0001
      002203 C0 07            [24]  875 	push	ar7
      002205 C0 06            [24]  876 	push	ar6
      002207 C0 05            [24]  877 	push	ar5
      002209 C0 04            [24]  878 	push	ar4
      00220B 12 20 A5         [24]  879 	lcall	_delay_ms
      00220E D0 04            [24]  880 	pop	ar4
      002210 D0 05            [24]  881 	pop	ar5
      002212 D0 06            [24]  882 	pop	ar6
      002214 D0 07            [24]  883 	pop	ar7
                                    884 ;	Eth.c:86: elapsed++;
      002216 0C               [12]  885 	inc	r4
      002217 BC 00 BB         [24]  886 	cjne	r4,#0x00,00103$
      00221A 0D               [12]  887 	inc	r5
      00221B 80 B8            [24]  888 	sjmp	00103$
      00221D                        889 00105$:
                                    890 ;	Eth.c:89: return false;  // Timed out
      00221D 75 82 00         [24]  891 	mov	dpl, #0x00
                                    892 ;	Eth.c:90: }
      002220 22               [24]  893 	ret
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    896 ;------------------------------------------------------------
                                    897 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_136'
                                    898 ;------------------------------------------------------------
                                    899 ;	Eth.c:92: bool enc28j60_transmission_successful()
                                    900 ;	-----------------------------------------
                                    901 ;	 function enc28j60_transmission_successful
                                    902 ;	-----------------------------------------
      002221                        903 _enc28j60_transmission_successful:
                                    904 ;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      002221 90 03 87         [24]  905 	mov	dptr,#_mac_spi_read_PARM_2
      002224 E4               [12]  906 	clr	a
      002225 F0               [24]  907 	movx	@dptr,a
      002226 75 82 1D         [24]  908 	mov	dpl, #0x1d
      002229 12 36 BC         [24]  909 	lcall	_mac_spi_read
                                    910 ;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      00222C E5 82            [12]  911 	mov	a,dpl
      00222E 03               [12]  912 	rr	a
      00222F 54 01            [12]  913 	anl	a,#0x01
      002231 B4 01 00         [24]  914 	cjne	a,#0x01,00103$
      002234                        915 00103$:
      002234 92 00            [24]  916 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      002236 E4               [12]  917 	clr	a
      002237 33               [12]  918 	rlc	a
      002238 F5 82            [12]  919 	mov	dpl, a
                                    920 ;	Eth.c:96: }
      00223A 22               [24]  921 	ret
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'send_arp_request'
                                    924 ;------------------------------------------------------------
                                    925 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_138'
                                    926 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_138'
                                    927 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_138'
                                    928 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_138'
                                    929 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_138'
                                    930 ;i                         Allocated with name '_send_arp_request_i_20000_139'
                                    931 ;i                         Allocated with name '_send_arp_request_i_20000_141'
                                    932 ;i                         Allocated with name '_send_arp_request_i_20000_143'
                                    933 ;i                         Allocated with name '_send_arp_request_i_20000_145'
                                    934 ;i                         Allocated with name '_send_arp_request_i_20000_147'
                                    935 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_149'
                                    936 ;start_address             Allocated with name '_send_arp_request_start_address_10001_149'
                                    937 ;end_address               Allocated with name '_send_arp_request_end_address_10002_151'
                                    938 ;------------------------------------------------------------
                                    939 ;	Eth.c:98: void send_arp_request(void)
                                    940 ;	-----------------------------------------
                                    941 ;	 function send_arp_request
                                    942 ;	-----------------------------------------
      00223B                        943 _send_arp_request:
                                    944 ;	Eth.c:102: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      00223B 90 01 0C         [24]  945 	mov	dptr,#_send_arp_request_source_mac_10000_138
      00223E 74 02            [12]  946 	mov	a,#0x02
      002240 F0               [24]  947 	movx	@dptr,a
      002241 90 01 0D         [24]  948 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0001)
      002244 74 11            [12]  949 	mov	a,#0x11
      002246 F0               [24]  950 	movx	@dptr,a
      002247 90 01 0E         [24]  951 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0002)
      00224A 23               [12]  952 	rl	a
      00224B F0               [24]  953 	movx	@dptr,a
      00224C 90 01 0F         [24]  954 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0003)
      00224F 74 33            [12]  955 	mov	a,#0x33
      002251 F0               [24]  956 	movx	@dptr,a
      002252 90 01 10         [24]  957 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0004)
      002255 74 44            [12]  958 	mov	a,#0x44
      002257 F0               [24]  959 	movx	@dptr,a
      002258 90 01 11         [24]  960 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0005)
      00225B 74 55            [12]  961 	mov	a,#0x55
      00225D F0               [24]  962 	movx	@dptr,a
                                    963 ;	Eth.c:103: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      00225E 90 01 12         [24]  964 	mov	dptr,#_send_arp_request_dest_mac_10000_138
      002261 74 F8            [12]  965 	mov	a,#0xf8
      002263 F0               [24]  966 	movx	@dptr,a
      002264 90 01 13         [24]  967 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0001)
      002267 74 75            [12]  968 	mov	a,#0x75
      002269 F0               [24]  969 	movx	@dptr,a
      00226A 90 01 14         [24]  970 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0002)
      00226D 74 A4            [12]  971 	mov	a,#0xa4
      00226F F0               [24]  972 	movx	@dptr,a
      002270 90 01 15         [24]  973 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0003)
      002273 74 8C            [12]  974 	mov	a,#0x8c
      002275 F0               [24]  975 	movx	@dptr,a
      002276 90 01 16         [24]  976 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0004)
      002279 74 41            [12]  977 	mov	a,#0x41
      00227B F0               [24]  978 	movx	@dptr,a
      00227C 90 01 17         [24]  979 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0005)
      00227F 74 31            [12]  980 	mov	a,#0x31
      002281 F0               [24]  981 	movx	@dptr,a
                                    982 ;	Eth.c:104: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002282 90 01 18         [24]  983 	mov	dptr,#_send_arp_request_source_ip_10000_138
      002285 74 C0            [12]  984 	mov	a,#0xc0
      002287 F0               [24]  985 	movx	@dptr,a
      002288 90 01 19         [24]  986 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0001)
      00228B 74 A8            [12]  987 	mov	a,#0xa8
      00228D F0               [24]  988 	movx	@dptr,a
      00228E 90 01 1A         [24]  989 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0002)
      002291 74 01            [12]  990 	mov	a,#0x01
      002293 F0               [24]  991 	movx	@dptr,a
      002294 90 01 1B         [24]  992 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0003)
      002297 74 64            [12]  993 	mov	a,#0x64
      002299 F0               [24]  994 	movx	@dptr,a
                                    995 ;	Eth.c:105: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      00229A 90 01 1C         [24]  996 	mov	dptr,#_send_arp_request_target_ip_10000_138
      00229D 74 C0            [12]  997 	mov	a,#0xc0
      00229F F0               [24]  998 	movx	@dptr,a
      0022A0 90 01 1D         [24]  999 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0001)
      0022A3 74 A8            [12] 1000 	mov	a,#0xa8
      0022A5 F0               [24] 1001 	movx	@dptr,a
      0022A6 90 01 1E         [24] 1002 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0002)
      0022A9 74 01            [12] 1003 	mov	a,#0x01
      0022AB F0               [24] 1004 	movx	@dptr,a
      0022AC 90 01 1F         [24] 1005 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0003)
      0022AF F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	Eth.c:109: arp_packet[0] = 0x0E;
      0022B0 90 01 20         [24] 1008 	mov	dptr,#_send_arp_request_arp_packet_10000_138
      0022B3 74 0E            [12] 1009 	mov	a,#0x0e
      0022B5 F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      0022B6 7E 00            [12] 1012 	mov	r6,#0x00
      0022B8 7F 00            [12] 1013 	mov	r7,#0x00
      0022BA                       1014 00115$:
      0022BA C3               [12] 1015 	clr	c
      0022BB EE               [12] 1016 	mov	a,r6
      0022BC 94 06            [12] 1017 	subb	a,#0x06
      0022BE EF               [12] 1018 	mov	a,r7
      0022BF 64 80            [12] 1019 	xrl	a,#0x80
      0022C1 94 80            [12] 1020 	subb	a,#0x80
      0022C3 50 48            [24] 1021 	jnc	00101$
                                   1022 ;	Eth.c:119: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      0022C5 8E 05            [24] 1023 	mov	ar5,r6
      0022C7 ED               [12] 1024 	mov	a,r5
      0022C8 04               [12] 1025 	inc	a
      0022C9 FC               [12] 1026 	mov	r4,a
      0022CA 33               [12] 1027 	rlc	a
      0022CB 95 E0            [12] 1028 	subb	a,acc
      0022CD FB               [12] 1029 	mov	r3,a
      0022CE EC               [12] 1030 	mov	a,r4
      0022CF 24 20            [12] 1031 	add	a, #_send_arp_request_arp_packet_10000_138
      0022D1 FC               [12] 1032 	mov	r4,a
      0022D2 EB               [12] 1033 	mov	a,r3
      0022D3 34 01            [12] 1034 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0022D5 FB               [12] 1035 	mov	r3,a
      0022D6 EE               [12] 1036 	mov	a,r6
      0022D7 24 12            [12] 1037 	add	a, #_send_arp_request_dest_mac_10000_138
      0022D9 F5 82            [12] 1038 	mov	dpl,a
      0022DB EF               [12] 1039 	mov	a,r7
      0022DC 34 01            [12] 1040 	addc	a, #(_send_arp_request_dest_mac_10000_138 >> 8)
      0022DE F5 83            [12] 1041 	mov	dph,a
      0022E0 E0               [24] 1042 	movx	a,@dptr
      0022E1 8C 82            [24] 1043 	mov	dpl,r4
      0022E3 8B 83            [24] 1044 	mov	dph,r3
      0022E5 F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	Eth.c:120: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0022E6 74 07            [12] 1047 	mov	a,#0x07
      0022E8 2D               [12] 1048 	add	a, r5
      0022E9 FD               [12] 1049 	mov	r5,a
      0022EA 33               [12] 1050 	rlc	a
      0022EB 95 E0            [12] 1051 	subb	a,acc
      0022ED FC               [12] 1052 	mov	r4,a
      0022EE ED               [12] 1053 	mov	a,r5
      0022EF 24 20            [12] 1054 	add	a, #_send_arp_request_arp_packet_10000_138
      0022F1 FD               [12] 1055 	mov	r5,a
      0022F2 EC               [12] 1056 	mov	a,r4
      0022F3 34 01            [12] 1057 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0022F5 FC               [12] 1058 	mov	r4,a
      0022F6 EE               [12] 1059 	mov	a,r6
      0022F7 24 0C            [12] 1060 	add	a, #_send_arp_request_source_mac_10000_138
      0022F9 F5 82            [12] 1061 	mov	dpl,a
      0022FB EF               [12] 1062 	mov	a,r7
      0022FC 34 01            [12] 1063 	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
      0022FE F5 83            [12] 1064 	mov	dph,a
      002300 E0               [24] 1065 	movx	a,@dptr
      002301 8D 82            [24] 1066 	mov	dpl,r5
      002303 8C 83            [24] 1067 	mov	dph,r4
      002305 F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      002306 0E               [12] 1070 	inc	r6
      002307 BE 00 B0         [24] 1071 	cjne	r6,#0x00,00115$
      00230A 0F               [12] 1072 	inc	r7
      00230B 80 AD            [24] 1073 	sjmp	00115$
      00230D                       1074 00101$:
                                   1075 ;	Eth.c:124: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      00230D 90 01 2D         [24] 1076 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000d)
      002310 74 08            [12] 1077 	mov	a,#0x08
      002312 F0               [24] 1078 	movx	@dptr,a
                                   1079 ;	Eth.c:125: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      002313 90 01 2E         [24] 1080 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000e)
      002316 74 06            [12] 1081 	mov	a,#0x06
      002318 F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	Eth.c:129: arp_packet[15] = 0x00;
      002319 90 01 2F         [24] 1084 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000f)
      00231C E4               [12] 1085 	clr	a
      00231D F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	Eth.c:130: arp_packet[16] = 0x01;
      00231E 90 01 30         [24] 1088 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0010)
      002321 04               [12] 1089 	inc	a
      002322 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	Eth.c:133: arp_packet[17] = 0x08;
      002323 90 01 31         [24] 1092 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0011)
      002326 74 08            [12] 1093 	mov	a,#0x08
      002328 F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	Eth.c:134: arp_packet[18] = 0x00;
      002329 90 01 32         [24] 1096 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0012)
      00232C E4               [12] 1097 	clr	a
      00232D F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	Eth.c:137: arp_packet[19] = 0x06;
      00232E 90 01 33         [24] 1100 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0013)
      002331 74 06            [12] 1101 	mov	a,#0x06
      002333 F0               [24] 1102 	movx	@dptr,a
                                   1103 ;	Eth.c:140: arp_packet[20] = 0x04;
      002334 90 01 34         [24] 1104 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0014)
      002337 74 04            [12] 1105 	mov	a,#0x04
      002339 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	Eth.c:143: arp_packet[21] = 0x00;
      00233A 90 01 35         [24] 1108 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0015)
      00233D E4               [12] 1109 	clr	a
      00233E F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	Eth.c:144: arp_packet[22] = 0x01;
      00233F 90 01 36         [24] 1112 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0016)
      002342 04               [12] 1113 	inc	a
      002343 F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002344 7E 00            [12] 1116 	mov	r6,#0x00
      002346 7F 00            [12] 1117 	mov	r7,#0x00
      002348                       1118 00118$:
      002348 C3               [12] 1119 	clr	c
      002349 EE               [12] 1120 	mov	a,r6
      00234A 94 06            [12] 1121 	subb	a,#0x06
      00234C EF               [12] 1122 	mov	a,r7
      00234D 64 80            [12] 1123 	xrl	a,#0x80
      00234F 94 80            [12] 1124 	subb	a,#0x80
      002351 50 29            [24] 1125 	jnc	00102$
                                   1126 ;	Eth.c:148: arp_packet[23 + i] = source_mac[i];
      002353 8E 05            [24] 1127 	mov	ar5,r6
      002355 74 17            [12] 1128 	mov	a,#0x17
      002357 2D               [12] 1129 	add	a, r5
      002358 FD               [12] 1130 	mov	r5,a
      002359 33               [12] 1131 	rlc	a
      00235A 95 E0            [12] 1132 	subb	a,acc
      00235C FC               [12] 1133 	mov	r4,a
      00235D ED               [12] 1134 	mov	a,r5
      00235E 24 20            [12] 1135 	add	a, #_send_arp_request_arp_packet_10000_138
      002360 FD               [12] 1136 	mov	r5,a
      002361 EC               [12] 1137 	mov	a,r4
      002362 34 01            [12] 1138 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      002364 FC               [12] 1139 	mov	r4,a
      002365 EE               [12] 1140 	mov	a,r6
      002366 24 0C            [12] 1141 	add	a, #_send_arp_request_source_mac_10000_138
      002368 F5 82            [12] 1142 	mov	dpl,a
      00236A EF               [12] 1143 	mov	a,r7
      00236B 34 01            [12] 1144 	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
      00236D F5 83            [12] 1145 	mov	dph,a
      00236F E0               [24] 1146 	movx	a,@dptr
      002370 8D 82            [24] 1147 	mov	dpl,r5
      002372 8C 83            [24] 1148 	mov	dph,r4
      002374 F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002375 0E               [12] 1151 	inc	r6
      002376 BE 00 CF         [24] 1152 	cjne	r6,#0x00,00118$
      002379 0F               [12] 1153 	inc	r7
      00237A 80 CC            [24] 1154 	sjmp	00118$
      00237C                       1155 00102$:
                                   1156 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      00237C 7E 00            [12] 1157 	mov	r6,#0x00
      00237E 7F 00            [12] 1158 	mov	r7,#0x00
      002380                       1159 00121$:
      002380 C3               [12] 1160 	clr	c
      002381 EE               [12] 1161 	mov	a,r6
      002382 94 04            [12] 1162 	subb	a,#0x04
      002384 EF               [12] 1163 	mov	a,r7
      002385 64 80            [12] 1164 	xrl	a,#0x80
      002387 94 80            [12] 1165 	subb	a,#0x80
      002389 50 29            [24] 1166 	jnc	00103$
                                   1167 ;	Eth.c:153: arp_packet[29 + i] = source_ip[i];
      00238B 8E 05            [24] 1168 	mov	ar5,r6
      00238D 74 1D            [12] 1169 	mov	a,#0x1d
      00238F 2D               [12] 1170 	add	a, r5
      002390 FD               [12] 1171 	mov	r5,a
      002391 33               [12] 1172 	rlc	a
      002392 95 E0            [12] 1173 	subb	a,acc
      002394 FC               [12] 1174 	mov	r4,a
      002395 ED               [12] 1175 	mov	a,r5
      002396 24 20            [12] 1176 	add	a, #_send_arp_request_arp_packet_10000_138
      002398 FD               [12] 1177 	mov	r5,a
      002399 EC               [12] 1178 	mov	a,r4
      00239A 34 01            [12] 1179 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      00239C FC               [12] 1180 	mov	r4,a
      00239D EE               [12] 1181 	mov	a,r6
      00239E 24 18            [12] 1182 	add	a, #_send_arp_request_source_ip_10000_138
      0023A0 F5 82            [12] 1183 	mov	dpl,a
      0023A2 EF               [12] 1184 	mov	a,r7
      0023A3 34 01            [12] 1185 	addc	a, #(_send_arp_request_source_ip_10000_138 >> 8)
      0023A5 F5 83            [12] 1186 	mov	dph,a
      0023A7 E0               [24] 1187 	movx	a,@dptr
      0023A8 8D 82            [24] 1188 	mov	dpl,r5
      0023AA 8C 83            [24] 1189 	mov	dph,r4
      0023AC F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      0023AD 0E               [12] 1192 	inc	r6
      0023AE BE 00 CF         [24] 1193 	cjne	r6,#0x00,00121$
      0023B1 0F               [12] 1194 	inc	r7
      0023B2 80 CC            [24] 1195 	sjmp	00121$
      0023B4                       1196 00103$:
                                   1197 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      0023B4 7F 00            [12] 1198 	mov	r7,#0x00
      0023B6                       1199 00124$:
      0023B6 BF 06 00         [24] 1200 	cjne	r7,#0x06,00215$
      0023B9                       1201 00215$:
      0023B9 50 19            [24] 1202 	jnc	00104$
                                   1203 ;	Eth.c:158: arp_packet[33 + i] = 0x00;
      0023BB 8F 06            [24] 1204 	mov	ar6,r7
      0023BD 74 21            [12] 1205 	mov	a,#0x21
      0023BF 2E               [12] 1206 	add	a, r6
      0023C0 FE               [12] 1207 	mov	r6,a
      0023C1 33               [12] 1208 	rlc	a
      0023C2 95 E0            [12] 1209 	subb	a,acc
      0023C4 FD               [12] 1210 	mov	r5,a
      0023C5 EE               [12] 1211 	mov	a,r6
      0023C6 24 20            [12] 1212 	add	a, #_send_arp_request_arp_packet_10000_138
      0023C8 F5 82            [12] 1213 	mov	dpl,a
      0023CA ED               [12] 1214 	mov	a,r5
      0023CB 34 01            [12] 1215 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0023CD F5 83            [12] 1216 	mov	dph,a
      0023CF E4               [12] 1217 	clr	a
      0023D0 F0               [24] 1218 	movx	@dptr,a
                                   1219 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      0023D1 0F               [12] 1220 	inc	r7
      0023D2 80 E2            [24] 1221 	sjmp	00124$
      0023D4                       1222 00104$:
                                   1223 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      0023D4 7E 00            [12] 1224 	mov	r6,#0x00
      0023D6 7F 00            [12] 1225 	mov	r7,#0x00
      0023D8                       1226 00127$:
      0023D8 C3               [12] 1227 	clr	c
      0023D9 EE               [12] 1228 	mov	a,r6
      0023DA 94 04            [12] 1229 	subb	a,#0x04
      0023DC EF               [12] 1230 	mov	a,r7
      0023DD 64 80            [12] 1231 	xrl	a,#0x80
      0023DF 94 80            [12] 1232 	subb	a,#0x80
      0023E1 50 29            [24] 1233 	jnc	00105$
                                   1234 ;	Eth.c:163: arp_packet[39 + i] = target_ip[i];
      0023E3 8E 05            [24] 1235 	mov	ar5,r6
      0023E5 74 27            [12] 1236 	mov	a,#0x27
      0023E7 2D               [12] 1237 	add	a, r5
      0023E8 FD               [12] 1238 	mov	r5,a
      0023E9 33               [12] 1239 	rlc	a
      0023EA 95 E0            [12] 1240 	subb	a,acc
      0023EC FC               [12] 1241 	mov	r4,a
      0023ED ED               [12] 1242 	mov	a,r5
      0023EE 24 20            [12] 1243 	add	a, #_send_arp_request_arp_packet_10000_138
      0023F0 FD               [12] 1244 	mov	r5,a
      0023F1 EC               [12] 1245 	mov	a,r4
      0023F2 34 01            [12] 1246 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0023F4 FC               [12] 1247 	mov	r4,a
      0023F5 EE               [12] 1248 	mov	a,r6
      0023F6 24 1C            [12] 1249 	add	a, #_send_arp_request_target_ip_10000_138
      0023F8 F5 82            [12] 1250 	mov	dpl,a
      0023FA EF               [12] 1251 	mov	a,r7
      0023FB 34 01            [12] 1252 	addc	a, #(_send_arp_request_target_ip_10000_138 >> 8)
      0023FD F5 83            [12] 1253 	mov	dph,a
      0023FF E0               [24] 1254 	movx	a,@dptr
      002400 8D 82            [24] 1255 	mov	dpl,r5
      002402 8C 83            [24] 1256 	mov	dph,r4
      002404 F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      002405 0E               [12] 1259 	inc	r6
      002406 BE 00 CF         [24] 1260 	cjne	r6,#0x00,00127$
      002409 0F               [12] 1261 	inc	r7
      00240A 80 CC            [24] 1262 	sjmp	00127$
      00240C                       1263 00105$:
                                   1264 ;	Eth.c:176: spi_buffer_write(frame_size, start_address, arp_packet);
      00240C 90 03 96         [24] 1265 	mov	dptr,#_spi_buffer_write_PARM_2
      00240F E4               [12] 1266 	clr	a
      002410 F0               [24] 1267 	movx	@dptr,a
      002411 74 1C            [12] 1268 	mov	a,#0x1c
      002413 A3               [24] 1269 	inc	dptr
      002414 F0               [24] 1270 	movx	@dptr,a
      002415 90 03 98         [24] 1271 	mov	dptr,#_spi_buffer_write_PARM_3
      002418 74 20            [12] 1272 	mov	a,#_send_arp_request_arp_packet_10000_138
      00241A F0               [24] 1273 	movx	@dptr,a
      00241B 74 01            [12] 1274 	mov	a,#(_send_arp_request_arp_packet_10000_138 >> 8)
      00241D A3               [24] 1275 	inc	dptr
      00241E F0               [24] 1276 	movx	@dptr,a
      00241F E4               [12] 1277 	clr	a
      002420 A3               [24] 1278 	inc	dptr
      002421 F0               [24] 1279 	movx	@dptr,a
      002422 90 00 2C         [24] 1280 	mov	dptr,#0x002c
      002425 12 3A 3A         [24] 1281 	lcall	_spi_buffer_write
                                   1282 ;	Eth.c:179: enc28j60_set_transmit_pointers(start_address, end_address);
      002428 90 01 06         [24] 1283 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      00242B 74 2B            [12] 1284 	mov	a,#0x2b
      00242D F0               [24] 1285 	movx	@dptr,a
      00242E 74 1C            [12] 1286 	mov	a,#0x1c
      002430 A3               [24] 1287 	inc	dptr
      002431 F0               [24] 1288 	movx	@dptr,a
      002432 90 1C 00         [24] 1289 	mov	dptr,#0x1c00
      002435 12 21 47         [24] 1290 	lcall	_enc28j60_set_transmit_pointers
                                   1291 ;	Eth.c:183: enc28j60_start_transmission();
      002438 12 21 26         [24] 1292 	lcall	_enc28j60_start_transmission
                                   1293 ;	Eth.c:186: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      00243B 90 01 F4         [24] 1294 	mov	dptr,#0x01f4
      00243E 12 21 BE         [24] 1295 	lcall	_wait_for_transmission_complete
      002441 E5 82            [12] 1296 	mov	a, dpl
      002443 60 33            [24] 1297 	jz	00112$
                                   1298 ;	Eth.c:188: if (enc28j60_transmission_successful()) {
      002445 12 22 21         [24] 1299 	lcall	_enc28j60_transmission_successful
      002448 E5 82            [12] 1300 	mov	a, dpl
      00244A 60 16            [24] 1301 	jz	00109$
                                   1302 ;	Eth.c:189: printf("ARP request sent successfully.\n\r");
      00244C 74 B5            [12] 1303 	mov	a,#___str_1
      00244E C0 E0            [24] 1304 	push	acc
      002450 74 6A            [12] 1305 	mov	a,#(___str_1 >> 8)
      002452 C0 E0            [24] 1306 	push	acc
      002454 74 80            [12] 1307 	mov	a,#0x80
      002456 C0 E0            [24] 1308 	push	acc
      002458 12 60 38         [24] 1309 	lcall	_printf
      00245B 15 81            [12] 1310 	dec	sp
      00245D 15 81            [12] 1311 	dec	sp
      00245F 15 81            [12] 1312 	dec	sp
      002461 22               [24] 1313 	ret
      002462                       1314 00109$:
                                   1315 ;	Eth.c:191: printf("ARP transmission failed. Check error flags.\n\r");
      002462 74 D6            [12] 1316 	mov	a,#___str_2
      002464 C0 E0            [24] 1317 	push	acc
      002466 74 6A            [12] 1318 	mov	a,#(___str_2 >> 8)
      002468 C0 E0            [24] 1319 	push	acc
      00246A 74 80            [12] 1320 	mov	a,#0x80
      00246C C0 E0            [24] 1321 	push	acc
      00246E 12 60 38         [24] 1322 	lcall	_printf
      002471 15 81            [12] 1323 	dec	sp
      002473 15 81            [12] 1324 	dec	sp
      002475 15 81            [12] 1325 	dec	sp
      002477 22               [24] 1326 	ret
      002478                       1327 00112$:
                                   1328 ;	Eth.c:194: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002478 74 04            [12] 1329 	mov	a,#___str_3
      00247A C0 E0            [24] 1330 	push	acc
      00247C 74 6B            [12] 1331 	mov	a,#(___str_3 >> 8)
      00247E C0 E0            [24] 1332 	push	acc
      002480 74 80            [12] 1333 	mov	a,#0x80
      002482 C0 E0            [24] 1334 	push	acc
      002484 12 60 38         [24] 1335 	lcall	_printf
      002487 15 81            [12] 1336 	dec	sp
      002489 15 81            [12] 1337 	dec	sp
      00248B 15 81            [12] 1338 	dec	sp
                                   1339 ;	Eth.c:196: }
      00248D 22               [24] 1340 	ret
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1343 ;------------------------------------------------------------
                                   1344 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
                                   1345 ;------------------------------------------------------------
                                   1346 ;	Eth.c:198: void external_interrupt0_isr(void) __interrupt (0)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function external_interrupt0_isr
                                   1349 ;	-----------------------------------------
      00248E                       1350 _external_interrupt0_isr:
      00248E C0 21            [24] 1351 	push	bits
      002490 C0 E0            [24] 1352 	push	acc
      002492 C0 F0            [24] 1353 	push	b
      002494 C0 82            [24] 1354 	push	dpl
      002496 C0 83            [24] 1355 	push	dph
      002498 C0 07            [24] 1356 	push	(0+7)
      00249A C0 06            [24] 1357 	push	(0+6)
      00249C C0 05            [24] 1358 	push	(0+5)
      00249E C0 04            [24] 1359 	push	(0+4)
      0024A0 C0 03            [24] 1360 	push	(0+3)
      0024A2 C0 02            [24] 1361 	push	(0+2)
      0024A4 C0 01            [24] 1362 	push	(0+1)
      0024A6 C0 00            [24] 1363 	push	(0+0)
      0024A8 C0 D0            [24] 1364 	push	psw
      0024AA 75 D0 00         [24] 1365 	mov	psw,#0x00
                                   1366 ;	Eth.c:202: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      0024AD 74 47            [12] 1367 	mov	a,#___str_4
      0024AF C0 E0            [24] 1368 	push	acc
      0024B1 74 6B            [12] 1369 	mov	a,#(___str_4 >> 8)
      0024B3 C0 E0            [24] 1370 	push	acc
      0024B5 74 80            [12] 1371 	mov	a,#0x80
      0024B7 C0 E0            [24] 1372 	push	acc
      0024B9 12 60 38         [24] 1373 	lcall	_printf
      0024BC 15 81            [12] 1374 	dec	sp
      0024BE 15 81            [12] 1375 	dec	sp
      0024C0 15 81            [12] 1376 	dec	sp
                                   1377 ;	Eth.c:217: i++;
      0024C2 90 01 4B         [24] 1378 	mov	dptr,#_external_interrupt0_isr_i_10000_157
      0024C5 E0               [24] 1379 	movx	a,@dptr
      0024C6 24 01            [12] 1380 	add	a, #0x01
      0024C8 F0               [24] 1381 	movx	@dptr,a
      0024C9 A3               [24] 1382 	inc	dptr
      0024CA E0               [24] 1383 	movx	a,@dptr
      0024CB 34 00            [12] 1384 	addc	a, #0x00
      0024CD F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	Eth.c:218: }
      0024CE D0 D0            [24] 1387 	pop	psw
      0024D0 D0 00            [24] 1388 	pop	(0+0)
      0024D2 D0 01            [24] 1389 	pop	(0+1)
      0024D4 D0 02            [24] 1390 	pop	(0+2)
      0024D6 D0 03            [24] 1391 	pop	(0+3)
      0024D8 D0 04            [24] 1392 	pop	(0+4)
      0024DA D0 05            [24] 1393 	pop	(0+5)
      0024DC D0 06            [24] 1394 	pop	(0+6)
      0024DE D0 07            [24] 1395 	pop	(0+7)
      0024E0 D0 83            [24] 1396 	pop	dph
      0024E2 D0 82            [24] 1397 	pop	dpl
      0024E4 D0 F0            [24] 1398 	pop	b
      0024E6 D0 E0            [24] 1399 	pop	acc
      0024E8 D0 21            [24] 1400 	pop	bits
      0024EA 32               [24] 1401 	reti
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'enc_buffer_init'
                                   1404 ;------------------------------------------------------------
                                   1405 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                   1406 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_159'
                                   1407 ;------------------------------------------------------------
                                   1408 ;	Eth.c:221: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                   1409 ;	-----------------------------------------
                                   1410 ;	 function enc_buffer_init
                                   1411 ;	-----------------------------------------
      0024EB                       1412 _enc_buffer_init:
      0024EB AF 83            [24] 1413 	mov	r7,dph
      0024ED E5 82            [12] 1414 	mov	a,dpl
      0024EF 90 01 4F         [24] 1415 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      0024F2 F0               [24] 1416 	movx	@dptr,a
      0024F3 EF               [12] 1417 	mov	a,r7
      0024F4 A3               [24] 1418 	inc	dptr
      0024F5 F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	Eth.c:223: if (start_address > 0x1FFF || end_address > 0x1FFF) {
      0024F6 90 01 4F         [24] 1421 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      0024F9 E0               [24] 1422 	movx	a,@dptr
      0024FA FE               [12] 1423 	mov	r6,a
      0024FB A3               [24] 1424 	inc	dptr
      0024FC E0               [24] 1425 	movx	a,@dptr
      0024FD FF               [12] 1426 	mov	r7,a
      0024FE C3               [12] 1427 	clr	c
      0024FF 74 FF            [12] 1428 	mov	a,#0xff
      002501 9E               [12] 1429 	subb	a,r6
      002502 74 1F            [12] 1430 	mov	a,#0x1f
      002504 9F               [12] 1431 	subb	a,r7
      002505 40 15            [24] 1432 	jc	00101$
      002507 90 01 4D         [24] 1433 	mov	dptr,#_enc_buffer_init_PARM_2
      00250A E0               [24] 1434 	movx	a,@dptr
      00250B FC               [12] 1435 	mov	r4,a
      00250C A3               [24] 1436 	inc	dptr
      00250D E0               [24] 1437 	movx	a,@dptr
      00250E FD               [12] 1438 	mov	r5,a
      00250F 8C 02            [24] 1439 	mov	ar2,r4
      002511 8D 03            [24] 1440 	mov	ar3,r5
      002513 C3               [12] 1441 	clr	c
      002514 74 FF            [12] 1442 	mov	a,#0xff
      002516 9A               [12] 1443 	subb	a,r2
      002517 74 1F            [12] 1444 	mov	a,#0x1f
      002519 9B               [12] 1445 	subb	a,r3
      00251A 50 2A            [24] 1446 	jnc	00102$
      00251C                       1447 00101$:
                                   1448 ;	Eth.c:224: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      00251C 90 01 4D         [24] 1449 	mov	dptr,#_enc_buffer_init_PARM_2
      00251F E0               [24] 1450 	movx	a,@dptr
      002520 C0 E0            [24] 1451 	push	acc
      002522 A3               [24] 1452 	inc	dptr
      002523 E0               [24] 1453 	movx	a,@dptr
      002524 C0 E0            [24] 1454 	push	acc
      002526 90 01 4F         [24] 1455 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      002529 E0               [24] 1456 	movx	a,@dptr
      00252A C0 E0            [24] 1457 	push	acc
      00252C A3               [24] 1458 	inc	dptr
      00252D E0               [24] 1459 	movx	a,@dptr
      00252E C0 E0            [24] 1460 	push	acc
      002530 74 6E            [12] 1461 	mov	a,#___str_5
      002532 C0 E0            [24] 1462 	push	acc
      002534 74 6B            [12] 1463 	mov	a,#(___str_5 >> 8)
      002536 C0 E0            [24] 1464 	push	acc
      002538 74 80            [12] 1465 	mov	a,#0x80
      00253A C0 E0            [24] 1466 	push	acc
      00253C 12 60 38         [24] 1467 	lcall	_printf
      00253F E5 81            [12] 1468 	mov	a,sp
      002541 24 F9            [12] 1469 	add	a,#0xf9
      002543 F5 81            [12] 1470 	mov	sp,a
                                   1471 ;	Eth.c:226: return;
      002545 22               [24] 1472 	ret
      002546                       1473 00102$:
                                   1474 ;	Eth.c:229: start_address &= ~1;  // Align to even address
      002546 53 06 FE         [24] 1475 	anl	ar6,#0xfe
      002549 90 01 4F         [24] 1476 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      00254C EE               [12] 1477 	mov	a,r6
      00254D F0               [24] 1478 	movx	@dptr,a
      00254E EF               [12] 1479 	mov	a,r7
      00254F A3               [24] 1480 	inc	dptr
      002550 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	Eth.c:231: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
      002551 90 01 4F         [24] 1483 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      002554 E0               [24] 1484 	movx	a,@dptr
      002555 FE               [12] 1485 	mov	r6,a
      002556 A3               [24] 1486 	inc	dptr
      002557 E0               [24] 1487 	movx	a,@dptr
      002558 FF               [12] 1488 	mov	r7,a
      002559 8E 03            [24] 1489 	mov	ar3,r6
      00255B 90 03 7E         [24] 1490 	mov	dptr,#_spi_control_write_PARM_2
      00255E E4               [12] 1491 	clr	a
      00255F F0               [24] 1492 	movx	@dptr,a
      002560 90 03 7F         [24] 1493 	mov	dptr,#_spi_control_write_PARM_3
      002563 EB               [12] 1494 	mov	a,r3
      002564 F0               [24] 1495 	movx	@dptr,a
      002565 75 82 00         [24] 1496 	mov	dpl, #0x00
      002568 C0 07            [24] 1497 	push	ar7
      00256A C0 06            [24] 1498 	push	ar6
      00256C C0 05            [24] 1499 	push	ar5
      00256E C0 04            [24] 1500 	push	ar4
      002570 C0 03            [24] 1501 	push	ar3
      002572 12 35 A0         [24] 1502 	lcall	_spi_control_write
      002575 D0 03            [24] 1503 	pop	ar3
      002577 D0 04            [24] 1504 	pop	ar4
      002579 D0 05            [24] 1505 	pop	ar5
      00257B D0 06            [24] 1506 	pop	ar6
      00257D D0 07            [24] 1507 	pop	ar7
                                   1508 ;	Eth.c:232: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
      00257F 8F 02            [24] 1509 	mov	ar2,r7
      002581 90 03 7E         [24] 1510 	mov	dptr,#_spi_control_write_PARM_2
      002584 74 01            [12] 1511 	mov	a,#0x01
      002586 F0               [24] 1512 	movx	@dptr,a
      002587 90 03 7F         [24] 1513 	mov	dptr,#_spi_control_write_PARM_3
      00258A EA               [12] 1514 	mov	a,r2
      00258B F0               [24] 1515 	movx	@dptr,a
      00258C 75 82 00         [24] 1516 	mov	dpl, #0x00
      00258F C0 07            [24] 1517 	push	ar7
      002591 C0 06            [24] 1518 	push	ar6
      002593 C0 05            [24] 1519 	push	ar5
      002595 C0 04            [24] 1520 	push	ar4
      002597 C0 03            [24] 1521 	push	ar3
      002599 C0 02            [24] 1522 	push	ar2
      00259B 12 35 A0         [24] 1523 	lcall	_spi_control_write
      00259E D0 02            [24] 1524 	pop	ar2
      0025A0 D0 03            [24] 1525 	pop	ar3
      0025A2 D0 04            [24] 1526 	pop	ar4
      0025A4 D0 05            [24] 1527 	pop	ar5
      0025A6 D0 06            [24] 1528 	pop	ar6
      0025A8 D0 07            [24] 1529 	pop	ar7
                                   1530 ;	Eth.c:233: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
      0025AA 90 03 7E         [24] 1531 	mov	dptr,#_spi_control_write_PARM_2
      0025AD 74 08            [12] 1532 	mov	a,#0x08
      0025AF F0               [24] 1533 	movx	@dptr,a
      0025B0 90 03 7F         [24] 1534 	mov	dptr,#_spi_control_write_PARM_3
      0025B3 EB               [12] 1535 	mov	a,r3
      0025B4 F0               [24] 1536 	movx	@dptr,a
      0025B5 75 82 00         [24] 1537 	mov	dpl, #0x00
      0025B8 C0 07            [24] 1538 	push	ar7
      0025BA C0 06            [24] 1539 	push	ar6
      0025BC C0 05            [24] 1540 	push	ar5
      0025BE C0 04            [24] 1541 	push	ar4
      0025C0 C0 03            [24] 1542 	push	ar3
      0025C2 C0 02            [24] 1543 	push	ar2
      0025C4 12 35 A0         [24] 1544 	lcall	_spi_control_write
      0025C7 D0 02            [24] 1545 	pop	ar2
      0025C9 D0 03            [24] 1546 	pop	ar3
      0025CB D0 04            [24] 1547 	pop	ar4
      0025CD D0 05            [24] 1548 	pop	ar5
      0025CF D0 06            [24] 1549 	pop	ar6
      0025D1 D0 07            [24] 1550 	pop	ar7
                                   1551 ;	Eth.c:234: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
      0025D3 90 03 7E         [24] 1552 	mov	dptr,#_spi_control_write_PARM_2
      0025D6 74 09            [12] 1553 	mov	a,#0x09
      0025D8 F0               [24] 1554 	movx	@dptr,a
      0025D9 90 03 7F         [24] 1555 	mov	dptr,#_spi_control_write_PARM_3
      0025DC EA               [12] 1556 	mov	a,r2
      0025DD F0               [24] 1557 	movx	@dptr,a
      0025DE 75 82 00         [24] 1558 	mov	dpl, #0x00
      0025E1 C0 07            [24] 1559 	push	ar7
      0025E3 C0 06            [24] 1560 	push	ar6
      0025E5 C0 05            [24] 1561 	push	ar5
      0025E7 C0 04            [24] 1562 	push	ar4
      0025E9 C0 03            [24] 1563 	push	ar3
      0025EB C0 02            [24] 1564 	push	ar2
      0025ED 12 35 A0         [24] 1565 	lcall	_spi_control_write
      0025F0 D0 02            [24] 1566 	pop	ar2
      0025F2 D0 03            [24] 1567 	pop	ar3
      0025F4 D0 04            [24] 1568 	pop	ar4
      0025F6 D0 05            [24] 1569 	pop	ar5
      0025F8 D0 06            [24] 1570 	pop	ar6
      0025FA D0 07            [24] 1571 	pop	ar7
                                   1572 ;	Eth.c:235: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
      0025FC 8C 01            [24] 1573 	mov	ar1,r4
      0025FE 90 03 7E         [24] 1574 	mov	dptr,#_spi_control_write_PARM_2
      002601 74 0A            [12] 1575 	mov	a,#0x0a
      002603 F0               [24] 1576 	movx	@dptr,a
      002604 90 03 7F         [24] 1577 	mov	dptr,#_spi_control_write_PARM_3
      002607 E9               [12] 1578 	mov	a,r1
      002608 F0               [24] 1579 	movx	@dptr,a
      002609 75 82 00         [24] 1580 	mov	dpl, #0x00
      00260C C0 07            [24] 1581 	push	ar7
      00260E C0 06            [24] 1582 	push	ar6
      002610 C0 05            [24] 1583 	push	ar5
      002612 C0 04            [24] 1584 	push	ar4
      002614 C0 03            [24] 1585 	push	ar3
      002616 C0 02            [24] 1586 	push	ar2
      002618 12 35 A0         [24] 1587 	lcall	_spi_control_write
      00261B D0 02            [24] 1588 	pop	ar2
      00261D D0 03            [24] 1589 	pop	ar3
      00261F D0 04            [24] 1590 	pop	ar4
      002621 D0 05            [24] 1591 	pop	ar5
      002623 D0 06            [24] 1592 	pop	ar6
      002625 D0 07            [24] 1593 	pop	ar7
                                   1594 ;	Eth.c:236: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
      002627 8D 01            [24] 1595 	mov	ar1,r5
      002629 90 03 7E         [24] 1596 	mov	dptr,#_spi_control_write_PARM_2
      00262C 74 0B            [12] 1597 	mov	a,#0x0b
      00262E F0               [24] 1598 	movx	@dptr,a
      00262F 90 03 7F         [24] 1599 	mov	dptr,#_spi_control_write_PARM_3
      002632 E9               [12] 1600 	mov	a,r1
      002633 F0               [24] 1601 	movx	@dptr,a
      002634 75 82 00         [24] 1602 	mov	dpl, #0x00
      002637 C0 07            [24] 1603 	push	ar7
      002639 C0 06            [24] 1604 	push	ar6
      00263B C0 05            [24] 1605 	push	ar5
      00263D C0 04            [24] 1606 	push	ar4
      00263F C0 03            [24] 1607 	push	ar3
      002641 C0 02            [24] 1608 	push	ar2
      002643 12 35 A0         [24] 1609 	lcall	_spi_control_write
      002646 D0 02            [24] 1610 	pop	ar2
      002648 D0 03            [24] 1611 	pop	ar3
      00264A D0 04            [24] 1612 	pop	ar4
      00264C D0 05            [24] 1613 	pop	ar5
      00264E D0 06            [24] 1614 	pop	ar6
      002650 D0 07            [24] 1615 	pop	ar7
                                   1616 ;	Eth.c:237: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      002652 90 03 7E         [24] 1617 	mov	dptr,#_spi_control_write_PARM_2
      002655 74 0C            [12] 1618 	mov	a,#0x0c
      002657 F0               [24] 1619 	movx	@dptr,a
      002658 90 03 7F         [24] 1620 	mov	dptr,#_spi_control_write_PARM_3
      00265B EB               [12] 1621 	mov	a,r3
      00265C F0               [24] 1622 	movx	@dptr,a
      00265D 75 82 00         [24] 1623 	mov	dpl, #0x00
      002660 C0 07            [24] 1624 	push	ar7
      002662 C0 06            [24] 1625 	push	ar6
      002664 C0 05            [24] 1626 	push	ar5
      002666 C0 04            [24] 1627 	push	ar4
      002668 C0 02            [24] 1628 	push	ar2
      00266A 12 35 A0         [24] 1629 	lcall	_spi_control_write
      00266D D0 02            [24] 1630 	pop	ar2
      00266F D0 04            [24] 1631 	pop	ar4
      002671 D0 05            [24] 1632 	pop	ar5
      002673 D0 06            [24] 1633 	pop	ar6
      002675 D0 07            [24] 1634 	pop	ar7
                                   1635 ;	Eth.c:238: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
      002677 90 03 7E         [24] 1636 	mov	dptr,#_spi_control_write_PARM_2
      00267A 74 0D            [12] 1637 	mov	a,#0x0d
      00267C F0               [24] 1638 	movx	@dptr,a
      00267D 90 03 7F         [24] 1639 	mov	dptr,#_spi_control_write_PARM_3
      002680 EA               [12] 1640 	mov	a,r2
      002681 F0               [24] 1641 	movx	@dptr,a
      002682 75 82 00         [24] 1642 	mov	dpl, #0x00
      002685 C0 07            [24] 1643 	push	ar7
      002687 C0 06            [24] 1644 	push	ar6
      002689 C0 05            [24] 1645 	push	ar5
      00268B C0 04            [24] 1646 	push	ar4
      00268D 12 35 A0         [24] 1647 	lcall	_spi_control_write
      002690 D0 04            [24] 1648 	pop	ar4
      002692 D0 05            [24] 1649 	pop	ar5
      002694 D0 06            [24] 1650 	pop	ar6
      002696 D0 07            [24] 1651 	pop	ar7
                                   1652 ;	Eth.c:239: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      002698 C0 04            [24] 1653 	push	ar4
      00269A C0 05            [24] 1654 	push	ar5
      00269C C0 06            [24] 1655 	push	ar6
      00269E C0 07            [24] 1656 	push	ar7
      0026A0 74 9F            [12] 1657 	mov	a,#___str_6
      0026A2 C0 E0            [24] 1658 	push	acc
      0026A4 74 6B            [12] 1659 	mov	a,#(___str_6 >> 8)
      0026A6 C0 E0            [24] 1660 	push	acc
      0026A8 74 80            [12] 1661 	mov	a,#0x80
      0026AA C0 E0            [24] 1662 	push	acc
      0026AC 12 60 38         [24] 1663 	lcall	_printf
      0026AF E5 81            [12] 1664 	mov	a,sp
      0026B1 24 F9            [12] 1665 	add	a,#0xf9
      0026B3 F5 81            [12] 1666 	mov	sp,a
                                   1667 ;	Eth.c:241: }
      0026B5 22               [24] 1668 	ret
                                   1669 ;------------------------------------------------------------
                                   1670 ;Allocation info for local variables in function 'enc_init'
                                   1671 ;------------------------------------------------------------
                                   1672 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1673 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1674 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1675 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1676 ;mac                       Allocated with name '_enc_init_mac_10000_162'
                                   1677 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_164'
                                   1678 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_164'
                                   1679 ;tx_start                  Allocated with name '_enc_init_tx_start_10001_164'
                                   1680 ;tx_end                    Allocated with name '_enc_init_tx_end_10001_164'
                                   1681 ;read_macon1               Allocated with name '_enc_init_read_macon1_10002_165'
                                   1682 ;rev                       Allocated with name '_enc_init_rev_10003_166'
                                   1683 ;------------------------------------------------------------
                                   1684 ;	Eth.c:243: void enc_init(const uint8_t *mac)
                                   1685 ;	-----------------------------------------
                                   1686 ;	 function enc_init
                                   1687 ;	-----------------------------------------
      0026B6                       1688 _enc_init:
      0026B6 AF F0            [24] 1689 	mov	r7,b
      0026B8 AE 83            [24] 1690 	mov	r6,dph
      0026BA E5 82            [12] 1691 	mov	a,dpl
      0026BC 90 01 51         [24] 1692 	mov	dptr,#_enc_init_mac_10000_162
      0026BF F0               [24] 1693 	movx	@dptr,a
      0026C0 EE               [12] 1694 	mov	a,r6
      0026C1 A3               [24] 1695 	inc	dptr
      0026C2 F0               [24] 1696 	movx	@dptr,a
      0026C3 EF               [12] 1697 	mov	a,r7
      0026C4 A3               [24] 1698 	inc	dptr
      0026C5 F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	Eth.c:246: enc_reset();
      0026C6 12 35 EB         [24] 1701 	lcall	_enc_reset
                                   1702 ;	Eth.c:249: while (!(mac_spi_read(0x1D, 0) & 0x01))
      0026C9                       1703 00101$:
      0026C9 90 03 87         [24] 1704 	mov	dptr,#_mac_spi_read_PARM_2
      0026CC E4               [12] 1705 	clr	a
      0026CD F0               [24] 1706 	movx	@dptr,a
      0026CE 75 82 1D         [24] 1707 	mov	dpl, #0x1d
      0026D1 12 36 BC         [24] 1708 	lcall	_mac_spi_read
      0026D4 E5 82            [12] 1709 	mov	a, dpl
      0026D6 30 E0 F0         [24] 1710 	jnb	acc.0,00101$
                                   1711 ;	Eth.c:259: enc_buffer_init(rx_start, rx_end);
      0026D9 90 01 4D         [24] 1712 	mov	dptr,#_enc_buffer_init_PARM_2
      0026DC 74 FF            [12] 1713 	mov	a,#0xff
      0026DE F0               [24] 1714 	movx	@dptr,a
      0026DF 74 1B            [12] 1715 	mov	a,#0x1b
      0026E1 A3               [24] 1716 	inc	dptr
      0026E2 F0               [24] 1717 	movx	@dptr,a
      0026E3 90 00 00         [24] 1718 	mov	dptr,#0x0000
      0026E6 12 24 EB         [24] 1719 	lcall	_enc_buffer_init
                                   1720 ;	Eth.c:261: spi_control_write(0, 0x04, (uint8_t) (tx_start & 0xFF)); // Low byte
      0026E9 90 03 7E         [24] 1721 	mov	dptr,#_spi_control_write_PARM_2
      0026EC 74 04            [12] 1722 	mov	a,#0x04
      0026EE F0               [24] 1723 	movx	@dptr,a
      0026EF 90 03 7F         [24] 1724 	mov	dptr,#_spi_control_write_PARM_3
      0026F2 E4               [12] 1725 	clr	a
      0026F3 F0               [24] 1726 	movx	@dptr,a
      0026F4 75 82 00         [24] 1727 	mov	dpl, #0x00
      0026F7 12 35 A0         [24] 1728 	lcall	_spi_control_write
                                   1729 ;	Eth.c:262: spi_control_write(0, 0x05, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte
      0026FA 90 03 7E         [24] 1730 	mov	dptr,#_spi_control_write_PARM_2
      0026FD 74 05            [12] 1731 	mov	a,#0x05
      0026FF F0               [24] 1732 	movx	@dptr,a
      002700 90 03 7F         [24] 1733 	mov	dptr,#_spi_control_write_PARM_3
      002703 74 1C            [12] 1734 	mov	a,#0x1c
      002705 F0               [24] 1735 	movx	@dptr,a
      002706 75 82 00         [24] 1736 	mov	dpl, #0x00
      002709 12 35 A0         [24] 1737 	lcall	_spi_control_write
                                   1738 ;	Eth.c:265: spi_control_write(0, 0x06, (uint8_t) (tx_end & 0xFF)); // Low byte
      00270C 90 03 7E         [24] 1739 	mov	dptr,#_spi_control_write_PARM_2
      00270F 74 06            [12] 1740 	mov	a,#0x06
      002711 F0               [24] 1741 	movx	@dptr,a
      002712 90 03 7F         [24] 1742 	mov	dptr,#_spi_control_write_PARM_3
      002715 74 FF            [12] 1743 	mov	a,#0xff
      002717 F0               [24] 1744 	movx	@dptr,a
      002718 75 82 00         [24] 1745 	mov	dpl, #0x00
      00271B 12 35 A0         [24] 1746 	lcall	_spi_control_write
                                   1747 ;	Eth.c:266: spi_control_write(0, 0x07, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
      00271E 90 03 7E         [24] 1748 	mov	dptr,#_spi_control_write_PARM_2
      002721 74 07            [12] 1749 	mov	a,#0x07
      002723 F0               [24] 1750 	movx	@dptr,a
      002724 90 03 7F         [24] 1751 	mov	dptr,#_spi_control_write_PARM_3
      002727 74 1F            [12] 1752 	mov	a,#0x1f
      002729 F0               [24] 1753 	movx	@dptr,a
      00272A 75 82 00         [24] 1754 	mov	dpl, #0x00
      00272D 12 35 A0         [24] 1755 	lcall	_spi_control_write
                                   1756 ;	Eth.c:268: spi_control_write(1, 0x18, 0xB1);// crcen,ucen,pcen,bcen
      002730 90 03 7E         [24] 1757 	mov	dptr,#_spi_control_write_PARM_2
      002733 74 18            [12] 1758 	mov	a,#0x18
      002735 F0               [24] 1759 	movx	@dptr,a
      002736 90 03 7F         [24] 1760 	mov	dptr,#_spi_control_write_PARM_3
      002739 74 B1            [12] 1761 	mov	a,#0xb1
      00273B F0               [24] 1762 	movx	@dptr,a
      00273C 75 82 01         [24] 1763 	mov	dpl, #0x01
      00273F 12 35 A0         [24] 1764 	lcall	_spi_control_write
                                   1765 ;	Eth.c:269: spi_control_write(1, 0x08, 0x3F); //pattern match
      002742 90 03 7E         [24] 1766 	mov	dptr,#_spi_control_write_PARM_2
      002745 74 08            [12] 1767 	mov	a,#0x08
      002747 F0               [24] 1768 	movx	@dptr,a
      002748 90 03 7F         [24] 1769 	mov	dptr,#_spi_control_write_PARM_3
      00274B 74 3F            [12] 1770 	mov	a,#0x3f
      00274D F0               [24] 1771 	movx	@dptr,a
      00274E 75 82 01         [24] 1772 	mov	dpl, #0x01
      002751 12 35 A0         [24] 1773 	lcall	_spi_control_write
                                   1774 ;	Eth.c:270: spi_control_write(1, 0x09, 0x30); //pattern match
      002754 90 03 7E         [24] 1775 	mov	dptr,#_spi_control_write_PARM_2
      002757 74 09            [12] 1776 	mov	a,#0x09
      002759 F0               [24] 1777 	movx	@dptr,a
      00275A 90 03 7F         [24] 1778 	mov	dptr,#_spi_control_write_PARM_3
      00275D 74 30            [12] 1779 	mov	a,#0x30
      00275F F0               [24] 1780 	movx	@dptr,a
      002760 75 82 01         [24] 1781 	mov	dpl, #0x01
      002763 12 35 A0         [24] 1782 	lcall	_spi_control_write
                                   1783 ;	Eth.c:271: spi_control_write(1, 0x10, 0xF9); //pattern match
      002766 90 03 7E         [24] 1784 	mov	dptr,#_spi_control_write_PARM_2
      002769 74 10            [12] 1785 	mov	a,#0x10
      00276B F0               [24] 1786 	movx	@dptr,a
      00276C 90 03 7F         [24] 1787 	mov	dptr,#_spi_control_write_PARM_3
      00276F 74 F9            [12] 1788 	mov	a,#0xf9
      002771 F0               [24] 1789 	movx	@dptr,a
      002772 75 82 01         [24] 1790 	mov	dpl, #0x01
      002775 12 35 A0         [24] 1791 	lcall	_spi_control_write
                                   1792 ;	Eth.c:272: spi_control_write(1, 0x11, 0xF7); //pattern match
      002778 90 03 7E         [24] 1793 	mov	dptr,#_spi_control_write_PARM_2
      00277B 74 11            [12] 1794 	mov	a,#0x11
      00277D F0               [24] 1795 	movx	@dptr,a
      00277E 90 03 7F         [24] 1796 	mov	dptr,#_spi_control_write_PARM_3
      002781 74 F7            [12] 1797 	mov	a,#0xf7
      002783 F0               [24] 1798 	movx	@dptr,a
      002784 75 82 01         [24] 1799 	mov	dpl, #0x01
      002787 12 35 A0         [24] 1800 	lcall	_spi_control_write
                                   1801 ;	Eth.c:274: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
      00278A 90 03 87         [24] 1802 	mov	dptr,#_mac_spi_read_PARM_2
      00278D 74 02            [12] 1803 	mov	a,#0x02
      00278F F0               [24] 1804 	movx	@dptr,a
      002790 75 82 00         [24] 1805 	mov	dpl, #0x00
      002793 12 36 BC         [24] 1806 	lcall	_mac_spi_read
      002796 E5 82            [12] 1807 	mov	a, dpl
                                   1808 ;	Eth.c:275: spi_control_write   (2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
      002798 44 01            [12] 1809 	orl	a,#0x01
      00279A FF               [12] 1810 	mov	r7,a
      00279B 90 03 7E         [24] 1811 	mov	dptr,#_spi_control_write_PARM_2
      00279E E4               [12] 1812 	clr	a
      00279F F0               [24] 1813 	movx	@dptr,a
      0027A0 90 03 7F         [24] 1814 	mov	dptr,#_spi_control_write_PARM_3
      0027A3 EF               [12] 1815 	mov	a,r7
      0027A4 F0               [24] 1816 	movx	@dptr,a
      0027A5 75 82 02         [24] 1817 	mov	dpl, #0x02
      0027A8 12 35 A0         [24] 1818 	lcall	_spi_control_write
                                   1819 ;	Eth.c:277: spi_control_write(2, 0x02, 0x32); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
      0027AB 90 03 7E         [24] 1820 	mov	dptr,#_spi_control_write_PARM_2
      0027AE 74 02            [12] 1821 	mov	a,#0x02
      0027B0 F0               [24] 1822 	movx	@dptr,a
      0027B1 90 03 7F         [24] 1823 	mov	dptr,#_spi_control_write_PARM_3
      0027B4 74 32            [12] 1824 	mov	a,#0x32
      0027B6 F0               [24] 1825 	movx	@dptr,a
      0027B7 75 82 02         [24] 1826 	mov	dpl, #0x02
      0027BA 12 35 A0         [24] 1827 	lcall	_spi_control_write
                                   1828 ;	Eth.c:281: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
      0027BD 90 03 7E         [24] 1829 	mov	dptr,#_spi_control_write_PARM_2
      0027C0 74 06            [12] 1830 	mov	a,#0x06
      0027C2 F0               [24] 1831 	movx	@dptr,a
      0027C3 90 03 7F         [24] 1832 	mov	dptr,#_spi_control_write_PARM_3
      0027C6 74 12            [12] 1833 	mov	a,#0x12
      0027C8 F0               [24] 1834 	movx	@dptr,a
      0027C9 75 82 02         [24] 1835 	mov	dpl, #0x02
      0027CC 12 35 A0         [24] 1836 	lcall	_spi_control_write
                                   1837 ;	Eth.c:282: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      0027CF 90 03 7E         [24] 1838 	mov	dptr,#_spi_control_write_PARM_2
      0027D2 74 07            [12] 1839 	mov	a,#0x07
      0027D4 F0               [24] 1840 	movx	@dptr,a
      0027D5 90 03 7F         [24] 1841 	mov	dptr,#_spi_control_write_PARM_3
      0027D8 74 0C            [12] 1842 	mov	a,#0x0c
      0027DA F0               [24] 1843 	movx	@dptr,a
      0027DB 75 82 02         [24] 1844 	mov	dpl, #0x02
      0027DE 12 35 A0         [24] 1845 	lcall	_spi_control_write
                                   1846 ;	Eth.c:284: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      0027E1 90 03 7E         [24] 1847 	mov	dptr,#_spi_control_write_PARM_2
      0027E4 74 04            [12] 1848 	mov	a,#0x04
      0027E6 F0               [24] 1849 	movx	@dptr,a
      0027E7 90 03 7F         [24] 1850 	mov	dptr,#_spi_control_write_PARM_3
      0027EA 74 12            [12] 1851 	mov	a,#0x12
      0027EC F0               [24] 1852 	movx	@dptr,a
      0027ED 75 82 02         [24] 1853 	mov	dpl, #0x02
      0027F0 12 35 A0         [24] 1854 	lcall	_spi_control_write
                                   1855 ;	Eth.c:286: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
      0027F3 90 03 7E         [24] 1856 	mov	dptr,#_spi_control_write_PARM_2
      0027F6 74 03            [12] 1857 	mov	a,#0x03
      0027F8 F0               [24] 1858 	movx	@dptr,a
      0027F9 90 03 7F         [24] 1859 	mov	dptr,#_spi_control_write_PARM_3
      0027FC 74 40            [12] 1860 	mov	a,#0x40
      0027FE F0               [24] 1861 	movx	@dptr,a
      0027FF 75 82 02         [24] 1862 	mov	dpl, #0x02
      002802 12 35 A0         [24] 1863 	lcall	_spi_control_write
                                   1864 ;	Eth.c:289: spi_control_write(2, 0x0A, 0xDC); // MAMXFLL
      002805 90 03 7E         [24] 1865 	mov	dptr,#_spi_control_write_PARM_2
      002808 74 0A            [12] 1866 	mov	a,#0x0a
      00280A F0               [24] 1867 	movx	@dptr,a
      00280B 90 03 7F         [24] 1868 	mov	dptr,#_spi_control_write_PARM_3
      00280E 74 DC            [12] 1869 	mov	a,#0xdc
      002810 F0               [24] 1870 	movx	@dptr,a
      002811 75 82 02         [24] 1871 	mov	dpl, #0x02
      002814 12 35 A0         [24] 1872 	lcall	_spi_control_write
                                   1873 ;	Eth.c:290: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
      002817 90 03 7E         [24] 1874 	mov	dptr,#_spi_control_write_PARM_2
      00281A 74 0B            [12] 1875 	mov	a,#0x0b
      00281C F0               [24] 1876 	movx	@dptr,a
      00281D 90 03 7F         [24] 1877 	mov	dptr,#_spi_control_write_PARM_3
      002820 74 05            [12] 1878 	mov	a,#0x05
      002822 F0               [24] 1879 	movx	@dptr,a
      002823 75 82 02         [24] 1880 	mov	dpl, #0x02
      002826 12 35 A0         [24] 1881 	lcall	_spi_control_write
                                   1882 ;	Eth.c:293: spi_control_write(3, 0x01, mac[5]); // MAADR6
      002829 90 01 51         [24] 1883 	mov	dptr,#_enc_init_mac_10000_162
      00282C E0               [24] 1884 	movx	a,@dptr
      00282D FD               [12] 1885 	mov	r5,a
      00282E A3               [24] 1886 	inc	dptr
      00282F E0               [24] 1887 	movx	a,@dptr
      002830 FE               [12] 1888 	mov	r6,a
      002831 A3               [24] 1889 	inc	dptr
      002832 E0               [24] 1890 	movx	a,@dptr
      002833 FF               [12] 1891 	mov	r7,a
      002834 74 05            [12] 1892 	mov	a,#0x05
      002836 2D               [12] 1893 	add	a, r5
      002837 F5 08            [12] 1894 	mov	_enc_init_sloc0_1_0,a
      002839 E4               [12] 1895 	clr	a
      00283A 3E               [12] 1896 	addc	a, r6
      00283B F5 09            [12] 1897 	mov	(_enc_init_sloc0_1_0 + 1),a
      00283D 8F 0A            [24] 1898 	mov	(_enc_init_sloc0_1_0 + 2),r7
      00283F 85 08 82         [24] 1899 	mov	dpl,_enc_init_sloc0_1_0
      002842 85 09 83         [24] 1900 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002845 85 0A F0         [24] 1901 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002848 12 6A 5A         [24] 1902 	lcall	__gptrget
      00284B F9               [12] 1903 	mov	r1,a
      00284C 90 03 7E         [24] 1904 	mov	dptr,#_spi_control_write_PARM_2
      00284F 74 01            [12] 1905 	mov	a,#0x01
      002851 F0               [24] 1906 	movx	@dptr,a
      002852 90 03 7F         [24] 1907 	mov	dptr,#_spi_control_write_PARM_3
      002855 E9               [12] 1908 	mov	a,r1
      002856 F0               [24] 1909 	movx	@dptr,a
      002857 75 82 03         [24] 1910 	mov	dpl, #0x03
      00285A C0 07            [24] 1911 	push	ar7
      00285C C0 06            [24] 1912 	push	ar6
      00285E C0 05            [24] 1913 	push	ar5
      002860 12 35 A0         [24] 1914 	lcall	_spi_control_write
      002863 D0 05            [24] 1915 	pop	ar5
      002865 D0 06            [24] 1916 	pop	ar6
      002867 D0 07            [24] 1917 	pop	ar7
                                   1918 ;	Eth.c:294: spi_control_write(3, 0x00, mac[4]); // MAADR5
      002869 74 04            [12] 1919 	mov	a,#0x04
      00286B 2D               [12] 1920 	add	a, r5
      00286C F5 0B            [12] 1921 	mov	_enc_init_sloc1_1_0,a
      00286E E4               [12] 1922 	clr	a
      00286F 3E               [12] 1923 	addc	a, r6
      002870 F5 0C            [12] 1924 	mov	(_enc_init_sloc1_1_0 + 1),a
      002872 8F 0D            [24] 1925 	mov	(_enc_init_sloc1_1_0 + 2),r7
      002874 85 0B 82         [24] 1926 	mov	dpl,_enc_init_sloc1_1_0
      002877 85 0C 83         [24] 1927 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      00287A 85 0D F0         [24] 1928 	mov	b,(_enc_init_sloc1_1_0 + 2)
      00287D 12 6A 5A         [24] 1929 	lcall	__gptrget
      002880 FB               [12] 1930 	mov	r3,a
      002881 90 03 7E         [24] 1931 	mov	dptr,#_spi_control_write_PARM_2
      002884 E4               [12] 1932 	clr	a
      002885 F0               [24] 1933 	movx	@dptr,a
      002886 90 03 7F         [24] 1934 	mov	dptr,#_spi_control_write_PARM_3
      002889 EB               [12] 1935 	mov	a,r3
      00288A F0               [24] 1936 	movx	@dptr,a
      00288B 75 82 03         [24] 1937 	mov	dpl, #0x03
      00288E C0 07            [24] 1938 	push	ar7
      002890 C0 06            [24] 1939 	push	ar6
      002892 C0 05            [24] 1940 	push	ar5
      002894 12 35 A0         [24] 1941 	lcall	_spi_control_write
      002897 D0 05            [24] 1942 	pop	ar5
      002899 D0 06            [24] 1943 	pop	ar6
      00289B D0 07            [24] 1944 	pop	ar7
                                   1945 ;	Eth.c:295: spi_control_write(3, 0x03, mac[3]); // MAADR4
      00289D 74 03            [12] 1946 	mov	a,#0x03
      00289F 2D               [12] 1947 	add	a, r5
      0028A0 F5 0E            [12] 1948 	mov	_enc_init_sloc2_1_0,a
      0028A2 E4               [12] 1949 	clr	a
      0028A3 3E               [12] 1950 	addc	a, r6
      0028A4 F5 0F            [12] 1951 	mov	(_enc_init_sloc2_1_0 + 1),a
      0028A6 8F 10            [24] 1952 	mov	(_enc_init_sloc2_1_0 + 2),r7
      0028A8 85 0E 82         [24] 1953 	mov	dpl,_enc_init_sloc2_1_0
      0028AB 85 0F 83         [24] 1954 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0028AE 85 10 F0         [24] 1955 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0028B1 12 6A 5A         [24] 1956 	lcall	__gptrget
      0028B4 F9               [12] 1957 	mov	r1,a
      0028B5 90 03 7E         [24] 1958 	mov	dptr,#_spi_control_write_PARM_2
      0028B8 74 03            [12] 1959 	mov	a,#0x03
      0028BA F0               [24] 1960 	movx	@dptr,a
      0028BB 90 03 7F         [24] 1961 	mov	dptr,#_spi_control_write_PARM_3
      0028BE E9               [12] 1962 	mov	a,r1
      0028BF F0               [24] 1963 	movx	@dptr,a
      0028C0 75 82 03         [24] 1964 	mov	dpl, #0x03
      0028C3 C0 07            [24] 1965 	push	ar7
      0028C5 C0 06            [24] 1966 	push	ar6
      0028C7 C0 05            [24] 1967 	push	ar5
      0028C9 12 35 A0         [24] 1968 	lcall	_spi_control_write
      0028CC D0 05            [24] 1969 	pop	ar5
      0028CE D0 06            [24] 1970 	pop	ar6
      0028D0 D0 07            [24] 1971 	pop	ar7
                                   1972 ;	Eth.c:296: spi_control_write(3, 0x02, mac[2]); // MAADR3
      0028D2 74 02            [12] 1973 	mov	a,#0x02
      0028D4 2D               [12] 1974 	add	a, r5
      0028D5 F5 11            [12] 1975 	mov	_enc_init_sloc3_1_0,a
      0028D7 E4               [12] 1976 	clr	a
      0028D8 3E               [12] 1977 	addc	a, r6
      0028D9 F5 12            [12] 1978 	mov	(_enc_init_sloc3_1_0 + 1),a
      0028DB 8F 13            [24] 1979 	mov	(_enc_init_sloc3_1_0 + 2),r7
      0028DD 85 11 82         [24] 1980 	mov	dpl,_enc_init_sloc3_1_0
      0028E0 85 12 83         [24] 1981 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      0028E3 85 13 F0         [24] 1982 	mov	b,(_enc_init_sloc3_1_0 + 2)
      0028E6 12 6A 5A         [24] 1983 	lcall	__gptrget
      0028E9 FB               [12] 1984 	mov	r3,a
      0028EA 90 03 7E         [24] 1985 	mov	dptr,#_spi_control_write_PARM_2
      0028ED 74 02            [12] 1986 	mov	a,#0x02
      0028EF F0               [24] 1987 	movx	@dptr,a
      0028F0 90 03 7F         [24] 1988 	mov	dptr,#_spi_control_write_PARM_3
      0028F3 EB               [12] 1989 	mov	a,r3
      0028F4 F0               [24] 1990 	movx	@dptr,a
      0028F5 75 82 03         [24] 1991 	mov	dpl, #0x03
      0028F8 C0 07            [24] 1992 	push	ar7
      0028FA C0 06            [24] 1993 	push	ar6
      0028FC C0 05            [24] 1994 	push	ar5
      0028FE 12 35 A0         [24] 1995 	lcall	_spi_control_write
      002901 D0 05            [24] 1996 	pop	ar5
      002903 D0 06            [24] 1997 	pop	ar6
      002905 D0 07            [24] 1998 	pop	ar7
                                   1999 ;	Eth.c:297: spi_control_write(3, 0x05, mac[1]); // MAADR2
      002907 74 01            [12] 2000 	mov	a,#0x01
      002909 2D               [12] 2001 	add	a, r5
      00290A FA               [12] 2002 	mov	r2,a
      00290B E4               [12] 2003 	clr	a
      00290C 3E               [12] 2004 	addc	a, r6
      00290D FB               [12] 2005 	mov	r3,a
      00290E 8F 04            [24] 2006 	mov	ar4,r7
      002910 8A 82            [24] 2007 	mov	dpl,r2
      002912 8B 83            [24] 2008 	mov	dph,r3
      002914 8C F0            [24] 2009 	mov	b,r4
      002916 12 6A 5A         [24] 2010 	lcall	__gptrget
      002919 F9               [12] 2011 	mov	r1,a
      00291A 90 03 7E         [24] 2012 	mov	dptr,#_spi_control_write_PARM_2
      00291D 74 05            [12] 2013 	mov	a,#0x05
      00291F F0               [24] 2014 	movx	@dptr,a
      002920 90 03 7F         [24] 2015 	mov	dptr,#_spi_control_write_PARM_3
      002923 E9               [12] 2016 	mov	a,r1
      002924 F0               [24] 2017 	movx	@dptr,a
      002925 75 82 03         [24] 2018 	mov	dpl, #0x03
      002928 C0 07            [24] 2019 	push	ar7
      00292A C0 06            [24] 2020 	push	ar6
      00292C C0 05            [24] 2021 	push	ar5
      00292E C0 04            [24] 2022 	push	ar4
      002930 C0 03            [24] 2023 	push	ar3
      002932 C0 02            [24] 2024 	push	ar2
      002934 12 35 A0         [24] 2025 	lcall	_spi_control_write
      002937 D0 02            [24] 2026 	pop	ar2
      002939 D0 03            [24] 2027 	pop	ar3
      00293B D0 04            [24] 2028 	pop	ar4
      00293D D0 05            [24] 2029 	pop	ar5
      00293F D0 06            [24] 2030 	pop	ar6
      002941 D0 07            [24] 2031 	pop	ar7
                                   2032 ;	Eth.c:298: spi_control_write(3, 0x04, mac[0]); // MAADR1
      002943 8D 82            [24] 2033 	mov	dpl,r5
      002945 8E 83            [24] 2034 	mov	dph,r6
      002947 8F F0            [24] 2035 	mov	b,r7
      002949 12 6A 5A         [24] 2036 	lcall	__gptrget
      00294C F9               [12] 2037 	mov	r1,a
      00294D 90 03 7E         [24] 2038 	mov	dptr,#_spi_control_write_PARM_2
      002950 74 04            [12] 2039 	mov	a,#0x04
      002952 F0               [24] 2040 	movx	@dptr,a
      002953 90 03 7F         [24] 2041 	mov	dptr,#_spi_control_write_PARM_3
      002956 E9               [12] 2042 	mov	a,r1
      002957 F0               [24] 2043 	movx	@dptr,a
      002958 75 82 03         [24] 2044 	mov	dpl, #0x03
      00295B C0 07            [24] 2045 	push	ar7
      00295D C0 06            [24] 2046 	push	ar6
      00295F C0 05            [24] 2047 	push	ar5
      002961 C0 04            [24] 2048 	push	ar4
      002963 C0 03            [24] 2049 	push	ar3
      002965 C0 02            [24] 2050 	push	ar2
      002967 12 35 A0         [24] 2051 	lcall	_spi_control_write
      00296A D0 02            [24] 2052 	pop	ar2
      00296C D0 03            [24] 2053 	pop	ar3
      00296E D0 04            [24] 2054 	pop	ar4
      002970 D0 05            [24] 2055 	pop	ar5
      002972 D0 06            [24] 2056 	pop	ar6
      002974 D0 07            [24] 2057 	pop	ar7
                                   2058 ;	Eth.c:299: phy_spi_write(0x10, 0x0100);
      002976 90 03 84         [24] 2059 	mov	dptr,#_phy_spi_write_PARM_2
      002979 E4               [12] 2060 	clr	a
      00297A F0               [24] 2061 	movx	@dptr,a
      00297B 04               [12] 2062 	inc	a
      00297C A3               [24] 2063 	inc	dptr
      00297D F0               [24] 2064 	movx	@dptr,a
      00297E 75 82 10         [24] 2065 	mov	dpl, #0x10
      002981 C0 07            [24] 2066 	push	ar7
      002983 C0 06            [24] 2067 	push	ar6
      002985 C0 05            [24] 2068 	push	ar5
      002987 C0 04            [24] 2069 	push	ar4
      002989 C0 03            [24] 2070 	push	ar3
      00298B C0 02            [24] 2071 	push	ar2
      00298D 12 36 39         [24] 2072 	lcall	_phy_spi_write
      002990 D0 02            [24] 2073 	pop	ar2
      002992 D0 03            [24] 2074 	pop	ar3
      002994 D0 04            [24] 2075 	pop	ar4
      002996 D0 05            [24] 2076 	pop	ar5
      002998 D0 06            [24] 2077 	pop	ar6
      00299A D0 07            [24] 2078 	pop	ar7
                                   2079 ;	Eth.c:302: spi_control_write(0, 0X1B, 0XC0); // reception enable bit
      00299C 90 03 7E         [24] 2080 	mov	dptr,#_spi_control_write_PARM_2
      00299F 74 1B            [12] 2081 	mov	a,#0x1b
      0029A1 F0               [24] 2082 	movx	@dptr,a
      0029A2 90 03 7F         [24] 2083 	mov	dptr,#_spi_control_write_PARM_3
      0029A5 74 C0            [12] 2084 	mov	a,#0xc0
      0029A7 F0               [24] 2085 	movx	@dptr,a
      0029A8 75 82 00         [24] 2086 	mov	dpl, #0x00
      0029AB C0 07            [24] 2087 	push	ar7
      0029AD C0 06            [24] 2088 	push	ar6
      0029AF C0 05            [24] 2089 	push	ar5
      0029B1 C0 04            [24] 2090 	push	ar4
      0029B3 C0 03            [24] 2091 	push	ar3
      0029B5 C0 02            [24] 2092 	push	ar2
      0029B7 12 35 A0         [24] 2093 	lcall	_spi_control_write
      0029BA D0 02            [24] 2094 	pop	ar2
      0029BC D0 03            [24] 2095 	pop	ar3
      0029BE D0 04            [24] 2096 	pop	ar4
      0029C0 D0 05            [24] 2097 	pop	ar5
      0029C2 D0 06            [24] 2098 	pop	ar6
      0029C4 D0 07            [24] 2099 	pop	ar7
                                   2100 ;	Eth.c:303: spi_control_write(0, 0X1F, 0X04); // reception enable bit
      0029C6 90 03 7E         [24] 2101 	mov	dptr,#_spi_control_write_PARM_2
      0029C9 74 1F            [12] 2102 	mov	a,#0x1f
      0029CB F0               [24] 2103 	movx	@dptr,a
      0029CC 90 03 7F         [24] 2104 	mov	dptr,#_spi_control_write_PARM_3
      0029CF 74 04            [12] 2105 	mov	a,#0x04
      0029D1 F0               [24] 2106 	movx	@dptr,a
      0029D2 75 82 00         [24] 2107 	mov	dpl, #0x00
      0029D5 C0 07            [24] 2108 	push	ar7
      0029D7 C0 06            [24] 2109 	push	ar6
      0029D9 C0 05            [24] 2110 	push	ar5
      0029DB C0 04            [24] 2111 	push	ar4
      0029DD C0 03            [24] 2112 	push	ar3
      0029DF C0 02            [24] 2113 	push	ar2
      0029E1 12 35 A0         [24] 2114 	lcall	_spi_control_write
                                   2115 ;	Eth.c:305: printf("\nENC28J60 Initialization Complete.\n");
      0029E4 74 CE            [12] 2116 	mov	a,#___str_7
      0029E6 C0 E0            [24] 2117 	push	acc
      0029E8 74 6B            [12] 2118 	mov	a,#(___str_7 >> 8)
      0029EA C0 E0            [24] 2119 	push	acc
      0029EC 74 80            [12] 2120 	mov	a,#0x80
      0029EE C0 E0            [24] 2121 	push	acc
      0029F0 12 60 38         [24] 2122 	lcall	_printf
      0029F3 15 81            [12] 2123 	dec	sp
      0029F5 15 81            [12] 2124 	dec	sp
      0029F7 15 81            [12] 2125 	dec	sp
      0029F9 D0 02            [24] 2126 	pop	ar2
      0029FB D0 03            [24] 2127 	pop	ar3
      0029FD D0 04            [24] 2128 	pop	ar4
      0029FF D0 05            [24] 2129 	pop	ar5
      002A01 D0 06            [24] 2130 	pop	ar6
      002A03 D0 07            [24] 2131 	pop	ar7
                                   2132 ;	Eth.c:307: mac[2], mac[3], mac[4], mac[5]);
      002A05 85 08 82         [24] 2133 	mov	dpl,_enc_init_sloc0_1_0
      002A08 85 09 83         [24] 2134 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002A0B 85 0A F0         [24] 2135 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002A0E 12 6A 5A         [24] 2136 	lcall	__gptrget
      002A11 F9               [12] 2137 	mov	r1,a
      002A12 89 08            [24] 2138 	mov	_enc_init_sloc0_1_0,r1
      002A14 75 09 00         [24] 2139 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      002A17 85 0B 82         [24] 2140 	mov	dpl,_enc_init_sloc1_1_0
      002A1A 85 0C 83         [24] 2141 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002A1D 85 0D F0         [24] 2142 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002A20 12 6A 5A         [24] 2143 	lcall	__gptrget
      002A23 F9               [12] 2144 	mov	r1,a
      002A24 89 0B            [24] 2145 	mov	_enc_init_sloc1_1_0,r1
      002A26 75 0C 00         [24] 2146 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      002A29 85 0E 82         [24] 2147 	mov	dpl,_enc_init_sloc2_1_0
      002A2C 85 0F 83         [24] 2148 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002A2F 85 10 F0         [24] 2149 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002A32 12 6A 5A         [24] 2150 	lcall	__gptrget
      002A35 F9               [12] 2151 	mov	r1,a
      002A36 89 0E            [24] 2152 	mov	_enc_init_sloc2_1_0,r1
      002A38 75 0F 00         [24] 2153 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002A3B 85 11 82         [24] 2154 	mov	dpl,_enc_init_sloc3_1_0
      002A3E 85 12 83         [24] 2155 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002A41 85 13 F0         [24] 2156 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002A44 12 6A 5A         [24] 2157 	lcall	__gptrget
      002A47 F8               [12] 2158 	mov	r0,a
      002A48 79 00            [12] 2159 	mov	r1,#0x00
                                   2160 ;	Eth.c:306: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      002A4A 8A 82            [24] 2161 	mov	dpl,r2
      002A4C 8B 83            [24] 2162 	mov	dph,r3
      002A4E 8C F0            [24] 2163 	mov	b,r4
      002A50 12 6A 5A         [24] 2164 	lcall	__gptrget
      002A53 FA               [12] 2165 	mov	r2,a
      002A54 7C 00            [12] 2166 	mov	r4,#0x00
      002A56 8D 82            [24] 2167 	mov	dpl,r5
      002A58 8E 83            [24] 2168 	mov	dph,r6
      002A5A 8F F0            [24] 2169 	mov	b,r7
      002A5C 12 6A 5A         [24] 2170 	lcall	__gptrget
      002A5F FD               [12] 2171 	mov	r5,a
      002A60 7F 00            [12] 2172 	mov	r7,#0x00
      002A62 C0 08            [24] 2173 	push	_enc_init_sloc0_1_0
      002A64 C0 09            [24] 2174 	push	(_enc_init_sloc0_1_0 + 1)
      002A66 C0 0B            [24] 2175 	push	_enc_init_sloc1_1_0
      002A68 C0 0C            [24] 2176 	push	(_enc_init_sloc1_1_0 + 1)
      002A6A C0 0E            [24] 2177 	push	_enc_init_sloc2_1_0
      002A6C C0 0F            [24] 2178 	push	(_enc_init_sloc2_1_0 + 1)
      002A6E C0 00            [24] 2179 	push	ar0
      002A70 C0 01            [24] 2180 	push	ar1
      002A72 C0 02            [24] 2181 	push	ar2
      002A74 C0 04            [24] 2182 	push	ar4
      002A76 C0 05            [24] 2183 	push	ar5
      002A78 C0 07            [24] 2184 	push	ar7
      002A7A 74 F2            [12] 2185 	mov	a,#___str_8
      002A7C C0 E0            [24] 2186 	push	acc
      002A7E 74 6B            [12] 2187 	mov	a,#(___str_8 >> 8)
      002A80 C0 E0            [24] 2188 	push	acc
      002A82 74 80            [12] 2189 	mov	a,#0x80
      002A84 C0 E0            [24] 2190 	push	acc
      002A86 12 60 38         [24] 2191 	lcall	_printf
      002A89 E5 81            [12] 2192 	mov	a,sp
      002A8B 24 F1            [12] 2193 	add	a,#0xf1
      002A8D F5 81            [12] 2194 	mov	sp,a
                                   2195 ;	Eth.c:308: uint8_t rev = eth_spi_read(0x12,3);
      002A8F 90 03 82         [24] 2196 	mov	dptr,#_eth_spi_read_PARM_2
      002A92 74 03            [12] 2197 	mov	a,#0x03
      002A94 F0               [24] 2198 	movx	@dptr,a
      002A95 75 82 12         [24] 2199 	mov	dpl, #0x12
                                   2200 ;	Eth.c:310: if (rev > 5) ++rev;
                                   2201 ;	Eth.c:358: }
      002A98 02 35 F6         [24] 2202 	ljmp	_eth_spi_read
                                   2203 ;------------------------------------------------------------
                                   2204 ;Allocation info for local variables in function 'ENC_pkt_count'
                                   2205 ;------------------------------------------------------------
                                   2206 ;count                     Allocated with name '_ENC_pkt_count_count_10000_168'
                                   2207 ;------------------------------------------------------------
                                   2208 ;	Eth.c:360: uint8_t ENC_pkt_count(void)
                                   2209 ;	-----------------------------------------
                                   2210 ;	 function ENC_pkt_count
                                   2211 ;	-----------------------------------------
      002A9B                       2212 _ENC_pkt_count:
                                   2213 ;	Eth.c:362: uint8_t count = mac_spi_read(0x19, 1);
      002A9B 90 03 87         [24] 2214 	mov	dptr,#_mac_spi_read_PARM_2
      002A9E 74 01            [12] 2215 	mov	a,#0x01
      002AA0 F0               [24] 2216 	movx	@dptr,a
      002AA1 75 82 19         [24] 2217 	mov	dpl, #0x19
                                   2218 ;	Eth.c:363: return count;
                                   2219 ;	Eth.c:364: }
      002AA4 02 36 BC         [24] 2220 	ljmp	_mac_spi_read
                                   2221 ;------------------------------------------------------------
                                   2222 ;Allocation info for local variables in function 'update_ERXRDPT'
                                   2223 ;------------------------------------------------------------
                                   2224 ;new_address               Allocated with name '_update_ERXRDPT_new_address_10000_169'
                                   2225 ;high_byte                 Allocated with name '_update_ERXRDPT_high_byte_10000_170'
                                   2226 ;low_byte                  Allocated with name '_update_ERXRDPT_low_byte_10000_170'
                                   2227 ;------------------------------------------------------------
                                   2228 ;	Eth.c:366: void update_ERXRDPT(uint16_t new_address) {
                                   2229 ;	-----------------------------------------
                                   2230 ;	 function update_ERXRDPT
                                   2231 ;	-----------------------------------------
      002AA7                       2232 _update_ERXRDPT:
      002AA7 AF 83            [24] 2233 	mov	r7,dph
      002AA9 E5 82            [12] 2234 	mov	a,dpl
      002AAB 90 01 54         [24] 2235 	mov	dptr,#_update_ERXRDPT_new_address_10000_169
      002AAE F0               [24] 2236 	movx	@dptr,a
      002AAF EF               [12] 2237 	mov	a,r7
      002AB0 A3               [24] 2238 	inc	dptr
      002AB1 F0               [24] 2239 	movx	@dptr,a
                                   2240 ;	Eth.c:368: uint8_t high_byte = (uint8_t)((new_address >> 8) & 0xFF);
      002AB2 90 01 54         [24] 2241 	mov	dptr,#_update_ERXRDPT_new_address_10000_169
      002AB5 E0               [24] 2242 	movx	a,@dptr
      002AB6 FE               [12] 2243 	mov	r6,a
      002AB7 A3               [24] 2244 	inc	dptr
      002AB8 E0               [24] 2245 	movx	a,@dptr
      002AB9 FF               [12] 2246 	mov	r7,a
      002ABA FD               [12] 2247 	mov	r5,a
                                   2248 ;	Eth.c:369: uint8_t low_byte = (uint8_t)(new_address & 0xFF);
      002ABB 8E 04            [24] 2249 	mov	ar4,r6
                                   2250 ;	Eth.c:372: spi_control_write(0, 0x0C, low_byte);  // Write to low-byte register
      002ABD 90 03 7E         [24] 2251 	mov	dptr,#_spi_control_write_PARM_2
      002AC0 74 0C            [12] 2252 	mov	a,#0x0c
      002AC2 F0               [24] 2253 	movx	@dptr,a
      002AC3 90 03 7F         [24] 2254 	mov	dptr,#_spi_control_write_PARM_3
      002AC6 EC               [12] 2255 	mov	a,r4
      002AC7 F0               [24] 2256 	movx	@dptr,a
      002AC8 75 82 00         [24] 2257 	mov	dpl, #0x00
      002ACB C0 07            [24] 2258 	push	ar7
      002ACD C0 06            [24] 2259 	push	ar6
      002ACF C0 05            [24] 2260 	push	ar5
      002AD1 12 35 A0         [24] 2261 	lcall	_spi_control_write
      002AD4 D0 05            [24] 2262 	pop	ar5
      002AD6 D0 06            [24] 2263 	pop	ar6
      002AD8 D0 07            [24] 2264 	pop	ar7
                                   2265 ;	Eth.c:373: spi_control_write(0, 0x0D, high_byte); // Write to high-byte register
      002ADA 90 03 7E         [24] 2266 	mov	dptr,#_spi_control_write_PARM_2
      002ADD 74 0D            [12] 2267 	mov	a,#0x0d
      002ADF F0               [24] 2268 	movx	@dptr,a
      002AE0 90 03 7F         [24] 2269 	mov	dptr,#_spi_control_write_PARM_3
      002AE3 ED               [12] 2270 	mov	a,r5
      002AE4 F0               [24] 2271 	movx	@dptr,a
      002AE5 75 82 00         [24] 2272 	mov	dpl, #0x00
      002AE8 C0 07            [24] 2273 	push	ar7
      002AEA C0 06            [24] 2274 	push	ar6
      002AEC 12 35 A0         [24] 2275 	lcall	_spi_control_write
      002AEF D0 06            [24] 2276 	pop	ar6
      002AF1 D0 07            [24] 2277 	pop	ar7
                                   2278 ;	Eth.c:376: printf("Updated ERXRDPT to 0x%04X\n", new_address);
      002AF3 C0 06            [24] 2279 	push	ar6
      002AF5 C0 07            [24] 2280 	push	ar7
      002AF7 74 1E            [12] 2281 	mov	a,#___str_9
      002AF9 C0 E0            [24] 2282 	push	acc
      002AFB 74 6C            [12] 2283 	mov	a,#(___str_9 >> 8)
      002AFD C0 E0            [24] 2284 	push	acc
      002AFF 74 80            [12] 2285 	mov	a,#0x80
      002B01 C0 E0            [24] 2286 	push	acc
      002B03 12 60 38         [24] 2287 	lcall	_printf
      002B06 E5 81            [12] 2288 	mov	a,sp
      002B08 24 FB            [12] 2289 	add	a,#0xfb
      002B0A F5 81            [12] 2290 	mov	sp,a
                                   2291 ;	Eth.c:377: }
      002B0C 22               [24] 2292 	ret
                                   2293 	.area CSEG    (CODE)
                                   2294 	.area CONST   (CODE)
                                   2295 	.area CONST   (CODE)
      006A7A                       2296 ___str_0:
      006A7A 0A                    2297 	.db 0x0a
      006A7B 49 6E 76 61 6C 69 64  2298 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      006AB3 0A                    2299 	.db 0x0a
      006AB4 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
      006AB5                       2303 ___str_1:
      006AB5 41 52 50 20 72 65 71  2304 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      006AD3 0A                    2305 	.db 0x0a
      006AD4 0D                    2306 	.db 0x0d
      006AD5 00                    2307 	.db 0x00
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      006AD6                       2310 ___str_2:
      006AD6 41 52 50 20 74 72 61  2311 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      006B01 0A                    2312 	.db 0x0a
      006B02 0D                    2313 	.db 0x0d
      006B03 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      006B04                       2317 ___str_3:
      006B04 54 72 61 6E 73 6D 69  2318 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      006B40 74 6C 79 2E           2319 	.ascii "tly."
      006B44 0A                    2320 	.db 0x0a
      006B45 0D                    2321 	.db 0x0d
      006B46 00                    2322 	.db 0x00
                                   2323 	.area CSEG    (CODE)
                                   2324 	.area CONST   (CODE)
      006B47                       2325 ___str_4:
      006B47 49 6E 74 65 72 72 72  2326 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      006B6B 0A                    2327 	.db 0x0a
      006B6C 0D                    2328 	.db 0x0d
      006B6D 00                    2329 	.db 0x00
                                   2330 	.area CSEG    (CODE)
                                   2331 	.area CONST   (CODE)
      006B6E                       2332 ___str_5:
      006B6E 0A                    2333 	.db 0x0a
      006B6F 49 6E 76 61 6C 69 64  2334 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      006B9D 0A                    2335 	.db 0x0a
      006B9E 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      006B9F                       2339 ___str_6:
      006B9F 0A                    2340 	.db 0x0a
      006BA0 42 75 66 66 65 72 20  2341 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      006BCC 0A                    2342 	.db 0x0a
      006BCD 00                    2343 	.db 0x00
                                   2344 	.area CSEG    (CODE)
                                   2345 	.area CONST   (CODE)
      006BCE                       2346 ___str_7:
      006BCE 0A                    2347 	.db 0x0a
      006BCF 45 4E 43 32 38 4A 36  2348 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      006BF0 0A                    2349 	.db 0x0a
      006BF1 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      006BF2                       2353 ___str_8:
      006BF2 4D 41 43 20 41 64 64  2354 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      006C1C 0A                    2355 	.db 0x0a
      006C1D 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                                   2358 	.area CONST   (CODE)
      006C1E                       2359 ___str_9:
      006C1E 55 70 64 61 74 65 64  2360 	.ascii "Updated ERXRDPT to 0x%04X"
             20 45 52 58 52 44 50
             54 20 74 6F 20 30 78
             25 30 34 58
      006C37 0A                    2361 	.db 0x0a
      006C38 00                    2362 	.db 0x00
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area XINIT   (CODE)
                                   2365 	.area CABS    (ABS,CODE)
