#include "CH559.h"
#include "util.h"

#ifndef FREQ_SYS
#define FREQ_SYS 48000000
#endif 
/**
* #define PIN_MODE_INPUT 0
* #define PIN_MODE_INPUT_PULLUP 1
* #define PIN_MODE_OUTPUT 2
* #define PIN_MODE_OUTPUT_OPEN_DRAIN 3
* #define PIN_MODE_OUTPUT_OPEN_DRAIN_2CLK 4
* #define PIN_MODE_INPUT_OUTPUT_PULLUP 5
* #define PIN_MODE_INPUT_OUTPUT_PULLUP_2CLK 6
 */
void pinMode(unsigned char port, unsigned char pin, unsigned char mode)
{
    volatile unsigned char *dir[] = {&P0_DIR, &P1_DIR, &P2_DIR, &P3_DIR};
    volatile unsigned char *pu[] = {&P0_PU, &P1_PU, &P2_PU, &P3_PU};
    switch (mode)
    {
    case PIN_MODE_INPUT: //Input only, no pull up
        PORT_CFG &= ~(bP0_OC << port);
        *dir[port] &= ~(1 << pin);
        *pu[port] &= ~(1 << pin);
        break;
    case PIN_MODE_INPUT_PULLUP: //Input only, pull up
        PORT_CFG &= ~(bP0_OC << port);
        *dir[port] &= ~(1 << pin);
        *pu[port] |= 1 << pin;
        break;
    case PIN_MODE_OUTPUT: //Push-pull output, high and low level strong drive
        PORT_CFG &= ~(bP0_OC << port);
        *dir[port] |= ~(1 << pin);
        break;
    case PIN_MODE_OUTPUT_OPEN_DRAIN: //Open drain output, no pull-up, support input
        PORT_CFG |= (bP0_OC << port);
        *dir[port] &= ~(1 << pin);
        *pu[port] &= ~(1 << pin);
        break;
    case PIN_MODE_OUTPUT_OPEN_DRAIN_2CLK: //Open-drain output, no pull-up, only drives 2 clocks high when the transition output goes from low to high
        PORT_CFG |= (bP0_OC << port);
        *dir[port] |= 1 << pin;
        *pu[port] &= ~(1 << pin);
        break;
    case PIN_MODE_INPUT_OUTPUT_PULLUP: //Weakly bidirectional (standard 51 mode), open drain output, with pull-up
        PORT_CFG |= (bP0_OC << port);
        *dir[port] &= ~(1 << pin);
        *pu[port] |= 1 << pin;
        break;
    case PIN_MODE_INPUT_OUTPUT_PULLUP_2CLK: //Quasi-bidirectional (standard 51 mode), open-drain output, with pull-up, when the transition output is low to high, only drives 2 clocks high
        PORT_CFG |= (bP0_OC << port);
        *dir[port] |= 1 << pin;
        *pu[port] |= 1 << pin;
        break;
    default:
        break;
    }
}

/**
 * stdio printf directed to UART0 using putchar and getchar
 */
int putchar(int c)
{
    while (!TI);
    TI = 0;
    SBUF = c & 0xFF;
    return c;
}

int getchar() 
{
    while(!RI);
    RI = 0;
    return SBUF;
}

/*******************************************************************************
* Function Name  : delayUs(UNIT16 n)
* Description    : us
* Input          : UNIT16 n
* Output         : None
* Return         : None
*******************************************************************************/ 
void delayUs(unsigned short n)
{
    while (n) 
    {  // total = 12~13 Fsys cycles, 1uS @Fsys=12MHz
        ++ SAFE_MOD;  // 2 Fsys cycles, for higher Fsys, add operation here
#ifdef  FREQ_SYS
#if     FREQ_SYS >= 14000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 16000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 18000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 20000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 22000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 24000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 26000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 28000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 30000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 32000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 34000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 36000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 38000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 40000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 42000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 44000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 46000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 48000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 50000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 52000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 54000000
        ++ SAFE_MOD;
#endif
#if     FREQ_SYS >= 56000000
        ++ SAFE_MOD;
#endif
#endif
        --n;
    }
}

/*******************************************************************************
* Function Name  : delay(UNIT16 n)
* Description    : ms
* Input          : UNIT16 n
* Output         : None
* Return         : None
*******************************************************************************/
void delay(unsigned short n)
{
    while (n) 
    {
        delayUs(1000);
        --n;
    }
}