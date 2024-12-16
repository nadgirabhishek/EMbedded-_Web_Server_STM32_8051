                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module tcp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _enc28j60_set_transmit_pointers
                                     13 	.globl _enc28j60_transmission_successful
                                     14 	.globl _wait_for_transmission_complete
                                     15 	.globl _enc28j60_start_transmission
                                     16 	.globl _enc_buffer_write
                                     17 	.globl _P5_7
                                     18 	.globl _P5_6
                                     19 	.globl _P5_5
                                     20 	.globl _P5_4
                                     21 	.globl _P5_3
                                     22 	.globl _P5_2
                                     23 	.globl _P5_1
                                     24 	.globl _P5_0
                                     25 	.globl _P4_7
                                     26 	.globl _P4_6
                                     27 	.globl _P4_5
                                     28 	.globl _P4_4
                                     29 	.globl _P4_3
                                     30 	.globl _P4_2
                                     31 	.globl _P4_1
                                     32 	.globl _P4_0
                                     33 	.globl _PX0L
                                     34 	.globl _PT0L
                                     35 	.globl _PX1L
                                     36 	.globl _PT1L
                                     37 	.globl _PSL
                                     38 	.globl _PT2L
                                     39 	.globl _PPCL
                                     40 	.globl _EC
                                     41 	.globl _CCF0
                                     42 	.globl _CCF1
                                     43 	.globl _CCF2
                                     44 	.globl _CCF3
                                     45 	.globl _CCF4
                                     46 	.globl _CR
                                     47 	.globl _CF
                                     48 	.globl _TF2
                                     49 	.globl _EXF2
                                     50 	.globl _RCLK
                                     51 	.globl _TCLK
                                     52 	.globl _EXEN2
                                     53 	.globl _TR2
                                     54 	.globl _C_T2
                                     55 	.globl _CP_RL2
                                     56 	.globl _T2CON_7
                                     57 	.globl _T2CON_6
                                     58 	.globl _T2CON_5
                                     59 	.globl _T2CON_4
                                     60 	.globl _T2CON_3
                                     61 	.globl _T2CON_2
                                     62 	.globl _T2CON_1
                                     63 	.globl _T2CON_0
                                     64 	.globl _PT2
                                     65 	.globl _ET2
                                     66 	.globl _CY
                                     67 	.globl _AC
                                     68 	.globl _F0
                                     69 	.globl _RS1
                                     70 	.globl _RS0
                                     71 	.globl _OV
                                     72 	.globl _F1
                                     73 	.globl _P
                                     74 	.globl _PS
                                     75 	.globl _PT1
                                     76 	.globl _PX1
                                     77 	.globl _PT0
                                     78 	.globl _PX0
                                     79 	.globl _RD
                                     80 	.globl _WR
                                     81 	.globl _T1
                                     82 	.globl _T0
                                     83 	.globl _INT1
                                     84 	.globl _INT0
                                     85 	.globl _TXD
                                     86 	.globl _RXD
                                     87 	.globl _P3_7
                                     88 	.globl _P3_6
                                     89 	.globl _P3_5
                                     90 	.globl _P3_4
                                     91 	.globl _P3_3
                                     92 	.globl _P3_2
                                     93 	.globl _P3_1
                                     94 	.globl _P3_0
                                     95 	.globl _EA
                                     96 	.globl _ES
                                     97 	.globl _ET1
                                     98 	.globl _EX1
                                     99 	.globl _ET0
                                    100 	.globl _EX0
                                    101 	.globl _P2_7
                                    102 	.globl _P2_6
                                    103 	.globl _P2_5
                                    104 	.globl _P2_4
                                    105 	.globl _P2_3
                                    106 	.globl _P2_2
                                    107 	.globl _P2_1
                                    108 	.globl _P2_0
                                    109 	.globl _SM0
                                    110 	.globl _SM1
                                    111 	.globl _SM2
                                    112 	.globl _REN
                                    113 	.globl _TB8
                                    114 	.globl _RB8
                                    115 	.globl _TI
                                    116 	.globl _RI
                                    117 	.globl _P1_7
                                    118 	.globl _P1_6
                                    119 	.globl _P1_5
                                    120 	.globl _P1_4
                                    121 	.globl _P1_3
                                    122 	.globl _P1_2
                                    123 	.globl _P1_1
                                    124 	.globl _P1_0
                                    125 	.globl _TF1
                                    126 	.globl _TR1
                                    127 	.globl _TF0
                                    128 	.globl _TR0
                                    129 	.globl _IE1
                                    130 	.globl _IT1
                                    131 	.globl _IE0
                                    132 	.globl _IT0
                                    133 	.globl _P0_7
                                    134 	.globl _P0_6
                                    135 	.globl _P0_5
                                    136 	.globl _P0_4
                                    137 	.globl _P0_3
                                    138 	.globl _P0_2
                                    139 	.globl _P0_1
                                    140 	.globl _P0_0
                                    141 	.globl _EECON
                                    142 	.globl _KBF
                                    143 	.globl _KBE
                                    144 	.globl _KBLS
                                    145 	.globl _BRL
                                    146 	.globl _BDRCON
                                    147 	.globl _T2MOD
                                    148 	.globl _SPDAT
                                    149 	.globl _SPSTA
                                    150 	.globl _SPCON
                                    151 	.globl _SADEN
                                    152 	.globl _SADDR
                                    153 	.globl _WDTPRG
                                    154 	.globl _WDTRST
                                    155 	.globl _P5
                                    156 	.globl _P4
                                    157 	.globl _IPH1
                                    158 	.globl _IPL1
                                    159 	.globl _IPH0
                                    160 	.globl _IPL0
                                    161 	.globl _IEN1
                                    162 	.globl _IEN0
                                    163 	.globl _CMOD
                                    164 	.globl _CL
                                    165 	.globl _CH
                                    166 	.globl _CCON
                                    167 	.globl _CCAPM4
                                    168 	.globl _CCAPM3
                                    169 	.globl _CCAPM2
                                    170 	.globl _CCAPM1
                                    171 	.globl _CCAPM0
                                    172 	.globl _CCAP4L
                                    173 	.globl _CCAP3L
                                    174 	.globl _CCAP2L
                                    175 	.globl _CCAP1L
                                    176 	.globl _CCAP0L
                                    177 	.globl _CCAP4H
                                    178 	.globl _CCAP3H
                                    179 	.globl _CCAP2H
                                    180 	.globl _CCAP1H
                                    181 	.globl _CCAP0H
                                    182 	.globl _CKCON1
                                    183 	.globl _CKCON0
                                    184 	.globl _CKRL
                                    185 	.globl _AUXR1
                                    186 	.globl _AUXR
                                    187 	.globl _TH2
                                    188 	.globl _TL2
                                    189 	.globl _RCAP2H
                                    190 	.globl _RCAP2L
                                    191 	.globl _T2CON
                                    192 	.globl _B
                                    193 	.globl _ACC
                                    194 	.globl _PSW
                                    195 	.globl _IP
                                    196 	.globl _P3
                                    197 	.globl _IE
                                    198 	.globl _P2
                                    199 	.globl _SBUF
                                    200 	.globl _SCON
                                    201 	.globl _P1
                                    202 	.globl _TH1
                                    203 	.globl _TH0
                                    204 	.globl _TL1
                                    205 	.globl _TL0
                                    206 	.globl _TMOD
                                    207 	.globl _TCON
                                    208 	.globl _PCON
                                    209 	.globl _DPH
                                    210 	.globl _DPL
                                    211 	.globl _SP
                                    212 	.globl _P0
                                    213 	.globl _transmit_tcp_packet_PARM_2
                                    214 	.globl _transmit_tcp_packet
                                    215 ;--------------------------------------------------------
                                    216 ; special function registers
                                    217 ;--------------------------------------------------------
                                    218 	.area RSEG    (ABS,DATA)
      000000                        219 	.org 0x0000
                           000080   220 _P0	=	0x0080
                           000081   221 _SP	=	0x0081
                           000082   222 _DPL	=	0x0082
                           000083   223 _DPH	=	0x0083
                           000087   224 _PCON	=	0x0087
                           000088   225 _TCON	=	0x0088
                           000089   226 _TMOD	=	0x0089
                           00008A   227 _TL0	=	0x008a
                           00008B   228 _TL1	=	0x008b
                           00008C   229 _TH0	=	0x008c
                           00008D   230 _TH1	=	0x008d
                           000090   231 _P1	=	0x0090
                           000098   232 _SCON	=	0x0098
                           000099   233 _SBUF	=	0x0099
                           0000A0   234 _P2	=	0x00a0
                           0000A8   235 _IE	=	0x00a8
                           0000B0   236 _P3	=	0x00b0
                           0000B8   237 _IP	=	0x00b8
                           0000D0   238 _PSW	=	0x00d0
                           0000E0   239 _ACC	=	0x00e0
                           0000F0   240 _B	=	0x00f0
                           0000C8   241 _T2CON	=	0x00c8
                           0000CA   242 _RCAP2L	=	0x00ca
                           0000CB   243 _RCAP2H	=	0x00cb
                           0000CC   244 _TL2	=	0x00cc
                           0000CD   245 _TH2	=	0x00cd
                           00008E   246 _AUXR	=	0x008e
                           0000A2   247 _AUXR1	=	0x00a2
                           000097   248 _CKRL	=	0x0097
                           00008F   249 _CKCON0	=	0x008f
                           0000AF   250 _CKCON1	=	0x00af
                           0000FA   251 _CCAP0H	=	0x00fa
                           0000FB   252 _CCAP1H	=	0x00fb
                           0000FC   253 _CCAP2H	=	0x00fc
                           0000FD   254 _CCAP3H	=	0x00fd
                           0000FE   255 _CCAP4H	=	0x00fe
                           0000EA   256 _CCAP0L	=	0x00ea
                           0000EB   257 _CCAP1L	=	0x00eb
                           0000EC   258 _CCAP2L	=	0x00ec
                           0000ED   259 _CCAP3L	=	0x00ed
                           0000EE   260 _CCAP4L	=	0x00ee
                           0000DA   261 _CCAPM0	=	0x00da
                           0000DB   262 _CCAPM1	=	0x00db
                           0000DC   263 _CCAPM2	=	0x00dc
                           0000DD   264 _CCAPM3	=	0x00dd
                           0000DE   265 _CCAPM4	=	0x00de
                           0000D8   266 _CCON	=	0x00d8
                           0000F9   267 _CH	=	0x00f9
                           0000E9   268 _CL	=	0x00e9
                           0000D9   269 _CMOD	=	0x00d9
                           0000A8   270 _IEN0	=	0x00a8
                           0000B1   271 _IEN1	=	0x00b1
                           0000B8   272 _IPL0	=	0x00b8
                           0000B7   273 _IPH0	=	0x00b7
                           0000B2   274 _IPL1	=	0x00b2
                           0000B3   275 _IPH1	=	0x00b3
                           0000C0   276 _P4	=	0x00c0
                           0000E8   277 _P5	=	0x00e8
                           0000A6   278 _WDTRST	=	0x00a6
                           0000A7   279 _WDTPRG	=	0x00a7
                           0000A9   280 _SADDR	=	0x00a9
                           0000B9   281 _SADEN	=	0x00b9
                           0000C3   282 _SPCON	=	0x00c3
                           0000C4   283 _SPSTA	=	0x00c4
                           0000C5   284 _SPDAT	=	0x00c5
                           0000C9   285 _T2MOD	=	0x00c9
                           00009B   286 _BDRCON	=	0x009b
                           00009A   287 _BRL	=	0x009a
                           00009C   288 _KBLS	=	0x009c
                           00009D   289 _KBE	=	0x009d
                           00009E   290 _KBF	=	0x009e
                           0000D2   291 _EECON	=	0x00d2
                                    292 ;--------------------------------------------------------
                                    293 ; special function bits
                                    294 ;--------------------------------------------------------
                                    295 	.area RSEG    (ABS,DATA)
      000000                        296 	.org 0x0000
                           000080   297 _P0_0	=	0x0080
                           000081   298 _P0_1	=	0x0081
                           000082   299 _P0_2	=	0x0082
                           000083   300 _P0_3	=	0x0083
                           000084   301 _P0_4	=	0x0084
                           000085   302 _P0_5	=	0x0085
                           000086   303 _P0_6	=	0x0086
                           000087   304 _P0_7	=	0x0087
                           000088   305 _IT0	=	0x0088
                           000089   306 _IE0	=	0x0089
                           00008A   307 _IT1	=	0x008a
                           00008B   308 _IE1	=	0x008b
                           00008C   309 _TR0	=	0x008c
                           00008D   310 _TF0	=	0x008d
                           00008E   311 _TR1	=	0x008e
                           00008F   312 _TF1	=	0x008f
                           000090   313 _P1_0	=	0x0090
                           000091   314 _P1_1	=	0x0091
                           000092   315 _P1_2	=	0x0092
                           000093   316 _P1_3	=	0x0093
                           000094   317 _P1_4	=	0x0094
                           000095   318 _P1_5	=	0x0095
                           000096   319 _P1_6	=	0x0096
                           000097   320 _P1_7	=	0x0097
                           000098   321 _RI	=	0x0098
                           000099   322 _TI	=	0x0099
                           00009A   323 _RB8	=	0x009a
                           00009B   324 _TB8	=	0x009b
                           00009C   325 _REN	=	0x009c
                           00009D   326 _SM2	=	0x009d
                           00009E   327 _SM1	=	0x009e
                           00009F   328 _SM0	=	0x009f
                           0000A0   329 _P2_0	=	0x00a0
                           0000A1   330 _P2_1	=	0x00a1
                           0000A2   331 _P2_2	=	0x00a2
                           0000A3   332 _P2_3	=	0x00a3
                           0000A4   333 _P2_4	=	0x00a4
                           0000A5   334 _P2_5	=	0x00a5
                           0000A6   335 _P2_6	=	0x00a6
                           0000A7   336 _P2_7	=	0x00a7
                           0000A8   337 _EX0	=	0x00a8
                           0000A9   338 _ET0	=	0x00a9
                           0000AA   339 _EX1	=	0x00aa
                           0000AB   340 _ET1	=	0x00ab
                           0000AC   341 _ES	=	0x00ac
                           0000AF   342 _EA	=	0x00af
                           0000B0   343 _P3_0	=	0x00b0
                           0000B1   344 _P3_1	=	0x00b1
                           0000B2   345 _P3_2	=	0x00b2
                           0000B3   346 _P3_3	=	0x00b3
                           0000B4   347 _P3_4	=	0x00b4
                           0000B5   348 _P3_5	=	0x00b5
                           0000B6   349 _P3_6	=	0x00b6
                           0000B7   350 _P3_7	=	0x00b7
                           0000B0   351 _RXD	=	0x00b0
                           0000B1   352 _TXD	=	0x00b1
                           0000B2   353 _INT0	=	0x00b2
                           0000B3   354 _INT1	=	0x00b3
                           0000B4   355 _T0	=	0x00b4
                           0000B5   356 _T1	=	0x00b5
                           0000B6   357 _WR	=	0x00b6
                           0000B7   358 _RD	=	0x00b7
                           0000B8   359 _PX0	=	0x00b8
                           0000B9   360 _PT0	=	0x00b9
                           0000BA   361 _PX1	=	0x00ba
                           0000BB   362 _PT1	=	0x00bb
                           0000BC   363 _PS	=	0x00bc
                           0000D0   364 _P	=	0x00d0
                           0000D1   365 _F1	=	0x00d1
                           0000D2   366 _OV	=	0x00d2
                           0000D3   367 _RS0	=	0x00d3
                           0000D4   368 _RS1	=	0x00d4
                           0000D5   369 _F0	=	0x00d5
                           0000D6   370 _AC	=	0x00d6
                           0000D7   371 _CY	=	0x00d7
                           0000AD   372 _ET2	=	0x00ad
                           0000BD   373 _PT2	=	0x00bd
                           0000C8   374 _T2CON_0	=	0x00c8
                           0000C9   375 _T2CON_1	=	0x00c9
                           0000CA   376 _T2CON_2	=	0x00ca
                           0000CB   377 _T2CON_3	=	0x00cb
                           0000CC   378 _T2CON_4	=	0x00cc
                           0000CD   379 _T2CON_5	=	0x00cd
                           0000CE   380 _T2CON_6	=	0x00ce
                           0000CF   381 _T2CON_7	=	0x00cf
                           0000C8   382 _CP_RL2	=	0x00c8
                           0000C9   383 _C_T2	=	0x00c9
                           0000CA   384 _TR2	=	0x00ca
                           0000CB   385 _EXEN2	=	0x00cb
                           0000CC   386 _TCLK	=	0x00cc
                           0000CD   387 _RCLK	=	0x00cd
                           0000CE   388 _EXF2	=	0x00ce
                           0000CF   389 _TF2	=	0x00cf
                           0000DF   390 _CF	=	0x00df
                           0000DE   391 _CR	=	0x00de
                           0000DC   392 _CCF4	=	0x00dc
                           0000DB   393 _CCF3	=	0x00db
                           0000DA   394 _CCF2	=	0x00da
                           0000D9   395 _CCF1	=	0x00d9
                           0000D8   396 _CCF0	=	0x00d8
                           0000AE   397 _EC	=	0x00ae
                           0000BE   398 _PPCL	=	0x00be
                           0000BD   399 _PT2L	=	0x00bd
                           0000BC   400 _PSL	=	0x00bc
                           0000BB   401 _PT1L	=	0x00bb
                           0000BA   402 _PX1L	=	0x00ba
                           0000B9   403 _PT0L	=	0x00b9
                           0000B8   404 _PX0L	=	0x00b8
                           0000C0   405 _P4_0	=	0x00c0
                           0000C1   406 _P4_1	=	0x00c1
                           0000C2   407 _P4_2	=	0x00c2
                           0000C3   408 _P4_3	=	0x00c3
                           0000C4   409 _P4_4	=	0x00c4
                           0000C5   410 _P4_5	=	0x00c5
                           0000C6   411 _P4_6	=	0x00c6
                           0000C7   412 _P4_7	=	0x00c7
                           0000E8   413 _P5_0	=	0x00e8
                           0000E9   414 _P5_1	=	0x00e9
                           0000EA   415 _P5_2	=	0x00ea
                           0000EB   416 _P5_3	=	0x00eb
                           0000EC   417 _P5_4	=	0x00ec
                           0000ED   418 _P5_5	=	0x00ed
                           0000EE   419 _P5_6	=	0x00ee
                           0000EF   420 _P5_7	=	0x00ef
                                    421 ;--------------------------------------------------------
                                    422 ; overlayable register banks
                                    423 ;--------------------------------------------------------
                                    424 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        425 	.ds 8
                                    426 ;--------------------------------------------------------
                                    427 ; internal ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area DSEG    (DATA)
                                    430 ;--------------------------------------------------------
                                    431 ; overlayable items in internal ram
                                    432 ;--------------------------------------------------------
                                    433 ;--------------------------------------------------------
                                    434 ; indirectly addressable internal ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area ISEG    (DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; absolute internal ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area IABS    (ABS,DATA)
                                    441 	.area IABS    (ABS,DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; bit data
                                    444 ;--------------------------------------------------------
                                    445 	.area BSEG    (BIT)
                                    446 ;--------------------------------------------------------
                                    447 ; paged external ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area PSEG    (PAG,XDATA)
                                    450 ;--------------------------------------------------------
                                    451 ; uninitialized external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XSEG    (XDATA)
      00018C                        454 _transmit_tcp_packet_PARM_2:
      00018C                        455 	.ds 2
      00018E                        456 _transmit_tcp_packet_packet_10000_82:
      00018E                        457 	.ds 3
                                    458 ;--------------------------------------------------------
                                    459 ; absolute external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XABS    (ABS,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; initialized external ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XISEG   (XDATA)
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT0 (CODE)
                                    468 	.area GSINIT1 (CODE)
                                    469 	.area GSINIT2 (CODE)
                                    470 	.area GSINIT3 (CODE)
                                    471 	.area GSINIT4 (CODE)
                                    472 	.area GSINIT5 (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 	.area GSFINAL (CODE)
                                    475 	.area CSEG    (CODE)
                                    476 ;--------------------------------------------------------
                                    477 ; global & static initialisations
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 ;--------------------------------------------------------
                                    484 ; Home
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
                                    487 	.area HOME    (CODE)
                                    488 ;--------------------------------------------------------
                                    489 ; code
                                    490 ;--------------------------------------------------------
                                    491 	.area CSEG    (CODE)
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'transmit_tcp_packet'
                                    494 ;------------------------------------------------------------
                                    495 ;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
                                    496 ;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_82'
                                    497 ;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_83'
                                    498 ;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_85'
                                    499 ;------------------------------------------------------------
                                    500 ;	tcp.c:28: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
                                    501 ;	-----------------------------------------
                                    502 ;	 function transmit_tcp_packet
                                    503 ;	-----------------------------------------
      003162                        504 _transmit_tcp_packet:
                           000007   505 	ar7 = 0x07
                           000006   506 	ar6 = 0x06
                           000005   507 	ar5 = 0x05
                           000004   508 	ar4 = 0x04
                           000003   509 	ar3 = 0x03
                           000002   510 	ar2 = 0x02
                           000001   511 	ar1 = 0x01
                           000000   512 	ar0 = 0x00
      003162 AF F0            [24]  513 	mov	r7,b
      003164 AE 83            [24]  514 	mov	r6,dph
      003166 E5 82            [12]  515 	mov	a,dpl
      003168 90 01 8E         [24]  516 	mov	dptr,#_transmit_tcp_packet_packet_10000_82
      00316B F0               [24]  517 	movx	@dptr,a
      00316C EE               [12]  518 	mov	a,r6
      00316D A3               [24]  519 	inc	dptr
      00316E F0               [24]  520 	movx	@dptr,a
      00316F EF               [12]  521 	mov	a,r7
      003170 A3               [24]  522 	inc	dptr
      003171 F0               [24]  523 	movx	@dptr,a
                                    524 ;	tcp.c:33: if ((start_address + packet_size - 1) > 0x1FFF) {
      003172 90 01 8C         [24]  525 	mov	dptr,#_transmit_tcp_packet_PARM_2
      003175 E0               [24]  526 	movx	a,@dptr
      003176 FE               [12]  527 	mov	r6,a
      003177 A3               [24]  528 	inc	dptr
      003178 E0               [24]  529 	movx	a,@dptr
      003179 FF               [12]  530 	mov	r7,a
      00317A 8E 04            [24]  531 	mov	ar4,r6
      00317C 74 1C            [12]  532 	mov	a,#0x1c
      00317E 2F               [12]  533 	add	a, r7
      00317F FD               [12]  534 	mov	r5,a
      003180 1C               [12]  535 	dec	r4
      003181 BC FF 01         [24]  536 	cjne	r4,#0xff,00129$
      003184 1D               [12]  537 	dec	r5
      003185                        538 00129$:
      003185 C3               [12]  539 	clr	c
      003186 74 FF            [12]  540 	mov	a,#0xff
      003188 9C               [12]  541 	subb	a,r4
      003189 74 1F            [12]  542 	mov	a,#0x1f
      00318B 9D               [12]  543 	subb	a,r5
      00318C 50 16            [24]  544 	jnc	00102$
                                    545 ;	tcp.c:34: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
      00318E 74 84            [12]  546 	mov	a,#___str_0
      003190 C0 E0            [24]  547 	push	acc
      003192 74 5F            [12]  548 	mov	a,#(___str_0 >> 8)
      003194 C0 E0            [24]  549 	push	acc
      003196 74 80            [12]  550 	mov	a,#0x80
      003198 C0 E0            [24]  551 	push	acc
      00319A 12 52 65         [24]  552 	lcall	_printf
      00319D 15 81            [12]  553 	dec	sp
      00319F 15 81            [12]  554 	dec	sp
      0031A1 15 81            [12]  555 	dec	sp
                                    556 ;	tcp.c:35: return;
      0031A3 22               [24]  557 	ret
      0031A4                        558 00102$:
                                    559 ;	tcp.c:37: uint16_t end_address = start_address + packet_size - 1;
      0031A4 8E 04            [24]  560 	mov	ar4,r6
      0031A6 74 1C            [12]  561 	mov	a,#0x1c
      0031A8 2F               [12]  562 	add	a, r7
      0031A9 FD               [12]  563 	mov	r5,a
      0031AA 1C               [12]  564 	dec	r4
      0031AB BC FF 01         [24]  565 	cjne	r4,#0xff,00131$
      0031AE 1D               [12]  566 	dec	r5
      0031AF                        567 00131$:
                                    568 ;	tcp.c:38: enc_buffer_write(packet_size, start_address, packet);
      0031AF 90 01 8E         [24]  569 	mov	dptr,#_transmit_tcp_packet_packet_10000_82
      0031B2 E0               [24]  570 	movx	a,@dptr
      0031B3 F9               [12]  571 	mov	r1,a
      0031B4 A3               [24]  572 	inc	dptr
      0031B5 E0               [24]  573 	movx	a,@dptr
      0031B6 FA               [12]  574 	mov	r2,a
      0031B7 A3               [24]  575 	inc	dptr
      0031B8 E0               [24]  576 	movx	a,@dptr
      0031B9 FB               [12]  577 	mov	r3,a
      0031BA 90 01 58         [24]  578 	mov	dptr,#_enc_buffer_write_PARM_2
      0031BD E4               [12]  579 	clr	a
      0031BE F0               [24]  580 	movx	@dptr,a
      0031BF 74 1C            [12]  581 	mov	a,#0x1c
      0031C1 A3               [24]  582 	inc	dptr
      0031C2 F0               [24]  583 	movx	@dptr,a
      0031C3 90 01 5A         [24]  584 	mov	dptr,#_enc_buffer_write_PARM_3
      0031C6 E9               [12]  585 	mov	a,r1
      0031C7 F0               [24]  586 	movx	@dptr,a
      0031C8 EA               [12]  587 	mov	a,r2
      0031C9 A3               [24]  588 	inc	dptr
      0031CA F0               [24]  589 	movx	@dptr,a
      0031CB EB               [12]  590 	mov	a,r3
      0031CC A3               [24]  591 	inc	dptr
      0031CD F0               [24]  592 	movx	@dptr,a
      0031CE 8E 82            [24]  593 	mov	dpl, r6
      0031D0 8F 83            [24]  594 	mov	dph, r7
      0031D2 C0 05            [24]  595 	push	ar5
      0031D4 C0 04            [24]  596 	push	ar4
      0031D6 12 28 0A         [24]  597 	lcall	_enc_buffer_write
      0031D9 D0 04            [24]  598 	pop	ar4
      0031DB D0 05            [24]  599 	pop	ar5
                                    600 ;	tcp.c:41: enc28j60_set_transmit_pointers(start_address, end_address);
      0031DD 90 01 06         [24]  601 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0031E0 EC               [12]  602 	mov	a,r4
      0031E1 F0               [24]  603 	movx	@dptr,a
      0031E2 ED               [12]  604 	mov	a,r5
      0031E3 A3               [24]  605 	inc	dptr
      0031E4 F0               [24]  606 	movx	@dptr,a
      0031E5 90 1C 00         [24]  607 	mov	dptr,#0x1c00
      0031E8 12 21 3D         [24]  608 	lcall	_enc28j60_set_transmit_pointers
                                    609 ;	tcp.c:44: enc28j60_start_transmission();
      0031EB 12 21 1C         [24]  610 	lcall	_enc28j60_start_transmission
                                    611 ;	tcp.c:47: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      0031EE 90 01 F4         [24]  612 	mov	dptr,#0x01f4
      0031F1 12 21 B4         [24]  613 	lcall	_wait_for_transmission_complete
      0031F4 E5 82            [12]  614 	mov	a, dpl
      0031F6 60 33            [24]  615 	jz	00107$
                                    616 ;	tcp.c:49: if (enc28j60_transmission_successful()) {
      0031F8 12 22 17         [24]  617 	lcall	_enc28j60_transmission_successful
      0031FB E5 82            [12]  618 	mov	a, dpl
      0031FD 60 16            [24]  619 	jz	00104$
                                    620 ;	tcp.c:50: printf("TCP request sent successfully.\n\r");
      0031FF 74 BF            [12]  621 	mov	a,#___str_1
      003201 C0 E0            [24]  622 	push	acc
      003203 74 5F            [12]  623 	mov	a,#(___str_1 >> 8)
      003205 C0 E0            [24]  624 	push	acc
      003207 74 80            [12]  625 	mov	a,#0x80
      003209 C0 E0            [24]  626 	push	acc
      00320B 12 52 65         [24]  627 	lcall	_printf
      00320E 15 81            [12]  628 	dec	sp
      003210 15 81            [12]  629 	dec	sp
      003212 15 81            [12]  630 	dec	sp
      003214 22               [24]  631 	ret
      003215                        632 00104$:
                                    633 ;	tcp.c:52: printf("TCP transmission failed. Check error flags.\n\r");
      003215 74 E0            [12]  634 	mov	a,#___str_2
      003217 C0 E0            [24]  635 	push	acc
      003219 74 5F            [12]  636 	mov	a,#(___str_2 >> 8)
      00321B C0 E0            [24]  637 	push	acc
      00321D 74 80            [12]  638 	mov	a,#0x80
      00321F C0 E0            [24]  639 	push	acc
      003221 12 52 65         [24]  640 	lcall	_printf
      003224 15 81            [12]  641 	dec	sp
      003226 15 81            [12]  642 	dec	sp
      003228 15 81            [12]  643 	dec	sp
      00322A 22               [24]  644 	ret
      00322B                        645 00107$:
                                    646 ;	tcp.c:56: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      00322B 74 0E            [12]  647 	mov	a,#___str_3
      00322D C0 E0            [24]  648 	push	acc
      00322F 74 60            [12]  649 	mov	a,#(___str_3 >> 8)
      003231 C0 E0            [24]  650 	push	acc
      003233 74 80            [12]  651 	mov	a,#0x80
      003235 C0 E0            [24]  652 	push	acc
      003237 12 52 65         [24]  653 	lcall	_printf
      00323A 15 81            [12]  654 	dec	sp
      00323C 15 81            [12]  655 	dec	sp
      00323E 15 81            [12]  656 	dec	sp
                                    657 ;	tcp.c:58: }
      003240 22               [24]  658 	ret
                                    659 	.area CSEG    (CODE)
                                    660 	.area CONST   (CODE)
                                    661 	.area CONST   (CODE)
      005F84                        662 ___str_0:
      005F84 0A                     663 	.db 0x0a
      005F85 49 6E 76 61 6C 69 64   664 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      005FBD 0A                     665 	.db 0x0a
      005FBE 00                     666 	.db 0x00
                                    667 	.area CSEG    (CODE)
                                    668 	.area CONST   (CODE)
      005FBF                        669 ___str_1:
      005FBF 54 43 50 20 72 65 71   670 	.ascii "TCP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      005FDD 0A                     671 	.db 0x0a
      005FDE 0D                     672 	.db 0x0d
      005FDF 00                     673 	.db 0x00
                                    674 	.area CSEG    (CODE)
                                    675 	.area CONST   (CODE)
      005FE0                        676 ___str_2:
      005FE0 54 43 50 20 74 72 61   677 	.ascii "TCP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      00600B 0A                     678 	.db 0x0a
      00600C 0D                     679 	.db 0x0d
      00600D 00                     680 	.db 0x00
                                    681 	.area CSEG    (CODE)
                                    682 	.area CONST   (CODE)
      00600E                        683 ___str_3:
      00600E 54 72 61 6E 73 6D 69   684 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      00604A 74 6C 79 2E            685 	.ascii "tly."
      00604E 0A                     686 	.db 0x0a
      00604F 0D                     687 	.db 0x0d
      006050 00                     688 	.db 0x00
                                    689 	.area CSEG    (CODE)
                                    690 	.area XINIT   (CODE)
                                    691 	.area CABS    (ABS,CODE)
