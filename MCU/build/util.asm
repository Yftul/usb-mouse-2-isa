;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module util
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _pinMode_PARM_3
	.globl _pinMode_PARM_2
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
	.globl _pinMode
	.globl _putchar
	.globl _getchar
	.globl _delayUs
	.globl _delay
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
_pinMode_PARM_2:
	.ds 1
_pinMode_PARM_3:
	.ds 1
_pinMode_port_65536_17:
	.ds 1
_pinMode_dir_65536_18:
	.ds 12
_pinMode_pu_65536_18:
	.ds 12
_putchar_c_65536_20:
	.ds 2
_delayUs_n_65536_23:
	.ds 2
_delay_n_65536_26:
	.ds 2
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
;Allocation info for local variables in function 'pinMode'
;------------------------------------------------------------
;pin                       Allocated with name '_pinMode_PARM_2'
;mode                      Allocated with name '_pinMode_PARM_3'
;port                      Allocated with name '_pinMode_port_65536_17'
;dir                       Allocated with name '_pinMode_dir_65536_18'
;pu                        Allocated with name '_pinMode_pu_65536_18'
;------------------------------------------------------------
;	util.c:16: void pinMode(unsigned char port, unsigned char pin, unsigned char mode)
;	-----------------------------------------
;	 function pinMode
;	-----------------------------------------
_pinMode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_pinMode_port_65536_17
	movx	@dptr,a
;	util.c:18: volatile unsigned char *dir[] = {&P0_DIR, &P1_DIR, &P2_DIR, &P3_DIR};
	mov	dptr,#_pinMode_dir_65536_18
	mov	a,#_P0_DIR
	movx	@dptr,a
	mov	a,#(_P0_DIR >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_dir_65536_18 + 0x0003)
	mov	a,#_P1_DIR
	movx	@dptr,a
	mov	a,#(_P1_DIR >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_dir_65536_18 + 0x0006)
	mov	a,#_P2_DIR
	movx	@dptr,a
	mov	a,#(_P2_DIR >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_dir_65536_18 + 0x0009)
	mov	a,#_P3_DIR
	movx	@dptr,a
	mov	a,#(_P3_DIR >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
;	util.c:19: volatile unsigned char *pu[] = {&P0_PU, &P1_PU, &P2_PU, &P3_PU};
	mov	dptr,#_pinMode_pu_65536_18
	mov	a,#_P0_PU
	movx	@dptr,a
	mov	a,#(_P0_PU >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_pu_65536_18 + 0x0003)
	mov	a,#_P1_PU
	movx	@dptr,a
	mov	a,#(_P1_PU >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_pu_65536_18 + 0x0006)
	mov	a,#_P2_PU
	movx	@dptr,a
	mov	a,#(_P2_PU >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_pinMode_pu_65536_18 + 0x0009)
	mov	a,#_P3_PU
	movx	@dptr,a
	mov	a,#(_P3_PU >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x40
	inc	dptr
	movx	@dptr,a
;	util.c:20: switch (mode)
	mov	dptr,#_pinMode_PARM_3
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x06
	jnc	00116$
	ret
00116$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00117$
	jmp	@a+dptr
00117$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
;	util.c:22: case PIN_MODE_INPUT: //Input only, no pull up
00101$:
;	util.c:23: PORT_CFG &= ~(bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	cpl	a
	anl	_PORT_CFG,a
;	util.c:24: *dir[port] &= ~(1 << pin);
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00123$
00121$:
	add	a,acc
00123$:
	djnz	b,00121$
	cpl	a
	mov	r1,a
	anl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:25: *pu[port] &= ~(1 << pin);
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	ar1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
;	util.c:26: break;
	ljmp	__gptrput
;	util.c:27: case PIN_MODE_INPUT_PULLUP: //Input only, pull up
00102$:
;	util.c:28: PORT_CFG &= ~(bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00126$
00124$:
	add	a,acc
00126$:
	djnz	b,00124$
	cpl	a
	anl	_PORT_CFG,a
;	util.c:29: *dir[port] &= ~(1 << pin);
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	mov	r1,a
	cpl	a
	anl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:30: *pu[port] |= 1 << pin;
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	ar1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
;	util.c:31: break;
	ljmp	__gptrput
;	util.c:32: case PIN_MODE_OUTPUT: //Push-pull output, high and low level strong drive
00103$:
;	util.c:33: PORT_CFG &= ~(bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00132$
00130$:
	add	a,acc
00132$:
	djnz	b,00130$
	cpl	a
	anl	_PORT_CFG,a
;	util.c:34: *dir[port] |= ~(1 << pin);
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,#(_pinMode_dir_65536_18 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,#0x01
	sjmp	00135$
00133$:
	add	a,acc
00135$:
	djnz	b,00133$
	cpl	a
	orl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	util.c:35: break;
	ljmp	__gptrput
;	util.c:36: case PIN_MODE_OUTPUT_OPEN_DRAIN: //Open drain output, no pull-up, support input
00104$:
;	util.c:37: PORT_CFG |= (bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00138$
00136$:
	add	a,acc
00138$:
	djnz	b,00136$
	orl	_PORT_CFG,a
;	util.c:38: *dir[port] &= ~(1 << pin);
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	cpl	a
	mov	r1,a
	anl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:39: *pu[port] &= ~(1 << pin);
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	ar1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
;	util.c:40: break;
	ljmp	__gptrput
;	util.c:41: case PIN_MODE_OUTPUT_OPEN_DRAIN_2CLK: //Open-drain output, no pull-up, only drives 2 clocks high when the transition output goes from low to high
00105$:
;	util.c:42: PORT_CFG |= (bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	orl	_PORT_CFG,a
;	util.c:43: *dir[port] |= 1 << pin;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00147$
00145$:
	add	a,acc
00147$:
	djnz	b,00145$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:44: *pu[port] &= ~(1 << pin);
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	cpl	a
	anl	ar4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	util.c:45: break;
	ljmp	__gptrput
;	util.c:46: case PIN_MODE_INPUT_OUTPUT_PULLUP: //Weakly bidirectional (standard 51 mode), open drain output, with pull-up
00106$:
;	util.c:47: PORT_CFG |= (bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00150$
00148$:
	add	a,acc
00150$:
	djnz	b,00148$
	orl	_PORT_CFG,a
;	util.c:48: *dir[port] &= ~(1 << pin);
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00153$
00151$:
	add	a,acc
00153$:
	djnz	b,00151$
	mov	r1,a
	cpl	a
	anl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:49: *pu[port] |= 1 << pin;
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	ar1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
;	util.c:50: break;
	ljmp	__gptrput
;	util.c:51: case PIN_MODE_INPUT_OUTPUT_PULLUP_2CLK: //Quasi-bidirectional (standard 51 mode), open-drain output, with pull-up, when the transition output is low to high, only drives 2 clocks high
00107$:
;	util.c:52: PORT_CFG |= (bP0_OC << port);
	mov	dptr,#_pinMode_port_65536_17
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00156$
00154$:
	add	a,acc
00156$:
	djnz	b,00154$
	orl	_PORT_CFG,a
;	util.c:53: *dir[port] |= 1 << pin;
	mov	a,r7
	mov	b,#0x03
	mul	ab
	mov	r7,a
	mov	r6,b
	add	a,#_pinMode_dir_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_dir_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_pinMode_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	b,r1
	inc	b
	mov	a,#0x01
	sjmp	00159$
00157$:
	add	a,acc
00159$:
	djnz	b,00157$
	mov	r1,a
	orl	ar2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	util.c:54: *pu[port] |= 1 << pin;
	mov	a,r7
	add	a,#_pinMode_pu_65536_18
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pinMode_pu_65536_18 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	orl	ar1,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
;	util.c:58: }
;	util.c:59: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_20'
;------------------------------------------------------------
;	util.c:64: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_20
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	util.c:66: while (!TI);
00101$:
;	util.c:67: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	util.c:68: SBUF = c & 0xFF;
	mov	dptr,#_putchar_c_65536_20
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_SBUF,r6
;	util.c:69: return c;
	mov	dpl,r6
	mov	dph,r7
;	util.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	util.c:72: int getchar() 
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	util.c:74: while(!RI);
00101$:
;	util.c:75: RI = 0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	util.c:76: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	util.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayUs'
;------------------------------------------------------------
;n                         Allocated with name '_delayUs_n_65536_23'
;------------------------------------------------------------
;	util.c:86: void delayUs(unsigned short n)
;	-----------------------------------------
;	 function delayUs
;	-----------------------------------------
_delayUs:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delayUs_n_65536_23
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	util.c:88: while (n) 
	mov	dptr,#_delayUs_n_65536_23
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	util.c:90: ++ SAFE_MOD;  // 2 Fsys cycles, for higher Fsys, add operation here
	inc	_SAFE_MOD
;	util.c:93: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:96: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:99: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:102: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:105: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:108: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:111: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:114: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:117: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:120: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:123: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:126: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:129: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:132: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:135: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:138: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:141: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:144: ++ SAFE_MOD;
	inc	_SAFE_MOD
;	util.c:159: --n;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	dptr,#_delayUs_n_65536_23
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_delayUs_n_65536_23
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	util.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated with name '_delay_n_65536_26'
;------------------------------------------------------------
;	util.c:170: void delay(unsigned short n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_n_65536_26
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	util.c:172: while (n) 
	mov	dptr,#_delay_n_65536_26
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	util.c:174: delayUs(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	lcall	_delayUs
	pop	ar6
	pop	ar7
;	util.c:175: --n;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	dptr,#_delay_n_65536_26
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00108$:
	mov	dptr,#_delay_n_65536_26
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	util.c:177: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
