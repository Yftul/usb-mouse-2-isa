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
                                    285 	.globl _LED_DMA_XL
                                    286 	.globl _LED_DMA_XH
                                    287 	.globl _LED_DMA_CN
                                    288 	.globl _LED_DMA_AL
                                    289 	.globl _LED_DMA_AH
                                    290 	.globl _LED_CK_SE
                                    291 	.globl _LED_DATA
                                    292 	.globl _LED_CTRL
                                    293 	.globl _LED_STAT
                                    294 	.globl _pUEP3_DMA_L
                                    295 	.globl _pUEP3_DMA_H
                                    296 	.globl _UEP3_DMA_H
                                    297 	.globl _UEP3_DMA_L
                                    298 	.globl _UEP3_DMA
                                    299 	.globl _pUEP2_DMA_L
                                    300 	.globl _pUEP2_DMA_H
                                    301 	.globl _UEP2_DMA_H
                                    302 	.globl _UEP2_DMA_L
                                    303 	.globl _UEP2_DMA
                                    304 	.globl _pUEP1_DMA_L
                                    305 	.globl _pUEP1_DMA_H
                                    306 	.globl _UEP1_DMA_L
                                    307 	.globl _UEP1_DMA_H
                                    308 	.globl _pUEP0_DMA_L
                                    309 	.globl _pUEP0_DMA_H
                                    310 	.globl _UEP0_DMA_L
                                    311 	.globl _UEP0_DMA_H
                                    312 	.globl _UEP2_3_MOD
                                    313 	.globl _UEP4_1_MOD
                                    314 	.globl _pLED_DMA_XL
                                    315 	.globl _pLED_DMA_XH
                                    316 	.globl _pLED_DMA_CN
                                    317 	.globl _pLED_DMA_AL
                                    318 	.globl _pLED_DMA_AH
                                    319 	.globl _pLED_CK_SE
                                    320 	.globl _pLED_DATA
                                    321 	.globl _pLED_CTRL
                                    322 	.globl _pLED_STAT
                                    323 	.globl _pUEP2_3_MOD
                                    324 	.globl _pUEP4_1_MOD
                                    325 	.globl _runBootloader
                                    326 	.globl _delayUs
                                    327 	.globl _delay
                                    328 ;--------------------------------------------------------
                                    329 ; special function registers
                                    330 ;--------------------------------------------------------
                                    331 	.area RSEG    (ABS,DATA)
      000000                        332 	.org 0x0000
                           0000D0   333 _PSW	=	0x00d0
                           0000E0   334 _ACC	=	0x00e0
                           0000F0   335 _B	=	0x00f0
                           000081   336 _SP	=	0x0081
                           000082   337 _DPL	=	0x0082
                           000083   338 _DPH	=	0x0083
                           0000A1   339 _SAFE_MOD	=	0x00a1
                           0000B1   340 _GLOBAL_CFG	=	0x00b1
                           000087   341 _PCON	=	0x0087
                           0000B2   342 _PLL_CFG	=	0x00b2
                           0000B3   343 _CLOCK_CFG	=	0x00b3
                           0000EA   344 _SLEEP_CTRL	=	0x00ea
                           0000EB   345 _WAKE_CTRL	=	0x00eb
                           0000FE   346 _RESET_KEEP	=	0x00fe
                           0000FF   347 _WDOG_COUNT	=	0x00ff
                           0000A8   348 _IE	=	0x00a8
                           0000B8   349 _IP	=	0x00b8
                           0000E8   350 _IE_EX	=	0x00e8
                           0000E9   351 _IP_EX	=	0x00e9
                           0000CF   352 _GPIO_IE	=	0x00cf
                           008584   353 _ROM_ADDR	=	0x8584
                           000084   354 _ROM_ADDR_L	=	0x0084
                           000085   355 _ROM_ADDR_H	=	0x0085
                           008F8E   356 _ROM_DATA	=	0x8f8e
                           00008E   357 _ROM_DATA_L	=	0x008e
                           00008F   358 _ROM_DATA_H	=	0x008f
                           000086   359 _ROM_CTRL	=	0x0086
                           000080   360 _P0	=	0x0080
                           0000C4   361 _P0_DIR	=	0x00c4
                           0000C5   362 _P0_PU	=	0x00c5
                           000090   363 _P1	=	0x0090
                           0000B9   364 _P1_IE	=	0x00b9
                           0000BA   365 _P1_DIR	=	0x00ba
                           0000BB   366 _P1_PU	=	0x00bb
                           0000A0   367 _P2	=	0x00a0
                           0000BC   368 _P2_DIR	=	0x00bc
                           0000BD   369 _P2_PU	=	0x00bd
                           0000B0   370 _P3	=	0x00b0
                           0000BE   371 _P3_DIR	=	0x00be
                           0000BF   372 _P3_PU	=	0x00bf
                           0000C0   373 _P4_OUT	=	0x00c0
                           0000C1   374 _P4_IN	=	0x00c1
                           0000C2   375 _P4_DIR	=	0x00c2
                           0000C3   376 _P4_PU	=	0x00c3
                           0000C7   377 _P5_IN	=	0x00c7
                           0000C6   378 _PORT_CFG	=	0x00c6
                           0000CE   379 _PIN_FUNC	=	0x00ce
                           0000A2   380 _XBUS_AUX	=	0x00a2
                           0000FD   381 _XBUS_SPEED	=	0x00fd
                           000088   382 _TCON	=	0x0088
                           000089   383 _TMOD	=	0x0089
                           00008A   384 _TL0	=	0x008a
                           00008B   385 _TL1	=	0x008b
                           00008C   386 _TH0	=	0x008c
                           00008D   387 _TH1	=	0x008d
                           000098   388 _SCON	=	0x0098
                           000099   389 _SBUF	=	0x0099
                           0000C8   390 _T2CON	=	0x00c8
                           0000C9   391 _T2MOD	=	0x00c9
                           00CBCA   392 _RCAP2	=	0xcbca
                           0000CA   393 _RCAP2L	=	0x00ca
                           0000CB   394 _RCAP2H	=	0x00cb
                           00CDCC   395 _T2COUNT	=	0xcdcc
                           0000CC   396 _TL2	=	0x00cc
                           0000CD   397 _TH2	=	0x00cd
                           0000A3   398 _T3_SETUP	=	0x00a3
                           00A5A4   399 _T3_COUNT	=	0xa5a4
                           0000A4   400 _T3_COUNT_L	=	0x00a4
                           0000A5   401 _T3_COUNT_H	=	0x00a5
                           00A7A6   402 _T3_END	=	0xa7a6
                           0000A6   403 _T3_END_L	=	0x00a6
                           0000A7   404 _T3_END_H	=	0x00a7
                           0000A9   405 _T3_STAT	=	0x00a9
                           0000AA   406 _T3_CTRL	=	0x00aa
                           0000AB   407 _T3_DMA_CN	=	0x00ab
                           00ADAC   408 _T3_DMA	=	0xadac
                           0000AC   409 _T3_DMA_AL	=	0x00ac
                           0000AD   410 _T3_DMA_AH	=	0x00ad
                           00AFAE   411 _T3_FIFO	=	0xafae
                           0000AE   412 _T3_FIFO_L	=	0x00ae
                           0000AF   413 _T3_FIFO_H	=	0x00af
                           00009B   414 _PWM_DATA2	=	0x009b
                           00009C   415 _PWM_DATA	=	0x009c
                           00009D   416 _PWM_CTRL	=	0x009d
                           00009E   417 _PWM_CK_SE	=	0x009e
                           00009F   418 _PWM_CYCLE	=	0x009f
                           0000F8   419 _SPI0_STAT	=	0x00f8
                           0000F9   420 _SPI0_DATA	=	0x00f9
                           0000FA   421 _SPI0_CTRL	=	0x00fa
                           0000FB   422 _SPI0_CK_SE	=	0x00fb
                           0000FC   423 _SPI0_SETUP	=	0x00fc
                           0000B4   424 _SPI1_STAT	=	0x00b4
                           0000B5   425 _SPI1_DATA	=	0x00b5
                           0000B6   426 _SPI1_CTRL	=	0x00b6
                           0000B7   427 _SPI1_CK_SE	=	0x00b7
                           00009A   428 _SER1_FIFO	=	0x009a
                           000091   429 _SER1_IER	=	0x0091
                           000092   430 _SER1_IIR	=	0x0092
                           000093   431 _SER1_LCR	=	0x0093
                           000094   432 _SER1_MCR	=	0x0094
                           000095   433 _SER1_LSR	=	0x0095
                           000096   434 _SER1_MSR	=	0x0096
                           000097   435 _SER1_ADDR	=	0x0097
                           00EDEC   436 _ADC_DMA	=	0xedec
                           0000EC   437 _ADC_DMA_AL	=	0x00ec
                           0000ED   438 _ADC_DMA_AH	=	0x00ed
                           0000EE   439 _ADC_DMA_CN	=	0x00ee
                           0000EF   440 _ADC_CK_SE	=	0x00ef
                           0000F1   441 _ADC_STAT	=	0x00f1
                           0000F2   442 _ADC_CTRL	=	0x00f2
                           0000F3   443 _ADC_CHANN	=	0x00f3
                           00F5F4   444 _ADC_FIFO	=	0xf5f4
                           0000F4   445 _ADC_FIFO_L	=	0x00f4
                           0000F5   446 _ADC_FIFO_H	=	0x00f5
                           0000F6   447 _ADC_SETUP	=	0x00f6
                           0000F7   448 _ADC_EX_SW	=	0x00f7
                           0000D1   449 _USB_RX_LEN	=	0x00d1
                           0000D2   450 _UEP1_CTRL	=	0x00d2
                           0000D3   451 _UEP1_T_LEN	=	0x00d3
                           0000D4   452 _UEP2_CTRL	=	0x00d4
                           0000D5   453 _UEP2_T_LEN	=	0x00d5
                           0000D6   454 _UEP3_CTRL	=	0x00d6
                           0000D7   455 _UEP3_T_LEN	=	0x00d7
                           0000D8   456 _USB_INT_FG	=	0x00d8
                           0000D9   457 _USB_INT_ST	=	0x00d9
                           0000DA   458 _USB_MIS_ST	=	0x00da
                           0000DB   459 _USB_HUB_ST	=	0x00db
                           0000DC   460 _UEP0_CTRL	=	0x00dc
                           0000DD   461 _UEP0_T_LEN	=	0x00dd
                           0000DE   462 _UEP4_CTRL	=	0x00de
                           0000DF   463 _UEP4_T_LEN	=	0x00df
                           0000E1   464 _USB_INT_EN	=	0x00e1
                           0000E2   465 _USB_CTRL	=	0x00e2
                           0000E3   466 _USB_DEV_AD	=	0x00e3
                           0000E4   467 _UDEV_CTRL	=	0x00e4
                           0000E5   468 _UHUB1_CTRL	=	0x00e5
                           00E7E6   469 _USB_DMA	=	0xe7e6
                           0000E6   470 _USB_DMA_AL	=	0x00e6
                           0000E7   471 _USB_DMA_AH	=	0x00e7
                                    472 ;--------------------------------------------------------
                                    473 ; special function bits
                                    474 ;--------------------------------------------------------
                                    475 	.area RSEG    (ABS,DATA)
      000000                        476 	.org 0x0000
                           0000D7   477 _CY	=	0x00d7
                           0000D6   478 _AC	=	0x00d6
                           0000D5   479 _F0	=	0x00d5
                           0000D4   480 _RS1	=	0x00d4
                           0000D3   481 _RS0	=	0x00d3
                           0000D2   482 _OV	=	0x00d2
                           0000D1   483 _F1	=	0x00d1
                           0000D0   484 _P	=	0x00d0
                           0000AF   485 _EA	=	0x00af
                           0000AE   486 _E_DIS	=	0x00ae
                           0000AD   487 _ET2	=	0x00ad
                           0000AC   488 _ES	=	0x00ac
                           0000AB   489 _ET1	=	0x00ab
                           0000AA   490 _EX1	=	0x00aa
                           0000A9   491 _ET0	=	0x00a9
                           0000A8   492 _EX0	=	0x00a8
                           0000BF   493 _PH_FLAG	=	0x00bf
                           0000BE   494 _PL_FLAG	=	0x00be
                           0000BD   495 _PT2	=	0x00bd
                           0000BC   496 _PS	=	0x00bc
                           0000BB   497 _PT1	=	0x00bb
                           0000BA   498 _PX1	=	0x00ba
                           0000B9   499 _PT0	=	0x00b9
                           0000B8   500 _PX0	=	0x00b8
                           0000EF   501 _IE_WDOG	=	0x00ef
                           0000EE   502 _IE_GPIO	=	0x00ee
                           0000ED   503 _IE_PWM1	=	0x00ed
                           0000EC   504 _IE_UART1	=	0x00ec
                           0000EB   505 _IE_ADC	=	0x00eb
                           0000EA   506 _IE_USB	=	0x00ea
                           0000E9   507 _IE_TMR3	=	0x00e9
                           0000E8   508 _IE_SPI0	=	0x00e8
                           000087   509 _UDCD	=	0x0087
                           000086   510 _URI	=	0x0086
                           000085   511 _UDSR	=	0x0085
                           000084   512 _UCTS	=	0x0084
                           000083   513 _TXD_	=	0x0083
                           000082   514 _RXD_	=	0x0082
                           000081   515 _URTS	=	0x0081
                           000080   516 _UDTR	=	0x0080
                           000097   517 _AIN7	=	0x0097
                           000096   518 _AIN6	=	0x0096
                           000095   519 _AIN5	=	0x0095
                           000094   520 _AIN4	=	0x0094
                           000093   521 _AIN3	=	0x0093
                           000092   522 _AIN2	=	0x0092
                           000091   523 _AIN1	=	0x0091
                           000090   524 _AIN0	=	0x0090
                           000097   525 _SCK	=	0x0097
                           000096   526 _MISO	=	0x0096
                           000095   527 _MOSI	=	0x0095
                           000094   528 _SCS	=	0x0094
                           000092   529 _PWM3	=	0x0092
                           000092   530 _CAP3	=	0x0092
                           000091   531 _T2EX	=	0x0091
                           000091   532 _CAP2	=	0x0091
                           000090   533 _T2	=	0x0090
                           000090   534 _CAP1	=	0x0090
                           0000A7   535 _TXD1	=	0x00a7
                           0000A7   536 _DA7	=	0x00a7
                           0000A6   537 _RXD1	=	0x00a6
                           0000A5   538 _TNOW	=	0x00a5
                           0000A5   539 _PWM2	=	0x00a5
                           0000A5   540 _T2EX_	=	0x00a5
                           0000A5   541 _CAP2_	=	0x00a5
                           0000A4   542 _PWM1	=	0x00a4
                           0000A3   543 _SCK1	=	0x00a3
                           0000A2   544 _MISO1	=	0x00a2
                           0000A1   545 _MOSI1	=	0x00a1
                           0000B7   546 _RD	=	0x00b7
                           0000B6   547 _WR	=	0x00b6
                           0000B5   548 _DA6	=	0x00b5
                           0000B5   549 _T1	=	0x00b5
                           0000B4   550 _LEDC	=	0x00b4
                           0000B4   551 _XCS0	=	0x00b4
                           0000B4   552 _T0	=	0x00b4
                           0000B3   553 _LED1	=	0x00b3
                           0000B3   554 _INT1	=	0x00b3
                           0000B2   555 _LED0	=	0x00b2
                           0000B2   556 _INT0	=	0x00b2
                           0000B1   557 _TXD	=	0x00b1
                           0000B0   558 _RXD	=	0x00b0
                           0000C7   559 _SCK_	=	0x00c7
                           0000C6   560 _SCS_	=	0x00c6
                           0000C5   561 _PWM2_	=	0x00c5
                           0000C4   562 _LED3	=	0x00c4
                           0000C4   563 _TNOW_	=	0x00c4
                           0000C4   564 _TXD1_	=	0x00c4
                           0000C3   565 _PWM1_	=	0x00c3
                           0000C2   566 _PWM3_	=	0x00c2
                           0000C2   567 _CAP3_	=	0x00c2
                           0000C0   568 _LED2	=	0x00c0
                           0000C0   569 _RXD1_	=	0x00c0
                           00008F   570 _TF1	=	0x008f
                           00008E   571 _TR1	=	0x008e
                           00008D   572 _TF0	=	0x008d
                           00008C   573 _TR0	=	0x008c
                           00008B   574 _IE1	=	0x008b
                           00008A   575 _IT1	=	0x008a
                           000089   576 _IE0	=	0x0089
                           000088   577 _IT0	=	0x0088
                           00009F   578 _SM0	=	0x009f
                           00009E   579 _SM1	=	0x009e
                           00009D   580 _SM2	=	0x009d
                           00009C   581 _REN	=	0x009c
                           00009B   582 _TB8	=	0x009b
                           00009A   583 _RB8	=	0x009a
                           000099   584 _TI	=	0x0099
                           000098   585 _RI	=	0x0098
                           0000CF   586 _TF2	=	0x00cf
                           0000CF   587 _CAP1F	=	0x00cf
                           0000CE   588 _EXF2	=	0x00ce
                           0000CD   589 _RCLK	=	0x00cd
                           0000CC   590 _TCLK	=	0x00cc
                           0000CB   591 _EXEN2	=	0x00cb
                           0000CA   592 _TR2	=	0x00ca
                           0000C9   593 _C_T2	=	0x00c9
                           0000C8   594 _CP_RL2	=	0x00c8
                           0000FF   595 _S0_FST_ACT	=	0x00ff
                           0000FE   596 _S0_IF_OV	=	0x00fe
                           0000FD   597 _S0_IF_FIRST	=	0x00fd
                           0000FC   598 _S0_IF_BYTE	=	0x00fc
                           0000FB   599 _S0_FREE	=	0x00fb
                           0000FA   600 _S0_T_FIFO	=	0x00fa
                           0000F9   601 _S0_R_FIFO1	=	0x00f9
                           0000F8   602 _S0_R_FIFO0	=	0x00f8
                           0000DF   603 _U_IS_NAK	=	0x00df
                           0000DE   604 _U_TOG_OK	=	0x00de
                           0000DD   605 _U_SIE_FREE	=	0x00dd
                           0000DC   606 _UIF_FIFO_OV	=	0x00dc
                           0000DB   607 _UIF_HST_SOF	=	0x00db
                           0000DA   608 _UIF_SUSPEND	=	0x00da
                           0000D9   609 _UIF_TRANSFER	=	0x00d9
                           0000D8   610 _UIF_DETECT	=	0x00d8
                           0000D8   611 _UIF_BUS_RST	=	0x00d8
                                    612 ;--------------------------------------------------------
                                    613 ; overlayable register banks
                                    614 ;--------------------------------------------------------
                                    615 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        616 	.ds 8
                                    617 ;--------------------------------------------------------
                                    618 ; internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area DSEG    (DATA)
      00000E                        621 _runBootloader::
      00000E                        622 	.ds 2
                                    623 ;--------------------------------------------------------
                                    624 ; overlayable items in internal ram
                                    625 ;--------------------------------------------------------
                                    626 ;--------------------------------------------------------
                                    627 ; indirectly addressable internal ram data
                                    628 ;--------------------------------------------------------
                                    629 	.area ISEG    (DATA)
                                    630 ;--------------------------------------------------------
                                    631 ; absolute internal ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area IABS    (ABS,DATA)
                                    634 	.area IABS    (ABS,DATA)
                                    635 ;--------------------------------------------------------
                                    636 ; bit data
                                    637 ;--------------------------------------------------------
                                    638 	.area BSEG    (BIT)
                                    639 ;--------------------------------------------------------
                                    640 ; paged external ram data
                                    641 ;--------------------------------------------------------
                                    642 	.area PSEG    (PAG,XDATA)
                           002546   643 _pUEP4_1_MOD	=	0x2546
                           002547   644 _pUEP2_3_MOD	=	0x2547
                           002980   645 _pLED_STAT	=	0x2980
                           002981   646 _pLED_CTRL	=	0x2981
                           002982   647 _pLED_DATA	=	0x2982
                           002983   648 _pLED_CK_SE	=	0x2983
                           002984   649 _pLED_DMA_AH	=	0x2984
                           002985   650 _pLED_DMA_AL	=	0x2985
                           002986   651 _pLED_DMA_CN	=	0x2986
                           002988   652 _pLED_DMA_XH	=	0x2988
                           002989   653 _pLED_DMA_XL	=	0x2989
                                    654 ;--------------------------------------------------------
                                    655 ; external ram data
                                    656 ;--------------------------------------------------------
                                    657 	.area XSEG    (XDATA)
                           002446   658 _UEP4_1_MOD	=	0x2446
                           002447   659 _UEP2_3_MOD	=	0x2447
                           002448   660 _UEP0_DMA_H	=	0x2448
                           002449   661 _UEP0_DMA_L	=	0x2449
                           002548   662 _pUEP0_DMA_H	=	0x2548
                           002549   663 _pUEP0_DMA_L	=	0x2549
                           00244A   664 _UEP1_DMA_H	=	0x244a
                           00244B   665 _UEP1_DMA_L	=	0x244b
                           00254A   666 _pUEP1_DMA_H	=	0x254a
                           00254B   667 _pUEP1_DMA_L	=	0x254b
                           00244C   668 _UEP2_DMA	=	0x244c
                           00244D   669 _UEP2_DMA_L	=	0x244d
                           00244C   670 _UEP2_DMA_H	=	0x244c
                           00254C   671 _pUEP2_DMA_H	=	0x254c
                           00254D   672 _pUEP2_DMA_L	=	0x254d
                           00244E   673 _UEP3_DMA	=	0x244e
                           00244F   674 _UEP3_DMA_L	=	0x244f
                           00244E   675 _UEP3_DMA_H	=	0x244e
                           00254E   676 _pUEP3_DMA_H	=	0x254e
                           00254F   677 _pUEP3_DMA_L	=	0x254f
                           002880   678 _LED_STAT	=	0x2880
                           002881   679 _LED_CTRL	=	0x2881
                           002882   680 _LED_DATA	=	0x2882
                           002883   681 _LED_CK_SE	=	0x2883
                           002884   682 _LED_DMA_AH	=	0x2884
                           002885   683 _LED_DMA_AL	=	0x2885
                           002886   684 _LED_DMA_CN	=	0x2886
                           002888   685 _LED_DMA_XH	=	0x2888
                           002889   686 _LED_DMA_XL	=	0x2889
      000843                        687 _delayUs_n_65536_16:
      000843                        688 	.ds 2
      000845                        689 _delay_n_65536_41:
      000845                        690 	.ds 2
                                    691 ;--------------------------------------------------------
                                    692 ; absolute external ram data
                                    693 ;--------------------------------------------------------
                                    694 	.area XABS    (ABS,XDATA)
                                    695 ;--------------------------------------------------------
                                    696 ; external initialized ram data
                                    697 ;--------------------------------------------------------
                                    698 	.area XISEG   (XDATA)
                                    699 	.area HOME    (CODE)
                                    700 	.area GSINIT0 (CODE)
                                    701 	.area GSINIT1 (CODE)
                                    702 	.area GSINIT2 (CODE)
                                    703 	.area GSINIT3 (CODE)
                                    704 	.area GSINIT4 (CODE)
                                    705 	.area GSINIT5 (CODE)
                                    706 	.area GSINIT  (CODE)
                                    707 	.area GSFINAL (CODE)
                                    708 	.area CSEG    (CODE)
                                    709 ;--------------------------------------------------------
                                    710 ; global & static initialisations
                                    711 ;--------------------------------------------------------
                                    712 	.area HOME    (CODE)
                                    713 	.area GSINIT  (CODE)
                                    714 	.area GSFINAL (CODE)
                                    715 	.area GSINIT  (CODE)
                                    716 ;	util.c:9: FunctionReference runBootloader = (FunctionReference)0xF400;
      0000FB 75 0E 00         [24]  717 	mov	_runBootloader,#0x00
      0000FE 75 0F F4         [24]  718 	mov	(_runBootloader + 1),#0xf4
                                    719 ;--------------------------------------------------------
                                    720 ; Home
                                    721 ;--------------------------------------------------------
                                    722 	.area HOME    (CODE)
                                    723 	.area HOME    (CODE)
                                    724 ;--------------------------------------------------------
                                    725 ; code
                                    726 ;--------------------------------------------------------
                                    727 	.area CSEG    (CODE)
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'delayUs'
                                    730 ;------------------------------------------------------------
                                    731 ;n                         Allocated with name '_delayUs_n_65536_16'
                                    732 ;------------------------------------------------------------
                                    733 ;	util.c:18: void delayUs(uint16_t n)
                                    734 ;	-----------------------------------------
                                    735 ;	 function delayUs
                                    736 ;	-----------------------------------------
      0015E7                        737 _delayUs:
                           000007   738 	ar7 = 0x07
                           000006   739 	ar6 = 0x06
                           000005   740 	ar5 = 0x05
                           000004   741 	ar4 = 0x04
                           000003   742 	ar3 = 0x03
                           000002   743 	ar2 = 0x02
                           000001   744 	ar1 = 0x01
                           000000   745 	ar0 = 0x00
      0015E7 AF 83            [24]  746 	mov	r7,dph
      0015E9 E5 82            [12]  747 	mov	a,dpl
      0015EB 90 08 43         [24]  748 	mov	dptr,#_delayUs_n_65536_16
      0015EE F0               [24]  749 	movx	@dptr,a
      0015EF EF               [12]  750 	mov	a,r7
      0015F0 A3               [24]  751 	inc	dptr
      0015F1 F0               [24]  752 	movx	@dptr,a
                                    753 ;	util.c:20: while (n) {       // total = 12~13 Fsys cycles, 1uS @Fsys=12MHz
      0015F2 90 08 43         [24]  754 	mov	dptr,#_delayUs_n_65536_16
      0015F5 E0               [24]  755 	movx	a,@dptr
      0015F6 FE               [12]  756 	mov	r6,a
      0015F7 A3               [24]  757 	inc	dptr
      0015F8 E0               [24]  758 	movx	a,@dptr
      0015F9 FF               [12]  759 	mov	r7,a
      0015FA                        760 00145$:
      0015FA EE               [12]  761 	mov	a,r6
      0015FB 4F               [12]  762 	orl	a,r7
      0015FC 60 35            [24]  763 	jz	00152$
                                    764 ;	util.c:21: ++ SAFE_MOD;  // 2 Fsys cycles, for higher Fsys, add operation here
      0015FE 05 A1            [12]  765 	inc	_SAFE_MOD
                                    766 ;	util.c:24: ADD_CYCLES_FOR_FREQ(14000000)
      001600 05 A1            [12]  767 	inc	_SAFE_MOD
                                    768 ;	util.c:25: ADD_CYCLES_FOR_FREQ(16000000)
      001602 05 A1            [12]  769 	inc	_SAFE_MOD
                                    770 ;	util.c:26: ADD_CYCLES_FOR_FREQ(18000000)
      001604 05 A1            [12]  771 	inc	_SAFE_MOD
                                    772 ;	util.c:27: ADD_CYCLES_FOR_FREQ(20000000)
      001606 05 A1            [12]  773 	inc	_SAFE_MOD
                                    774 ;	util.c:28: ADD_CYCLES_FOR_FREQ(22000000)
      001608 05 A1            [12]  775 	inc	_SAFE_MOD
                                    776 ;	util.c:29: ADD_CYCLES_FOR_FREQ(24000000)
      00160A 05 A1            [12]  777 	inc	_SAFE_MOD
                                    778 ;	util.c:30: ADD_CYCLES_FOR_FREQ(26000000)
      00160C 05 A1            [12]  779 	inc	_SAFE_MOD
                                    780 ;	util.c:31: ADD_CYCLES_FOR_FREQ(28000000)
      00160E 05 A1            [12]  781 	inc	_SAFE_MOD
                                    782 ;	util.c:32: ADD_CYCLES_FOR_FREQ(30000000)
      001610 05 A1            [12]  783 	inc	_SAFE_MOD
                                    784 ;	util.c:33: ADD_CYCLES_FOR_FREQ(32000000)
      001612 05 A1            [12]  785 	inc	_SAFE_MOD
                                    786 ;	util.c:34: ADD_CYCLES_FOR_FREQ(34000000)
      001614 05 A1            [12]  787 	inc	_SAFE_MOD
                                    788 ;	util.c:35: ADD_CYCLES_FOR_FREQ(36000000)
      001616 05 A1            [12]  789 	inc	_SAFE_MOD
                                    790 ;	util.c:36: ADD_CYCLES_FOR_FREQ(38000000)
      001618 05 A1            [12]  791 	inc	_SAFE_MOD
                                    792 ;	util.c:37: ADD_CYCLES_FOR_FREQ(40000000)
      00161A 05 A1            [12]  793 	inc	_SAFE_MOD
                                    794 ;	util.c:38: ADD_CYCLES_FOR_FREQ(42000000)
      00161C 05 A1            [12]  795 	inc	_SAFE_MOD
                                    796 ;	util.c:39: ADD_CYCLES_FOR_FREQ(44000000)
      00161E 05 A1            [12]  797 	inc	_SAFE_MOD
                                    798 ;	util.c:40: ADD_CYCLES_FOR_FREQ(46000000)
      001620 05 A1            [12]  799 	inc	_SAFE_MOD
                                    800 ;	util.c:41: ADD_CYCLES_FOR_FREQ(48000000)
      001622 05 A1            [12]  801 	inc	_SAFE_MOD
                                    802 ;	util.c:47: --n;
      001624 1E               [12]  803 	dec	r6
      001625 BE FF 01         [24]  804 	cjne	r6,#0xff,00160$
      001628 1F               [12]  805 	dec	r7
      001629                        806 00160$:
      001629 90 08 43         [24]  807 	mov	dptr,#_delayUs_n_65536_16
      00162C EE               [12]  808 	mov	a,r6
      00162D F0               [24]  809 	movx	@dptr,a
      00162E EF               [12]  810 	mov	a,r7
      00162F A3               [24]  811 	inc	dptr
      001630 F0               [24]  812 	movx	@dptr,a
      001631 80 C7            [24]  813 	sjmp	00145$
      001633                        814 00152$:
      001633 90 08 43         [24]  815 	mov	dptr,#_delayUs_n_65536_16
      001636 EE               [12]  816 	mov	a,r6
      001637 F0               [24]  817 	movx	@dptr,a
      001638 EF               [12]  818 	mov	a,r7
      001639 A3               [24]  819 	inc	dptr
      00163A F0               [24]  820 	movx	@dptr,a
                                    821 ;	util.c:49: }
      00163B 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'delay'
                                    825 ;------------------------------------------------------------
                                    826 ;n                         Allocated with name '_delay_n_65536_41'
                                    827 ;------------------------------------------------------------
                                    828 ;	util.c:58: void delay(uint16_t n)
                                    829 ;	-----------------------------------------
                                    830 ;	 function delay
                                    831 ;	-----------------------------------------
      00163C                        832 _delay:
      00163C AF 83            [24]  833 	mov	r7,dph
      00163E E5 82            [12]  834 	mov	a,dpl
      001640 90 08 45         [24]  835 	mov	dptr,#_delay_n_65536_41
      001643 F0               [24]  836 	movx	@dptr,a
      001644 EF               [12]  837 	mov	a,r7
      001645 A3               [24]  838 	inc	dptr
      001646 F0               [24]  839 	movx	@dptr,a
                                    840 ;	util.c:60: while (n--) {
      001647 90 08 45         [24]  841 	mov	dptr,#_delay_n_65536_41
      00164A E0               [24]  842 	movx	a,@dptr
      00164B FE               [12]  843 	mov	r6,a
      00164C A3               [24]  844 	inc	dptr
      00164D E0               [24]  845 	movx	a,@dptr
      00164E FF               [12]  846 	mov	r7,a
      00164F                        847 00101$:
      00164F 8E 04            [24]  848 	mov	ar4,r6
      001651 8F 05            [24]  849 	mov	ar5,r7
      001653 1E               [12]  850 	dec	r6
      001654 BE FF 01         [24]  851 	cjne	r6,#0xff,00115$
      001657 1F               [12]  852 	dec	r7
      001658                        853 00115$:
      001658 90 08 45         [24]  854 	mov	dptr,#_delay_n_65536_41
      00165B EE               [12]  855 	mov	a,r6
      00165C F0               [24]  856 	movx	@dptr,a
      00165D EF               [12]  857 	mov	a,r7
      00165E A3               [24]  858 	inc	dptr
      00165F F0               [24]  859 	movx	@dptr,a
      001660 EC               [12]  860 	mov	a,r4
      001661 4D               [12]  861 	orl	a,r5
      001662 60 10            [24]  862 	jz	00108$
                                    863 ;	util.c:61: delayUs(1000);
      001664 90 03 E8         [24]  864 	mov	dptr,#0x03e8
      001667 C0 07            [24]  865 	push	ar7
      001669 C0 06            [24]  866 	push	ar6
      00166B 12 15 E7         [24]  867 	lcall	_delayUs
      00166E D0 06            [24]  868 	pop	ar6
      001670 D0 07            [24]  869 	pop	ar7
      001672 80 DB            [24]  870 	sjmp	00101$
      001674                        871 00108$:
      001674 90 08 45         [24]  872 	mov	dptr,#_delay_n_65536_41
      001677 EE               [12]  873 	mov	a,r6
      001678 F0               [24]  874 	movx	@dptr,a
      001679 EF               [12]  875 	mov	a,r7
      00167A A3               [24]  876 	inc	dptr
      00167B F0               [24]  877 	movx	@dptr,a
                                    878 ;	util.c:63: }
      00167C 22               [24]  879 	ret
                                    880 	.area CSEG    (CODE)
                                    881 	.area CONST   (CODE)
                                    882 	.area XINIT   (CODE)
                                    883 	.area CABS    (ABS,CODE)
