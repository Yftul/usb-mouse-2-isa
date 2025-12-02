                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module USBHost
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GetHIDReport
                                     12 	.globl _SetHIDIdleRequest
                                     13 	.globl _SetupSetUsbConfig
                                     14 	.globl _GetDeviceStringRequest
                                     15 	.globl _SetUSBAddressRequest
                                     16 	.globl _GetInterfaceDescriptorRequest
                                     17 	.globl _GetConfigurationDescriptorRequest
                                     18 	.globl _GetDeviceDescriptorRequest
                                     19 	.globl _flash_led
                                     20 	.globl _memset
                                     21 	.globl _delay
                                     22 	.globl _delayUs
                                     23 	.globl _UIF_BUS_RST
                                     24 	.globl _UIF_DETECT
                                     25 	.globl _UIF_TRANSFER
                                     26 	.globl _UIF_SUSPEND
                                     27 	.globl _UIF_HST_SOF
                                     28 	.globl _UIF_FIFO_OV
                                     29 	.globl _U_SIE_FREE
                                     30 	.globl _U_TOG_OK
                                     31 	.globl _U_IS_NAK
                                     32 	.globl _S0_R_FIFO0
                                     33 	.globl _S0_R_FIFO1
                                     34 	.globl _S0_T_FIFO
                                     35 	.globl _S0_FREE
                                     36 	.globl _S0_IF_BYTE
                                     37 	.globl _S0_IF_FIRST
                                     38 	.globl _S0_IF_OV
                                     39 	.globl _S0_FST_ACT
                                     40 	.globl _CP_RL2
                                     41 	.globl _C_T2
                                     42 	.globl _TR2
                                     43 	.globl _EXEN2
                                     44 	.globl _TCLK
                                     45 	.globl _RCLK
                                     46 	.globl _EXF2
                                     47 	.globl _CAP1F
                                     48 	.globl _TF2
                                     49 	.globl _RI
                                     50 	.globl _TI
                                     51 	.globl _RB8
                                     52 	.globl _TB8
                                     53 	.globl _REN
                                     54 	.globl _SM2
                                     55 	.globl _SM1
                                     56 	.globl _SM0
                                     57 	.globl _IT0
                                     58 	.globl _IE0
                                     59 	.globl _IT1
                                     60 	.globl _IE1
                                     61 	.globl _TR0
                                     62 	.globl _TF0
                                     63 	.globl _TR1
                                     64 	.globl _TF1
                                     65 	.globl _RXD1_
                                     66 	.globl _LED2
                                     67 	.globl _CAP3_
                                     68 	.globl _PWM3_
                                     69 	.globl _PWM1_
                                     70 	.globl _TXD1_
                                     71 	.globl _TNOW_
                                     72 	.globl _LED3
                                     73 	.globl _PWM2_
                                     74 	.globl _SCS_
                                     75 	.globl _SCK_
                                     76 	.globl _RXD
                                     77 	.globl _TXD
                                     78 	.globl _INT0
                                     79 	.globl _LED0
                                     80 	.globl _INT1
                                     81 	.globl _LED1
                                     82 	.globl _T0
                                     83 	.globl _XCS0
                                     84 	.globl _LEDC
                                     85 	.globl _T1
                                     86 	.globl _DA6
                                     87 	.globl _WR
                                     88 	.globl _RD
                                     89 	.globl _MOSI1
                                     90 	.globl _MISO1
                                     91 	.globl _SCK1
                                     92 	.globl _PWM1
                                     93 	.globl _CAP2_
                                     94 	.globl _T2EX_
                                     95 	.globl _PWM2
                                     96 	.globl _TNOW
                                     97 	.globl _RXD1
                                     98 	.globl _DA7
                                     99 	.globl _TXD1
                                    100 	.globl _CAP1
                                    101 	.globl _T2
                                    102 	.globl _CAP2
                                    103 	.globl _T2EX
                                    104 	.globl _CAP3
                                    105 	.globl _PWM3
                                    106 	.globl _SCS
                                    107 	.globl _MOSI
                                    108 	.globl _MISO
                                    109 	.globl _SCK
                                    110 	.globl _AIN0
                                    111 	.globl _AIN1
                                    112 	.globl _AIN2
                                    113 	.globl _AIN3
                                    114 	.globl _AIN4
                                    115 	.globl _AIN5
                                    116 	.globl _AIN6
                                    117 	.globl _AIN7
                                    118 	.globl _UDTR
                                    119 	.globl _URTS
                                    120 	.globl _RXD_
                                    121 	.globl _TXD_
                                    122 	.globl _UCTS
                                    123 	.globl _UDSR
                                    124 	.globl _URI
                                    125 	.globl _UDCD
                                    126 	.globl _IE_SPI0
                                    127 	.globl _IE_TMR3
                                    128 	.globl _IE_USB
                                    129 	.globl _IE_ADC
                                    130 	.globl _IE_UART1
                                    131 	.globl _IE_PWM1
                                    132 	.globl _IE_GPIO
                                    133 	.globl _IE_WDOG
                                    134 	.globl _PX0
                                    135 	.globl _PT0
                                    136 	.globl _PX1
                                    137 	.globl _PT1
                                    138 	.globl _PS
                                    139 	.globl _PT2
                                    140 	.globl _PL_FLAG
                                    141 	.globl _PH_FLAG
                                    142 	.globl _EX0
                                    143 	.globl _ET0
                                    144 	.globl _EX1
                                    145 	.globl _ET1
                                    146 	.globl _ES
                                    147 	.globl _ET2
                                    148 	.globl _E_DIS
                                    149 	.globl _EA
                                    150 	.globl _P
                                    151 	.globl _F1
                                    152 	.globl _OV
                                    153 	.globl _RS0
                                    154 	.globl _RS1
                                    155 	.globl _F0
                                    156 	.globl _AC
                                    157 	.globl _CY
                                    158 	.globl _USB_DMA_AH
                                    159 	.globl _USB_DMA_AL
                                    160 	.globl _USB_DMA
                                    161 	.globl _UHUB1_CTRL
                                    162 	.globl _UDEV_CTRL
                                    163 	.globl _USB_DEV_AD
                                    164 	.globl _USB_CTRL
                                    165 	.globl _USB_INT_EN
                                    166 	.globl _UEP4_T_LEN
                                    167 	.globl _UEP4_CTRL
                                    168 	.globl _UEP0_T_LEN
                                    169 	.globl _UEP0_CTRL
                                    170 	.globl _USB_HUB_ST
                                    171 	.globl _USB_MIS_ST
                                    172 	.globl _USB_INT_ST
                                    173 	.globl _USB_INT_FG
                                    174 	.globl _UEP3_T_LEN
                                    175 	.globl _UEP3_CTRL
                                    176 	.globl _UEP2_T_LEN
                                    177 	.globl _UEP2_CTRL
                                    178 	.globl _UEP1_T_LEN
                                    179 	.globl _UEP1_CTRL
                                    180 	.globl _USB_RX_LEN
                                    181 	.globl _ADC_EX_SW
                                    182 	.globl _ADC_SETUP
                                    183 	.globl _ADC_FIFO_H
                                    184 	.globl _ADC_FIFO_L
                                    185 	.globl _ADC_FIFO
                                    186 	.globl _ADC_CHANN
                                    187 	.globl _ADC_CTRL
                                    188 	.globl _ADC_STAT
                                    189 	.globl _ADC_CK_SE
                                    190 	.globl _ADC_DMA_CN
                                    191 	.globl _ADC_DMA_AH
                                    192 	.globl _ADC_DMA_AL
                                    193 	.globl _ADC_DMA
                                    194 	.globl _SER1_ADDR
                                    195 	.globl _SER1_MSR
                                    196 	.globl _SER1_LSR
                                    197 	.globl _SER1_MCR
                                    198 	.globl _SER1_LCR
                                    199 	.globl _SER1_IIR
                                    200 	.globl _SER1_IER
                                    201 	.globl _SER1_FIFO
                                    202 	.globl _SPI1_CK_SE
                                    203 	.globl _SPI1_CTRL
                                    204 	.globl _SPI1_DATA
                                    205 	.globl _SPI1_STAT
                                    206 	.globl _SPI0_SETUP
                                    207 	.globl _SPI0_CK_SE
                                    208 	.globl _SPI0_CTRL
                                    209 	.globl _SPI0_DATA
                                    210 	.globl _SPI0_STAT
                                    211 	.globl _PWM_CYCLE
                                    212 	.globl _PWM_CK_SE
                                    213 	.globl _PWM_CTRL
                                    214 	.globl _PWM_DATA
                                    215 	.globl _PWM_DATA2
                                    216 	.globl _T3_FIFO_H
                                    217 	.globl _T3_FIFO_L
                                    218 	.globl _T3_FIFO
                                    219 	.globl _T3_DMA_AH
                                    220 	.globl _T3_DMA_AL
                                    221 	.globl _T3_DMA
                                    222 	.globl _T3_DMA_CN
                                    223 	.globl _T3_CTRL
                                    224 	.globl _T3_STAT
                                    225 	.globl _T3_END_H
                                    226 	.globl _T3_END_L
                                    227 	.globl _T3_END
                                    228 	.globl _T3_COUNT_H
                                    229 	.globl _T3_COUNT_L
                                    230 	.globl _T3_COUNT
                                    231 	.globl _T3_SETUP
                                    232 	.globl _TH2
                                    233 	.globl _TL2
                                    234 	.globl _T2COUNT
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _RCAP2
                                    238 	.globl _T2MOD
                                    239 	.globl _T2CON
                                    240 	.globl _SBUF
                                    241 	.globl _SCON
                                    242 	.globl _TH1
                                    243 	.globl _TH0
                                    244 	.globl _TL1
                                    245 	.globl _TL0
                                    246 	.globl _TMOD
                                    247 	.globl _TCON
                                    248 	.globl _XBUS_SPEED
                                    249 	.globl _XBUS_AUX
                                    250 	.globl _PIN_FUNC
                                    251 	.globl _PORT_CFG
                                    252 	.globl _P5_IN
                                    253 	.globl _P4_PU
                                    254 	.globl _P4_DIR
                                    255 	.globl _P4_IN
                                    256 	.globl _P4_OUT
                                    257 	.globl _P3_PU
                                    258 	.globl _P3_DIR
                                    259 	.globl _P3
                                    260 	.globl _P2_PU
                                    261 	.globl _P2_DIR
                                    262 	.globl _P2
                                    263 	.globl _P1_PU
                                    264 	.globl _P1_DIR
                                    265 	.globl _P1_IE
                                    266 	.globl _P1
                                    267 	.globl _P0_PU
                                    268 	.globl _P0_DIR
                                    269 	.globl _P0
                                    270 	.globl _ROM_CTRL
                                    271 	.globl _ROM_DATA_H
                                    272 	.globl _ROM_DATA_L
                                    273 	.globl _ROM_DATA
                                    274 	.globl _ROM_ADDR_H
                                    275 	.globl _ROM_ADDR_L
                                    276 	.globl _ROM_ADDR
                                    277 	.globl _GPIO_IE
                                    278 	.globl _IP_EX
                                    279 	.globl _IE_EX
                                    280 	.globl _IP
                                    281 	.globl _IE
                                    282 	.globl _WDOG_COUNT
                                    283 	.globl _RESET_KEEP
                                    284 	.globl _WAKE_CTRL
                                    285 	.globl _SLEEP_CTRL
                                    286 	.globl _CLOCK_CFG
                                    287 	.globl _PLL_CFG
                                    288 	.globl _PCON
                                    289 	.globl _GLOBAL_CFG
                                    290 	.globl _SAFE_MOD
                                    291 	.globl _DPH
                                    292 	.globl _DPL
                                    293 	.globl _SP
                                    294 	.globl _B
                                    295 	.globl _ACC
                                    296 	.globl _PSW
                                    297 	.globl _pollHIDdevice_PARM_4
                                    298 	.globl _pollHIDdevice_PARM_3
                                    299 	.globl _pollHIDdevice_PARM_2
                                    300 	.globl _rootHubDevice
                                    301 	.globl _VendorProductID
                                    302 	.globl _HIDdevice
                                    303 	.globl _receiveDataBuffer
                                    304 	.globl _endpoint0Size
                                    305 	.globl _TxBuffer
                                    306 	.globl _RxBuffer
                                    307 	.globl _LED_DMA_XL
                                    308 	.globl _LED_DMA_XH
                                    309 	.globl _LED_DMA_CN
                                    310 	.globl _LED_DMA_AL
                                    311 	.globl _LED_DMA_AH
                                    312 	.globl _LED_CK_SE
                                    313 	.globl _LED_DATA
                                    314 	.globl _LED_CTRL
                                    315 	.globl _LED_STAT
                                    316 	.globl _pUEP3_DMA_L
                                    317 	.globl _pUEP3_DMA_H
                                    318 	.globl _UEP3_DMA_H
                                    319 	.globl _UEP3_DMA_L
                                    320 	.globl _UEP3_DMA
                                    321 	.globl _pUEP2_DMA_L
                                    322 	.globl _pUEP2_DMA_H
                                    323 	.globl _UEP2_DMA_H
                                    324 	.globl _UEP2_DMA_L
                                    325 	.globl _UEP2_DMA
                                    326 	.globl _pUEP1_DMA_L
                                    327 	.globl _pUEP1_DMA_H
                                    328 	.globl _UEP1_DMA_L
                                    329 	.globl _UEP1_DMA_H
                                    330 	.globl _pUEP0_DMA_L
                                    331 	.globl _pUEP0_DMA_H
                                    332 	.globl _UEP0_DMA_L
                                    333 	.globl _UEP0_DMA_H
                                    334 	.globl _UEP2_3_MOD
                                    335 	.globl _UEP4_1_MOD
                                    336 	.globl _pLED_DMA_XL
                                    337 	.globl _pLED_DMA_XH
                                    338 	.globl _pLED_DMA_CN
                                    339 	.globl _pLED_DMA_AL
                                    340 	.globl _pLED_DMA_AH
                                    341 	.globl _pLED_CK_SE
                                    342 	.globl _pLED_DATA
                                    343 	.globl _pLED_CTRL
                                    344 	.globl _pLED_STAT
                                    345 	.globl _pUEP2_3_MOD
                                    346 	.globl _pUEP4_1_MOD
                                    347 	.globl _initUSB_Host
                                    348 	.globl _resetHubDevices
                                    349 	.globl _pollHIDdevice
                                    350 	.globl _checkRootHubConnections
                                    351 ;--------------------------------------------------------
                                    352 ; special function registers
                                    353 ;--------------------------------------------------------
                                    354 	.area RSEG    (ABS,DATA)
      000000                        355 	.org 0x0000
                           0000D0   356 _PSW	=	0x00d0
                           0000E0   357 _ACC	=	0x00e0
                           0000F0   358 _B	=	0x00f0
                           000081   359 _SP	=	0x0081
                           000082   360 _DPL	=	0x0082
                           000083   361 _DPH	=	0x0083
                           0000A1   362 _SAFE_MOD	=	0x00a1
                           0000B1   363 _GLOBAL_CFG	=	0x00b1
                           000087   364 _PCON	=	0x0087
                           0000B2   365 _PLL_CFG	=	0x00b2
                           0000B3   366 _CLOCK_CFG	=	0x00b3
                           0000EA   367 _SLEEP_CTRL	=	0x00ea
                           0000EB   368 _WAKE_CTRL	=	0x00eb
                           0000FE   369 _RESET_KEEP	=	0x00fe
                           0000FF   370 _WDOG_COUNT	=	0x00ff
                           0000A8   371 _IE	=	0x00a8
                           0000B8   372 _IP	=	0x00b8
                           0000E8   373 _IE_EX	=	0x00e8
                           0000E9   374 _IP_EX	=	0x00e9
                           0000CF   375 _GPIO_IE	=	0x00cf
                           008584   376 _ROM_ADDR	=	0x8584
                           000084   377 _ROM_ADDR_L	=	0x0084
                           000085   378 _ROM_ADDR_H	=	0x0085
                           008F8E   379 _ROM_DATA	=	0x8f8e
                           00008E   380 _ROM_DATA_L	=	0x008e
                           00008F   381 _ROM_DATA_H	=	0x008f
                           000086   382 _ROM_CTRL	=	0x0086
                           000080   383 _P0	=	0x0080
                           0000C4   384 _P0_DIR	=	0x00c4
                           0000C5   385 _P0_PU	=	0x00c5
                           000090   386 _P1	=	0x0090
                           0000B9   387 _P1_IE	=	0x00b9
                           0000BA   388 _P1_DIR	=	0x00ba
                           0000BB   389 _P1_PU	=	0x00bb
                           0000A0   390 _P2	=	0x00a0
                           0000BC   391 _P2_DIR	=	0x00bc
                           0000BD   392 _P2_PU	=	0x00bd
                           0000B0   393 _P3	=	0x00b0
                           0000BE   394 _P3_DIR	=	0x00be
                           0000BF   395 _P3_PU	=	0x00bf
                           0000C0   396 _P4_OUT	=	0x00c0
                           0000C1   397 _P4_IN	=	0x00c1
                           0000C2   398 _P4_DIR	=	0x00c2
                           0000C3   399 _P4_PU	=	0x00c3
                           0000C7   400 _P5_IN	=	0x00c7
                           0000C6   401 _PORT_CFG	=	0x00c6
                           0000CE   402 _PIN_FUNC	=	0x00ce
                           0000A2   403 _XBUS_AUX	=	0x00a2
                           0000FD   404 _XBUS_SPEED	=	0x00fd
                           000088   405 _TCON	=	0x0088
                           000089   406 _TMOD	=	0x0089
                           00008A   407 _TL0	=	0x008a
                           00008B   408 _TL1	=	0x008b
                           00008C   409 _TH0	=	0x008c
                           00008D   410 _TH1	=	0x008d
                           000098   411 _SCON	=	0x0098
                           000099   412 _SBUF	=	0x0099
                           0000C8   413 _T2CON	=	0x00c8
                           0000C9   414 _T2MOD	=	0x00c9
                           00CBCA   415 _RCAP2	=	0xcbca
                           0000CA   416 _RCAP2L	=	0x00ca
                           0000CB   417 _RCAP2H	=	0x00cb
                           00CDCC   418 _T2COUNT	=	0xcdcc
                           0000CC   419 _TL2	=	0x00cc
                           0000CD   420 _TH2	=	0x00cd
                           0000A3   421 _T3_SETUP	=	0x00a3
                           00A5A4   422 _T3_COUNT	=	0xa5a4
                           0000A4   423 _T3_COUNT_L	=	0x00a4
                           0000A5   424 _T3_COUNT_H	=	0x00a5
                           00A7A6   425 _T3_END	=	0xa7a6
                           0000A6   426 _T3_END_L	=	0x00a6
                           0000A7   427 _T3_END_H	=	0x00a7
                           0000A9   428 _T3_STAT	=	0x00a9
                           0000AA   429 _T3_CTRL	=	0x00aa
                           0000AB   430 _T3_DMA_CN	=	0x00ab
                           00ADAC   431 _T3_DMA	=	0xadac
                           0000AC   432 _T3_DMA_AL	=	0x00ac
                           0000AD   433 _T3_DMA_AH	=	0x00ad
                           00AFAE   434 _T3_FIFO	=	0xafae
                           0000AE   435 _T3_FIFO_L	=	0x00ae
                           0000AF   436 _T3_FIFO_H	=	0x00af
                           00009B   437 _PWM_DATA2	=	0x009b
                           00009C   438 _PWM_DATA	=	0x009c
                           00009D   439 _PWM_CTRL	=	0x009d
                           00009E   440 _PWM_CK_SE	=	0x009e
                           00009F   441 _PWM_CYCLE	=	0x009f
                           0000F8   442 _SPI0_STAT	=	0x00f8
                           0000F9   443 _SPI0_DATA	=	0x00f9
                           0000FA   444 _SPI0_CTRL	=	0x00fa
                           0000FB   445 _SPI0_CK_SE	=	0x00fb
                           0000FC   446 _SPI0_SETUP	=	0x00fc
                           0000B4   447 _SPI1_STAT	=	0x00b4
                           0000B5   448 _SPI1_DATA	=	0x00b5
                           0000B6   449 _SPI1_CTRL	=	0x00b6
                           0000B7   450 _SPI1_CK_SE	=	0x00b7
                           00009A   451 _SER1_FIFO	=	0x009a
                           000091   452 _SER1_IER	=	0x0091
                           000092   453 _SER1_IIR	=	0x0092
                           000093   454 _SER1_LCR	=	0x0093
                           000094   455 _SER1_MCR	=	0x0094
                           000095   456 _SER1_LSR	=	0x0095
                           000096   457 _SER1_MSR	=	0x0096
                           000097   458 _SER1_ADDR	=	0x0097
                           00EDEC   459 _ADC_DMA	=	0xedec
                           0000EC   460 _ADC_DMA_AL	=	0x00ec
                           0000ED   461 _ADC_DMA_AH	=	0x00ed
                           0000EE   462 _ADC_DMA_CN	=	0x00ee
                           0000EF   463 _ADC_CK_SE	=	0x00ef
                           0000F1   464 _ADC_STAT	=	0x00f1
                           0000F2   465 _ADC_CTRL	=	0x00f2
                           0000F3   466 _ADC_CHANN	=	0x00f3
                           00F5F4   467 _ADC_FIFO	=	0xf5f4
                           0000F4   468 _ADC_FIFO_L	=	0x00f4
                           0000F5   469 _ADC_FIFO_H	=	0x00f5
                           0000F6   470 _ADC_SETUP	=	0x00f6
                           0000F7   471 _ADC_EX_SW	=	0x00f7
                           0000D1   472 _USB_RX_LEN	=	0x00d1
                           0000D2   473 _UEP1_CTRL	=	0x00d2
                           0000D3   474 _UEP1_T_LEN	=	0x00d3
                           0000D4   475 _UEP2_CTRL	=	0x00d4
                           0000D5   476 _UEP2_T_LEN	=	0x00d5
                           0000D6   477 _UEP3_CTRL	=	0x00d6
                           0000D7   478 _UEP3_T_LEN	=	0x00d7
                           0000D8   479 _USB_INT_FG	=	0x00d8
                           0000D9   480 _USB_INT_ST	=	0x00d9
                           0000DA   481 _USB_MIS_ST	=	0x00da
                           0000DB   482 _USB_HUB_ST	=	0x00db
                           0000DC   483 _UEP0_CTRL	=	0x00dc
                           0000DD   484 _UEP0_T_LEN	=	0x00dd
                           0000DE   485 _UEP4_CTRL	=	0x00de
                           0000DF   486 _UEP4_T_LEN	=	0x00df
                           0000E1   487 _USB_INT_EN	=	0x00e1
                           0000E2   488 _USB_CTRL	=	0x00e2
                           0000E3   489 _USB_DEV_AD	=	0x00e3
                           0000E4   490 _UDEV_CTRL	=	0x00e4
                           0000E5   491 _UHUB1_CTRL	=	0x00e5
                           00E7E6   492 _USB_DMA	=	0xe7e6
                           0000E6   493 _USB_DMA_AL	=	0x00e6
                           0000E7   494 _USB_DMA_AH	=	0x00e7
                                    495 ;--------------------------------------------------------
                                    496 ; special function bits
                                    497 ;--------------------------------------------------------
                                    498 	.area RSEG    (ABS,DATA)
      000000                        499 	.org 0x0000
                           0000D7   500 _CY	=	0x00d7
                           0000D6   501 _AC	=	0x00d6
                           0000D5   502 _F0	=	0x00d5
                           0000D4   503 _RS1	=	0x00d4
                           0000D3   504 _RS0	=	0x00d3
                           0000D2   505 _OV	=	0x00d2
                           0000D1   506 _F1	=	0x00d1
                           0000D0   507 _P	=	0x00d0
                           0000AF   508 _EA	=	0x00af
                           0000AE   509 _E_DIS	=	0x00ae
                           0000AD   510 _ET2	=	0x00ad
                           0000AC   511 _ES	=	0x00ac
                           0000AB   512 _ET1	=	0x00ab
                           0000AA   513 _EX1	=	0x00aa
                           0000A9   514 _ET0	=	0x00a9
                           0000A8   515 _EX0	=	0x00a8
                           0000BF   516 _PH_FLAG	=	0x00bf
                           0000BE   517 _PL_FLAG	=	0x00be
                           0000BD   518 _PT2	=	0x00bd
                           0000BC   519 _PS	=	0x00bc
                           0000BB   520 _PT1	=	0x00bb
                           0000BA   521 _PX1	=	0x00ba
                           0000B9   522 _PT0	=	0x00b9
                           0000B8   523 _PX0	=	0x00b8
                           0000EF   524 _IE_WDOG	=	0x00ef
                           0000EE   525 _IE_GPIO	=	0x00ee
                           0000ED   526 _IE_PWM1	=	0x00ed
                           0000EC   527 _IE_UART1	=	0x00ec
                           0000EB   528 _IE_ADC	=	0x00eb
                           0000EA   529 _IE_USB	=	0x00ea
                           0000E9   530 _IE_TMR3	=	0x00e9
                           0000E8   531 _IE_SPI0	=	0x00e8
                           000087   532 _UDCD	=	0x0087
                           000086   533 _URI	=	0x0086
                           000085   534 _UDSR	=	0x0085
                           000084   535 _UCTS	=	0x0084
                           000083   536 _TXD_	=	0x0083
                           000082   537 _RXD_	=	0x0082
                           000081   538 _URTS	=	0x0081
                           000080   539 _UDTR	=	0x0080
                           000097   540 _AIN7	=	0x0097
                           000096   541 _AIN6	=	0x0096
                           000095   542 _AIN5	=	0x0095
                           000094   543 _AIN4	=	0x0094
                           000093   544 _AIN3	=	0x0093
                           000092   545 _AIN2	=	0x0092
                           000091   546 _AIN1	=	0x0091
                           000090   547 _AIN0	=	0x0090
                           000097   548 _SCK	=	0x0097
                           000096   549 _MISO	=	0x0096
                           000095   550 _MOSI	=	0x0095
                           000094   551 _SCS	=	0x0094
                           000092   552 _PWM3	=	0x0092
                           000092   553 _CAP3	=	0x0092
                           000091   554 _T2EX	=	0x0091
                           000091   555 _CAP2	=	0x0091
                           000090   556 _T2	=	0x0090
                           000090   557 _CAP1	=	0x0090
                           0000A7   558 _TXD1	=	0x00a7
                           0000A7   559 _DA7	=	0x00a7
                           0000A6   560 _RXD1	=	0x00a6
                           0000A5   561 _TNOW	=	0x00a5
                           0000A5   562 _PWM2	=	0x00a5
                           0000A5   563 _T2EX_	=	0x00a5
                           0000A5   564 _CAP2_	=	0x00a5
                           0000A4   565 _PWM1	=	0x00a4
                           0000A3   566 _SCK1	=	0x00a3
                           0000A2   567 _MISO1	=	0x00a2
                           0000A1   568 _MOSI1	=	0x00a1
                           0000B7   569 _RD	=	0x00b7
                           0000B6   570 _WR	=	0x00b6
                           0000B5   571 _DA6	=	0x00b5
                           0000B5   572 _T1	=	0x00b5
                           0000B4   573 _LEDC	=	0x00b4
                           0000B4   574 _XCS0	=	0x00b4
                           0000B4   575 _T0	=	0x00b4
                           0000B3   576 _LED1	=	0x00b3
                           0000B3   577 _INT1	=	0x00b3
                           0000B2   578 _LED0	=	0x00b2
                           0000B2   579 _INT0	=	0x00b2
                           0000B1   580 _TXD	=	0x00b1
                           0000B0   581 _RXD	=	0x00b0
                           0000C7   582 _SCK_	=	0x00c7
                           0000C6   583 _SCS_	=	0x00c6
                           0000C5   584 _PWM2_	=	0x00c5
                           0000C4   585 _LED3	=	0x00c4
                           0000C4   586 _TNOW_	=	0x00c4
                           0000C4   587 _TXD1_	=	0x00c4
                           0000C3   588 _PWM1_	=	0x00c3
                           0000C2   589 _PWM3_	=	0x00c2
                           0000C2   590 _CAP3_	=	0x00c2
                           0000C0   591 _LED2	=	0x00c0
                           0000C0   592 _RXD1_	=	0x00c0
                           00008F   593 _TF1	=	0x008f
                           00008E   594 _TR1	=	0x008e
                           00008D   595 _TF0	=	0x008d
                           00008C   596 _TR0	=	0x008c
                           00008B   597 _IE1	=	0x008b
                           00008A   598 _IT1	=	0x008a
                           000089   599 _IE0	=	0x0089
                           000088   600 _IT0	=	0x0088
                           00009F   601 _SM0	=	0x009f
                           00009E   602 _SM1	=	0x009e
                           00009D   603 _SM2	=	0x009d
                           00009C   604 _REN	=	0x009c
                           00009B   605 _TB8	=	0x009b
                           00009A   606 _RB8	=	0x009a
                           000099   607 _TI	=	0x0099
                           000098   608 _RI	=	0x0098
                           0000CF   609 _TF2	=	0x00cf
                           0000CF   610 _CAP1F	=	0x00cf
                           0000CE   611 _EXF2	=	0x00ce
                           0000CD   612 _RCLK	=	0x00cd
                           0000CC   613 _TCLK	=	0x00cc
                           0000CB   614 _EXEN2	=	0x00cb
                           0000CA   615 _TR2	=	0x00ca
                           0000C9   616 _C_T2	=	0x00c9
                           0000C8   617 _CP_RL2	=	0x00c8
                           0000FF   618 _S0_FST_ACT	=	0x00ff
                           0000FE   619 _S0_IF_OV	=	0x00fe
                           0000FD   620 _S0_IF_FIRST	=	0x00fd
                           0000FC   621 _S0_IF_BYTE	=	0x00fc
                           0000FB   622 _S0_FREE	=	0x00fb
                           0000FA   623 _S0_T_FIFO	=	0x00fa
                           0000F9   624 _S0_R_FIFO1	=	0x00f9
                           0000F8   625 _S0_R_FIFO0	=	0x00f8
                           0000DF   626 _U_IS_NAK	=	0x00df
                           0000DE   627 _U_TOG_OK	=	0x00de
                           0000DD   628 _U_SIE_FREE	=	0x00dd
                           0000DC   629 _UIF_FIFO_OV	=	0x00dc
                           0000DB   630 _UIF_HST_SOF	=	0x00db
                           0000DA   631 _UIF_SUSPEND	=	0x00da
                           0000D9   632 _UIF_TRANSFER	=	0x00d9
                           0000D8   633 _UIF_DETECT	=	0x00d8
                           0000D8   634 _UIF_BUS_RST	=	0x00d8
                                    635 ;--------------------------------------------------------
                                    636 ; overlayable register banks
                                    637 ;--------------------------------------------------------
                                    638 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        639 	.ds 8
                                    640 ;--------------------------------------------------------
                                    641 ; internal ram data
                                    642 ;--------------------------------------------------------
                                    643 	.area DSEG    (DATA)
      000021                        644 _hostTransfer_sloc0_1_0:
      000021                        645 	.ds 2
      000023                        646 _hostTransfer_sloc1_1_0:
      000023                        647 	.ds 1
      000024                        648 _hostTransfer_sloc2_1_0:
      000024                        649 	.ds 1
      000025                        650 _hostCtrlTransfer_sloc0_1_0:
      000025                        651 	.ds 2
      000027                        652 _pollHIDdevice_sloc0_1_0:
      000027                        653 	.ds 3
      00002A                        654 _parseHIDDeviceReport_sloc0_1_0:
      00002A                        655 	.ds 2
      00002C                        656 _parseHIDDeviceReport_sloc1_1_0:
      00002C                        657 	.ds 2
      00002E                        658 _parseHIDDeviceReport_sloc2_1_0:
      00002E                        659 	.ds 2
      000030                        660 _parseHIDDeviceReport_sloc3_1_0:
      000030                        661 	.ds 1
      000031                        662 _parseHIDDeviceReport_sloc4_1_0:
      000031                        663 	.ds 2
      000033                        664 _parseHIDDeviceReport_sloc5_1_0:
      000033                        665 	.ds 2
      000035                        666 _parseHIDDeviceReport_sloc6_1_0:
      000035                        667 	.ds 2
      000037                        668 _parseHIDDeviceReport_sloc7_1_0:
      000037                        669 	.ds 1
      000038                        670 _parseHIDDeviceReport_sloc8_1_0:
      000038                        671 	.ds 4
      00003C                        672 _parseHIDDeviceReport_sloc9_1_0:
      00003C                        673 	.ds 3
      00003F                        674 _parseHIDDeviceReport_sloc10_1_0:
      00003F                        675 	.ds 2
      000041                        676 _initializeRootHubConnection_sloc0_1_0:
      000041                        677 	.ds 2
      000043                        678 _initializeRootHubConnection_sloc1_1_0:
      000043                        679 	.ds 1
      000044                        680 _initializeRootHubConnection_sloc2_1_0:
      000044                        681 	.ds 1
      000045                        682 _initializeRootHubConnection_sloc3_1_0:
      000045                        683 	.ds 1
      000046                        684 _initializeRootHubConnection_sloc4_1_0:
      000046                        685 	.ds 1
      000047                        686 _initializeRootHubConnection_sloc5_1_0:
      000047                        687 	.ds 2
      000049                        688 _initializeRootHubConnection_sloc6_1_0:
      000049                        689 	.ds 2
      00004B                        690 _initializeRootHubConnection_sloc7_1_0:
      00004B                        691 	.ds 1
      00004C                        692 _initializeRootHubConnection_sloc8_1_0:
      00004C                        693 	.ds 2
                                    694 ;--------------------------------------------------------
                                    695 ; overlayable items in internal ram
                                    696 ;--------------------------------------------------------
                                    697 	.area	OSEG    (OVR,DATA)
      000010                        698 _extract_field_sloc0_1_0:
      000010                        699 	.ds 3
      000013                        700 _extract_field_sloc1_1_0:
      000013                        701 	.ds 4
      000017                        702 _extract_field_sloc2_1_0:
      000017                        703 	.ds 4
                                    704 	.area	OSEG    (OVR,DATA)
      000010                        705 _convertStringDescriptor_sloc0_1_0:
      000010                        706 	.ds 2
      000012                        707 _convertStringDescriptor_sloc1_1_0:
      000012                        708 	.ds 2
      000014                        709 _convertStringDescriptor_sloc2_1_0:
      000014                        710 	.ds 2
      000016                        711 _convertStringDescriptor_sloc3_1_0:
      000016                        712 	.ds 2
                                    713 ;--------------------------------------------------------
                                    714 ; indirectly addressable internal ram data
                                    715 ;--------------------------------------------------------
                                    716 	.area ISEG    (DATA)
                                    717 ;--------------------------------------------------------
                                    718 ; absolute internal ram data
                                    719 ;--------------------------------------------------------
                                    720 	.area IABS    (ABS,DATA)
                                    721 	.area IABS    (ABS,DATA)
                                    722 ;--------------------------------------------------------
                                    723 ; bit data
                                    724 ;--------------------------------------------------------
                                    725 	.area BSEG    (BIT)
      000001                        726 _hostCtrlTransfer_sloc1_1_0:
      000001                        727 	.ds 1
                                    728 ;--------------------------------------------------------
                                    729 ; paged external ram data
                                    730 ;--------------------------------------------------------
                                    731 	.area PSEG    (PAG,XDATA)
                           002546   732 _pUEP4_1_MOD	=	0x2546
                           002547   733 _pUEP2_3_MOD	=	0x2547
                           002980   734 _pLED_STAT	=	0x2980
                           002981   735 _pLED_CTRL	=	0x2981
                           002982   736 _pLED_DATA	=	0x2982
                           002983   737 _pLED_CK_SE	=	0x2983
                           002984   738 _pLED_DMA_AH	=	0x2984
                           002985   739 _pLED_DMA_AL	=	0x2985
                           002986   740 _pLED_DMA_CN	=	0x2986
                           002988   741 _pLED_DMA_XH	=	0x2988
                           002989   742 _pLED_DMA_XL	=	0x2989
                                    743 ;--------------------------------------------------------
                                    744 ; external ram data
                                    745 ;--------------------------------------------------------
                                    746 	.area XSEG    (XDATA)
                           002446   747 _UEP4_1_MOD	=	0x2446
                           002447   748 _UEP2_3_MOD	=	0x2447
                           002448   749 _UEP0_DMA_H	=	0x2448
                           002449   750 _UEP0_DMA_L	=	0x2449
                           002548   751 _pUEP0_DMA_H	=	0x2548
                           002549   752 _pUEP0_DMA_L	=	0x2549
                           00244A   753 _UEP1_DMA_H	=	0x244a
                           00244B   754 _UEP1_DMA_L	=	0x244b
                           00254A   755 _pUEP1_DMA_H	=	0x254a
                           00254B   756 _pUEP1_DMA_L	=	0x254b
                           00244C   757 _UEP2_DMA	=	0x244c
                           00244D   758 _UEP2_DMA_L	=	0x244d
                           00244C   759 _UEP2_DMA_H	=	0x244c
                           00254C   760 _pUEP2_DMA_H	=	0x254c
                           00254D   761 _pUEP2_DMA_L	=	0x254d
                           00244E   762 _UEP3_DMA	=	0x244e
                           00244F   763 _UEP3_DMA_L	=	0x244f
                           00244E   764 _UEP3_DMA_H	=	0x244e
                           00254E   765 _pUEP3_DMA_H	=	0x254e
                           00254F   766 _pUEP3_DMA_L	=	0x254f
                           002880   767 _LED_STAT	=	0x2880
                           002881   768 _LED_CTRL	=	0x2881
                           002882   769 _LED_DATA	=	0x2882
                           002883   770 _LED_CK_SE	=	0x2883
                           002884   771 _LED_DMA_AH	=	0x2884
                           002885   772 _LED_DMA_AL	=	0x2885
                           002886   773 _LED_DMA_CN	=	0x2886
                           002888   774 _LED_DMA_XH	=	0x2888
                           002889   775 _LED_DMA_XL	=	0x2889
                           000000   776 _RxBuffer	=	0x0000
                           000100   777 _TxBuffer	=	0x0100
      000847                        778 _endpoint0Size::
      000847                        779 	.ds 1
      000848                        780 _receiveDataBuffer::
      000848                        781 	.ds 512
      000A48                        782 _HIDdevice::
      000A48                        783 	.ds 176
      000AF8                        784 _VendorProductID::
      000AF8                        785 	.ds 32
      000B18                        786 _rootHubDevice::
      000B18                        787 	.ds 6
      000B1E                        788 _extract_field_PARM_2:
      000B1E                        789 	.ds 2
      000B20                        790 _extract_field_PARM_3:
      000B20                        791 	.ds 1
      000B21                        792 _extract_field_PARM_4:
      000B21                        793 	.ds 1
      000B22                        794 _extract_field_report_65536_44:
      000B22                        795 	.ds 3
      000B25                        796 _extract_field_value_65536_45:
      000B25                        797 	.ds 4
      000B29                        798 _extract_field_bit_pos_65536_45:
      000B29                        799 	.ds 1
      000B2A                        800 _extract_field_bits_left_65536_45:
      000B2A                        801 	.ds 1
      000B2B                        802 _disableRootHubPort_index_65536_49:
      000B2B                        803 	.ds 1
      000B2C                        804 _setHostUsbAddr_addr_65536_52:
      000B2C                        805 	.ds 1
      000B2D                        806 _setUsbSpeed_fullSpeed_65536_54:
      000B2D                        807 	.ds 1
      000B2E                        808 _resetRootHubPort_rootHubIndex_65536_58:
      000B2E                        809 	.ds 1
      000B2F                        810 _enableRootHubPort_rootHubIndex_65536_62:
      000B2F                        811 	.ds 1
      000B30                        812 _selectHubPort_PARM_2:
      000B30                        813 	.ds 1
      000B31                        814 _selectHubPort_rootHubIndex_65536_75:
      000B31                        815 	.ds 1
      000B32                        816 _hostTransfer_PARM_2:
      000B32                        817 	.ds 1
      000B33                        818 _hostTransfer_PARM_3:
      000B33                        819 	.ds 2
      000B35                        820 _hostTransfer_endp_pid_65536_77:
      000B35                        821 	.ds 1
      000B36                        822 _hostTransfer_retries_65536_78:
      000B36                        823 	.ds 2
      000B38                        824 _hostCtrlTransfer_PARM_2:
      000B38                        825 	.ds 3
      000B3B                        826 _hostCtrlTransfer_PARM_3:
      000B3B                        827 	.ds 2
      000B3D                        828 _hostCtrlTransfer_DataBuf_65536_101:
      000B3D                        829 	.ds 2
      000B3F                        830 _hostCtrlTransfer_SetPort_65536_102:
      000B3F                        831 	.ds 1
      000B40                        832 _hostCtrlTransfer_RemLen_65536_102:
      000B40                        833 	.ds 2
      000B42                        834 _hostCtrlTransfer_pBuf_65536_102:
      000B42                        835 	.ds 2
      000B44                        836 _fillTxBuffer_PARM_2:
      000B44                        837 	.ds 1
      000B45                        838 _fillTxBuffer_data_65536_122:
      000B45                        839 	.ds 2
      000B47                        840 _getDeviceDescriptor_len_65536_126:
      000B47                        841 	.ds 2
      000B49                        842 _setUsbAddress_addr_65536_129:
      000B49                        843 	.ds 1
      000B4A                        844 _setUsbConfig_cfg_65536_132:
      000B4A                        845 	.ds 1
      000B4B                        846 _convertStringDescriptor_PARM_2:
      000B4B                        847 	.ds 2
      000B4D                        848 _convertStringDescriptor_PARM_3:
      000B4D                        849 	.ds 2
      000B4F                        850 _convertStringDescriptor_PARM_4:
      000B4F                        851 	.ds 1
      000B50                        852 _convertStringDescriptor_usbBuffer_65536_135:
      000B50                        853 	.ds 2
      000B52                        854 _DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142:
      000B52                        855 	.ds 2
      000B54                        856 _getConfigurationDescriptor_len_65536_146:
      000B54                        857 	.ds 2
      000B56                        858 _resetHubDevices_hubindex_65536_150:
      000B56                        859 	.ds 1
      000B57                        860 _pollHIDdevice_PARM_2:
      000B57                        861 	.ds 3
      000B5A                        862 _pollHIDdevice_PARM_3:
      000B5A                        863 	.ds 3
      000B5D                        864 _pollHIDdevice_PARM_4:
      000B5D                        865 	.ds 3
      000B60                        866 _pollHIDdevice_buttons_65536_155:
      000B60                        867 	.ds 3
      000B63                        868 _pollHIDdevice_len_65536_156:
      000B63                        869 	.ds 1
      000B64                        870 _pollHIDdevice_report_65536_156:
      000B64                        871 	.ds 2
      000B66                        872 _parseHIDDeviceReport_PARM_2:
      000B66                        873 	.ds 2
      000B68                        874 _parseHIDDeviceReport_PARM_3:
      000B68                        875 	.ds 1
      000B69                        876 _parseHIDDeviceReport_report_65536_169:
      000B69                        877 	.ds 2
      000B6B                        878 _parseHIDDeviceReport_i_65536_170:
      000B6B                        879 	.ds 2
      000B6D                        880 _parseHIDDeviceReport_level_65536_170:
      000B6D                        881 	.ds 1
      000B6E                        882 _parseHIDDeviceReport_isUsageSet_65536_170:
      000B6E                        883 	.ds 1
      000B6F                        884 _parseHIDDeviceReport_tag_65536_170:
      000B6F                        885 	.ds 1
      000B70                        886 _parseHIDDeviceReport_tag_size_65536_170:
      000B70                        887 	.ds 1
      000B71                        888 _parseHIDDeviceReport_data_65536_170:
      000B71                        889 	.ds 4
      000B75                        890 _parseHIDDeviceReport_usage_page_65536_170:
      000B75                        891 	.ds 4
      000B79                        892 _parseHIDDeviceReport_usageX_65536_170:
      000B79                        893 	.ds 4
      000B7D                        894 _parseHIDDeviceReport_usageY_65536_170:
      000B7D                        895 	.ds 4
      000B81                        896 _parseHIDDeviceReport_usageW_65536_170:
      000B81                        897 	.ds 4
      000B85                        898 _parseHIDDeviceReport_report_size_65536_170:
      000B85                        899 	.ds 1
      000B86                        900 _parseHIDDeviceReport_report_count_65536_170:
      000B86                        901 	.ds 1
      000B87                        902 _parseHIDDeviceReport_current_bit_offset_65536_170:
      000B87                        903 	.ds 2
      000B89                        904 _parseHIDDeviceReport_used_reports_65536_170:
      000B89                        905 	.ds 1
      000B8A                        906 _getHIDDeviceReport_CurrentDevice_65536_195:
      000B8A                        907 	.ds 1
      000B8B                        908 _getHIDDeviceReport_len_65536_196:
      000B8B                        909 	.ds 2
      000B8D                        910 _readInterface_PARM_2:
      000B8D                        911 	.ds 2
      000B8F                        912 _readHIDInterface_PARM_2:
      000B8F                        913 	.ds 2
      000B91                        914 _initializeRootHubConnection_rootHubIndex_65536_204:
      000B91                        915 	.ds 1
      000B92                        916 _initializeRootHubConnection_res_65536_205:
      000B92                        917 	.ds 1
      000B93                        918 _initializeRootHubConnection_i_458752_216:
      000B93                        919 	.ds 2
      000B95                        920 _initializeRootHubConnection_temp_458752_216:
      000B95                        921 	.ds 512
      000D95                        922 _initializeRootHubConnection_currentInterface_458752_216:
      000D95                        923 	.ds 2
      000D97                        924 _initializeRootHubConnection_desc_524288_221:
      000D97                        925 	.ds 2
      000D99                        926 _checkRootHubConnections_res_65536_228:
      000D99                        927 	.ds 1
                                    928 ;--------------------------------------------------------
                                    929 ; absolute external ram data
                                    930 ;--------------------------------------------------------
                                    931 	.area XABS    (ABS,XDATA)
                                    932 ;--------------------------------------------------------
                                    933 ; external initialized ram data
                                    934 ;--------------------------------------------------------
                                    935 	.area XISEG   (XDATA)
                                    936 	.area HOME    (CODE)
                                    937 	.area GSINIT0 (CODE)
                                    938 	.area GSINIT1 (CODE)
                                    939 	.area GSINIT2 (CODE)
                                    940 	.area GSINIT3 (CODE)
                                    941 	.area GSINIT4 (CODE)
                                    942 	.area GSINIT5 (CODE)
                                    943 	.area GSINIT  (CODE)
                                    944 	.area GSFINAL (CODE)
                                    945 	.area CSEG    (CODE)
                                    946 ;--------------------------------------------------------
                                    947 ; global & static initialisations
                                    948 ;--------------------------------------------------------
                                    949 	.area HOME    (CODE)
                                    950 	.area GSINIT  (CODE)
                                    951 	.area GSFINAL (CODE)
                                    952 	.area GSINIT  (CODE)
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'hostCtrlTransfer'
                                    955 ;------------------------------------------------------------
                                    956 ;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
                                    957 ;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
                                    958 ;maxLength                 Allocated with name '_hostCtrlTransfer_PARM_3'
                                    959 ;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_101'
                                    960 ;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_102'
                                    961 ;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_102'
                                    962 ;res                       Allocated with name '_hostCtrlTransfer_res_65536_102'
                                    963 ;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_102'
                                    964 ;i                         Allocated with name '_hostCtrlTransfer_i_65536_102'
                                    965 ;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_102'
                                    966 ;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_102'
                                    967 ;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_103'
                                    968 ;------------------------------------------------------------
                                    969 ;	USBHost.c:340: static uint8_t SetPort = 0;
      000101 90 0B 3F         [24]  970 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
      000104 E4               [12]  971 	clr	a
      000105 F0               [24]  972 	movx	@dptr,a
                                    973 ;--------------------------------------------------------
                                    974 ; Home
                                    975 ;--------------------------------------------------------
                                    976 	.area HOME    (CODE)
                                    977 	.area HOME    (CODE)
                                    978 ;--------------------------------------------------------
                                    979 ; code
                                    980 ;--------------------------------------------------------
                                    981 	.area CSEG    (CODE)
                                    982 ;------------------------------------------------------------
                                    983 ;Allocation info for local variables in function 'extract_field'
                                    984 ;------------------------------------------------------------
                                    985 ;bit_offset                Allocated with name '_extract_field_PARM_2'
                                    986 ;bit_size                  Allocated with name '_extract_field_PARM_3'
                                    987 ;is_signed                 Allocated with name '_extract_field_PARM_4'
                                    988 ;report                    Allocated with name '_extract_field_report_65536_44'
                                    989 ;value                     Allocated with name '_extract_field_value_65536_45'
                                    990 ;sign                      Allocated with name '_extract_field_sign_65536_45'
                                    991 ;byte_pos                  Allocated with name '_extract_field_byte_pos_65536_45'
                                    992 ;bit_pos                   Allocated with name '_extract_field_bit_pos_65536_45'
                                    993 ;bits_left                 Allocated with name '_extract_field_bits_left_65536_45'
                                    994 ;bits_in_byte              Allocated with name '_extract_field_bits_in_byte_65536_45'
                                    995 ;bits_to_read              Allocated with name '_extract_field_bits_to_read_65536_45'
                                    996 ;mask                      Allocated with name '_extract_field_mask_65536_45'
                                    997 ;sloc0                     Allocated with name '_extract_field_sloc0_1_0'
                                    998 ;sloc1                     Allocated with name '_extract_field_sloc1_1_0'
                                    999 ;sloc2                     Allocated with name '_extract_field_sloc2_1_0'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	USBHost.c:113: static int32_t extract_field(uint8_t *report, uint16_t bit_offset, uint8_t bit_size, uint8_t is_signed)
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function extract_field
                                   1004 ;	-----------------------------------------
      00167D                       1005 _extract_field:
                           000007  1006 	ar7 = 0x07
                           000006  1007 	ar6 = 0x06
                           000005  1008 	ar5 = 0x05
                           000004  1009 	ar4 = 0x04
                           000003  1010 	ar3 = 0x03
                           000002  1011 	ar2 = 0x02
                           000001  1012 	ar1 = 0x01
                           000000  1013 	ar0 = 0x00
      00167D AF F0            [24] 1014 	mov	r7,b
      00167F AE 83            [24] 1015 	mov	r6,dph
      001681 E5 82            [12] 1016 	mov	a,dpl
      001683 90 0B 22         [24] 1017 	mov	dptr,#_extract_field_report_65536_44
      001686 F0               [24] 1018 	movx	@dptr,a
      001687 EE               [12] 1019 	mov	a,r6
      001688 A3               [24] 1020 	inc	dptr
      001689 F0               [24] 1021 	movx	@dptr,a
      00168A EF               [12] 1022 	mov	a,r7
      00168B A3               [24] 1023 	inc	dptr
      00168C F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	USBHost.c:115: __xdata uint32_t value = 0;
      00168D 90 0B 25         [24] 1026 	mov	dptr,#_extract_field_value_65536_45
      001690 E4               [12] 1027 	clr	a
      001691 F0               [24] 1028 	movx	@dptr,a
      001692 A3               [24] 1029 	inc	dptr
      001693 F0               [24] 1030 	movx	@dptr,a
      001694 A3               [24] 1031 	inc	dptr
      001695 F0               [24] 1032 	movx	@dptr,a
      001696 A3               [24] 1033 	inc	dptr
      001697 F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	USBHost.c:117: __xdata uint16_t byte_pos = bit_offset >> 3;
      001698 90 0B 1E         [24] 1036 	mov	dptr,#_extract_field_PARM_2
      00169B E0               [24] 1037 	movx	a,@dptr
      00169C FE               [12] 1038 	mov	r6,a
      00169D A3               [24] 1039 	inc	dptr
      00169E E0               [24] 1040 	movx	a,@dptr
      00169F 8E 04            [24] 1041 	mov	ar4,r6
      0016A1 C4               [12] 1042 	swap	a
      0016A2 23               [12] 1043 	rl	a
      0016A3 CC               [12] 1044 	xch	a,r4
      0016A4 C4               [12] 1045 	swap	a
      0016A5 23               [12] 1046 	rl	a
      0016A6 54 1F            [12] 1047 	anl	a,#0x1f
      0016A8 6C               [12] 1048 	xrl	a,r4
      0016A9 CC               [12] 1049 	xch	a,r4
      0016AA 54 1F            [12] 1050 	anl	a,#0x1f
      0016AC CC               [12] 1051 	xch	a,r4
      0016AD 6C               [12] 1052 	xrl	a,r4
      0016AE CC               [12] 1053 	xch	a,r4
      0016AF FD               [12] 1054 	mov	r5,a
                                   1055 ;	USBHost.c:118: __xdata uint8_t bit_pos = bit_offset % 8;
      0016B0 53 06 07         [24] 1056 	anl	ar6,#0x07
      0016B3 90 0B 29         [24] 1057 	mov	dptr,#_extract_field_bit_pos_65536_45
      0016B6 EE               [12] 1058 	mov	a,r6
      0016B7 F0               [24] 1059 	movx	@dptr,a
                                   1060 ;	USBHost.c:119: __xdata uint8_t bits_left = bit_size;
      0016B8 90 0B 20         [24] 1061 	mov	dptr,#_extract_field_PARM_3
      0016BB E0               [24] 1062 	movx	a,@dptr
      0016BC FF               [12] 1063 	mov	r7,a
      0016BD 90 0B 2A         [24] 1064 	mov	dptr,#_extract_field_bits_left_65536_45
      0016C0 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	USBHost.c:124: while (bits_left > 0) {
      0016C1 90 0B 22         [24] 1067 	mov	dptr,#_extract_field_report_65536_44
      0016C4 E0               [24] 1068 	movx	a,@dptr
      0016C5 F5 10            [12] 1069 	mov	_extract_field_sloc0_1_0,a
      0016C7 A3               [24] 1070 	inc	dptr
      0016C8 E0               [24] 1071 	movx	a,@dptr
      0016C9 F5 11            [12] 1072 	mov	(_extract_field_sloc0_1_0 + 1),a
      0016CB A3               [24] 1073 	inc	dptr
      0016CC E0               [24] 1074 	movx	a,@dptr
      0016CD F5 12            [12] 1075 	mov	(_extract_field_sloc0_1_0 + 2),a
      0016CF                       1076 00101$:
      0016CF 90 0B 2A         [24] 1077 	mov	dptr,#_extract_field_bits_left_65536_45
      0016D2 E0               [24] 1078 	movx	a,@dptr
      0016D3 F9               [12] 1079 	mov	r1,a
      0016D4 70 03            [24] 1080 	jnz	00143$
      0016D6 02 17 C2         [24] 1081 	ljmp	00103$
      0016D9                       1082 00143$:
                                   1083 ;	USBHost.c:125: bits_in_byte = 8 - bit_pos;
      0016D9 90 0B 29         [24] 1084 	mov	dptr,#_extract_field_bit_pos_65536_45
      0016DC E0               [24] 1085 	movx	a,@dptr
      0016DD F8               [12] 1086 	mov	r0,a
      0016DE 74 08            [12] 1087 	mov	a,#0x08
      0016E0 C3               [12] 1088 	clr	c
      0016E1 98               [12] 1089 	subb	a,r0
                                   1090 ;	USBHost.c:126: bits_to_read = (bits_left < bits_in_byte) ? bits_left : bits_in_byte;
      0016E2 F8               [12] 1091 	mov	r0,a
      0016E3 FE               [12] 1092 	mov	r6,a
      0016E4 C3               [12] 1093 	clr	c
      0016E5 E9               [12] 1094 	mov	a,r1
      0016E6 9E               [12] 1095 	subb	a,r6
      0016E7 40 02            [24] 1096 	jc	00113$
      0016E9 88 01            [24] 1097 	mov	ar1,r0
      0016EB                       1098 00113$:
                                   1099 ;	USBHost.c:127: mask = (1UL << bits_to_read) - 1;
      0016EB 89 F0            [24] 1100 	mov	b,r1
      0016ED 05 F0            [12] 1101 	inc	b
      0016EF 78 01            [12] 1102 	mov	r0,#0x01
      0016F1 7A 00            [12] 1103 	mov	r2,#0x00
      0016F3 7B 00            [12] 1104 	mov	r3,#0x00
      0016F5 7E 00            [12] 1105 	mov	r6,#0x00
      0016F7 80 0C            [24] 1106 	sjmp	00146$
      0016F9                       1107 00145$:
      0016F9 E8               [12] 1108 	mov	a,r0
      0016FA 28               [12] 1109 	add	a,r0
      0016FB F8               [12] 1110 	mov	r0,a
      0016FC EA               [12] 1111 	mov	a,r2
      0016FD 33               [12] 1112 	rlc	a
      0016FE FA               [12] 1113 	mov	r2,a
      0016FF EB               [12] 1114 	mov	a,r3
      001700 33               [12] 1115 	rlc	a
      001701 FB               [12] 1116 	mov	r3,a
      001702 EE               [12] 1117 	mov	a,r6
      001703 33               [12] 1118 	rlc	a
      001704 FE               [12] 1119 	mov	r6,a
      001705                       1120 00146$:
      001705 D5 F0 F1         [24] 1121 	djnz	b,00145$
      001708 E8               [12] 1122 	mov	a,r0
      001709 24 FF            [12] 1123 	add	a,#0xff
      00170B F5 13            [12] 1124 	mov	_extract_field_sloc1_1_0,a
      00170D EA               [12] 1125 	mov	a,r2
      00170E 34 FF            [12] 1126 	addc	a,#0xff
      001710 F5 14            [12] 1127 	mov	(_extract_field_sloc1_1_0 + 1),a
      001712 EB               [12] 1128 	mov	a,r3
      001713 34 FF            [12] 1129 	addc	a,#0xff
      001715 F5 15            [12] 1130 	mov	(_extract_field_sloc1_1_0 + 2),a
      001717 EE               [12] 1131 	mov	a,r6
      001718 34 FF            [12] 1132 	addc	a,#0xff
      00171A F5 16            [12] 1133 	mov	(_extract_field_sloc1_1_0 + 3),a
                                   1134 ;	USBHost.c:128: value |= (((uint32_t )report[byte_pos] >> bit_pos) & mask) << (bit_size - bits_left);
      00171C EC               [12] 1135 	mov	a,r4
      00171D 25 10            [12] 1136 	add	a,_extract_field_sloc0_1_0
      00171F FA               [12] 1137 	mov	r2,a
      001720 ED               [12] 1138 	mov	a,r5
      001721 35 11            [12] 1139 	addc	a,(_extract_field_sloc0_1_0 + 1)
      001723 FB               [12] 1140 	mov	r3,a
      001724 AE 12            [24] 1141 	mov	r6,(_extract_field_sloc0_1_0 + 2)
      001726 8A 82            [24] 1142 	mov	dpl,r2
      001728 8B 83            [24] 1143 	mov	dph,r3
      00172A 8E F0            [24] 1144 	mov	b,r6
      00172C 12 34 B9         [24] 1145 	lcall	__gptrget
      00172F FA               [12] 1146 	mov	r2,a
      001730 8A 17            [24] 1147 	mov	_extract_field_sloc2_1_0,r2
      001732 75 18 00         [24] 1148 	mov	(_extract_field_sloc2_1_0 + 1),#0x00
      001735 75 19 00         [24] 1149 	mov	(_extract_field_sloc2_1_0 + 2),#0x00
      001738 75 1A 00         [24] 1150 	mov	(_extract_field_sloc2_1_0 + 3),#0x00
      00173B 90 0B 29         [24] 1151 	mov	dptr,#_extract_field_bit_pos_65536_45
      00173E E0               [24] 1152 	movx	a,@dptr
      00173F FE               [12] 1153 	mov	r6,a
      001740 8E F0            [24] 1154 	mov	b,r6
      001742 05 F0            [12] 1155 	inc	b
      001744 A8 17            [24] 1156 	mov	r0,_extract_field_sloc2_1_0
      001746 AA 18            [24] 1157 	mov	r2,(_extract_field_sloc2_1_0 + 1)
      001748 AB 19            [24] 1158 	mov	r3,(_extract_field_sloc2_1_0 + 2)
      00174A AE 1A            [24] 1159 	mov	r6,(_extract_field_sloc2_1_0 + 3)
      00174C 80 0D            [24] 1160 	sjmp	00148$
      00174E                       1161 00147$:
      00174E C3               [12] 1162 	clr	c
      00174F EE               [12] 1163 	mov	a,r6
      001750 13               [12] 1164 	rrc	a
      001751 FE               [12] 1165 	mov	r6,a
      001752 EB               [12] 1166 	mov	a,r3
      001753 13               [12] 1167 	rrc	a
      001754 FB               [12] 1168 	mov	r3,a
      001755 EA               [12] 1169 	mov	a,r2
      001756 13               [12] 1170 	rrc	a
      001757 FA               [12] 1171 	mov	r2,a
      001758 E8               [12] 1172 	mov	a,r0
      001759 13               [12] 1173 	rrc	a
      00175A F8               [12] 1174 	mov	r0,a
      00175B                       1175 00148$:
      00175B D5 F0 F0         [24] 1176 	djnz	b,00147$
      00175E E5 13            [12] 1177 	mov	a,_extract_field_sloc1_1_0
      001760 58               [12] 1178 	anl	a,r0
      001761 F5 17            [12] 1179 	mov	_extract_field_sloc2_1_0,a
      001763 E5 14            [12] 1180 	mov	a,(_extract_field_sloc1_1_0 + 1)
      001765 5A               [12] 1181 	anl	a,r2
      001766 F5 18            [12] 1182 	mov	(_extract_field_sloc2_1_0 + 1),a
      001768 E5 15            [12] 1183 	mov	a,(_extract_field_sloc1_1_0 + 2)
      00176A 5B               [12] 1184 	anl	a,r3
      00176B F5 19            [12] 1185 	mov	(_extract_field_sloc2_1_0 + 2),a
      00176D E5 16            [12] 1186 	mov	a,(_extract_field_sloc1_1_0 + 3)
      00176F 5E               [12] 1187 	anl	a,r6
      001770 F5 1A            [12] 1188 	mov	(_extract_field_sloc2_1_0 + 3),a
      001772 90 0B 2A         [24] 1189 	mov	dptr,#_extract_field_bits_left_65536_45
      001775 E0               [24] 1190 	movx	a,@dptr
      001776 FE               [12] 1191 	mov	r6,a
      001777 EF               [12] 1192 	mov	a,r7
      001778 C3               [12] 1193 	clr	c
      001779 9E               [12] 1194 	subb	a,r6
      00177A FB               [12] 1195 	mov	r3,a
      00177B C0 07            [24] 1196 	push	ar7
      00177D 8B F0            [24] 1197 	mov	b,r3
      00177F 05 F0            [12] 1198 	inc	b
      001781 A8 17            [24] 1199 	mov	r0,_extract_field_sloc2_1_0
      001783 AA 18            [24] 1200 	mov	r2,(_extract_field_sloc2_1_0 + 1)
      001785 AB 19            [24] 1201 	mov	r3,(_extract_field_sloc2_1_0 + 2)
      001787 AF 1A            [24] 1202 	mov	r7,(_extract_field_sloc2_1_0 + 3)
      001789 80 0C            [24] 1203 	sjmp	00150$
      00178B                       1204 00149$:
      00178B E8               [12] 1205 	mov	a,r0
      00178C 28               [12] 1206 	add	a,r0
      00178D F8               [12] 1207 	mov	r0,a
      00178E EA               [12] 1208 	mov	a,r2
      00178F 33               [12] 1209 	rlc	a
      001790 FA               [12] 1210 	mov	r2,a
      001791 EB               [12] 1211 	mov	a,r3
      001792 33               [12] 1212 	rlc	a
      001793 FB               [12] 1213 	mov	r3,a
      001794 EF               [12] 1214 	mov	a,r7
      001795 33               [12] 1215 	rlc	a
      001796 FF               [12] 1216 	mov	r7,a
      001797                       1217 00150$:
      001797 D5 F0 F1         [24] 1218 	djnz	b,00149$
      00179A 90 0B 25         [24] 1219 	mov	dptr,#_extract_field_value_65536_45
      00179D E0               [24] 1220 	movx	a,@dptr
      00179E 48               [12] 1221 	orl	a,r0
      00179F F0               [24] 1222 	movx	@dptr,a
      0017A0 A3               [24] 1223 	inc	dptr
      0017A1 E0               [24] 1224 	movx	a,@dptr
      0017A2 4A               [12] 1225 	orl	a,r2
      0017A3 F0               [24] 1226 	movx	@dptr,a
      0017A4 A3               [24] 1227 	inc	dptr
      0017A5 E0               [24] 1228 	movx	a,@dptr
      0017A6 4B               [12] 1229 	orl	a,r3
      0017A7 F0               [24] 1230 	movx	@dptr,a
      0017A8 A3               [24] 1231 	inc	dptr
      0017A9 E0               [24] 1232 	movx	a,@dptr
      0017AA 4F               [12] 1233 	orl	a,r7
      0017AB F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	USBHost.c:129: bits_left -= bits_to_read;
      0017AC 90 0B 2A         [24] 1236 	mov	dptr,#_extract_field_bits_left_65536_45
      0017AF EE               [12] 1237 	mov	a,r6
      0017B0 C3               [12] 1238 	clr	c
      0017B1 99               [12] 1239 	subb	a,r1
      0017B2 F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	USBHost.c:130: bit_pos = 0;
      0017B3 90 0B 29         [24] 1242 	mov	dptr,#_extract_field_bit_pos_65536_45
      0017B6 E4               [12] 1243 	clr	a
      0017B7 F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	USBHost.c:131: byte_pos++;
      0017B8 0C               [12] 1246 	inc	r4
      0017B9 BC 00 01         [24] 1247 	cjne	r4,#0x00,00151$
      0017BC 0D               [12] 1248 	inc	r5
      0017BD                       1249 00151$:
      0017BD D0 07            [24] 1250 	pop	ar7
      0017BF 02 16 CF         [24] 1251 	ljmp	00101$
      0017C2                       1252 00103$:
                                   1253 ;	USBHost.c:134: if (is_signed && bit_size > 0 && bit_size < 32) {
      0017C2 90 0B 21         [24] 1254 	mov	dptr,#_extract_field_PARM_4
      0017C5 E0               [24] 1255 	movx	a,@dptr
      0017C6 70 03            [24] 1256 	jnz	00152$
      0017C8 02 18 6D         [24] 1257 	ljmp	00107$
      0017CB                       1258 00152$:
      0017CB EF               [12] 1259 	mov	a,r7
      0017CC 70 03            [24] 1260 	jnz	00153$
      0017CE 02 18 6D         [24] 1261 	ljmp	00107$
      0017D1                       1262 00153$:
      0017D1 BF 20 00         [24] 1263 	cjne	r7,#0x20,00154$
      0017D4                       1264 00154$:
      0017D4 40 03            [24] 1265 	jc	00155$
      0017D6 02 18 6D         [24] 1266 	ljmp	00107$
      0017D9                       1267 00155$:
                                   1268 ;	USBHost.c:135: sign = 1UL << (bit_size - 1);
      0017D9 EF               [12] 1269 	mov	a,r7
      0017DA 14               [12] 1270 	dec	a
      0017DB FE               [12] 1271 	mov	r6,a
      0017DC 8E F0            [24] 1272 	mov	b,r6
      0017DE 05 F0            [12] 1273 	inc	b
      0017E0 7E 01            [12] 1274 	mov	r6,#0x01
      0017E2 7D 00            [12] 1275 	mov	r5,#0x00
      0017E4 7C 00            [12] 1276 	mov	r4,#0x00
      0017E6 7B 00            [12] 1277 	mov	r3,#0x00
      0017E8 80 0C            [24] 1278 	sjmp	00157$
      0017EA                       1279 00156$:
      0017EA EE               [12] 1280 	mov	a,r6
      0017EB 2E               [12] 1281 	add	a,r6
      0017EC FE               [12] 1282 	mov	r6,a
      0017ED ED               [12] 1283 	mov	a,r5
      0017EE 33               [12] 1284 	rlc	a
      0017EF FD               [12] 1285 	mov	r5,a
      0017F0 EC               [12] 1286 	mov	a,r4
      0017F1 33               [12] 1287 	rlc	a
      0017F2 FC               [12] 1288 	mov	r4,a
      0017F3 EB               [12] 1289 	mov	a,r3
      0017F4 33               [12] 1290 	rlc	a
      0017F5 FB               [12] 1291 	mov	r3,a
      0017F6                       1292 00157$:
      0017F6 D5 F0 F1         [24] 1293 	djnz	b,00156$
                                   1294 ;	USBHost.c:136: if (value & sign) {
      0017F9 90 0B 25         [24] 1295 	mov	dptr,#_extract_field_value_65536_45
      0017FC E0               [24] 1296 	movx	a,@dptr
      0017FD F5 17            [12] 1297 	mov	_extract_field_sloc2_1_0,a
      0017FF A3               [24] 1298 	inc	dptr
      001800 E0               [24] 1299 	movx	a,@dptr
      001801 F5 18            [12] 1300 	mov	(_extract_field_sloc2_1_0 + 1),a
      001803 A3               [24] 1301 	inc	dptr
      001804 E0               [24] 1302 	movx	a,@dptr
      001805 F5 19            [12] 1303 	mov	(_extract_field_sloc2_1_0 + 2),a
      001807 A3               [24] 1304 	inc	dptr
      001808 E0               [24] 1305 	movx	a,@dptr
      001809 F5 1A            [12] 1306 	mov	(_extract_field_sloc2_1_0 + 3),a
      00180B E5 17            [12] 1307 	mov	a,_extract_field_sloc2_1_0
      00180D 52 06            [12] 1308 	anl	ar6,a
      00180F E5 18            [12] 1309 	mov	a,(_extract_field_sloc2_1_0 + 1)
      001811 52 05            [12] 1310 	anl	ar5,a
      001813 E5 19            [12] 1311 	mov	a,(_extract_field_sloc2_1_0 + 2)
      001815 52 04            [12] 1312 	anl	ar4,a
      001817 E5 1A            [12] 1313 	mov	a,(_extract_field_sloc2_1_0 + 3)
      001819 52 03            [12] 1314 	anl	ar3,a
      00181B EE               [12] 1315 	mov	a,r6
      00181C 4D               [12] 1316 	orl	a,r5
      00181D 4C               [12] 1317 	orl	a,r4
      00181E 4B               [12] 1318 	orl	a,r3
      00181F 60 4C            [24] 1319 	jz	00107$
                                   1320 ;	USBHost.c:137: value |= ~((1UL << bit_size) - 1);
      001821 8F F0            [24] 1321 	mov	b,r7
      001823 05 F0            [12] 1322 	inc	b
      001825 7F 01            [12] 1323 	mov	r7,#0x01
      001827 7E 00            [12] 1324 	mov	r6,#0x00
      001829 7D 00            [12] 1325 	mov	r5,#0x00
      00182B 7C 00            [12] 1326 	mov	r4,#0x00
      00182D 80 0C            [24] 1327 	sjmp	00160$
      00182F                       1328 00159$:
      00182F EF               [12] 1329 	mov	a,r7
      001830 2F               [12] 1330 	add	a,r7
      001831 FF               [12] 1331 	mov	r7,a
      001832 EE               [12] 1332 	mov	a,r6
      001833 33               [12] 1333 	rlc	a
      001834 FE               [12] 1334 	mov	r6,a
      001835 ED               [12] 1335 	mov	a,r5
      001836 33               [12] 1336 	rlc	a
      001837 FD               [12] 1337 	mov	r5,a
      001838 EC               [12] 1338 	mov	a,r4
      001839 33               [12] 1339 	rlc	a
      00183A FC               [12] 1340 	mov	r4,a
      00183B                       1341 00160$:
      00183B D5 F0 F1         [24] 1342 	djnz	b,00159$
      00183E 1F               [12] 1343 	dec	r7
      00183F BF FF 09         [24] 1344 	cjne	r7,#0xff,00161$
      001842 1E               [12] 1345 	dec	r6
      001843 BE FF 05         [24] 1346 	cjne	r6,#0xff,00161$
      001846 1D               [12] 1347 	dec	r5
      001847 BD FF 01         [24] 1348 	cjne	r5,#0xff,00161$
      00184A 1C               [12] 1349 	dec	r4
      00184B                       1350 00161$:
      00184B EF               [12] 1351 	mov	a,r7
      00184C F4               [12] 1352 	cpl	a
      00184D FF               [12] 1353 	mov	r7,a
      00184E EE               [12] 1354 	mov	a,r6
      00184F F4               [12] 1355 	cpl	a
      001850 FE               [12] 1356 	mov	r6,a
      001851 ED               [12] 1357 	mov	a,r5
      001852 F4               [12] 1358 	cpl	a
      001853 FD               [12] 1359 	mov	r5,a
      001854 EC               [12] 1360 	mov	a,r4
      001855 F4               [12] 1361 	cpl	a
      001856 FC               [12] 1362 	mov	r4,a
      001857 90 0B 25         [24] 1363 	mov	dptr,#_extract_field_value_65536_45
      00185A EF               [12] 1364 	mov	a,r7
      00185B 45 17            [12] 1365 	orl	a,_extract_field_sloc2_1_0
      00185D F0               [24] 1366 	movx	@dptr,a
      00185E EE               [12] 1367 	mov	a,r6
      00185F 45 18            [12] 1368 	orl	a,(_extract_field_sloc2_1_0 + 1)
      001861 A3               [24] 1369 	inc	dptr
      001862 F0               [24] 1370 	movx	@dptr,a
      001863 ED               [12] 1371 	mov	a,r5
      001864 45 19            [12] 1372 	orl	a,(_extract_field_sloc2_1_0 + 2)
      001866 A3               [24] 1373 	inc	dptr
      001867 F0               [24] 1374 	movx	@dptr,a
      001868 EC               [12] 1375 	mov	a,r4
      001869 45 1A            [12] 1376 	orl	a,(_extract_field_sloc2_1_0 + 3)
      00186B A3               [24] 1377 	inc	dptr
      00186C F0               [24] 1378 	movx	@dptr,a
      00186D                       1379 00107$:
                                   1380 ;	USBHost.c:141: return (int32_t)value;
      00186D 90 0B 25         [24] 1381 	mov	dptr,#_extract_field_value_65536_45
      001870 E0               [24] 1382 	movx	a,@dptr
      001871 FC               [12] 1383 	mov	r4,a
      001872 A3               [24] 1384 	inc	dptr
      001873 E0               [24] 1385 	movx	a,@dptr
      001874 FD               [12] 1386 	mov	r5,a
      001875 A3               [24] 1387 	inc	dptr
      001876 E0               [24] 1388 	movx	a,@dptr
      001877 FE               [12] 1389 	mov	r6,a
      001878 A3               [24] 1390 	inc	dptr
      001879 E0               [24] 1391 	movx	a,@dptr
      00187A 8C 82            [24] 1392 	mov	dpl,r4
      00187C 8D 83            [24] 1393 	mov	dph,r5
      00187E 8E F0            [24] 1394 	mov	b,r6
                                   1395 ;	USBHost.c:142: }
      001880 22               [24] 1396 	ret
                                   1397 ;------------------------------------------------------------
                                   1398 ;Allocation info for local variables in function 'disableRootHubPort'
                                   1399 ;------------------------------------------------------------
                                   1400 ;index                     Allocated with name '_disableRootHubPort_index_65536_49'
                                   1401 ;------------------------------------------------------------
                                   1402 ;	USBHost.c:144: static void disableRootHubPort(uint8_t index)
                                   1403 ;	-----------------------------------------
                                   1404 ;	 function disableRootHubPort
                                   1405 ;	-----------------------------------------
      001881                       1406 _disableRootHubPort:
      001881 E5 82            [12] 1407 	mov	a,dpl
      001883 90 0B 2B         [24] 1408 	mov	dptr,#_disableRootHubPort_index_65536_49
      001886 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	USBHost.c:146: rootHubDevice[index].status = ROOT_DEVICE_DISCONNECT;
      001887 E0               [24] 1411 	movx	a,@dptr
      001888 FF               [12] 1412 	mov	r7,a
      001889 75 F0 03         [24] 1413 	mov	b,#0x03
      00188C A4               [48] 1414 	mul	ab
      00188D FD               [12] 1415 	mov	r5,a
      00188E AE F0            [24] 1416 	mov	r6,b
      001890 24 18            [12] 1417 	add	a,#_rootHubDevice
      001892 F5 82            [12] 1418 	mov	dpl,a
      001894 EE               [12] 1419 	mov	a,r6
      001895 34 0B            [12] 1420 	addc	a,#(_rootHubDevice >> 8)
      001897 F5 83            [12] 1421 	mov	dph,a
      001899 E4               [12] 1422 	clr	a
      00189A F0               [24] 1423 	movx	@dptr,a
                                   1424 ;	USBHost.c:147: rootHubDevice[index].address = 0;
      00189B ED               [12] 1425 	mov	a,r5
      00189C 24 18            [12] 1426 	add	a,#_rootHubDevice
      00189E FD               [12] 1427 	mov	r5,a
      00189F EE               [12] 1428 	mov	a,r6
      0018A0 34 0B            [12] 1429 	addc	a,#(_rootHubDevice >> 8)
      0018A2 FE               [12] 1430 	mov	r6,a
      0018A3 8D 82            [24] 1431 	mov	dpl,r5
      0018A5 8E 83            [24] 1432 	mov	dph,r6
      0018A7 A3               [24] 1433 	inc	dptr
      0018A8 E4               [12] 1434 	clr	a
      0018A9 F0               [24] 1435 	movx	@dptr,a
                                   1436 ;	USBHost.c:148: if (index)
      0018AA EF               [12] 1437 	mov	a,r7
      0018AB 60 04            [24] 1438 	jz	00102$
                                   1439 ;	USBHost.c:149: UHUB1_CTRL = 0;
      0018AD 75 E5 00         [24] 1440 	mov	_UHUB1_CTRL,#0x00
      0018B0 22               [24] 1441 	ret
      0018B1                       1442 00102$:
                                   1443 ;	USBHost.c:151: UHUB0_CTRL = 0;
      0018B1 75 E4 00         [24] 1444 	mov	_UDEV_CTRL,#0x00
                                   1445 ;	USBHost.c:152: }
      0018B4 22               [24] 1446 	ret
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'initUSB_Host'
                                   1449 ;------------------------------------------------------------
                                   1450 ;	USBHost.c:154: void initUSB_Host()
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function initUSB_Host
                                   1453 ;	-----------------------------------------
      0018B5                       1454 _initUSB_Host:
                                   1455 ;	USBHost.c:156: IE_USB = 0;
                                   1456 ;	assignBit
      0018B5 C2 EA            [12] 1457 	clr	_IE_USB
                                   1458 ;	USBHost.c:157: USB_CTRL = bUC_HOST_MODE;
      0018B7 75 E2 80         [24] 1459 	mov	_USB_CTRL,#0x80
                                   1460 ;	USBHost.c:158: USB_DEV_AD = 0x00;
      0018BA 75 E3 00         [24] 1461 	mov	_USB_DEV_AD,#0x00
                                   1462 ;	USBHost.c:159: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN;
      0018BD 90 24 47         [24] 1463 	mov	dptr,#_UEP2_3_MOD
      0018C0 74 48            [12] 1464 	mov	a,#0x48
      0018C2 F0               [24] 1465 	movx	@dptr,a
                                   1466 ;	USBHost.c:160: UH_RX_DMA = 0x0000;
      0018C3 90 24 4C         [24] 1467 	mov	dptr,#_UEP2_DMA
      0018C6 E4               [12] 1468 	clr	a
      0018C7 F0               [24] 1469 	movx	@dptr,a
      0018C8 A3               [24] 1470 	inc	dptr
      0018C9 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	USBHost.c:161: UH_TX_DMA = 0x0001;
      0018CA 90 24 4E         [24] 1473 	mov	dptr,#_UEP3_DMA
      0018CD 04               [12] 1474 	inc	a
      0018CE F0               [24] 1475 	movx	@dptr,a
      0018CF E4               [12] 1476 	clr	a
      0018D0 A3               [24] 1477 	inc	dptr
      0018D1 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	USBHost.c:162: UH_RX_CTRL = 0x00;
                                   1480 ;	1-genFromRTrack replaced	mov	_UEP2_CTRL,#0x00
      0018D2 F5 D4            [12] 1481 	mov	_UEP2_CTRL,a
                                   1482 ;	USBHost.c:163: UH_TX_CTRL = 0x00;
                                   1483 ;	1-genFromRTrack replaced	mov	_UEP3_CTRL,#0x00
      0018D4 F5 D6            [12] 1484 	mov	_UEP3_CTRL,a
                                   1485 ;	USBHost.c:164: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY | bUC_DMA_EN;
      0018D6 75 E2 89         [24] 1486 	mov	_USB_CTRL,#0x89
                                   1487 ;	USBHost.c:165: UH_SETUP = bUH_SOF_EN;
      0018D9 75 D2 40         [24] 1488 	mov	_UEP1_CTRL,#0x40
                                   1489 ;	USBHost.c:166: USB_INT_FG = 0xFF;
      0018DC 75 D8 FF         [24] 1490 	mov	_USB_INT_FG,#0xff
                                   1491 ;	USBHost.c:168: disableRootHubPort(0);
      0018DF 75 82 00         [24] 1492 	mov	dpl,#0x00
      0018E2 12 18 81         [24] 1493 	lcall	_disableRootHubPort
                                   1494 ;	USBHost.c:169: disableRootHubPort(1);
      0018E5 75 82 01         [24] 1495 	mov	dpl,#0x01
      0018E8 12 18 81         [24] 1496 	lcall	_disableRootHubPort
                                   1497 ;	USBHost.c:170: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
      0018EB 75 E1 03         [24] 1498 	mov	_USB_INT_EN,#0x03
                                   1499 ;	USBHost.c:171: }
      0018EE 22               [24] 1500 	ret
                                   1501 ;------------------------------------------------------------
                                   1502 ;Allocation info for local variables in function 'setHostUsbAddr'
                                   1503 ;------------------------------------------------------------
                                   1504 ;addr                      Allocated with name '_setHostUsbAddr_addr_65536_52'
                                   1505 ;------------------------------------------------------------
                                   1506 ;	USBHost.c:173: static void setHostUsbAddr(uint8_t addr)
                                   1507 ;	-----------------------------------------
                                   1508 ;	 function setHostUsbAddr
                                   1509 ;	-----------------------------------------
      0018EF                       1510 _setHostUsbAddr:
      0018EF E5 82            [12] 1511 	mov	a,dpl
      0018F1 90 0B 2C         [24] 1512 	mov	dptr,#_setHostUsbAddr_addr_65536_52
      0018F4 F0               [24] 1513 	movx	@dptr,a
                                   1514 ;	USBHost.c:175: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
      0018F5 E5 E3            [12] 1515 	mov	a,_USB_DEV_AD
      0018F7 54 80            [12] 1516 	anl	a,#0x80
      0018F9 FF               [12] 1517 	mov	r7,a
      0018FA E0               [24] 1518 	movx	a,@dptr
      0018FB 54 7F            [12] 1519 	anl	a,#0x7f
      0018FD 4F               [12] 1520 	orl	a,r7
      0018FE F5 E3            [12] 1521 	mov	_USB_DEV_AD,a
                                   1522 ;	USBHost.c:176: }
      001900 22               [24] 1523 	ret
                                   1524 ;------------------------------------------------------------
                                   1525 ;Allocation info for local variables in function 'setUsbSpeed'
                                   1526 ;------------------------------------------------------------
                                   1527 ;fullSpeed                 Allocated with name '_setUsbSpeed_fullSpeed_65536_54'
                                   1528 ;------------------------------------------------------------
                                   1529 ;	USBHost.c:178: static void setUsbSpeed(uint8_t fullSpeed)
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function setUsbSpeed
                                   1532 ;	-----------------------------------------
      001901                       1533 _setUsbSpeed:
      001901 E5 82            [12] 1534 	mov	a,dpl
      001903 90 0B 2D         [24] 1535 	mov	dptr,#_setUsbSpeed_fullSpeed_65536_54
      001906 F0               [24] 1536 	movx	@dptr,a
                                   1537 ;	USBHost.c:180: if (fullSpeed) {
      001907 E0               [24] 1538 	movx	a,@dptr
      001908 60 07            [24] 1539 	jz	00102$
                                   1540 ;	USBHost.c:181: USB_CTRL &= ~bUC_LOW_SPEED;
      00190A 53 E2 BF         [24] 1541 	anl	_USB_CTRL,#0xbf
                                   1542 ;	USBHost.c:182: UH_SETUP &= ~bUH_PRE_PID_EN;
      00190D 53 D2 7F         [24] 1543 	anl	_UEP1_CTRL,#0x7f
      001910 22               [24] 1544 	ret
      001911                       1545 00102$:
                                   1546 ;	USBHost.c:184: USB_CTRL |= bUC_LOW_SPEED;
      001911 43 E2 40         [24] 1547 	orl	_USB_CTRL,#0x40
                                   1548 ;	USBHost.c:186: }
      001914 22               [24] 1549 	ret
                                   1550 ;------------------------------------------------------------
                                   1551 ;Allocation info for local variables in function 'resetRootHubPort'
                                   1552 ;------------------------------------------------------------
                                   1553 ;rootHubIndex              Allocated with name '_resetRootHubPort_rootHubIndex_65536_58'
                                   1554 ;------------------------------------------------------------
                                   1555 ;	USBHost.c:188: static void resetRootHubPort(uint8_t rootHubIndex)
                                   1556 ;	-----------------------------------------
                                   1557 ;	 function resetRootHubPort
                                   1558 ;	-----------------------------------------
      001915                       1559 _resetRootHubPort:
      001915 E5 82            [12] 1560 	mov	a,dpl
      001917 90 0B 2E         [24] 1561 	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_58
      00191A F0               [24] 1562 	movx	@dptr,a
                                   1563 ;	USBHost.c:190: endpoint0Size = DEFAULT_ENDP0_SIZE; // todo what's that?
      00191B 90 08 47         [24] 1564 	mov	dptr,#_endpoint0Size
      00191E 74 08            [12] 1565 	mov	a,#0x08
      001920 F0               [24] 1566 	movx	@dptr,a
                                   1567 ;	USBHost.c:191: setHostUsbAddr(0);
      001921 75 82 00         [24] 1568 	mov	dpl,#0x00
      001924 12 18 EF         [24] 1569 	lcall	_setHostUsbAddr
                                   1570 ;	USBHost.c:192: setUsbSpeed(1);
      001927 75 82 01         [24] 1571 	mov	dpl,#0x01
      00192A 12 19 01         [24] 1572 	lcall	_setUsbSpeed
                                   1573 ;	USBHost.c:194: if (rootHubIndex == 0) {
      00192D 90 0B 2E         [24] 1574 	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_58
      001930 E0               [24] 1575 	movx	a,@dptr
      001931 FF               [12] 1576 	mov	r7,a
      001932 E0               [24] 1577 	movx	a,@dptr
      001933 70 13            [24] 1578 	jnz	00104$
                                   1579 ;	USBHost.c:195: UHUB0_CTRL = UHUB0_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
      001935 74 FB            [12] 1580 	mov	a,#0xfb
      001937 55 E4            [12] 1581 	anl	a,_UDEV_CTRL
      001939 44 02            [12] 1582 	orl	a,#0x02
      00193B F5 E4            [12] 1583 	mov	_UDEV_CTRL,a
                                   1584 ;	USBHost.c:196: delay(15);
      00193D 90 00 0F         [24] 1585 	mov	dptr,#0x000f
      001940 12 16 3C         [24] 1586 	lcall	_delay
                                   1587 ;	USBHost.c:197: UHUB0_CTRL = UHUB0_CTRL & ~bUH_BUS_RESET;
      001943 53 E4 FD         [24] 1588 	anl	_UDEV_CTRL,#0xfd
      001946 80 14            [24] 1589 	sjmp	00105$
      001948                       1590 00104$:
                                   1591 ;	USBHost.c:198: } else if (rootHubIndex == 1) {
      001948 BF 01 11         [24] 1592 	cjne	r7,#0x01,00105$
                                   1593 ;	USBHost.c:199: UHUB1_CTRL = UHUB1_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
      00194B 74 FB            [12] 1594 	mov	a,#0xfb
      00194D 55 E5            [12] 1595 	anl	a,_UHUB1_CTRL
      00194F 44 02            [12] 1596 	orl	a,#0x02
      001951 F5 E5            [12] 1597 	mov	_UHUB1_CTRL,a
                                   1598 ;	USBHost.c:200: delay(15);
      001953 90 00 0F         [24] 1599 	mov	dptr,#0x000f
      001956 12 16 3C         [24] 1600 	lcall	_delay
                                   1601 ;	USBHost.c:201: UHUB1_CTRL = UHUB1_CTRL & ~bUH_BUS_RESET;
      001959 53 E5 FD         [24] 1602 	anl	_UHUB1_CTRL,#0xfd
      00195C                       1603 00105$:
                                   1604 ;	USBHost.c:204: delayUs(250);
      00195C 90 00 FA         [24] 1605 	mov	dptr,#0x00fa
      00195F 12 15 E7         [24] 1606 	lcall	_delayUs
                                   1607 ;	USBHost.c:205: UIF_DETECT = 0; // todo test if redundant
                                   1608 ;	assignBit
      001962 C2 D8            [12] 1609 	clr	_UIF_DETECT
                                   1610 ;	USBHost.c:206: }
      001964 22               [24] 1611 	ret
                                   1612 ;------------------------------------------------------------
                                   1613 ;Allocation info for local variables in function 'enableRootHubPort'
                                   1614 ;------------------------------------------------------------
                                   1615 ;rootHubIndex              Allocated with name '_enableRootHubPort_rootHubIndex_65536_62'
                                   1616 ;------------------------------------------------------------
                                   1617 ;	USBHost.c:208: static uint8_t enableRootHubPort(uint8_t rootHubIndex)
                                   1618 ;	-----------------------------------------
                                   1619 ;	 function enableRootHubPort
                                   1620 ;	-----------------------------------------
      001965                       1621 _enableRootHubPort:
      001965 E5 82            [12] 1622 	mov	a,dpl
      001967 90 0B 2F         [24] 1623 	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_62
      00196A F0               [24] 1624 	movx	@dptr,a
                                   1625 ;	USBHost.c:210: if (rootHubDevice[rootHubIndex].status < 1) {
      00196B E0               [24] 1626 	movx	a,@dptr
      00196C 75 F0 03         [24] 1627 	mov	b,#0x03
      00196F A4               [48] 1628 	mul	ab
      001970 24 18            [12] 1629 	add	a,#_rootHubDevice
      001972 FE               [12] 1630 	mov	r6,a
      001973 74 0B            [12] 1631 	mov	a,#(_rootHubDevice >> 8)
      001975 35 F0            [12] 1632 	addc	a,b
      001977 FF               [12] 1633 	mov	r7,a
      001978 8E 82            [24] 1634 	mov	dpl,r6
      00197A 8F 83            [24] 1635 	mov	dph,r7
      00197C E0               [24] 1636 	movx	a,@dptr
      00197D FD               [12] 1637 	mov	r5,a
      00197E BD 01 00         [24] 1638 	cjne	r5,#0x01,00160$
      001981                       1639 00160$:
      001981 50 07            [24] 1640 	jnc	00102$
                                   1641 ;	USBHost.c:211: rootHubDevice[rootHubIndex].status = 1;
      001983 8E 82            [24] 1642 	mov	dpl,r6
      001985 8F 83            [24] 1643 	mov	dph,r7
      001987 74 01            [12] 1644 	mov	a,#0x01
      001989 F0               [24] 1645 	movx	@dptr,a
      00198A                       1646 00102$:
                                   1647 ;	USBHost.c:214: if (rootHubIndex == 0) {
      00198A 90 0B 2F         [24] 1648 	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_62
      00198D E0               [24] 1649 	movx	a,@dptr
      00198E FF               [12] 1650 	mov	r7,a
      00198F 70 49            [24] 1651 	jnz	00120$
                                   1652 ;	USBHost.c:215: if (USB_HUB_ST & bUHS_H0_ATTACH) {
      001991 E5 DB            [12] 1653 	mov	a,_USB_HUB_ST
      001993 20 E3 03         [24] 1654 	jb	acc.3,00163$
      001996 02 1A 23         [24] 1655 	ljmp	00121$
      001999                       1656 00163$:
                                   1657 ;	USBHost.c:216: if ((UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
      001999 E5 E4            [12] 1658 	mov	a,_UDEV_CTRL
      00199B 20 E0 35         [24] 1659 	jb	acc.0,00107$
                                   1660 ;	USBHost.c:217: if (USB_HUB_ST & bUHS_DM_LEVEL) {
      00199E E5 DB            [12] 1661 	mov	a,_USB_HUB_ST
      0019A0 30 E2 1A         [24] 1662 	jnb	acc.2,00104$
                                   1663 ;	USBHost.c:218: rootHubDevice[rootHubIndex].speed = 0;
      0019A3 EF               [12] 1664 	mov	a,r7
      0019A4 75 F0 03         [24] 1665 	mov	b,#0x03
      0019A7 A4               [48] 1666 	mul	ab
      0019A8 24 18            [12] 1667 	add	a,#_rootHubDevice
      0019AA FD               [12] 1668 	mov	r5,a
      0019AB 74 0B            [12] 1669 	mov	a,#(_rootHubDevice >> 8)
      0019AD 35 F0            [12] 1670 	addc	a,b
      0019AF FE               [12] 1671 	mov	r6,a
      0019B0 8D 82            [24] 1672 	mov	dpl,r5
      0019B2 8E 83            [24] 1673 	mov	dph,r6
      0019B4 A3               [24] 1674 	inc	dptr
      0019B5 A3               [24] 1675 	inc	dptr
      0019B6 E4               [12] 1676 	clr	a
      0019B7 F0               [24] 1677 	movx	@dptr,a
                                   1678 ;	USBHost.c:219: UHUB0_CTRL |= bUH_LOW_SPEED;
      0019B8 43 E4 04         [24] 1679 	orl	_UDEV_CTRL,#0x04
      0019BB 80 16            [24] 1680 	sjmp	00107$
      0019BD                       1681 00104$:
                                   1682 ;	USBHost.c:221: rootHubDevice[rootHubIndex].speed = 1;
      0019BD EF               [12] 1683 	mov	a,r7
      0019BE 75 F0 03         [24] 1684 	mov	b,#0x03
      0019C1 A4               [48] 1685 	mul	ab
      0019C2 24 18            [12] 1686 	add	a,#_rootHubDevice
      0019C4 FD               [12] 1687 	mov	r5,a
      0019C5 74 0B            [12] 1688 	mov	a,#(_rootHubDevice >> 8)
      0019C7 35 F0            [12] 1689 	addc	a,b
      0019C9 FE               [12] 1690 	mov	r6,a
      0019CA 8D 82            [24] 1691 	mov	dpl,r5
      0019CC 8E 83            [24] 1692 	mov	dph,r6
      0019CE A3               [24] 1693 	inc	dptr
      0019CF A3               [24] 1694 	inc	dptr
      0019D0 74 01            [12] 1695 	mov	a,#0x01
      0019D2 F0               [24] 1696 	movx	@dptr,a
      0019D3                       1697 00107$:
                                   1698 ;	USBHost.c:224: UHUB0_CTRL |= bUH_PORT_EN;
      0019D3 43 E4 01         [24] 1699 	orl	_UDEV_CTRL,#0x01
                                   1700 ;	USBHost.c:225: return ERR_SUCCESS;
      0019D6 75 82 00         [24] 1701 	mov	dpl,#0x00
      0019D9 22               [24] 1702 	ret
      0019DA                       1703 00120$:
                                   1704 ;	USBHost.c:227: } else if (rootHubIndex == 1) {
      0019DA BF 01 46         [24] 1705 	cjne	r7,#0x01,00121$
                                   1706 ;	USBHost.c:228: if (USB_HUB_ST & bUHS_H1_ATTACH) {
      0019DD E5 DB            [12] 1707 	mov	a,_USB_HUB_ST
      0019DF 30 E7 41         [24] 1708 	jnb	acc.7,00121$
                                   1709 ;	USBHost.c:229: if ((UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
      0019E2 E5 E5            [12] 1710 	mov	a,_UHUB1_CTRL
      0019E4 20 E0 35         [24] 1711 	jb	acc.0,00114$
                                   1712 ;	USBHost.c:230: if (USB_HUB_ST & bUHS_HM_LEVEL) {
      0019E7 E5 DB            [12] 1713 	mov	a,_USB_HUB_ST
      0019E9 30 E6 1A         [24] 1714 	jnb	acc.6,00111$
                                   1715 ;	USBHost.c:231: rootHubDevice[rootHubIndex].speed = 0;
      0019EC EF               [12] 1716 	mov	a,r7
      0019ED 75 F0 03         [24] 1717 	mov	b,#0x03
      0019F0 A4               [48] 1718 	mul	ab
      0019F1 24 18            [12] 1719 	add	a,#_rootHubDevice
      0019F3 FD               [12] 1720 	mov	r5,a
      0019F4 74 0B            [12] 1721 	mov	a,#(_rootHubDevice >> 8)
      0019F6 35 F0            [12] 1722 	addc	a,b
      0019F8 FE               [12] 1723 	mov	r6,a
      0019F9 8D 82            [24] 1724 	mov	dpl,r5
      0019FB 8E 83            [24] 1725 	mov	dph,r6
      0019FD A3               [24] 1726 	inc	dptr
      0019FE A3               [24] 1727 	inc	dptr
      0019FF E4               [12] 1728 	clr	a
      001A00 F0               [24] 1729 	movx	@dptr,a
                                   1730 ;	USBHost.c:232: UHUB1_CTRL |= bUH_LOW_SPEED;
      001A01 43 E5 04         [24] 1731 	orl	_UHUB1_CTRL,#0x04
      001A04 80 16            [24] 1732 	sjmp	00114$
      001A06                       1733 00111$:
                                   1734 ;	USBHost.c:234: rootHubDevice[rootHubIndex].speed = 1;
      001A06 EF               [12] 1735 	mov	a,r7
      001A07 75 F0 03         [24] 1736 	mov	b,#0x03
      001A0A A4               [48] 1737 	mul	ab
      001A0B 24 18            [12] 1738 	add	a,#_rootHubDevice
      001A0D FE               [12] 1739 	mov	r6,a
      001A0E 74 0B            [12] 1740 	mov	a,#(_rootHubDevice >> 8)
      001A10 35 F0            [12] 1741 	addc	a,b
      001A12 FF               [12] 1742 	mov	r7,a
      001A13 8E 82            [24] 1743 	mov	dpl,r6
      001A15 8F 83            [24] 1744 	mov	dph,r7
      001A17 A3               [24] 1745 	inc	dptr
      001A18 A3               [24] 1746 	inc	dptr
      001A19 74 01            [12] 1747 	mov	a,#0x01
      001A1B F0               [24] 1748 	movx	@dptr,a
      001A1C                       1749 00114$:
                                   1750 ;	USBHost.c:237: UHUB1_CTRL |= bUH_PORT_EN;
      001A1C 43 E5 01         [24] 1751 	orl	_UHUB1_CTRL,#0x01
                                   1752 ;	USBHost.c:238: return ERR_SUCCESS;
      001A1F 75 82 00         [24] 1753 	mov	dpl,#0x00
      001A22 22               [24] 1754 	ret
      001A23                       1755 00121$:
                                   1756 ;	USBHost.c:241: return ERR_USB_DISCON;
      001A23 75 82 16         [24] 1757 	mov	dpl,#0x16
                                   1758 ;	USBHost.c:242: }
      001A26 22               [24] 1759 	ret
                                   1760 ;------------------------------------------------------------
                                   1761 ;Allocation info for local variables in function 'selectHubPort'
                                   1762 ;------------------------------------------------------------
                                   1763 ;HubPortIndex              Allocated with name '_selectHubPort_PARM_2'
                                   1764 ;rootHubIndex              Allocated with name '_selectHubPort_rootHubIndex_65536_75'
                                   1765 ;temp                      Allocated with name '_selectHubPort_temp_65536_76'
                                   1766 ;------------------------------------------------------------
                                   1767 ;	USBHost.c:244: static void selectHubPort(uint8_t rootHubIndex, uint8_t HubPortIndex)
                                   1768 ;	-----------------------------------------
                                   1769 ;	 function selectHubPort
                                   1770 ;	-----------------------------------------
      001A27                       1771 _selectHubPort:
      001A27 E5 82            [12] 1772 	mov	a,dpl
      001A29 90 0B 31         [24] 1773 	mov	dptr,#_selectHubPort_rootHubIndex_65536_75
      001A2C F0               [24] 1774 	movx	@dptr,a
                                   1775 ;	USBHost.c:247: setHostUsbAddr(rootHubDevice[rootHubIndex].address); // todo ever != 0
      001A2D E0               [24] 1776 	movx	a,@dptr
      001A2E 75 F0 03         [24] 1777 	mov	b,#0x03
      001A31 A4               [48] 1778 	mul	ab
      001A32 24 18            [12] 1779 	add	a,#_rootHubDevice
      001A34 FE               [12] 1780 	mov	r6,a
      001A35 74 0B            [12] 1781 	mov	a,#(_rootHubDevice >> 8)
      001A37 35 F0            [12] 1782 	addc	a,b
      001A39 FF               [12] 1783 	mov	r7,a
      001A3A 8E 82            [24] 1784 	mov	dpl,r6
      001A3C 8F 83            [24] 1785 	mov	dph,r7
      001A3E A3               [24] 1786 	inc	dptr
      001A3F E0               [24] 1787 	movx	a,@dptr
      001A40 F5 82            [12] 1788 	mov	dpl,a
      001A42 C0 07            [24] 1789 	push	ar7
      001A44 C0 06            [24] 1790 	push	ar6
      001A46 12 18 EF         [24] 1791 	lcall	_setHostUsbAddr
      001A49 D0 06            [24] 1792 	pop	ar6
      001A4B D0 07            [24] 1793 	pop	ar7
                                   1794 ;	USBHost.c:248: setUsbSpeed(rootHubDevice[rootHubIndex].speed); // isn't that set before?
      001A4D 8E 82            [24] 1795 	mov	dpl,r6
      001A4F 8F 83            [24] 1796 	mov	dph,r7
      001A51 A3               [24] 1797 	inc	dptr
      001A52 A3               [24] 1798 	inc	dptr
      001A53 E0               [24] 1799 	movx	a,@dptr
      001A54 F5 82            [12] 1800 	mov	dpl,a
                                   1801 ;	USBHost.c:249: }
      001A56 02 19 01         [24] 1802 	ljmp	_setUsbSpeed
                                   1803 ;------------------------------------------------------------
                                   1804 ;Allocation info for local variables in function 'hostTransfer'
                                   1805 ;------------------------------------------------------------
                                   1806 ;sloc0                     Allocated with name '_hostTransfer_sloc0_1_0'
                                   1807 ;sloc1                     Allocated with name '_hostTransfer_sloc1_1_0'
                                   1808 ;sloc2                     Allocated with name '_hostTransfer_sloc2_1_0'
                                   1809 ;tog                       Allocated with name '_hostTransfer_PARM_2'
                                   1810 ;timeout                   Allocated with name '_hostTransfer_PARM_3'
                                   1811 ;endp_pid                  Allocated with name '_hostTransfer_endp_pid_65536_77'
                                   1812 ;retries                   Allocated with name '_hostTransfer_retries_65536_78'
                                   1813 ;r                         Allocated with name '_hostTransfer_r_65536_78'
                                   1814 ;i                         Allocated with name '_hostTransfer_i_65536_78'
                                   1815 ;------------------------------------------------------------
                                   1816 ;	USBHost.c:251: static uint8_t hostTransfer(uint8_t endp_pid, uint8_t tog, uint16_t timeout)
                                   1817 ;	-----------------------------------------
                                   1818 ;	 function hostTransfer
                                   1819 ;	-----------------------------------------
      001A59                       1820 _hostTransfer:
      001A59 E5 82            [12] 1821 	mov	a,dpl
      001A5B 90 0B 35         [24] 1822 	mov	dptr,#_hostTransfer_endp_pid_65536_77
      001A5E F0               [24] 1823 	movx	@dptr,a
                                   1824 ;	USBHost.c:253: __xdata uint16_t retries = 0;
      001A5F 90 0B 36         [24] 1825 	mov	dptr,#_hostTransfer_retries_65536_78
      001A62 E4               [12] 1826 	clr	a
      001A63 F0               [24] 1827 	movx	@dptr,a
      001A64 A3               [24] 1828 	inc	dptr
      001A65 F0               [24] 1829 	movx	@dptr,a
                                   1830 ;	USBHost.c:256: UH_RX_CTRL = tog;
      001A66 90 0B 32         [24] 1831 	mov	dptr,#_hostTransfer_PARM_2
      001A69 E0               [24] 1832 	movx	a,@dptr
      001A6A FF               [12] 1833 	mov	r7,a
      001A6B 8F D4            [24] 1834 	mov	_UEP2_CTRL,r7
                                   1835 ;	USBHost.c:257: UH_TX_CTRL = tog;
      001A6D 8F D6            [24] 1836 	mov	_UEP3_CTRL,r7
                                   1837 ;	USBHost.c:259: do {
      001A6F 90 0B 35         [24] 1838 	mov	dptr,#_hostTransfer_endp_pid_65536_77
      001A72 E0               [24] 1839 	movx	a,@dptr
      001A73 FE               [12] 1840 	mov	r6,a
      001A74 C4               [12] 1841 	swap	a
      001A75 54 0F            [12] 1842 	anl	a,#0x0f
      001A77 FD               [12] 1843 	mov	r5,a
      001A78 BD 01 03         [24] 1844 	cjne	r5,#0x01,00257$
      001A7B ED               [12] 1845 	mov	a,r5
      001A7C 80 01            [24] 1846 	sjmp	00258$
      001A7E                       1847 00257$:
      001A7E E4               [12] 1848 	clr	a
      001A7F                       1849 00258$:
      001A7F F5 24            [12] 1850 	mov	_hostTransfer_sloc2_1_0,a
      001A81 E4               [12] 1851 	clr	a
      001A82 BD 09 01         [24] 1852 	cjne	r5,#0x09,00259$
      001A85 04               [12] 1853 	inc	a
      001A86                       1854 00259$:
      001A86 FB               [12] 1855 	mov	r3,a
      001A87 90 0B 33         [24] 1856 	mov	dptr,#_hostTransfer_PARM_3
      001A8A E0               [24] 1857 	movx	a,@dptr
      001A8B F9               [12] 1858 	mov	r1,a
      001A8C A3               [24] 1859 	inc	dptr
      001A8D E0               [24] 1860 	movx	a,@dptr
      001A8E FA               [12] 1861 	mov	r2,a
      001A8F                       1862 00145$:
                                   1863 ;	USBHost.c:260: UH_EP_PID = endp_pid;
      001A8F 8E D5            [24] 1864 	mov	_UEP2_T_LEN,r6
                                   1865 ;	USBHost.c:261: UIF_TRANSFER = 0;
                                   1866 ;	assignBit
      001A91 C2 D9            [12] 1867 	clr	_UIF_TRANSFER
                                   1868 ;	USBHost.c:262: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--) {
      001A93 75 21 C8         [24] 1869 	mov	_hostTransfer_sloc0_1_0,#0xc8
      001A96 75 22 00         [24] 1870 	mov	(_hostTransfer_sloc0_1_0 + 1),#0x00
      001A99                       1871 00150$:
      001A99 E5 21            [12] 1872 	mov	a,_hostTransfer_sloc0_1_0
      001A9B 45 22            [12] 1873 	orl	a,(_hostTransfer_sloc0_1_0 + 1)
      001A9D 60 2C            [24] 1874 	jz	00101$
      001A9F 20 D9 29         [24] 1875 	jb	_UIF_TRANSFER,00101$
                                   1876 ;	USBHost.c:263: delayUs(1);
      001AA2 90 00 01         [24] 1877 	mov	dptr,#0x0001
      001AA5 C0 07            [24] 1878 	push	ar7
      001AA7 C0 06            [24] 1879 	push	ar6
      001AA9 C0 05            [24] 1880 	push	ar5
      001AAB C0 03            [24] 1881 	push	ar3
      001AAD C0 02            [24] 1882 	push	ar2
      001AAF C0 01            [24] 1883 	push	ar1
      001AB1 12 15 E7         [24] 1884 	lcall	_delayUs
      001AB4 D0 01            [24] 1885 	pop	ar1
      001AB6 D0 02            [24] 1886 	pop	ar2
      001AB8 D0 03            [24] 1887 	pop	ar3
      001ABA D0 05            [24] 1888 	pop	ar5
      001ABC D0 06            [24] 1889 	pop	ar6
      001ABE D0 07            [24] 1890 	pop	ar7
                                   1891 ;	USBHost.c:262: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--) {
      001AC0 15 21            [12] 1892 	dec	_hostTransfer_sloc0_1_0
      001AC2 74 FF            [12] 1893 	mov	a,#0xff
      001AC4 B5 21 02         [24] 1894 	cjne	a,_hostTransfer_sloc0_1_0,00263$
      001AC7 15 22            [12] 1895 	dec	(_hostTransfer_sloc0_1_0 + 1)
      001AC9                       1896 00263$:
      001AC9 80 CE            [24] 1897 	sjmp	00150$
      001ACB                       1898 00101$:
                                   1899 ;	USBHost.c:265: UH_EP_PID = 0x00;
      001ACB 75 D5 00         [24] 1900 	mov	_UEP2_T_LEN,#0x00
                                   1901 ;	USBHost.c:267: if (UIF_TRANSFER == 0) {
      001ACE 20 D9 04         [24] 1902 	jb	_UIF_TRANSFER,00103$
                                   1903 ;	USBHost.c:268: return ERR_USB_UNKNOWN;
      001AD1 75 82 FE         [24] 1904 	mov	dpl,#0xfe
      001AD4 22               [24] 1905 	ret
      001AD5                       1906 00103$:
                                   1907 ;	USBHost.c:271: if (UIF_TRANSFER) {
      001AD5 20 D9 03         [24] 1908 	jb	_UIF_TRANSFER,00265$
      001AD8 02 1B D5         [24] 1909 	ljmp	00143$
      001ADB                       1910 00265$:
                                   1911 ;	USBHost.c:272: if (U_TOG_OK) {
      001ADB 30 DE 04         [24] 1912 	jnb	_U_TOG_OK,00105$
                                   1913 ;	USBHost.c:273: return ERR_SUCCESS;
      001ADE 75 82 00         [24] 1914 	mov	dpl,#0x00
      001AE1 22               [24] 1915 	ret
      001AE2                       1916 00105$:
                                   1917 ;	USBHost.c:276: r = USB_INT_ST & MASK_UIS_H_RES;
      001AE2 E5 D9            [12] 1918 	mov	a,_USB_INT_ST
      001AE4 54 0F            [12] 1919 	anl	a,#0x0f
      001AE6 F5 23            [12] 1920 	mov	_hostTransfer_sloc1_1_0,a
                                   1921 ;	USBHost.c:277: if (r == USB_PID_STALL) {
      001AE8 74 0E            [12] 1922 	mov	a,#0x0e
      001AEA B5 23 04         [24] 1923 	cjne	a,_hostTransfer_sloc1_1_0,00267$
      001AED 74 01            [12] 1924 	mov	a,#0x01
      001AEF 80 01            [24] 1925 	sjmp	00268$
      001AF1                       1926 00267$:
      001AF1 E4               [12] 1927 	clr	a
      001AF2                       1928 00268$:
      001AF2 F5 21            [12] 1929 	mov	_hostTransfer_sloc0_1_0,a
      001AF4 60 07            [24] 1930 	jz	00107$
                                   1931 ;	USBHost.c:278: return r | ERR_USB_TRANSFER;
      001AF6 74 20            [12] 1932 	mov	a,#0x20
      001AF8 45 23            [12] 1933 	orl	a,_hostTransfer_sloc1_1_0
      001AFA F5 82            [12] 1934 	mov	dpl,a
      001AFC 22               [24] 1935 	ret
      001AFD                       1936 00107$:
                                   1937 ;	USBHost.c:281: if (r == USB_PID_NAK) {
      001AFD 74 0A            [12] 1938 	mov	a,#0x0a
      001AFF B5 23 04         [24] 1939 	cjne	a,_hostTransfer_sloc1_1_0,00270$
      001B02 74 01            [12] 1940 	mov	a,#0x01
      001B04 80 01            [24] 1941 	sjmp	00271$
      001B06                       1942 00270$:
      001B06 E4               [12] 1943 	clr	a
      001B07                       1944 00271$:
      001B07 F8               [12] 1945 	mov	r0,a
      001B08 60 3F            [24] 1946 	jz	00140$
                                   1947 ;	USBHost.c:282: if (timeout == 0) {
      001B0A E9               [12] 1948 	mov	a,r1
      001B0B 4A               [12] 1949 	orl	a,r2
      001B0C 70 0A            [24] 1950 	jnz	00109$
                                   1951 ;	USBHost.c:283: return r | ERR_USB_TRANSFER;
      001B0E 74 20            [12] 1952 	mov	a,#0x20
      001B10 45 23            [12] 1953 	orl	a,_hostTransfer_sloc1_1_0
      001B12 F5 24            [12] 1954 	mov	_hostTransfer_sloc2_1_0,a
      001B14 85 24 82         [24] 1955 	mov	dpl,_hostTransfer_sloc2_1_0
      001B17 22               [24] 1956 	ret
      001B18                       1957 00109$:
                                   1958 ;	USBHost.c:285: if (timeout < 0xFFFF) {
      001B18 C0 03            [24] 1959 	push	ar3
      001B1A 89 03            [24] 1960 	mov	ar3,r1
      001B1C 8A 04            [24] 1961 	mov	ar4,r2
      001B1E C3               [12] 1962 	clr	c
      001B1F EB               [12] 1963 	mov	a,r3
      001B20 94 FF            [12] 1964 	subb	a,#0xff
      001B22 EC               [12] 1965 	mov	a,r4
      001B23 94 FF            [12] 1966 	subb	a,#0xff
      001B25 D0 03            [24] 1967 	pop	ar3
      001B27 50 05            [24] 1968 	jnc	00111$
                                   1969 ;	USBHost.c:286: timeout--;
      001B29 19               [12] 1970 	dec	r1
      001B2A B9 FF 01         [24] 1971 	cjne	r1,#0xff,00275$
      001B2D 1A               [12] 1972 	dec	r2
      001B2E                       1973 00275$:
      001B2E                       1974 00111$:
                                   1975 ;	USBHost.c:288: retries--;
      001B2E C0 03            [24] 1976 	push	ar3
      001B30 90 0B 36         [24] 1977 	mov	dptr,#_hostTransfer_retries_65536_78
      001B33 E0               [24] 1978 	movx	a,@dptr
      001B34 24 FF            [12] 1979 	add	a,#0xff
      001B36 FB               [12] 1980 	mov	r3,a
      001B37 A3               [24] 1981 	inc	dptr
      001B38 E0               [24] 1982 	movx	a,@dptr
      001B39 34 FF            [12] 1983 	addc	a,#0xff
      001B3B FC               [12] 1984 	mov	r4,a
      001B3C 90 0B 36         [24] 1985 	mov	dptr,#_hostTransfer_retries_65536_78
      001B3F EB               [12] 1986 	mov	a,r3
      001B40 F0               [24] 1987 	movx	@dptr,a
      001B41 EC               [12] 1988 	mov	a,r4
      001B42 A3               [24] 1989 	inc	dptr
      001B43 F0               [24] 1990 	movx	@dptr,a
      001B44 D0 03            [24] 1991 	pop	ar3
      001B46 02 1B D8         [24] 1992 	ljmp	00144$
      001B49                       1993 00140$:
                                   1994 ;	USBHost.c:290: switch (endp_pid >> 4) { // todo no return.. compare to other guy
      001B49 E5 24            [12] 1995 	mov	a,_hostTransfer_sloc2_1_0
      001B4B 70 0B            [24] 1996 	jnz	00113$
      001B4D EB               [12] 1997 	mov	a,r3
      001B4E 70 31            [24] 1998 	jnz	00123$
      001B50 BD 0D 02         [24] 1999 	cjne	r5,#0x0d,00278$
      001B53 80 03            [24] 2000 	sjmp	00279$
      001B55                       2001 00278$:
      001B55 02 1B D1         [24] 2002 	ljmp	00137$
      001B58                       2003 00279$:
                                   2004 ;	USBHost.c:292: case USB_PID_OUT:
      001B58                       2005 00113$:
                                   2006 ;	USBHost.c:293: if (U_TOG_OK) {
      001B58 30 DE 04         [24] 2007 	jnb	_U_TOG_OK,00115$
                                   2008 ;	USBHost.c:294: return ERR_SUCCESS;
      001B5B 75 82 00         [24] 2009 	mov	dpl,#0x00
      001B5E 22               [24] 2010 	ret
      001B5F                       2011 00115$:
                                   2012 ;	USBHost.c:296: if (r == USB_PID_ACK) {
      001B5F 74 02            [12] 2013 	mov	a,#0x02
      001B61 B5 23 04         [24] 2014 	cjne	a,_hostTransfer_sloc1_1_0,00117$
                                   2015 ;	USBHost.c:297: return ERR_SUCCESS;
      001B64 75 82 00         [24] 2016 	mov	dpl,#0x00
      001B67 22               [24] 2017 	ret
      001B68                       2018 00117$:
                                   2019 ;	USBHost.c:299: if (r == USB_PID_STALL || r == USB_PID_NAK) {
      001B68 E5 21            [12] 2020 	mov	a,_hostTransfer_sloc0_1_0
      001B6A 70 03            [24] 2021 	jnz	00118$
      001B6C E8               [12] 2022 	mov	a,r0
      001B6D 60 07            [24] 2023 	jz	00119$
      001B6F                       2024 00118$:
                                   2025 ;	USBHost.c:300: return r | ERR_USB_TRANSFER;
      001B6F 74 20            [12] 2026 	mov	a,#0x20
      001B71 45 23            [12] 2027 	orl	a,_hostTransfer_sloc1_1_0
      001B73 F5 82            [12] 2028 	mov	dpl,a
      001B75 22               [24] 2029 	ret
      001B76                       2030 00119$:
                                   2031 ;	USBHost.c:302: if (r) {
      001B76 E5 23            [12] 2032 	mov	a,_hostTransfer_sloc1_1_0
      001B78 60 5E            [24] 2033 	jz	00144$
                                   2034 ;	USBHost.c:303: return r | ERR_USB_TRANSFER;
      001B7A 74 20            [12] 2035 	mov	a,#0x20
      001B7C 45 23            [12] 2036 	orl	a,_hostTransfer_sloc1_1_0
      001B7E F5 82            [12] 2037 	mov	dpl,a
      001B80 22               [24] 2038 	ret
                                   2039 ;	USBHost.c:307: case USB_PID_IN:
      001B81                       2040 00123$:
                                   2041 ;	USBHost.c:308: if (U_TOG_OK) {
      001B81 30 DE 04         [24] 2042 	jnb	_U_TOG_OK,00125$
                                   2043 ;	USBHost.c:309: return ERR_SUCCESS;
      001B84 75 82 00         [24] 2044 	mov	dpl,#0x00
      001B87 22               [24] 2045 	ret
      001B88                       2046 00125$:
                                   2047 ;	USBHost.c:311: if (tog ? r == USB_PID_DATA1 : r == USB_PID_DATA0) {
      001B88 EF               [12] 2048 	mov	a,r7
      001B89 60 0D            [24] 2049 	jz	00154$
      001B8B 74 0B            [12] 2050 	mov	a,#0x0b
      001B8D B5 23 04         [24] 2051 	cjne	a,_hostTransfer_sloc1_1_0,00288$
      001B90 74 01            [12] 2052 	mov	a,#0x01
      001B92 80 01            [24] 2053 	sjmp	00289$
      001B94                       2054 00288$:
      001B94 E4               [12] 2055 	clr	a
      001B95                       2056 00289$:
      001B95 FC               [12] 2057 	mov	r4,a
      001B96 80 0B            [24] 2058 	sjmp	00155$
      001B98                       2059 00154$:
      001B98 74 03            [12] 2060 	mov	a,#0x03
      001B9A B5 23 04         [24] 2061 	cjne	a,_hostTransfer_sloc1_1_0,00290$
      001B9D 74 01            [12] 2062 	mov	a,#0x01
      001B9F 80 01            [24] 2063 	sjmp	00291$
      001BA1                       2064 00290$:
      001BA1 E4               [12] 2065 	clr	a
      001BA2                       2066 00291$:
      001BA2 FC               [12] 2067 	mov	r4,a
      001BA3                       2068 00155$:
      001BA3 EC               [12] 2069 	mov	a,r4
      001BA4 60 04            [24] 2070 	jz	00127$
                                   2071 ;	USBHost.c:312: return ERR_SUCCESS;
      001BA6 75 82 00         [24] 2072 	mov	dpl,#0x00
      001BA9 22               [24] 2073 	ret
      001BAA                       2074 00127$:
                                   2075 ;	USBHost.c:314: if (r == USB_PID_STALL || r == USB_PID_NAK) {
      001BAA E5 21            [12] 2076 	mov	a,_hostTransfer_sloc0_1_0
      001BAC 70 03            [24] 2077 	jnz	00128$
      001BAE E8               [12] 2078 	mov	a,r0
      001BAF 60 07            [24] 2079 	jz	00129$
      001BB1                       2080 00128$:
                                   2081 ;	USBHost.c:315: return r | ERR_USB_TRANSFER;
      001BB1 74 20            [12] 2082 	mov	a,#0x20
      001BB3 45 23            [12] 2083 	orl	a,_hostTransfer_sloc1_1_0
      001BB5 F5 82            [12] 2084 	mov	dpl,a
      001BB7 22               [24] 2085 	ret
      001BB8                       2086 00129$:
                                   2087 ;	USBHost.c:317: if (r == USB_PID_DATA0 || r == USB_PID_DATA1) {
      001BB8 74 03            [12] 2088 	mov	a,#0x03
      001BBA B5 23 02         [24] 2089 	cjne	a,_hostTransfer_sloc1_1_0,00295$
      001BBD 80 19            [24] 2090 	sjmp	00144$
      001BBF                       2091 00295$:
      001BBF 74 0B            [12] 2092 	mov	a,#0x0b
      001BC1 B5 23 02         [24] 2093 	cjne	a,_hostTransfer_sloc1_1_0,00296$
      001BC4 80 12            [24] 2094 	sjmp	00144$
      001BC6                       2095 00296$:
                                   2096 ;	USBHost.c:319: } else if (r) {
      001BC6 E5 23            [12] 2097 	mov	a,_hostTransfer_sloc1_1_0
      001BC8 60 0E            [24] 2098 	jz	00144$
                                   2099 ;	USBHost.c:320: return r | ERR_USB_TRANSFER;
      001BCA 74 20            [12] 2100 	mov	a,#0x20
      001BCC 45 23            [12] 2101 	orl	a,_hostTransfer_sloc1_1_0
      001BCE F5 82            [12] 2102 	mov	dpl,a
                                   2103 ;	USBHost.c:324: default:
      001BD0 22               [24] 2104 	ret
      001BD1                       2105 00137$:
                                   2106 ;	USBHost.c:325: return ERR_USB_UNKNOWN;
      001BD1 75 82 FE         [24] 2107 	mov	dpl,#0xfe
                                   2108 ;	USBHost.c:327: }
      001BD4 22               [24] 2109 	ret
      001BD5                       2110 00143$:
                                   2111 ;	USBHost.c:330: USB_INT_FG = 0xFF;
      001BD5 75 D8 FF         [24] 2112 	mov	_USB_INT_FG,#0xff
      001BD8                       2113 00144$:
                                   2114 ;	USBHost.c:332: delayUs(15);
      001BD8 90 00 0F         [24] 2115 	mov	dptr,#0x000f
      001BDB C0 07            [24] 2116 	push	ar7
      001BDD C0 06            [24] 2117 	push	ar6
      001BDF C0 05            [24] 2118 	push	ar5
      001BE1 C0 03            [24] 2119 	push	ar3
      001BE3 C0 02            [24] 2120 	push	ar2
      001BE5 C0 01            [24] 2121 	push	ar1
      001BE7 12 15 E7         [24] 2122 	lcall	_delayUs
      001BEA D0 01            [24] 2123 	pop	ar1
      001BEC D0 02            [24] 2124 	pop	ar2
      001BEE D0 03            [24] 2125 	pop	ar3
      001BF0 D0 05            [24] 2126 	pop	ar5
      001BF2 D0 06            [24] 2127 	pop	ar6
      001BF4 D0 07            [24] 2128 	pop	ar7
                                   2129 ;	USBHost.c:333: } while (++retries < 200);
      001BF6 90 0B 36         [24] 2130 	mov	dptr,#_hostTransfer_retries_65536_78
      001BF9 E0               [24] 2131 	movx	a,@dptr
      001BFA 24 01            [12] 2132 	add	a,#0x01
      001BFC F0               [24] 2133 	movx	@dptr,a
      001BFD A3               [24] 2134 	inc	dptr
      001BFE E0               [24] 2135 	movx	a,@dptr
      001BFF 34 00            [12] 2136 	addc	a,#0x00
      001C01 F0               [24] 2137 	movx	@dptr,a
      001C02 90 0B 36         [24] 2138 	mov	dptr,#_hostTransfer_retries_65536_78
      001C05 E0               [24] 2139 	movx	a,@dptr
      001C06 F8               [12] 2140 	mov	r0,a
      001C07 A3               [24] 2141 	inc	dptr
      001C08 E0               [24] 2142 	movx	a,@dptr
      001C09 FC               [12] 2143 	mov	r4,a
      001C0A C3               [12] 2144 	clr	c
      001C0B E8               [12] 2145 	mov	a,r0
      001C0C 94 C8            [12] 2146 	subb	a,#0xc8
      001C0E EC               [12] 2147 	mov	a,r4
      001C0F 94 00            [12] 2148 	subb	a,#0x00
      001C11 50 03            [24] 2149 	jnc	00298$
      001C13 02 1A 8F         [24] 2150 	ljmp	00145$
      001C16                       2151 00298$:
                                   2152 ;	USBHost.c:335: return ERR_USB_TRANSFER;
      001C16 75 82 20         [24] 2153 	mov	dpl,#0x20
                                   2154 ;	USBHost.c:336: }
      001C19 22               [24] 2155 	ret
                                   2156 ;------------------------------------------------------------
                                   2157 ;Allocation info for local variables in function 'hostCtrlTransfer'
                                   2158 ;------------------------------------------------------------
                                   2159 ;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
                                   2160 ;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
                                   2161 ;maxLength                 Allocated with name '_hostCtrlTransfer_PARM_3'
                                   2162 ;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_101'
                                   2163 ;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_102'
                                   2164 ;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_102'
                                   2165 ;res                       Allocated with name '_hostCtrlTransfer_res_65536_102'
                                   2166 ;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_102'
                                   2167 ;i                         Allocated with name '_hostCtrlTransfer_i_65536_102'
                                   2168 ;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_102'
                                   2169 ;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_102'
                                   2170 ;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_103'
                                   2171 ;------------------------------------------------------------
                                   2172 ;	USBHost.c:338: static uint8_t hostCtrlTransfer(uint8_t __xdata *DataBuf, uint16_t *RetLen, uint16_t maxLength)
                                   2173 ;	-----------------------------------------
                                   2174 ;	 function hostCtrlTransfer
                                   2175 ;	-----------------------------------------
      001C1A                       2176 _hostCtrlTransfer:
      001C1A AF 83            [24] 2177 	mov	r7,dph
      001C1C E5 82            [12] 2178 	mov	a,dpl
      001C1E 90 0B 3D         [24] 2179 	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_101
      001C21 F0               [24] 2180 	movx	@dptr,a
      001C22 EF               [12] 2181 	mov	a,r7
      001C23 A3               [24] 2182 	inc	dptr
      001C24 F0               [24] 2183 	movx	@dptr,a
                                   2184 ;	USBHost.c:350: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   2185 ;	USBHost.c:351: pBuf = DataBuf;
      001C25 90 0B 3D         [24] 2186 	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_101
      001C28 E0               [24] 2187 	movx	a,@dptr
      001C29 FE               [12] 2188 	mov	r6,a
      001C2A A3               [24] 2189 	inc	dptr
      001C2B E0               [24] 2190 	movx	a,@dptr
      001C2C FF               [12] 2191 	mov	r7,a
      001C2D 90 0B 42         [24] 2192 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001C30 EE               [12] 2193 	mov	a,r6
      001C31 F0               [24] 2194 	movx	@dptr,a
      001C32 EF               [12] 2195 	mov	a,r7
      001C33 A3               [24] 2196 	inc	dptr
      001C34 F0               [24] 2197 	movx	@dptr,a
                                   2198 ;	USBHost.c:352: pLen = RetLen;
      001C35 90 0B 38         [24] 2199 	mov	dptr,#_hostCtrlTransfer_PARM_2
      001C38 E0               [24] 2200 	movx	a,@dptr
      001C39 FB               [12] 2201 	mov	r3,a
      001C3A A3               [24] 2202 	inc	dptr
      001C3B E0               [24] 2203 	movx	a,@dptr
      001C3C FC               [12] 2204 	mov	r4,a
      001C3D A3               [24] 2205 	inc	dptr
      001C3E E0               [24] 2206 	movx	a,@dptr
      001C3F FD               [12] 2207 	mov	r5,a
                                   2208 ;	USBHost.c:353: delayUs(200);
      001C40 90 00 C8         [24] 2209 	mov	dptr,#0x00c8
      001C43 C0 07            [24] 2210 	push	ar7
      001C45 C0 06            [24] 2211 	push	ar6
      001C47 C0 05            [24] 2212 	push	ar5
      001C49 C0 04            [24] 2213 	push	ar4
      001C4B C0 03            [24] 2214 	push	ar3
      001C4D 12 15 E7         [24] 2215 	lcall	_delayUs
      001C50 D0 03            [24] 2216 	pop	ar3
      001C52 D0 04            [24] 2217 	pop	ar4
      001C54 D0 05            [24] 2218 	pop	ar5
      001C56 D0 06            [24] 2219 	pop	ar6
      001C58 D0 07            [24] 2220 	pop	ar7
                                   2221 ;	USBHost.c:355: if (pLen) {
      001C5A EB               [12] 2222 	mov	a,r3
      001C5B 4C               [12] 2223 	orl	a,r4
      001C5C 60 0E            [24] 2224 	jz	00102$
                                   2225 ;	USBHost.c:356: *pLen = 0;
      001C5E 8B 82            [24] 2226 	mov	dpl,r3
      001C60 8C 83            [24] 2227 	mov	dph,r4
      001C62 8D F0            [24] 2228 	mov	b,r5
      001C64 E4               [12] 2229 	clr	a
      001C65 12 34 7E         [24] 2230 	lcall	__gptrput
      001C68 A3               [24] 2231 	inc	dptr
      001C69 12 34 7E         [24] 2232 	lcall	__gptrput
      001C6C                       2233 00102$:
                                   2234 ;	USBHost.c:359: UH_TX_LEN = sizeof(USB_SETUP_REQ);
      001C6C 75 D7 08         [24] 2235 	mov	_UEP3_T_LEN,#0x08
                                   2236 ;	USBHost.c:360: res = hostTransfer((uint8_t)(USB_PID_SETUP << 4), 0, 10000);
      001C6F 90 0B 32         [24] 2237 	mov	dptr,#_hostTransfer_PARM_2
      001C72 E4               [12] 2238 	clr	a
      001C73 F0               [24] 2239 	movx	@dptr,a
      001C74 90 0B 33         [24] 2240 	mov	dptr,#_hostTransfer_PARM_3
      001C77 74 10            [12] 2241 	mov	a,#0x10
      001C79 F0               [24] 2242 	movx	@dptr,a
      001C7A 74 27            [12] 2243 	mov	a,#0x27
      001C7C A3               [24] 2244 	inc	dptr
      001C7D F0               [24] 2245 	movx	@dptr,a
      001C7E 75 82 D0         [24] 2246 	mov	dpl,#0xd0
      001C81 C0 07            [24] 2247 	push	ar7
      001C83 C0 06            [24] 2248 	push	ar6
      001C85 C0 05            [24] 2249 	push	ar5
      001C87 C0 04            [24] 2250 	push	ar4
      001C89 C0 03            [24] 2251 	push	ar3
      001C8B 12 1A 59         [24] 2252 	lcall	_hostTransfer
      001C8E AA 82            [24] 2253 	mov	r2,dpl
      001C90 D0 03            [24] 2254 	pop	ar3
      001C92 D0 04            [24] 2255 	pop	ar4
      001C94 D0 05            [24] 2256 	pop	ar5
      001C96 D0 06            [24] 2257 	pop	ar6
      001C98 D0 07            [24] 2258 	pop	ar7
                                   2259 ;	USBHost.c:361: if (res != ERR_SUCCESS) {
      001C9A EA               [12] 2260 	mov	a,r2
      001C9B 60 03            [24] 2261 	jz	00104$
                                   2262 ;	USBHost.c:362: return res;
      001C9D 8A 82            [24] 2263 	mov	dpl,r2
      001C9F 22               [24] 2264 	ret
      001CA0                       2265 00104$:
                                   2266 ;	USBHost.c:365: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;
      001CA0 C0 06            [24] 2267 	push	ar6
      001CA2 C0 07            [24] 2268 	push	ar7
      001CA4 75 D6 D0         [24] 2269 	mov	_UEP3_CTRL,#0xd0
      001CA7 75 D4 D0         [24] 2270 	mov	_UEP2_CTRL,#0xd0
                                   2271 ;	USBHost.c:366: UH_TX_LEN = 0x01;
      001CAA 75 D7 01         [24] 2272 	mov	_UEP3_T_LEN,#0x01
                                   2273 ;	USBHost.c:367: RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);
      001CAD 90 01 07         [24] 2274 	mov	dptr,#(_TxBuffer + 0x0007)
      001CB0 E0               [24] 2275 	movx	a,@dptr
      001CB1 FA               [12] 2276 	mov	r2,a
      001CB2 79 00            [12] 2277 	mov	r1,#0x00
      001CB4 90 01 06         [24] 2278 	mov	dptr,#(_TxBuffer + 0x0006)
      001CB7 E0               [24] 2279 	movx	a,@dptr
      001CB8 F8               [12] 2280 	mov	r0,a
      001CB9 7F 00            [12] 2281 	mov	r7,#0x00
      001CBB 42 01            [12] 2282 	orl	ar1,a
      001CBD EF               [12] 2283 	mov	a,r7
      001CBE 42 02            [12] 2284 	orl	ar2,a
      001CC0 90 0B 40         [24] 2285 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001CC3 E9               [12] 2286 	mov	a,r1
      001CC4 F0               [24] 2287 	movx	@dptr,a
      001CC5 EA               [12] 2288 	mov	a,r2
      001CC6 A3               [24] 2289 	inc	dptr
      001CC7 F0               [24] 2290 	movx	@dptr,a
                                   2291 ;	USBHost.c:369: if (RemLen && pBuf) {
      001CC8 D0 07            [24] 2292 	pop	ar7
      001CCA D0 06            [24] 2293 	pop	ar6
      001CCC E9               [12] 2294 	mov	a,r1
      001CCD 4A               [12] 2295 	orl	a,r2
      001CCE 70 03            [24] 2296 	jnz	00245$
      001CD0 02 1E CE         [24] 2297 	ljmp	00129$
      001CD3                       2298 00245$:
      001CD3 EE               [12] 2299 	mov	a,r6
      001CD4 4F               [12] 2300 	orl	a,r7
      001CD5 70 03            [24] 2301 	jnz	00246$
      001CD7 02 1E CE         [24] 2302 	ljmp	00129$
      001CDA                       2303 00246$:
                                   2304 ;	USBHost.c:370: if (pSetupReq->bRequestType & USB_REQ_TYP_IN) {
      001CDA 90 01 00         [24] 2305 	mov	dptr,#_TxBuffer
      001CDD E0               [24] 2306 	movx	a,@dptr
      001CDE FF               [12] 2307 	mov	r7,a
      001CDF 20 E7 03         [24] 2308 	jb	acc.7,00247$
      001CE2 02 1D D4         [24] 2309 	ljmp	00122$
      001CE5                       2310 00247$:
                                   2311 ;	USBHost.c:372: while (RemLen) {
      001CE5                       2312 00113$:
      001CE5 90 0B 40         [24] 2313 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001CE8 E0               [24] 2314 	movx	a,@dptr
      001CE9 FE               [12] 2315 	mov	r6,a
      001CEA A3               [24] 2316 	inc	dptr
      001CEB E0               [24] 2317 	movx	a,@dptr
      001CEC FF               [12] 2318 	mov	r7,a
      001CED 4E               [12] 2319 	orl	a,r6
      001CEE 70 03            [24] 2320 	jnz	00248$
      001CF0 02 1D CE         [24] 2321 	ljmp	00115$
      001CF3                       2322 00248$:
                                   2323 ;	USBHost.c:373: delayUs(300);
      001CF3 90 01 2C         [24] 2324 	mov	dptr,#0x012c
      001CF6 C0 07            [24] 2325 	push	ar7
      001CF8 C0 06            [24] 2326 	push	ar6
      001CFA C0 05            [24] 2327 	push	ar5
      001CFC C0 04            [24] 2328 	push	ar4
      001CFE C0 03            [24] 2329 	push	ar3
      001D00 12 15 E7         [24] 2330 	lcall	_delayUs
                                   2331 ;	USBHost.c:374: res = hostTransfer((uint8_t)(USB_PID_IN << 4), UH_RX_CTRL, 10000);
      001D03 90 0B 32         [24] 2332 	mov	dptr,#_hostTransfer_PARM_2
      001D06 E5 D4            [12] 2333 	mov	a,_UEP2_CTRL
      001D08 F0               [24] 2334 	movx	@dptr,a
      001D09 90 0B 33         [24] 2335 	mov	dptr,#_hostTransfer_PARM_3
      001D0C 74 10            [12] 2336 	mov	a,#0x10
      001D0E F0               [24] 2337 	movx	@dptr,a
      001D0F 74 27            [12] 2338 	mov	a,#0x27
      001D11 A3               [24] 2339 	inc	dptr
      001D12 F0               [24] 2340 	movx	@dptr,a
      001D13 75 82 90         [24] 2341 	mov	dpl,#0x90
      001D16 12 1A 59         [24] 2342 	lcall	_hostTransfer
      001D19 AA 82            [24] 2343 	mov	r2,dpl
      001D1B D0 03            [24] 2344 	pop	ar3
      001D1D D0 04            [24] 2345 	pop	ar4
      001D1F D0 05            [24] 2346 	pop	ar5
      001D21 D0 06            [24] 2347 	pop	ar6
      001D23 D0 07            [24] 2348 	pop	ar7
                                   2349 ;	USBHost.c:375: if (res != ERR_SUCCESS) {
      001D25 EA               [12] 2350 	mov	a,r2
      001D26 60 03            [24] 2351 	jz	00106$
                                   2352 ;	USBHost.c:376: return res;
      001D28 8A 82            [24] 2353 	mov	dpl,r2
      001D2A 22               [24] 2354 	ret
      001D2B                       2355 00106$:
                                   2356 ;	USBHost.c:379: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
      001D2B A9 D1            [24] 2357 	mov	r1,_USB_RX_LEN
      001D2D 7A 00            [12] 2358 	mov	r2,#0x00
      001D2F C3               [12] 2359 	clr	c
      001D30 E9               [12] 2360 	mov	a,r1
      001D31 9E               [12] 2361 	subb	a,r6
      001D32 EA               [12] 2362 	mov	a,r2
      001D33 9F               [12] 2363 	subb	a,r7
      001D34 50 06            [24] 2364 	jnc	00142$
      001D36 A9 D1            [24] 2365 	mov	r1,_USB_RX_LEN
      001D38 7A 00            [12] 2366 	mov	r2,#0x00
      001D3A 80 04            [24] 2367 	sjmp	00143$
      001D3C                       2368 00142$:
      001D3C 8E 01            [24] 2369 	mov	ar1,r6
      001D3E 8F 02            [24] 2370 	mov	ar2,r7
      001D40                       2371 00143$:
                                   2372 ;	USBHost.c:380: RemLen -= RxLen;
      001D40 89 06            [24] 2373 	mov	ar6,r1
      001D42 7F 00            [12] 2374 	mov	r7,#0x00
      001D44 90 0B 40         [24] 2375 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001D47 E0               [24] 2376 	movx	a,@dptr
      001D48 F8               [12] 2377 	mov	r0,a
      001D49 A3               [24] 2378 	inc	dptr
      001D4A E0               [24] 2379 	movx	a,@dptr
      001D4B FA               [12] 2380 	mov	r2,a
      001D4C E8               [12] 2381 	mov	a,r0
      001D4D C3               [12] 2382 	clr	c
      001D4E 9E               [12] 2383 	subb	a,r6
      001D4F F8               [12] 2384 	mov	r0,a
      001D50 EA               [12] 2385 	mov	a,r2
      001D51 9F               [12] 2386 	subb	a,r7
      001D52 FA               [12] 2387 	mov	r2,a
      001D53 90 0B 40         [24] 2388 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001D56 E8               [12] 2389 	mov	a,r0
      001D57 F0               [24] 2390 	movx	@dptr,a
      001D58 EA               [12] 2391 	mov	a,r2
      001D59 A3               [24] 2392 	inc	dptr
      001D5A F0               [24] 2393 	movx	@dptr,a
                                   2394 ;	USBHost.c:381: if (pLen) {
      001D5B EB               [12] 2395 	mov	a,r3
      001D5C 4C               [12] 2396 	orl	a,r4
      001D5D 60 24            [24] 2397 	jz	00159$
                                   2398 ;	USBHost.c:382: *pLen += RxLen;
      001D5F 8B 82            [24] 2399 	mov	dpl,r3
      001D61 8C 83            [24] 2400 	mov	dph,r4
      001D63 8D F0            [24] 2401 	mov	b,r5
      001D65 12 34 B9         [24] 2402 	lcall	__gptrget
      001D68 F8               [12] 2403 	mov	r0,a
      001D69 A3               [24] 2404 	inc	dptr
      001D6A 12 34 B9         [24] 2405 	lcall	__gptrget
      001D6D FA               [12] 2406 	mov	r2,a
      001D6E EE               [12] 2407 	mov	a,r6
      001D6F 28               [12] 2408 	add	a,r0
      001D70 FE               [12] 2409 	mov	r6,a
      001D71 EF               [12] 2410 	mov	a,r7
      001D72 3A               [12] 2411 	addc	a,r2
      001D73 FF               [12] 2412 	mov	r7,a
      001D74 8B 82            [24] 2413 	mov	dpl,r3
      001D76 8C 83            [24] 2414 	mov	dph,r4
      001D78 8D F0            [24] 2415 	mov	b,r5
      001D7A EE               [12] 2416 	mov	a,r6
      001D7B 12 34 7E         [24] 2417 	lcall	__gptrput
      001D7E A3               [24] 2418 	inc	dptr
      001D7F EF               [12] 2419 	mov	a,r7
      001D80 12 34 7E         [24] 2420 	lcall	__gptrput
                                   2421 ;	USBHost.c:385: for (i = 0; i < RxLen; i++) {
      001D83                       2422 00159$:
      001D83 90 0B 42         [24] 2423 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001D86 E0               [24] 2424 	movx	a,@dptr
      001D87 FE               [12] 2425 	mov	r6,a
      001D88 A3               [24] 2426 	inc	dptr
      001D89 E0               [24] 2427 	movx	a,@dptr
      001D8A FF               [12] 2428 	mov	r7,a
      001D8B 7A 00            [12] 2429 	mov	r2,#0x00
      001D8D                       2430 00138$:
      001D8D C3               [12] 2431 	clr	c
      001D8E EA               [12] 2432 	mov	a,r2
      001D8F 99               [12] 2433 	subb	a,r1
      001D90 50 18            [24] 2434 	jnc	00109$
                                   2435 ;	USBHost.c:386: pBuf[i] = RxBuffer[i];
      001D92 EA               [12] 2436 	mov	a,r2
      001D93 2E               [12] 2437 	add	a,r6
      001D94 F5 25            [12] 2438 	mov	_hostCtrlTransfer_sloc0_1_0,a
      001D96 E4               [12] 2439 	clr	a
      001D97 3F               [12] 2440 	addc	a,r7
      001D98 F5 26            [12] 2441 	mov	(_hostCtrlTransfer_sloc0_1_0 + 1),a
      001D9A 8A 82            [24] 2442 	mov	dpl,r2
      001D9C 75 83 00         [24] 2443 	mov	dph,#(_RxBuffer >> 8)
      001D9F E0               [24] 2444 	movx	a,@dptr
      001DA0 85 25 82         [24] 2445 	mov	dpl,_hostCtrlTransfer_sloc0_1_0
      001DA3 85 26 83         [24] 2446 	mov	dph,(_hostCtrlTransfer_sloc0_1_0 + 1)
      001DA6 F0               [24] 2447 	movx	@dptr,a
                                   2448 ;	USBHost.c:385: for (i = 0; i < RxLen; i++) {
      001DA7 0A               [12] 2449 	inc	r2
      001DA8 80 E3            [24] 2450 	sjmp	00138$
      001DAA                       2451 00109$:
                                   2452 ;	USBHost.c:388: pBuf += RxLen;
      001DAA 90 0B 42         [24] 2453 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001DAD E0               [24] 2454 	movx	a,@dptr
      001DAE FE               [12] 2455 	mov	r6,a
      001DAF A3               [24] 2456 	inc	dptr
      001DB0 E0               [24] 2457 	movx	a,@dptr
      001DB1 FF               [12] 2458 	mov	r7,a
      001DB2 90 0B 42         [24] 2459 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001DB5 E9               [12] 2460 	mov	a,r1
      001DB6 2E               [12] 2461 	add	a,r6
      001DB7 F0               [24] 2462 	movx	@dptr,a
      001DB8 E4               [12] 2463 	clr	a
      001DB9 3F               [12] 2464 	addc	a,r7
      001DBA A3               [24] 2465 	inc	dptr
      001DBB F0               [24] 2466 	movx	@dptr,a
                                   2467 ;	USBHost.c:391: if (USB_RX_LEN == 0 || (USB_RX_LEN < endpoint0Size)) {
      001DBC E5 D1            [12] 2468 	mov	a,_USB_RX_LEN
      001DBE 60 0E            [24] 2469 	jz	00115$
      001DC0 90 08 47         [24] 2470 	mov	dptr,#_endpoint0Size
      001DC3 E0               [24] 2471 	movx	a,@dptr
      001DC4 FF               [12] 2472 	mov	r7,a
      001DC5 C3               [12] 2473 	clr	c
      001DC6 E5 D1            [12] 2474 	mov	a,_USB_RX_LEN
      001DC8 9F               [12] 2475 	subb	a,r7
      001DC9 40 03            [24] 2476 	jc	00254$
      001DCB 02 1C E5         [24] 2477 	ljmp	00113$
      001DCE                       2478 00254$:
                                   2479 ;	USBHost.c:392: break;
      001DCE                       2480 00115$:
                                   2481 ;	USBHost.c:395: UH_TX_LEN = 0x00;
      001DCE 75 D7 00         [24] 2482 	mov	_UEP3_T_LEN,#0x00
      001DD1 02 1E CE         [24] 2483 	ljmp	00129$
                                   2484 ;	USBHost.c:399: while (RemLen) {
      001DD4                       2485 00122$:
      001DD4 90 0B 40         [24] 2486 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001DD7 E0               [24] 2487 	movx	a,@dptr
      001DD8 FE               [12] 2488 	mov	r6,a
      001DD9 A3               [24] 2489 	inc	dptr
      001DDA E0               [24] 2490 	movx	a,@dptr
      001DDB FF               [12] 2491 	mov	r7,a
      001DDC 4E               [12] 2492 	orl	a,r6
      001DDD 70 03            [24] 2493 	jnz	00255$
      001DDF 02 1E CE         [24] 2494 	ljmp	00129$
      001DE2                       2495 00255$:
                                   2496 ;	USBHost.c:400: delayUs(200);
      001DE2 90 00 C8         [24] 2497 	mov	dptr,#0x00c8
      001DE5 C0 07            [24] 2498 	push	ar7
      001DE7 C0 06            [24] 2499 	push	ar6
      001DE9 C0 05            [24] 2500 	push	ar5
      001DEB C0 04            [24] 2501 	push	ar4
      001DED C0 03            [24] 2502 	push	ar3
      001DEF 12 15 E7         [24] 2503 	lcall	_delayUs
      001DF2 D0 03            [24] 2504 	pop	ar3
      001DF4 D0 04            [24] 2505 	pop	ar4
      001DF6 D0 05            [24] 2506 	pop	ar5
      001DF8 D0 06            [24] 2507 	pop	ar6
      001DFA D0 07            [24] 2508 	pop	ar7
                                   2509 ;	USBHost.c:401: UH_TX_LEN = RemLen >= endpoint0Size ? endpoint0Size : RemLen;
      001DFC 90 08 47         [24] 2510 	mov	dptr,#_endpoint0Size
      001DFF E0               [24] 2511 	movx	a,@dptr
      001E00 F9               [12] 2512 	mov	r1,a
      001E01 7A 00            [12] 2513 	mov	r2,#0x00
      001E03 C3               [12] 2514 	clr	c
      001E04 EE               [12] 2515 	mov	a,r6
      001E05 99               [12] 2516 	subb	a,r1
      001E06 EF               [12] 2517 	mov	a,r7
      001E07 9A               [12] 2518 	subb	a,r2
      001E08 92 01            [24] 2519 	mov	_hostCtrlTransfer_sloc1_1_0,c
      001E0A 40 09            [24] 2520 	jc	00144$
      001E0C 90 08 47         [24] 2521 	mov	dptr,#_endpoint0Size
      001E0F E0               [24] 2522 	movx	a,@dptr
      001E10 F9               [12] 2523 	mov	r1,a
      001E11 7A 00            [12] 2524 	mov	r2,#0x00
      001E13 80 04            [24] 2525 	sjmp	00145$
      001E15                       2526 00144$:
      001E15 8E 01            [24] 2527 	mov	ar1,r6
      001E17 8F 02            [24] 2528 	mov	ar2,r7
      001E19                       2529 00145$:
      001E19 89 D7            [24] 2530 	mov	_UEP3_T_LEN,r1
                                   2531 ;	USBHost.c:403: pBuf += UH_TX_LEN;
      001E1B 90 0B 42         [24] 2532 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001E1E E0               [24] 2533 	movx	a,@dptr
      001E1F FE               [12] 2534 	mov	r6,a
      001E20 A3               [24] 2535 	inc	dptr
      001E21 E0               [24] 2536 	movx	a,@dptr
      001E22 FF               [12] 2537 	mov	r7,a
      001E23 E5 D7            [12] 2538 	mov	a,_UEP3_T_LEN
      001E25 2E               [12] 2539 	add	a,r6
      001E26 FE               [12] 2540 	mov	r6,a
      001E27 E4               [12] 2541 	clr	a
      001E28 3F               [12] 2542 	addc	a,r7
      001E29 FF               [12] 2543 	mov	r7,a
      001E2A 90 0B 42         [24] 2544 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
      001E2D EE               [12] 2545 	mov	a,r6
      001E2E F0               [24] 2546 	movx	@dptr,a
      001E2F EF               [12] 2547 	mov	a,r7
      001E30 A3               [24] 2548 	inc	dptr
      001E31 F0               [24] 2549 	movx	@dptr,a
                                   2550 ;	USBHost.c:405: if (pBuf[1] == 0x09) {
      001E32 8E 82            [24] 2551 	mov	dpl,r6
      001E34 8F 83            [24] 2552 	mov	dph,r7
      001E36 A3               [24] 2553 	inc	dptr
      001E37 E0               [24] 2554 	movx	a,@dptr
      001E38 FA               [12] 2555 	mov	r2,a
      001E39 BA 09 1B         [24] 2556 	cjne	r2,#0x09,00117$
                                   2557 ;	USBHost.c:406: SetPort = SetPort ? 0 : 1;
      001E3C 90 0B 3F         [24] 2558 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
      001E3F E0               [24] 2559 	movx	a,@dptr
      001E40 60 06            [24] 2560 	jz	00146$
      001E42 79 00            [12] 2561 	mov	r1,#0x00
      001E44 7A 00            [12] 2562 	mov	r2,#0x00
      001E46 80 04            [24] 2563 	sjmp	00147$
      001E48                       2564 00146$:
      001E48 79 01            [12] 2565 	mov	r1,#0x01
      001E4A 7A 00            [12] 2566 	mov	r2,#0x00
      001E4C                       2567 00147$:
      001E4C 90 0B 3F         [24] 2568 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
      001E4F E9               [12] 2569 	mov	a,r1
      001E50 F0               [24] 2570 	movx	@dptr,a
                                   2571 ;	USBHost.c:407: *pBuf = SetPort;
      001E51 8E 82            [24] 2572 	mov	dpl,r6
      001E53 8F 83            [24] 2573 	mov	dph,r7
      001E55 E9               [12] 2574 	mov	a,r1
      001E56 F0               [24] 2575 	movx	@dptr,a
                                   2576 ;	USBHost.c:408: DEBUG_OUT("SET_PORT  %02X  %02X ", *pBuf, SetPort);
      001E57                       2577 00117$:
                                   2578 ;	USBHost.c:412: res = hostTransfer(USB_PID_OUT << 4, UH_TX_CTRL, 10000);
      001E57 90 0B 32         [24] 2579 	mov	dptr,#_hostTransfer_PARM_2
      001E5A E5 D6            [12] 2580 	mov	a,_UEP3_CTRL
      001E5C F0               [24] 2581 	movx	@dptr,a
      001E5D 90 0B 33         [24] 2582 	mov	dptr,#_hostTransfer_PARM_3
      001E60 74 10            [12] 2583 	mov	a,#0x10
      001E62 F0               [24] 2584 	movx	@dptr,a
      001E63 74 27            [12] 2585 	mov	a,#0x27
      001E65 A3               [24] 2586 	inc	dptr
      001E66 F0               [24] 2587 	movx	@dptr,a
      001E67 75 82 10         [24] 2588 	mov	dpl,#0x10
      001E6A C0 05            [24] 2589 	push	ar5
      001E6C C0 04            [24] 2590 	push	ar4
      001E6E C0 03            [24] 2591 	push	ar3
      001E70 12 1A 59         [24] 2592 	lcall	_hostTransfer
      001E73 AF 82            [24] 2593 	mov	r7,dpl
      001E75 D0 03            [24] 2594 	pop	ar3
      001E77 D0 04            [24] 2595 	pop	ar4
      001E79 D0 05            [24] 2596 	pop	ar5
                                   2597 ;	USBHost.c:413: if (res != ERR_SUCCESS) {
      001E7B EF               [12] 2598 	mov	a,r7
      001E7C 60 03            [24] 2599 	jz	00119$
                                   2600 ;	USBHost.c:414: return res;
      001E7E 8F 82            [24] 2601 	mov	dpl,r7
      001E80 22               [24] 2602 	ret
      001E81                       2603 00119$:
                                   2604 ;	USBHost.c:417: RemLen -= UH_TX_LEN;
      001E81 AE D7            [24] 2605 	mov	r6,_UEP3_T_LEN
      001E83 7F 00            [12] 2606 	mov	r7,#0x00
      001E85 90 0B 40         [24] 2607 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001E88 E0               [24] 2608 	movx	a,@dptr
      001E89 F9               [12] 2609 	mov	r1,a
      001E8A A3               [24] 2610 	inc	dptr
      001E8B E0               [24] 2611 	movx	a,@dptr
      001E8C FA               [12] 2612 	mov	r2,a
      001E8D E9               [12] 2613 	mov	a,r1
      001E8E C3               [12] 2614 	clr	c
      001E8F 9E               [12] 2615 	subb	a,r6
      001E90 F9               [12] 2616 	mov	r1,a
      001E91 EA               [12] 2617 	mov	a,r2
      001E92 9F               [12] 2618 	subb	a,r7
      001E93 FA               [12] 2619 	mov	r2,a
      001E94 90 0B 40         [24] 2620 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
      001E97 E9               [12] 2621 	mov	a,r1
      001E98 F0               [24] 2622 	movx	@dptr,a
      001E99 EA               [12] 2623 	mov	a,r2
      001E9A A3               [24] 2624 	inc	dptr
      001E9B F0               [24] 2625 	movx	@dptr,a
                                   2626 ;	USBHost.c:418: if (pLen) {
      001E9C EB               [12] 2627 	mov	a,r3
      001E9D 4C               [12] 2628 	orl	a,r4
      001E9E 70 03            [24] 2629 	jnz	00261$
      001EA0 02 1D D4         [24] 2630 	ljmp	00122$
      001EA3                       2631 00261$:
                                   2632 ;	USBHost.c:419: *pLen += UH_TX_LEN;
      001EA3 8B 82            [24] 2633 	mov	dpl,r3
      001EA5 8C 83            [24] 2634 	mov	dph,r4
      001EA7 8D F0            [24] 2635 	mov	b,r5
      001EA9 12 34 B9         [24] 2636 	lcall	__gptrget
      001EAC FE               [12] 2637 	mov	r6,a
      001EAD A3               [24] 2638 	inc	dptr
      001EAE 12 34 B9         [24] 2639 	lcall	__gptrget
      001EB1 FF               [12] 2640 	mov	r7,a
      001EB2 A9 D7            [24] 2641 	mov	r1,_UEP3_T_LEN
      001EB4 7A 00            [12] 2642 	mov	r2,#0x00
      001EB6 E9               [12] 2643 	mov	a,r1
      001EB7 2E               [12] 2644 	add	a,r6
      001EB8 FE               [12] 2645 	mov	r6,a
      001EB9 EA               [12] 2646 	mov	a,r2
      001EBA 3F               [12] 2647 	addc	a,r7
      001EBB FF               [12] 2648 	mov	r7,a
      001EBC 8B 82            [24] 2649 	mov	dpl,r3
      001EBE 8C 83            [24] 2650 	mov	dph,r4
      001EC0 8D F0            [24] 2651 	mov	b,r5
      001EC2 EE               [12] 2652 	mov	a,r6
      001EC3 12 34 7E         [24] 2653 	lcall	__gptrput
      001EC6 A3               [24] 2654 	inc	dptr
      001EC7 EF               [12] 2655 	mov	a,r7
      001EC8 12 34 7E         [24] 2656 	lcall	__gptrput
      001ECB 02 1D D4         [24] 2657 	ljmp	00122$
      001ECE                       2658 00129$:
                                   2659 ;	USBHost.c:425: delayUs(200);
      001ECE 90 00 C8         [24] 2660 	mov	dptr,#0x00c8
      001ED1 12 15 E7         [24] 2661 	lcall	_delayUs
                                   2662 ;	USBHost.c:426: res = hostTransfer((UH_TX_LEN ? USB_PID_IN << 4 : USB_PID_OUT << 4), bUH_R_TOG | bUH_T_TOG, 10000);
      001ED4 E5 D7            [12] 2663 	mov	a,_UEP3_T_LEN
      001ED6 60 04            [24] 2664 	jz	00148$
      001ED8 7F 90            [12] 2665 	mov	r7,#0x90
      001EDA 80 02            [24] 2666 	sjmp	00149$
      001EDC                       2667 00148$:
      001EDC 7F 10            [12] 2668 	mov	r7,#0x10
      001EDE                       2669 00149$:
      001EDE 90 0B 32         [24] 2670 	mov	dptr,#_hostTransfer_PARM_2
      001EE1 74 C0            [12] 2671 	mov	a,#0xc0
      001EE3 F0               [24] 2672 	movx	@dptr,a
      001EE4 90 0B 33         [24] 2673 	mov	dptr,#_hostTransfer_PARM_3
      001EE7 74 10            [12] 2674 	mov	a,#0x10
      001EE9 F0               [24] 2675 	movx	@dptr,a
      001EEA 74 27            [12] 2676 	mov	a,#0x27
      001EEC A3               [24] 2677 	inc	dptr
      001EED F0               [24] 2678 	movx	@dptr,a
      001EEE 8F 82            [24] 2679 	mov	dpl,r7
      001EF0 12 1A 59         [24] 2680 	lcall	_hostTransfer
                                   2681 ;	USBHost.c:427: if (res != ERR_SUCCESS) {
      001EF3 E5 82            [12] 2682 	mov	a,dpl
      001EF5 FF               [12] 2683 	mov	r7,a
      001EF6 60 03            [24] 2684 	jz	00132$
                                   2685 ;	USBHost.c:428: return res;
      001EF8 8F 82            [24] 2686 	mov	dpl,r7
      001EFA 22               [24] 2687 	ret
      001EFB                       2688 00132$:
                                   2689 ;	USBHost.c:431: if (UH_TX_LEN == 0) {
      001EFB E5 D7            [12] 2690 	mov	a,_UEP3_T_LEN
                                   2691 ;	USBHost.c:432: return ERR_SUCCESS;
      001EFD 70 03            [24] 2692 	jnz	00134$
      001EFF F5 82            [12] 2693 	mov	dpl,a
      001F01 22               [24] 2694 	ret
      001F02                       2695 00134$:
                                   2696 ;	USBHost.c:435: if (USB_RX_LEN == 0) {
      001F02 E5 D1            [12] 2697 	mov	a,_USB_RX_LEN
                                   2698 ;	USBHost.c:436: return ERR_SUCCESS;
      001F04 70 03            [24] 2699 	jnz	00136$
      001F06 F5 82            [12] 2700 	mov	dpl,a
      001F08 22               [24] 2701 	ret
      001F09                       2702 00136$:
                                   2703 ;	USBHost.c:439: return ERR_USB_BUF_OVER;
      001F09 75 82 17         [24] 2704 	mov	dpl,#0x17
                                   2705 ;	USBHost.c:440: }
      001F0C 22               [24] 2706 	ret
                                   2707 ;------------------------------------------------------------
                                   2708 ;Allocation info for local variables in function 'fillTxBuffer'
                                   2709 ;------------------------------------------------------------
                                   2710 ;len                       Allocated with name '_fillTxBuffer_PARM_2'
                                   2711 ;data                      Allocated with name '_fillTxBuffer_data_65536_122'
                                   2712 ;i                         Allocated with name '_fillTxBuffer_i_131072_124'
                                   2713 ;------------------------------------------------------------
                                   2714 ;	USBHost.c:442: static void fillTxBuffer(PUINT8C data, uint8_t len)
                                   2715 ;	-----------------------------------------
                                   2716 ;	 function fillTxBuffer
                                   2717 ;	-----------------------------------------
      001F0D                       2718 _fillTxBuffer:
      001F0D AF 83            [24] 2719 	mov	r7,dph
      001F0F E5 82            [12] 2720 	mov	a,dpl
      001F11 90 0B 45         [24] 2721 	mov	dptr,#_fillTxBuffer_data_65536_122
      001F14 F0               [24] 2722 	movx	@dptr,a
      001F15 EF               [12] 2723 	mov	a,r7
      001F16 A3               [24] 2724 	inc	dptr
      001F17 F0               [24] 2725 	movx	@dptr,a
                                   2726 ;	USBHost.c:445: for(uint8_t i = 0; i < len; ++i) {
      001F18 90 0B 45         [24] 2727 	mov	dptr,#_fillTxBuffer_data_65536_122
      001F1B E0               [24] 2728 	movx	a,@dptr
      001F1C FE               [12] 2729 	mov	r6,a
      001F1D A3               [24] 2730 	inc	dptr
      001F1E E0               [24] 2731 	movx	a,@dptr
      001F1F FF               [12] 2732 	mov	r7,a
      001F20 90 0B 44         [24] 2733 	mov	dptr,#_fillTxBuffer_PARM_2
      001F23 E0               [24] 2734 	movx	a,@dptr
      001F24 FD               [12] 2735 	mov	r5,a
      001F25 7C 00            [12] 2736 	mov	r4,#0x00
      001F27                       2737 00103$:
      001F27 C3               [12] 2738 	clr	c
      001F28 EC               [12] 2739 	mov	a,r4
      001F29 9D               [12] 2740 	subb	a,r5
      001F2A 50 17            [24] 2741 	jnc	00105$
                                   2742 ;	USBHost.c:446: TxBuffer[i] = data[i];
      001F2C 8C 02            [24] 2743 	mov	ar2,r4
      001F2E 7B 01            [12] 2744 	mov	r3,#(_TxBuffer >> 8)
      001F30 EC               [12] 2745 	mov	a,r4
      001F31 2E               [12] 2746 	add	a,r6
      001F32 F5 82            [12] 2747 	mov	dpl,a
      001F34 E4               [12] 2748 	clr	a
      001F35 3F               [12] 2749 	addc	a,r7
      001F36 F5 83            [12] 2750 	mov	dph,a
      001F38 E4               [12] 2751 	clr	a
      001F39 93               [24] 2752 	movc	a,@a+dptr
      001F3A F9               [12] 2753 	mov	r1,a
      001F3B 8A 82            [24] 2754 	mov	dpl,r2
      001F3D 8B 83            [24] 2755 	mov	dph,r3
      001F3F F0               [24] 2756 	movx	@dptr,a
                                   2757 ;	USBHost.c:445: for(uint8_t i = 0; i < len; ++i) {
      001F40 0C               [12] 2758 	inc	r4
      001F41 80 E4            [24] 2759 	sjmp	00103$
      001F43                       2760 00105$:
                                   2761 ;	USBHost.c:448: }
      001F43 22               [24] 2762 	ret
                                   2763 ;------------------------------------------------------------
                                   2764 ;Allocation info for local variables in function 'getDeviceDescriptor'
                                   2765 ;------------------------------------------------------------
                                   2766 ;res                       Allocated with name '_getDeviceDescriptor_res_65536_126'
                                   2767 ;len                       Allocated with name '_getDeviceDescriptor_len_65536_126'
                                   2768 ;------------------------------------------------------------
                                   2769 ;	USBHost.c:450: static uint8_t getDeviceDescriptor()
                                   2770 ;	-----------------------------------------
                                   2771 ;	 function getDeviceDescriptor
                                   2772 ;	-----------------------------------------
      001F44                       2773 _getDeviceDescriptor:
                                   2774 ;	USBHost.c:454: endpoint0Size = DEFAULT_ENDP0_SIZE; // TODO again?
      001F44 90 08 47         [24] 2775 	mov	dptr,#_endpoint0Size
      001F47 74 08            [12] 2776 	mov	a,#0x08
      001F49 F0               [24] 2777 	movx	@dptr,a
                                   2778 ;	USBHost.c:456: fillTxBuffer(GetDeviceDescriptorRequest, sizeof(GetDeviceDescriptorRequest));
      001F4A 90 0B 44         [24] 2779 	mov	dptr,#_fillTxBuffer_PARM_2
      001F4D F0               [24] 2780 	movx	@dptr,a
      001F4E 90 34 D9         [24] 2781 	mov	dptr,#_GetDeviceDescriptorRequest
      001F51 12 1F 0D         [24] 2782 	lcall	_fillTxBuffer
                                   2783 ;	USBHost.c:457: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
      001F54 90 0B 38         [24] 2784 	mov	dptr,#_hostCtrlTransfer_PARM_2
      001F57 74 47            [12] 2785 	mov	a,#_getDeviceDescriptor_len_65536_126
      001F59 F0               [24] 2786 	movx	@dptr,a
      001F5A 74 0B            [12] 2787 	mov	a,#(_getDeviceDescriptor_len_65536_126 >> 8)
      001F5C A3               [24] 2788 	inc	dptr
      001F5D F0               [24] 2789 	movx	@dptr,a
      001F5E E4               [12] 2790 	clr	a
      001F5F A3               [24] 2791 	inc	dptr
      001F60 F0               [24] 2792 	movx	@dptr,a
      001F61 90 0B 3B         [24] 2793 	mov	dptr,#_hostCtrlTransfer_PARM_3
      001F64 F0               [24] 2794 	movx	@dptr,a
      001F65 74 02            [12] 2795 	mov	a,#0x02
      001F67 A3               [24] 2796 	inc	dptr
      001F68 F0               [24] 2797 	movx	@dptr,a
      001F69 90 08 48         [24] 2798 	mov	dptr,#_receiveDataBuffer
      001F6C 12 1C 1A         [24] 2799 	lcall	_hostCtrlTransfer
                                   2800 ;	USBHost.c:458: if (res != ERR_SUCCESS) {
      001F6F E5 82            [12] 2801 	mov	a,dpl
      001F71 FF               [12] 2802 	mov	r7,a
      001F72 60 03            [24] 2803 	jz	00102$
                                   2804 ;	USBHost.c:459: return res;
      001F74 8F 82            [24] 2805 	mov	dpl,r7
      001F76 22               [24] 2806 	ret
      001F77                       2807 00102$:
                                   2808 ;	USBHost.c:463: endpoint0Size = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0;
      001F77 90 08 4F         [24] 2809 	mov	dptr,#(_receiveDataBuffer + 0x0007)
      001F7A E0               [24] 2810 	movx	a,@dptr
      001F7B 90 08 47         [24] 2811 	mov	dptr,#_endpoint0Size
      001F7E F0               [24] 2812 	movx	@dptr,a
                                   2813 ;	USBHost.c:464: if (len < ((PUSB_SETUP_REQ)GetDeviceDescriptorRequest)->wLengthL) {
      001F7F 90 34 DF         [24] 2814 	mov	dptr,#(_GetDeviceDescriptorRequest + 0x0006)
      001F82 E4               [12] 2815 	clr	a
      001F83 93               [24] 2816 	movc	a,@a+dptr
      001F84 FE               [12] 2817 	mov	r6,a
      001F85 90 0B 47         [24] 2818 	mov	dptr,#_getDeviceDescriptor_len_65536_126
      001F88 E0               [24] 2819 	movx	a,@dptr
      001F89 FC               [12] 2820 	mov	r4,a
      001F8A A3               [24] 2821 	inc	dptr
      001F8B E0               [24] 2822 	movx	a,@dptr
      001F8C FD               [12] 2823 	mov	r5,a
      001F8D 7B 00            [12] 2824 	mov	r3,#0x00
      001F8F C3               [12] 2825 	clr	c
      001F90 EC               [12] 2826 	mov	a,r4
      001F91 9E               [12] 2827 	subb	a,r6
      001F92 ED               [12] 2828 	mov	a,r5
      001F93 9B               [12] 2829 	subb	a,r3
      001F94 50 04            [24] 2830 	jnc	00104$
                                   2831 ;	USBHost.c:466: return ERR_USB_BUF_OVER;
      001F96 75 82 17         [24] 2832 	mov	dpl,#0x17
      001F99 22               [24] 2833 	ret
      001F9A                       2834 00104$:
                                   2835 ;	USBHost.c:468: return res;
      001F9A 8F 82            [24] 2836 	mov	dpl,r7
                                   2837 ;	USBHost.c:469: }
      001F9C 22               [24] 2838 	ret
                                   2839 ;------------------------------------------------------------
                                   2840 ;Allocation info for local variables in function 'setUsbAddress'
                                   2841 ;------------------------------------------------------------
                                   2842 ;addr                      Allocated with name '_setUsbAddress_addr_65536_129'
                                   2843 ;res                       Allocated with name '_setUsbAddress_res_65536_130'
                                   2844 ;pSetupReq                 Allocated with name '_setUsbAddress_pSetupReq_65536_130'
                                   2845 ;------------------------------------------------------------
                                   2846 ;	USBHost.c:471: static uint8_t setUsbAddress(uint8_t addr)
                                   2847 ;	-----------------------------------------
                                   2848 ;	 function setUsbAddress
                                   2849 ;	-----------------------------------------
      001F9D                       2850 _setUsbAddress:
      001F9D E5 82            [12] 2851 	mov	a,dpl
      001F9F 90 0B 49         [24] 2852 	mov	dptr,#_setUsbAddress_addr_65536_129
      001FA2 F0               [24] 2853 	movx	@dptr,a
                                   2854 ;	USBHost.c:474: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   2855 ;	USBHost.c:475: fillTxBuffer(SetUSBAddressRequest, sizeof(SetUSBAddressRequest));
      001FA3 90 0B 44         [24] 2856 	mov	dptr,#_fillTxBuffer_PARM_2
      001FA6 74 08            [12] 2857 	mov	a,#0x08
      001FA8 F0               [24] 2858 	movx	@dptr,a
      001FA9 90 34 F1         [24] 2859 	mov	dptr,#_SetUSBAddressRequest
      001FAC 12 1F 0D         [24] 2860 	lcall	_fillTxBuffer
                                   2861 ;	USBHost.c:476: pSetupReq->wValueL = addr;
      001FAF 90 0B 49         [24] 2862 	mov	dptr,#_setUsbAddress_addr_65536_129
      001FB2 E0               [24] 2863 	movx	a,@dptr
      001FB3 FF               [12] 2864 	mov	r7,a
      001FB4 90 01 02         [24] 2865 	mov	dptr,#(_TxBuffer + 0x0002)
      001FB7 F0               [24] 2866 	movx	@dptr,a
                                   2867 ;	USBHost.c:477: res = hostCtrlTransfer(0, 0, 0);
      001FB8 90 0B 38         [24] 2868 	mov	dptr,#_hostCtrlTransfer_PARM_2
      001FBB E4               [12] 2869 	clr	a
      001FBC F0               [24] 2870 	movx	@dptr,a
      001FBD A3               [24] 2871 	inc	dptr
      001FBE F0               [24] 2872 	movx	@dptr,a
      001FBF A3               [24] 2873 	inc	dptr
      001FC0 F0               [24] 2874 	movx	@dptr,a
      001FC1 90 0B 3B         [24] 2875 	mov	dptr,#_hostCtrlTransfer_PARM_3
      001FC4 F0               [24] 2876 	movx	@dptr,a
      001FC5 A3               [24] 2877 	inc	dptr
      001FC6 F0               [24] 2878 	movx	@dptr,a
      001FC7 90 00 00         [24] 2879 	mov	dptr,#0x0000
      001FCA C0 07            [24] 2880 	push	ar7
      001FCC 12 1C 1A         [24] 2881 	lcall	_hostCtrlTransfer
      001FCF AE 82            [24] 2882 	mov	r6,dpl
      001FD1 D0 07            [24] 2883 	pop	ar7
                                   2884 ;	USBHost.c:478: if (res != ERR_SUCCESS) {
      001FD3 EE               [12] 2885 	mov	a,r6
      001FD4 60 03            [24] 2886 	jz	00102$
                                   2887 ;	USBHost.c:479: return res;
      001FD6 8E 82            [24] 2888 	mov	dpl,r6
      001FD8 22               [24] 2889 	ret
      001FD9                       2890 00102$:
                                   2891 ;	USBHost.c:483: setHostUsbAddr(addr);
      001FD9 8F 82            [24] 2892 	mov	dpl,r7
      001FDB C0 06            [24] 2893 	push	ar6
      001FDD 12 18 EF         [24] 2894 	lcall	_setHostUsbAddr
                                   2895 ;	USBHost.c:484: delay(100);
      001FE0 90 00 64         [24] 2896 	mov	dptr,#0x0064
      001FE3 12 16 3C         [24] 2897 	lcall	_delay
      001FE6 D0 06            [24] 2898 	pop	ar6
                                   2899 ;	USBHost.c:485: return res;
      001FE8 8E 82            [24] 2900 	mov	dpl,r6
                                   2901 ;	USBHost.c:486: }
      001FEA 22               [24] 2902 	ret
                                   2903 ;------------------------------------------------------------
                                   2904 ;Allocation info for local variables in function 'setUsbConfig'
                                   2905 ;------------------------------------------------------------
                                   2906 ;cfg                       Allocated with name '_setUsbConfig_cfg_65536_132'
                                   2907 ;pSetupReq                 Allocated with name '_setUsbConfig_pSetupReq_65536_133'
                                   2908 ;------------------------------------------------------------
                                   2909 ;	USBHost.c:488: static uint8_t setUsbConfig(uint8_t cfg)
                                   2910 ;	-----------------------------------------
                                   2911 ;	 function setUsbConfig
                                   2912 ;	-----------------------------------------
      001FEB                       2913 _setUsbConfig:
      001FEB E5 82            [12] 2914 	mov	a,dpl
      001FED 90 0B 4A         [24] 2915 	mov	dptr,#_setUsbConfig_cfg_65536_132
      001FF0 F0               [24] 2916 	movx	@dptr,a
                                   2917 ;	USBHost.c:490: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   2918 ;	USBHost.c:491: fillTxBuffer(SetupSetUsbConfig, sizeof(SetupSetUsbConfig));
      001FF1 90 0B 44         [24] 2919 	mov	dptr,#_fillTxBuffer_PARM_2
      001FF4 74 08            [12] 2920 	mov	a,#0x08
      001FF6 F0               [24] 2921 	movx	@dptr,a
      001FF7 90 35 01         [24] 2922 	mov	dptr,#_SetupSetUsbConfig
      001FFA 12 1F 0D         [24] 2923 	lcall	_fillTxBuffer
                                   2924 ;	USBHost.c:492: pSetupReq->wValueL = cfg;
      001FFD 90 0B 4A         [24] 2925 	mov	dptr,#_setUsbConfig_cfg_65536_132
      002000 E0               [24] 2926 	movx	a,@dptr
      002001 90 01 02         [24] 2927 	mov	dptr,#(_TxBuffer + 0x0002)
      002004 F0               [24] 2928 	movx	@dptr,a
                                   2929 ;	USBHost.c:493: return hostCtrlTransfer(0, 0, 0);
      002005 90 0B 38         [24] 2930 	mov	dptr,#_hostCtrlTransfer_PARM_2
      002008 E4               [12] 2931 	clr	a
      002009 F0               [24] 2932 	movx	@dptr,a
      00200A A3               [24] 2933 	inc	dptr
      00200B F0               [24] 2934 	movx	@dptr,a
      00200C A3               [24] 2935 	inc	dptr
      00200D F0               [24] 2936 	movx	@dptr,a
      00200E 90 0B 3B         [24] 2937 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002011 F0               [24] 2938 	movx	@dptr,a
      002012 A3               [24] 2939 	inc	dptr
      002013 F0               [24] 2940 	movx	@dptr,a
      002014 90 00 00         [24] 2941 	mov	dptr,#0x0000
                                   2942 ;	USBHost.c:494: }
      002017 02 1C 1A         [24] 2943 	ljmp	_hostCtrlTransfer
                                   2944 ;------------------------------------------------------------
                                   2945 ;Allocation info for local variables in function 'getDeviceString'
                                   2946 ;------------------------------------------------------------
                                   2947 ;	USBHost.c:496: static uint8_t getDeviceString()
                                   2948 ;	-----------------------------------------
                                   2949 ;	 function getDeviceString
                                   2950 ;	-----------------------------------------
      00201A                       2951 _getDeviceString:
                                   2952 ;	USBHost.c:498: fillTxBuffer(GetDeviceStringRequest, sizeof(GetDeviceStringRequest));
      00201A 90 0B 44         [24] 2953 	mov	dptr,#_fillTxBuffer_PARM_2
      00201D 74 08            [12] 2954 	mov	a,#0x08
      00201F F0               [24] 2955 	movx	@dptr,a
      002020 90 34 F9         [24] 2956 	mov	dptr,#_GetDeviceStringRequest
      002023 12 1F 0D         [24] 2957 	lcall	_fillTxBuffer
                                   2958 ;	USBHost.c:499: return hostCtrlTransfer(receiveDataBuffer, 0, RECEIVE_BUFFER_LEN);
      002026 90 0B 38         [24] 2959 	mov	dptr,#_hostCtrlTransfer_PARM_2
      002029 E4               [12] 2960 	clr	a
      00202A F0               [24] 2961 	movx	@dptr,a
      00202B A3               [24] 2962 	inc	dptr
      00202C F0               [24] 2963 	movx	@dptr,a
      00202D A3               [24] 2964 	inc	dptr
      00202E F0               [24] 2965 	movx	@dptr,a
      00202F 90 0B 3B         [24] 2966 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002032 F0               [24] 2967 	movx	@dptr,a
      002033 74 02            [12] 2968 	mov	a,#0x02
      002035 A3               [24] 2969 	inc	dptr
      002036 F0               [24] 2970 	movx	@dptr,a
      002037 90 08 48         [24] 2971 	mov	dptr,#_receiveDataBuffer
                                   2972 ;	USBHost.c:500: }
      00203A 02 1C 1A         [24] 2973 	ljmp	_hostCtrlTransfer
                                   2974 ;------------------------------------------------------------
                                   2975 ;Allocation info for local variables in function 'convertStringDescriptor'
                                   2976 ;------------------------------------------------------------
                                   2977 ;strBuffer                 Allocated with name '_convertStringDescriptor_PARM_2'
                                   2978 ;bufferLength              Allocated with name '_convertStringDescriptor_PARM_3'
                                   2979 ;index                     Allocated with name '_convertStringDescriptor_PARM_4'
                                   2980 ;usbBuffer                 Allocated with name '_convertStringDescriptor_usbBuffer_65536_135'
                                   2981 ;i                         Allocated with name '_convertStringDescriptor_i_65536_136'
                                   2982 ;len                       Allocated with name '_convertStringDescriptor_len_65536_136'
                                   2983 ;sloc0                     Allocated with name '_convertStringDescriptor_sloc0_1_0'
                                   2984 ;sloc1                     Allocated with name '_convertStringDescriptor_sloc1_1_0'
                                   2985 ;sloc2                     Allocated with name '_convertStringDescriptor_sloc2_1_0'
                                   2986 ;sloc3                     Allocated with name '_convertStringDescriptor_sloc3_1_0'
                                   2987 ;------------------------------------------------------------
                                   2988 ;	USBHost.c:502: static char convertStringDescriptor(uint8_t __xdata *usbBuffer, uint8_t __xdata *strBuffer, uint16_t bufferLength, uint8_t index)
                                   2989 ;	-----------------------------------------
                                   2990 ;	 function convertStringDescriptor
                                   2991 ;	-----------------------------------------
      00203D                       2992 _convertStringDescriptor:
      00203D AF 83            [24] 2993 	mov	r7,dph
      00203F E5 82            [12] 2994 	mov	a,dpl
      002041 90 0B 50         [24] 2995 	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_135
      002044 F0               [24] 2996 	movx	@dptr,a
      002045 EF               [12] 2997 	mov	a,r7
      002046 A3               [24] 2998 	inc	dptr
      002047 F0               [24] 2999 	movx	@dptr,a
                                   3000 ;	USBHost.c:506: __xdata uint8_t len = (usbBuffer[0] - 2) >> 1;
      002048 90 0B 50         [24] 3001 	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_135
      00204B E0               [24] 3002 	movx	a,@dptr
      00204C FE               [12] 3003 	mov	r6,a
      00204D A3               [24] 3004 	inc	dptr
      00204E E0               [24] 3005 	movx	a,@dptr
      00204F FF               [12] 3006 	mov	r7,a
      002050 8E 82            [24] 3007 	mov	dpl,r6
      002052 8F 83            [24] 3008 	mov	dph,r7
      002054 E0               [24] 3009 	movx	a,@dptr
      002055 7C 00            [12] 3010 	mov	r4,#0x00
      002057 24 FE            [12] 3011 	add	a,#0xfe
      002059 FD               [12] 3012 	mov	r5,a
      00205A EC               [12] 3013 	mov	a,r4
      00205B 34 FF            [12] 3014 	addc	a,#0xff
      00205D A2 E7            [12] 3015 	mov	c,acc.7
      00205F 13               [12] 3016 	rrc	a
      002060 CD               [12] 3017 	xch	a,r5
      002061 13               [12] 3018 	rrc	a
      002062 CD               [12] 3019 	xch	a,r5
                                   3020 ;	USBHost.c:509: if (usbBuffer[1] != 3) {
      002063 8E 82            [24] 3021 	mov	dpl,r6
      002065 8F 83            [24] 3022 	mov	dph,r7
      002067 A3               [24] 3023 	inc	dptr
      002068 E0               [24] 3024 	movx	a,@dptr
      002069 FC               [12] 3025 	mov	r4,a
      00206A BC 03 02         [24] 3026 	cjne	r4,#0x03,00134$
      00206D 80 04            [24] 3027 	sjmp	00117$
      00206F                       3028 00134$:
                                   3029 ;	USBHost.c:510: return 0; // check if device string
      00206F 75 82 00         [24] 3030 	mov	dpl,#0x00
      002072 22               [24] 3031 	ret
      002073                       3032 00117$:
      002073 90 0B 4D         [24] 3033 	mov	dptr,#_convertStringDescriptor_PARM_3
      002076 E0               [24] 3034 	movx	a,@dptr
      002077 F5 12            [12] 3035 	mov	_convertStringDescriptor_sloc1_1_0,a
      002079 A3               [24] 3036 	inc	dptr
      00207A E0               [24] 3037 	movx	a,@dptr
      00207B F5 13            [12] 3038 	mov	(_convertStringDescriptor_sloc1_1_0 + 1),a
      00207D 90 0B 4B         [24] 3039 	mov	dptr,#_convertStringDescriptor_PARM_2
      002080 E0               [24] 3040 	movx	a,@dptr
      002081 F5 16            [12] 3041 	mov	_convertStringDescriptor_sloc3_1_0,a
      002083 A3               [24] 3042 	inc	dptr
      002084 E0               [24] 3043 	movx	a,@dptr
      002085 F5 17            [12] 3044 	mov	(_convertStringDescriptor_sloc3_1_0 + 1),a
      002087 85 16 10         [24] 3045 	mov	_convertStringDescriptor_sloc0_1_0,_convertStringDescriptor_sloc3_1_0
      00208A 85 17 11         [24] 3046 	mov	(_convertStringDescriptor_sloc0_1_0 + 1),(_convertStringDescriptor_sloc3_1_0 + 1)
      00208D 78 00            [12] 3047 	mov	r0,#0x00
      00208F                       3048 00109$:
                                   3049 ;	USBHost.c:513: for (; (i < len) && (i < bufferLength - 1); i++) {
      00208F C3               [12] 3050 	clr	c
      002090 E8               [12] 3051 	mov	a,r0
      002091 9D               [12] 3052 	subb	a,r5
      002092 50 71            [24] 3053 	jnc	00106$
      002094 C0 05            [24] 3054 	push	ar5
      002096 AC 12            [24] 3055 	mov	r4,_convertStringDescriptor_sloc1_1_0
      002098 AD 13            [24] 3056 	mov	r5,(_convertStringDescriptor_sloc1_1_0 + 1)
      00209A EC               [12] 3057 	mov	a,r4
      00209B 24 FF            [12] 3058 	add	a,#0xff
      00209D F5 14            [12] 3059 	mov	_convertStringDescriptor_sloc2_1_0,a
      00209F ED               [12] 3060 	mov	a,r5
      0020A0 34 FF            [12] 3061 	addc	a,#0xff
      0020A2 F5 15            [12] 3062 	mov	(_convertStringDescriptor_sloc2_1_0 + 1),a
      0020A4 88 03            [24] 3063 	mov	ar3,r0
      0020A6 7D 00            [12] 3064 	mov	r5,#0x00
      0020A8 C3               [12] 3065 	clr	c
      0020A9 EB               [12] 3066 	mov	a,r3
      0020AA 95 14            [12] 3067 	subb	a,_convertStringDescriptor_sloc2_1_0
      0020AC ED               [12] 3068 	mov	a,r5
      0020AD 95 15            [12] 3069 	subb	a,(_convertStringDescriptor_sloc2_1_0 + 1)
      0020AF D0 05            [24] 3070 	pop	ar5
      0020B1 50 52            [24] 3071 	jnc	00106$
                                   3072 ;	USBHost.c:514: if (usbBuffer[2 + 1 + (i << 1)]) {
      0020B3 C0 05            [24] 3073 	push	ar5
      0020B5 88 03            [24] 3074 	mov	ar3,r0
      0020B7 7C 00            [12] 3075 	mov	r4,#0x00
      0020B9 EB               [12] 3076 	mov	a,r3
      0020BA 2B               [12] 3077 	add	a,r3
      0020BB FB               [12] 3078 	mov	r3,a
      0020BC EC               [12] 3079 	mov	a,r4
      0020BD 33               [12] 3080 	rlc	a
      0020BE FC               [12] 3081 	mov	r4,a
      0020BF 74 03            [12] 3082 	mov	a,#0x03
      0020C1 2B               [12] 3083 	add	a,r3
      0020C2 FA               [12] 3084 	mov	r2,a
      0020C3 E4               [12] 3085 	clr	a
      0020C4 3C               [12] 3086 	addc	a,r4
      0020C5 FD               [12] 3087 	mov	r5,a
      0020C6 EA               [12] 3088 	mov	a,r2
      0020C7 2E               [12] 3089 	add	a,r6
      0020C8 FA               [12] 3090 	mov	r2,a
      0020C9 ED               [12] 3091 	mov	a,r5
      0020CA 3F               [12] 3092 	addc	a,r7
      0020CB FD               [12] 3093 	mov	r5,a
      0020CC 8A 82            [24] 3094 	mov	dpl,r2
      0020CE 8D 83            [24] 3095 	mov	dph,r5
      0020D0 E0               [24] 3096 	movx	a,@dptr
      0020D1 D0 05            [24] 3097 	pop	ar5
      0020D3 60 0F            [24] 3098 	jz	00104$
                                   3099 ;	USBHost.c:515: strBuffer[i] = '?';
      0020D5 E8               [12] 3100 	mov	a,r0
      0020D6 25 10            [12] 3101 	add	a,_convertStringDescriptor_sloc0_1_0
      0020D8 F5 82            [12] 3102 	mov	dpl,a
      0020DA E4               [12] 3103 	clr	a
      0020DB 35 11            [12] 3104 	addc	a,(_convertStringDescriptor_sloc0_1_0 + 1)
      0020DD F5 83            [12] 3105 	mov	dph,a
      0020DF 74 3F            [12] 3106 	mov	a,#0x3f
      0020E1 F0               [24] 3107 	movx	@dptr,a
      0020E2 80 1E            [24] 3108 	sjmp	00110$
      0020E4                       3109 00104$:
                                   3110 ;	USBHost.c:517: strBuffer[i] = usbBuffer[2 + (i << 1)];
      0020E4 E8               [12] 3111 	mov	a,r0
      0020E5 25 16            [12] 3112 	add	a,_convertStringDescriptor_sloc3_1_0
      0020E7 F9               [12] 3113 	mov	r1,a
      0020E8 E4               [12] 3114 	clr	a
      0020E9 35 17            [12] 3115 	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
      0020EB FA               [12] 3116 	mov	r2,a
      0020EC 74 02            [12] 3117 	mov	a,#0x02
      0020EE 2B               [12] 3118 	add	a,r3
      0020EF FB               [12] 3119 	mov	r3,a
      0020F0 E4               [12] 3120 	clr	a
      0020F1 3C               [12] 3121 	addc	a,r4
      0020F2 FC               [12] 3122 	mov	r4,a
      0020F3 EB               [12] 3123 	mov	a,r3
      0020F4 2E               [12] 3124 	add	a,r6
      0020F5 F5 82            [12] 3125 	mov	dpl,a
      0020F7 EC               [12] 3126 	mov	a,r4
      0020F8 3F               [12] 3127 	addc	a,r7
      0020F9 F5 83            [12] 3128 	mov	dph,a
      0020FB E0               [24] 3129 	movx	a,@dptr
      0020FC FC               [12] 3130 	mov	r4,a
      0020FD 89 82            [24] 3131 	mov	dpl,r1
      0020FF 8A 83            [24] 3132 	mov	dph,r2
      002101 F0               [24] 3133 	movx	@dptr,a
      002102                       3134 00110$:
                                   3135 ;	USBHost.c:513: for (; (i < len) && (i < bufferLength - 1); i++) {
      002102 08               [12] 3136 	inc	r0
      002103 80 8A            [24] 3137 	sjmp	00109$
      002105                       3138 00106$:
                                   3139 ;	USBHost.c:520: strBuffer[i] = 0;
      002105 E8               [12] 3140 	mov	a,r0
      002106 25 16            [12] 3141 	add	a,_convertStringDescriptor_sloc3_1_0
      002108 F5 82            [12] 3142 	mov	dpl,a
      00210A E4               [12] 3143 	clr	a
      00210B 35 17            [12] 3144 	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
      00210D F5 83            [12] 3145 	mov	dph,a
      00210F E4               [12] 3146 	clr	a
      002110 F0               [24] 3147 	movx	@dptr,a
                                   3148 ;	USBHost.c:522: return 1;
      002111 75 82 01         [24] 3149 	mov	dpl,#0x01
                                   3150 ;	USBHost.c:523: }
      002114 22               [24] 3151 	ret
                                   3152 ;------------------------------------------------------------
                                   3153 ;Allocation info for local variables in function 'DEBUG_OUT_USB_BUFFER'
                                   3154 ;------------------------------------------------------------
                                   3155 ;usbBuffer                 Allocated with name '_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142'
                                   3156 ;i                         Allocated with name '_DEBUG_OUT_USB_BUFFER_i_65536_143'
                                   3157 ;------------------------------------------------------------
                                   3158 ;	USBHost.c:525: static void DEBUG_OUT_USB_BUFFER(uint8_t __xdata *usbBuffer)
                                   3159 ;	-----------------------------------------
                                   3160 ;	 function DEBUG_OUT_USB_BUFFER
                                   3161 ;	-----------------------------------------
      002115                       3162 _DEBUG_OUT_USB_BUFFER:
      002115 AF 83            [24] 3163 	mov	r7,dph
      002117 E5 82            [12] 3164 	mov	a,dpl
      002119 90 0B 52         [24] 3165 	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142
      00211C F0               [24] 3166 	movx	@dptr,a
      00211D EF               [12] 3167 	mov	a,r7
      00211E A3               [24] 3168 	inc	dptr
      00211F F0               [24] 3169 	movx	@dptr,a
                                   3170 ;	USBHost.c:528: for (i = 0; i < usbBuffer[0]; i++) {
      002120 90 0B 52         [24] 3171 	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142
      002123 E0               [24] 3172 	movx	a,@dptr
      002124 FE               [12] 3173 	mov	r6,a
      002125 A3               [24] 3174 	inc	dptr
      002126 E0               [24] 3175 	movx	a,@dptr
      002127 FF               [12] 3176 	mov	r7,a
      002128 7C 00            [12] 3177 	mov	r4,#0x00
      00212A 7D 00            [12] 3178 	mov	r5,#0x00
      00212C                       3179 00103$:
      00212C 8E 82            [24] 3180 	mov	dpl,r6
      00212E 8F 83            [24] 3181 	mov	dph,r7
      002130 E0               [24] 3182 	movx	a,@dptr
      002131 FB               [12] 3183 	mov	r3,a
      002132 7A 00            [12] 3184 	mov	r2,#0x00
      002134 C3               [12] 3185 	clr	c
      002135 EC               [12] 3186 	mov	a,r4
      002136 9B               [12] 3187 	subb	a,r3
      002137 ED               [12] 3188 	mov	a,r5
      002138 64 80            [12] 3189 	xrl	a,#0x80
      00213A 8A F0            [24] 3190 	mov	b,r2
      00213C 63 F0 80         [24] 3191 	xrl	b,#0x80
      00213F 95 F0            [12] 3192 	subb	a,b
      002141 50 07            [24] 3193 	jnc	00105$
      002143 0C               [12] 3194 	inc	r4
                                   3195 ;	USBHost.c:531: DEBUG_OUT("\n");
      002144 BC 00 E5         [24] 3196 	cjne	r4,#0x00,00103$
      002147 0D               [12] 3197 	inc	r5
      002148 80 E2            [24] 3198 	sjmp	00103$
      00214A                       3199 00105$:
                                   3200 ;	USBHost.c:532: }
      00214A 22               [24] 3201 	ret
                                   3202 ;------------------------------------------------------------
                                   3203 ;Allocation info for local variables in function 'getConfigurationDescriptor'
                                   3204 ;------------------------------------------------------------
                                   3205 ;res                       Allocated with name '_getConfigurationDescriptor_res_65536_146'
                                   3206 ;len                       Allocated with name '_getConfigurationDescriptor_len_65536_146'
                                   3207 ;total                     Allocated with name '_getConfigurationDescriptor_total_65536_146'
                                   3208 ;------------------------------------------------------------
                                   3209 ;	USBHost.c:534: static uint8_t getConfigurationDescriptor()
                                   3210 ;	-----------------------------------------
                                   3211 ;	 function getConfigurationDescriptor
                                   3212 ;	-----------------------------------------
      00214B                       3213 _getConfigurationDescriptor:
                                   3214 ;	USBHost.c:538: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
      00214B 90 0B 44         [24] 3215 	mov	dptr,#_fillTxBuffer_PARM_2
      00214E 74 08            [12] 3216 	mov	a,#0x08
      002150 F0               [24] 3217 	movx	@dptr,a
      002151 90 34 E1         [24] 3218 	mov	dptr,#_GetConfigurationDescriptorRequest
      002154 12 1F 0D         [24] 3219 	lcall	_fillTxBuffer
                                   3220 ;	USBHost.c:540: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
      002157 90 0B 38         [24] 3221 	mov	dptr,#_hostCtrlTransfer_PARM_2
      00215A 74 54            [12] 3222 	mov	a,#_getConfigurationDescriptor_len_65536_146
      00215C F0               [24] 3223 	movx	@dptr,a
      00215D 74 0B            [12] 3224 	mov	a,#(_getConfigurationDescriptor_len_65536_146 >> 8)
      00215F A3               [24] 3225 	inc	dptr
      002160 F0               [24] 3226 	movx	@dptr,a
      002161 E4               [12] 3227 	clr	a
      002162 A3               [24] 3228 	inc	dptr
      002163 F0               [24] 3229 	movx	@dptr,a
      002164 90 0B 3B         [24] 3230 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002167 F0               [24] 3231 	movx	@dptr,a
      002168 74 02            [12] 3232 	mov	a,#0x02
      00216A A3               [24] 3233 	inc	dptr
      00216B F0               [24] 3234 	movx	@dptr,a
      00216C 90 08 48         [24] 3235 	mov	dptr,#_receiveDataBuffer
      00216F 12 1C 1A         [24] 3236 	lcall	_hostCtrlTransfer
                                   3237 ;	USBHost.c:541: if (res != ERR_SUCCESS) {
      002172 E5 82            [12] 3238 	mov	a,dpl
      002174 FF               [12] 3239 	mov	r7,a
      002175 60 03            [24] 3240 	jz	00102$
                                   3241 ;	USBHost.c:542: return res;
      002177 8F 82            [24] 3242 	mov	dpl,r7
      002179 22               [24] 3243 	ret
      00217A                       3244 00102$:
                                   3245 ;	USBHost.c:546: if (len < ((PUSB_SETUP_REQ)GetConfigurationDescriptorRequest)->wLengthL) {
      00217A 90 34 E7         [24] 3246 	mov	dptr,#(_GetConfigurationDescriptorRequest + 0x0006)
      00217D E4               [12] 3247 	clr	a
      00217E 93               [24] 3248 	movc	a,@a+dptr
      00217F FF               [12] 3249 	mov	r7,a
      002180 90 0B 54         [24] 3250 	mov	dptr,#_getConfigurationDescriptor_len_65536_146
      002183 E0               [24] 3251 	movx	a,@dptr
      002184 FD               [12] 3252 	mov	r5,a
      002185 A3               [24] 3253 	inc	dptr
      002186 E0               [24] 3254 	movx	a,@dptr
      002187 FE               [12] 3255 	mov	r6,a
      002188 7C 00            [12] 3256 	mov	r4,#0x00
      00218A C3               [12] 3257 	clr	c
      00218B ED               [12] 3258 	mov	a,r5
      00218C 9F               [12] 3259 	subb	a,r7
      00218D EE               [12] 3260 	mov	a,r6
      00218E 9C               [12] 3261 	subb	a,r4
      00218F 50 04            [24] 3262 	jnc	00104$
                                   3263 ;	USBHost.c:547: return ERR_USB_BUF_OVER;
      002191 75 82 17         [24] 3264 	mov	dpl,#0x17
      002194 22               [24] 3265 	ret
      002195                       3266 00104$:
                                   3267 ;	USBHost.c:551: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
      002195 90 08 4A         [24] 3268 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      002198 E0               [24] 3269 	movx	a,@dptr
      002199 FF               [12] 3270 	mov	r7,a
      00219A 7E 00            [12] 3271 	mov	r6,#0x00
      00219C 90 08 4B         [24] 3272 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      00219F E0               [24] 3273 	movx	a,@dptr
      0021A0 FC               [12] 3274 	mov	r4,a
      0021A1 E4               [12] 3275 	clr	a
      0021A2 2F               [12] 3276 	add	a,r7
      0021A3 FF               [12] 3277 	mov	r7,a
      0021A4 EC               [12] 3278 	mov	a,r4
      0021A5 3E               [12] 3279 	addc	a,r6
      0021A6 FE               [12] 3280 	mov	r6,a
                                   3281 ;	USBHost.c:552: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
      0021A7 90 0B 44         [24] 3282 	mov	dptr,#_fillTxBuffer_PARM_2
      0021AA 74 08            [12] 3283 	mov	a,#0x08
      0021AC F0               [24] 3284 	movx	@dptr,a
      0021AD 90 34 E1         [24] 3285 	mov	dptr,#_GetConfigurationDescriptorRequest
      0021B0 C0 07            [24] 3286 	push	ar7
      0021B2 C0 06            [24] 3287 	push	ar6
      0021B4 12 1F 0D         [24] 3288 	lcall	_fillTxBuffer
      0021B7 D0 06            [24] 3289 	pop	ar6
      0021B9 D0 07            [24] 3290 	pop	ar7
                                   3291 ;	USBHost.c:553: ((PUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(total & 255);
      0021BB 8F 05            [24] 3292 	mov	ar5,r7
      0021BD 90 01 06         [24] 3293 	mov	dptr,#(_TxBuffer + 0x0006)
      0021C0 ED               [12] 3294 	mov	a,r5
      0021C1 F0               [24] 3295 	movx	@dptr,a
                                   3296 ;	USBHost.c:554: ((PUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(total >> 8);
      0021C2 8E 07            [24] 3297 	mov	ar7,r6
      0021C4 90 01 07         [24] 3298 	mov	dptr,#(_TxBuffer + 0x0007)
      0021C7 EF               [12] 3299 	mov	a,r7
      0021C8 F0               [24] 3300 	movx	@dptr,a
                                   3301 ;	USBHost.c:555: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
      0021C9 90 0B 38         [24] 3302 	mov	dptr,#_hostCtrlTransfer_PARM_2
      0021CC 74 54            [12] 3303 	mov	a,#_getConfigurationDescriptor_len_65536_146
      0021CE F0               [24] 3304 	movx	@dptr,a
      0021CF 74 0B            [12] 3305 	mov	a,#(_getConfigurationDescriptor_len_65536_146 >> 8)
      0021D1 A3               [24] 3306 	inc	dptr
      0021D2 F0               [24] 3307 	movx	@dptr,a
      0021D3 E4               [12] 3308 	clr	a
      0021D4 A3               [24] 3309 	inc	dptr
      0021D5 F0               [24] 3310 	movx	@dptr,a
      0021D6 90 0B 3B         [24] 3311 	mov	dptr,#_hostCtrlTransfer_PARM_3
      0021D9 F0               [24] 3312 	movx	@dptr,a
      0021DA 74 02            [12] 3313 	mov	a,#0x02
      0021DC A3               [24] 3314 	inc	dptr
      0021DD F0               [24] 3315 	movx	@dptr,a
      0021DE 90 08 48         [24] 3316 	mov	dptr,#_receiveDataBuffer
      0021E1 12 1C 1A         [24] 3317 	lcall	_hostCtrlTransfer
                                   3318 ;	USBHost.c:556: if (res != ERR_SUCCESS) {
      0021E4 E5 82            [12] 3319 	mov	a,dpl
      0021E6 FF               [12] 3320 	mov	r7,a
      0021E7 60 03            [24] 3321 	jz	00106$
                                   3322 ;	USBHost.c:557: return res;
      0021E9 8F 82            [24] 3323 	mov	dpl,r7
      0021EB 22               [24] 3324 	ret
      0021EC                       3325 00106$:
                                   3326 ;	USBHost.c:560: return ERR_SUCCESS;
      0021EC 75 82 00         [24] 3327 	mov	dpl,#0x00
                                   3328 ;	USBHost.c:561: }
      0021EF 22               [24] 3329 	ret
                                   3330 ;------------------------------------------------------------
                                   3331 ;Allocation info for local variables in function 'resetHubDevices'
                                   3332 ;------------------------------------------------------------
                                   3333 ;hubindex                  Allocated with name '_resetHubDevices_hubindex_65536_150'
                                   3334 ;hiddevice                 Allocated with name '_resetHubDevices_hiddevice_65536_151'
                                   3335 ;------------------------------------------------------------
                                   3336 ;	USBHost.c:575: void resetHubDevices(uint8_t hubindex)
                                   3337 ;	-----------------------------------------
                                   3338 ;	 function resetHubDevices
                                   3339 ;	-----------------------------------------
      0021F0                       3340 _resetHubDevices:
      0021F0 E5 82            [12] 3341 	mov	a,dpl
      0021F2 90 0B 56         [24] 3342 	mov	dptr,#_resetHubDevices_hubindex_65536_150
      0021F5 F0               [24] 3343 	movx	@dptr,a
                                   3344 ;	USBHost.c:578: VendorProductID[hubindex].idVendorL = 0;
      0021F6 E0               [24] 3345 	movx	a,@dptr
      0021F7 FF               [12] 3346 	mov	r7,a
      0021F8 75 F0 10         [24] 3347 	mov	b,#0x10
      0021FB A4               [48] 3348 	mul	ab
      0021FC FD               [12] 3349 	mov	r5,a
      0021FD AE F0            [24] 3350 	mov	r6,b
      0021FF 24 F8            [12] 3351 	add	a,#_VendorProductID
      002201 F5 82            [12] 3352 	mov	dpl,a
      002203 EE               [12] 3353 	mov	a,r6
      002204 34 0A            [12] 3354 	addc	a,#(_VendorProductID >> 8)
      002206 F5 83            [12] 3355 	mov	dph,a
      002208 E4               [12] 3356 	clr	a
      002209 F0               [24] 3357 	movx	@dptr,a
      00220A A3               [24] 3358 	inc	dptr
      00220B F0               [24] 3359 	movx	@dptr,a
      00220C A3               [24] 3360 	inc	dptr
      00220D F0               [24] 3361 	movx	@dptr,a
      00220E A3               [24] 3362 	inc	dptr
      00220F F0               [24] 3363 	movx	@dptr,a
                                   3364 ;	USBHost.c:579: VendorProductID[hubindex].idVendorH = 0;
      002210 ED               [12] 3365 	mov	a,r5
      002211 24 F8            [12] 3366 	add	a,#_VendorProductID
      002213 FD               [12] 3367 	mov	r5,a
      002214 EE               [12] 3368 	mov	a,r6
      002215 34 0A            [12] 3369 	addc	a,#(_VendorProductID >> 8)
      002217 FE               [12] 3370 	mov	r6,a
      002218 8D 82            [24] 3371 	mov	dpl,r5
      00221A 8E 83            [24] 3372 	mov	dph,r6
      00221C A3               [24] 3373 	inc	dptr
      00221D A3               [24] 3374 	inc	dptr
      00221E A3               [24] 3375 	inc	dptr
      00221F A3               [24] 3376 	inc	dptr
      002220 E4               [12] 3377 	clr	a
      002221 F0               [24] 3378 	movx	@dptr,a
      002222 A3               [24] 3379 	inc	dptr
      002223 F0               [24] 3380 	movx	@dptr,a
      002224 A3               [24] 3381 	inc	dptr
      002225 F0               [24] 3382 	movx	@dptr,a
      002226 A3               [24] 3383 	inc	dptr
      002227 F0               [24] 3384 	movx	@dptr,a
                                   3385 ;	USBHost.c:580: VendorProductID[hubindex].idProductL = 0;
      002228 74 08            [12] 3386 	mov	a,#0x08
      00222A 2D               [12] 3387 	add	a,r5
      00222B F5 82            [12] 3388 	mov	dpl,a
      00222D E4               [12] 3389 	clr	a
      00222E 3E               [12] 3390 	addc	a,r6
      00222F F5 83            [12] 3391 	mov	dph,a
      002231 E4               [12] 3392 	clr	a
      002232 F0               [24] 3393 	movx	@dptr,a
      002233 A3               [24] 3394 	inc	dptr
      002234 F0               [24] 3395 	movx	@dptr,a
      002235 A3               [24] 3396 	inc	dptr
      002236 F0               [24] 3397 	movx	@dptr,a
      002237 A3               [24] 3398 	inc	dptr
      002238 F0               [24] 3399 	movx	@dptr,a
                                   3400 ;	USBHost.c:581: VendorProductID[hubindex].idProductH = 0;
      002239 74 0C            [12] 3401 	mov	a,#0x0c
      00223B 2D               [12] 3402 	add	a,r5
      00223C F5 82            [12] 3403 	mov	dpl,a
      00223E E4               [12] 3404 	clr	a
      00223F 3E               [12] 3405 	addc	a,r6
      002240 F5 83            [12] 3406 	mov	dph,a
      002242 E4               [12] 3407 	clr	a
      002243 F0               [24] 3408 	movx	@dptr,a
      002244 A3               [24] 3409 	inc	dptr
      002245 F0               [24] 3410 	movx	@dptr,a
      002246 A3               [24] 3411 	inc	dptr
      002247 F0               [24] 3412 	movx	@dptr,a
      002248 A3               [24] 3413 	inc	dptr
      002249 F0               [24] 3414 	movx	@dptr,a
                                   3415 ;	USBHost.c:583: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      00224A 7E 00            [12] 3416 	mov	r6,#0x00
      00224C                       3417 00104$:
                                   3418 ;	USBHost.c:584: if (HIDdevice[hiddevice].rootHub == hubindex) {
      00224C EE               [12] 3419 	mov	a,r6
      00224D 75 F0 16         [24] 3420 	mov	b,#0x16
      002250 A4               [48] 3421 	mul	ab
      002251 24 48            [12] 3422 	add	a,#_HIDdevice
      002253 FC               [12] 3423 	mov	r4,a
      002254 74 0A            [12] 3424 	mov	a,#(_HIDdevice >> 8)
      002256 35 F0            [12] 3425 	addc	a,b
      002258 FD               [12] 3426 	mov	r5,a
      002259 74 01            [12] 3427 	mov	a,#0x01
      00225B 2C               [12] 3428 	add	a,r4
      00225C FA               [12] 3429 	mov	r2,a
      00225D E4               [12] 3430 	clr	a
      00225E 3D               [12] 3431 	addc	a,r5
      00225F FB               [12] 3432 	mov	r3,a
      002260 8A 82            [24] 3433 	mov	dpl,r2
      002262 8B 83            [24] 3434 	mov	dph,r3
      002264 E0               [24] 3435 	movx	a,@dptr
      002265 B5 07 29         [24] 3436 	cjne	a,ar7,00105$
                                   3437 ;	USBHost.c:585: HIDdevice[hiddevice].connected = 0;
      002268 8C 82            [24] 3438 	mov	dpl,r4
      00226A 8D 83            [24] 3439 	mov	dph,r5
      00226C E4               [12] 3440 	clr	a
      00226D F0               [24] 3441 	movx	@dptr,a
                                   3442 ;	USBHost.c:586: HIDdevice[hiddevice].rootHub = 0;
      00226E 8A 82            [24] 3443 	mov	dpl,r2
      002270 8B 83            [24] 3444 	mov	dph,r3
      002272 F0               [24] 3445 	movx	@dptr,a
                                   3446 ;	USBHost.c:587: HIDdevice[hiddevice].interface = 0;
      002273 8C 82            [24] 3447 	mov	dpl,r4
      002275 8D 83            [24] 3448 	mov	dph,r5
      002277 A3               [24] 3449 	inc	dptr
      002278 A3               [24] 3450 	inc	dptr
      002279 F0               [24] 3451 	movx	@dptr,a
                                   3452 ;	USBHost.c:588: HIDdevice[hiddevice].endPoint = 0;
      00227A 8C 82            [24] 3453 	mov	dpl,r4
      00227C 8D 83            [24] 3454 	mov	dph,r5
      00227E A3               [24] 3455 	inc	dptr
      00227F A3               [24] 3456 	inc	dptr
      002280 A3               [24] 3457 	inc	dptr
      002281 F0               [24] 3458 	movx	@dptr,a
                                   3459 ;	USBHost.c:589: HIDdevice[hiddevice].type = 0;
      002282 8C 82            [24] 3460 	mov	dpl,r4
      002284 8D 83            [24] 3461 	mov	dph,r5
      002286 A3               [24] 3462 	inc	dptr
      002287 A3               [24] 3463 	inc	dptr
      002288 A3               [24] 3464 	inc	dptr
      002289 A3               [24] 3465 	inc	dptr
      00228A F0               [24] 3466 	movx	@dptr,a
      00228B A3               [24] 3467 	inc	dptr
      00228C F0               [24] 3468 	movx	@dptr,a
      00228D A3               [24] 3469 	inc	dptr
      00228E F0               [24] 3470 	movx	@dptr,a
      00228F A3               [24] 3471 	inc	dptr
      002290 F0               [24] 3472 	movx	@dptr,a
      002291                       3473 00105$:
                                   3474 ;	USBHost.c:583: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      002291 0E               [12] 3475 	inc	r6
      002292 BE 08 00         [24] 3476 	cjne	r6,#0x08,00119$
      002295                       3477 00119$:
      002295 40 B5            [24] 3478 	jc	00104$
                                   3479 ;	USBHost.c:592: }
      002297 22               [24] 3480 	ret
                                   3481 ;------------------------------------------------------------
                                   3482 ;Allocation info for local variables in function 'pollHIDdevice'
                                   3483 ;------------------------------------------------------------
                                   3484 ;sloc0                     Allocated with name '_pollHIDdevice_sloc0_1_0'
                                   3485 ;dx                        Allocated with name '_pollHIDdevice_PARM_2'
                                   3486 ;dy                        Allocated with name '_pollHIDdevice_PARM_3'
                                   3487 ;dwheel                    Allocated with name '_pollHIDdevice_PARM_4'
                                   3488 ;buttons                   Allocated with name '_pollHIDdevice_buttons_65536_155'
                                   3489 ;res                       Allocated with name '_pollHIDdevice_res_65536_156'
                                   3490 ;hiddevice                 Allocated with name '_pollHIDdevice_hiddevice_65536_156'
                                   3491 ;len                       Allocated with name '_pollHIDdevice_len_65536_156'
                                   3492 ;report                    Allocated with name '_pollHIDdevice_report_65536_156'
                                   3493 ;map                       Allocated with name '_pollHIDdevice_map_65536_156'
                                   3494 ;------------------------------------------------------------
                                   3495 ;	USBHost.c:594: void pollHIDdevice(uint32_t * buttons, int32_t * dx, int32_t * dy, int32_t * dwheel)
                                   3496 ;	-----------------------------------------
                                   3497 ;	 function pollHIDdevice
                                   3498 ;	-----------------------------------------
      002298                       3499 _pollHIDdevice:
      002298 AF F0            [24] 3500 	mov	r7,b
      00229A AE 83            [24] 3501 	mov	r6,dph
      00229C E5 82            [12] 3502 	mov	a,dpl
      00229E 90 0B 60         [24] 3503 	mov	dptr,#_pollHIDdevice_buttons_65536_155
      0022A1 F0               [24] 3504 	movx	@dptr,a
      0022A2 EE               [12] 3505 	mov	a,r6
      0022A3 A3               [24] 3506 	inc	dptr
      0022A4 F0               [24] 3507 	movx	@dptr,a
      0022A5 EF               [12] 3508 	mov	a,r7
      0022A6 A3               [24] 3509 	inc	dptr
      0022A7 F0               [24] 3510 	movx	@dptr,a
                                   3511 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0022A8 7F 00            [12] 3512 	mov	r7,#0x00
      0022AA                       3513 00123$:
                                   3514 ;	USBHost.c:603: if (HIDdevice[hiddevice].connected && HIDdevice[hiddevice].type == REPORT_USAGE_MOUSE) {
      0022AA EF               [12] 3515 	mov	a,r7
      0022AB 75 F0 16         [24] 3516 	mov	b,#0x16
      0022AE A4               [48] 3517 	mul	ab
      0022AF FD               [12] 3518 	mov	r5,a
      0022B0 AE F0            [24] 3519 	mov	r6,b
      0022B2 24 48            [12] 3520 	add	a,#_HIDdevice
      0022B4 FB               [12] 3521 	mov	r3,a
      0022B5 EE               [12] 3522 	mov	a,r6
      0022B6 34 0A            [12] 3523 	addc	a,#(_HIDdevice >> 8)
      0022B8 FC               [12] 3524 	mov	r4,a
      0022B9 8B 82            [24] 3525 	mov	dpl,r3
      0022BB 8C 83            [24] 3526 	mov	dph,r4
      0022BD E0               [24] 3527 	movx	a,@dptr
      0022BE 70 03            [24] 3528 	jnz	00187$
      0022C0 02 25 E7         [24] 3529 	ljmp	00124$
      0022C3                       3530 00187$:
      0022C3 ED               [12] 3531 	mov	a,r5
      0022C4 24 48            [12] 3532 	add	a,#_HIDdevice
      0022C6 FD               [12] 3533 	mov	r5,a
      0022C7 EE               [12] 3534 	mov	a,r6
      0022C8 34 0A            [12] 3535 	addc	a,#(_HIDdevice >> 8)
      0022CA FE               [12] 3536 	mov	r6,a
      0022CB 8D 82            [24] 3537 	mov	dpl,r5
      0022CD 8E 83            [24] 3538 	mov	dph,r6
      0022CF A3               [24] 3539 	inc	dptr
      0022D0 A3               [24] 3540 	inc	dptr
      0022D1 A3               [24] 3541 	inc	dptr
      0022D2 A3               [24] 3542 	inc	dptr
      0022D3 E0               [24] 3543 	movx	a,@dptr
      0022D4 F9               [12] 3544 	mov	r1,a
      0022D5 A3               [24] 3545 	inc	dptr
      0022D6 E0               [24] 3546 	movx	a,@dptr
      0022D7 FA               [12] 3547 	mov	r2,a
      0022D8 A3               [24] 3548 	inc	dptr
      0022D9 E0               [24] 3549 	movx	a,@dptr
      0022DA FB               [12] 3550 	mov	r3,a
      0022DB A3               [24] 3551 	inc	dptr
      0022DC E0               [24] 3552 	movx	a,@dptr
      0022DD FC               [12] 3553 	mov	r4,a
      0022DE B9 02 0B         [24] 3554 	cjne	r1,#0x02,00188$
      0022E1 BA 00 08         [24] 3555 	cjne	r2,#0x00,00188$
      0022E4 BB 00 05         [24] 3556 	cjne	r3,#0x00,00188$
      0022E7 BC 00 02         [24] 3557 	cjne	r4,#0x00,00188$
      0022EA 80 03            [24] 3558 	sjmp	00189$
      0022EC                       3559 00188$:
      0022EC 02 25 E7         [24] 3560 	ljmp	00124$
      0022EF                       3561 00189$:
                                   3562 ;	USBHost.c:604: selectHubPort(HIDdevice[hiddevice].rootHub, 0);
      0022EF 8D 82            [24] 3563 	mov	dpl,r5
      0022F1 8E 83            [24] 3564 	mov	dph,r6
      0022F3 A3               [24] 3565 	inc	dptr
      0022F4 E0               [24] 3566 	movx	a,@dptr
      0022F5 FC               [12] 3567 	mov	r4,a
      0022F6 90 0B 30         [24] 3568 	mov	dptr,#_selectHubPort_PARM_2
      0022F9 E4               [12] 3569 	clr	a
      0022FA F0               [24] 3570 	movx	@dptr,a
      0022FB 8C 82            [24] 3571 	mov	dpl,r4
      0022FD C0 07            [24] 3572 	push	ar7
      0022FF C0 06            [24] 3573 	push	ar6
      002301 C0 05            [24] 3574 	push	ar5
      002303 12 1A 27         [24] 3575 	lcall	_selectHubPort
      002306 D0 05            [24] 3576 	pop	ar5
      002308 D0 06            [24] 3577 	pop	ar6
      00230A D0 07            [24] 3578 	pop	ar7
                                   3579 ;	USBHost.c:605: res = hostTransfer(USB_PID_IN << 4 | HIDdevice[hiddevice].endPoint & 0x7F,
      00230C 8D 82            [24] 3580 	mov	dpl,r5
      00230E 8E 83            [24] 3581 	mov	dph,r6
      002310 A3               [24] 3582 	inc	dptr
      002311 A3               [24] 3583 	inc	dptr
      002312 A3               [24] 3584 	inc	dptr
      002313 E0               [24] 3585 	movx	a,@dptr
      002314 FE               [12] 3586 	mov	r6,a
      002315 74 7F            [12] 3587 	mov	a,#0x7f
      002317 5E               [12] 3588 	anl	a,r6
      002318 44 90            [12] 3589 	orl	a,#0x90
      00231A FD               [12] 3590 	mov	r5,a
                                   3591 ;	USBHost.c:606: HIDdevice[hiddevice].endPoint & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0);
      00231B EE               [12] 3592 	mov	a,r6
      00231C 30 E7 06         [24] 3593 	jnb	acc.7,00127$
      00231F 7C C0            [12] 3594 	mov	r4,#0xc0
      002321 7E 00            [12] 3595 	mov	r6,#0x00
      002323 80 04            [24] 3596 	sjmp	00128$
      002325                       3597 00127$:
      002325 7C 00            [12] 3598 	mov	r4,#0x00
      002327 7E 00            [12] 3599 	mov	r6,#0x00
      002329                       3600 00128$:
      002329 90 0B 32         [24] 3601 	mov	dptr,#_hostTransfer_PARM_2
      00232C EC               [12] 3602 	mov	a,r4
      00232D F0               [24] 3603 	movx	@dptr,a
      00232E 90 0B 33         [24] 3604 	mov	dptr,#_hostTransfer_PARM_3
      002331 E4               [12] 3605 	clr	a
      002332 F0               [24] 3606 	movx	@dptr,a
      002333 A3               [24] 3607 	inc	dptr
      002334 F0               [24] 3608 	movx	@dptr,a
      002335 8D 82            [24] 3609 	mov	dpl,r5
      002337 C0 07            [24] 3610 	push	ar7
      002339 12 1A 59         [24] 3611 	lcall	_hostTransfer
      00233C E5 82            [12] 3612 	mov	a,dpl
      00233E D0 07            [24] 3613 	pop	ar7
                                   3614 ;	USBHost.c:607: if (res == ERR_SUCCESS) {
      002340 60 03            [24] 3615 	jz	00191$
      002342 02 25 E7         [24] 3616 	ljmp	00124$
      002345                       3617 00191$:
                                   3618 ;	USBHost.c:608: HIDdevice[hiddevice].endPoint ^= 0x80;
      002345 EF               [12] 3619 	mov	a,r7
      002346 75 F0 16         [24] 3620 	mov	b,#0x16
      002349 A4               [48] 3621 	mul	ab
      00234A 24 48            [12] 3622 	add	a,#_HIDdevice
      00234C FD               [12] 3623 	mov	r5,a
      00234D 74 0A            [12] 3624 	mov	a,#(_HIDdevice >> 8)
      00234F 35 F0            [12] 3625 	addc	a,b
      002351 FE               [12] 3626 	mov	r6,a
      002352 74 03            [12] 3627 	mov	a,#0x03
      002354 2D               [12] 3628 	add	a,r5
      002355 FB               [12] 3629 	mov	r3,a
      002356 E4               [12] 3630 	clr	a
      002357 3E               [12] 3631 	addc	a,r6
      002358 FC               [12] 3632 	mov	r4,a
      002359 8B 82            [24] 3633 	mov	dpl,r3
      00235B 8C 83            [24] 3634 	mov	dph,r4
      00235D E0               [24] 3635 	movx	a,@dptr
      00235E FA               [12] 3636 	mov	r2,a
      00235F 63 02 80         [24] 3637 	xrl	ar2,#0x80
      002362 8B 82            [24] 3638 	mov	dpl,r3
      002364 8C 83            [24] 3639 	mov	dph,r4
      002366 EA               [12] 3640 	mov	a,r2
      002367 F0               [24] 3641 	movx	@dptr,a
                                   3642 ;	USBHost.c:609: len = USB_RX_LEN;
      002368 90 0B 63         [24] 3643 	mov	dptr,#_pollHIDdevice_len_65536_156
      00236B E5 D1            [12] 3644 	mov	a,_USB_RX_LEN
      00236D F0               [24] 3645 	movx	@dptr,a
                                   3646 ;	USBHost.c:610: if (len) {
      00236E E0               [24] 3647 	movx	a,@dptr
      00236F 70 03            [24] 3648 	jnz	00192$
      002371 02 25 E7         [24] 3649 	ljmp	00124$
      002374                       3650 00192$:
                                   3651 ;	USBHost.c:611: map = &HIDdevice[hiddevice].mouse_map;
      002374 74 08            [12] 3652 	mov	a,#0x08
      002376 2D               [12] 3653 	add	a,r5
      002377 FB               [12] 3654 	mov	r3,a
      002378 E4               [12] 3655 	clr	a
      002379 3E               [12] 3656 	addc	a,r6
      00237A FC               [12] 3657 	mov	r4,a
                                   3658 ;	USBHost.c:612: report = RxBuffer;
      00237B 90 0B 64         [24] 3659 	mov	dptr,#_pollHIDdevice_report_65536_156
      00237E 74 00            [12] 3660 	mov	a,#_RxBuffer
      002380 F0               [24] 3661 	movx	@dptr,a
      002381 74 00            [12] 3662 	mov	a,#(_RxBuffer >> 8)
      002383 A3               [24] 3663 	inc	dptr
      002384 F0               [24] 3664 	movx	@dptr,a
                                   3665 ;	USBHost.c:613: if (map->report_id != 0) {
      002385 8B 82            [24] 3666 	mov	dpl,r3
      002387 8C 83            [24] 3667 	mov	dph,r4
      002389 E0               [24] 3668 	movx	a,@dptr
      00238A FA               [12] 3669 	mov	r2,a
      00238B 60 15            [24] 3670 	jz	00104$
                                   3671 ;	USBHost.c:614: if (report[0] != map->report_id) {
      00238D 90 00 00         [24] 3672 	mov	dptr,#_RxBuffer
      002390 E0               [24] 3673 	movx	a,@dptr
      002391 F9               [12] 3674 	mov	r1,a
      002392 B5 02 02         [24] 3675 	cjne	a,ar2,00194$
      002395 80 01            [24] 3676 	sjmp	00102$
      002397                       3677 00194$:
                                   3678 ;	USBHost.c:616: return;
      002397 22               [24] 3679 	ret
      002398                       3680 00102$:
                                   3681 ;	USBHost.c:618: report++;
      002398 90 0B 64         [24] 3682 	mov	dptr,#_pollHIDdevice_report_65536_156
      00239B 74 01            [12] 3683 	mov	a,#0x01
      00239D F0               [24] 3684 	movx	@dptr,a
      00239E 74 00            [12] 3685 	mov	a,#(_RxBuffer >> 8)
      0023A0 A3               [24] 3686 	inc	dptr
      0023A1 F0               [24] 3687 	movx	@dptr,a
      0023A2                       3688 00104$:
                                   3689 ;	USBHost.c:621: if (len - (map->report_id?1:0) < (map->report_length_bits + 7) >> 3) {
      0023A2 90 0B 63         [24] 3690 	mov	dptr,#_pollHIDdevice_len_65536_156
      0023A5 E0               [24] 3691 	movx	a,@dptr
      0023A6 F9               [12] 3692 	mov	r1,a
      0023A7 7A 00            [12] 3693 	mov	r2,#0x00
      0023A9 8B 82            [24] 3694 	mov	dpl,r3
      0023AB 8C 83            [24] 3695 	mov	dph,r4
      0023AD E0               [24] 3696 	movx	a,@dptr
      0023AE 60 06            [24] 3697 	jz	00129$
      0023B0 7B 01            [12] 3698 	mov	r3,#0x01
      0023B2 7C 00            [12] 3699 	mov	r4,#0x00
      0023B4 80 04            [24] 3700 	sjmp	00130$
      0023B6                       3701 00129$:
      0023B6 7B 00            [12] 3702 	mov	r3,#0x00
      0023B8 7C 00            [12] 3703 	mov	r4,#0x00
      0023BA                       3704 00130$:
      0023BA E9               [12] 3705 	mov	a,r1
      0023BB C3               [12] 3706 	clr	c
      0023BC 9B               [12] 3707 	subb	a,r3
      0023BD F9               [12] 3708 	mov	r1,a
      0023BE EA               [12] 3709 	mov	a,r2
      0023BF 9C               [12] 3710 	subb	a,r4
      0023C0 FA               [12] 3711 	mov	r2,a
      0023C1 74 15            [12] 3712 	mov	a,#0x15
      0023C3 2D               [12] 3713 	add	a,r5
      0023C4 F5 82            [12] 3714 	mov	dpl,a
      0023C6 E4               [12] 3715 	clr	a
      0023C7 3E               [12] 3716 	addc	a,r6
      0023C8 F5 83            [12] 3717 	mov	dph,a
      0023CA E0               [24] 3718 	movx	a,@dptr
      0023CB FC               [12] 3719 	mov	r4,a
      0023CC 7B 00            [12] 3720 	mov	r3,#0x00
      0023CE 74 07            [12] 3721 	mov	a,#0x07
      0023D0 2C               [12] 3722 	add	a,r4
      0023D1 FC               [12] 3723 	mov	r4,a
      0023D2 E4               [12] 3724 	clr	a
      0023D3 3B               [12] 3725 	addc	a,r3
      0023D4 C4               [12] 3726 	swap	a
      0023D5 23               [12] 3727 	rl	a
      0023D6 CC               [12] 3728 	xch	a,r4
      0023D7 C4               [12] 3729 	swap	a
      0023D8 23               [12] 3730 	rl	a
      0023D9 54 1F            [12] 3731 	anl	a,#0x1f
      0023DB 6C               [12] 3732 	xrl	a,r4
      0023DC CC               [12] 3733 	xch	a,r4
      0023DD 54 1F            [12] 3734 	anl	a,#0x1f
      0023DF CC               [12] 3735 	xch	a,r4
      0023E0 6C               [12] 3736 	xrl	a,r4
      0023E1 CC               [12] 3737 	xch	a,r4
      0023E2 30 E4 02         [24] 3738 	jnb	acc.4,00196$
      0023E5 44 E0            [12] 3739 	orl	a,#0xe0
      0023E7                       3740 00196$:
      0023E7 FB               [12] 3741 	mov	r3,a
      0023E8 C3               [12] 3742 	clr	c
      0023E9 E9               [12] 3743 	mov	a,r1
      0023EA 9C               [12] 3744 	subb	a,r4
      0023EB EA               [12] 3745 	mov	a,r2
      0023EC 64 80            [12] 3746 	xrl	a,#0x80
      0023EE 8B F0            [24] 3747 	mov	b,r3
      0023F0 63 F0 80         [24] 3748 	xrl	b,#0x80
      0023F3 95 F0            [12] 3749 	subb	a,b
      0023F5 50 01            [24] 3750 	jnc	00106$
                                   3751 ;	USBHost.c:624: return;
      0023F7 22               [24] 3752 	ret
      0023F8                       3753 00106$:
                                   3754 ;	USBHost.c:628: if (map->buttons_bit_size > 0) {
      0023F8 74 0B            [12] 3755 	mov	a,#0x0b
      0023FA 2D               [12] 3756 	add	a,r5
      0023FB F5 82            [12] 3757 	mov	dpl,a
      0023FD E4               [12] 3758 	clr	a
      0023FE 3E               [12] 3759 	addc	a,r6
      0023FF F5 83            [12] 3760 	mov	dph,a
      002401 E0               [24] 3761 	movx	a,@dptr
      002402 FC               [12] 3762 	mov	r4,a
      002403 60 70            [24] 3763 	jz	00108$
                                   3764 ;	USBHost.c:629: *buttons = (uint32_t)extract_field(report, map->buttons_bit_offset,
      002405 C0 07            [24] 3765 	push	ar7
      002407 90 0B 60         [24] 3766 	mov	dptr,#_pollHIDdevice_buttons_65536_155
      00240A E0               [24] 3767 	movx	a,@dptr
      00240B F5 27            [12] 3768 	mov	_pollHIDdevice_sloc0_1_0,a
      00240D A3               [24] 3769 	inc	dptr
      00240E E0               [24] 3770 	movx	a,@dptr
      00240F F5 28            [12] 3771 	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
      002411 A3               [24] 3772 	inc	dptr
      002412 E0               [24] 3773 	movx	a,@dptr
      002413 F5 29            [12] 3774 	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
      002415 90 0B 64         [24] 3775 	mov	dptr,#_pollHIDdevice_report_65536_156
      002418 E0               [24] 3776 	movx	a,@dptr
      002419 F8               [12] 3777 	mov	r0,a
      00241A A3               [24] 3778 	inc	dptr
      00241B E0               [24] 3779 	movx	a,@dptr
      00241C FB               [12] 3780 	mov	r3,a
      00241D 7F 00            [12] 3781 	mov	r7,#0x00
      00241F 74 09            [12] 3782 	mov	a,#0x09
      002421 2D               [12] 3783 	add	a,r5
      002422 F5 82            [12] 3784 	mov	dpl,a
      002424 E4               [12] 3785 	clr	a
      002425 3E               [12] 3786 	addc	a,r6
      002426 F5 83            [12] 3787 	mov	dph,a
      002428 E0               [24] 3788 	movx	a,@dptr
      002429 F9               [12] 3789 	mov	r1,a
      00242A A3               [24] 3790 	inc	dptr
      00242B E0               [24] 3791 	movx	a,@dptr
      00242C FA               [12] 3792 	mov	r2,a
                                   3793 ;	USBHost.c:630: map->buttons_bit_size, 0);
      00242D 90 0B 1E         [24] 3794 	mov	dptr,#_extract_field_PARM_2
      002430 E9               [12] 3795 	mov	a,r1
      002431 F0               [24] 3796 	movx	@dptr,a
      002432 EA               [12] 3797 	mov	a,r2
      002433 A3               [24] 3798 	inc	dptr
      002434 F0               [24] 3799 	movx	@dptr,a
      002435 90 0B 20         [24] 3800 	mov	dptr,#_extract_field_PARM_3
      002438 EC               [12] 3801 	mov	a,r4
      002439 F0               [24] 3802 	movx	@dptr,a
      00243A 90 0B 21         [24] 3803 	mov	dptr,#_extract_field_PARM_4
      00243D E4               [12] 3804 	clr	a
      00243E F0               [24] 3805 	movx	@dptr,a
      00243F 88 82            [24] 3806 	mov	dpl,r0
      002441 8B 83            [24] 3807 	mov	dph,r3
      002443 8F F0            [24] 3808 	mov	b,r7
      002445 C0 06            [24] 3809 	push	ar6
      002447 C0 05            [24] 3810 	push	ar5
      002449 12 16 7D         [24] 3811 	lcall	_extract_field
      00244C AC 82            [24] 3812 	mov	r4,dpl
      00244E AA 83            [24] 3813 	mov	r2,dph
      002450 AB F0            [24] 3814 	mov	r3,b
      002452 FF               [12] 3815 	mov	r7,a
      002453 D0 05            [24] 3816 	pop	ar5
      002455 D0 06            [24] 3817 	pop	ar6
      002457 85 27 82         [24] 3818 	mov	dpl,_pollHIDdevice_sloc0_1_0
      00245A 85 28 83         [24] 3819 	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
      00245D 85 29 F0         [24] 3820 	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
      002460 EC               [12] 3821 	mov	a,r4
      002461 12 34 7E         [24] 3822 	lcall	__gptrput
      002464 A3               [24] 3823 	inc	dptr
      002465 EA               [12] 3824 	mov	a,r2
      002466 12 34 7E         [24] 3825 	lcall	__gptrput
      002469 A3               [24] 3826 	inc	dptr
      00246A EB               [12] 3827 	mov	a,r3
      00246B 12 34 7E         [24] 3828 	lcall	__gptrput
      00246E A3               [24] 3829 	inc	dptr
      00246F EF               [12] 3830 	mov	a,r7
      002470 12 34 7E         [24] 3831 	lcall	__gptrput
                                   3832 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      002473 D0 07            [24] 3833 	pop	ar7
                                   3834 ;	USBHost.c:630: map->buttons_bit_size, 0);
      002475                       3835 00108$:
                                   3836 ;	USBHost.c:633: if (map->x_bit_size > 0) {
      002475 74 0E            [12] 3837 	mov	a,#0x0e
      002477 2D               [12] 3838 	add	a,r5
      002478 F5 82            [12] 3839 	mov	dpl,a
      00247A E4               [12] 3840 	clr	a
      00247B 3E               [12] 3841 	addc	a,r6
      00247C F5 83            [12] 3842 	mov	dph,a
      00247E E0               [24] 3843 	movx	a,@dptr
      00247F FC               [12] 3844 	mov	r4,a
      002480 60 71            [24] 3845 	jz	00110$
                                   3846 ;	USBHost.c:634: *dx = extract_field(report, map->x_bit_offset,
      002482 C0 07            [24] 3847 	push	ar7
      002484 90 0B 57         [24] 3848 	mov	dptr,#_pollHIDdevice_PARM_2
      002487 E0               [24] 3849 	movx	a,@dptr
      002488 F5 27            [12] 3850 	mov	_pollHIDdevice_sloc0_1_0,a
      00248A A3               [24] 3851 	inc	dptr
      00248B E0               [24] 3852 	movx	a,@dptr
      00248C F5 28            [12] 3853 	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
      00248E A3               [24] 3854 	inc	dptr
      00248F E0               [24] 3855 	movx	a,@dptr
      002490 F5 29            [12] 3856 	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
      002492 90 0B 64         [24] 3857 	mov	dptr,#_pollHIDdevice_report_65536_156
      002495 E0               [24] 3858 	movx	a,@dptr
      002496 F8               [12] 3859 	mov	r0,a
      002497 A3               [24] 3860 	inc	dptr
      002498 E0               [24] 3861 	movx	a,@dptr
      002499 FB               [12] 3862 	mov	r3,a
      00249A 7F 00            [12] 3863 	mov	r7,#0x00
      00249C 74 0C            [12] 3864 	mov	a,#0x0c
      00249E 2D               [12] 3865 	add	a,r5
      00249F F5 82            [12] 3866 	mov	dpl,a
      0024A1 E4               [12] 3867 	clr	a
      0024A2 3E               [12] 3868 	addc	a,r6
      0024A3 F5 83            [12] 3869 	mov	dph,a
      0024A5 E0               [24] 3870 	movx	a,@dptr
      0024A6 F9               [12] 3871 	mov	r1,a
      0024A7 A3               [24] 3872 	inc	dptr
      0024A8 E0               [24] 3873 	movx	a,@dptr
      0024A9 FA               [12] 3874 	mov	r2,a
                                   3875 ;	USBHost.c:635: map->x_bit_size, 1);
      0024AA 90 0B 1E         [24] 3876 	mov	dptr,#_extract_field_PARM_2
      0024AD E9               [12] 3877 	mov	a,r1
      0024AE F0               [24] 3878 	movx	@dptr,a
      0024AF EA               [12] 3879 	mov	a,r2
      0024B0 A3               [24] 3880 	inc	dptr
      0024B1 F0               [24] 3881 	movx	@dptr,a
      0024B2 90 0B 20         [24] 3882 	mov	dptr,#_extract_field_PARM_3
      0024B5 EC               [12] 3883 	mov	a,r4
      0024B6 F0               [24] 3884 	movx	@dptr,a
      0024B7 90 0B 21         [24] 3885 	mov	dptr,#_extract_field_PARM_4
      0024BA 74 01            [12] 3886 	mov	a,#0x01
      0024BC F0               [24] 3887 	movx	@dptr,a
      0024BD 88 82            [24] 3888 	mov	dpl,r0
      0024BF 8B 83            [24] 3889 	mov	dph,r3
      0024C1 8F F0            [24] 3890 	mov	b,r7
      0024C3 C0 06            [24] 3891 	push	ar6
      0024C5 C0 05            [24] 3892 	push	ar5
      0024C7 12 16 7D         [24] 3893 	lcall	_extract_field
      0024CA AC 82            [24] 3894 	mov	r4,dpl
      0024CC AA 83            [24] 3895 	mov	r2,dph
      0024CE AB F0            [24] 3896 	mov	r3,b
      0024D0 FF               [12] 3897 	mov	r7,a
      0024D1 D0 05            [24] 3898 	pop	ar5
      0024D3 D0 06            [24] 3899 	pop	ar6
      0024D5 85 27 82         [24] 3900 	mov	dpl,_pollHIDdevice_sloc0_1_0
      0024D8 85 28 83         [24] 3901 	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
      0024DB 85 29 F0         [24] 3902 	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
      0024DE EC               [12] 3903 	mov	a,r4
      0024DF 12 34 7E         [24] 3904 	lcall	__gptrput
      0024E2 A3               [24] 3905 	inc	dptr
      0024E3 EA               [12] 3906 	mov	a,r2
      0024E4 12 34 7E         [24] 3907 	lcall	__gptrput
      0024E7 A3               [24] 3908 	inc	dptr
      0024E8 EB               [12] 3909 	mov	a,r3
      0024E9 12 34 7E         [24] 3910 	lcall	__gptrput
      0024EC A3               [24] 3911 	inc	dptr
      0024ED EF               [12] 3912 	mov	a,r7
      0024EE 12 34 7E         [24] 3913 	lcall	__gptrput
                                   3914 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0024F1 D0 07            [24] 3915 	pop	ar7
                                   3916 ;	USBHost.c:635: map->x_bit_size, 1);
      0024F3                       3917 00110$:
                                   3918 ;	USBHost.c:638: if (map->y_bit_size > 0) {
      0024F3 74 11            [12] 3919 	mov	a,#0x11
      0024F5 2D               [12] 3920 	add	a,r5
      0024F6 F5 82            [12] 3921 	mov	dpl,a
      0024F8 E4               [12] 3922 	clr	a
      0024F9 3E               [12] 3923 	addc	a,r6
      0024FA F5 83            [12] 3924 	mov	dph,a
      0024FC E0               [24] 3925 	movx	a,@dptr
      0024FD FC               [12] 3926 	mov	r4,a
      0024FE 60 71            [24] 3927 	jz	00112$
                                   3928 ;	USBHost.c:639: *dy = extract_field(report, map->y_bit_offset,
      002500 C0 07            [24] 3929 	push	ar7
      002502 90 0B 5A         [24] 3930 	mov	dptr,#_pollHIDdevice_PARM_3
      002505 E0               [24] 3931 	movx	a,@dptr
      002506 F5 27            [12] 3932 	mov	_pollHIDdevice_sloc0_1_0,a
      002508 A3               [24] 3933 	inc	dptr
      002509 E0               [24] 3934 	movx	a,@dptr
      00250A F5 28            [12] 3935 	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
      00250C A3               [24] 3936 	inc	dptr
      00250D E0               [24] 3937 	movx	a,@dptr
      00250E F5 29            [12] 3938 	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
      002510 90 0B 64         [24] 3939 	mov	dptr,#_pollHIDdevice_report_65536_156
      002513 E0               [24] 3940 	movx	a,@dptr
      002514 F8               [12] 3941 	mov	r0,a
      002515 A3               [24] 3942 	inc	dptr
      002516 E0               [24] 3943 	movx	a,@dptr
      002517 FB               [12] 3944 	mov	r3,a
      002518 7F 00            [12] 3945 	mov	r7,#0x00
      00251A 74 0F            [12] 3946 	mov	a,#0x0f
      00251C 2D               [12] 3947 	add	a,r5
      00251D F5 82            [12] 3948 	mov	dpl,a
      00251F E4               [12] 3949 	clr	a
      002520 3E               [12] 3950 	addc	a,r6
      002521 F5 83            [12] 3951 	mov	dph,a
      002523 E0               [24] 3952 	movx	a,@dptr
      002524 F9               [12] 3953 	mov	r1,a
      002525 A3               [24] 3954 	inc	dptr
      002526 E0               [24] 3955 	movx	a,@dptr
      002527 FA               [12] 3956 	mov	r2,a
                                   3957 ;	USBHost.c:640: map->y_bit_size, 1);
      002528 90 0B 1E         [24] 3958 	mov	dptr,#_extract_field_PARM_2
      00252B E9               [12] 3959 	mov	a,r1
      00252C F0               [24] 3960 	movx	@dptr,a
      00252D EA               [12] 3961 	mov	a,r2
      00252E A3               [24] 3962 	inc	dptr
      00252F F0               [24] 3963 	movx	@dptr,a
      002530 90 0B 20         [24] 3964 	mov	dptr,#_extract_field_PARM_3
      002533 EC               [12] 3965 	mov	a,r4
      002534 F0               [24] 3966 	movx	@dptr,a
      002535 90 0B 21         [24] 3967 	mov	dptr,#_extract_field_PARM_4
      002538 74 01            [12] 3968 	mov	a,#0x01
      00253A F0               [24] 3969 	movx	@dptr,a
      00253B 88 82            [24] 3970 	mov	dpl,r0
      00253D 8B 83            [24] 3971 	mov	dph,r3
      00253F 8F F0            [24] 3972 	mov	b,r7
      002541 C0 06            [24] 3973 	push	ar6
      002543 C0 05            [24] 3974 	push	ar5
      002545 12 16 7D         [24] 3975 	lcall	_extract_field
      002548 AC 82            [24] 3976 	mov	r4,dpl
      00254A AA 83            [24] 3977 	mov	r2,dph
      00254C AB F0            [24] 3978 	mov	r3,b
      00254E FF               [12] 3979 	mov	r7,a
      00254F D0 05            [24] 3980 	pop	ar5
      002551 D0 06            [24] 3981 	pop	ar6
      002553 85 27 82         [24] 3982 	mov	dpl,_pollHIDdevice_sloc0_1_0
      002556 85 28 83         [24] 3983 	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
      002559 85 29 F0         [24] 3984 	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
      00255C EC               [12] 3985 	mov	a,r4
      00255D 12 34 7E         [24] 3986 	lcall	__gptrput
      002560 A3               [24] 3987 	inc	dptr
      002561 EA               [12] 3988 	mov	a,r2
      002562 12 34 7E         [24] 3989 	lcall	__gptrput
      002565 A3               [24] 3990 	inc	dptr
      002566 EB               [12] 3991 	mov	a,r3
      002567 12 34 7E         [24] 3992 	lcall	__gptrput
      00256A A3               [24] 3993 	inc	dptr
      00256B EF               [12] 3994 	mov	a,r7
      00256C 12 34 7E         [24] 3995 	lcall	__gptrput
                                   3996 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      00256F D0 07            [24] 3997 	pop	ar7
                                   3998 ;	USBHost.c:640: map->y_bit_size, 1);
      002571                       3999 00112$:
                                   4000 ;	USBHost.c:643: if (map->wheel_bit_size > 0) {
      002571 74 14            [12] 4001 	mov	a,#0x14
      002573 2D               [12] 4002 	add	a,r5
      002574 F5 82            [12] 4003 	mov	dpl,a
      002576 E4               [12] 4004 	clr	a
      002577 3E               [12] 4005 	addc	a,r6
      002578 F5 83            [12] 4006 	mov	dph,a
      00257A E0               [24] 4007 	movx	a,@dptr
      00257B FC               [12] 4008 	mov	r4,a
      00257C 60 69            [24] 4009 	jz	00124$
                                   4010 ;	USBHost.c:644: *dwheel = extract_field(report, map->wheel_bit_offset,
      00257E C0 07            [24] 4011 	push	ar7
      002580 90 0B 5D         [24] 4012 	mov	dptr,#_pollHIDdevice_PARM_4
      002583 E0               [24] 4013 	movx	a,@dptr
      002584 F5 27            [12] 4014 	mov	_pollHIDdevice_sloc0_1_0,a
      002586 A3               [24] 4015 	inc	dptr
      002587 E0               [24] 4016 	movx	a,@dptr
      002588 F5 28            [12] 4017 	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
      00258A A3               [24] 4018 	inc	dptr
      00258B E0               [24] 4019 	movx	a,@dptr
      00258C F5 29            [12] 4020 	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
      00258E 90 0B 64         [24] 4021 	mov	dptr,#_pollHIDdevice_report_65536_156
      002591 E0               [24] 4022 	movx	a,@dptr
      002592 F8               [12] 4023 	mov	r0,a
      002593 A3               [24] 4024 	inc	dptr
      002594 E0               [24] 4025 	movx	a,@dptr
      002595 FB               [12] 4026 	mov	r3,a
      002596 7F 00            [12] 4027 	mov	r7,#0x00
      002598 74 12            [12] 4028 	mov	a,#0x12
      00259A 2D               [12] 4029 	add	a,r5
      00259B F5 82            [12] 4030 	mov	dpl,a
      00259D E4               [12] 4031 	clr	a
      00259E 3E               [12] 4032 	addc	a,r6
      00259F F5 83            [12] 4033 	mov	dph,a
      0025A1 E0               [24] 4034 	movx	a,@dptr
      0025A2 FD               [12] 4035 	mov	r5,a
      0025A3 A3               [24] 4036 	inc	dptr
      0025A4 E0               [24] 4037 	movx	a,@dptr
      0025A5 FE               [12] 4038 	mov	r6,a
                                   4039 ;	USBHost.c:645: map->wheel_bit_size, 1);
      0025A6 90 0B 1E         [24] 4040 	mov	dptr,#_extract_field_PARM_2
      0025A9 ED               [12] 4041 	mov	a,r5
      0025AA F0               [24] 4042 	movx	@dptr,a
      0025AB EE               [12] 4043 	mov	a,r6
      0025AC A3               [24] 4044 	inc	dptr
      0025AD F0               [24] 4045 	movx	@dptr,a
      0025AE 90 0B 20         [24] 4046 	mov	dptr,#_extract_field_PARM_3
      0025B1 EC               [12] 4047 	mov	a,r4
      0025B2 F0               [24] 4048 	movx	@dptr,a
      0025B3 90 0B 21         [24] 4049 	mov	dptr,#_extract_field_PARM_4
      0025B6 74 01            [12] 4050 	mov	a,#0x01
      0025B8 F0               [24] 4051 	movx	@dptr,a
      0025B9 88 82            [24] 4052 	mov	dpl,r0
      0025BB 8B 83            [24] 4053 	mov	dph,r3
      0025BD 8F F0            [24] 4054 	mov	b,r7
      0025BF 12 16 7D         [24] 4055 	lcall	_extract_field
      0025C2 AC 82            [24] 4056 	mov	r4,dpl
      0025C4 AD 83            [24] 4057 	mov	r5,dph
      0025C6 AE F0            [24] 4058 	mov	r6,b
      0025C8 FF               [12] 4059 	mov	r7,a
      0025C9 85 27 82         [24] 4060 	mov	dpl,_pollHIDdevice_sloc0_1_0
      0025CC 85 28 83         [24] 4061 	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
      0025CF 85 29 F0         [24] 4062 	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
      0025D2 EC               [12] 4063 	mov	a,r4
      0025D3 12 34 7E         [24] 4064 	lcall	__gptrput
      0025D6 A3               [24] 4065 	inc	dptr
      0025D7 ED               [12] 4066 	mov	a,r5
      0025D8 12 34 7E         [24] 4067 	lcall	__gptrput
      0025DB A3               [24] 4068 	inc	dptr
      0025DC EE               [12] 4069 	mov	a,r6
      0025DD 12 34 7E         [24] 4070 	lcall	__gptrput
      0025E0 A3               [24] 4071 	inc	dptr
      0025E1 EF               [12] 4072 	mov	a,r7
      0025E2 12 34 7E         [24] 4073 	lcall	__gptrput
                                   4074 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0025E5 D0 07            [24] 4075 	pop	ar7
                                   4076 ;	USBHost.c:648: DEBUG_OUT("Mouse id:%d: butt=0x%lX, dx=%ld, dy=%ld, dwheel=%ld\n",
      0025E7                       4077 00124$:
                                   4078 ;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0025E7 0F               [12] 4079 	inc	r7
      0025E8 BF 08 00         [24] 4080 	cjne	r7,#0x08,00202$
      0025EB                       4081 00202$:
      0025EB 50 03            [24] 4082 	jnc	00203$
      0025ED 02 22 AA         [24] 4083 	ljmp	00123$
      0025F0                       4084 00203$:
                                   4085 ;	USBHost.c:654: }
      0025F0 22               [24] 4086 	ret
                                   4087 ;------------------------------------------------------------
                                   4088 ;Allocation info for local variables in function 'parseHIDDeviceReport'
                                   4089 ;------------------------------------------------------------
                                   4090 ;sloc0                     Allocated with name '_parseHIDDeviceReport_sloc0_1_0'
                                   4091 ;sloc1                     Allocated with name '_parseHIDDeviceReport_sloc1_1_0'
                                   4092 ;sloc2                     Allocated with name '_parseHIDDeviceReport_sloc2_1_0'
                                   4093 ;sloc3                     Allocated with name '_parseHIDDeviceReport_sloc3_1_0'
                                   4094 ;sloc4                     Allocated with name '_parseHIDDeviceReport_sloc4_1_0'
                                   4095 ;sloc5                     Allocated with name '_parseHIDDeviceReport_sloc5_1_0'
                                   4096 ;sloc6                     Allocated with name '_parseHIDDeviceReport_sloc6_1_0'
                                   4097 ;sloc7                     Allocated with name '_parseHIDDeviceReport_sloc7_1_0'
                                   4098 ;sloc8                     Allocated with name '_parseHIDDeviceReport_sloc8_1_0'
                                   4099 ;sloc9                     Allocated with name '_parseHIDDeviceReport_sloc9_1_0'
                                   4100 ;sloc10                    Allocated with name '_parseHIDDeviceReport_sloc10_1_0'
                                   4101 ;length                    Allocated with name '_parseHIDDeviceReport_PARM_2'
                                   4102 ;CurrentDevice             Allocated with name '_parseHIDDeviceReport_PARM_3'
                                   4103 ;report                    Allocated with name '_parseHIDDeviceReport_report_65536_169'
                                   4104 ;i                         Allocated with name '_parseHIDDeviceReport_i_65536_170'
                                   4105 ;j                         Allocated with name '_parseHIDDeviceReport_j_65536_170'
                                   4106 ;level                     Allocated with name '_parseHIDDeviceReport_level_65536_170'
                                   4107 ;isUsageSet                Allocated with name '_parseHIDDeviceReport_isUsageSet_65536_170'
                                   4108 ;tag                       Allocated with name '_parseHIDDeviceReport_tag_65536_170'
                                   4109 ;tag_size                  Allocated with name '_parseHIDDeviceReport_tag_size_65536_170'
                                   4110 ;data                      Allocated with name '_parseHIDDeviceReport_data_65536_170'
                                   4111 ;usage_page                Allocated with name '_parseHIDDeviceReport_usage_page_65536_170'
                                   4112 ;usageX                    Allocated with name '_parseHIDDeviceReport_usageX_65536_170'
                                   4113 ;usageY                    Allocated with name '_parseHIDDeviceReport_usageY_65536_170'
                                   4114 ;usageW                    Allocated with name '_parseHIDDeviceReport_usageW_65536_170'
                                   4115 ;logical_min               Allocated with name '_parseHIDDeviceReport_logical_min_65536_170'
                                   4116 ;logical_max               Allocated with name '_parseHIDDeviceReport_logical_max_65536_170'
                                   4117 ;report_size               Allocated with name '_parseHIDDeviceReport_report_size_65536_170'
                                   4118 ;report_count              Allocated with name '_parseHIDDeviceReport_report_count_65536_170'
                                   4119 ;current_bit_offset        Allocated with name '_parseHIDDeviceReport_current_bit_offset_65536_170'
                                   4120 ;used_reports              Allocated with name '_parseHIDDeviceReport_used_reports_65536_170'
                                   4121 ;map                       Allocated with name '_parseHIDDeviceReport_map_65536_170'
                                   4122 ;------------------------------------------------------------
                                   4123 ;	USBHost.c:656: static void parseHIDDeviceReport(uint8_t __xdata *report, uint16_t length, uint8_t CurrentDevice)
                                   4124 ;	-----------------------------------------
                                   4125 ;	 function parseHIDDeviceReport
                                   4126 ;	-----------------------------------------
      0025F1                       4127 _parseHIDDeviceReport:
      0025F1 AF 83            [24] 4128 	mov	r7,dph
      0025F3 E5 82            [12] 4129 	mov	a,dpl
      0025F5 90 0B 69         [24] 4130 	mov	dptr,#_parseHIDDeviceReport_report_65536_169
      0025F8 F0               [24] 4131 	movx	@dptr,a
      0025F9 EF               [12] 4132 	mov	a,r7
      0025FA A3               [24] 4133 	inc	dptr
      0025FB F0               [24] 4134 	movx	@dptr,a
                                   4135 ;	USBHost.c:658: __xdata uint16_t i = 0;
      0025FC 90 0B 6B         [24] 4136 	mov	dptr,#_parseHIDDeviceReport_i_65536_170
      0025FF E4               [12] 4137 	clr	a
      002600 F0               [24] 4138 	movx	@dptr,a
      002601 A3               [24] 4139 	inc	dptr
      002602 F0               [24] 4140 	movx	@dptr,a
                                   4141 ;	USBHost.c:660: __xdata uint8_t level = 0;
      002603 90 0B 6D         [24] 4142 	mov	dptr,#_parseHIDDeviceReport_level_65536_170
      002606 F0               [24] 4143 	movx	@dptr,a
                                   4144 ;	USBHost.c:661: __xdata uint8_t isUsageSet = 0;
      002607 90 0B 6E         [24] 4145 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
      00260A F0               [24] 4146 	movx	@dptr,a
                                   4147 ;	USBHost.c:666: __xdata uint32_t usage_page = 0;
      00260B 90 0B 75         [24] 4148 	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
      00260E F0               [24] 4149 	movx	@dptr,a
      00260F A3               [24] 4150 	inc	dptr
      002610 F0               [24] 4151 	movx	@dptr,a
      002611 A3               [24] 4152 	inc	dptr
      002612 F0               [24] 4153 	movx	@dptr,a
      002613 A3               [24] 4154 	inc	dptr
      002614 F0               [24] 4155 	movx	@dptr,a
                                   4156 ;	USBHost.c:667: __xdata uint32_t usageX = 0;
      002615 90 0B 79         [24] 4157 	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
      002618 F0               [24] 4158 	movx	@dptr,a
      002619 A3               [24] 4159 	inc	dptr
      00261A F0               [24] 4160 	movx	@dptr,a
      00261B A3               [24] 4161 	inc	dptr
      00261C F0               [24] 4162 	movx	@dptr,a
      00261D A3               [24] 4163 	inc	dptr
      00261E F0               [24] 4164 	movx	@dptr,a
                                   4165 ;	USBHost.c:668: __xdata uint32_t usageY = 0;
      00261F 90 0B 7D         [24] 4166 	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
      002622 F0               [24] 4167 	movx	@dptr,a
      002623 A3               [24] 4168 	inc	dptr
      002624 F0               [24] 4169 	movx	@dptr,a
      002625 A3               [24] 4170 	inc	dptr
      002626 F0               [24] 4171 	movx	@dptr,a
      002627 A3               [24] 4172 	inc	dptr
      002628 F0               [24] 4173 	movx	@dptr,a
                                   4174 ;	USBHost.c:669: __xdata uint32_t usageW = 0;
      002629 90 0B 81         [24] 4175 	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
      00262C F0               [24] 4176 	movx	@dptr,a
      00262D A3               [24] 4177 	inc	dptr
      00262E F0               [24] 4178 	movx	@dptr,a
      00262F A3               [24] 4179 	inc	dptr
      002630 F0               [24] 4180 	movx	@dptr,a
      002631 A3               [24] 4181 	inc	dptr
      002632 F0               [24] 4182 	movx	@dptr,a
                                   4183 ;	USBHost.c:672: __xdata uint8_t report_size = 0;
      002633 90 0B 85         [24] 4184 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002636 F0               [24] 4185 	movx	@dptr,a
                                   4186 ;	USBHost.c:673: __xdata uint8_t report_count = 0;
      002637 90 0B 86         [24] 4187 	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
      00263A F0               [24] 4188 	movx	@dptr,a
                                   4189 ;	USBHost.c:674: __xdata uint16_t current_bit_offset = 0;
      00263B 90 0B 87         [24] 4190 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      00263E F0               [24] 4191 	movx	@dptr,a
      00263F A3               [24] 4192 	inc	dptr
      002640 F0               [24] 4193 	movx	@dptr,a
                                   4194 ;	USBHost.c:677: MouseReportMap *map = &HIDdevice[CurrentDevice].mouse_map;
      002641 90 0B 68         [24] 4195 	mov	dptr,#_parseHIDDeviceReport_PARM_3
      002644 E0               [24] 4196 	movx	a,@dptr
      002645 75 F0 16         [24] 4197 	mov	b,#0x16
      002648 A4               [48] 4198 	mul	ab
      002649 24 48            [12] 4199 	add	a,#_HIDdevice
      00264B FE               [12] 4200 	mov	r6,a
      00264C 74 0A            [12] 4201 	mov	a,#(_HIDdevice >> 8)
      00264E 35 F0            [12] 4202 	addc	a,b
      002650 FF               [12] 4203 	mov	r7,a
      002651 74 08            [12] 4204 	mov	a,#0x08
      002653 2E               [12] 4205 	add	a,r6
      002654 FC               [12] 4206 	mov	r4,a
      002655 E4               [12] 4207 	clr	a
      002656 3F               [12] 4208 	addc	a,r7
      002657 FB               [12] 4209 	mov	r3,a
      002658 7D 00            [12] 4210 	mov	r5,#0x00
                                   4211 ;	USBHost.c:678: memset(map, 0, sizeof(MouseReportMap));
      00265A 8C 00            [24] 4212 	mov	ar0,r4
      00265C 8B 01            [24] 4213 	mov	ar1,r3
      00265E 8D 02            [24] 4214 	mov	ar2,r5
      002660 90 0D A7         [24] 4215 	mov	dptr,#_memset_PARM_2
      002663 E4               [12] 4216 	clr	a
      002664 F0               [24] 4217 	movx	@dptr,a
      002665 90 0D A8         [24] 4218 	mov	dptr,#_memset_PARM_3
      002668 74 0E            [12] 4219 	mov	a,#0x0e
      00266A F0               [24] 4220 	movx	@dptr,a
      00266B E4               [12] 4221 	clr	a
      00266C A3               [24] 4222 	inc	dptr
      00266D F0               [24] 4223 	movx	@dptr,a
      00266E 88 82            [24] 4224 	mov	dpl,r0
      002670 89 83            [24] 4225 	mov	dph,r1
      002672 8A F0            [24] 4226 	mov	b,r2
      002674 C0 07            [24] 4227 	push	ar7
      002676 C0 06            [24] 4228 	push	ar6
      002678 C0 05            [24] 4229 	push	ar5
      00267A C0 04            [24] 4230 	push	ar4
      00267C C0 03            [24] 4231 	push	ar3
      00267E 12 34 56         [24] 4232 	lcall	_memset
      002681 D0 03            [24] 4233 	pop	ar3
      002683 D0 04            [24] 4234 	pop	ar4
      002685 D0 05            [24] 4235 	pop	ar5
      002687 D0 06            [24] 4236 	pop	ar6
      002689 D0 07            [24] 4237 	pop	ar7
                                   4238 ;	USBHost.c:682: while (i < length) {
      00268B 90 0B 69         [24] 4239 	mov	dptr,#_parseHIDDeviceReport_report_65536_169
      00268E E0               [24] 4240 	movx	a,@dptr
      00268F F5 3F            [12] 4241 	mov	_parseHIDDeviceReport_sloc10_1_0,a
      002691 A3               [24] 4242 	inc	dptr
      002692 E0               [24] 4243 	movx	a,@dptr
      002693 F5 40            [12] 4244 	mov	(_parseHIDDeviceReport_sloc10_1_0 + 1),a
      002695 85 3F 2A         [24] 4245 	mov	_parseHIDDeviceReport_sloc0_1_0,_parseHIDDeviceReport_sloc10_1_0
      002698 85 40 2B         [24] 4246 	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),(_parseHIDDeviceReport_sloc10_1_0 + 1)
      00269B 74 04            [12] 4247 	mov	a,#0x04
      00269D 2E               [12] 4248 	add	a,r6
      00269E F5 33            [12] 4249 	mov	_parseHIDDeviceReport_sloc5_1_0,a
      0026A0 E4               [12] 4250 	clr	a
      0026A1 3F               [12] 4251 	addc	a,r7
      0026A2 F5 34            [12] 4252 	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),a
      0026A4 90 0B 66         [24] 4253 	mov	dptr,#_parseHIDDeviceReport_PARM_2
      0026A7 E0               [24] 4254 	movx	a,@dptr
      0026A8 F5 2C            [12] 4255 	mov	_parseHIDDeviceReport_sloc1_1_0,a
      0026AA A3               [24] 4256 	inc	dptr
      0026AB E0               [24] 4257 	movx	a,@dptr
      0026AC F5 2D            [12] 4258 	mov	(_parseHIDDeviceReport_sloc1_1_0 + 1),a
      0026AE                       4259 00175$:
      0026AE 90 0B 6B         [24] 4260 	mov	dptr,#_parseHIDDeviceReport_i_65536_170
      0026B1 E0               [24] 4261 	movx	a,@dptr
      0026B2 F5 2E            [12] 4262 	mov	_parseHIDDeviceReport_sloc2_1_0,a
      0026B4 A3               [24] 4263 	inc	dptr
      0026B5 E0               [24] 4264 	movx	a,@dptr
      0026B6 F5 2F            [12] 4265 	mov	(_parseHIDDeviceReport_sloc2_1_0 + 1),a
      0026B8 C3               [12] 4266 	clr	c
      0026B9 E5 2E            [12] 4267 	mov	a,_parseHIDDeviceReport_sloc2_1_0
      0026BB 95 2C            [12] 4268 	subb	a,_parseHIDDeviceReport_sloc1_1_0
      0026BD E5 2F            [12] 4269 	mov	a,(_parseHIDDeviceReport_sloc2_1_0 + 1)
      0026BF 95 2D            [12] 4270 	subb	a,(_parseHIDDeviceReport_sloc1_1_0 + 1)
      0026C1 40 03            [24] 4271 	jc	00361$
      0026C3 02 2D 3B         [24] 4272 	ljmp	00177$
      0026C6                       4273 00361$:
                                   4274 ;	USBHost.c:683: tag = report[i] & 0b11111100;
      0026C6 E5 2E            [12] 4275 	mov	a,_parseHIDDeviceReport_sloc2_1_0
      0026C8 25 3F            [12] 4276 	add	a,_parseHIDDeviceReport_sloc10_1_0
      0026CA F5 82            [12] 4277 	mov	dpl,a
      0026CC E5 2F            [12] 4278 	mov	a,(_parseHIDDeviceReport_sloc2_1_0 + 1)
      0026CE 35 40            [12] 4279 	addc	a,(_parseHIDDeviceReport_sloc10_1_0 + 1)
      0026D0 F5 83            [12] 4280 	mov	dph,a
      0026D2 E0               [24] 4281 	movx	a,@dptr
      0026D3 F8               [12] 4282 	mov	r0,a
      0026D4 90 0B 6F         [24] 4283 	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
      0026D7 74 FC            [12] 4284 	mov	a,#0xfc
      0026D9 58               [12] 4285 	anl	a,r0
      0026DA F0               [24] 4286 	movx	@dptr,a
                                   4287 ;	USBHost.c:684: tag_size = report[i] & 0b00000011;
      0026DB 53 00 03         [24] 4288 	anl	ar0,#0x03
      0026DE 90 0B 70         [24] 4289 	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
      0026E1 E8               [12] 4290 	mov	a,r0
      0026E2 F0               [24] 4291 	movx	@dptr,a
                                   4292 ;	USBHost.c:685: data = 0;
      0026E3 90 0B 71         [24] 4293 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      0026E6 E4               [12] 4294 	clr	a
      0026E7 F0               [24] 4295 	movx	@dptr,a
      0026E8 A3               [24] 4296 	inc	dptr
      0026E9 F0               [24] 4297 	movx	@dptr,a
      0026EA A3               [24] 4298 	inc	dptr
      0026EB F0               [24] 4299 	movx	@dptr,a
      0026EC A3               [24] 4300 	inc	dptr
      0026ED F0               [24] 4301 	movx	@dptr,a
                                   4302 ;	USBHost.c:687: if (tag_size == 3) {
      0026EE B8 03 06         [24] 4303 	cjne	r0,#0x03,00194$
                                   4304 ;	USBHost.c:688: tag_size = 4;
      0026F1 90 0B 70         [24] 4305 	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
      0026F4 74 04            [12] 4306 	mov	a,#0x04
      0026F6 F0               [24] 4307 	movx	@dptr,a
                                   4308 ;	USBHost.c:691: for (j = 0; j < tag_size; j++) {
      0026F7                       4309 00194$:
      0026F7 90 0B 6B         [24] 4310 	mov	dptr,#_parseHIDDeviceReport_i_65536_170
      0026FA E0               [24] 4311 	movx	a,@dptr
      0026FB F5 2E            [12] 4312 	mov	_parseHIDDeviceReport_sloc2_1_0,a
      0026FD A3               [24] 4313 	inc	dptr
      0026FE E0               [24] 4314 	movx	a,@dptr
      0026FF F5 2F            [12] 4315 	mov	(_parseHIDDeviceReport_sloc2_1_0 + 1),a
      002701 90 0B 70         [24] 4316 	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
      002704 E0               [24] 4317 	movx	a,@dptr
      002705 F5 37            [12] 4318 	mov	_parseHIDDeviceReport_sloc7_1_0,a
      002707 75 30 00         [24] 4319 	mov	_parseHIDDeviceReport_sloc3_1_0,#0x00
      00270A                       4320 00181$:
      00270A C3               [12] 4321 	clr	c
      00270B E5 30            [12] 4322 	mov	a,_parseHIDDeviceReport_sloc3_1_0
      00270D 95 37            [12] 4323 	subb	a,_parseHIDDeviceReport_sloc7_1_0
      00270F 50 7C            [24] 4324 	jnc	00105$
                                   4325 ;	USBHost.c:692: if (i + 1 + j < length) {
      002711 85 2E 31         [24] 4326 	mov	_parseHIDDeviceReport_sloc4_1_0,_parseHIDDeviceReport_sloc2_1_0
      002714 85 2F 32         [24] 4327 	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),(_parseHIDDeviceReport_sloc2_1_0 + 1)
      002717 74 01            [12] 4328 	mov	a,#0x01
      002719 25 31            [12] 4329 	add	a,_parseHIDDeviceReport_sloc4_1_0
      00271B F9               [12] 4330 	mov	r1,a
      00271C E4               [12] 4331 	clr	a
      00271D 35 32            [12] 4332 	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
      00271F FA               [12] 4333 	mov	r2,a
      002720 AE 30            [24] 4334 	mov	r6,_parseHIDDeviceReport_sloc3_1_0
      002722 7F 00            [12] 4335 	mov	r7,#0x00
      002724 8E 35            [24] 4336 	mov	_parseHIDDeviceReport_sloc6_1_0,r6
      002726 8F 36            [24] 4337 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),r7
      002728 E5 35            [12] 4338 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      00272A 29               [12] 4339 	add	a,r1
      00272B F9               [12] 4340 	mov	r1,a
      00272C E5 36            [12] 4341 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      00272E 3A               [12] 4342 	addc	a,r2
      00272F FA               [12] 4343 	mov	r2,a
      002730 C3               [12] 4344 	clr	c
      002731 E9               [12] 4345 	mov	a,r1
      002732 95 2C            [12] 4346 	subb	a,_parseHIDDeviceReport_sloc1_1_0
      002734 EA               [12] 4347 	mov	a,r2
      002735 95 2D            [12] 4348 	subb	a,(_parseHIDDeviceReport_sloc1_1_0 + 1)
      002737 50 4F            [24] 4349 	jnc	00182$
                                   4350 ;	USBHost.c:693: data |= ((uint32_t)(report[i + 1 + j])) << (j << 3);
      002739 74 01            [12] 4351 	mov	a,#0x01
      00273B 25 31            [12] 4352 	add	a,_parseHIDDeviceReport_sloc4_1_0
      00273D FE               [12] 4353 	mov	r6,a
      00273E E4               [12] 4354 	clr	a
      00273F 35 32            [12] 4355 	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
      002741 FF               [12] 4356 	mov	r7,a
      002742 E5 35            [12] 4357 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      002744 2E               [12] 4358 	add	a,r6
      002745 FE               [12] 4359 	mov	r6,a
      002746 E5 36            [12] 4360 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      002748 3F               [12] 4361 	addc	a,r7
      002749 FF               [12] 4362 	mov	r7,a
      00274A EE               [12] 4363 	mov	a,r6
      00274B 25 2A            [12] 4364 	add	a,_parseHIDDeviceReport_sloc0_1_0
      00274D F5 82            [12] 4365 	mov	dpl,a
      00274F EF               [12] 4366 	mov	a,r7
      002750 35 2B            [12] 4367 	addc	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
      002752 F5 83            [12] 4368 	mov	dph,a
      002754 E0               [24] 4369 	movx	a,@dptr
      002755 F9               [12] 4370 	mov	r1,a
      002756 E4               [12] 4371 	clr	a
      002757 FA               [12] 4372 	mov	r2,a
      002758 FE               [12] 4373 	mov	r6,a
      002759 FF               [12] 4374 	mov	r7,a
      00275A E5 30            [12] 4375 	mov	a,_parseHIDDeviceReport_sloc3_1_0
      00275C C4               [12] 4376 	swap	a
      00275D 03               [12] 4377 	rr	a
      00275E 54 F8            [12] 4378 	anl	a,#0xf8
      002760 F8               [12] 4379 	mov	r0,a
      002761 88 F0            [24] 4380 	mov	b,r0
      002763 05 F0            [12] 4381 	inc	b
      002765 80 0C            [24] 4382 	sjmp	00367$
      002767                       4383 00366$:
      002767 E9               [12] 4384 	mov	a,r1
      002768 29               [12] 4385 	add	a,r1
      002769 F9               [12] 4386 	mov	r1,a
      00276A EA               [12] 4387 	mov	a,r2
      00276B 33               [12] 4388 	rlc	a
      00276C FA               [12] 4389 	mov	r2,a
      00276D EE               [12] 4390 	mov	a,r6
      00276E 33               [12] 4391 	rlc	a
      00276F FE               [12] 4392 	mov	r6,a
      002770 EF               [12] 4393 	mov	a,r7
      002771 33               [12] 4394 	rlc	a
      002772 FF               [12] 4395 	mov	r7,a
      002773                       4396 00367$:
      002773 D5 F0 F1         [24] 4397 	djnz	b,00366$
      002776 90 0B 71         [24] 4398 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      002779 E0               [24] 4399 	movx	a,@dptr
      00277A 49               [12] 4400 	orl	a,r1
      00277B F0               [24] 4401 	movx	@dptr,a
      00277C A3               [24] 4402 	inc	dptr
      00277D E0               [24] 4403 	movx	a,@dptr
      00277E 4A               [12] 4404 	orl	a,r2
      00277F F0               [24] 4405 	movx	@dptr,a
      002780 A3               [24] 4406 	inc	dptr
      002781 E0               [24] 4407 	movx	a,@dptr
      002782 4E               [12] 4408 	orl	a,r6
      002783 F0               [24] 4409 	movx	@dptr,a
      002784 A3               [24] 4410 	inc	dptr
      002785 E0               [24] 4411 	movx	a,@dptr
      002786 4F               [12] 4412 	orl	a,r7
      002787 F0               [24] 4413 	movx	@dptr,a
                                   4414 ;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
                                   4415 ;	USBHost.c:693: data |= ((uint32_t)(report[i + 1 + j])) << (j << 3);
      002788                       4416 00182$:
                                   4417 ;	USBHost.c:691: for (j = 0; j < tag_size; j++) {
      002788 05 30            [12] 4418 	inc	_parseHIDDeviceReport_sloc3_1_0
      00278A 02 27 0A         [24] 4419 	ljmp	00181$
      00278D                       4420 00105$:
                                   4421 ;	USBHost.c:697: for (j = 0; j < level - (tag == REPORT_COLLECTION_END ? 1 : 0); j++) {
      00278D 90 0B 6D         [24] 4422 	mov	dptr,#_parseHIDDeviceReport_level_65536_170
      002790 E0               [24] 4423 	movx	a,@dptr
      002791 F5 30            [12] 4424 	mov	_parseHIDDeviceReport_sloc3_1_0,a
      002793 90 0B 6F         [24] 4425 	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
      002796 E0               [24] 4426 	movx	a,@dptr
      002797 FE               [12] 4427 	mov	r6,a
      002798 E4               [12] 4428 	clr	a
      002799 BE C0 01         [24] 4429 	cjne	r6,#0xc0,00368$
      00279C 04               [12] 4430 	inc	a
      00279D                       4431 00368$:
      00279D F5 37            [12] 4432 	mov	_parseHIDDeviceReport_sloc7_1_0,a
      00279F 78 00            [12] 4433 	mov	r0,#0x00
      0027A1                       4434 00184$:
      0027A1 85 30 35         [24] 4435 	mov	_parseHIDDeviceReport_sloc6_1_0,_parseHIDDeviceReport_sloc3_1_0
      0027A4 75 36 00         [24] 4436 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),#0x00
      0027A7 E5 37            [12] 4437 	mov	a,_parseHIDDeviceReport_sloc7_1_0
      0027A9 60 08            [24] 4438 	jz	00188$
      0027AB 75 31 01         [24] 4439 	mov	_parseHIDDeviceReport_sloc4_1_0,#0x01
      0027AE 75 32 00         [24] 4440 	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),#0x00
      0027B1 80 05            [24] 4441 	sjmp	00189$
      0027B3                       4442 00188$:
      0027B3 E4               [12] 4443 	clr	a
      0027B4 F5 31            [12] 4444 	mov	_parseHIDDeviceReport_sloc4_1_0,a
      0027B6 F5 32            [12] 4445 	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),a
      0027B8                       4446 00189$:
      0027B8 E5 35            [12] 4447 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      0027BA C3               [12] 4448 	clr	c
      0027BB 95 31            [12] 4449 	subb	a,_parseHIDDeviceReport_sloc4_1_0
      0027BD F9               [12] 4450 	mov	r1,a
      0027BE E5 36            [12] 4451 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      0027C0 95 32            [12] 4452 	subb	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
      0027C2 FA               [12] 4453 	mov	r2,a
      0027C3 88 06            [24] 4454 	mov	ar6,r0
      0027C5 7F 00            [12] 4455 	mov	r7,#0x00
      0027C7 C3               [12] 4456 	clr	c
      0027C8 EE               [12] 4457 	mov	a,r6
      0027C9 99               [12] 4458 	subb	a,r1
      0027CA EF               [12] 4459 	mov	a,r7
      0027CB 64 80            [12] 4460 	xrl	a,#0x80
      0027CD 8A F0            [24] 4461 	mov	b,r2
      0027CF 63 F0 80         [24] 4462 	xrl	b,#0x80
      0027D2 95 F0            [12] 4463 	subb	a,b
      0027D4 50 03            [24] 4464 	jnc	00106$
      0027D6 08               [12] 4465 	inc	r0
      0027D7 80 C8            [24] 4466 	sjmp	00184$
      0027D9                       4467 00106$:
                                   4468 ;	USBHost.c:701: switch (tag) {
      0027D9 90 0B 6F         [24] 4469 	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
      0027DC E0               [24] 4470 	movx	a,@dptr
      0027DD FF               [12] 4471 	mov	r7,a
      0027DE BF 04 02         [24] 4472 	cjne	r7,#0x04,00372$
      0027E1 80 63            [24] 4473 	sjmp	00107$
      0027E3                       4474 00372$:
      0027E3 BF 08 03         [24] 4475 	cjne	r7,#0x08,00373$
      0027E6 02 28 92         [24] 4476 	ljmp	00115$
      0027E9                       4477 00373$:
      0027E9 BF 14 03         [24] 4478 	cjne	r7,#0x14,00374$
      0027EC 02 2D 16         [24] 4479 	ljmp	00174$
      0027EF                       4480 00374$:
      0027EF BF 18 03         [24] 4481 	cjne	r7,#0x18,00375$
      0027F2 02 2D 16         [24] 4482 	ljmp	00174$
      0027F5                       4483 00375$:
      0027F5 BF 24 03         [24] 4484 	cjne	r7,#0x24,00376$
      0027F8 02 2D 16         [24] 4485 	ljmp	00174$
      0027FB                       4486 00376$:
      0027FB BF 28 03         [24] 4487 	cjne	r7,#0x28,00377$
      0027FE 02 2D 16         [24] 4488 	ljmp	00174$
      002801                       4489 00377$:
      002801 BF 34 03         [24] 4490 	cjne	r7,#0x34,00378$
      002804 02 2D 16         [24] 4491 	ljmp	00174$
      002807                       4492 00378$:
      002807 BF 44 03         [24] 4493 	cjne	r7,#0x44,00379$
      00280A 02 2D 16         [24] 4494 	ljmp	00174$
      00280D                       4495 00379$:
      00280D BF 64 03         [24] 4496 	cjne	r7,#0x64,00380$
      002810 02 2D 16         [24] 4497 	ljmp	00174$
      002813                       4498 00380$:
      002813 BF 74 03         [24] 4499 	cjne	r7,#0x74,00381$
      002816 02 2C C9         [24] 4500 	ljmp	00167$
      002819                       4501 00381$:
      002819 BF 80 03         [24] 4502 	cjne	r7,#0x80,00382$
      00281C 02 29 E0         [24] 4503 	ljmp	00147$
      00281F                       4504 00382$:
      00281F BF 84 03         [24] 4505 	cjne	r7,#0x84,00383$
      002822 02 2C DE         [24] 4506 	ljmp	00168$
      002825                       4507 00383$:
      002825 BF 90 03         [24] 4508 	cjne	r7,#0x90,00384$
      002828 02 2D 16         [24] 4509 	ljmp	00174$
      00282B                       4510 00384$:
      00282B BF 94 03         [24] 4511 	cjne	r7,#0x94,00385$
      00282E 02 2D 03         [24] 4512 	ljmp	00172$
      002831                       4513 00385$:
      002831 BF A0 03         [24] 4514 	cjne	r7,#0xa0,00386$
      002834 02 29 CD         [24] 4515 	ljmp	00144$
      002837                       4516 00386$:
      002837 BF B0 03         [24] 4517 	cjne	r7,#0xb0,00387$
      00283A 02 2D 16         [24] 4518 	ljmp	00174$
      00283D                       4519 00387$:
      00283D BF C0 03         [24] 4520 	cjne	r7,#0xc0,00388$
      002840 02 29 D7         [24] 4521 	ljmp	00145$
      002843                       4522 00388$:
      002843 02 2D 16         [24] 4523 	ljmp	00174$
                                   4524 ;	USBHost.c:702: case REPORT_USAGE_PAGE:
      002846                       4525 00107$:
                                   4526 ;	USBHost.c:703: usage_page = data;
      002846 90 0B 71         [24] 4527 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      002849 E0               [24] 4528 	movx	a,@dptr
      00284A F5 38            [12] 4529 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      00284C A3               [24] 4530 	inc	dptr
      00284D E0               [24] 4531 	movx	a,@dptr
      00284E F5 39            [12] 4532 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
      002850 A3               [24] 4533 	inc	dptr
      002851 E0               [24] 4534 	movx	a,@dptr
      002852 F5 3A            [12] 4535 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
      002854 A3               [24] 4536 	inc	dptr
      002855 E0               [24] 4537 	movx	a,@dptr
      002856 F5 3B            [12] 4538 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
      002858 90 0B 75         [24] 4539 	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
      00285B E5 38            [12] 4540 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      00285D F0               [24] 4541 	movx	@dptr,a
      00285E E5 39            [12] 4542 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      002860 A3               [24] 4543 	inc	dptr
      002861 F0               [24] 4544 	movx	@dptr,a
      002862 E5 3A            [12] 4545 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      002864 A3               [24] 4546 	inc	dptr
      002865 F0               [24] 4547 	movx	@dptr,a
      002866 E5 3B            [12] 4548 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      002868 A3               [24] 4549 	inc	dptr
      002869 F0               [24] 4550 	movx	@dptr,a
                                   4551 ;	USBHost.c:705: switch (usage_page) {
      00286A 74 01            [12] 4552 	mov	a,#0x01
      00286C B5 38 0D         [24] 4553 	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00389$
      00286F 14               [12] 4554 	dec	a
      002870 B5 39 09         [24] 4555 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00389$
      002873 B5 3A 06         [24] 4556 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00389$
      002876 B5 3B 03         [24] 4557 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00389$
      002879 02 2D 16         [24] 4558 	ljmp	00174$
      00287C                       4559 00389$:
      00287C 74 07            [12] 4560 	mov	a,#0x07
      00287E B5 38 0D         [24] 4561 	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00390$
      002881 E4               [12] 4562 	clr	a
      002882 B5 39 09         [24] 4563 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00390$
      002885 B5 3A 06         [24] 4564 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00390$
      002888 B5 3B 03         [24] 4565 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00390$
      00288B D3               [12] 4566 	setb	c
      00288C 80 01            [24] 4567 	sjmp	00391$
      00288E                       4568 00390$:
      00288E C3               [12] 4569 	clr	c
      00288F                       4570 00391$:
                                   4571 ;	USBHost.c:725: break;
      00288F 02 2D 16         [24] 4572 	ljmp	00174$
                                   4573 ;	USBHost.c:727: case REPORT_USAGE:
      002892                       4574 00115$:
                                   4575 ;	USBHost.c:728: if (!isUsageSet) {
      002892 90 0B 6E         [24] 4576 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
      002895 E0               [24] 4577 	movx	a,@dptr
      002896 70 4F            [24] 4578 	jnz	00119$
                                   4579 ;	USBHost.c:729: if (data == REPORT_USAGE_MOUSE) {
      002898 90 0B 71         [24] 4580 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      00289B E0               [24] 4581 	movx	a,@dptr
      00289C F5 38            [12] 4582 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      00289E A3               [24] 4583 	inc	dptr
      00289F E0               [24] 4584 	movx	a,@dptr
      0028A0 F5 39            [12] 4585 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
      0028A2 A3               [24] 4586 	inc	dptr
      0028A3 E0               [24] 4587 	movx	a,@dptr
      0028A4 F5 3A            [12] 4588 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
      0028A6 A3               [24] 4589 	inc	dptr
      0028A7 E0               [24] 4590 	movx	a,@dptr
      0028A8 F5 3B            [12] 4591 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
      0028AA 74 02            [12] 4592 	mov	a,#0x02
      0028AC B5 38 0C         [24] 4593 	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00393$
      0028AF E4               [12] 4594 	clr	a
      0028B0 B5 39 08         [24] 4595 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00393$
      0028B3 B5 3A 05         [24] 4596 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00393$
      0028B6 B5 3B 02         [24] 4597 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00393$
      0028B9 80 02            [24] 4598 	sjmp	00394$
      0028BB                       4599 00393$:
      0028BB 80 0F            [24] 4600 	sjmp	00117$
      0028BD                       4601 00394$:
                                   4602 ;	USBHost.c:730: flash_led(); // Подключена мышь.
      0028BD C0 05            [24] 4603 	push	ar5
      0028BF C0 04            [24] 4604 	push	ar4
      0028C1 C0 03            [24] 4605 	push	ar3
      0028C3 12 04 2F         [24] 4606 	lcall	_flash_led
      0028C6 D0 03            [24] 4607 	pop	ar3
      0028C8 D0 04            [24] 4608 	pop	ar4
      0028CA D0 05            [24] 4609 	pop	ar5
      0028CC                       4610 00117$:
                                   4611 ;	USBHost.c:732: HIDdevice[CurrentDevice].type = data;
      0028CC 85 33 82         [24] 4612 	mov	dpl,_parseHIDDeviceReport_sloc5_1_0
      0028CF 85 34 83         [24] 4613 	mov	dph,(_parseHIDDeviceReport_sloc5_1_0 + 1)
      0028D2 E5 38            [12] 4614 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      0028D4 F0               [24] 4615 	movx	@dptr,a
      0028D5 E5 39            [12] 4616 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      0028D7 A3               [24] 4617 	inc	dptr
      0028D8 F0               [24] 4618 	movx	@dptr,a
      0028D9 E5 3A            [12] 4619 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      0028DB A3               [24] 4620 	inc	dptr
      0028DC F0               [24] 4621 	movx	@dptr,a
      0028DD E5 3B            [12] 4622 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      0028DF A3               [24] 4623 	inc	dptr
      0028E0 F0               [24] 4624 	movx	@dptr,a
                                   4625 ;	USBHost.c:733: isUsageSet = 1;
      0028E1 90 0B 6E         [24] 4626 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
      0028E4 74 01            [12] 4627 	mov	a,#0x01
      0028E6 F0               [24] 4628 	movx	@dptr,a
      0028E7                       4629 00119$:
                                   4630 ;	USBHost.c:736: switch (data) {
      0028E7 90 0B 71         [24] 4631 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      0028EA E0               [24] 4632 	movx	a,@dptr
      0028EB F5 38            [12] 4633 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      0028ED A3               [24] 4634 	inc	dptr
      0028EE E0               [24] 4635 	movx	a,@dptr
      0028EF F5 39            [12] 4636 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
      0028F1 A3               [24] 4637 	inc	dptr
      0028F2 E0               [24] 4638 	movx	a,@dptr
      0028F3 F5 3A            [12] 4639 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
      0028F5 A3               [24] 4640 	inc	dptr
      0028F6 E0               [24] 4641 	movx	a,@dptr
      0028F7 F5 3B            [12] 4642 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
      0028F9 C3               [12] 4643 	clr	c
      0028FA 74 38            [12] 4644 	mov	a,#0x38
      0028FC 95 38            [12] 4645 	subb	a,_parseHIDDeviceReport_sloc8_1_0
      0028FE E4               [12] 4646 	clr	a
      0028FF 95 39            [12] 4647 	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      002901 E4               [12] 4648 	clr	a
      002902 95 3A            [12] 4649 	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      002904 E4               [12] 4650 	clr	a
      002905 95 3B            [12] 4651 	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      002907 50 03            [24] 4652 	jnc	00395$
      002909 02 2D 16         [24] 4653 	ljmp	00174$
      00290C                       4654 00395$:
      00290C E5 38            [12] 4655 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      00290E 24 0B            [12] 4656 	add	a,#(00396$-3-.)
      002910 83               [24] 4657 	movc	a,@a+pc
      002911 F5 82            [12] 4658 	mov	dpl,a
      002913 E5 38            [12] 4659 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      002915 24 3D            [12] 4660 	add	a,#(00397$-3-.)
      002917 83               [24] 4661 	movc	a,@a+pc
      002918 F5 83            [12] 4662 	mov	dph,a
      00291A E4               [12] 4663 	clr	a
      00291B 73               [24] 4664 	jmp	@a+dptr
      00291C                       4665 00396$:
      00291C 16                    4666 	.db	00174$
      00291D 16                    4667 	.db	00174$
      00291E 16                    4668 	.db	00174$
      00291F 16                    4669 	.db	00174$
      002920 16                    4670 	.db	00174$
      002921 16                    4671 	.db	00174$
      002922 16                    4672 	.db	00174$
      002923 16                    4673 	.db	00174$
      002924 16                    4674 	.db	00174$
      002925 16                    4675 	.db	00174$
      002926 16                    4676 	.db	00174$
      002927 16                    4677 	.db	00174$
      002928 16                    4678 	.db	00174$
      002929 16                    4679 	.db	00174$
      00292A 16                    4680 	.db	00174$
      00292B 16                    4681 	.db	00174$
      00292C 16                    4682 	.db	00174$
      00292D 16                    4683 	.db	00174$
      00292E 16                    4684 	.db	00174$
      00292F 16                    4685 	.db	00174$
      002930 16                    4686 	.db	00174$
      002931 16                    4687 	.db	00174$
      002932 16                    4688 	.db	00174$
      002933 16                    4689 	.db	00174$
      002934 16                    4690 	.db	00174$
      002935 16                    4691 	.db	00174$
      002936 16                    4692 	.db	00174$
      002937 16                    4693 	.db	00174$
      002938 16                    4694 	.db	00174$
      002939 16                    4695 	.db	00174$
      00293A 16                    4696 	.db	00174$
      00293B 16                    4697 	.db	00174$
      00293C 16                    4698 	.db	00174$
      00293D 16                    4699 	.db	00174$
      00293E 16                    4700 	.db	00174$
      00293F 16                    4701 	.db	00174$
      002940 16                    4702 	.db	00174$
      002941 16                    4703 	.db	00174$
      002942 16                    4704 	.db	00174$
      002943 16                    4705 	.db	00174$
      002944 16                    4706 	.db	00174$
      002945 16                    4707 	.db	00174$
      002946 16                    4708 	.db	00174$
      002947 16                    4709 	.db	00174$
      002948 16                    4710 	.db	00174$
      002949 16                    4711 	.db	00174$
      00294A 16                    4712 	.db	00174$
      00294B 16                    4713 	.db	00174$
      00294C 8E                    4714 	.db	00130$
      00294D A3                    4715 	.db	00131$
      00294E 16                    4716 	.db	00174$
      00294F 16                    4717 	.db	00174$
      002950 16                    4718 	.db	00174$
      002951 16                    4719 	.db	00174$
      002952 16                    4720 	.db	00174$
      002953 16                    4721 	.db	00174$
      002954 B8                    4722 	.db	00133$
      002955                       4723 00397$:
      002955 2D                    4724 	.db	00174$>>8
      002956 2D                    4725 	.db	00174$>>8
      002957 2D                    4726 	.db	00174$>>8
      002958 2D                    4727 	.db	00174$>>8
      002959 2D                    4728 	.db	00174$>>8
      00295A 2D                    4729 	.db	00174$>>8
      00295B 2D                    4730 	.db	00174$>>8
      00295C 2D                    4731 	.db	00174$>>8
      00295D 2D                    4732 	.db	00174$>>8
      00295E 2D                    4733 	.db	00174$>>8
      00295F 2D                    4734 	.db	00174$>>8
      002960 2D                    4735 	.db	00174$>>8
      002961 2D                    4736 	.db	00174$>>8
      002962 2D                    4737 	.db	00174$>>8
      002963 2D                    4738 	.db	00174$>>8
      002964 2D                    4739 	.db	00174$>>8
      002965 2D                    4740 	.db	00174$>>8
      002966 2D                    4741 	.db	00174$>>8
      002967 2D                    4742 	.db	00174$>>8
      002968 2D                    4743 	.db	00174$>>8
      002969 2D                    4744 	.db	00174$>>8
      00296A 2D                    4745 	.db	00174$>>8
      00296B 2D                    4746 	.db	00174$>>8
      00296C 2D                    4747 	.db	00174$>>8
      00296D 2D                    4748 	.db	00174$>>8
      00296E 2D                    4749 	.db	00174$>>8
      00296F 2D                    4750 	.db	00174$>>8
      002970 2D                    4751 	.db	00174$>>8
      002971 2D                    4752 	.db	00174$>>8
      002972 2D                    4753 	.db	00174$>>8
      002973 2D                    4754 	.db	00174$>>8
      002974 2D                    4755 	.db	00174$>>8
      002975 2D                    4756 	.db	00174$>>8
      002976 2D                    4757 	.db	00174$>>8
      002977 2D                    4758 	.db	00174$>>8
      002978 2D                    4759 	.db	00174$>>8
      002979 2D                    4760 	.db	00174$>>8
      00297A 2D                    4761 	.db	00174$>>8
      00297B 2D                    4762 	.db	00174$>>8
      00297C 2D                    4763 	.db	00174$>>8
      00297D 2D                    4764 	.db	00174$>>8
      00297E 2D                    4765 	.db	00174$>>8
      00297F 2D                    4766 	.db	00174$>>8
      002980 2D                    4767 	.db	00174$>>8
      002981 2D                    4768 	.db	00174$>>8
      002982 2D                    4769 	.db	00174$>>8
      002983 2D                    4770 	.db	00174$>>8
      002984 2D                    4771 	.db	00174$>>8
      002985 29                    4772 	.db	00130$>>8
      002986 29                    4773 	.db	00131$>>8
      002987 2D                    4774 	.db	00174$>>8
      002988 2D                    4775 	.db	00174$>>8
      002989 2D                    4776 	.db	00174$>>8
      00298A 2D                    4777 	.db	00174$>>8
      00298B 2D                    4778 	.db	00174$>>8
      00298C 2D                    4779 	.db	00174$>>8
      00298D 29                    4780 	.db	00133$>>8
                                   4781 ;	USBHost.c:767: case REPORT_USAGE_X:
      00298E                       4782 00130$:
                                   4783 ;	USBHost.c:769: usageX = data;
      00298E 90 0B 79         [24] 4784 	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
      002991 E5 38            [12] 4785 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      002993 F0               [24] 4786 	movx	@dptr,a
      002994 E5 39            [12] 4787 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      002996 A3               [24] 4788 	inc	dptr
      002997 F0               [24] 4789 	movx	@dptr,a
      002998 E5 3A            [12] 4790 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      00299A A3               [24] 4791 	inc	dptr
      00299B F0               [24] 4792 	movx	@dptr,a
      00299C E5 3B            [12] 4793 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      00299E A3               [24] 4794 	inc	dptr
      00299F F0               [24] 4795 	movx	@dptr,a
                                   4796 ;	USBHost.c:770: break;
      0029A0 02 2D 16         [24] 4797 	ljmp	00174$
                                   4798 ;	USBHost.c:771: case REPORT_USAGE_Y:
      0029A3                       4799 00131$:
                                   4800 ;	USBHost.c:773: usageY = data;
      0029A3 90 0B 7D         [24] 4801 	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
      0029A6 E5 38            [12] 4802 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      0029A8 F0               [24] 4803 	movx	@dptr,a
      0029A9 E5 39            [12] 4804 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      0029AB A3               [24] 4805 	inc	dptr
      0029AC F0               [24] 4806 	movx	@dptr,a
      0029AD E5 3A            [12] 4807 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      0029AF A3               [24] 4808 	inc	dptr
      0029B0 F0               [24] 4809 	movx	@dptr,a
      0029B1 E5 3B            [12] 4810 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      0029B3 A3               [24] 4811 	inc	dptr
      0029B4 F0               [24] 4812 	movx	@dptr,a
                                   4813 ;	USBHost.c:774: break;
      0029B5 02 2D 16         [24] 4814 	ljmp	00174$
                                   4815 ;	USBHost.c:778: case REPORT_USAGE_WHEEL:
      0029B8                       4816 00133$:
                                   4817 ;	USBHost.c:780: usageW = data;
      0029B8 90 0B 81         [24] 4818 	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
      0029BB E5 38            [12] 4819 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      0029BD F0               [24] 4820 	movx	@dptr,a
      0029BE E5 39            [12] 4821 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
      0029C0 A3               [24] 4822 	inc	dptr
      0029C1 F0               [24] 4823 	movx	@dptr,a
      0029C2 E5 3A            [12] 4824 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
      0029C4 A3               [24] 4825 	inc	dptr
      0029C5 F0               [24] 4826 	movx	@dptr,a
      0029C6 E5 3B            [12] 4827 	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
      0029C8 A3               [24] 4828 	inc	dptr
      0029C9 F0               [24] 4829 	movx	@dptr,a
                                   4830 ;	USBHost.c:781: break;
      0029CA 02 2D 16         [24] 4831 	ljmp	00174$
                                   4832 ;	USBHost.c:811: case REPORT_COLLECTION:
      0029CD                       4833 00144$:
                                   4834 ;	USBHost.c:813: level++;
      0029CD 90 0B 6D         [24] 4835 	mov	dptr,#_parseHIDDeviceReport_level_65536_170
      0029D0 E0               [24] 4836 	movx	a,@dptr
      0029D1 24 01            [12] 4837 	add	a,#0x01
      0029D3 F0               [24] 4838 	movx	@dptr,a
                                   4839 ;	USBHost.c:814: break;
      0029D4 02 2D 16         [24] 4840 	ljmp	00174$
                                   4841 ;	USBHost.c:815: case REPORT_COLLECTION_END:
      0029D7                       4842 00145$:
                                   4843 ;	USBHost.c:817: level--;
      0029D7 90 0B 6D         [24] 4844 	mov	dptr,#_parseHIDDeviceReport_level_65536_170
      0029DA E0               [24] 4845 	movx	a,@dptr
      0029DB 14               [12] 4846 	dec	a
      0029DC F0               [24] 4847 	movx	@dptr,a
                                   4848 ;	USBHost.c:818: break;
      0029DD 02 2D 16         [24] 4849 	ljmp	00174$
                                   4850 ;	USBHost.c:822: case REPORT_INPUT:
      0029E0                       4851 00147$:
                                   4852 ;	USBHost.c:824: used_reports = 0;
      0029E0 90 0B 89         [24] 4853 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      0029E3 E4               [12] 4854 	clr	a
      0029E4 F0               [24] 4855 	movx	@dptr,a
                                   4856 ;	USBHost.c:825: if (HIDdevice[CurrentDevice].type == REPORT_USAGE_MOUSE) {
      0029E5 85 33 82         [24] 4857 	mov	dpl,_parseHIDDeviceReport_sloc5_1_0
      0029E8 85 34 83         [24] 4858 	mov	dph,(_parseHIDDeviceReport_sloc5_1_0 + 1)
      0029EB E0               [24] 4859 	movx	a,@dptr
      0029EC F8               [12] 4860 	mov	r0,a
      0029ED A3               [24] 4861 	inc	dptr
      0029EE E0               [24] 4862 	movx	a,@dptr
      0029EF FA               [12] 4863 	mov	r2,a
      0029F0 A3               [24] 4864 	inc	dptr
      0029F1 E0               [24] 4865 	movx	a,@dptr
      0029F2 FE               [12] 4866 	mov	r6,a
      0029F3 A3               [24] 4867 	inc	dptr
      0029F4 E0               [24] 4868 	movx	a,@dptr
      0029F5 FF               [12] 4869 	mov	r7,a
      0029F6 B8 02 0B         [24] 4870 	cjne	r0,#0x02,00398$
      0029F9 BA 00 08         [24] 4871 	cjne	r2,#0x00,00398$
      0029FC BE 00 05         [24] 4872 	cjne	r6,#0x00,00398$
      0029FF BF 00 02         [24] 4873 	cjne	r7,#0x00,00398$
      002A02 80 03            [24] 4874 	sjmp	00399$
      002A04                       4875 00398$:
      002A04 02 2C 63         [24] 4876 	ljmp	00162$
      002A07                       4877 00399$:
                                   4878 ;	USBHost.c:828: if (usage_page == 0x09) { // Button Page
      002A07 90 0B 75         [24] 4879 	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
      002A0A E0               [24] 4880 	movx	a,@dptr
      002A0B F5 38            [12] 4881 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      002A0D A3               [24] 4882 	inc	dptr
      002A0E E0               [24] 4883 	movx	a,@dptr
      002A0F F5 39            [12] 4884 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
      002A11 A3               [24] 4885 	inc	dptr
      002A12 E0               [24] 4886 	movx	a,@dptr
      002A13 F5 3A            [12] 4887 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
      002A15 A3               [24] 4888 	inc	dptr
      002A16 E0               [24] 4889 	movx	a,@dptr
      002A17 F5 3B            [12] 4890 	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
      002A19 74 09            [12] 4891 	mov	a,#0x09
      002A1B B5 38 0C         [24] 4892 	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00400$
      002A1E E4               [12] 4893 	clr	a
      002A1F B5 39 08         [24] 4894 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00400$
      002A22 B5 3A 05         [24] 4895 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00400$
      002A25 B5 3B 02         [24] 4896 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00400$
      002A28 80 02            [24] 4897 	sjmp	00401$
      002A2A                       4898 00400$:
      002A2A 80 59            [24] 4899 	sjmp	00159$
      002A2C                       4900 00401$:
                                   4901 ;	USBHost.c:829: if (map->buttons_bit_size == 0) {
      002A2C 74 03            [12] 4902 	mov	a,#0x03
      002A2E 2C               [12] 4903 	add	a,r4
      002A2F F5 3C            [12] 4904 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002A31 E4               [12] 4905 	clr	a
      002A32 3B               [12] 4906 	addc	a,r3
      002A33 F5 3D            [12] 4907 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002A35 8D 3E            [24] 4908 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002A37 85 3C 82         [24] 4909 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002A3A 85 3D 83         [24] 4910 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002A3D 85 3E F0         [24] 4911 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002A40 12 34 B9         [24] 4912 	lcall	__gptrget
      002A43 60 03            [24] 4913 	jz	00402$
      002A45 02 2C 63         [24] 4914 	ljmp	00162$
      002A48                       4915 00402$:
                                   4916 ;	USBHost.c:830: map->buttons_bit_offset = current_bit_offset;
      002A48 74 01            [12] 4917 	mov	a,#0x01
      002A4A 2C               [12] 4918 	add	a,r4
      002A4B F9               [12] 4919 	mov	r1,a
      002A4C E4               [12] 4920 	clr	a
      002A4D 3B               [12] 4921 	addc	a,r3
      002A4E FA               [12] 4922 	mov	r2,a
      002A4F 8D 07            [24] 4923 	mov	ar7,r5
      002A51 90 0B 87         [24] 4924 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002A54 E0               [24] 4925 	movx	a,@dptr
      002A55 F8               [12] 4926 	mov	r0,a
      002A56 A3               [24] 4927 	inc	dptr
      002A57 E0               [24] 4928 	movx	a,@dptr
      002A58 FE               [12] 4929 	mov	r6,a
      002A59 89 82            [24] 4930 	mov	dpl,r1
      002A5B 8A 83            [24] 4931 	mov	dph,r2
      002A5D 8F F0            [24] 4932 	mov	b,r7
      002A5F E8               [12] 4933 	mov	a,r0
      002A60 12 34 7E         [24] 4934 	lcall	__gptrput
      002A63 A3               [24] 4935 	inc	dptr
      002A64 EE               [12] 4936 	mov	a,r6
      002A65 12 34 7E         [24] 4937 	lcall	__gptrput
                                   4938 ;	USBHost.c:831: map->buttons_bit_size = report_size * report_count;
      002A68 90 0B 86         [24] 4939 	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
      002A6B E0               [24] 4940 	movx	a,@dptr
      002A6C FF               [12] 4941 	mov	r7,a
      002A6D 90 0B 85         [24] 4942 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002A70 E0               [24] 4943 	movx	a,@dptr
      002A71 F5 F0            [12] 4944 	mov	b,a
      002A73 EF               [12] 4945 	mov	a,r7
      002A74 A4               [48] 4946 	mul	ab
      002A75 FF               [12] 4947 	mov	r7,a
      002A76 85 3C 82         [24] 4948 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002A79 85 3D 83         [24] 4949 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002A7C 85 3E F0         [24] 4950 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002A7F 12 34 7E         [24] 4951 	lcall	__gptrput
                                   4952 ;	USBHost.c:832: DEBUG_OUT("Buttons: offset=%d, size=%d\n",
      002A82 02 2C 63         [24] 4953 	ljmp	00162$
      002A85                       4954 00159$:
                                   4955 ;	USBHost.c:836: else if (usage_page == 0x01) { // Generic Desktop Page
      002A85 74 01            [12] 4956 	mov	a,#0x01
      002A87 B5 38 0C         [24] 4957 	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00403$
      002A8A 14               [12] 4958 	dec	a
      002A8B B5 39 08         [24] 4959 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00403$
      002A8E B5 3A 05         [24] 4960 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00403$
      002A91 B5 3B 02         [24] 4961 	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00403$
      002A94 80 03            [24] 4962 	sjmp	00404$
      002A96                       4963 00403$:
      002A96 02 2C 63         [24] 4964 	ljmp	00162$
      002A99                       4965 00404$:
                                   4966 ;	USBHost.c:837: if (usageX == 0x30) { // X
      002A99 90 0B 79         [24] 4967 	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
      002A9C E0               [24] 4968 	movx	a,@dptr
      002A9D F8               [12] 4969 	mov	r0,a
      002A9E A3               [24] 4970 	inc	dptr
      002A9F E0               [24] 4971 	movx	a,@dptr
      002AA0 FA               [12] 4972 	mov	r2,a
      002AA1 A3               [24] 4973 	inc	dptr
      002AA2 E0               [24] 4974 	movx	a,@dptr
      002AA3 FE               [12] 4975 	mov	r6,a
      002AA4 A3               [24] 4976 	inc	dptr
      002AA5 E0               [24] 4977 	movx	a,@dptr
      002AA6 FF               [12] 4978 	mov	r7,a
      002AA7 B8 30 0B         [24] 4979 	cjne	r0,#0x30,00405$
      002AAA BA 00 08         [24] 4980 	cjne	r2,#0x00,00405$
      002AAD BE 00 05         [24] 4981 	cjne	r6,#0x00,00405$
      002AB0 BF 00 02         [24] 4982 	cjne	r7,#0x00,00405$
      002AB3 80 02            [24] 4983 	sjmp	00406$
      002AB5                       4984 00405$:
      002AB5 80 7C            [24] 4985 	sjmp	00151$
      002AB7                       4986 00406$:
                                   4987 ;	USBHost.c:838: usageX = 0;
      002AB7 90 0B 79         [24] 4988 	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
      002ABA E4               [12] 4989 	clr	a
      002ABB F0               [24] 4990 	movx	@dptr,a
      002ABC A3               [24] 4991 	inc	dptr
      002ABD F0               [24] 4992 	movx	@dptr,a
      002ABE A3               [24] 4993 	inc	dptr
      002ABF F0               [24] 4994 	movx	@dptr,a
      002AC0 A3               [24] 4995 	inc	dptr
      002AC1 F0               [24] 4996 	movx	@dptr,a
                                   4997 ;	USBHost.c:839: map->x_bit_offset = current_bit_offset;
      002AC2 74 04            [12] 4998 	mov	a,#0x04
      002AC4 2C               [12] 4999 	add	a,r4
      002AC5 F8               [12] 5000 	mov	r0,a
      002AC6 E4               [12] 5001 	clr	a
      002AC7 3B               [12] 5002 	addc	a,r3
      002AC8 FE               [12] 5003 	mov	r6,a
      002AC9 8D 07            [24] 5004 	mov	ar7,r5
      002ACB 90 0B 87         [24] 5005 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002ACE E0               [24] 5006 	movx	a,@dptr
      002ACF F9               [12] 5007 	mov	r1,a
      002AD0 A3               [24] 5008 	inc	dptr
      002AD1 E0               [24] 5009 	movx	a,@dptr
      002AD2 FA               [12] 5010 	mov	r2,a
      002AD3 88 82            [24] 5011 	mov	dpl,r0
      002AD5 8E 83            [24] 5012 	mov	dph,r6
      002AD7 8F F0            [24] 5013 	mov	b,r7
      002AD9 E9               [12] 5014 	mov	a,r1
      002ADA 12 34 7E         [24] 5015 	lcall	__gptrput
      002ADD A3               [24] 5016 	inc	dptr
      002ADE EA               [12] 5017 	mov	a,r2
      002ADF 12 34 7E         [24] 5018 	lcall	__gptrput
                                   5019 ;	USBHost.c:840: map->x_bit_size = report_size;
      002AE2 74 06            [12] 5020 	mov	a,#0x06
      002AE4 2C               [12] 5021 	add	a,r4
      002AE5 F5 3C            [12] 5022 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002AE7 E4               [12] 5023 	clr	a
      002AE8 3B               [12] 5024 	addc	a,r3
      002AE9 F5 3D            [12] 5025 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002AEB 8D 3E            [24] 5026 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002AED 90 0B 85         [24] 5027 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002AF0 E0               [24] 5028 	movx	a,@dptr
      002AF1 F5 38            [12] 5029 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      002AF3 85 3C 82         [24] 5030 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002AF6 85 3D 83         [24] 5031 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002AF9 85 3E F0         [24] 5032 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002AFC 12 34 7E         [24] 5033 	lcall	__gptrput
                                   5034 ;	USBHost.c:841: map->report_length_bits = current_bit_offset + report_size;
      002AFF 74 0D            [12] 5035 	mov	a,#0x0d
      002B01 2C               [12] 5036 	add	a,r4
      002B02 F5 3C            [12] 5037 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002B04 E4               [12] 5038 	clr	a
      002B05 3B               [12] 5039 	addc	a,r3
      002B06 F5 3D            [12] 5040 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002B08 8D 3E            [24] 5041 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002B0A 89 07            [24] 5042 	mov	ar7,r1
      002B0C E5 38            [12] 5043 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      002B0E 2F               [12] 5044 	add	a,r7
      002B0F 85 3C 82         [24] 5045 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002B12 85 3D 83         [24] 5046 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002B15 85 3E F0         [24] 5047 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002B18 12 34 7E         [24] 5048 	lcall	__gptrput
                                   5049 ;	USBHost.c:842: current_bit_offset += report_size;
      002B1B AE 38            [24] 5050 	mov	r6,_parseHIDDeviceReport_sloc8_1_0
      002B1D 7F 00            [12] 5051 	mov	r7,#0x00
      002B1F EE               [12] 5052 	mov	a,r6
      002B20 29               [12] 5053 	add	a,r1
      002B21 F9               [12] 5054 	mov	r1,a
      002B22 EF               [12] 5055 	mov	a,r7
      002B23 3A               [12] 5056 	addc	a,r2
      002B24 FA               [12] 5057 	mov	r2,a
      002B25 90 0B 87         [24] 5058 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002B28 E9               [12] 5059 	mov	a,r1
      002B29 F0               [24] 5060 	movx	@dptr,a
      002B2A EA               [12] 5061 	mov	a,r2
      002B2B A3               [24] 5062 	inc	dptr
      002B2C F0               [24] 5063 	movx	@dptr,a
                                   5064 ;	USBHost.c:843: used_reports++;
      002B2D 90 0B 89         [24] 5065 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      002B30 74 01            [12] 5066 	mov	a,#0x01
      002B32 F0               [24] 5067 	movx	@dptr,a
                                   5068 ;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
                                   5069 ;	USBHost.c:844: DEBUG_OUT("X: offset=%d, size=%d\n",
      002B33                       5070 00151$:
                                   5071 ;	USBHost.c:847: if (usageY == 0x31) { // Y
      002B33 90 0B 7D         [24] 5072 	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
      002B36 E0               [24] 5073 	movx	a,@dptr
      002B37 F8               [12] 5074 	mov	r0,a
      002B38 A3               [24] 5075 	inc	dptr
      002B39 E0               [24] 5076 	movx	a,@dptr
      002B3A FA               [12] 5077 	mov	r2,a
      002B3B A3               [24] 5078 	inc	dptr
      002B3C E0               [24] 5079 	movx	a,@dptr
      002B3D FE               [12] 5080 	mov	r6,a
      002B3E A3               [24] 5081 	inc	dptr
      002B3F E0               [24] 5082 	movx	a,@dptr
      002B40 FF               [12] 5083 	mov	r7,a
      002B41 B8 31 0B         [24] 5084 	cjne	r0,#0x31,00407$
      002B44 BA 00 08         [24] 5085 	cjne	r2,#0x00,00407$
      002B47 BE 00 05         [24] 5086 	cjne	r6,#0x00,00407$
      002B4A BF 00 02         [24] 5087 	cjne	r7,#0x00,00407$
      002B4D 80 03            [24] 5088 	sjmp	00408$
      002B4F                       5089 00407$:
      002B4F 02 2B CF         [24] 5090 	ljmp	00153$
      002B52                       5091 00408$:
                                   5092 ;	USBHost.c:848: usageY = 0;
      002B52 90 0B 7D         [24] 5093 	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
      002B55 E4               [12] 5094 	clr	a
      002B56 F0               [24] 5095 	movx	@dptr,a
      002B57 A3               [24] 5096 	inc	dptr
      002B58 F0               [24] 5097 	movx	@dptr,a
      002B59 A3               [24] 5098 	inc	dptr
      002B5A F0               [24] 5099 	movx	@dptr,a
      002B5B A3               [24] 5100 	inc	dptr
      002B5C F0               [24] 5101 	movx	@dptr,a
                                   5102 ;	USBHost.c:849: map->y_bit_offset = current_bit_offset;
      002B5D 74 07            [12] 5103 	mov	a,#0x07
      002B5F 2C               [12] 5104 	add	a,r4
      002B60 F8               [12] 5105 	mov	r0,a
      002B61 E4               [12] 5106 	clr	a
      002B62 3B               [12] 5107 	addc	a,r3
      002B63 FE               [12] 5108 	mov	r6,a
      002B64 8D 07            [24] 5109 	mov	ar7,r5
      002B66 90 0B 87         [24] 5110 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002B69 E0               [24] 5111 	movx	a,@dptr
      002B6A F9               [12] 5112 	mov	r1,a
      002B6B A3               [24] 5113 	inc	dptr
      002B6C E0               [24] 5114 	movx	a,@dptr
      002B6D FA               [12] 5115 	mov	r2,a
      002B6E 88 82            [24] 5116 	mov	dpl,r0
      002B70 8E 83            [24] 5117 	mov	dph,r6
      002B72 8F F0            [24] 5118 	mov	b,r7
      002B74 E9               [12] 5119 	mov	a,r1
      002B75 12 34 7E         [24] 5120 	lcall	__gptrput
      002B78 A3               [24] 5121 	inc	dptr
      002B79 EA               [12] 5122 	mov	a,r2
      002B7A 12 34 7E         [24] 5123 	lcall	__gptrput
                                   5124 ;	USBHost.c:850: map->y_bit_size = report_size;
      002B7D 74 09            [12] 5125 	mov	a,#0x09
      002B7F 2C               [12] 5126 	add	a,r4
      002B80 F5 3C            [12] 5127 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002B82 E4               [12] 5128 	clr	a
      002B83 3B               [12] 5129 	addc	a,r3
      002B84 F5 3D            [12] 5130 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002B86 8D 3E            [24] 5131 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002B88 90 0B 85         [24] 5132 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002B8B E0               [24] 5133 	movx	a,@dptr
      002B8C F5 38            [12] 5134 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      002B8E 85 3C 82         [24] 5135 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002B91 85 3D 83         [24] 5136 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002B94 85 3E F0         [24] 5137 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002B97 12 34 7E         [24] 5138 	lcall	__gptrput
                                   5139 ;	USBHost.c:851: map->report_length_bits = current_bit_offset + report_size;
      002B9A 74 0D            [12] 5140 	mov	a,#0x0d
      002B9C 2C               [12] 5141 	add	a,r4
      002B9D F5 3C            [12] 5142 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002B9F E4               [12] 5143 	clr	a
      002BA0 3B               [12] 5144 	addc	a,r3
      002BA1 F5 3D            [12] 5145 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002BA3 8D 3E            [24] 5146 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002BA5 89 07            [24] 5147 	mov	ar7,r1
      002BA7 E5 38            [12] 5148 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      002BA9 2F               [12] 5149 	add	a,r7
      002BAA 85 3C 82         [24] 5150 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002BAD 85 3D 83         [24] 5151 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002BB0 85 3E F0         [24] 5152 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002BB3 12 34 7E         [24] 5153 	lcall	__gptrput
                                   5154 ;	USBHost.c:852: current_bit_offset += report_size;
      002BB6 AE 38            [24] 5155 	mov	r6,_parseHIDDeviceReport_sloc8_1_0
      002BB8 7F 00            [12] 5156 	mov	r7,#0x00
      002BBA EE               [12] 5157 	mov	a,r6
      002BBB 29               [12] 5158 	add	a,r1
      002BBC F9               [12] 5159 	mov	r1,a
      002BBD EF               [12] 5160 	mov	a,r7
      002BBE 3A               [12] 5161 	addc	a,r2
      002BBF FA               [12] 5162 	mov	r2,a
      002BC0 90 0B 87         [24] 5163 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002BC3 E9               [12] 5164 	mov	a,r1
      002BC4 F0               [24] 5165 	movx	@dptr,a
      002BC5 EA               [12] 5166 	mov	a,r2
      002BC6 A3               [24] 5167 	inc	dptr
      002BC7 F0               [24] 5168 	movx	@dptr,a
                                   5169 ;	USBHost.c:853: used_reports++;
      002BC8 90 0B 89         [24] 5170 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      002BCB E0               [24] 5171 	movx	a,@dptr
      002BCC 24 01            [12] 5172 	add	a,#0x01
      002BCE F0               [24] 5173 	movx	@dptr,a
                                   5174 ;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
                                   5175 ;	USBHost.c:854: DEBUG_OUT("Y: offset=%d, size=%d\n",
      002BCF                       5176 00153$:
                                   5177 ;	USBHost.c:857: if (usageW == 0x38) { // Wheel
      002BCF 90 0B 81         [24] 5178 	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
      002BD2 E0               [24] 5179 	movx	a,@dptr
      002BD3 F8               [12] 5180 	mov	r0,a
      002BD4 A3               [24] 5181 	inc	dptr
      002BD5 E0               [24] 5182 	movx	a,@dptr
      002BD6 FA               [12] 5183 	mov	r2,a
      002BD7 A3               [24] 5184 	inc	dptr
      002BD8 E0               [24] 5185 	movx	a,@dptr
      002BD9 FE               [12] 5186 	mov	r6,a
      002BDA A3               [24] 5187 	inc	dptr
      002BDB E0               [24] 5188 	movx	a,@dptr
      002BDC FF               [12] 5189 	mov	r7,a
      002BDD B8 38 0B         [24] 5190 	cjne	r0,#0x38,00409$
      002BE0 BA 00 08         [24] 5191 	cjne	r2,#0x00,00409$
      002BE3 BE 00 05         [24] 5192 	cjne	r6,#0x00,00409$
      002BE6 BF 00 02         [24] 5193 	cjne	r7,#0x00,00409$
      002BE9 80 02            [24] 5194 	sjmp	00410$
      002BEB                       5195 00409$:
      002BEB 80 76            [24] 5196 	sjmp	00162$
      002BED                       5197 00410$:
                                   5198 ;	USBHost.c:858: usageW = 0;
      002BED 90 0B 81         [24] 5199 	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
      002BF0 E4               [12] 5200 	clr	a
      002BF1 F0               [24] 5201 	movx	@dptr,a
      002BF2 A3               [24] 5202 	inc	dptr
      002BF3 F0               [24] 5203 	movx	@dptr,a
      002BF4 A3               [24] 5204 	inc	dptr
      002BF5 F0               [24] 5205 	movx	@dptr,a
      002BF6 A3               [24] 5206 	inc	dptr
      002BF7 F0               [24] 5207 	movx	@dptr,a
                                   5208 ;	USBHost.c:859: map->wheel_bit_offset = current_bit_offset;
      002BF8 74 0A            [12] 5209 	mov	a,#0x0a
      002BFA 2C               [12] 5210 	add	a,r4
      002BFB F8               [12] 5211 	mov	r0,a
      002BFC E4               [12] 5212 	clr	a
      002BFD 3B               [12] 5213 	addc	a,r3
      002BFE FE               [12] 5214 	mov	r6,a
      002BFF 8D 07            [24] 5215 	mov	ar7,r5
      002C01 90 0B 87         [24] 5216 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002C04 E0               [24] 5217 	movx	a,@dptr
      002C05 F9               [12] 5218 	mov	r1,a
      002C06 A3               [24] 5219 	inc	dptr
      002C07 E0               [24] 5220 	movx	a,@dptr
      002C08 FA               [12] 5221 	mov	r2,a
      002C09 88 82            [24] 5222 	mov	dpl,r0
      002C0B 8E 83            [24] 5223 	mov	dph,r6
      002C0D 8F F0            [24] 5224 	mov	b,r7
      002C0F E9               [12] 5225 	mov	a,r1
      002C10 12 34 7E         [24] 5226 	lcall	__gptrput
      002C13 A3               [24] 5227 	inc	dptr
      002C14 EA               [12] 5228 	mov	a,r2
      002C15 12 34 7E         [24] 5229 	lcall	__gptrput
                                   5230 ;	USBHost.c:860: map->wheel_bit_size = report_size;
      002C18 74 0C            [12] 5231 	mov	a,#0x0c
      002C1A 2C               [12] 5232 	add	a,r4
      002C1B F5 3C            [12] 5233 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002C1D E4               [12] 5234 	clr	a
      002C1E 3B               [12] 5235 	addc	a,r3
      002C1F F5 3D            [12] 5236 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002C21 8D 3E            [24] 5237 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002C23 90 0B 85         [24] 5238 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002C26 E0               [24] 5239 	movx	a,@dptr
      002C27 F5 38            [12] 5240 	mov	_parseHIDDeviceReport_sloc8_1_0,a
      002C29 85 3C 82         [24] 5241 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002C2C 85 3D 83         [24] 5242 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002C2F 85 3E F0         [24] 5243 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002C32 12 34 7E         [24] 5244 	lcall	__gptrput
                                   5245 ;	USBHost.c:861: map->report_length_bits = current_bit_offset + report_size;
      002C35 74 0D            [12] 5246 	mov	a,#0x0d
      002C37 2C               [12] 5247 	add	a,r4
      002C38 F5 3C            [12] 5248 	mov	_parseHIDDeviceReport_sloc9_1_0,a
      002C3A E4               [12] 5249 	clr	a
      002C3B 3B               [12] 5250 	addc	a,r3
      002C3C F5 3D            [12] 5251 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
      002C3E 8D 3E            [24] 5252 	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
      002C40 89 07            [24] 5253 	mov	ar7,r1
      002C42 E5 38            [12] 5254 	mov	a,_parseHIDDeviceReport_sloc8_1_0
      002C44 2F               [12] 5255 	add	a,r7
      002C45 85 3C 82         [24] 5256 	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
      002C48 85 3D 83         [24] 5257 	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
      002C4B 85 3E F0         [24] 5258 	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
      002C4E 12 34 7E         [24] 5259 	lcall	__gptrput
                                   5260 ;	USBHost.c:862: current_bit_offset += report_size;
      002C51 AE 38            [24] 5261 	mov	r6,_parseHIDDeviceReport_sloc8_1_0
      002C53 7F 00            [12] 5262 	mov	r7,#0x00
      002C55 EE               [12] 5263 	mov	a,r6
      002C56 29               [12] 5264 	add	a,r1
      002C57 F9               [12] 5265 	mov	r1,a
      002C58 EF               [12] 5266 	mov	a,r7
      002C59 3A               [12] 5267 	addc	a,r2
      002C5A FA               [12] 5268 	mov	r2,a
      002C5B 90 0B 87         [24] 5269 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002C5E E9               [12] 5270 	mov	a,r1
      002C5F F0               [24] 5271 	movx	@dptr,a
      002C60 EA               [12] 5272 	mov	a,r2
      002C61 A3               [24] 5273 	inc	dptr
      002C62 F0               [24] 5274 	movx	@dptr,a
                                   5275 ;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
                                   5276 ;	USBHost.c:863: DEBUG_OUT("Wheel: offset=%d, size=%d\n",
      002C63                       5277 00162$:
                                   5278 ;	USBHost.c:868: if (used_reports > report_count) {
      002C63 90 0B 89         [24] 5279 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      002C66 E0               [24] 5280 	movx	a,@dptr
      002C67 FF               [12] 5281 	mov	r7,a
      002C68 90 0B 86         [24] 5282 	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
      002C6B E0               [24] 5283 	movx	a,@dptr
      002C6C FE               [12] 5284 	mov	r6,a
      002C6D C3               [12] 5285 	clr	c
      002C6E 9F               [12] 5286 	subb	a,r7
      002C6F 50 05            [24] 5287 	jnc	00164$
                                   5288 ;	USBHost.c:869: used_reports = report_count;
      002C71 90 0B 89         [24] 5289 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      002C74 EE               [12] 5290 	mov	a,r6
      002C75 F0               [24] 5291 	movx	@dptr,a
                                   5292 ;	USBHost.c:870: DEBUG_OUT("Error: HID report parsing error. used reports: %d, all reports: %d\n",
      002C76                       5293 00164$:
                                   5294 ;	USBHost.c:873: current_bit_offset += report_size * (report_count - used_reports);
      002C76 90 0B 86         [24] 5295 	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
      002C79 E0               [24] 5296 	movx	a,@dptr
      002C7A FF               [12] 5297 	mov	r7,a
      002C7B 7E 00            [12] 5298 	mov	r6,#0x00
      002C7D 90 0B 89         [24] 5299 	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
      002C80 E0               [24] 5300 	movx	a,@dptr
      002C81 F8               [12] 5301 	mov	r0,a
      002C82 7A 00            [12] 5302 	mov	r2,#0x00
      002C84 EF               [12] 5303 	mov	a,r7
      002C85 C3               [12] 5304 	clr	c
      002C86 98               [12] 5305 	subb	a,r0
      002C87 FF               [12] 5306 	mov	r7,a
      002C88 EE               [12] 5307 	mov	a,r6
      002C89 9A               [12] 5308 	subb	a,r2
      002C8A FE               [12] 5309 	mov	r6,a
      002C8B 90 0B 85         [24] 5310 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002C8E E0               [24] 5311 	movx	a,@dptr
      002C8F F9               [12] 5312 	mov	r1,a
      002C90 7A 00            [12] 5313 	mov	r2,#0x00
      002C92 90 0D AB         [24] 5314 	mov	dptr,#__mulint_PARM_2
      002C95 EF               [12] 5315 	mov	a,r7
      002C96 F0               [24] 5316 	movx	@dptr,a
      002C97 EE               [12] 5317 	mov	a,r6
      002C98 A3               [24] 5318 	inc	dptr
      002C99 F0               [24] 5319 	movx	@dptr,a
      002C9A 89 82            [24] 5320 	mov	dpl,r1
      002C9C 8A 83            [24] 5321 	mov	dph,r2
      002C9E C0 05            [24] 5322 	push	ar5
      002CA0 C0 04            [24] 5323 	push	ar4
      002CA2 C0 03            [24] 5324 	push	ar3
      002CA4 12 34 99         [24] 5325 	lcall	__mulint
      002CA7 AE 82            [24] 5326 	mov	r6,dpl
      002CA9 AF 83            [24] 5327 	mov	r7,dph
      002CAB D0 03            [24] 5328 	pop	ar3
      002CAD D0 04            [24] 5329 	pop	ar4
      002CAF D0 05            [24] 5330 	pop	ar5
      002CB1 90 0B 87         [24] 5331 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002CB4 E0               [24] 5332 	movx	a,@dptr
      002CB5 F9               [12] 5333 	mov	r1,a
      002CB6 A3               [24] 5334 	inc	dptr
      002CB7 E0               [24] 5335 	movx	a,@dptr
      002CB8 FA               [12] 5336 	mov	r2,a
      002CB9 EE               [12] 5337 	mov	a,r6
      002CBA 29               [12] 5338 	add	a,r1
      002CBB F9               [12] 5339 	mov	r1,a
      002CBC EF               [12] 5340 	mov	a,r7
      002CBD 3A               [12] 5341 	addc	a,r2
      002CBE FA               [12] 5342 	mov	r2,a
      002CBF 90 0B 87         [24] 5343 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002CC2 E9               [12] 5344 	mov	a,r1
      002CC3 F0               [24] 5345 	movx	@dptr,a
      002CC4 EA               [12] 5346 	mov	a,r2
      002CC5 A3               [24] 5347 	inc	dptr
      002CC6 F0               [24] 5348 	movx	@dptr,a
                                   5349 ;	USBHost.c:875: break;
                                   5350 ;	USBHost.c:882: case REPORT_REPORT_SIZE:
      002CC7 80 4D            [24] 5351 	sjmp	00174$
      002CC9                       5352 00167$:
                                   5353 ;	USBHost.c:883: report_size = data;
      002CC9 90 0B 71         [24] 5354 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      002CCC E0               [24] 5355 	movx	a,@dptr
      002CCD F8               [12] 5356 	mov	r0,a
      002CCE A3               [24] 5357 	inc	dptr
      002CCF E0               [24] 5358 	movx	a,@dptr
      002CD0 FA               [12] 5359 	mov	r2,a
      002CD1 A3               [24] 5360 	inc	dptr
      002CD2 E0               [24] 5361 	movx	a,@dptr
      002CD3 FE               [12] 5362 	mov	r6,a
      002CD4 A3               [24] 5363 	inc	dptr
      002CD5 E0               [24] 5364 	movx	a,@dptr
      002CD6 FF               [12] 5365 	mov	r7,a
      002CD7 90 0B 85         [24] 5366 	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
      002CDA E8               [12] 5367 	mov	a,r0
      002CDB F0               [24] 5368 	movx	@dptr,a
                                   5369 ;	USBHost.c:885: break;
                                   5370 ;	USBHost.c:886: case REPORT_REPORT_ID:
      002CDC 80 38            [24] 5371 	sjmp	00174$
      002CDE                       5372 00168$:
                                   5373 ;	USBHost.c:887: if (!map->report_id) {
      002CDE 8C 82            [24] 5374 	mov	dpl,r4
      002CE0 8B 83            [24] 5375 	mov	dph,r3
      002CE2 8D F0            [24] 5376 	mov	b,r5
      002CE4 12 34 B9         [24] 5377 	lcall	__gptrget
      002CE7 70 2D            [24] 5378 	jnz	00174$
                                   5379 ;	USBHost.c:888: map->report_id = data;
      002CE9 90 0B 71         [24] 5380 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      002CEC E0               [24] 5381 	movx	a,@dptr
      002CED F8               [12] 5382 	mov	r0,a
      002CEE A3               [24] 5383 	inc	dptr
      002CEF E0               [24] 5384 	movx	a,@dptr
      002CF0 FA               [12] 5385 	mov	r2,a
      002CF1 A3               [24] 5386 	inc	dptr
      002CF2 E0               [24] 5387 	movx	a,@dptr
      002CF3 FE               [12] 5388 	mov	r6,a
      002CF4 A3               [24] 5389 	inc	dptr
      002CF5 E0               [24] 5390 	movx	a,@dptr
      002CF6 FF               [12] 5391 	mov	r7,a
      002CF7 8C 82            [24] 5392 	mov	dpl,r4
      002CF9 8B 83            [24] 5393 	mov	dph,r3
      002CFB 8D F0            [24] 5394 	mov	b,r5
      002CFD E8               [12] 5395 	mov	a,r0
      002CFE 12 34 7E         [24] 5396 	lcall	__gptrput
                                   5397 ;	USBHost.c:889: DEBUG_OUT("Report ID(updated): %lu\n", data);
                                   5398 ;	USBHost.c:894: case REPORT_REPORT_COUNT:
      002D01 80 13            [24] 5399 	sjmp	00174$
      002D03                       5400 00172$:
                                   5401 ;	USBHost.c:895: report_count = data;
      002D03 90 0B 71         [24] 5402 	mov	dptr,#_parseHIDDeviceReport_data_65536_170
      002D06 E0               [24] 5403 	movx	a,@dptr
      002D07 F8               [12] 5404 	mov	r0,a
      002D08 A3               [24] 5405 	inc	dptr
      002D09 E0               [24] 5406 	movx	a,@dptr
      002D0A FA               [12] 5407 	mov	r2,a
      002D0B A3               [24] 5408 	inc	dptr
      002D0C E0               [24] 5409 	movx	a,@dptr
      002D0D FE               [12] 5410 	mov	r6,a
      002D0E A3               [24] 5411 	inc	dptr
      002D0F E0               [24] 5412 	movx	a,@dptr
      002D10 FF               [12] 5413 	mov	r7,a
      002D11 90 0B 86         [24] 5414 	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
      002D14 E8               [12] 5415 	mov	a,r0
      002D15 F0               [24] 5416 	movx	@dptr,a
                                   5417 ;	USBHost.c:900: }
      002D16                       5418 00174$:
                                   5419 ;	USBHost.c:902: i += tag_size + 1;
      002D16 90 0B 70         [24] 5420 	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
      002D19 E0               [24] 5421 	movx	a,@dptr
      002D1A FF               [12] 5422 	mov	r7,a
      002D1B 7E 00            [12] 5423 	mov	r6,#0x00
      002D1D 0F               [12] 5424 	inc	r7
      002D1E BF 00 01         [24] 5425 	cjne	r7,#0x00,00413$
      002D21 0E               [12] 5426 	inc	r6
      002D22                       5427 00413$:
      002D22 90 0B 6B         [24] 5428 	mov	dptr,#_parseHIDDeviceReport_i_65536_170
      002D25 E0               [24] 5429 	movx	a,@dptr
      002D26 F9               [12] 5430 	mov	r1,a
      002D27 A3               [24] 5431 	inc	dptr
      002D28 E0               [24] 5432 	movx	a,@dptr
      002D29 FA               [12] 5433 	mov	r2,a
      002D2A EF               [12] 5434 	mov	a,r7
      002D2B 29               [12] 5435 	add	a,r1
      002D2C F9               [12] 5436 	mov	r1,a
      002D2D EE               [12] 5437 	mov	a,r6
      002D2E 3A               [12] 5438 	addc	a,r2
      002D2F FA               [12] 5439 	mov	r2,a
      002D30 90 0B 6B         [24] 5440 	mov	dptr,#_parseHIDDeviceReport_i_65536_170
      002D33 E9               [12] 5441 	mov	a,r1
      002D34 F0               [24] 5442 	movx	@dptr,a
      002D35 EA               [12] 5443 	mov	a,r2
      002D36 A3               [24] 5444 	inc	dptr
      002D37 F0               [24] 5445 	movx	@dptr,a
      002D38 02 26 AE         [24] 5446 	ljmp	00175$
      002D3B                       5447 00177$:
                                   5448 ;	USBHost.c:905: if (map->report_length_bits == 0) {
      002D3B 74 0D            [12] 5449 	mov	a,#0x0d
      002D3D 2C               [12] 5450 	add	a,r4
      002D3E FF               [12] 5451 	mov	r7,a
      002D3F E4               [12] 5452 	clr	a
      002D40 3B               [12] 5453 	addc	a,r3
      002D41 FE               [12] 5454 	mov	r6,a
      002D42 8F 82            [24] 5455 	mov	dpl,r7
      002D44 8E 83            [24] 5456 	mov	dph,r6
      002D46 8D F0            [24] 5457 	mov	b,r5
      002D48 12 34 B9         [24] 5458 	lcall	__gptrget
      002D4B 70 12            [24] 5459 	jnz	00186$
                                   5460 ;	USBHost.c:906: map->report_length_bits = current_bit_offset;
      002D4D 90 0B 87         [24] 5461 	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
      002D50 E0               [24] 5462 	movx	a,@dptr
      002D51 FB               [12] 5463 	mov	r3,a
      002D52 A3               [24] 5464 	inc	dptr
      002D53 E0               [24] 5465 	movx	a,@dptr
      002D54 FC               [12] 5466 	mov	r4,a
      002D55 8F 82            [24] 5467 	mov	dpl,r7
      002D57 8E 83            [24] 5468 	mov	dph,r6
      002D59 8D F0            [24] 5469 	mov	b,r5
      002D5B EB               [12] 5470 	mov	a,r3
                                   5471 ;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
                                   5472 ;	USBHost.c:916: }
      002D5C 02 34 7E         [24] 5473 	ljmp	__gptrput
      002D5F                       5474 00186$:
      002D5F 22               [24] 5475 	ret
                                   5476 ;------------------------------------------------------------
                                   5477 ;Allocation info for local variables in function 'getHIDDeviceReport'
                                   5478 ;------------------------------------------------------------
                                   5479 ;CurrentDevice             Allocated with name '_getHIDDeviceReport_CurrentDevice_65536_195'
                                   5480 ;res                       Allocated with name '_getHIDDeviceReport_res_65536_196'
                                   5481 ;len                       Allocated with name '_getHIDDeviceReport_len_65536_196'
                                   5482 ;i                         Allocated with name '_getHIDDeviceReport_i_65536_196'
                                   5483 ;reportLen                 Allocated with name '_getHIDDeviceReport_reportLen_65536_196'
                                   5484 ;------------------------------------------------------------
                                   5485 ;	USBHost.c:918: static uint8_t getHIDDeviceReport(uint8_t CurrentDevice)
                                   5486 ;	-----------------------------------------
                                   5487 ;	 function getHIDDeviceReport
                                   5488 ;	-----------------------------------------
      002D60                       5489 _getHIDDeviceReport:
      002D60 E5 82            [12] 5490 	mov	a,dpl
      002D62 90 0B 8A         [24] 5491 	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
      002D65 F0               [24] 5492 	movx	@dptr,a
                                   5493 ;	USBHost.c:924: fillTxBuffer(SetHIDIdleRequest, sizeof(SetHIDIdleRequest));
      002D66 90 0B 44         [24] 5494 	mov	dptr,#_fillTxBuffer_PARM_2
      002D69 74 08            [12] 5495 	mov	a,#0x08
      002D6B F0               [24] 5496 	movx	@dptr,a
      002D6C 90 35 09         [24] 5497 	mov	dptr,#_SetHIDIdleRequest
      002D6F 12 1F 0D         [24] 5498 	lcall	_fillTxBuffer
                                   5499 ;	USBHost.c:925: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
      002D72 90 0B 8A         [24] 5500 	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
      002D75 E0               [24] 5501 	movx	a,@dptr
      002D76 75 F0 16         [24] 5502 	mov	b,#0x16
      002D79 A4               [48] 5503 	mul	ab
      002D7A 24 48            [12] 5504 	add	a,#_HIDdevice
      002D7C FE               [12] 5505 	mov	r6,a
      002D7D 74 0A            [12] 5506 	mov	a,#(_HIDdevice >> 8)
      002D7F 35 F0            [12] 5507 	addc	a,b
      002D81 FF               [12] 5508 	mov	r7,a
      002D82 74 02            [12] 5509 	mov	a,#0x02
      002D84 2E               [12] 5510 	add	a,r6
      002D85 FE               [12] 5511 	mov	r6,a
      002D86 E4               [12] 5512 	clr	a
      002D87 3F               [12] 5513 	addc	a,r7
      002D88 FF               [12] 5514 	mov	r7,a
      002D89 8E 82            [24] 5515 	mov	dpl,r6
      002D8B 8F 83            [24] 5516 	mov	dph,r7
      002D8D E0               [24] 5517 	movx	a,@dptr
      002D8E 90 01 04         [24] 5518 	mov	dptr,#(_TxBuffer + 0x0004)
      002D91 F0               [24] 5519 	movx	@dptr,a
                                   5520 ;	USBHost.c:926: res = hostCtrlTransfer(receiveDataBuffer, &len, 0);
      002D92 90 0B 38         [24] 5521 	mov	dptr,#_hostCtrlTransfer_PARM_2
      002D95 74 8B            [12] 5522 	mov	a,#_getHIDDeviceReport_len_65536_196
      002D97 F0               [24] 5523 	movx	@dptr,a
      002D98 74 0B            [12] 5524 	mov	a,#(_getHIDDeviceReport_len_65536_196 >> 8)
      002D9A A3               [24] 5525 	inc	dptr
      002D9B F0               [24] 5526 	movx	@dptr,a
      002D9C E4               [12] 5527 	clr	a
      002D9D A3               [24] 5528 	inc	dptr
      002D9E F0               [24] 5529 	movx	@dptr,a
      002D9F 90 0B 3B         [24] 5530 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002DA2 F0               [24] 5531 	movx	@dptr,a
      002DA3 A3               [24] 5532 	inc	dptr
      002DA4 F0               [24] 5533 	movx	@dptr,a
      002DA5 90 08 48         [24] 5534 	mov	dptr,#_receiveDataBuffer
      002DA8 C0 07            [24] 5535 	push	ar7
      002DAA C0 06            [24] 5536 	push	ar6
      002DAC 12 1C 1A         [24] 5537 	lcall	_hostCtrlTransfer
                                   5538 ;	USBHost.c:928: fillTxBuffer(GetHIDReport, sizeof(GetHIDReport));
      002DAF 90 0B 44         [24] 5539 	mov	dptr,#_fillTxBuffer_PARM_2
      002DB2 74 08            [12] 5540 	mov	a,#0x08
      002DB4 F0               [24] 5541 	movx	@dptr,a
      002DB5 90 35 11         [24] 5542 	mov	dptr,#_GetHIDReport
      002DB8 12 1F 0D         [24] 5543 	lcall	_fillTxBuffer
      002DBB D0 06            [24] 5544 	pop	ar6
      002DBD D0 07            [24] 5545 	pop	ar7
                                   5546 ;	USBHost.c:929: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
      002DBF 8E 82            [24] 5547 	mov	dpl,r6
      002DC1 8F 83            [24] 5548 	mov	dph,r7
      002DC3 E0               [24] 5549 	movx	a,@dptr
      002DC4 90 01 04         [24] 5550 	mov	dptr,#(_TxBuffer + 0x0004)
      002DC7 F0               [24] 5551 	movx	@dptr,a
                                   5552 ;	USBHost.c:930: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(reportLen & 255);
      002DC8 7F 00            [12] 5553 	mov	r7,#0x00
      002DCA 90 01 06         [24] 5554 	mov	dptr,#(_TxBuffer + 0x0006)
      002DCD EF               [12] 5555 	mov	a,r7
      002DCE F0               [24] 5556 	movx	@dptr,a
                                   5557 ;	USBHost.c:931: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(reportLen >> 8);
      002DCF 90 01 07         [24] 5558 	mov	dptr,#(_TxBuffer + 0x0007)
      002DD2 74 02            [12] 5559 	mov	a,#0x02
      002DD4 F0               [24] 5560 	movx	@dptr,a
                                   5561 ;	USBHost.c:932: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
      002DD5 90 0B 38         [24] 5562 	mov	dptr,#_hostCtrlTransfer_PARM_2
      002DD8 74 8B            [12] 5563 	mov	a,#_getHIDDeviceReport_len_65536_196
      002DDA F0               [24] 5564 	movx	@dptr,a
      002DDB 74 0B            [12] 5565 	mov	a,#(_getHIDDeviceReport_len_65536_196 >> 8)
      002DDD A3               [24] 5566 	inc	dptr
      002DDE F0               [24] 5567 	movx	@dptr,a
      002DDF E4               [12] 5568 	clr	a
      002DE0 A3               [24] 5569 	inc	dptr
      002DE1 F0               [24] 5570 	movx	@dptr,a
      002DE2 90 0B 3B         [24] 5571 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002DE5 F0               [24] 5572 	movx	@dptr,a
      002DE6 74 02            [12] 5573 	mov	a,#0x02
      002DE8 A3               [24] 5574 	inc	dptr
      002DE9 F0               [24] 5575 	movx	@dptr,a
      002DEA 90 08 48         [24] 5576 	mov	dptr,#_receiveDataBuffer
      002DED 12 1C 1A         [24] 5577 	lcall	_hostCtrlTransfer
                                   5578 ;	USBHost.c:933: if (res != ERR_SUCCESS) {
      002DF0 E5 82            [12] 5579 	mov	a,dpl
      002DF2 FF               [12] 5580 	mov	r7,a
      002DF3 60 03            [24] 5581 	jz	00111$
                                   5582 ;	USBHost.c:934: return res;
      002DF5 8F 82            [24] 5583 	mov	dpl,r7
                                   5584 ;	USBHost.c:937: for (i = 0; i < len; i++) {
      002DF7 22               [24] 5585 	ret
      002DF8                       5586 00111$:
      002DF8 7E 00            [12] 5587 	mov	r6,#0x00
      002DFA 7F 00            [12] 5588 	mov	r7,#0x00
      002DFC                       5589 00105$:
      002DFC 90 0B 8B         [24] 5590 	mov	dptr,#_getHIDDeviceReport_len_65536_196
      002DFF E0               [24] 5591 	movx	a,@dptr
      002E00 FC               [12] 5592 	mov	r4,a
      002E01 A3               [24] 5593 	inc	dptr
      002E02 E0               [24] 5594 	movx	a,@dptr
      002E03 FD               [12] 5595 	mov	r5,a
      002E04 C3               [12] 5596 	clr	c
      002E05 EE               [12] 5597 	mov	a,r6
      002E06 9C               [12] 5598 	subb	a,r4
      002E07 EF               [12] 5599 	mov	a,r7
      002E08 9D               [12] 5600 	subb	a,r5
      002E09 50 07            [24] 5601 	jnc	00103$
      002E0B 0E               [12] 5602 	inc	r6
      002E0C BE 00 ED         [24] 5603 	cjne	r6,#0x00,00105$
      002E0F 0F               [12] 5604 	inc	r7
      002E10 80 EA            [24] 5605 	sjmp	00105$
      002E12                       5606 00103$:
                                   5607 ;	USBHost.c:942: parseHIDDeviceReport(receiveDataBuffer, len, CurrentDevice);
      002E12 90 0B 8A         [24] 5608 	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
      002E15 E0               [24] 5609 	movx	a,@dptr
      002E16 FF               [12] 5610 	mov	r7,a
      002E17 90 0B 66         [24] 5611 	mov	dptr,#_parseHIDDeviceReport_PARM_2
      002E1A EC               [12] 5612 	mov	a,r4
      002E1B F0               [24] 5613 	movx	@dptr,a
      002E1C ED               [12] 5614 	mov	a,r5
      002E1D A3               [24] 5615 	inc	dptr
      002E1E F0               [24] 5616 	movx	@dptr,a
      002E1F 90 0B 68         [24] 5617 	mov	dptr,#_parseHIDDeviceReport_PARM_3
      002E22 EF               [12] 5618 	mov	a,r7
      002E23 F0               [24] 5619 	movx	@dptr,a
      002E24 90 08 48         [24] 5620 	mov	dptr,#_receiveDataBuffer
      002E27 12 25 F1         [24] 5621 	lcall	_parseHIDDeviceReport
                                   5622 ;	USBHost.c:943: return ERR_SUCCESS;
      002E2A 75 82 00         [24] 5623 	mov	dpl,#0x00
                                   5624 ;	USBHost.c:944: }
      002E2D 22               [24] 5625 	ret
                                   5626 ;------------------------------------------------------------
                                   5627 ;Allocation info for local variables in function 'readInterface'
                                   5628 ;------------------------------------------------------------
                                   5629 ;interface                 Allocated with name '_readInterface_PARM_2'
                                   5630 ;rootHubIndex              Allocated with name '_readInterface_rootHubIndex_65536_200'
                                   5631 ;------------------------------------------------------------
                                   5632 ;	USBHost.c:946: static void readInterface(uint8_t rootHubIndex, PXUSB_ITF_DESCR interface)
                                   5633 ;	-----------------------------------------
                                   5634 ;	 function readInterface
                                   5635 ;	-----------------------------------------
      002E2E                       5636 _readInterface:
                                   5637 ;	USBHost.c:953: DEBUG_OUT("  Interface Protocol %d\n", interface->bInterfaceProtocol);
                                   5638 ;	USBHost.c:954: }
      002E2E 22               [24] 5639 	ret
                                   5640 ;------------------------------------------------------------
                                   5641 ;Allocation info for local variables in function 'readHIDInterface'
                                   5642 ;------------------------------------------------------------
                                   5643 ;descriptor                Allocated with name '_readHIDInterface_PARM_2'
                                   5644 ;interface                 Allocated with name '_readHIDInterface_interface_65536_202'
                                   5645 ;------------------------------------------------------------
                                   5646 ;	USBHost.c:956: static void readHIDInterface(PXUSB_ITF_DESCR interface, PXUSB_HID_DESCR descriptor)
                                   5647 ;	-----------------------------------------
                                   5648 ;	 function readHIDInterface
                                   5649 ;	-----------------------------------------
      002E2F                       5650 _readHIDInterface:
                                   5651 ;	USBHost.c:963: DEBUG_OUT("  TypeX 0x%02X\n", descriptor->bDescriptorTypeX);
                                   5652 ;	USBHost.c:964: }
      002E2F 22               [24] 5653 	ret
                                   5654 ;------------------------------------------------------------
                                   5655 ;Allocation info for local variables in function 'initializeRootHubConnection'
                                   5656 ;------------------------------------------------------------
                                   5657 ;sloc0                     Allocated with name '_initializeRootHubConnection_sloc0_1_0'
                                   5658 ;sloc1                     Allocated with name '_initializeRootHubConnection_sloc1_1_0'
                                   5659 ;sloc2                     Allocated with name '_initializeRootHubConnection_sloc2_1_0'
                                   5660 ;sloc3                     Allocated with name '_initializeRootHubConnection_sloc3_1_0'
                                   5661 ;sloc4                     Allocated with name '_initializeRootHubConnection_sloc4_1_0'
                                   5662 ;sloc5                     Allocated with name '_initializeRootHubConnection_sloc5_1_0'
                                   5663 ;sloc6                     Allocated with name '_initializeRootHubConnection_sloc6_1_0'
                                   5664 ;sloc7                     Allocated with name '_initializeRootHubConnection_sloc7_1_0'
                                   5665 ;sloc8                     Allocated with name '_initializeRootHubConnection_sloc8_1_0'
                                   5666 ;rootHubIndex              Allocated with name '_initializeRootHubConnection_rootHubIndex_65536_204'
                                   5667 ;retry                     Allocated with name '_initializeRootHubConnection_retry_65536_205'
                                   5668 ;i                         Allocated with name '_initializeRootHubConnection_i_65536_205'
                                   5669 ;res                       Allocated with name '_initializeRootHubConnection_res_65536_205'
                                   5670 ;cfg                       Allocated with name '_initializeRootHubConnection_cfg_65536_205'
                                   5671 ;dv_cls                    Allocated with name '_initializeRootHubConnection_dv_cls_65536_205'
                                   5672 ;addr                      Allocated with name '_initializeRootHubConnection_addr_65536_205'
                                   5673 ;HIDDevice                 Allocated with name '_initializeRootHubConnection_HIDDevice_65536_205'
                                   5674 ;i                         Allocated with name '_initializeRootHubConnection_i_458752_216'
                                   5675 ;total                     Allocated with name '_initializeRootHubConnection_total_458752_216'
                                   5676 ;temp                      Allocated with name '_initializeRootHubConnection_temp_458752_216'
                                   5677 ;currentInterface          Allocated with name '_initializeRootHubConnection_currentInterface_458752_216'
                                   5678 ;interfaces                Allocated with name '_initializeRootHubConnection_interfaces_458752_216'
                                   5679 ;desc                      Allocated with name '_initializeRootHubConnection_desc_524288_221'
                                   5680 ;d                         Allocated with name '_initializeRootHubConnection_d_655360_223'
                                   5681 ;hiddevice                 Allocated with name '_initializeRootHubConnection_hiddevice_720896_224'
                                   5682 ;------------------------------------------------------------
                                   5683 ;	USBHost.c:966: static uint8_t initializeRootHubConnection(uint8_t rootHubIndex)
                                   5684 ;	-----------------------------------------
                                   5685 ;	 function initializeRootHubConnection
                                   5686 ;	-----------------------------------------
      002E30                       5687 _initializeRootHubConnection:
      002E30 E5 82            [12] 5688 	mov	a,dpl
      002E32 90 0B 91         [24] 5689 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
      002E35 F0               [24] 5690 	movx	@dptr,a
                                   5691 ;	USBHost.c:970: __xdata uint8_t res = ERR_SUCCESS;
      002E36 90 0B 92         [24] 5692 	mov	dptr,#_initializeRootHubConnection_res_65536_205
      002E39 E4               [12] 5693 	clr	a
      002E3A F0               [24] 5694 	movx	@dptr,a
                                   5695 ;	USBHost.c:976: for (retry = 0; retry < 10; retry++) { // todo test fewer retries
      002E3B 90 0B 91         [24] 5696 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
      002E3E E0               [24] 5697 	movx	a,@dptr
      002E3F FF               [12] 5698 	mov	r7,a
      002E40 FE               [12] 5699 	mov	r6,a
      002E41 75 F0 03         [24] 5700 	mov	b,#0x03
      002E44 A4               [48] 5701 	mul	ab
      002E45 FC               [12] 5702 	mov	r4,a
      002E46 AD F0            [24] 5703 	mov	r5,b
      002E48 8F 44            [24] 5704 	mov	_initializeRootHubConnection_sloc2_1_0,r7
      002E4A 75 43 00         [24] 5705 	mov	_initializeRootHubConnection_sloc1_1_0,#0x00
      002E4D                       5706 00145$:
                                   5707 ;	USBHost.c:977: delay(100);
      002E4D 90 00 64         [24] 5708 	mov	dptr,#0x0064
      002E50 C0 07            [24] 5709 	push	ar7
      002E52 C0 06            [24] 5710 	push	ar6
      002E54 C0 05            [24] 5711 	push	ar5
      002E56 C0 04            [24] 5712 	push	ar4
      002E58 12 16 3C         [24] 5713 	lcall	_delay
                                   5714 ;	USBHost.c:981: resetHubDevices(rootHubIndex);
      002E5B 85 44 82         [24] 5715 	mov	dpl,_initializeRootHubConnection_sloc2_1_0
      002E5E 12 21 F0         [24] 5716 	lcall	_resetHubDevices
                                   5717 ;	USBHost.c:982: resetRootHubPort(rootHubIndex);
      002E61 85 44 82         [24] 5718 	mov	dpl,_initializeRootHubConnection_sloc2_1_0
      002E64 12 19 15         [24] 5719 	lcall	_resetRootHubPort
      002E67 D0 04            [24] 5720 	pop	ar4
      002E69 D0 05            [24] 5721 	pop	ar5
      002E6B D0 06            [24] 5722 	pop	ar6
      002E6D D0 07            [24] 5723 	pop	ar7
                                   5724 ;	USBHost.c:984: for (i = 0; i < 100; i++) { // todo test fewer retries
      002E6F 79 00            [12] 5725 	mov	r1,#0x00
      002E71                       5726 00135$:
                                   5727 ;	USBHost.c:985: delay(1);
      002E71 90 00 01         [24] 5728 	mov	dptr,#0x0001
      002E74 C0 07            [24] 5729 	push	ar7
      002E76 C0 06            [24] 5730 	push	ar6
      002E78 C0 05            [24] 5731 	push	ar5
      002E7A C0 04            [24] 5732 	push	ar4
      002E7C C0 01            [24] 5733 	push	ar1
      002E7E 12 16 3C         [24] 5734 	lcall	_delay
      002E81 D0 01            [24] 5735 	pop	ar1
      002E83 D0 04            [24] 5736 	pop	ar4
      002E85 D0 05            [24] 5737 	pop	ar5
      002E87 D0 06            [24] 5738 	pop	ar6
      002E89 D0 07            [24] 5739 	pop	ar7
                                   5740 ;	USBHost.c:986: if (enableRootHubPort(rootHubIndex) == ERR_SUCCESS) {
      002E8B 8F 82            [24] 5741 	mov	dpl,r7
      002E8D C0 07            [24] 5742 	push	ar7
      002E8F C0 06            [24] 5743 	push	ar6
      002E91 C0 05            [24] 5744 	push	ar5
      002E93 C0 04            [24] 5745 	push	ar4
      002E95 C0 01            [24] 5746 	push	ar1
      002E97 12 19 65         [24] 5747 	lcall	_enableRootHubPort
      002E9A E5 82            [12] 5748 	mov	a,dpl
      002E9C D0 01            [24] 5749 	pop	ar1
      002E9E D0 04            [24] 5750 	pop	ar4
      002EA0 D0 05            [24] 5751 	pop	ar5
      002EA2 D0 06            [24] 5752 	pop	ar6
      002EA4 D0 07            [24] 5753 	pop	ar7
      002EA6 60 06            [24] 5754 	jz	00103$
                                   5755 ;	USBHost.c:984: for (i = 0; i < 100; i++) { // todo test fewer retries
      002EA8 09               [12] 5756 	inc	r1
      002EA9 B9 64 00         [24] 5757 	cjne	r1,#0x64,00245$
      002EAC                       5758 00245$:
      002EAC 40 C3            [24] 5759 	jc	00135$
      002EAE                       5760 00103$:
                                   5761 ;	USBHost.c:991: if (i == 100) {
      002EAE B9 64 18         [24] 5762 	cjne	r1,#0x64,00105$
                                   5763 ;	USBHost.c:992: disableRootHubPort(rootHubIndex);
      002EB1 8F 82            [24] 5764 	mov	dpl,r7
      002EB3 C0 07            [24] 5765 	push	ar7
      002EB5 C0 06            [24] 5766 	push	ar6
      002EB7 C0 05            [24] 5767 	push	ar5
      002EB9 C0 04            [24] 5768 	push	ar4
      002EBB 12 18 81         [24] 5769 	lcall	_disableRootHubPort
      002EBE D0 04            [24] 5770 	pop	ar4
      002EC0 D0 05            [24] 5771 	pop	ar5
      002EC2 D0 06            [24] 5772 	pop	ar6
      002EC4 D0 07            [24] 5773 	pop	ar7
                                   5774 ;	USBHost.c:994: continue;
      002EC6 02 32 A6         [24] 5775 	ljmp	00133$
      002EC9                       5776 00105$:
                                   5777 ;	USBHost.c:997: selectHubPort(rootHubIndex, 0);
      002EC9 90 0B 30         [24] 5778 	mov	dptr,#_selectHubPort_PARM_2
      002ECC E4               [12] 5779 	clr	a
      002ECD F0               [24] 5780 	movx	@dptr,a
      002ECE 8E 82            [24] 5781 	mov	dpl,r6
      002ED0 C0 07            [24] 5782 	push	ar7
      002ED2 C0 06            [24] 5783 	push	ar6
      002ED4 C0 05            [24] 5784 	push	ar5
      002ED6 C0 04            [24] 5785 	push	ar4
      002ED8 12 1A 27         [24] 5786 	lcall	_selectHubPort
                                   5787 ;	USBHost.c:999: res = getDeviceDescriptor();
      002EDB 12 1F 44         [24] 5788 	lcall	_getDeviceDescriptor
      002EDE A9 82            [24] 5789 	mov	r1,dpl
      002EE0 D0 04            [24] 5790 	pop	ar4
      002EE2 D0 05            [24] 5791 	pop	ar5
      002EE4 D0 06            [24] 5792 	pop	ar6
      002EE6 D0 07            [24] 5793 	pop	ar7
      002EE8 90 0B 92         [24] 5794 	mov	dptr,#_initializeRootHubConnection_res_65536_205
      002EEB E9               [12] 5795 	mov	a,r1
      002EEC F0               [24] 5796 	movx	@dptr,a
                                   5797 ;	USBHost.c:1001: if (res == ERR_SUCCESS) {
      002EED E9               [12] 5798 	mov	a,r1
      002EEE 60 03            [24] 5799 	jz	00249$
      002EF0 02 32 83         [24] 5800 	ljmp	00132$
      002EF3                       5801 00249$:
                                   5802 ;	USBHost.c:1005: VendorProductID[rootHubIndex].idVendorL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorL;
      002EF3 C0 04            [24] 5803 	push	ar4
      002EF5 C0 05            [24] 5804 	push	ar5
      002EF7 EE               [12] 5805 	mov	a,r6
      002EF8 75 F0 10         [24] 5806 	mov	b,#0x10
      002EFB A4               [48] 5807 	mul	ab
      002EFC F8               [12] 5808 	mov	r0,a
      002EFD A9 F0            [24] 5809 	mov	r1,b
      002EFF 24 F8            [12] 5810 	add	a,#_VendorProductID
      002F01 F5 41            [12] 5811 	mov	_initializeRootHubConnection_sloc0_1_0,a
      002F03 E9               [12] 5812 	mov	a,r1
      002F04 34 0A            [12] 5813 	addc	a,#(_VendorProductID >> 8)
      002F06 F5 42            [12] 5814 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      002F08 90 08 50         [24] 5815 	mov	dptr,#(_receiveDataBuffer + 0x0008)
      002F0B E0               [24] 5816 	movx	a,@dptr
      002F0C FA               [12] 5817 	mov	r2,a
      002F0D 7B 00            [12] 5818 	mov	r3,#0x00
      002F0F 7C 00            [12] 5819 	mov	r4,#0x00
      002F11 7D 00            [12] 5820 	mov	r5,#0x00
      002F13 85 41 82         [24] 5821 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      002F16 85 42 83         [24] 5822 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      002F19 EA               [12] 5823 	mov	a,r2
      002F1A F0               [24] 5824 	movx	@dptr,a
      002F1B EB               [12] 5825 	mov	a,r3
      002F1C A3               [24] 5826 	inc	dptr
      002F1D F0               [24] 5827 	movx	@dptr,a
      002F1E EC               [12] 5828 	mov	a,r4
      002F1F A3               [24] 5829 	inc	dptr
      002F20 F0               [24] 5830 	movx	@dptr,a
      002F21 ED               [12] 5831 	mov	a,r5
      002F22 A3               [24] 5832 	inc	dptr
      002F23 F0               [24] 5833 	movx	@dptr,a
                                   5834 ;	USBHost.c:1006: VendorProductID[rootHubIndex].idVendorH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorH;
      002F24 E8               [12] 5835 	mov	a,r0
      002F25 24 F8            [12] 5836 	add	a,#_VendorProductID
      002F27 F8               [12] 5837 	mov	r0,a
      002F28 E9               [12] 5838 	mov	a,r1
      002F29 34 0A            [12] 5839 	addc	a,#(_VendorProductID >> 8)
      002F2B F9               [12] 5840 	mov	r1,a
      002F2C 74 04            [12] 5841 	mov	a,#0x04
      002F2E 28               [12] 5842 	add	a,r0
      002F2F F5 41            [12] 5843 	mov	_initializeRootHubConnection_sloc0_1_0,a
      002F31 E4               [12] 5844 	clr	a
      002F32 39               [12] 5845 	addc	a,r1
      002F33 F5 42            [12] 5846 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      002F35 90 08 51         [24] 5847 	mov	dptr,#(_receiveDataBuffer + 0x0009)
      002F38 E0               [24] 5848 	movx	a,@dptr
      002F39 FA               [12] 5849 	mov	r2,a
      002F3A 7B 00            [12] 5850 	mov	r3,#0x00
      002F3C 7C 00            [12] 5851 	mov	r4,#0x00
      002F3E 7D 00            [12] 5852 	mov	r5,#0x00
      002F40 85 41 82         [24] 5853 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      002F43 85 42 83         [24] 5854 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      002F46 EA               [12] 5855 	mov	a,r2
      002F47 F0               [24] 5856 	movx	@dptr,a
      002F48 EB               [12] 5857 	mov	a,r3
      002F49 A3               [24] 5858 	inc	dptr
      002F4A F0               [24] 5859 	movx	@dptr,a
      002F4B EC               [12] 5860 	mov	a,r4
      002F4C A3               [24] 5861 	inc	dptr
      002F4D F0               [24] 5862 	movx	@dptr,a
      002F4E ED               [12] 5863 	mov	a,r5
      002F4F A3               [24] 5864 	inc	dptr
      002F50 F0               [24] 5865 	movx	@dptr,a
                                   5866 ;	USBHost.c:1007: VendorProductID[rootHubIndex].idProductL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductL;
      002F51 74 08            [12] 5867 	mov	a,#0x08
      002F53 28               [12] 5868 	add	a,r0
      002F54 F5 41            [12] 5869 	mov	_initializeRootHubConnection_sloc0_1_0,a
      002F56 E4               [12] 5870 	clr	a
      002F57 39               [12] 5871 	addc	a,r1
      002F58 F5 42            [12] 5872 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      002F5A 90 08 52         [24] 5873 	mov	dptr,#(_receiveDataBuffer + 0x000a)
      002F5D E0               [24] 5874 	movx	a,@dptr
      002F5E FA               [12] 5875 	mov	r2,a
      002F5F 7B 00            [12] 5876 	mov	r3,#0x00
      002F61 7C 00            [12] 5877 	mov	r4,#0x00
      002F63 7D 00            [12] 5878 	mov	r5,#0x00
      002F65 85 41 82         [24] 5879 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      002F68 85 42 83         [24] 5880 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      002F6B EA               [12] 5881 	mov	a,r2
      002F6C F0               [24] 5882 	movx	@dptr,a
      002F6D EB               [12] 5883 	mov	a,r3
      002F6E A3               [24] 5884 	inc	dptr
      002F6F F0               [24] 5885 	movx	@dptr,a
      002F70 EC               [12] 5886 	mov	a,r4
      002F71 A3               [24] 5887 	inc	dptr
      002F72 F0               [24] 5888 	movx	@dptr,a
      002F73 ED               [12] 5889 	mov	a,r5
      002F74 A3               [24] 5890 	inc	dptr
      002F75 F0               [24] 5891 	movx	@dptr,a
                                   5892 ;	USBHost.c:1008: VendorProductID[rootHubIndex].idProductH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductH;
      002F76 74 0C            [12] 5893 	mov	a,#0x0c
      002F78 28               [12] 5894 	add	a,r0
      002F79 F8               [12] 5895 	mov	r0,a
      002F7A E4               [12] 5896 	clr	a
      002F7B 39               [12] 5897 	addc	a,r1
      002F7C F9               [12] 5898 	mov	r1,a
      002F7D 90 08 53         [24] 5899 	mov	dptr,#(_receiveDataBuffer + 0x000b)
      002F80 E0               [24] 5900 	movx	a,@dptr
      002F81 FD               [12] 5901 	mov	r5,a
      002F82 7C 00            [12] 5902 	mov	r4,#0x00
      002F84 7B 00            [12] 5903 	mov	r3,#0x00
      002F86 7A 00            [12] 5904 	mov	r2,#0x00
      002F88 88 82            [24] 5905 	mov	dpl,r0
      002F8A 89 83            [24] 5906 	mov	dph,r1
      002F8C ED               [12] 5907 	mov	a,r5
      002F8D F0               [24] 5908 	movx	@dptr,a
      002F8E EC               [12] 5909 	mov	a,r4
      002F8F A3               [24] 5910 	inc	dptr
      002F90 F0               [24] 5911 	movx	@dptr,a
      002F91 EB               [12] 5912 	mov	a,r3
      002F92 A3               [24] 5913 	inc	dptr
      002F93 F0               [24] 5914 	movx	@dptr,a
      002F94 EA               [12] 5915 	mov	a,r2
      002F95 A3               [24] 5916 	inc	dptr
      002F96 F0               [24] 5917 	movx	@dptr,a
                                   5918 ;	USBHost.c:1009: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
      002F97 90 08 48         [24] 5919 	mov	dptr,#_receiveDataBuffer
      002F9A C0 07            [24] 5920 	push	ar7
      002F9C C0 06            [24] 5921 	push	ar6
      002F9E C0 05            [24] 5922 	push	ar5
      002FA0 C0 04            [24] 5923 	push	ar4
      002FA2 12 21 15         [24] 5924 	lcall	_DEBUG_OUT_USB_BUFFER
      002FA5 D0 04            [24] 5925 	pop	ar4
      002FA7 D0 05            [24] 5926 	pop	ar5
      002FA9 D0 06            [24] 5927 	pop	ar6
                                   5928 ;	USBHost.c:1011: addr = rootHubIndex + ((PUSB_SETUP_REQ)SetUSBAddressRequest)->wValueL; // todo wValue always 2.. does another id work?
      002FAB 90 34 F3         [24] 5929 	mov	dptr,#(_SetUSBAddressRequest + 0x0002)
      002FAE E4               [12] 5930 	clr	a
      002FAF 93               [24] 5931 	movc	a,@a+dptr
      002FB0 2E               [12] 5932 	add	a,r6
      002FB1 F5 41            [12] 5933 	mov	_initializeRootHubConnection_sloc0_1_0,a
                                   5934 ;	USBHost.c:1012: res = setUsbAddress(addr);
      002FB3 85 41 82         [24] 5935 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      002FB6 C0 06            [24] 5936 	push	ar6
      002FB8 C0 04            [24] 5937 	push	ar4
      002FBA 12 1F 9D         [24] 5938 	lcall	_setUsbAddress
      002FBD AD 82            [24] 5939 	mov	r5,dpl
      002FBF D0 04            [24] 5940 	pop	ar4
      002FC1 D0 06            [24] 5941 	pop	ar6
      002FC3 D0 07            [24] 5942 	pop	ar7
      002FC5 90 0B 92         [24] 5943 	mov	dptr,#_initializeRootHubConnection_res_65536_205
      002FC8 ED               [12] 5944 	mov	a,r5
      002FC9 F0               [24] 5945 	movx	@dptr,a
                                   5946 ;	USBHost.c:1013: if (res == ERR_SUCCESS) {
      002FCA ED               [12] 5947 	mov	a,r5
      002FCB D0 05            [24] 5948 	pop	ar5
      002FCD D0 04            [24] 5949 	pop	ar4
      002FCF 60 03            [24] 5950 	jz	00250$
      002FD1 02 32 83         [24] 5951 	ljmp	00132$
      002FD4                       5952 00250$:
                                   5953 ;	USBHost.c:1014: rootHubDevice[rootHubIndex].address = addr;
      002FD4 EE               [12] 5954 	mov	a,r6
      002FD5 75 F0 03         [24] 5955 	mov	b,#0x03
      002FD8 A4               [48] 5956 	mul	ab
      002FD9 24 18            [12] 5957 	add	a,#_rootHubDevice
      002FDB FA               [12] 5958 	mov	r2,a
      002FDC 74 0B            [12] 5959 	mov	a,#(_rootHubDevice >> 8)
      002FDE 35 F0            [12] 5960 	addc	a,b
      002FE0 FB               [12] 5961 	mov	r3,a
      002FE1 8A 82            [24] 5962 	mov	dpl,r2
      002FE3 8B 83            [24] 5963 	mov	dph,r3
      002FE5 A3               [24] 5964 	inc	dptr
      002FE6 E5 41            [12] 5965 	mov	a,_initializeRootHubConnection_sloc0_1_0
      002FE8 F0               [24] 5966 	movx	@dptr,a
                                   5967 ;	USBHost.c:1015: res = getDeviceString();
      002FE9 C0 07            [24] 5968 	push	ar7
      002FEB C0 06            [24] 5969 	push	ar6
      002FED C0 05            [24] 5970 	push	ar5
      002FEF C0 04            [24] 5971 	push	ar4
      002FF1 12 20 1A         [24] 5972 	lcall	_getDeviceString
                                   5973 ;	USBHost.c:1017: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
      002FF4 90 08 48         [24] 5974 	mov	dptr,#_receiveDataBuffer
      002FF7 12 21 15         [24] 5975 	lcall	_DEBUG_OUT_USB_BUFFER
      002FFA D0 04            [24] 5976 	pop	ar4
      002FFC D0 05            [24] 5977 	pop	ar5
      002FFE D0 06            [24] 5978 	pop	ar6
                                   5979 ;	USBHost.c:1018: if (convertStringDescriptor(receiveDataBuffer, receiveDataBuffer, RECEIVE_BUFFER_LEN, rootHubIndex)) {
      003000 90 0B 4B         [24] 5980 	mov	dptr,#_convertStringDescriptor_PARM_2
      003003 74 48            [12] 5981 	mov	a,#_receiveDataBuffer
      003005 F0               [24] 5982 	movx	@dptr,a
      003006 74 08            [12] 5983 	mov	a,#(_receiveDataBuffer >> 8)
      003008 A3               [24] 5984 	inc	dptr
      003009 F0               [24] 5985 	movx	@dptr,a
      00300A 90 0B 4D         [24] 5986 	mov	dptr,#_convertStringDescriptor_PARM_3
      00300D E4               [12] 5987 	clr	a
      00300E F0               [24] 5988 	movx	@dptr,a
      00300F 74 02            [12] 5989 	mov	a,#0x02
      003011 A3               [24] 5990 	inc	dptr
      003012 F0               [24] 5991 	movx	@dptr,a
      003013 90 0B 4F         [24] 5992 	mov	dptr,#_convertStringDescriptor_PARM_4
      003016 EE               [12] 5993 	mov	a,r6
      003017 F0               [24] 5994 	movx	@dptr,a
      003018 90 08 48         [24] 5995 	mov	dptr,#_receiveDataBuffer
      00301B C0 06            [24] 5996 	push	ar6
      00301D C0 05            [24] 5997 	push	ar5
      00301F C0 04            [24] 5998 	push	ar4
      003021 12 20 3D         [24] 5999 	lcall	_convertStringDescriptor
                                   6000 ;	USBHost.c:1021: res = getConfigurationDescriptor();
      003024 12 21 4B         [24] 6001 	lcall	_getConfigurationDescriptor
      003027 AB 82            [24] 6002 	mov	r3,dpl
      003029 D0 04            [24] 6003 	pop	ar4
      00302B D0 05            [24] 6004 	pop	ar5
      00302D D0 06            [24] 6005 	pop	ar6
      00302F D0 07            [24] 6006 	pop	ar7
      003031 90 0B 92         [24] 6007 	mov	dptr,#_initializeRootHubConnection_res_65536_205
      003034 EB               [12] 6008 	mov	a,r3
      003035 F0               [24] 6009 	movx	@dptr,a
                                   6010 ;	USBHost.c:1022: if (res == ERR_SUCCESS) {
      003036 EB               [12] 6011 	mov	a,r3
      003037 60 03            [24] 6012 	jz	00251$
      003039 02 32 83         [24] 6013 	ljmp	00132$
      00303C                       6014 00251$:
                                   6015 ;	USBHost.c:1025: PXUSB_ITF_DESCR currentInterface = 0;
      00303C 90 0D 95         [24] 6016 	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
      00303F E4               [12] 6017 	clr	a
      003040 F0               [24] 6018 	movx	@dptr,a
      003041 A3               [24] 6019 	inc	dptr
      003042 F0               [24] 6020 	movx	@dptr,a
                                   6021 ;	USBHost.c:1028: for (i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++) {
      003043 7A 00            [12] 6022 	mov	r2,#0x00
      003045 7B 00            [12] 6023 	mov	r3,#0x00
      003047                       6024 00138$:
      003047 90 08 4A         [24] 6025 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      00304A E0               [24] 6026 	movx	a,@dptr
      00304B F9               [12] 6027 	mov	r1,a
      00304C 89 41            [24] 6028 	mov	_initializeRootHubConnection_sloc0_1_0,r1
      00304E 75 42 00         [24] 6029 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),#0x00
      003051 90 08 4B         [24] 6030 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      003054 E0               [24] 6031 	movx	a,@dptr
      003055 F9               [12] 6032 	mov	r1,a
      003056 E4               [12] 6033 	clr	a
      003057 25 41            [12] 6034 	add	a,_initializeRootHubConnection_sloc0_1_0
      003059 F5 41            [12] 6035 	mov	_initializeRootHubConnection_sloc0_1_0,a
      00305B E9               [12] 6036 	mov	a,r1
      00305C 35 42            [12] 6037 	addc	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
      00305E F5 42            [12] 6038 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      003060 8A 00            [24] 6039 	mov	ar0,r2
      003062 8B 01            [24] 6040 	mov	ar1,r3
      003064 C0 02            [24] 6041 	push	ar2
      003066 C0 03            [24] 6042 	push	ar3
      003068 AA 41            [24] 6043 	mov	r2,_initializeRootHubConnection_sloc0_1_0
      00306A AB 42            [24] 6044 	mov	r3,(_initializeRootHubConnection_sloc0_1_0 + 1)
      00306C C3               [12] 6045 	clr	c
      00306D E8               [12] 6046 	mov	a,r0
      00306E 9A               [12] 6047 	subb	a,r2
      00306F E9               [12] 6048 	mov	a,r1
      003070 9B               [12] 6049 	subb	a,r3
      003071 D0 03            [24] 6050 	pop	ar3
      003073 D0 02            [24] 6051 	pop	ar2
      003075 50 07            [24] 6052 	jnc	00108$
      003077 0A               [12] 6053 	inc	r2
      003078 BA 00 CC         [24] 6054 	cjne	r2,#0x00,00138$
      00307B 0B               [12] 6055 	inc	r3
      00307C 80 C9            [24] 6056 	sjmp	00138$
      00307E                       6057 00108$:
                                   6058 ;	USBHost.c:1033: cfg = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bConfigurationValue;
      00307E 90 08 4D         [24] 6059 	mov	dptr,#(_receiveDataBuffer + 0x0005)
      003081 E0               [24] 6060 	movx	a,@dptr
                                   6061 ;	USBHost.c:1039: res = setUsbConfig(cfg);
      003082 F5 82            [12] 6062 	mov	dpl,a
      003084 12 1F EB         [24] 6063 	lcall	_setUsbConfig
                                   6064 ;	USBHost.c:1041: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
      003087 90 08 4A         [24] 6065 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      00308A E0               [24] 6066 	movx	a,@dptr
      00308B FB               [12] 6067 	mov	r3,a
      00308C 7A 00            [12] 6068 	mov	r2,#0x00
      00308E 90 08 4B         [24] 6069 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      003091 E0               [24] 6070 	movx	a,@dptr
      003092 F9               [12] 6071 	mov	r1,a
      003093 E4               [12] 6072 	clr	a
      003094 2B               [12] 6073 	add	a,r3
      003095 FB               [12] 6074 	mov	r3,a
      003096 E9               [12] 6075 	mov	a,r1
      003097 3A               [12] 6076 	addc	a,r2
      003098 FA               [12] 6077 	mov	r2,a
      003099 8B 49            [24] 6078 	mov	_initializeRootHubConnection_sloc6_1_0,r3
      00309B 8A 4A            [24] 6079 	mov	(_initializeRootHubConnection_sloc6_1_0 + 1),r2
                                   6080 ;	USBHost.c:1042: for (i = 0; i < total; i++) {
      00309D 78 00            [12] 6081 	mov	r0,#0x00
      00309F 79 00            [12] 6082 	mov	r1,#0x00
      0030A1                       6083 00141$:
      0030A1 C3               [12] 6084 	clr	c
      0030A2 E8               [12] 6085 	mov	a,r0
      0030A3 95 49            [12] 6086 	subb	a,_initializeRootHubConnection_sloc6_1_0
      0030A5 E9               [12] 6087 	mov	a,r1
      0030A6 95 4A            [12] 6088 	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
      0030A8 50 24            [24] 6089 	jnc	00109$
                                   6090 ;	USBHost.c:1043: temp[i] = receiveDataBuffer[i];
      0030AA E8               [12] 6091 	mov	a,r0
      0030AB 24 95            [12] 6092 	add	a,#_initializeRootHubConnection_temp_458752_216
      0030AD F5 41            [12] 6093 	mov	_initializeRootHubConnection_sloc0_1_0,a
      0030AF E9               [12] 6094 	mov	a,r1
      0030B0 34 0B            [12] 6095 	addc	a,#(_initializeRootHubConnection_temp_458752_216 >> 8)
      0030B2 F5 42            [12] 6096 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      0030B4 E8               [12] 6097 	mov	a,r0
      0030B5 24 48            [12] 6098 	add	a,#_receiveDataBuffer
      0030B7 F5 82            [12] 6099 	mov	dpl,a
      0030B9 E9               [12] 6100 	mov	a,r1
      0030BA 34 08            [12] 6101 	addc	a,#(_receiveDataBuffer >> 8)
      0030BC F5 83            [12] 6102 	mov	dph,a
      0030BE E0               [24] 6103 	movx	a,@dptr
      0030BF FB               [12] 6104 	mov	r3,a
      0030C0 85 41 82         [24] 6105 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      0030C3 85 42 83         [24] 6106 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      0030C6 F0               [24] 6107 	movx	@dptr,a
                                   6108 ;	USBHost.c:1042: for (i = 0; i < total; i++) {
      0030C7 08               [12] 6109 	inc	r0
      0030C8 B8 00 D6         [24] 6110 	cjne	r0,#0x00,00141$
      0030CB 09               [12] 6111 	inc	r1
      0030CC 80 D3            [24] 6112 	sjmp	00141$
      0030CE                       6113 00109$:
                                   6114 ;	USBHost.c:1046: i = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bLength;
      0030CE 90 08 48         [24] 6115 	mov	dptr,#_receiveDataBuffer
      0030D1 E0               [24] 6116 	movx	a,@dptr
      0030D2 F9               [12] 6117 	mov	r1,a
      0030D3 90 0B 93         [24] 6118 	mov	dptr,#_initializeRootHubConnection_i_458752_216
      0030D6 F0               [24] 6119 	movx	@dptr,a
      0030D7 E4               [12] 6120 	clr	a
      0030D8 A3               [24] 6121 	inc	dptr
      0030D9 F0               [24] 6122 	movx	@dptr,a
                                   6123 ;	USBHost.c:1047: while (i < total) {
      0030DA 90 0B 91         [24] 6124 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
      0030DD E0               [24] 6125 	movx	a,@dptr
      0030DE F5 4B            [12] 6126 	mov	_initializeRootHubConnection_sloc7_1_0,a
      0030E0 85 4B 46         [24] 6127 	mov	_initializeRootHubConnection_sloc4_1_0,_initializeRootHubConnection_sloc7_1_0
      0030E3                       6128 00124$:
      0030E3 90 0B 93         [24] 6129 	mov	dptr,#_initializeRootHubConnection_i_458752_216
      0030E6 E0               [24] 6130 	movx	a,@dptr
      0030E7 F5 41            [12] 6131 	mov	_initializeRootHubConnection_sloc0_1_0,a
      0030E9 A3               [24] 6132 	inc	dptr
      0030EA E0               [24] 6133 	movx	a,@dptr
      0030EB F5 42            [12] 6134 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      0030ED C3               [12] 6135 	clr	c
      0030EE E5 41            [12] 6136 	mov	a,_initializeRootHubConnection_sloc0_1_0
      0030F0 95 49            [12] 6137 	subb	a,_initializeRootHubConnection_sloc6_1_0
      0030F2 E5 42            [12] 6138 	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
      0030F4 95 4A            [12] 6139 	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
      0030F6 40 03            [24] 6140 	jc	00256$
      0030F8 02 32 7F         [24] 6141 	ljmp	00126$
      0030FB                       6142 00256$:
                                   6143 ;	USBHost.c:1048: uint8_t __xdata *desc = &(temp[i]);
      0030FB E5 41            [12] 6144 	mov	a,_initializeRootHubConnection_sloc0_1_0
      0030FD 24 95            [12] 6145 	add	a,#_initializeRootHubConnection_temp_458752_216
      0030FF F5 41            [12] 6146 	mov	_initializeRootHubConnection_sloc0_1_0,a
      003101 E5 42            [12] 6147 	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003103 34 0B            [12] 6148 	addc	a,#(_initializeRootHubConnection_temp_458752_216 >> 8)
      003105 F5 42            [12] 6149 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
      003107 90 0D 97         [24] 6150 	mov	dptr,#_initializeRootHubConnection_desc_524288_221
      00310A E5 41            [12] 6151 	mov	a,_initializeRootHubConnection_sloc0_1_0
      00310C F0               [24] 6152 	movx	@dptr,a
      00310D E5 42            [12] 6153 	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
      00310F A3               [24] 6154 	inc	dptr
      003110 F0               [24] 6155 	movx	@dptr,a
                                   6156 ;	USBHost.c:1049: switch (desc[1]) {
      003111 85 41 82         [24] 6157 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      003114 85 42 83         [24] 6158 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003117 A3               [24] 6159 	inc	dptr
      003118 E0               [24] 6160 	movx	a,@dptr
      003119 F5 45            [12] 6161 	mov	_initializeRootHubConnection_sloc3_1_0,a
      00311B 74 04            [12] 6162 	mov	a,#0x04
      00311D B5 45 02         [24] 6163 	cjne	a,_initializeRootHubConnection_sloc3_1_0,00257$
      003120 80 22            [24] 6164 	sjmp	00110$
      003122                       6165 00257$:
      003122 74 05            [12] 6166 	mov	a,#0x05
      003124 B5 45 02         [24] 6167 	cjne	a,_initializeRootHubConnection_sloc3_1_0,00258$
      003127 80 38            [24] 6168 	sjmp	00111$
      003129                       6169 00258$:
      003129 74 21            [12] 6170 	mov	a,#0x21
      00312B B5 45 03         [24] 6171 	cjne	a,_initializeRootHubConnection_sloc3_1_0,00259$
      00312E 02 32 1A         [24] 6172 	ljmp	00119$
      003131                       6173 00259$:
      003131 74 24            [12] 6174 	mov	a,#0x24
      003133 B5 45 03         [24] 6175 	cjne	a,_initializeRootHubConnection_sloc3_1_0,00260$
      003136 02 32 37         [24] 6176 	ljmp	00120$
      003139                       6177 00260$:
      003139 74 25            [12] 6178 	mov	a,#0x25
      00313B B5 45 03         [24] 6179 	cjne	a,_initializeRootHubConnection_sloc3_1_0,00261$
      00313E 02 32 42         [24] 6180 	ljmp	00121$
      003141                       6181 00261$:
      003141 02 32 4D         [24] 6182 	ljmp	00122$
                                   6183 ;	USBHost.c:1050: case USB_DESCR_TYP_INTERF:
      003144                       6184 00110$:
                                   6185 ;	USBHost.c:1052: currentInterface = ((PXUSB_ITF_DESCR)desc);
      003144 A8 41            [24] 6186 	mov	r0,_initializeRootHubConnection_sloc0_1_0
      003146 A9 42            [24] 6187 	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003148 90 0D 95         [24] 6188 	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
      00314B E8               [12] 6189 	mov	a,r0
      00314C F0               [24] 6190 	movx	@dptr,a
      00314D E9               [12] 6191 	mov	a,r1
      00314E A3               [24] 6192 	inc	dptr
      00314F F0               [24] 6193 	movx	@dptr,a
                                   6194 ;	USBHost.c:1053: readInterface(rootHubIndex, currentInterface);
      003150 90 0B 8D         [24] 6195 	mov	dptr,#_readInterface_PARM_2
      003153 E8               [12] 6196 	mov	a,r0
      003154 F0               [24] 6197 	movx	@dptr,a
      003155 E9               [12] 6198 	mov	a,r1
      003156 A3               [24] 6199 	inc	dptr
      003157 F0               [24] 6200 	movx	@dptr,a
      003158 85 46 82         [24] 6201 	mov	dpl,_initializeRootHubConnection_sloc4_1_0
      00315B 12 2E 2E         [24] 6202 	lcall	_readInterface
                                   6203 ;	USBHost.c:1054: break;
      00315E 02 32 56         [24] 6204 	ljmp	00123$
                                   6205 ;	USBHost.c:1055: case USB_DESCR_TYP_ENDP:
      003161                       6206 00111$:
                                   6207 ;	USBHost.c:1057: DEBUG_OUT_USB_BUFFER(desc);
      003161 85 41 82         [24] 6208 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      003164 85 42 83         [24] 6209 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003167 12 21 15         [24] 6210 	lcall	_DEBUG_OUT_USB_BUFFER
                                   6211 ;	USBHost.c:1058: if (currentInterface->bInterfaceClass == USB_DEV_CLASS_HID) {
      00316A 90 0D 95         [24] 6212 	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
      00316D E0               [24] 6213 	movx	a,@dptr
      00316E F8               [12] 6214 	mov	r0,a
      00316F A3               [24] 6215 	inc	dptr
      003170 E0               [24] 6216 	movx	a,@dptr
      003171 F9               [12] 6217 	mov	r1,a
      003172 88 82            [24] 6218 	mov	dpl,r0
      003174 89 83            [24] 6219 	mov	dph,r1
      003176 A3               [24] 6220 	inc	dptr
      003177 A3               [24] 6221 	inc	dptr
      003178 A3               [24] 6222 	inc	dptr
      003179 A3               [24] 6223 	inc	dptr
      00317A A3               [24] 6224 	inc	dptr
      00317B E0               [24] 6225 	movx	a,@dptr
      00317C F9               [12] 6226 	mov	r1,a
      00317D B9 03 02         [24] 6227 	cjne	r1,#0x03,00262$
      003180 80 03            [24] 6228 	sjmp	00263$
      003182                       6229 00262$:
      003182 02 32 56         [24] 6230 	ljmp	00123$
      003185                       6231 00263$:
                                   6232 ;	USBHost.c:1059: PXUSB_ENDP_DESCR d = (PXUSB_ENDP_DESCR)desc;
      003185 A8 41            [24] 6233 	mov	r0,_initializeRootHubConnection_sloc0_1_0
      003187 A9 42            [24] 6234 	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
                                   6235 ;	USBHost.c:1060: if (d->bEndpointAddress & 0x80) {
      003189 74 02            [12] 6236 	mov	a,#0x02
      00318B 28               [12] 6237 	add	a,r0
      00318C F5 47            [12] 6238 	mov	_initializeRootHubConnection_sloc5_1_0,a
      00318E E4               [12] 6239 	clr	a
      00318F 39               [12] 6240 	addc	a,r1
      003190 F5 48            [12] 6241 	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
      003192 85 47 82         [24] 6242 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      003195 85 48 83         [24] 6243 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      003198 E0               [24] 6244 	movx	a,@dptr
      003199 F9               [12] 6245 	mov	r1,a
      00319A 20 E7 03         [24] 6246 	jb	acc.7,00264$
      00319D 02 32 56         [24] 6247 	ljmp	00123$
      0031A0                       6248 00264$:
                                   6249 ;	USBHost.c:1062: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0031A0 78 00            [12] 6250 	mov	r0,#0x00
      0031A2                       6251 00143$:
                                   6252 ;	USBHost.c:1063: if (HIDdevice[hiddevice].connected == 0) {
      0031A2 E8               [12] 6253 	mov	a,r0
      0031A3 75 F0 16         [24] 6254 	mov	b,#0x16
      0031A6 A4               [48] 6255 	mul	ab
      0031A7 24 48            [12] 6256 	add	a,#_HIDdevice
      0031A9 F9               [12] 6257 	mov	r1,a
      0031AA 74 0A            [12] 6258 	mov	a,#(_HIDdevice >> 8)
      0031AC 35 F0            [12] 6259 	addc	a,b
      0031AE FB               [12] 6260 	mov	r3,a
      0031AF 89 82            [24] 6261 	mov	dpl,r1
      0031B1 8B 83            [24] 6262 	mov	dph,r3
      0031B3 E0               [24] 6263 	movx	a,@dptr
      0031B4 60 06            [24] 6264 	jz	00114$
                                   6265 ;	USBHost.c:1062: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
      0031B6 08               [12] 6266 	inc	r0
      0031B7 B8 08 00         [24] 6267 	cjne	r0,#0x08,00266$
      0031BA                       6268 00266$:
      0031BA 40 E6            [24] 6269 	jc	00143$
      0031BC                       6270 00114$:
                                   6271 ;	USBHost.c:1068: HIDdevice[hiddevice].endPoint = d->bEndpointAddress;
      0031BC E8               [12] 6272 	mov	a,r0
      0031BD 75 F0 16         [24] 6273 	mov	b,#0x16
      0031C0 A4               [48] 6274 	mul	ab
      0031C1 24 48            [12] 6275 	add	a,#_HIDdevice
      0031C3 F5 4C            [12] 6276 	mov	_initializeRootHubConnection_sloc8_1_0,a
      0031C5 74 0A            [12] 6277 	mov	a,#(_HIDdevice >> 8)
      0031C7 35 F0            [12] 6278 	addc	a,b
      0031C9 F5 4D            [12] 6279 	mov	(_initializeRootHubConnection_sloc8_1_0 + 1),a
      0031CB 74 03            [12] 6280 	mov	a,#0x03
      0031CD 25 4C            [12] 6281 	add	a,_initializeRootHubConnection_sloc8_1_0
      0031CF F9               [12] 6282 	mov	r1,a
      0031D0 E4               [12] 6283 	clr	a
      0031D1 35 4D            [12] 6284 	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0031D3 FB               [12] 6285 	mov	r3,a
      0031D4 85 47 82         [24] 6286 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      0031D7 85 48 83         [24] 6287 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      0031DA E0               [24] 6288 	movx	a,@dptr
      0031DB 89 82            [24] 6289 	mov	dpl,r1
      0031DD 8B 83            [24] 6290 	mov	dph,r3
      0031DF F0               [24] 6291 	movx	@dptr,a
                                   6292 ;	USBHost.c:1069: HIDdevice[hiddevice].connected = 1;
      0031E0 85 4C 82         [24] 6293 	mov	dpl,_initializeRootHubConnection_sloc8_1_0
      0031E3 85 4D 83         [24] 6294 	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0031E6 74 01            [12] 6295 	mov	a,#0x01
      0031E8 F0               [24] 6296 	movx	@dptr,a
                                   6297 ;	USBHost.c:1070: HIDdevice[hiddevice].interface = currentInterface->bInterfaceNumber;
      0031E9 04               [12] 6298 	inc	a
      0031EA 25 4C            [12] 6299 	add	a,_initializeRootHubConnection_sloc8_1_0
      0031EC F5 47            [12] 6300 	mov	_initializeRootHubConnection_sloc5_1_0,a
      0031EE E4               [12] 6301 	clr	a
      0031EF 35 4D            [12] 6302 	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0031F1 F5 48            [12] 6303 	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
      0031F3 90 0D 95         [24] 6304 	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
      0031F6 E0               [24] 6305 	movx	a,@dptr
      0031F7 F9               [12] 6306 	mov	r1,a
      0031F8 A3               [24] 6307 	inc	dptr
      0031F9 E0               [24] 6308 	movx	a,@dptr
      0031FA FB               [12] 6309 	mov	r3,a
      0031FB 89 82            [24] 6310 	mov	dpl,r1
      0031FD 8B 83            [24] 6311 	mov	dph,r3
      0031FF A3               [24] 6312 	inc	dptr
      003200 A3               [24] 6313 	inc	dptr
      003201 E0               [24] 6314 	movx	a,@dptr
      003202 85 47 82         [24] 6315 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      003205 85 48 83         [24] 6316 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      003208 F0               [24] 6317 	movx	@dptr,a
                                   6318 ;	USBHost.c:1071: HIDdevice[hiddevice].rootHub = rootHubIndex;
      003209 85 4C 82         [24] 6319 	mov	dpl,_initializeRootHubConnection_sloc8_1_0
      00320C 85 4D 83         [24] 6320 	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
      00320F A3               [24] 6321 	inc	dptr
      003210 E5 4B            [12] 6322 	mov	a,_initializeRootHubConnection_sloc7_1_0
      003212 F0               [24] 6323 	movx	@dptr,a
                                   6324 ;	USBHost.c:1073: getHIDDeviceReport(hiddevice);
      003213 88 82            [24] 6325 	mov	dpl,r0
      003215 12 2D 60         [24] 6326 	lcall	_getHIDDeviceReport
                                   6327 ;	USBHost.c:1076: break;
                                   6328 ;	USBHost.c:1077: case USB_DESCR_TYP_HID:
      003218 80 3C            [24] 6329 	sjmp	00123$
      00321A                       6330 00119$:
                                   6331 ;	USBHost.c:1079: readHIDInterface(currentInterface, (PXUSB_HID_DESCR)desc);
      00321A 90 0D 95         [24] 6332 	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
      00321D E0               [24] 6333 	movx	a,@dptr
      00321E FA               [12] 6334 	mov	r2,a
      00321F A3               [24] 6335 	inc	dptr
      003220 E0               [24] 6336 	movx	a,@dptr
      003221 FB               [12] 6337 	mov	r3,a
      003222 A8 41            [24] 6338 	mov	r0,_initializeRootHubConnection_sloc0_1_0
      003224 A9 42            [24] 6339 	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003226 90 0B 8F         [24] 6340 	mov	dptr,#_readHIDInterface_PARM_2
      003229 E8               [12] 6341 	mov	a,r0
      00322A F0               [24] 6342 	movx	@dptr,a
      00322B E9               [12] 6343 	mov	a,r1
      00322C A3               [24] 6344 	inc	dptr
      00322D F0               [24] 6345 	movx	@dptr,a
      00322E 8A 82            [24] 6346 	mov	dpl,r2
      003230 8B 83            [24] 6347 	mov	dph,r3
      003232 12 2E 2F         [24] 6348 	lcall	_readHIDInterface
                                   6349 ;	USBHost.c:1080: break;
                                   6350 ;	USBHost.c:1081: case USB_DESCR_TYP_CS_INTF:
      003235 80 1F            [24] 6351 	sjmp	00123$
      003237                       6352 00120$:
                                   6353 ;	USBHost.c:1083: DEBUG_OUT_USB_BUFFER(desc);
      003237 85 41 82         [24] 6354 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      00323A 85 42 83         [24] 6355 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      00323D 12 21 15         [24] 6356 	lcall	_DEBUG_OUT_USB_BUFFER
                                   6357 ;	USBHost.c:1084: break;
                                   6358 ;	USBHost.c:1085: case USB_DESCR_TYP_CS_ENDP:
      003240 80 14            [24] 6359 	sjmp	00123$
      003242                       6360 00121$:
                                   6361 ;	USBHost.c:1087: DEBUG_OUT_USB_BUFFER(desc);
      003242 85 41 82         [24] 6362 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      003245 85 42 83         [24] 6363 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003248 12 21 15         [24] 6364 	lcall	_DEBUG_OUT_USB_BUFFER
                                   6365 ;	USBHost.c:1088: break;
                                   6366 ;	USBHost.c:1089: default:
      00324B 80 09            [24] 6367 	sjmp	00123$
      00324D                       6368 00122$:
                                   6369 ;	USBHost.c:1091: DEBUG_OUT_USB_BUFFER(desc);
      00324D 85 41 82         [24] 6370 	mov	dpl,_initializeRootHubConnection_sloc0_1_0
      003250 85 42 83         [24] 6371 	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003253 12 21 15         [24] 6372 	lcall	_DEBUG_OUT_USB_BUFFER
                                   6373 ;	USBHost.c:1092: }
      003256                       6374 00123$:
                                   6375 ;	USBHost.c:1093: i += desc[0];
      003256 90 0D 97         [24] 6376 	mov	dptr,#_initializeRootHubConnection_desc_524288_221
      003259 E0               [24] 6377 	movx	a,@dptr
      00325A FA               [12] 6378 	mov	r2,a
      00325B A3               [24] 6379 	inc	dptr
      00325C E0               [24] 6380 	movx	a,@dptr
      00325D FB               [12] 6381 	mov	r3,a
      00325E 8A 82            [24] 6382 	mov	dpl,r2
      003260 8B 83            [24] 6383 	mov	dph,r3
      003262 E0               [24] 6384 	movx	a,@dptr
      003263 FA               [12] 6385 	mov	r2,a
      003264 7B 00            [12] 6386 	mov	r3,#0x00
      003266 90 0B 93         [24] 6387 	mov	dptr,#_initializeRootHubConnection_i_458752_216
      003269 E0               [24] 6388 	movx	a,@dptr
      00326A F8               [12] 6389 	mov	r0,a
      00326B A3               [24] 6390 	inc	dptr
      00326C E0               [24] 6391 	movx	a,@dptr
      00326D F9               [12] 6392 	mov	r1,a
      00326E EA               [12] 6393 	mov	a,r2
      00326F 28               [12] 6394 	add	a,r0
      003270 F8               [12] 6395 	mov	r0,a
      003271 EB               [12] 6396 	mov	a,r3
      003272 39               [12] 6397 	addc	a,r1
      003273 F9               [12] 6398 	mov	r1,a
      003274 90 0B 93         [24] 6399 	mov	dptr,#_initializeRootHubConnection_i_458752_216
      003277 E8               [12] 6400 	mov	a,r0
      003278 F0               [24] 6401 	movx	@dptr,a
      003279 E9               [12] 6402 	mov	a,r1
      00327A A3               [24] 6403 	inc	dptr
      00327B F0               [24] 6404 	movx	@dptr,a
      00327C 02 30 E3         [24] 6405 	ljmp	00124$
      00327F                       6406 00126$:
                                   6407 ;	USBHost.c:1095: return ERR_SUCCESS;
      00327F 75 82 00         [24] 6408 	mov	dpl,#0x00
      003282 22               [24] 6409 	ret
      003283                       6410 00132$:
                                   6411 ;	USBHost.c:1101: rootHubDevice[rootHubIndex].status = ROOT_DEVICE_FAILED;
      003283 EC               [12] 6412 	mov	a,r4
      003284 24 18            [12] 6413 	add	a,#_rootHubDevice
      003286 F5 82            [12] 6414 	mov	dpl,a
      003288 ED               [12] 6415 	mov	a,r5
      003289 34 0B            [12] 6416 	addc	a,#(_rootHubDevice >> 8)
      00328B F5 83            [12] 6417 	mov	dph,a
      00328D 74 02            [12] 6418 	mov	a,#0x02
      00328F F0               [24] 6419 	movx	@dptr,a
                                   6420 ;	USBHost.c:1102: setUsbSpeed(1); // TODO define speeds
      003290 75 82 01         [24] 6421 	mov	dpl,#0x01
      003293 C0 07            [24] 6422 	push	ar7
      003295 C0 06            [24] 6423 	push	ar6
      003297 C0 05            [24] 6424 	push	ar5
      003299 C0 04            [24] 6425 	push	ar4
      00329B 12 19 01         [24] 6426 	lcall	_setUsbSpeed
      00329E D0 04            [24] 6427 	pop	ar4
      0032A0 D0 05            [24] 6428 	pop	ar5
      0032A2 D0 06            [24] 6429 	pop	ar6
      0032A4 D0 07            [24] 6430 	pop	ar7
      0032A6                       6431 00133$:
                                   6432 ;	USBHost.c:976: for (retry = 0; retry < 10; retry++) { // todo test fewer retries
      0032A6 05 43            [12] 6433 	inc	_initializeRootHubConnection_sloc1_1_0
      0032A8 74 F6            [12] 6434 	mov	a,#0x100 - 0x0a
      0032AA 25 43            [12] 6435 	add	a,_initializeRootHubConnection_sloc1_1_0
      0032AC 40 03            [24] 6436 	jc	00268$
      0032AE 02 2E 4D         [24] 6437 	ljmp	00145$
      0032B1                       6438 00268$:
                                   6439 ;	USBHost.c:1104: return res;
      0032B1 90 0B 92         [24] 6440 	mov	dptr,#_initializeRootHubConnection_res_65536_205
      0032B4 E0               [24] 6441 	movx	a,@dptr
                                   6442 ;	USBHost.c:1105: }
      0032B5 F5 82            [12] 6443 	mov	dpl,a
      0032B7 22               [24] 6444 	ret
                                   6445 ;------------------------------------------------------------
                                   6446 ;Allocation info for local variables in function 'checkRootHubConnections'
                                   6447 ;------------------------------------------------------------
                                   6448 ;res                       Allocated with name '_checkRootHubConnections_res_65536_228'
                                   6449 ;------------------------------------------------------------
                                   6450 ;	USBHost.c:1107: uint8_t checkRootHubConnections()
                                   6451 ;	-----------------------------------------
                                   6452 ;	 function checkRootHubConnections
                                   6453 ;	-----------------------------------------
      0032B8                       6454 _checkRootHubConnections:
                                   6455 ;	USBHost.c:1109: __xdata uint8_t res = ERR_SUCCESS;
      0032B8 90 0D 99         [24] 6456 	mov	dptr,#_checkRootHubConnections_res_65536_228
      0032BB E4               [12] 6457 	clr	a
      0032BC F0               [24] 6458 	movx	@dptr,a
                                   6459 ;	USBHost.c:1111: if (UIF_DETECT) {
                                   6460 ;	USBHost.c:1112: UIF_DETECT = 0;
                                   6461 ;	assignBit
      0032BD 10 D8 03         [24] 6462 	jbc	_UIF_DETECT,00149$
      0032C0 02 33 5B         [24] 6463 	ljmp	00118$
      0032C3                       6464 00149$:
                                   6465 ;	USBHost.c:1113: if (USB_HUB_ST & bUHS_H0_ATTACH) {
      0032C3 E5 DB            [12] 6466 	mov	a,_USB_HUB_ST
      0032C5 30 E3 28         [24] 6467 	jnb	acc.3,00107$
                                   6468 ;	USBHost.c:1114: if (rootHubDevice[0].status == ROOT_DEVICE_DISCONNECT || (UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
      0032C8 90 0B 18         [24] 6469 	mov	dptr,#_rootHubDevice
      0032CB E0               [24] 6470 	movx	a,@dptr
      0032CC 60 05            [24] 6471 	jz	00101$
      0032CE E5 E4            [12] 6472 	mov	a,_UDEV_CTRL
      0032D0 20 E0 3C         [24] 6473 	jb	acc.0,00108$
      0032D3                       6474 00101$:
                                   6475 ;	USBHost.c:1115: disableRootHubPort(0); // todo really need to reset register?
      0032D3 75 82 00         [24] 6476 	mov	dpl,#0x00
      0032D6 12 18 81         [24] 6477 	lcall	_disableRootHubPort
                                   6478 ;	USBHost.c:1116: rootHubDevice[0].status = ROOT_DEVICE_CONNECTED;
      0032D9 90 0B 18         [24] 6479 	mov	dptr,#_rootHubDevice
      0032DC 74 01            [12] 6480 	mov	a,#0x01
      0032DE F0               [24] 6481 	movx	@dptr,a
                                   6482 ;	USBHost.c:1118: flash_led(); // Подключено устройство.
      0032DF 12 04 2F         [24] 6483 	lcall	_flash_led
                                   6484 ;	USBHost.c:1119: res = initializeRootHubConnection(0);
      0032E2 75 82 00         [24] 6485 	mov	dpl,#0x00
      0032E5 12 2E 30         [24] 6486 	lcall	_initializeRootHubConnection
      0032E8 E5 82            [12] 6487 	mov	a,dpl
      0032EA 90 0D 99         [24] 6488 	mov	dptr,#_checkRootHubConnections_res_65536_228
      0032ED F0               [24] 6489 	movx	@dptr,a
      0032EE 80 1F            [24] 6490 	sjmp	00108$
      0032F0                       6491 00107$:
                                   6492 ;	USBHost.c:1121: } else if (rootHubDevice[0].status >= ROOT_DEVICE_CONNECTED) {
      0032F0 90 0B 18         [24] 6493 	mov	dptr,#_rootHubDevice
      0032F3 E0               [24] 6494 	movx	a,@dptr
      0032F4 FF               [12] 6495 	mov	r7,a
      0032F5 BF 01 00         [24] 6496 	cjne	r7,#0x01,00153$
      0032F8                       6497 00153$:
      0032F8 40 15            [24] 6498 	jc	00108$
                                   6499 ;	USBHost.c:1122: resetHubDevices(0);
      0032FA 75 82 00         [24] 6500 	mov	dpl,#0x00
      0032FD 12 21 F0         [24] 6501 	lcall	_resetHubDevices
                                   6502 ;	USBHost.c:1123: disableRootHubPort(0);
      003300 75 82 00         [24] 6503 	mov	dpl,#0x00
      003303 12 18 81         [24] 6504 	lcall	_disableRootHubPort
                                   6505 ;	USBHost.c:1125: flash_led(); // Отключено устройство.
      003306 12 04 2F         [24] 6506 	lcall	_flash_led
                                   6507 ;	USBHost.c:1126: res = ERR_USB_DISCON;
      003309 90 0D 99         [24] 6508 	mov	dptr,#_checkRootHubConnections_res_65536_228
      00330C 74 16            [12] 6509 	mov	a,#0x16
      00330E F0               [24] 6510 	movx	@dptr,a
      00330F                       6511 00108$:
                                   6512 ;	USBHost.c:1129: if (USB_HUB_ST & bUHS_H1_ATTACH) {
      00330F E5 DB            [12] 6513 	mov	a,_USB_HUB_ST
      003311 30 E7 28         [24] 6514 	jnb	acc.7,00115$
                                   6515 ;	USBHost.c:1130: if (rootHubDevice[1].status == ROOT_DEVICE_DISCONNECT || (UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
      003314 90 0B 1B         [24] 6516 	mov	dptr,#(_rootHubDevice + 0x0003)
      003317 E0               [24] 6517 	movx	a,@dptr
      003318 60 05            [24] 6518 	jz	00109$
      00331A E5 E5            [12] 6519 	mov	a,_UHUB1_CTRL
      00331C 20 E0 3C         [24] 6520 	jb	acc.0,00118$
      00331F                       6521 00109$:
                                   6522 ;	USBHost.c:1131: disableRootHubPort(1); // todo really need to reset register?
      00331F 75 82 01         [24] 6523 	mov	dpl,#0x01
      003322 12 18 81         [24] 6524 	lcall	_disableRootHubPort
                                   6525 ;	USBHost.c:1132: rootHubDevice[1].status = ROOT_DEVICE_CONNECTED;
      003325 90 0B 1B         [24] 6526 	mov	dptr,#(_rootHubDevice + 0x0003)
      003328 74 01            [12] 6527 	mov	a,#0x01
      00332A F0               [24] 6528 	movx	@dptr,a
                                   6529 ;	USBHost.c:1134: flash_led(); // Подключено устройство.
      00332B 12 04 2F         [24] 6530 	lcall	_flash_led
                                   6531 ;	USBHost.c:1135: res = initializeRootHubConnection(1);
      00332E 75 82 01         [24] 6532 	mov	dpl,#0x01
      003331 12 2E 30         [24] 6533 	lcall	_initializeRootHubConnection
      003334 E5 82            [12] 6534 	mov	a,dpl
      003336 90 0D 99         [24] 6535 	mov	dptr,#_checkRootHubConnections_res_65536_228
      003339 F0               [24] 6536 	movx	@dptr,a
      00333A 80 1F            [24] 6537 	sjmp	00118$
      00333C                       6538 00115$:
                                   6539 ;	USBHost.c:1137: } else if (rootHubDevice[1].status >= ROOT_DEVICE_CONNECTED) {
      00333C 90 0B 1B         [24] 6540 	mov	dptr,#(_rootHubDevice + 0x0003)
      00333F E0               [24] 6541 	movx	a,@dptr
      003340 FF               [12] 6542 	mov	r7,a
      003341 BF 01 00         [24] 6543 	cjne	r7,#0x01,00158$
      003344                       6544 00158$:
      003344 40 15            [24] 6545 	jc	00118$
                                   6546 ;	USBHost.c:1138: resetHubDevices(1);
      003346 75 82 01         [24] 6547 	mov	dpl,#0x01
      003349 12 21 F0         [24] 6548 	lcall	_resetHubDevices
                                   6549 ;	USBHost.c:1139: disableRootHubPort(1);
      00334C 75 82 01         [24] 6550 	mov	dpl,#0x01
      00334F 12 18 81         [24] 6551 	lcall	_disableRootHubPort
                                   6552 ;	USBHost.c:1141: flash_led(); // Отключено устройство.
      003352 12 04 2F         [24] 6553 	lcall	_flash_led
                                   6554 ;	USBHost.c:1142: res = ERR_USB_DISCON;
      003355 90 0D 99         [24] 6555 	mov	dptr,#_checkRootHubConnections_res_65536_228
      003358 74 16            [12] 6556 	mov	a,#0x16
      00335A F0               [24] 6557 	movx	@dptr,a
      00335B                       6558 00118$:
                                   6559 ;	USBHost.c:1145: return res;
      00335B 90 0D 99         [24] 6560 	mov	dptr,#_checkRootHubConnections_res_65536_228
      00335E E0               [24] 6561 	movx	a,@dptr
                                   6562 ;	USBHost.c:1146: }
      00335F F5 82            [12] 6563 	mov	dpl,a
      003361 22               [24] 6564 	ret
                                   6565 	.area CSEG    (CODE)
                                   6566 	.area CONST   (CODE)
      0034D9                       6567 _GetDeviceDescriptorRequest:
      0034D9 80                    6568 	.db #0x80	; 128
      0034DA 06                    6569 	.db #0x06	; 6
      0034DB 00                    6570 	.db #0x00	; 0
      0034DC 01                    6571 	.db #0x01	; 1
      0034DD 00                    6572 	.db #0x00	; 0
      0034DE 00                    6573 	.db #0x00	; 0
      0034DF 12                    6574 	.db #0x12	; 18
      0034E0 00                    6575 	.db #0x00	; 0
      0034E1                       6576 _GetConfigurationDescriptorRequest:
      0034E1 80                    6577 	.db #0x80	; 128
      0034E2 06                    6578 	.db #0x06	; 6
      0034E3 00                    6579 	.db #0x00	; 0
      0034E4 02                    6580 	.db #0x02	; 2
      0034E5 00                    6581 	.db #0x00	; 0
      0034E6 00                    6582 	.db #0x00	; 0
      0034E7 12                    6583 	.db #0x12	; 18
      0034E8 00                    6584 	.db #0x00	; 0
      0034E9                       6585 _GetInterfaceDescriptorRequest:
      0034E9 81                    6586 	.db #0x81	; 129
      0034EA 06                    6587 	.db #0x06	; 6
      0034EB 00                    6588 	.db #0x00	; 0
      0034EC 04                    6589 	.db #0x04	; 4
      0034ED 00                    6590 	.db #0x00	; 0
      0034EE 00                    6591 	.db #0x00	; 0
      0034EF 09                    6592 	.db #0x09	; 9
      0034F0 00                    6593 	.db #0x00	; 0
      0034F1                       6594 _SetUSBAddressRequest:
      0034F1 00                    6595 	.db #0x00	; 0
      0034F2 05                    6596 	.db #0x05	; 5
      0034F3 02                    6597 	.db #0x02	; 2
      0034F4 00                    6598 	.db #0x00	; 0
      0034F5 00                    6599 	.db #0x00	; 0
      0034F6 00                    6600 	.db #0x00	; 0
      0034F7 00                    6601 	.db #0x00	; 0
      0034F8 00                    6602 	.db #0x00	; 0
      0034F9                       6603 _GetDeviceStringRequest:
      0034F9 80                    6604 	.db #0x80	; 128
      0034FA 06                    6605 	.db #0x06	; 6
      0034FB 02                    6606 	.db #0x02	; 2
      0034FC 03                    6607 	.db #0x03	; 3
      0034FD 09                    6608 	.db #0x09	; 9
      0034FE 04                    6609 	.db #0x04	; 4
      0034FF 02                    6610 	.db #0x02	; 2
      003500 04                    6611 	.db #0x04	; 4
      003501                       6612 _SetupSetUsbConfig:
      003501 00                    6613 	.db #0x00	; 0
      003502 09                    6614 	.db #0x09	; 9
      003503 00                    6615 	.db #0x00	; 0
      003504 00                    6616 	.db #0x00	; 0
      003505 00                    6617 	.db #0x00	; 0
      003506 00                    6618 	.db #0x00	; 0
      003507 00                    6619 	.db #0x00	; 0
      003508 00                    6620 	.db #0x00	; 0
      003509                       6621 _SetHIDIdleRequest:
      003509 21                    6622 	.db #0x21	; 33
      00350A 0A                    6623 	.db #0x0a	; 10
      00350B 00                    6624 	.db #0x00	; 0
      00350C 00                    6625 	.db #0x00	; 0
      00350D 00                    6626 	.db #0x00	; 0
      00350E 00                    6627 	.db #0x00	; 0
      00350F 00                    6628 	.db #0x00	; 0
      003510 00                    6629 	.db #0x00	; 0
      003511                       6630 _GetHIDReport:
      003511 81                    6631 	.db #0x81	; 129
      003512 06                    6632 	.db #0x06	; 6
      003513 00                    6633 	.db #0x00	; 0
      003514 22                    6634 	.db #0x22	; 34
      003515 00                    6635 	.db #0x00	; 0
      003516 00                    6636 	.db #0x00	; 0
      003517 FF                    6637 	.db #0xff	; 255
      003518 00                    6638 	.db #0x00	; 0
                                   6639 	.area XINIT   (CODE)
                                   6640 	.area CABS    (ABS,CODE)
