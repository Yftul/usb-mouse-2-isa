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
                                     12 	.globl _mouse_write
                                     13 	.globl _flash_led
                                     14 	.globl _Timer2_ISR
                                     15 	.globl _Timer3_ISR
                                     16 	.globl _timer0_isr
                                     17 	.globl _int0_isr
                                     18 	.globl _initUART0
                                     19 	.globl _processUart
                                     20 	.globl _pollHIDdevice
                                     21 	.globl _resetHubDevices
                                     22 	.globl _checkRootHubConnections
                                     23 	.globl _initUSB_Host
                                     24 	.globl _pinMode
                                     25 	.globl _delay
                                     26 	.globl _delayUs
                                     27 	.globl _printf
                                     28 	.globl _UIF_BUS_RST
                                     29 	.globl _UIF_DETECT
                                     30 	.globl _UIF_TRANSFER
                                     31 	.globl _UIF_SUSPEND
                                     32 	.globl _UIF_HST_SOF
                                     33 	.globl _UIF_FIFO_OV
                                     34 	.globl _U_SIE_FREE
                                     35 	.globl _U_TOG_OK
                                     36 	.globl _U_IS_NAK
                                     37 	.globl _S0_R_FIFO0
                                     38 	.globl _S0_R_FIFO1
                                     39 	.globl _S0_T_FIFO
                                     40 	.globl _S0_FREE
                                     41 	.globl _S0_IF_BYTE
                                     42 	.globl _S0_IF_FIRST
                                     43 	.globl _S0_IF_OV
                                     44 	.globl _S0_FST_ACT
                                     45 	.globl _CP_RL2
                                     46 	.globl _C_T2
                                     47 	.globl _TR2
                                     48 	.globl _EXEN2
                                     49 	.globl _TCLK
                                     50 	.globl _RCLK
                                     51 	.globl _EXF2
                                     52 	.globl _CAP1F
                                     53 	.globl _TF2
                                     54 	.globl _RI
                                     55 	.globl _TI
                                     56 	.globl _RB8
                                     57 	.globl _TB8
                                     58 	.globl _REN
                                     59 	.globl _SM2
                                     60 	.globl _SM1
                                     61 	.globl _SM0
                                     62 	.globl _IT0
                                     63 	.globl _IE0
                                     64 	.globl _IT1
                                     65 	.globl _IE1
                                     66 	.globl _TR0
                                     67 	.globl _TF0
                                     68 	.globl _TR1
                                     69 	.globl _TF1
                                     70 	.globl _RXD1_
                                     71 	.globl _LED2
                                     72 	.globl _CAP3_
                                     73 	.globl _PWM3_
                                     74 	.globl _PWM1_
                                     75 	.globl _TXD1_
                                     76 	.globl _TNOW_
                                     77 	.globl _LED3
                                     78 	.globl _PWM2_
                                     79 	.globl _SCS_
                                     80 	.globl _SCK_
                                     81 	.globl _RXD
                                     82 	.globl _TXD
                                     83 	.globl _INT0
                                     84 	.globl _LED0
                                     85 	.globl _INT1
                                     86 	.globl _LED1
                                     87 	.globl _T0
                                     88 	.globl _XCS0
                                     89 	.globl _LEDC
                                     90 	.globl _T1
                                     91 	.globl _DA6
                                     92 	.globl _WR
                                     93 	.globl _RD
                                     94 	.globl _MOSI1
                                     95 	.globl _MISO1
                                     96 	.globl _SCK1
                                     97 	.globl _PWM1
                                     98 	.globl _CAP2_
                                     99 	.globl _T2EX_
                                    100 	.globl _PWM2
                                    101 	.globl _TNOW
                                    102 	.globl _RXD1
                                    103 	.globl _DA7
                                    104 	.globl _TXD1
                                    105 	.globl _CAP1
                                    106 	.globl _T2
                                    107 	.globl _CAP2
                                    108 	.globl _T2EX
                                    109 	.globl _CAP3
                                    110 	.globl _PWM3
                                    111 	.globl _SCS
                                    112 	.globl _MOSI
                                    113 	.globl _MISO
                                    114 	.globl _SCK
                                    115 	.globl _AIN0
                                    116 	.globl _AIN1
                                    117 	.globl _AIN2
                                    118 	.globl _AIN3
                                    119 	.globl _AIN4
                                    120 	.globl _AIN5
                                    121 	.globl _AIN6
                                    122 	.globl _AIN7
                                    123 	.globl _UDTR
                                    124 	.globl _URTS
                                    125 	.globl _RXD_
                                    126 	.globl _TXD_
                                    127 	.globl _UCTS
                                    128 	.globl _UDSR
                                    129 	.globl _URI
                                    130 	.globl _UDCD
                                    131 	.globl _IE_SPI0
                                    132 	.globl _IE_TMR3
                                    133 	.globl _IE_USB
                                    134 	.globl _IE_ADC
                                    135 	.globl _IE_UART1
                                    136 	.globl _IE_PWM1
                                    137 	.globl _IE_GPIO
                                    138 	.globl _IE_WDOG
                                    139 	.globl _PX0
                                    140 	.globl _PT0
                                    141 	.globl _PX1
                                    142 	.globl _PT1
                                    143 	.globl _PS
                                    144 	.globl _PT2
                                    145 	.globl _PL_FLAG
                                    146 	.globl _PH_FLAG
                                    147 	.globl _EX0
                                    148 	.globl _ET0
                                    149 	.globl _EX1
                                    150 	.globl _ET1
                                    151 	.globl _ES
                                    152 	.globl _ET2
                                    153 	.globl _E_DIS
                                    154 	.globl _EA
                                    155 	.globl _P
                                    156 	.globl _F1
                                    157 	.globl _OV
                                    158 	.globl _RS0
                                    159 	.globl _RS1
                                    160 	.globl _F0
                                    161 	.globl _AC
                                    162 	.globl _CY
                                    163 	.globl _USB_DMA_AH
                                    164 	.globl _USB_DMA_AL
                                    165 	.globl _USB_DMA
                                    166 	.globl _UHUB1_CTRL
                                    167 	.globl _UDEV_CTRL
                                    168 	.globl _USB_DEV_AD
                                    169 	.globl _USB_CTRL
                                    170 	.globl _USB_INT_EN
                                    171 	.globl _UEP4_T_LEN
                                    172 	.globl _UEP4_CTRL
                                    173 	.globl _UEP0_T_LEN
                                    174 	.globl _UEP0_CTRL
                                    175 	.globl _USB_HUB_ST
                                    176 	.globl _USB_MIS_ST
                                    177 	.globl _USB_INT_ST
                                    178 	.globl _USB_INT_FG
                                    179 	.globl _UEP3_T_LEN
                                    180 	.globl _UEP3_CTRL
                                    181 	.globl _UEP2_T_LEN
                                    182 	.globl _UEP2_CTRL
                                    183 	.globl _UEP1_T_LEN
                                    184 	.globl _UEP1_CTRL
                                    185 	.globl _USB_RX_LEN
                                    186 	.globl _ADC_EX_SW
                                    187 	.globl _ADC_SETUP
                                    188 	.globl _ADC_FIFO_H
                                    189 	.globl _ADC_FIFO_L
                                    190 	.globl _ADC_FIFO
                                    191 	.globl _ADC_CHANN
                                    192 	.globl _ADC_CTRL
                                    193 	.globl _ADC_STAT
                                    194 	.globl _ADC_CK_SE
                                    195 	.globl _ADC_DMA_CN
                                    196 	.globl _ADC_DMA_AH
                                    197 	.globl _ADC_DMA_AL
                                    198 	.globl _ADC_DMA
                                    199 	.globl _SER1_ADDR
                                    200 	.globl _SER1_MSR
                                    201 	.globl _SER1_LSR
                                    202 	.globl _SER1_MCR
                                    203 	.globl _SER1_LCR
                                    204 	.globl _SER1_IIR
                                    205 	.globl _SER1_IER
                                    206 	.globl _SER1_FIFO
                                    207 	.globl _SPI1_CK_SE
                                    208 	.globl _SPI1_CTRL
                                    209 	.globl _SPI1_DATA
                                    210 	.globl _SPI1_STAT
                                    211 	.globl _SPI0_SETUP
                                    212 	.globl _SPI0_CK_SE
                                    213 	.globl _SPI0_CTRL
                                    214 	.globl _SPI0_DATA
                                    215 	.globl _SPI0_STAT
                                    216 	.globl _PWM_CYCLE
                                    217 	.globl _PWM_CK_SE
                                    218 	.globl _PWM_CTRL
                                    219 	.globl _PWM_DATA
                                    220 	.globl _PWM_DATA2
                                    221 	.globl _T3_FIFO_H
                                    222 	.globl _T3_FIFO_L
                                    223 	.globl _T3_FIFO
                                    224 	.globl _T3_DMA_AH
                                    225 	.globl _T3_DMA_AL
                                    226 	.globl _T3_DMA
                                    227 	.globl _T3_DMA_CN
                                    228 	.globl _T3_CTRL
                                    229 	.globl _T3_STAT
                                    230 	.globl _T3_END_H
                                    231 	.globl _T3_END_L
                                    232 	.globl _T3_END
                                    233 	.globl _T3_COUNT_H
                                    234 	.globl _T3_COUNT_L
                                    235 	.globl _T3_COUNT
                                    236 	.globl _T3_SETUP
                                    237 	.globl _TH2
                                    238 	.globl _TL2
                                    239 	.globl _T2COUNT
                                    240 	.globl _RCAP2H
                                    241 	.globl _RCAP2L
                                    242 	.globl _RCAP2
                                    243 	.globl _T2MOD
                                    244 	.globl _T2CON
                                    245 	.globl _SBUF
                                    246 	.globl _SCON
                                    247 	.globl _TH1
                                    248 	.globl _TH0
                                    249 	.globl _TL1
                                    250 	.globl _TL0
                                    251 	.globl _TMOD
                                    252 	.globl _TCON
                                    253 	.globl _XBUS_SPEED
                                    254 	.globl _XBUS_AUX
                                    255 	.globl _PIN_FUNC
                                    256 	.globl _PORT_CFG
                                    257 	.globl _P5_IN
                                    258 	.globl _P4_PU
                                    259 	.globl _P4_DIR
                                    260 	.globl _P4_IN
                                    261 	.globl _P4_OUT
                                    262 	.globl _P3_PU
                                    263 	.globl _P3_DIR
                                    264 	.globl _P3
                                    265 	.globl _P2_PU
                                    266 	.globl _P2_DIR
                                    267 	.globl _P2
                                    268 	.globl _P1_PU
                                    269 	.globl _P1_DIR
                                    270 	.globl _P1_IE
                                    271 	.globl _P1
                                    272 	.globl _P0_PU
                                    273 	.globl _P0_DIR
                                    274 	.globl _P0
                                    275 	.globl _ROM_CTRL
                                    276 	.globl _ROM_DATA_H
                                    277 	.globl _ROM_DATA_L
                                    278 	.globl _ROM_DATA
                                    279 	.globl _ROM_ADDR_H
                                    280 	.globl _ROM_ADDR_L
                                    281 	.globl _ROM_ADDR
                                    282 	.globl _GPIO_IE
                                    283 	.globl _IP_EX
                                    284 	.globl _IE_EX
                                    285 	.globl _IP
                                    286 	.globl _IE
                                    287 	.globl _WDOG_COUNT
                                    288 	.globl _RESET_KEEP
                                    289 	.globl _WAKE_CTRL
                                    290 	.globl _SLEEP_CTRL
                                    291 	.globl _CLOCK_CFG
                                    292 	.globl _PLL_CFG
                                    293 	.globl _PCON
                                    294 	.globl _GLOBAL_CFG
                                    295 	.globl _SAFE_MOD
                                    296 	.globl _DPH
                                    297 	.globl _DPL
                                    298 	.globl _SP
                                    299 	.globl _B
                                    300 	.globl _ACC
                                    301 	.globl _PSW
                                    302 	.globl _timer0_limit
                                    303 	.globl _fatal_error
                                    304 	.globl _allow_send_data
                                    305 	.globl _device_init
                                    306 	.globl _mouse_enabled
                                    307 	.globl _mouse_start
                                    308 	.globl _spi_tx_buf_count
                                    309 	.globl _spi_tx_buf_r
                                    310 	.globl _spi_tx_buf_w
                                    311 	.globl _spi_tx_buf
                                    312 	.globl _mouse_rx_buf_count
                                    313 	.globl _mouse_rx_buf_r
                                    314 	.globl _mouse_rx_buf_w
                                    315 	.globl _mouse_rx_buf
                                    316 	.globl _m_wheel
                                    317 	.globl _opt_irq_settings
                                    318 	.globl _opt_rate_settings
                                    319 	.globl _opt_wheel_enabled
                                    320 	.globl _opt_com_settings
                                    321 	.globl _LED_DMA_XL
                                    322 	.globl _LED_DMA_XH
                                    323 	.globl _LED_DMA_CN
                                    324 	.globl _LED_DMA_AL
                                    325 	.globl _LED_DMA_AH
                                    326 	.globl _LED_CK_SE
                                    327 	.globl _LED_DATA
                                    328 	.globl _LED_CTRL
                                    329 	.globl _LED_STAT
                                    330 	.globl _pUEP3_DMA_L
                                    331 	.globl _pUEP3_DMA_H
                                    332 	.globl _UEP3_DMA_H
                                    333 	.globl _UEP3_DMA_L
                                    334 	.globl _UEP3_DMA
                                    335 	.globl _pUEP2_DMA_L
                                    336 	.globl _pUEP2_DMA_H
                                    337 	.globl _UEP2_DMA_H
                                    338 	.globl _UEP2_DMA_L
                                    339 	.globl _UEP2_DMA
                                    340 	.globl _pUEP1_DMA_L
                                    341 	.globl _pUEP1_DMA_H
                                    342 	.globl _UEP1_DMA_L
                                    343 	.globl _UEP1_DMA_H
                                    344 	.globl _pUEP0_DMA_L
                                    345 	.globl _pUEP0_DMA_H
                                    346 	.globl _UEP0_DMA_L
                                    347 	.globl _UEP0_DMA_H
                                    348 	.globl _UEP2_3_MOD
                                    349 	.globl _UEP4_1_MOD
                                    350 	.globl _pLED_DMA_XL
                                    351 	.globl _pLED_DMA_XH
                                    352 	.globl _pLED_DMA_CN
                                    353 	.globl _pLED_DMA_AL
                                    354 	.globl _pLED_DMA_AH
                                    355 	.globl _pLED_CK_SE
                                    356 	.globl _pLED_DATA
                                    357 	.globl _pLED_CTRL
                                    358 	.globl _pLED_STAT
                                    359 	.globl _pUEP2_3_MOD
                                    360 	.globl _pUEP4_1_MOD
                                    361 ;--------------------------------------------------------
                                    362 ; special function registers
                                    363 ;--------------------------------------------------------
                                    364 	.area RSEG    (ABS,DATA)
      000000                        365 	.org 0x0000
                           0000D0   366 _PSW	=	0x00d0
                           0000E0   367 _ACC	=	0x00e0
                           0000F0   368 _B	=	0x00f0
                           000081   369 _SP	=	0x0081
                           000082   370 _DPL	=	0x0082
                           000083   371 _DPH	=	0x0083
                           0000A1   372 _SAFE_MOD	=	0x00a1
                           0000B1   373 _GLOBAL_CFG	=	0x00b1
                           000087   374 _PCON	=	0x0087
                           0000B2   375 _PLL_CFG	=	0x00b2
                           0000B3   376 _CLOCK_CFG	=	0x00b3
                           0000EA   377 _SLEEP_CTRL	=	0x00ea
                           0000EB   378 _WAKE_CTRL	=	0x00eb
                           0000FE   379 _RESET_KEEP	=	0x00fe
                           0000FF   380 _WDOG_COUNT	=	0x00ff
                           0000A8   381 _IE	=	0x00a8
                           0000B8   382 _IP	=	0x00b8
                           0000E8   383 _IE_EX	=	0x00e8
                           0000E9   384 _IP_EX	=	0x00e9
                           0000CF   385 _GPIO_IE	=	0x00cf
                           008584   386 _ROM_ADDR	=	0x8584
                           000084   387 _ROM_ADDR_L	=	0x0084
                           000085   388 _ROM_ADDR_H	=	0x0085
                           008F8E   389 _ROM_DATA	=	0x8f8e
                           00008E   390 _ROM_DATA_L	=	0x008e
                           00008F   391 _ROM_DATA_H	=	0x008f
                           000086   392 _ROM_CTRL	=	0x0086
                           000080   393 _P0	=	0x0080
                           0000C4   394 _P0_DIR	=	0x00c4
                           0000C5   395 _P0_PU	=	0x00c5
                           000090   396 _P1	=	0x0090
                           0000B9   397 _P1_IE	=	0x00b9
                           0000BA   398 _P1_DIR	=	0x00ba
                           0000BB   399 _P1_PU	=	0x00bb
                           0000A0   400 _P2	=	0x00a0
                           0000BC   401 _P2_DIR	=	0x00bc
                           0000BD   402 _P2_PU	=	0x00bd
                           0000B0   403 _P3	=	0x00b0
                           0000BE   404 _P3_DIR	=	0x00be
                           0000BF   405 _P3_PU	=	0x00bf
                           0000C0   406 _P4_OUT	=	0x00c0
                           0000C1   407 _P4_IN	=	0x00c1
                           0000C2   408 _P4_DIR	=	0x00c2
                           0000C3   409 _P4_PU	=	0x00c3
                           0000C7   410 _P5_IN	=	0x00c7
                           0000C6   411 _PORT_CFG	=	0x00c6
                           0000CE   412 _PIN_FUNC	=	0x00ce
                           0000A2   413 _XBUS_AUX	=	0x00a2
                           0000FD   414 _XBUS_SPEED	=	0x00fd
                           000088   415 _TCON	=	0x0088
                           000089   416 _TMOD	=	0x0089
                           00008A   417 _TL0	=	0x008a
                           00008B   418 _TL1	=	0x008b
                           00008C   419 _TH0	=	0x008c
                           00008D   420 _TH1	=	0x008d
                           000098   421 _SCON	=	0x0098
                           000099   422 _SBUF	=	0x0099
                           0000C8   423 _T2CON	=	0x00c8
                           0000C9   424 _T2MOD	=	0x00c9
                           00CBCA   425 _RCAP2	=	0xcbca
                           0000CA   426 _RCAP2L	=	0x00ca
                           0000CB   427 _RCAP2H	=	0x00cb
                           00CDCC   428 _T2COUNT	=	0xcdcc
                           0000CC   429 _TL2	=	0x00cc
                           0000CD   430 _TH2	=	0x00cd
                           0000A3   431 _T3_SETUP	=	0x00a3
                           00A5A4   432 _T3_COUNT	=	0xa5a4
                           0000A4   433 _T3_COUNT_L	=	0x00a4
                           0000A5   434 _T3_COUNT_H	=	0x00a5
                           00A7A6   435 _T3_END	=	0xa7a6
                           0000A6   436 _T3_END_L	=	0x00a6
                           0000A7   437 _T3_END_H	=	0x00a7
                           0000A9   438 _T3_STAT	=	0x00a9
                           0000AA   439 _T3_CTRL	=	0x00aa
                           0000AB   440 _T3_DMA_CN	=	0x00ab
                           00ADAC   441 _T3_DMA	=	0xadac
                           0000AC   442 _T3_DMA_AL	=	0x00ac
                           0000AD   443 _T3_DMA_AH	=	0x00ad
                           00AFAE   444 _T3_FIFO	=	0xafae
                           0000AE   445 _T3_FIFO_L	=	0x00ae
                           0000AF   446 _T3_FIFO_H	=	0x00af
                           00009B   447 _PWM_DATA2	=	0x009b
                           00009C   448 _PWM_DATA	=	0x009c
                           00009D   449 _PWM_CTRL	=	0x009d
                           00009E   450 _PWM_CK_SE	=	0x009e
                           00009F   451 _PWM_CYCLE	=	0x009f
                           0000F8   452 _SPI0_STAT	=	0x00f8
                           0000F9   453 _SPI0_DATA	=	0x00f9
                           0000FA   454 _SPI0_CTRL	=	0x00fa
                           0000FB   455 _SPI0_CK_SE	=	0x00fb
                           0000FC   456 _SPI0_SETUP	=	0x00fc
                           0000B4   457 _SPI1_STAT	=	0x00b4
                           0000B5   458 _SPI1_DATA	=	0x00b5
                           0000B6   459 _SPI1_CTRL	=	0x00b6
                           0000B7   460 _SPI1_CK_SE	=	0x00b7
                           00009A   461 _SER1_FIFO	=	0x009a
                           000091   462 _SER1_IER	=	0x0091
                           000092   463 _SER1_IIR	=	0x0092
                           000093   464 _SER1_LCR	=	0x0093
                           000094   465 _SER1_MCR	=	0x0094
                           000095   466 _SER1_LSR	=	0x0095
                           000096   467 _SER1_MSR	=	0x0096
                           000097   468 _SER1_ADDR	=	0x0097
                           00EDEC   469 _ADC_DMA	=	0xedec
                           0000EC   470 _ADC_DMA_AL	=	0x00ec
                           0000ED   471 _ADC_DMA_AH	=	0x00ed
                           0000EE   472 _ADC_DMA_CN	=	0x00ee
                           0000EF   473 _ADC_CK_SE	=	0x00ef
                           0000F1   474 _ADC_STAT	=	0x00f1
                           0000F2   475 _ADC_CTRL	=	0x00f2
                           0000F3   476 _ADC_CHANN	=	0x00f3
                           00F5F4   477 _ADC_FIFO	=	0xf5f4
                           0000F4   478 _ADC_FIFO_L	=	0x00f4
                           0000F5   479 _ADC_FIFO_H	=	0x00f5
                           0000F6   480 _ADC_SETUP	=	0x00f6
                           0000F7   481 _ADC_EX_SW	=	0x00f7
                           0000D1   482 _USB_RX_LEN	=	0x00d1
                           0000D2   483 _UEP1_CTRL	=	0x00d2
                           0000D3   484 _UEP1_T_LEN	=	0x00d3
                           0000D4   485 _UEP2_CTRL	=	0x00d4
                           0000D5   486 _UEP2_T_LEN	=	0x00d5
                           0000D6   487 _UEP3_CTRL	=	0x00d6
                           0000D7   488 _UEP3_T_LEN	=	0x00d7
                           0000D8   489 _USB_INT_FG	=	0x00d8
                           0000D9   490 _USB_INT_ST	=	0x00d9
                           0000DA   491 _USB_MIS_ST	=	0x00da
                           0000DB   492 _USB_HUB_ST	=	0x00db
                           0000DC   493 _UEP0_CTRL	=	0x00dc
                           0000DD   494 _UEP0_T_LEN	=	0x00dd
                           0000DE   495 _UEP4_CTRL	=	0x00de
                           0000DF   496 _UEP4_T_LEN	=	0x00df
                           0000E1   497 _USB_INT_EN	=	0x00e1
                           0000E2   498 _USB_CTRL	=	0x00e2
                           0000E3   499 _USB_DEV_AD	=	0x00e3
                           0000E4   500 _UDEV_CTRL	=	0x00e4
                           0000E5   501 _UHUB1_CTRL	=	0x00e5
                           00E7E6   502 _USB_DMA	=	0xe7e6
                           0000E6   503 _USB_DMA_AL	=	0x00e6
                           0000E7   504 _USB_DMA_AH	=	0x00e7
                                    505 ;--------------------------------------------------------
                                    506 ; special function bits
                                    507 ;--------------------------------------------------------
                                    508 	.area RSEG    (ABS,DATA)
      000000                        509 	.org 0x0000
                           0000D7   510 _CY	=	0x00d7
                           0000D6   511 _AC	=	0x00d6
                           0000D5   512 _F0	=	0x00d5
                           0000D4   513 _RS1	=	0x00d4
                           0000D3   514 _RS0	=	0x00d3
                           0000D2   515 _OV	=	0x00d2
                           0000D1   516 _F1	=	0x00d1
                           0000D0   517 _P	=	0x00d0
                           0000AF   518 _EA	=	0x00af
                           0000AE   519 _E_DIS	=	0x00ae
                           0000AD   520 _ET2	=	0x00ad
                           0000AC   521 _ES	=	0x00ac
                           0000AB   522 _ET1	=	0x00ab
                           0000AA   523 _EX1	=	0x00aa
                           0000A9   524 _ET0	=	0x00a9
                           0000A8   525 _EX0	=	0x00a8
                           0000BF   526 _PH_FLAG	=	0x00bf
                           0000BE   527 _PL_FLAG	=	0x00be
                           0000BD   528 _PT2	=	0x00bd
                           0000BC   529 _PS	=	0x00bc
                           0000BB   530 _PT1	=	0x00bb
                           0000BA   531 _PX1	=	0x00ba
                           0000B9   532 _PT0	=	0x00b9
                           0000B8   533 _PX0	=	0x00b8
                           0000EF   534 _IE_WDOG	=	0x00ef
                           0000EE   535 _IE_GPIO	=	0x00ee
                           0000ED   536 _IE_PWM1	=	0x00ed
                           0000EC   537 _IE_UART1	=	0x00ec
                           0000EB   538 _IE_ADC	=	0x00eb
                           0000EA   539 _IE_USB	=	0x00ea
                           0000E9   540 _IE_TMR3	=	0x00e9
                           0000E8   541 _IE_SPI0	=	0x00e8
                           000087   542 _UDCD	=	0x0087
                           000086   543 _URI	=	0x0086
                           000085   544 _UDSR	=	0x0085
                           000084   545 _UCTS	=	0x0084
                           000083   546 _TXD_	=	0x0083
                           000082   547 _RXD_	=	0x0082
                           000081   548 _URTS	=	0x0081
                           000080   549 _UDTR	=	0x0080
                           000097   550 _AIN7	=	0x0097
                           000096   551 _AIN6	=	0x0096
                           000095   552 _AIN5	=	0x0095
                           000094   553 _AIN4	=	0x0094
                           000093   554 _AIN3	=	0x0093
                           000092   555 _AIN2	=	0x0092
                           000091   556 _AIN1	=	0x0091
                           000090   557 _AIN0	=	0x0090
                           000097   558 _SCK	=	0x0097
                           000096   559 _MISO	=	0x0096
                           000095   560 _MOSI	=	0x0095
                           000094   561 _SCS	=	0x0094
                           000092   562 _PWM3	=	0x0092
                           000092   563 _CAP3	=	0x0092
                           000091   564 _T2EX	=	0x0091
                           000091   565 _CAP2	=	0x0091
                           000090   566 _T2	=	0x0090
                           000090   567 _CAP1	=	0x0090
                           0000A7   568 _TXD1	=	0x00a7
                           0000A7   569 _DA7	=	0x00a7
                           0000A6   570 _RXD1	=	0x00a6
                           0000A5   571 _TNOW	=	0x00a5
                           0000A5   572 _PWM2	=	0x00a5
                           0000A5   573 _T2EX_	=	0x00a5
                           0000A5   574 _CAP2_	=	0x00a5
                           0000A4   575 _PWM1	=	0x00a4
                           0000A3   576 _SCK1	=	0x00a3
                           0000A2   577 _MISO1	=	0x00a2
                           0000A1   578 _MOSI1	=	0x00a1
                           0000B7   579 _RD	=	0x00b7
                           0000B6   580 _WR	=	0x00b6
                           0000B5   581 _DA6	=	0x00b5
                           0000B5   582 _T1	=	0x00b5
                           0000B4   583 _LEDC	=	0x00b4
                           0000B4   584 _XCS0	=	0x00b4
                           0000B4   585 _T0	=	0x00b4
                           0000B3   586 _LED1	=	0x00b3
                           0000B3   587 _INT1	=	0x00b3
                           0000B2   588 _LED0	=	0x00b2
                           0000B2   589 _INT0	=	0x00b2
                           0000B1   590 _TXD	=	0x00b1
                           0000B0   591 _RXD	=	0x00b0
                           0000C7   592 _SCK_	=	0x00c7
                           0000C6   593 _SCS_	=	0x00c6
                           0000C5   594 _PWM2_	=	0x00c5
                           0000C4   595 _LED3	=	0x00c4
                           0000C4   596 _TNOW_	=	0x00c4
                           0000C4   597 _TXD1_	=	0x00c4
                           0000C3   598 _PWM1_	=	0x00c3
                           0000C2   599 _PWM3_	=	0x00c2
                           0000C2   600 _CAP3_	=	0x00c2
                           0000C0   601 _LED2	=	0x00c0
                           0000C0   602 _RXD1_	=	0x00c0
                           00008F   603 _TF1	=	0x008f
                           00008E   604 _TR1	=	0x008e
                           00008D   605 _TF0	=	0x008d
                           00008C   606 _TR0	=	0x008c
                           00008B   607 _IE1	=	0x008b
                           00008A   608 _IT1	=	0x008a
                           000089   609 _IE0	=	0x0089
                           000088   610 _IT0	=	0x0088
                           00009F   611 _SM0	=	0x009f
                           00009E   612 _SM1	=	0x009e
                           00009D   613 _SM2	=	0x009d
                           00009C   614 _REN	=	0x009c
                           00009B   615 _TB8	=	0x009b
                           00009A   616 _RB8	=	0x009a
                           000099   617 _TI	=	0x0099
                           000098   618 _RI	=	0x0098
                           0000CF   619 _TF2	=	0x00cf
                           0000CF   620 _CAP1F	=	0x00cf
                           0000CE   621 _EXF2	=	0x00ce
                           0000CD   622 _RCLK	=	0x00cd
                           0000CC   623 _TCLK	=	0x00cc
                           0000CB   624 _EXEN2	=	0x00cb
                           0000CA   625 _TR2	=	0x00ca
                           0000C9   626 _C_T2	=	0x00c9
                           0000C8   627 _CP_RL2	=	0x00c8
                           0000FF   628 _S0_FST_ACT	=	0x00ff
                           0000FE   629 _S0_IF_OV	=	0x00fe
                           0000FD   630 _S0_IF_FIRST	=	0x00fd
                           0000FC   631 _S0_IF_BYTE	=	0x00fc
                           0000FB   632 _S0_FREE	=	0x00fb
                           0000FA   633 _S0_T_FIFO	=	0x00fa
                           0000F9   634 _S0_R_FIFO1	=	0x00f9
                           0000F8   635 _S0_R_FIFO0	=	0x00f8
                           0000DF   636 _U_IS_NAK	=	0x00df
                           0000DE   637 _U_TOG_OK	=	0x00de
                           0000DD   638 _U_SIE_FREE	=	0x00dd
                           0000DC   639 _UIF_FIFO_OV	=	0x00dc
                           0000DB   640 _UIF_HST_SOF	=	0x00db
                           0000DA   641 _UIF_SUSPEND	=	0x00da
                           0000D9   642 _UIF_TRANSFER	=	0x00d9
                           0000D8   643 _UIF_DETECT	=	0x00d8
                           0000D8   644 _UIF_BUS_RST	=	0x00d8
                                    645 ;--------------------------------------------------------
                                    646 ; overlayable register banks
                                    647 ;--------------------------------------------------------
                                    648 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        649 	.ds 8
                                    650 ;--------------------------------------------------------
                                    651 ; internal ram data
                                    652 ;--------------------------------------------------------
                                    653 	.area DSEG    (DATA)
                                    654 ;--------------------------------------------------------
                                    655 ; overlayable items in internal ram
                                    656 ;--------------------------------------------------------
                                    657 ;--------------------------------------------------------
                                    658 ; Stack segment in internal ram
                                    659 ;--------------------------------------------------------
                                    660 	.area	SSEG
      000051                        661 __start__stack:
      000051                        662 	.ds	1
                                    663 
                                    664 ;--------------------------------------------------------
                                    665 ; indirectly addressable internal ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area ISEG    (DATA)
                                    668 ;--------------------------------------------------------
                                    669 ; absolute internal ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area IABS    (ABS,DATA)
                                    672 	.area IABS    (ABS,DATA)
                                    673 ;--------------------------------------------------------
                                    674 ; bit data
                                    675 ;--------------------------------------------------------
                                    676 	.area BSEG    (BIT)
      000000                        677 _readWheelsettings_sloc0_1_0:
      000000                        678 	.ds 1
                                    679 ;--------------------------------------------------------
                                    680 ; paged external ram data
                                    681 ;--------------------------------------------------------
                                    682 	.area PSEG    (PAG,XDATA)
                           002546   683 _pUEP4_1_MOD	=	0x2546
                           002547   684 _pUEP2_3_MOD	=	0x2547
                           002980   685 _pLED_STAT	=	0x2980
                           002981   686 _pLED_CTRL	=	0x2981
                           002982   687 _pLED_DATA	=	0x2982
                           002983   688 _pLED_CK_SE	=	0x2983
                           002984   689 _pLED_DMA_AH	=	0x2984
                           002985   690 _pLED_DMA_AL	=	0x2985
                           002986   691 _pLED_DMA_CN	=	0x2986
                           002988   692 _pLED_DMA_XH	=	0x2988
                           002989   693 _pLED_DMA_XL	=	0x2989
                                    694 ;--------------------------------------------------------
                                    695 ; external ram data
                                    696 ;--------------------------------------------------------
                                    697 	.area XSEG    (XDATA)
                           002446   698 _UEP4_1_MOD	=	0x2446
                           002447   699 _UEP2_3_MOD	=	0x2447
                           002448   700 _UEP0_DMA_H	=	0x2448
                           002449   701 _UEP0_DMA_L	=	0x2449
                           002548   702 _pUEP0_DMA_H	=	0x2548
                           002549   703 _pUEP0_DMA_L	=	0x2549
                           00244A   704 _UEP1_DMA_H	=	0x244a
                           00244B   705 _UEP1_DMA_L	=	0x244b
                           00254A   706 _pUEP1_DMA_H	=	0x254a
                           00254B   707 _pUEP1_DMA_L	=	0x254b
                           00244C   708 _UEP2_DMA	=	0x244c
                           00244D   709 _UEP2_DMA_L	=	0x244d
                           00244C   710 _UEP2_DMA_H	=	0x244c
                           00254C   711 _pUEP2_DMA_H	=	0x254c
                           00254D   712 _pUEP2_DMA_L	=	0x254d
                           00244E   713 _UEP3_DMA	=	0x244e
                           00244F   714 _UEP3_DMA_L	=	0x244f
                           00244E   715 _UEP3_DMA_H	=	0x244e
                           00254E   716 _pUEP3_DMA_H	=	0x254e
                           00254F   717 _pUEP3_DMA_L	=	0x254f
                           002880   718 _LED_STAT	=	0x2880
                           002881   719 _LED_CTRL	=	0x2881
                           002882   720 _LED_DATA	=	0x2882
                           002883   721 _LED_CK_SE	=	0x2883
                           002884   722 _LED_DMA_AH	=	0x2884
                           002885   723 _LED_DMA_AL	=	0x2885
                           002886   724 _LED_DMA_CN	=	0x2886
                           002888   725 _LED_DMA_XH	=	0x2888
                           002889   726 _LED_DMA_XL	=	0x2889
      000600                        727 _opt_com_settings::
      000600                        728 	.ds 1
      000601                        729 _opt_wheel_enabled::
      000601                        730 	.ds 1
      000602                        731 _opt_rate_settings::
      000602                        732 	.ds 1
      000603                        733 _opt_irq_settings::
      000603                        734 	.ds 1
      000604                        735 _m_wheel::
      000604                        736 	.ds 1
      000605                        737 _mouse_rx_buf::
      000605                        738 	.ds 16
      000615                        739 _mouse_rx_buf_w::
      000615                        740 	.ds 1
      000616                        741 _mouse_rx_buf_r::
      000616                        742 	.ds 1
      000617                        743 _mouse_rx_buf_count::
      000617                        744 	.ds 1
      000618                        745 _spi_tx_buf::
      000618                        746 	.ds 255
      000717                        747 _spi_tx_buf_w::
      000717                        748 	.ds 1
      000718                        749 _spi_tx_buf_r::
      000718                        750 	.ds 1
      000719                        751 _spi_tx_buf_count::
      000719                        752 	.ds 1
      00071A                        753 _mouse_start::
      00071A                        754 	.ds 1
      00071B                        755 _mouse_enabled::
      00071B                        756 	.ds 1
      00071C                        757 _device_init::
      00071C                        758 	.ds 1
      00071D                        759 _allow_send_data::
      00071D                        760 	.ds 1
      00071E                        761 _fatal_error::
      00071E                        762 	.ds 1
      00071F                        763 _timer0_limit::
      00071F                        764 	.ds 1
      000720                        765 _clamp_PARM_2:
      000720                        766 	.ds 1
      000721                        767 _clamp_PARM_3:
      000721                        768 	.ds 1
      000722                        769 _clamp_val_65536_51:
      000722                        770 	.ds 2
      000724                        771 _timer0_isr_cnt_65536_56:
      000724                        772 	.ds 1
      000725                        773 _mouse_write_c_65536_105:
      000725                        774 	.ds 1
      000726                        775 _mouse_read_data_65536_111:
      000726                        776 	.ds 1
      000727                        777 _spi_send_c_65536_123:
      000727                        778 	.ds 1
      000728                        779 _spi_send_config_PARM_2:
      000728                        780 	.ds 1
      000729                        781 _spi_send_config_opt_com_65536_132:
      000729                        782 	.ds 1
      00072A                        783 _spi_m_send_PARM_2:
      00072A                        784 	.ds 1
      00072B                        785 _spi_m_send_PARM_3:
      00072B                        786 	.ds 1
      00072C                        787 _spi_m_send_PARM_4:
      00072C                        788 	.ds 1
      00072D                        789 _spi_m_send_x_65536_134:
      00072D                        790 	.ds 1
      00072E                        791 _do_process_st_m_bt_65536_143:
      00072E                        792 	.ds 1
      00072F                        793 _do_process_dr_ctr_65536_143:
      00072F                        794 	.ds 1
      000730                        795 _do_process_m_bt_65536_143:
      000730                        796 	.ds 1
      000731                        797 _do_process_m_cx_65536_143:
      000731                        798 	.ds 2
      000733                        799 _do_process_m_cy_65536_143:
      000733                        800 	.ds 2
      000735                        801 _do_process_m_cz_65536_143:
      000735                        802 	.ds 2
      000737                        803 _do_process___2621440005_262144_150:
      000737                        804 	.ds 1
      000738                        805 _do_process_val_327680_160:
      000738                        806 	.ds 2
      00073A                        807 _do_process___2621440010_262144_151:
      00073A                        808 	.ds 1
      00073B                        809 _do_process_val_327681_163:
      00073B                        810 	.ds 2
      00073D                        811 _do_process___2621450015_262145_152:
      00073D                        812 	.ds 1
      00073E                        813 _do_process_val_327682_166:
      00073E                        814 	.ds 2
      000740                        815 _readCOMsettings_res_65536_169:
      000740                        816 	.ds 1
      000741                        817 _readRatesettings_res_65536_174:
      000741                        818 	.ds 1
      000742                        819 _checkIRQ_opt_com_65536_176:
      000742                        820 	.ds 1
      000743                        821 _init___1310720026_131072_185:
      000743                        822 	.ds 1
      000744                        823 _init___1310720022_131072_185:
      000744                        824 	.ds 1
      000745                        825 _init_res_262144_191:
      000745                        826 	.ds 1
      000746                        827 _init_res_262144_198:
      000746                        828 	.ds 1
      000747                        829 _init_opt_com_196608_201:
      000747                        830 	.ds 1
      000748                        831 _init_opt_com_524288_218:
      000748                        832 	.ds 1
      000749                        833 _main___1310720026_262144_236:
      000749                        834 	.ds 1
      00074A                        835 _main___1310720022_262144_236:
      00074A                        836 	.ds 1
      00074B                        837 _main_res_458752_241:
      00074B                        838 	.ds 1
      00074C                        839 _main_res_458752_248:
      00074C                        840 	.ds 1
      00074D                        841 _main_opt_com_393216_251:
      00074D                        842 	.ds 1
      00074E                        843 _main_opt_com_720896_265:
      00074E                        844 	.ds 1
      00074F                        845 _main_st_m_bt_393216_279:
      00074F                        846 	.ds 1
      000750                        847 _main_dr_ctr_393216_279:
      000750                        848 	.ds 1
      000751                        849 _main_m_bt_393216_279:
      000751                        850 	.ds 1
      000752                        851 _main_m_cx_393216_279:
      000752                        852 	.ds 2
      000754                        853 _main_m_cy_393216_279:
      000754                        854 	.ds 2
      000756                        855 _main_m_cz_393216_279:
      000756                        856 	.ds 2
      000758                        857 _main___2621440005_524288_292:
      000758                        858 	.ds 1
      000759                        859 _main_val_655360_294:
      000759                        860 	.ds 2
      00075B                        861 _main___2621440010_589824_296:
      00075B                        862 	.ds 1
      00075C                        863 _main_val_720896_298:
      00075C                        864 	.ds 2
      00075E                        865 _main___2621450015_655360_300:
      00075E                        866 	.ds 1
      00075F                        867 _main_val_786432_302:
      00075F                        868 	.ds 2
                                    869 ;--------------------------------------------------------
                                    870 ; absolute external ram data
                                    871 ;--------------------------------------------------------
                                    872 	.area XABS    (ABS,XDATA)
                                    873 ;--------------------------------------------------------
                                    874 ; external initialized ram data
                                    875 ;--------------------------------------------------------
                                    876 	.area XISEG   (XDATA)
                                    877 	.area HOME    (CODE)
                                    878 	.area GSINIT0 (CODE)
                                    879 	.area GSINIT1 (CODE)
                                    880 	.area GSINIT2 (CODE)
                                    881 	.area GSINIT3 (CODE)
                                    882 	.area GSINIT4 (CODE)
                                    883 	.area GSINIT5 (CODE)
                                    884 	.area GSINIT  (CODE)
                                    885 	.area GSFINAL (CODE)
                                    886 	.area CSEG    (CODE)
                                    887 ;--------------------------------------------------------
                                    888 ; interrupt vector
                                    889 ;--------------------------------------------------------
                                    890 	.area HOME    (CODE)
      000000                        891 __interrupt_vect:
      000000 02 00 43         [24]  892 	ljmp	__sdcc_gsinit_startup
      000003 02 01 10         [24]  893 	ljmp	_int0_isr
      000006                        894 	.ds	5
      00000B 02 01 25         [24]  895 	ljmp	_timer0_isr
      00000E                        896 	.ds	5
      000013 32               [24]  897 	reti
      000014                        898 	.ds	7
      00001B 32               [24]  899 	reti
      00001C                        900 	.ds	7
      000023 32               [24]  901 	reti
      000024                        902 	.ds	7
      00002B 02 01 63         [24]  903 	ljmp	_Timer2_ISR
      00002E                        904 	.ds	5
      000033 32               [24]  905 	reti
      000034                        906 	.ds	7
      00003B 02 01 5C         [24]  907 	ljmp	_Timer3_ISR
                                    908 ;--------------------------------------------------------
                                    909 ; global & static initialisations
                                    910 ;--------------------------------------------------------
                                    911 	.area HOME    (CODE)
                                    912 	.area GSINIT  (CODE)
                                    913 	.area GSFINAL (CODE)
                                    914 	.area GSINIT  (CODE)
                                    915 	.globl __sdcc_gsinit_startup
                                    916 	.globl __sdcc_program_startup
                                    917 	.globl __start__stack
                                    918 	.globl __mcs51_genXINIT
                                    919 	.globl __mcs51_genXRAMCLEAR
                                    920 	.globl __mcs51_genRAMCLEAR
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'timer0_isr'
                                    923 ;------------------------------------------------------------
                                    924 ;cnt                       Allocated with name '_timer0_isr_cnt_65536_56'
                                    925 ;------------------------------------------------------------
                                    926 ;	main.c:279: static uint8_t cnt = 0;
      00009C 90 07 24         [24]  927 	mov	dptr,#_timer0_isr_cnt_65536_56
      00009F E4               [12]  928 	clr	a
      0000A0 F0               [24]  929 	movx	@dptr,a
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'do_process'
                                    932 ;------------------------------------------------------------
                                    933 ;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_143'
                                    934 ;dr_ctr                    Allocated with name '_do_process_dr_ctr_65536_143'
                                    935 ;m_bt                      Allocated with name '_do_process_m_bt_65536_143'
                                    936 ;m_cx                      Allocated with name '_do_process_m_cx_65536_143'
                                    937 ;m_cy                      Allocated with name '_do_process_m_cy_65536_143'
                                    938 ;m_cz                      Allocated with name '_do_process_m_cz_65536_143'
                                    939 ;ea_state___LINE__         Allocated with name '_do_process_ea_state___LINE___262144_147'
                                    940 ;__2621440005              Allocated with name '_do_process___2621440005_262144_150'
                                    941 ;cx                        Allocated with name '_do_process_cx_196608_150'
                                    942 ;__2621440006              Allocated with name '_do_process___2621440006_262144_159'
                                    943 ;__2621440007              Allocated with name '_do_process___2621440007_262144_159'
                                    944 ;__2621440008              Allocated with name '_do_process___2621440008_262144_159'
                                    945 ;val                       Allocated with name '_do_process_val_327680_160'
                                    946 ;min                       Allocated with name '_do_process_min_327680_160'
                                    947 ;max                       Allocated with name '_do_process_max_327680_160'
                                    948 ;__2621440010              Allocated with name '_do_process___2621440010_262144_151'
                                    949 ;cy                        Allocated with name '_do_process_cy_196609_151'
                                    950 ;__2621450011              Allocated with name '_do_process___2621450011_262145_162'
                                    951 ;__2621450012              Allocated with name '_do_process___2621450012_262145_162'
                                    952 ;__2621450013              Allocated with name '_do_process___2621450013_262145_162'
                                    953 ;val                       Allocated with name '_do_process_val_327681_163'
                                    954 ;min                       Allocated with name '_do_process_min_327681_163'
                                    955 ;max                       Allocated with name '_do_process_max_327681_163'
                                    956 ;__2621450015              Allocated with name '_do_process___2621450015_262145_152'
                                    957 ;cz                        Allocated with name '_do_process_cz_196610_152'
                                    958 ;__2621460016              Allocated with name '_do_process___2621460016_262146_165'
                                    959 ;__2621460017              Allocated with name '_do_process___2621460017_262146_165'
                                    960 ;__2621460018              Allocated with name '_do_process___2621460018_262146_165'
                                    961 ;val                       Allocated with name '_do_process_val_327682_166'
                                    962 ;min                       Allocated with name '_do_process_min_327682_166'
                                    963 ;max                       Allocated with name '_do_process_max_327682_166'
                                    964 ;------------------------------------------------------------
                                    965 ;	main.c:484: static uint8_t st_m_bt = 0;
      0000A1 90 07 2E         [24]  966 	mov	dptr,#_do_process_st_m_bt_65536_143
      0000A4 E4               [12]  967 	clr	a
      0000A5 F0               [24]  968 	movx	@dptr,a
                                    969 ;	main.c:485: static uint8_t dr_ctr = 0;
      0000A6 90 07 2F         [24]  970 	mov	dptr,#_do_process_dr_ctr_65536_143
      0000A9 F0               [24]  971 	movx	@dptr,a
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'main'
                                    974 ;------------------------------------------------------------
                                    975 ;__1310720029              Allocated with name '_main___1310720029_262144_236'
                                    976 ;__1310720026              Allocated with name '_main___1310720026_262144_236'
                                    977 ;__1310720024              Allocated with name '_main___1310720024_262144_236'
                                    978 ;__1310720022              Allocated with name '_main___1310720022_262144_236'
                                    979 ;__1310720020              Allocated with name '_main___1310720020_262144_236'
                                    980 ;res                       Allocated with name '_main_res_458752_241'
                                    981 ;res                       Allocated with name '_main_res_458752_248'
                                    982 ;__1310720027              Allocated with name '_main___1310720027_327680_250'
                                    983 ;opt_com                   Allocated with name '_main_opt_com_393216_251'
                                    984 ;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___524288_262'
                                    985 ;__4587520032              Allocated with name '_main___4587520032_655360_264'
                                    986 ;__4587520033              Allocated with name '_main___4587520033_655360_264'
                                    987 ;opt_com                   Allocated with name '_main_opt_com_720896_265'
                                    988 ;opt_irq                   Allocated with name '_main_opt_irq_720896_265'
                                    989 ;config_data               Allocated with name '_main_config_data_786432_266'
                                    990 ;st_m_bt                   Allocated with name '_main_st_m_bt_393216_279'
                                    991 ;dr_ctr                    Allocated with name '_main_dr_ctr_393216_279'
                                    992 ;m_bt                      Allocated with name '_main_m_bt_393216_279'
                                    993 ;m_cx                      Allocated with name '_main_m_cx_393216_279'
                                    994 ;m_cy                      Allocated with name '_main_m_cy_393216_279'
                                    995 ;m_cz                      Allocated with name '_main_m_cz_393216_279'
                                    996 ;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___589824_283'
                                    997 ;__2621440005              Allocated with name '_main___2621440005_524288_292'
                                    998 ;cx                        Allocated with name '_main_cx_524288_292'
                                    999 ;__2621440006              Allocated with name '_main___2621440006_589824_293'
                                   1000 ;__2621440007              Allocated with name '_main___2621440007_589824_293'
                                   1001 ;__2621440008              Allocated with name '_main___2621440008_589824_293'
                                   1002 ;val                       Allocated with name '_main_val_655360_294'
                                   1003 ;min                       Allocated with name '_main_min_655360_294'
                                   1004 ;max                       Allocated with name '_main_max_655360_294'
                                   1005 ;__2621440010              Allocated with name '_main___2621440010_589824_296'
                                   1006 ;cy                        Allocated with name '_main_cy_589824_296'
                                   1007 ;__2621450011              Allocated with name '_main___2621450011_655360_297'
                                   1008 ;__2621450012              Allocated with name '_main___2621450012_655360_297'
                                   1009 ;__2621450013              Allocated with name '_main___2621450013_655360_297'
                                   1010 ;val                       Allocated with name '_main_val_720896_298'
                                   1011 ;min                       Allocated with name '_main_min_720896_298'
                                   1012 ;max                       Allocated with name '_main_max_720896_298'
                                   1013 ;__2621450015              Allocated with name '_main___2621450015_655360_300'
                                   1014 ;cz                        Allocated with name '_main_cz_655360_300'
                                   1015 ;__2621460016              Allocated with name '_main___2621460016_720896_301'
                                   1016 ;__2621460017              Allocated with name '_main___2621460017_720896_301'
                                   1017 ;__2621460018              Allocated with name '_main___2621460018_720896_301'
                                   1018 ;val                       Allocated with name '_main_val_786432_302'
                                   1019 ;min                       Allocated with name '_main_min_786432_302'
                                   1020 ;max                       Allocated with name '_main_max_786432_302'
                                   1021 ;------------------------------------------------------------
                                   1022 ;	main.c:484: static uint8_t st_m_bt = 0;
      0000AA 90 07 4F         [24] 1023 	mov	dptr,#_main_st_m_bt_393216_279
      0000AD E4               [12] 1024 	clr	a
      0000AE F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	main.c:485: static uint8_t dr_ctr = 0;
      0000AF 90 07 50         [24] 1027 	mov	dptr,#_main_dr_ctr_393216_279
      0000B2 F0               [24] 1028 	movx	@dptr,a
                                   1029 	.area GSFINAL (CODE)
      0000BE 02 00 3E         [24] 1030 	ljmp	__sdcc_program_startup
                                   1031 ;--------------------------------------------------------
                                   1032 ; Home
                                   1033 ;--------------------------------------------------------
                                   1034 	.area HOME    (CODE)
                                   1035 	.area HOME    (CODE)
      00003E                       1036 __sdcc_program_startup:
      00003E 02 0C 8B         [24] 1037 	ljmp	_main
                                   1038 ;	return from main will return to caller
                                   1039 ;--------------------------------------------------------
                                   1040 ; code
                                   1041 ;--------------------------------------------------------
                                   1042 	.area CSEG    (CODE)
                                   1043 ;------------------------------------------------------------
                                   1044 ;Allocation info for local variables in function 'mcu_sleep'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	main.c:258: static inline void mcu_sleep(void) {
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function mcu_sleep
                                   1049 ;	-----------------------------------------
      0000C1                       1050 _mcu_sleep:
                           000007  1051 	ar7 = 0x07
                           000006  1052 	ar6 = 0x06
                           000005  1053 	ar5 = 0x05
                           000004  1054 	ar4 = 0x04
                           000003  1055 	ar3 = 0x03
                           000002  1056 	ar2 = 0x02
                           000001  1057 	ar1 = 0x01
                           000000  1058 	ar0 = 0x00
                                   1059 ;	main.c:261: }
      0000C1 22               [24] 1060 	ret
                                   1061 ;------------------------------------------------------------
                                   1062 ;Allocation info for local variables in function 'clamp'
                                   1063 ;------------------------------------------------------------
                                   1064 ;min                       Allocated with name '_clamp_PARM_2'
                                   1065 ;max                       Allocated with name '_clamp_PARM_3'
                                   1066 ;val                       Allocated with name '_clamp_val_65536_51'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	main.c:264: static inline int8_t clamp(int16_t val, int8_t min, int8_t max) {
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function clamp
                                   1071 ;	-----------------------------------------
      0000C2                       1072 _clamp:
      0000C2 AF 83            [24] 1073 	mov	r7,dph
      0000C4 E5 82            [12] 1074 	mov	a,dpl
      0000C6 90 07 22         [24] 1075 	mov	dptr,#_clamp_val_65536_51
      0000C9 F0               [24] 1076 	movx	@dptr,a
      0000CA EF               [12] 1077 	mov	a,r7
      0000CB A3               [24] 1078 	inc	dptr
      0000CC F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	main.c:265: if (val < (int16_t)min) return min;
      0000CD 90 07 20         [24] 1081 	mov	dptr,#_clamp_PARM_2
      0000D0 E0               [24] 1082 	movx	a,@dptr
      0000D1 FF               [12] 1083 	mov	r7,a
      0000D2 FD               [12] 1084 	mov	r5,a
      0000D3 33               [12] 1085 	rlc	a
      0000D4 95 E0            [12] 1086 	subb	a,acc
      0000D6 FE               [12] 1087 	mov	r6,a
      0000D7 90 07 22         [24] 1088 	mov	dptr,#_clamp_val_65536_51
      0000DA E0               [24] 1089 	movx	a,@dptr
      0000DB FB               [12] 1090 	mov	r3,a
      0000DC A3               [24] 1091 	inc	dptr
      0000DD E0               [24] 1092 	movx	a,@dptr
      0000DE FC               [12] 1093 	mov	r4,a
      0000DF C3               [12] 1094 	clr	c
      0000E0 EB               [12] 1095 	mov	a,r3
      0000E1 9D               [12] 1096 	subb	a,r5
      0000E2 EC               [12] 1097 	mov	a,r4
      0000E3 64 80            [12] 1098 	xrl	a,#0x80
      0000E5 8E F0            [24] 1099 	mov	b,r6
      0000E7 63 F0 80         [24] 1100 	xrl	b,#0x80
      0000EA 95 F0            [12] 1101 	subb	a,b
      0000EC 50 03            [24] 1102 	jnc	00102$
      0000EE 8F 82            [24] 1103 	mov	dpl,r7
      0000F0 22               [24] 1104 	ret
      0000F1                       1105 00102$:
                                   1106 ;	main.c:266: if (val > (int16_t)max) return max;
      0000F1 90 07 21         [24] 1107 	mov	dptr,#_clamp_PARM_3
      0000F4 E0               [24] 1108 	movx	a,@dptr
      0000F5 FF               [12] 1109 	mov	r7,a
      0000F6 FD               [12] 1110 	mov	r5,a
      0000F7 33               [12] 1111 	rlc	a
      0000F8 95 E0            [12] 1112 	subb	a,acc
      0000FA FE               [12] 1113 	mov	r6,a
      0000FB C3               [12] 1114 	clr	c
      0000FC ED               [12] 1115 	mov	a,r5
      0000FD 9B               [12] 1116 	subb	a,r3
      0000FE EE               [12] 1117 	mov	a,r6
      0000FF 64 80            [12] 1118 	xrl	a,#0x80
      000101 8C F0            [24] 1119 	mov	b,r4
      000103 63 F0 80         [24] 1120 	xrl	b,#0x80
      000106 95 F0            [12] 1121 	subb	a,b
      000108 50 03            [24] 1122 	jnc	00104$
      00010A 8F 82            [24] 1123 	mov	dpl,r7
      00010C 22               [24] 1124 	ret
      00010D                       1125 00104$:
                                   1126 ;	main.c:267: return (int8_t)val;
      00010D 8B 82            [24] 1127 	mov	dpl,r3
                                   1128 ;	main.c:268: }
      00010F 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'int0_isr'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	main.c:274: void int0_isr(void) __interrupt (INT_NO_INT0) {
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function int0_isr
                                   1136 ;	-----------------------------------------
      000110                       1137 _int0_isr:
      000110 C0 E0            [24] 1138 	push	acc
      000112 C0 82            [24] 1139 	push	dpl
      000114 C0 83            [24] 1140 	push	dph
                                   1141 ;	main.c:275: mouse_enabled = get_mouse_power_state();
      000116 90 07 1B         [24] 1142 	mov	dptr,#_mouse_enabled
      000119 74 04            [12] 1143 	mov	a,#0x04
      00011B 55 B0            [12] 1144 	anl	a,_P3
      00011D F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	main.c:276: }
      00011E D0 83            [24] 1147 	pop	dph
      000120 D0 82            [24] 1148 	pop	dpl
      000122 D0 E0            [24] 1149 	pop	acc
      000124 32               [24] 1150 	reti
                                   1151 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1152 ;	eliminated unneeded push/pop not_psw
                                   1153 ;	eliminated unneeded push/pop b
                                   1154 ;------------------------------------------------------------
                                   1155 ;Allocation info for local variables in function 'timer0_isr'
                                   1156 ;------------------------------------------------------------
                                   1157 ;cnt                       Allocated with name '_timer0_isr_cnt_65536_56'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	main.c:278: void timer0_isr(void) __interrupt (INT_NO_TMR0) {
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function timer0_isr
                                   1162 ;	-----------------------------------------
      000125                       1163 _timer0_isr:
      000125 C0 E0            [24] 1164 	push	acc
      000127 C0 82            [24] 1165 	push	dpl
      000129 C0 83            [24] 1166 	push	dph
      00012B C0 07            [24] 1167 	push	ar7
      00012D C0 06            [24] 1168 	push	ar6
      00012F C0 D0            [24] 1169 	push	psw
      000131 75 D0 00         [24] 1170 	mov	psw,#0x00
                                   1171 ;	main.c:281: if (++cnt > timer0_limit) {
      000134 90 07 24         [24] 1172 	mov	dptr,#_timer0_isr_cnt_65536_56
      000137 E0               [24] 1173 	movx	a,@dptr
      000138 24 01            [12] 1174 	add	a,#0x01
      00013A F0               [24] 1175 	movx	@dptr,a
      00013B E0               [24] 1176 	movx	a,@dptr
      00013C FF               [12] 1177 	mov	r7,a
      00013D 90 07 1F         [24] 1178 	mov	dptr,#_timer0_limit
      000140 E0               [24] 1179 	movx	a,@dptr
      000141 C3               [12] 1180 	clr	c
      000142 9F               [12] 1181 	subb	a,r7
      000143 50 0A            [24] 1182 	jnc	00103$
                                   1183 ;	main.c:282: cnt = 0;
      000145 90 07 24         [24] 1184 	mov	dptr,#_timer0_isr_cnt_65536_56
      000148 E4               [12] 1185 	clr	a
      000149 F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	main.c:283: allow_send_data = true;
      00014A 90 07 1D         [24] 1188 	mov	dptr,#_allow_send_data
      00014D 04               [12] 1189 	inc	a
      00014E F0               [24] 1190 	movx	@dptr,a
      00014F                       1191 00103$:
                                   1192 ;	main.c:285: }
      00014F D0 D0            [24] 1193 	pop	psw
      000151 D0 06            [24] 1194 	pop	ar6
      000153 D0 07            [24] 1195 	pop	ar7
      000155 D0 83            [24] 1196 	pop	dph
      000157 D0 82            [24] 1197 	pop	dpl
      000159 D0 E0            [24] 1198 	pop	acc
      00015B 32               [24] 1199 	reti
                                   1200 ;	eliminated unneeded push/pop b
                                   1201 ;------------------------------------------------------------
                                   1202 ;Allocation info for local variables in function 'Timer3_ISR'
                                   1203 ;------------------------------------------------------------
                                   1204 ;	main.c:287: void Timer3_ISR(void) __interrupt (INT_NO_TMR3) {
                                   1205 ;	-----------------------------------------
                                   1206 ;	 function Timer3_ISR
                                   1207 ;	-----------------------------------------
      00015C                       1208 _Timer3_ISR:
                                   1209 ;	main.c:288: T3_CTRL = 0; // Стоп таймер
      00015C 75 AA 00         [24] 1210 	mov	_T3_CTRL,#0x00
                                   1211 ;	main.c:290: led_off();
      00015F 43 C0 40         [24] 1212 	orl	_P4_OUT,#0x40
                                   1213 ;	main.c:291: }
      000162 32               [24] 1214 	reti
                                   1215 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1216 ;	eliminated unneeded push/pop not_psw
                                   1217 ;	eliminated unneeded push/pop dpl
                                   1218 ;	eliminated unneeded push/pop dph
                                   1219 ;	eliminated unneeded push/pop b
                                   1220 ;	eliminated unneeded push/pop acc
                                   1221 ;------------------------------------------------------------
                                   1222 ;Allocation info for local variables in function 'Timer2_ISR'
                                   1223 ;------------------------------------------------------------
                                   1224 ;current_byte              Allocated with name '_Timer2_ISR_current_byte_65536_61'
                                   1225 ;------------------------------------------------------------
                                   1226 ;	main.c:293: void Timer2_ISR(void) __interrupt (INT_NO_TMR2) {
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function Timer2_ISR
                                   1229 ;	-----------------------------------------
      000163                       1230 _Timer2_ISR:
      000163 C0 E0            [24] 1231 	push	acc
      000165 C0 82            [24] 1232 	push	dpl
      000167 C0 83            [24] 1233 	push	dph
      000169 C0 07            [24] 1234 	push	ar7
      00016B C0 06            [24] 1235 	push	ar6
      00016D C0 D0            [24] 1236 	push	psw
      00016F 75 D0 00         [24] 1237 	mov	psw,#0x00
                                   1238 ;	main.c:295: TF2 = 0; // Не сбрасывается автоматически
                                   1239 ;	assignBit
      000172 C2 CF            [12] 1240 	clr	_TF2
                                   1241 ;	main.c:298: if (not_rdy_2rcv() && device_init) {
      000174 E5 90            [12] 1242 	mov	a,_P1
      000176 30 E6 19         [24] 1243 	jnb	acc.6,00105$
      000179 90 07 1C         [24] 1244 	mov	dptr,#_device_init
      00017C E0               [24] 1245 	movx	a,@dptr
      00017D 60 13            [24] 1246 	jz	00105$
                                   1247 ;	main.c:300: spi_timer_slow();
                                   1248 ;	assignBit
      00017F C2 CA            [12] 1249 	clr	_TR2
      000181 75 CB FE         [24] 1250 	mov	_RCAP2H,#0xfe
      000184 75 CA 70         [24] 1251 	mov	_RCAP2L,#0x70
      000187 85 CB CD         [24] 1252 	mov	_TH2,_RCAP2H
      00018A 85 CA CC         [24] 1253 	mov	_TL2,_RCAP2L
                                   1254 ;	assignBit
      00018D D2 CA            [12] 1255 	setb	_TR2
                                   1256 ;	main.c:301: return;
      00018F 02 02 A5         [24] 1257 	ljmp	00231$
      000192                       1258 00105$:
                                   1259 ;	main.c:305: if (!spi_tx_buf_count) {
      000192 90 07 19         [24] 1260 	mov	dptr,#_spi_tx_buf_count
      000195 E0               [24] 1261 	movx	a,@dptr
      000196 70 05            [24] 1262 	jnz	00111$
                                   1263 ;	main.c:306: spi_timer_stop();
                                   1264 ;	assignBit
      000198 C2 CA            [12] 1265 	clr	_TR2
                                   1266 ;	main.c:307: return;
      00019A 02 02 A5         [24] 1267 	ljmp	00231$
      00019D                       1268 00111$:
                                   1269 ;	main.c:310: device_init = true;
      00019D 90 07 1C         [24] 1270 	mov	dptr,#_device_init
      0001A0 74 01            [12] 1271 	mov	a,#0x01
      0001A2 F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	main.c:313: current_byte = spi_tx_buf[spi_tx_buf_r];
      0001A3 90 07 18         [24] 1274 	mov	dptr,#_spi_tx_buf_r
      0001A6 E0               [24] 1275 	movx	a,@dptr
      0001A7 24 18            [12] 1276 	add	a,#_spi_tx_buf
      0001A9 F5 82            [12] 1277 	mov	dpl,a
      0001AB E4               [12] 1278 	clr	a
      0001AC 34 06            [12] 1279 	addc	a,#(_spi_tx_buf >> 8)
      0001AE F5 83            [12] 1280 	mov	dph,a
      0001B0 E0               [24] 1281 	movx	a,@dptr
      0001B1 FF               [12] 1282 	mov	r7,a
                                   1283 ;	main.c:314: if (++spi_tx_buf_r == SPI_TX_BUFFER_SIZE) {
      0001B2 90 07 18         [24] 1284 	mov	dptr,#_spi_tx_buf_r
      0001B5 E0               [24] 1285 	movx	a,@dptr
      0001B6 24 01            [12] 1286 	add	a,#0x01
      0001B8 FE               [12] 1287 	mov	r6,a
      0001B9 F0               [24] 1288 	movx	@dptr,a
      0001BA BE FF 05         [24] 1289 	cjne	r6,#0xff,00113$
                                   1290 ;	main.c:315: spi_tx_buf_r = 0;
      0001BD 90 07 18         [24] 1291 	mov	dptr,#_spi_tx_buf_r
      0001C0 E4               [12] 1292 	clr	a
      0001C1 F0               [24] 1293 	movx	@dptr,a
      0001C2                       1294 00113$:
                                   1295 ;	main.c:317: spi_tx_buf_count--;
      0001C2 90 07 19         [24] 1296 	mov	dptr,#_spi_tx_buf_count
      0001C5 E0               [24] 1297 	movx	a,@dptr
      0001C6 14               [12] 1298 	dec	a
      0001C7 F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	main.c:320: SPI_SEND_PACKET(current_byte);
      0001C8 53 90 7F         [24] 1301 	anl	_P1,#0x7f
      0001CB 00               [12] 1302 	NOP
      0001CC 00               [12] 1303 	NOP
      0001CD 00               [12] 1304 	NOP
      0001CE EF               [12] 1305 	mov	a,r7
      0001CF 30 E6 05         [24] 1306 	jnb	acc.6,00118$
      0001D2 43 90 20         [24] 1307 	orl	_P1,#0x20
      0001D5 80 03            [24] 1308 	sjmp	00120$
      0001D7                       1309 00118$:
      0001D7 53 90 DF         [24] 1310 	anl	_P1,#0xdf
      0001DA                       1311 00120$:
      0001DA 00               [12] 1312 	NOP
      0001DB 00               [12] 1313 	NOP
      0001DC 00               [12] 1314 	NOP
      0001DD 43 90 80         [24] 1315 	orl	_P1,#0x80
      0001E0 00               [12] 1316 	NOP
      0001E1 00               [12] 1317 	NOP
      0001E2 00               [12] 1318 	NOP
      0001E3 53 90 7F         [24] 1319 	anl	_P1,#0x7f
      0001E6 00               [12] 1320 	NOP
      0001E7 00               [12] 1321 	NOP
      0001E8 00               [12] 1322 	NOP
      0001E9 EF               [12] 1323 	mov	a,r7
      0001EA 30 E5 05         [24] 1324 	jnb	acc.5,00133$
      0001ED 43 90 20         [24] 1325 	orl	_P1,#0x20
      0001F0 80 03            [24] 1326 	sjmp	00135$
      0001F2                       1327 00133$:
      0001F2 53 90 DF         [24] 1328 	anl	_P1,#0xdf
      0001F5                       1329 00135$:
      0001F5 00               [12] 1330 	NOP
      0001F6 00               [12] 1331 	NOP
      0001F7 00               [12] 1332 	NOP
      0001F8 43 90 80         [24] 1333 	orl	_P1,#0x80
      0001FB 00               [12] 1334 	NOP
      0001FC 00               [12] 1335 	NOP
      0001FD 00               [12] 1336 	NOP
      0001FE 53 90 7F         [24] 1337 	anl	_P1,#0x7f
      000201 00               [12] 1338 	NOP
      000202 00               [12] 1339 	NOP
      000203 00               [12] 1340 	NOP
      000204 EF               [12] 1341 	mov	a,r7
      000205 30 E4 05         [24] 1342 	jnb	acc.4,00148$
      000208 43 90 20         [24] 1343 	orl	_P1,#0x20
      00020B 80 03            [24] 1344 	sjmp	00150$
      00020D                       1345 00148$:
      00020D 53 90 DF         [24] 1346 	anl	_P1,#0xdf
      000210                       1347 00150$:
      000210 00               [12] 1348 	NOP
      000211 00               [12] 1349 	NOP
      000212 00               [12] 1350 	NOP
      000213 43 90 80         [24] 1351 	orl	_P1,#0x80
      000216 00               [12] 1352 	NOP
      000217 00               [12] 1353 	NOP
      000218 00               [12] 1354 	NOP
      000219 53 90 7F         [24] 1355 	anl	_P1,#0x7f
      00021C 00               [12] 1356 	NOP
      00021D 00               [12] 1357 	NOP
      00021E 00               [12] 1358 	NOP
      00021F EF               [12] 1359 	mov	a,r7
      000220 30 E3 05         [24] 1360 	jnb	acc.3,00163$
      000223 43 90 20         [24] 1361 	orl	_P1,#0x20
      000226 80 03            [24] 1362 	sjmp	00165$
      000228                       1363 00163$:
      000228 53 90 DF         [24] 1364 	anl	_P1,#0xdf
      00022B                       1365 00165$:
      00022B 00               [12] 1366 	NOP
      00022C 00               [12] 1367 	NOP
      00022D 00               [12] 1368 	NOP
      00022E 43 90 80         [24] 1369 	orl	_P1,#0x80
      000231 00               [12] 1370 	NOP
      000232 00               [12] 1371 	NOP
      000233 00               [12] 1372 	NOP
      000234 53 90 7F         [24] 1373 	anl	_P1,#0x7f
      000237 00               [12] 1374 	NOP
      000238 00               [12] 1375 	NOP
      000239 00               [12] 1376 	NOP
      00023A EF               [12] 1377 	mov	a,r7
      00023B 30 E2 05         [24] 1378 	jnb	acc.2,00178$
      00023E 43 90 20         [24] 1379 	orl	_P1,#0x20
      000241 80 03            [24] 1380 	sjmp	00180$
      000243                       1381 00178$:
      000243 53 90 DF         [24] 1382 	anl	_P1,#0xdf
      000246                       1383 00180$:
      000246 00               [12] 1384 	NOP
      000247 00               [12] 1385 	NOP
      000248 00               [12] 1386 	NOP
      000249 43 90 80         [24] 1387 	orl	_P1,#0x80
      00024C 00               [12] 1388 	NOP
      00024D 00               [12] 1389 	NOP
      00024E 00               [12] 1390 	NOP
      00024F 53 90 7F         [24] 1391 	anl	_P1,#0x7f
      000252 00               [12] 1392 	NOP
      000253 00               [12] 1393 	NOP
      000254 00               [12] 1394 	NOP
      000255 EF               [12] 1395 	mov	a,r7
      000256 30 E1 05         [24] 1396 	jnb	acc.1,00193$
      000259 43 90 20         [24] 1397 	orl	_P1,#0x20
      00025C 80 03            [24] 1398 	sjmp	00195$
      00025E                       1399 00193$:
      00025E 53 90 DF         [24] 1400 	anl	_P1,#0xdf
      000261                       1401 00195$:
      000261 00               [12] 1402 	NOP
      000262 00               [12] 1403 	NOP
      000263 00               [12] 1404 	NOP
      000264 43 90 80         [24] 1405 	orl	_P1,#0x80
      000267 00               [12] 1406 	NOP
      000268 00               [12] 1407 	NOP
      000269 00               [12] 1408 	NOP
      00026A 53 90 7F         [24] 1409 	anl	_P1,#0x7f
      00026D 00               [12] 1410 	NOP
      00026E 00               [12] 1411 	NOP
      00026F 00               [12] 1412 	NOP
      000270 EF               [12] 1413 	mov	a,r7
      000271 30 E0 05         [24] 1414 	jnb	acc.0,00208$
      000274 43 90 20         [24] 1415 	orl	_P1,#0x20
      000277 80 03            [24] 1416 	sjmp	00210$
      000279                       1417 00208$:
      000279 53 90 DF         [24] 1418 	anl	_P1,#0xdf
      00027C                       1419 00210$:
      00027C 00               [12] 1420 	NOP
      00027D 00               [12] 1421 	NOP
      00027E 00               [12] 1422 	NOP
      00027F 43 90 80         [24] 1423 	orl	_P1,#0x80
      000282 00               [12] 1424 	NOP
      000283 00               [12] 1425 	NOP
      000284 00               [12] 1426 	NOP
      000285 53 90 7F         [24] 1427 	anl	_P1,#0x7f
      000288 53 90 DF         [24] 1428 	anl	_P1,#0xdf
                                   1429 ;	main.c:323: if (!spi_tx_buf_count) { // Нечего передавать, останавливаемся
      00028B 90 07 19         [24] 1430 	mov	dptr,#_spi_tx_buf_count
      00028E E0               [24] 1431 	movx	a,@dptr
      00028F 70 04            [24] 1432 	jnz	00225$
                                   1433 ;	main.c:324: spi_timer_stop();
                                   1434 ;	assignBit
      000291 C2 CA            [12] 1435 	clr	_TR2
                                   1436 ;	main.c:326: spi_timer_fast();
      000293 80 10            [24] 1437 	sjmp	00231$
      000295                       1438 00225$:
                                   1439 ;	assignBit
      000295 C2 CA            [12] 1440 	clr	_TR2
      000297 75 CB FF         [24] 1441 	mov	_RCAP2H,#0xff
      00029A 75 CA 9C         [24] 1442 	mov	_RCAP2L,#0x9c
      00029D 85 CB CD         [24] 1443 	mov	_TH2,_RCAP2H
      0002A0 85 CA CC         [24] 1444 	mov	_TL2,_RCAP2L
                                   1445 ;	assignBit
      0002A3 D2 CA            [12] 1446 	setb	_TR2
      0002A5                       1447 00231$:
                                   1448 ;	main.c:328: }
      0002A5 D0 D0            [24] 1449 	pop	psw
      0002A7 D0 06            [24] 1450 	pop	ar6
      0002A9 D0 07            [24] 1451 	pop	ar7
      0002AB D0 83            [24] 1452 	pop	dph
      0002AD D0 82            [24] 1453 	pop	dpl
      0002AF D0 E0            [24] 1454 	pop	acc
      0002B1 32               [24] 1455 	reti
                                   1456 ;	eliminated unneeded push/pop b
                                   1457 ;------------------------------------------------------------
                                   1458 ;Allocation info for local variables in function 'flash_led'
                                   1459 ;------------------------------------------------------------
                                   1460 ;	main.c:334: void flash_led(void) {
                                   1461 ;	-----------------------------------------
                                   1462 ;	 function flash_led
                                   1463 ;	-----------------------------------------
      0002B2                       1464 _flash_led:
                                   1465 ;	main.c:335: led_on();
      0002B2 53 C0 BF         [24] 1466 	anl	_P4_OUT,#0xbf
                                   1467 ;	main.c:336: led_timer_start();
      0002B5 75 AA 01         [24] 1468 	mov	_T3_CTRL,#0x01
                                   1469 ;	main.c:337: }
      0002B8 22               [24] 1470 	ret
                                   1471 ;------------------------------------------------------------
                                   1472 ;Allocation info for local variables in function 'usb_mouse_init'
                                   1473 ;------------------------------------------------------------
                                   1474 ;	main.c:343: static inline void usb_mouse_init(void) {
                                   1475 ;	-----------------------------------------
                                   1476 ;	 function usb_mouse_init
                                   1477 ;	-----------------------------------------
      0002B9                       1478 _usb_mouse_init:
                                   1479 ;	main.c:344: m_wheel = opt_wheel_enabled;
      0002B9 90 06 01         [24] 1480 	mov	dptr,#_opt_wheel_enabled
      0002BC E0               [24] 1481 	movx	a,@dptr
      0002BD 90 06 04         [24] 1482 	mov	dptr,#_m_wheel
      0002C0 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	main.c:345: }
      0002C1 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'mouse_write'
                                   1488 ;------------------------------------------------------------
                                   1489 ;c                         Allocated with name '_mouse_write_c_65536_105'
                                   1490 ;ea_state___LINE__         Allocated with name '_mouse_write_ea_state___LINE___131072_108'
                                   1491 ;------------------------------------------------------------
                                   1492 ;	main.c:347: void mouse_write(uint8_t c) {
                                   1493 ;	-----------------------------------------
                                   1494 ;	 function mouse_write
                                   1495 ;	-----------------------------------------
      0002C2                       1496 _mouse_write:
      0002C2 E5 82            [12] 1497 	mov	a,dpl
      0002C4 90 07 25         [24] 1498 	mov	dptr,#_mouse_write_c_65536_105
      0002C7 F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	main.c:349: if (!mouse_enabled)
      0002C8 90 07 1B         [24] 1501 	mov	dptr,#_mouse_enabled
      0002CB E0               [24] 1502 	movx	a,@dptr
      0002CC 70 01            [24] 1503 	jnz	00102$
                                   1504 ;	main.c:350: return;
      0002CE 22               [24] 1505 	ret
      0002CF                       1506 00102$:
                                   1507 ;	main.c:353: if (mouse_rx_buf_count >= MS_RX_BUF_SIZE) {
      0002CF 90 06 17         [24] 1508 	mov	dptr,#_mouse_rx_buf_count
      0002D2 E0               [24] 1509 	movx	a,@dptr
      0002D3 FF               [12] 1510 	mov	r7,a
      0002D4 BF 10 00         [24] 1511 	cjne	r7,#0x10,00125$
      0002D7                       1512 00125$:
      0002D7 40 07            [24] 1513 	jc	00107$
                                   1514 ;	main.c:354: fatal_error = true;
      0002D9 90 07 1E         [24] 1515 	mov	dptr,#_fatal_error
      0002DC 74 01            [12] 1516 	mov	a,#0x01
      0002DE F0               [24] 1517 	movx	@dptr,a
                                   1518 ;	main.c:355: return;
                                   1519 ;	main.c:357: CRITICAL_SECTION (
      0002DF 22               [24] 1520 	ret
      0002E0                       1521 00107$:
      0002E0 A2 AF            [12] 1522 	mov	c,_EA
      0002E2 E4               [12] 1523 	clr	a
      0002E3 33               [12] 1524 	rlc	a
      0002E4 FF               [12] 1525 	mov	r7,a
                                   1526 ;	assignBit
      0002E5 C2 AF            [12] 1527 	clr	_EA
      0002E7 90 06 15         [24] 1528 	mov	dptr,#_mouse_rx_buf_w
      0002EA E0               [24] 1529 	movx	a,@dptr
      0002EB 24 05            [12] 1530 	add	a,#_mouse_rx_buf
      0002ED FE               [12] 1531 	mov	r6,a
      0002EE E4               [12] 1532 	clr	a
      0002EF 34 06            [12] 1533 	addc	a,#(_mouse_rx_buf >> 8)
      0002F1 FD               [12] 1534 	mov	r5,a
      0002F2 90 07 25         [24] 1535 	mov	dptr,#_mouse_write_c_65536_105
      0002F5 E0               [24] 1536 	movx	a,@dptr
      0002F6 8E 82            [24] 1537 	mov	dpl,r6
      0002F8 8D 83            [24] 1538 	mov	dph,r5
      0002FA F0               [24] 1539 	movx	@dptr,a
      0002FB 90 06 17         [24] 1540 	mov	dptr,#_mouse_rx_buf_count
      0002FE E0               [24] 1541 	movx	a,@dptr
      0002FF 04               [12] 1542 	inc	a
      000300 F0               [24] 1543 	movx	@dptr,a
      000301 90 06 15         [24] 1544 	mov	dptr,#_mouse_rx_buf_w
      000304 E0               [24] 1545 	movx	a,@dptr
      000305 24 01            [12] 1546 	add	a,#0x01
      000307 FE               [12] 1547 	mov	r6,a
      000308 F0               [24] 1548 	movx	@dptr,a
      000309 BE 10 05         [24] 1549 	cjne	r6,#0x10,00106$
      00030C 90 06 15         [24] 1550 	mov	dptr,#_mouse_rx_buf_w
      00030F E4               [12] 1551 	clr	a
      000310 F0               [24] 1552 	movx	@dptr,a
      000311                       1553 00106$:
                                   1554 ;	assignBit
      000311 EF               [12] 1555 	mov	a,r7
      000312 24 FF            [12] 1556 	add	a,#0xff
      000314 92 AF            [24] 1557 	mov	_EA,c
                                   1558 ;	main.c:364: }
      000316 22               [24] 1559 	ret
                                   1560 ;------------------------------------------------------------
                                   1561 ;Allocation info for local variables in function 'mouse_read'
                                   1562 ;------------------------------------------------------------
                                   1563 ;data                      Allocated with name '_mouse_read_data_65536_111'
                                   1564 ;ea_state___LINE__         Allocated with name '_mouse_read_ea_state___LINE___131072_112'
                                   1565 ;------------------------------------------------------------
                                   1566 ;	main.c:366: static uint8_t mouse_read(void) {
                                   1567 ;	-----------------------------------------
                                   1568 ;	 function mouse_read
                                   1569 ;	-----------------------------------------
      000317                       1570 _mouse_read:
                                   1571 ;	main.c:367: uint8_t data = 0;
      000317 90 07 26         [24] 1572 	mov	dptr,#_mouse_read_data_65536_111
      00031A E4               [12] 1573 	clr	a
      00031B F0               [24] 1574 	movx	@dptr,a
                                   1575 ;	main.c:370: CRITICAL_SECTION (
      00031C A2 AF            [12] 1576 	mov	c,_EA
      00031E E4               [12] 1577 	clr	a
      00031F 33               [12] 1578 	rlc	a
      000320 FF               [12] 1579 	mov	r7,a
                                   1580 ;	assignBit
      000321 C2 AF            [12] 1581 	clr	_EA
      000323 90 06 17         [24] 1582 	mov	dptr,#_mouse_rx_buf_count
      000326 E0               [24] 1583 	movx	a,@dptr
      000327 60 28            [24] 1584 	jz	00104$
      000329 90 06 16         [24] 1585 	mov	dptr,#_mouse_rx_buf_r
      00032C E0               [24] 1586 	movx	a,@dptr
      00032D 24 05            [12] 1587 	add	a,#_mouse_rx_buf
      00032F F5 82            [12] 1588 	mov	dpl,a
      000331 E4               [12] 1589 	clr	a
      000332 34 06            [12] 1590 	addc	a,#(_mouse_rx_buf >> 8)
      000334 F5 83            [12] 1591 	mov	dph,a
      000336 E0               [24] 1592 	movx	a,@dptr
      000337 90 07 26         [24] 1593 	mov	dptr,#_mouse_read_data_65536_111
      00033A F0               [24] 1594 	movx	@dptr,a
      00033B 90 06 17         [24] 1595 	mov	dptr,#_mouse_rx_buf_count
      00033E E0               [24] 1596 	movx	a,@dptr
      00033F 14               [12] 1597 	dec	a
      000340 F0               [24] 1598 	movx	@dptr,a
      000341 90 06 16         [24] 1599 	mov	dptr,#_mouse_rx_buf_r
      000344 E0               [24] 1600 	movx	a,@dptr
      000345 24 01            [12] 1601 	add	a,#0x01
      000347 FE               [12] 1602 	mov	r6,a
      000348 F0               [24] 1603 	movx	@dptr,a
      000349 BE 10 05         [24] 1604 	cjne	r6,#0x10,00104$
      00034C 90 06 16         [24] 1605 	mov	dptr,#_mouse_rx_buf_r
      00034F E4               [12] 1606 	clr	a
      000350 F0               [24] 1607 	movx	@dptr,a
      000351                       1608 00104$:
                                   1609 ;	assignBit
      000351 EF               [12] 1610 	mov	a,r7
      000352 24 FF            [12] 1611 	add	a,#0xff
      000354 92 AF            [24] 1612 	mov	_EA,c
                                   1613 ;	main.c:380: return data;
      000356 90 07 26         [24] 1614 	mov	dptr,#_mouse_read_data_65536_111
      000359 E0               [24] 1615 	movx	a,@dptr
                                   1616 ;	main.c:381: }
      00035A F5 82            [12] 1617 	mov	dpl,a
      00035C 22               [24] 1618 	ret
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'spi_init'
                                   1621 ;------------------------------------------------------------
                                   1622 ;ea_state___LINE__         Allocated with name '_spi_init_ea_state___LINE___131072_117'
                                   1623 ;------------------------------------------------------------
                                   1624 ;	main.c:387: static inline void spi_init(void) {
                                   1625 ;	-----------------------------------------
                                   1626 ;	 function spi_init
                                   1627 ;	-----------------------------------------
      00035D                       1628 _spi_init:
                                   1629 ;	main.c:388: CRITICAL_SECTION (
      00035D A2 AF            [12] 1630 	mov	c,_EA
      00035F E4               [12] 1631 	clr	a
      000360 33               [12] 1632 	rlc	a
      000361 FF               [12] 1633 	mov	r7,a
                                   1634 ;	assignBit
      000362 C2 AF            [12] 1635 	clr	_EA
      000364 90 07 17         [24] 1636 	mov	dptr,#_spi_tx_buf_w
      000367 E4               [12] 1637 	clr	a
      000368 F0               [24] 1638 	movx	@dptr,a
      000369 90 07 18         [24] 1639 	mov	dptr,#_spi_tx_buf_r
      00036C F0               [24] 1640 	movx	@dptr,a
      00036D 90 07 19         [24] 1641 	mov	dptr,#_spi_tx_buf_count
      000370 F0               [24] 1642 	movx	@dptr,a
      000371 90 07 1C         [24] 1643 	mov	dptr,#_device_init
      000374 E0               [24] 1644 	movx	a,@dptr
      000375 70 26            [24] 1645 	jnz	00102$
      000377 43 90 20         [24] 1646 	orl	_P1,#0x20
      00037A 90 00 01         [24] 1647 	mov	dptr,#0x0001
      00037D C0 07            [24] 1648 	push	ar7
      00037F 12 17 54         [24] 1649 	lcall	_delayUs
      000382 D0 07            [24] 1650 	pop	ar7
      000384 53 90 DF         [24] 1651 	anl	_P1,#0xdf
      000387 90 06 00         [24] 1652 	mov	dptr,#_opt_com_settings
      00038A E0               [24] 1653 	movx	a,@dptr
      00038B FE               [12] 1654 	mov	r6,a
      00038C 90 06 03         [24] 1655 	mov	dptr,#_opt_irq_settings
      00038F E0               [24] 1656 	movx	a,@dptr
      000390 90 07 28         [24] 1657 	mov	dptr,#_spi_send_config_PARM_2
      000393 F0               [24] 1658 	movx	@dptr,a
      000394 8E 82            [24] 1659 	mov	dpl,r6
      000396 C0 07            [24] 1660 	push	ar7
      000398 12 04 11         [24] 1661 	lcall	_spi_send_config
      00039B D0 07            [24] 1662 	pop	ar7
      00039D                       1663 00102$:
      00039D 90 00 01         [24] 1664 	mov	dptr,#0x0001
      0003A0 C0 07            [24] 1665 	push	ar7
      0003A2 12 17 54         [24] 1666 	lcall	_delayUs
      0003A5 D0 07            [24] 1667 	pop	ar7
      0003A7 53 90 F7         [24] 1668 	anl	_P1,#0xf7
                                   1669 ;	assignBit
      0003AA EF               [12] 1670 	mov	a,r7
      0003AB 24 FF            [12] 1671 	add	a,#0xff
      0003AD 92 AF            [24] 1672 	mov	_EA,c
                                   1673 ;	main.c:407: while (!device_init) {
      0003AF                       1674 00106$:
      0003AF 90 07 1C         [24] 1675 	mov	dptr,#_device_init
      0003B2 E0               [24] 1676 	movx	a,@dptr
      0003B3 60 FA            [24] 1677 	jz	00106$
                                   1678 ;	main.c:408: mcu_sleep();
                                   1679 ;	main.c:410: }
      0003B5 22               [24] 1680 	ret
                                   1681 ;------------------------------------------------------------
                                   1682 ;Allocation info for local variables in function 'spi_send'
                                   1683 ;------------------------------------------------------------
                                   1684 ;c                         Allocated with name '_spi_send_c_65536_123'
                                   1685 ;ea_state___LINE__         Allocated with name '_spi_send_ea_state___LINE___131072_126'
                                   1686 ;------------------------------------------------------------
                                   1687 ;	main.c:412: static void spi_send(uint8_t c) {
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function spi_send
                                   1690 ;	-----------------------------------------
      0003B6                       1691 _spi_send:
      0003B6 E5 82            [12] 1692 	mov	a,dpl
      0003B8 90 07 27         [24] 1693 	mov	dptr,#_spi_send_c_65536_123
      0003BB F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	main.c:413: while (spi_tx_buf_count == SPI_TX_BUFFER_SIZE) {
      0003BC                       1696 00101$:
      0003BC 90 07 19         [24] 1697 	mov	dptr,#_spi_tx_buf_count
      0003BF E0               [24] 1698 	movx	a,@dptr
      0003C0 FF               [12] 1699 	mov	r7,a
      0003C1 BF FF 02         [24] 1700 	cjne	r7,#0xff,00133$
      0003C4 80 F6            [24] 1701 	sjmp	00101$
      0003C6                       1702 00133$:
                                   1703 ;	main.c:417: CRITICAL_SECTION (
      0003C6 A2 AF            [12] 1704 	mov	c,_EA
      0003C8 E4               [12] 1705 	clr	a
      0003C9 33               [12] 1706 	rlc	a
      0003CA FF               [12] 1707 	mov	r7,a
                                   1708 ;	assignBit
      0003CB C2 AF            [12] 1709 	clr	_EA
      0003CD 90 07 17         [24] 1710 	mov	dptr,#_spi_tx_buf_w
      0003D0 E0               [24] 1711 	movx	a,@dptr
      0003D1 24 18            [12] 1712 	add	a,#_spi_tx_buf
      0003D3 FE               [12] 1713 	mov	r6,a
      0003D4 E4               [12] 1714 	clr	a
      0003D5 34 06            [12] 1715 	addc	a,#(_spi_tx_buf >> 8)
      0003D7 FD               [12] 1716 	mov	r5,a
      0003D8 90 07 27         [24] 1717 	mov	dptr,#_spi_send_c_65536_123
      0003DB E0               [24] 1718 	movx	a,@dptr
      0003DC 8E 82            [24] 1719 	mov	dpl,r6
      0003DE 8D 83            [24] 1720 	mov	dph,r5
      0003E0 F0               [24] 1721 	movx	@dptr,a
      0003E1 90 07 19         [24] 1722 	mov	dptr,#_spi_tx_buf_count
      0003E4 E0               [24] 1723 	movx	a,@dptr
      0003E5 FE               [12] 1724 	mov	r6,a
      0003E6 04               [12] 1725 	inc	a
      0003E7 F0               [24] 1726 	movx	@dptr,a
      0003E8 EE               [12] 1727 	mov	a,r6
      0003E9 70 10            [24] 1728 	jnz	00108$
                                   1729 ;	assignBit
      0003EB C2 CA            [12] 1730 	clr	_TR2
      0003ED 75 CB FF         [24] 1731 	mov	_RCAP2H,#0xff
      0003F0 75 CA 9C         [24] 1732 	mov	_RCAP2L,#0x9c
      0003F3 85 CB CD         [24] 1733 	mov	_TH2,_RCAP2H
      0003F6 85 CA CC         [24] 1734 	mov	_TL2,_RCAP2L
                                   1735 ;	assignBit
      0003F9 D2 CA            [12] 1736 	setb	_TR2
      0003FB                       1737 00108$:
      0003FB 90 07 17         [24] 1738 	mov	dptr,#_spi_tx_buf_w
      0003FE E0               [24] 1739 	movx	a,@dptr
      0003FF 24 01            [12] 1740 	add	a,#0x01
      000401 FE               [12] 1741 	mov	r6,a
      000402 F0               [24] 1742 	movx	@dptr,a
      000403 BE FF 05         [24] 1743 	cjne	r6,#0xff,00110$
      000406 90 07 17         [24] 1744 	mov	dptr,#_spi_tx_buf_w
      000409 E4               [12] 1745 	clr	a
      00040A F0               [24] 1746 	movx	@dptr,a
      00040B                       1747 00110$:
                                   1748 ;	assignBit
      00040B EF               [12] 1749 	mov	a,r7
      00040C 24 FF            [12] 1750 	add	a,#0xff
      00040E 92 AF            [24] 1751 	mov	_EA,c
                                   1752 ;	main.c:425: }
      000410 22               [24] 1753 	ret
                                   1754 ;------------------------------------------------------------
                                   1755 ;Allocation info for local variables in function 'spi_send_config'
                                   1756 ;------------------------------------------------------------
                                   1757 ;opt_irq                   Allocated with name '_spi_send_config_PARM_2'
                                   1758 ;opt_com                   Allocated with name '_spi_send_config_opt_com_65536_132'
                                   1759 ;config_data               Allocated with name '_spi_send_config_config_data_65536_133'
                                   1760 ;------------------------------------------------------------
                                   1761 ;	main.c:428: static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq) {
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function spi_send_config
                                   1764 ;	-----------------------------------------
      000411                       1765 _spi_send_config:
      000411 E5 82            [12] 1766 	mov	a,dpl
      000413 90 07 29         [24] 1767 	mov	dptr,#_spi_send_config_opt_com_65536_132
      000416 F0               [24] 1768 	movx	@dptr,a
                                   1769 ;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
      000417 E0               [24] 1770 	movx	a,@dptr
      000418 54 03            [12] 1771 	anl	a,#0x03
      00041A FF               [12] 1772 	mov	r7,a
                                   1773 ;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      00041B 90 07 28         [24] 1774 	mov	dptr,#_spi_send_config_PARM_2
      00041E E0               [24] 1775 	movx	a,@dptr
      00041F FE               [12] 1776 	mov	r6,a
      000420 BE 01 06         [24] 1777 	cjne	r6,#0x01,00103$
      000423 7D 04            [12] 1778 	mov	r5,#0x04
      000425 7E 00            [12] 1779 	mov	r6,#0x00
      000427 80 04            [24] 1780 	sjmp	00104$
      000429                       1781 00103$:
      000429 7D 00            [12] 1782 	mov	r5,#0x00
      00042B 7E 00            [12] 1783 	mov	r6,#0x00
      00042D                       1784 00104$:
      00042D ED               [12] 1785 	mov	a,r5
      00042E 42 07            [12] 1786 	orl	ar7,a
                                   1787 ;	main.c:433: spi_send(config_data);
      000430 8F 82            [24] 1788 	mov	dpl,r7
                                   1789 ;	main.c:434: }
      000432 02 03 B6         [24] 1790 	ljmp	_spi_send
                                   1791 ;------------------------------------------------------------
                                   1792 ;Allocation info for local variables in function 'spi_m_send'
                                   1793 ;------------------------------------------------------------
                                   1794 ;y                         Allocated with name '_spi_m_send_PARM_2'
                                   1795 ;z                         Allocated with name '_spi_m_send_PARM_3'
                                   1796 ;b                         Allocated with name '_spi_m_send_PARM_4'
                                   1797 ;x                         Allocated with name '_spi_m_send_x_65536_134'
                                   1798 ;left_b                    Allocated with name '_spi_m_send_left_b_65536_135'
                                   1799 ;right_b                   Allocated with name '_spi_m_send_right_b_65536_135'
                                   1800 ;middle_b                  Allocated with name '_spi_m_send_middle_b_65536_135'
                                   1801 ;------------------------------------------------------------
                                   1802 ;	main.c:437: static void spi_m_send(int8_t x, int8_t y, int8_t z, uint8_t b) {
                                   1803 ;	-----------------------------------------
                                   1804 ;	 function spi_m_send
                                   1805 ;	-----------------------------------------
      000435                       1806 _spi_m_send:
      000435 E5 82            [12] 1807 	mov	a,dpl
      000437 90 07 2D         [24] 1808 	mov	dptr,#_spi_m_send_x_65536_134
      00043A F0               [24] 1809 	movx	@dptr,a
                                   1810 ;	main.c:440: left_b = b & 1;
      00043B 90 07 2C         [24] 1811 	mov	dptr,#_spi_m_send_PARM_4
      00043E E0               [24] 1812 	movx	a,@dptr
      00043F FF               [12] 1813 	mov	r7,a
      000440 74 01            [12] 1814 	mov	a,#0x01
      000442 5F               [12] 1815 	anl	a,r7
      000443 FE               [12] 1816 	mov	r6,a
                                   1817 ;	main.c:441: right_b = (b >> 1) & 1;
      000444 EF               [12] 1818 	mov	a,r7
      000445 03               [12] 1819 	rr	a
      000446 54 01            [12] 1820 	anl	a,#0x01
      000448 FD               [12] 1821 	mov	r5,a
                                   1822 ;	main.c:442: middle_b = (b >> 2) & 1;
      000449 EF               [12] 1823 	mov	a,r7
      00044A 03               [12] 1824 	rr	a
      00044B 03               [12] 1825 	rr	a
      00044C 54 01            [12] 1826 	anl	a,#0x01
      00044E FF               [12] 1827 	mov	r7,a
                                   1828 ;	main.c:444: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
      00044F EE               [12] 1829 	mov	a,r6
      000450 C4               [12] 1830 	swap	a
      000451 23               [12] 1831 	rl	a
      000452 54 E0            [12] 1832 	anl	a,#0xe0
      000454 FE               [12] 1833 	mov	r6,a
      000455 43 06 40         [24] 1834 	orl	ar6,#0x40
      000458 ED               [12] 1835 	mov	a,r5
      000459 C4               [12] 1836 	swap	a
      00045A 54 F0            [12] 1837 	anl	a,#0xf0
      00045C 42 06            [12] 1838 	orl	ar6,a
                                   1839 ;	main.c:445: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
      00045E 90 07 2A         [24] 1840 	mov	dptr,#_spi_m_send_PARM_2
      000461 E0               [24] 1841 	movx	a,@dptr
      000462 FD               [12] 1842 	mov	r5,a
      000463 FB               [12] 1843 	mov	r3,a
      000464 33               [12] 1844 	rlc	a
      000465 95 E0            [12] 1845 	subb	a,acc
      000467 53 03 C0         [24] 1846 	anl	ar3,#0xc0
      00046A E4               [12] 1847 	clr	a
      00046B CB               [12] 1848 	xch	a,r3
      00046C C4               [12] 1849 	swap	a
      00046D 54 0F            [12] 1850 	anl	a,#0x0f
      00046F 6B               [12] 1851 	xrl	a,r3
      000470 CB               [12] 1852 	xch	a,r3
      000471 54 0F            [12] 1853 	anl	a,#0x0f
      000473 CB               [12] 1854 	xch	a,r3
      000474 6B               [12] 1855 	xrl	a,r3
      000475 CB               [12] 1856 	xch	a,r3
      000476 30 E3 02         [24] 1857 	jnb	acc.3,00109$
      000479 44 F0            [12] 1858 	orl	a,#0xf0
      00047B                       1859 00109$:
      00047B EB               [12] 1860 	mov	a,r3
      00047C 42 06            [12] 1861 	orl	ar6,a
      00047E 90 07 2D         [24] 1862 	mov	dptr,#_spi_m_send_x_65536_134
      000481 E0               [24] 1863 	movx	a,@dptr
      000482 FC               [12] 1864 	mov	r4,a
      000483 FA               [12] 1865 	mov	r2,a
      000484 33               [12] 1866 	rlc	a
      000485 95 E0            [12] 1867 	subb	a,acc
      000487 53 02 C0         [24] 1868 	anl	ar2,#0xc0
      00048A E4               [12] 1869 	clr	a
      00048B A2 E7            [12] 1870 	mov	c,acc.7
      00048D CA               [12] 1871 	xch	a,r2
      00048E 33               [12] 1872 	rlc	a
      00048F CA               [12] 1873 	xch	a,r2
      000490 33               [12] 1874 	rlc	a
      000491 A2 E7            [12] 1875 	mov	c,acc.7
      000493 CA               [12] 1876 	xch	a,r2
      000494 33               [12] 1877 	rlc	a
      000495 CA               [12] 1878 	xch	a,r2
      000496 33               [12] 1879 	rlc	a
      000497 CA               [12] 1880 	xch	a,r2
      000498 54 03            [12] 1881 	anl	a,#0x03
      00049A 30 E1 02         [24] 1882 	jnb	acc.1,00110$
      00049D 44 FC            [12] 1883 	orl	a,#0xfc
      00049F                       1884 00110$:
      00049F EA               [12] 1885 	mov	a,r2
      0004A0 42 06            [12] 1886 	orl	ar6,a
      0004A2 8E 82            [24] 1887 	mov	dpl,r6
      0004A4 C0 07            [24] 1888 	push	ar7
      0004A6 C0 05            [24] 1889 	push	ar5
      0004A8 C0 04            [24] 1890 	push	ar4
      0004AA 12 03 B6         [24] 1891 	lcall	_spi_send
      0004AD D0 04            [24] 1892 	pop	ar4
                                   1893 ;	main.c:446: spi_send(x & 0x3F);
      0004AF 53 04 3F         [24] 1894 	anl	ar4,#0x3f
      0004B2 8C 82            [24] 1895 	mov	dpl,r4
      0004B4 12 03 B6         [24] 1896 	lcall	_spi_send
      0004B7 D0 05            [24] 1897 	pop	ar5
                                   1898 ;	main.c:447: spi_send(y & 0x3F);
      0004B9 53 05 3F         [24] 1899 	anl	ar5,#0x3f
      0004BC 8D 82            [24] 1900 	mov	dpl,r5
      0004BE 12 03 B6         [24] 1901 	lcall	_spi_send
      0004C1 D0 07            [24] 1902 	pop	ar7
                                   1903 ;	main.c:449: if (m_wheel) {
      0004C3 90 06 04         [24] 1904 	mov	dptr,#_m_wheel
      0004C6 E0               [24] 1905 	movx	a,@dptr
      0004C7 60 15            [24] 1906 	jz	00102$
                                   1907 ;	main.c:450: spi_send((middle_b << 4) | (z & 0x0F));
      0004C9 EF               [12] 1908 	mov	a,r7
      0004CA C4               [12] 1909 	swap	a
      0004CB 54 F0            [12] 1910 	anl	a,#0xf0
      0004CD FF               [12] 1911 	mov	r7,a
      0004CE 90 07 2B         [24] 1912 	mov	dptr,#_spi_m_send_PARM_3
      0004D1 E0               [24] 1913 	movx	a,@dptr
      0004D2 FE               [12] 1914 	mov	r6,a
      0004D3 53 06 0F         [24] 1915 	anl	ar6,#0x0f
      0004D6 EF               [12] 1916 	mov	a,r7
      0004D7 42 06            [12] 1917 	orl	ar6,a
      0004D9 8E 82            [24] 1918 	mov	dpl,r6
      0004DB 12 03 B6         [24] 1919 	lcall	_spi_send
      0004DE                       1920 00102$:
                                   1921 ;	main.c:453: flash_led();
                                   1922 ;	main.c:454: }
      0004DE 02 02 B2         [24] 1923 	ljmp	_flash_led
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'send_mouse_id'
                                   1926 ;------------------------------------------------------------
                                   1927 ;	main.c:457: static inline void send_mouse_id(void) {
                                   1928 ;	-----------------------------------------
                                   1929 ;	 function send_mouse_id
                                   1930 ;	-----------------------------------------
      0004E1                       1931 _send_mouse_id:
                                   1932 ;	main.c:459: delay(20);
      0004E1 90 00 14         [24] 1933 	mov	dptr,#0x0014
      0004E4 12 17 A9         [24] 1934 	lcall	_delay
                                   1935 ;	main.c:462: if (!mouse_enabled) {
      0004E7 90 07 1B         [24] 1936 	mov	dptr,#_mouse_enabled
      0004EA E0               [24] 1937 	movx	a,@dptr
      0004EB 70 01            [24] 1938 	jnz	00102$
                                   1939 ;	main.c:463: return;
      0004ED 22               [24] 1940 	ret
      0004EE                       1941 00102$:
                                   1942 ;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
      0004EE 75 82 4D         [24] 1943 	mov	dpl,#0x4d
      0004F1 12 03 B6         [24] 1944 	lcall	_spi_send
                                   1945 ;	main.c:468: if (m_wheel) {
      0004F4 90 06 04         [24] 1946 	mov	dptr,#_m_wheel
      0004F7 E0               [24] 1947 	movx	a,@dptr
      0004F8 60 1E            [24] 1948 	jz	00104$
                                   1949 ;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      0004FA 75 82 5A         [24] 1950 	mov	dpl,#0x5a
      0004FD 12 03 B6         [24] 1951 	lcall	_spi_send
                                   1952 ;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
      000500 75 82 40         [24] 1953 	mov	dpl,#0x40
      000503 12 03 B6         [24] 1954 	lcall	_spi_send
                                   1955 ;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
      000506 75 82 00         [24] 1956 	mov	dpl,#0x00
      000509 12 03 B6         [24] 1957 	lcall	_spi_send
                                   1958 ;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
      00050C 75 82 00         [24] 1959 	mov	dpl,#0x00
      00050F 12 03 B6         [24] 1960 	lcall	_spi_send
                                   1961 ;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
      000512 75 82 00         [24] 1962 	mov	dpl,#0x00
      000515 02 03 B6         [24] 1963 	ljmp	_spi_send
      000518                       1964 00104$:
                                   1965 ;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      000518 75 82 33         [24] 1966 	mov	dpl,#0x33
      00051B 12 03 B6         [24] 1967 	lcall	_spi_send
                                   1968 ;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
      00051E 75 82 40         [24] 1969 	mov	dpl,#0x40
      000521 12 03 B6         [24] 1970 	lcall	_spi_send
                                   1971 ;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
      000524 75 82 00         [24] 1972 	mov	dpl,#0x00
      000527 12 03 B6         [24] 1973 	lcall	_spi_send
                                   1974 ;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
      00052A 75 82 00         [24] 1975 	mov	dpl,#0x00
                                   1976 ;	main.c:480: }
      00052D 02 03 B6         [24] 1977 	ljmp	_spi_send
                                   1978 ;------------------------------------------------------------
                                   1979 ;Allocation info for local variables in function 'do_process'
                                   1980 ;------------------------------------------------------------
                                   1981 ;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_143'
                                   1982 ;dr_ctr                    Allocated with name '_do_process_dr_ctr_65536_143'
                                   1983 ;m_bt                      Allocated with name '_do_process_m_bt_65536_143'
                                   1984 ;m_cx                      Allocated with name '_do_process_m_cx_65536_143'
                                   1985 ;m_cy                      Allocated with name '_do_process_m_cy_65536_143'
                                   1986 ;m_cz                      Allocated with name '_do_process_m_cz_65536_143'
                                   1987 ;ea_state___LINE__         Allocated with name '_do_process_ea_state___LINE___262144_147'
                                   1988 ;__2621440005              Allocated with name '_do_process___2621440005_262144_150'
                                   1989 ;cx                        Allocated with name '_do_process_cx_196608_150'
                                   1990 ;__2621440006              Allocated with name '_do_process___2621440006_262144_159'
                                   1991 ;__2621440007              Allocated with name '_do_process___2621440007_262144_159'
                                   1992 ;__2621440008              Allocated with name '_do_process___2621440008_262144_159'
                                   1993 ;val                       Allocated with name '_do_process_val_327680_160'
                                   1994 ;min                       Allocated with name '_do_process_min_327680_160'
                                   1995 ;max                       Allocated with name '_do_process_max_327680_160'
                                   1996 ;__2621440010              Allocated with name '_do_process___2621440010_262144_151'
                                   1997 ;cy                        Allocated with name '_do_process_cy_196609_151'
                                   1998 ;__2621450011              Allocated with name '_do_process___2621450011_262145_162'
                                   1999 ;__2621450012              Allocated with name '_do_process___2621450012_262145_162'
                                   2000 ;__2621450013              Allocated with name '_do_process___2621450013_262145_162'
                                   2001 ;val                       Allocated with name '_do_process_val_327681_163'
                                   2002 ;min                       Allocated with name '_do_process_min_327681_163'
                                   2003 ;max                       Allocated with name '_do_process_max_327681_163'
                                   2004 ;__2621450015              Allocated with name '_do_process___2621450015_262145_152'
                                   2005 ;cz                        Allocated with name '_do_process_cz_196610_152'
                                   2006 ;__2621460016              Allocated with name '_do_process___2621460016_262146_165'
                                   2007 ;__2621460017              Allocated with name '_do_process___2621460017_262146_165'
                                   2008 ;__2621460018              Allocated with name '_do_process___2621460018_262146_165'
                                   2009 ;val                       Allocated with name '_do_process_val_327682_166'
                                   2010 ;min                       Allocated with name '_do_process_min_327682_166'
                                   2011 ;max                       Allocated with name '_do_process_max_327682_166'
                                   2012 ;------------------------------------------------------------
                                   2013 ;	main.c:483: static inline void do_process(void) {
                                   2014 ;	-----------------------------------------
                                   2015 ;	 function do_process
                                   2016 ;	-----------------------------------------
      000530                       2017 _do_process:
                                   2018 ;	main.c:491: checkRootHubConnections();
      000530 12 3B 8F         [24] 2019 	lcall	_checkRootHubConnections
                                   2020 ;	main.c:494: pollHIDdevice();
      000533 12 24 1D         [24] 2021 	lcall	_pollHIDdevice
                                   2022 ;	main.c:497: while (mouse_rx_buf_count >= 4) {
      000536                       2023 00101$:
      000536 90 06 17         [24] 2024 	mov	dptr,#_mouse_rx_buf_count
      000539 E0               [24] 2025 	movx	a,@dptr
      00053A FF               [12] 2026 	mov	r7,a
      00053B BF 04 00         [24] 2027 	cjne	r7,#0x04,00216$
      00053E                       2028 00216$:
      00053E 50 03            [24] 2029 	jnc	00217$
      000540 02 05 C2         [24] 2030 	ljmp	00103$
      000543                       2031 00217$:
                                   2032 ;	main.c:498: m_bt = mouse_read() & (m_wheel?7:3); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
      000543 12 03 17         [24] 2033 	lcall	_mouse_read
      000546 AF 82            [24] 2034 	mov	r7,dpl
      000548 90 06 04         [24] 2035 	mov	dptr,#_m_wheel
      00054B E0               [24] 2036 	movx	a,@dptr
      00054C 60 06            [24] 2037 	jz	00146$
      00054E 7D 07            [12] 2038 	mov	r5,#0x07
      000550 7E 00            [12] 2039 	mov	r6,#0x00
      000552 80 04            [24] 2040 	sjmp	00147$
      000554                       2041 00146$:
      000554 7D 03            [12] 2042 	mov	r5,#0x03
      000556 7E 00            [12] 2043 	mov	r6,#0x00
      000558                       2044 00147$:
      000558 90 07 30         [24] 2045 	mov	dptr,#_do_process_m_bt_65536_143
      00055B ED               [12] 2046 	mov	a,r5
      00055C 5F               [12] 2047 	anl	a,r7
      00055D F0               [24] 2048 	movx	@dptr,a
                                   2049 ;	main.c:499: m_cx += (int8_t)mouse_read(); // byte 1: ΔX (signed)
      00055E 12 03 17         [24] 2050 	lcall	_mouse_read
      000561 E5 82            [12] 2051 	mov	a,dpl
      000563 FF               [12] 2052 	mov	r7,a
      000564 33               [12] 2053 	rlc	a
      000565 95 E0            [12] 2054 	subb	a,acc
      000567 FE               [12] 2055 	mov	r6,a
      000568 90 07 31         [24] 2056 	mov	dptr,#_do_process_m_cx_65536_143
      00056B E0               [24] 2057 	movx	a,@dptr
      00056C FC               [12] 2058 	mov	r4,a
      00056D A3               [24] 2059 	inc	dptr
      00056E E0               [24] 2060 	movx	a,@dptr
      00056F FD               [12] 2061 	mov	r5,a
      000570 EF               [12] 2062 	mov	a,r7
      000571 2C               [12] 2063 	add	a,r4
      000572 FF               [12] 2064 	mov	r7,a
      000573 EE               [12] 2065 	mov	a,r6
      000574 3D               [12] 2066 	addc	a,r5
      000575 FE               [12] 2067 	mov	r6,a
      000576 90 07 31         [24] 2068 	mov	dptr,#_do_process_m_cx_65536_143
      000579 EF               [12] 2069 	mov	a,r7
      00057A F0               [24] 2070 	movx	@dptr,a
      00057B EE               [12] 2071 	mov	a,r6
      00057C A3               [24] 2072 	inc	dptr
      00057D F0               [24] 2073 	movx	@dptr,a
                                   2074 ;	main.c:500: m_cy -= (int8_t)mouse_read(); // byte 2: ΔY (signed)
      00057E 12 03 17         [24] 2075 	lcall	_mouse_read
      000581 E5 82            [12] 2076 	mov	a,dpl
      000583 FF               [12] 2077 	mov	r7,a
      000584 33               [12] 2078 	rlc	a
      000585 95 E0            [12] 2079 	subb	a,acc
      000587 FE               [12] 2080 	mov	r6,a
      000588 90 07 33         [24] 2081 	mov	dptr,#_do_process_m_cy_65536_143
      00058B E0               [24] 2082 	movx	a,@dptr
      00058C FC               [12] 2083 	mov	r4,a
      00058D A3               [24] 2084 	inc	dptr
      00058E E0               [24] 2085 	movx	a,@dptr
      00058F FD               [12] 2086 	mov	r5,a
      000590 EC               [12] 2087 	mov	a,r4
      000591 C3               [12] 2088 	clr	c
      000592 9F               [12] 2089 	subb	a,r7
      000593 FF               [12] 2090 	mov	r7,a
      000594 ED               [12] 2091 	mov	a,r5
      000595 9E               [12] 2092 	subb	a,r6
      000596 FE               [12] 2093 	mov	r6,a
      000597 90 07 33         [24] 2094 	mov	dptr,#_do_process_m_cy_65536_143
      00059A EF               [12] 2095 	mov	a,r7
      00059B F0               [24] 2096 	movx	@dptr,a
      00059C EE               [12] 2097 	mov	a,r6
      00059D A3               [24] 2098 	inc	dptr
      00059E F0               [24] 2099 	movx	@dptr,a
                                   2100 ;	main.c:501: m_cz += (int8_t)mouse_read(); // byte 3: ΔWheel (signed)
      00059F 12 03 17         [24] 2101 	lcall	_mouse_read
      0005A2 E5 82            [12] 2102 	mov	a,dpl
      0005A4 FF               [12] 2103 	mov	r7,a
      0005A5 33               [12] 2104 	rlc	a
      0005A6 95 E0            [12] 2105 	subb	a,acc
      0005A8 FE               [12] 2106 	mov	r6,a
      0005A9 90 07 35         [24] 2107 	mov	dptr,#_do_process_m_cz_65536_143
      0005AC E0               [24] 2108 	movx	a,@dptr
      0005AD FC               [12] 2109 	mov	r4,a
      0005AE A3               [24] 2110 	inc	dptr
      0005AF E0               [24] 2111 	movx	a,@dptr
      0005B0 FD               [12] 2112 	mov	r5,a
      0005B1 EF               [12] 2113 	mov	a,r7
      0005B2 2C               [12] 2114 	add	a,r4
      0005B3 FF               [12] 2115 	mov	r7,a
      0005B4 EE               [12] 2116 	mov	a,r6
      0005B5 3D               [12] 2117 	addc	a,r5
      0005B6 FE               [12] 2118 	mov	r6,a
      0005B7 90 07 35         [24] 2119 	mov	dptr,#_do_process_m_cz_65536_143
      0005BA EF               [12] 2120 	mov	a,r7
      0005BB F0               [24] 2121 	movx	@dptr,a
      0005BC EE               [12] 2122 	mov	a,r6
      0005BD A3               [24] 2123 	inc	dptr
      0005BE F0               [24] 2124 	movx	@dptr,a
      0005BF 02 05 36         [24] 2125 	ljmp	00101$
      0005C2                       2126 00103$:
                                   2127 ;	main.c:505: if (allow_send_data && mouse_enabled) {
      0005C2 90 07 1D         [24] 2128 	mov	dptr,#_allow_send_data
      0005C5 E0               [24] 2129 	movx	a,@dptr
      0005C6 70 01            [24] 2130 	jnz	00219$
      0005C8 22               [24] 2131 	ret
      0005C9                       2132 00219$:
      0005C9 90 07 1B         [24] 2133 	mov	dptr,#_mouse_enabled
      0005CC E0               [24] 2134 	movx	a,@dptr
      0005CD 70 01            [24] 2135 	jnz	00220$
      0005CF 22               [24] 2136 	ret
      0005D0                       2137 00220$:
                                   2138 ;	main.c:506: allow_send_data = false;
      0005D0 90 07 1D         [24] 2139 	mov	dptr,#_allow_send_data
      0005D3 E4               [12] 2140 	clr	a
      0005D4 F0               [24] 2141 	movx	@dptr,a
                                   2142 ;	main.c:507: dr_ctr = (dr_ctr + 1) & 0x03;
      0005D5 90 07 2F         [24] 2143 	mov	dptr,#_do_process_dr_ctr_65536_143
      0005D8 E0               [24] 2144 	movx	a,@dptr
      0005D9 FF               [12] 2145 	mov	r7,a
      0005DA 0F               [12] 2146 	inc	r7
      0005DB 74 03            [12] 2147 	mov	a,#0x03
      0005DD 5F               [12] 2148 	anl	a,r7
      0005DE F0               [24] 2149 	movx	@dptr,a
                                   2150 ;	main.c:510: if (mouse_start) {
      0005DF 90 07 1A         [24] 2151 	mov	dptr,#_mouse_start
      0005E2 E0               [24] 2152 	movx	a,@dptr
      0005E3 70 03            [24] 2153 	jnz	00221$
      0005E5 02 06 75         [24] 2154 	ljmp	00114$
      0005E8                       2155 00221$:
                                   2156 ;	main.c:511: mouse_start = false;
      0005E8 90 07 1A         [24] 2157 	mov	dptr,#_mouse_start
      0005EB E4               [12] 2158 	clr	a
      0005EC F0               [24] 2159 	movx	@dptr,a
                                   2160 ;	main.c:514: CRITICAL_SECTION (
      0005ED A2 AF            [12] 2161 	mov	c,_EA
      0005EF E4               [12] 2162 	clr	a
      0005F0 33               [12] 2163 	rlc	a
      0005F1 FF               [12] 2164 	mov	r7,a
                                   2165 ;	assignBit
      0005F2 C2 AF            [12] 2166 	clr	_EA
      0005F4 90 07 31         [24] 2167 	mov	dptr,#_do_process_m_cx_65536_143
      0005F7 E4               [12] 2168 	clr	a
      0005F8 F0               [24] 2169 	movx	@dptr,a
      0005F9 A3               [24] 2170 	inc	dptr
      0005FA F0               [24] 2171 	movx	@dptr,a
      0005FB 90 07 33         [24] 2172 	mov	dptr,#_do_process_m_cy_65536_143
      0005FE F0               [24] 2173 	movx	@dptr,a
      0005FF A3               [24] 2174 	inc	dptr
      000600 F0               [24] 2175 	movx	@dptr,a
      000601 90 07 35         [24] 2176 	mov	dptr,#_do_process_m_cz_65536_143
      000604 F0               [24] 2177 	movx	@dptr,a
      000605 A3               [24] 2178 	inc	dptr
      000606 F0               [24] 2179 	movx	@dptr,a
      000607 90 07 30         [24] 2180 	mov	dptr,#_do_process_m_bt_65536_143
      00060A F0               [24] 2181 	movx	@dptr,a
      00060B 90 07 17         [24] 2182 	mov	dptr,#_spi_tx_buf_w
      00060E E0               [24] 2183 	movx	a,@dptr
      00060F 90 07 18         [24] 2184 	mov	dptr,#_spi_tx_buf_r
      000612 F0               [24] 2185 	movx	@dptr,a
      000613 90 07 19         [24] 2186 	mov	dptr,#_spi_tx_buf_count
      000616 E4               [12] 2187 	clr	a
      000617 F0               [24] 2188 	movx	@dptr,a
                                   2189 ;	assignBit
      000618 C2 CA            [12] 2190 	clr	_TR2
      00061A 43 90 08         [24] 2191 	orl	_P1,#0x08
      00061D 53 90 F7         [24] 2192 	anl	_P1,#0xf7
                                   2193 ;	assignBit
      000620 EF               [12] 2194 	mov	a,r7
      000621 24 FF            [12] 2195 	add	a,#0xff
      000623 92 AF            [24] 2196 	mov	_EA,c
                                   2197 ;	main.c:459: delay(20);
      000625 90 00 14         [24] 2198 	mov	dptr,#0x0014
      000628 12 17 A9         [24] 2199 	lcall	_delay
                                   2200 ;	main.c:462: if (!mouse_enabled) {
      00062B 90 07 1B         [24] 2201 	mov	dptr,#_mouse_enabled
      00062E E0               [24] 2202 	movx	a,@dptr
      00062F 60 44            [24] 2203 	jz	00114$
                                   2204 ;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
      000631 75 82 4D         [24] 2205 	mov	dpl,#0x4d
      000634 12 03 B6         [24] 2206 	lcall	_spi_send
                                   2207 ;	main.c:468: if (m_wheel) {
      000637 90 06 04         [24] 2208 	mov	dptr,#_m_wheel
      00063A E0               [24] 2209 	movx	a,@dptr
      00063B 60 20            [24] 2210 	jz	00126$
                                   2211 ;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      00063D 75 82 5A         [24] 2212 	mov	dpl,#0x5a
      000640 12 03 B6         [24] 2213 	lcall	_spi_send
                                   2214 ;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
      000643 75 82 40         [24] 2215 	mov	dpl,#0x40
      000646 12 03 B6         [24] 2216 	lcall	_spi_send
                                   2217 ;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
      000649 75 82 00         [24] 2218 	mov	dpl,#0x00
      00064C 12 03 B6         [24] 2219 	lcall	_spi_send
                                   2220 ;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
      00064F 75 82 00         [24] 2221 	mov	dpl,#0x00
      000652 12 03 B6         [24] 2222 	lcall	_spi_send
                                   2223 ;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
      000655 75 82 00         [24] 2224 	mov	dpl,#0x00
      000658 12 03 B6         [24] 2225 	lcall	_spi_send
      00065B 80 18            [24] 2226 	sjmp	00114$
      00065D                       2227 00126$:
                                   2228 ;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      00065D 75 82 33         [24] 2229 	mov	dpl,#0x33
      000660 12 03 B6         [24] 2230 	lcall	_spi_send
                                   2231 ;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
      000663 75 82 40         [24] 2232 	mov	dpl,#0x40
      000666 12 03 B6         [24] 2233 	lcall	_spi_send
                                   2234 ;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
      000669 75 82 00         [24] 2235 	mov	dpl,#0x00
      00066C 12 03 B6         [24] 2236 	lcall	_spi_send
                                   2237 ;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
      00066F 75 82 00         [24] 2238 	mov	dpl,#0x00
      000672 12 03 B6         [24] 2239 	lcall	_spi_send
                                   2240 ;	main.c:524: send_mouse_id();
      000675                       2241 00114$:
                                   2242 ;	main.c:528: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
      000675 90 07 30         [24] 2243 	mov	dptr,#_do_process_m_bt_65536_143
      000678 E0               [24] 2244 	movx	a,@dptr
      000679 FF               [12] 2245 	mov	r7,a
      00067A 90 07 2E         [24] 2246 	mov	dptr,#_do_process_st_m_bt_65536_143
      00067D E0               [24] 2247 	movx	a,@dptr
      00067E FE               [12] 2248 	mov	r6,a
      00067F EF               [12] 2249 	mov	a,r7
      000680 B5 06 25         [24] 2250 	cjne	a,ar6,00115$
      000683 90 07 31         [24] 2251 	mov	dptr,#_do_process_m_cx_65536_143
      000686 E0               [24] 2252 	movx	a,@dptr
      000687 F5 F0            [12] 2253 	mov	b,a
      000689 A3               [24] 2254 	inc	dptr
      00068A E0               [24] 2255 	movx	a,@dptr
      00068B 45 F0            [12] 2256 	orl	a,b
      00068D 70 19            [24] 2257 	jnz	00115$
      00068F 90 07 33         [24] 2258 	mov	dptr,#_do_process_m_cy_65536_143
      000692 E0               [24] 2259 	movx	a,@dptr
      000693 F5 F0            [12] 2260 	mov	b,a
      000695 A3               [24] 2261 	inc	dptr
      000696 E0               [24] 2262 	movx	a,@dptr
      000697 45 F0            [12] 2263 	orl	a,b
      000699 70 0D            [24] 2264 	jnz	00115$
      00069B 90 07 35         [24] 2265 	mov	dptr,#_do_process_m_cz_65536_143
      00069E E0               [24] 2266 	movx	a,@dptr
      00069F F5 F0            [12] 2267 	mov	b,a
      0006A1 A3               [24] 2268 	inc	dptr
      0006A2 E0               [24] 2269 	movx	a,@dptr
      0006A3 45 F0            [12] 2270 	orl	a,b
      0006A5 70 01            [24] 2271 	jnz	00228$
      0006A7 22               [24] 2272 	ret
      0006A8                       2273 00228$:
      0006A8                       2274 00115$:
                                   2275 ;	main.c:529: int8_t cx = clamp(m_cx, -128, 127);
      0006A8 90 07 31         [24] 2276 	mov	dptr,#_do_process_m_cx_65536_143
      0006AB E0               [24] 2277 	movx	a,@dptr
      0006AC FE               [12] 2278 	mov	r6,a
      0006AD A3               [24] 2279 	inc	dptr
      0006AE E0               [24] 2280 	movx	a,@dptr
      0006AF FF               [12] 2281 	mov	r7,a
      0006B0 C3               [12] 2282 	clr	c
      0006B1 EE               [12] 2283 	mov	a,r6
      0006B2 94 80            [12] 2284 	subb	a,#0x80
      0006B4 EF               [12] 2285 	mov	a,r7
      0006B5 64 80            [12] 2286 	xrl	a,#0x80
      0006B7 94 7F            [12] 2287 	subb	a,#0x7f
      0006B9 50 08            [24] 2288 	jnc	00130$
      0006BB 90 07 37         [24] 2289 	mov	dptr,#_do_process___2621440005_262144_150
      0006BE 74 80            [12] 2290 	mov	a,#0x80
      0006C0 F0               [24] 2291 	movx	@dptr,a
      0006C1 80 1C            [24] 2292 	sjmp	00133$
      0006C3                       2293 00130$:
      0006C3 C3               [12] 2294 	clr	c
      0006C4 74 7F            [12] 2295 	mov	a,#0x7f
      0006C6 9E               [12] 2296 	subb	a,r6
      0006C7 74 80            [12] 2297 	mov	a,#(0x00 ^ 0x80)
      0006C9 8F F0            [24] 2298 	mov	b,r7
      0006CB 63 F0 80         [24] 2299 	xrl	b,#0x80
      0006CE 95 F0            [12] 2300 	subb	a,b
      0006D0 50 08            [24] 2301 	jnc	00132$
      0006D2 90 07 37         [24] 2302 	mov	dptr,#_do_process___2621440005_262144_150
      0006D5 74 7F            [12] 2303 	mov	a,#0x7f
      0006D7 F0               [24] 2304 	movx	@dptr,a
      0006D8 80 05            [24] 2305 	sjmp	00133$
      0006DA                       2306 00132$:
      0006DA 90 07 37         [24] 2307 	mov	dptr,#_do_process___2621440005_262144_150
      0006DD EE               [12] 2308 	mov	a,r6
      0006DE F0               [24] 2309 	movx	@dptr,a
      0006DF                       2310 00133$:
      0006DF 90 07 37         [24] 2311 	mov	dptr,#_do_process___2621440005_262144_150
      0006E2 E0               [24] 2312 	movx	a,@dptr
                                   2313 ;	main.c:530: m_cx -= cx;
      0006E3 FF               [12] 2314 	mov	r7,a
      0006E4 FD               [12] 2315 	mov	r5,a
      0006E5 33               [12] 2316 	rlc	a
      0006E6 95 E0            [12] 2317 	subb	a,acc
      0006E8 FE               [12] 2318 	mov	r6,a
      0006E9 90 07 31         [24] 2319 	mov	dptr,#_do_process_m_cx_65536_143
      0006EC E0               [24] 2320 	movx	a,@dptr
      0006ED FB               [12] 2321 	mov	r3,a
      0006EE A3               [24] 2322 	inc	dptr
      0006EF E0               [24] 2323 	movx	a,@dptr
      0006F0 FC               [12] 2324 	mov	r4,a
      0006F1 EB               [12] 2325 	mov	a,r3
      0006F2 C3               [12] 2326 	clr	c
      0006F3 9D               [12] 2327 	subb	a,r5
      0006F4 FD               [12] 2328 	mov	r5,a
      0006F5 EC               [12] 2329 	mov	a,r4
      0006F6 9E               [12] 2330 	subb	a,r6
      0006F7 FE               [12] 2331 	mov	r6,a
      0006F8 90 07 31         [24] 2332 	mov	dptr,#_do_process_m_cx_65536_143
      0006FB ED               [12] 2333 	mov	a,r5
      0006FC F0               [24] 2334 	movx	@dptr,a
      0006FD EE               [12] 2335 	mov	a,r6
      0006FE A3               [24] 2336 	inc	dptr
      0006FF F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	main.c:531: int8_t cy = clamp(m_cy, -128, 127);
      000700 90 07 33         [24] 2339 	mov	dptr,#_do_process_m_cy_65536_143
      000703 E0               [24] 2340 	movx	a,@dptr
      000704 FD               [12] 2341 	mov	r5,a
      000705 A3               [24] 2342 	inc	dptr
      000706 E0               [24] 2343 	movx	a,@dptr
      000707 FE               [12] 2344 	mov	r6,a
      000708 C3               [12] 2345 	clr	c
      000709 ED               [12] 2346 	mov	a,r5
      00070A 94 80            [12] 2347 	subb	a,#0x80
      00070C EE               [12] 2348 	mov	a,r6
      00070D 64 80            [12] 2349 	xrl	a,#0x80
      00070F 94 7F            [12] 2350 	subb	a,#0x7f
      000711 50 08            [24] 2351 	jnc	00135$
      000713 90 07 3A         [24] 2352 	mov	dptr,#_do_process___2621440010_262144_151
      000716 74 80            [12] 2353 	mov	a,#0x80
      000718 F0               [24] 2354 	movx	@dptr,a
      000719 80 1C            [24] 2355 	sjmp	00138$
      00071B                       2356 00135$:
      00071B C3               [12] 2357 	clr	c
      00071C 74 7F            [12] 2358 	mov	a,#0x7f
      00071E 9D               [12] 2359 	subb	a,r5
      00071F 74 80            [12] 2360 	mov	a,#(0x00 ^ 0x80)
      000721 8E F0            [24] 2361 	mov	b,r6
      000723 63 F0 80         [24] 2362 	xrl	b,#0x80
      000726 95 F0            [12] 2363 	subb	a,b
      000728 50 08            [24] 2364 	jnc	00137$
      00072A 90 07 3A         [24] 2365 	mov	dptr,#_do_process___2621440010_262144_151
      00072D 74 7F            [12] 2366 	mov	a,#0x7f
      00072F F0               [24] 2367 	movx	@dptr,a
      000730 80 05            [24] 2368 	sjmp	00138$
      000732                       2369 00137$:
      000732 90 07 3A         [24] 2370 	mov	dptr,#_do_process___2621440010_262144_151
      000735 ED               [12] 2371 	mov	a,r5
      000736 F0               [24] 2372 	movx	@dptr,a
      000737                       2373 00138$:
      000737 90 07 3A         [24] 2374 	mov	dptr,#_do_process___2621440010_262144_151
      00073A E0               [24] 2375 	movx	a,@dptr
                                   2376 ;	main.c:532: m_cy -= cy;
      00073B FE               [12] 2377 	mov	r6,a
      00073C FC               [12] 2378 	mov	r4,a
      00073D 33               [12] 2379 	rlc	a
      00073E 95 E0            [12] 2380 	subb	a,acc
      000740 FD               [12] 2381 	mov	r5,a
      000741 90 07 33         [24] 2382 	mov	dptr,#_do_process_m_cy_65536_143
      000744 E0               [24] 2383 	movx	a,@dptr
      000745 FA               [12] 2384 	mov	r2,a
      000746 A3               [24] 2385 	inc	dptr
      000747 E0               [24] 2386 	movx	a,@dptr
      000748 FB               [12] 2387 	mov	r3,a
      000749 EA               [12] 2388 	mov	a,r2
      00074A C3               [12] 2389 	clr	c
      00074B 9C               [12] 2390 	subb	a,r4
      00074C FC               [12] 2391 	mov	r4,a
      00074D EB               [12] 2392 	mov	a,r3
      00074E 9D               [12] 2393 	subb	a,r5
      00074F FD               [12] 2394 	mov	r5,a
      000750 90 07 33         [24] 2395 	mov	dptr,#_do_process_m_cy_65536_143
      000753 EC               [12] 2396 	mov	a,r4
      000754 F0               [24] 2397 	movx	@dptr,a
      000755 ED               [12] 2398 	mov	a,r5
      000756 A3               [24] 2399 	inc	dptr
      000757 F0               [24] 2400 	movx	@dptr,a
                                   2401 ;	main.c:533: int8_t cz = clamp(m_cz, -8, 7);
      000758 90 07 35         [24] 2402 	mov	dptr,#_do_process_m_cz_65536_143
      00075B E0               [24] 2403 	movx	a,@dptr
      00075C FC               [12] 2404 	mov	r4,a
      00075D A3               [24] 2405 	inc	dptr
      00075E E0               [24] 2406 	movx	a,@dptr
      00075F FD               [12] 2407 	mov	r5,a
      000760 C3               [12] 2408 	clr	c
      000761 EC               [12] 2409 	mov	a,r4
      000762 94 F8            [12] 2410 	subb	a,#0xf8
      000764 ED               [12] 2411 	mov	a,r5
      000765 64 80            [12] 2412 	xrl	a,#0x80
      000767 94 7F            [12] 2413 	subb	a,#0x7f
      000769 50 08            [24] 2414 	jnc	00140$
      00076B 90 07 3D         [24] 2415 	mov	dptr,#_do_process___2621450015_262145_152
      00076E 74 F8            [12] 2416 	mov	a,#0xf8
      000770 F0               [24] 2417 	movx	@dptr,a
      000771 80 1C            [24] 2418 	sjmp	00143$
      000773                       2419 00140$:
      000773 C3               [12] 2420 	clr	c
      000774 74 07            [12] 2421 	mov	a,#0x07
      000776 9C               [12] 2422 	subb	a,r4
      000777 74 80            [12] 2423 	mov	a,#(0x00 ^ 0x80)
      000779 8D F0            [24] 2424 	mov	b,r5
      00077B 63 F0 80         [24] 2425 	xrl	b,#0x80
      00077E 95 F0            [12] 2426 	subb	a,b
      000780 50 08            [24] 2427 	jnc	00142$
      000782 90 07 3D         [24] 2428 	mov	dptr,#_do_process___2621450015_262145_152
      000785 74 07            [12] 2429 	mov	a,#0x07
      000787 F0               [24] 2430 	movx	@dptr,a
      000788 80 05            [24] 2431 	sjmp	00143$
      00078A                       2432 00142$:
      00078A 90 07 3D         [24] 2433 	mov	dptr,#_do_process___2621450015_262145_152
      00078D EC               [12] 2434 	mov	a,r4
      00078E F0               [24] 2435 	movx	@dptr,a
      00078F                       2436 00143$:
      00078F 90 07 3D         [24] 2437 	mov	dptr,#_do_process___2621450015_262145_152
      000792 E0               [24] 2438 	movx	a,@dptr
                                   2439 ;	main.c:534: m_cz -= cz;
      000793 FD               [12] 2440 	mov	r5,a
      000794 FB               [12] 2441 	mov	r3,a
      000795 33               [12] 2442 	rlc	a
      000796 95 E0            [12] 2443 	subb	a,acc
      000798 FC               [12] 2444 	mov	r4,a
      000799 90 07 35         [24] 2445 	mov	dptr,#_do_process_m_cz_65536_143
      00079C E0               [24] 2446 	movx	a,@dptr
      00079D F9               [12] 2447 	mov	r1,a
      00079E A3               [24] 2448 	inc	dptr
      00079F E0               [24] 2449 	movx	a,@dptr
      0007A0 FA               [12] 2450 	mov	r2,a
      0007A1 E9               [12] 2451 	mov	a,r1
      0007A2 C3               [12] 2452 	clr	c
      0007A3 9B               [12] 2453 	subb	a,r3
      0007A4 FB               [12] 2454 	mov	r3,a
      0007A5 EA               [12] 2455 	mov	a,r2
      0007A6 9C               [12] 2456 	subb	a,r4
      0007A7 FC               [12] 2457 	mov	r4,a
      0007A8 90 07 35         [24] 2458 	mov	dptr,#_do_process_m_cz_65536_143
      0007AB EB               [12] 2459 	mov	a,r3
      0007AC F0               [24] 2460 	movx	@dptr,a
      0007AD EC               [12] 2461 	mov	a,r4
      0007AE A3               [24] 2462 	inc	dptr
      0007AF F0               [24] 2463 	movx	@dptr,a
                                   2464 ;	main.c:536: st_m_bt = m_bt;
      0007B0 90 07 30         [24] 2465 	mov	dptr,#_do_process_m_bt_65536_143
      0007B3 E0               [24] 2466 	movx	a,@dptr
      0007B4 FC               [12] 2467 	mov	r4,a
      0007B5 90 07 2E         [24] 2468 	mov	dptr,#_do_process_st_m_bt_65536_143
      0007B8 F0               [24] 2469 	movx	@dptr,a
                                   2470 ;	main.c:538: spi_m_send(cx, cy, cz, m_bt);
      0007B9 90 07 2A         [24] 2471 	mov	dptr,#_spi_m_send_PARM_2
      0007BC EE               [12] 2472 	mov	a,r6
      0007BD F0               [24] 2473 	movx	@dptr,a
      0007BE 90 07 2B         [24] 2474 	mov	dptr,#_spi_m_send_PARM_3
      0007C1 ED               [12] 2475 	mov	a,r5
      0007C2 F0               [24] 2476 	movx	@dptr,a
      0007C3 90 07 2C         [24] 2477 	mov	dptr,#_spi_m_send_PARM_4
      0007C6 EC               [12] 2478 	mov	a,r4
      0007C7 F0               [24] 2479 	movx	@dptr,a
      0007C8 8F 82            [24] 2480 	mov	dpl,r7
                                   2481 ;	main.c:541: }
      0007CA 02 04 35         [24] 2482 	ljmp	_spi_m_send
                                   2483 ;------------------------------------------------------------
                                   2484 ;Allocation info for local variables in function 'readCOMsettings'
                                   2485 ;------------------------------------------------------------
                                   2486 ;res                       Allocated with name '_readCOMsettings_res_65536_169'
                                   2487 ;------------------------------------------------------------
                                   2488 ;	main.c:546: static inline uint8_t readCOMsettings(void) {
                                   2489 ;	-----------------------------------------
                                   2490 ;	 function readCOMsettings
                                   2491 ;	-----------------------------------------
      0007CD                       2492 _readCOMsettings:
                                   2493 ;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      0007CD E5 A0            [12] 2494 	mov	a,_P2
      0007CF 30 E6 06         [24] 2495 	jnb	acc.6,00109$
      0007D2 7E 01            [12] 2496 	mov	r6,#0x01
      0007D4 7F 00            [12] 2497 	mov	r7,#0x00
      0007D6 80 04            [24] 2498 	sjmp	00110$
      0007D8                       2499 00109$:
      0007D8 7E 00            [12] 2500 	mov	r6,#0x00
      0007DA 7F 00            [12] 2501 	mov	r7,#0x00
      0007DC                       2502 00110$:
      0007DC E5 A0            [12] 2503 	mov	a,_P2
      0007DE 30 E7 06         [24] 2504 	jnb	acc.7,00111$
      0007E1 7C 02            [12] 2505 	mov	r4,#0x02
      0007E3 7D 00            [12] 2506 	mov	r5,#0x00
      0007E5 80 04            [24] 2507 	sjmp	00112$
      0007E7                       2508 00111$:
      0007E7 7C 00            [12] 2509 	mov	r4,#0x00
      0007E9 7D 00            [12] 2510 	mov	r5,#0x00
      0007EB                       2511 00112$:
      0007EB EC               [12] 2512 	mov	a,r4
      0007EC 42 06            [12] 2513 	orl	ar6,a
                                   2514 ;	main.c:550: switch (res) {
      0007EE EE               [12] 2515 	mov	a,r6
      0007EF FF               [12] 2516 	mov	r7,a
      0007F0 24 FC            [12] 2517 	add	a,#0xff - 0x03
      0007F2 40 2F            [24] 2518 	jc	00105$
      0007F4 EF               [12] 2519 	mov	a,r7
      0007F5 2F               [12] 2520 	add	a,r7
      0007F6 2F               [12] 2521 	add	a,r7
      0007F7 90 07 FB         [24] 2522 	mov	dptr,#00128$
      0007FA 73               [24] 2523 	jmp	@a+dptr
      0007FB                       2524 00128$:
      0007FB 02 08 1B         [24] 2525 	ljmp	00104$
      0007FE 02 08 13         [24] 2526 	ljmp	00103$
      000801 02 08 0B         [24] 2527 	ljmp	00102$
                                   2528 ;	main.c:551: case 3: 
                                   2529 ;	main.c:552: res = SELECT_COM1;
      000804 90 07 40         [24] 2530 	mov	dptr,#_readCOMsettings_res_65536_169
      000807 E4               [12] 2531 	clr	a
      000808 F0               [24] 2532 	movx	@dptr,a
                                   2533 ;	main.c:553: break;
                                   2534 ;	main.c:554: case 2:
      000809 80 1D            [24] 2535 	sjmp	00106$
      00080B                       2536 00102$:
                                   2537 ;	main.c:555: res = SELECT_COM2;
      00080B 90 07 40         [24] 2538 	mov	dptr,#_readCOMsettings_res_65536_169
      00080E 74 01            [12] 2539 	mov	a,#0x01
      000810 F0               [24] 2540 	movx	@dptr,a
                                   2541 ;	main.c:556: break;
                                   2542 ;	main.c:557: case 1:
      000811 80 15            [24] 2543 	sjmp	00106$
      000813                       2544 00103$:
                                   2545 ;	main.c:558: res = SELECT_COM3;
      000813 90 07 40         [24] 2546 	mov	dptr,#_readCOMsettings_res_65536_169
      000816 74 02            [12] 2547 	mov	a,#0x02
      000818 F0               [24] 2548 	movx	@dptr,a
                                   2549 ;	main.c:559: break;
                                   2550 ;	main.c:560: case 0:
      000819 80 0D            [24] 2551 	sjmp	00106$
      00081B                       2552 00104$:
                                   2553 ;	main.c:561: res = SELECT_COM4;
      00081B 90 07 40         [24] 2554 	mov	dptr,#_readCOMsettings_res_65536_169
      00081E 74 03            [12] 2555 	mov	a,#0x03
      000820 F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	main.c:562: break;
                                   2558 ;	main.c:563: default:
      000821 80 05            [24] 2559 	sjmp	00106$
      000823                       2560 00105$:
                                   2561 ;	main.c:564: res = SELECT_COM1;
      000823 90 07 40         [24] 2562 	mov	dptr,#_readCOMsettings_res_65536_169
      000826 E4               [12] 2563 	clr	a
      000827 F0               [24] 2564 	movx	@dptr,a
                                   2565 ;	main.c:565: }
      000828                       2566 00106$:
                                   2567 ;	main.c:566: return res;
      000828 90 07 40         [24] 2568 	mov	dptr,#_readCOMsettings_res_65536_169
      00082B E0               [24] 2569 	movx	a,@dptr
                                   2570 ;	main.c:567: }
      00082C F5 82            [12] 2571 	mov	dpl,a
      00082E 22               [24] 2572 	ret
                                   2573 ;------------------------------------------------------------
                                   2574 ;Allocation info for local variables in function 'readWheelsettings'
                                   2575 ;------------------------------------------------------------
                                   2576 ;	main.c:569: static inline bool readWheelsettings(void) {
                                   2577 ;	-----------------------------------------
                                   2578 ;	 function readWheelsettings
                                   2579 ;	-----------------------------------------
      00082F                       2580 _readWheelsettings:
                                   2581 ;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      00082F E5 B0            [12] 2582 	mov	a,_P3
      000831 C4               [12] 2583 	swap	a
      000832 54 01            [12] 2584 	anl	a,#0x01
      000834 B4 01 00         [24] 2585 	cjne	a,#0x01,00103$
      000837                       2586 00103$:
      000837 92 00            [24] 2587 	mov  _readWheelsettings_sloc0_1_0,c
      000839 E4               [12] 2588 	clr	a
      00083A 33               [12] 2589 	rlc	a
      00083B F5 82            [12] 2590 	mov	dpl,a
                                   2591 ;	main.c:571: }
      00083D 22               [24] 2592 	ret
                                   2593 ;------------------------------------------------------------
                                   2594 ;Allocation info for local variables in function 'readRatesettings'
                                   2595 ;------------------------------------------------------------
                                   2596 ;res                       Allocated with name '_readRatesettings_res_65536_174'
                                   2597 ;------------------------------------------------------------
                                   2598 ;	main.c:573: static inline uint8_t readRatesettings(void) {
                                   2599 ;	-----------------------------------------
                                   2600 ;	 function readRatesettings
                                   2601 ;	-----------------------------------------
      00083E                       2602 _readRatesettings:
                                   2603 ;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      00083E E5 90            [12] 2604 	mov	a,_P1
      000840 30 E2 06         [24] 2605 	jnb	acc.2,00109$
      000843 7E 01            [12] 2606 	mov	r6,#0x01
      000845 7F 00            [12] 2607 	mov	r7,#0x00
      000847 80 04            [24] 2608 	sjmp	00110$
      000849                       2609 00109$:
      000849 7E 00            [12] 2610 	mov	r6,#0x00
      00084B 7F 00            [12] 2611 	mov	r7,#0x00
      00084D                       2612 00110$:
      00084D E5 90            [12] 2613 	mov	a,_P1
      00084F 30 E4 06         [24] 2614 	jnb	acc.4,00111$
      000852 7C 02            [12] 2615 	mov	r4,#0x02
      000854 7D 00            [12] 2616 	mov	r5,#0x00
      000856 80 04            [24] 2617 	sjmp	00112$
      000858                       2618 00111$:
      000858 7C 00            [12] 2619 	mov	r4,#0x00
      00085A 7D 00            [12] 2620 	mov	r5,#0x00
      00085C                       2621 00112$:
      00085C EC               [12] 2622 	mov	a,r4
      00085D 42 06            [12] 2623 	orl	ar6,a
                                   2624 ;	main.c:577: switch (res) {
      00085F EE               [12] 2625 	mov	a,r6
      000860 FF               [12] 2626 	mov	r7,a
      000861 24 FC            [12] 2627 	add	a,#0xff - 0x03
      000863 40 30            [24] 2628 	jc	00105$
      000865 EF               [12] 2629 	mov	a,r7
      000866 2F               [12] 2630 	add	a,r7
      000867 2F               [12] 2631 	add	a,r7
      000868 90 08 6C         [24] 2632 	mov	dptr,#00128$
      00086B 73               [24] 2633 	jmp	@a+dptr
      00086C                       2634 00128$:
      00086C 02 08 8D         [24] 2635 	ljmp	00104$
      00086F 02 08 85         [24] 2636 	ljmp	00103$
      000872 02 08 7D         [24] 2637 	ljmp	00102$
                                   2638 ;	main.c:578: case 3:
                                   2639 ;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
      000875 90 07 41         [24] 2640 	mov	dptr,#_readRatesettings_res_65536_174
      000878 74 64            [12] 2641 	mov	a,#0x64
      00087A F0               [24] 2642 	movx	@dptr,a
                                   2643 ;	main.c:580: break;
                                   2644 ;	main.c:581: case 2:
      00087B 80 1E            [24] 2645 	sjmp	00106$
      00087D                       2646 00102$:
                                   2647 ;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
      00087D 90 07 41         [24] 2648 	mov	dptr,#_readRatesettings_res_65536_174
      000880 74 50            [12] 2649 	mov	a,#0x50
      000882 F0               [24] 2650 	movx	@dptr,a
                                   2651 ;	main.c:583: break;
                                   2652 ;	main.c:584: case 1:
      000883 80 16            [24] 2653 	sjmp	00106$
      000885                       2654 00103$:
                                   2655 ;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
      000885 90 07 41         [24] 2656 	mov	dptr,#_readRatesettings_res_65536_174
      000888 74 28            [12] 2657 	mov	a,#0x28
      00088A F0               [24] 2658 	movx	@dptr,a
                                   2659 ;	main.c:586: break;
                                   2660 ;	main.c:587: case 0:
      00088B 80 0E            [24] 2661 	sjmp	00106$
      00088D                       2662 00104$:
                                   2663 ;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
      00088D 90 07 41         [24] 2664 	mov	dptr,#_readRatesettings_res_65536_174
      000890 74 14            [12] 2665 	mov	a,#0x14
      000892 F0               [24] 2666 	movx	@dptr,a
                                   2667 ;	main.c:589: break;
                                   2668 ;	main.c:590: default:
      000893 80 06            [24] 2669 	sjmp	00106$
      000895                       2670 00105$:
                                   2671 ;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
      000895 90 07 41         [24] 2672 	mov	dptr,#_readRatesettings_res_65536_174
      000898 74 64            [12] 2673 	mov	a,#0x64
      00089A F0               [24] 2674 	movx	@dptr,a
                                   2675 ;	main.c:592: }
      00089B                       2676 00106$:
                                   2677 ;	main.c:593: return res;
      00089B 90 07 41         [24] 2678 	mov	dptr,#_readRatesettings_res_65536_174
      00089E E0               [24] 2679 	movx	a,@dptr
                                   2680 ;	main.c:594: }
      00089F F5 82            [12] 2681 	mov	dpl,a
      0008A1 22               [24] 2682 	ret
                                   2683 ;------------------------------------------------------------
                                   2684 ;Allocation info for local variables in function 'checkIRQ'
                                   2685 ;------------------------------------------------------------
                                   2686 ;opt_com                   Allocated with name '_checkIRQ_opt_com_65536_176'
                                   2687 ;------------------------------------------------------------
                                   2688 ;	main.c:596: static inline uint8_t checkIRQ(uint8_t opt_com) {
                                   2689 ;	-----------------------------------------
                                   2690 ;	 function checkIRQ
                                   2691 ;	-----------------------------------------
      0008A2                       2692 _checkIRQ:
      0008A2 E5 82            [12] 2693 	mov	a,dpl
      0008A4 90 07 42         [24] 2694 	mov	dptr,#_checkIRQ_opt_com_65536_176
      0008A7 F0               [24] 2695 	movx	@dptr,a
                                   2696 ;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      0008A8 E5 A0            [12] 2697 	mov	a,_P2
      0008AA 20 E5 04         [24] 2698 	jb	acc.5,00102$
                                   2699 ;	main.c:598: return USE_IRQX;
      0008AD 75 82 01         [24] 2700 	mov	dpl,#0x01
      0008B0 22               [24] 2701 	ret
      0008B1                       2702 00102$:
                                   2703 ;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      0008B1 90 07 42         [24] 2704 	mov	dptr,#_checkIRQ_opt_com_65536_176
      0008B4 E0               [24] 2705 	movx	a,@dptr
      0008B5 FF               [12] 2706 	mov	r7,a
      0008B6 E0               [24] 2707 	movx	a,@dptr
      0008B7 60 03            [24] 2708 	jz	00103$
      0008B9 BF 02 04         [24] 2709 	cjne	r7,#0x02,00104$
      0008BC                       2710 00103$:
                                   2711 ;	main.c:601: return USE_IRQ4;
      0008BC 75 82 02         [24] 2712 	mov	dpl,#0x02
      0008BF 22               [24] 2713 	ret
      0008C0                       2714 00104$:
                                   2715 ;	main.c:603: return USE_IRQ3;
      0008C0 75 82 00         [24] 2716 	mov	dpl,#0x00
                                   2717 ;	main.c:604: }
      0008C3 22               [24] 2718 	ret
                                   2719 ;------------------------------------------------------------
                                   2720 ;Allocation info for local variables in function 'get_reset_source'
                                   2721 ;------------------------------------------------------------
                                   2722 ;	main.c:609: static inline uint8_t get_reset_source(void) {
                                   2723 ;	-----------------------------------------
                                   2724 ;	 function get_reset_source
                                   2725 ;	-----------------------------------------
      0008C4                       2726 _get_reset_source:
                                   2727 ;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      0008C4 74 30            [12] 2728 	mov	a,#0x30
      0008C6 55 87            [12] 2729 	anl	a,_PCON
      0008C8 C4               [12] 2730 	swap	a
      0008C9 54 0F            [12] 2731 	anl	a,#0x0f
                                   2732 ;	main.c:611: }
      0008CB F5 82            [12] 2733 	mov	dpl,a
      0008CD 22               [24] 2734 	ret
                                   2735 ;------------------------------------------------------------
                                   2736 ;Allocation info for local variables in function 'usb_init'
                                   2737 ;------------------------------------------------------------
                                   2738 ;	main.c:613: static inline void usb_init(void) {
                                   2739 ;	-----------------------------------------
                                   2740 ;	 function usb_init
                                   2741 ;	-----------------------------------------
      0008CE                       2742 _usb_init:
                                   2743 ;	main.c:614: resetHubDevices(0);
      0008CE 75 82 00         [24] 2744 	mov	dpl,#0x00
      0008D1 12 23 75         [24] 2745 	lcall	_resetHubDevices
                                   2746 ;	main.c:615: resetHubDevices(1);
      0008D4 75 82 01         [24] 2747 	mov	dpl,#0x01
      0008D7 12 23 75         [24] 2748 	lcall	_resetHubDevices
                                   2749 ;	main.c:616: initUSB_Host();
                                   2750 ;	main.c:617: }
      0008DA 02 18 1A         [24] 2751 	ljmp	_initUSB_Host
                                   2752 ;------------------------------------------------------------
                                   2753 ;Allocation info for local variables in function 'init'
                                   2754 ;------------------------------------------------------------
                                   2755 ;__1310720029              Allocated with name '_init___1310720029_131072_185'
                                   2756 ;__1310720026              Allocated with name '_init___1310720026_131072_185'
                                   2757 ;__1310720024              Allocated with name '_init___1310720024_131072_185'
                                   2758 ;__1310720022              Allocated with name '_init___1310720022_131072_185'
                                   2759 ;__1310720020              Allocated with name '_init___1310720020_131072_185'
                                   2760 ;res                       Allocated with name '_init_res_262144_191'
                                   2761 ;res                       Allocated with name '_init_res_262144_198'
                                   2762 ;__1310720027              Allocated with name '_init___1310720027_131072_200'
                                   2763 ;opt_com                   Allocated with name '_init_opt_com_196608_201'
                                   2764 ;ea_state___LINE__         Allocated with name '_init_ea_state___LINE___327680_211'
                                   2765 ;__4587520032              Allocated with name '_init___4587520032_458752_217'
                                   2766 ;__4587520033              Allocated with name '_init___4587520033_458752_217'
                                   2767 ;opt_com                   Allocated with name '_init_opt_com_524288_218'
                                   2768 ;opt_irq                   Allocated with name '_init_opt_irq_524288_218'
                                   2769 ;config_data               Allocated with name '_init_config_data_589824_219'
                                   2770 ;------------------------------------------------------------
                                   2771 ;	main.c:619: static inline void init(void) {
                                   2772 ;	-----------------------------------------
                                   2773 ;	 function init
                                   2774 ;	-----------------------------------------
      0008DD                       2775 _init:
                                   2776 ;	main.c:620: WDOG_COUNT = 0;
      0008DD 75 FF 00         [24] 2777 	mov	_WDOG_COUNT,#0x00
                                   2778 ;	main.c:623: SAFE_MOD = 0x55;
      0008E0 75 A1 55         [24] 2779 	mov	_SAFE_MOD,#0x55
                                   2780 ;	main.c:624: SAFE_MOD = 0xAA;
      0008E3 75 A1 AA         [24] 2781 	mov	_SAFE_MOD,#0xaa
                                   2782 ;	main.c:626: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
      0008E6 75 B2 D8         [24] 2783 	mov	_PLL_CFG,#0xd8
                                   2784 ;	main.c:627: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
      0008E9 75 B3 86         [24] 2785 	mov	_CLOCK_CFG,#0x86
                                   2786 ;	main.c:629: SAFE_MOD = 0xFF;
      0008EC 75 A1 FF         [24] 2787 	mov	_SAFE_MOD,#0xff
                                   2788 ;	main.c:631: delay(7);
      0008EF 90 00 07         [24] 2789 	mov	dptr,#0x0007
      0008F2 12 17 A9         [24] 2790 	lcall	_delay
                                   2791 ;	main.c:642: pinMode(PORT_OUT(SPI_RESOUT_PORT), SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
      0008F5 90 07 61         [24] 2792 	mov	dptr,#_pinMode_PARM_2
      0008F8 74 03            [12] 2793 	mov	a,#0x03
      0008FA F0               [24] 2794 	movx	@dptr,a
      0008FB 90 07 62         [24] 2795 	mov	dptr,#_pinMode_PARM_3
      0008FE 14               [12] 2796 	dec	a
      0008FF F0               [24] 2797 	movx	@dptr,a
      000900 85 90 82         [24] 2798 	mov	dpl,_P1
      000903 12 13 38         [24] 2799 	lcall	_pinMode
                                   2800 ;	main.c:643: pinMode(PORT_OUT(SPI_MOSI_PORT), SPI_MOSI_PIN, PIN_MODE_OUTPUT);
      000906 90 07 61         [24] 2801 	mov	dptr,#_pinMode_PARM_2
      000909 74 05            [12] 2802 	mov	a,#0x05
      00090B F0               [24] 2803 	movx	@dptr,a
      00090C 90 07 62         [24] 2804 	mov	dptr,#_pinMode_PARM_3
      00090F 74 02            [12] 2805 	mov	a,#0x02
      000911 F0               [24] 2806 	movx	@dptr,a
      000912 85 90 82         [24] 2807 	mov	dpl,_P1
      000915 12 13 38         [24] 2808 	lcall	_pinMode
                                   2809 ;	main.c:644: pinMode(PORT_OUT(SPI_SCK_PORT), SPI_SCK_PIN, PIN_MODE_OUTPUT);
      000918 90 07 61         [24] 2810 	mov	dptr,#_pinMode_PARM_2
      00091B 74 07            [12] 2811 	mov	a,#0x07
      00091D F0               [24] 2812 	movx	@dptr,a
      00091E 90 07 62         [24] 2813 	mov	dptr,#_pinMode_PARM_3
      000921 74 02            [12] 2814 	mov	a,#0x02
      000923 F0               [24] 2815 	movx	@dptr,a
      000924 85 90 82         [24] 2816 	mov	dpl,_P1
      000927 12 13 38         [24] 2817 	lcall	_pinMode
                                   2818 ;	main.c:645: pinMode(PORT_OUT(TxD_PORT), TxD_PIN, PIN_MODE_OUTPUT);
      00092A 90 07 61         [24] 2819 	mov	dptr,#_pinMode_PARM_2
      00092D 74 03            [12] 2820 	mov	a,#0x03
      00092F F0               [24] 2821 	movx	@dptr,a
      000930 90 07 62         [24] 2822 	mov	dptr,#_pinMode_PARM_3
      000933 14               [12] 2823 	dec	a
      000934 F0               [24] 2824 	movx	@dptr,a
      000935 85 80 82         [24] 2825 	mov	dpl,_P0
      000938 12 13 38         [24] 2826 	lcall	_pinMode
                                   2827 ;	main.c:647: pinMode(PORT_IN(RxD_PORT), RxD_PIN, PIN_MODE_INPUT_PULLUP);
      00093B 90 07 61         [24] 2828 	mov	dptr,#_pinMode_PARM_2
      00093E 74 02            [12] 2829 	mov	a,#0x02
      000940 F0               [24] 2830 	movx	@dptr,a
      000941 90 07 62         [24] 2831 	mov	dptr,#_pinMode_PARM_3
      000944 14               [12] 2832 	dec	a
      000945 F0               [24] 2833 	movx	@dptr,a
      000946 85 80 82         [24] 2834 	mov	dpl,_P0
      000949 12 13 38         [24] 2835 	lcall	_pinMode
                                   2836 ;	main.c:648: pinMode(PORT_IN(DTR_PORT), DTR_PIN, PIN_MODE_INPUT);
      00094C 90 07 61         [24] 2837 	mov	dptr,#_pinMode_PARM_2
      00094F 74 02            [12] 2838 	mov	a,#0x02
      000951 F0               [24] 2839 	movx	@dptr,a
      000952 90 07 62         [24] 2840 	mov	dptr,#_pinMode_PARM_3
      000955 E4               [12] 2841 	clr	a
      000956 F0               [24] 2842 	movx	@dptr,a
      000957 85 B0 82         [24] 2843 	mov	dpl,_P3
      00095A 12 13 38         [24] 2844 	lcall	_pinMode
                                   2845 ;	main.c:649: pinMode(PORT_IN(COM_SEL1_PORT), COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      00095D 90 07 61         [24] 2846 	mov	dptr,#_pinMode_PARM_2
      000960 74 06            [12] 2847 	mov	a,#0x06
      000962 F0               [24] 2848 	movx	@dptr,a
      000963 90 07 62         [24] 2849 	mov	dptr,#_pinMode_PARM_3
      000966 74 01            [12] 2850 	mov	a,#0x01
      000968 F0               [24] 2851 	movx	@dptr,a
      000969 85 A0 82         [24] 2852 	mov	dpl,_P2
      00096C 12 13 38         [24] 2853 	lcall	_pinMode
                                   2854 ;	main.c:650: pinMode(PORT_IN(COM_SEL2_PORT), COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      00096F 90 07 61         [24] 2855 	mov	dptr,#_pinMode_PARM_2
      000972 74 07            [12] 2856 	mov	a,#0x07
      000974 F0               [24] 2857 	movx	@dptr,a
      000975 90 07 62         [24] 2858 	mov	dptr,#_pinMode_PARM_3
      000978 74 01            [12] 2859 	mov	a,#0x01
      00097A F0               [24] 2860 	movx	@dptr,a
      00097B 85 A0 82         [24] 2861 	mov	dpl,_P2
      00097E 12 13 38         [24] 2862 	lcall	_pinMode
                                   2863 ;	main.c:651: pinMode(PORT_IN(RATE_SEL1_PORT), RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000981 90 07 61         [24] 2864 	mov	dptr,#_pinMode_PARM_2
      000984 74 02            [12] 2865 	mov	a,#0x02
      000986 F0               [24] 2866 	movx	@dptr,a
      000987 90 07 62         [24] 2867 	mov	dptr,#_pinMode_PARM_3
      00098A 14               [12] 2868 	dec	a
      00098B F0               [24] 2869 	movx	@dptr,a
      00098C 85 90 82         [24] 2870 	mov	dpl,_P1
      00098F 12 13 38         [24] 2871 	lcall	_pinMode
                                   2872 ;	main.c:652: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_OUTPUT);
      000992 90 07 61         [24] 2873 	mov	dptr,#_pinMode_PARM_2
      000995 74 04            [12] 2874 	mov	a,#0x04
      000997 F0               [24] 2875 	movx	@dptr,a
      000998 90 07 62         [24] 2876 	mov	dptr,#_pinMode_PARM_3
      00099B 03               [12] 2877 	rr	a
      00099C F0               [24] 2878 	movx	@dptr,a
      00099D 85 90 82         [24] 2879 	mov	dpl,_P1
      0009A0 12 13 38         [24] 2880 	lcall	_pinMode
                                   2881 ;	main.c:654: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      0009A3 90 07 61         [24] 2882 	mov	dptr,#_pinMode_PARM_2
      0009A6 74 04            [12] 2883 	mov	a,#0x04
      0009A8 F0               [24] 2884 	movx	@dptr,a
      0009A9 90 07 62         [24] 2885 	mov	dptr,#_pinMode_PARM_3
      0009AC 74 01            [12] 2886 	mov	a,#0x01
      0009AE F0               [24] 2887 	movx	@dptr,a
      0009AF 85 90 82         [24] 2888 	mov	dpl,_P1
      0009B2 12 13 38         [24] 2889 	lcall	_pinMode
                                   2890 ;	main.c:655: pinMode(PORT_IN(WHEEL_SEL_PORT), WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      0009B5 90 07 61         [24] 2891 	mov	dptr,#_pinMode_PARM_2
      0009B8 74 04            [12] 2892 	mov	a,#0x04
      0009BA F0               [24] 2893 	movx	@dptr,a
      0009BB 90 07 62         [24] 2894 	mov	dptr,#_pinMode_PARM_3
      0009BE 74 01            [12] 2895 	mov	a,#0x01
      0009C0 F0               [24] 2896 	movx	@dptr,a
      0009C1 85 B0 82         [24] 2897 	mov	dpl,_P3
      0009C4 12 13 38         [24] 2898 	lcall	_pinMode
                                   2899 ;	main.c:656: pinMode(PORT_IN(IRQX_SEL_PORT), IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      0009C7 90 07 61         [24] 2900 	mov	dptr,#_pinMode_PARM_2
      0009CA 74 05            [12] 2901 	mov	a,#0x05
      0009CC F0               [24] 2902 	movx	@dptr,a
      0009CD 90 07 62         [24] 2903 	mov	dptr,#_pinMode_PARM_3
      0009D0 74 01            [12] 2904 	mov	a,#0x01
      0009D2 F0               [24] 2905 	movx	@dptr,a
      0009D3 85 A0 82         [24] 2906 	mov	dpl,_P2
      0009D6 12 13 38         [24] 2907 	lcall	_pinMode
                                   2908 ;	main.c:657: pinMode(PORT_IN(RxIRQ_PORT), RxIRQ_PIN, PIN_MODE_INPUT);
      0009D9 90 07 61         [24] 2909 	mov	dptr,#_pinMode_PARM_2
      0009DC 74 06            [12] 2910 	mov	a,#0x06
      0009DE F0               [24] 2911 	movx	@dptr,a
      0009DF 90 07 62         [24] 2912 	mov	dptr,#_pinMode_PARM_3
      0009E2 E4               [12] 2913 	clr	a
      0009E3 F0               [24] 2914 	movx	@dptr,a
      0009E4 85 90 82         [24] 2915 	mov	dpl,_P1
      0009E7 12 13 38         [24] 2916 	lcall	_pinMode
                                   2917 ;	main.c:658: pinMode(PORT_IN(PRG_PORT), PRG_PIN, PIN_MODE_INPUT_PULLUP);
      0009EA 90 07 61         [24] 2918 	mov	dptr,#_pinMode_PARM_2
      0009ED 74 06            [12] 2919 	mov	a,#0x06
      0009EF F0               [24] 2920 	movx	@dptr,a
      0009F0 90 07 62         [24] 2921 	mov	dptr,#_pinMode_PARM_3
      0009F3 74 01            [12] 2922 	mov	a,#0x01
      0009F5 F0               [24] 2923 	movx	@dptr,a
      0009F6 85 C1 82         [24] 2924 	mov	dpl,_P4_IN
      0009F9 12 13 38         [24] 2925 	lcall	_pinMode
                                   2926 ;	main.c:661: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
      0009FC E5 C1            [12] 2927 	mov	a,_P4_IN
      0009FE 20 E6 0B         [24] 2928 	jb	acc.6,00102$
                                   2929 ;	main.c:662: runBootloader();
      000A01 85 08 82         [24] 2930 	mov	dpl,_runBootloader
      000A04 85 09 83         [24] 2931 	mov	dph,(_runBootloader + 1)
      000A07 12 00 41         [24] 2932 	lcall	__sdcc_call_dptr
      000A0A 80 12            [24] 2933 	sjmp	00103$
      000A0C                       2934 00102$:
                                   2935 ;	main.c:664: pinMode(PORT_OUT(LED_PORT), LED_PIN, PIN_MODE_OUTPUT);
      000A0C 90 07 61         [24] 2936 	mov	dptr,#_pinMode_PARM_2
      000A0F 74 06            [12] 2937 	mov	a,#0x06
      000A11 F0               [24] 2938 	movx	@dptr,a
      000A12 90 07 62         [24] 2939 	mov	dptr,#_pinMode_PARM_3
      000A15 74 02            [12] 2940 	mov	a,#0x02
      000A17 F0               [24] 2941 	movx	@dptr,a
      000A18 85 C0 82         [24] 2942 	mov	dpl,_P4_OUT
      000A1B 12 13 38         [24] 2943 	lcall	_pinMode
      000A1E                       2944 00103$:
                                   2945 ;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      000A1E E5 A0            [12] 2946 	mov	a,_P2
      000A20 30 E6 06         [24] 2947 	jnb	acc.6,00146$
      000A23 7E 01            [12] 2948 	mov	r6,#0x01
      000A25 7F 00            [12] 2949 	mov	r7,#0x00
      000A27 80 04            [24] 2950 	sjmp	00147$
      000A29                       2951 00146$:
      000A29 7E 00            [12] 2952 	mov	r6,#0x00
      000A2B 7F 00            [12] 2953 	mov	r7,#0x00
      000A2D                       2954 00147$:
      000A2D E5 A0            [12] 2955 	mov	a,_P2
      000A2F 30 E7 06         [24] 2956 	jnb	acc.7,00148$
      000A32 7C 02            [12] 2957 	mov	r4,#0x02
      000A34 7D 00            [12] 2958 	mov	r5,#0x00
      000A36 80 04            [24] 2959 	sjmp	00149$
      000A38                       2960 00148$:
      000A38 7C 00            [12] 2961 	mov	r4,#0x00
      000A3A 7D 00            [12] 2962 	mov	r5,#0x00
      000A3C                       2963 00149$:
      000A3C EC               [12] 2964 	mov	a,r4
      000A3D 42 06            [12] 2965 	orl	ar6,a
                                   2966 ;	main.c:550: switch (res) {
      000A3F EE               [12] 2967 	mov	a,r6
      000A40 FF               [12] 2968 	mov	r7,a
      000A41 24 FC            [12] 2969 	add	a,#0xff - 0x03
      000A43 40 2F            [24] 2970 	jc	00113$
      000A45 EF               [12] 2971 	mov	a,r7
      000A46 2F               [12] 2972 	add	a,r7
      000A47 2F               [12] 2973 	add	a,r7
      000A48 90 0A 4C         [24] 2974 	mov	dptr,#00216$
      000A4B 73               [24] 2975 	jmp	@a+dptr
      000A4C                       2976 00216$:
      000A4C 02 0A 6C         [24] 2977 	ljmp	00112$
      000A4F 02 0A 64         [24] 2978 	ljmp	00111$
      000A52 02 0A 5C         [24] 2979 	ljmp	00110$
                                   2980 ;	main.c:551: case 3: 
                                   2981 ;	main.c:552: res = SELECT_COM1;
      000A55 90 07 45         [24] 2982 	mov	dptr,#_init_res_262144_191
      000A58 E4               [12] 2983 	clr	a
      000A59 F0               [24] 2984 	movx	@dptr,a
                                   2985 ;	main.c:553: break;
                                   2986 ;	main.c:554: case 2:
      000A5A 80 1D            [24] 2987 	sjmp	00114$
      000A5C                       2988 00110$:
                                   2989 ;	main.c:555: res = SELECT_COM2;
      000A5C 90 07 45         [24] 2990 	mov	dptr,#_init_res_262144_191
      000A5F 74 01            [12] 2991 	mov	a,#0x01
      000A61 F0               [24] 2992 	movx	@dptr,a
                                   2993 ;	main.c:556: break;
                                   2994 ;	main.c:557: case 1:
      000A62 80 15            [24] 2995 	sjmp	00114$
      000A64                       2996 00111$:
                                   2997 ;	main.c:558: res = SELECT_COM3;
      000A64 90 07 45         [24] 2998 	mov	dptr,#_init_res_262144_191
      000A67 74 02            [12] 2999 	mov	a,#0x02
      000A69 F0               [24] 3000 	movx	@dptr,a
                                   3001 ;	main.c:559: break;
                                   3002 ;	main.c:560: case 0:
      000A6A 80 0D            [24] 3003 	sjmp	00114$
      000A6C                       3004 00112$:
                                   3005 ;	main.c:561: res = SELECT_COM4;
      000A6C 90 07 45         [24] 3006 	mov	dptr,#_init_res_262144_191
      000A6F 74 03            [12] 3007 	mov	a,#0x03
      000A71 F0               [24] 3008 	movx	@dptr,a
                                   3009 ;	main.c:562: break;
                                   3010 ;	main.c:563: default:
      000A72 80 05            [24] 3011 	sjmp	00114$
      000A74                       3012 00113$:
                                   3013 ;	main.c:564: res = SELECT_COM1;
      000A74 90 07 45         [24] 3014 	mov	dptr,#_init_res_262144_191
      000A77 E4               [12] 3015 	clr	a
      000A78 F0               [24] 3016 	movx	@dptr,a
                                   3017 ;	main.c:565: }
      000A79                       3018 00114$:
                                   3019 ;	main.c:566: return res;
      000A79 90 07 45         [24] 3020 	mov	dptr,#_init_res_262144_191
      000A7C E0               [24] 3021 	movx	a,@dptr
                                   3022 ;	main.c:668: opt_com_settings = readCOMsettings();
      000A7D FF               [12] 3023 	mov	r7,a
      000A7E 90 06 00         [24] 3024 	mov	dptr,#_opt_com_settings
      000A81 F0               [24] 3025 	movx	@dptr,a
                                   3026 ;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      000A82 E5 B0            [12] 3027 	mov	a,_P3
      000A84 C4               [12] 3028 	swap	a
      000A85 54 01            [12] 3029 	anl	a,#0x01
      000A87 90 07 44         [24] 3030 	mov	dptr,#_init___1310720022_131072_185
      000A8A B4 01 00         [24] 3031 	cjne	a,#0x01,00217$
      000A8D                       3032 00217$:
      000A8D E4               [12] 3033 	clr	a
      000A8E 33               [12] 3034 	rlc	a
      000A8F F0               [24] 3035 	movx	@dptr,a
                                   3036 ;	main.c:669: opt_wheel_enabled = readWheelsettings();
      000A90 90 07 44         [24] 3037 	mov	dptr,#_init___1310720022_131072_185
      000A93 E0               [24] 3038 	movx	a,@dptr
      000A94 90 06 01         [24] 3039 	mov	dptr,#_opt_wheel_enabled
      000A97 F0               [24] 3040 	movx	@dptr,a
                                   3041 ;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      000A98 E5 90            [12] 3042 	mov	a,_P1
      000A9A 30 E2 06         [24] 3043 	jnb	acc.2,00150$
      000A9D 7D 01            [12] 3044 	mov	r5,#0x01
      000A9F 7E 00            [12] 3045 	mov	r6,#0x00
      000AA1 80 04            [24] 3046 	sjmp	00151$
      000AA3                       3047 00150$:
      000AA3 7D 00            [12] 3048 	mov	r5,#0x00
      000AA5 7E 00            [12] 3049 	mov	r6,#0x00
      000AA7                       3050 00151$:
      000AA7 E5 90            [12] 3051 	mov	a,_P1
      000AA9 30 E4 06         [24] 3052 	jnb	acc.4,00152$
      000AAC 7B 02            [12] 3053 	mov	r3,#0x02
      000AAE 7C 00            [12] 3054 	mov	r4,#0x00
      000AB0 80 04            [24] 3055 	sjmp	00153$
      000AB2                       3056 00152$:
      000AB2 7B 00            [12] 3057 	mov	r3,#0x00
      000AB4 7C 00            [12] 3058 	mov	r4,#0x00
      000AB6                       3059 00153$:
      000AB6 EB               [12] 3060 	mov	a,r3
      000AB7 42 05            [12] 3061 	orl	ar5,a
                                   3062 ;	main.c:577: switch (res) {
      000AB9 ED               [12] 3063 	mov	a,r5
      000ABA FE               [12] 3064 	mov	r6,a
      000ABB 24 FC            [12] 3065 	add	a,#0xff - 0x03
      000ABD 40 30            [24] 3066 	jc	00121$
      000ABF EE               [12] 3067 	mov	a,r6
      000AC0 2E               [12] 3068 	add	a,r6
      000AC1 2E               [12] 3069 	add	a,r6
      000AC2 90 0A C6         [24] 3070 	mov	dptr,#00221$
      000AC5 73               [24] 3071 	jmp	@a+dptr
      000AC6                       3072 00221$:
      000AC6 02 0A E7         [24] 3073 	ljmp	00120$
      000AC9 02 0A DF         [24] 3074 	ljmp	00119$
      000ACC 02 0A D7         [24] 3075 	ljmp	00118$
                                   3076 ;	main.c:578: case 3:
                                   3077 ;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
      000ACF 90 07 46         [24] 3078 	mov	dptr,#_init_res_262144_198
      000AD2 74 64            [12] 3079 	mov	a,#0x64
      000AD4 F0               [24] 3080 	movx	@dptr,a
                                   3081 ;	main.c:580: break;
                                   3082 ;	main.c:581: case 2:
      000AD5 80 1E            [24] 3083 	sjmp	00122$
      000AD7                       3084 00118$:
                                   3085 ;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
      000AD7 90 07 46         [24] 3086 	mov	dptr,#_init_res_262144_198
      000ADA 74 50            [12] 3087 	mov	a,#0x50
      000ADC F0               [24] 3088 	movx	@dptr,a
                                   3089 ;	main.c:583: break;
                                   3090 ;	main.c:584: case 1:
      000ADD 80 16            [24] 3091 	sjmp	00122$
      000ADF                       3092 00119$:
                                   3093 ;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
      000ADF 90 07 46         [24] 3094 	mov	dptr,#_init_res_262144_198
      000AE2 74 28            [12] 3095 	mov	a,#0x28
      000AE4 F0               [24] 3096 	movx	@dptr,a
                                   3097 ;	main.c:586: break;
                                   3098 ;	main.c:587: case 0:
      000AE5 80 0E            [24] 3099 	sjmp	00122$
      000AE7                       3100 00120$:
                                   3101 ;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
      000AE7 90 07 46         [24] 3102 	mov	dptr,#_init_res_262144_198
      000AEA 74 14            [12] 3103 	mov	a,#0x14
      000AEC F0               [24] 3104 	movx	@dptr,a
                                   3105 ;	main.c:589: break;
                                   3106 ;	main.c:590: default:
      000AED 80 06            [24] 3107 	sjmp	00122$
      000AEF                       3108 00121$:
                                   3109 ;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
      000AEF 90 07 46         [24] 3110 	mov	dptr,#_init_res_262144_198
      000AF2 74 64            [12] 3111 	mov	a,#0x64
      000AF4 F0               [24] 3112 	movx	@dptr,a
                                   3113 ;	main.c:592: }
      000AF5                       3114 00122$:
                                   3115 ;	main.c:593: return res;
      000AF5 90 07 46         [24] 3116 	mov	dptr,#_init_res_262144_198
      000AF8 E0               [24] 3117 	movx	a,@dptr
                                   3118 ;	main.c:670: opt_rate_settings = readRatesettings();
      000AF9 FE               [12] 3119 	mov	r6,a
      000AFA 90 06 02         [24] 3120 	mov	dptr,#_opt_rate_settings
      000AFD F0               [24] 3121 	movx	@dptr,a
                                   3122 ;	main.c:672: timer0_limit = (uint8_t)((2000U + opt_rate_settings) / (2U * opt_rate_settings));
      000AFE 8E 04            [24] 3123 	mov	ar4,r6
      000B00 7D 00            [12] 3124 	mov	r5,#0x00
      000B02 74 D0            [12] 3125 	mov	a,#0xd0
      000B04 2C               [12] 3126 	add	a,r4
      000B05 FC               [12] 3127 	mov	r4,a
      000B06 74 07            [12] 3128 	mov	a,#0x07
      000B08 3D               [12] 3129 	addc	a,r5
      000B09 FD               [12] 3130 	mov	r5,a
      000B0A 7B 00            [12] 3131 	mov	r3,#0x00
      000B0C EE               [12] 3132 	mov	a,r6
      000B0D 2E               [12] 3133 	add	a,r6
      000B0E FE               [12] 3134 	mov	r6,a
      000B0F EB               [12] 3135 	mov	a,r3
      000B10 33               [12] 3136 	rlc	a
      000B11 FB               [12] 3137 	mov	r3,a
      000B12 90 0C 91         [24] 3138 	mov	dptr,#__divuint_PARM_2
      000B15 EE               [12] 3139 	mov	a,r6
      000B16 F0               [24] 3140 	movx	@dptr,a
      000B17 EB               [12] 3141 	mov	a,r3
      000B18 A3               [24] 3142 	inc	dptr
      000B19 F0               [24] 3143 	movx	@dptr,a
      000B1A 8C 82            [24] 3144 	mov	dpl,r4
      000B1C 8D 83            [24] 3145 	mov	dph,r5
      000B1E C0 07            [24] 3146 	push	ar7
      000B20 12 40 0E         [24] 3147 	lcall	__divuint
      000B23 AD 82            [24] 3148 	mov	r5,dpl
      000B25 D0 07            [24] 3149 	pop	ar7
      000B27 90 07 1F         [24] 3150 	mov	dptr,#_timer0_limit
      000B2A ED               [12] 3151 	mov	a,r5
      000B2B F0               [24] 3152 	movx	@dptr,a
                                   3153 ;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      000B2C E5 A0            [12] 3154 	mov	a,_P2
      000B2E 20 E5 08         [24] 3155 	jb	acc.5,00125$
                                   3156 ;	main.c:598: return USE_IRQX;
      000B31 90 07 43         [24] 3157 	mov	dptr,#_init___1310720026_131072_185
      000B34 74 01            [12] 3158 	mov	a,#0x01
      000B36 F0               [24] 3159 	movx	@dptr,a
      000B37 80 13            [24] 3160 	sjmp	00129$
      000B39                       3161 00125$:
                                   3162 ;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      000B39 EF               [12] 3163 	mov	a,r7
      000B3A 60 03            [24] 3164 	jz	00127$
      000B3C BF 02 08         [24] 3165 	cjne	r7,#0x02,00128$
      000B3F                       3166 00127$:
                                   3167 ;	main.c:601: return USE_IRQ4;
      000B3F 90 07 43         [24] 3168 	mov	dptr,#_init___1310720026_131072_185
      000B42 74 02            [12] 3169 	mov	a,#0x02
      000B44 F0               [24] 3170 	movx	@dptr,a
      000B45 80 05            [24] 3171 	sjmp	00129$
      000B47                       3172 00128$:
                                   3173 ;	main.c:603: return USE_IRQ3;
      000B47 90 07 43         [24] 3174 	mov	dptr,#_init___1310720026_131072_185
      000B4A E4               [12] 3175 	clr	a
      000B4B F0               [24] 3176 	movx	@dptr,a
                                   3177 ;	main.c:674: opt_irq_settings = checkIRQ(opt_com_settings);
      000B4C                       3178 00129$:
      000B4C 90 07 43         [24] 3179 	mov	dptr,#_init___1310720026_131072_185
      000B4F E0               [24] 3180 	movx	a,@dptr
      000B50 90 06 03         [24] 3181 	mov	dptr,#_opt_irq_settings
      000B53 F0               [24] 3182 	movx	@dptr,a
                                   3183 ;	main.c:681: TH0 = (uint8_t)(TIMER0_CONST >> 8);
      000B54 75 8C F0         [24] 3184 	mov	_TH0,#0xf0
                                   3185 ;	main.c:682: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
      000B57 75 8A 60         [24] 3186 	mov	_TL0,#0x60
                                   3187 ;	main.c:683: TF0 = 0;
                                   3188 ;	assignBit
      000B5A C2 8D            [12] 3189 	clr	_TF0
                                   3190 ;	main.c:684: TR0 = 1;
                                   3191 ;	assignBit
      000B5C D2 8C            [12] 3192 	setb	_TR0
                                   3193 ;	main.c:688: TR2 = 0;         // останов таймера
                                   3194 ;	assignBit
      000B5E C2 CA            [12] 3195 	clr	_TR2
                                   3196 ;	main.c:689: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
      000B60 75 C9 00         [24] 3197 	mov	_T2MOD,#0x00
                                   3198 ;	main.c:690: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
      000B63 75 CB FF         [24] 3199 	mov	_RCAP2H,#0xff
                                   3200 ;	main.c:691: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
      000B66 75 CA 9C         [24] 3201 	mov	_RCAP2L,#0x9c
                                   3202 ;	main.c:692: TH2 = RCAP2H;
      000B69 85 CB CD         [24] 3203 	mov	_TH2,_RCAP2H
                                   3204 ;	main.c:693: TL2 = RCAP2L;
      000B6C 85 CA CC         [24] 3205 	mov	_TL2,_RCAP2L
                                   3206 ;	main.c:694: TF2 = 0;
                                   3207 ;	assignBit
      000B6F C2 CF            [12] 3208 	clr	_TF2
                                   3209 ;	main.c:698: T3_SETUP = 0;           // Режим таймера (не захвата)
                                   3210 ;	main.c:699: T3_COUNT = 0;           // Сброс счетчика
      000B71 E4               [12] 3211 	clr	a
      000B72 F5 A3            [12] 3212 	mov	_T3_SETUP,a
      000B74 F5 A4            [12] 3213 	mov	((_T3_COUNT >> 0) & 0xFF),a
      000B76 F5 A5            [12] 3214 	mov	((_T3_COUNT >> 8) & 0xFF),a
                                   3215 ;	main.c:700: T3_END = TIMER1_CONST;  // Установка периода
      000B78 75 A6 10         [24] 3216 	mov	((_T3_END >> 0) & 0xFF),#0x10
      000B7B 75 A7 27         [24] 3217 	mov	((_T3_END >> 8) & 0xFF),#0x27
                                   3218 ;	main.c:701: T3_CTRL = 0;            // Изначально остановлен, сброс флагов
                                   3219 ;	1-genFromRTrack replaced	mov	_T3_CTRL,#0x00
      000B7E F5 AA            [12] 3220 	mov	_T3_CTRL,a
                                   3221 ;	main.c:705: IT0 = 1; // Активен по спаду сигнала
                                   3222 ;	assignBit
      000B80 D2 88            [12] 3223 	setb	_IT0
                                   3224 ;	main.c:706: IE0 = 0; // Сброс флага прерывания INT0
                                   3225 ;	assignBit
      000B82 C2 89            [12] 3226 	clr	_IE0
                                   3227 ;	main.c:710: ET0 = 1; // разрешить прерывания таймера 0
                                   3228 ;	assignBit
      000B84 D2 A9            [12] 3229 	setb	_ET0
                                   3230 ;	main.c:711: ET2 = 1; // разрешить прерывания таймера 2
                                   3231 ;	assignBit
      000B86 D2 AD            [12] 3232 	setb	_ET2
                                   3233 ;	main.c:712: IE_TMR3 = 1; // разрешить прерывания таймера 3
                                   3234 ;	assignBit
      000B88 D2 E9            [12] 3235 	setb	_IE_TMR3
                                   3236 ;	main.c:713: EX0 = 1; // разрешить прерывания INT0
                                   3237 ;	assignBit
      000B8A D2 A8            [12] 3238 	setb	_EX0
                                   3239 ;	main.c:715: SAFE_MOD = 0x55;
      000B8C 75 A1 55         [24] 3240 	mov	_SAFE_MOD,#0x55
                                   3241 ;	main.c:716: SAFE_MOD = 0xAA;
      000B8F 75 A1 AA         [24] 3242 	mov	_SAFE_MOD,#0xaa
                                   3243 ;	main.c:718: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
      000B92 75 EB C3         [24] 3244 	mov	_WAKE_CTRL,#0xc3
                                   3245 ;	main.c:721: bSLP_OFF_SPI0 | bSLP_OFF_TMR3 | bSLP_OFF_XRAM;
      000B95 75 EA 7D         [24] 3246 	mov	_SLEEP_CTRL,#0x7d
                                   3247 ;	main.c:724: GLOBAL_CFG |= bWDOG_EN;
      000B98 43 B1 01         [24] 3248 	orl	_GLOBAL_CFG,#0x01
                                   3249 ;	main.c:726: SAFE_MOD = 0xFF;
      000B9B 75 A1 FF         [24] 3250 	mov	_SAFE_MOD,#0xff
                                   3251 ;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      000B9E 74 30            [12] 3252 	mov	a,#0x30
      000BA0 55 87            [12] 3253 	anl	a,_PCON
      000BA2 C4               [12] 3254 	swap	a
      000BA3 54 0F            [12] 3255 	anl	a,#0x0f
                                   3256 ;	main.c:728: switch (get_reset_source()) {
      000BA5 FF               [12] 3257 	mov	r7,a
      000BA6 FE               [12] 3258 	mov	r6,a
      000BA7 24 FC            [12] 3259 	add	a,#0xff - 0x03
      000BA9 40 2D            [24] 3260 	jc	00108$
      000BAB EE               [12] 3261 	mov	a,r6
      000BAC 2E               [12] 3262 	add	a,r6
                                   3263 ;	main.c:729: case 0b10: // 10 - Переполнение watchdog
      000BAD 90 0B B1         [24] 3264 	mov	dptr,#00227$
      000BB0 73               [24] 3265 	jmp	@a+dptr
      000BB1                       3266 00227$:
      000BB1 80 17            [24] 3267 	sjmp	00107$
      000BB3 80 15            [24] 3268 	sjmp	00107$
      000BB5 80 02            [24] 3269 	sjmp	00104$
      000BB7 80 08            [24] 3270 	sjmp	00105$
      000BB9                       3271 00104$:
                                   3272 ;	main.c:730: device_init = true;
      000BB9 90 07 1C         [24] 3273 	mov	dptr,#_device_init
      000BBC 74 01            [12] 3274 	mov	a,#0x01
      000BBE F0               [24] 3275 	movx	@dptr,a
                                   3276 ;	main.c:731: break;
                                   3277 ;	main.c:732: case 0b11: // 11 - Аппаратный сброс
      000BBF 80 17            [24] 3278 	sjmp	00108$
      000BC1                       3279 00105$:
                                   3280 ;	main.c:733: led_on(); // Сигнализируем исправность светодиода
      000BC1 53 C0 BF         [24] 3281 	anl	_P4_OUT,#0xbf
                                   3282 ;	main.c:734: delay(50);
      000BC4 90 00 32         [24] 3283 	mov	dptr,#0x0032
      000BC7 12 17 A9         [24] 3284 	lcall	_delay
                                   3285 ;	main.c:737: case 0b01: // 01 - Сброс при включении питания
      000BCA                       3286 00107$:
                                   3287 ;	main.c:738: delay(50); // Ждём окончания переходных процессов
      000BCA 90 00 32         [24] 3288 	mov	dptr,#0x0032
      000BCD 12 17 A9         [24] 3289 	lcall	_delay
                                   3290 ;	main.c:739: led_off();
      000BD0 43 C0 40         [24] 3291 	orl	_P4_OUT,#0x40
                                   3292 ;	main.c:740: device_init = false;
      000BD3 90 07 1C         [24] 3293 	mov	dptr,#_device_init
      000BD6 E4               [12] 3294 	clr	a
      000BD7 F0               [24] 3295 	movx	@dptr,a
                                   3296 ;	main.c:742: }
      000BD8                       3297 00108$:
                                   3298 ;	main.c:745: EA = 1;
                                   3299 ;	assignBit
      000BD8 D2 AF            [12] 3300 	setb	_EA
                                   3301 ;	main.c:388: CRITICAL_SECTION (
      000BDA A2 AF            [12] 3302 	mov	c,_EA
      000BDC E4               [12] 3303 	clr	a
      000BDD 33               [12] 3304 	rlc	a
      000BDE FF               [12] 3305 	mov	r7,a
                                   3306 ;	assignBit
      000BDF C2 AF            [12] 3307 	clr	_EA
      000BE1 90 07 17         [24] 3308 	mov	dptr,#_spi_tx_buf_w
      000BE4 E4               [12] 3309 	clr	a
      000BE5 F0               [24] 3310 	movx	@dptr,a
      000BE6 90 07 18         [24] 3311 	mov	dptr,#_spi_tx_buf_r
      000BE9 F0               [24] 3312 	movx	@dptr,a
      000BEA 90 07 19         [24] 3313 	mov	dptr,#_spi_tx_buf_count
      000BED F0               [24] 3314 	movx	@dptr,a
      000BEE 90 07 1C         [24] 3315 	mov	dptr,#_device_init
      000BF1 E0               [24] 3316 	movx	a,@dptr
      000BF2 70 35            [24] 3317 	jnz	00132$
      000BF4 43 90 20         [24] 3318 	orl	_P1,#0x20
      000BF7 90 00 01         [24] 3319 	mov	dptr,#0x0001
      000BFA C0 07            [24] 3320 	push	ar7
      000BFC 12 17 54         [24] 3321 	lcall	_delayUs
      000BFF D0 07            [24] 3322 	pop	ar7
      000C01 53 90 DF         [24] 3323 	anl	_P1,#0xdf
      000C04 90 06 03         [24] 3324 	mov	dptr,#_opt_irq_settings
      000C07 E0               [24] 3325 	movx	a,@dptr
      000C08 FE               [12] 3326 	mov	r6,a
      000C09 90 06 00         [24] 3327 	mov	dptr,#_opt_com_settings
      000C0C E0               [24] 3328 	movx	a,@dptr
                                   3329 ;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
      000C0D 54 03            [12] 3330 	anl	a,#0x03
      000C0F FD               [12] 3331 	mov	r5,a
                                   3332 ;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      000C10 BE 01 06         [24] 3333 	cjne	r6,#0x01,00154$
      000C13 7C 04            [12] 3334 	mov	r4,#0x04
      000C15 7E 00            [12] 3335 	mov	r6,#0x00
      000C17 80 04            [24] 3336 	sjmp	00155$
      000C19                       3337 00154$:
      000C19 7C 00            [12] 3338 	mov	r4,#0x00
      000C1B 7E 00            [12] 3339 	mov	r6,#0x00
      000C1D                       3340 00155$:
      000C1D EC               [12] 3341 	mov	a,r4
      000C1E 42 05            [12] 3342 	orl	ar5,a
                                   3343 ;	main.c:433: spi_send(config_data);
      000C20 8D 82            [24] 3344 	mov	dpl,r5
      000C22 C0 07            [24] 3345 	push	ar7
      000C24 12 03 B6         [24] 3346 	lcall	_spi_send
      000C27 D0 07            [24] 3347 	pop	ar7
                                   3348 ;	main.c:388: CRITICAL_SECTION (
      000C29                       3349 00132$:
      000C29 90 00 01         [24] 3350 	mov	dptr,#0x0001
      000C2C C0 07            [24] 3351 	push	ar7
      000C2E 12 17 54         [24] 3352 	lcall	_delayUs
      000C31 D0 07            [24] 3353 	pop	ar7
      000C33 53 90 F7         [24] 3354 	anl	_P1,#0xf7
                                   3355 ;	assignBit
      000C36 EF               [12] 3356 	mov	a,r7
      000C37 24 FF            [12] 3357 	add	a,#0xff
      000C39 92 AF            [24] 3358 	mov	_EA,c
                                   3359 ;	main.c:407: while (!device_init) {
      000C3B                       3360 00136$:
      000C3B 90 07 1C         [24] 3361 	mov	dptr,#_device_init
      000C3E E0               [24] 3362 	movx	a,@dptr
      000C3F 60 FA            [24] 3363 	jz	00136$
                                   3364 ;	main.c:750: initUART0(115200);
      000C41 90 C2 00         [24] 3365 	mov	dptr,#0xc200
      000C44 75 F0 01         [24] 3366 	mov	b,#0x01
      000C47 E4               [12] 3367 	clr	a
      000C48 12 3D 23         [24] 3368 	lcall	_initUART0
                                   3369 ;	main.c:751: DEBUG_OUT("Startup\n");
      000C4B 74 64            [12] 3370 	mov	a,#___str_0
      000C4D C0 E0            [24] 3371 	push	acc
      000C4F 74 4C            [12] 3372 	mov	a,#(___str_0 >> 8)
      000C51 C0 E0            [24] 3373 	push	acc
      000C53 74 80            [12] 3374 	mov	a,#0x80
      000C55 C0 E0            [24] 3375 	push	acc
      000C57 12 41 F8         [24] 3376 	lcall	_printf
      000C5A 15 81            [12] 3377 	dec	sp
      000C5C 15 81            [12] 3378 	dec	sp
      000C5E 15 81            [12] 3379 	dec	sp
                                   3380 ;	main.c:614: resetHubDevices(0);
      000C60 75 82 00         [24] 3381 	mov	dpl,#0x00
      000C63 12 23 75         [24] 3382 	lcall	_resetHubDevices
                                   3383 ;	main.c:615: resetHubDevices(1);
      000C66 75 82 01         [24] 3384 	mov	dpl,#0x01
      000C69 12 23 75         [24] 3385 	lcall	_resetHubDevices
                                   3386 ;	main.c:616: initUSB_Host();
      000C6C 12 18 1A         [24] 3387 	lcall	_initUSB_Host
                                   3388 ;	main.c:344: m_wheel = opt_wheel_enabled;
      000C6F 90 06 01         [24] 3389 	mov	dptr,#_opt_wheel_enabled
      000C72 E0               [24] 3390 	movx	a,@dptr
      000C73 90 06 04         [24] 3391 	mov	dptr,#_m_wheel
      000C76 F0               [24] 3392 	movx	@dptr,a
                                   3393 ;	main.c:757: mouse_enabled = get_mouse_power_state();
      000C77 90 07 1B         [24] 3394 	mov	dptr,#_mouse_enabled
      000C7A 74 04            [12] 3395 	mov	a,#0x04
      000C7C 55 B0            [12] 3396 	anl	a,_P3
      000C7E F0               [24] 3397 	movx	@dptr,a
                                   3398 ;	main.c:758: mouse_start = true;
      000C7F 90 07 1A         [24] 3399 	mov	dptr,#_mouse_start
      000C82 74 01            [12] 3400 	mov	a,#0x01
      000C84 F0               [24] 3401 	movx	@dptr,a
                                   3402 ;	main.c:759: fatal_error = false;
      000C85 90 07 1E         [24] 3403 	mov	dptr,#_fatal_error
      000C88 E4               [12] 3404 	clr	a
      000C89 F0               [24] 3405 	movx	@dptr,a
                                   3406 ;	main.c:760: }
      000C8A 22               [24] 3407 	ret
                                   3408 ;------------------------------------------------------------
                                   3409 ;Allocation info for local variables in function 'main'
                                   3410 ;------------------------------------------------------------
                                   3411 ;__1310720029              Allocated with name '_main___1310720029_262144_236'
                                   3412 ;__1310720026              Allocated with name '_main___1310720026_262144_236'
                                   3413 ;__1310720024              Allocated with name '_main___1310720024_262144_236'
                                   3414 ;__1310720022              Allocated with name '_main___1310720022_262144_236'
                                   3415 ;__1310720020              Allocated with name '_main___1310720020_262144_236'
                                   3416 ;res                       Allocated with name '_main_res_458752_241'
                                   3417 ;res                       Allocated with name '_main_res_458752_248'
                                   3418 ;__1310720027              Allocated with name '_main___1310720027_327680_250'
                                   3419 ;opt_com                   Allocated with name '_main_opt_com_393216_251'
                                   3420 ;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___524288_262'
                                   3421 ;__4587520032              Allocated with name '_main___4587520032_655360_264'
                                   3422 ;__4587520033              Allocated with name '_main___4587520033_655360_264'
                                   3423 ;opt_com                   Allocated with name '_main_opt_com_720896_265'
                                   3424 ;opt_irq                   Allocated with name '_main_opt_irq_720896_265'
                                   3425 ;config_data               Allocated with name '_main_config_data_786432_266'
                                   3426 ;st_m_bt                   Allocated with name '_main_st_m_bt_393216_279'
                                   3427 ;dr_ctr                    Allocated with name '_main_dr_ctr_393216_279'
                                   3428 ;m_bt                      Allocated with name '_main_m_bt_393216_279'
                                   3429 ;m_cx                      Allocated with name '_main_m_cx_393216_279'
                                   3430 ;m_cy                      Allocated with name '_main_m_cy_393216_279'
                                   3431 ;m_cz                      Allocated with name '_main_m_cz_393216_279'
                                   3432 ;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___589824_283'
                                   3433 ;__2621440005              Allocated with name '_main___2621440005_524288_292'
                                   3434 ;cx                        Allocated with name '_main_cx_524288_292'
                                   3435 ;__2621440006              Allocated with name '_main___2621440006_589824_293'
                                   3436 ;__2621440007              Allocated with name '_main___2621440007_589824_293'
                                   3437 ;__2621440008              Allocated with name '_main___2621440008_589824_293'
                                   3438 ;val                       Allocated with name '_main_val_655360_294'
                                   3439 ;min                       Allocated with name '_main_min_655360_294'
                                   3440 ;max                       Allocated with name '_main_max_655360_294'
                                   3441 ;__2621440010              Allocated with name '_main___2621440010_589824_296'
                                   3442 ;cy                        Allocated with name '_main_cy_589824_296'
                                   3443 ;__2621450011              Allocated with name '_main___2621450011_655360_297'
                                   3444 ;__2621450012              Allocated with name '_main___2621450012_655360_297'
                                   3445 ;__2621450013              Allocated with name '_main___2621450013_655360_297'
                                   3446 ;val                       Allocated with name '_main_val_720896_298'
                                   3447 ;min                       Allocated with name '_main_min_720896_298'
                                   3448 ;max                       Allocated with name '_main_max_720896_298'
                                   3449 ;__2621450015              Allocated with name '_main___2621450015_655360_300'
                                   3450 ;cz                        Allocated with name '_main_cz_655360_300'
                                   3451 ;__2621460016              Allocated with name '_main___2621460016_720896_301'
                                   3452 ;__2621460017              Allocated with name '_main___2621460017_720896_301'
                                   3453 ;__2621460018              Allocated with name '_main___2621460018_720896_301'
                                   3454 ;val                       Allocated with name '_main_val_786432_302'
                                   3455 ;min                       Allocated with name '_main_min_786432_302'
                                   3456 ;max                       Allocated with name '_main_max_786432_302'
                                   3457 ;------------------------------------------------------------
                                   3458 ;	main.c:762: int main(void) {
                                   3459 ;	-----------------------------------------
                                   3460 ;	 function main
                                   3461 ;	-----------------------------------------
      000C8B                       3462 _main:
                                   3463 ;	main.c:620: WDOG_COUNT = 0;
      000C8B 75 FF 00         [24] 3464 	mov	_WDOG_COUNT,#0x00
                                   3465 ;	main.c:623: SAFE_MOD = 0x55;
      000C8E 75 A1 55         [24] 3466 	mov	_SAFE_MOD,#0x55
                                   3467 ;	main.c:624: SAFE_MOD = 0xAA;
      000C91 75 A1 AA         [24] 3468 	mov	_SAFE_MOD,#0xaa
                                   3469 ;	main.c:626: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
      000C94 75 B2 D8         [24] 3470 	mov	_PLL_CFG,#0xd8
                                   3471 ;	main.c:627: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
      000C97 75 B3 86         [24] 3472 	mov	_CLOCK_CFG,#0x86
                                   3473 ;	main.c:629: SAFE_MOD = 0xFF;
      000C9A 75 A1 FF         [24] 3474 	mov	_SAFE_MOD,#0xff
                                   3475 ;	main.c:631: delay(7);
      000C9D 90 00 07         [24] 3476 	mov	dptr,#0x0007
      000CA0 12 17 A9         [24] 3477 	lcall	_delay
                                   3478 ;	main.c:642: pinMode(PORT_OUT(SPI_RESOUT_PORT), SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
      000CA3 90 07 61         [24] 3479 	mov	dptr,#_pinMode_PARM_2
      000CA6 74 03            [12] 3480 	mov	a,#0x03
      000CA8 F0               [24] 3481 	movx	@dptr,a
      000CA9 90 07 62         [24] 3482 	mov	dptr,#_pinMode_PARM_3
      000CAC 14               [12] 3483 	dec	a
      000CAD F0               [24] 3484 	movx	@dptr,a
      000CAE 85 90 82         [24] 3485 	mov	dpl,_P1
      000CB1 12 13 38         [24] 3486 	lcall	_pinMode
                                   3487 ;	main.c:643: pinMode(PORT_OUT(SPI_MOSI_PORT), SPI_MOSI_PIN, PIN_MODE_OUTPUT);
      000CB4 90 07 61         [24] 3488 	mov	dptr,#_pinMode_PARM_2
      000CB7 74 05            [12] 3489 	mov	a,#0x05
      000CB9 F0               [24] 3490 	movx	@dptr,a
      000CBA 90 07 62         [24] 3491 	mov	dptr,#_pinMode_PARM_3
      000CBD 74 02            [12] 3492 	mov	a,#0x02
      000CBF F0               [24] 3493 	movx	@dptr,a
      000CC0 85 90 82         [24] 3494 	mov	dpl,_P1
      000CC3 12 13 38         [24] 3495 	lcall	_pinMode
                                   3496 ;	main.c:644: pinMode(PORT_OUT(SPI_SCK_PORT), SPI_SCK_PIN, PIN_MODE_OUTPUT);
      000CC6 90 07 61         [24] 3497 	mov	dptr,#_pinMode_PARM_2
      000CC9 74 07            [12] 3498 	mov	a,#0x07
      000CCB F0               [24] 3499 	movx	@dptr,a
      000CCC 90 07 62         [24] 3500 	mov	dptr,#_pinMode_PARM_3
      000CCF 74 02            [12] 3501 	mov	a,#0x02
      000CD1 F0               [24] 3502 	movx	@dptr,a
      000CD2 85 90 82         [24] 3503 	mov	dpl,_P1
      000CD5 12 13 38         [24] 3504 	lcall	_pinMode
                                   3505 ;	main.c:645: pinMode(PORT_OUT(TxD_PORT), TxD_PIN, PIN_MODE_OUTPUT);
      000CD8 90 07 61         [24] 3506 	mov	dptr,#_pinMode_PARM_2
      000CDB 74 03            [12] 3507 	mov	a,#0x03
      000CDD F0               [24] 3508 	movx	@dptr,a
      000CDE 90 07 62         [24] 3509 	mov	dptr,#_pinMode_PARM_3
      000CE1 14               [12] 3510 	dec	a
      000CE2 F0               [24] 3511 	movx	@dptr,a
      000CE3 85 80 82         [24] 3512 	mov	dpl,_P0
      000CE6 12 13 38         [24] 3513 	lcall	_pinMode
                                   3514 ;	main.c:647: pinMode(PORT_IN(RxD_PORT), RxD_PIN, PIN_MODE_INPUT_PULLUP);
      000CE9 90 07 61         [24] 3515 	mov	dptr,#_pinMode_PARM_2
      000CEC 74 02            [12] 3516 	mov	a,#0x02
      000CEE F0               [24] 3517 	movx	@dptr,a
      000CEF 90 07 62         [24] 3518 	mov	dptr,#_pinMode_PARM_3
      000CF2 14               [12] 3519 	dec	a
      000CF3 F0               [24] 3520 	movx	@dptr,a
      000CF4 85 80 82         [24] 3521 	mov	dpl,_P0
      000CF7 12 13 38         [24] 3522 	lcall	_pinMode
                                   3523 ;	main.c:648: pinMode(PORT_IN(DTR_PORT), DTR_PIN, PIN_MODE_INPUT);
      000CFA 90 07 61         [24] 3524 	mov	dptr,#_pinMode_PARM_2
      000CFD 74 02            [12] 3525 	mov	a,#0x02
      000CFF F0               [24] 3526 	movx	@dptr,a
      000D00 90 07 62         [24] 3527 	mov	dptr,#_pinMode_PARM_3
      000D03 E4               [12] 3528 	clr	a
      000D04 F0               [24] 3529 	movx	@dptr,a
      000D05 85 B0 82         [24] 3530 	mov	dpl,_P3
      000D08 12 13 38         [24] 3531 	lcall	_pinMode
                                   3532 ;	main.c:649: pinMode(PORT_IN(COM_SEL1_PORT), COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000D0B 90 07 61         [24] 3533 	mov	dptr,#_pinMode_PARM_2
      000D0E 74 06            [12] 3534 	mov	a,#0x06
      000D10 F0               [24] 3535 	movx	@dptr,a
      000D11 90 07 62         [24] 3536 	mov	dptr,#_pinMode_PARM_3
      000D14 74 01            [12] 3537 	mov	a,#0x01
      000D16 F0               [24] 3538 	movx	@dptr,a
      000D17 85 A0 82         [24] 3539 	mov	dpl,_P2
      000D1A 12 13 38         [24] 3540 	lcall	_pinMode
                                   3541 ;	main.c:650: pinMode(PORT_IN(COM_SEL2_PORT), COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000D1D 90 07 61         [24] 3542 	mov	dptr,#_pinMode_PARM_2
      000D20 74 07            [12] 3543 	mov	a,#0x07
      000D22 F0               [24] 3544 	movx	@dptr,a
      000D23 90 07 62         [24] 3545 	mov	dptr,#_pinMode_PARM_3
      000D26 74 01            [12] 3546 	mov	a,#0x01
      000D28 F0               [24] 3547 	movx	@dptr,a
      000D29 85 A0 82         [24] 3548 	mov	dpl,_P2
      000D2C 12 13 38         [24] 3549 	lcall	_pinMode
                                   3550 ;	main.c:651: pinMode(PORT_IN(RATE_SEL1_PORT), RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
      000D2F 90 07 61         [24] 3551 	mov	dptr,#_pinMode_PARM_2
      000D32 74 02            [12] 3552 	mov	a,#0x02
      000D34 F0               [24] 3553 	movx	@dptr,a
      000D35 90 07 62         [24] 3554 	mov	dptr,#_pinMode_PARM_3
      000D38 14               [12] 3555 	dec	a
      000D39 F0               [24] 3556 	movx	@dptr,a
      000D3A 85 90 82         [24] 3557 	mov	dpl,_P1
      000D3D 12 13 38         [24] 3558 	lcall	_pinMode
                                   3559 ;	main.c:652: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_OUTPUT);
      000D40 90 07 61         [24] 3560 	mov	dptr,#_pinMode_PARM_2
      000D43 74 04            [12] 3561 	mov	a,#0x04
      000D45 F0               [24] 3562 	movx	@dptr,a
      000D46 90 07 62         [24] 3563 	mov	dptr,#_pinMode_PARM_3
      000D49 03               [12] 3564 	rr	a
      000D4A F0               [24] 3565 	movx	@dptr,a
      000D4B 85 90 82         [24] 3566 	mov	dpl,_P1
      000D4E 12 13 38         [24] 3567 	lcall	_pinMode
                                   3568 ;	main.c:654: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
      000D51 90 07 61         [24] 3569 	mov	dptr,#_pinMode_PARM_2
      000D54 74 04            [12] 3570 	mov	a,#0x04
      000D56 F0               [24] 3571 	movx	@dptr,a
      000D57 90 07 62         [24] 3572 	mov	dptr,#_pinMode_PARM_3
      000D5A 74 01            [12] 3573 	mov	a,#0x01
      000D5C F0               [24] 3574 	movx	@dptr,a
      000D5D 85 90 82         [24] 3575 	mov	dpl,_P1
      000D60 12 13 38         [24] 3576 	lcall	_pinMode
                                   3577 ;	main.c:655: pinMode(PORT_IN(WHEEL_SEL_PORT), WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000D63 90 07 61         [24] 3578 	mov	dptr,#_pinMode_PARM_2
      000D66 74 04            [12] 3579 	mov	a,#0x04
      000D68 F0               [24] 3580 	movx	@dptr,a
      000D69 90 07 62         [24] 3581 	mov	dptr,#_pinMode_PARM_3
      000D6C 74 01            [12] 3582 	mov	a,#0x01
      000D6E F0               [24] 3583 	movx	@dptr,a
      000D6F 85 B0 82         [24] 3584 	mov	dpl,_P3
      000D72 12 13 38         [24] 3585 	lcall	_pinMode
                                   3586 ;	main.c:656: pinMode(PORT_IN(IRQX_SEL_PORT), IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
      000D75 90 07 61         [24] 3587 	mov	dptr,#_pinMode_PARM_2
      000D78 74 05            [12] 3588 	mov	a,#0x05
      000D7A F0               [24] 3589 	movx	@dptr,a
      000D7B 90 07 62         [24] 3590 	mov	dptr,#_pinMode_PARM_3
      000D7E 74 01            [12] 3591 	mov	a,#0x01
      000D80 F0               [24] 3592 	movx	@dptr,a
      000D81 85 A0 82         [24] 3593 	mov	dpl,_P2
      000D84 12 13 38         [24] 3594 	lcall	_pinMode
                                   3595 ;	main.c:657: pinMode(PORT_IN(RxIRQ_PORT), RxIRQ_PIN, PIN_MODE_INPUT);
      000D87 90 07 61         [24] 3596 	mov	dptr,#_pinMode_PARM_2
      000D8A 74 06            [12] 3597 	mov	a,#0x06
      000D8C F0               [24] 3598 	movx	@dptr,a
      000D8D 90 07 62         [24] 3599 	mov	dptr,#_pinMode_PARM_3
      000D90 E4               [12] 3600 	clr	a
      000D91 F0               [24] 3601 	movx	@dptr,a
      000D92 85 90 82         [24] 3602 	mov	dpl,_P1
      000D95 12 13 38         [24] 3603 	lcall	_pinMode
                                   3604 ;	main.c:658: pinMode(PORT_IN(PRG_PORT), PRG_PIN, PIN_MODE_INPUT_PULLUP);
      000D98 90 07 61         [24] 3605 	mov	dptr,#_pinMode_PARM_2
      000D9B 74 06            [12] 3606 	mov	a,#0x06
      000D9D F0               [24] 3607 	movx	@dptr,a
      000D9E 90 07 62         [24] 3608 	mov	dptr,#_pinMode_PARM_3
      000DA1 74 01            [12] 3609 	mov	a,#0x01
      000DA3 F0               [24] 3610 	movx	@dptr,a
      000DA4 85 C1 82         [24] 3611 	mov	dpl,_P4_IN
      000DA7 12 13 38         [24] 3612 	lcall	_pinMode
                                   3613 ;	main.c:661: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
      000DAA E5 C1            [12] 3614 	mov	a,_P4_IN
      000DAC 20 E6 0B         [24] 3615 	jb	acc.6,00114$
                                   3616 ;	main.c:662: runBootloader();
      000DAF 85 08 82         [24] 3617 	mov	dpl,_runBootloader
      000DB2 85 09 83         [24] 3618 	mov	dph,(_runBootloader + 1)
      000DB5 12 00 41         [24] 3619 	lcall	__sdcc_call_dptr
      000DB8 80 12            [24] 3620 	sjmp	00115$
      000DBA                       3621 00114$:
                                   3622 ;	main.c:664: pinMode(PORT_OUT(LED_PORT), LED_PIN, PIN_MODE_OUTPUT);
      000DBA 90 07 61         [24] 3623 	mov	dptr,#_pinMode_PARM_2
      000DBD 74 06            [12] 3624 	mov	a,#0x06
      000DBF F0               [24] 3625 	movx	@dptr,a
      000DC0 90 07 62         [24] 3626 	mov	dptr,#_pinMode_PARM_3
      000DC3 74 02            [12] 3627 	mov	a,#0x02
      000DC5 F0               [24] 3628 	movx	@dptr,a
      000DC6 85 C0 82         [24] 3629 	mov	dpl,_P4_OUT
      000DC9 12 13 38         [24] 3630 	lcall	_pinMode
      000DCC                       3631 00115$:
                                   3632 ;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
      000DCC E5 A0            [12] 3633 	mov	a,_P2
      000DCE 30 E6 06         [24] 3634 	jnb	acc.6,00206$
      000DD1 7E 01            [12] 3635 	mov	r6,#0x01
      000DD3 7F 00            [12] 3636 	mov	r7,#0x00
      000DD5 80 04            [24] 3637 	sjmp	00207$
      000DD7                       3638 00206$:
      000DD7 7E 00            [12] 3639 	mov	r6,#0x00
      000DD9 7F 00            [12] 3640 	mov	r7,#0x00
      000DDB                       3641 00207$:
      000DDB E5 A0            [12] 3642 	mov	a,_P2
      000DDD 30 E7 06         [24] 3643 	jnb	acc.7,00208$
      000DE0 7C 02            [12] 3644 	mov	r4,#0x02
      000DE2 7D 00            [12] 3645 	mov	r5,#0x00
      000DE4 80 04            [24] 3646 	sjmp	00209$
      000DE6                       3647 00208$:
      000DE6 7C 00            [12] 3648 	mov	r4,#0x00
      000DE8 7D 00            [12] 3649 	mov	r5,#0x00
      000DEA                       3650 00209$:
      000DEA EC               [12] 3651 	mov	a,r4
      000DEB 42 06            [12] 3652 	orl	ar6,a
                                   3653 ;	main.c:550: switch (res) {
      000DED EE               [12] 3654 	mov	a,r6
      000DEE FF               [12] 3655 	mov	r7,a
      000DEF 24 FC            [12] 3656 	add	a,#0xff - 0x03
      000DF1 40 2F            [24] 3657 	jc	00120$
      000DF3 EF               [12] 3658 	mov	a,r7
      000DF4 2F               [12] 3659 	add	a,r7
      000DF5 2F               [12] 3660 	add	a,r7
      000DF6 90 0D FA         [24] 3661 	mov	dptr,#00374$
      000DF9 73               [24] 3662 	jmp	@a+dptr
      000DFA                       3663 00374$:
      000DFA 02 0E 1A         [24] 3664 	ljmp	00119$
      000DFD 02 0E 12         [24] 3665 	ljmp	00118$
      000E00 02 0E 0A         [24] 3666 	ljmp	00117$
                                   3667 ;	main.c:551: case 3: 
                                   3668 ;	main.c:552: res = SELECT_COM1;
      000E03 90 07 4B         [24] 3669 	mov	dptr,#_main_res_458752_241
      000E06 E4               [12] 3670 	clr	a
      000E07 F0               [24] 3671 	movx	@dptr,a
                                   3672 ;	main.c:553: break;
                                   3673 ;	main.c:554: case 2:
      000E08 80 1D            [24] 3674 	sjmp	00121$
      000E0A                       3675 00117$:
                                   3676 ;	main.c:555: res = SELECT_COM2;
      000E0A 90 07 4B         [24] 3677 	mov	dptr,#_main_res_458752_241
      000E0D 74 01            [12] 3678 	mov	a,#0x01
      000E0F F0               [24] 3679 	movx	@dptr,a
                                   3680 ;	main.c:556: break;
                                   3681 ;	main.c:557: case 1:
      000E10 80 15            [24] 3682 	sjmp	00121$
      000E12                       3683 00118$:
                                   3684 ;	main.c:558: res = SELECT_COM3;
      000E12 90 07 4B         [24] 3685 	mov	dptr,#_main_res_458752_241
      000E15 74 02            [12] 3686 	mov	a,#0x02
      000E17 F0               [24] 3687 	movx	@dptr,a
                                   3688 ;	main.c:559: break;
                                   3689 ;	main.c:560: case 0:
      000E18 80 0D            [24] 3690 	sjmp	00121$
      000E1A                       3691 00119$:
                                   3692 ;	main.c:561: res = SELECT_COM4;
      000E1A 90 07 4B         [24] 3693 	mov	dptr,#_main_res_458752_241
      000E1D 74 03            [12] 3694 	mov	a,#0x03
      000E1F F0               [24] 3695 	movx	@dptr,a
                                   3696 ;	main.c:562: break;
                                   3697 ;	main.c:563: default:
      000E20 80 05            [24] 3698 	sjmp	00121$
      000E22                       3699 00120$:
                                   3700 ;	main.c:564: res = SELECT_COM1;
      000E22 90 07 4B         [24] 3701 	mov	dptr,#_main_res_458752_241
      000E25 E4               [12] 3702 	clr	a
      000E26 F0               [24] 3703 	movx	@dptr,a
                                   3704 ;	main.c:565: }
      000E27                       3705 00121$:
                                   3706 ;	main.c:566: return res;
      000E27 90 07 4B         [24] 3707 	mov	dptr,#_main_res_458752_241
      000E2A E0               [24] 3708 	movx	a,@dptr
                                   3709 ;	main.c:668: opt_com_settings = readCOMsettings();
      000E2B FF               [12] 3710 	mov	r7,a
      000E2C 90 06 00         [24] 3711 	mov	dptr,#_opt_com_settings
      000E2F F0               [24] 3712 	movx	@dptr,a
                                   3713 ;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
      000E30 E5 B0            [12] 3714 	mov	a,_P3
      000E32 C4               [12] 3715 	swap	a
      000E33 54 01            [12] 3716 	anl	a,#0x01
      000E35 90 07 4A         [24] 3717 	mov	dptr,#_main___1310720022_262144_236
      000E38 B4 01 00         [24] 3718 	cjne	a,#0x01,00375$
      000E3B                       3719 00375$:
      000E3B E4               [12] 3720 	clr	a
      000E3C 33               [12] 3721 	rlc	a
      000E3D F0               [24] 3722 	movx	@dptr,a
                                   3723 ;	main.c:669: opt_wheel_enabled = readWheelsettings();
      000E3E 90 07 4A         [24] 3724 	mov	dptr,#_main___1310720022_262144_236
      000E41 E0               [24] 3725 	movx	a,@dptr
      000E42 90 06 01         [24] 3726 	mov	dptr,#_opt_wheel_enabled
      000E45 F0               [24] 3727 	movx	@dptr,a
                                   3728 ;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
      000E46 E5 90            [12] 3729 	mov	a,_P1
      000E48 30 E2 06         [24] 3730 	jnb	acc.2,00210$
      000E4B 7D 01            [12] 3731 	mov	r5,#0x01
      000E4D 7E 00            [12] 3732 	mov	r6,#0x00
      000E4F 80 04            [24] 3733 	sjmp	00211$
      000E51                       3734 00210$:
      000E51 7D 00            [12] 3735 	mov	r5,#0x00
      000E53 7E 00            [12] 3736 	mov	r6,#0x00
      000E55                       3737 00211$:
      000E55 E5 90            [12] 3738 	mov	a,_P1
      000E57 30 E4 06         [24] 3739 	jnb	acc.4,00212$
      000E5A 7B 02            [12] 3740 	mov	r3,#0x02
      000E5C 7C 00            [12] 3741 	mov	r4,#0x00
      000E5E 80 04            [24] 3742 	sjmp	00213$
      000E60                       3743 00212$:
      000E60 7B 00            [12] 3744 	mov	r3,#0x00
      000E62 7C 00            [12] 3745 	mov	r4,#0x00
      000E64                       3746 00213$:
      000E64 EB               [12] 3747 	mov	a,r3
      000E65 42 05            [12] 3748 	orl	ar5,a
                                   3749 ;	main.c:577: switch (res) {
      000E67 ED               [12] 3750 	mov	a,r5
      000E68 FE               [12] 3751 	mov	r6,a
      000E69 24 FC            [12] 3752 	add	a,#0xff - 0x03
      000E6B 40 30            [24] 3753 	jc	00128$
      000E6D EE               [12] 3754 	mov	a,r6
      000E6E 2E               [12] 3755 	add	a,r6
      000E6F 2E               [12] 3756 	add	a,r6
      000E70 90 0E 74         [24] 3757 	mov	dptr,#00379$
      000E73 73               [24] 3758 	jmp	@a+dptr
      000E74                       3759 00379$:
      000E74 02 0E 95         [24] 3760 	ljmp	00127$
      000E77 02 0E 8D         [24] 3761 	ljmp	00126$
      000E7A 02 0E 85         [24] 3762 	ljmp	00125$
                                   3763 ;	main.c:578: case 3:
                                   3764 ;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
      000E7D 90 07 4C         [24] 3765 	mov	dptr,#_main_res_458752_248
      000E80 74 64            [12] 3766 	mov	a,#0x64
      000E82 F0               [24] 3767 	movx	@dptr,a
                                   3768 ;	main.c:580: break;
                                   3769 ;	main.c:581: case 2:
      000E83 80 1E            [24] 3770 	sjmp	00129$
      000E85                       3771 00125$:
                                   3772 ;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
      000E85 90 07 4C         [24] 3773 	mov	dptr,#_main_res_458752_248
      000E88 74 50            [12] 3774 	mov	a,#0x50
      000E8A F0               [24] 3775 	movx	@dptr,a
                                   3776 ;	main.c:583: break;
                                   3777 ;	main.c:584: case 1:
      000E8B 80 16            [24] 3778 	sjmp	00129$
      000E8D                       3779 00126$:
                                   3780 ;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
      000E8D 90 07 4C         [24] 3781 	mov	dptr,#_main_res_458752_248
      000E90 74 28            [12] 3782 	mov	a,#0x28
      000E92 F0               [24] 3783 	movx	@dptr,a
                                   3784 ;	main.c:586: break;
                                   3785 ;	main.c:587: case 0:
      000E93 80 0E            [24] 3786 	sjmp	00129$
      000E95                       3787 00127$:
                                   3788 ;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
      000E95 90 07 4C         [24] 3789 	mov	dptr,#_main_res_458752_248
      000E98 74 14            [12] 3790 	mov	a,#0x14
      000E9A F0               [24] 3791 	movx	@dptr,a
                                   3792 ;	main.c:589: break;
                                   3793 ;	main.c:590: default:
      000E9B 80 06            [24] 3794 	sjmp	00129$
      000E9D                       3795 00128$:
                                   3796 ;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
      000E9D 90 07 4C         [24] 3797 	mov	dptr,#_main_res_458752_248
      000EA0 74 64            [12] 3798 	mov	a,#0x64
      000EA2 F0               [24] 3799 	movx	@dptr,a
                                   3800 ;	main.c:592: }
      000EA3                       3801 00129$:
                                   3802 ;	main.c:593: return res;
      000EA3 90 07 4C         [24] 3803 	mov	dptr,#_main_res_458752_248
      000EA6 E0               [24] 3804 	movx	a,@dptr
                                   3805 ;	main.c:670: opt_rate_settings = readRatesettings();
      000EA7 FE               [12] 3806 	mov	r6,a
      000EA8 90 06 02         [24] 3807 	mov	dptr,#_opt_rate_settings
      000EAB F0               [24] 3808 	movx	@dptr,a
                                   3809 ;	main.c:672: timer0_limit = (uint8_t)((2000U + opt_rate_settings) / (2U * opt_rate_settings));
      000EAC 8E 04            [24] 3810 	mov	ar4,r6
      000EAE 7D 00            [12] 3811 	mov	r5,#0x00
      000EB0 74 D0            [12] 3812 	mov	a,#0xd0
      000EB2 2C               [12] 3813 	add	a,r4
      000EB3 FC               [12] 3814 	mov	r4,a
      000EB4 74 07            [12] 3815 	mov	a,#0x07
      000EB6 3D               [12] 3816 	addc	a,r5
      000EB7 FD               [12] 3817 	mov	r5,a
      000EB8 7B 00            [12] 3818 	mov	r3,#0x00
      000EBA EE               [12] 3819 	mov	a,r6
      000EBB 2E               [12] 3820 	add	a,r6
      000EBC FE               [12] 3821 	mov	r6,a
      000EBD EB               [12] 3822 	mov	a,r3
      000EBE 33               [12] 3823 	rlc	a
      000EBF FB               [12] 3824 	mov	r3,a
      000EC0 90 0C 91         [24] 3825 	mov	dptr,#__divuint_PARM_2
      000EC3 EE               [12] 3826 	mov	a,r6
      000EC4 F0               [24] 3827 	movx	@dptr,a
      000EC5 EB               [12] 3828 	mov	a,r3
      000EC6 A3               [24] 3829 	inc	dptr
      000EC7 F0               [24] 3830 	movx	@dptr,a
      000EC8 8C 82            [24] 3831 	mov	dpl,r4
      000ECA 8D 83            [24] 3832 	mov	dph,r5
      000ECC C0 07            [24] 3833 	push	ar7
      000ECE 12 40 0E         [24] 3834 	lcall	__divuint
      000ED1 AD 82            [24] 3835 	mov	r5,dpl
      000ED3 D0 07            [24] 3836 	pop	ar7
      000ED5 90 07 1F         [24] 3837 	mov	dptr,#_timer0_limit
      000ED8 ED               [12] 3838 	mov	a,r5
      000ED9 F0               [24] 3839 	movx	@dptr,a
                                   3840 ;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
      000EDA E5 A0            [12] 3841 	mov	a,_P2
      000EDC 20 E5 08         [24] 3842 	jb	acc.5,00132$
                                   3843 ;	main.c:598: return USE_IRQX;
      000EDF 90 07 49         [24] 3844 	mov	dptr,#_main___1310720026_262144_236
      000EE2 74 01            [12] 3845 	mov	a,#0x01
      000EE4 F0               [24] 3846 	movx	@dptr,a
      000EE5 80 13            [24] 3847 	sjmp	00136$
      000EE7                       3848 00132$:
                                   3849 ;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
      000EE7 EF               [12] 3850 	mov	a,r7
      000EE8 60 03            [24] 3851 	jz	00134$
      000EEA BF 02 08         [24] 3852 	cjne	r7,#0x02,00135$
      000EED                       3853 00134$:
                                   3854 ;	main.c:601: return USE_IRQ4;
      000EED 90 07 49         [24] 3855 	mov	dptr,#_main___1310720026_262144_236
      000EF0 74 02            [12] 3856 	mov	a,#0x02
      000EF2 F0               [24] 3857 	movx	@dptr,a
      000EF3 80 05            [24] 3858 	sjmp	00136$
      000EF5                       3859 00135$:
                                   3860 ;	main.c:603: return USE_IRQ3;
      000EF5 90 07 49         [24] 3861 	mov	dptr,#_main___1310720026_262144_236
      000EF8 E4               [12] 3862 	clr	a
      000EF9 F0               [24] 3863 	movx	@dptr,a
                                   3864 ;	main.c:674: opt_irq_settings = checkIRQ(opt_com_settings);
      000EFA                       3865 00136$:
      000EFA 90 07 49         [24] 3866 	mov	dptr,#_main___1310720026_262144_236
      000EFD E0               [24] 3867 	movx	a,@dptr
      000EFE 90 06 03         [24] 3868 	mov	dptr,#_opt_irq_settings
      000F01 F0               [24] 3869 	movx	@dptr,a
                                   3870 ;	main.c:681: TH0 = (uint8_t)(TIMER0_CONST >> 8);
      000F02 75 8C F0         [24] 3871 	mov	_TH0,#0xf0
                                   3872 ;	main.c:682: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
      000F05 75 8A 60         [24] 3873 	mov	_TL0,#0x60
                                   3874 ;	main.c:683: TF0 = 0;
                                   3875 ;	assignBit
      000F08 C2 8D            [12] 3876 	clr	_TF0
                                   3877 ;	main.c:684: TR0 = 1;
                                   3878 ;	assignBit
      000F0A D2 8C            [12] 3879 	setb	_TR0
                                   3880 ;	main.c:688: TR2 = 0;         // останов таймера
                                   3881 ;	assignBit
      000F0C C2 CA            [12] 3882 	clr	_TR2
                                   3883 ;	main.c:689: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
      000F0E 75 C9 00         [24] 3884 	mov	_T2MOD,#0x00
                                   3885 ;	main.c:690: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
      000F11 75 CB FF         [24] 3886 	mov	_RCAP2H,#0xff
                                   3887 ;	main.c:691: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
      000F14 75 CA 9C         [24] 3888 	mov	_RCAP2L,#0x9c
                                   3889 ;	main.c:692: TH2 = RCAP2H;
      000F17 85 CB CD         [24] 3890 	mov	_TH2,_RCAP2H
                                   3891 ;	main.c:693: TL2 = RCAP2L;
      000F1A 85 CA CC         [24] 3892 	mov	_TL2,_RCAP2L
                                   3893 ;	main.c:694: TF2 = 0;
                                   3894 ;	assignBit
      000F1D C2 CF            [12] 3895 	clr	_TF2
                                   3896 ;	main.c:698: T3_SETUP = 0;           // Режим таймера (не захвата)
                                   3897 ;	main.c:699: T3_COUNT = 0;           // Сброс счетчика
      000F1F E4               [12] 3898 	clr	a
      000F20 F5 A3            [12] 3899 	mov	_T3_SETUP,a
      000F22 F5 A4            [12] 3900 	mov	((_T3_COUNT >> 0) & 0xFF),a
      000F24 F5 A5            [12] 3901 	mov	((_T3_COUNT >> 8) & 0xFF),a
                                   3902 ;	main.c:700: T3_END = TIMER1_CONST;  // Установка периода
      000F26 75 A6 10         [24] 3903 	mov	((_T3_END >> 0) & 0xFF),#0x10
      000F29 75 A7 27         [24] 3904 	mov	((_T3_END >> 8) & 0xFF),#0x27
                                   3905 ;	main.c:701: T3_CTRL = 0;            // Изначально остановлен, сброс флагов
                                   3906 ;	1-genFromRTrack replaced	mov	_T3_CTRL,#0x00
      000F2C F5 AA            [12] 3907 	mov	_T3_CTRL,a
                                   3908 ;	main.c:705: IT0 = 1; // Активен по спаду сигнала
                                   3909 ;	assignBit
      000F2E D2 88            [12] 3910 	setb	_IT0
                                   3911 ;	main.c:706: IE0 = 0; // Сброс флага прерывания INT0
                                   3912 ;	assignBit
      000F30 C2 89            [12] 3913 	clr	_IE0
                                   3914 ;	main.c:710: ET0 = 1; // разрешить прерывания таймера 0
                                   3915 ;	assignBit
      000F32 D2 A9            [12] 3916 	setb	_ET0
                                   3917 ;	main.c:711: ET2 = 1; // разрешить прерывания таймера 2
                                   3918 ;	assignBit
      000F34 D2 AD            [12] 3919 	setb	_ET2
                                   3920 ;	main.c:712: IE_TMR3 = 1; // разрешить прерывания таймера 3
                                   3921 ;	assignBit
      000F36 D2 E9            [12] 3922 	setb	_IE_TMR3
                                   3923 ;	main.c:713: EX0 = 1; // разрешить прерывания INT0
                                   3924 ;	assignBit
      000F38 D2 A8            [12] 3925 	setb	_EX0
                                   3926 ;	main.c:715: SAFE_MOD = 0x55;
      000F3A 75 A1 55         [24] 3927 	mov	_SAFE_MOD,#0x55
                                   3928 ;	main.c:716: SAFE_MOD = 0xAA;
      000F3D 75 A1 AA         [24] 3929 	mov	_SAFE_MOD,#0xaa
                                   3930 ;	main.c:718: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
      000F40 75 EB C3         [24] 3931 	mov	_WAKE_CTRL,#0xc3
                                   3932 ;	main.c:721: bSLP_OFF_SPI0 | bSLP_OFF_TMR3 | bSLP_OFF_XRAM;
      000F43 75 EA 7D         [24] 3933 	mov	_SLEEP_CTRL,#0x7d
                                   3934 ;	main.c:724: GLOBAL_CFG |= bWDOG_EN;
      000F46 43 B1 01         [24] 3935 	orl	_GLOBAL_CFG,#0x01
                                   3936 ;	main.c:726: SAFE_MOD = 0xFF;
      000F49 75 A1 FF         [24] 3937 	mov	_SAFE_MOD,#0xff
                                   3938 ;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
      000F4C 74 30            [12] 3939 	mov	a,#0x30
      000F4E 55 87            [12] 3940 	anl	a,_PCON
      000F50 C4               [12] 3941 	swap	a
      000F51 54 0F            [12] 3942 	anl	a,#0x0f
                                   3943 ;	main.c:728: switch (get_reset_source()) {
      000F53 FF               [12] 3944 	mov	r7,a
      000F54 FE               [12] 3945 	mov	r6,a
      000F55 24 FC            [12] 3946 	add	a,#0xff - 0x03
      000F57 40 2D            [24] 3947 	jc	00142$
      000F59 EE               [12] 3948 	mov	a,r6
      000F5A 2E               [12] 3949 	add	a,r6
                                   3950 ;	main.c:729: case 0b10: // 10 - Переполнение watchdog
      000F5B 90 0F 5F         [24] 3951 	mov	dptr,#00385$
      000F5E 73               [24] 3952 	jmp	@a+dptr
      000F5F                       3953 00385$:
      000F5F 80 17            [24] 3954 	sjmp	00140$
      000F61 80 15            [24] 3955 	sjmp	00140$
      000F63 80 02            [24] 3956 	sjmp	00138$
      000F65 80 08            [24] 3957 	sjmp	00139$
      000F67                       3958 00138$:
                                   3959 ;	main.c:730: device_init = true;
      000F67 90 07 1C         [24] 3960 	mov	dptr,#_device_init
      000F6A 74 01            [12] 3961 	mov	a,#0x01
      000F6C F0               [24] 3962 	movx	@dptr,a
                                   3963 ;	main.c:731: break;
                                   3964 ;	main.c:732: case 0b11: // 11 - Аппаратный сброс
      000F6D 80 17            [24] 3965 	sjmp	00142$
      000F6F                       3966 00139$:
                                   3967 ;	main.c:733: led_on(); // Сигнализируем исправность светодиода
      000F6F 53 C0 BF         [24] 3968 	anl	_P4_OUT,#0xbf
                                   3969 ;	main.c:734: delay(50);
      000F72 90 00 32         [24] 3970 	mov	dptr,#0x0032
      000F75 12 17 A9         [24] 3971 	lcall	_delay
                                   3972 ;	main.c:737: case 0b01: // 01 - Сброс при включении питания
      000F78                       3973 00140$:
                                   3974 ;	main.c:738: delay(50); // Ждём окончания переходных процессов
      000F78 90 00 32         [24] 3975 	mov	dptr,#0x0032
      000F7B 12 17 A9         [24] 3976 	lcall	_delay
                                   3977 ;	main.c:739: led_off();
      000F7E 43 C0 40         [24] 3978 	orl	_P4_OUT,#0x40
                                   3979 ;	main.c:740: device_init = false;
      000F81 90 07 1C         [24] 3980 	mov	dptr,#_device_init
      000F84 E4               [12] 3981 	clr	a
      000F85 F0               [24] 3982 	movx	@dptr,a
                                   3983 ;	main.c:742: }
      000F86                       3984 00142$:
                                   3985 ;	main.c:745: EA = 1;
                                   3986 ;	assignBit
      000F86 D2 AF            [12] 3987 	setb	_EA
                                   3988 ;	main.c:388: CRITICAL_SECTION (
      000F88 A2 AF            [12] 3989 	mov	c,_EA
      000F8A E4               [12] 3990 	clr	a
      000F8B 33               [12] 3991 	rlc	a
      000F8C FF               [12] 3992 	mov	r7,a
                                   3993 ;	assignBit
      000F8D C2 AF            [12] 3994 	clr	_EA
      000F8F 90 07 17         [24] 3995 	mov	dptr,#_spi_tx_buf_w
      000F92 E4               [12] 3996 	clr	a
      000F93 F0               [24] 3997 	movx	@dptr,a
      000F94 90 07 18         [24] 3998 	mov	dptr,#_spi_tx_buf_r
      000F97 F0               [24] 3999 	movx	@dptr,a
      000F98 90 07 19         [24] 4000 	mov	dptr,#_spi_tx_buf_count
      000F9B F0               [24] 4001 	movx	@dptr,a
      000F9C 90 07 1C         [24] 4002 	mov	dptr,#_device_init
      000F9F E0               [24] 4003 	movx	a,@dptr
      000FA0 70 35            [24] 4004 	jnz	00145$
      000FA2 43 90 20         [24] 4005 	orl	_P1,#0x20
      000FA5 90 00 01         [24] 4006 	mov	dptr,#0x0001
      000FA8 C0 07            [24] 4007 	push	ar7
      000FAA 12 17 54         [24] 4008 	lcall	_delayUs
      000FAD D0 07            [24] 4009 	pop	ar7
      000FAF 53 90 DF         [24] 4010 	anl	_P1,#0xdf
      000FB2 90 06 03         [24] 4011 	mov	dptr,#_opt_irq_settings
      000FB5 E0               [24] 4012 	movx	a,@dptr
      000FB6 FE               [12] 4013 	mov	r6,a
      000FB7 90 06 00         [24] 4014 	mov	dptr,#_opt_com_settings
      000FBA E0               [24] 4015 	movx	a,@dptr
                                   4016 ;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
      000FBB 54 03            [12] 4017 	anl	a,#0x03
      000FBD FD               [12] 4018 	mov	r5,a
                                   4019 ;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
      000FBE BE 01 06         [24] 4020 	cjne	r6,#0x01,00214$
      000FC1 7C 04            [12] 4021 	mov	r4,#0x04
      000FC3 7E 00            [12] 4022 	mov	r6,#0x00
      000FC5 80 04            [24] 4023 	sjmp	00215$
      000FC7                       4024 00214$:
      000FC7 7C 00            [12] 4025 	mov	r4,#0x00
      000FC9 7E 00            [12] 4026 	mov	r6,#0x00
      000FCB                       4027 00215$:
      000FCB EC               [12] 4028 	mov	a,r4
      000FCC 42 05            [12] 4029 	orl	ar5,a
                                   4030 ;	main.c:433: spi_send(config_data);
      000FCE 8D 82            [24] 4031 	mov	dpl,r5
      000FD0 C0 07            [24] 4032 	push	ar7
      000FD2 12 03 B6         [24] 4033 	lcall	_spi_send
      000FD5 D0 07            [24] 4034 	pop	ar7
                                   4035 ;	main.c:388: CRITICAL_SECTION (
      000FD7                       4036 00145$:
      000FD7 90 00 01         [24] 4037 	mov	dptr,#0x0001
      000FDA C0 07            [24] 4038 	push	ar7
      000FDC 12 17 54         [24] 4039 	lcall	_delayUs
      000FDF D0 07            [24] 4040 	pop	ar7
      000FE1 53 90 F7         [24] 4041 	anl	_P1,#0xf7
                                   4042 ;	assignBit
      000FE4 EF               [12] 4043 	mov	a,r7
      000FE5 24 FF            [12] 4044 	add	a,#0xff
      000FE7 92 AF            [24] 4045 	mov	_EA,c
                                   4046 ;	main.c:407: while (!device_init) {
      000FE9                       4047 00149$:
      000FE9 90 07 1C         [24] 4048 	mov	dptr,#_device_init
      000FEC E0               [24] 4049 	movx	a,@dptr
      000FED 60 FA            [24] 4050 	jz	00149$
                                   4051 ;	main.c:750: initUART0(115200);
      000FEF 90 C2 00         [24] 4052 	mov	dptr,#0xc200
      000FF2 75 F0 01         [24] 4053 	mov	b,#0x01
      000FF5 E4               [12] 4054 	clr	a
      000FF6 12 3D 23         [24] 4055 	lcall	_initUART0
                                   4056 ;	main.c:751: DEBUG_OUT("Startup\n");
      000FF9 74 64            [12] 4057 	mov	a,#___str_0
      000FFB C0 E0            [24] 4058 	push	acc
      000FFD 74 4C            [12] 4059 	mov	a,#(___str_0 >> 8)
      000FFF C0 E0            [24] 4060 	push	acc
      001001 74 80            [12] 4061 	mov	a,#0x80
      001003 C0 E0            [24] 4062 	push	acc
      001005 12 41 F8         [24] 4063 	lcall	_printf
      001008 15 81            [12] 4064 	dec	sp
      00100A 15 81            [12] 4065 	dec	sp
      00100C 15 81            [12] 4066 	dec	sp
                                   4067 ;	main.c:614: resetHubDevices(0);
      00100E 75 82 00         [24] 4068 	mov	dpl,#0x00
      001011 12 23 75         [24] 4069 	lcall	_resetHubDevices
                                   4070 ;	main.c:615: resetHubDevices(1);
      001014 75 82 01         [24] 4071 	mov	dpl,#0x01
      001017 12 23 75         [24] 4072 	lcall	_resetHubDevices
                                   4073 ;	main.c:616: initUSB_Host();
      00101A 12 18 1A         [24] 4074 	lcall	_initUSB_Host
                                   4075 ;	main.c:344: m_wheel = opt_wheel_enabled;
      00101D 90 06 01         [24] 4076 	mov	dptr,#_opt_wheel_enabled
      001020 E0               [24] 4077 	movx	a,@dptr
      001021 90 06 04         [24] 4078 	mov	dptr,#_m_wheel
      001024 F0               [24] 4079 	movx	@dptr,a
                                   4080 ;	main.c:757: mouse_enabled = get_mouse_power_state();
      001025 90 07 1B         [24] 4081 	mov	dptr,#_mouse_enabled
      001028 74 04            [12] 4082 	mov	a,#0x04
      00102A 55 B0            [12] 4083 	anl	a,_P3
      00102C F0               [24] 4084 	movx	@dptr,a
                                   4085 ;	main.c:758: mouse_start = true;
      00102D 90 07 1A         [24] 4086 	mov	dptr,#_mouse_start
      001030 74 01            [12] 4087 	mov	a,#0x01
      001032 F0               [24] 4088 	movx	@dptr,a
                                   4089 ;	main.c:759: fatal_error = false;
      001033 90 07 1E         [24] 4090 	mov	dptr,#_fatal_error
      001036 E4               [12] 4091 	clr	a
      001037 F0               [24] 4092 	movx	@dptr,a
                                   4093 ;	main.c:765: DEBUG_OUT("Ready\n");
      001038 74 6D            [12] 4094 	mov	a,#___str_1
      00103A C0 E0            [24] 4095 	push	acc
      00103C 74 4C            [12] 4096 	mov	a,#(___str_1 >> 8)
      00103E C0 E0            [24] 4097 	push	acc
      001040 74 80            [12] 4098 	mov	a,#0x80
      001042 C0 E0            [24] 4099 	push	acc
      001044 12 41 F8         [24] 4100 	lcall	_printf
      001047 15 81            [12] 4101 	dec	sp
      001049 15 81            [12] 4102 	dec	sp
      00104B 15 81            [12] 4103 	dec	sp
      00104D                       4104 00202$:
                                   4105 ;	main.c:768: if (!fatal_error) {
      00104D 90 07 1E         [24] 4106 	mov	dptr,#_fatal_error
      001050 E0               [24] 4107 	movx	a,@dptr
                                   4108 ;	main.c:769: WDOG_COUNT = 0;
      001051 70 02            [24] 4109 	jnz	00102$
      001053 F5 FF            [12] 4110 	mov	_WDOG_COUNT,a
      001055                       4111 00102$:
                                   4112 ;	main.c:772: if (!mouse_enabled) { // Мышь выключена
      001055 90 07 1B         [24] 4113 	mov	dptr,#_mouse_enabled
      001058 E0               [24] 4114 	movx	a,@dptr
      001059 70 15            [24] 4115 	jnz	00106$
                                   4116 ;	main.c:774: mouse_enabled = get_mouse_power_state();
      00105B 90 07 1B         [24] 4117 	mov	dptr,#_mouse_enabled
      00105E 74 04            [12] 4118 	mov	a,#0x04
      001060 55 B0            [12] 4119 	anl	a,_P3
      001062 F0               [24] 4120 	movx	@dptr,a
                                   4121 ;	main.c:775: if (mouse_enabled) {
      001063 E0               [24] 4122 	movx	a,@dptr
      001064 60 0A            [24] 4123 	jz	00106$
                                   4124 ;	main.c:777: mouse_start = true;
      001066 90 07 1A         [24] 4125 	mov	dptr,#_mouse_start
      001069 74 01            [12] 4126 	mov	a,#0x01
      00106B F0               [24] 4127 	movx	@dptr,a
                                   4128 ;	main.c:778: allow_send_data = true;
      00106C 90 07 1D         [24] 4129 	mov	dptr,#_allow_send_data
      00106F F0               [24] 4130 	movx	@dptr,a
      001070                       4131 00106$:
                                   4132 ;	main.c:782: processUart();
      001070 12 3D 9A         [24] 4133 	lcall	_processUart
                                   4134 ;	main.c:491: checkRootHubConnections();
      001073 12 3B 8F         [24] 4135 	lcall	_checkRootHubConnections
                                   4136 ;	main.c:494: pollHIDdevice();
      001076 12 24 1D         [24] 4137 	lcall	_pollHIDdevice
                                   4138 ;	main.c:497: while (mouse_rx_buf_count >= 4) {
      001079                       4139 00157$:
      001079 90 06 17         [24] 4140 	mov	dptr,#_mouse_rx_buf_count
      00107C E0               [24] 4141 	movx	a,@dptr
      00107D FF               [12] 4142 	mov	r7,a
      00107E BF 04 00         [24] 4143 	cjne	r7,#0x04,00393$
      001081                       4144 00393$:
      001081 50 03            [24] 4145 	jnc	00394$
      001083 02 11 05         [24] 4146 	ljmp	00159$
      001086                       4147 00394$:
                                   4148 ;	main.c:498: m_bt = mouse_read() & (m_wheel?7:3); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
      001086 12 03 17         [24] 4149 	lcall	_mouse_read
      001089 AF 82            [24] 4150 	mov	r7,dpl
      00108B 90 06 04         [24] 4151 	mov	dptr,#_m_wheel
      00108E E0               [24] 4152 	movx	a,@dptr
      00108F 60 06            [24] 4153 	jz	00216$
      001091 7D 07            [12] 4154 	mov	r5,#0x07
      001093 7E 00            [12] 4155 	mov	r6,#0x00
      001095 80 04            [24] 4156 	sjmp	00217$
      001097                       4157 00216$:
      001097 7D 03            [12] 4158 	mov	r5,#0x03
      001099 7E 00            [12] 4159 	mov	r6,#0x00
      00109B                       4160 00217$:
      00109B 90 07 51         [24] 4161 	mov	dptr,#_main_m_bt_393216_279
      00109E ED               [12] 4162 	mov	a,r5
      00109F 5F               [12] 4163 	anl	a,r7
      0010A0 F0               [24] 4164 	movx	@dptr,a
                                   4165 ;	main.c:499: m_cx += (int8_t)mouse_read(); // byte 1: ΔX (signed)
      0010A1 12 03 17         [24] 4166 	lcall	_mouse_read
      0010A4 E5 82            [12] 4167 	mov	a,dpl
      0010A6 FF               [12] 4168 	mov	r7,a
      0010A7 33               [12] 4169 	rlc	a
      0010A8 95 E0            [12] 4170 	subb	a,acc
      0010AA FE               [12] 4171 	mov	r6,a
      0010AB 90 07 52         [24] 4172 	mov	dptr,#_main_m_cx_393216_279
      0010AE E0               [24] 4173 	movx	a,@dptr
      0010AF FC               [12] 4174 	mov	r4,a
      0010B0 A3               [24] 4175 	inc	dptr
      0010B1 E0               [24] 4176 	movx	a,@dptr
      0010B2 FD               [12] 4177 	mov	r5,a
      0010B3 EF               [12] 4178 	mov	a,r7
      0010B4 2C               [12] 4179 	add	a,r4
      0010B5 FF               [12] 4180 	mov	r7,a
      0010B6 EE               [12] 4181 	mov	a,r6
      0010B7 3D               [12] 4182 	addc	a,r5
      0010B8 FE               [12] 4183 	mov	r6,a
      0010B9 90 07 52         [24] 4184 	mov	dptr,#_main_m_cx_393216_279
      0010BC EF               [12] 4185 	mov	a,r7
      0010BD F0               [24] 4186 	movx	@dptr,a
      0010BE EE               [12] 4187 	mov	a,r6
      0010BF A3               [24] 4188 	inc	dptr
      0010C0 F0               [24] 4189 	movx	@dptr,a
                                   4190 ;	main.c:500: m_cy -= (int8_t)mouse_read(); // byte 2: ΔY (signed)
      0010C1 12 03 17         [24] 4191 	lcall	_mouse_read
      0010C4 E5 82            [12] 4192 	mov	a,dpl
      0010C6 FF               [12] 4193 	mov	r7,a
      0010C7 33               [12] 4194 	rlc	a
      0010C8 95 E0            [12] 4195 	subb	a,acc
      0010CA FE               [12] 4196 	mov	r6,a
      0010CB 90 07 54         [24] 4197 	mov	dptr,#_main_m_cy_393216_279
      0010CE E0               [24] 4198 	movx	a,@dptr
      0010CF FC               [12] 4199 	mov	r4,a
      0010D0 A3               [24] 4200 	inc	dptr
      0010D1 E0               [24] 4201 	movx	a,@dptr
      0010D2 FD               [12] 4202 	mov	r5,a
      0010D3 EC               [12] 4203 	mov	a,r4
      0010D4 C3               [12] 4204 	clr	c
      0010D5 9F               [12] 4205 	subb	a,r7
      0010D6 FF               [12] 4206 	mov	r7,a
      0010D7 ED               [12] 4207 	mov	a,r5
      0010D8 9E               [12] 4208 	subb	a,r6
      0010D9 FE               [12] 4209 	mov	r6,a
      0010DA 90 07 54         [24] 4210 	mov	dptr,#_main_m_cy_393216_279
      0010DD EF               [12] 4211 	mov	a,r7
      0010DE F0               [24] 4212 	movx	@dptr,a
      0010DF EE               [12] 4213 	mov	a,r6
      0010E0 A3               [24] 4214 	inc	dptr
      0010E1 F0               [24] 4215 	movx	@dptr,a
                                   4216 ;	main.c:501: m_cz += (int8_t)mouse_read(); // byte 3: ΔWheel (signed)
      0010E2 12 03 17         [24] 4217 	lcall	_mouse_read
      0010E5 E5 82            [12] 4218 	mov	a,dpl
      0010E7 FF               [12] 4219 	mov	r7,a
      0010E8 33               [12] 4220 	rlc	a
      0010E9 95 E0            [12] 4221 	subb	a,acc
      0010EB FE               [12] 4222 	mov	r6,a
      0010EC 90 07 56         [24] 4223 	mov	dptr,#_main_m_cz_393216_279
      0010EF E0               [24] 4224 	movx	a,@dptr
      0010F0 FC               [12] 4225 	mov	r4,a
      0010F1 A3               [24] 4226 	inc	dptr
      0010F2 E0               [24] 4227 	movx	a,@dptr
      0010F3 FD               [12] 4228 	mov	r5,a
      0010F4 EF               [12] 4229 	mov	a,r7
      0010F5 2C               [12] 4230 	add	a,r4
      0010F6 FF               [12] 4231 	mov	r7,a
      0010F7 EE               [12] 4232 	mov	a,r6
      0010F8 3D               [12] 4233 	addc	a,r5
      0010F9 FE               [12] 4234 	mov	r6,a
      0010FA 90 07 56         [24] 4235 	mov	dptr,#_main_m_cz_393216_279
      0010FD EF               [12] 4236 	mov	a,r7
      0010FE F0               [24] 4237 	movx	@dptr,a
      0010FF EE               [12] 4238 	mov	a,r6
      001100 A3               [24] 4239 	inc	dptr
      001101 F0               [24] 4240 	movx	@dptr,a
      001102 02 10 79         [24] 4241 	ljmp	00157$
      001105                       4242 00159$:
                                   4243 ;	main.c:505: if (allow_send_data && mouse_enabled) {
      001105 90 07 1D         [24] 4244 	mov	dptr,#_allow_send_data
      001108 E0               [24] 4245 	movx	a,@dptr
      001109 70 03            [24] 4246 	jnz	00396$
      00110B 02 13 16         [24] 4247 	ljmp	00200$
      00110E                       4248 00396$:
      00110E 90 07 1B         [24] 4249 	mov	dptr,#_mouse_enabled
      001111 E0               [24] 4250 	movx	a,@dptr
      001112 70 03            [24] 4251 	jnz	00397$
      001114 02 13 16         [24] 4252 	ljmp	00200$
      001117                       4253 00397$:
                                   4254 ;	main.c:506: allow_send_data = false;
      001117 90 07 1D         [24] 4255 	mov	dptr,#_allow_send_data
      00111A E4               [12] 4256 	clr	a
      00111B F0               [24] 4257 	movx	@dptr,a
                                   4258 ;	main.c:507: dr_ctr = (dr_ctr + 1) & 0x03;
      00111C 90 07 50         [24] 4259 	mov	dptr,#_main_dr_ctr_393216_279
      00111F E0               [24] 4260 	movx	a,@dptr
      001120 FF               [12] 4261 	mov	r7,a
      001121 0F               [12] 4262 	inc	r7
      001122 74 03            [12] 4263 	mov	a,#0x03
      001124 5F               [12] 4264 	anl	a,r7
      001125 F0               [24] 4265 	movx	@dptr,a
                                   4266 ;	main.c:510: if (mouse_start) {
      001126 90 07 1A         [24] 4267 	mov	dptr,#_mouse_start
      001129 E0               [24] 4268 	movx	a,@dptr
      00112A 70 03            [24] 4269 	jnz	00398$
      00112C 02 11 BC         [24] 4270 	ljmp	00177$
      00112F                       4271 00398$:
                                   4272 ;	main.c:511: mouse_start = false;
      00112F 90 07 1A         [24] 4273 	mov	dptr,#_mouse_start
      001132 E4               [12] 4274 	clr	a
      001133 F0               [24] 4275 	movx	@dptr,a
                                   4276 ;	main.c:514: CRITICAL_SECTION (
      001134 A2 AF            [12] 4277 	mov	c,_EA
      001136 E4               [12] 4278 	clr	a
      001137 33               [12] 4279 	rlc	a
      001138 FF               [12] 4280 	mov	r7,a
                                   4281 ;	assignBit
      001139 C2 AF            [12] 4282 	clr	_EA
      00113B 90 07 52         [24] 4283 	mov	dptr,#_main_m_cx_393216_279
      00113E E4               [12] 4284 	clr	a
      00113F F0               [24] 4285 	movx	@dptr,a
      001140 A3               [24] 4286 	inc	dptr
      001141 F0               [24] 4287 	movx	@dptr,a
      001142 90 07 54         [24] 4288 	mov	dptr,#_main_m_cy_393216_279
      001145 F0               [24] 4289 	movx	@dptr,a
      001146 A3               [24] 4290 	inc	dptr
      001147 F0               [24] 4291 	movx	@dptr,a
      001148 90 07 56         [24] 4292 	mov	dptr,#_main_m_cz_393216_279
      00114B F0               [24] 4293 	movx	@dptr,a
      00114C A3               [24] 4294 	inc	dptr
      00114D F0               [24] 4295 	movx	@dptr,a
      00114E 90 07 51         [24] 4296 	mov	dptr,#_main_m_bt_393216_279
      001151 F0               [24] 4297 	movx	@dptr,a
      001152 90 07 17         [24] 4298 	mov	dptr,#_spi_tx_buf_w
      001155 E0               [24] 4299 	movx	a,@dptr
      001156 90 07 18         [24] 4300 	mov	dptr,#_spi_tx_buf_r
      001159 F0               [24] 4301 	movx	@dptr,a
      00115A 90 07 19         [24] 4302 	mov	dptr,#_spi_tx_buf_count
      00115D E4               [12] 4303 	clr	a
      00115E F0               [24] 4304 	movx	@dptr,a
                                   4305 ;	assignBit
      00115F C2 CA            [12] 4306 	clr	_TR2
      001161 43 90 08         [24] 4307 	orl	_P1,#0x08
      001164 53 90 F7         [24] 4308 	anl	_P1,#0xf7
                                   4309 ;	assignBit
      001167 EF               [12] 4310 	mov	a,r7
      001168 24 FF            [12] 4311 	add	a,#0xff
      00116A 92 AF            [24] 4312 	mov	_EA,c
                                   4313 ;	main.c:459: delay(20);
      00116C 90 00 14         [24] 4314 	mov	dptr,#0x0014
      00116F 12 17 A9         [24] 4315 	lcall	_delay
                                   4316 ;	main.c:462: if (!mouse_enabled) {
      001172 90 07 1B         [24] 4317 	mov	dptr,#_mouse_enabled
      001175 E0               [24] 4318 	movx	a,@dptr
      001176 60 44            [24] 4319 	jz	00177$
                                   4320 ;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
      001178 75 82 4D         [24] 4321 	mov	dpl,#0x4d
      00117B 12 03 B6         [24] 4322 	lcall	_spi_send
                                   4323 ;	main.c:468: if (m_wheel) {
      00117E 90 06 04         [24] 4324 	mov	dptr,#_m_wheel
      001181 E0               [24] 4325 	movx	a,@dptr
      001182 60 20            [24] 4326 	jz	00173$
                                   4327 ;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
      001184 75 82 5A         [24] 4328 	mov	dpl,#0x5a
      001187 12 03 B6         [24] 4329 	lcall	_spi_send
                                   4330 ;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
      00118A 75 82 40         [24] 4331 	mov	dpl,#0x40
      00118D 12 03 B6         [24] 4332 	lcall	_spi_send
                                   4333 ;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
      001190 75 82 00         [24] 4334 	mov	dpl,#0x00
      001193 12 03 B6         [24] 4335 	lcall	_spi_send
                                   4336 ;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
      001196 75 82 00         [24] 4337 	mov	dpl,#0x00
      001199 12 03 B6         [24] 4338 	lcall	_spi_send
                                   4339 ;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
      00119C 75 82 00         [24] 4340 	mov	dpl,#0x00
      00119F 12 03 B6         [24] 4341 	lcall	_spi_send
      0011A2 80 18            [24] 4342 	sjmp	00177$
      0011A4                       4343 00173$:
                                   4344 ;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
      0011A4 75 82 33         [24] 4345 	mov	dpl,#0x33
      0011A7 12 03 B6         [24] 4346 	lcall	_spi_send
                                   4347 ;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
      0011AA 75 82 40         [24] 4348 	mov	dpl,#0x40
      0011AD 12 03 B6         [24] 4349 	lcall	_spi_send
                                   4350 ;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
      0011B0 75 82 00         [24] 4351 	mov	dpl,#0x00
      0011B3 12 03 B6         [24] 4352 	lcall	_spi_send
                                   4353 ;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
      0011B6 75 82 00         [24] 4354 	mov	dpl,#0x00
      0011B9 12 03 B6         [24] 4355 	lcall	_spi_send
                                   4356 ;	main.c:524: send_mouse_id();
      0011BC                       4357 00177$:
                                   4358 ;	main.c:528: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
      0011BC 90 07 51         [24] 4359 	mov	dptr,#_main_m_bt_393216_279
      0011BF E0               [24] 4360 	movx	a,@dptr
      0011C0 FF               [12] 4361 	mov	r7,a
      0011C1 90 07 4F         [24] 4362 	mov	dptr,#_main_st_m_bt_393216_279
      0011C4 E0               [24] 4363 	movx	a,@dptr
      0011C5 FE               [12] 4364 	mov	r6,a
      0011C6 EF               [12] 4365 	mov	a,r7
      0011C7 B5 06 27         [24] 4366 	cjne	a,ar6,00196$
      0011CA 90 07 52         [24] 4367 	mov	dptr,#_main_m_cx_393216_279
      0011CD E0               [24] 4368 	movx	a,@dptr
      0011CE F5 F0            [12] 4369 	mov	b,a
      0011D0 A3               [24] 4370 	inc	dptr
      0011D1 E0               [24] 4371 	movx	a,@dptr
      0011D2 45 F0            [12] 4372 	orl	a,b
      0011D4 70 1B            [24] 4373 	jnz	00196$
      0011D6 90 07 54         [24] 4374 	mov	dptr,#_main_m_cy_393216_279
      0011D9 E0               [24] 4375 	movx	a,@dptr
      0011DA F5 F0            [12] 4376 	mov	b,a
      0011DC A3               [24] 4377 	inc	dptr
      0011DD E0               [24] 4378 	movx	a,@dptr
      0011DE 45 F0            [12] 4379 	orl	a,b
      0011E0 70 0F            [24] 4380 	jnz	00196$
      0011E2 90 07 56         [24] 4381 	mov	dptr,#_main_m_cz_393216_279
      0011E5 E0               [24] 4382 	movx	a,@dptr
      0011E6 F5 F0            [12] 4383 	mov	b,a
      0011E8 A3               [24] 4384 	inc	dptr
      0011E9 E0               [24] 4385 	movx	a,@dptr
      0011EA 45 F0            [12] 4386 	orl	a,b
      0011EC 70 03            [24] 4387 	jnz	00405$
      0011EE 02 13 16         [24] 4388 	ljmp	00200$
      0011F1                       4389 00405$:
      0011F1                       4390 00196$:
                                   4391 ;	main.c:529: int8_t cx = clamp(m_cx, -128, 127);
      0011F1 90 07 52         [24] 4392 	mov	dptr,#_main_m_cx_393216_279
      0011F4 E0               [24] 4393 	movx	a,@dptr
      0011F5 FE               [12] 4394 	mov	r6,a
      0011F6 A3               [24] 4395 	inc	dptr
      0011F7 E0               [24] 4396 	movx	a,@dptr
      0011F8 FF               [12] 4397 	mov	r7,a
      0011F9 C3               [12] 4398 	clr	c
      0011FA EE               [12] 4399 	mov	a,r6
      0011FB 94 80            [12] 4400 	subb	a,#0x80
      0011FD EF               [12] 4401 	mov	a,r7
      0011FE 64 80            [12] 4402 	xrl	a,#0x80
      001200 94 7F            [12] 4403 	subb	a,#0x7f
      001202 50 08            [24] 4404 	jnc	00182$
      001204 90 07 58         [24] 4405 	mov	dptr,#_main___2621440005_524288_292
      001207 74 80            [12] 4406 	mov	a,#0x80
      001209 F0               [24] 4407 	movx	@dptr,a
      00120A 80 1C            [24] 4408 	sjmp	00185$
      00120C                       4409 00182$:
      00120C C3               [12] 4410 	clr	c
      00120D 74 7F            [12] 4411 	mov	a,#0x7f
      00120F 9E               [12] 4412 	subb	a,r6
      001210 74 80            [12] 4413 	mov	a,#(0x00 ^ 0x80)
      001212 8F F0            [24] 4414 	mov	b,r7
      001214 63 F0 80         [24] 4415 	xrl	b,#0x80
      001217 95 F0            [12] 4416 	subb	a,b
      001219 50 08            [24] 4417 	jnc	00184$
      00121B 90 07 58         [24] 4418 	mov	dptr,#_main___2621440005_524288_292
      00121E 74 7F            [12] 4419 	mov	a,#0x7f
      001220 F0               [24] 4420 	movx	@dptr,a
      001221 80 05            [24] 4421 	sjmp	00185$
      001223                       4422 00184$:
      001223 90 07 58         [24] 4423 	mov	dptr,#_main___2621440005_524288_292
      001226 EE               [12] 4424 	mov	a,r6
      001227 F0               [24] 4425 	movx	@dptr,a
      001228                       4426 00185$:
      001228 90 07 58         [24] 4427 	mov	dptr,#_main___2621440005_524288_292
      00122B E0               [24] 4428 	movx	a,@dptr
                                   4429 ;	main.c:530: m_cx -= cx;
      00122C FF               [12] 4430 	mov	r7,a
      00122D FD               [12] 4431 	mov	r5,a
      00122E 33               [12] 4432 	rlc	a
      00122F 95 E0            [12] 4433 	subb	a,acc
      001231 FE               [12] 4434 	mov	r6,a
      001232 90 07 52         [24] 4435 	mov	dptr,#_main_m_cx_393216_279
      001235 E0               [24] 4436 	movx	a,@dptr
      001236 FB               [12] 4437 	mov	r3,a
      001237 A3               [24] 4438 	inc	dptr
      001238 E0               [24] 4439 	movx	a,@dptr
      001239 FC               [12] 4440 	mov	r4,a
      00123A EB               [12] 4441 	mov	a,r3
      00123B C3               [12] 4442 	clr	c
      00123C 9D               [12] 4443 	subb	a,r5
      00123D FD               [12] 4444 	mov	r5,a
      00123E EC               [12] 4445 	mov	a,r4
      00123F 9E               [12] 4446 	subb	a,r6
      001240 FE               [12] 4447 	mov	r6,a
      001241 90 07 52         [24] 4448 	mov	dptr,#_main_m_cx_393216_279
      001244 ED               [12] 4449 	mov	a,r5
      001245 F0               [24] 4450 	movx	@dptr,a
      001246 EE               [12] 4451 	mov	a,r6
      001247 A3               [24] 4452 	inc	dptr
      001248 F0               [24] 4453 	movx	@dptr,a
                                   4454 ;	main.c:531: int8_t cy = clamp(m_cy, -128, 127);
      001249 90 07 54         [24] 4455 	mov	dptr,#_main_m_cy_393216_279
      00124C E0               [24] 4456 	movx	a,@dptr
      00124D FD               [12] 4457 	mov	r5,a
      00124E A3               [24] 4458 	inc	dptr
      00124F E0               [24] 4459 	movx	a,@dptr
      001250 FE               [12] 4460 	mov	r6,a
      001251 C3               [12] 4461 	clr	c
      001252 ED               [12] 4462 	mov	a,r5
      001253 94 80            [12] 4463 	subb	a,#0x80
      001255 EE               [12] 4464 	mov	a,r6
      001256 64 80            [12] 4465 	xrl	a,#0x80
      001258 94 7F            [12] 4466 	subb	a,#0x7f
      00125A 50 08            [24] 4467 	jnc	00187$
      00125C 90 07 5B         [24] 4468 	mov	dptr,#_main___2621440010_589824_296
      00125F 74 80            [12] 4469 	mov	a,#0x80
      001261 F0               [24] 4470 	movx	@dptr,a
      001262 80 1C            [24] 4471 	sjmp	00190$
      001264                       4472 00187$:
      001264 C3               [12] 4473 	clr	c
      001265 74 7F            [12] 4474 	mov	a,#0x7f
      001267 9D               [12] 4475 	subb	a,r5
      001268 74 80            [12] 4476 	mov	a,#(0x00 ^ 0x80)
      00126A 8E F0            [24] 4477 	mov	b,r6
      00126C 63 F0 80         [24] 4478 	xrl	b,#0x80
      00126F 95 F0            [12] 4479 	subb	a,b
      001271 50 08            [24] 4480 	jnc	00189$
      001273 90 07 5B         [24] 4481 	mov	dptr,#_main___2621440010_589824_296
      001276 74 7F            [12] 4482 	mov	a,#0x7f
      001278 F0               [24] 4483 	movx	@dptr,a
      001279 80 05            [24] 4484 	sjmp	00190$
      00127B                       4485 00189$:
      00127B 90 07 5B         [24] 4486 	mov	dptr,#_main___2621440010_589824_296
      00127E ED               [12] 4487 	mov	a,r5
      00127F F0               [24] 4488 	movx	@dptr,a
      001280                       4489 00190$:
      001280 90 07 5B         [24] 4490 	mov	dptr,#_main___2621440010_589824_296
      001283 E0               [24] 4491 	movx	a,@dptr
                                   4492 ;	main.c:532: m_cy -= cy;
      001284 FE               [12] 4493 	mov	r6,a
      001285 FC               [12] 4494 	mov	r4,a
      001286 33               [12] 4495 	rlc	a
      001287 95 E0            [12] 4496 	subb	a,acc
      001289 FD               [12] 4497 	mov	r5,a
      00128A 90 07 54         [24] 4498 	mov	dptr,#_main_m_cy_393216_279
      00128D E0               [24] 4499 	movx	a,@dptr
      00128E FA               [12] 4500 	mov	r2,a
      00128F A3               [24] 4501 	inc	dptr
      001290 E0               [24] 4502 	movx	a,@dptr
      001291 FB               [12] 4503 	mov	r3,a
      001292 EA               [12] 4504 	mov	a,r2
      001293 C3               [12] 4505 	clr	c
      001294 9C               [12] 4506 	subb	a,r4
      001295 FC               [12] 4507 	mov	r4,a
      001296 EB               [12] 4508 	mov	a,r3
      001297 9D               [12] 4509 	subb	a,r5
      001298 FD               [12] 4510 	mov	r5,a
      001299 90 07 54         [24] 4511 	mov	dptr,#_main_m_cy_393216_279
      00129C EC               [12] 4512 	mov	a,r4
      00129D F0               [24] 4513 	movx	@dptr,a
      00129E ED               [12] 4514 	mov	a,r5
      00129F A3               [24] 4515 	inc	dptr
      0012A0 F0               [24] 4516 	movx	@dptr,a
                                   4517 ;	main.c:533: int8_t cz = clamp(m_cz, -8, 7);
      0012A1 90 07 56         [24] 4518 	mov	dptr,#_main_m_cz_393216_279
      0012A4 E0               [24] 4519 	movx	a,@dptr
      0012A5 FC               [12] 4520 	mov	r4,a
      0012A6 A3               [24] 4521 	inc	dptr
      0012A7 E0               [24] 4522 	movx	a,@dptr
      0012A8 FD               [12] 4523 	mov	r5,a
      0012A9 C3               [12] 4524 	clr	c
      0012AA EC               [12] 4525 	mov	a,r4
      0012AB 94 F8            [12] 4526 	subb	a,#0xf8
      0012AD ED               [12] 4527 	mov	a,r5
      0012AE 64 80            [12] 4528 	xrl	a,#0x80
      0012B0 94 7F            [12] 4529 	subb	a,#0x7f
      0012B2 50 08            [24] 4530 	jnc	00192$
      0012B4 90 07 5E         [24] 4531 	mov	dptr,#_main___2621450015_655360_300
      0012B7 74 F8            [12] 4532 	mov	a,#0xf8
      0012B9 F0               [24] 4533 	movx	@dptr,a
      0012BA 80 1C            [24] 4534 	sjmp	00195$
      0012BC                       4535 00192$:
      0012BC C3               [12] 4536 	clr	c
      0012BD 74 07            [12] 4537 	mov	a,#0x07
      0012BF 9C               [12] 4538 	subb	a,r4
      0012C0 74 80            [12] 4539 	mov	a,#(0x00 ^ 0x80)
      0012C2 8D F0            [24] 4540 	mov	b,r5
      0012C4 63 F0 80         [24] 4541 	xrl	b,#0x80
      0012C7 95 F0            [12] 4542 	subb	a,b
      0012C9 50 08            [24] 4543 	jnc	00194$
      0012CB 90 07 5E         [24] 4544 	mov	dptr,#_main___2621450015_655360_300
      0012CE 74 07            [12] 4545 	mov	a,#0x07
      0012D0 F0               [24] 4546 	movx	@dptr,a
      0012D1 80 05            [24] 4547 	sjmp	00195$
      0012D3                       4548 00194$:
      0012D3 90 07 5E         [24] 4549 	mov	dptr,#_main___2621450015_655360_300
      0012D6 EC               [12] 4550 	mov	a,r4
      0012D7 F0               [24] 4551 	movx	@dptr,a
      0012D8                       4552 00195$:
      0012D8 90 07 5E         [24] 4553 	mov	dptr,#_main___2621450015_655360_300
      0012DB E0               [24] 4554 	movx	a,@dptr
                                   4555 ;	main.c:534: m_cz -= cz;
      0012DC FD               [12] 4556 	mov	r5,a
      0012DD FB               [12] 4557 	mov	r3,a
      0012DE 33               [12] 4558 	rlc	a
      0012DF 95 E0            [12] 4559 	subb	a,acc
      0012E1 FC               [12] 4560 	mov	r4,a
      0012E2 90 07 56         [24] 4561 	mov	dptr,#_main_m_cz_393216_279
      0012E5 E0               [24] 4562 	movx	a,@dptr
      0012E6 F9               [12] 4563 	mov	r1,a
      0012E7 A3               [24] 4564 	inc	dptr
      0012E8 E0               [24] 4565 	movx	a,@dptr
      0012E9 FA               [12] 4566 	mov	r2,a
      0012EA E9               [12] 4567 	mov	a,r1
      0012EB C3               [12] 4568 	clr	c
      0012EC 9B               [12] 4569 	subb	a,r3
      0012ED FB               [12] 4570 	mov	r3,a
      0012EE EA               [12] 4571 	mov	a,r2
      0012EF 9C               [12] 4572 	subb	a,r4
      0012F0 FC               [12] 4573 	mov	r4,a
      0012F1 90 07 56         [24] 4574 	mov	dptr,#_main_m_cz_393216_279
      0012F4 EB               [12] 4575 	mov	a,r3
      0012F5 F0               [24] 4576 	movx	@dptr,a
      0012F6 EC               [12] 4577 	mov	a,r4
      0012F7 A3               [24] 4578 	inc	dptr
      0012F8 F0               [24] 4579 	movx	@dptr,a
                                   4580 ;	main.c:536: st_m_bt = m_bt;
      0012F9 90 07 51         [24] 4581 	mov	dptr,#_main_m_bt_393216_279
      0012FC E0               [24] 4582 	movx	a,@dptr
      0012FD FC               [12] 4583 	mov	r4,a
      0012FE 90 07 4F         [24] 4584 	mov	dptr,#_main_st_m_bt_393216_279
      001301 F0               [24] 4585 	movx	@dptr,a
                                   4586 ;	main.c:538: spi_m_send(cx, cy, cz, m_bt);
      001302 90 07 2A         [24] 4587 	mov	dptr,#_spi_m_send_PARM_2
      001305 EE               [12] 4588 	mov	a,r6
      001306 F0               [24] 4589 	movx	@dptr,a
      001307 90 07 2B         [24] 4590 	mov	dptr,#_spi_m_send_PARM_3
      00130A ED               [12] 4591 	mov	a,r5
      00130B F0               [24] 4592 	movx	@dptr,a
      00130C 90 07 2C         [24] 4593 	mov	dptr,#_spi_m_send_PARM_4
      00130F EC               [12] 4594 	mov	a,r4
      001310 F0               [24] 4595 	movx	@dptr,a
      001311 8F 82            [24] 4596 	mov	dpl,r7
      001313 12 04 35         [24] 4597 	lcall	_spi_m_send
                                   4598 ;	main.c:784: do_process();
      001316                       4599 00200$:
                                   4600 ;	main.c:786: if (fatal_error ||
      001316 90 07 1E         [24] 4601 	mov	dptr,#_fatal_error
      001319 E0               [24] 4602 	movx	a,@dptr
      00131A 60 03            [24] 4603 	jz	00412$
      00131C 02 10 4D         [24] 4604 	ljmp	00202$
      00131F                       4605 00412$:
                                   4606 ;	main.c:787: (!allow_send_data &&
      00131F 90 07 1D         [24] 4607 	mov	dptr,#_allow_send_data
      001322 E0               [24] 4608 	movx	a,@dptr
      001323 60 03            [24] 4609 	jz	00413$
      001325 02 10 4D         [24] 4610 	ljmp	00202$
      001328                       4611 00413$:
                                   4612 ;	main.c:788: !mouse_rx_buf_count &&
      001328 90 06 17         [24] 4613 	mov	dptr,#_mouse_rx_buf_count
      00132B E0               [24] 4614 	movx	a,@dptr
      00132C 60 03            [24] 4615 	jz	00414$
      00132E 02 10 4D         [24] 4616 	ljmp	00202$
      001331                       4617 00414$:
                                   4618 ;	main.c:789: !spi_tx_buf_count)) {
      001331 90 07 19         [24] 4619 	mov	dptr,#_spi_tx_buf_count
      001334 E0               [24] 4620 	movx	a,@dptr
                                   4621 ;	main.c:790: mcu_sleep();
                                   4622 ;	main.c:793: }
      001335 02 10 4D         [24] 4623 	ljmp	00202$
                                   4624 	.area CSEG    (CODE)
                                   4625 	.area CONST   (CODE)
                                   4626 	.area CONST   (CODE)
      004C64                       4627 ___str_0:
      004C64 53 74 61 72 74 75 70  4628 	.ascii "Startup"
      004C6B 0A                    4629 	.db 0x0a
      004C6C 00                    4630 	.db 0x00
                                   4631 	.area CSEG    (CODE)
                                   4632 	.area CONST   (CODE)
      004C6D                       4633 ___str_1:
      004C6D 52 65 61 64 79        4634 	.ascii "Ready"
      004C72 0A                    4635 	.db 0x0a
      004C73 00                    4636 	.db 0x00
                                   4637 	.area CSEG    (CODE)
                                   4638 	.area XINIT   (CODE)
                                   4639 	.area CABS    (ABS,CODE)
