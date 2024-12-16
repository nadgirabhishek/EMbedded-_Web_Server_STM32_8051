                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module enc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _SPI_ReadByte
                                     13 	.globl _SPI_WriteByte
                                     14 	.globl _P5_7
                                     15 	.globl _P5_6
                                     16 	.globl _P5_5
                                     17 	.globl _P5_4
                                     18 	.globl _P5_3
                                     19 	.globl _P5_2
                                     20 	.globl _P5_1
                                     21 	.globl _P5_0
                                     22 	.globl _P4_7
                                     23 	.globl _P4_6
                                     24 	.globl _P4_5
                                     25 	.globl _P4_4
                                     26 	.globl _P4_3
                                     27 	.globl _P4_2
                                     28 	.globl _P4_1
                                     29 	.globl _P4_0
                                     30 	.globl _PX0L
                                     31 	.globl _PT0L
                                     32 	.globl _PX1L
                                     33 	.globl _PT1L
                                     34 	.globl _PSL
                                     35 	.globl _PT2L
                                     36 	.globl _PPCL
                                     37 	.globl _EC
                                     38 	.globl _CCF0
                                     39 	.globl _CCF1
                                     40 	.globl _CCF2
                                     41 	.globl _CCF3
                                     42 	.globl _CCF4
                                     43 	.globl _CR
                                     44 	.globl _CF
                                     45 	.globl _TF2
                                     46 	.globl _EXF2
                                     47 	.globl _RCLK
                                     48 	.globl _TCLK
                                     49 	.globl _EXEN2
                                     50 	.globl _TR2
                                     51 	.globl _C_T2
                                     52 	.globl _CP_RL2
                                     53 	.globl _T2CON_7
                                     54 	.globl _T2CON_6
                                     55 	.globl _T2CON_5
                                     56 	.globl _T2CON_4
                                     57 	.globl _T2CON_3
                                     58 	.globl _T2CON_2
                                     59 	.globl _T2CON_1
                                     60 	.globl _T2CON_0
                                     61 	.globl _PT2
                                     62 	.globl _ET2
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _PS
                                     72 	.globl _PT1
                                     73 	.globl _PX1
                                     74 	.globl _PT0
                                     75 	.globl _PX0
                                     76 	.globl _RD
                                     77 	.globl _WR
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _INT1
                                     81 	.globl _INT0
                                     82 	.globl _TXD
                                     83 	.globl _RXD
                                     84 	.globl _P3_7
                                     85 	.globl _P3_6
                                     86 	.globl _P3_5
                                     87 	.globl _P3_4
                                     88 	.globl _P3_3
                                     89 	.globl _P3_2
                                     90 	.globl _P3_1
                                     91 	.globl _P3_0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _SM0
                                    107 	.globl _SM1
                                    108 	.globl _SM2
                                    109 	.globl _REN
                                    110 	.globl _TB8
                                    111 	.globl _RB8
                                    112 	.globl _TI
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _EECON
                                    139 	.globl _KBF
                                    140 	.globl _KBE
                                    141 	.globl _KBLS
                                    142 	.globl _BRL
                                    143 	.globl _BDRCON
                                    144 	.globl _T2MOD
                                    145 	.globl _SPDAT
                                    146 	.globl _SPSTA
                                    147 	.globl _SPCON
                                    148 	.globl _SADEN
                                    149 	.globl _SADDR
                                    150 	.globl _WDTPRG
                                    151 	.globl _WDTRST
                                    152 	.globl _P5
                                    153 	.globl _P4
                                    154 	.globl _IPH1
                                    155 	.globl _IPL1
                                    156 	.globl _IPH0
                                    157 	.globl _IPL0
                                    158 	.globl _IEN1
                                    159 	.globl _IEN0
                                    160 	.globl _CMOD
                                    161 	.globl _CL
                                    162 	.globl _CH
                                    163 	.globl _CCON
                                    164 	.globl _CCAPM4
                                    165 	.globl _CCAPM3
                                    166 	.globl _CCAPM2
                                    167 	.globl _CCAPM1
                                    168 	.globl _CCAPM0
                                    169 	.globl _CCAP4L
                                    170 	.globl _CCAP3L
                                    171 	.globl _CCAP2L
                                    172 	.globl _CCAP1L
                                    173 	.globl _CCAP0L
                                    174 	.globl _CCAP4H
                                    175 	.globl _CCAP3H
                                    176 	.globl _CCAP2H
                                    177 	.globl _CCAP1H
                                    178 	.globl _CCAP0H
                                    179 	.globl _CKCON1
                                    180 	.globl _CKCON0
                                    181 	.globl _CKRL
                                    182 	.globl _AUXR1
                                    183 	.globl _AUXR
                                    184 	.globl _TH2
                                    185 	.globl _TL2
                                    186 	.globl _RCAP2H
                                    187 	.globl _RCAP2L
                                    188 	.globl _T2CON
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _PSW
                                    192 	.globl _IP
                                    193 	.globl _P3
                                    194 	.globl _IE
                                    195 	.globl _P2
                                    196 	.globl _SBUF
                                    197 	.globl _SCON
                                    198 	.globl _P1
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _PCON
                                    206 	.globl _DPH
                                    207 	.globl _DPL
                                    208 	.globl _SP
                                    209 	.globl _P0
                                    210 	.globl _enc_bit_clear_PARM_2
                                    211 	.globl _enc_bit_set_PARM_2
                                    212 	.globl _enc_eth_read_PARM_2
                                    213 	.globl _enc_phy_write_PARM_2
                                    214 	.globl _enc_mac_read_PARM_2
                                    215 	.globl _enc_buffer_read_PARM_3
                                    216 	.globl _enc_buffer_read_PARM_2
                                    217 	.globl _enc_buffer_write_PARM_3
                                    218 	.globl _enc_buffer_write_PARM_2
                                    219 	.globl _enc_buffer_init_PARM_2
                                    220 	.globl _enc_control_write_PARM_3
                                    221 	.globl _enc_control_write_PARM_2
                                    222 	.globl _enc_set_autoinc
                                    223 	.globl _enc_select_reg_bank
                                    224 	.globl _enc_control_write
                                    225 	.globl _enc_buffer_init
                                    226 	.globl _enc_buffer_write
                                    227 	.globl _enc_buffer_read
                                    228 	.globl _enc_mac_read
                                    229 	.globl _enc_busy_wait
                                    230 	.globl _enc_phy_read
                                    231 	.globl _enc_phy_write
                                    232 	.globl _enc_eth_read
                                    233 	.globl _enc_reset
                                    234 	.globl _enc_init
                                    235 	.globl _enc_bit_set
                                    236 	.globl _enc_bit_clear
                                    237 ;--------------------------------------------------------
                                    238 ; special function registers
                                    239 ;--------------------------------------------------------
                                    240 	.area RSEG    (ABS,DATA)
      000000                        241 	.org 0x0000
                           000080   242 _P0	=	0x0080
                           000081   243 _SP	=	0x0081
                           000082   244 _DPL	=	0x0082
                           000083   245 _DPH	=	0x0083
                           000087   246 _PCON	=	0x0087
                           000088   247 _TCON	=	0x0088
                           000089   248 _TMOD	=	0x0089
                           00008A   249 _TL0	=	0x008a
                           00008B   250 _TL1	=	0x008b
                           00008C   251 _TH0	=	0x008c
                           00008D   252 _TH1	=	0x008d
                           000090   253 _P1	=	0x0090
                           000098   254 _SCON	=	0x0098
                           000099   255 _SBUF	=	0x0099
                           0000A0   256 _P2	=	0x00a0
                           0000A8   257 _IE	=	0x00a8
                           0000B0   258 _P3	=	0x00b0
                           0000B8   259 _IP	=	0x00b8
                           0000D0   260 _PSW	=	0x00d0
                           0000E0   261 _ACC	=	0x00e0
                           0000F0   262 _B	=	0x00f0
                           0000C8   263 _T2CON	=	0x00c8
                           0000CA   264 _RCAP2L	=	0x00ca
                           0000CB   265 _RCAP2H	=	0x00cb
                           0000CC   266 _TL2	=	0x00cc
                           0000CD   267 _TH2	=	0x00cd
                           00008E   268 _AUXR	=	0x008e
                           0000A2   269 _AUXR1	=	0x00a2
                           000097   270 _CKRL	=	0x0097
                           00008F   271 _CKCON0	=	0x008f
                           0000AF   272 _CKCON1	=	0x00af
                           0000FA   273 _CCAP0H	=	0x00fa
                           0000FB   274 _CCAP1H	=	0x00fb
                           0000FC   275 _CCAP2H	=	0x00fc
                           0000FD   276 _CCAP3H	=	0x00fd
                           0000FE   277 _CCAP4H	=	0x00fe
                           0000EA   278 _CCAP0L	=	0x00ea
                           0000EB   279 _CCAP1L	=	0x00eb
                           0000EC   280 _CCAP2L	=	0x00ec
                           0000ED   281 _CCAP3L	=	0x00ed
                           0000EE   282 _CCAP4L	=	0x00ee
                           0000DA   283 _CCAPM0	=	0x00da
                           0000DB   284 _CCAPM1	=	0x00db
                           0000DC   285 _CCAPM2	=	0x00dc
                           0000DD   286 _CCAPM3	=	0x00dd
                           0000DE   287 _CCAPM4	=	0x00de
                           0000D8   288 _CCON	=	0x00d8
                           0000F9   289 _CH	=	0x00f9
                           0000E9   290 _CL	=	0x00e9
                           0000D9   291 _CMOD	=	0x00d9
                           0000A8   292 _IEN0	=	0x00a8
                           0000B1   293 _IEN1	=	0x00b1
                           0000B8   294 _IPL0	=	0x00b8
                           0000B7   295 _IPH0	=	0x00b7
                           0000B2   296 _IPL1	=	0x00b2
                           0000B3   297 _IPH1	=	0x00b3
                           0000C0   298 _P4	=	0x00c0
                           0000E8   299 _P5	=	0x00e8
                           0000A6   300 _WDTRST	=	0x00a6
                           0000A7   301 _WDTPRG	=	0x00a7
                           0000A9   302 _SADDR	=	0x00a9
                           0000B9   303 _SADEN	=	0x00b9
                           0000C3   304 _SPCON	=	0x00c3
                           0000C4   305 _SPSTA	=	0x00c4
                           0000C5   306 _SPDAT	=	0x00c5
                           0000C9   307 _T2MOD	=	0x00c9
                           00009B   308 _BDRCON	=	0x009b
                           00009A   309 _BRL	=	0x009a
                           00009C   310 _KBLS	=	0x009c
                           00009D   311 _KBE	=	0x009d
                           00009E   312 _KBF	=	0x009e
                           0000D2   313 _EECON	=	0x00d2
                                    314 ;--------------------------------------------------------
                                    315 ; special function bits
                                    316 ;--------------------------------------------------------
                                    317 	.area RSEG    (ABS,DATA)
      000000                        318 	.org 0x0000
                           000080   319 _P0_0	=	0x0080
                           000081   320 _P0_1	=	0x0081
                           000082   321 _P0_2	=	0x0082
                           000083   322 _P0_3	=	0x0083
                           000084   323 _P0_4	=	0x0084
                           000085   324 _P0_5	=	0x0085
                           000086   325 _P0_6	=	0x0086
                           000087   326 _P0_7	=	0x0087
                           000088   327 _IT0	=	0x0088
                           000089   328 _IE0	=	0x0089
                           00008A   329 _IT1	=	0x008a
                           00008B   330 _IE1	=	0x008b
                           00008C   331 _TR0	=	0x008c
                           00008D   332 _TF0	=	0x008d
                           00008E   333 _TR1	=	0x008e
                           00008F   334 _TF1	=	0x008f
                           000090   335 _P1_0	=	0x0090
                           000091   336 _P1_1	=	0x0091
                           000092   337 _P1_2	=	0x0092
                           000093   338 _P1_3	=	0x0093
                           000094   339 _P1_4	=	0x0094
                           000095   340 _P1_5	=	0x0095
                           000096   341 _P1_6	=	0x0096
                           000097   342 _P1_7	=	0x0097
                           000098   343 _RI	=	0x0098
                           000099   344 _TI	=	0x0099
                           00009A   345 _RB8	=	0x009a
                           00009B   346 _TB8	=	0x009b
                           00009C   347 _REN	=	0x009c
                           00009D   348 _SM2	=	0x009d
                           00009E   349 _SM1	=	0x009e
                           00009F   350 _SM0	=	0x009f
                           0000A0   351 _P2_0	=	0x00a0
                           0000A1   352 _P2_1	=	0x00a1
                           0000A2   353 _P2_2	=	0x00a2
                           0000A3   354 _P2_3	=	0x00a3
                           0000A4   355 _P2_4	=	0x00a4
                           0000A5   356 _P2_5	=	0x00a5
                           0000A6   357 _P2_6	=	0x00a6
                           0000A7   358 _P2_7	=	0x00a7
                           0000A8   359 _EX0	=	0x00a8
                           0000A9   360 _ET0	=	0x00a9
                           0000AA   361 _EX1	=	0x00aa
                           0000AB   362 _ET1	=	0x00ab
                           0000AC   363 _ES	=	0x00ac
                           0000AF   364 _EA	=	0x00af
                           0000B0   365 _P3_0	=	0x00b0
                           0000B1   366 _P3_1	=	0x00b1
                           0000B2   367 _P3_2	=	0x00b2
                           0000B3   368 _P3_3	=	0x00b3
                           0000B4   369 _P3_4	=	0x00b4
                           0000B5   370 _P3_5	=	0x00b5
                           0000B6   371 _P3_6	=	0x00b6
                           0000B7   372 _P3_7	=	0x00b7
                           0000B0   373 _RXD	=	0x00b0
                           0000B1   374 _TXD	=	0x00b1
                           0000B2   375 _INT0	=	0x00b2
                           0000B3   376 _INT1	=	0x00b3
                           0000B4   377 _T0	=	0x00b4
                           0000B5   378 _T1	=	0x00b5
                           0000B6   379 _WR	=	0x00b6
                           0000B7   380 _RD	=	0x00b7
                           0000B8   381 _PX0	=	0x00b8
                           0000B9   382 _PT0	=	0x00b9
                           0000BA   383 _PX1	=	0x00ba
                           0000BB   384 _PT1	=	0x00bb
                           0000BC   385 _PS	=	0x00bc
                           0000D0   386 _P	=	0x00d0
                           0000D1   387 _F1	=	0x00d1
                           0000D2   388 _OV	=	0x00d2
                           0000D3   389 _RS0	=	0x00d3
                           0000D4   390 _RS1	=	0x00d4
                           0000D5   391 _F0	=	0x00d5
                           0000D6   392 _AC	=	0x00d6
                           0000D7   393 _CY	=	0x00d7
                           0000AD   394 _ET2	=	0x00ad
                           0000BD   395 _PT2	=	0x00bd
                           0000C8   396 _T2CON_0	=	0x00c8
                           0000C9   397 _T2CON_1	=	0x00c9
                           0000CA   398 _T2CON_2	=	0x00ca
                           0000CB   399 _T2CON_3	=	0x00cb
                           0000CC   400 _T2CON_4	=	0x00cc
                           0000CD   401 _T2CON_5	=	0x00cd
                           0000CE   402 _T2CON_6	=	0x00ce
                           0000CF   403 _T2CON_7	=	0x00cf
                           0000C8   404 _CP_RL2	=	0x00c8
                           0000C9   405 _C_T2	=	0x00c9
                           0000CA   406 _TR2	=	0x00ca
                           0000CB   407 _EXEN2	=	0x00cb
                           0000CC   408 _TCLK	=	0x00cc
                           0000CD   409 _RCLK	=	0x00cd
                           0000CE   410 _EXF2	=	0x00ce
                           0000CF   411 _TF2	=	0x00cf
                           0000DF   412 _CF	=	0x00df
                           0000DE   413 _CR	=	0x00de
                           0000DC   414 _CCF4	=	0x00dc
                           0000DB   415 _CCF3	=	0x00db
                           0000DA   416 _CCF2	=	0x00da
                           0000D9   417 _CCF1	=	0x00d9
                           0000D8   418 _CCF0	=	0x00d8
                           0000AE   419 _EC	=	0x00ae
                           0000BE   420 _PPCL	=	0x00be
                           0000BD   421 _PT2L	=	0x00bd
                           0000BC   422 _PSL	=	0x00bc
                           0000BB   423 _PT1L	=	0x00bb
                           0000BA   424 _PX1L	=	0x00ba
                           0000B9   425 _PT0L	=	0x00b9
                           0000B8   426 _PX0L	=	0x00b8
                           0000C0   427 _P4_0	=	0x00c0
                           0000C1   428 _P4_1	=	0x00c1
                           0000C2   429 _P4_2	=	0x00c2
                           0000C3   430 _P4_3	=	0x00c3
                           0000C4   431 _P4_4	=	0x00c4
                           0000C5   432 _P4_5	=	0x00c5
                           0000C6   433 _P4_6	=	0x00c6
                           0000C7   434 _P4_7	=	0x00c7
                           0000E8   435 _P5_0	=	0x00e8
                           0000E9   436 _P5_1	=	0x00e9
                           0000EA   437 _P5_2	=	0x00ea
                           0000EB   438 _P5_3	=	0x00eb
                           0000EC   439 _P5_4	=	0x00ec
                           0000ED   440 _P5_5	=	0x00ed
                           0000EE   441 _P5_6	=	0x00ee
                           0000EF   442 _P5_7	=	0x00ef
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable register banks
                                    445 ;--------------------------------------------------------
                                    446 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        447 	.ds 8
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
      000008                        452 _enc_init_sloc0_1_0:
      000008                        453 	.ds 3
      00000B                        454 _enc_init_sloc1_1_0:
      00000B                        455 	.ds 3
      00000E                        456 _enc_init_sloc2_1_0:
      00000E                        457 	.ds 3
      000011                        458 _enc_init_sloc3_1_0:
      000011                        459 	.ds 3
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram
                                    462 ;--------------------------------------------------------
                                    463 ;--------------------------------------------------------
                                    464 ; indirectly addressable internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area ISEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; absolute internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area IABS    (ABS,DATA)
                                    471 	.area IABS    (ABS,DATA)
                                    472 ;--------------------------------------------------------
                                    473 ; bit data
                                    474 ;--------------------------------------------------------
                                    475 	.area BSEG    (BIT)
                                    476 ;--------------------------------------------------------
                                    477 ; paged external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area PSEG    (PAG,XDATA)
                                    480 ;--------------------------------------------------------
                                    481 ; uninitialized external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XSEG    (XDATA)
      00014E                        484 _enc_select_reg_bank_bank_10000_85:
      00014E                        485 	.ds 1
      00014F                        486 _enc_select_reg_bank_data_10001_87:
      00014F                        487 	.ds 1
      000150                        488 _enc_control_write_PARM_2:
      000150                        489 	.ds 1
      000151                        490 _enc_control_write_PARM_3:
      000151                        491 	.ds 1
      000152                        492 _enc_control_write_reg_bank_10000_90:
      000152                        493 	.ds 2
      000154                        494 _enc_buffer_init_PARM_2:
      000154                        495 	.ds 2
      000156                        496 _enc_buffer_init_start_address_10000_92:
      000156                        497 	.ds 2
      000158                        498 _enc_buffer_write_PARM_2:
      000158                        499 	.ds 2
      00015A                        500 _enc_buffer_write_PARM_3:
      00015A                        501 	.ds 3
      00015D                        502 _enc_buffer_write_num_bytes_10000_95:
      00015D                        503 	.ds 2
      00015F                        504 _enc_buffer_read_PARM_2:
      00015F                        505 	.ds 2
      000161                        506 _enc_buffer_read_PARM_3:
      000161                        507 	.ds 3
      000164                        508 _enc_buffer_read_num_bytes_10000_105:
      000164                        509 	.ds 2
      000166                        510 _enc_mac_read_PARM_2:
      000166                        511 	.ds 1
      000167                        512 _enc_mac_read_addr_10000_115:
      000167                        513 	.ds 1
      000168                        514 _enc_busy_wait_data_10000_120:
      000168                        515 	.ds 1
      000169                        516 _enc_phy_read_addr_10000_122:
      000169                        517 	.ds 1
      00016A                        518 _enc_phy_write_PARM_2:
      00016A                        519 	.ds 2
      00016C                        520 _enc_phy_write_addr_10000_125:
      00016C                        521 	.ds 1
      00016D                        522 _enc_eth_read_PARM_2:
      00016D                        523 	.ds 1
      00016E                        524 _enc_eth_read_addr_10000_127:
      00016E                        525 	.ds 1
      00016F                        526 _enc_init_mac_10000_133:
      00016F                        527 	.ds 3
      000172                        528 _enc_bit_set_PARM_2:
      000172                        529 	.ds 1
      000173                        530 _enc_bit_set_addr_10000_139:
      000173                        531 	.ds 1
      000174                        532 _enc_bit_clear_PARM_2:
      000174                        533 	.ds 1
      000175                        534 _enc_bit_clear_addr_10000_141:
      000175                        535 	.ds 1
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; initialized external ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT0 (CODE)
                                    546 	.area GSINIT1 (CODE)
                                    547 	.area GSINIT2 (CODE)
                                    548 	.area GSINIT3 (CODE)
                                    549 	.area GSINIT4 (CODE)
                                    550 	.area GSINIT5 (CODE)
                                    551 	.area GSINIT  (CODE)
                                    552 	.area GSFINAL (CODE)
                                    553 	.area CSEG    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; global & static initialisations
                                    556 ;--------------------------------------------------------
                                    557 	.area HOME    (CODE)
                                    558 	.area GSINIT  (CODE)
                                    559 	.area GSFINAL (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 ;--------------------------------------------------------
                                    562 ; Home
                                    563 ;--------------------------------------------------------
                                    564 	.area HOME    (CODE)
                                    565 	.area HOME    (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; code
                                    568 ;--------------------------------------------------------
                                    569 	.area CSEG    (CODE)
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'enc_set_autoinc'
                                    572 ;------------------------------------------------------------
                                    573 ;data                      Allocated with name '_enc_set_autoinc_data_10001_84'
                                    574 ;------------------------------------------------------------
                                    575 ;	enc.c:14: void enc_set_autoinc(void) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function enc_set_autoinc
                                    578 ;	-----------------------------------------
      0025B3                        579 _enc_set_autoinc:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	enc.c:15: CS_LOW;
                                    589 ;	assignBit
      0025B3 C2 91            [12]  590 	clr	_P1_1
                                    591 ;	enc.c:16: SPI_WriteByte(ENC_ECON2);
      0025B5 75 82 1E         [24]  592 	mov	dpl, #0x1e
      0025B8 12 31 41         [24]  593 	lcall	_SPI_WriteByte
                                    594 ;	enc.c:17: uint8_t data = SPI_ReadByte(); // Read the data from the SPI slave
      0025BB 12 31 50         [24]  595 	lcall	_SPI_ReadByte
      0025BE AF 82            [24]  596 	mov	r7, dpl
                                    597 ;	enc.c:18: CS_HIGH;
                                    598 ;	assignBit
      0025C0 D2 91            [12]  599 	setb	_P1_1
                                    600 ;	enc.c:19: data |= (1 << 7); // Set bit 7 of the data to 1
      0025C2 43 07 80         [24]  601 	orl	ar7,#0x80
                                    602 ;	enc.c:20: CS_LOW;
                                    603 ;	assignBit
      0025C5 C2 91            [12]  604 	clr	_P1_1
                                    605 ;	enc.c:21: SPI_WriteByte(SPI_WRITE_ECON2);      // Write ECON2 address
      0025C7 75 82 5E         [24]  606 	mov	dpl, #0x5e
      0025CA C0 07            [24]  607 	push	ar7
      0025CC 12 31 41         [24]  608 	lcall	_SPI_WriteByte
      0025CF D0 07            [24]  609 	pop	ar7
                                    610 ;	enc.c:22: SPI_WriteByte(data);      // Write the modified data with MSB set
      0025D1 8F 82            [24]  611 	mov	dpl, r7
      0025D3 12 31 41         [24]  612 	lcall	_SPI_WriteByte
                                    613 ;	enc.c:23: CS_HIGH;
                                    614 ;	assignBit
      0025D6 D2 91            [12]  615 	setb	_P1_1
                                    616 ;	enc.c:24: }
      0025D8 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'enc_select_reg_bank'
                                    620 ;------------------------------------------------------------
                                    621 ;bank                      Allocated with name '_enc_select_reg_bank_bank_10000_85'
                                    622 ;data                      Allocated with name '_enc_select_reg_bank_data_10001_87'
                                    623 ;i                         Allocated with name '_enc_select_reg_bank_i_20001_89'
                                    624 ;------------------------------------------------------------
                                    625 ;	enc.c:25: void enc_select_reg_bank(uint8_t bank) {
                                    626 ;	-----------------------------------------
                                    627 ;	 function enc_select_reg_bank
                                    628 ;	-----------------------------------------
      0025D9                        629 _enc_select_reg_bank:
      0025D9 E5 82            [12]  630 	mov	a,dpl
      0025DB 90 01 4E         [24]  631 	mov	dptr,#_enc_select_reg_bank_bank_10000_85
      0025DE F0               [24]  632 	movx	@dptr,a
                                    633 ;	enc.c:26: CS_LOW;
                                    634 ;	assignBit
      0025DF C2 91            [12]  635 	clr	_P1_1
                                    636 ;	enc.c:27: SPI_WriteByte(ENC_ECON1); // Send the address
      0025E1 75 82 1F         [24]  637 	mov	dpl, #0x1f
      0025E4 12 31 41         [24]  638 	lcall	_SPI_WriteByte
                                    639 ;	enc.c:28: uint8_t data = SPI_ReadByte(); // Read the data
      0025E7 12 31 50         [24]  640 	lcall	_SPI_ReadByte
      0025EA AF 82            [24]  641 	mov	r7, dpl
                                    642 ;	enc.c:29: CS_HIGH;
                                    643 ;	assignBit
      0025EC D2 91            [12]  644 	setb	_P1_1
                                    645 ;	enc.c:32: data &= ~0x03; // Clear the last two bits
      0025EE 53 07 FC         [24]  646 	anl	ar7,#0xfc
      0025F1 90 01 4F         [24]  647 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      0025F4 EF               [12]  648 	mov	a,r7
      0025F5 F0               [24]  649 	movx	@dptr,a
                                    650 ;	enc.c:33: switch (bank) {
      0025F6 90 01 4E         [24]  651 	mov	dptr,#_enc_select_reg_bank_bank_10000_85
      0025F9 E0               [24]  652 	movx	a,@dptr
      0025FA FE               [12]  653 	mov  r6,a
      0025FB 24 FC            [12]  654 	add	a,#0xff - 0x03
      0025FD 40 30            [24]  655 	jc	00105$
      0025FF EE               [12]  656 	mov	a,r6
      002600 2E               [12]  657 	add	a,r6
                                    658 ;	enc.c:34: case 0:
      002601 90 26 05         [24]  659 	mov	dptr,#00133$
      002604 73               [24]  660 	jmp	@a+dptr
      002605                        661 00133$:
      002605 80 06            [24]  662 	sjmp	00101$
      002607 80 0B            [24]  663 	sjmp	00102$
      002609 80 12            [24]  664 	sjmp	00103$
      00260B 80 19            [24]  665 	sjmp	00104$
      00260D                        666 00101$:
                                    667 ;	enc.c:35: data |= 0x00; // Last two bits: 00
      00260D 90 01 4F         [24]  668 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      002610 EF               [12]  669 	mov	a,r7
      002611 F0               [24]  670 	movx	@dptr,a
                                    671 ;	enc.c:36: break;
                                    672 ;	enc.c:37: case 1:
      002612 80 30            [24]  673 	sjmp	00115$
      002614                        674 00102$:
                                    675 ;	enc.c:38: data |= 0x01; // Last two bits: 01
      002614 90 01 4F         [24]  676 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      002617 74 01            [12]  677 	mov	a,#0x01
      002619 4F               [12]  678 	orl	a,r7
      00261A F0               [24]  679 	movx	@dptr,a
                                    680 ;	enc.c:39: break;
                                    681 ;	enc.c:40: case 2:
      00261B 80 27            [24]  682 	sjmp	00115$
      00261D                        683 00103$:
                                    684 ;	enc.c:41: data |= 0x02; // Last two bits: 10
      00261D 90 01 4F         [24]  685 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      002620 74 02            [12]  686 	mov	a,#0x02
      002622 4F               [12]  687 	orl	a,r7
      002623 F0               [24]  688 	movx	@dptr,a
                                    689 ;	enc.c:42: break;
                                    690 ;	enc.c:43: case 3:
      002624 80 1E            [24]  691 	sjmp	00115$
      002626                        692 00104$:
                                    693 ;	enc.c:44: data |= 0x03; // Last two bits: 11
      002626 90 01 4F         [24]  694 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      002629 74 03            [12]  695 	mov	a,#0x03
      00262B 4F               [12]  696 	orl	a,r7
      00262C F0               [24]  697 	movx	@dptr,a
                                    698 ;	enc.c:45: break;
                                    699 ;	enc.c:46: default:
      00262D 80 15            [24]  700 	sjmp	00115$
      00262F                        701 00105$:
                                    702 ;	enc.c:47: printf("wrong bank");
      00262F 74 74            [12]  703 	mov	a,#___str_0
      002631 C0 E0            [24]  704 	push	acc
      002633 74 5D            [12]  705 	mov	a,#(___str_0 >> 8)
      002635 C0 E0            [24]  706 	push	acc
      002637 74 80            [12]  707 	mov	a,#0x80
      002639 C0 E0            [24]  708 	push	acc
      00263B 12 52 65         [24]  709 	lcall	_printf
      00263E 15 81            [12]  710 	dec	sp
      002640 15 81            [12]  711 	dec	sp
      002642 15 81            [12]  712 	dec	sp
                                    713 ;	enc.c:50: for (int i = 0; i < 16; i++)
      002644                        714 00115$:
      002644 7F 00            [12]  715 	mov	r7,#0x00
      002646                        716 00109$:
      002646 BF 10 00         [24]  717 	cjne	r7,#0x10,00134$
      002649                        718 00134$:
      002649 50 03            [24]  719 	jnc	00107$
      00264B 0F               [12]  720 	inc	r7
      00264C 80 F8            [24]  721 	sjmp	00109$
      00264E                        722 00107$:
                                    723 ;	enc.c:53: CS_LOW;
                                    724 ;	assignBit
      00264E C2 91            [12]  725 	clr	_P1_1
                                    726 ;	enc.c:54: SPI_WriteByte(SPI_WRITE_ECON1);
      002650 75 82 5F         [24]  727 	mov	dpl, #0x5f
      002653 12 31 41         [24]  728 	lcall	_SPI_WriteByte
                                    729 ;	enc.c:55: SPI_WriteByte(data); // Send the modified data
      002656 90 01 4F         [24]  730 	mov	dptr,#_enc_select_reg_bank_data_10001_87
      002659 E0               [24]  731 	movx	a,@dptr
      00265A F5 82            [12]  732 	mov	dpl,a
      00265C 12 31 41         [24]  733 	lcall	_SPI_WriteByte
                                    734 ;	enc.c:56: CS_HIGH;
                                    735 ;	assignBit
      00265F D2 91            [12]  736 	setb	_P1_1
                                    737 ;	enc.c:57: }
      002661 22               [24]  738 	ret
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'enc_control_write'
                                    741 ;------------------------------------------------------------
                                    742 ;addr                      Allocated with name '_enc_control_write_PARM_2'
                                    743 ;data                      Allocated with name '_enc_control_write_PARM_3'
                                    744 ;reg_bank                  Allocated with name '_enc_control_write_reg_bank_10000_90'
                                    745 ;opcode                    Allocated with name '_enc_control_write_opcode_10000_91'
                                    746 ;------------------------------------------------------------
                                    747 ;	enc.c:59: void enc_control_write(int reg_bank, uint8_t addr, uint8_t data) {
                                    748 ;	-----------------------------------------
                                    749 ;	 function enc_control_write
                                    750 ;	-----------------------------------------
      002662                        751 _enc_control_write:
      002662 AF 83            [24]  752 	mov	r7,dph
      002664 E5 82            [12]  753 	mov	a,dpl
      002666 90 01 52         [24]  754 	mov	dptr,#_enc_control_write_reg_bank_10000_90
      002669 F0               [24]  755 	movx	@dptr,a
      00266A EF               [12]  756 	mov	a,r7
      00266B A3               [24]  757 	inc	dptr
      00266C F0               [24]  758 	movx	@dptr,a
                                    759 ;	enc.c:61: addr = addr + opcode;
      00266D 90 01 50         [24]  760 	mov	dptr,#_enc_control_write_PARM_2
      002670 E0               [24]  761 	movx	a,@dptr
      002671 24 40            [12]  762 	add	a, #0x40
      002673 F0               [24]  763 	movx	@dptr,a
                                    764 ;	enc.c:62: enc_select_reg_bank(reg_bank);
      002674 90 01 52         [24]  765 	mov	dptr,#_enc_control_write_reg_bank_10000_90
      002677 E0               [24]  766 	movx	a,@dptr
      002678 FE               [12]  767 	mov	r6,a
      002679 A3               [24]  768 	inc	dptr
      00267A E0               [24]  769 	movx	a,@dptr
      00267B 8E 82            [24]  770 	mov	dpl, r6
      00267D 12 25 D9         [24]  771 	lcall	_enc_select_reg_bank
                                    772 ;	enc.c:63: CS_LOW;
                                    773 ;	assignBit
      002680 C2 91            [12]  774 	clr	_P1_1
                                    775 ;	enc.c:64: SPI_WriteByte(addr);
      002682 90 01 50         [24]  776 	mov	dptr,#_enc_control_write_PARM_2
      002685 E0               [24]  777 	movx	a,@dptr
      002686 F5 82            [12]  778 	mov	dpl,a
      002688 12 31 41         [24]  779 	lcall	_SPI_WriteByte
                                    780 ;	enc.c:65: SPI_WriteByte(data);
      00268B 90 01 51         [24]  781 	mov	dptr,#_enc_control_write_PARM_3
      00268E E0               [24]  782 	movx	a,@dptr
      00268F F5 82            [12]  783 	mov	dpl,a
      002691 12 31 41         [24]  784 	lcall	_SPI_WriteByte
                                    785 ;	enc.c:66: CS_HIGH;
                                    786 ;	assignBit
      002694 D2 91            [12]  787 	setb	_P1_1
                                    788 ;	enc.c:67: }
      002696 22               [24]  789 	ret
                                    790 ;------------------------------------------------------------
                                    791 ;Allocation info for local variables in function 'enc_buffer_init'
                                    792 ;------------------------------------------------------------
                                    793 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                    794 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_92'
                                    795 ;------------------------------------------------------------
                                    796 ;	enc.c:69: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                    797 ;	-----------------------------------------
                                    798 ;	 function enc_buffer_init
                                    799 ;	-----------------------------------------
      002697                        800 _enc_buffer_init:
      002697 AF 83            [24]  801 	mov	r7,dph
      002699 E5 82            [12]  802 	mov	a,dpl
      00269B 90 01 56         [24]  803 	mov	dptr,#_enc_buffer_init_start_address_10000_92
      00269E F0               [24]  804 	movx	@dptr,a
      00269F EF               [12]  805 	mov	a,r7
      0026A0 A3               [24]  806 	inc	dptr
      0026A1 F0               [24]  807 	movx	@dptr,a
                                    808 ;	enc.c:71: if (start_address > TX_BUFFER_END || end_address > TX_BUFFER_END) {
      0026A2 90 01 56         [24]  809 	mov	dptr,#_enc_buffer_init_start_address_10000_92
      0026A5 E0               [24]  810 	movx	a,@dptr
      0026A6 FE               [12]  811 	mov	r6,a
      0026A7 A3               [24]  812 	inc	dptr
      0026A8 E0               [24]  813 	movx	a,@dptr
      0026A9 FF               [12]  814 	mov	r7,a
      0026AA C3               [12]  815 	clr	c
      0026AB 74 FF            [12]  816 	mov	a,#0xff
      0026AD 9E               [12]  817 	subb	a,r6
      0026AE 74 1F            [12]  818 	mov	a,#0x1f
      0026B0 9F               [12]  819 	subb	a,r7
      0026B1 40 15            [24]  820 	jc	00101$
      0026B3 90 01 54         [24]  821 	mov	dptr,#_enc_buffer_init_PARM_2
      0026B6 E0               [24]  822 	movx	a,@dptr
      0026B7 FC               [12]  823 	mov	r4,a
      0026B8 A3               [24]  824 	inc	dptr
      0026B9 E0               [24]  825 	movx	a,@dptr
      0026BA FD               [12]  826 	mov	r5,a
      0026BB 8C 02            [24]  827 	mov	ar2,r4
      0026BD 8D 03            [24]  828 	mov	ar3,r5
      0026BF C3               [12]  829 	clr	c
      0026C0 74 FF            [12]  830 	mov	a,#0xff
      0026C2 9A               [12]  831 	subb	a,r2
      0026C3 74 1F            [12]  832 	mov	a,#0x1f
      0026C5 9B               [12]  833 	subb	a,r3
      0026C6 50 2A            [24]  834 	jnc	00102$
      0026C8                        835 00101$:
                                    836 ;	enc.c:72: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      0026C8 90 01 54         [24]  837 	mov	dptr,#_enc_buffer_init_PARM_2
      0026CB E0               [24]  838 	movx	a,@dptr
      0026CC C0 E0            [24]  839 	push	acc
      0026CE A3               [24]  840 	inc	dptr
      0026CF E0               [24]  841 	movx	a,@dptr
      0026D0 C0 E0            [24]  842 	push	acc
      0026D2 90 01 56         [24]  843 	mov	dptr,#_enc_buffer_init_start_address_10000_92
      0026D5 E0               [24]  844 	movx	a,@dptr
      0026D6 C0 E0            [24]  845 	push	acc
      0026D8 A3               [24]  846 	inc	dptr
      0026D9 E0               [24]  847 	movx	a,@dptr
      0026DA C0 E0            [24]  848 	push	acc
      0026DC 74 7F            [12]  849 	mov	a,#___str_1
      0026DE C0 E0            [24]  850 	push	acc
      0026E0 74 5D            [12]  851 	mov	a,#(___str_1 >> 8)
      0026E2 C0 E0            [24]  852 	push	acc
      0026E4 74 80            [12]  853 	mov	a,#0x80
      0026E6 C0 E0            [24]  854 	push	acc
      0026E8 12 52 65         [24]  855 	lcall	_printf
      0026EB E5 81            [12]  856 	mov	a,sp
      0026ED 24 F9            [12]  857 	add	a,#0xf9
      0026EF F5 81            [12]  858 	mov	sp,a
                                    859 ;	enc.c:74: return;
      0026F1 22               [24]  860 	ret
      0026F2                        861 00102$:
                                    862 ;	enc.c:77: start_address &= ~1;  // Align to even address
      0026F2 53 06 FE         [24]  863 	anl	ar6,#0xfe
      0026F5 90 01 56         [24]  864 	mov	dptr,#_enc_buffer_init_start_address_10000_92
      0026F8 EE               [12]  865 	mov	a,r6
      0026F9 F0               [24]  866 	movx	@dptr,a
      0026FA EF               [12]  867 	mov	a,r7
      0026FB A3               [24]  868 	inc	dptr
      0026FC F0               [24]  869 	movx	@dptr,a
                                    870 ;	enc.c:79: enc_control_write(0, ENC_ERDPTL, (uint8_t) (start_address & 0xFF)); // ERDPTL
      0026FD 90 01 56         [24]  871 	mov	dptr,#_enc_buffer_init_start_address_10000_92
      002700 E0               [24]  872 	movx	a,@dptr
      002701 FE               [12]  873 	mov	r6,a
      002702 A3               [24]  874 	inc	dptr
      002703 E0               [24]  875 	movx	a,@dptr
      002704 FF               [12]  876 	mov	r7,a
      002705 8E 03            [24]  877 	mov	ar3,r6
      002707 90 01 50         [24]  878 	mov	dptr,#_enc_control_write_PARM_2
      00270A E4               [12]  879 	clr	a
      00270B F0               [24]  880 	movx	@dptr,a
      00270C 90 01 51         [24]  881 	mov	dptr,#_enc_control_write_PARM_3
      00270F EB               [12]  882 	mov	a,r3
      002710 F0               [24]  883 	movx	@dptr,a
      002711 90 00 00         [24]  884 	mov	dptr,#0x0000
      002714 C0 07            [24]  885 	push	ar7
      002716 C0 06            [24]  886 	push	ar6
      002718 C0 05            [24]  887 	push	ar5
      00271A C0 04            [24]  888 	push	ar4
      00271C C0 03            [24]  889 	push	ar3
      00271E 12 26 62         [24]  890 	lcall	_enc_control_write
      002721 D0 03            [24]  891 	pop	ar3
      002723 D0 04            [24]  892 	pop	ar4
      002725 D0 05            [24]  893 	pop	ar5
      002727 D0 06            [24]  894 	pop	ar6
      002729 D0 07            [24]  895 	pop	ar7
                                    896 ;	enc.c:80: enc_control_write(0, ENC_ERDPTH, (uint8_t) (start_address >> 8)); // ERDPTH
      00272B 8F 02            [24]  897 	mov	ar2,r7
      00272D 90 01 50         [24]  898 	mov	dptr,#_enc_control_write_PARM_2
      002730 74 01            [12]  899 	mov	a,#0x01
      002732 F0               [24]  900 	movx	@dptr,a
      002733 90 01 51         [24]  901 	mov	dptr,#_enc_control_write_PARM_3
      002736 EA               [12]  902 	mov	a,r2
      002737 F0               [24]  903 	movx	@dptr,a
      002738 90 00 00         [24]  904 	mov	dptr,#0x0000
      00273B C0 07            [24]  905 	push	ar7
      00273D C0 06            [24]  906 	push	ar6
      00273F C0 05            [24]  907 	push	ar5
      002741 C0 04            [24]  908 	push	ar4
      002743 C0 03            [24]  909 	push	ar3
      002745 C0 02            [24]  910 	push	ar2
      002747 12 26 62         [24]  911 	lcall	_enc_control_write
      00274A D0 02            [24]  912 	pop	ar2
      00274C D0 03            [24]  913 	pop	ar3
                                    914 ;	enc.c:81: enc_control_write(0, ENC_ERXSTL, (uint8_t) (start_address & 0xFF)); // ERXSTL
      00274E 90 01 50         [24]  915 	mov	dptr,#_enc_control_write_PARM_2
      002751 74 08            [12]  916 	mov	a,#0x08
      002753 F0               [24]  917 	movx	@dptr,a
      002754 90 01 51         [24]  918 	mov	dptr,#_enc_control_write_PARM_3
      002757 EB               [12]  919 	mov	a,r3
      002758 F0               [24]  920 	movx	@dptr,a
      002759 90 00 00         [24]  921 	mov	dptr,#0x0000
      00275C C0 03            [24]  922 	push	ar3
      00275E C0 02            [24]  923 	push	ar2
      002760 12 26 62         [24]  924 	lcall	_enc_control_write
      002763 D0 02            [24]  925 	pop	ar2
                                    926 ;	enc.c:82: enc_control_write(0, ENC_ERXSTH, (uint8_t) (start_address >> 8)); // ERXSTH
      002765 90 01 50         [24]  927 	mov	dptr,#_enc_control_write_PARM_2
      002768 74 09            [12]  928 	mov	a,#0x09
      00276A F0               [24]  929 	movx	@dptr,a
      00276B 90 01 51         [24]  930 	mov	dptr,#_enc_control_write_PARM_3
      00276E EA               [12]  931 	mov	a,r2
      00276F F0               [24]  932 	movx	@dptr,a
      002770 90 00 00         [24]  933 	mov	dptr,#0x0000
      002773 C0 02            [24]  934 	push	ar2
      002775 12 26 62         [24]  935 	lcall	_enc_control_write
      002778 D0 02            [24]  936 	pop	ar2
      00277A D0 03            [24]  937 	pop	ar3
      00277C D0 04            [24]  938 	pop	ar4
                                    939 ;	enc.c:83: enc_control_write(0, ENC_ERXNDL, (uint8_t) (end_address & 0xFF)); // ERXNDL
      00277E 8C 01            [24]  940 	mov	ar1,r4
      002780 90 01 50         [24]  941 	mov	dptr,#_enc_control_write_PARM_2
      002783 74 0A            [12]  942 	mov	a,#0x0a
      002785 F0               [24]  943 	movx	@dptr,a
      002786 90 01 51         [24]  944 	mov	dptr,#_enc_control_write_PARM_3
      002789 E9               [12]  945 	mov	a,r1
      00278A F0               [24]  946 	movx	@dptr,a
      00278B 90 00 00         [24]  947 	mov	dptr,#0x0000
      00278E C0 04            [24]  948 	push	ar4
      002790 C0 03            [24]  949 	push	ar3
      002792 C0 02            [24]  950 	push	ar2
      002794 12 26 62         [24]  951 	lcall	_enc_control_write
      002797 D0 02            [24]  952 	pop	ar2
      002799 D0 03            [24]  953 	pop	ar3
      00279B D0 04            [24]  954 	pop	ar4
      00279D D0 05            [24]  955 	pop	ar5
                                    956 ;	enc.c:84: enc_control_write(0, ENC_ERXNDH, (uint8_t) (end_address >> 8)); // ERXNDH
      00279F 8D 01            [24]  957 	mov	ar1,r5
      0027A1 90 01 50         [24]  958 	mov	dptr,#_enc_control_write_PARM_2
      0027A4 74 0B            [12]  959 	mov	a,#0x0b
      0027A6 F0               [24]  960 	movx	@dptr,a
      0027A7 90 01 51         [24]  961 	mov	dptr,#_enc_control_write_PARM_3
      0027AA E9               [12]  962 	mov	a,r1
      0027AB F0               [24]  963 	movx	@dptr,a
      0027AC 90 00 00         [24]  964 	mov	dptr,#0x0000
      0027AF C0 05            [24]  965 	push	ar5
      0027B1 C0 04            [24]  966 	push	ar4
      0027B3 C0 03            [24]  967 	push	ar3
      0027B5 C0 02            [24]  968 	push	ar2
      0027B7 12 26 62         [24]  969 	lcall	_enc_control_write
      0027BA D0 02            [24]  970 	pop	ar2
      0027BC D0 03            [24]  971 	pop	ar3
                                    972 ;	enc.c:85: enc_control_write(0, ENC_ERXRDPTL, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      0027BE 90 01 50         [24]  973 	mov	dptr,#_enc_control_write_PARM_2
      0027C1 74 0C            [12]  974 	mov	a,#0x0c
      0027C3 F0               [24]  975 	movx	@dptr,a
      0027C4 90 01 51         [24]  976 	mov	dptr,#_enc_control_write_PARM_3
      0027C7 EB               [12]  977 	mov	a,r3
      0027C8 F0               [24]  978 	movx	@dptr,a
      0027C9 90 00 00         [24]  979 	mov	dptr,#0x0000
      0027CC C0 02            [24]  980 	push	ar2
      0027CE 12 26 62         [24]  981 	lcall	_enc_control_write
      0027D1 D0 02            [24]  982 	pop	ar2
                                    983 ;	enc.c:86: enc_control_write(0, ENC_ERXRDPTH, (uint8_t) (start_address >> 8)); // ERXRDPTH
      0027D3 90 01 50         [24]  984 	mov	dptr,#_enc_control_write_PARM_2
      0027D6 74 0D            [12]  985 	mov	a,#0x0d
      0027D8 F0               [24]  986 	movx	@dptr,a
      0027D9 90 01 51         [24]  987 	mov	dptr,#_enc_control_write_PARM_3
      0027DC EA               [12]  988 	mov	a,r2
      0027DD F0               [24]  989 	movx	@dptr,a
      0027DE 90 00 00         [24]  990 	mov	dptr,#0x0000
      0027E1 12 26 62         [24]  991 	lcall	_enc_control_write
      0027E4 D0 04            [24]  992 	pop	ar4
      0027E6 D0 05            [24]  993 	pop	ar5
      0027E8 D0 06            [24]  994 	pop	ar6
      0027EA D0 07            [24]  995 	pop	ar7
                                    996 ;	enc.c:87: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      0027EC C0 04            [24]  997 	push	ar4
      0027EE C0 05            [24]  998 	push	ar5
      0027F0 C0 06            [24]  999 	push	ar6
      0027F2 C0 07            [24] 1000 	push	ar7
      0027F4 74 B0            [12] 1001 	mov	a,#___str_2
      0027F6 C0 E0            [24] 1002 	push	acc
      0027F8 74 5D            [12] 1003 	mov	a,#(___str_2 >> 8)
      0027FA C0 E0            [24] 1004 	push	acc
      0027FC 74 80            [12] 1005 	mov	a,#0x80
      0027FE C0 E0            [24] 1006 	push	acc
      002800 12 52 65         [24] 1007 	lcall	_printf
      002803 E5 81            [12] 1008 	mov	a,sp
      002805 24 F9            [12] 1009 	add	a,#0xf9
      002807 F5 81            [12] 1010 	mov	sp,a
                                   1011 ;	enc.c:89: }
      002809 22               [24] 1012 	ret
                                   1013 ;------------------------------------------------------------
                                   1014 ;Allocation info for local variables in function 'enc_buffer_write'
                                   1015 ;------------------------------------------------------------
                                   1016 ;start_address             Allocated with name '_enc_buffer_write_PARM_2'
                                   1017 ;data_ptr                  Allocated with name '_enc_buffer_write_PARM_3'
                                   1018 ;num_bytes                 Allocated with name '_enc_buffer_write_num_bytes_10000_95'
                                   1019 ;higher_byte               Allocated with name '_enc_buffer_write_higher_byte_10001_101'
                                   1020 ;lower_byte                Allocated with name '_enc_buffer_write_lower_byte_10001_101'
                                   1021 ;opcode                    Allocated with name '_enc_buffer_write_opcode_10002_102'
                                   1022 ;i                         Allocated with name '_enc_buffer_write_i_20002_103'
                                   1023 ;------------------------------------------------------------
                                   1024 ;	enc.c:91: void enc_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr) {
                                   1025 ;	-----------------------------------------
                                   1026 ;	 function enc_buffer_write
                                   1027 ;	-----------------------------------------
      00280A                       1028 _enc_buffer_write:
      00280A AF 83            [24] 1029 	mov	r7,dph
      00280C E5 82            [12] 1030 	mov	a,dpl
      00280E 90 01 5D         [24] 1031 	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
      002811 F0               [24] 1032 	movx	@dptr,a
      002812 EF               [12] 1033 	mov	a,r7
      002813 A3               [24] 1034 	inc	dptr
      002814 F0               [24] 1035 	movx	@dptr,a
                                   1036 ;	enc.c:92: if (num_bytes < 1) {
      002815 90 01 5D         [24] 1037 	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
      002818 E0               [24] 1038 	movx	a,@dptr
      002819 FE               [12] 1039 	mov	r6,a
      00281A A3               [24] 1040 	inc	dptr
      00281B E0               [24] 1041 	movx	a,@dptr
      00281C FF               [12] 1042 	mov	r7,a
      00281D C3               [12] 1043 	clr	c
      00281E EE               [12] 1044 	mov	a,r6
      00281F 94 01            [12] 1045 	subb	a,#0x01
      002821 EF               [12] 1046 	mov	a,r7
      002822 64 80            [12] 1047 	xrl	a,#0x80
      002824 94 80            [12] 1048 	subb	a,#0x80
      002826 50 1A            [24] 1049 	jnc	00102$
                                   1050 ;	enc.c:93: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      002828 C0 06            [24] 1051 	push	ar6
      00282A C0 07            [24] 1052 	push	ar7
      00282C 74 DF            [12] 1053 	mov	a,#___str_3
      00282E C0 E0            [24] 1054 	push	acc
      002830 74 5D            [12] 1055 	mov	a,#(___str_3 >> 8)
      002832 C0 E0            [24] 1056 	push	acc
      002834 74 80            [12] 1057 	mov	a,#0x80
      002836 C0 E0            [24] 1058 	push	acc
      002838 12 52 65         [24] 1059 	lcall	_printf
      00283B E5 81            [12] 1060 	mov	a,sp
      00283D 24 FB            [12] 1061 	add	a,#0xfb
      00283F F5 81            [12] 1062 	mov	sp,a
                                   1063 ;	enc.c:94: return;
      002841 22               [24] 1064 	ret
      002842                       1065 00102$:
                                   1066 ;	enc.c:96: if (start_address > TX_BUFFER_END) {
      002842 90 01 58         [24] 1067 	mov	dptr,#_enc_buffer_write_PARM_2
      002845 E0               [24] 1068 	movx	a,@dptr
      002846 FC               [12] 1069 	mov	r4,a
      002847 A3               [24] 1070 	inc	dptr
      002848 E0               [24] 1071 	movx	a,@dptr
      002849 FD               [12] 1072 	mov	r5,a
      00284A 8C 02            [24] 1073 	mov	ar2,r4
      00284C 8D 03            [24] 1074 	mov	ar3,r5
      00284E C3               [12] 1075 	clr	c
      00284F 74 FF            [12] 1076 	mov	a,#0xff
      002851 9A               [12] 1077 	subb	a,r2
      002852 74 1F            [12] 1078 	mov	a,#0x1f
      002854 9B               [12] 1079 	subb	a,r3
      002855 50 1A            [24] 1080 	jnc	00104$
                                   1081 ;	enc.c:97: printf("\n\rInvalid address: %04X\n\r", start_address);
      002857 C0 04            [24] 1082 	push	ar4
      002859 C0 05            [24] 1083 	push	ar5
      00285B 74 FF            [12] 1084 	mov	a,#___str_4
      00285D C0 E0            [24] 1085 	push	acc
      00285F 74 5D            [12] 1086 	mov	a,#(___str_4 >> 8)
      002861 C0 E0            [24] 1087 	push	acc
      002863 74 80            [12] 1088 	mov	a,#0x80
      002865 C0 E0            [24] 1089 	push	acc
      002867 12 52 65         [24] 1090 	lcall	_printf
      00286A E5 81            [12] 1091 	mov	a,sp
      00286C 24 FB            [12] 1092 	add	a,#0xfb
      00286E F5 81            [12] 1093 	mov	sp,a
                                   1094 ;	enc.c:98: return;
      002870 22               [24] 1095 	ret
      002871                       1096 00104$:
                                   1097 ;	enc.c:101: || (start_address + num_bytes) > TX_BUFFER_END) {
      002871 74 E4            [12] 1098 	mov	a,#0x100 - 0x1c
      002873 2B               [12] 1099 	add	a,r3
      002874 50 13            [24] 1100 	jnc	00105$
      002876 8E 00            [24] 1101 	mov	ar0,r6
      002878 8F 01            [24] 1102 	mov	ar1,r7
      00287A E8               [12] 1103 	mov	a,r0
      00287B 2A               [12] 1104 	add	a, r2
      00287C FA               [12] 1105 	mov	r2,a
      00287D E9               [12] 1106 	mov	a,r1
      00287E 3B               [12] 1107 	addc	a, r3
      00287F FB               [12] 1108 	mov	r3,a
      002880 C3               [12] 1109 	clr	c
      002881 74 FF            [12] 1110 	mov	a,#0xff
      002883 9A               [12] 1111 	subb	a,r2
      002884 74 1F            [12] 1112 	mov	a,#0x1f
      002886 9B               [12] 1113 	subb	a,r3
      002887 50 24            [24] 1114 	jnc	00106$
      002889                       1115 00105$:
                                   1116 ;	enc.c:102: printf("\nInvalid TX Address: Start 0x%04X, Size %d\n", start_address,
      002889 90 01 5D         [24] 1117 	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
      00288C E0               [24] 1118 	movx	a,@dptr
      00288D C0 E0            [24] 1119 	push	acc
      00288F A3               [24] 1120 	inc	dptr
      002890 E0               [24] 1121 	movx	a,@dptr
      002891 C0 E0            [24] 1122 	push	acc
      002893 C0 04            [24] 1123 	push	ar4
      002895 C0 05            [24] 1124 	push	ar5
      002897 74 19            [12] 1125 	mov	a,#___str_5
      002899 C0 E0            [24] 1126 	push	acc
      00289B 74 5E            [12] 1127 	mov	a,#(___str_5 >> 8)
      00289D C0 E0            [24] 1128 	push	acc
      00289F 74 80            [12] 1129 	mov	a,#0x80
      0028A1 C0 E0            [24] 1130 	push	acc
      0028A3 12 52 65         [24] 1131 	lcall	_printf
      0028A6 E5 81            [12] 1132 	mov	a,sp
      0028A8 24 F9            [12] 1133 	add	a,#0xf9
      0028AA F5 81            [12] 1134 	mov	sp,a
                                   1135 ;	enc.c:104: return;
      0028AC 22               [24] 1136 	ret
      0028AD                       1137 00106$:
                                   1138 ;	enc.c:107: if (num_bytes > 1) {
      0028AD C3               [12] 1139 	clr	c
      0028AE 74 01            [12] 1140 	mov	a,#0x01
      0028B0 9E               [12] 1141 	subb	a,r6
      0028B1 74 80            [12] 1142 	mov	a,#(0x00 ^ 0x80)
      0028B3 8F F0            [24] 1143 	mov	b,r7
      0028B5 63 F0 80         [24] 1144 	xrl	b,#0x80
      0028B8 95 F0            [12] 1145 	subb	a,b
      0028BA 50 0B            [24] 1146 	jnc	00109$
                                   1147 ;	enc.c:108: enc_set_autoinc();
      0028BC C0 05            [24] 1148 	push	ar5
      0028BE C0 04            [24] 1149 	push	ar4
      0028C0 12 25 B3         [24] 1150 	lcall	_enc_set_autoinc
      0028C3 D0 04            [24] 1151 	pop	ar4
      0028C5 D0 05            [24] 1152 	pop	ar5
      0028C7                       1153 00109$:
                                   1154 ;	enc.c:110: uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
      0028C7 8D 07            [24] 1155 	mov	ar7,r5
                                   1156 ;	enc.c:111: uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
                                   1157 ;	enc.c:113: enc_control_write(0, ENC_EWRPTH, higher_byte); // High byte
      0028C9 90 01 50         [24] 1158 	mov	dptr,#_enc_control_write_PARM_2
      0028CC 74 03            [12] 1159 	mov	a,#0x03
      0028CE F0               [24] 1160 	movx	@dptr,a
      0028CF 90 01 51         [24] 1161 	mov	dptr,#_enc_control_write_PARM_3
      0028D2 EF               [12] 1162 	mov	a,r7
      0028D3 F0               [24] 1163 	movx	@dptr,a
      0028D4 90 00 00         [24] 1164 	mov	dptr,#0x0000
      0028D7 C0 04            [24] 1165 	push	ar4
      0028D9 12 26 62         [24] 1166 	lcall	_enc_control_write
      0028DC D0 04            [24] 1167 	pop	ar4
                                   1168 ;	enc.c:114: enc_control_write(0, ENC_EWRPTL, lower_byte); //
      0028DE 90 01 50         [24] 1169 	mov	dptr,#_enc_control_write_PARM_2
      0028E1 74 02            [12] 1170 	mov	a,#0x02
      0028E3 F0               [24] 1171 	movx	@dptr,a
      0028E4 90 01 51         [24] 1172 	mov	dptr,#_enc_control_write_PARM_3
      0028E7 EC               [12] 1173 	mov	a,r4
      0028E8 F0               [24] 1174 	movx	@dptr,a
      0028E9 90 00 00         [24] 1175 	mov	dptr,#0x0000
      0028EC 12 26 62         [24] 1176 	lcall	_enc_control_write
                                   1177 ;	enc.c:117: CS_LOW; // Pull CS Low
                                   1178 ;	assignBit
      0028EF C2 91            [12] 1179 	clr	_P1_1
                                   1180 ;	enc.c:118: SPI_WriteByte(opcode);
      0028F1 75 82 7A         [24] 1181 	mov	dpl, #0x7a
      0028F4 12 31 41         [24] 1182 	lcall	_SPI_WriteByte
                                   1183 ;	enc.c:121: for (int i = 0; i < num_bytes; i++) {
      0028F7 90 01 5D         [24] 1184 	mov	dptr,#_enc_buffer_write_num_bytes_10000_95
      0028FA E0               [24] 1185 	movx	a,@dptr
      0028FB FE               [12] 1186 	mov	r6,a
      0028FC A3               [24] 1187 	inc	dptr
      0028FD E0               [24] 1188 	movx	a,@dptr
      0028FE FF               [12] 1189 	mov	r7,a
      0028FF 90 01 5A         [24] 1190 	mov	dptr,#_enc_buffer_write_PARM_3
      002902 E0               [24] 1191 	movx	a,@dptr
      002903 FB               [12] 1192 	mov	r3,a
      002904 A3               [24] 1193 	inc	dptr
      002905 E0               [24] 1194 	movx	a,@dptr
      002906 FC               [12] 1195 	mov	r4,a
      002907 A3               [24] 1196 	inc	dptr
      002908 E0               [24] 1197 	movx	a,@dptr
      002909 FD               [12] 1198 	mov	r5,a
      00290A 79 00            [12] 1199 	mov	r1,#0x00
      00290C 7A 00            [12] 1200 	mov	r2,#0x00
      00290E                       1201 00112$:
      00290E C3               [12] 1202 	clr	c
      00290F E9               [12] 1203 	mov	a,r1
      002910 9E               [12] 1204 	subb	a,r6
      002911 EA               [12] 1205 	mov	a,r2
      002912 64 80            [12] 1206 	xrl	a,#0x80
      002914 8F F0            [24] 1207 	mov	b,r7
      002916 63 F0 80         [24] 1208 	xrl	b,#0x80
      002919 95 F0            [12] 1209 	subb	a,b
      00291B 50 37            [24] 1210 	jnc	00110$
                                   1211 ;	enc.c:123: SPI_WriteByte(*data_ptr); // Send data
      00291D 8B 82            [24] 1212 	mov	dpl,r3
      00291F 8C 83            [24] 1213 	mov	dph,r4
      002921 8D F0            [24] 1214 	mov	b,r5
      002923 12 5C 87         [24] 1215 	lcall	__gptrget
      002926 F8               [12] 1216 	mov	r0,a
      002927 A3               [24] 1217 	inc	dptr
      002928 AB 82            [24] 1218 	mov	r3,dpl
      00292A AC 83            [24] 1219 	mov	r4,dph
      00292C 88 82            [24] 1220 	mov	dpl, r0
      00292E C0 07            [24] 1221 	push	ar7
      002930 C0 06            [24] 1222 	push	ar6
      002932 C0 05            [24] 1223 	push	ar5
      002934 C0 04            [24] 1224 	push	ar4
      002936 C0 03            [24] 1225 	push	ar3
      002938 C0 02            [24] 1226 	push	ar2
      00293A C0 01            [24] 1227 	push	ar1
      00293C 12 31 41         [24] 1228 	lcall	_SPI_WriteByte
      00293F D0 01            [24] 1229 	pop	ar1
      002941 D0 02            [24] 1230 	pop	ar2
      002943 D0 03            [24] 1231 	pop	ar3
      002945 D0 04            [24] 1232 	pop	ar4
      002947 D0 05            [24] 1233 	pop	ar5
      002949 D0 06            [24] 1234 	pop	ar6
      00294B D0 07            [24] 1235 	pop	ar7
                                   1236 ;	enc.c:124: data_ptr++;
                                   1237 ;	enc.c:121: for (int i = 0; i < num_bytes; i++) {
      00294D 09               [12] 1238 	inc	r1
      00294E B9 00 BD         [24] 1239 	cjne	r1,#0x00,00112$
      002951 0A               [12] 1240 	inc	r2
      002952 80 BA            [24] 1241 	sjmp	00112$
      002954                       1242 00110$:
                                   1243 ;	enc.c:126: CS_HIGH; // Pull CS High
                                   1244 ;	assignBit
      002954 D2 91            [12] 1245 	setb	_P1_1
                                   1246 ;	enc.c:127: }
      002956 22               [24] 1247 	ret
                                   1248 ;------------------------------------------------------------
                                   1249 ;Allocation info for local variables in function 'enc_buffer_read'
                                   1250 ;------------------------------------------------------------
                                   1251 ;start_address             Allocated with name '_enc_buffer_read_PARM_2'
                                   1252 ;data_ptr                  Allocated with name '_enc_buffer_read_PARM_3'
                                   1253 ;num_bytes                 Allocated with name '_enc_buffer_read_num_bytes_10000_105'
                                   1254 ;higher_byte               Allocated with name '_enc_buffer_read_higher_byte_10001_111'
                                   1255 ;lower_byte                Allocated with name '_enc_buffer_read_lower_byte_10001_111'
                                   1256 ;opcode                    Allocated with name '_enc_buffer_read_opcode_10002_112'
                                   1257 ;i                         Allocated with name '_enc_buffer_read_i_20002_113'
                                   1258 ;------------------------------------------------------------
                                   1259 ;	enc.c:130: uint16_t enc_buffer_read(int num_bytes, uint16_t start_address,
                                   1260 ;	-----------------------------------------
                                   1261 ;	 function enc_buffer_read
                                   1262 ;	-----------------------------------------
      002957                       1263 _enc_buffer_read:
      002957 AF 83            [24] 1264 	mov	r7,dph
      002959 E5 82            [12] 1265 	mov	a,dpl
      00295B 90 01 64         [24] 1266 	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
      00295E F0               [24] 1267 	movx	@dptr,a
      00295F EF               [12] 1268 	mov	a,r7
      002960 A3               [24] 1269 	inc	dptr
      002961 F0               [24] 1270 	movx	@dptr,a
                                   1271 ;	enc.c:132: if (num_bytes < 1) {
      002962 90 01 64         [24] 1272 	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
      002965 E0               [24] 1273 	movx	a,@dptr
      002966 FE               [12] 1274 	mov	r6,a
      002967 A3               [24] 1275 	inc	dptr
      002968 E0               [24] 1276 	movx	a,@dptr
      002969 FF               [12] 1277 	mov	r7,a
      00296A C3               [12] 1278 	clr	c
      00296B EE               [12] 1279 	mov	a,r6
      00296C 94 01            [12] 1280 	subb	a,#0x01
      00296E EF               [12] 1281 	mov	a,r7
      00296F 64 80            [12] 1282 	xrl	a,#0x80
      002971 94 80            [12] 1283 	subb	a,#0x80
      002973 50 1D            [24] 1284 	jnc	00102$
                                   1285 ;	enc.c:133: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      002975 C0 06            [24] 1286 	push	ar6
      002977 C0 07            [24] 1287 	push	ar7
      002979 74 DF            [12] 1288 	mov	a,#___str_3
      00297B C0 E0            [24] 1289 	push	acc
      00297D 74 5D            [12] 1290 	mov	a,#(___str_3 >> 8)
      00297F C0 E0            [24] 1291 	push	acc
      002981 74 80            [12] 1292 	mov	a,#0x80
      002983 C0 E0            [24] 1293 	push	acc
      002985 12 52 65         [24] 1294 	lcall	_printf
      002988 E5 81            [12] 1295 	mov	a,sp
      00298A 24 FB            [12] 1296 	add	a,#0xfb
      00298C F5 81            [12] 1297 	mov	sp,a
                                   1298 ;	enc.c:134: return 0;
      00298E 90 00 00         [24] 1299 	mov	dptr,#0x0000
      002991 22               [24] 1300 	ret
      002992                       1301 00102$:
                                   1302 ;	enc.c:136: if (start_address > TX_BUFFER_END) {
      002992 90 01 5F         [24] 1303 	mov	dptr,#_enc_buffer_read_PARM_2
      002995 E0               [24] 1304 	movx	a,@dptr
      002996 FC               [12] 1305 	mov	r4,a
      002997 A3               [24] 1306 	inc	dptr
      002998 E0               [24] 1307 	movx	a,@dptr
      002999 FD               [12] 1308 	mov	r5,a
      00299A 8C 02            [24] 1309 	mov	ar2,r4
      00299C 8D 03            [24] 1310 	mov	ar3,r5
      00299E C3               [12] 1311 	clr	c
      00299F 74 FF            [12] 1312 	mov	a,#0xff
      0029A1 9A               [12] 1313 	subb	a,r2
      0029A2 74 1F            [12] 1314 	mov	a,#0x1f
      0029A4 9B               [12] 1315 	subb	a,r3
      0029A5 50 1D            [24] 1316 	jnc	00104$
                                   1317 ;	enc.c:137: printf("\n\rInvalid address: %04X\n\r", start_address);
      0029A7 C0 04            [24] 1318 	push	ar4
      0029A9 C0 05            [24] 1319 	push	ar5
      0029AB 74 FF            [12] 1320 	mov	a,#___str_4
      0029AD C0 E0            [24] 1321 	push	acc
      0029AF 74 5D            [12] 1322 	mov	a,#(___str_4 >> 8)
      0029B1 C0 E0            [24] 1323 	push	acc
      0029B3 74 80            [12] 1324 	mov	a,#0x80
      0029B5 C0 E0            [24] 1325 	push	acc
      0029B7 12 52 65         [24] 1326 	lcall	_printf
      0029BA E5 81            [12] 1327 	mov	a,sp
      0029BC 24 FB            [12] 1328 	add	a,#0xfb
      0029BE F5 81            [12] 1329 	mov	sp,a
                                   1330 ;	enc.c:138: return 0;
      0029C0 90 00 00         [24] 1331 	mov	dptr,#0x0000
      0029C3 22               [24] 1332 	ret
      0029C4                       1333 00104$:
                                   1334 ;	enc.c:141: if ((start_address + num_bytes) > RX_BUFFER_END) {
      0029C4 8E 00            [24] 1335 	mov	ar0,r6
      0029C6 8F 01            [24] 1336 	mov	ar1,r7
      0029C8 E8               [12] 1337 	mov	a,r0
      0029C9 2A               [12] 1338 	add	a, r2
      0029CA FA               [12] 1339 	mov	r2,a
      0029CB E9               [12] 1340 	mov	a,r1
      0029CC 3B               [12] 1341 	addc	a, r3
      0029CD FB               [12] 1342 	mov	r3,a
      0029CE C3               [12] 1343 	clr	c
      0029CF 74 FF            [12] 1344 	mov	a,#0xff
      0029D1 9A               [12] 1345 	subb	a,r2
      0029D2 74 1B            [12] 1346 	mov	a,#0x1b
      0029D4 9B               [12] 1347 	subb	a,r3
      0029D5 50 21            [24] 1348 	jnc	00106$
                                   1349 ;	enc.c:142: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
      0029D7 C0 06            [24] 1350 	push	ar6
      0029D9 C0 07            [24] 1351 	push	ar7
      0029DB C0 04            [24] 1352 	push	ar4
      0029DD C0 05            [24] 1353 	push	ar5
      0029DF 74 45            [12] 1354 	mov	a,#___str_6
      0029E1 C0 E0            [24] 1355 	push	acc
      0029E3 74 5E            [12] 1356 	mov	a,#(___str_6 >> 8)
      0029E5 C0 E0            [24] 1357 	push	acc
      0029E7 74 80            [12] 1358 	mov	a,#0x80
      0029E9 C0 E0            [24] 1359 	push	acc
      0029EB 12 52 65         [24] 1360 	lcall	_printf
      0029EE E5 81            [12] 1361 	mov	a,sp
      0029F0 24 F9            [12] 1362 	add	a,#0xf9
      0029F2 F5 81            [12] 1363 	mov	sp,a
                                   1364 ;	enc.c:144: return 0;
      0029F4 90 00 00         [24] 1365 	mov	dptr,#0x0000
      0029F7 22               [24] 1366 	ret
      0029F8                       1367 00106$:
                                   1368 ;	enc.c:147: if (num_bytes > 1) {
      0029F8 C3               [12] 1369 	clr	c
      0029F9 74 01            [12] 1370 	mov	a,#0x01
      0029FB 9E               [12] 1371 	subb	a,r6
      0029FC 74 80            [12] 1372 	mov	a,#(0x00 ^ 0x80)
      0029FE 8F F0            [24] 1373 	mov	b,r7
      002A00 63 F0 80         [24] 1374 	xrl	b,#0x80
      002A03 95 F0            [12] 1375 	subb	a,b
      002A05 50 0B            [24] 1376 	jnc	00108$
                                   1377 ;	enc.c:148: enc_set_autoinc();
      002A07 C0 05            [24] 1378 	push	ar5
      002A09 C0 04            [24] 1379 	push	ar4
      002A0B 12 25 B3         [24] 1380 	lcall	_enc_set_autoinc
      002A0E D0 04            [24] 1381 	pop	ar4
      002A10 D0 05            [24] 1382 	pop	ar5
      002A12                       1383 00108$:
                                   1384 ;	enc.c:151: uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
      002A12 8D 07            [24] 1385 	mov	ar7,r5
                                   1386 ;	enc.c:152: uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
                                   1387 ;	enc.c:153: enc_control_write(0, ENC_ERDPTH, higher_byte); // ERDPTH
      002A14 90 01 50         [24] 1388 	mov	dptr,#_enc_control_write_PARM_2
      002A17 74 01            [12] 1389 	mov	a,#0x01
      002A19 F0               [24] 1390 	movx	@dptr,a
      002A1A 90 01 51         [24] 1391 	mov	dptr,#_enc_control_write_PARM_3
      002A1D EF               [12] 1392 	mov	a,r7
      002A1E F0               [24] 1393 	movx	@dptr,a
      002A1F 90 00 00         [24] 1394 	mov	dptr,#0x0000
      002A22 C0 04            [24] 1395 	push	ar4
      002A24 12 26 62         [24] 1396 	lcall	_enc_control_write
      002A27 D0 04            [24] 1397 	pop	ar4
                                   1398 ;	enc.c:154: enc_control_write(0, ENC_ERDPTL, lower_byte); // ERDPTL
      002A29 90 01 50         [24] 1399 	mov	dptr,#_enc_control_write_PARM_2
      002A2C E4               [12] 1400 	clr	a
      002A2D F0               [24] 1401 	movx	@dptr,a
      002A2E 90 01 51         [24] 1402 	mov	dptr,#_enc_control_write_PARM_3
      002A31 EC               [12] 1403 	mov	a,r4
      002A32 F0               [24] 1404 	movx	@dptr,a
      002A33 90 00 00         [24] 1405 	mov	dptr,#0x0000
      002A36 12 26 62         [24] 1406 	lcall	_enc_control_write
                                   1407 ;	enc.c:158: CS_LOW; // Pull CS Low
                                   1408 ;	assignBit
      002A39 C2 91            [12] 1409 	clr	_P1_1
                                   1410 ;	enc.c:159: SPI_WriteByte(opcode);
      002A3B 75 82 3A         [24] 1411 	mov	dpl, #0x3a
      002A3E 12 31 41         [24] 1412 	lcall	_SPI_WriteByte
                                   1413 ;	enc.c:160: for (int i = 0; i < num_bytes; i++) {
      002A41 90 01 64         [24] 1414 	mov	dptr,#_enc_buffer_read_num_bytes_10000_105
      002A44 E0               [24] 1415 	movx	a,@dptr
      002A45 FE               [12] 1416 	mov	r6,a
      002A46 A3               [24] 1417 	inc	dptr
      002A47 E0               [24] 1418 	movx	a,@dptr
      002A48 FF               [12] 1419 	mov	r7,a
      002A49 90 01 61         [24] 1420 	mov	dptr,#_enc_buffer_read_PARM_3
      002A4C E0               [24] 1421 	movx	a,@dptr
      002A4D FB               [12] 1422 	mov	r3,a
      002A4E A3               [24] 1423 	inc	dptr
      002A4F E0               [24] 1424 	movx	a,@dptr
      002A50 FC               [12] 1425 	mov	r4,a
      002A51 A3               [24] 1426 	inc	dptr
      002A52 E0               [24] 1427 	movx	a,@dptr
      002A53 FD               [12] 1428 	mov	r5,a
      002A54 79 00            [12] 1429 	mov	r1,#0x00
      002A56 7A 00            [12] 1430 	mov	r2,#0x00
      002A58                       1431 00111$:
      002A58 C3               [12] 1432 	clr	c
      002A59 E9               [12] 1433 	mov	a,r1
      002A5A 9E               [12] 1434 	subb	a,r6
      002A5B EA               [12] 1435 	mov	a,r2
      002A5C 64 80            [12] 1436 	xrl	a,#0x80
      002A5E 8F F0            [24] 1437 	mov	b,r7
      002A60 63 F0 80         [24] 1438 	xrl	b,#0x80
      002A63 95 F0            [12] 1439 	subb	a,b
      002A65 50 37            [24] 1440 	jnc	00109$
                                   1441 ;	enc.c:161: *data_ptr = SPI_ReadByte(); // Read data
      002A67 C0 07            [24] 1442 	push	ar7
      002A69 C0 06            [24] 1443 	push	ar6
      002A6B C0 05            [24] 1444 	push	ar5
      002A6D C0 04            [24] 1445 	push	ar4
      002A6F C0 03            [24] 1446 	push	ar3
      002A71 C0 02            [24] 1447 	push	ar2
      002A73 C0 01            [24] 1448 	push	ar1
      002A75 12 31 50         [24] 1449 	lcall	_SPI_ReadByte
      002A78 A8 82            [24] 1450 	mov	r0, dpl
      002A7A D0 01            [24] 1451 	pop	ar1
      002A7C D0 02            [24] 1452 	pop	ar2
      002A7E D0 03            [24] 1453 	pop	ar3
      002A80 D0 04            [24] 1454 	pop	ar4
      002A82 D0 05            [24] 1455 	pop	ar5
      002A84 D0 06            [24] 1456 	pop	ar6
      002A86 D0 07            [24] 1457 	pop	ar7
      002A88 8B 82            [24] 1458 	mov	dpl,r3
      002A8A 8C 83            [24] 1459 	mov	dph,r4
      002A8C 8D F0            [24] 1460 	mov	b,r5
      002A8E E8               [12] 1461 	mov	a,r0
      002A8F 12 4F 98         [24] 1462 	lcall	__gptrput
      002A92 A3               [24] 1463 	inc	dptr
      002A93 AB 82            [24] 1464 	mov	r3,dpl
      002A95 AC 83            [24] 1465 	mov	r4,dph
                                   1466 ;	enc.c:163: data_ptr++;
                                   1467 ;	enc.c:160: for (int i = 0; i < num_bytes; i++) {
      002A97 09               [12] 1468 	inc	r1
      002A98 B9 00 BD         [24] 1469 	cjne	r1,#0x00,00111$
      002A9B 0A               [12] 1470 	inc	r2
      002A9C 80 BA            [24] 1471 	sjmp	00111$
      002A9E                       1472 00109$:
                                   1473 ;	enc.c:165: CS_HIGH;// Pull CS High
                                   1474 ;	assignBit
      002A9E D2 91            [12] 1475 	setb	_P1_1
                                   1476 ;	enc.c:166: return (uint16_t) num_bytes;
      002AA0 8E 82            [24] 1477 	mov	dpl, r6
      002AA2 8F 83            [24] 1478 	mov	dph, r7
                                   1479 ;	enc.c:167: }
      002AA4 22               [24] 1480 	ret
                                   1481 ;------------------------------------------------------------
                                   1482 ;Allocation info for local variables in function 'enc_mac_read'
                                   1483 ;------------------------------------------------------------
                                   1484 ;bank                      Allocated with name '_enc_mac_read_PARM_2'
                                   1485 ;addr                      Allocated with name '_enc_mac_read_addr_10000_115'
                                   1486 ;data                      Allocated with name '_enc_mac_read_data_10001_118'
                                   1487 ;------------------------------------------------------------
                                   1488 ;	enc.c:169: uint8_t enc_mac_read(uint8_t addr, uint8_t bank) {
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function enc_mac_read
                                   1491 ;	-----------------------------------------
      002AA5                       1492 _enc_mac_read:
      002AA5 E5 82            [12] 1493 	mov	a,dpl
      002AA7 90 01 67         [24] 1494 	mov	dptr,#_enc_mac_read_addr_10000_115
      002AAA F0               [24] 1495 	movx	@dptr,a
                                   1496 ;	enc.c:170: if (addr > ENC_MAC_MAX_ADDRESS) {
      002AAB E0               [24] 1497 	movx	a,@dptr
      002AAC FF               [12] 1498 	mov  r7,a
      002AAD 24 E0            [12] 1499 	add	a,#0xff - 0x1f
      002AAF 50 19            [24] 1500 	jnc	00102$
                                   1501 ;	enc.c:171: printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
      002AB1 74 71            [12] 1502 	mov	a,#___str_7
      002AB3 C0 E0            [24] 1503 	push	acc
      002AB5 74 5E            [12] 1504 	mov	a,#(___str_7 >> 8)
      002AB7 C0 E0            [24] 1505 	push	acc
      002AB9 74 80            [12] 1506 	mov	a,#0x80
      002ABB C0 E0            [24] 1507 	push	acc
      002ABD 12 52 65         [24] 1508 	lcall	_printf
      002AC0 15 81            [12] 1509 	dec	sp
      002AC2 15 81            [12] 1510 	dec	sp
      002AC4 15 81            [12] 1511 	dec	sp
                                   1512 ;	enc.c:172: return 0;
      002AC6 75 82 00         [24] 1513 	mov	dpl, #0x00
      002AC9 22               [24] 1514 	ret
      002ACA                       1515 00102$:
                                   1516 ;	enc.c:175: enc_select_reg_bank(bank);
      002ACA 90 01 66         [24] 1517 	mov	dptr,#_enc_mac_read_PARM_2
      002ACD E0               [24] 1518 	movx	a,@dptr
      002ACE F5 82            [12] 1519 	mov	dpl,a
      002AD0 C0 07            [24] 1520 	push	ar7
      002AD2 12 25 D9         [24] 1521 	lcall	_enc_select_reg_bank
      002AD5 D0 07            [24] 1522 	pop	ar7
                                   1523 ;	enc.c:177: CS_LOW;
                                   1524 ;	assignBit
      002AD7 C2 91            [12] 1525 	clr	_P1_1
                                   1526 ;	enc.c:180: SPI_WriteByte(addr);           // Send the address
      002AD9 8F 82            [24] 1527 	mov	dpl, r7
      002ADB C0 07            [24] 1528 	push	ar7
      002ADD 12 31 41         [24] 1529 	lcall	_SPI_WriteByte
                                   1530 ;	enc.c:182: uint8_t data = SPI_ReadByte(); // Read the data
      002AE0 12 31 50         [24] 1531 	lcall	_SPI_ReadByte
      002AE3 AE 82            [24] 1532 	mov	r6, dpl
      002AE5 D0 07            [24] 1533 	pop	ar7
                                   1534 ;	enc.c:185: CS_HIGH;
                                   1535 ;	assignBit
      002AE7 D2 91            [12] 1536 	setb	_P1_1
                                   1537 ;	enc.c:186: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      002AE9 8E 04            [24] 1538 	mov	ar4,r6
      002AEB 7D 00            [12] 1539 	mov	r5,#0x00
      002AED 7B 00            [12] 1540 	mov	r3,#0x00
      002AEF C0 06            [24] 1541 	push	ar6
      002AF1 C0 04            [24] 1542 	push	ar4
      002AF3 C0 05            [24] 1543 	push	ar5
      002AF5 C0 07            [24] 1544 	push	ar7
      002AF7 C0 03            [24] 1545 	push	ar3
      002AF9 74 A9            [12] 1546 	mov	a,#___str_8
      002AFB C0 E0            [24] 1547 	push	acc
      002AFD 74 5E            [12] 1548 	mov	a,#(___str_8 >> 8)
      002AFF C0 E0            [24] 1549 	push	acc
      002B01 74 80            [12] 1550 	mov	a,#0x80
      002B03 C0 E0            [24] 1551 	push	acc
      002B05 12 52 65         [24] 1552 	lcall	_printf
      002B08 E5 81            [12] 1553 	mov	a,sp
      002B0A 24 F9            [12] 1554 	add	a,#0xf9
      002B0C F5 81            [12] 1555 	mov	sp,a
      002B0E D0 06            [24] 1556 	pop	ar6
                                   1557 ;	enc.c:188: return data;
      002B10 8E 82            [24] 1558 	mov	dpl, r6
                                   1559 ;	enc.c:189: }
      002B12 22               [24] 1560 	ret
                                   1561 ;------------------------------------------------------------
                                   1562 ;Allocation info for local variables in function 'enc_busy_wait'
                                   1563 ;------------------------------------------------------------
                                   1564 ;data                      Allocated with name '_enc_busy_wait_data_10000_120'
                                   1565 ;------------------------------------------------------------
                                   1566 ;	enc.c:191: void enc_busy_wait(void) {
                                   1567 ;	-----------------------------------------
                                   1568 ;	 function enc_busy_wait
                                   1569 ;	-----------------------------------------
      002B13                       1570 _enc_busy_wait:
                                   1571 ;	enc.c:192: uint8_t data = enc_mac_read(0x0A, 3); // Read ESTAT register (bank 3)
      002B13 90 01 66         [24] 1572 	mov	dptr,#_enc_mac_read_PARM_2
      002B16 74 03            [12] 1573 	mov	a,#0x03
      002B18 F0               [24] 1574 	movx	@dptr,a
      002B19 75 82 0A         [24] 1575 	mov	dpl, #0x0a
      002B1C 12 2A A5         [24] 1576 	lcall	_enc_mac_read
      002B1F E5 82            [12] 1577 	mov	a, dpl
      002B21 90 01 68         [24] 1578 	mov	dptr,#_enc_busy_wait_data_10000_120
      002B24 F0               [24] 1579 	movx	@dptr,a
                                   1580 ;	enc.c:193: while (data & 0x01) {                 // Wait until BUSY bit clears
      002B25                       1581 00101$:
      002B25 90 01 68         [24] 1582 	mov	dptr,#_enc_busy_wait_data_10000_120
      002B28 E0               [24] 1583 	movx	a,@dptr
      002B29 30 E0 14         [24] 1584 	jnb	acc.0,00104$
                                   1585 ;	enc.c:194: data = enc_mac_read(0x0A, 3);
      002B2C 90 01 66         [24] 1586 	mov	dptr,#_enc_mac_read_PARM_2
      002B2F 74 03            [12] 1587 	mov	a,#0x03
      002B31 F0               [24] 1588 	movx	@dptr,a
      002B32 75 82 0A         [24] 1589 	mov	dpl, #0x0a
      002B35 12 2A A5         [24] 1590 	lcall	_enc_mac_read
      002B38 E5 82            [12] 1591 	mov	a, dpl
      002B3A 90 01 68         [24] 1592 	mov	dptr,#_enc_busy_wait_data_10000_120
      002B3D F0               [24] 1593 	movx	@dptr,a
      002B3E 80 E5            [24] 1594 	sjmp	00101$
      002B40                       1595 00104$:
                                   1596 ;	enc.c:196: }
      002B40 22               [24] 1597 	ret
                                   1598 ;------------------------------------------------------------
                                   1599 ;Allocation info for local variables in function 'enc_phy_read'
                                   1600 ;------------------------------------------------------------
                                   1601 ;addr                      Allocated with name '_enc_phy_read_addr_10000_122'
                                   1602 ;data_LSB                  Allocated with name '_enc_phy_read_data_LSB_10001_124'
                                   1603 ;data_MSB                  Allocated with name '_enc_phy_read_data_MSB_10001_124'
                                   1604 ;data                      Allocated with name '_enc_phy_read_data_10001_124'
                                   1605 ;------------------------------------------------------------
                                   1606 ;	enc.c:197: uint16_t enc_phy_read(uint8_t addr) {
                                   1607 ;	-----------------------------------------
                                   1608 ;	 function enc_phy_read
                                   1609 ;	-----------------------------------------
      002B41                       1610 _enc_phy_read:
      002B41 E5 82            [12] 1611 	mov	a,dpl
      002B43 90 01 69         [24] 1612 	mov	dptr,#_enc_phy_read_addr_10000_122
      002B46 F0               [24] 1613 	movx	@dptr,a
                                   1614 ;	enc.c:198: enc_control_write(2, ENC_MIREGADR, addr);
      002B47 E0               [24] 1615 	movx	a,@dptr
      002B48 FF               [12] 1616 	mov	r7,a
      002B49 90 01 50         [24] 1617 	mov	dptr,#_enc_control_write_PARM_2
      002B4C 74 14            [12] 1618 	mov	a,#0x14
      002B4E F0               [24] 1619 	movx	@dptr,a
      002B4F 90 01 51         [24] 1620 	mov	dptr,#_enc_control_write_PARM_3
      002B52 EF               [12] 1621 	mov	a,r7
      002B53 F0               [24] 1622 	movx	@dptr,a
      002B54 90 00 02         [24] 1623 	mov	dptr,#0x0002
      002B57 C0 07            [24] 1624 	push	ar7
      002B59 12 26 62         [24] 1625 	lcall	_enc_control_write
                                   1626 ;	enc.c:199: enc_control_write(2, ENC_MICMD, 1);				//MICMD.MIIRD bit set
      002B5C 90 01 50         [24] 1627 	mov	dptr,#_enc_control_write_PARM_2
      002B5F 74 12            [12] 1628 	mov	a,#0x12
      002B61 F0               [24] 1629 	movx	@dptr,a
      002B62 90 01 51         [24] 1630 	mov	dptr,#_enc_control_write_PARM_3
      002B65 74 01            [12] 1631 	mov	a,#0x01
      002B67 F0               [24] 1632 	movx	@dptr,a
      002B68 90 00 02         [24] 1633 	mov	dptr,#0x0002
      002B6B 12 26 62         [24] 1634 	lcall	_enc_control_write
                                   1635 ;	enc.c:201: enc_busy_wait();
      002B6E 12 2B 13         [24] 1636 	lcall	_enc_busy_wait
                                   1637 ;	enc.c:203: enc_control_write(2, ENC_MICMD, 0);				//MICMD.MIIRD bit cleared
      002B71 90 01 50         [24] 1638 	mov	dptr,#_enc_control_write_PARM_2
      002B74 74 12            [12] 1639 	mov	a,#0x12
      002B76 F0               [24] 1640 	movx	@dptr,a
      002B77 90 01 51         [24] 1641 	mov	dptr,#_enc_control_write_PARM_3
      002B7A E4               [12] 1642 	clr	a
      002B7B F0               [24] 1643 	movx	@dptr,a
      002B7C 90 00 02         [24] 1644 	mov	dptr,#0x0002
      002B7F 12 26 62         [24] 1645 	lcall	_enc_control_write
                                   1646 ;	enc.c:205: uint16_t data_LSB = enc_mac_read(ENC_MIRDL, 2);
      002B82 90 01 66         [24] 1647 	mov	dptr,#_enc_mac_read_PARM_2
      002B85 74 02            [12] 1648 	mov	a,#0x02
      002B87 F0               [24] 1649 	movx	@dptr,a
      002B88 75 82 18         [24] 1650 	mov	dpl, #0x18
      002B8B 12 2A A5         [24] 1651 	lcall	_enc_mac_read
      002B8E AE 82            [24] 1652 	mov	r6, dpl
      002B90 7D 00            [12] 1653 	mov	r5,#0x00
                                   1654 ;	enc.c:206: uint16_t data_MSB = enc_mac_read(ENC_MIRDH, 2);
      002B92 90 01 66         [24] 1655 	mov	dptr,#_enc_mac_read_PARM_2
      002B95 74 02            [12] 1656 	mov	a,#0x02
      002B97 F0               [24] 1657 	movx	@dptr,a
      002B98 75 82 19         [24] 1658 	mov	dpl, #0x19
      002B9B C0 06            [24] 1659 	push	ar6
      002B9D C0 05            [24] 1660 	push	ar5
      002B9F 12 2A A5         [24] 1661 	lcall	_enc_mac_read
      002BA2 AC 82            [24] 1662 	mov	r4, dpl
      002BA4 D0 05            [24] 1663 	pop	ar5
      002BA6 D0 06            [24] 1664 	pop	ar6
      002BA8 D0 07            [24] 1665 	pop	ar7
                                   1666 ;	enc.c:208: uint16_t data = (data_MSB << 8) + data_LSB;
      002BAA 8C 03            [24] 1667 	mov	ar3,r4
      002BAC 7C 00            [12] 1668 	mov	r4,#0x00
      002BAE EE               [12] 1669 	mov	a,r6
      002BAF 2C               [12] 1670 	add	a, r4
      002BB0 FE               [12] 1671 	mov	r6,a
      002BB1 ED               [12] 1672 	mov	a,r5
      002BB2 3B               [12] 1673 	addc	a, r3
      002BB3 FD               [12] 1674 	mov	r5,a
                                   1675 ;	enc.c:209: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      002BB4 C0 06            [24] 1676 	push	ar6
      002BB6 C0 05            [24] 1677 	push	ar5
      002BB8 C0 06            [24] 1678 	push	ar6
      002BBA C0 05            [24] 1679 	push	ar5
      002BBC C0 07            [24] 1680 	push	ar7
      002BBE C0 04            [24] 1681 	push	ar4
      002BC0 74 CC            [12] 1682 	mov	a,#___str_9
      002BC2 C0 E0            [24] 1683 	push	acc
      002BC4 74 5E            [12] 1684 	mov	a,#(___str_9 >> 8)
      002BC6 C0 E0            [24] 1685 	push	acc
      002BC8 74 80            [12] 1686 	mov	a,#0x80
      002BCA C0 E0            [24] 1687 	push	acc
      002BCC 12 52 65         [24] 1688 	lcall	_printf
      002BCF E5 81            [12] 1689 	mov	a,sp
      002BD1 24 F9            [12] 1690 	add	a,#0xf9
      002BD3 F5 81            [12] 1691 	mov	sp,a
      002BD5 D0 05            [24] 1692 	pop	ar5
      002BD7 D0 06            [24] 1693 	pop	ar6
                                   1694 ;	enc.c:210: return data;
      002BD9 8E 82            [24] 1695 	mov	dpl, r6
      002BDB 8D 83            [24] 1696 	mov	dph, r5
                                   1697 ;	enc.c:211: }
      002BDD 22               [24] 1698 	ret
                                   1699 ;------------------------------------------------------------
                                   1700 ;Allocation info for local variables in function 'enc_phy_write'
                                   1701 ;------------------------------------------------------------
                                   1702 ;data                      Allocated with name '_enc_phy_write_PARM_2'
                                   1703 ;addr                      Allocated with name '_enc_phy_write_addr_10000_125'
                                   1704 ;------------------------------------------------------------
                                   1705 ;	enc.c:213: void enc_phy_write(uint8_t addr, uint16_t data) {
                                   1706 ;	-----------------------------------------
                                   1707 ;	 function enc_phy_write
                                   1708 ;	-----------------------------------------
      002BDE                       1709 _enc_phy_write:
      002BDE E5 82            [12] 1710 	mov	a,dpl
      002BE0 90 01 6C         [24] 1711 	mov	dptr,#_enc_phy_write_addr_10000_125
      002BE3 F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	enc.c:214: enc_control_write(2, ENC_MIREGADR, addr);
      002BE4 E0               [24] 1714 	movx	a,@dptr
      002BE5 FF               [12] 1715 	mov	r7,a
      002BE6 90 01 50         [24] 1716 	mov	dptr,#_enc_control_write_PARM_2
      002BE9 74 14            [12] 1717 	mov	a,#0x14
      002BEB F0               [24] 1718 	movx	@dptr,a
      002BEC 90 01 51         [24] 1719 	mov	dptr,#_enc_control_write_PARM_3
      002BEF EF               [12] 1720 	mov	a,r7
      002BF0 F0               [24] 1721 	movx	@dptr,a
      002BF1 90 00 02         [24] 1722 	mov	dptr,#0x0002
      002BF4 C0 07            [24] 1723 	push	ar7
      002BF6 12 26 62         [24] 1724 	lcall	_enc_control_write
                                   1725 ;	enc.c:215: enc_control_write(2, ENC_MIWRL, (uint8_t) (data & 0xFF));
      002BF9 90 01 6A         [24] 1726 	mov	dptr,#_enc_phy_write_PARM_2
      002BFC E0               [24] 1727 	movx	a,@dptr
      002BFD FD               [12] 1728 	mov	r5,a
      002BFE A3               [24] 1729 	inc	dptr
      002BFF E0               [24] 1730 	movx	a,@dptr
      002C00 FE               [12] 1731 	mov	r6,a
      002C01 8D 04            [24] 1732 	mov	ar4,r5
      002C03 90 01 50         [24] 1733 	mov	dptr,#_enc_control_write_PARM_2
      002C06 74 16            [12] 1734 	mov	a,#0x16
      002C08 F0               [24] 1735 	movx	@dptr,a
      002C09 90 01 51         [24] 1736 	mov	dptr,#_enc_control_write_PARM_3
      002C0C EC               [12] 1737 	mov	a,r4
      002C0D F0               [24] 1738 	movx	@dptr,a
      002C0E 90 00 02         [24] 1739 	mov	dptr,#0x0002
      002C11 C0 06            [24] 1740 	push	ar6
      002C13 C0 05            [24] 1741 	push	ar5
      002C15 12 26 62         [24] 1742 	lcall	_enc_control_write
      002C18 D0 05            [24] 1743 	pop	ar5
      002C1A D0 06            [24] 1744 	pop	ar6
                                   1745 ;	enc.c:216: enc_control_write(2, ENC_MIWRH, (uint8_t) ((data >> 8) & 0xFF));
      002C1C 8E 04            [24] 1746 	mov	ar4,r6
      002C1E 90 01 50         [24] 1747 	mov	dptr,#_enc_control_write_PARM_2
      002C21 74 17            [12] 1748 	mov	a,#0x17
      002C23 F0               [24] 1749 	movx	@dptr,a
      002C24 90 01 51         [24] 1750 	mov	dptr,#_enc_control_write_PARM_3
      002C27 EC               [12] 1751 	mov	a,r4
      002C28 F0               [24] 1752 	movx	@dptr,a
      002C29 90 00 02         [24] 1753 	mov	dptr,#0x0002
      002C2C C0 06            [24] 1754 	push	ar6
      002C2E C0 05            [24] 1755 	push	ar5
      002C30 12 26 62         [24] 1756 	lcall	_enc_control_write
      002C33 D0 05            [24] 1757 	pop	ar5
      002C35 D0 06            [24] 1758 	pop	ar6
      002C37 D0 07            [24] 1759 	pop	ar7
                                   1760 ;	enc.c:217: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      002C39 7C 00            [12] 1761 	mov	r4,#0x00
      002C3B C0 05            [24] 1762 	push	ar5
      002C3D C0 06            [24] 1763 	push	ar6
      002C3F C0 07            [24] 1764 	push	ar7
      002C41 C0 04            [24] 1765 	push	ar4
      002C43 74 F4            [12] 1766 	mov	a,#___str_10
      002C45 C0 E0            [24] 1767 	push	acc
      002C47 74 5E            [12] 1768 	mov	a,#(___str_10 >> 8)
      002C49 C0 E0            [24] 1769 	push	acc
      002C4B 74 80            [12] 1770 	mov	a,#0x80
      002C4D C0 E0            [24] 1771 	push	acc
      002C4F 12 52 65         [24] 1772 	lcall	_printf
      002C52 E5 81            [12] 1773 	mov	a,sp
      002C54 24 F9            [12] 1774 	add	a,#0xf9
      002C56 F5 81            [12] 1775 	mov	sp,a
                                   1776 ;	enc.c:218: }
      002C58 22               [24] 1777 	ret
                                   1778 ;------------------------------------------------------------
                                   1779 ;Allocation info for local variables in function 'enc_eth_read'
                                   1780 ;------------------------------------------------------------
                                   1781 ;bank                      Allocated with name '_enc_eth_read_PARM_2'
                                   1782 ;addr                      Allocated with name '_enc_eth_read_addr_10000_127'
                                   1783 ;data                      Allocated with name '_enc_eth_read_data_10001_130'
                                   1784 ;------------------------------------------------------------
                                   1785 ;	enc.c:220: uint8_t enc_eth_read(uint8_t addr, uint8_t bank) {
                                   1786 ;	-----------------------------------------
                                   1787 ;	 function enc_eth_read
                                   1788 ;	-----------------------------------------
      002C59                       1789 _enc_eth_read:
      002C59 E5 82            [12] 1790 	mov	a,dpl
      002C5B 90 01 6E         [24] 1791 	mov	dptr,#_enc_eth_read_addr_10000_127
      002C5E F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	enc.c:221: if (addr > ENC_MAC_MAX_ADDRESS) {
      002C5F E0               [24] 1794 	movx	a,@dptr
      002C60 FF               [12] 1795 	mov  r7,a
      002C61 24 E0            [12] 1796 	add	a,#0xff - 0x1f
      002C63 50 19            [24] 1797 	jnc	00102$
                                   1798 ;	enc.c:222: printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
      002C65 C0 07            [24] 1799 	push	ar7
      002C67 74 71            [12] 1800 	mov	a,#___str_7
      002C69 C0 E0            [24] 1801 	push	acc
      002C6B 74 5E            [12] 1802 	mov	a,#(___str_7 >> 8)
      002C6D C0 E0            [24] 1803 	push	acc
      002C6F 74 80            [12] 1804 	mov	a,#0x80
      002C71 C0 E0            [24] 1805 	push	acc
      002C73 12 52 65         [24] 1806 	lcall	_printf
      002C76 15 81            [12] 1807 	dec	sp
      002C78 15 81            [12] 1808 	dec	sp
      002C7A 15 81            [12] 1809 	dec	sp
      002C7C D0 07            [24] 1810 	pop	ar7
      002C7E                       1811 00102$:
                                   1812 ;	enc.c:225: enc_select_reg_bank(bank);
      002C7E 90 01 6D         [24] 1813 	mov	dptr,#_enc_eth_read_PARM_2
      002C81 E0               [24] 1814 	movx	a,@dptr
      002C82 F5 82            [12] 1815 	mov	dpl,a
      002C84 C0 07            [24] 1816 	push	ar7
      002C86 12 25 D9         [24] 1817 	lcall	_enc_select_reg_bank
      002C89 D0 07            [24] 1818 	pop	ar7
                                   1819 ;	enc.c:227: CS_LOW;
                                   1820 ;	assignBit
      002C8B C2 91            [12] 1821 	clr	_P1_1
                                   1822 ;	enc.c:230: SPI_WriteByte(addr);           // Send the address
      002C8D 8F 82            [24] 1823 	mov	dpl, r7
      002C8F 12 31 41         [24] 1824 	lcall	_SPI_WriteByte
                                   1825 ;	enc.c:232: uint8_t data = SPI_ReadByte(); // Read the data
      002C92 12 31 50         [24] 1826 	lcall	_SPI_ReadByte
      002C95 AF 82            [24] 1827 	mov	r7, dpl
                                   1828 ;	enc.c:235: CS_HIGH;
                                   1829 ;	assignBit
      002C97 D2 91            [12] 1830 	setb	_P1_1
                                   1831 ;	enc.c:237: return data;
      002C99 8F 82            [24] 1832 	mov	dpl, r7
                                   1833 ;	enc.c:238: }
      002C9B 22               [24] 1834 	ret
                                   1835 ;------------------------------------------------------------
                                   1836 ;Allocation info for local variables in function 'enc_reset'
                                   1837 ;------------------------------------------------------------
                                   1838 ;	enc.c:240: void enc_reset(void) {
                                   1839 ;	-----------------------------------------
                                   1840 ;	 function enc_reset
                                   1841 ;	-----------------------------------------
      002C9C                       1842 _enc_reset:
                                   1843 ;	enc.c:241: CS_LOW;
                                   1844 ;	assignBit
      002C9C C2 91            [12] 1845 	clr	_P1_1
                                   1846 ;	enc.c:243: SPI_WriteByte(0XFF);
      002C9E 75 82 FF         [24] 1847 	mov	dpl, #0xff
      002CA1 12 31 41         [24] 1848 	lcall	_SPI_WriteByte
                                   1849 ;	enc.c:245: CS_HIGH;
                                   1850 ;	assignBit
      002CA4 D2 91            [12] 1851 	setb	_P1_1
                                   1852 ;	enc.c:247: }
      002CA6 22               [24] 1853 	ret
                                   1854 ;------------------------------------------------------------
                                   1855 ;Allocation info for local variables in function 'enc_init'
                                   1856 ;------------------------------------------------------------
                                   1857 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1858 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1859 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1860 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1861 ;mac                       Allocated with name '_enc_init_mac_10000_133'
                                   1862 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_135'
                                   1863 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_135'
                                   1864 ;tx_start                  Allocated with name '_enc_init_tx_start_10001_135'
                                   1865 ;tx_end                    Allocated with name '_enc_init_tx_end_10001_135'
                                   1866 ;read_macon1               Allocated with name '_enc_init_read_macon1_10002_136'
                                   1867 ;rev                       Allocated with name '_enc_init_rev_10003_137'
                                   1868 ;------------------------------------------------------------
                                   1869 ;	enc.c:251: void enc_init(const uint8_t *mac) {
                                   1870 ;	-----------------------------------------
                                   1871 ;	 function enc_init
                                   1872 ;	-----------------------------------------
      002CA7                       1873 _enc_init:
      002CA7 AF F0            [24] 1874 	mov	r7,b
      002CA9 AE 83            [24] 1875 	mov	r6,dph
      002CAB E5 82            [12] 1876 	mov	a,dpl
      002CAD 90 01 6F         [24] 1877 	mov	dptr,#_enc_init_mac_10000_133
      002CB0 F0               [24] 1878 	movx	@dptr,a
      002CB1 EE               [12] 1879 	mov	a,r6
      002CB2 A3               [24] 1880 	inc	dptr
      002CB3 F0               [24] 1881 	movx	@dptr,a
      002CB4 EF               [12] 1882 	mov	a,r7
      002CB5 A3               [24] 1883 	inc	dptr
      002CB6 F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	enc.c:253: enc_reset();
      002CB7 12 2C 9C         [24] 1886 	lcall	_enc_reset
                                   1887 ;	enc.c:256: while (!(enc_mac_read(ENC_ESTAT, 0) & 0x01))
      002CBA                       1888 00101$:
      002CBA 90 01 66         [24] 1889 	mov	dptr,#_enc_mac_read_PARM_2
      002CBD E4               [12] 1890 	clr	a
      002CBE F0               [24] 1891 	movx	@dptr,a
      002CBF 75 82 1D         [24] 1892 	mov	dpl, #0x1d
      002CC2 12 2A A5         [24] 1893 	lcall	_enc_mac_read
      002CC5 E5 82            [12] 1894 	mov	a, dpl
      002CC7 30 E0 F0         [24] 1895 	jnb	acc.0,00101$
                                   1896 ;	enc.c:265: enc_buffer_init(rx_start, rx_end);
      002CCA 90 01 54         [24] 1897 	mov	dptr,#_enc_buffer_init_PARM_2
      002CCD 74 FF            [12] 1898 	mov	a,#0xff
      002CCF F0               [24] 1899 	movx	@dptr,a
      002CD0 74 1B            [12] 1900 	mov	a,#0x1b
      002CD2 A3               [24] 1901 	inc	dptr
      002CD3 F0               [24] 1902 	movx	@dptr,a
      002CD4 90 00 00         [24] 1903 	mov	dptr,#0x0000
      002CD7 12 26 97         [24] 1904 	lcall	_enc_buffer_init
                                   1905 ;	enc.c:266: enc_control_write(0, ENC_ETXSTL, (uint8_t) (tx_start & 0xFF)); // Low byte
      002CDA 90 01 50         [24] 1906 	mov	dptr,#_enc_control_write_PARM_2
      002CDD 74 04            [12] 1907 	mov	a,#0x04
      002CDF F0               [24] 1908 	movx	@dptr,a
      002CE0 90 01 51         [24] 1909 	mov	dptr,#_enc_control_write_PARM_3
      002CE3 E4               [12] 1910 	clr	a
      002CE4 F0               [24] 1911 	movx	@dptr,a
      002CE5 90 00 00         [24] 1912 	mov	dptr,#0x0000
      002CE8 12 26 62         [24] 1913 	lcall	_enc_control_write
                                   1914 ;	enc.c:267: enc_control_write(0, ENC_ETXSTH, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte
      002CEB 90 01 50         [24] 1915 	mov	dptr,#_enc_control_write_PARM_2
      002CEE 74 05            [12] 1916 	mov	a,#0x05
      002CF0 F0               [24] 1917 	movx	@dptr,a
      002CF1 90 01 51         [24] 1918 	mov	dptr,#_enc_control_write_PARM_3
      002CF4 74 1C            [12] 1919 	mov	a,#0x1c
      002CF6 F0               [24] 1920 	movx	@dptr,a
      002CF7 90 00 00         [24] 1921 	mov	dptr,#0x0000
      002CFA 12 26 62         [24] 1922 	lcall	_enc_control_write
                                   1923 ;	enc.c:270: enc_control_write(0, ENC_ETXNDL, (uint8_t) (tx_end & 0xFF)); // Low byte
      002CFD 90 01 50         [24] 1924 	mov	dptr,#_enc_control_write_PARM_2
      002D00 74 06            [12] 1925 	mov	a,#0x06
      002D02 F0               [24] 1926 	movx	@dptr,a
      002D03 90 01 51         [24] 1927 	mov	dptr,#_enc_control_write_PARM_3
      002D06 74 FF            [12] 1928 	mov	a,#0xff
      002D08 F0               [24] 1929 	movx	@dptr,a
      002D09 90 00 00         [24] 1930 	mov	dptr,#0x0000
      002D0C 12 26 62         [24] 1931 	lcall	_enc_control_write
                                   1932 ;	enc.c:271: enc_control_write(0, ENC_ETXNDH, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
      002D0F 90 01 50         [24] 1933 	mov	dptr,#_enc_control_write_PARM_2
      002D12 74 07            [12] 1934 	mov	a,#0x07
      002D14 F0               [24] 1935 	movx	@dptr,a
      002D15 90 01 51         [24] 1936 	mov	dptr,#_enc_control_write_PARM_3
      002D18 74 1F            [12] 1937 	mov	a,#0x1f
      002D1A F0               [24] 1938 	movx	@dptr,a
      002D1B 90 00 00         [24] 1939 	mov	dptr,#0x0000
      002D1E 12 26 62         [24] 1940 	lcall	_enc_control_write
                                   1941 ;	enc.c:279: enc_control_write(1, ERXFCON, 0xB1);// crcen,ucen,pcen,bcen
      002D21 90 01 50         [24] 1942 	mov	dptr,#_enc_control_write_PARM_2
      002D24 74 18            [12] 1943 	mov	a,#0x18
      002D26 F0               [24] 1944 	movx	@dptr,a
      002D27 90 01 51         [24] 1945 	mov	dptr,#_enc_control_write_PARM_3
      002D2A 74 B1            [12] 1946 	mov	a,#0xb1
      002D2C F0               [24] 1947 	movx	@dptr,a
      002D2D 90 00 01         [24] 1948 	mov	dptr,#0x0001
      002D30 12 26 62         [24] 1949 	lcall	_enc_control_write
                                   1950 ;	enc.c:280: enc_control_write(1, EPMM0, 0x3F); //pattern match
      002D33 90 01 50         [24] 1951 	mov	dptr,#_enc_control_write_PARM_2
      002D36 74 08            [12] 1952 	mov	a,#0x08
      002D38 F0               [24] 1953 	movx	@dptr,a
      002D39 90 01 51         [24] 1954 	mov	dptr,#_enc_control_write_PARM_3
      002D3C 74 3F            [12] 1955 	mov	a,#0x3f
      002D3E F0               [24] 1956 	movx	@dptr,a
      002D3F 90 00 01         [24] 1957 	mov	dptr,#0x0001
      002D42 12 26 62         [24] 1958 	lcall	_enc_control_write
                                   1959 ;	enc.c:281: enc_control_write(1, EPMM1, 0x30); //pattern match
      002D45 90 01 50         [24] 1960 	mov	dptr,#_enc_control_write_PARM_2
      002D48 74 09            [12] 1961 	mov	a,#0x09
      002D4A F0               [24] 1962 	movx	@dptr,a
      002D4B 90 01 51         [24] 1963 	mov	dptr,#_enc_control_write_PARM_3
      002D4E 74 30            [12] 1964 	mov	a,#0x30
      002D50 F0               [24] 1965 	movx	@dptr,a
      002D51 90 00 01         [24] 1966 	mov	dptr,#0x0001
      002D54 12 26 62         [24] 1967 	lcall	_enc_control_write
                                   1968 ;	enc.c:282: enc_control_write(1, EPMCSL, 0xF9); //pattern match
      002D57 90 01 50         [24] 1969 	mov	dptr,#_enc_control_write_PARM_2
      002D5A 74 10            [12] 1970 	mov	a,#0x10
      002D5C F0               [24] 1971 	movx	@dptr,a
      002D5D 90 01 51         [24] 1972 	mov	dptr,#_enc_control_write_PARM_3
      002D60 74 F9            [12] 1973 	mov	a,#0xf9
      002D62 F0               [24] 1974 	movx	@dptr,a
      002D63 90 00 01         [24] 1975 	mov	dptr,#0x0001
      002D66 12 26 62         [24] 1976 	lcall	_enc_control_write
                                   1977 ;	enc.c:283: enc_control_write(1, EPMCSH, 0xF7); //pattern match
      002D69 90 01 50         [24] 1978 	mov	dptr,#_enc_control_write_PARM_2
      002D6C 74 11            [12] 1979 	mov	a,#0x11
      002D6E F0               [24] 1980 	movx	@dptr,a
      002D6F 90 01 51         [24] 1981 	mov	dptr,#_enc_control_write_PARM_3
      002D72 74 F7            [12] 1982 	mov	a,#0xf7
      002D74 F0               [24] 1983 	movx	@dptr,a
      002D75 90 00 01         [24] 1984 	mov	dptr,#0x0001
      002D78 12 26 62         [24] 1985 	lcall	_enc_control_write
                                   1986 ;	enc.c:286: uint8_t read_macon1 = enc_mac_read(ENC_MACON1, 2); //mac enable for reception
      002D7B 90 01 66         [24] 1987 	mov	dptr,#_enc_mac_read_PARM_2
      002D7E 74 02            [12] 1988 	mov	a,#0x02
      002D80 F0               [24] 1989 	movx	@dptr,a
      002D81 75 82 00         [24] 1990 	mov	dpl, #0x00
      002D84 12 2A A5         [24] 1991 	lcall	_enc_mac_read
      002D87 E5 82            [12] 1992 	mov	a, dpl
                                   1993 ;	enc.c:287: enc_control_write(2, ENC_MACON1, (read_macon1 | (1 << 0))); //mac enable for reception
      002D89 44 01            [12] 1994 	orl	a,#0x01
      002D8B FF               [12] 1995 	mov	r7,a
      002D8C 90 01 50         [24] 1996 	mov	dptr,#_enc_control_write_PARM_2
      002D8F E4               [12] 1997 	clr	a
      002D90 F0               [24] 1998 	movx	@dptr,a
      002D91 90 01 51         [24] 1999 	mov	dptr,#_enc_control_write_PARM_3
      002D94 EF               [12] 2000 	mov	a,r7
      002D95 F0               [24] 2001 	movx	@dptr,a
      002D96 90 00 02         [24] 2002 	mov	dptr,#0x0002
      002D99 12 26 62         [24] 2003 	lcall	_enc_control_write
                                   2004 ;	enc.c:289: enc_control_write(2, MACON3, 0x33); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
      002D9C 90 01 50         [24] 2005 	mov	dptr,#_enc_control_write_PARM_2
      002D9F 74 02            [12] 2006 	mov	a,#0x02
      002DA1 F0               [24] 2007 	movx	@dptr,a
      002DA2 90 01 51         [24] 2008 	mov	dptr,#_enc_control_write_PARM_3
      002DA5 74 33            [12] 2009 	mov	a,#0x33
      002DA7 F0               [24] 2010 	movx	@dptr,a
      002DA8 90 00 02         [24] 2011 	mov	dptr,#0x0002
      002DAB 12 26 62         [24] 2012 	lcall	_enc_control_write
                                   2013 ;	enc.c:294: enc_control_write(2, MAIPGL, 0x12); // MAIPGL: Non-back-to-back gap
      002DAE 90 01 50         [24] 2014 	mov	dptr,#_enc_control_write_PARM_2
      002DB1 74 06            [12] 2015 	mov	a,#0x06
      002DB3 F0               [24] 2016 	movx	@dptr,a
      002DB4 90 01 51         [24] 2017 	mov	dptr,#_enc_control_write_PARM_3
      002DB7 74 12            [12] 2018 	mov	a,#0x12
      002DB9 F0               [24] 2019 	movx	@dptr,a
      002DBA 90 00 02         [24] 2020 	mov	dptr,#0x0002
      002DBD 12 26 62         [24] 2021 	lcall	_enc_control_write
                                   2022 ;	enc.c:295: enc_control_write(2, MAIPGH, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      002DC0 90 01 50         [24] 2023 	mov	dptr,#_enc_control_write_PARM_2
      002DC3 74 07            [12] 2024 	mov	a,#0x07
      002DC5 F0               [24] 2025 	movx	@dptr,a
      002DC6 90 01 51         [24] 2026 	mov	dptr,#_enc_control_write_PARM_3
      002DC9 74 0C            [12] 2027 	mov	a,#0x0c
      002DCB F0               [24] 2028 	movx	@dptr,a
      002DCC 90 00 02         [24] 2029 	mov	dptr,#0x0002
      002DCF 12 26 62         [24] 2030 	lcall	_enc_control_write
                                   2031 ;	enc.c:297: enc_control_write(2, MABBIPG, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      002DD2 90 01 50         [24] 2032 	mov	dptr,#_enc_control_write_PARM_2
      002DD5 74 04            [12] 2033 	mov	a,#0x04
      002DD7 F0               [24] 2034 	movx	@dptr,a
      002DD8 90 01 51         [24] 2035 	mov	dptr,#_enc_control_write_PARM_3
      002DDB 74 12            [12] 2036 	mov	a,#0x12
      002DDD F0               [24] 2037 	movx	@dptr,a
      002DDE 90 00 02         [24] 2038 	mov	dptr,#0x0002
      002DE1 12 26 62         [24] 2039 	lcall	_enc_control_write
                                   2040 ;	enc.c:299: enc_control_write(2, MACON4, 0x40); // MACON4: IEEE compliance00
      002DE4 90 01 50         [24] 2041 	mov	dptr,#_enc_control_write_PARM_2
      002DE7 74 03            [12] 2042 	mov	a,#0x03
      002DE9 F0               [24] 2043 	movx	@dptr,a
      002DEA 90 01 51         [24] 2044 	mov	dptr,#_enc_control_write_PARM_3
      002DED 74 40            [12] 2045 	mov	a,#0x40
      002DEF F0               [24] 2046 	movx	@dptr,a
      002DF0 90 00 02         [24] 2047 	mov	dptr,#0x0002
      002DF3 12 26 62         [24] 2048 	lcall	_enc_control_write
                                   2049 ;	enc.c:302: enc_control_write(2, MAMXFLL, 0xDC); // MAMXFLL
      002DF6 90 01 50         [24] 2050 	mov	dptr,#_enc_control_write_PARM_2
      002DF9 74 0A            [12] 2051 	mov	a,#0x0a
      002DFB F0               [24] 2052 	movx	@dptr,a
      002DFC 90 01 51         [24] 2053 	mov	dptr,#_enc_control_write_PARM_3
      002DFF 74 DC            [12] 2054 	mov	a,#0xdc
      002E01 F0               [24] 2055 	movx	@dptr,a
      002E02 90 00 02         [24] 2056 	mov	dptr,#0x0002
      002E05 12 26 62         [24] 2057 	lcall	_enc_control_write
                                   2058 ;	enc.c:303: enc_control_write(2, MAMXFLH, 0x05); // MAMXFLH
      002E08 90 01 50         [24] 2059 	mov	dptr,#_enc_control_write_PARM_2
      002E0B 74 0B            [12] 2060 	mov	a,#0x0b
      002E0D F0               [24] 2061 	movx	@dptr,a
      002E0E 90 01 51         [24] 2062 	mov	dptr,#_enc_control_write_PARM_3
      002E11 74 05            [12] 2063 	mov	a,#0x05
      002E13 F0               [24] 2064 	movx	@dptr,a
      002E14 90 00 02         [24] 2065 	mov	dptr,#0x0002
      002E17 12 26 62         [24] 2066 	lcall	_enc_control_write
                                   2067 ;	enc.c:308: enc_control_write(3, ENC_MAADR6, mac[5]); // MAADR6
      002E1A 90 01 6F         [24] 2068 	mov	dptr,#_enc_init_mac_10000_133
      002E1D E0               [24] 2069 	movx	a,@dptr
      002E1E FD               [12] 2070 	mov	r5,a
      002E1F A3               [24] 2071 	inc	dptr
      002E20 E0               [24] 2072 	movx	a,@dptr
      002E21 FE               [12] 2073 	mov	r6,a
      002E22 A3               [24] 2074 	inc	dptr
      002E23 E0               [24] 2075 	movx	a,@dptr
      002E24 FF               [12] 2076 	mov	r7,a
      002E25 74 05            [12] 2077 	mov	a,#0x05
      002E27 2D               [12] 2078 	add	a, r5
      002E28 F5 08            [12] 2079 	mov	_enc_init_sloc0_1_0,a
      002E2A E4               [12] 2080 	clr	a
      002E2B 3E               [12] 2081 	addc	a, r6
      002E2C F5 09            [12] 2082 	mov	(_enc_init_sloc0_1_0 + 1),a
      002E2E 8F 0A            [24] 2083 	mov	(_enc_init_sloc0_1_0 + 2),r7
      002E30 85 08 82         [24] 2084 	mov	dpl,_enc_init_sloc0_1_0
      002E33 85 09 83         [24] 2085 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002E36 85 0A F0         [24] 2086 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002E39 12 5C 87         [24] 2087 	lcall	__gptrget
      002E3C F9               [12] 2088 	mov	r1,a
      002E3D 90 01 50         [24] 2089 	mov	dptr,#_enc_control_write_PARM_2
      002E40 74 01            [12] 2090 	mov	a,#0x01
      002E42 F0               [24] 2091 	movx	@dptr,a
      002E43 90 01 51         [24] 2092 	mov	dptr,#_enc_control_write_PARM_3
      002E46 E9               [12] 2093 	mov	a,r1
      002E47 F0               [24] 2094 	movx	@dptr,a
      002E48 90 00 03         [24] 2095 	mov	dptr,#0x0003
      002E4B C0 07            [24] 2096 	push	ar7
      002E4D C0 06            [24] 2097 	push	ar6
      002E4F C0 05            [24] 2098 	push	ar5
      002E51 12 26 62         [24] 2099 	lcall	_enc_control_write
      002E54 D0 05            [24] 2100 	pop	ar5
      002E56 D0 06            [24] 2101 	pop	ar6
      002E58 D0 07            [24] 2102 	pop	ar7
                                   2103 ;	enc.c:309: enc_control_write(3, ENC_MAADR5, mac[4]); // MAADR5
      002E5A 74 04            [12] 2104 	mov	a,#0x04
      002E5C 2D               [12] 2105 	add	a, r5
      002E5D F5 0B            [12] 2106 	mov	_enc_init_sloc1_1_0,a
      002E5F E4               [12] 2107 	clr	a
      002E60 3E               [12] 2108 	addc	a, r6
      002E61 F5 0C            [12] 2109 	mov	(_enc_init_sloc1_1_0 + 1),a
      002E63 8F 0D            [24] 2110 	mov	(_enc_init_sloc1_1_0 + 2),r7
      002E65 85 0B 82         [24] 2111 	mov	dpl,_enc_init_sloc1_1_0
      002E68 85 0C 83         [24] 2112 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002E6B 85 0D F0         [24] 2113 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002E6E 12 5C 87         [24] 2114 	lcall	__gptrget
      002E71 FB               [12] 2115 	mov	r3,a
      002E72 90 01 50         [24] 2116 	mov	dptr,#_enc_control_write_PARM_2
      002E75 E4               [12] 2117 	clr	a
      002E76 F0               [24] 2118 	movx	@dptr,a
      002E77 90 01 51         [24] 2119 	mov	dptr,#_enc_control_write_PARM_3
      002E7A EB               [12] 2120 	mov	a,r3
      002E7B F0               [24] 2121 	movx	@dptr,a
      002E7C 90 00 03         [24] 2122 	mov	dptr,#0x0003
      002E7F C0 07            [24] 2123 	push	ar7
      002E81 C0 06            [24] 2124 	push	ar6
      002E83 C0 05            [24] 2125 	push	ar5
      002E85 12 26 62         [24] 2126 	lcall	_enc_control_write
      002E88 D0 05            [24] 2127 	pop	ar5
      002E8A D0 06            [24] 2128 	pop	ar6
      002E8C D0 07            [24] 2129 	pop	ar7
                                   2130 ;	enc.c:310: enc_control_write(3, ENC_MAADR4, mac[3]); // MAADR4
      002E8E 74 03            [12] 2131 	mov	a,#0x03
      002E90 2D               [12] 2132 	add	a, r5
      002E91 F5 0E            [12] 2133 	mov	_enc_init_sloc2_1_0,a
      002E93 E4               [12] 2134 	clr	a
      002E94 3E               [12] 2135 	addc	a, r6
      002E95 F5 0F            [12] 2136 	mov	(_enc_init_sloc2_1_0 + 1),a
      002E97 8F 10            [24] 2137 	mov	(_enc_init_sloc2_1_0 + 2),r7
      002E99 85 0E 82         [24] 2138 	mov	dpl,_enc_init_sloc2_1_0
      002E9C 85 0F 83         [24] 2139 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002E9F 85 10 F0         [24] 2140 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002EA2 12 5C 87         [24] 2141 	lcall	__gptrget
      002EA5 F9               [12] 2142 	mov	r1,a
      002EA6 90 01 50         [24] 2143 	mov	dptr,#_enc_control_write_PARM_2
      002EA9 74 03            [12] 2144 	mov	a,#0x03
      002EAB F0               [24] 2145 	movx	@dptr,a
      002EAC 90 01 51         [24] 2146 	mov	dptr,#_enc_control_write_PARM_3
      002EAF E9               [12] 2147 	mov	a,r1
      002EB0 F0               [24] 2148 	movx	@dptr,a
      002EB1 90 00 03         [24] 2149 	mov	dptr,#0x0003
      002EB4 C0 07            [24] 2150 	push	ar7
      002EB6 C0 06            [24] 2151 	push	ar6
      002EB8 C0 05            [24] 2152 	push	ar5
      002EBA 12 26 62         [24] 2153 	lcall	_enc_control_write
      002EBD D0 05            [24] 2154 	pop	ar5
      002EBF D0 06            [24] 2155 	pop	ar6
      002EC1 D0 07            [24] 2156 	pop	ar7
                                   2157 ;	enc.c:311: enc_control_write(3, ENC_MAADR3, mac[2]); // MAADR3
      002EC3 74 02            [12] 2158 	mov	a,#0x02
      002EC5 2D               [12] 2159 	add	a, r5
      002EC6 F5 11            [12] 2160 	mov	_enc_init_sloc3_1_0,a
      002EC8 E4               [12] 2161 	clr	a
      002EC9 3E               [12] 2162 	addc	a, r6
      002ECA F5 12            [12] 2163 	mov	(_enc_init_sloc3_1_0 + 1),a
      002ECC 8F 13            [24] 2164 	mov	(_enc_init_sloc3_1_0 + 2),r7
      002ECE 85 11 82         [24] 2165 	mov	dpl,_enc_init_sloc3_1_0
      002ED1 85 12 83         [24] 2166 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002ED4 85 13 F0         [24] 2167 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002ED7 12 5C 87         [24] 2168 	lcall	__gptrget
      002EDA FB               [12] 2169 	mov	r3,a
      002EDB 90 01 50         [24] 2170 	mov	dptr,#_enc_control_write_PARM_2
      002EDE 74 02            [12] 2171 	mov	a,#0x02
      002EE0 F0               [24] 2172 	movx	@dptr,a
      002EE1 90 01 51         [24] 2173 	mov	dptr,#_enc_control_write_PARM_3
      002EE4 EB               [12] 2174 	mov	a,r3
      002EE5 F0               [24] 2175 	movx	@dptr,a
      002EE6 90 00 03         [24] 2176 	mov	dptr,#0x0003
      002EE9 C0 07            [24] 2177 	push	ar7
      002EEB C0 06            [24] 2178 	push	ar6
      002EED C0 05            [24] 2179 	push	ar5
      002EEF 12 26 62         [24] 2180 	lcall	_enc_control_write
      002EF2 D0 05            [24] 2181 	pop	ar5
      002EF4 D0 06            [24] 2182 	pop	ar6
      002EF6 D0 07            [24] 2183 	pop	ar7
                                   2184 ;	enc.c:312: enc_control_write(3, ENC_MAADR2, mac[1]); // MAADR2
      002EF8 74 01            [12] 2185 	mov	a,#0x01
      002EFA 2D               [12] 2186 	add	a, r5
      002EFB FA               [12] 2187 	mov	r2,a
      002EFC E4               [12] 2188 	clr	a
      002EFD 3E               [12] 2189 	addc	a, r6
      002EFE FB               [12] 2190 	mov	r3,a
      002EFF 8F 04            [24] 2191 	mov	ar4,r7
      002F01 8A 82            [24] 2192 	mov	dpl,r2
      002F03 8B 83            [24] 2193 	mov	dph,r3
      002F05 8C F0            [24] 2194 	mov	b,r4
      002F07 12 5C 87         [24] 2195 	lcall	__gptrget
      002F0A F9               [12] 2196 	mov	r1,a
      002F0B 90 01 50         [24] 2197 	mov	dptr,#_enc_control_write_PARM_2
      002F0E 74 05            [12] 2198 	mov	a,#0x05
      002F10 F0               [24] 2199 	movx	@dptr,a
      002F11 90 01 51         [24] 2200 	mov	dptr,#_enc_control_write_PARM_3
      002F14 E9               [12] 2201 	mov	a,r1
      002F15 F0               [24] 2202 	movx	@dptr,a
      002F16 90 00 03         [24] 2203 	mov	dptr,#0x0003
      002F19 C0 07            [24] 2204 	push	ar7
      002F1B C0 06            [24] 2205 	push	ar6
      002F1D C0 05            [24] 2206 	push	ar5
      002F1F C0 04            [24] 2207 	push	ar4
      002F21 C0 03            [24] 2208 	push	ar3
      002F23 C0 02            [24] 2209 	push	ar2
      002F25 12 26 62         [24] 2210 	lcall	_enc_control_write
      002F28 D0 02            [24] 2211 	pop	ar2
      002F2A D0 03            [24] 2212 	pop	ar3
      002F2C D0 04            [24] 2213 	pop	ar4
      002F2E D0 05            [24] 2214 	pop	ar5
      002F30 D0 06            [24] 2215 	pop	ar6
      002F32 D0 07            [24] 2216 	pop	ar7
                                   2217 ;	enc.c:313: enc_control_write(3, ENC_MAADR1, mac[0]); // MAADR1
      002F34 8D 82            [24] 2218 	mov	dpl,r5
      002F36 8E 83            [24] 2219 	mov	dph,r6
      002F38 8F F0            [24] 2220 	mov	b,r7
      002F3A 12 5C 87         [24] 2221 	lcall	__gptrget
      002F3D F9               [12] 2222 	mov	r1,a
      002F3E 90 01 50         [24] 2223 	mov	dptr,#_enc_control_write_PARM_2
      002F41 74 04            [12] 2224 	mov	a,#0x04
      002F43 F0               [24] 2225 	movx	@dptr,a
      002F44 90 01 51         [24] 2226 	mov	dptr,#_enc_control_write_PARM_3
      002F47 E9               [12] 2227 	mov	a,r1
      002F48 F0               [24] 2228 	movx	@dptr,a
      002F49 90 00 03         [24] 2229 	mov	dptr,#0x0003
      002F4C C0 07            [24] 2230 	push	ar7
      002F4E C0 06            [24] 2231 	push	ar6
      002F50 C0 05            [24] 2232 	push	ar5
      002F52 C0 04            [24] 2233 	push	ar4
      002F54 C0 03            [24] 2234 	push	ar3
      002F56 C0 02            [24] 2235 	push	ar2
      002F58 12 26 62         [24] 2236 	lcall	_enc_control_write
                                   2237 ;	enc.c:314: enc_phy_write(PHCON1, 0x0100);
      002F5B 90 01 6A         [24] 2238 	mov	dptr,#_enc_phy_write_PARM_2
      002F5E E4               [12] 2239 	clr	a
      002F5F F0               [24] 2240 	movx	@dptr,a
      002F60 04               [12] 2241 	inc	a
      002F61 A3               [24] 2242 	inc	dptr
      002F62 F0               [24] 2243 	movx	@dptr,a
      002F63 75 82 00         [24] 2244 	mov	dpl, #0x00
      002F66 12 2B DE         [24] 2245 	lcall	_enc_phy_write
                                   2246 ;	enc.c:315: enc_phy_write(PHCON2, 0x0100);
      002F69 90 01 6A         [24] 2247 	mov	dptr,#_enc_phy_write_PARM_2
      002F6C E4               [12] 2248 	clr	a
      002F6D F0               [24] 2249 	movx	@dptr,a
      002F6E 04               [12] 2250 	inc	a
      002F6F A3               [24] 2251 	inc	dptr
      002F70 F0               [24] 2252 	movx	@dptr,a
      002F71 75 82 10         [24] 2253 	mov	dpl, #0x10
      002F74 12 2B DE         [24] 2254 	lcall	_enc_phy_write
                                   2255 ;	enc.c:318: enc_control_write(0, ENC_EIE, 0XC0); // reception enable bit
      002F77 90 01 50         [24] 2256 	mov	dptr,#_enc_control_write_PARM_2
      002F7A 74 1B            [12] 2257 	mov	a,#0x1b
      002F7C F0               [24] 2258 	movx	@dptr,a
      002F7D 90 01 51         [24] 2259 	mov	dptr,#_enc_control_write_PARM_3
      002F80 74 C0            [12] 2260 	mov	a,#0xc0
      002F82 F0               [24] 2261 	movx	@dptr,a
      002F83 90 00 00         [24] 2262 	mov	dptr,#0x0000
      002F86 12 26 62         [24] 2263 	lcall	_enc_control_write
                                   2264 ;	enc.c:319: enc_control_write(0, ENC_ECON1, 0X04); // reception enable bit
      002F89 90 01 50         [24] 2265 	mov	dptr,#_enc_control_write_PARM_2
      002F8C 74 1F            [12] 2266 	mov	a,#0x1f
      002F8E F0               [24] 2267 	movx	@dptr,a
      002F8F 90 01 51         [24] 2268 	mov	dptr,#_enc_control_write_PARM_3
      002F92 74 04            [12] 2269 	mov	a,#0x04
      002F94 F0               [24] 2270 	movx	@dptr,a
      002F95 90 00 00         [24] 2271 	mov	dptr,#0x0000
      002F98 12 26 62         [24] 2272 	lcall	_enc_control_write
                                   2273 ;	enc.c:320: uint8_t rev = enc_eth_read(ENC_EREVID,3);
      002F9B 90 01 6D         [24] 2274 	mov	dptr,#_enc_eth_read_PARM_2
      002F9E 74 03            [12] 2275 	mov	a,#0x03
      002FA0 F0               [24] 2276 	movx	@dptr,a
      002FA1 75 82 12         [24] 2277 	mov	dpl, #0x12
      002FA4 12 2C 59         [24] 2278 	lcall	_enc_eth_read
                                   2279 ;	enc.c:325: printf("\nENC28J60 Initialization Complete.\n");
      002FA7 74 1D            [12] 2280 	mov	a,#___str_11
      002FA9 C0 E0            [24] 2281 	push	acc
      002FAB 74 5F            [12] 2282 	mov	a,#(___str_11 >> 8)
      002FAD C0 E0            [24] 2283 	push	acc
      002FAF 74 80            [12] 2284 	mov	a,#0x80
      002FB1 C0 E0            [24] 2285 	push	acc
      002FB3 12 52 65         [24] 2286 	lcall	_printf
      002FB6 15 81            [12] 2287 	dec	sp
      002FB8 15 81            [12] 2288 	dec	sp
      002FBA 15 81            [12] 2289 	dec	sp
      002FBC D0 02            [24] 2290 	pop	ar2
      002FBE D0 03            [24] 2291 	pop	ar3
      002FC0 D0 04            [24] 2292 	pop	ar4
      002FC2 D0 05            [24] 2293 	pop	ar5
      002FC4 D0 06            [24] 2294 	pop	ar6
      002FC6 D0 07            [24] 2295 	pop	ar7
                                   2296 ;	enc.c:327: mac[2], mac[3], mac[4], mac[5]);
      002FC8 85 08 82         [24] 2297 	mov	dpl,_enc_init_sloc0_1_0
      002FCB 85 09 83         [24] 2298 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002FCE 85 0A F0         [24] 2299 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002FD1 12 5C 87         [24] 2300 	lcall	__gptrget
      002FD4 F9               [12] 2301 	mov	r1,a
      002FD5 89 08            [24] 2302 	mov	_enc_init_sloc0_1_0,r1
      002FD7 75 09 00         [24] 2303 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      002FDA 85 0B 82         [24] 2304 	mov	dpl,_enc_init_sloc1_1_0
      002FDD 85 0C 83         [24] 2305 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002FE0 85 0D F0         [24] 2306 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002FE3 12 5C 87         [24] 2307 	lcall	__gptrget
      002FE6 F9               [12] 2308 	mov	r1,a
      002FE7 89 0B            [24] 2309 	mov	_enc_init_sloc1_1_0,r1
      002FE9 75 0C 00         [24] 2310 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      002FEC 85 0E 82         [24] 2311 	mov	dpl,_enc_init_sloc2_1_0
      002FEF 85 0F 83         [24] 2312 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002FF2 85 10 F0         [24] 2313 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002FF5 12 5C 87         [24] 2314 	lcall	__gptrget
      002FF8 F9               [12] 2315 	mov	r1,a
      002FF9 89 0E            [24] 2316 	mov	_enc_init_sloc2_1_0,r1
      002FFB 75 0F 00         [24] 2317 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002FFE 85 11 82         [24] 2318 	mov	dpl,_enc_init_sloc3_1_0
      003001 85 12 83         [24] 2319 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      003004 85 13 F0         [24] 2320 	mov	b,(_enc_init_sloc3_1_0 + 2)
      003007 12 5C 87         [24] 2321 	lcall	__gptrget
      00300A F8               [12] 2322 	mov	r0,a
      00300B 79 00            [12] 2323 	mov	r1,#0x00
                                   2324 ;	enc.c:326: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      00300D 8A 82            [24] 2325 	mov	dpl,r2
      00300F 8B 83            [24] 2326 	mov	dph,r3
      003011 8C F0            [24] 2327 	mov	b,r4
      003013 12 5C 87         [24] 2328 	lcall	__gptrget
      003016 FA               [12] 2329 	mov	r2,a
      003017 7C 00            [12] 2330 	mov	r4,#0x00
      003019 8D 82            [24] 2331 	mov	dpl,r5
      00301B 8E 83            [24] 2332 	mov	dph,r6
      00301D 8F F0            [24] 2333 	mov	b,r7
      00301F 12 5C 87         [24] 2334 	lcall	__gptrget
      003022 FD               [12] 2335 	mov	r5,a
      003023 7F 00            [12] 2336 	mov	r7,#0x00
      003025 C0 08            [24] 2337 	push	_enc_init_sloc0_1_0
      003027 C0 09            [24] 2338 	push	(_enc_init_sloc0_1_0 + 1)
      003029 C0 0B            [24] 2339 	push	_enc_init_sloc1_1_0
      00302B C0 0C            [24] 2340 	push	(_enc_init_sloc1_1_0 + 1)
      00302D C0 0E            [24] 2341 	push	_enc_init_sloc2_1_0
      00302F C0 0F            [24] 2342 	push	(_enc_init_sloc2_1_0 + 1)
      003031 C0 00            [24] 2343 	push	ar0
      003033 C0 01            [24] 2344 	push	ar1
      003035 C0 02            [24] 2345 	push	ar2
      003037 C0 04            [24] 2346 	push	ar4
      003039 C0 05            [24] 2347 	push	ar5
      00303B C0 07            [24] 2348 	push	ar7
      00303D 74 41            [12] 2349 	mov	a,#___str_12
      00303F C0 E0            [24] 2350 	push	acc
      003041 74 5F            [12] 2351 	mov	a,#(___str_12 >> 8)
      003043 C0 E0            [24] 2352 	push	acc
      003045 74 80            [12] 2353 	mov	a,#0x80
      003047 C0 E0            [24] 2354 	push	acc
      003049 12 52 65         [24] 2355 	lcall	_printf
      00304C E5 81            [12] 2356 	mov	a,sp
      00304E 24 F1            [12] 2357 	add	a,#0xf1
      003050 F5 81            [12] 2358 	mov	sp,a
                                   2359 ;	enc.c:328: }
      003052 22               [24] 2360 	ret
                                   2361 ;------------------------------------------------------------
                                   2362 ;Allocation info for local variables in function 'enc_bit_set'
                                   2363 ;------------------------------------------------------------
                                   2364 ;mask                      Allocated with name '_enc_bit_set_PARM_2'
                                   2365 ;addr                      Allocated with name '_enc_bit_set_addr_10000_139'
                                   2366 ;opcode                    Allocated with name '_enc_bit_set_opcode_10000_140'
                                   2367 ;------------------------------------------------------------
                                   2368 ;	enc.c:330: void enc_bit_set(uint8_t addr, uint8_t mask) {
                                   2369 ;	-----------------------------------------
                                   2370 ;	 function enc_bit_set
                                   2371 ;	-----------------------------------------
      003053                       2372 _enc_bit_set:
      003053 E5 82            [12] 2373 	mov	a,dpl
      003055 90 01 73         [24] 2374 	mov	dptr,#_enc_bit_set_addr_10000_139
      003058 F0               [24] 2375 	movx	@dptr,a
                                   2376 ;	enc.c:331: uint8_t opcode = BIT_FIELD_SET_OPCODE | addr; // BFS opcode
      003059 E0               [24] 2377 	movx	a,@dptr
      00305A 44 80            [12] 2378 	orl	a,#0x80
      00305C FF               [12] 2379 	mov	r7,a
                                   2380 ;	enc.c:332: CS_LOW;   // Pull CS Low
                                   2381 ;	assignBit
      00305D C2 91            [12] 2382 	clr	_P1_1
                                   2383 ;	enc.c:333: SPI_WriteByte(opcode);
      00305F 8F 82            [24] 2384 	mov	dpl, r7
      003061 12 31 41         [24] 2385 	lcall	_SPI_WriteByte
                                   2386 ;	enc.c:334: SPI_WriteByte(mask);          // Set the specified bits
      003064 90 01 72         [24] 2387 	mov	dptr,#_enc_bit_set_PARM_2
      003067 E0               [24] 2388 	movx	a,@dptr
      003068 F5 82            [12] 2389 	mov	dpl,a
      00306A 12 31 41         [24] 2390 	lcall	_SPI_WriteByte
                                   2391 ;	enc.c:335: CS_HIGH;    // Pull CS High
                                   2392 ;	assignBit
      00306D D2 91            [12] 2393 	setb	_P1_1
                                   2394 ;	enc.c:336: }
      00306F 22               [24] 2395 	ret
                                   2396 ;------------------------------------------------------------
                                   2397 ;Allocation info for local variables in function 'enc_bit_clear'
                                   2398 ;------------------------------------------------------------
                                   2399 ;mask                      Allocated with name '_enc_bit_clear_PARM_2'
                                   2400 ;addr                      Allocated with name '_enc_bit_clear_addr_10000_141'
                                   2401 ;opcode                    Allocated with name '_enc_bit_clear_opcode_10000_142'
                                   2402 ;------------------------------------------------------------
                                   2403 ;	enc.c:338: void enc_bit_clear(uint8_t addr, uint8_t mask) {
                                   2404 ;	-----------------------------------------
                                   2405 ;	 function enc_bit_clear
                                   2406 ;	-----------------------------------------
      003070                       2407 _enc_bit_clear:
      003070 E5 82            [12] 2408 	mov	a,dpl
      003072 90 01 75         [24] 2409 	mov	dptr,#_enc_bit_clear_addr_10000_141
      003075 F0               [24] 2410 	movx	@dptr,a
                                   2411 ;	enc.c:339: uint8_t opcode = BIT_FIELD_CLEAR_OPCODE | addr; // BFC opcode
      003076 E0               [24] 2412 	movx	a,@dptr
      003077 44 A0            [12] 2413 	orl	a,#0xa0
      003079 FF               [12] 2414 	mov	r7,a
                                   2415 ;	enc.c:340: CS_LOW;  // Pull CS Low
                                   2416 ;	assignBit
      00307A C2 91            [12] 2417 	clr	_P1_1
                                   2418 ;	enc.c:341: SPI_WriteByte(opcode);
      00307C 8F 82            [24] 2419 	mov	dpl, r7
      00307E 12 31 41         [24] 2420 	lcall	_SPI_WriteByte
                                   2421 ;	enc.c:342: SPI_WriteByte(mask);          // Clear the specified bits
      003081 90 01 74         [24] 2422 	mov	dptr,#_enc_bit_clear_PARM_2
      003084 E0               [24] 2423 	movx	a,@dptr
      003085 F5 82            [12] 2424 	mov	dpl,a
      003087 12 31 41         [24] 2425 	lcall	_SPI_WriteByte
                                   2426 ;	enc.c:343: CS_HIGH;    // Pull CS High
                                   2427 ;	assignBit
      00308A D2 91            [12] 2428 	setb	_P1_1
                                   2429 ;	enc.c:344: }
      00308C 22               [24] 2430 	ret
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
                                   2433 	.area CONST   (CODE)
      005D74                       2434 ___str_0:
      005D74 77 72 6F 6E 67 20 62  2435 	.ascii "wrong bank"
             61 6E 6B
      005D7E 00                    2436 	.db 0x00
                                   2437 	.area CSEG    (CODE)
                                   2438 	.area CONST   (CODE)
      005D7F                       2439 ___str_1:
      005D7F 0A                    2440 	.db 0x0a
      005D80 49 6E 76 61 6C 69 64  2441 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      005DAE 0A                    2442 	.db 0x0a
      005DAF 00                    2443 	.db 0x00
                                   2444 	.area CSEG    (CODE)
                                   2445 	.area CONST   (CODE)
      005DB0                       2446 ___str_2:
      005DB0 0A                    2447 	.db 0x0a
      005DB1 42 75 66 66 65 72 20  2448 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      005DDD 0A                    2449 	.db 0x0a
      005DDE 00                    2450 	.db 0x00
                                   2451 	.area CSEG    (CODE)
                                   2452 	.area CONST   (CODE)
      005DDF                       2453 ___str_3:
      005DDF 0A                    2454 	.db 0x0a
      005DE0 0D                    2455 	.db 0x0d
      005DE1 49 6E 76 61 6C 69 64  2456 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      005DFC 0A                    2457 	.db 0x0a
      005DFD 0D                    2458 	.db 0x0d
      005DFE 00                    2459 	.db 0x00
                                   2460 	.area CSEG    (CODE)
                                   2461 	.area CONST   (CODE)
      005DFF                       2462 ___str_4:
      005DFF 0A                    2463 	.db 0x0a
      005E00 0D                    2464 	.db 0x0d
      005E01 49 6E 76 61 6C 69 64  2465 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      005E16 0A                    2466 	.db 0x0a
      005E17 0D                    2467 	.db 0x0d
      005E18 00                    2468 	.db 0x00
                                   2469 	.area CSEG    (CODE)
                                   2470 	.area CONST   (CODE)
      005E19                       2471 ___str_5:
      005E19 0A                    2472 	.db 0x0a
      005E1A 49 6E 76 61 6C 69 64  2473 	.ascii "Invalid TX Address: Start 0x%04X, Size %d"
             20 54 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      005E43 0A                    2474 	.db 0x0a
      005E44 00                    2475 	.db 0x00
                                   2476 	.area CSEG    (CODE)
                                   2477 	.area CONST   (CODE)
      005E45                       2478 ___str_6:
      005E45 0A                    2479 	.db 0x0a
      005E46 49 6E 76 61 6C 69 64  2480 	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
             20 52 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      005E6F 0A                    2481 	.db 0x0a
      005E70 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      005E71                       2485 ___str_7:
      005E71 0A                    2486 	.db 0x0a
      005E72 49 6E 76 61 6C 69 64  2487 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      005EA7 0A                    2488 	.db 0x0a
      005EA8 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      005EA9                       2492 ___str_8:
      005EA9 52 65 61 64 3A 20 41  2493 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      005ECA 0A                    2494 	.db 0x0a
      005ECB 00                    2495 	.db 0x00
                                   2496 	.area CSEG    (CODE)
                                   2497 	.area CONST   (CODE)
      005ECC                       2498 ___str_9:
      005ECC 50 48 59 20 52 65 61  2499 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      005EF1 0A                    2500 	.db 0x0a
      005EF2 0D                    2501 	.db 0x0d
      005EF3 00                    2502 	.db 0x00
                                   2503 	.area CSEG    (CODE)
                                   2504 	.area CONST   (CODE)
      005EF4                       2505 ___str_10:
      005EF4 50 48 59 20 57 72 69  2506 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      005F1A 0A                    2507 	.db 0x0a
      005F1B 0D                    2508 	.db 0x0d
      005F1C 00                    2509 	.db 0x00
                                   2510 	.area CSEG    (CODE)
                                   2511 	.area CONST   (CODE)
      005F1D                       2512 ___str_11:
      005F1D 0A                    2513 	.db 0x0a
      005F1E 45 4E 43 32 38 4A 36  2514 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      005F3F 0A                    2515 	.db 0x0a
      005F40 00                    2516 	.db 0x00
                                   2517 	.area CSEG    (CODE)
                                   2518 	.area CONST   (CODE)
      005F41                       2519 ___str_12:
      005F41 4D 41 43 20 41 64 64  2520 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      005F6B 0A                    2521 	.db 0x0a
      005F6C 00                    2522 	.db 0x00
                                   2523 	.area CSEG    (CODE)
                                   2524 	.area XINIT   (CODE)
                                   2525 	.area CABS    (ABS,CODE)
