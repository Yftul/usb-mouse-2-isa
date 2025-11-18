
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "CH559.h"
#include "util.h"
#include "uart.h"

FunctionReference runBootloader = (FunctionReference)0xF400;

uint8_t __xdata uartRxBuff[64];
uint8_t __xdata rxPos = 0;

//---------------------------------------------------------------------------
// Инициализация UART0 с заданной скоростью
// pins: tx = P3.1 rx = P3.0
// alt != 0 pins: tx = P0.2 rx = P0.3
//---------------------------------------------------------------------------
void initUART0(unsigned long baud)
{
    unsigned long reload;

    // --- Настройка выводов UART
    PORT_CFG |= bP0_OC;        // Разрешить альтернативную функцию на порту P0
    P0_DIR  |= bTXD_;          // TXD как выход
    P0_PU   |= bTXD_ | bRXD_;  // Включить подтяжку на TXD и RXD
    PIN_FUNC |= bUART0_PIN_X;  // Выбрать линию UART0 на альтернативных пинах

    // --- Настройка UART: режим 1 (8 бит, переменная скорость) ---
    SM0 = 0;
    SM1 = 1; // UART mode 1: 8 data bits, 1 stop
    SM2 = 0;
    REN = 1; // Разрешить прием

    // Включаем удвоенный бодрейт при SMOD=1 (если используется)
    PCON |= SMOD;

    // --- Расчет перезагрузки таймера для заданного baudrate ---
    // x = (FREQ_SYS / (16 * baud)), формула адаптирована под SMOD
    reload = (((unsigned long)FREQ_SYS / 8) / baud + 1) / 2;

    // --- Настраиваем Timer1 как источник baudrate ---
    TMOD = (TMOD & ~(bT1_GATE | bT1_CT | MASK_T1_MOD)) | bT1_M1; // Timer1: режим 2, авто-перезагрузка
    T2MOD |= bTMR_CLK | bT1_CLK;                                 // Выбрать системную частоту
    TH1 = (uint8_t)(256 - reload);                               // Установка перезагрузки
    TR1 = 1;                                                     // Запускаем Timer1

    // --- Готовность к передаче ---
    TI = 1; // Установить флаг, чтобы первое отправление не зависло
}

void processUart(){
    while(RI){
        RI=0;
        uartRxBuff[rxPos] = SBUF;
        if (uartRxBuff[rxPos]=='\n' || rxPos >= 64) {
            for (uint8_t i = 0; i < rxPos; i ++ ) {
                    printf( "0x%02X ",uartRxBuff[i]);
            }
            printf("\n");
            if(uartRxBuff[0]=='k') {
                //if(uartRxBuff[1]==0x61)LED=0;
                //if(uartRxBuff[1]==0x73)LED=1;
                if(uartRxBuff[1]=='b')
                               runBootloader();
            }
            rxPos=0;
        }else{
            rxPos++;
        }
    }
}

void sendProtocolMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer){
    unsigned short i;
    putchar(0xFE);
    putchar(length);
    putchar((unsigned char)(length>>8));
    putchar(msgtype);
    putchar(type);
    putchar(device);
    putchar(endpoint);
    putchar(0);
    putchar(0);
    putchar(0);
    putchar(0);
    for (i = 0; i < length; i++)
    {
        putchar(msgbuffer[i]);
    }
    putchar('\n');
}

void sendHidPollMSG(unsigned char msgtype, unsigned short length, unsigned char type, unsigned char device, unsigned char endpoint, unsigned char __xdata *msgbuffer,unsigned char idVendorL,unsigned char idVendorH,unsigned char idProductL,unsigned char idProductH){
    unsigned short i;
    putchar(0xFE);    
    putchar(length);
    putchar((unsigned char)(length>>8));
    putchar(msgtype);
    putchar(type);
    putchar(device);
    putchar(endpoint);
    putchar(idVendorL);
    putchar(idVendorH);
    putchar(idProductL);
    putchar(idProductH);
    for (i = 0; i < length; i++)
    {
        putchar(msgbuffer[i]);
    }
    putchar('\n');
}
