                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Utilities
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _putchar
                                    209 	.globl _getchar
                                    210 	.globl _putstr
                                    211 	.globl _hex_to_int
                                    212 	.globl _get_user_buffer_size
                                    213 ;--------------------------------------------------------
                                    214 ; special function registers
                                    215 ;--------------------------------------------------------
                                    216 	.area RSEG    (ABS,DATA)
      000000                        217 	.org 0x0000
                           000080   218 _P0	=	0x0080
                           000081   219 _SP	=	0x0081
                           000082   220 _DPL	=	0x0082
                           000083   221 _DPH	=	0x0083
                           000087   222 _PCON	=	0x0087
                           000088   223 _TCON	=	0x0088
                           000089   224 _TMOD	=	0x0089
                           00008A   225 _TL0	=	0x008a
                           00008B   226 _TL1	=	0x008b
                           00008C   227 _TH0	=	0x008c
                           00008D   228 _TH1	=	0x008d
                           000090   229 _P1	=	0x0090
                           000098   230 _SCON	=	0x0098
                           000099   231 _SBUF	=	0x0099
                           0000A0   232 _P2	=	0x00a0
                           0000A8   233 _IE	=	0x00a8
                           0000B0   234 _P3	=	0x00b0
                           0000B8   235 _IP	=	0x00b8
                           0000D0   236 _PSW	=	0x00d0
                           0000E0   237 _ACC	=	0x00e0
                           0000F0   238 _B	=	0x00f0
                           0000C8   239 _T2CON	=	0x00c8
                           0000CA   240 _RCAP2L	=	0x00ca
                           0000CB   241 _RCAP2H	=	0x00cb
                           0000CC   242 _TL2	=	0x00cc
                           0000CD   243 _TH2	=	0x00cd
                           00008E   244 _AUXR	=	0x008e
                           0000A2   245 _AUXR1	=	0x00a2
                           000097   246 _CKRL	=	0x0097
                           00008F   247 _CKCON0	=	0x008f
                           0000AF   248 _CKCON1	=	0x00af
                           0000FA   249 _CCAP0H	=	0x00fa
                           0000FB   250 _CCAP1H	=	0x00fb
                           0000FC   251 _CCAP2H	=	0x00fc
                           0000FD   252 _CCAP3H	=	0x00fd
                           0000FE   253 _CCAP4H	=	0x00fe
                           0000EA   254 _CCAP0L	=	0x00ea
                           0000EB   255 _CCAP1L	=	0x00eb
                           0000EC   256 _CCAP2L	=	0x00ec
                           0000ED   257 _CCAP3L	=	0x00ed
                           0000EE   258 _CCAP4L	=	0x00ee
                           0000DA   259 _CCAPM0	=	0x00da
                           0000DB   260 _CCAPM1	=	0x00db
                           0000DC   261 _CCAPM2	=	0x00dc
                           0000DD   262 _CCAPM3	=	0x00dd
                           0000DE   263 _CCAPM4	=	0x00de
                           0000D8   264 _CCON	=	0x00d8
                           0000F9   265 _CH	=	0x00f9
                           0000E9   266 _CL	=	0x00e9
                           0000D9   267 _CMOD	=	0x00d9
                           0000A8   268 _IEN0	=	0x00a8
                           0000B1   269 _IEN1	=	0x00b1
                           0000B8   270 _IPL0	=	0x00b8
                           0000B7   271 _IPH0	=	0x00b7
                           0000B2   272 _IPL1	=	0x00b2
                           0000B3   273 _IPH1	=	0x00b3
                           0000C0   274 _P4	=	0x00c0
                           0000E8   275 _P5	=	0x00e8
                           0000A6   276 _WDTRST	=	0x00a6
                           0000A7   277 _WDTPRG	=	0x00a7
                           0000A9   278 _SADDR	=	0x00a9
                           0000B9   279 _SADEN	=	0x00b9
                           0000C3   280 _SPCON	=	0x00c3
                           0000C4   281 _SPSTA	=	0x00c4
                           0000C5   282 _SPDAT	=	0x00c5
                           0000C9   283 _T2MOD	=	0x00c9
                           00009B   284 _BDRCON	=	0x009b
                           00009A   285 _BRL	=	0x009a
                           00009C   286 _KBLS	=	0x009c
                           00009D   287 _KBE	=	0x009d
                           00009E   288 _KBF	=	0x009e
                           0000D2   289 _EECON	=	0x00d2
                                    290 ;--------------------------------------------------------
                                    291 ; special function bits
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           000080   295 _P0_0	=	0x0080
                           000081   296 _P0_1	=	0x0081
                           000082   297 _P0_2	=	0x0082
                           000083   298 _P0_3	=	0x0083
                           000084   299 _P0_4	=	0x0084
                           000085   300 _P0_5	=	0x0085
                           000086   301 _P0_6	=	0x0086
                           000087   302 _P0_7	=	0x0087
                           000088   303 _IT0	=	0x0088
                           000089   304 _IE0	=	0x0089
                           00008A   305 _IT1	=	0x008a
                           00008B   306 _IE1	=	0x008b
                           00008C   307 _TR0	=	0x008c
                           00008D   308 _TF0	=	0x008d
                           00008E   309 _TR1	=	0x008e
                           00008F   310 _TF1	=	0x008f
                           000090   311 _P1_0	=	0x0090
                           000091   312 _P1_1	=	0x0091
                           000092   313 _P1_2	=	0x0092
                           000093   314 _P1_3	=	0x0093
                           000094   315 _P1_4	=	0x0094
                           000095   316 _P1_5	=	0x0095
                           000096   317 _P1_6	=	0x0096
                           000097   318 _P1_7	=	0x0097
                           000098   319 _RI	=	0x0098
                           000099   320 _TI	=	0x0099
                           00009A   321 _RB8	=	0x009a
                           00009B   322 _TB8	=	0x009b
                           00009C   323 _REN	=	0x009c
                           00009D   324 _SM2	=	0x009d
                           00009E   325 _SM1	=	0x009e
                           00009F   326 _SM0	=	0x009f
                           0000A0   327 _P2_0	=	0x00a0
                           0000A1   328 _P2_1	=	0x00a1
                           0000A2   329 _P2_2	=	0x00a2
                           0000A3   330 _P2_3	=	0x00a3
                           0000A4   331 _P2_4	=	0x00a4
                           0000A5   332 _P2_5	=	0x00a5
                           0000A6   333 _P2_6	=	0x00a6
                           0000A7   334 _P2_7	=	0x00a7
                           0000A8   335 _EX0	=	0x00a8
                           0000A9   336 _ET0	=	0x00a9
                           0000AA   337 _EX1	=	0x00aa
                           0000AB   338 _ET1	=	0x00ab
                           0000AC   339 _ES	=	0x00ac
                           0000AF   340 _EA	=	0x00af
                           0000B0   341 _P3_0	=	0x00b0
                           0000B1   342 _P3_1	=	0x00b1
                           0000B2   343 _P3_2	=	0x00b2
                           0000B3   344 _P3_3	=	0x00b3
                           0000B4   345 _P3_4	=	0x00b4
                           0000B5   346 _P3_5	=	0x00b5
                           0000B6   347 _P3_6	=	0x00b6
                           0000B7   348 _P3_7	=	0x00b7
                           0000B0   349 _RXD	=	0x00b0
                           0000B1   350 _TXD	=	0x00b1
                           0000B2   351 _INT0	=	0x00b2
                           0000B3   352 _INT1	=	0x00b3
                           0000B4   353 _T0	=	0x00b4
                           0000B5   354 _T1	=	0x00b5
                           0000B6   355 _WR	=	0x00b6
                           0000B7   356 _RD	=	0x00b7
                           0000B8   357 _PX0	=	0x00b8
                           0000B9   358 _PT0	=	0x00b9
                           0000BA   359 _PX1	=	0x00ba
                           0000BB   360 _PT1	=	0x00bb
                           0000BC   361 _PS	=	0x00bc
                           0000D0   362 _P	=	0x00d0
                           0000D1   363 _F1	=	0x00d1
                           0000D2   364 _OV	=	0x00d2
                           0000D3   365 _RS0	=	0x00d3
                           0000D4   366 _RS1	=	0x00d4
                           0000D5   367 _F0	=	0x00d5
                           0000D6   368 _AC	=	0x00d6
                           0000D7   369 _CY	=	0x00d7
                           0000AD   370 _ET2	=	0x00ad
                           0000BD   371 _PT2	=	0x00bd
                           0000C8   372 _T2CON_0	=	0x00c8
                           0000C9   373 _T2CON_1	=	0x00c9
                           0000CA   374 _T2CON_2	=	0x00ca
                           0000CB   375 _T2CON_3	=	0x00cb
                           0000CC   376 _T2CON_4	=	0x00cc
                           0000CD   377 _T2CON_5	=	0x00cd
                           0000CE   378 _T2CON_6	=	0x00ce
                           0000CF   379 _T2CON_7	=	0x00cf
                           0000C8   380 _CP_RL2	=	0x00c8
                           0000C9   381 _C_T2	=	0x00c9
                           0000CA   382 _TR2	=	0x00ca
                           0000CB   383 _EXEN2	=	0x00cb
                           0000CC   384 _TCLK	=	0x00cc
                           0000CD   385 _RCLK	=	0x00cd
                           0000CE   386 _EXF2	=	0x00ce
                           0000CF   387 _TF2	=	0x00cf
                           0000DF   388 _CF	=	0x00df
                           0000DE   389 _CR	=	0x00de
                           0000DC   390 _CCF4	=	0x00dc
                           0000DB   391 _CCF3	=	0x00db
                           0000DA   392 _CCF2	=	0x00da
                           0000D9   393 _CCF1	=	0x00d9
                           0000D8   394 _CCF0	=	0x00d8
                           0000AE   395 _EC	=	0x00ae
                           0000BE   396 _PPCL	=	0x00be
                           0000BD   397 _PT2L	=	0x00bd
                           0000BC   398 _PSL	=	0x00bc
                           0000BB   399 _PT1L	=	0x00bb
                           0000BA   400 _PX1L	=	0x00ba
                           0000B9   401 _PT0L	=	0x00b9
                           0000B8   402 _PX0L	=	0x00b8
                           0000C0   403 _P4_0	=	0x00c0
                           0000C1   404 _P4_1	=	0x00c1
                           0000C2   405 _P4_2	=	0x00c2
                           0000C3   406 _P4_3	=	0x00c3
                           0000C4   407 _P4_4	=	0x00c4
                           0000C5   408 _P4_5	=	0x00c5
                           0000C6   409 _P4_6	=	0x00c6
                           0000C7   410 _P4_7	=	0x00c7
                           0000E8   411 _P5_0	=	0x00e8
                           0000E9   412 _P5_1	=	0x00e9
                           0000EA   413 _P5_2	=	0x00ea
                           0000EB   414 _P5_3	=	0x00eb
                           0000EC   415 _P5_4	=	0x00ec
                           0000ED   416 _P5_5	=	0x00ed
                           0000EE   417 _P5_6	=	0x00ee
                           0000EF   418 _P5_7	=	0x00ef
                                    419 ;--------------------------------------------------------
                                    420 ; overlayable register banks
                                    421 ;--------------------------------------------------------
                                    422 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        423 	.ds 8
                                    424 ;--------------------------------------------------------
                                    425 ; internal ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area DSEG    (DATA)
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable items in internal ram
                                    430 ;--------------------------------------------------------
                                    431 	.area	OSEG    (OVR,DATA)
      000047                        432 _hex_to_int_sloc0_1_0:
      000047                        433 	.ds 3
      00004A                        434 _hex_to_int_sloc1_1_0:
      00004A                        435 	.ds 1
      00004B                        436 _hex_to_int_sloc2_1_0:
      00004B                        437 	.ds 2
                                    438 ;--------------------------------------------------------
                                    439 ; indirectly addressable internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area ISEG    (DATA)
                                    442 ;--------------------------------------------------------
                                    443 ; absolute internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area IABS    (ABS,DATA)
                                    446 	.area IABS    (ABS,DATA)
                                    447 ;--------------------------------------------------------
                                    448 ; bit data
                                    449 ;--------------------------------------------------------
                                    450 	.area BSEG    (BIT)
                                    451 ;--------------------------------------------------------
                                    452 ; paged external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area PSEG    (PAG,XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; uninitialized external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XSEG    (XDATA)
      000191                        459 _putchar_c_10000_82:
      000191                        460 	.ds 2
      000193                        461 _putstr_s_10000_86:
      000193                        462 	.ds 3
      000196                        463 _hex_to_int_str_10000_89:
      000196                        464 	.ds 3
      000199                        465 _hex_to_int_result_10000_90:
      000199                        466 	.ds 2
      00019B                        467 _hex_to_int_ASCII_20000_91:
      00019B                        468 	.ds 2
      00019D                        469 _get_user_buffer_size_input_10000_96:
      00019D                        470 	.ds 10
                                    471 ;--------------------------------------------------------
                                    472 ; absolute external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XABS    (ABS,XDATA)
                                    475 ;--------------------------------------------------------
                                    476 ; initialized external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XISEG   (XDATA)
                                    479 	.area HOME    (CODE)
                                    480 	.area GSINIT0 (CODE)
                                    481 	.area GSINIT1 (CODE)
                                    482 	.area GSINIT2 (CODE)
                                    483 	.area GSINIT3 (CODE)
                                    484 	.area GSINIT4 (CODE)
                                    485 	.area GSINIT5 (CODE)
                                    486 	.area GSINIT  (CODE)
                                    487 	.area GSFINAL (CODE)
                                    488 	.area CSEG    (CODE)
                                    489 ;--------------------------------------------------------
                                    490 ; global & static initialisations
                                    491 ;--------------------------------------------------------
                                    492 	.area HOME    (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.area GSFINAL (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 ;--------------------------------------------------------
                                    497 ; Home
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
                                    500 	.area HOME    (CODE)
                                    501 ;--------------------------------------------------------
                                    502 ; code
                                    503 ;--------------------------------------------------------
                                    504 	.area CSEG    (CODE)
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'putchar'
                                    507 ;------------------------------------------------------------
                                    508 ;c                         Allocated with name '_putchar_c_10000_82'
                                    509 ;------------------------------------------------------------
                                    510 ;	Utilities.c:18: int putchar (int c)
                                    511 ;	-----------------------------------------
                                    512 ;	 function putchar
                                    513 ;	-----------------------------------------
      003241                        514 _putchar:
                           000007   515 	ar7 = 0x07
                           000006   516 	ar6 = 0x06
                           000005   517 	ar5 = 0x05
                           000004   518 	ar4 = 0x04
                           000003   519 	ar3 = 0x03
                           000002   520 	ar2 = 0x02
                           000001   521 	ar1 = 0x01
                           000000   522 	ar0 = 0x00
      003241 AF 83            [24]  523 	mov	r7,dph
      003243 E5 82            [12]  524 	mov	a,dpl
      003245 90 01 91         [24]  525 	mov	dptr,#_putchar_c_10000_82
      003248 F0               [24]  526 	movx	@dptr,a
      003249 EF               [12]  527 	mov	a,r7
      00324A A3               [24]  528 	inc	dptr
      00324B F0               [24]  529 	movx	@dptr,a
                                    530 ;	Utilities.c:21: while (!TI);
      00324C                        531 00101$:
      00324C 30 99 FD         [24]  532 	jnb	_TI,00101$
                                    533 ;	Utilities.c:23: SBUF = c;           // load serial port with transmit value
      00324F 90 01 91         [24]  534 	mov	dptr,#_putchar_c_10000_82
      003252 E0               [24]  535 	movx	a,@dptr
      003253 FE               [12]  536 	mov	r6,a
      003254 A3               [24]  537 	inc	dptr
      003255 E0               [24]  538 	movx	a,@dptr
      003256 FF               [12]  539 	mov	r7,a
      003257 8E 99            [24]  540 	mov	_SBUF,r6
                                    541 ;	Utilities.c:24: TI = 0;             // clear TI flag
                                    542 ;	assignBit
      003259 C2 99            [12]  543 	clr	_TI
                                    544 ;	Utilities.c:26: return c;
      00325B 8E 82            [24]  545 	mov	dpl, r6
      00325D 8F 83            [24]  546 	mov	dph, r7
                                    547 ;	Utilities.c:27: }
      00325F 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'getchar'
                                    551 ;------------------------------------------------------------
                                    552 ;	Utilities.c:30: int getchar (void)
                                    553 ;	-----------------------------------------
                                    554 ;	 function getchar
                                    555 ;	-----------------------------------------
      003260                        556 _getchar:
                                    557 ;	Utilities.c:33: while (!RI);
      003260                        558 00101$:
                                    559 ;	Utilities.c:35: RI = 0;                         // clear RI flag
                                    560 ;	assignBit
      003260 10 98 02         [24]  561 	jbc	_RI,00118$
      003263 80 FB            [24]  562 	sjmp	00101$
      003265                        563 00118$:
                                    564 ;	Utilities.c:36: return SBUF;                    // return character from SBUF
      003265 AE 99            [24]  565 	mov	r6,_SBUF
      003267 7F 00            [12]  566 	mov	r7,#0x00
      003269 8E 82            [24]  567 	mov	dpl, r6
      00326B 8F 83            [24]  568 	mov	dph, r7
                                    569 ;	Utilities.c:37: }
      00326D 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'putstr'
                                    573 ;------------------------------------------------------------
                                    574 ;s                         Allocated with name '_putstr_s_10000_86'
                                    575 ;i                         Allocated with name '_putstr_i_10000_87'
                                    576 ;------------------------------------------------------------
                                    577 ;	Utilities.c:39: int putstr (char *s)
                                    578 ;	-----------------------------------------
                                    579 ;	 function putstr
                                    580 ;	-----------------------------------------
      00326E                        581 _putstr:
      00326E AF F0            [24]  582 	mov	r7,b
      003270 AE 83            [24]  583 	mov	r6,dph
      003272 E5 82            [12]  584 	mov	a,dpl
      003274 90 01 93         [24]  585 	mov	dptr,#_putstr_s_10000_86
      003277 F0               [24]  586 	movx	@dptr,a
      003278 EE               [12]  587 	mov	a,r6
      003279 A3               [24]  588 	inc	dptr
      00327A F0               [24]  589 	movx	@dptr,a
      00327B EF               [12]  590 	mov	a,r7
      00327C A3               [24]  591 	inc	dptr
      00327D F0               [24]  592 	movx	@dptr,a
                                    593 ;	Utilities.c:42: while (*s){            // output characters until NULL found
      00327E 90 01 93         [24]  594 	mov	dptr,#_putstr_s_10000_86
      003281 E0               [24]  595 	movx	a,@dptr
      003282 FD               [12]  596 	mov	r5,a
      003283 A3               [24]  597 	inc	dptr
      003284 E0               [24]  598 	movx	a,@dptr
      003285 FE               [12]  599 	mov	r6,a
      003286 A3               [24]  600 	inc	dptr
      003287 E0               [24]  601 	movx	a,@dptr
      003288 FF               [12]  602 	mov	r7,a
      003289 7B 00            [12]  603 	mov	r3,#0x00
      00328B 7C 00            [12]  604 	mov	r4,#0x00
      00328D                        605 00101$:
      00328D 8D 82            [24]  606 	mov	dpl,r5
      00328F 8E 83            [24]  607 	mov	dph,r6
      003291 8F F0            [24]  608 	mov	b,r7
      003293 12 5C 87         [24]  609 	lcall	__gptrget
      003296 FA               [12]  610 	mov	r2,a
      003297 60 36            [24]  611 	jz	00108$
                                    612 ;	Utilities.c:43: putchar(*s++);
      003299 0D               [12]  613 	inc	r5
      00329A BD 00 01         [24]  614 	cjne	r5,#0x00,00120$
      00329D 0E               [12]  615 	inc	r6
      00329E                        616 00120$:
      00329E 90 01 93         [24]  617 	mov	dptr,#_putstr_s_10000_86
      0032A1 ED               [12]  618 	mov	a,r5
      0032A2 F0               [24]  619 	movx	@dptr,a
      0032A3 EE               [12]  620 	mov	a,r6
      0032A4 A3               [24]  621 	inc	dptr
      0032A5 F0               [24]  622 	movx	@dptr,a
      0032A6 EF               [12]  623 	mov	a,r7
      0032A7 A3               [24]  624 	inc	dptr
      0032A8 F0               [24]  625 	movx	@dptr,a
      0032A9 8A 01            [24]  626 	mov	ar1,r2
      0032AB 7A 00            [12]  627 	mov	r2,#0x00
      0032AD 89 82            [24]  628 	mov	dpl, r1
      0032AF 8A 83            [24]  629 	mov	dph, r2
      0032B1 C0 07            [24]  630 	push	ar7
      0032B3 C0 06            [24]  631 	push	ar6
      0032B5 C0 05            [24]  632 	push	ar5
      0032B7 C0 04            [24]  633 	push	ar4
      0032B9 C0 03            [24]  634 	push	ar3
      0032BB 12 32 41         [24]  635 	lcall	_putchar
      0032BE D0 03            [24]  636 	pop	ar3
      0032C0 D0 04            [24]  637 	pop	ar4
      0032C2 D0 05            [24]  638 	pop	ar5
      0032C4 D0 06            [24]  639 	pop	ar6
      0032C6 D0 07            [24]  640 	pop	ar7
                                    641 ;	Utilities.c:44: i++;
      0032C8 0B               [12]  642 	inc	r3
      0032C9 BB 00 C1         [24]  643 	cjne	r3,#0x00,00101$
      0032CC 0C               [12]  644 	inc	r4
      0032CD 80 BE            [24]  645 	sjmp	00101$
      0032CF                        646 00108$:
      0032CF 90 01 93         [24]  647 	mov	dptr,#_putstr_s_10000_86
      0032D2 ED               [12]  648 	mov	a,r5
      0032D3 F0               [24]  649 	movx	@dptr,a
      0032D4 EE               [12]  650 	mov	a,r6
      0032D5 A3               [24]  651 	inc	dptr
      0032D6 F0               [24]  652 	movx	@dptr,a
      0032D7 EF               [12]  653 	mov	a,r7
      0032D8 A3               [24]  654 	inc	dptr
      0032D9 F0               [24]  655 	movx	@dptr,a
                                    656 ;	Utilities.c:46: return i+1;
      0032DA 0B               [12]  657 	inc	r3
      0032DB BB 00 01         [24]  658 	cjne	r3,#0x00,00122$
      0032DE 0C               [12]  659 	inc	r4
      0032DF                        660 00122$:
      0032DF 8B 82            [24]  661 	mov	dpl, r3
      0032E1 8C 83            [24]  662 	mov	dph, r4
                                    663 ;	Utilities.c:47: }
      0032E3 22               [24]  664 	ret
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'hex_to_int'
                                    667 ;------------------------------------------------------------
                                    668 ;str                       Allocated with name '_hex_to_int_str_10000_89'
                                    669 ;i                         Allocated with name '_hex_to_int_i_10000_90'
                                    670 ;result                    Allocated with name '_hex_to_int_result_10000_90'
                                    671 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_91'
                                    672 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    673 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    674 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    675 ;------------------------------------------------------------
                                    676 ;	Utilities.c:49: int hex_to_int(char* str)
                                    677 ;	-----------------------------------------
                                    678 ;	 function hex_to_int
                                    679 ;	-----------------------------------------
      0032E4                        680 _hex_to_int:
      0032E4 AF F0            [24]  681 	mov	r7,b
      0032E6 AE 83            [24]  682 	mov	r6,dph
      0032E8 E5 82            [12]  683 	mov	a,dpl
      0032EA 90 01 96         [24]  684 	mov	dptr,#_hex_to_int_str_10000_89
      0032ED F0               [24]  685 	movx	@dptr,a
      0032EE EE               [12]  686 	mov	a,r6
      0032EF A3               [24]  687 	inc	dptr
      0032F0 F0               [24]  688 	movx	@dptr,a
      0032F1 EF               [12]  689 	mov	a,r7
      0032F2 A3               [24]  690 	inc	dptr
      0032F3 F0               [24]  691 	movx	@dptr,a
                                    692 ;	Utilities.c:52: int i = 0, result = 0;
      0032F4 90 01 99         [24]  693 	mov	dptr,#_hex_to_int_result_10000_90
      0032F7 E4               [12]  694 	clr	a
      0032F8 F0               [24]  695 	movx	@dptr,a
      0032F9 A3               [24]  696 	inc	dptr
      0032FA F0               [24]  697 	movx	@dptr,a
                                    698 ;	Utilities.c:53: while(str[i] != '\0')
      0032FB 90 01 96         [24]  699 	mov	dptr,#_hex_to_int_str_10000_89
      0032FE E0               [24]  700 	movx	a,@dptr
      0032FF FD               [12]  701 	mov	r5,a
      003300 A3               [24]  702 	inc	dptr
      003301 E0               [24]  703 	movx	a,@dptr
      003302 FE               [12]  704 	mov	r6,a
      003303 A3               [24]  705 	inc	dptr
      003304 E0               [24]  706 	movx	a,@dptr
      003305 FF               [12]  707 	mov	r7,a
      003306 8D 02            [24]  708 	mov	ar2,r5
      003308 8E 03            [24]  709 	mov	ar3,r6
      00330A 8F 04            [24]  710 	mov	ar4,r7
      00330C 8D 47            [24]  711 	mov	_hex_to_int_sloc0_1_0,r5
      00330E 8E 48            [24]  712 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      003310 8F 49            [24]  713 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      003312 78 00            [12]  714 	mov	r0,#0x00
      003314 79 00            [12]  715 	mov	r1,#0x00
      003316                        716 00112$:
      003316 C0 02            [24]  717 	push	ar2
      003318 C0 03            [24]  718 	push	ar3
      00331A C0 04            [24]  719 	push	ar4
      00331C E8               [12]  720 	mov	a,r0
      00331D 25 47            [12]  721 	add	a, _hex_to_int_sloc0_1_0
      00331F FA               [12]  722 	mov	r2,a
      003320 E9               [12]  723 	mov	a,r1
      003321 35 48            [12]  724 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      003323 FB               [12]  725 	mov	r3,a
      003324 AC 49            [24]  726 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      003326 8A 82            [24]  727 	mov	dpl,r2
      003328 8B 83            [24]  728 	mov	dph,r3
      00332A 8C F0            [24]  729 	mov	b,r4
      00332C 12 5C 87         [24]  730 	lcall	__gptrget
      00332F F5 4A            [12]  731 	mov	_hex_to_int_sloc1_1_0,a
      003331 D0 04            [24]  732 	pop	ar4
      003333 D0 03            [24]  733 	pop	ar3
      003335 D0 02            [24]  734 	pop	ar2
      003337 E5 4A            [12]  735 	mov	a,_hex_to_int_sloc1_1_0
      003339 70 03            [24]  736 	jnz	00166$
      00333B 02 34 92         [24]  737 	ljmp	00114$
      00333E                        738 00166$:
                                    739 ;	Utilities.c:55: int ASCII = (int)str[i];
      00333E C0 02            [24]  740 	push	ar2
      003340 C0 03            [24]  741 	push	ar3
      003342 C0 04            [24]  742 	push	ar4
      003344 85 4A 4B         [24]  743 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      003347 75 4C 00         [24]  744 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      00334A 90 01 9B         [24]  745 	mov	dptr,#_hex_to_int_ASCII_20000_91
      00334D E5 4B            [12]  746 	mov	a,_hex_to_int_sloc2_1_0
      00334F F0               [24]  747 	movx	@dptr,a
      003350 E5 4C            [12]  748 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      003352 A3               [24]  749 	inc	dptr
      003353 F0               [24]  750 	movx	@dptr,a
                                    751 ;	Utilities.c:56: result *= 16;
      003354 90 01 99         [24]  752 	mov	dptr,#_hex_to_int_result_10000_90
      003357 E0               [24]  753 	movx	a,@dptr
      003358 FB               [12]  754 	mov	r3,a
      003359 A3               [24]  755 	inc	dptr
      00335A E0               [24]  756 	movx	a,@dptr
      00335B C4               [12]  757 	swap	a
      00335C 54 F0            [12]  758 	anl	a,#0xf0
      00335E CB               [12]  759 	xch	a,r3
      00335F C4               [12]  760 	swap	a
      003360 CB               [12]  761 	xch	a,r3
      003361 6B               [12]  762 	xrl	a,r3
      003362 CB               [12]  763 	xch	a,r3
      003363 54 F0            [12]  764 	anl	a,#0xf0
      003365 CB               [12]  765 	xch	a,r3
      003366 6B               [12]  766 	xrl	a,r3
      003367 FC               [12]  767 	mov	r4,a
      003368 90 01 99         [24]  768 	mov	dptr,#_hex_to_int_result_10000_90
      00336B EB               [12]  769 	mov	a,r3
      00336C F0               [24]  770 	movx	@dptr,a
      00336D EC               [12]  771 	mov	a,r4
      00336E A3               [24]  772 	inc	dptr
      00336F F0               [24]  773 	movx	@dptr,a
                                    774 ;	Utilities.c:57: if(ASCII >= '0' && ASCII <= '9')
      003370 C3               [12]  775 	clr	c
      003371 E5 4B            [12]  776 	mov	a,_hex_to_int_sloc2_1_0
      003373 94 30            [12]  777 	subb	a,#0x30
      003375 E5 4C            [12]  778 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      003377 64 80            [12]  779 	xrl	a,#0x80
      003379 94 80            [12]  780 	subb	a,#0x80
      00337B D0 04            [24]  781 	pop	ar4
      00337D D0 03            [24]  782 	pop	ar3
      00337F D0 02            [24]  783 	pop	ar2
      003381 40 3F            [24]  784 	jc	00109$
      003383 74 39            [12]  785 	mov	a,#0x39
      003385 95 4B            [12]  786 	subb	a,_hex_to_int_sloc2_1_0
      003387 74 80            [12]  787 	mov	a,#(0x00 ^ 0x80)
      003389 85 4C F0         [24]  788 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00338C 63 F0 80         [24]  789 	xrl	b,#0x80
      00338F 95 F0            [12]  790 	subb	a,b
      003391 40 2F            [24]  791 	jc	00109$
                                    792 ;	Utilities.c:59: result += str[i] - 48;
      003393 C0 02            [24]  793 	push	ar2
      003395 C0 03            [24]  794 	push	ar3
      003397 C0 04            [24]  795 	push	ar4
      003399 E5 4B            [12]  796 	mov	a,_hex_to_int_sloc2_1_0
      00339B 24 D0            [12]  797 	add	a,#0xd0
      00339D F5 4B            [12]  798 	mov	_hex_to_int_sloc2_1_0,a
      00339F E5 4C            [12]  799 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0033A1 34 FF            [12]  800 	addc	a,#0xff
      0033A3 F5 4C            [12]  801 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0033A5 90 01 99         [24]  802 	mov	dptr,#_hex_to_int_result_10000_90
      0033A8 E0               [24]  803 	movx	a,@dptr
      0033A9 FA               [12]  804 	mov	r2,a
      0033AA A3               [24]  805 	inc	dptr
      0033AB E0               [24]  806 	movx	a,@dptr
      0033AC FC               [12]  807 	mov	r4,a
      0033AD 90 01 99         [24]  808 	mov	dptr,#_hex_to_int_result_10000_90
      0033B0 E5 4B            [12]  809 	mov	a,_hex_to_int_sloc2_1_0
      0033B2 2A               [12]  810 	add	a, r2
      0033B3 F0               [24]  811 	movx	@dptr,a
      0033B4 E5 4C            [12]  812 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0033B6 3C               [12]  813 	addc	a, r4
      0033B7 A3               [24]  814 	inc	dptr
      0033B8 F0               [24]  815 	movx	@dptr,a
      0033B9 D0 04            [24]  816 	pop	ar4
      0033BB D0 03            [24]  817 	pop	ar3
      0033BD D0 02            [24]  818 	pop	ar2
      0033BF 02 34 8A         [24]  819 	ljmp	00110$
      0033C2                        820 00109$:
                                    821 ;	Utilities.c:61: else if(ASCII >= 'A' && ASCII <= 'F')
      0033C2 90 01 9B         [24]  822 	mov	dptr,#_hex_to_int_ASCII_20000_91
      0033C5 E0               [24]  823 	movx	a,@dptr
      0033C6 F5 4B            [12]  824 	mov	_hex_to_int_sloc2_1_0,a
      0033C8 A3               [24]  825 	inc	dptr
      0033C9 E0               [24]  826 	movx	a,@dptr
      0033CA F5 4C            [12]  827 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0033CC C3               [12]  828 	clr	c
      0033CD E5 4B            [12]  829 	mov	a,_hex_to_int_sloc2_1_0
      0033CF 94 41            [12]  830 	subb	a,#0x41
      0033D1 E5 4C            [12]  831 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0033D3 64 80            [12]  832 	xrl	a,#0x80
      0033D5 94 80            [12]  833 	subb	a,#0x80
      0033D7 40 4E            [24]  834 	jc	00105$
      0033D9 74 46            [12]  835 	mov	a,#0x46
      0033DB 95 4B            [12]  836 	subb	a,_hex_to_int_sloc2_1_0
      0033DD 74 80            [12]  837 	mov	a,#(0x00 ^ 0x80)
      0033DF 85 4C F0         [24]  838 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0033E2 63 F0 80         [24]  839 	xrl	b,#0x80
      0033E5 95 F0            [12]  840 	subb	a,b
      0033E7 40 3E            [24]  841 	jc	00105$
                                    842 ;	Utilities.c:63: result += str[i] - 55;
      0033E9 C0 05            [24]  843 	push	ar5
      0033EB C0 06            [24]  844 	push	ar6
      0033ED C0 07            [24]  845 	push	ar7
      0033EF E8               [12]  846 	mov	a,r0
      0033F0 2A               [12]  847 	add	a, r2
      0033F1 FD               [12]  848 	mov	r5,a
      0033F2 E9               [12]  849 	mov	a,r1
      0033F3 3B               [12]  850 	addc	a, r3
      0033F4 FE               [12]  851 	mov	r6,a
      0033F5 8C 07            [24]  852 	mov	ar7,r4
      0033F7 8D 82            [24]  853 	mov	dpl,r5
      0033F9 8E 83            [24]  854 	mov	dph,r6
      0033FB 8F F0            [24]  855 	mov	b,r7
      0033FD 12 5C 87         [24]  856 	lcall	__gptrget
      003400 7F 00            [12]  857 	mov	r7,#0x00
      003402 24 C9            [12]  858 	add	a,#0xc9
      003404 F5 4B            [12]  859 	mov	_hex_to_int_sloc2_1_0,a
      003406 EF               [12]  860 	mov	a,r7
      003407 34 FF            [12]  861 	addc	a,#0xff
      003409 F5 4C            [12]  862 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00340B 90 01 99         [24]  863 	mov	dptr,#_hex_to_int_result_10000_90
      00340E E0               [24]  864 	movx	a,@dptr
      00340F FE               [12]  865 	mov	r6,a
      003410 A3               [24]  866 	inc	dptr
      003411 E0               [24]  867 	movx	a,@dptr
      003412 FF               [12]  868 	mov	r7,a
      003413 90 01 99         [24]  869 	mov	dptr,#_hex_to_int_result_10000_90
      003416 E5 4B            [12]  870 	mov	a,_hex_to_int_sloc2_1_0
      003418 2E               [12]  871 	add	a, r6
      003419 F0               [24]  872 	movx	@dptr,a
      00341A E5 4C            [12]  873 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00341C 3F               [12]  874 	addc	a, r7
      00341D A3               [24]  875 	inc	dptr
      00341E F0               [24]  876 	movx	@dptr,a
      00341F D0 07            [24]  877 	pop	ar7
      003421 D0 06            [24]  878 	pop	ar6
      003423 D0 05            [24]  879 	pop	ar5
      003425 80 63            [24]  880 	sjmp	00110$
      003427                        881 00105$:
                                    882 ;	Utilities.c:65: else if(ASCII >= 'a' && ASCII <= 'f')
      003427 90 01 9B         [24]  883 	mov	dptr,#_hex_to_int_ASCII_20000_91
      00342A E0               [24]  884 	movx	a,@dptr
      00342B F5 4B            [12]  885 	mov	_hex_to_int_sloc2_1_0,a
      00342D A3               [24]  886 	inc	dptr
      00342E E0               [24]  887 	movx	a,@dptr
      00342F F5 4C            [12]  888 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      003431 C3               [12]  889 	clr	c
      003432 E5 4B            [12]  890 	mov	a,_hex_to_int_sloc2_1_0
      003434 94 61            [12]  891 	subb	a,#0x61
      003436 E5 4C            [12]  892 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      003438 64 80            [12]  893 	xrl	a,#0x80
      00343A 94 80            [12]  894 	subb	a,#0x80
      00343C 40 4C            [24]  895 	jc	00110$
      00343E 74 66            [12]  896 	mov	a,#0x66
      003440 95 4B            [12]  897 	subb	a,_hex_to_int_sloc2_1_0
      003442 74 80            [12]  898 	mov	a,#(0x00 ^ 0x80)
      003444 85 4C F0         [24]  899 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      003447 63 F0 80         [24]  900 	xrl	b,#0x80
      00344A 95 F0            [12]  901 	subb	a,b
      00344C 40 3C            [24]  902 	jc	00110$
                                    903 ;	Utilities.c:67: result += str[i] - 87;
      00344E C0 02            [24]  904 	push	ar2
      003450 C0 03            [24]  905 	push	ar3
      003452 C0 04            [24]  906 	push	ar4
      003454 E8               [12]  907 	mov	a,r0
      003455 2D               [12]  908 	add	a, r5
      003456 FA               [12]  909 	mov	r2,a
      003457 E9               [12]  910 	mov	a,r1
      003458 3E               [12]  911 	addc	a, r6
      003459 FB               [12]  912 	mov	r3,a
      00345A 8F 04            [24]  913 	mov	ar4,r7
      00345C 8A 82            [24]  914 	mov	dpl,r2
      00345E 8B 83            [24]  915 	mov	dph,r3
      003460 8C F0            [24]  916 	mov	b,r4
      003462 12 5C 87         [24]  917 	lcall	__gptrget
      003465 7C 00            [12]  918 	mov	r4,#0x00
      003467 24 A9            [12]  919 	add	a,#0xa9
      003469 F5 4B            [12]  920 	mov	_hex_to_int_sloc2_1_0,a
      00346B EC               [12]  921 	mov	a,r4
      00346C 34 FF            [12]  922 	addc	a,#0xff
      00346E F5 4C            [12]  923 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      003470 90 01 99         [24]  924 	mov	dptr,#_hex_to_int_result_10000_90
      003473 E0               [24]  925 	movx	a,@dptr
      003474 FB               [12]  926 	mov	r3,a
      003475 A3               [24]  927 	inc	dptr
      003476 E0               [24]  928 	movx	a,@dptr
      003477 FC               [12]  929 	mov	r4,a
      003478 90 01 99         [24]  930 	mov	dptr,#_hex_to_int_result_10000_90
      00347B E5 4B            [12]  931 	mov	a,_hex_to_int_sloc2_1_0
      00347D 2B               [12]  932 	add	a, r3
      00347E F0               [24]  933 	movx	@dptr,a
      00347F E5 4C            [12]  934 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      003481 3C               [12]  935 	addc	a, r4
      003482 A3               [24]  936 	inc	dptr
      003483 F0               [24]  937 	movx	@dptr,a
                                    938 ;	Utilities.c:71: return result;
      003484 D0 04            [24]  939 	pop	ar4
      003486 D0 03            [24]  940 	pop	ar3
      003488 D0 02            [24]  941 	pop	ar2
                                    942 ;	Utilities.c:67: result += str[i] - 87;
      00348A                        943 00110$:
                                    944 ;	Utilities.c:69: i++;
      00348A 08               [12]  945 	inc	r0
      00348B B8 00 01         [24]  946 	cjne	r0,#0x00,00173$
      00348E 09               [12]  947 	inc	r1
      00348F                        948 00173$:
      00348F 02 33 16         [24]  949 	ljmp	00112$
      003492                        950 00114$:
                                    951 ;	Utilities.c:71: return result;
      003492 90 01 99         [24]  952 	mov	dptr,#_hex_to_int_result_10000_90
      003495 E0               [24]  953 	movx	a,@dptr
      003496 FE               [12]  954 	mov	r6,a
      003497 A3               [24]  955 	inc	dptr
      003498 E0               [24]  956 	movx	a,@dptr
                                    957 ;	Utilities.c:73: }
      003499 8E 82            [24]  958 	mov	dpl,r6
      00349B F5 83            [12]  959 	mov	dph,a
      00349D 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    963 ;------------------------------------------------------------
                                    964 ;i                         Allocated with name '_get_user_buffer_size_i_10000_96'
                                    965 ;output                    Allocated with name '_get_user_buffer_size_output_10000_96'
                                    966 ;input                     Allocated with name '_get_user_buffer_size_input_10000_96'
                                    967 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_96'
                                    968 ;------------------------------------------------------------
                                    969 ;	Utilities.c:76: int get_user_buffer_size(void)
                                    970 ;	-----------------------------------------
                                    971 ;	 function get_user_buffer_size
                                    972 ;	-----------------------------------------
      00349E                        973 _get_user_buffer_size:
                                    974 ;	Utilities.c:82: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      00349E 7E 00            [12]  975 	mov	r6,#0x00
      0034A0 7F 00            [12]  976 	mov	r7,#0x00
      0034A2                        977 00103$:
      0034A2 C0 07            [24]  978 	push	ar7
      0034A4 C0 06            [24]  979 	push	ar6
      0034A6 12 32 60         [24]  980 	lcall	_getchar
      0034A9 AC 82            [24]  981 	mov	r4, dpl
      0034AB D0 06            [24]  982 	pop	ar6
      0034AD D0 07            [24]  983 	pop	ar7
      0034AF BC 0A 02         [24]  984 	cjne	r4,#0x0a,00133$
      0034B2 80 3A            [24]  985 	sjmp	00105$
      0034B4                        986 00133$:
      0034B4 BC 0D 02         [24]  987 	cjne	r4,#0x0d,00134$
      0034B7 80 35            [24]  988 	sjmp	00105$
      0034B9                        989 00134$:
      0034B9 C3               [12]  990 	clr	c
      0034BA EE               [12]  991 	mov	a,r6
      0034BB 94 09            [12]  992 	subb	a,#0x09
      0034BD EF               [12]  993 	mov	a,r7
      0034BE 64 80            [12]  994 	xrl	a,#0x80
      0034C0 94 80            [12]  995 	subb	a,#0x80
      0034C2 50 2A            [24]  996 	jnc	00105$
                                    997 ;	Utilities.c:84: putchar(ch);
      0034C4 8C 03            [24]  998 	mov	ar3,r4
      0034C6 7D 00            [12]  999 	mov	r5,#0x00
      0034C8 8B 82            [24] 1000 	mov	dpl, r3
      0034CA 8D 83            [24] 1001 	mov	dph, r5
      0034CC C0 07            [24] 1002 	push	ar7
      0034CE C0 06            [24] 1003 	push	ar6
      0034D0 C0 04            [24] 1004 	push	ar4
      0034D2 12 32 41         [24] 1005 	lcall	_putchar
      0034D5 D0 04            [24] 1006 	pop	ar4
      0034D7 D0 06            [24] 1007 	pop	ar6
      0034D9 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	Utilities.c:85: input[i] = ch;      //Append the input array with the received character
      0034DB EE               [12] 1010 	mov	a,r6
      0034DC 24 9D            [12] 1011 	add	a, #_get_user_buffer_size_input_10000_96
      0034DE F5 82            [12] 1012 	mov	dpl,a
      0034E0 EF               [12] 1013 	mov	a,r7
      0034E1 34 01            [12] 1014 	addc	a, #(_get_user_buffer_size_input_10000_96 >> 8)
      0034E3 F5 83            [12] 1015 	mov	dph,a
      0034E5 EC               [12] 1016 	mov	a,r4
      0034E6 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	Utilities.c:86: i++;
      0034E7 0E               [12] 1019 	inc	r6
      0034E8 BE 00 B7         [24] 1020 	cjne	r6,#0x00,00103$
      0034EB 0F               [12] 1021 	inc	r7
      0034EC 80 B4            [24] 1022 	sjmp	00103$
      0034EE                       1023 00105$:
                                   1024 ;	Utilities.c:88: input[i] = '\0';
      0034EE EE               [12] 1025 	mov	a,r6
      0034EF 24 9D            [12] 1026 	add	a, #_get_user_buffer_size_input_10000_96
      0034F1 F5 82            [12] 1027 	mov	dpl,a
      0034F3 EF               [12] 1028 	mov	a,r7
      0034F4 34 01            [12] 1029 	addc	a, #(_get_user_buffer_size_input_10000_96 >> 8)
      0034F6 F5 83            [12] 1030 	mov	dph,a
      0034F8 E4               [12] 1031 	clr	a
      0034F9 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	Utilities.c:89: output = hex_to_int(input); //Convert the char hex data to int
      0034FA 90 01 9D         [24] 1034 	mov	dptr,#_get_user_buffer_size_input_10000_96
      0034FD F5 F0            [12] 1035 	mov	b,a
      0034FF 12 32 E4         [24] 1036 	lcall	_hex_to_int
      003502 AE 82            [24] 1037 	mov	r6, dpl
      003504 AF 83            [24] 1038 	mov	r7, dph
                                   1039 ;	Utilities.c:90: printf_tiny("\n\r");
      003506 C0 07            [24] 1040 	push	ar7
      003508 C0 06            [24] 1041 	push	ar6
      00350A 74 51            [12] 1042 	mov	a,#___str_0
      00350C C0 E0            [24] 1043 	push	acc
      00350E 74 60            [12] 1044 	mov	a,#(___str_0 >> 8)
      003510 C0 E0            [24] 1045 	push	acc
      003512 12 50 EE         [24] 1046 	lcall	_printf_tiny
      003515 15 81            [12] 1047 	dec	sp
      003517 15 81            [12] 1048 	dec	sp
      003519 D0 06            [24] 1049 	pop	ar6
      00351B D0 07            [24] 1050 	pop	ar7
                                   1051 ;	Utilities.c:92: return output;
      00351D 8E 82            [24] 1052 	mov	dpl, r6
      00351F 8F 83            [24] 1053 	mov	dph, r7
                                   1054 ;	Utilities.c:93: }
      003521 22               [24] 1055 	ret
                                   1056 	.area CSEG    (CODE)
                                   1057 	.area CONST   (CODE)
                                   1058 	.area CONST   (CODE)
      006051                       1059 ___str_0:
      006051 0A                    1060 	.db 0x0a
      006052 0D                    1061 	.db 0x0d
      006053 00                    1062 	.db 0x00
                                   1063 	.area CSEG    (CODE)
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
