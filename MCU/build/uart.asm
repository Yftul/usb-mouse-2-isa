;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _printf
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
	.globl _rxPos
	.globl _sendHidPollMSG_PARM_10
	.globl _sendHidPollMSG_PARM_9
	.globl _sendHidPollMSG_PARM_8
	.globl _sendHidPollMSG_PARM_7
	.globl _sendHidPollMSG_PARM_6
	.globl _sendHidPollMSG_PARM_5
	.globl _sendHidPollMSG_PARM_4
	.globl _sendHidPollMSG_PARM_3
	.globl _sendHidPollMSG_PARM_2
	.globl _sendProtocolMSG_PARM_6
	.globl _sendProtocolMSG_PARM_5
	.globl _sendProtocolMSG_PARM_4
	.globl _sendProtocolMSG_PARM_3
	.globl _sendProtocolMSG_PARM_2
	.globl _uartRxBuff
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
	.globl _runBootloader
	.globl _initUART0
	.globl _processUart
	.globl _sendProtocolMSG
	.globl _sendHidPollMSG
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
_runBootloader::
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
_uartRxBuff::
	.ds 64
_initUART0_baud_65536_45:
	.ds 4
_sendProtocolMSG_PARM_2:
	.ds 2
_sendProtocolMSG_PARM_3:
	.ds 1
_sendProtocolMSG_PARM_4:
	.ds 1
_sendProtocolMSG_PARM_5:
	.ds 1
_sendProtocolMSG_PARM_6:
	.ds 2
_sendProtocolMSG_msgtype_65536_54:
	.ds 1
_sendHidPollMSG_PARM_2:
	.ds 2
_sendHidPollMSG_PARM_3:
	.ds 1
_sendHidPollMSG_PARM_4:
	.ds 1
_sendHidPollMSG_PARM_5:
	.ds 1
_sendHidPollMSG_PARM_6:
	.ds 2
_sendHidPollMSG_PARM_7:
	.ds 1
_sendHidPollMSG_PARM_8:
	.ds 1
_sendHidPollMSG_PARM_9:
	.ds 1
_sendHidPollMSG_PARM_10:
	.ds 1
_sendHidPollMSG_msgtype_65536_58:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_rxPos::
	.ds 1
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
;	uart.c:9: FunctionReference runBootloader = (FunctionReference)0xF400;
	mov	_runBootloader,#0x00
	mov	(_runBootloader + 1),#0xf4
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
;Allocation info for local variables in function 'initUART0'
;------------------------------------------------------------
;baud                      Allocated with name '_initUART0_baud_65536_45'
;reload                    Allocated with name '_initUART0_reload_65536_46'
;------------------------------------------------------------
;	uart.c:19: void initUART0(unsigned long baud)
;	-----------------------------------------
;	 function initUART0
;	-----------------------------------------
_initUART0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_initUART0_baud_65536_45
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
;	uart.c:24: PORT_CFG |= bP0_OC;        // Разрешить альтернативную функцию на порту P0
	orl	_PORT_CFG,#0x01
;	uart.c:25: P0_DIR  |= bTXD_;          // TXD как выход
	orl	_P0_DIR,#0x08
;	uart.c:26: P0_PU   |= bTXD_ | bRXD_;  // Включить подтяжку на TXD и RXD
	orl	_P0_PU,#0x0c
;	uart.c:27: PIN_FUNC |= bUART0_PIN_X;  // Выбрать линию UART0 на альтернативных пинах
	orl	_PIN_FUNC,#0x10
;	uart.c:30: SM0 = 0;
;	assignBit
	clr	_SM0
;	uart.c:31: SM1 = 1; // UART mode 1: 8 data bits, 1 stop
;	assignBit
	setb	_SM1
;	uart.c:32: SM2 = 0;
;	assignBit
	clr	_SM2
;	uart.c:33: REN = 1; // Разрешить прием
;	assignBit
	setb	_REN
;	uart.c:36: PCON |= SMOD;
	orl	_PCON,#0x80
;	uart.c:40: reload = (((unsigned long)FREQ_SYS / 8) / baud + 1) / 2;
	mov	dptr,#_initUART0_baud_65536_45
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
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x8d80
	mov	b,#0x5b
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
00103$:
	mov	a,r5
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
;	uart.c:43: TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
	mov	a,#0x0f
	anl	a,_TMOD
	orl	a,#0x20
	mov	_TMOD,a
;	uart.c:44: T2MOD |= bTMR_CLK | bT1_CLK;                                 // Выбрать системную частоту
	orl	_T2MOD,#0xa0
;	uart.c:45: TH1 = (uint8_t)(256 - reload);                               // Установка перезагрузки
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_TH1,r4
;	uart.c:46: TR1 = 1;                                                     // Запускаем Timer1
;	assignBit
	setb	_TR1
;	uart.c:49: TI = 1; // Установить флаг, чтобы первое отправление не зависло
;	assignBit
	setb	_TI
;	uart.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'processUart'
;------------------------------------------------------------
;i                         Allocated with name '_processUart_i_262144_50'
;------------------------------------------------------------
;	uart.c:52: void processUart(){
;	-----------------------------------------
;	 function processUart
;	-----------------------------------------
_processUart:
;	uart.c:53: while(RI){
00110$:
;	uart.c:54: RI=0;
;	assignBit
	jbc	_RI,00147$
	ret
00147$:
;	uart.c:55: uartRxBuff[rxPos] = SBUF;
	mov	dptr,#_rxPos
	movx	a,@dptr
	add	a,#_uartRxBuff
	mov	dpl,a
	clr	a
	addc	a,#(_uartRxBuff >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	uart.c:56: if (uartRxBuff[rxPos]=='\n' || rxPos >= 64) {
	mov	dptr,#_rxPos
	movx	a,@dptr
	mov	r7,a
	add	a,#_uartRxBuff
	mov	dpl,a
	clr	a
	addc	a,#(_uartRxBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0a,00148$
	sjmp	00121$
00148$:
	cjne	r7,#0x40,00149$
00149$:
	jnc	00150$
	ljmp	00107$
00150$:
;	uart.c:57: for (uint8_t i = 0; i < rxPos; i ++ ) {
00121$:
	mov	r6,#0x00
00114$:
	mov	dptr,#_rxPos
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00101$
;	uart.c:58: printf( "0x%02X ",uartRxBuff[i]);
	mov	a,r6
	add	a,#_uartRxBuff
	mov	dpl,a
	clr	a
	addc	a,#(_uartRxBuff >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
;	uart.c:57: for (uint8_t i = 0; i < rxPos; i ++ ) {
	inc	r6
	sjmp	00114$
00101$:
;	uart.c:60: printf("\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	uart.c:61: if(uartRxBuff[0]=='k') {
	mov	dptr,#_uartRxBuff
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x6b,00105$
;	uart.c:64: if(uartRxBuff[1]=='b')
	mov	dptr,#(_uartRxBuff + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x62,00105$
;	uart.c:65: runBootloader();
	mov	dpl,_runBootloader
	mov	dph,(_runBootloader + 1)
	lcall	__sdcc_call_dptr
00105$:
;	uart.c:67: rxPos=0;
	mov	dptr,#_rxPos
	clr	a
	movx	@dptr,a
	ljmp	00110$
00107$:
;	uart.c:69: rxPos++;
	mov	dptr,#_rxPos
	mov	a,r7
	inc	a
	movx	@dptr,a
;	uart.c:72: }
	ljmp	00110$
;------------------------------------------------------------
;Allocation info for local variables in function 'sendProtocolMSG'
;------------------------------------------------------------
;length                    Allocated with name '_sendProtocolMSG_PARM_2'
;type                      Allocated with name '_sendProtocolMSG_PARM_3'
;device                    Allocated with name '_sendProtocolMSG_PARM_4'
;endpoint                  Allocated with name '_sendProtocolMSG_PARM_5'
;msgbuffer                 Allocated with name '_sendProtocolMSG_PARM_6'
;msgtype                   Allocated with name '_sendProtocolMSG_msgtype_65536_54'
;i                         Allocated with name '_sendProtocolMSG_i_65536_55'
;------------------------------------------------------------
;	uart.c:74: void sendProtocolMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer){
;	-----------------------------------------
;	 function sendProtocolMSG
;	-----------------------------------------
_sendProtocolMSG:
	mov	a,dpl
	mov	dptr,#_sendProtocolMSG_msgtype_65536_54
	movx	@dptr,a
;	uart.c:76: putchar(0xFE);
	mov	dptr,#0x00fe
	lcall	_putchar
;	uart.c:77: putchar(length);
	mov	dptr,#_sendProtocolMSG_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	uart.c:78: putchar((unsigned char)(length>>8));
	mov	ar5,r7
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	_putchar
;	uart.c:79: putchar(msgtype);
	mov	dptr,#_sendProtocolMSG_msgtype_65536_54
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:80: putchar(type);
	mov	dptr,#_sendProtocolMSG_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:81: putchar(device);
	mov	dptr,#_sendProtocolMSG_PARM_4
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:82: putchar(endpoint);
	mov	dptr,#_sendProtocolMSG_PARM_5
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:83: putchar(0);
	mov	dptr,#0x0000
	lcall	_putchar
;	uart.c:84: putchar(0);
	mov	dptr,#0x0000
	lcall	_putchar
;	uart.c:85: putchar(0);
	mov	dptr,#0x0000
	lcall	_putchar
;	uart.c:86: putchar(0);
	mov	dptr,#0x0000
	lcall	_putchar
	pop	ar6
	pop	ar7
;	uart.c:87: for (i = 0; i < length; i++)
	mov	dptr,#_sendProtocolMSG_PARM_6
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00101$
;	uart.c:89: putchar(msgbuffer[i]);
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.c:87: for (i = 0; i < length; i++)
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00101$:
;	uart.c:91: putchar('\n');
	mov	dptr,#0x000a
;	uart.c:92: }
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'sendHidPollMSG'
;------------------------------------------------------------
;length                    Allocated with name '_sendHidPollMSG_PARM_2'
;type                      Allocated with name '_sendHidPollMSG_PARM_3'
;device                    Allocated with name '_sendHidPollMSG_PARM_4'
;endpoint                  Allocated with name '_sendHidPollMSG_PARM_5'
;msgbuffer                 Allocated with name '_sendHidPollMSG_PARM_6'
;idVendorL                 Allocated with name '_sendHidPollMSG_PARM_7'
;idVendorH                 Allocated with name '_sendHidPollMSG_PARM_8'
;idProductL                Allocated with name '_sendHidPollMSG_PARM_9'
;idProductH                Allocated with name '_sendHidPollMSG_PARM_10'
;msgtype                   Allocated with name '_sendHidPollMSG_msgtype_65536_58'
;i                         Allocated with name '_sendHidPollMSG_i_65536_59'
;------------------------------------------------------------
;	uart.c:94: void sendHidPollMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer,unsigned char idVendorL,unsigned char idVendorH,unsigned char idProductL,unsigned char idProductH){
;	-----------------------------------------
;	 function sendHidPollMSG
;	-----------------------------------------
_sendHidPollMSG:
	mov	a,dpl
	mov	dptr,#_sendHidPollMSG_msgtype_65536_58
	movx	@dptr,a
;	uart.c:96: putchar(0xFE);    
	mov	dptr,#0x00fe
	lcall	_putchar
;	uart.c:97: putchar(length);
	mov	dptr,#_sendHidPollMSG_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	uart.c:98: putchar((unsigned char)(length>>8));
	mov	ar5,r7
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	_putchar
;	uart.c:99: putchar(msgtype);
	mov	dptr,#_sendHidPollMSG_msgtype_65536_58
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:100: putchar(type);
	mov	dptr,#_sendHidPollMSG_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:101: putchar(device);
	mov	dptr,#_sendHidPollMSG_PARM_4
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:102: putchar(endpoint);
	mov	dptr,#_sendHidPollMSG_PARM_5
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:103: putchar(idVendorL);
	mov	dptr,#_sendHidPollMSG_PARM_7
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:104: putchar(idVendorH);
	mov	dptr,#_sendHidPollMSG_PARM_8
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:105: putchar(idProductL);
	mov	dptr,#_sendHidPollMSG_PARM_9
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
;	uart.c:106: putchar(idProductH);
	mov	dptr,#_sendHidPollMSG_PARM_10
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_putchar
	pop	ar6
	pop	ar7
;	uart.c:107: for (i = 0; i < length; i++)
	mov	dptr,#_sendHidPollMSG_PARM_6
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00101$
;	uart.c:109: putchar(msgbuffer[i]);
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_putchar
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.c:107: for (i = 0; i < length; i++)
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00101$:
;	uart.c:111: putchar('\n');
	mov	dptr,#0x000a
;	uart.c:112: }
	ljmp	_putchar
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "0x%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__rxPos:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
