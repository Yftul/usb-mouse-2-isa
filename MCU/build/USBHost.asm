;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module USBHost
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetHIDReport
	.globl _SetHIDIdleRequest
	.globl _SetupSetUsbConfig
	.globl _GetDeviceStringRequest
	.globl _SetUSBAddressRequest
	.globl _GetInterfaceDescriptorRequest
	.globl _GetConfigurationDescriptorRequest
	.globl _GetDeviceDescriptorRequest
	.globl _initializeRootHubConnection
	.globl _readEndpoint
	.globl _readHIDInterface
	.globl _readInterface
	.globl _getHIDDeviceReport
	.globl _parseHIDDeviceReport
	.globl _getInterfaceDescriptor
	.globl _getConfigurationDescriptor
	.globl _DEBUG_OUT_USB_BUFFER
	.globl _convertStringDescriptor
	.globl _getDeviceString
	.globl _setUsbConfig
	.globl _setUsbAddress
	.globl _getDeviceDescriptor
	.globl _fillTxBuffer
	.globl _hostCtrlTransfer
	.globl _hostTransfer
	.globl _selectHubPort
	.globl _enableRootHubPort
	.globl _resetRootHubPort
	.globl _setUsbSpeed
	.globl _setHostUsbAddr
	.globl _disableRootHubPort
	.globl _flash_led
	.globl _mouse_write
	.globl _sendProtocolMSG
	.globl _sendHidPollMSG
	.globl _delay
	.globl _delayUs
	.globl _printf
	.globl _LED
	.globl _UIF_BUS_RST
	.globl _UIF_DETECT
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_HST_SOF
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _S0_R_FIFO0
	.globl _S0_R_FIFO1
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD1_
	.globl _LED2
	.globl _CAP3_
	.globl _PWM3_
	.globl _PWM1_
	.globl _TXD1_
	.globl _TNOW_
	.globl _LED3
	.globl _PWM2_
	.globl _SCS_
	.globl _SCK_
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _LED0
	.globl _INT1
	.globl _LED1
	.globl _T0
	.globl _XCS0
	.globl _LEDC
	.globl _T1
	.globl _DA6
	.globl _WR
	.globl _RD
	.globl _MOSI1
	.globl _MISO1
	.globl _SCK1
	.globl _PWM1
	.globl _CAP2_
	.globl _T2EX_
	.globl _PWM2
	.globl _TNOW
	.globl _RXD1
	.globl _DA7
	.globl _TXD1
	.globl _CAP1
	.globl _T2
	.globl _CAP2
	.globl _T2EX
	.globl _CAP3
	.globl _PWM3
	.globl _SCS
	.globl _MOSI
	.globl _MISO
	.globl _SCK
	.globl _AIN0
	.globl _AIN1
	.globl _AIN2
	.globl _AIN3
	.globl _AIN4
	.globl _AIN5
	.globl _AIN6
	.globl _AIN7
	.globl _UDTR
	.globl _URTS
	.globl _RXD_
	.globl _TXD_
	.globl _UCTS
	.globl _UDSR
	.globl _URI
	.globl _UDCD
	.globl _IE_SPI0
	.globl _IE_TMR3
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWM1
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _USB_DMA_AH
	.globl _USB_DMA_AL
	.globl _USB_DMA
	.globl _UHUB1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_HUB_ST
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _USB_RX_LEN
	.globl _ADC_EX_SW
	.globl _ADC_SETUP
	.globl _ADC_FIFO_H
	.globl _ADC_FIFO_L
	.globl _ADC_FIFO
	.globl _ADC_CHANN
	.globl _ADC_CTRL
	.globl _ADC_STAT
	.globl _ADC_CK_SE
	.globl _ADC_DMA_CN
	.globl _ADC_DMA_AH
	.globl _ADC_DMA_AL
	.globl _ADC_DMA
	.globl _SER1_ADDR
	.globl _SER1_MSR
	.globl _SER1_LSR
	.globl _SER1_MCR
	.globl _SER1_LCR
	.globl _SER1_IIR
	.globl _SER1_IER
	.globl _SER1_FIFO
	.globl _SPI1_CK_SE
	.globl _SPI1_CTRL
	.globl _SPI1_DATA
	.globl _SPI1_STAT
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CYCLE
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA
	.globl _PWM_DATA2
	.globl _T3_FIFO_H
	.globl _T3_FIFO_L
	.globl _T3_FIFO
	.globl _T3_DMA_AH
	.globl _T3_DMA_AL
	.globl _T3_DMA
	.globl _T3_DMA_CN
	.globl _T3_CTRL
	.globl _T3_STAT
	.globl _T3_END_H
	.globl _T3_END_L
	.globl _T3_END
	.globl _T3_COUNT_H
	.globl _T3_COUNT_L
	.globl _T3_COUNT
	.globl _T3_SETUP
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_SPEED
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _PORT_CFG
	.globl _P5_IN
	.globl _P4_PU
	.globl _P4_DIR
	.globl _P4_IN
	.globl _P4_OUT
	.globl _P3_PU
	.globl _P3_DIR
	.globl _P3
	.globl _P2_PU
	.globl _P2_DIR
	.globl _P2
	.globl _P1_PU
	.globl _P1_DIR
	.globl _P1_IE
	.globl _P1
	.globl _P0_PU
	.globl _P0_DIR
	.globl _P0
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _SLEEP_CTRL
	.globl _CLOCK_CFG
	.globl _PLL_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _readHIDInterface_PARM_2
	.globl _readInterface_PARM_2
	.globl _parseHIDDeviceReport_PARM_3
	.globl _parseHIDDeviceReport_PARM_2
	.globl _VendorProductID
	.globl _HIDdevice
	.globl _convertStringDescriptor_PARM_4
	.globl _convertStringDescriptor_PARM_3
	.globl _convertStringDescriptor_PARM_2
	.globl _fillTxBuffer_PARM_2
	.globl _hostCtrlTransfer_PARM_3
	.globl _hostCtrlTransfer_PARM_2
	.globl _hostTransfer_PARM_3
	.globl _hostTransfer_PARM_2
	.globl _selectHubPort_PARM_2
	.globl _rootHubDevice
	.globl _receiveDataBuffer
	.globl _endpoint0Size
	.globl _TxBuffer
	.globl _RxBuffer
	.globl _LED_DMA_XL
	.globl _LED_DMA_XH
	.globl _LED_DMA_CN
	.globl _LED_DMA_AL
	.globl _LED_DMA_AH
	.globl _LED_CK_SE
	.globl _LED_DATA
	.globl _LED_CTRL
	.globl _LED_STAT
	.globl _pUEP3_DMA_L
	.globl _pUEP3_DMA_H
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _pUEP2_DMA_L
	.globl _pUEP2_DMA_H
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _pUEP1_DMA_L
	.globl _pUEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA_H
	.globl _pUEP0_DMA_L
	.globl _pUEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA_H
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _pLED_DMA_XL
	.globl _pLED_DMA_XH
	.globl _pLED_DMA_CN
	.globl _pLED_DMA_AL
	.globl _pLED_DMA_AH
	.globl _pLED_CK_SE
	.globl _pLED_DATA
	.globl _pLED_CTRL
	.globl _pLED_STAT
	.globl _pUEP2_3_MOD
	.globl _pUEP4_1_MOD
	.globl _initUSB_Host
	.globl _resetHubDevices
	.globl _pollHIDdevice
	.globl _checkRootHubConnections
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_PLL_CFG	=	0x00b2
_CLOCK_CFG	=	0x00b3
_SLEEP_CTRL	=	0x00ea
_WAKE_CTRL	=	0x00eb
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00cf
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P0	=	0x0080
_P0_DIR	=	0x00c4
_P0_PU	=	0x00c5
_P1	=	0x0090
_P1_IE	=	0x00b9
_P1_DIR	=	0x00ba
_P1_PU	=	0x00bb
_P2	=	0x00a0
_P2_DIR	=	0x00bc
_P2_PU	=	0x00bd
_P3	=	0x00b0
_P3_DIR	=	0x00be
_P3_PU	=	0x00bf
_P4_OUT	=	0x00c0
_P4_IN	=	0x00c1
_P4_DIR	=	0x00c2
_P4_PU	=	0x00c3
_P5_IN	=	0x00c7
_PORT_CFG	=	0x00c6
_PIN_FUNC	=	0x00ce
_XBUS_AUX	=	0x00a2
_XBUS_SPEED	=	0x00fd
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T3_SETUP	=	0x00a3
_T3_COUNT	=	0xa5a4
_T3_COUNT_L	=	0x00a4
_T3_COUNT_H	=	0x00a5
_T3_END	=	0xa7a6
_T3_END_L	=	0x00a6
_T3_END_H	=	0x00a7
_T3_STAT	=	0x00a9
_T3_CTRL	=	0x00aa
_T3_DMA_CN	=	0x00ab
_T3_DMA	=	0xadac
_T3_DMA_AL	=	0x00ac
_T3_DMA_AH	=	0x00ad
_T3_FIFO	=	0xafae
_T3_FIFO_L	=	0x00ae
_T3_FIFO_H	=	0x00af
_PWM_DATA2	=	0x009b
_PWM_DATA	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_PWM_CYCLE	=	0x009f
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SPI1_STAT	=	0x00b4
_SPI1_DATA	=	0x00b5
_SPI1_CTRL	=	0x00b6
_SPI1_CK_SE	=	0x00b7
_SER1_FIFO	=	0x009a
_SER1_IER	=	0x0091
_SER1_IIR	=	0x0092
_SER1_LCR	=	0x0093
_SER1_MCR	=	0x0094
_SER1_LSR	=	0x0095
_SER1_MSR	=	0x0096
_SER1_ADDR	=	0x0097
_ADC_DMA	=	0xedec
_ADC_DMA_AL	=	0x00ec
_ADC_DMA_AH	=	0x00ed
_ADC_DMA_CN	=	0x00ee
_ADC_CK_SE	=	0x00ef
_ADC_STAT	=	0x00f1
_ADC_CTRL	=	0x00f2
_ADC_CHANN	=	0x00f3
_ADC_FIFO	=	0xf5f4
_ADC_FIFO_L	=	0x00f4
_ADC_FIFO_H	=	0x00f5
_ADC_SETUP	=	0x00f6
_ADC_EX_SW	=	0x00f7
_USB_RX_LEN	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_HUB_ST	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UDEV_CTRL	=	0x00e4
_UHUB1_CTRL	=	0x00e5
_USB_DMA	=	0xe7e6
_USB_DMA_AL	=	0x00e6
_USB_DMA_AH	=	0x00e7
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWM1	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TMR3	=	0x00e9
_IE_SPI0	=	0x00e8
_UDCD	=	0x0087
_URI	=	0x0086
_UDSR	=	0x0085
_UCTS	=	0x0084
_TXD_	=	0x0083
_RXD_	=	0x0082
_URTS	=	0x0081
_UDTR	=	0x0080
_AIN7	=	0x0097
_AIN6	=	0x0096
_AIN5	=	0x0095
_AIN4	=	0x0094
_AIN3	=	0x0093
_AIN2	=	0x0092
_AIN1	=	0x0091
_AIN0	=	0x0090
_SCK	=	0x0097
_MISO	=	0x0096
_MOSI	=	0x0095
_SCS	=	0x0094
_PWM3	=	0x0092
_CAP3	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TXD1	=	0x00a7
_DA7	=	0x00a7
_RXD1	=	0x00a6
_TNOW	=	0x00a5
_PWM2	=	0x00a5
_T2EX_	=	0x00a5
_CAP2_	=	0x00a5
_PWM1	=	0x00a4
_SCK1	=	0x00a3
_MISO1	=	0x00a2
_MOSI1	=	0x00a1
_RD	=	0x00b7
_WR	=	0x00b6
_DA6	=	0x00b5
_T1	=	0x00b5
_LEDC	=	0x00b4
_XCS0	=	0x00b4
_T0	=	0x00b4
_LED1	=	0x00b3
_INT1	=	0x00b3
_LED0	=	0x00b2
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_SCK_	=	0x00c7
_SCS_	=	0x00c6
_PWM2_	=	0x00c5
_LED3	=	0x00c4
_TNOW_	=	0x00c4
_TXD1_	=	0x00c4
_PWM1_	=	0x00c3
_PWM3_	=	0x00c2
_CAP3_	=	0x00c2
_LED2	=	0x00c0
_RXD1_	=	0x00c0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO1	=	0x00f9
_S0_R_FIFO0	=	0x00f8
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_HST_SOF	=	0x00db
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_DETECT	=	0x00d8
_UIF_BUS_RST	=	0x00d8
_LED	=	0x0096
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_hostTransfer_sloc0_1_0:
	.ds 2
_hostTransfer_sloc1_1_0:
	.ds 1
_hostTransfer_sloc2_1_0:
	.ds 1
_hostCtrlTransfer_sloc0_1_0:
	.ds 2
_hostCtrlTransfer_sloc1_1_0:
	.ds 2
_convertStringDescriptor_sloc0_1_0:
	.ds 2
_convertStringDescriptor_sloc1_1_0:
	.ds 2
_convertStringDescriptor_sloc2_1_0:
	.ds 2
_convertStringDescriptor_sloc3_1_0:
	.ds 2
_pollHIDdevice_sloc0_1_0:
	.ds 2
_pollHIDdevice_sloc1_1_0:
	.ds 1
_pollHIDdevice_sloc2_1_0:
	.ds 1
_parseHIDDeviceReport_sloc0_1_0:
	.ds 2
_parseHIDDeviceReport_sloc1_1_0:
	.ds 1
_parseHIDDeviceReport_sloc2_1_0:
	.ds 1
_parseHIDDeviceReport_sloc3_1_0:
	.ds 2
_parseHIDDeviceReport_sloc4_1_0:
	.ds 2
_parseHIDDeviceReport_sloc5_1_0:
	.ds 2
_parseHIDDeviceReport_sloc6_1_0:
	.ds 4
_initializeRootHubConnection_sloc0_1_0:
	.ds 2
_initializeRootHubConnection_sloc1_1_0:
	.ds 2
_initializeRootHubConnection_sloc2_1_0:
	.ds 1
_initializeRootHubConnection_sloc3_1_0:
	.ds 1
_initializeRootHubConnection_sloc4_1_0:
	.ds 1
_initializeRootHubConnection_sloc5_1_0:
	.ds 2
_initializeRootHubConnection_sloc6_1_0:
	.ds 2
_initializeRootHubConnection_sloc7_1_0:
	.ds 1
_initializeRootHubConnection_sloc8_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_hostCtrlTransfer_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_pUEP4_1_MOD	=	0x2546
_pUEP2_3_MOD	=	0x2547
_pLED_STAT	=	0x2980
_pLED_CTRL	=	0x2981
_pLED_DATA	=	0x2982
_pLED_CK_SE	=	0x2983
_pLED_DMA_AH	=	0x2984
_pLED_DMA_AL	=	0x2985
_pLED_DMA_CN	=	0x2986
_pLED_DMA_XH	=	0x2988
_pLED_DMA_XL	=	0x2989
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_UEP4_1_MOD	=	0x2446
_UEP2_3_MOD	=	0x2447
_UEP0_DMA_H	=	0x2448
_UEP0_DMA_L	=	0x2449
_pUEP0_DMA_H	=	0x2548
_pUEP0_DMA_L	=	0x2549
_UEP1_DMA_H	=	0x244a
_UEP1_DMA_L	=	0x244b
_pUEP1_DMA_H	=	0x254a
_pUEP1_DMA_L	=	0x254b
_UEP2_DMA	=	0x244c
_UEP2_DMA_L	=	0x244d
_UEP2_DMA_H	=	0x244c
_pUEP2_DMA_H	=	0x254c
_pUEP2_DMA_L	=	0x254d
_UEP3_DMA	=	0x244e
_UEP3_DMA_L	=	0x244f
_UEP3_DMA_H	=	0x244e
_pUEP3_DMA_H	=	0x254e
_pUEP3_DMA_L	=	0x254f
_LED_STAT	=	0x2880
_LED_CTRL	=	0x2881
_LED_DATA	=	0x2882
_LED_CK_SE	=	0x2883
_LED_DMA_AH	=	0x2884
_LED_DMA_AL	=	0x2885
_LED_DMA_CN	=	0x2886
_LED_DMA_XH	=	0x2888
_LED_DMA_XL	=	0x2889
_RxBuffer	=	0x0000
_TxBuffer	=	0x0100
_endpoint0Size::
	.ds 1
_receiveDataBuffer::
	.ds 512
_rootHubDevice::
	.ds 6
_disableRootHubPort_index_65536_49:
	.ds 1
_setHostUsbAddr_addr_65536_52:
	.ds 1
_setUsbSpeed_fullSpeed_65536_54:
	.ds 1
_resetRootHubPort_rootHubIndex_65536_57:
	.ds 1
_enableRootHubPort_rootHubIndex_65536_61:
	.ds 1
_selectHubPort_PARM_2:
	.ds 1
_selectHubPort_rootHubIndex_65536_72:
	.ds 1
_hostTransfer_PARM_2:
	.ds 1
_hostTransfer_PARM_3:
	.ds 2
_hostTransfer_endp_pid_65536_74:
	.ds 1
_hostTransfer_retries_65536_75:
	.ds 2
_hostCtrlTransfer_PARM_2:
	.ds 3
_hostCtrlTransfer_PARM_3:
	.ds 2
_hostCtrlTransfer_DataBuf_65536_96:
	.ds 2
_hostCtrlTransfer_SetPort_65536_97:
	.ds 1
_hostCtrlTransfer_RemLen_65536_97:
	.ds 2
_hostCtrlTransfer_pBuf_65536_97:
	.ds 2
_fillTxBuffer_PARM_2:
	.ds 1
_fillTxBuffer_data_65536_106:
	.ds 2
_getDeviceDescriptor_len_65536_109:
	.ds 2
_setUsbAddress_addr_65536_111:
	.ds 1
_setUsbConfig_cfg_65536_113:
	.ds 1
_convertStringDescriptor_PARM_2:
	.ds 2
_convertStringDescriptor_PARM_3:
	.ds 2
_convertStringDescriptor_PARM_4:
	.ds 1
_convertStringDescriptor_usbBuffer_65536_116:
	.ds 2
_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119:
	.ds 2
_getConfigurationDescriptor_len_65536_123:
	.ds 2
_getInterfaceDescriptor_len_65536_125:
	.ds 2
_HIDdevice::
	.ds 64
_VendorProductID::
	.ds 32
_resetHubDevices_hubindex_65536_126:
	.ds 1
_pollHIDdevice_len_65536_131:
	.ds 1
_parseHIDDeviceReport_PARM_2:
	.ds 2
_parseHIDDeviceReport_PARM_3:
	.ds 1
_parseHIDDeviceReport_report_65536_138:
	.ds 2
_parseHIDDeviceReport_i_65536_139:
	.ds 2
_parseHIDDeviceReport_level_65536_139:
	.ds 1
_parseHIDDeviceReport_isUsageSet_65536_139:
	.ds 1
_parseHIDDeviceReport_id_131072_140:
	.ds 1
_parseHIDDeviceReport_size_131072_140:
	.ds 1
_parseHIDDeviceReport_data_131072_140:
	.ds 4
_getHIDDeviceReport_CurrentDevive_65536_148:
	.ds 1
_getHIDDeviceReport_len_65536_149:
	.ds 2
_readInterface_PARM_2:
	.ds 2
_readHIDInterface_PARM_2:
	.ds 2
_readHIDInterface_interface_65536_154:
	.ds 2
_initializeRootHubConnection_rootHubIndex_65536_158:
	.ds 1
_initializeRootHubConnection_s_65536_159:
	.ds 1
_initializeRootHubConnection_i_458753_170:
	.ds 2
_initializeRootHubConnection_temp_458753_170:
	.ds 512
_initializeRootHubConnection_currentInterface_458753_170:
	.ds 2
_initializeRootHubConnection_desc_524289_174:
	.ds 2
_checkRootHubConnections_s_65536_180:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'hostCtrlTransfer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
;sloc1                     Allocated with name '_hostCtrlTransfer_sloc1_1_0'
;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
;maxLenght                 Allocated with name '_hostCtrlTransfer_PARM_3'
;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_96'
;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_97'
;temp                      Allocated with name '_hostCtrlTransfer_temp_65536_97'
;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_97'
;s                         Allocated with name '_hostCtrlTransfer_s_65536_97'
;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_97'
;i                         Allocated with name '_hostCtrlTransfer_i_65536_97'
;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_97'
;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_97'
;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_98'
;------------------------------------------------------------
;	USBHost.c:257: static unsigned char SetPort = 0;
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
	clr	a
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'disableRootHubPort'
;------------------------------------------------------------
;index                     Allocated with name '_disableRootHubPort_index_65536_49'
;------------------------------------------------------------
;	USBHost.c:39: void disableRootHubPort(unsigned char index)
;	-----------------------------------------
;	 function disableRootHubPort
;	-----------------------------------------
_disableRootHubPort:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_disableRootHubPort_index_65536_49
	movx	@dptr,a
;	USBHost.c:41: rootHubDevice[index].status = ROOT_DEVICE_DISCONNECT;
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x03
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_rootHubDevice
	mov	dpl,a
	mov	a,r6
	addc	a,#(_rootHubDevice >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	USBHost.c:42: rootHubDevice[index].address = 0;
	mov	a,r5
	add	a,#_rootHubDevice
	mov	r5,a
	mov	a,r6
	addc	a,#(_rootHubDevice >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	clr	a
	movx	@dptr,a
;	USBHost.c:43: if (index)
	mov	a,r7
	jz	00102$
;	USBHost.c:44: UHUB1_CTRL = 0;
	mov	_UHUB1_CTRL,#0x00
	ret
00102$:
;	USBHost.c:46: UHUB0_CTRL = 0;
	mov	_UDEV_CTRL,#0x00
;	USBHost.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initUSB_Host'
;------------------------------------------------------------
;	USBHost.c:49: void initUSB_Host()
;	-----------------------------------------
;	 function initUSB_Host
;	-----------------------------------------
_initUSB_Host:
;	USBHost.c:51: IE_USB = 0;
;	assignBit
	clr	_IE_USB
;	USBHost.c:52: USB_CTRL = bUC_HOST_MODE;
	mov	_USB_CTRL,#0x80
;	USBHost.c:53: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	USBHost.c:54: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN ;
	mov	dptr,#_UEP2_3_MOD
	mov	a,#0x48
	movx	@dptr,a
;	USBHost.c:55: UH_RX_DMA = 0x0000;
	mov	dptr,#_UEP2_DMA
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:56: UH_TX_DMA = 0x0001;
	mov	dptr,#_UEP3_DMA
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:57: UH_RX_CTRL = 0x00;
;	1-genFromRTrack replaced	mov	_UEP2_CTRL,#0x00
	mov	_UEP2_CTRL,a
;	USBHost.c:58: UH_TX_CTRL = 0x00;
;	1-genFromRTrack replaced	mov	_UEP3_CTRL,#0x00
	mov	_UEP3_CTRL,a
;	USBHost.c:59: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY | bUC_DMA_EN;
	mov	_USB_CTRL,#0x89
;	USBHost.c:60: UH_SETUP = bUH_SOF_EN;
	mov	_UEP1_CTRL,#0x40
;	USBHost.c:61: USB_INT_FG = 0xFF;
	mov	_USB_INT_FG,#0xff
;	USBHost.c:63: disableRootHubPort(0);
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:64: disableRootHubPort(1);
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:65: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
	mov	_USB_INT_EN,#0x03
;	USBHost.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setHostUsbAddr'
;------------------------------------------------------------
;addr                      Allocated with name '_setHostUsbAddr_addr_65536_52'
;------------------------------------------------------------
;	USBHost.c:68: void setHostUsbAddr(unsigned char addr)
;	-----------------------------------------
;	 function setHostUsbAddr
;	-----------------------------------------
_setHostUsbAddr:
	mov	a,dpl
	mov	dptr,#_setHostUsbAddr_addr_65536_52
	movx	@dptr,a
;	USBHost.c:70: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	movx	a,@dptr
	anl	a,#0x7f
	orl	a,r7
	mov	_USB_DEV_AD,a
;	USBHost.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbSpeed'
;------------------------------------------------------------
;fullSpeed                 Allocated with name '_setUsbSpeed_fullSpeed_65536_54'
;------------------------------------------------------------
;	USBHost.c:73: void setUsbSpeed(unsigned char fullSpeed)
;	-----------------------------------------
;	 function setUsbSpeed
;	-----------------------------------------
_setUsbSpeed:
	mov	a,dpl
	mov	dptr,#_setUsbSpeed_fullSpeed_65536_54
	movx	@dptr,a
;	USBHost.c:75: if (fullSpeed)
	movx	a,@dptr
	jz	00102$
;	USBHost.c:77: USB_CTRL &= ~ bUC_LOW_SPEED;
	anl	_USB_CTRL,#0xbf
;	USBHost.c:78: UH_SETUP &= ~ bUH_PRE_PID_EN;
	anl	_UEP1_CTRL,#0x7f
	ret
00102$:
;	USBHost.c:81: USB_CTRL |= bUC_LOW_SPEED;
	orl	_USB_CTRL,#0x40
;	USBHost.c:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetRootHubPort'
;------------------------------------------------------------
;rootHubIndex              Allocated with name '_resetRootHubPort_rootHubIndex_65536_57'
;------------------------------------------------------------
;	USBHost.c:84: void resetRootHubPort(unsigned char rootHubIndex)
;	-----------------------------------------
;	 function resetRootHubPort
;	-----------------------------------------
_resetRootHubPort:
	mov	a,dpl
	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_57
	movx	@dptr,a
;	USBHost.c:86: endpoint0Size = DEFAULT_ENDP0_SIZE; //todo what's that?                    
	mov	dptr,#_endpoint0Size
	mov	a,#0x08
	movx	@dptr,a
;	USBHost.c:87: setHostUsbAddr(0);
	mov	dpl,#0x00
	lcall	_setHostUsbAddr
;	USBHost.c:88: setUsbSpeed(1);
	mov	dpl,#0x01
	lcall	_setUsbSpeed
;	USBHost.c:89: if (rootHubIndex == 0)    
	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_57
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00104$
;	USBHost.c:91: UHUB0_CTRL = UHUB0_CTRL & ~ bUH_LOW_SPEED | bUH_BUS_RESET;
	mov	a,#0xfb
	anl	a,_UDEV_CTRL
	orl	a,#0x02
	mov	_UDEV_CTRL,a
;	USBHost.c:92: delay(15);
	mov	dptr,#0x000f
	lcall	_delay
;	USBHost.c:93: UHUB0_CTRL = UHUB0_CTRL & ~ bUH_BUS_RESET;
	anl	_UDEV_CTRL,#0xfd
	sjmp	00105$
00104$:
;	USBHost.c:95: else if (rootHubIndex == 1)
	cjne	r7,#0x01,00105$
;	USBHost.c:97: UHUB1_CTRL = UHUB1_CTRL & ~ bUH_LOW_SPEED | bUH_BUS_RESET;
	mov	a,#0xfb
	anl	a,_UHUB1_CTRL
	orl	a,#0x02
	mov	_UHUB1_CTRL,a
;	USBHost.c:98: delay(15);
	mov	dptr,#0x000f
	lcall	_delay
;	USBHost.c:99: UHUB1_CTRL = UHUB1_CTRL & ~ bUH_BUS_RESET;
	anl	_UHUB1_CTRL,#0xfd
00105$:
;	USBHost.c:101: delayUs(250);
	mov	dptr,#0x00fa
	lcall	_delayUs
;	USBHost.c:102: UIF_DETECT = 0; //todo test if redundant                                       
;	assignBit
	clr	_UIF_DETECT
;	USBHost.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableRootHubPort'
;------------------------------------------------------------
;rootHubIndex              Allocated with name '_enableRootHubPort_rootHubIndex_65536_61'
;------------------------------------------------------------
;	USBHost.c:105: unsigned char enableRootHubPort(unsigned char rootHubIndex)
;	-----------------------------------------
;	 function enableRootHubPort
;	-----------------------------------------
_enableRootHubPort:
	mov	a,dpl
	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_61
	movx	@dptr,a
;	USBHost.c:107: if ( rootHubDevice[ rootHubIndex ].status < 1 )
	movx	a,@dptr
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r6,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00160$
00160$:
	jnc	00102$
;	USBHost.c:109: rootHubDevice[ rootHubIndex ].status = 1;
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	USBHost.c:111: if (rootHubIndex == 0)
	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_61
	movx	a,@dptr
	mov	r7,a
	jnz	00120$
;	USBHost.c:113: if (USB_HUB_ST & bUHS_H0_ATTACH)
	mov	a,_USB_HUB_ST
	jb	acc.3,00163$
	ljmp	00121$
00163$:
;	USBHost.c:115: if ((UHUB0_CTRL & bUH_PORT_EN) == 0x00)
	mov	a,_UDEV_CTRL
	jb	acc.0,00107$
;	USBHost.c:117: if (USB_HUB_ST & bUHS_DM_LEVEL)
	mov	a,_USB_HUB_ST
	jnb	acc.2,00104$
;	USBHost.c:119: rootHubDevice[rootHubIndex].speed = 0;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r5,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	USBHost.c:120: UHUB0_CTRL |= bUH_LOW_SPEED;
	orl	_UDEV_CTRL,#0x04
	sjmp	00107$
00104$:
;	USBHost.c:122: else rootHubDevice[rootHubIndex].speed = 1;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r5,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	USBHost.c:124: UHUB0_CTRL |= bUH_PORT_EN;
	orl	_UDEV_CTRL,#0x01
;	USBHost.c:125: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00120$:
;	USBHost.c:128: else if (rootHubIndex == 1)
	cjne	r7,#0x01,00121$
;	USBHost.c:130: if (USB_HUB_ST & bUHS_H1_ATTACH)
	mov	a,_USB_HUB_ST
	jnb	acc.7,00121$
;	USBHost.c:132: if ((UHUB1_CTRL & bUH_PORT_EN ) == 0x00)
	mov	a,_UHUB1_CTRL
	jb	acc.0,00114$
;	USBHost.c:134: if (USB_HUB_ST & bUHS_HM_LEVEL)
	mov	a,_USB_HUB_ST
	jnb	acc.6,00111$
;	USBHost.c:136: rootHubDevice[rootHubIndex].speed = 0;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r5,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	USBHost.c:137: UHUB1_CTRL |= bUH_LOW_SPEED;
	orl	_UHUB1_CTRL,#0x04
	sjmp	00114$
00111$:
;	USBHost.c:139: else rootHubDevice[rootHubIndex].speed = 1;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r6,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
00114$:
;	USBHost.c:141: UHUB1_CTRL |= bUH_PORT_EN;
	orl	_UHUB1_CTRL,#0x01
;	USBHost.c:142: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00121$:
;	USBHost.c:145: return ERR_USB_DISCON;
	mov	dpl,#0x16
;	USBHost.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'selectHubPort'
;------------------------------------------------------------
;HubPortIndex              Allocated with name '_selectHubPort_PARM_2'
;rootHubIndex              Allocated with name '_selectHubPort_rootHubIndex_65536_72'
;temp                      Allocated with name '_selectHubPort_temp_65536_73'
;------------------------------------------------------------
;	USBHost.c:148: void selectHubPort(unsigned char rootHubIndex, unsigned char HubPortIndex)
;	-----------------------------------------
;	 function selectHubPort
;	-----------------------------------------
_selectHubPort:
	mov	a,dpl
	mov	dptr,#_selectHubPort_rootHubIndex_65536_72
	movx	@dptr,a
;	USBHost.c:151: setHostUsbAddr(rootHubDevice[rootHubIndex].address); //todo ever != 0
	movx	a,@dptr
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r6,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_setHostUsbAddr
	pop	ar6
	pop	ar7
;	USBHost.c:152: setUsbSpeed(rootHubDevice[rootHubIndex].speed); //isn't that set before?
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
;	USBHost.c:153: }
	ljmp	_setUsbSpeed
;------------------------------------------------------------
;Allocation info for local variables in function 'hostTransfer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hostTransfer_sloc0_1_0'
;sloc1                     Allocated with name '_hostTransfer_sloc1_1_0'
;sloc2                     Allocated with name '_hostTransfer_sloc2_1_0'
;tog                       Allocated with name '_hostTransfer_PARM_2'
;timeout                   Allocated with name '_hostTransfer_PARM_3'
;endp_pid                  Allocated with name '_hostTransfer_endp_pid_65536_74'
;retries                   Allocated with name '_hostTransfer_retries_65536_75'
;r                         Allocated with name '_hostTransfer_r_65536_75'
;i                         Allocated with name '_hostTransfer_i_65536_75'
;------------------------------------------------------------
;	USBHost.c:155: unsigned char hostTransfer(unsigned char endp_pid, unsigned char tog, unsigned short timeout )
;	-----------------------------------------
;	 function hostTransfer
;	-----------------------------------------
_hostTransfer:
	mov	a,dpl
	mov	dptr,#_hostTransfer_endp_pid_65536_74
	movx	@dptr,a
;	USBHost.c:160: UH_RX_CTRL = tog;
	mov	dptr,#_hostTransfer_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	_UEP2_CTRL,r7
;	USBHost.c:161: UH_TX_CTRL = tog;
	mov	_UEP3_CTRL,r7
;	USBHost.c:162: retries = 0;
	mov	dptr,#_hostTransfer_retries_65536_75
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:163: do
	mov	dptr,#_hostTransfer_endp_pid_65536_74
	movx	a,@dptr
	mov	r6,a
	swap	a
	anl	a,#0x0f
	mov	r5,a
	cjne	r5,#0x01,00257$
	mov	a,r5
	sjmp	00258$
00257$:
	clr	a
00258$:
	mov	_hostTransfer_sloc2_1_0,a
	clr	a
	cjne	r5,#0x09,00259$
	inc	a
00259$:
	mov	r3,a
	mov	dptr,#_hostTransfer_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
00145$:
;	USBHost.c:165: UH_EP_PID = endp_pid;                               
	mov	_UEP2_T_LEN,r6
;	USBHost.c:166: UIF_TRANSFER = 0;            
;	assignBit
	clr	_UIF_TRANSFER
;	USBHost.c:167: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--)
	mov	_hostTransfer_sloc0_1_0,#0xc8
	mov	(_hostTransfer_sloc0_1_0 + 1),#0x00
00150$:
	mov	a,_hostTransfer_sloc0_1_0
	orl	a,(_hostTransfer_sloc0_1_0 + 1)
	jz	00101$
	jb	_UIF_TRANSFER,00101$
;	USBHost.c:168: delayUs(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_delayUs
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:167: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--)
	dec	_hostTransfer_sloc0_1_0
	mov	a,#0xff
	cjne	a,_hostTransfer_sloc0_1_0,00263$
	dec	(_hostTransfer_sloc0_1_0 + 1)
00263$:
	sjmp	00150$
00101$:
;	USBHost.c:169: UH_EP_PID = 0x00;                                         
	mov	_UEP2_T_LEN,#0x00
;	USBHost.c:170: if ( UIF_TRANSFER == 0 )
	jb	_UIF_TRANSFER,00103$
;	USBHost.c:172: return ERR_USB_UNKNOWN;
	mov	dpl,#0xfe
	ret
00103$:
;	USBHost.c:174: if ( UIF_TRANSFER )                                    
	jb	_UIF_TRANSFER,00265$
	ljmp	00143$
00265$:
;	USBHost.c:176: if ( U_TOG_OK )
	jnb	_U_TOG_OK,00105$
;	USBHost.c:178: return( ERR_SUCCESS );
	mov	dpl,#0x00
	ret
00105$:
;	USBHost.c:180: r = USB_INT_ST & MASK_UIS_H_RES;               
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	mov	_hostTransfer_sloc1_1_0,a
;	USBHost.c:181: if ( r == USB_PID_STALL )
	mov	a,#0x0e
	cjne	a,_hostTransfer_sloc1_1_0,00267$
	mov	a,#0x01
	sjmp	00268$
00267$:
	clr	a
00268$:
	mov	_hostTransfer_sloc0_1_0,a
	jz	00107$
;	USBHost.c:183: return( r | ERR_USB_TRANSFER );
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00107$:
;	USBHost.c:185: if ( r == USB_PID_NAK )
	mov	a,#0x0a
	cjne	a,_hostTransfer_sloc1_1_0,00270$
	mov	a,#0x01
	sjmp	00271$
00270$:
	clr	a
00271$:
	mov	r0,a
	jz	00140$
;	USBHost.c:187: if ( timeout == 0 )
	mov	a,r1
	orl	a,r2
	jnz	00109$
;	USBHost.c:189: return( r | ERR_USB_TRANSFER );
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	_hostTransfer_sloc2_1_0,a
	mov	dpl,_hostTransfer_sloc2_1_0
	ret
00109$:
;	USBHost.c:191: if ( timeout < 0xFFFF )
	push	ar3
	mov	ar3,r1
	mov	ar4,r2
	clr	c
	mov	a,r3
	subb	a,#0xff
	mov	a,r4
	subb	a,#0xff
	pop	ar3
	jnc	00111$
;	USBHost.c:193: timeout --;
	dec	r1
	cjne	r1,#0xff,00275$
	dec	r2
00275$:
00111$:
;	USBHost.c:195: retries--;
	push	ar3
	mov	dptr,#_hostTransfer_retries_65536_75
	movx	a,@dptr
	add	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_hostTransfer_retries_65536_75
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar3
	ljmp	00144$
00140$:
;	USBHost.c:197: else switch ( endp_pid >> 4 )    //todo no return.. compare to other guy
	mov	a,_hostTransfer_sloc2_1_0
	jnz	00113$
	mov	a,r3
	jnz	00123$
	cjne	r5,#0x0d,00278$
	sjmp	00279$
00278$:
	ljmp	00137$
00279$:
;	USBHost.c:200: case USB_PID_OUT:
00113$:
;	USBHost.c:201: if ( U_TOG_OK )
	jnb	_U_TOG_OK,00115$
;	USBHost.c:203: return( ERR_SUCCESS );
	mov	dpl,#0x00
	ret
00115$:
;	USBHost.c:205: if ( r == USB_PID_ACK )
	mov	a,#0x02
	cjne	a,_hostTransfer_sloc1_1_0,00117$
;	USBHost.c:207: return( ERR_SUCCESS );
	mov	dpl,#0x00
	ret
00117$:
;	USBHost.c:209: if ( r == USB_PID_STALL || r == USB_PID_NAK )
	mov	a,_hostTransfer_sloc0_1_0
	jnz	00118$
	mov	a,r0
	jz	00119$
00118$:
;	USBHost.c:211: return( r | ERR_USB_TRANSFER );
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00119$:
;	USBHost.c:213: if ( r )
	mov	a,_hostTransfer_sloc1_1_0
	jz	00144$
;	USBHost.c:215: return( r | ERR_USB_TRANSFER );          
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
;	USBHost.c:218: case USB_PID_IN:
00123$:
;	USBHost.c:219: if ( U_TOG_OK )
	jnb	_U_TOG_OK,00125$
;	USBHost.c:221: return( ERR_SUCCESS );
	mov	dpl,#0x00
	ret
00125$:
;	USBHost.c:223: if ( tog ? r == USB_PID_DATA1 : r == USB_PID_DATA0 )
	mov	a,r7
	jz	00154$
	mov	a,#0x0b
	cjne	a,_hostTransfer_sloc1_1_0,00288$
	mov	a,#0x01
	sjmp	00289$
00288$:
	clr	a
00289$:
	mov	r4,a
	sjmp	00155$
00154$:
	mov	a,#0x03
	cjne	a,_hostTransfer_sloc1_1_0,00290$
	mov	a,#0x01
	sjmp	00291$
00290$:
	clr	a
00291$:
	mov	r4,a
00155$:
	mov	a,r4
	jz	00127$
;	USBHost.c:225: return( ERR_SUCCESS );
	mov	dpl,#0x00
	ret
00127$:
;	USBHost.c:227: if ( r == USB_PID_STALL || r == USB_PID_NAK )
	mov	a,_hostTransfer_sloc0_1_0
	jnz	00128$
	mov	a,r0
	jz	00129$
00128$:
;	USBHost.c:229: return( r | ERR_USB_TRANSFER );
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00129$:
;	USBHost.c:231: if ( r == USB_PID_DATA0 || r == USB_PID_DATA1 ) // ( r == USB_PID_DATA0 && r == USB_PID_DATA1 )
	mov	a,#0x03
	cjne	a,_hostTransfer_sloc1_1_0,00295$
	sjmp	00144$
00295$:
	mov	a,#0x0b
	cjne	a,_hostTransfer_sloc1_1_0,00296$
	sjmp	00144$
00296$:
;	USBHost.c:234: else if ( r )
	mov	a,_hostTransfer_sloc1_1_0
	jz	00144$
;	USBHost.c:236: return( r | ERR_USB_TRANSFER );     
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
;	USBHost.c:239: default:
	ret
00137$:
;	USBHost.c:240: return( ERR_USB_UNKNOWN );                  
	mov	dpl,#0xfe
;	USBHost.c:242: }
	ret
00143$:
;	USBHost.c:246: USB_INT_FG = 0xFF;                               
	mov	_USB_INT_FG,#0xff
00144$:
;	USBHost.c:248: delayUs(15);
	mov	dptr,#0x000f
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	lcall	_delayUs
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:250: while ( ++retries < 200 );
	mov	dptr,#_hostTransfer_retries_65536_75
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_hostTransfer_retries_65536_75
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,#0xc8
	mov	a,r4
	subb	a,#0x00
	jnc	00298$
	ljmp	00145$
00298$:
;	USBHost.c:251: return( ERR_USB_TRANSFER );                              
	mov	dpl,#0x20
;	USBHost.c:252: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hostCtrlTransfer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
;sloc1                     Allocated with name '_hostCtrlTransfer_sloc1_1_0'
;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
;maxLenght                 Allocated with name '_hostCtrlTransfer_PARM_3'
;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_96'
;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_97'
;temp                      Allocated with name '_hostCtrlTransfer_temp_65536_97'
;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_97'
;s                         Allocated with name '_hostCtrlTransfer_s_65536_97'
;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_97'
;i                         Allocated with name '_hostCtrlTransfer_i_65536_97'
;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_97'
;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_97'
;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_98'
;------------------------------------------------------------
;	USBHost.c:255: unsigned char hostCtrlTransfer(unsigned char __xdata *DataBuf, unsigned short *RetLen, unsigned short maxLenght)
;	-----------------------------------------
;	 function hostCtrlTransfer
;	-----------------------------------------
_hostCtrlTransfer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_96
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:263: DEBUG_OUT("hostCtrlTransfer\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:264: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:265: pBuf = DataBuf;
	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_96
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:266: pLen = RetLen;
	mov	dptr,#_hostCtrlTransfer_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	USBHost.c:267: delayUs(200);
	mov	dptr,#0x00c8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_delayUs
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:268: if (pLen)
	mov	a,r3
	orl	a,r4
	jz	00102$
;	USBHost.c:269: *pLen = 0;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	USBHost.c:270: UH_TX_LEN = sizeof(USB_SETUP_REQ);
	mov	_UEP3_T_LEN,#0x08
;	USBHost.c:271: s = hostTransfer((unsigned char)(USB_PID_SETUP << 4), 0, 10000);
	mov	dptr,#_hostTransfer_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_hostTransfer_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0xd0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_hostTransfer
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:272: if (s != ERR_SUCCESS)
	mov	a,r2
	jz	00104$
;	USBHost.c:273: return (s);
	mov	dpl,r2
	ret
00104$:
;	USBHost.c:274: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;
	push	ar6
	push	ar7
	mov	_UEP3_CTRL,#0xd0
	mov	_UEP2_CTRL,#0xd0
;	USBHost.c:275: UH_TX_LEN = 0x01;
	mov	_UEP3_T_LEN,#0x01
;	USBHost.c:276: RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);
	mov	dptr,#(_TxBuffer + 0x0007)
	movx	a,@dptr
	mov	r2,a
	mov	r1,#0x00
	mov	dptr,#(_TxBuffer + 0x0006)
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	orl	ar1,a
	mov	a,r7
	orl	ar2,a
	mov	_hostCtrlTransfer_sloc0_1_0,r1
	mov	(_hostCtrlTransfer_sloc0_1_0 + 1),r2
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	mov	a,_hostCtrlTransfer_sloc0_1_0
	movx	@dptr,a
	mov	a,(_hostCtrlTransfer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:277: if (RemLen && pBuf)
	pop	ar7
	pop	ar6
	mov	a,_hostCtrlTransfer_sloc0_1_0
	orl	a,(_hostCtrlTransfer_sloc0_1_0 + 1)
	jnz	00249$
	ljmp	00129$
00249$:
	mov	a,r6
	orl	a,r7
	jnz	00250$
	ljmp	00129$
00250$:
;	USBHost.c:279: if (pSetupReq->bRequestType & USB_REQ_TYP_IN)
	mov	dptr,#_TxBuffer
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00251$
	ljmp	00126$
00251$:
;	USBHost.c:281: DEBUG_OUT("Remaining bytes to read %d\n", RemLen);
	push	ar5
	push	ar4
	push	ar3
	push	_hostCtrlTransfer_sloc0_1_0
	push	(_hostCtrlTransfer_sloc0_1_0 + 1)
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	USBHost.c:282: while (RemLen)
00113$:
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00252$
	ljmp	00115$
00252$:
;	USBHost.c:284: delayUs(300);
	mov	dptr,#0x012c
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_delayUs
;	USBHost.c:285: s = hostTransfer((unsigned char)(USB_PID_IN << 4), UH_RX_CTRL, 10000); 
	mov	dptr,#_hostTransfer_PARM_2
	mov	a,_UEP2_CTRL
	movx	@dptr,a
	mov	dptr,#_hostTransfer_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x90
	lcall	_hostTransfer
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:286: if (s != ERR_SUCCESS)
	mov	a,r2
	jz	00106$
;	USBHost.c:287: return (s);
	mov	dpl,r2
	ret
00106$:
;	USBHost.c:288: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
	mov	r1,_USB_RX_LEN
	mov	r2,#0x00
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	subb	a,r7
	jnc	00142$
	mov	r1,_USB_RX_LEN
	mov	r2,#0x00
	sjmp	00143$
00142$:
	mov	ar1,r6
	mov	ar2,r7
00143$:
;	USBHost.c:289: RemLen -= RxLen;
	mov	ar6,r1
	mov	r7,#0x00
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r0
	clr	c
	subb	a,r6
	mov	r0,a
	mov	a,r2
	subb	a,r7
	mov	r2,a
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:290: if (pLen)
	mov	a,r3
	orl	a,r4
	jz	00160$
;	USBHost.c:291: *pLen += RxLen;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r6
	add	a,r0
	mov	r6,a
	mov	a,r7
	addc	a,r2
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	USBHost.c:292: for(i = 0; i < RxLen; i++)
00160$:
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r2,#0x00
00138$:
	clr	c
	mov	a,r2
	subb	a,r1
	jnc	00109$
;	USBHost.c:293: pBuf[i] = RxBuffer[i];
	mov	a,r2
	add	a,r6
	mov	_hostCtrlTransfer_sloc1_1_0,a
	clr	a
	addc	a,r7
	mov	(_hostCtrlTransfer_sloc1_1_0 + 1),a
	mov	dpl,r2
	mov	dph,#(_RxBuffer >> 8)
	movx	a,@dptr
	mov	dpl,_hostCtrlTransfer_sloc1_1_0
	mov	dph,(_hostCtrlTransfer_sloc1_1_0 + 1)
	movx	@dptr,a
;	USBHost.c:292: for(i = 0; i < RxLen; i++)
	inc	r2
	sjmp	00138$
00109$:
;	USBHost.c:294: pBuf += RxLen;
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	mov	a,r1
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:295: DEBUG_OUT("Received %i bytes\n", (uint16_t)USB_RX_LEN);
	mov	r6,_USB_RX_LEN
	mov	r7,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	USBHost.c:296: if (USB_RX_LEN == 0 || (USB_RX_LEN < endpoint0Size ))
	mov	a,_USB_RX_LEN
	jz	00115$
	mov	dptr,#_endpoint0Size
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_USB_RX_LEN
	subb	a,r7
	jc	00258$
	ljmp	00113$
00258$:
;	USBHost.c:297: break; 
00115$:
;	USBHost.c:299: UH_TX_LEN = 0x00;
	mov	_UEP3_T_LEN,#0x00
	ljmp	00129$
00126$:
;	USBHost.c:303: DEBUG_OUT("Remaining bytes to write %i", RemLen);
	push	ar5
	push	ar4
	push	ar3
	push	_hostCtrlTransfer_sloc0_1_0
	push	(_hostCtrlTransfer_sloc0_1_0 + 1)
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
;	USBHost.c:305: while (RemLen)
00122$:
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00259$
	ljmp	00129$
00259$:
;	USBHost.c:307: delayUs(200);
	mov	dptr,#0x00c8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_delayUs
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:308: UH_TX_LEN = RemLen >= endpoint0Size ? endpoint0Size : RemLen;
	mov	dptr,#_endpoint0Size
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	clr	c
	mov	a,r6
	subb	a,r1
	mov	a,r7
	subb	a,r2
	mov	_hostCtrlTransfer_sloc2_1_0,c
	jnc	00145$
	mov	ar1,r6
	mov	ar2,r7
00145$:
	mov	_UEP3_T_LEN,r1
;	USBHost.c:310: pBuf += UH_TX_LEN;
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_UEP3_T_LEN
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_97
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:311: if (pBuf[1] == 0x09)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x09,00117$
;	USBHost.c:314: SetPort = SetPort ? 0 : 1;
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
	movx	a,@dptr
	jz	00146$
	mov	r1,#0x00
	mov	r2,#0x00
	sjmp	00147$
00146$:
	mov	r1,#0x01
	mov	r2,#0x00
00147$:
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
	mov	a,r1
	movx	@dptr,a
;	USBHost.c:315: *pBuf = SetPort;
	mov	dpl,r6
	mov	dph,r7
	mov	a,r1
	movx	@dptr,a
;	USBHost.c:317: DEBUG_OUT("SET_PORT  %02X  %02X ", *pBuf, SetPort);
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_97
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r2,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar7
	push	ar6
	push	ar1
	push	ar2
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar3
	pop	ar4
	pop	ar5
00117$:
;	USBHost.c:319: DEBUG_OUT("Sending %i bytes\n", (uint16_t)UH_TX_LEN);
	mov	r6,_UEP3_T_LEN
	mov	r7,#0x00
	push	ar5
	push	ar4
	push	ar3
	push	ar6
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:320: s = hostTransfer(USB_PID_OUT << 4, UH_TX_CTRL, 10000);
	mov	dptr,#_hostTransfer_PARM_2
	mov	a,_UEP3_CTRL
	movx	@dptr,a
	mov	dptr,#_hostTransfer_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_hostTransfer
	mov	r7,dpl
	pop	ar3
	pop	ar4
	pop	ar5
;	USBHost.c:321: if (s != ERR_SUCCESS)
	mov	a,r7
	jz	00119$
;	USBHost.c:322: return (s);
	mov	dpl,r7
	ret
00119$:
;	USBHost.c:323: RemLen -= UH_TX_LEN;
	mov	r6,_UEP3_T_LEN
	mov	r7,#0x00
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	clr	c
	subb	a,r6
	mov	r1,a
	mov	a,r2
	subb	a,r7
	mov	r2,a
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_97
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:324: if (pLen)
	mov	a,r3
	orl	a,r4
	jnz	00265$
	ljmp	00122$
00265$:
;	USBHost.c:325: *pLen += UH_TX_LEN;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r1,_UEP3_T_LEN
	mov	r2,#0x00
	mov	a,r1
	add	a,r6
	mov	r6,a
	mov	a,r2
	addc	a,r7
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00122$
00129$:
;	USBHost.c:329: delayUs(200);
	mov	dptr,#0x00c8
	lcall	_delayUs
;	USBHost.c:330: s = hostTransfer((UH_TX_LEN ? USB_PID_IN << 4 : USB_PID_OUT << 4), bUH_R_TOG | bUH_T_TOG, 10000);
	mov	a,_UEP3_T_LEN
	jz	00148$
	mov	r7,#0x90
	sjmp	00149$
00148$:
	mov	r7,#0x10
00149$:
	mov	dptr,#_hostTransfer_PARM_2
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#_hostTransfer_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_hostTransfer
;	USBHost.c:331: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00132$
;	USBHost.c:332: return (s);
	mov	dpl,r7
	ret
00132$:
;	USBHost.c:333: if (UH_TX_LEN == 0)
	mov	a,_UEP3_T_LEN
;	USBHost.c:334: return (ERR_SUCCESS);
	jnz	00134$
	mov	dpl,a
	ret
00134$:
;	USBHost.c:335: if (USB_RX_LEN == 0)
	mov	a,_USB_RX_LEN
;	USBHost.c:336: return (ERR_SUCCESS);
	jnz	00136$
	mov	dpl,a
	ret
00136$:
;	USBHost.c:337: return (ERR_USB_BUF_OVER);
	mov	dpl,#0x17
;	USBHost.c:338: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillTxBuffer'
;------------------------------------------------------------
;len                       Allocated with name '_fillTxBuffer_PARM_2'
;data                      Allocated with name '_fillTxBuffer_data_65536_106'
;i                         Allocated with name '_fillTxBuffer_i_65536_107'
;------------------------------------------------------------
;	USBHost.c:340: void fillTxBuffer(PUINT8C data, unsigned char len)
;	-----------------------------------------
;	 function fillTxBuffer
;	-----------------------------------------
_fillTxBuffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_fillTxBuffer_data_65536_106
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:343: DEBUG_OUT("fillTxBuffer %i bytes\n", len);
	mov	dptr,#_fillTxBuffer_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:344: for(i = 0; i < len; i++)
	mov	dptr,#_fillTxBuffer_data_65536_106
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r2
	subb	a,r7
	jnc	00101$
;	USBHost.c:345: TxBuffer[i] = data[i];
	push	ar5
	push	ar6
	mov	ar0,r2
	mov	r1,#(_TxBuffer >> 8)
	mov	a,r2
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,r0
	mov	dph,r1
	movx	@dptr,a
;	USBHost.c:344: for(i = 0; i < len; i++)
	inc	r2
	pop	ar6
	pop	ar5
	sjmp	00103$
00101$:
;	USBHost.c:346: DEBUG_OUT("fillTxBuffer done\n", len);
	push	ar5
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:347: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDeviceDescriptor'
;------------------------------------------------------------
;s                         Allocated with name '_getDeviceDescriptor_s_65536_109'
;len                       Allocated with name '_getDeviceDescriptor_len_65536_109'
;------------------------------------------------------------
;	USBHost.c:349: unsigned char getDeviceDescriptor()
;	-----------------------------------------
;	 function getDeviceDescriptor
;	-----------------------------------------
_getDeviceDescriptor:
;	USBHost.c:353: endpoint0Size = DEFAULT_ENDP0_SIZE;        //TODO again?
	mov	dptr,#_endpoint0Size
	mov	a,#0x08
	movx	@dptr,a
;	USBHost.c:354: DEBUG_OUT("getDeviceDescriptor\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:355: fillTxBuffer(GetDeviceDescriptorRequest, sizeof(GetDeviceDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetDeviceDescriptorRequest
	lcall	_fillTxBuffer
;	USBHost.c:356: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);          
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getDeviceDescriptor_len_65536_109
	movx	@dptr,a
	mov	a,#(_getDeviceDescriptor_len_65536_109 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_hostCtrlTransfer
;	USBHost.c:357: if (s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	USBHost.c:358: return s;
	mov	dpl,r7
	ret
00102$:
;	USBHost.c:360: DEBUG_OUT("Device descriptor request sent successfully\n");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:361: endpoint0Size = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0;
	mov	dptr,#(_receiveDataBuffer + 0x0007)
	movx	a,@dptr
	mov	dptr,#_endpoint0Size
	movx	@dptr,a
;	USBHost.c:362: if (len < ((PUSB_SETUP_REQ)GetDeviceDescriptorRequest)->wLengthL)
	mov	dptr,#(_GetDeviceDescriptorRequest + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_getDeviceDescriptor_len_65536_109
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r7
	mov	a,r6
	subb	a,r4
	jnc	00104$
;	USBHost.c:364: DEBUG_OUT("Received packet is smaller than expected\n")
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:365: return ERR_USB_BUF_OVER;                
	mov	dpl,#0x17
	ret
00104$:
;	USBHost.c:367: return ERR_SUCCESS;
	mov	dpl,#0x00
;	USBHost.c:368: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbAddress'
;------------------------------------------------------------
;addr                      Allocated with name '_setUsbAddress_addr_65536_111'
;s                         Allocated with name '_setUsbAddress_s_65536_112'
;pSetupReq                 Allocated with name '_setUsbAddress_pSetupReq_65536_112'
;------------------------------------------------------------
;	USBHost.c:370: unsigned char setUsbAddress(unsigned char addr)
;	-----------------------------------------
;	 function setUsbAddress
;	-----------------------------------------
_setUsbAddress:
	mov	a,dpl
	mov	dptr,#_setUsbAddress_addr_65536_111
	movx	@dptr,a
;	USBHost.c:373: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:374: fillTxBuffer(SetUSBAddressRequest, sizeof(SetUSBAddressRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetUSBAddressRequest
	lcall	_fillTxBuffer
;	USBHost.c:375: pSetupReq->wValueL = addr;          
	mov	dptr,#_setUsbAddress_addr_65536_111
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_TxBuffer + 0x0002)
	movx	@dptr,a
;	USBHost.c:376: s = hostCtrlTransfer(0, 0, 0);   
	mov	dptr,#_hostCtrlTransfer_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar7
	lcall	_hostCtrlTransfer
	mov	r6,dpl
	pop	ar7
;	USBHost.c:377: if (s != ERR_SUCCESS) return s;
	mov	a,r6
	jz	00102$
	mov	dpl,r6
	ret
00102$:
;	USBHost.c:378: DEBUG_OUT( "SetAddress: %i\n" , addr);
	mov	ar5,r7
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	USBHost.c:379: setHostUsbAddr(addr);
	mov	dpl,r7
	lcall	_setHostUsbAddr
;	USBHost.c:380: delay(100);         
	mov	dptr,#0x0064
	lcall	_delay
;	USBHost.c:381: return ERR_SUCCESS;
	mov	dpl,#0x00
;	USBHost.c:382: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbConfig'
;------------------------------------------------------------
;cfg                       Allocated with name '_setUsbConfig_cfg_65536_113'
;pSetupReq                 Allocated with name '_setUsbConfig_pSetupReq_65536_114'
;------------------------------------------------------------
;	USBHost.c:384: unsigned char setUsbConfig( unsigned char cfg )
;	-----------------------------------------
;	 function setUsbConfig
;	-----------------------------------------
_setUsbConfig:
	mov	a,dpl
	mov	dptr,#_setUsbConfig_cfg_65536_113
	movx	@dptr,a
;	USBHost.c:386: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:387: fillTxBuffer(SetupSetUsbConfig, sizeof(SetupSetUsbConfig));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetupSetUsbConfig
	lcall	_fillTxBuffer
;	USBHost.c:388: pSetupReq->wValueL = cfg;                          
	mov	dptr,#_setUsbConfig_cfg_65536_113
	movx	a,@dptr
	mov	dptr,#(_TxBuffer + 0x0002)
	movx	@dptr,a
;	USBHost.c:389: return( hostCtrlTransfer(0, 0, 0) );            
	mov	dptr,#_hostCtrlTransfer_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
;	USBHost.c:390: }
	ljmp	_hostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'getDeviceString'
;------------------------------------------------------------
;	USBHost.c:392: unsigned char getDeviceString()
;	-----------------------------------------
;	 function getDeviceString
;	-----------------------------------------
_getDeviceString:
;	USBHost.c:394: fillTxBuffer(GetDeviceStringRequest, sizeof(GetDeviceStringRequest));                         
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetDeviceStringRequest
	lcall	_fillTxBuffer
;	USBHost.c:395: return hostCtrlTransfer(receiveDataBuffer, 0, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
;	USBHost.c:396: }
	ljmp	_hostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'convertStringDescriptor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_convertStringDescriptor_sloc0_1_0'
;sloc1                     Allocated with name '_convertStringDescriptor_sloc1_1_0'
;sloc2                     Allocated with name '_convertStringDescriptor_sloc2_1_0'
;sloc3                     Allocated with name '_convertStringDescriptor_sloc3_1_0'
;strBuffer                 Allocated with name '_convertStringDescriptor_PARM_2'
;bufferLength              Allocated with name '_convertStringDescriptor_PARM_3'
;index                     Allocated with name '_convertStringDescriptor_PARM_4'
;usbBuffer                 Allocated with name '_convertStringDescriptor_usbBuffer_65536_116'
;i                         Allocated with name '_convertStringDescriptor_i_65536_117'
;len                       Allocated with name '_convertStringDescriptor_len_65536_117'
;------------------------------------------------------------
;	USBHost.c:398: char convertStringDescriptor(unsigned char __xdata *usbBuffer, unsigned char __xdata *strBuffer, unsigned short bufferLength, unsigned char index)
;	-----------------------------------------
;	 function convertStringDescriptor
;	-----------------------------------------
_convertStringDescriptor:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_116
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:401: unsigned char i = 0, len = (usbBuffer[0] - 2) >> 1;
	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_116
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,#0x00
	add	a,#0xfe
	mov	r5,a
	mov	a,r4
	addc	a,#0xff
	mov	c,acc.7
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
;	USBHost.c:402: if(usbBuffer[1] != 3) return 0;    //check if device string
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00134$
	sjmp	00117$
00134$:
	mov	dpl,#0x00
	ret
00117$:
	mov	dptr,#_convertStringDescriptor_PARM_3
	movx	a,@dptr
	mov	_convertStringDescriptor_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_convertStringDescriptor_sloc1_1_0 + 1),a
	mov	dptr,#_convertStringDescriptor_PARM_2
	movx	a,@dptr
	mov	_convertStringDescriptor_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_convertStringDescriptor_sloc3_1_0 + 1),a
	mov	_convertStringDescriptor_sloc0_1_0,_convertStringDescriptor_sloc3_1_0
	mov	(_convertStringDescriptor_sloc0_1_0 + 1),(_convertStringDescriptor_sloc3_1_0 + 1)
	mov	r0,#0x00
00109$:
;	USBHost.c:403: for(; (i < len) && (i < bufferLength - 1); i++)
	clr	c
	mov	a,r0
	subb	a,r5
	jnc	00106$
	push	ar5
	mov	r4,_convertStringDescriptor_sloc1_1_0
	mov	r5,(_convertStringDescriptor_sloc1_1_0 + 1)
	mov	a,r4
	add	a,#0xff
	mov	_convertStringDescriptor_sloc2_1_0,a
	mov	a,r5
	addc	a,#0xff
	mov	(_convertStringDescriptor_sloc2_1_0 + 1),a
	mov	ar3,r0
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,_convertStringDescriptor_sloc2_1_0
	mov	a,r5
	subb	a,(_convertStringDescriptor_sloc2_1_0 + 1)
	pop	ar5
	jnc	00106$
;	USBHost.c:404: if(usbBuffer[2 + 1 + (i << 1)])
	push	ar5
	mov	ar3,r0
	mov	r4,#0x00
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,#0x03
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r5,a
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r5
	addc	a,r7
	mov	r5,a
	mov	dpl,r2
	mov	dph,r5
	movx	a,@dptr
	pop	ar5
	jz	00104$
;	USBHost.c:405: strBuffer[i] = '?';
	mov	a,r0
	add	a,_convertStringDescriptor_sloc0_1_0
	mov	dpl,a
	clr	a
	addc	a,(_convertStringDescriptor_sloc0_1_0 + 1)
	mov	dph,a
	mov	a,#0x3f
	movx	@dptr,a
	sjmp	00110$
00104$:
;	USBHost.c:407: strBuffer[i] = usbBuffer[2 + (i << 1)];
	mov	a,r0
	add	a,_convertStringDescriptor_sloc3_1_0
	mov	r1,a
	clr	a
	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
	mov	r2,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
00110$:
;	USBHost.c:403: for(; (i < len) && (i < bufferLength - 1); i++)
	inc	r0
	sjmp	00109$
00106$:
;	USBHost.c:408: strBuffer[i] = 0;
	mov	a,r0
	add	a,_convertStringDescriptor_sloc3_1_0
	mov	dpl,a
	clr	a
	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	USBHost.c:409: sendProtocolMSG(MSG_TYPE_DEVICE_STRING,(unsigned short)len, index+1, 0x34, 0x56, strBuffer);
	mov	r7,#0x00
	mov	dptr,#_convertStringDescriptor_PARM_4
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#_sendProtocolMSG_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	mov	a,_convertStringDescriptor_sloc3_1_0
	movx	@dptr,a
	mov	a,(_convertStringDescriptor_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_sendProtocolMSG
;	USBHost.c:410: return 1;
	mov	dpl,#0x01
;	USBHost.c:411: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DEBUG_OUT_USB_BUFFER'
;------------------------------------------------------------
;usbBuffer                 Allocated with name '_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119'
;i                         Allocated with name '_DEBUG_OUT_USB_BUFFER_i_65536_120'
;------------------------------------------------------------
;	USBHost.c:413: void DEBUG_OUT_USB_BUFFER(unsigned char __xdata *usbBuffer)
;	-----------------------------------------
;	 function DEBUG_OUT_USB_BUFFER
;	-----------------------------------------
_DEBUG_OUT_USB_BUFFER:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:416: for(i = 0; i < usbBuffer[0]; i++)
	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_119
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	clr	c
	mov	a,r4
	subb	a,r3
	mov	a,r5
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	USBHost.c:418: DEBUG_OUT("0x%02X ", (uint16_t)(usbBuffer[i]));
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:416: for(i = 0; i < usbBuffer[0]; i++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00101$:
;	USBHost.c:420: DEBUG_OUT("\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:421: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getConfigurationDescriptor'
;------------------------------------------------------------
;s                         Allocated with name '_getConfigurationDescriptor_s_65536_123'
;len                       Allocated with name '_getConfigurationDescriptor_len_65536_123'
;total                     Allocated with name '_getConfigurationDescriptor_total_65536_123'
;------------------------------------------------------------
;	USBHost.c:423: unsigned char getConfigurationDescriptor()
;	-----------------------------------------
;	 function getConfigurationDescriptor
;	-----------------------------------------
_getConfigurationDescriptor:
;	USBHost.c:427: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetConfigurationDescriptorRequest
	lcall	_fillTxBuffer
;	USBHost.c:429: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getConfigurationDescriptor_len_65536_123
	movx	@dptr,a
	mov	a,#(_getConfigurationDescriptor_len_65536_123 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_hostCtrlTransfer
;	USBHost.c:430: if(s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	USBHost.c:431: return s;
	mov	dpl,r7
	ret
00102$:
;	USBHost.c:433: if(len < ((PUSB_SETUP_REQ)GetConfigurationDescriptorRequest)->wLengthL)
	mov	dptr,#(_GetConfigurationDescriptorRequest + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_getConfigurationDescriptor_len_65536_123
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r7
	mov	a,r6
	subb	a,r4
	jnc	00104$
;	USBHost.c:434: return ERR_USB_BUF_OVER;
	mov	dpl,#0x17
	ret
00104$:
;	USBHost.c:437: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r4,a
	clr	a
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	USBHost.c:438: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetConfigurationDescriptorRequest
	push	ar7
	push	ar6
	lcall	_fillTxBuffer
	pop	ar6
	pop	ar7
;	USBHost.c:439: ((PUSB_SETUP_REQ)TxBuffer)->wLengthL = (unsigned char)(total & 255);
	mov	ar5,r7
	mov	dptr,#(_TxBuffer + 0x0006)
	mov	a,r5
	movx	@dptr,a
;	USBHost.c:440: ((PUSB_SETUP_REQ)TxBuffer)->wLengthH = (unsigned char)(total >> 8);
	mov	ar7,r6
	mov	dptr,#(_TxBuffer + 0x0007)
	mov	a,r7
	movx	@dptr,a
;	USBHost.c:441: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getConfigurationDescriptor_len_65536_123
	movx	@dptr,a
	mov	a,#(_getConfigurationDescriptor_len_65536_123 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_hostCtrlTransfer
;	USBHost.c:442: if(s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00106$
;	USBHost.c:443: return s;
	mov	dpl,r7
	ret
00106$:
;	USBHost.c:447: return ERR_SUCCESS;
	mov	dpl,#0x00
;	USBHost.c:448: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getInterfaceDescriptor'
;------------------------------------------------------------
;index                     Allocated with name '_getInterfaceDescriptor_index_65536_124'
;temp                      Allocated with name '_getInterfaceDescriptor_temp_65536_125'
;s                         Allocated with name '_getInterfaceDescriptor_s_65536_125'
;len                       Allocated with name '_getInterfaceDescriptor_len_65536_125'
;------------------------------------------------------------
;	USBHost.c:450: unsigned char getInterfaceDescriptor(unsigned char index)
;	-----------------------------------------
;	 function getInterfaceDescriptor
;	-----------------------------------------
_getInterfaceDescriptor:
;	USBHost.c:455: fillTxBuffer(GetInterfaceDescriptorRequest, sizeof(GetInterfaceDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetInterfaceDescriptorRequest
	lcall	_fillTxBuffer
;	USBHost.c:456: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);             
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getInterfaceDescriptor_len_65536_125
	movx	@dptr,a
	mov	a,#(_getInterfaceDescriptor_len_65536_125 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
;	USBHost.c:457: return s;                          
;	USBHost.c:458: }
	ljmp	_hostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'resetHubDevices'
;------------------------------------------------------------
;hubindex                  Allocated with name '_resetHubDevices_hubindex_65536_126'
;hiddevice                 Allocated with name '_resetHubDevices_hiddevice_65536_127'
;------------------------------------------------------------
;	USBHost.c:524: void resetHubDevices(unsigned char hubindex)
;	-----------------------------------------
;	 function resetHubDevices
;	-----------------------------------------
_resetHubDevices:
	mov	a,dpl
	mov	dptr,#_resetHubDevices_hubindex_65536_126
	movx	@dptr,a
;	USBHost.c:527: VendorProductID[hubindex].idVendorL = 0;
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x10
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_VendorProductID
	mov	dpl,a
	mov	a,r6
	addc	a,#(_VendorProductID >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:528: VendorProductID[hubindex].idVendorH = 0;
	mov	a,r5
	add	a,#_VendorProductID
	mov	r5,a
	mov	a,r6
	addc	a,#(_VendorProductID >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:529: VendorProductID[hubindex].idProductL = 0;
	mov	a,#0x08
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:530: VendorProductID[hubindex].idProductH = 0;
	mov	a,#0x0c
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:531: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	mov	r6,#0x00
00104$:
;	USBHost.c:533: if(HIDdevice[hiddevice].rootHub == hubindex){
	mov	a,r6
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r4,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x01
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	cjne	a,ar7,00105$
;	USBHost.c:534: HIDdevice[hiddevice].connected  = 0;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
;	USBHost.c:535: HIDdevice[hiddevice].rootHub  = 0;
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	USBHost.c:536: HIDdevice[hiddevice].interface  = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	@dptr,a
;	USBHost.c:537: HIDdevice[hiddevice].endPoint  = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
;	USBHost.c:538: HIDdevice[hiddevice].type  = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00105$:
;	USBHost.c:531: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00104$
;	USBHost.c:541: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pollHIDdevice'
;------------------------------------------------------------
;sloc0                     Allocated with name '_pollHIDdevice_sloc0_1_0'
;sloc1                     Allocated with name '_pollHIDdevice_sloc1_1_0'
;sloc2                     Allocated with name '_pollHIDdevice_sloc2_1_0'
;s                         Allocated with name '_pollHIDdevice_s_65536_131'
;hiddevice                 Allocated with name '_pollHIDdevice_hiddevice_65536_131'
;len                       Allocated with name '_pollHIDdevice_len_65536_131'
;------------------------------------------------------------
;	USBHost.c:543: void pollHIDdevice()
;	-----------------------------------------
;	 function pollHIDdevice
;	-----------------------------------------
_pollHIDdevice:
;	USBHost.c:546: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	mov	r7,#0x00
00110$:
;	USBHost.c:548: if(HIDdevice[hiddevice].connected){
	mov	a,r7
	mov	b,#0x08
	mul	ab
	mov	r5,a
	mov	r6,b
	add	a,#_HIDdevice
	mov	r3,a
	mov	a,r6
	addc	a,#(_HIDdevice >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jnz	00141$
	ljmp	00111$
00141$:
;	USBHost.c:549: selectHubPort(HIDdevice[hiddevice].rootHub, 0);
	mov	a,r5
	add	a,#_HIDdevice
	mov	r5,a
	mov	a,r6
	addc	a,#(_HIDdevice >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_selectHubPort_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_selectHubPort
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:550: s = hostTransfer( USB_PID_IN << 4 | HIDdevice[hiddevice].endPoint & 0x7F, HIDdevice[hiddevice].endPoint & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0 );
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x7f
	anl	a,r6
	orl	a,#0x90
	mov	r5,a
	mov	a,r6
	jnb	acc.7,00114$
	mov	r4,#0xc0
	mov	r6,#0x00
	sjmp	00115$
00114$:
	mov	r4,#0x00
	mov	r6,#0x00
00115$:
	mov	dptr,#_hostTransfer_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_hostTransfer_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	lcall	_hostTransfer
	mov	a,dpl
	pop	ar7
;	USBHost.c:551: if ( s == ERR_SUCCESS )
	jz	00143$
	ljmp	00111$
00143$:
;	USBHost.c:553: HIDdevice[hiddevice].endPoint ^= 0x80;
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r5,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x03
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	xrl	ar2,#0x80
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
;	USBHost.c:554: len = USB_RX_LEN;
	mov	dptr,#_pollHIDdevice_len_65536_131
	mov	a,_USB_RX_LEN
	movx	@dptr,a
;	USBHost.c:555: if ( len )
	movx	a,@dptr
	mov	r2,a
	movx	a,@dptr
	jnz	00144$
	ljmp	00111$
00144$:
;	USBHost.c:557: LED = !LED;    
	cpl	_LED
;	USBHost.c:559: sendHidPollMSG(MSG_TYPE_DEVICE_POLL,len, HIDdevice[hiddevice].type, hiddevice, HIDdevice[hiddevice].endPoint & 0x7F, RxBuffer,VendorProductID[HIDdevice[hiddevice].rootHub].idVendorL,VendorProductID[HIDdevice[hiddevice].rootHub].idVendorH,VendorProductID[HIDdevice[hiddevice].rootHub].idProductL,VendorProductID[HIDdevice[hiddevice].rootHub].idProductH);
	mov	_pollHIDdevice_sloc0_1_0,r2
	mov	(_pollHIDdevice_sloc0_1_0 + 1),#0x00
	mov	a,#0x04
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x7f
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	movx	a,@dptr
	mov	b,#0x10
	mul	ab
	mov	r6,a
	mov	r5,b
	add	a,#_VendorProductID
	mov	dpl,a
	mov	a,r5
	addc	a,#(_VendorProductID >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_pollHIDdevice_sloc1_1_0,a
	mov	a,r6
	add	a,#_VendorProductID
	mov	r6,a
	mov	a,r5
	addc	a,#(_VendorProductID >> 8)
	mov	r5,a
	mov	dpl,r6
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	_pollHIDdevice_sloc2_1_0,a
	mov	a,#0x08
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0c
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_sendHidPollMSG_PARM_2
	mov	a,_pollHIDdevice_sloc0_1_0
	movx	@dptr,a
	mov	a,(_pollHIDdevice_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_5
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_6
	mov	a,#_RxBuffer
	movx	@dptr,a
	mov	a,#(_RxBuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_7
	mov	a,_pollHIDdevice_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_8
	mov	a,_pollHIDdevice_sloc2_1_0
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_9
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_sendHidPollMSG_PARM_10
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x04
	push	ar7
	push	ar2
	push	ar0
	lcall	_sendHidPollMSG
	pop	ar0
	pop	ar2
	pop	ar7
;	USBHost.c:561: if (HIDdevice[hiddevice].type == REPORT_USAGE_MOUSE) {
	mov	dpl,r0
	mov	dph,r2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r0,#0x02,00111$
	cjne	r2,#0x00,00111$
	cjne	r6,#0x00,00111$
	cjne	r5,#0x00,00111$
;	USBHost.c:562: mouse_write(RxBuffer[0]); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
	mov	dptr,#_RxBuffer
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_mouse_write
;	USBHost.c:563: mouse_write(RxBuffer[1]); // byte 1: ΔX (signed)
	mov	dptr,#(_RxBuffer + 0x0001)
	movx	a,@dptr
	mov	dpl,a
	lcall	_mouse_write
;	USBHost.c:564: mouse_write(RxBuffer[2]); // byte 2: ΔY (signed)
	mov	dptr,#(_RxBuffer + 0x0002)
	movx	a,@dptr
	mov	dpl,a
	lcall	_mouse_write
;	USBHost.c:565: mouse_write(RxBuffer[3]); // byte 3: ΔWheel (signed)
	mov	dptr,#(_RxBuffer + 0x0003)
	movx	a,@dptr
	mov	dpl,a
	lcall	_mouse_write
	pop	ar7
00111$:
;	USBHost.c:546: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	inc	r7
	cjne	r7,#0x08,00147$
00147$:
	jnc	00148$
	ljmp	00110$
00148$:
;	USBHost.c:571: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parseHIDDeviceReport'
;------------------------------------------------------------
;sloc0                     Allocated with name '_parseHIDDeviceReport_sloc0_1_0'
;sloc1                     Allocated with name '_parseHIDDeviceReport_sloc1_1_0'
;sloc2                     Allocated with name '_parseHIDDeviceReport_sloc2_1_0'
;sloc3                     Allocated with name '_parseHIDDeviceReport_sloc3_1_0'
;sloc4                     Allocated with name '_parseHIDDeviceReport_sloc4_1_0'
;sloc5                     Allocated with name '_parseHIDDeviceReport_sloc5_1_0'
;sloc6                     Allocated with name '_parseHIDDeviceReport_sloc6_1_0'
;length                    Allocated with name '_parseHIDDeviceReport_PARM_2'
;CurrentDevive             Allocated with name '_parseHIDDeviceReport_PARM_3'
;report                    Allocated with name '_parseHIDDeviceReport_report_65536_138'
;i                         Allocated with name '_parseHIDDeviceReport_i_65536_139'
;level                     Allocated with name '_parseHIDDeviceReport_level_65536_139'
;isUsageSet                Allocated with name '_parseHIDDeviceReport_isUsageSet_65536_139'
;j                         Allocated with name '_parseHIDDeviceReport_j_131072_140'
;id                        Allocated with name '_parseHIDDeviceReport_id_131072_140'
;size                      Allocated with name '_parseHIDDeviceReport_size_131072_140'
;data                      Allocated with name '_parseHIDDeviceReport_data_131072_140'
;vd                        Allocated with name '_parseHIDDeviceReport_vd_262144_144'
;------------------------------------------------------------
;	USBHost.c:573: void parseHIDDeviceReport(unsigned char __xdata *report, unsigned short length, unsigned char CurrentDevive)
;	-----------------------------------------
;	 function parseHIDDeviceReport
;	-----------------------------------------
_parseHIDDeviceReport:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_parseHIDDeviceReport_report_65536_138
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:575: unsigned short i = 0;
	mov	dptr,#_parseHIDDeviceReport_i_65536_139
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:576: unsigned char level = 0;
	mov	dptr,#_parseHIDDeviceReport_level_65536_139
	movx	@dptr,a
;	USBHost.c:577: unsigned char isUsageSet = 0;
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
	movx	@dptr,a
;	USBHost.c:578: while(i < length)
	mov	dptr,#_parseHIDDeviceReport_PARM_3
	movx	a,@dptr
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r6,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_report_65536_138
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),a
	mov	r2,_parseHIDDeviceReport_sloc4_1_0
	mov	r3,(_parseHIDDeviceReport_sloc4_1_0 + 1)
	mov	dptr,#_parseHIDDeviceReport_PARM_2
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc3_1_0 + 1),a
00151$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_139
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),a
	clr	c
	mov	a,_parseHIDDeviceReport_sloc0_1_0
	subb	a,_parseHIDDeviceReport_sloc3_1_0
	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
	subb	a,(_parseHIDDeviceReport_sloc3_1_0 + 1)
	jc	00304$
	ret
00304$:
;	USBHost.c:581: unsigned char id = report[i] & 0b11111100;
	push	ar6
	push	ar7
	mov	a,_parseHIDDeviceReport_sloc0_1_0
	add	a,_parseHIDDeviceReport_sloc4_1_0
	mov	dpl,a
	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_id_131072_140
	mov	a,#0xfc
	anl	a,r7
	movx	@dptr,a
;	USBHost.c:582: unsigned char size = report[i] & 0b00000011;
	mov	a,#0x03
	anl	a,r7
	mov	_parseHIDDeviceReport_sloc0_1_0,a
	mov	dptr,#_parseHIDDeviceReport_size_131072_140
	movx	@dptr,a
;	USBHost.c:583: unsigned long data = 0;
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:584: if(size == 3) size++;
	mov	a,#0x03
	cjne	a,_parseHIDDeviceReport_sloc0_1_0,00305$
	sjmp	00306$
00305$:
	pop	ar7
	pop	ar6
	sjmp	00169$
00306$:
	pop	ar7
	pop	ar6
	mov	dptr,#_parseHIDDeviceReport_size_131072_140
	mov	a,_parseHIDDeviceReport_sloc0_1_0
	inc	a
	movx	@dptr,a
;	USBHost.c:585: for(j = 0; j < size; j++)
00169$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_139
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),a
	mov	dptr,#_parseHIDDeviceReport_size_131072_140
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc1_1_0,a
	mov	_parseHIDDeviceReport_sloc2_1_0,#0x00
00155$:
	clr	c
	mov	a,_parseHIDDeviceReport_sloc2_1_0
	subb	a,_parseHIDDeviceReport_sloc1_1_0
	jnc	00103$
;	USBHost.c:586: data |= ((unsigned long)report[i + 1 + j]) << (j * 8);
	push	ar6
	push	ar7
	mov	r6,_parseHIDDeviceReport_sloc0_1_0
	mov	r7,(_parseHIDDeviceReport_sloc0_1_0 + 1)
	inc	r6
	cjne	r6,#0x00,00308$
	inc	r7
00308$:
	mov	r0,_parseHIDDeviceReport_sloc2_1_0
	mov	r1,#0x00
	mov	a,r0
	add	a,r6
	mov	r6,a
	mov	a,r1
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,r2
	mov	dpl,a
	mov	a,r7
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r6,a
	mov	r7,a
	mov	a,_parseHIDDeviceReport_sloc2_1_0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r5,a
	mov	b,r5
	inc	b
	sjmp	00310$
00309$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00310$:
	djnz	b,00309$
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	orl	a,r0
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	USBHost.c:585: for(j = 0; j < size; j++)
	inc	_parseHIDDeviceReport_sloc2_1_0
	pop	ar7
	pop	ar6
	sjmp	00155$
00103$:
;	USBHost.c:587: for(j = 0; j < level - (id == REPORT_COLLECTION_END ? 1 : 0); j++)
	mov	dptr,#_parseHIDDeviceReport_level_65536_139
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_parseHIDDeviceReport_id_131072_140
	movx	a,@dptr
	mov	r4,a
	clr	a
	cjne	r4,#0xc0,00311$
	inc	a
00311$:
	mov	_parseHIDDeviceReport_sloc2_1_0,a
	mov	r1,#0x00
00158$:
	mov	_parseHIDDeviceReport_sloc0_1_0,r5
	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),#0x00
	mov	a,_parseHIDDeviceReport_sloc2_1_0
	jz	00162$
	mov	_parseHIDDeviceReport_sloc5_1_0,#0x01
	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),#0x00
	sjmp	00163$
00162$:
	clr	a
	mov	_parseHIDDeviceReport_sloc5_1_0,a
	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),a
00163$:
	push	ar6
	push	ar7
	mov	a,_parseHIDDeviceReport_sloc0_1_0
	clr	c
	subb	a,_parseHIDDeviceReport_sloc5_1_0
	mov	r0,a
	mov	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
	subb	a,(_parseHIDDeviceReport_sloc5_1_0 + 1)
	mov	r7,a
	mov	ar4,r1
	mov	r6,#0x00
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r6
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	jnc	00104$
;	USBHost.c:588: DEBUG_OUT("    ");
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	push	ar1
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:587: for(j = 0; j < level - (id == REPORT_COLLECTION_END ? 1 : 0); j++)
	inc	r1
	sjmp	00158$
00104$:
;	USBHost.c:589: switch(id)
	mov	dptr,#_parseHIDDeviceReport_id_131072_140
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x04,00315$
	sjmp	00105$
00315$:
	cjne	r5,#0x08,00316$
	ljmp	00113$
00316$:
	cjne	r5,#0x14,00317$
	ljmp	00134$
00317$:
	cjne	r5,#0x18,00318$
	ljmp	00138$
00318$:
	cjne	r5,#0x24,00319$
	ljmp	00135$
00319$:
	cjne	r5,#0x28,00320$
	ljmp	00139$
00320$:
	cjne	r5,#0x34,00321$
	ljmp	00136$
00321$:
	cjne	r5,#0x44,00322$
	ljmp	00137$
00322$:
	cjne	r5,#0x64,00323$
	ljmp	00142$
00323$:
	cjne	r5,#0x74,00324$
	ljmp	00146$
00324$:
	cjne	r5,#0x80,00325$
	ljmp	00143$
00325$:
	cjne	r5,#0x84,00326$
	ljmp	00147$
00326$:
	cjne	r5,#0x90,00327$
	ljmp	00144$
00327$:
	cjne	r5,#0x94,00328$
	ljmp	00148$
00328$:
	cjne	r5,#0xa0,00329$
	ljmp	00140$
00329$:
	cjne	r5,#0xb0,00330$
	ljmp	00145$
00330$:
	cjne	r5,#0xc0,00331$
	ljmp	00141$
00331$:
	ljmp	00149$
;	USBHost.c:591: case REPORT_USAGE_PAGE:    //todo clean up defines (case)
00105$:
;	USBHost.c:593: unsigned long vd = data < REPORT_USAGE_PAGE_VENDOR ? data : REPORT_USAGE_PAGE_VENDOR;
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
	clr	c
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	subb	a,#0xff
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
	subb	a,#0x00
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
	subb	a,#0x00
	jc	00165$
	clr	a
	mov	_parseHIDDeviceReport_sloc6_1_0,a
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),#0xff
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
00165$:
;	USBHost.c:594: DEBUG_OUT("Usage page ");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:595: switch(vd)
	mov	a,#0x01
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00333$
	dec	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00333$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00333$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00333$
	ljmp	00109$
00333$:
	mov	a,#0x07
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00334$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00334$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00334$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00334$
	sjmp	00107$
00334$:
	mov	a,#0x08
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00335$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00335$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00335$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00335$
	sjmp	00106$
00335$:
	mov	a,#0x09
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00336$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00336$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00336$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00336$
	sjmp	00108$
00336$:
	clr	a
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00337$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00337$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00337$
	cpl	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00337$
	ljmp	00110$
00337$:
	ljmp	00111$
;	USBHost.c:597: case REPORT_USAGE_PAGE_LEDS:
00106$:
;	USBHost.c:598: DEBUG_OUT("LEDs");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:599: break;
	ljmp	00112$
;	USBHost.c:600: case REPORT_USAGE_PAGE_KEYBOARD:
00107$:
;	USBHost.c:601: DEBUG_OUT("Keyboard/Keypad");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:602: break;
	ljmp	00112$
;	USBHost.c:603: case REPORT_USAGE_PAGE_BUTTON:
00108$:
;	USBHost.c:604: DEBUG_OUT("Button");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:605: break;
	ljmp	00112$
;	USBHost.c:606: case REPORT_USAGE_PAGE_GENERIC:
00109$:
;	USBHost.c:607: DEBUG_OUT("generic desktop controls");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:608: break;
;	USBHost.c:609: case REPORT_USAGE_PAGE_VENDOR:
	sjmp	00112$
00110$:
;	USBHost.c:610: DEBUG_OUT("vendor defined 0x%04lx", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:611: break;
;	USBHost.c:612: default:
	sjmp	00112$
00111$:
;	USBHost.c:613: DEBUG_OUT("unknown 0x%02lx", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:614: }
00112$:
;	USBHost.c:615: DEBUG_OUT("\n");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:617: break;
	ljmp	00150$
;	USBHost.c:618: case REPORT_USAGE:
00113$:
;	USBHost.c:619: if (!isUsageSet){
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
	movx	a,@dptr
	jnz	00117$
;	USBHost.c:620: if (data == REPORT_USAGE_MOUSE) flash_led(); // Подключена мышь.
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
	mov	a,#0x02
	cjne	a,_parseHIDDeviceReport_sloc6_1_0,00339$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 1),00339$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 2),00339$
	cjne	a,(_parseHIDDeviceReport_sloc6_1_0 + 3),00339$
	sjmp	00340$
00339$:
	sjmp	00115$
00340$:
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_flash_led
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
00115$:
;	USBHost.c:621: HIDdevice[CurrentDevive].type = data;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:622: isUsageSet = 1;
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_139
	mov	a,#0x01
	movx	@dptr,a
00117$:
;	USBHost.c:624: DEBUG_OUT("Usage ");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:625: switch(data)
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 3),a
	clr	c
	mov	a,#0x38
	subb	a,_parseHIDDeviceReport_sloc6_1_0
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 2)
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc6_1_0 + 3)
	jnc	00341$
	ljmp	00132$
00341$:
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	add	a,#(00342$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	add	a,#(00343$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00342$:
	.db	00118$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00127$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00128$
	.db	00129$
	.db	00130$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00132$
	.db	00131$
00343$:
	.db	00118$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00128$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00132$>>8
	.db	00131$>>8
;	USBHost.c:627: case REPORT_USAGE_UNKNOWN:
00118$:
;	USBHost.c:628: DEBUG_OUT("Unknown");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:629: break;
	ljmp	00133$
;	USBHost.c:630: case REPORT_USAGE_POINTER:
00119$:
;	USBHost.c:631: DEBUG_OUT("Pointer");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:632: break;
	ljmp	00133$
;	USBHost.c:633: case REPORT_USAGE_MOUSE:
00120$:
;	USBHost.c:634: DEBUG_OUT("Mouse");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:635: break;
	ljmp	00133$
;	USBHost.c:636: case REPORT_USAGE_RESERVED:
00121$:
;	USBHost.c:637: DEBUG_OUT("Reserved");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:638: break;
	ljmp	00133$
;	USBHost.c:639: case REPORT_USAGE_JOYSTICK:
00122$:
;	USBHost.c:640: DEBUG_OUT("Joystick");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:641: break;
	ljmp	00133$
;	USBHost.c:642: case REPORT_USAGE_GAMEPAD:
00123$:
;	USBHost.c:643: DEBUG_OUT("Gamepad");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:644: break;
	ljmp	00133$
;	USBHost.c:645: case REPORT_USAGE_KEYBOARD:
00124$:
;	USBHost.c:646: DEBUG_OUT("Keyboard");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:647: break;
	ljmp	00133$
;	USBHost.c:648: case REPORT_USAGE_KEYPAD:
00125$:
;	USBHost.c:649: DEBUG_OUT("Keypad");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:650: break;
	ljmp	00133$
;	USBHost.c:651: case REPORT_USAGE_MULTI_AXIS:
00126$:
;	USBHost.c:652: DEBUG_OUT("Multi-Axis controller");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:653: break;
	ljmp	00133$
;	USBHost.c:654: case REPORT_USAGE_SYSTEM:
00127$:
;	USBHost.c:655: DEBUG_OUT("Tablet system controls");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:656: break;
	ljmp	00133$
;	USBHost.c:658: case REPORT_USAGE_X:
00128$:
;	USBHost.c:659: DEBUG_OUT("X");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:660: break;
	ljmp	00133$
;	USBHost.c:661: case REPORT_USAGE_Y:
00129$:
;	USBHost.c:662: DEBUG_OUT("Y");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:663: break;
;	USBHost.c:664: case REPORT_USAGE_Z:
	sjmp	00133$
00130$:
;	USBHost.c:665: DEBUG_OUT("Z");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:666: break;
;	USBHost.c:667: case REPORT_USAGE_WHEEL:
	sjmp	00133$
00131$:
;	USBHost.c:668: DEBUG_OUT("Wheel");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:669: break;
;	USBHost.c:670: default:
	sjmp	00133$
00132$:
;	USBHost.c:671: DEBUG_OUT("unknown 0x%02lx", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	_parseHIDDeviceReport_sloc6_1_0
	push	(_parseHIDDeviceReport_sloc6_1_0 + 1)
	push	(_parseHIDDeviceReport_sloc6_1_0 + 2)
	push	(_parseHIDDeviceReport_sloc6_1_0 + 3)
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:672: }
00133$:
;	USBHost.c:673: DEBUG_OUT("\n");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:674: break;
	ljmp	00150$
;	USBHost.c:675: case REPORT_LOCAL_MINIMUM:
00134$:
;	USBHost.c:676: DEBUG_OUT("Logical min %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:677: break;
	ljmp	00150$
;	USBHost.c:678: case REPORT_LOCAL_MAXIMUM:
00135$:
;	USBHost.c:679: DEBUG_OUT("Logical max %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:680: break;
	ljmp	00150$
;	USBHost.c:681: case REPORT_PHYSICAL_MINIMUM:
00136$:
;	USBHost.c:682: DEBUG_OUT("Physical min %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:683: break;
	ljmp	00150$
;	USBHost.c:684: case REPORT_PHYSICAL_MAXIMUM:
00137$:
;	USBHost.c:685: DEBUG_OUT("Physical max %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:686: break;
	ljmp	00150$
;	USBHost.c:687: case REPORT_USAGE_MINIMUM:
00138$:
;	USBHost.c:688: DEBUG_OUT("Physical min %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:689: break;
	ljmp	00150$
;	USBHost.c:690: case REPORT_USAGE_MAXIMUM:
00139$:
;	USBHost.c:691: DEBUG_OUT("Physical max %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:692: break;
	ljmp	00150$
;	USBHost.c:693: case REPORT_COLLECTION:
00140$:
;	USBHost.c:694: DEBUG_OUT("Collection start %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:695: level++;
	mov	dptr,#_parseHIDDeviceReport_level_65536_139
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	USBHost.c:696: break;
	ljmp	00150$
;	USBHost.c:697: case REPORT_COLLECTION_END:
00141$:
;	USBHost.c:698: DEBUG_OUT("Collection end %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:699: level--;
	mov	dptr,#_parseHIDDeviceReport_level_65536_139
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	USBHost.c:700: break;
	ljmp	00150$
;	USBHost.c:701: case REPORT_UNIT:
00142$:
;	USBHost.c:702: DEBUG_OUT("Unit 0x%02lx\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:703: break;
	ljmp	00150$
;	USBHost.c:704: case REPORT_INPUT:
00143$:
;	USBHost.c:705: DEBUG_OUT("Input 0x%02lx\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:706: break;
	ljmp	00150$
;	USBHost.c:707: case REPORT_OUTPUT:
00144$:
;	USBHost.c:708: DEBUG_OUT("Output 0x%02lx\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:709: break;
	ljmp	00150$
;	USBHost.c:710: case REPORT_FEATURE:
00145$:
;	USBHost.c:711: DEBUG_OUT("Feature 0x%02lx\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:712: break;
	ljmp	00150$
;	USBHost.c:713: case REPORT_REPORT_SIZE:
00146$:
;	USBHost.c:714: DEBUG_OUT("Report size %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:715: break;
	ljmp	00150$
;	USBHost.c:716: case REPORT_REPORT_ID:
00147$:
;	USBHost.c:717: DEBUG_OUT("Report ID %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:718: break;
	ljmp	00150$
;	USBHost.c:719: case REPORT_REPORT_COUNT:
00148$:
;	USBHost.c:720: DEBUG_OUT("Report count %lu\n", data);
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:721: break;
;	USBHost.c:722: default:
	sjmp	00150$
00149$:
;	USBHost.c:723: DEBUG_OUT("Unknown HID report identifier: 0x%02x (%i bytes) data: 0x%02lx\n", id, size, data);
	mov	r1,_parseHIDDeviceReport_sloc1_1_0
	mov	r4,#0x00
	mov	ar0,r5
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	mov	dptr,#_parseHIDDeviceReport_data_131072_140
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar1
	push	ar4
	push	ar0
	push	ar5
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	USBHost.c:724: };
00150$:
;	USBHost.c:725: i += size + 1;
	mov	dptr,#_parseHIDDeviceReport_size_131072_140
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	inc	r5
	cjne	r5,#0x00,00344$
	inc	r4
00344$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_139
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r5
	add	a,r0
	mov	r0,a
	mov	a,r4
	addc	a,r1
	mov	r1,a
	mov	dptr,#_parseHIDDeviceReport_i_65536_139
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	USBHost.c:727: }
	ljmp	00151$
;------------------------------------------------------------
;Allocation info for local variables in function 'getHIDDeviceReport'
;------------------------------------------------------------
;CurrentDevive             Allocated with name '_getHIDDeviceReport_CurrentDevive_65536_148'
;s                         Allocated with name '_getHIDDeviceReport_s_65536_149'
;len                       Allocated with name '_getHIDDeviceReport_len_65536_149'
;i                         Allocated with name '_getHIDDeviceReport_i_65536_149'
;reportLen                 Allocated with name '_getHIDDeviceReport_reportLen_65536_149'
;------------------------------------------------------------
;	USBHost.c:729: unsigned char getHIDDeviceReport(unsigned char CurrentDevive)
;	-----------------------------------------
;	 function getHIDDeviceReport
;	-----------------------------------------
_getHIDDeviceReport:
	mov	a,dpl
	mov	dptr,#_getHIDDeviceReport_CurrentDevive_65536_148
	movx	@dptr,a
;	USBHost.c:733: DEBUG_OUT("Requesting report from interface %i\n", HIDdevice[CurrentDevive].interface);
	movx	a,@dptr
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r6,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_51
	push	acc
	mov	a,#(___str_51 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:735: fillTxBuffer(SetHIDIdleRequest, sizeof(SetHIDIdleRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetHIDIdleRequest
	lcall	_fillTxBuffer
	pop	ar6
	pop	ar7
;	USBHost.c:736: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevive].interface;    
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dptr,#(_TxBuffer + 0x0004)
	movx	@dptr,a
;	USBHost.c:737: s = hostCtrlTransfer(receiveDataBuffer, &len, 0);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getHIDDeviceReport_len_65536_149
	movx	@dptr,a
	mov	a,#(_getHIDDeviceReport_len_65536_149 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	push	ar7
	push	ar6
	lcall	_hostCtrlTransfer
;	USBHost.c:743: fillTxBuffer(GetHIDReport, sizeof(GetHIDReport));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetHIDReport
	lcall	_fillTxBuffer
	pop	ar6
	pop	ar7
;	USBHost.c:744: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevive].interface;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dptr,#(_TxBuffer + 0x0004)
	movx	@dptr,a
;	USBHost.c:745: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthL = (unsigned char)(reportLen & 255); 
	mov	r7,#0x00
	mov	dptr,#(_TxBuffer + 0x0006)
	mov	a,r7
	movx	@dptr,a
;	USBHost.c:746: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthH = (unsigned char)(reportLen >> 8);
	mov	dptr,#(_TxBuffer + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	USBHost.c:747: s = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getHIDDeviceReport_len_65536_149
	movx	@dptr,a
	mov	a,#(_getHIDDeviceReport_len_65536_149 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_hostCtrlTransfer_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_hostCtrlTransfer
;	USBHost.c:748: if(s != ERR_SUCCESS)
	mov	a,dpl
	mov	r7,a
	jz	00111$
;	USBHost.c:749: return s;
	mov	dpl,r7
	ret
;	USBHost.c:751: for (i = 0; i < len; i++)
00111$:
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	dptr,#_getHIDDeviceReport_len_65536_149
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00103$
;	USBHost.c:753: DEBUG_OUT("0x%02X ", receiveDataBuffer[i]);
	mov	a,r6
	add	a,#_receiveDataBuffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_receiveDataBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:751: for (i = 0; i < len; i++)
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
;	USBHost.c:755: DEBUG_OUT("\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:756: sendProtocolMSG(MSG_TYPE_HID_INFO, len, CurrentDevive, HIDdevice[CurrentDevive].interface, HIDdevice[CurrentDevive].rootHub, receiveDataBuffer);
	mov	dptr,#_getHIDDeviceReport_len_65536_149
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getHIDDeviceReport_CurrentDevive_65536_148
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r3,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_sendProtocolMSG_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	mov	a,#_receiveDataBuffer
	movx	@dptr,a
	mov	a,#(_receiveDataBuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	push	ar5
	lcall	_sendProtocolMSG
	pop	ar5
;	USBHost.c:757: parseHIDDeviceReport(receiveDataBuffer, len, CurrentDevive);
	mov	dptr,#_getHIDDeviceReport_len_65536_149
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_parseHIDDeviceReport_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_parseHIDDeviceReport
;	USBHost.c:758: return (ERR_SUCCESS);
	mov	dpl,#0x00
;	USBHost.c:759: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readInterface'
;------------------------------------------------------------
;interface                 Allocated with name '_readInterface_PARM_2'
;rootHubIndex              Allocated with name '_readInterface_rootHubIndex_65536_152'
;------------------------------------------------------------
;	USBHost.c:761: void readInterface(unsigned char rootHubIndex, PXUSB_ITF_DESCR interface)
;	-----------------------------------------
;	 function readInterface
;	-----------------------------------------
_readInterface:
;	USBHost.c:765: DEBUG_OUT("Interface %d\n", interface->bInterfaceNumber);
	mov	dptr,#_readInterface_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_52
	push	acc
	mov	a,#(___str_52 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:766: DEBUG_OUT("  Class %d\n", interface->bInterfaceClass);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_53
	push	acc
	mov	a,#(___str_53 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:767: DEBUG_OUT("  Sub Class %d\n", interface->bInterfaceSubClass);
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_54
	push	acc
	mov	a,#(___str_54 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:768: DEBUG_OUT("  Interface Protocol %d\n", interface->bInterfaceProtocol);
	mov	a,#0x07
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_55
	push	acc
	mov	a,#(___str_55 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:769: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readHIDInterface'
;------------------------------------------------------------
;descriptor                Allocated with name '_readHIDInterface_PARM_2'
;interface                 Allocated with name '_readHIDInterface_interface_65536_154'
;------------------------------------------------------------
;	USBHost.c:771: void readHIDInterface(PXUSB_ITF_DESCR interface, PXUSB_HID_DESCR descriptor)
;	-----------------------------------------
;	 function readHIDInterface
;	-----------------------------------------
_readHIDInterface:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_readHIDInterface_interface_65536_154
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:775: DEBUG_OUT("HID at Interface %d\n", interface->bInterfaceNumber);
	mov	dptr,#_readHIDInterface_interface_65536_154
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_56
	push	acc
	mov	a,#(___str_56 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:776: DEBUG_OUT("  USB %d.%d%d\n", (descriptor->bcdHIDH & 15), (descriptor->bcdHIDL >> 4), (descriptor->bcdHIDL & 15));
	mov	dptr,#_readHIDInterface_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,a
	anl	ar3,#0x0f
	mov	r4,#0x00
	mov	a,r5
	swap	a
	anl	a,#0x0f
	mov	r5,a
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	anl	ar0,#0x0f
	mov	r1,#0x00
	push	ar7
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar0
	push	ar1
	mov	a,#___str_57
	push	acc
	mov	a,#(___str_57 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:777: DEBUG_OUT("  Country code 0x%02X\n", descriptor->bCountryCode);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_58
	push	acc
	mov	a,#(___str_58 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	USBHost.c:778: DEBUG_OUT("  TypeX 0x%02X\n", descriptor->bDescriptorTypeX);
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_59
	push	acc
	mov	a,#(___str_59 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:779: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readEndpoint'
;------------------------------------------------------------
;	USBHost.c:781: void readEndpoint()
;	-----------------------------------------
;	 function readEndpoint
;	-----------------------------------------
_readEndpoint:
;	USBHost.c:783: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initializeRootHubConnection'
;------------------------------------------------------------
;sloc0                     Allocated with name '_initializeRootHubConnection_sloc0_1_0'
;sloc1                     Allocated with name '_initializeRootHubConnection_sloc1_1_0'
;sloc2                     Allocated with name '_initializeRootHubConnection_sloc2_1_0'
;sloc3                     Allocated with name '_initializeRootHubConnection_sloc3_1_0'
;sloc4                     Allocated with name '_initializeRootHubConnection_sloc4_1_0'
;sloc5                     Allocated with name '_initializeRootHubConnection_sloc5_1_0'
;sloc6                     Allocated with name '_initializeRootHubConnection_sloc6_1_0'
;sloc7                     Allocated with name '_initializeRootHubConnection_sloc7_1_0'
;sloc8                     Allocated with name '_initializeRootHubConnection_sloc8_1_0'
;rootHubIndex              Allocated with name '_initializeRootHubConnection_rootHubIndex_65536_158'
;retry                     Allocated with name '_initializeRootHubConnection_retry_65536_159'
;i                         Allocated with name '_initializeRootHubConnection_i_65536_159'
;s                         Allocated with name '_initializeRootHubConnection_s_65536_159'
;cfg                       Allocated with name '_initializeRootHubConnection_cfg_65536_159'
;dv_cls                    Allocated with name '_initializeRootHubConnection_dv_cls_65536_159'
;addr                      Allocated with name '_initializeRootHubConnection_addr_65536_159'
;HIDDevice                 Allocated with name '_initializeRootHubConnection_HIDDevice_65536_159'
;i                         Allocated with name '_initializeRootHubConnection_i_458753_170'
;total                     Allocated with name '_initializeRootHubConnection_total_458753_170'
;temp                      Allocated with name '_initializeRootHubConnection_temp_458753_170'
;currentInterface          Allocated with name '_initializeRootHubConnection_currentInterface_458753_170'
;interfaces                Allocated with name '_initializeRootHubConnection_interfaces_458753_170'
;desc                      Allocated with name '_initializeRootHubConnection_desc_524289_174'
;d                         Allocated with name '_initializeRootHubConnection_d_655361_176'
;hiddevice                 Allocated with name '_initializeRootHubConnection_hiddevice_720897_177'
;------------------------------------------------------------
;	USBHost.c:785: unsigned char initializeRootHubConnection(unsigned char rootHubIndex)
;	-----------------------------------------
;	 function initializeRootHubConnection
;	-----------------------------------------
_initializeRootHubConnection:
	mov	a,dpl
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
	movx	@dptr,a
;	USBHost.c:787: unsigned char retry, i, s = ERR_SUCCESS, cfg, dv_cls, addr;
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	clr	a
	movx	@dptr,a
;	USBHost.c:790: for(retry = 0; retry < 10; retry++) //todo test fewer retries
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	b,#0x03
	mul	ab
	mov	_initializeRootHubConnection_sloc0_1_0,a
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),b
	mov	_initializeRootHubConnection_sloc3_1_0,r7
	mov	_initializeRootHubConnection_sloc2_1_0,#0x00
00147$:
;	USBHost.c:792: delay( 100 );
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay
;	USBHost.c:793: delay(100); //todo test lower delay
	mov	dptr,#0x0064
	lcall	_delay
;	USBHost.c:794: resetHubDevices(rootHubIndex);
	mov	dpl,_initializeRootHubConnection_sloc3_1_0
	lcall	_resetHubDevices
;	USBHost.c:795: resetRootHubPort(rootHubIndex);                      
	mov	dpl,_initializeRootHubConnection_sloc3_1_0
	lcall	_resetRootHubPort
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:796: for (i = 0; i < 100; i++) //todo test fewer retries
	mov	r0,#0x00
00137$:
;	USBHost.c:798: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	lcall	_delay
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:799: if (enableRootHubPort(rootHubIndex) == ERR_SUCCESS)  
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	lcall	_enableRootHubPort
	mov	a,dpl
	pop	ar0
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00103$
;	USBHost.c:796: for (i = 0; i < 100; i++) //todo test fewer retries
	inc	r0
	cjne	r0,#0x64,00255$
00255$:
	jc	00137$
00103$:
;	USBHost.c:802: if (i == 100)                                              
	cjne	r0,#0x64,00105$
;	USBHost.c:804: disableRootHubPort(rootHubIndex);
	push	ar5
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_disableRootHubPort
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:805: DEBUG_OUT("Failed to enable root hub port %i\n", rootHubIndex);
	mov	ar0,r7
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	ar5
	mov	a,#___str_60
	push	acc
	mov	a,#(___str_60 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:806: continue;
	pop	ar5
	ljmp	00135$
00105$:
;	USBHost.c:809: selectHubPort(rootHubIndex, 0);
	push	ar5
	mov	dptr,#_selectHubPort_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	_selectHubPort
	pop	ar5
	pop	ar6
;	USBHost.c:810: DEBUG_OUT("root hub port %i enabled\n", rootHubIndex);
	mov	ar0,r6
	mov	r5,#0x00
	push	ar6
	push	ar5
	push	ar0
	push	ar5
	mov	a,#___str_61
	push	acc
	mov	a,#(___str_61 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
;	USBHost.c:811: s = getDeviceDescriptor();
	lcall	_getDeviceDescriptor
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	mov	a,r5
	movx	@dptr,a
;	USBHost.c:813: if ( s == ERR_SUCCESS )
	mov	a,r5
	pop	ar5
	jz	00259$
	ljmp	00134$
00259$:
;	USBHost.c:815: dv_cls = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bDeviceClass;
	push	ar5
	mov	dptr,#(_receiveDataBuffer + 0x0004)
	movx	a,@dptr
	mov	r0,a
;	USBHost.c:816: DEBUG_OUT( "Device class %i\n", dv_cls);
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar0
	push	ar5
	mov	a,#___str_62
	push	acc
	mov	a,#(___str_62 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
;	USBHost.c:817: DEBUG_OUT( "Max packet size %i\n", ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0);
	mov	dptr,#(_receiveDataBuffer + 0x0007)
	movx	a,@dptr
	mov	r0,a
	mov	r5,#0x00
	push	ar5
	push	ar0
	push	ar5
	mov	a,#___str_63
	push	acc
	mov	a,#(___str_63 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
;	USBHost.c:818: VendorProductID[rootHubIndex].idVendorL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorL;
	mov	a,r6
	mov	b,#0x10
	mul	ab
	mov	r0,a
	mov	r5,b
	add	a,#_VendorProductID
	mov	_initializeRootHubConnection_sloc1_1_0,a
	mov	a,r5
	addc	a,#(_VendorProductID >> 8)
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x0008)
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	USBHost.c:819: VendorProductID[rootHubIndex].idVendorH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorH;
	mov	a,r0
	add	a,#_VendorProductID
	mov	r0,a
	mov	a,r5
	addc	a,#(_VendorProductID >> 8)
	mov	r5,a
	mov	a,#0x04
	add	a,r0
	mov	_initializeRootHubConnection_sloc1_1_0,a
	clr	a
	addc	a,r5
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x0009)
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	USBHost.c:820: VendorProductID[rootHubIndex].idProductL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductL;
	mov	a,#0x08
	add	a,r0
	mov	_initializeRootHubConnection_sloc1_1_0,a
	clr	a
	addc	a,r5
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x000a)
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	USBHost.c:821: VendorProductID[rootHubIndex].idProductH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductH;
	mov	a,#0x0c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dptr,#(_receiveDataBuffer + 0x000b)
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dpl,r0
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	USBHost.c:822: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
	mov	dptr,#_receiveDataBuffer
	push	ar6
	push	ar5
	lcall	_DEBUG_OUT_USB_BUFFER
	pop	ar5
	pop	ar6
;	USBHost.c:823: addr = rootHubIndex + ((PUSB_SETUP_REQ)SetUSBAddressRequest)->wValueL; //todo wValue always 2.. does another id work?
	mov	dptr,#(_SetUSBAddressRequest + 0x0002)
	clr	a
	movc	a,@a+dptr
	add	a,r6
	mov	_initializeRootHubConnection_sloc1_1_0,a
;	USBHost.c:824: s = setUsbAddress(addr);
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	push	ar6
	lcall	_setUsbAddress
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	mov	a,r5
	movx	@dptr,a
;	USBHost.c:825: if ( s == ERR_SUCCESS )
	mov	a,r5
	pop	ar5
	jz	00260$
	ljmp	00134$
00260$:
;	USBHost.c:827: rootHubDevice[rootHubIndex].address = addr;
	mov	a,r6
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r3,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	mov	a,_initializeRootHubConnection_sloc1_1_0
	movx	@dptr,a
;	USBHost.c:828: s = getDeviceString();
	push	ar7
	push	ar6
	push	ar5
	lcall	_getDeviceString
;	USBHost.c:830: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
	mov	dptr,#_receiveDataBuffer
	lcall	_DEBUG_OUT_USB_BUFFER
	pop	ar5
	pop	ar6
;	USBHost.c:831: if(convertStringDescriptor(receiveDataBuffer, receiveDataBuffer, RECEIVE_BUFFER_LEN,rootHubIndex))
	mov	dptr,#_convertStringDescriptor_PARM_2
	mov	a,#_receiveDataBuffer
	movx	@dptr,a
	mov	a,#(_receiveDataBuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_convertStringDescriptor_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_convertStringDescriptor_PARM_4
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	push	ar6
	push	ar5
	lcall	_convertStringDescriptor
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00107$
;	USBHost.c:833: DEBUG_OUT("Device String: %s\n", receiveDataBuffer);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#_receiveDataBuffer
	push	acc
	mov	a,#(_receiveDataBuffer >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#___str_64
	push	acc
	mov	a,#(___str_64 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	USBHost.c:835: s = getConfigurationDescriptor();
	push	ar7
	push	ar6
	push	ar5
	lcall	_getConfigurationDescriptor
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	mov	a,r4
	movx	@dptr,a
;	USBHost.c:836: if ( s == ERR_SUCCESS )
	mov	a,r4
	jz	00262$
	ljmp	00134$
00262$:
;	USBHost.c:838: sendProtocolMSG(MSG_TYPE_DEVICE_INFO, (receiveDataBuffer[2] + (receiveDataBuffer[3] << 8)), addr, rootHubIndex+1, 0xAA, receiveDataBuffer);
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r2,a
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
	movx	a,@dptr
	mov	r2,a
	inc	r2
	mov	dptr,#_sendProtocolMSG_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,_initializeRootHubConnection_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	mov	a,#0xaa
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	mov	a,#_receiveDataBuffer
	movx	@dptr,a
	mov	a,#(_receiveDataBuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_sendProtocolMSG
;	USBHost.c:841: PXUSB_ITF_DESCR currentInterface = 0;
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:844: for(i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++)
	mov	r3,#0x00
	mov	r4,#0x00
00140$:
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r2,a
	mov	_initializeRootHubConnection_sloc1_1_0,r2
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r2,a
	clr	a
	add	a,_initializeRootHubConnection_sloc1_1_0
	mov	_initializeRootHubConnection_sloc1_1_0,a
	mov	a,r2
	addc	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	mov	ar1,r3
	mov	ar2,r4
	push	ar3
	push	ar4
	mov	r0,_initializeRootHubConnection_sloc1_1_0
	mov	r4,(_initializeRootHubConnection_sloc1_1_0 + 1)
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r4
	pop	ar4
	pop	ar3
	jnc	00108$
;	USBHost.c:846: DEBUG_OUT("0x%02X ", (uint16_t)(receiveDataBuffer[i]));
	mov	a,r3
	add	a,#_receiveDataBuffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_receiveDataBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	push	ar4
	push	ar3
	push	ar1
	push	ar2
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar3
	pop	ar4
;	USBHost.c:844: for(i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++)
	inc	r3
	cjne	r3,#0x00,00140$
	inc	r4
	sjmp	00140$
00108$:
;	USBHost.c:848: DEBUG_OUT("\n");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	USBHost.c:850: cfg = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bConfigurationValue;
	mov	dptr,#(_receiveDataBuffer + 0x0005)
	movx	a,@dptr
;	USBHost.c:851: DEBUG_OUT("Configuration value: %d\n", cfg);
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_65
	push	acc
	mov	a,#(___str_65 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:853: interfaces = ((PXUSB_CFG_DESCR_LONG)receiveDataBuffer)->cfg_descr.bNumInterfaces;
	mov	dptr,#(_receiveDataBuffer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	USBHost.c:854: DEBUG_OUT("Interface count: %d\n", interfaces);
	push	ar3
	push	ar2
	mov	a,#___str_66
	push	acc
	mov	a,#(___str_66 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
;	USBHost.c:856: s = setUsbConfig( cfg ); 
	mov	dpl,r4
	lcall	_setUsbConfig
;	USBHost.c:858: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r2,a
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r3
	mov	r3,a
	mov	_initializeRootHubConnection_sloc6_1_0,r4
	mov	(_initializeRootHubConnection_sloc6_1_0 + 1),r3
;	USBHost.c:859: for(i = 0; i < total; i++)
	mov	r1,#0x00
	mov	r2,#0x00
00143$:
	clr	c
	mov	a,r1
	subb	a,_initializeRootHubConnection_sloc6_1_0
	mov	a,r2
	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
	jnc	00109$
;	USBHost.c:860: temp[i] = receiveDataBuffer[i];
	mov	a,r1
	add	a,#_initializeRootHubConnection_temp_458753_170
	mov	r0,a
	mov	a,r2
	addc	a,#(_initializeRootHubConnection_temp_458753_170 >> 8)
	mov	r4,a
	mov	a,r1
	add	a,#_receiveDataBuffer
	mov	dpl,a
	mov	a,r2
	addc	a,#(_receiveDataBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r0
	mov	dph,r4
	movx	@dptr,a
;	USBHost.c:859: for(i = 0; i < total; i++)
	inc	r1
	cjne	r1,#0x00,00143$
	inc	r2
	sjmp	00143$
00109$:
;	USBHost.c:861: i = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bLength;
	mov	dptr,#_receiveDataBuffer
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_initializeRootHubConnection_i_458753_170
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:862: while(i < total)
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_158
	movx	a,@dptr
	mov	_initializeRootHubConnection_sloc7_1_0,a
	mov	_initializeRootHubConnection_sloc4_1_0,_initializeRootHubConnection_sloc7_1_0
00126$:
	mov	dptr,#_initializeRootHubConnection_i_458753_170
	movx	a,@dptr
	mov	_initializeRootHubConnection_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	clr	c
	mov	a,_initializeRootHubConnection_sloc1_1_0
	subb	a,_initializeRootHubConnection_sloc6_1_0
	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
	jc	00267$
	ljmp	00128$
00267$:
;	USBHost.c:864: unsigned char __xdata *desc = &(temp[i]);
	mov	a,_initializeRootHubConnection_sloc1_1_0
	add	a,#_initializeRootHubConnection_temp_458753_170
	mov	_initializeRootHubConnection_sloc1_1_0,a
	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
	addc	a,#(_initializeRootHubConnection_temp_458753_170 >> 8)
	mov	(_initializeRootHubConnection_sloc1_1_0 + 1),a
	mov	dptr,#_initializeRootHubConnection_desc_524289_174
	mov	a,_initializeRootHubConnection_sloc1_1_0
	movx	@dptr,a
	mov	a,(_initializeRootHubConnection_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:865: switch(desc[1])
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	cjne	r0,#0x04,00268$
	sjmp	00110$
00268$:
	cjne	r0,#0x05,00269$
	sjmp	00111$
00269$:
	cjne	r0,#0x21,00270$
	ljmp	00119$
00270$:
	cjne	r0,#0x24,00271$
	ljmp	00122$
00271$:
	cjne	r0,#0x25,00272$
	ljmp	00123$
00272$:
	ljmp	00124$
;	USBHost.c:867: case USB_DESCR_TYP_INTERF:
00110$:
;	USBHost.c:868: DEBUG_OUT("Interface descriptor found\n", desc[1]);
	mov	ar1,r0
	mov	r2,#0x00
	push	ar1
	push	ar2
	mov	a,#___str_67
	push	acc
	mov	a,#(___str_67 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:870: currentInterface = ((PXUSB_ITF_DESCR)desc);
	mov	r1,_initializeRootHubConnection_sloc1_1_0
	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:871: readInterface(rootHubIndex, currentInterface);
	mov	dptr,#_readInterface_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,_initializeRootHubConnection_sloc4_1_0
	lcall	_readInterface
;	USBHost.c:872: break;
	ljmp	00125$
;	USBHost.c:873: case USB_DESCR_TYP_ENDP:
00111$:
;	USBHost.c:874: DEBUG_OUT("Endpoint descriptor found\n", desc[1]);
	mov	ar1,r0
	mov	r2,#0x00
	push	ar1
	push	ar2
	mov	a,#___str_68
	push	acc
	mov	a,#(___str_68 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:875: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:876: if(currentInterface->bInterfaceClass == USB_DEV_CLASS_HID)
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x03,00273$
	sjmp	00274$
00273$:
	ljmp	00125$
00274$:
;	USBHost.c:878: PXUSB_ENDP_DESCR d = (PXUSB_ENDP_DESCR)desc;
	mov	r1,_initializeRootHubConnection_sloc1_1_0
	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
;	USBHost.c:879: if(d->bEndpointAddress & 0x80){
	mov	a,#0x02
	add	a,r1
	mov	_initializeRootHubConnection_sloc5_1_0,a
	clr	a
	addc	a,r2
	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	r2,a
	jb	acc.7,00275$
	ljmp	00125$
00275$:
;	USBHost.c:881: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	mov	r1,#0x00
00145$:
;	USBHost.c:883: if(HIDdevice[hiddevice].connected == 0) break;
	mov	a,r1
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	r2,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	movx	a,@dptr
	jz	00114$
;	USBHost.c:881: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++)
	inc	r1
	cjne	r1,#0x08,00277$
00277$:
	jc	00145$
00114$:
;	USBHost.c:885: DEBUG_OUT("Connected device at position: %i\n", hiddevice);
	mov	ar3,r1
	mov	r4,#0x00
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_69
	push	acc
	mov	a,#(___str_69 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	USBHost.c:886: HIDdevice[hiddevice].endPoint = d->bEndpointAddress;
	mov	a,r1
	mov	b,#0x08
	mul	ab
	add	a,#_HIDdevice
	mov	_initializeRootHubConnection_sloc8_1_0,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	(_initializeRootHubConnection_sloc8_1_0 + 1),a
	mov	a,#0x03
	add	a,_initializeRootHubConnection_sloc8_1_0
	mov	r2,a
	clr	a
	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	r4,a
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r4
	movx	@dptr,a
;	USBHost.c:887: HIDdevice[hiddevice].connected = 1;                                        
	mov	dpl,_initializeRootHubConnection_sloc8_1_0
	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:888: HIDdevice[hiddevice].interface = currentInterface->bInterfaceNumber;
	inc	a
	add	a,_initializeRootHubConnection_sloc8_1_0
	mov	_initializeRootHubConnection_sloc5_1_0,a
	clr	a
	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	@dptr,a
;	USBHost.c:889: HIDdevice[hiddevice].rootHub = rootHubIndex;
	mov	dpl,_initializeRootHubConnection_sloc8_1_0
	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
	inc	dptr
	mov	a,_initializeRootHubConnection_sloc7_1_0
	movx	@dptr,a
;	USBHost.c:890: DEBUG_OUT("Got endpoint for the HIDdevice 0x%02x\n", HIDdevice[hiddevice].endPoint);
	mov	r4,#0x00
	push	ar1
	push	ar3
	push	ar4
	mov	a,#___str_70
	push	acc
	mov	a,#(___str_70 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
;	USBHost.c:891: getHIDDeviceReport(hiddevice);
	mov	dpl,r1
	lcall	_getHIDDeviceReport
;	USBHost.c:894: break;
	ljmp	00125$
;	USBHost.c:895: case USB_DESCR_TYP_HID:
00119$:
;	USBHost.c:896: DEBUG_OUT("HID descriptor found\n", desc[1]);
	mov	ar3,r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_71
	push	acc
	mov	a,#(___str_71 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:898: if(currentInterface == 0) break;
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_initializeRootHubConnection_currentInterface_458753_170
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00279$
	ljmp	00125$
00279$:
;	USBHost.c:899: readHIDInterface(currentInterface, (PXUSB_HID_DESCR)desc);
	mov	r1,_initializeRootHubConnection_sloc1_1_0
	mov	r2,(_initializeRootHubConnection_sloc1_1_0 + 1)
	mov	dptr,#_readHIDInterface_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	lcall	_readHIDInterface
;	USBHost.c:900: break;
;	USBHost.c:901: case USB_DESCR_TYP_CS_INTF:
	sjmp	00125$
00122$:
;	USBHost.c:902: DEBUG_OUT("Class specific header descriptor found\n", desc[1]);
	mov	ar3,r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_72
	push	acc
	mov	a,#(___str_72 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:903: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:906: break;
;	USBHost.c:907: case USB_DESCR_TYP_CS_ENDP:
	sjmp	00125$
00123$:
;	USBHost.c:908: DEBUG_OUT("Class specific endpoint descriptor found\n", desc[1]);
	mov	ar3,r0
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#___str_73
	push	acc
	mov	a,#(___str_73 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:909: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:912: break;
;	USBHost.c:913: default:
	sjmp	00125$
00124$:
;	USBHost.c:914: DEBUG_OUT("Unexpected descriptor type: %02X\n", desc[1]);
	mov	r4,#0x00
	push	ar0
	push	ar4
	mov	a,#___str_74
	push	acc
	mov	a,#(___str_74 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:915: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc1_1_0
	mov	dph,(_initializeRootHubConnection_sloc1_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:916: }
00125$:
;	USBHost.c:917: i += desc[0];
	mov	dptr,#_initializeRootHubConnection_desc_524289_174
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_initializeRootHubConnection_i_458753_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	r1,a
	mov	a,r4
	addc	a,r2
	mov	r2,a
	mov	dptr,#_initializeRootHubConnection_i_458753_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00126$
00128$:
;	USBHost.c:919: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00134$:
;	USBHost.c:924: DEBUG_OUT( "Error = %02X\n", s);
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	a,#___str_75
	push	acc
	mov	a,#(___str_75 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
;	USBHost.c:925: sendProtocolMSG(MSG_TYPE_ERROR,0, rootHubIndex+1, s, 0xEE, 0);
	mov	ar3,r5
	inc	r3
	mov	dptr,#_sendProtocolMSG_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	mov	a,#0xee
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x03
	push	ar5
	lcall	_sendProtocolMSG
;	USBHost.c:926: rootHubDevice[rootHubIndex].status = ROOT_DEVICE_FAILED;
	mov	a,_initializeRootHubConnection_sloc0_1_0
	add	a,#_rootHubDevice
	mov	dpl,a
	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
	addc	a,#(_rootHubDevice >> 8)
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	USBHost.c:927: setUsbSpeed(1);    //TODO define speeds
	mov	dpl,#0x01
	lcall	_setUsbSpeed
	pop	ar5
	pop	ar6
	pop	ar7
00135$:
;	USBHost.c:790: for(retry = 0; retry < 10; retry++) //todo test fewer retries
	inc	_initializeRootHubConnection_sloc2_1_0
	mov	a,#0x100 - 0x0a
	add	a,_initializeRootHubConnection_sloc2_1_0
	jc	00280$
	ljmp	00147$
00280$:
;	USBHost.c:929: return s;
	mov	dptr,#_initializeRootHubConnection_s_65536_159
	movx	a,@dptr
;	USBHost.c:930: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkRootHubConnections'
;------------------------------------------------------------
;s                         Allocated with name '_checkRootHubConnections_s_65536_180'
;------------------------------------------------------------
;	USBHost.c:932: unsigned char checkRootHubConnections()
;	-----------------------------------------
;	 function checkRootHubConnections
;	-----------------------------------------
_checkRootHubConnections:
;	USBHost.c:935: s = ERR_SUCCESS;
	mov	dptr,#_checkRootHubConnections_s_65536_180
	clr	a
	movx	@dptr,a
;	USBHost.c:936: if (UIF_DETECT)                                                        
;	USBHost.c:938: UIF_DETECT = 0;    
;	assignBit
	jbc	_UIF_DETECT,00149$
	ljmp	00118$
00149$:
;	USBHost.c:939: if(USB_HUB_ST & bUHS_H0_ATTACH)
	mov	a,_USB_HUB_ST
	jnb	acc.3,00107$
;	USBHost.c:941: if(rootHubDevice[0].status == ROOT_DEVICE_DISCONNECT || (UHUB0_CTRL & bUH_PORT_EN) == 0x00)
	mov	dptr,#_rootHubDevice
	movx	a,@dptr
	jz	00101$
	mov	a,_UDEV_CTRL
	jnb	acc.0,00152$
	ljmp	00108$
00152$:
00101$:
;	USBHost.c:943: disableRootHubPort(0);    //todo really need to reset register?
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:944: rootHubDevice[0].status = ROOT_DEVICE_CONNECTED;
	mov	dptr,#_rootHubDevice
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:945: DEBUG_OUT("Device at root hub %i connected\n", 0);
	clr	a
	push	acc
	push	acc
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:946: sendProtocolMSG(MSG_TYPE_CONNECTED,0, 0x01, 0x01, 0x01, 0);
	mov	dptr,#_sendProtocolMSG_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendProtocolMSG
;	USBHost.c:947: s = initializeRootHubConnection(0);
	mov	dpl,#0x00
	lcall	_initializeRootHubConnection
	mov	a,dpl
	mov	dptr,#_checkRootHubConnections_s_65536_180
	movx	@dptr,a
	sjmp	00108$
00107$:
;	USBHost.c:951: if(rootHubDevice[0].status >= ROOT_DEVICE_CONNECTED)
	mov	dptr,#_rootHubDevice
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00153$
00153$:
	jc	00108$
;	USBHost.c:953: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	USBHost.c:954: disableRootHubPort(0);
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:955: DEBUG_OUT("Device at root hub %i disconnected\n", 0);
	clr	a
	push	acc
	push	acc
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:956: sendProtocolMSG(MSG_TYPE_DISCONNECTED,0, 0x01, 0x01, 0x01, 0);
	mov	dptr,#_sendProtocolMSG_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_sendProtocolMSG
;	USBHost.c:957: s = ERR_USB_DISCON;
	mov	dptr,#_checkRootHubConnections_s_65536_180
	mov	a,#0x16
	movx	@dptr,a
00108$:
;	USBHost.c:959: if(USB_HUB_ST & bUHS_H1_ATTACH)
	mov	a,_USB_HUB_ST
	jnb	acc.7,00115$
;	USBHost.c:962: if(rootHubDevice[1].status == ROOT_DEVICE_DISCONNECT || (UHUB1_CTRL & bUH_PORT_EN) == 0x00)
	mov	dptr,#(_rootHubDevice + 0x0003)
	movx	a,@dptr
	jz	00109$
	mov	a,_UHUB1_CTRL
	jnb	acc.0,00157$
	ljmp	00118$
00157$:
00109$:
;	USBHost.c:964: disableRootHubPort(1);    //todo really need to reset register?
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:965: rootHubDevice[1].status = ROOT_DEVICE_CONNECTED;
	mov	dptr,#(_rootHubDevice + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:966: DEBUG_OUT("Device at root hub %i connected\n", 1);
	push	acc
	clr	a
	push	acc
	mov	a,#___str_76
	push	acc
	mov	a,#(___str_76 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:967: sendProtocolMSG(MSG_TYPE_CONNECTED,0, 0x02, 0x02, 0x02, 0);
	mov	dptr,#_sendProtocolMSG_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_sendProtocolMSG
;	USBHost.c:968: s = initializeRootHubConnection(1);
	mov	dpl,#0x01
	lcall	_initializeRootHubConnection
	mov	a,dpl
	mov	dptr,#_checkRootHubConnections_s_65536_180
	movx	@dptr,a
	sjmp	00118$
00115$:
;	USBHost.c:972: if(rootHubDevice[1].status >= ROOT_DEVICE_CONNECTED)
	mov	dptr,#(_rootHubDevice + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00158$
00158$:
	jc	00118$
;	USBHost.c:974: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	USBHost.c:975: disableRootHubPort(1);
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:976: DEBUG_OUT("Device at root hub %i disconnected\n", 1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	a,#___str_77
	push	acc
	mov	a,#(___str_77 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	USBHost.c:977: sendProtocolMSG(MSG_TYPE_DISCONNECTED,0, 0x02, 0x02, 0x02, 0);
	mov	dptr,#_sendProtocolMSG_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_4
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_5
	movx	@dptr,a
	mov	dptr,#_sendProtocolMSG_PARM_6
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_sendProtocolMSG
;	USBHost.c:978: s = ERR_USB_DISCON;
	mov	dptr,#_checkRootHubConnections_s_65536_180
	mov	a,#0x16
	movx	@dptr,a
00118$:
;	USBHost.c:981: return s;
	mov	dptr,#_checkRootHubConnections_s_65536_180
	movx	a,@dptr
;	USBHost.c:982: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_GetDeviceDescriptorRequest:
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
_GetConfigurationDescriptorRequest:
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x00	; 0
_GetInterfaceDescriptorRequest:
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
_SetUSBAddressRequest:
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_GetDeviceStringRequest:
	.db #0x80	; 128
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x04	; 4
_SetupSetUsbConfig:
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_SetHIDIdleRequest:
	.db #0x21	; 33
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_GetHIDReport:
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.area CONST   (CODE)
___str_0:
	.ascii "hostCtrlTransfer"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Remaining bytes to read %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Received %i bytes"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Remaining bytes to write %i"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "SET_PORT  %02X  %02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Sending %i bytes"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "fillTxBuffer %i bytes"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "fillTxBuffer done"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "getDeviceDescriptor"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Device descriptor request sent successfully"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Received packet is smaller than expected"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "SetAddress: %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "0x%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "    "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Usage page "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "LEDs"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Keyboard/Keypad"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Button"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "generic desktop controls"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "vendor defined 0x%04lx"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "unknown 0x%02lx"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Usage "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Unknown"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Pointer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Mouse"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Reserved"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Joystick"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "Gamepad"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Keyboard"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Keypad"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Multi-Axis controller"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Tablet system controls"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "X"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Y"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "Z"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "Wheel"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "Logical min %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "Logical max %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "Physical min %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "Physical max %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "Collection start %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "Collection end %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "Unit 0x%02lx"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "Input 0x%02lx"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "Output 0x%02lx"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "Feature 0x%02lx"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii "Report size %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "Report ID %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "Report count %lu"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "Unknown HID report identifier: 0x%02x (%i bytes) data: 0x%02"
	.ascii "lx"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_51:
	.ascii "Requesting report from interface %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_52:
	.ascii "Interface %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_53:
	.ascii "  Class %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_54:
	.ascii "  Sub Class %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_55:
	.ascii "  Interface Protocol %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_56:
	.ascii "HID at Interface %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_57:
	.ascii "  USB %d.%d%d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_58:
	.ascii "  Country code 0x%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_59:
	.ascii "  TypeX 0x%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_60:
	.ascii "Failed to enable root hub port %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_61:
	.ascii "root hub port %i enabled"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_62:
	.ascii "Device class %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_63:
	.ascii "Max packet size %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_64:
	.ascii "Device String: %s"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_65:
	.ascii "Configuration value: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_66:
	.ascii "Interface count: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_67:
	.ascii "Interface descriptor found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_68:
	.ascii "Endpoint descriptor found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_69:
	.ascii "Connected device at position: %i"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_70:
	.ascii "Got endpoint for the HIDdevice 0x%02x"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_71:
	.ascii "HID descriptor found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_72:
	.ascii "Class specific header descriptor found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_73:
	.ascii "Class specific endpoint descriptor found"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_74:
	.ascii "Unexpected descriptor type: %02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_75:
	.ascii "Error = %02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_76:
	.ascii "Device at root hub %i connected"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_77:
	.ascii "Device at root hub %i disconnected"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
