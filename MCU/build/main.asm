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
	.globl _mouse_write
	.globl _flash_led
	.globl _Timer2_ISR
	.globl _Timer3_ISR
	.globl _timer0_isr
	.globl _int0_isr
	.globl _initUART0
	.globl _processUart
	.globl _pollHIDdevice
	.globl _resetHubDevices
	.globl _checkRootHubConnections
	.globl _initUSB_Host
	.globl _pinMode
	.globl _delay
	.globl _delayUs
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
	.globl _timer0_limit
	.globl _fatal_error
	.globl _allow_send_data
	.globl _device_init
	.globl _mouse_enabled
	.globl _mouse_start
	.globl _spi_tx_buf_count
	.globl _spi_tx_buf_r
	.globl _spi_tx_buf_w
	.globl _spi_tx_buf
	.globl _mouse_rx_buf_count
	.globl _mouse_rx_buf_r
	.globl _mouse_rx_buf_w
	.globl _mouse_rx_buf
	.globl _m_wheel
	.globl _opt_irq_settings
	.globl _opt_rate_settings
	.globl _opt_wheel_enabled
	.globl _opt_com_settings
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
_opt_com_settings::
	.ds 1
_opt_wheel_enabled::
	.ds 1
_opt_rate_settings::
	.ds 1
_opt_irq_settings::
	.ds 1
_m_wheel::
	.ds 1
_mouse_rx_buf::
	.ds 16
_mouse_rx_buf_w::
	.ds 1
_mouse_rx_buf_r::
	.ds 1
_mouse_rx_buf_count::
	.ds 1
_spi_tx_buf::
	.ds 255
_spi_tx_buf_w::
	.ds 1
_spi_tx_buf_r::
	.ds 1
_spi_tx_buf_count::
	.ds 1
_mouse_start::
	.ds 1
_mouse_enabled::
	.ds 1
_device_init::
	.ds 1
_allow_send_data::
	.ds 1
_fatal_error::
	.ds 1
_timer0_limit::
	.ds 1
_clamp_PARM_2:
	.ds 1
_clamp_PARM_3:
	.ds 1
_clamp_val_65536_51:
	.ds 2
_timer0_isr_cnt_65536_56:
	.ds 1
_mouse_write_c_65536_105:
	.ds 1
_mouse_read_data_65536_111:
	.ds 1
_spi_send_c_65536_123:
	.ds 1
_spi_send_config_PARM_2:
	.ds 1
_spi_send_config_opt_com_65536_132:
	.ds 1
_spi_m_send_PARM_2:
	.ds 1
_spi_m_send_PARM_3:
	.ds 1
_spi_m_send_PARM_4:
	.ds 1
_spi_m_send_x_65536_134:
	.ds 1
_do_process_st_m_bt_65536_143:
	.ds 1
_do_process_dr_ctr_65536_143:
	.ds 1
_do_process_m_bt_65536_143:
	.ds 1
_do_process_m_cx_65536_143:
	.ds 2
_do_process_m_cy_65536_143:
	.ds 2
_do_process_m_cz_65536_143:
	.ds 2
_do_process___2621440005_262144_150:
	.ds 1
_do_process_val_327680_160:
	.ds 2
_do_process___2621440010_262144_151:
	.ds 1
_do_process_val_327681_163:
	.ds 2
_do_process___2621450015_262145_152:
	.ds 1
_do_process_val_327682_166:
	.ds 2
_readCOMsettings_res_65536_169:
	.ds 1
_readRatesettings_res_65536_174:
	.ds 1
_checkIRQ_opt_com_65536_176:
	.ds 1
_init___1310720026_131072_185:
	.ds 1
_init___1310720022_131072_185:
	.ds 1
_init_res_262144_191:
	.ds 1
_init_res_262144_198:
	.ds 1
_init_opt_com_196608_201:
	.ds 1
_init_opt_com_524288_218:
	.ds 1
_main___1310720026_262144_236:
	.ds 1
_main___1310720022_262144_236:
	.ds 1
_main_res_458752_241:
	.ds 1
_main_res_458752_248:
	.ds 1
_main_opt_com_393216_251:
	.ds 1
_main_opt_com_720896_265:
	.ds 1
_main_st_m_bt_393216_279:
	.ds 1
_main_dr_ctr_393216_279:
	.ds 1
_main_m_bt_393216_279:
	.ds 1
_main_m_cx_393216_279:
	.ds 2
_main_m_cy_393216_279:
	.ds 2
_main_m_cz_393216_279:
	.ds 2
_main___2621440005_524288_292:
	.ds 1
_main_val_655360_294:
	.ds 2
_main___2621440010_589824_296:
	.ds 1
_main_val_720896_298:
	.ds 2
_main___2621450015_655360_300:
	.ds 1
_main_val_786432_302:
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
	reti
	.ds	7
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
;cnt                       Allocated with name '_timer0_isr_cnt_65536_56'
;------------------------------------------------------------
;	main.c:279: static uint8_t cnt = 0;
	mov	dptr,#_timer0_isr_cnt_65536_56
	clr	a
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'do_process'
;------------------------------------------------------------
;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_143'
;dr_ctr                    Allocated with name '_do_process_dr_ctr_65536_143'
;m_bt                      Allocated with name '_do_process_m_bt_65536_143'
;m_cx                      Allocated with name '_do_process_m_cx_65536_143'
;m_cy                      Allocated with name '_do_process_m_cy_65536_143'
;m_cz                      Allocated with name '_do_process_m_cz_65536_143'
;ea_state___LINE__         Allocated with name '_do_process_ea_state___LINE___262144_147'
;__2621440005              Allocated with name '_do_process___2621440005_262144_150'
;cx                        Allocated with name '_do_process_cx_196608_150'
;__2621440006              Allocated with name '_do_process___2621440006_262144_159'
;__2621440007              Allocated with name '_do_process___2621440007_262144_159'
;__2621440008              Allocated with name '_do_process___2621440008_262144_159'
;val                       Allocated with name '_do_process_val_327680_160'
;min                       Allocated with name '_do_process_min_327680_160'
;max                       Allocated with name '_do_process_max_327680_160'
;__2621440010              Allocated with name '_do_process___2621440010_262144_151'
;cy                        Allocated with name '_do_process_cy_196609_151'
;__2621450011              Allocated with name '_do_process___2621450011_262145_162'
;__2621450012              Allocated with name '_do_process___2621450012_262145_162'
;__2621450013              Allocated with name '_do_process___2621450013_262145_162'
;val                       Allocated with name '_do_process_val_327681_163'
;min                       Allocated with name '_do_process_min_327681_163'
;max                       Allocated with name '_do_process_max_327681_163'
;__2621450015              Allocated with name '_do_process___2621450015_262145_152'
;cz                        Allocated with name '_do_process_cz_196610_152'
;__2621460016              Allocated with name '_do_process___2621460016_262146_165'
;__2621460017              Allocated with name '_do_process___2621460017_262146_165'
;__2621460018              Allocated with name '_do_process___2621460018_262146_165'
;val                       Allocated with name '_do_process_val_327682_166'
;min                       Allocated with name '_do_process_min_327682_166'
;max                       Allocated with name '_do_process_max_327682_166'
;------------------------------------------------------------
;	main.c:484: static uint8_t st_m_bt = 0;
	mov	dptr,#_do_process_st_m_bt_65536_143
	clr	a
	movx	@dptr,a
;	main.c:485: static uint8_t dr_ctr = 0;
	mov	dptr,#_do_process_dr_ctr_65536_143
	movx	@dptr,a
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1310720029              Allocated with name '_main___1310720029_262144_236'
;__1310720026              Allocated with name '_main___1310720026_262144_236'
;__1310720024              Allocated with name '_main___1310720024_262144_236'
;__1310720022              Allocated with name '_main___1310720022_262144_236'
;__1310720020              Allocated with name '_main___1310720020_262144_236'
;res                       Allocated with name '_main_res_458752_241'
;res                       Allocated with name '_main_res_458752_248'
;__1310720027              Allocated with name '_main___1310720027_327680_250'
;opt_com                   Allocated with name '_main_opt_com_393216_251'
;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___524288_262'
;__4587520032              Allocated with name '_main___4587520032_655360_264'
;__4587520033              Allocated with name '_main___4587520033_655360_264'
;opt_com                   Allocated with name '_main_opt_com_720896_265'
;opt_irq                   Allocated with name '_main_opt_irq_720896_265'
;config_data               Allocated with name '_main_config_data_786432_266'
;st_m_bt                   Allocated with name '_main_st_m_bt_393216_279'
;dr_ctr                    Allocated with name '_main_dr_ctr_393216_279'
;m_bt                      Allocated with name '_main_m_bt_393216_279'
;m_cx                      Allocated with name '_main_m_cx_393216_279'
;m_cy                      Allocated with name '_main_m_cy_393216_279'
;m_cz                      Allocated with name '_main_m_cz_393216_279'
;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___589824_283'
;__2621440005              Allocated with name '_main___2621440005_524288_292'
;cx                        Allocated with name '_main_cx_524288_292'
;__2621440006              Allocated with name '_main___2621440006_589824_293'
;__2621440007              Allocated with name '_main___2621440007_589824_293'
;__2621440008              Allocated with name '_main___2621440008_589824_293'
;val                       Allocated with name '_main_val_655360_294'
;min                       Allocated with name '_main_min_655360_294'
;max                       Allocated with name '_main_max_655360_294'
;__2621440010              Allocated with name '_main___2621440010_589824_296'
;cy                        Allocated with name '_main_cy_589824_296'
;__2621450011              Allocated with name '_main___2621450011_655360_297'
;__2621450012              Allocated with name '_main___2621450012_655360_297'
;__2621450013              Allocated with name '_main___2621450013_655360_297'
;val                       Allocated with name '_main_val_720896_298'
;min                       Allocated with name '_main_min_720896_298'
;max                       Allocated with name '_main_max_720896_298'
;__2621450015              Allocated with name '_main___2621450015_655360_300'
;cz                        Allocated with name '_main_cz_655360_300'
;__2621460016              Allocated with name '_main___2621460016_720896_301'
;__2621460017              Allocated with name '_main___2621460017_720896_301'
;__2621460018              Allocated with name '_main___2621460018_720896_301'
;val                       Allocated with name '_main_val_786432_302'
;min                       Allocated with name '_main_min_786432_302'
;max                       Allocated with name '_main_max_786432_302'
;------------------------------------------------------------
;	main.c:484: static uint8_t st_m_bt = 0;
	mov	dptr,#_main_st_m_bt_393216_279
	clr	a
	movx	@dptr,a
;	main.c:485: static uint8_t dr_ctr = 0;
	mov	dptr,#_main_dr_ctr_393216_279
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
;	main.c:258: static inline void mcu_sleep(void) {
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
;	main.c:261: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clamp'
;------------------------------------------------------------
;min                       Allocated with name '_clamp_PARM_2'
;max                       Allocated with name '_clamp_PARM_3'
;val                       Allocated with name '_clamp_val_65536_51'
;------------------------------------------------------------
;	main.c:264: static inline int8_t clamp(int16_t val, int8_t min, int8_t max) {
;	-----------------------------------------
;	 function clamp
;	-----------------------------------------
_clamp:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_clamp_val_65536_51
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:265: if (val < (int16_t)min) return min;
	mov	dptr,#_clamp_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_clamp_val_65536_51
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
;	main.c:266: if (val > (int16_t)max) return max;
	mov	dptr,#_clamp_PARM_3
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
;	main.c:267: return (int8_t)val;
	mov	dpl,r3
;	main.c:268: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int0_isr'
;------------------------------------------------------------
;	main.c:274: void int0_isr(void) __interrupt (INT_NO_INT0) {
;	-----------------------------------------
;	 function int0_isr
;	-----------------------------------------
_int0_isr:
	push	acc
	push	dpl
	push	dph
;	main.c:275: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:276: }
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
;cnt                       Allocated with name '_timer0_isr_cnt_65536_56'
;------------------------------------------------------------
;	main.c:278: void timer0_isr(void) __interrupt (INT_NO_TMR0) {
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
;	main.c:281: if (++cnt > timer0_limit) {
	mov	dptr,#_timer0_isr_cnt_65536_56
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_timer0_limit
	movx	a,@dptr
	clr	c
	subb	a,r7
	jnc	00103$
;	main.c:282: cnt = 0;
	mov	dptr,#_timer0_isr_cnt_65536_56
	clr	a
	movx	@dptr,a
;	main.c:283: allow_send_data = true;
	mov	dptr,#_allow_send_data
	inc	a
	movx	@dptr,a
00103$:
;	main.c:285: }
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
;	main.c:287: void Timer3_ISR(void) __interrupt (INT_NO_TMR3) {
;	-----------------------------------------
;	 function Timer3_ISR
;	-----------------------------------------
_Timer3_ISR:
;	main.c:288: T3_CTRL = 0; // Стоп таймер
	mov	_T3_CTRL,#0x00
;	main.c:290: led_off();
	orl	_P4_OUT,#0x40
;	main.c:291: }
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
;current_byte              Allocated with name '_Timer2_ISR_current_byte_65536_61'
;------------------------------------------------------------
;	main.c:293: void Timer2_ISR(void) __interrupt (INT_NO_TMR2) {
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
;	main.c:295: TF2 = 0; // Не сбрасывается автоматически
;	assignBit
	clr	_TF2
;	main.c:298: if (not_rdy_2rcv() && device_init) {
	mov	a,_P1
	jnb	acc.6,00105$
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00105$
;	main.c:300: spi_timer_slow();
;	assignBit
	clr	_TR2
	mov	_RCAP2H,#0xfe
	mov	_RCAP2L,#0x70
	mov	_TH2,_RCAP2H
	mov	_TL2,_RCAP2L
;	assignBit
	setb	_TR2
;	main.c:301: return;
	ljmp	00231$
00105$:
;	main.c:305: if (!spi_tx_buf_count) {
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	jnz	00111$
;	main.c:306: spi_timer_stop();
;	assignBit
	clr	_TR2
;	main.c:307: return;
	ljmp	00231$
00111$:
;	main.c:310: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:313: current_byte = spi_tx_buf[spi_tx_buf_r];
	mov	dptr,#_spi_tx_buf_r
	movx	a,@dptr
	add	a,#_spi_tx_buf
	mov	dpl,a
	clr	a
	addc	a,#(_spi_tx_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
;	main.c:314: if (++spi_tx_buf_r == SPI_TX_BUFFER_SIZE) {
	mov	dptr,#_spi_tx_buf_r
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	movx	@dptr,a
	cjne	r6,#0xff,00113$
;	main.c:315: spi_tx_buf_r = 0;
	mov	dptr,#_spi_tx_buf_r
	clr	a
	movx	@dptr,a
00113$:
;	main.c:317: spi_tx_buf_count--;
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	dec	a
	movx	@dptr,a
;	main.c:320: SPI_SEND_PACKET(current_byte);
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.6,00118$
	orl	_P1,#0x20
	sjmp	00120$
00118$:
	anl	_P1,#0xdf
00120$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.5,00133$
	orl	_P1,#0x20
	sjmp	00135$
00133$:
	anl	_P1,#0xdf
00135$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.4,00148$
	orl	_P1,#0x20
	sjmp	00150$
00148$:
	anl	_P1,#0xdf
00150$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.3,00163$
	orl	_P1,#0x20
	sjmp	00165$
00163$:
	anl	_P1,#0xdf
00165$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.2,00178$
	orl	_P1,#0x20
	sjmp	00180$
00178$:
	anl	_P1,#0xdf
00180$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.1,00193$
	orl	_P1,#0x20
	sjmp	00195$
00193$:
	anl	_P1,#0xdf
00195$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	NOP
	NOP
	NOP
	mov	a,r7
	jnb	acc.0,00208$
	orl	_P1,#0x20
	sjmp	00210$
00208$:
	anl	_P1,#0xdf
00210$:
	NOP
	NOP
	NOP
	orl	_P1,#0x80
	NOP
	NOP
	NOP
	anl	_P1,#0x7f
	anl	_P1,#0xdf
;	main.c:323: if (!spi_tx_buf_count) { // Нечего передавать, останавливаемся
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	jnz	00225$
;	main.c:324: spi_timer_stop();
;	assignBit
	clr	_TR2
;	main.c:326: spi_timer_fast();
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
;	main.c:328: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'flash_led'
;------------------------------------------------------------
;	main.c:334: void flash_led(void) {
;	-----------------------------------------
;	 function flash_led
;	-----------------------------------------
_flash_led:
;	main.c:335: led_on();
	anl	_P4_OUT,#0xbf
;	main.c:336: led_timer_start();
	mov	_T3_CTRL,#0x01
;	main.c:337: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_mouse_init'
;------------------------------------------------------------
;	main.c:343: static inline void usb_mouse_init(void) {
;	-----------------------------------------
;	 function usb_mouse_init
;	-----------------------------------------
_usb_mouse_init:
;	main.c:344: m_wheel = opt_wheel_enabled;
	mov	dptr,#_opt_wheel_enabled
	movx	a,@dptr
	mov	dptr,#_m_wheel
	movx	@dptr,a
;	main.c:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mouse_write'
;------------------------------------------------------------
;c                         Allocated with name '_mouse_write_c_65536_105'
;ea_state___LINE__         Allocated with name '_mouse_write_ea_state___LINE___131072_108'
;------------------------------------------------------------
;	main.c:347: void mouse_write(uint8_t c) {
;	-----------------------------------------
;	 function mouse_write
;	-----------------------------------------
_mouse_write:
	mov	a,dpl
	mov	dptr,#_mouse_write_c_65536_105
	movx	@dptr,a
;	main.c:349: if (!mouse_enabled)
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00102$
;	main.c:350: return;
	ret
00102$:
;	main.c:353: if (mouse_rx_buf_count >= MS_RX_BUF_SIZE) {
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x10,00125$
00125$:
	jc	00107$
;	main.c:354: fatal_error = true;
	mov	dptr,#_fatal_error
	mov	a,#0x01
	movx	@dptr,a
;	main.c:355: return;
;	main.c:357: CRITICAL_SECTION (
	ret
00107$:
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_mouse_rx_buf_w
	movx	a,@dptr
	add	a,#_mouse_rx_buf
	mov	r6,a
	clr	a
	addc	a,#(_mouse_rx_buf >> 8)
	mov	r5,a
	mov	dptr,#_mouse_write_c_65536_105
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r5
	movx	@dptr,a
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	mov	dptr,#_mouse_rx_buf_w
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	movx	@dptr,a
	cjne	r6,#0x10,00106$
	mov	dptr,#_mouse_rx_buf_w
	clr	a
	movx	@dptr,a
00106$:
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:364: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mouse_read'
;------------------------------------------------------------
;data                      Allocated with name '_mouse_read_data_65536_111'
;ea_state___LINE__         Allocated with name '_mouse_read_ea_state___LINE___131072_112'
;------------------------------------------------------------
;	main.c:366: static uint8_t mouse_read(void) {
;	-----------------------------------------
;	 function mouse_read
;	-----------------------------------------
_mouse_read:
;	main.c:367: uint8_t data = 0;
	mov	dptr,#_mouse_read_data_65536_111
	clr	a
	movx	@dptr,a
;	main.c:370: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	jz	00104$
	mov	dptr,#_mouse_rx_buf_r
	movx	a,@dptr
	add	a,#_mouse_rx_buf
	mov	dpl,a
	clr	a
	addc	a,#(_mouse_rx_buf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_mouse_read_data_65536_111
	movx	@dptr,a
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	mov	dptr,#_mouse_rx_buf_r
	movx	a,@dptr
	add	a,#0x01
	mov	r6,a
	movx	@dptr,a
	cjne	r6,#0x10,00104$
	mov	dptr,#_mouse_rx_buf_r
	clr	a
	movx	@dptr,a
00104$:
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:380: return data;
	mov	dptr,#_mouse_read_data_65536_111
	movx	a,@dptr
;	main.c:381: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;ea_state___LINE__         Allocated with name '_spi_init_ea_state___LINE___131072_117'
;------------------------------------------------------------
;	main.c:387: static inline void spi_init(void) {
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	main.c:388: CRITICAL_SECTION (
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
	anl	_P1,#0xf7
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:407: while (!device_init) {
00106$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00106$
;	main.c:408: mcu_sleep();
;	main.c:410: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_send'
;------------------------------------------------------------
;c                         Allocated with name '_spi_send_c_65536_123'
;ea_state___LINE__         Allocated with name '_spi_send_ea_state___LINE___131072_126'
;------------------------------------------------------------
;	main.c:412: static void spi_send(uint8_t c) {
;	-----------------------------------------
;	 function spi_send
;	-----------------------------------------
_spi_send:
	mov	a,dpl
	mov	dptr,#_spi_send_c_65536_123
	movx	@dptr,a
;	main.c:413: while (spi_tx_buf_count == SPI_TX_BUFFER_SIZE) {
00101$:
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00133$
	sjmp	00101$
00133$:
;	main.c:417: CRITICAL_SECTION (
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
	mov	dptr,#_spi_send_c_65536_123
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
;	main.c:425: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_send_config'
;------------------------------------------------------------
;opt_irq                   Allocated with name '_spi_send_config_PARM_2'
;opt_com                   Allocated with name '_spi_send_config_opt_com_65536_132'
;config_data               Allocated with name '_spi_send_config_config_data_65536_133'
;------------------------------------------------------------
;	main.c:428: static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq) {
;	-----------------------------------------
;	 function spi_send_config
;	-----------------------------------------
_spi_send_config:
	mov	a,dpl
	mov	dptr,#_spi_send_config_opt_com_65536_132
	movx	@dptr,a
;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
	movx	a,@dptr
	anl	a,#0x03
	mov	r7,a
;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
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
;	main.c:433: spi_send(config_data);
	mov	dpl,r7
;	main.c:434: }
	ljmp	_spi_send
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_m_send'
;------------------------------------------------------------
;y                         Allocated with name '_spi_m_send_PARM_2'
;z                         Allocated with name '_spi_m_send_PARM_3'
;b                         Allocated with name '_spi_m_send_PARM_4'
;x                         Allocated with name '_spi_m_send_x_65536_134'
;left_b                    Allocated with name '_spi_m_send_left_b_65536_135'
;right_b                   Allocated with name '_spi_m_send_right_b_65536_135'
;middle_b                  Allocated with name '_spi_m_send_middle_b_65536_135'
;------------------------------------------------------------
;	main.c:437: static void spi_m_send(int8_t x, int8_t y, int8_t z, uint8_t b) {
;	-----------------------------------------
;	 function spi_m_send
;	-----------------------------------------
_spi_m_send:
	mov	a,dpl
	mov	dptr,#_spi_m_send_x_65536_134
	movx	@dptr,a
;	main.c:440: left_b = b & 1;
	mov	dptr,#_spi_m_send_PARM_4
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,r7
	mov	r6,a
;	main.c:441: right_b = (b >> 1) & 1;
	mov	a,r7
	rr	a
	anl	a,#0x01
	mov	r5,a
;	main.c:442: middle_b = (b >> 2) & 1;
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	mov	r7,a
;	main.c:444: spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
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
;	main.c:445: ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
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
	mov	dptr,#_spi_m_send_x_65536_134
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
;	main.c:446: spi_send(x & 0x3F);
	anl	ar4,#0x3f
	mov	dpl,r4
	lcall	_spi_send
	pop	ar5
;	main.c:447: spi_send(y & 0x3F);
	anl	ar5,#0x3f
	mov	dpl,r5
	lcall	_spi_send
	pop	ar7
;	main.c:449: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00102$
;	main.c:450: spi_send((middle_b << 4) | (z & 0x0F));
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
;	main.c:453: flash_led();
;	main.c:454: }
	ljmp	_flash_led
;------------------------------------------------------------
;Allocation info for local variables in function 'send_mouse_id'
;------------------------------------------------------------
;	main.c:457: static inline void send_mouse_id(void) {
;	-----------------------------------------
;	 function send_mouse_id
;	-----------------------------------------
_send_mouse_id:
;	main.c:459: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:462: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00102$
;	main.c:463: return;
	ret
00102$:
;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:468: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00104$
;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	ljmp	_spi_send
00104$:
;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
;	main.c:480: }
	ljmp	_spi_send
;------------------------------------------------------------
;Allocation info for local variables in function 'do_process'
;------------------------------------------------------------
;st_m_bt                   Allocated with name '_do_process_st_m_bt_65536_143'
;dr_ctr                    Allocated with name '_do_process_dr_ctr_65536_143'
;m_bt                      Allocated with name '_do_process_m_bt_65536_143'
;m_cx                      Allocated with name '_do_process_m_cx_65536_143'
;m_cy                      Allocated with name '_do_process_m_cy_65536_143'
;m_cz                      Allocated with name '_do_process_m_cz_65536_143'
;ea_state___LINE__         Allocated with name '_do_process_ea_state___LINE___262144_147'
;__2621440005              Allocated with name '_do_process___2621440005_262144_150'
;cx                        Allocated with name '_do_process_cx_196608_150'
;__2621440006              Allocated with name '_do_process___2621440006_262144_159'
;__2621440007              Allocated with name '_do_process___2621440007_262144_159'
;__2621440008              Allocated with name '_do_process___2621440008_262144_159'
;val                       Allocated with name '_do_process_val_327680_160'
;min                       Allocated with name '_do_process_min_327680_160'
;max                       Allocated with name '_do_process_max_327680_160'
;__2621440010              Allocated with name '_do_process___2621440010_262144_151'
;cy                        Allocated with name '_do_process_cy_196609_151'
;__2621450011              Allocated with name '_do_process___2621450011_262145_162'
;__2621450012              Allocated with name '_do_process___2621450012_262145_162'
;__2621450013              Allocated with name '_do_process___2621450013_262145_162'
;val                       Allocated with name '_do_process_val_327681_163'
;min                       Allocated with name '_do_process_min_327681_163'
;max                       Allocated with name '_do_process_max_327681_163'
;__2621450015              Allocated with name '_do_process___2621450015_262145_152'
;cz                        Allocated with name '_do_process_cz_196610_152'
;__2621460016              Allocated with name '_do_process___2621460016_262146_165'
;__2621460017              Allocated with name '_do_process___2621460017_262146_165'
;__2621460018              Allocated with name '_do_process___2621460018_262146_165'
;val                       Allocated with name '_do_process_val_327682_166'
;min                       Allocated with name '_do_process_min_327682_166'
;max                       Allocated with name '_do_process_max_327682_166'
;------------------------------------------------------------
;	main.c:483: static inline void do_process(void) {
;	-----------------------------------------
;	 function do_process
;	-----------------------------------------
_do_process:
;	main.c:491: checkRootHubConnections();
	lcall	_checkRootHubConnections
;	main.c:494: pollHIDdevice();
	lcall	_pollHIDdevice
;	main.c:497: while (mouse_rx_buf_count >= 4) {
00101$:
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00216$
00216$:
	jnc	00217$
	ljmp	00103$
00217$:
;	main.c:498: m_bt = mouse_read() & (m_wheel?7:3); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
	lcall	_mouse_read
	mov	r7,dpl
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00146$
	mov	r5,#0x07
	mov	r6,#0x00
	sjmp	00147$
00146$:
	mov	r5,#0x03
	mov	r6,#0x00
00147$:
	mov	dptr,#_do_process_m_bt_65536_143
	mov	a,r5
	anl	a,r7
	movx	@dptr,a
;	main.c:499: m_cx += (int8_t)mouse_read(); // byte 1: ΔX (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_do_process_m_cx_65536_143
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	mov	a,r6
	addc	a,r5
	mov	r6,a
	mov	dptr,#_do_process_m_cx_65536_143
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:500: m_cy -= (int8_t)mouse_read(); // byte 2: ΔY (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_do_process_m_cy_65536_143
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,r5
	subb	a,r6
	mov	r6,a
	mov	dptr,#_do_process_m_cy_65536_143
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:501: m_cz += (int8_t)mouse_read(); // byte 3: ΔWheel (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_do_process_m_cz_65536_143
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	mov	a,r6
	addc	a,r5
	mov	r6,a
	mov	dptr,#_do_process_m_cz_65536_143
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00103$:
;	main.c:505: if (allow_send_data && mouse_enabled) {
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jnz	00219$
	ret
00219$:
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00220$
	ret
00220$:
;	main.c:506: allow_send_data = false;
	mov	dptr,#_allow_send_data
	clr	a
	movx	@dptr,a
;	main.c:507: dr_ctr = (dr_ctr + 1) & 0x03;
	mov	dptr,#_do_process_dr_ctr_65536_143
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	a,#0x03
	anl	a,r7
	movx	@dptr,a
;	main.c:510: if (mouse_start) {
	mov	dptr,#_mouse_start
	movx	a,@dptr
	jnz	00221$
	ljmp	00114$
00221$:
;	main.c:511: mouse_start = false;
	mov	dptr,#_mouse_start
	clr	a
	movx	@dptr,a
;	main.c:514: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_do_process_m_cx_65536_143
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_cy_65536_143
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_cz_65536_143
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_do_process_m_bt_65536_143
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
	orl	_P1,#0x08
	anl	_P1,#0xf7
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:459: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:462: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jz	00114$
;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:468: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00126$
;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	lcall	_spi_send
	sjmp	00114$
00126$:
;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:524: send_mouse_id();
00114$:
;	main.c:528: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
	mov	dptr,#_do_process_m_bt_65536_143
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_do_process_st_m_bt_65536_143
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00115$
	mov	dptr,#_do_process_m_cx_65536_143
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00115$
	mov	dptr,#_do_process_m_cy_65536_143
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00115$
	mov	dptr,#_do_process_m_cz_65536_143
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00228$
	ret
00228$:
00115$:
;	main.c:529: int8_t cx = clamp(m_cx, -128, 127);
	mov	dptr,#_do_process_m_cx_65536_143
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
	jnc	00130$
	mov	dptr,#_do_process___2621440005_262144_150
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00133$
00130$:
	clr	c
	mov	a,#0x7f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00132$
	mov	dptr,#_do_process___2621440005_262144_150
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00133$
00132$:
	mov	dptr,#_do_process___2621440005_262144_150
	mov	a,r6
	movx	@dptr,a
00133$:
	mov	dptr,#_do_process___2621440005_262144_150
	movx	a,@dptr
;	main.c:530: m_cx -= cx;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_do_process_m_cx_65536_143
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r4
	subb	a,r6
	mov	r6,a
	mov	dptr,#_do_process_m_cx_65536_143
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:531: int8_t cy = clamp(m_cy, -128, 127);
	mov	dptr,#_do_process_m_cy_65536_143
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x80
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00135$
	mov	dptr,#_do_process___2621440010_262144_151
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00138$
00135$:
	clr	c
	mov	a,#0x7f
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00137$
	mov	dptr,#_do_process___2621440010_262144_151
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00138$
00137$:
	mov	dptr,#_do_process___2621440010_262144_151
	mov	a,r5
	movx	@dptr,a
00138$:
	mov	dptr,#_do_process___2621440010_262144_151
	movx	a,@dptr
;	main.c:532: m_cy -= cy;
	mov	r6,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_do_process_m_cy_65536_143
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	mov	dptr,#_do_process_m_cy_65536_143
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:533: int8_t cz = clamp(m_cz, -8, 7);
	mov	dptr,#_do_process_m_cz_65536_143
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0xf8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00140$
	mov	dptr,#_do_process___2621450015_262145_152
	mov	a,#0xf8
	movx	@dptr,a
	sjmp	00143$
00140$:
	clr	c
	mov	a,#0x07
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00142$
	mov	dptr,#_do_process___2621450015_262145_152
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00143$
00142$:
	mov	dptr,#_do_process___2621450015_262145_152
	mov	a,r4
	movx	@dptr,a
00143$:
	mov	dptr,#_do_process___2621450015_262145_152
	movx	a,@dptr
;	main.c:534: m_cz -= cz;
	mov	r5,a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dptr,#_do_process_m_cz_65536_143
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r2
	subb	a,r4
	mov	r4,a
	mov	dptr,#_do_process_m_cz_65536_143
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:536: st_m_bt = m_bt;
	mov	dptr,#_do_process_m_bt_65536_143
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_do_process_st_m_bt_65536_143
	movx	@dptr,a
;	main.c:538: spi_m_send(cx, cy, cz, m_bt);
	mov	dptr,#_spi_m_send_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_spi_m_send_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_spi_m_send_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r7
;	main.c:541: }
	ljmp	_spi_m_send
;------------------------------------------------------------
;Allocation info for local variables in function 'readCOMsettings'
;------------------------------------------------------------
;res                       Allocated with name '_readCOMsettings_res_65536_169'
;------------------------------------------------------------
;	main.c:546: static inline uint8_t readCOMsettings(void) {
;	-----------------------------------------
;	 function readCOMsettings
;	-----------------------------------------
_readCOMsettings:
;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00109$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00110$
00109$:
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	mov	a,_P2
	jnb	acc.7,00111$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00112$
00111$:
	mov	r4,#0x00
	mov	r5,#0x00
00112$:
	mov	a,r4
	orl	ar6,a
;	main.c:550: switch (res) {
	mov	a,r6
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00128$
	jmp	@a+dptr
00128$:
	ljmp	00104$
	ljmp	00103$
	ljmp	00102$
;	main.c:551: case 3: 
;	main.c:552: res = SELECT_COM1;
	mov	dptr,#_readCOMsettings_res_65536_169
	clr	a
	movx	@dptr,a
;	main.c:553: break;
;	main.c:554: case 2:
	sjmp	00106$
00102$:
;	main.c:555: res = SELECT_COM2;
	mov	dptr,#_readCOMsettings_res_65536_169
	mov	a,#0x01
	movx	@dptr,a
;	main.c:556: break;
;	main.c:557: case 1:
	sjmp	00106$
00103$:
;	main.c:558: res = SELECT_COM3;
	mov	dptr,#_readCOMsettings_res_65536_169
	mov	a,#0x02
	movx	@dptr,a
;	main.c:559: break;
;	main.c:560: case 0:
	sjmp	00106$
00104$:
;	main.c:561: res = SELECT_COM4;
	mov	dptr,#_readCOMsettings_res_65536_169
	mov	a,#0x03
	movx	@dptr,a
;	main.c:562: break;
;	main.c:563: default:
	sjmp	00106$
00105$:
;	main.c:564: res = SELECT_COM1;
	mov	dptr,#_readCOMsettings_res_65536_169
	clr	a
	movx	@dptr,a
;	main.c:565: }
00106$:
;	main.c:566: return res;
	mov	dptr,#_readCOMsettings_res_65536_169
	movx	a,@dptr
;	main.c:567: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readWheelsettings'
;------------------------------------------------------------
;	main.c:569: static inline bool readWheelsettings(void) {
;	-----------------------------------------
;	 function readWheelsettings
;	-----------------------------------------
_readWheelsettings:
;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	mov  _readWheelsettings_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	main.c:571: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readRatesettings'
;------------------------------------------------------------
;res                       Allocated with name '_readRatesettings_res_65536_174'
;------------------------------------------------------------
;	main.c:573: static inline uint8_t readRatesettings(void) {
;	-----------------------------------------
;	 function readRatesettings
;	-----------------------------------------
_readRatesettings:
;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00109$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00110$
00109$:
	mov	r6,#0x00
	mov	r7,#0x00
00110$:
	mov	a,_P1
	jnb	acc.4,00111$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00112$
00111$:
	mov	r4,#0x00
	mov	r5,#0x00
00112$:
	mov	a,r4
	orl	ar6,a
;	main.c:577: switch (res) {
	mov	a,r6
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00128$
	jmp	@a+dptr
00128$:
	ljmp	00104$
	ljmp	00103$
	ljmp	00102$
;	main.c:578: case 3:
;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_readRatesettings_res_65536_174
	mov	a,#0x64
	movx	@dptr,a
;	main.c:580: break;
;	main.c:581: case 2:
	sjmp	00106$
00102$:
;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
	mov	dptr,#_readRatesettings_res_65536_174
	mov	a,#0x50
	movx	@dptr,a
;	main.c:583: break;
;	main.c:584: case 1:
	sjmp	00106$
00103$:
;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
	mov	dptr,#_readRatesettings_res_65536_174
	mov	a,#0x28
	movx	@dptr,a
;	main.c:586: break;
;	main.c:587: case 0:
	sjmp	00106$
00104$:
;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
	mov	dptr,#_readRatesettings_res_65536_174
	mov	a,#0x14
	movx	@dptr,a
;	main.c:589: break;
;	main.c:590: default:
	sjmp	00106$
00105$:
;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_readRatesettings_res_65536_174
	mov	a,#0x64
	movx	@dptr,a
;	main.c:592: }
00106$:
;	main.c:593: return res;
	mov	dptr,#_readRatesettings_res_65536_174
	movx	a,@dptr
;	main.c:594: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkIRQ'
;------------------------------------------------------------
;opt_com                   Allocated with name '_checkIRQ_opt_com_65536_176'
;------------------------------------------------------------
;	main.c:596: static inline uint8_t checkIRQ(uint8_t opt_com) {
;	-----------------------------------------
;	 function checkIRQ
;	-----------------------------------------
_checkIRQ:
	mov	a,dpl
	mov	dptr,#_checkIRQ_opt_com_65536_176
	movx	@dptr,a
;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00102$
;	main.c:598: return USE_IRQX;
	mov	dpl,#0x01
	ret
00102$:
;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	dptr,#_checkIRQ_opt_com_65536_176
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00103$
	cjne	r7,#0x02,00104$
00103$:
;	main.c:601: return USE_IRQ4;
	mov	dpl,#0x02
	ret
00104$:
;	main.c:603: return USE_IRQ3;
	mov	dpl,#0x00
;	main.c:604: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_reset_source'
;------------------------------------------------------------
;	main.c:609: static inline uint8_t get_reset_source(void) {
;	-----------------------------------------
;	 function get_reset_source
;	-----------------------------------------
_get_reset_source:
;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:611: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_init'
;------------------------------------------------------------
;	main.c:613: static inline void usb_init(void) {
;	-----------------------------------------
;	 function usb_init
;	-----------------------------------------
_usb_init:
;	main.c:614: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:615: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:616: initUSB_Host();
;	main.c:617: }
	ljmp	_initUSB_Host
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;__1310720029              Allocated with name '_init___1310720029_131072_185'
;__1310720026              Allocated with name '_init___1310720026_131072_185'
;__1310720024              Allocated with name '_init___1310720024_131072_185'
;__1310720022              Allocated with name '_init___1310720022_131072_185'
;__1310720020              Allocated with name '_init___1310720020_131072_185'
;res                       Allocated with name '_init_res_262144_191'
;res                       Allocated with name '_init_res_262144_198'
;__1310720027              Allocated with name '_init___1310720027_131072_200'
;opt_com                   Allocated with name '_init_opt_com_196608_201'
;ea_state___LINE__         Allocated with name '_init_ea_state___LINE___327680_211'
;__4587520032              Allocated with name '_init___4587520032_458752_217'
;__4587520033              Allocated with name '_init___4587520033_458752_217'
;opt_com                   Allocated with name '_init_opt_com_524288_218'
;opt_irq                   Allocated with name '_init_opt_irq_524288_218'
;config_data               Allocated with name '_init_config_data_589824_219'
;------------------------------------------------------------
;	main.c:619: static inline void init(void) {
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main.c:620: WDOG_COUNT = 0;
	mov	_WDOG_COUNT,#0x00
;	main.c:623: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:624: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:626: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
	mov	_PLL_CFG,#0xd8
;	main.c:627: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
	mov	_CLOCK_CFG,#0x86
;	main.c:629: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:631: delay(7);
	mov	dptr,#0x0007
	lcall	_delay
;	main.c:642: pinMode(PORT_OUT(SPI_RESOUT_PORT), SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:643: pinMode(PORT_OUT(SPI_MOSI_PORT), SPI_MOSI_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:644: pinMode(PORT_OUT(SPI_SCK_PORT), SPI_SCK_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:645: pinMode(PORT_OUT(TxD_PORT), TxD_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P0
	lcall	_pinMode
;	main.c:647: pinMode(PORT_IN(RxD_PORT), RxD_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P0
	lcall	_pinMode
;	main.c:648: pinMode(PORT_IN(DTR_PORT), DTR_PIN, PIN_MODE_INPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,_P3
	lcall	_pinMode
;	main.c:649: pinMode(PORT_IN(COM_SEL1_PORT), COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:650: pinMode(PORT_IN(COM_SEL2_PORT), COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:651: pinMode(PORT_IN(RATE_SEL1_PORT), RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:652: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	rr	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:654: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:655: pinMode(PORT_IN(WHEEL_SEL_PORT), WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P3
	lcall	_pinMode
;	main.c:656: pinMode(PORT_IN(IRQX_SEL_PORT), IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:657: pinMode(PORT_IN(RxIRQ_PORT), RxIRQ_PIN, PIN_MODE_INPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:658: pinMode(PORT_IN(PRG_PORT), PRG_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P4_IN
	lcall	_pinMode
;	main.c:661: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
	mov	a,_P4_IN
	jb	acc.6,00102$
;	main.c:662: runBootloader();
	mov	dpl,_runBootloader
	mov	dph,(_runBootloader + 1)
	lcall	__sdcc_call_dptr
	sjmp	00103$
00102$:
;	main.c:664: pinMode(PORT_OUT(LED_PORT), LED_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P4_OUT
	lcall	_pinMode
00103$:
;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00146$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00147$
00146$:
	mov	r6,#0x00
	mov	r7,#0x00
00147$:
	mov	a,_P2
	jnb	acc.7,00148$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00149$
00148$:
	mov	r4,#0x00
	mov	r5,#0x00
00149$:
	mov	a,r4
	orl	ar6,a
;	main.c:550: switch (res) {
	mov	a,r6
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00113$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00216$
	jmp	@a+dptr
00216$:
	ljmp	00112$
	ljmp	00111$
	ljmp	00110$
;	main.c:551: case 3: 
;	main.c:552: res = SELECT_COM1;
	mov	dptr,#_init_res_262144_191
	clr	a
	movx	@dptr,a
;	main.c:553: break;
;	main.c:554: case 2:
	sjmp	00114$
00110$:
;	main.c:555: res = SELECT_COM2;
	mov	dptr,#_init_res_262144_191
	mov	a,#0x01
	movx	@dptr,a
;	main.c:556: break;
;	main.c:557: case 1:
	sjmp	00114$
00111$:
;	main.c:558: res = SELECT_COM3;
	mov	dptr,#_init_res_262144_191
	mov	a,#0x02
	movx	@dptr,a
;	main.c:559: break;
;	main.c:560: case 0:
	sjmp	00114$
00112$:
;	main.c:561: res = SELECT_COM4;
	mov	dptr,#_init_res_262144_191
	mov	a,#0x03
	movx	@dptr,a
;	main.c:562: break;
;	main.c:563: default:
	sjmp	00114$
00113$:
;	main.c:564: res = SELECT_COM1;
	mov	dptr,#_init_res_262144_191
	clr	a
	movx	@dptr,a
;	main.c:565: }
00114$:
;	main.c:566: return res;
	mov	dptr,#_init_res_262144_191
	movx	a,@dptr
;	main.c:668: opt_com_settings = readCOMsettings();
	mov	r7,a
	mov	dptr,#_opt_com_settings
	movx	@dptr,a
;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	mov	dptr,#_init___1310720022_131072_185
	cjne	a,#0x01,00217$
00217$:
	clr	a
	rlc	a
	movx	@dptr,a
;	main.c:669: opt_wheel_enabled = readWheelsettings();
	mov	dptr,#_init___1310720022_131072_185
	movx	a,@dptr
	mov	dptr,#_opt_wheel_enabled
	movx	@dptr,a
;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00150$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00151$
00150$:
	mov	r5,#0x00
	mov	r6,#0x00
00151$:
	mov	a,_P1
	jnb	acc.4,00152$
	mov	r3,#0x02
	mov	r4,#0x00
	sjmp	00153$
00152$:
	mov	r3,#0x00
	mov	r4,#0x00
00153$:
	mov	a,r3
	orl	ar5,a
;	main.c:577: switch (res) {
	mov	a,r5
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00121$
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00221$
	jmp	@a+dptr
00221$:
	ljmp	00120$
	ljmp	00119$
	ljmp	00118$
;	main.c:578: case 3:
;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_init_res_262144_198
	mov	a,#0x64
	movx	@dptr,a
;	main.c:580: break;
;	main.c:581: case 2:
	sjmp	00122$
00118$:
;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
	mov	dptr,#_init_res_262144_198
	mov	a,#0x50
	movx	@dptr,a
;	main.c:583: break;
;	main.c:584: case 1:
	sjmp	00122$
00119$:
;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
	mov	dptr,#_init_res_262144_198
	mov	a,#0x28
	movx	@dptr,a
;	main.c:586: break;
;	main.c:587: case 0:
	sjmp	00122$
00120$:
;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
	mov	dptr,#_init_res_262144_198
	mov	a,#0x14
	movx	@dptr,a
;	main.c:589: break;
;	main.c:590: default:
	sjmp	00122$
00121$:
;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_init_res_262144_198
	mov	a,#0x64
	movx	@dptr,a
;	main.c:592: }
00122$:
;	main.c:593: return res;
	mov	dptr,#_init_res_262144_198
	movx	a,@dptr
;	main.c:670: opt_rate_settings = readRatesettings();
	mov	r6,a
	mov	dptr,#_opt_rate_settings
	movx	@dptr,a
;	main.c:672: timer0_limit = (uint8_t)((2000U + opt_rate_settings) / (2U * opt_rate_settings));
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0xd0
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	dptr,#__divuint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	lcall	__divuint
	mov	r5,dpl
	pop	ar7
	mov	dptr,#_timer0_limit
	mov	a,r5
	movx	@dptr,a
;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00125$
;	main.c:598: return USE_IRQX;
	mov	dptr,#_init___1310720026_131072_185
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00129$
00125$:
;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	a,r7
	jz	00127$
	cjne	r7,#0x02,00128$
00127$:
;	main.c:601: return USE_IRQ4;
	mov	dptr,#_init___1310720026_131072_185
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00129$
00128$:
;	main.c:603: return USE_IRQ3;
	mov	dptr,#_init___1310720026_131072_185
	clr	a
	movx	@dptr,a
;	main.c:674: opt_irq_settings = checkIRQ(opt_com_settings);
00129$:
	mov	dptr,#_init___1310720026_131072_185
	movx	a,@dptr
	mov	dptr,#_opt_irq_settings
	movx	@dptr,a
;	main.c:681: TH0 = (uint8_t)(TIMER0_CONST >> 8);
	mov	_TH0,#0xf0
;	main.c:682: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
	mov	_TL0,#0x60
;	main.c:683: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:684: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:688: TR2 = 0;         // останов таймера
;	assignBit
	clr	_TR2
;	main.c:689: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
	mov	_T2MOD,#0x00
;	main.c:690: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
	mov	_RCAP2H,#0xff
;	main.c:691: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
	mov	_RCAP2L,#0x9c
;	main.c:692: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	main.c:693: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	main.c:694: TF2 = 0;
;	assignBit
	clr	_TF2
;	main.c:698: T3_SETUP = 0;           // Режим таймера (не захвата)
;	main.c:699: T3_COUNT = 0;           // Сброс счетчика
	clr	a
	mov	_T3_SETUP,a
	mov	((_T3_COUNT >> 0) & 0xFF),a
	mov	((_T3_COUNT >> 8) & 0xFF),a
;	main.c:700: T3_END = TIMER1_CONST;  // Установка периода
	mov	((_T3_END >> 0) & 0xFF),#0x10
	mov	((_T3_END >> 8) & 0xFF),#0x27
;	main.c:701: T3_CTRL = 0;            // Изначально остановлен, сброс флагов
;	1-genFromRTrack replaced	mov	_T3_CTRL,#0x00
	mov	_T3_CTRL,a
;	main.c:705: IT0 = 1; // Активен по спаду сигнала
;	assignBit
	setb	_IT0
;	main.c:706: IE0 = 0; // Сброс флага прерывания INT0
;	assignBit
	clr	_IE0
;	main.c:710: ET0 = 1; // разрешить прерывания таймера 0
;	assignBit
	setb	_ET0
;	main.c:711: ET2 = 1; // разрешить прерывания таймера 2
;	assignBit
	setb	_ET2
;	main.c:712: IE_TMR3 = 1; // разрешить прерывания таймера 3
;	assignBit
	setb	_IE_TMR3
;	main.c:713: EX0 = 1; // разрешить прерывания INT0
;	assignBit
	setb	_EX0
;	main.c:715: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:716: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:718: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
	mov	_WAKE_CTRL,#0xc3
;	main.c:721: bSLP_OFF_SPI0 | bSLP_OFF_TMR3 | bSLP_OFF_XRAM;
	mov	_SLEEP_CTRL,#0x7d
;	main.c:724: GLOBAL_CFG |= bWDOG_EN;
	orl	_GLOBAL_CFG,#0x01
;	main.c:726: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:728: switch (get_reset_source()) {
	mov	r7,a
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00108$
	mov	a,r6
	add	a,r6
;	main.c:729: case 0b10: // 10 - Переполнение watchdog
	mov	dptr,#00227$
	jmp	@a+dptr
00227$:
	sjmp	00107$
	sjmp	00107$
	sjmp	00104$
	sjmp	00105$
00104$:
;	main.c:730: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:731: break;
;	main.c:732: case 0b11: // 11 - Аппаратный сброс
	sjmp	00108$
00105$:
;	main.c:733: led_on(); // Сигнализируем исправность светодиода
	anl	_P4_OUT,#0xbf
;	main.c:734: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:737: case 0b01: // 01 - Сброс при включении питания
00107$:
;	main.c:738: delay(50); // Ждём окончания переходных процессов
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:739: led_off();
	orl	_P4_OUT,#0x40
;	main.c:740: device_init = false;
	mov	dptr,#_device_init
	clr	a
	movx	@dptr,a
;	main.c:742: }
00108$:
;	main.c:745: EA = 1;
;	assignBit
	setb	_EA
;	main.c:388: CRITICAL_SECTION (
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
	jnz	00132$
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
;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
	anl	a,#0x03
	mov	r5,a
;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
	cjne	r6,#0x01,00154$
	mov	r4,#0x04
	mov	r6,#0x00
	sjmp	00155$
00154$:
	mov	r4,#0x00
	mov	r6,#0x00
00155$:
	mov	a,r4
	orl	ar5,a
;	main.c:433: spi_send(config_data);
	mov	dpl,r5
	push	ar7
	lcall	_spi_send
	pop	ar7
;	main.c:388: CRITICAL_SECTION (
00132$:
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P1,#0xf7
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:407: while (!device_init) {
00136$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00136$
;	main.c:750: initUART0(115200);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_initUART0
;	main.c:751: DEBUG_OUT("Startup\n");
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
;	main.c:614: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:615: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:616: initUSB_Host();
	lcall	_initUSB_Host
;	main.c:344: m_wheel = opt_wheel_enabled;
	mov	dptr,#_opt_wheel_enabled
	movx	a,@dptr
	mov	dptr,#_m_wheel
	movx	@dptr,a
;	main.c:757: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:758: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:759: fatal_error = false;
	mov	dptr,#_fatal_error
	clr	a
	movx	@dptr,a
;	main.c:760: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1310720029              Allocated with name '_main___1310720029_262144_236'
;__1310720026              Allocated with name '_main___1310720026_262144_236'
;__1310720024              Allocated with name '_main___1310720024_262144_236'
;__1310720022              Allocated with name '_main___1310720022_262144_236'
;__1310720020              Allocated with name '_main___1310720020_262144_236'
;res                       Allocated with name '_main_res_458752_241'
;res                       Allocated with name '_main_res_458752_248'
;__1310720027              Allocated with name '_main___1310720027_327680_250'
;opt_com                   Allocated with name '_main_opt_com_393216_251'
;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___524288_262'
;__4587520032              Allocated with name '_main___4587520032_655360_264'
;__4587520033              Allocated with name '_main___4587520033_655360_264'
;opt_com                   Allocated with name '_main_opt_com_720896_265'
;opt_irq                   Allocated with name '_main_opt_irq_720896_265'
;config_data               Allocated with name '_main_config_data_786432_266'
;st_m_bt                   Allocated with name '_main_st_m_bt_393216_279'
;dr_ctr                    Allocated with name '_main_dr_ctr_393216_279'
;m_bt                      Allocated with name '_main_m_bt_393216_279'
;m_cx                      Allocated with name '_main_m_cx_393216_279'
;m_cy                      Allocated with name '_main_m_cy_393216_279'
;m_cz                      Allocated with name '_main_m_cz_393216_279'
;ea_state___LINE__         Allocated with name '_main_ea_state___LINE___589824_283'
;__2621440005              Allocated with name '_main___2621440005_524288_292'
;cx                        Allocated with name '_main_cx_524288_292'
;__2621440006              Allocated with name '_main___2621440006_589824_293'
;__2621440007              Allocated with name '_main___2621440007_589824_293'
;__2621440008              Allocated with name '_main___2621440008_589824_293'
;val                       Allocated with name '_main_val_655360_294'
;min                       Allocated with name '_main_min_655360_294'
;max                       Allocated with name '_main_max_655360_294'
;__2621440010              Allocated with name '_main___2621440010_589824_296'
;cy                        Allocated with name '_main_cy_589824_296'
;__2621450011              Allocated with name '_main___2621450011_655360_297'
;__2621450012              Allocated with name '_main___2621450012_655360_297'
;__2621450013              Allocated with name '_main___2621450013_655360_297'
;val                       Allocated with name '_main_val_720896_298'
;min                       Allocated with name '_main_min_720896_298'
;max                       Allocated with name '_main_max_720896_298'
;__2621450015              Allocated with name '_main___2621450015_655360_300'
;cz                        Allocated with name '_main_cz_655360_300'
;__2621460016              Allocated with name '_main___2621460016_720896_301'
;__2621460017              Allocated with name '_main___2621460017_720896_301'
;__2621460018              Allocated with name '_main___2621460018_720896_301'
;val                       Allocated with name '_main_val_786432_302'
;min                       Allocated with name '_main_min_786432_302'
;max                       Allocated with name '_main_max_786432_302'
;------------------------------------------------------------
;	main.c:762: int main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:620: WDOG_COUNT = 0;
	mov	_WDOG_COUNT,#0x00
;	main.c:623: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:624: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:626: PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
	mov	_PLL_CFG,#0xd8
;	main.c:627: CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);
	mov	_CLOCK_CFG,#0x86
;	main.c:629: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:631: delay(7);
	mov	dptr,#0x0007
	lcall	_delay
;	main.c:642: pinMode(PORT_OUT(SPI_RESOUT_PORT), SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:643: pinMode(PORT_OUT(SPI_MOSI_PORT), SPI_MOSI_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:644: pinMode(PORT_OUT(SPI_SCK_PORT), SPI_SCK_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:645: pinMode(PORT_OUT(TxD_PORT), TxD_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P0
	lcall	_pinMode
;	main.c:647: pinMode(PORT_IN(RxD_PORT), RxD_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P0
	lcall	_pinMode
;	main.c:648: pinMode(PORT_IN(DTR_PORT), DTR_PIN, PIN_MODE_INPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,_P3
	lcall	_pinMode
;	main.c:649: pinMode(PORT_IN(COM_SEL1_PORT), COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:650: pinMode(PORT_IN(COM_SEL2_PORT), COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:651: pinMode(PORT_IN(RATE_SEL1_PORT), RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	dec	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:652: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	rr	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:654: pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:655: pinMode(PORT_IN(WHEEL_SEL_PORT), WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P3
	lcall	_pinMode
;	main.c:656: pinMode(PORT_IN(IRQX_SEL_PORT), IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P2
	lcall	_pinMode
;	main.c:657: pinMode(PORT_IN(RxIRQ_PORT), RxIRQ_PIN, PIN_MODE_INPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,_P1
	lcall	_pinMode
;	main.c:658: pinMode(PORT_IN(PRG_PORT), PRG_PIN, PIN_MODE_INPUT_PULLUP);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_P4_IN
	lcall	_pinMode
;	main.c:661: if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
	mov	a,_P4_IN
	jb	acc.6,00114$
;	main.c:662: runBootloader();
	mov	dpl,_runBootloader
	mov	dph,(_runBootloader + 1)
	lcall	__sdcc_call_dptr
	sjmp	00115$
00114$:
;	main.c:664: pinMode(PORT_OUT(LED_PORT), LED_PIN, PIN_MODE_OUTPUT);
	mov	dptr,#_pinMode_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_pinMode_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,_P4_OUT
	lcall	_pinMode
00115$:
;	main.c:547: uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
	mov	a,_P2
	jnb	acc.6,00206$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00207$
00206$:
	mov	r6,#0x00
	mov	r7,#0x00
00207$:
	mov	a,_P2
	jnb	acc.7,00208$
	mov	r4,#0x02
	mov	r5,#0x00
	sjmp	00209$
00208$:
	mov	r4,#0x00
	mov	r5,#0x00
00209$:
	mov	a,r4
	orl	ar6,a
;	main.c:550: switch (res) {
	mov	a,r6
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00120$
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00374$
	jmp	@a+dptr
00374$:
	ljmp	00119$
	ljmp	00118$
	ljmp	00117$
;	main.c:551: case 3: 
;	main.c:552: res = SELECT_COM1;
	mov	dptr,#_main_res_458752_241
	clr	a
	movx	@dptr,a
;	main.c:553: break;
;	main.c:554: case 2:
	sjmp	00121$
00117$:
;	main.c:555: res = SELECT_COM2;
	mov	dptr,#_main_res_458752_241
	mov	a,#0x01
	movx	@dptr,a
;	main.c:556: break;
;	main.c:557: case 1:
	sjmp	00121$
00118$:
;	main.c:558: res = SELECT_COM3;
	mov	dptr,#_main_res_458752_241
	mov	a,#0x02
	movx	@dptr,a
;	main.c:559: break;
;	main.c:560: case 0:
	sjmp	00121$
00119$:
;	main.c:561: res = SELECT_COM4;
	mov	dptr,#_main_res_458752_241
	mov	a,#0x03
	movx	@dptr,a
;	main.c:562: break;
;	main.c:563: default:
	sjmp	00121$
00120$:
;	main.c:564: res = SELECT_COM1;
	mov	dptr,#_main_res_458752_241
	clr	a
	movx	@dptr,a
;	main.c:565: }
00121$:
;	main.c:566: return res;
	mov	dptr,#_main_res_458752_241
	movx	a,@dptr
;	main.c:668: opt_com_settings = readCOMsettings();
	mov	r7,a
	mov	dptr,#_opt_com_settings
	movx	@dptr,a
;	main.c:570: return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
	mov	a,_P3
	swap	a
	anl	a,#0x01
	mov	dptr,#_main___1310720022_262144_236
	cjne	a,#0x01,00375$
00375$:
	clr	a
	rlc	a
	movx	@dptr,a
;	main.c:669: opt_wheel_enabled = readWheelsettings();
	mov	dptr,#_main___1310720022_262144_236
	movx	a,@dptr
	mov	dptr,#_opt_wheel_enabled
	movx	@dptr,a
;	main.c:574: uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
	mov	a,_P1
	jnb	acc.2,00210$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00211$
00210$:
	mov	r5,#0x00
	mov	r6,#0x00
00211$:
	mov	a,_P1
	jnb	acc.4,00212$
	mov	r3,#0x02
	mov	r4,#0x00
	sjmp	00213$
00212$:
	mov	r3,#0x00
	mov	r4,#0x00
00213$:
	mov	a,r3
	orl	ar5,a
;	main.c:577: switch (res) {
	mov	a,r5
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00128$
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00379$
	jmp	@a+dptr
00379$:
	ljmp	00127$
	ljmp	00126$
	ljmp	00125$
;	main.c:578: case 3:
;	main.c:579: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_main_res_458752_248
	mov	a,#0x64
	movx	@dptr,a
;	main.c:580: break;
;	main.c:581: case 2:
	sjmp	00129$
00125$:
;	main.c:582: res = PS2_SAMPLES_PER_SEC_FAST;
	mov	dptr,#_main_res_458752_248
	mov	a,#0x50
	movx	@dptr,a
;	main.c:583: break;
;	main.c:584: case 1:
	sjmp	00129$
00126$:
;	main.c:585: res = PS2_SAMPLES_PER_SEC_MID;
	mov	dptr,#_main_res_458752_248
	mov	a,#0x28
	movx	@dptr,a
;	main.c:586: break;
;	main.c:587: case 0:
	sjmp	00129$
00127$:
;	main.c:588: res = PS2_SAMPLES_PER_SEC_SLOW;
	mov	dptr,#_main_res_458752_248
	mov	a,#0x14
	movx	@dptr,a
;	main.c:589: break;
;	main.c:590: default:
	sjmp	00129$
00128$:
;	main.c:591: res = PS2_SAMPLES_PER_SEC_UFAST;
	mov	dptr,#_main_res_458752_248
	mov	a,#0x64
	movx	@dptr,a
;	main.c:592: }
00129$:
;	main.c:593: return res;
	mov	dptr,#_main_res_458752_248
	movx	a,@dptr
;	main.c:670: opt_rate_settings = readRatesettings();
	mov	r6,a
	mov	dptr,#_opt_rate_settings
	movx	@dptr,a
;	main.c:672: timer0_limit = (uint8_t)((2000U + opt_rate_settings) / (2U * opt_rate_settings));
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0xd0
	add	a,r4
	mov	r4,a
	mov	a,#0x07
	addc	a,r5
	mov	r5,a
	mov	r3,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	dptr,#__divuint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	lcall	__divuint
	mov	r5,dpl
	pop	ar7
	mov	dptr,#_timer0_limit
	mov	a,r5
	movx	@dptr,a
;	main.c:597: if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
	mov	a,_P2
	jb	acc.5,00132$
;	main.c:598: return USE_IRQX;
	mov	dptr,#_main___1310720026_262144_236
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00136$
00132$:
;	main.c:600: if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
	mov	a,r7
	jz	00134$
	cjne	r7,#0x02,00135$
00134$:
;	main.c:601: return USE_IRQ4;
	mov	dptr,#_main___1310720026_262144_236
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00136$
00135$:
;	main.c:603: return USE_IRQ3;
	mov	dptr,#_main___1310720026_262144_236
	clr	a
	movx	@dptr,a
;	main.c:674: opt_irq_settings = checkIRQ(opt_com_settings);
00136$:
	mov	dptr,#_main___1310720026_262144_236
	movx	a,@dptr
	mov	dptr,#_opt_irq_settings
	movx	@dptr,a
;	main.c:681: TH0 = (uint8_t)(TIMER0_CONST >> 8);
	mov	_TH0,#0xf0
;	main.c:682: TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
	mov	_TL0,#0x60
;	main.c:683: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:684: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:688: TR2 = 0;         // останов таймера
;	assignBit
	clr	_TR2
;	main.c:689: T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
	mov	_T2MOD,#0x00
;	main.c:690: RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
	mov	_RCAP2H,#0xff
;	main.c:691: RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
	mov	_RCAP2L,#0x9c
;	main.c:692: TH2 = RCAP2H;
	mov	_TH2,_RCAP2H
;	main.c:693: TL2 = RCAP2L;
	mov	_TL2,_RCAP2L
;	main.c:694: TF2 = 0;
;	assignBit
	clr	_TF2
;	main.c:698: T3_SETUP = 0;           // Режим таймера (не захвата)
;	main.c:699: T3_COUNT = 0;           // Сброс счетчика
	clr	a
	mov	_T3_SETUP,a
	mov	((_T3_COUNT >> 0) & 0xFF),a
	mov	((_T3_COUNT >> 8) & 0xFF),a
;	main.c:700: T3_END = TIMER1_CONST;  // Установка периода
	mov	((_T3_END >> 0) & 0xFF),#0x10
	mov	((_T3_END >> 8) & 0xFF),#0x27
;	main.c:701: T3_CTRL = 0;            // Изначально остановлен, сброс флагов
;	1-genFromRTrack replaced	mov	_T3_CTRL,#0x00
	mov	_T3_CTRL,a
;	main.c:705: IT0 = 1; // Активен по спаду сигнала
;	assignBit
	setb	_IT0
;	main.c:706: IE0 = 0; // Сброс флага прерывания INT0
;	assignBit
	clr	_IE0
;	main.c:710: ET0 = 1; // разрешить прерывания таймера 0
;	assignBit
	setb	_ET0
;	main.c:711: ET2 = 1; // разрешить прерывания таймера 2
;	assignBit
	setb	_ET2
;	main.c:712: IE_TMR3 = 1; // разрешить прерывания таймера 3
;	assignBit
	setb	_IE_TMR3
;	main.c:713: EX0 = 1; // разрешить прерывания INT0
;	assignBit
	setb	_EX0
;	main.c:715: SAFE_MOD = 0x55;
	mov	_SAFE_MOD,#0x55
;	main.c:716: SAFE_MOD = 0xAA;
	mov	_SAFE_MOD,#0xaa
;	main.c:718: WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
	mov	_WAKE_CTRL,#0xc3
;	main.c:721: bSLP_OFF_SPI0 | bSLP_OFF_TMR3 | bSLP_OFF_XRAM;
	mov	_SLEEP_CTRL,#0x7d
;	main.c:724: GLOBAL_CFG |= bWDOG_EN;
	orl	_GLOBAL_CFG,#0x01
;	main.c:726: SAFE_MOD = 0xFF;
	mov	_SAFE_MOD,#0xff
;	main.c:610: return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
	mov	a,#0x30
	anl	a,_PCON
	swap	a
	anl	a,#0x0f
;	main.c:728: switch (get_reset_source()) {
	mov	r7,a
	mov	r6,a
	add	a,#0xff - 0x03
	jc	00142$
	mov	a,r6
	add	a,r6
;	main.c:729: case 0b10: // 10 - Переполнение watchdog
	mov	dptr,#00385$
	jmp	@a+dptr
00385$:
	sjmp	00140$
	sjmp	00140$
	sjmp	00138$
	sjmp	00139$
00138$:
;	main.c:730: device_init = true;
	mov	dptr,#_device_init
	mov	a,#0x01
	movx	@dptr,a
;	main.c:731: break;
;	main.c:732: case 0b11: // 11 - Аппаратный сброс
	sjmp	00142$
00139$:
;	main.c:733: led_on(); // Сигнализируем исправность светодиода
	anl	_P4_OUT,#0xbf
;	main.c:734: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:737: case 0b01: // 01 - Сброс при включении питания
00140$:
;	main.c:738: delay(50); // Ждём окончания переходных процессов
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:739: led_off();
	orl	_P4_OUT,#0x40
;	main.c:740: device_init = false;
	mov	dptr,#_device_init
	clr	a
	movx	@dptr,a
;	main.c:742: }
00142$:
;	main.c:745: EA = 1;
;	assignBit
	setb	_EA
;	main.c:388: CRITICAL_SECTION (
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
	jnz	00145$
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
;	main.c:430: config_data |= (opt_com & 0x03); // Base adress
	anl	a,#0x03
	mov	r5,a
;	main.c:431: config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ
	cjne	r6,#0x01,00214$
	mov	r4,#0x04
	mov	r6,#0x00
	sjmp	00215$
00214$:
	mov	r4,#0x00
	mov	r6,#0x00
00215$:
	mov	a,r4
	orl	ar5,a
;	main.c:433: spi_send(config_data);
	mov	dpl,r5
	push	ar7
	lcall	_spi_send
	pop	ar7
;	main.c:388: CRITICAL_SECTION (
00145$:
	mov	dptr,#0x0001
	push	ar7
	lcall	_delayUs
	pop	ar7
	anl	_P1,#0xf7
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:407: while (!device_init) {
00149$:
	mov	dptr,#_device_init
	movx	a,@dptr
	jz	00149$
;	main.c:750: initUART0(115200);
	mov	dptr,#0xc200
	mov	b,#0x01
	clr	a
	lcall	_initUART0
;	main.c:751: DEBUG_OUT("Startup\n");
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
;	main.c:614: resetHubDevices(0);
	mov	dpl,#0x00
	lcall	_resetHubDevices
;	main.c:615: resetHubDevices(1);
	mov	dpl,#0x01
	lcall	_resetHubDevices
;	main.c:616: initUSB_Host();
	lcall	_initUSB_Host
;	main.c:344: m_wheel = opt_wheel_enabled;
	mov	dptr,#_opt_wheel_enabled
	movx	a,@dptr
	mov	dptr,#_m_wheel
	movx	@dptr,a
;	main.c:757: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:758: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:759: fatal_error = false;
	mov	dptr,#_fatal_error
	clr	a
	movx	@dptr,a
;	main.c:765: DEBUG_OUT("Ready\n");
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
00202$:
;	main.c:768: if (!fatal_error) {
	mov	dptr,#_fatal_error
	movx	a,@dptr
;	main.c:769: WDOG_COUNT = 0;
	jnz	00102$
	mov	_WDOG_COUNT,a
00102$:
;	main.c:772: if (!mouse_enabled) { // Мышь выключена
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00106$
;	main.c:774: mouse_enabled = get_mouse_power_state();
	mov	dptr,#_mouse_enabled
	mov	a,#0x04
	anl	a,_P3
	movx	@dptr,a
;	main.c:775: if (mouse_enabled) {
	movx	a,@dptr
	jz	00106$
;	main.c:777: mouse_start = true;
	mov	dptr,#_mouse_start
	mov	a,#0x01
	movx	@dptr,a
;	main.c:778: allow_send_data = true;
	mov	dptr,#_allow_send_data
	movx	@dptr,a
00106$:
;	main.c:782: processUart();
	lcall	_processUart
;	main.c:491: checkRootHubConnections();
	lcall	_checkRootHubConnections
;	main.c:494: pollHIDdevice();
	lcall	_pollHIDdevice
;	main.c:497: while (mouse_rx_buf_count >= 4) {
00157$:
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00393$
00393$:
	jnc	00394$
	ljmp	00159$
00394$:
;	main.c:498: m_bt = mouse_read() & (m_wheel?7:3); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
	lcall	_mouse_read
	mov	r7,dpl
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00216$
	mov	r5,#0x07
	mov	r6,#0x00
	sjmp	00217$
00216$:
	mov	r5,#0x03
	mov	r6,#0x00
00217$:
	mov	dptr,#_main_m_bt_393216_279
	mov	a,r5
	anl	a,r7
	movx	@dptr,a
;	main.c:499: m_cx += (int8_t)mouse_read(); // byte 1: ΔX (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_main_m_cx_393216_279
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	mov	a,r6
	addc	a,r5
	mov	r6,a
	mov	dptr,#_main_m_cx_393216_279
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:500: m_cy -= (int8_t)mouse_read(); // byte 2: ΔY (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_main_m_cy_393216_279
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,r5
	subb	a,r6
	mov	r6,a
	mov	dptr,#_main_m_cy_393216_279
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:501: m_cz += (int8_t)mouse_read(); // byte 3: ΔWheel (signed)
	lcall	_mouse_read
	mov	a,dpl
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_main_m_cz_393216_279
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	r7,a
	mov	a,r6
	addc	a,r5
	mov	r6,a
	mov	dptr,#_main_m_cz_393216_279
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00157$
00159$:
;	main.c:505: if (allow_send_data && mouse_enabled) {
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jnz	00396$
	ljmp	00200$
00396$:
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jnz	00397$
	ljmp	00200$
00397$:
;	main.c:506: allow_send_data = false;
	mov	dptr,#_allow_send_data
	clr	a
	movx	@dptr,a
;	main.c:507: dr_ctr = (dr_ctr + 1) & 0x03;
	mov	dptr,#_main_dr_ctr_393216_279
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	a,#0x03
	anl	a,r7
	movx	@dptr,a
;	main.c:510: if (mouse_start) {
	mov	dptr,#_mouse_start
	movx	a,@dptr
	jnz	00398$
	ljmp	00177$
00398$:
;	main.c:511: mouse_start = false;
	mov	dptr,#_mouse_start
	clr	a
	movx	@dptr,a
;	main.c:514: CRITICAL_SECTION (
	mov	c,_EA
	clr	a
	rlc	a
	mov	r7,a
;	assignBit
	clr	_EA
	mov	dptr,#_main_m_cx_393216_279
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_cy_393216_279
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_cz_393216_279
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_m_bt_393216_279
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
	orl	_P1,#0x08
	anl	_P1,#0xf7
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_EA,c
;	main.c:459: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	main.c:462: if (!mouse_enabled) {
	mov	dptr,#_mouse_enabled
	movx	a,@dptr
	jz	00177$
;	main.c:467: spi_send(0x4D); // Сигнатура MS mouse "M"
	mov	dpl,#0x4d
	lcall	_spi_send
;	main.c:468: if (m_wheel) {
	mov	dptr,#_m_wheel
	movx	a,@dptr
	jz	00173$
;	main.c:469: spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
	mov	dpl,#0x5a
	lcall	_spi_send
;	main.c:470: spi_send(0x40); // Четырехбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:471: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:472: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:473: spi_send(0x00); // Пустой пакет байт 4
	mov	dpl,#0x00
	lcall	_spi_send
	sjmp	00177$
00173$:
;	main.c:475: spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
	mov	dpl,#0x33
	lcall	_spi_send
;	main.c:476: spi_send(0x40); // Трёхбайтные пакеты
	mov	dpl,#0x40
	lcall	_spi_send
;	main.c:477: spi_send(0x00); // Пустой пакет байт 2
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:478: spi_send(0x00); // Пустой пакет байт 3
	mov	dpl,#0x00
	lcall	_spi_send
;	main.c:524: send_mouse_id();
00177$:
;	main.c:528: if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
	mov	dptr,#_main_m_bt_393216_279
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_st_m_bt_393216_279
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00196$
	mov	dptr,#_main_m_cx_393216_279
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00196$
	mov	dptr,#_main_m_cy_393216_279
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00196$
	mov	dptr,#_main_m_cz_393216_279
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00405$
	ljmp	00200$
00405$:
00196$:
;	main.c:529: int8_t cx = clamp(m_cx, -128, 127);
	mov	dptr,#_main_m_cx_393216_279
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
	jnc	00182$
	mov	dptr,#_main___2621440005_524288_292
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00185$
00182$:
	clr	c
	mov	a,#0x7f
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00184$
	mov	dptr,#_main___2621440005_524288_292
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00185$
00184$:
	mov	dptr,#_main___2621440005_524288_292
	mov	a,r6
	movx	@dptr,a
00185$:
	mov	dptr,#_main___2621440005_524288_292
	movx	a,@dptr
;	main.c:530: m_cx -= cx;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_main_m_cx_393216_279
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r5,a
	mov	a,r4
	subb	a,r6
	mov	r6,a
	mov	dptr,#_main_m_cx_393216_279
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:531: int8_t cy = clamp(m_cy, -128, 127);
	mov	dptr,#_main_m_cy_393216_279
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,#0x80
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00187$
	mov	dptr,#_main___2621440010_589824_296
	mov	a,#0x80
	movx	@dptr,a
	sjmp	00190$
00187$:
	clr	c
	mov	a,#0x7f
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00189$
	mov	dptr,#_main___2621440010_589824_296
	mov	a,#0x7f
	movx	@dptr,a
	sjmp	00190$
00189$:
	mov	dptr,#_main___2621440010_589824_296
	mov	a,r5
	movx	@dptr,a
00190$:
	mov	dptr,#_main___2621440010_589824_296
	movx	a,@dptr
;	main.c:532: m_cy -= cy;
	mov	r6,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_main_m_cy_393216_279
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	mov	dptr,#_main_m_cy_393216_279
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:533: int8_t cz = clamp(m_cz, -8, 7);
	mov	dptr,#_main_m_cz_393216_279
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0xf8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	00192$
	mov	dptr,#_main___2621450015_655360_300
	mov	a,#0xf8
	movx	@dptr,a
	sjmp	00195$
00192$:
	clr	c
	mov	a,#0x07
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00194$
	mov	dptr,#_main___2621450015_655360_300
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00195$
00194$:
	mov	dptr,#_main___2621450015_655360_300
	mov	a,r4
	movx	@dptr,a
00195$:
	mov	dptr,#_main___2621450015_655360_300
	movx	a,@dptr
;	main.c:534: m_cz -= cz;
	mov	r5,a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dptr,#_main_m_cz_393216_279
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,r2
	subb	a,r4
	mov	r4,a
	mov	dptr,#_main_m_cz_393216_279
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:536: st_m_bt = m_bt;
	mov	dptr,#_main_m_bt_393216_279
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_main_st_m_bt_393216_279
	movx	@dptr,a
;	main.c:538: spi_m_send(cx, cy, cz, m_bt);
	mov	dptr,#_spi_m_send_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_spi_m_send_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_spi_m_send_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r7
	lcall	_spi_m_send
;	main.c:784: do_process();
00200$:
;	main.c:786: if (fatal_error ||
	mov	dptr,#_fatal_error
	movx	a,@dptr
	jz	00412$
	ljmp	00202$
00412$:
;	main.c:787: (!allow_send_data &&
	mov	dptr,#_allow_send_data
	movx	a,@dptr
	jz	00413$
	ljmp	00202$
00413$:
;	main.c:788: !mouse_rx_buf_count &&
	mov	dptr,#_mouse_rx_buf_count
	movx	a,@dptr
	jz	00414$
	ljmp	00202$
00414$:
;	main.c:789: !spi_tx_buf_count)) {
	mov	dptr,#_spi_tx_buf_count
	movx	a,@dptr
;	main.c:790: mcu_sleep();
;	main.c:793: }
	ljmp	00202$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Startup"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Ready"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
