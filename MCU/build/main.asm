;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _flash_led
	.globl _processUart
	.globl _pollHIDdevice
	.globl _resetHubDevices
	.globl _checkRootHubConnections
	.globl _initUSB_Host
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
	.globl _putchar
	.globl _getchar
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
_do_process_sloc0_1_0:
	.ds 1
_do_process_sloc1_1_0:
	.ds 2
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_clamp16_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_readWheelsettings_sloc0_1_0:
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
_opt_com_settings:
	.ds 1
_opt_wheel_enabled:
	.ds 1
_opt_rate_settings:
	.ds 1
_opt_irq_settings:
	.ds 1
_m_wheel:
	.ds 1
_spi_tx_buf:
	.ds 255
_spi_tx_buf_w:
	.ds 1
_spi_tx_buf_r:
	.ds 1
_spi_tx_buf_count:
	.ds 1
_uart_tx_buf:
	.ds 128
_uart_tx_r:
	.ds 1
_uart_tx_w:
	.ds 1
_uart_rx_buf:
	.ds 16
_uart_rx_r:
	.ds 1
_uart_rx_w:
	.ds 1
_uart_rx_buf_count:
	.ds 1
_mouse_start:
	.ds 1
_mouse_enabled:
	.ds 1
_device_init:
	.ds 1
_allow_send_data:
	.ds 1
_fatal_error:
	.ds 1
_timer0_limit:
	.ds 1
_clamp8_PARM_2:
	.ds 1
_clamp8_PARM_3:
	.ds 1
_clamp8_val_65536_47:
	.ds 2
_clamp16_PARM_2:
	.ds 2
_clamp16_PARM_3:
	.ds 2
_clamp16_val_65536_49:
	.ds 4
_timer0_isr_cnt_65536_54:
	.ds 1
_putchar_c_65536_105:
	.ds 2
_spi_send_c_65536_121:
	.ds 1
_spi_send_config_PARM_2:
	.ds 1
_spi_send_config_opt_com_65536_130:
	.ds 1
_spi_m_send_PARM_2:
	.ds 1
_spi_m_send_PARM_3:
	.ds 1
_spi_m_send_PARM_4:
	.ds 1
_spi_m_send_x_65536_132:
	.ds 1
_readCOMsettings_com_table_65536_141:
	.ds 4
_readRatesettings_rate_table_65536_145:
	.ds 4
_checkIRQ_opt_com_65536_146:
	.ds 1
_do_process___1310720013_131072_151:
	.ds 2
_do_process___1310720008_131072_151:
	.ds 2
_do_process___1310720003_131072_151:
	.ds 2
_do_process_st_m_bt_65536_151:
	.ds 1
_do_process_m_bt_65536_151:
	.ds 1
_do_process_m_cx_65536_151:
	.ds 2
_do_process_m_cy_65536_151:
	.ds 2
_do_process_m_cz_65536_151:
	.ds 2
_do_process_buttons_65536_151:
	.ds 4
_do_process_dx_65536_151:
	.ds 4
_do_process_dy_65536_151:
	.ds 4
_do_process_dw_65536_151:
	.ds 4
_do_process_val_196608_161:
	.ds 4
_do_process_val_196608_164:
	.ds 4
_do_process_val_196608_167:
	.ds 4
_do_process___2621440019_262144_157:
	.ds 1
_do_process_val_327680_176:
	.ds 2
_do_process___2621440024_262144_158:
	.ds 1
_do_process_val_327681_179:
	.ds 2
_do_process___2621450029_262145_159:
	.ds 1
_do_process_val_327682_182:
	.ds 2
_do_process_x_327682_185:
	.ds 1
_do_process_middle_b_393218_186:
	.ds 1
_init___1310720045_131072_193:
	.ds 1
_init___1310720041_131072_193:
	.ds 1
_init_com_table_262144_319:
	.ds 4
_init_rate_table_262144_325:
	.ds 4
_init_opt_com_196608_327:
	.ds 1
_init_opt_com_524288_344:
	.ds 1
_main___1310720045_262144_359:
	.ds 1
_main___1310720041_262144_359:
	.ds 1
_main_com_table_458752_484:
	.ds 4
_main_rate_table_458752_490:
	.ds 4
_main_opt_com_393216_492:
	.ds 1
_main_opt_com_720896_506:
	.ds 1
_main___1310720013_393216_517:
	.ds 2
_main___1310720008_393216_517:
	.ds 2
_main___1310720003_393216_517:
	.ds 2
_main_st_m_bt_393216_517:
	.ds 1
_main_m_bt_393216_517:
	.ds 1
_main_m_cx_393216_517:
	.ds 2
_main_m_cy_393216_517:
	.ds 2
_main_m_cz_393216_517:
	.ds 2
_main_buttons_393216_517:
	.ds 4
_main_dx_393216_517:
	.ds 4
_main_dy_393216_517:
	.ds 4
_main_dw_393216_517:
	.ds 4
_main_val_524288_519:
	.ds 4
_main_val_524288_522:
	.ds 4
_main_val_524288_525:
	.ds 4
_main___2621440019_524288_538:
	.ds 1
_main_val_655360_540:
	.ds 2
_main___2621440024_589824_542:
	.ds 1
_main_val_720896_544:
	.ds 2
_main___2621450029_655360_546:
	.ds 1
_main_val_786432_548:
	.ds 2
_main_x_786432_551:
	.ds 1
_main_middle_b_851968_552:
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0_isr
	.ds	5
	ljmp	_timer0_isr
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_isr
	.ds	5
	ljmp	_Timer2_ISR
	.ds	5
	reti
	.ds	7
	ljmp	_Timer3_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;cnt                       Allocated with name '_timer0_isr_cnt_65536_54'
;------------------------------------------------------------
;	main.c:375: static uint8_t cnt = 0;
	mov	dptr,#_timer0_isr_cnt_65536_54
	clr	a
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'do_process'
;------------------------------------------------------------
;sloc0                     Allocated with name '_do_process_sloc0_1_0'
;sloc1                     Allocated with name '_do_process_sloc1_1_0'
;__1310720013              Allocated with name '_do_process___1310720013_131072_151'
;__1310720008              Allocated with name '_do_process___1310720008_131072_151'
;__1310720003              Allocated with name '_do_process___1310720003_131072_151'
;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_151'
;m_bt                      Allocated with name '_do_process_m_bt_65536_151'
;m_cx                      Allocated with name '_do_process_m_cx_65536_151'
;m_cy                      Allocated with name '_do_process_m_cy_65536_151'
;m_cz                      Allocated with name '_do_process_m_cz_65536_151'
;buttons                   Allocated with name '_do_process_buttons_65536_151'
;dx                        Allocated with name '_do_process_dx_65536_151'
;dy                        Allocated with name '_do_process_dy_65536_151'
;dw                        Allocated with name '_do_process_dw_65536_151'
;__1310720004              Allocated with name '_do_process___1310720004_131072_160'
;__1310720005              Allocated with name '_do_process___1310720005_131072_160'
;__1310720006              Allocated with name '_do_process___1310720006_131072_160'
;val                       Allocated with name '_do_process_val_196608_161'
;min                       Allocated with name '_do_process_min_196608_161'
;max                       Allocated with name '_do_process_max_196608_161'
;__1310720009              Allocated with name '_do_process___1310720009_131072_163'
;__1310720010              Allocated with name '_do_process___1310720010_131072_163'
;__1310720011              Allocated with name '_do_process___1310720011_131072_163'
;val                       Allocated with name '_do_process_val_196608_164'
;min                       Allocated with name '_do_process_min_196608_164'
;max                       Allocated with name '_do_process_max_196608_164'
;__1310720014              Allocated with name '_do_process___1310720014_131072_166'
;__1310720015              Allocated with name '_do_process___1310720015_131072_166'
;__1310720016              Allocated with name '_do_process___1310720016_131072_166'
;val                       Allocated with name '_do_process_val_196608_167'
;min                       Allocated with name '_do_process_min_196608_167'
;max                       Allocated with name '_do_process_max_196608_167'
;_ea_state                 Allocated with name '_do_process__ea_state_262144_154'
;__2621440019              Allocated with name '_do_process___2621440019_262144_157'
;cx                        Allocated with name '_do_process_cx_196608_157'
;__2621440020              Allocated with name '_do_process___2621440020_262144_175'
;__2621440021              Allocated with name '_do_process___2621440021_262144_175'
;__2621440022              Allocated with name '_do_process___2621440022_262144_175'
;val                       Allocated with name '_do_process_val_327680_176'
;min                       Allocated with name '_do_process_min_327680_176'
;max                       Allocated with name '_do_process_max_327680_176'
;__2621440024              Allocated with name '_do_process___2621440024_262144_158'
;cy                        Allocated with name '_do_process_cy_196609_158'
;__2621450025              Allocated with name '_do_process___2621450025_262145_178'
;__2621450026              Allocated with name '_do_process___2621450026_262145_178'
;__2621450027              Allocated with name '_do_process___2621450027_262145_178'
;val                       Allocated with name '_do_process_val_327681_179'
;min                       Allocated with name '_do_process_min_327681_179'
;max                       Allocated with name '_do_process_max_327681_179'
;__2621450029              Allocated with name '_do_process___2621450029_262145_159'
;cz                        Allocated with name '_do_process_cz_196610_159'
;__2621460030              Allocated with name '_do_process___2621460030_262146_181'
;__2621460031              Allocated with name '_do_process___2621460031_262146_181'
;__2621460032              Allocated with name '_do_process___2621460032_262146_181'
;val                       Allocated with name '_do_process_val_327682_182'
;min                       Allocated with name '_do_process_min_327682_182'
;max                       Allocated with name '_do_process_max_327682_182'
;__2621460034              Allocated with name '_do_process___2621460034_262146_184'
;__2621460035              Allocated with name '_do_process___2621460035_262146_184'
;__2621460036              Allocated with name '_do_process___2621460036_262146_184'
;__2621460037              Allocated with name '_do_process___2621460037_262146_184'
;x                         Allocated with name '_do_process_x_327682_185'
;y                         Allocated with name '_do_process_y_327682_185'
;z                         Allocated with name '_do_process_z_327682_185'
;b                         Allocated with name '_do_process_b_327682_185'
;left_b                    Allocated with name '_do_process_left_b_393218_186'
;right_b                   Allocated with name '_do_process_right_b_393218_186'
;middle_b                  Allocated with name '_do_process_middle_b_393218_186'
;------------------------------------------------------------
;	main.c:685: static uint8_t st_m_bt = 0;
	mov	dptr,#_do_process_st_m_bt_65536_151
	clr	a
	movx	@dptr,a
;	main.c:690: static uint32_t buttons = 0;
	mov	dptr,#_do_process_buttons_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:691: static int32_t dx = 0;
	mov	dptr,#_do_process_dx_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:692: static int32_t dy = 0;
	mov	dptr,#_do_process_dy_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:693: static int32_t dw = 0;
	mov	dptr,#_do_process_dw_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;__1310720048              Allocated with name '_main___1310720048_262144_359'
;__1310720045              Allocated with name '_main___1310720045_262144_359'
;__1310720043              Allocated with name '_main___1310720043_262144_359'
;__1310720041              Allocated with name '_main___1310720041_262144_359'
;__1310720039              Allocated with name '_main___1310720039_262144_359'
;com_table                 Allocated with name '_main_com_table_458752_484'
;jumpers                   Allocated with name '_main_jumpers_458752_484'
;rate_table                Allocated with name '_main_rate_table_458752_490'
;jumpers                   Allocated with name '_main_jumpers_458752_490'
;__1310720046              Allocated with name '_main___1310720046_327680_491'
;opt_com                   Allocated with name '_main_opt_com_393216_492'
;_ea_state                 Allocated with name '_main__ea_state_524288_503'
;__4587520051              Allocated with name '_main___4587520051_655360_505'
;__4587520052              Allocated with name '_main___4587520052_655360_505'
;opt_com                   Allocated with name '_main_opt_com_720896_506'
;opt_irq                   Allocated with name '_main_opt_irq_720896_506'
;config_data               Allocated with name '_main_config_data_786432_507'
;__1310720013              Allocated with name '_main___1310720013_393216_517'
;__1310720008              Allocated with name '_main___1310720008_393216_517'
;__1310720003              Allocated with name '_main___1310720003_393216_517'
;st_m_bt                   Allocated with name '_main_st_m_bt_393216_517'
;m_bt                      Allocated with name '_main_m_bt_393216_517'
;m_cx                      Allocated with name '_main_m_cx_393216_517'
;m_cy                      Allocated with name '_main_m_cy_393216_517'
;m_cz                      Allocated with name '_main_m_cz_393216_517'
;buttons                   Allocated with name '_main_buttons_393216_517'
;dx                        Allocated with name '_main_dx_393216_517'
;dy                        Allocated with name '_main_dy_393216_517'
;dw                        Allocated with name '_main_dw_393216_517'
;__1310720004              Allocated with name '_main___1310720004_458752_518'
;__1310720005              Allocated with name '_main___1310720005_458752_518'
;__1310720006              Allocated with name '_main___1310720006_458752_518'
;val                       Allocated with name '_main_val_524288_519'
;min                       Allocated with name '_main_min_524288_519'
;max                       Allocated with name '_main_max_524288_519'
;__1310720009              Allocated with name '_main___1310720009_458752_521'
;__1310720010              Allocated with name '_main___1310720010_458752_521'
;__1310720011              Allocated with name '_main___1310720011_458752_521'
;val                       Allocated with name '_main_val_524288_522'
;min                       Allocated with name '_main_min_524288_522'
;max                       Allocated with name '_main_max_524288_522'
;__1310720014              Allocated with name '_main___1310720014_458752_524'
;__1310720015              Allocated with name '_main___1310720015_458752_524'
;__1310720016              Allocated with name '_main___1310720016_458752_524'
;val                       Allocated with name '_main_val_524288_525'
;min                       Allocated with name '_main_min_524288_525'
;max                       Allocated with name '_main_max_524288_525'
;_ea_state                 Allocated with name '_main__ea_state_589824_529'
;__2621440019              Allocated with name '_main___2621440019_524288_538'
;cx                        Allocated with name '_main_cx_524288_538'
;__2621440020              Allocated with name '_main___2621440020_589824_539'
;__2621440021              Allocated with name '_main___2621440021_589824_539'
;__2621440022              Allocated with name '_main___2621440022_589824_539'
;val                       Allocated with name '_main_val_655360_540'
;min                       Allocated with name '_main_min_655360_540'
;max                       Allocated with name '_main_max_655360_540'
;__2621440024              Allocated with name '_main___2621440024_589824_542'
;cy                        Allocated with name '_main_cy_589824_542'
;__2621450025              Allocated with name '_main___2621450025_655360_543'
;__2621450026              Allocated with name '_main___2621450026_655360_543'
;__2621450027              Allocated with name '_main___2621450027_655360_543'
;val                       Allocated with name '_main_val_720896_544'
;min                       Allocated with name '_main_min_720896_544'
;max                       Allocated with name '_main_max_720896_544'
;__2621450029              Allocated with name '_main___2621450029_655360_546'
;cz                        Allocated with name '_main_cz_655360_546'
;__2621460030              Allocated with name '_main___2621460030_720896_547'
;__2621460031              Allocated with name '_main___2621460031_720896_547'
;__2621460032              Allocated with name '_main___2621460032_720896_547'
;val                       Allocated with name '_main_val_786432_548'
;min                       Allocated with name '_main_min_786432_548'
;max                       Allocated with name '_main_max_786432_548'
;__2621460034              Allocated with name '_main___2621460034_720896_550'
;__2621460035              Allocated with name '_main___2621460035_720896_550'
;__2621460036              Allocated with name '_main___2621460036_720896_550'
;__2621460037              Allocated with name '_main___2621460037_720896_550'
;x                         Allocated with name '_main_x_786432_551'
;y                         Allocated with name '_main_y_786432_551'
;z                         Allocated with name '_main_z_786432_551'
;b                         Allocated with name '_main_b_786432_551'
;left_b                    Allocated with name '_main_left_b_851968_552'
;right_b                   Allocated with name '_main_right_b_851968_552'
;middle_b                  Allocated with name '_main_middle_b_851968_552'
;------------------------------------------------------------
;	main.c:685: static uint8_t st_m_bt = 0;
	mov	dptr,#_main_st_m_bt_393216_517
	clr	a
	movx	@dptr,a
;	main.c:690: static uint32_t buttons = 0;
	mov	dptr,#_main_buttons_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:691: static int32_t dx = 0;
	mov	dptr,#_main_dx_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:692: static int32_t dy = 0;
	mov	dptr,#_main_dy_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:693: static int32_t dw = 0;
	mov	dptr,#_main_dw_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'mcu_sleep'
;------------------------------------------------------------
;	main.c:341: static inline void mcu_sleep(void)
;	-----------------------------------------
;	 function mcu_sleep
;	-----------------------------------------
_mcu_sleep:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clamp8'
;------------------------------------------------------------
;min                       Allocated with name '_clamp8_PARM_2'
;max                       Allocated with name '_clamp8_PARM_3'
;val                       Allocated with name '_clamp8_val_65536_47'
;------------------------------------------------------------
;	main.c:349: static inline int8_t clamp8(int16_t val, int8_t min, int8_t max)
;	-----------------------------------------
;	 function clamp8
;	-----------------------------------------
_clamp8:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_clamp8_val_65536_47
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:351: if (val < (int16_t)min) return min;
	mov	dptr,#_clamp8_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_clamp8_val_65536_47
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	dpl,r7
	ret
00102$:
;	main.c:352: if (val > (int16_t)max) return max;
	mov	dptr,#_clamp8_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	dpl,r7
	ret
00104$:
;	main.c:353: return (int8_t)val;
	mov	dpl,r3
;	main.c:354: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clamp16'
;------------------------------------------------------------
;min                       Allocated with name '_clamp16_PARM_2'
;max                       Allocated with name '_clamp16_PARM_3'
;val                       Allocated with name '_clamp16_val_65536_49'
;sloc0                     Allocated with name '_clamp16_sloc0_1_0'
;------------------------------------------------------------
;	main.c:356: static inline int16_t clamp16(int32_t val, int16_t min, int16_t max)
;	-----------------------------------------
;	 function clamp16
;	-----------------------------------------
_clamp16:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_clamp16_val_65536_49
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:358: if (val < (int32_t)min) return min;
	mov	dptr,#_clamp16_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r6
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	dptr,#_clamp16_val_65536_49
	movx	a,@dptr
	mov	_clamp16_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_clamp16_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_clamp16_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_clamp16_sloc0_1_0 + 3),a
	clr	c
	mov	a,_clamp16_sloc0_1_0
	subb	a,r2
	mov	a,(_clamp16_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_clamp16_sloc0_1_0 + 2)
	subb	a,r4
	mov	a,(_clamp16_sloc0_1_0 + 3)
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
	mov	dpl,r6
	mov	dph,r7
	ret
00102$:
;	main.c:359: if (val > (int32_t)max) return max;
	mov	dptr,#_clamp16_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r6
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,_clamp16_sloc0_1_0
	mov	a,r3
	subb	a,(_clamp16_sloc0_1_0 + 1)
	mov	a,r4
	subb	a,(_clamp16_sloc0_1_0 + 2)
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_clamp16_sloc0_1_0 + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	dpl,r6
	mov	dph,r7
	ret
00104$:
;	main.c:360: return (int16_t)val;
	mov	r6,_clamp16_sloc0_1_0
	mov	r7,(_clamp16_sloc0_1_0 + 1)
	mov	dpl,r6
	mov	dph,r7
;	main.c:361: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int0_isr'
;------------------------------------------------------------
;	main.c:367: static void int0_isr(void) __interrupt (INT_NO_INT0)
;	-----------------------------------------
;	 function int0_isr
;	-----------------------------------------
_int0_isr:
	push	acc
	push	dpl
	push	dph
;	main.c:369: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:370: }
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;cnt                       Allocated with name '_timer0_isr_cnt_65536_54'
;------------------------------------------------------------
;	main.c:373: static void timer0_isr(void) __interrupt (INT_NO_TMR0)
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:377: if (++cnt >= timer0_limit) {
	mov	dptr,#_timer0_isr_cnt_65536_54
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_timer0_limit
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00103$
;	main.c:378: cnt = 0;
	mov	dptr,#_timer0_isr_cnt_65536_54
	clr	a
	movx	@dptr,a
;	main.c:379: allow_send_data = true;
	mov	dptr,#_allow_send_data
	inc	a
	movx	@dptr,a
00103$:
;	main.c:381: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3_ISR'
;------------------------------------------------------------
;	main.c:384: static void Timer3_ISR(void) __interrupt (INT_NO_TMR3)
;	-----------------------------------------
;	 function Timer3_ISR
;	-----------------------------------------
_Timer3_ISR:
;	main.c:386: T3_STAT |= bT3_IF_END;
	orl	_T3_STAT,#0x10
;	main.c:387: led_off();
	orl	_P4_OUT,#0x40
;	main.c:388: led_timer_stop();
	anl	_T3_CTRL,#0xfb
;	main.c:389: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_ISR'
;------------------------------------------------------------
;current_byte              Allocated with name '_Timer2_ISR_current_byte_65536_60'
;------------------------------------------------------------
;	main.c:392: static void Timer2_ISR(void) __interrupt (INT_NO_TMR2)
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:395: TF2 = 0; // Не сбрасывается автоматически
;	assignBit
	clr	_TF2
;	main.c:398: if (not_rdy_2rcv() && device_init) {
	mov	a,_P1
	jnb	acc.6,00105$
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00105$
;	main.c:400: spi_timer_slow();
;	assignBit
	clr	_TR2
	mov	_RCAP2H,#0xfe
	mov	_RCAP2L,#0x70
	mov	_TH2,_RCAP2H
	mov	_TL2,_RCAP2L
;	assignBit
	setb	_TR2
;	main.c:401: return;
	ljmp	00231$
00105$:
;	main.c:405: if (!spi_tx_buf_count) {
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	jnz	00111$
;	main.c:406: spi_timer_stop();
;	assignBit
	clr	_TR2
;	main.c:407: return;
	ljmp	00231$
00111$:
;	main.c:410: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:413: current_byte = spi_tx_buf[spi_tx_buf_r];
	mov	dptr,#_spi_tx_buf_r
	movx	a,@dptr
	add	a,#_spi_tx_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_tx_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	main.c:414: if (++spi_tx_buf_r == SPI_TX_BUFFER_SIZE) {
	mov	dptr,#_spi_tx_buf_r
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	movx	@dptr,a
	cjne	r6,#0xff,00113$
;	main.c:415: spi_tx_buf_r = 0;
	mov	dptr,#_spi_tx_buf_r
	clr	a
	movx	@dptr,a
00113$:
;	main.c:417: spi_tx_buf_count--;
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	main.c:420: SPI_SEND_PACKET(current_byte);
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.6,00118$
	orl	_P1,#0x20
	sjmp	00120$
00118$:
	anl	_P1,#0xdf
00120$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.5,00133$
	orl	_P1,#0x20
	sjmp	00135$
00133$:
	anl	_P1,#0xdf
00135$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.4,00148$
	orl	_P1,#0x20
	sjmp	00150$
00148$:
	anl	_P1,#0xdf
00150$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.3,00163$
	orl	_P1,#0x20
	sjmp	00165$
00163$:
	anl	_P1,#0xdf
00165$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.2,00178$
	orl	_P1,#0x20
	sjmp	00180$
00178$:
	anl	_P1,#0xdf
00180$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.1,00193$
	orl	_P1,#0x20
	sjmp	00195$
00193$:
	anl	_P1,#0xdf
00195$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	nop
	nop
	nop
	mov	a,r7
	jnb	acc.0,00208$
	orl	_P1,#0x20
	sjmp	00210$
00208$:
	anl	_P1,#0xdf
00210$:
	nop
	nop
	nop
	orl	_P1,#0x80
	nop
	nop
	nop
	anl	_P1,#0x7f
	anl	_P1,#0xdf
;	main.c:423: if (!spi_tx_buf_count) { // Нечего передавать, останавливаемся
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	jnz	00225$
;	main.c:424: spi_timer_stop();
;	assignBit
	clr	_TR2
;	main.c:426: spi_timer_fast();
	sjmp	00231$
00225$:
;	assignBit
	clr	_TR2
	mov	_RCAP2H,#0xff
	mov	_RCAP2L,#0x9c
	mov	_TH2,_RCAP2H
	mov	_TL2,_RCAP2L
;	assignBit
	setb	_TR2
00231$:
;	main.c:428: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_isr'
;------------------------------------------------------------
;next                      Allocated with name '_uart_isr_next_65536_100'
;------------------------------------------------------------
;	main.c:431: static void uart_isr(void) __interrupt (INT_NO_UART0)
;	-----------------------------------------
;	 function uart_isr
;	-----------------------------------------
_uart_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	main.c:434: if (TI) {
;	main.c:435: TI = 0;
;	assignBit
	jbc	_TI,00127$
	sjmp	00104$
00127$:
;	main.c:436: next = (uart_tx_r + 1) & UART_TX_MASK;
	mov	dptr,#_uart_tx_r
	movx	a,@dptr
	inc	a
	anl	a,#0x7f
	mov	r7,a
;	main.c:437: if (next != uart_tx_w) {
	mov	dptr,#_uart_tx_w
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00128$
	sjmp	00104$
00128$:
;	main.c:438: SBUF = uart_tx_buf[uart_tx_r];
	mov	dptr,#_uart_tx_r
	movx	a,@dptr
	mov	r6,a
	add	a,#_uart_tx_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uart_tx_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF,a
;	main.c:439: uart_tx_r = next;
	mov	dptr,#_uart_tx_r
	mov	a,r7
	movx	@dptr,a
00104$:
;	main.c:443: if (RI) {
;	main.c:444: RI = 0;
;	assignBit
	jbc	_RI,00129$
	sjmp	00109$
00129$:
;	main.c:445: if (uart_rx_buf_count < UART_RX_BUF_SIZE) {
	mov	dptr,#_uart_rx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00130$
00130$:
	jnc	00109$
;	main.c:446: uart_rx_buf[uart_rx_w] = SBUF;
	mov	dptr,#_uart_rx_w
	movx	a,@dptr
	add	a,#_uart_rx_buf
	mov	dpl,a
	clr	a
	addc	a,#(_uart_rx_buf >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	main.c:447: uart_rx_w = (uart_rx_w + 1) & UART_RX_MASK;
	mov	dptr,#_uart_rx_w
	movx	a,@dptr
	mov	r7,a
	inc	a
	anl	a,#0x0f
	movx	@dptr,a
;	main.c:448: uart_rx_buf_count++;
	mov	dptr,#_uart_rx_buf_count
	movx	a,@dptr
	inc	a
	movx	@dptr,a
00109$:
;	main.c:451: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_105'
;------------------------------------------------------------
;	main.c:476: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_105
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:478: while(!TI) ;
00101$:
;	main.c:479: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:480: SBUF = c & 0xFF;
	mov	dptr,#_putchar_c_65536_105
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	main.c:481: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:482: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:499: int getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:501: while(!RI) ;
00101$:
;	main.c:502: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:503: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:504: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'processUart'
;------------------------------------------------------------
;	main.c:508: void processUart()
;	-----------------------------------------
;	 function processUart
;	-----------------------------------------
_processUart:
;	main.c:518: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_led'
;------------------------------------------------------------
;	main.c:524: void flash_led(void)
;	-----------------------------------------
;	 function flash_led
;	-----------------------------------------
_flash_led:
;	main.c:526: led_on();
	anl	_P4_OUT,#0xbf
;	main.c:527: led_timer_start();
	orl	_T3_CTRL,#0x04
;	main.c:528: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;_ea_state                 Allocated with name '_spi_init__ea_state_131072_115'
;------------------------------------------------------------
;	main.c:534: static inline void spi_init(void)
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	main.c:536: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_spi_tx_buf_w
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_r
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	movx	@dptr,a
	mov	dptr,#_device_init
	movx	a,@dptr
	jnz	00102$
	orl	_P1,#0x20
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P1,#0xdf
	mov	dptr,#_opt_com_settings
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_opt_irq_settings
	movx	a,@dptr
	mov	dptr,#_spi_send_config_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_spi_send_config
	pop	ar7
00102$:
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P4_OUT,#0x7f
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:555: while (!device_init) {
00106$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00106$
;	main.c:556: mcu_sleep();
;	main.c:558: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_send'
;------------------------------------------------------------
;c                         Allocated with name '_spi_send_c_65536_121'
;_ea_state                 Allocated with name '_spi_send__ea_state_131072_124'
;------------------------------------------------------------
;	main.c:561: static void spi_send(uint8_t c)
;	-----------------------------------------
;	 function spi_send
;	-----------------------------------------
_spi_send:
	mov	a,dpl
	mov	dptr,#_spi_send_c_65536_121
	movx	@dptr,a
;	main.c:563: while (spi_tx_buf_count == SPI_TX_BUFFER_SIZE) {
00101$:
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00133$
	sjmp	00101$
00133$:
;	main.c:567: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_spi_tx_buf_w
	movx	a,@dptr
	add	a,#_spi_tx_buf
	mov	r6,a
	clr	a
	addc	a,#(_spi_tx_buf >> 8)
	mov	r5,a
	mov	dptr,#_spi_send_c_65536_121
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	mov	r6,a
	inc	a
	movx	@dptr,a
	mov	a,r6
	jnz	00108$
;	assignBit
	clr	_TR2
	mov	_RCAP2H,#0xff
	mov	_RCAP2L,#0x9c
	mov	_TH2,_RCAP2H
	mov	_TL2,_RCAP2L
;	assignBit
	setb	_TR2
00108$:
	mov	dptr,#_spi_tx_buf_w
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	movx	@dptr,a
	cjne	r6,#0xff,00110$
	mov	dptr,#_spi_tx_buf_w
	clr	a
	movx	@dptr,a
00110$:
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:575: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_send_config'
;------------------------------------------------------------
;opt_irq                   Allocated with name '_spi_send_config_PARM_2'
;opt_com                   Allocated with name '_spi_send_config_opt_com_65536_130'
;config_data               Allocated with name '_spi_send_config_config_data_65536_131'
;------------------------------------------------------------
;	main.c:578: static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq)
;	-----------------------------------------
;	 function spi_send_config
;	-----------------------------------------
_spi_send_config:
	mov	a,dpl
	mov	dptr,#_spi_send_config_opt_com_65536_130
	movx	@dptr,a
;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
	movx	a,@dptr
	anl	a,#0x03
	mov	r7,a
;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
	mov	dptr,#_spi_send_config_PARM_2
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00103$
	mov	r5,#0x04
	mov	r6,#0x00
	sjmp	00104$
00103$:
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	mov	a,r5
	orl	ar7,a
;	main.c:584: spi_send(config_data);
	mov	dpl,r7
;	main.c:585: }
	ljmp	_spi_send
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_m_send'
;------------------------------------------------------------
;y                         Allocated with name '_spi_m_send_PARM_2'
;z                         Allocated with name '_spi_m_send_PARM_3'
;b                         Allocated with name '_spi_m_send_PARM_4'
;x                         Allocated with name '_spi_m_send_x_65536_132'
;left_b                    Allocated with name '_spi_m_send_left_b_65536_133'
;right_b                   Allocated with name '_spi_m_send_right_b_65536_133'
;middle_b                  Allocated with name '_spi_m_send_middle_b_65536_133'
;------------------------------------------------------------
;	main.c:588: static inline void spi_m_send(int8_t x, int8_t y, int8_t z, uint8_t b)
;	-----------------------------------------
;	 function spi_m_send
;	-----------------------------------------
_spi_m_send:
	mov	a,dpl
	mov	dptr,#_spi_m_send_x_65536_132
	movx	@dptr,a
;	main.c:592: left_b = b & 1;
	mov	dptr,#_spi_m_send_PARM_4
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,r7
	mov	r6,a
;	main.c:593: right_b = (b >> 1) & 1;
	mov	a,r7
	rr	a
	anl	a,#0x01
	mov	r5,a
;	main.c:594: middle_b = (b >> 2) & 1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	mov	r7,a
;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r6,a
	orl	ar6,#0x40
	mov	a,r5
	swap	a
	anl	a,#0xf0
	orl	ar6,a
;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
	mov	dptr,#_spi_m_send_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r3,a
	rlc	a
	subb	a,acc
	anl	ar3,#0xc0
	clr	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	jnb	acc.3,00109$
	orl	a,#0xf0
00109$:
	mov	a,r3
	orl	ar6,a
	mov	dptr,#_spi_m_send_x_65536_132
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	rlc	a
	subb	a,acc
	anl	ar2,#0xc0
	clr	a
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x03
	jnb	acc.1,00110$
	orl	a,#0xfc
00110$:
	mov	a,r2
	orl	ar6,a
	mov	dpl,r6
	push	ar7
	push	ar5
	push	ar4
	lcall	_spi_send
	pop	ar4
;	main.c:598: spi_send(x & 0x3F);
	anl	ar4,#0x3f
	mov	dpl,r4
	lcall	_spi_send
	pop	ar5
;	main.c:599: spi_send(y & 0x3F);
	anl	ar5,#0x3f
	mov	dpl,r5
	lcall	_spi_send
	pop	ar7
;	main.c:602: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00102$
;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	dptr,#_spi_m_send_PARM_3
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x0f
	mov	a,r7
	orl	ar6,a
	mov	dpl,r6
	lcall	_spi_send
00102$:
;	main.c:606: flash_led();
;	main.c:607: }
	ljmp	_flash_led
;------------------------------------------------------------
;Allocation info for local variables in function 'send_mouse_id'
;------------------------------------------------------------
;	main.c:610: static inline void send_mouse_id(void)
;	-----------------------------------------
;	 function send_mouse_id
;	-----------------------------------------
_send_mouse_id:
;	main.c:613: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:616: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00102$
;	main.c:617: return;
	ret
00102$:
;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:622: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00104$
;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	ljmp	_spi_send
00104$:
;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
;	main.c:634: }
	ljmp	_spi_send
;------------------------------------------------------------
;Allocation info for local variables in function 'readCOMsettings'
;------------------------------------------------------------
;com_table                 Allocated with name '_readCOMsettings_com_table_65536_141'
;jumpers                   Allocated with name '_readCOMsettings_jumpers_65536_141'
;------------------------------------------------------------
;	main.c:639: static inline uint8_t readCOMsettings(void)
;	-----------------------------------------
;	 function readCOMsettings
;	-----------------------------------------
_readCOMsettings:
;	main.c:641: const uint8_t com_table[4] = {
	mov	dptr,#_readCOMsettings_com_table_65536_141
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0001)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0002)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_readCOMsettings_com_table_65536_141 + 0x0003)
	clr	a
	movx	@dptr,a
;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	a,_P2
	jnb	acc.7,00105$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00106$
00105$:
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	mov	a,r4
	orl	a,r6
;	main.c:648: return com_table[jumpers];
	add	a,#_readCOMsettings_com_table_65536_141
	mov	dpl,a
	clr	a
	addc	a,#(_readCOMsettings_com_table_65536_141 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:649: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readWheelsettings'
;------------------------------------------------------------
;	main.c:651: static inline bool readWheelsettings(void)
;	-----------------------------------------
;	 function readWheelsettings
;	-----------------------------------------
_readWheelsettings:
;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	mov  _readWheelsettings_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	main.c:654: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readRatesettings'
;------------------------------------------------------------
;rate_table                Allocated with name '_readRatesettings_rate_table_65536_145'
;jumpers                   Allocated with name '_readRatesettings_jumpers_65536_145'
;------------------------------------------------------------
;	main.c:656: static inline uint8_t readRatesettings(void)
;	-----------------------------------------
;	 function readRatesettings
;	-----------------------------------------
_readRatesettings:
;	main.c:658: const uint8_t rate_table[4] = {
	mov	dptr,#_readRatesettings_rate_table_65536_145
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_readRatesettings_rate_table_65536_145 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	a,_P1
	jnb	acc.4,00105$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00106$
00105$:
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	mov	a,r4
	orl	a,r6
;	main.c:665: return rate_table[jumpers];
	add	a,#_readRatesettings_rate_table_65536_145
	mov	dpl,a
	clr	a
	addc	a,#(_readRatesettings_rate_table_65536_145 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:666: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkIRQ'
;------------------------------------------------------------
;opt_com                   Allocated with name '_checkIRQ_opt_com_65536_146'
;------------------------------------------------------------
;	main.c:668: static inline uint8_t checkIRQ(uint8_t opt_com)
;	-----------------------------------------
;	 function checkIRQ
;	-----------------------------------------
_checkIRQ:
	mov	a,dpl
	mov	dptr,#_checkIRQ_opt_com_65536_146
	movx	@dptr,a
;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00102$
;	main.c:671: return USE_IRQX;
	mov	dpl,#0x01
	ret
00102$:
;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	dptr,#_checkIRQ_opt_com_65536_146
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
	cjne	r7,#0x02,00104$
00103$:
;	main.c:674: return USE_IRQ4;
	mov	dpl,#0x02
	ret
00104$:
;	main.c:676: return USE_IRQ3;
	mov	dpl,#0x00
;	main.c:677: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'do_process'
;------------------------------------------------------------
;sloc0                     Allocated with name '_do_process_sloc0_1_0'
;sloc1                     Allocated with name '_do_process_sloc1_1_0'
;__1310720013              Allocated with name '_do_process___1310720013_131072_151'
;__1310720008              Allocated with name '_do_process___1310720008_131072_151'
;__1310720003              Allocated with name '_do_process___1310720003_131072_151'
;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_151'
;m_bt                      Allocated with name '_do_process_m_bt_65536_151'
;m_cx                      Allocated with name '_do_process_m_cx_65536_151'
;m_cy                      Allocated with name '_do_process_m_cy_65536_151'
;m_cz                      Allocated with name '_do_process_m_cz_65536_151'
;buttons                   Allocated with name '_do_process_buttons_65536_151'
;dx                        Allocated with name '_do_process_dx_65536_151'
;dy                        Allocated with name '_do_process_dy_65536_151'
;dw                        Allocated with name '_do_process_dw_65536_151'
;__1310720004              Allocated with name '_do_process___1310720004_131072_160'
;__1310720005              Allocated with name '_do_process___1310720005_131072_160'
;__1310720006              Allocated with name '_do_process___1310720006_131072_160'
;val                       Allocated with name '_do_process_val_196608_161'
;min                       Allocated with name '_do_process_min_196608_161'
;max                       Allocated with name '_do_process_max_196608_161'
;__1310720009              Allocated with name '_do_process___1310720009_131072_163'
;__1310720010              Allocated with name '_do_process___1310720010_131072_163'
;__1310720011              Allocated with name '_do_process___1310720011_131072_163'
;val                       Allocated with name '_do_process_val_196608_164'
;min                       Allocated with name '_do_process_min_196608_164'
;max                       Allocated with name '_do_process_max_196608_164'
;__1310720014              Allocated with name '_do_process___1310720014_131072_166'
;__1310720015              Allocated with name '_do_process___1310720015_131072_166'
;__1310720016              Allocated with name '_do_process___1310720016_131072_166'
;val                       Allocated with name '_do_process_val_196608_167'
;min                       Allocated with name '_do_process_min_196608_167'
;max                       Allocated with name '_do_process_max_196608_167'
;_ea_state                 Allocated with name '_do_process__ea_state_262144_154'
;__2621440019              Allocated with name '_do_process___2621440019_262144_157'
;cx                        Allocated with name '_do_process_cx_196608_157'
;__2621440020              Allocated with name '_do_process___2621440020_262144_175'
;__2621440021              Allocated with name '_do_process___2621440021_262144_175'
;__2621440022              Allocated with name '_do_process___2621440022_262144_175'
;val                       Allocated with name '_do_process_val_327680_176'
;min                       Allocated with name '_do_process_min_327680_176'
;max                       Allocated with name '_do_process_max_327680_176'
;__2621440024              Allocated with name '_do_process___2621440024_262144_158'
;cy                        Allocated with name '_do_process_cy_196609_158'
;__2621450025              Allocated with name '_do_process___2621450025_262145_178'
;__2621450026              Allocated with name '_do_process___2621450026_262145_178'
;__2621450027              Allocated with name '_do_process___2621450027_262145_178'
;val                       Allocated with name '_do_process_val_327681_179'
;min                       Allocated with name '_do_process_min_327681_179'
;max                       Allocated with name '_do_process_max_327681_179'
;__2621450029              Allocated with name '_do_process___2621450029_262145_159'
;cz                        Allocated with name '_do_process_cz_196610_159'
;__2621460030              Allocated with name '_do_process___2621460030_262146_181'
;__2621460031              Allocated with name '_do_process___2621460031_262146_181'
;__2621460032              Allocated with name '_do_process___2621460032_262146_181'
;val                       Allocated with name '_do_process_val_327682_182'
;min                       Allocated with name '_do_process_min_327682_182'
;max                       Allocated with name '_do_process_max_327682_182'
;__2621460034              Allocated with name '_do_process___2621460034_262146_184'
;__2621460035              Allocated with name '_do_process___2621460035_262146_184'
;__2621460036              Allocated with name '_do_process___2621460036_262146_184'
;__2621460037              Allocated with name '_do_process___2621460037_262146_184'
;x                         Allocated with name '_do_process_x_327682_185'
;y                         Allocated with name '_do_process_y_327682_185'
;z                         Allocated with name '_do_process_z_327682_185'
;b                         Allocated with name '_do_process_b_327682_185'
;left_b                    Allocated with name '_do_process_left_b_393218_186'
;right_b                   Allocated with name '_do_process_right_b_393218_186'
;middle_b                  Allocated with name '_do_process_middle_b_393218_186'
;------------------------------------------------------------
;	main.c:683: static inline void do_process(void)
;	-----------------------------------------
;	 function do_process
;	-----------------------------------------
_do_process:
;	main.c:696: checkRootHubConnections();
	lcall	_checkRootHubConnections
;	main.c:699: pollHIDdevice(&buttons, &dx, &dy, &dw);
	mov	dptr,#_pollHIDdevice_PARM_2
	mov	a,#_do_process_dx_65536_151
	movx	@dptr,a
	mov	a,#(_do_process_dx_65536_151 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pollHIDdevice_PARM_3
	mov	a,#_do_process_dy_65536_151
	movx	@dptr,a
	mov	a,#(_do_process_dy_65536_151 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pollHIDdevice_PARM_4
	mov	a,#_do_process_dw_65536_151
	movx	@dptr,a
	mov	a,#(_do_process_dw_65536_151 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_buttons_65536_151
	mov	b,#0x00
	lcall	_pollHIDdevice
;	main.c:702: m_bt = (uint8_t)(buttons & 0x7);
	mov	dptr,#_do_process_buttons_65536_151
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_do_process_m_bt_65536_151
	mov	a,#0x07
	anl	a,r4
	movx	@dptr,a
;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
	mov	dptr,#_do_process_m_cx_65536_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_dx_65536_151
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x68
	mov	a,r5
	subb	a,#0xc5
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00121$
	mov	dptr,#_do_process___1310720003_131072_151
	mov	a,#0x68
	movx	@dptr,a
	mov	a,#0xc5
	inc	dptr
	movx	@dptr,a
	sjmp	00124$
00121$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x98
	subb	a,r4
	mov	a,#0x3a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
	mov	dptr,#_do_process___1310720003_131072_151
	mov	a,#0x98
	movx	@dptr,a
	mov	a,#0x3a
	inc	dptr
	movx	@dptr,a
	sjmp	00124$
00123$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_do_process___1310720003_131072_151
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
00124$:
	mov	dptr,#_do_process___1310720003_131072_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_m_cx_65536_151
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_dx_65536_151
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
	mov	dptr,#_do_process_m_cy_65536_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_dy_65536_151
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x68
	mov	a,r5
	subb	a,#0xc5
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00126$
	mov	dptr,#_do_process___1310720008_131072_151
	mov	a,#0x68
	movx	@dptr,a
	mov	a,#0xc5
	inc	dptr
	movx	@dptr,a
	sjmp	00129$
00126$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x98
	subb	a,r4
	mov	a,#0x3a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00128$
	mov	dptr,#_do_process___1310720008_131072_151
	mov	a,#0x98
	movx	@dptr,a
	mov	a,#0x3a
	inc	dptr
	movx	@dptr,a
	sjmp	00129$
00128$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_do_process___1310720008_131072_151
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
00129$:
	mov	dptr,#_do_process___1310720008_131072_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_m_cy_65536_151
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_dy_65536_151
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
	mov	dptr,#_do_process_m_cz_65536_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_dw_65536_151
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x81
	mov	a,r5
	subb	a,#0xff
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00131$
	mov	dptr,#_do_process___1310720013_131072_151
	mov	a,#0x81
	movx	@dptr,a
	mov	a,#0xff
	inc	dptr
	movx	@dptr,a
	sjmp	00134$
00131$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x80
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00133$
	mov	dptr,#_do_process___1310720013_131072_151
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00134$
00133$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_do_process___1310720013_131072_151
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
00134$:
	mov	dptr,#_do_process___1310720013_131072_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_m_cz_65536_151
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_dw_65536_151
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:708: if (allow_send_data && mouse_enabled) {
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jnz	00251$
	ret
00251$:
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00252$
	ret
00252$:
;	main.c:709: allow_send_data = false;
	mov	dptr,#_allow_send_data
	clr	a
	movx	@dptr,a
;	main.c:712: if (mouse_start) {
	mov	dptr,#_mouse_start
	movx	a,@dptr
	jnz	00253$
	ljmp	00111$
00253$:
;	main.c:713: mouse_start = false;
	mov	dptr,#_mouse_start
	clr	a
	movx	@dptr,a
;	main.c:716: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_do_process_m_cx_65536_151
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_cy_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_cz_65536_151
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_bt_65536_151
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_w
	movx	a,@dptr
	mov	dptr,#_spi_tx_buf_r
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_TR2
	orl	_P4_OUT,#0x80
	anl	_P4_OUT,#0x7f
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:613: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:616: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jz	00111$
;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:622: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00138$
;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	lcall	_spi_send
	sjmp	00111$
00138$:
;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:726: send_mouse_id();
00111$:
;	main.c:730: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
	mov	dptr,#_do_process_m_bt_65536_151
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_st_m_bt_65536_151
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00112$
	mov	dptr,#_do_process_m_cx_65536_151
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
	mov	dptr,#_do_process_m_cy_65536_151
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
	mov	dptr,#_do_process_m_cz_65536_151
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00260$
	ret
00260$:
00112$:
;	main.c:731: int8_t cx = clamp8(m_cx, -128, 127);
	mov	dptr,#_do_process_m_cx_65536_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00142$
	mov	dptr,#_do_process___2621440019_262144_157
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00145$
00142$:
	clr	c
	mov	a,#0x7f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00144$
	mov	dptr,#_do_process___2621440019_262144_157
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00145$
00144$:
	mov	dptr,#_do_process___2621440019_262144_157
	mov	a,r6
	movx	@dptr,a
00145$:
	mov	dptr,#_do_process___2621440019_262144_157
	movx	a,@dptr
;	main.c:732: m_cx -= cx;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_do_process_m_cx_65536_151
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	dptr,#_do_process_m_cx_65536_151
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:733: int8_t cy = clamp8(m_cy, -128, 127);
	mov	dptr,#_do_process_m_cy_65536_151
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x80
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00147$
	mov	dptr,#_do_process___2621440024_262144_158
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00150$
00147$:
	clr	c
	mov	a,#0x7f
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00149$
	mov	dptr,#_do_process___2621440024_262144_158
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00150$
00149$:
	mov	dptr,#_do_process___2621440024_262144_158
	mov	a,r3
	movx	@dptr,a
00150$:
	mov	dptr,#_do_process___2621440024_262144_158
	movx	a,@dptr
;	main.c:734: m_cy -= cy;
	mov	r4,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dptr,#_do_process_m_cy_65536_151
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
	mov	dptr,#_do_process_m_cy_65536_151
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:735: int8_t cz = clamp8(m_cz, -8, 7);
	mov	dptr,#_do_process_m_cz_65536_151
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,#0xf8
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00152$
	mov	dptr,#_do_process___2621450029_262145_159
	mov	a,#0xf8
	movx	@dptr,a
	sjmp	00155$
00152$:
	clr	c
	mov	a,#0x07
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00154$
	mov	dptr,#_do_process___2621450029_262145_159
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00155$
00154$:
	mov	dptr,#_do_process___2621450029_262145_159
	mov	a,r0
	movx	@dptr,a
00155$:
	mov	dptr,#_do_process___2621450029_262145_159
	movx	a,@dptr
;	main.c:736: m_cz -= cz;
	mov	_do_process_sloc0_1_0,a
	mov	_do_process_sloc1_1_0,_do_process_sloc0_1_0
	rlc	a
	subb	a,acc
	mov	(_do_process_sloc1_1_0 + 1),a
	mov	dptr,#_do_process_m_cz_65536_151
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,_do_process_sloc1_1_0
	mov	r0,a
	mov	a,r1
	subb	a,(_do_process_sloc1_1_0 + 1)
	mov	r1,a
	mov	dptr,#_do_process_m_cz_65536_151
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:738: st_m_bt = m_bt;
	mov	dptr,#_do_process_m_bt_65536_151
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_do_process_st_m_bt_65536_151
	movx	@dptr,a
;	main.c:592: left_b = b & 1;
	mov	a,#0x01
	anl	a,r1
	mov	_do_process_sloc1_1_0,a
;	main.c:593: right_b = (b >> 1) & 1;
	mov	a,r1
	rr	a
	anl	a,#0x01
	mov	r0,a
;	main.c:594: middle_b = (b >> 2) & 1;
	mov	dptr,#_do_process_middle_b_393218_186
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x01
	movx	@dptr,a
;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
	mov	a,_do_process_sloc1_1_0
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r1,a
	orl	ar1,#0x40
	mov	a,r0
	swap	a
	anl	a,#0xf0
	orl	ar1,a
;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
	anl	ar2,#0xc0
	clr	a
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	jnb	acc.3,00267$
	orl	a,#0xf0
00267$:
	mov	a,r2
	orl	ar1,a
	anl	ar5,#0xc0
	clr	a
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	xch	a,r5
	anl	a,#0x03
	jnb	acc.1,00268$
	orl	a,#0xfc
00268$:
	mov	a,r5
	orl	ar1,a
	mov	dpl,r1
	push	ar7
	push	ar4
	lcall	_spi_send
	pop	ar4
	pop	ar7
;	main.c:598: spi_send(x & 0x3F);
	anl	ar7,#0x3f
	mov	dpl,r7
	push	ar4
	lcall	_spi_send
	pop	ar4
;	main.c:599: spi_send(y & 0x3F);
	anl	ar4,#0x3f
	mov	dpl,r4
	lcall	_spi_send
;	main.c:602: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00157$
;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
	mov	dptr,#_do_process_middle_b_393218_186
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	r1,_do_process_sloc0_1_0
	anl	ar1,#0x0f
	mov	a,r7
	orl	ar1,a
	mov	dpl,r1
	lcall	_spi_send
00157$:
;	main.c:606: flash_led();
;	main.c:740: spi_m_send(cx, cy, cz, m_bt);
;	main.c:743: }
	ljmp	_flash_led
;------------------------------------------------------------
;Allocation info for local variables in function 'get_reset_source'
;------------------------------------------------------------
;	main.c:745: static inline uint8_t get_reset_source(void)
;	-----------------------------------------
;	 function get_reset_source
;	-----------------------------------------
_get_reset_source:
;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:748: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_init'
;------------------------------------------------------------
;	main.c:750: static inline void usb_init(void)
;	-----------------------------------------
;	 function usb_init
;	-----------------------------------------
_usb_init:
;	main.c:752: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:753: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:754: initUSB_Host();
;	main.c:755: }
	ljmp	_initUSB_Host
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;__1310720048              Allocated with name '_init___1310720048_131072_193'
;__1310720045              Allocated with name '_init___1310720045_131072_193'
;__1310720043              Allocated with name '_init___1310720043_131072_193'
;__1310720041              Allocated with name '_init___1310720041_131072_193'
;__1310720039              Allocated with name '_init___1310720039_131072_193'
;com_table                 Allocated with name '_init_com_table_262144_319'
;jumpers                   Allocated with name '_init_jumpers_262144_319'
;rate_table                Allocated with name '_init_rate_table_262144_325'
;jumpers                   Allocated with name '_init_jumpers_262144_325'
;__1310720046              Allocated with name '_init___1310720046_131072_326'
;opt_com                   Allocated with name '_init_opt_com_196608_327'
;_ea_state                 Allocated with name '_init__ea_state_327680_337'
;__4587520051              Allocated with name '_init___4587520051_458752_343'
;__4587520052              Allocated with name '_init___4587520052_458752_343'
;opt_com                   Allocated with name '_init_opt_com_524288_344'
;opt_irq                   Allocated with name '_init_opt_irq_524288_344'
;config_data               Allocated with name '_init_config_data_589824_345'
;------------------------------------------------------------
;	main.c:757: static inline void init(void)
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main.c:759: WDOG_COUNT = 0;
	mov	_WDOG_COUNT,#0x00
;	main.c:762: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:763: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:765: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
	mov	_PLL_CFG,#0xd8
;	main.c:766: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
	mov	_CLOCK_CFG,#0x86
;	main.c:768: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:771: delay(7);
	mov	dptr,#0x0007
	lcall	_delay
;	main.c:783: pinMode(SPI_RESOUT_PORT, SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
	mov	_PORT_CFG,_PORT_CFG
	orl	_P4_DIR,#0x80
;	main.c:784: pinMode(SPI_MOSI_PORT, SPI_MOSI_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfd
	orl	_P1_DIR,#0x20
;	main.c:785: pinMode(SPI_SCK_PORT, SPI_SCK_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfd
	orl	_P1_DIR,#0x80
;	main.c:786: pinMode(TxD_PORT, TxD_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfe
	orl	_P0_DIR,#0x08
;	main.c:788: pinMode(RxD_PORT, RxD_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xfe
	anl	_P0_DIR,#0xfb
	anl	_P0_PU,#0xfb
;	main.c:789: pinMode(DTR_PORT, DTR_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xf7
	anl	_P3_DIR,#0xfb
	anl	_P3_PU,#0xfb
;	main.c:790: pinMode(COM_SEL1_PORT, COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0xbf
	orl	_P2_PU,#0x40
;	main.c:791: pinMode(COM_SEL2_PORT, COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0x7f
	orl	_P2_PU,#0x80
;	main.c:792: pinMode(RATE_SEL1_PORT, RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xfb
	orl	_P1_PU,#0x04
;	main.c:793: pinMode(RATE_SEL2_PORT, RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xef
	orl	_P1_PU,#0x10
;	main.c:794: pinMode(WHEEL_SEL_PORT, WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xf7
	anl	_P3_DIR,#0xef
	orl	_P3_PU,#0x10
;	main.c:795: pinMode(IRQX_SEL_PORT, IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0xdf
	orl	_P2_PU,#0x20
;	main.c:796: pinMode(RxIRQ_PORT, RxIRQ_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xbf
	anl	_P1_PU,#0xbf
;	main.c:797: pinMode(PRG_PORT, PRG_PIN, PIN_MODE_INPUT_PULLUP);
	mov	_PORT_CFG,_PORT_CFG
	anl	_P4_DIR,#0xbf
	orl	_P4_PU,#0x40
;	main.c:800: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
	mov	a,_P4_IN
	jb	acc.6,00438$
;	main.c:801: runBootloader();
	mov	dpl,_runBootloader
	mov	dph,(_runBootloader + 1)
	lcall	__sdcc_call_dptr
;	main.c:803: pinMode(LED_PORT, LED_PIN, PIN_MODE_OUTPUT);
	sjmp	00448$
00438$:
	mov	_PORT_CFG,_PORT_CFG
	orl	_P4_DIR,#0x40
00448$:
;	main.c:641: const uint8_t com_table[4] = {
	mov	dptr,#_init_com_table_262144_319
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_init_com_table_262144_319 + 0x0001)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_init_com_table_262144_319 + 0x0002)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_init_com_table_262144_319 + 0x0003)
	clr	a
	movx	@dptr,a
;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00478$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00479$
00478$:
	mov	r6,#0x00
	mov	r7,#0x00
00479$:
	mov	a,_P2
	jnb	acc.7,00480$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00481$
00480$:
	mov	r4,#0x00
	mov	r5,#0x00
00481$:
	mov	a,r4
	orl	a,r6
;	main.c:648: return com_table[jumpers];
	add	a,#_init_com_table_262144_319
	mov	dpl,a
	clr	a
	addc	a,#(_init_com_table_262144_319 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:807: opt_com_settings = readCOMsettings();
	mov	dptr,#_opt_com_settings
	movx	@dptr,a
;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	mov	dptr,#_init___1310720041_131072_193
	cjne	a,#0x01,00539$
00539$:
	clr	a
	rlc	a
	movx	@dptr,a
;	main.c:808: opt_wheel_enabled = readWheelsettings();
	mov	dptr,#_init___1310720041_131072_193
	movx	a,@dptr
	mov	dptr,#_opt_wheel_enabled
	movx	@dptr,a
;	main.c:658: const uint8_t rate_table[4] = {
	mov	dptr,#_init_rate_table_262144_325
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_init_rate_table_262144_325 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_init_rate_table_262144_325 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_init_rate_table_262144_325 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00482$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00483$
00482$:
	mov	r6,#0x00
	mov	r7,#0x00
00483$:
	mov	a,_P1
	jnb	acc.4,00484$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00485$
00484$:
	mov	r4,#0x00
	mov	r5,#0x00
00485$:
	mov	a,r4
	orl	a,r6
;	main.c:665: return rate_table[jumpers];
	add	a,#_init_rate_table_262144_325
	mov	dpl,a
	clr	a
	addc	a,#(_init_rate_table_262144_325 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:809: opt_rate_settings = readRatesettings();
	mov	r7,a
	mov	dptr,#_opt_rate_settings
	movx	@dptr,a
;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
	mov	dptr,#_opt_com_settings
	movx	a,@dptr
	mov	r6,a
;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00458$
;	main.c:671: return USE_IRQX;
	mov	dptr,#_init___1310720045_131072_193
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00462$
00458$:
;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	a,r6
	jz	00460$
	cjne	r6,#0x02,00461$
00460$:
;	main.c:674: return USE_IRQ4;
	mov	dptr,#_init___1310720045_131072_193
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00462$
00461$:
;	main.c:676: return USE_IRQ3;
	mov	dptr,#_init___1310720045_131072_193
	clr	a
	movx	@dptr,a
;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
00462$:
	mov	dptr,#_init___1310720045_131072_193
	movx	a,@dptr
	mov	dptr,#_opt_irq_settings
	movx	@dptr,a
;	main.c:813: timer0_limit = (uint8_t)((2000UL + opt_rate_settings) / (opt_rate_settings << 1U));
	mov	ar3,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	a,#0xd0
	add	a,r3
	mov	r3,a
	mov	a,#0x07
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r2,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_timer0_limit
	mov	a,r4
	movx	@dptr,a
;	main.c:820: TH0 = (uint8_t)(TIMER0_CONST >> 8);
	mov	_TH0,#0xf0
;	main.c:821: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
	mov	_TL0,#0x60
;	main.c:822: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:823: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:827: TR2 = 0;         // останов таймера
;	assignBit
	clr	_TR2
;	main.c:828: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
	mov	_T2MOD,#0x00
;	main.c:829: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
	mov	_RCAP2H,#0xff
;	main.c:830: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
	mov	_RCAP2L,#0x9c
;	main.c:831: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	main.c:832: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	main.c:833: TF2 = 0;
;	assignBit
	clr	_TF2
;	main.c:837: T3_COUNT = 0;           // Сброс счетчика
	clr	a
	mov	((_T3_COUNT >> 0) & 0xFF),a
	mov	((_T3_COUNT >> 8) & 0xFF),a
;	main.c:838: T3_END = LED_CONST;     // Установка периода
;	1-genFromRTrack replaced	mov	((_T3_END >> 0) & 0xFF),#0x00
	mov	((_T3_END >> 0) & 0xFF),a
	mov	((_T3_END >> 8) & 0xFF),#0xfa
;	main.c:839: T3_CTRL |= bT3_CLR_ALL;     // Сброс всех регистров
	orl	_T3_CTRL,#0x02
;	main.c:840: T3_CTRL &= ~bT3_CLR_ALL;    // Завершение сброса
	anl	_T3_CTRL,#0xfd
;	main.c:841: T3_SETUP |= bT3_IE_END;     // Разрешение прерывания по достижению END
	orl	_T3_SETUP,#0x80
;	main.c:842: T3_CTRL &= ~bT3_MOD_CAP;    // Режим таймера (не захвата)
	anl	_T3_CTRL,#0xfe
;	main.c:846: IT0 = 1; // Активен по спаду сигнала
;	assignBit
	setb	_IT0
;	main.c:847: IE0 = 0; // Сброс флага прерывания INT0
;	assignBit
	clr	_IE0
;	main.c:850: uart_tx_r = 0; uart_tx_w = 0;
	mov	dptr,#_uart_tx_r
	clr	a
	movx	@dptr,a
	mov	dptr,#_uart_tx_w
	movx	@dptr,a
;	main.c:851: uart_rx_r = 0; uart_rx_w = 0;
	mov	dptr,#_uart_rx_r
	movx	@dptr,a
	mov	dptr,#_uart_rx_w
	movx	@dptr,a
;	main.c:852: uart_rx_buf_count = 0;
	mov	dptr,#_uart_rx_buf_count
	movx	@dptr,a
;	main.c:855: PIN_FUNC |= bUART0_PIN_X;
	orl	_PIN_FUNC,#0x10
;	main.c:858: SM0 = 0;
;	assignBit
	clr	_SM0
;	main.c:859: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
;	assignBit
	setb	_SM1
;	main.c:860: SM2 = 0;
;	assignBit
	clr	_SM2
;	main.c:861: REN = 1; // Разрешить прием
;	assignBit
	setb	_REN
;	main.c:864: PCON |= SMOD;
	orl	_PCON,#0x80
;	main.c:867: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
	mov	a,#0x0f
	anl	a,_TMOD
	orl	a,#0x20
	mov	_TMOD,a
;	main.c:868: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Источник системная частота
	orl	_T2MOD,#0xa0
;	main.c:872: TH1 = (uint8_t)(256 - ((((uint32_t)FREQ_SYS / 8) / UART_BAUDRATE + 1) / 2));
	mov	_TH1,#0xe6
;	main.c:874: TR1 = 1; // Запуск Timer1
;	assignBit
	setb	_TR1
;	main.c:877: TI = 1;
;	assignBit
	setb	_TI
;	main.c:881: ET0 = 1; // Разрешить прерывания таймера 0
;	assignBit
	setb	_ET0
;	main.c:882: ET2 = 1; // Разрешить прерывания таймера 2
;	assignBit
	setb	_ET2
;	main.c:883: IE_TMR3 = 1; // Разрешить прерывания таймера 3
;	assignBit
	setb	_IE_TMR3
;	main.c:884: EX0 = 1; // Разрешить прерывания INT0
;	assignBit
	setb	_EX0
;	main.c:885: ES = 0;  // Разрешить прерывание UART
;	assignBit
	clr	_ES
;	main.c:887: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:888: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:890: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
	mov	_WAKE_CTRL,#0xc3
;	main.c:897: GLOBAL_CFG |= bWDOG_EN;
	orl	_GLOBAL_CFG,#0x01
;	main.c:899: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:905: switch (get_reset_source()) {
	mov	r7,a
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00453$
	mov	a,r6
	add	a,r6
;	main.c:906: case 0b10: // 10 - Переполнение watchdog
	mov	dptr,#00547$
	jmp	@a+dptr
00547$:
	sjmp	00452$
	sjmp	00452$
	sjmp	00449$
	sjmp	00450$
00449$:
;	main.c:907: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:908: break;
;	main.c:909: case 0b11: // 11 - Аппаратный сброс
	sjmp	00453$
00450$:
;	main.c:910: led_on(); // Сигнализируем исправность светодиода
	anl	_P4_OUT,#0xbf
;	main.c:911: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:914: case 0b01: // 01 - Сброс при включении питания
00452$:
;	main.c:915: delay(50); // Ждём окончания переходных процессов
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:916: led_off();
	orl	_P4_OUT,#0x40
;	main.c:917: device_init = false;
	mov	dptr,#_device_init
	clr	a
	movx	@dptr,a
;	main.c:919: }
00453$:
;	main.c:922: EA = 1;
;	assignBit
	setb	_EA
;	main.c:536: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_spi_tx_buf_w
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_r
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	movx	@dptr,a
	mov	dptr,#_device_init
	movx	a,@dptr
	jnz	00465$
	orl	_P1,#0x20
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P1,#0xdf
	mov	dptr,#_opt_irq_settings
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_opt_com_settings
	movx	a,@dptr
;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
	anl	a,#0x03
	mov	r5,a
;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
	cjne	r6,#0x01,00486$
	mov	r4,#0x04
	mov	r6,#0x00
	sjmp	00487$
00486$:
	mov	r4,#0x00
	mov	r6,#0x00
00487$:
	mov	a,r4
	orl	ar5,a
;	main.c:584: spi_send(config_data);
	mov	dpl,r5
	push	ar7
	lcall	_spi_send
	pop	ar7
;	main.c:536: CRITICAL_SECTION (
00465$:
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P4_OUT,#0x7f
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:555: while (!device_init) {
00469$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00469$
;	main.c:752: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:753: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:754: initUSB_Host();
	lcall	_initUSB_Host
;	main.c:930: m_wheel = opt_wheel_enabled;
	mov	dptr,#_opt_wheel_enabled
	movx	a,@dptr
	mov	dptr,#_m_wheel
	movx	@dptr,a
;	main.c:931: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:932: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:933: fatal_error = false;
	mov	dptr,#_fatal_error
	clr	a
	movx	@dptr,a
;	main.c:934: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;__1310720048              Allocated with name '_main___1310720048_262144_359'
;__1310720045              Allocated with name '_main___1310720045_262144_359'
;__1310720043              Allocated with name '_main___1310720043_262144_359'
;__1310720041              Allocated with name '_main___1310720041_262144_359'
;__1310720039              Allocated with name '_main___1310720039_262144_359'
;com_table                 Allocated with name '_main_com_table_458752_484'
;jumpers                   Allocated with name '_main_jumpers_458752_484'
;rate_table                Allocated with name '_main_rate_table_458752_490'
;jumpers                   Allocated with name '_main_jumpers_458752_490'
;__1310720046              Allocated with name '_main___1310720046_327680_491'
;opt_com                   Allocated with name '_main_opt_com_393216_492'
;_ea_state                 Allocated with name '_main__ea_state_524288_503'
;__4587520051              Allocated with name '_main___4587520051_655360_505'
;__4587520052              Allocated with name '_main___4587520052_655360_505'
;opt_com                   Allocated with name '_main_opt_com_720896_506'
;opt_irq                   Allocated with name '_main_opt_irq_720896_506'
;config_data               Allocated with name '_main_config_data_786432_507'
;__1310720013              Allocated with name '_main___1310720013_393216_517'
;__1310720008              Allocated with name '_main___1310720008_393216_517'
;__1310720003              Allocated with name '_main___1310720003_393216_517'
;st_m_bt                   Allocated with name '_main_st_m_bt_393216_517'
;m_bt                      Allocated with name '_main_m_bt_393216_517'
;m_cx                      Allocated with name '_main_m_cx_393216_517'
;m_cy                      Allocated with name '_main_m_cy_393216_517'
;m_cz                      Allocated with name '_main_m_cz_393216_517'
;buttons                   Allocated with name '_main_buttons_393216_517'
;dx                        Allocated with name '_main_dx_393216_517'
;dy                        Allocated with name '_main_dy_393216_517'
;dw                        Allocated with name '_main_dw_393216_517'
;__1310720004              Allocated with name '_main___1310720004_458752_518'
;__1310720005              Allocated with name '_main___1310720005_458752_518'
;__1310720006              Allocated with name '_main___1310720006_458752_518'
;val                       Allocated with name '_main_val_524288_519'
;min                       Allocated with name '_main_min_524288_519'
;max                       Allocated with name '_main_max_524288_519'
;__1310720009              Allocated with name '_main___1310720009_458752_521'
;__1310720010              Allocated with name '_main___1310720010_458752_521'
;__1310720011              Allocated with name '_main___1310720011_458752_521'
;val                       Allocated with name '_main_val_524288_522'
;min                       Allocated with name '_main_min_524288_522'
;max                       Allocated with name '_main_max_524288_522'
;__1310720014              Allocated with name '_main___1310720014_458752_524'
;__1310720015              Allocated with name '_main___1310720015_458752_524'
;__1310720016              Allocated with name '_main___1310720016_458752_524'
;val                       Allocated with name '_main_val_524288_525'
;min                       Allocated with name '_main_min_524288_525'
;max                       Allocated with name '_main_max_524288_525'
;_ea_state                 Allocated with name '_main__ea_state_589824_529'
;__2621440019              Allocated with name '_main___2621440019_524288_538'
;cx                        Allocated with name '_main_cx_524288_538'
;__2621440020              Allocated with name '_main___2621440020_589824_539'
;__2621440021              Allocated with name '_main___2621440021_589824_539'
;__2621440022              Allocated with name '_main___2621440022_589824_539'
;val                       Allocated with name '_main_val_655360_540'
;min                       Allocated with name '_main_min_655360_540'
;max                       Allocated with name '_main_max_655360_540'
;__2621440024              Allocated with name '_main___2621440024_589824_542'
;cy                        Allocated with name '_main_cy_589824_542'
;__2621450025              Allocated with name '_main___2621450025_655360_543'
;__2621450026              Allocated with name '_main___2621450026_655360_543'
;__2621450027              Allocated with name '_main___2621450027_655360_543'
;val                       Allocated with name '_main_val_720896_544'
;min                       Allocated with name '_main_min_720896_544'
;max                       Allocated with name '_main_max_720896_544'
;__2621450029              Allocated with name '_main___2621450029_655360_546'
;cz                        Allocated with name '_main_cz_655360_546'
;__2621460030              Allocated with name '_main___2621460030_720896_547'
;__2621460031              Allocated with name '_main___2621460031_720896_547'
;__2621460032              Allocated with name '_main___2621460032_720896_547'
;val                       Allocated with name '_main_val_786432_548'
;min                       Allocated with name '_main_min_786432_548'
;max                       Allocated with name '_main_max_786432_548'
;__2621460034              Allocated with name '_main___2621460034_720896_550'
;__2621460035              Allocated with name '_main___2621460035_720896_550'
;__2621460036              Allocated with name '_main___2621460036_720896_550'
;__2621460037              Allocated with name '_main___2621460037_720896_550'
;x                         Allocated with name '_main_x_786432_551'
;y                         Allocated with name '_main_y_786432_551'
;z                         Allocated with name '_main_z_786432_551'
;b                         Allocated with name '_main_b_786432_551'
;left_b                    Allocated with name '_main_left_b_851968_552'
;right_b                   Allocated with name '_main_right_b_851968_552'
;middle_b                  Allocated with name '_main_middle_b_851968_552'
;------------------------------------------------------------
;	main.c:936: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:759: WDOG_COUNT = 0;
	mov	_WDOG_COUNT,#0x00
;	main.c:762: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:763: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:765: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
	mov	_PLL_CFG,#0xd8
;	main.c:766: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
	mov	_CLOCK_CFG,#0x86
;	main.c:768: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:771: delay(7);
	mov	dptr,#0x0007
	lcall	_delay
;	main.c:783: pinMode(SPI_RESOUT_PORT, SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
	mov	_PORT_CFG,_PORT_CFG
	orl	_P4_DIR,#0x80
;	main.c:784: pinMode(SPI_MOSI_PORT, SPI_MOSI_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfd
	orl	_P1_DIR,#0x20
;	main.c:785: pinMode(SPI_SCK_PORT, SPI_SCK_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfd
	orl	_P1_DIR,#0x80
;	main.c:786: pinMode(TxD_PORT, TxD_PIN, PIN_MODE_OUTPUT);
	anl	_PORT_CFG,#0xfe
	orl	_P0_DIR,#0x08
;	main.c:788: pinMode(RxD_PORT, RxD_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xfe
	anl	_P0_DIR,#0xfb
	anl	_P0_PU,#0xfb
;	main.c:789: pinMode(DTR_PORT, DTR_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xf7
	anl	_P3_DIR,#0xfb
	anl	_P3_PU,#0xfb
;	main.c:790: pinMode(COM_SEL1_PORT, COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0xbf
	orl	_P2_PU,#0x40
;	main.c:791: pinMode(COM_SEL2_PORT, COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0x7f
	orl	_P2_PU,#0x80
;	main.c:792: pinMode(RATE_SEL1_PORT, RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xfb
	orl	_P1_PU,#0x04
;	main.c:793: pinMode(RATE_SEL2_PORT, RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xef
	orl	_P1_PU,#0x10
;	main.c:794: pinMode(WHEEL_SEL_PORT, WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xf7
	anl	_P3_DIR,#0xef
	orl	_P3_PU,#0x10
;	main.c:795: pinMode(IRQX_SEL_PORT, IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	anl	_PORT_CFG,#0xfb
	anl	_P2_DIR,#0xdf
	orl	_P2_PU,#0x20
;	main.c:796: pinMode(RxIRQ_PORT, RxIRQ_PIN, PIN_MODE_INPUT);
	anl	_PORT_CFG,#0xfd
	anl	_P1_DIR,#0xbf
	anl	_P1_PU,#0xbf
;	main.c:797: pinMode(PRG_PORT, PRG_PIN, PIN_MODE_INPUT_PULLUP);
	mov	_PORT_CFG,_PORT_CFG
	anl	_P4_DIR,#0xbf
	orl	_P4_PU,#0x40
;	main.c:800: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
	mov	a,_P4_IN
	jb	acc.6,00451$
;	main.c:801: runBootloader();
	mov	dpl,_runBootloader
	mov	dph,(_runBootloader + 1)
	lcall	__sdcc_call_dptr
;	main.c:803: pinMode(LED_PORT, LED_PIN, PIN_MODE_OUTPUT);
	sjmp	00459$
00451$:
	mov	_PORT_CFG,_PORT_CFG
	orl	_P4_DIR,#0x40
00459$:
;	main.c:641: const uint8_t com_table[4] = {
	mov	dptr,#_main_com_table_458752_484
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_main_com_table_458752_484 + 0x0001)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_com_table_458752_484 + 0x0002)
	dec	a
	movx	@dptr,a
	mov	dptr,#(_main_com_table_458752_484 + 0x0003)
	clr	a
	movx	@dptr,a
;	main.c:645: uint8_t jumpers = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00552$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00553$
00552$:
	mov	r6,#0x00
	mov	r7,#0x00
00553$:
	mov	a,_P2
	jnb	acc.7,00554$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00555$
00554$:
	mov	r4,#0x00
	mov	r5,#0x00
00555$:
	mov	a,r4
	orl	a,r6
;	main.c:648: return com_table[jumpers];
	add	a,#_main_com_table_458752_484
	mov	dpl,a
	clr	a
	addc	a,#(_main_com_table_458752_484 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:807: opt_com_settings = readCOMsettings();
	mov	dptr,#_opt_com_settings
	movx	@dptr,a
;	main.c:653: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	mov	dptr,#_main___1310720041_262144_359
	cjne	a,#0x01,00721$
00721$:
	clr	a
	rlc	a
	movx	@dptr,a
;	main.c:808: opt_wheel_enabled = readWheelsettings();
	mov	dptr,#_main___1310720041_262144_359
	movx	a,@dptr
	mov	dptr,#_opt_wheel_enabled
	movx	@dptr,a
;	main.c:658: const uint8_t rate_table[4] = {
	mov	dptr,#_main_rate_table_458752_490
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_main_rate_table_458752_490 + 0x0001)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_rate_table_458752_490 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_rate_table_458752_490 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	main.c:662: uint8_t jumpers = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00556$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00557$
00556$:
	mov	r6,#0x00
	mov	r7,#0x00
00557$:
	mov	a,_P1
	jnb	acc.4,00558$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00559$
00558$:
	mov	r4,#0x00
	mov	r5,#0x00
00559$:
	mov	a,r4
	orl	a,r6
;	main.c:665: return rate_table[jumpers];
	add	a,#_main_rate_table_458752_490
	mov	dpl,a
	clr	a
	addc	a,#(_main_rate_table_458752_490 >> 8)
	mov	dph,a
	movx	a,@dptr
;	main.c:809: opt_rate_settings = readRatesettings();
	mov	r7,a
	mov	dptr,#_opt_rate_settings
	movx	@dptr,a
;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
	mov	dptr,#_opt_com_settings
	movx	a,@dptr
	mov	r6,a
;	main.c:670: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00464$
;	main.c:671: return USE_IRQX;
	mov	dptr,#_main___1310720045_262144_359
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00468$
00464$:
;	main.c:673: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	a,r6
	jz	00466$
	cjne	r6,#0x02,00467$
00466$:
;	main.c:674: return USE_IRQ4;
	mov	dptr,#_main___1310720045_262144_359
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00468$
00467$:
;	main.c:676: return USE_IRQ3;
	mov	dptr,#_main___1310720045_262144_359
	clr	a
	movx	@dptr,a
;	main.c:810: opt_irq_settings = checkIRQ(opt_com_settings);
00468$:
	mov	dptr,#_main___1310720045_262144_359
	movx	a,@dptr
	mov	dptr,#_opt_irq_settings
	movx	@dptr,a
;	main.c:813: timer0_limit = (uint8_t)((2000UL + opt_rate_settings) / (opt_rate_settings << 1U));
	mov	ar3,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	a,#0xd0
	add	a,r3
	mov	r3,a
	mov	a,#0x07
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r2,#0x00
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_timer0_limit
	mov	a,r4
	movx	@dptr,a
;	main.c:820: TH0 = (uint8_t)(TIMER0_CONST >> 8);
	mov	_TH0,#0xf0
;	main.c:821: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
	mov	_TL0,#0x60
;	main.c:822: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:823: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:827: TR2 = 0;         // останов таймера
;	assignBit
	clr	_TR2
;	main.c:828: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
	mov	_T2MOD,#0x00
;	main.c:829: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
	mov	_RCAP2H,#0xff
;	main.c:830: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
	mov	_RCAP2L,#0x9c
;	main.c:831: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	main.c:832: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	main.c:833: TF2 = 0;
;	assignBit
	clr	_TF2
;	main.c:837: T3_COUNT = 0;           // Сброс счетчика
	clr	a
	mov	((_T3_COUNT >> 0) & 0xFF),a
	mov	((_T3_COUNT >> 8) & 0xFF),a
;	main.c:838: T3_END = LED_CONST;     // Установка периода
;	1-genFromRTrack replaced	mov	((_T3_END >> 0) & 0xFF),#0x00
	mov	((_T3_END >> 0) & 0xFF),a
	mov	((_T3_END >> 8) & 0xFF),#0xfa
;	main.c:839: T3_CTRL |= bT3_CLR_ALL;     // Сброс всех регистров
	orl	_T3_CTRL,#0x02
;	main.c:840: T3_CTRL &= ~bT3_CLR_ALL;    // Завершение сброса
	anl	_T3_CTRL,#0xfd
;	main.c:841: T3_SETUP |= bT3_IE_END;     // Разрешение прерывания по достижению END
	orl	_T3_SETUP,#0x80
;	main.c:842: T3_CTRL &= ~bT3_MOD_CAP;    // Режим таймера (не захвата)
	anl	_T3_CTRL,#0xfe
;	main.c:846: IT0 = 1; // Активен по спаду сигнала
;	assignBit
	setb	_IT0
;	main.c:847: IE0 = 0; // Сброс флага прерывания INT0
;	assignBit
	clr	_IE0
;	main.c:850: uart_tx_r = 0; uart_tx_w = 0;
	mov	dptr,#_uart_tx_r
	clr	a
	movx	@dptr,a
	mov	dptr,#_uart_tx_w
	movx	@dptr,a
;	main.c:851: uart_rx_r = 0; uart_rx_w = 0;
	mov	dptr,#_uart_rx_r
	movx	@dptr,a
	mov	dptr,#_uart_rx_w
	movx	@dptr,a
;	main.c:852: uart_rx_buf_count = 0;
	mov	dptr,#_uart_rx_buf_count
	movx	@dptr,a
;	main.c:855: PIN_FUNC |= bUART0_PIN_X;
	orl	_PIN_FUNC,#0x10
;	main.c:858: SM0 = 0;
;	assignBit
	clr	_SM0
;	main.c:859: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
;	assignBit
	setb	_SM1
;	main.c:860: SM2 = 0;
;	assignBit
	clr	_SM2
;	main.c:861: REN = 1; // Разрешить прием
;	assignBit
	setb	_REN
;	main.c:864: PCON |= SMOD;
	orl	_PCON,#0x80
;	main.c:867: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
	mov	a,#0x0f
	anl	a,_TMOD
	orl	a,#0x20
	mov	_TMOD,a
;	main.c:868: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Источник системная частота
	orl	_T2MOD,#0xa0
;	main.c:872: TH1 = (uint8_t)(256 - ((((uint32_t)FREQ_SYS / 8) / UART_BAUDRATE + 1) / 2));
	mov	_TH1,#0xe6
;	main.c:874: TR1 = 1; // Запуск Timer1
;	assignBit
	setb	_TR1
;	main.c:877: TI = 1;
;	assignBit
	setb	_TI
;	main.c:881: ET0 = 1; // Разрешить прерывания таймера 0
;	assignBit
	setb	_ET0
;	main.c:882: ET2 = 1; // Разрешить прерывания таймера 2
;	assignBit
	setb	_ET2
;	main.c:883: IE_TMR3 = 1; // Разрешить прерывания таймера 3
;	assignBit
	setb	_IE_TMR3
;	main.c:884: EX0 = 1; // Разрешить прерывания INT0
;	assignBit
	setb	_EX0
;	main.c:885: ES = 0;  // Разрешить прерывание UART
;	assignBit
	clr	_ES
;	main.c:887: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:888: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:890: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
	mov	_WAKE_CTRL,#0xc3
;	main.c:897: GLOBAL_CFG |= bWDOG_EN;
	orl	_GLOBAL_CFG,#0x01
;	main.c:899: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:747: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:905: switch (get_reset_source()) {
	mov	r7,a
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00474$
	mov	a,r6
	add	a,r6
;	main.c:906: case 0b10: // 10 - Переполнение watchdog
	mov	dptr,#00729$
	jmp	@a+dptr
00729$:
	sjmp	00472$
	sjmp	00472$
	sjmp	00470$
	sjmp	00471$
00470$:
;	main.c:907: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:908: break;
;	main.c:909: case 0b11: // 11 - Аппаратный сброс
	sjmp	00474$
00471$:
;	main.c:910: led_on(); // Сигнализируем исправность светодиода
	anl	_P4_OUT,#0xbf
;	main.c:911: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:914: case 0b01: // 01 - Сброс при включении питания
00472$:
;	main.c:915: delay(50); // Ждём окончания переходных процессов
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:916: led_off();
	orl	_P4_OUT,#0x40
;	main.c:917: device_init = false;
	mov	dptr,#_device_init
	clr	a
	movx	@dptr,a
;	main.c:919: }
00474$:
;	main.c:922: EA = 1;
;	assignBit
	setb	_EA
;	main.c:536: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_spi_tx_buf_w
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_r
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	movx	@dptr,a
	mov	dptr,#_device_init
	movx	a,@dptr
	jnz	00477$
	orl	_P1,#0x20
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P1,#0xdf
	mov	dptr,#_opt_irq_settings
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_opt_com_settings
	movx	a,@dptr
;	main.c:581: config_data |= (opt_com & 0x03); // Base adress
	anl	a,#0x03
	mov	r5,a
;	main.c:582: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
	cjne	r6,#0x01,00560$
	mov	r4,#0x04
	mov	r6,#0x00
	sjmp	00561$
00560$:
	mov	r4,#0x00
	mov	r6,#0x00
00561$:
	mov	a,r4
	orl	ar5,a
;	main.c:584: spi_send(config_data);
	mov	dpl,r5
	push	ar7
	lcall	_spi_send
	pop	ar7
;	main.c:536: CRITICAL_SECTION (
00477$:
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P4_OUT,#0x7f
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:555: while (!device_init) {
00481$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00481$
;	main.c:752: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:753: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:754: initUSB_Host();
	lcall	_initUSB_Host
;	main.c:930: m_wheel = opt_wheel_enabled;
	mov	dptr,#_opt_wheel_enabled
	movx	a,@dptr
	mov	dptr,#_m_wheel
	movx	@dptr,a
;	main.c:931: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:932: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:933: fatal_error = false;
	mov	dptr,#_fatal_error
	clr	a
	movx	@dptr,a
;	main.c:944: DEBUG_OUT("IRQ select: %c\n", opt_irq_settings?(opt_irq_settings==1?'X':'4'):'3');
00548$:
;	main.c:947: if (!fatal_error) {
	mov	dptr,#_fatal_error
	movx	a,@dptr
;	main.c:948: WDOG_COUNT = 0;
	jnz	00102$
	mov	_WDOG_COUNT,a
00102$:
;	main.c:951: if (!mouse_enabled) { // Мышь выключена
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00106$
;	main.c:953: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:954: if (mouse_enabled) {
	movx	a,@dptr
	jz	00106$
;	main.c:956: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:957: allow_send_data = true;
	mov	dptr,#_allow_send_data
	movx	@dptr,a
00106$:
;	main.c:961: processUart();
	lcall	_processUart
;	main.c:696: checkRootHubConnections();
	lcall	_checkRootHubConnections
;	main.c:699: pollHIDdevice(&buttons, &dx, &dy, &dw);
	mov	dptr,#_pollHIDdevice_PARM_2
	mov	a,#_main_dx_393216_517
	movx	@dptr,a
	mov	a,#(_main_dx_393216_517 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pollHIDdevice_PARM_3
	mov	a,#_main_dy_393216_517
	movx	@dptr,a
	mov	a,#(_main_dy_393216_517 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pollHIDdevice_PARM_4
	mov	a,#_main_dw_393216_517
	movx	@dptr,a
	mov	a,#(_main_dw_393216_517 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_buttons_393216_517
	mov	b,#0x00
	lcall	_pollHIDdevice
;	main.c:702: m_bt = (uint8_t)(buttons & 0x7);
	mov	dptr,#_main_buttons_393216_517
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_main_m_bt_393216_517
	mov	a,#0x07
	anl	a,r4
	movx	@dptr,a
;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
	mov	dptr,#_main_m_cx_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_dx_393216_517
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x68
	mov	a,r5
	subb	a,#0xc5
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00489$
	mov	dptr,#_main___1310720003_393216_517
	mov	a,#0x68
	movx	@dptr,a
	mov	a,#0xc5
	inc	dptr
	movx	@dptr,a
	sjmp	00492$
00489$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x98
	subb	a,r4
	mov	a,#0x3a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00491$
	mov	dptr,#_main___1310720003_393216_517
	mov	a,#0x98
	movx	@dptr,a
	mov	a,#0x3a
	inc	dptr
	movx	@dptr,a
	sjmp	00492$
00491$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_main___1310720003_393216_517
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:703: m_cx = clamp16(dx + m_cx, -15000, 15000); dx = 0;
00492$:
	mov	dptr,#_main___1310720003_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_m_cx_393216_517
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_dx_393216_517
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
	mov	dptr,#_main_m_cy_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_dy_393216_517
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x68
	mov	a,r5
	subb	a,#0xc5
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00494$
	mov	dptr,#_main___1310720008_393216_517
	mov	a,#0x68
	movx	@dptr,a
	mov	a,#0xc5
	inc	dptr
	movx	@dptr,a
	sjmp	00497$
00494$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x98
	subb	a,r4
	mov	a,#0x3a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00496$
	mov	dptr,#_main___1310720008_393216_517
	mov	a,#0x98
	movx	@dptr,a
	mov	a,#0x3a
	inc	dptr
	movx	@dptr,a
	sjmp	00497$
00496$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_main___1310720008_393216_517
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:704: m_cy = clamp16(dy + m_cy, -15000, 15000); dy = 0;
00497$:
	mov	dptr,#_main___1310720008_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_m_cy_393216_517
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_dy_393216_517
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
	mov	dptr,#_main_m_cz_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_dw_393216_517
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r6
	mov	a,r7
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
;	main.c:358: if (val < (int32_t)min) return min;
	clr	c
	mov	a,r4
	subb	a,#0x81
	mov	a,r5
	subb	a,#0xff
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00499$
	mov	dptr,#_main___1310720013_393216_517
	mov	a,#0x81
	movx	@dptr,a
	mov	a,#0xff
	inc	dptr
	movx	@dptr,a
	sjmp	00502$
00499$:
;	main.c:359: if (val > (int32_t)max) return max;
	clr	c
	mov	a,#0x80
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00501$
	mov	dptr,#_main___1310720013_393216_517
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00502$
00501$:
;	main.c:360: return (int16_t)val;
	mov	dptr,#_main___1310720013_393216_517
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:705: m_cz = clamp16(dw + m_cz, -127, 128); dw = 0;
00502$:
	mov	dptr,#_main___1310720013_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_m_cz_393216_517
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_dw_393216_517
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:708: if (allow_send_data && mouse_enabled) {
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jnz	00743$
	ljmp	00546$
00743$:
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00744$
	ljmp	00546$
00744$:
;	main.c:709: allow_send_data = false;
	mov	dptr,#_allow_send_data
	clr	a
	movx	@dptr,a
;	main.c:712: if (mouse_start) {
	mov	dptr,#_mouse_start
	movx	a,@dptr
	jnz	00745$
	ljmp	00520$
00745$:
;	main.c:713: mouse_start = false;
	mov	dptr,#_mouse_start
	clr	a
	movx	@dptr,a
;	main.c:716: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_main_m_cx_393216_517
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_cy_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_cz_393216_517
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_bt_393216_517
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_w
	movx	a,@dptr
	mov	dptr,#_spi_tx_buf_r
	movx	@dptr,a
	mov	dptr,#_spi_tx_buf_count
	clr	a
	movx	@dptr,a
;	assignBit
	clr	_TR2
	orl	_P4_OUT,#0x80
	anl	_P4_OUT,#0x7f
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:613: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:616: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jz	00520$
;	main.c:621: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:622: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00516$
;	main.c:623: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:624: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:625: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:626: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:627: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	lcall	_spi_send
	sjmp	00520$
00516$:
;	main.c:629: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:630: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:631: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:632: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:726: send_mouse_id();
00520$:
;	main.c:730: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
	mov	dptr,#_main_m_bt_393216_517
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_st_m_bt_393216_517
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00542$
	mov	dptr,#_main_m_cx_393216_517
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00542$
	mov	dptr,#_main_m_cy_393216_517
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00542$
	mov	dptr,#_main_m_cz_393216_517
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00752$
	ljmp	00546$
00752$:
00542$:
;	main.c:731: int8_t cx = clamp8(m_cx, -128, 127);
	mov	dptr,#_main_m_cx_393216_517
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x80
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00525$
	mov	dptr,#_main___2621440019_524288_538
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00528$
00525$:
	clr	c
	mov	a,#0x7f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00527$
	mov	dptr,#_main___2621440019_524288_538
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00528$
00527$:
	mov	dptr,#_main___2621440019_524288_538
	mov	a,r6
	movx	@dptr,a
00528$:
	mov	dptr,#_main___2621440019_524288_538
	movx	a,@dptr
;	main.c:732: m_cx -= cx;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_main_m_cx_393216_517
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	dptr,#_main_m_cx_393216_517
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:733: int8_t cy = clamp8(m_cy, -128, 127);
	mov	dptr,#_main_m_cy_393216_517
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0x80
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00530$
	mov	dptr,#_main___2621440024_589824_542
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00533$
00530$:
	clr	c
	mov	a,#0x7f
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00532$
	mov	dptr,#_main___2621440024_589824_542
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00533$
00532$:
	mov	dptr,#_main___2621440024_589824_542
	mov	a,r3
	movx	@dptr,a
00533$:
	mov	dptr,#_main___2621440024_589824_542
	movx	a,@dptr
;	main.c:734: m_cy -= cy;
	mov	r4,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dptr,#_main_m_cy_393216_517
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
	mov	dptr,#_main_m_cy_393216_517
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:735: int8_t cz = clamp8(m_cz, -8, 7);
	mov	dptr,#_main_m_cz_393216_517
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,#0xf8
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00535$
	mov	dptr,#_main___2621450029_655360_546
	mov	a,#0xf8
	movx	@dptr,a
	sjmp	00538$
00535$:
	clr	c
	mov	a,#0x07
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00537$
	mov	dptr,#_main___2621450029_655360_546
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00538$
00537$:
	mov	dptr,#_main___2621450029_655360_546
	mov	a,r0
	movx	@dptr,a
00538$:
	mov	dptr,#_main___2621450029_655360_546
	movx	a,@dptr
;	main.c:736: m_cz -= cz;
	mov	_main_sloc0_1_0,a
	mov	_main_sloc1_1_0,_main_sloc0_1_0
	rlc	a
	subb	a,acc
	mov	(_main_sloc1_1_0 + 1),a
	mov	dptr,#_main_m_cz_393216_517
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,_main_sloc1_1_0
	mov	r0,a
	mov	a,r1
	subb	a,(_main_sloc1_1_0 + 1)
	mov	r1,a
	mov	dptr,#_main_m_cz_393216_517
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:738: st_m_bt = m_bt;
	mov	dptr,#_main_m_bt_393216_517
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_main_st_m_bt_393216_517
	movx	@dptr,a
;	main.c:592: left_b = b & 1;
	mov	a,#0x01
	anl	a,r1
	mov	_main_sloc1_1_0,a
;	main.c:593: right_b = (b >> 1) & 1;
	mov	a,r1
	rr	a
	anl	a,#0x01
	mov	r0,a
;	main.c:594: middle_b = (b >> 2) & 1;
	mov	dptr,#_main_middle_b_851968_552
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x01
	movx	@dptr,a
;	main.c:596: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
	mov	a,_main_sloc1_1_0
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r1,a
	orl	ar1,#0x40
	mov	a,r0
	swap	a
	anl	a,#0xf0
	orl	ar1,a
;	main.c:597: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
	anl	ar2,#0xc0
	clr	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	jnb	acc.3,00759$
	orl	a,#0xf0
00759$:
	mov	a,r2
	orl	ar1,a
	anl	ar5,#0xc0
	clr	a
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	xch	a,r5
	anl	a,#0x03
	jnb	acc.1,00760$
	orl	a,#0xfc
00760$:
	mov	a,r5
	orl	ar1,a
	mov	dpl,r1
	push	ar7
	push	ar4
	lcall	_spi_send
	pop	ar4
	pop	ar7
;	main.c:598: spi_send(x & 0x3F);
	anl	ar7,#0x3f
	mov	dpl,r7
	push	ar4
	lcall	_spi_send
	pop	ar4
;	main.c:599: spi_send(y & 0x3F);
	anl	ar4,#0x3f
	mov	dpl,r4
	lcall	_spi_send
;	main.c:602: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00540$
;	main.c:603: spi_send((middle_b << 4) | (z & 0x0F));
	mov	dptr,#_main_middle_b_851968_552
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	r1,_main_sloc0_1_0
	anl	ar1,#0x0f
	mov	a,r7
	orl	ar1,a
	mov	dpl,r1
	lcall	_spi_send
00540$:
;	main.c:606: flash_led();
	lcall	_flash_led
;	main.c:963: do_process();
00546$:
;	main.c:965: if (fatal_error ||
	mov	dptr,#_fatal_error
	movx	a,@dptr
	jz	00762$
	ljmp	00548$
00762$:
;	main.c:966: (!allow_send_data &&
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jz	00763$
	ljmp	00548$
00763$:
;	main.c:967: !spi_tx_buf_count)) {
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
;	main.c:968: mcu_sleep();
;	main.c:971: }
	ljmp	00548$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
