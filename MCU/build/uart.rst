                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _putchar
                                     12 	.globl _printf
                                     13 	.globl _UIF_BUS_RST
                                     14 	.globl _UIF_DETECT
                                     15 	.globl _UIF_TRANSFER
                                     16 	.globl _UIF_SUSPEND
                                     17 	.globl _UIF_HST_SOF
                                     18 	.globl _UIF_FIFO_OV
                                     19 	.globl _U_SIE_FREE
                                     20 	.globl _U_TOG_OK
                                     21 	.globl _U_IS_NAK
                                     22 	.globl _S0_R_FIFO0
                                     23 	.globl _S0_R_FIFO1
                                     24 	.globl _S0_T_FIFO
                                     25 	.globl _S0_FREE
                                     26 	.globl _S0_IF_BYTE
                                     27 	.globl _S0_IF_FIRST
                                     28 	.globl _S0_IF_OV
                                     29 	.globl _S0_FST_ACT
                                     30 	.globl _CP_RL2
                                     31 	.globl _C_T2
                                     32 	.globl _TR2
                                     33 	.globl _EXEN2
                                     34 	.globl _TCLK
                                     35 	.globl _RCLK
                                     36 	.globl _EXF2
                                     37 	.globl _CAP1F
                                     38 	.globl _TF2
                                     39 	.globl _RI
                                     40 	.globl _TI
                                     41 	.globl _RB8
                                     42 	.globl _TB8
                                     43 	.globl _REN
                                     44 	.globl _SM2
                                     45 	.globl _SM1
                                     46 	.globl _SM0
                                     47 	.globl _IT0
                                     48 	.globl _IE0
                                     49 	.globl _IT1
                                     50 	.globl _IE1
                                     51 	.globl _TR0
                                     52 	.globl _TF0
                                     53 	.globl _TR1
                                     54 	.globl _TF1
                                     55 	.globl _RXD1_
                                     56 	.globl _LED2
                                     57 	.globl _CAP3_
                                     58 	.globl _PWM3_
                                     59 	.globl _PWM1_
                                     60 	.globl _TXD1_
                                     61 	.globl _TNOW_
                                     62 	.globl _LED3
                                     63 	.globl _PWM2_
                                     64 	.globl _SCS_
                                     65 	.globl _SCK_
                                     66 	.globl _RXD
                                     67 	.globl _TXD
                                     68 	.globl _INT0
                                     69 	.globl _LED0
                                     70 	.globl _INT1
                                     71 	.globl _LED1
                                     72 	.globl _T0
                                     73 	.globl _XCS0
                                     74 	.globl _LEDC
                                     75 	.globl _T1
                                     76 	.globl _DA6
                                     77 	.globl _WR
                                     78 	.globl _RD
                                     79 	.globl _MOSI1
                                     80 	.globl _MISO1
                                     81 	.globl _SCK1
                                     82 	.globl _PWM1
                                     83 	.globl _CAP2_
                                     84 	.globl _T2EX_
                                     85 	.globl _PWM2
                                     86 	.globl _TNOW
                                     87 	.globl _RXD1
                                     88 	.globl _DA7
                                     89 	.globl _TXD1
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _CAP2
                                     93 	.globl _T2EX
                                     94 	.globl _CAP3
                                     95 	.globl _PWM3
                                     96 	.globl _SCS
                                     97 	.globl _MOSI
                                     98 	.globl _MISO
                                     99 	.globl _SCK
                                    100 	.globl _AIN0
                                    101 	.globl _AIN1
                                    102 	.globl _AIN2
                                    103 	.globl _AIN3
                                    104 	.globl _AIN4
                                    105 	.globl _AIN5
                                    106 	.globl _AIN6
                                    107 	.globl _AIN7
                                    108 	.globl _UDTR
                                    109 	.globl _URTS
                                    110 	.globl _RXD_
                                    111 	.globl _TXD_
                                    112 	.globl _UCTS
                                    113 	.globl _UDSR
                                    114 	.globl _URI
                                    115 	.globl _UDCD
                                    116 	.globl _IE_SPI0
                                    117 	.globl _IE_TMR3
                                    118 	.globl _IE_USB
                                    119 	.globl _IE_ADC
                                    120 	.globl _IE_UART1
                                    121 	.globl _IE_PWM1
                                    122 	.globl _IE_GPIO
                                    123 	.globl _IE_WDOG
                                    124 	.globl _PX0
                                    125 	.globl _PT0
                                    126 	.globl _PX1
                                    127 	.globl _PT1
                                    128 	.globl _PS
                                    129 	.globl _PT2
                                    130 	.globl _PL_FLAG
                                    131 	.globl _PH_FLAG
                                    132 	.globl _EX0
                                    133 	.globl _ET0
                                    134 	.globl _EX1
                                    135 	.globl _ET1
                                    136 	.globl _ES
                                    137 	.globl _ET2
                                    138 	.globl _E_DIS
                                    139 	.globl _EA
                                    140 	.globl _P
                                    141 	.globl _F1
                                    142 	.globl _OV
                                    143 	.globl _RS0
                                    144 	.globl _RS1
                                    145 	.globl _F0
                                    146 	.globl _AC
                                    147 	.globl _CY
                                    148 	.globl _USB_DMA_AH
                                    149 	.globl _USB_DMA_AL
                                    150 	.globl _USB_DMA
                                    151 	.globl _UHUB1_CTRL
                                    152 	.globl _UDEV_CTRL
                                    153 	.globl _USB_DEV_AD
                                    154 	.globl _USB_CTRL
                                    155 	.globl _USB_INT_EN
                                    156 	.globl _UEP4_T_LEN
                                    157 	.globl _UEP4_CTRL
                                    158 	.globl _UEP0_T_LEN
                                    159 	.globl _UEP0_CTRL
                                    160 	.globl _USB_HUB_ST
                                    161 	.globl _USB_MIS_ST
                                    162 	.globl _USB_INT_ST
                                    163 	.globl _USB_INT_FG
                                    164 	.globl _UEP3_T_LEN
                                    165 	.globl _UEP3_CTRL
                                    166 	.globl _UEP2_T_LEN
                                    167 	.globl _UEP2_CTRL
                                    168 	.globl _UEP1_T_LEN
                                    169 	.globl _UEP1_CTRL
                                    170 	.globl _USB_RX_LEN
                                    171 	.globl _ADC_EX_SW
                                    172 	.globl _ADC_SETUP
                                    173 	.globl _ADC_FIFO_H
                                    174 	.globl _ADC_FIFO_L
                                    175 	.globl _ADC_FIFO
                                    176 	.globl _ADC_CHANN
                                    177 	.globl _ADC_CTRL
                                    178 	.globl _ADC_STAT
                                    179 	.globl _ADC_CK_SE
                                    180 	.globl _ADC_DMA_CN
                                    181 	.globl _ADC_DMA_AH
                                    182 	.globl _ADC_DMA_AL
                                    183 	.globl _ADC_DMA
                                    184 	.globl _SER1_ADDR
                                    185 	.globl _SER1_MSR
                                    186 	.globl _SER1_LSR
                                    187 	.globl _SER1_MCR
                                    188 	.globl _SER1_LCR
                                    189 	.globl _SER1_IIR
                                    190 	.globl _SER1_IER
                                    191 	.globl _SER1_FIFO
                                    192 	.globl _SPI1_CK_SE
                                    193 	.globl _SPI1_CTRL
                                    194 	.globl _SPI1_DATA
                                    195 	.globl _SPI1_STAT
                                    196 	.globl _SPI0_SETUP
                                    197 	.globl _SPI0_CK_SE
                                    198 	.globl _SPI0_CTRL
                                    199 	.globl _SPI0_DATA
                                    200 	.globl _SPI0_STAT
                                    201 	.globl _PWM_CYCLE
                                    202 	.globl _PWM_CK_SE
                                    203 	.globl _PWM_CTRL
                                    204 	.globl _PWM_DATA
                                    205 	.globl _PWM_DATA2
                                    206 	.globl _T3_FIFO_H
                                    207 	.globl _T3_FIFO_L
                                    208 	.globl _T3_FIFO
                                    209 	.globl _T3_DMA_AH
                                    210 	.globl _T3_DMA_AL
                                    211 	.globl _T3_DMA
                                    212 	.globl _T3_DMA_CN
                                    213 	.globl _T3_CTRL
                                    214 	.globl _T3_STAT
                                    215 	.globl _T3_END_H
                                    216 	.globl _T3_END_L
                                    217 	.globl _T3_END
                                    218 	.globl _T3_COUNT_H
                                    219 	.globl _T3_COUNT_L
                                    220 	.globl _T3_COUNT
                                    221 	.globl _T3_SETUP
                                    222 	.globl _TH2
                                    223 	.globl _TL2
                                    224 	.globl _T2COUNT
                                    225 	.globl _RCAP2H
                                    226 	.globl _RCAP2L
                                    227 	.globl _RCAP2
                                    228 	.globl _T2MOD
                                    229 	.globl _T2CON
                                    230 	.globl _SBUF
                                    231 	.globl _SCON
                                    232 	.globl _TH1
                                    233 	.globl _TH0
                                    234 	.globl _TL1
                                    235 	.globl _TL0
                                    236 	.globl _TMOD
                                    237 	.globl _TCON
                                    238 	.globl _XBUS_SPEED
                                    239 	.globl _XBUS_AUX
                                    240 	.globl _PIN_FUNC
                                    241 	.globl _PORT_CFG
                                    242 	.globl _P5_IN
                                    243 	.globl _P4_PU
                                    244 	.globl _P4_DIR
                                    245 	.globl _P4_IN
                                    246 	.globl _P4_OUT
                                    247 	.globl _P3_PU
                                    248 	.globl _P3_DIR
                                    249 	.globl _P3
                                    250 	.globl _P2_PU
                                    251 	.globl _P2_DIR
                                    252 	.globl _P2
                                    253 	.globl _P1_PU
                                    254 	.globl _P1_DIR
                                    255 	.globl _P1_IE
                                    256 	.globl _P1
                                    257 	.globl _P0_PU
                                    258 	.globl _P0_DIR
                                    259 	.globl _P0
                                    260 	.globl _ROM_CTRL
                                    261 	.globl _ROM_DATA_H
                                    262 	.globl _ROM_DATA_L
                                    263 	.globl _ROM_DATA
                                    264 	.globl _ROM_ADDR_H
                                    265 	.globl _ROM_ADDR_L
                                    266 	.globl _ROM_ADDR
                                    267 	.globl _GPIO_IE
                                    268 	.globl _IP_EX
                                    269 	.globl _IE_EX
                                    270 	.globl _IP
                                    271 	.globl _IE
                                    272 	.globl _WDOG_COUNT
                                    273 	.globl _RESET_KEEP
                                    274 	.globl _WAKE_CTRL
                                    275 	.globl _SLEEP_CTRL
                                    276 	.globl _CLOCK_CFG
                                    277 	.globl _PLL_CFG
                                    278 	.globl _PCON
                                    279 	.globl _GLOBAL_CFG
                                    280 	.globl _SAFE_MOD
                                    281 	.globl _DPH
                                    282 	.globl _DPL
                                    283 	.globl _SP
                                    284 	.globl _B
                                    285 	.globl _ACC
                                    286 	.globl _PSW
                                    287 	.globl _rxPos
                                    288 	.globl _sendHidPollMSG_PARM_10
                                    289 	.globl _sendHidPollMSG_PARM_9
                                    290 	.globl _sendHidPollMSG_PARM_8
                                    291 	.globl _sendHidPollMSG_PARM_7
                                    292 	.globl _sendHidPollMSG_PARM_6
                                    293 	.globl _sendHidPollMSG_PARM_5
                                    294 	.globl _sendHidPollMSG_PARM_4
                                    295 	.globl _sendHidPollMSG_PARM_3
                                    296 	.globl _sendHidPollMSG_PARM_2
                                    297 	.globl _sendProtocolMSG_PARM_6
                                    298 	.globl _sendProtocolMSG_PARM_5
                                    299 	.globl _sendProtocolMSG_PARM_4
                                    300 	.globl _sendProtocolMSG_PARM_3
                                    301 	.globl _sendProtocolMSG_PARM_2
                                    302 	.globl _uartRxBuff
                                    303 	.globl _LED_DMA_XL
                                    304 	.globl _LED_DMA_XH
                                    305 	.globl _LED_DMA_CN
                                    306 	.globl _LED_DMA_AL
                                    307 	.globl _LED_DMA_AH
                                    308 	.globl _LED_CK_SE
                                    309 	.globl _LED_DATA
                                    310 	.globl _LED_CTRL
                                    311 	.globl _LED_STAT
                                    312 	.globl _pUEP3_DMA_L
                                    313 	.globl _pUEP3_DMA_H
                                    314 	.globl _UEP3_DMA_H
                                    315 	.globl _UEP3_DMA_L
                                    316 	.globl _UEP3_DMA
                                    317 	.globl _pUEP2_DMA_L
                                    318 	.globl _pUEP2_DMA_H
                                    319 	.globl _UEP2_DMA_H
                                    320 	.globl _UEP2_DMA_L
                                    321 	.globl _UEP2_DMA
                                    322 	.globl _pUEP1_DMA_L
                                    323 	.globl _pUEP1_DMA_H
                                    324 	.globl _UEP1_DMA_L
                                    325 	.globl _UEP1_DMA_H
                                    326 	.globl _pUEP0_DMA_L
                                    327 	.globl _pUEP0_DMA_H
                                    328 	.globl _UEP0_DMA_L
                                    329 	.globl _UEP0_DMA_H
                                    330 	.globl _UEP2_3_MOD
                                    331 	.globl _UEP4_1_MOD
                                    332 	.globl _pLED_DMA_XL
                                    333 	.globl _pLED_DMA_XH
                                    334 	.globl _pLED_DMA_CN
                                    335 	.globl _pLED_DMA_AL
                                    336 	.globl _pLED_DMA_AH
                                    337 	.globl _pLED_CK_SE
                                    338 	.globl _pLED_DATA
                                    339 	.globl _pLED_CTRL
                                    340 	.globl _pLED_STAT
                                    341 	.globl _pUEP2_3_MOD
                                    342 	.globl _pUEP4_1_MOD
                                    343 	.globl _runBootloader
                                    344 	.globl _initUART0
                                    345 	.globl _processUart
                                    346 	.globl _sendProtocolMSG
                                    347 	.globl _sendHidPollMSG
                                    348 ;--------------------------------------------------------
                                    349 ; special function registers
                                    350 ;--------------------------------------------------------
                                    351 	.area RSEG    (ABS,DATA)
      000000                        352 	.org 0x0000
                           0000D0   353 _PSW	=	0x00d0
                           0000E0   354 _ACC	=	0x00e0
                           0000F0   355 _B	=	0x00f0
                           000081   356 _SP	=	0x0081
                           000082   357 _DPL	=	0x0082
                           000083   358 _DPH	=	0x0083
                           0000A1   359 _SAFE_MOD	=	0x00a1
                           0000B1   360 _GLOBAL_CFG	=	0x00b1
                           000087   361 _PCON	=	0x0087
                           0000B2   362 _PLL_CFG	=	0x00b2
                           0000B3   363 _CLOCK_CFG	=	0x00b3
                           0000EA   364 _SLEEP_CTRL	=	0x00ea
                           0000EB   365 _WAKE_CTRL	=	0x00eb
                           0000FE   366 _RESET_KEEP	=	0x00fe
                           0000FF   367 _WDOG_COUNT	=	0x00ff
                           0000A8   368 _IE	=	0x00a8
                           0000B8   369 _IP	=	0x00b8
                           0000E8   370 _IE_EX	=	0x00e8
                           0000E9   371 _IP_EX	=	0x00e9
                           0000CF   372 _GPIO_IE	=	0x00cf
                           008584   373 _ROM_ADDR	=	0x8584
                           000084   374 _ROM_ADDR_L	=	0x0084
                           000085   375 _ROM_ADDR_H	=	0x0085
                           008F8E   376 _ROM_DATA	=	0x8f8e
                           00008E   377 _ROM_DATA_L	=	0x008e
                           00008F   378 _ROM_DATA_H	=	0x008f
                           000086   379 _ROM_CTRL	=	0x0086
                           000080   380 _P0	=	0x0080
                           0000C4   381 _P0_DIR	=	0x00c4
                           0000C5   382 _P0_PU	=	0x00c5
                           000090   383 _P1	=	0x0090
                           0000B9   384 _P1_IE	=	0x00b9
                           0000BA   385 _P1_DIR	=	0x00ba
                           0000BB   386 _P1_PU	=	0x00bb
                           0000A0   387 _P2	=	0x00a0
                           0000BC   388 _P2_DIR	=	0x00bc
                           0000BD   389 _P2_PU	=	0x00bd
                           0000B0   390 _P3	=	0x00b0
                           0000BE   391 _P3_DIR	=	0x00be
                           0000BF   392 _P3_PU	=	0x00bf
                           0000C0   393 _P4_OUT	=	0x00c0
                           0000C1   394 _P4_IN	=	0x00c1
                           0000C2   395 _P4_DIR	=	0x00c2
                           0000C3   396 _P4_PU	=	0x00c3
                           0000C7   397 _P5_IN	=	0x00c7
                           0000C6   398 _PORT_CFG	=	0x00c6
                           0000CE   399 _PIN_FUNC	=	0x00ce
                           0000A2   400 _XBUS_AUX	=	0x00a2
                           0000FD   401 _XBUS_SPEED	=	0x00fd
                           000088   402 _TCON	=	0x0088
                           000089   403 _TMOD	=	0x0089
                           00008A   404 _TL0	=	0x008a
                           00008B   405 _TL1	=	0x008b
                           00008C   406 _TH0	=	0x008c
                           00008D   407 _TH1	=	0x008d
                           000098   408 _SCON	=	0x0098
                           000099   409 _SBUF	=	0x0099
                           0000C8   410 _T2CON	=	0x00c8
                           0000C9   411 _T2MOD	=	0x00c9
                           00CBCA   412 _RCAP2	=	0xcbca
                           0000CA   413 _RCAP2L	=	0x00ca
                           0000CB   414 _RCAP2H	=	0x00cb
                           00CDCC   415 _T2COUNT	=	0xcdcc
                           0000CC   416 _TL2	=	0x00cc
                           0000CD   417 _TH2	=	0x00cd
                           0000A3   418 _T3_SETUP	=	0x00a3
                           00A5A4   419 _T3_COUNT	=	0xa5a4
                           0000A4   420 _T3_COUNT_L	=	0x00a4
                           0000A5   421 _T3_COUNT_H	=	0x00a5
                           00A7A6   422 _T3_END	=	0xa7a6
                           0000A6   423 _T3_END_L	=	0x00a6
                           0000A7   424 _T3_END_H	=	0x00a7
                           0000A9   425 _T3_STAT	=	0x00a9
                           0000AA   426 _T3_CTRL	=	0x00aa
                           0000AB   427 _T3_DMA_CN	=	0x00ab
                           00ADAC   428 _T3_DMA	=	0xadac
                           0000AC   429 _T3_DMA_AL	=	0x00ac
                           0000AD   430 _T3_DMA_AH	=	0x00ad
                           00AFAE   431 _T3_FIFO	=	0xafae
                           0000AE   432 _T3_FIFO_L	=	0x00ae
                           0000AF   433 _T3_FIFO_H	=	0x00af
                           00009B   434 _PWM_DATA2	=	0x009b
                           00009C   435 _PWM_DATA	=	0x009c
                           00009D   436 _PWM_CTRL	=	0x009d
                           00009E   437 _PWM_CK_SE	=	0x009e
                           00009F   438 _PWM_CYCLE	=	0x009f
                           0000F8   439 _SPI0_STAT	=	0x00f8
                           0000F9   440 _SPI0_DATA	=	0x00f9
                           0000FA   441 _SPI0_CTRL	=	0x00fa
                           0000FB   442 _SPI0_CK_SE	=	0x00fb
                           0000FC   443 _SPI0_SETUP	=	0x00fc
                           0000B4   444 _SPI1_STAT	=	0x00b4
                           0000B5   445 _SPI1_DATA	=	0x00b5
                           0000B6   446 _SPI1_CTRL	=	0x00b6
                           0000B7   447 _SPI1_CK_SE	=	0x00b7
                           00009A   448 _SER1_FIFO	=	0x009a
                           000091   449 _SER1_IER	=	0x0091
                           000092   450 _SER1_IIR	=	0x0092
                           000093   451 _SER1_LCR	=	0x0093
                           000094   452 _SER1_MCR	=	0x0094
                           000095   453 _SER1_LSR	=	0x0095
                           000096   454 _SER1_MSR	=	0x0096
                           000097   455 _SER1_ADDR	=	0x0097
                           00EDEC   456 _ADC_DMA	=	0xedec
                           0000EC   457 _ADC_DMA_AL	=	0x00ec
                           0000ED   458 _ADC_DMA_AH	=	0x00ed
                           0000EE   459 _ADC_DMA_CN	=	0x00ee
                           0000EF   460 _ADC_CK_SE	=	0x00ef
                           0000F1   461 _ADC_STAT	=	0x00f1
                           0000F2   462 _ADC_CTRL	=	0x00f2
                           0000F3   463 _ADC_CHANN	=	0x00f3
                           00F5F4   464 _ADC_FIFO	=	0xf5f4
                           0000F4   465 _ADC_FIFO_L	=	0x00f4
                           0000F5   466 _ADC_FIFO_H	=	0x00f5
                           0000F6   467 _ADC_SETUP	=	0x00f6
                           0000F7   468 _ADC_EX_SW	=	0x00f7
                           0000D1   469 _USB_RX_LEN	=	0x00d1
                           0000D2   470 _UEP1_CTRL	=	0x00d2
                           0000D3   471 _UEP1_T_LEN	=	0x00d3
                           0000D4   472 _UEP2_CTRL	=	0x00d4
                           0000D5   473 _UEP2_T_LEN	=	0x00d5
                           0000D6   474 _UEP3_CTRL	=	0x00d6
                           0000D7   475 _UEP3_T_LEN	=	0x00d7
                           0000D8   476 _USB_INT_FG	=	0x00d8
                           0000D9   477 _USB_INT_ST	=	0x00d9
                           0000DA   478 _USB_MIS_ST	=	0x00da
                           0000DB   479 _USB_HUB_ST	=	0x00db
                           0000DC   480 _UEP0_CTRL	=	0x00dc
                           0000DD   481 _UEP0_T_LEN	=	0x00dd
                           0000DE   482 _UEP4_CTRL	=	0x00de
                           0000DF   483 _UEP4_T_LEN	=	0x00df
                           0000E1   484 _USB_INT_EN	=	0x00e1
                           0000E2   485 _USB_CTRL	=	0x00e2
                           0000E3   486 _USB_DEV_AD	=	0x00e3
                           0000E4   487 _UDEV_CTRL	=	0x00e4
                           0000E5   488 _UHUB1_CTRL	=	0x00e5
                           00E7E6   489 _USB_DMA	=	0xe7e6
                           0000E6   490 _USB_DMA_AL	=	0x00e6
                           0000E7   491 _USB_DMA_AH	=	0x00e7
                                    492 ;--------------------------------------------------------
                                    493 ; special function bits
                                    494 ;--------------------------------------------------------
                                    495 	.area RSEG    (ABS,DATA)
      000000                        496 	.org 0x0000
                           0000D7   497 _CY	=	0x00d7
                           0000D6   498 _AC	=	0x00d6
                           0000D5   499 _F0	=	0x00d5
                           0000D4   500 _RS1	=	0x00d4
                           0000D3   501 _RS0	=	0x00d3
                           0000D2   502 _OV	=	0x00d2
                           0000D1   503 _F1	=	0x00d1
                           0000D0   504 _P	=	0x00d0
                           0000AF   505 _EA	=	0x00af
                           0000AE   506 _E_DIS	=	0x00ae
                           0000AD   507 _ET2	=	0x00ad
                           0000AC   508 _ES	=	0x00ac
                           0000AB   509 _ET1	=	0x00ab
                           0000AA   510 _EX1	=	0x00aa
                           0000A9   511 _ET0	=	0x00a9
                           0000A8   512 _EX0	=	0x00a8
                           0000BF   513 _PH_FLAG	=	0x00bf
                           0000BE   514 _PL_FLAG	=	0x00be
                           0000BD   515 _PT2	=	0x00bd
                           0000BC   516 _PS	=	0x00bc
                           0000BB   517 _PT1	=	0x00bb
                           0000BA   518 _PX1	=	0x00ba
                           0000B9   519 _PT0	=	0x00b9
                           0000B8   520 _PX0	=	0x00b8
                           0000EF   521 _IE_WDOG	=	0x00ef
                           0000EE   522 _IE_GPIO	=	0x00ee
                           0000ED   523 _IE_PWM1	=	0x00ed
                           0000EC   524 _IE_UART1	=	0x00ec
                           0000EB   525 _IE_ADC	=	0x00eb
                           0000EA   526 _IE_USB	=	0x00ea
                           0000E9   527 _IE_TMR3	=	0x00e9
                           0000E8   528 _IE_SPI0	=	0x00e8
                           000087   529 _UDCD	=	0x0087
                           000086   530 _URI	=	0x0086
                           000085   531 _UDSR	=	0x0085
                           000084   532 _UCTS	=	0x0084
                           000083   533 _TXD_	=	0x0083
                           000082   534 _RXD_	=	0x0082
                           000081   535 _URTS	=	0x0081
                           000080   536 _UDTR	=	0x0080
                           000097   537 _AIN7	=	0x0097
                           000096   538 _AIN6	=	0x0096
                           000095   539 _AIN5	=	0x0095
                           000094   540 _AIN4	=	0x0094
                           000093   541 _AIN3	=	0x0093
                           000092   542 _AIN2	=	0x0092
                           000091   543 _AIN1	=	0x0091
                           000090   544 _AIN0	=	0x0090
                           000097   545 _SCK	=	0x0097
                           000096   546 _MISO	=	0x0096
                           000095   547 _MOSI	=	0x0095
                           000094   548 _SCS	=	0x0094
                           000092   549 _PWM3	=	0x0092
                           000092   550 _CAP3	=	0x0092
                           000091   551 _T2EX	=	0x0091
                           000091   552 _CAP2	=	0x0091
                           000090   553 _T2	=	0x0090
                           000090   554 _CAP1	=	0x0090
                           0000A7   555 _TXD1	=	0x00a7
                           0000A7   556 _DA7	=	0x00a7
                           0000A6   557 _RXD1	=	0x00a6
                           0000A5   558 _TNOW	=	0x00a5
                           0000A5   559 _PWM2	=	0x00a5
                           0000A5   560 _T2EX_	=	0x00a5
                           0000A5   561 _CAP2_	=	0x00a5
                           0000A4   562 _PWM1	=	0x00a4
                           0000A3   563 _SCK1	=	0x00a3
                           0000A2   564 _MISO1	=	0x00a2
                           0000A1   565 _MOSI1	=	0x00a1
                           0000B7   566 _RD	=	0x00b7
                           0000B6   567 _WR	=	0x00b6
                           0000B5   568 _DA6	=	0x00b5
                           0000B5   569 _T1	=	0x00b5
                           0000B4   570 _LEDC	=	0x00b4
                           0000B4   571 _XCS0	=	0x00b4
                           0000B4   572 _T0	=	0x00b4
                           0000B3   573 _LED1	=	0x00b3
                           0000B3   574 _INT1	=	0x00b3
                           0000B2   575 _LED0	=	0x00b2
                           0000B2   576 _INT0	=	0x00b2
                           0000B1   577 _TXD	=	0x00b1
                           0000B0   578 _RXD	=	0x00b0
                           0000C7   579 _SCK_	=	0x00c7
                           0000C6   580 _SCS_	=	0x00c6
                           0000C5   581 _PWM2_	=	0x00c5
                           0000C4   582 _LED3	=	0x00c4
                           0000C4   583 _TNOW_	=	0x00c4
                           0000C4   584 _TXD1_	=	0x00c4
                           0000C3   585 _PWM1_	=	0x00c3
                           0000C2   586 _PWM3_	=	0x00c2
                           0000C2   587 _CAP3_	=	0x00c2
                           0000C0   588 _LED2	=	0x00c0
                           0000C0   589 _RXD1_	=	0x00c0
                           00008F   590 _TF1	=	0x008f
                           00008E   591 _TR1	=	0x008e
                           00008D   592 _TF0	=	0x008d
                           00008C   593 _TR0	=	0x008c
                           00008B   594 _IE1	=	0x008b
                           00008A   595 _IT1	=	0x008a
                           000089   596 _IE0	=	0x0089
                           000088   597 _IT0	=	0x0088
                           00009F   598 _SM0	=	0x009f
                           00009E   599 _SM1	=	0x009e
                           00009D   600 _SM2	=	0x009d
                           00009C   601 _REN	=	0x009c
                           00009B   602 _TB8	=	0x009b
                           00009A   603 _RB8	=	0x009a
                           000099   604 _TI	=	0x0099
                           000098   605 _RI	=	0x0098
                           0000CF   606 _TF2	=	0x00cf
                           0000CF   607 _CAP1F	=	0x00cf
                           0000CE   608 _EXF2	=	0x00ce
                           0000CD   609 _RCLK	=	0x00cd
                           0000CC   610 _TCLK	=	0x00cc
                           0000CB   611 _EXEN2	=	0x00cb
                           0000CA   612 _TR2	=	0x00ca
                           0000C9   613 _C_T2	=	0x00c9
                           0000C8   614 _CP_RL2	=	0x00c8
                           0000FF   615 _S0_FST_ACT	=	0x00ff
                           0000FE   616 _S0_IF_OV	=	0x00fe
                           0000FD   617 _S0_IF_FIRST	=	0x00fd
                           0000FC   618 _S0_IF_BYTE	=	0x00fc
                           0000FB   619 _S0_FREE	=	0x00fb
                           0000FA   620 _S0_T_FIFO	=	0x00fa
                           0000F9   621 _S0_R_FIFO1	=	0x00f9
                           0000F8   622 _S0_R_FIFO0	=	0x00f8
                           0000DF   623 _U_IS_NAK	=	0x00df
                           0000DE   624 _U_TOG_OK	=	0x00de
                           0000DD   625 _U_SIE_FREE	=	0x00dd
                           0000DC   626 _UIF_FIFO_OV	=	0x00dc
                           0000DB   627 _UIF_HST_SOF	=	0x00db
                           0000DA   628 _UIF_SUSPEND	=	0x00da
                           0000D9   629 _UIF_TRANSFER	=	0x00d9
                           0000D8   630 _UIF_DETECT	=	0x00d8
                           0000D8   631 _UIF_BUS_RST	=	0x00d8
                                    632 ;--------------------------------------------------------
                                    633 ; overlayable register banks
                                    634 ;--------------------------------------------------------
                                    635 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        636 	.ds 8
                                    637 ;--------------------------------------------------------
                                    638 ; internal ram data
                                    639 ;--------------------------------------------------------
                                    640 	.area DSEG    (DATA)
      000008                        641 _runBootloader::
      000008                        642 	.ds 2
                                    643 ;--------------------------------------------------------
                                    644 ; overlayable items in internal ram
                                    645 ;--------------------------------------------------------
                                    646 ;--------------------------------------------------------
                                    647 ; indirectly addressable internal ram data
                                    648 ;--------------------------------------------------------
                                    649 	.area ISEG    (DATA)
                                    650 ;--------------------------------------------------------
                                    651 ; absolute internal ram data
                                    652 ;--------------------------------------------------------
                                    653 	.area IABS    (ABS,DATA)
                                    654 	.area IABS    (ABS,DATA)
                                    655 ;--------------------------------------------------------
                                    656 ; bit data
                                    657 ;--------------------------------------------------------
                                    658 	.area BSEG    (BIT)
                                    659 ;--------------------------------------------------------
                                    660 ; paged external ram data
                                    661 ;--------------------------------------------------------
                                    662 	.area PSEG    (PAG,XDATA)
                           002546   663 _pUEP4_1_MOD	=	0x2546
                           002547   664 _pUEP2_3_MOD	=	0x2547
                           002980   665 _pLED_STAT	=	0x2980
                           002981   666 _pLED_CTRL	=	0x2981
                           002982   667 _pLED_DATA	=	0x2982
                           002983   668 _pLED_CK_SE	=	0x2983
                           002984   669 _pLED_DMA_AH	=	0x2984
                           002985   670 _pLED_DMA_AL	=	0x2985
                           002986   671 _pLED_DMA_CN	=	0x2986
                           002988   672 _pLED_DMA_XH	=	0x2988
                           002989   673 _pLED_DMA_XL	=	0x2989
                                    674 ;--------------------------------------------------------
                                    675 ; external ram data
                                    676 ;--------------------------------------------------------
                                    677 	.area XSEG    (XDATA)
                           002446   678 _UEP4_1_MOD	=	0x2446
                           002447   679 _UEP2_3_MOD	=	0x2447
                           002448   680 _UEP0_DMA_H	=	0x2448
                           002449   681 _UEP0_DMA_L	=	0x2449
                           002548   682 _pUEP0_DMA_H	=	0x2548
                           002549   683 _pUEP0_DMA_L	=	0x2549
                           00244A   684 _UEP1_DMA_H	=	0x244a
                           00244B   685 _UEP1_DMA_L	=	0x244b
                           00254A   686 _pUEP1_DMA_H	=	0x254a
                           00254B   687 _pUEP1_DMA_L	=	0x254b
                           00244C   688 _UEP2_DMA	=	0x244c
                           00244D   689 _UEP2_DMA_L	=	0x244d
                           00244C   690 _UEP2_DMA_H	=	0x244c
                           00254C   691 _pUEP2_DMA_H	=	0x254c
                           00254D   692 _pUEP2_DMA_L	=	0x254d
                           00244E   693 _UEP3_DMA	=	0x244e
                           00244F   694 _UEP3_DMA_L	=	0x244f
                           00244E   695 _UEP3_DMA_H	=	0x244e
                           00254E   696 _pUEP3_DMA_H	=	0x254e
                           00254F   697 _pUEP3_DMA_L	=	0x254f
                           002880   698 _LED_STAT	=	0x2880
                           002881   699 _LED_CTRL	=	0x2881
                           002882   700 _LED_DATA	=	0x2882
                           002883   701 _LED_CK_SE	=	0x2883
                           002884   702 _LED_DMA_AH	=	0x2884
                           002885   703 _LED_DMA_AL	=	0x2885
                           002886   704 _LED_DMA_CN	=	0x2886
                           002888   705 _LED_DMA_XH	=	0x2888
                           002889   706 _LED_DMA_XL	=	0x2889
      000C57                        707 _uartRxBuff::
      000C57                        708 	.ds 64
      000C97                        709 _initUART0_baud_65536_45:
      000C97                        710 	.ds 4
      000C9B                        711 _sendProtocolMSG_PARM_2:
      000C9B                        712 	.ds 2
      000C9D                        713 _sendProtocolMSG_PARM_3:
      000C9D                        714 	.ds 1
      000C9E                        715 _sendProtocolMSG_PARM_4:
      000C9E                        716 	.ds 1
      000C9F                        717 _sendProtocolMSG_PARM_5:
      000C9F                        718 	.ds 1
      000CA0                        719 _sendProtocolMSG_PARM_6:
      000CA0                        720 	.ds 2
      000CA2                        721 _sendProtocolMSG_msgtype_65536_54:
      000CA2                        722 	.ds 1
      000CA3                        723 _sendHidPollMSG_PARM_2:
      000CA3                        724 	.ds 2
      000CA5                        725 _sendHidPollMSG_PARM_3:
      000CA5                        726 	.ds 1
      000CA6                        727 _sendHidPollMSG_PARM_4:
      000CA6                        728 	.ds 1
      000CA7                        729 _sendHidPollMSG_PARM_5:
      000CA7                        730 	.ds 1
      000CA8                        731 _sendHidPollMSG_PARM_6:
      000CA8                        732 	.ds 2
      000CAA                        733 _sendHidPollMSG_PARM_7:
      000CAA                        734 	.ds 1
      000CAB                        735 _sendHidPollMSG_PARM_8:
      000CAB                        736 	.ds 1
      000CAC                        737 _sendHidPollMSG_PARM_9:
      000CAC                        738 	.ds 1
      000CAD                        739 _sendHidPollMSG_PARM_10:
      000CAD                        740 	.ds 1
      000CAE                        741 _sendHidPollMSG_msgtype_65536_58:
      000CAE                        742 	.ds 1
                                    743 ;--------------------------------------------------------
                                    744 ; absolute external ram data
                                    745 ;--------------------------------------------------------
                                    746 	.area XABS    (ABS,XDATA)
                                    747 ;--------------------------------------------------------
                                    748 ; external initialized ram data
                                    749 ;--------------------------------------------------------
                                    750 	.area XISEG   (XDATA)
      000CFD                        751 _rxPos::
      000CFD                        752 	.ds 1
                                    753 	.area HOME    (CODE)
                                    754 	.area GSINIT0 (CODE)
                                    755 	.area GSINIT1 (CODE)
                                    756 	.area GSINIT2 (CODE)
                                    757 	.area GSINIT3 (CODE)
                                    758 	.area GSINIT4 (CODE)
                                    759 	.area GSINIT5 (CODE)
                                    760 	.area GSINIT  (CODE)
                                    761 	.area GSFINAL (CODE)
                                    762 	.area CSEG    (CODE)
                                    763 ;--------------------------------------------------------
                                    764 ; global & static initialisations
                                    765 ;--------------------------------------------------------
                                    766 	.area HOME    (CODE)
                                    767 	.area GSINIT  (CODE)
                                    768 	.area GSFINAL (CODE)
                                    769 	.area GSINIT  (CODE)
                                    770 ;	uart.c:9: FunctionReference runBootloader = (FunctionReference)0xF400;
      0000B8 75 08 00         [24]  771 	mov	_runBootloader,#0x00
      0000BB 75 09 F4         [24]  772 	mov	(_runBootloader + 1),#0xf4
                                    773 ;--------------------------------------------------------
                                    774 ; Home
                                    775 ;--------------------------------------------------------
                                    776 	.area HOME    (CODE)
                                    777 	.area HOME    (CODE)
                                    778 ;--------------------------------------------------------
                                    779 ; code
                                    780 ;--------------------------------------------------------
                                    781 	.area CSEG    (CODE)
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'initUART0'
                                    784 ;------------------------------------------------------------
                                    785 ;baud                      Allocated with name '_initUART0_baud_65536_45'
                                    786 ;reload                    Allocated with name '_initUART0_reload_65536_46'
                                    787 ;------------------------------------------------------------
                                    788 ;	uart.c:19: void initUART0(unsigned long baud)
                                    789 ;	-----------------------------------------
                                    790 ;	 function initUART0
                                    791 ;	-----------------------------------------
      003EF9                        792 _initUART0:
                           000007   793 	ar7 = 0x07
                           000006   794 	ar6 = 0x06
                           000005   795 	ar5 = 0x05
                           000004   796 	ar4 = 0x04
                           000003   797 	ar3 = 0x03
                           000002   798 	ar2 = 0x02
                           000001   799 	ar1 = 0x01
                           000000   800 	ar0 = 0x00
      003EF9 AF 82            [24]  801 	mov	r7,dpl
      003EFB AE 83            [24]  802 	mov	r6,dph
      003EFD AD F0            [24]  803 	mov	r5,b
      003EFF FC               [12]  804 	mov	r4,a
      003F00 90 0C 97         [24]  805 	mov	dptr,#_initUART0_baud_65536_45
      003F03 EF               [12]  806 	mov	a,r7
      003F04 F0               [24]  807 	movx	@dptr,a
      003F05 EE               [12]  808 	mov	a,r6
      003F06 A3               [24]  809 	inc	dptr
      003F07 F0               [24]  810 	movx	@dptr,a
      003F08 ED               [12]  811 	mov	a,r5
      003F09 A3               [24]  812 	inc	dptr
      003F0A F0               [24]  813 	movx	@dptr,a
      003F0B EC               [12]  814 	mov	a,r4
      003F0C A3               [24]  815 	inc	dptr
      003F0D F0               [24]  816 	movx	@dptr,a
                                    817 ;	uart.c:24: PORT_CFG |= bP0_OC;        // Разрешить альтернативную функцию на порту P0
      003F0E 43 C6 01         [24]  818 	orl	_PORT_CFG,#0x01
                                    819 ;	uart.c:25: P0_DIR  |= bTXD_;          // TXD как выход
      003F11 43 C4 08         [24]  820 	orl	_P0_DIR,#0x08
                                    821 ;	uart.c:26: P0_PU   |= bTXD_ | bRXD_;  // Включить подтяжку на TXD и RXD
      003F14 43 C5 0C         [24]  822 	orl	_P0_PU,#0x0c
                                    823 ;	uart.c:27: PIN_FUNC |= bUART0_PIN_X;  // Выбрать линию UART0 на альтернативных пинах
      003F17 43 CE 10         [24]  824 	orl	_PIN_FUNC,#0x10
                                    825 ;	uart.c:30: SM0 = 0;
                                    826 ;	assignBit
      003F1A C2 9F            [12]  827 	clr	_SM0
                                    828 ;	uart.c:31: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
                                    829 ;	assignBit
      003F1C D2 9E            [12]  830 	setb	_SM1
                                    831 ;	uart.c:32: SM2 = 0;
                                    832 ;	assignBit
      003F1E C2 9D            [12]  833 	clr	_SM2
                                    834 ;	uart.c:33: REN = 1; // Разрешить прием
                                    835 ;	assignBit
      003F20 D2 9C            [12]  836 	setb	_REN
                                    837 ;	uart.c:36: PCON |= SMOD;
      003F22 43 87 80         [24]  838 	orl	_PCON,#0x80
                                    839 ;	uart.c:40: reload = (((unsigned long)FREQ_SYS / 8) / baud + 1) / 2;
      003F25 90 0C 97         [24]  840 	mov	dptr,#_initUART0_baud_65536_45
      003F28 E0               [24]  841 	movx	a,@dptr
      003F29 FC               [12]  842 	mov	r4,a
      003F2A A3               [24]  843 	inc	dptr
      003F2B E0               [24]  844 	movx	a,@dptr
      003F2C FD               [12]  845 	mov	r5,a
      003F2D A3               [24]  846 	inc	dptr
      003F2E E0               [24]  847 	movx	a,@dptr
      003F2F FE               [12]  848 	mov	r6,a
      003F30 A3               [24]  849 	inc	dptr
      003F31 E0               [24]  850 	movx	a,@dptr
      003F32 FF               [12]  851 	mov	r7,a
      003F33 90 0C B6         [24]  852 	mov	dptr,#__divulong_PARM_2
      003F36 EC               [12]  853 	mov	a,r4
      003F37 F0               [24]  854 	movx	@dptr,a
      003F38 ED               [12]  855 	mov	a,r5
      003F39 A3               [24]  856 	inc	dptr
      003F3A F0               [24]  857 	movx	@dptr,a
      003F3B EE               [12]  858 	mov	a,r6
      003F3C A3               [24]  859 	inc	dptr
      003F3D F0               [24]  860 	movx	@dptr,a
      003F3E EF               [12]  861 	mov	a,r7
      003F3F A3               [24]  862 	inc	dptr
      003F40 F0               [24]  863 	movx	@dptr,a
      003F41 90 8D 80         [24]  864 	mov	dptr,#0x8d80
      003F44 75 F0 5B         [24]  865 	mov	b,#0x5b
      003F47 E4               [12]  866 	clr	a
      003F48 12 42 71         [24]  867 	lcall	__divulong
      003F4B AC 82            [24]  868 	mov	r4,dpl
      003F4D AD 83            [24]  869 	mov	r5,dph
      003F4F 0C               [12]  870 	inc	r4
      003F50 BC 00 01         [24]  871 	cjne	r4,#0x00,00103$
      003F53 0D               [12]  872 	inc	r5
      003F54                        873 00103$:
      003F54 ED               [12]  874 	mov	a,r5
      003F55 C3               [12]  875 	clr	c
      003F56 13               [12]  876 	rrc	a
      003F57 CC               [12]  877 	xch	a,r4
      003F58 13               [12]  878 	rrc	a
      003F59 CC               [12]  879 	xch	a,r4
                                    880 ;	uart.c:43: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
      003F5A 74 0F            [12]  881 	mov	a,#0x0f
      003F5C 55 89            [12]  882 	anl	a,_TMOD
      003F5E 44 20            [12]  883 	orl	a,#0x20
      003F60 F5 89            [12]  884 	mov	_TMOD,a
                                    885 ;	uart.c:44: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Выбрать системную частоту
      003F62 43 C9 A0         [24]  886 	orl	_T2MOD,#0xa0
                                    887 ;	uart.c:45: TH1 = (uint8_t)(256 - reload);                               // Установка перезагрузки
      003F65 C3               [12]  888 	clr	c
      003F66 E4               [12]  889 	clr	a
      003F67 9C               [12]  890 	subb	a,r4
      003F68 FC               [12]  891 	mov	r4,a
      003F69 8C 8D            [24]  892 	mov	_TH1,r4
                                    893 ;	uart.c:46: TR1 = 1;                                                     // Запускаем Timer1
                                    894 ;	assignBit
      003F6B D2 8E            [12]  895 	setb	_TR1
                                    896 ;	uart.c:49: TI = 1; // Установить флаг, чтобы первое отправление не зависло
                                    897 ;	assignBit
      003F6D D2 99            [12]  898 	setb	_TI
                                    899 ;	uart.c:50: }
      003F6F 22               [24]  900 	ret
                                    901 ;------------------------------------------------------------
                                    902 ;Allocation info for local variables in function 'processUart'
                                    903 ;------------------------------------------------------------
                                    904 ;i                         Allocated with name '_processUart_i_262144_50'
                                    905 ;------------------------------------------------------------
                                    906 ;	uart.c:52: void processUart(){
                                    907 ;	-----------------------------------------
                                    908 ;	 function processUart
                                    909 ;	-----------------------------------------
      003F70                        910 _processUart:
                                    911 ;	uart.c:53: while(RI){
      003F70                        912 00110$:
                                    913 ;	uart.c:54: RI=0;
                                    914 ;	assignBit
      003F70 10 98 01         [24]  915 	jbc	_RI,00147$
      003F73 22               [24]  916 	ret
      003F74                        917 00147$:
                                    918 ;	uart.c:55: uartRxBuff[rxPos] = SBUF;
      003F74 90 0C FD         [24]  919 	mov	dptr,#_rxPos
      003F77 E0               [24]  920 	movx	a,@dptr
      003F78 24 57            [12]  921 	add	a,#_uartRxBuff
      003F7A F5 82            [12]  922 	mov	dpl,a
      003F7C E4               [12]  923 	clr	a
      003F7D 34 0C            [12]  924 	addc	a,#(_uartRxBuff >> 8)
      003F7F F5 83            [12]  925 	mov	dph,a
      003F81 E5 99            [12]  926 	mov	a,_SBUF
      003F83 F0               [24]  927 	movx	@dptr,a
                                    928 ;	uart.c:56: if (uartRxBuff[rxPos]=='\n' || rxPos >= 64) {
      003F84 90 0C FD         [24]  929 	mov	dptr,#_rxPos
      003F87 E0               [24]  930 	movx	a,@dptr
      003F88 FF               [12]  931 	mov	r7,a
      003F89 24 57            [12]  932 	add	a,#_uartRxBuff
      003F8B F5 82            [12]  933 	mov	dpl,a
      003F8D E4               [12]  934 	clr	a
      003F8E 34 0C            [12]  935 	addc	a,#(_uartRxBuff >> 8)
      003F90 F5 83            [12]  936 	mov	dph,a
      003F92 E0               [24]  937 	movx	a,@dptr
      003F93 FE               [12]  938 	mov	r6,a
      003F94 BE 0A 02         [24]  939 	cjne	r6,#0x0a,00148$
      003F97 80 08            [24]  940 	sjmp	00121$
      003F99                        941 00148$:
      003F99 BF 40 00         [24]  942 	cjne	r7,#0x40,00149$
      003F9C                        943 00149$:
      003F9C 50 03            [24]  944 	jnc	00150$
      003F9E 02 40 11         [24]  945 	ljmp	00107$
      003FA1                        946 00150$:
                                    947 ;	uart.c:57: for (uint8_t i = 0; i < rxPos; i ++ ) {
      003FA1                        948 00121$:
      003FA1 7E 00            [12]  949 	mov	r6,#0x00
      003FA3                        950 00114$:
      003FA3 90 0C FD         [24]  951 	mov	dptr,#_rxPos
      003FA6 E0               [24]  952 	movx	a,@dptr
      003FA7 FD               [12]  953 	mov	r5,a
      003FA8 C3               [12]  954 	clr	c
      003FA9 EE               [12]  955 	mov	a,r6
      003FAA 9D               [12]  956 	subb	a,r5
      003FAB 50 2E            [24]  957 	jnc	00101$
                                    958 ;	uart.c:58: printf( "0x%02X ",uartRxBuff[i]);
      003FAD EE               [12]  959 	mov	a,r6
      003FAE 24 57            [12]  960 	add	a,#_uartRxBuff
      003FB0 F5 82            [12]  961 	mov	dpl,a
      003FB2 E4               [12]  962 	clr	a
      003FB3 34 0C            [12]  963 	addc	a,#(_uartRxBuff >> 8)
      003FB5 F5 83            [12]  964 	mov	dph,a
      003FB7 E0               [24]  965 	movx	a,@dptr
      003FB8 FD               [12]  966 	mov	r5,a
      003FB9 7C 00            [12]  967 	mov	r4,#0x00
      003FBB C0 06            [24]  968 	push	ar6
      003FBD C0 05            [24]  969 	push	ar5
      003FBF C0 04            [24]  970 	push	ar4
      003FC1 74 7F            [12]  971 	mov	a,#___str_0
      003FC3 C0 E0            [24]  972 	push	acc
      003FC5 74 54            [12]  973 	mov	a,#(___str_0 >> 8)
      003FC7 C0 E0            [24]  974 	push	acc
      003FC9 74 80            [12]  975 	mov	a,#0x80
      003FCB C0 E0            [24]  976 	push	acc
      003FCD 12 43 CE         [24]  977 	lcall	_printf
      003FD0 E5 81            [12]  978 	mov	a,sp
      003FD2 24 FB            [12]  979 	add	a,#0xfb
      003FD4 F5 81            [12]  980 	mov	sp,a
      003FD6 D0 06            [24]  981 	pop	ar6
                                    982 ;	uart.c:57: for (uint8_t i = 0; i < rxPos; i ++ ) {
      003FD8 0E               [12]  983 	inc	r6
      003FD9 80 C8            [24]  984 	sjmp	00114$
      003FDB                        985 00101$:
                                    986 ;	uart.c:60: printf("\n");
      003FDB 74 87            [12]  987 	mov	a,#___str_1
      003FDD C0 E0            [24]  988 	push	acc
      003FDF 74 54            [12]  989 	mov	a,#(___str_1 >> 8)
      003FE1 C0 E0            [24]  990 	push	acc
      003FE3 74 80            [12]  991 	mov	a,#0x80
      003FE5 C0 E0            [24]  992 	push	acc
      003FE7 12 43 CE         [24]  993 	lcall	_printf
      003FEA 15 81            [12]  994 	dec	sp
      003FEC 15 81            [12]  995 	dec	sp
      003FEE 15 81            [12]  996 	dec	sp
                                    997 ;	uart.c:61: if(uartRxBuff[0]=='k') {
      003FF0 90 0C 57         [24]  998 	mov	dptr,#_uartRxBuff
      003FF3 E0               [24]  999 	movx	a,@dptr
      003FF4 FE               [12] 1000 	mov	r6,a
      003FF5 BE 6B 11         [24] 1001 	cjne	r6,#0x6b,00105$
                                   1002 ;	uart.c:64: if(uartRxBuff[1]=='b')
      003FF8 90 0C 58         [24] 1003 	mov	dptr,#(_uartRxBuff + 0x0001)
      003FFB E0               [24] 1004 	movx	a,@dptr
      003FFC FE               [12] 1005 	mov	r6,a
      003FFD BE 62 09         [24] 1006 	cjne	r6,#0x62,00105$
                                   1007 ;	uart.c:65: runBootloader();
      004000 85 08 82         [24] 1008 	mov	dpl,_runBootloader
      004003 85 09 83         [24] 1009 	mov	dph,(_runBootloader + 1)
      004006 12 00 41         [24] 1010 	lcall	__sdcc_call_dptr
      004009                       1011 00105$:
                                   1012 ;	uart.c:67: rxPos=0;
      004009 90 0C FD         [24] 1013 	mov	dptr,#_rxPos
      00400C E4               [12] 1014 	clr	a
      00400D F0               [24] 1015 	movx	@dptr,a
      00400E 02 3F 70         [24] 1016 	ljmp	00110$
      004011                       1017 00107$:
                                   1018 ;	uart.c:69: rxPos++;
      004011 90 0C FD         [24] 1019 	mov	dptr,#_rxPos
      004014 EF               [12] 1020 	mov	a,r7
      004015 04               [12] 1021 	inc	a
      004016 F0               [24] 1022 	movx	@dptr,a
                                   1023 ;	uart.c:72: }
      004017 02 3F 70         [24] 1024 	ljmp	00110$
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'sendProtocolMSG'
                                   1027 ;------------------------------------------------------------
                                   1028 ;length                    Allocated with name '_sendProtocolMSG_PARM_2'
                                   1029 ;type                      Allocated with name '_sendProtocolMSG_PARM_3'
                                   1030 ;device                    Allocated with name '_sendProtocolMSG_PARM_4'
                                   1031 ;endpoint                  Allocated with name '_sendProtocolMSG_PARM_5'
                                   1032 ;msgbuffer                 Allocated with name '_sendProtocolMSG_PARM_6'
                                   1033 ;msgtype                   Allocated with name '_sendProtocolMSG_msgtype_65536_54'
                                   1034 ;i                         Allocated with name '_sendProtocolMSG_i_65536_55'
                                   1035 ;------------------------------------------------------------
                                   1036 ;	uart.c:74: void sendProtocolMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer){
                                   1037 ;	-----------------------------------------
                                   1038 ;	 function sendProtocolMSG
                                   1039 ;	-----------------------------------------
      00401A                       1040 _sendProtocolMSG:
      00401A E5 82            [12] 1041 	mov	a,dpl
      00401C 90 0C A2         [24] 1042 	mov	dptr,#_sendProtocolMSG_msgtype_65536_54
      00401F F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	uart.c:76: putchar(0xFE);
      004020 90 00 FE         [24] 1045 	mov	dptr,#0x00fe
      004023 12 18 FD         [24] 1046 	lcall	_putchar
                                   1047 ;	uart.c:77: putchar(length);
      004026 90 0C 9B         [24] 1048 	mov	dptr,#_sendProtocolMSG_PARM_2
      004029 E0               [24] 1049 	movx	a,@dptr
      00402A FE               [12] 1050 	mov	r6,a
      00402B A3               [24] 1051 	inc	dptr
      00402C E0               [24] 1052 	movx	a,@dptr
      00402D FF               [12] 1053 	mov	r7,a
      00402E 8E 04            [24] 1054 	mov	ar4,r6
      004030 8F 05            [24] 1055 	mov	ar5,r7
      004032 8C 82            [24] 1056 	mov	dpl,r4
      004034 8D 83            [24] 1057 	mov	dph,r5
      004036 C0 07            [24] 1058 	push	ar7
      004038 C0 06            [24] 1059 	push	ar6
      00403A 12 18 FD         [24] 1060 	lcall	_putchar
      00403D D0 06            [24] 1061 	pop	ar6
      00403F D0 07            [24] 1062 	pop	ar7
                                   1063 ;	uart.c:78: putchar((unsigned char)(length>>8));
      004041 8F 05            [24] 1064 	mov	ar5,r7
      004043 7C 00            [12] 1065 	mov	r4,#0x00
      004045 8D 82            [24] 1066 	mov	dpl,r5
      004047 8C 83            [24] 1067 	mov	dph,r4
      004049 C0 07            [24] 1068 	push	ar7
      00404B C0 06            [24] 1069 	push	ar6
      00404D 12 18 FD         [24] 1070 	lcall	_putchar
                                   1071 ;	uart.c:79: putchar(msgtype);
      004050 90 0C A2         [24] 1072 	mov	dptr,#_sendProtocolMSG_msgtype_65536_54
      004053 E0               [24] 1073 	movx	a,@dptr
      004054 FD               [12] 1074 	mov	r5,a
      004055 7C 00            [12] 1075 	mov	r4,#0x00
      004057 8D 82            [24] 1076 	mov	dpl,r5
      004059 8C 83            [24] 1077 	mov	dph,r4
      00405B 12 18 FD         [24] 1078 	lcall	_putchar
                                   1079 ;	uart.c:80: putchar(type);
      00405E 90 0C 9D         [24] 1080 	mov	dptr,#_sendProtocolMSG_PARM_3
      004061 E0               [24] 1081 	movx	a,@dptr
      004062 FD               [12] 1082 	mov	r5,a
      004063 7C 00            [12] 1083 	mov	r4,#0x00
      004065 8D 82            [24] 1084 	mov	dpl,r5
      004067 8C 83            [24] 1085 	mov	dph,r4
      004069 12 18 FD         [24] 1086 	lcall	_putchar
                                   1087 ;	uart.c:81: putchar(device);
      00406C 90 0C 9E         [24] 1088 	mov	dptr,#_sendProtocolMSG_PARM_4
      00406F E0               [24] 1089 	movx	a,@dptr
      004070 FD               [12] 1090 	mov	r5,a
      004071 7C 00            [12] 1091 	mov	r4,#0x00
      004073 8D 82            [24] 1092 	mov	dpl,r5
      004075 8C 83            [24] 1093 	mov	dph,r4
      004077 12 18 FD         [24] 1094 	lcall	_putchar
                                   1095 ;	uart.c:82: putchar(endpoint);
      00407A 90 0C 9F         [24] 1096 	mov	dptr,#_sendProtocolMSG_PARM_5
      00407D E0               [24] 1097 	movx	a,@dptr
      00407E FD               [12] 1098 	mov	r5,a
      00407F 7C 00            [12] 1099 	mov	r4,#0x00
      004081 8D 82            [24] 1100 	mov	dpl,r5
      004083 8C 83            [24] 1101 	mov	dph,r4
      004085 12 18 FD         [24] 1102 	lcall	_putchar
                                   1103 ;	uart.c:83: putchar(0);
      004088 90 00 00         [24] 1104 	mov	dptr,#0x0000
      00408B 12 18 FD         [24] 1105 	lcall	_putchar
                                   1106 ;	uart.c:84: putchar(0);
      00408E 90 00 00         [24] 1107 	mov	dptr,#0x0000
      004091 12 18 FD         [24] 1108 	lcall	_putchar
                                   1109 ;	uart.c:85: putchar(0);
      004094 90 00 00         [24] 1110 	mov	dptr,#0x0000
      004097 12 18 FD         [24] 1111 	lcall	_putchar
                                   1112 ;	uart.c:86: putchar(0);
      00409A 90 00 00         [24] 1113 	mov	dptr,#0x0000
      00409D 12 18 FD         [24] 1114 	lcall	_putchar
      0040A0 D0 06            [24] 1115 	pop	ar6
      0040A2 D0 07            [24] 1116 	pop	ar7
                                   1117 ;	uart.c:87: for (i = 0; i < length; i++)
      0040A4 90 0C A0         [24] 1118 	mov	dptr,#_sendProtocolMSG_PARM_6
      0040A7 E0               [24] 1119 	movx	a,@dptr
      0040A8 FC               [12] 1120 	mov	r4,a
      0040A9 A3               [24] 1121 	inc	dptr
      0040AA E0               [24] 1122 	movx	a,@dptr
      0040AB FD               [12] 1123 	mov	r5,a
      0040AC 7A 00            [12] 1124 	mov	r2,#0x00
      0040AE 7B 00            [12] 1125 	mov	r3,#0x00
      0040B0                       1126 00103$:
      0040B0 C3               [12] 1127 	clr	c
      0040B1 EA               [12] 1128 	mov	a,r2
      0040B2 9E               [12] 1129 	subb	a,r6
      0040B3 EB               [12] 1130 	mov	a,r3
      0040B4 9F               [12] 1131 	subb	a,r7
      0040B5 50 32            [24] 1132 	jnc	00101$
                                   1133 ;	uart.c:89: putchar(msgbuffer[i]);
      0040B7 EA               [12] 1134 	mov	a,r2
      0040B8 2C               [12] 1135 	add	a,r4
      0040B9 F5 82            [12] 1136 	mov	dpl,a
      0040BB EB               [12] 1137 	mov	a,r3
      0040BC 3D               [12] 1138 	addc	a,r5
      0040BD F5 83            [12] 1139 	mov	dph,a
      0040BF E0               [24] 1140 	movx	a,@dptr
      0040C0 F8               [12] 1141 	mov	r0,a
      0040C1 79 00            [12] 1142 	mov	r1,#0x00
      0040C3 88 82            [24] 1143 	mov	dpl,r0
      0040C5 89 83            [24] 1144 	mov	dph,r1
      0040C7 C0 07            [24] 1145 	push	ar7
      0040C9 C0 06            [24] 1146 	push	ar6
      0040CB C0 05            [24] 1147 	push	ar5
      0040CD C0 04            [24] 1148 	push	ar4
      0040CF C0 03            [24] 1149 	push	ar3
      0040D1 C0 02            [24] 1150 	push	ar2
      0040D3 12 18 FD         [24] 1151 	lcall	_putchar
      0040D6 D0 02            [24] 1152 	pop	ar2
      0040D8 D0 03            [24] 1153 	pop	ar3
      0040DA D0 04            [24] 1154 	pop	ar4
      0040DC D0 05            [24] 1155 	pop	ar5
      0040DE D0 06            [24] 1156 	pop	ar6
      0040E0 D0 07            [24] 1157 	pop	ar7
                                   1158 ;	uart.c:87: for (i = 0; i < length; i++)
      0040E2 0A               [12] 1159 	inc	r2
      0040E3 BA 00 CA         [24] 1160 	cjne	r2,#0x00,00103$
      0040E6 0B               [12] 1161 	inc	r3
      0040E7 80 C7            [24] 1162 	sjmp	00103$
      0040E9                       1163 00101$:
                                   1164 ;	uart.c:91: putchar('\n');
      0040E9 90 00 0A         [24] 1165 	mov	dptr,#0x000a
                                   1166 ;	uart.c:92: }
      0040EC 02 18 FD         [24] 1167 	ljmp	_putchar
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'sendHidPollMSG'
                                   1170 ;------------------------------------------------------------
                                   1171 ;length                    Allocated with name '_sendHidPollMSG_PARM_2'
                                   1172 ;type                      Allocated with name '_sendHidPollMSG_PARM_3'
                                   1173 ;device                    Allocated with name '_sendHidPollMSG_PARM_4'
                                   1174 ;endpoint                  Allocated with name '_sendHidPollMSG_PARM_5'
                                   1175 ;msgbuffer                 Allocated with name '_sendHidPollMSG_PARM_6'
                                   1176 ;idVendorL                 Allocated with name '_sendHidPollMSG_PARM_7'
                                   1177 ;idVendorH                 Allocated with name '_sendHidPollMSG_PARM_8'
                                   1178 ;idProductL                Allocated with name '_sendHidPollMSG_PARM_9'
                                   1179 ;idProductH                Allocated with name '_sendHidPollMSG_PARM_10'
                                   1180 ;msgtype                   Allocated with name '_sendHidPollMSG_msgtype_65536_58'
                                   1181 ;i                         Allocated with name '_sendHidPollMSG_i_65536_59'
                                   1182 ;------------------------------------------------------------
                                   1183 ;	uart.c:94: void sendHidPollMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer,unsigned char idVendorL,unsigned char idVendorH,unsigned char idProductL,unsigned char idProductH){
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function sendHidPollMSG
                                   1186 ;	-----------------------------------------
      0040EF                       1187 _sendHidPollMSG:
      0040EF E5 82            [12] 1188 	mov	a,dpl
      0040F1 90 0C AE         [24] 1189 	mov	dptr,#_sendHidPollMSG_msgtype_65536_58
      0040F4 F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	uart.c:96: putchar(0xFE);    
      0040F5 90 00 FE         [24] 1192 	mov	dptr,#0x00fe
      0040F8 12 18 FD         [24] 1193 	lcall	_putchar
                                   1194 ;	uart.c:97: putchar(length);
      0040FB 90 0C A3         [24] 1195 	mov	dptr,#_sendHidPollMSG_PARM_2
      0040FE E0               [24] 1196 	movx	a,@dptr
      0040FF FE               [12] 1197 	mov	r6,a
      004100 A3               [24] 1198 	inc	dptr
      004101 E0               [24] 1199 	movx	a,@dptr
      004102 FF               [12] 1200 	mov	r7,a
      004103 8E 04            [24] 1201 	mov	ar4,r6
      004105 8F 05            [24] 1202 	mov	ar5,r7
      004107 8C 82            [24] 1203 	mov	dpl,r4
      004109 8D 83            [24] 1204 	mov	dph,r5
      00410B C0 07            [24] 1205 	push	ar7
      00410D C0 06            [24] 1206 	push	ar6
      00410F 12 18 FD         [24] 1207 	lcall	_putchar
      004112 D0 06            [24] 1208 	pop	ar6
      004114 D0 07            [24] 1209 	pop	ar7
                                   1210 ;	uart.c:98: putchar((unsigned char)(length>>8));
      004116 8F 05            [24] 1211 	mov	ar5,r7
      004118 7C 00            [12] 1212 	mov	r4,#0x00
      00411A 8D 82            [24] 1213 	mov	dpl,r5
      00411C 8C 83            [24] 1214 	mov	dph,r4
      00411E C0 07            [24] 1215 	push	ar7
      004120 C0 06            [24] 1216 	push	ar6
      004122 12 18 FD         [24] 1217 	lcall	_putchar
                                   1218 ;	uart.c:99: putchar(msgtype);
      004125 90 0C AE         [24] 1219 	mov	dptr,#_sendHidPollMSG_msgtype_65536_58
      004128 E0               [24] 1220 	movx	a,@dptr
      004129 FD               [12] 1221 	mov	r5,a
      00412A 7C 00            [12] 1222 	mov	r4,#0x00
      00412C 8D 82            [24] 1223 	mov	dpl,r5
      00412E 8C 83            [24] 1224 	mov	dph,r4
      004130 12 18 FD         [24] 1225 	lcall	_putchar
                                   1226 ;	uart.c:100: putchar(type);
      004133 90 0C A5         [24] 1227 	mov	dptr,#_sendHidPollMSG_PARM_3
      004136 E0               [24] 1228 	movx	a,@dptr
      004137 FD               [12] 1229 	mov	r5,a
      004138 7C 00            [12] 1230 	mov	r4,#0x00
      00413A 8D 82            [24] 1231 	mov	dpl,r5
      00413C 8C 83            [24] 1232 	mov	dph,r4
      00413E 12 18 FD         [24] 1233 	lcall	_putchar
                                   1234 ;	uart.c:101: putchar(device);
      004141 90 0C A6         [24] 1235 	mov	dptr,#_sendHidPollMSG_PARM_4
      004144 E0               [24] 1236 	movx	a,@dptr
      004145 FD               [12] 1237 	mov	r5,a
      004146 7C 00            [12] 1238 	mov	r4,#0x00
      004148 8D 82            [24] 1239 	mov	dpl,r5
      00414A 8C 83            [24] 1240 	mov	dph,r4
      00414C 12 18 FD         [24] 1241 	lcall	_putchar
                                   1242 ;	uart.c:102: putchar(endpoint);
      00414F 90 0C A7         [24] 1243 	mov	dptr,#_sendHidPollMSG_PARM_5
      004152 E0               [24] 1244 	movx	a,@dptr
      004153 FD               [12] 1245 	mov	r5,a
      004154 7C 00            [12] 1246 	mov	r4,#0x00
      004156 8D 82            [24] 1247 	mov	dpl,r5
      004158 8C 83            [24] 1248 	mov	dph,r4
      00415A 12 18 FD         [24] 1249 	lcall	_putchar
                                   1250 ;	uart.c:103: putchar(idVendorL);
      00415D 90 0C AA         [24] 1251 	mov	dptr,#_sendHidPollMSG_PARM_7
      004160 E0               [24] 1252 	movx	a,@dptr
      004161 FD               [12] 1253 	mov	r5,a
      004162 7C 00            [12] 1254 	mov	r4,#0x00
      004164 8D 82            [24] 1255 	mov	dpl,r5
      004166 8C 83            [24] 1256 	mov	dph,r4
      004168 12 18 FD         [24] 1257 	lcall	_putchar
                                   1258 ;	uart.c:104: putchar(idVendorH);
      00416B 90 0C AB         [24] 1259 	mov	dptr,#_sendHidPollMSG_PARM_8
      00416E E0               [24] 1260 	movx	a,@dptr
      00416F FD               [12] 1261 	mov	r5,a
      004170 7C 00            [12] 1262 	mov	r4,#0x00
      004172 8D 82            [24] 1263 	mov	dpl,r5
      004174 8C 83            [24] 1264 	mov	dph,r4
      004176 12 18 FD         [24] 1265 	lcall	_putchar
                                   1266 ;	uart.c:105: putchar(idProductL);
      004179 90 0C AC         [24] 1267 	mov	dptr,#_sendHidPollMSG_PARM_9
      00417C E0               [24] 1268 	movx	a,@dptr
      00417D FD               [12] 1269 	mov	r5,a
      00417E 7C 00            [12] 1270 	mov	r4,#0x00
      004180 8D 82            [24] 1271 	mov	dpl,r5
      004182 8C 83            [24] 1272 	mov	dph,r4
      004184 12 18 FD         [24] 1273 	lcall	_putchar
                                   1274 ;	uart.c:106: putchar(idProductH);
      004187 90 0C AD         [24] 1275 	mov	dptr,#_sendHidPollMSG_PARM_10
      00418A E0               [24] 1276 	movx	a,@dptr
      00418B FD               [12] 1277 	mov	r5,a
      00418C 7C 00            [12] 1278 	mov	r4,#0x00
      00418E 8D 82            [24] 1279 	mov	dpl,r5
      004190 8C 83            [24] 1280 	mov	dph,r4
      004192 12 18 FD         [24] 1281 	lcall	_putchar
      004195 D0 06            [24] 1282 	pop	ar6
      004197 D0 07            [24] 1283 	pop	ar7
                                   1284 ;	uart.c:107: for (i = 0; i < length; i++)
      004199 90 0C A8         [24] 1285 	mov	dptr,#_sendHidPollMSG_PARM_6
      00419C E0               [24] 1286 	movx	a,@dptr
      00419D FC               [12] 1287 	mov	r4,a
      00419E A3               [24] 1288 	inc	dptr
      00419F E0               [24] 1289 	movx	a,@dptr
      0041A0 FD               [12] 1290 	mov	r5,a
      0041A1 7A 00            [12] 1291 	mov	r2,#0x00
      0041A3 7B 00            [12] 1292 	mov	r3,#0x00
      0041A5                       1293 00103$:
      0041A5 C3               [12] 1294 	clr	c
      0041A6 EA               [12] 1295 	mov	a,r2
      0041A7 9E               [12] 1296 	subb	a,r6
      0041A8 EB               [12] 1297 	mov	a,r3
      0041A9 9F               [12] 1298 	subb	a,r7
      0041AA 50 32            [24] 1299 	jnc	00101$
                                   1300 ;	uart.c:109: putchar(msgbuffer[i]);
      0041AC EA               [12] 1301 	mov	a,r2
      0041AD 2C               [12] 1302 	add	a,r4
      0041AE F5 82            [12] 1303 	mov	dpl,a
      0041B0 EB               [12] 1304 	mov	a,r3
      0041B1 3D               [12] 1305 	addc	a,r5
      0041B2 F5 83            [12] 1306 	mov	dph,a
      0041B4 E0               [24] 1307 	movx	a,@dptr
      0041B5 F8               [12] 1308 	mov	r0,a
      0041B6 79 00            [12] 1309 	mov	r1,#0x00
      0041B8 88 82            [24] 1310 	mov	dpl,r0
      0041BA 89 83            [24] 1311 	mov	dph,r1
      0041BC C0 07            [24] 1312 	push	ar7
      0041BE C0 06            [24] 1313 	push	ar6
      0041C0 C0 05            [24] 1314 	push	ar5
      0041C2 C0 04            [24] 1315 	push	ar4
      0041C4 C0 03            [24] 1316 	push	ar3
      0041C6 C0 02            [24] 1317 	push	ar2
      0041C8 12 18 FD         [24] 1318 	lcall	_putchar
      0041CB D0 02            [24] 1319 	pop	ar2
      0041CD D0 03            [24] 1320 	pop	ar3
      0041CF D0 04            [24] 1321 	pop	ar4
      0041D1 D0 05            [24] 1322 	pop	ar5
      0041D3 D0 06            [24] 1323 	pop	ar6
      0041D5 D0 07            [24] 1324 	pop	ar7
                                   1325 ;	uart.c:107: for (i = 0; i < length; i++)
      0041D7 0A               [12] 1326 	inc	r2
      0041D8 BA 00 CA         [24] 1327 	cjne	r2,#0x00,00103$
      0041DB 0B               [12] 1328 	inc	r3
      0041DC 80 C7            [24] 1329 	sjmp	00103$
      0041DE                       1330 00101$:
                                   1331 ;	uart.c:111: putchar('\n');
      0041DE 90 00 0A         [24] 1332 	mov	dptr,#0x000a
                                   1333 ;	uart.c:112: }
      0041E1 02 18 FD         [24] 1334 	ljmp	_putchar
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area CONST   (CODE)
                                   1337 	.area CONST   (CODE)
      00547F                       1338 ___str_0:
      00547F 30 78 25 30 32 58 20  1339 	.ascii "0x%02X "
      005486 00                    1340 	.db 0x00
                                   1341 	.area CSEG    (CODE)
                                   1342 	.area CONST   (CODE)
      005487                       1343 ___str_1:
      005487 0A                    1344 	.db 0x0a
      005488 00                    1345 	.db 0x00
                                   1346 	.area CSEG    (CODE)
                                   1347 	.area XINIT   (CODE)
      005494                       1348 __xinit__rxPos:
      005494 00                    1349 	.db #0x00	; 0
                                   1350 	.area CABS    (ABS,CODE)
