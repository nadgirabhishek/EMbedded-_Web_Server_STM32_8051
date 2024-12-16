                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _end_X2
                                     13 	.globl _start_X2
                                     14 	.globl _init_PCA
                                     15 	.globl _printf
                                     16 	.globl _packetLoop
                                     17 	.globl _enc_init
                                     18 	.globl _SPI_Init
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
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
                                    434 ; Stack segment in internal ram
                                    435 ;--------------------------------------------------------
                                    436 	.area SSEG
      000057                        437 __start__stack:
      000057                        438 	.ds	1
                                    439 
                                    440 ;--------------------------------------------------------
                                    441 ; indirectly addressable internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area ISEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; absolute internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area IABS    (ABS,DATA)
                                    448 	.area IABS    (ABS,DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; bit data
                                    451 ;--------------------------------------------------------
                                    452 	.area BSEG    (BIT)
                                    453 ;--------------------------------------------------------
                                    454 ; paged external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area PSEG    (PAG,XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; uninitialized external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XSEG    (XDATA)
      000176                        461 _main_device_mac_10000_89:
      000176                        462 	.ds 6
      00017C                        463 _main_target_mac_10000_89:
      00017C                        464 	.ds 6
      000182                        465 _main_device_ip_10000_89:
      000182                        466 	.ds 4
      000186                        467 _main_target_ip_10000_89:
      000186                        468 	.ds 4
                                    469 ;--------------------------------------------------------
                                    470 ; absolute external ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XABS    (ABS,XDATA)
                                    473 ;--------------------------------------------------------
                                    474 ; initialized external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XISEG   (XDATA)
                                    477 	.area HOME    (CODE)
                                    478 	.area GSINIT0 (CODE)
                                    479 	.area GSINIT1 (CODE)
                                    480 	.area GSINIT2 (CODE)
                                    481 	.area GSINIT3 (CODE)
                                    482 	.area GSINIT4 (CODE)
                                    483 	.area GSINIT5 (CODE)
                                    484 	.area GSINIT  (CODE)
                                    485 	.area GSFINAL (CODE)
                                    486 	.area CSEG    (CODE)
                                    487 ;--------------------------------------------------------
                                    488 ; interrupt vector
                                    489 ;--------------------------------------------------------
                                    490 	.area HOME    (CODE)
      002000                        491 __interrupt_vect:
      002000 02 20 34         [24]  492 	ljmp	__sdcc_gsinit_startup
                                    493 ;--------------------------------------------------------
                                    494 ; global & static initialisations
                                    495 ;--------------------------------------------------------
                                    496 	.area HOME    (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 	.globl __sdcc_gsinit_startup
                                    501 	.globl __sdcc_program_startup
                                    502 	.globl __start__stack
                                    503 	.globl __mcs51_genXINIT
                                    504 	.globl __mcs51_genXRAMCLEAR
                                    505 	.globl __mcs51_genRAMCLEAR
                                    506 	.area GSFINAL (CODE)
      002098 02 20 03         [24]  507 	ljmp	__sdcc_program_startup
                                    508 ;--------------------------------------------------------
                                    509 ; Home
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area HOME    (CODE)
      002003                        513 __sdcc_program_startup:
      002003 02 30 9B         [24]  514 	ljmp	_main
                                    515 ;	return from main will return to caller
                                    516 ;--------------------------------------------------------
                                    517 ; code
                                    518 ;--------------------------------------------------------
                                    519 	.area CSEG    (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'init_PCA'
                                    522 ;------------------------------------------------------------
                                    523 ;	main.c:16: void init_PCA(void)
                                    524 ;	-----------------------------------------
                                    525 ;	 function init_PCA
                                    526 ;	-----------------------------------------
      00308D                        527 _init_PCA:
                           000007   528 	ar7 = 0x07
                           000006   529 	ar6 = 0x06
                           000005   530 	ar5 = 0x05
                           000004   531 	ar4 = 0x04
                           000003   532 	ar3 = 0x03
                           000002   533 	ar2 = 0x02
                           000001   534 	ar1 = 0x01
                           000000   535 	ar0 = 0x00
                                    536 ;	main.c:21: CR=1;
                                    537 ;	assignBit
      00308D D2 DE            [12]  538 	setb	_CR
                                    539 ;	main.c:22: CMOD |= 0x02;
      00308F 43 D9 02         [24]  540 	orl	_CMOD,#0x02
                                    541 ;	main.c:23: }  void start_X2(void)
      003092 22               [24]  542 	ret
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'start_X2'
                                    545 ;------------------------------------------------------------
                                    546 ;	main.c:23: {
                                    547 ;	-----------------------------------------
                                    548 ;	 function start_X2
                                    549 ;	-----------------------------------------
      003093                        550 _start_X2:
                                    551 ;	main.c:25: CKCON0 |= ENABLE_X2;
      003093 43 8F 05         [24]  552 	orl	_CKCON0,#0x05
                                    553 ;	main.c:26: return;
                                    554 ;	main.c:27: }
      003096 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'end_X2'
                                    558 ;------------------------------------------------------------
                                    559 ;	main.c:29: void end_X2(void)
                                    560 ;	-----------------------------------------
                                    561 ;	 function end_X2
                                    562 ;	-----------------------------------------
      003097                        563 _end_X2:
                                    564 ;	main.c:31: CKCON0 &= (~(ENABLE_X2));
      003097 53 8F FA         [24]  565 	anl	_CKCON0,#0xfa
                                    566 ;	main.c:32: return;
                                    567 ;	main.c:33: }
      00309A 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'main'
                                    571 ;------------------------------------------------------------
                                    572 ;device_mac                Allocated with name '_main_device_mac_10000_89'
                                    573 ;target_mac                Allocated with name '_main_target_mac_10000_89'
                                    574 ;device_ip                 Allocated with name '_main_device_ip_10000_89'
                                    575 ;target_ip                 Allocated with name '_main_target_ip_10000_89'
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:34: int main(void)
                                    578 ;	-----------------------------------------
                                    579 ;	 function main
                                    580 ;	-----------------------------------------
      00309B                        581 _main:
                                    582 ;	main.c:40: uint8_t device_mac[6] = { 0x02, 0x04, 0xA3, 0x3C, 0x4D, 0x50 }; // Default MAC
      00309B 90 01 76         [24]  583 	mov	dptr,#_main_device_mac_10000_89
      00309E 74 02            [12]  584 	mov	a,#0x02
      0030A0 F0               [24]  585 	movx	@dptr,a
      0030A1 90 01 77         [24]  586 	mov	dptr,#(_main_device_mac_10000_89 + 0x0001)
      0030A4 23               [12]  587 	rl	a
      0030A5 F0               [24]  588 	movx	@dptr,a
      0030A6 90 01 78         [24]  589 	mov	dptr,#(_main_device_mac_10000_89 + 0x0002)
      0030A9 74 A3            [12]  590 	mov	a,#0xa3
      0030AB F0               [24]  591 	movx	@dptr,a
      0030AC 90 01 79         [24]  592 	mov	dptr,#(_main_device_mac_10000_89 + 0x0003)
      0030AF 74 3C            [12]  593 	mov	a,#0x3c
      0030B1 F0               [24]  594 	movx	@dptr,a
      0030B2 90 01 7A         [24]  595 	mov	dptr,#(_main_device_mac_10000_89 + 0x0004)
      0030B5 74 4D            [12]  596 	mov	a,#0x4d
      0030B7 F0               [24]  597 	movx	@dptr,a
      0030B8 90 01 7B         [24]  598 	mov	dptr,#(_main_device_mac_10000_89 + 0x0005)
      0030BB 74 50            [12]  599 	mov	a,#0x50
      0030BD F0               [24]  600 	movx	@dptr,a
                                    601 ;	main.c:41: uint8_t target_mac[6] = { 0xFF, 0XFF, 0XFF, 0xFF, 0XFF, 0XFF }; // Default MAC
      0030BE 90 01 7C         [24]  602 	mov	dptr,#_main_target_mac_10000_89
      0030C1 74 FF            [12]  603 	mov	a,#0xff
      0030C3 F0               [24]  604 	movx	@dptr,a
      0030C4 90 01 7D         [24]  605 	mov	dptr,#(_main_target_mac_10000_89 + 0x0001)
      0030C7 F0               [24]  606 	movx	@dptr,a
      0030C8 90 01 7E         [24]  607 	mov	dptr,#(_main_target_mac_10000_89 + 0x0002)
      0030CB F0               [24]  608 	movx	@dptr,a
      0030CC 90 01 7F         [24]  609 	mov	dptr,#(_main_target_mac_10000_89 + 0x0003)
      0030CF F0               [24]  610 	movx	@dptr,a
      0030D0 90 01 80         [24]  611 	mov	dptr,#(_main_target_mac_10000_89 + 0x0004)
      0030D3 F0               [24]  612 	movx	@dptr,a
      0030D4 90 01 81         [24]  613 	mov	dptr,#(_main_target_mac_10000_89 + 0x0005)
      0030D7 F0               [24]  614 	movx	@dptr,a
                                    615 ;	main.c:42: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0030D8 90 01 82         [24]  616 	mov	dptr,#_main_device_ip_10000_89
      0030DB 74 C0            [12]  617 	mov	a,#0xc0
      0030DD F0               [24]  618 	movx	@dptr,a
      0030DE 90 01 83         [24]  619 	mov	dptr,#(_main_device_ip_10000_89 + 0x0001)
      0030E1 74 A8            [12]  620 	mov	a,#0xa8
      0030E3 F0               [24]  621 	movx	@dptr,a
      0030E4 90 01 84         [24]  622 	mov	dptr,#(_main_device_ip_10000_89 + 0x0002)
      0030E7 74 01            [12]  623 	mov	a,#0x01
      0030E9 F0               [24]  624 	movx	@dptr,a
      0030EA 90 01 85         [24]  625 	mov	dptr,#(_main_device_ip_10000_89 + 0x0003)
      0030ED 74 64            [12]  626 	mov	a,#0x64
      0030EF F0               [24]  627 	movx	@dptr,a
                                    628 ;	main.c:43: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0030F0 90 01 86         [24]  629 	mov	dptr,#_main_target_ip_10000_89
      0030F3 74 C0            [12]  630 	mov	a,#0xc0
      0030F5 F0               [24]  631 	movx	@dptr,a
      0030F6 90 01 87         [24]  632 	mov	dptr,#(_main_target_ip_10000_89 + 0x0001)
      0030F9 74 A8            [12]  633 	mov	a,#0xa8
      0030FB F0               [24]  634 	movx	@dptr,a
      0030FC 90 01 88         [24]  635 	mov	dptr,#(_main_target_ip_10000_89 + 0x0002)
      0030FF 74 01            [12]  636 	mov	a,#0x01
      003101 F0               [24]  637 	movx	@dptr,a
      003102 90 01 89         [24]  638 	mov	dptr,#(_main_target_ip_10000_89 + 0x0003)
      003105 F0               [24]  639 	movx	@dptr,a
                                    640 ;	main.c:44: SPI_Init();
      003106 12 31 32         [24]  641 	lcall	_SPI_Init
                                    642 ;	main.c:45: printf("\nWelcome to SerialIO!\n");
      003109 74 6D            [12]  643 	mov	a,#___str_0
      00310B C0 E0            [24]  644 	push	acc
      00310D 74 5F            [12]  645 	mov	a,#(___str_0 >> 8)
      00310F C0 E0            [24]  646 	push	acc
      003111 74 80            [12]  647 	mov	a,#0x80
      003113 C0 E0            [24]  648 	push	acc
      003115 12 52 65         [24]  649 	lcall	_printf
      003118 15 81            [12]  650 	dec	sp
      00311A 15 81            [12]  651 	dec	sp
      00311C 15 81            [12]  652 	dec	sp
                                    653 ;	main.c:46: init_PCA();
      00311E 12 30 8D         [24]  654 	lcall	_init_PCA
                                    655 ;	main.c:47: CKCON0 |= ENABLE_X2;  // Set bit 0 to enable X2 mode
      003121 43 8F 05         [24]  656 	orl	_CKCON0,#0x05
                                    657 ;	main.c:48: enc_init(device_mac);
      003124 90 01 76         [24]  658 	mov	dptr,#_main_device_mac_10000_89
      003127 75 F0 00         [24]  659 	mov	b, #0x00
      00312A 12 2C A7         [24]  660 	lcall	_enc_init
                                    661 ;	main.c:51: while (1) {
      00312D                        662 00102$:
                                    663 ;	main.c:52: packetLoop();
      00312D 12 4D 92         [24]  664 	lcall	_packetLoop
                                    665 ;	main.c:54: }
      003130 80 FB            [24]  666 	sjmp	00102$
                                    667 	.area CSEG    (CODE)
                                    668 	.area CONST   (CODE)
                                    669 	.area CONST   (CODE)
      005F6D                        670 ___str_0:
      005F6D 0A                     671 	.db 0x0a
      005F6E 57 65 6C 63 6F 6D 65   672 	.ascii "Welcome to SerialIO!"
             20 74 6F 20 53 65 72
             69 61 6C 49 4F 21
      005F82 0A                     673 	.db 0x0a
      005F83 00                     674 	.db 0x00
                                    675 	.area CSEG    (CODE)
                                    676 	.area XINIT   (CODE)
                                    677 	.area CABS    (ABS,CODE)
