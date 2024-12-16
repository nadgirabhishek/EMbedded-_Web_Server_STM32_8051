                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module arp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _enc_mac_read
                                     13 	.globl _enc_buffer_write
                                     14 	.globl _enc_control_write
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    212 	.globl _delay_ms
                                    213 	.globl _enc28j60_start_transmission
                                    214 	.globl _enc28j60_set_transmit_pointers
                                    215 	.globl _wait_for_transmission_complete
                                    216 	.globl _enc28j60_transmission_successful
                                    217 	.globl _set_mac_address
                                    218 	.globl _arp_request
                                    219 ;--------------------------------------------------------
                                    220 ; special function registers
                                    221 ;--------------------------------------------------------
                                    222 	.area RSEG    (ABS,DATA)
      000000                        223 	.org 0x0000
                           000080   224 _P0	=	0x0080
                           000081   225 _SP	=	0x0081
                           000082   226 _DPL	=	0x0082
                           000083   227 _DPH	=	0x0083
                           000087   228 _PCON	=	0x0087
                           000088   229 _TCON	=	0x0088
                           000089   230 _TMOD	=	0x0089
                           00008A   231 _TL0	=	0x008a
                           00008B   232 _TL1	=	0x008b
                           00008C   233 _TH0	=	0x008c
                           00008D   234 _TH1	=	0x008d
                           000090   235 _P1	=	0x0090
                           000098   236 _SCON	=	0x0098
                           000099   237 _SBUF	=	0x0099
                           0000A0   238 _P2	=	0x00a0
                           0000A8   239 _IE	=	0x00a8
                           0000B0   240 _P3	=	0x00b0
                           0000B8   241 _IP	=	0x00b8
                           0000D0   242 _PSW	=	0x00d0
                           0000E0   243 _ACC	=	0x00e0
                           0000F0   244 _B	=	0x00f0
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
                                    296 ;--------------------------------------------------------
                                    297 ; special function bits
                                    298 ;--------------------------------------------------------
                                    299 	.area RSEG    (ABS,DATA)
      000000                        300 	.org 0x0000
                           000080   301 _P0_0	=	0x0080
                           000081   302 _P0_1	=	0x0081
                           000082   303 _P0_2	=	0x0082
                           000083   304 _P0_3	=	0x0083
                           000084   305 _P0_4	=	0x0084
                           000085   306 _P0_5	=	0x0085
                           000086   307 _P0_6	=	0x0086
                           000087   308 _P0_7	=	0x0087
                           000088   309 _IT0	=	0x0088
                           000089   310 _IE0	=	0x0089
                           00008A   311 _IT1	=	0x008a
                           00008B   312 _IE1	=	0x008b
                           00008C   313 _TR0	=	0x008c
                           00008D   314 _TF0	=	0x008d
                           00008E   315 _TR1	=	0x008e
                           00008F   316 _TF1	=	0x008f
                           000090   317 _P1_0	=	0x0090
                           000091   318 _P1_1	=	0x0091
                           000092   319 _P1_2	=	0x0092
                           000093   320 _P1_3	=	0x0093
                           000094   321 _P1_4	=	0x0094
                           000095   322 _P1_5	=	0x0095
                           000096   323 _P1_6	=	0x0096
                           000097   324 _P1_7	=	0x0097
                           000098   325 _RI	=	0x0098
                           000099   326 _TI	=	0x0099
                           00009A   327 _RB8	=	0x009a
                           00009B   328 _TB8	=	0x009b
                           00009C   329 _REN	=	0x009c
                           00009D   330 _SM2	=	0x009d
                           00009E   331 _SM1	=	0x009e
                           00009F   332 _SM0	=	0x009f
                           0000A0   333 _P2_0	=	0x00a0
                           0000A1   334 _P2_1	=	0x00a1
                           0000A2   335 _P2_2	=	0x00a2
                           0000A3   336 _P2_3	=	0x00a3
                           0000A4   337 _P2_4	=	0x00a4
                           0000A5   338 _P2_5	=	0x00a5
                           0000A6   339 _P2_6	=	0x00a6
                           0000A7   340 _P2_7	=	0x00a7
                           0000A8   341 _EX0	=	0x00a8
                           0000A9   342 _ET0	=	0x00a9
                           0000AA   343 _EX1	=	0x00aa
                           0000AB   344 _ET1	=	0x00ab
                           0000AC   345 _ES	=	0x00ac
                           0000AF   346 _EA	=	0x00af
                           0000B0   347 _P3_0	=	0x00b0
                           0000B1   348 _P3_1	=	0x00b1
                           0000B2   349 _P3_2	=	0x00b2
                           0000B3   350 _P3_3	=	0x00b3
                           0000B4   351 _P3_4	=	0x00b4
                           0000B5   352 _P3_5	=	0x00b5
                           0000B6   353 _P3_6	=	0x00b6
                           0000B7   354 _P3_7	=	0x00b7
                           0000B0   355 _RXD	=	0x00b0
                           0000B1   356 _TXD	=	0x00b1
                           0000B2   357 _INT0	=	0x00b2
                           0000B3   358 _INT1	=	0x00b3
                           0000B4   359 _T0	=	0x00b4
                           0000B5   360 _T1	=	0x00b5
                           0000B6   361 _WR	=	0x00b6
                           0000B7   362 _RD	=	0x00b7
                           0000B8   363 _PX0	=	0x00b8
                           0000B9   364 _PT0	=	0x00b9
                           0000BA   365 _PX1	=	0x00ba
                           0000BB   366 _PT1	=	0x00bb
                           0000BC   367 _PS	=	0x00bc
                           0000D0   368 _P	=	0x00d0
                           0000D1   369 _F1	=	0x00d1
                           0000D2   370 _OV	=	0x00d2
                           0000D3   371 _RS0	=	0x00d3
                           0000D4   372 _RS1	=	0x00d4
                           0000D5   373 _F0	=	0x00d5
                           0000D6   374 _AC	=	0x00d6
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 _ET2	=	0x00ad
                           0000BD   377 _PT2	=	0x00bd
                           0000C8   378 _T2CON_0	=	0x00c8
                           0000C9   379 _T2CON_1	=	0x00c9
                           0000CA   380 _T2CON_2	=	0x00ca
                           0000CB   381 _T2CON_3	=	0x00cb
                           0000CC   382 _T2CON_4	=	0x00cc
                           0000CD   383 _T2CON_5	=	0x00cd
                           0000CE   384 _T2CON_6	=	0x00ce
                           0000CF   385 _T2CON_7	=	0x00cf
                           0000C8   386 _CP_RL2	=	0x00c8
                           0000C9   387 _C_T2	=	0x00c9
                           0000CA   388 _TR2	=	0x00ca
                           0000CB   389 _EXEN2	=	0x00cb
                           0000CC   390 _TCLK	=	0x00cc
                           0000CD   391 _RCLK	=	0x00cd
                           0000CE   392 _EXF2	=	0x00ce
                           0000CF   393 _TF2	=	0x00cf
                           0000DF   394 _CF	=	0x00df
                           0000DE   395 _CR	=	0x00de
                           0000DC   396 _CCF4	=	0x00dc
                           0000DB   397 _CCF3	=	0x00db
                           0000DA   398 _CCF2	=	0x00da
                           0000D9   399 _CCF1	=	0x00d9
                           0000D8   400 _CCF0	=	0x00d8
                           0000AE   401 _EC	=	0x00ae
                           0000BE   402 _PPCL	=	0x00be
                           0000BD   403 _PT2L	=	0x00bd
                           0000BC   404 _PSL	=	0x00bc
                           0000BB   405 _PT1L	=	0x00bb
                           0000BA   406 _PX1L	=	0x00ba
                           0000B9   407 _PT0L	=	0x00b9
                           0000B8   408 _PX0L	=	0x00b8
                           0000C0   409 _P4_0	=	0x00c0
                           0000C1   410 _P4_1	=	0x00c1
                           0000C2   411 _P4_2	=	0x00c2
                           0000C3   412 _P4_3	=	0x00c3
                           0000C4   413 _P4_4	=	0x00c4
                           0000C5   414 _P4_5	=	0x00c5
                           0000C6   415 _P4_6	=	0x00c6
                           0000C7   416 _P4_7	=	0x00c7
                           0000E8   417 _P5_0	=	0x00e8
                           0000E9   418 _P5_1	=	0x00e9
                           0000EA   419 _P5_2	=	0x00ea
                           0000EB   420 _P5_3	=	0x00eb
                           0000EC   421 _P5_4	=	0x00ec
                           0000ED   422 _P5_5	=	0x00ed
                           0000EE   423 _P5_6	=	0x00ee
                           0000EF   424 _P5_7	=	0x00ef
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable register banks
                                    427 ;--------------------------------------------------------
                                    428 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        429 	.ds 8
                                    430 ;--------------------------------------------------------
                                    431 ; internal ram data
                                    432 ;--------------------------------------------------------
                                    433 	.area DSEG    (DATA)
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable items in internal ram
                                    436 ;--------------------------------------------------------
                                    437 ;--------------------------------------------------------
                                    438 ; indirectly addressable internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area ISEG    (DATA)
                                    441 ;--------------------------------------------------------
                                    442 ; absolute internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area IABS    (ABS,DATA)
                                    445 	.area IABS    (ABS,DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; bit data
                                    448 ;--------------------------------------------------------
                                    449 	.area BSEG    (BIT)
      000000                        450 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        451 	.ds 1
                                    452 ;--------------------------------------------------------
                                    453 ; paged external ram data
                                    454 ;--------------------------------------------------------
                                    455 	.area PSEG    (PAG,XDATA)
                                    456 ;--------------------------------------------------------
                                    457 ; uninitialized external ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area XSEG    (XDATA)
      000100                        460 _delay_ms_ms_10000_82:
      000100                        461 	.ds 2
      000102                        462 _delay_ms_i_20000_84:
      000102                        463 	.ds 4
      000106                        464 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        465 	.ds 2
      000108                        466 _enc28j60_set_transmit_pointers_start_address_10000_88:
      000108                        467 	.ds 2
      00010A                        468 _wait_for_transmission_complete_timeout_ms_10000_90:
      00010A                        469 	.ds 2
      00010C                        470 _set_mac_address_mac_address_10000_96:
      00010C                        471 	.ds 3
      00010F                        472 _arp_request_device_mac_10000_99:
      00010F                        473 	.ds 6
      000115                        474 _arp_request_target_mac_10000_99:
      000115                        475 	.ds 6
      00011B                        476 _arp_request_device_ip_10000_99:
      00011B                        477 	.ds 4
      00011F                        478 _arp_request_target_ip_10000_99:
      00011F                        479 	.ds 4
      000123                        480 _arp_request_arp_packet_10000_99:
      000123                        481 	.ds 43
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; initialized external ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; global & static initialisations
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; Home
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area HOME    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; code
                                    514 ;--------------------------------------------------------
                                    515 	.area CSEG    (CODE)
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'delay_ms'
                                    518 ;------------------------------------------------------------
                                    519 ;ms                        Allocated with name '_delay_ms_ms_10000_82'
                                    520 ;i                         Allocated with name '_delay_ms_i_20000_84'
                                    521 ;------------------------------------------------------------
                                    522 ;	arp.c:25: void delay_ms(uint16_t ms) {
                                    523 ;	-----------------------------------------
                                    524 ;	 function delay_ms
                                    525 ;	-----------------------------------------
      00209B                        526 _delay_ms:
                           000007   527 	ar7 = 0x07
                           000006   528 	ar6 = 0x06
                           000005   529 	ar5 = 0x05
                           000004   530 	ar4 = 0x04
                           000003   531 	ar3 = 0x03
                           000002   532 	ar2 = 0x02
                           000001   533 	ar1 = 0x01
                           000000   534 	ar0 = 0x00
      00209B AF 83            [24]  535 	mov	r7,dph
      00209D E5 82            [12]  536 	mov	a,dpl
      00209F 90 01 00         [24]  537 	mov	dptr,#_delay_ms_ms_10000_82
      0020A2 F0               [24]  538 	movx	@dptr,a
      0020A3 EF               [12]  539 	mov	a,r7
      0020A4 A3               [24]  540 	inc	dptr
      0020A5 F0               [24]  541 	movx	@dptr,a
                                    542 ;	arp.c:27: for (volatile uint32_t i = 0; i < ms * 1000; i++) {
      0020A6 90 01 02         [24]  543 	mov	dptr,#_delay_ms_i_20000_84
      0020A9 E4               [12]  544 	clr	a
      0020AA F0               [24]  545 	movx	@dptr,a
      0020AB A3               [24]  546 	inc	dptr
      0020AC F0               [24]  547 	movx	@dptr,a
      0020AD A3               [24]  548 	inc	dptr
      0020AE F0               [24]  549 	movx	@dptr,a
      0020AF A3               [24]  550 	inc	dptr
      0020B0 F0               [24]  551 	movx	@dptr,a
      0020B1 90 01 00         [24]  552 	mov	dptr,#_delay_ms_ms_10000_82
      0020B4 E0               [24]  553 	movx	a,@dptr
      0020B5 FE               [12]  554 	mov	r6,a
      0020B6 A3               [24]  555 	inc	dptr
      0020B7 E0               [24]  556 	movx	a,@dptr
      0020B8 FF               [12]  557 	mov	r7,a
      0020B9                        558 00103$:
      0020B9 90 08 A5         [24]  559 	mov	dptr,#__mulint_PARM_2
      0020BC EE               [12]  560 	mov	a,r6
      0020BD F0               [24]  561 	movx	@dptr,a
      0020BE EF               [12]  562 	mov	a,r7
      0020BF A3               [24]  563 	inc	dptr
      0020C0 F0               [24]  564 	movx	@dptr,a
      0020C1 90 03 E8         [24]  565 	mov	dptr,#0x03e8
      0020C4 C0 07            [24]  566 	push	ar7
      0020C6 C0 06            [24]  567 	push	ar6
      0020C8 12 51 F7         [24]  568 	lcall	__mulint
      0020CB AC 82            [24]  569 	mov	r4, dpl
      0020CD AD 83            [24]  570 	mov	r5, dph
      0020CF D0 06            [24]  571 	pop	ar6
      0020D1 D0 07            [24]  572 	pop	ar7
      0020D3 90 01 02         [24]  573 	mov	dptr,#_delay_ms_i_20000_84
      0020D6 E0               [24]  574 	movx	a,@dptr
      0020D7 F8               [12]  575 	mov	r0,a
      0020D8 A3               [24]  576 	inc	dptr
      0020D9 E0               [24]  577 	movx	a,@dptr
      0020DA F9               [12]  578 	mov	r1,a
      0020DB A3               [24]  579 	inc	dptr
      0020DC E0               [24]  580 	movx	a,@dptr
      0020DD FA               [12]  581 	mov	r2,a
      0020DE A3               [24]  582 	inc	dptr
      0020DF E0               [24]  583 	movx	a,@dptr
      0020E0 FB               [12]  584 	mov	r3,a
      0020E1 C0 06            [24]  585 	push	ar6
      0020E3 C0 07            [24]  586 	push	ar7
      0020E5 7E 00            [12]  587 	mov	r6,#0x00
      0020E7 7F 00            [12]  588 	mov	r7,#0x00
      0020E9 C3               [12]  589 	clr	c
      0020EA E8               [12]  590 	mov	a,r0
      0020EB 9C               [12]  591 	subb	a,r4
      0020EC E9               [12]  592 	mov	a,r1
      0020ED 9D               [12]  593 	subb	a,r5
      0020EE EA               [12]  594 	mov	a,r2
      0020EF 9E               [12]  595 	subb	a,r6
      0020F0 EB               [12]  596 	mov	a,r3
      0020F1 9F               [12]  597 	subb	a,r7
      0020F2 D0 07            [24]  598 	pop	ar7
      0020F4 D0 06            [24]  599 	pop	ar6
      0020F6 50 23            [24]  600 	jnc	00105$
      0020F8 90 01 02         [24]  601 	mov	dptr,#_delay_ms_i_20000_84
      0020FB E0               [24]  602 	movx	a,@dptr
      0020FC FA               [12]  603 	mov	r2,a
      0020FD A3               [24]  604 	inc	dptr
      0020FE E0               [24]  605 	movx	a,@dptr
      0020FF FB               [12]  606 	mov	r3,a
      002100 A3               [24]  607 	inc	dptr
      002101 E0               [24]  608 	movx	a,@dptr
      002102 FC               [12]  609 	mov	r4,a
      002103 A3               [24]  610 	inc	dptr
      002104 E0               [24]  611 	movx	a,@dptr
      002105 FD               [12]  612 	mov	r5,a
      002106 90 01 02         [24]  613 	mov	dptr,#_delay_ms_i_20000_84
      002109 74 01            [12]  614 	mov	a,#0x01
      00210B 2A               [12]  615 	add	a, r2
      00210C F0               [24]  616 	movx	@dptr,a
      00210D E4               [12]  617 	clr	a
      00210E 3B               [12]  618 	addc	a, r3
      00210F A3               [24]  619 	inc	dptr
      002110 F0               [24]  620 	movx	@dptr,a
      002111 E4               [12]  621 	clr	a
      002112 3C               [12]  622 	addc	a, r4
      002113 A3               [24]  623 	inc	dptr
      002114 F0               [24]  624 	movx	@dptr,a
      002115 E4               [12]  625 	clr	a
      002116 3D               [12]  626 	addc	a, r5
      002117 A3               [24]  627 	inc	dptr
      002118 F0               [24]  628 	movx	@dptr,a
      002119 80 9E            [24]  629 	sjmp	00103$
      00211B                        630 00105$:
                                    631 ;	arp.c:33: }
      00211B 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    635 ;------------------------------------------------------------
                                    636 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_87'
                                    637 ;------------------------------------------------------------
                                    638 ;	arp.c:45: void enc28j60_start_transmission(void) {
                                    639 ;	-----------------------------------------
                                    640 ;	 function enc28j60_start_transmission
                                    641 ;	-----------------------------------------
      00211C                        642 _enc28j60_start_transmission:
                                    643 ;	arp.c:47: uint8_t econ1 = enc_mac_read(ENC_ECON1, 0); // Read ECON1
      00211C 90 01 66         [24]  644 	mov	dptr,#_enc_mac_read_PARM_2
      00211F E4               [12]  645 	clr	a
      002120 F0               [24]  646 	movx	@dptr,a
      002121 75 82 1F         [24]  647 	mov	dpl, #0x1f
      002124 12 2A A5         [24]  648 	lcall	_enc_mac_read
      002127 E5 82            [12]  649 	mov	a, dpl
                                    650 ;	arp.c:49: econ1 |= 0x08; // Set TXRTS (bit 3)
      002129 44 08            [12]  651 	orl	a,#0x08
      00212B FF               [12]  652 	mov	r7,a
                                    653 ;	arp.c:51: enc_control_write(0, ENC_ECON1, econ1); // Write back to ECON1
      00212C 90 01 50         [24]  654 	mov	dptr,#_enc_control_write_PARM_2
      00212F 74 1F            [12]  655 	mov	a,#0x1f
      002131 F0               [24]  656 	movx	@dptr,a
      002132 90 01 51         [24]  657 	mov	dptr,#_enc_control_write_PARM_3
      002135 EF               [12]  658 	mov	a,r7
      002136 F0               [24]  659 	movx	@dptr,a
      002137 90 00 00         [24]  660 	mov	dptr,#0x0000
                                    661 ;	arp.c:53: }
      00213A 02 26 62         [24]  662 	ljmp	_enc_control_write
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    665 ;------------------------------------------------------------
                                    666 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    667 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_88'
                                    668 ;------------------------------------------------------------
                                    669 ;	arp.c:66: void enc28j60_set_transmit_pointers(uint16_t start_address,
                                    670 ;	-----------------------------------------
                                    671 ;	 function enc28j60_set_transmit_pointers
                                    672 ;	-----------------------------------------
      00213D                        673 _enc28j60_set_transmit_pointers:
      00213D AF 83            [24]  674 	mov	r7,dph
      00213F E5 82            [12]  675 	mov	a,dpl
      002141 90 01 08         [24]  676 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_88
      002144 F0               [24]  677 	movx	@dptr,a
      002145 EF               [12]  678 	mov	a,r7
      002146 A3               [24]  679 	inc	dptr
      002147 F0               [24]  680 	movx	@dptr,a
                                    681 ;	arp.c:72: enc_control_write(0, ENC_ETXSTL, (uint8_t) (start_address & 0xFF)); // Low byte
      002148 90 01 08         [24]  682 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_88
      00214B E0               [24]  683 	movx	a,@dptr
      00214C FE               [12]  684 	mov	r6,a
      00214D A3               [24]  685 	inc	dptr
      00214E E0               [24]  686 	movx	a,@dptr
      00214F FF               [12]  687 	mov	r7,a
      002150 8E 05            [24]  688 	mov	ar5,r6
      002152 90 01 50         [24]  689 	mov	dptr,#_enc_control_write_PARM_2
      002155 74 04            [12]  690 	mov	a,#0x04
      002157 F0               [24]  691 	movx	@dptr,a
      002158 90 01 51         [24]  692 	mov	dptr,#_enc_control_write_PARM_3
      00215B ED               [12]  693 	mov	a,r5
      00215C F0               [24]  694 	movx	@dptr,a
      00215D 90 00 00         [24]  695 	mov	dptr,#0x0000
      002160 C0 07            [24]  696 	push	ar7
      002162 C0 06            [24]  697 	push	ar6
      002164 12 26 62         [24]  698 	lcall	_enc_control_write
      002167 D0 06            [24]  699 	pop	ar6
      002169 D0 07            [24]  700 	pop	ar7
                                    701 ;	arp.c:74: enc_control_write(0, ENC_ETXSTH, (uint8_t) ((start_address >> 8) & 0xFF)); // High byte
      00216B 8F 06            [24]  702 	mov	ar6,r7
      00216D 90 01 50         [24]  703 	mov	dptr,#_enc_control_write_PARM_2
      002170 74 05            [12]  704 	mov	a,#0x05
      002172 F0               [24]  705 	movx	@dptr,a
      002173 90 01 51         [24]  706 	mov	dptr,#_enc_control_write_PARM_3
      002176 EE               [12]  707 	mov	a,r6
      002177 F0               [24]  708 	movx	@dptr,a
      002178 90 00 00         [24]  709 	mov	dptr,#0x0000
      00217B 12 26 62         [24]  710 	lcall	_enc_control_write
                                    711 ;	arp.c:78: enc_control_write(0, ENC_ETXNDL, (uint8_t) (end_address & 0xFF)); // Low byte
      00217E 90 01 06         [24]  712 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002181 E0               [24]  713 	movx	a,@dptr
      002182 FE               [12]  714 	mov	r6,a
      002183 A3               [24]  715 	inc	dptr
      002184 E0               [24]  716 	movx	a,@dptr
      002185 FF               [12]  717 	mov	r7,a
      002186 8E 05            [24]  718 	mov	ar5,r6
      002188 90 01 50         [24]  719 	mov	dptr,#_enc_control_write_PARM_2
      00218B 74 06            [12]  720 	mov	a,#0x06
      00218D F0               [24]  721 	movx	@dptr,a
      00218E 90 01 51         [24]  722 	mov	dptr,#_enc_control_write_PARM_3
      002191 ED               [12]  723 	mov	a,r5
      002192 F0               [24]  724 	movx	@dptr,a
      002193 90 00 00         [24]  725 	mov	dptr,#0x0000
      002196 C0 07            [24]  726 	push	ar7
      002198 C0 06            [24]  727 	push	ar6
      00219A 12 26 62         [24]  728 	lcall	_enc_control_write
      00219D D0 06            [24]  729 	pop	ar6
      00219F D0 07            [24]  730 	pop	ar7
                                    731 ;	arp.c:80: enc_control_write(0, ENC_ETXNDH, (uint8_t) ((end_address >> 8) & 0xFF)); // High byte
      0021A1 8F 06            [24]  732 	mov	ar6,r7
      0021A3 90 01 50         [24]  733 	mov	dptr,#_enc_control_write_PARM_2
      0021A6 74 07            [12]  734 	mov	a,#0x07
      0021A8 F0               [24]  735 	movx	@dptr,a
      0021A9 90 01 51         [24]  736 	mov	dptr,#_enc_control_write_PARM_3
      0021AC EE               [12]  737 	mov	a,r6
      0021AD F0               [24]  738 	movx	@dptr,a
      0021AE 90 00 00         [24]  739 	mov	dptr,#0x0000
                                    740 ;	arp.c:82: }
      0021B1 02 26 62         [24]  741 	ljmp	_enc_control_write
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    744 ;------------------------------------------------------------
                                    745 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_90'
                                    746 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_91'
                                    747 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_92'
                                    748 ;------------------------------------------------------------
                                    749 ;	arp.c:94: bool wait_for_transmission_complete(uint16_t timeout_ms) {
                                    750 ;	-----------------------------------------
                                    751 ;	 function wait_for_transmission_complete
                                    752 ;	-----------------------------------------
      0021B4                        753 _wait_for_transmission_complete:
      0021B4 AF 83            [24]  754 	mov	r7,dph
      0021B6 E5 82            [12]  755 	mov	a,dpl
      0021B8 90 01 0A         [24]  756 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_90
      0021BB F0               [24]  757 	movx	@dptr,a
      0021BC EF               [12]  758 	mov	a,r7
      0021BD A3               [24]  759 	inc	dptr
      0021BE F0               [24]  760 	movx	@dptr,a
                                    761 ;	arp.c:98: while (elapsed < timeout_ms) {
      0021BF 90 01 0A         [24]  762 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_90
      0021C2 E0               [24]  763 	movx	a,@dptr
      0021C3 FE               [12]  764 	mov	r6,a
      0021C4 A3               [24]  765 	inc	dptr
      0021C5 E0               [24]  766 	movx	a,@dptr
      0021C6 FF               [12]  767 	mov	r7,a
      0021C7 7C 00            [12]  768 	mov	r4,#0x00
      0021C9 7D 00            [12]  769 	mov	r5,#0x00
      0021CB                        770 00103$:
      0021CB C3               [12]  771 	clr	c
      0021CC EC               [12]  772 	mov	a,r4
      0021CD 9E               [12]  773 	subb	a,r6
      0021CE ED               [12]  774 	mov	a,r5
      0021CF 9F               [12]  775 	subb	a,r7
      0021D0 50 41            [24]  776 	jnc	00105$
                                    777 ;	arp.c:100: uint8_t econ1 = enc_mac_read(ENC_ECON1, 0); // Read ECON1
      0021D2 90 01 66         [24]  778 	mov	dptr,#_enc_mac_read_PARM_2
      0021D5 E4               [12]  779 	clr	a
      0021D6 F0               [24]  780 	movx	@dptr,a
      0021D7 75 82 1F         [24]  781 	mov	dpl, #0x1f
      0021DA C0 07            [24]  782 	push	ar7
      0021DC C0 06            [24]  783 	push	ar6
      0021DE C0 05            [24]  784 	push	ar5
      0021E0 C0 04            [24]  785 	push	ar4
      0021E2 12 2A A5         [24]  786 	lcall	_enc_mac_read
      0021E5 E5 82            [12]  787 	mov	a, dpl
      0021E7 D0 04            [24]  788 	pop	ar4
      0021E9 D0 05            [24]  789 	pop	ar5
      0021EB D0 06            [24]  790 	pop	ar6
      0021ED D0 07            [24]  791 	pop	ar7
                                    792 ;	arp.c:102: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      0021EF 20 E3 04         [24]  793 	jb	acc.3,00102$
                                    794 ;	arp.c:104: return true;  // Transmission completed
      0021F2 75 82 01         [24]  795 	mov	dpl, #0x01
      0021F5 22               [24]  796 	ret
      0021F6                        797 00102$:
                                    798 ;	arp.c:108: delay_ms(1);  // Wait 1 ms
      0021F6 90 00 01         [24]  799 	mov	dptr,#0x0001
      0021F9 C0 07            [24]  800 	push	ar7
      0021FB C0 06            [24]  801 	push	ar6
      0021FD C0 05            [24]  802 	push	ar5
      0021FF C0 04            [24]  803 	push	ar4
      002201 12 20 9B         [24]  804 	lcall	_delay_ms
      002204 D0 04            [24]  805 	pop	ar4
      002206 D0 05            [24]  806 	pop	ar5
      002208 D0 06            [24]  807 	pop	ar6
      00220A D0 07            [24]  808 	pop	ar7
                                    809 ;	arp.c:110: elapsed++;
      00220C 0C               [12]  810 	inc	r4
      00220D BC 00 BB         [24]  811 	cjne	r4,#0x00,00103$
      002210 0D               [12]  812 	inc	r5
      002211 80 B8            [24]  813 	sjmp	00103$
      002213                        814 00105$:
                                    815 ;	arp.c:114: return false;  // Timed out
      002213 75 82 00         [24]  816 	mov	dpl, #0x00
                                    817 ;	arp.c:116: }
      002216 22               [24]  818 	ret
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    821 ;------------------------------------------------------------
                                    822 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_95'
                                    823 ;------------------------------------------------------------
                                    824 ;	arp.c:128: bool enc28j60_transmission_successful(void) {
                                    825 ;	-----------------------------------------
                                    826 ;	 function enc28j60_transmission_successful
                                    827 ;	-----------------------------------------
      002217                        828 _enc28j60_transmission_successful:
                                    829 ;	arp.c:130: uint8_t estat = enc_mac_read(ENC_ESTAT, 0); // Read ESTAT
      002217 90 01 66         [24]  830 	mov	dptr,#_enc_mac_read_PARM_2
      00221A E4               [12]  831 	clr	a
      00221B F0               [24]  832 	movx	@dptr,a
      00221C 75 82 1D         [24]  833 	mov	dpl, #0x1d
      00221F 12 2A A5         [24]  834 	lcall	_enc_mac_read
                                    835 ;	arp.c:132: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      002222 E5 82            [12]  836 	mov	a,dpl
      002224 03               [12]  837 	rr	a
      002225 54 01            [12]  838 	anl	a,#0x01
      002227 B4 01 00         [24]  839 	cjne	a,#0x01,00103$
      00222A                        840 00103$:
      00222A 92 00            [24]  841 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      00222C E4               [12]  842 	clr	a
      00222D 33               [12]  843 	rlc	a
      00222E F5 82            [12]  844 	mov	dpl, a
                                    845 ;	arp.c:134: }
      002230 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'set_mac_address'
                                    849 ;------------------------------------------------------------
                                    850 ;mac_address               Allocated with name '_set_mac_address_mac_address_10000_96'
                                    851 ;------------------------------------------------------------
                                    852 ;	arp.c:143: void set_mac_address(uint8_t *mac_address) {
                                    853 ;	-----------------------------------------
                                    854 ;	 function set_mac_address
                                    855 ;	-----------------------------------------
      002231                        856 _set_mac_address:
      002231 AF F0            [24]  857 	mov	r7,b
      002233 AE 83            [24]  858 	mov	r6,dph
      002235 E5 82            [12]  859 	mov	a,dpl
      002237 90 01 0C         [24]  860 	mov	dptr,#_set_mac_address_mac_address_10000_96
      00223A F0               [24]  861 	movx	@dptr,a
      00223B EE               [12]  862 	mov	a,r6
      00223C A3               [24]  863 	inc	dptr
      00223D F0               [24]  864 	movx	@dptr,a
      00223E EF               [12]  865 	mov	a,r7
      00223F A3               [24]  866 	inc	dptr
      002240 F0               [24]  867 	movx	@dptr,a
                                    868 ;	arp.c:151: enc_control_write(3, ENC_MAADR6, *mac_address++);  // MAADR6
      002241 90 01 0C         [24]  869 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002244 E0               [24]  870 	movx	a,@dptr
      002245 FD               [12]  871 	mov	r5,a
      002246 A3               [24]  872 	inc	dptr
      002247 E0               [24]  873 	movx	a,@dptr
      002248 FE               [12]  874 	mov	r6,a
      002249 A3               [24]  875 	inc	dptr
      00224A E0               [24]  876 	movx	a,@dptr
      00224B FF               [12]  877 	mov	r7,a
      00224C 8D 82            [24]  878 	mov	dpl,r5
      00224E 8E 83            [24]  879 	mov	dph,r6
      002250 8F F0            [24]  880 	mov	b,r7
      002252 12 5C 87         [24]  881 	lcall	__gptrget
      002255 FC               [12]  882 	mov	r4,a
      002256 90 01 0C         [24]  883 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002259 74 01            [12]  884 	mov	a,#0x01
      00225B 2D               [12]  885 	add	a, r5
      00225C F0               [24]  886 	movx	@dptr,a
      00225D E4               [12]  887 	clr	a
      00225E 3E               [12]  888 	addc	a, r6
      00225F A3               [24]  889 	inc	dptr
      002260 F0               [24]  890 	movx	@dptr,a
      002261 EF               [12]  891 	mov	a,r7
      002262 A3               [24]  892 	inc	dptr
      002263 F0               [24]  893 	movx	@dptr,a
      002264 90 01 50         [24]  894 	mov	dptr,#_enc_control_write_PARM_2
      002267 74 01            [12]  895 	mov	a,#0x01
      002269 F0               [24]  896 	movx	@dptr,a
      00226A 90 01 51         [24]  897 	mov	dptr,#_enc_control_write_PARM_3
      00226D EC               [12]  898 	mov	a,r4
      00226E F0               [24]  899 	movx	@dptr,a
      00226F 90 00 03         [24]  900 	mov	dptr,#0x0003
      002272 12 26 62         [24]  901 	lcall	_enc_control_write
                                    902 ;	arp.c:153: enc_control_write(3, ENC_MAADR5, *mac_address++);  // MAADR5
      002275 90 01 0C         [24]  903 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002278 E0               [24]  904 	movx	a,@dptr
      002279 FD               [12]  905 	mov	r5,a
      00227A A3               [24]  906 	inc	dptr
      00227B E0               [24]  907 	movx	a,@dptr
      00227C FE               [12]  908 	mov	r6,a
      00227D A3               [24]  909 	inc	dptr
      00227E E0               [24]  910 	movx	a,@dptr
      00227F FF               [12]  911 	mov	r7,a
      002280 8D 82            [24]  912 	mov	dpl,r5
      002282 8E 83            [24]  913 	mov	dph,r6
      002284 8F F0            [24]  914 	mov	b,r7
      002286 12 5C 87         [24]  915 	lcall	__gptrget
      002289 FC               [12]  916 	mov	r4,a
      00228A 90 01 0C         [24]  917 	mov	dptr,#_set_mac_address_mac_address_10000_96
      00228D 74 01            [12]  918 	mov	a,#0x01
      00228F 2D               [12]  919 	add	a, r5
      002290 F0               [24]  920 	movx	@dptr,a
      002291 E4               [12]  921 	clr	a
      002292 3E               [12]  922 	addc	a, r6
      002293 A3               [24]  923 	inc	dptr
      002294 F0               [24]  924 	movx	@dptr,a
      002295 EF               [12]  925 	mov	a,r7
      002296 A3               [24]  926 	inc	dptr
      002297 F0               [24]  927 	movx	@dptr,a
      002298 90 01 50         [24]  928 	mov	dptr,#_enc_control_write_PARM_2
      00229B E4               [12]  929 	clr	a
      00229C F0               [24]  930 	movx	@dptr,a
      00229D 90 01 51         [24]  931 	mov	dptr,#_enc_control_write_PARM_3
      0022A0 EC               [12]  932 	mov	a,r4
      0022A1 F0               [24]  933 	movx	@dptr,a
      0022A2 90 00 03         [24]  934 	mov	dptr,#0x0003
      0022A5 12 26 62         [24]  935 	lcall	_enc_control_write
                                    936 ;	arp.c:155: enc_control_write(3, ENC_MAADR4, *mac_address++);  // MAADR4
      0022A8 90 01 0C         [24]  937 	mov	dptr,#_set_mac_address_mac_address_10000_96
      0022AB E0               [24]  938 	movx	a,@dptr
      0022AC FD               [12]  939 	mov	r5,a
      0022AD A3               [24]  940 	inc	dptr
      0022AE E0               [24]  941 	movx	a,@dptr
      0022AF FE               [12]  942 	mov	r6,a
      0022B0 A3               [24]  943 	inc	dptr
      0022B1 E0               [24]  944 	movx	a,@dptr
      0022B2 FF               [12]  945 	mov	r7,a
      0022B3 8D 82            [24]  946 	mov	dpl,r5
      0022B5 8E 83            [24]  947 	mov	dph,r6
      0022B7 8F F0            [24]  948 	mov	b,r7
      0022B9 12 5C 87         [24]  949 	lcall	__gptrget
      0022BC FC               [12]  950 	mov	r4,a
      0022BD 90 01 0C         [24]  951 	mov	dptr,#_set_mac_address_mac_address_10000_96
      0022C0 74 01            [12]  952 	mov	a,#0x01
      0022C2 2D               [12]  953 	add	a, r5
      0022C3 F0               [24]  954 	movx	@dptr,a
      0022C4 E4               [12]  955 	clr	a
      0022C5 3E               [12]  956 	addc	a, r6
      0022C6 A3               [24]  957 	inc	dptr
      0022C7 F0               [24]  958 	movx	@dptr,a
      0022C8 EF               [12]  959 	mov	a,r7
      0022C9 A3               [24]  960 	inc	dptr
      0022CA F0               [24]  961 	movx	@dptr,a
      0022CB 90 01 50         [24]  962 	mov	dptr,#_enc_control_write_PARM_2
      0022CE 74 03            [12]  963 	mov	a,#0x03
      0022D0 F0               [24]  964 	movx	@dptr,a
      0022D1 90 01 51         [24]  965 	mov	dptr,#_enc_control_write_PARM_3
      0022D4 EC               [12]  966 	mov	a,r4
      0022D5 F0               [24]  967 	movx	@dptr,a
      0022D6 90 00 03         [24]  968 	mov	dptr,#0x0003
      0022D9 12 26 62         [24]  969 	lcall	_enc_control_write
                                    970 ;	arp.c:157: enc_control_write(3, ENC_MAADR3, *mac_address++);  // MAADR3
      0022DC 90 01 0C         [24]  971 	mov	dptr,#_set_mac_address_mac_address_10000_96
      0022DF E0               [24]  972 	movx	a,@dptr
      0022E0 FD               [12]  973 	mov	r5,a
      0022E1 A3               [24]  974 	inc	dptr
      0022E2 E0               [24]  975 	movx	a,@dptr
      0022E3 FE               [12]  976 	mov	r6,a
      0022E4 A3               [24]  977 	inc	dptr
      0022E5 E0               [24]  978 	movx	a,@dptr
      0022E6 FF               [12]  979 	mov	r7,a
      0022E7 8D 82            [24]  980 	mov	dpl,r5
      0022E9 8E 83            [24]  981 	mov	dph,r6
      0022EB 8F F0            [24]  982 	mov	b,r7
      0022ED 12 5C 87         [24]  983 	lcall	__gptrget
      0022F0 FC               [12]  984 	mov	r4,a
      0022F1 90 01 0C         [24]  985 	mov	dptr,#_set_mac_address_mac_address_10000_96
      0022F4 74 01            [12]  986 	mov	a,#0x01
      0022F6 2D               [12]  987 	add	a, r5
      0022F7 F0               [24]  988 	movx	@dptr,a
      0022F8 E4               [12]  989 	clr	a
      0022F9 3E               [12]  990 	addc	a, r6
      0022FA A3               [24]  991 	inc	dptr
      0022FB F0               [24]  992 	movx	@dptr,a
      0022FC EF               [12]  993 	mov	a,r7
      0022FD A3               [24]  994 	inc	dptr
      0022FE F0               [24]  995 	movx	@dptr,a
      0022FF 90 01 50         [24]  996 	mov	dptr,#_enc_control_write_PARM_2
      002302 74 02            [12]  997 	mov	a,#0x02
      002304 F0               [24]  998 	movx	@dptr,a
      002305 90 01 51         [24]  999 	mov	dptr,#_enc_control_write_PARM_3
      002308 EC               [12] 1000 	mov	a,r4
      002309 F0               [24] 1001 	movx	@dptr,a
      00230A 90 00 03         [24] 1002 	mov	dptr,#0x0003
      00230D 12 26 62         [24] 1003 	lcall	_enc_control_write
                                   1004 ;	arp.c:159: enc_control_write(3, ENC_MAADR2, *mac_address++);  // MAADR2
      002310 90 01 0C         [24] 1005 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002313 E0               [24] 1006 	movx	a,@dptr
      002314 FD               [12] 1007 	mov	r5,a
      002315 A3               [24] 1008 	inc	dptr
      002316 E0               [24] 1009 	movx	a,@dptr
      002317 FE               [12] 1010 	mov	r6,a
      002318 A3               [24] 1011 	inc	dptr
      002319 E0               [24] 1012 	movx	a,@dptr
      00231A FF               [12] 1013 	mov	r7,a
      00231B 8D 82            [24] 1014 	mov	dpl,r5
      00231D 8E 83            [24] 1015 	mov	dph,r6
      00231F 8F F0            [24] 1016 	mov	b,r7
      002321 12 5C 87         [24] 1017 	lcall	__gptrget
      002324 FC               [12] 1018 	mov	r4,a
      002325 90 01 0C         [24] 1019 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002328 74 01            [12] 1020 	mov	a,#0x01
      00232A 2D               [12] 1021 	add	a, r5
      00232B F0               [24] 1022 	movx	@dptr,a
      00232C E4               [12] 1023 	clr	a
      00232D 3E               [12] 1024 	addc	a, r6
      00232E A3               [24] 1025 	inc	dptr
      00232F F0               [24] 1026 	movx	@dptr,a
      002330 EF               [12] 1027 	mov	a,r7
      002331 A3               [24] 1028 	inc	dptr
      002332 F0               [24] 1029 	movx	@dptr,a
      002333 90 01 50         [24] 1030 	mov	dptr,#_enc_control_write_PARM_2
      002336 74 05            [12] 1031 	mov	a,#0x05
      002338 F0               [24] 1032 	movx	@dptr,a
      002339 90 01 51         [24] 1033 	mov	dptr,#_enc_control_write_PARM_3
      00233C EC               [12] 1034 	mov	a,r4
      00233D F0               [24] 1035 	movx	@dptr,a
      00233E 90 00 03         [24] 1036 	mov	dptr,#0x0003
      002341 12 26 62         [24] 1037 	lcall	_enc_control_write
                                   1038 ;	arp.c:161: enc_control_write(3, ENC_MAADR1, *mac_address);  // MAADR1
      002344 90 01 0C         [24] 1039 	mov	dptr,#_set_mac_address_mac_address_10000_96
      002347 E0               [24] 1040 	movx	a,@dptr
      002348 FD               [12] 1041 	mov	r5,a
      002349 A3               [24] 1042 	inc	dptr
      00234A E0               [24] 1043 	movx	a,@dptr
      00234B FE               [12] 1044 	mov	r6,a
      00234C A3               [24] 1045 	inc	dptr
      00234D E0               [24] 1046 	movx	a,@dptr
      00234E FF               [12] 1047 	mov	r7,a
      00234F 8D 82            [24] 1048 	mov	dpl,r5
      002351 8E 83            [24] 1049 	mov	dph,r6
      002353 8F F0            [24] 1050 	mov	b,r7
      002355 12 5C 87         [24] 1051 	lcall	__gptrget
      002358 FD               [12] 1052 	mov	r5,a
      002359 90 01 50         [24] 1053 	mov	dptr,#_enc_control_write_PARM_2
      00235C 74 04            [12] 1054 	mov	a,#0x04
      00235E F0               [24] 1055 	movx	@dptr,a
      00235F 90 01 51         [24] 1056 	mov	dptr,#_enc_control_write_PARM_3
      002362 ED               [12] 1057 	mov	a,r5
      002363 F0               [24] 1058 	movx	@dptr,a
      002364 90 00 03         [24] 1059 	mov	dptr,#0x0003
                                   1060 ;	arp.c:165: }
      002367 02 26 62         [24] 1061 	ljmp	_enc_control_write
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'arp_request'
                                   1064 ;------------------------------------------------------------
                                   1065 ;device_mac                Allocated with name '_arp_request_device_mac_10000_99'
                                   1066 ;target_mac                Allocated with name '_arp_request_target_mac_10000_99'
                                   1067 ;device_ip                 Allocated with name '_arp_request_device_ip_10000_99'
                                   1068 ;target_ip                 Allocated with name '_arp_request_target_ip_10000_99'
                                   1069 ;arp_packet                Allocated with name '_arp_request_arp_packet_10000_99'
                                   1070 ;i                         Allocated with name '_arp_request_i_20000_100'
                                   1071 ;i                         Allocated with name '_arp_request_i_20000_102'
                                   1072 ;i                         Allocated with name '_arp_request_i_20000_104'
                                   1073 ;i                         Allocated with name '_arp_request_i_20000_106'
                                   1074 ;i                         Allocated with name '_arp_request_i_20000_108'
                                   1075 ;frame_size                Allocated with name '_arp_request_frame_size_10001_110'
                                   1076 ;start_address             Allocated with name '_arp_request_start_address_10001_110'
                                   1077 ;end_address               Allocated with name '_arp_request_end_address_10002_112'
                                   1078 ;------------------------------------------------------------
                                   1079 ;	arp.c:175: void arp_request(void) {
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function arp_request
                                   1082 ;	-----------------------------------------
      00236A                       1083 _arp_request:
                                   1084 ;	arp.c:176: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      00236A 90 01 0F         [24] 1085 	mov	dptr,#_arp_request_device_mac_10000_99
      00236D 74 02            [12] 1086 	mov	a,#0x02
      00236F F0               [24] 1087 	movx	@dptr,a
      002370 90 01 10         [24] 1088 	mov	dptr,#(_arp_request_device_mac_10000_99 + 0x0001)
      002373 23               [12] 1089 	rl	a
      002374 F0               [24] 1090 	movx	@dptr,a
      002375 90 01 11         [24] 1091 	mov	dptr,#(_arp_request_device_mac_10000_99 + 0x0002)
      002378 74 A3            [12] 1092 	mov	a,#0xa3
      00237A F0               [24] 1093 	movx	@dptr,a
      00237B 90 01 12         [24] 1094 	mov	dptr,#(_arp_request_device_mac_10000_99 + 0x0003)
      00237E 74 3C            [12] 1095 	mov	a,#0x3c
      002380 F0               [24] 1096 	movx	@dptr,a
      002381 90 01 13         [24] 1097 	mov	dptr,#(_arp_request_device_mac_10000_99 + 0x0004)
      002384 74 4D            [12] 1098 	mov	a,#0x4d
      002386 F0               [24] 1099 	movx	@dptr,a
      002387 90 01 14         [24] 1100 	mov	dptr,#(_arp_request_device_mac_10000_99 + 0x0005)
      00238A 74 50            [12] 1101 	mov	a,#0x50
      00238C F0               [24] 1102 	movx	@dptr,a
                                   1103 ;	arp.c:177: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      00238D 90 01 15         [24] 1104 	mov	dptr,#_arp_request_target_mac_10000_99
      002390 74 FF            [12] 1105 	mov	a,#0xff
      002392 F0               [24] 1106 	movx	@dptr,a
      002393 90 01 16         [24] 1107 	mov	dptr,#(_arp_request_target_mac_10000_99 + 0x0001)
      002396 F0               [24] 1108 	movx	@dptr,a
      002397 90 01 17         [24] 1109 	mov	dptr,#(_arp_request_target_mac_10000_99 + 0x0002)
      00239A F0               [24] 1110 	movx	@dptr,a
      00239B 90 01 18         [24] 1111 	mov	dptr,#(_arp_request_target_mac_10000_99 + 0x0003)
      00239E F0               [24] 1112 	movx	@dptr,a
      00239F 90 01 19         [24] 1113 	mov	dptr,#(_arp_request_target_mac_10000_99 + 0x0004)
      0023A2 F0               [24] 1114 	movx	@dptr,a
      0023A3 90 01 1A         [24] 1115 	mov	dptr,#(_arp_request_target_mac_10000_99 + 0x0005)
      0023A6 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	arp.c:178: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0023A7 90 01 1B         [24] 1118 	mov	dptr,#_arp_request_device_ip_10000_99
      0023AA 74 C0            [12] 1119 	mov	a,#0xc0
      0023AC F0               [24] 1120 	movx	@dptr,a
      0023AD 90 01 1C         [24] 1121 	mov	dptr,#(_arp_request_device_ip_10000_99 + 0x0001)
      0023B0 74 A8            [12] 1122 	mov	a,#0xa8
      0023B2 F0               [24] 1123 	movx	@dptr,a
      0023B3 90 01 1D         [24] 1124 	mov	dptr,#(_arp_request_device_ip_10000_99 + 0x0002)
      0023B6 74 01            [12] 1125 	mov	a,#0x01
      0023B8 F0               [24] 1126 	movx	@dptr,a
      0023B9 90 01 1E         [24] 1127 	mov	dptr,#(_arp_request_device_ip_10000_99 + 0x0003)
      0023BC 74 64            [12] 1128 	mov	a,#0x64
      0023BE F0               [24] 1129 	movx	@dptr,a
                                   1130 ;	arp.c:179: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0023BF 90 01 1F         [24] 1131 	mov	dptr,#_arp_request_target_ip_10000_99
      0023C2 74 C0            [12] 1132 	mov	a,#0xc0
      0023C4 F0               [24] 1133 	movx	@dptr,a
      0023C5 90 01 20         [24] 1134 	mov	dptr,#(_arp_request_target_ip_10000_99 + 0x0001)
      0023C8 74 A8            [12] 1135 	mov	a,#0xa8
      0023CA F0               [24] 1136 	movx	@dptr,a
      0023CB 90 01 21         [24] 1137 	mov	dptr,#(_arp_request_target_ip_10000_99 + 0x0002)
      0023CE 74 01            [12] 1138 	mov	a,#0x01
      0023D0 F0               [24] 1139 	movx	@dptr,a
      0023D1 90 01 22         [24] 1140 	mov	dptr,#(_arp_request_target_ip_10000_99 + 0x0003)
      0023D4 F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	arp.c:185: arp_packet[0] = ETH_PACKET_FIRST_BYTE;
      0023D5 90 01 23         [24] 1143 	mov	dptr,#_arp_request_arp_packet_10000_99
      0023D8 74 0E            [12] 1144 	mov	a,#0x0e
      0023DA F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	arp.c:193: for (int i = 0; i < 6; i++) {
      0023DB 7E 00            [12] 1147 	mov	r6,#0x00
      0023DD 7F 00            [12] 1148 	mov	r7,#0x00
      0023DF                       1149 00115$:
      0023DF C3               [12] 1150 	clr	c
      0023E0 EE               [12] 1151 	mov	a,r6
      0023E1 94 06            [12] 1152 	subb	a,#0x06
      0023E3 EF               [12] 1153 	mov	a,r7
      0023E4 64 80            [12] 1154 	xrl	a,#0x80
      0023E6 94 80            [12] 1155 	subb	a,#0x80
      0023E8 50 48            [24] 1156 	jnc	00101$
                                   1157 ;	arp.c:195: arp_packet[i + 1] = target_mac[i];  // Destination MAC address
      0023EA 8E 05            [24] 1158 	mov	ar5,r6
      0023EC ED               [12] 1159 	mov	a,r5
      0023ED 04               [12] 1160 	inc	a
      0023EE FC               [12] 1161 	mov	r4,a
      0023EF 33               [12] 1162 	rlc	a
      0023F0 95 E0            [12] 1163 	subb	a,acc
      0023F2 FB               [12] 1164 	mov	r3,a
      0023F3 EC               [12] 1165 	mov	a,r4
      0023F4 24 23            [12] 1166 	add	a, #_arp_request_arp_packet_10000_99
      0023F6 FC               [12] 1167 	mov	r4,a
      0023F7 EB               [12] 1168 	mov	a,r3
      0023F8 34 01            [12] 1169 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      0023FA FB               [12] 1170 	mov	r3,a
      0023FB EE               [12] 1171 	mov	a,r6
      0023FC 24 15            [12] 1172 	add	a, #_arp_request_target_mac_10000_99
      0023FE F5 82            [12] 1173 	mov	dpl,a
      002400 EF               [12] 1174 	mov	a,r7
      002401 34 01            [12] 1175 	addc	a, #(_arp_request_target_mac_10000_99 >> 8)
      002403 F5 83            [12] 1176 	mov	dph,a
      002405 E0               [24] 1177 	movx	a,@dptr
      002406 8C 82            [24] 1178 	mov	dpl,r4
      002408 8B 83            [24] 1179 	mov	dph,r3
      00240A F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	arp.c:197: arp_packet[i + 7] = device_mac[i];  // Source MAC address
      00240B 74 07            [12] 1182 	mov	a,#0x07
      00240D 2D               [12] 1183 	add	a, r5
      00240E FD               [12] 1184 	mov	r5,a
      00240F 33               [12] 1185 	rlc	a
      002410 95 E0            [12] 1186 	subb	a,acc
      002412 FC               [12] 1187 	mov	r4,a
      002413 ED               [12] 1188 	mov	a,r5
      002414 24 23            [12] 1189 	add	a, #_arp_request_arp_packet_10000_99
      002416 FD               [12] 1190 	mov	r5,a
      002417 EC               [12] 1191 	mov	a,r4
      002418 34 01            [12] 1192 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      00241A FC               [12] 1193 	mov	r4,a
      00241B EE               [12] 1194 	mov	a,r6
      00241C 24 0F            [12] 1195 	add	a, #_arp_request_device_mac_10000_99
      00241E F5 82            [12] 1196 	mov	dpl,a
      002420 EF               [12] 1197 	mov	a,r7
      002421 34 01            [12] 1198 	addc	a, #(_arp_request_device_mac_10000_99 >> 8)
      002423 F5 83            [12] 1199 	mov	dph,a
      002425 E0               [24] 1200 	movx	a,@dptr
      002426 8D 82            [24] 1201 	mov	dpl,r5
      002428 8C 83            [24] 1202 	mov	dph,r4
      00242A F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	arp.c:193: for (int i = 0; i < 6; i++) {
      00242B 0E               [12] 1205 	inc	r6
      00242C BE 00 B0         [24] 1206 	cjne	r6,#0x00,00115$
      00242F 0F               [12] 1207 	inc	r7
      002430 80 AD            [24] 1208 	sjmp	00115$
      002432                       1209 00101$:
                                   1210 ;	arp.c:203: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      002432 90 01 30         [24] 1211 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x000d)
      002435 74 08            [12] 1212 	mov	a,#0x08
      002437 F0               [24] 1213 	movx	@dptr,a
                                   1214 ;	arp.c:205: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      002438 90 01 31         [24] 1215 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x000e)
      00243B 74 06            [12] 1216 	mov	a,#0x06
      00243D F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	arp.c:211: arp_packet[15] = 0x00;
      00243E 90 01 32         [24] 1219 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x000f)
      002441 E4               [12] 1220 	clr	a
      002442 F0               [24] 1221 	movx	@dptr,a
                                   1222 ;	arp.c:213: arp_packet[16] = 0x01;
      002443 90 01 33         [24] 1223 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0010)
      002446 04               [12] 1224 	inc	a
      002447 F0               [24] 1225 	movx	@dptr,a
                                   1226 ;	arp.c:217: arp_packet[17] = 0x08;
      002448 90 01 34         [24] 1227 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0011)
      00244B 74 08            [12] 1228 	mov	a,#0x08
      00244D F0               [24] 1229 	movx	@dptr,a
                                   1230 ;	arp.c:219: arp_packet[18] = 0x00;
      00244E 90 01 35         [24] 1231 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0012)
      002451 E4               [12] 1232 	clr	a
      002452 F0               [24] 1233 	movx	@dptr,a
                                   1234 ;	arp.c:223: arp_packet[19] = 0x06;
      002453 90 01 36         [24] 1235 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0013)
      002456 74 06            [12] 1236 	mov	a,#0x06
      002458 F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	arp.c:227: arp_packet[20] = 0x04;
      002459 90 01 37         [24] 1239 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0014)
      00245C 74 04            [12] 1240 	mov	a,#0x04
      00245E F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	arp.c:231: arp_packet[21] = 0x00;
      00245F 90 01 38         [24] 1243 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0015)
      002462 E4               [12] 1244 	clr	a
      002463 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	arp.c:233: arp_packet[22] = 0x01;
      002464 90 01 39         [24] 1247 	mov	dptr,#(_arp_request_arp_packet_10000_99 + 0x0016)
      002467 04               [12] 1248 	inc	a
      002468 F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	arp.c:237: for (int i = 0; i < 6; i++) {
      002469 7E 00            [12] 1251 	mov	r6,#0x00
      00246B 7F 00            [12] 1252 	mov	r7,#0x00
      00246D                       1253 00118$:
      00246D C3               [12] 1254 	clr	c
      00246E EE               [12] 1255 	mov	a,r6
      00246F 94 06            [12] 1256 	subb	a,#0x06
      002471 EF               [12] 1257 	mov	a,r7
      002472 64 80            [12] 1258 	xrl	a,#0x80
      002474 94 80            [12] 1259 	subb	a,#0x80
      002476 50 29            [24] 1260 	jnc	00102$
                                   1261 ;	arp.c:239: arp_packet[23 + i] = device_mac[i];
      002478 8E 05            [24] 1262 	mov	ar5,r6
      00247A 74 17            [12] 1263 	mov	a,#0x17
      00247C 2D               [12] 1264 	add	a, r5
      00247D FD               [12] 1265 	mov	r5,a
      00247E 33               [12] 1266 	rlc	a
      00247F 95 E0            [12] 1267 	subb	a,acc
      002481 FC               [12] 1268 	mov	r4,a
      002482 ED               [12] 1269 	mov	a,r5
      002483 24 23            [12] 1270 	add	a, #_arp_request_arp_packet_10000_99
      002485 FD               [12] 1271 	mov	r5,a
      002486 EC               [12] 1272 	mov	a,r4
      002487 34 01            [12] 1273 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      002489 FC               [12] 1274 	mov	r4,a
      00248A EE               [12] 1275 	mov	a,r6
      00248B 24 0F            [12] 1276 	add	a, #_arp_request_device_mac_10000_99
      00248D F5 82            [12] 1277 	mov	dpl,a
      00248F EF               [12] 1278 	mov	a,r7
      002490 34 01            [12] 1279 	addc	a, #(_arp_request_device_mac_10000_99 >> 8)
      002492 F5 83            [12] 1280 	mov	dph,a
      002494 E0               [24] 1281 	movx	a,@dptr
      002495 8D 82            [24] 1282 	mov	dpl,r5
      002497 8C 83            [24] 1283 	mov	dph,r4
      002499 F0               [24] 1284 	movx	@dptr,a
                                   1285 ;	arp.c:237: for (int i = 0; i < 6; i++) {
      00249A 0E               [12] 1286 	inc	r6
      00249B BE 00 CF         [24] 1287 	cjne	r6,#0x00,00118$
      00249E 0F               [12] 1288 	inc	r7
      00249F 80 CC            [24] 1289 	sjmp	00118$
      0024A1                       1290 00102$:
                                   1291 ;	arp.c:245: for (int i = 0; i < 4; i++) {
      0024A1 7E 00            [12] 1292 	mov	r6,#0x00
      0024A3 7F 00            [12] 1293 	mov	r7,#0x00
      0024A5                       1294 00121$:
      0024A5 C3               [12] 1295 	clr	c
      0024A6 EE               [12] 1296 	mov	a,r6
      0024A7 94 04            [12] 1297 	subb	a,#0x04
      0024A9 EF               [12] 1298 	mov	a,r7
      0024AA 64 80            [12] 1299 	xrl	a,#0x80
      0024AC 94 80            [12] 1300 	subb	a,#0x80
      0024AE 50 29            [24] 1301 	jnc	00103$
                                   1302 ;	arp.c:247: arp_packet[29 + i] = device_ip[i];
      0024B0 8E 05            [24] 1303 	mov	ar5,r6
      0024B2 74 1D            [12] 1304 	mov	a,#0x1d
      0024B4 2D               [12] 1305 	add	a, r5
      0024B5 FD               [12] 1306 	mov	r5,a
      0024B6 33               [12] 1307 	rlc	a
      0024B7 95 E0            [12] 1308 	subb	a,acc
      0024B9 FC               [12] 1309 	mov	r4,a
      0024BA ED               [12] 1310 	mov	a,r5
      0024BB 24 23            [12] 1311 	add	a, #_arp_request_arp_packet_10000_99
      0024BD FD               [12] 1312 	mov	r5,a
      0024BE EC               [12] 1313 	mov	a,r4
      0024BF 34 01            [12] 1314 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      0024C1 FC               [12] 1315 	mov	r4,a
      0024C2 EE               [12] 1316 	mov	a,r6
      0024C3 24 1B            [12] 1317 	add	a, #_arp_request_device_ip_10000_99
      0024C5 F5 82            [12] 1318 	mov	dpl,a
      0024C7 EF               [12] 1319 	mov	a,r7
      0024C8 34 01            [12] 1320 	addc	a, #(_arp_request_device_ip_10000_99 >> 8)
      0024CA F5 83            [12] 1321 	mov	dph,a
      0024CC E0               [24] 1322 	movx	a,@dptr
      0024CD 8D 82            [24] 1323 	mov	dpl,r5
      0024CF 8C 83            [24] 1324 	mov	dph,r4
      0024D1 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	arp.c:245: for (int i = 0; i < 4; i++) {
      0024D2 0E               [12] 1327 	inc	r6
      0024D3 BE 00 CF         [24] 1328 	cjne	r6,#0x00,00121$
      0024D6 0F               [12] 1329 	inc	r7
      0024D7 80 CC            [24] 1330 	sjmp	00121$
      0024D9                       1331 00103$:
                                   1332 ;	arp.c:253: for (int i = 0; i < 6; i++) {
      0024D9 7F 00            [12] 1333 	mov	r7,#0x00
      0024DB                       1334 00124$:
      0024DB BF 06 00         [24] 1335 	cjne	r7,#0x06,00215$
      0024DE                       1336 00215$:
      0024DE 50 19            [24] 1337 	jnc	00104$
                                   1338 ;	arp.c:255: arp_packet[33 + i] = 0x00;
      0024E0 8F 06            [24] 1339 	mov	ar6,r7
      0024E2 74 21            [12] 1340 	mov	a,#0x21
      0024E4 2E               [12] 1341 	add	a, r6
      0024E5 FE               [12] 1342 	mov	r6,a
      0024E6 33               [12] 1343 	rlc	a
      0024E7 95 E0            [12] 1344 	subb	a,acc
      0024E9 FD               [12] 1345 	mov	r5,a
      0024EA EE               [12] 1346 	mov	a,r6
      0024EB 24 23            [12] 1347 	add	a, #_arp_request_arp_packet_10000_99
      0024ED F5 82            [12] 1348 	mov	dpl,a
      0024EF ED               [12] 1349 	mov	a,r5
      0024F0 34 01            [12] 1350 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      0024F2 F5 83            [12] 1351 	mov	dph,a
      0024F4 E4               [12] 1352 	clr	a
      0024F5 F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	arp.c:253: for (int i = 0; i < 6; i++) {
      0024F6 0F               [12] 1355 	inc	r7
      0024F7 80 E2            [24] 1356 	sjmp	00124$
      0024F9                       1357 00104$:
                                   1358 ;	arp.c:261: for (int i = 0; i < 4; i++) {
      0024F9 7E 00            [12] 1359 	mov	r6,#0x00
      0024FB 7F 00            [12] 1360 	mov	r7,#0x00
      0024FD                       1361 00127$:
      0024FD C3               [12] 1362 	clr	c
      0024FE EE               [12] 1363 	mov	a,r6
      0024FF 94 04            [12] 1364 	subb	a,#0x04
      002501 EF               [12] 1365 	mov	a,r7
      002502 64 80            [12] 1366 	xrl	a,#0x80
      002504 94 80            [12] 1367 	subb	a,#0x80
      002506 50 29            [24] 1368 	jnc	00105$
                                   1369 ;	arp.c:263: arp_packet[39 + i] = target_ip[i];
      002508 8E 05            [24] 1370 	mov	ar5,r6
      00250A 74 27            [12] 1371 	mov	a,#0x27
      00250C 2D               [12] 1372 	add	a, r5
      00250D FD               [12] 1373 	mov	r5,a
      00250E 33               [12] 1374 	rlc	a
      00250F 95 E0            [12] 1375 	subb	a,acc
      002511 FC               [12] 1376 	mov	r4,a
      002512 ED               [12] 1377 	mov	a,r5
      002513 24 23            [12] 1378 	add	a, #_arp_request_arp_packet_10000_99
      002515 FD               [12] 1379 	mov	r5,a
      002516 EC               [12] 1380 	mov	a,r4
      002517 34 01            [12] 1381 	addc	a, #(_arp_request_arp_packet_10000_99 >> 8)
      002519 FC               [12] 1382 	mov	r4,a
      00251A EE               [12] 1383 	mov	a,r6
      00251B 24 1F            [12] 1384 	add	a, #_arp_request_target_ip_10000_99
      00251D F5 82            [12] 1385 	mov	dpl,a
      00251F EF               [12] 1386 	mov	a,r7
      002520 34 01            [12] 1387 	addc	a, #(_arp_request_target_ip_10000_99 >> 8)
      002522 F5 83            [12] 1388 	mov	dph,a
      002524 E0               [24] 1389 	movx	a,@dptr
      002525 8D 82            [24] 1390 	mov	dpl,r5
      002527 8C 83            [24] 1391 	mov	dph,r4
      002529 F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	arp.c:261: for (int i = 0; i < 4; i++) {
      00252A 0E               [12] 1394 	inc	r6
      00252B BE 00 CF         [24] 1395 	cjne	r6,#0x00,00127$
      00252E 0F               [12] 1396 	inc	r7
      00252F 80 CC            [24] 1397 	sjmp	00127$
      002531                       1398 00105$:
                                   1399 ;	arp.c:283: enc_buffer_write(frame_size, start_address, arp_packet);
      002531 90 01 58         [24] 1400 	mov	dptr,#_enc_buffer_write_PARM_2
      002534 E4               [12] 1401 	clr	a
      002535 F0               [24] 1402 	movx	@dptr,a
      002536 74 1C            [12] 1403 	mov	a,#0x1c
      002538 A3               [24] 1404 	inc	dptr
      002539 F0               [24] 1405 	movx	@dptr,a
      00253A 90 01 5A         [24] 1406 	mov	dptr,#_enc_buffer_write_PARM_3
      00253D 74 23            [12] 1407 	mov	a,#_arp_request_arp_packet_10000_99
      00253F F0               [24] 1408 	movx	@dptr,a
      002540 74 01            [12] 1409 	mov	a,#(_arp_request_arp_packet_10000_99 >> 8)
      002542 A3               [24] 1410 	inc	dptr
      002543 F0               [24] 1411 	movx	@dptr,a
      002544 E4               [12] 1412 	clr	a
      002545 A3               [24] 1413 	inc	dptr
      002546 F0               [24] 1414 	movx	@dptr,a
      002547 90 00 2B         [24] 1415 	mov	dptr,#0x002b
      00254A 12 28 0A         [24] 1416 	lcall	_enc_buffer_write
                                   1417 ;	arp.c:287: enc28j60_set_transmit_pointers(start_address, end_address);
      00254D 90 01 06         [24] 1418 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002550 74 2A            [12] 1419 	mov	a,#0x2a
      002552 F0               [24] 1420 	movx	@dptr,a
      002553 74 1C            [12] 1421 	mov	a,#0x1c
      002555 A3               [24] 1422 	inc	dptr
      002556 F0               [24] 1423 	movx	@dptr,a
      002557 90 1C 00         [24] 1424 	mov	dptr,#0x1c00
      00255A 12 21 3D         [24] 1425 	lcall	_enc28j60_set_transmit_pointers
                                   1426 ;	arp.c:291: enc28j60_start_transmission();
      00255D 12 21 1C         [24] 1427 	lcall	_enc28j60_start_transmission
                                   1428 ;	arp.c:295: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      002560 90 01 F4         [24] 1429 	mov	dptr,#0x01f4
      002563 12 21 B4         [24] 1430 	lcall	_wait_for_transmission_complete
      002566 E5 82            [12] 1431 	mov	a, dpl
      002568 60 33            [24] 1432 	jz	00112$
                                   1433 ;	arp.c:299: if (enc28j60_transmission_successful()) {
      00256A 12 22 17         [24] 1434 	lcall	_enc28j60_transmission_successful
      00256D E5 82            [12] 1435 	mov	a, dpl
      00256F 60 16            [24] 1436 	jz	00109$
                                   1437 ;	arp.c:301: printf("ARP request sent successfully.\n\r");
      002571 74 E2            [12] 1438 	mov	a,#___str_1
      002573 C0 E0            [24] 1439 	push	acc
      002575 74 5C            [12] 1440 	mov	a,#(___str_1 >> 8)
      002577 C0 E0            [24] 1441 	push	acc
      002579 74 80            [12] 1442 	mov	a,#0x80
      00257B C0 E0            [24] 1443 	push	acc
      00257D 12 52 65         [24] 1444 	lcall	_printf
      002580 15 81            [12] 1445 	dec	sp
      002582 15 81            [12] 1446 	dec	sp
      002584 15 81            [12] 1447 	dec	sp
      002586 22               [24] 1448 	ret
      002587                       1449 00109$:
                                   1450 ;	arp.c:305: printf("ARP transmission failed. Check error flags.\n\r");
      002587 74 03            [12] 1451 	mov	a,#___str_2
      002589 C0 E0            [24] 1452 	push	acc
      00258B 74 5D            [12] 1453 	mov	a,#(___str_2 >> 8)
      00258D C0 E0            [24] 1454 	push	acc
      00258F 74 80            [12] 1455 	mov	a,#0x80
      002591 C0 E0            [24] 1456 	push	acc
      002593 12 52 65         [24] 1457 	lcall	_printf
      002596 15 81            [12] 1458 	dec	sp
      002598 15 81            [12] 1459 	dec	sp
      00259A 15 81            [12] 1460 	dec	sp
      00259C 22               [24] 1461 	ret
      00259D                       1462 00112$:
                                   1463 ;	arp.c:313: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      00259D 74 31            [12] 1464 	mov	a,#___str_3
      00259F C0 E0            [24] 1465 	push	acc
      0025A1 74 5D            [12] 1466 	mov	a,#(___str_3 >> 8)
      0025A3 C0 E0            [24] 1467 	push	acc
      0025A5 74 80            [12] 1468 	mov	a,#0x80
      0025A7 C0 E0            [24] 1469 	push	acc
      0025A9 12 52 65         [24] 1470 	lcall	_printf
      0025AC 15 81            [12] 1471 	dec	sp
      0025AE 15 81            [12] 1472 	dec	sp
      0025B0 15 81            [12] 1473 	dec	sp
                                   1474 ;	arp.c:317: }
      0025B2 22               [24] 1475 	ret
                                   1476 	.area CSEG    (CODE)
                                   1477 	.area CONST   (CODE)
                                   1478 	.area CONST   (CODE)
      005CA7                       1479 ___str_0:
      005CA7 0A                    1480 	.db 0x0a
      005CA8 49 6E 76 61 6C 69 64  1481 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      005CE0 0A                    1482 	.db 0x0a
      005CE1 00                    1483 	.db 0x00
                                   1484 	.area CSEG    (CODE)
                                   1485 	.area CONST   (CODE)
      005CE2                       1486 ___str_1:
      005CE2 41 52 50 20 72 65 71  1487 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      005D00 0A                    1488 	.db 0x0a
      005D01 0D                    1489 	.db 0x0d
      005D02 00                    1490 	.db 0x00
                                   1491 	.area CSEG    (CODE)
                                   1492 	.area CONST   (CODE)
      005D03                       1493 ___str_2:
      005D03 41 52 50 20 74 72 61  1494 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      005D2E 0A                    1495 	.db 0x0a
      005D2F 0D                    1496 	.db 0x0d
      005D30 00                    1497 	.db 0x00
                                   1498 	.area CSEG    (CODE)
                                   1499 	.area CONST   (CODE)
      005D31                       1500 ___str_3:
      005D31 54 72 61 6E 73 6D 69  1501 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      005D6D 74 6C 79 2E           1502 	.ascii "tly."
      005D71 0A                    1503 	.db 0x0a
      005D72 0D                    1504 	.db 0x0d
      005D73 00                    1505 	.db 0x00
                                   1506 	.area CSEG    (CODE)
                                   1507 	.area XINIT   (CODE)
                                   1508 	.area CABS    (ABS,CODE)
