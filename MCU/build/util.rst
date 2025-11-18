                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module util
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _S0_R_FIFO0
                                     21 	.globl _S0_R_FIFO1
                                     22 	.globl _S0_T_FIFO
                                     23 	.globl _S0_FREE
                                     24 	.globl _S0_IF_BYTE
                                     25 	.globl _S0_IF_FIRST
                                     26 	.globl _S0_IF_OV
                                     27 	.globl _S0_FST_ACT
                                     28 	.globl _CP_RL2
                                     29 	.globl _C_T2
                                     30 	.globl _TR2
                                     31 	.globl _EXEN2
                                     32 	.globl _TCLK
                                     33 	.globl _RCLK
                                     34 	.globl _EXF2
                                     35 	.globl _CAP1F
                                     36 	.globl _TF2
                                     37 	.globl _RI
                                     38 	.globl _TI
                                     39 	.globl _RB8
                                     40 	.globl _TB8
                                     41 	.globl _REN
                                     42 	.globl _SM2
                                     43 	.globl _SM1
                                     44 	.globl _SM0
                                     45 	.globl _IT0
                                     46 	.globl _IE0
                                     47 	.globl _IT1
                                     48 	.globl _IE1
                                     49 	.globl _TR0
                                     50 	.globl _TF0
                                     51 	.globl _TR1
                                     52 	.globl _TF1
                                     53 	.globl _RXD1_
                                     54 	.globl _LED2
                                     55 	.globl _CAP3_
                                     56 	.globl _PWM3_
                                     57 	.globl _PWM1_
                                     58 	.globl _TXD1_
                                     59 	.globl _TNOW_
                                     60 	.globl _LED3
                                     61 	.globl _PWM2_
                                     62 	.globl _SCS_
                                     63 	.globl _SCK_
                                     64 	.globl _RXD
                                     65 	.globl _TXD
                                     66 	.globl _INT0
                                     67 	.globl _LED0
                                     68 	.globl _INT1
                                     69 	.globl _LED1
                                     70 	.globl _T0
                                     71 	.globl _XCS0
                                     72 	.globl _LEDC
                                     73 	.globl _T1
                                     74 	.globl _DA6
                                     75 	.globl _WR
                                     76 	.globl _RD
                                     77 	.globl _MOSI1
                                     78 	.globl _MISO1
                                     79 	.globl _SCK1
                                     80 	.globl _PWM1
                                     81 	.globl _CAP2_
                                     82 	.globl _T2EX_
                                     83 	.globl _PWM2
                                     84 	.globl _TNOW
                                     85 	.globl _RXD1
                                     86 	.globl _DA7
                                     87 	.globl _TXD1
                                     88 	.globl _CAP1
                                     89 	.globl _T2
                                     90 	.globl _CAP2
                                     91 	.globl _T2EX
                                     92 	.globl _CAP3
                                     93 	.globl _PWM3
                                     94 	.globl _SCS
                                     95 	.globl _MOSI
                                     96 	.globl _MISO
                                     97 	.globl _SCK
                                     98 	.globl _AIN0
                                     99 	.globl _AIN1
                                    100 	.globl _AIN2
                                    101 	.globl _AIN3
                                    102 	.globl _AIN4
                                    103 	.globl _AIN5
                                    104 	.globl _AIN6
                                    105 	.globl _AIN7
                                    106 	.globl _UDTR
                                    107 	.globl _URTS
                                    108 	.globl _RXD_
                                    109 	.globl _TXD_
                                    110 	.globl _UCTS
                                    111 	.globl _UDSR
                                    112 	.globl _URI
                                    113 	.globl _UDCD
                                    114 	.globl _IE_SPI0
                                    115 	.globl _IE_TMR3
                                    116 	.globl _IE_USB
                                    117 	.globl _IE_ADC
                                    118 	.globl _IE_UART1
                                    119 	.globl _IE_PWM1
                                    120 	.globl _IE_GPIO
                                    121 	.globl _IE_WDOG
                                    122 	.globl _PX0
                                    123 	.globl _PT0
                                    124 	.globl _PX1
                                    125 	.globl _PT1
                                    126 	.globl _PS
                                    127 	.globl _PT2
                                    128 	.globl _PL_FLAG
                                    129 	.globl _PH_FLAG
                                    130 	.globl _EX0
                                    131 	.globl _ET0
                                    132 	.globl _EX1
                                    133 	.globl _ET1
                                    134 	.globl _ES
                                    135 	.globl _ET2
                                    136 	.globl _E_DIS
                                    137 	.globl _EA
                                    138 	.globl _P
                                    139 	.globl _F1
                                    140 	.globl _OV
                                    141 	.globl _RS0
                                    142 	.globl _RS1
                                    143 	.globl _F0
                                    144 	.globl _AC
                                    145 	.globl _CY
                                    146 	.globl _USB_DMA_AH
                                    147 	.globl _USB_DMA_AL
                                    148 	.globl _USB_DMA
                                    149 	.globl _UHUB1_CTRL
                                    150 	.globl _UDEV_CTRL
                                    151 	.globl _USB_DEV_AD
                                    152 	.globl _USB_CTRL
                                    153 	.globl _USB_INT_EN
                                    154 	.globl _UEP4_T_LEN
                                    155 	.globl _UEP4_CTRL
                                    156 	.globl _UEP0_T_LEN
                                    157 	.globl _UEP0_CTRL
                                    158 	.globl _USB_HUB_ST
                                    159 	.globl _USB_MIS_ST
                                    160 	.globl _USB_INT_ST
                                    161 	.globl _USB_INT_FG
                                    162 	.globl _UEP3_T_LEN
                                    163 	.globl _UEP3_CTRL
                                    164 	.globl _UEP2_T_LEN
                                    165 	.globl _UEP2_CTRL
                                    166 	.globl _UEP1_T_LEN
                                    167 	.globl _UEP1_CTRL
                                    168 	.globl _USB_RX_LEN
                                    169 	.globl _ADC_EX_SW
                                    170 	.globl _ADC_SETUP
                                    171 	.globl _ADC_FIFO_H
                                    172 	.globl _ADC_FIFO_L
                                    173 	.globl _ADC_FIFO
                                    174 	.globl _ADC_CHANN
                                    175 	.globl _ADC_CTRL
                                    176 	.globl _ADC_STAT
                                    177 	.globl _ADC_CK_SE
                                    178 	.globl _ADC_DMA_CN
                                    179 	.globl _ADC_DMA_AH
                                    180 	.globl _ADC_DMA_AL
                                    181 	.globl _ADC_DMA
                                    182 	.globl _SER1_ADDR
                                    183 	.globl _SER1_MSR
                                    184 	.globl _SER1_LSR
                                    185 	.globl _SER1_MCR
                                    186 	.globl _SER1_LCR
                                    187 	.globl _SER1_IIR
                                    188 	.globl _SER1_IER
                                    189 	.globl _SER1_FIFO
                                    190 	.globl _SPI1_CK_SE
                                    191 	.globl _SPI1_CTRL
                                    192 	.globl _SPI1_DATA
                                    193 	.globl _SPI1_STAT
                                    194 	.globl _SPI0_SETUP
                                    195 	.globl _SPI0_CK_SE
                                    196 	.globl _SPI0_CTRL
                                    197 	.globl _SPI0_DATA
                                    198 	.globl _SPI0_STAT
                                    199 	.globl _PWM_CYCLE
                                    200 	.globl _PWM_CK_SE
                                    201 	.globl _PWM_CTRL
                                    202 	.globl _PWM_DATA
                                    203 	.globl _PWM_DATA2
                                    204 	.globl _T3_FIFO_H
                                    205 	.globl _T3_FIFO_L
                                    206 	.globl _T3_FIFO
                                    207 	.globl _T3_DMA_AH
                                    208 	.globl _T3_DMA_AL
                                    209 	.globl _T3_DMA
                                    210 	.globl _T3_DMA_CN
                                    211 	.globl _T3_CTRL
                                    212 	.globl _T3_STAT
                                    213 	.globl _T3_END_H
                                    214 	.globl _T3_END_L
                                    215 	.globl _T3_END
                                    216 	.globl _T3_COUNT_H
                                    217 	.globl _T3_COUNT_L
                                    218 	.globl _T3_COUNT
                                    219 	.globl _T3_SETUP
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _T2COUNT
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _RCAP2
                                    226 	.globl _T2MOD
                                    227 	.globl _T2CON
                                    228 	.globl _SBUF
                                    229 	.globl _SCON
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _XBUS_SPEED
                                    237 	.globl _XBUS_AUX
                                    238 	.globl _PIN_FUNC
                                    239 	.globl _PORT_CFG
                                    240 	.globl _P5_IN
                                    241 	.globl _P4_PU
                                    242 	.globl _P4_DIR
                                    243 	.globl _P4_IN
                                    244 	.globl _P4_OUT
                                    245 	.globl _P3_PU
                                    246 	.globl _P3_DIR
                                    247 	.globl _P3
                                    248 	.globl _P2_PU
                                    249 	.globl _P2_DIR
                                    250 	.globl _P2
                                    251 	.globl _P1_PU
                                    252 	.globl _P1_DIR
                                    253 	.globl _P1_IE
                                    254 	.globl _P1
                                    255 	.globl _P0_PU
                                    256 	.globl _P0_DIR
                                    257 	.globl _P0
                                    258 	.globl _ROM_CTRL
                                    259 	.globl _ROM_DATA_H
                                    260 	.globl _ROM_DATA_L
                                    261 	.globl _ROM_DATA
                                    262 	.globl _ROM_ADDR_H
                                    263 	.globl _ROM_ADDR_L
                                    264 	.globl _ROM_ADDR
                                    265 	.globl _GPIO_IE
                                    266 	.globl _IP_EX
                                    267 	.globl _IE_EX
                                    268 	.globl _IP
                                    269 	.globl _IE
                                    270 	.globl _WDOG_COUNT
                                    271 	.globl _RESET_KEEP
                                    272 	.globl _WAKE_CTRL
                                    273 	.globl _SLEEP_CTRL
                                    274 	.globl _CLOCK_CFG
                                    275 	.globl _PLL_CFG
                                    276 	.globl _PCON
                                    277 	.globl _GLOBAL_CFG
                                    278 	.globl _SAFE_MOD
                                    279 	.globl _DPH
                                    280 	.globl _DPL
                                    281 	.globl _SP
                                    282 	.globl _B
                                    283 	.globl _ACC
                                    284 	.globl _PSW
                                    285 	.globl _pinMode_PARM_3
                                    286 	.globl _pinMode_PARM_2
                                    287 	.globl _LED_DMA_XL
                                    288 	.globl _LED_DMA_XH
                                    289 	.globl _LED_DMA_CN
                                    290 	.globl _LED_DMA_AL
                                    291 	.globl _LED_DMA_AH
                                    292 	.globl _LED_CK_SE
                                    293 	.globl _LED_DATA
                                    294 	.globl _LED_CTRL
                                    295 	.globl _LED_STAT
                                    296 	.globl _pUEP3_DMA_L
                                    297 	.globl _pUEP3_DMA_H
                                    298 	.globl _UEP3_DMA_H
                                    299 	.globl _UEP3_DMA_L
                                    300 	.globl _UEP3_DMA
                                    301 	.globl _pUEP2_DMA_L
                                    302 	.globl _pUEP2_DMA_H
                                    303 	.globl _UEP2_DMA_H
                                    304 	.globl _UEP2_DMA_L
                                    305 	.globl _UEP2_DMA
                                    306 	.globl _pUEP1_DMA_L
                                    307 	.globl _pUEP1_DMA_H
                                    308 	.globl _UEP1_DMA_L
                                    309 	.globl _UEP1_DMA_H
                                    310 	.globl _pUEP0_DMA_L
                                    311 	.globl _pUEP0_DMA_H
                                    312 	.globl _UEP0_DMA_L
                                    313 	.globl _UEP0_DMA_H
                                    314 	.globl _UEP2_3_MOD
                                    315 	.globl _UEP4_1_MOD
                                    316 	.globl _pLED_DMA_XL
                                    317 	.globl _pLED_DMA_XH
                                    318 	.globl _pLED_DMA_CN
                                    319 	.globl _pLED_DMA_AL
                                    320 	.globl _pLED_DMA_AH
                                    321 	.globl _pLED_CK_SE
                                    322 	.globl _pLED_DATA
                                    323 	.globl _pLED_CTRL
                                    324 	.globl _pLED_STAT
                                    325 	.globl _pUEP2_3_MOD
                                    326 	.globl _pUEP4_1_MOD
                                    327 	.globl _pinMode
                                    328 	.globl _putchar
                                    329 	.globl _getchar
                                    330 	.globl _delayUs
                                    331 	.globl _delay
                                    332 ;--------------------------------------------------------
                                    333 ; special function registers
                                    334 ;--------------------------------------------------------
                                    335 	.area RSEG    (ABS,DATA)
      000000                        336 	.org 0x0000
                           0000D0   337 _PSW	=	0x00d0
                           0000E0   338 _ACC	=	0x00e0
                           0000F0   339 _B	=	0x00f0
                           000081   340 _SP	=	0x0081
                           000082   341 _DPL	=	0x0082
                           000083   342 _DPH	=	0x0083
                           0000A1   343 _SAFE_MOD	=	0x00a1
                           0000B1   344 _GLOBAL_CFG	=	0x00b1
                           000087   345 _PCON	=	0x0087
                           0000B2   346 _PLL_CFG	=	0x00b2
                           0000B3   347 _CLOCK_CFG	=	0x00b3
                           0000EA   348 _SLEEP_CTRL	=	0x00ea
                           0000EB   349 _WAKE_CTRL	=	0x00eb
                           0000FE   350 _RESET_KEEP	=	0x00fe
                           0000FF   351 _WDOG_COUNT	=	0x00ff
                           0000A8   352 _IE	=	0x00a8
                           0000B8   353 _IP	=	0x00b8
                           0000E8   354 _IE_EX	=	0x00e8
                           0000E9   355 _IP_EX	=	0x00e9
                           0000CF   356 _GPIO_IE	=	0x00cf
                           008584   357 _ROM_ADDR	=	0x8584
                           000084   358 _ROM_ADDR_L	=	0x0084
                           000085   359 _ROM_ADDR_H	=	0x0085
                           008F8E   360 _ROM_DATA	=	0x8f8e
                           00008E   361 _ROM_DATA_L	=	0x008e
                           00008F   362 _ROM_DATA_H	=	0x008f
                           000086   363 _ROM_CTRL	=	0x0086
                           000080   364 _P0	=	0x0080
                           0000C4   365 _P0_DIR	=	0x00c4
                           0000C5   366 _P0_PU	=	0x00c5
                           000090   367 _P1	=	0x0090
                           0000B9   368 _P1_IE	=	0x00b9
                           0000BA   369 _P1_DIR	=	0x00ba
                           0000BB   370 _P1_PU	=	0x00bb
                           0000A0   371 _P2	=	0x00a0
                           0000BC   372 _P2_DIR	=	0x00bc
                           0000BD   373 _P2_PU	=	0x00bd
                           0000B0   374 _P3	=	0x00b0
                           0000BE   375 _P3_DIR	=	0x00be
                           0000BF   376 _P3_PU	=	0x00bf
                           0000C0   377 _P4_OUT	=	0x00c0
                           0000C1   378 _P4_IN	=	0x00c1
                           0000C2   379 _P4_DIR	=	0x00c2
                           0000C3   380 _P4_PU	=	0x00c3
                           0000C7   381 _P5_IN	=	0x00c7
                           0000C6   382 _PORT_CFG	=	0x00c6
                           0000CE   383 _PIN_FUNC	=	0x00ce
                           0000A2   384 _XBUS_AUX	=	0x00a2
                           0000FD   385 _XBUS_SPEED	=	0x00fd
                           000088   386 _TCON	=	0x0088
                           000089   387 _TMOD	=	0x0089
                           00008A   388 _TL0	=	0x008a
                           00008B   389 _TL1	=	0x008b
                           00008C   390 _TH0	=	0x008c
                           00008D   391 _TH1	=	0x008d
                           000098   392 _SCON	=	0x0098
                           000099   393 _SBUF	=	0x0099
                           0000C8   394 _T2CON	=	0x00c8
                           0000C9   395 _T2MOD	=	0x00c9
                           00CBCA   396 _RCAP2	=	0xcbca
                           0000CA   397 _RCAP2L	=	0x00ca
                           0000CB   398 _RCAP2H	=	0x00cb
                           00CDCC   399 _T2COUNT	=	0xcdcc
                           0000CC   400 _TL2	=	0x00cc
                           0000CD   401 _TH2	=	0x00cd
                           0000A3   402 _T3_SETUP	=	0x00a3
                           00A5A4   403 _T3_COUNT	=	0xa5a4
                           0000A4   404 _T3_COUNT_L	=	0x00a4
                           0000A5   405 _T3_COUNT_H	=	0x00a5
                           00A7A6   406 _T3_END	=	0xa7a6
                           0000A6   407 _T3_END_L	=	0x00a6
                           0000A7   408 _T3_END_H	=	0x00a7
                           0000A9   409 _T3_STAT	=	0x00a9
                           0000AA   410 _T3_CTRL	=	0x00aa
                           0000AB   411 _T3_DMA_CN	=	0x00ab
                           00ADAC   412 _T3_DMA	=	0xadac
                           0000AC   413 _T3_DMA_AL	=	0x00ac
                           0000AD   414 _T3_DMA_AH	=	0x00ad
                           00AFAE   415 _T3_FIFO	=	0xafae
                           0000AE   416 _T3_FIFO_L	=	0x00ae
                           0000AF   417 _T3_FIFO_H	=	0x00af
                           00009B   418 _PWM_DATA2	=	0x009b
                           00009C   419 _PWM_DATA	=	0x009c
                           00009D   420 _PWM_CTRL	=	0x009d
                           00009E   421 _PWM_CK_SE	=	0x009e
                           00009F   422 _PWM_CYCLE	=	0x009f
                           0000F8   423 _SPI0_STAT	=	0x00f8
                           0000F9   424 _SPI0_DATA	=	0x00f9
                           0000FA   425 _SPI0_CTRL	=	0x00fa
                           0000FB   426 _SPI0_CK_SE	=	0x00fb
                           0000FC   427 _SPI0_SETUP	=	0x00fc
                           0000B4   428 _SPI1_STAT	=	0x00b4
                           0000B5   429 _SPI1_DATA	=	0x00b5
                           0000B6   430 _SPI1_CTRL	=	0x00b6
                           0000B7   431 _SPI1_CK_SE	=	0x00b7
                           00009A   432 _SER1_FIFO	=	0x009a
                           000091   433 _SER1_IER	=	0x0091
                           000092   434 _SER1_IIR	=	0x0092
                           000093   435 _SER1_LCR	=	0x0093
                           000094   436 _SER1_MCR	=	0x0094
                           000095   437 _SER1_LSR	=	0x0095
                           000096   438 _SER1_MSR	=	0x0096
                           000097   439 _SER1_ADDR	=	0x0097
                           00EDEC   440 _ADC_DMA	=	0xedec
                           0000EC   441 _ADC_DMA_AL	=	0x00ec
                           0000ED   442 _ADC_DMA_AH	=	0x00ed
                           0000EE   443 _ADC_DMA_CN	=	0x00ee
                           0000EF   444 _ADC_CK_SE	=	0x00ef
                           0000F1   445 _ADC_STAT	=	0x00f1
                           0000F2   446 _ADC_CTRL	=	0x00f2
                           0000F3   447 _ADC_CHANN	=	0x00f3
                           00F5F4   448 _ADC_FIFO	=	0xf5f4
                           0000F4   449 _ADC_FIFO_L	=	0x00f4
                           0000F5   450 _ADC_FIFO_H	=	0x00f5
                           0000F6   451 _ADC_SETUP	=	0x00f6
                           0000F7   452 _ADC_EX_SW	=	0x00f7
                           0000D1   453 _USB_RX_LEN	=	0x00d1
                           0000D2   454 _UEP1_CTRL	=	0x00d2
                           0000D3   455 _UEP1_T_LEN	=	0x00d3
                           0000D4   456 _UEP2_CTRL	=	0x00d4
                           0000D5   457 _UEP2_T_LEN	=	0x00d5
                           0000D6   458 _UEP3_CTRL	=	0x00d6
                           0000D7   459 _UEP3_T_LEN	=	0x00d7
                           0000D8   460 _USB_INT_FG	=	0x00d8
                           0000D9   461 _USB_INT_ST	=	0x00d9
                           0000DA   462 _USB_MIS_ST	=	0x00da
                           0000DB   463 _USB_HUB_ST	=	0x00db
                           0000DC   464 _UEP0_CTRL	=	0x00dc
                           0000DD   465 _UEP0_T_LEN	=	0x00dd
                           0000DE   466 _UEP4_CTRL	=	0x00de
                           0000DF   467 _UEP4_T_LEN	=	0x00df
                           0000E1   468 _USB_INT_EN	=	0x00e1
                           0000E2   469 _USB_CTRL	=	0x00e2
                           0000E3   470 _USB_DEV_AD	=	0x00e3
                           0000E4   471 _UDEV_CTRL	=	0x00e4
                           0000E5   472 _UHUB1_CTRL	=	0x00e5
                           00E7E6   473 _USB_DMA	=	0xe7e6
                           0000E6   474 _USB_DMA_AL	=	0x00e6
                           0000E7   475 _USB_DMA_AH	=	0x00e7
                                    476 ;--------------------------------------------------------
                                    477 ; special function bits
                                    478 ;--------------------------------------------------------
                                    479 	.area RSEG    (ABS,DATA)
      000000                        480 	.org 0x0000
                           0000D7   481 _CY	=	0x00d7
                           0000D6   482 _AC	=	0x00d6
                           0000D5   483 _F0	=	0x00d5
                           0000D4   484 _RS1	=	0x00d4
                           0000D3   485 _RS0	=	0x00d3
                           0000D2   486 _OV	=	0x00d2
                           0000D1   487 _F1	=	0x00d1
                           0000D0   488 _P	=	0x00d0
                           0000AF   489 _EA	=	0x00af
                           0000AE   490 _E_DIS	=	0x00ae
                           0000AD   491 _ET2	=	0x00ad
                           0000AC   492 _ES	=	0x00ac
                           0000AB   493 _ET1	=	0x00ab
                           0000AA   494 _EX1	=	0x00aa
                           0000A9   495 _ET0	=	0x00a9
                           0000A8   496 _EX0	=	0x00a8
                           0000BF   497 _PH_FLAG	=	0x00bf
                           0000BE   498 _PL_FLAG	=	0x00be
                           0000BD   499 _PT2	=	0x00bd
                           0000BC   500 _PS	=	0x00bc
                           0000BB   501 _PT1	=	0x00bb
                           0000BA   502 _PX1	=	0x00ba
                           0000B9   503 _PT0	=	0x00b9
                           0000B8   504 _PX0	=	0x00b8
                           0000EF   505 _IE_WDOG	=	0x00ef
                           0000EE   506 _IE_GPIO	=	0x00ee
                           0000ED   507 _IE_PWM1	=	0x00ed
                           0000EC   508 _IE_UART1	=	0x00ec
                           0000EB   509 _IE_ADC	=	0x00eb
                           0000EA   510 _IE_USB	=	0x00ea
                           0000E9   511 _IE_TMR3	=	0x00e9
                           0000E8   512 _IE_SPI0	=	0x00e8
                           000087   513 _UDCD	=	0x0087
                           000086   514 _URI	=	0x0086
                           000085   515 _UDSR	=	0x0085
                           000084   516 _UCTS	=	0x0084
                           000083   517 _TXD_	=	0x0083
                           000082   518 _RXD_	=	0x0082
                           000081   519 _URTS	=	0x0081
                           000080   520 _UDTR	=	0x0080
                           000097   521 _AIN7	=	0x0097
                           000096   522 _AIN6	=	0x0096
                           000095   523 _AIN5	=	0x0095
                           000094   524 _AIN4	=	0x0094
                           000093   525 _AIN3	=	0x0093
                           000092   526 _AIN2	=	0x0092
                           000091   527 _AIN1	=	0x0091
                           000090   528 _AIN0	=	0x0090
                           000097   529 _SCK	=	0x0097
                           000096   530 _MISO	=	0x0096
                           000095   531 _MOSI	=	0x0095
                           000094   532 _SCS	=	0x0094
                           000092   533 _PWM3	=	0x0092
                           000092   534 _CAP3	=	0x0092
                           000091   535 _T2EX	=	0x0091
                           000091   536 _CAP2	=	0x0091
                           000090   537 _T2	=	0x0090
                           000090   538 _CAP1	=	0x0090
                           0000A7   539 _TXD1	=	0x00a7
                           0000A7   540 _DA7	=	0x00a7
                           0000A6   541 _RXD1	=	0x00a6
                           0000A5   542 _TNOW	=	0x00a5
                           0000A5   543 _PWM2	=	0x00a5
                           0000A5   544 _T2EX_	=	0x00a5
                           0000A5   545 _CAP2_	=	0x00a5
                           0000A4   546 _PWM1	=	0x00a4
                           0000A3   547 _SCK1	=	0x00a3
                           0000A2   548 _MISO1	=	0x00a2
                           0000A1   549 _MOSI1	=	0x00a1
                           0000B7   550 _RD	=	0x00b7
                           0000B6   551 _WR	=	0x00b6
                           0000B5   552 _DA6	=	0x00b5
                           0000B5   553 _T1	=	0x00b5
                           0000B4   554 _LEDC	=	0x00b4
                           0000B4   555 _XCS0	=	0x00b4
                           0000B4   556 _T0	=	0x00b4
                           0000B3   557 _LED1	=	0x00b3
                           0000B3   558 _INT1	=	0x00b3
                           0000B2   559 _LED0	=	0x00b2
                           0000B2   560 _INT0	=	0x00b2
                           0000B1   561 _TXD	=	0x00b1
                           0000B0   562 _RXD	=	0x00b0
                           0000C7   563 _SCK_	=	0x00c7
                           0000C6   564 _SCS_	=	0x00c6
                           0000C5   565 _PWM2_	=	0x00c5
                           0000C4   566 _LED3	=	0x00c4
                           0000C4   567 _TNOW_	=	0x00c4
                           0000C4   568 _TXD1_	=	0x00c4
                           0000C3   569 _PWM1_	=	0x00c3
                           0000C2   570 _PWM3_	=	0x00c2
                           0000C2   571 _CAP3_	=	0x00c2
                           0000C0   572 _LED2	=	0x00c0
                           0000C0   573 _RXD1_	=	0x00c0
                           00008F   574 _TF1	=	0x008f
                           00008E   575 _TR1	=	0x008e
                           00008D   576 _TF0	=	0x008d
                           00008C   577 _TR0	=	0x008c
                           00008B   578 _IE1	=	0x008b
                           00008A   579 _IT1	=	0x008a
                           000089   580 _IE0	=	0x0089
                           000088   581 _IT0	=	0x0088
                           00009F   582 _SM0	=	0x009f
                           00009E   583 _SM1	=	0x009e
                           00009D   584 _SM2	=	0x009d
                           00009C   585 _REN	=	0x009c
                           00009B   586 _TB8	=	0x009b
                           00009A   587 _RB8	=	0x009a
                           000099   588 _TI	=	0x0099
                           000098   589 _RI	=	0x0098
                           0000CF   590 _TF2	=	0x00cf
                           0000CF   591 _CAP1F	=	0x00cf
                           0000CE   592 _EXF2	=	0x00ce
                           0000CD   593 _RCLK	=	0x00cd
                           0000CC   594 _TCLK	=	0x00cc
                           0000CB   595 _EXEN2	=	0x00cb
                           0000CA   596 _TR2	=	0x00ca
                           0000C9   597 _C_T2	=	0x00c9
                           0000C8   598 _CP_RL2	=	0x00c8
                           0000FF   599 _S0_FST_ACT	=	0x00ff
                           0000FE   600 _S0_IF_OV	=	0x00fe
                           0000FD   601 _S0_IF_FIRST	=	0x00fd
                           0000FC   602 _S0_IF_BYTE	=	0x00fc
                           0000FB   603 _S0_FREE	=	0x00fb
                           0000FA   604 _S0_T_FIFO	=	0x00fa
                           0000F9   605 _S0_R_FIFO1	=	0x00f9
                           0000F8   606 _S0_R_FIFO0	=	0x00f8
                           0000DF   607 _U_IS_NAK	=	0x00df
                           0000DE   608 _U_TOG_OK	=	0x00de
                           0000DD   609 _U_SIE_FREE	=	0x00dd
                           0000DC   610 _UIF_FIFO_OV	=	0x00dc
                           0000DB   611 _UIF_HST_SOF	=	0x00db
                           0000DA   612 _UIF_SUSPEND	=	0x00da
                           0000D9   613 _UIF_TRANSFER	=	0x00d9
                           0000D8   614 _UIF_DETECT	=	0x00d8
                           0000D8   615 _UIF_BUS_RST	=	0x00d8
                                    616 ;--------------------------------------------------------
                                    617 ; overlayable register banks
                                    618 ;--------------------------------------------------------
                                    619 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        620 	.ds 8
                                    621 ;--------------------------------------------------------
                                    622 ; internal ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area DSEG    (DATA)
                                    625 ;--------------------------------------------------------
                                    626 ; overlayable items in internal ram
                                    627 ;--------------------------------------------------------
                                    628 ;--------------------------------------------------------
                                    629 ; indirectly addressable internal ram data
                                    630 ;--------------------------------------------------------
                                    631 	.area ISEG    (DATA)
                                    632 ;--------------------------------------------------------
                                    633 ; absolute internal ram data
                                    634 ;--------------------------------------------------------
                                    635 	.area IABS    (ABS,DATA)
                                    636 	.area IABS    (ABS,DATA)
                                    637 ;--------------------------------------------------------
                                    638 ; bit data
                                    639 ;--------------------------------------------------------
                                    640 	.area BSEG    (BIT)
                                    641 ;--------------------------------------------------------
                                    642 ; paged external ram data
                                    643 ;--------------------------------------------------------
                                    644 	.area PSEG    (PAG,XDATA)
                           002546   645 _pUEP4_1_MOD	=	0x2546
                           002547   646 _pUEP2_3_MOD	=	0x2547
                           002980   647 _pLED_STAT	=	0x2980
                           002981   648 _pLED_CTRL	=	0x2981
                           002982   649 _pLED_DATA	=	0x2982
                           002983   650 _pLED_CK_SE	=	0x2983
                           002984   651 _pLED_DMA_AH	=	0x2984
                           002985   652 _pLED_DMA_AL	=	0x2985
                           002986   653 _pLED_DMA_CN	=	0x2986
                           002988   654 _pLED_DMA_XH	=	0x2988
                           002989   655 _pLED_DMA_XL	=	0x2989
                                    656 ;--------------------------------------------------------
                                    657 ; external ram data
                                    658 ;--------------------------------------------------------
                                    659 	.area XSEG    (XDATA)
                           002446   660 _UEP4_1_MOD	=	0x2446
                           002447   661 _UEP2_3_MOD	=	0x2447
                           002448   662 _UEP0_DMA_H	=	0x2448
                           002449   663 _UEP0_DMA_L	=	0x2449
                           002548   664 _pUEP0_DMA_H	=	0x2548
                           002549   665 _pUEP0_DMA_L	=	0x2549
                           00244A   666 _UEP1_DMA_H	=	0x244a
                           00244B   667 _UEP1_DMA_L	=	0x244b
                           00254A   668 _pUEP1_DMA_H	=	0x254a
                           00254B   669 _pUEP1_DMA_L	=	0x254b
                           00244C   670 _UEP2_DMA	=	0x244c
                           00244D   671 _UEP2_DMA_L	=	0x244d
                           00244C   672 _UEP2_DMA_H	=	0x244c
                           00254C   673 _pUEP2_DMA_H	=	0x254c
                           00254D   674 _pUEP2_DMA_L	=	0x254d
                           00244E   675 _UEP3_DMA	=	0x244e
                           00244F   676 _UEP3_DMA_L	=	0x244f
                           00244E   677 _UEP3_DMA_H	=	0x244e
                           00254E   678 _pUEP3_DMA_H	=	0x254e
                           00254F   679 _pUEP3_DMA_L	=	0x254f
                           002880   680 _LED_STAT	=	0x2880
                           002881   681 _LED_CTRL	=	0x2881
                           002882   682 _LED_DATA	=	0x2882
                           002883   683 _LED_CK_SE	=	0x2883
                           002884   684 _LED_DMA_AH	=	0x2884
                           002885   685 _LED_DMA_AL	=	0x2885
                           002886   686 _LED_DMA_CN	=	0x2886
                           002888   687 _LED_DMA_XH	=	0x2888
                           002889   688 _LED_DMA_XL	=	0x2889
      000761                        689 _pinMode_PARM_2:
      000761                        690 	.ds 1
      000762                        691 _pinMode_PARM_3:
      000762                        692 	.ds 1
      000763                        693 _pinMode_port_65536_17:
      000763                        694 	.ds 1
      000764                        695 _pinMode_dir_65536_18:
      000764                        696 	.ds 12
      000770                        697 _pinMode_pu_65536_18:
      000770                        698 	.ds 12
      00077C                        699 _putchar_c_65536_20:
      00077C                        700 	.ds 2
      00077E                        701 _delayUs_n_65536_23:
      00077E                        702 	.ds 2
      000780                        703 _delay_n_65536_26:
      000780                        704 	.ds 2
                                    705 ;--------------------------------------------------------
                                    706 ; absolute external ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area XABS    (ABS,XDATA)
                                    709 ;--------------------------------------------------------
                                    710 ; external initialized ram data
                                    711 ;--------------------------------------------------------
                                    712 	.area XISEG   (XDATA)
                                    713 	.area HOME    (CODE)
                                    714 	.area GSINIT0 (CODE)
                                    715 	.area GSINIT1 (CODE)
                                    716 	.area GSINIT2 (CODE)
                                    717 	.area GSINIT3 (CODE)
                                    718 	.area GSINIT4 (CODE)
                                    719 	.area GSINIT5 (CODE)
                                    720 	.area GSINIT  (CODE)
                                    721 	.area GSFINAL (CODE)
                                    722 	.area CSEG    (CODE)
                                    723 ;--------------------------------------------------------
                                    724 ; global & static initialisations
                                    725 ;--------------------------------------------------------
                                    726 	.area HOME    (CODE)
                                    727 	.area GSINIT  (CODE)
                                    728 	.area GSFINAL (CODE)
                                    729 	.area GSINIT  (CODE)
                                    730 ;--------------------------------------------------------
                                    731 ; Home
                                    732 ;--------------------------------------------------------
                                    733 	.area HOME    (CODE)
                                    734 	.area HOME    (CODE)
                                    735 ;--------------------------------------------------------
                                    736 ; code
                                    737 ;--------------------------------------------------------
                                    738 	.area CSEG    (CODE)
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'pinMode'
                                    741 ;------------------------------------------------------------
                                    742 ;pin                       Allocated with name '_pinMode_PARM_2'
                                    743 ;mode                      Allocated with name '_pinMode_PARM_3'
                                    744 ;port                      Allocated with name '_pinMode_port_65536_17'
                                    745 ;dir                       Allocated with name '_pinMode_dir_65536_18'
                                    746 ;pu                        Allocated with name '_pinMode_pu_65536_18'
                                    747 ;------------------------------------------------------------
                                    748 ;	util.c:16: void pinMode(unsigned char port, unsigned char pin, unsigned char mode)
                                    749 ;	-----------------------------------------
                                    750 ;	 function pinMode
                                    751 ;	-----------------------------------------
      001338                        752 _pinMode:
                           000007   753 	ar7 = 0x07
                           000006   754 	ar6 = 0x06
                           000005   755 	ar5 = 0x05
                           000004   756 	ar4 = 0x04
                           000003   757 	ar3 = 0x03
                           000002   758 	ar2 = 0x02
                           000001   759 	ar1 = 0x01
                           000000   760 	ar0 = 0x00
      001338 E5 82            [12]  761 	mov	a,dpl
      00133A 90 07 63         [24]  762 	mov	dptr,#_pinMode_port_65536_17
      00133D F0               [24]  763 	movx	@dptr,a
                                    764 ;	util.c:18: volatile unsigned char *dir[] = {&P0_DIR, &P1_DIR, &P2_DIR, &P3_DIR};
      00133E 90 07 64         [24]  765 	mov	dptr,#_pinMode_dir_65536_18
      001341 74 C4            [12]  766 	mov	a,#_P0_DIR
      001343 F0               [24]  767 	movx	@dptr,a
      001344 74 00            [12]  768 	mov	a,#(_P0_DIR >> 8)
      001346 A3               [24]  769 	inc	dptr
      001347 F0               [24]  770 	movx	@dptr,a
      001348 74 40            [12]  771 	mov	a,#0x40
      00134A A3               [24]  772 	inc	dptr
      00134B F0               [24]  773 	movx	@dptr,a
      00134C 90 07 67         [24]  774 	mov	dptr,#(_pinMode_dir_65536_18 + 0x0003)
      00134F 74 BA            [12]  775 	mov	a,#_P1_DIR
      001351 F0               [24]  776 	movx	@dptr,a
      001352 74 00            [12]  777 	mov	a,#(_P1_DIR >> 8)
      001354 A3               [24]  778 	inc	dptr
      001355 F0               [24]  779 	movx	@dptr,a
      001356 74 40            [12]  780 	mov	a,#0x40
      001358 A3               [24]  781 	inc	dptr
      001359 F0               [24]  782 	movx	@dptr,a
      00135A 90 07 6A         [24]  783 	mov	dptr,#(_pinMode_dir_65536_18 + 0x0006)
      00135D 74 BC            [12]  784 	mov	a,#_P2_DIR
      00135F F0               [24]  785 	movx	@dptr,a
      001360 74 00            [12]  786 	mov	a,#(_P2_DIR >> 8)
      001362 A3               [24]  787 	inc	dptr
      001363 F0               [24]  788 	movx	@dptr,a
      001364 74 40            [12]  789 	mov	a,#0x40
      001366 A3               [24]  790 	inc	dptr
      001367 F0               [24]  791 	movx	@dptr,a
      001368 90 07 6D         [24]  792 	mov	dptr,#(_pinMode_dir_65536_18 + 0x0009)
      00136B 74 BE            [12]  793 	mov	a,#_P3_DIR
      00136D F0               [24]  794 	movx	@dptr,a
      00136E 74 00            [12]  795 	mov	a,#(_P3_DIR >> 8)
      001370 A3               [24]  796 	inc	dptr
      001371 F0               [24]  797 	movx	@dptr,a
      001372 74 40            [12]  798 	mov	a,#0x40
      001374 A3               [24]  799 	inc	dptr
      001375 F0               [24]  800 	movx	@dptr,a
                                    801 ;	util.c:19: volatile unsigned char *pu[] = {&P0_PU, &P1_PU, &P2_PU, &P3_PU};
      001376 90 07 70         [24]  802 	mov	dptr,#_pinMode_pu_65536_18
      001379 74 C5            [12]  803 	mov	a,#_P0_PU
      00137B F0               [24]  804 	movx	@dptr,a
      00137C 74 00            [12]  805 	mov	a,#(_P0_PU >> 8)
      00137E A3               [24]  806 	inc	dptr
      00137F F0               [24]  807 	movx	@dptr,a
      001380 74 40            [12]  808 	mov	a,#0x40
      001382 A3               [24]  809 	inc	dptr
      001383 F0               [24]  810 	movx	@dptr,a
      001384 90 07 73         [24]  811 	mov	dptr,#(_pinMode_pu_65536_18 + 0x0003)
      001387 74 BB            [12]  812 	mov	a,#_P1_PU
      001389 F0               [24]  813 	movx	@dptr,a
      00138A 74 00            [12]  814 	mov	a,#(_P1_PU >> 8)
      00138C A3               [24]  815 	inc	dptr
      00138D F0               [24]  816 	movx	@dptr,a
      00138E 74 40            [12]  817 	mov	a,#0x40
      001390 A3               [24]  818 	inc	dptr
      001391 F0               [24]  819 	movx	@dptr,a
      001392 90 07 76         [24]  820 	mov	dptr,#(_pinMode_pu_65536_18 + 0x0006)
      001395 74 BD            [12]  821 	mov	a,#_P2_PU
      001397 F0               [24]  822 	movx	@dptr,a
      001398 74 00            [12]  823 	mov	a,#(_P2_PU >> 8)
      00139A A3               [24]  824 	inc	dptr
      00139B F0               [24]  825 	movx	@dptr,a
      00139C 74 40            [12]  826 	mov	a,#0x40
      00139E A3               [24]  827 	inc	dptr
      00139F F0               [24]  828 	movx	@dptr,a
      0013A0 90 07 79         [24]  829 	mov	dptr,#(_pinMode_pu_65536_18 + 0x0009)
      0013A3 74 BF            [12]  830 	mov	a,#_P3_PU
      0013A5 F0               [24]  831 	movx	@dptr,a
      0013A6 74 00            [12]  832 	mov	a,#(_P3_PU >> 8)
      0013A8 A3               [24]  833 	inc	dptr
      0013A9 F0               [24]  834 	movx	@dptr,a
      0013AA 74 40            [12]  835 	mov	a,#0x40
      0013AC A3               [24]  836 	inc	dptr
      0013AD F0               [24]  837 	movx	@dptr,a
                                    838 ;	util.c:20: switch (mode)
      0013AE 90 07 62         [24]  839 	mov	dptr,#_pinMode_PARM_3
      0013B1 E0               [24]  840 	movx	a,@dptr
      0013B2 FF               [12]  841 	mov  r7,a
      0013B3 24 F9            [12]  842 	add	a,#0xff - 0x06
      0013B5 50 01            [24]  843 	jnc	00116$
      0013B7 22               [24]  844 	ret
      0013B8                        845 00116$:
      0013B8 EF               [12]  846 	mov	a,r7
      0013B9 2F               [12]  847 	add	a,r7
      0013BA 2F               [12]  848 	add	a,r7
      0013BB 90 13 BF         [24]  849 	mov	dptr,#00117$
      0013BE 73               [24]  850 	jmp	@a+dptr
      0013BF                        851 00117$:
      0013BF 02 13 D4         [24]  852 	ljmp	00101$
      0013C2 02 14 54         [24]  853 	ljmp	00102$
      0013C5 02 14 D4         [24]  854 	ljmp	00103$
      0013C8 02 15 2A         [24]  855 	ljmp	00104$
      0013CB 02 15 A9         [24]  856 	ljmp	00105$
      0013CE 02 16 2A         [24]  857 	ljmp	00106$
      0013D1 02 16 A9         [24]  858 	ljmp	00107$
                                    859 ;	util.c:22: case PIN_MODE_INPUT: //Input only, no pull up
      0013D4                        860 00101$:
                                    861 ;	util.c:23: PORT_CFG &= ~(bP0_OC << port);
      0013D4 90 07 63         [24]  862 	mov	dptr,#_pinMode_port_65536_17
      0013D7 E0               [24]  863 	movx	a,@dptr
      0013D8 FF               [12]  864 	mov	r7,a
      0013D9 FE               [12]  865 	mov	r6,a
      0013DA 8E F0            [24]  866 	mov	b,r6
      0013DC 05 F0            [12]  867 	inc	b
      0013DE 74 01            [12]  868 	mov	a,#0x01
      0013E0 80 02            [24]  869 	sjmp	00120$
      0013E2                        870 00118$:
      0013E2 25 E0            [12]  871 	add	a,acc
      0013E4                        872 00120$:
      0013E4 D5 F0 FB         [24]  873 	djnz	b,00118$
      0013E7 F4               [12]  874 	cpl	a
      0013E8 52 C6            [12]  875 	anl	_PORT_CFG,a
                                    876 ;	util.c:24: *dir[port] &= ~(1 << pin);
      0013EA EF               [12]  877 	mov	a,r7
      0013EB 75 F0 03         [24]  878 	mov	b,#0x03
      0013EE A4               [48]  879 	mul	ab
      0013EF FF               [12]  880 	mov	r7,a
      0013F0 AE F0            [24]  881 	mov	r6,b
      0013F2 24 64            [12]  882 	add	a,#_pinMode_dir_65536_18
      0013F4 F5 82            [12]  883 	mov	dpl,a
      0013F6 EE               [12]  884 	mov	a,r6
      0013F7 34 07            [12]  885 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      0013F9 F5 83            [12]  886 	mov	dph,a
      0013FB E0               [24]  887 	movx	a,@dptr
      0013FC FB               [12]  888 	mov	r3,a
      0013FD A3               [24]  889 	inc	dptr
      0013FE E0               [24]  890 	movx	a,@dptr
      0013FF FC               [12]  891 	mov	r4,a
      001400 A3               [24]  892 	inc	dptr
      001401 E0               [24]  893 	movx	a,@dptr
      001402 FD               [12]  894 	mov	r5,a
      001403 8B 82            [24]  895 	mov	dpl,r3
      001405 8C 83            [24]  896 	mov	dph,r4
      001407 8D F0            [24]  897 	mov	b,r5
      001409 12 4C 44         [24]  898 	lcall	__gptrget
      00140C FA               [12]  899 	mov	r2,a
      00140D 90 07 61         [24]  900 	mov	dptr,#_pinMode_PARM_2
      001410 E0               [24]  901 	movx	a,@dptr
      001411 F9               [12]  902 	mov	r1,a
      001412 89 F0            [24]  903 	mov	b,r1
      001414 05 F0            [12]  904 	inc	b
      001416 74 01            [12]  905 	mov	a,#0x01
      001418 80 02            [24]  906 	sjmp	00123$
      00141A                        907 00121$:
      00141A 25 E0            [12]  908 	add	a,acc
      00141C                        909 00123$:
      00141C D5 F0 FB         [24]  910 	djnz	b,00121$
      00141F F4               [12]  911 	cpl	a
      001420 F9               [12]  912 	mov	r1,a
      001421 52 02            [12]  913 	anl	ar2,a
      001423 8B 82            [24]  914 	mov	dpl,r3
      001425 8C 83            [24]  915 	mov	dph,r4
      001427 8D F0            [24]  916 	mov	b,r5
      001429 EA               [12]  917 	mov	a,r2
      00142A 12 41 8F         [24]  918 	lcall	__gptrput
                                    919 ;	util.c:25: *pu[port] &= ~(1 << pin);
      00142D EF               [12]  920 	mov	a,r7
      00142E 24 70            [12]  921 	add	a,#_pinMode_pu_65536_18
      001430 F5 82            [12]  922 	mov	dpl,a
      001432 EE               [12]  923 	mov	a,r6
      001433 34 07            [12]  924 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      001435 F5 83            [12]  925 	mov	dph,a
      001437 E0               [24]  926 	movx	a,@dptr
      001438 FD               [12]  927 	mov	r5,a
      001439 A3               [24]  928 	inc	dptr
      00143A E0               [24]  929 	movx	a,@dptr
      00143B FE               [12]  930 	mov	r6,a
      00143C A3               [24]  931 	inc	dptr
      00143D E0               [24]  932 	movx	a,@dptr
      00143E FF               [12]  933 	mov	r7,a
      00143F 8D 82            [24]  934 	mov	dpl,r5
      001441 8E 83            [24]  935 	mov	dph,r6
      001443 8F F0            [24]  936 	mov	b,r7
      001445 12 4C 44         [24]  937 	lcall	__gptrget
      001448 52 01            [12]  938 	anl	ar1,a
      00144A 8D 82            [24]  939 	mov	dpl,r5
      00144C 8E 83            [24]  940 	mov	dph,r6
      00144E 8F F0            [24]  941 	mov	b,r7
      001450 E9               [12]  942 	mov	a,r1
                                    943 ;	util.c:26: break;
      001451 02 41 8F         [24]  944 	ljmp	__gptrput
                                    945 ;	util.c:27: case PIN_MODE_INPUT_PULLUP: //Input only, pull up
      001454                        946 00102$:
                                    947 ;	util.c:28: PORT_CFG &= ~(bP0_OC << port);
      001454 90 07 63         [24]  948 	mov	dptr,#_pinMode_port_65536_17
      001457 E0               [24]  949 	movx	a,@dptr
      001458 FF               [12]  950 	mov	r7,a
      001459 FE               [12]  951 	mov	r6,a
      00145A 8E F0            [24]  952 	mov	b,r6
      00145C 05 F0            [12]  953 	inc	b
      00145E 74 01            [12]  954 	mov	a,#0x01
      001460 80 02            [24]  955 	sjmp	00126$
      001462                        956 00124$:
      001462 25 E0            [12]  957 	add	a,acc
      001464                        958 00126$:
      001464 D5 F0 FB         [24]  959 	djnz	b,00124$
      001467 F4               [12]  960 	cpl	a
      001468 52 C6            [12]  961 	anl	_PORT_CFG,a
                                    962 ;	util.c:29: *dir[port] &= ~(1 << pin);
      00146A EF               [12]  963 	mov	a,r7
      00146B 75 F0 03         [24]  964 	mov	b,#0x03
      00146E A4               [48]  965 	mul	ab
      00146F FF               [12]  966 	mov	r7,a
      001470 AE F0            [24]  967 	mov	r6,b
      001472 24 64            [12]  968 	add	a,#_pinMode_dir_65536_18
      001474 F5 82            [12]  969 	mov	dpl,a
      001476 EE               [12]  970 	mov	a,r6
      001477 34 07            [12]  971 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      001479 F5 83            [12]  972 	mov	dph,a
      00147B E0               [24]  973 	movx	a,@dptr
      00147C FB               [12]  974 	mov	r3,a
      00147D A3               [24]  975 	inc	dptr
      00147E E0               [24]  976 	movx	a,@dptr
      00147F FC               [12]  977 	mov	r4,a
      001480 A3               [24]  978 	inc	dptr
      001481 E0               [24]  979 	movx	a,@dptr
      001482 FD               [12]  980 	mov	r5,a
      001483 8B 82            [24]  981 	mov	dpl,r3
      001485 8C 83            [24]  982 	mov	dph,r4
      001487 8D F0            [24]  983 	mov	b,r5
      001489 12 4C 44         [24]  984 	lcall	__gptrget
      00148C FA               [12]  985 	mov	r2,a
      00148D 90 07 61         [24]  986 	mov	dptr,#_pinMode_PARM_2
      001490 E0               [24]  987 	movx	a,@dptr
      001491 F9               [12]  988 	mov	r1,a
      001492 89 F0            [24]  989 	mov	b,r1
      001494 05 F0            [12]  990 	inc	b
      001496 74 01            [12]  991 	mov	a,#0x01
      001498 80 02            [24]  992 	sjmp	00129$
      00149A                        993 00127$:
      00149A 25 E0            [12]  994 	add	a,acc
      00149C                        995 00129$:
      00149C D5 F0 FB         [24]  996 	djnz	b,00127$
      00149F F9               [12]  997 	mov	r1,a
      0014A0 F4               [12]  998 	cpl	a
      0014A1 52 02            [12]  999 	anl	ar2,a
      0014A3 8B 82            [24] 1000 	mov	dpl,r3
      0014A5 8C 83            [24] 1001 	mov	dph,r4
      0014A7 8D F0            [24] 1002 	mov	b,r5
      0014A9 EA               [12] 1003 	mov	a,r2
      0014AA 12 41 8F         [24] 1004 	lcall	__gptrput
                                   1005 ;	util.c:30: *pu[port] |= 1 << pin;
      0014AD EF               [12] 1006 	mov	a,r7
      0014AE 24 70            [12] 1007 	add	a,#_pinMode_pu_65536_18
      0014B0 F5 82            [12] 1008 	mov	dpl,a
      0014B2 EE               [12] 1009 	mov	a,r6
      0014B3 34 07            [12] 1010 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      0014B5 F5 83            [12] 1011 	mov	dph,a
      0014B7 E0               [24] 1012 	movx	a,@dptr
      0014B8 FD               [12] 1013 	mov	r5,a
      0014B9 A3               [24] 1014 	inc	dptr
      0014BA E0               [24] 1015 	movx	a,@dptr
      0014BB FE               [12] 1016 	mov	r6,a
      0014BC A3               [24] 1017 	inc	dptr
      0014BD E0               [24] 1018 	movx	a,@dptr
      0014BE FF               [12] 1019 	mov	r7,a
      0014BF 8D 82            [24] 1020 	mov	dpl,r5
      0014C1 8E 83            [24] 1021 	mov	dph,r6
      0014C3 8F F0            [24] 1022 	mov	b,r7
      0014C5 12 4C 44         [24] 1023 	lcall	__gptrget
      0014C8 42 01            [12] 1024 	orl	ar1,a
      0014CA 8D 82            [24] 1025 	mov	dpl,r5
      0014CC 8E 83            [24] 1026 	mov	dph,r6
      0014CE 8F F0            [24] 1027 	mov	b,r7
      0014D0 E9               [12] 1028 	mov	a,r1
                                   1029 ;	util.c:31: break;
      0014D1 02 41 8F         [24] 1030 	ljmp	__gptrput
                                   1031 ;	util.c:32: case PIN_MODE_OUTPUT: //Push-pull output, high and low level strong drive
      0014D4                       1032 00103$:
                                   1033 ;	util.c:33: PORT_CFG &= ~(bP0_OC << port);
      0014D4 90 07 63         [24] 1034 	mov	dptr,#_pinMode_port_65536_17
      0014D7 E0               [24] 1035 	movx	a,@dptr
      0014D8 FF               [12] 1036 	mov	r7,a
      0014D9 FE               [12] 1037 	mov	r6,a
      0014DA 8E F0            [24] 1038 	mov	b,r6
      0014DC 05 F0            [12] 1039 	inc	b
      0014DE 74 01            [12] 1040 	mov	a,#0x01
      0014E0 80 02            [24] 1041 	sjmp	00132$
      0014E2                       1042 00130$:
      0014E2 25 E0            [12] 1043 	add	a,acc
      0014E4                       1044 00132$:
      0014E4 D5 F0 FB         [24] 1045 	djnz	b,00130$
      0014E7 F4               [12] 1046 	cpl	a
      0014E8 52 C6            [12] 1047 	anl	_PORT_CFG,a
                                   1048 ;	util.c:34: *dir[port] |= ~(1 << pin);
      0014EA EF               [12] 1049 	mov	a,r7
      0014EB 75 F0 03         [24] 1050 	mov	b,#0x03
      0014EE A4               [48] 1051 	mul	ab
      0014EF 24 64            [12] 1052 	add	a,#_pinMode_dir_65536_18
      0014F1 F5 82            [12] 1053 	mov	dpl,a
      0014F3 74 07            [12] 1054 	mov	a,#(_pinMode_dir_65536_18 >> 8)
      0014F5 35 F0            [12] 1055 	addc	a,b
      0014F7 F5 83            [12] 1056 	mov	dph,a
      0014F9 E0               [24] 1057 	movx	a,@dptr
      0014FA FD               [12] 1058 	mov	r5,a
      0014FB A3               [24] 1059 	inc	dptr
      0014FC E0               [24] 1060 	movx	a,@dptr
      0014FD FE               [12] 1061 	mov	r6,a
      0014FE A3               [24] 1062 	inc	dptr
      0014FF E0               [24] 1063 	movx	a,@dptr
      001500 FF               [12] 1064 	mov	r7,a
      001501 8D 82            [24] 1065 	mov	dpl,r5
      001503 8E 83            [24] 1066 	mov	dph,r6
      001505 8F F0            [24] 1067 	mov	b,r7
      001507 12 4C 44         [24] 1068 	lcall	__gptrget
      00150A FC               [12] 1069 	mov	r4,a
      00150B 90 07 61         [24] 1070 	mov	dptr,#_pinMode_PARM_2
      00150E E0               [24] 1071 	movx	a,@dptr
      00150F FB               [12] 1072 	mov	r3,a
      001510 8B F0            [24] 1073 	mov	b,r3
      001512 05 F0            [12] 1074 	inc	b
      001514 74 01            [12] 1075 	mov	a,#0x01
      001516 80 02            [24] 1076 	sjmp	00135$
      001518                       1077 00133$:
      001518 25 E0            [12] 1078 	add	a,acc
      00151A                       1079 00135$:
      00151A D5 F0 FB         [24] 1080 	djnz	b,00133$
      00151D F4               [12] 1081 	cpl	a
      00151E 42 04            [12] 1082 	orl	ar4,a
      001520 8D 82            [24] 1083 	mov	dpl,r5
      001522 8E 83            [24] 1084 	mov	dph,r6
      001524 8F F0            [24] 1085 	mov	b,r7
      001526 EC               [12] 1086 	mov	a,r4
                                   1087 ;	util.c:35: break;
      001527 02 41 8F         [24] 1088 	ljmp	__gptrput
                                   1089 ;	util.c:36: case PIN_MODE_OUTPUT_OPEN_DRAIN: //Open drain output, no pull-up, support input
      00152A                       1090 00104$:
                                   1091 ;	util.c:37: PORT_CFG |= (bP0_OC << port);
      00152A 90 07 63         [24] 1092 	mov	dptr,#_pinMode_port_65536_17
      00152D E0               [24] 1093 	movx	a,@dptr
      00152E FF               [12] 1094 	mov	r7,a
      00152F FE               [12] 1095 	mov	r6,a
      001530 8E F0            [24] 1096 	mov	b,r6
      001532 05 F0            [12] 1097 	inc	b
      001534 74 01            [12] 1098 	mov	a,#0x01
      001536 80 02            [24] 1099 	sjmp	00138$
      001538                       1100 00136$:
      001538 25 E0            [12] 1101 	add	a,acc
      00153A                       1102 00138$:
      00153A D5 F0 FB         [24] 1103 	djnz	b,00136$
      00153D 42 C6            [12] 1104 	orl	_PORT_CFG,a
                                   1105 ;	util.c:38: *dir[port] &= ~(1 << pin);
      00153F EF               [12] 1106 	mov	a,r7
      001540 75 F0 03         [24] 1107 	mov	b,#0x03
      001543 A4               [48] 1108 	mul	ab
      001544 FF               [12] 1109 	mov	r7,a
      001545 AE F0            [24] 1110 	mov	r6,b
      001547 24 64            [12] 1111 	add	a,#_pinMode_dir_65536_18
      001549 F5 82            [12] 1112 	mov	dpl,a
      00154B EE               [12] 1113 	mov	a,r6
      00154C 34 07            [12] 1114 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      00154E F5 83            [12] 1115 	mov	dph,a
      001550 E0               [24] 1116 	movx	a,@dptr
      001551 FB               [12] 1117 	mov	r3,a
      001552 A3               [24] 1118 	inc	dptr
      001553 E0               [24] 1119 	movx	a,@dptr
      001554 FC               [12] 1120 	mov	r4,a
      001555 A3               [24] 1121 	inc	dptr
      001556 E0               [24] 1122 	movx	a,@dptr
      001557 FD               [12] 1123 	mov	r5,a
      001558 8B 82            [24] 1124 	mov	dpl,r3
      00155A 8C 83            [24] 1125 	mov	dph,r4
      00155C 8D F0            [24] 1126 	mov	b,r5
      00155E 12 4C 44         [24] 1127 	lcall	__gptrget
      001561 FA               [12] 1128 	mov	r2,a
      001562 90 07 61         [24] 1129 	mov	dptr,#_pinMode_PARM_2
      001565 E0               [24] 1130 	movx	a,@dptr
      001566 F9               [12] 1131 	mov	r1,a
      001567 89 F0            [24] 1132 	mov	b,r1
      001569 05 F0            [12] 1133 	inc	b
      00156B 74 01            [12] 1134 	mov	a,#0x01
      00156D 80 02            [24] 1135 	sjmp	00141$
      00156F                       1136 00139$:
      00156F 25 E0            [12] 1137 	add	a,acc
      001571                       1138 00141$:
      001571 D5 F0 FB         [24] 1139 	djnz	b,00139$
      001574 F4               [12] 1140 	cpl	a
      001575 F9               [12] 1141 	mov	r1,a
      001576 52 02            [12] 1142 	anl	ar2,a
      001578 8B 82            [24] 1143 	mov	dpl,r3
      00157A 8C 83            [24] 1144 	mov	dph,r4
      00157C 8D F0            [24] 1145 	mov	b,r5
      00157E EA               [12] 1146 	mov	a,r2
      00157F 12 41 8F         [24] 1147 	lcall	__gptrput
                                   1148 ;	util.c:39: *pu[port] &= ~(1 << pin);
      001582 EF               [12] 1149 	mov	a,r7
      001583 24 70            [12] 1150 	add	a,#_pinMode_pu_65536_18
      001585 F5 82            [12] 1151 	mov	dpl,a
      001587 EE               [12] 1152 	mov	a,r6
      001588 34 07            [12] 1153 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      00158A F5 83            [12] 1154 	mov	dph,a
      00158C E0               [24] 1155 	movx	a,@dptr
      00158D FD               [12] 1156 	mov	r5,a
      00158E A3               [24] 1157 	inc	dptr
      00158F E0               [24] 1158 	movx	a,@dptr
      001590 FE               [12] 1159 	mov	r6,a
      001591 A3               [24] 1160 	inc	dptr
      001592 E0               [24] 1161 	movx	a,@dptr
      001593 FF               [12] 1162 	mov	r7,a
      001594 8D 82            [24] 1163 	mov	dpl,r5
      001596 8E 83            [24] 1164 	mov	dph,r6
      001598 8F F0            [24] 1165 	mov	b,r7
      00159A 12 4C 44         [24] 1166 	lcall	__gptrget
      00159D 52 01            [12] 1167 	anl	ar1,a
      00159F 8D 82            [24] 1168 	mov	dpl,r5
      0015A1 8E 83            [24] 1169 	mov	dph,r6
      0015A3 8F F0            [24] 1170 	mov	b,r7
      0015A5 E9               [12] 1171 	mov	a,r1
                                   1172 ;	util.c:40: break;
      0015A6 02 41 8F         [24] 1173 	ljmp	__gptrput
                                   1174 ;	util.c:41: case PIN_MODE_OUTPUT_OPEN_DRAIN_2CLK: //Open-drain output, no pull-up, only drives 2 clocks high when the transition output goes from low to high
      0015A9                       1175 00105$:
                                   1176 ;	util.c:42: PORT_CFG |= (bP0_OC << port);
      0015A9 90 07 63         [24] 1177 	mov	dptr,#_pinMode_port_65536_17
      0015AC E0               [24] 1178 	movx	a,@dptr
      0015AD FF               [12] 1179 	mov	r7,a
      0015AE FE               [12] 1180 	mov	r6,a
      0015AF 8E F0            [24] 1181 	mov	b,r6
      0015B1 05 F0            [12] 1182 	inc	b
      0015B3 74 01            [12] 1183 	mov	a,#0x01
      0015B5 80 02            [24] 1184 	sjmp	00144$
      0015B7                       1185 00142$:
      0015B7 25 E0            [12] 1186 	add	a,acc
      0015B9                       1187 00144$:
      0015B9 D5 F0 FB         [24] 1188 	djnz	b,00142$
      0015BC 42 C6            [12] 1189 	orl	_PORT_CFG,a
                                   1190 ;	util.c:43: *dir[port] |= 1 << pin;
      0015BE EF               [12] 1191 	mov	a,r7
      0015BF 75 F0 03         [24] 1192 	mov	b,#0x03
      0015C2 A4               [48] 1193 	mul	ab
      0015C3 FF               [12] 1194 	mov	r7,a
      0015C4 AE F0            [24] 1195 	mov	r6,b
      0015C6 24 64            [12] 1196 	add	a,#_pinMode_dir_65536_18
      0015C8 F5 82            [12] 1197 	mov	dpl,a
      0015CA EE               [12] 1198 	mov	a,r6
      0015CB 34 07            [12] 1199 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      0015CD F5 83            [12] 1200 	mov	dph,a
      0015CF E0               [24] 1201 	movx	a,@dptr
      0015D0 FB               [12] 1202 	mov	r3,a
      0015D1 A3               [24] 1203 	inc	dptr
      0015D2 E0               [24] 1204 	movx	a,@dptr
      0015D3 FC               [12] 1205 	mov	r4,a
      0015D4 A3               [24] 1206 	inc	dptr
      0015D5 E0               [24] 1207 	movx	a,@dptr
      0015D6 FD               [12] 1208 	mov	r5,a
      0015D7 8B 82            [24] 1209 	mov	dpl,r3
      0015D9 8C 83            [24] 1210 	mov	dph,r4
      0015DB 8D F0            [24] 1211 	mov	b,r5
      0015DD 12 4C 44         [24] 1212 	lcall	__gptrget
      0015E0 FA               [12] 1213 	mov	r2,a
      0015E1 90 07 61         [24] 1214 	mov	dptr,#_pinMode_PARM_2
      0015E4 E0               [24] 1215 	movx	a,@dptr
      0015E5 F9               [12] 1216 	mov	r1,a
      0015E6 89 F0            [24] 1217 	mov	b,r1
      0015E8 05 F0            [12] 1218 	inc	b
      0015EA 74 01            [12] 1219 	mov	a,#0x01
      0015EC 80 02            [24] 1220 	sjmp	00147$
      0015EE                       1221 00145$:
      0015EE 25 E0            [12] 1222 	add	a,acc
      0015F0                       1223 00147$:
      0015F0 D5 F0 FB         [24] 1224 	djnz	b,00145$
      0015F3 F9               [12] 1225 	mov	r1,a
      0015F4 42 02            [12] 1226 	orl	ar2,a
      0015F6 8B 82            [24] 1227 	mov	dpl,r3
      0015F8 8C 83            [24] 1228 	mov	dph,r4
      0015FA 8D F0            [24] 1229 	mov	b,r5
      0015FC EA               [12] 1230 	mov	a,r2
      0015FD 12 41 8F         [24] 1231 	lcall	__gptrput
                                   1232 ;	util.c:44: *pu[port] &= ~(1 << pin);
      001600 EF               [12] 1233 	mov	a,r7
      001601 24 70            [12] 1234 	add	a,#_pinMode_pu_65536_18
      001603 F5 82            [12] 1235 	mov	dpl,a
      001605 EE               [12] 1236 	mov	a,r6
      001606 34 07            [12] 1237 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      001608 F5 83            [12] 1238 	mov	dph,a
      00160A E0               [24] 1239 	movx	a,@dptr
      00160B FD               [12] 1240 	mov	r5,a
      00160C A3               [24] 1241 	inc	dptr
      00160D E0               [24] 1242 	movx	a,@dptr
      00160E FE               [12] 1243 	mov	r6,a
      00160F A3               [24] 1244 	inc	dptr
      001610 E0               [24] 1245 	movx	a,@dptr
      001611 FF               [12] 1246 	mov	r7,a
      001612 8D 82            [24] 1247 	mov	dpl,r5
      001614 8E 83            [24] 1248 	mov	dph,r6
      001616 8F F0            [24] 1249 	mov	b,r7
      001618 12 4C 44         [24] 1250 	lcall	__gptrget
      00161B FC               [12] 1251 	mov	r4,a
      00161C E9               [12] 1252 	mov	a,r1
      00161D F4               [12] 1253 	cpl	a
      00161E 52 04            [12] 1254 	anl	ar4,a
      001620 8D 82            [24] 1255 	mov	dpl,r5
      001622 8E 83            [24] 1256 	mov	dph,r6
      001624 8F F0            [24] 1257 	mov	b,r7
      001626 EC               [12] 1258 	mov	a,r4
                                   1259 ;	util.c:45: break;
      001627 02 41 8F         [24] 1260 	ljmp	__gptrput
                                   1261 ;	util.c:46: case PIN_MODE_INPUT_OUTPUT_PULLUP: //Weakly bidirectional (standard 51 mode), open drain output, with pull-up
      00162A                       1262 00106$:
                                   1263 ;	util.c:47: PORT_CFG |= (bP0_OC << port);
      00162A 90 07 63         [24] 1264 	mov	dptr,#_pinMode_port_65536_17
      00162D E0               [24] 1265 	movx	a,@dptr
      00162E FF               [12] 1266 	mov	r7,a
      00162F FE               [12] 1267 	mov	r6,a
      001630 8E F0            [24] 1268 	mov	b,r6
      001632 05 F0            [12] 1269 	inc	b
      001634 74 01            [12] 1270 	mov	a,#0x01
      001636 80 02            [24] 1271 	sjmp	00150$
      001638                       1272 00148$:
      001638 25 E0            [12] 1273 	add	a,acc
      00163A                       1274 00150$:
      00163A D5 F0 FB         [24] 1275 	djnz	b,00148$
      00163D 42 C6            [12] 1276 	orl	_PORT_CFG,a
                                   1277 ;	util.c:48: *dir[port] &= ~(1 << pin);
      00163F EF               [12] 1278 	mov	a,r7
      001640 75 F0 03         [24] 1279 	mov	b,#0x03
      001643 A4               [48] 1280 	mul	ab
      001644 FF               [12] 1281 	mov	r7,a
      001645 AE F0            [24] 1282 	mov	r6,b
      001647 24 64            [12] 1283 	add	a,#_pinMode_dir_65536_18
      001649 F5 82            [12] 1284 	mov	dpl,a
      00164B EE               [12] 1285 	mov	a,r6
      00164C 34 07            [12] 1286 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      00164E F5 83            [12] 1287 	mov	dph,a
      001650 E0               [24] 1288 	movx	a,@dptr
      001651 FB               [12] 1289 	mov	r3,a
      001652 A3               [24] 1290 	inc	dptr
      001653 E0               [24] 1291 	movx	a,@dptr
      001654 FC               [12] 1292 	mov	r4,a
      001655 A3               [24] 1293 	inc	dptr
      001656 E0               [24] 1294 	movx	a,@dptr
      001657 FD               [12] 1295 	mov	r5,a
      001658 8B 82            [24] 1296 	mov	dpl,r3
      00165A 8C 83            [24] 1297 	mov	dph,r4
      00165C 8D F0            [24] 1298 	mov	b,r5
      00165E 12 4C 44         [24] 1299 	lcall	__gptrget
      001661 FA               [12] 1300 	mov	r2,a
      001662 90 07 61         [24] 1301 	mov	dptr,#_pinMode_PARM_2
      001665 E0               [24] 1302 	movx	a,@dptr
      001666 F9               [12] 1303 	mov	r1,a
      001667 89 F0            [24] 1304 	mov	b,r1
      001669 05 F0            [12] 1305 	inc	b
      00166B 74 01            [12] 1306 	mov	a,#0x01
      00166D 80 02            [24] 1307 	sjmp	00153$
      00166F                       1308 00151$:
      00166F 25 E0            [12] 1309 	add	a,acc
      001671                       1310 00153$:
      001671 D5 F0 FB         [24] 1311 	djnz	b,00151$
      001674 F9               [12] 1312 	mov	r1,a
      001675 F4               [12] 1313 	cpl	a
      001676 52 02            [12] 1314 	anl	ar2,a
      001678 8B 82            [24] 1315 	mov	dpl,r3
      00167A 8C 83            [24] 1316 	mov	dph,r4
      00167C 8D F0            [24] 1317 	mov	b,r5
      00167E EA               [12] 1318 	mov	a,r2
      00167F 12 41 8F         [24] 1319 	lcall	__gptrput
                                   1320 ;	util.c:49: *pu[port] |= 1 << pin;
      001682 EF               [12] 1321 	mov	a,r7
      001683 24 70            [12] 1322 	add	a,#_pinMode_pu_65536_18
      001685 F5 82            [12] 1323 	mov	dpl,a
      001687 EE               [12] 1324 	mov	a,r6
      001688 34 07            [12] 1325 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      00168A F5 83            [12] 1326 	mov	dph,a
      00168C E0               [24] 1327 	movx	a,@dptr
      00168D FD               [12] 1328 	mov	r5,a
      00168E A3               [24] 1329 	inc	dptr
      00168F E0               [24] 1330 	movx	a,@dptr
      001690 FE               [12] 1331 	mov	r6,a
      001691 A3               [24] 1332 	inc	dptr
      001692 E0               [24] 1333 	movx	a,@dptr
      001693 FF               [12] 1334 	mov	r7,a
      001694 8D 82            [24] 1335 	mov	dpl,r5
      001696 8E 83            [24] 1336 	mov	dph,r6
      001698 8F F0            [24] 1337 	mov	b,r7
      00169A 12 4C 44         [24] 1338 	lcall	__gptrget
      00169D 42 01            [12] 1339 	orl	ar1,a
      00169F 8D 82            [24] 1340 	mov	dpl,r5
      0016A1 8E 83            [24] 1341 	mov	dph,r6
      0016A3 8F F0            [24] 1342 	mov	b,r7
      0016A5 E9               [12] 1343 	mov	a,r1
                                   1344 ;	util.c:50: break;
      0016A6 02 41 8F         [24] 1345 	ljmp	__gptrput
                                   1346 ;	util.c:51: case PIN_MODE_INPUT_OUTPUT_PULLUP_2CLK: //Quasi-bidirectional (standard 51 mode), open-drain output, with pull-up, when the transition output is low to high, only drives 2 clocks high
      0016A9                       1347 00107$:
                                   1348 ;	util.c:52: PORT_CFG |= (bP0_OC << port);
      0016A9 90 07 63         [24] 1349 	mov	dptr,#_pinMode_port_65536_17
      0016AC E0               [24] 1350 	movx	a,@dptr
      0016AD FF               [12] 1351 	mov	r7,a
      0016AE FE               [12] 1352 	mov	r6,a
      0016AF 8E F0            [24] 1353 	mov	b,r6
      0016B1 05 F0            [12] 1354 	inc	b
      0016B3 74 01            [12] 1355 	mov	a,#0x01
      0016B5 80 02            [24] 1356 	sjmp	00156$
      0016B7                       1357 00154$:
      0016B7 25 E0            [12] 1358 	add	a,acc
      0016B9                       1359 00156$:
      0016B9 D5 F0 FB         [24] 1360 	djnz	b,00154$
      0016BC 42 C6            [12] 1361 	orl	_PORT_CFG,a
                                   1362 ;	util.c:53: *dir[port] |= 1 << pin;
      0016BE EF               [12] 1363 	mov	a,r7
      0016BF 75 F0 03         [24] 1364 	mov	b,#0x03
      0016C2 A4               [48] 1365 	mul	ab
      0016C3 FF               [12] 1366 	mov	r7,a
      0016C4 AE F0            [24] 1367 	mov	r6,b
      0016C6 24 64            [12] 1368 	add	a,#_pinMode_dir_65536_18
      0016C8 F5 82            [12] 1369 	mov	dpl,a
      0016CA EE               [12] 1370 	mov	a,r6
      0016CB 34 07            [12] 1371 	addc	a,#(_pinMode_dir_65536_18 >> 8)
      0016CD F5 83            [12] 1372 	mov	dph,a
      0016CF E0               [24] 1373 	movx	a,@dptr
      0016D0 FB               [12] 1374 	mov	r3,a
      0016D1 A3               [24] 1375 	inc	dptr
      0016D2 E0               [24] 1376 	movx	a,@dptr
      0016D3 FC               [12] 1377 	mov	r4,a
      0016D4 A3               [24] 1378 	inc	dptr
      0016D5 E0               [24] 1379 	movx	a,@dptr
      0016D6 FD               [12] 1380 	mov	r5,a
      0016D7 8B 82            [24] 1381 	mov	dpl,r3
      0016D9 8C 83            [24] 1382 	mov	dph,r4
      0016DB 8D F0            [24] 1383 	mov	b,r5
      0016DD 12 4C 44         [24] 1384 	lcall	__gptrget
      0016E0 FA               [12] 1385 	mov	r2,a
      0016E1 90 07 61         [24] 1386 	mov	dptr,#_pinMode_PARM_2
      0016E4 E0               [24] 1387 	movx	a,@dptr
      0016E5 F9               [12] 1388 	mov	r1,a
      0016E6 89 F0            [24] 1389 	mov	b,r1
      0016E8 05 F0            [12] 1390 	inc	b
      0016EA 74 01            [12] 1391 	mov	a,#0x01
      0016EC 80 02            [24] 1392 	sjmp	00159$
      0016EE                       1393 00157$:
      0016EE 25 E0            [12] 1394 	add	a,acc
      0016F0                       1395 00159$:
      0016F0 D5 F0 FB         [24] 1396 	djnz	b,00157$
      0016F3 F9               [12] 1397 	mov	r1,a
      0016F4 42 02            [12] 1398 	orl	ar2,a
      0016F6 8B 82            [24] 1399 	mov	dpl,r3
      0016F8 8C 83            [24] 1400 	mov	dph,r4
      0016FA 8D F0            [24] 1401 	mov	b,r5
      0016FC EA               [12] 1402 	mov	a,r2
      0016FD 12 41 8F         [24] 1403 	lcall	__gptrput
                                   1404 ;	util.c:54: *pu[port] |= 1 << pin;
      001700 EF               [12] 1405 	mov	a,r7
      001701 24 70            [12] 1406 	add	a,#_pinMode_pu_65536_18
      001703 F5 82            [12] 1407 	mov	dpl,a
      001705 EE               [12] 1408 	mov	a,r6
      001706 34 07            [12] 1409 	addc	a,#(_pinMode_pu_65536_18 >> 8)
      001708 F5 83            [12] 1410 	mov	dph,a
      00170A E0               [24] 1411 	movx	a,@dptr
      00170B FD               [12] 1412 	mov	r5,a
      00170C A3               [24] 1413 	inc	dptr
      00170D E0               [24] 1414 	movx	a,@dptr
      00170E FE               [12] 1415 	mov	r6,a
      00170F A3               [24] 1416 	inc	dptr
      001710 E0               [24] 1417 	movx	a,@dptr
      001711 FF               [12] 1418 	mov	r7,a
      001712 8D 82            [24] 1419 	mov	dpl,r5
      001714 8E 83            [24] 1420 	mov	dph,r6
      001716 8F F0            [24] 1421 	mov	b,r7
      001718 12 4C 44         [24] 1422 	lcall	__gptrget
      00171B 42 01            [12] 1423 	orl	ar1,a
      00171D 8D 82            [24] 1424 	mov	dpl,r5
      00171F 8E 83            [24] 1425 	mov	dph,r6
      001721 8F F0            [24] 1426 	mov	b,r7
      001723 E9               [12] 1427 	mov	a,r1
                                   1428 ;	util.c:58: }
                                   1429 ;	util.c:59: }
      001724 02 41 8F         [24] 1430 	ljmp	__gptrput
                                   1431 ;------------------------------------------------------------
                                   1432 ;Allocation info for local variables in function 'putchar'
                                   1433 ;------------------------------------------------------------
                                   1434 ;c                         Allocated with name '_putchar_c_65536_20'
                                   1435 ;------------------------------------------------------------
                                   1436 ;	util.c:64: int putchar(int c)
                                   1437 ;	-----------------------------------------
                                   1438 ;	 function putchar
                                   1439 ;	-----------------------------------------
      001727                       1440 _putchar:
      001727 AF 83            [24] 1441 	mov	r7,dph
      001729 E5 82            [12] 1442 	mov	a,dpl
      00172B 90 07 7C         [24] 1443 	mov	dptr,#_putchar_c_65536_20
      00172E F0               [24] 1444 	movx	@dptr,a
      00172F EF               [12] 1445 	mov	a,r7
      001730 A3               [24] 1446 	inc	dptr
      001731 F0               [24] 1447 	movx	@dptr,a
                                   1448 ;	util.c:66: while (!TI);
      001732                       1449 00101$:
                                   1450 ;	util.c:67: TI = 0;
                                   1451 ;	assignBit
      001732 10 99 02         [24] 1452 	jbc	_TI,00114$
      001735 80 FB            [24] 1453 	sjmp	00101$
      001737                       1454 00114$:
                                   1455 ;	util.c:68: SBUF = c & 0xFF;
      001737 90 07 7C         [24] 1456 	mov	dptr,#_putchar_c_65536_20
      00173A E0               [24] 1457 	movx	a,@dptr
      00173B FE               [12] 1458 	mov	r6,a
      00173C A3               [24] 1459 	inc	dptr
      00173D E0               [24] 1460 	movx	a,@dptr
      00173E FF               [12] 1461 	mov	r7,a
      00173F 8E 99            [24] 1462 	mov	_SBUF,r6
                                   1463 ;	util.c:69: return c;
      001741 8E 82            [24] 1464 	mov	dpl,r6
      001743 8F 83            [24] 1465 	mov	dph,r7
                                   1466 ;	util.c:70: }
      001745 22               [24] 1467 	ret
                                   1468 ;------------------------------------------------------------
                                   1469 ;Allocation info for local variables in function 'getchar'
                                   1470 ;------------------------------------------------------------
                                   1471 ;	util.c:72: int getchar() 
                                   1472 ;	-----------------------------------------
                                   1473 ;	 function getchar
                                   1474 ;	-----------------------------------------
      001746                       1475 _getchar:
                                   1476 ;	util.c:74: while(!RI);
      001746                       1477 00101$:
                                   1478 ;	util.c:75: RI = 0;
                                   1479 ;	assignBit
      001746 10 98 02         [24] 1480 	jbc	_RI,00114$
      001749 80 FB            [24] 1481 	sjmp	00101$
      00174B                       1482 00114$:
                                   1483 ;	util.c:76: return SBUF;
      00174B AE 99            [24] 1484 	mov	r6,_SBUF
      00174D 7F 00            [12] 1485 	mov	r7,#0x00
      00174F 8E 82            [24] 1486 	mov	dpl,r6
      001751 8F 83            [24] 1487 	mov	dph,r7
                                   1488 ;	util.c:77: }
      001753 22               [24] 1489 	ret
                                   1490 ;------------------------------------------------------------
                                   1491 ;Allocation info for local variables in function 'delayUs'
                                   1492 ;------------------------------------------------------------
                                   1493 ;n                         Allocated with name '_delayUs_n_65536_23'
                                   1494 ;------------------------------------------------------------
                                   1495 ;	util.c:86: void delayUs(unsigned short n)
                                   1496 ;	-----------------------------------------
                                   1497 ;	 function delayUs
                                   1498 ;	-----------------------------------------
      001754                       1499 _delayUs:
      001754 AF 83            [24] 1500 	mov	r7,dph
      001756 E5 82            [12] 1501 	mov	a,dpl
      001758 90 07 7E         [24] 1502 	mov	dptr,#_delayUs_n_65536_23
      00175B F0               [24] 1503 	movx	@dptr,a
      00175C EF               [12] 1504 	mov	a,r7
      00175D A3               [24] 1505 	inc	dptr
      00175E F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	util.c:88: while (n) 
      00175F 90 07 7E         [24] 1508 	mov	dptr,#_delayUs_n_65536_23
      001762 E0               [24] 1509 	movx	a,@dptr
      001763 FE               [12] 1510 	mov	r6,a
      001764 A3               [24] 1511 	inc	dptr
      001765 E0               [24] 1512 	movx	a,@dptr
      001766 FF               [12] 1513 	mov	r7,a
      001767                       1514 00101$:
      001767 EE               [12] 1515 	mov	a,r6
      001768 4F               [12] 1516 	orl	a,r7
      001769 60 35            [24] 1517 	jz	00108$
                                   1518 ;	util.c:90: ++ SAFE_MOD;  // 2 Fsys cycles, for higher Fsys, add operation here
      00176B 05 A1            [12] 1519 	inc	_SAFE_MOD
                                   1520 ;	util.c:93: ++ SAFE_MOD;
      00176D 05 A1            [12] 1521 	inc	_SAFE_MOD
                                   1522 ;	util.c:96: ++ SAFE_MOD;
      00176F 05 A1            [12] 1523 	inc	_SAFE_MOD
                                   1524 ;	util.c:99: ++ SAFE_MOD;
      001771 05 A1            [12] 1525 	inc	_SAFE_MOD
                                   1526 ;	util.c:102: ++ SAFE_MOD;
      001773 05 A1            [12] 1527 	inc	_SAFE_MOD
                                   1528 ;	util.c:105: ++ SAFE_MOD;
      001775 05 A1            [12] 1529 	inc	_SAFE_MOD
                                   1530 ;	util.c:108: ++ SAFE_MOD;
      001777 05 A1            [12] 1531 	inc	_SAFE_MOD
                                   1532 ;	util.c:111: ++ SAFE_MOD;
      001779 05 A1            [12] 1533 	inc	_SAFE_MOD
                                   1534 ;	util.c:114: ++ SAFE_MOD;
      00177B 05 A1            [12] 1535 	inc	_SAFE_MOD
                                   1536 ;	util.c:117: ++ SAFE_MOD;
      00177D 05 A1            [12] 1537 	inc	_SAFE_MOD
                                   1538 ;	util.c:120: ++ SAFE_MOD;
      00177F 05 A1            [12] 1539 	inc	_SAFE_MOD
                                   1540 ;	util.c:123: ++ SAFE_MOD;
      001781 05 A1            [12] 1541 	inc	_SAFE_MOD
                                   1542 ;	util.c:126: ++ SAFE_MOD;
      001783 05 A1            [12] 1543 	inc	_SAFE_MOD
                                   1544 ;	util.c:129: ++ SAFE_MOD;
      001785 05 A1            [12] 1545 	inc	_SAFE_MOD
                                   1546 ;	util.c:132: ++ SAFE_MOD;
      001787 05 A1            [12] 1547 	inc	_SAFE_MOD
                                   1548 ;	util.c:135: ++ SAFE_MOD;
      001789 05 A1            [12] 1549 	inc	_SAFE_MOD
                                   1550 ;	util.c:138: ++ SAFE_MOD;
      00178B 05 A1            [12] 1551 	inc	_SAFE_MOD
                                   1552 ;	util.c:141: ++ SAFE_MOD;
      00178D 05 A1            [12] 1553 	inc	_SAFE_MOD
                                   1554 ;	util.c:144: ++ SAFE_MOD;
      00178F 05 A1            [12] 1555 	inc	_SAFE_MOD
                                   1556 ;	util.c:159: --n;
      001791 1E               [12] 1557 	dec	r6
      001792 BE FF 01         [24] 1558 	cjne	r6,#0xff,00116$
      001795 1F               [12] 1559 	dec	r7
      001796                       1560 00116$:
      001796 90 07 7E         [24] 1561 	mov	dptr,#_delayUs_n_65536_23
      001799 EE               [12] 1562 	mov	a,r6
      00179A F0               [24] 1563 	movx	@dptr,a
      00179B EF               [12] 1564 	mov	a,r7
      00179C A3               [24] 1565 	inc	dptr
      00179D F0               [24] 1566 	movx	@dptr,a
      00179E 80 C7            [24] 1567 	sjmp	00101$
      0017A0                       1568 00108$:
      0017A0 90 07 7E         [24] 1569 	mov	dptr,#_delayUs_n_65536_23
      0017A3 EE               [12] 1570 	mov	a,r6
      0017A4 F0               [24] 1571 	movx	@dptr,a
      0017A5 EF               [12] 1572 	mov	a,r7
      0017A6 A3               [24] 1573 	inc	dptr
      0017A7 F0               [24] 1574 	movx	@dptr,a
                                   1575 ;	util.c:161: }
      0017A8 22               [24] 1576 	ret
                                   1577 ;------------------------------------------------------------
                                   1578 ;Allocation info for local variables in function 'delay'
                                   1579 ;------------------------------------------------------------
                                   1580 ;n                         Allocated with name '_delay_n_65536_26'
                                   1581 ;------------------------------------------------------------
                                   1582 ;	util.c:170: void delay(unsigned short n)
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function delay
                                   1585 ;	-----------------------------------------
      0017A9                       1586 _delay:
      0017A9 AF 83            [24] 1587 	mov	r7,dph
      0017AB E5 82            [12] 1588 	mov	a,dpl
      0017AD 90 07 80         [24] 1589 	mov	dptr,#_delay_n_65536_26
      0017B0 F0               [24] 1590 	movx	@dptr,a
      0017B1 EF               [12] 1591 	mov	a,r7
      0017B2 A3               [24] 1592 	inc	dptr
      0017B3 F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	util.c:172: while (n) 
      0017B4 90 07 80         [24] 1595 	mov	dptr,#_delay_n_65536_26
      0017B7 E0               [24] 1596 	movx	a,@dptr
      0017B8 FE               [12] 1597 	mov	r6,a
      0017B9 A3               [24] 1598 	inc	dptr
      0017BA E0               [24] 1599 	movx	a,@dptr
      0017BB FF               [12] 1600 	mov	r7,a
      0017BC                       1601 00101$:
      0017BC EE               [12] 1602 	mov	a,r6
      0017BD 4F               [12] 1603 	orl	a,r7
      0017BE 60 1D            [24] 1604 	jz	00108$
                                   1605 ;	util.c:174: delayUs(1000);
      0017C0 90 03 E8         [24] 1606 	mov	dptr,#0x03e8
      0017C3 C0 07            [24] 1607 	push	ar7
      0017C5 C0 06            [24] 1608 	push	ar6
      0017C7 12 17 54         [24] 1609 	lcall	_delayUs
      0017CA D0 06            [24] 1610 	pop	ar6
      0017CC D0 07            [24] 1611 	pop	ar7
                                   1612 ;	util.c:175: --n;
      0017CE 1E               [12] 1613 	dec	r6
      0017CF BE FF 01         [24] 1614 	cjne	r6,#0xff,00116$
      0017D2 1F               [12] 1615 	dec	r7
      0017D3                       1616 00116$:
      0017D3 90 07 80         [24] 1617 	mov	dptr,#_delay_n_65536_26
      0017D6 EE               [12] 1618 	mov	a,r6
      0017D7 F0               [24] 1619 	movx	@dptr,a
      0017D8 EF               [12] 1620 	mov	a,r7
      0017D9 A3               [24] 1621 	inc	dptr
      0017DA F0               [24] 1622 	movx	@dptr,a
      0017DB 80 DF            [24] 1623 	sjmp	00101$
      0017DD                       1624 00108$:
      0017DD 90 07 80         [24] 1625 	mov	dptr,#_delay_n_65536_26
      0017E0 EE               [12] 1626 	mov	a,r6
      0017E1 F0               [24] 1627 	movx	@dptr,a
      0017E2 EF               [12] 1628 	mov	a,r7
      0017E3 A3               [24] 1629 	inc	dptr
      0017E4 F0               [24] 1630 	movx	@dptr,a
                                   1631 ;	util.c:177: }
      0017E5 22               [24] 1632 	ret
                                   1633 	.area CSEG    (CODE)
                                   1634 	.area CONST   (CODE)
                                   1635 	.area XINIT   (CODE)
                                   1636 	.area CABS    (ABS,CODE)
