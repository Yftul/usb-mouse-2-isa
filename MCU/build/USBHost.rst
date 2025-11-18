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
                                     19 	.globl _initializeRootHubConnection
                                     20 	.globl _readEndpoint
                                     21 	.globl _readHIDInterface
                                     22 	.globl _readInterface
                                     23 	.globl _getHIDDeviceReport
                                     24 	.globl _parseHIDDeviceReport
                                     25 	.globl _getInterfaceDescriptor
                                     26 	.globl _getConfigurationDescriptor
                                     27 	.globl _DEBUG_OUT_USB_BUFFER
                                     28 	.globl _convertStringDescriptor
                                     29 	.globl _getDeviceString
                                     30 	.globl _setUsbConfig
                                     31 	.globl _setUsbAddress
                                     32 	.globl _getDeviceDescriptor
                                     33 	.globl _fillTxBuffer
                                     34 	.globl _hostCtrlTransfer
                                     35 	.globl _hostTransfer
                                     36 	.globl _selectHubPort
                                     37 	.globl _enableRootHubPort
                                     38 	.globl _resetRootHubPort
                                     39 	.globl _setUsbSpeed
                                     40 	.globl _setHostUsbAddr
                                     41 	.globl _disableRootHubPort
                                     42 	.globl _flash_led
                                     43 	.globl _mouse_write
                                     44 	.globl _sendProtocolMSG
                                     45 	.globl _sendHidPollMSG
                                     46 	.globl _delay
                                     47 	.globl _delayUs
                                     48 	.globl _printf
                                     49 	.globl _LED
                                     50 	.globl _UIF_BUS_RST
                                     51 	.globl _UIF_DETECT
                                     52 	.globl _UIF_TRANSFER
                                     53 	.globl _UIF_SUSPEND
                                     54 	.globl _UIF_HST_SOF
                                     55 	.globl _UIF_FIFO_OV
                                     56 	.globl _U_SIE_FREE
                                     57 	.globl _U_TOG_OK
                                     58 	.globl _U_IS_NAK
                                     59 	.globl _S0_R_FIFO0
                                     60 	.globl _S0_R_FIFO1
                                     61 	.globl _S0_T_FIFO
                                     62 	.globl _S0_FREE
                                     63 	.globl _S0_IF_BYTE
                                     64 	.globl _S0_IF_FIRST
                                     65 	.globl _S0_IF_OV
                                     66 	.globl _S0_FST_ACT
                                     67 	.globl _CP_RL2
                                     68 	.globl _C_T2
                                     69 	.globl _TR2
                                     70 	.globl _EXEN2
                                     71 	.globl _TCLK
                                     72 	.globl _RCLK
                                     73 	.globl _EXF2
                                     74 	.globl _CAP1F
                                     75 	.globl _TF2
                                     76 	.globl _RI
                                     77 	.globl _TI
                                     78 	.globl _RB8
                                     79 	.globl _TB8
                                     80 	.globl _REN
                                     81 	.globl _SM2
                                     82 	.globl _SM1
                                     83 	.globl _SM0
                                     84 	.globl _IT0
                                     85 	.globl _IE0
                                     86 	.globl _IT1
                                     87 	.globl _IE1
                                     88 	.globl _TR0
                                     89 	.globl _TF0
                                     90 	.globl _TR1
                                     91 	.globl _TF1
                                     92 	.globl _RXD1_
                                     93 	.globl _LED2
                                     94 	.globl _CAP3_
                                     95 	.globl _PWM3_
                                     96 	.globl _PWM1_
                                     97 	.globl _TXD1_
                                     98 	.globl _TNOW_
                                     99 	.globl _LED3
                                    100 	.globl _PWM2_
                                    101 	.globl _SCS_
                                    102 	.globl _SCK_
                                    103 	.globl _RXD
                                    104 	.globl _TXD
                                    105 	.globl _INT0
                                    106 	.globl _LED0
                                    107 	.globl _INT1
                                    108 	.globl _LED1
                                    109 	.globl _T0
                                    110 	.globl _XCS0
                                    111 	.globl _LEDC
                                    112 	.globl _T1
                                    113 	.globl _DA6
                                    114 	.globl _WR
                                    115 	.globl _RD
                                    116 	.globl _MOSI1
                                    117 	.globl _MISO1
                                    118 	.globl _SCK1
                                    119 	.globl _PWM1
                                    120 	.globl _CAP2_
                                    121 	.globl _T2EX_
                                    122 	.globl _PWM2
                                    123 	.globl _TNOW
                                    124 	.globl _RXD1
                                    125 	.globl _DA7
                                    126 	.globl _TXD1
                                    127 	.globl _CAP1
                                    128 	.globl _T2
                                    129 	.globl _CAP2
                                    130 	.globl _T2EX
                                    131 	.globl _CAP3
                                    132 	.globl _PWM3
                                    133 	.globl _SCS
                                    134 	.globl _MOSI
                                    135 	.globl _MISO
                                    136 	.globl _SCK
                                    137 	.globl _AIN0
                                    138 	.globl _AIN1
                                    139 	.globl _AIN2
                                    140 	.globl _AIN3
                                    141 	.globl _AIN4
                                    142 	.globl _AIN5
                                    143 	.globl _AIN6
                                    144 	.globl _AIN7
                                    145 	.globl _UDTR
                                    146 	.globl _URTS
                                    147 	.globl _RXD_
                                    148 	.globl _TXD_
                                    149 	.globl _UCTS
                                    150 	.globl _UDSR
                                    151 	.globl _URI
                                    152 	.globl _UDCD
                                    153 	.globl _IE_SPI0
                                    154 	.globl _IE_TMR3
                                    155 	.globl _IE_USB
                                    156 	.globl _IE_ADC
                                    157 	.globl _IE_UART1
                                    158 	.globl _IE_PWM1
                                    159 	.globl _IE_GPIO
                                    160 	.globl _IE_WDOG
                                    161 	.globl _PX0
                                    162 	.globl _PT0
                                    163 	.globl _PX1
                                    164 	.globl _PT1
                                    165 	.globl _PS
                                    166 	.globl _PT2
                                    167 	.globl _PL_FLAG
                                    168 	.globl _PH_FLAG
                                    169 	.globl _EX0
                                    170 	.globl _ET0
                                    171 	.globl _EX1
                                    172 	.globl _ET1
                                    173 	.globl _ES
                                    174 	.globl _ET2
                                    175 	.globl _E_DIS
                                    176 	.globl _EA
                                    177 	.globl _P
                                    178 	.globl _F1
                                    179 	.globl _OV
                                    180 	.globl _RS0
                                    181 	.globl _RS1
                                    182 	.globl _F0
                                    183 	.globl _AC
                                    184 	.globl _CY
                                    185 	.globl _USB_DMA_AH
                                    186 	.globl _USB_DMA_AL
                                    187 	.globl _USB_DMA
                                    188 	.globl _UHUB1_CTRL
                                    189 	.globl _UDEV_CTRL
                                    190 	.globl _USB_DEV_AD
                                    191 	.globl _USB_CTRL
                                    192 	.globl _USB_INT_EN
                                    193 	.globl _UEP4_T_LEN
                                    194 	.globl _UEP4_CTRL
                                    195 	.globl _UEP0_T_LEN
                                    196 	.globl _UEP0_CTRL
                                    197 	.globl _USB_HUB_ST
                                    198 	.globl _USB_MIS_ST
                                    199 	.globl _USB_INT_ST
                                    200 	.globl _USB_INT_FG
                                    201 	.globl _UEP3_T_LEN
                                    202 	.globl _UEP3_CTRL
                                    203 	.globl _UEP2_T_LEN
                                    204 	.globl _UEP2_CTRL
                                    205 	.globl _UEP1_T_LEN
                                    206 	.globl _UEP1_CTRL
                                    207 	.globl _USB_RX_LEN
                                    208 	.globl _ADC_EX_SW
                                    209 	.globl _ADC_SETUP
                                    210 	.globl _ADC_FIFO_H
                                    211 	.globl _ADC_FIFO_L
                                    212 	.globl _ADC_FIFO
                                    213 	.globl _ADC_CHANN
                                    214 	.globl _ADC_CTRL
                                    215 	.globl _ADC_STAT
                                    216 	.globl _ADC_CK_SE
                                    217 	.globl _ADC_DMA_CN
                                    218 	.globl _ADC_DMA_AH
                                    219 	.globl _ADC_DMA_AL
                                    220 	.globl _ADC_DMA
                                    221 	.globl _SER1_ADDR
                                    222 	.globl _SER1_MSR
                                    223 	.globl _SER1_LSR
                                    224 	.globl _SER1_MCR
                                    225 	.globl _SER1_LCR
                                    226 	.globl _SER1_IIR
                                    227 	.globl _SER1_IER
                                    228 	.globl _SER1_FIFO
                                    229 	.globl _SPI1_CK_SE
                                    230 	.globl _SPI1_CTRL
                                    231 	.globl _SPI1_DATA
                                    232 	.globl _SPI1_STAT
                                    233 	.globl _SPI0_SETUP
                                    234 	.globl _SPI0_CK_SE
                                    235 	.globl _SPI0_CTRL
                                    236 	.globl _SPI0_DATA
                                    237 	.globl _SPI0_STAT
                                    238 	.globl _PWM_CYCLE
                                    239 	.globl _PWM_CK_SE
                                    240 	.globl _PWM_CTRL
                                    241 	.globl _PWM_DATA
                                    242 	.globl _PWM_DATA2
                                    243 	.globl _T3_FIFO_H
                                    244 	.globl _T3_FIFO_L
                                    245 	.globl _T3_FIFO
                                    246 	.globl _T3_DMA_AH
                                    247 	.globl _T3_DMA_AL
                                    248 	.globl _T3_DMA
                                    249 	.globl _T3_DMA_CN
                                    250 	.globl _T3_CTRL
                                    251 	.globl _T3_STAT
                                    252 	.globl _T3_END_H
                                    253 	.globl _T3_END_L
                                    254 	.globl _T3_END
                                    255 	.globl _T3_COUNT_H
                                    256 	.globl _T3_COUNT_L
                                    257 	.globl _T3_COUNT
                                    258 	.globl _T3_SETUP
                                    259 	.globl _TH2
                                    260 	.globl _TL2
                                    261 	.globl _T2COUNT
                                    262 	.globl _RCAP2H
                                    263 	.globl _RCAP2L
                                    264 	.globl _RCAP2
                                    265 	.globl _T2MOD
                                    266 	.globl _T2CON
                                    267 	.globl _SBUF
                                    268 	.globl _SCON
                                    269 	.globl _TH1
                                    270 	.globl _TH0
                                    271 	.globl _TL1
                                    272 	.globl _TL0
                                    273 	.globl _TMOD
                                    274 	.globl _TCON
                                    275 	.globl _XBUS_SPEED
                                    276 	.globl _XBUS_AUX
                                    277 	.globl _PIN_FUNC
                                    278 	.globl _PORT_CFG
                                    279 	.globl _P5_IN
                                    280 	.globl _P4_PU
                                    281 	.globl _P4_DIR
                                    282 	.globl _P4_IN
                                    283 	.globl _P4_OUT
                                    284 	.globl _P3_PU
                                    285 	.globl _P3_DIR
                                    286 	.globl _P3
                                    287 	.globl _P2_PU
                                    288 	.globl _P2_DIR
                                    289 	.globl _P2
                                    290 	.globl _P1_PU
                                    291 	.globl _P1_DIR
                                    292 	.globl _P1_IE
                                    293 	.globl _P1
                                    294 	.globl _P0_PU
                                    295 	.globl _P0_DIR
                                    296 	.globl _P0
                                    297 	.globl _ROM_CTRL
                                    298 	.globl _ROM_DATA_H
                                    299 	.globl _ROM_DATA_L
                                    300 	.globl _ROM_DATA
                                    301 	.globl _ROM_ADDR_H
                                    302 	.globl _ROM_ADDR_L
                                    303 	.globl _ROM_ADDR
                                    304 	.globl _GPIO_IE
                                    305 	.globl _IP_EX
                                    306 	.globl _IE_EX
                                    307 	.globl _IP
                                    308 	.globl _IE
                                    309 	.globl _WDOG_COUNT
                                    310 	.globl _RESET_KEEP
                                    311 	.globl _WAKE_CTRL
                                    312 	.globl _SLEEP_CTRL
                                    313 	.globl _CLOCK_CFG
                                    314 	.globl _PLL_CFG
                                    315 	.globl _PCON
                                    316 	.globl _GLOBAL_CFG
                                    317 	.globl _SAFE_MOD
                                    318 	.globl _DPH
                                    319 	.globl _DPL
                                    320 	.globl _SP
                                    321 	.globl _B
                                    322 	.globl _ACC
                                    323 	.globl _PSW
                                    324 	.globl _readHIDInterface_PARM_2
                                    325 	.globl _readInterface_PARM_2
                                    326 	.globl _parseHIDDeviceReport_PARM_3
                                    327 	.globl _parseHIDDeviceReport_PARM_2
                                    328 	.globl _VendorProductID
                                    329 	.globl _HIDdevice
                                    330 	.globl _convertStringDescriptor_PARM_4
                                    331 	.globl _convertStringDescriptor_PARM_3
                                    332 	.globl _convertStringDescriptor_PARM_2
                                    333 	.globl _fillTxBuffer_PARM_2
                                    334 	.globl _hostCtrlTransfer_PARM_3
                                    335 	.globl _hostCtrlTransfer_PARM_2
                                    336 	.globl _hostTransfer_PARM_3
                                    337 	.globl _hostTransfer_PARM_2
                                    338 	.globl _selectHubPort_PARM_2
                                    339 	.globl _rootHubDevice
                                    340 	.globl _receiveDataBuffer
                                    341 	.globl _endpoint0Size
                                    342 	.globl _TxBuffer
                                    343 	.globl _RxBuffer
                                    344 	.globl _LED_DMA_XL
                                    345 	.globl _LED_DMA_XH
                                    346 	.globl _LED_DMA_CN
                                    347 	.globl _LED_DMA_AL
                                    348 	.globl _LED_DMA_AH
                                    349 	.globl _LED_CK_SE
                                    350 	.globl _LED_DATA
                                    351 	.globl _LED_CTRL
                                    352 	.globl _LED_STAT
                                    353 	.globl _pUEP3_DMA_L
                                    354 	.globl _pUEP3_DMA_H
                                    355 	.globl _UEP3_DMA_H
                                    356 	.globl _UEP3_DMA_L
                                    357 	.globl _UEP3_DMA
                                    358 	.globl _pUEP2_DMA_L
                                    359 	.globl _pUEP2_DMA_H
                                    360 	.globl _UEP2_DMA_H
                                    361 	.globl _UEP2_DMA_L
                                    362 	.globl _UEP2_DMA
                                    363 	.globl _pUEP1_DMA_L
                                    364 	.globl _pUEP1_DMA_H
                                    365 	.globl _UEP1_DMA_L
                                    366 	.globl _UEP1_DMA_H
                                    367 	.globl _pUEP0_DMA_L
                                    368 	.globl _pUEP0_DMA_H
                                    369 	.globl _UEP0_DMA_L
                                    370 	.globl _UEP0_DMA_H
                                    371 	.globl _UEP2_3_MOD
                                    372 	.globl _UEP4_1_MOD
                                    373 	.globl _pLED_DMA_XL
                                    374 	.globl _pLED_DMA_XH
                                    375 	.globl _pLED_DMA_CN
                                    376 	.globl _pLED_DMA_AL
                                    377 	.globl _pLED_DMA_AH
                                    378 	.globl _pLED_CK_SE
                                    379 	.globl _pLED_DATA
                                    380 	.globl _pLED_CTRL
                                    381 	.globl _pLED_STAT
                                    382 	.globl _pUEP2_3_MOD
                                    383 	.globl _pUEP4_1_MOD
                                    384 	.globl _initUSB_Host
                                    385 	.globl _resetHubDevices
                                    386 	.globl _pollHIDdevice
                                    387 	.globl _checkRootHubConnections
                                    388 ;--------------------------------------------------------
                                    389 ; special function registers
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000D0   393 _PSW	=	0x00d0
                           0000E0   394 _ACC	=	0x00e0
                           0000F0   395 _B	=	0x00f0
                           000081   396 _SP	=	0x0081
                           000082   397 _DPL	=	0x0082
                           000083   398 _DPH	=	0x0083
                           0000A1   399 _SAFE_MOD	=	0x00a1
                           0000B1   400 _GLOBAL_CFG	=	0x00b1
                           000087   401 _PCON	=	0x0087
                           0000B2   402 _PLL_CFG	=	0x00b2
                           0000B3   403 _CLOCK_CFG	=	0x00b3
                           0000EA   404 _SLEEP_CTRL	=	0x00ea
                           0000EB   405 _WAKE_CTRL	=	0x00eb
                           0000FE   406 _RESET_KEEP	=	0x00fe
                           0000FF   407 _WDOG_COUNT	=	0x00ff
                           0000A8   408 _IE	=	0x00a8
                           0000B8   409 _IP	=	0x00b8
                           0000E8   410 _IE_EX	=	0x00e8
                           0000E9   411 _IP_EX	=	0x00e9
                           0000CF   412 _GPIO_IE	=	0x00cf
                           008584   413 _ROM_ADDR	=	0x8584
                           000084   414 _ROM_ADDR_L	=	0x0084
                           000085   415 _ROM_ADDR_H	=	0x0085
                           008F8E   416 _ROM_DATA	=	0x8f8e
                           00008E   417 _ROM_DATA_L	=	0x008e
                           00008F   418 _ROM_DATA_H	=	0x008f
                           000086   419 _ROM_CTRL	=	0x0086
                           000080   420 _P0	=	0x0080
                           0000C4   421 _P0_DIR	=	0x00c4
                           0000C5   422 _P0_PU	=	0x00c5
                           000090   423 _P1	=	0x0090
                           0000B9   424 _P1_IE	=	0x00b9
                           0000BA   425 _P1_DIR	=	0x00ba
                           0000BB   426 _P1_PU	=	0x00bb
                           0000A0   427 _P2	=	0x00a0
                           0000BC   428 _P2_DIR	=	0x00bc
                           0000BD   429 _P2_PU	=	0x00bd
                           0000B0   430 _P3	=	0x00b0
                           0000BE   431 _P3_DIR	=	0x00be
                           0000BF   432 _P3_PU	=	0x00bf
                           0000C0   433 _P4_OUT	=	0x00c0
                           0000C1   434 _P4_IN	=	0x00c1
                           0000C2   435 _P4_DIR	=	0x00c2
                           0000C3   436 _P4_PU	=	0x00c3
                           0000C7   437 _P5_IN	=	0x00c7
                           0000C6   438 _PORT_CFG	=	0x00c6
                           0000CE   439 _PIN_FUNC	=	0x00ce
                           0000A2   440 _XBUS_AUX	=	0x00a2
                           0000FD   441 _XBUS_SPEED	=	0x00fd
                           000088   442 _TCON	=	0x0088
                           000089   443 _TMOD	=	0x0089
                           00008A   444 _TL0	=	0x008a
                           00008B   445 _TL1	=	0x008b
                           00008C   446 _TH0	=	0x008c
                           00008D   447 _TH1	=	0x008d
                           000098   448 _SCON	=	0x0098
                           000099   449 _SBUF	=	0x0099
                           0000C8   450 _T2CON	=	0x00c8
                           0000C9   451 _T2MOD	=	0x00c9
                           00CBCA   452 _RCAP2	=	0xcbca
                           0000CA   453 _RCAP2L	=	0x00ca
                           0000CB   454 _RCAP2H	=	0x00cb
                           00CDCC   455 _T2COUNT	=	0xcdcc
                           0000CC   456 _TL2	=	0x00cc
                           0000CD   457 _TH2	=	0x00cd
                           0000A3   458 _T3_SETUP	=	0x00a3
                           00A5A4   459 _T3_COUNT	=	0xa5a4
                           0000A4   460 _T3_COUNT_L	=	0x00a4
                           0000A5   461 _T3_COUNT_H	=	0x00a5
                           00A7A6   462 _T3_END	=	0xa7a6
                           0000A6   463 _T3_END_L	=	0x00a6
                           0000A7   464 _T3_END_H	=	0x00a7
                           0000A9   465 _T3_STAT	=	0x00a9
                           0000AA   466 _T3_CTRL	=	0x00aa
                           0000AB   467 _T3_DMA_CN	=	0x00ab
                           00ADAC   468 _T3_DMA	=	0xadac
                           0000AC   469 _T3_DMA_AL	=	0x00ac
                           0000AD   470 _T3_DMA_AH	=	0x00ad
                           00AFAE   471 _T3_FIFO	=	0xafae
                           0000AE   472 _T3_FIFO_L	=	0x00ae
                           0000AF   473 _T3_FIFO_H	=	0x00af
                           00009B   474 _PWM_DATA2	=	0x009b
                           00009C   475 _PWM_DATA	=	0x009c
                           00009D   476 _PWM_CTRL	=	0x009d
                           00009E   477 _PWM_CK_SE	=	0x009e
                           00009F   478 _PWM_CYCLE	=	0x009f
                           0000F8   479 _SPI0_STAT	=	0x00f8
                           0000F9   480 _SPI0_DATA	=	0x00f9
                           0000FA   481 _SPI0_CTRL	=	0x00fa
                           0000FB   482 _SPI0_CK_SE	=	0x00fb
                           0000FC   483 _SPI0_SETUP	=	0x00fc
                           0000B4   484 _SPI1_STAT	=	0x00b4
                           0000B5   485 _SPI1_DATA	=	0x00b5
                           0000B6   486 _SPI1_CTRL	=	0x00b6
                           0000B7   487 _SPI1_CK_SE	=	0x00b7
                           00009A   488 _SER1_FIFO	=	0x009a
                           000091   489 _SER1_IER	=	0x0091
                           000092   490 _SER1_IIR	=	0x0092
                           000093   491 _SER1_LCR	=	0x0093
                           000094   492 _SER1_MCR	=	0x0094
                           000095   493 _SER1_LSR	=	0x0095
                           000096   494 _SER1_MSR	=	0x0096
                           000097   495 _SER1_ADDR	=	0x0097
                           00EDEC   496 _ADC_DMA	=	0xedec
                           0000EC   497 _ADC_DMA_AL	=	0x00ec
                           0000ED   498 _ADC_DMA_AH	=	0x00ed
                           0000EE   499 _ADC_DMA_CN	=	0x00ee
                           0000EF   500 _ADC_CK_SE	=	0x00ef
                           0000F1   501 _ADC_STAT	=	0x00f1
                           0000F2   502 _ADC_CTRL	=	0x00f2
                           0000F3   503 _ADC_CHANN	=	0x00f3
                           00F5F4   504 _ADC_FIFO	=	0xf5f4
                           0000F4   505 _ADC_FIFO_L	=	0x00f4
                           0000F5   506 _ADC_FIFO_H	=	0x00f5
                           0000F6   507 _ADC_SETUP	=	0x00f6
                           0000F7   508 _ADC_EX_SW	=	0x00f7
                           0000D1   509 _USB_RX_LEN	=	0x00d1
                           0000D2   510 _UEP1_CTRL	=	0x00d2
                           0000D3   511 _UEP1_T_LEN	=	0x00d3
                           0000D4   512 _UEP2_CTRL	=	0x00d4
                           0000D5   513 _UEP2_T_LEN	=	0x00d5
                           0000D6   514 _UEP3_CTRL	=	0x00d6
                           0000D7   515 _UEP3_T_LEN	=	0x00d7
                           0000D8   516 _USB_INT_FG	=	0x00d8
                           0000D9   517 _USB_INT_ST	=	0x00d9
                           0000DA   518 _USB_MIS_ST	=	0x00da
                           0000DB   519 _USB_HUB_ST	=	0x00db
                           0000DC   520 _UEP0_CTRL	=	0x00dc
                           0000DD   521 _UEP0_T_LEN	=	0x00dd
                           0000DE   522 _UEP4_CTRL	=	0x00de
                           0000DF   523 _UEP4_T_LEN	=	0x00df
                           0000E1   524 _USB_INT_EN	=	0x00e1
                           0000E2   525 _USB_CTRL	=	0x00e2
                           0000E3   526 _USB_DEV_AD	=	0x00e3
                           0000E4   527 _UDEV_CTRL	=	0x00e4
                           0000E5   528 _UHUB1_CTRL	=	0x00e5
                           00E7E6   529 _USB_DMA	=	0xe7e6
                           0000E6   530 _USB_DMA_AL	=	0x00e6
                           0000E7   531 _USB_DMA_AH	=	0x00e7
                                    532 ;--------------------------------------------------------
                                    533 ; special function bits
                                    534 ;--------------------------------------------------------
                                    535 	.area RSEG    (ABS,DATA)
      000000                        536 	.org 0x0000
                           0000D7   537 _CY	=	0x00d7
                           0000D6   538 _AC	=	0x00d6
                           0000D5   539 _F0	=	0x00d5
                           0000D4   540 _RS1	=	0x00d4
                           0000D3   541 _RS0	=	0x00d3
                           0000D2   542 _OV	=	0x00d2
                           0000D1   543 _F1	=	0x00d1
                           0000D0   544 _P	=	0x00d0
                           0000AF   545 _EA	=	0x00af
                           0000AE   546 _E_DIS	=	0x00ae
                           0000AD   547 _ET2	=	0x00ad
                           0000AC   548 _ES	=	0x00ac
                           0000AB   549 _ET1	=	0x00ab
                           0000AA   550 _EX1	=	0x00aa
                           0000A9   551 _ET0	=	0x00a9
                           0000A8   552 _EX0	=	0x00a8
                           0000BF   553 _PH_FLAG	=	0x00bf
                           0000BE   554 _PL_FLAG	=	0x00be
                           0000BD   555 _PT2	=	0x00bd
                           0000BC   556 _PS	=	0x00bc
                           0000BB   557 _PT1	=	0x00bb
                           0000BA   558 _PX1	=	0x00ba
                           0000B9   559 _PT0	=	0x00b9
                           0000B8   560 _PX0	=	0x00b8
                           0000EF   561 _IE_WDOG	=	0x00ef
                           0000EE   562 _IE_GPIO	=	0x00ee
                           0000ED   563 _IE_PWM1	=	0x00ed
                           0000EC   564 _IE_UART1	=	0x00ec
                           0000EB   565 _IE_ADC	=	0x00eb
                           0000EA   566 _IE_USB	=	0x00ea
                           0000E9   567 _IE_TMR3	=	0x00e9
                           0000E8   568 _IE_SPI0	=	0x00e8
                           000087   569 _UDCD	=	0x0087
                           000086   570 _URI	=	0x0086
                           000085   571 _UDSR	=	0x0085
                           000084   572 _UCTS	=	0x0084
                           000083   573 _TXD_	=	0x0083
                           000082   574 _RXD_	=	0x0082
                           000081   575 _URTS	=	0x0081
                           000080   576 _UDTR	=	0x0080
                           000097   577 _AIN7	=	0x0097
                           000096   578 _AIN6	=	0x0096
                           000095   579 _AIN5	=	0x0095
                           000094   580 _AIN4	=	0x0094
                           000093   581 _AIN3	=	0x0093
                           000092   582 _AIN2	=	0x0092
                           000091   583 _AIN1	=	0x0091
                           000090   584 _AIN0	=	0x0090
                           000097   585 _SCK	=	0x0097
                           000096   586 _MISO	=	0x0096
                           000095   587 _MOSI	=	0x0095
                           000094   588 _SCS	=	0x0094
                           000092   589 _PWM3	=	0x0092
                           000092   590 _CAP3	=	0x0092
                           000091   591 _T2EX	=	0x0091
                           000091   592 _CAP2	=	0x0091
                           000090   593 _T2	=	0x0090
                           000090   594 _CAP1	=	0x0090
                           0000A7   595 _TXD1	=	0x00a7
                           0000A7   596 _DA7	=	0x00a7
                           0000A6   597 _RXD1	=	0x00a6
                           0000A5   598 _TNOW	=	0x00a5
                           0000A5   599 _PWM2	=	0x00a5
                           0000A5   600 _T2EX_	=	0x00a5
                           0000A5   601 _CAP2_	=	0x00a5
                           0000A4   602 _PWM1	=	0x00a4
                           0000A3   603 _SCK1	=	0x00a3
                           0000A2   604 _MISO1	=	0x00a2
                           0000A1   605 _MOSI1	=	0x00a1
                           0000B7   606 _RD	=	0x00b7
                           0000B6   607 _WR	=	0x00b6
                           0000B5   608 _DA6	=	0x00b5
                           0000B5   609 _T1	=	0x00b5
                           0000B4   610 _LEDC	=	0x00b4
                           0000B4   611 _XCS0	=	0x00b4
                           0000B4   612 _T0	=	0x00b4
                           0000B3   613 _LED1	=	0x00b3
                           0000B3   614 _INT1	=	0x00b3
                           0000B2   615 _LED0	=	0x00b2
                           0000B2   616 _INT0	=	0x00b2
                           0000B1   617 _TXD	=	0x00b1
                           0000B0   618 _RXD	=	0x00b0
                           0000C7   619 _SCK_	=	0x00c7
                           0000C6   620 _SCS_	=	0x00c6
                           0000C5   621 _PWM2_	=	0x00c5
                           0000C4   622 _LED3	=	0x00c4
                           0000C4   623 _TNOW_	=	0x00c4
                           0000C4   624 _TXD1_	=	0x00c4
                           0000C3   625 _PWM1_	=	0x00c3
                           0000C2   626 _PWM3_	=	0x00c2
                           0000C2   627 _CAP3_	=	0x00c2
                           0000C0   628 _LED2	=	0x00c0
                           0000C0   629 _RXD1_	=	0x00c0
                           00008F   630 _TF1	=	0x008f
                           00008E   631 _TR1	=	0x008e
                           00008D   632 _TF0	=	0x008d
                           00008C   633 _TR0	=	0x008c
                           00008B   634 _IE1	=	0x008b
                           00008A   635 _IT1	=	0x008a
                           000089   636 _IE0	=	0x0089
                           000088   637 _IT0	=	0x0088
                           00009F   638 _SM0	=	0x009f
                           00009E   639 _SM1	=	0x009e
                           00009D   640 _SM2	=	0x009d
                           00009C   641 _REN	=	0x009c
                           00009B   642 _TB8	=	0x009b
                           00009A   643 _RB8	=	0x009a
                           000099   644 _TI	=	0x0099
                           000098   645 _RI	=	0x0098
                           0000CF   646 _TF2	=	0x00cf
                           0000CF   647 _CAP1F	=	0x00cf
                           0000CE   648 _EXF2	=	0x00ce
                           0000CD   649 _RCLK	=	0x00cd
                           0000CC   650 _TCLK	=	0x00cc
                           0000CB   651 _EXEN2	=	0x00cb
                           0000CA   652 _TR2	=	0x00ca
                           0000C9   653 _C_T2	=	0x00c9
                           0000C8   654 _CP_RL2	=	0x00c8
                           0000FF   655 _S0_FST_ACT	=	0x00ff
                           0000FE   656 _S0_IF_OV	=	0x00fe
                           0000FD   657 _S0_IF_FIRST	=	0x00fd
                           0000FC   658 _S0_IF_BYTE	=	0x00fc
                           0000FB   659 _S0_FREE	=	0x00fb
                           0000FA   660 _S0_T_FIFO	=	0x00fa
                           0000F9   661 _S0_R_FIFO1	=	0x00f9
                           0000F8   662 _S0_R_FIFO0	=	0x00f8
                           0000DF   663 _U_IS_NAK	=	0x00df
                           0000DE   664 _U_TOG_OK	=	0x00de
                           0000DD   665 _U_SIE_FREE	=	0x00dd
                           0000DC   666 _UIF_FIFO_OV	=	0x00dc
                           0000DB   667 _UIF_HST_SOF	=	0x00db
                           0000DA   668 _UIF_SUSPEND	=	0x00da
                           0000D9   669 _UIF_TRANSFER	=	0x00d9
                           0000D8   670 _UIF_DETECT	=	0x00d8
                           0000D8   671 _UIF_BUS_RST	=	0x00d8
                           000096   672 _LED	=	0x0096
                                    673 ;--------------------------------------------------------
                                    674 ; overlayable register banks
                                    675 ;--------------------------------------------------------
                                    676 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        677 	.ds 8
                                    678 ;--------------------------------------------------------
                                    679 ; internal ram data
                                    680 ;--------------------------------------------------------
                                    681 	.area DSEG    (DATA)
      000021                        682 _hostTransfer_sloc0_1_0:
      000021                        683 	.ds 2
      000023                        684 _hostTransfer_sloc1_1_0:
      000023                        685 	.ds 1
      000024                        686 _hostTransfer_sloc2_1_0:
      000024                        687 	.ds 1
      000025                        688 _hostCtrlTransfer_sloc0_1_0:
      000025                        689 	.ds 2
      000027                        690 _hostCtrlTransfer_sloc1_1_0:
      000027                        691 	.ds 2
      000029                        692 _convertStringDescriptor_sloc0_1_0:
      000029                        693 	.ds 2
      00002B                        694 _convertStringDescriptor_sloc1_1_0:
      00002B                        695 	.ds 2
      00002D                        696 _convertStringDescriptor_sloc2_1_0:
      00002D                        697 	.ds 2
      00002F                        698 _convertStringDescriptor_sloc3_1_0:
      00002F                        699 	.ds 2
      000031                        700 _pollHIDdevice_sloc0_1_0:
      000031                        701 	.ds 2
      000033                        702 _pollHIDdevice_sloc1_1_0:
      000033                        703 	.ds 1
      000034                        704 _pollHIDdevice_sloc2_1_0:
      000034                        705 	.ds 1
      000035                        706 _parseHIDDeviceReport_sloc0_1_0:
      000035                        707 	.ds 2
      000037                        708 _parseHIDDeviceReport_sloc1_1_0:
      000037                        709 	.ds 1
      000038                        710 _parseHIDDeviceReport_sloc2_1_0:
      000038                        711 	.ds 1
      000039                        712 _parseHIDDeviceReport_sloc3_1_0:
      000039                        713 	.ds 2
      00003B                        714 _parseHIDDeviceReport_sloc4_1_0:
      00003B                        715 	.ds 2
      00003D                        716 _parseHIDDeviceReport_sloc5_1_0:
      00003D                        717 	.ds 2
      00003F                        718 _parseHIDDeviceReport_sloc6_1_0:
      00003F                        719 	.ds 4
      000043                        720 _initializeRootHubConnection_sloc0_1_0:
      000043                        721 	.ds 2
      000045                        722 _initializeRootHubConnection_sloc1_1_0:
      000045                        723 	.ds 2
      000047                        724 _initializeRootHubConnection_sloc2_1_0:
      000047                        725 	.ds 1
      000048                        726 _initializeRootHubConnection_sloc3_1_0:
      000048                        727 	.ds 1
      000049                        728 _initializeRootHubConnection_sloc4_1_0:
      000049                        729 	.ds 1
      00004A                        730 _initializeRootHubConnection_sloc5_1_0:
      00004A                        731 	.ds 2
      00004C                        732 _initializeRootHubConnection_sloc6_1_0:
      00004C                        733 	.ds 2
      00004E                        734 _initializeRootHubConnection_sloc7_1_0:
      00004E                        735 	.ds 1
      00004F                        736 _initializeRootHubConnection_sloc8_1_0:
      00004F                        737 	.ds 2
                                    738 ;--------------------------------------------------------
                                    739 ; overlayable items in internal ram
                                    740 ;--------------------------------------------------------
                                    741 ;--------------------------------------------------------
                                    742 ; indirectly addressable internal ram data
                                    743 ;--------------------------------------------------------
                                    744 	.area ISEG    (DATA)
                                    745 ;--------------------------------------------------------
                                    746 ; absolute internal ram data
                                    747 ;--------------------------------------------------------
                                    748 	.area IABS    (ABS,DATA)
                                    749 	.area IABS    (ABS,DATA)
                                    750 ;--------------------------------------------------------
                                    751 ; bit data
                                    752 ;--------------------------------------------------------
                                    753 	.area BSEG    (BIT)
      000001                        754 _hostCtrlTransfer_sloc2_1_0:
      000001                        755 	.ds 1
                                    756 ;--------------------------------------------------------
                                    757 ; paged external ram data
                                    758 ;--------------------------------------------------------
                                    759 	.area PSEG    (PAG,XDATA)
                           002546   760 _pUEP4_1_MOD	=	0x2546
                           002547   761 _pUEP2_3_MOD	=	0x2547
                           002980   762 _pLED_STAT	=	0x2980
                           002981   763 _pLED_CTRL	=	0x2981
                           002982   764 _pLED_DATA	=	0x2982
                           002983   765 _pLED_CK_SE	=	0x2983
                           002984   766 _pLED_DMA_AH	=	0x2984
                           002985   767 _pLED_DMA_AL	=	0x2985
                           002986   768 _pLED_DMA_CN	=	0x2986
                           002988   769 _pLED_DMA_XH	=	0x2988
                           002989   770 _pLED_DMA_XL	=	0x2989
                                    771 ;--------------------------------------------------------
                                    772 ; external ram data
                                    773 ;--------------------------------------------------------
                                    774 	.area XSEG    (XDATA)
                           002446   775 _UEP4_1_MOD	=	0x2446
                           002447   776 _UEP2_3_MOD	=	0x2447
                           002448   777 _UEP0_DMA_H	=	0x2448
                           002449   778 _UEP0_DMA_L	=	0x2449
                           002548   779 _pUEP0_DMA_H	=	0x2548
                           002549   780 _pUEP0_DMA_L	=	0x2549
                           00244A   781 _UEP1_DMA_H	=	0x244a
                           00244B   782 _UEP1_DMA_L	=	0x244b
                           00254A   783 _pUEP1_DMA_H	=	0x254a
                           00254B   784 _pUEP1_DMA_L	=	0x254b
                           00244C   785 _UEP2_DMA	=	0x244c
                           00244D   786 _UEP2_DMA_L	=	0x244d
                           00244C   787 _UEP2_DMA_H	=	0x244c
                           00254C   788 _pUEP2_DMA_H	=	0x254c
                           00254D   789 _pUEP2_DMA_L	=	0x254d
                           00244E   790 _UEP3_DMA	=	0x244e
                           00244F   791 _UEP3_DMA_L	=	0x244f
                           00244E   792 _UEP3_DMA_H	=	0x244e
                           00254E   793 _pUEP3_DMA_H	=	0x254e
                           00254F   794 _pUEP3_DMA_L	=	0x254f
                           002880   795 _LED_STAT	=	0x2880
                           002881   796 _LED_CTRL	=	0x2881
                           002882   797 _LED_DATA	=	0x2882
                           002883   798 _LED_CK_SE	=	0x2883
                           002884   799 _LED_DMA_AH	=	0x2884
                           002885   800 _LED_DMA_AL	=	0x2885
                           002886   801 _LED_DMA_CN	=	0x2886
                           002888   802 _LED_DMA_XH	=	0x2888
                           002889   803 _LED_DMA_XL	=	0x2889
                           000000   804 _RxBuffer	=	0x0000
                           000100   805 _TxBuffer	=	0x0100
      000782                        806 _endpoint0Size::
      000782                        807 	.ds 1
      000783                        808 _receiveDataBuffer::
      000783                        809 	.ds 512
      000983                        810 _rootHubDevice::
      000983                        811 	.ds 6
      000989                        812 _disableRootHubPort_index_65536_49:
      000989                        813 	.ds 1
      00098A                        814 _setHostUsbAddr_addr_65536_52:
      00098A                        815 	.ds 1
      00098B                        816 _setUsbSpeed_fullSpeed_65536_54:
      00098B                        817 	.ds 1
      00098C                        818 _resetRootHubPort_rootHubIndex_65536_57:
      00098C                        819 	.ds 1
      00098D                        820 _enableRootHubPort_rootHubIndex_65536_61:
      00098D                        821 	.ds 1
      00098E                        822 _selectHubPort_PARM_2:
      00098E                        823 	.ds 1
      00098F                        824 _selectHubPort_rootHubIndex_65536_72:
      00098F                        825 	.ds 1
      000990                        826 _hostTransfer_PARM_2:
      000990                        827 	.ds 1
      000991                        828 _hostTransfer_PARM_3:
      000991                        829 	.ds 2
      000993                        830 _hostTransfer_endp_pid_65536_74:
      000993                        831 	.ds 1
      000994                        832 _hostTransfer_retries_65536_75:
      000994                        833 	.ds 2
      000996                        834 _hostCtrlTransfer_PARM_2:
      000996                        835 	.ds 3
      000999                        836 _hostCtrlTransfer_PARM_3:
      000999                        837 	.ds 2
      00099B                        838 _hostCtrlTransfer_DataBuf_65536_96:
      00099B                        839 	.ds 2
      00099D                        840 _hostCtrlTransfer_SetPort_65536_97:
      00099D                        841 	.ds 1
      00099E                        842 _hostCtrlTransfer_RemLen_65536_97:
      00099E                        843 	.ds 2
      0009A0                        844 _hostCtrlTransfer_pBuf_65536_97:
      0009A0                        845 	.ds 2
      0009A2                        846 _fillTxBuffer_PARM_2:
      0009A2                        847 	.ds 1
      0009A3                        848 _fillTxBuffer_data_65536_106:
      0009A3                        849 	.ds 2
      0009A5                        850 _getDeviceDescriptor_len_65536_109:
      0009A5                        851 	.ds 2
      0009A7                        852 _setUsbAddress_addr_65536_111:
      0009A7                        853 	.ds 1
      0009A8                        854 _setUsbConfig_cfg_65536_113:
      0009A8                        855 	.ds 1
      0009A9                        856 _convertStringDescriptor_PARM_2:
      0009A9                        857 	.ds 2
      0009AB                        858 _convertStringDescriptor_PARM_3:
      0009AB                        859 	.ds 2
      0009AD                        860 _convertStringDescriptor_PARM_4:
      0009AD                        861 	.ds 1
      0009AE                        862 _convertStringDescriptor_usbBuffer_65536_116:
      0009AE                        863 	.ds 2
      0009B0                        864 _DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119:
      0009B0                        865 	.ds 2
      0009B2                        866 _getConfigurationDescriptor_len_65536_123:
      0009B2                        867 	.ds 2
      0009B4                        868 _getInterfaceDescriptor_len_65536_125:
      0009B4                        869 	.ds 2
      0009B6                        870 _HIDdevice::
      0009B6                        871 	.ds 64
      0009F6                        872 _VendorProductID::
      0009F6                        873 	.ds 32
      000A16                        874 _resetHubDevices_hubindex_65536_126:
      000A16                        875 	.ds 1
      000A17                        876 _pollHIDdevice_len_65536_131:
      000A17                        877 	.ds 1
      000A18                        878 _parseHIDDeviceReport_PARM_2:
      000A18                        879 	.ds 2
      000A1A                        880 _parseHIDDeviceReport_PARM_3:
      000A1A                        881 	.ds 1
      000A1B                        882 _parseHIDDeviceReport_report_65536_138:
      000A1B                        883 	.ds 2
      000A1D                        884 _parseHIDDeviceReport_i_65536_139:
      000A1D                        885 	.ds 2
      000A1F                        886 _parseHIDDeviceReport_level_65536_139:
      000A1F                        887 	.ds 1
      000A20                        888 _parseHIDDeviceReport_isUsageSet_65536_139:
      000A20                        889 	.ds 1
      000A21                        890 _parseHIDDeviceReport_id_131072_140:
      000A21                        891 	.ds 1
      000A22                        892 _parseHIDDeviceReport_size_131072_140:
      000A22                        893 	.ds 1
      000A23                        894 _parseHIDDeviceReport_data_131072_140:
      000A23                        895 	.ds 4
      000A27                        896 _getHIDDeviceReport_CurrentDevive_65536_148:
      000A27                        897 	.ds 1
      000A28                        898 _getHIDDeviceReport_len_65536_149:
      000A28                        899 	.ds 2
      000A2A                        900 _readInterface_PARM_2:
      000A2A                        901 	.ds 2
      000A2C                        902 _readHIDInterface_PARM_2:
      000A2C                        903 	.ds 2
      000A2E                        904 _readHIDInterface_interface_65536_154:
      000A2E                        905 	.ds 2
      000A30                        906 _initializeRootHubConnection_rootHubIndex_65536_158:
      000A30                        907 	.ds 1
      000A31                        908 _initializeRootHubConnection_s_65536_159:
      000A31                        909 	.ds 1
      000A32                        910 _initializeRootHubConnection_i_458753_170:
      000A32                        911 	.ds 2
      000A34                        912 _initializeRootHubConnection_temp_458753_170:
      000A34                        913 	.ds 512
      000C34                        914 _initializeRootHubConnection_currentInterface_458753_170:
      000C34                        915 	.ds 2
      000C36                        916 _initializeRootHubConnection_desc_524289_174:
      000C36                        917 	.ds 2
      000C38                        918 _checkRootHubConnections_s_65536_180:
      000C38                        919 	.ds 1
                                    920 ;--------------------------------------------------------
                                    921 ; absolute external ram data
                                    922 ;--------------------------------------------------------
                                    923 	.area XABS    (ABS,XDATA)
                                    924 ;--------------------------------------------------------
                                    925 ; external initialized ram data
                                    926 ;--------------------------------------------------------
                                    927 	.area XISEG   (XDATA)
                                    928 	.area HOME    (CODE)
                                    929 	.area GSINIT0 (CODE)
                                    930 	.area GSINIT1 (CODE)
                                    931 	.area GSINIT2 (CODE)
                                    932 	.area GSINIT3 (CODE)
                                    933 	.area GSINIT4 (CODE)
                                    934 	.area GSINIT5 (CODE)
                                    935 	.area GSINIT  (CODE)
                                    936 	.area GSFINAL (CODE)
                                    937 	.area CSEG    (CODE)
                                    938 ;--------------------------------------------------------
                                    939 ; global & static initialisations
                                    940 ;--------------------------------------------------------
                                    941 	.area HOME    (CODE)
                                    942 	.area GSINIT  (CODE)
                                    943 	.area GSFINAL (CODE)
                                    944 	.area GSINIT  (CODE)
                                    945 ;------------------------------------------------------------
                                    946 ;Allocation info for local variables in function 'hostCtrlTransfer'
                                    947 ;------------------------------------------------------------
                                    948 ;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
                                    949 ;sloc1                     Allocated with name '_hostCtrlTransfer_sloc1_1_0'
                                    950 ;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
                                    951 ;maxLenght                 Allocated with name '_hostCtrlTransfer_PARM_3'
                                    952 ;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_96'
                                    953 ;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_97'
                                    954 ;temp                      Allocated with name '_hostCtrlTransfer_temp_65536_97'
                                    955 ;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_97'
                                    956 ;s                         Allocated with name '_hostCtrlTransfer_s_65536_97'
                                    957 ;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_97'
                                    958 ;i                         Allocated with name '_hostCtrlTransfer_i_65536_97'
                                    959 ;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_97'
                                    960 ;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_97'
                                    961 ;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_98'
                                    962 ;------------------------------------------------------------
                                    963 ;	USBHost.c:257: static unsigned char SetPort = 0;
      0000B3 90 09 9D         [24]  964 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
      0000B6 E4               [12]  965 	clr	a
      0000B7 F0               [24]  966 	movx	@dptr,a
                                    967 ;--------------------------------------------------------
                                    968 ; Home
                                    969 ;--------------------------------------------------------
                                    970 	.area HOME    (CODE)
                                    971 	.area HOME    (CODE)
                                    972 ;--------------------------------------------------------
                                    973 ; code
                                    974 ;--------------------------------------------------------
                                    975 	.area CSEG    (CODE)
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'disableRootHubPort'
                                    978 ;------------------------------------------------------------
                                    979 ;index                     Allocated with name '_disableRootHubPort_index_65536_49'
                                    980 ;------------------------------------------------------------
                                    981 ;	USBHost.c:39: void disableRootHubPort(unsigned char index)
                                    982 ;	-----------------------------------------
                                    983 ;	 function disableRootHubPort
                                    984 ;	-----------------------------------------
      0017E6                        985 _disableRootHubPort:
                           000007   986 	ar7 = 0x07
                           000006   987 	ar6 = 0x06
                           000005   988 	ar5 = 0x05
                           000004   989 	ar4 = 0x04
                           000003   990 	ar3 = 0x03
                           000002   991 	ar2 = 0x02
                           000001   992 	ar1 = 0x01
                           000000   993 	ar0 = 0x00
      0017E6 E5 82            [12]  994 	mov	a,dpl
      0017E8 90 09 89         [24]  995 	mov	dptr,#_disableRootHubPort_index_65536_49
      0017EB F0               [24]  996 	movx	@dptr,a
                                    997 ;	USBHost.c:41: rootHubDevice[index].status = ROOT_DEVICE_DISCONNECT;
      0017EC E0               [24]  998 	movx	a,@dptr
      0017ED FF               [12]  999 	mov	r7,a
      0017EE 75 F0 03         [24] 1000 	mov	b,#0x03
      0017F1 A4               [48] 1001 	mul	ab
      0017F2 FD               [12] 1002 	mov	r5,a
      0017F3 AE F0            [24] 1003 	mov	r6,b
      0017F5 24 83            [12] 1004 	add	a,#_rootHubDevice
      0017F7 F5 82            [12] 1005 	mov	dpl,a
      0017F9 EE               [12] 1006 	mov	a,r6
      0017FA 34 09            [12] 1007 	addc	a,#(_rootHubDevice >> 8)
      0017FC F5 83            [12] 1008 	mov	dph,a
      0017FE E4               [12] 1009 	clr	a
      0017FF F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	USBHost.c:42: rootHubDevice[index].address = 0;
      001800 ED               [12] 1012 	mov	a,r5
      001801 24 83            [12] 1013 	add	a,#_rootHubDevice
      001803 FD               [12] 1014 	mov	r5,a
      001804 EE               [12] 1015 	mov	a,r6
      001805 34 09            [12] 1016 	addc	a,#(_rootHubDevice >> 8)
      001807 FE               [12] 1017 	mov	r6,a
      001808 8D 82            [24] 1018 	mov	dpl,r5
      00180A 8E 83            [24] 1019 	mov	dph,r6
      00180C A3               [24] 1020 	inc	dptr
      00180D E4               [12] 1021 	clr	a
      00180E F0               [24] 1022 	movx	@dptr,a
                                   1023 ;	USBHost.c:43: if (index)
      00180F EF               [12] 1024 	mov	a,r7
      001810 60 04            [24] 1025 	jz	00102$
                                   1026 ;	USBHost.c:44: UHUB1_CTRL = 0;
      001812 75 E5 00         [24] 1027 	mov	_UHUB1_CTRL,#0x00
      001815 22               [24] 1028 	ret
      001816                       1029 00102$:
                                   1030 ;	USBHost.c:46: UHUB0_CTRL = 0;
      001816 75 E4 00         [24] 1031 	mov	_UDEV_CTRL,#0x00
                                   1032 ;	USBHost.c:47: }
      001819 22               [24] 1033 	ret
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'initUSB_Host'
                                   1036 ;------------------------------------------------------------
                                   1037 ;	USBHost.c:49: void initUSB_Host()
                                   1038 ;	-----------------------------------------
                                   1039 ;	 function initUSB_Host
                                   1040 ;	-----------------------------------------
      00181A                       1041 _initUSB_Host:
                                   1042 ;	USBHost.c:51: IE_USB = 0;
                                   1043 ;	assignBit
      00181A C2 EA            [12] 1044 	clr	_IE_USB
                                   1045 ;	USBHost.c:52: USB_CTRL = bUC_HOST_MODE;
      00181C 75 E2 80         [24] 1046 	mov	_USB_CTRL,#0x80
                                   1047 ;	USBHost.c:53: USB_DEV_AD = 0x00;
      00181F 75 E3 00         [24] 1048 	mov	_USB_DEV_AD,#0x00
                                   1049 ;	USBHost.c:54: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN ;
      001822 90 24 47         [24] 1050 	mov	dptr,#_UEP2_3_MOD
      001825 74 48            [12] 1051 	mov	a,#0x48
      001827 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	USBHost.c:55: UH_RX_DMA = 0x0000;
      001828 90 24 4C         [24] 1054 	mov	dptr,#_UEP2_DMA
      00182B E4               [12] 1055 	clr	a
      00182C F0               [24] 1056 	movx	@dptr,a
      00182D A3               [24] 1057 	inc	dptr
      00182E F0               [24] 1058 	movx	@dptr,a
                                   1059 ;	USBHost.c:56: UH_TX_DMA = 0x0001;
      00182F 90 24 4E         [24] 1060 	mov	dptr,#_UEP3_DMA
      001832 04               [12] 1061 	inc	a
      001833 F0               [24] 1062 	movx	@dptr,a
      001834 E4               [12] 1063 	clr	a
      001835 A3               [24] 1064 	inc	dptr
      001836 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	USBHost.c:57: UH_RX_CTRL = 0x00;
                                   1067 ;	1-genFromRTrack replaced	mov	_UEP2_CTRL,#0x00
      001837 F5 D4            [12] 1068 	mov	_UEP2_CTRL,a
                                   1069 ;	USBHost.c:58: UH_TX_CTRL = 0x00;
                                   1070 ;	1-genFromRTrack replaced	mov	_UEP3_CTRL,#0x00
      001839 F5 D6            [12] 1071 	mov	_UEP3_CTRL,a
                                   1072 ;	USBHost.c:59: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY | bUC_DMA_EN;
      00183B 75 E2 89         [24] 1073 	mov	_USB_CTRL,#0x89
                                   1074 ;	USBHost.c:60: UH_SETUP = bUH_SOF_EN;
      00183E 75 D2 40         [24] 1075 	mov	_UEP1_CTRL,#0x40
                                   1076 ;	USBHost.c:61: USB_INT_FG = 0xFF;
      001841 75 D8 FF         [24] 1077 	mov	_USB_INT_FG,#0xff
                                   1078 ;	USBHost.c:63: disableRootHubPort(0);
      001844 75 82 00         [24] 1079 	mov	dpl,#0x00
      001847 12 17 E6         [24] 1080 	lcall	_disableRootHubPort
                                   1081 ;	USBHost.c:64: disableRootHubPort(1);
      00184A 75 82 01         [24] 1082 	mov	dpl,#0x01
      00184D 12 17 E6         [24] 1083 	lcall	_disableRootHubPort
                                   1084 ;	USBHost.c:65: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
      001850 75 E1 03         [24] 1085 	mov	_USB_INT_EN,#0x03
                                   1086 ;	USBHost.c:66: }
      001853 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'setHostUsbAddr'
                                   1090 ;------------------------------------------------------------
                                   1091 ;addr                      Allocated with name '_setHostUsbAddr_addr_65536_52'
                                   1092 ;------------------------------------------------------------
                                   1093 ;	USBHost.c:68: void setHostUsbAddr(unsigned char addr)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function setHostUsbAddr
                                   1096 ;	-----------------------------------------
      001854                       1097 _setHostUsbAddr:
      001854 E5 82            [12] 1098 	mov	a,dpl
      001856 90 09 8A         [24] 1099 	mov	dptr,#_setHostUsbAddr_addr_65536_52
      001859 F0               [24] 1100 	movx	@dptr,a
                                   1101 ;	USBHost.c:70: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
      00185A E5 E3            [12] 1102 	mov	a,_USB_DEV_AD
      00185C 54 80            [12] 1103 	anl	a,#0x80
      00185E FF               [12] 1104 	mov	r7,a
      00185F E0               [24] 1105 	movx	a,@dptr
      001860 54 7F            [12] 1106 	anl	a,#0x7f
      001862 4F               [12] 1107 	orl	a,r7
      001863 F5 E3            [12] 1108 	mov	_USB_DEV_AD,a
                                   1109 ;	USBHost.c:71: }
      001865 22               [24] 1110 	ret
                                   1111 ;------------------------------------------------------------
                                   1112 ;Allocation info for local variables in function 'setUsbSpeed'
                                   1113 ;------------------------------------------------------------
                                   1114 ;fullSpeed                 Allocated with name '_setUsbSpeed_fullSpeed_65536_54'
                                   1115 ;------------------------------------------------------------
                                   1116 ;	USBHost.c:73: void setUsbSpeed(unsigned char fullSpeed)
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function setUsbSpeed
                                   1119 ;	-----------------------------------------
      001866                       1120 _setUsbSpeed:
      001866 E5 82            [12] 1121 	mov	a,dpl
      001868 90 09 8B         [24] 1122 	mov	dptr,#_setUsbSpeed_fullSpeed_65536_54
      00186B F0               [24] 1123 	movx	@dptr,a
                                   1124 ;	USBHost.c:75: if (fullSpeed)
      00186C E0               [24] 1125 	movx	a,@dptr
      00186D 60 07            [24] 1126 	jz	00102$
                                   1127 ;	USBHost.c:77: USB_CTRL &= ~ bUC_LOW_SPEED;
      00186F 53 E2 BF         [24] 1128 	anl	_USB_CTRL,#0xbf
                                   1129 ;	USBHost.c:78: UH_SETUP &= ~ bUH_PRE_PID_EN;
      001872 53 D2 7F         [24] 1130 	anl	_UEP1_CTRL,#0x7f
      001875 22               [24] 1131 	ret
      001876                       1132 00102$:
                                   1133 ;	USBHost.c:81: USB_CTRL |= bUC_LOW_SPEED;
      001876 43 E2 40         [24] 1134 	orl	_USB_CTRL,#0x40
                                   1135 ;	USBHost.c:82: }
      001879 22               [24] 1136 	ret
                                   1137 ;------------------------------------------------------------
                                   1138 ;Allocation info for local variables in function 'resetRootHubPort'
                                   1139 ;------------------------------------------------------------
                                   1140 ;rootHubIndex              Allocated with name '_resetRootHubPort_rootHubIndex_65536_57'
                                   1141 ;------------------------------------------------------------
                                   1142 ;	USBHost.c:84: void resetRootHubPort(unsigned char rootHubIndex)
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function resetRootHubPort
                                   1145 ;	-----------------------------------------
      00187A                       1146 _resetRootHubPort:
      00187A E5 82            [12] 1147 	mov	a,dpl
      00187C 90 09 8C         [24] 1148 	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_57
      00187F F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	USBHost.c:86: endpoint0Size = DEFAULT_ENDP0_SIZE; //todo what's that?                    
      001880 90 07 82         [24] 1151 	mov	dptr,#_endpoint0Size
      001883 74 08            [12] 1152 	mov	a,#0x08
      001885 F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	USBHost.c:87: setHostUsbAddr(0);
      001886 75 82 00         [24] 1155 	mov	dpl,#0x00
      001889 12 18 54         [24] 1156 	lcall	_setHostUsbAddr
                                   1157 ;	USBHost.c:88: setUsbSpeed(1);
      00188C 75 82 01         [24] 1158 	mov	dpl,#0x01
      00188F 12 18 66         [24] 1159 	lcall	_setUsbSpeed
                                   1160 ;	USBHost.c:89: if (rootHubIndex == 0)    
      001892 90 09 8C         [24] 1161 	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_57
      001895 E0               [24] 1162 	movx	a,@dptr
      001896 FF               [12] 1163 	mov	r7,a
      001897 E0               [24] 1164 	movx	a,@dptr
      001898 70 13            [24] 1165 	jnz	00104$
                                   1166 ;	USBHost.c:91: UHUB0_CTRL = UHUB0_CTRL & ~ bUH_LOW_SPEED | bUH_BUS_RESET;
      00189A 74 FB            [12] 1167 	mov	a,#0xfb
      00189C 55 E4            [12] 1168 	anl	a,_UDEV_CTRL
      00189E 44 02            [12] 1169 	orl	a,#0x02
      0018A0 F5 E4            [12] 1170 	mov	_UDEV_CTRL,a
                                   1171 ;	USBHost.c:92: delay(15);
      0018A2 90 00 0F         [24] 1172 	mov	dptr,#0x000f
      0018A5 12 17 A9         [24] 1173 	lcall	_delay
                                   1174 ;	USBHost.c:93: UHUB0_CTRL = UHUB0_CTRL & ~ bUH_BUS_RESET;
      0018A8 53 E4 FD         [24] 1175 	anl	_UDEV_CTRL,#0xfd
      0018AB 80 14            [24] 1176 	sjmp	00105$
      0018AD                       1177 00104$:
                                   1178 ;	USBHost.c:95: else if (rootHubIndex == 1)
      0018AD BF 01 11         [24] 1179 	cjne	r7,#0x01,00105$
                                   1180 ;	USBHost.c:97: UHUB1_CTRL = UHUB1_CTRL & ~ bUH_LOW_SPEED | bUH_BUS_RESET;
      0018B0 74 FB            [12] 1181 	mov	a,#0xfb
      0018B2 55 E5            [12] 1182 	anl	a,_UHUB1_CTRL
      0018B4 44 02            [12] 1183 	orl	a,#0x02
      0018B6 F5 E5            [12] 1184 	mov	_UHUB1_CTRL,a
                                   1185 ;	USBHost.c:98: delay(15);
      0018B8 90 00 0F         [24] 1186 	mov	dptr,#0x000f
      0018BB 12 17 A9         [24] 1187 	lcall	_delay
                                   1188 ;	USBHost.c:99: UHUB1_CTRL = UHUB1_CTRL & ~ bUH_BUS_RESET;
      0018BE 53 E5 FD         [24] 1189 	anl	_UHUB1_CTRL,#0xfd
      0018C1                       1190 00105$:
                                   1191 ;	USBHost.c:101: delayUs(250);
      0018C1 90 00 FA         [24] 1192 	mov	dptr,#0x00fa
      0018C4 12 17 54         [24] 1193 	lcall	_delayUs
                                   1194 ;	USBHost.c:102: UIF_DETECT = 0; //todo test if redundant                                       
                                   1195 ;	assignBit
      0018C7 C2 D8            [12] 1196 	clr	_UIF_DETECT
                                   1197 ;	USBHost.c:103: }
      0018C9 22               [24] 1198 	ret
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'enableRootHubPort'
                                   1201 ;------------------------------------------------------------
                                   1202 ;rootHubIndex              Allocated with name '_enableRootHubPort_rootHubIndex_65536_61'
                                   1203 ;------------------------------------------------------------
                                   1204 ;	USBHost.c:105: unsigned char enableRootHubPort(unsigned char rootHubIndex)
                                   1205 ;	-----------------------------------------
                                   1206 ;	 function enableRootHubPort
                                   1207 ;	-----------------------------------------
      0018CA                       1208 _enableRootHubPort:
      0018CA E5 82            [12] 1209 	mov	a,dpl
      0018CC 90 09 8D         [24] 1210 	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_61
      0018CF F0               [24] 1211 	movx	@dptr,a
                                   1212 ;	USBHost.c:107: if ( rootHubDevice[ rootHubIndex ].status < 1 )
      0018D0 E0               [24] 1213 	movx	a,@dptr
      0018D1 75 F0 03         [24] 1214 	mov	b,#0x03
      0018D4 A4               [48] 1215 	mul	ab
      0018D5 24 83            [12] 1216 	add	a,#_rootHubDevice
      0018D7 FE               [12] 1217 	mov	r6,a
      0018D8 74 09            [12] 1218 	mov	a,#(_rootHubDevice >> 8)
      0018DA 35 F0            [12] 1219 	addc	a,b
      0018DC FF               [12] 1220 	mov	r7,a
      0018DD 8E 82            [24] 1221 	mov	dpl,r6
      0018DF 8F 83            [24] 1222 	mov	dph,r7
      0018E1 E0               [24] 1223 	movx	a,@dptr
      0018E2 FD               [12] 1224 	mov	r5,a
      0018E3 BD 01 00         [24] 1225 	cjne	r5,#0x01,00160$
      0018E6                       1226 00160$:
      0018E6 50 07            [24] 1227 	jnc	00102$
                                   1228 ;	USBHost.c:109: rootHubDevice[ rootHubIndex ].status = 1;
      0018E8 8E 82            [24] 1229 	mov	dpl,r6
      0018EA 8F 83            [24] 1230 	mov	dph,r7
      0018EC 74 01            [12] 1231 	mov	a,#0x01
      0018EE F0               [24] 1232 	movx	@dptr,a
      0018EF                       1233 00102$:
                                   1234 ;	USBHost.c:111: if (rootHubIndex == 0)
      0018EF 90 09 8D         [24] 1235 	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_61
      0018F2 E0               [24] 1236 	movx	a,@dptr
      0018F3 FF               [12] 1237 	mov	r7,a
      0018F4 70 49            [24] 1238 	jnz	00120$
                                   1239 ;	USBHost.c:113: if (USB_HUB_ST & bUHS_H0_ATTACH)
      0018F6 E5 DB            [12] 1240 	mov	a,_USB_HUB_ST
      0018F8 20 E3 03         [24] 1241 	jb	acc.3,00163$
      0018FB 02 19 88         [24] 1242 	ljmp	00121$
      0018FE                       1243 00163$:
                                   1244 ;	USBHost.c:115: if ((UHUB0_CTRL & bUH_PORT_EN) == 0x00)
      0018FE E5 E4            [12] 1245 	mov	a,_UDEV_CTRL
      001900 20 E0 35         [24] 1246 	jb	acc.0,00107$
                                   1247 ;	USBHost.c:117: if (USB_HUB_ST & bUHS_DM_LEVEL)
      001903 E5 DB            [12] 1248 	mov	a,_USB_HUB_ST
      001905 30 E2 1A         [24] 1249 	jnb	acc.2,00104$
                                   1250 ;	USBHost.c:119: rootHubDevice[rootHubIndex].speed = 0;
      001908 EF               [12] 1251 	mov	a,r7
      001909 75 F0 03         [24] 1252 	mov	b,#0x03
      00190C A4               [48] 1253 	mul	ab
      00190D 24 83            [12] 1254 	add	a,#_rootHubDevice
      00190F FD               [12] 1255 	mov	r5,a
      001910 74 09            [12] 1256 	mov	a,#(_rootHubDevice >> 8)
      001912 35 F0            [12] 1257 	addc	a,b
      001914 FE               [12] 1258 	mov	r6,a
      001915 8D 82            [24] 1259 	mov	dpl,r5
      001917 8E 83            [24] 1260 	mov	dph,r6
      001919 A3               [24] 1261 	inc	dptr
      00191A A3               [24] 1262 	inc	dptr
      00191B E4               [12] 1263 	clr	a
      00191C F0               [24] 1264 	movx	@dptr,a
                                   1265 ;	USBHost.c:120: UHUB0_CTRL |= bUH_LOW_SPEED;
      00191D 43 E4 04         [24] 1266 	orl	_UDEV_CTRL,#0x04
      001920 80 16            [24] 1267 	sjmp	00107$
      001922                       1268 00104$:
                                   1269 ;	USBHost.c:122: else rootHubDevice[rootHubIndex].speed = 1;
      001922 EF               [12] 1270 	mov	a,r7
      001923 75 F0 03         [24] 1271 	mov	b,#0x03
      001926 A4               [48] 1272 	mul	ab
      001927 24 83            [12] 1273 	add	a,#_rootHubDevice
      001929 FD               [12] 1274 	mov	r5,a
      00192A 74 09            [12] 1275 	mov	a,#(_rootHubDevice >> 8)
      00192C 35 F0            [12] 1276 	addc	a,b
      00192E FE               [12] 1277 	mov	r6,a
      00192F 8D 82            [24] 1278 	mov	dpl,r5
      001931 8E 83            [24] 1279 	mov	dph,r6
      001933 A3               [24] 1280 	inc	dptr
      001934 A3               [24] 1281 	inc	dptr
      001935 74 01            [12] 1282 	mov	a,#0x01
      001937 F0               [24] 1283 	movx	@dptr,a
      001938                       1284 00107$:
                                   1285 ;	USBHost.c:124: UHUB0_CTRL |= bUH_PORT_EN;
      001938 43 E4 01         [24] 1286 	orl	_UDEV_CTRL,#0x01
                                   1287 ;	USBHost.c:125: return ERR_SUCCESS;
      00193B 75 82 00         [24] 1288 	mov	dpl,#0x00
      00193E 22               [24] 1289 	ret
      00193F                       1290 00120$:
                                   1291 ;	USBHost.c:128: else if (rootHubIndex == 1)
      00193F BF 01 46         [24] 1292 	cjne	r7,#0x01,00121$
                                   1293 ;	USBHost.c:130: if (USB_HUB_ST & bUHS_H1_ATTACH)
      001942 E5 DB            [12] 1294 	mov	a,_USB_HUB_ST
      001944 30 E7 41         [24] 1295 	jnb	acc.7,00121$
                                   1296 ;	USBHost.c:132: if ((UHUB1_CTRL & bUH_PORT_EN ) == 0x00)
      001947 E5 E5            [12] 1297 	mov	a,_UHUB1_CTRL
      001949 20 E0 35         [24] 1298 	jb	acc.0,00114$
                                   1299 ;	USBHost.c:134: if (USB_HUB_ST & bUHS_HM_LEVEL)
      00194C E5 DB            [12] 1300 	mov	a,_USB_HUB_ST
      00194E 30 E6 1A         [24] 1301 	jnb	acc.6,00111$
                                   1302 ;	USBHost.c:136: rootHubDevice[rootHubIndex].speed = 0;
      001951 EF               [12] 1303 	mov	a,r7
      001952 75 F0 03         [24] 1304 	mov	b,#0x03
      001955 A4               [48] 1305 	mul	ab
      001956 24 83            [12] 1306 	add	a,#_rootHubDevice
      001958 FD               [12] 1307 	mov	r5,a
      001959 74 09            [12] 1308 	mov	a,#(_rootHubDevice >> 8)
      00195B 35 F0            [12] 1309 	addc	a,b
      00195D FE               [12] 1310 	mov	r6,a
      00195E 8D 82            [24] 1311 	mov	dpl,r5
      001960 8E 83            [24] 1312 	mov	dph,r6
      001962 A3               [24] 1313 	inc	dptr
      001963 A3               [24] 1314 	inc	dptr
      001964 E4               [12] 1315 	clr	a
      001965 F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	USBHost.c:137: UHUB1_CTRL |= bUH_LOW_SPEED;
      001966 43 E5 04         [24] 1318 	orl	_UHUB1_CTRL,#0x04
      001969 80 16            [24] 1319 	sjmp	00114$
      00196B                       1320 00111$:
                                   1321 ;	USBHost.c:139: else rootHubDevice[rootHubIndex].speed = 1;
      00196B EF               [12] 1322 	mov	a,r7
      00196C 75 F0 03         [24] 1323 	mov	b,#0x03
      00196F A4               [48] 1324 	mul	ab
      001970 24 83            [12] 1325 	add	a,#_rootHubDevice
      001972 FE               [12] 1326 	mov	r6,a
      001973 74 09            [12] 1327 	mov	a,#(_rootHubDevice >> 8)
      001975 35 F0            [12] 1328 	addc	a,b
      001977 FF               [12] 1329 	mov	r7,a
      001978 8E 82            [24] 1330 	mov	dpl,r6
      00197A 8F 83            [24] 1331 	mov	dph,r7
      00197C A3               [24] 1332 	inc	dptr
      00197D A3               [24] 1333 	inc	dptr
      00197E 74 01            [12] 1334 	mov	a,#0x01
      001980 F0               [24] 1335 	movx	@dptr,a
      001981                       1336 00114$:
                                   1337 ;	USBHost.c:141: UHUB1_CTRL |= bUH_PORT_EN;
      001981 43 E5 01         [24] 1338 	orl	_UHUB1_CTRL,#0x01
                                   1339 ;	USBHost.c:142: return ERR_SUCCESS;
      001984 75 82 00         [24] 1340 	mov	dpl,#0x00
      001987 22               [24] 1341 	ret
      001988                       1342 00121$:
                                   1343 ;	USBHost.c:145: return ERR_USB_DISCON;
      001988 75 82 16         [24] 1344 	mov	dpl,#0x16
                                   1345 ;	USBHost.c:146: }
      00198B 22               [24] 1346 	ret
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'selectHubPort'
                                   1349 ;------------------------------------------------------------
                                   1350 ;HubPortIndex              Allocated with name '_selectHubPort_PARM_2'
                                   1351 ;rootHubIndex              Allocated with name '_selectHubPort_rootHubIndex_65536_72'
                                   1352 ;temp                      Allocated with name '_selectHubPort_temp_65536_73'
                                   1353 ;------------------------------------------------------------
                                   1354 ;	USBHost.c:148: void selectHubPort(unsigned char rootHubIndex, unsigned char HubPortIndex)
                                   1355 ;	-----------------------------------------
                                   1356 ;	 function selectHubPort
                                   1357 ;	-----------------------------------------
      00198C                       1358 _selectHubPort:
      00198C E5 82            [12] 1359 	mov	a,dpl
      00198E 90 09 8F         [24] 1360 	mov	dptr,#_selectHubPort_rootHubIndex_65536_72
      001991 F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	USBHost.c:151: setHostUsbAddr(rootHubDevice[rootHubIndex].address); //todo ever != 0
      001992 E0               [24] 1363 	movx	a,@dptr
      001993 75 F0 03         [24] 1364 	mov	b,#0x03
      001996 A4               [48] 1365 	mul	ab
      001997 24 83            [12] 1366 	add	a,#_rootHubDevice
      001999 FE               [12] 1367 	mov	r6,a
      00199A 74 09            [12] 1368 	mov	a,#(_rootHubDevice >> 8)
      00199C 35 F0            [12] 1369 	addc	a,b
      00199E FF               [12] 1370 	mov	r7,a
      00199F 8E 82            [24] 1371 	mov	dpl,r6
      0019A1 8F 83            [24] 1372 	mov	dph,r7
      0019A3 A3               [24] 1373 	inc	dptr
      0019A4 E0               [24] 1374 	movx	a,@dptr
      0019A5 F5 82            [12] 1375 	mov	dpl,a
      0019A7 C0 07            [24] 1376 	push	ar7
      0019A9 C0 06            [24] 1377 	push	ar6
      0019AB 12 18 54         [24] 1378 	lcall	_setHostUsbAddr
      0019AE D0 06            [24] 1379 	pop	ar6
      0019B0 D0 07            [24] 1380 	pop	ar7
                                   1381 ;	USBHost.c:152: setUsbSpeed(rootHubDevice[rootHubIndex].speed); //isn't that set before?
      0019B2 8E 82            [24] 1382 	mov	dpl,r6
      0019B4 8F 83            [24] 1383 	mov	dph,r7
      0019B6 A3               [24] 1384 	inc	dptr
      0019B7 A3               [24] 1385 	inc	dptr
      0019B8 E0               [24] 1386 	movx	a,@dptr
      0019B9 F5 82            [12] 1387 	mov	dpl,a
                                   1388 ;	USBHost.c:153: }
      0019BB 02 18 66         [24] 1389 	ljmp	_setUsbSpeed
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'hostTransfer'
                                   1392 ;------------------------------------------------------------
                                   1393 ;sloc0                     Allocated with name '_hostTransfer_sloc0_1_0'
                                   1394 ;sloc1                     Allocated with name '_hostTransfer_sloc1_1_0'
                                   1395 ;sloc2                     Allocated with name '_hostTransfer_sloc2_1_0'
                                   1396 ;tog                       Allocated with name '_hostTransfer_PARM_2'
                                   1397 ;timeout                   Allocated with name '_hostTransfer_PARM_3'
                                   1398 ;endp_pid                  Allocated with name '_hostTransfer_endp_pid_65536_74'
                                   1399 ;retries                   Allocated with name '_hostTransfer_retries_65536_75'
                                   1400 ;r                         Allocated with name '_hostTransfer_r_65536_75'
                                   1401 ;i                         Allocated with name '_hostTransfer_i_65536_75'
                                   1402 ;------------------------------------------------------------
                                   1403 ;	USBHost.c:155: unsigned char hostTransfer(unsigned char endp_pid, unsigned char tog, unsigned short timeout )
                                   1404 ;	-----------------------------------------
                                   1405 ;	 function hostTransfer
                                   1406 ;	-----------------------------------------
      0019BE                       1407 _hostTransfer:
      0019BE E5 82            [12] 1408 	mov	a,dpl
      0019C0 90 09 93         [24] 1409 	mov	dptr,#_hostTransfer_endp_pid_65536_74
      0019C3 F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	USBHost.c:160: UH_RX_CTRL = tog;
      0019C4 90 09 90         [24] 1412 	mov	dptr,#_hostTransfer_PARM_2
      0019C7 E0               [24] 1413 	movx	a,@dptr
      0019C8 FF               [12] 1414 	mov	r7,a
      0019C9 8F D4            [24] 1415 	mov	_UEP2_CTRL,r7
                                   1416 ;	USBHost.c:161: UH_TX_CTRL = tog;
      0019CB 8F D6            [24] 1417 	mov	_UEP3_CTRL,r7
                                   1418 ;	USBHost.c:162: retries = 0;
      0019CD 90 09 94         [24] 1419 	mov	dptr,#_hostTransfer_retries_65536_75
      0019D0 E4               [12] 1420 	clr	a
      0019D1 F0               [24] 1421 	movx	@dptr,a
      0019D2 A3               [24] 1422 	inc	dptr
      0019D3 F0               [24] 1423 	movx	@dptr,a
                                   1424 ;	USBHost.c:163: do
      0019D4 90 09 93         [24] 1425 	mov	dptr,#_hostTransfer_endp_pid_65536_74
      0019D7 E0               [24] 1426 	movx	a,@dptr
      0019D8 FE               [12] 1427 	mov	r6,a
      0019D9 C4               [12] 1428 	swap	a
      0019DA 54 0F            [12] 1429 	anl	a,#0x0f
      0019DC FD               [12] 1430 	mov	r5,a
      0019DD BD 01 03         [24] 1431 	cjne	r5,#0x01,00257$
      0019E0 ED               [12] 1432 	mov	a,r5
      0019E1 80 01            [24] 1433 	sjmp	00258$
      0019E3                       1434 00257$:
      0019E3 E4               [12] 1435 	clr	a
      0019E4                       1436 00258$:
      0019E4 F5 24            [12] 1437 	mov	_hostTransfer_sloc2_1_0,a
      0019E6 E4               [12] 1438 	clr	a
      0019E7 BD 09 01         [24] 1439 	cjne	r5,#0x09,00259$
      0019EA 04               [12] 1440 	inc	a
      0019EB                       1441 00259$:
      0019EB FB               [12] 1442 	mov	r3,a
      0019EC 90 09 91         [24] 1443 	mov	dptr,#_hostTransfer_PARM_3
      0019EF E0               [24] 1444 	movx	a,@dptr
      0019F0 F9               [12] 1445 	mov	r1,a
      0019F1 A3               [24] 1446 	inc	dptr
      0019F2 E0               [24] 1447 	movx	a,@dptr
      0019F3 FA               [12] 1448 	mov	r2,a
      0019F4                       1449 00145$:
                                   1450 ;	USBHost.c:165: UH_EP_PID = endp_pid;                               
      0019F4 8E D5            [24] 1451 	mov	_UEP2_T_LEN,r6
                                   1452 ;	USBHost.c:166: UIF_TRANSFER = 0;            
                                   1453 ;	assignBit
      0019F6 C2 D9            [12] 1454 	clr	_UIF_TRANSFER
                                   1455 ;	USBHost.c:167: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--)
      0019F8 75 21 C8         [24] 1456 	mov	_hostTransfer_sloc0_1_0,#0xc8
      0019FB 75 22 00         [24] 1457 	mov	(_hostTransfer_sloc0_1_0 + 1),#0x00
      0019FE                       1458 00150$:
      0019FE E5 21            [12] 1459 	mov	a,_hostTransfer_sloc0_1_0
      001A00 45 22            [12] 1460 	orl	a,(_hostTransfer_sloc0_1_0 + 1)
      001A02 60 2C            [24] 1461 	jz	00101$
      001A04 20 D9 29         [24] 1462 	jb	_UIF_TRANSFER,00101$
                                   1463 ;	USBHost.c:168: delayUs(1);
      001A07 90 00 01         [24] 1464 	mov	dptr,#0x0001
      001A0A C0 07            [24] 1465 	push	ar7
      001A0C C0 06            [24] 1466 	push	ar6
      001A0E C0 05            [24] 1467 	push	ar5
      001A10 C0 03            [24] 1468 	push	ar3
      001A12 C0 02            [24] 1469 	push	ar2
      001A14 C0 01            [24] 1470 	push	ar1
      001A16 12 17 54         [24] 1471 	lcall	_delayUs
      001A19 D0 01            [24] 1472 	pop	ar1
      001A1B D0 02            [24] 1473 	pop	ar2
      001A1D D0 03            [24] 1474 	pop	ar3
      001A1F D0 05            [24] 1475 	pop	ar5
      001A21 D0 06            [24] 1476 	pop	ar6
      001A23 D0 07            [24] 1477 	pop	ar7
                                   1478 ;	USBHost.c:167: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--)
      001A25 15 21            [12] 1479 	dec	_hostTransfer_sloc0_1_0
      001A27 74 FF            [12] 1480 	mov	a,#0xff
      001A29 B5 21 02         [24] 1481 	cjne	a,_hostTransfer_sloc0_1_0,00263$
      001A2C 15 22            [12] 1482 	dec	(_hostTransfer_sloc0_1_0 + 1)
      001A2E                       1483 00263$:
      001A2E 80 CE            [24] 1484 	sjmp	00150$
      001A30                       1485 00101$:
                                   1486 ;	USBHost.c:169: UH_EP_PID = 0x00;                                         
      001A30 75 D5 00         [24] 1487 	mov	_UEP2_T_LEN,#0x00
                                   1488 ;	USBHost.c:170: if ( UIF_TRANSFER == 0 )
      001A33 20 D9 04         [24] 1489 	jb	_UIF_TRANSFER,00103$
                                   1490 ;	USBHost.c:172: return ERR_USB_UNKNOWN;
      001A36 75 82 FE         [24] 1491 	mov	dpl,#0xfe
      001A39 22               [24] 1492 	ret
      001A3A                       1493 00103$:
                                   1494 ;	USBHost.c:174: if ( UIF_TRANSFER )                                    
      001A3A 20 D9 03         [24] 1495 	jb	_UIF_TRANSFER,00265$
      001A3D 02 1B 3A         [24] 1496 	ljmp	00143$
      001A40                       1497 00265$:
                                   1498 ;	USBHost.c:176: if ( U_TOG_OK )
      001A40 30 DE 04         [24] 1499 	jnb	_U_TOG_OK,00105$
                                   1500 ;	USBHost.c:178: return( ERR_SUCCESS );
      001A43 75 82 00         [24] 1501 	mov	dpl,#0x00
      001A46 22               [24] 1502 	ret
      001A47                       1503 00105$:
                                   1504 ;	USBHost.c:180: r = USB_INT_ST & MASK_UIS_H_RES;               
      001A47 E5 D9            [12] 1505 	mov	a,_USB_INT_ST
      001A49 54 0F            [12] 1506 	anl	a,#0x0f
      001A4B F5 23            [12] 1507 	mov	_hostTransfer_sloc1_1_0,a
                                   1508 ;	USBHost.c:181: if ( r == USB_PID_STALL )
      001A4D 74 0E            [12] 1509 	mov	a,#0x0e
      001A4F B5 23 04         [24] 1510 	cjne	a,_hostTransfer_sloc1_1_0,00267$
      001A52 74 01            [12] 1511 	mov	a,#0x01
      001A54 80 01            [24] 1512 	sjmp	00268$
      001A56                       1513 00267$:
      001A56 E4               [12] 1514 	clr	a
      001A57                       1515 00268$:
      001A57 F5 21            [12] 1516 	mov	_hostTransfer_sloc0_1_0,a
      001A59 60 07            [24] 1517 	jz	00107$
                                   1518 ;	USBHost.c:183: return( r | ERR_USB_TRANSFER );
      001A5B 74 20            [12] 1519 	mov	a,#0x20
      001A5D 45 23            [12] 1520 	orl	a,_hostTransfer_sloc1_1_0
      001A5F F5 82            [12] 1521 	mov	dpl,a
      001A61 22               [24] 1522 	ret
      001A62                       1523 00107$:
                                   1524 ;	USBHost.c:185: if ( r == USB_PID_NAK )
      001A62 74 0A            [12] 1525 	mov	a,#0x0a
      001A64 B5 23 04         [24] 1526 	cjne	a,_hostTransfer_sloc1_1_0,00270$
      001A67 74 01            [12] 1527 	mov	a,#0x01
      001A69 80 01            [24] 1528 	sjmp	00271$
      001A6B                       1529 00270$:
      001A6B E4               [12] 1530 	clr	a
      001A6C                       1531 00271$:
      001A6C F8               [12] 1532 	mov	r0,a
      001A6D 60 3F            [24] 1533 	jz	00140$
                                   1534 ;	USBHost.c:187: if ( timeout == 0 )
      001A6F E9               [12] 1535 	mov	a,r1
      001A70 4A               [12] 1536 	orl	a,r2
      001A71 70 0A            [24] 1537 	jnz	00109$
                                   1538 ;	USBHost.c:189: return( r | ERR_USB_TRANSFER );
      001A73 74 20            [12] 1539 	mov	a,#0x20
      001A75 45 23            [12] 1540 	orl	a,_hostTransfer_sloc1_1_0
      001A77 F5 24            [12] 1541 	mov	_hostTransfer_sloc2_1_0,a
      001A79 85 24 82         [24] 1542 	mov	dpl,_hostTransfer_sloc2_1_0
      001A7C 22               [24] 1543 	ret
      001A7D                       1544 00109$:
                                   1545 ;	USBHost.c:191: if ( timeout < 0xFFFF )
      001A7D C0 03            [24] 1546 	push	ar3
      001A7F 89 03            [24] 1547 	mov	ar3,r1
      001A81 8A 04            [24] 1548 	mov	ar4,r2
      001A83 C3               [12] 1549 	clr	c
      001A84 EB               [12] 1550 	mov	a,r3
      001A85 94 FF            [12] 1551 	subb	a,#0xff
      001A87 EC               [12] 1552 	mov	a,r4
      001A88 94 FF            [12] 1553 	subb	a,#0xff
      001A8A D0 03            [24] 1554 	pop	ar3
      001A8C 50 05            [24] 1555 	jnc	00111$
                                   1556 ;	USBHost.c:193: timeout --;
      001A8E 19               [12] 1557 	dec	r1
      001A8F B9 FF 01         [24] 1558 	cjne	r1,#0xff,00275$
      001A92 1A               [12] 1559 	dec	r2
      001A93                       1560 00275$:
      001A93                       1561 00111$:
                                   1562 ;	USBHost.c:195: retries--;
      001A93 C0 03            [24] 1563 	push	ar3
      001A95 90 09 94         [24] 1564 	mov	dptr,#_hostTransfer_retries_65536_75
      001A98 E0               [24] 1565 	movx	a,@dptr
      001A99 24 FF            [12] 1566 	add	a,#0xff
      001A9B FB               [12] 1567 	mov	r3,a
      001A9C A3               [24] 1568 	inc	dptr
      001A9D E0               [24] 1569 	movx	a,@dptr
      001A9E 34 FF            [12] 1570 	addc	a,#0xff
      001AA0 FC               [12] 1571 	mov	r4,a
      001AA1 90 09 94         [24] 1572 	mov	dptr,#_hostTransfer_retries_65536_75
      001AA4 EB               [12] 1573 	mov	a,r3
      001AA5 F0               [24] 1574 	movx	@dptr,a
      001AA6 EC               [12] 1575 	mov	a,r4
      001AA7 A3               [24] 1576 	inc	dptr
      001AA8 F0               [24] 1577 	movx	@dptr,a
      001AA9 D0 03            [24] 1578 	pop	ar3
      001AAB 02 1B 3D         [24] 1579 	ljmp	00144$
      001AAE                       1580 00140$:
                                   1581 ;	USBHost.c:197: else switch ( endp_pid >> 4 )    //todo no return.. compare to other guy
      001AAE E5 24            [12] 1582 	mov	a,_hostTransfer_sloc2_1_0
      001AB0 70 0B            [24] 1583 	jnz	00113$
      001AB2 EB               [12] 1584 	mov	a,r3
      001AB3 70 31            [24] 1585 	jnz	00123$
      001AB5 BD 0D 02         [24] 1586 	cjne	r5,#0x0d,00278$
      001AB8 80 03            [24] 1587 	sjmp	00279$
      001ABA                       1588 00278$:
      001ABA 02 1B 36         [24] 1589 	ljmp	00137$
      001ABD                       1590 00279$:
                                   1591 ;	USBHost.c:200: case USB_PID_OUT:
      001ABD                       1592 00113$:
                                   1593 ;	USBHost.c:201: if ( U_TOG_OK )
      001ABD 30 DE 04         [24] 1594 	jnb	_U_TOG_OK,00115$
                                   1595 ;	USBHost.c:203: return( ERR_SUCCESS );
      001AC0 75 82 00         [24] 1596 	mov	dpl,#0x00
      001AC3 22               [24] 1597 	ret
      001AC4                       1598 00115$:
                                   1599 ;	USBHost.c:205: if ( r == USB_PID_ACK )
      001AC4 74 02            [12] 1600 	mov	a,#0x02
      001AC6 B5 23 04         [24] 1601 	cjne	a,_hostTransfer_sloc1_1_0,00117$
                                   1602 ;	USBHost.c:207: return( ERR_SUCCESS );
      001AC9 75 82 00         [24] 1603 	mov	dpl,#0x00
      001ACC 22               [24] 1604 	ret
      001ACD                       1605 00117$:
                                   1606 ;	USBHost.c:209: if ( r == USB_PID_STALL || r == USB_PID_NAK )
      001ACD E5 21            [12] 1607 	mov	a,_hostTransfer_sloc0_1_0
      001ACF 70 03            [24] 1608 	jnz	00118$
      001AD1 E8               [12] 1609 	mov	a,r0
      001AD2 60 07            [24] 1610 	jz	00119$
      001AD4                       1611 00118$:
                                   1612 ;	USBHost.c:211: return( r | ERR_USB_TRANSFER );
      001AD4 74 20            [12] 1613 	mov	a,#0x20
      001AD6 45 23            [12] 1614 	orl	a,_hostTransfer_sloc1_1_0
      001AD8 F5 82            [12] 1615 	mov	dpl,a
      001ADA 22               [24] 1616 	ret
      001ADB                       1617 00119$:
                                   1618 ;	USBHost.c:213: if ( r )
      001ADB E5 23            [12] 1619 	mov	a,_hostTransfer_sloc1_1_0
      001ADD 60 5E            [24] 1620 	jz	00144$
                                   1621 ;	USBHost.c:215: return( r | ERR_USB_TRANSFER );          
      001ADF 74 20            [12] 1622 	mov	a,#0x20
      001AE1 45 23            [12] 1623 	orl	a,_hostTransfer_sloc1_1_0
      001AE3 F5 82            [12] 1624 	mov	dpl,a
      001AE5 22               [24] 1625 	ret
                                   1626 ;	USBHost.c:218: case USB_PID_IN:
      001AE6                       1627 00123$:
                                   1628 ;	USBHost.c:219: if ( U_TOG_OK )
      001AE6 30 DE 04         [24] 1629 	jnb	_U_TOG_OK,00125$
                                   1630 ;	USBHost.c:221: return( ERR_SUCCESS );
      001AE9 75 82 00         [24] 1631 	mov	dpl,#0x00
      001AEC 22               [24] 1632 	ret
      001AED                       1633 00125$:
                                   1634 ;	USBHost.c:223: if ( tog ? r == USB_PID_DATA1 : r == USB_PID_DATA0 )
      001AED EF               [12] 1635 	mov	a,r7
      001AEE 60 0D            [24] 1636 	jz	00154$
      001AF0 74 0B            [12] 1637 	mov	a,#0x0b
      001AF2 B5 23 04         [24] 1638 	cjne	a,_hostTransfer_sloc1_1_0,00288$
      001AF5 74 01            [12] 1639 	mov	a,#0x01
      001AF7 80 01            [24] 1640 	sjmp	00289$
      001AF9                       1641 00288$:
      001AF9 E4               [12] 1642 	clr	a
      001AFA                       1643 00289$:
      001AFA FC               [12] 1644 	mov	r4,a
      001AFB 80 0B            [24] 1645 	sjmp	00155$
      001AFD                       1646 00154$:
      001AFD 74 03            [12] 1647 	mov	a,#0x03
      001AFF B5 23 04         [24] 1648 	cjne	a,_hostTransfer_sloc1_1_0,00290$
      001B02 74 01            [12] 1649 	mov	a,#0x01
      001B04 80 01            [24] 1650 	sjmp	00291$
      001B06                       1651 00290$:
      001B06 E4               [12] 1652 	clr	a
      001B07                       1653 00291$:
      001B07 FC               [12] 1654 	mov	r4,a
      001B08                       1655 00155$:
      001B08 EC               [12] 1656 	mov	a,r4
      001B09 60 04            [24] 1657 	jz	00127$
                                   1658 ;	USBHost.c:225: return( ERR_SUCCESS );
      001B0B 75 82 00         [24] 1659 	mov	dpl,#0x00
      001B0E 22               [24] 1660 	ret
      001B0F                       1661 00127$:
                                   1662 ;	USBHost.c:227: if ( r == USB_PID_STALL || r == USB_PID_NAK )
      001B0F E5 21            [12] 1663 	mov	a,_hostTransfer_sloc0_1_0
      001B11 70 03            [24] 1664 	jnz	00128$
      001B13 E8               [12] 1665 	mov	a,r0
      001B14 60 07            [24] 1666 	jz	00129$
      001B16                       1667 00128$:
                                   1668 ;	USBHost.c:229: return( r | ERR_USB_TRANSFER );
      001B16 74 20            [12] 1669 	mov	a,#0x20
      001B18 45 23            [12] 1670 	orl	a,_hostTransfer_sloc1_1_0
      001B1A F5 82            [12] 1671 	mov	dpl,a
      001B1C 22               [24] 1672 	ret
      001B1D                       1673 00129$:
                                   1674 ;	USBHost.c:231: if ( r == USB_PID_DATA0 || r == USB_PID_DATA1 ) // ( r == USB_PID_DATA0 && r == USB_PID_DATA1 )
      001B1D 74 03            [12] 1675 	mov	a,#0x03
      001B1F B5 23 02         [24] 1676 	cjne	a,_hostTransfer_sloc1_1_0,00295$
      001B22 80 19            [24] 1677 	sjmp	00144$
      001B24                       1678 00295$:
      001B24 74 0B            [12] 1679 	mov	a,#0x0b
      001B26 B5 23 02         [24] 1680 	cjne	a,_hostTransfer_sloc1_1_0,00296$
      001B29 80 12            [24] 1681 	sjmp	00144$
      001B2B                       1682 00296$:
                                   1683 ;	USBHost.c:234: else if ( r )
      001B2B E5 23            [12] 1684 	mov	a,_hostTransfer_sloc1_1_0
      001B2D 60 0E            [24] 1685 	jz	00144$
                                   1686 ;	USBHost.c:236: return( r | ERR_USB_TRANSFER );     
      001B2F 74 20            [12] 1687 	mov	a,#0x20
      001B31 45 23            [12] 1688 	orl	a,_hostTransfer_sloc1_1_0
      001B33 F5 82            [12] 1689 	mov	dpl,a
                                   1690 ;	USBHost.c:239: default:
      001B35 22               [24] 1691 	ret
      001B36                       1692 00137$:
                                   1693 ;	USBHost.c:240: return( ERR_USB_UNKNOWN );                  
      001B36 75 82 FE         [24] 1694 	mov	dpl,#0xfe
                                   1695 ;	USBHost.c:242: }
      001B39 22               [24] 1696 	ret
      001B3A                       1697 00143$:
                                   1698 ;	USBHost.c:246: USB_INT_FG = 0xFF;                               
      001B3A 75 D8 FF         [24] 1699 	mov	_USB_INT_FG,#0xff
      001B3D                       1700 00144$:
                                   1701 ;	USBHost.c:248: delayUs(15);
      001B3D 90 00 0F         [24] 1702 	mov	dptr,#0x000f
      001B40 C0 07            [24] 1703 	push	ar7
      001B42 C0 06            [24] 1704 	push	ar6
      001B44 C0 05            [24] 1705 	push	ar5
      001B46 C0 03            [24] 1706 	push	ar3
      001B48 C0 02            [24] 1707 	push	ar2
      001B4A C0 01            [24] 1708 	push	ar1
      001B4C 12 17 54         [24] 1709 	lcall	_delayUs
      001B4F D0 01            [24] 1710 	pop	ar1
      001B51 D0 02            [24] 1711 	pop	ar2
      001B53 D0 03            [24] 1712 	pop	ar3
      001B55 D0 05            [24] 1713 	pop	ar5
      001B57 D0 06            [24] 1714 	pop	ar6
      001B59 D0 07            [24] 1715 	pop	ar7
                                   1716 ;	USBHost.c:250: while ( ++retries < 200 );
      001B5B 90 09 94         [24] 1717 	mov	dptr,#_hostTransfer_retries_65536_75
      001B5E E0               [24] 1718 	movx	a,@dptr
      001B5F 24 01            [12] 1719 	add	a,#0x01
      001B61 F0               [24] 1720 	movx	@dptr,a
      001B62 A3               [24] 1721 	inc	dptr
      001B63 E0               [24] 1722 	movx	a,@dptr
      001B64 34 00            [12] 1723 	addc	a,#0x00
      001B66 F0               [24] 1724 	movx	@dptr,a
      001B67 90 09 94         [24] 1725 	mov	dptr,#_hostTransfer_retries_65536_75
      001B6A E0               [24] 1726 	movx	a,@dptr
      001B6B F8               [12] 1727 	mov	r0,a
      001B6C A3               [24] 1728 	inc	dptr
      001B6D E0               [24] 1729 	movx	a,@dptr
      001B6E FC               [12] 1730 	mov	r4,a
      001B6F C3               [12] 1731 	clr	c
      001B70 E8               [12] 1732 	mov	a,r0
      001B71 94 C8            [12] 1733 	subb	a,#0xc8
      001B73 EC               [12] 1734 	mov	a,r4
      001B74 94 00            [12] 1735 	subb	a,#0x00
      001B76 50 03            [24] 1736 	jnc	00298$
      001B78 02 19 F4         [24] 1737 	ljmp	00145$
      001B7B                       1738 00298$:
                                   1739 ;	USBHost.c:251: return( ERR_USB_TRANSFER );                              
      001B7B 75 82 20         [24] 1740 	mov	dpl,#0x20
                                   1741 ;	USBHost.c:252: }
      001B7E 22               [24] 1742 	ret
                                   1743 ;------------------------------------------------------------
                                   1744 ;Allocation info for local variables in function 'hostCtrlTransfer'
                                   1745 ;------------------------------------------------------------
                                   1746 ;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
                                   1747 ;sloc1                     Allocated with name '_hostCtrlTransfer_sloc1_1_0'
                                   1748 ;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
                                   1749 ;maxLenght                 Allocated with name '_hostCtrlTransfer_PARM_3'
                                   1750 ;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_96'
                                   1751 ;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_97'
                                   1752 ;temp                      Allocated with name '_hostCtrlTransfer_temp_65536_97'
                                   1753 ;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_97'
                                   1754 ;s                         Allocated with name '_hostCtrlTransfer_s_65536_97'
                                   1755 ;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_97'
                                   1756 ;i                         Allocated with name '_hostCtrlTransfer_i_65536_97'
                                   1757 ;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_97'
                                   1758 ;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_97'
                                   1759 ;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_98'
                                   1760 ;------------------------------------------------------------
                                   1761 ;	USBHost.c:255: unsigned char hostCtrlTransfer(unsigned char __xdata *DataBuf, unsigned short *RetLen, unsigned short maxLenght)
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function hostCtrlTransfer
                                   1764 ;	-----------------------------------------
      001B7F                       1765 _hostCtrlTransfer:
      001B7F AF 83            [24] 1766 	mov	r7,dph
      001B81 E5 82            [12] 1767 	mov	a,dpl
      001B83 90 09 9B         [24] 1768 	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_96
      001B86 F0               [24] 1769 	movx	@dptr,a
      001B87 EF               [12] 1770 	mov	a,r7
      001B88 A3               [24] 1771 	inc	dptr
      001B89 F0               [24] 1772 	movx	@dptr,a
                                   1773 ;	USBHost.c:263: DEBUG_OUT("hostCtrlTransfer\n");
      001B8A 74 B4            [12] 1774 	mov	a,#___str_0
      001B8C C0 E0            [24] 1775 	push	acc
      001B8E 74 4C            [12] 1776 	mov	a,#(___str_0 >> 8)
      001B90 C0 E0            [24] 1777 	push	acc
      001B92 74 80            [12] 1778 	mov	a,#0x80
      001B94 C0 E0            [24] 1779 	push	acc
      001B96 12 41 F8         [24] 1780 	lcall	_printf
      001B99 15 81            [12] 1781 	dec	sp
      001B9B 15 81            [12] 1782 	dec	sp
      001B9D 15 81            [12] 1783 	dec	sp
                                   1784 ;	USBHost.c:264: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   1785 ;	USBHost.c:265: pBuf = DataBuf;
      001B9F 90 09 9B         [24] 1786 	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_96
      001BA2 E0               [24] 1787 	movx	a,@dptr
      001BA3 FE               [12] 1788 	mov	r6,a
      001BA4 A3               [24] 1789 	inc	dptr
      001BA5 E0               [24] 1790 	movx	a,@dptr
      001BA6 FF               [12] 1791 	mov	r7,a
      001BA7 90 09 A0         [24] 1792 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001BAA EE               [12] 1793 	mov	a,r6
      001BAB F0               [24] 1794 	movx	@dptr,a
      001BAC EF               [12] 1795 	mov	a,r7
      001BAD A3               [24] 1796 	inc	dptr
      001BAE F0               [24] 1797 	movx	@dptr,a
                                   1798 ;	USBHost.c:266: pLen = RetLen;
      001BAF 90 09 96         [24] 1799 	mov	dptr,#_hostCtrlTransfer_PARM_2
      001BB2 E0               [24] 1800 	movx	a,@dptr
      001BB3 FB               [12] 1801 	mov	r3,a
      001BB4 A3               [24] 1802 	inc	dptr
      001BB5 E0               [24] 1803 	movx	a,@dptr
      001BB6 FC               [12] 1804 	mov	r4,a
      001BB7 A3               [24] 1805 	inc	dptr
      001BB8 E0               [24] 1806 	movx	a,@dptr
      001BB9 FD               [12] 1807 	mov	r5,a
                                   1808 ;	USBHost.c:267: delayUs(200);
      001BBA 90 00 C8         [24] 1809 	mov	dptr,#0x00c8
      001BBD C0 07            [24] 1810 	push	ar7
      001BBF C0 06            [24] 1811 	push	ar6
      001BC1 C0 05            [24] 1812 	push	ar5
      001BC3 C0 04            [24] 1813 	push	ar4
      001BC5 C0 03            [24] 1814 	push	ar3
      001BC7 12 17 54         [24] 1815 	lcall	_delayUs
      001BCA D0 03            [24] 1816 	pop	ar3
      001BCC D0 04            [24] 1817 	pop	ar4
      001BCE D0 05            [24] 1818 	pop	ar5
      001BD0 D0 06            [24] 1819 	pop	ar6
      001BD2 D0 07            [24] 1820 	pop	ar7
                                   1821 ;	USBHost.c:268: if (pLen)
      001BD4 EB               [12] 1822 	mov	a,r3
      001BD5 4C               [12] 1823 	orl	a,r4
      001BD6 60 0E            [24] 1824 	jz	00102$
                                   1825 ;	USBHost.c:269: *pLen = 0;
      001BD8 8B 82            [24] 1826 	mov	dpl,r3
      001BDA 8C 83            [24] 1827 	mov	dph,r4
      001BDC 8D F0            [24] 1828 	mov	b,r5
      001BDE E4               [12] 1829 	clr	a
      001BDF 12 41 8F         [24] 1830 	lcall	__gptrput
      001BE2 A3               [24] 1831 	inc	dptr
      001BE3 12 41 8F         [24] 1832 	lcall	__gptrput
      001BE6                       1833 00102$:
                                   1834 ;	USBHost.c:270: UH_TX_LEN = sizeof(USB_SETUP_REQ);
      001BE6 75 D7 08         [24] 1835 	mov	_UEP3_T_LEN,#0x08
                                   1836 ;	USBHost.c:271: s = hostTransfer((unsigned char)(USB_PID_SETUP << 4), 0, 10000);
      001BE9 90 09 90         [24] 1837 	mov	dptr,#_hostTransfer_PARM_2
      001BEC E4               [12] 1838 	clr	a
      001BED F0               [24] 1839 	movx	@dptr,a
      001BEE 90 09 91         [24] 1840 	mov	dptr,#_hostTransfer_PARM_3
      001BF1 74 10            [12] 1841 	mov	a,#0x10
      001BF3 F0               [24] 1842 	movx	@dptr,a
      001BF4 74 27            [12] 1843 	mov	a,#0x27
      001BF6 A3               [24] 1844 	inc	dptr
      001BF7 F0               [24] 1845 	movx	@dptr,a
      001BF8 75 82 D0         [24] 1846 	mov	dpl,#0xd0
      001BFB C0 07            [24] 1847 	push	ar7
      001BFD C0 06            [24] 1848 	push	ar6
      001BFF C0 05            [24] 1849 	push	ar5
      001C01 C0 04            [24] 1850 	push	ar4
      001C03 C0 03            [24] 1851 	push	ar3
      001C05 12 19 BE         [24] 1852 	lcall	_hostTransfer
      001C08 AA 82            [24] 1853 	mov	r2,dpl
      001C0A D0 03            [24] 1854 	pop	ar3
      001C0C D0 04            [24] 1855 	pop	ar4
      001C0E D0 05            [24] 1856 	pop	ar5
      001C10 D0 06            [24] 1857 	pop	ar6
      001C12 D0 07            [24] 1858 	pop	ar7
                                   1859 ;	USBHost.c:272: if (s != ERR_SUCCESS)
      001C14 EA               [12] 1860 	mov	a,r2
      001C15 60 03            [24] 1861 	jz	00104$
                                   1862 ;	USBHost.c:273: return (s);
      001C17 8A 82            [24] 1863 	mov	dpl,r2
      001C19 22               [24] 1864 	ret
      001C1A                       1865 00104$:
                                   1866 ;	USBHost.c:274: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;
      001C1A C0 06            [24] 1867 	push	ar6
      001C1C C0 07            [24] 1868 	push	ar7
      001C1E 75 D6 D0         [24] 1869 	mov	_UEP3_CTRL,#0xd0
      001C21 75 D4 D0         [24] 1870 	mov	_UEP2_CTRL,#0xd0
                                   1871 ;	USBHost.c:275: UH_TX_LEN = 0x01;
      001C24 75 D7 01         [24] 1872 	mov	_UEP3_T_LEN,#0x01
                                   1873 ;	USBHost.c:276: RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);
      001C27 90 01 07         [24] 1874 	mov	dptr,#(_TxBuffer + 0x0007)
      001C2A E0               [24] 1875 	movx	a,@dptr
      001C2B FA               [12] 1876 	mov	r2,a
      001C2C 79 00            [12] 1877 	mov	r1,#0x00
      001C2E 90 01 06         [24] 1878 	mov	dptr,#(_TxBuffer + 0x0006)
      001C31 E0               [24] 1879 	movx	a,@dptr
      001C32 F8               [12] 1880 	mov	r0,a
      001C33 7F 00            [12] 1881 	mov	r7,#0x00
      001C35 42 01            [12] 1882 	orl	ar1,a
      001C37 EF               [12] 1883 	mov	a,r7
      001C38 42 02            [12] 1884 	orl	ar2,a
      001C3A 89 25            [24] 1885 	mov	_hostCtrlTransfer_sloc0_1_0,r1
      001C3C 8A 26            [24] 1886 	mov	(_hostCtrlTransfer_sloc0_1_0 + 1),r2
      001C3E 90 09 9E         [24] 1887 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001C41 E5 25            [12] 1888 	mov	a,_hostCtrlTransfer_sloc0_1_0
      001C43 F0               [24] 1889 	movx	@dptr,a
      001C44 E5 26            [12] 1890 	mov	a,(_hostCtrlTransfer_sloc0_1_0 + 1)
      001C46 A3               [24] 1891 	inc	dptr
      001C47 F0               [24] 1892 	movx	@dptr,a
                                   1893 ;	USBHost.c:277: if (RemLen && pBuf)
      001C48 D0 07            [24] 1894 	pop	ar7
      001C4A D0 06            [24] 1895 	pop	ar6
      001C4C E5 25            [12] 1896 	mov	a,_hostCtrlTransfer_sloc0_1_0
      001C4E 45 26            [12] 1897 	orl	a,(_hostCtrlTransfer_sloc0_1_0 + 1)
      001C50 70 03            [24] 1898 	jnz	00249$
      001C52 02 1F 09         [24] 1899 	ljmp	00129$
      001C55                       1900 00249$:
      001C55 EE               [12] 1901 	mov	a,r6
      001C56 4F               [12] 1902 	orl	a,r7
      001C57 70 03            [24] 1903 	jnz	00250$
      001C59 02 1F 09         [24] 1904 	ljmp	00129$
      001C5C                       1905 00250$:
                                   1906 ;	USBHost.c:279: if (pSetupReq->bRequestType & USB_REQ_TYP_IN)
      001C5C 90 01 00         [24] 1907 	mov	dptr,#_TxBuffer
      001C5F E0               [24] 1908 	movx	a,@dptr
      001C60 FF               [12] 1909 	mov	r7,a
      001C61 20 E7 03         [24] 1910 	jb	acc.7,00251$
      001C64 02 1D A4         [24] 1911 	ljmp	00126$
      001C67                       1912 00251$:
                                   1913 ;	USBHost.c:281: DEBUG_OUT("Remaining bytes to read %d\n", RemLen);
      001C67 C0 05            [24] 1914 	push	ar5
      001C69 C0 04            [24] 1915 	push	ar4
      001C6B C0 03            [24] 1916 	push	ar3
      001C6D C0 25            [24] 1917 	push	_hostCtrlTransfer_sloc0_1_0
      001C6F C0 26            [24] 1918 	push	(_hostCtrlTransfer_sloc0_1_0 + 1)
      001C71 74 C6            [12] 1919 	mov	a,#___str_1
      001C73 C0 E0            [24] 1920 	push	acc
      001C75 74 4C            [12] 1921 	mov	a,#(___str_1 >> 8)
      001C77 C0 E0            [24] 1922 	push	acc
      001C79 74 80            [12] 1923 	mov	a,#0x80
      001C7B C0 E0            [24] 1924 	push	acc
      001C7D 12 41 F8         [24] 1925 	lcall	_printf
      001C80 E5 81            [12] 1926 	mov	a,sp
      001C82 24 FB            [12] 1927 	add	a,#0xfb
      001C84 F5 81            [12] 1928 	mov	sp,a
      001C86 D0 03            [24] 1929 	pop	ar3
      001C88 D0 04            [24] 1930 	pop	ar4
      001C8A D0 05            [24] 1931 	pop	ar5
                                   1932 ;	USBHost.c:282: while (RemLen)
      001C8C                       1933 00113$:
      001C8C 90 09 9E         [24] 1934 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001C8F E0               [24] 1935 	movx	a,@dptr
      001C90 FE               [12] 1936 	mov	r6,a
      001C91 A3               [24] 1937 	inc	dptr
      001C92 E0               [24] 1938 	movx	a,@dptr
      001C93 FF               [12] 1939 	mov	r7,a
      001C94 4E               [12] 1940 	orl	a,r6
      001C95 70 03            [24] 1941 	jnz	00252$
      001C97 02 1D 9E         [24] 1942 	ljmp	00115$
      001C9A                       1943 00252$:
                                   1944 ;	USBHost.c:284: delayUs(300);
      001C9A 90 01 2C         [24] 1945 	mov	dptr,#0x012c
      001C9D C0 07            [24] 1946 	push	ar7
      001C9F C0 06            [24] 1947 	push	ar6
      001CA1 C0 05            [24] 1948 	push	ar5
      001CA3 C0 04            [24] 1949 	push	ar4
      001CA5 C0 03            [24] 1950 	push	ar3
      001CA7 12 17 54         [24] 1951 	lcall	_delayUs
                                   1952 ;	USBHost.c:285: s = hostTransfer((unsigned char)(USB_PID_IN << 4), UH_RX_CTRL, 10000); 
      001CAA 90 09 90         [24] 1953 	mov	dptr,#_hostTransfer_PARM_2
      001CAD E5 D4            [12] 1954 	mov	a,_UEP2_CTRL
      001CAF F0               [24] 1955 	movx	@dptr,a
      001CB0 90 09 91         [24] 1956 	mov	dptr,#_hostTransfer_PARM_3
      001CB3 74 10            [12] 1957 	mov	a,#0x10
      001CB5 F0               [24] 1958 	movx	@dptr,a
      001CB6 74 27            [12] 1959 	mov	a,#0x27
      001CB8 A3               [24] 1960 	inc	dptr
      001CB9 F0               [24] 1961 	movx	@dptr,a
      001CBA 75 82 90         [24] 1962 	mov	dpl,#0x90
      001CBD 12 19 BE         [24] 1963 	lcall	_hostTransfer
      001CC0 AA 82            [24] 1964 	mov	r2,dpl
      001CC2 D0 03            [24] 1965 	pop	ar3
      001CC4 D0 04            [24] 1966 	pop	ar4
      001CC6 D0 05            [24] 1967 	pop	ar5
      001CC8 D0 06            [24] 1968 	pop	ar6
      001CCA D0 07            [24] 1969 	pop	ar7
                                   1970 ;	USBHost.c:286: if (s != ERR_SUCCESS)
      001CCC EA               [12] 1971 	mov	a,r2
      001CCD 60 03            [24] 1972 	jz	00106$
                                   1973 ;	USBHost.c:287: return (s);
      001CCF 8A 82            [24] 1974 	mov	dpl,r2
      001CD1 22               [24] 1975 	ret
      001CD2                       1976 00106$:
                                   1977 ;	USBHost.c:288: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
      001CD2 A9 D1            [24] 1978 	mov	r1,_USB_RX_LEN
      001CD4 7A 00            [12] 1979 	mov	r2,#0x00
      001CD6 C3               [12] 1980 	clr	c
      001CD7 E9               [12] 1981 	mov	a,r1
      001CD8 9E               [12] 1982 	subb	a,r6
      001CD9 EA               [12] 1983 	mov	a,r2
      001CDA 9F               [12] 1984 	subb	a,r7
      001CDB 50 06            [24] 1985 	jnc	00142$
      001CDD A9 D1            [24] 1986 	mov	r1,_USB_RX_LEN
      001CDF 7A 00            [12] 1987 	mov	r2,#0x00
      001CE1 80 04            [24] 1988 	sjmp	00143$
      001CE3                       1989 00142$:
      001CE3 8E 01            [24] 1990 	mov	ar1,r6
      001CE5 8F 02            [24] 1991 	mov	ar2,r7
      001CE7                       1992 00143$:
                                   1993 ;	USBHost.c:289: RemLen -= RxLen;
      001CE7 89 06            [24] 1994 	mov	ar6,r1
      001CE9 7F 00            [12] 1995 	mov	r7,#0x00
      001CEB 90 09 9E         [24] 1996 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001CEE E0               [24] 1997 	movx	a,@dptr
      001CEF F8               [12] 1998 	mov	r0,a
      001CF0 A3               [24] 1999 	inc	dptr
      001CF1 E0               [24] 2000 	movx	a,@dptr
      001CF2 FA               [12] 2001 	mov	r2,a
      001CF3 E8               [12] 2002 	mov	a,r0
      001CF4 C3               [12] 2003 	clr	c
      001CF5 9E               [12] 2004 	subb	a,r6
      001CF6 F8               [12] 2005 	mov	r0,a
      001CF7 EA               [12] 2006 	mov	a,r2
      001CF8 9F               [12] 2007 	subb	a,r7
      001CF9 FA               [12] 2008 	mov	r2,a
      001CFA 90 09 9E         [24] 2009 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001CFD E8               [12] 2010 	mov	a,r0
      001CFE F0               [24] 2011 	movx	@dptr,a
      001CFF EA               [12] 2012 	mov	a,r2
      001D00 A3               [24] 2013 	inc	dptr
      001D01 F0               [24] 2014 	movx	@dptr,a
                                   2015 ;	USBHost.c:290: if (pLen)
      001D02 EB               [12] 2016 	mov	a,r3
      001D03 4C               [12] 2017 	orl	a,r4
      001D04 60 24            [24] 2018 	jz	00160$
                                   2019 ;	USBHost.c:291: *pLen += RxLen;
      001D06 8B 82            [24] 2020 	mov	dpl,r3
      001D08 8C 83            [24] 2021 	mov	dph,r4
      001D0A 8D F0            [24] 2022 	mov	b,r5
      001D0C 12 4C 44         [24] 2023 	lcall	__gptrget
      001D0F F8               [12] 2024 	mov	r0,a
      001D10 A3               [24] 2025 	inc	dptr
      001D11 12 4C 44         [24] 2026 	lcall	__gptrget
      001D14 FA               [12] 2027 	mov	r2,a
      001D15 EE               [12] 2028 	mov	a,r6
      001D16 28               [12] 2029 	add	a,r0
      001D17 FE               [12] 2030 	mov	r6,a
      001D18 EF               [12] 2031 	mov	a,r7
      001D19 3A               [12] 2032 	addc	a,r2
      001D1A FF               [12] 2033 	mov	r7,a
      001D1B 8B 82            [24] 2034 	mov	dpl,r3
      001D1D 8C 83            [24] 2035 	mov	dph,r4
      001D1F 8D F0            [24] 2036 	mov	b,r5
      001D21 EE               [12] 2037 	mov	a,r6
      001D22 12 41 8F         [24] 2038 	lcall	__gptrput
      001D25 A3               [24] 2039 	inc	dptr
      001D26 EF               [12] 2040 	mov	a,r7
      001D27 12 41 8F         [24] 2041 	lcall	__gptrput
                                   2042 ;	USBHost.c:292: for(i = 0; i < RxLen; i++)
      001D2A                       2043 00160$:
      001D2A 90 09 A0         [24] 2044 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001D2D E0               [24] 2045 	movx	a,@dptr
      001D2E FE               [12] 2046 	mov	r6,a
      001D2F A3               [24] 2047 	inc	dptr
      001D30 E0               [24] 2048 	movx	a,@dptr
      001D31 FF               [12] 2049 	mov	r7,a
      001D32 7A 00            [12] 2050 	mov	r2,#0x00
      001D34                       2051 00138$:
      001D34 C3               [12] 2052 	clr	c
      001D35 EA               [12] 2053 	mov	a,r2
      001D36 99               [12] 2054 	subb	a,r1
      001D37 50 18            [24] 2055 	jnc	00109$
                                   2056 ;	USBHost.c:293: pBuf[i] = RxBuffer[i];
      001D39 EA               [12] 2057 	mov	a,r2
      001D3A 2E               [12] 2058 	add	a,r6
      001D3B F5 27            [12] 2059 	mov	_hostCtrlTransfer_sloc1_1_0,a
      001D3D E4               [12] 2060 	clr	a
      001D3E 3F               [12] 2061 	addc	a,r7
      001D3F F5 28            [12] 2062 	mov	(_hostCtrlTransfer_sloc1_1_0 + 1),a
      001D41 8A 82            [24] 2063 	mov	dpl,r2
      001D43 75 83 00         [24] 2064 	mov	dph,#(_RxBuffer >> 8)
      001D46 E0               [24] 2065 	movx	a,@dptr
      001D47 85 27 82         [24] 2066 	mov	dpl,_hostCtrlTransfer_sloc1_1_0
      001D4A 85 28 83         [24] 2067 	mov	dph,(_hostCtrlTransfer_sloc1_1_0 + 1)
      001D4D F0               [24] 2068 	movx	@dptr,a
                                   2069 ;	USBHost.c:292: for(i = 0; i < RxLen; i++)
      001D4E 0A               [12] 2070 	inc	r2
      001D4F 80 E3            [24] 2071 	sjmp	00138$
      001D51                       2072 00109$:
                                   2073 ;	USBHost.c:294: pBuf += RxLen;
      001D51 90 09 A0         [24] 2074 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001D54 E0               [24] 2075 	movx	a,@dptr
      001D55 FE               [12] 2076 	mov	r6,a
      001D56 A3               [24] 2077 	inc	dptr
      001D57 E0               [24] 2078 	movx	a,@dptr
      001D58 FF               [12] 2079 	mov	r7,a
      001D59 90 09 A0         [24] 2080 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001D5C E9               [12] 2081 	mov	a,r1
      001D5D 2E               [12] 2082 	add	a,r6
      001D5E F0               [24] 2083 	movx	@dptr,a
      001D5F E4               [12] 2084 	clr	a
      001D60 3F               [12] 2085 	addc	a,r7
      001D61 A3               [24] 2086 	inc	dptr
      001D62 F0               [24] 2087 	movx	@dptr,a
                                   2088 ;	USBHost.c:295: DEBUG_OUT("Received %i bytes\n", (uint16_t)USB_RX_LEN);
      001D63 AE D1            [24] 2089 	mov	r6,_USB_RX_LEN
      001D65 7F 00            [12] 2090 	mov	r7,#0x00
      001D67 C0 05            [24] 2091 	push	ar5
      001D69 C0 04            [24] 2092 	push	ar4
      001D6B C0 03            [24] 2093 	push	ar3
      001D6D C0 06            [24] 2094 	push	ar6
      001D6F C0 07            [24] 2095 	push	ar7
      001D71 74 E2            [12] 2096 	mov	a,#___str_2
      001D73 C0 E0            [24] 2097 	push	acc
      001D75 74 4C            [12] 2098 	mov	a,#(___str_2 >> 8)
      001D77 C0 E0            [24] 2099 	push	acc
      001D79 74 80            [12] 2100 	mov	a,#0x80
      001D7B C0 E0            [24] 2101 	push	acc
      001D7D 12 41 F8         [24] 2102 	lcall	_printf
      001D80 E5 81            [12] 2103 	mov	a,sp
      001D82 24 FB            [12] 2104 	add	a,#0xfb
      001D84 F5 81            [12] 2105 	mov	sp,a
      001D86 D0 03            [24] 2106 	pop	ar3
      001D88 D0 04            [24] 2107 	pop	ar4
      001D8A D0 05            [24] 2108 	pop	ar5
                                   2109 ;	USBHost.c:296: if (USB_RX_LEN == 0 || (USB_RX_LEN < endpoint0Size ))
      001D8C E5 D1            [12] 2110 	mov	a,_USB_RX_LEN
      001D8E 60 0E            [24] 2111 	jz	00115$
      001D90 90 07 82         [24] 2112 	mov	dptr,#_endpoint0Size
      001D93 E0               [24] 2113 	movx	a,@dptr
      001D94 FF               [12] 2114 	mov	r7,a
      001D95 C3               [12] 2115 	clr	c
      001D96 E5 D1            [12] 2116 	mov	a,_USB_RX_LEN
      001D98 9F               [12] 2117 	subb	a,r7
      001D99 40 03            [24] 2118 	jc	00258$
      001D9B 02 1C 8C         [24] 2119 	ljmp	00113$
      001D9E                       2120 00258$:
                                   2121 ;	USBHost.c:297: break; 
      001D9E                       2122 00115$:
                                   2123 ;	USBHost.c:299: UH_TX_LEN = 0x00;
      001D9E 75 D7 00         [24] 2124 	mov	_UEP3_T_LEN,#0x00
      001DA1 02 1F 09         [24] 2125 	ljmp	00129$
      001DA4                       2126 00126$:
                                   2127 ;	USBHost.c:303: DEBUG_OUT("Remaining bytes to write %i", RemLen);
      001DA4 C0 05            [24] 2128 	push	ar5
      001DA6 C0 04            [24] 2129 	push	ar4
      001DA8 C0 03            [24] 2130 	push	ar3
      001DAA C0 25            [24] 2131 	push	_hostCtrlTransfer_sloc0_1_0
      001DAC C0 26            [24] 2132 	push	(_hostCtrlTransfer_sloc0_1_0 + 1)
      001DAE 74 F5            [12] 2133 	mov	a,#___str_3
      001DB0 C0 E0            [24] 2134 	push	acc
      001DB2 74 4C            [12] 2135 	mov	a,#(___str_3 >> 8)
      001DB4 C0 E0            [24] 2136 	push	acc
      001DB6 74 80            [12] 2137 	mov	a,#0x80
      001DB8 C0 E0            [24] 2138 	push	acc
      001DBA 12 41 F8         [24] 2139 	lcall	_printf
      001DBD E5 81            [12] 2140 	mov	a,sp
      001DBF 24 FB            [12] 2141 	add	a,#0xfb
      001DC1 F5 81            [12] 2142 	mov	sp,a
      001DC3 D0 03            [24] 2143 	pop	ar3
      001DC5 D0 04            [24] 2144 	pop	ar4
      001DC7 D0 05            [24] 2145 	pop	ar5
                                   2146 ;	USBHost.c:305: while (RemLen)
      001DC9                       2147 00122$:
      001DC9 90 09 9E         [24] 2148 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001DCC E0               [24] 2149 	movx	a,@dptr
      001DCD FE               [12] 2150 	mov	r6,a
      001DCE A3               [24] 2151 	inc	dptr
      001DCF E0               [24] 2152 	movx	a,@dptr
      001DD0 FF               [12] 2153 	mov	r7,a
      001DD1 4E               [12] 2154 	orl	a,r6
      001DD2 70 03            [24] 2155 	jnz	00259$
      001DD4 02 1F 09         [24] 2156 	ljmp	00129$
      001DD7                       2157 00259$:
                                   2158 ;	USBHost.c:307: delayUs(200);
      001DD7 90 00 C8         [24] 2159 	mov	dptr,#0x00c8
      001DDA C0 07            [24] 2160 	push	ar7
      001DDC C0 06            [24] 2161 	push	ar6
      001DDE C0 05            [24] 2162 	push	ar5
      001DE0 C0 04            [24] 2163 	push	ar4
      001DE2 C0 03            [24] 2164 	push	ar3
      001DE4 12 17 54         [24] 2165 	lcall	_delayUs
      001DE7 D0 03            [24] 2166 	pop	ar3
      001DE9 D0 04            [24] 2167 	pop	ar4
      001DEB D0 05            [24] 2168 	pop	ar5
      001DED D0 06            [24] 2169 	pop	ar6
      001DEF D0 07            [24] 2170 	pop	ar7
                                   2171 ;	USBHost.c:308: UH_TX_LEN = RemLen >= endpoint0Size ? endpoint0Size : RemLen;
      001DF1 90 07 82         [24] 2172 	mov	dptr,#_endpoint0Size
      001DF4 E0               [24] 2173 	movx	a,@dptr
      001DF5 F9               [12] 2174 	mov	r1,a
      001DF6 7A 00            [12] 2175 	mov	r2,#0x00
      001DF8 C3               [12] 2176 	clr	c
      001DF9 EE               [12] 2177 	mov	a,r6
      001DFA 99               [12] 2178 	subb	a,r1
      001DFB EF               [12] 2179 	mov	a,r7
      001DFC 9A               [12] 2180 	subb	a,r2
      001DFD 92 01            [24] 2181 	mov	_hostCtrlTransfer_sloc2_1_0,c
      001DFF 50 04            [24] 2182 	jnc	00145$
      001E01 8E 01            [24] 2183 	mov	ar1,r6
      001E03 8F 02            [24] 2184 	mov	ar2,r7
      001E05                       2185 00145$:
      001E05 89 D7            [24] 2186 	mov	_UEP3_T_LEN,r1
                                   2187 ;	USBHost.c:310: pBuf += UH_TX_LEN;
      001E07 90 09 A0         [24] 2188 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001E0A E0               [24] 2189 	movx	a,@dptr
      001E0B FE               [12] 2190 	mov	r6,a
      001E0C A3               [24] 2191 	inc	dptr
      001E0D E0               [24] 2192 	movx	a,@dptr
      001E0E FF               [12] 2193 	mov	r7,a
      001E0F E5 D7            [12] 2194 	mov	a,_UEP3_T_LEN
      001E11 2E               [12] 2195 	add	a,r6
      001E12 FE               [12] 2196 	mov	r6,a
      001E13 E4               [12] 2197 	clr	a
      001E14 3F               [12] 2198 	addc	a,r7
      001E15 FF               [12] 2199 	mov	r7,a
      001E16 90 09 A0         [24] 2200 	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
      001E19 EE               [12] 2201 	mov	a,r6
      001E1A F0               [24] 2202 	movx	@dptr,a
      001E1B EF               [12] 2203 	mov	a,r7
      001E1C A3               [24] 2204 	inc	dptr
      001E1D F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	USBHost.c:311: if (pBuf[1] == 0x09)
      001E1E 8E 82            [24] 2207 	mov	dpl,r6
      001E20 8F 83            [24] 2208 	mov	dph,r7
      001E22 A3               [24] 2209 	inc	dptr
      001E23 E0               [24] 2210 	movx	a,@dptr
      001E24 FA               [12] 2211 	mov	r2,a
      001E25 BA 09 4D         [24] 2212 	cjne	r2,#0x09,00117$
                                   2213 ;	USBHost.c:314: SetPort = SetPort ? 0 : 1;
      001E28 90 09 9D         [24] 2214 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
      001E2B E0               [24] 2215 	movx	a,@dptr
      001E2C 60 06            [24] 2216 	jz	00146$
      001E2E 79 00            [12] 2217 	mov	r1,#0x00
      001E30 7A 00            [12] 2218 	mov	r2,#0x00
      001E32 80 04            [24] 2219 	sjmp	00147$
      001E34                       2220 00146$:
      001E34 79 01            [12] 2221 	mov	r1,#0x01
      001E36 7A 00            [12] 2222 	mov	r2,#0x00
      001E38                       2223 00147$:
      001E38 90 09 9D         [24] 2224 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
      001E3B E9               [12] 2225 	mov	a,r1
      001E3C F0               [24] 2226 	movx	@dptr,a
                                   2227 ;	USBHost.c:315: *pBuf = SetPort;
      001E3D 8E 82            [24] 2228 	mov	dpl,r6
      001E3F 8F 83            [24] 2229 	mov	dph,r7
      001E41 E9               [12] 2230 	mov	a,r1
      001E42 F0               [24] 2231 	movx	@dptr,a
                                   2232 ;	USBHost.c:317: DEBUG_OUT("SET_PORT  %02X  %02X ", *pBuf, SetPort);
      001E43 90 09 9D         [24] 2233 	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
      001E46 E0               [24] 2234 	movx	a,@dptr
      001E47 FF               [12] 2235 	mov	r7,a
      001E48 7E 00            [12] 2236 	mov	r6,#0x00
      001E4A 7A 00            [12] 2237 	mov	r2,#0x00
      001E4C C0 05            [24] 2238 	push	ar5
      001E4E C0 04            [24] 2239 	push	ar4
      001E50 C0 03            [24] 2240 	push	ar3
      001E52 C0 07            [24] 2241 	push	ar7
      001E54 C0 06            [24] 2242 	push	ar6
      001E56 C0 01            [24] 2243 	push	ar1
      001E58 C0 02            [24] 2244 	push	ar2
      001E5A 74 11            [12] 2245 	mov	a,#___str_4
      001E5C C0 E0            [24] 2246 	push	acc
      001E5E 74 4D            [12] 2247 	mov	a,#(___str_4 >> 8)
      001E60 C0 E0            [24] 2248 	push	acc
      001E62 74 80            [12] 2249 	mov	a,#0x80
      001E64 C0 E0            [24] 2250 	push	acc
      001E66 12 41 F8         [24] 2251 	lcall	_printf
      001E69 E5 81            [12] 2252 	mov	a,sp
      001E6B 24 F9            [12] 2253 	add	a,#0xf9
      001E6D F5 81            [12] 2254 	mov	sp,a
      001E6F D0 03            [24] 2255 	pop	ar3
      001E71 D0 04            [24] 2256 	pop	ar4
      001E73 D0 05            [24] 2257 	pop	ar5
      001E75                       2258 00117$:
                                   2259 ;	USBHost.c:319: DEBUG_OUT("Sending %i bytes\n", (uint16_t)UH_TX_LEN);
      001E75 AE D7            [24] 2260 	mov	r6,_UEP3_T_LEN
      001E77 7F 00            [12] 2261 	mov	r7,#0x00
      001E79 C0 05            [24] 2262 	push	ar5
      001E7B C0 04            [24] 2263 	push	ar4
      001E7D C0 03            [24] 2264 	push	ar3
      001E7F C0 06            [24] 2265 	push	ar6
      001E81 C0 07            [24] 2266 	push	ar7
      001E83 74 27            [12] 2267 	mov	a,#___str_5
      001E85 C0 E0            [24] 2268 	push	acc
      001E87 74 4D            [12] 2269 	mov	a,#(___str_5 >> 8)
      001E89 C0 E0            [24] 2270 	push	acc
      001E8B 74 80            [12] 2271 	mov	a,#0x80
      001E8D C0 E0            [24] 2272 	push	acc
      001E8F 12 41 F8         [24] 2273 	lcall	_printf
      001E92 E5 81            [12] 2274 	mov	a,sp
      001E94 24 FB            [12] 2275 	add	a,#0xfb
      001E96 F5 81            [12] 2276 	mov	sp,a
                                   2277 ;	USBHost.c:320: s = hostTransfer(USB_PID_OUT << 4, UH_TX_CTRL, 10000);
      001E98 90 09 90         [24] 2278 	mov	dptr,#_hostTransfer_PARM_2
      001E9B E5 D6            [12] 2279 	mov	a,_UEP3_CTRL
      001E9D F0               [24] 2280 	movx	@dptr,a
      001E9E 90 09 91         [24] 2281 	mov	dptr,#_hostTransfer_PARM_3
      001EA1 74 10            [12] 2282 	mov	a,#0x10
      001EA3 F0               [24] 2283 	movx	@dptr,a
      001EA4 74 27            [12] 2284 	mov	a,#0x27
      001EA6 A3               [24] 2285 	inc	dptr
      001EA7 F0               [24] 2286 	movx	@dptr,a
      001EA8 75 82 10         [24] 2287 	mov	dpl,#0x10
      001EAB 12 19 BE         [24] 2288 	lcall	_hostTransfer
      001EAE AF 82            [24] 2289 	mov	r7,dpl
      001EB0 D0 03            [24] 2290 	pop	ar3
      001EB2 D0 04            [24] 2291 	pop	ar4
      001EB4 D0 05            [24] 2292 	pop	ar5
                                   2293 ;	USBHost.c:321: if (s != ERR_SUCCESS)
      001EB6 EF               [12] 2294 	mov	a,r7
      001EB7 60 03            [24] 2295 	jz	00119$
                                   2296 ;	USBHost.c:322: return (s);
      001EB9 8F 82            [24] 2297 	mov	dpl,r7
      001EBB 22               [24] 2298 	ret
      001EBC                       2299 00119$:
                                   2300 ;	USBHost.c:323: RemLen -= UH_TX_LEN;
      001EBC AE D7            [24] 2301 	mov	r6,_UEP3_T_LEN
      001EBE 7F 00            [12] 2302 	mov	r7,#0x00
      001EC0 90 09 9E         [24] 2303 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001EC3 E0               [24] 2304 	movx	a,@dptr
      001EC4 F9               [12] 2305 	mov	r1,a
      001EC5 A3               [24] 2306 	inc	dptr
      001EC6 E0               [24] 2307 	movx	a,@dptr
      001EC7 FA               [12] 2308 	mov	r2,a
      001EC8 E9               [12] 2309 	mov	a,r1
      001EC9 C3               [12] 2310 	clr	c
      001ECA 9E               [12] 2311 	subb	a,r6
      001ECB F9               [12] 2312 	mov	r1,a
      001ECC EA               [12] 2313 	mov	a,r2
      001ECD 9F               [12] 2314 	subb	a,r7
      001ECE FA               [12] 2315 	mov	r2,a
      001ECF 90 09 9E         [24] 2316 	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
      001ED2 E9               [12] 2317 	mov	a,r1
      001ED3 F0               [24] 2318 	movx	@dptr,a
      001ED4 EA               [12] 2319 	mov	a,r2
      001ED5 A3               [24] 2320 	inc	dptr
      001ED6 F0               [24] 2321 	movx	@dptr,a
                                   2322 ;	USBHost.c:324: if (pLen)
      001ED7 EB               [12] 2323 	mov	a,r3
      001ED8 4C               [12] 2324 	orl	a,r4
      001ED9 70 03            [24] 2325 	jnz	00265$
      001EDB 02 1D C9         [24] 2326 	ljmp	00122$
      001EDE                       2327 00265$:
                                   2328 ;	USBHost.c:325: *pLen += UH_TX_LEN;
      001EDE 8B 82            [24] 2329 	mov	dpl,r3
      001EE0 8C 83            [24] 2330 	mov	dph,r4
      001EE2 8D F0            [24] 2331 	mov	b,r5
      001EE4 12 4C 44         [24] 2332 	lcall	__gptrget
      001EE7 FE               [12] 2333 	mov	r6,a
      001EE8 A3               [24] 2334 	inc	dptr
      001EE9 12 4C 44         [24] 2335 	lcall	__gptrget
      001EEC FF               [12] 2336 	mov	r7,a
      001EED A9 D7            [24] 2337 	mov	r1,_UEP3_T_LEN
      001EEF 7A 00            [12] 2338 	mov	r2,#0x00
      001EF1 E9               [12] 2339 	mov	a,r1
      001EF2 2E               [12] 2340 	add	a,r6
      001EF3 FE               [12] 2341 	mov	r6,a
      001EF4 EA               [12] 2342 	mov	a,r2
      001EF5 3F               [12] 2343 	addc	a,r7
      001EF6 FF               [12] 2344 	mov	r7,a
      001EF7 8B 82            [24] 2345 	mov	dpl,r3
      001EF9 8C 83            [24] 2346 	mov	dph,r4
      001EFB 8D F0            [24] 2347 	mov	b,r5
      001EFD EE               [12] 2348 	mov	a,r6
      001EFE 12 41 8F         [24] 2349 	lcall	__gptrput
      001F01 A3               [24] 2350 	inc	dptr
      001F02 EF               [12] 2351 	mov	a,r7
      001F03 12 41 8F         [24] 2352 	lcall	__gptrput
      001F06 02 1D C9         [24] 2353 	ljmp	00122$
      001F09                       2354 00129$:
                                   2355 ;	USBHost.c:329: delayUs(200);
      001F09 90 00 C8         [24] 2356 	mov	dptr,#0x00c8
      001F0C 12 17 54         [24] 2357 	lcall	_delayUs
                                   2358 ;	USBHost.c:330: s = hostTransfer((UH_TX_LEN ? USB_PID_IN << 4 : USB_PID_OUT << 4), bUH_R_TOG | bUH_T_TOG, 10000);
      001F0F E5 D7            [12] 2359 	mov	a,_UEP3_T_LEN
      001F11 60 04            [24] 2360 	jz	00148$
      001F13 7F 90            [12] 2361 	mov	r7,#0x90
      001F15 80 02            [24] 2362 	sjmp	00149$
      001F17                       2363 00148$:
      001F17 7F 10            [12] 2364 	mov	r7,#0x10
      001F19                       2365 00149$:
      001F19 90 09 90         [24] 2366 	mov	dptr,#_hostTransfer_PARM_2
      001F1C 74 C0            [12] 2367 	mov	a,#0xc0
      001F1E F0               [24] 2368 	movx	@dptr,a
      001F1F 90 09 91         [24] 2369 	mov	dptr,#_hostTransfer_PARM_3
      001F22 74 10            [12] 2370 	mov	a,#0x10
      001F24 F0               [24] 2371 	movx	@dptr,a
      001F25 74 27            [12] 2372 	mov	a,#0x27
      001F27 A3               [24] 2373 	inc	dptr
      001F28 F0               [24] 2374 	movx	@dptr,a
      001F29 8F 82            [24] 2375 	mov	dpl,r7
      001F2B 12 19 BE         [24] 2376 	lcall	_hostTransfer
                                   2377 ;	USBHost.c:331: if (s != ERR_SUCCESS)
      001F2E E5 82            [12] 2378 	mov	a,dpl
      001F30 FF               [12] 2379 	mov	r7,a
      001F31 60 03            [24] 2380 	jz	00132$
                                   2381 ;	USBHost.c:332: return (s);
      001F33 8F 82            [24] 2382 	mov	dpl,r7
      001F35 22               [24] 2383 	ret
      001F36                       2384 00132$:
                                   2385 ;	USBHost.c:333: if (UH_TX_LEN == 0)
      001F36 E5 D7            [12] 2386 	mov	a,_UEP3_T_LEN
                                   2387 ;	USBHost.c:334: return (ERR_SUCCESS);
      001F38 70 03            [24] 2388 	jnz	00134$
      001F3A F5 82            [12] 2389 	mov	dpl,a
      001F3C 22               [24] 2390 	ret
      001F3D                       2391 00134$:
                                   2392 ;	USBHost.c:335: if (USB_RX_LEN == 0)
      001F3D E5 D1            [12] 2393 	mov	a,_USB_RX_LEN
                                   2394 ;	USBHost.c:336: return (ERR_SUCCESS);
      001F3F 70 03            [24] 2395 	jnz	00136$
      001F41 F5 82            [12] 2396 	mov	dpl,a
      001F43 22               [24] 2397 	ret
      001F44                       2398 00136$:
                                   2399 ;	USBHost.c:337: return (ERR_USB_BUF_OVER);
      001F44 75 82 17         [24] 2400 	mov	dpl,#0x17
                                   2401 ;	USBHost.c:338: }
      001F47 22               [24] 2402 	ret
                                   2403 ;------------------------------------------------------------
                                   2404 ;Allocation info for local variables in function 'fillTxBuffer'
                                   2405 ;------------------------------------------------------------
                                   2406 ;len                       Allocated with name '_fillTxBuffer_PARM_2'
                                   2407 ;data                      Allocated with name '_fillTxBuffer_data_65536_106'
                                   2408 ;i                         Allocated with name '_fillTxBuffer_i_65536_107'
                                   2409 ;------------------------------------------------------------
                                   2410 ;	USBHost.c:340: void fillTxBuffer(PUINT8C data, unsigned char len)
                                   2411 ;	-----------------------------------------
                                   2412 ;	 function fillTxBuffer
                                   2413 ;	-----------------------------------------
      001F48                       2414 _fillTxBuffer:
      001F48 AF 83            [24] 2415 	mov	r7,dph
      001F4A E5 82            [12] 2416 	mov	a,dpl
      001F4C 90 09 A3         [24] 2417 	mov	dptr,#_fillTxBuffer_data_65536_106
      001F4F F0               [24] 2418 	movx	@dptr,a
      001F50 EF               [12] 2419 	mov	a,r7
      001F51 A3               [24] 2420 	inc	dptr
      001F52 F0               [24] 2421 	movx	@dptr,a
                                   2422 ;	USBHost.c:343: DEBUG_OUT("fillTxBuffer %i bytes\n", len);
      001F53 90 09 A2         [24] 2423 	mov	dptr,#_fillTxBuffer_PARM_2
      001F56 E0               [24] 2424 	movx	a,@dptr
      001F57 FF               [12] 2425 	mov	r7,a
      001F58 FD               [12] 2426 	mov	r5,a
      001F59 7E 00            [12] 2427 	mov	r6,#0x00
      001F5B C0 07            [24] 2428 	push	ar7
      001F5D C0 06            [24] 2429 	push	ar6
      001F5F C0 05            [24] 2430 	push	ar5
      001F61 C0 05            [24] 2431 	push	ar5
      001F63 C0 06            [24] 2432 	push	ar6
      001F65 74 39            [12] 2433 	mov	a,#___str_6
      001F67 C0 E0            [24] 2434 	push	acc
      001F69 74 4D            [12] 2435 	mov	a,#(___str_6 >> 8)
      001F6B C0 E0            [24] 2436 	push	acc
      001F6D 74 80            [12] 2437 	mov	a,#0x80
      001F6F C0 E0            [24] 2438 	push	acc
      001F71 12 41 F8         [24] 2439 	lcall	_printf
      001F74 E5 81            [12] 2440 	mov	a,sp
      001F76 24 FB            [12] 2441 	add	a,#0xfb
      001F78 F5 81            [12] 2442 	mov	sp,a
      001F7A D0 05            [24] 2443 	pop	ar5
      001F7C D0 06            [24] 2444 	pop	ar6
      001F7E D0 07            [24] 2445 	pop	ar7
                                   2446 ;	USBHost.c:344: for(i = 0; i < len; i++)
      001F80 90 09 A3         [24] 2447 	mov	dptr,#_fillTxBuffer_data_65536_106
      001F83 E0               [24] 2448 	movx	a,@dptr
      001F84 FB               [12] 2449 	mov	r3,a
      001F85 A3               [24] 2450 	inc	dptr
      001F86 E0               [24] 2451 	movx	a,@dptr
      001F87 FC               [12] 2452 	mov	r4,a
      001F88 7A 00            [12] 2453 	mov	r2,#0x00
      001F8A                       2454 00103$:
      001F8A C3               [12] 2455 	clr	c
      001F8B EA               [12] 2456 	mov	a,r2
      001F8C 9F               [12] 2457 	subb	a,r7
      001F8D 50 1E            [24] 2458 	jnc	00101$
                                   2459 ;	USBHost.c:345: TxBuffer[i] = data[i];
      001F8F C0 05            [24] 2460 	push	ar5
      001F91 C0 06            [24] 2461 	push	ar6
      001F93 8A 00            [24] 2462 	mov	ar0,r2
      001F95 79 01            [12] 2463 	mov	r1,#(_TxBuffer >> 8)
      001F97 EA               [12] 2464 	mov	a,r2
      001F98 2B               [12] 2465 	add	a,r3
      001F99 F5 82            [12] 2466 	mov	dpl,a
      001F9B E4               [12] 2467 	clr	a
      001F9C 3C               [12] 2468 	addc	a,r4
      001F9D F5 83            [12] 2469 	mov	dph,a
      001F9F E4               [12] 2470 	clr	a
      001FA0 93               [24] 2471 	movc	a,@a+dptr
      001FA1 88 82            [24] 2472 	mov	dpl,r0
      001FA3 89 83            [24] 2473 	mov	dph,r1
      001FA5 F0               [24] 2474 	movx	@dptr,a
                                   2475 ;	USBHost.c:344: for(i = 0; i < len; i++)
      001FA6 0A               [12] 2476 	inc	r2
      001FA7 D0 06            [24] 2477 	pop	ar6
      001FA9 D0 05            [24] 2478 	pop	ar5
      001FAB 80 DD            [24] 2479 	sjmp	00103$
      001FAD                       2480 00101$:
                                   2481 ;	USBHost.c:346: DEBUG_OUT("fillTxBuffer done\n", len);
      001FAD C0 05            [24] 2482 	push	ar5
      001FAF C0 06            [24] 2483 	push	ar6
      001FB1 74 50            [12] 2484 	mov	a,#___str_7
      001FB3 C0 E0            [24] 2485 	push	acc
      001FB5 74 4D            [12] 2486 	mov	a,#(___str_7 >> 8)
      001FB7 C0 E0            [24] 2487 	push	acc
      001FB9 74 80            [12] 2488 	mov	a,#0x80
      001FBB C0 E0            [24] 2489 	push	acc
      001FBD 12 41 F8         [24] 2490 	lcall	_printf
      001FC0 E5 81            [12] 2491 	mov	a,sp
      001FC2 24 FB            [12] 2492 	add	a,#0xfb
      001FC4 F5 81            [12] 2493 	mov	sp,a
                                   2494 ;	USBHost.c:347: }
      001FC6 22               [24] 2495 	ret
                                   2496 ;------------------------------------------------------------
                                   2497 ;Allocation info for local variables in function 'getDeviceDescriptor'
                                   2498 ;------------------------------------------------------------
                                   2499 ;s                         Allocated with name '_getDeviceDescriptor_s_65536_109'
                                   2500 ;len                       Allocated with name '_getDeviceDescriptor_len_65536_109'
                                   2501 ;------------------------------------------------------------
                                   2502 ;	USBHost.c:349: unsigned char getDeviceDescriptor()
                                   2503 ;	-----------------------------------------
                                   2504 ;	 function getDeviceDescriptor
                                   2505 ;	-----------------------------------------
      001FC7                       2506 _getDeviceDescriptor:
                                   2507 ;	USBHost.c:353: endpoint0Size = DEFAULT_ENDP0_SIZE;        //TODO again?
      001FC7 90 07 82         [24] 2508 	mov	dptr,#_endpoint0Size
      001FCA 74 08            [12] 2509 	mov	a,#0x08
      001FCC F0               [24] 2510 	movx	@dptr,a
                                   2511 ;	USBHost.c:354: DEBUG_OUT("getDeviceDescriptor\n");
      001FCD 74 63            [12] 2512 	mov	a,#___str_8
      001FCF C0 E0            [24] 2513 	push	acc
      001FD1 74 4D            [12] 2514 	mov	a,#(___str_8 >> 8)
      001FD3 C0 E0            [24] 2515 	push	acc
      001FD5 74 80            [12] 2516 	mov	a,#0x80
      001FD7 C0 E0            [24] 2517 	push	acc
      001FD9 12 41 F8         [24] 2518 	lcall	_printf
      001FDC 15 81            [12] 2519 	dec	sp
      001FDE 15 81            [12] 2520 	dec	sp
      001FE0 15 81            [12] 2521 	dec	sp
                                   2522 ;	USBHost.c:355: fillTxBuffer(GetDeviceDescriptorRequest, sizeof(GetDeviceDescriptorRequest));
      001FE2 90 09 A2         [24] 2523 	mov	dptr,#_fillTxBuffer_PARM_2
      001FE5 74 08            [12] 2524 	mov	a,#0x08
      001FE7 F0               [24] 2525 	movx	@dptr,a
      001FE8 90 4C 74         [24] 2526 	mov	dptr,#_GetDeviceDescriptorRequest
      001FEB 12 1F 48         [24] 2527 	lcall	_fillTxBuffer
                                   2528 ;	USBHost.c:356: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);          
      001FEE 90 09 96         [24] 2529 	mov	dptr,#_hostCtrlTransfer_PARM_2
      001FF1 74 A5            [12] 2530 	mov	a,#_getDeviceDescriptor_len_65536_109
      001FF3 F0               [24] 2531 	movx	@dptr,a
      001FF4 74 09            [12] 2532 	mov	a,#(_getDeviceDescriptor_len_65536_109 >> 8)
      001FF6 A3               [24] 2533 	inc	dptr
      001FF7 F0               [24] 2534 	movx	@dptr,a
      001FF8 E4               [12] 2535 	clr	a
      001FF9 A3               [24] 2536 	inc	dptr
      001FFA F0               [24] 2537 	movx	@dptr,a
      001FFB 90 09 99         [24] 2538 	mov	dptr,#_hostCtrlTransfer_PARM_3
      001FFE F0               [24] 2539 	movx	@dptr,a
      001FFF 74 02            [12] 2540 	mov	a,#0x02
      002001 A3               [24] 2541 	inc	dptr
      002002 F0               [24] 2542 	movx	@dptr,a
      002003 90 07 83         [24] 2543 	mov	dptr,#_receiveDataBuffer
      002006 12 1B 7F         [24] 2544 	lcall	_hostCtrlTransfer
                                   2545 ;	USBHost.c:357: if (s != ERR_SUCCESS)
      002009 E5 82            [12] 2546 	mov	a,dpl
      00200B FF               [12] 2547 	mov	r7,a
      00200C 60 03            [24] 2548 	jz	00102$
                                   2549 ;	USBHost.c:358: return s;
      00200E 8F 82            [24] 2550 	mov	dpl,r7
      002010 22               [24] 2551 	ret
      002011                       2552 00102$:
                                   2553 ;	USBHost.c:360: DEBUG_OUT("Device descriptor request sent successfully\n");
      002011 74 78            [12] 2554 	mov	a,#___str_9
      002013 C0 E0            [24] 2555 	push	acc
      002015 74 4D            [12] 2556 	mov	a,#(___str_9 >> 8)
      002017 C0 E0            [24] 2557 	push	acc
      002019 74 80            [12] 2558 	mov	a,#0x80
      00201B C0 E0            [24] 2559 	push	acc
      00201D 12 41 F8         [24] 2560 	lcall	_printf
      002020 15 81            [12] 2561 	dec	sp
      002022 15 81            [12] 2562 	dec	sp
      002024 15 81            [12] 2563 	dec	sp
                                   2564 ;	USBHost.c:361: endpoint0Size = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0;
      002026 90 07 8A         [24] 2565 	mov	dptr,#(_receiveDataBuffer + 0x0007)
      002029 E0               [24] 2566 	movx	a,@dptr
      00202A 90 07 82         [24] 2567 	mov	dptr,#_endpoint0Size
      00202D F0               [24] 2568 	movx	@dptr,a
                                   2569 ;	USBHost.c:362: if (len < ((PUSB_SETUP_REQ)GetDeviceDescriptorRequest)->wLengthL)
      00202E 90 4C 7A         [24] 2570 	mov	dptr,#(_GetDeviceDescriptorRequest + 0x0006)
      002031 E4               [12] 2571 	clr	a
      002032 93               [24] 2572 	movc	a,@a+dptr
      002033 FF               [12] 2573 	mov	r7,a
      002034 90 09 A5         [24] 2574 	mov	dptr,#_getDeviceDescriptor_len_65536_109
      002037 E0               [24] 2575 	movx	a,@dptr
      002038 FD               [12] 2576 	mov	r5,a
      002039 A3               [24] 2577 	inc	dptr
      00203A E0               [24] 2578 	movx	a,@dptr
      00203B FE               [12] 2579 	mov	r6,a
      00203C 7C 00            [12] 2580 	mov	r4,#0x00
      00203E C3               [12] 2581 	clr	c
      00203F ED               [12] 2582 	mov	a,r5
      002040 9F               [12] 2583 	subb	a,r7
      002041 EE               [12] 2584 	mov	a,r6
      002042 9C               [12] 2585 	subb	a,r4
      002043 50 19            [24] 2586 	jnc	00104$
                                   2587 ;	USBHost.c:364: DEBUG_OUT("Received packet is smaller than expected\n")
      002045 74 A5            [12] 2588 	mov	a,#___str_10
      002047 C0 E0            [24] 2589 	push	acc
      002049 74 4D            [12] 2590 	mov	a,#(___str_10 >> 8)
      00204B C0 E0            [24] 2591 	push	acc
      00204D 74 80            [12] 2592 	mov	a,#0x80
      00204F C0 E0            [24] 2593 	push	acc
      002051 12 41 F8         [24] 2594 	lcall	_printf
      002054 15 81            [12] 2595 	dec	sp
      002056 15 81            [12] 2596 	dec	sp
      002058 15 81            [12] 2597 	dec	sp
                                   2598 ;	USBHost.c:365: return ERR_USB_BUF_OVER;                
      00205A 75 82 17         [24] 2599 	mov	dpl,#0x17
      00205D 22               [24] 2600 	ret
      00205E                       2601 00104$:
                                   2602 ;	USBHost.c:367: return ERR_SUCCESS;
      00205E 75 82 00         [24] 2603 	mov	dpl,#0x00
                                   2604 ;	USBHost.c:368: }
      002061 22               [24] 2605 	ret
                                   2606 ;------------------------------------------------------------
                                   2607 ;Allocation info for local variables in function 'setUsbAddress'
                                   2608 ;------------------------------------------------------------
                                   2609 ;addr                      Allocated with name '_setUsbAddress_addr_65536_111'
                                   2610 ;s                         Allocated with name '_setUsbAddress_s_65536_112'
                                   2611 ;pSetupReq                 Allocated with name '_setUsbAddress_pSetupReq_65536_112'
                                   2612 ;------------------------------------------------------------
                                   2613 ;	USBHost.c:370: unsigned char setUsbAddress(unsigned char addr)
                                   2614 ;	-----------------------------------------
                                   2615 ;	 function setUsbAddress
                                   2616 ;	-----------------------------------------
      002062                       2617 _setUsbAddress:
      002062 E5 82            [12] 2618 	mov	a,dpl
      002064 90 09 A7         [24] 2619 	mov	dptr,#_setUsbAddress_addr_65536_111
      002067 F0               [24] 2620 	movx	@dptr,a
                                   2621 ;	USBHost.c:373: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   2622 ;	USBHost.c:374: fillTxBuffer(SetUSBAddressRequest, sizeof(SetUSBAddressRequest));
      002068 90 09 A2         [24] 2623 	mov	dptr,#_fillTxBuffer_PARM_2
      00206B 74 08            [12] 2624 	mov	a,#0x08
      00206D F0               [24] 2625 	movx	@dptr,a
      00206E 90 4C 8C         [24] 2626 	mov	dptr,#_SetUSBAddressRequest
      002071 12 1F 48         [24] 2627 	lcall	_fillTxBuffer
                                   2628 ;	USBHost.c:375: pSetupReq->wValueL = addr;          
      002074 90 09 A7         [24] 2629 	mov	dptr,#_setUsbAddress_addr_65536_111
      002077 E0               [24] 2630 	movx	a,@dptr
      002078 FF               [12] 2631 	mov	r7,a
      002079 90 01 02         [24] 2632 	mov	dptr,#(_TxBuffer + 0x0002)
      00207C F0               [24] 2633 	movx	@dptr,a
                                   2634 ;	USBHost.c:376: s = hostCtrlTransfer(0, 0, 0);   
      00207D 90 09 96         [24] 2635 	mov	dptr,#_hostCtrlTransfer_PARM_2
      002080 E4               [12] 2636 	clr	a
      002081 F0               [24] 2637 	movx	@dptr,a
      002082 A3               [24] 2638 	inc	dptr
      002083 F0               [24] 2639 	movx	@dptr,a
      002084 A3               [24] 2640 	inc	dptr
      002085 F0               [24] 2641 	movx	@dptr,a
      002086 90 09 99         [24] 2642 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002089 F0               [24] 2643 	movx	@dptr,a
      00208A A3               [24] 2644 	inc	dptr
      00208B F0               [24] 2645 	movx	@dptr,a
      00208C 90 00 00         [24] 2646 	mov	dptr,#0x0000
      00208F C0 07            [24] 2647 	push	ar7
      002091 12 1B 7F         [24] 2648 	lcall	_hostCtrlTransfer
      002094 AE 82            [24] 2649 	mov	r6,dpl
      002096 D0 07            [24] 2650 	pop	ar7
                                   2651 ;	USBHost.c:377: if (s != ERR_SUCCESS) return s;
      002098 EE               [12] 2652 	mov	a,r6
      002099 60 03            [24] 2653 	jz	00102$
      00209B 8E 82            [24] 2654 	mov	dpl,r6
      00209D 22               [24] 2655 	ret
      00209E                       2656 00102$:
                                   2657 ;	USBHost.c:378: DEBUG_OUT( "SetAddress: %i\n" , addr);
      00209E 8F 05            [24] 2658 	mov	ar5,r7
      0020A0 7E 00            [12] 2659 	mov	r6,#0x00
      0020A2 C0 07            [24] 2660 	push	ar7
      0020A4 C0 05            [24] 2661 	push	ar5
      0020A6 C0 06            [24] 2662 	push	ar6
      0020A8 74 CF            [12] 2663 	mov	a,#___str_11
      0020AA C0 E0            [24] 2664 	push	acc
      0020AC 74 4D            [12] 2665 	mov	a,#(___str_11 >> 8)
      0020AE C0 E0            [24] 2666 	push	acc
      0020B0 74 80            [12] 2667 	mov	a,#0x80
      0020B2 C0 E0            [24] 2668 	push	acc
      0020B4 12 41 F8         [24] 2669 	lcall	_printf
      0020B7 E5 81            [12] 2670 	mov	a,sp
      0020B9 24 FB            [12] 2671 	add	a,#0xfb
      0020BB F5 81            [12] 2672 	mov	sp,a
      0020BD D0 07            [24] 2673 	pop	ar7
                                   2674 ;	USBHost.c:379: setHostUsbAddr(addr);
      0020BF 8F 82            [24] 2675 	mov	dpl,r7
      0020C1 12 18 54         [24] 2676 	lcall	_setHostUsbAddr
                                   2677 ;	USBHost.c:380: delay(100);         
      0020C4 90 00 64         [24] 2678 	mov	dptr,#0x0064
      0020C7 12 17 A9         [24] 2679 	lcall	_delay
                                   2680 ;	USBHost.c:381: return ERR_SUCCESS;
      0020CA 75 82 00         [24] 2681 	mov	dpl,#0x00
                                   2682 ;	USBHost.c:382: }
      0020CD 22               [24] 2683 	ret
                                   2684 ;------------------------------------------------------------
                                   2685 ;Allocation info for local variables in function 'setUsbConfig'
                                   2686 ;------------------------------------------------------------
                                   2687 ;cfg                       Allocated with name '_setUsbConfig_cfg_65536_113'
                                   2688 ;pSetupReq                 Allocated with name '_setUsbConfig_pSetupReq_65536_114'
                                   2689 ;------------------------------------------------------------
                                   2690 ;	USBHost.c:384: unsigned char setUsbConfig( unsigned char cfg )
                                   2691 ;	-----------------------------------------
                                   2692 ;	 function setUsbConfig
                                   2693 ;	-----------------------------------------
      0020CE                       2694 _setUsbConfig:
      0020CE E5 82            [12] 2695 	mov	a,dpl
      0020D0 90 09 A8         [24] 2696 	mov	dptr,#_setUsbConfig_cfg_65536_113
      0020D3 F0               [24] 2697 	movx	@dptr,a
                                   2698 ;	USBHost.c:386: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
                                   2699 ;	USBHost.c:387: fillTxBuffer(SetupSetUsbConfig, sizeof(SetupSetUsbConfig));
      0020D4 90 09 A2         [24] 2700 	mov	dptr,#_fillTxBuffer_PARM_2
      0020D7 74 08            [12] 2701 	mov	a,#0x08
      0020D9 F0               [24] 2702 	movx	@dptr,a
      0020DA 90 4C 9C         [24] 2703 	mov	dptr,#_SetupSetUsbConfig
      0020DD 12 1F 48         [24] 2704 	lcall	_fillTxBuffer
                                   2705 ;	USBHost.c:388: pSetupReq->wValueL = cfg;                          
      0020E0 90 09 A8         [24] 2706 	mov	dptr,#_setUsbConfig_cfg_65536_113
      0020E3 E0               [24] 2707 	movx	a,@dptr
      0020E4 90 01 02         [24] 2708 	mov	dptr,#(_TxBuffer + 0x0002)
      0020E7 F0               [24] 2709 	movx	@dptr,a
                                   2710 ;	USBHost.c:389: return( hostCtrlTransfer(0, 0, 0) );            
      0020E8 90 09 96         [24] 2711 	mov	dptr,#_hostCtrlTransfer_PARM_2
      0020EB E4               [12] 2712 	clr	a
      0020EC F0               [24] 2713 	movx	@dptr,a
      0020ED A3               [24] 2714 	inc	dptr
      0020EE F0               [24] 2715 	movx	@dptr,a
      0020EF A3               [24] 2716 	inc	dptr
      0020F0 F0               [24] 2717 	movx	@dptr,a
      0020F1 90 09 99         [24] 2718 	mov	dptr,#_hostCtrlTransfer_PARM_3
      0020F4 F0               [24] 2719 	movx	@dptr,a
      0020F5 A3               [24] 2720 	inc	dptr
      0020F6 F0               [24] 2721 	movx	@dptr,a
      0020F7 90 00 00         [24] 2722 	mov	dptr,#0x0000
                                   2723 ;	USBHost.c:390: }
      0020FA 02 1B 7F         [24] 2724 	ljmp	_hostCtrlTransfer
                                   2725 ;------------------------------------------------------------
                                   2726 ;Allocation info for local variables in function 'getDeviceString'
                                   2727 ;------------------------------------------------------------
                                   2728 ;	USBHost.c:392: unsigned char getDeviceString()
                                   2729 ;	-----------------------------------------
                                   2730 ;	 function getDeviceString
                                   2731 ;	-----------------------------------------
      0020FD                       2732 _getDeviceString:
                                   2733 ;	USBHost.c:394: fillTxBuffer(GetDeviceStringRequest, sizeof(GetDeviceStringRequest));                         
      0020FD 90 09 A2         [24] 2734 	mov	dptr,#_fillTxBuffer_PARM_2
      002100 74 08            [12] 2735 	mov	a,#0x08
      002102 F0               [24] 2736 	movx	@dptr,a
      002103 90 4C 94         [24] 2737 	mov	dptr,#_GetDeviceStringRequest
      002106 12 1F 48         [24] 2738 	lcall	_fillTxBuffer
                                   2739 ;	USBHost.c:395: return hostCtrlTransfer(receiveDataBuffer, 0, RECEIVE_BUFFER_LEN);
      002109 90 09 96         [24] 2740 	mov	dptr,#_hostCtrlTransfer_PARM_2
      00210C E4               [12] 2741 	clr	a
      00210D F0               [24] 2742 	movx	@dptr,a
      00210E A3               [24] 2743 	inc	dptr
      00210F F0               [24] 2744 	movx	@dptr,a
      002110 A3               [24] 2745 	inc	dptr
      002111 F0               [24] 2746 	movx	@dptr,a
      002112 90 09 99         [24] 2747 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002115 F0               [24] 2748 	movx	@dptr,a
      002116 74 02            [12] 2749 	mov	a,#0x02
      002118 A3               [24] 2750 	inc	dptr
      002119 F0               [24] 2751 	movx	@dptr,a
      00211A 90 07 83         [24] 2752 	mov	dptr,#_receiveDataBuffer
                                   2753 ;	USBHost.c:396: }
      00211D 02 1B 7F         [24] 2754 	ljmp	_hostCtrlTransfer
                                   2755 ;------------------------------------------------------------
                                   2756 ;Allocation info for local variables in function 'convertStringDescriptor'
                                   2757 ;------------------------------------------------------------
                                   2758 ;sloc0                     Allocated with name '_convertStringDescriptor_sloc0_1_0'
                                   2759 ;sloc1                     Allocated with name '_convertStringDescriptor_sloc1_1_0'
                                   2760 ;sloc2                     Allocated with name '_convertStringDescriptor_sloc2_1_0'
                                   2761 ;sloc3                     Allocated with name '_convertStringDescriptor_sloc3_1_0'
                                   2762 ;strBuffer                 Allocated with name '_convertStringDescriptor_PARM_2'
                                   2763 ;bufferLength              Allocated with name '_convertStringDescriptor_PARM_3'
                                   2764 ;index                     Allocated with name '_convertStringDescriptor_PARM_4'
                                   2765 ;usbBuffer                 Allocated with name '_convertStringDescriptor_usbBuffer_65536_116'
                                   2766 ;i                         Allocated with name '_convertStringDescriptor_i_65536_117'
                                   2767 ;len                       Allocated with name '_convertStringDescriptor_len_65536_117'
                                   2768 ;------------------------------------------------------------
                                   2769 ;	USBHost.c:398: char convertStringDescriptor(unsigned char __xdata *usbBuffer, unsigned char __xdata *strBuffer, unsigned short bufferLength, unsigned char index)
                                   2770 ;	-----------------------------------------
                                   2771 ;	 function convertStringDescriptor
                                   2772 ;	-----------------------------------------
      002120                       2773 _convertStringDescriptor:
      002120 AF 83            [24] 2774 	mov	r7,dph
      002122 E5 82            [12] 2775 	mov	a,dpl
      002124 90 09 AE         [24] 2776 	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_116
      002127 F0               [24] 2777 	movx	@dptr,a
      002128 EF               [12] 2778 	mov	a,r7
      002129 A3               [24] 2779 	inc	dptr
      00212A F0               [24] 2780 	movx	@dptr,a
                                   2781 ;	USBHost.c:401: unsigned char i = 0, len = (usbBuffer[0] - 2) >> 1;
      00212B 90 09 AE         [24] 2782 	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_116
      00212E E0               [24] 2783 	movx	a,@dptr
      00212F FE               [12] 2784 	mov	r6,a
      002130 A3               [24] 2785 	inc	dptr
      002131 E0               [24] 2786 	movx	a,@dptr
      002132 FF               [12] 2787 	mov	r7,a
      002133 8E 82            [24] 2788 	mov	dpl,r6
      002135 8F 83            [24] 2789 	mov	dph,r7
      002137 E0               [24] 2790 	movx	a,@dptr
      002138 7C 00            [12] 2791 	mov	r4,#0x00
      00213A 24 FE            [12] 2792 	add	a,#0xfe
      00213C FD               [12] 2793 	mov	r5,a
      00213D EC               [12] 2794 	mov	a,r4
      00213E 34 FF            [12] 2795 	addc	a,#0xff
      002140 A2 E7            [12] 2796 	mov	c,acc.7
      002142 13               [12] 2797 	rrc	a
      002143 CD               [12] 2798 	xch	a,r5
      002144 13               [12] 2799 	rrc	a
      002145 CD               [12] 2800 	xch	a,r5
                                   2801 ;	USBHost.c:402: if(usbBuffer[1] != 3) return 0;    //check if device string
      002146 8E 82            [24] 2802 	mov	dpl,r6
      002148 8F 83            [24] 2803 	mov	dph,r7
      00214A A3               [24] 2804 	inc	dptr
      00214B E0               [24] 2805 	movx	a,@dptr
      00214C FC               [12] 2806 	mov	r4,a
      00214D BC 03 02         [24] 2807 	cjne	r4,#0x03,00134$
      002150 80 04            [24] 2808 	sjmp	00117$
      002152                       2809 00134$:
      002152 75 82 00         [24] 2810 	mov	dpl,#0x00
      002155 22               [24] 2811 	ret
      002156                       2812 00117$:
      002156 90 09 AB         [24] 2813 	mov	dptr,#_convertStringDescriptor_PARM_3
      002159 E0               [24] 2814 	movx	a,@dptr
      00215A F5 2B            [12] 2815 	mov	_convertStringDescriptor_sloc1_1_0,a
      00215C A3               [24] 2816 	inc	dptr
      00215D E0               [24] 2817 	movx	a,@dptr
      00215E F5 2C            [12] 2818 	mov	(_convertStringDescriptor_sloc1_1_0 + 1),a
      002160 90 09 A9         [24] 2819 	mov	dptr,#_convertStringDescriptor_PARM_2
      002163 E0               [24] 2820 	movx	a,@dptr
      002164 F5 2F            [12] 2821 	mov	_convertStringDescriptor_sloc3_1_0,a
      002166 A3               [24] 2822 	inc	dptr
      002167 E0               [24] 2823 	movx	a,@dptr
      002168 F5 30            [12] 2824 	mov	(_convertStringDescriptor_sloc3_1_0 + 1),a
      00216A 85 2F 29         [24] 2825 	mov	_convertStringDescriptor_sloc0_1_0,_convertStringDescriptor_sloc3_1_0
      00216D 85 30 2A         [24] 2826 	mov	(_convertStringDescriptor_sloc0_1_0 + 1),(_convertStringDescriptor_sloc3_1_0 + 1)
      002170 78 00            [12] 2827 	mov	r0,#0x00
      002172                       2828 00109$:
                                   2829 ;	USBHost.c:403: for(; (i < len) && (i < bufferLength - 1); i++)
      002172 C3               [12] 2830 	clr	c
      002173 E8               [12] 2831 	mov	a,r0
      002174 9D               [12] 2832 	subb	a,r5
      002175 50 71            [24] 2833 	jnc	00106$
      002177 C0 05            [24] 2834 	push	ar5
      002179 AC 2B            [24] 2835 	mov	r4,_convertStringDescriptor_sloc1_1_0
      00217B AD 2C            [24] 2836 	mov	r5,(_convertStringDescriptor_sloc1_1_0 + 1)
      00217D EC               [12] 2837 	mov	a,r4
      00217E 24 FF            [12] 2838 	add	a,#0xff
      002180 F5 2D            [12] 2839 	mov	_convertStringDescriptor_sloc2_1_0,a
      002182 ED               [12] 2840 	mov	a,r5
      002183 34 FF            [12] 2841 	addc	a,#0xff
      002185 F5 2E            [12] 2842 	mov	(_convertStringDescriptor_sloc2_1_0 + 1),a
      002187 88 03            [24] 2843 	mov	ar3,r0
      002189 7D 00            [12] 2844 	mov	r5,#0x00
      00218B C3               [12] 2845 	clr	c
      00218C EB               [12] 2846 	mov	a,r3
      00218D 95 2D            [12] 2847 	subb	a,_convertStringDescriptor_sloc2_1_0
      00218F ED               [12] 2848 	mov	a,r5
      002190 95 2E            [12] 2849 	subb	a,(_convertStringDescriptor_sloc2_1_0 + 1)
      002192 D0 05            [24] 2850 	pop	ar5
      002194 50 52            [24] 2851 	jnc	00106$
                                   2852 ;	USBHost.c:404: if(usbBuffer[2 + 1 + (i << 1)])
      002196 C0 05            [24] 2853 	push	ar5
      002198 88 03            [24] 2854 	mov	ar3,r0
      00219A 7C 00            [12] 2855 	mov	r4,#0x00
      00219C EB               [12] 2856 	mov	a,r3
      00219D 2B               [12] 2857 	add	a,r3
      00219E FB               [12] 2858 	mov	r3,a
      00219F EC               [12] 2859 	mov	a,r4
      0021A0 33               [12] 2860 	rlc	a
      0021A1 FC               [12] 2861 	mov	r4,a
      0021A2 74 03            [12] 2862 	mov	a,#0x03
      0021A4 2B               [12] 2863 	add	a,r3
      0021A5 FA               [12] 2864 	mov	r2,a
      0021A6 E4               [12] 2865 	clr	a
      0021A7 3C               [12] 2866 	addc	a,r4
      0021A8 FD               [12] 2867 	mov	r5,a
      0021A9 EA               [12] 2868 	mov	a,r2
      0021AA 2E               [12] 2869 	add	a,r6
      0021AB FA               [12] 2870 	mov	r2,a
      0021AC ED               [12] 2871 	mov	a,r5
      0021AD 3F               [12] 2872 	addc	a,r7
      0021AE FD               [12] 2873 	mov	r5,a
      0021AF 8A 82            [24] 2874 	mov	dpl,r2
      0021B1 8D 83            [24] 2875 	mov	dph,r5
      0021B3 E0               [24] 2876 	movx	a,@dptr
      0021B4 D0 05            [24] 2877 	pop	ar5
      0021B6 60 0F            [24] 2878 	jz	00104$
                                   2879 ;	USBHost.c:405: strBuffer[i] = '?';
      0021B8 E8               [12] 2880 	mov	a,r0
      0021B9 25 29            [12] 2881 	add	a,_convertStringDescriptor_sloc0_1_0
      0021BB F5 82            [12] 2882 	mov	dpl,a
      0021BD E4               [12] 2883 	clr	a
      0021BE 35 2A            [12] 2884 	addc	a,(_convertStringDescriptor_sloc0_1_0 + 1)
      0021C0 F5 83            [12] 2885 	mov	dph,a
      0021C2 74 3F            [12] 2886 	mov	a,#0x3f
      0021C4 F0               [24] 2887 	movx	@dptr,a
      0021C5 80 1E            [24] 2888 	sjmp	00110$
      0021C7                       2889 00104$:
                                   2890 ;	USBHost.c:407: strBuffer[i] = usbBuffer[2 + (i << 1)];
      0021C7 E8               [12] 2891 	mov	a,r0
      0021C8 25 2F            [12] 2892 	add	a,_convertStringDescriptor_sloc3_1_0
      0021CA F9               [12] 2893 	mov	r1,a
      0021CB E4               [12] 2894 	clr	a
      0021CC 35 30            [12] 2895 	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
      0021CE FA               [12] 2896 	mov	r2,a
      0021CF 74 02            [12] 2897 	mov	a,#0x02
      0021D1 2B               [12] 2898 	add	a,r3
      0021D2 FB               [12] 2899 	mov	r3,a
      0021D3 E4               [12] 2900 	clr	a
      0021D4 3C               [12] 2901 	addc	a,r4
      0021D5 FC               [12] 2902 	mov	r4,a
      0021D6 EB               [12] 2903 	mov	a,r3
      0021D7 2E               [12] 2904 	add	a,r6
      0021D8 F5 82            [12] 2905 	mov	dpl,a
      0021DA EC               [12] 2906 	mov	a,r4
      0021DB 3F               [12] 2907 	addc	a,r7
      0021DC F5 83            [12] 2908 	mov	dph,a
      0021DE E0               [24] 2909 	movx	a,@dptr
      0021DF FC               [12] 2910 	mov	r4,a
      0021E0 89 82            [24] 2911 	mov	dpl,r1
      0021E2 8A 83            [24] 2912 	mov	dph,r2
      0021E4 F0               [24] 2913 	movx	@dptr,a
      0021E5                       2914 00110$:
                                   2915 ;	USBHost.c:403: for(; (i < len) && (i < bufferLength - 1); i++)
      0021E5 08               [12] 2916 	inc	r0
      0021E6 80 8A            [24] 2917 	sjmp	00109$
      0021E8                       2918 00106$:
                                   2919 ;	USBHost.c:408: strBuffer[i] = 0;
      0021E8 E8               [12] 2920 	mov	a,r0
      0021E9 25 2F            [12] 2921 	add	a,_convertStringDescriptor_sloc3_1_0
      0021EB F5 82            [12] 2922 	mov	dpl,a
      0021ED E4               [12] 2923 	clr	a
      0021EE 35 30            [12] 2924 	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
      0021F0 F5 83            [12] 2925 	mov	dph,a
      0021F2 E4               [12] 2926 	clr	a
      0021F3 F0               [24] 2927 	movx	@dptr,a
                                   2928 ;	USBHost.c:409: sendProtocolMSG(MSG_TYPE_DEVICE_STRING,(unsigned short)len, index+1, 0x34, 0x56, strBuffer);
      0021F4 7F 00            [12] 2929 	mov	r7,#0x00
      0021F6 90 09 AD         [24] 2930 	mov	dptr,#_convertStringDescriptor_PARM_4
      0021F9 E0               [24] 2931 	movx	a,@dptr
      0021FA FE               [12] 2932 	mov	r6,a
      0021FB 0E               [12] 2933 	inc	r6
      0021FC 90 0C 7D         [24] 2934 	mov	dptr,#_sendProtocolMSG_PARM_2
      0021FF ED               [12] 2935 	mov	a,r5
      002200 F0               [24] 2936 	movx	@dptr,a
      002201 EF               [12] 2937 	mov	a,r7
      002202 A3               [24] 2938 	inc	dptr
      002203 F0               [24] 2939 	movx	@dptr,a
      002204 90 0C 7F         [24] 2940 	mov	dptr,#_sendProtocolMSG_PARM_3
      002207 EE               [12] 2941 	mov	a,r6
      002208 F0               [24] 2942 	movx	@dptr,a
      002209 90 0C 80         [24] 2943 	mov	dptr,#_sendProtocolMSG_PARM_4
      00220C 74 34            [12] 2944 	mov	a,#0x34
      00220E F0               [24] 2945 	movx	@dptr,a
      00220F 90 0C 81         [24] 2946 	mov	dptr,#_sendProtocolMSG_PARM_5
      002212 74 56            [12] 2947 	mov	a,#0x56
      002214 F0               [24] 2948 	movx	@dptr,a
      002215 90 0C 82         [24] 2949 	mov	dptr,#_sendProtocolMSG_PARM_6
      002218 E5 2F            [12] 2950 	mov	a,_convertStringDescriptor_sloc3_1_0
      00221A F0               [24] 2951 	movx	@dptr,a
      00221B E5 30            [12] 2952 	mov	a,(_convertStringDescriptor_sloc3_1_0 + 1)
      00221D A3               [24] 2953 	inc	dptr
      00221E F0               [24] 2954 	movx	@dptr,a
      00221F 75 82 05         [24] 2955 	mov	dpl,#0x05
      002222 12 3E 44         [24] 2956 	lcall	_sendProtocolMSG
                                   2957 ;	USBHost.c:410: return 1;
      002225 75 82 01         [24] 2958 	mov	dpl,#0x01
                                   2959 ;	USBHost.c:411: }
      002228 22               [24] 2960 	ret
                                   2961 ;------------------------------------------------------------
                                   2962 ;Allocation info for local variables in function 'DEBUG_OUT_USB_BUFFER'
                                   2963 ;------------------------------------------------------------
                                   2964 ;usbBuffer                 Allocated with name '_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119'
                                   2965 ;i                         Allocated with name '_DEBUG_OUT_USB_BUFFER_i_65536_120'
                                   2966 ;------------------------------------------------------------
                                   2967 ;	USBHost.c:413: void DEBUG_OUT_USB_BUFFER(unsigned char __xdata *usbBuffer)
                                   2968 ;	-----------------------------------------
                                   2969 ;	 function DEBUG_OUT_USB_BUFFER
                                   2970 ;	-----------------------------------------
      002229                       2971 _DEBUG_OUT_USB_BUFFER:
      002229 AF 83            [24] 2972 	mov	r7,dph
      00222B E5 82            [12] 2973 	mov	a,dpl
      00222D 90 09 B0         [24] 2974 	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119
      002230 F0               [24] 2975 	movx	@dptr,a
      002231 EF               [12] 2976 	mov	a,r7
      002232 A3               [24] 2977 	inc	dptr
      002233 F0               [24] 2978 	movx	@dptr,a
                                   2979 ;	USBHost.c:416: for(i = 0; i < usbBuffer[0]; i++)
      002234 90 09 B0         [24] 2980 	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119
      002237 E0               [24] 2981 	movx	a,@dptr
      002238 FE               [12] 2982 	mov	r6,a
      002239 A3               [24] 2983 	inc	dptr
      00223A E0               [24] 2984 	movx	a,@dptr
      00223B FF               [12] 2985 	mov	r7,a
      00223C 7C 00            [12] 2986 	mov	r4,#0x00
      00223E 7D 00            [12] 2987 	mov	r5,#0x00
      002240                       2988 00103$:
      002240 8E 82            [24] 2989 	mov	dpl,r6
      002242 8F 83            [24] 2990 	mov	dph,r7
      002244 E0               [24] 2991 	movx	a,@dptr
      002245 FB               [12] 2992 	mov	r3,a
      002246 7A 00            [12] 2993 	mov	r2,#0x00
      002248 C3               [12] 2994 	clr	c
      002249 EC               [12] 2995 	mov	a,r4
      00224A 9B               [12] 2996 	subb	a,r3
      00224B ED               [12] 2997 	mov	a,r5
      00224C 64 80            [12] 2998 	xrl	a,#0x80
      00224E 8A F0            [24] 2999 	mov	b,r2
      002250 63 F0 80         [24] 3000 	xrl	b,#0x80
      002253 95 F0            [12] 3001 	subb	a,b
      002255 50 3C            [24] 3002 	jnc	00101$
                                   3003 ;	USBHost.c:418: DEBUG_OUT("0x%02X ", (uint16_t)(usbBuffer[i]));
      002257 EC               [12] 3004 	mov	a,r4
      002258 2E               [12] 3005 	add	a,r6
      002259 F5 82            [12] 3006 	mov	dpl,a
      00225B ED               [12] 3007 	mov	a,r5
      00225C 3F               [12] 3008 	addc	a,r7
      00225D F5 83            [12] 3009 	mov	dph,a
      00225F E0               [24] 3010 	movx	a,@dptr
      002260 FB               [12] 3011 	mov	r3,a
      002261 7A 00            [12] 3012 	mov	r2,#0x00
      002263 C0 07            [24] 3013 	push	ar7
      002265 C0 06            [24] 3014 	push	ar6
      002267 C0 05            [24] 3015 	push	ar5
      002269 C0 04            [24] 3016 	push	ar4
      00226B C0 03            [24] 3017 	push	ar3
      00226D C0 02            [24] 3018 	push	ar2
      00226F 74 DF            [12] 3019 	mov	a,#___str_12
      002271 C0 E0            [24] 3020 	push	acc
      002273 74 4D            [12] 3021 	mov	a,#(___str_12 >> 8)
      002275 C0 E0            [24] 3022 	push	acc
      002277 74 80            [12] 3023 	mov	a,#0x80
      002279 C0 E0            [24] 3024 	push	acc
      00227B 12 41 F8         [24] 3025 	lcall	_printf
      00227E E5 81            [12] 3026 	mov	a,sp
      002280 24 FB            [12] 3027 	add	a,#0xfb
      002282 F5 81            [12] 3028 	mov	sp,a
      002284 D0 04            [24] 3029 	pop	ar4
      002286 D0 05            [24] 3030 	pop	ar5
      002288 D0 06            [24] 3031 	pop	ar6
      00228A D0 07            [24] 3032 	pop	ar7
                                   3033 ;	USBHost.c:416: for(i = 0; i < usbBuffer[0]; i++)
      00228C 0C               [12] 3034 	inc	r4
      00228D BC 00 B0         [24] 3035 	cjne	r4,#0x00,00103$
      002290 0D               [12] 3036 	inc	r5
      002291 80 AD            [24] 3037 	sjmp	00103$
      002293                       3038 00101$:
                                   3039 ;	USBHost.c:420: DEBUG_OUT("\n");
      002293 74 E7            [12] 3040 	mov	a,#___str_13
      002295 C0 E0            [24] 3041 	push	acc
      002297 74 4D            [12] 3042 	mov	a,#(___str_13 >> 8)
      002299 C0 E0            [24] 3043 	push	acc
      00229B 74 80            [12] 3044 	mov	a,#0x80
      00229D C0 E0            [24] 3045 	push	acc
      00229F 12 41 F8         [24] 3046 	lcall	_printf
      0022A2 15 81            [12] 3047 	dec	sp
      0022A4 15 81            [12] 3048 	dec	sp
      0022A6 15 81            [12] 3049 	dec	sp
                                   3050 ;	USBHost.c:421: }
      0022A8 22               [24] 3051 	ret
                                   3052 ;------------------------------------------------------------
                                   3053 ;Allocation info for local variables in function 'getConfigurationDescriptor'
                                   3054 ;------------------------------------------------------------
                                   3055 ;s                         Allocated with name '_getConfigurationDescriptor_s_65536_123'
                                   3056 ;len                       Allocated with name '_getConfigurationDescriptor_len_65536_123'
                                   3057 ;total                     Allocated with name '_getConfigurationDescriptor_total_65536_123'
                                   3058 ;------------------------------------------------------------
                                   3059 ;	USBHost.c:423: unsigned char getConfigurationDescriptor()
                                   3060 ;	-----------------------------------------
                                   3061 ;	 function getConfigurationDescriptor
                                   3062 ;	-----------------------------------------
      0022A9                       3063 _getConfigurationDescriptor:
                                   3064 ;	USBHost.c:427: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
      0022A9 90 09 A2         [24] 3065 	mov	dptr,#_fillTxBuffer_PARM_2
      0022AC 74 08            [12] 3066 	mov	a,#0x08
      0022AE F0               [24] 3067 	movx	@dptr,a
      0022AF 90 4C 7C         [24] 3068 	mov	dptr,#_GetConfigurationDescriptorRequest
      0022B2 12 1F 48         [24] 3069 	lcall	_fillTxBuffer
                                   3070 ;	USBHost.c:429: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
      0022B5 90 09 96         [24] 3071 	mov	dptr,#_hostCtrlTransfer_PARM_2
      0022B8 74 B2            [12] 3072 	mov	a,#_getConfigurationDescriptor_len_65536_123
      0022BA F0               [24] 3073 	movx	@dptr,a
      0022BB 74 09            [12] 3074 	mov	a,#(_getConfigurationDescriptor_len_65536_123 >> 8)
      0022BD A3               [24] 3075 	inc	dptr
      0022BE F0               [24] 3076 	movx	@dptr,a
      0022BF E4               [12] 3077 	clr	a
      0022C0 A3               [24] 3078 	inc	dptr
      0022C1 F0               [24] 3079 	movx	@dptr,a
      0022C2 90 09 99         [24] 3080 	mov	dptr,#_hostCtrlTransfer_PARM_3
      0022C5 F0               [24] 3081 	movx	@dptr,a
      0022C6 74 02            [12] 3082 	mov	a,#0x02
      0022C8 A3               [24] 3083 	inc	dptr
      0022C9 F0               [24] 3084 	movx	@dptr,a
      0022CA 90 07 83         [24] 3085 	mov	dptr,#_receiveDataBuffer
      0022CD 12 1B 7F         [24] 3086 	lcall	_hostCtrlTransfer
                                   3087 ;	USBHost.c:430: if(s != ERR_SUCCESS)
      0022D0 E5 82            [12] 3088 	mov	a,dpl
      0022D2 FF               [12] 3089 	mov	r7,a
      0022D3 60 03            [24] 3090 	jz	00102$
                                   3091 ;	USBHost.c:431: return s;
      0022D5 8F 82            [24] 3092 	mov	dpl,r7
      0022D7 22               [24] 3093 	ret
      0022D8                       3094 00102$:
                                   3095 ;	USBHost.c:433: if(len < ((PUSB_SETUP_REQ)GetConfigurationDescriptorRequest)->wLengthL)
      0022D8 90 4C 82         [24] 3096 	mov	dptr,#(_GetConfigurationDescriptorRequest + 0x0006)
      0022DB E4               [12] 3097 	clr	a
      0022DC 93               [24] 3098 	movc	a,@a+dptr
      0022DD FF               [12] 3099 	mov	r7,a
      0022DE 90 09 B2         [24] 3100 	mov	dptr,#_getConfigurationDescriptor_len_65536_123
      0022E1 E0               [24] 3101 	movx	a,@dptr
      0022E2 FD               [12] 3102 	mov	r5,a
      0022E3 A3               [24] 3103 	inc	dptr
      0022E4 E0               [24] 3104 	movx	a,@dptr
      0022E5 FE               [12] 3105 	mov	r6,a
      0022E6 7C 00            [12] 3106 	mov	r4,#0x00
      0022E8 C3               [12] 3107 	clr	c
      0022E9 ED               [12] 3108 	mov	a,r5
      0022EA 9F               [12] 3109 	subb	a,r7
      0022EB EE               [12] 3110 	mov	a,r6
      0022EC 9C               [12] 3111 	subb	a,r4
      0022ED 50 04            [24] 3112 	jnc	00104$
                                   3113 ;	USBHost.c:434: return ERR_USB_BUF_OVER;
      0022EF 75 82 17         [24] 3114 	mov	dpl,#0x17
      0022F2 22               [24] 3115 	ret
      0022F3                       3116 00104$:
                                   3117 ;	USBHost.c:437: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
      0022F3 90 07 85         [24] 3118 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      0022F6 E0               [24] 3119 	movx	a,@dptr
      0022F7 FF               [12] 3120 	mov	r7,a
      0022F8 7E 00            [12] 3121 	mov	r6,#0x00
      0022FA 90 07 86         [24] 3122 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      0022FD E0               [24] 3123 	movx	a,@dptr
      0022FE FC               [12] 3124 	mov	r4,a
      0022FF E4               [12] 3125 	clr	a
      002300 2F               [12] 3126 	add	a,r7
      002301 FF               [12] 3127 	mov	r7,a
      002302 EC               [12] 3128 	mov	a,r4
      002303 3E               [12] 3129 	addc	a,r6
      002304 FE               [12] 3130 	mov	r6,a
                                   3131 ;	USBHost.c:438: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
      002305 90 09 A2         [24] 3132 	mov	dptr,#_fillTxBuffer_PARM_2
      002308 74 08            [12] 3133 	mov	a,#0x08
      00230A F0               [24] 3134 	movx	@dptr,a
      00230B 90 4C 7C         [24] 3135 	mov	dptr,#_GetConfigurationDescriptorRequest
      00230E C0 07            [24] 3136 	push	ar7
      002310 C0 06            [24] 3137 	push	ar6
      002312 12 1F 48         [24] 3138 	lcall	_fillTxBuffer
      002315 D0 06            [24] 3139 	pop	ar6
      002317 D0 07            [24] 3140 	pop	ar7
                                   3141 ;	USBHost.c:439: ((PUSB_SETUP_REQ)TxBuffer)->wLengthL = (unsigned char)(total & 255);
      002319 8F 05            [24] 3142 	mov	ar5,r7
      00231B 90 01 06         [24] 3143 	mov	dptr,#(_TxBuffer + 0x0006)
      00231E ED               [12] 3144 	mov	a,r5
      00231F F0               [24] 3145 	movx	@dptr,a
                                   3146 ;	USBHost.c:440: ((PUSB_SETUP_REQ)TxBuffer)->wLengthH = (unsigned char)(total >> 8);
      002320 8E 07            [24] 3147 	mov	ar7,r6
      002322 90 01 07         [24] 3148 	mov	dptr,#(_TxBuffer + 0x0007)
      002325 EF               [12] 3149 	mov	a,r7
      002326 F0               [24] 3150 	movx	@dptr,a
                                   3151 ;	USBHost.c:441: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
      002327 90 09 96         [24] 3152 	mov	dptr,#_hostCtrlTransfer_PARM_2
      00232A 74 B2            [12] 3153 	mov	a,#_getConfigurationDescriptor_len_65536_123
      00232C F0               [24] 3154 	movx	@dptr,a
      00232D 74 09            [12] 3155 	mov	a,#(_getConfigurationDescriptor_len_65536_123 >> 8)
      00232F A3               [24] 3156 	inc	dptr
      002330 F0               [24] 3157 	movx	@dptr,a
      002331 E4               [12] 3158 	clr	a
      002332 A3               [24] 3159 	inc	dptr
      002333 F0               [24] 3160 	movx	@dptr,a
      002334 90 09 99         [24] 3161 	mov	dptr,#_hostCtrlTransfer_PARM_3
      002337 F0               [24] 3162 	movx	@dptr,a
      002338 74 02            [12] 3163 	mov	a,#0x02
      00233A A3               [24] 3164 	inc	dptr
      00233B F0               [24] 3165 	movx	@dptr,a
      00233C 90 07 83         [24] 3166 	mov	dptr,#_receiveDataBuffer
      00233F 12 1B 7F         [24] 3167 	lcall	_hostCtrlTransfer
                                   3168 ;	USBHost.c:442: if(s != ERR_SUCCESS)
      002342 E5 82            [12] 3169 	mov	a,dpl
      002344 FF               [12] 3170 	mov	r7,a
      002345 60 03            [24] 3171 	jz	00106$
                                   3172 ;	USBHost.c:443: return s;
      002347 8F 82            [24] 3173 	mov	dpl,r7
      002349 22               [24] 3174 	ret
      00234A                       3175 00106$:
                                   3176 ;	USBHost.c:447: return ERR_SUCCESS;
      00234A 75 82 00         [24] 3177 	mov	dpl,#0x00
                                   3178 ;	USBHost.c:448: }
      00234D 22               [24] 3179 	ret
                                   3180 ;------------------------------------------------------------
                                   3181 ;Allocation info for local variables in function 'getInterfaceDescriptor'
                                   3182 ;------------------------------------------------------------
                                   3183 ;index                     Allocated with name '_getInterfaceDescriptor_index_65536_124'
                                   3184 ;temp                      Allocated with name '_getInterfaceDescriptor_temp_65536_125'
                                   3185 ;s                         Allocated with name '_getInterfaceDescriptor_s_65536_125'
                                   3186 ;len                       Allocated with name '_getInterfaceDescriptor_len_65536_125'
                                   3187 ;------------------------------------------------------------
                                   3188 ;	USBHost.c:450: unsigned char getInterfaceDescriptor(unsigned char index)
                                   3189 ;	-----------------------------------------
                                   3190 ;	 function getInterfaceDescriptor
                                   3191 ;	-----------------------------------------
      00234E                       3192 _getInterfaceDescriptor:
                                   3193 ;	USBHost.c:455: fillTxBuffer(GetInterfaceDescriptorRequest, sizeof(GetInterfaceDescriptorRequest));
      00234E 90 09 A2         [24] 3194 	mov	dptr,#_fillTxBuffer_PARM_2
      002351 74 08            [12] 3195 	mov	a,#0x08
      002353 F0               [24] 3196 	movx	@dptr,a
      002354 90 4C 84         [24] 3197 	mov	dptr,#_GetInterfaceDescriptorRequest
      002357 12 1F 48         [24] 3198 	lcall	_fillTxBuffer
                                   3199 ;	USBHost.c:456: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
      00235A 90 09 96         [24] 3200 	mov	dptr,#_hostCtrlTransfer_PARM_2
      00235D 74 B4            [12] 3201 	mov	a,#_getInterfaceDescriptor_len_65536_125
      00235F F0               [24] 3202 	movx	@dptr,a
      002360 74 09            [12] 3203 	mov	a,#(_getInterfaceDescriptor_len_65536_125 >> 8)
      002362 A3               [24] 3204 	inc	dptr
      002363 F0               [24] 3205 	movx	@dptr,a
      002364 E4               [12] 3206 	clr	a
      002365 A3               [24] 3207 	inc	dptr
      002366 F0               [24] 3208 	movx	@dptr,a
      002367 90 09 99         [24] 3209 	mov	dptr,#_hostCtrlTransfer_PARM_3
      00236A F0               [24] 3210 	movx	@dptr,a
      00236B 74 02            [12] 3211 	mov	a,#0x02
      00236D A3               [24] 3212 	inc	dptr
      00236E F0               [24] 3213 	movx	@dptr,a
      00236F 90 07 83         [24] 3214 	mov	dptr,#_receiveDataBuffer
                                   3215 ;	USBHost.c:457: return s;                          
                                   3216 ;	USBHost.c:458: }
      002372 02 1B 7F         [24] 3217 	ljmp	_hostCtrlTransfer
                                   3218 ;------------------------------------------------------------
                                   3219 ;Allocation info for local variables in function 'resetHubDevices'
                                   3220 ;------------------------------------------------------------
                                   3221 ;hubindex                  Allocated with name '_resetHubDevices_hubindex_65536_126'
                                   3222 ;hiddevice                 Allocated with name '_resetHubDevices_hiddevice_65536_127'
                                   3223 ;------------------------------------------------------------
                                   3224 ;	USBHost.c:524: void resetHubDevices(unsigned char hubindex)
                                   3225 ;	-----------------------------------------
                                   3226 ;	 function resetHubDevices
                                   3227 ;	-----------------------------------------
      002375                       3228 _resetHubDevices:
      002375 E5 82            [12] 3229 	mov	a,dpl
      002377 90 0A 16         [24] 3230 	mov	dptr,#_resetHubDevices_hubindex_65536_126
      00237A F0               [24] 3231 	movx	@dptr,a
                                   3232 ;	USBHost.c:527: VendorProductID[hubindex].idVendorL = 0;
      00237B E0               [24] 3233 	movx	a,@dptr
      00237C FF               [12] 3234 	mov	r7,a
      00237D 75 F0 10         [24] 3235 	mov	b,#0x10
      002380 A4               [48] 3236 	mul	ab
      002381 FD               [12] 3237 	mov	r5,a
      002382 AE F0            [24] 3238 	mov	r6,b
      002384 24 F6            [12] 3239 	add	a,#_VendorProductID
      002386 F5 82            [12] 3240 	mov	dpl,a
      002388 EE               [12] 3241 	mov	a,r6
      002389 34 09            [12] 3242 	addc	a,#(_VendorProductID >> 8)
      00238B F5 83            [12] 3243 	mov	dph,a
      00238D E4               [12] 3244 	clr	a
      00238E F0               [24] 3245 	movx	@dptr,a
      00238F A3               [24] 3246 	inc	dptr
      002390 F0               [24] 3247 	movx	@dptr,a
      002391 A3               [24] 3248 	inc	dptr
      002392 F0               [24] 3249 	movx	@dptr,a
      002393 A3               [24] 3250 	inc	dptr
      002394 F0               [24] 3251 	movx	@dptr,a
                                   3252 ;	USBHost.c:528: VendorProductID[hubindex].idVendorH = 0;
      002395 ED               [12] 3253 	mov	a,r5
      002396 24 F6            [12] 3254 	add	a,#_VendorProductID
      002398 FD               [12] 3255 	mov	r5,a
      002399 EE               [12] 3256 	mov	a,r6
      00239A 34 09            [12] 3257 	addc	a,#(_VendorProductID >> 8)
      00239C FE               [12] 3258 	mov	r6,a
      00239D 8D 82            [24] 3259 	mov	dpl,r5
      00239F 8E 83            [24] 3260 	mov	dph,r6
      0023A1 A3               [24] 3261 	inc	dptr
      0023A2 A3               [24] 3262 	inc	dptr
      0023A3 A3               [24] 3263 	inc	dptr
      0023A4 A3               [24] 3264 	inc	dptr
      0023A5 E4               [12] 3265 	clr	a
      0023A6 F0               [24] 3266 	movx	@dptr,a
      0023A7 A3               [24] 3267 	inc	dptr
      0023A8 F0               [24] 3268 	movx	@dptr,a
      0023A9 A3               [24] 3269 	inc	dptr
      0023AA F0               [24] 3270 	movx	@dptr,a
      0023AB A3               [24] 3271 	inc	dptr
      0023AC F0               [24] 3272 	movx	@dptr,a
                                   3273 ;	USBHost.c:529: VendorProductID[hubindex].idProductL = 0;
      0023AD 74 08            [12] 3274 	mov	a,#0x08
      0023AF 2D               [12] 3275 	add	a,r5
      0023B0 F5 82            [12] 3276 	mov	dpl,a
      0023B2 E4               [12] 3277 	clr	a
      0023B3 3E               [12] 3278 	addc	a,r6
      0023B4 F5 83            [12] 3279 	mov	dph,a
      0023B6 E4               [12] 3280 	clr	a
      0023B7 F0               [24] 3281 	movx	@dptr,a
      0023B8 A3               [24] 3282 	inc	dptr
      0023B9 F0               [24] 3283 	movx	@dptr,a
      0023BA A3               [24] 3284 	inc	dptr
      0023BB F0               [24] 3285 	movx	@dptr,a
      0023BC A3               [24] 3286 	inc	dptr
      0023BD F0               [24] 3287 	movx	@dptr,a
                                   3288 ;	USBHost.c:530: VendorProductID[hubindex].idProductH = 0;
      0023BE 74 0C            [12] 3289 	mov	a,#0x0c
      0023C0 2D               [12] 3290 	add	a,r5
      0023C1 F5 82            [12] 3291 	mov	dpl,a
      0023C3 E4               [12] 3292 	clr	a
      0023C4 3E               [12] 3293 	addc	a,r6
      0023C5 F5 83            [12] 3294 	mov	dph,a
      0023C7 E4               [12] 3295 	clr	a
      0023C8 F0               [24] 3296 	movx	@dptr,a
      0023C9 A3               [24] 3297 	inc	dptr
      0023CA F0               [24] 3298 	movx	@dptr,a
      0023CB A3               [24] 3299 	inc	dptr
      0023CC F0               [24] 3300 	movx	@dptr,a
      0023CD A3               [24] 3301 	inc	dptr
      0023CE F0               [24] 3302 	movx	@dptr,a
                                   3303 ;	USBHost.c:531: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      0023CF 7E 00            [12] 3304 	mov	r6,#0x00
      0023D1                       3305 00104$:
                                   3306 ;	USBHost.c:533: if(HIDdevice[hiddevice].rootHub == hubindex){
      0023D1 EE               [12] 3307 	mov	a,r6
      0023D2 75 F0 08         [24] 3308 	mov	b,#0x08
      0023D5 A4               [48] 3309 	mul	ab
      0023D6 24 B6            [12] 3310 	add	a,#_HIDdevice
      0023D8 FC               [12] 3311 	mov	r4,a
      0023D9 74 09            [12] 3312 	mov	a,#(_HIDdevice >> 8)
      0023DB 35 F0            [12] 3313 	addc	a,b
      0023DD FD               [12] 3314 	mov	r5,a
      0023DE 74 01            [12] 3315 	mov	a,#0x01
      0023E0 2C               [12] 3316 	add	a,r4
      0023E1 FA               [12] 3317 	mov	r2,a
      0023E2 E4               [12] 3318 	clr	a
      0023E3 3D               [12] 3319 	addc	a,r5
      0023E4 FB               [12] 3320 	mov	r3,a
      0023E5 8A 82            [24] 3321 	mov	dpl,r2
      0023E7 8B 83            [24] 3322 	mov	dph,r3
      0023E9 E0               [24] 3323 	movx	a,@dptr
      0023EA B5 07 29         [24] 3324 	cjne	a,ar7,00105$
                                   3325 ;	USBHost.c:534: HIDdevice[hiddevice].connected  = 0;
      0023ED 8C 82            [24] 3326 	mov	dpl,r4
      0023EF 8D 83            [24] 3327 	mov	dph,r5
      0023F1 E4               [12] 3328 	clr	a
      0023F2 F0               [24] 3329 	movx	@dptr,a
                                   3330 ;	USBHost.c:535: HIDdevice[hiddevice].rootHub  = 0;
      0023F3 8A 82            [24] 3331 	mov	dpl,r2
      0023F5 8B 83            [24] 3332 	mov	dph,r3
      0023F7 F0               [24] 3333 	movx	@dptr,a
                                   3334 ;	USBHost.c:536: HIDdevice[hiddevice].interface  = 0;
      0023F8 8C 82            [24] 3335 	mov	dpl,r4
      0023FA 8D 83            [24] 3336 	mov	dph,r5
      0023FC A3               [24] 3337 	inc	dptr
      0023FD A3               [24] 3338 	inc	dptr
      0023FE F0               [24] 3339 	movx	@dptr,a
                                   3340 ;	USBHost.c:537: HIDdevice[hiddevice].endPoint  = 0;
      0023FF 8C 82            [24] 3341 	mov	dpl,r4
      002401 8D 83            [24] 3342 	mov	dph,r5
      002403 A3               [24] 3343 	inc	dptr
      002404 A3               [24] 3344 	inc	dptr
      002405 A3               [24] 3345 	inc	dptr
      002406 F0               [24] 3346 	movx	@dptr,a
                                   3347 ;	USBHost.c:538: HIDdevice[hiddevice].type  = 0;
      002407 8C 82            [24] 3348 	mov	dpl,r4
      002409 8D 83            [24] 3349 	mov	dph,r5
      00240B A3               [24] 3350 	inc	dptr
      00240C A3               [24] 3351 	inc	dptr
      00240D A3               [24] 3352 	inc	dptr
      00240E A3               [24] 3353 	inc	dptr
      00240F F0               [24] 3354 	movx	@dptr,a
      002410 A3               [24] 3355 	inc	dptr
      002411 F0               [24] 3356 	movx	@dptr,a
      002412 A3               [24] 3357 	inc	dptr
      002413 F0               [24] 3358 	movx	@dptr,a
      002414 A3               [24] 3359 	inc	dptr
      002415 F0               [24] 3360 	movx	@dptr,a
      002416                       3361 00105$:
                                   3362 ;	USBHost.c:531: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      002416 0E               [12] 3363 	inc	r6
      002417 BE 08 00         [24] 3364 	cjne	r6,#0x08,00119$
      00241A                       3365 00119$:
      00241A 40 B5            [24] 3366 	jc	00104$
                                   3367 ;	USBHost.c:541: }
      00241C 22               [24] 3368 	ret
                                   3369 ;------------------------------------------------------------
                                   3370 ;Allocation info for local variables in function 'pollHIDdevice'
                                   3371 ;------------------------------------------------------------
                                   3372 ;sloc0                     Allocated with name '_pollHIDdevice_sloc0_1_0'
                                   3373 ;sloc1                     Allocated with name '_pollHIDdevice_sloc1_1_0'
                                   3374 ;sloc2                     Allocated with name '_pollHIDdevice_sloc2_1_0'
                                   3375 ;s                         Allocated with name '_pollHIDdevice_s_65536_131'
                                   3376 ;hiddevice                 Allocated with name '_pollHIDdevice_hiddevice_65536_131'
                                   3377 ;len                       Allocated with name '_pollHIDdevice_len_65536_131'
                                   3378 ;------------------------------------------------------------
                                   3379 ;	USBHost.c:543: void pollHIDdevice()
                                   3380 ;	-----------------------------------------
                                   3381 ;	 function pollHIDdevice
                                   3382 ;	-----------------------------------------
      00241D                       3383 _pollHIDdevice:
                                   3384 ;	USBHost.c:546: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      00241D 7F 00            [12] 3385 	mov	r7,#0x00
      00241F                       3386 00110$:
                                   3387 ;	USBHost.c:548: if(HIDdevice[hiddevice].connected){
      00241F EF               [12] 3388 	mov	a,r7
      002420 75 F0 08         [24] 3389 	mov	b,#0x08
      002423 A4               [48] 3390 	mul	ab
      002424 FD               [12] 3391 	mov	r5,a
      002425 AE F0            [24] 3392 	mov	r6,b
      002427 24 B6            [12] 3393 	add	a,#_HIDdevice
      002429 FB               [12] 3394 	mov	r3,a
      00242A EE               [12] 3395 	mov	a,r6
      00242B 34 09            [12] 3396 	addc	a,#(_HIDdevice >> 8)
      00242D FC               [12] 3397 	mov	r4,a
      00242E 8B 82            [24] 3398 	mov	dpl,r3
      002430 8C 83            [24] 3399 	mov	dph,r4
      002432 E0               [24] 3400 	movx	a,@dptr
      002433 70 03            [24] 3401 	jnz	00141$
      002435 02 25 B4         [24] 3402 	ljmp	00111$
      002438                       3403 00141$:
                                   3404 ;	USBHost.c:549: selectHubPort(HIDdevice[hiddevice].rootHub, 0);
      002438 ED               [12] 3405 	mov	a,r5
      002439 24 B6            [12] 3406 	add	a,#_HIDdevice
      00243B FD               [12] 3407 	mov	r5,a
      00243C EE               [12] 3408 	mov	a,r6
      00243D 34 09            [12] 3409 	addc	a,#(_HIDdevice >> 8)
      00243F FE               [12] 3410 	mov	r6,a
      002440 8D 82            [24] 3411 	mov	dpl,r5
      002442 8E 83            [24] 3412 	mov	dph,r6
      002444 A3               [24] 3413 	inc	dptr
      002445 E0               [24] 3414 	movx	a,@dptr
      002446 FC               [12] 3415 	mov	r4,a
      002447 90 09 8E         [24] 3416 	mov	dptr,#_selectHubPort_PARM_2
      00244A E4               [12] 3417 	clr	a
      00244B F0               [24] 3418 	movx	@dptr,a
      00244C 8C 82            [24] 3419 	mov	dpl,r4
      00244E C0 07            [24] 3420 	push	ar7
      002450 C0 06            [24] 3421 	push	ar6
      002452 C0 05            [24] 3422 	push	ar5
      002454 12 19 8C         [24] 3423 	lcall	_selectHubPort
      002457 D0 05            [24] 3424 	pop	ar5
      002459 D0 06            [24] 3425 	pop	ar6
      00245B D0 07            [24] 3426 	pop	ar7
                                   3427 ;	USBHost.c:550: s = hostTransfer( USB_PID_IN << 4 | HIDdevice[hiddevice].endPoint & 0x7F, HIDdevice[hiddevice].endPoint & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0 );
      00245D 8D 82            [24] 3428 	mov	dpl,r5
      00245F 8E 83            [24] 3429 	mov	dph,r6
      002461 A3               [24] 3430 	inc	dptr
      002462 A3               [24] 3431 	inc	dptr
      002463 A3               [24] 3432 	inc	dptr
      002464 E0               [24] 3433 	movx	a,@dptr
      002465 FE               [12] 3434 	mov	r6,a
      002466 74 7F            [12] 3435 	mov	a,#0x7f
      002468 5E               [12] 3436 	anl	a,r6
      002469 44 90            [12] 3437 	orl	a,#0x90
      00246B FD               [12] 3438 	mov	r5,a
      00246C EE               [12] 3439 	mov	a,r6
      00246D 30 E7 06         [24] 3440 	jnb	acc.7,00114$
      002470 7C C0            [12] 3441 	mov	r4,#0xc0
      002472 7E 00            [12] 3442 	mov	r6,#0x00
      002474 80 04            [24] 3443 	sjmp	00115$
      002476                       3444 00114$:
      002476 7C 00            [12] 3445 	mov	r4,#0x00
      002478 7E 00            [12] 3446 	mov	r6,#0x00
      00247A                       3447 00115$:
      00247A 90 09 90         [24] 3448 	mov	dptr,#_hostTransfer_PARM_2
      00247D EC               [12] 3449 	mov	a,r4
      00247E F0               [24] 3450 	movx	@dptr,a
      00247F 90 09 91         [24] 3451 	mov	dptr,#_hostTransfer_PARM_3
      002482 E4               [12] 3452 	clr	a
      002483 F0               [24] 3453 	movx	@dptr,a
      002484 A3               [24] 3454 	inc	dptr
      002485 F0               [24] 3455 	movx	@dptr,a
      002486 8D 82            [24] 3456 	mov	dpl,r5
      002488 C0 07            [24] 3457 	push	ar7
      00248A 12 19 BE         [24] 3458 	lcall	_hostTransfer
      00248D E5 82            [12] 3459 	mov	a,dpl
      00248F D0 07            [24] 3460 	pop	ar7
                                   3461 ;	USBHost.c:551: if ( s == ERR_SUCCESS )
      002491 60 03            [24] 3462 	jz	00143$
      002493 02 25 B4         [24] 3463 	ljmp	00111$
      002496                       3464 00143$:
                                   3465 ;	USBHost.c:553: HIDdevice[hiddevice].endPoint ^= 0x80;
      002496 EF               [12] 3466 	mov	a,r7
      002497 75 F0 08         [24] 3467 	mov	b,#0x08
      00249A A4               [48] 3468 	mul	ab
      00249B 24 B6            [12] 3469 	add	a,#_HIDdevice
      00249D FD               [12] 3470 	mov	r5,a
      00249E 74 09            [12] 3471 	mov	a,#(_HIDdevice >> 8)
      0024A0 35 F0            [12] 3472 	addc	a,b
      0024A2 FE               [12] 3473 	mov	r6,a
      0024A3 74 03            [12] 3474 	mov	a,#0x03
      0024A5 2D               [12] 3475 	add	a,r5
      0024A6 FB               [12] 3476 	mov	r3,a
      0024A7 E4               [12] 3477 	clr	a
      0024A8 3E               [12] 3478 	addc	a,r6
      0024A9 FC               [12] 3479 	mov	r4,a
      0024AA 8B 82            [24] 3480 	mov	dpl,r3
      0024AC 8C 83            [24] 3481 	mov	dph,r4
      0024AE E0               [24] 3482 	movx	a,@dptr
      0024AF FA               [12] 3483 	mov	r2,a
      0024B0 63 02 80         [24] 3484 	xrl	ar2,#0x80
      0024B3 8B 82            [24] 3485 	mov	dpl,r3
      0024B5 8C 83            [24] 3486 	mov	dph,r4
      0024B7 EA               [12] 3487 	mov	a,r2
      0024B8 F0               [24] 3488 	movx	@dptr,a
                                   3489 ;	USBHost.c:554: len = USB_RX_LEN;
      0024B9 90 0A 17         [24] 3490 	mov	dptr,#_pollHIDdevice_len_65536_131
      0024BC E5 D1            [12] 3491 	mov	a,_USB_RX_LEN
      0024BE F0               [24] 3492 	movx	@dptr,a
                                   3493 ;	USBHost.c:555: if ( len )
      0024BF E0               [24] 3494 	movx	a,@dptr
      0024C0 FA               [12] 3495 	mov	r2,a
      0024C1 E0               [24] 3496 	movx	a,@dptr
      0024C2 70 03            [24] 3497 	jnz	00144$
      0024C4 02 25 B4         [24] 3498 	ljmp	00111$
      0024C7                       3499 00144$:
                                   3500 ;	USBHost.c:557: LED = !LED;    
      0024C7 B2 96            [12] 3501 	cpl	_LED
                                   3502 ;	USBHost.c:559: sendHidPollMSG(MSG_TYPE_DEVICE_POLL,len, HIDdevice[hiddevice].type, hiddevice, HIDdevice[hiddevice].endPoint & 0x7F, RxBuffer,VendorProductID[HIDdevice[hiddevice].rootHub].idVendorL,VendorProductID[HIDdevice[hiddevice].rootHub].idVendorH,VendorProductID[HIDdevice[hiddevice].rootHub].idProductL,VendorProductID[HIDdevice[hiddevice].rootHub].idProductH);
      0024C9 8A 31            [24] 3503 	mov	_pollHIDdevice_sloc0_1_0,r2
      0024CB 75 32 00         [24] 3504 	mov	(_pollHIDdevice_sloc0_1_0 + 1),#0x00
      0024CE 74 04            [12] 3505 	mov	a,#0x04
      0024D0 2D               [12] 3506 	add	a,r5
      0024D1 F8               [12] 3507 	mov	r0,a
      0024D2 E4               [12] 3508 	clr	a
      0024D3 3E               [12] 3509 	addc	a,r6
      0024D4 FA               [12] 3510 	mov	r2,a
      0024D5 88 82            [24] 3511 	mov	dpl,r0
      0024D7 8A 83            [24] 3512 	mov	dph,r2
      0024D9 E0               [24] 3513 	movx	a,@dptr
      0024DA F9               [12] 3514 	mov	r1,a
      0024DB 8B 82            [24] 3515 	mov	dpl,r3
      0024DD 8C 83            [24] 3516 	mov	dph,r4
      0024DF E0               [24] 3517 	movx	a,@dptr
      0024E0 FB               [12] 3518 	mov	r3,a
      0024E1 53 03 7F         [24] 3519 	anl	ar3,#0x7f
      0024E4 8D 82            [24] 3520 	mov	dpl,r5
      0024E6 8E 83            [24] 3521 	mov	dph,r6
      0024E8 A3               [24] 3522 	inc	dptr
      0024E9 E0               [24] 3523 	movx	a,@dptr
      0024EA 75 F0 10         [24] 3524 	mov	b,#0x10
      0024ED A4               [48] 3525 	mul	ab
      0024EE FE               [12] 3526 	mov	r6,a
      0024EF AD F0            [24] 3527 	mov	r5,b
      0024F1 24 F6            [12] 3528 	add	a,#_VendorProductID
      0024F3 F5 82            [12] 3529 	mov	dpl,a
      0024F5 ED               [12] 3530 	mov	a,r5
      0024F6 34 09            [12] 3531 	addc	a,#(_VendorProductID >> 8)
      0024F8 F5 83            [12] 3532 	mov	dph,a
      0024FA E0               [24] 3533 	movx	a,@dptr
      0024FB F5 33            [12] 3534 	mov	_pollHIDdevice_sloc1_1_0,a
      0024FD EE               [12] 3535 	mov	a,r6
      0024FE 24 F6            [12] 3536 	add	a,#_VendorProductID
      002500 FE               [12] 3537 	mov	r6,a
      002501 ED               [12] 3538 	mov	a,r5
      002502 34 09            [12] 3539 	addc	a,#(_VendorProductID >> 8)
      002504 FD               [12] 3540 	mov	r5,a
      002505 8E 82            [24] 3541 	mov	dpl,r6
      002507 8D 83            [24] 3542 	mov	dph,r5
      002509 A3               [24] 3543 	inc	dptr
      00250A A3               [24] 3544 	inc	dptr
      00250B A3               [24] 3545 	inc	dptr
      00250C A3               [24] 3546 	inc	dptr
      00250D E0               [24] 3547 	movx	a,@dptr
      00250E F5 34            [12] 3548 	mov	_pollHIDdevice_sloc2_1_0,a
      002510 74 08            [12] 3549 	mov	a,#0x08
      002512 2E               [12] 3550 	add	a,r6
      002513 F5 82            [12] 3551 	mov	dpl,a
      002515 E4               [12] 3552 	clr	a
      002516 3D               [12] 3553 	addc	a,r5
      002517 F5 83            [12] 3554 	mov	dph,a
      002519 E0               [24] 3555 	movx	a,@dptr
      00251A FC               [12] 3556 	mov	r4,a
      00251B 74 0C            [12] 3557 	mov	a,#0x0c
      00251D 2E               [12] 3558 	add	a,r6
      00251E F5 82            [12] 3559 	mov	dpl,a
      002520 E4               [12] 3560 	clr	a
      002521 3D               [12] 3561 	addc	a,r5
      002522 F5 83            [12] 3562 	mov	dph,a
      002524 E0               [24] 3563 	movx	a,@dptr
      002525 FE               [12] 3564 	mov	r6,a
      002526 90 0C 85         [24] 3565 	mov	dptr,#_sendHidPollMSG_PARM_2
      002529 E5 31            [12] 3566 	mov	a,_pollHIDdevice_sloc0_1_0
      00252B F0               [24] 3567 	movx	@dptr,a
      00252C E5 32            [12] 3568 	mov	a,(_pollHIDdevice_sloc0_1_0 + 1)
      00252E A3               [24] 3569 	inc	dptr
      00252F F0               [24] 3570 	movx	@dptr,a
      002530 90 0C 87         [24] 3571 	mov	dptr,#_sendHidPollMSG_PARM_3
      002533 E9               [12] 3572 	mov	a,r1
      002534 F0               [24] 3573 	movx	@dptr,a
      002535 90 0C 88         [24] 3574 	mov	dptr,#_sendHidPollMSG_PARM_4
      002538 EF               [12] 3575 	mov	a,r7
      002539 F0               [24] 3576 	movx	@dptr,a
      00253A 90 0C 89         [24] 3577 	mov	dptr,#_sendHidPollMSG_PARM_5
      00253D EB               [12] 3578 	mov	a,r3
      00253E F0               [24] 3579 	movx	@dptr,a
      00253F 90 0C 8A         [24] 3580 	mov	dptr,#_sendHidPollMSG_PARM_6
      002542 74 00            [12] 3581 	mov	a,#_RxBuffer
      002544 F0               [24] 3582 	movx	@dptr,a
      002545 74 00            [12] 3583 	mov	a,#(_RxBuffer >> 8)
      002547 A3               [24] 3584 	inc	dptr
      002548 F0               [24] 3585 	movx	@dptr,a
      002549 90 0C 8C         [24] 3586 	mov	dptr,#_sendHidPollMSG_PARM_7
      00254C E5 33            [12] 3587 	mov	a,_pollHIDdevice_sloc1_1_0
      00254E F0               [24] 3588 	movx	@dptr,a
      00254F 90 0C 8D         [24] 3589 	mov	dptr,#_sendHidPollMSG_PARM_8
      002552 E5 34            [12] 3590 	mov	a,_pollHIDdevice_sloc2_1_0
      002554 F0               [24] 3591 	movx	@dptr,a
      002555 90 0C 8E         [24] 3592 	mov	dptr,#_sendHidPollMSG_PARM_9
      002558 EC               [12] 3593 	mov	a,r4
      002559 F0               [24] 3594 	movx	@dptr,a
      00255A 90 0C 8F         [24] 3595 	mov	dptr,#_sendHidPollMSG_PARM_10
      00255D EE               [12] 3596 	mov	a,r6
      00255E F0               [24] 3597 	movx	@dptr,a
      00255F 75 82 04         [24] 3598 	mov	dpl,#0x04
      002562 C0 07            [24] 3599 	push	ar7
      002564 C0 02            [24] 3600 	push	ar2
      002566 C0 00            [24] 3601 	push	ar0
      002568 12 3F 19         [24] 3602 	lcall	_sendHidPollMSG
      00256B D0 00            [24] 3603 	pop	ar0
      00256D D0 02            [24] 3604 	pop	ar2
      00256F D0 07            [24] 3605 	pop	ar7
                                   3606 ;	USBHost.c:561: if (HIDdevice[hiddevice].type == REPORT_USAGE_MOUSE) {
      002571 88 82            [24] 3607 	mov	dpl,r0
      002573 8A 83            [24] 3608 	mov	dph,r2
      002575 E0               [24] 3609 	movx	a,@dptr
      002576 F8               [12] 3610 	mov	r0,a
      002577 A3               [24] 3611 	inc	dptr
      002578 E0               [24] 3612 	movx	a,@dptr
      002579 FA               [12] 3613 	mov	r2,a
      00257A A3               [24] 3614 	inc	dptr
      00257B E0               [24] 3615 	movx	a,@dptr
      00257C FE               [12] 3616 	mov	r6,a
      00257D A3               [24] 3617 	inc	dptr
      00257E E0               [24] 3618 	movx	a,@dptr
      00257F FD               [12] 3619 	mov	r5,a
      002580 B8 02 31         [24] 3620 	cjne	r0,#0x02,00111$
      002583 BA 00 2E         [24] 3621 	cjne	r2,#0x00,00111$
      002586 BE 00 2B         [24] 3622 	cjne	r6,#0x00,00111$
      002589 BD 00 28         [24] 3623 	cjne	r5,#0x00,00111$
                                   3624 ;	USBHost.c:562: mouse_write(RxBuffer[0]); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
      00258C 90 00 00         [24] 3625 	mov	dptr,#_RxBuffer
      00258F E0               [24] 3626 	movx	a,@dptr
      002590 F5 82            [12] 3627 	mov	dpl,a
      002592 C0 07            [24] 3628 	push	ar7
      002594 12 02 C2         [24] 3629 	lcall	_mouse_write
                                   3630 ;	USBHost.c:563: mouse_write(RxBuffer[1]); // byte 1: ΔX (signed)
      002597 90 00 01         [24] 3631 	mov	dptr,#(_RxBuffer + 0x0001)
      00259A E0               [24] 3632 	movx	a,@dptr
      00259B F5 82            [12] 3633 	mov	dpl,a
      00259D 12 02 C2         [24] 3634 	lcall	_mouse_write
                                   3635 ;	USBHost.c:564: mouse_write(RxBuffer[2]); // byte 2: ΔY (signed)
      0025A0 90 00 02         [24] 3636 	mov	dptr,#(_RxBuffer + 0x0002)
      0025A3 E0               [24] 3637 	movx	a,@dptr
      0025A4 F5 82            [12] 3638 	mov	dpl,a
      0025A6 12 02 C2         [24] 3639 	lcall	_mouse_write
                                   3640 ;	USBHost.c:565: mouse_write(RxBuffer[3]); // byte 3: ΔWheel (signed)
      0025A9 90 00 03         [24] 3641 	mov	dptr,#(_RxBuffer + 0x0003)
      0025AC E0               [24] 3642 	movx	a,@dptr
      0025AD F5 82            [12] 3643 	mov	dpl,a
      0025AF 12 02 C2         [24] 3644 	lcall	_mouse_write
      0025B2 D0 07            [24] 3645 	pop	ar7
      0025B4                       3646 00111$:
                                   3647 ;	USBHost.c:546: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      0025B4 0F               [12] 3648 	inc	r7
      0025B5 BF 08 00         [24] 3649 	cjne	r7,#0x08,00147$
      0025B8                       3650 00147$:
      0025B8 50 03            [24] 3651 	jnc	00148$
      0025BA 02 24 1F         [24] 3652 	ljmp	00110$
      0025BD                       3653 00148$:
                                   3654 ;	USBHost.c:571: }
      0025BD 22               [24] 3655 	ret
                                   3656 ;------------------------------------------------------------
                                   3657 ;Allocation info for local variables in function 'parseHIDDeviceReport'
                                   3658 ;------------------------------------------------------------
                                   3659 ;sloc0                     Allocated with name '_parseHIDDeviceReport_sloc0_1_0'
                                   3660 ;sloc1                     Allocated with name '_parseHIDDeviceReport_sloc1_1_0'
                                   3661 ;sloc2                     Allocated with name '_parseHIDDeviceReport_sloc2_1_0'
                                   3662 ;sloc3                     Allocated with name '_parseHIDDeviceReport_sloc3_1_0'
                                   3663 ;sloc4                     Allocated with name '_parseHIDDeviceReport_sloc4_1_0'
                                   3664 ;sloc5                     Allocated with name '_parseHIDDeviceReport_sloc5_1_0'
                                   3665 ;sloc6                     Allocated with name '_parseHIDDeviceReport_sloc6_1_0'
                                   3666 ;length                    Allocated with name '_parseHIDDeviceReport_PARM_2'
                                   3667 ;CurrentDevive             Allocated with name '_parseHIDDeviceReport_PARM_3'
                                   3668 ;report                    Allocated with name '_parseHIDDeviceReport_report_65536_138'
                                   3669 ;i                         Allocated with name '_parseHIDDeviceReport_i_65536_139'
                                   3670 ;level                     Allocated with name '_parseHIDDeviceReport_level_65536_139'
                                   3671 ;isUsageSet                Allocated with name '_parseHIDDeviceReport_isUsageSet_65536_139'
                                   3672 ;j                         Allocated with name '_parseHIDDeviceReport_j_131072_140'
                                   3673 ;id                        Allocated with name '_parseHIDDeviceReport_id_131072_140'
                                   3674 ;size                      Allocated with name '_parseHIDDeviceReport_size_131072_140'
                                   3675 ;data                      Allocated with name '_parseHIDDeviceReport_data_131072_140'
                                   3676 ;vd                        Allocated with name '_parseHIDDeviceReport_vd_262144_144'
                                   3677 ;------------------------------------------------------------
                                   3678 ;	USBHost.c:573: void parseHIDDeviceReport(unsigned char __xdata *report, unsigned short length, unsigned char CurrentDevive)
                                   3679 ;	-----------------------------------------
                                   3680 ;	 function parseHIDDeviceReport
                                   3681 ;	-----------------------------------------
      0025BE                       3682 _parseHIDDeviceReport:
      0025BE AF 83            [24] 3683 	mov	r7,dph
      0025C0 E5 82            [12] 3684 	mov	a,dpl
      0025C2 90 0A 1B         [24] 3685 	mov	dptr,#_parseHIDDeviceReport_report_65536_138
      0025C5 F0               [24] 3686 	movx	@dptr,a
      0025C6 EF               [12] 3687 	mov	a,r7
      0025C7 A3               [24] 3688 	inc	dptr
      0025C8 F0               [24] 3689 	movx	@dptr,a
                                   3690 ;	USBHost.c:575: unsigned short i = 0;
      0025C9 90 0A 1D         [24] 3691 	mov	dptr,#_parseHIDDeviceReport_i_65536_139
      0025CC E4               [12] 3692 	clr	a
      0025CD F0               [24] 3693 	movx	@dptr,a
      0025CE A3               [24] 3694 	inc	dptr
      0025CF F0               [24] 3695 	movx	@dptr,a
                                   3696 ;	USBHost.c:576: unsigned char level = 0;
      0025D0 90 0A 1F         [24] 3697 	mov	dptr,#_parseHIDDeviceReport_level_65536_139
      0025D3 F0               [24] 3698 	movx	@dptr,a
                                   3699 ;	USBHost.c:577: unsigned char isUsageSet = 0;
      0025D4 90 0A 20         [24] 3700 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
      0025D7 F0               [24] 3701 	movx	@dptr,a
                                   3702 ;	USBHost.c:578: while(i < length)
      0025D8 90 0A 1A         [24] 3703 	mov	dptr,#_parseHIDDeviceReport_PARM_3
      0025DB E0               [24] 3704 	movx	a,@dptr
      0025DC 75 F0 08         [24] 3705 	mov	b,#0x08
      0025DF A4               [48] 3706 	mul	ab
      0025E0 24 B6            [12] 3707 	add	a,#_HIDdevice
      0025E2 FE               [12] 3708 	mov	r6,a
      0025E3 74 09            [12] 3709 	mov	a,#(_HIDdevice >> 8)
      0025E5 35 F0            [12] 3710 	addc	a,b
      0025E7 FF               [12] 3711 	mov	r7,a
      0025E8 90 0A 1B         [24] 3712 	mov	dptr,#_parseHIDDeviceReport_report_65536_138
      0025EB E0               [24] 3713 	movx	a,@dptr
      0025EC F5 3B            [12] 3714 	mov	_parseHIDDeviceReport_sloc4_1_0,a
      0025EE A3               [24] 3715 	inc	dptr
      0025EF E0               [24] 3716 	movx	a,@dptr
      0025F0 F5 3C            [12] 3717 	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),a
      0025F2 AA 3B            [24] 3718 	mov	r2,_parseHIDDeviceReport_sloc4_1_0
      0025F4 AB 3C            [24] 3719 	mov	r3,(_parseHIDDeviceReport_sloc4_1_0 + 1)
      0025F6 90 0A 18         [24] 3720 	mov	dptr,#_parseHIDDeviceReport_PARM_2
      0025F9 E0               [24] 3721 	movx	a,@dptr
      0025FA F5 39            [12] 3722 	mov	_parseHIDDeviceReport_sloc3_1_0,a
      0025FC A3               [24] 3723 	inc	dptr
      0025FD E0               [24] 3724 	movx	a,@dptr
      0025FE F5 3A            [12] 3725 	mov	(_parseHIDDeviceReport_sloc3_1_0 + 1),a
      002600                       3726 00151$:
      002600 90 0A 1D         [24] 3727 	mov	dptr,#_parseHIDDeviceReport_i_65536_139
      002603 E0               [24] 3728 	movx	a,@dptr
      002604 F5 35            [12] 3729 	mov	_parseHIDDeviceReport_sloc0_1_0,a
      002606 A3               [24] 3730 	inc	dptr
      002607 E0               [24] 3731 	movx	a,@dptr
      002608 F5 36            [12] 3732 	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),a
      00260A C3               [12] 3733 	clr	c
      00260B E5 35            [12] 3734 	mov	a,_parseHIDDeviceReport_sloc0_1_0
      00260D 95 39            [12] 3735 	subb	a,_parseHIDDeviceReport_sloc3_1_0
      00260F E5 36            [12] 3736 	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
      002611 95 3A            [12] 3737 	subb	a,(_parseHIDDeviceReport_sloc3_1_0 + 1)
      002613 40 01            [24] 3738 	jc	00304$
      002615 22               [24] 3739 	ret
      002616                       3740 00304$:
                                   3741 ;	USBHost.c:581: unsigned char id = report[i] & 0b11111100;
      002616 C0 06            [24] 3742 	push	ar6
      002618 C0 07            [24] 3743 	push	ar7
      00261A E5 35            [12] 3744 	mov	a,_parseHIDDeviceReport_sloc0_1_0
      00261C 25 3B            [12] 3745 	add	a,_parseHIDDeviceReport_sloc4_1_0
      00261E F5 82            [12] 3746 	mov	dpl,a
      002620 E5 36            [12] 3747 	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
      002622 35 3C            [12] 3748 	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
      002624 F5 83            [12] 3749 	mov	dph,a
      002626 E0               [24] 3750 	movx	a,@dptr
      002627 FF               [12] 3751 	mov	r7,a
      002628 90 0A 21         [24] 3752 	mov	dptr,#_parseHIDDeviceReport_id_131072_140
      00262B 74 FC            [12] 3753 	mov	a,#0xfc
      00262D 5F               [12] 3754 	anl	a,r7
      00262E F0               [24] 3755 	movx	@dptr,a
                                   3756 ;	USBHost.c:582: unsigned char size = report[i] & 0b00000011;
      00262F 74 03            [12] 3757 	mov	a,#0x03
      002631 5F               [12] 3758 	anl	a,r7
      002632 F5 35            [12] 3759 	mov	_parseHIDDeviceReport_sloc0_1_0,a
      002634 90 0A 22         [24] 3760 	mov	dptr,#_parseHIDDeviceReport_size_131072_140
      002637 F0               [24] 3761 	movx	@dptr,a
                                   3762 ;	USBHost.c:583: unsigned long data = 0;
      002638 90 0A 23         [24] 3763 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      00263B E4               [12] 3764 	clr	a
      00263C F0               [24] 3765 	movx	@dptr,a
      00263D A3               [24] 3766 	inc	dptr
      00263E F0               [24] 3767 	movx	@dptr,a
      00263F A3               [24] 3768 	inc	dptr
      002640 F0               [24] 3769 	movx	@dptr,a
      002641 A3               [24] 3770 	inc	dptr
      002642 F0               [24] 3771 	movx	@dptr,a
                                   3772 ;	USBHost.c:584: if(size == 3) size++;
      002643 74 03            [12] 3773 	mov	a,#0x03
      002645 B5 35 02         [24] 3774 	cjne	a,_parseHIDDeviceReport_sloc0_1_0,00305$
      002648 80 06            [24] 3775 	sjmp	00306$
      00264A                       3776 00305$:
      00264A D0 07            [24] 3777 	pop	ar7
      00264C D0 06            [24] 3778 	pop	ar6
      00264E 80 0B            [24] 3779 	sjmp	00169$
      002650                       3780 00306$:
      002650 D0 07            [24] 3781 	pop	ar7
      002652 D0 06            [24] 3782 	pop	ar6
      002654 90 0A 22         [24] 3783 	mov	dptr,#_parseHIDDeviceReport_size_131072_140
      002657 E5 35            [12] 3784 	mov	a,_parseHIDDeviceReport_sloc0_1_0
      002659 04               [12] 3785 	inc	a
      00265A F0               [24] 3786 	movx	@dptr,a
                                   3787 ;	USBHost.c:585: for(j = 0; j < size; j++)
      00265B                       3788 00169$:
      00265B 90 0A 1D         [24] 3789 	mov	dptr,#_parseHIDDeviceReport_i_65536_139
      00265E E0               [24] 3790 	movx	a,@dptr
      00265F F5 35            [12] 3791 	mov	_parseHIDDeviceReport_sloc0_1_0,a
      002661 A3               [24] 3792 	inc	dptr
      002662 E0               [24] 3793 	movx	a,@dptr
      002663 F5 36            [12] 3794 	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),a
      002665 90 0A 22         [24] 3795 	mov	dptr,#_parseHIDDeviceReport_size_131072_140
      002668 E0               [24] 3796 	movx	a,@dptr
      002669 F5 37            [12] 3797 	mov	_parseHIDDeviceReport_sloc1_1_0,a
      00266B 75 38 00         [24] 3798 	mov	_parseHIDDeviceReport_sloc2_1_0,#0x00
      00266E                       3799 00155$:
      00266E C3               [12] 3800 	clr	c
      00266F E5 38            [12] 3801 	mov	a,_parseHIDDeviceReport_sloc2_1_0
      002671 95 37            [12] 3802 	subb	a,_parseHIDDeviceReport_sloc1_1_0
      002673 50 5B            [24] 3803 	jnc	00103$
                                   3804 ;	USBHost.c:586: data |= ((unsigned long)report[i + 1 + j]) << (j * 8);
      002675 C0 06            [24] 3805 	push	ar6
      002677 C0 07            [24] 3806 	push	ar7
      002679 AE 35            [24] 3807 	mov	r6,_parseHIDDeviceReport_sloc0_1_0
      00267B AF 36            [24] 3808 	mov	r7,(_parseHIDDeviceReport_sloc0_1_0 + 1)
      00267D 0E               [12] 3809 	inc	r6
      00267E BE 00 01         [24] 3810 	cjne	r6,#0x00,00308$
      002681 0F               [12] 3811 	inc	r7
      002682                       3812 00308$:
      002682 A8 38            [24] 3813 	mov	r0,_parseHIDDeviceReport_sloc2_1_0
      002684 79 00            [12] 3814 	mov	r1,#0x00
      002686 E8               [12] 3815 	mov	a,r0
      002687 2E               [12] 3816 	add	a,r6
      002688 FE               [12] 3817 	mov	r6,a
      002689 E9               [12] 3818 	mov	a,r1
      00268A 3F               [12] 3819 	addc	a,r7
      00268B FF               [12] 3820 	mov	r7,a
      00268C EE               [12] 3821 	mov	a,r6
      00268D 2A               [12] 3822 	add	a,r2
      00268E F5 82            [12] 3823 	mov	dpl,a
      002690 EF               [12] 3824 	mov	a,r7
      002691 3B               [12] 3825 	addc	a,r3
      002692 F5 83            [12] 3826 	mov	dph,a
      002694 E0               [24] 3827 	movx	a,@dptr
      002695 F8               [12] 3828 	mov	r0,a
      002696 E4               [12] 3829 	clr	a
      002697 F9               [12] 3830 	mov	r1,a
      002698 FE               [12] 3831 	mov	r6,a
      002699 FF               [12] 3832 	mov	r7,a
      00269A E5 38            [12] 3833 	mov	a,_parseHIDDeviceReport_sloc2_1_0
      00269C C4               [12] 3834 	swap	a
      00269D 03               [12] 3835 	rr	a
      00269E 54 F8            [12] 3836 	anl	a,#0xf8
      0026A0 FD               [12] 3837 	mov	r5,a
      0026A1 8D F0            [24] 3838 	mov	b,r5
      0026A3 05 F0            [12] 3839 	inc	b
      0026A5 80 0C            [24] 3840 	sjmp	00310$
      0026A7                       3841 00309$:
      0026A7 E8               [12] 3842 	mov	a,r0
      0026A8 28               [12] 3843 	add	a,r0
      0026A9 F8               [12] 3844 	mov	r0,a
      0026AA E9               [12] 3845 	mov	a,r1
      0026AB 33               [12] 3846 	rlc	a
      0026AC F9               [12] 3847 	mov	r1,a
      0026AD EE               [12] 3848 	mov	a,r6
      0026AE 33               [12] 3849 	rlc	a
      0026AF FE               [12] 3850 	mov	r6,a
      0026B0 EF               [12] 3851 	mov	a,r7
      0026B1 33               [12] 3852 	rlc	a
      0026B2 FF               [12] 3853 	mov	r7,a
      0026B3                       3854 00310$:
      0026B3 D5 F0 F1         [24] 3855 	djnz	b,00309$
      0026B6 90 0A 23         [24] 3856 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      0026B9 E0               [24] 3857 	movx	a,@dptr
      0026BA 48               [12] 3858 	orl	a,r0
      0026BB F0               [24] 3859 	movx	@dptr,a
      0026BC A3               [24] 3860 	inc	dptr
      0026BD E0               [24] 3861 	movx	a,@dptr
      0026BE 49               [12] 3862 	orl	a,r1
      0026BF F0               [24] 3863 	movx	@dptr,a
      0026C0 A3               [24] 3864 	inc	dptr
      0026C1 E0               [24] 3865 	movx	a,@dptr
      0026C2 4E               [12] 3866 	orl	a,r6
      0026C3 F0               [24] 3867 	movx	@dptr,a
      0026C4 A3               [24] 3868 	inc	dptr
      0026C5 E0               [24] 3869 	movx	a,@dptr
      0026C6 4F               [12] 3870 	orl	a,r7
      0026C7 F0               [24] 3871 	movx	@dptr,a
                                   3872 ;	USBHost.c:585: for(j = 0; j < size; j++)
      0026C8 05 38            [12] 3873 	inc	_parseHIDDeviceReport_sloc2_1_0
      0026CA D0 07            [24] 3874 	pop	ar7
      0026CC D0 06            [24] 3875 	pop	ar6
      0026CE 80 9E            [24] 3876 	sjmp	00155$
      0026D0                       3877 00103$:
                                   3878 ;	USBHost.c:587: for(j = 0; j < level - (id == REPORT_COLLECTION_END ? 1 : 0); j++)
      0026D0 90 0A 1F         [24] 3879 	mov	dptr,#_parseHIDDeviceReport_level_65536_139
      0026D3 E0               [24] 3880 	movx	a,@dptr
      0026D4 FD               [12] 3881 	mov	r5,a
      0026D5 90 0A 21         [24] 3882 	mov	dptr,#_parseHIDDeviceReport_id_131072_140
      0026D8 E0               [24] 3883 	movx	a,@dptr
      0026D9 FC               [12] 3884 	mov	r4,a
      0026DA E4               [12] 3885 	clr	a
      0026DB BC C0 01         [24] 3886 	cjne	r4,#0xc0,00311$
      0026DE 04               [12] 3887 	inc	a
      0026DF                       3888 00311$:
      0026DF F5 38            [12] 3889 	mov	_parseHIDDeviceReport_sloc2_1_0,a
      0026E1 79 00            [12] 3890 	mov	r1,#0x00
      0026E3                       3891 00158$:
      0026E3 8D 35            [24] 3892 	mov	_parseHIDDeviceReport_sloc0_1_0,r5
      0026E5 75 36 00         [24] 3893 	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),#0x00
      0026E8 E5 38            [12] 3894 	mov	a,_parseHIDDeviceReport_sloc2_1_0
      0026EA 60 08            [24] 3895 	jz	00162$
      0026EC 75 3D 01         [24] 3896 	mov	_parseHIDDeviceReport_sloc5_1_0,#0x01
      0026EF 75 3E 00         [24] 3897 	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),#0x00
      0026F2 80 05            [24] 3898 	sjmp	00163$
      0026F4                       3899 00162$:
      0026F4 E4               [12] 3900 	clr	a
      0026F5 F5 3D            [12] 3901 	mov	_parseHIDDeviceReport_sloc5_1_0,a
      0026F7 F5 3E            [12] 3902 	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),a
      0026F9                       3903 00163$:
      0026F9 C0 06            [24] 3904 	push	ar6
      0026FB C0 07            [24] 3905 	push	ar7
      0026FD E5 35            [12] 3906 	mov	a,_parseHIDDeviceReport_sloc0_1_0
      0026FF C3               [12] 3907 	clr	c
      002700 95 3D            [12] 3908 	subb	a,_parseHIDDeviceReport_sloc5_1_0
      002702 F8               [12] 3909 	mov	r0,a
      002703 E5 36            [12] 3910 	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
      002705 95 3E            [12] 3911 	subb	a,(_parseHIDDeviceReport_sloc5_1_0 + 1)
      002707 FF               [12] 3912 	mov	r7,a
      002708 89 04            [24] 3913 	mov	ar4,r1
      00270A 7E 00            [12] 3914 	mov	r6,#0x00
      00270C C3               [12] 3915 	clr	c
      00270D EC               [12] 3916 	mov	a,r4
      00270E 98               [12] 3917 	subb	a,r0
      00270F EE               [12] 3918 	mov	a,r6
      002710 64 80            [12] 3919 	xrl	a,#0x80
      002712 8F F0            [24] 3920 	mov	b,r7
      002714 63 F0 80         [24] 3921 	xrl	b,#0x80
      002717 95 F0            [12] 3922 	subb	a,b
      002719 D0 07            [24] 3923 	pop	ar7
      00271B D0 06            [24] 3924 	pop	ar6
      00271D 50 30            [24] 3925 	jnc	00104$
                                   3926 ;	USBHost.c:588: DEBUG_OUT("    ");
      00271F C0 07            [24] 3927 	push	ar7
      002721 C0 06            [24] 3928 	push	ar6
      002723 C0 05            [24] 3929 	push	ar5
      002725 C0 03            [24] 3930 	push	ar3
      002727 C0 02            [24] 3931 	push	ar2
      002729 C0 01            [24] 3932 	push	ar1
      00272B 74 E9            [12] 3933 	mov	a,#___str_14
      00272D C0 E0            [24] 3934 	push	acc
      00272F 74 4D            [12] 3935 	mov	a,#(___str_14 >> 8)
      002731 C0 E0            [24] 3936 	push	acc
      002733 74 80            [12] 3937 	mov	a,#0x80
      002735 C0 E0            [24] 3938 	push	acc
      002737 12 41 F8         [24] 3939 	lcall	_printf
      00273A 15 81            [12] 3940 	dec	sp
      00273C 15 81            [12] 3941 	dec	sp
      00273E 15 81            [12] 3942 	dec	sp
      002740 D0 01            [24] 3943 	pop	ar1
      002742 D0 02            [24] 3944 	pop	ar2
      002744 D0 03            [24] 3945 	pop	ar3
      002746 D0 05            [24] 3946 	pop	ar5
      002748 D0 06            [24] 3947 	pop	ar6
      00274A D0 07            [24] 3948 	pop	ar7
                                   3949 ;	USBHost.c:587: for(j = 0; j < level - (id == REPORT_COLLECTION_END ? 1 : 0); j++)
      00274C 09               [12] 3950 	inc	r1
      00274D 80 94            [24] 3951 	sjmp	00158$
      00274F                       3952 00104$:
                                   3953 ;	USBHost.c:589: switch(id)
      00274F 90 0A 21         [24] 3954 	mov	dptr,#_parseHIDDeviceReport_id_131072_140
      002752 E0               [24] 3955 	movx	a,@dptr
      002753 FD               [12] 3956 	mov	r5,a
      002754 BD 04 02         [24] 3957 	cjne	r5,#0x04,00315$
      002757 80 63            [24] 3958 	sjmp	00105$
      002759                       3959 00315$:
      002759 BD 08 03         [24] 3960 	cjne	r5,#0x08,00316$
      00275C 02 29 9C         [24] 3961 	ljmp	00113$
      00275F                       3962 00316$:
      00275F BD 14 03         [24] 3963 	cjne	r5,#0x14,00317$
      002762 02 2D 45         [24] 3964 	ljmp	00134$
      002765                       3965 00317$:
      002765 BD 18 03         [24] 3966 	cjne	r5,#0x18,00318$
      002768 02 2E 2D         [24] 3967 	ljmp	00138$
      00276B                       3968 00318$:
      00276B BD 24 03         [24] 3969 	cjne	r5,#0x24,00319$
      00276E 02 2D 7F         [24] 3970 	ljmp	00135$
      002771                       3971 00319$:
      002771 BD 28 03         [24] 3972 	cjne	r5,#0x28,00320$
      002774 02 2E 67         [24] 3973 	ljmp	00139$
      002777                       3974 00320$:
      002777 BD 34 03         [24] 3975 	cjne	r5,#0x34,00321$
      00277A 02 2D B9         [24] 3976 	ljmp	00136$
      00277D                       3977 00321$:
      00277D BD 44 03         [24] 3978 	cjne	r5,#0x44,00322$
      002780 02 2D F3         [24] 3979 	ljmp	00137$
      002783                       3980 00322$:
      002783 BD 64 03         [24] 3981 	cjne	r5,#0x64,00323$
      002786 02 2F 22         [24] 3982 	ljmp	00142$
      002789                       3983 00323$:
      002789 BD 74 03         [24] 3984 	cjne	r5,#0x74,00324$
      00278C 02 30 0A         [24] 3985 	ljmp	00146$
      00278F                       3986 00324$:
      00278F BD 80 03         [24] 3987 	cjne	r5,#0x80,00325$
      002792 02 2F 5C         [24] 3988 	ljmp	00143$
      002795                       3989 00325$:
      002795 BD 84 03         [24] 3990 	cjne	r5,#0x84,00326$
      002798 02 30 44         [24] 3991 	ljmp	00147$
      00279B                       3992 00326$:
      00279B BD 90 03         [24] 3993 	cjne	r5,#0x90,00327$
      00279E 02 2F 96         [24] 3994 	ljmp	00144$
      0027A1                       3995 00327$:
      0027A1 BD 94 03         [24] 3996 	cjne	r5,#0x94,00328$
      0027A4 02 30 7E         [24] 3997 	ljmp	00148$
      0027A7                       3998 00328$:
      0027A7 BD A0 03         [24] 3999 	cjne	r5,#0xa0,00329$
      0027AA 02 2E A1         [24] 4000 	ljmp	00140$
      0027AD                       4001 00329$:
      0027AD BD B0 03         [24] 4002 	cjne	r5,#0xb0,00330$
      0027B0 02 2F D0         [24] 4003 	ljmp	00145$
      0027B3                       4004 00330$:
      0027B3 BD C0 03         [24] 4005 	cjne	r5,#0xc0,00331$
      0027B6 02 2E E2         [24] 4006 	ljmp	00141$
      0027B9                       4007 00331$:
      0027B9 02 30 B7         [24] 4008 	ljmp	00149$
                                   4009 ;	USBHost.c:591: case REPORT_USAGE_PAGE:    //todo clean up defines (case)
      0027BC                       4010 00105$:
                                   4011 ;	USBHost.c:593: unsigned long vd = data < REPORT_USAGE_PAGE_VENDOR ? data : REPORT_USAGE_PAGE_VENDOR;
      0027BC 90 0A 23         [24] 4012 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      0027BF E0               [24] 4013 	movx	a,@dptr
      0027C0 F5 3F            [12] 4014 	mov	_parseHIDDeviceReport_sloc6_1_0,a
      0027C2 A3               [24] 4015 	inc	dptr
      0027C3 E0               [24] 4016 	movx	a,@dptr
      0027C4 F5 40            [12] 4017 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
      0027C6 A3               [24] 4018 	inc	dptr
      0027C7 E0               [24] 4019 	movx	a,@dptr
      0027C8 F5 41            [12] 4020 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
      0027CA A3               [24] 4021 	inc	dptr
      0027CB E0               [24] 4022 	movx	a,@dptr
      0027CC F5 42            [12] 4023 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
      0027CE C3               [12] 4024 	clr	c
      0027CF E5 40            [12] 4025 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      0027D1 94 FF            [12] 4026 	subb	a,#0xff
      0027D3 E5 41            [12] 4027 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
      0027D5 94 00            [12] 4028 	subb	a,#0x00
      0027D7 E5 42            [12] 4029 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
      0027D9 94 00            [12] 4030 	subb	a,#0x00
      0027DB 40 0A            [24] 4031 	jc	00165$
      0027DD E4               [12] 4032 	clr	a
      0027DE F5 3F            [12] 4033 	mov	_parseHIDDeviceReport_sloc6_1_0,a
      0027E0 75 40 FF         [24] 4034 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),#0xff
      0027E3 F5 41            [12] 4035 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
      0027E5 F5 42            [12] 4036 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
      0027E7                       4037 00165$:
                                   4038 ;	USBHost.c:594: DEBUG_OUT("Usage page ");
      0027E7 C0 07            [24] 4039 	push	ar7
      0027E9 C0 06            [24] 4040 	push	ar6
      0027EB C0 03            [24] 4041 	push	ar3
      0027ED C0 02            [24] 4042 	push	ar2
      0027EF 74 EE            [12] 4043 	mov	a,#___str_15
      0027F1 C0 E0            [24] 4044 	push	acc
      0027F3 74 4D            [12] 4045 	mov	a,#(___str_15 >> 8)
      0027F5 C0 E0            [24] 4046 	push	acc
      0027F7 74 80            [12] 4047 	mov	a,#0x80
      0027F9 C0 E0            [24] 4048 	push	acc
      0027FB 12 41 F8         [24] 4049 	lcall	_printf
      0027FE 15 81            [12] 4050 	dec	sp
      002800 15 81            [12] 4051 	dec	sp
      002802 15 81            [12] 4052 	dec	sp
      002804 D0 02            [24] 4053 	pop	ar2
      002806 D0 03            [24] 4054 	pop	ar3
      002808 D0 06            [24] 4055 	pop	ar6
      00280A D0 07            [24] 4056 	pop	ar7
                                   4057 ;	USBHost.c:595: switch(vd)
      00280C 74 01            [12] 4058 	mov	a,#0x01
      00280E B5 3F 0D         [24] 4059 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00333$
      002811 14               [12] 4060 	dec	a
      002812 B5 40 09         [24] 4061 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00333$
      002815 B5 41 06         [24] 4062 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00333$
      002818 B5 42 03         [24] 4063 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00333$
      00281B 02 28 DD         [24] 4064 	ljmp	00109$
      00281E                       4065 00333$:
      00281E 74 07            [12] 4066 	mov	a,#0x07
      002820 B5 3F 0C         [24] 4067 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00334$
      002823 E4               [12] 4068 	clr	a
      002824 B5 40 08         [24] 4069 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00334$
      002827 B5 41 05         [24] 4070 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00334$
      00282A B5 42 02         [24] 4071 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00334$
      00282D 80 5E            [24] 4072 	sjmp	00107$
      00282F                       4073 00334$:
      00282F 74 08            [12] 4074 	mov	a,#0x08
      002831 B5 3F 0C         [24] 4075 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00335$
      002834 E4               [12] 4076 	clr	a
      002835 B5 40 08         [24] 4077 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00335$
      002838 B5 41 05         [24] 4078 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00335$
      00283B B5 42 02         [24] 4079 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00335$
      00283E 80 25            [24] 4080 	sjmp	00106$
      002840                       4081 00335$:
      002840 74 09            [12] 4082 	mov	a,#0x09
      002842 B5 3F 0C         [24] 4083 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00336$
      002845 E4               [12] 4084 	clr	a
      002846 B5 40 08         [24] 4085 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00336$
      002849 B5 41 05         [24] 4086 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00336$
      00284C B5 42 02         [24] 4087 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00336$
      00284F 80 64            [24] 4088 	sjmp	00108$
      002851                       4089 00336$:
      002851 E4               [12] 4090 	clr	a
      002852 B5 3F 0D         [24] 4091 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00337$
      002855 B5 41 0A         [24] 4092 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00337$
      002858 B5 42 07         [24] 4093 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00337$
      00285B F4               [12] 4094 	cpl	a
      00285C B5 40 03         [24] 4095 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00337$
      00285F 02 29 04         [24] 4096 	ljmp	00110$
      002862                       4097 00337$:
      002862 02 29 3D         [24] 4098 	ljmp	00111$
                                   4099 ;	USBHost.c:597: case REPORT_USAGE_PAGE_LEDS:
      002865                       4100 00106$:
                                   4101 ;	USBHost.c:598: DEBUG_OUT("LEDs");
      002865 C0 07            [24] 4102 	push	ar7
      002867 C0 06            [24] 4103 	push	ar6
      002869 C0 03            [24] 4104 	push	ar3
      00286B C0 02            [24] 4105 	push	ar2
      00286D 74 FA            [12] 4106 	mov	a,#___str_16
      00286F C0 E0            [24] 4107 	push	acc
      002871 74 4D            [12] 4108 	mov	a,#(___str_16 >> 8)
      002873 C0 E0            [24] 4109 	push	acc
      002875 74 80            [12] 4110 	mov	a,#0x80
      002877 C0 E0            [24] 4111 	push	acc
      002879 12 41 F8         [24] 4112 	lcall	_printf
      00287C 15 81            [12] 4113 	dec	sp
      00287E 15 81            [12] 4114 	dec	sp
      002880 15 81            [12] 4115 	dec	sp
      002882 D0 02            [24] 4116 	pop	ar2
      002884 D0 03            [24] 4117 	pop	ar3
      002886 D0 06            [24] 4118 	pop	ar6
      002888 D0 07            [24] 4119 	pop	ar7
                                   4120 ;	USBHost.c:599: break;
      00288A 02 29 74         [24] 4121 	ljmp	00112$
                                   4122 ;	USBHost.c:600: case REPORT_USAGE_PAGE_KEYBOARD:
      00288D                       4123 00107$:
                                   4124 ;	USBHost.c:601: DEBUG_OUT("Keyboard/Keypad");
      00288D C0 07            [24] 4125 	push	ar7
      00288F C0 06            [24] 4126 	push	ar6
      002891 C0 03            [24] 4127 	push	ar3
      002893 C0 02            [24] 4128 	push	ar2
      002895 74 FF            [12] 4129 	mov	a,#___str_17
      002897 C0 E0            [24] 4130 	push	acc
      002899 74 4D            [12] 4131 	mov	a,#(___str_17 >> 8)
      00289B C0 E0            [24] 4132 	push	acc
      00289D 74 80            [12] 4133 	mov	a,#0x80
      00289F C0 E0            [24] 4134 	push	acc
      0028A1 12 41 F8         [24] 4135 	lcall	_printf
      0028A4 15 81            [12] 4136 	dec	sp
      0028A6 15 81            [12] 4137 	dec	sp
      0028A8 15 81            [12] 4138 	dec	sp
      0028AA D0 02            [24] 4139 	pop	ar2
      0028AC D0 03            [24] 4140 	pop	ar3
      0028AE D0 06            [24] 4141 	pop	ar6
      0028B0 D0 07            [24] 4142 	pop	ar7
                                   4143 ;	USBHost.c:602: break;
      0028B2 02 29 74         [24] 4144 	ljmp	00112$
                                   4145 ;	USBHost.c:603: case REPORT_USAGE_PAGE_BUTTON:
      0028B5                       4146 00108$:
                                   4147 ;	USBHost.c:604: DEBUG_OUT("Button");
      0028B5 C0 07            [24] 4148 	push	ar7
      0028B7 C0 06            [24] 4149 	push	ar6
      0028B9 C0 03            [24] 4150 	push	ar3
      0028BB C0 02            [24] 4151 	push	ar2
      0028BD 74 0F            [12] 4152 	mov	a,#___str_18
      0028BF C0 E0            [24] 4153 	push	acc
      0028C1 74 4E            [12] 4154 	mov	a,#(___str_18 >> 8)
      0028C3 C0 E0            [24] 4155 	push	acc
      0028C5 74 80            [12] 4156 	mov	a,#0x80
      0028C7 C0 E0            [24] 4157 	push	acc
      0028C9 12 41 F8         [24] 4158 	lcall	_printf
      0028CC 15 81            [12] 4159 	dec	sp
      0028CE 15 81            [12] 4160 	dec	sp
      0028D0 15 81            [12] 4161 	dec	sp
      0028D2 D0 02            [24] 4162 	pop	ar2
      0028D4 D0 03            [24] 4163 	pop	ar3
      0028D6 D0 06            [24] 4164 	pop	ar6
      0028D8 D0 07            [24] 4165 	pop	ar7
                                   4166 ;	USBHost.c:605: break;
      0028DA 02 29 74         [24] 4167 	ljmp	00112$
                                   4168 ;	USBHost.c:606: case REPORT_USAGE_PAGE_GENERIC:
      0028DD                       4169 00109$:
                                   4170 ;	USBHost.c:607: DEBUG_OUT("generic desktop controls");
      0028DD C0 07            [24] 4171 	push	ar7
      0028DF C0 06            [24] 4172 	push	ar6
      0028E1 C0 03            [24] 4173 	push	ar3
      0028E3 C0 02            [24] 4174 	push	ar2
      0028E5 74 16            [12] 4175 	mov	a,#___str_19
      0028E7 C0 E0            [24] 4176 	push	acc
      0028E9 74 4E            [12] 4177 	mov	a,#(___str_19 >> 8)
      0028EB C0 E0            [24] 4178 	push	acc
      0028ED 74 80            [12] 4179 	mov	a,#0x80
      0028EF C0 E0            [24] 4180 	push	acc
      0028F1 12 41 F8         [24] 4181 	lcall	_printf
      0028F4 15 81            [12] 4182 	dec	sp
      0028F6 15 81            [12] 4183 	dec	sp
      0028F8 15 81            [12] 4184 	dec	sp
      0028FA D0 02            [24] 4185 	pop	ar2
      0028FC D0 03            [24] 4186 	pop	ar3
      0028FE D0 06            [24] 4187 	pop	ar6
      002900 D0 07            [24] 4188 	pop	ar7
                                   4189 ;	USBHost.c:608: break;
                                   4190 ;	USBHost.c:609: case REPORT_USAGE_PAGE_VENDOR:
      002902 80 70            [24] 4191 	sjmp	00112$
      002904                       4192 00110$:
                                   4193 ;	USBHost.c:610: DEBUG_OUT("vendor defined 0x%04lx", data);
      002904 C0 07            [24] 4194 	push	ar7
      002906 C0 06            [24] 4195 	push	ar6
      002908 C0 03            [24] 4196 	push	ar3
      00290A C0 02            [24] 4197 	push	ar2
      00290C 90 0A 23         [24] 4198 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      00290F E0               [24] 4199 	movx	a,@dptr
      002910 C0 E0            [24] 4200 	push	acc
      002912 A3               [24] 4201 	inc	dptr
      002913 E0               [24] 4202 	movx	a,@dptr
      002914 C0 E0            [24] 4203 	push	acc
      002916 A3               [24] 4204 	inc	dptr
      002917 E0               [24] 4205 	movx	a,@dptr
      002918 C0 E0            [24] 4206 	push	acc
      00291A A3               [24] 4207 	inc	dptr
      00291B E0               [24] 4208 	movx	a,@dptr
      00291C C0 E0            [24] 4209 	push	acc
      00291E 74 2F            [12] 4210 	mov	a,#___str_20
      002920 C0 E0            [24] 4211 	push	acc
      002922 74 4E            [12] 4212 	mov	a,#(___str_20 >> 8)
      002924 C0 E0            [24] 4213 	push	acc
      002926 74 80            [12] 4214 	mov	a,#0x80
      002928 C0 E0            [24] 4215 	push	acc
      00292A 12 41 F8         [24] 4216 	lcall	_printf
      00292D E5 81            [12] 4217 	mov	a,sp
      00292F 24 F9            [12] 4218 	add	a,#0xf9
      002931 F5 81            [12] 4219 	mov	sp,a
      002933 D0 02            [24] 4220 	pop	ar2
      002935 D0 03            [24] 4221 	pop	ar3
      002937 D0 06            [24] 4222 	pop	ar6
      002939 D0 07            [24] 4223 	pop	ar7
                                   4224 ;	USBHost.c:611: break;
                                   4225 ;	USBHost.c:612: default:
      00293B 80 37            [24] 4226 	sjmp	00112$
      00293D                       4227 00111$:
                                   4228 ;	USBHost.c:613: DEBUG_OUT("unknown 0x%02lx", data);
      00293D C0 07            [24] 4229 	push	ar7
      00293F C0 06            [24] 4230 	push	ar6
      002941 C0 03            [24] 4231 	push	ar3
      002943 C0 02            [24] 4232 	push	ar2
      002945 90 0A 23         [24] 4233 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002948 E0               [24] 4234 	movx	a,@dptr
      002949 C0 E0            [24] 4235 	push	acc
      00294B A3               [24] 4236 	inc	dptr
      00294C E0               [24] 4237 	movx	a,@dptr
      00294D C0 E0            [24] 4238 	push	acc
      00294F A3               [24] 4239 	inc	dptr
      002950 E0               [24] 4240 	movx	a,@dptr
      002951 C0 E0            [24] 4241 	push	acc
      002953 A3               [24] 4242 	inc	dptr
      002954 E0               [24] 4243 	movx	a,@dptr
      002955 C0 E0            [24] 4244 	push	acc
      002957 74 46            [12] 4245 	mov	a,#___str_21
      002959 C0 E0            [24] 4246 	push	acc
      00295B 74 4E            [12] 4247 	mov	a,#(___str_21 >> 8)
      00295D C0 E0            [24] 4248 	push	acc
      00295F 74 80            [12] 4249 	mov	a,#0x80
      002961 C0 E0            [24] 4250 	push	acc
      002963 12 41 F8         [24] 4251 	lcall	_printf
      002966 E5 81            [12] 4252 	mov	a,sp
      002968 24 F9            [12] 4253 	add	a,#0xf9
      00296A F5 81            [12] 4254 	mov	sp,a
      00296C D0 02            [24] 4255 	pop	ar2
      00296E D0 03            [24] 4256 	pop	ar3
      002970 D0 06            [24] 4257 	pop	ar6
      002972 D0 07            [24] 4258 	pop	ar7
                                   4259 ;	USBHost.c:614: }
      002974                       4260 00112$:
                                   4261 ;	USBHost.c:615: DEBUG_OUT("\n");
      002974 C0 07            [24] 4262 	push	ar7
      002976 C0 06            [24] 4263 	push	ar6
      002978 C0 03            [24] 4264 	push	ar3
      00297A C0 02            [24] 4265 	push	ar2
      00297C 74 E7            [12] 4266 	mov	a,#___str_13
      00297E C0 E0            [24] 4267 	push	acc
      002980 74 4D            [12] 4268 	mov	a,#(___str_13 >> 8)
      002982 C0 E0            [24] 4269 	push	acc
      002984 74 80            [12] 4270 	mov	a,#0x80
      002986 C0 E0            [24] 4271 	push	acc
      002988 12 41 F8         [24] 4272 	lcall	_printf
      00298B 15 81            [12] 4273 	dec	sp
      00298D 15 81            [12] 4274 	dec	sp
      00298F 15 81            [12] 4275 	dec	sp
      002991 D0 02            [24] 4276 	pop	ar2
      002993 D0 03            [24] 4277 	pop	ar3
      002995 D0 06            [24] 4278 	pop	ar6
      002997 D0 07            [24] 4279 	pop	ar7
                                   4280 ;	USBHost.c:617: break;
      002999 02 30 FE         [24] 4281 	ljmp	00150$
                                   4282 ;	USBHost.c:618: case REPORT_USAGE:
      00299C                       4283 00113$:
                                   4284 ;	USBHost.c:619: if (!isUsageSet){
      00299C 90 0A 20         [24] 4285 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
      00299F E0               [24] 4286 	movx	a,@dptr
      0029A0 70 55            [24] 4287 	jnz	00117$
                                   4288 ;	USBHost.c:620: if (data == REPORT_USAGE_MOUSE) flash_led(); // Подключена мышь.
      0029A2 90 0A 23         [24] 4289 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      0029A5 E0               [24] 4290 	movx	a,@dptr
      0029A6 F5 3F            [12] 4291 	mov	_parseHIDDeviceReport_sloc6_1_0,a
      0029A8 A3               [24] 4292 	inc	dptr
      0029A9 E0               [24] 4293 	movx	a,@dptr
      0029AA F5 40            [12] 4294 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
      0029AC A3               [24] 4295 	inc	dptr
      0029AD E0               [24] 4296 	movx	a,@dptr
      0029AE F5 41            [12] 4297 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
      0029B0 A3               [24] 4298 	inc	dptr
      0029B1 E0               [24] 4299 	movx	a,@dptr
      0029B2 F5 42            [12] 4300 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
      0029B4 74 02            [12] 4301 	mov	a,#0x02
      0029B6 B5 3F 0C         [24] 4302 	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00339$
      0029B9 E4               [12] 4303 	clr	a
      0029BA B5 40 08         [24] 4304 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00339$
      0029BD B5 41 05         [24] 4305 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00339$
      0029C0 B5 42 02         [24] 4306 	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00339$
      0029C3 80 02            [24] 4307 	sjmp	00340$
      0029C5                       4308 00339$:
      0029C5 80 13            [24] 4309 	sjmp	00115$
      0029C7                       4310 00340$:
      0029C7 C0 07            [24] 4311 	push	ar7
      0029C9 C0 06            [24] 4312 	push	ar6
      0029CB C0 03            [24] 4313 	push	ar3
      0029CD C0 02            [24] 4314 	push	ar2
      0029CF 12 02 B2         [24] 4315 	lcall	_flash_led
      0029D2 D0 02            [24] 4316 	pop	ar2
      0029D4 D0 03            [24] 4317 	pop	ar3
      0029D6 D0 06            [24] 4318 	pop	ar6
      0029D8 D0 07            [24] 4319 	pop	ar7
      0029DA                       4320 00115$:
                                   4321 ;	USBHost.c:621: HIDdevice[CurrentDevive].type = data;
      0029DA 8E 82            [24] 4322 	mov	dpl,r6
      0029DC 8F 83            [24] 4323 	mov	dph,r7
      0029DE A3               [24] 4324 	inc	dptr
      0029DF A3               [24] 4325 	inc	dptr
      0029E0 A3               [24] 4326 	inc	dptr
      0029E1 A3               [24] 4327 	inc	dptr
      0029E2 E5 3F            [12] 4328 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      0029E4 F0               [24] 4329 	movx	@dptr,a
      0029E5 E5 40            [12] 4330 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      0029E7 A3               [24] 4331 	inc	dptr
      0029E8 F0               [24] 4332 	movx	@dptr,a
      0029E9 E5 41            [12] 4333 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
      0029EB A3               [24] 4334 	inc	dptr
      0029EC F0               [24] 4335 	movx	@dptr,a
      0029ED E5 42            [12] 4336 	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
      0029EF A3               [24] 4337 	inc	dptr
      0029F0 F0               [24] 4338 	movx	@dptr,a
                                   4339 ;	USBHost.c:622: isUsageSet = 1;
      0029F1 90 0A 20         [24] 4340 	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
      0029F4 74 01            [12] 4341 	mov	a,#0x01
      0029F6 F0               [24] 4342 	movx	@dptr,a
      0029F7                       4343 00117$:
                                   4344 ;	USBHost.c:624: DEBUG_OUT("Usage ");
      0029F7 C0 07            [24] 4345 	push	ar7
      0029F9 C0 06            [24] 4346 	push	ar6
      0029FB C0 03            [24] 4347 	push	ar3
      0029FD C0 02            [24] 4348 	push	ar2
      0029FF 74 56            [12] 4349 	mov	a,#___str_22
      002A01 C0 E0            [24] 4350 	push	acc
      002A03 74 4E            [12] 4351 	mov	a,#(___str_22 >> 8)
      002A05 C0 E0            [24] 4352 	push	acc
      002A07 74 80            [12] 4353 	mov	a,#0x80
      002A09 C0 E0            [24] 4354 	push	acc
      002A0B 12 41 F8         [24] 4355 	lcall	_printf
      002A0E 15 81            [12] 4356 	dec	sp
      002A10 15 81            [12] 4357 	dec	sp
      002A12 15 81            [12] 4358 	dec	sp
      002A14 D0 02            [24] 4359 	pop	ar2
      002A16 D0 03            [24] 4360 	pop	ar3
      002A18 D0 06            [24] 4361 	pop	ar6
      002A1A D0 07            [24] 4362 	pop	ar7
                                   4363 ;	USBHost.c:625: switch(data)
      002A1C 90 0A 23         [24] 4364 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002A1F E0               [24] 4365 	movx	a,@dptr
      002A20 F5 3F            [12] 4366 	mov	_parseHIDDeviceReport_sloc6_1_0,a
      002A22 A3               [24] 4367 	inc	dptr
      002A23 E0               [24] 4368 	movx	a,@dptr
      002A24 F5 40            [12] 4369 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
      002A26 A3               [24] 4370 	inc	dptr
      002A27 E0               [24] 4371 	movx	a,@dptr
      002A28 F5 41            [12] 4372 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
      002A2A A3               [24] 4373 	inc	dptr
      002A2B E0               [24] 4374 	movx	a,@dptr
      002A2C F5 42            [12] 4375 	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
      002A2E C3               [12] 4376 	clr	c
      002A2F 74 38            [12] 4377 	mov	a,#0x38
      002A31 95 3F            [12] 4378 	subb	a,_parseHIDDeviceReport_sloc6_1_0
      002A33 E4               [12] 4379 	clr	a
      002A34 95 40            [12] 4380 	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
      002A36 E4               [12] 4381 	clr	a
      002A37 95 41            [12] 4382 	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
      002A39 E4               [12] 4383 	clr	a
      002A3A 95 42            [12] 4384 	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
      002A3C 50 03            [24] 4385 	jnc	00341$
      002A3E 02 2C F0         [24] 4386 	ljmp	00132$
      002A41                       4387 00341$:
      002A41 E5 3F            [12] 4388 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      002A43 24 0B            [12] 4389 	add	a,#(00342$-3-.)
      002A45 83               [24] 4390 	movc	a,@a+pc
      002A46 F5 82            [12] 4391 	mov	dpl,a
      002A48 E5 3F            [12] 4392 	mov	a,_parseHIDDeviceReport_sloc6_1_0
      002A4A 24 3D            [12] 4393 	add	a,#(00343$-3-.)
      002A4C 83               [24] 4394 	movc	a,@a+pc
      002A4D F5 83            [12] 4395 	mov	dph,a
      002A4F E4               [12] 4396 	clr	a
      002A50 73               [24] 4397 	jmp	@a+dptr
      002A51                       4398 00342$:
      002A51 C3                    4399 	.db	00118$
      002A52 EB                    4400 	.db	00119$
      002A53 13                    4401 	.db	00120$
      002A54 3B                    4402 	.db	00121$
      002A55 63                    4403 	.db	00122$
      002A56 8B                    4404 	.db	00123$
      002A57 B3                    4405 	.db	00124$
      002A58 DB                    4406 	.db	00125$
      002A59 03                    4407 	.db	00126$
      002A5A 2B                    4408 	.db	00127$
      002A5B F0                    4409 	.db	00132$
      002A5C F0                    4410 	.db	00132$
      002A5D F0                    4411 	.db	00132$
      002A5E F0                    4412 	.db	00132$
      002A5F F0                    4413 	.db	00132$
      002A60 F0                    4414 	.db	00132$
      002A61 F0                    4415 	.db	00132$
      002A62 F0                    4416 	.db	00132$
      002A63 F0                    4417 	.db	00132$
      002A64 F0                    4418 	.db	00132$
      002A65 F0                    4419 	.db	00132$
      002A66 F0                    4420 	.db	00132$
      002A67 F0                    4421 	.db	00132$
      002A68 F0                    4422 	.db	00132$
      002A69 F0                    4423 	.db	00132$
      002A6A F0                    4424 	.db	00132$
      002A6B F0                    4425 	.db	00132$
      002A6C F0                    4426 	.db	00132$
      002A6D F0                    4427 	.db	00132$
      002A6E F0                    4428 	.db	00132$
      002A6F F0                    4429 	.db	00132$
      002A70 F0                    4430 	.db	00132$
      002A71 F0                    4431 	.db	00132$
      002A72 F0                    4432 	.db	00132$
      002A73 F0                    4433 	.db	00132$
      002A74 F0                    4434 	.db	00132$
      002A75 F0                    4435 	.db	00132$
      002A76 F0                    4436 	.db	00132$
      002A77 F0                    4437 	.db	00132$
      002A78 F0                    4438 	.db	00132$
      002A79 F0                    4439 	.db	00132$
      002A7A F0                    4440 	.db	00132$
      002A7B F0                    4441 	.db	00132$
      002A7C F0                    4442 	.db	00132$
      002A7D F0                    4443 	.db	00132$
      002A7E F0                    4444 	.db	00132$
      002A7F F0                    4445 	.db	00132$
      002A80 F0                    4446 	.db	00132$
      002A81 53                    4447 	.db	00128$
      002A82 7B                    4448 	.db	00129$
      002A83 A2                    4449 	.db	00130$
      002A84 F0                    4450 	.db	00132$
      002A85 F0                    4451 	.db	00132$
      002A86 F0                    4452 	.db	00132$
      002A87 F0                    4453 	.db	00132$
      002A88 F0                    4454 	.db	00132$
      002A89 C9                    4455 	.db	00131$
      002A8A                       4456 00343$:
      002A8A 2A                    4457 	.db	00118$>>8
      002A8B 2A                    4458 	.db	00119$>>8
      002A8C 2B                    4459 	.db	00120$>>8
      002A8D 2B                    4460 	.db	00121$>>8
      002A8E 2B                    4461 	.db	00122$>>8
      002A8F 2B                    4462 	.db	00123$>>8
      002A90 2B                    4463 	.db	00124$>>8
      002A91 2B                    4464 	.db	00125$>>8
      002A92 2C                    4465 	.db	00126$>>8
      002A93 2C                    4466 	.db	00127$>>8
      002A94 2C                    4467 	.db	00132$>>8
      002A95 2C                    4468 	.db	00132$>>8
      002A96 2C                    4469 	.db	00132$>>8
      002A97 2C                    4470 	.db	00132$>>8
      002A98 2C                    4471 	.db	00132$>>8
      002A99 2C                    4472 	.db	00132$>>8
      002A9A 2C                    4473 	.db	00132$>>8
      002A9B 2C                    4474 	.db	00132$>>8
      002A9C 2C                    4475 	.db	00132$>>8
      002A9D 2C                    4476 	.db	00132$>>8
      002A9E 2C                    4477 	.db	00132$>>8
      002A9F 2C                    4478 	.db	00132$>>8
      002AA0 2C                    4479 	.db	00132$>>8
      002AA1 2C                    4480 	.db	00132$>>8
      002AA2 2C                    4481 	.db	00132$>>8
      002AA3 2C                    4482 	.db	00132$>>8
      002AA4 2C                    4483 	.db	00132$>>8
      002AA5 2C                    4484 	.db	00132$>>8
      002AA6 2C                    4485 	.db	00132$>>8
      002AA7 2C                    4486 	.db	00132$>>8
      002AA8 2C                    4487 	.db	00132$>>8
      002AA9 2C                    4488 	.db	00132$>>8
      002AAA 2C                    4489 	.db	00132$>>8
      002AAB 2C                    4490 	.db	00132$>>8
      002AAC 2C                    4491 	.db	00132$>>8
      002AAD 2C                    4492 	.db	00132$>>8
      002AAE 2C                    4493 	.db	00132$>>8
      002AAF 2C                    4494 	.db	00132$>>8
      002AB0 2C                    4495 	.db	00132$>>8
      002AB1 2C                    4496 	.db	00132$>>8
      002AB2 2C                    4497 	.db	00132$>>8
      002AB3 2C                    4498 	.db	00132$>>8
      002AB4 2C                    4499 	.db	00132$>>8
      002AB5 2C                    4500 	.db	00132$>>8
      002AB6 2C                    4501 	.db	00132$>>8
      002AB7 2C                    4502 	.db	00132$>>8
      002AB8 2C                    4503 	.db	00132$>>8
      002AB9 2C                    4504 	.db	00132$>>8
      002ABA 2C                    4505 	.db	00128$>>8
      002ABB 2C                    4506 	.db	00129$>>8
      002ABC 2C                    4507 	.db	00130$>>8
      002ABD 2C                    4508 	.db	00132$>>8
      002ABE 2C                    4509 	.db	00132$>>8
      002ABF 2C                    4510 	.db	00132$>>8
      002AC0 2C                    4511 	.db	00132$>>8
      002AC1 2C                    4512 	.db	00132$>>8
      002AC2 2C                    4513 	.db	00131$>>8
                                   4514 ;	USBHost.c:627: case REPORT_USAGE_UNKNOWN:
      002AC3                       4515 00118$:
                                   4516 ;	USBHost.c:628: DEBUG_OUT("Unknown");
      002AC3 C0 07            [24] 4517 	push	ar7
      002AC5 C0 06            [24] 4518 	push	ar6
      002AC7 C0 03            [24] 4519 	push	ar3
      002AC9 C0 02            [24] 4520 	push	ar2
      002ACB 74 5D            [12] 4521 	mov	a,#___str_23
      002ACD C0 E0            [24] 4522 	push	acc
      002ACF 74 4E            [12] 4523 	mov	a,#(___str_23 >> 8)
      002AD1 C0 E0            [24] 4524 	push	acc
      002AD3 74 80            [12] 4525 	mov	a,#0x80
      002AD5 C0 E0            [24] 4526 	push	acc
      002AD7 12 41 F8         [24] 4527 	lcall	_printf
      002ADA 15 81            [12] 4528 	dec	sp
      002ADC 15 81            [12] 4529 	dec	sp
      002ADE 15 81            [12] 4530 	dec	sp
      002AE0 D0 02            [24] 4531 	pop	ar2
      002AE2 D0 03            [24] 4532 	pop	ar3
      002AE4 D0 06            [24] 4533 	pop	ar6
      002AE6 D0 07            [24] 4534 	pop	ar7
                                   4535 ;	USBHost.c:629: break;
      002AE8 02 2D 1D         [24] 4536 	ljmp	00133$
                                   4537 ;	USBHost.c:630: case REPORT_USAGE_POINTER:
      002AEB                       4538 00119$:
                                   4539 ;	USBHost.c:631: DEBUG_OUT("Pointer");
      002AEB C0 07            [24] 4540 	push	ar7
      002AED C0 06            [24] 4541 	push	ar6
      002AEF C0 03            [24] 4542 	push	ar3
      002AF1 C0 02            [24] 4543 	push	ar2
      002AF3 74 65            [12] 4544 	mov	a,#___str_24
      002AF5 C0 E0            [24] 4545 	push	acc
      002AF7 74 4E            [12] 4546 	mov	a,#(___str_24 >> 8)
      002AF9 C0 E0            [24] 4547 	push	acc
      002AFB 74 80            [12] 4548 	mov	a,#0x80
      002AFD C0 E0            [24] 4549 	push	acc
      002AFF 12 41 F8         [24] 4550 	lcall	_printf
      002B02 15 81            [12] 4551 	dec	sp
      002B04 15 81            [12] 4552 	dec	sp
      002B06 15 81            [12] 4553 	dec	sp
      002B08 D0 02            [24] 4554 	pop	ar2
      002B0A D0 03            [24] 4555 	pop	ar3
      002B0C D0 06            [24] 4556 	pop	ar6
      002B0E D0 07            [24] 4557 	pop	ar7
                                   4558 ;	USBHost.c:632: break;
      002B10 02 2D 1D         [24] 4559 	ljmp	00133$
                                   4560 ;	USBHost.c:633: case REPORT_USAGE_MOUSE:
      002B13                       4561 00120$:
                                   4562 ;	USBHost.c:634: DEBUG_OUT("Mouse");
      002B13 C0 07            [24] 4563 	push	ar7
      002B15 C0 06            [24] 4564 	push	ar6
      002B17 C0 03            [24] 4565 	push	ar3
      002B19 C0 02            [24] 4566 	push	ar2
      002B1B 74 6D            [12] 4567 	mov	a,#___str_25
      002B1D C0 E0            [24] 4568 	push	acc
      002B1F 74 4E            [12] 4569 	mov	a,#(___str_25 >> 8)
      002B21 C0 E0            [24] 4570 	push	acc
      002B23 74 80            [12] 4571 	mov	a,#0x80
      002B25 C0 E0            [24] 4572 	push	acc
      002B27 12 41 F8         [24] 4573 	lcall	_printf
      002B2A 15 81            [12] 4574 	dec	sp
      002B2C 15 81            [12] 4575 	dec	sp
      002B2E 15 81            [12] 4576 	dec	sp
      002B30 D0 02            [24] 4577 	pop	ar2
      002B32 D0 03            [24] 4578 	pop	ar3
      002B34 D0 06            [24] 4579 	pop	ar6
      002B36 D0 07            [24] 4580 	pop	ar7
                                   4581 ;	USBHost.c:635: break;
      002B38 02 2D 1D         [24] 4582 	ljmp	00133$
                                   4583 ;	USBHost.c:636: case REPORT_USAGE_RESERVED:
      002B3B                       4584 00121$:
                                   4585 ;	USBHost.c:637: DEBUG_OUT("Reserved");
      002B3B C0 07            [24] 4586 	push	ar7
      002B3D C0 06            [24] 4587 	push	ar6
      002B3F C0 03            [24] 4588 	push	ar3
      002B41 C0 02            [24] 4589 	push	ar2
      002B43 74 73            [12] 4590 	mov	a,#___str_26
      002B45 C0 E0            [24] 4591 	push	acc
      002B47 74 4E            [12] 4592 	mov	a,#(___str_26 >> 8)
      002B49 C0 E0            [24] 4593 	push	acc
      002B4B 74 80            [12] 4594 	mov	a,#0x80
      002B4D C0 E0            [24] 4595 	push	acc
      002B4F 12 41 F8         [24] 4596 	lcall	_printf
      002B52 15 81            [12] 4597 	dec	sp
      002B54 15 81            [12] 4598 	dec	sp
      002B56 15 81            [12] 4599 	dec	sp
      002B58 D0 02            [24] 4600 	pop	ar2
      002B5A D0 03            [24] 4601 	pop	ar3
      002B5C D0 06            [24] 4602 	pop	ar6
      002B5E D0 07            [24] 4603 	pop	ar7
                                   4604 ;	USBHost.c:638: break;
      002B60 02 2D 1D         [24] 4605 	ljmp	00133$
                                   4606 ;	USBHost.c:639: case REPORT_USAGE_JOYSTICK:
      002B63                       4607 00122$:
                                   4608 ;	USBHost.c:640: DEBUG_OUT("Joystick");
      002B63 C0 07            [24] 4609 	push	ar7
      002B65 C0 06            [24] 4610 	push	ar6
      002B67 C0 03            [24] 4611 	push	ar3
      002B69 C0 02            [24] 4612 	push	ar2
      002B6B 74 7C            [12] 4613 	mov	a,#___str_27
      002B6D C0 E0            [24] 4614 	push	acc
      002B6F 74 4E            [12] 4615 	mov	a,#(___str_27 >> 8)
      002B71 C0 E0            [24] 4616 	push	acc
      002B73 74 80            [12] 4617 	mov	a,#0x80
      002B75 C0 E0            [24] 4618 	push	acc
      002B77 12 41 F8         [24] 4619 	lcall	_printf
      002B7A 15 81            [12] 4620 	dec	sp
      002B7C 15 81            [12] 4621 	dec	sp
      002B7E 15 81            [12] 4622 	dec	sp
      002B80 D0 02            [24] 4623 	pop	ar2
      002B82 D0 03            [24] 4624 	pop	ar3
      002B84 D0 06            [24] 4625 	pop	ar6
      002B86 D0 07            [24] 4626 	pop	ar7
                                   4627 ;	USBHost.c:641: break;
      002B88 02 2D 1D         [24] 4628 	ljmp	00133$
                                   4629 ;	USBHost.c:642: case REPORT_USAGE_GAMEPAD:
      002B8B                       4630 00123$:
                                   4631 ;	USBHost.c:643: DEBUG_OUT("Gamepad");
      002B8B C0 07            [24] 4632 	push	ar7
      002B8D C0 06            [24] 4633 	push	ar6
      002B8F C0 03            [24] 4634 	push	ar3
      002B91 C0 02            [24] 4635 	push	ar2
      002B93 74 85            [12] 4636 	mov	a,#___str_28
      002B95 C0 E0            [24] 4637 	push	acc
      002B97 74 4E            [12] 4638 	mov	a,#(___str_28 >> 8)
      002B99 C0 E0            [24] 4639 	push	acc
      002B9B 74 80            [12] 4640 	mov	a,#0x80
      002B9D C0 E0            [24] 4641 	push	acc
      002B9F 12 41 F8         [24] 4642 	lcall	_printf
      002BA2 15 81            [12] 4643 	dec	sp
      002BA4 15 81            [12] 4644 	dec	sp
      002BA6 15 81            [12] 4645 	dec	sp
      002BA8 D0 02            [24] 4646 	pop	ar2
      002BAA D0 03            [24] 4647 	pop	ar3
      002BAC D0 06            [24] 4648 	pop	ar6
      002BAE D0 07            [24] 4649 	pop	ar7
                                   4650 ;	USBHost.c:644: break;
      002BB0 02 2D 1D         [24] 4651 	ljmp	00133$
                                   4652 ;	USBHost.c:645: case REPORT_USAGE_KEYBOARD:
      002BB3                       4653 00124$:
                                   4654 ;	USBHost.c:646: DEBUG_OUT("Keyboard");
      002BB3 C0 07            [24] 4655 	push	ar7
      002BB5 C0 06            [24] 4656 	push	ar6
      002BB7 C0 03            [24] 4657 	push	ar3
      002BB9 C0 02            [24] 4658 	push	ar2
      002BBB 74 8D            [12] 4659 	mov	a,#___str_29
      002BBD C0 E0            [24] 4660 	push	acc
      002BBF 74 4E            [12] 4661 	mov	a,#(___str_29 >> 8)
      002BC1 C0 E0            [24] 4662 	push	acc
      002BC3 74 80            [12] 4663 	mov	a,#0x80
      002BC5 C0 E0            [24] 4664 	push	acc
      002BC7 12 41 F8         [24] 4665 	lcall	_printf
      002BCA 15 81            [12] 4666 	dec	sp
      002BCC 15 81            [12] 4667 	dec	sp
      002BCE 15 81            [12] 4668 	dec	sp
      002BD0 D0 02            [24] 4669 	pop	ar2
      002BD2 D0 03            [24] 4670 	pop	ar3
      002BD4 D0 06            [24] 4671 	pop	ar6
      002BD6 D0 07            [24] 4672 	pop	ar7
                                   4673 ;	USBHost.c:647: break;
      002BD8 02 2D 1D         [24] 4674 	ljmp	00133$
                                   4675 ;	USBHost.c:648: case REPORT_USAGE_KEYPAD:
      002BDB                       4676 00125$:
                                   4677 ;	USBHost.c:649: DEBUG_OUT("Keypad");
      002BDB C0 07            [24] 4678 	push	ar7
      002BDD C0 06            [24] 4679 	push	ar6
      002BDF C0 03            [24] 4680 	push	ar3
      002BE1 C0 02            [24] 4681 	push	ar2
      002BE3 74 96            [12] 4682 	mov	a,#___str_30
      002BE5 C0 E0            [24] 4683 	push	acc
      002BE7 74 4E            [12] 4684 	mov	a,#(___str_30 >> 8)
      002BE9 C0 E0            [24] 4685 	push	acc
      002BEB 74 80            [12] 4686 	mov	a,#0x80
      002BED C0 E0            [24] 4687 	push	acc
      002BEF 12 41 F8         [24] 4688 	lcall	_printf
      002BF2 15 81            [12] 4689 	dec	sp
      002BF4 15 81            [12] 4690 	dec	sp
      002BF6 15 81            [12] 4691 	dec	sp
      002BF8 D0 02            [24] 4692 	pop	ar2
      002BFA D0 03            [24] 4693 	pop	ar3
      002BFC D0 06            [24] 4694 	pop	ar6
      002BFE D0 07            [24] 4695 	pop	ar7
                                   4696 ;	USBHost.c:650: break;
      002C00 02 2D 1D         [24] 4697 	ljmp	00133$
                                   4698 ;	USBHost.c:651: case REPORT_USAGE_MULTI_AXIS:
      002C03                       4699 00126$:
                                   4700 ;	USBHost.c:652: DEBUG_OUT("Multi-Axis controller");
      002C03 C0 07            [24] 4701 	push	ar7
      002C05 C0 06            [24] 4702 	push	ar6
      002C07 C0 03            [24] 4703 	push	ar3
      002C09 C0 02            [24] 4704 	push	ar2
      002C0B 74 9D            [12] 4705 	mov	a,#___str_31
      002C0D C0 E0            [24] 4706 	push	acc
      002C0F 74 4E            [12] 4707 	mov	a,#(___str_31 >> 8)
      002C11 C0 E0            [24] 4708 	push	acc
      002C13 74 80            [12] 4709 	mov	a,#0x80
      002C15 C0 E0            [24] 4710 	push	acc
      002C17 12 41 F8         [24] 4711 	lcall	_printf
      002C1A 15 81            [12] 4712 	dec	sp
      002C1C 15 81            [12] 4713 	dec	sp
      002C1E 15 81            [12] 4714 	dec	sp
      002C20 D0 02            [24] 4715 	pop	ar2
      002C22 D0 03            [24] 4716 	pop	ar3
      002C24 D0 06            [24] 4717 	pop	ar6
      002C26 D0 07            [24] 4718 	pop	ar7
                                   4719 ;	USBHost.c:653: break;
      002C28 02 2D 1D         [24] 4720 	ljmp	00133$
                                   4721 ;	USBHost.c:654: case REPORT_USAGE_SYSTEM:
      002C2B                       4722 00127$:
                                   4723 ;	USBHost.c:655: DEBUG_OUT("Tablet system controls");
      002C2B C0 07            [24] 4724 	push	ar7
      002C2D C0 06            [24] 4725 	push	ar6
      002C2F C0 03            [24] 4726 	push	ar3
      002C31 C0 02            [24] 4727 	push	ar2
      002C33 74 B3            [12] 4728 	mov	a,#___str_32
      002C35 C0 E0            [24] 4729 	push	acc
      002C37 74 4E            [12] 4730 	mov	a,#(___str_32 >> 8)
      002C39 C0 E0            [24] 4731 	push	acc
      002C3B 74 80            [12] 4732 	mov	a,#0x80
      002C3D C0 E0            [24] 4733 	push	acc
      002C3F 12 41 F8         [24] 4734 	lcall	_printf
      002C42 15 81            [12] 4735 	dec	sp
      002C44 15 81            [12] 4736 	dec	sp
      002C46 15 81            [12] 4737 	dec	sp
      002C48 D0 02            [24] 4738 	pop	ar2
      002C4A D0 03            [24] 4739 	pop	ar3
      002C4C D0 06            [24] 4740 	pop	ar6
      002C4E D0 07            [24] 4741 	pop	ar7
                                   4742 ;	USBHost.c:656: break;
      002C50 02 2D 1D         [24] 4743 	ljmp	00133$
                                   4744 ;	USBHost.c:658: case REPORT_USAGE_X:
      002C53                       4745 00128$:
                                   4746 ;	USBHost.c:659: DEBUG_OUT("X");
      002C53 C0 07            [24] 4747 	push	ar7
      002C55 C0 06            [24] 4748 	push	ar6
      002C57 C0 03            [24] 4749 	push	ar3
      002C59 C0 02            [24] 4750 	push	ar2
      002C5B 74 CA            [12] 4751 	mov	a,#___str_33
      002C5D C0 E0            [24] 4752 	push	acc
      002C5F 74 4E            [12] 4753 	mov	a,#(___str_33 >> 8)
      002C61 C0 E0            [24] 4754 	push	acc
      002C63 74 80            [12] 4755 	mov	a,#0x80
      002C65 C0 E0            [24] 4756 	push	acc
      002C67 12 41 F8         [24] 4757 	lcall	_printf
      002C6A 15 81            [12] 4758 	dec	sp
      002C6C 15 81            [12] 4759 	dec	sp
      002C6E 15 81            [12] 4760 	dec	sp
      002C70 D0 02            [24] 4761 	pop	ar2
      002C72 D0 03            [24] 4762 	pop	ar3
      002C74 D0 06            [24] 4763 	pop	ar6
      002C76 D0 07            [24] 4764 	pop	ar7
                                   4765 ;	USBHost.c:660: break;
      002C78 02 2D 1D         [24] 4766 	ljmp	00133$
                                   4767 ;	USBHost.c:661: case REPORT_USAGE_Y:
      002C7B                       4768 00129$:
                                   4769 ;	USBHost.c:662: DEBUG_OUT("Y");
      002C7B C0 07            [24] 4770 	push	ar7
      002C7D C0 06            [24] 4771 	push	ar6
      002C7F C0 03            [24] 4772 	push	ar3
      002C81 C0 02            [24] 4773 	push	ar2
      002C83 74 CC            [12] 4774 	mov	a,#___str_34
      002C85 C0 E0            [24] 4775 	push	acc
      002C87 74 4E            [12] 4776 	mov	a,#(___str_34 >> 8)
      002C89 C0 E0            [24] 4777 	push	acc
      002C8B 74 80            [12] 4778 	mov	a,#0x80
      002C8D C0 E0            [24] 4779 	push	acc
      002C8F 12 41 F8         [24] 4780 	lcall	_printf
      002C92 15 81            [12] 4781 	dec	sp
      002C94 15 81            [12] 4782 	dec	sp
      002C96 15 81            [12] 4783 	dec	sp
      002C98 D0 02            [24] 4784 	pop	ar2
      002C9A D0 03            [24] 4785 	pop	ar3
      002C9C D0 06            [24] 4786 	pop	ar6
      002C9E D0 07            [24] 4787 	pop	ar7
                                   4788 ;	USBHost.c:663: break;
                                   4789 ;	USBHost.c:664: case REPORT_USAGE_Z:
      002CA0 80 7B            [24] 4790 	sjmp	00133$
      002CA2                       4791 00130$:
                                   4792 ;	USBHost.c:665: DEBUG_OUT("Z");
      002CA2 C0 07            [24] 4793 	push	ar7
      002CA4 C0 06            [24] 4794 	push	ar6
      002CA6 C0 03            [24] 4795 	push	ar3
      002CA8 C0 02            [24] 4796 	push	ar2
      002CAA 74 CE            [12] 4797 	mov	a,#___str_35
      002CAC C0 E0            [24] 4798 	push	acc
      002CAE 74 4E            [12] 4799 	mov	a,#(___str_35 >> 8)
      002CB0 C0 E0            [24] 4800 	push	acc
      002CB2 74 80            [12] 4801 	mov	a,#0x80
      002CB4 C0 E0            [24] 4802 	push	acc
      002CB6 12 41 F8         [24] 4803 	lcall	_printf
      002CB9 15 81            [12] 4804 	dec	sp
      002CBB 15 81            [12] 4805 	dec	sp
      002CBD 15 81            [12] 4806 	dec	sp
      002CBF D0 02            [24] 4807 	pop	ar2
      002CC1 D0 03            [24] 4808 	pop	ar3
      002CC3 D0 06            [24] 4809 	pop	ar6
      002CC5 D0 07            [24] 4810 	pop	ar7
                                   4811 ;	USBHost.c:666: break;
                                   4812 ;	USBHost.c:667: case REPORT_USAGE_WHEEL:
      002CC7 80 54            [24] 4813 	sjmp	00133$
      002CC9                       4814 00131$:
                                   4815 ;	USBHost.c:668: DEBUG_OUT("Wheel");
      002CC9 C0 07            [24] 4816 	push	ar7
      002CCB C0 06            [24] 4817 	push	ar6
      002CCD C0 03            [24] 4818 	push	ar3
      002CCF C0 02            [24] 4819 	push	ar2
      002CD1 74 D0            [12] 4820 	mov	a,#___str_36
      002CD3 C0 E0            [24] 4821 	push	acc
      002CD5 74 4E            [12] 4822 	mov	a,#(___str_36 >> 8)
      002CD7 C0 E0            [24] 4823 	push	acc
      002CD9 74 80            [12] 4824 	mov	a,#0x80
      002CDB C0 E0            [24] 4825 	push	acc
      002CDD 12 41 F8         [24] 4826 	lcall	_printf
      002CE0 15 81            [12] 4827 	dec	sp
      002CE2 15 81            [12] 4828 	dec	sp
      002CE4 15 81            [12] 4829 	dec	sp
      002CE6 D0 02            [24] 4830 	pop	ar2
      002CE8 D0 03            [24] 4831 	pop	ar3
      002CEA D0 06            [24] 4832 	pop	ar6
      002CEC D0 07            [24] 4833 	pop	ar7
                                   4834 ;	USBHost.c:669: break;
                                   4835 ;	USBHost.c:670: default:
      002CEE 80 2D            [24] 4836 	sjmp	00133$
      002CF0                       4837 00132$:
                                   4838 ;	USBHost.c:671: DEBUG_OUT("unknown 0x%02lx", data);
      002CF0 C0 07            [24] 4839 	push	ar7
      002CF2 C0 06            [24] 4840 	push	ar6
      002CF4 C0 03            [24] 4841 	push	ar3
      002CF6 C0 02            [24] 4842 	push	ar2
      002CF8 C0 3F            [24] 4843 	push	_parseHIDDeviceReport_sloc6_1_0
      002CFA C0 40            [24] 4844 	push	(_parseHIDDeviceReport_sloc6_1_0 + 1)
      002CFC C0 41            [24] 4845 	push	(_parseHIDDeviceReport_sloc6_1_0 + 2)
      002CFE C0 42            [24] 4846 	push	(_parseHIDDeviceReport_sloc6_1_0 + 3)
      002D00 74 46            [12] 4847 	mov	a,#___str_21
      002D02 C0 E0            [24] 4848 	push	acc
      002D04 74 4E            [12] 4849 	mov	a,#(___str_21 >> 8)
      002D06 C0 E0            [24] 4850 	push	acc
      002D08 74 80            [12] 4851 	mov	a,#0x80
      002D0A C0 E0            [24] 4852 	push	acc
      002D0C 12 41 F8         [24] 4853 	lcall	_printf
      002D0F E5 81            [12] 4854 	mov	a,sp
      002D11 24 F9            [12] 4855 	add	a,#0xf9
      002D13 F5 81            [12] 4856 	mov	sp,a
      002D15 D0 02            [24] 4857 	pop	ar2
      002D17 D0 03            [24] 4858 	pop	ar3
      002D19 D0 06            [24] 4859 	pop	ar6
      002D1B D0 07            [24] 4860 	pop	ar7
                                   4861 ;	USBHost.c:672: }
      002D1D                       4862 00133$:
                                   4863 ;	USBHost.c:673: DEBUG_OUT("\n");
      002D1D C0 07            [24] 4864 	push	ar7
      002D1F C0 06            [24] 4865 	push	ar6
      002D21 C0 03            [24] 4866 	push	ar3
      002D23 C0 02            [24] 4867 	push	ar2
      002D25 74 E7            [12] 4868 	mov	a,#___str_13
      002D27 C0 E0            [24] 4869 	push	acc
      002D29 74 4D            [12] 4870 	mov	a,#(___str_13 >> 8)
      002D2B C0 E0            [24] 4871 	push	acc
      002D2D 74 80            [12] 4872 	mov	a,#0x80
      002D2F C0 E0            [24] 4873 	push	acc
      002D31 12 41 F8         [24] 4874 	lcall	_printf
      002D34 15 81            [12] 4875 	dec	sp
      002D36 15 81            [12] 4876 	dec	sp
      002D38 15 81            [12] 4877 	dec	sp
      002D3A D0 02            [24] 4878 	pop	ar2
      002D3C D0 03            [24] 4879 	pop	ar3
      002D3E D0 06            [24] 4880 	pop	ar6
      002D40 D0 07            [24] 4881 	pop	ar7
                                   4882 ;	USBHost.c:674: break;
      002D42 02 30 FE         [24] 4883 	ljmp	00150$
                                   4884 ;	USBHost.c:675: case REPORT_LOCAL_MINIMUM:
      002D45                       4885 00134$:
                                   4886 ;	USBHost.c:676: DEBUG_OUT("Logical min %lu\n", data);
      002D45 C0 07            [24] 4887 	push	ar7
      002D47 C0 06            [24] 4888 	push	ar6
      002D49 C0 03            [24] 4889 	push	ar3
      002D4B C0 02            [24] 4890 	push	ar2
      002D4D 90 0A 23         [24] 4891 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002D50 E0               [24] 4892 	movx	a,@dptr
      002D51 C0 E0            [24] 4893 	push	acc
      002D53 A3               [24] 4894 	inc	dptr
      002D54 E0               [24] 4895 	movx	a,@dptr
      002D55 C0 E0            [24] 4896 	push	acc
      002D57 A3               [24] 4897 	inc	dptr
      002D58 E0               [24] 4898 	movx	a,@dptr
      002D59 C0 E0            [24] 4899 	push	acc
      002D5B A3               [24] 4900 	inc	dptr
      002D5C E0               [24] 4901 	movx	a,@dptr
      002D5D C0 E0            [24] 4902 	push	acc
      002D5F 74 D6            [12] 4903 	mov	a,#___str_37
      002D61 C0 E0            [24] 4904 	push	acc
      002D63 74 4E            [12] 4905 	mov	a,#(___str_37 >> 8)
      002D65 C0 E0            [24] 4906 	push	acc
      002D67 74 80            [12] 4907 	mov	a,#0x80
      002D69 C0 E0            [24] 4908 	push	acc
      002D6B 12 41 F8         [24] 4909 	lcall	_printf
      002D6E E5 81            [12] 4910 	mov	a,sp
      002D70 24 F9            [12] 4911 	add	a,#0xf9
      002D72 F5 81            [12] 4912 	mov	sp,a
      002D74 D0 02            [24] 4913 	pop	ar2
      002D76 D0 03            [24] 4914 	pop	ar3
      002D78 D0 06            [24] 4915 	pop	ar6
      002D7A D0 07            [24] 4916 	pop	ar7
                                   4917 ;	USBHost.c:677: break;
      002D7C 02 30 FE         [24] 4918 	ljmp	00150$
                                   4919 ;	USBHost.c:678: case REPORT_LOCAL_MAXIMUM:
      002D7F                       4920 00135$:
                                   4921 ;	USBHost.c:679: DEBUG_OUT("Logical max %lu\n", data);
      002D7F C0 07            [24] 4922 	push	ar7
      002D81 C0 06            [24] 4923 	push	ar6
      002D83 C0 03            [24] 4924 	push	ar3
      002D85 C0 02            [24] 4925 	push	ar2
      002D87 90 0A 23         [24] 4926 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002D8A E0               [24] 4927 	movx	a,@dptr
      002D8B C0 E0            [24] 4928 	push	acc
      002D8D A3               [24] 4929 	inc	dptr
      002D8E E0               [24] 4930 	movx	a,@dptr
      002D8F C0 E0            [24] 4931 	push	acc
      002D91 A3               [24] 4932 	inc	dptr
      002D92 E0               [24] 4933 	movx	a,@dptr
      002D93 C0 E0            [24] 4934 	push	acc
      002D95 A3               [24] 4935 	inc	dptr
      002D96 E0               [24] 4936 	movx	a,@dptr
      002D97 C0 E0            [24] 4937 	push	acc
      002D99 74 E7            [12] 4938 	mov	a,#___str_38
      002D9B C0 E0            [24] 4939 	push	acc
      002D9D 74 4E            [12] 4940 	mov	a,#(___str_38 >> 8)
      002D9F C0 E0            [24] 4941 	push	acc
      002DA1 74 80            [12] 4942 	mov	a,#0x80
      002DA3 C0 E0            [24] 4943 	push	acc
      002DA5 12 41 F8         [24] 4944 	lcall	_printf
      002DA8 E5 81            [12] 4945 	mov	a,sp
      002DAA 24 F9            [12] 4946 	add	a,#0xf9
      002DAC F5 81            [12] 4947 	mov	sp,a
      002DAE D0 02            [24] 4948 	pop	ar2
      002DB0 D0 03            [24] 4949 	pop	ar3
      002DB2 D0 06            [24] 4950 	pop	ar6
      002DB4 D0 07            [24] 4951 	pop	ar7
                                   4952 ;	USBHost.c:680: break;
      002DB6 02 30 FE         [24] 4953 	ljmp	00150$
                                   4954 ;	USBHost.c:681: case REPORT_PHYSICAL_MINIMUM:
      002DB9                       4955 00136$:
                                   4956 ;	USBHost.c:682: DEBUG_OUT("Physical min %lu\n", data);
      002DB9 C0 07            [24] 4957 	push	ar7
      002DBB C0 06            [24] 4958 	push	ar6
      002DBD C0 03            [24] 4959 	push	ar3
      002DBF C0 02            [24] 4960 	push	ar2
      002DC1 90 0A 23         [24] 4961 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002DC4 E0               [24] 4962 	movx	a,@dptr
      002DC5 C0 E0            [24] 4963 	push	acc
      002DC7 A3               [24] 4964 	inc	dptr
      002DC8 E0               [24] 4965 	movx	a,@dptr
      002DC9 C0 E0            [24] 4966 	push	acc
      002DCB A3               [24] 4967 	inc	dptr
      002DCC E0               [24] 4968 	movx	a,@dptr
      002DCD C0 E0            [24] 4969 	push	acc
      002DCF A3               [24] 4970 	inc	dptr
      002DD0 E0               [24] 4971 	movx	a,@dptr
      002DD1 C0 E0            [24] 4972 	push	acc
      002DD3 74 F8            [12] 4973 	mov	a,#___str_39
      002DD5 C0 E0            [24] 4974 	push	acc
      002DD7 74 4E            [12] 4975 	mov	a,#(___str_39 >> 8)
      002DD9 C0 E0            [24] 4976 	push	acc
      002DDB 74 80            [12] 4977 	mov	a,#0x80
      002DDD C0 E0            [24] 4978 	push	acc
      002DDF 12 41 F8         [24] 4979 	lcall	_printf
      002DE2 E5 81            [12] 4980 	mov	a,sp
      002DE4 24 F9            [12] 4981 	add	a,#0xf9
      002DE6 F5 81            [12] 4982 	mov	sp,a
      002DE8 D0 02            [24] 4983 	pop	ar2
      002DEA D0 03            [24] 4984 	pop	ar3
      002DEC D0 06            [24] 4985 	pop	ar6
      002DEE D0 07            [24] 4986 	pop	ar7
                                   4987 ;	USBHost.c:683: break;
      002DF0 02 30 FE         [24] 4988 	ljmp	00150$
                                   4989 ;	USBHost.c:684: case REPORT_PHYSICAL_MAXIMUM:
      002DF3                       4990 00137$:
                                   4991 ;	USBHost.c:685: DEBUG_OUT("Physical max %lu\n", data);
      002DF3 C0 07            [24] 4992 	push	ar7
      002DF5 C0 06            [24] 4993 	push	ar6
      002DF7 C0 03            [24] 4994 	push	ar3
      002DF9 C0 02            [24] 4995 	push	ar2
      002DFB 90 0A 23         [24] 4996 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002DFE E0               [24] 4997 	movx	a,@dptr
      002DFF C0 E0            [24] 4998 	push	acc
      002E01 A3               [24] 4999 	inc	dptr
      002E02 E0               [24] 5000 	movx	a,@dptr
      002E03 C0 E0            [24] 5001 	push	acc
      002E05 A3               [24] 5002 	inc	dptr
      002E06 E0               [24] 5003 	movx	a,@dptr
      002E07 C0 E0            [24] 5004 	push	acc
      002E09 A3               [24] 5005 	inc	dptr
      002E0A E0               [24] 5006 	movx	a,@dptr
      002E0B C0 E0            [24] 5007 	push	acc
      002E0D 74 0A            [12] 5008 	mov	a,#___str_40
      002E0F C0 E0            [24] 5009 	push	acc
      002E11 74 4F            [12] 5010 	mov	a,#(___str_40 >> 8)
      002E13 C0 E0            [24] 5011 	push	acc
      002E15 74 80            [12] 5012 	mov	a,#0x80
      002E17 C0 E0            [24] 5013 	push	acc
      002E19 12 41 F8         [24] 5014 	lcall	_printf
      002E1C E5 81            [12] 5015 	mov	a,sp
      002E1E 24 F9            [12] 5016 	add	a,#0xf9
      002E20 F5 81            [12] 5017 	mov	sp,a
      002E22 D0 02            [24] 5018 	pop	ar2
      002E24 D0 03            [24] 5019 	pop	ar3
      002E26 D0 06            [24] 5020 	pop	ar6
      002E28 D0 07            [24] 5021 	pop	ar7
                                   5022 ;	USBHost.c:686: break;
      002E2A 02 30 FE         [24] 5023 	ljmp	00150$
                                   5024 ;	USBHost.c:687: case REPORT_USAGE_MINIMUM:
      002E2D                       5025 00138$:
                                   5026 ;	USBHost.c:688: DEBUG_OUT("Physical min %lu\n", data);
      002E2D C0 07            [24] 5027 	push	ar7
      002E2F C0 06            [24] 5028 	push	ar6
      002E31 C0 03            [24] 5029 	push	ar3
      002E33 C0 02            [24] 5030 	push	ar2
      002E35 90 0A 23         [24] 5031 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002E38 E0               [24] 5032 	movx	a,@dptr
      002E39 C0 E0            [24] 5033 	push	acc
      002E3B A3               [24] 5034 	inc	dptr
      002E3C E0               [24] 5035 	movx	a,@dptr
      002E3D C0 E0            [24] 5036 	push	acc
      002E3F A3               [24] 5037 	inc	dptr
      002E40 E0               [24] 5038 	movx	a,@dptr
      002E41 C0 E0            [24] 5039 	push	acc
      002E43 A3               [24] 5040 	inc	dptr
      002E44 E0               [24] 5041 	movx	a,@dptr
      002E45 C0 E0            [24] 5042 	push	acc
      002E47 74 F8            [12] 5043 	mov	a,#___str_39
      002E49 C0 E0            [24] 5044 	push	acc
      002E4B 74 4E            [12] 5045 	mov	a,#(___str_39 >> 8)
      002E4D C0 E0            [24] 5046 	push	acc
      002E4F 74 80            [12] 5047 	mov	a,#0x80
      002E51 C0 E0            [24] 5048 	push	acc
      002E53 12 41 F8         [24] 5049 	lcall	_printf
      002E56 E5 81            [12] 5050 	mov	a,sp
      002E58 24 F9            [12] 5051 	add	a,#0xf9
      002E5A F5 81            [12] 5052 	mov	sp,a
      002E5C D0 02            [24] 5053 	pop	ar2
      002E5E D0 03            [24] 5054 	pop	ar3
      002E60 D0 06            [24] 5055 	pop	ar6
      002E62 D0 07            [24] 5056 	pop	ar7
                                   5057 ;	USBHost.c:689: break;
      002E64 02 30 FE         [24] 5058 	ljmp	00150$
                                   5059 ;	USBHost.c:690: case REPORT_USAGE_MAXIMUM:
      002E67                       5060 00139$:
                                   5061 ;	USBHost.c:691: DEBUG_OUT("Physical max %lu\n", data);
      002E67 C0 07            [24] 5062 	push	ar7
      002E69 C0 06            [24] 5063 	push	ar6
      002E6B C0 03            [24] 5064 	push	ar3
      002E6D C0 02            [24] 5065 	push	ar2
      002E6F 90 0A 23         [24] 5066 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002E72 E0               [24] 5067 	movx	a,@dptr
      002E73 C0 E0            [24] 5068 	push	acc
      002E75 A3               [24] 5069 	inc	dptr
      002E76 E0               [24] 5070 	movx	a,@dptr
      002E77 C0 E0            [24] 5071 	push	acc
      002E79 A3               [24] 5072 	inc	dptr
      002E7A E0               [24] 5073 	movx	a,@dptr
      002E7B C0 E0            [24] 5074 	push	acc
      002E7D A3               [24] 5075 	inc	dptr
      002E7E E0               [24] 5076 	movx	a,@dptr
      002E7F C0 E0            [24] 5077 	push	acc
      002E81 74 0A            [12] 5078 	mov	a,#___str_40
      002E83 C0 E0            [24] 5079 	push	acc
      002E85 74 4F            [12] 5080 	mov	a,#(___str_40 >> 8)
      002E87 C0 E0            [24] 5081 	push	acc
      002E89 74 80            [12] 5082 	mov	a,#0x80
      002E8B C0 E0            [24] 5083 	push	acc
      002E8D 12 41 F8         [24] 5084 	lcall	_printf
      002E90 E5 81            [12] 5085 	mov	a,sp
      002E92 24 F9            [12] 5086 	add	a,#0xf9
      002E94 F5 81            [12] 5087 	mov	sp,a
      002E96 D0 02            [24] 5088 	pop	ar2
      002E98 D0 03            [24] 5089 	pop	ar3
      002E9A D0 06            [24] 5090 	pop	ar6
      002E9C D0 07            [24] 5091 	pop	ar7
                                   5092 ;	USBHost.c:692: break;
      002E9E 02 30 FE         [24] 5093 	ljmp	00150$
                                   5094 ;	USBHost.c:693: case REPORT_COLLECTION:
      002EA1                       5095 00140$:
                                   5096 ;	USBHost.c:694: DEBUG_OUT("Collection start %lu\n", data);
      002EA1 C0 07            [24] 5097 	push	ar7
      002EA3 C0 06            [24] 5098 	push	ar6
      002EA5 C0 03            [24] 5099 	push	ar3
      002EA7 C0 02            [24] 5100 	push	ar2
      002EA9 90 0A 23         [24] 5101 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002EAC E0               [24] 5102 	movx	a,@dptr
      002EAD C0 E0            [24] 5103 	push	acc
      002EAF A3               [24] 5104 	inc	dptr
      002EB0 E0               [24] 5105 	movx	a,@dptr
      002EB1 C0 E0            [24] 5106 	push	acc
      002EB3 A3               [24] 5107 	inc	dptr
      002EB4 E0               [24] 5108 	movx	a,@dptr
      002EB5 C0 E0            [24] 5109 	push	acc
      002EB7 A3               [24] 5110 	inc	dptr
      002EB8 E0               [24] 5111 	movx	a,@dptr
      002EB9 C0 E0            [24] 5112 	push	acc
      002EBB 74 1C            [12] 5113 	mov	a,#___str_41
      002EBD C0 E0            [24] 5114 	push	acc
      002EBF 74 4F            [12] 5115 	mov	a,#(___str_41 >> 8)
      002EC1 C0 E0            [24] 5116 	push	acc
      002EC3 74 80            [12] 5117 	mov	a,#0x80
      002EC5 C0 E0            [24] 5118 	push	acc
      002EC7 12 41 F8         [24] 5119 	lcall	_printf
      002ECA E5 81            [12] 5120 	mov	a,sp
      002ECC 24 F9            [12] 5121 	add	a,#0xf9
      002ECE F5 81            [12] 5122 	mov	sp,a
      002ED0 D0 02            [24] 5123 	pop	ar2
      002ED2 D0 03            [24] 5124 	pop	ar3
      002ED4 D0 06            [24] 5125 	pop	ar6
      002ED6 D0 07            [24] 5126 	pop	ar7
                                   5127 ;	USBHost.c:695: level++;
      002ED8 90 0A 1F         [24] 5128 	mov	dptr,#_parseHIDDeviceReport_level_65536_139
      002EDB E0               [24] 5129 	movx	a,@dptr
      002EDC 24 01            [12] 5130 	add	a,#0x01
      002EDE F0               [24] 5131 	movx	@dptr,a
                                   5132 ;	USBHost.c:696: break;
      002EDF 02 30 FE         [24] 5133 	ljmp	00150$
                                   5134 ;	USBHost.c:697: case REPORT_COLLECTION_END:
      002EE2                       5135 00141$:
                                   5136 ;	USBHost.c:698: DEBUG_OUT("Collection end %lu\n", data);
      002EE2 C0 07            [24] 5137 	push	ar7
      002EE4 C0 06            [24] 5138 	push	ar6
      002EE6 C0 03            [24] 5139 	push	ar3
      002EE8 C0 02            [24] 5140 	push	ar2
      002EEA 90 0A 23         [24] 5141 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002EED E0               [24] 5142 	movx	a,@dptr
      002EEE C0 E0            [24] 5143 	push	acc
      002EF0 A3               [24] 5144 	inc	dptr
      002EF1 E0               [24] 5145 	movx	a,@dptr
      002EF2 C0 E0            [24] 5146 	push	acc
      002EF4 A3               [24] 5147 	inc	dptr
      002EF5 E0               [24] 5148 	movx	a,@dptr
      002EF6 C0 E0            [24] 5149 	push	acc
      002EF8 A3               [24] 5150 	inc	dptr
      002EF9 E0               [24] 5151 	movx	a,@dptr
      002EFA C0 E0            [24] 5152 	push	acc
      002EFC 74 32            [12] 5153 	mov	a,#___str_42
      002EFE C0 E0            [24] 5154 	push	acc
      002F00 74 4F            [12] 5155 	mov	a,#(___str_42 >> 8)
      002F02 C0 E0            [24] 5156 	push	acc
      002F04 74 80            [12] 5157 	mov	a,#0x80
      002F06 C0 E0            [24] 5158 	push	acc
      002F08 12 41 F8         [24] 5159 	lcall	_printf
      002F0B E5 81            [12] 5160 	mov	a,sp
      002F0D 24 F9            [12] 5161 	add	a,#0xf9
      002F0F F5 81            [12] 5162 	mov	sp,a
      002F11 D0 02            [24] 5163 	pop	ar2
      002F13 D0 03            [24] 5164 	pop	ar3
      002F15 D0 06            [24] 5165 	pop	ar6
      002F17 D0 07            [24] 5166 	pop	ar7
                                   5167 ;	USBHost.c:699: level--;
      002F19 90 0A 1F         [24] 5168 	mov	dptr,#_parseHIDDeviceReport_level_65536_139
      002F1C E0               [24] 5169 	movx	a,@dptr
      002F1D 14               [12] 5170 	dec	a
      002F1E F0               [24] 5171 	movx	@dptr,a
                                   5172 ;	USBHost.c:700: break;
      002F1F 02 30 FE         [24] 5173 	ljmp	00150$
                                   5174 ;	USBHost.c:701: case REPORT_UNIT:
      002F22                       5175 00142$:
                                   5176 ;	USBHost.c:702: DEBUG_OUT("Unit 0x%02lx\n", data);
      002F22 C0 07            [24] 5177 	push	ar7
      002F24 C0 06            [24] 5178 	push	ar6
      002F26 C0 03            [24] 5179 	push	ar3
      002F28 C0 02            [24] 5180 	push	ar2
      002F2A 90 0A 23         [24] 5181 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002F2D E0               [24] 5182 	movx	a,@dptr
      002F2E C0 E0            [24] 5183 	push	acc
      002F30 A3               [24] 5184 	inc	dptr
      002F31 E0               [24] 5185 	movx	a,@dptr
      002F32 C0 E0            [24] 5186 	push	acc
      002F34 A3               [24] 5187 	inc	dptr
      002F35 E0               [24] 5188 	movx	a,@dptr
      002F36 C0 E0            [24] 5189 	push	acc
      002F38 A3               [24] 5190 	inc	dptr
      002F39 E0               [24] 5191 	movx	a,@dptr
      002F3A C0 E0            [24] 5192 	push	acc
      002F3C 74 46            [12] 5193 	mov	a,#___str_43
      002F3E C0 E0            [24] 5194 	push	acc
      002F40 74 4F            [12] 5195 	mov	a,#(___str_43 >> 8)
      002F42 C0 E0            [24] 5196 	push	acc
      002F44 74 80            [12] 5197 	mov	a,#0x80
      002F46 C0 E0            [24] 5198 	push	acc
      002F48 12 41 F8         [24] 5199 	lcall	_printf
      002F4B E5 81            [12] 5200 	mov	a,sp
      002F4D 24 F9            [12] 5201 	add	a,#0xf9
      002F4F F5 81            [12] 5202 	mov	sp,a
      002F51 D0 02            [24] 5203 	pop	ar2
      002F53 D0 03            [24] 5204 	pop	ar3
      002F55 D0 06            [24] 5205 	pop	ar6
      002F57 D0 07            [24] 5206 	pop	ar7
                                   5207 ;	USBHost.c:703: break;
      002F59 02 30 FE         [24] 5208 	ljmp	00150$
                                   5209 ;	USBHost.c:704: case REPORT_INPUT:
      002F5C                       5210 00143$:
                                   5211 ;	USBHost.c:705: DEBUG_OUT("Input 0x%02lx\n", data);
      002F5C C0 07            [24] 5212 	push	ar7
      002F5E C0 06            [24] 5213 	push	ar6
      002F60 C0 03            [24] 5214 	push	ar3
      002F62 C0 02            [24] 5215 	push	ar2
      002F64 90 0A 23         [24] 5216 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002F67 E0               [24] 5217 	movx	a,@dptr
      002F68 C0 E0            [24] 5218 	push	acc
      002F6A A3               [24] 5219 	inc	dptr
      002F6B E0               [24] 5220 	movx	a,@dptr
      002F6C C0 E0            [24] 5221 	push	acc
      002F6E A3               [24] 5222 	inc	dptr
      002F6F E0               [24] 5223 	movx	a,@dptr
      002F70 C0 E0            [24] 5224 	push	acc
      002F72 A3               [24] 5225 	inc	dptr
      002F73 E0               [24] 5226 	movx	a,@dptr
      002F74 C0 E0            [24] 5227 	push	acc
      002F76 74 54            [12] 5228 	mov	a,#___str_44
      002F78 C0 E0            [24] 5229 	push	acc
      002F7A 74 4F            [12] 5230 	mov	a,#(___str_44 >> 8)
      002F7C C0 E0            [24] 5231 	push	acc
      002F7E 74 80            [12] 5232 	mov	a,#0x80
      002F80 C0 E0            [24] 5233 	push	acc
      002F82 12 41 F8         [24] 5234 	lcall	_printf
      002F85 E5 81            [12] 5235 	mov	a,sp
      002F87 24 F9            [12] 5236 	add	a,#0xf9
      002F89 F5 81            [12] 5237 	mov	sp,a
      002F8B D0 02            [24] 5238 	pop	ar2
      002F8D D0 03            [24] 5239 	pop	ar3
      002F8F D0 06            [24] 5240 	pop	ar6
      002F91 D0 07            [24] 5241 	pop	ar7
                                   5242 ;	USBHost.c:706: break;
      002F93 02 30 FE         [24] 5243 	ljmp	00150$
                                   5244 ;	USBHost.c:707: case REPORT_OUTPUT:
      002F96                       5245 00144$:
                                   5246 ;	USBHost.c:708: DEBUG_OUT("Output 0x%02lx\n", data);
      002F96 C0 07            [24] 5247 	push	ar7
      002F98 C0 06            [24] 5248 	push	ar6
      002F9A C0 03            [24] 5249 	push	ar3
      002F9C C0 02            [24] 5250 	push	ar2
      002F9E 90 0A 23         [24] 5251 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002FA1 E0               [24] 5252 	movx	a,@dptr
      002FA2 C0 E0            [24] 5253 	push	acc
      002FA4 A3               [24] 5254 	inc	dptr
      002FA5 E0               [24] 5255 	movx	a,@dptr
      002FA6 C0 E0            [24] 5256 	push	acc
      002FA8 A3               [24] 5257 	inc	dptr
      002FA9 E0               [24] 5258 	movx	a,@dptr
      002FAA C0 E0            [24] 5259 	push	acc
      002FAC A3               [24] 5260 	inc	dptr
      002FAD E0               [24] 5261 	movx	a,@dptr
      002FAE C0 E0            [24] 5262 	push	acc
      002FB0 74 63            [12] 5263 	mov	a,#___str_45
      002FB2 C0 E0            [24] 5264 	push	acc
      002FB4 74 4F            [12] 5265 	mov	a,#(___str_45 >> 8)
      002FB6 C0 E0            [24] 5266 	push	acc
      002FB8 74 80            [12] 5267 	mov	a,#0x80
      002FBA C0 E0            [24] 5268 	push	acc
      002FBC 12 41 F8         [24] 5269 	lcall	_printf
      002FBF E5 81            [12] 5270 	mov	a,sp
      002FC1 24 F9            [12] 5271 	add	a,#0xf9
      002FC3 F5 81            [12] 5272 	mov	sp,a
      002FC5 D0 02            [24] 5273 	pop	ar2
      002FC7 D0 03            [24] 5274 	pop	ar3
      002FC9 D0 06            [24] 5275 	pop	ar6
      002FCB D0 07            [24] 5276 	pop	ar7
                                   5277 ;	USBHost.c:709: break;
      002FCD 02 30 FE         [24] 5278 	ljmp	00150$
                                   5279 ;	USBHost.c:710: case REPORT_FEATURE:
      002FD0                       5280 00145$:
                                   5281 ;	USBHost.c:711: DEBUG_OUT("Feature 0x%02lx\n", data);
      002FD0 C0 07            [24] 5282 	push	ar7
      002FD2 C0 06            [24] 5283 	push	ar6
      002FD4 C0 03            [24] 5284 	push	ar3
      002FD6 C0 02            [24] 5285 	push	ar2
      002FD8 90 0A 23         [24] 5286 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      002FDB E0               [24] 5287 	movx	a,@dptr
      002FDC C0 E0            [24] 5288 	push	acc
      002FDE A3               [24] 5289 	inc	dptr
      002FDF E0               [24] 5290 	movx	a,@dptr
      002FE0 C0 E0            [24] 5291 	push	acc
      002FE2 A3               [24] 5292 	inc	dptr
      002FE3 E0               [24] 5293 	movx	a,@dptr
      002FE4 C0 E0            [24] 5294 	push	acc
      002FE6 A3               [24] 5295 	inc	dptr
      002FE7 E0               [24] 5296 	movx	a,@dptr
      002FE8 C0 E0            [24] 5297 	push	acc
      002FEA 74 73            [12] 5298 	mov	a,#___str_46
      002FEC C0 E0            [24] 5299 	push	acc
      002FEE 74 4F            [12] 5300 	mov	a,#(___str_46 >> 8)
      002FF0 C0 E0            [24] 5301 	push	acc
      002FF2 74 80            [12] 5302 	mov	a,#0x80
      002FF4 C0 E0            [24] 5303 	push	acc
      002FF6 12 41 F8         [24] 5304 	lcall	_printf
      002FF9 E5 81            [12] 5305 	mov	a,sp
      002FFB 24 F9            [12] 5306 	add	a,#0xf9
      002FFD F5 81            [12] 5307 	mov	sp,a
      002FFF D0 02            [24] 5308 	pop	ar2
      003001 D0 03            [24] 5309 	pop	ar3
      003003 D0 06            [24] 5310 	pop	ar6
      003005 D0 07            [24] 5311 	pop	ar7
                                   5312 ;	USBHost.c:712: break;
      003007 02 30 FE         [24] 5313 	ljmp	00150$
                                   5314 ;	USBHost.c:713: case REPORT_REPORT_SIZE:
      00300A                       5315 00146$:
                                   5316 ;	USBHost.c:714: DEBUG_OUT("Report size %lu\n", data);
      00300A C0 07            [24] 5317 	push	ar7
      00300C C0 06            [24] 5318 	push	ar6
      00300E C0 03            [24] 5319 	push	ar3
      003010 C0 02            [24] 5320 	push	ar2
      003012 90 0A 23         [24] 5321 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      003015 E0               [24] 5322 	movx	a,@dptr
      003016 C0 E0            [24] 5323 	push	acc
      003018 A3               [24] 5324 	inc	dptr
      003019 E0               [24] 5325 	movx	a,@dptr
      00301A C0 E0            [24] 5326 	push	acc
      00301C A3               [24] 5327 	inc	dptr
      00301D E0               [24] 5328 	movx	a,@dptr
      00301E C0 E0            [24] 5329 	push	acc
      003020 A3               [24] 5330 	inc	dptr
      003021 E0               [24] 5331 	movx	a,@dptr
      003022 C0 E0            [24] 5332 	push	acc
      003024 74 84            [12] 5333 	mov	a,#___str_47
      003026 C0 E0            [24] 5334 	push	acc
      003028 74 4F            [12] 5335 	mov	a,#(___str_47 >> 8)
      00302A C0 E0            [24] 5336 	push	acc
      00302C 74 80            [12] 5337 	mov	a,#0x80
      00302E C0 E0            [24] 5338 	push	acc
      003030 12 41 F8         [24] 5339 	lcall	_printf
      003033 E5 81            [12] 5340 	mov	a,sp
      003035 24 F9            [12] 5341 	add	a,#0xf9
      003037 F5 81            [12] 5342 	mov	sp,a
      003039 D0 02            [24] 5343 	pop	ar2
      00303B D0 03            [24] 5344 	pop	ar3
      00303D D0 06            [24] 5345 	pop	ar6
      00303F D0 07            [24] 5346 	pop	ar7
                                   5347 ;	USBHost.c:715: break;
      003041 02 30 FE         [24] 5348 	ljmp	00150$
                                   5349 ;	USBHost.c:716: case REPORT_REPORT_ID:
      003044                       5350 00147$:
                                   5351 ;	USBHost.c:717: DEBUG_OUT("Report ID %lu\n", data);
      003044 C0 07            [24] 5352 	push	ar7
      003046 C0 06            [24] 5353 	push	ar6
      003048 C0 03            [24] 5354 	push	ar3
      00304A C0 02            [24] 5355 	push	ar2
      00304C 90 0A 23         [24] 5356 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      00304F E0               [24] 5357 	movx	a,@dptr
      003050 C0 E0            [24] 5358 	push	acc
      003052 A3               [24] 5359 	inc	dptr
      003053 E0               [24] 5360 	movx	a,@dptr
      003054 C0 E0            [24] 5361 	push	acc
      003056 A3               [24] 5362 	inc	dptr
      003057 E0               [24] 5363 	movx	a,@dptr
      003058 C0 E0            [24] 5364 	push	acc
      00305A A3               [24] 5365 	inc	dptr
      00305B E0               [24] 5366 	movx	a,@dptr
      00305C C0 E0            [24] 5367 	push	acc
      00305E 74 95            [12] 5368 	mov	a,#___str_48
      003060 C0 E0            [24] 5369 	push	acc
      003062 74 4F            [12] 5370 	mov	a,#(___str_48 >> 8)
      003064 C0 E0            [24] 5371 	push	acc
      003066 74 80            [12] 5372 	mov	a,#0x80
      003068 C0 E0            [24] 5373 	push	acc
      00306A 12 41 F8         [24] 5374 	lcall	_printf
      00306D E5 81            [12] 5375 	mov	a,sp
      00306F 24 F9            [12] 5376 	add	a,#0xf9
      003071 F5 81            [12] 5377 	mov	sp,a
      003073 D0 02            [24] 5378 	pop	ar2
      003075 D0 03            [24] 5379 	pop	ar3
      003077 D0 06            [24] 5380 	pop	ar6
      003079 D0 07            [24] 5381 	pop	ar7
                                   5382 ;	USBHost.c:718: break;
      00307B 02 30 FE         [24] 5383 	ljmp	00150$
                                   5384 ;	USBHost.c:719: case REPORT_REPORT_COUNT:
      00307E                       5385 00148$:
                                   5386 ;	USBHost.c:720: DEBUG_OUT("Report count %lu\n", data);
      00307E C0 07            [24] 5387 	push	ar7
      003080 C0 06            [24] 5388 	push	ar6
      003082 C0 03            [24] 5389 	push	ar3
      003084 C0 02            [24] 5390 	push	ar2
      003086 90 0A 23         [24] 5391 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      003089 E0               [24] 5392 	movx	a,@dptr
      00308A C0 E0            [24] 5393 	push	acc
      00308C A3               [24] 5394 	inc	dptr
      00308D E0               [24] 5395 	movx	a,@dptr
      00308E C0 E0            [24] 5396 	push	acc
      003090 A3               [24] 5397 	inc	dptr
      003091 E0               [24] 5398 	movx	a,@dptr
      003092 C0 E0            [24] 5399 	push	acc
      003094 A3               [24] 5400 	inc	dptr
      003095 E0               [24] 5401 	movx	a,@dptr
      003096 C0 E0            [24] 5402 	push	acc
      003098 74 A4            [12] 5403 	mov	a,#___str_49
      00309A C0 E0            [24] 5404 	push	acc
      00309C 74 4F            [12] 5405 	mov	a,#(___str_49 >> 8)
      00309E C0 E0            [24] 5406 	push	acc
      0030A0 74 80            [12] 5407 	mov	a,#0x80
      0030A2 C0 E0            [24] 5408 	push	acc
      0030A4 12 41 F8         [24] 5409 	lcall	_printf
      0030A7 E5 81            [12] 5410 	mov	a,sp
      0030A9 24 F9            [12] 5411 	add	a,#0xf9
      0030AB F5 81            [12] 5412 	mov	sp,a
      0030AD D0 02            [24] 5413 	pop	ar2
      0030AF D0 03            [24] 5414 	pop	ar3
      0030B1 D0 06            [24] 5415 	pop	ar6
      0030B3 D0 07            [24] 5416 	pop	ar7
                                   5417 ;	USBHost.c:721: break;
                                   5418 ;	USBHost.c:722: default:
      0030B5 80 47            [24] 5419 	sjmp	00150$
      0030B7                       5420 00149$:
                                   5421 ;	USBHost.c:723: DEBUG_OUT("Unknown HID report identifier: 0x%02x (%i bytes) data: 0x%02lx\n", id, size, data);
      0030B7 A9 37            [24] 5422 	mov	r1,_parseHIDDeviceReport_sloc1_1_0
      0030B9 7C 00            [12] 5423 	mov	r4,#0x00
      0030BB 8D 00            [24] 5424 	mov	ar0,r5
      0030BD 7D 00            [12] 5425 	mov	r5,#0x00
      0030BF C0 07            [24] 5426 	push	ar7
      0030C1 C0 06            [24] 5427 	push	ar6
      0030C3 C0 03            [24] 5428 	push	ar3
      0030C5 C0 02            [24] 5429 	push	ar2
      0030C7 90 0A 23         [24] 5430 	mov	dptr,#_parseHIDDeviceReport_data_131072_140
      0030CA E0               [24] 5431 	movx	a,@dptr
      0030CB C0 E0            [24] 5432 	push	acc
      0030CD A3               [24] 5433 	inc	dptr
      0030CE E0               [24] 5434 	movx	a,@dptr
      0030CF C0 E0            [24] 5435 	push	acc
      0030D1 A3               [24] 5436 	inc	dptr
      0030D2 E0               [24] 5437 	movx	a,@dptr
      0030D3 C0 E0            [24] 5438 	push	acc
      0030D5 A3               [24] 5439 	inc	dptr
      0030D6 E0               [24] 5440 	movx	a,@dptr
      0030D7 C0 E0            [24] 5441 	push	acc
      0030D9 C0 01            [24] 5442 	push	ar1
      0030DB C0 04            [24] 5443 	push	ar4
      0030DD C0 00            [24] 5444 	push	ar0
      0030DF C0 05            [24] 5445 	push	ar5
      0030E1 74 B6            [12] 5446 	mov	a,#___str_50
      0030E3 C0 E0            [24] 5447 	push	acc
      0030E5 74 4F            [12] 5448 	mov	a,#(___str_50 >> 8)
      0030E7 C0 E0            [24] 5449 	push	acc
      0030E9 74 80            [12] 5450 	mov	a,#0x80
      0030EB C0 E0            [24] 5451 	push	acc
      0030ED 12 41 F8         [24] 5452 	lcall	_printf
      0030F0 E5 81            [12] 5453 	mov	a,sp
      0030F2 24 F5            [12] 5454 	add	a,#0xf5
      0030F4 F5 81            [12] 5455 	mov	sp,a
      0030F6 D0 02            [24] 5456 	pop	ar2
      0030F8 D0 03            [24] 5457 	pop	ar3
      0030FA D0 06            [24] 5458 	pop	ar6
      0030FC D0 07            [24] 5459 	pop	ar7
                                   5460 ;	USBHost.c:724: };
      0030FE                       5461 00150$:
                                   5462 ;	USBHost.c:725: i += size + 1;
      0030FE 90 0A 22         [24] 5463 	mov	dptr,#_parseHIDDeviceReport_size_131072_140
      003101 E0               [24] 5464 	movx	a,@dptr
      003102 FD               [12] 5465 	mov	r5,a
      003103 7C 00            [12] 5466 	mov	r4,#0x00
      003105 0D               [12] 5467 	inc	r5
      003106 BD 00 01         [24] 5468 	cjne	r5,#0x00,00344$
      003109 0C               [12] 5469 	inc	r4
      00310A                       5470 00344$:
      00310A 90 0A 1D         [24] 5471 	mov	dptr,#_parseHIDDeviceReport_i_65536_139
      00310D E0               [24] 5472 	movx	a,@dptr
      00310E F8               [12] 5473 	mov	r0,a
      00310F A3               [24] 5474 	inc	dptr
      003110 E0               [24] 5475 	movx	a,@dptr
      003111 F9               [12] 5476 	mov	r1,a
      003112 ED               [12] 5477 	mov	a,r5
      003113 28               [12] 5478 	add	a,r0
      003114 F8               [12] 5479 	mov	r0,a
      003115 EC               [12] 5480 	mov	a,r4
      003116 39               [12] 5481 	addc	a,r1
      003117 F9               [12] 5482 	mov	r1,a
      003118 90 0A 1D         [24] 5483 	mov	dptr,#_parseHIDDeviceReport_i_65536_139
      00311B E8               [12] 5484 	mov	a,r0
      00311C F0               [24] 5485 	movx	@dptr,a
      00311D E9               [12] 5486 	mov	a,r1
      00311E A3               [24] 5487 	inc	dptr
      00311F F0               [24] 5488 	movx	@dptr,a
                                   5489 ;	USBHost.c:727: }
      003120 02 26 00         [24] 5490 	ljmp	00151$
                                   5491 ;------------------------------------------------------------
                                   5492 ;Allocation info for local variables in function 'getHIDDeviceReport'
                                   5493 ;------------------------------------------------------------
                                   5494 ;CurrentDevive             Allocated with name '_getHIDDeviceReport_CurrentDevive_65536_148'
                                   5495 ;s                         Allocated with name '_getHIDDeviceReport_s_65536_149'
                                   5496 ;len                       Allocated with name '_getHIDDeviceReport_len_65536_149'
                                   5497 ;i                         Allocated with name '_getHIDDeviceReport_i_65536_149'
                                   5498 ;reportLen                 Allocated with name '_getHIDDeviceReport_reportLen_65536_149'
                                   5499 ;------------------------------------------------------------
                                   5500 ;	USBHost.c:729: unsigned char getHIDDeviceReport(unsigned char CurrentDevive)
                                   5501 ;	-----------------------------------------
                                   5502 ;	 function getHIDDeviceReport
                                   5503 ;	-----------------------------------------
      003123                       5504 _getHIDDeviceReport:
      003123 E5 82            [12] 5505 	mov	a,dpl
      003125 90 0A 27         [24] 5506 	mov	dptr,#_getHIDDeviceReport_CurrentDevive_65536_148
      003128 F0               [24] 5507 	movx	@dptr,a
                                   5508 ;	USBHost.c:733: DEBUG_OUT("Requesting report from interface %i\n", HIDdevice[CurrentDevive].interface);
      003129 E0               [24] 5509 	movx	a,@dptr
      00312A 75 F0 08         [24] 5510 	mov	b,#0x08
      00312D A4               [48] 5511 	mul	ab
      00312E 24 B6            [12] 5512 	add	a,#_HIDdevice
      003130 FE               [12] 5513 	mov	r6,a
      003131 74 09            [12] 5514 	mov	a,#(_HIDdevice >> 8)
      003133 35 F0            [12] 5515 	addc	a,b
      003135 FF               [12] 5516 	mov	r7,a
      003136 74 02            [12] 5517 	mov	a,#0x02
      003138 2E               [12] 5518 	add	a,r6
      003139 FE               [12] 5519 	mov	r6,a
      00313A E4               [12] 5520 	clr	a
      00313B 3F               [12] 5521 	addc	a,r7
      00313C FF               [12] 5522 	mov	r7,a
      00313D 8E 82            [24] 5523 	mov	dpl,r6
      00313F 8F 83            [24] 5524 	mov	dph,r7
      003141 E0               [24] 5525 	movx	a,@dptr
      003142 FD               [12] 5526 	mov	r5,a
      003143 7C 00            [12] 5527 	mov	r4,#0x00
      003145 C0 07            [24] 5528 	push	ar7
      003147 C0 06            [24] 5529 	push	ar6
      003149 C0 05            [24] 5530 	push	ar5
      00314B C0 04            [24] 5531 	push	ar4
      00314D 74 F6            [12] 5532 	mov	a,#___str_51
      00314F C0 E0            [24] 5533 	push	acc
      003151 74 4F            [12] 5534 	mov	a,#(___str_51 >> 8)
      003153 C0 E0            [24] 5535 	push	acc
      003155 74 80            [12] 5536 	mov	a,#0x80
      003157 C0 E0            [24] 5537 	push	acc
      003159 12 41 F8         [24] 5538 	lcall	_printf
      00315C E5 81            [12] 5539 	mov	a,sp
      00315E 24 FB            [12] 5540 	add	a,#0xfb
      003160 F5 81            [12] 5541 	mov	sp,a
                                   5542 ;	USBHost.c:735: fillTxBuffer(SetHIDIdleRequest, sizeof(SetHIDIdleRequest));
      003162 90 09 A2         [24] 5543 	mov	dptr,#_fillTxBuffer_PARM_2
      003165 74 08            [12] 5544 	mov	a,#0x08
      003167 F0               [24] 5545 	movx	@dptr,a
      003168 90 4C A4         [24] 5546 	mov	dptr,#_SetHIDIdleRequest
      00316B 12 1F 48         [24] 5547 	lcall	_fillTxBuffer
      00316E D0 06            [24] 5548 	pop	ar6
      003170 D0 07            [24] 5549 	pop	ar7
                                   5550 ;	USBHost.c:736: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevive].interface;    
      003172 8E 82            [24] 5551 	mov	dpl,r6
      003174 8F 83            [24] 5552 	mov	dph,r7
      003176 E0               [24] 5553 	movx	a,@dptr
      003177 90 01 04         [24] 5554 	mov	dptr,#(_TxBuffer + 0x0004)
      00317A F0               [24] 5555 	movx	@dptr,a
                                   5556 ;	USBHost.c:737: s = hostCtrlTransfer(receiveDataBuffer, &len, 0);
      00317B 90 09 96         [24] 5557 	mov	dptr,#_hostCtrlTransfer_PARM_2
      00317E 74 28            [12] 5558 	mov	a,#_getHIDDeviceReport_len_65536_149
      003180 F0               [24] 5559 	movx	@dptr,a
      003181 74 0A            [12] 5560 	mov	a,#(_getHIDDeviceReport_len_65536_149 >> 8)
      003183 A3               [24] 5561 	inc	dptr
      003184 F0               [24] 5562 	movx	@dptr,a
      003185 E4               [12] 5563 	clr	a
      003186 A3               [24] 5564 	inc	dptr
      003187 F0               [24] 5565 	movx	@dptr,a
      003188 90 09 99         [24] 5566 	mov	dptr,#_hostCtrlTransfer_PARM_3
      00318B F0               [24] 5567 	movx	@dptr,a
      00318C A3               [24] 5568 	inc	dptr
      00318D F0               [24] 5569 	movx	@dptr,a
      00318E 90 07 83         [24] 5570 	mov	dptr,#_receiveDataBuffer
      003191 C0 07            [24] 5571 	push	ar7
      003193 C0 06            [24] 5572 	push	ar6
      003195 12 1B 7F         [24] 5573 	lcall	_hostCtrlTransfer
                                   5574 ;	USBHost.c:743: fillTxBuffer(GetHIDReport, sizeof(GetHIDReport));
      003198 90 09 A2         [24] 5575 	mov	dptr,#_fillTxBuffer_PARM_2
      00319B 74 08            [12] 5576 	mov	a,#0x08
      00319D F0               [24] 5577 	movx	@dptr,a
      00319E 90 4C AC         [24] 5578 	mov	dptr,#_GetHIDReport
      0031A1 12 1F 48         [24] 5579 	lcall	_fillTxBuffer
      0031A4 D0 06            [24] 5580 	pop	ar6
      0031A6 D0 07            [24] 5581 	pop	ar7
                                   5582 ;	USBHost.c:744: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevive].interface;
      0031A8 8E 82            [24] 5583 	mov	dpl,r6
      0031AA 8F 83            [24] 5584 	mov	dph,r7
      0031AC E0               [24] 5585 	movx	a,@dptr
      0031AD 90 01 04         [24] 5586 	mov	dptr,#(_TxBuffer + 0x0004)
      0031B0 F0               [24] 5587 	movx	@dptr,a
                                   5588 ;	USBHost.c:745: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthL = (unsigned char)(reportLen & 255); 
      0031B1 7F 00            [12] 5589 	mov	r7,#0x00
      0031B3 90 01 06         [24] 5590 	mov	dptr,#(_TxBuffer + 0x0006)
      0031B6 EF               [12] 5591 	mov	a,r7
      0031B7 F0               [24] 5592 	movx	@dptr,a
                                   5593 ;	USBHost.c:746: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthH = (unsigned char)(reportLen >> 8);
      0031B8 90 01 07         [24] 5594 	mov	dptr,#(_TxBuffer + 0x0007)
      0031BB 74 02            [12] 5595 	mov	a,#0x02
      0031BD F0               [24] 5596 	movx	@dptr,a
                                   5597 ;	USBHost.c:747: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
      0031BE 90 09 96         [24] 5598 	mov	dptr,#_hostCtrlTransfer_PARM_2
      0031C1 74 28            [12] 5599 	mov	a,#_getHIDDeviceReport_len_65536_149
      0031C3 F0               [24] 5600 	movx	@dptr,a
      0031C4 74 0A            [12] 5601 	mov	a,#(_getHIDDeviceReport_len_65536_149 >> 8)
      0031C6 A3               [24] 5602 	inc	dptr
      0031C7 F0               [24] 5603 	movx	@dptr,a
      0031C8 E4               [12] 5604 	clr	a
      0031C9 A3               [24] 5605 	inc	dptr
      0031CA F0               [24] 5606 	movx	@dptr,a
      0031CB 90 09 99         [24] 5607 	mov	dptr,#_hostCtrlTransfer_PARM_3
      0031CE F0               [24] 5608 	movx	@dptr,a
      0031CF 74 02            [12] 5609 	mov	a,#0x02
      0031D1 A3               [24] 5610 	inc	dptr
      0031D2 F0               [24] 5611 	movx	@dptr,a
      0031D3 90 07 83         [24] 5612 	mov	dptr,#_receiveDataBuffer
      0031D6 12 1B 7F         [24] 5613 	lcall	_hostCtrlTransfer
                                   5614 ;	USBHost.c:748: if(s != ERR_SUCCESS)
      0031D9 E5 82            [12] 5615 	mov	a,dpl
      0031DB FF               [12] 5616 	mov	r7,a
      0031DC 60 03            [24] 5617 	jz	00111$
                                   5618 ;	USBHost.c:749: return s;
      0031DE 8F 82            [24] 5619 	mov	dpl,r7
      0031E0 22               [24] 5620 	ret
                                   5621 ;	USBHost.c:751: for (i = 0; i < len; i++)
      0031E1                       5622 00111$:
      0031E1 7E 00            [12] 5623 	mov	r6,#0x00
      0031E3 7F 00            [12] 5624 	mov	r7,#0x00
      0031E5                       5625 00105$:
      0031E5 90 0A 28         [24] 5626 	mov	dptr,#_getHIDDeviceReport_len_65536_149
      0031E8 E0               [24] 5627 	movx	a,@dptr
      0031E9 FC               [12] 5628 	mov	r4,a
      0031EA A3               [24] 5629 	inc	dptr
      0031EB E0               [24] 5630 	movx	a,@dptr
      0031EC FD               [12] 5631 	mov	r5,a
      0031ED C3               [12] 5632 	clr	c
      0031EE EE               [12] 5633 	mov	a,r6
      0031EF 9C               [12] 5634 	subb	a,r4
      0031F0 EF               [12] 5635 	mov	a,r7
      0031F1 9D               [12] 5636 	subb	a,r5
      0031F2 50 36            [24] 5637 	jnc	00103$
                                   5638 ;	USBHost.c:753: DEBUG_OUT("0x%02X ", receiveDataBuffer[i]);
      0031F4 EE               [12] 5639 	mov	a,r6
      0031F5 24 83            [12] 5640 	add	a,#_receiveDataBuffer
      0031F7 F5 82            [12] 5641 	mov	dpl,a
      0031F9 EF               [12] 5642 	mov	a,r7
      0031FA 34 07            [12] 5643 	addc	a,#(_receiveDataBuffer >> 8)
      0031FC F5 83            [12] 5644 	mov	dph,a
      0031FE E0               [24] 5645 	movx	a,@dptr
      0031FF FD               [12] 5646 	mov	r5,a
      003200 7C 00            [12] 5647 	mov	r4,#0x00
      003202 C0 07            [24] 5648 	push	ar7
      003204 C0 06            [24] 5649 	push	ar6
      003206 C0 05            [24] 5650 	push	ar5
      003208 C0 04            [24] 5651 	push	ar4
      00320A 74 DF            [12] 5652 	mov	a,#___str_12
      00320C C0 E0            [24] 5653 	push	acc
      00320E 74 4D            [12] 5654 	mov	a,#(___str_12 >> 8)
      003210 C0 E0            [24] 5655 	push	acc
      003212 74 80            [12] 5656 	mov	a,#0x80
      003214 C0 E0            [24] 5657 	push	acc
      003216 12 41 F8         [24] 5658 	lcall	_printf
      003219 E5 81            [12] 5659 	mov	a,sp
      00321B 24 FB            [12] 5660 	add	a,#0xfb
      00321D F5 81            [12] 5661 	mov	sp,a
      00321F D0 06            [24] 5662 	pop	ar6
      003221 D0 07            [24] 5663 	pop	ar7
                                   5664 ;	USBHost.c:751: for (i = 0; i < len; i++)
      003223 0E               [12] 5665 	inc	r6
      003224 BE 00 BE         [24] 5666 	cjne	r6,#0x00,00105$
      003227 0F               [12] 5667 	inc	r7
      003228 80 BB            [24] 5668 	sjmp	00105$
      00322A                       5669 00103$:
                                   5670 ;	USBHost.c:755: DEBUG_OUT("\n");
      00322A 74 E7            [12] 5671 	mov	a,#___str_13
      00322C C0 E0            [24] 5672 	push	acc
      00322E 74 4D            [12] 5673 	mov	a,#(___str_13 >> 8)
      003230 C0 E0            [24] 5674 	push	acc
      003232 74 80            [12] 5675 	mov	a,#0x80
      003234 C0 E0            [24] 5676 	push	acc
      003236 12 41 F8         [24] 5677 	lcall	_printf
      003239 15 81            [12] 5678 	dec	sp
      00323B 15 81            [12] 5679 	dec	sp
      00323D 15 81            [12] 5680 	dec	sp
                                   5681 ;	USBHost.c:756: sendProtocolMSG(MSG_TYPE_HID_INFO, len, CurrentDevive, HIDdevice[CurrentDevive].interface, HIDdevice[CurrentDevive].rootHub, receiveDataBuffer);
      00323F 90 0A 28         [24] 5682 	mov	dptr,#_getHIDDeviceReport_len_65536_149
      003242 E0               [24] 5683 	movx	a,@dptr
      003243 FE               [12] 5684 	mov	r6,a
      003244 A3               [24] 5685 	inc	dptr
      003245 E0               [24] 5686 	movx	a,@dptr
      003246 FF               [12] 5687 	mov	r7,a
      003247 90 0A 27         [24] 5688 	mov	dptr,#_getHIDDeviceReport_CurrentDevive_65536_148
      00324A E0               [24] 5689 	movx	a,@dptr
      00324B FD               [12] 5690 	mov	r5,a
      00324C 75 F0 08         [24] 5691 	mov	b,#0x08
      00324F A4               [48] 5692 	mul	ab
      003250 24 B6            [12] 5693 	add	a,#_HIDdevice
      003252 FB               [12] 5694 	mov	r3,a
      003253 74 09            [12] 5695 	mov	a,#(_HIDdevice >> 8)
      003255 35 F0            [12] 5696 	addc	a,b
      003257 FC               [12] 5697 	mov	r4,a
      003258 8B 82            [24] 5698 	mov	dpl,r3
      00325A 8C 83            [24] 5699 	mov	dph,r4
      00325C A3               [24] 5700 	inc	dptr
      00325D A3               [24] 5701 	inc	dptr
      00325E E0               [24] 5702 	movx	a,@dptr
      00325F FA               [12] 5703 	mov	r2,a
      003260 8B 82            [24] 5704 	mov	dpl,r3
      003262 8C 83            [24] 5705 	mov	dph,r4
      003264 A3               [24] 5706 	inc	dptr
      003265 E0               [24] 5707 	movx	a,@dptr
      003266 FC               [12] 5708 	mov	r4,a
      003267 90 0C 7D         [24] 5709 	mov	dptr,#_sendProtocolMSG_PARM_2
      00326A EE               [12] 5710 	mov	a,r6
      00326B F0               [24] 5711 	movx	@dptr,a
      00326C EF               [12] 5712 	mov	a,r7
      00326D A3               [24] 5713 	inc	dptr
      00326E F0               [24] 5714 	movx	@dptr,a
      00326F 90 0C 7F         [24] 5715 	mov	dptr,#_sendProtocolMSG_PARM_3
      003272 ED               [12] 5716 	mov	a,r5
      003273 F0               [24] 5717 	movx	@dptr,a
      003274 90 0C 80         [24] 5718 	mov	dptr,#_sendProtocolMSG_PARM_4
      003277 EA               [12] 5719 	mov	a,r2
      003278 F0               [24] 5720 	movx	@dptr,a
      003279 90 0C 81         [24] 5721 	mov	dptr,#_sendProtocolMSG_PARM_5
      00327C EC               [12] 5722 	mov	a,r4
      00327D F0               [24] 5723 	movx	@dptr,a
      00327E 90 0C 82         [24] 5724 	mov	dptr,#_sendProtocolMSG_PARM_6
      003281 74 83            [12] 5725 	mov	a,#_receiveDataBuffer
      003283 F0               [24] 5726 	movx	@dptr,a
      003284 74 07            [12] 5727 	mov	a,#(_receiveDataBuffer >> 8)
      003286 A3               [24] 5728 	inc	dptr
      003287 F0               [24] 5729 	movx	@dptr,a
      003288 75 82 07         [24] 5730 	mov	dpl,#0x07
      00328B C0 05            [24] 5731 	push	ar5
      00328D 12 3E 44         [24] 5732 	lcall	_sendProtocolMSG
      003290 D0 05            [24] 5733 	pop	ar5
                                   5734 ;	USBHost.c:757: parseHIDDeviceReport(receiveDataBuffer, len, CurrentDevive);
      003292 90 0A 28         [24] 5735 	mov	dptr,#_getHIDDeviceReport_len_65536_149
      003295 E0               [24] 5736 	movx	a,@dptr
      003296 FE               [12] 5737 	mov	r6,a
      003297 A3               [24] 5738 	inc	dptr
      003298 E0               [24] 5739 	movx	a,@dptr
      003299 FF               [12] 5740 	mov	r7,a
      00329A 90 0A 18         [24] 5741 	mov	dptr,#_parseHIDDeviceReport_PARM_2
      00329D EE               [12] 5742 	mov	a,r6
      00329E F0               [24] 5743 	movx	@dptr,a
      00329F EF               [12] 5744 	mov	a,r7
      0032A0 A3               [24] 5745 	inc	dptr
      0032A1 F0               [24] 5746 	movx	@dptr,a
      0032A2 90 0A 1A         [24] 5747 	mov	dptr,#_parseHIDDeviceReport_PARM_3
      0032A5 ED               [12] 5748 	mov	a,r5
      0032A6 F0               [24] 5749 	movx	@dptr,a
      0032A7 90 07 83         [24] 5750 	mov	dptr,#_receiveDataBuffer
      0032AA 12 25 BE         [24] 5751 	lcall	_parseHIDDeviceReport
                                   5752 ;	USBHost.c:758: return (ERR_SUCCESS);
      0032AD 75 82 00         [24] 5753 	mov	dpl,#0x00
                                   5754 ;	USBHost.c:759: }
      0032B0 22               [24] 5755 	ret
                                   5756 ;------------------------------------------------------------
                                   5757 ;Allocation info for local variables in function 'readInterface'
                                   5758 ;------------------------------------------------------------
                                   5759 ;interface                 Allocated with name '_readInterface_PARM_2'
                                   5760 ;rootHubIndex              Allocated with name '_readInterface_rootHubIndex_65536_152'
                                   5761 ;------------------------------------------------------------
                                   5762 ;	USBHost.c:761: void readInterface(unsigned char rootHubIndex, PXUSB_ITF_DESCR interface)
                                   5763 ;	-----------------------------------------
                                   5764 ;	 function readInterface
                                   5765 ;	-----------------------------------------
      0032B1                       5766 _readInterface:
                                   5767 ;	USBHost.c:765: DEBUG_OUT("Interface %d\n", interface->bInterfaceNumber);
      0032B1 90 0A 2A         [24] 5768 	mov	dptr,#_readInterface_PARM_2
      0032B4 E0               [24] 5769 	movx	a,@dptr
      0032B5 FE               [12] 5770 	mov	r6,a
      0032B6 A3               [24] 5771 	inc	dptr
      0032B7 E0               [24] 5772 	movx	a,@dptr
      0032B8 FF               [12] 5773 	mov	r7,a
      0032B9 8E 82            [24] 5774 	mov	dpl,r6
      0032BB 8F 83            [24] 5775 	mov	dph,r7
      0032BD A3               [24] 5776 	inc	dptr
      0032BE A3               [24] 5777 	inc	dptr
      0032BF E0               [24] 5778 	movx	a,@dptr
      0032C0 FD               [12] 5779 	mov	r5,a
      0032C1 7C 00            [12] 5780 	mov	r4,#0x00
      0032C3 C0 07            [24] 5781 	push	ar7
      0032C5 C0 06            [24] 5782 	push	ar6
      0032C7 C0 05            [24] 5783 	push	ar5
      0032C9 C0 04            [24] 5784 	push	ar4
      0032CB 74 1B            [12] 5785 	mov	a,#___str_52
      0032CD C0 E0            [24] 5786 	push	acc
      0032CF 74 50            [12] 5787 	mov	a,#(___str_52 >> 8)
      0032D1 C0 E0            [24] 5788 	push	acc
      0032D3 74 80            [12] 5789 	mov	a,#0x80
      0032D5 C0 E0            [24] 5790 	push	acc
      0032D7 12 41 F8         [24] 5791 	lcall	_printf
      0032DA E5 81            [12] 5792 	mov	a,sp
      0032DC 24 FB            [12] 5793 	add	a,#0xfb
      0032DE F5 81            [12] 5794 	mov	sp,a
      0032E0 D0 06            [24] 5795 	pop	ar6
      0032E2 D0 07            [24] 5796 	pop	ar7
                                   5797 ;	USBHost.c:766: DEBUG_OUT("  Class %d\n", interface->bInterfaceClass);
      0032E4 8E 82            [24] 5798 	mov	dpl,r6
      0032E6 8F 83            [24] 5799 	mov	dph,r7
      0032E8 A3               [24] 5800 	inc	dptr
      0032E9 A3               [24] 5801 	inc	dptr
      0032EA A3               [24] 5802 	inc	dptr
      0032EB A3               [24] 5803 	inc	dptr
      0032EC A3               [24] 5804 	inc	dptr
      0032ED E0               [24] 5805 	movx	a,@dptr
      0032EE FD               [12] 5806 	mov	r5,a
      0032EF 7C 00            [12] 5807 	mov	r4,#0x00
      0032F1 C0 07            [24] 5808 	push	ar7
      0032F3 C0 06            [24] 5809 	push	ar6
      0032F5 C0 05            [24] 5810 	push	ar5
      0032F7 C0 04            [24] 5811 	push	ar4
      0032F9 74 29            [12] 5812 	mov	a,#___str_53
      0032FB C0 E0            [24] 5813 	push	acc
      0032FD 74 50            [12] 5814 	mov	a,#(___str_53 >> 8)
      0032FF C0 E0            [24] 5815 	push	acc
      003301 74 80            [12] 5816 	mov	a,#0x80
      003303 C0 E0            [24] 5817 	push	acc
      003305 12 41 F8         [24] 5818 	lcall	_printf
      003308 E5 81            [12] 5819 	mov	a,sp
      00330A 24 FB            [12] 5820 	add	a,#0xfb
      00330C F5 81            [12] 5821 	mov	sp,a
      00330E D0 06            [24] 5822 	pop	ar6
      003310 D0 07            [24] 5823 	pop	ar7
                                   5824 ;	USBHost.c:767: DEBUG_OUT("  Sub Class %d\n", interface->bInterfaceSubClass);
      003312 74 06            [12] 5825 	mov	a,#0x06
      003314 2E               [12] 5826 	add	a,r6
      003315 F5 82            [12] 5827 	mov	dpl,a
      003317 E4               [12] 5828 	clr	a
      003318 3F               [12] 5829 	addc	a,r7
      003319 F5 83            [12] 5830 	mov	dph,a
      00331B E0               [24] 5831 	movx	a,@dptr
      00331C FD               [12] 5832 	mov	r5,a
      00331D 7C 00            [12] 5833 	mov	r4,#0x00
      00331F C0 07            [24] 5834 	push	ar7
      003321 C0 06            [24] 5835 	push	ar6
      003323 C0 05            [24] 5836 	push	ar5
      003325 C0 04            [24] 5837 	push	ar4
      003327 74 35            [12] 5838 	mov	a,#___str_54
      003329 C0 E0            [24] 5839 	push	acc
      00332B 74 50            [12] 5840 	mov	a,#(___str_54 >> 8)
      00332D C0 E0            [24] 5841 	push	acc
      00332F 74 80            [12] 5842 	mov	a,#0x80
      003331 C0 E0            [24] 5843 	push	acc
      003333 12 41 F8         [24] 5844 	lcall	_printf
      003336 E5 81            [12] 5845 	mov	a,sp
      003338 24 FB            [12] 5846 	add	a,#0xfb
      00333A F5 81            [12] 5847 	mov	sp,a
      00333C D0 06            [24] 5848 	pop	ar6
      00333E D0 07            [24] 5849 	pop	ar7
                                   5850 ;	USBHost.c:768: DEBUG_OUT("  Interface Protocol %d\n", interface->bInterfaceProtocol);
      003340 74 07            [12] 5851 	mov	a,#0x07
      003342 2E               [12] 5852 	add	a,r6
      003343 F5 82            [12] 5853 	mov	dpl,a
      003345 E4               [12] 5854 	clr	a
      003346 3F               [12] 5855 	addc	a,r7
      003347 F5 83            [12] 5856 	mov	dph,a
      003349 E0               [24] 5857 	movx	a,@dptr
      00334A FF               [12] 5858 	mov	r7,a
      00334B 7E 00            [12] 5859 	mov	r6,#0x00
      00334D C0 07            [24] 5860 	push	ar7
      00334F C0 06            [24] 5861 	push	ar6
      003351 74 45            [12] 5862 	mov	a,#___str_55
      003353 C0 E0            [24] 5863 	push	acc
      003355 74 50            [12] 5864 	mov	a,#(___str_55 >> 8)
      003357 C0 E0            [24] 5865 	push	acc
      003359 74 80            [12] 5866 	mov	a,#0x80
      00335B C0 E0            [24] 5867 	push	acc
      00335D 12 41 F8         [24] 5868 	lcall	_printf
      003360 E5 81            [12] 5869 	mov	a,sp
      003362 24 FB            [12] 5870 	add	a,#0xfb
      003364 F5 81            [12] 5871 	mov	sp,a
                                   5872 ;	USBHost.c:769: }
      003366 22               [24] 5873 	ret
                                   5874 ;------------------------------------------------------------
                                   5875 ;Allocation info for local variables in function 'readHIDInterface'
                                   5876 ;------------------------------------------------------------
                                   5877 ;descriptor                Allocated with name '_readHIDInterface_PARM_2'
                                   5878 ;interface                 Allocated with name '_readHIDInterface_interface_65536_154'
                                   5879 ;------------------------------------------------------------
                                   5880 ;	USBHost.c:771: void readHIDInterface(PXUSB_ITF_DESCR interface, PXUSB_HID_DESCR descriptor)
                                   5881 ;	-----------------------------------------
                                   5882 ;	 function readHIDInterface
                                   5883 ;	-----------------------------------------
      003367                       5884 _readHIDInterface:
      003367 AF 83            [24] 5885 	mov	r7,dph
      003369 E5 82            [12] 5886 	mov	a,dpl
      00336B 90 0A 2E         [24] 5887 	mov	dptr,#_readHIDInterface_interface_65536_154
      00336E F0               [24] 5888 	movx	@dptr,a
      00336F EF               [12] 5889 	mov	a,r7
      003370 A3               [24] 5890 	inc	dptr
      003371 F0               [24] 5891 	movx	@dptr,a
                                   5892 ;	USBHost.c:775: DEBUG_OUT("HID at Interface %d\n", interface->bInterfaceNumber);
      003372 90 0A 2E         [24] 5893 	mov	dptr,#_readHIDInterface_interface_65536_154
      003375 E0               [24] 5894 	movx	a,@dptr
      003376 FE               [12] 5895 	mov	r6,a
      003377 A3               [24] 5896 	inc	dptr
      003378 E0               [24] 5897 	movx	a,@dptr
      003379 FF               [12] 5898 	mov	r7,a
      00337A 8E 82            [24] 5899 	mov	dpl,r6
      00337C 8F 83            [24] 5900 	mov	dph,r7
      00337E A3               [24] 5901 	inc	dptr
      00337F A3               [24] 5902 	inc	dptr
      003380 E0               [24] 5903 	movx	a,@dptr
      003381 FF               [12] 5904 	mov	r7,a
      003382 7E 00            [12] 5905 	mov	r6,#0x00
      003384 C0 07            [24] 5906 	push	ar7
      003386 C0 06            [24] 5907 	push	ar6
      003388 74 5E            [12] 5908 	mov	a,#___str_56
      00338A C0 E0            [24] 5909 	push	acc
      00338C 74 50            [12] 5910 	mov	a,#(___str_56 >> 8)
      00338E C0 E0            [24] 5911 	push	acc
      003390 74 80            [12] 5912 	mov	a,#0x80
      003392 C0 E0            [24] 5913 	push	acc
      003394 12 41 F8         [24] 5914 	lcall	_printf
      003397 E5 81            [12] 5915 	mov	a,sp
      003399 24 FB            [12] 5916 	add	a,#0xfb
      00339B F5 81            [12] 5917 	mov	sp,a
                                   5918 ;	USBHost.c:776: DEBUG_OUT("  USB %d.%d%d\n", (descriptor->bcdHIDH & 15), (descriptor->bcdHIDL >> 4), (descriptor->bcdHIDL & 15));
      00339D 90 0A 2C         [24] 5919 	mov	dptr,#_readHIDInterface_PARM_2
      0033A0 E0               [24] 5920 	movx	a,@dptr
      0033A1 FE               [12] 5921 	mov	r6,a
      0033A2 A3               [24] 5922 	inc	dptr
      0033A3 E0               [24] 5923 	movx	a,@dptr
      0033A4 FF               [12] 5924 	mov	r7,a
      0033A5 8E 82            [24] 5925 	mov	dpl,r6
      0033A7 8F 83            [24] 5926 	mov	dph,r7
      0033A9 A3               [24] 5927 	inc	dptr
      0033AA A3               [24] 5928 	inc	dptr
      0033AB E0               [24] 5929 	movx	a,@dptr
      0033AC FD               [12] 5930 	mov	r5,a
      0033AD FB               [12] 5931 	mov	r3,a
      0033AE 53 03 0F         [24] 5932 	anl	ar3,#0x0f
      0033B1 7C 00            [12] 5933 	mov	r4,#0x00
      0033B3 ED               [12] 5934 	mov	a,r5
      0033B4 C4               [12] 5935 	swap	a
      0033B5 54 0F            [12] 5936 	anl	a,#0x0f
      0033B7 FD               [12] 5937 	mov	r5,a
      0033B8 7A 00            [12] 5938 	mov	r2,#0x00
      0033BA 8E 82            [24] 5939 	mov	dpl,r6
      0033BC 8F 83            [24] 5940 	mov	dph,r7
      0033BE A3               [24] 5941 	inc	dptr
      0033BF A3               [24] 5942 	inc	dptr
      0033C0 A3               [24] 5943 	inc	dptr
      0033C1 E0               [24] 5944 	movx	a,@dptr
      0033C2 F8               [12] 5945 	mov	r0,a
      0033C3 53 00 0F         [24] 5946 	anl	ar0,#0x0f
      0033C6 79 00            [12] 5947 	mov	r1,#0x00
      0033C8 C0 07            [24] 5948 	push	ar7
      0033CA C0 06            [24] 5949 	push	ar6
      0033CC C0 03            [24] 5950 	push	ar3
      0033CE C0 04            [24] 5951 	push	ar4
      0033D0 C0 05            [24] 5952 	push	ar5
      0033D2 C0 02            [24] 5953 	push	ar2
      0033D4 C0 00            [24] 5954 	push	ar0
      0033D6 C0 01            [24] 5955 	push	ar1
      0033D8 74 73            [12] 5956 	mov	a,#___str_57
      0033DA C0 E0            [24] 5957 	push	acc
      0033DC 74 50            [12] 5958 	mov	a,#(___str_57 >> 8)
      0033DE C0 E0            [24] 5959 	push	acc
      0033E0 74 80            [12] 5960 	mov	a,#0x80
      0033E2 C0 E0            [24] 5961 	push	acc
      0033E4 12 41 F8         [24] 5962 	lcall	_printf
      0033E7 E5 81            [12] 5963 	mov	a,sp
      0033E9 24 F7            [12] 5964 	add	a,#0xf7
      0033EB F5 81            [12] 5965 	mov	sp,a
      0033ED D0 06            [24] 5966 	pop	ar6
      0033EF D0 07            [24] 5967 	pop	ar7
                                   5968 ;	USBHost.c:777: DEBUG_OUT("  Country code 0x%02X\n", descriptor->bCountryCode);
      0033F1 8E 82            [24] 5969 	mov	dpl,r6
      0033F3 8F 83            [24] 5970 	mov	dph,r7
      0033F5 A3               [24] 5971 	inc	dptr
      0033F6 A3               [24] 5972 	inc	dptr
      0033F7 A3               [24] 5973 	inc	dptr
      0033F8 A3               [24] 5974 	inc	dptr
      0033F9 E0               [24] 5975 	movx	a,@dptr
      0033FA FD               [12] 5976 	mov	r5,a
      0033FB 7C 00            [12] 5977 	mov	r4,#0x00
      0033FD C0 07            [24] 5978 	push	ar7
      0033FF C0 06            [24] 5979 	push	ar6
      003401 C0 05            [24] 5980 	push	ar5
      003403 C0 04            [24] 5981 	push	ar4
      003405 74 82            [12] 5982 	mov	a,#___str_58
      003407 C0 E0            [24] 5983 	push	acc
      003409 74 50            [12] 5984 	mov	a,#(___str_58 >> 8)
      00340B C0 E0            [24] 5985 	push	acc
      00340D 74 80            [12] 5986 	mov	a,#0x80
      00340F C0 E0            [24] 5987 	push	acc
      003411 12 41 F8         [24] 5988 	lcall	_printf
      003414 E5 81            [12] 5989 	mov	a,sp
      003416 24 FB            [12] 5990 	add	a,#0xfb
      003418 F5 81            [12] 5991 	mov	sp,a
      00341A D0 06            [24] 5992 	pop	ar6
      00341C D0 07            [24] 5993 	pop	ar7
                                   5994 ;	USBHost.c:778: DEBUG_OUT("  TypeX 0x%02X\n", descriptor->bDescriptorTypeX);
      00341E 74 06            [12] 5995 	mov	a,#0x06
      003420 2E               [12] 5996 	add	a,r6
      003421 F5 82            [12] 5997 	mov	dpl,a
      003423 E4               [12] 5998 	clr	a
      003424 3F               [12] 5999 	addc	a,r7
      003425 F5 83            [12] 6000 	mov	dph,a
      003427 E0               [24] 6001 	movx	a,@dptr
      003428 FF               [12] 6002 	mov	r7,a
      003429 7E 00            [12] 6003 	mov	r6,#0x00
      00342B C0 07            [24] 6004 	push	ar7
      00342D C0 06            [24] 6005 	push	ar6
      00342F 74 99            [12] 6006 	mov	a,#___str_59
      003431 C0 E0            [24] 6007 	push	acc
      003433 74 50            [12] 6008 	mov	a,#(___str_59 >> 8)
      003435 C0 E0            [24] 6009 	push	acc
      003437 74 80            [12] 6010 	mov	a,#0x80
      003439 C0 E0            [24] 6011 	push	acc
      00343B 12 41 F8         [24] 6012 	lcall	_printf
      00343E E5 81            [12] 6013 	mov	a,sp
      003440 24 FB            [12] 6014 	add	a,#0xfb
      003442 F5 81            [12] 6015 	mov	sp,a
                                   6016 ;	USBHost.c:779: }
      003444 22               [24] 6017 	ret
                                   6018 ;------------------------------------------------------------
                                   6019 ;Allocation info for local variables in function 'readEndpoint'
                                   6020 ;------------------------------------------------------------
                                   6021 ;	USBHost.c:781: void readEndpoint()
                                   6022 ;	-----------------------------------------
                                   6023 ;	 function readEndpoint
                                   6024 ;	-----------------------------------------
      003445                       6025 _readEndpoint:
                                   6026 ;	USBHost.c:783: }
      003445 22               [24] 6027 	ret
                                   6028 ;------------------------------------------------------------
                                   6029 ;Allocation info for local variables in function 'initializeRootHubConnection'
                                   6030 ;------------------------------------------------------------
                                   6031 ;sloc0                     Allocated with name '_initializeRootHubConnection_sloc0_1_0'
                                   6032 ;sloc1                     Allocated with name '_initializeRootHubConnection_sloc1_1_0'
                                   6033 ;sloc2                     Allocated with name '_initializeRootHubConnection_sloc2_1_0'
                                   6034 ;sloc3                     Allocated with name '_initializeRootHubConnection_sloc3_1_0'
                                   6035 ;sloc4                     Allocated with name '_initializeRootHubConnection_sloc4_1_0'
                                   6036 ;sloc5                     Allocated with name '_initializeRootHubConnection_sloc5_1_0'
                                   6037 ;sloc6                     Allocated with name '_initializeRootHubConnection_sloc6_1_0'
                                   6038 ;sloc7                     Allocated with name '_initializeRootHubConnection_sloc7_1_0'
                                   6039 ;sloc8                     Allocated with name '_initializeRootHubConnection_sloc8_1_0'
                                   6040 ;rootHubIndex              Allocated with name '_initializeRootHubConnection_rootHubIndex_65536_158'
                                   6041 ;retry                     Allocated with name '_initializeRootHubConnection_retry_65536_159'
                                   6042 ;i                         Allocated with name '_initializeRootHubConnection_i_65536_159'
                                   6043 ;s                         Allocated with name '_initializeRootHubConnection_s_65536_159'
                                   6044 ;cfg                       Allocated with name '_initializeRootHubConnection_cfg_65536_159'
                                   6045 ;dv_cls                    Allocated with name '_initializeRootHubConnection_dv_cls_65536_159'
                                   6046 ;addr                      Allocated with name '_initializeRootHubConnection_addr_65536_159'
                                   6047 ;HIDDevice                 Allocated with name '_initializeRootHubConnection_HIDDevice_65536_159'
                                   6048 ;i                         Allocated with name '_initializeRootHubConnection_i_458753_170'
                                   6049 ;total                     Allocated with name '_initializeRootHubConnection_total_458753_170'
                                   6050 ;temp                      Allocated with name '_initializeRootHubConnection_temp_458753_170'
                                   6051 ;currentInterface          Allocated with name '_initializeRootHubConnection_currentInterface_458753_170'
                                   6052 ;interfaces                Allocated with name '_initializeRootHubConnection_interfaces_458753_170'
                                   6053 ;desc                      Allocated with name '_initializeRootHubConnection_desc_524289_174'
                                   6054 ;d                         Allocated with name '_initializeRootHubConnection_d_655361_176'
                                   6055 ;hiddevice                 Allocated with name '_initializeRootHubConnection_hiddevice_720897_177'
                                   6056 ;------------------------------------------------------------
                                   6057 ;	USBHost.c:785: unsigned char initializeRootHubConnection(unsigned char rootHubIndex)
                                   6058 ;	-----------------------------------------
                                   6059 ;	 function initializeRootHubConnection
                                   6060 ;	-----------------------------------------
      003446                       6061 _initializeRootHubConnection:
      003446 E5 82            [12] 6062 	mov	a,dpl
      003448 90 0A 30         [24] 6063 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
      00344B F0               [24] 6064 	movx	@dptr,a
                                   6065 ;	USBHost.c:787: unsigned char retry, i, s = ERR_SUCCESS, cfg, dv_cls, addr;
      00344C 90 0A 31         [24] 6066 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      00344F E4               [12] 6067 	clr	a
      003450 F0               [24] 6068 	movx	@dptr,a
                                   6069 ;	USBHost.c:790: for(retry = 0; retry < 10; retry++) //todo test fewer retries
      003451 90 0A 30         [24] 6070 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
      003454 E0               [24] 6071 	movx	a,@dptr
      003455 FF               [12] 6072 	mov	r7,a
      003456 FE               [12] 6073 	mov	r6,a
      003457 FD               [12] 6074 	mov	r5,a
      003458 75 F0 03         [24] 6075 	mov	b,#0x03
      00345B A4               [48] 6076 	mul	ab
      00345C F5 43            [12] 6077 	mov	_initializeRootHubConnection_sloc0_1_0,a
      00345E 85 F0 44         [24] 6078 	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),b
      003461 8F 48            [24] 6079 	mov	_initializeRootHubConnection_sloc3_1_0,r7
      003463 75 47 00         [24] 6080 	mov	_initializeRootHubConnection_sloc2_1_0,#0x00
      003466                       6081 00147$:
                                   6082 ;	USBHost.c:792: delay( 100 );
      003466 90 00 64         [24] 6083 	mov	dptr,#0x0064
      003469 C0 07            [24] 6084 	push	ar7
      00346B C0 06            [24] 6085 	push	ar6
      00346D C0 05            [24] 6086 	push	ar5
      00346F 12 17 A9         [24] 6087 	lcall	_delay
                                   6088 ;	USBHost.c:793: delay(100); //todo test lower delay
      003472 90 00 64         [24] 6089 	mov	dptr,#0x0064
      003475 12 17 A9         [24] 6090 	lcall	_delay
                                   6091 ;	USBHost.c:794: resetHubDevices(rootHubIndex);
      003478 85 48 82         [24] 6092 	mov	dpl,_initializeRootHubConnection_sloc3_1_0
      00347B 12 23 75         [24] 6093 	lcall	_resetHubDevices
                                   6094 ;	USBHost.c:795: resetRootHubPort(rootHubIndex);                      
      00347E 85 48 82         [24] 6095 	mov	dpl,_initializeRootHubConnection_sloc3_1_0
      003481 12 18 7A         [24] 6096 	lcall	_resetRootHubPort
      003484 D0 05            [24] 6097 	pop	ar5
      003486 D0 06            [24] 6098 	pop	ar6
      003488 D0 07            [24] 6099 	pop	ar7
                                   6100 ;	USBHost.c:796: for (i = 0; i < 100; i++) //todo test fewer retries
      00348A 78 00            [12] 6101 	mov	r0,#0x00
      00348C                       6102 00137$:
                                   6103 ;	USBHost.c:798: delay(1);
      00348C 90 00 01         [24] 6104 	mov	dptr,#0x0001
      00348F C0 07            [24] 6105 	push	ar7
      003491 C0 06            [24] 6106 	push	ar6
      003493 C0 05            [24] 6107 	push	ar5
      003495 C0 00            [24] 6108 	push	ar0
      003497 12 17 A9         [24] 6109 	lcall	_delay
      00349A D0 00            [24] 6110 	pop	ar0
      00349C D0 05            [24] 6111 	pop	ar5
      00349E D0 06            [24] 6112 	pop	ar6
      0034A0 D0 07            [24] 6113 	pop	ar7
                                   6114 ;	USBHost.c:799: if (enableRootHubPort(rootHubIndex) == ERR_SUCCESS)  
      0034A2 8F 82            [24] 6115 	mov	dpl,r7
      0034A4 C0 07            [24] 6116 	push	ar7
      0034A6 C0 06            [24] 6117 	push	ar6
      0034A8 C0 05            [24] 6118 	push	ar5
      0034AA C0 00            [24] 6119 	push	ar0
      0034AC 12 18 CA         [24] 6120 	lcall	_enableRootHubPort
      0034AF E5 82            [12] 6121 	mov	a,dpl
      0034B1 D0 00            [24] 6122 	pop	ar0
      0034B3 D0 05            [24] 6123 	pop	ar5
      0034B5 D0 06            [24] 6124 	pop	ar6
      0034B7 D0 07            [24] 6125 	pop	ar7
      0034B9 60 06            [24] 6126 	jz	00103$
                                   6127 ;	USBHost.c:796: for (i = 0; i < 100; i++) //todo test fewer retries
      0034BB 08               [12] 6128 	inc	r0
      0034BC B8 64 00         [24] 6129 	cjne	r0,#0x64,00255$
      0034BF                       6130 00255$:
      0034BF 40 CB            [24] 6131 	jc	00137$
      0034C1                       6132 00103$:
                                   6133 ;	USBHost.c:802: if (i == 100)                                              
      0034C1 B8 64 41         [24] 6134 	cjne	r0,#0x64,00105$
                                   6135 ;	USBHost.c:804: disableRootHubPort(rootHubIndex);
      0034C4 C0 05            [24] 6136 	push	ar5
      0034C6 8F 82            [24] 6137 	mov	dpl,r7
      0034C8 C0 07            [24] 6138 	push	ar7
      0034CA C0 06            [24] 6139 	push	ar6
      0034CC C0 05            [24] 6140 	push	ar5
      0034CE 12 17 E6         [24] 6141 	lcall	_disableRootHubPort
      0034D1 D0 05            [24] 6142 	pop	ar5
      0034D3 D0 06            [24] 6143 	pop	ar6
      0034D5 D0 07            [24] 6144 	pop	ar7
                                   6145 ;	USBHost.c:805: DEBUG_OUT("Failed to enable root hub port %i\n", rootHubIndex);
      0034D7 8F 00            [24] 6146 	mov	ar0,r7
      0034D9 7D 00            [12] 6147 	mov	r5,#0x00
      0034DB C0 07            [24] 6148 	push	ar7
      0034DD C0 06            [24] 6149 	push	ar6
      0034DF C0 05            [24] 6150 	push	ar5
      0034E1 C0 00            [24] 6151 	push	ar0
      0034E3 C0 05            [24] 6152 	push	ar5
      0034E5 74 A9            [12] 6153 	mov	a,#___str_60
      0034E7 C0 E0            [24] 6154 	push	acc
      0034E9 74 50            [12] 6155 	mov	a,#(___str_60 >> 8)
      0034EB C0 E0            [24] 6156 	push	acc
      0034ED 74 80            [12] 6157 	mov	a,#0x80
      0034EF C0 E0            [24] 6158 	push	acc
      0034F1 12 41 F8         [24] 6159 	lcall	_printf
      0034F4 E5 81            [12] 6160 	mov	a,sp
      0034F6 24 FB            [12] 6161 	add	a,#0xfb
      0034F8 F5 81            [12] 6162 	mov	sp,a
      0034FA D0 05            [24] 6163 	pop	ar5
      0034FC D0 06            [24] 6164 	pop	ar6
      0034FE D0 07            [24] 6165 	pop	ar7
                                   6166 ;	USBHost.c:806: continue;
      003500 D0 05            [24] 6167 	pop	ar5
      003502 02 3B 7D         [24] 6168 	ljmp	00135$
      003505                       6169 00105$:
                                   6170 ;	USBHost.c:809: selectHubPort(rootHubIndex, 0);
      003505 C0 05            [24] 6171 	push	ar5
      003507 90 09 8E         [24] 6172 	mov	dptr,#_selectHubPort_PARM_2
      00350A E4               [12] 6173 	clr	a
      00350B F0               [24] 6174 	movx	@dptr,a
      00350C 8E 82            [24] 6175 	mov	dpl,r6
      00350E C0 07            [24] 6176 	push	ar7
      003510 C0 06            [24] 6177 	push	ar6
      003512 C0 05            [24] 6178 	push	ar5
      003514 12 19 8C         [24] 6179 	lcall	_selectHubPort
      003517 D0 05            [24] 6180 	pop	ar5
      003519 D0 06            [24] 6181 	pop	ar6
                                   6182 ;	USBHost.c:810: DEBUG_OUT("root hub port %i enabled\n", rootHubIndex);
      00351B 8E 00            [24] 6183 	mov	ar0,r6
      00351D 7D 00            [12] 6184 	mov	r5,#0x00
      00351F C0 06            [24] 6185 	push	ar6
      003521 C0 05            [24] 6186 	push	ar5
      003523 C0 00            [24] 6187 	push	ar0
      003525 C0 05            [24] 6188 	push	ar5
      003527 74 CC            [12] 6189 	mov	a,#___str_61
      003529 C0 E0            [24] 6190 	push	acc
      00352B 74 50            [12] 6191 	mov	a,#(___str_61 >> 8)
      00352D C0 E0            [24] 6192 	push	acc
      00352F 74 80            [12] 6193 	mov	a,#0x80
      003531 C0 E0            [24] 6194 	push	acc
      003533 12 41 F8         [24] 6195 	lcall	_printf
      003536 E5 81            [12] 6196 	mov	a,sp
      003538 24 FB            [12] 6197 	add	a,#0xfb
      00353A F5 81            [12] 6198 	mov	sp,a
      00353C D0 05            [24] 6199 	pop	ar5
                                   6200 ;	USBHost.c:811: s = getDeviceDescriptor();
      00353E 12 1F C7         [24] 6201 	lcall	_getDeviceDescriptor
      003541 AD 82            [24] 6202 	mov	r5,dpl
      003543 D0 06            [24] 6203 	pop	ar6
      003545 D0 07            [24] 6204 	pop	ar7
      003547 90 0A 31         [24] 6205 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      00354A ED               [12] 6206 	mov	a,r5
      00354B F0               [24] 6207 	movx	@dptr,a
                                   6208 ;	USBHost.c:813: if ( s == ERR_SUCCESS )
      00354C ED               [12] 6209 	mov	a,r5
      00354D D0 05            [24] 6210 	pop	ar5
      00354F 60 03            [24] 6211 	jz	00259$
      003551 02 3B 0C         [24] 6212 	ljmp	00134$
      003554                       6213 00259$:
                                   6214 ;	USBHost.c:815: dv_cls = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bDeviceClass;
      003554 C0 05            [24] 6215 	push	ar5
      003556 90 07 87         [24] 6216 	mov	dptr,#(_receiveDataBuffer + 0x0004)
      003559 E0               [24] 6217 	movx	a,@dptr
      00355A F8               [12] 6218 	mov	r0,a
                                   6219 ;	USBHost.c:816: DEBUG_OUT( "Device class %i\n", dv_cls);
      00355B 7D 00            [12] 6220 	mov	r5,#0x00
      00355D C0 07            [24] 6221 	push	ar7
      00355F C0 06            [24] 6222 	push	ar6
      003561 C0 05            [24] 6223 	push	ar5
      003563 C0 00            [24] 6224 	push	ar0
      003565 C0 05            [24] 6225 	push	ar5
      003567 74 E6            [12] 6226 	mov	a,#___str_62
      003569 C0 E0            [24] 6227 	push	acc
      00356B 74 50            [12] 6228 	mov	a,#(___str_62 >> 8)
      00356D C0 E0            [24] 6229 	push	acc
      00356F 74 80            [12] 6230 	mov	a,#0x80
      003571 C0 E0            [24] 6231 	push	acc
      003573 12 41 F8         [24] 6232 	lcall	_printf
      003576 E5 81            [12] 6233 	mov	a,sp
      003578 24 FB            [12] 6234 	add	a,#0xfb
      00357A F5 81            [12] 6235 	mov	sp,a
      00357C D0 05            [24] 6236 	pop	ar5
                                   6237 ;	USBHost.c:817: DEBUG_OUT( "Max packet size %i\n", ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0);
      00357E 90 07 8A         [24] 6238 	mov	dptr,#(_receiveDataBuffer + 0x0007)
      003581 E0               [24] 6239 	movx	a,@dptr
      003582 F8               [12] 6240 	mov	r0,a
      003583 7D 00            [12] 6241 	mov	r5,#0x00
      003585 C0 05            [24] 6242 	push	ar5
      003587 C0 00            [24] 6243 	push	ar0
      003589 C0 05            [24] 6244 	push	ar5
      00358B 74 F7            [12] 6245 	mov	a,#___str_63
      00358D C0 E0            [24] 6246 	push	acc
      00358F 74 50            [12] 6247 	mov	a,#(___str_63 >> 8)
      003591 C0 E0            [24] 6248 	push	acc
      003593 74 80            [12] 6249 	mov	a,#0x80
      003595 C0 E0            [24] 6250 	push	acc
      003597 12 41 F8         [24] 6251 	lcall	_printf
      00359A E5 81            [12] 6252 	mov	a,sp
      00359C 24 FB            [12] 6253 	add	a,#0xfb
      00359E F5 81            [12] 6254 	mov	sp,a
      0035A0 D0 05            [24] 6255 	pop	ar5
      0035A2 D0 06            [24] 6256 	pop	ar6
                                   6257 ;	USBHost.c:818: VendorProductID[rootHubIndex].idVendorL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorL;
      0035A4 EE               [12] 6258 	mov	a,r6
      0035A5 75 F0 10         [24] 6259 	mov	b,#0x10
      0035A8 A4               [48] 6260 	mul	ab
      0035A9 F8               [12] 6261 	mov	r0,a
      0035AA AD F0            [24] 6262 	mov	r5,b
      0035AC 24 F6            [12] 6263 	add	a,#_VendorProductID
      0035AE F5 45            [12] 6264 	mov	_initializeRootHubConnection_sloc1_1_0,a
      0035B0 ED               [12] 6265 	mov	a,r5
      0035B1 34 09            [12] 6266 	addc	a,#(_VendorProductID >> 8)
      0035B3 F5 46            [12] 6267 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      0035B5 90 07 8B         [24] 6268 	mov	dptr,#(_receiveDataBuffer + 0x0008)
      0035B8 E0               [24] 6269 	movx	a,@dptr
      0035B9 F9               [12] 6270 	mov	r1,a
      0035BA 7A 00            [12] 6271 	mov	r2,#0x00
      0035BC 7B 00            [12] 6272 	mov	r3,#0x00
      0035BE 7C 00            [12] 6273 	mov	r4,#0x00
      0035C0 85 45 82         [24] 6274 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      0035C3 85 46 83         [24] 6275 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      0035C6 E9               [12] 6276 	mov	a,r1
      0035C7 F0               [24] 6277 	movx	@dptr,a
      0035C8 EA               [12] 6278 	mov	a,r2
      0035C9 A3               [24] 6279 	inc	dptr
      0035CA F0               [24] 6280 	movx	@dptr,a
      0035CB EB               [12] 6281 	mov	a,r3
      0035CC A3               [24] 6282 	inc	dptr
      0035CD F0               [24] 6283 	movx	@dptr,a
      0035CE EC               [12] 6284 	mov	a,r4
      0035CF A3               [24] 6285 	inc	dptr
      0035D0 F0               [24] 6286 	movx	@dptr,a
                                   6287 ;	USBHost.c:819: VendorProductID[rootHubIndex].idVendorH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorH;
      0035D1 E8               [12] 6288 	mov	a,r0
      0035D2 24 F6            [12] 6289 	add	a,#_VendorProductID
      0035D4 F8               [12] 6290 	mov	r0,a
      0035D5 ED               [12] 6291 	mov	a,r5
      0035D6 34 09            [12] 6292 	addc	a,#(_VendorProductID >> 8)
      0035D8 FD               [12] 6293 	mov	r5,a
      0035D9 74 04            [12] 6294 	mov	a,#0x04
      0035DB 28               [12] 6295 	add	a,r0
      0035DC F5 45            [12] 6296 	mov	_initializeRootHubConnection_sloc1_1_0,a
      0035DE E4               [12] 6297 	clr	a
      0035DF 3D               [12] 6298 	addc	a,r5
      0035E0 F5 46            [12] 6299 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      0035E2 90 07 8C         [24] 6300 	mov	dptr,#(_receiveDataBuffer + 0x0009)
      0035E5 E0               [24] 6301 	movx	a,@dptr
      0035E6 F9               [12] 6302 	mov	r1,a
      0035E7 7A 00            [12] 6303 	mov	r2,#0x00
      0035E9 7B 00            [12] 6304 	mov	r3,#0x00
      0035EB 7C 00            [12] 6305 	mov	r4,#0x00
      0035ED 85 45 82         [24] 6306 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      0035F0 85 46 83         [24] 6307 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      0035F3 E9               [12] 6308 	mov	a,r1
      0035F4 F0               [24] 6309 	movx	@dptr,a
      0035F5 EA               [12] 6310 	mov	a,r2
      0035F6 A3               [24] 6311 	inc	dptr
      0035F7 F0               [24] 6312 	movx	@dptr,a
      0035F8 EB               [12] 6313 	mov	a,r3
      0035F9 A3               [24] 6314 	inc	dptr
      0035FA F0               [24] 6315 	movx	@dptr,a
      0035FB EC               [12] 6316 	mov	a,r4
      0035FC A3               [24] 6317 	inc	dptr
      0035FD F0               [24] 6318 	movx	@dptr,a
                                   6319 ;	USBHost.c:820: VendorProductID[rootHubIndex].idProductL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductL;
      0035FE 74 08            [12] 6320 	mov	a,#0x08
      003600 28               [12] 6321 	add	a,r0
      003601 F5 45            [12] 6322 	mov	_initializeRootHubConnection_sloc1_1_0,a
      003603 E4               [12] 6323 	clr	a
      003604 3D               [12] 6324 	addc	a,r5
      003605 F5 46            [12] 6325 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      003607 90 07 8D         [24] 6326 	mov	dptr,#(_receiveDataBuffer + 0x000a)
      00360A E0               [24] 6327 	movx	a,@dptr
      00360B F9               [12] 6328 	mov	r1,a
      00360C 7A 00            [12] 6329 	mov	r2,#0x00
      00360E 7B 00            [12] 6330 	mov	r3,#0x00
      003610 7C 00            [12] 6331 	mov	r4,#0x00
      003612 85 45 82         [24] 6332 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      003615 85 46 83         [24] 6333 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003618 E9               [12] 6334 	mov	a,r1
      003619 F0               [24] 6335 	movx	@dptr,a
      00361A EA               [12] 6336 	mov	a,r2
      00361B A3               [24] 6337 	inc	dptr
      00361C F0               [24] 6338 	movx	@dptr,a
      00361D EB               [12] 6339 	mov	a,r3
      00361E A3               [24] 6340 	inc	dptr
      00361F F0               [24] 6341 	movx	@dptr,a
      003620 EC               [12] 6342 	mov	a,r4
      003621 A3               [24] 6343 	inc	dptr
      003622 F0               [24] 6344 	movx	@dptr,a
                                   6345 ;	USBHost.c:821: VendorProductID[rootHubIndex].idProductH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductH;
      003623 74 0C            [12] 6346 	mov	a,#0x0c
      003625 28               [12] 6347 	add	a,r0
      003626 F8               [12] 6348 	mov	r0,a
      003627 E4               [12] 6349 	clr	a
      003628 3D               [12] 6350 	addc	a,r5
      003629 FD               [12] 6351 	mov	r5,a
      00362A 90 07 8E         [24] 6352 	mov	dptr,#(_receiveDataBuffer + 0x000b)
      00362D E0               [24] 6353 	movx	a,@dptr
      00362E F9               [12] 6354 	mov	r1,a
      00362F 7A 00            [12] 6355 	mov	r2,#0x00
      003631 7B 00            [12] 6356 	mov	r3,#0x00
      003633 7C 00            [12] 6357 	mov	r4,#0x00
      003635 88 82            [24] 6358 	mov	dpl,r0
      003637 8D 83            [24] 6359 	mov	dph,r5
      003639 E9               [12] 6360 	mov	a,r1
      00363A F0               [24] 6361 	movx	@dptr,a
      00363B EA               [12] 6362 	mov	a,r2
      00363C A3               [24] 6363 	inc	dptr
      00363D F0               [24] 6364 	movx	@dptr,a
      00363E EB               [12] 6365 	mov	a,r3
      00363F A3               [24] 6366 	inc	dptr
      003640 F0               [24] 6367 	movx	@dptr,a
      003641 EC               [12] 6368 	mov	a,r4
      003642 A3               [24] 6369 	inc	dptr
      003643 F0               [24] 6370 	movx	@dptr,a
                                   6371 ;	USBHost.c:822: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
      003644 90 07 83         [24] 6372 	mov	dptr,#_receiveDataBuffer
      003647 C0 06            [24] 6373 	push	ar6
      003649 C0 05            [24] 6374 	push	ar5
      00364B 12 22 29         [24] 6375 	lcall	_DEBUG_OUT_USB_BUFFER
      00364E D0 05            [24] 6376 	pop	ar5
      003650 D0 06            [24] 6377 	pop	ar6
                                   6378 ;	USBHost.c:823: addr = rootHubIndex + ((PUSB_SETUP_REQ)SetUSBAddressRequest)->wValueL; //todo wValue always 2.. does another id work?
      003652 90 4C 8E         [24] 6379 	mov	dptr,#(_SetUSBAddressRequest + 0x0002)
      003655 E4               [12] 6380 	clr	a
      003656 93               [24] 6381 	movc	a,@a+dptr
      003657 2E               [12] 6382 	add	a,r6
      003658 F5 45            [12] 6383 	mov	_initializeRootHubConnection_sloc1_1_0,a
                                   6384 ;	USBHost.c:824: s = setUsbAddress(addr);
      00365A 85 45 82         [24] 6385 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      00365D C0 06            [24] 6386 	push	ar6
      00365F 12 20 62         [24] 6387 	lcall	_setUsbAddress
      003662 AD 82            [24] 6388 	mov	r5,dpl
      003664 D0 06            [24] 6389 	pop	ar6
      003666 D0 07            [24] 6390 	pop	ar7
      003668 90 0A 31         [24] 6391 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      00366B ED               [12] 6392 	mov	a,r5
      00366C F0               [24] 6393 	movx	@dptr,a
                                   6394 ;	USBHost.c:825: if ( s == ERR_SUCCESS )
      00366D ED               [12] 6395 	mov	a,r5
      00366E D0 05            [24] 6396 	pop	ar5
      003670 60 03            [24] 6397 	jz	00260$
      003672 02 3B 0C         [24] 6398 	ljmp	00134$
      003675                       6399 00260$:
                                   6400 ;	USBHost.c:827: rootHubDevice[rootHubIndex].address = addr;
      003675 EE               [12] 6401 	mov	a,r6
      003676 75 F0 03         [24] 6402 	mov	b,#0x03
      003679 A4               [48] 6403 	mul	ab
      00367A 24 83            [12] 6404 	add	a,#_rootHubDevice
      00367C FB               [12] 6405 	mov	r3,a
      00367D 74 09            [12] 6406 	mov	a,#(_rootHubDevice >> 8)
      00367F 35 F0            [12] 6407 	addc	a,b
      003681 FC               [12] 6408 	mov	r4,a
      003682 8B 82            [24] 6409 	mov	dpl,r3
      003684 8C 83            [24] 6410 	mov	dph,r4
      003686 A3               [24] 6411 	inc	dptr
      003687 E5 45            [12] 6412 	mov	a,_initializeRootHubConnection_sloc1_1_0
      003689 F0               [24] 6413 	movx	@dptr,a
                                   6414 ;	USBHost.c:828: s = getDeviceString();
      00368A C0 07            [24] 6415 	push	ar7
      00368C C0 06            [24] 6416 	push	ar6
      00368E C0 05            [24] 6417 	push	ar5
      003690 12 20 FD         [24] 6418 	lcall	_getDeviceString
                                   6419 ;	USBHost.c:830: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
      003693 90 07 83         [24] 6420 	mov	dptr,#_receiveDataBuffer
      003696 12 22 29         [24] 6421 	lcall	_DEBUG_OUT_USB_BUFFER
      003699 D0 05            [24] 6422 	pop	ar5
      00369B D0 06            [24] 6423 	pop	ar6
                                   6424 ;	USBHost.c:831: if(convertStringDescriptor(receiveDataBuffer, receiveDataBuffer, RECEIVE_BUFFER_LEN,rootHubIndex))
      00369D 90 09 A9         [24] 6425 	mov	dptr,#_convertStringDescriptor_PARM_2
      0036A0 74 83            [12] 6426 	mov	a,#_receiveDataBuffer
      0036A2 F0               [24] 6427 	movx	@dptr,a
      0036A3 74 07            [12] 6428 	mov	a,#(_receiveDataBuffer >> 8)
      0036A5 A3               [24] 6429 	inc	dptr
      0036A6 F0               [24] 6430 	movx	@dptr,a
      0036A7 90 09 AB         [24] 6431 	mov	dptr,#_convertStringDescriptor_PARM_3
      0036AA E4               [12] 6432 	clr	a
      0036AB F0               [24] 6433 	movx	@dptr,a
      0036AC 74 02            [12] 6434 	mov	a,#0x02
      0036AE A3               [24] 6435 	inc	dptr
      0036AF F0               [24] 6436 	movx	@dptr,a
      0036B0 90 09 AD         [24] 6437 	mov	dptr,#_convertStringDescriptor_PARM_4
      0036B3 EE               [12] 6438 	mov	a,r6
      0036B4 F0               [24] 6439 	movx	@dptr,a
      0036B5 90 07 83         [24] 6440 	mov	dptr,#_receiveDataBuffer
      0036B8 C0 06            [24] 6441 	push	ar6
      0036BA C0 05            [24] 6442 	push	ar5
      0036BC 12 21 20         [24] 6443 	lcall	_convertStringDescriptor
      0036BF E5 82            [12] 6444 	mov	a,dpl
      0036C1 D0 05            [24] 6445 	pop	ar5
      0036C3 D0 06            [24] 6446 	pop	ar6
      0036C5 D0 07            [24] 6447 	pop	ar7
      0036C7 60 2C            [24] 6448 	jz	00107$
                                   6449 ;	USBHost.c:833: DEBUG_OUT("Device String: %s\n", receiveDataBuffer);
      0036C9 C0 07            [24] 6450 	push	ar7
      0036CB C0 06            [24] 6451 	push	ar6
      0036CD C0 05            [24] 6452 	push	ar5
      0036CF 74 83            [12] 6453 	mov	a,#_receiveDataBuffer
      0036D1 C0 E0            [24] 6454 	push	acc
      0036D3 74 07            [12] 6455 	mov	a,#(_receiveDataBuffer >> 8)
      0036D5 C0 E0            [24] 6456 	push	acc
      0036D7 E4               [12] 6457 	clr	a
      0036D8 C0 E0            [24] 6458 	push	acc
      0036DA 74 0B            [12] 6459 	mov	a,#___str_64
      0036DC C0 E0            [24] 6460 	push	acc
      0036DE 74 51            [12] 6461 	mov	a,#(___str_64 >> 8)
      0036E0 C0 E0            [24] 6462 	push	acc
      0036E2 74 80            [12] 6463 	mov	a,#0x80
      0036E4 C0 E0            [24] 6464 	push	acc
      0036E6 12 41 F8         [24] 6465 	lcall	_printf
      0036E9 E5 81            [12] 6466 	mov	a,sp
      0036EB 24 FA            [12] 6467 	add	a,#0xfa
      0036ED F5 81            [12] 6468 	mov	sp,a
      0036EF D0 05            [24] 6469 	pop	ar5
      0036F1 D0 06            [24] 6470 	pop	ar6
      0036F3 D0 07            [24] 6471 	pop	ar7
      0036F5                       6472 00107$:
                                   6473 ;	USBHost.c:835: s = getConfigurationDescriptor();
      0036F5 C0 07            [24] 6474 	push	ar7
      0036F7 C0 06            [24] 6475 	push	ar6
      0036F9 C0 05            [24] 6476 	push	ar5
      0036FB 12 22 A9         [24] 6477 	lcall	_getConfigurationDescriptor
      0036FE AC 82            [24] 6478 	mov	r4,dpl
      003700 D0 05            [24] 6479 	pop	ar5
      003702 D0 06            [24] 6480 	pop	ar6
      003704 D0 07            [24] 6481 	pop	ar7
      003706 90 0A 31         [24] 6482 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      003709 EC               [12] 6483 	mov	a,r4
      00370A F0               [24] 6484 	movx	@dptr,a
                                   6485 ;	USBHost.c:836: if ( s == ERR_SUCCESS )
      00370B EC               [12] 6486 	mov	a,r4
      00370C 60 03            [24] 6487 	jz	00262$
      00370E 02 3B 0C         [24] 6488 	ljmp	00134$
      003711                       6489 00262$:
                                   6490 ;	USBHost.c:838: sendProtocolMSG(MSG_TYPE_DEVICE_INFO, (receiveDataBuffer[2] + (receiveDataBuffer[3] << 8)), addr, rootHubIndex+1, 0xAA, receiveDataBuffer);
      003711 90 07 85         [24] 6491 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      003714 E0               [24] 6492 	movx	a,@dptr
      003715 FC               [12] 6493 	mov	r4,a
      003716 7B 00            [12] 6494 	mov	r3,#0x00
      003718 90 07 86         [24] 6495 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      00371B E0               [24] 6496 	movx	a,@dptr
      00371C FA               [12] 6497 	mov	r2,a
      00371D E4               [12] 6498 	clr	a
      00371E 2C               [12] 6499 	add	a,r4
      00371F FC               [12] 6500 	mov	r4,a
      003720 EA               [12] 6501 	mov	a,r2
      003721 3B               [12] 6502 	addc	a,r3
      003722 FB               [12] 6503 	mov	r3,a
      003723 90 0A 30         [24] 6504 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
      003726 E0               [24] 6505 	movx	a,@dptr
      003727 FA               [12] 6506 	mov	r2,a
      003728 0A               [12] 6507 	inc	r2
      003729 90 0C 7D         [24] 6508 	mov	dptr,#_sendProtocolMSG_PARM_2
      00372C EC               [12] 6509 	mov	a,r4
      00372D F0               [24] 6510 	movx	@dptr,a
      00372E EB               [12] 6511 	mov	a,r3
      00372F A3               [24] 6512 	inc	dptr
      003730 F0               [24] 6513 	movx	@dptr,a
      003731 90 0C 7F         [24] 6514 	mov	dptr,#_sendProtocolMSG_PARM_3
      003734 E5 45            [12] 6515 	mov	a,_initializeRootHubConnection_sloc1_1_0
      003736 F0               [24] 6516 	movx	@dptr,a
      003737 90 0C 80         [24] 6517 	mov	dptr,#_sendProtocolMSG_PARM_4
      00373A EA               [12] 6518 	mov	a,r2
      00373B F0               [24] 6519 	movx	@dptr,a
      00373C 90 0C 81         [24] 6520 	mov	dptr,#_sendProtocolMSG_PARM_5
      00373F 74 AA            [12] 6521 	mov	a,#0xaa
      003741 F0               [24] 6522 	movx	@dptr,a
      003742 90 0C 82         [24] 6523 	mov	dptr,#_sendProtocolMSG_PARM_6
      003745 74 83            [12] 6524 	mov	a,#_receiveDataBuffer
      003747 F0               [24] 6525 	movx	@dptr,a
      003748 74 07            [12] 6526 	mov	a,#(_receiveDataBuffer >> 8)
      00374A A3               [24] 6527 	inc	dptr
      00374B F0               [24] 6528 	movx	@dptr,a
      00374C 75 82 06         [24] 6529 	mov	dpl,#0x06
      00374F 12 3E 44         [24] 6530 	lcall	_sendProtocolMSG
                                   6531 ;	USBHost.c:841: PXUSB_ITF_DESCR currentInterface = 0;
      003752 90 0C 34         [24] 6532 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      003755 E4               [12] 6533 	clr	a
      003756 F0               [24] 6534 	movx	@dptr,a
      003757 A3               [24] 6535 	inc	dptr
      003758 F0               [24] 6536 	movx	@dptr,a
                                   6537 ;	USBHost.c:844: for(i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++)
      003759 7B 00            [12] 6538 	mov	r3,#0x00
      00375B 7C 00            [12] 6539 	mov	r4,#0x00
      00375D                       6540 00140$:
      00375D 90 07 85         [24] 6541 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      003760 E0               [24] 6542 	movx	a,@dptr
      003761 FA               [12] 6543 	mov	r2,a
      003762 8A 45            [24] 6544 	mov	_initializeRootHubConnection_sloc1_1_0,r2
      003764 75 46 00         [24] 6545 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),#0x00
      003767 90 07 86         [24] 6546 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      00376A E0               [24] 6547 	movx	a,@dptr
      00376B FA               [12] 6548 	mov	r2,a
      00376C E4               [12] 6549 	clr	a
      00376D 25 45            [12] 6550 	add	a,_initializeRootHubConnection_sloc1_1_0
      00376F F5 45            [12] 6551 	mov	_initializeRootHubConnection_sloc1_1_0,a
      003771 EA               [12] 6552 	mov	a,r2
      003772 35 46            [12] 6553 	addc	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003774 F5 46            [12] 6554 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      003776 8B 01            [24] 6555 	mov	ar1,r3
      003778 8C 02            [24] 6556 	mov	ar2,r4
      00377A C0 03            [24] 6557 	push	ar3
      00377C C0 04            [24] 6558 	push	ar4
      00377E A8 45            [24] 6559 	mov	r0,_initializeRootHubConnection_sloc1_1_0
      003780 AC 46            [24] 6560 	mov	r4,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003782 C3               [12] 6561 	clr	c
      003783 E9               [12] 6562 	mov	a,r1
      003784 98               [12] 6563 	subb	a,r0
      003785 EA               [12] 6564 	mov	a,r2
      003786 9C               [12] 6565 	subb	a,r4
      003787 D0 04            [24] 6566 	pop	ar4
      003789 D0 03            [24] 6567 	pop	ar3
      00378B 50 36            [24] 6568 	jnc	00108$
                                   6569 ;	USBHost.c:846: DEBUG_OUT("0x%02X ", (uint16_t)(receiveDataBuffer[i]));
      00378D EB               [12] 6570 	mov	a,r3
      00378E 24 83            [12] 6571 	add	a,#_receiveDataBuffer
      003790 F5 82            [12] 6572 	mov	dpl,a
      003792 EC               [12] 6573 	mov	a,r4
      003793 34 07            [12] 6574 	addc	a,#(_receiveDataBuffer >> 8)
      003795 F5 83            [12] 6575 	mov	dph,a
      003797 E0               [24] 6576 	movx	a,@dptr
      003798 F9               [12] 6577 	mov	r1,a
      003799 7A 00            [12] 6578 	mov	r2,#0x00
      00379B C0 04            [24] 6579 	push	ar4
      00379D C0 03            [24] 6580 	push	ar3
      00379F C0 01            [24] 6581 	push	ar1
      0037A1 C0 02            [24] 6582 	push	ar2
      0037A3 74 DF            [12] 6583 	mov	a,#___str_12
      0037A5 C0 E0            [24] 6584 	push	acc
      0037A7 74 4D            [12] 6585 	mov	a,#(___str_12 >> 8)
      0037A9 C0 E0            [24] 6586 	push	acc
      0037AB 74 80            [12] 6587 	mov	a,#0x80
      0037AD C0 E0            [24] 6588 	push	acc
      0037AF 12 41 F8         [24] 6589 	lcall	_printf
      0037B2 E5 81            [12] 6590 	mov	a,sp
      0037B4 24 FB            [12] 6591 	add	a,#0xfb
      0037B6 F5 81            [12] 6592 	mov	sp,a
      0037B8 D0 03            [24] 6593 	pop	ar3
      0037BA D0 04            [24] 6594 	pop	ar4
                                   6595 ;	USBHost.c:844: for(i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++)
      0037BC 0B               [12] 6596 	inc	r3
      0037BD BB 00 9D         [24] 6597 	cjne	r3,#0x00,00140$
      0037C0 0C               [12] 6598 	inc	r4
      0037C1 80 9A            [24] 6599 	sjmp	00140$
      0037C3                       6600 00108$:
                                   6601 ;	USBHost.c:848: DEBUG_OUT("\n");
      0037C3 74 E7            [12] 6602 	mov	a,#___str_13
      0037C5 C0 E0            [24] 6603 	push	acc
      0037C7 74 4D            [12] 6604 	mov	a,#(___str_13 >> 8)
      0037C9 C0 E0            [24] 6605 	push	acc
      0037CB 74 80            [12] 6606 	mov	a,#0x80
      0037CD C0 E0            [24] 6607 	push	acc
      0037CF 12 41 F8         [24] 6608 	lcall	_printf
      0037D2 15 81            [12] 6609 	dec	sp
      0037D4 15 81            [12] 6610 	dec	sp
      0037D6 15 81            [12] 6611 	dec	sp
                                   6612 ;	USBHost.c:850: cfg = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bConfigurationValue;
      0037D8 90 07 88         [24] 6613 	mov	dptr,#(_receiveDataBuffer + 0x0005)
      0037DB E0               [24] 6614 	movx	a,@dptr
                                   6615 ;	USBHost.c:851: DEBUG_OUT("Configuration value: %d\n", cfg);
      0037DC FC               [12] 6616 	mov	r4,a
      0037DD FA               [12] 6617 	mov	r2,a
      0037DE 7B 00            [12] 6618 	mov	r3,#0x00
      0037E0 C0 04            [24] 6619 	push	ar4
      0037E2 C0 02            [24] 6620 	push	ar2
      0037E4 C0 03            [24] 6621 	push	ar3
      0037E6 74 1E            [12] 6622 	mov	a,#___str_65
      0037E8 C0 E0            [24] 6623 	push	acc
      0037EA 74 51            [12] 6624 	mov	a,#(___str_65 >> 8)
      0037EC C0 E0            [24] 6625 	push	acc
      0037EE 74 80            [12] 6626 	mov	a,#0x80
      0037F0 C0 E0            [24] 6627 	push	acc
      0037F2 12 41 F8         [24] 6628 	lcall	_printf
      0037F5 E5 81            [12] 6629 	mov	a,sp
      0037F7 24 FB            [12] 6630 	add	a,#0xfb
      0037F9 F5 81            [12] 6631 	mov	sp,a
                                   6632 ;	USBHost.c:853: interfaces = ((PXUSB_CFG_DESCR_LONG)receiveDataBuffer)->cfg_descr.bNumInterfaces;
      0037FB 90 07 87         [24] 6633 	mov	dptr,#(_receiveDataBuffer + 0x0004)
      0037FE E0               [24] 6634 	movx	a,@dptr
      0037FF FB               [12] 6635 	mov	r3,a
      003800 7A 00            [12] 6636 	mov	r2,#0x00
                                   6637 ;	USBHost.c:854: DEBUG_OUT("Interface count: %d\n", interfaces);
      003802 C0 03            [24] 6638 	push	ar3
      003804 C0 02            [24] 6639 	push	ar2
      003806 74 37            [12] 6640 	mov	a,#___str_66
      003808 C0 E0            [24] 6641 	push	acc
      00380A 74 51            [12] 6642 	mov	a,#(___str_66 >> 8)
      00380C C0 E0            [24] 6643 	push	acc
      00380E 74 80            [12] 6644 	mov	a,#0x80
      003810 C0 E0            [24] 6645 	push	acc
      003812 12 41 F8         [24] 6646 	lcall	_printf
      003815 E5 81            [12] 6647 	mov	a,sp
      003817 24 FB            [12] 6648 	add	a,#0xfb
      003819 F5 81            [12] 6649 	mov	sp,a
      00381B D0 04            [24] 6650 	pop	ar4
                                   6651 ;	USBHost.c:856: s = setUsbConfig( cfg ); 
      00381D 8C 82            [24] 6652 	mov	dpl,r4
      00381F 12 20 CE         [24] 6653 	lcall	_setUsbConfig
                                   6654 ;	USBHost.c:858: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
      003822 90 07 85         [24] 6655 	mov	dptr,#(_receiveDataBuffer + 0x0002)
      003825 E0               [24] 6656 	movx	a,@dptr
      003826 FC               [12] 6657 	mov	r4,a
      003827 7B 00            [12] 6658 	mov	r3,#0x00
      003829 90 07 86         [24] 6659 	mov	dptr,#(_receiveDataBuffer + 0x0003)
      00382C E0               [24] 6660 	movx	a,@dptr
      00382D FA               [12] 6661 	mov	r2,a
      00382E E4               [12] 6662 	clr	a
      00382F 2C               [12] 6663 	add	a,r4
      003830 FC               [12] 6664 	mov	r4,a
      003831 EA               [12] 6665 	mov	a,r2
      003832 3B               [12] 6666 	addc	a,r3
      003833 FB               [12] 6667 	mov	r3,a
      003834 8C 4C            [24] 6668 	mov	_initializeRootHubConnection_sloc6_1_0,r4
      003836 8B 4D            [24] 6669 	mov	(_initializeRootHubConnection_sloc6_1_0 + 1),r3
                                   6670 ;	USBHost.c:859: for(i = 0; i < total; i++)
      003838 79 00            [12] 6671 	mov	r1,#0x00
      00383A 7A 00            [12] 6672 	mov	r2,#0x00
      00383C                       6673 00143$:
      00383C C3               [12] 6674 	clr	c
      00383D E9               [12] 6675 	mov	a,r1
      00383E 95 4C            [12] 6676 	subb	a,_initializeRootHubConnection_sloc6_1_0
      003840 EA               [12] 6677 	mov	a,r2
      003841 95 4D            [12] 6678 	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
      003843 50 20            [24] 6679 	jnc	00109$
                                   6680 ;	USBHost.c:860: temp[i] = receiveDataBuffer[i];
      003845 E9               [12] 6681 	mov	a,r1
      003846 24 34            [12] 6682 	add	a,#_initializeRootHubConnection_temp_458753_170
      003848 F8               [12] 6683 	mov	r0,a
      003849 EA               [12] 6684 	mov	a,r2
      00384A 34 0A            [12] 6685 	addc	a,#(_initializeRootHubConnection_temp_458753_170 >> 8)
      00384C FC               [12] 6686 	mov	r4,a
      00384D E9               [12] 6687 	mov	a,r1
      00384E 24 83            [12] 6688 	add	a,#_receiveDataBuffer
      003850 F5 82            [12] 6689 	mov	dpl,a
      003852 EA               [12] 6690 	mov	a,r2
      003853 34 07            [12] 6691 	addc	a,#(_receiveDataBuffer >> 8)
      003855 F5 83            [12] 6692 	mov	dph,a
      003857 E0               [24] 6693 	movx	a,@dptr
      003858 FB               [12] 6694 	mov	r3,a
      003859 88 82            [24] 6695 	mov	dpl,r0
      00385B 8C 83            [24] 6696 	mov	dph,r4
      00385D F0               [24] 6697 	movx	@dptr,a
                                   6698 ;	USBHost.c:859: for(i = 0; i < total; i++)
      00385E 09               [12] 6699 	inc	r1
      00385F B9 00 DA         [24] 6700 	cjne	r1,#0x00,00143$
      003862 0A               [12] 6701 	inc	r2
      003863 80 D7            [24] 6702 	sjmp	00143$
      003865                       6703 00109$:
                                   6704 ;	USBHost.c:861: i = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bLength;
      003865 90 07 83         [24] 6705 	mov	dptr,#_receiveDataBuffer
      003868 E0               [24] 6706 	movx	a,@dptr
      003869 FA               [12] 6707 	mov	r2,a
      00386A 90 0A 32         [24] 6708 	mov	dptr,#_initializeRootHubConnection_i_458753_170
      00386D F0               [24] 6709 	movx	@dptr,a
      00386E E4               [12] 6710 	clr	a
      00386F A3               [24] 6711 	inc	dptr
      003870 F0               [24] 6712 	movx	@dptr,a
                                   6713 ;	USBHost.c:862: while(i < total)
      003871 90 0A 30         [24] 6714 	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
      003874 E0               [24] 6715 	movx	a,@dptr
      003875 F5 4E            [12] 6716 	mov	_initializeRootHubConnection_sloc7_1_0,a
      003877 85 4E 49         [24] 6717 	mov	_initializeRootHubConnection_sloc4_1_0,_initializeRootHubConnection_sloc7_1_0
      00387A                       6718 00126$:
      00387A 90 0A 32         [24] 6719 	mov	dptr,#_initializeRootHubConnection_i_458753_170
      00387D E0               [24] 6720 	movx	a,@dptr
      00387E F5 45            [12] 6721 	mov	_initializeRootHubConnection_sloc1_1_0,a
      003880 A3               [24] 6722 	inc	dptr
      003881 E0               [24] 6723 	movx	a,@dptr
      003882 F5 46            [12] 6724 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      003884 C3               [12] 6725 	clr	c
      003885 E5 45            [12] 6726 	mov	a,_initializeRootHubConnection_sloc1_1_0
      003887 95 4C            [12] 6727 	subb	a,_initializeRootHubConnection_sloc6_1_0
      003889 E5 46            [12] 6728 	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
      00388B 95 4D            [12] 6729 	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
      00388D 40 03            [24] 6730 	jc	00267$
      00388F 02 3B 08         [24] 6731 	ljmp	00128$
      003892                       6732 00267$:
                                   6733 ;	USBHost.c:864: unsigned char __xdata *desc = &(temp[i]);
      003892 E5 45            [12] 6734 	mov	a,_initializeRootHubConnection_sloc1_1_0
      003894 24 34            [12] 6735 	add	a,#_initializeRootHubConnection_temp_458753_170
      003896 F5 45            [12] 6736 	mov	_initializeRootHubConnection_sloc1_1_0,a
      003898 E5 46            [12] 6737 	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
      00389A 34 0A            [12] 6738 	addc	a,#(_initializeRootHubConnection_temp_458753_170 >> 8)
      00389C F5 46            [12] 6739 	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
      00389E 90 0C 36         [24] 6740 	mov	dptr,#_initializeRootHubConnection_desc_524289_174
      0038A1 E5 45            [12] 6741 	mov	a,_initializeRootHubConnection_sloc1_1_0
      0038A3 F0               [24] 6742 	movx	@dptr,a
      0038A4 E5 46            [12] 6743 	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
      0038A6 A3               [24] 6744 	inc	dptr
      0038A7 F0               [24] 6745 	movx	@dptr,a
                                   6746 ;	USBHost.c:865: switch(desc[1])
      0038A8 85 45 82         [24] 6747 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      0038AB 85 46 83         [24] 6748 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      0038AE A3               [24] 6749 	inc	dptr
      0038AF E0               [24] 6750 	movx	a,@dptr
      0038B0 F8               [12] 6751 	mov	r0,a
      0038B1 B8 04 02         [24] 6752 	cjne	r0,#0x04,00268$
      0038B4 80 1A            [24] 6753 	sjmp	00110$
      0038B6                       6754 00268$:
      0038B6 B8 05 02         [24] 6755 	cjne	r0,#0x05,00269$
      0038B9 80 4F            [24] 6756 	sjmp	00111$
      0038BB                       6757 00269$:
      0038BB B8 21 03         [24] 6758 	cjne	r0,#0x21,00270$
      0038BE 02 3A 22         [24] 6759 	ljmp	00119$
      0038C1                       6760 00270$:
      0038C1 B8 24 03         [24] 6761 	cjne	r0,#0x24,00271$
      0038C4 02 3A 6B         [24] 6762 	ljmp	00122$
      0038C7                       6763 00271$:
      0038C7 B8 25 03         [24] 6764 	cjne	r0,#0x25,00272$
      0038CA 02 3A 93         [24] 6765 	ljmp	00123$
      0038CD                       6766 00272$:
      0038CD 02 3A BB         [24] 6767 	ljmp	00124$
                                   6768 ;	USBHost.c:867: case USB_DESCR_TYP_INTERF:
      0038D0                       6769 00110$:
                                   6770 ;	USBHost.c:868: DEBUG_OUT("Interface descriptor found\n", desc[1]);
      0038D0 88 01            [24] 6771 	mov	ar1,r0
      0038D2 7A 00            [12] 6772 	mov	r2,#0x00
      0038D4 C0 01            [24] 6773 	push	ar1
      0038D6 C0 02            [24] 6774 	push	ar2
      0038D8 74 4C            [12] 6775 	mov	a,#___str_67
      0038DA C0 E0            [24] 6776 	push	acc
      0038DC 74 51            [12] 6777 	mov	a,#(___str_67 >> 8)
      0038DE C0 E0            [24] 6778 	push	acc
      0038E0 74 80            [12] 6779 	mov	a,#0x80
      0038E2 C0 E0            [24] 6780 	push	acc
      0038E4 12 41 F8         [24] 6781 	lcall	_printf
      0038E7 E5 81            [12] 6782 	mov	a,sp
      0038E9 24 FB            [12] 6783 	add	a,#0xfb
      0038EB F5 81            [12] 6784 	mov	sp,a
                                   6785 ;	USBHost.c:870: currentInterface = ((PXUSB_ITF_DESCR)desc);
      0038ED A9 45            [24] 6786 	mov	r1,_initializeRootHubConnection_sloc1_1_0
      0038EF AA 46            [24] 6787 	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
      0038F1 90 0C 34         [24] 6788 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      0038F4 E9               [12] 6789 	mov	a,r1
      0038F5 F0               [24] 6790 	movx	@dptr,a
      0038F6 EA               [12] 6791 	mov	a,r2
      0038F7 A3               [24] 6792 	inc	dptr
      0038F8 F0               [24] 6793 	movx	@dptr,a
                                   6794 ;	USBHost.c:871: readInterface(rootHubIndex, currentInterface);
      0038F9 90 0A 2A         [24] 6795 	mov	dptr,#_readInterface_PARM_2
      0038FC E9               [12] 6796 	mov	a,r1
      0038FD F0               [24] 6797 	movx	@dptr,a
      0038FE EA               [12] 6798 	mov	a,r2
      0038FF A3               [24] 6799 	inc	dptr
      003900 F0               [24] 6800 	movx	@dptr,a
      003901 85 49 82         [24] 6801 	mov	dpl,_initializeRootHubConnection_sloc4_1_0
      003904 12 32 B1         [24] 6802 	lcall	_readInterface
                                   6803 ;	USBHost.c:872: break;
      003907 02 3A DF         [24] 6804 	ljmp	00125$
                                   6805 ;	USBHost.c:873: case USB_DESCR_TYP_ENDP:
      00390A                       6806 00111$:
                                   6807 ;	USBHost.c:874: DEBUG_OUT("Endpoint descriptor found\n", desc[1]);
      00390A 88 01            [24] 6808 	mov	ar1,r0
      00390C 7A 00            [12] 6809 	mov	r2,#0x00
      00390E C0 01            [24] 6810 	push	ar1
      003910 C0 02            [24] 6811 	push	ar2
      003912 74 68            [12] 6812 	mov	a,#___str_68
      003914 C0 E0            [24] 6813 	push	acc
      003916 74 51            [12] 6814 	mov	a,#(___str_68 >> 8)
      003918 C0 E0            [24] 6815 	push	acc
      00391A 74 80            [12] 6816 	mov	a,#0x80
      00391C C0 E0            [24] 6817 	push	acc
      00391E 12 41 F8         [24] 6818 	lcall	_printf
      003921 E5 81            [12] 6819 	mov	a,sp
      003923 24 FB            [12] 6820 	add	a,#0xfb
      003925 F5 81            [12] 6821 	mov	sp,a
                                   6822 ;	USBHost.c:875: DEBUG_OUT_USB_BUFFER(desc);
      003927 85 45 82         [24] 6823 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      00392A 85 46 83         [24] 6824 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      00392D 12 22 29         [24] 6825 	lcall	_DEBUG_OUT_USB_BUFFER
                                   6826 ;	USBHost.c:876: if(currentInterface->bInterfaceClass == USB_DEV_CLASS_HID)
      003930 90 0C 34         [24] 6827 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      003933 E0               [24] 6828 	movx	a,@dptr
      003934 F9               [12] 6829 	mov	r1,a
      003935 A3               [24] 6830 	inc	dptr
      003936 E0               [24] 6831 	movx	a,@dptr
      003937 FA               [12] 6832 	mov	r2,a
      003938 89 82            [24] 6833 	mov	dpl,r1
      00393A 8A 83            [24] 6834 	mov	dph,r2
      00393C A3               [24] 6835 	inc	dptr
      00393D A3               [24] 6836 	inc	dptr
      00393E A3               [24] 6837 	inc	dptr
      00393F A3               [24] 6838 	inc	dptr
      003940 A3               [24] 6839 	inc	dptr
      003941 E0               [24] 6840 	movx	a,@dptr
      003942 FA               [12] 6841 	mov	r2,a
      003943 BA 03 02         [24] 6842 	cjne	r2,#0x03,00273$
      003946 80 03            [24] 6843 	sjmp	00274$
      003948                       6844 00273$:
      003948 02 3A DF         [24] 6845 	ljmp	00125$
      00394B                       6846 00274$:
                                   6847 ;	USBHost.c:878: PXUSB_ENDP_DESCR d = (PXUSB_ENDP_DESCR)desc;
      00394B A9 45            [24] 6848 	mov	r1,_initializeRootHubConnection_sloc1_1_0
      00394D AA 46            [24] 6849 	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
                                   6850 ;	USBHost.c:879: if(d->bEndpointAddress & 0x80){
      00394F 74 02            [12] 6851 	mov	a,#0x02
      003951 29               [12] 6852 	add	a,r1
      003952 F5 4A            [12] 6853 	mov	_initializeRootHubConnection_sloc5_1_0,a
      003954 E4               [12] 6854 	clr	a
      003955 3A               [12] 6855 	addc	a,r2
      003956 F5 4B            [12] 6856 	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
      003958 85 4A 82         [24] 6857 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      00395B 85 4B 83         [24] 6858 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      00395E E0               [24] 6859 	movx	a,@dptr
      00395F FA               [12] 6860 	mov	r2,a
      003960 20 E7 03         [24] 6861 	jb	acc.7,00275$
      003963 02 3A DF         [24] 6862 	ljmp	00125$
      003966                       6863 00275$:
                                   6864 ;	USBHost.c:881: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      003966 79 00            [12] 6865 	mov	r1,#0x00
      003968                       6866 00145$:
                                   6867 ;	USBHost.c:883: if(HIDdevice[hiddevice].connected == 0) break;
      003968 E9               [12] 6868 	mov	a,r1
      003969 75 F0 08         [24] 6869 	mov	b,#0x08
      00396C A4               [48] 6870 	mul	ab
      00396D 24 B6            [12] 6871 	add	a,#_HIDdevice
      00396F FA               [12] 6872 	mov	r2,a
      003970 74 09            [12] 6873 	mov	a,#(_HIDdevice >> 8)
      003972 35 F0            [12] 6874 	addc	a,b
      003974 FC               [12] 6875 	mov	r4,a
      003975 8A 82            [24] 6876 	mov	dpl,r2
      003977 8C 83            [24] 6877 	mov	dph,r4
      003979 E0               [24] 6878 	movx	a,@dptr
      00397A 60 06            [24] 6879 	jz	00114$
                                   6880 ;	USBHost.c:881: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
      00397C 09               [12] 6881 	inc	r1
      00397D B9 08 00         [24] 6882 	cjne	r1,#0x08,00277$
      003980                       6883 00277$:
      003980 40 E6            [24] 6884 	jc	00145$
      003982                       6885 00114$:
                                   6886 ;	USBHost.c:885: DEBUG_OUT("Connected device at position: %i\n", hiddevice);
      003982 89 03            [24] 6887 	mov	ar3,r1
      003984 7C 00            [12] 6888 	mov	r4,#0x00
      003986 C0 01            [24] 6889 	push	ar1
      003988 C0 03            [24] 6890 	push	ar3
      00398A C0 04            [24] 6891 	push	ar4
      00398C 74 83            [12] 6892 	mov	a,#___str_69
      00398E C0 E0            [24] 6893 	push	acc
      003990 74 51            [12] 6894 	mov	a,#(___str_69 >> 8)
      003992 C0 E0            [24] 6895 	push	acc
      003994 74 80            [12] 6896 	mov	a,#0x80
      003996 C0 E0            [24] 6897 	push	acc
      003998 12 41 F8         [24] 6898 	lcall	_printf
      00399B E5 81            [12] 6899 	mov	a,sp
      00399D 24 FB            [12] 6900 	add	a,#0xfb
      00399F F5 81            [12] 6901 	mov	sp,a
      0039A1 D0 01            [24] 6902 	pop	ar1
                                   6903 ;	USBHost.c:886: HIDdevice[hiddevice].endPoint = d->bEndpointAddress;
      0039A3 E9               [12] 6904 	mov	a,r1
      0039A4 75 F0 08         [24] 6905 	mov	b,#0x08
      0039A7 A4               [48] 6906 	mul	ab
      0039A8 24 B6            [12] 6907 	add	a,#_HIDdevice
      0039AA F5 4F            [12] 6908 	mov	_initializeRootHubConnection_sloc8_1_0,a
      0039AC 74 09            [12] 6909 	mov	a,#(_HIDdevice >> 8)
      0039AE 35 F0            [12] 6910 	addc	a,b
      0039B0 F5 50            [12] 6911 	mov	(_initializeRootHubConnection_sloc8_1_0 + 1),a
      0039B2 74 03            [12] 6912 	mov	a,#0x03
      0039B4 25 4F            [12] 6913 	add	a,_initializeRootHubConnection_sloc8_1_0
      0039B6 FA               [12] 6914 	mov	r2,a
      0039B7 E4               [12] 6915 	clr	a
      0039B8 35 50            [12] 6916 	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0039BA FC               [12] 6917 	mov	r4,a
      0039BB 85 4A 82         [24] 6918 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      0039BE 85 4B 83         [24] 6919 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      0039C1 E0               [24] 6920 	movx	a,@dptr
      0039C2 FB               [12] 6921 	mov	r3,a
      0039C3 8A 82            [24] 6922 	mov	dpl,r2
      0039C5 8C 83            [24] 6923 	mov	dph,r4
      0039C7 F0               [24] 6924 	movx	@dptr,a
                                   6925 ;	USBHost.c:887: HIDdevice[hiddevice].connected = 1;                                        
      0039C8 85 4F 82         [24] 6926 	mov	dpl,_initializeRootHubConnection_sloc8_1_0
      0039CB 85 50 83         [24] 6927 	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0039CE 74 01            [12] 6928 	mov	a,#0x01
      0039D0 F0               [24] 6929 	movx	@dptr,a
                                   6930 ;	USBHost.c:888: HIDdevice[hiddevice].interface = currentInterface->bInterfaceNumber;
      0039D1 04               [12] 6931 	inc	a
      0039D2 25 4F            [12] 6932 	add	a,_initializeRootHubConnection_sloc8_1_0
      0039D4 F5 4A            [12] 6933 	mov	_initializeRootHubConnection_sloc5_1_0,a
      0039D6 E4               [12] 6934 	clr	a
      0039D7 35 50            [12] 6935 	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0039D9 F5 4B            [12] 6936 	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
      0039DB 90 0C 34         [24] 6937 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      0039DE E0               [24] 6938 	movx	a,@dptr
      0039DF FA               [12] 6939 	mov	r2,a
      0039E0 A3               [24] 6940 	inc	dptr
      0039E1 E0               [24] 6941 	movx	a,@dptr
      0039E2 FC               [12] 6942 	mov	r4,a
      0039E3 8A 82            [24] 6943 	mov	dpl,r2
      0039E5 8C 83            [24] 6944 	mov	dph,r4
      0039E7 A3               [24] 6945 	inc	dptr
      0039E8 A3               [24] 6946 	inc	dptr
      0039E9 E0               [24] 6947 	movx	a,@dptr
      0039EA 85 4A 82         [24] 6948 	mov	dpl,_initializeRootHubConnection_sloc5_1_0
      0039ED 85 4B 83         [24] 6949 	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
      0039F0 F0               [24] 6950 	movx	@dptr,a
                                   6951 ;	USBHost.c:889: HIDdevice[hiddevice].rootHub = rootHubIndex;
      0039F1 85 4F 82         [24] 6952 	mov	dpl,_initializeRootHubConnection_sloc8_1_0
      0039F4 85 50 83         [24] 6953 	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
      0039F7 A3               [24] 6954 	inc	dptr
      0039F8 E5 4E            [12] 6955 	mov	a,_initializeRootHubConnection_sloc7_1_0
      0039FA F0               [24] 6956 	movx	@dptr,a
                                   6957 ;	USBHost.c:890: DEBUG_OUT("Got endpoint for the HIDdevice 0x%02x\n", HIDdevice[hiddevice].endPoint);
      0039FB 7C 00            [12] 6958 	mov	r4,#0x00
      0039FD C0 01            [24] 6959 	push	ar1
      0039FF C0 03            [24] 6960 	push	ar3
      003A01 C0 04            [24] 6961 	push	ar4
      003A03 74 A5            [12] 6962 	mov	a,#___str_70
      003A05 C0 E0            [24] 6963 	push	acc
      003A07 74 51            [12] 6964 	mov	a,#(___str_70 >> 8)
      003A09 C0 E0            [24] 6965 	push	acc
      003A0B 74 80            [12] 6966 	mov	a,#0x80
      003A0D C0 E0            [24] 6967 	push	acc
      003A0F 12 41 F8         [24] 6968 	lcall	_printf
      003A12 E5 81            [12] 6969 	mov	a,sp
      003A14 24 FB            [12] 6970 	add	a,#0xfb
      003A16 F5 81            [12] 6971 	mov	sp,a
      003A18 D0 01            [24] 6972 	pop	ar1
                                   6973 ;	USBHost.c:891: getHIDDeviceReport(hiddevice);
      003A1A 89 82            [24] 6974 	mov	dpl,r1
      003A1C 12 31 23         [24] 6975 	lcall	_getHIDDeviceReport
                                   6976 ;	USBHost.c:894: break;
      003A1F 02 3A DF         [24] 6977 	ljmp	00125$
                                   6978 ;	USBHost.c:895: case USB_DESCR_TYP_HID:
      003A22                       6979 00119$:
                                   6980 ;	USBHost.c:896: DEBUG_OUT("HID descriptor found\n", desc[1]);
      003A22 88 03            [24] 6981 	mov	ar3,r0
      003A24 7C 00            [12] 6982 	mov	r4,#0x00
      003A26 C0 03            [24] 6983 	push	ar3
      003A28 C0 04            [24] 6984 	push	ar4
      003A2A 74 CC            [12] 6985 	mov	a,#___str_71
      003A2C C0 E0            [24] 6986 	push	acc
      003A2E 74 51            [12] 6987 	mov	a,#(___str_71 >> 8)
      003A30 C0 E0            [24] 6988 	push	acc
      003A32 74 80            [12] 6989 	mov	a,#0x80
      003A34 C0 E0            [24] 6990 	push	acc
      003A36 12 41 F8         [24] 6991 	lcall	_printf
      003A39 E5 81            [12] 6992 	mov	a,sp
      003A3B 24 FB            [12] 6993 	add	a,#0xfb
      003A3D F5 81            [12] 6994 	mov	sp,a
                                   6995 ;	USBHost.c:898: if(currentInterface == 0) break;
      003A3F 90 0C 34         [24] 6996 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      003A42 E0               [24] 6997 	movx	a,@dptr
      003A43 FB               [12] 6998 	mov	r3,a
      003A44 A3               [24] 6999 	inc	dptr
      003A45 E0               [24] 7000 	movx	a,@dptr
      003A46 FC               [12] 7001 	mov	r4,a
      003A47 90 0C 34         [24] 7002 	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
      003A4A E0               [24] 7003 	movx	a,@dptr
      003A4B F5 F0            [12] 7004 	mov	b,a
      003A4D A3               [24] 7005 	inc	dptr
      003A4E E0               [24] 7006 	movx	a,@dptr
      003A4F 45 F0            [12] 7007 	orl	a,b
      003A51 70 03            [24] 7008 	jnz	00279$
      003A53 02 3A DF         [24] 7009 	ljmp	00125$
      003A56                       7010 00279$:
                                   7011 ;	USBHost.c:899: readHIDInterface(currentInterface, (PXUSB_HID_DESCR)desc);
      003A56 A9 45            [24] 7012 	mov	r1,_initializeRootHubConnection_sloc1_1_0
      003A58 AA 46            [24] 7013 	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003A5A 90 0A 2C         [24] 7014 	mov	dptr,#_readHIDInterface_PARM_2
      003A5D E9               [12] 7015 	mov	a,r1
      003A5E F0               [24] 7016 	movx	@dptr,a
      003A5F EA               [12] 7017 	mov	a,r2
      003A60 A3               [24] 7018 	inc	dptr
      003A61 F0               [24] 7019 	movx	@dptr,a
      003A62 8B 82            [24] 7020 	mov	dpl,r3
      003A64 8C 83            [24] 7021 	mov	dph,r4
      003A66 12 33 67         [24] 7022 	lcall	_readHIDInterface
                                   7023 ;	USBHost.c:900: break;
                                   7024 ;	USBHost.c:901: case USB_DESCR_TYP_CS_INTF:
      003A69 80 74            [24] 7025 	sjmp	00125$
      003A6B                       7026 00122$:
                                   7027 ;	USBHost.c:902: DEBUG_OUT("Class specific header descriptor found\n", desc[1]);
      003A6B 88 03            [24] 7028 	mov	ar3,r0
      003A6D 7C 00            [12] 7029 	mov	r4,#0x00
      003A6F C0 03            [24] 7030 	push	ar3
      003A71 C0 04            [24] 7031 	push	ar4
      003A73 74 E2            [12] 7032 	mov	a,#___str_72
      003A75 C0 E0            [24] 7033 	push	acc
      003A77 74 51            [12] 7034 	mov	a,#(___str_72 >> 8)
      003A79 C0 E0            [24] 7035 	push	acc
      003A7B 74 80            [12] 7036 	mov	a,#0x80
      003A7D C0 E0            [24] 7037 	push	acc
      003A7F 12 41 F8         [24] 7038 	lcall	_printf
      003A82 E5 81            [12] 7039 	mov	a,sp
      003A84 24 FB            [12] 7040 	add	a,#0xfb
      003A86 F5 81            [12] 7041 	mov	sp,a
                                   7042 ;	USBHost.c:903: DEBUG_OUT_USB_BUFFER(desc);
      003A88 85 45 82         [24] 7043 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      003A8B 85 46 83         [24] 7044 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003A8E 12 22 29         [24] 7045 	lcall	_DEBUG_OUT_USB_BUFFER
                                   7046 ;	USBHost.c:906: break;
                                   7047 ;	USBHost.c:907: case USB_DESCR_TYP_CS_ENDP:
      003A91 80 4C            [24] 7048 	sjmp	00125$
      003A93                       7049 00123$:
                                   7050 ;	USBHost.c:908: DEBUG_OUT("Class specific endpoint descriptor found\n", desc[1]);
      003A93 88 03            [24] 7051 	mov	ar3,r0
      003A95 7C 00            [12] 7052 	mov	r4,#0x00
      003A97 C0 03            [24] 7053 	push	ar3
      003A99 C0 04            [24] 7054 	push	ar4
      003A9B 74 0A            [12] 7055 	mov	a,#___str_73
      003A9D C0 E0            [24] 7056 	push	acc
      003A9F 74 52            [12] 7057 	mov	a,#(___str_73 >> 8)
      003AA1 C0 E0            [24] 7058 	push	acc
      003AA3 74 80            [12] 7059 	mov	a,#0x80
      003AA5 C0 E0            [24] 7060 	push	acc
      003AA7 12 41 F8         [24] 7061 	lcall	_printf
      003AAA E5 81            [12] 7062 	mov	a,sp
      003AAC 24 FB            [12] 7063 	add	a,#0xfb
      003AAE F5 81            [12] 7064 	mov	sp,a
                                   7065 ;	USBHost.c:909: DEBUG_OUT_USB_BUFFER(desc);
      003AB0 85 45 82         [24] 7066 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      003AB3 85 46 83         [24] 7067 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003AB6 12 22 29         [24] 7068 	lcall	_DEBUG_OUT_USB_BUFFER
                                   7069 ;	USBHost.c:912: break;
                                   7070 ;	USBHost.c:913: default:
      003AB9 80 24            [24] 7071 	sjmp	00125$
      003ABB                       7072 00124$:
                                   7073 ;	USBHost.c:914: DEBUG_OUT("Unexpected descriptor type: %02X\n", desc[1]);
      003ABB 7C 00            [12] 7074 	mov	r4,#0x00
      003ABD C0 00            [24] 7075 	push	ar0
      003ABF C0 04            [24] 7076 	push	ar4
      003AC1 74 34            [12] 7077 	mov	a,#___str_74
      003AC3 C0 E0            [24] 7078 	push	acc
      003AC5 74 52            [12] 7079 	mov	a,#(___str_74 >> 8)
      003AC7 C0 E0            [24] 7080 	push	acc
      003AC9 74 80            [12] 7081 	mov	a,#0x80
      003ACB C0 E0            [24] 7082 	push	acc
      003ACD 12 41 F8         [24] 7083 	lcall	_printf
      003AD0 E5 81            [12] 7084 	mov	a,sp
      003AD2 24 FB            [12] 7085 	add	a,#0xfb
      003AD4 F5 81            [12] 7086 	mov	sp,a
                                   7087 ;	USBHost.c:915: DEBUG_OUT_USB_BUFFER(desc);
      003AD6 85 45 82         [24] 7088 	mov	dpl,_initializeRootHubConnection_sloc1_1_0
      003AD9 85 46 83         [24] 7089 	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
      003ADC 12 22 29         [24] 7090 	lcall	_DEBUG_OUT_USB_BUFFER
                                   7091 ;	USBHost.c:916: }
      003ADF                       7092 00125$:
                                   7093 ;	USBHost.c:917: i += desc[0];
      003ADF 90 0C 36         [24] 7094 	mov	dptr,#_initializeRootHubConnection_desc_524289_174
      003AE2 E0               [24] 7095 	movx	a,@dptr
      003AE3 FB               [12] 7096 	mov	r3,a
      003AE4 A3               [24] 7097 	inc	dptr
      003AE5 E0               [24] 7098 	movx	a,@dptr
      003AE6 FC               [12] 7099 	mov	r4,a
      003AE7 8B 82            [24] 7100 	mov	dpl,r3
      003AE9 8C 83            [24] 7101 	mov	dph,r4
      003AEB E0               [24] 7102 	movx	a,@dptr
      003AEC FB               [12] 7103 	mov	r3,a
      003AED 7C 00            [12] 7104 	mov	r4,#0x00
      003AEF 90 0A 32         [24] 7105 	mov	dptr,#_initializeRootHubConnection_i_458753_170
      003AF2 E0               [24] 7106 	movx	a,@dptr
      003AF3 F9               [12] 7107 	mov	r1,a
      003AF4 A3               [24] 7108 	inc	dptr
      003AF5 E0               [24] 7109 	movx	a,@dptr
      003AF6 FA               [12] 7110 	mov	r2,a
      003AF7 EB               [12] 7111 	mov	a,r3
      003AF8 29               [12] 7112 	add	a,r1
      003AF9 F9               [12] 7113 	mov	r1,a
      003AFA EC               [12] 7114 	mov	a,r4
      003AFB 3A               [12] 7115 	addc	a,r2
      003AFC FA               [12] 7116 	mov	r2,a
      003AFD 90 0A 32         [24] 7117 	mov	dptr,#_initializeRootHubConnection_i_458753_170
      003B00 E9               [12] 7118 	mov	a,r1
      003B01 F0               [24] 7119 	movx	@dptr,a
      003B02 EA               [12] 7120 	mov	a,r2
      003B03 A3               [24] 7121 	inc	dptr
      003B04 F0               [24] 7122 	movx	@dptr,a
      003B05 02 38 7A         [24] 7123 	ljmp	00126$
      003B08                       7124 00128$:
                                   7125 ;	USBHost.c:919: return ERR_SUCCESS;
      003B08 75 82 00         [24] 7126 	mov	dpl,#0x00
      003B0B 22               [24] 7127 	ret
      003B0C                       7128 00134$:
                                   7129 ;	USBHost.c:924: DEBUG_OUT( "Error = %02X\n", s);
      003B0C 90 0A 31         [24] 7130 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      003B0F E0               [24] 7131 	movx	a,@dptr
      003B10 FC               [12] 7132 	mov	r4,a
      003B11 FA               [12] 7133 	mov	r2,a
      003B12 7B 00            [12] 7134 	mov	r3,#0x00
      003B14 C0 07            [24] 7135 	push	ar7
      003B16 C0 06            [24] 7136 	push	ar6
      003B18 C0 05            [24] 7137 	push	ar5
      003B1A C0 04            [24] 7138 	push	ar4
      003B1C C0 02            [24] 7139 	push	ar2
      003B1E C0 03            [24] 7140 	push	ar3
      003B20 74 56            [12] 7141 	mov	a,#___str_75
      003B22 C0 E0            [24] 7142 	push	acc
      003B24 74 52            [12] 7143 	mov	a,#(___str_75 >> 8)
      003B26 C0 E0            [24] 7144 	push	acc
      003B28 74 80            [12] 7145 	mov	a,#0x80
      003B2A C0 E0            [24] 7146 	push	acc
      003B2C 12 41 F8         [24] 7147 	lcall	_printf
      003B2F E5 81            [12] 7148 	mov	a,sp
      003B31 24 FB            [12] 7149 	add	a,#0xfb
      003B33 F5 81            [12] 7150 	mov	sp,a
      003B35 D0 04            [24] 7151 	pop	ar4
      003B37 D0 05            [24] 7152 	pop	ar5
                                   7153 ;	USBHost.c:925: sendProtocolMSG(MSG_TYPE_ERROR,0, rootHubIndex+1, s, 0xEE, 0);
      003B39 8D 03            [24] 7154 	mov	ar3,r5
      003B3B 0B               [12] 7155 	inc	r3
      003B3C 90 0C 7D         [24] 7156 	mov	dptr,#_sendProtocolMSG_PARM_2
      003B3F E4               [12] 7157 	clr	a
      003B40 F0               [24] 7158 	movx	@dptr,a
      003B41 A3               [24] 7159 	inc	dptr
      003B42 F0               [24] 7160 	movx	@dptr,a
      003B43 90 0C 7F         [24] 7161 	mov	dptr,#_sendProtocolMSG_PARM_3
      003B46 EB               [12] 7162 	mov	a,r3
      003B47 F0               [24] 7163 	movx	@dptr,a
      003B48 90 0C 80         [24] 7164 	mov	dptr,#_sendProtocolMSG_PARM_4
      003B4B EC               [12] 7165 	mov	a,r4
      003B4C F0               [24] 7166 	movx	@dptr,a
      003B4D 90 0C 81         [24] 7167 	mov	dptr,#_sendProtocolMSG_PARM_5
      003B50 74 EE            [12] 7168 	mov	a,#0xee
      003B52 F0               [24] 7169 	movx	@dptr,a
      003B53 90 0C 82         [24] 7170 	mov	dptr,#_sendProtocolMSG_PARM_6
      003B56 E4               [12] 7171 	clr	a
      003B57 F0               [24] 7172 	movx	@dptr,a
      003B58 A3               [24] 7173 	inc	dptr
      003B59 F0               [24] 7174 	movx	@dptr,a
      003B5A 75 82 03         [24] 7175 	mov	dpl,#0x03
      003B5D C0 05            [24] 7176 	push	ar5
      003B5F 12 3E 44         [24] 7177 	lcall	_sendProtocolMSG
                                   7178 ;	USBHost.c:926: rootHubDevice[rootHubIndex].status = ROOT_DEVICE_FAILED;
      003B62 E5 43            [12] 7179 	mov	a,_initializeRootHubConnection_sloc0_1_0
      003B64 24 83            [12] 7180 	add	a,#_rootHubDevice
      003B66 F5 82            [12] 7181 	mov	dpl,a
      003B68 E5 44            [12] 7182 	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
      003B6A 34 09            [12] 7183 	addc	a,#(_rootHubDevice >> 8)
      003B6C F5 83            [12] 7184 	mov	dph,a
      003B6E 74 02            [12] 7185 	mov	a,#0x02
      003B70 F0               [24] 7186 	movx	@dptr,a
                                   7187 ;	USBHost.c:927: setUsbSpeed(1);    //TODO define speeds
      003B71 75 82 01         [24] 7188 	mov	dpl,#0x01
      003B74 12 18 66         [24] 7189 	lcall	_setUsbSpeed
      003B77 D0 05            [24] 7190 	pop	ar5
      003B79 D0 06            [24] 7191 	pop	ar6
      003B7B D0 07            [24] 7192 	pop	ar7
      003B7D                       7193 00135$:
                                   7194 ;	USBHost.c:790: for(retry = 0; retry < 10; retry++) //todo test fewer retries
      003B7D 05 47            [12] 7195 	inc	_initializeRootHubConnection_sloc2_1_0
      003B7F 74 F6            [12] 7196 	mov	a,#0x100 - 0x0a
      003B81 25 47            [12] 7197 	add	a,_initializeRootHubConnection_sloc2_1_0
      003B83 40 03            [24] 7198 	jc	00280$
      003B85 02 34 66         [24] 7199 	ljmp	00147$
      003B88                       7200 00280$:
                                   7201 ;	USBHost.c:929: return s;
      003B88 90 0A 31         [24] 7202 	mov	dptr,#_initializeRootHubConnection_s_65536_159
      003B8B E0               [24] 7203 	movx	a,@dptr
                                   7204 ;	USBHost.c:930: }
      003B8C F5 82            [12] 7205 	mov	dpl,a
      003B8E 22               [24] 7206 	ret
                                   7207 ;------------------------------------------------------------
                                   7208 ;Allocation info for local variables in function 'checkRootHubConnections'
                                   7209 ;------------------------------------------------------------
                                   7210 ;s                         Allocated with name '_checkRootHubConnections_s_65536_180'
                                   7211 ;------------------------------------------------------------
                                   7212 ;	USBHost.c:932: unsigned char checkRootHubConnections()
                                   7213 ;	-----------------------------------------
                                   7214 ;	 function checkRootHubConnections
                                   7215 ;	-----------------------------------------
      003B8F                       7216 _checkRootHubConnections:
                                   7217 ;	USBHost.c:935: s = ERR_SUCCESS;
      003B8F 90 0C 38         [24] 7218 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003B92 E4               [12] 7219 	clr	a
      003B93 F0               [24] 7220 	movx	@dptr,a
                                   7221 ;	USBHost.c:936: if (UIF_DETECT)                                                        
                                   7222 ;	USBHost.c:938: UIF_DETECT = 0;    
                                   7223 ;	assignBit
      003B94 10 D8 03         [24] 7224 	jbc	_UIF_DETECT,00149$
      003B97 02 3D 1C         [24] 7225 	ljmp	00118$
      003B9A                       7226 00149$:
                                   7227 ;	USBHost.c:939: if(USB_HUB_ST & bUHS_H0_ATTACH)
      003B9A E5 DB            [12] 7228 	mov	a,_USB_HUB_ST
      003B9C 30 E3 63         [24] 7229 	jnb	acc.3,00107$
                                   7230 ;	USBHost.c:941: if(rootHubDevice[0].status == ROOT_DEVICE_DISCONNECT || (UHUB0_CTRL & bUH_PORT_EN) == 0x00)
      003B9F 90 09 83         [24] 7231 	mov	dptr,#_rootHubDevice
      003BA2 E0               [24] 7232 	movx	a,@dptr
      003BA3 60 08            [24] 7233 	jz	00101$
      003BA5 E5 E4            [12] 7234 	mov	a,_UDEV_CTRL
      003BA7 30 E0 03         [24] 7235 	jnb	acc.0,00152$
      003BAA 02 3C 59         [24] 7236 	ljmp	00108$
      003BAD                       7237 00152$:
      003BAD                       7238 00101$:
                                   7239 ;	USBHost.c:943: disableRootHubPort(0);    //todo really need to reset register?
      003BAD 75 82 00         [24] 7240 	mov	dpl,#0x00
      003BB0 12 17 E6         [24] 7241 	lcall	_disableRootHubPort
                                   7242 ;	USBHost.c:944: rootHubDevice[0].status = ROOT_DEVICE_CONNECTED;
      003BB3 90 09 83         [24] 7243 	mov	dptr,#_rootHubDevice
      003BB6 74 01            [12] 7244 	mov	a,#0x01
      003BB8 F0               [24] 7245 	movx	@dptr,a
                                   7246 ;	USBHost.c:945: DEBUG_OUT("Device at root hub %i connected\n", 0);
      003BB9 E4               [12] 7247 	clr	a
      003BBA C0 E0            [24] 7248 	push	acc
      003BBC C0 E0            [24] 7249 	push	acc
      003BBE 74 64            [12] 7250 	mov	a,#___str_76
      003BC0 C0 E0            [24] 7251 	push	acc
      003BC2 74 52            [12] 7252 	mov	a,#(___str_76 >> 8)
      003BC4 C0 E0            [24] 7253 	push	acc
      003BC6 74 80            [12] 7254 	mov	a,#0x80
      003BC8 C0 E0            [24] 7255 	push	acc
      003BCA 12 41 F8         [24] 7256 	lcall	_printf
      003BCD E5 81            [12] 7257 	mov	a,sp
      003BCF 24 FB            [12] 7258 	add	a,#0xfb
      003BD1 F5 81            [12] 7259 	mov	sp,a
                                   7260 ;	USBHost.c:946: sendProtocolMSG(MSG_TYPE_CONNECTED,0, 0x01, 0x01, 0x01, 0);
      003BD3 90 0C 7D         [24] 7261 	mov	dptr,#_sendProtocolMSG_PARM_2
      003BD6 E4               [12] 7262 	clr	a
      003BD7 F0               [24] 7263 	movx	@dptr,a
      003BD8 A3               [24] 7264 	inc	dptr
      003BD9 F0               [24] 7265 	movx	@dptr,a
      003BDA 90 0C 7F         [24] 7266 	mov	dptr,#_sendProtocolMSG_PARM_3
      003BDD 04               [12] 7267 	inc	a
      003BDE F0               [24] 7268 	movx	@dptr,a
      003BDF 90 0C 80         [24] 7269 	mov	dptr,#_sendProtocolMSG_PARM_4
      003BE2 F0               [24] 7270 	movx	@dptr,a
      003BE3 90 0C 81         [24] 7271 	mov	dptr,#_sendProtocolMSG_PARM_5
      003BE6 F0               [24] 7272 	movx	@dptr,a
      003BE7 90 0C 82         [24] 7273 	mov	dptr,#_sendProtocolMSG_PARM_6
      003BEA E4               [12] 7274 	clr	a
      003BEB F0               [24] 7275 	movx	@dptr,a
      003BEC A3               [24] 7276 	inc	dptr
      003BED F0               [24] 7277 	movx	@dptr,a
      003BEE 75 82 01         [24] 7278 	mov	dpl,#0x01
      003BF1 12 3E 44         [24] 7279 	lcall	_sendProtocolMSG
                                   7280 ;	USBHost.c:947: s = initializeRootHubConnection(0);
      003BF4 75 82 00         [24] 7281 	mov	dpl,#0x00
      003BF7 12 34 46         [24] 7282 	lcall	_initializeRootHubConnection
      003BFA E5 82            [12] 7283 	mov	a,dpl
      003BFC 90 0C 38         [24] 7284 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003BFF F0               [24] 7285 	movx	@dptr,a
      003C00 80 57            [24] 7286 	sjmp	00108$
      003C02                       7287 00107$:
                                   7288 ;	USBHost.c:951: if(rootHubDevice[0].status >= ROOT_DEVICE_CONNECTED)
      003C02 90 09 83         [24] 7289 	mov	dptr,#_rootHubDevice
      003C05 E0               [24] 7290 	movx	a,@dptr
      003C06 FF               [12] 7291 	mov	r7,a
      003C07 BF 01 00         [24] 7292 	cjne	r7,#0x01,00153$
      003C0A                       7293 00153$:
      003C0A 40 4D            [24] 7294 	jc	00108$
                                   7295 ;	USBHost.c:953: resetHubDevices(0);
      003C0C 75 82 00         [24] 7296 	mov	dpl,#0x00
      003C0F 12 23 75         [24] 7297 	lcall	_resetHubDevices
                                   7298 ;	USBHost.c:954: disableRootHubPort(0);
      003C12 75 82 00         [24] 7299 	mov	dpl,#0x00
      003C15 12 17 E6         [24] 7300 	lcall	_disableRootHubPort
                                   7301 ;	USBHost.c:955: DEBUG_OUT("Device at root hub %i disconnected\n", 0);
      003C18 E4               [12] 7302 	clr	a
      003C19 C0 E0            [24] 7303 	push	acc
      003C1B C0 E0            [24] 7304 	push	acc
      003C1D 74 85            [12] 7305 	mov	a,#___str_77
      003C1F C0 E0            [24] 7306 	push	acc
      003C21 74 52            [12] 7307 	mov	a,#(___str_77 >> 8)
      003C23 C0 E0            [24] 7308 	push	acc
      003C25 74 80            [12] 7309 	mov	a,#0x80
      003C27 C0 E0            [24] 7310 	push	acc
      003C29 12 41 F8         [24] 7311 	lcall	_printf
      003C2C E5 81            [12] 7312 	mov	a,sp
      003C2E 24 FB            [12] 7313 	add	a,#0xfb
      003C30 F5 81            [12] 7314 	mov	sp,a
                                   7315 ;	USBHost.c:956: sendProtocolMSG(MSG_TYPE_DISCONNECTED,0, 0x01, 0x01, 0x01, 0);
      003C32 90 0C 7D         [24] 7316 	mov	dptr,#_sendProtocolMSG_PARM_2
      003C35 E4               [12] 7317 	clr	a
      003C36 F0               [24] 7318 	movx	@dptr,a
      003C37 A3               [24] 7319 	inc	dptr
      003C38 F0               [24] 7320 	movx	@dptr,a
      003C39 90 0C 7F         [24] 7321 	mov	dptr,#_sendProtocolMSG_PARM_3
      003C3C 04               [12] 7322 	inc	a
      003C3D F0               [24] 7323 	movx	@dptr,a
      003C3E 90 0C 80         [24] 7324 	mov	dptr,#_sendProtocolMSG_PARM_4
      003C41 F0               [24] 7325 	movx	@dptr,a
      003C42 90 0C 81         [24] 7326 	mov	dptr,#_sendProtocolMSG_PARM_5
      003C45 F0               [24] 7327 	movx	@dptr,a
      003C46 90 0C 82         [24] 7328 	mov	dptr,#_sendProtocolMSG_PARM_6
      003C49 E4               [12] 7329 	clr	a
      003C4A F0               [24] 7330 	movx	@dptr,a
      003C4B A3               [24] 7331 	inc	dptr
      003C4C F0               [24] 7332 	movx	@dptr,a
      003C4D 75 82 02         [24] 7333 	mov	dpl,#0x02
      003C50 12 3E 44         [24] 7334 	lcall	_sendProtocolMSG
                                   7335 ;	USBHost.c:957: s = ERR_USB_DISCON;
      003C53 90 0C 38         [24] 7336 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003C56 74 16            [12] 7337 	mov	a,#0x16
      003C58 F0               [24] 7338 	movx	@dptr,a
      003C59                       7339 00108$:
                                   7340 ;	USBHost.c:959: if(USB_HUB_ST & bUHS_H1_ATTACH)
      003C59 E5 DB            [12] 7341 	mov	a,_USB_HUB_ST
      003C5B 30 E7 64         [24] 7342 	jnb	acc.7,00115$
                                   7343 ;	USBHost.c:962: if(rootHubDevice[1].status == ROOT_DEVICE_DISCONNECT || (UHUB1_CTRL & bUH_PORT_EN) == 0x00)
      003C5E 90 09 86         [24] 7344 	mov	dptr,#(_rootHubDevice + 0x0003)
      003C61 E0               [24] 7345 	movx	a,@dptr
      003C62 60 08            [24] 7346 	jz	00109$
      003C64 E5 E5            [12] 7347 	mov	a,_UHUB1_CTRL
      003C66 30 E0 03         [24] 7348 	jnb	acc.0,00157$
      003C69 02 3D 1C         [24] 7349 	ljmp	00118$
      003C6C                       7350 00157$:
      003C6C                       7351 00109$:
                                   7352 ;	USBHost.c:964: disableRootHubPort(1);    //todo really need to reset register?
      003C6C 75 82 01         [24] 7353 	mov	dpl,#0x01
      003C6F 12 17 E6         [24] 7354 	lcall	_disableRootHubPort
                                   7355 ;	USBHost.c:965: rootHubDevice[1].status = ROOT_DEVICE_CONNECTED;
      003C72 90 09 86         [24] 7356 	mov	dptr,#(_rootHubDevice + 0x0003)
      003C75 74 01            [12] 7357 	mov	a,#0x01
      003C77 F0               [24] 7358 	movx	@dptr,a
                                   7359 ;	USBHost.c:966: DEBUG_OUT("Device at root hub %i connected\n", 1);
      003C78 C0 E0            [24] 7360 	push	acc
      003C7A E4               [12] 7361 	clr	a
      003C7B C0 E0            [24] 7362 	push	acc
      003C7D 74 64            [12] 7363 	mov	a,#___str_76
      003C7F C0 E0            [24] 7364 	push	acc
      003C81 74 52            [12] 7365 	mov	a,#(___str_76 >> 8)
      003C83 C0 E0            [24] 7366 	push	acc
      003C85 74 80            [12] 7367 	mov	a,#0x80
      003C87 C0 E0            [24] 7368 	push	acc
      003C89 12 41 F8         [24] 7369 	lcall	_printf
      003C8C E5 81            [12] 7370 	mov	a,sp
      003C8E 24 FB            [12] 7371 	add	a,#0xfb
      003C90 F5 81            [12] 7372 	mov	sp,a
                                   7373 ;	USBHost.c:967: sendProtocolMSG(MSG_TYPE_CONNECTED,0, 0x02, 0x02, 0x02, 0);
      003C92 90 0C 7D         [24] 7374 	mov	dptr,#_sendProtocolMSG_PARM_2
      003C95 E4               [12] 7375 	clr	a
      003C96 F0               [24] 7376 	movx	@dptr,a
      003C97 A3               [24] 7377 	inc	dptr
      003C98 F0               [24] 7378 	movx	@dptr,a
      003C99 90 0C 7F         [24] 7379 	mov	dptr,#_sendProtocolMSG_PARM_3
      003C9C 74 02            [12] 7380 	mov	a,#0x02
      003C9E F0               [24] 7381 	movx	@dptr,a
      003C9F 90 0C 80         [24] 7382 	mov	dptr,#_sendProtocolMSG_PARM_4
      003CA2 F0               [24] 7383 	movx	@dptr,a
      003CA3 90 0C 81         [24] 7384 	mov	dptr,#_sendProtocolMSG_PARM_5
      003CA6 F0               [24] 7385 	movx	@dptr,a
      003CA7 90 0C 82         [24] 7386 	mov	dptr,#_sendProtocolMSG_PARM_6
      003CAA E4               [12] 7387 	clr	a
      003CAB F0               [24] 7388 	movx	@dptr,a
      003CAC A3               [24] 7389 	inc	dptr
      003CAD F0               [24] 7390 	movx	@dptr,a
      003CAE 75 82 01         [24] 7391 	mov	dpl,#0x01
      003CB1 12 3E 44         [24] 7392 	lcall	_sendProtocolMSG
                                   7393 ;	USBHost.c:968: s = initializeRootHubConnection(1);
      003CB4 75 82 01         [24] 7394 	mov	dpl,#0x01
      003CB7 12 34 46         [24] 7395 	lcall	_initializeRootHubConnection
      003CBA E5 82            [12] 7396 	mov	a,dpl
      003CBC 90 0C 38         [24] 7397 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003CBF F0               [24] 7398 	movx	@dptr,a
      003CC0 80 5A            [24] 7399 	sjmp	00118$
      003CC2                       7400 00115$:
                                   7401 ;	USBHost.c:972: if(rootHubDevice[1].status >= ROOT_DEVICE_CONNECTED)
      003CC2 90 09 86         [24] 7402 	mov	dptr,#(_rootHubDevice + 0x0003)
      003CC5 E0               [24] 7403 	movx	a,@dptr
      003CC6 FF               [12] 7404 	mov	r7,a
      003CC7 BF 01 00         [24] 7405 	cjne	r7,#0x01,00158$
      003CCA                       7406 00158$:
      003CCA 40 50            [24] 7407 	jc	00118$
                                   7408 ;	USBHost.c:974: resetHubDevices(1);
      003CCC 75 82 01         [24] 7409 	mov	dpl,#0x01
      003CCF 12 23 75         [24] 7410 	lcall	_resetHubDevices
                                   7411 ;	USBHost.c:975: disableRootHubPort(1);
      003CD2 75 82 01         [24] 7412 	mov	dpl,#0x01
      003CD5 12 17 E6         [24] 7413 	lcall	_disableRootHubPort
                                   7414 ;	USBHost.c:976: DEBUG_OUT("Device at root hub %i disconnected\n", 1);
      003CD8 74 01            [12] 7415 	mov	a,#0x01
      003CDA C0 E0            [24] 7416 	push	acc
      003CDC E4               [12] 7417 	clr	a
      003CDD C0 E0            [24] 7418 	push	acc
      003CDF 74 85            [12] 7419 	mov	a,#___str_77
      003CE1 C0 E0            [24] 7420 	push	acc
      003CE3 74 52            [12] 7421 	mov	a,#(___str_77 >> 8)
      003CE5 C0 E0            [24] 7422 	push	acc
      003CE7 74 80            [12] 7423 	mov	a,#0x80
      003CE9 C0 E0            [24] 7424 	push	acc
      003CEB 12 41 F8         [24] 7425 	lcall	_printf
      003CEE E5 81            [12] 7426 	mov	a,sp
      003CF0 24 FB            [12] 7427 	add	a,#0xfb
      003CF2 F5 81            [12] 7428 	mov	sp,a
                                   7429 ;	USBHost.c:977: sendProtocolMSG(MSG_TYPE_DISCONNECTED,0, 0x02, 0x02, 0x02, 0);
      003CF4 90 0C 7D         [24] 7430 	mov	dptr,#_sendProtocolMSG_PARM_2
      003CF7 E4               [12] 7431 	clr	a
      003CF8 F0               [24] 7432 	movx	@dptr,a
      003CF9 A3               [24] 7433 	inc	dptr
      003CFA F0               [24] 7434 	movx	@dptr,a
      003CFB 90 0C 7F         [24] 7435 	mov	dptr,#_sendProtocolMSG_PARM_3
      003CFE 74 02            [12] 7436 	mov	a,#0x02
      003D00 F0               [24] 7437 	movx	@dptr,a
      003D01 90 0C 80         [24] 7438 	mov	dptr,#_sendProtocolMSG_PARM_4
      003D04 F0               [24] 7439 	movx	@dptr,a
      003D05 90 0C 81         [24] 7440 	mov	dptr,#_sendProtocolMSG_PARM_5
      003D08 F0               [24] 7441 	movx	@dptr,a
      003D09 90 0C 82         [24] 7442 	mov	dptr,#_sendProtocolMSG_PARM_6
      003D0C E4               [12] 7443 	clr	a
      003D0D F0               [24] 7444 	movx	@dptr,a
      003D0E A3               [24] 7445 	inc	dptr
      003D0F F0               [24] 7446 	movx	@dptr,a
      003D10 75 82 02         [24] 7447 	mov	dpl,#0x02
      003D13 12 3E 44         [24] 7448 	lcall	_sendProtocolMSG
                                   7449 ;	USBHost.c:978: s = ERR_USB_DISCON;
      003D16 90 0C 38         [24] 7450 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003D19 74 16            [12] 7451 	mov	a,#0x16
      003D1B F0               [24] 7452 	movx	@dptr,a
      003D1C                       7453 00118$:
                                   7454 ;	USBHost.c:981: return s;
      003D1C 90 0C 38         [24] 7455 	mov	dptr,#_checkRootHubConnections_s_65536_180
      003D1F E0               [24] 7456 	movx	a,@dptr
                                   7457 ;	USBHost.c:982: }
      003D20 F5 82            [12] 7458 	mov	dpl,a
      003D22 22               [24] 7459 	ret
                                   7460 	.area CSEG    (CODE)
                                   7461 	.area CONST   (CODE)
      004C74                       7462 _GetDeviceDescriptorRequest:
      004C74 80                    7463 	.db #0x80	; 128
      004C75 06                    7464 	.db #0x06	; 6
      004C76 00                    7465 	.db #0x00	; 0
      004C77 01                    7466 	.db #0x01	; 1
      004C78 00                    7467 	.db #0x00	; 0
      004C79 00                    7468 	.db #0x00	; 0
      004C7A 12                    7469 	.db #0x12	; 18
      004C7B 00                    7470 	.db #0x00	; 0
      004C7C                       7471 _GetConfigurationDescriptorRequest:
      004C7C 80                    7472 	.db #0x80	; 128
      004C7D 06                    7473 	.db #0x06	; 6
      004C7E 00                    7474 	.db #0x00	; 0
      004C7F 02                    7475 	.db #0x02	; 2
      004C80 00                    7476 	.db #0x00	; 0
      004C81 00                    7477 	.db #0x00	; 0
      004C82 12                    7478 	.db #0x12	; 18
      004C83 00                    7479 	.db #0x00	; 0
      004C84                       7480 _GetInterfaceDescriptorRequest:
      004C84 81                    7481 	.db #0x81	; 129
      004C85 06                    7482 	.db #0x06	; 6
      004C86 00                    7483 	.db #0x00	; 0
      004C87 04                    7484 	.db #0x04	; 4
      004C88 00                    7485 	.db #0x00	; 0
      004C89 00                    7486 	.db #0x00	; 0
      004C8A 09                    7487 	.db #0x09	; 9
      004C8B 00                    7488 	.db #0x00	; 0
      004C8C                       7489 _SetUSBAddressRequest:
      004C8C 00                    7490 	.db #0x00	; 0
      004C8D 05                    7491 	.db #0x05	; 5
      004C8E 02                    7492 	.db #0x02	; 2
      004C8F 00                    7493 	.db #0x00	; 0
      004C90 00                    7494 	.db #0x00	; 0
      004C91 00                    7495 	.db #0x00	; 0
      004C92 00                    7496 	.db #0x00	; 0
      004C93 00                    7497 	.db #0x00	; 0
      004C94                       7498 _GetDeviceStringRequest:
      004C94 80                    7499 	.db #0x80	; 128
      004C95 06                    7500 	.db #0x06	; 6
      004C96 02                    7501 	.db #0x02	; 2
      004C97 03                    7502 	.db #0x03	; 3
      004C98 09                    7503 	.db #0x09	; 9
      004C99 04                    7504 	.db #0x04	; 4
      004C9A 02                    7505 	.db #0x02	; 2
      004C9B 04                    7506 	.db #0x04	; 4
      004C9C                       7507 _SetupSetUsbConfig:
      004C9C 00                    7508 	.db #0x00	; 0
      004C9D 09                    7509 	.db #0x09	; 9
      004C9E 00                    7510 	.db #0x00	; 0
      004C9F 00                    7511 	.db #0x00	; 0
      004CA0 00                    7512 	.db #0x00	; 0
      004CA1 00                    7513 	.db #0x00	; 0
      004CA2 00                    7514 	.db #0x00	; 0
      004CA3 00                    7515 	.db #0x00	; 0
      004CA4                       7516 _SetHIDIdleRequest:
      004CA4 21                    7517 	.db #0x21	; 33
      004CA5 0A                    7518 	.db #0x0a	; 10
      004CA6 00                    7519 	.db #0x00	; 0
      004CA7 00                    7520 	.db #0x00	; 0
      004CA8 00                    7521 	.db #0x00	; 0
      004CA9 00                    7522 	.db #0x00	; 0
      004CAA 00                    7523 	.db #0x00	; 0
      004CAB 00                    7524 	.db #0x00	; 0
      004CAC                       7525 _GetHIDReport:
      004CAC 81                    7526 	.db #0x81	; 129
      004CAD 06                    7527 	.db #0x06	; 6
      004CAE 00                    7528 	.db #0x00	; 0
      004CAF 22                    7529 	.db #0x22	; 34
      004CB0 00                    7530 	.db #0x00	; 0
      004CB1 00                    7531 	.db #0x00	; 0
      004CB2 FF                    7532 	.db #0xff	; 255
      004CB3 00                    7533 	.db #0x00	; 0
                                   7534 	.area CONST   (CODE)
      004CB4                       7535 ___str_0:
      004CB4 68 6F 73 74 43 74 72  7536 	.ascii "hostCtrlTransfer"
             6C 54 72 61 6E 73 66
             65 72
      004CC4 0A                    7537 	.db 0x0a
      004CC5 00                    7538 	.db 0x00
                                   7539 	.area CSEG    (CODE)
                                   7540 	.area CONST   (CODE)
      004CC6                       7541 ___str_1:
      004CC6 52 65 6D 61 69 6E 69  7542 	.ascii "Remaining bytes to read %d"
             6E 67 20 62 79 74 65
             73 20 74 6F 20 72 65
             61 64 20 25 64
      004CE0 0A                    7543 	.db 0x0a
      004CE1 00                    7544 	.db 0x00
                                   7545 	.area CSEG    (CODE)
                                   7546 	.area CONST   (CODE)
      004CE2                       7547 ___str_2:
      004CE2 52 65 63 65 69 76 65  7548 	.ascii "Received %i bytes"
             64 20 25 69 20 62 79
             74 65 73
      004CF3 0A                    7549 	.db 0x0a
      004CF4 00                    7550 	.db 0x00
                                   7551 	.area CSEG    (CODE)
                                   7552 	.area CONST   (CODE)
      004CF5                       7553 ___str_3:
      004CF5 52 65 6D 61 69 6E 69  7554 	.ascii "Remaining bytes to write %i"
             6E 67 20 62 79 74 65
             73 20 74 6F 20 77 72
             69 74 65 20 25 69
      004D10 00                    7555 	.db 0x00
                                   7556 	.area CSEG    (CODE)
                                   7557 	.area CONST   (CODE)
      004D11                       7558 ___str_4:
      004D11 53 45 54 5F 50 4F 52  7559 	.ascii "SET_PORT  %02X  %02X "
             54 20 20 25 30 32 58
             20 20 25 30 32 58 20
      004D26 00                    7560 	.db 0x00
                                   7561 	.area CSEG    (CODE)
                                   7562 	.area CONST   (CODE)
      004D27                       7563 ___str_5:
      004D27 53 65 6E 64 69 6E 67  7564 	.ascii "Sending %i bytes"
             20 25 69 20 62 79 74
             65 73
      004D37 0A                    7565 	.db 0x0a
      004D38 00                    7566 	.db 0x00
                                   7567 	.area CSEG    (CODE)
                                   7568 	.area CONST   (CODE)
      004D39                       7569 ___str_6:
      004D39 66 69 6C 6C 54 78 42  7570 	.ascii "fillTxBuffer %i bytes"
             75 66 66 65 72 20 25
             69 20 62 79 74 65 73
      004D4E 0A                    7571 	.db 0x0a
      004D4F 00                    7572 	.db 0x00
                                   7573 	.area CSEG    (CODE)
                                   7574 	.area CONST   (CODE)
      004D50                       7575 ___str_7:
      004D50 66 69 6C 6C 54 78 42  7576 	.ascii "fillTxBuffer done"
             75 66 66 65 72 20 64
             6F 6E 65
      004D61 0A                    7577 	.db 0x0a
      004D62 00                    7578 	.db 0x00
                                   7579 	.area CSEG    (CODE)
                                   7580 	.area CONST   (CODE)
      004D63                       7581 ___str_8:
      004D63 67 65 74 44 65 76 69  7582 	.ascii "getDeviceDescriptor"
             63 65 44 65 73 63 72
             69 70 74 6F 72
      004D76 0A                    7583 	.db 0x0a
      004D77 00                    7584 	.db 0x00
                                   7585 	.area CSEG    (CODE)
                                   7586 	.area CONST   (CODE)
      004D78                       7587 ___str_9:
      004D78 44 65 76 69 63 65 20  7588 	.ascii "Device descriptor request sent successfully"
             64 65 73 63 72 69 70
             74 6F 72 20 72 65 71
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79
      004DA3 0A                    7589 	.db 0x0a
      004DA4 00                    7590 	.db 0x00
                                   7591 	.area CSEG    (CODE)
                                   7592 	.area CONST   (CODE)
      004DA5                       7593 ___str_10:
      004DA5 52 65 63 65 69 76 65  7594 	.ascii "Received packet is smaller than expected"
             64 20 70 61 63 6B 65
             74 20 69 73 20 73 6D
             61 6C 6C 65 72 20 74
             68 61 6E 20 65 78 70
             65 63 74 65 64
      004DCD 0A                    7595 	.db 0x0a
      004DCE 00                    7596 	.db 0x00
                                   7597 	.area CSEG    (CODE)
                                   7598 	.area CONST   (CODE)
      004DCF                       7599 ___str_11:
      004DCF 53 65 74 41 64 64 72  7600 	.ascii "SetAddress: %i"
             65 73 73 3A 20 25 69
      004DDD 0A                    7601 	.db 0x0a
      004DDE 00                    7602 	.db 0x00
                                   7603 	.area CSEG    (CODE)
                                   7604 	.area CONST   (CODE)
      004DDF                       7605 ___str_12:
      004DDF 30 78 25 30 32 58 20  7606 	.ascii "0x%02X "
      004DE6 00                    7607 	.db 0x00
                                   7608 	.area CSEG    (CODE)
                                   7609 	.area CONST   (CODE)
      004DE7                       7610 ___str_13:
      004DE7 0A                    7611 	.db 0x0a
      004DE8 00                    7612 	.db 0x00
                                   7613 	.area CSEG    (CODE)
                                   7614 	.area CONST   (CODE)
      004DE9                       7615 ___str_14:
      004DE9 20 20 20 20           7616 	.ascii "    "
      004DED 00                    7617 	.db 0x00
                                   7618 	.area CSEG    (CODE)
                                   7619 	.area CONST   (CODE)
      004DEE                       7620 ___str_15:
      004DEE 55 73 61 67 65 20 70  7621 	.ascii "Usage page "
             61 67 65 20
      004DF9 00                    7622 	.db 0x00
                                   7623 	.area CSEG    (CODE)
                                   7624 	.area CONST   (CODE)
      004DFA                       7625 ___str_16:
      004DFA 4C 45 44 73           7626 	.ascii "LEDs"
      004DFE 00                    7627 	.db 0x00
                                   7628 	.area CSEG    (CODE)
                                   7629 	.area CONST   (CODE)
      004DFF                       7630 ___str_17:
      004DFF 4B 65 79 62 6F 61 72  7631 	.ascii "Keyboard/Keypad"
             64 2F 4B 65 79 70 61
             64
      004E0E 00                    7632 	.db 0x00
                                   7633 	.area CSEG    (CODE)
                                   7634 	.area CONST   (CODE)
      004E0F                       7635 ___str_18:
      004E0F 42 75 74 74 6F 6E     7636 	.ascii "Button"
      004E15 00                    7637 	.db 0x00
                                   7638 	.area CSEG    (CODE)
                                   7639 	.area CONST   (CODE)
      004E16                       7640 ___str_19:
      004E16 67 65 6E 65 72 69 63  7641 	.ascii "generic desktop controls"
             20 64 65 73 6B 74 6F
             70 20 63 6F 6E 74 72
             6F 6C 73
      004E2E 00                    7642 	.db 0x00
                                   7643 	.area CSEG    (CODE)
                                   7644 	.area CONST   (CODE)
      004E2F                       7645 ___str_20:
      004E2F 76 65 6E 64 6F 72 20  7646 	.ascii "vendor defined 0x%04lx"
             64 65 66 69 6E 65 64
             20 30 78 25 30 34 6C
             78
      004E45 00                    7647 	.db 0x00
                                   7648 	.area CSEG    (CODE)
                                   7649 	.area CONST   (CODE)
      004E46                       7650 ___str_21:
      004E46 75 6E 6B 6E 6F 77 6E  7651 	.ascii "unknown 0x%02lx"
             20 30 78 25 30 32 6C
             78
      004E55 00                    7652 	.db 0x00
                                   7653 	.area CSEG    (CODE)
                                   7654 	.area CONST   (CODE)
      004E56                       7655 ___str_22:
      004E56 55 73 61 67 65 20     7656 	.ascii "Usage "
      004E5C 00                    7657 	.db 0x00
                                   7658 	.area CSEG    (CODE)
                                   7659 	.area CONST   (CODE)
      004E5D                       7660 ___str_23:
      004E5D 55 6E 6B 6E 6F 77 6E  7661 	.ascii "Unknown"
      004E64 00                    7662 	.db 0x00
                                   7663 	.area CSEG    (CODE)
                                   7664 	.area CONST   (CODE)
      004E65                       7665 ___str_24:
      004E65 50 6F 69 6E 74 65 72  7666 	.ascii "Pointer"
      004E6C 00                    7667 	.db 0x00
                                   7668 	.area CSEG    (CODE)
                                   7669 	.area CONST   (CODE)
      004E6D                       7670 ___str_25:
      004E6D 4D 6F 75 73 65        7671 	.ascii "Mouse"
      004E72 00                    7672 	.db 0x00
                                   7673 	.area CSEG    (CODE)
                                   7674 	.area CONST   (CODE)
      004E73                       7675 ___str_26:
      004E73 52 65 73 65 72 76 65  7676 	.ascii "Reserved"
             64
      004E7B 00                    7677 	.db 0x00
                                   7678 	.area CSEG    (CODE)
                                   7679 	.area CONST   (CODE)
      004E7C                       7680 ___str_27:
      004E7C 4A 6F 79 73 74 69 63  7681 	.ascii "Joystick"
             6B
      004E84 00                    7682 	.db 0x00
                                   7683 	.area CSEG    (CODE)
                                   7684 	.area CONST   (CODE)
      004E85                       7685 ___str_28:
      004E85 47 61 6D 65 70 61 64  7686 	.ascii "Gamepad"
      004E8C 00                    7687 	.db 0x00
                                   7688 	.area CSEG    (CODE)
                                   7689 	.area CONST   (CODE)
      004E8D                       7690 ___str_29:
      004E8D 4B 65 79 62 6F 61 72  7691 	.ascii "Keyboard"
             64
      004E95 00                    7692 	.db 0x00
                                   7693 	.area CSEG    (CODE)
                                   7694 	.area CONST   (CODE)
      004E96                       7695 ___str_30:
      004E96 4B 65 79 70 61 64     7696 	.ascii "Keypad"
      004E9C 00                    7697 	.db 0x00
                                   7698 	.area CSEG    (CODE)
                                   7699 	.area CONST   (CODE)
      004E9D                       7700 ___str_31:
      004E9D 4D 75 6C 74 69 2D 41  7701 	.ascii "Multi-Axis controller"
             78 69 73 20 63 6F 6E
             74 72 6F 6C 6C 65 72
      004EB2 00                    7702 	.db 0x00
                                   7703 	.area CSEG    (CODE)
                                   7704 	.area CONST   (CODE)
      004EB3                       7705 ___str_32:
      004EB3 54 61 62 6C 65 74 20  7706 	.ascii "Tablet system controls"
             73 79 73 74 65 6D 20
             63 6F 6E 74 72 6F 6C
             73
      004EC9 00                    7707 	.db 0x00
                                   7708 	.area CSEG    (CODE)
                                   7709 	.area CONST   (CODE)
      004ECA                       7710 ___str_33:
      004ECA 58                    7711 	.ascii "X"
      004ECB 00                    7712 	.db 0x00
                                   7713 	.area CSEG    (CODE)
                                   7714 	.area CONST   (CODE)
      004ECC                       7715 ___str_34:
      004ECC 59                    7716 	.ascii "Y"
      004ECD 00                    7717 	.db 0x00
                                   7718 	.area CSEG    (CODE)
                                   7719 	.area CONST   (CODE)
      004ECE                       7720 ___str_35:
      004ECE 5A                    7721 	.ascii "Z"
      004ECF 00                    7722 	.db 0x00
                                   7723 	.area CSEG    (CODE)
                                   7724 	.area CONST   (CODE)
      004ED0                       7725 ___str_36:
      004ED0 57 68 65 65 6C        7726 	.ascii "Wheel"
      004ED5 00                    7727 	.db 0x00
                                   7728 	.area CSEG    (CODE)
                                   7729 	.area CONST   (CODE)
      004ED6                       7730 ___str_37:
      004ED6 4C 6F 67 69 63 61 6C  7731 	.ascii "Logical min %lu"
             20 6D 69 6E 20 25 6C
             75
      004EE5 0A                    7732 	.db 0x0a
      004EE6 00                    7733 	.db 0x00
                                   7734 	.area CSEG    (CODE)
                                   7735 	.area CONST   (CODE)
      004EE7                       7736 ___str_38:
      004EE7 4C 6F 67 69 63 61 6C  7737 	.ascii "Logical max %lu"
             20 6D 61 78 20 25 6C
             75
      004EF6 0A                    7738 	.db 0x0a
      004EF7 00                    7739 	.db 0x00
                                   7740 	.area CSEG    (CODE)
                                   7741 	.area CONST   (CODE)
      004EF8                       7742 ___str_39:
      004EF8 50 68 79 73 69 63 61  7743 	.ascii "Physical min %lu"
             6C 20 6D 69 6E 20 25
             6C 75
      004F08 0A                    7744 	.db 0x0a
      004F09 00                    7745 	.db 0x00
                                   7746 	.area CSEG    (CODE)
                                   7747 	.area CONST   (CODE)
      004F0A                       7748 ___str_40:
      004F0A 50 68 79 73 69 63 61  7749 	.ascii "Physical max %lu"
             6C 20 6D 61 78 20 25
             6C 75
      004F1A 0A                    7750 	.db 0x0a
      004F1B 00                    7751 	.db 0x00
                                   7752 	.area CSEG    (CODE)
                                   7753 	.area CONST   (CODE)
      004F1C                       7754 ___str_41:
      004F1C 43 6F 6C 6C 65 63 74  7755 	.ascii "Collection start %lu"
             69 6F 6E 20 73 74 61
             72 74 20 25 6C 75
      004F30 0A                    7756 	.db 0x0a
      004F31 00                    7757 	.db 0x00
                                   7758 	.area CSEG    (CODE)
                                   7759 	.area CONST   (CODE)
      004F32                       7760 ___str_42:
      004F32 43 6F 6C 6C 65 63 74  7761 	.ascii "Collection end %lu"
             69 6F 6E 20 65 6E 64
             20 25 6C 75
      004F44 0A                    7762 	.db 0x0a
      004F45 00                    7763 	.db 0x00
                                   7764 	.area CSEG    (CODE)
                                   7765 	.area CONST   (CODE)
      004F46                       7766 ___str_43:
      004F46 55 6E 69 74 20 30 78  7767 	.ascii "Unit 0x%02lx"
             25 30 32 6C 78
      004F52 0A                    7768 	.db 0x0a
      004F53 00                    7769 	.db 0x00
                                   7770 	.area CSEG    (CODE)
                                   7771 	.area CONST   (CODE)
      004F54                       7772 ___str_44:
      004F54 49 6E 70 75 74 20 30  7773 	.ascii "Input 0x%02lx"
             78 25 30 32 6C 78
      004F61 0A                    7774 	.db 0x0a
      004F62 00                    7775 	.db 0x00
                                   7776 	.area CSEG    (CODE)
                                   7777 	.area CONST   (CODE)
      004F63                       7778 ___str_45:
      004F63 4F 75 74 70 75 74 20  7779 	.ascii "Output 0x%02lx"
             30 78 25 30 32 6C 78
      004F71 0A                    7780 	.db 0x0a
      004F72 00                    7781 	.db 0x00
                                   7782 	.area CSEG    (CODE)
                                   7783 	.area CONST   (CODE)
      004F73                       7784 ___str_46:
      004F73 46 65 61 74 75 72 65  7785 	.ascii "Feature 0x%02lx"
             20 30 78 25 30 32 6C
             78
      004F82 0A                    7786 	.db 0x0a
      004F83 00                    7787 	.db 0x00
                                   7788 	.area CSEG    (CODE)
                                   7789 	.area CONST   (CODE)
      004F84                       7790 ___str_47:
      004F84 52 65 70 6F 72 74 20  7791 	.ascii "Report size %lu"
             73 69 7A 65 20 25 6C
             75
      004F93 0A                    7792 	.db 0x0a
      004F94 00                    7793 	.db 0x00
                                   7794 	.area CSEG    (CODE)
                                   7795 	.area CONST   (CODE)
      004F95                       7796 ___str_48:
      004F95 52 65 70 6F 72 74 20  7797 	.ascii "Report ID %lu"
             49 44 20 25 6C 75
      004FA2 0A                    7798 	.db 0x0a
      004FA3 00                    7799 	.db 0x00
                                   7800 	.area CSEG    (CODE)
                                   7801 	.area CONST   (CODE)
      004FA4                       7802 ___str_49:
      004FA4 52 65 70 6F 72 74 20  7803 	.ascii "Report count %lu"
             63 6F 75 6E 74 20 25
             6C 75
      004FB4 0A                    7804 	.db 0x0a
      004FB5 00                    7805 	.db 0x00
                                   7806 	.area CSEG    (CODE)
                                   7807 	.area CONST   (CODE)
      004FB6                       7808 ___str_50:
      004FB6 55 6E 6B 6E 6F 77 6E  7809 	.ascii "Unknown HID report identifier: 0x%02x (%i bytes) data: 0x%02"
             20 48 49 44 20 72 65
             70 6F 72 74 20 69 64
             65 6E 74 69 66 69 65
             72 3A 20 30 78 25 30
             32 78 20 28 25 69 20
             62 79 74 65 73 29 20
             64 61 74 61 3A 20 30
             78 25 30 32
      004FF2 6C 78                 7810 	.ascii "lx"
      004FF4 0A                    7811 	.db 0x0a
      004FF5 00                    7812 	.db 0x00
                                   7813 	.area CSEG    (CODE)
                                   7814 	.area CONST   (CODE)
      004FF6                       7815 ___str_51:
      004FF6 52 65 71 75 65 73 74  7816 	.ascii "Requesting report from interface %i"
             69 6E 67 20 72 65 70
             6F 72 74 20 66 72 6F
             6D 20 69 6E 74 65 72
             66 61 63 65 20 25 69
      005019 0A                    7817 	.db 0x0a
      00501A 00                    7818 	.db 0x00
                                   7819 	.area CSEG    (CODE)
                                   7820 	.area CONST   (CODE)
      00501B                       7821 ___str_52:
      00501B 49 6E 74 65 72 66 61  7822 	.ascii "Interface %d"
             63 65 20 25 64
      005027 0A                    7823 	.db 0x0a
      005028 00                    7824 	.db 0x00
                                   7825 	.area CSEG    (CODE)
                                   7826 	.area CONST   (CODE)
      005029                       7827 ___str_53:
      005029 20 20 43 6C 61 73 73  7828 	.ascii "  Class %d"
             20 25 64
      005033 0A                    7829 	.db 0x0a
      005034 00                    7830 	.db 0x00
                                   7831 	.area CSEG    (CODE)
                                   7832 	.area CONST   (CODE)
      005035                       7833 ___str_54:
      005035 20 20 53 75 62 20 43  7834 	.ascii "  Sub Class %d"
             6C 61 73 73 20 25 64
      005043 0A                    7835 	.db 0x0a
      005044 00                    7836 	.db 0x00
                                   7837 	.area CSEG    (CODE)
                                   7838 	.area CONST   (CODE)
      005045                       7839 ___str_55:
      005045 20 20 49 6E 74 65 72  7840 	.ascii "  Interface Protocol %d"
             66 61 63 65 20 50 72
             6F 74 6F 63 6F 6C 20
             25 64
      00505C 0A                    7841 	.db 0x0a
      00505D 00                    7842 	.db 0x00
                                   7843 	.area CSEG    (CODE)
                                   7844 	.area CONST   (CODE)
      00505E                       7845 ___str_56:
      00505E 48 49 44 20 61 74 20  7846 	.ascii "HID at Interface %d"
             49 6E 74 65 72 66 61
             63 65 20 25 64
      005071 0A                    7847 	.db 0x0a
      005072 00                    7848 	.db 0x00
                                   7849 	.area CSEG    (CODE)
                                   7850 	.area CONST   (CODE)
      005073                       7851 ___str_57:
      005073 20 20 55 53 42 20 25  7852 	.ascii "  USB %d.%d%d"
             64 2E 25 64 25 64
      005080 0A                    7853 	.db 0x0a
      005081 00                    7854 	.db 0x00
                                   7855 	.area CSEG    (CODE)
                                   7856 	.area CONST   (CODE)
      005082                       7857 ___str_58:
      005082 20 20 43 6F 75 6E 74  7858 	.ascii "  Country code 0x%02X"
             72 79 20 63 6F 64 65
             20 30 78 25 30 32 58
      005097 0A                    7859 	.db 0x0a
      005098 00                    7860 	.db 0x00
                                   7861 	.area CSEG    (CODE)
                                   7862 	.area CONST   (CODE)
      005099                       7863 ___str_59:
      005099 20 20 54 79 70 65 58  7864 	.ascii "  TypeX 0x%02X"
             20 30 78 25 30 32 58
      0050A7 0A                    7865 	.db 0x0a
      0050A8 00                    7866 	.db 0x00
                                   7867 	.area CSEG    (CODE)
                                   7868 	.area CONST   (CODE)
      0050A9                       7869 ___str_60:
      0050A9 46 61 69 6C 65 64 20  7870 	.ascii "Failed to enable root hub port %i"
             74 6F 20 65 6E 61 62
             6C 65 20 72 6F 6F 74
             20 68 75 62 20 70 6F
             72 74 20 25 69
      0050CA 0A                    7871 	.db 0x0a
      0050CB 00                    7872 	.db 0x00
                                   7873 	.area CSEG    (CODE)
                                   7874 	.area CONST   (CODE)
      0050CC                       7875 ___str_61:
      0050CC 72 6F 6F 74 20 68 75  7876 	.ascii "root hub port %i enabled"
             62 20 70 6F 72 74 20
             25 69 20 65 6E 61 62
             6C 65 64
      0050E4 0A                    7877 	.db 0x0a
      0050E5 00                    7878 	.db 0x00
                                   7879 	.area CSEG    (CODE)
                                   7880 	.area CONST   (CODE)
      0050E6                       7881 ___str_62:
      0050E6 44 65 76 69 63 65 20  7882 	.ascii "Device class %i"
             63 6C 61 73 73 20 25
             69
      0050F5 0A                    7883 	.db 0x0a
      0050F6 00                    7884 	.db 0x00
                                   7885 	.area CSEG    (CODE)
                                   7886 	.area CONST   (CODE)
      0050F7                       7887 ___str_63:
      0050F7 4D 61 78 20 70 61 63  7888 	.ascii "Max packet size %i"
             6B 65 74 20 73 69 7A
             65 20 25 69
      005109 0A                    7889 	.db 0x0a
      00510A 00                    7890 	.db 0x00
                                   7891 	.area CSEG    (CODE)
                                   7892 	.area CONST   (CODE)
      00510B                       7893 ___str_64:
      00510B 44 65 76 69 63 65 20  7894 	.ascii "Device String: %s"
             53 74 72 69 6E 67 3A
             20 25 73
      00511C 0A                    7895 	.db 0x0a
      00511D 00                    7896 	.db 0x00
                                   7897 	.area CSEG    (CODE)
                                   7898 	.area CONST   (CODE)
      00511E                       7899 ___str_65:
      00511E 43 6F 6E 66 69 67 75  7900 	.ascii "Configuration value: %d"
             72 61 74 69 6F 6E 20
             76 61 6C 75 65 3A 20
             25 64
      005135 0A                    7901 	.db 0x0a
      005136 00                    7902 	.db 0x00
                                   7903 	.area CSEG    (CODE)
                                   7904 	.area CONST   (CODE)
      005137                       7905 ___str_66:
      005137 49 6E 74 65 72 66 61  7906 	.ascii "Interface count: %d"
             63 65 20 63 6F 75 6E
             74 3A 20 25 64
      00514A 0A                    7907 	.db 0x0a
      00514B 00                    7908 	.db 0x00
                                   7909 	.area CSEG    (CODE)
                                   7910 	.area CONST   (CODE)
      00514C                       7911 ___str_67:
      00514C 49 6E 74 65 72 66 61  7912 	.ascii "Interface descriptor found"
             63 65 20 64 65 73 63
             72 69 70 74 6F 72 20
             66 6F 75 6E 64
      005166 0A                    7913 	.db 0x0a
      005167 00                    7914 	.db 0x00
                                   7915 	.area CSEG    (CODE)
                                   7916 	.area CONST   (CODE)
      005168                       7917 ___str_68:
      005168 45 6E 64 70 6F 69 6E  7918 	.ascii "Endpoint descriptor found"
             74 20 64 65 73 63 72
             69 70 74 6F 72 20 66
             6F 75 6E 64
      005181 0A                    7919 	.db 0x0a
      005182 00                    7920 	.db 0x00
                                   7921 	.area CSEG    (CODE)
                                   7922 	.area CONST   (CODE)
      005183                       7923 ___str_69:
      005183 43 6F 6E 6E 65 63 74  7924 	.ascii "Connected device at position: %i"
             65 64 20 64 65 76 69
             63 65 20 61 74 20 70
             6F 73 69 74 69 6F 6E
             3A 20 25 69
      0051A3 0A                    7925 	.db 0x0a
      0051A4 00                    7926 	.db 0x00
                                   7927 	.area CSEG    (CODE)
                                   7928 	.area CONST   (CODE)
      0051A5                       7929 ___str_70:
      0051A5 47 6F 74 20 65 6E 64  7930 	.ascii "Got endpoint for the HIDdevice 0x%02x"
             70 6F 69 6E 74 20 66
             6F 72 20 74 68 65 20
             48 49 44 64 65 76 69
             63 65 20 30 78 25 30
             32 78
      0051CA 0A                    7931 	.db 0x0a
      0051CB 00                    7932 	.db 0x00
                                   7933 	.area CSEG    (CODE)
                                   7934 	.area CONST   (CODE)
      0051CC                       7935 ___str_71:
      0051CC 48 49 44 20 64 65 73  7936 	.ascii "HID descriptor found"
             63 72 69 70 74 6F 72
             20 66 6F 75 6E 64
      0051E0 0A                    7937 	.db 0x0a
      0051E1 00                    7938 	.db 0x00
                                   7939 	.area CSEG    (CODE)
                                   7940 	.area CONST   (CODE)
      0051E2                       7941 ___str_72:
      0051E2 43 6C 61 73 73 20 73  7942 	.ascii "Class specific header descriptor found"
             70 65 63 69 66 69 63
             20 68 65 61 64 65 72
             20 64 65 73 63 72 69
             70 74 6F 72 20 66 6F
             75 6E 64
      005208 0A                    7943 	.db 0x0a
      005209 00                    7944 	.db 0x00
                                   7945 	.area CSEG    (CODE)
                                   7946 	.area CONST   (CODE)
      00520A                       7947 ___str_73:
      00520A 43 6C 61 73 73 20 73  7948 	.ascii "Class specific endpoint descriptor found"
             70 65 63 69 66 69 63
             20 65 6E 64 70 6F 69
             6E 74 20 64 65 73 63
             72 69 70 74 6F 72 20
             66 6F 75 6E 64
      005232 0A                    7949 	.db 0x0a
      005233 00                    7950 	.db 0x00
                                   7951 	.area CSEG    (CODE)
                                   7952 	.area CONST   (CODE)
      005234                       7953 ___str_74:
      005234 55 6E 65 78 70 65 63  7954 	.ascii "Unexpected descriptor type: %02X"
             74 65 64 20 64 65 73
             63 72 69 70 74 6F 72
             20 74 79 70 65 3A 20
             25 30 32 58
      005254 0A                    7955 	.db 0x0a
      005255 00                    7956 	.db 0x00
                                   7957 	.area CSEG    (CODE)
                                   7958 	.area CONST   (CODE)
      005256                       7959 ___str_75:
      005256 45 72 72 6F 72 20 3D  7960 	.ascii "Error = %02X"
             20 25 30 32 58
      005262 0A                    7961 	.db 0x0a
      005263 00                    7962 	.db 0x00
                                   7963 	.area CSEG    (CODE)
                                   7964 	.area CONST   (CODE)
      005264                       7965 ___str_76:
      005264 44 65 76 69 63 65 20  7966 	.ascii "Device at root hub %i connected"
             61 74 20 72 6F 6F 74
             20 68 75 62 20 25 69
             20 63 6F 6E 6E 65 63
             74 65 64
      005283 0A                    7967 	.db 0x0a
      005284 00                    7968 	.db 0x00
                                   7969 	.area CSEG    (CODE)
                                   7970 	.area CONST   (CODE)
      005285                       7971 ___str_77:
      005285 44 65 76 69 63 65 20  7972 	.ascii "Device at root hub %i disconnected"
             61 74 20 72 6F 6F 74
             20 68 75 62 20 25 69
             20 64 69 73 63 6F 6E
             6E 65 63 74 65 64
      0052A7 0A                    7973 	.db 0x0a
      0052A8 00                    7974 	.db 0x00
                                   7975 	.area CSEG    (CODE)
                                   7976 	.area XINIT   (CODE)
                                   7977 	.area CABS    (ABS,CODE)
