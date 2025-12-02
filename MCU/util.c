#include "CH559.h"
#include "util.h"

#pragma disable_warning 126 /* Убирает назойливое предупреждение о недоступном коде */

#define ADD_CYCLES_FOR_FREQ(freq) \
    if(FREQ_SYS >= freq) { ++SAFE_MOD; }

FunctionReference runBootloader = (FunctionReference)0xF400;

/*******************************************************************************
* Function Name  : delayUs(UNIT16 n)
* Description    : us
* Input          : UNIT16 n
* Output         : None
* Return         : None
*******************************************************************************/
void delayUs(uint16_t n)
{
    while (n) {       // total = 12~13 Fsys cycles, 1uS @Fsys=12MHz
        ++ SAFE_MOD;  // 2 Fsys cycles, for higher Fsys, add operation here

#ifdef FREQ_SYS
        ADD_CYCLES_FOR_FREQ(14000000)
        ADD_CYCLES_FOR_FREQ(16000000)
        ADD_CYCLES_FOR_FREQ(18000000)
        ADD_CYCLES_FOR_FREQ(20000000)
        ADD_CYCLES_FOR_FREQ(22000000)
        ADD_CYCLES_FOR_FREQ(24000000)
        ADD_CYCLES_FOR_FREQ(26000000)
        ADD_CYCLES_FOR_FREQ(28000000)
        ADD_CYCLES_FOR_FREQ(30000000)
        ADD_CYCLES_FOR_FREQ(32000000)
        ADD_CYCLES_FOR_FREQ(34000000)
        ADD_CYCLES_FOR_FREQ(36000000)
        ADD_CYCLES_FOR_FREQ(38000000)
        ADD_CYCLES_FOR_FREQ(40000000)
        ADD_CYCLES_FOR_FREQ(42000000)
        ADD_CYCLES_FOR_FREQ(44000000)
        ADD_CYCLES_FOR_FREQ(46000000)
        ADD_CYCLES_FOR_FREQ(48000000)
        ADD_CYCLES_FOR_FREQ(50000000)
        ADD_CYCLES_FOR_FREQ(52000000)
        ADD_CYCLES_FOR_FREQ(54000000)
        ADD_CYCLES_FOR_FREQ(56000000)
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
void delay(uint16_t n)
{
    while (n--) {
        delayUs(1000);
    }
}
