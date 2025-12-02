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
	.globl _flash_led
	.globl _memset
	.globl _delay
	.globl _delayUs
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
	.globl _pollHIDdevice_PARM_4
	.globl _pollHIDdevice_PARM_3
	.globl _pollHIDdevice_PARM_2
	.globl _rootHubDevice
	.globl _VendorProductID
	.globl _HIDdevice
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
_pollHIDdevice_sloc0_1_0:
	.ds 3
_parseHIDDeviceReport_sloc0_1_0:
	.ds 2
_parseHIDDeviceReport_sloc1_1_0:
	.ds 2
_parseHIDDeviceReport_sloc2_1_0:
	.ds 2
_parseHIDDeviceReport_sloc3_1_0:
	.ds 1
_parseHIDDeviceReport_sloc4_1_0:
	.ds 2
_parseHIDDeviceReport_sloc5_1_0:
	.ds 2
_parseHIDDeviceReport_sloc6_1_0:
	.ds 2
_parseHIDDeviceReport_sloc7_1_0:
	.ds 1
_parseHIDDeviceReport_sloc8_1_0:
	.ds 4
_parseHIDDeviceReport_sloc9_1_0:
	.ds 3
_parseHIDDeviceReport_sloc10_1_0:
	.ds 2
_initializeRootHubConnection_sloc0_1_0:
	.ds 2
_initializeRootHubConnection_sloc1_1_0:
	.ds 1
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
	.area	OSEG    (OVR,DATA)
_extract_field_sloc0_1_0:
	.ds 3
_extract_field_sloc1_1_0:
	.ds 4
_extract_field_sloc2_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_convertStringDescriptor_sloc0_1_0:
	.ds 2
_convertStringDescriptor_sloc1_1_0:
	.ds 2
_convertStringDescriptor_sloc2_1_0:
	.ds 2
_convertStringDescriptor_sloc3_1_0:
	.ds 2
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
_hostCtrlTransfer_sloc1_1_0:
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
_HIDdevice::
	.ds 176
_VendorProductID::
	.ds 32
_rootHubDevice::
	.ds 6
_extract_field_PARM_2:
	.ds 2
_extract_field_PARM_3:
	.ds 1
_extract_field_PARM_4:
	.ds 1
_extract_field_report_65536_44:
	.ds 3
_extract_field_value_65536_45:
	.ds 4
_extract_field_bit_pos_65536_45:
	.ds 1
_extract_field_bits_left_65536_45:
	.ds 1
_disableRootHubPort_index_65536_49:
	.ds 1
_setHostUsbAddr_addr_65536_52:
	.ds 1
_setUsbSpeed_fullSpeed_65536_54:
	.ds 1
_resetRootHubPort_rootHubIndex_65536_58:
	.ds 1
_enableRootHubPort_rootHubIndex_65536_62:
	.ds 1
_selectHubPort_PARM_2:
	.ds 1
_selectHubPort_rootHubIndex_65536_75:
	.ds 1
_hostTransfer_PARM_2:
	.ds 1
_hostTransfer_PARM_3:
	.ds 2
_hostTransfer_endp_pid_65536_77:
	.ds 1
_hostTransfer_retries_65536_78:
	.ds 2
_hostCtrlTransfer_PARM_2:
	.ds 3
_hostCtrlTransfer_PARM_3:
	.ds 2
_hostCtrlTransfer_DataBuf_65536_101:
	.ds 2
_hostCtrlTransfer_SetPort_65536_102:
	.ds 1
_hostCtrlTransfer_RemLen_65536_102:
	.ds 2
_hostCtrlTransfer_pBuf_65536_102:
	.ds 2
_fillTxBuffer_PARM_2:
	.ds 1
_fillTxBuffer_data_65536_122:
	.ds 2
_getDeviceDescriptor_len_65536_126:
	.ds 2
_setUsbAddress_addr_65536_129:
	.ds 1
_setUsbConfig_cfg_65536_132:
	.ds 1
_convertStringDescriptor_PARM_2:
	.ds 2
_convertStringDescriptor_PARM_3:
	.ds 2
_convertStringDescriptor_PARM_4:
	.ds 1
_convertStringDescriptor_usbBuffer_65536_135:
	.ds 2
_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142:
	.ds 2
_getConfigurationDescriptor_len_65536_146:
	.ds 2
_resetHubDevices_hubindex_65536_150:
	.ds 1
_pollHIDdevice_PARM_2:
	.ds 3
_pollHIDdevice_PARM_3:
	.ds 3
_pollHIDdevice_PARM_4:
	.ds 3
_pollHIDdevice_buttons_65536_155:
	.ds 3
_pollHIDdevice_len_65536_156:
	.ds 1
_pollHIDdevice_report_65536_156:
	.ds 2
_parseHIDDeviceReport_PARM_2:
	.ds 2
_parseHIDDeviceReport_PARM_3:
	.ds 1
_parseHIDDeviceReport_report_65536_169:
	.ds 2
_parseHIDDeviceReport_i_65536_170:
	.ds 2
_parseHIDDeviceReport_level_65536_170:
	.ds 1
_parseHIDDeviceReport_isUsageSet_65536_170:
	.ds 1
_parseHIDDeviceReport_tag_65536_170:
	.ds 1
_parseHIDDeviceReport_tag_size_65536_170:
	.ds 1
_parseHIDDeviceReport_data_65536_170:
	.ds 4
_parseHIDDeviceReport_usage_page_65536_170:
	.ds 4
_parseHIDDeviceReport_usageX_65536_170:
	.ds 4
_parseHIDDeviceReport_usageY_65536_170:
	.ds 4
_parseHIDDeviceReport_usageW_65536_170:
	.ds 4
_parseHIDDeviceReport_report_size_65536_170:
	.ds 1
_parseHIDDeviceReport_report_count_65536_170:
	.ds 1
_parseHIDDeviceReport_current_bit_offset_65536_170:
	.ds 2
_parseHIDDeviceReport_used_reports_65536_170:
	.ds 1
_getHIDDeviceReport_CurrentDevice_65536_195:
	.ds 1
_getHIDDeviceReport_len_65536_196:
	.ds 2
_readInterface_PARM_2:
	.ds 2
_readHIDInterface_PARM_2:
	.ds 2
_initializeRootHubConnection_rootHubIndex_65536_204:
	.ds 1
_initializeRootHubConnection_res_65536_205:
	.ds 1
_initializeRootHubConnection_i_458752_216:
	.ds 2
_initializeRootHubConnection_temp_458752_216:
	.ds 512
_initializeRootHubConnection_currentInterface_458752_216:
	.ds 2
_initializeRootHubConnection_desc_524288_221:
	.ds 2
_checkRootHubConnections_res_65536_228:
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
;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
;maxLength                 Allocated with name '_hostCtrlTransfer_PARM_3'
;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_101'
;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_102'
;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_102'
;res                       Allocated with name '_hostCtrlTransfer_res_65536_102'
;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_102'
;i                         Allocated with name '_hostCtrlTransfer_i_65536_102'
;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_102'
;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_102'
;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_103'
;------------------------------------------------------------
;	USBHost.c:340: static uint8_t SetPort = 0;
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
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
;Allocation info for local variables in function 'extract_field'
;------------------------------------------------------------
;bit_offset                Allocated with name '_extract_field_PARM_2'
;bit_size                  Allocated with name '_extract_field_PARM_3'
;is_signed                 Allocated with name '_extract_field_PARM_4'
;report                    Allocated with name '_extract_field_report_65536_44'
;value                     Allocated with name '_extract_field_value_65536_45'
;sign                      Allocated with name '_extract_field_sign_65536_45'
;byte_pos                  Allocated with name '_extract_field_byte_pos_65536_45'
;bit_pos                   Allocated with name '_extract_field_bit_pos_65536_45'
;bits_left                 Allocated with name '_extract_field_bits_left_65536_45'
;bits_in_byte              Allocated with name '_extract_field_bits_in_byte_65536_45'
;bits_to_read              Allocated with name '_extract_field_bits_to_read_65536_45'
;mask                      Allocated with name '_extract_field_mask_65536_45'
;sloc0                     Allocated with name '_extract_field_sloc0_1_0'
;sloc1                     Allocated with name '_extract_field_sloc1_1_0'
;sloc2                     Allocated with name '_extract_field_sloc2_1_0'
;------------------------------------------------------------
;	USBHost.c:113: static int32_t extract_field(uint8_t *report, uint16_t bit_offset, uint8_t bit_size, uint8_t is_signed)
;	-----------------------------------------
;	 function extract_field
;	-----------------------------------------
_extract_field:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_extract_field_report_65536_44
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:115: __xdata uint32_t value = 0;
	mov	dptr,#_extract_field_value_65536_45
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:117: __xdata uint16_t byte_pos = bit_offset >> 3;
	mov	dptr,#_extract_field_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	USBHost.c:118: __xdata uint8_t bit_pos = bit_offset % 8;
	anl	ar6,#0x07
	mov	dptr,#_extract_field_bit_pos_65536_45
	mov	a,r6
	movx	@dptr,a
;	USBHost.c:119: __xdata uint8_t bits_left = bit_size;
	mov	dptr,#_extract_field_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_extract_field_bits_left_65536_45
	movx	@dptr,a
;	USBHost.c:124: while (bits_left > 0) {
	mov	dptr,#_extract_field_report_65536_44
	movx	a,@dptr
	mov	_extract_field_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_extract_field_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_extract_field_sloc0_1_0 + 2),a
00101$:
	mov	dptr,#_extract_field_bits_left_65536_45
	movx	a,@dptr
	mov	r1,a
	jnz	00143$
	ljmp	00103$
00143$:
;	USBHost.c:125: bits_in_byte = 8 - bit_pos;
	mov	dptr,#_extract_field_bit_pos_65536_45
	movx	a,@dptr
	mov	r0,a
	mov	a,#0x08
	clr	c
	subb	a,r0
;	USBHost.c:126: bits_to_read = (bits_left < bits_in_byte) ? bits_left : bits_in_byte;
	mov	r0,a
	mov	r6,a
	clr	c
	mov	a,r1
	subb	a,r6
	jc	00113$
	mov	ar1,r0
00113$:
;	USBHost.c:127: mask = (1UL << bits_to_read) - 1;
	mov	b,r1
	inc	b
	mov	r0,#0x01
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r6,#0x00
	sjmp	00146$
00145$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r6
	rlc	a
	mov	r6,a
00146$:
	djnz	b,00145$
	mov	a,r0
	add	a,#0xff
	mov	_extract_field_sloc1_1_0,a
	mov	a,r2
	addc	a,#0xff
	mov	(_extract_field_sloc1_1_0 + 1),a
	mov	a,r3
	addc	a,#0xff
	mov	(_extract_field_sloc1_1_0 + 2),a
	mov	a,r6
	addc	a,#0xff
	mov	(_extract_field_sloc1_1_0 + 3),a
;	USBHost.c:128: value |= (((uint32_t )report[byte_pos] >> bit_pos) & mask) << (bit_size - bits_left);
	mov	a,r4
	add	a,_extract_field_sloc0_1_0
	mov	r2,a
	mov	a,r5
	addc	a,(_extract_field_sloc0_1_0 + 1)
	mov	r3,a
	mov	r6,(_extract_field_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	_extract_field_sloc2_1_0,r2
	mov	(_extract_field_sloc2_1_0 + 1),#0x00
	mov	(_extract_field_sloc2_1_0 + 2),#0x00
	mov	(_extract_field_sloc2_1_0 + 3),#0x00
	mov	dptr,#_extract_field_bit_pos_65536_45
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r0,_extract_field_sloc2_1_0
	mov	r2,(_extract_field_sloc2_1_0 + 1)
	mov	r3,(_extract_field_sloc2_1_0 + 2)
	mov	r6,(_extract_field_sloc2_1_0 + 3)
	sjmp	00148$
00147$:
	clr	c
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r0
	rrc	a
	mov	r0,a
00148$:
	djnz	b,00147$
	mov	a,_extract_field_sloc1_1_0
	anl	a,r0
	mov	_extract_field_sloc2_1_0,a
	mov	a,(_extract_field_sloc1_1_0 + 1)
	anl	a,r2
	mov	(_extract_field_sloc2_1_0 + 1),a
	mov	a,(_extract_field_sloc1_1_0 + 2)
	anl	a,r3
	mov	(_extract_field_sloc2_1_0 + 2),a
	mov	a,(_extract_field_sloc1_1_0 + 3)
	anl	a,r6
	mov	(_extract_field_sloc2_1_0 + 3),a
	mov	dptr,#_extract_field_bits_left_65536_45
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	clr	c
	subb	a,r6
	mov	r3,a
	push	ar7
	mov	b,r3
	inc	b
	mov	r0,_extract_field_sloc2_1_0
	mov	r2,(_extract_field_sloc2_1_0 + 1)
	mov	r3,(_extract_field_sloc2_1_0 + 2)
	mov	r7,(_extract_field_sloc2_1_0 + 3)
	sjmp	00150$
00149$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r7
	rlc	a
	mov	r7,a
00150$:
	djnz	b,00149$
	mov	dptr,#_extract_field_value_65536_45
	movx	a,@dptr
	orl	a,r0
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	USBHost.c:129: bits_left -= bits_to_read;
	mov	dptr,#_extract_field_bits_left_65536_45
	mov	a,r6
	clr	c
	subb	a,r1
	movx	@dptr,a
;	USBHost.c:130: bit_pos = 0;
	mov	dptr,#_extract_field_bit_pos_65536_45
	clr	a
	movx	@dptr,a
;	USBHost.c:131: byte_pos++;
	inc	r4
	cjne	r4,#0x00,00151$
	inc	r5
00151$:
	pop	ar7
	ljmp	00101$
00103$:
;	USBHost.c:134: if (is_signed && bit_size > 0 && bit_size < 32) {
	mov	dptr,#_extract_field_PARM_4
	movx	a,@dptr
	jnz	00152$
	ljmp	00107$
00152$:
	mov	a,r7
	jnz	00153$
	ljmp	00107$
00153$:
	cjne	r7,#0x20,00154$
00154$:
	jc	00155$
	ljmp	00107$
00155$:
;	USBHost.c:135: sign = 1UL << (bit_size - 1);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r6,#0x01
	mov	r5,#0x00
	mov	r4,#0x00
	mov	r3,#0x00
	sjmp	00157$
00156$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	r3,a
00157$:
	djnz	b,00156$
;	USBHost.c:136: if (value & sign) {
	mov	dptr,#_extract_field_value_65536_45
	movx	a,@dptr
	mov	_extract_field_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_extract_field_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_extract_field_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_extract_field_sloc2_1_0 + 3),a
	mov	a,_extract_field_sloc2_1_0
	anl	ar6,a
	mov	a,(_extract_field_sloc2_1_0 + 1)
	anl	ar5,a
	mov	a,(_extract_field_sloc2_1_0 + 2)
	anl	ar4,a
	mov	a,(_extract_field_sloc2_1_0 + 3)
	anl	ar3,a
	mov	a,r6
	orl	a,r5
	orl	a,r4
	orl	a,r3
	jz	00107$
;	USBHost.c:137: value |= ~((1UL << bit_size) - 1);
	mov	b,r7
	inc	b
	mov	r7,#0x01
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	sjmp	00160$
00159$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	rlc	a
	mov	r4,a
00160$:
	djnz	b,00159$
	dec	r7
	cjne	r7,#0xff,00161$
	dec	r6
	cjne	r6,#0xff,00161$
	dec	r5
	cjne	r5,#0xff,00161$
	dec	r4
00161$:
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	dptr,#_extract_field_value_65536_45
	mov	a,r7
	orl	a,_extract_field_sloc2_1_0
	movx	@dptr,a
	mov	a,r6
	orl	a,(_extract_field_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	orl	a,(_extract_field_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,(_extract_field_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00107$:
;	USBHost.c:141: return (int32_t)value;
	mov	dptr,#_extract_field_value_65536_45
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	USBHost.c:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disableRootHubPort'
;------------------------------------------------------------
;index                     Allocated with name '_disableRootHubPort_index_65536_49'
;------------------------------------------------------------
;	USBHost.c:144: static void disableRootHubPort(uint8_t index)
;	-----------------------------------------
;	 function disableRootHubPort
;	-----------------------------------------
_disableRootHubPort:
	mov	a,dpl
	mov	dptr,#_disableRootHubPort_index_65536_49
	movx	@dptr,a
;	USBHost.c:146: rootHubDevice[index].status = ROOT_DEVICE_DISCONNECT;
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
;	USBHost.c:147: rootHubDevice[index].address = 0;
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
;	USBHost.c:148: if (index)
	mov	a,r7
	jz	00102$
;	USBHost.c:149: UHUB1_CTRL = 0;
	mov	_UHUB1_CTRL,#0x00
	ret
00102$:
;	USBHost.c:151: UHUB0_CTRL = 0;
	mov	_UDEV_CTRL,#0x00
;	USBHost.c:152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initUSB_Host'
;------------------------------------------------------------
;	USBHost.c:154: void initUSB_Host()
;	-----------------------------------------
;	 function initUSB_Host
;	-----------------------------------------
_initUSB_Host:
;	USBHost.c:156: IE_USB = 0;
;	assignBit
	clr	_IE_USB
;	USBHost.c:157: USB_CTRL = bUC_HOST_MODE;
	mov	_USB_CTRL,#0x80
;	USBHost.c:158: USB_DEV_AD = 0x00;
	mov	_USB_DEV_AD,#0x00
;	USBHost.c:159: UH_EP_MOD = bUH_EP_TX_EN | bUH_EP_RX_EN;
	mov	dptr,#_UEP2_3_MOD
	mov	a,#0x48
	movx	@dptr,a
;	USBHost.c:160: UH_RX_DMA = 0x0000;
	mov	dptr,#_UEP2_DMA
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:161: UH_TX_DMA = 0x0001;
	mov	dptr,#_UEP3_DMA
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:162: UH_RX_CTRL = 0x00;
;	1-genFromRTrack replaced	mov	_UEP2_CTRL,#0x00
	mov	_UEP2_CTRL,a
;	USBHost.c:163: UH_TX_CTRL = 0x00;
;	1-genFromRTrack replaced	mov	_UEP3_CTRL,#0x00
	mov	_UEP3_CTRL,a
;	USBHost.c:164: USB_CTRL = bUC_HOST_MODE | bUC_INT_BUSY | bUC_DMA_EN;
	mov	_USB_CTRL,#0x89
;	USBHost.c:165: UH_SETUP = bUH_SOF_EN;
	mov	_UEP1_CTRL,#0x40
;	USBHost.c:166: USB_INT_FG = 0xFF;
	mov	_USB_INT_FG,#0xff
;	USBHost.c:168: disableRootHubPort(0);
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:169: disableRootHubPort(1);
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:170: USB_INT_EN = bUIE_TRANSFER | bUIE_DETECT;
	mov	_USB_INT_EN,#0x03
;	USBHost.c:171: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setHostUsbAddr'
;------------------------------------------------------------
;addr                      Allocated with name '_setHostUsbAddr_addr_65536_52'
;------------------------------------------------------------
;	USBHost.c:173: static void setHostUsbAddr(uint8_t addr)
;	-----------------------------------------
;	 function setHostUsbAddr
;	-----------------------------------------
_setHostUsbAddr:
	mov	a,dpl
	mov	dptr,#_setHostUsbAddr_addr_65536_52
	movx	@dptr,a
;	USBHost.c:175: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | addr & 0x7F;
	mov	a,_USB_DEV_AD
	anl	a,#0x80
	mov	r7,a
	movx	a,@dptr
	anl	a,#0x7f
	orl	a,r7
	mov	_USB_DEV_AD,a
;	USBHost.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbSpeed'
;------------------------------------------------------------
;fullSpeed                 Allocated with name '_setUsbSpeed_fullSpeed_65536_54'
;------------------------------------------------------------
;	USBHost.c:178: static void setUsbSpeed(uint8_t fullSpeed)
;	-----------------------------------------
;	 function setUsbSpeed
;	-----------------------------------------
_setUsbSpeed:
	mov	a,dpl
	mov	dptr,#_setUsbSpeed_fullSpeed_65536_54
	movx	@dptr,a
;	USBHost.c:180: if (fullSpeed) {
	movx	a,@dptr
	jz	00102$
;	USBHost.c:181: USB_CTRL &= ~bUC_LOW_SPEED;
	anl	_USB_CTRL,#0xbf
;	USBHost.c:182: UH_SETUP &= ~bUH_PRE_PID_EN;
	anl	_UEP1_CTRL,#0x7f
	ret
00102$:
;	USBHost.c:184: USB_CTRL |= bUC_LOW_SPEED;
	orl	_USB_CTRL,#0x40
;	USBHost.c:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetRootHubPort'
;------------------------------------------------------------
;rootHubIndex              Allocated with name '_resetRootHubPort_rootHubIndex_65536_58'
;------------------------------------------------------------
;	USBHost.c:188: static void resetRootHubPort(uint8_t rootHubIndex)
;	-----------------------------------------
;	 function resetRootHubPort
;	-----------------------------------------
_resetRootHubPort:
	mov	a,dpl
	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_58
	movx	@dptr,a
;	USBHost.c:190: endpoint0Size = DEFAULT_ENDP0_SIZE; // todo what's that?
	mov	dptr,#_endpoint0Size
	mov	a,#0x08
	movx	@dptr,a
;	USBHost.c:191: setHostUsbAddr(0);
	mov	dpl,#0x00
	lcall	_setHostUsbAddr
;	USBHost.c:192: setUsbSpeed(1);
	mov	dpl,#0x01
	lcall	_setUsbSpeed
;	USBHost.c:194: if (rootHubIndex == 0) {
	mov	dptr,#_resetRootHubPort_rootHubIndex_65536_58
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00104$
;	USBHost.c:195: UHUB0_CTRL = UHUB0_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
	mov	a,#0xfb
	anl	a,_UDEV_CTRL
	orl	a,#0x02
	mov	_UDEV_CTRL,a
;	USBHost.c:196: delay(15);
	mov	dptr,#0x000f
	lcall	_delay
;	USBHost.c:197: UHUB0_CTRL = UHUB0_CTRL & ~bUH_BUS_RESET;
	anl	_UDEV_CTRL,#0xfd
	sjmp	00105$
00104$:
;	USBHost.c:198: } else if (rootHubIndex == 1) {
	cjne	r7,#0x01,00105$
;	USBHost.c:199: UHUB1_CTRL = UHUB1_CTRL & ~bUH_LOW_SPEED | bUH_BUS_RESET;
	mov	a,#0xfb
	anl	a,_UHUB1_CTRL
	orl	a,#0x02
	mov	_UHUB1_CTRL,a
;	USBHost.c:200: delay(15);
	mov	dptr,#0x000f
	lcall	_delay
;	USBHost.c:201: UHUB1_CTRL = UHUB1_CTRL & ~bUH_BUS_RESET;
	anl	_UHUB1_CTRL,#0xfd
00105$:
;	USBHost.c:204: delayUs(250);
	mov	dptr,#0x00fa
	lcall	_delayUs
;	USBHost.c:205: UIF_DETECT = 0; // todo test if redundant
;	assignBit
	clr	_UIF_DETECT
;	USBHost.c:206: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableRootHubPort'
;------------------------------------------------------------
;rootHubIndex              Allocated with name '_enableRootHubPort_rootHubIndex_65536_62'
;------------------------------------------------------------
;	USBHost.c:208: static uint8_t enableRootHubPort(uint8_t rootHubIndex)
;	-----------------------------------------
;	 function enableRootHubPort
;	-----------------------------------------
_enableRootHubPort:
	mov	a,dpl
	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_62
	movx	@dptr,a
;	USBHost.c:210: if (rootHubDevice[rootHubIndex].status < 1) {
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
;	USBHost.c:211: rootHubDevice[rootHubIndex].status = 1;
	mov	dpl,r6
	mov	dph,r7
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	USBHost.c:214: if (rootHubIndex == 0) {
	mov	dptr,#_enableRootHubPort_rootHubIndex_65536_62
	movx	a,@dptr
	mov	r7,a
	jnz	00120$
;	USBHost.c:215: if (USB_HUB_ST & bUHS_H0_ATTACH) {
	mov	a,_USB_HUB_ST
	jb	acc.3,00163$
	ljmp	00121$
00163$:
;	USBHost.c:216: if ((UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
	mov	a,_UDEV_CTRL
	jb	acc.0,00107$
;	USBHost.c:217: if (USB_HUB_ST & bUHS_DM_LEVEL) {
	mov	a,_USB_HUB_ST
	jnb	acc.2,00104$
;	USBHost.c:218: rootHubDevice[rootHubIndex].speed = 0;
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
;	USBHost.c:219: UHUB0_CTRL |= bUH_LOW_SPEED;
	orl	_UDEV_CTRL,#0x04
	sjmp	00107$
00104$:
;	USBHost.c:221: rootHubDevice[rootHubIndex].speed = 1;
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
;	USBHost.c:224: UHUB0_CTRL |= bUH_PORT_EN;
	orl	_UDEV_CTRL,#0x01
;	USBHost.c:225: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00120$:
;	USBHost.c:227: } else if (rootHubIndex == 1) {
	cjne	r7,#0x01,00121$
;	USBHost.c:228: if (USB_HUB_ST & bUHS_H1_ATTACH) {
	mov	a,_USB_HUB_ST
	jnb	acc.7,00121$
;	USBHost.c:229: if ((UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
	mov	a,_UHUB1_CTRL
	jb	acc.0,00114$
;	USBHost.c:230: if (USB_HUB_ST & bUHS_HM_LEVEL) {
	mov	a,_USB_HUB_ST
	jnb	acc.6,00111$
;	USBHost.c:231: rootHubDevice[rootHubIndex].speed = 0;
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
;	USBHost.c:232: UHUB1_CTRL |= bUH_LOW_SPEED;
	orl	_UHUB1_CTRL,#0x04
	sjmp	00114$
00111$:
;	USBHost.c:234: rootHubDevice[rootHubIndex].speed = 1;
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
;	USBHost.c:237: UHUB1_CTRL |= bUH_PORT_EN;
	orl	_UHUB1_CTRL,#0x01
;	USBHost.c:238: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00121$:
;	USBHost.c:241: return ERR_USB_DISCON;
	mov	dpl,#0x16
;	USBHost.c:242: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'selectHubPort'
;------------------------------------------------------------
;HubPortIndex              Allocated with name '_selectHubPort_PARM_2'
;rootHubIndex              Allocated with name '_selectHubPort_rootHubIndex_65536_75'
;temp                      Allocated with name '_selectHubPort_temp_65536_76'
;------------------------------------------------------------
;	USBHost.c:244: static void selectHubPort(uint8_t rootHubIndex, uint8_t HubPortIndex)
;	-----------------------------------------
;	 function selectHubPort
;	-----------------------------------------
_selectHubPort:
	mov	a,dpl
	mov	dptr,#_selectHubPort_rootHubIndex_65536_75
	movx	@dptr,a
;	USBHost.c:247: setHostUsbAddr(rootHubDevice[rootHubIndex].address); // todo ever != 0
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
;	USBHost.c:248: setUsbSpeed(rootHubDevice[rootHubIndex].speed); // isn't that set before?
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,a
;	USBHost.c:249: }
	ljmp	_setUsbSpeed
;------------------------------------------------------------
;Allocation info for local variables in function 'hostTransfer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hostTransfer_sloc0_1_0'
;sloc1                     Allocated with name '_hostTransfer_sloc1_1_0'
;sloc2                     Allocated with name '_hostTransfer_sloc2_1_0'
;tog                       Allocated with name '_hostTransfer_PARM_2'
;timeout                   Allocated with name '_hostTransfer_PARM_3'
;endp_pid                  Allocated with name '_hostTransfer_endp_pid_65536_77'
;retries                   Allocated with name '_hostTransfer_retries_65536_78'
;r                         Allocated with name '_hostTransfer_r_65536_78'
;i                         Allocated with name '_hostTransfer_i_65536_78'
;------------------------------------------------------------
;	USBHost.c:251: static uint8_t hostTransfer(uint8_t endp_pid, uint8_t tog, uint16_t timeout)
;	-----------------------------------------
;	 function hostTransfer
;	-----------------------------------------
_hostTransfer:
	mov	a,dpl
	mov	dptr,#_hostTransfer_endp_pid_65536_77
	movx	@dptr,a
;	USBHost.c:253: __xdata uint16_t retries = 0;
	mov	dptr,#_hostTransfer_retries_65536_78
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:256: UH_RX_CTRL = tog;
	mov	dptr,#_hostTransfer_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	_UEP2_CTRL,r7
;	USBHost.c:257: UH_TX_CTRL = tog;
	mov	_UEP3_CTRL,r7
;	USBHost.c:259: do {
	mov	dptr,#_hostTransfer_endp_pid_65536_77
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
;	USBHost.c:260: UH_EP_PID = endp_pid;
	mov	_UEP2_T_LEN,r6
;	USBHost.c:261: UIF_TRANSFER = 0;
;	assignBit
	clr	_UIF_TRANSFER
;	USBHost.c:262: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--) {
	mov	_hostTransfer_sloc0_1_0,#0xc8
	mov	(_hostTransfer_sloc0_1_0 + 1),#0x00
00150$:
	mov	a,_hostTransfer_sloc0_1_0
	orl	a,(_hostTransfer_sloc0_1_0 + 1)
	jz	00101$
	jb	_UIF_TRANSFER,00101$
;	USBHost.c:263: delayUs(1);
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
;	USBHost.c:262: for (i = 200; i != 0 && UIF_TRANSFER == 0; i--) {
	dec	_hostTransfer_sloc0_1_0
	mov	a,#0xff
	cjne	a,_hostTransfer_sloc0_1_0,00263$
	dec	(_hostTransfer_sloc0_1_0 + 1)
00263$:
	sjmp	00150$
00101$:
;	USBHost.c:265: UH_EP_PID = 0x00;
	mov	_UEP2_T_LEN,#0x00
;	USBHost.c:267: if (UIF_TRANSFER == 0) {
	jb	_UIF_TRANSFER,00103$
;	USBHost.c:268: return ERR_USB_UNKNOWN;
	mov	dpl,#0xfe
	ret
00103$:
;	USBHost.c:271: if (UIF_TRANSFER) {
	jb	_UIF_TRANSFER,00265$
	ljmp	00143$
00265$:
;	USBHost.c:272: if (U_TOG_OK) {
	jnb	_U_TOG_OK,00105$
;	USBHost.c:273: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00105$:
;	USBHost.c:276: r = USB_INT_ST & MASK_UIS_H_RES;
	mov	a,_USB_INT_ST
	anl	a,#0x0f
	mov	_hostTransfer_sloc1_1_0,a
;	USBHost.c:277: if (r == USB_PID_STALL) {
	mov	a,#0x0e
	cjne	a,_hostTransfer_sloc1_1_0,00267$
	mov	a,#0x01
	sjmp	00268$
00267$:
	clr	a
00268$:
	mov	_hostTransfer_sloc0_1_0,a
	jz	00107$
;	USBHost.c:278: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00107$:
;	USBHost.c:281: if (r == USB_PID_NAK) {
	mov	a,#0x0a
	cjne	a,_hostTransfer_sloc1_1_0,00270$
	mov	a,#0x01
	sjmp	00271$
00270$:
	clr	a
00271$:
	mov	r0,a
	jz	00140$
;	USBHost.c:282: if (timeout == 0) {
	mov	a,r1
	orl	a,r2
	jnz	00109$
;	USBHost.c:283: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	_hostTransfer_sloc2_1_0,a
	mov	dpl,_hostTransfer_sloc2_1_0
	ret
00109$:
;	USBHost.c:285: if (timeout < 0xFFFF) {
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
;	USBHost.c:286: timeout--;
	dec	r1
	cjne	r1,#0xff,00275$
	dec	r2
00275$:
00111$:
;	USBHost.c:288: retries--;
	push	ar3
	mov	dptr,#_hostTransfer_retries_65536_78
	movx	a,@dptr
	add	a,#0xff
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_hostTransfer_retries_65536_78
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar3
	ljmp	00144$
00140$:
;	USBHost.c:290: switch (endp_pid >> 4) { // todo no return.. compare to other guy
	mov	a,_hostTransfer_sloc2_1_0
	jnz	00113$
	mov	a,r3
	jnz	00123$
	cjne	r5,#0x0d,00278$
	sjmp	00279$
00278$:
	ljmp	00137$
00279$:
;	USBHost.c:292: case USB_PID_OUT:
00113$:
;	USBHost.c:293: if (U_TOG_OK) {
	jnb	_U_TOG_OK,00115$
;	USBHost.c:294: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00115$:
;	USBHost.c:296: if (r == USB_PID_ACK) {
	mov	a,#0x02
	cjne	a,_hostTransfer_sloc1_1_0,00117$
;	USBHost.c:297: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00117$:
;	USBHost.c:299: if (r == USB_PID_STALL || r == USB_PID_NAK) {
	mov	a,_hostTransfer_sloc0_1_0
	jnz	00118$
	mov	a,r0
	jz	00119$
00118$:
;	USBHost.c:300: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00119$:
;	USBHost.c:302: if (r) {
	mov	a,_hostTransfer_sloc1_1_0
	jz	00144$
;	USBHost.c:303: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
;	USBHost.c:307: case USB_PID_IN:
00123$:
;	USBHost.c:308: if (U_TOG_OK) {
	jnb	_U_TOG_OK,00125$
;	USBHost.c:309: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00125$:
;	USBHost.c:311: if (tog ? r == USB_PID_DATA1 : r == USB_PID_DATA0) {
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
;	USBHost.c:312: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00127$:
;	USBHost.c:314: if (r == USB_PID_STALL || r == USB_PID_NAK) {
	mov	a,_hostTransfer_sloc0_1_0
	jnz	00128$
	mov	a,r0
	jz	00129$
00128$:
;	USBHost.c:315: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
	ret
00129$:
;	USBHost.c:317: if (r == USB_PID_DATA0 || r == USB_PID_DATA1) {
	mov	a,#0x03
	cjne	a,_hostTransfer_sloc1_1_0,00295$
	sjmp	00144$
00295$:
	mov	a,#0x0b
	cjne	a,_hostTransfer_sloc1_1_0,00296$
	sjmp	00144$
00296$:
;	USBHost.c:319: } else if (r) {
	mov	a,_hostTransfer_sloc1_1_0
	jz	00144$
;	USBHost.c:320: return r | ERR_USB_TRANSFER;
	mov	a,#0x20
	orl	a,_hostTransfer_sloc1_1_0
	mov	dpl,a
;	USBHost.c:324: default:
	ret
00137$:
;	USBHost.c:325: return ERR_USB_UNKNOWN;
	mov	dpl,#0xfe
;	USBHost.c:327: }
	ret
00143$:
;	USBHost.c:330: USB_INT_FG = 0xFF;
	mov	_USB_INT_FG,#0xff
00144$:
;	USBHost.c:332: delayUs(15);
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
;	USBHost.c:333: } while (++retries < 200);
	mov	dptr,#_hostTransfer_retries_65536_78
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_hostTransfer_retries_65536_78
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
;	USBHost.c:335: return ERR_USB_TRANSFER;
	mov	dpl,#0x20
;	USBHost.c:336: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hostCtrlTransfer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_hostCtrlTransfer_sloc0_1_0'
;RetLen                    Allocated with name '_hostCtrlTransfer_PARM_2'
;maxLength                 Allocated with name '_hostCtrlTransfer_PARM_3'
;DataBuf                   Allocated with name '_hostCtrlTransfer_DataBuf_65536_101'
;SetPort                   Allocated with name '_hostCtrlTransfer_SetPort_65536_102'
;RemLen                    Allocated with name '_hostCtrlTransfer_RemLen_65536_102'
;res                       Allocated with name '_hostCtrlTransfer_res_65536_102'
;RxLen                     Allocated with name '_hostCtrlTransfer_RxLen_65536_102'
;i                         Allocated with name '_hostCtrlTransfer_i_65536_102'
;pBuf                      Allocated with name '_hostCtrlTransfer_pBuf_65536_102'
;pLen                      Allocated with name '_hostCtrlTransfer_pLen_65536_102'
;pSetupReq                 Allocated with name '_hostCtrlTransfer_pSetupReq_65537_103'
;------------------------------------------------------------
;	USBHost.c:338: static uint8_t hostCtrlTransfer(uint8_t __xdata *DataBuf, uint16_t *RetLen, uint16_t maxLength)
;	-----------------------------------------
;	 function hostCtrlTransfer
;	-----------------------------------------
_hostCtrlTransfer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_101
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:350: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:351: pBuf = DataBuf;
	mov	dptr,#_hostCtrlTransfer_DataBuf_65536_101
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:352: pLen = RetLen;
	mov	dptr,#_hostCtrlTransfer_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	USBHost.c:353: delayUs(200);
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
;	USBHost.c:355: if (pLen) {
	mov	a,r3
	orl	a,r4
	jz	00102$
;	USBHost.c:356: *pLen = 0;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	USBHost.c:359: UH_TX_LEN = sizeof(USB_SETUP_REQ);
	mov	_UEP3_T_LEN,#0x08
;	USBHost.c:360: res = hostTransfer((uint8_t)(USB_PID_SETUP << 4), 0, 10000);
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
;	USBHost.c:361: if (res != ERR_SUCCESS) {
	mov	a,r2
	jz	00104$
;	USBHost.c:362: return res;
	mov	dpl,r2
	ret
00104$:
;	USBHost.c:365: UH_RX_CTRL = UH_TX_CTRL = bUH_R_TOG | bUH_R_AUTO_TOG | bUH_T_TOG | bUH_T_AUTO_TOG;
	push	ar6
	push	ar7
	mov	_UEP3_CTRL,#0xd0
	mov	_UEP2_CTRL,#0xd0
;	USBHost.c:366: UH_TX_LEN = 0x01;
	mov	_UEP3_T_LEN,#0x01
;	USBHost.c:367: RemLen = (pSetupReq->wLengthH << 8) | (pSetupReq->wLengthL);
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
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:369: if (RemLen && pBuf) {
	pop	ar7
	pop	ar6
	mov	a,r1
	orl	a,r2
	jnz	00245$
	ljmp	00129$
00245$:
	mov	a,r6
	orl	a,r7
	jnz	00246$
	ljmp	00129$
00246$:
;	USBHost.c:370: if (pSetupReq->bRequestType & USB_REQ_TYP_IN) {
	mov	dptr,#_TxBuffer
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00247$
	ljmp	00122$
00247$:
;	USBHost.c:372: while (RemLen) {
00113$:
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00248$
	ljmp	00115$
00248$:
;	USBHost.c:373: delayUs(300);
	mov	dptr,#0x012c
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_delayUs
;	USBHost.c:374: res = hostTransfer((uint8_t)(USB_PID_IN << 4), UH_RX_CTRL, 10000);
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
;	USBHost.c:375: if (res != ERR_SUCCESS) {
	mov	a,r2
	jz	00106$
;	USBHost.c:376: return res;
	mov	dpl,r2
	ret
00106$:
;	USBHost.c:379: RxLen = USB_RX_LEN < RemLen ? USB_RX_LEN : RemLen;
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
;	USBHost.c:380: RemLen -= RxLen;
	mov	ar6,r1
	mov	r7,#0x00
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
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
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:381: if (pLen) {
	mov	a,r3
	orl	a,r4
	jz	00159$
;	USBHost.c:382: *pLen += RxLen;
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
;	USBHost.c:385: for (i = 0; i < RxLen; i++) {
00159$:
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
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
;	USBHost.c:386: pBuf[i] = RxBuffer[i];
	mov	a,r2
	add	a,r6
	mov	_hostCtrlTransfer_sloc0_1_0,a
	clr	a
	addc	a,r7
	mov	(_hostCtrlTransfer_sloc0_1_0 + 1),a
	mov	dpl,r2
	mov	dph,#(_RxBuffer >> 8)
	movx	a,@dptr
	mov	dpl,_hostCtrlTransfer_sloc0_1_0
	mov	dph,(_hostCtrlTransfer_sloc0_1_0 + 1)
	movx	@dptr,a
;	USBHost.c:385: for (i = 0; i < RxLen; i++) {
	inc	r2
	sjmp	00138$
00109$:
;	USBHost.c:388: pBuf += RxLen;
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
	mov	a,r1
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:391: if (USB_RX_LEN == 0 || (USB_RX_LEN < endpoint0Size)) {
	mov	a,_USB_RX_LEN
	jz	00115$
	mov	dptr,#_endpoint0Size
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,_USB_RX_LEN
	subb	a,r7
	jc	00254$
	ljmp	00113$
00254$:
;	USBHost.c:392: break;
00115$:
;	USBHost.c:395: UH_TX_LEN = 0x00;
	mov	_UEP3_T_LEN,#0x00
	ljmp	00129$
;	USBHost.c:399: while (RemLen) {
00122$:
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00255$
	ljmp	00129$
00255$:
;	USBHost.c:400: delayUs(200);
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
;	USBHost.c:401: UH_TX_LEN = RemLen >= endpoint0Size ? endpoint0Size : RemLen;
	mov	dptr,#_endpoint0Size
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	clr	c
	mov	a,r6
	subb	a,r1
	mov	a,r7
	subb	a,r2
	mov	_hostCtrlTransfer_sloc1_1_0,c
	jc	00144$
	mov	dptr,#_endpoint0Size
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	sjmp	00145$
00144$:
	mov	ar1,r6
	mov	ar2,r7
00145$:
	mov	_UEP3_T_LEN,r1
;	USBHost.c:403: pBuf += UH_TX_LEN;
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
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
	mov	dptr,#_hostCtrlTransfer_pBuf_65536_102
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:405: if (pBuf[1] == 0x09) {
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x09,00117$
;	USBHost.c:406: SetPort = SetPort ? 0 : 1;
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
	movx	a,@dptr
	jz	00146$
	mov	r1,#0x00
	mov	r2,#0x00
	sjmp	00147$
00146$:
	mov	r1,#0x01
	mov	r2,#0x00
00147$:
	mov	dptr,#_hostCtrlTransfer_SetPort_65536_102
	mov	a,r1
	movx	@dptr,a
;	USBHost.c:407: *pBuf = SetPort;
	mov	dpl,r6
	mov	dph,r7
	mov	a,r1
	movx	@dptr,a
;	USBHost.c:408: DEBUG_OUT("SET_PORT  %02X  %02X ", *pBuf, SetPort);
00117$:
;	USBHost.c:412: res = hostTransfer(USB_PID_OUT << 4, UH_TX_CTRL, 10000);
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
	push	ar5
	push	ar4
	push	ar3
	lcall	_hostTransfer
	mov	r7,dpl
	pop	ar3
	pop	ar4
	pop	ar5
;	USBHost.c:413: if (res != ERR_SUCCESS) {
	mov	a,r7
	jz	00119$
;	USBHost.c:414: return res;
	mov	dpl,r7
	ret
00119$:
;	USBHost.c:417: RemLen -= UH_TX_LEN;
	mov	r6,_UEP3_T_LEN
	mov	r7,#0x00
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
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
	mov	dptr,#_hostCtrlTransfer_RemLen_65536_102
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:418: if (pLen) {
	mov	a,r3
	orl	a,r4
	jnz	00261$
	ljmp	00122$
00261$:
;	USBHost.c:419: *pLen += UH_TX_LEN;
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
;	USBHost.c:425: delayUs(200);
	mov	dptr,#0x00c8
	lcall	_delayUs
;	USBHost.c:426: res = hostTransfer((UH_TX_LEN ? USB_PID_IN << 4 : USB_PID_OUT << 4), bUH_R_TOG | bUH_T_TOG, 10000);
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
;	USBHost.c:427: if (res != ERR_SUCCESS) {
	mov	a,dpl
	mov	r7,a
	jz	00132$
;	USBHost.c:428: return res;
	mov	dpl,r7
	ret
00132$:
;	USBHost.c:431: if (UH_TX_LEN == 0) {
	mov	a,_UEP3_T_LEN
;	USBHost.c:432: return ERR_SUCCESS;
	jnz	00134$
	mov	dpl,a
	ret
00134$:
;	USBHost.c:435: if (USB_RX_LEN == 0) {
	mov	a,_USB_RX_LEN
;	USBHost.c:436: return ERR_SUCCESS;
	jnz	00136$
	mov	dpl,a
	ret
00136$:
;	USBHost.c:439: return ERR_USB_BUF_OVER;
	mov	dpl,#0x17
;	USBHost.c:440: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillTxBuffer'
;------------------------------------------------------------
;len                       Allocated with name '_fillTxBuffer_PARM_2'
;data                      Allocated with name '_fillTxBuffer_data_65536_122'
;i                         Allocated with name '_fillTxBuffer_i_131072_124'
;------------------------------------------------------------
;	USBHost.c:442: static void fillTxBuffer(PUINT8C data, uint8_t len)
;	-----------------------------------------
;	 function fillTxBuffer
;	-----------------------------------------
_fillTxBuffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_fillTxBuffer_data_65536_122
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:445: for(uint8_t i = 0; i < len; ++i) {
	mov	dptr,#_fillTxBuffer_data_65536_122
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_fillTxBuffer_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r5
	jnc	00105$
;	USBHost.c:446: TxBuffer[i] = data[i];
	mov	ar2,r4
	mov	r3,#(_TxBuffer >> 8)
	mov	a,r4
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	USBHost.c:445: for(uint8_t i = 0; i < len; ++i) {
	inc	r4
	sjmp	00103$
00105$:
;	USBHost.c:448: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getDeviceDescriptor'
;------------------------------------------------------------
;res                       Allocated with name '_getDeviceDescriptor_res_65536_126'
;len                       Allocated with name '_getDeviceDescriptor_len_65536_126'
;------------------------------------------------------------
;	USBHost.c:450: static uint8_t getDeviceDescriptor()
;	-----------------------------------------
;	 function getDeviceDescriptor
;	-----------------------------------------
_getDeviceDescriptor:
;	USBHost.c:454: endpoint0Size = DEFAULT_ENDP0_SIZE; // TODO again?
	mov	dptr,#_endpoint0Size
	mov	a,#0x08
	movx	@dptr,a
;	USBHost.c:456: fillTxBuffer(GetDeviceDescriptorRequest, sizeof(GetDeviceDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	movx	@dptr,a
	mov	dptr,#_GetDeviceDescriptorRequest
	lcall	_fillTxBuffer
;	USBHost.c:457: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getDeviceDescriptor_len_65536_126
	movx	@dptr,a
	mov	a,#(_getDeviceDescriptor_len_65536_126 >> 8)
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
;	USBHost.c:458: if (res != ERR_SUCCESS) {
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	USBHost.c:459: return res;
	mov	dpl,r7
	ret
00102$:
;	USBHost.c:463: endpoint0Size = ((PXUSB_DEV_DESCR)receiveDataBuffer)->bMaxPacketSize0;
	mov	dptr,#(_receiveDataBuffer + 0x0007)
	movx	a,@dptr
	mov	dptr,#_endpoint0Size
	movx	@dptr,a
;	USBHost.c:464: if (len < ((PUSB_SETUP_REQ)GetDeviceDescriptorRequest)->wLengthL) {
	mov	dptr,#(_GetDeviceDescriptorRequest + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_getDeviceDescriptor_len_65536_126
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r3
	jnc	00104$
;	USBHost.c:466: return ERR_USB_BUF_OVER;
	mov	dpl,#0x17
	ret
00104$:
;	USBHost.c:468: return res;
	mov	dpl,r7
;	USBHost.c:469: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbAddress'
;------------------------------------------------------------
;addr                      Allocated with name '_setUsbAddress_addr_65536_129'
;res                       Allocated with name '_setUsbAddress_res_65536_130'
;pSetupReq                 Allocated with name '_setUsbAddress_pSetupReq_65536_130'
;------------------------------------------------------------
;	USBHost.c:471: static uint8_t setUsbAddress(uint8_t addr)
;	-----------------------------------------
;	 function setUsbAddress
;	-----------------------------------------
_setUsbAddress:
	mov	a,dpl
	mov	dptr,#_setUsbAddress_addr_65536_129
	movx	@dptr,a
;	USBHost.c:474: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:475: fillTxBuffer(SetUSBAddressRequest, sizeof(SetUSBAddressRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetUSBAddressRequest
	lcall	_fillTxBuffer
;	USBHost.c:476: pSetupReq->wValueL = addr;
	mov	dptr,#_setUsbAddress_addr_65536_129
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_TxBuffer + 0x0002)
	movx	@dptr,a
;	USBHost.c:477: res = hostCtrlTransfer(0, 0, 0);
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
;	USBHost.c:478: if (res != ERR_SUCCESS) {
	mov	a,r6
	jz	00102$
;	USBHost.c:479: return res;
	mov	dpl,r6
	ret
00102$:
;	USBHost.c:483: setHostUsbAddr(addr);
	mov	dpl,r7
	push	ar6
	lcall	_setHostUsbAddr
;	USBHost.c:484: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar6
;	USBHost.c:485: return res;
	mov	dpl,r6
;	USBHost.c:486: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setUsbConfig'
;------------------------------------------------------------
;cfg                       Allocated with name '_setUsbConfig_cfg_65536_132'
;pSetupReq                 Allocated with name '_setUsbConfig_pSetupReq_65536_133'
;------------------------------------------------------------
;	USBHost.c:488: static uint8_t setUsbConfig(uint8_t cfg)
;	-----------------------------------------
;	 function setUsbConfig
;	-----------------------------------------
_setUsbConfig:
	mov	a,dpl
	mov	dptr,#_setUsbConfig_cfg_65536_132
	movx	@dptr,a
;	USBHost.c:490: PXUSB_SETUP_REQ pSetupReq = ((PXUSB_SETUP_REQ)TxBuffer);
;	USBHost.c:491: fillTxBuffer(SetupSetUsbConfig, sizeof(SetupSetUsbConfig));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetupSetUsbConfig
	lcall	_fillTxBuffer
;	USBHost.c:492: pSetupReq->wValueL = cfg;
	mov	dptr,#_setUsbConfig_cfg_65536_132
	movx	a,@dptr
	mov	dptr,#(_TxBuffer + 0x0002)
	movx	@dptr,a
;	USBHost.c:493: return hostCtrlTransfer(0, 0, 0);
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
;	USBHost.c:494: }
	ljmp	_hostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'getDeviceString'
;------------------------------------------------------------
;	USBHost.c:496: static uint8_t getDeviceString()
;	-----------------------------------------
;	 function getDeviceString
;	-----------------------------------------
_getDeviceString:
;	USBHost.c:498: fillTxBuffer(GetDeviceStringRequest, sizeof(GetDeviceStringRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetDeviceStringRequest
	lcall	_fillTxBuffer
;	USBHost.c:499: return hostCtrlTransfer(receiveDataBuffer, 0, RECEIVE_BUFFER_LEN);
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
;	USBHost.c:500: }
	ljmp	_hostCtrlTransfer
;------------------------------------------------------------
;Allocation info for local variables in function 'convertStringDescriptor'
;------------------------------------------------------------
;strBuffer                 Allocated with name '_convertStringDescriptor_PARM_2'
;bufferLength              Allocated with name '_convertStringDescriptor_PARM_3'
;index                     Allocated with name '_convertStringDescriptor_PARM_4'
;usbBuffer                 Allocated with name '_convertStringDescriptor_usbBuffer_65536_135'
;i                         Allocated with name '_convertStringDescriptor_i_65536_136'
;len                       Allocated with name '_convertStringDescriptor_len_65536_136'
;sloc0                     Allocated with name '_convertStringDescriptor_sloc0_1_0'
;sloc1                     Allocated with name '_convertStringDescriptor_sloc1_1_0'
;sloc2                     Allocated with name '_convertStringDescriptor_sloc2_1_0'
;sloc3                     Allocated with name '_convertStringDescriptor_sloc3_1_0'
;------------------------------------------------------------
;	USBHost.c:502: static char convertStringDescriptor(uint8_t __xdata *usbBuffer, uint8_t __xdata *strBuffer, uint16_t bufferLength, uint8_t index)
;	-----------------------------------------
;	 function convertStringDescriptor
;	-----------------------------------------
_convertStringDescriptor:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_135
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:506: __xdata uint8_t len = (usbBuffer[0] - 2) >> 1;
	mov	dptr,#_convertStringDescriptor_usbBuffer_65536_135
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
;	USBHost.c:509: if (usbBuffer[1] != 3) {
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00134$
	sjmp	00117$
00134$:
;	USBHost.c:510: return 0; // check if device string
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
;	USBHost.c:513: for (; (i < len) && (i < bufferLength - 1); i++) {
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
;	USBHost.c:514: if (usbBuffer[2 + 1 + (i << 1)]) {
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
;	USBHost.c:515: strBuffer[i] = '?';
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
;	USBHost.c:517: strBuffer[i] = usbBuffer[2 + (i << 1)];
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
;	USBHost.c:513: for (; (i < len) && (i < bufferLength - 1); i++) {
	inc	r0
	sjmp	00109$
00106$:
;	USBHost.c:520: strBuffer[i] = 0;
	mov	a,r0
	add	a,_convertStringDescriptor_sloc3_1_0
	mov	dpl,a
	clr	a
	addc	a,(_convertStringDescriptor_sloc3_1_0 + 1)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	USBHost.c:522: return 1;
	mov	dpl,#0x01
;	USBHost.c:523: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DEBUG_OUT_USB_BUFFER'
;------------------------------------------------------------
;usbBuffer                 Allocated with name '_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142'
;i                         Allocated with name '_DEBUG_OUT_USB_BUFFER_i_65536_143'
;------------------------------------------------------------
;	USBHost.c:525: static void DEBUG_OUT_USB_BUFFER(uint8_t __xdata *usbBuffer)
;	-----------------------------------------
;	 function DEBUG_OUT_USB_BUFFER
;	-----------------------------------------
_DEBUG_OUT_USB_BUFFER:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:528: for (i = 0; i < usbBuffer[0]; i++) {
	mov	dptr,#_DEBUG_OUT_USB_BUFFER_usbBuffer_65536_142
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
	jnc	00105$
	inc	r4
;	USBHost.c:531: DEBUG_OUT("\n");
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	USBHost.c:532: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getConfigurationDescriptor'
;------------------------------------------------------------
;res                       Allocated with name '_getConfigurationDescriptor_res_65536_146'
;len                       Allocated with name '_getConfigurationDescriptor_len_65536_146'
;total                     Allocated with name '_getConfigurationDescriptor_total_65536_146'
;------------------------------------------------------------
;	USBHost.c:534: static uint8_t getConfigurationDescriptor()
;	-----------------------------------------
;	 function getConfigurationDescriptor
;	-----------------------------------------
_getConfigurationDescriptor:
;	USBHost.c:538: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetConfigurationDescriptorRequest
	lcall	_fillTxBuffer
;	USBHost.c:540: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getConfigurationDescriptor_len_65536_146
	movx	@dptr,a
	mov	a,#(_getConfigurationDescriptor_len_65536_146 >> 8)
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
;	USBHost.c:541: if (res != ERR_SUCCESS) {
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	USBHost.c:542: return res;
	mov	dpl,r7
	ret
00102$:
;	USBHost.c:546: if (len < ((PUSB_SETUP_REQ)GetConfigurationDescriptorRequest)->wLengthL) {
	mov	dptr,#(_GetConfigurationDescriptorRequest + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_getConfigurationDescriptor_len_65536_146
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
;	USBHost.c:547: return ERR_USB_BUF_OVER;
	mov	dpl,#0x17
	ret
00104$:
;	USBHost.c:551: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
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
;	USBHost.c:552: fillTxBuffer(GetConfigurationDescriptorRequest, sizeof(GetConfigurationDescriptorRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetConfigurationDescriptorRequest
	push	ar7
	push	ar6
	lcall	_fillTxBuffer
	pop	ar6
	pop	ar7
;	USBHost.c:553: ((PUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(total & 255);
	mov	ar5,r7
	mov	dptr,#(_TxBuffer + 0x0006)
	mov	a,r5
	movx	@dptr,a
;	USBHost.c:554: ((PUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(total >> 8);
	mov	ar7,r6
	mov	dptr,#(_TxBuffer + 0x0007)
	mov	a,r7
	movx	@dptr,a
;	USBHost.c:555: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getConfigurationDescriptor_len_65536_146
	movx	@dptr,a
	mov	a,#(_getConfigurationDescriptor_len_65536_146 >> 8)
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
;	USBHost.c:556: if (res != ERR_SUCCESS) {
	mov	a,dpl
	mov	r7,a
	jz	00106$
;	USBHost.c:557: return res;
	mov	dpl,r7
	ret
00106$:
;	USBHost.c:560: return ERR_SUCCESS;
	mov	dpl,#0x00
;	USBHost.c:561: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resetHubDevices'
;------------------------------------------------------------
;hubindex                  Allocated with name '_resetHubDevices_hubindex_65536_150'
;hiddevice                 Allocated with name '_resetHubDevices_hiddevice_65536_151'
;------------------------------------------------------------
;	USBHost.c:575: void resetHubDevices(uint8_t hubindex)
;	-----------------------------------------
;	 function resetHubDevices
;	-----------------------------------------
_resetHubDevices:
	mov	a,dpl
	mov	dptr,#_resetHubDevices_hubindex_65536_150
	movx	@dptr,a
;	USBHost.c:578: VendorProductID[hubindex].idVendorL = 0;
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
;	USBHost.c:579: VendorProductID[hubindex].idVendorH = 0;
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
;	USBHost.c:580: VendorProductID[hubindex].idProductL = 0;
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
;	USBHost.c:581: VendorProductID[hubindex].idProductH = 0;
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
;	USBHost.c:583: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	mov	r6,#0x00
00104$:
;	USBHost.c:584: if (HIDdevice[hiddevice].rootHub == hubindex) {
	mov	a,r6
	mov	b,#0x16
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
;	USBHost.c:585: HIDdevice[hiddevice].connected = 0;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
;	USBHost.c:586: HIDdevice[hiddevice].rootHub = 0;
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	USBHost.c:587: HIDdevice[hiddevice].interface = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	@dptr,a
;	USBHost.c:588: HIDdevice[hiddevice].endPoint = 0;
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
;	USBHost.c:589: HIDdevice[hiddevice].type = 0;
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
;	USBHost.c:583: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00104$
;	USBHost.c:592: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pollHIDdevice'
;------------------------------------------------------------
;sloc0                     Allocated with name '_pollHIDdevice_sloc0_1_0'
;dx                        Allocated with name '_pollHIDdevice_PARM_2'
;dy                        Allocated with name '_pollHIDdevice_PARM_3'
;dwheel                    Allocated with name '_pollHIDdevice_PARM_4'
;buttons                   Allocated with name '_pollHIDdevice_buttons_65536_155'
;res                       Allocated with name '_pollHIDdevice_res_65536_156'
;hiddevice                 Allocated with name '_pollHIDdevice_hiddevice_65536_156'
;len                       Allocated with name '_pollHIDdevice_len_65536_156'
;report                    Allocated with name '_pollHIDdevice_report_65536_156'
;map                       Allocated with name '_pollHIDdevice_map_65536_156'
;------------------------------------------------------------
;	USBHost.c:594: void pollHIDdevice(uint32_t * buttons, int32_t * dx, int32_t * dy, int32_t * dwheel)
;	-----------------------------------------
;	 function pollHIDdevice
;	-----------------------------------------
_pollHIDdevice:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_pollHIDdevice_buttons_65536_155
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	mov	r7,#0x00
00123$:
;	USBHost.c:603: if (HIDdevice[hiddevice].connected && HIDdevice[hiddevice].type == REPORT_USAGE_MOUSE) {
	mov	a,r7
	mov	b,#0x16
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
	jnz	00187$
	ljmp	00124$
00187$:
	mov	a,r5
	add	a,#_HIDdevice
	mov	r5,a
	mov	a,r6
	addc	a,#(_HIDdevice >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r1,#0x02,00188$
	cjne	r2,#0x00,00188$
	cjne	r3,#0x00,00188$
	cjne	r4,#0x00,00188$
	sjmp	00189$
00188$:
	ljmp	00124$
00189$:
;	USBHost.c:604: selectHubPort(HIDdevice[hiddevice].rootHub, 0);
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
;	USBHost.c:605: res = hostTransfer(USB_PID_IN << 4 | HIDdevice[hiddevice].endPoint & 0x7F,
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
;	USBHost.c:606: HIDdevice[hiddevice].endPoint & 0x80 ? bUH_R_TOG | bUH_T_TOG : 0, 0);
	mov	a,r6
	jnb	acc.7,00127$
	mov	r4,#0xc0
	mov	r6,#0x00
	sjmp	00128$
00127$:
	mov	r4,#0x00
	mov	r6,#0x00
00128$:
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
;	USBHost.c:607: if (res == ERR_SUCCESS) {
	jz	00191$
	ljmp	00124$
00191$:
;	USBHost.c:608: HIDdevice[hiddevice].endPoint ^= 0x80;
	mov	a,r7
	mov	b,#0x16
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
;	USBHost.c:609: len = USB_RX_LEN;
	mov	dptr,#_pollHIDdevice_len_65536_156
	mov	a,_USB_RX_LEN
	movx	@dptr,a
;	USBHost.c:610: if (len) {
	movx	a,@dptr
	jnz	00192$
	ljmp	00124$
00192$:
;	USBHost.c:611: map = &HIDdevice[hiddevice].mouse_map;
	mov	a,#0x08
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
;	USBHost.c:612: report = RxBuffer;
	mov	dptr,#_pollHIDdevice_report_65536_156
	mov	a,#_RxBuffer
	movx	@dptr,a
	mov	a,#(_RxBuffer >> 8)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:613: if (map->report_id != 0) {
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	jz	00104$
;	USBHost.c:614: if (report[0] != map->report_id) {
	mov	dptr,#_RxBuffer
	movx	a,@dptr
	mov	r1,a
	cjne	a,ar2,00194$
	sjmp	00102$
00194$:
;	USBHost.c:616: return;
	ret
00102$:
;	USBHost.c:618: report++;
	mov	dptr,#_pollHIDdevice_report_65536_156
	mov	a,#0x01
	movx	@dptr,a
	mov	a,#(_RxBuffer >> 8)
	inc	dptr
	movx	@dptr,a
00104$:
;	USBHost.c:621: if (len - (map->report_id?1:0) < (map->report_length_bits + 7) >> 3) {
	mov	dptr,#_pollHIDdevice_len_65536_156
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jz	00129$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00130$
00129$:
	mov	r3,#0x00
	mov	r4,#0x00
00130$:
	mov	a,r1
	clr	c
	subb	a,r3
	mov	r1,a
	mov	a,r2
	subb	a,r4
	mov	r2,a
	mov	a,#0x15
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x07
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r3
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	jnb	acc.4,00196$
	orl	a,#0xe0
00196$:
	mov	r3,a
	clr	c
	mov	a,r1
	subb	a,r4
	mov	a,r2
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	USBHost.c:624: return;
	ret
00106$:
;	USBHost.c:628: if (map->buttons_bit_size > 0) {
	mov	a,#0x0b
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jz	00108$
;	USBHost.c:629: *buttons = (uint32_t)extract_field(report, map->buttons_bit_offset,
	push	ar7
	mov	dptr,#_pollHIDdevice_buttons_65536_155
	movx	a,@dptr
	mov	_pollHIDdevice_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
	mov	dptr,#_pollHIDdevice_report_65536_156
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	a,#0x09
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	USBHost.c:630: map->buttons_bit_size, 0);
	mov	dptr,#_extract_field_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r7
	push	ar6
	push	ar5
	lcall	_extract_field
	mov	r4,dpl
	mov	r2,dph
	mov	r3,b
	mov	r7,a
	pop	ar5
	pop	ar6
	mov	dpl,_pollHIDdevice_sloc0_1_0
	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	pop	ar7
;	USBHost.c:630: map->buttons_bit_size, 0);
00108$:
;	USBHost.c:633: if (map->x_bit_size > 0) {
	mov	a,#0x0e
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jz	00110$
;	USBHost.c:634: *dx = extract_field(report, map->x_bit_offset,
	push	ar7
	mov	dptr,#_pollHIDdevice_PARM_2
	movx	a,@dptr
	mov	_pollHIDdevice_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
	mov	dptr,#_pollHIDdevice_report_65536_156
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	a,#0x0c
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	USBHost.c:635: map->x_bit_size, 1);
	mov	dptr,#_extract_field_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r7
	push	ar6
	push	ar5
	lcall	_extract_field
	mov	r4,dpl
	mov	r2,dph
	mov	r3,b
	mov	r7,a
	pop	ar5
	pop	ar6
	mov	dpl,_pollHIDdevice_sloc0_1_0
	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	pop	ar7
;	USBHost.c:635: map->x_bit_size, 1);
00110$:
;	USBHost.c:638: if (map->y_bit_size > 0) {
	mov	a,#0x11
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jz	00112$
;	USBHost.c:639: *dy = extract_field(report, map->y_bit_offset,
	push	ar7
	mov	dptr,#_pollHIDdevice_PARM_3
	movx	a,@dptr
	mov	_pollHIDdevice_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
	mov	dptr,#_pollHIDdevice_report_65536_156
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	a,#0x0f
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	USBHost.c:640: map->y_bit_size, 1);
	mov	dptr,#_extract_field_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r7
	push	ar6
	push	ar5
	lcall	_extract_field
	mov	r4,dpl
	mov	r2,dph
	mov	r3,b
	mov	r7,a
	pop	ar5
	pop	ar6
	mov	dpl,_pollHIDdevice_sloc0_1_0
	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	pop	ar7
;	USBHost.c:640: map->y_bit_size, 1);
00112$:
;	USBHost.c:643: if (map->wheel_bit_size > 0) {
	mov	a,#0x14
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	jz	00124$
;	USBHost.c:644: *dwheel = extract_field(report, map->wheel_bit_offset,
	push	ar7
	mov	dptr,#_pollHIDdevice_PARM_4
	movx	a,@dptr
	mov	_pollHIDdevice_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pollHIDdevice_sloc0_1_0 + 2),a
	mov	dptr,#_pollHIDdevice_report_65536_156
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r7,#0x00
	mov	a,#0x12
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	USBHost.c:645: map->wheel_bit_size, 1);
	mov	dptr,#_extract_field_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_extract_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r7
	lcall	_extract_field
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dpl,_pollHIDdevice_sloc0_1_0
	mov	dph,(_pollHIDdevice_sloc0_1_0 + 1)
	mov	b,(_pollHIDdevice_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	pop	ar7
;	USBHost.c:648: DEBUG_OUT("Mouse id:%d: butt=0x%lX, dx=%ld, dy=%ld, dwheel=%ld\n",
00124$:
;	USBHost.c:602: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	inc	r7
	cjne	r7,#0x08,00202$
00202$:
	jnc	00203$
	ljmp	00123$
00203$:
;	USBHost.c:654: }
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
;sloc7                     Allocated with name '_parseHIDDeviceReport_sloc7_1_0'
;sloc8                     Allocated with name '_parseHIDDeviceReport_sloc8_1_0'
;sloc9                     Allocated with name '_parseHIDDeviceReport_sloc9_1_0'
;sloc10                    Allocated with name '_parseHIDDeviceReport_sloc10_1_0'
;length                    Allocated with name '_parseHIDDeviceReport_PARM_2'
;CurrentDevice             Allocated with name '_parseHIDDeviceReport_PARM_3'
;report                    Allocated with name '_parseHIDDeviceReport_report_65536_169'
;i                         Allocated with name '_parseHIDDeviceReport_i_65536_170'
;j                         Allocated with name '_parseHIDDeviceReport_j_65536_170'
;level                     Allocated with name '_parseHIDDeviceReport_level_65536_170'
;isUsageSet                Allocated with name '_parseHIDDeviceReport_isUsageSet_65536_170'
;tag                       Allocated with name '_parseHIDDeviceReport_tag_65536_170'
;tag_size                  Allocated with name '_parseHIDDeviceReport_tag_size_65536_170'
;data                      Allocated with name '_parseHIDDeviceReport_data_65536_170'
;usage_page                Allocated with name '_parseHIDDeviceReport_usage_page_65536_170'
;usageX                    Allocated with name '_parseHIDDeviceReport_usageX_65536_170'
;usageY                    Allocated with name '_parseHIDDeviceReport_usageY_65536_170'
;usageW                    Allocated with name '_parseHIDDeviceReport_usageW_65536_170'
;logical_min               Allocated with name '_parseHIDDeviceReport_logical_min_65536_170'
;logical_max               Allocated with name '_parseHIDDeviceReport_logical_max_65536_170'
;report_size               Allocated with name '_parseHIDDeviceReport_report_size_65536_170'
;report_count              Allocated with name '_parseHIDDeviceReport_report_count_65536_170'
;current_bit_offset        Allocated with name '_parseHIDDeviceReport_current_bit_offset_65536_170'
;used_reports              Allocated with name '_parseHIDDeviceReport_used_reports_65536_170'
;map                       Allocated with name '_parseHIDDeviceReport_map_65536_170'
;------------------------------------------------------------
;	USBHost.c:656: static void parseHIDDeviceReport(uint8_t __xdata *report, uint16_t length, uint8_t CurrentDevice)
;	-----------------------------------------
;	 function parseHIDDeviceReport
;	-----------------------------------------
_parseHIDDeviceReport:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_parseHIDDeviceReport_report_65536_169
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	USBHost.c:658: __xdata uint16_t i = 0;
	mov	dptr,#_parseHIDDeviceReport_i_65536_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:660: __xdata uint8_t level = 0;
	mov	dptr,#_parseHIDDeviceReport_level_65536_170
	movx	@dptr,a
;	USBHost.c:661: __xdata uint8_t isUsageSet = 0;
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
	movx	@dptr,a
;	USBHost.c:666: __xdata uint32_t usage_page = 0;
	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:667: __xdata uint32_t usageX = 0;
	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:668: __xdata uint32_t usageY = 0;
	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:669: __xdata uint32_t usageW = 0;
	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:672: __xdata uint8_t report_size = 0;
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	@dptr,a
;	USBHost.c:673: __xdata uint8_t report_count = 0;
	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
	movx	@dptr,a
;	USBHost.c:674: __xdata uint16_t current_bit_offset = 0;
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:677: MouseReportMap *map = &HIDdevice[CurrentDevice].mouse_map;
	mov	dptr,#_parseHIDDeviceReport_PARM_3
	movx	a,@dptr
	mov	b,#0x16
	mul	ab
	add	a,#_HIDdevice
	mov	r6,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x08
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	r5,#0x00
;	USBHost.c:678: memset(map, 0, sizeof(MouseReportMap));
	mov	ar0,r4
	mov	ar1,r3
	mov	ar2,r5
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_memset
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:682: while (i < length) {
	mov	dptr,#_parseHIDDeviceReport_report_65536_169
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc10_1_0 + 1),a
	mov	_parseHIDDeviceReport_sloc0_1_0,_parseHIDDeviceReport_sloc10_1_0
	mov	(_parseHIDDeviceReport_sloc0_1_0 + 1),(_parseHIDDeviceReport_sloc10_1_0 + 1)
	mov	a,#0x04
	add	a,r6
	mov	_parseHIDDeviceReport_sloc5_1_0,a
	clr	a
	addc	a,r7
	mov	(_parseHIDDeviceReport_sloc5_1_0 + 1),a
	mov	dptr,#_parseHIDDeviceReport_PARM_2
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc1_1_0 + 1),a
00175$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc2_1_0 + 1),a
	clr	c
	mov	a,_parseHIDDeviceReport_sloc2_1_0
	subb	a,_parseHIDDeviceReport_sloc1_1_0
	mov	a,(_parseHIDDeviceReport_sloc2_1_0 + 1)
	subb	a,(_parseHIDDeviceReport_sloc1_1_0 + 1)
	jc	00361$
	ljmp	00177$
00361$:
;	USBHost.c:683: tag = report[i] & 0b11111100;
	mov	a,_parseHIDDeviceReport_sloc2_1_0
	add	a,_parseHIDDeviceReport_sloc10_1_0
	mov	dpl,a
	mov	a,(_parseHIDDeviceReport_sloc2_1_0 + 1)
	addc	a,(_parseHIDDeviceReport_sloc10_1_0 + 1)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
	mov	a,#0xfc
	anl	a,r0
	movx	@dptr,a
;	USBHost.c:684: tag_size = report[i] & 0b00000011;
	anl	ar0,#0x03
	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
	mov	a,r0
	movx	@dptr,a
;	USBHost.c:685: data = 0;
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:687: if (tag_size == 3) {
	cjne	r0,#0x03,00194$
;	USBHost.c:688: tag_size = 4;
	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
	mov	a,#0x04
	movx	@dptr,a
;	USBHost.c:691: for (j = 0; j < tag_size; j++) {
00194$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc2_1_0 + 1),a
	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc7_1_0,a
	mov	_parseHIDDeviceReport_sloc3_1_0,#0x00
00181$:
	clr	c
	mov	a,_parseHIDDeviceReport_sloc3_1_0
	subb	a,_parseHIDDeviceReport_sloc7_1_0
	jnc	00105$
;	USBHost.c:692: if (i + 1 + j < length) {
	mov	_parseHIDDeviceReport_sloc4_1_0,_parseHIDDeviceReport_sloc2_1_0
	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),(_parseHIDDeviceReport_sloc2_1_0 + 1)
	mov	a,#0x01
	add	a,_parseHIDDeviceReport_sloc4_1_0
	mov	r1,a
	clr	a
	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
	mov	r2,a
	mov	r6,_parseHIDDeviceReport_sloc3_1_0
	mov	r7,#0x00
	mov	_parseHIDDeviceReport_sloc6_1_0,r6
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),r7
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	addc	a,r2
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,_parseHIDDeviceReport_sloc1_1_0
	mov	a,r2
	subb	a,(_parseHIDDeviceReport_sloc1_1_0 + 1)
	jnc	00182$
;	USBHost.c:693: data |= ((uint32_t)(report[i + 1 + j])) << (j << 3);
	mov	a,#0x01
	add	a,_parseHIDDeviceReport_sloc4_1_0
	mov	r6,a
	clr	a
	addc	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
	mov	r7,a
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	add	a,r6
	mov	r6,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,_parseHIDDeviceReport_sloc0_1_0
	mov	dpl,a
	mov	a,r7
	addc	a,(_parseHIDDeviceReport_sloc0_1_0 + 1)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	clr	a
	mov	r2,a
	mov	r6,a
	mov	r7,a
	mov	a,_parseHIDDeviceReport_sloc3_1_0
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r0,a
	mov	b,r0
	inc	b
	sjmp	00367$
00366$:
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00367$:
	djnz	b,00366$
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
	movx	a,@dptr
	orl	a,r1
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r2
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
;	USBHost.c:693: data |= ((uint32_t)(report[i + 1 + j])) << (j << 3);
00182$:
;	USBHost.c:691: for (j = 0; j < tag_size; j++) {
	inc	_parseHIDDeviceReport_sloc3_1_0
	ljmp	00181$
00105$:
;	USBHost.c:697: for (j = 0; j < level - (tag == REPORT_COLLECTION_END ? 1 : 0); j++) {
	mov	dptr,#_parseHIDDeviceReport_level_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc3_1_0,a
	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
	movx	a,@dptr
	mov	r6,a
	clr	a
	cjne	r6,#0xc0,00368$
	inc	a
00368$:
	mov	_parseHIDDeviceReport_sloc7_1_0,a
	mov	r0,#0x00
00184$:
	mov	_parseHIDDeviceReport_sloc6_1_0,_parseHIDDeviceReport_sloc3_1_0
	mov	(_parseHIDDeviceReport_sloc6_1_0 + 1),#0x00
	mov	a,_parseHIDDeviceReport_sloc7_1_0
	jz	00188$
	mov	_parseHIDDeviceReport_sloc4_1_0,#0x01
	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),#0x00
	sjmp	00189$
00188$:
	clr	a
	mov	_parseHIDDeviceReport_sloc4_1_0,a
	mov	(_parseHIDDeviceReport_sloc4_1_0 + 1),a
00189$:
	mov	a,_parseHIDDeviceReport_sloc6_1_0
	clr	c
	subb	a,_parseHIDDeviceReport_sloc4_1_0
	mov	r1,a
	mov	a,(_parseHIDDeviceReport_sloc6_1_0 + 1)
	subb	a,(_parseHIDDeviceReport_sloc4_1_0 + 1)
	mov	r2,a
	mov	ar6,r0
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r1
	mov	a,r7
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
	inc	r0
	sjmp	00184$
00106$:
;	USBHost.c:701: switch (tag) {
	mov	dptr,#_parseHIDDeviceReport_tag_65536_170
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00372$
	sjmp	00107$
00372$:
	cjne	r7,#0x08,00373$
	ljmp	00115$
00373$:
	cjne	r7,#0x14,00374$
	ljmp	00174$
00374$:
	cjne	r7,#0x18,00375$
	ljmp	00174$
00375$:
	cjne	r7,#0x24,00376$
	ljmp	00174$
00376$:
	cjne	r7,#0x28,00377$
	ljmp	00174$
00377$:
	cjne	r7,#0x34,00378$
	ljmp	00174$
00378$:
	cjne	r7,#0x44,00379$
	ljmp	00174$
00379$:
	cjne	r7,#0x64,00380$
	ljmp	00174$
00380$:
	cjne	r7,#0x74,00381$
	ljmp	00167$
00381$:
	cjne	r7,#0x80,00382$
	ljmp	00147$
00382$:
	cjne	r7,#0x84,00383$
	ljmp	00168$
00383$:
	cjne	r7,#0x90,00384$
	ljmp	00174$
00384$:
	cjne	r7,#0x94,00385$
	ljmp	00172$
00385$:
	cjne	r7,#0xa0,00386$
	ljmp	00144$
00386$:
	cjne	r7,#0xb0,00387$
	ljmp	00174$
00387$:
	cjne	r7,#0xc0,00388$
	ljmp	00145$
00388$:
	ljmp	00174$
;	USBHost.c:702: case REPORT_USAGE_PAGE:
00107$:
;	USBHost.c:703: usage_page = data;
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:705: switch (usage_page) {
	mov	a,#0x01
	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00389$
	dec	a
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00389$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00389$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00389$
	ljmp	00174$
00389$:
	mov	a,#0x07
	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00390$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00390$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00390$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00390$
	setb	c
	sjmp	00391$
00390$:
	clr	c
00391$:
;	USBHost.c:725: break;
	ljmp	00174$
;	USBHost.c:727: case REPORT_USAGE:
00115$:
;	USBHost.c:728: if (!isUsageSet) {
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
	movx	a,@dptr
	jnz	00119$
;	USBHost.c:729: if (data == REPORT_USAGE_MOUSE) {
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
	mov	a,#0x02
	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00393$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00393$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00393$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00393$
	sjmp	00394$
00393$:
	sjmp	00117$
00394$:
;	USBHost.c:730: flash_led(); // Подключена мышь.
	push	ar5
	push	ar4
	push	ar3
	lcall	_flash_led
	pop	ar3
	pop	ar4
	pop	ar5
00117$:
;	USBHost.c:732: HIDdevice[CurrentDevice].type = data;
	mov	dpl,_parseHIDDeviceReport_sloc5_1_0
	mov	dph,(_parseHIDDeviceReport_sloc5_1_0 + 1)
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:733: isUsageSet = 1;
	mov	dptr,#_parseHIDDeviceReport_isUsageSet_65536_170
	mov	a,#0x01
	movx	@dptr,a
00119$:
;	USBHost.c:736: switch (data) {
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
	clr	c
	mov	a,#0x38
	subb	a,_parseHIDDeviceReport_sloc8_1_0
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	clr	a
	subb	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	jnc	00395$
	ljmp	00174$
00395$:
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	add	a,#(00396$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	add	a,#(00397$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00396$:
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00130$
	.db	00131$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00174$
	.db	00133$
00397$:
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00130$>>8
	.db	00131$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00174$>>8
	.db	00133$>>8
;	USBHost.c:767: case REPORT_USAGE_X:
00130$:
;	USBHost.c:769: usageX = data;
	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:770: break;
	ljmp	00174$
;	USBHost.c:771: case REPORT_USAGE_Y:
00131$:
;	USBHost.c:773: usageY = data;
	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:774: break;
	ljmp	00174$
;	USBHost.c:778: case REPORT_USAGE_WHEEL:
00133$:
;	USBHost.c:780: usageW = data;
	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_parseHIDDeviceReport_sloc8_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:781: break;
	ljmp	00174$
;	USBHost.c:811: case REPORT_COLLECTION:
00144$:
;	USBHost.c:813: level++;
	mov	dptr,#_parseHIDDeviceReport_level_65536_170
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	USBHost.c:814: break;
	ljmp	00174$
;	USBHost.c:815: case REPORT_COLLECTION_END:
00145$:
;	USBHost.c:817: level--;
	mov	dptr,#_parseHIDDeviceReport_level_65536_170
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	USBHost.c:818: break;
	ljmp	00174$
;	USBHost.c:822: case REPORT_INPUT:
00147$:
;	USBHost.c:824: used_reports = 0;
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	clr	a
	movx	@dptr,a
;	USBHost.c:825: if (HIDdevice[CurrentDevice].type == REPORT_USAGE_MOUSE) {
	mov	dpl,_parseHIDDeviceReport_sloc5_1_0
	mov	dph,(_parseHIDDeviceReport_sloc5_1_0 + 1)
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
	mov	r7,a
	cjne	r0,#0x02,00398$
	cjne	r2,#0x00,00398$
	cjne	r6,#0x00,00398$
	cjne	r7,#0x00,00398$
	sjmp	00399$
00398$:
	ljmp	00162$
00399$:
;	USBHost.c:828: if (usage_page == 0x09) { // Button Page
	mov	dptr,#_parseHIDDeviceReport_usage_page_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_parseHIDDeviceReport_sloc8_1_0 + 3),a
	mov	a,#0x09
	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00400$
	clr	a
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00400$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00400$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00400$
	sjmp	00401$
00400$:
	sjmp	00159$
00401$:
;	USBHost.c:829: if (map->buttons_bit_size == 0) {
	mov	a,#0x03
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrget
	jz	00402$
	ljmp	00162$
00402$:
;	USBHost.c:830: map->buttons_bit_offset = current_bit_offset;
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r2,a
	mov	ar7,r5
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	USBHost.c:831: map->buttons_bit_size = report_size * report_count;
	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	a,@dptr
	mov	b,a
	mov	a,r7
	mul	ab
	mov	r7,a
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:832: DEBUG_OUT("Buttons: offset=%d, size=%d\n",
	ljmp	00162$
00159$:
;	USBHost.c:836: else if (usage_page == 0x01) { // Generic Desktop Page
	mov	a,#0x01
	cjne	a,_parseHIDDeviceReport_sloc8_1_0,00403$
	dec	a
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 1),00403$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 2),00403$
	cjne	a,(_parseHIDDeviceReport_sloc8_1_0 + 3),00403$
	sjmp	00404$
00403$:
	ljmp	00162$
00404$:
;	USBHost.c:837: if (usageX == 0x30) { // X
	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
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
	mov	r7,a
	cjne	r0,#0x30,00405$
	cjne	r2,#0x00,00405$
	cjne	r6,#0x00,00405$
	cjne	r7,#0x00,00405$
	sjmp	00406$
00405$:
	sjmp	00151$
00406$:
;	USBHost.c:838: usageX = 0;
	mov	dptr,#_parseHIDDeviceReport_usageX_65536_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:839: map->x_bit_offset = current_bit_offset;
	mov	a,#0x04
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r5
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	USBHost.c:840: map->x_bit_size = report_size;
	mov	a,#0x06
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:841: map->report_length_bits = current_bit_offset + report_size;
	mov	a,#0x0d
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	ar7,r1
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	add	a,r7
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:842: current_bit_offset += report_size;
	mov	r6,_parseHIDDeviceReport_sloc8_1_0
	mov	r7,#0x00
	mov	a,r6
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:843: used_reports++;
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
;	USBHost.c:844: DEBUG_OUT("X: offset=%d, size=%d\n",
00151$:
;	USBHost.c:847: if (usageY == 0x31) { // Y
	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
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
	mov	r7,a
	cjne	r0,#0x31,00407$
	cjne	r2,#0x00,00407$
	cjne	r6,#0x00,00407$
	cjne	r7,#0x00,00407$
	sjmp	00408$
00407$:
	ljmp	00153$
00408$:
;	USBHost.c:848: usageY = 0;
	mov	dptr,#_parseHIDDeviceReport_usageY_65536_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:849: map->y_bit_offset = current_bit_offset;
	mov	a,#0x07
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r5
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	USBHost.c:850: map->y_bit_size = report_size;
	mov	a,#0x09
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:851: map->report_length_bits = current_bit_offset + report_size;
	mov	a,#0x0d
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	ar7,r1
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	add	a,r7
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:852: current_bit_offset += report_size;
	mov	r6,_parseHIDDeviceReport_sloc8_1_0
	mov	r7,#0x00
	mov	a,r6
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:853: used_reports++;
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
;	USBHost.c:854: DEBUG_OUT("Y: offset=%d, size=%d\n",
00153$:
;	USBHost.c:857: if (usageW == 0x38) { // Wheel
	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
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
	mov	r7,a
	cjne	r0,#0x38,00409$
	cjne	r2,#0x00,00409$
	cjne	r6,#0x00,00409$
	cjne	r7,#0x00,00409$
	sjmp	00410$
00409$:
	sjmp	00162$
00410$:
;	USBHost.c:858: usageW = 0;
	mov	dptr,#_parseHIDDeviceReport_usageW_65536_170
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:859: map->wheel_bit_offset = current_bit_offset;
	mov	a,#0x0a
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r5
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	USBHost.c:860: map->wheel_bit_size = report_size;
	mov	a,#0x0c
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	a,@dptr
	mov	_parseHIDDeviceReport_sloc8_1_0,a
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:861: map->report_length_bits = current_bit_offset + report_size;
	mov	a,#0x0d
	add	a,r4
	mov	_parseHIDDeviceReport_sloc9_1_0,a
	clr	a
	addc	a,r3
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 1),a
	mov	(_parseHIDDeviceReport_sloc9_1_0 + 2),r5
	mov	ar7,r1
	mov	a,_parseHIDDeviceReport_sloc8_1_0
	add	a,r7
	mov	dpl,_parseHIDDeviceReport_sloc9_1_0
	mov	dph,(_parseHIDDeviceReport_sloc9_1_0 + 1)
	mov	b,(_parseHIDDeviceReport_sloc9_1_0 + 2)
	lcall	__gptrput
;	USBHost.c:862: current_bit_offset += report_size;
	mov	r6,_parseHIDDeviceReport_sloc8_1_0
	mov	r7,#0x00
	mov	a,r6
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
;	USBHost.c:863: DEBUG_OUT("Wheel: offset=%d, size=%d\n",
00162$:
;	USBHost.c:868: if (used_reports > report_count) {
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jnc	00164$
;	USBHost.c:869: used_reports = report_count;
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	mov	a,r6
	movx	@dptr,a
;	USBHost.c:870: DEBUG_OUT("Error: HID report parsing error. used reports: %d, all reports: %d\n",
00164$:
;	USBHost.c:873: current_bit_offset += report_size * (report_count - used_reports);
	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_parseHIDDeviceReport_used_reports_65536_170
	movx	a,@dptr
	mov	r0,a
	mov	r2,#0x00
	mov	a,r7
	clr	c
	subb	a,r0
	mov	r7,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r6
	add	a,r1
	mov	r1,a
	mov	a,r7
	addc	a,r2
	mov	r2,a
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:875: break;
;	USBHost.c:882: case REPORT_REPORT_SIZE:
	sjmp	00174$
00167$:
;	USBHost.c:883: report_size = data;
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
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
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_report_size_65536_170
	mov	a,r0
	movx	@dptr,a
;	USBHost.c:885: break;
;	USBHost.c:886: case REPORT_REPORT_ID:
	sjmp	00174$
00168$:
;	USBHost.c:887: if (!map->report_id) {
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	jnz	00174$
;	USBHost.c:888: map->report_id = data;
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
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
	mov	r7,a
	mov	dpl,r4
	mov	dph,r3
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
;	USBHost.c:889: DEBUG_OUT("Report ID(updated): %lu\n", data);
;	USBHost.c:894: case REPORT_REPORT_COUNT:
	sjmp	00174$
00172$:
;	USBHost.c:895: report_count = data;
	mov	dptr,#_parseHIDDeviceReport_data_65536_170
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
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_report_count_65536_170
	mov	a,r0
	movx	@dptr,a
;	USBHost.c:900: }
00174$:
;	USBHost.c:902: i += tag_size + 1;
	mov	dptr,#_parseHIDDeviceReport_tag_size_65536_170
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00413$
	inc	r6
00413$:
	mov	dptr,#_parseHIDDeviceReport_i_65536_170
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r7
	add	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r2
	mov	r2,a
	mov	dptr,#_parseHIDDeviceReport_i_65536_170
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00175$
00177$:
;	USBHost.c:905: if (map->report_length_bits == 0) {
	mov	a,#0x0d
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	jnz	00186$
;	USBHost.c:906: map->report_length_bits = current_bit_offset;
	mov	dptr,#_parseHIDDeviceReport_current_bit_offset_65536_170
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
;	USBHost.c:909: DEBUG_OUT("Mouse Map: ID:%u, buttons@%d:%d, x@%d:%d, y@%d:%d, wheel@%d:%d, total_bits:%d\n",
;	USBHost.c:916: }
	ljmp	__gptrput
00186$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getHIDDeviceReport'
;------------------------------------------------------------
;CurrentDevice             Allocated with name '_getHIDDeviceReport_CurrentDevice_65536_195'
;res                       Allocated with name '_getHIDDeviceReport_res_65536_196'
;len                       Allocated with name '_getHIDDeviceReport_len_65536_196'
;i                         Allocated with name '_getHIDDeviceReport_i_65536_196'
;reportLen                 Allocated with name '_getHIDDeviceReport_reportLen_65536_196'
;------------------------------------------------------------
;	USBHost.c:918: static uint8_t getHIDDeviceReport(uint8_t CurrentDevice)
;	-----------------------------------------
;	 function getHIDDeviceReport
;	-----------------------------------------
_getHIDDeviceReport:
	mov	a,dpl
	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
	movx	@dptr,a
;	USBHost.c:924: fillTxBuffer(SetHIDIdleRequest, sizeof(SetHIDIdleRequest));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_SetHIDIdleRequest
	lcall	_fillTxBuffer
;	USBHost.c:925: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
	movx	a,@dptr
	mov	b,#0x16
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
	mov	dptr,#(_TxBuffer + 0x0004)
	movx	@dptr,a
;	USBHost.c:926: res = hostCtrlTransfer(receiveDataBuffer, &len, 0);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getHIDDeviceReport_len_65536_196
	movx	@dptr,a
	mov	a,#(_getHIDDeviceReport_len_65536_196 >> 8)
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
;	USBHost.c:928: fillTxBuffer(GetHIDReport, sizeof(GetHIDReport));
	mov	dptr,#_fillTxBuffer_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_GetHIDReport
	lcall	_fillTxBuffer
	pop	ar6
	pop	ar7
;	USBHost.c:929: ((PXUSB_SETUP_REQ)TxBuffer)->wIndexL = HIDdevice[CurrentDevice].interface;
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	dptr,#(_TxBuffer + 0x0004)
	movx	@dptr,a
;	USBHost.c:930: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthL = (uint8_t)(reportLen & 255);
	mov	r7,#0x00
	mov	dptr,#(_TxBuffer + 0x0006)
	mov	a,r7
	movx	@dptr,a
;	USBHost.c:931: ((PXUSB_SETUP_REQ)TxBuffer)->wLengthH = (uint8_t)(reportLen >> 8);
	mov	dptr,#(_TxBuffer + 0x0007)
	mov	a,#0x02
	movx	@dptr,a
;	USBHost.c:932: res = hostCtrlTransfer(receiveDataBuffer, &len, RECEIVE_BUFFER_LEN);
	mov	dptr,#_hostCtrlTransfer_PARM_2
	mov	a,#_getHIDDeviceReport_len_65536_196
	movx	@dptr,a
	mov	a,#(_getHIDDeviceReport_len_65536_196 >> 8)
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
;	USBHost.c:933: if (res != ERR_SUCCESS) {
	mov	a,dpl
	mov	r7,a
	jz	00111$
;	USBHost.c:934: return res;
	mov	dpl,r7
;	USBHost.c:937: for (i = 0; i < len; i++) {
	ret
00111$:
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	dptr,#_getHIDDeviceReport_len_65536_196
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
	inc	r6
	cjne	r6,#0x00,00105$
	inc	r7
	sjmp	00105$
00103$:
;	USBHost.c:942: parseHIDDeviceReport(receiveDataBuffer, len, CurrentDevice);
	mov	dptr,#_getHIDDeviceReport_CurrentDevice_65536_195
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_parseHIDDeviceReport_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_parseHIDDeviceReport_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_receiveDataBuffer
	lcall	_parseHIDDeviceReport
;	USBHost.c:943: return ERR_SUCCESS;
	mov	dpl,#0x00
;	USBHost.c:944: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readInterface'
;------------------------------------------------------------
;interface                 Allocated with name '_readInterface_PARM_2'
;rootHubIndex              Allocated with name '_readInterface_rootHubIndex_65536_200'
;------------------------------------------------------------
;	USBHost.c:946: static void readInterface(uint8_t rootHubIndex, PXUSB_ITF_DESCR interface)
;	-----------------------------------------
;	 function readInterface
;	-----------------------------------------
_readInterface:
;	USBHost.c:953: DEBUG_OUT("  Interface Protocol %d\n", interface->bInterfaceProtocol);
;	USBHost.c:954: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readHIDInterface'
;------------------------------------------------------------
;descriptor                Allocated with name '_readHIDInterface_PARM_2'
;interface                 Allocated with name '_readHIDInterface_interface_65536_202'
;------------------------------------------------------------
;	USBHost.c:956: static void readHIDInterface(PXUSB_ITF_DESCR interface, PXUSB_HID_DESCR descriptor)
;	-----------------------------------------
;	 function readHIDInterface
;	-----------------------------------------
_readHIDInterface:
;	USBHost.c:963: DEBUG_OUT("  TypeX 0x%02X\n", descriptor->bDescriptorTypeX);
;	USBHost.c:964: }
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
;rootHubIndex              Allocated with name '_initializeRootHubConnection_rootHubIndex_65536_204'
;retry                     Allocated with name '_initializeRootHubConnection_retry_65536_205'
;i                         Allocated with name '_initializeRootHubConnection_i_65536_205'
;res                       Allocated with name '_initializeRootHubConnection_res_65536_205'
;cfg                       Allocated with name '_initializeRootHubConnection_cfg_65536_205'
;dv_cls                    Allocated with name '_initializeRootHubConnection_dv_cls_65536_205'
;addr                      Allocated with name '_initializeRootHubConnection_addr_65536_205'
;HIDDevice                 Allocated with name '_initializeRootHubConnection_HIDDevice_65536_205'
;i                         Allocated with name '_initializeRootHubConnection_i_458752_216'
;total                     Allocated with name '_initializeRootHubConnection_total_458752_216'
;temp                      Allocated with name '_initializeRootHubConnection_temp_458752_216'
;currentInterface          Allocated with name '_initializeRootHubConnection_currentInterface_458752_216'
;interfaces                Allocated with name '_initializeRootHubConnection_interfaces_458752_216'
;desc                      Allocated with name '_initializeRootHubConnection_desc_524288_221'
;d                         Allocated with name '_initializeRootHubConnection_d_655360_223'
;hiddevice                 Allocated with name '_initializeRootHubConnection_hiddevice_720896_224'
;------------------------------------------------------------
;	USBHost.c:966: static uint8_t initializeRootHubConnection(uint8_t rootHubIndex)
;	-----------------------------------------
;	 function initializeRootHubConnection
;	-----------------------------------------
_initializeRootHubConnection:
	mov	a,dpl
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
	movx	@dptr,a
;	USBHost.c:970: __xdata uint8_t res = ERR_SUCCESS;
	mov	dptr,#_initializeRootHubConnection_res_65536_205
	clr	a
	movx	@dptr,a
;	USBHost.c:976: for (retry = 0; retry < 10; retry++) { // todo test fewer retries
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,#0x03
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	_initializeRootHubConnection_sloc2_1_0,r7
	mov	_initializeRootHubConnection_sloc1_1_0,#0x00
00145$:
;	USBHost.c:977: delay(100);
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay
;	USBHost.c:981: resetHubDevices(rootHubIndex);
	mov	dpl,_initializeRootHubConnection_sloc2_1_0
	lcall	_resetHubDevices
;	USBHost.c:982: resetRootHubPort(rootHubIndex);
	mov	dpl,_initializeRootHubConnection_sloc2_1_0
	lcall	_resetRootHubPort
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:984: for (i = 0; i < 100; i++) { // todo test fewer retries
	mov	r1,#0x00
00135$:
;	USBHost.c:985: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	lcall	_delay
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:986: if (enableRootHubPort(rootHubIndex) == ERR_SUCCESS) {
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	lcall	_enableRootHubPort
	mov	a,dpl
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00103$
;	USBHost.c:984: for (i = 0; i < 100; i++) { // todo test fewer retries
	inc	r1
	cjne	r1,#0x64,00245$
00245$:
	jc	00135$
00103$:
;	USBHost.c:991: if (i == 100) {
	cjne	r1,#0x64,00105$
;	USBHost.c:992: disableRootHubPort(rootHubIndex);
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_disableRootHubPort
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	USBHost.c:994: continue;
	ljmp	00133$
00105$:
;	USBHost.c:997: selectHubPort(rootHubIndex, 0);
	mov	dptr,#_selectHubPort_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_selectHubPort
;	USBHost.c:999: res = getDeviceDescriptor();
	lcall	_getDeviceDescriptor
	mov	r1,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_res_65536_205
	mov	a,r1
	movx	@dptr,a
;	USBHost.c:1001: if (res == ERR_SUCCESS) {
	mov	a,r1
	jz	00249$
	ljmp	00132$
00249$:
;	USBHost.c:1005: VendorProductID[rootHubIndex].idVendorL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorL;
	push	ar4
	push	ar5
	mov	a,r6
	mov	b,#0x10
	mul	ab
	mov	r0,a
	mov	r1,b
	add	a,#_VendorProductID
	mov	_initializeRootHubConnection_sloc0_1_0,a
	mov	a,r1
	addc	a,#(_VendorProductID >> 8)
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x0008)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1006: VendorProductID[rootHubIndex].idVendorH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idVendorH;
	mov	a,r0
	add	a,#_VendorProductID
	mov	r0,a
	mov	a,r1
	addc	a,#(_VendorProductID >> 8)
	mov	r1,a
	mov	a,#0x04
	add	a,r0
	mov	_initializeRootHubConnection_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x0009)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1007: VendorProductID[rootHubIndex].idProductL = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductL;
	mov	a,#0x08
	add	a,r0
	mov	_initializeRootHubConnection_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	dptr,#(_receiveDataBuffer + 0x000a)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1008: VendorProductID[rootHubIndex].idProductH = ((PXUSB_DEV_DESCR)receiveDataBuffer)->idProductH;
	mov	a,#0x0c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#(_receiveDataBuffer + 0x000b)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1009: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
	mov	dptr,#_receiveDataBuffer
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_DEBUG_OUT_USB_BUFFER
	pop	ar4
	pop	ar5
	pop	ar6
;	USBHost.c:1011: addr = rootHubIndex + ((PUSB_SETUP_REQ)SetUSBAddressRequest)->wValueL; // todo wValue always 2.. does another id work?
	mov	dptr,#(_SetUSBAddressRequest + 0x0002)
	clr	a
	movc	a,@a+dptr
	add	a,r6
	mov	_initializeRootHubConnection_sloc0_1_0,a
;	USBHost.c:1012: res = setUsbAddress(addr);
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	push	ar6
	push	ar4
	lcall	_setUsbAddress
	mov	r5,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_res_65536_205
	mov	a,r5
	movx	@dptr,a
;	USBHost.c:1013: if (res == ERR_SUCCESS) {
	mov	a,r5
	pop	ar5
	pop	ar4
	jz	00250$
	ljmp	00132$
00250$:
;	USBHost.c:1014: rootHubDevice[rootHubIndex].address = addr;
	mov	a,r6
	mov	b,#0x03
	mul	ab
	add	a,#_rootHubDevice
	mov	r2,a
	mov	a,#(_rootHubDevice >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	mov	a,_initializeRootHubConnection_sloc0_1_0
	movx	@dptr,a
;	USBHost.c:1015: res = getDeviceString();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_getDeviceString
;	USBHost.c:1017: DEBUG_OUT_USB_BUFFER(receiveDataBuffer);
	mov	dptr,#_receiveDataBuffer
	lcall	_DEBUG_OUT_USB_BUFFER
	pop	ar4
	pop	ar5
	pop	ar6
;	USBHost.c:1018: if (convertStringDescriptor(receiveDataBuffer, receiveDataBuffer, RECEIVE_BUFFER_LEN, rootHubIndex)) {
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
	push	ar4
	lcall	_convertStringDescriptor
;	USBHost.c:1021: res = getConfigurationDescriptor();
	lcall	_getConfigurationDescriptor
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_initializeRootHubConnection_res_65536_205
	mov	a,r3
	movx	@dptr,a
;	USBHost.c:1022: if (res == ERR_SUCCESS) {
	mov	a,r3
	jz	00251$
	ljmp	00132$
00251$:
;	USBHost.c:1025: PXUSB_ITF_DESCR currentInterface = 0;
	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1028: for (i = 0; i < receiveDataBuffer[2] + (receiveDataBuffer[3] << 8); i++) {
	mov	r2,#0x00
	mov	r3,#0x00
00138$:
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r1,a
	mov	_initializeRootHubConnection_sloc0_1_0,r1
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r1,a
	clr	a
	add	a,_initializeRootHubConnection_sloc0_1_0
	mov	_initializeRootHubConnection_sloc0_1_0,a
	mov	a,r1
	addc	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	ar0,r2
	mov	ar1,r3
	push	ar2
	push	ar3
	mov	r2,_initializeRootHubConnection_sloc0_1_0
	mov	r3,(_initializeRootHubConnection_sloc0_1_0 + 1)
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	pop	ar3
	pop	ar2
	jnc	00108$
	inc	r2
	cjne	r2,#0x00,00138$
	inc	r3
	sjmp	00138$
00108$:
;	USBHost.c:1033: cfg = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bConfigurationValue;
	mov	dptr,#(_receiveDataBuffer + 0x0005)
	movx	a,@dptr
;	USBHost.c:1039: res = setUsbConfig(cfg);
	mov	dpl,a
	lcall	_setUsbConfig
;	USBHost.c:1041: total = ((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthL + (((PXUSB_CFG_DESCR)receiveDataBuffer)->wTotalLengthH << 8);
	mov	dptr,#(_receiveDataBuffer + 0x0002)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#(_receiveDataBuffer + 0x0003)
	movx	a,@dptr
	mov	r1,a
	clr	a
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r2
	mov	r2,a
	mov	_initializeRootHubConnection_sloc6_1_0,r3
	mov	(_initializeRootHubConnection_sloc6_1_0 + 1),r2
;	USBHost.c:1042: for (i = 0; i < total; i++) {
	mov	r0,#0x00
	mov	r1,#0x00
00141$:
	clr	c
	mov	a,r0
	subb	a,_initializeRootHubConnection_sloc6_1_0
	mov	a,r1
	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
	jnc	00109$
;	USBHost.c:1043: temp[i] = receiveDataBuffer[i];
	mov	a,r0
	add	a,#_initializeRootHubConnection_temp_458752_216
	mov	_initializeRootHubConnection_sloc0_1_0,a
	mov	a,r1
	addc	a,#(_initializeRootHubConnection_temp_458752_216 >> 8)
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	a,r0
	add	a,#_receiveDataBuffer
	mov	dpl,a
	mov	a,r1
	addc	a,#(_receiveDataBuffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	movx	@dptr,a
;	USBHost.c:1042: for (i = 0; i < total; i++) {
	inc	r0
	cjne	r0,#0x00,00141$
	inc	r1
	sjmp	00141$
00109$:
;	USBHost.c:1046: i = ((PXUSB_CFG_DESCR)receiveDataBuffer)->bLength;
	mov	dptr,#_receiveDataBuffer
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_initializeRootHubConnection_i_458752_216
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1047: while (i < total) {
	mov	dptr,#_initializeRootHubConnection_rootHubIndex_65536_204
	movx	a,@dptr
	mov	_initializeRootHubConnection_sloc7_1_0,a
	mov	_initializeRootHubConnection_sloc4_1_0,_initializeRootHubConnection_sloc7_1_0
00124$:
	mov	dptr,#_initializeRootHubConnection_i_458752_216
	movx	a,@dptr
	mov	_initializeRootHubConnection_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	clr	c
	mov	a,_initializeRootHubConnection_sloc0_1_0
	subb	a,_initializeRootHubConnection_sloc6_1_0
	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
	subb	a,(_initializeRootHubConnection_sloc6_1_0 + 1)
	jc	00256$
	ljmp	00126$
00256$:
;	USBHost.c:1048: uint8_t __xdata *desc = &(temp[i]);
	mov	a,_initializeRootHubConnection_sloc0_1_0
	add	a,#_initializeRootHubConnection_temp_458752_216
	mov	_initializeRootHubConnection_sloc0_1_0,a
	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
	addc	a,#(_initializeRootHubConnection_temp_458752_216 >> 8)
	mov	(_initializeRootHubConnection_sloc0_1_0 + 1),a
	mov	dptr,#_initializeRootHubConnection_desc_524288_221
	mov	a,_initializeRootHubConnection_sloc0_1_0
	movx	@dptr,a
	mov	a,(_initializeRootHubConnection_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1049: switch (desc[1]) {
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	inc	dptr
	movx	a,@dptr
	mov	_initializeRootHubConnection_sloc3_1_0,a
	mov	a,#0x04
	cjne	a,_initializeRootHubConnection_sloc3_1_0,00257$
	sjmp	00110$
00257$:
	mov	a,#0x05
	cjne	a,_initializeRootHubConnection_sloc3_1_0,00258$
	sjmp	00111$
00258$:
	mov	a,#0x21
	cjne	a,_initializeRootHubConnection_sloc3_1_0,00259$
	ljmp	00119$
00259$:
	mov	a,#0x24
	cjne	a,_initializeRootHubConnection_sloc3_1_0,00260$
	ljmp	00120$
00260$:
	mov	a,#0x25
	cjne	a,_initializeRootHubConnection_sloc3_1_0,00261$
	ljmp	00121$
00261$:
	ljmp	00122$
;	USBHost.c:1050: case USB_DESCR_TYP_INTERF:
00110$:
;	USBHost.c:1052: currentInterface = ((PXUSB_ITF_DESCR)desc);
	mov	r0,_initializeRootHubConnection_sloc0_1_0
	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	USBHost.c:1053: readInterface(rootHubIndex, currentInterface);
	mov	dptr,#_readInterface_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,_initializeRootHubConnection_sloc4_1_0
	lcall	_readInterface
;	USBHost.c:1054: break;
	ljmp	00123$
;	USBHost.c:1055: case USB_DESCR_TYP_ENDP:
00111$:
;	USBHost.c:1057: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:1058: if (currentInterface->bInterfaceClass == USB_DEV_CLASS_HID) {
	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	cjne	r1,#0x03,00262$
	sjmp	00263$
00262$:
	ljmp	00123$
00263$:
;	USBHost.c:1059: PXUSB_ENDP_DESCR d = (PXUSB_ENDP_DESCR)desc;
	mov	r0,_initializeRootHubConnection_sloc0_1_0
	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
;	USBHost.c:1060: if (d->bEndpointAddress & 0x80) {
	mov	a,#0x02
	add	a,r0
	mov	_initializeRootHubConnection_sloc5_1_0,a
	clr	a
	addc	a,r1
	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	r1,a
	jb	acc.7,00264$
	ljmp	00123$
00264$:
;	USBHost.c:1062: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	mov	r0,#0x00
00143$:
;	USBHost.c:1063: if (HIDdevice[hiddevice].connected == 0) {
	mov	a,r0
	mov	b,#0x16
	mul	ab
	add	a,#_HIDdevice
	mov	r1,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	movx	a,@dptr
	jz	00114$
;	USBHost.c:1062: for (hiddevice = 0; hiddevice < MAX_HID_DEVICES; hiddevice++) {
	inc	r0
	cjne	r0,#0x08,00266$
00266$:
	jc	00143$
00114$:
;	USBHost.c:1068: HIDdevice[hiddevice].endPoint = d->bEndpointAddress;
	mov	a,r0
	mov	b,#0x16
	mul	ab
	add	a,#_HIDdevice
	mov	_initializeRootHubConnection_sloc8_1_0,a
	mov	a,#(_HIDdevice >> 8)
	addc	a,b
	mov	(_initializeRootHubConnection_sloc8_1_0 + 1),a
	mov	a,#0x03
	add	a,_initializeRootHubConnection_sloc8_1_0
	mov	r1,a
	clr	a
	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	r3,a
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	a,@dptr
	mov	dpl,r1
	mov	dph,r3
	movx	@dptr,a
;	USBHost.c:1069: HIDdevice[hiddevice].connected = 1;
	mov	dpl,_initializeRootHubConnection_sloc8_1_0
	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:1070: HIDdevice[hiddevice].interface = currentInterface->bInterfaceNumber;
	inc	a
	add	a,_initializeRootHubConnection_sloc8_1_0
	mov	_initializeRootHubConnection_sloc5_1_0,a
	clr	a
	addc	a,(_initializeRootHubConnection_sloc8_1_0 + 1)
	mov	(_initializeRootHubConnection_sloc5_1_0 + 1),a
	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,_initializeRootHubConnection_sloc5_1_0
	mov	dph,(_initializeRootHubConnection_sloc5_1_0 + 1)
	movx	@dptr,a
;	USBHost.c:1071: HIDdevice[hiddevice].rootHub = rootHubIndex;
	mov	dpl,_initializeRootHubConnection_sloc8_1_0
	mov	dph,(_initializeRootHubConnection_sloc8_1_0 + 1)
	inc	dptr
	mov	a,_initializeRootHubConnection_sloc7_1_0
	movx	@dptr,a
;	USBHost.c:1073: getHIDDeviceReport(hiddevice);
	mov	dpl,r0
	lcall	_getHIDDeviceReport
;	USBHost.c:1076: break;
;	USBHost.c:1077: case USB_DESCR_TYP_HID:
	sjmp	00123$
00119$:
;	USBHost.c:1079: readHIDInterface(currentInterface, (PXUSB_HID_DESCR)desc);
	mov	dptr,#_initializeRootHubConnection_currentInterface_458752_216
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,_initializeRootHubConnection_sloc0_1_0
	mov	r1,(_initializeRootHubConnection_sloc0_1_0 + 1)
	mov	dptr,#_readHIDInterface_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_readHIDInterface
;	USBHost.c:1080: break;
;	USBHost.c:1081: case USB_DESCR_TYP_CS_INTF:
	sjmp	00123$
00120$:
;	USBHost.c:1083: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:1084: break;
;	USBHost.c:1085: case USB_DESCR_TYP_CS_ENDP:
	sjmp	00123$
00121$:
;	USBHost.c:1087: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:1088: break;
;	USBHost.c:1089: default:
	sjmp	00123$
00122$:
;	USBHost.c:1091: DEBUG_OUT_USB_BUFFER(desc);
	mov	dpl,_initializeRootHubConnection_sloc0_1_0
	mov	dph,(_initializeRootHubConnection_sloc0_1_0 + 1)
	lcall	_DEBUG_OUT_USB_BUFFER
;	USBHost.c:1092: }
00123$:
;	USBHost.c:1093: i += desc[0];
	mov	dptr,#_initializeRootHubConnection_desc_524288_221
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_initializeRootHubConnection_i_458752_216
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r3
	addc	a,r1
	mov	r1,a
	mov	dptr,#_initializeRootHubConnection_i_458752_216
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	ljmp	00124$
00126$:
;	USBHost.c:1095: return ERR_SUCCESS;
	mov	dpl,#0x00
	ret
00132$:
;	USBHost.c:1101: rootHubDevice[rootHubIndex].status = ROOT_DEVICE_FAILED;
	mov	a,r4
	add	a,#_rootHubDevice
	mov	dpl,a
	mov	a,r5
	addc	a,#(_rootHubDevice >> 8)
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	USBHost.c:1102: setUsbSpeed(1); // TODO define speeds
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_setUsbSpeed
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00133$:
;	USBHost.c:976: for (retry = 0; retry < 10; retry++) { // todo test fewer retries
	inc	_initializeRootHubConnection_sloc1_1_0
	mov	a,#0x100 - 0x0a
	add	a,_initializeRootHubConnection_sloc1_1_0
	jc	00268$
	ljmp	00145$
00268$:
;	USBHost.c:1104: return res;
	mov	dptr,#_initializeRootHubConnection_res_65536_205
	movx	a,@dptr
;	USBHost.c:1105: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkRootHubConnections'
;------------------------------------------------------------
;res                       Allocated with name '_checkRootHubConnections_res_65536_228'
;------------------------------------------------------------
;	USBHost.c:1107: uint8_t checkRootHubConnections()
;	-----------------------------------------
;	 function checkRootHubConnections
;	-----------------------------------------
_checkRootHubConnections:
;	USBHost.c:1109: __xdata uint8_t res = ERR_SUCCESS;
	mov	dptr,#_checkRootHubConnections_res_65536_228
	clr	a
	movx	@dptr,a
;	USBHost.c:1111: if (UIF_DETECT) {
;	USBHost.c:1112: UIF_DETECT = 0;
;	assignBit
	jbc	_UIF_DETECT,00149$
	ljmp	00118$
00149$:
;	USBHost.c:1113: if (USB_HUB_ST & bUHS_H0_ATTACH) {
	mov	a,_USB_HUB_ST
	jnb	acc.3,00107$
;	USBHost.c:1114: if (rootHubDevice[0].status == ROOT_DEVICE_DISCONNECT || (UHUB0_CTRL & bUH_PORT_EN) == 0x00) {
	mov	dptr,#_rootHubDevice
	movx	a,@dptr
	jz	00101$
	mov	a,_UDEV_CTRL
	jb	acc.0,00108$
00101$:
;	USBHost.c:1115: disableRootHubPort(0); // todo really need to reset register?
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:1116: rootHubDevice[0].status = ROOT_DEVICE_CONNECTED;
	mov	dptr,#_rootHubDevice
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:1118: flash_led(); // Подключено устройство.
	lcall	_flash_led
;	USBHost.c:1119: res = initializeRootHubConnection(0);
	mov	dpl,#0x00
	lcall	_initializeRootHubConnection
	mov	a,dpl
	mov	dptr,#_checkRootHubConnections_res_65536_228
	movx	@dptr,a
	sjmp	00108$
00107$:
;	USBHost.c:1121: } else if (rootHubDevice[0].status >= ROOT_DEVICE_CONNECTED) {
	mov	dptr,#_rootHubDevice
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00153$
00153$:
	jc	00108$
;	USBHost.c:1122: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	USBHost.c:1123: disableRootHubPort(0);
	mov	dpl,#0x00
	lcall	_disableRootHubPort
;	USBHost.c:1125: flash_led(); // Отключено устройство.
	lcall	_flash_led
;	USBHost.c:1126: res = ERR_USB_DISCON;
	mov	dptr,#_checkRootHubConnections_res_65536_228
	mov	a,#0x16
	movx	@dptr,a
00108$:
;	USBHost.c:1129: if (USB_HUB_ST & bUHS_H1_ATTACH) {
	mov	a,_USB_HUB_ST
	jnb	acc.7,00115$
;	USBHost.c:1130: if (rootHubDevice[1].status == ROOT_DEVICE_DISCONNECT || (UHUB1_CTRL & bUH_PORT_EN) == 0x00) {
	mov	dptr,#(_rootHubDevice + 0x0003)
	movx	a,@dptr
	jz	00109$
	mov	a,_UHUB1_CTRL
	jb	acc.0,00118$
00109$:
;	USBHost.c:1131: disableRootHubPort(1); // todo really need to reset register?
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:1132: rootHubDevice[1].status = ROOT_DEVICE_CONNECTED;
	mov	dptr,#(_rootHubDevice + 0x0003)
	mov	a,#0x01
	movx	@dptr,a
;	USBHost.c:1134: flash_led(); // Подключено устройство.
	lcall	_flash_led
;	USBHost.c:1135: res = initializeRootHubConnection(1);
	mov	dpl,#0x01
	lcall	_initializeRootHubConnection
	mov	a,dpl
	mov	dptr,#_checkRootHubConnections_res_65536_228
	movx	@dptr,a
	sjmp	00118$
00115$:
;	USBHost.c:1137: } else if (rootHubDevice[1].status >= ROOT_DEVICE_CONNECTED) {
	mov	dptr,#(_rootHubDevice + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00158$
00158$:
	jc	00118$
;	USBHost.c:1138: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	USBHost.c:1139: disableRootHubPort(1);
	mov	dpl,#0x01
	lcall	_disableRootHubPort
;	USBHost.c:1141: flash_led(); // Отключено устройство.
	lcall	_flash_led
;	USBHost.c:1142: res = ERR_USB_DISCON;
	mov	dptr,#_checkRootHubConnections_res_65536_228
	mov	a,#0x16
	movx	@dptr,a
00118$:
;	USBHost.c:1145: return res;
	mov	dptr,#_checkRootHubConnections_res_65536_228
	movx	a,@dptr
;	USBHost.c:1146: }
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
