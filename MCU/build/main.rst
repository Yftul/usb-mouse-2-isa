                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _flash_led
                                     13 	.globl _processUart
                                     14 	.globl _pollHIDdevice
                                     15 	.globl _resetHubDevices
                                     16 	.globl _checkRootHubConnections
                                     17 	.globl _initUSB_Host
                                     18 	.globl _delay
                                     19 	.globl _delayUs
                                     20 	.globl _UIF_BUS_RST
                                     21 	.globl _UIF_DETECT
                                     22 	.globl _UIF_TRANSFER
                                     23 	.globl _UIF_SUSPEND
                                     24 	.globl _UIF_HST_SOF
                                     25 	.globl _UIF_FIFO_OV
                                     26 	.globl _U_SIE_FREE
                                     27 	.globl _U_TOG_OK
                                     28 	.globl _U_IS_NAK
                                     29 	.globl _S0_R_FIFO0
                                     30 	.globl _S0_R_FIFO1
                                     31 	.globl _S0_T_FIFO
                                     32 	.globl _S0_FREE
                                     33 	.globl _S0_IF_BYTE
                                     34 	.globl _S0_IF_FIRST
                                     35 	.globl _S0_IF_OV
                                     36 	.globl _S0_FST_ACT
                                     37 	.globl _CP_RL2
                                     38 	.globl _C_T2
                                     39 	.globl _TR2
                                     40 	.globl _EXEN2
                                     41 	.globl _TCLK
                                     42 	.globl _RCLK
                                     43 	.globl _EXF2
                                     44 	.globl _CAP1F
                                     45 	.globl _TF2
                                     46 	.globl _RI
                                     47 	.globl _TI
                                     48 	.globl _RB8
                                     49 	.globl _TB8
                                     50 	.globl _REN
                                     51 	.globl _SM2
                                     52 	.globl _SM1
                                     53 	.globl _SM0
                                     54 	.globl _IT0
                                     55 	.globl _IE0
                                     56 	.globl _IT1
                                     57 	.globl _IE1
                                     58 	.globl _TR0
                                     59 	.globl _TF0
                                     60 	.globl _TR1
                                     61 	.globl _TF1
                                     62 	.globl _RXD1_
                                     63 	.globl _LED2
                                     64 	.globl _CAP3_
                                     65 	.globl _PWM3_
                                     66 	.globl _PWM1_
                                     67 	.globl _TXD1_
                                     68 	.globl _TNOW_
                                     69 	.globl _LED3
                                     70 	.globl _PWM2_
                                     71 	.globl _SCS_
                                     72 	.globl _SCK_
                                     73 	.globl _RXD
                                     74 	.globl _TXD
                                     75 	.globl _INT0
                                     76 	.globl _LED0
                                     77 	.globl _INT1
                                     78 	.globl _LED1
                                     79 	.globl _T0
                                     80 	.globl _XCS0
                                     81 	.globl _LEDC
                                     82 	.globl _T1
                                     83 	.globl _DA6
                                     84 	.globl _WR
                                     85 	.globl _RD
                                     86 	.globl _MOSI1
                                     87 	.globl _MISO1
                                     88 	.globl _SCK1
                                     89 	.globl _PWM1
                                     90 	.globl _CAP2_
                                     91 	.globl _T2EX_
                                     92 	.globl _PWM2
                                     93 	.globl _TNOW
                                     94 	.globl _RXD1
                                     95 	.globl _DA7
                                     96 	.globl _TXD1
                                     97 	.globl _CAP1
                                     98 	.globl _T2
                                     99 	.globl _CAP2
                                    100 	.globl _T2EX
                                    101 	.globl _CAP3
                                    102 	.globl _PWM3
                                    103 	.globl _SCS
                                    104 	.globl _MOSI
                                    105 	.globl _MISO
                                    106 	.globl _SCK
                                    107 	.globl _AIN0
                                    108 	.globl _AIN1
                                    109 	.globl _AIN2
                                    110 	.globl _AIN3
                                    111 	.globl _AIN4
                                    112 	.globl _AIN5
                                    113 	.globl _AIN6
                                    114 	.globl _AIN7
                                    115 	.globl _UDTR
                                    116 	.globl _URTS
                                    117 	.globl _RXD_
                                    118 	.globl _TXD_
                                    119 	.globl _UCTS
                                    120 	.globl _UDSR
                                    121 	.globl _URI
                                    122 	.globl _UDCD
                                    123 	.globl _IE_SPI0
                                    124 	.globl _IE_TMR3
                                    125 	.globl _IE_USB
                                    126 	.globl _IE_ADC
                                    127 	.globl _IE_UART1
                                    128 	.globl _IE_PWM1
                                    129 	.globl _IE_GPIO
                                    130 	.globl _IE_WDOG
                                    131 	.globl _PX0
                                    132 	.globl _PT0
                                    133 	.globl _PX1
                                    134 	.globl _PT1
                                    135 	.globl _PS
                                    136 	.globl _PT2
                                    137 	.globl _PL_FLAG
                                    138 	.globl _PH_FLAG
                                    139 	.globl _EX0
                                    140 	.globl _ET0
                                    141 	.globl _EX1
                                    142 	.globl _ET1
                                    143 	.globl _ES
                                    144 	.globl _ET2
                                    145 	.globl _E_DIS
                                    146 	.globl _EA
                                    147 	.globl _P
                                    148 	.globl _F1
                                    149 	.globl _OV
                                    150 	.globl _RS0
                                    151 	.globl _RS1
                                    152 	.globl _F0
                                    153 	.globl _AC
                                    154 	.globl _CY
                                    155 	.globl _USB_DMA_AH
                                    156 	.globl _USB_DMA_AL
                                    157 	.globl _USB_DMA
                                    158 	.globl _UHUB1_CTRL
                                    159 	.globl _UDEV_CTRL
                                    160 	.globl _USB_DEV_AD
                                    161 	.globl _USB_CTRL
                                    162 	.globl _USB_INT_EN
                                    163 	.globl _UEP4_T_LEN
                                    164 	.globl _UEP4_CTRL
                                    165 	.globl _UEP0_T_LEN
                                    166 	.globl _UEP0_CTRL
                                    167 	.globl _USB_HUB_ST
                                    168 	.globl _USB_MIS_ST
                                    169 	.globl _USB_INT_ST
                                    170 	.globl _USB_INT_FG
                                    171 	.globl _UEP3_T_LEN
                                    172 	.globl _UEP3_CTRL
                                    173 	.globl _UEP2_T_LEN
                                    174 	.globl _UEP2_CTRL
                                    175 	.globl _UEP1_T_LEN
                                    176 	.globl _UEP1_CTRL
                                    177 	.globl _USB_RX_LEN
                                    178 	.globl _ADC_EX_SW
                                    179 	.globl _ADC_SETUP
                                    180 	.globl _ADC_FIFO_H
                                    181 	.globl _ADC_FIFO_L
                                    182 	.globl _ADC_FIFO
                                    183 	.globl _ADC_CHANN
                                    184 	.globl _ADC_CTRL
                                    185 	.globl _ADC_STAT
                                    186 	.globl _ADC_CK_SE
                                    187 	.globl _ADC_DMA_CN
                                    188 	.globl _ADC_DMA_AH
                                    189 	.globl _ADC_DMA_AL
                                    190 	.globl _ADC_DMA
                                    191 	.globl _SER1_ADDR
                                    192 	.globl _SER1_MSR
                                    193 	.globl _SER1_LSR
                                    194 	.globl _SER1_MCR
                                    195 	.globl _SER1_LCR
                                    196 	.globl _SER1_IIR
                                    197 	.globl _SER1_IER
                                    198 	.globl _SER1_FIFO
                                    199 	.globl _SPI1_CK_SE
                                    200 	.globl _SPI1_CTRL
                                    201 	.globl _SPI1_DATA
                                    202 	.globl _SPI1_STAT
                                    203 	.globl _SPI0_SETUP
                                    204 	.globl _SPI0_CK_SE
                                    205 	.globl _SPI0_CTRL
                                    206 	.globl _SPI0_DATA
                                    207 	.globl _SPI0_STAT
                                    208 	.globl _PWM_CYCLE
                                    209 	.globl _PWM_CK_SE
                                    210 	.globl _PWM_CTRL
                                    211 	.globl _PWM_DATA
                                    212 	.globl _PWM_DATA2
                                    213 	.globl _T3_FIFO_H
                                    214 	.globl _T3_FIFO_L
                                    215 	.globl _T3_FIFO
                                    216 	.globl _T3_DMA_AH
                                    217 	.globl _T3_DMA_AL
                                    218 	.globl _T3_DMA
                                    219 	.globl _T3_DMA_CN
                                    220 	.globl _T3_CTRL
                                    221 	.globl _T3_STAT
                                    222 	.globl _T3_END_H
                                    223 	.globl _T3_END_L
                                    224 	.globl _T3_END
                                    225 	.globl _T3_COUNT_H
                                    226 	.globl _T3_COUNT_L
                                    227 	.globl _T3_COUNT
                                    228 	.globl _T3_SETUP
                                    229 	.globl _TH2
                                    230 	.globl _TL2
                                    231 	.globl _T2COUNT
                                    232 	.globl _RCAP2H
                                    233 	.globl _RCAP2L
                                    234 	.globl _RCAP2
                                    235 	.globl _T2MOD
                                    236 	.globl _T2CON
                                    237 	.globl _SBUF
                                    238 	.globl _SCON
                                    239 	.globl _TH1
                                    240 	.globl _TH0
                                    241 	.globl _TL1
                                    242 	.globl _TL0
                                    243 	.globl _TMOD
                                    244 	.globl _TCON
                                    245 	.globl _XBUS_SPEED
                                    246 	.globl _XBUS_AUX
                                    247 	.globl _PIN_FUNC
                                    248 	.globl _PORT_CFG
                                    249 	.globl _P5_IN
                                    250 	.globl _P4_PU
                                    251 	.globl _P4_DIR
                                    252 	.globl _P4_IN
                                    253 	.globl _P4_OUT
                                    254 	.globl _P3_PU
                                    255 	.globl _P3_DIR
                                    256 	.globl _P3
                                    257 	.globl _P2_PU
                                    258 	.globl _P2_DIR
                                    259 	.globl _P2
                                    260 	.globl _P1_PU
                                    261 	.globl _P1_DIR
                                    262 	.globl _P1_IE
                                    263 	.globl _P1
                                    264 	.globl _P0_PU
                                    265 	.globl _P0_DIR
                                    266 	.globl _P0
                                    267 	.globl _ROM_CTRL
                                    268 	.globl _ROM_DATA_H
                                    269 	.globl _ROM_DATA_L
                                    270 	.globl _ROM_DATA
                                    271 	.globl _ROM_ADDR_H
                                    272 	.globl _ROM_ADDR_L
                                    273 	.globl _ROM_ADDR
                                    274 	.globl _GPIO_IE
                                    275 	.globl _IP_EX
                                    276 	.globl _IE_EX
                                    277 	.globl _IP
                                    278 	.globl _IE
                                    279 	.globl _WDOG_COUNT
                                    280 	.globl _RESET_KEEP
                                    281 	.globl _WAKE_CTRL
                                    282 	.globl _SLEEP_CTRL
                                    283 	.globl _CLOCK_CFG
                                    284 	.globl _PLL_CFG
                                    285 	.globl _PCON
                                    286 	.globl _GLOBAL_CFG
                                    287 	.globl _SAFE_MOD
                                    288 	.globl _DPH
                                    289 	.globl _DPL
                                    290 	.globl _SP
                                    291 	.globl _B
                                    292 	.globl _ACC
                                    293 	.globl _PSW
                                    294 	.globl _LED_DMA_XL
                                    295 	.globl _LED_DMA_XH
                                    296 	.globl _LED_DMA_CN
                                    297 	.globl _LED_DMA_AL
                                    298 	.globl _LED_DMA_AH
                                    299 	.globl _LED_CK_SE
                                    300 	.globl _LED_DATA
                                    301 	.globl _LED_CTRL
                                    302 	.globl _LED_STAT
                                    303 	.globl _pUEP3_DMA_L
                                    304 	.globl _pUEP3_DMA_H
                                    305 	.globl _UEP3_DMA_H
                                    306 	.globl _UEP3_DMA_L
                                    307 	.globl _UEP3_DMA
                                    308 	.globl _pUEP2_DMA_L
                                    309 	.globl _pUEP2_DMA_H
                                    310 	.globl _UEP2_DMA_H
                                    311 	.globl _UEP2_DMA_L
                                    312 	.globl _UEP2_DMA
                                    313 	.globl _pUEP1_DMA_L
                                    314 	.globl _pUEP1_DMA_H
                                    315 	.globl _UEP1_DMA_L
                                    316 	.globl _UEP1_DMA_H
                                    317 	.globl _pUEP0_DMA_L
                                    318 	.globl _pUEP0_DMA_H
                                    319 	.globl _UEP0_DMA_L
                                    320 	.globl _UEP0_DMA_H
                                    321 	.globl _UEP2_3_MOD
                                    322 	.globl _UEP4_1_MOD
                                    323 	.globl _pLED_DMA_XL
                                    324 	.globl _pLED_DMA_XH
                                    325 	.globl _pLED_DMA_CN
                                    326 	.globl _pLED_DMA_AL
                                    327 	.globl _pLED_DMA_AH
                                    328 	.globl _pLED_CK_SE
                                    329 	.globl _pLED_DATA
                                    330 	.globl _pLED_CTRL
                                    331 	.globl _pLED_STAT
                                    332 	.globl _pUEP2_3_MOD
                                    333 	.globl _pUEP4_1_MOD
                                    334 	.globl _putchar
                                    335 	.globl _getchar
                                    336 ;--------------------------------------------------------
                                    337 ; special function registers
                                    338 ;--------------------------------------------------------
                                    339 	.area RSEG    (ABS,DATA)
      000000                        340 	.org 0x0000
                           0000D0   341 _PSW	=	0x00d0
                           0000E0   342 _ACC	=	0x00e0
                           0000F0   343 _B	=	0x00f0
                           000081   344 _SP	=	0x0081
                           000082   345 _DPL	=	0x0082
                           000083   346 _DPH	=	0x0083
                           0000A1   347 _SAFE_MOD	=	0x00a1
                           0000B1   348 _GLOBAL_CFG	=	0x00b1
                           000087   349 _PCON	=	0x0087
                           0000B2   350 _PLL_CFG	=	0x00b2
                           0000B3   351 _CLOCK_CFG	=	0x00b3
                           0000EA   352 _SLEEP_CTRL	=	0x00ea
                           0000EB   353 _WAKE_CTRL	=	0x00eb
                           0000FE   354 _RESET_KEEP	=	0x00fe
                           0000FF   355 _WDOG_COUNT	=	0x00ff
                           0000A8   356 _IE	=	0x00a8
                           0000B8   357 _IP	=	0x00b8
                           0000E8   358 _IE_EX	=	0x00e8
                           0000E9   359 _IP_EX	=	0x00e9
                           0000CF   360 _GPIO_IE	=	0x00cf
                           008584   361 _ROM_ADDR	=	0x8584
                           000084   362 _ROM_ADDR_L	=	0x0084
                           000085   363 _ROM_ADDR_H	=	0x0085
                           008F8E   364 _ROM_DATA	=	0x8f8e
                           00008E   365 _ROM_DATA_L	=	0x008e
                           00008F   366 _ROM_DATA_H	=	0x008f
                           000086   367 _ROM_CTRL	=	0x0086
                           000080   368 _P0	=	0x0080
                           0000C4   369 _P0_DIR	=	0x00c4
                           0000C5   370 _P0_PU	=	0x00c5
                           000090   371 _P1	=	0x0090
                           0000B9   372 _P1_IE	=	0x00b9
                           0000BA   373 _P1_DIR	=	0x00ba
                           0000BB   374 _P1_PU	=	0x00bb
                           0000A0   375 _P2	=	0x00a0
                           0000BC   376 _P2_DIR	=	0x00bc
                           0000BD   377 _P2_PU	=	0x00bd
                           0000B0   378 _P3	=	0x00b0
                           0000BE   379 _P3_DIR	=	0x00be
                           0000BF   380 _P3_PU	=	0x00bf
                           0000C0   381 _P4_OUT	=	0x00c0
                           0000C1   382 _P4_IN	=	0x00c1
                           0000C2   383 _P4_DIR	=	0x00c2
                           0000C3   384 _P4_PU	=	0x00c3
                           0000C7   385 _P5_IN	=	0x00c7
                           0000C6   386 _PORT_CFG	=	0x00c6
                           0000CE   387 _PIN_FUNC	=	0x00ce
                           0000A2   388 _XBUS_AUX	=	0x00a2
                           0000FD   389 _XBUS_SPEED	=	0x00fd
                           000088   390 _TCON	=	0x0088
                           000089   391 _TMOD	=	0x0089
                           00008A   392 _TL0	=	0x008a
                           00008B   393 _TL1	=	0x008b
                           00008C   394 _TH0	=	0x008c
                           00008D   395 _TH1	=	0x008d
                           000098   396 _SCON	=	0x0098
                           000099   397 _SBUF	=	0x0099
                           0000C8   398 _T2CON	=	0x00c8
                           0000C9   399 _T2MOD	=	0x00c9
                           00CBCA   400 _RCAP2	=	0xcbca
                           0000CA   401 _RCAP2L	=	0x00ca
                           0000CB   402 _RCAP2H	=	0x00cb
                           00CDCC   403 _T2COUNT	=	0xcdcc
                           0000CC   404 _TL2	=	0x00cc
                           0000CD   405 _TH2	=	0x00cd
                           0000A3   406 _T3_SETUP	=	0x00a3
                           00A5A4   407 _T3_COUNT	=	0xa5a4
                           0000A4   408 _T3_COUNT_L	=	0x00a4
                           0000A5   409 _T3_COUNT_H	=	0x00a5
                           00A7A6   410 _T3_END	=	0xa7a6
                           0000A6   411 _T3_END_L	=	0x00a6
                           0000A7   412 _T3_END_H	=	0x00a7
                           0000A9   413 _T3_STAT	=	0x00a9
                           0000AA   414 _T3_CTRL	=	0x00aa
                           0000AB   415 _T3_DMA_CN	=	0x00ab
                           00ADAC   416 _T3_DMA	=	0xadac
                           0000AC   417 _T3_DMA_AL	=	0x00ac
                           0000AD   418 _T3_DMA_AH	=	0x00ad
                           00AFAE   419 _T3_FIFO	=	0xafae
                           0000AE   420 _T3_FIFO_L	=	0x00ae
                           0000AF   421 _T3_FIFO_H	=	0x00af
                           00009B   422 _PWM_DATA2	=	0x009b
                           00009C   423 _PWM_DATA	=	0x009c
                           00009D   424 _PWM_CTRL	=	0x009d
                           00009E   425 _PWM_CK_SE	=	0x009e
                           00009F   426 _PWM_CYCLE	=	0x009f
                           0000F8   427 _SPI0_STAT	=	0x00f8
                           0000F9   428 _SPI0_DATA	=	0x00f9
                           0000FA   429 _SPI0_CTRL	=	0x00fa
                           0000FB   430 _SPI0_CK_SE	=	0x00fb
                           0000FC   431 _SPI0_SETUP	=	0x00fc
                           0000B4   432 _SPI1_STAT	=	0x00b4
                           0000B5   433 _SPI1_DATA	=	0x00b5
                           0000B6   434 _SPI1_CTRL	=	0x00b6
                           0000B7   435 _SPI1_CK_SE	=	0x00b7
                           00009A   436 _SER1_FIFO	=	0x009a
                           000091   437 _SER1_IER	=	0x0091
                           000092   438 _SER1_IIR	=	0x0092
                           000093   439 _SER1_LCR	=	0x0093
                           000094   440 _SER1_MCR	=	0x0094
                           000095   441 _SER1_LSR	=	0x0095
                           000096   442 _SER1_MSR	=	0x0096
                           000097   443 _SER1_ADDR	=	0x0097
                           00EDEC   444 _ADC_DMA	=	0xedec
                           0000EC   445 _ADC_DMA_AL	=	0x00ec
                           0000ED   446 _ADC_DMA_AH	=	0x00ed
                           0000EE   447 _ADC_DMA_CN	=	0x00ee
                           0000EF   448 _ADC_CK_SE	=	0x00ef
                           0000F1   449 _ADC_STAT	=	0x00f1
                           0000F2   450 _ADC_CTRL	=	0x00f2
                           0000F3   451 _ADC_CHANN	=	0x00f3
                           00F5F4   452 _ADC_FIFO	=	0xf5f4
                           0000F4   453 _ADC_FIFO_L	=	0x00f4
                           0000F5   454 _ADC_FIFO_H	=	0x00f5
                           0000F6   455 _ADC_SETUP	=	0x00f6
                           0000F7   456 _ADC_EX_SW	=	0x00f7
                           0000D1   457 _USB_RX_LEN	=	0x00d1
                           0000D2   458 _UEP1_CTRL	=	0x00d2
                           0000D3   459 _UEP1_T_LEN	=	0x00d3
                           0000D4   460 _UEP2_CTRL	=	0x00d4
                           0000D5   461 _UEP2_T_LEN	=	0x00d5
                           0000D6   462 _UEP3_CTRL	=	0x00d6
                           0000D7   463 _UEP3_T_LEN	=	0x00d7
                           0000D8   464 _USB_INT_FG	=	0x00d8
                           0000D9   465 _USB_INT_ST	=	0x00d9
                           0000DA   466 _USB_MIS_ST	=	0x00da
                           0000DB   467 _USB_HUB_ST	=	0x00db
                           0000DC   468 _UEP0_CTRL	=	0x00dc
                           0000DD   469 _UEP0_T_LEN	=	0x00dd
                           0000DE   470 _UEP4_CTRL	=	0x00de
                           0000DF   471 _UEP4_T_LEN	=	0x00df
                           0000E1   472 _USB_INT_EN	=	0x00e1
                           0000E2   473 _USB_CTRL	=	0x00e2
                           0000E3   474 _USB_DEV_AD	=	0x00e3
                           0000E4   475 _UDEV_CTRL	=	0x00e4
                           0000E5   476 _UHUB1_CTRL	=	0x00e5
                           00E7E6   477 _USB_DMA	=	0xe7e6
                           0000E6   478 _USB_DMA_AL	=	0x00e6
                           0000E7   479 _USB_DMA_AH	=	0x00e7
                                    480 ;--------------------------------------------------------
                                    481 ; special function bits
                                    482 ;--------------------------------------------------------
                                    483 	.area RSEG    (ABS,DATA)
      000000                        484 	.org 0x0000
                           0000D7   485 _CY	=	0x00d7
                           0000D6   486 _AC	=	0x00d6
                           0000D5   487 _F0	=	0x00d5
                           0000D4   488 _RS1	=	0x00d4
                           0000D3   489 _RS0	=	0x00d3
                           0000D2   490 _OV	=	0x00d2
                           0000D1   491 _F1	=	0x00d1
                           0000D0   492 _P	=	0x00d0
                           0000AF   493 _EA	=	0x00af
                           0000AE   494 _E_DIS	=	0x00ae
                           0000AD   495 _ET2	=	0x00ad
                           0000AC   496 _ES	=	0x00ac
                           0000AB   497 _ET1	=	0x00ab
                           0000AA   498 _EX1	=	0x00aa
                           0000A9   499 _ET0	=	0x00a9
                           0000A8   500 _EX0	=	0x00a8
                           0000BF   501 _PH_FLAG	=	0x00bf
                           0000BE   502 _PL_FLAG	=	0x00be
                           0000BD   503 _PT2	=	0x00bd
                           0000BC   504 _PS	=	0x00bc
                           0000BB   505 _PT1	=	0x00bb
                           0000BA   506 _PX1	=	0x00ba
                           0000B9   507 _PT0	=	0x00b9
                           0000B8   508 _PX0	=	0x00b8
                           0000EF   509 _IE_WDOG	=	0x00ef
                           0000EE   510 _IE_GPIO	=	0x00ee
                           0000ED   511 _IE_PWM1	=	0x00ed
                           0000EC   512 _IE_UART1	=	0x00ec
                           0000EB   513 _IE_ADC	=	0x00eb
                           0000EA   514 _IE_USB	=	0x00ea
                           0000E9   515 _IE_TMR3	=	0x00e9
                           0000E8   516 _IE_SPI0	=	0x00e8
                           000087   517 _UDCD	=	0x0087
                           000086   518 _URI	=	0x0086
                           000085   519 _UDSR	=	0x0085
                           000084   520 _UCTS	=	0x0084
                           000083   521 _TXD_	=	0x0083
                           000082   522 _RXD_	=	0x0082
                           000081   523 _URTS	=	0x0081
                           000080   524 _UDTR	=	0x0080
                           000097   525 _AIN7	=	0x0097
                           000096   526 _AIN6	=	0x0096
                           000095   527 _AIN5	=	0x0095
                           000094   528 _AIN4	=	0x0094
                           000093   529 _AIN3	=	0x0093
                           000092   530 _AIN2	=	0x0092
                           000091   531 _AIN1	=	0x0091
                           000090   532 _AIN0	=	0x0090
                           000097   533 _SCK	=	0x0097
                           000096   534 _MISO	=	0x0096
                           000095   535 _MOSI	=	0x0095
                           000094   536 _SCS	=	0x0094
                           000092   537 _PWM3	=	0x0092
                           000092   538 _CAP3	=	0x0092
                           000091   539 _T2EX	=	0x0091
                           000091   540 _CAP2	=	0x0091
                           000090   541 _T2	=	0x0090
                           000090   542 _CAP1	=	0x0090
                           0000A7   543 _TXD1	=	0x00a7
                           0000A7   544 _DA7	=	0x00a7
                           0000A6   545 _RXD1	=	0x00a6
                           0000A5   546 _TNOW	=	0x00a5
                           0000A5   547 _PWM2	=	0x00a5
                           0000A5   548 _T2EX_	=	0x00a5
                           0000A5   549 _CAP2_	=	0x00a5
                           0000A4   550 _PWM1	=	0x00a4
                           0000A3   551 _SCK1	=	0x00a3
                           0000A2   552 _MISO1	=	0x00a2
                           0000A1   553 _MOSI1	=	0x00a1
                           0000B7   554 _RD	=	0x00b7
                           0000B6   555 _WR	=	0x00b6
                           0000B5   556 _DA6	=	0x00b5
                           0000B5   557 _T1	=	0x00b5
                           0000B4   558 _LEDC	=	0x00b4
                           0000B4   559 _XCS0	=	0x00b4
                           0000B4   560 _T0	=	0x00b4
                           0000B3   561 _LED1	=	0x00b3
                           0000B3   562 _INT1	=	0x00b3
                           0000B2   563 _LED0	=	0x00b2
                           0000B2   564 _INT0	=	0x00b2
                           0000B1   565 _TXD	=	0x00b1
                           0000B0   566 _RXD	=	0x00b0
                           0000C7   567 _SCK_	=	0x00c7
                           0000C6   568 _SCS_	=	0x00c6
                           0000C5   569 _PWM2_	=	0x00c5
                           0000C4   570 _LED3	=	0x00c4
                           0000C4   571 _TNOW_	=	0x00c4
                           0000C4   572 _TXD1_	=	0x00c4
                           0000C3   573 _PWM1_	=	0x00c3
                           0000C2   574 _PWM3_	=	0x00c2
                           0000C2   575 _CAP3_	=	0x00c2
                           0000C0   576 _LED2	=	0x00c0
                           0000C0   577 _RXD1_	=	0x00c0
                           00008F   578 _TF1	=	0x008f
                           00008E   579 _TR1	=	0x008e
                           00008D   580 _TF0	=	0x008d
                           00008C   581 _TR0	=	0x008c
                           00008B   582 _IE1	=	0x008b
                           00008A   583 _IT1	=	0x008a
                           000089   584 _IE0	=	0x0089
                           000088   585 _IT0	=	0x0088
                           00009F   586 _SM0	=	0x009f
                           00009E   587 _SM1	=	0x009e
                           00009D   588 _SM2	=	0x009d
                           00009C   589 _REN	=	0x009c
                           00009B   590 _TB8	=	0x009b
                           00009A   591 _RB8	=	0x009a
                           000099   592 _TI	=	0x0099
                           000098   593 _RI	=	0x0098
                           0000CF   594 _TF2	=	0x00cf
                           0000CF   595 _CAP1F	=	0x00cf
                           0000CE   596 _EXF2	=	0x00ce
                           0000CD   597 _RCLK	=	0x00cd
                           0000CC   598 _TCLK	=	0x00cc
                           0000CB   599 _EXEN2	=	0x00cb
                           0000CA   600 _TR2	=	0x00ca
                           0000C9   601 _C_T2	=	0x00c9
                           0000C8   602 _CP_RL2	=	0x00c8
                           0000FF   603 _S0_FST_ACT	=	0x00ff
                           0000FE   604 _S0_IF_OV	=	0x00fe
                           0000FD   605 _S0_IF_FIRST	=	0x00fd
                           0000FC   606 _S0_IF_BYTE	=	0x00fc
                           0000FB   607 _S0_FREE	=	0x00fb
                           0000FA   608 _S0_T_FIFO	=	0x00fa
                           0000F9   609 _S0_R_FIFO1	=	0x00f9
                           0000F8   610 _S0_R_FIFO0	=	0x00f8
                           0000DF   611 _U_IS_NAK	=	0x00df
                           0000DE   612 _U_TOG_OK	=	0x00de
                           0000DD   613 _U_SIE_FREE	=	0x00dd
                           0000DC   614 _UIF_FIFO_OV	=	0x00dc
                           0000DB   615 _UIF_HST_SOF	=	0x00db
                           0000DA   616 _UIF_SUSPEND	=	0x00da
                           0000D9   617 _UIF_TRANSFER	=	0x00d9
                           0000D8   618 _UIF_DETECT	=	0x00d8
                           0000D8   619 _UIF_BUS_RST	=	0x00d8
                                    620 ;--------------------------------------------------------
                                    621 ; overlayable register banks
                                    622 ;--------------------------------------------------------
                                    623 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        624 	.ds 8
                                    625 ;--------------------------------------------------------
                                    626 ; internal ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area DSEG    (DATA)
      000008                        629 _do_process_sloc0_1_0:
      000008                        630 	.ds 1
      000009                        631 _do_process_sloc1_1_0:
      000009                        632 	.ds 2
      00000B                        633 _main_sloc0_1_0:
      00000B                        634 	.ds 1
      00000C                        635 _main_sloc1_1_0:
      00000C                        636 	.ds 2
                                    637 ;--------------------------------------------------------
                                    638 ; overlayable items in internal ram
                                    639 ;--------------------------------------------------------
                                    640 	.area	OSEG    (OVR,DATA)
      000010                        641 _clamp16_sloc0_1_0:
      000010                        642 	.ds 4
                                    643 ;--------------------------------------------------------
                                    644 ; Stack segment in internal ram
                                    645 ;--------------------------------------------------------
                                    646 	.area	SSEG
      00004E                        647 __start__stack:
      00004E                        648 	.ds	1
                                    649 
                                    650 ;--------------------------------------------------------
                                    651 ; indirectly addressable internal ram data
                                    652 ;--------------------------------------------------------
                                    653 	.area ISEG    (DATA)
                                    654 ;--------------------------------------------------------
                                    655 ; absolute internal ram data
                                    656 ;--------------------------------------------------------
                                    657 	.area IABS    (ABS,DATA)
                                    658 	.area IABS    (ABS,DATA)
                                    659 ;--------------------------------------------------------
                                    660 ; bit data
                                    661 ;--------------------------------------------------------
                                    662 	.area BSEG    (BIT)
      000000                        663 _readWheelsettings_sloc0_1_0:
      000000                        664 	.ds 1
                                    665 ;--------------------------------------------------------
                                    666 ; paged external ram data
                                    667 ;--------------------------------------------------------
                                    668 	.area PSEG    (PAG,XDATA)
                           002546   669 _pUEP4_1_MOD	=	0x2546
                           002547   670 _pUEP2_3_MOD	=	0x2547
                           002980   671 _pLED_STAT	=	0x2980
                           002981   672 _pLED_CTRL	=	0x2981
                           002982   673 _pLED_DATA	=	0x2982
                           002983   674 _pLED_CK_SE	=	0x2983
                           002984   675 _pLED_DMA_AH	=	0x2984
                           002985   676 _pLED_DMA_AL	=	0x2985
                           002986   677 _pLED_DMA_CN	=	0x2986
                           002988   678 _pLED_DMA_XH	=	0x2988
                           002989   679 _pLED_DMA_XL	=	0x2989
                                    680 ;--------------------------------------------------------
                                    681 ; external ram data
                                    682 ;--------------------------------------------------------
                                    683 	.area XSEG    (XDATA)
                           002446   684 _UEP4_1_MOD	=	0x2446
                           002447   685 _UEP2_3_MOD	=	0x2447
                           002448   686 _UEP0_DMA_H	=	0x2448
                           002449   687 _UEP0_DMA_L	=	0x2449
                           002548   688 _pUEP0_DMA_H	=	0x2548
                           002549   689 _pUEP0_DMA_L	=	0x2549
                           00244A   690 _UEP1_DMA_H	=	0x244a
                           00244B   691 _UEP1_DMA_L	=	0x244b
                           00254A   692 _pUEP1_DMA_H	=	0x254a
                           00254B   693 _pUEP1_DMA_L	=	0x254b
                           00244C   694 _UEP2_DMA	=	0x244c
                           00244D   695 _UEP2_DMA_L	=	0x244d
                           00244C   696 _UEP2_DMA_H	=	0x244c
                           00254C   697 _pUEP2_DMA_H	=	0x254c
                           00254D   698 _pUEP2_DMA_L	=	0x254d
                           00244E   699 _UEP3_DMA	=	0x244e
                           00244F   700 _UEP3_DMA_L	=	0x244f
                           00244E   701 _UEP3_DMA_H	=	0x244e
                           00254E   702 _pUEP3_DMA_H	=	0x254e
                           00254F   703 _pUEP3_DMA_L	=	0x254f
                           002880   704 _LED_STAT	=	0x2880
                           002881   705 _LED_CTRL	=	0x2881
                           002882   706 _LED_DATA	=	0x2882
                           002883   707 _LED_CK_SE	=	0x2883
                           002884   708 _LED_DMA_AH	=	0x2884
                           002885   709 _LED_DMA_AL	=	0x2885
                           002886   710 _LED_DMA_CN	=	0x2886
                           002888   711 _LED_DMA_XH	=	0x2888
                           002889   712 _LED_DMA_XL	=	0x2889
      000600                        713 _opt_com_settings:
      000600                        714 	.ds 1
      000601                        715 _opt_wheel_enabled:
      000601                        716 	.ds 1
      000602                        717 _opt_rate_settings:
      000602                        718 	.ds 1
      000603                        719 _opt_irq_settings:
      000603                        720 	.ds 1
      000604                        721 _m_wheel:
      000604                        722 	.ds 1
      000605                        723 _spi_tx_buf:
      000605                        724 	.ds 255
      000704                        725 _spi_tx_buf_w:
      000704                        726 	.ds 1
      000705                        727 _spi_tx_buf_r:
      000705                        728 	.ds 1
      000706                        729 _spi_tx_buf_count:
      000706                        730 	.ds 1
      000707                        731 _uart_tx_buf:
      000707                        732 	.ds 128
      000787                        733 _uart_tx_r:
      000787                        734 	.ds 1
      000788                        735 _uart_tx_w:
      000788                        736 	.ds 1
      000789                        737 _uart_rx_buf:
      000789                        738 	.ds 16
      000799                        739 _uart_rx_r:
      000799                        740 	.ds 1
      00079A                        741 _uart_rx_w:
      00079A                        742 	.ds 1
      00079B                        743 _uart_rx_buf_count:
      00079B                        744 	.ds 1
      00079C                        745 _mouse_start:
      00079C                        746 	.ds 1
      00079D                        747 _mouse_enabled:
      00079D                        748 	.ds 1
      00079E                        749 _device_init:
      00079E                        750 	.ds 1
      00079F                        751 _allow_send_data:
      00079F                        752 	.ds 1
      0007A0                        753 _fatal_error:
      0007A0                        754 	.ds 1
      0007A1                        755 _timer0_limit:
      0007A1                        756 	.ds 1
      0007A2                        757 _clamp8_PARM_2:
      0007A2                        758 	.ds 1
      0007A3                        759 _clamp8_PARM_3:
      0007A3                        760 	.ds 1
      0007A4                        761 _clamp8_val_65536_47:
      0007A4                        762 	.ds 2
      0007A6                        763 _clamp16_PARM_2:
      0007A6                        764 	.ds 2
      0007A8                        765 _clamp16_PARM_3:
      0007A8                        766 	.ds 2
      0007AA                        767 _clamp16_val_65536_49:
      0007AA                        768 	.ds 4
      0007AE                        769 _timer0_isr_cnt_65536_54:
      0007AE                        770 	.ds 1
      0007AF                        771 _putchar_c_65536_105:
      0007AF                        772 	.ds 2
      0007B1                        773 _spi_send_c_65536_121:
      0007B1                        774 	.ds 1
      0007B2                        775 _spi_send_config_PARM_2:
      0007B2                        776 	.ds 1
      0007B3                        777 _spi_send_config_opt_com_65536_130:
      0007B3                        778 	.ds 1
      0007B4                        779 _spi_m_send_PARM_2:
      0007B4                        780 	.ds 1
      0007B5                        781 _spi_m_send_PARM_3:
      0007B5                        782 	.ds 1
      0007B6                        783 _spi_m_send_PARM_4:
      0007B6                        784 	.ds 1
      0007B7                        785 _spi_m_send_x_65536_132:
      0007B7                        786 	.ds 1
      0007B8                        787 _readCOMsettings_com_table_65536_141:
      0007B8                        788 	.ds 4
      0007BC                        789 _readRatesettings_rate_table_65536_145:
      0007BC                        790 	.ds 4
      0007C0                        791 _checkIRQ_opt_com_65536_146:
      0007C0                        792 	.ds 1
      0007C1                        793 _do_process___1310720013_131072_151:
      0007C1                        794 	.ds 2
      0007C3                        795 _do_process___1310720008_131072_151:
      0007C3                        796 	.ds 2
      0007C5                        797 _do_process___1310720003_131072_151:
      0007C5                        798 	.ds 2
      0007C7                        799 _do_process_st_m_bt_65536_151:
      0007C7                        800 	.ds 1
      0007C8                        801 _do_process_m_bt_65536_151:
      0007C8                        802 	.ds 1
      0007C9                        803 _do_process_m_cx_65536_151:
      0007C9                        804 	.ds 2
      0007CB                        805 _do_process_m_cy_65536_151:
      0007CB                        806 	.ds 2
      0007CD                        807 _do_process_m_cz_65536_151:
      0007CD                        808 	.ds 2
      0007CF                        809 _do_process_buttons_65536_151:
      0007CF                        810 	.ds 4
      0007D3                        811 _do_process_dx_65536_151:
      0007D3                        812 	.ds 4
      0007D7                        813 _do_process_dy_65536_151:
      0007D7                        814 	.ds 4
      0007DB                        815 _do_process_dw_65536_151:
      0007DB                        816 	.ds 4
      0007DF                        817 _do_process_val_196608_161:
      0007DF                        818 	.ds 4
      0007E3                        819 _do_process_val_196608_164:
      0007E3                        820 	.ds 4
      0007E7                        821 _do_process_val_196608_167:
      0007E7                        822 	.ds 4
      0007EB                        823 _do_process___2621440019_262144_157:
      0007EB                        824 	.ds 1
      0007EC                        825 _do_process_val_327680_176:
      0007EC                        826 	.ds 2
      0007EE                        827 _do_process___2621440024_262144_158:
      0007EE                        828 	.ds 1
      0007EF                        829 _do_process_val_327681_179:
      0007EF                        830 	.ds 2
      0007F1                        831 _do_process___2621450029_262145_159:
      0007F1                        832 	.ds 1
      0007F2                        833 _do_process_val_327682_182:
      0007F2                        834 	.ds 2
      0007F4                        835 _do_process_x_327682_185:
      0007F4                        836 	.ds 1
      0007F5                        837 _do_process_middle_b_393218_186:
      0007F5                        838 	.ds 1
      0007F6                        839 _init___1310720045_131072_193:
      0007F6                        840 	.ds 1
      0007F7                        841 _init___1310720041_131072_193:
      0007F7                        842 	.ds 1
      0007F8                        843 _init_com_table_262144_319:
      0007F8                        844 	.ds 4
      0007FC                        845 _init_rate_table_262144_325:
      0007FC                        846 	.ds 4
      000800                        847 _init_opt_com_196608_327:
      000800                        848 	.ds 1
      000801                        849 _init_opt_com_524288_344:
      000801                        850 	.ds 1
      000802                        851 _main___1310720045_262144_359:
      000802                        852 	.ds 1
      000803                        853 _main___1310720041_262144_359:
      000803                        854 	.ds 1
      000804                        855 _main_com_table_458752_484:
      000804                        856 	.ds 4
      000808                        857 _main_rate_table_458752_490:
      000808                        858 	.ds 4
      00080C                        859 _main_opt_com_393216_492:
      00080C                        860 	.ds 1
      00080D                        861 _main_opt_com_720896_506:
      00080D                        862 	.ds 1
      00080E                        863 _main___1310720013_393216_517:
      00080E                        864 	.ds 2
      000810                        865 _main___1310720008_393216_517:
      000810                        866 	.ds 2
      000812                        867 _main___1310720003_393216_517:
      000812                        868 	.ds 2
      000814                        869 _main_st_m_bt_393216_517:
      000814                        870 	.ds 1
      000815                        871 _main_m_bt_393216_517:
      000815                        872 	.ds 1
      000816                        873 _main_m_cx_393216_517:
      000816                        874 	.ds 2
      000818                        875 _main_m_cy_393216_517:
      000818                        876 	.ds 2
      00081A                        877 _main_m_cz_393216_517:
      00081A                        878 	.ds 2
      00081C                        879 _main_buttons_393216_517:
      00081C                        880 	.ds 4
      000820                        881 _main_dx_393216_517:
      000820                        882 	.ds 4
      000824                        883 _main_dy_393216_517:
      000824                        884 	.ds 4
      000828                        885 _main_dw_393216_517:
      000828                        886 	.ds 4
      00082C                        887 _main_val_524288_519:
      00082C                        888 	.ds 4
      000830                        889 _main_val_524288_522:
      000830                        890 	.ds 4
      000834                        891 _main_val_524288_525:
      000834                        892 	.ds 4
      000838                        893 _main___2621440019_524288_538:
      000838                        894 	.ds 1
      000839                        895 _main_val_655360_540:
      000839                        896 	.ds 2
      00083B                        897 _main___2621440024_589824_542:
      00083B                        898 	.ds 1
      00083C                        899 _main_val_720896_544:
      00083C                        900 	.ds 2
      00083E                        901 _main___2621450029_655360_546:
      00083E                        902 	.ds 1
      00083F                        903 _main_val_786432_548:
      00083F                        904 	.ds 2
      000841                        905 _main_x_786432_551:
      000841                        906 	.ds 1
      000842                        907 _main_middle_b_851968_552:
      000842                        908 	.ds 1
                                    909 ;--------------------------------------------------------
                                    910 ; absolute external ram data
                                    911 ;--------------------------------------------------------
                                    912 	.area XABS    (ABS,XDATA)
                                    913 ;--------------------------------------------------------
                                    914 ; external initialized ram data
                                    915 ;--------------------------------------------------------
                                    916 	.area XISEG   (XDATA)
                                    917 	.area HOME    (CODE)
                                    918 	.area GSINIT0 (CODE)
                                    919 	.area GSINIT1 (CODE)
                                    920 	.area GSINIT2 (CODE)
                                    921 	.area GSINIT3 (CODE)
                                    922 	.area GSINIT4 (CODE)
                                    923 	.area GSINIT5 (CODE)
                                    924 	.area GSINIT  (CODE)
                                    925 	.area GSFINAL (CODE)
                                    926 	.area CSEG    (CODE)
                                    927 ;--------------------------------------------------------
                                    928 ; interrupt vector
                                    929 ;--------------------------------------------------------
                                    930 	.area HOME    (CODE)
      000000                        931 __interrupt_vect:
      000000 02 00 43         [24]  932 	ljmp	__sdcc_gsinit_startup
      000003 02 01 E2         [24]  933 	ljmp	_int0_isr
      000006                        934 	.ds	5
      00000B 02 01 F7         [24]  935 	ljmp	_timer0_isr
      00000E                        936 	.ds	5
      000013 32               [24]  937 	reti
      000014                        938 	.ds	7
      00001B 32               [24]  939 	reti
      00001C                        940 	.ds	7
      000023 02 03 89         [24]  941 	ljmp	_uart_isr
      000026                        942 	.ds	5
      00002B 02 02 3A         [24]  943 	ljmp	_Timer2_ISR
      00002E                        944 	.ds	5
      000033 32               [24]  945 	reti
      000034                        946 	.ds	7
      00003B 02 02 30         [24]  947 	ljmp	_Timer3_ISR
                                    948 ;--------------------------------------------------------
                                    949 ; global & static initialisations
                                    950 ;--------------------------------------------------------
                                    951 	.area HOME    (CODE)
                                    952 	.area GSINIT  (CODE)
                                    953 	.area GSFINAL (CODE)
                                    954 	.area GSINIT  (CODE)
                                    955 	.globl __sdcc_gsinit_startup
                                    956 	.globl __sdcc_program_startup
                                    957 	.globl __start__stack
                                    958 	.globl __mcs51_genXINIT
                                    959 	.globl __mcs51_genXRAMCLEAR
                                    960 	.globl __mcs51_genRAMCLEAR
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'timer0_isr'
                                    963 ;------------------------------------------------------------
                                    964 ;cnt                       Allocated with name '_timer0_isr_cnt_65536_54'
                                    965 ;------------------------------------------------------------
                                    966 ;	main.c:375: static uint8_t cnt = 0;
      00009C 90 07 AE         [24]  967 	mov	dptr,#_timer0_isr_cnt_65536_54
      00009F E4               [12]  968 	clr	a
      0000A0 F0               [24]  969 	movx	@dptr,a
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'do_process'
                                    972 ;------------------------------------------------------------
                                    973 ;sloc0                     Allocated with name '_do_process_sloc0_1_0'
                                    974 ;sloc1                     Allocated with name '_do_process_sloc1_1_0'
                                    975 ;__1310720013              Allocated with name '_do_process___1310720013_131072_151'
                                    976 ;__1310720008              Allocated with name '_do_process___1310720008_131072_151'
                                    977 ;__1310720003              Allocated with name '_do_process___1310720003_131072_151'
                                    978 ;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_151'
                                    979 ;m_bt                      Allocated with name '_do_process_m_bt_65536_151'
                                    980 ;m_cx                      Allocated with name '_do_process_m_cx_65536_151'
                                    981 ;m_cy                      Allocated with name '_do_process_m_cy_65536_151'
                                    982 ;m_cz                      Allocated with name '_do_process_m_cz_65536_151'
                                    983 ;buttons                   Allocated with name '_do_process_buttons_65536_151'
                                    984 ;dx                        Allocated with name '_do_process_dx_65536_151'
                                    985 ;dy                        Allocated with name '_do_process_dy_65536_151'
                                    986 ;dw                        Allocated with name '_do_process_dw_65536_151'
                                    987 ;__1310720004              Allocated with name '_do_process___1310720004_131072_160'
                                    988 ;__1310720005              Allocated with name '_do_process___1310720005_131072_160'
                                    989 ;__1310720006              Allocated with name '_do_process___1310720006_131072_160'
                                    990 ;val                       Allocated with name '_do_process_val_196608_161'
                                    991 ;min                       Allocated with name '_do_process_min_196608_161'
                                    992 ;max                       Allocated with name '_do_process_max_196608_161'
                                    993 ;__1310720009              Allocated with name '_do_process___1310720009_131072_163'
                                    994 ;__1310720010              Allocated with name '_do_process___1310720010_131072_163'
                                    995 ;__1310720011              Allocated with name '_do_process___1310720011_131072_163'
                                    996 ;val                       Allocated with name '_do_process_val_196608_164'
                                    997 ;min                       Allocated with name '_do_process_min_196608_164'
                                    998 ;max                       Allocated with name '_do_process_max_196608_164'
                                    999 ;__1310720014              Allocated with name '_do_process___1310720014_131072_166'
                                   1000 ;__1310720015              Allocated with name '_do_process___1310720015_131072_166'
                                   1001 ;__1310720016              Allocated with name '_do_process___1310720016_131072_166'
                                   1002 ;val                       Allocated with name '_do_process_val_196608_167'
                                   1003 ;min                       Allocated with name '_do_process_min_196608_167'
                                   1004 ;max                       Allocated with name '_do_process_max_196608_167'
                                   1005 ;_ea_state                 Allocated with name '_do_process__ea_state_262144_154'
                                   1006 ;__2621440019              Allocated with name '_do_process___2621440019_262144_157'
                                   1007 ;cx                        Allocated with name '_do_process_cx_196608_157'
                                   1008 ;__2621440020              Allocated with name '_do_process___2621440020_262144_175'
                                   1009 ;__2621440021              Allocated with name '_do_process___2621440021_262144_175'
                                   1010 ;__2621440022              Allocated with name '_do_process___2621440022_262144_175'
                                   1011 ;val                       Allocated with name '_do_process_val_327680_176'
                                   1012 ;min                       Allocated with name '_do_process_min_327680_176'
                                   1013 ;max                       Allocated with name '_do_process_max_327680_176'
                                   1014 ;__2621440024              Allocated with name '_do_process___2621440024_262144_158'
                                   1015 ;cy                        Allocated with name '_do_process_cy_196609_158'
                                   1016 ;__2621450025              Allocated with name '_do_process___2621450025_262145_178'
                                   1017 ;__2621450026              Allocated with name '_do_process___2621450026_262145_178'
                                   1018 ;__2621450027              Allocated with name '_do_process___2621450027_262145_178'
                                   1019 ;val                       Allocated with name '_do_process_val_327681_179'
                                   1020 ;min                       Allocated with name '_do_process_min_327681_179'
                                   1021 ;max                       Allocated with name '_do_process_max_327681_179'
                                   1022 ;__2621450029              Allocated with name '_do_process___2621450029_262145_159'
                                   1023 ;cz                        Allocated with name '_do_process_cz_196610_159'
                                   1024 ;__2621460030              Allocated with name '_do_process___2621460030_262146_181'
                                   1025 ;__2621460031              Allocated with name '_do_process___2621460031_262146_181'
                                   1026 ;__2621460032              Allocated with name '_do_process___2621460032_262146_181'
                                   1027 ;val                       Allocated with name '_do_process_val_327682_182'
                                   1028 ;min                       Allocated with name '_do_process_min_327682_182'
                                   1029 ;max                       Allocated with name '_do_process_max_327682_182'
                                   1030 ;__2621460034              Allocated with name '_do_process___2621460034_262146_184'
                                   1031 ;__2621460035              Allocated with name '_do_process___2621460035_262146_184'
                                   1032 ;__2621460036              Allocated with name '_do_process___2621460036_262146_184'
                                   1033 ;__2621460037              Allocated with name '_do_process___2621460037_262146_184'
                                   1034 ;x                         Allocated with name '_do_process_x_327682_185'
                                   1035 ;y                         Allocated with name '_do_process_y_327682_185'
                                   1036 ;z                         Allocated with name '_do_process_z_327682_185'
                                   1037 ;b                         Allocated with name '_do_process_b_327682_185'
                                   1038 ;left_b                    Allocated with name '_do_process_left_b_393218_186'
                                   1039 ;right_b                   Allocated with name '_do_process_right_b_393218_186'
                                   1040 ;middle_b                  Allocated with name '_do_process_middle_b_393218_186'
                                   1041 ;------------------------------------------------------------
                                   1042 ;	main.c:685: static uint8_t st_m_bt = 0;
      0000A1 90 07 C7         [24] 1043 	mov	dptr,#_do_process_st_m_bt_65536_151
      0000A4 E4               [12] 1044 	clr	a
      0000A5 F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	main.c:690: static uint32_t buttons = 0;
      0000A6 90 07 CF         [24] 1047 	mov	dptr,#_do_process_buttons_65536_151
      0000A9 F0               [24] 1048 	movx	@dptr,a
      0000AA A3               [24] 1049 	inc	dptr
      0000AB F0               [24] 1050 	movx	@dptr,a
      0000AC A3               [24] 1051 	inc	dptr
      0000AD F0               [24] 1052 	movx	@dptr,a
      0000AE A3               [24] 1053 	inc	dptr
      0000AF F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	main.c:691: static int32_t dx = 0;
      0000B0 90 07 D3         [24] 1056 	mov	dptr,#_do_process_dx_65536_151
      0000B3 F0               [24] 1057 	movx	@dptr,a
      0000B4 A3               [24] 1058 	inc	dptr
      0000B5 F0               [24] 1059 	movx	@dptr,a
      0000B6 A3               [24] 1060 	inc	dptr
      0000B7 F0               [24] 1061 	movx	@dptr,a
      0000B8 A3               [24] 1062 	inc	dptr
      0000B9 F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	main.c:692: static int32_t dy = 0;
      0000BA 90 07 D7         [24] 1065 	mov	dptr,#_do_process_dy_65536_151
      0000BD F0               [24] 1066 	movx	@dptr,a
      0000BE A3               [24] 1067 	inc	dptr
      0000BF F0               [24] 1068 	movx	@dptr,a
      0000C0 A3               [24] 1069 	inc	dptr
      0000C1 F0               [24] 1070 	movx	@dptr,a
      0000C2 A3               [24] 1071 	inc	dptr
      0000C3 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	main.c:693: static int32_t dw = 0;
      0000C4 90 07 DB         [24] 1074 	mov	dptr,#_do_process_dw_65536_151
      0000C7 F0               [24] 1075 	movx	@dptr,a
      0000C8 A3               [24] 1076 	inc	dptr
      0000C9 F0               [24] 1077 	movx	@dptr,a
      0000CA A3               [24] 1078 	inc	dptr
      0000CB F0               [24] 1079 	movx	@dptr,a
      0000CC A3               [24] 1080 	inc	dptr
      0000CD F0               [24] 1081 	movx	@dptr,a
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'main'
                                   1084 ;------------------------------------------------------------
                                   1085 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1086 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1087 ;__1310720048              Allocated with name '_main___1310720048_262144_359'
                                   1088 ;__1310720045              Allocated with name '_main___1310720045_262144_359'
                                   1089 ;__1310720043              Allocated with name '_main___1310720043_262144_359'
                                   1090 ;__1310720041              Allocated with name '_main___1310720041_262144_359'
                                   1091 ;__1310720039              Allocated with name '_main___1310720039_262144_359'
                                   1092 ;com_table                 Allocated with name '_main_com_table_458752_484'
                                   1093 ;jumpers                   Allocated with name '_main_jumpers_458752_484'
                                   1094 ;rate_table                Allocated with name '_main_rate_table_458752_490'
                                   1095 ;jumpers                   Allocated with name '_main_jumpers_458752_490'
                                   1096 ;__1310720046              Allocated with name '_main___1310720046_327680_491'
                                   1097 ;opt_com                   Allocated with name '_main_opt_com_393216_492'
                                   1098 ;_ea_state                 Allocated with name '_main__ea_state_524288_503'
                                   1099 ;__4587520051              Allocated with name '_main___4587520051_655360_505'
                                   1100 ;__4587520052              Allocated with name '_main___4587520052_655360_505'
                                   1101 ;opt_com                   Allocated with name '_main_opt_com_720896_506'
                                   1102 ;opt_irq                   Allocated with name '_main_opt_irq_720896_506'
                                   1103 ;config_data               Allocated with name '_main_config_data_786432_507'
                                   1104 ;__1310720013              Allocated with name '_main___1310720013_393216_517'
                                   1105 ;__1310720008              Allocated with name '_main___1310720008_393216_517'
                                   1106 ;__1310720003              Allocated with name '_main___1310720003_393216_517'
                                   1107 ;st_m_bt                   Allocated with name '_main_st_m_bt_393216_517'
                                   1108 ;m_bt                      Allocated with name '_main_m_bt_393216_517'
                                   1109 ;m_cx                      Allocated with name '_main_m_cx_393216_517'
                                   1110 ;m_cy                      Allocated with name '_main_m_cy_393216_517'
                                   1111 ;m_cz                      Allocated with name '_main_m_cz_393216_517'
                                   1112 ;buttons                   Allocated with name '_main_buttons_393216_517'
                                   1113 ;dx                        Allocated with name '_main_dx_393216_517'
                                   1114 ;dy                        Allocated with name '_main_dy_393216_517'
                                   1115 ;dw                        Allocated with name '_main_dw_393216_517'
                                   1116 ;__1310720004              Allocated with name '_main___1310720004_458752_518'
                                   1117 ;__1310720005              Allocated with name '_main___1310720005_458752_518'
                                   1118 ;__1310720006              Allocated with name '_main___1310720006_458752_518'
                                   1119 ;val                       Allocated with name '_main_val_524288_519'
                                   1120 ;min                       Allocated with name '_main_min_524288_519'
                                   1121 ;max                       Allocated with name '_main_max_524288_519'
                                   1122 ;__1310720009              Allocated with name '_main___1310720009_458752_521'
                                   1123 ;__1310720010              Allocated with name '_main___1310720010_458752_521'
                                   1124 ;__1310720011              Allocated with name '_main___1310720011_458752_521'
                                   1125 ;val                       Allocated with name '_main_val_524288_522'
                                   1126 ;min                       Allocated with name '_main_min_524288_522'
                                   1127 ;max                       Allocated with name '_main_max_524288_522'
                                   1128 ;__1310720014              Allocated with name '_main___1310720014_458752_524'
                                   1129 ;__1310720015              Allocated with name '_main___1310720015_458752_524'
                                   1130 ;__1310720016              Allocated with name '_main___1310720016_458752_524'
                                   1131 ;val                       Allocated with name '_main_val_524288_525'
                                   1132 ;min                       Allocated with name '_main_min_524288_525'
                                   1133 ;max                       Allocated with name '_main_max_524288_525'
                                   1134 ;_ea_state                 Allocated with name '_main__ea_state_589824_529'
                                   1135 ;__2621440019              Allocated with name '_main___2621440019_524288_538'
                                   1136 ;cx                        Allocated with name '_main_cx_524288_538'
                                   1137 ;__2621440020              Allocated with name '_main___2621440020_589824_539'
                                   1138 ;__2621440021              Allocated with name '_main___2621440021_589824_539'
                                   1139 ;__2621440022              Allocated with name '_main___2621440022_589824_539'
                                   1140 ;val                       Allocated with name '_main_val_655360_540'
                                   1141 ;min                       Allocated with name '_main_min_655360_540'
                                   1142 ;max                       Allocated with name '_main_max_655360_540'
                                   1143 ;__2621440024              Allocated with name '_main___2621440024_589824_542'
                                   1144 ;cy                        Allocated with name '_main_cy_589824_542'
                                   1145 ;__2621450025              Allocated with name '_main___2621450025_655360_543'
                                   1146 ;__2621450026              Allocated with name '_main___2621450026_655360_543'
                                   1147 ;__2621450027              Allocated with name '_main___2621450027_655360_543'
                                   1148 ;val                       Allocated with name '_main_val_720896_544'
                                   1149 ;min                       Allocated with name '_main_min_720896_544'
                                   1150 ;max                       Allocated with name '_main_max_720896_544'
                                   1151 ;__2621450029              Allocated with name '_main___2621450029_655360_546'
                                   1152 ;cz                        Allocated with name '_main_cz_655360_546'
                                   1153 ;__2621460030              Allocated with name '_main___2621460030_720896_547'
                                   1154 ;__2621460031              Allocated with name '_main___2621460031_720896_547'
                                   1155 ;__2621460032              Allocated with name '_main___2621460032_720896_547'
                                   1156 ;val                       Allocated with name '_main_val_786432_548'
                                   1157 ;min                       Allocated with name '_main_min_786432_548'
                                   1158 ;max                       Allocated with name '_main_max_786432_548'
                                   1159 ;__2621460034              Allocated with name '_main___2621460034_720896_550'
                                   1160 ;__2621460035              Allocated with name '_main___2621460035_720896_550'
                                   1161 ;__2621460036              Allocated with name '_main___2621460036_720896_550'
                                   1162 ;__2621460037              Allocated with name '_main___2621460037_720896_550'
                                   1163 ;x                         Allocated with name '_main_x_786432_551'
                                   1164 ;y                         Allocated with name '_main_y_786432_551'
                                   1165 ;z                         Allocated with name '_main_z_786432_551'
                                   1166 ;b                         Allocated with name '_main_b_786432_551'
                                   1167 ;left_b                    Allocated with name '_main_left_b_851968_552'
                                   1168 ;right_b                   Allocated with name '_main_right_b_851968_552'
                                   1169 ;middle_b                  Allocated with name '_main_middle_b_851968_552'
                                   1170 ;------------------------------------------------------------
                                   1171 ;	main.c:685: static uint8_t st_m_bt = 0;
      0000CE 90 08 14         [24] 1172 	mov	dptr,#_main_st_m_bt_393216_517
      0000D1 E4               [12] 1173 	clr	a
      0000D2 F0               [24] 1174 	movx	@dptr,a
                                   1175 ;	main.c:690: static uint32_t buttons = 0;
      0000D3 90 08 1C         [24] 1176 	mov	dptr,#_main_buttons_393216_517
      0000D6 F0               [24] 1177 	movx	@dptr,a
      0000D7 A3               [24] 1178 	inc	dptr
      0000D8 F0               [24] 1179 	movx	@dptr,a
      0000D9 A3               [24] 1180 	inc	dptr
      0000DA F0               [24] 1181 	movx	@dptr,a
      0000DB A3               [24] 1182 	inc	dptr
      0000DC F0               [24] 1183 	movx	@dptr,a
                                   1184 ;	main.c:691: static int32_t dx = 0;
      0000DD 90 08 20         [24] 1185 	mov	dptr,#_main_dx_393216_517
      0000E0 F0               [24] 1186 	movx	@dptr,a
      0000E1 A3               [24] 1187 	inc	dptr
      0000E2 F0               [24] 1188 	movx	@dptr,a
      0000E3 A3               [24] 1189 	inc	dptr
      0000E4 F0               [24] 1190 	movx	@dptr,a
      0000E5 A3               [24] 1191 	inc	dptr
      0000E6 F0               [24] 1192 	movx	@dptr,a
                                   1193 ;	main.c:692: static int32_t dy = 0;
      0000E7 90 08 24         [24] 1194 	mov	dptr,#_main_dy_393216_517
      0000EA F0               [24] 1195 	movx	@dptr,a
      0000EB A3               [24] 1196 	inc	dptr
      0000EC F0               [24] 1197 	movx	@dptr,a
      0000ED A3               [24] 1198 	inc	dptr
      0000EE F0               [24] 1199 	movx	@dptr,a
      0000EF A3               [24] 1200 	inc	dptr
      0000F0 F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	main.c:693: static int32_t dw = 0;
      0000F1 90 08 28         [24] 1203 	mov	dptr,#_main_dw_393216_517
      0000F4 F0               [24] 1204 	movx	@dptr,a
      0000F5 A3               [24] 1205 	inc	dptr
      0000F6 F0               [24] 1206 	movx	@dptr,a
      0000F7 A3               [24] 1207 	inc	dptr
      0000F8 F0               [24] 1208 	movx	@dptr,a
      0000F9 A3               [24] 1209 	inc	dptr
      0000FA F0               [24] 1210 	movx	@dptr,a
                                   1211 	.area GSFINAL (CODE)
      000106 02 00 3E         [24] 1212 	ljmp	__sdcc_program_startup
                                   1213 ;--------------------------------------------------------
                                   1214 ; Home
                                   1215 ;--------------------------------------------------------
                                   1216 	.area HOME    (CODE)
                                   1217 	.area HOME    (CODE)
      00003E                       1218 __sdcc_program_startup:
      00003E 02 0E 3E         [24] 1219 	ljmp	_main
                                   1220 ;	return from main will return to caller
                                   1221 ;--------------------------------------------------------
                                   1222 ; code
                                   1223 ;--------------------------------------------------------
                                   1224 	.area CSEG    (CODE)
                                   1225 ;------------------------------------------------------------
                                   1226 ;Allocation info for local variables in function 'mcu_sleep'
                                   1227 ;------------------------------------------------------------
                                   1228 ;	main.c:341: static inline void mcu_sleep(void)
                                   1229 ;	-----------------------------------------
                                   1230 ;	 function mcu_sleep
                                   1231 ;	-----------------------------------------
      000109                       1232 _mcu_sleep:
                           000007  1233 	ar7 = 0x07
                           000006  1234 	ar6 = 0x06
                           000005  1235 	ar5 = 0x05
                           000004  1236 	ar4 = 0x04
                           000003  1237 	ar3 = 0x03
                           000002  1238 	ar2 = 0x02
                           000001  1239 	ar1 = 0x01
                           000000  1240 	ar0 = 0x00
                                   1241 ;	main.c:345: }
      000109 22               [24] 1242 	ret
                                   1243 ;------------------------------------------------------------
                                   1244 ;Allocation info for local variables in function 'clamp8'
                                   1245 ;------------------------------------------------------------
                                   1246 ;min                       Allocated with name '_clamp8_PARM_2'
                                   1247 ;max                       Allocated with name '_clamp8_PARM_3'
                                   1248 ;val                       Allocated with name '_clamp8_val_65536_47'
                                   1249 ;------------------------------------------------------------
                                   1250 ;	main.c:349: static inline int8_t clamp8(int16_t val, int8_t min, int8_t max)
                                   1251 ;	-----------------------------------------
                                   1252 ;	 function clamp8
                                   1253 ;	-----------------------------------------
      00010A                       1254 _clamp8:
      00010A AF 83            [24] 1255 	mov	r7,dph
      00010C E5 82            [12] 1256 	mov	a,dpl
      00010E 90 07 A4         [24] 1257 	mov	dptr,#_clamp8_val_65536_47
      000111 F0               [24] 1258 	movx	@dptr,a
      000112 EF               [12] 1259 	mov	a,r7
      000113 A3               [24] 1260 	inc	dptr
      000114 F0               [24] 1261 	movx	@dptr,a
                                   1262 ;	main.c:351: if (val < (int16_t)min) return min;
      000115 90 07 A2         [24] 1263 	mov	dptr,#_clamp8_PARM_2
      000118 E0               [24] 1264 	movx	a,@dptr
      000119 FF               [12] 1265 	mov	r7,a
      00011A FD               [12] 1266 	mov	r5,a
      00011B 33               [12] 1267 	rlc	a
      00011C 95 E0            [12] 1268 	subb	a,acc
      00011E FE               [12] 1269 	mov	r6,a
      00011F 90 07 A4         [24] 1270 	mov	dptr,#_clamp8_val_65536_47
      000122 E0               [24] 1271 	movx	a,@dptr
      000123 FB               [12] 1272 	mov	r3,a
      000124 A3               [24] 1273 	inc	dptr
      000125 E0               [24] 1274 	movx	a,@dptr
      000126 FC               [12] 1275 	mov	r4,a
      000127 C3               [12] 1276 	clr	c
      000128 EB               [12] 1277 	mov	a,r3
      000129 9D               [12] 1278 	subb	a,r5
      00012A EC               [12] 1279 	mov	a,r4
      00012B 64 80            [12] 1280 	xrl	a,#0x80
      00012D 8E F0            [24] 1281 	mov	b,r6
      00012F 63 F0 80         [24] 1282 	xrl	b,#0x80
      000132 95 F0            [12] 1283 	subb	a,b
      000134 50 03            [24] 1284 	jnc	00102$
      000136 8F 82            [24] 1285 	mov	dpl,r7
      000138 22               [24] 1286 	ret
      000139                       1287 00102$:
                                   1288 ;	main.c:352: if (val > (int16_t)max) return max;
      000139 90 07 A3         [24] 1289 	mov	dptr,#_clamp8_PARM_3
      00013C E0               [24] 1290 	movx	a,@dptr
      00013D FF               [12] 1291 	mov	r7,a
      00013E FD               [12] 1292 	mov	r5,a
      00013F 33               [12] 1293 	rlc	a
      000140 95 E0            [12] 1294 	subb	a,acc
      000142 FE               [12] 1295 	mov	r6,a
      000143 C3               [12] 1296 	clr	c
      000144 ED               [12] 1297 	mov	a,r5
      000145 9B               [12] 1298 	subb	a,r3
      000146 EE               [12] 1299 	mov	a,r6
      000147 64 80            [12] 1300 	xrl	a,#0x80
      000149 8C F0            [24] 1301 	mov	b,r4
      00014B 63 F0 80         [24] 1302 	xrl	b,#0x80
      00014E 95 F0            [12] 1303 	subb	a,b
      000150 50 03            [24] 1304 	jnc	00104$
      000152 8F 82            [24] 1305 	mov	dpl,r7
      000154 22               [24] 1306 	ret
      000155                       1307 00104$:
                                   1308 ;	main.c:353: return (int8_t)val;
      000155 8B 82            [24] 1309 	mov	dpl,r3
                                   1310 ;	main.c:354: }
      000157 22               [24] 1311 	ret
                                   1312 ;------------------------------------------------------------
                                   1313 ;Allocation info for local variables in function 'clamp16'
                                   1314 ;------------------------------------------------------------
                                   1315 ;min                       Allocated with name '_clamp16_PARM_2'
                                   1316 ;max                       Allocated with name '_clamp16_PARM_3'
                                   1317 ;val                       Allocated with name '_clamp16_val_65536_49'
                                   1318 ;sloc0                     Allocated with name '_clamp16_sloc0_1_0'
                                   1319 ;------------------------------------------------------------
                                   1320 ;	main.c:356: static inline int16_t clamp16(int32_t val, int16_t min, int16_t max)
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function clamp16
                                   1323 ;	-----------------------------------------
      000158                       1324 _clamp16:
      000158 AF 82            [24] 1325 	mov	r7,dpl
      00015A AE 83            [24] 1326 	mov	r6,dph
      00015C AD F0            [24] 1327 	mov	r5,b
      00015E FC               [12] 1328 	mov	r4,a
      00015F 90 07 AA         [24] 1329 	mov	dptr,#_clamp16_val_65536_49
      000162 EF               [12] 1330 	mov	a,r7
      000163 F0               [24] 1331 	movx	@dptr,a
      000164 EE               [12] 1332 	mov	a,r6
      000165 A3               [24] 1333 	inc	dptr
      000166 F0               [24] 1334 	movx	@dptr,a
      000167 ED               [12] 1335 	mov	a,r5
      000168 A3               [24] 1336 	inc	dptr
      000169 F0               [24] 1337 	movx	@dptr,a
      00016A EC               [12] 1338 	mov	a,r4
      00016B A3               [24] 1339 	inc	dptr
      00016C F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	main.c:358: if (val < (int32_t)min) return min;
      00016D 90 07 A6         [24] 1342 	mov	dptr,#_clamp16_PARM_2
      000170 E0               [24] 1343 	movx	a,@dptr
      000171 FE               [12] 1344 	mov	r6,a
      000172 A3               [24] 1345 	inc	dptr
      000173 E0               [24] 1346 	movx	a,@dptr
      000174 FF               [12] 1347 	mov	r7,a
      000175 8E 02            [24] 1348 	mov	ar2,r6
      000177 EF               [12] 1349 	mov	a,r7
      000178 FB               [12] 1350 	mov	r3,a
      000179 33               [12] 1351 	rlc	a
      00017A 95 E0            [12] 1352 	subb	a,acc
      00017C FC               [12] 1353 	mov	r4,a
      00017D FD               [12] 1354 	mov	r5,a
      00017E 90 07 AA         [24] 1355 	mov	dptr,#_clamp16_val_65536_49
      000181 E0               [24] 1356 	movx	a,@dptr
      000182 F5 10            [12] 1357 	mov	_clamp16_sloc0_1_0,a
      000184 A3               [24] 1358 	inc	dptr
      000185 E0               [24] 1359 	movx	a,@dptr
      000186 F5 11            [12] 1360 	mov	(_clamp16_sloc0_1_0 + 1),a
      000188 A3               [24] 1361 	inc	dptr
      000189 E0               [24] 1362 	movx	a,@dptr
      00018A F5 12            [12] 1363 	mov	(_clamp16_sloc0_1_0 + 2),a
      00018C A3               [24] 1364 	inc	dptr
      00018D E0               [24] 1365 	movx	a,@dptr
      00018E F5 13            [12] 1366 	mov	(_clamp16_sloc0_1_0 + 3),a
      000190 C3               [12] 1367 	clr	c
      000191 E5 10            [12] 1368 	mov	a,_clamp16_sloc0_1_0
      000193 9A               [12] 1369 	subb	a,r2
      000194 E5 11            [12] 1370 	mov	a,(_clamp16_sloc0_1_0 + 1)
      000196 9B               [12] 1371 	subb	a,r3
      000197 E5 12            [12] 1372 	mov	a,(_clamp16_sloc0_1_0 + 2)
      000199 9C               [12] 1373 	subb	a,r4
      00019A E5 13            [12] 1374 	mov	a,(_clamp16_sloc0_1_0 + 3)
      00019C 64 80            [12] 1375 	xrl	a,#0x80
      00019E 8D F0            [24] 1376 	mov	b,r5
      0001A0 63 F0 80         [24] 1377 	xrl	b,#0x80
      0001A3 95 F0            [12] 1378 	subb	a,b
      0001A5 50 05            [24] 1379 	jnc	00102$
      0001A7 8E 82            [24] 1380 	mov	dpl,r6
      0001A9 8F 83            [24] 1381 	mov	dph,r7
      0001AB 22               [24] 1382 	ret
      0001AC                       1383 00102$:
                                   1384 ;	main.c:359: if (val > (int32_t)max) return max;
      0001AC 90 07 A8         [24] 1385 	mov	dptr,#_clamp16_PARM_3
      0001AF E0               [24] 1386 	movx	a,@dptr
      0001B0 FE               [12] 1387 	mov	r6,a
      0001B1 A3               [24] 1388 	inc	dptr
      0001B2 E0               [24] 1389 	movx	a,@dptr
      0001B3 FF               [12] 1390 	mov	r7,a
      0001B4 8E 02            [24] 1391 	mov	ar2,r6
      0001B6 EF               [12] 1392 	mov	a,r7
      0001B7 FB               [12] 1393 	mov	r3,a
      0001B8 33               [12] 1394 	rlc	a
      0001B9 95 E0            [12] 1395 	subb	a,acc
      0001BB FC               [12] 1396 	mov	r4,a
      0001BC FD               [12] 1397 	mov	r5,a
      0001BD C3               [12] 1398 	clr	c
      0001BE EA               [12] 1399 	mov	a,r2
      0001BF 95 10            [12] 1400 	subb	a,_clamp16_sloc0_1_0
      0001C1 EB               [12] 1401 	mov	a,r3
      0001C2 95 11            [12] 1402 	subb	a,(_clamp16_sloc0_1_0 + 1)
      0001C4 EC               [12] 1403 	mov	a,r4
      0001C5 95 12            [12] 1404 	subb	a,(_clamp16_sloc0_1_0 + 2)
      0001C7 ED               [12] 1405 	mov	a,r5
      0001C8 64 80            [12] 1406 	xrl	a,#0x80
      0001CA 85 13 F0         [24] 1407 	mov	b,(_clamp16_sloc0_1_0 + 3)
      0001CD 63 F0 80         [24] 1408 	xrl	b,#0x80
      0001D0 95 F0            [12] 1409 	subb	a,b
      0001D2 50 05            [24] 1410 	jnc	00104$
      0001D4 8E 82            [24] 1411 	mov	dpl,r6
      0001D6 8F 83            [24] 1412 	mov	dph,r7
      0001D8 22               [24] 1413 	ret
      0001D9                       1414 00104$:
                                   1415 ;	main.c:360: return (int16_t)val;
      0001D9 AE 10            [24] 1416 	mov	r6,_clamp16_sloc0_1_0
      0001DB AF 11            [24] 1417 	mov	r7,(_clamp16_sloc0_1_0 + 1)
      0001DD 8E 82            [24] 1418 	mov	dpl,r6
      0001DF 8F 83            [24] 1419 	mov	dph,r7
                                   1420 ;	main.c:361: }
      0001E1 22               [24] 1421 	ret
                                   1422 ;------------------------------------------------------------
                                   1423 ;Allocation info for local variables in function 'int0_isr'
                                   1424 ;------------------------------------------------------------
                                   1425 ;	main.c:367: static void int0_isr(void) __interrupt (INT_NO_INT0)
                                   1426 ;	-----------------------------------------
                                   1427 ;	 function int0_isr
                                   1428 ;	-----------------------------------------
      0001E2                       1429 _int0_isr:
      0001E2 C0 E0            [24] 1430 	push	acc
      0001E4 C0 82            [24] 1431 	push	dpl
      0001E6 C0 83            [24] 1432 	push	dph
                                   1433 ;	main.c:369: mouse_enabled = get_mouse_power_state();
      0001E8 90 07 9D         [24] 1434 	mov	dptr,#_mouse_enabled
      0001EB 74 04            [12] 1435 	mov	a,#0x04
      0001ED 55 B0            [12] 1436 	anl	a,_P3
      0001EF F0               [24] 1437 	movx	@dptr,a
                                   1438 ;	main.c:370: }
      0001F0 D0 83            [24] 1439 	pop	dph
      0001F2 D0 82            [24] 1440 	pop	dpl
      0001F4 D0 E0            [24] 1441 	pop	acc
      0001F6 32               [24] 1442 	reti
                                   1443 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1444 ;	eliminated unneeded push/pop not_psw
                                   1445 ;	eliminated unneeded push/pop b
                                   1446 ;------------------------------------------------------------
                                   1447 ;Allocation info for local variables in function 'timer0_isr'
                                   1448 ;------------------------------------------------------------
                                   1449 ;cnt                       Allocated with name '_timer0_isr_cnt_65536_54'
                                   1450 ;------------------------------------------------------------
                                   1451 ;	main.c:373: static void timer0_isr(void) __interrupt (INT_NO_TMR0)
                                   1452 ;	-----------------------------------------
                                   1453 ;	 function timer0_isr
                                   1454 ;	-----------------------------------------
      0001F7                       1455 _timer0_isr:
      0001F7 C0 E0            [24] 1456 	push	acc
      0001F9 C0 82            [24] 1457 	push	dpl
      0001FB C0 83            [24] 1458 	push	dph
      0001FD C0 07            [24] 1459 	push	ar7
      0001FF C0 06            [24] 1460 	push	ar6
      000201 C0 D0            [24] 1461 	push	psw
      000203 75 D0 00         [24] 1462 	mov	psw,#0x00
                                   1463 ;	main.c:377: if (++cnt >= timer0_limit) {
      000206 90 07 AE         [24] 1464 	mov	dptr,#_timer0_isr_cnt_65536_54
      000209 E0               [24] 1465 	movx	a,@dptr
      00020A 24 01            [12] 1466 	add	a,#0x01
      00020C F0               [24] 1467 	movx	@dptr,a
      00020D E0               [24] 1468 	movx	a,@dptr
      00020E FF               [12] 1469 	mov	r7,a
      00020F 90 07 A1         [24] 1470 	mov	dptr,#_timer0_limit
      000212 E0               [24] 1471 	movx	a,@dptr
      000213 FE               [12] 1472 	mov	r6,a
      000214 C3               [12] 1473 	clr	c
      000215 EF               [12] 1474 	mov	a,r7
      000216 9E               [12] 1475 	subb	a,r6
      000217 40 0A            [24] 1476 	jc	00103$
                                   1477 ;	main.c:378: cnt = 0;
      000219 90 07 AE         [24] 1478 	mov	dptr,#_timer0_isr_cnt_65536_54
      00021C E4               [12] 1479 	clr	a
      00021D F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	main.c:379: allow_send_data = true;
      00021E 90 07 9F         [24] 1482 	mov	dptr,#_allow_send_data
      000221 04               [12] 1483 	inc	a
      000222 F0               [24] 1484 	movx	@dptr,a
      000223                       1485 00103$:
                                   1486 ;	main.c:381: }
      000223 D0 D0            [24] 1487 	pop	psw
      000225 D0 06            [24] 1488 	pop	ar6
      000227 D0 07            [24] 1489 	pop	ar7
      000229 D0 83            [24] 1490 	pop	dph
      00022B D0 82            [24] 1491 	pop	dpl
      00022D D0 E0            [24] 1492 	pop	acc
      00022F 32               [24] 1493 	reti
                                   1494 ;	eliminated unneeded push/pop b
                                   1495 ;------------------------------------------------------------
                                   1496 ;Allocation info for local variables in function 'Timer3_ISR'
                                   1497 ;------------------------------------------------------------
                                   1498 ;	main.c:384: static void Timer3_ISR(void) __interrupt (INT_NO_TMR3)
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function Timer3_ISR
                                   1501 ;	-----------------------------------------
      000230                       1502 _Timer3_ISR:
                                   1503 ;	main.c:386: T3_STAT |= bT3_IF_END;
      000230 43 A9 10         [24] 1504 	orl	_T3_STAT,#0x10
                                   1505 ;	main.c:387: led_off();
      000233 43 C0 40         [24] 1506 	orl	_P4_OUT,#0x40
                                   1507 ;	main.c:388: led_timer_stop();
      000236 53 AA FB         [24] 1508 	anl	_T3_CTRL,#0xfb
                                   1509 ;	main.c:389: }
      000239 32               [24] 1510 	reti
                                   1511 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1512 ;	eliminated unneeded push/pop not_psw
                                   1513 ;	eliminated unneeded push/pop dpl
                                   1514 ;	eliminated unneeded push/pop dph
                                   1515 ;	eliminated unneeded push/pop b
                                   1516 ;	eliminated unneeded push/pop acc
                                   1517 ;------------------------------------------------------------
                                   1518 ;Allocation info for local variables in function 'Timer2_ISR'
                                   1519 ;------------------------------------------------------------
                                   1520 ;current_byte              Allocated with name '_Timer2_ISR_current_byte_65536_60'
                                   1521 ;------------------------------------------------------------
                                   1522 ;	main.c:392: static void Timer2_ISR(void) __interrupt (INT_NO_TMR2)
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function Timer2_ISR
                                   1525 ;	-----------------------------------------
      00023A                       1526 _Timer2_ISR:
      00023A C0 E0            [24] 1527 	push	acc
      00023C C0 82            [24] 1528 	push	dpl
      00023E C0 83            [24] 1529 	push	dph
      000240 C0 07            [24] 1530 	push	ar7
      000242 C0 06            [24] 1531 	push	ar6
      000244 C0 D0            [24] 1532 	push	psw
      000246 75 D0 00         [24] 1533 	mov	psw,#0x00
                                   1534 ;	main.c:395: TF2 = 0; // Не сбрасывается автоматически
                                   1535 ;	assignBit
      000249 C2 CF            [12] 1536 	clr	_TF2
                                   1537 ;	main.c:398: if (not_rdy_2rcv() && device_init) {
      00024B E5 90            [12] 1538 	mov	a,_P1
      00024D 30 E6 19         [24] 1539 	jnb	acc.6,00105$
      000250 90 07 9E         [24] 1540 	mov	dptr,#_device_init
      000253 E0               [24] 1541 	movx	a,@dptr
      000254 60 13            [24] 1542 	jz	00105$
                                   1543 ;	main.c:400: spi_timer_slow();
                                   1544 ;	assignBit
      000256 C2 CA            [12] 1545 	clr	_TR2
      000258 75 CB FE         [24] 1546 	mov	_RCAP2H,#0xfe
      00025B 75 CA 70         [24] 1547 	mov	_RCAP2L,#0x70
      00025E 85 CB CD         [24] 1548 	mov	_TH2,_RCAP2H
      000261 85 CA CC         [24] 1549 	mov	_TL2,_RCAP2L
                                   1550 ;	assignBit
      000264 D2 CA            [12] 1551 	setb	_TR2
                                   1552 ;	main.c:401: return;
      000266 02 03 7C         [24] 1553 	ljmp	00231$
      000269                       1554 00105$:
                                   1555 ;	main.c:405: if (!spi_tx_buf_count) {
      000269 90 07 06         [24] 1556 	mov	dptr,#_spi_tx_buf_count
      00026C E0               [24] 1557 	movx	a,@dptr
      00026D 70 05            [24] 1558 	jnz	00111$
                                   1559 ;	main.c:406: spi_timer_stop();
                                   1560 ;	assignBit
      00026F C2 CA            [12] 1561 	clr	_TR2
                                   1562 ;	main.c:407: return;
      000271 02 03 7C         [24] 1563 	ljmp	00231$
      000274                       1564 00111$:
                                   1565 ;	main.c:410: device_init = true;
      000274 90 07 9E         [24] 1566 	mov	dptr,#_device_init
      000277 74 01            [12] 1567 	mov	a,#0x01
      000279 F0               [24] 1568 	movx	@dptr,a
                                   1569 ;	main.c:413: current_byte = spi_tx_buf[spi_tx_buf_r];
      00027A 90 07 05         [24] 1570 	mov	dptr,#_spi_tx_buf_r
      00027D E0               [24] 1571 	movx	a,@dptr
      00027E 24 05            [12] 1572 	add	a,#_spi_tx_buf
      000280 F5 82            [12] 1573 	mov	dpl,a
      000282 E4               [12] 1574 	clr	a
      000283 34 06            [12] 1575 	addc	a,#(_spi_tx_buf >> 8)
      000285 F5 83            [12] 1576 	mov	dph,a
      000287 E0               [24] 1577 	movx	a,@dptr
      000288 FF               [12] 1578 	mov	r7,a
                                   1579 ;	main.c:414: if (++spi_tx_buf_r == SPI_TX_BUFFER_SIZE) {
      000289 90 07 05         [24] 1580 	mov	dptr,#_spi_tx_buf_r
      00028C E0               [24] 1581 	movx	a,@dptr
      00028D 24 01            [12] 1582 	add	a,#0x01
      00028F FE               [12] 1583 	mov	r6,a
      000290 F0               [24] 1584 	movx	@dptr,a
      000291 BE FF 05         [24] 1585 	cjne	r6,#0xff,00113$
                                   1586 ;	main.c:415: spi_tx_buf_r = 0;
      000294 90 07 05         [24] 1587 	mov	dptr,#_spi_tx_buf_r
      000297 E4               [12] 1588 	clr	a
      000298 F0               [24] 1589 	movx	@dptr,a
      000299                       1590 00113$:
                                   1591 ;	main.c:417: spi_tx_buf_count--;
      000299 90 07 06         [24] 1592 	mov	dptr,#_spi_tx_buf_count
      00029C E0               [24] 1593 	movx	a,@dptr
      00029D 14               [12] 1594 	dec	a
      00029E F0               [24] 1595 	movx	@dptr,a
                                   1596 ;	main.c:420: SPI_SEND_PACKET(current_byte);
      00029F 53 90 7F         [24] 1597 	anl	_P1,#0x7f
      0002A2 00               [12] 1598 	nop
      0002A3 00               [12] 1599 	nop
      0002A4 00               [12] 1600 	nop
      0002A5 EF               [12] 1601 	mov	a,r7
      0002A6 30 E6 05         [24] 1602 	jnb	acc.6,00118$
      0002A9 43 90 20         [24] 1603 	orl	_P1,#0x20
      0002AC 80 03            [24] 1604 	sjmp	00120$
      0002AE                       1605 00118$:
      0002AE 53 90 DF         [24] 1606 	anl	_P1,#0xdf
      0002B1                       1607 00120$:
      0002B1 00               [12] 1608 	nop
      0002B2 00               [12] 1609 	nop
      0002B3 00               [12] 1610 	nop
      0002B4 43 90 80         [24] 1611 	orl	_P1,#0x80
      0002B7 00               [12] 1612 	nop
      0002B8 00               [12] 1613 	nop
      0002B9 00               [12] 1614 	nop
      0002BA 53 90 7F         [24] 1615 	anl	_P1,#0x7f
      0002BD 00               [12] 1616 	nop
      0002BE 00               [12] 1617 	nop
      0002BF 00               [12] 1618 	nop
      0002C0 EF               [12] 1619 	mov	a,r7
      0002C1 30 E5 05         [24] 1620 	jnb	acc.5,00133$
      0002C4 43 90 20         [24] 1621 	orl	_P1,#0x20
      0002C7 80 03            [24] 1622 	sjmp	00135$
      0002C9                       1623 00133$:
      0002C9 53 90 DF         [24] 1624 	anl	_P1,#0xdf
      0002CC                       1625 00135$:
      0002CC 00               [12] 1626 	nop
      0002CD 00               [12] 1627 	nop
      0002CE 00               [12] 1628 	nop
      0002CF 43 90 80         [24] 1629 	orl	_P1,#0x80
      0002D2 00               [12] 1630 	nop
      0002D3 00               [12] 1631 	nop
      0002D4 00               [12] 1632 	nop
      0002D5 53 90 7F         [24] 1633 	anl	_P1,#0x7f
      0002D8 00               [12] 1634 	nop
      0002D9 00               [12] 1635 	nop
      0002DA 00               [12] 1636 	nop
      0002DB EF               [12] 1637 	mov	a,r7
      0002DC 30 E4 05         [24] 1638 	jnb	acc.4,00148$
      0002DF 43 90 20         [24] 1639 	orl	_P1,#0x20
      0002E2 80 03            [24] 1640 	sjmp	00150$
      0002E4                       1641 00148$:
      0002E4 53 90 DF         [24] 1642 	anl	_P1,#0xdf
      0002E7                       1643 00150$:
      0002E7 00               [12] 1644 	nop
      0002E8 00               [12] 1645 	nop
      0002E9 00               [12] 1646 	nop
      0002EA 43 90 80         [24] 1647 	orl	_P1,#0x80
      0002ED 00               [12] 1648 	nop
      0002EE 00               [12] 1649 	nop
      0002EF 00               [12] 1650 	nop
      0002F0 53 90 7F         [24] 1651 	anl	_P1,#0x7f
      0002F3 00               [12] 1652 	nop
      0002F4 00               [12] 1653 	nop
      0002F5 00               [12] 1654 	nop
      0002F6 EF               [12] 1655 	mov	a,r7
      0002F7 30 E3 05         [24] 1656 	jnb	acc.3,00163$
      0002FA 43 90 20         [24] 1657 	orl	_P1,#0x20
      0002FD 80 03            [24] 1658 	sjmp	00165$
      0002FF                       1659 00163$:
      0002FF 53 90 DF         [24] 1660 	anl	_P1,#0xdf
      000302                       1661 00165$:
      000302 00               [12] 1662 	nop
      000303 00               [12] 1663 	nop
      000304 00               [12] 1664 	nop
      000305 43 90 80         [24] 1665 	orl	_P1,#0x80
      000308 00               [12] 1666 	nop
      000309 00               [12] 1667 	nop
      00030A 00               [12] 1668 	nop
      00030B 53 90 7F         [24] 1669 	anl	_P1,#0x7f
      00030E 00               [12] 1670 	nop
      00030F 00               [12] 1671 	nop
      000310 00               [12] 1672 	nop
      000311 EF               [12] 1673 	mov	a,r7
      000312 30 E2 05         [24] 1674 	jnb	acc.2,00178$
      000315 43 90 20         [24] 1675 	orl	_P1,#0x20
      000318 80 03            [24] 1676 	sjmp	00180$
      00031A                       1677 00178$:
      00031A 53 90 DF         [24] 1678 	anl	_P1,#0xdf
      00031D                       1679 00180$:
      00031D 00               [12] 1680 	nop
      00031E 00               [12] 1681 	nop
      00031F 00               [12] 1682 	nop
      000320 43 90 80         [24] 1683 	orl	_P1,#0x80
      000323 00               [12] 1684 	nop
      000324 00               [12] 1685 	nop
      000325 00               [12] 1686 	nop
      000326 53 90 7F         [24] 1687 	anl	_P1,#0x7f
      000329 00               [12] 1688 	nop
      00032A 00               [12] 1689 	nop
      00032B 00               [12] 1690 	nop
      00032C EF               [12] 1691 	mov	a,r7
      00032D 30 E1 05         [24] 1692 	jnb	acc.1,00193$
      000330 43 90 20         [24] 1693 	orl	_P1,#0x20
      000333 80 03            [24] 1694 	sjmp	00195$
      000335                       1695 00193$:
      000335 53 90 DF         [24] 1696 	anl	_P1,#0xdf
      000338                       1697 00195$:
      000338 00               [12] 1698 	nop
      000339 00               [12] 1699 	nop
      00033A 00               [12] 1700 	nop
      00033B 43 90 80         [24] 1701 	orl	_P1,#0x80
      00033E 00               [12] 1702 	nop
      00033F 00               [12] 1703 	nop
      000340 00               [12] 1704 	nop
      000341 53 90 7F         [24] 1705 	anl	_P1,#0x7f
      000344 00               [12] 1706 	nop
      000345 00               [12] 1707 	nop
      000346 00               [12] 1708 	nop
      000347 EF               [12] 1709 	mov	a,r7
      000348 30 E0 05         [24] 1710 	jnb	acc.0,00208$
      00034B 43 90 20         [24] 1711 	orl	_P1,#0x20
      00034E 80 03            [24] 1712 	sjmp	00210$
      000350                       1713 00208$:
      000350 53 90 DF         [24] 1714 	anl	_P1,#0xdf
      000353                       1715 00210$:
      000353 00               [12] 1716 	nop
      000354 00               [12] 1717 	nop
      000355 00               [12] 1718 	nop
      000356 43 90 80         [24] 1719 	orl	_P1,#0x80
      000359 00               [12] 1720 	nop
      00035A 00               [12] 1721 	nop
      00035B 00               [12] 1722 	nop
      00035C 53 90 7F         [24] 1723 	anl	_P1,#0x7f
      00035F 53 90 DF         [24] 1724 	anl	_P1,#0xdf
                                   1725 ;	main.c:423: if (!spi_tx_buf_count) { // Нечего передавать, останавливаемся
      000362 90 07 06         [24] 1726 	mov	dptr,#_spi_tx_buf_count
      000365 E0               [24] 1727 	movx	a,@dptr
      000366 70 04            [24] 1728 	jnz	00225$
                                   1729 ;	main.c:424: spi_timer_stop();
                                   1730 ;	assignBit
      000368 C2 CA            [12] 1731 	clr	_TR2
                                   1732 ;	main.c:426: spi_timer_fast();
      00036A 80 10            [24] 1733 	sjmp	00231$
      00036C                       1734 00225$:
                                   1735 ;	assignBit
      00036C C2 CA            [12] 1736 	clr	_TR2
      00036E 75 CB FF         [24] 1737 	mov	_RCAP2H,#0xff
      000371 75 CA 9C         [24] 1738 	mov	_RCAP2L,#0x9c
      000374 85 CB CD         [24] 1739 	mov	_TH2,_RCAP2H
      000377 85 CA CC         [24] 1740 	mov	_TL2,_RCAP2L
                                   1741 ;	assignBit
      00037A D2 CA            [12] 1742 	setb	_TR2
      00037C                       1743 00231$:
                                   1744 ;	main.c:428: }
      00037C D0 D0            [24] 1745 	pop	psw
      00037E D0 06            [24] 1746 	pop	ar6
      000380 D0 07            [24] 1747 	pop	ar7
      000382 D0 83            [24] 1748 	pop	dph
      000384 D0 82            [24] 1749 	pop	dpl
      000386 D0 E0            [24] 1750 	pop	acc
      000388 32               [24] 1751 	reti
                                   1752 ;	eliminated unneeded push/pop b
                                   1753 ;------------------------------------------------------------
                                   1754 ;Allocation info for local variables in function 'uart_isr'
                                   1755 ;------------------------------------------------------------
                                   1756 ;next                      Allocated with name '_uart_isr_next_65536_100'
                                   1757 ;------------------------------------------------------------
                                   1758 ;	main.c:431: static void uart_isr(void) __interrupt (INT_NO_UART0)
                                   1759 ;	-----------------------------------------
                                   1760 ;	 function uart_isr
                                   1761 ;	-----------------------------------------
      000389                       1762 _uart_isr:
      000389 C0 E0            [24] 1763 	push	acc
      00038B C0 82            [24] 1764 	push	dpl
      00038D C0 83            [24] 1765 	push	dph
      00038F C0 07            [24] 1766 	push	ar7
      000391 C0 06            [24] 1767 	push	ar6
      000393 C0 D0            [24] 1768 	push	psw
      000395 75 D0 00         [24] 1769 	mov	psw,#0x00
                                   1770 ;	main.c:434: if (TI) {
                                   1771 ;	main.c:435: TI = 0;
                                   1772 ;	assignBit
      000398 10 99 02         [24] 1773 	jbc	_TI,00127$
      00039B 80 29            [24] 1774 	sjmp	00104$
      00039D                       1775 00127$:
                                   1776 ;	main.c:436: next = (uart_tx_r + 1) & UART_TX_MASK;
      00039D 90 07 87         [24] 1777 	mov	dptr,#_uart_tx_r
      0003A0 E0               [24] 1778 	movx	a,@dptr
      0003A1 04               [12] 1779 	inc	a
      0003A2 54 7F            [12] 1780 	anl	a,#0x7f
      0003A4 FF               [12] 1781 	mov	r7,a
                                   1782 ;	main.c:437: if (next != uart_tx_w) {
      0003A5 90 07 88         [24] 1783 	mov	dptr,#_uart_tx_w
      0003A8 E0               [24] 1784 	movx	a,@dptr
      0003A9 FE               [12] 1785 	mov	r6,a
      0003AA EF               [12] 1786 	mov	a,r7
      0003AB B5 06 02         [24] 1787 	cjne	a,ar6,00128$
      0003AE 80 16            [24] 1788 	sjmp	00104$
      0003B0                       1789 00128$:
                                   1790 ;	main.c:438: SBUF = uart_tx_buf[uart_tx_r];
      0003B0 90 07 87         [24] 1791 	mov	dptr,#_uart_tx_r
      0003B3 E0               [24] 1792 	movx	a,@dptr
      0003B4 FE               [12] 1793 	mov	r6,a
      0003B5 24 07            [12] 1794 	add	a,#_uart_tx_buf
      0003B7 F5 82            [12] 1795 	mov	dpl,a
      0003B9 E4               [12] 1796 	clr	a
      0003BA 34 07            [12] 1797 	addc	a,#(_uart_tx_buf >> 8)
      0003BC F5 83            [12] 1798 	mov	dph,a
      0003BE E0               [24] 1799 	movx	a,@dptr
      0003BF F5 99            [12] 1800 	mov	_SBUF,a
                                   1801 ;	main.c:439: uart_tx_r = next;
      0003C1 90 07 87         [24] 1802 	mov	dptr,#_uart_tx_r
      0003C4 EF               [12] 1803 	mov	a,r7
      0003C5 F0               [24] 1804 	movx	@dptr,a
      0003C6                       1805 00104$:
                                   1806 ;	main.c:443: if (RI) {
                                   1807 ;	main.c:444: RI = 0;
                                   1808 ;	assignBit
      0003C6 10 98 02         [24] 1809 	jbc	_RI,00129$
      0003C9 80 29            [24] 1810 	sjmp	00109$
      0003CB                       1811 00129$:
                                   1812 ;	main.c:445: if (uart_rx_buf_count < UART_RX_BUF_SIZE) {
      0003CB 90 07 9B         [24] 1813 	mov	dptr,#_uart_rx_buf_count
      0003CE E0               [24] 1814 	movx	a,@dptr
      0003CF FF               [12] 1815 	mov	r7,a
      0003D0 BF 10 00         [24] 1816 	cjne	r7,#0x10,00130$
      0003D3                       1817 00130$:
      0003D3 50 1F            [24] 1818 	jnc	00109$
                                   1819 ;	main.c:446: uart_rx_buf[uart_rx_w] = SBUF;
      0003D5 90 07 9A         [24] 1820 	mov	dptr,#_uart_rx_w
      0003D8 E0               [24] 1821 	movx	a,@dptr
      0003D9 24 89            [12] 1822 	add	a,#_uart_rx_buf
      0003DB F5 82            [12] 1823 	mov	dpl,a
      0003DD E4               [12] 1824 	clr	a
      0003DE 34 07            [12] 1825 	addc	a,#(_uart_rx_buf >> 8)
      0003E0 F5 83            [12] 1826 	mov	dph,a
      0003E2 E5 99            [12] 1827 	mov	a,_SBUF
      0003E4 F0               [24] 1828 	movx	@dptr,a
                                   1829 ;	main.c:447: uart_rx_w = (uart_rx_w + 1) & UART_RX_MASK;
      0003E5 90 07 9A         [24] 1830 	mov	dptr,#_uart_rx_w
      0003E8 E0               [24] 1831 	movx	a,@dptr
      0003E9 FF               [12] 1832 	mov	r7,a
      0003EA 04               [12] 1833 	inc	a
      0003EB 54 0F            [12] 1834 	anl	a,#0x0f
      0003ED F0               [24] 1835 	movx	@dptr,a
                                   1836 ;	main.c:448: uart_rx_buf_count++;
      0003EE 90 07 9B         [24] 1837 	mov	dptr,#_uart_rx_buf_count
      0003F1 E0               [24] 1838 	movx	a,@dptr
      0003F2 04               [12] 1839 	inc	a
      0003F3 F0               [24] 1840 	movx	@dptr,a
      0003F4                       1841 00109$:
                                   1842 ;	main.c:451: }
      0003F4 D0 D0            [24] 1843 	pop	psw
      0003F6 D0 06            [24] 1844 	pop	ar6
      0003F8 D0 07            [24] 1845 	pop	ar7
      0003FA D0 83            [24] 1846 	pop	dph
      0003FC D0 82            [24] 1847 	pop	dpl
      0003FE D0 E0            [24] 1848 	pop	acc
      000400 32               [24] 1849 	reti
                                   1850 ;	eliminated unneeded push/pop b
                                   1851 ;------------------------------------------------------------
                                   1852 ;Allocation info for local variables in function 'putchar'
                                   1853 ;------------------------------------------------------------
                                   1854 ;c                         Allocated with name '_putchar_c_65536_105'
                                   1855 ;------------------------------------------------------------
                                   1856 ;	main.c:476: int putchar(int c)
                                   1857 ;	-----------------------------------------
                                   1858 ;	 function putchar
                                   1859 ;	-----------------------------------------
      000401                       1860 _putchar:
      000401 AF 83            [24] 1861 	mov	r7,dph
      000403 E5 82            [12] 1862 	mov	a,dpl
      000405 90 07 AF         [24] 1863 	mov	dptr,#_putchar_c_65536_105
      000408 F0               [24] 1864 	movx	@dptr,a
      000409 EF               [12] 1865 	mov	a,r7
      00040A A3               [24] 1866 	inc	dptr
      00040B F0               [24] 1867 	movx	@dptr,a
                                   1868 ;	main.c:478: while(!TI) ;
      00040C                       1869 00101$:
                                   1870 ;	main.c:479: TI = 0;
                                   1871 ;	assignBit
      00040C 10 99 02         [24] 1872 	jbc	_TI,00114$
      00040F 80 FB            [24] 1873 	sjmp	00101$
      000411                       1874 00114$:
                                   1875 ;	main.c:480: SBUF = c & 0xFF;
      000411 90 07 AF         [24] 1876 	mov	dptr,#_putchar_c_65536_105
      000414 E0               [24] 1877 	movx	a,@dptr
      000415 FE               [12] 1878 	mov	r6,a
      000416 A3               [24] 1879 	inc	dptr
      000417 E0               [24] 1880 	movx	a,@dptr
      000418 FF               [12] 1881 	mov	r7,a
      000419 8E 99            [24] 1882 	mov	_SBUF,r6
                                   1883 ;	main.c:481: return c;
      00041B 8E 82            [24] 1884 	mov	dpl,r6
      00041D 8F 83            [24] 1885 	mov	dph,r7
                                   1886 ;	main.c:482: }
      00041F 22               [24] 1887 	ret
                                   1888 ;------------------------------------------------------------
                                   1889 ;Allocation info for local variables in function 'getchar'
                                   1890 ;------------------------------------------------------------
                                   1891 ;	main.c:499: int getchar()
                                   1892 ;	-----------------------------------------
                                   1893 ;	 function getchar
                                   1894 ;	-----------------------------------------
      000420                       1895 _getchar:
                                   1896 ;	main.c:501: while(!RI) ;
      000420                       1897 00101$:
                                   1898 ;	main.c:502: RI = 0;
                                   1899 ;	assignBit
      000420 10 98 02         [24] 1900 	jbc	_RI,00114$
      000423 80 FB            [24] 1901 	sjmp	00101$
      000425                       1902 00114$:
                                   1903 ;	main.c:503: return SBUF;
      000425 AE 99            [24] 1904 	mov	r6,_SBUF
      000427 7F 00            [12] 1905 	mov	r7,#0x00
      000429 8E 82            [24] 1906 	mov	dpl,r6
      00042B 8F 83            [24] 1907 	mov	dph,r7
                                   1908 ;	main.c:504: }
      00042D 22               [24] 1909 	ret
                                   1910 ;------------------------------------------------------------
                                   1911 ;Allocation info for local variables in function 'processUart'
                                   1912 ;------------------------------------------------------------
                                   1913 ;	main.c:508: void processUart()
                                   1914 ;	-----------------------------------------
                                   1915 ;	 function processUart
                                   1916 ;	-----------------------------------------
      00042E                       1917 _processUart:
                                   1918 ;	main.c:518: }
      00042E 22               [24] 1919 	ret
                                   1920 ;------------------------------------------------------------
                                   1921 ;Allocation info for local variables in function 'flash_led'
                                   1922 ;------------------------------------------------------------
                                   1923 ;	main.c:524: void flash_led(void)
                                   1924 ;	-----------------------------------------
                                   1925 ;	 function flash_led
                                   1926 ;	-----------------------------------------
      00042F                       1927 _flash_led:
                                   1928 ;	main.c:526: led_on();
      00042F 53 C0 BF         [24] 1929 	anl	_P4_OUT,#0xbf
                                   1930 ;	main.c:527: led_timer_start();
      000432 43 AA 04         [24] 1931 	orl	_T3_CTRL,#0x04
                                   1932 ;	main.c:528: }
      000435 22               [24] 1933 	ret
                                   1934 ;------------------------------------------------------------
                                   1935 ;Allocation info for local variables in function 'spi_init'
                                   1936 ;------------------------------------------------------------
                                   1937 ;_ea_state                 Allocated with name '_spi_init__ea_state_131072_115'
                                   1938 ;------------------------------------------------------------
                                   1939 ;	main.c:534: static inline void spi_init(void)
                                   1940 ;	-----------------------------------------
                                   1941 ;	 function spi_init
                                   1942 ;	-----------------------------------------
      000436                       1943 _spi_init:
                                   1944 ;	main.c:536: CRITICAL_SECTION (
      000436 A2 AF            [12] 1945 	mov	c,_EA
      000438 E4               [12] 1946 	clr	a
      000439 33               [12] 1947 	rlc	a
      00043A FF               [12] 1948 	mov	r7,a
                                   1949 ;	assignBit
      00043B C2 AF            [12] 1950 	clr	_EA
      00043D 90 07 04         [24] 1951 	mov	dptr,#_spi_tx_buf_w
      000440 E4               [12] 1952 	clr	a
      000441 F0               [24] 1953 	movx	@dptr,a
      000442 90 07 05         [24] 1954 	mov	dptr,#_spi_tx_buf_r
      000445 F0               [24] 1955 	movx	@dptr,a
      000446 90 07 06         [24] 1956 	mov	dptr,#_spi_tx_buf_count
      000449 F0               [24] 1957 	movx	@dptr,a
      00044A 90 07 9E         [24] 1958 	mov	dptr,#_device_init
      00044D E0               [24] 1959 	movx	a,@dptr
      00044E 70 26            [24] 1960 	jnz	00102$
      000450 43 90 20         [24] 1961 	orl	_P1,#0x20
      000453 90 00 01         [24] 1962 	mov	dptr,#0x0001
      000456 C0 07            [24] 1963 	push	ar7
      000458 12 15 E7         [24] 1964 	lcall	_delayUs
      00045B D0 07            [24] 1965 	pop	ar7
      00045D 53 90 DF         [24] 1966 	anl	_P1,#0xdf
      000460 90 06 00         [24] 1967 	mov	dptr,#_opt_com_settings
      000463 E0               [24] 1968 	movx	a,@dptr
      000464 FE               [12] 1969 	mov	r6,a
      000465 90 06 03         [24] 1970 	mov	dptr,#_opt_irq_settings
      000468 E0               [24] 1971 	movx	a,@dptr
      000469 90 07 B2         [24] 1972 	mov	dptr,#_spi_send_config_PARM_2
      00046C F0               [24] 1973 	movx	@dptr,a
      00046D 8E 82            [24] 1974 	mov	dpl,r6
      00046F C0 07            [24] 1975 	push	ar7
      000471 12 04 EA         [24] 1976 	lcall	_spi_send_config
      000474 D0 07            [24] 1977 	pop	ar7
      000476                       1978 00102$:
      000476 90 00 01         [24] 1979 	mov	dptr,#0x0001
      000479 C0 07            [24] 1980 	push	ar7
      00047B 12 15 E7         [24] 1981 	lcall	_delayUs
      00047E D0 07            [24] 1982 	pop	ar7
      000480 53 C0 7F         [24] 1983 	anl	_P4_OUT,#0x7f
                                   1984 ;	assignBit
      000483 EF               [12] 1985 	mov	a,r7
      000484 24 FF            [12] 1986 	add	a,#0xff
      000486 92 AF            [24] 1987 	mov	_EA,c
                                   1988 ;	main.c:555: while (!device_init) {
      000488                       1989 00106$:
      000488 90 07 9E         [24] 1990 	mov	dptr,#_device_init
      00048B E0               [24] 1991 	movx	a,@dptr
      00048C 60 FA            [24] 1992 	jz	00106$
                                   1993 ;	main.c:556: mcu_sleep();
                                   1994 ;	main.c:558: }
      00048E 22               [24] 1995 	ret
                                   1996 ;------------------------------------------------------------
                                   1997 ;Allocation info for local variables in function 'spi_send'
                                   1998 ;------------------------------------------------------------
                                   1999 ;c                         Allocated with name '_spi_send_c_65536_121'
                                   2000 ;_ea_state                 Allocated with name '_spi_send__ea_state_131072_124'
                                   2001 ;------------------------------------------------------------
                                   2002 ;	main.c:561: static void spi_send(uint8_t c)
                                   2003 ;	-----------------------------------------
                                   2004 ;	 function spi_send
                                   2005 ;	-----------------------------------------
      00048F                       2006 _spi_send:
      00048F E5 82            [12] 2007 	mov	a,dpl
      000491 90 07 B1         [24] 2008 	mov	dptr,#_spi_send_c_65536_121
      000494 F0               [24] 2009 	movx	@dptr,a
                                   2010 ;	main.c:563: while (spi_tx_buf_count == SPI_TX_BUFFER_SIZE) {
      000495                       2011 00101$:
      000495 90 07 06         [24] 2012 	mov	dptr,#_spi_tx_buf_count
      000498 E0               [24] 2013 	movx	a,@dptr
      000499 FF               [12] 2014 	mov	r7,a
      00049A BF FF 02         [24] 2015 	cjne	r7,#0xff,00133$
      00049D 80 F6            [24] 2016 	sjmp	00101$
      00049F                       2017 00133$:
                                   2018 ;	main.c:567: CRITICAL_SECTION (
      00049F A2 AF            [12] 2019 	mov	c,_EA
      0004A1 E4               [12] 2020 	clr	a
      0004A2 33               [12] 2021 	rlc	a
      0004A3 FF               [12] 2022 	mov	r7,a
                                   2023 ;	assignBit
      0004A4 C2 AF            [12] 2024 	clr	_EA
      0004A6 90 07 04         [24] 2025 	mov	dptr,#_spi_tx_buf_w
      0004A9 E0               [24] 2026 	movx	a,@dptr
      0004AA 24 05            [12] 2027 	add	a,#_spi_tx_buf
      0004AC FE               [12] 2028 	mov	r6,a
      0004AD E4               [12] 2029 	clr	a
      0004AE 34 06            [12] 2030 	addc	a,#(_spi_tx_buf >> 8)
      0004B0 FD               [12] 2031 	mov	r5,a
      0004B1 90 07 B1         [24] 2032 	mov	dptr,#_spi_send_c_65536_121
      0004B4 E0               [24] 2033 	movx	a,@dptr
      0004B5 8E 82            [24] 2034 	mov	dpl,r6
      0004B7 8D 83            [24] 2035 	mov	dph,r5
      0004B9 F0               [24] 2036 	movx	@dptr,a
      0004BA 90 07 06         [24] 2037 	mov	dptr,#_spi_tx_buf_count
      0004BD E0               [24] 2038 	movx	a,@dptr
      0004BE FE               [12] 2039 	mov	r6,a
      0004BF 04               [12] 2040 	inc	a
      0004C0 F0               [24] 2041 	movx	@dptr,a
      0004C1 EE               [12] 2042 	mov	a,r6
      0004C2 70 10            [24] 2043 	jnz	00108$
                                   2044 ;	assignBit
      0004C4 C2 CA            [12] 2045 	clr	_TR2
      0004C6 75 CB FF         [24] 2046 	mov	_RCAP2H,#0xff
      0004C9 75 CA 9C         [24] 2047 	mov	_RCAP2L,#0x9c
      0004CC 85 CB CD         [24] 2048 	mov	_TH2,_RCAP2H
      0004CF 85 CA CC         [24] 2049 	mov	_TL2,_RCAP2L
                                   2050 ;	assignBit
      0004D2 D2 CA            [12] 2051 	setb	_TR2
      0004D4                       2052 00108$:
      0004D4 90 07 04         [24] 2053 	mov	dptr,#_spi_tx_buf_w
      0004D7 E0               [24] 2054 	movx	a,@dptr
      0004D8 24 01            [12] 2055 	add	a,#0x01
      0004DA FE               [12] 2056 	mov	r6,a
      0004DB F0               [24] 2057 	movx	@dptr,a
      0004DC BE FF 05         [24] 2058 	cjne	r6,#0xff,00110$
      0004DF 90 07 04         [24] 2059 	mov	dptr,#_spi_tx_buf_w
      0004E2 E4               [12] 2060 	clr	a
      0004E3 F0               [24] 2061 	movx	@dptr,a
      0004E4                       2062 00110$:
                                   2063 ;	assignBit
      0004E4 EF               [12] 2064 	mov	a,r7
      0004E5 24 FF            [12] 2065 	add	a,#0xff
      0004E7 92 AF            [24] 2066 	mov	_EA,c
                                   2067 ;	main.c:575: }
      0004E9 22               [24] 2068 	ret
                                   2069 ;------------------------------------------------------------
                                   2070 ;Allocation info for local variables in function 'spi_send_config'
                                   2071 ;------------------------------------------------------------
                                   2072 ;opt_irq                   Allocated with name '_spi_send_config_PARM_2'
                                   2073 ;opt_com                   Allocated with name '_spi_send_config_opt_com_65536_130'
                                   2074 ;config_data               Allocated with name '_spi_send_config_config_data_65536_131'
                                   2075 ;------------------------------------------------------------
                                   2076 ;	main.c:578: static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq)
                                   2077 ;	-----------------------------------------
                                   2078 ;	 function spi_send_config
                                   2079 ;	-----------------------------------------
      0004EA                       2080 _spi_send_config:
      0004EA E5 82            [12] 2081 	mov	a,dpl
      0004EC 90 07 B3         [24] 2082 	mov	dptr,#_spi_send_config_opt_com_65536_130
      0004EF F0               [24] 2083 	movx	@dptr,a
                                   2084 ;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
      0004F0 E0               [24] 2085 	movx	a,@dptr
      0004F1 54 03            [12] 2086 	anl	a,#0x03
      0004F3 FF               [12] 2087 	mov	r7,a
                                   2088 ;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      0004F4 90 07 B2         [24] 2089 	mov	dptr,#_spi_send_config_PARM_2
      0004F7 E0               [24] 2090 	movx	a,@dptr
      0004F8 FE               [12] 2091 	mov	r6,a
      0004F9 BE 01 06         [24] 2092 	cjne	r6,#0x01,00103$
      0004FC 7D 04            [12] 2093 	mov	r5,#0x04
      0004FE 7E 00            [12] 2094 	mov	r6,#0x00
      000500 80 04            [24] 2095 	sjmp	00104$
      000502                       2096 00103$:
      000502 7D 00            [12] 2097 	mov	r5,#0x00
      000504 7E 00            [12] 2098 	mov	r6,#0x00
      000506                       2099 00104$:
      000506 ED               [12] 2100 	mov	a,r5
      000507 42 07            [12] 2101 	orl	ar7,a
                                   2102 ;	main.c:584: spi_send(config_data);
      000509 8F 82            [24] 2103 	mov	dpl,r7
                                   2104 ;	main.c:585: }
      00050B 02 04 8F         [24] 2105 	ljmp	_spi_send
                                   2106 ;------------------------------------------------------------
                                   2107 ;Allocation info for local variables in function 'spi_m_send'
                                   2108 ;------------------------------------------------------------
                                   2109 ;y                         Allocated with name '_spi_m_send_PARM_2'
                                   2110 ;z                         Allocated with name '_spi_m_send_PARM_3'
                                   2111 ;b                         Allocated with name '_spi_m_send_PARM_4'
                                   2112 ;x                         Allocated with name '_spi_m_send_x_65536_132'
                                   2113 ;left_b                    Allocated with name '_spi_m_send_left_b_65536_133'
                                   2114 ;right_b                   Allocated with name '_spi_m_send_right_b_65536_133'
                                   2115 ;middle_b                  Allocated with name '_spi_m_send_middle_b_65536_133'
                                   2116 ;------------------------------------------------------------
                                   2117 ;	main.c:588: static inline void spi_m_send(int8_t x, int8_t y, int8_t z, uint8_t b)
                                   2118 ;	-----------------------------------------
                                   2119 ;	 function spi_m_send
                                   2120 ;	-----------------------------------------
      00050E                       2121 _spi_m_send:
      00050E E5 82            [12] 2122 	mov	a,dpl
      000510 90 07 B7         [24] 2123 	mov	dptr,#_spi_m_send_x_65536_132
      000513 F0               [24] 2124 	movx	@dptr,a
                                   2125 ;	main.c:592: left_b = b & 1;
      000514 90 07 B6         [24] 2126 	mov	dptr,#_spi_m_send_PARM_4
      000517 E0               [24] 2127 	movx	a,@dptr
      000518 FF               [12] 2128 	mov	r7,a
      000519 74 01            [12] 2129 	mov	a,#0x01
      00051B 5F               [12] 2130 	anl	a,r7
      00051C FE               [12] 2131 	mov	r6,a
                                   2132 ;	main.c:593: right_b = (b >> 1) & 1;
      00051D EF               [12] 2133 	mov	a,r7
      00051E 03               [12] 2134 	rr	a
      00051F 54 01            [12] 2135 	anl	a,#0x01
      000521 FD               [12] 2136 	mov	r5,a
                                   2137 ;	main.c:594: middle_b = (b >> 2) & 1;
      000522 EF               [12] 2138 	mov	a,r7
      000523 03               [12] 2139 	rr	a
      000524 03               [12] 2140 	rr	a
      000525 54 01            [12] 2141 	anl	a,#0x01
      000527 FF               [12] 2142 	mov	r7,a
                                   2143 ;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
      000528 EE               [12] 2144 	mov	a,r6
      000529 C4               [12] 2145 	swap	a
      00052A 23               [12] 2146 	rl	a
      00052B 54 E0            [12] 2147 	anl	a,#0xe0
      00052D FE               [12] 2148 	mov	r6,a
      00052E 43 06 40         [24] 2149 	orl	ar6,#0x40
      000531 ED               [12] 2150 	mov	a,r5
      000532 C4               [12] 2151 	swap	a
      000533 54 F0            [12] 2152 	anl	a,#0xf0
      000535 42 06            [12] 2153 	orl	ar6,a
                                   2154 ;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
      000537 90 07 B4         [24] 2155 	mov	dptr,#_spi_m_send_PARM_2
      00053A E0               [24] 2156 	movx	a,@dptr
      00053B FD               [12] 2157 	mov	r5,a
      00053C FB               [12] 2158 	mov	r3,a
      00053D 33               [12] 2159 	rlc	a
      00053E 95 E0            [12] 2160 	subb	a,acc
      000540 53 03 C0         [24] 2161 	anl	ar3,#0xc0
      000543 E4               [12] 2162 	clr	a
      000544 CB               [12] 2163 	xch	a,r3
      000545 C4               [12] 2164 	swap	a
      000546 54 0F            [12] 2165 	anl	a,#0x0f
      000548 6B               [12] 2166 	xrl	a,r3
      000549 CB               [12] 2167 	xch	a,r3
      00054A 54 0F            [12] 2168 	anl	a,#0x0f
      00054C CB               [12] 2169 	xch	a,r3
      00054D 6B               [12] 2170 	xrl	a,r3
      00054E CB               [12] 2171 	xch	a,r3
      00054F 30 E3 02         [24] 2172 	jnb	acc.3,00109$
      000552 44 F0            [12] 2173 	orl	a,#0xf0
      000554                       2174 00109$:
      000554 EB               [12] 2175 	mov	a,r3
      000555 42 06            [12] 2176 	orl	ar6,a
      000557 90 07 B7         [24] 2177 	mov	dptr,#_spi_m_send_x_65536_132
      00055A E0               [24] 2178 	movx	a,@dptr
      00055B FC               [12] 2179 	mov	r4,a
      00055C FA               [12] 2180 	mov	r2,a
      00055D 33               [12] 2181 	rlc	a
      00055E 95 E0            [12] 2182 	subb	a,acc
      000560 53 02 C0         [24] 2183 	anl	ar2,#0xc0
      000563 E4               [12] 2184 	clr	a
      000564 A2 E7            [12] 2185 	mov	c,acc.7
      000566 CA               [12] 2186 	xch	a,r2
      000567 33               [12] 2187 	rlc	a
      000568 CA               [12] 2188 	xch	a,r2
      000569 33               [12] 2189 	rlc	a
      00056A A2 E7            [12] 2190 	mov	c,acc.7
      00056C CA               [12] 2191 	xch	a,r2
      00056D 33               [12] 2192 	rlc	a
      00056E CA               [12] 2193 	xch	a,r2
      00056F 33               [12] 2194 	rlc	a
      000570 CA               [12] 2195 	xch	a,r2
      000571 54 03            [12] 2196 	anl	a,#0x03
      000573 30 E1 02         [24] 2197 	jnb	acc.1,00110$
      000576 44 FC            [12] 2198 	orl	a,#0xfc
      000578                       2199 00110$:
      000578 EA               [12] 2200 	mov	a,r2
      000579 42 06            [12] 2201 	orl	ar6,a
      00057B 8E 82            [24] 2202 	mov	dpl,r6
      00057D C0 07            [24] 2203 	push	ar7
      00057F C0 05            [24] 2204 	push	ar5
      000581 C0 04            [24] 2205 	push	ar4
      000583 12 04 8F         [24] 2206 	lcall	_spi_send
      000586 D0 04            [24] 2207 	pop	ar4
                                   2208 ;	main.c:598: spi_send(x & 0x3F);
      000588 53 04 3F         [24] 2209 	anl	ar4,#0x3f
      00058B 8C 82            [24] 2210 	mov	dpl,r4
      00058D 12 04 8F         [24] 2211 	lcall	_spi_send
      000590 D0 05            [24] 2212 	pop	ar5
                                   2213 ;	main.c:599: spi_send(y & 0x3F);
      000592 53 05 3F         [24] 2214 	anl	ar5,#0x3f
      000595 8D 82            [24] 2215 	mov	dpl,r5
      000597 12 04 8F         [24] 2216 	lcall	_spi_send
      00059A D0 07            [24] 2217 	pop	ar7
                                   2218 ;	main.c:602: if (m_wheel) {
      00059C 90 06 04         [24] 2219 	mov	dptr,#_m_wheel
      00059F E0               [24] 2220 	movx	a,@dptr
      0005A0 60 15            [24] 2221 	jz	00102$
                                   2222 ;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
      0005A2 EF               [12] 2223 	mov	a,r7
      0005A3 C4               [12] 2224 	swap	a
      0005A4 54 F0            [12] 2225 	anl	a,#0xf0
      0005A6 FF               [12] 2226 	mov	r7,a
      0005A7 90 07 B5         [24] 2227 	mov	dptr,#_spi_m_send_PARM_3
      0005AA E0               [24] 2228 	movx	a,@dptr
      0005AB FE               [12] 2229 	mov	r6,a
      0005AC 53 06 0F         [24] 2230 	anl	ar6,#0x0f
      0005AF EF               [12] 2231 	mov	a,r7
      0005B0 42 06            [12] 2232 	orl	ar6,a
      0005B2 8E 82            [24] 2233 	mov	dpl,r6
      0005B4 12 04 8F         [24] 2234 	lcall	_spi_send
      0005B7                       2235 00102$:
                                   2236 ;	main.c:606: flash_led();
                                   2237 ;	main.c:607: }
      0005B7 02 04 2F         [24] 2238 	ljmp	_flash_led
                                   2239 ;------------------------------------------------------------
                                   2240 ;Allocation info for local variables in function 'send_mouse_id'
                                   2241 ;------------------------------------------------------------
                                   2242 ;	main.c:610: static inline void send_mouse_id(void)
                                   2243 ;	-----------------------------------------
                                   2244 ;	 function send_mouse_id
                                   2245 ;	-----------------------------------------
      0005BA                       2246 _send_mouse_id:
                                   2247 ;	main.c:613: delay(20);
      0005BA 90 00 14         [24] 2248 	mov	dptr,#0x0014
      0005BD 12 16 3C         [24] 2249 	lcall	_delay
                                   2250 ;	main.c:616: if (!mouse_enabled) {
      0005C0 90 07 9D         [24] 2251 	mov	dptr,#_mouse_enabled
      0005C3 E0               [24] 2252 	movx	a,@dptr
      0005C4 70 01            [24] 2253 	jnz	00102$
                                   2254 ;	main.c:617: return;
      0005C6 22               [24] 2255 	ret
      0005C7                       2256 00102$:
                                   2257 ;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
      0005C7 75 82 4D         [24] 2258 	mov	dpl,#0x4d
      0005CA 12 04 8F         [24] 2259 	lcall	_spi_send
                                   2260 ;	main.c:622: if (m_wheel) {
      0005CD 90 06 04         [24] 2261 	mov	dptr,#_m_wheel
      0005D0 E0               [24] 2262 	movx	a,@dptr
      0005D1 60 1E            [24] 2263 	jz	00104$
                                   2264 ;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      0005D3 75 82 5A         [24] 2265 	mov	dpl,#0x5a
      0005D6 12 04 8F         [24] 2266 	lcall	_spi_send
                                   2267 ;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
      0005D9 75 82 40         [24] 2268 	mov	dpl,#0x40
      0005DC 12 04 8F         [24] 2269 	lcall	_spi_send
                                   2270 ;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
      0005DF 75 82 00         [24] 2271 	mov	dpl,#0x00
      0005E2 12 04 8F         [24] 2272 	lcall	_spi_send
                                   2273 ;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
      0005E5 75 82 00         [24] 2274 	mov	dpl,#0x00
      0005E8 12 04 8F         [24] 2275 	lcall	_spi_send
                                   2276 ;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
      0005EB 75 82 00         [24] 2277 	mov	dpl,#0x00
      0005EE 02 04 8F         [24] 2278 	ljmp	_spi_send
      0005F1                       2279 00104$:
                                   2280 ;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      0005F1 75 82 33         [24] 2281 	mov	dpl,#0x33
      0005F4 12 04 8F         [24] 2282 	lcall	_spi_send
                                   2283 ;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
      0005F7 75 82 40         [24] 2284 	mov	dpl,#0x40
      0005FA 12 04 8F         [24] 2285 	lcall	_spi_send
                                   2286 ;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
      0005FD 75 82 00         [24] 2287 	mov	dpl,#0x00
      000600 12 04 8F         [24] 2288 	lcall	_spi_send
                                   2289 ;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
      000603 75 82 00         [24] 2290 	mov	dpl,#0x00
                                   2291 ;	main.c:634: }
      000606 02 04 8F         [24] 2292 	ljmp	_spi_send
                                   2293 ;------------------------------------------------------------
                                   2294 ;Allocation info for local variables in function 'readCOMsettings'
                                   2295 ;------------------------------------------------------------
                                   2296 ;com_table                 Allocated with name '_readCOMsettings_com_table_65536_141'
                                   2297 ;jumpers                   Allocated with name '_readCOMsettings_jumpers_65536_141'
                                   2298 ;------------------------------------------------------------
                                   2299 ;	main.c:639: static inline uint8_t readCOMsettings(void)
                                   2300 ;	-----------------------------------------
                                   2301 ;	 function readCOMsettings
                                   2302 ;	-----------------------------------------
      000609                       2303 _readCOMsettings:
                                   2304 ;	main.c:641: const uint8_t com_table[4] = {
      000609 90 07 B8         [24] 2305 	mov	dptr,#_readCOMsettings_com_table_65536_141
      00060C 74 03            [12] 2306 	mov	a,#0x03
      00060E F0               [24] 2307 	movx	@dptr,a
      00060F 90 07 B9         [24] 2308 	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0001)
      000612 14               [12] 2309 	dec	a
      000613 F0               [24] 2310 	movx	@dptr,a
      000614 90 07 BA         [24] 2311 	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0002)
      000617 14               [12] 2312 	dec	a
      000618 F0               [24] 2313 	movx	@dptr,a
      000619 90 07 BB         [24] 2314 	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0003)
      00061C E4               [12] 2315 	clr	a
      00061D F0               [24] 2316 	movx	@dptr,a
                                   2317 ;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      00061E E5 A0            [12] 2318 	mov	a,_P2
      000620 30 E6 06         [24] 2319 	jnb	acc.6,00103$
      000623 7E 01            [12] 2320 	mov	r6,#0x01
      000625 7F 00            [12] 2321 	mov	r7,#0x00
      000627 80 04            [24] 2322 	sjmp	00104$
      000629                       2323 00103$:
      000629 7E 00            [12] 2324 	mov	r6,#0x00
      00062B 7F 00            [12] 2325 	mov	r7,#0x00
      00062D                       2326 00104$:
      00062D E5 A0            [12] 2327 	mov	a,_P2
      00062F 30 E7 06         [24] 2328 	jnb	acc.7,00105$
      000632 7C 02            [12] 2329 	mov	r4,#0x02
      000634 7D 00            [12] 2330 	mov	r5,#0x00
      000636 80 04            [24] 2331 	sjmp	00106$
      000638                       2332 00105$:
      000638 7C 00            [12] 2333 	mov	r4,#0x00
      00063A 7D 00            [12] 2334 	mov	r5,#0x00
      00063C                       2335 00106$:
      00063C EC               [12] 2336 	mov	a,r4
      00063D 4E               [12] 2337 	orl	a,r6
                                   2338 ;	main.c:648: return com_table[jumpers];
      00063E 24 B8            [12] 2339 	add	a,#_readCOMsettings_com_table_65536_141
      000640 F5 82            [12] 2340 	mov	dpl,a
      000642 E4               [12] 2341 	clr	a
      000643 34 07            [12] 2342 	addc	a,#(_readCOMsettings_com_table_65536_141 >> 8)
      000645 F5 83            [12] 2343 	mov	dph,a
      000647 E0               [24] 2344 	movx	a,@dptr
                                   2345 ;	main.c:649: }
      000648 F5 82            [12] 2346 	mov	dpl,a
      00064A 22               [24] 2347 	ret
                                   2348 ;------------------------------------------------------------
                                   2349 ;Allocation info for local variables in function 'readWheelsettings'
                                   2350 ;------------------------------------------------------------
                                   2351 ;	main.c:651: static inline bool readWheelsettings(void)
                                   2352 ;	-----------------------------------------
                                   2353 ;	 function readWheelsettings
                                   2354 ;	-----------------------------------------
      00064B                       2355 _readWheelsettings:
                                   2356 ;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      00064B E5 B0            [12] 2357 	mov	a,_P3
      00064D C4               [12] 2358 	swap	a
      00064E 54 01            [12] 2359 	anl	a,#0x01
      000650 B4 01 00         [24] 2360 	cjne	a,#0x01,00103$
      000653                       2361 00103$:
      000653 92 00            [24] 2362 	mov  _readWheelsettings_sloc0_1_0,c
      000655 E4               [12] 2363 	clr	a
      000656 33               [12] 2364 	rlc	a
      000657 F5 82            [12] 2365 	mov	dpl,a
                                   2366 ;	main.c:654: }
      000659 22               [24] 2367 	ret
                                   2368 ;------------------------------------------------------------
                                   2369 ;Allocation info for local variables in function 'readRatesettings'
                                   2370 ;------------------------------------------------------------
                                   2371 ;rate_table                Allocated with name '_readRatesettings_rate_table_65536_145'
                                   2372 ;jumpers                   Allocated with name '_readRatesettings_jumpers_65536_145'
                                   2373 ;------------------------------------------------------------
                                   2374 ;	main.c:656: static inline uint8_t readRatesettings(void)
                                   2375 ;	-----------------------------------------
                                   2376 ;	 function readRatesettings
                                   2377 ;	-----------------------------------------
      00065A                       2378 _readRatesettings:
                                   2379 ;	main.c:658: const uint8_t rate_table[4] = {
      00065A 90 07 BC         [24] 2380 	mov	dptr,#_readRatesettings_rate_table_65536_145
      00065D 74 14            [12] 2381 	mov	a,#0x14
      00065F F0               [24] 2382 	movx	@dptr,a
      000660 90 07 BD         [24] 2383 	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0001)
      000663 23               [12] 2384 	rl	a
      000664 F0               [24] 2385 	movx	@dptr,a
      000665 90 07 BE         [24] 2386 	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0002)
      000668 23               [12] 2387 	rl	a
      000669 F0               [24] 2388 	movx	@dptr,a
      00066A 90 07 BF         [24] 2389 	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0003)
      00066D 74 64            [12] 2390 	mov	a,#0x64
      00066F F0               [24] 2391 	movx	@dptr,a
                                   2392 ;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      000670 E5 90            [12] 2393 	mov	a,_P1
      000672 30 E2 06         [24] 2394 	jnb	acc.2,00103$
      000675 7E 01            [12] 2395 	mov	r6,#0x01
      000677 7F 00            [12] 2396 	mov	r7,#0x00
      000679 80 04            [24] 2397 	sjmp	00104$
      00067B                       2398 00103$:
      00067B 7E 00            [12] 2399 	mov	r6,#0x00
      00067D 7F 00            [12] 2400 	mov	r7,#0x00
      00067F                       2401 00104$:
      00067F E5 90            [12] 2402 	mov	a,_P1
      000681 30 E4 06         [24] 2403 	jnb	acc.4,00105$
      000684 7C 02            [12] 2404 	mov	r4,#0x02
      000686 7D 00            [12] 2405 	mov	r5,#0x00
      000688 80 04            [24] 2406 	sjmp	00106$
      00068A                       2407 00105$:
      00068A 7C 00            [12] 2408 	mov	r4,#0x00
      00068C 7D 00            [12] 2409 	mov	r5,#0x00
      00068E                       2410 00106$:
      00068E EC               [12] 2411 	mov	a,r4
      00068F 4E               [12] 2412 	orl	a,r6
                                   2413 ;	main.c:665: return rate_table[jumpers];
      000690 24 BC            [12] 2414 	add	a,#_readRatesettings_rate_table_65536_145
      000692 F5 82            [12] 2415 	mov	dpl,a
      000694 E4               [12] 2416 	clr	a
      000695 34 07            [12] 2417 	addc	a,#(_readRatesettings_rate_table_65536_145 >> 8)
      000697 F5 83            [12] 2418 	mov	dph,a
      000699 E0               [24] 2419 	movx	a,@dptr
                                   2420 ;	main.c:666: }
      00069A F5 82            [12] 2421 	mov	dpl,a
      00069C 22               [24] 2422 	ret
                                   2423 ;------------------------------------------------------------
                                   2424 ;Allocation info for local variables in function 'checkIRQ'
                                   2425 ;------------------------------------------------------------
                                   2426 ;opt_com                   Allocated with name '_checkIRQ_opt_com_65536_146'
                                   2427 ;------------------------------------------------------------
                                   2428 ;	main.c:668: static inline uint8_t checkIRQ(uint8_t opt_com)
                                   2429 ;	-----------------------------------------
                                   2430 ;	 function checkIRQ
                                   2431 ;	-----------------------------------------
      00069D                       2432 _checkIRQ:
      00069D E5 82            [12] 2433 	mov	a,dpl
      00069F 90 07 C0         [24] 2434 	mov	dptr,#_checkIRQ_opt_com_65536_146
      0006A2 F0               [24] 2435 	movx	@dptr,a
                                   2436 ;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      0006A3 E5 A0            [12] 2437 	mov	a,_P2
      0006A5 20 E5 04         [24] 2438 	jb	acc.5,00102$
                                   2439 ;	main.c:671: return USE_IRQX;
      0006A8 75 82 01         [24] 2440 	mov	dpl,#0x01
      0006AB 22               [24] 2441 	ret
      0006AC                       2442 00102$:
                                   2443 ;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      0006AC 90 07 C0         [24] 2444 	mov	dptr,#_checkIRQ_opt_com_65536_146
      0006AF E0               [24] 2445 	movx	a,@dptr
      0006B0 FF               [12] 2446 	mov	r7,a
      0006B1 E0               [24] 2447 	movx	a,@dptr
      0006B2 60 03            [24] 2448 	jz	00103$
      0006B4 BF 02 04         [24] 2449 	cjne	r7,#0x02,00104$
      0006B7                       2450 00103$:
                                   2451 ;	main.c:674: return USE_IRQ4;
      0006B7 75 82 02         [24] 2452 	mov	dpl,#0x02
      0006BA 22               [24] 2453 	ret
      0006BB                       2454 00104$:
                                   2455 ;	main.c:676: return USE_IRQ3;
      0006BB 75 82 00         [24] 2456 	mov	dpl,#0x00
                                   2457 ;	main.c:677: }
      0006BE 22               [24] 2458 	ret
                                   2459 ;------------------------------------------------------------
                                   2460 ;Allocation info for local variables in function 'do_process'
                                   2461 ;------------------------------------------------------------
                                   2462 ;sloc0                     Allocated with name '_do_process_sloc0_1_0'
                                   2463 ;sloc1                     Allocated with name '_do_process_sloc1_1_0'
                                   2464 ;__1310720013              Allocated with name '_do_process___1310720013_131072_151'
                                   2465 ;__1310720008              Allocated with name '_do_process___1310720008_131072_151'
                                   2466 ;__1310720003              Allocated with name '_do_process___1310720003_131072_151'
                                   2467 ;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_151'
                                   2468 ;m_bt                      Allocated with name '_do_process_m_bt_65536_151'
                                   2469 ;m_cx                      Allocated with name '_do_process_m_cx_65536_151'
                                   2470 ;m_cy                      Allocated with name '_do_process_m_cy_65536_151'
                                   2471 ;m_cz                      Allocated with name '_do_process_m_cz_65536_151'
                                   2472 ;buttons                   Allocated with name '_do_process_buttons_65536_151'
                                   2473 ;dx                        Allocated with name '_do_process_dx_65536_151'
                                   2474 ;dy                        Allocated with name '_do_process_dy_65536_151'
                                   2475 ;dw                        Allocated with name '_do_process_dw_65536_151'
                                   2476 ;__1310720004              Allocated with name '_do_process___1310720004_131072_160'
                                   2477 ;__1310720005              Allocated with name '_do_process___1310720005_131072_160'
                                   2478 ;__1310720006              Allocated with name '_do_process___1310720006_131072_160'
                                   2479 ;val                       Allocated with name '_do_process_val_196608_161'
                                   2480 ;min                       Allocated with name '_do_process_min_196608_161'
                                   2481 ;max                       Allocated with name '_do_process_max_196608_161'
                                   2482 ;__1310720009              Allocated with name '_do_process___1310720009_131072_163'
                                   2483 ;__1310720010              Allocated with name '_do_process___1310720010_131072_163'
                                   2484 ;__1310720011              Allocated with name '_do_process___1310720011_131072_163'
                                   2485 ;val                       Allocated with name '_do_process_val_196608_164'
                                   2486 ;min                       Allocated with name '_do_process_min_196608_164'
                                   2487 ;max                       Allocated with name '_do_process_max_196608_164'
                                   2488 ;__1310720014              Allocated with name '_do_process___1310720014_131072_166'
                                   2489 ;__1310720015              Allocated with name '_do_process___1310720015_131072_166'
                                   2490 ;__1310720016              Allocated with name '_do_process___1310720016_131072_166'
                                   2491 ;val                       Allocated with name '_do_process_val_196608_167'
                                   2492 ;min                       Allocated with name '_do_process_min_196608_167'
                                   2493 ;max                       Allocated with name '_do_process_max_196608_167'
                                   2494 ;_ea_state                 Allocated with name '_do_process__ea_state_262144_154'
                                   2495 ;__2621440019              Allocated with name '_do_process___2621440019_262144_157'
                                   2496 ;cx                        Allocated with name '_do_process_cx_196608_157'
                                   2497 ;__2621440020              Allocated with name '_do_process___2621440020_262144_175'
                                   2498 ;__2621440021              Allocated with name '_do_process___2621440021_262144_175'
                                   2499 ;__2621440022              Allocated with name '_do_process___2621440022_262144_175'
                                   2500 ;val                       Allocated with name '_do_process_val_327680_176'
                                   2501 ;min                       Allocated with name '_do_process_min_327680_176'
                                   2502 ;max                       Allocated with name '_do_process_max_327680_176'
                                   2503 ;__2621440024              Allocated with name '_do_process___2621440024_262144_158'
                                   2504 ;cy                        Allocated with name '_do_process_cy_196609_158'
                                   2505 ;__2621450025              Allocated with name '_do_process___2621450025_262145_178'
                                   2506 ;__2621450026              Allocated with name '_do_process___2621450026_262145_178'
                                   2507 ;__2621450027              Allocated with name '_do_process___2621450027_262145_178'
                                   2508 ;val                       Allocated with name '_do_process_val_327681_179'
                                   2509 ;min                       Allocated with name '_do_process_min_327681_179'
                                   2510 ;max                       Allocated with name '_do_process_max_327681_179'
                                   2511 ;__2621450029              Allocated with name '_do_process___2621450029_262145_159'
                                   2512 ;cz                        Allocated with name '_do_process_cz_196610_159'
                                   2513 ;__2621460030              Allocated with name '_do_process___2621460030_262146_181'
                                   2514 ;__2621460031              Allocated with name '_do_process___2621460031_262146_181'
                                   2515 ;__2621460032              Allocated with name '_do_process___2621460032_262146_181'
                                   2516 ;val                       Allocated with name '_do_process_val_327682_182'
                                   2517 ;min                       Allocated with name '_do_process_min_327682_182'
                                   2518 ;max                       Allocated with name '_do_process_max_327682_182'
                                   2519 ;__2621460034              Allocated with name '_do_process___2621460034_262146_184'
                                   2520 ;__2621460035              Allocated with name '_do_process___2621460035_262146_184'
                                   2521 ;__2621460036              Allocated with name '_do_process___2621460036_262146_184'
                                   2522 ;__2621460037              Allocated with name '_do_process___2621460037_262146_184'
                                   2523 ;x                         Allocated with name '_do_process_x_327682_185'
                                   2524 ;y                         Allocated with name '_do_process_y_327682_185'
                                   2525 ;z                         Allocated with name '_do_process_z_327682_185'
                                   2526 ;b                         Allocated with name '_do_process_b_327682_185'
                                   2527 ;left_b                    Allocated with name '_do_process_left_b_393218_186'
                                   2528 ;right_b                   Allocated with name '_do_process_right_b_393218_186'
                                   2529 ;middle_b                  Allocated with name '_do_process_middle_b_393218_186'
                                   2530 ;------------------------------------------------------------
                                   2531 ;	main.c:683: static inline void do_process(void)
                                   2532 ;	-----------------------------------------
                                   2533 ;	 function do_process
                                   2534 ;	-----------------------------------------
      0006BF                       2535 _do_process:
                                   2536 ;	main.c:696: checkRootHubConnections();
      0006BF 12 32 B8         [24] 2537 	lcall	_checkRootHubConnections
                                   2538 ;	main.c:699: pollHIDdevice(&buttons, &dx, &dy, &dw);
      0006C2 90 0B 57         [24] 2539 	mov	dptr,#_pollHIDdevice_PARM_2
      0006C5 74 D3            [12] 2540 	mov	a,#_do_process_dx_65536_151
      0006C7 F0               [24] 2541 	movx	@dptr,a
      0006C8 74 07            [12] 2542 	mov	a,#(_do_process_dx_65536_151 >> 8)
      0006CA A3               [24] 2543 	inc	dptr
      0006CB F0               [24] 2544 	movx	@dptr,a
      0006CC E4               [12] 2545 	clr	a
      0006CD A3               [24] 2546 	inc	dptr
      0006CE F0               [24] 2547 	movx	@dptr,a
      0006CF 90 0B 5A         [24] 2548 	mov	dptr,#_pollHIDdevice_PARM_3
      0006D2 74 D7            [12] 2549 	mov	a,#_do_process_dy_65536_151
      0006D4 F0               [24] 2550 	movx	@dptr,a
      0006D5 74 07            [12] 2551 	mov	a,#(_do_process_dy_65536_151 >> 8)
      0006D7 A3               [24] 2552 	inc	dptr
      0006D8 F0               [24] 2553 	movx	@dptr,a
      0006D9 E4               [12] 2554 	clr	a
      0006DA A3               [24] 2555 	inc	dptr
      0006DB F0               [24] 2556 	movx	@dptr,a
      0006DC 90 0B 5D         [24] 2557 	mov	dptr,#_pollHIDdevice_PARM_4
      0006DF 74 DB            [12] 2558 	mov	a,#_do_process_dw_65536_151
      0006E1 F0               [24] 2559 	movx	@dptr,a
      0006E2 74 07            [12] 2560 	mov	a,#(_do_process_dw_65536_151 >> 8)
      0006E4 A3               [24] 2561 	inc	dptr
      0006E5 F0               [24] 2562 	movx	@dptr,a
      0006E6 E4               [12] 2563 	clr	a
      0006E7 A3               [24] 2564 	inc	dptr
      0006E8 F0               [24] 2565 	movx	@dptr,a
      0006E9 90 07 CF         [24] 2566 	mov	dptr,#_do_process_buttons_65536_151
      0006EC 75 F0 00         [24] 2567 	mov	b,#0x00
      0006EF 12 22 98         [24] 2568 	lcall	_pollHIDdevice
                                   2569 ;	main.c:702: m_bt = (uint8_t)(buttons & 0x7);
      0006F2 90 07 CF         [24] 2570 	mov	dptr,#_do_process_buttons_65536_151
      0006F5 E0               [24] 2571 	movx	a,@dptr
      0006F6 FC               [12] 2572 	mov	r4,a
      0006F7 A3               [24] 2573 	inc	dptr
      0006F8 E0               [24] 2574 	movx	a,@dptr
      0006F9 A3               [24] 2575 	inc	dptr
      0006FA E0               [24] 2576 	movx	a,@dptr
      0006FB A3               [24] 2577 	inc	dptr
      0006FC E0               [24] 2578 	movx	a,@dptr
      0006FD 90 07 C8         [24] 2579 	mov	dptr,#_do_process_m_bt_65536_151
      000700 74 07            [12] 2580 	mov	a,#0x07
      000702 5C               [12] 2581 	anl	a,r4
      000703 F0               [24] 2582 	movx	@dptr,a
                                   2583 ;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
      000704 90 07 C9         [24] 2584 	mov	dptr,#_do_process_m_cx_65536_151
      000707 E0               [24] 2585 	movx	a,@dptr
      000708 FE               [12] 2586 	mov	r6,a
      000709 A3               [24] 2587 	inc	dptr
      00070A E0               [24] 2588 	movx	a,@dptr
      00070B FF               [12] 2589 	mov	r7,a
      00070C 90 07 D3         [24] 2590 	mov	dptr,#_do_process_dx_65536_151
      00070F E0               [24] 2591 	movx	a,@dptr
      000710 FC               [12] 2592 	mov	r4,a
      000711 A3               [24] 2593 	inc	dptr
      000712 E0               [24] 2594 	movx	a,@dptr
      000713 FD               [12] 2595 	mov	r5,a
      000714 A3               [24] 2596 	inc	dptr
      000715 E0               [24] 2597 	movx	a,@dptr
      000716 FA               [12] 2598 	mov	r2,a
      000717 A3               [24] 2599 	inc	dptr
      000718 E0               [24] 2600 	movx	a,@dptr
      000719 FB               [12] 2601 	mov	r3,a
      00071A 8E 00            [24] 2602 	mov	ar0,r6
      00071C EF               [12] 2603 	mov	a,r7
      00071D F9               [12] 2604 	mov	r1,a
      00071E 33               [12] 2605 	rlc	a
      00071F 95 E0            [12] 2606 	subb	a,acc
      000721 FE               [12] 2607 	mov	r6,a
      000722 FF               [12] 2608 	mov	r7,a
      000723 E8               [12] 2609 	mov	a,r0
      000724 2C               [12] 2610 	add	a,r4
      000725 FC               [12] 2611 	mov	r4,a
      000726 E9               [12] 2612 	mov	a,r1
      000727 3D               [12] 2613 	addc	a,r5
      000728 FD               [12] 2614 	mov	r5,a
      000729 EE               [12] 2615 	mov	a,r6
      00072A 3A               [12] 2616 	addc	a,r2
      00072B FE               [12] 2617 	mov	r6,a
      00072C EF               [12] 2618 	mov	a,r7
      00072D 3B               [12] 2619 	addc	a,r3
      00072E FF               [12] 2620 	mov	r7,a
                                   2621 ;	main.c:358: if (val < (int32_t)min) return min;
      00072F C3               [12] 2622 	clr	c
      000730 EC               [12] 2623 	mov	a,r4
      000731 94 68            [12] 2624 	subb	a,#0x68
      000733 ED               [12] 2625 	mov	a,r5
      000734 94 C5            [12] 2626 	subb	a,#0xc5
      000736 EE               [12] 2627 	mov	a,r6
      000737 94 FF            [12] 2628 	subb	a,#0xff
      000739 EF               [12] 2629 	mov	a,r7
      00073A 64 80            [12] 2630 	xrl	a,#0x80
      00073C 94 7F            [12] 2631 	subb	a,#0x7f
      00073E 50 0C            [24] 2632 	jnc	00121$
      000740 90 07 C5         [24] 2633 	mov	dptr,#_do_process___1310720003_131072_151
      000743 74 68            [12] 2634 	mov	a,#0x68
      000745 F0               [24] 2635 	movx	@dptr,a
      000746 74 C5            [12] 2636 	mov	a,#0xc5
      000748 A3               [24] 2637 	inc	dptr
      000749 F0               [24] 2638 	movx	@dptr,a
      00074A 80 28            [24] 2639 	sjmp	00124$
      00074C                       2640 00121$:
                                   2641 ;	main.c:359: if (val > (int32_t)max) return max;
      00074C C3               [12] 2642 	clr	c
      00074D 74 98            [12] 2643 	mov	a,#0x98
      00074F 9C               [12] 2644 	subb	a,r4
      000750 74 3A            [12] 2645 	mov	a,#0x3a
      000752 9D               [12] 2646 	subb	a,r5
      000753 E4               [12] 2647 	clr	a
      000754 9E               [12] 2648 	subb	a,r6
      000755 74 80            [12] 2649 	mov	a,#(0x00 ^ 0x80)
      000757 8F F0            [24] 2650 	mov	b,r7
      000759 63 F0 80         [24] 2651 	xrl	b,#0x80
      00075C 95 F0            [12] 2652 	subb	a,b
      00075E 50 0C            [24] 2653 	jnc	00123$
      000760 90 07 C5         [24] 2654 	mov	dptr,#_do_process___1310720003_131072_151
      000763 74 98            [12] 2655 	mov	a,#0x98
      000765 F0               [24] 2656 	movx	@dptr,a
      000766 74 3A            [12] 2657 	mov	a,#0x3a
      000768 A3               [24] 2658 	inc	dptr
      000769 F0               [24] 2659 	movx	@dptr,a
      00076A 80 08            [24] 2660 	sjmp	00124$
      00076C                       2661 00123$:
                                   2662 ;	main.c:360: return (int16_t)val;
      00076C 90 07 C5         [24] 2663 	mov	dptr,#_do_process___1310720003_131072_151
      00076F EC               [12] 2664 	mov	a,r4
      000770 F0               [24] 2665 	movx	@dptr,a
      000771 ED               [12] 2666 	mov	a,r5
      000772 A3               [24] 2667 	inc	dptr
      000773 F0               [24] 2668 	movx	@dptr,a
                                   2669 ;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
      000774                       2670 00124$:
      000774 90 07 C5         [24] 2671 	mov	dptr,#_do_process___1310720003_131072_151
      000777 E0               [24] 2672 	movx	a,@dptr
      000778 FE               [12] 2673 	mov	r6,a
      000779 A3               [24] 2674 	inc	dptr
      00077A E0               [24] 2675 	movx	a,@dptr
      00077B FF               [12] 2676 	mov	r7,a
      00077C 90 07 C9         [24] 2677 	mov	dptr,#_do_process_m_cx_65536_151
      00077F EE               [12] 2678 	mov	a,r6
      000780 F0               [24] 2679 	movx	@dptr,a
      000781 EF               [12] 2680 	mov	a,r7
      000782 A3               [24] 2681 	inc	dptr
      000783 F0               [24] 2682 	movx	@dptr,a
      000784 90 07 D3         [24] 2683 	mov	dptr,#_do_process_dx_65536_151
      000787 E4               [12] 2684 	clr	a
      000788 F0               [24] 2685 	movx	@dptr,a
      000789 A3               [24] 2686 	inc	dptr
      00078A F0               [24] 2687 	movx	@dptr,a
      00078B A3               [24] 2688 	inc	dptr
      00078C F0               [24] 2689 	movx	@dptr,a
      00078D A3               [24] 2690 	inc	dptr
      00078E F0               [24] 2691 	movx	@dptr,a
                                   2692 ;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
      00078F 90 07 CB         [24] 2693 	mov	dptr,#_do_process_m_cy_65536_151
      000792 E0               [24] 2694 	movx	a,@dptr
      000793 FE               [12] 2695 	mov	r6,a
      000794 A3               [24] 2696 	inc	dptr
      000795 E0               [24] 2697 	movx	a,@dptr
      000796 FF               [12] 2698 	mov	r7,a
      000797 90 07 D7         [24] 2699 	mov	dptr,#_do_process_dy_65536_151
      00079A E0               [24] 2700 	movx	a,@dptr
      00079B FC               [12] 2701 	mov	r4,a
      00079C A3               [24] 2702 	inc	dptr
      00079D E0               [24] 2703 	movx	a,@dptr
      00079E FD               [12] 2704 	mov	r5,a
      00079F A3               [24] 2705 	inc	dptr
      0007A0 E0               [24] 2706 	movx	a,@dptr
      0007A1 FA               [12] 2707 	mov	r2,a
      0007A2 A3               [24] 2708 	inc	dptr
      0007A3 E0               [24] 2709 	movx	a,@dptr
      0007A4 FB               [12] 2710 	mov	r3,a
      0007A5 8E 00            [24] 2711 	mov	ar0,r6
      0007A7 EF               [12] 2712 	mov	a,r7
      0007A8 F9               [12] 2713 	mov	r1,a
      0007A9 33               [12] 2714 	rlc	a
      0007AA 95 E0            [12] 2715 	subb	a,acc
      0007AC FE               [12] 2716 	mov	r6,a
      0007AD FF               [12] 2717 	mov	r7,a
      0007AE E8               [12] 2718 	mov	a,r0
      0007AF 2C               [12] 2719 	add	a,r4
      0007B0 FC               [12] 2720 	mov	r4,a
      0007B1 E9               [12] 2721 	mov	a,r1
      0007B2 3D               [12] 2722 	addc	a,r5
      0007B3 FD               [12] 2723 	mov	r5,a
      0007B4 EE               [12] 2724 	mov	a,r6
      0007B5 3A               [12] 2725 	addc	a,r2
      0007B6 FE               [12] 2726 	mov	r6,a
      0007B7 EF               [12] 2727 	mov	a,r7
      0007B8 3B               [12] 2728 	addc	a,r3
      0007B9 FF               [12] 2729 	mov	r7,a
                                   2730 ;	main.c:358: if (val < (int32_t)min) return min;
      0007BA C3               [12] 2731 	clr	c
      0007BB EC               [12] 2732 	mov	a,r4
      0007BC 94 68            [12] 2733 	subb	a,#0x68
      0007BE ED               [12] 2734 	mov	a,r5
      0007BF 94 C5            [12] 2735 	subb	a,#0xc5
      0007C1 EE               [12] 2736 	mov	a,r6
      0007C2 94 FF            [12] 2737 	subb	a,#0xff
      0007C4 EF               [12] 2738 	mov	a,r7
      0007C5 64 80            [12] 2739 	xrl	a,#0x80
      0007C7 94 7F            [12] 2740 	subb	a,#0x7f
      0007C9 50 0C            [24] 2741 	jnc	00126$
      0007CB 90 07 C3         [24] 2742 	mov	dptr,#_do_process___1310720008_131072_151
      0007CE 74 68            [12] 2743 	mov	a,#0x68
      0007D0 F0               [24] 2744 	movx	@dptr,a
      0007D1 74 C5            [12] 2745 	mov	a,#0xc5
      0007D3 A3               [24] 2746 	inc	dptr
      0007D4 F0               [24] 2747 	movx	@dptr,a
      0007D5 80 28            [24] 2748 	sjmp	00129$
      0007D7                       2749 00126$:
                                   2750 ;	main.c:359: if (val > (int32_t)max) return max;
      0007D7 C3               [12] 2751 	clr	c
      0007D8 74 98            [12] 2752 	mov	a,#0x98
      0007DA 9C               [12] 2753 	subb	a,r4
      0007DB 74 3A            [12] 2754 	mov	a,#0x3a
      0007DD 9D               [12] 2755 	subb	a,r5
      0007DE E4               [12] 2756 	clr	a
      0007DF 9E               [12] 2757 	subb	a,r6
      0007E0 74 80            [12] 2758 	mov	a,#(0x00 ^ 0x80)
      0007E2 8F F0            [24] 2759 	mov	b,r7
      0007E4 63 F0 80         [24] 2760 	xrl	b,#0x80
      0007E7 95 F0            [12] 2761 	subb	a,b
      0007E9 50 0C            [24] 2762 	jnc	00128$
      0007EB 90 07 C3         [24] 2763 	mov	dptr,#_do_process___1310720008_131072_151
      0007EE 74 98            [12] 2764 	mov	a,#0x98
      0007F0 F0               [24] 2765 	movx	@dptr,a
      0007F1 74 3A            [12] 2766 	mov	a,#0x3a
      0007F3 A3               [24] 2767 	inc	dptr
      0007F4 F0               [24] 2768 	movx	@dptr,a
      0007F5 80 08            [24] 2769 	sjmp	00129$
      0007F7                       2770 00128$:
                                   2771 ;	main.c:360: return (int16_t)val;
      0007F7 90 07 C3         [24] 2772 	mov	dptr,#_do_process___1310720008_131072_151
      0007FA EC               [12] 2773 	mov	a,r4
      0007FB F0               [24] 2774 	movx	@dptr,a
      0007FC ED               [12] 2775 	mov	a,r5
      0007FD A3               [24] 2776 	inc	dptr
      0007FE F0               [24] 2777 	movx	@dptr,a
                                   2778 ;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
      0007FF                       2779 00129$:
      0007FF 90 07 C3         [24] 2780 	mov	dptr,#_do_process___1310720008_131072_151
      000802 E0               [24] 2781 	movx	a,@dptr
      000803 FE               [12] 2782 	mov	r6,a
      000804 A3               [24] 2783 	inc	dptr
      000805 E0               [24] 2784 	movx	a,@dptr
      000806 FF               [12] 2785 	mov	r7,a
      000807 90 07 CB         [24] 2786 	mov	dptr,#_do_process_m_cy_65536_151
      00080A EE               [12] 2787 	mov	a,r6
      00080B F0               [24] 2788 	movx	@dptr,a
      00080C EF               [12] 2789 	mov	a,r7
      00080D A3               [24] 2790 	inc	dptr
      00080E F0               [24] 2791 	movx	@dptr,a
      00080F 90 07 D7         [24] 2792 	mov	dptr,#_do_process_dy_65536_151
      000812 E4               [12] 2793 	clr	a
      000813 F0               [24] 2794 	movx	@dptr,a
      000814 A3               [24] 2795 	inc	dptr
      000815 F0               [24] 2796 	movx	@dptr,a
      000816 A3               [24] 2797 	inc	dptr
      000817 F0               [24] 2798 	movx	@dptr,a
      000818 A3               [24] 2799 	inc	dptr
      000819 F0               [24] 2800 	movx	@dptr,a
                                   2801 ;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
      00081A 90 07 CD         [24] 2802 	mov	dptr,#_do_process_m_cz_65536_151
      00081D E0               [24] 2803 	movx	a,@dptr
      00081E FE               [12] 2804 	mov	r6,a
      00081F A3               [24] 2805 	inc	dptr
      000820 E0               [24] 2806 	movx	a,@dptr
      000821 FF               [12] 2807 	mov	r7,a
      000822 90 07 DB         [24] 2808 	mov	dptr,#_do_process_dw_65536_151
      000825 E0               [24] 2809 	movx	a,@dptr
      000826 FC               [12] 2810 	mov	r4,a
      000827 A3               [24] 2811 	inc	dptr
      000828 E0               [24] 2812 	movx	a,@dptr
      000829 FD               [12] 2813 	mov	r5,a
      00082A A3               [24] 2814 	inc	dptr
      00082B E0               [24] 2815 	movx	a,@dptr
      00082C FA               [12] 2816 	mov	r2,a
      00082D A3               [24] 2817 	inc	dptr
      00082E E0               [24] 2818 	movx	a,@dptr
      00082F FB               [12] 2819 	mov	r3,a
      000830 8E 00            [24] 2820 	mov	ar0,r6
      000832 EF               [12] 2821 	mov	a,r7
      000833 F9               [12] 2822 	mov	r1,a
      000834 33               [12] 2823 	rlc	a
      000835 95 E0            [12] 2824 	subb	a,acc
      000837 FE               [12] 2825 	mov	r6,a
      000838 FF               [12] 2826 	mov	r7,a
      000839 E8               [12] 2827 	mov	a,r0
      00083A 2C               [12] 2828 	add	a,r4
      00083B FC               [12] 2829 	mov	r4,a
      00083C E9               [12] 2830 	mov	a,r1
      00083D 3D               [12] 2831 	addc	a,r5
      00083E FD               [12] 2832 	mov	r5,a
      00083F EE               [12] 2833 	mov	a,r6
      000840 3A               [12] 2834 	addc	a,r2
      000841 FE               [12] 2835 	mov	r6,a
      000842 EF               [12] 2836 	mov	a,r7
      000843 3B               [12] 2837 	addc	a,r3
      000844 FF               [12] 2838 	mov	r7,a
                                   2839 ;	main.c:358: if (val < (int32_t)min) return min;
      000845 C3               [12] 2840 	clr	c
      000846 EC               [12] 2841 	mov	a,r4
      000847 94 81            [12] 2842 	subb	a,#0x81
      000849 ED               [12] 2843 	mov	a,r5
      00084A 94 FF            [12] 2844 	subb	a,#0xff
      00084C EE               [12] 2845 	mov	a,r6
      00084D 94 FF            [12] 2846 	subb	a,#0xff
      00084F EF               [12] 2847 	mov	a,r7
      000850 64 80            [12] 2848 	xrl	a,#0x80
      000852 94 7F            [12] 2849 	subb	a,#0x7f
      000854 50 0C            [24] 2850 	jnc	00131$
      000856 90 07 C1         [24] 2851 	mov	dptr,#_do_process___1310720013_131072_151
      000859 74 81            [12] 2852 	mov	a,#0x81
      00085B F0               [24] 2853 	movx	@dptr,a
      00085C 74 FF            [12] 2854 	mov	a,#0xff
      00085E A3               [24] 2855 	inc	dptr
      00085F F0               [24] 2856 	movx	@dptr,a
      000860 80 26            [24] 2857 	sjmp	00134$
      000862                       2858 00131$:
                                   2859 ;	main.c:359: if (val > (int32_t)max) return max;
      000862 C3               [12] 2860 	clr	c
      000863 74 80            [12] 2861 	mov	a,#0x80
      000865 9C               [12] 2862 	subb	a,r4
      000866 E4               [12] 2863 	clr	a
      000867 9D               [12] 2864 	subb	a,r5
      000868 E4               [12] 2865 	clr	a
      000869 9E               [12] 2866 	subb	a,r6
      00086A 74 80            [12] 2867 	mov	a,#(0x00 ^ 0x80)
      00086C 8F F0            [24] 2868 	mov	b,r7
      00086E 63 F0 80         [24] 2869 	xrl	b,#0x80
      000871 95 F0            [12] 2870 	subb	a,b
      000873 50 0B            [24] 2871 	jnc	00133$
      000875 90 07 C1         [24] 2872 	mov	dptr,#_do_process___1310720013_131072_151
      000878 74 80            [12] 2873 	mov	a,#0x80
      00087A F0               [24] 2874 	movx	@dptr,a
      00087B E4               [12] 2875 	clr	a
      00087C A3               [24] 2876 	inc	dptr
      00087D F0               [24] 2877 	movx	@dptr,a
      00087E 80 08            [24] 2878 	sjmp	00134$
      000880                       2879 00133$:
                                   2880 ;	main.c:360: return (int16_t)val;
      000880 90 07 C1         [24] 2881 	mov	dptr,#_do_process___1310720013_131072_151
      000883 EC               [12] 2882 	mov	a,r4
      000884 F0               [24] 2883 	movx	@dptr,a
      000885 ED               [12] 2884 	mov	a,r5
      000886 A3               [24] 2885 	inc	dptr
      000887 F0               [24] 2886 	movx	@dptr,a
                                   2887 ;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
      000888                       2888 00134$:
      000888 90 07 C1         [24] 2889 	mov	dptr,#_do_process___1310720013_131072_151
      00088B E0               [24] 2890 	movx	a,@dptr
      00088C FE               [12] 2891 	mov	r6,a
      00088D A3               [24] 2892 	inc	dptr
      00088E E0               [24] 2893 	movx	a,@dptr
      00088F FF               [12] 2894 	mov	r7,a
      000890 90 07 CD         [24] 2895 	mov	dptr,#_do_process_m_cz_65536_151
      000893 EE               [12] 2896 	mov	a,r6
      000894 F0               [24] 2897 	movx	@dptr,a
      000895 EF               [12] 2898 	mov	a,r7
      000896 A3               [24] 2899 	inc	dptr
      000897 F0               [24] 2900 	movx	@dptr,a
      000898 90 07 DB         [24] 2901 	mov	dptr,#_do_process_dw_65536_151
      00089B E4               [12] 2902 	clr	a
      00089C F0               [24] 2903 	movx	@dptr,a
      00089D A3               [24] 2904 	inc	dptr
      00089E F0               [24] 2905 	movx	@dptr,a
      00089F A3               [24] 2906 	inc	dptr
      0008A0 F0               [24] 2907 	movx	@dptr,a
      0008A1 A3               [24] 2908 	inc	dptr
      0008A2 F0               [24] 2909 	movx	@dptr,a
                                   2910 ;	main.c:708: if (allow_send_data && mouse_enabled) {
      0008A3 90 07 9F         [24] 2911 	mov	dptr,#_allow_send_data
      0008A6 E0               [24] 2912 	movx	a,@dptr
      0008A7 70 01            [24] 2913 	jnz	00251$
      0008A9 22               [24] 2914 	ret
      0008AA                       2915 00251$:
      0008AA 90 07 9D         [24] 2916 	mov	dptr,#_mouse_enabled
      0008AD E0               [24] 2917 	movx	a,@dptr
      0008AE 70 01            [24] 2918 	jnz	00252$
      0008B0 22               [24] 2919 	ret
      0008B1                       2920 00252$:
                                   2921 ;	main.c:709: allow_send_data = false;
      0008B1 90 07 9F         [24] 2922 	mov	dptr,#_allow_send_data
      0008B4 E4               [12] 2923 	clr	a
      0008B5 F0               [24] 2924 	movx	@dptr,a
                                   2925 ;	main.c:712: if (mouse_start) {
      0008B6 90 07 9C         [24] 2926 	mov	dptr,#_mouse_start
      0008B9 E0               [24] 2927 	movx	a,@dptr
      0008BA 70 03            [24] 2928 	jnz	00253$
      0008BC 02 09 4C         [24] 2929 	ljmp	00111$
      0008BF                       2930 00253$:
                                   2931 ;	main.c:713: mouse_start = false;
      0008BF 90 07 9C         [24] 2932 	mov	dptr,#_mouse_start
      0008C2 E4               [12] 2933 	clr	a
      0008C3 F0               [24] 2934 	movx	@dptr,a
                                   2935 ;	main.c:716: CRITICAL_SECTION (
      0008C4 A2 AF            [12] 2936 	mov	c,_EA
      0008C6 E4               [12] 2937 	clr	a
      0008C7 33               [12] 2938 	rlc	a
      0008C8 FF               [12] 2939 	mov	r7,a
                                   2940 ;	assignBit
      0008C9 C2 AF            [12] 2941 	clr	_EA
      0008CB 90 07 C9         [24] 2942 	mov	dptr,#_do_process_m_cx_65536_151
      0008CE E4               [12] 2943 	clr	a
      0008CF F0               [24] 2944 	movx	@dptr,a
      0008D0 A3               [24] 2945 	inc	dptr
      0008D1 F0               [24] 2946 	movx	@dptr,a
      0008D2 90 07 CB         [24] 2947 	mov	dptr,#_do_process_m_cy_65536_151
      0008D5 F0               [24] 2948 	movx	@dptr,a
      0008D6 A3               [24] 2949 	inc	dptr
      0008D7 F0               [24] 2950 	movx	@dptr,a
      0008D8 90 07 CD         [24] 2951 	mov	dptr,#_do_process_m_cz_65536_151
      0008DB F0               [24] 2952 	movx	@dptr,a
      0008DC A3               [24] 2953 	inc	dptr
      0008DD F0               [24] 2954 	movx	@dptr,a
      0008DE 90 07 C8         [24] 2955 	mov	dptr,#_do_process_m_bt_65536_151
      0008E1 F0               [24] 2956 	movx	@dptr,a
      0008E2 90 07 04         [24] 2957 	mov	dptr,#_spi_tx_buf_w
      0008E5 E0               [24] 2958 	movx	a,@dptr
      0008E6 90 07 05         [24] 2959 	mov	dptr,#_spi_tx_buf_r
      0008E9 F0               [24] 2960 	movx	@dptr,a
      0008EA 90 07 06         [24] 2961 	mov	dptr,#_spi_tx_buf_count
      0008ED E4               [12] 2962 	clr	a
      0008EE F0               [24] 2963 	movx	@dptr,a
                                   2964 ;	assignBit
      0008EF C2 CA            [12] 2965 	clr	_TR2
      0008F1 43 C0 80         [24] 2966 	orl	_P4_OUT,#0x80
      0008F4 53 C0 7F         [24] 2967 	anl	_P4_OUT,#0x7f
                                   2968 ;	assignBit
      0008F7 EF               [12] 2969 	mov	a,r7
      0008F8 24 FF            [12] 2970 	add	a,#0xff
      0008FA 92 AF            [24] 2971 	mov	_EA,c
                                   2972 ;	main.c:613: delay(20);
      0008FC 90 00 14         [24] 2973 	mov	dptr,#0x0014
      0008FF 12 16 3C         [24] 2974 	lcall	_delay
                                   2975 ;	main.c:616: if (!mouse_enabled) {
      000902 90 07 9D         [24] 2976 	mov	dptr,#_mouse_enabled
      000905 E0               [24] 2977 	movx	a,@dptr
      000906 60 44            [24] 2978 	jz	00111$
                                   2979 ;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
      000908 75 82 4D         [24] 2980 	mov	dpl,#0x4d
      00090B 12 04 8F         [24] 2981 	lcall	_spi_send
                                   2982 ;	main.c:622: if (m_wheel) {
      00090E 90 06 04         [24] 2983 	mov	dptr,#_m_wheel
      000911 E0               [24] 2984 	movx	a,@dptr
      000912 60 20            [24] 2985 	jz	00138$
                                   2986 ;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      000914 75 82 5A         [24] 2987 	mov	dpl,#0x5a
      000917 12 04 8F         [24] 2988 	lcall	_spi_send
                                   2989 ;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
      00091A 75 82 40         [24] 2990 	mov	dpl,#0x40
      00091D 12 04 8F         [24] 2991 	lcall	_spi_send
                                   2992 ;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
      000920 75 82 00         [24] 2993 	mov	dpl,#0x00
      000923 12 04 8F         [24] 2994 	lcall	_spi_send
                                   2995 ;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
      000926 75 82 00         [24] 2996 	mov	dpl,#0x00
      000929 12 04 8F         [24] 2997 	lcall	_spi_send
                                   2998 ;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
      00092C 75 82 00         [24] 2999 	mov	dpl,#0x00
      00092F 12 04 8F         [24] 3000 	lcall	_spi_send
      000932 80 18            [24] 3001 	sjmp	00111$
      000934                       3002 00138$:
                                   3003 ;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      000934 75 82 33         [24] 3004 	mov	dpl,#0x33
      000937 12 04 8F         [24] 3005 	lcall	_spi_send
                                   3006 ;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
      00093A 75 82 40         [24] 3007 	mov	dpl,#0x40
      00093D 12 04 8F         [24] 3008 	lcall	_spi_send
                                   3009 ;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
      000940 75 82 00         [24] 3010 	mov	dpl,#0x00
      000943 12 04 8F         [24] 3011 	lcall	_spi_send
                                   3012 ;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
      000946 75 82 00         [24] 3013 	mov	dpl,#0x00
      000949 12 04 8F         [24] 3014 	lcall	_spi_send
                                   3015 ;	main.c:726: send_mouse_id();
      00094C                       3016 00111$:
                                   3017 ;	main.c:730: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
      00094C 90 07 C8         [24] 3018 	mov	dptr,#_do_process_m_bt_65536_151
      00094F E0               [24] 3019 	movx	a,@dptr
      000950 FF               [12] 3020 	mov	r7,a
      000951 90 07 C7         [24] 3021 	mov	dptr,#_do_process_st_m_bt_65536_151
      000954 E0               [24] 3022 	movx	a,@dptr
      000955 FE               [12] 3023 	mov	r6,a
      000956 EF               [12] 3024 	mov	a,r7
      000957 B5 06 25         [24] 3025 	cjne	a,ar6,00112$
      00095A 90 07 C9         [24] 3026 	mov	dptr,#_do_process_m_cx_65536_151
      00095D E0               [24] 3027 	movx	a,@dptr
      00095E F5 F0            [12] 3028 	mov	b,a
      000960 A3               [24] 3029 	inc	dptr
      000961 E0               [24] 3030 	movx	a,@dptr
      000962 45 F0            [12] 3031 	orl	a,b
      000964 70 19            [24] 3032 	jnz	00112$
      000966 90 07 CB         [24] 3033 	mov	dptr,#_do_process_m_cy_65536_151
      000969 E0               [24] 3034 	movx	a,@dptr
      00096A F5 F0            [12] 3035 	mov	b,a
      00096C A3               [24] 3036 	inc	dptr
      00096D E0               [24] 3037 	movx	a,@dptr
      00096E 45 F0            [12] 3038 	orl	a,b
      000970 70 0D            [24] 3039 	jnz	00112$
      000972 90 07 CD         [24] 3040 	mov	dptr,#_do_process_m_cz_65536_151
      000975 E0               [24] 3041 	movx	a,@dptr
      000976 F5 F0            [12] 3042 	mov	b,a
      000978 A3               [24] 3043 	inc	dptr
      000979 E0               [24] 3044 	movx	a,@dptr
      00097A 45 F0            [12] 3045 	orl	a,b
      00097C 70 01            [24] 3046 	jnz	00260$
      00097E 22               [24] 3047 	ret
      00097F                       3048 00260$:
      00097F                       3049 00112$:
                                   3050 ;	main.c:731: int8_t cx = clamp8(m_cx, -128, 127);
      00097F 90 07 C9         [24] 3051 	mov	dptr,#_do_process_m_cx_65536_151
      000982 E0               [24] 3052 	movx	a,@dptr
      000983 FE               [12] 3053 	mov	r6,a
      000984 A3               [24] 3054 	inc	dptr
      000985 E0               [24] 3055 	movx	a,@dptr
      000986 FF               [12] 3056 	mov	r7,a
      000987 C3               [12] 3057 	clr	c
      000988 EE               [12] 3058 	mov	a,r6
      000989 94 80            [12] 3059 	subb	a,#0x80
      00098B EF               [12] 3060 	mov	a,r7
      00098C 64 80            [12] 3061 	xrl	a,#0x80
      00098E 94 7F            [12] 3062 	subb	a,#0x7f
      000990 50 08            [24] 3063 	jnc	00142$
      000992 90 07 EB         [24] 3064 	mov	dptr,#_do_process___2621440019_262144_157
      000995 74 80            [12] 3065 	mov	a,#0x80
      000997 F0               [24] 3066 	movx	@dptr,a
      000998 80 1C            [24] 3067 	sjmp	00145$
      00099A                       3068 00142$:
      00099A C3               [12] 3069 	clr	c
      00099B 74 7F            [12] 3070 	mov	a,#0x7f
      00099D 9E               [12] 3071 	subb	a,r6
      00099E 74 80            [12] 3072 	mov	a,#(0x00 ^ 0x80)
      0009A0 8F F0            [24] 3073 	mov	b,r7
      0009A2 63 F0 80         [24] 3074 	xrl	b,#0x80
      0009A5 95 F0            [12] 3075 	subb	a,b
      0009A7 50 08            [24] 3076 	jnc	00144$
      0009A9 90 07 EB         [24] 3077 	mov	dptr,#_do_process___2621440019_262144_157
      0009AC 74 7F            [12] 3078 	mov	a,#0x7f
      0009AE F0               [24] 3079 	movx	@dptr,a
      0009AF 80 05            [24] 3080 	sjmp	00145$
      0009B1                       3081 00144$:
      0009B1 90 07 EB         [24] 3082 	mov	dptr,#_do_process___2621440019_262144_157
      0009B4 EE               [12] 3083 	mov	a,r6
      0009B5 F0               [24] 3084 	movx	@dptr,a
      0009B6                       3085 00145$:
      0009B6 90 07 EB         [24] 3086 	mov	dptr,#_do_process___2621440019_262144_157
      0009B9 E0               [24] 3087 	movx	a,@dptr
                                   3088 ;	main.c:732: m_cx -= cx;
      0009BA FF               [12] 3089 	mov	r7,a
      0009BB FD               [12] 3090 	mov	r5,a
      0009BC 33               [12] 3091 	rlc	a
      0009BD 95 E0            [12] 3092 	subb	a,acc
      0009BF FE               [12] 3093 	mov	r6,a
      0009C0 90 07 C9         [24] 3094 	mov	dptr,#_do_process_m_cx_65536_151
      0009C3 E0               [24] 3095 	movx	a,@dptr
      0009C4 FB               [12] 3096 	mov	r3,a
      0009C5 A3               [24] 3097 	inc	dptr
      0009C6 E0               [24] 3098 	movx	a,@dptr
      0009C7 FC               [12] 3099 	mov	r4,a
      0009C8 EB               [12] 3100 	mov	a,r3
      0009C9 C3               [12] 3101 	clr	c
      0009CA 9D               [12] 3102 	subb	a,r5
      0009CB FB               [12] 3103 	mov	r3,a
      0009CC EC               [12] 3104 	mov	a,r4
      0009CD 9E               [12] 3105 	subb	a,r6
      0009CE FC               [12] 3106 	mov	r4,a
      0009CF 90 07 C9         [24] 3107 	mov	dptr,#_do_process_m_cx_65536_151
      0009D2 EB               [12] 3108 	mov	a,r3
      0009D3 F0               [24] 3109 	movx	@dptr,a
      0009D4 EC               [12] 3110 	mov	a,r4
      0009D5 A3               [24] 3111 	inc	dptr
      0009D6 F0               [24] 3112 	movx	@dptr,a
                                   3113 ;	main.c:733: int8_t cy = clamp8(m_cy, -128, 127);
      0009D7 90 07 CB         [24] 3114 	mov	dptr,#_do_process_m_cy_65536_151
      0009DA E0               [24] 3115 	movx	a,@dptr
      0009DB FB               [12] 3116 	mov	r3,a
      0009DC A3               [24] 3117 	inc	dptr
      0009DD E0               [24] 3118 	movx	a,@dptr
      0009DE FC               [12] 3119 	mov	r4,a
      0009DF C3               [12] 3120 	clr	c
      0009E0 EB               [12] 3121 	mov	a,r3
      0009E1 94 80            [12] 3122 	subb	a,#0x80
      0009E3 EC               [12] 3123 	mov	a,r4
      0009E4 64 80            [12] 3124 	xrl	a,#0x80
      0009E6 94 7F            [12] 3125 	subb	a,#0x7f
      0009E8 50 08            [24] 3126 	jnc	00147$
      0009EA 90 07 EE         [24] 3127 	mov	dptr,#_do_process___2621440024_262144_158
      0009ED 74 80            [12] 3128 	mov	a,#0x80
      0009EF F0               [24] 3129 	movx	@dptr,a
      0009F0 80 1C            [24] 3130 	sjmp	00150$
      0009F2                       3131 00147$:
      0009F2 C3               [12] 3132 	clr	c
      0009F3 74 7F            [12] 3133 	mov	a,#0x7f
      0009F5 9B               [12] 3134 	subb	a,r3
      0009F6 74 80            [12] 3135 	mov	a,#(0x00 ^ 0x80)
      0009F8 8C F0            [24] 3136 	mov	b,r4
      0009FA 63 F0 80         [24] 3137 	xrl	b,#0x80
      0009FD 95 F0            [12] 3138 	subb	a,b
      0009FF 50 08            [24] 3139 	jnc	00149$
      000A01 90 07 EE         [24] 3140 	mov	dptr,#_do_process___2621440024_262144_158
      000A04 74 7F            [12] 3141 	mov	a,#0x7f
      000A06 F0               [24] 3142 	movx	@dptr,a
      000A07 80 05            [24] 3143 	sjmp	00150$
      000A09                       3144 00149$:
      000A09 90 07 EE         [24] 3145 	mov	dptr,#_do_process___2621440024_262144_158
      000A0C EB               [12] 3146 	mov	a,r3
      000A0D F0               [24] 3147 	movx	@dptr,a
      000A0E                       3148 00150$:
      000A0E 90 07 EE         [24] 3149 	mov	dptr,#_do_process___2621440024_262144_158
      000A11 E0               [24] 3150 	movx	a,@dptr
                                   3151 ;	main.c:734: m_cy -= cy;
      000A12 FC               [12] 3152 	mov	r4,a
      000A13 FA               [12] 3153 	mov	r2,a
      000A14 33               [12] 3154 	rlc	a
      000A15 95 E0            [12] 3155 	subb	a,acc
      000A17 FB               [12] 3156 	mov	r3,a
      000A18 90 07 CB         [24] 3157 	mov	dptr,#_do_process_m_cy_65536_151
      000A1B E0               [24] 3158 	movx	a,@dptr
      000A1C F8               [12] 3159 	mov	r0,a
      000A1D A3               [24] 3160 	inc	dptr
      000A1E E0               [24] 3161 	movx	a,@dptr
      000A1F F9               [12] 3162 	mov	r1,a
      000A20 E8               [12] 3163 	mov	a,r0
      000A21 C3               [12] 3164 	clr	c
      000A22 9A               [12] 3165 	subb	a,r2
      000A23 F8               [12] 3166 	mov	r0,a
      000A24 E9               [12] 3167 	mov	a,r1
      000A25 9B               [12] 3168 	subb	a,r3
      000A26 F9               [12] 3169 	mov	r1,a
      000A27 90 07 CB         [24] 3170 	mov	dptr,#_do_process_m_cy_65536_151
      000A2A E8               [12] 3171 	mov	a,r0
      000A2B F0               [24] 3172 	movx	@dptr,a
      000A2C E9               [12] 3173 	mov	a,r1
      000A2D A3               [24] 3174 	inc	dptr
      000A2E F0               [24] 3175 	movx	@dptr,a
                                   3176 ;	main.c:735: int8_t cz = clamp8(m_cz, -8, 7);
      000A2F 90 07 CD         [24] 3177 	mov	dptr,#_do_process_m_cz_65536_151
      000A32 E0               [24] 3178 	movx	a,@dptr
      000A33 F8               [12] 3179 	mov	r0,a
      000A34 A3               [24] 3180 	inc	dptr
      000A35 E0               [24] 3181 	movx	a,@dptr
      000A36 F9               [12] 3182 	mov	r1,a
      000A37 C3               [12] 3183 	clr	c
      000A38 E8               [12] 3184 	mov	a,r0
      000A39 94 F8            [12] 3185 	subb	a,#0xf8
      000A3B E9               [12] 3186 	mov	a,r1
      000A3C 64 80            [12] 3187 	xrl	a,#0x80
      000A3E 94 7F            [12] 3188 	subb	a,#0x7f
      000A40 50 08            [24] 3189 	jnc	00152$
      000A42 90 07 F1         [24] 3190 	mov	dptr,#_do_process___2621450029_262145_159
      000A45 74 F8            [12] 3191 	mov	a,#0xf8
      000A47 F0               [24] 3192 	movx	@dptr,a
      000A48 80 1C            [24] 3193 	sjmp	00155$
      000A4A                       3194 00152$:
      000A4A C3               [12] 3195 	clr	c
      000A4B 74 07            [12] 3196 	mov	a,#0x07
      000A4D 98               [12] 3197 	subb	a,r0
      000A4E 74 80            [12] 3198 	mov	a,#(0x00 ^ 0x80)
      000A50 89 F0            [24] 3199 	mov	b,r1
      000A52 63 F0 80         [24] 3200 	xrl	b,#0x80
      000A55 95 F0            [12] 3201 	subb	a,b
      000A57 50 08            [24] 3202 	jnc	00154$
      000A59 90 07 F1         [24] 3203 	mov	dptr,#_do_process___2621450029_262145_159
      000A5C 74 07            [12] 3204 	mov	a,#0x07
      000A5E F0               [24] 3205 	movx	@dptr,a
      000A5F 80 05            [24] 3206 	sjmp	00155$
      000A61                       3207 00154$:
      000A61 90 07 F1         [24] 3208 	mov	dptr,#_do_process___2621450029_262145_159
      000A64 E8               [12] 3209 	mov	a,r0
      000A65 F0               [24] 3210 	movx	@dptr,a
      000A66                       3211 00155$:
      000A66 90 07 F1         [24] 3212 	mov	dptr,#_do_process___2621450029_262145_159
      000A69 E0               [24] 3213 	movx	a,@dptr
                                   3214 ;	main.c:736: m_cz -= cz;
      000A6A F5 08            [12] 3215 	mov	_do_process_sloc0_1_0,a
      000A6C 85 08 09         [24] 3216 	mov	_do_process_sloc1_1_0,_do_process_sloc0_1_0
      000A6F 33               [12] 3217 	rlc	a
      000A70 95 E0            [12] 3218 	subb	a,acc
      000A72 F5 0A            [12] 3219 	mov	(_do_process_sloc1_1_0 + 1),a
      000A74 90 07 CD         [24] 3220 	mov	dptr,#_do_process_m_cz_65536_151
      000A77 E0               [24] 3221 	movx	a,@dptr
      000A78 F8               [12] 3222 	mov	r0,a
      000A79 A3               [24] 3223 	inc	dptr
      000A7A E0               [24] 3224 	movx	a,@dptr
      000A7B F9               [12] 3225 	mov	r1,a
      000A7C E8               [12] 3226 	mov	a,r0
      000A7D C3               [12] 3227 	clr	c
      000A7E 95 09            [12] 3228 	subb	a,_do_process_sloc1_1_0
      000A80 F8               [12] 3229 	mov	r0,a
      000A81 E9               [12] 3230 	mov	a,r1
      000A82 95 0A            [12] 3231 	subb	a,(_do_process_sloc1_1_0 + 1)
      000A84 F9               [12] 3232 	mov	r1,a
      000A85 90 07 CD         [24] 3233 	mov	dptr,#_do_process_m_cz_65536_151
      000A88 E8               [12] 3234 	mov	a,r0
      000A89 F0               [24] 3235 	movx	@dptr,a
      000A8A E9               [12] 3236 	mov	a,r1
      000A8B A3               [24] 3237 	inc	dptr
      000A8C F0               [24] 3238 	movx	@dptr,a
                                   3239 ;	main.c:738: st_m_bt = m_bt;
      000A8D 90 07 C8         [24] 3240 	mov	dptr,#_do_process_m_bt_65536_151
      000A90 E0               [24] 3241 	movx	a,@dptr
      000A91 F9               [12] 3242 	mov	r1,a
      000A92 90 07 C7         [24] 3243 	mov	dptr,#_do_process_st_m_bt_65536_151
      000A95 F0               [24] 3244 	movx	@dptr,a
                                   3245 ;	main.c:592: left_b = b & 1;
      000A96 74 01            [12] 3246 	mov	a,#0x01
      000A98 59               [12] 3247 	anl	a,r1
      000A99 F5 09            [12] 3248 	mov	_do_process_sloc1_1_0,a
                                   3249 ;	main.c:593: right_b = (b >> 1) & 1;
      000A9B E9               [12] 3250 	mov	a,r1
      000A9C 03               [12] 3251 	rr	a
      000A9D 54 01            [12] 3252 	anl	a,#0x01
      000A9F F8               [12] 3253 	mov	r0,a
                                   3254 ;	main.c:594: middle_b = (b >> 2) & 1;
      000AA0 90 07 F5         [24] 3255 	mov	dptr,#_do_process_middle_b_393218_186
      000AA3 E9               [12] 3256 	mov	a,r1
      000AA4 03               [12] 3257 	rr	a
      000AA5 03               [12] 3258 	rr	a
      000AA6 54 01            [12] 3259 	anl	a,#0x01
      000AA8 F0               [24] 3260 	movx	@dptr,a
                                   3261 ;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
      000AA9 E5 09            [12] 3262 	mov	a,_do_process_sloc1_1_0
      000AAB C4               [12] 3263 	swap	a
      000AAC 23               [12] 3264 	rl	a
      000AAD 54 E0            [12] 3265 	anl	a,#0xe0
      000AAF F9               [12] 3266 	mov	r1,a
      000AB0 43 01 40         [24] 3267 	orl	ar1,#0x40
      000AB3 E8               [12] 3268 	mov	a,r0
      000AB4 C4               [12] 3269 	swap	a
      000AB5 54 F0            [12] 3270 	anl	a,#0xf0
      000AB7 42 01            [12] 3271 	orl	ar1,a
                                   3272 ;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
      000AB9 53 02 C0         [24] 3273 	anl	ar2,#0xc0
      000ABC E4               [12] 3274 	clr	a
      000ABD C4               [12] 3275 	swap	a
      000ABE CA               [12] 3276 	xch	a,r2
      000ABF C4               [12] 3277 	swap	a
      000AC0 54 0F            [12] 3278 	anl	a,#0x0f
      000AC2 6A               [12] 3279 	xrl	a,r2
      000AC3 CA               [12] 3280 	xch	a,r2
      000AC4 54 0F            [12] 3281 	anl	a,#0x0f
      000AC6 CA               [12] 3282 	xch	a,r2
      000AC7 6A               [12] 3283 	xrl	a,r2
      000AC8 CA               [12] 3284 	xch	a,r2
      000AC9 30 E3 02         [24] 3285 	jnb	acc.3,00267$
      000ACC 44 F0            [12] 3286 	orl	a,#0xf0
      000ACE                       3287 00267$:
      000ACE EA               [12] 3288 	mov	a,r2
      000ACF 42 01            [12] 3289 	orl	ar1,a
      000AD1 53 05 C0         [24] 3290 	anl	ar5,#0xc0
      000AD4 E4               [12] 3291 	clr	a
      000AD5 A2 E7            [12] 3292 	mov	c,acc.7
      000AD7 CD               [12] 3293 	xch	a,r5
      000AD8 33               [12] 3294 	rlc	a
      000AD9 CD               [12] 3295 	xch	a,r5
      000ADA 33               [12] 3296 	rlc	a
      000ADB A2 E7            [12] 3297 	mov	c,acc.7
      000ADD CD               [12] 3298 	xch	a,r5
      000ADE 33               [12] 3299 	rlc	a
      000ADF CD               [12] 3300 	xch	a,r5
      000AE0 33               [12] 3301 	rlc	a
      000AE1 CD               [12] 3302 	xch	a,r5
      000AE2 54 03            [12] 3303 	anl	a,#0x03
      000AE4 30 E1 02         [24] 3304 	jnb	acc.1,00268$
      000AE7 44 FC            [12] 3305 	orl	a,#0xfc
      000AE9                       3306 00268$:
      000AE9 ED               [12] 3307 	mov	a,r5
      000AEA 42 01            [12] 3308 	orl	ar1,a
      000AEC 89 82            [24] 3309 	mov	dpl,r1
      000AEE C0 07            [24] 3310 	push	ar7
      000AF0 C0 04            [24] 3311 	push	ar4
      000AF2 12 04 8F         [24] 3312 	lcall	_spi_send
      000AF5 D0 04            [24] 3313 	pop	ar4
      000AF7 D0 07            [24] 3314 	pop	ar7
                                   3315 ;	main.c:598: spi_send(x & 0x3F);
      000AF9 53 07 3F         [24] 3316 	anl	ar7,#0x3f
      000AFC 8F 82            [24] 3317 	mov	dpl,r7
      000AFE C0 04            [24] 3318 	push	ar4
      000B00 12 04 8F         [24] 3319 	lcall	_spi_send
      000B03 D0 04            [24] 3320 	pop	ar4
                                   3321 ;	main.c:599: spi_send(y & 0x3F);
      000B05 53 04 3F         [24] 3322 	anl	ar4,#0x3f
      000B08 8C 82            [24] 3323 	mov	dpl,r4
      000B0A 12 04 8F         [24] 3324 	lcall	_spi_send
                                   3325 ;	main.c:602: if (m_wheel) {
      000B0D 90 06 04         [24] 3326 	mov	dptr,#_m_wheel
      000B10 E0               [24] 3327 	movx	a,@dptr
      000B11 60 15            [24] 3328 	jz	00157$
                                   3329 ;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
      000B13 90 07 F5         [24] 3330 	mov	dptr,#_do_process_middle_b_393218_186
      000B16 E0               [24] 3331 	movx	a,@dptr
      000B17 C4               [12] 3332 	swap	a
      000B18 54 F0            [12] 3333 	anl	a,#0xf0
      000B1A FF               [12] 3334 	mov	r7,a
      000B1B A9 08            [24] 3335 	mov	r1,_do_process_sloc0_1_0
      000B1D 53 01 0F         [24] 3336 	anl	ar1,#0x0f
      000B20 EF               [12] 3337 	mov	a,r7
      000B21 42 01            [12] 3338 	orl	ar1,a
      000B23 89 82            [24] 3339 	mov	dpl,r1
      000B25 12 04 8F         [24] 3340 	lcall	_spi_send
      000B28                       3341 00157$:
                                   3342 ;	main.c:606: flash_led();
                                   3343 ;	main.c:740: spi_m_send(cx, cy, cz, m_bt);
                                   3344 ;	main.c:743: }
      000B28 02 04 2F         [24] 3345 	ljmp	_flash_led
                                   3346 ;------------------------------------------------------------
                                   3347 ;Allocation info for local variables in function 'get_reset_source'
                                   3348 ;------------------------------------------------------------
                                   3349 ;	main.c:745: static inline uint8_t get_reset_source(void)
                                   3350 ;	-----------------------------------------
                                   3351 ;	 function get_reset_source
                                   3352 ;	-----------------------------------------
      000B2B                       3353 _get_reset_source:
                                   3354 ;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      000B2B 74 30            [12] 3355 	mov	a,#0x30
      000B2D 55 87            [12] 3356 	anl	a,_PCON
      000B2F C4               [12] 3357 	swap	a
      000B30 54 0F            [12] 3358 	anl	a,#0x0f
                                   3359 ;	main.c:748: }
      000B32 F5 82            [12] 3360 	mov	dpl,a
      000B34 22               [24] 3361 	ret
                                   3362 ;------------------------------------------------------------
                                   3363 ;Allocation info for local variables in function 'usb_init'
                                   3364 ;------------------------------------------------------------
                                   3365 ;	main.c:750: static inline void usb_init(void)
                                   3366 ;	-----------------------------------------
                                   3367 ;	 function usb_init
                                   3368 ;	-----------------------------------------
      000B35                       3369 _usb_init:
                                   3370 ;	main.c:752: resetHubDevices(0);
      000B35 75 82 00         [24] 3371 	mov	dpl,#0x00
      000B38 12 21 F0         [24] 3372 	lcall	_resetHubDevices
                                   3373 ;	main.c:753: resetHubDevices(1);
      000B3B 75 82 01         [24] 3374 	mov	dpl,#0x01
      000B3E 12 21 F0         [24] 3375 	lcall	_resetHubDevices
                                   3376 ;	main.c:754: initUSB_Host();
                                   3377 ;	main.c:755: }
      000B41 02 18 B5         [24] 3378 	ljmp	_initUSB_Host
                                   3379 ;------------------------------------------------------------
                                   3380 ;Allocation info for local variables in function 'init'
                                   3381 ;------------------------------------------------------------
                                   3382 ;__1310720048              Allocated with name '_init___1310720048_131072_193'
                                   3383 ;__1310720045              Allocated with name '_init___1310720045_131072_193'
                                   3384 ;__1310720043              Allocated with name '_init___1310720043_131072_193'
                                   3385 ;__1310720041              Allocated with name '_init___1310720041_131072_193'
                                   3386 ;__1310720039              Allocated with name '_init___1310720039_131072_193'
                                   3387 ;com_table                 Allocated with name '_init_com_table_262144_319'
                                   3388 ;jumpers                   Allocated with name '_init_jumpers_262144_319'
                                   3389 ;rate_table                Allocated with name '_init_rate_table_262144_325'
                                   3390 ;jumpers                   Allocated with name '_init_jumpers_262144_325'
                                   3391 ;__1310720046              Allocated with name '_init___1310720046_131072_326'
                                   3392 ;opt_com                   Allocated with name '_init_opt_com_196608_327'
                                   3393 ;_ea_state                 Allocated with name '_init__ea_state_327680_337'
                                   3394 ;__4587520051              Allocated with name '_init___4587520051_458752_343'
                                   3395 ;__4587520052              Allocated with name '_init___4587520052_458752_343'
                                   3396 ;opt_com                   Allocated with name '_init_opt_com_524288_344'
                                   3397 ;opt_irq                   Allocated with name '_init_opt_irq_524288_344'
                                   3398 ;config_data               Allocated with name '_init_config_data_589824_345'
                                   3399 ;------------------------------------------------------------
                                   3400 ;	main.c:757: static inline void init(void)
                                   3401 ;	-----------------------------------------
                                   3402 ;	 function init
                                   3403 ;	-----------------------------------------
      000B44                       3404 _init:
                                   3405 ;	main.c:759: WDOG_COUNT = 0;
      000B44 75 FF 00         [24] 3406 	mov	_WDOG_COUNT,#0x00
                                   3407 ;	main.c:762: SAFE_MOD = 0x55;
      000B47 75 A1 55         [24] 3408 	mov	_SAFE_MOD,#0x55
                                   3409 ;	main.c:763: SAFE_MOD = 0xAA;
      000B4A 75 A1 AA         [24] 3410 	mov	_SAFE_MOD,#0xaa
                                   3411 ;	main.c:765: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
      000B4D 75 B2 D8         [24] 3412 	mov	_PLL_CFG,#0xd8
                                   3413 ;	main.c:766: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
      000B50 75 B3 86         [24] 3414 	mov	_CLOCK_CFG,#0x86
                                   3415 ;	main.c:768: SAFE_MOD = 0xFF;
      000B53 75 A1 FF         [24] 3416 	mov	_SAFE_MOD,#0xff
                                   3417 ;	main.c:771: delay(7);
      000B56 90 00 07         [24] 3418 	mov	dptr,#0x0007
      000B59 12 16 3C         [24] 3419 	lcall	_delay
                                   3420 ;	main.c:783: pinMode(SPI_RESOUT_PORT, SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
      000B5C 85 C6 C6         [24] 3421 	mov	_PORT_CFG,_PORT_CFG
      000B5F 43 C2 80         [24] 3422 	orl	_P4_DIR,#0x80
                                   3423 ;	main.c:784: pinMode(SPI_MOSI_PORT, SPI_MOSI_PIN, PIN_MODE_OUTPUT);
      000B62 53 C6 FD         [24] 3424 	anl	_PORT_CFG,#0xfd
      000B65 43 BA 20         [24] 3425 	orl	_P1_DIR,#0x20
                                   3426 ;	main.c:785: pinMode(SPI_SCK_PORT, SPI_SCK_PIN, PIN_MODE_OUTPUT);
      000B68 53 C6 FD         [24] 3427 	anl	_PORT_CFG,#0xfd
      000B6B 43 BA 80         [24] 3428 	orl	_P1_DIR,#0x80
                                   3429 ;	main.c:786: pinMode(TxD_PORT, TxD_PIN, PIN_MODE_OUTPUT);
      000B6E 53 C6 FE         [24] 3430 	anl	_PORT_CFG,#0xfe
      000B71 43 C4 08         [24] 3431 	orl	_P0_DIR,#0x08
                                   3432 ;	main.c:788: pinMode(RxD_PORT, RxD_PIN, PIN_MODE_INPUT);
      000B74 53 C6 FE         [24] 3433 	anl	_PORT_CFG,#0xfe
      000B77 53 C4 FB         [24] 3434 	anl	_P0_DIR,#0xfb
      000B7A 53 C5 FB         [24] 3435 	anl	_P0_PU,#0xfb
                                   3436 ;	main.c:789: pinMode(DTR_PORT, DTR_PIN, PIN_MODE_INPUT);
      000B7D 53 C6 F7         [24] 3437 	anl	_PORT_CFG,#0xf7
      000B80 53 BE FB         [24] 3438 	anl	_P3_DIR,#0xfb
      000B83 53 BF FB         [24] 3439 	anl	_P3_PU,#0xfb
                                   3440 ;	main.c:790: pinMode(COM_SEL1_PORT, COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000B86 53 C6 FB         [24] 3441 	anl	_PORT_CFG,#0xfb
      000B89 53 BC BF         [24] 3442 	anl	_P2_DIR,#0xbf
      000B8C 43 BD 40         [24] 3443 	orl	_P2_PU,#0x40
                                   3444 ;	main.c:791: pinMode(COM_SEL2_PORT, COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000B8F 53 C6 FB         [24] 3445 	anl	_PORT_CFG,#0xfb
      000B92 53 BC 7F         [24] 3446 	anl	_P2_DIR,#0x7f
      000B95 43 BD 80         [24] 3447 	orl	_P2_PU,#0x80
                                   3448 ;	main.c:792: pinMode(RATE_SEL1_PORT, RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000B98 53 C6 FD         [24] 3449 	anl	_PORT_CFG,#0xfd
      000B9B 53 BA FB         [24] 3450 	anl	_P1_DIR,#0xfb
      000B9E 43 BB 04         [24] 3451 	orl	_P1_PU,#0x04
                                   3452 ;	main.c:793: pinMode(RATE_SEL2_PORT, RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000BA1 53 C6 FD         [24] 3453 	anl	_PORT_CFG,#0xfd
      000BA4 53 BA EF         [24] 3454 	anl	_P1_DIR,#0xef
      000BA7 43 BB 10         [24] 3455 	orl	_P1_PU,#0x10
                                   3456 ;	main.c:794: pinMode(WHEEL_SEL_PORT, WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000BAA 53 C6 F7         [24] 3457 	anl	_PORT_CFG,#0xf7
      000BAD 53 BE EF         [24] 3458 	anl	_P3_DIR,#0xef
      000BB0 43 BF 10         [24] 3459 	orl	_P3_PU,#0x10
                                   3460 ;	main.c:795: pinMode(IRQX_SEL_PORT, IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000BB3 53 C6 FB         [24] 3461 	anl	_PORT_CFG,#0xfb
      000BB6 53 BC DF         [24] 3462 	anl	_P2_DIR,#0xdf
      000BB9 43 BD 20         [24] 3463 	orl	_P2_PU,#0x20
                                   3464 ;	main.c:796: pinMode(RxIRQ_PORT, RxIRQ_PIN, PIN_MODE_INPUT);
      000BBC 53 C6 FD         [24] 3465 	anl	_PORT_CFG,#0xfd
      000BBF 53 BA BF         [24] 3466 	anl	_P1_DIR,#0xbf
      000BC2 53 BB BF         [24] 3467 	anl	_P1_PU,#0xbf
                                   3468 ;	main.c:797: pinMode(PRG_PORT, PRG_PIN, PIN_MODE_INPUT_PULLUP);
      000BC5 85 C6 C6         [24] 3469 	mov	_PORT_CFG,_PORT_CFG
      000BC8 53 C2 BF         [24] 3470 	anl	_P4_DIR,#0xbf
      000BCB 43 C3 40         [24] 3471 	orl	_P4_PU,#0x40
                                   3472 ;	main.c:800: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
      000BCE E5 C1            [12] 3473 	mov	a,_P4_IN
      000BD0 20 E6 0B         [24] 3474 	jb	acc.6,00438$
                                   3475 ;	main.c:801: runBootloader();
      000BD3 85 0E 82         [24] 3476 	mov	dpl,_runBootloader
      000BD6 85 0F 83         [24] 3477 	mov	dph,(_runBootloader + 1)
      000BD9 12 00 41         [24] 3478 	lcall	__sdcc_call_dptr
                                   3479 ;	main.c:803: pinMode(LED_PORT, LED_PIN, PIN_MODE_OUTPUT);
      000BDC 80 06            [24] 3480 	sjmp	00448$
      000BDE                       3481 00438$:
      000BDE 85 C6 C6         [24] 3482 	mov	_PORT_CFG,_PORT_CFG
      000BE1 43 C2 40         [24] 3483 	orl	_P4_DIR,#0x40
      000BE4                       3484 00448$:
                                   3485 ;	main.c:641: const uint8_t com_table[4] = {
      000BE4 90 07 F8         [24] 3486 	mov	dptr,#_init_com_table_262144_319
      000BE7 74 03            [12] 3487 	mov	a,#0x03
      000BE9 F0               [24] 3488 	movx	@dptr,a
      000BEA 90 07 F9         [24] 3489 	mov	dptr,#(_init_com_table_262144_319 + 0x0001)
      000BED 14               [12] 3490 	dec	a
      000BEE F0               [24] 3491 	movx	@dptr,a
      000BEF 90 07 FA         [24] 3492 	mov	dptr,#(_init_com_table_262144_319 + 0x0002)
      000BF2 14               [12] 3493 	dec	a
      000BF3 F0               [24] 3494 	movx	@dptr,a
      000BF4 90 07 FB         [24] 3495 	mov	dptr,#(_init_com_table_262144_319 + 0x0003)
      000BF7 E4               [12] 3496 	clr	a
      000BF8 F0               [24] 3497 	movx	@dptr,a
                                   3498 ;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      000BF9 E5 A0            [12] 3499 	mov	a,_P2
      000BFB 30 E6 06         [24] 3500 	jnb	acc.6,00478$
      000BFE 7E 01            [12] 3501 	mov	r6,#0x01
      000C00 7F 00            [12] 3502 	mov	r7,#0x00
      000C02 80 04            [24] 3503 	sjmp	00479$
      000C04                       3504 00478$:
      000C04 7E 00            [12] 3505 	mov	r6,#0x00
      000C06 7F 00            [12] 3506 	mov	r7,#0x00
      000C08                       3507 00479$:
      000C08 E5 A0            [12] 3508 	mov	a,_P2
      000C0A 30 E7 06         [24] 3509 	jnb	acc.7,00480$
      000C0D 7C 02            [12] 3510 	mov	r4,#0x02
      000C0F 7D 00            [12] 3511 	mov	r5,#0x00
      000C11 80 04            [24] 3512 	sjmp	00481$
      000C13                       3513 00480$:
      000C13 7C 00            [12] 3514 	mov	r4,#0x00
      000C15 7D 00            [12] 3515 	mov	r5,#0x00
      000C17                       3516 00481$:
      000C17 EC               [12] 3517 	mov	a,r4
      000C18 4E               [12] 3518 	orl	a,r6
                                   3519 ;	main.c:648: return com_table[jumpers];
      000C19 24 F8            [12] 3520 	add	a,#_init_com_table_262144_319
      000C1B F5 82            [12] 3521 	mov	dpl,a
      000C1D E4               [12] 3522 	clr	a
      000C1E 34 07            [12] 3523 	addc	a,#(_init_com_table_262144_319 >> 8)
      000C20 F5 83            [12] 3524 	mov	dph,a
      000C22 E0               [24] 3525 	movx	a,@dptr
                                   3526 ;	main.c:807: opt_com_settings = readCOMsettings();
      000C23 90 06 00         [24] 3527 	mov	dptr,#_opt_com_settings
      000C26 F0               [24] 3528 	movx	@dptr,a
                                   3529 ;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      000C27 E5 B0            [12] 3530 	mov	a,_P3
      000C29 C4               [12] 3531 	swap	a
      000C2A 54 01            [12] 3532 	anl	a,#0x01
      000C2C 90 07 F7         [24] 3533 	mov	dptr,#_init___1310720041_131072_193
      000C2F B4 01 00         [24] 3534 	cjne	a,#0x01,00539$
      000C32                       3535 00539$:
      000C32 E4               [12] 3536 	clr	a
      000C33 33               [12] 3537 	rlc	a
      000C34 F0               [24] 3538 	movx	@dptr,a
                                   3539 ;	main.c:808: opt_wheel_enabled = readWheelsettings();
      000C35 90 07 F7         [24] 3540 	mov	dptr,#_init___1310720041_131072_193
      000C38 E0               [24] 3541 	movx	a,@dptr
      000C39 90 06 01         [24] 3542 	mov	dptr,#_opt_wheel_enabled
      000C3C F0               [24] 3543 	movx	@dptr,a
                                   3544 ;	main.c:658: const uint8_t rate_table[4] = {
      000C3D 90 07 FC         [24] 3545 	mov	dptr,#_init_rate_table_262144_325
      000C40 74 14            [12] 3546 	mov	a,#0x14
      000C42 F0               [24] 3547 	movx	@dptr,a
      000C43 90 07 FD         [24] 3548 	mov	dptr,#(_init_rate_table_262144_325 + 0x0001)
      000C46 23               [12] 3549 	rl	a
      000C47 F0               [24] 3550 	movx	@dptr,a
      000C48 90 07 FE         [24] 3551 	mov	dptr,#(_init_rate_table_262144_325 + 0x0002)
      000C4B 23               [12] 3552 	rl	a
      000C4C F0               [24] 3553 	movx	@dptr,a
      000C4D 90 07 FF         [24] 3554 	mov	dptr,#(_init_rate_table_262144_325 + 0x0003)
      000C50 74 64            [12] 3555 	mov	a,#0x64
      000C52 F0               [24] 3556 	movx	@dptr,a
                                   3557 ;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      000C53 E5 90            [12] 3558 	mov	a,_P1
      000C55 30 E2 06         [24] 3559 	jnb	acc.2,00482$
      000C58 7E 01            [12] 3560 	mov	r6,#0x01
      000C5A 7F 00            [12] 3561 	mov	r7,#0x00
      000C5C 80 04            [24] 3562 	sjmp	00483$
      000C5E                       3563 00482$:
      000C5E 7E 00            [12] 3564 	mov	r6,#0x00
      000C60 7F 00            [12] 3565 	mov	r7,#0x00
      000C62                       3566 00483$:
      000C62 E5 90            [12] 3567 	mov	a,_P1
      000C64 30 E4 06         [24] 3568 	jnb	acc.4,00484$
      000C67 7C 02            [12] 3569 	mov	r4,#0x02
      000C69 7D 00            [12] 3570 	mov	r5,#0x00
      000C6B 80 04            [24] 3571 	sjmp	00485$
      000C6D                       3572 00484$:
      000C6D 7C 00            [12] 3573 	mov	r4,#0x00
      000C6F 7D 00            [12] 3574 	mov	r5,#0x00
      000C71                       3575 00485$:
      000C71 EC               [12] 3576 	mov	a,r4
      000C72 4E               [12] 3577 	orl	a,r6
                                   3578 ;	main.c:665: return rate_table[jumpers];
      000C73 24 FC            [12] 3579 	add	a,#_init_rate_table_262144_325
      000C75 F5 82            [12] 3580 	mov	dpl,a
      000C77 E4               [12] 3581 	clr	a
      000C78 34 07            [12] 3582 	addc	a,#(_init_rate_table_262144_325 >> 8)
      000C7A F5 83            [12] 3583 	mov	dph,a
      000C7C E0               [24] 3584 	movx	a,@dptr
                                   3585 ;	main.c:809: opt_rate_settings = readRatesettings();
      000C7D FF               [12] 3586 	mov	r7,a
      000C7E 90 06 02         [24] 3587 	mov	dptr,#_opt_rate_settings
      000C81 F0               [24] 3588 	movx	@dptr,a
                                   3589 ;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
      000C82 90 06 00         [24] 3590 	mov	dptr,#_opt_com_settings
      000C85 E0               [24] 3591 	movx	a,@dptr
      000C86 FE               [12] 3592 	mov	r6,a
                                   3593 ;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      000C87 E5 A0            [12] 3594 	mov	a,_P2
      000C89 20 E5 08         [24] 3595 	jb	acc.5,00458$
                                   3596 ;	main.c:671: return USE_IRQX;
      000C8C 90 07 F6         [24] 3597 	mov	dptr,#_init___1310720045_131072_193
      000C8F 74 01            [12] 3598 	mov	a,#0x01
      000C91 F0               [24] 3599 	movx	@dptr,a
      000C92 80 13            [24] 3600 	sjmp	00462$
      000C94                       3601 00458$:
                                   3602 ;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      000C94 EE               [12] 3603 	mov	a,r6
      000C95 60 03            [24] 3604 	jz	00460$
      000C97 BE 02 08         [24] 3605 	cjne	r6,#0x02,00461$
      000C9A                       3606 00460$:
                                   3607 ;	main.c:674: return USE_IRQ4;
      000C9A 90 07 F6         [24] 3608 	mov	dptr,#_init___1310720045_131072_193
      000C9D 74 02            [12] 3609 	mov	a,#0x02
      000C9F F0               [24] 3610 	movx	@dptr,a
      000CA0 80 05            [24] 3611 	sjmp	00462$
      000CA2                       3612 00461$:
                                   3613 ;	main.c:676: return USE_IRQ3;
      000CA2 90 07 F6         [24] 3614 	mov	dptr,#_init___1310720045_131072_193
      000CA5 E4               [12] 3615 	clr	a
      000CA6 F0               [24] 3616 	movx	@dptr,a
                                   3617 ;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
      000CA7                       3618 00462$:
      000CA7 90 07 F6         [24] 3619 	mov	dptr,#_init___1310720045_131072_193
      000CAA E0               [24] 3620 	movx	a,@dptr
      000CAB 90 06 03         [24] 3621 	mov	dptr,#_opt_irq_settings
      000CAE F0               [24] 3622 	movx	@dptr,a
                                   3623 ;	main.c:813: timer0_limit = (uint8_t)((2000UL + opt_rate_settings) / (opt_rate_settings << 1U));
      000CAF 8F 03            [24] 3624 	mov	ar3,r7
      000CB1 E4               [12] 3625 	clr	a
      000CB2 FC               [12] 3626 	mov	r4,a
      000CB3 FD               [12] 3627 	mov	r5,a
      000CB4 FE               [12] 3628 	mov	r6,a
      000CB5 74 D0            [12] 3629 	mov	a,#0xd0
      000CB7 2B               [12] 3630 	add	a,r3
      000CB8 FB               [12] 3631 	mov	r3,a
      000CB9 74 07            [12] 3632 	mov	a,#0x07
      000CBB 3C               [12] 3633 	addc	a,r4
      000CBC FC               [12] 3634 	mov	r4,a
      000CBD E4               [12] 3635 	clr	a
      000CBE 3D               [12] 3636 	addc	a,r5
      000CBF FD               [12] 3637 	mov	r5,a
      000CC0 E4               [12] 3638 	clr	a
      000CC1 3E               [12] 3639 	addc	a,r6
      000CC2 FE               [12] 3640 	mov	r6,a
      000CC3 7A 00            [12] 3641 	mov	r2,#0x00
      000CC5 EF               [12] 3642 	mov	a,r7
      000CC6 2F               [12] 3643 	add	a,r7
      000CC7 FF               [12] 3644 	mov	r7,a
      000CC8 EA               [12] 3645 	mov	a,r2
      000CC9 33               [12] 3646 	rlc	a
      000CCA FA               [12] 3647 	mov	r2,a
      000CCB 90 0D 9A         [24] 3648 	mov	dptr,#__divulong_PARM_2
      000CCE EF               [12] 3649 	mov	a,r7
      000CCF F0               [24] 3650 	movx	@dptr,a
      000CD0 EA               [12] 3651 	mov	a,r2
      000CD1 A3               [24] 3652 	inc	dptr
      000CD2 F0               [24] 3653 	movx	@dptr,a
      000CD3 E4               [12] 3654 	clr	a
      000CD4 A3               [24] 3655 	inc	dptr
      000CD5 F0               [24] 3656 	movx	@dptr,a
      000CD6 A3               [24] 3657 	inc	dptr
      000CD7 F0               [24] 3658 	movx	@dptr,a
      000CD8 8B 82            [24] 3659 	mov	dpl,r3
      000CDA 8C 83            [24] 3660 	mov	dph,r4
      000CDC 8D F0            [24] 3661 	mov	b,r5
      000CDE EE               [12] 3662 	mov	a,r6
      000CDF 12 33 62         [24] 3663 	lcall	__divulong
      000CE2 AC 82            [24] 3664 	mov	r4,dpl
      000CE4 AD 83            [24] 3665 	mov	r5,dph
      000CE6 90 07 A1         [24] 3666 	mov	dptr,#_timer0_limit
      000CE9 EC               [12] 3667 	mov	a,r4
      000CEA F0               [24] 3668 	movx	@dptr,a
                                   3669 ;	main.c:820: TH0 = (uint8_t)(TIMER0_CONST >> 8);
      000CEB 75 8C F0         [24] 3670 	mov	_TH0,#0xf0
                                   3671 ;	main.c:821: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
      000CEE 75 8A 60         [24] 3672 	mov	_TL0,#0x60
                                   3673 ;	main.c:822: TF0 = 0;
                                   3674 ;	assignBit
      000CF1 C2 8D            [12] 3675 	clr	_TF0
                                   3676 ;	main.c:823: TR0 = 1;
                                   3677 ;	assignBit
      000CF3 D2 8C            [12] 3678 	setb	_TR0
                                   3679 ;	main.c:827: TR2 = 0;         // останов таймера
                                   3680 ;	assignBit
      000CF5 C2 CA            [12] 3681 	clr	_TR2
                                   3682 ;	main.c:828: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
      000CF7 75 C9 00         [24] 3683 	mov	_T2MOD,#0x00
                                   3684 ;	main.c:829: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
      000CFA 75 CB FF         [24] 3685 	mov	_RCAP2H,#0xff
                                   3686 ;	main.c:830: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
      000CFD 75 CA 9C         [24] 3687 	mov	_RCAP2L,#0x9c
                                   3688 ;	main.c:831: TH2 = RCAP2H;
      000D00 85 CB CD         [24] 3689 	mov	_TH2,_RCAP2H
                                   3690 ;	main.c:832: TL2 = RCAP2L;
      000D03 85 CA CC         [24] 3691 	mov	_TL2,_RCAP2L
                                   3692 ;	main.c:833: TF2 = 0;
                                   3693 ;	assignBit
      000D06 C2 CF            [12] 3694 	clr	_TF2
                                   3695 ;	main.c:837: T3_COUNT = 0;           // Сброс счетчика
      000D08 E4               [12] 3696 	clr	a
      000D09 F5 A4            [12] 3697 	mov	((_T3_COUNT >> 0) & 0xFF),a
      000D0B F5 A5            [12] 3698 	mov	((_T3_COUNT >> 8) & 0xFF),a
                                   3699 ;	main.c:838: T3_END = LED_CONST;     // Установка периода
                                   3700 ;	1-genFromRTrack replaced	mov	((_T3_END >> 0) & 0xFF),#0x00
      000D0D F5 A6            [12] 3701 	mov	((_T3_END >> 0) & 0xFF),a
      000D0F 75 A7 FA         [24] 3702 	mov	((_T3_END >> 8) & 0xFF),#0xfa
                                   3703 ;	main.c:839: T3_CTRL |= bT3_CLR_ALL;     // Сброс всех регистров
      000D12 43 AA 02         [24] 3704 	orl	_T3_CTRL,#0x02
                                   3705 ;	main.c:840: T3_CTRL &= ~bT3_CLR_ALL;    // Завершение сброса
      000D15 53 AA FD         [24] 3706 	anl	_T3_CTRL,#0xfd
                                   3707 ;	main.c:841: T3_SETUP |= bT3_IE_END;     // Разрешение прерывания по достижению END
      000D18 43 A3 80         [24] 3708 	orl	_T3_SETUP,#0x80
                                   3709 ;	main.c:842: T3_CTRL &= ~bT3_MOD_CAP;    // Режим таймера (не захвата)
      000D1B 53 AA FE         [24] 3710 	anl	_T3_CTRL,#0xfe
                                   3711 ;	main.c:846: IT0 = 1; // Активен по спаду сигнала
                                   3712 ;	assignBit
      000D1E D2 88            [12] 3713 	setb	_IT0
                                   3714 ;	main.c:847: IE0 = 0; // Сброс флага прерывания INT0
                                   3715 ;	assignBit
      000D20 C2 89            [12] 3716 	clr	_IE0
                                   3717 ;	main.c:850: uart_tx_r = 0; uart_tx_w = 0;
      000D22 90 07 87         [24] 3718 	mov	dptr,#_uart_tx_r
      000D25 E4               [12] 3719 	clr	a
      000D26 F0               [24] 3720 	movx	@dptr,a
      000D27 90 07 88         [24] 3721 	mov	dptr,#_uart_tx_w
      000D2A F0               [24] 3722 	movx	@dptr,a
                                   3723 ;	main.c:851: uart_rx_r = 0; uart_rx_w = 0;
      000D2B 90 07 99         [24] 3724 	mov	dptr,#_uart_rx_r
      000D2E F0               [24] 3725 	movx	@dptr,a
      000D2F 90 07 9A         [24] 3726 	mov	dptr,#_uart_rx_w
      000D32 F0               [24] 3727 	movx	@dptr,a
                                   3728 ;	main.c:852: uart_rx_buf_count = 0;
      000D33 90 07 9B         [24] 3729 	mov	dptr,#_uart_rx_buf_count
      000D36 F0               [24] 3730 	movx	@dptr,a
                                   3731 ;	main.c:855: PIN_FUNC |= bUART0_PIN_X;
      000D37 43 CE 10         [24] 3732 	orl	_PIN_FUNC,#0x10
                                   3733 ;	main.c:858: SM0 = 0;
                                   3734 ;	assignBit
      000D3A C2 9F            [12] 3735 	clr	_SM0
                                   3736 ;	main.c:859: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
                                   3737 ;	assignBit
      000D3C D2 9E            [12] 3738 	setb	_SM1
                                   3739 ;	main.c:860: SM2 = 0;
                                   3740 ;	assignBit
      000D3E C2 9D            [12] 3741 	clr	_SM2
                                   3742 ;	main.c:861: REN = 1; // Разрешить прием
                                   3743 ;	assignBit
      000D40 D2 9C            [12] 3744 	setb	_REN
                                   3745 ;	main.c:864: PCON |= SMOD;
      000D42 43 87 80         [24] 3746 	orl	_PCON,#0x80
                                   3747 ;	main.c:867: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
      000D45 74 0F            [12] 3748 	mov	a,#0x0f
      000D47 55 89            [12] 3749 	anl	a,_TMOD
      000D49 44 20            [12] 3750 	orl	a,#0x20
      000D4B F5 89            [12] 3751 	mov	_TMOD,a
                                   3752 ;	main.c:868: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Источник системная частота
      000D4D 43 C9 A0         [24] 3753 	orl	_T2MOD,#0xa0
                                   3754 ;	main.c:872: TH1 = (uint8_t)(256 - ((((uint32_t)FREQ_SYS / 8) / UART_BAUDRATE + 1) / 2));
      000D50 75 8D E6         [24] 3755 	mov	_TH1,#0xe6
                                   3756 ;	main.c:874: TR1 = 1; // Запуск Timer1
                                   3757 ;	assignBit
      000D53 D2 8E            [12] 3758 	setb	_TR1
                                   3759 ;	main.c:877: TI = 1;
                                   3760 ;	assignBit
      000D55 D2 99            [12] 3761 	setb	_TI
                                   3762 ;	main.c:881: ET0 = 1; // Разрешить прерывания таймера 0
                                   3763 ;	assignBit
      000D57 D2 A9            [12] 3764 	setb	_ET0
                                   3765 ;	main.c:882: ET2 = 1; // Разрешить прерывания таймера 2
                                   3766 ;	assignBit
      000D59 D2 AD            [12] 3767 	setb	_ET2
                                   3768 ;	main.c:883: IE_TMR3 = 1; // Разрешить прерывания таймера 3
                                   3769 ;	assignBit
      000D5B D2 E9            [12] 3770 	setb	_IE_TMR3
                                   3771 ;	main.c:884: EX0 = 1; // Разрешить прерывания INT0
                                   3772 ;	assignBit
      000D5D D2 A8            [12] 3773 	setb	_EX0
                                   3774 ;	main.c:885: ES = 0;  // Разрешить прерывание UART
                                   3775 ;	assignBit
      000D5F C2 AC            [12] 3776 	clr	_ES
                                   3777 ;	main.c:887: SAFE_MOD = 0x55;
      000D61 75 A1 55         [24] 3778 	mov	_SAFE_MOD,#0x55
                                   3779 ;	main.c:888: SAFE_MOD = 0xAA;
      000D64 75 A1 AA         [24] 3780 	mov	_SAFE_MOD,#0xaa
                                   3781 ;	main.c:890: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
      000D67 75 EB C3         [24] 3782 	mov	_WAKE_CTRL,#0xc3
                                   3783 ;	main.c:897: GLOBAL_CFG |= bWDOG_EN;
      000D6A 43 B1 01         [24] 3784 	orl	_GLOBAL_CFG,#0x01
                                   3785 ;	main.c:899: SAFE_MOD = 0xFF;
      000D6D 75 A1 FF         [24] 3786 	mov	_SAFE_MOD,#0xff
                                   3787 ;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      000D70 74 30            [12] 3788 	mov	a,#0x30
      000D72 55 87            [12] 3789 	anl	a,_PCON
      000D74 C4               [12] 3790 	swap	a
      000D75 54 0F            [12] 3791 	anl	a,#0x0f
                                   3792 ;	main.c:905: switch (get_reset_source()) {
      000D77 FF               [12] 3793 	mov	r7,a
      000D78 FE               [12] 3794 	mov	r6,a
      000D79 24 FC            [12] 3795 	add	a,#0xff - 0x03
      000D7B 40 2D            [24] 3796 	jc	00453$
      000D7D EE               [12] 3797 	mov	a,r6
      000D7E 2E               [12] 3798 	add	a,r6
                                   3799 ;	main.c:906: case 0b10: // 10 - Переполнение watchdog
      000D7F 90 0D 83         [24] 3800 	mov	dptr,#00547$
      000D82 73               [24] 3801 	jmp	@a+dptr
      000D83                       3802 00547$:
      000D83 80 17            [24] 3803 	sjmp	00452$
      000D85 80 15            [24] 3804 	sjmp	00452$
      000D87 80 02            [24] 3805 	sjmp	00449$
      000D89 80 08            [24] 3806 	sjmp	00450$
      000D8B                       3807 00449$:
                                   3808 ;	main.c:907: device_init = true;
      000D8B 90 07 9E         [24] 3809 	mov	dptr,#_device_init
      000D8E 74 01            [12] 3810 	mov	a,#0x01
      000D90 F0               [24] 3811 	movx	@dptr,a
                                   3812 ;	main.c:908: break;
                                   3813 ;	main.c:909: case 0b11: // 11 - Аппаратный сброс
      000D91 80 17            [24] 3814 	sjmp	00453$
      000D93                       3815 00450$:
                                   3816 ;	main.c:910: led_on(); // Сигнализируем исправность светодиода
      000D93 53 C0 BF         [24] 3817 	anl	_P4_OUT,#0xbf
                                   3818 ;	main.c:911: delay(50);
      000D96 90 00 32         [24] 3819 	mov	dptr,#0x0032
      000D99 12 16 3C         [24] 3820 	lcall	_delay
                                   3821 ;	main.c:914: case 0b01: // 01 - Сброс при включении питания
      000D9C                       3822 00452$:
                                   3823 ;	main.c:915: delay(50); // Ждём окончания переходных процессов
      000D9C 90 00 32         [24] 3824 	mov	dptr,#0x0032
      000D9F 12 16 3C         [24] 3825 	lcall	_delay
                                   3826 ;	main.c:916: led_off();
      000DA2 43 C0 40         [24] 3827 	orl	_P4_OUT,#0x40
                                   3828 ;	main.c:917: device_init = false;
      000DA5 90 07 9E         [24] 3829 	mov	dptr,#_device_init
      000DA8 E4               [12] 3830 	clr	a
      000DA9 F0               [24] 3831 	movx	@dptr,a
                                   3832 ;	main.c:919: }
      000DAA                       3833 00453$:
                                   3834 ;	main.c:922: EA = 1;
                                   3835 ;	assignBit
      000DAA D2 AF            [12] 3836 	setb	_EA
                                   3837 ;	main.c:536: CRITICAL_SECTION (
      000DAC A2 AF            [12] 3838 	mov	c,_EA
      000DAE E4               [12] 3839 	clr	a
      000DAF 33               [12] 3840 	rlc	a
      000DB0 FF               [12] 3841 	mov	r7,a
                                   3842 ;	assignBit
      000DB1 C2 AF            [12] 3843 	clr	_EA
      000DB3 90 07 04         [24] 3844 	mov	dptr,#_spi_tx_buf_w
      000DB6 E4               [12] 3845 	clr	a
      000DB7 F0               [24] 3846 	movx	@dptr,a
      000DB8 90 07 05         [24] 3847 	mov	dptr,#_spi_tx_buf_r
      000DBB F0               [24] 3848 	movx	@dptr,a
      000DBC 90 07 06         [24] 3849 	mov	dptr,#_spi_tx_buf_count
      000DBF F0               [24] 3850 	movx	@dptr,a
      000DC0 90 07 9E         [24] 3851 	mov	dptr,#_device_init
      000DC3 E0               [24] 3852 	movx	a,@dptr
      000DC4 70 35            [24] 3853 	jnz	00465$
      000DC6 43 90 20         [24] 3854 	orl	_P1,#0x20
      000DC9 90 00 01         [24] 3855 	mov	dptr,#0x0001
      000DCC C0 07            [24] 3856 	push	ar7
      000DCE 12 15 E7         [24] 3857 	lcall	_delayUs
      000DD1 D0 07            [24] 3858 	pop	ar7
      000DD3 53 90 DF         [24] 3859 	anl	_P1,#0xdf
      000DD6 90 06 03         [24] 3860 	mov	dptr,#_opt_irq_settings
      000DD9 E0               [24] 3861 	movx	a,@dptr
      000DDA FE               [12] 3862 	mov	r6,a
      000DDB 90 06 00         [24] 3863 	mov	dptr,#_opt_com_settings
      000DDE E0               [24] 3864 	movx	a,@dptr
                                   3865 ;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
      000DDF 54 03            [12] 3866 	anl	a,#0x03
      000DE1 FD               [12] 3867 	mov	r5,a
                                   3868 ;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      000DE2 BE 01 06         [24] 3869 	cjne	r6,#0x01,00486$
      000DE5 7C 04            [12] 3870 	mov	r4,#0x04
      000DE7 7E 00            [12] 3871 	mov	r6,#0x00
      000DE9 80 04            [24] 3872 	sjmp	00487$
      000DEB                       3873 00486$:
      000DEB 7C 00            [12] 3874 	mov	r4,#0x00
      000DED 7E 00            [12] 3875 	mov	r6,#0x00
      000DEF                       3876 00487$:
      000DEF EC               [12] 3877 	mov	a,r4
      000DF0 42 05            [12] 3878 	orl	ar5,a
                                   3879 ;	main.c:584: spi_send(config_data);
      000DF2 8D 82            [24] 3880 	mov	dpl,r5
      000DF4 C0 07            [24] 3881 	push	ar7
      000DF6 12 04 8F         [24] 3882 	lcall	_spi_send
      000DF9 D0 07            [24] 3883 	pop	ar7
                                   3884 ;	main.c:536: CRITICAL_SECTION (
      000DFB                       3885 00465$:
      000DFB 90 00 01         [24] 3886 	mov	dptr,#0x0001
      000DFE C0 07            [24] 3887 	push	ar7
      000E00 12 15 E7         [24] 3888 	lcall	_delayUs
      000E03 D0 07            [24] 3889 	pop	ar7
      000E05 53 C0 7F         [24] 3890 	anl	_P4_OUT,#0x7f
                                   3891 ;	assignBit
      000E08 EF               [12] 3892 	mov	a,r7
      000E09 24 FF            [12] 3893 	add	a,#0xff
      000E0B 92 AF            [24] 3894 	mov	_EA,c
                                   3895 ;	main.c:555: while (!device_init) {
      000E0D                       3896 00469$:
      000E0D 90 07 9E         [24] 3897 	mov	dptr,#_device_init
      000E10 E0               [24] 3898 	movx	a,@dptr
      000E11 60 FA            [24] 3899 	jz	00469$
                                   3900 ;	main.c:752: resetHubDevices(0);
      000E13 75 82 00         [24] 3901 	mov	dpl,#0x00
      000E16 12 21 F0         [24] 3902 	lcall	_resetHubDevices
                                   3903 ;	main.c:753: resetHubDevices(1);
      000E19 75 82 01         [24] 3904 	mov	dpl,#0x01
      000E1C 12 21 F0         [24] 3905 	lcall	_resetHubDevices
                                   3906 ;	main.c:754: initUSB_Host();
      000E1F 12 18 B5         [24] 3907 	lcall	_initUSB_Host
                                   3908 ;	main.c:930: m_wheel = opt_wheel_enabled;
      000E22 90 06 01         [24] 3909 	mov	dptr,#_opt_wheel_enabled
      000E25 E0               [24] 3910 	movx	a,@dptr
      000E26 90 06 04         [24] 3911 	mov	dptr,#_m_wheel
      000E29 F0               [24] 3912 	movx	@dptr,a
                                   3913 ;	main.c:931: mouse_enabled = get_mouse_power_state();
      000E2A 90 07 9D         [24] 3914 	mov	dptr,#_mouse_enabled
      000E2D 74 04            [12] 3915 	mov	a,#0x04
      000E2F 55 B0            [12] 3916 	anl	a,_P3
      000E31 F0               [24] 3917 	movx	@dptr,a
                                   3918 ;	main.c:932: mouse_start = true;
      000E32 90 07 9C         [24] 3919 	mov	dptr,#_mouse_start
      000E35 74 01            [12] 3920 	mov	a,#0x01
      000E37 F0               [24] 3921 	movx	@dptr,a
                                   3922 ;	main.c:933: fatal_error = false;
      000E38 90 07 A0         [24] 3923 	mov	dptr,#_fatal_error
      000E3B E4               [12] 3924 	clr	a
      000E3C F0               [24] 3925 	movx	@dptr,a
                                   3926 ;	main.c:934: }
      000E3D 22               [24] 3927 	ret
                                   3928 ;------------------------------------------------------------
                                   3929 ;Allocation info for local variables in function 'main'
                                   3930 ;------------------------------------------------------------
                                   3931 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   3932 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   3933 ;__1310720048              Allocated with name '_main___1310720048_262144_359'
                                   3934 ;__1310720045              Allocated with name '_main___1310720045_262144_359'
                                   3935 ;__1310720043              Allocated with name '_main___1310720043_262144_359'
                                   3936 ;__1310720041              Allocated with name '_main___1310720041_262144_359'
                                   3937 ;__1310720039              Allocated with name '_main___1310720039_262144_359'
                                   3938 ;com_table                 Allocated with name '_main_com_table_458752_484'
                                   3939 ;jumpers                   Allocated with name '_main_jumpers_458752_484'
                                   3940 ;rate_table                Allocated with name '_main_rate_table_458752_490'
                                   3941 ;jumpers                   Allocated with name '_main_jumpers_458752_490'
                                   3942 ;__1310720046              Allocated with name '_main___1310720046_327680_491'
                                   3943 ;opt_com                   Allocated with name '_main_opt_com_393216_492'
                                   3944 ;_ea_state                 Allocated with name '_main__ea_state_524288_503'
                                   3945 ;__4587520051              Allocated with name '_main___4587520051_655360_505'
                                   3946 ;__4587520052              Allocated with name '_main___4587520052_655360_505'
                                   3947 ;opt_com                   Allocated with name '_main_opt_com_720896_506'
                                   3948 ;opt_irq                   Allocated with name '_main_opt_irq_720896_506'
                                   3949 ;config_data               Allocated with name '_main_config_data_786432_507'
                                   3950 ;__1310720013              Allocated with name '_main___1310720013_393216_517'
                                   3951 ;__1310720008              Allocated with name '_main___1310720008_393216_517'
                                   3952 ;__1310720003              Allocated with name '_main___1310720003_393216_517'
                                   3953 ;st_m_bt                   Allocated with name '_main_st_m_bt_393216_517'
                                   3954 ;m_bt                      Allocated with name '_main_m_bt_393216_517'
                                   3955 ;m_cx                      Allocated with name '_main_m_cx_393216_517'
                                   3956 ;m_cy                      Allocated with name '_main_m_cy_393216_517'
                                   3957 ;m_cz                      Allocated with name '_main_m_cz_393216_517'
                                   3958 ;buttons                   Allocated with name '_main_buttons_393216_517'
                                   3959 ;dx                        Allocated with name '_main_dx_393216_517'
                                   3960 ;dy                        Allocated with name '_main_dy_393216_517'
                                   3961 ;dw                        Allocated with name '_main_dw_393216_517'
                                   3962 ;__1310720004              Allocated with name '_main___1310720004_458752_518'
                                   3963 ;__1310720005              Allocated with name '_main___1310720005_458752_518'
                                   3964 ;__1310720006              Allocated with name '_main___1310720006_458752_518'
                                   3965 ;val                       Allocated with name '_main_val_524288_519'
                                   3966 ;min                       Allocated with name '_main_min_524288_519'
                                   3967 ;max                       Allocated with name '_main_max_524288_519'
                                   3968 ;__1310720009              Allocated with name '_main___1310720009_458752_521'
                                   3969 ;__1310720010              Allocated with name '_main___1310720010_458752_521'
                                   3970 ;__1310720011              Allocated with name '_main___1310720011_458752_521'
                                   3971 ;val                       Allocated with name '_main_val_524288_522'
                                   3972 ;min                       Allocated with name '_main_min_524288_522'
                                   3973 ;max                       Allocated with name '_main_max_524288_522'
                                   3974 ;__1310720014              Allocated with name '_main___1310720014_458752_524'
                                   3975 ;__1310720015              Allocated with name '_main___1310720015_458752_524'
                                   3976 ;__1310720016              Allocated with name '_main___1310720016_458752_524'
                                   3977 ;val                       Allocated with name '_main_val_524288_525'
                                   3978 ;min                       Allocated with name '_main_min_524288_525'
                                   3979 ;max                       Allocated with name '_main_max_524288_525'
                                   3980 ;_ea_state                 Allocated with name '_main__ea_state_589824_529'
                                   3981 ;__2621440019              Allocated with name '_main___2621440019_524288_538'
                                   3982 ;cx                        Allocated with name '_main_cx_524288_538'
                                   3983 ;__2621440020              Allocated with name '_main___2621440020_589824_539'
                                   3984 ;__2621440021              Allocated with name '_main___2621440021_589824_539'
                                   3985 ;__2621440022              Allocated with name '_main___2621440022_589824_539'
                                   3986 ;val                       Allocated with name '_main_val_655360_540'
                                   3987 ;min                       Allocated with name '_main_min_655360_540'
                                   3988 ;max                       Allocated with name '_main_max_655360_540'
                                   3989 ;__2621440024              Allocated with name '_main___2621440024_589824_542'
                                   3990 ;cy                        Allocated with name '_main_cy_589824_542'
                                   3991 ;__2621450025              Allocated with name '_main___2621450025_655360_543'
                                   3992 ;__2621450026              Allocated with name '_main___2621450026_655360_543'
                                   3993 ;__2621450027              Allocated with name '_main___2621450027_655360_543'
                                   3994 ;val                       Allocated with name '_main_val_720896_544'
                                   3995 ;min                       Allocated with name '_main_min_720896_544'
                                   3996 ;max                       Allocated with name '_main_max_720896_544'
                                   3997 ;__2621450029              Allocated with name '_main___2621450029_655360_546'
                                   3998 ;cz                        Allocated with name '_main_cz_655360_546'
                                   3999 ;__2621460030              Allocated with name '_main___2621460030_720896_547'
                                   4000 ;__2621460031              Allocated with name '_main___2621460031_720896_547'
                                   4001 ;__2621460032              Allocated with name '_main___2621460032_720896_547'
                                   4002 ;val                       Allocated with name '_main_val_786432_548'
                                   4003 ;min                       Allocated with name '_main_min_786432_548'
                                   4004 ;max                       Allocated with name '_main_max_786432_548'
                                   4005 ;__2621460034              Allocated with name '_main___2621460034_720896_550'
                                   4006 ;__2621460035              Allocated with name '_main___2621460035_720896_550'
                                   4007 ;__2621460036              Allocated with name '_main___2621460036_720896_550'
                                   4008 ;__2621460037              Allocated with name '_main___2621460037_720896_550'
                                   4009 ;x                         Allocated with name '_main_x_786432_551'
                                   4010 ;y                         Allocated with name '_main_y_786432_551'
                                   4011 ;z                         Allocated with name '_main_z_786432_551'
                                   4012 ;b                         Allocated with name '_main_b_786432_551'
                                   4013 ;left_b                    Allocated with name '_main_left_b_851968_552'
                                   4014 ;right_b                   Allocated with name '_main_right_b_851968_552'
                                   4015 ;middle_b                  Allocated with name '_main_middle_b_851968_552'
                                   4016 ;------------------------------------------------------------
                                   4017 ;	main.c:936: int main(void)
                                   4018 ;	-----------------------------------------
                                   4019 ;	 function main
                                   4020 ;	-----------------------------------------
      000E3E                       4021 _main:
                                   4022 ;	main.c:759: WDOG_COUNT = 0;
      000E3E 75 FF 00         [24] 4023 	mov	_WDOG_COUNT,#0x00
                                   4024 ;	main.c:762: SAFE_MOD = 0x55;
      000E41 75 A1 55         [24] 4025 	mov	_SAFE_MOD,#0x55
                                   4026 ;	main.c:763: SAFE_MOD = 0xAA;
      000E44 75 A1 AA         [24] 4027 	mov	_SAFE_MOD,#0xaa
                                   4028 ;	main.c:765: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
      000E47 75 B2 D8         [24] 4029 	mov	_PLL_CFG,#0xd8
                                   4030 ;	main.c:766: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
      000E4A 75 B3 86         [24] 4031 	mov	_CLOCK_CFG,#0x86
                                   4032 ;	main.c:768: SAFE_MOD = 0xFF;
      000E4D 75 A1 FF         [24] 4033 	mov	_SAFE_MOD,#0xff
                                   4034 ;	main.c:771: delay(7);
      000E50 90 00 07         [24] 4035 	mov	dptr,#0x0007
      000E53 12 16 3C         [24] 4036 	lcall	_delay
                                   4037 ;	main.c:783: pinMode(SPI_RESOUT_PORT, SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
      000E56 85 C6 C6         [24] 4038 	mov	_PORT_CFG,_PORT_CFG
      000E59 43 C2 80         [24] 4039 	orl	_P4_DIR,#0x80
                                   4040 ;	main.c:784: pinMode(SPI_MOSI_PORT, SPI_MOSI_PIN, PIN_MODE_OUTPUT);
      000E5C 53 C6 FD         [24] 4041 	anl	_PORT_CFG,#0xfd
      000E5F 43 BA 20         [24] 4042 	orl	_P1_DIR,#0x20
                                   4043 ;	main.c:785: pinMode(SPI_SCK_PORT, SPI_SCK_PIN, PIN_MODE_OUTPUT);
      000E62 53 C6 FD         [24] 4044 	anl	_PORT_CFG,#0xfd
      000E65 43 BA 80         [24] 4045 	orl	_P1_DIR,#0x80
                                   4046 ;	main.c:786: pinMode(TxD_PORT, TxD_PIN, PIN_MODE_OUTPUT);
      000E68 53 C6 FE         [24] 4047 	anl	_PORT_CFG,#0xfe
      000E6B 43 C4 08         [24] 4048 	orl	_P0_DIR,#0x08
                                   4049 ;	main.c:788: pinMode(RxD_PORT, RxD_PIN, PIN_MODE_INPUT);
      000E6E 53 C6 FE         [24] 4050 	anl	_PORT_CFG,#0xfe
      000E71 53 C4 FB         [24] 4051 	anl	_P0_DIR,#0xfb
      000E74 53 C5 FB         [24] 4052 	anl	_P0_PU,#0xfb
                                   4053 ;	main.c:789: pinMode(DTR_PORT, DTR_PIN, PIN_MODE_INPUT);
      000E77 53 C6 F7         [24] 4054 	anl	_PORT_CFG,#0xf7
      000E7A 53 BE FB         [24] 4055 	anl	_P3_DIR,#0xfb
      000E7D 53 BF FB         [24] 4056 	anl	_P3_PU,#0xfb
                                   4057 ;	main.c:790: pinMode(COM_SEL1_PORT, COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000E80 53 C6 FB         [24] 4058 	anl	_PORT_CFG,#0xfb
      000E83 53 BC BF         [24] 4059 	anl	_P2_DIR,#0xbf
      000E86 43 BD 40         [24] 4060 	orl	_P2_PU,#0x40
                                   4061 ;	main.c:791: pinMode(COM_SEL2_PORT, COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000E89 53 C6 FB         [24] 4062 	anl	_PORT_CFG,#0xfb
      000E8C 53 BC 7F         [24] 4063 	anl	_P2_DIR,#0x7f
      000E8F 43 BD 80         [24] 4064 	orl	_P2_PU,#0x80
                                   4065 ;	main.c:792: pinMode(RATE_SEL1_PORT, RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000E92 53 C6 FD         [24] 4066 	anl	_PORT_CFG,#0xfd
      000E95 53 BA FB         [24] 4067 	anl	_P1_DIR,#0xfb
      000E98 43 BB 04         [24] 4068 	orl	_P1_PU,#0x04
                                   4069 ;	main.c:793: pinMode(RATE_SEL2_PORT, RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000E9B 53 C6 FD         [24] 4070 	anl	_PORT_CFG,#0xfd
      000E9E 53 BA EF         [24] 4071 	anl	_P1_DIR,#0xef
      000EA1 43 BB 10         [24] 4072 	orl	_P1_PU,#0x10
                                   4073 ;	main.c:794: pinMode(WHEEL_SEL_PORT, WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000EA4 53 C6 F7         [24] 4074 	anl	_PORT_CFG,#0xf7
      000EA7 53 BE EF         [24] 4075 	anl	_P3_DIR,#0xef
      000EAA 43 BF 10         [24] 4076 	orl	_P3_PU,#0x10
                                   4077 ;	main.c:795: pinMode(IRQX_SEL_PORT, IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000EAD 53 C6 FB         [24] 4078 	anl	_PORT_CFG,#0xfb
      000EB0 53 BC DF         [24] 4079 	anl	_P2_DIR,#0xdf
      000EB3 43 BD 20         [24] 4080 	orl	_P2_PU,#0x20
                                   4081 ;	main.c:796: pinMode(RxIRQ_PORT, RxIRQ_PIN, PIN_MODE_INPUT);
      000EB6 53 C6 FD         [24] 4082 	anl	_PORT_CFG,#0xfd
      000EB9 53 BA BF         [24] 4083 	anl	_P1_DIR,#0xbf
      000EBC 53 BB BF         [24] 4084 	anl	_P1_PU,#0xbf
                                   4085 ;	main.c:797: pinMode(PRG_PORT, PRG_PIN, PIN_MODE_INPUT_PULLUP);
      000EBF 85 C6 C6         [24] 4086 	mov	_PORT_CFG,_PORT_CFG
      000EC2 53 C2 BF         [24] 4087 	anl	_P4_DIR,#0xbf
      000EC5 43 C3 40         [24] 4088 	orl	_P4_PU,#0x40
                                   4089 ;	main.c:800: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
      000EC8 E5 C1            [12] 4090 	mov	a,_P4_IN
      000ECA 20 E6 0B         [24] 4091 	jb	acc.6,00451$
                                   4092 ;	main.c:801: runBootloader();
      000ECD 85 0E 82         [24] 4093 	mov	dpl,_runBootloader
      000ED0 85 0F 83         [24] 4094 	mov	dph,(_runBootloader + 1)
      000ED3 12 00 41         [24] 4095 	lcall	__sdcc_call_dptr
                                   4096 ;	main.c:803: pinMode(LED_PORT, LED_PIN, PIN_MODE_OUTPUT);
      000ED6 80 06            [24] 4097 	sjmp	00459$
      000ED8                       4098 00451$:
      000ED8 85 C6 C6         [24] 4099 	mov	_PORT_CFG,_PORT_CFG
      000EDB 43 C2 40         [24] 4100 	orl	_P4_DIR,#0x40
      000EDE                       4101 00459$:
                                   4102 ;	main.c:641: const uint8_t com_table[4] = {
      000EDE 90 08 04         [24] 4103 	mov	dptr,#_main_com_table_458752_484
      000EE1 74 03            [12] 4104 	mov	a,#0x03
      000EE3 F0               [24] 4105 	movx	@dptr,a
      000EE4 90 08 05         [24] 4106 	mov	dptr,#(_main_com_table_458752_484 + 0x0001)
      000EE7 14               [12] 4107 	dec	a
      000EE8 F0               [24] 4108 	movx	@dptr,a
      000EE9 90 08 06         [24] 4109 	mov	dptr,#(_main_com_table_458752_484 + 0x0002)
      000EEC 14               [12] 4110 	dec	a
      000EED F0               [24] 4111 	movx	@dptr,a
      000EEE 90 08 07         [24] 4112 	mov	dptr,#(_main_com_table_458752_484 + 0x0003)
      000EF1 E4               [12] 4113 	clr	a
      000EF2 F0               [24] 4114 	movx	@dptr,a
                                   4115 ;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      000EF3 E5 A0            [12] 4116 	mov	a,_P2
      000EF5 30 E6 06         [24] 4117 	jnb	acc.6,00552$
      000EF8 7E 01            [12] 4118 	mov	r6,#0x01
      000EFA 7F 00            [12] 4119 	mov	r7,#0x00
      000EFC 80 04            [24] 4120 	sjmp	00553$
      000EFE                       4121 00552$:
      000EFE 7E 00            [12] 4122 	mov	r6,#0x00
      000F00 7F 00            [12] 4123 	mov	r7,#0x00
      000F02                       4124 00553$:
      000F02 E5 A0            [12] 4125 	mov	a,_P2
      000F04 30 E7 06         [24] 4126 	jnb	acc.7,00554$
      000F07 7C 02            [12] 4127 	mov	r4,#0x02
      000F09 7D 00            [12] 4128 	mov	r5,#0x00
      000F0B 80 04            [24] 4129 	sjmp	00555$
      000F0D                       4130 00554$:
      000F0D 7C 00            [12] 4131 	mov	r4,#0x00
      000F0F 7D 00            [12] 4132 	mov	r5,#0x00
      000F11                       4133 00555$:
      000F11 EC               [12] 4134 	mov	a,r4
      000F12 4E               [12] 4135 	orl	a,r6
                                   4136 ;	main.c:648: return com_table[jumpers];
      000F13 24 04            [12] 4137 	add	a,#_main_com_table_458752_484
      000F15 F5 82            [12] 4138 	mov	dpl,a
      000F17 E4               [12] 4139 	clr	a
      000F18 34 08            [12] 4140 	addc	a,#(_main_com_table_458752_484 >> 8)
      000F1A F5 83            [12] 4141 	mov	dph,a
      000F1C E0               [24] 4142 	movx	a,@dptr
                                   4143 ;	main.c:807: opt_com_settings = readCOMsettings();
      000F1D 90 06 00         [24] 4144 	mov	dptr,#_opt_com_settings
      000F20 F0               [24] 4145 	movx	@dptr,a
                                   4146 ;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      000F21 E5 B0            [12] 4147 	mov	a,_P3
      000F23 C4               [12] 4148 	swap	a
      000F24 54 01            [12] 4149 	anl	a,#0x01
      000F26 90 08 03         [24] 4150 	mov	dptr,#_main___1310720041_262144_359
      000F29 B4 01 00         [24] 4151 	cjne	a,#0x01,00721$
      000F2C                       4152 00721$:
      000F2C E4               [12] 4153 	clr	a
      000F2D 33               [12] 4154 	rlc	a
      000F2E F0               [24] 4155 	movx	@dptr,a
                                   4156 ;	main.c:808: opt_wheel_enabled = readWheelsettings();
      000F2F 90 08 03         [24] 4157 	mov	dptr,#_main___1310720041_262144_359
      000F32 E0               [24] 4158 	movx	a,@dptr
      000F33 90 06 01         [24] 4159 	mov	dptr,#_opt_wheel_enabled
      000F36 F0               [24] 4160 	movx	@dptr,a
                                   4161 ;	main.c:658: const uint8_t rate_table[4] = {
      000F37 90 08 08         [24] 4162 	mov	dptr,#_main_rate_table_458752_490
      000F3A 74 14            [12] 4163 	mov	a,#0x14
      000F3C F0               [24] 4164 	movx	@dptr,a
      000F3D 90 08 09         [24] 4165 	mov	dptr,#(_main_rate_table_458752_490 + 0x0001)
      000F40 23               [12] 4166 	rl	a
      000F41 F0               [24] 4167 	movx	@dptr,a
      000F42 90 08 0A         [24] 4168 	mov	dptr,#(_main_rate_table_458752_490 + 0x0002)
      000F45 23               [12] 4169 	rl	a
      000F46 F0               [24] 4170 	movx	@dptr,a
      000F47 90 08 0B         [24] 4171 	mov	dptr,#(_main_rate_table_458752_490 + 0x0003)
      000F4A 74 64            [12] 4172 	mov	a,#0x64
      000F4C F0               [24] 4173 	movx	@dptr,a
                                   4174 ;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      000F4D E5 90            [12] 4175 	mov	a,_P1
      000F4F 30 E2 06         [24] 4176 	jnb	acc.2,00556$
      000F52 7E 01            [12] 4177 	mov	r6,#0x01
      000F54 7F 00            [12] 4178 	mov	r7,#0x00
      000F56 80 04            [24] 4179 	sjmp	00557$
      000F58                       4180 00556$:
      000F58 7E 00            [12] 4181 	mov	r6,#0x00
      000F5A 7F 00            [12] 4182 	mov	r7,#0x00
      000F5C                       4183 00557$:
      000F5C E5 90            [12] 4184 	mov	a,_P1
      000F5E 30 E4 06         [24] 4185 	jnb	acc.4,00558$
      000F61 7C 02            [12] 4186 	mov	r4,#0x02
      000F63 7D 00            [12] 4187 	mov	r5,#0x00
      000F65 80 04            [24] 4188 	sjmp	00559$
      000F67                       4189 00558$:
      000F67 7C 00            [12] 4190 	mov	r4,#0x00
      000F69 7D 00            [12] 4191 	mov	r5,#0x00
      000F6B                       4192 00559$:
      000F6B EC               [12] 4193 	mov	a,r4
      000F6C 4E               [12] 4194 	orl	a,r6
                                   4195 ;	main.c:665: return rate_table[jumpers];
      000F6D 24 08            [12] 4196 	add	a,#_main_rate_table_458752_490
      000F6F F5 82            [12] 4197 	mov	dpl,a
      000F71 E4               [12] 4198 	clr	a
      000F72 34 08            [12] 4199 	addc	a,#(_main_rate_table_458752_490 >> 8)
      000F74 F5 83            [12] 4200 	mov	dph,a
      000F76 E0               [24] 4201 	movx	a,@dptr
                                   4202 ;	main.c:809: opt_rate_settings = readRatesettings();
      000F77 FF               [12] 4203 	mov	r7,a
      000F78 90 06 02         [24] 4204 	mov	dptr,#_opt_rate_settings
      000F7B F0               [24] 4205 	movx	@dptr,a
                                   4206 ;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
      000F7C 90 06 00         [24] 4207 	mov	dptr,#_opt_com_settings
      000F7F E0               [24] 4208 	movx	a,@dptr
      000F80 FE               [12] 4209 	mov	r6,a
                                   4210 ;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      000F81 E5 A0            [12] 4211 	mov	a,_P2
      000F83 20 E5 08         [24] 4212 	jb	acc.5,00464$
                                   4213 ;	main.c:671: return USE_IRQX;
      000F86 90 08 02         [24] 4214 	mov	dptr,#_main___1310720045_262144_359
      000F89 74 01            [12] 4215 	mov	a,#0x01
      000F8B F0               [24] 4216 	movx	@dptr,a
      000F8C 80 13            [24] 4217 	sjmp	00468$
      000F8E                       4218 00464$:
                                   4219 ;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      000F8E EE               [12] 4220 	mov	a,r6
      000F8F 60 03            [24] 4221 	jz	00466$
      000F91 BE 02 08         [24] 4222 	cjne	r6,#0x02,00467$
      000F94                       4223 00466$:
                                   4224 ;	main.c:674: return USE_IRQ4;
      000F94 90 08 02         [24] 4225 	mov	dptr,#_main___1310720045_262144_359
      000F97 74 02            [12] 4226 	mov	a,#0x02
      000F99 F0               [24] 4227 	movx	@dptr,a
      000F9A 80 05            [24] 4228 	sjmp	00468$
      000F9C                       4229 00467$:
                                   4230 ;	main.c:676: return USE_IRQ3;
      000F9C 90 08 02         [24] 4231 	mov	dptr,#_main___1310720045_262144_359
      000F9F E4               [12] 4232 	clr	a
      000FA0 F0               [24] 4233 	movx	@dptr,a
                                   4234 ;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
      000FA1                       4235 00468$:
      000FA1 90 08 02         [24] 4236 	mov	dptr,#_main___1310720045_262144_359
      000FA4 E0               [24] 4237 	movx	a,@dptr
      000FA5 90 06 03         [24] 4238 	mov	dptr,#_opt_irq_settings
      000FA8 F0               [24] 4239 	movx	@dptr,a
                                   4240 ;	main.c:813: timer0_limit = (uint8_t)((2000UL + opt_rate_settings) / (opt_rate_settings << 1U));
      000FA9 8F 03            [24] 4241 	mov	ar3,r7
      000FAB E4               [12] 4242 	clr	a
      000FAC FC               [12] 4243 	mov	r4,a
      000FAD FD               [12] 4244 	mov	r5,a
      000FAE FE               [12] 4245 	mov	r6,a
      000FAF 74 D0            [12] 4246 	mov	a,#0xd0
      000FB1 2B               [12] 4247 	add	a,r3
      000FB2 FB               [12] 4248 	mov	r3,a
      000FB3 74 07            [12] 4249 	mov	a,#0x07
      000FB5 3C               [12] 4250 	addc	a,r4
      000FB6 FC               [12] 4251 	mov	r4,a
      000FB7 E4               [12] 4252 	clr	a
      000FB8 3D               [12] 4253 	addc	a,r5
      000FB9 FD               [12] 4254 	mov	r5,a
      000FBA E4               [12] 4255 	clr	a
      000FBB 3E               [12] 4256 	addc	a,r6
      000FBC FE               [12] 4257 	mov	r6,a
      000FBD 7A 00            [12] 4258 	mov	r2,#0x00
      000FBF EF               [12] 4259 	mov	a,r7
      000FC0 2F               [12] 4260 	add	a,r7
      000FC1 FF               [12] 4261 	mov	r7,a
      000FC2 EA               [12] 4262 	mov	a,r2
      000FC3 33               [12] 4263 	rlc	a
      000FC4 FA               [12] 4264 	mov	r2,a
      000FC5 90 0D 9A         [24] 4265 	mov	dptr,#__divulong_PARM_2
      000FC8 EF               [12] 4266 	mov	a,r7
      000FC9 F0               [24] 4267 	movx	@dptr,a
      000FCA EA               [12] 4268 	mov	a,r2
      000FCB A3               [24] 4269 	inc	dptr
      000FCC F0               [24] 4270 	movx	@dptr,a
      000FCD E4               [12] 4271 	clr	a
      000FCE A3               [24] 4272 	inc	dptr
      000FCF F0               [24] 4273 	movx	@dptr,a
      000FD0 A3               [24] 4274 	inc	dptr
      000FD1 F0               [24] 4275 	movx	@dptr,a
      000FD2 8B 82            [24] 4276 	mov	dpl,r3
      000FD4 8C 83            [24] 4277 	mov	dph,r4
      000FD6 8D F0            [24] 4278 	mov	b,r5
      000FD8 EE               [12] 4279 	mov	a,r6
      000FD9 12 33 62         [24] 4280 	lcall	__divulong
      000FDC AC 82            [24] 4281 	mov	r4,dpl
      000FDE AD 83            [24] 4282 	mov	r5,dph
      000FE0 90 07 A1         [24] 4283 	mov	dptr,#_timer0_limit
      000FE3 EC               [12] 4284 	mov	a,r4
      000FE4 F0               [24] 4285 	movx	@dptr,a
                                   4286 ;	main.c:820: TH0 = (uint8_t)(TIMER0_CONST >> 8);
      000FE5 75 8C F0         [24] 4287 	mov	_TH0,#0xf0
                                   4288 ;	main.c:821: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
      000FE8 75 8A 60         [24] 4289 	mov	_TL0,#0x60
                                   4290 ;	main.c:822: TF0 = 0;
                                   4291 ;	assignBit
      000FEB C2 8D            [12] 4292 	clr	_TF0
                                   4293 ;	main.c:823: TR0 = 1;
                                   4294 ;	assignBit
      000FED D2 8C            [12] 4295 	setb	_TR0
                                   4296 ;	main.c:827: TR2 = 0;         // останов таймера
                                   4297 ;	assignBit
      000FEF C2 CA            [12] 4298 	clr	_TR2
                                   4299 ;	main.c:828: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
      000FF1 75 C9 00         [24] 4300 	mov	_T2MOD,#0x00
                                   4301 ;	main.c:829: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
      000FF4 75 CB FF         [24] 4302 	mov	_RCAP2H,#0xff
                                   4303 ;	main.c:830: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
      000FF7 75 CA 9C         [24] 4304 	mov	_RCAP2L,#0x9c
                                   4305 ;	main.c:831: TH2 = RCAP2H;
      000FFA 85 CB CD         [24] 4306 	mov	_TH2,_RCAP2H
                                   4307 ;	main.c:832: TL2 = RCAP2L;
      000FFD 85 CA CC         [24] 4308 	mov	_TL2,_RCAP2L
                                   4309 ;	main.c:833: TF2 = 0;
                                   4310 ;	assignBit
      001000 C2 CF            [12] 4311 	clr	_TF2
                                   4312 ;	main.c:837: T3_COUNT = 0;           // Сброс счетчика
      001002 E4               [12] 4313 	clr	a
      001003 F5 A4            [12] 4314 	mov	((_T3_COUNT >> 0) & 0xFF),a
      001005 F5 A5            [12] 4315 	mov	((_T3_COUNT >> 8) & 0xFF),a
                                   4316 ;	main.c:838: T3_END = LED_CONST;     // Установка периода
                                   4317 ;	1-genFromRTrack replaced	mov	((_T3_END >> 0) & 0xFF),#0x00
      001007 F5 A6            [12] 4318 	mov	((_T3_END >> 0) & 0xFF),a
      001009 75 A7 FA         [24] 4319 	mov	((_T3_END >> 8) & 0xFF),#0xfa
                                   4320 ;	main.c:839: T3_CTRL |= bT3_CLR_ALL;     // Сброс всех регистров
      00100C 43 AA 02         [24] 4321 	orl	_T3_CTRL,#0x02
                                   4322 ;	main.c:840: T3_CTRL &= ~bT3_CLR_ALL;    // Завершение сброса
      00100F 53 AA FD         [24] 4323 	anl	_T3_CTRL,#0xfd
                                   4324 ;	main.c:841: T3_SETUP |= bT3_IE_END;     // Разрешение прерывания по достижению END
      001012 43 A3 80         [24] 4325 	orl	_T3_SETUP,#0x80
                                   4326 ;	main.c:842: T3_CTRL &= ~bT3_MOD_CAP;    // Режим таймера (не захвата)
      001015 53 AA FE         [24] 4327 	anl	_T3_CTRL,#0xfe
                                   4328 ;	main.c:846: IT0 = 1; // Активен по спаду сигнала
                                   4329 ;	assignBit
      001018 D2 88            [12] 4330 	setb	_IT0
                                   4331 ;	main.c:847: IE0 = 0; // Сброс флага прерывания INT0
                                   4332 ;	assignBit
      00101A C2 89            [12] 4333 	clr	_IE0
                                   4334 ;	main.c:850: uart_tx_r = 0; uart_tx_w = 0;
      00101C 90 07 87         [24] 4335 	mov	dptr,#_uart_tx_r
      00101F E4               [12] 4336 	clr	a
      001020 F0               [24] 4337 	movx	@dptr,a
      001021 90 07 88         [24] 4338 	mov	dptr,#_uart_tx_w
      001024 F0               [24] 4339 	movx	@dptr,a
                                   4340 ;	main.c:851: uart_rx_r = 0; uart_rx_w = 0;
      001025 90 07 99         [24] 4341 	mov	dptr,#_uart_rx_r
      001028 F0               [24] 4342 	movx	@dptr,a
      001029 90 07 9A         [24] 4343 	mov	dptr,#_uart_rx_w
      00102C F0               [24] 4344 	movx	@dptr,a
                                   4345 ;	main.c:852: uart_rx_buf_count = 0;
      00102D 90 07 9B         [24] 4346 	mov	dptr,#_uart_rx_buf_count
      001030 F0               [24] 4347 	movx	@dptr,a
                                   4348 ;	main.c:855: PIN_FUNC |= bUART0_PIN_X;
      001031 43 CE 10         [24] 4349 	orl	_PIN_FUNC,#0x10
                                   4350 ;	main.c:858: SM0 = 0;
                                   4351 ;	assignBit
      001034 C2 9F            [12] 4352 	clr	_SM0
                                   4353 ;	main.c:859: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
                                   4354 ;	assignBit
      001036 D2 9E            [12] 4355 	setb	_SM1
                                   4356 ;	main.c:860: SM2 = 0;
                                   4357 ;	assignBit
      001038 C2 9D            [12] 4358 	clr	_SM2
                                   4359 ;	main.c:861: REN = 1; // Разрешить прием
                                   4360 ;	assignBit
      00103A D2 9C            [12] 4361 	setb	_REN
                                   4362 ;	main.c:864: PCON |= SMOD;
      00103C 43 87 80         [24] 4363 	orl	_PCON,#0x80
                                   4364 ;	main.c:867: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
      00103F 74 0F            [12] 4365 	mov	a,#0x0f
      001041 55 89            [12] 4366 	anl	a,_TMOD
      001043 44 20            [12] 4367 	orl	a,#0x20
      001045 F5 89            [12] 4368 	mov	_TMOD,a
                                   4369 ;	main.c:868: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Источник системная частота
      001047 43 C9 A0         [24] 4370 	orl	_T2MOD,#0xa0
                                   4371 ;	main.c:872: TH1 = (uint8_t)(256 - ((((uint32_t)FREQ_SYS / 8) / UART_BAUDRATE + 1) / 2));
      00104A 75 8D E6         [24] 4372 	mov	_TH1,#0xe6
                                   4373 ;	main.c:874: TR1 = 1; // Запуск Timer1
                                   4374 ;	assignBit
      00104D D2 8E            [12] 4375 	setb	_TR1
                                   4376 ;	main.c:877: TI = 1;
                                   4377 ;	assignBit
      00104F D2 99            [12] 4378 	setb	_TI
                                   4379 ;	main.c:881: ET0 = 1; // Разрешить прерывания таймера 0
                                   4380 ;	assignBit
      001051 D2 A9            [12] 4381 	setb	_ET0
                                   4382 ;	main.c:882: ET2 = 1; // Разрешить прерывания таймера 2
                                   4383 ;	assignBit
      001053 D2 AD            [12] 4384 	setb	_ET2
                                   4385 ;	main.c:883: IE_TMR3 = 1; // Разрешить прерывания таймера 3
                                   4386 ;	assignBit
      001055 D2 E9            [12] 4387 	setb	_IE_TMR3
                                   4388 ;	main.c:884: EX0 = 1; // Разрешить прерывания INT0
                                   4389 ;	assignBit
      001057 D2 A8            [12] 4390 	setb	_EX0
                                   4391 ;	main.c:885: ES = 0;  // Разрешить прерывание UART
                                   4392 ;	assignBit
      001059 C2 AC            [12] 4393 	clr	_ES
                                   4394 ;	main.c:887: SAFE_MOD = 0x55;
      00105B 75 A1 55         [24] 4395 	mov	_SAFE_MOD,#0x55
                                   4396 ;	main.c:888: SAFE_MOD = 0xAA;
      00105E 75 A1 AA         [24] 4397 	mov	_SAFE_MOD,#0xaa
                                   4398 ;	main.c:890: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
      001061 75 EB C3         [24] 4399 	mov	_WAKE_CTRL,#0xc3
                                   4400 ;	main.c:897: GLOBAL_CFG |= bWDOG_EN;
      001064 43 B1 01         [24] 4401 	orl	_GLOBAL_CFG,#0x01
                                   4402 ;	main.c:899: SAFE_MOD = 0xFF;
      001067 75 A1 FF         [24] 4403 	mov	_SAFE_MOD,#0xff
                                   4404 ;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      00106A 74 30            [12] 4405 	mov	a,#0x30
      00106C 55 87            [12] 4406 	anl	a,_PCON
      00106E C4               [12] 4407 	swap	a
      00106F 54 0F            [12] 4408 	anl	a,#0x0f
                                   4409 ;	main.c:905: switch (get_reset_source()) {
      001071 FF               [12] 4410 	mov	r7,a
      001072 FE               [12] 4411 	mov	r6,a
      001073 24 FC            [12] 4412 	add	a,#0xff - 0x03
      001075 40 2D            [24] 4413 	jc	00474$
      001077 EE               [12] 4414 	mov	a,r6
      001078 2E               [12] 4415 	add	a,r6
                                   4416 ;	main.c:906: case 0b10: // 10 - Переполнение watchdog
      001079 90 10 7D         [24] 4417 	mov	dptr,#00729$
      00107C 73               [24] 4418 	jmp	@a+dptr
      00107D                       4419 00729$:
      00107D 80 17            [24] 4420 	sjmp	00472$
      00107F 80 15            [24] 4421 	sjmp	00472$
      001081 80 02            [24] 4422 	sjmp	00470$
      001083 80 08            [24] 4423 	sjmp	00471$
      001085                       4424 00470$:
                                   4425 ;	main.c:907: device_init = true;
      001085 90 07 9E         [24] 4426 	mov	dptr,#_device_init
      001088 74 01            [12] 4427 	mov	a,#0x01
      00108A F0               [24] 4428 	movx	@dptr,a
                                   4429 ;	main.c:908: break;
                                   4430 ;	main.c:909: case 0b11: // 11 - Аппаратный сброс
      00108B 80 17            [24] 4431 	sjmp	00474$
      00108D                       4432 00471$:
                                   4433 ;	main.c:910: led_on(); // Сигнализируем исправность светодиода
      00108D 53 C0 BF         [24] 4434 	anl	_P4_OUT,#0xbf
                                   4435 ;	main.c:911: delay(50);
      001090 90 00 32         [24] 4436 	mov	dptr,#0x0032
      001093 12 16 3C         [24] 4437 	lcall	_delay
                                   4438 ;	main.c:914: case 0b01: // 01 - Сброс при включении питания
      001096                       4439 00472$:
                                   4440 ;	main.c:915: delay(50); // Ждём окончания переходных процессов
      001096 90 00 32         [24] 4441 	mov	dptr,#0x0032
      001099 12 16 3C         [24] 4442 	lcall	_delay
                                   4443 ;	main.c:916: led_off();
      00109C 43 C0 40         [24] 4444 	orl	_P4_OUT,#0x40
                                   4445 ;	main.c:917: device_init = false;
      00109F 90 07 9E         [24] 4446 	mov	dptr,#_device_init
      0010A2 E4               [12] 4447 	clr	a
      0010A3 F0               [24] 4448 	movx	@dptr,a
                                   4449 ;	main.c:919: }
      0010A4                       4450 00474$:
                                   4451 ;	main.c:922: EA = 1;
                                   4452 ;	assignBit
      0010A4 D2 AF            [12] 4453 	setb	_EA
                                   4454 ;	main.c:536: CRITICAL_SECTION (
      0010A6 A2 AF            [12] 4455 	mov	c,_EA
      0010A8 E4               [12] 4456 	clr	a
      0010A9 33               [12] 4457 	rlc	a
      0010AA FF               [12] 4458 	mov	r7,a
                                   4459 ;	assignBit
      0010AB C2 AF            [12] 4460 	clr	_EA
      0010AD 90 07 04         [24] 4461 	mov	dptr,#_spi_tx_buf_w
      0010B0 E4               [12] 4462 	clr	a
      0010B1 F0               [24] 4463 	movx	@dptr,a
      0010B2 90 07 05         [24] 4464 	mov	dptr,#_spi_tx_buf_r
      0010B5 F0               [24] 4465 	movx	@dptr,a
      0010B6 90 07 06         [24] 4466 	mov	dptr,#_spi_tx_buf_count
      0010B9 F0               [24] 4467 	movx	@dptr,a
      0010BA 90 07 9E         [24] 4468 	mov	dptr,#_device_init
      0010BD E0               [24] 4469 	movx	a,@dptr
      0010BE 70 35            [24] 4470 	jnz	00477$
      0010C0 43 90 20         [24] 4471 	orl	_P1,#0x20
      0010C3 90 00 01         [24] 4472 	mov	dptr,#0x0001
      0010C6 C0 07            [24] 4473 	push	ar7
      0010C8 12 15 E7         [24] 4474 	lcall	_delayUs
      0010CB D0 07            [24] 4475 	pop	ar7
      0010CD 53 90 DF         [24] 4476 	anl	_P1,#0xdf
      0010D0 90 06 03         [24] 4477 	mov	dptr,#_opt_irq_settings
      0010D3 E0               [24] 4478 	movx	a,@dptr
      0010D4 FE               [12] 4479 	mov	r6,a
      0010D5 90 06 00         [24] 4480 	mov	dptr,#_opt_com_settings
      0010D8 E0               [24] 4481 	movx	a,@dptr
                                   4482 ;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
      0010D9 54 03            [12] 4483 	anl	a,#0x03
      0010DB FD               [12] 4484 	mov	r5,a
                                   4485 ;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      0010DC BE 01 06         [24] 4486 	cjne	r6,#0x01,00560$
      0010DF 7C 04            [12] 4487 	mov	r4,#0x04
      0010E1 7E 00            [12] 4488 	mov	r6,#0x00
      0010E3 80 04            [24] 4489 	sjmp	00561$
      0010E5                       4490 00560$:
      0010E5 7C 00            [12] 4491 	mov	r4,#0x00
      0010E7 7E 00            [12] 4492 	mov	r6,#0x00
      0010E9                       4493 00561$:
      0010E9 EC               [12] 4494 	mov	a,r4
      0010EA 42 05            [12] 4495 	orl	ar5,a
                                   4496 ;	main.c:584: spi_send(config_data);
      0010EC 8D 82            [24] 4497 	mov	dpl,r5
      0010EE C0 07            [24] 4498 	push	ar7
      0010F0 12 04 8F         [24] 4499 	lcall	_spi_send
      0010F3 D0 07            [24] 4500 	pop	ar7
                                   4501 ;	main.c:536: CRITICAL_SECTION (
      0010F5                       4502 00477$:
      0010F5 90 00 01         [24] 4503 	mov	dptr,#0x0001
      0010F8 C0 07            [24] 4504 	push	ar7
      0010FA 12 15 E7         [24] 4505 	lcall	_delayUs
      0010FD D0 07            [24] 4506 	pop	ar7
      0010FF 53 C0 7F         [24] 4507 	anl	_P4_OUT,#0x7f
                                   4508 ;	assignBit
      001102 EF               [12] 4509 	mov	a,r7
      001103 24 FF            [12] 4510 	add	a,#0xff
      001105 92 AF            [24] 4511 	mov	_EA,c
                                   4512 ;	main.c:555: while (!device_init) {
      001107                       4513 00481$:
      001107 90 07 9E         [24] 4514 	mov	dptr,#_device_init
      00110A E0               [24] 4515 	movx	a,@dptr
      00110B 60 FA            [24] 4516 	jz	00481$
                                   4517 ;	main.c:752: resetHubDevices(0);
      00110D 75 82 00         [24] 4518 	mov	dpl,#0x00
      001110 12 21 F0         [24] 4519 	lcall	_resetHubDevices
                                   4520 ;	main.c:753: resetHubDevices(1);
      001113 75 82 01         [24] 4521 	mov	dpl,#0x01
      001116 12 21 F0         [24] 4522 	lcall	_resetHubDevices
                                   4523 ;	main.c:754: initUSB_Host();
      001119 12 18 B5         [24] 4524 	lcall	_initUSB_Host
                                   4525 ;	main.c:930: m_wheel = opt_wheel_enabled;
      00111C 90 06 01         [24] 4526 	mov	dptr,#_opt_wheel_enabled
      00111F E0               [24] 4527 	movx	a,@dptr
      001120 90 06 04         [24] 4528 	mov	dptr,#_m_wheel
      001123 F0               [24] 4529 	movx	@dptr,a
                                   4530 ;	main.c:931: mouse_enabled = get_mouse_power_state();
      001124 90 07 9D         [24] 4531 	mov	dptr,#_mouse_enabled
      001127 74 04            [12] 4532 	mov	a,#0x04
      001129 55 B0            [12] 4533 	anl	a,_P3
      00112B F0               [24] 4534 	movx	@dptr,a
                                   4535 ;	main.c:932: mouse_start = true;
      00112C 90 07 9C         [24] 4536 	mov	dptr,#_mouse_start
      00112F 74 01            [12] 4537 	mov	a,#0x01
      001131 F0               [24] 4538 	movx	@dptr,a
                                   4539 ;	main.c:933: fatal_error = false;
      001132 90 07 A0         [24] 4540 	mov	dptr,#_fatal_error
      001135 E4               [12] 4541 	clr	a
      001136 F0               [24] 4542 	movx	@dptr,a
                                   4543 ;	main.c:944: DEBUG_OUT("IRQ select: %c\n", opt_irq_settings?(opt_irq_settings==1?'X':'4'):'3');
      001137                       4544 00548$:
                                   4545 ;	main.c:947: if (!fatal_error) {
      001137 90 07 A0         [24] 4546 	mov	dptr,#_fatal_error
      00113A E0               [24] 4547 	movx	a,@dptr
                                   4548 ;	main.c:948: WDOG_COUNT = 0;
      00113B 70 02            [24] 4549 	jnz	00102$
      00113D F5 FF            [12] 4550 	mov	_WDOG_COUNT,a
      00113F                       4551 00102$:
                                   4552 ;	main.c:951: if (!mouse_enabled) { // Мышь выключена
      00113F 90 07 9D         [24] 4553 	mov	dptr,#_mouse_enabled
      001142 E0               [24] 4554 	movx	a,@dptr
      001143 70 15            [24] 4555 	jnz	00106$
                                   4556 ;	main.c:953: mouse_enabled = get_mouse_power_state();
      001145 90 07 9D         [24] 4557 	mov	dptr,#_mouse_enabled
      001148 74 04            [12] 4558 	mov	a,#0x04
      00114A 55 B0            [12] 4559 	anl	a,_P3
      00114C F0               [24] 4560 	movx	@dptr,a
                                   4561 ;	main.c:954: if (mouse_enabled) {
      00114D E0               [24] 4562 	movx	a,@dptr
      00114E 60 0A            [24] 4563 	jz	00106$
                                   4564 ;	main.c:956: mouse_start = true;
      001150 90 07 9C         [24] 4565 	mov	dptr,#_mouse_start
      001153 74 01            [12] 4566 	mov	a,#0x01
      001155 F0               [24] 4567 	movx	@dptr,a
                                   4568 ;	main.c:957: allow_send_data = true;
      001156 90 07 9F         [24] 4569 	mov	dptr,#_allow_send_data
      001159 F0               [24] 4570 	movx	@dptr,a
      00115A                       4571 00106$:
                                   4572 ;	main.c:961: processUart();
      00115A 12 04 2E         [24] 4573 	lcall	_processUart
                                   4574 ;	main.c:696: checkRootHubConnections();
      00115D 12 32 B8         [24] 4575 	lcall	_checkRootHubConnections
                                   4576 ;	main.c:699: pollHIDdevice(&buttons, &dx, &dy, &dw);
      001160 90 0B 57         [24] 4577 	mov	dptr,#_pollHIDdevice_PARM_2
      001163 74 20            [12] 4578 	mov	a,#_main_dx_393216_517
      001165 F0               [24] 4579 	movx	@dptr,a
      001166 74 08            [12] 4580 	mov	a,#(_main_dx_393216_517 >> 8)
      001168 A3               [24] 4581 	inc	dptr
      001169 F0               [24] 4582 	movx	@dptr,a
      00116A E4               [12] 4583 	clr	a
      00116B A3               [24] 4584 	inc	dptr
      00116C F0               [24] 4585 	movx	@dptr,a
      00116D 90 0B 5A         [24] 4586 	mov	dptr,#_pollHIDdevice_PARM_3
      001170 74 24            [12] 4587 	mov	a,#_main_dy_393216_517
      001172 F0               [24] 4588 	movx	@dptr,a
      001173 74 08            [12] 4589 	mov	a,#(_main_dy_393216_517 >> 8)
      001175 A3               [24] 4590 	inc	dptr
      001176 F0               [24] 4591 	movx	@dptr,a
      001177 E4               [12] 4592 	clr	a
      001178 A3               [24] 4593 	inc	dptr
      001179 F0               [24] 4594 	movx	@dptr,a
      00117A 90 0B 5D         [24] 4595 	mov	dptr,#_pollHIDdevice_PARM_4
      00117D 74 28            [12] 4596 	mov	a,#_main_dw_393216_517
      00117F F0               [24] 4597 	movx	@dptr,a
      001180 74 08            [12] 4598 	mov	a,#(_main_dw_393216_517 >> 8)
      001182 A3               [24] 4599 	inc	dptr
      001183 F0               [24] 4600 	movx	@dptr,a
      001184 E4               [12] 4601 	clr	a
      001185 A3               [24] 4602 	inc	dptr
      001186 F0               [24] 4603 	movx	@dptr,a
      001187 90 08 1C         [24] 4604 	mov	dptr,#_main_buttons_393216_517
      00118A 75 F0 00         [24] 4605 	mov	b,#0x00
      00118D 12 22 98         [24] 4606 	lcall	_pollHIDdevice
                                   4607 ;	main.c:702: m_bt = (uint8_t)(buttons & 0x7);
      001190 90 08 1C         [24] 4608 	mov	dptr,#_main_buttons_393216_517
      001193 E0               [24] 4609 	movx	a,@dptr
      001194 FC               [12] 4610 	mov	r4,a
      001195 A3               [24] 4611 	inc	dptr
      001196 E0               [24] 4612 	movx	a,@dptr
      001197 A3               [24] 4613 	inc	dptr
      001198 E0               [24] 4614 	movx	a,@dptr
      001199 A3               [24] 4615 	inc	dptr
      00119A E0               [24] 4616 	movx	a,@dptr
      00119B 90 08 15         [24] 4617 	mov	dptr,#_main_m_bt_393216_517
      00119E 74 07            [12] 4618 	mov	a,#0x07
      0011A0 5C               [12] 4619 	anl	a,r4
      0011A1 F0               [24] 4620 	movx	@dptr,a
                                   4621 ;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
      0011A2 90 08 16         [24] 4622 	mov	dptr,#_main_m_cx_393216_517
      0011A5 E0               [24] 4623 	movx	a,@dptr
      0011A6 FE               [12] 4624 	mov	r6,a
      0011A7 A3               [24] 4625 	inc	dptr
      0011A8 E0               [24] 4626 	movx	a,@dptr
      0011A9 FF               [12] 4627 	mov	r7,a
      0011AA 90 08 20         [24] 4628 	mov	dptr,#_main_dx_393216_517
      0011AD E0               [24] 4629 	movx	a,@dptr
      0011AE FC               [12] 4630 	mov	r4,a
      0011AF A3               [24] 4631 	inc	dptr
      0011B0 E0               [24] 4632 	movx	a,@dptr
      0011B1 FD               [12] 4633 	mov	r5,a
      0011B2 A3               [24] 4634 	inc	dptr
      0011B3 E0               [24] 4635 	movx	a,@dptr
      0011B4 FA               [12] 4636 	mov	r2,a
      0011B5 A3               [24] 4637 	inc	dptr
      0011B6 E0               [24] 4638 	movx	a,@dptr
      0011B7 FB               [12] 4639 	mov	r3,a
      0011B8 8E 00            [24] 4640 	mov	ar0,r6
      0011BA EF               [12] 4641 	mov	a,r7
      0011BB F9               [12] 4642 	mov	r1,a
      0011BC 33               [12] 4643 	rlc	a
      0011BD 95 E0            [12] 4644 	subb	a,acc
      0011BF FE               [12] 4645 	mov	r6,a
      0011C0 FF               [12] 4646 	mov	r7,a
      0011C1 E8               [12] 4647 	mov	a,r0
      0011C2 2C               [12] 4648 	add	a,r4
      0011C3 FC               [12] 4649 	mov	r4,a
      0011C4 E9               [12] 4650 	mov	a,r1
      0011C5 3D               [12] 4651 	addc	a,r5
      0011C6 FD               [12] 4652 	mov	r5,a
      0011C7 EE               [12] 4653 	mov	a,r6
      0011C8 3A               [12] 4654 	addc	a,r2
      0011C9 FE               [12] 4655 	mov	r6,a
      0011CA EF               [12] 4656 	mov	a,r7
      0011CB 3B               [12] 4657 	addc	a,r3
      0011CC FF               [12] 4658 	mov	r7,a
                                   4659 ;	main.c:358: if (val < (int32_t)min) return min;
      0011CD C3               [12] 4660 	clr	c
      0011CE EC               [12] 4661 	mov	a,r4
      0011CF 94 68            [12] 4662 	subb	a,#0x68
      0011D1 ED               [12] 4663 	mov	a,r5
      0011D2 94 C5            [12] 4664 	subb	a,#0xc5
      0011D4 EE               [12] 4665 	mov	a,r6
      0011D5 94 FF            [12] 4666 	subb	a,#0xff
      0011D7 EF               [12] 4667 	mov	a,r7
      0011D8 64 80            [12] 4668 	xrl	a,#0x80
      0011DA 94 7F            [12] 4669 	subb	a,#0x7f
      0011DC 50 0C            [24] 4670 	jnc	00489$
      0011DE 90 08 12         [24] 4671 	mov	dptr,#_main___1310720003_393216_517
      0011E1 74 68            [12] 4672 	mov	a,#0x68
      0011E3 F0               [24] 4673 	movx	@dptr,a
      0011E4 74 C5            [12] 4674 	mov	a,#0xc5
      0011E6 A3               [24] 4675 	inc	dptr
      0011E7 F0               [24] 4676 	movx	@dptr,a
      0011E8 80 28            [24] 4677 	sjmp	00492$
      0011EA                       4678 00489$:
                                   4679 ;	main.c:359: if (val > (int32_t)max) return max;
      0011EA C3               [12] 4680 	clr	c
      0011EB 74 98            [12] 4681 	mov	a,#0x98
      0011ED 9C               [12] 4682 	subb	a,r4
      0011EE 74 3A            [12] 4683 	mov	a,#0x3a
      0011F0 9D               [12] 4684 	subb	a,r5
      0011F1 E4               [12] 4685 	clr	a
      0011F2 9E               [12] 4686 	subb	a,r6
      0011F3 74 80            [12] 4687 	mov	a,#(0x00 ^ 0x80)
      0011F5 8F F0            [24] 4688 	mov	b,r7
      0011F7 63 F0 80         [24] 4689 	xrl	b,#0x80
      0011FA 95 F0            [12] 4690 	subb	a,b
      0011FC 50 0C            [24] 4691 	jnc	00491$
      0011FE 90 08 12         [24] 4692 	mov	dptr,#_main___1310720003_393216_517
      001201 74 98            [12] 4693 	mov	a,#0x98
      001203 F0               [24] 4694 	movx	@dptr,a
      001204 74 3A            [12] 4695 	mov	a,#0x3a
      001206 A3               [24] 4696 	inc	dptr
      001207 F0               [24] 4697 	movx	@dptr,a
      001208 80 08            [24] 4698 	sjmp	00492$
      00120A                       4699 00491$:
                                   4700 ;	main.c:360: return (int16_t)val;
      00120A 90 08 12         [24] 4701 	mov	dptr,#_main___1310720003_393216_517
      00120D EC               [12] 4702 	mov	a,r4
      00120E F0               [24] 4703 	movx	@dptr,a
      00120F ED               [12] 4704 	mov	a,r5
      001210 A3               [24] 4705 	inc	dptr
      001211 F0               [24] 4706 	movx	@dptr,a
                                   4707 ;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
      001212                       4708 00492$:
      001212 90 08 12         [24] 4709 	mov	dptr,#_main___1310720003_393216_517
      001215 E0               [24] 4710 	movx	a,@dptr
      001216 FE               [12] 4711 	mov	r6,a
      001217 A3               [24] 4712 	inc	dptr
      001218 E0               [24] 4713 	movx	a,@dptr
      001219 FF               [12] 4714 	mov	r7,a
      00121A 90 08 16         [24] 4715 	mov	dptr,#_main_m_cx_393216_517
      00121D EE               [12] 4716 	mov	a,r6
      00121E F0               [24] 4717 	movx	@dptr,a
      00121F EF               [12] 4718 	mov	a,r7
      001220 A3               [24] 4719 	inc	dptr
      001221 F0               [24] 4720 	movx	@dptr,a
      001222 90 08 20         [24] 4721 	mov	dptr,#_main_dx_393216_517
      001225 E4               [12] 4722 	clr	a
      001226 F0               [24] 4723 	movx	@dptr,a
      001227 A3               [24] 4724 	inc	dptr
      001228 F0               [24] 4725 	movx	@dptr,a
      001229 A3               [24] 4726 	inc	dptr
      00122A F0               [24] 4727 	movx	@dptr,a
      00122B A3               [24] 4728 	inc	dptr
      00122C F0               [24] 4729 	movx	@dptr,a
                                   4730 ;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
      00122D 90 08 18         [24] 4731 	mov	dptr,#_main_m_cy_393216_517
      001230 E0               [24] 4732 	movx	a,@dptr
      001231 FE               [12] 4733 	mov	r6,a
      001232 A3               [24] 4734 	inc	dptr
      001233 E0               [24] 4735 	movx	a,@dptr
      001234 FF               [12] 4736 	mov	r7,a
      001235 90 08 24         [24] 4737 	mov	dptr,#_main_dy_393216_517
      001238 E0               [24] 4738 	movx	a,@dptr
      001239 FC               [12] 4739 	mov	r4,a
      00123A A3               [24] 4740 	inc	dptr
      00123B E0               [24] 4741 	movx	a,@dptr
      00123C FD               [12] 4742 	mov	r5,a
      00123D A3               [24] 4743 	inc	dptr
      00123E E0               [24] 4744 	movx	a,@dptr
      00123F FA               [12] 4745 	mov	r2,a
      001240 A3               [24] 4746 	inc	dptr
      001241 E0               [24] 4747 	movx	a,@dptr
      001242 FB               [12] 4748 	mov	r3,a
      001243 8E 00            [24] 4749 	mov	ar0,r6
      001245 EF               [12] 4750 	mov	a,r7
      001246 F9               [12] 4751 	mov	r1,a
      001247 33               [12] 4752 	rlc	a
      001248 95 E0            [12] 4753 	subb	a,acc
      00124A FE               [12] 4754 	mov	r6,a
      00124B FF               [12] 4755 	mov	r7,a
      00124C E8               [12] 4756 	mov	a,r0
      00124D 2C               [12] 4757 	add	a,r4
      00124E FC               [12] 4758 	mov	r4,a
      00124F E9               [12] 4759 	mov	a,r1
      001250 3D               [12] 4760 	addc	a,r5
      001251 FD               [12] 4761 	mov	r5,a
      001252 EE               [12] 4762 	mov	a,r6
      001253 3A               [12] 4763 	addc	a,r2
      001254 FE               [12] 4764 	mov	r6,a
      001255 EF               [12] 4765 	mov	a,r7
      001256 3B               [12] 4766 	addc	a,r3
      001257 FF               [12] 4767 	mov	r7,a
                                   4768 ;	main.c:358: if (val < (int32_t)min) return min;
      001258 C3               [12] 4769 	clr	c
      001259 EC               [12] 4770 	mov	a,r4
      00125A 94 68            [12] 4771 	subb	a,#0x68
      00125C ED               [12] 4772 	mov	a,r5
      00125D 94 C5            [12] 4773 	subb	a,#0xc5
      00125F EE               [12] 4774 	mov	a,r6
      001260 94 FF            [12] 4775 	subb	a,#0xff
      001262 EF               [12] 4776 	mov	a,r7
      001263 64 80            [12] 4777 	xrl	a,#0x80
      001265 94 7F            [12] 4778 	subb	a,#0x7f
      001267 50 0C            [24] 4779 	jnc	00494$
      001269 90 08 10         [24] 4780 	mov	dptr,#_main___1310720008_393216_517
      00126C 74 68            [12] 4781 	mov	a,#0x68
      00126E F0               [24] 4782 	movx	@dptr,a
      00126F 74 C5            [12] 4783 	mov	a,#0xc5
      001271 A3               [24] 4784 	inc	dptr
      001272 F0               [24] 4785 	movx	@dptr,a
      001273 80 28            [24] 4786 	sjmp	00497$
      001275                       4787 00494$:
                                   4788 ;	main.c:359: if (val > (int32_t)max) return max;
      001275 C3               [12] 4789 	clr	c
      001276 74 98            [12] 4790 	mov	a,#0x98
      001278 9C               [12] 4791 	subb	a,r4
      001279 74 3A            [12] 4792 	mov	a,#0x3a
      00127B 9D               [12] 4793 	subb	a,r5
      00127C E4               [12] 4794 	clr	a
      00127D 9E               [12] 4795 	subb	a,r6
      00127E 74 80            [12] 4796 	mov	a,#(0x00 ^ 0x80)
      001280 8F F0            [24] 4797 	mov	b,r7
      001282 63 F0 80         [24] 4798 	xrl	b,#0x80
      001285 95 F0            [12] 4799 	subb	a,b
      001287 50 0C            [24] 4800 	jnc	00496$
      001289 90 08 10         [24] 4801 	mov	dptr,#_main___1310720008_393216_517
      00128C 74 98            [12] 4802 	mov	a,#0x98
      00128E F0               [24] 4803 	movx	@dptr,a
      00128F 74 3A            [12] 4804 	mov	a,#0x3a
      001291 A3               [24] 4805 	inc	dptr
      001292 F0               [24] 4806 	movx	@dptr,a
      001293 80 08            [24] 4807 	sjmp	00497$
      001295                       4808 00496$:
                                   4809 ;	main.c:360: return (int16_t)val;
      001295 90 08 10         [24] 4810 	mov	dptr,#_main___1310720008_393216_517
      001298 EC               [12] 4811 	mov	a,r4
      001299 F0               [24] 4812 	movx	@dptr,a
      00129A ED               [12] 4813 	mov	a,r5
      00129B A3               [24] 4814 	inc	dptr
      00129C F0               [24] 4815 	movx	@dptr,a
                                   4816 ;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
      00129D                       4817 00497$:
      00129D 90 08 10         [24] 4818 	mov	dptr,#_main___1310720008_393216_517
      0012A0 E0               [24] 4819 	movx	a,@dptr
      0012A1 FE               [12] 4820 	mov	r6,a
      0012A2 A3               [24] 4821 	inc	dptr
      0012A3 E0               [24] 4822 	movx	a,@dptr
      0012A4 FF               [12] 4823 	mov	r7,a
      0012A5 90 08 18         [24] 4824 	mov	dptr,#_main_m_cy_393216_517
      0012A8 EE               [12] 4825 	mov	a,r6
      0012A9 F0               [24] 4826 	movx	@dptr,a
      0012AA EF               [12] 4827 	mov	a,r7
      0012AB A3               [24] 4828 	inc	dptr
      0012AC F0               [24] 4829 	movx	@dptr,a
      0012AD 90 08 24         [24] 4830 	mov	dptr,#_main_dy_393216_517
      0012B0 E4               [12] 4831 	clr	a
      0012B1 F0               [24] 4832 	movx	@dptr,a
      0012B2 A3               [24] 4833 	inc	dptr
      0012B3 F0               [24] 4834 	movx	@dptr,a
      0012B4 A3               [24] 4835 	inc	dptr
      0012B5 F0               [24] 4836 	movx	@dptr,a
      0012B6 A3               [24] 4837 	inc	dptr
      0012B7 F0               [24] 4838 	movx	@dptr,a
                                   4839 ;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
      0012B8 90 08 1A         [24] 4840 	mov	dptr,#_main_m_cz_393216_517
      0012BB E0               [24] 4841 	movx	a,@dptr
      0012BC FE               [12] 4842 	mov	r6,a
      0012BD A3               [24] 4843 	inc	dptr
      0012BE E0               [24] 4844 	movx	a,@dptr
      0012BF FF               [12] 4845 	mov	r7,a
      0012C0 90 08 28         [24] 4846 	mov	dptr,#_main_dw_393216_517
      0012C3 E0               [24] 4847 	movx	a,@dptr
      0012C4 FC               [12] 4848 	mov	r4,a
      0012C5 A3               [24] 4849 	inc	dptr
      0012C6 E0               [24] 4850 	movx	a,@dptr
      0012C7 FD               [12] 4851 	mov	r5,a
      0012C8 A3               [24] 4852 	inc	dptr
      0012C9 E0               [24] 4853 	movx	a,@dptr
      0012CA FA               [12] 4854 	mov	r2,a
      0012CB A3               [24] 4855 	inc	dptr
      0012CC E0               [24] 4856 	movx	a,@dptr
      0012CD FB               [12] 4857 	mov	r3,a
      0012CE 8E 00            [24] 4858 	mov	ar0,r6
      0012D0 EF               [12] 4859 	mov	a,r7
      0012D1 F9               [12] 4860 	mov	r1,a
      0012D2 33               [12] 4861 	rlc	a
      0012D3 95 E0            [12] 4862 	subb	a,acc
      0012D5 FE               [12] 4863 	mov	r6,a
      0012D6 FF               [12] 4864 	mov	r7,a
      0012D7 E8               [12] 4865 	mov	a,r0
      0012D8 2C               [12] 4866 	add	a,r4
      0012D9 FC               [12] 4867 	mov	r4,a
      0012DA E9               [12] 4868 	mov	a,r1
      0012DB 3D               [12] 4869 	addc	a,r5
      0012DC FD               [12] 4870 	mov	r5,a
      0012DD EE               [12] 4871 	mov	a,r6
      0012DE 3A               [12] 4872 	addc	a,r2
      0012DF FE               [12] 4873 	mov	r6,a
      0012E0 EF               [12] 4874 	mov	a,r7
      0012E1 3B               [12] 4875 	addc	a,r3
      0012E2 FF               [12] 4876 	mov	r7,a
                                   4877 ;	main.c:358: if (val < (int32_t)min) return min;
      0012E3 C3               [12] 4878 	clr	c
      0012E4 EC               [12] 4879 	mov	a,r4
      0012E5 94 81            [12] 4880 	subb	a,#0x81
      0012E7 ED               [12] 4881 	mov	a,r5
      0012E8 94 FF            [12] 4882 	subb	a,#0xff
      0012EA EE               [12] 4883 	mov	a,r6
      0012EB 94 FF            [12] 4884 	subb	a,#0xff
      0012ED EF               [12] 4885 	mov	a,r7
      0012EE 64 80            [12] 4886 	xrl	a,#0x80
      0012F0 94 7F            [12] 4887 	subb	a,#0x7f
      0012F2 50 0C            [24] 4888 	jnc	00499$
      0012F4 90 08 0E         [24] 4889 	mov	dptr,#_main___1310720013_393216_517
      0012F7 74 81            [12] 4890 	mov	a,#0x81
      0012F9 F0               [24] 4891 	movx	@dptr,a
      0012FA 74 FF            [12] 4892 	mov	a,#0xff
      0012FC A3               [24] 4893 	inc	dptr
      0012FD F0               [24] 4894 	movx	@dptr,a
      0012FE 80 26            [24] 4895 	sjmp	00502$
      001300                       4896 00499$:
                                   4897 ;	main.c:359: if (val > (int32_t)max) return max;
      001300 C3               [12] 4898 	clr	c
      001301 74 80            [12] 4899 	mov	a,#0x80
      001303 9C               [12] 4900 	subb	a,r4
      001304 E4               [12] 4901 	clr	a
      001305 9D               [12] 4902 	subb	a,r5
      001306 E4               [12] 4903 	clr	a
      001307 9E               [12] 4904 	subb	a,r6
      001308 74 80            [12] 4905 	mov	a,#(0x00 ^ 0x80)
      00130A 8F F0            [24] 4906 	mov	b,r7
      00130C 63 F0 80         [24] 4907 	xrl	b,#0x80
      00130F 95 F0            [12] 4908 	subb	a,b
      001311 50 0B            [24] 4909 	jnc	00501$
      001313 90 08 0E         [24] 4910 	mov	dptr,#_main___1310720013_393216_517
      001316 74 80            [12] 4911 	mov	a,#0x80
      001318 F0               [24] 4912 	movx	@dptr,a
      001319 E4               [12] 4913 	clr	a
      00131A A3               [24] 4914 	inc	dptr
      00131B F0               [24] 4915 	movx	@dptr,a
      00131C 80 08            [24] 4916 	sjmp	00502$
      00131E                       4917 00501$:
                                   4918 ;	main.c:360: return (int16_t)val;
      00131E 90 08 0E         [24] 4919 	mov	dptr,#_main___1310720013_393216_517
      001321 EC               [12] 4920 	mov	a,r4
      001322 F0               [24] 4921 	movx	@dptr,a
      001323 ED               [12] 4922 	mov	a,r5
      001324 A3               [24] 4923 	inc	dptr
      001325 F0               [24] 4924 	movx	@dptr,a
                                   4925 ;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
      001326                       4926 00502$:
      001326 90 08 0E         [24] 4927 	mov	dptr,#_main___1310720013_393216_517
      001329 E0               [24] 4928 	movx	a,@dptr
      00132A FE               [12] 4929 	mov	r6,a
      00132B A3               [24] 4930 	inc	dptr
      00132C E0               [24] 4931 	movx	a,@dptr
      00132D FF               [12] 4932 	mov	r7,a
      00132E 90 08 1A         [24] 4933 	mov	dptr,#_main_m_cz_393216_517
      001331 EE               [12] 4934 	mov	a,r6
      001332 F0               [24] 4935 	movx	@dptr,a
      001333 EF               [12] 4936 	mov	a,r7
      001334 A3               [24] 4937 	inc	dptr
      001335 F0               [24] 4938 	movx	@dptr,a
      001336 90 08 28         [24] 4939 	mov	dptr,#_main_dw_393216_517
      001339 E4               [12] 4940 	clr	a
      00133A F0               [24] 4941 	movx	@dptr,a
      00133B A3               [24] 4942 	inc	dptr
      00133C F0               [24] 4943 	movx	@dptr,a
      00133D A3               [24] 4944 	inc	dptr
      00133E F0               [24] 4945 	movx	@dptr,a
      00133F A3               [24] 4946 	inc	dptr
      001340 F0               [24] 4947 	movx	@dptr,a
                                   4948 ;	main.c:708: if (allow_send_data && mouse_enabled) {
      001341 90 07 9F         [24] 4949 	mov	dptr,#_allow_send_data
      001344 E0               [24] 4950 	movx	a,@dptr
      001345 70 03            [24] 4951 	jnz	00743$
      001347 02 15 CE         [24] 4952 	ljmp	00546$
      00134A                       4953 00743$:
      00134A 90 07 9D         [24] 4954 	mov	dptr,#_mouse_enabled
      00134D E0               [24] 4955 	movx	a,@dptr
      00134E 70 03            [24] 4956 	jnz	00744$
      001350 02 15 CE         [24] 4957 	ljmp	00546$
      001353                       4958 00744$:
                                   4959 ;	main.c:709: allow_send_data = false;
      001353 90 07 9F         [24] 4960 	mov	dptr,#_allow_send_data
      001356 E4               [12] 4961 	clr	a
      001357 F0               [24] 4962 	movx	@dptr,a
                                   4963 ;	main.c:712: if (mouse_start) {
      001358 90 07 9C         [24] 4964 	mov	dptr,#_mouse_start
      00135B E0               [24] 4965 	movx	a,@dptr
      00135C 70 03            [24] 4966 	jnz	00745$
      00135E 02 13 EE         [24] 4967 	ljmp	00520$
      001361                       4968 00745$:
                                   4969 ;	main.c:713: mouse_start = false;
      001361 90 07 9C         [24] 4970 	mov	dptr,#_mouse_start
      001364 E4               [12] 4971 	clr	a
      001365 F0               [24] 4972 	movx	@dptr,a
                                   4973 ;	main.c:716: CRITICAL_SECTION (
      001366 A2 AF            [12] 4974 	mov	c,_EA
      001368 E4               [12] 4975 	clr	a
      001369 33               [12] 4976 	rlc	a
      00136A FF               [12] 4977 	mov	r7,a
                                   4978 ;	assignBit
      00136B C2 AF            [12] 4979 	clr	_EA
      00136D 90 08 16         [24] 4980 	mov	dptr,#_main_m_cx_393216_517
      001370 E4               [12] 4981 	clr	a
      001371 F0               [24] 4982 	movx	@dptr,a
      001372 A3               [24] 4983 	inc	dptr
      001373 F0               [24] 4984 	movx	@dptr,a
      001374 90 08 18         [24] 4985 	mov	dptr,#_main_m_cy_393216_517
      001377 F0               [24] 4986 	movx	@dptr,a
      001378 A3               [24] 4987 	inc	dptr
      001379 F0               [24] 4988 	movx	@dptr,a
      00137A 90 08 1A         [24] 4989 	mov	dptr,#_main_m_cz_393216_517
      00137D F0               [24] 4990 	movx	@dptr,a
      00137E A3               [24] 4991 	inc	dptr
      00137F F0               [24] 4992 	movx	@dptr,a
      001380 90 08 15         [24] 4993 	mov	dptr,#_main_m_bt_393216_517
      001383 F0               [24] 4994 	movx	@dptr,a
      001384 90 07 04         [24] 4995 	mov	dptr,#_spi_tx_buf_w
      001387 E0               [24] 4996 	movx	a,@dptr
      001388 90 07 05         [24] 4997 	mov	dptr,#_spi_tx_buf_r
      00138B F0               [24] 4998 	movx	@dptr,a
      00138C 90 07 06         [24] 4999 	mov	dptr,#_spi_tx_buf_count
      00138F E4               [12] 5000 	clr	a
      001390 F0               [24] 5001 	movx	@dptr,a
                                   5002 ;	assignBit
      001391 C2 CA            [12] 5003 	clr	_TR2
      001393 43 C0 80         [24] 5004 	orl	_P4_OUT,#0x80
      001396 53 C0 7F         [24] 5005 	anl	_P4_OUT,#0x7f
                                   5006 ;	assignBit
      001399 EF               [12] 5007 	mov	a,r7
      00139A 24 FF            [12] 5008 	add	a,#0xff
      00139C 92 AF            [24] 5009 	mov	_EA,c
                                   5010 ;	main.c:613: delay(20);
      00139E 90 00 14         [24] 5011 	mov	dptr,#0x0014
      0013A1 12 16 3C         [24] 5012 	lcall	_delay
                                   5013 ;	main.c:616: if (!mouse_enabled) {
      0013A4 90 07 9D         [24] 5014 	mov	dptr,#_mouse_enabled
      0013A7 E0               [24] 5015 	movx	a,@dptr
      0013A8 60 44            [24] 5016 	jz	00520$
                                   5017 ;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
      0013AA 75 82 4D         [24] 5018 	mov	dpl,#0x4d
      0013AD 12 04 8F         [24] 5019 	lcall	_spi_send
                                   5020 ;	main.c:622: if (m_wheel) {
      0013B0 90 06 04         [24] 5021 	mov	dptr,#_m_wheel
      0013B3 E0               [24] 5022 	movx	a,@dptr
      0013B4 60 20            [24] 5023 	jz	00516$
                                   5024 ;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      0013B6 75 82 5A         [24] 5025 	mov	dpl,#0x5a
      0013B9 12 04 8F         [24] 5026 	lcall	_spi_send
                                   5027 ;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
      0013BC 75 82 40         [24] 5028 	mov	dpl,#0x40
      0013BF 12 04 8F         [24] 5029 	lcall	_spi_send
                                   5030 ;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
      0013C2 75 82 00         [24] 5031 	mov	dpl,#0x00
      0013C5 12 04 8F         [24] 5032 	lcall	_spi_send
                                   5033 ;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
      0013C8 75 82 00         [24] 5034 	mov	dpl,#0x00
      0013CB 12 04 8F         [24] 5035 	lcall	_spi_send
                                   5036 ;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
      0013CE 75 82 00         [24] 5037 	mov	dpl,#0x00
      0013D1 12 04 8F         [24] 5038 	lcall	_spi_send
      0013D4 80 18            [24] 5039 	sjmp	00520$
      0013D6                       5040 00516$:
                                   5041 ;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      0013D6 75 82 33         [24] 5042 	mov	dpl,#0x33
      0013D9 12 04 8F         [24] 5043 	lcall	_spi_send
                                   5044 ;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
      0013DC 75 82 40         [24] 5045 	mov	dpl,#0x40
      0013DF 12 04 8F         [24] 5046 	lcall	_spi_send
                                   5047 ;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
      0013E2 75 82 00         [24] 5048 	mov	dpl,#0x00
      0013E5 12 04 8F         [24] 5049 	lcall	_spi_send
                                   5050 ;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
      0013E8 75 82 00         [24] 5051 	mov	dpl,#0x00
      0013EB 12 04 8F         [24] 5052 	lcall	_spi_send
                                   5053 ;	main.c:726: send_mouse_id();
      0013EE                       5054 00520$:
                                   5055 ;	main.c:730: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
      0013EE 90 08 15         [24] 5056 	mov	dptr,#_main_m_bt_393216_517
      0013F1 E0               [24] 5057 	movx	a,@dptr
      0013F2 FF               [12] 5058 	mov	r7,a
      0013F3 90 08 14         [24] 5059 	mov	dptr,#_main_st_m_bt_393216_517
      0013F6 E0               [24] 5060 	movx	a,@dptr
      0013F7 FE               [12] 5061 	mov	r6,a
      0013F8 EF               [12] 5062 	mov	a,r7
      0013F9 B5 06 27         [24] 5063 	cjne	a,ar6,00542$
      0013FC 90 08 16         [24] 5064 	mov	dptr,#_main_m_cx_393216_517
      0013FF E0               [24] 5065 	movx	a,@dptr
      001400 F5 F0            [12] 5066 	mov	b,a
      001402 A3               [24] 5067 	inc	dptr
      001403 E0               [24] 5068 	movx	a,@dptr
      001404 45 F0            [12] 5069 	orl	a,b
      001406 70 1B            [24] 5070 	jnz	00542$
      001408 90 08 18         [24] 5071 	mov	dptr,#_main_m_cy_393216_517
      00140B E0               [24] 5072 	movx	a,@dptr
      00140C F5 F0            [12] 5073 	mov	b,a
      00140E A3               [24] 5074 	inc	dptr
      00140F E0               [24] 5075 	movx	a,@dptr
      001410 45 F0            [12] 5076 	orl	a,b
      001412 70 0F            [24] 5077 	jnz	00542$
      001414 90 08 1A         [24] 5078 	mov	dptr,#_main_m_cz_393216_517
      001417 E0               [24] 5079 	movx	a,@dptr
      001418 F5 F0            [12] 5080 	mov	b,a
      00141A A3               [24] 5081 	inc	dptr
      00141B E0               [24] 5082 	movx	a,@dptr
      00141C 45 F0            [12] 5083 	orl	a,b
      00141E 70 03            [24] 5084 	jnz	00752$
      001420 02 15 CE         [24] 5085 	ljmp	00546$
      001423                       5086 00752$:
      001423                       5087 00542$:
                                   5088 ;	main.c:731: int8_t cx = clamp8(m_cx, -128, 127);
      001423 90 08 16         [24] 5089 	mov	dptr,#_main_m_cx_393216_517
      001426 E0               [24] 5090 	movx	a,@dptr
      001427 FE               [12] 5091 	mov	r6,a
      001428 A3               [24] 5092 	inc	dptr
      001429 E0               [24] 5093 	movx	a,@dptr
      00142A FF               [12] 5094 	mov	r7,a
      00142B C3               [12] 5095 	clr	c
      00142C EE               [12] 5096 	mov	a,r6
      00142D 94 80            [12] 5097 	subb	a,#0x80
      00142F EF               [12] 5098 	mov	a,r7
      001430 64 80            [12] 5099 	xrl	a,#0x80
      001432 94 7F            [12] 5100 	subb	a,#0x7f
      001434 50 08            [24] 5101 	jnc	00525$
      001436 90 08 38         [24] 5102 	mov	dptr,#_main___2621440019_524288_538
      001439 74 80            [12] 5103 	mov	a,#0x80
      00143B F0               [24] 5104 	movx	@dptr,a
      00143C 80 1C            [24] 5105 	sjmp	00528$
      00143E                       5106 00525$:
      00143E C3               [12] 5107 	clr	c
      00143F 74 7F            [12] 5108 	mov	a,#0x7f
      001441 9E               [12] 5109 	subb	a,r6
      001442 74 80            [12] 5110 	mov	a,#(0x00 ^ 0x80)
      001444 8F F0            [24] 5111 	mov	b,r7
      001446 63 F0 80         [24] 5112 	xrl	b,#0x80
      001449 95 F0            [12] 5113 	subb	a,b
      00144B 50 08            [24] 5114 	jnc	00527$
      00144D 90 08 38         [24] 5115 	mov	dptr,#_main___2621440019_524288_538
      001450 74 7F            [12] 5116 	mov	a,#0x7f
      001452 F0               [24] 5117 	movx	@dptr,a
      001453 80 05            [24] 5118 	sjmp	00528$
      001455                       5119 00527$:
      001455 90 08 38         [24] 5120 	mov	dptr,#_main___2621440019_524288_538
      001458 EE               [12] 5121 	mov	a,r6
      001459 F0               [24] 5122 	movx	@dptr,a
      00145A                       5123 00528$:
      00145A 90 08 38         [24] 5124 	mov	dptr,#_main___2621440019_524288_538
      00145D E0               [24] 5125 	movx	a,@dptr
                                   5126 ;	main.c:732: m_cx -= cx;
      00145E FF               [12] 5127 	mov	r7,a
      00145F FD               [12] 5128 	mov	r5,a
      001460 33               [12] 5129 	rlc	a
      001461 95 E0            [12] 5130 	subb	a,acc
      001463 FE               [12] 5131 	mov	r6,a
      001464 90 08 16         [24] 5132 	mov	dptr,#_main_m_cx_393216_517
      001467 E0               [24] 5133 	movx	a,@dptr
      001468 FB               [12] 5134 	mov	r3,a
      001469 A3               [24] 5135 	inc	dptr
      00146A E0               [24] 5136 	movx	a,@dptr
      00146B FC               [12] 5137 	mov	r4,a
      00146C EB               [12] 5138 	mov	a,r3
      00146D C3               [12] 5139 	clr	c
      00146E 9D               [12] 5140 	subb	a,r5
      00146F FB               [12] 5141 	mov	r3,a
      001470 EC               [12] 5142 	mov	a,r4
      001471 9E               [12] 5143 	subb	a,r6
      001472 FC               [12] 5144 	mov	r4,a
      001473 90 08 16         [24] 5145 	mov	dptr,#_main_m_cx_393216_517
      001476 EB               [12] 5146 	mov	a,r3
      001477 F0               [24] 5147 	movx	@dptr,a
      001478 EC               [12] 5148 	mov	a,r4
      001479 A3               [24] 5149 	inc	dptr
      00147A F0               [24] 5150 	movx	@dptr,a
                                   5151 ;	main.c:733: int8_t cy = clamp8(m_cy, -128, 127);
      00147B 90 08 18         [24] 5152 	mov	dptr,#_main_m_cy_393216_517
      00147E E0               [24] 5153 	movx	a,@dptr
      00147F FB               [12] 5154 	mov	r3,a
      001480 A3               [24] 5155 	inc	dptr
      001481 E0               [24] 5156 	movx	a,@dptr
      001482 FC               [12] 5157 	mov	r4,a
      001483 C3               [12] 5158 	clr	c
      001484 EB               [12] 5159 	mov	a,r3
      001485 94 80            [12] 5160 	subb	a,#0x80
      001487 EC               [12] 5161 	mov	a,r4
      001488 64 80            [12] 5162 	xrl	a,#0x80
      00148A 94 7F            [12] 5163 	subb	a,#0x7f
      00148C 50 08            [24] 5164 	jnc	00530$
      00148E 90 08 3B         [24] 5165 	mov	dptr,#_main___2621440024_589824_542
      001491 74 80            [12] 5166 	mov	a,#0x80
      001493 F0               [24] 5167 	movx	@dptr,a
      001494 80 1C            [24] 5168 	sjmp	00533$
      001496                       5169 00530$:
      001496 C3               [12] 5170 	clr	c
      001497 74 7F            [12] 5171 	mov	a,#0x7f
      001499 9B               [12] 5172 	subb	a,r3
      00149A 74 80            [12] 5173 	mov	a,#(0x00 ^ 0x80)
      00149C 8C F0            [24] 5174 	mov	b,r4
      00149E 63 F0 80         [24] 5175 	xrl	b,#0x80
      0014A1 95 F0            [12] 5176 	subb	a,b
      0014A3 50 08            [24] 5177 	jnc	00532$
      0014A5 90 08 3B         [24] 5178 	mov	dptr,#_main___2621440024_589824_542
      0014A8 74 7F            [12] 5179 	mov	a,#0x7f
      0014AA F0               [24] 5180 	movx	@dptr,a
      0014AB 80 05            [24] 5181 	sjmp	00533$
      0014AD                       5182 00532$:
      0014AD 90 08 3B         [24] 5183 	mov	dptr,#_main___2621440024_589824_542
      0014B0 EB               [12] 5184 	mov	a,r3
      0014B1 F0               [24] 5185 	movx	@dptr,a
      0014B2                       5186 00533$:
      0014B2 90 08 3B         [24] 5187 	mov	dptr,#_main___2621440024_589824_542
      0014B5 E0               [24] 5188 	movx	a,@dptr
                                   5189 ;	main.c:734: m_cy -= cy;
      0014B6 FC               [12] 5190 	mov	r4,a
      0014B7 FA               [12] 5191 	mov	r2,a
      0014B8 33               [12] 5192 	rlc	a
      0014B9 95 E0            [12] 5193 	subb	a,acc
      0014BB FB               [12] 5194 	mov	r3,a
      0014BC 90 08 18         [24] 5195 	mov	dptr,#_main_m_cy_393216_517
      0014BF E0               [24] 5196 	movx	a,@dptr
      0014C0 F8               [12] 5197 	mov	r0,a
      0014C1 A3               [24] 5198 	inc	dptr
      0014C2 E0               [24] 5199 	movx	a,@dptr
      0014C3 F9               [12] 5200 	mov	r1,a
      0014C4 E8               [12] 5201 	mov	a,r0
      0014C5 C3               [12] 5202 	clr	c
      0014C6 9A               [12] 5203 	subb	a,r2
      0014C7 F8               [12] 5204 	mov	r0,a
      0014C8 E9               [12] 5205 	mov	a,r1
      0014C9 9B               [12] 5206 	subb	a,r3
      0014CA F9               [12] 5207 	mov	r1,a
      0014CB 90 08 18         [24] 5208 	mov	dptr,#_main_m_cy_393216_517
      0014CE E8               [12] 5209 	mov	a,r0
      0014CF F0               [24] 5210 	movx	@dptr,a
      0014D0 E9               [12] 5211 	mov	a,r1
      0014D1 A3               [24] 5212 	inc	dptr
      0014D2 F0               [24] 5213 	movx	@dptr,a
                                   5214 ;	main.c:735: int8_t cz = clamp8(m_cz, -8, 7);
      0014D3 90 08 1A         [24] 5215 	mov	dptr,#_main_m_cz_393216_517
      0014D6 E0               [24] 5216 	movx	a,@dptr
      0014D7 F8               [12] 5217 	mov	r0,a
      0014D8 A3               [24] 5218 	inc	dptr
      0014D9 E0               [24] 5219 	movx	a,@dptr
      0014DA F9               [12] 5220 	mov	r1,a
      0014DB C3               [12] 5221 	clr	c
      0014DC E8               [12] 5222 	mov	a,r0
      0014DD 94 F8            [12] 5223 	subb	a,#0xf8
      0014DF E9               [12] 5224 	mov	a,r1
      0014E0 64 80            [12] 5225 	xrl	a,#0x80
      0014E2 94 7F            [12] 5226 	subb	a,#0x7f
      0014E4 50 08            [24] 5227 	jnc	00535$
      0014E6 90 08 3E         [24] 5228 	mov	dptr,#_main___2621450029_655360_546
      0014E9 74 F8            [12] 5229 	mov	a,#0xf8
      0014EB F0               [24] 5230 	movx	@dptr,a
      0014EC 80 1C            [24] 5231 	sjmp	00538$
      0014EE                       5232 00535$:
      0014EE C3               [12] 5233 	clr	c
      0014EF 74 07            [12] 5234 	mov	a,#0x07
      0014F1 98               [12] 5235 	subb	a,r0
      0014F2 74 80            [12] 5236 	mov	a,#(0x00 ^ 0x80)
      0014F4 89 F0            [24] 5237 	mov	b,r1
      0014F6 63 F0 80         [24] 5238 	xrl	b,#0x80
      0014F9 95 F0            [12] 5239 	subb	a,b
      0014FB 50 08            [24] 5240 	jnc	00537$
      0014FD 90 08 3E         [24] 5241 	mov	dptr,#_main___2621450029_655360_546
      001500 74 07            [12] 5242 	mov	a,#0x07
      001502 F0               [24] 5243 	movx	@dptr,a
      001503 80 05            [24] 5244 	sjmp	00538$
      001505                       5245 00537$:
      001505 90 08 3E         [24] 5246 	mov	dptr,#_main___2621450029_655360_546
      001508 E8               [12] 5247 	mov	a,r0
      001509 F0               [24] 5248 	movx	@dptr,a
      00150A                       5249 00538$:
      00150A 90 08 3E         [24] 5250 	mov	dptr,#_main___2621450029_655360_546
      00150D E0               [24] 5251 	movx	a,@dptr
                                   5252 ;	main.c:736: m_cz -= cz;
      00150E F5 0B            [12] 5253 	mov	_main_sloc0_1_0,a
      001510 85 0B 0C         [24] 5254 	mov	_main_sloc1_1_0,_main_sloc0_1_0
      001513 33               [12] 5255 	rlc	a
      001514 95 E0            [12] 5256 	subb	a,acc
      001516 F5 0D            [12] 5257 	mov	(_main_sloc1_1_0 + 1),a
      001518 90 08 1A         [24] 5258 	mov	dptr,#_main_m_cz_393216_517
      00151B E0               [24] 5259 	movx	a,@dptr
      00151C F8               [12] 5260 	mov	r0,a
      00151D A3               [24] 5261 	inc	dptr
      00151E E0               [24] 5262 	movx	a,@dptr
      00151F F9               [12] 5263 	mov	r1,a
      001520 E8               [12] 5264 	mov	a,r0
      001521 C3               [12] 5265 	clr	c
      001522 95 0C            [12] 5266 	subb	a,_main_sloc1_1_0
      001524 F8               [12] 5267 	mov	r0,a
      001525 E9               [12] 5268 	mov	a,r1
      001526 95 0D            [12] 5269 	subb	a,(_main_sloc1_1_0 + 1)
      001528 F9               [12] 5270 	mov	r1,a
      001529 90 08 1A         [24] 5271 	mov	dptr,#_main_m_cz_393216_517
      00152C E8               [12] 5272 	mov	a,r0
      00152D F0               [24] 5273 	movx	@dptr,a
      00152E E9               [12] 5274 	mov	a,r1
      00152F A3               [24] 5275 	inc	dptr
      001530 F0               [24] 5276 	movx	@dptr,a
                                   5277 ;	main.c:738: st_m_bt = m_bt;
      001531 90 08 15         [24] 5278 	mov	dptr,#_main_m_bt_393216_517
      001534 E0               [24] 5279 	movx	a,@dptr
      001535 F9               [12] 5280 	mov	r1,a
      001536 90 08 14         [24] 5281 	mov	dptr,#_main_st_m_bt_393216_517
      001539 F0               [24] 5282 	movx	@dptr,a
                                   5283 ;	main.c:592: left_b = b & 1;
      00153A 74 01            [12] 5284 	mov	a,#0x01
      00153C 59               [12] 5285 	anl	a,r1
      00153D F5 0C            [12] 5286 	mov	_main_sloc1_1_0,a
                                   5287 ;	main.c:593: right_b = (b >> 1) & 1;
      00153F E9               [12] 5288 	mov	a,r1
      001540 03               [12] 5289 	rr	a
      001541 54 01            [12] 5290 	anl	a,#0x01
      001543 F8               [12] 5291 	mov	r0,a
                                   5292 ;	main.c:594: middle_b = (b >> 2) & 1;
      001544 90 08 42         [24] 5293 	mov	dptr,#_main_middle_b_851968_552
      001547 E9               [12] 5294 	mov	a,r1
      001548 03               [12] 5295 	rr	a
      001549 03               [12] 5296 	rr	a
      00154A 54 01            [12] 5297 	anl	a,#0x01
      00154C F0               [24] 5298 	movx	@dptr,a
                                   5299 ;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
      00154D E5 0C            [12] 5300 	mov	a,_main_sloc1_1_0
      00154F C4               [12] 5301 	swap	a
      001550 23               [12] 5302 	rl	a
      001551 54 E0            [12] 5303 	anl	a,#0xe0
      001553 F9               [12] 5304 	mov	r1,a
      001554 43 01 40         [24] 5305 	orl	ar1,#0x40
      001557 E8               [12] 5306 	mov	a,r0
      001558 C4               [12] 5307 	swap	a
      001559 54 F0            [12] 5308 	anl	a,#0xf0
      00155B 42 01            [12] 5309 	orl	ar1,a
                                   5310 ;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
      00155D 53 02 C0         [24] 5311 	anl	ar2,#0xc0
      001560 E4               [12] 5312 	clr	a
      001561 CA               [12] 5313 	xch	a,r2
      001562 C4               [12] 5314 	swap	a
      001563 54 0F            [12] 5315 	anl	a,#0x0f
      001565 6A               [12] 5316 	xrl	a,r2
      001566 CA               [12] 5317 	xch	a,r2
      001567 54 0F            [12] 5318 	anl	a,#0x0f
      001569 CA               [12] 5319 	xch	a,r2
      00156A 6A               [12] 5320 	xrl	a,r2
      00156B CA               [12] 5321 	xch	a,r2
      00156C 30 E3 02         [24] 5322 	jnb	acc.3,00759$
      00156F 44 F0            [12] 5323 	orl	a,#0xf0
      001571                       5324 00759$:
      001571 EA               [12] 5325 	mov	a,r2
      001572 42 01            [12] 5326 	orl	ar1,a
      001574 53 05 C0         [24] 5327 	anl	ar5,#0xc0
      001577 E4               [12] 5328 	clr	a
      001578 A2 E7            [12] 5329 	mov	c,acc.7
      00157A CD               [12] 5330 	xch	a,r5
      00157B 33               [12] 5331 	rlc	a
      00157C CD               [12] 5332 	xch	a,r5
      00157D 33               [12] 5333 	rlc	a
      00157E A2 E7            [12] 5334 	mov	c,acc.7
      001580 CD               [12] 5335 	xch	a,r5
      001581 33               [12] 5336 	rlc	a
      001582 CD               [12] 5337 	xch	a,r5
      001583 33               [12] 5338 	rlc	a
      001584 CD               [12] 5339 	xch	a,r5
      001585 54 03            [12] 5340 	anl	a,#0x03
      001587 30 E1 02         [24] 5341 	jnb	acc.1,00760$
      00158A 44 FC            [12] 5342 	orl	a,#0xfc
      00158C                       5343 00760$:
      00158C ED               [12] 5344 	mov	a,r5
      00158D 42 01            [12] 5345 	orl	ar1,a
      00158F 89 82            [24] 5346 	mov	dpl,r1
      001591 C0 07            [24] 5347 	push	ar7
      001593 C0 04            [24] 5348 	push	ar4
      001595 12 04 8F         [24] 5349 	lcall	_spi_send
      001598 D0 04            [24] 5350 	pop	ar4
      00159A D0 07            [24] 5351 	pop	ar7
                                   5352 ;	main.c:598: spi_send(x & 0x3F);
      00159C 53 07 3F         [24] 5353 	anl	ar7,#0x3f
      00159F 8F 82            [24] 5354 	mov	dpl,r7
      0015A1 C0 04            [24] 5355 	push	ar4
      0015A3 12 04 8F         [24] 5356 	lcall	_spi_send
      0015A6 D0 04            [24] 5357 	pop	ar4
                                   5358 ;	main.c:599: spi_send(y & 0x3F);
      0015A8 53 04 3F         [24] 5359 	anl	ar4,#0x3f
      0015AB 8C 82            [24] 5360 	mov	dpl,r4
      0015AD 12 04 8F         [24] 5361 	lcall	_spi_send
                                   5362 ;	main.c:602: if (m_wheel) {
      0015B0 90 06 04         [24] 5363 	mov	dptr,#_m_wheel
      0015B3 E0               [24] 5364 	movx	a,@dptr
      0015B4 60 15            [24] 5365 	jz	00540$
                                   5366 ;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
      0015B6 90 08 42         [24] 5367 	mov	dptr,#_main_middle_b_851968_552
      0015B9 E0               [24] 5368 	movx	a,@dptr
      0015BA C4               [12] 5369 	swap	a
      0015BB 54 F0            [12] 5370 	anl	a,#0xf0
      0015BD FF               [12] 5371 	mov	r7,a
      0015BE A9 0B            [24] 5372 	mov	r1,_main_sloc0_1_0
      0015C0 53 01 0F         [24] 5373 	anl	ar1,#0x0f
      0015C3 EF               [12] 5374 	mov	a,r7
      0015C4 42 01            [12] 5375 	orl	ar1,a
      0015C6 89 82            [24] 5376 	mov	dpl,r1
      0015C8 12 04 8F         [24] 5377 	lcall	_spi_send
      0015CB                       5378 00540$:
                                   5379 ;	main.c:606: flash_led();
      0015CB 12 04 2F         [24] 5380 	lcall	_flash_led
                                   5381 ;	main.c:963: do_process();
      0015CE                       5382 00546$:
                                   5383 ;	main.c:965: if (fatal_error ||
      0015CE 90 07 A0         [24] 5384 	mov	dptr,#_fatal_error
      0015D1 E0               [24] 5385 	movx	a,@dptr
      0015D2 60 03            [24] 5386 	jz	00762$
      0015D4 02 11 37         [24] 5387 	ljmp	00548$
      0015D7                       5388 00762$:
                                   5389 ;	main.c:966: (!allow_send_data &&
      0015D7 90 07 9F         [24] 5390 	mov	dptr,#_allow_send_data
      0015DA E0               [24] 5391 	movx	a,@dptr
      0015DB 60 03            [24] 5392 	jz	00763$
      0015DD 02 11 37         [24] 5393 	ljmp	00548$
      0015E0                       5394 00763$:
                                   5395 ;	main.c:967: !spi_tx_buf_count)) {
      0015E0 90 07 06         [24] 5396 	mov	dptr,#_spi_tx_buf_count
      0015E3 E0               [24] 5397 	movx	a,@dptr
                                   5398 ;	main.c:968: mcu_sleep();
                                   5399 ;	main.c:971: }
      0015E4 02 11 37         [24] 5400 	ljmp	00548$
                                   5401 	.area CSEG    (CODE)
                                   5402 	.area CONST   (CODE)
                                   5403 	.area XINIT   (CODE)
                                   5404 	.area CABS    (ABS,CODE)
