#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "CH559.h"
#include "util.h"
#include "USBHost.h"
#include "uart.h"

#pragma disable_warning 126 /* Убирает назойливое предупреждение о недоступном коде */
                            /* связанном с передачей констант в SPI_SEND_PACKET */

#define MS_RX_BUF_SIZE 16      /* Размер приёмного буфера событй hid устройства,
                                * реально используется 4 байта
                                */
#define SPI_TX_BUFFER_SIZE 255 /* Размер буфера передачи SPI */

#define TIMER0_CONST (65536-4000) /* Период вызова прерывания 1 мс */
#define TIMER1_CONST (10000) /* Регулирует длительность послесвечения светодиода */
#define TIMER2_RELOAD_FAST   (65536 - 100) /* Период вызова прерывания 25 мкс */
#define TIMER2_RELOAD_SLOW   (65536 - 400) /* Период вызова прерывания 100 мкс */

#define SERIAL_DELAY_MS 8   /* Задержка в мс при передаче данных без проверки */

#define GLUE(a, b)     a##b
#define _BV(bit)       (1U << (bit))

#define _PORT_IN_P0   P0
#define _PORT_IN_P1   P1
#define _PORT_IN_P2   P2
#define _PORT_IN_P3   P3
#define _PORT_IN_P4   P4_IN
#define _PORT_IN_P5   P5

#define _PORT_OUT_P0   P0
#define _PORT_OUT_P1   P1
#define _PORT_OUT_P2   P2
#define _PORT_OUT_P3   P3
#define _PORT_OUT_P4   P4_OUT
#define _PORT_OUT_P5   P5

#define PORT_OUT(x)    GLUE(_PORT_OUT_, x) /* ожидаем: P1 -> P1, P4 - > P4_OUT */
#define PORT_IN(x)     GLUE(_PORT_IN_, x)  /* ожидаем: P1 -> P1, P4 - > P4_IN */
#define PORT_DIR(x)    GLUE(x, _DIR)       /* ожидаем: P1 -> P1_DIR */

#define TIMER_MODE_13BIT    0x00
#define TIMER_MODE_16BIT    0x01
#define TIMER_MODE_8BIT_AUTO 0x02
#define TIMER_MODE_SPLIT    0x03

#define TIMER0_MASK 0x0F
#define TIMER1_MASK 0xF0

//===========================================================================
// Определение функционала ножек процессора.
//===========================================================================
#define SPI_RESOUT_PORT   P1
#define SPI_RESOUT_PIN    3
#define SPI_MOSI_PORT     P1 /* P1.5 HW MOSI */
#define SPI_MOSI_PIN      5
#define SPI_SCK_PORT      P1 /* P1.7 HW SCK */
#define SPI_SCK_PIN       7

#define DTR_PORT          P3 /* P3.2 INT0 */
#define DTR_PIN           2

#if 1 // Штатный вариант
#define LED_PORT          P4 /* Один вывод с PRG */
#define LED_PIN           6
#define PRG_PORT          LED_PORT
#define PRG_PIN           LED_PIN
#else // отладочная плата
#define LED_PORT          P1
#define LED_PIN           4
#define PRG_PORT          P4
#define PRG_PIN           6
#endif

#define COM_SEL1_PORT     P2
#define COM_SEL1_PIN      6
#define COM_SEL2_PORT     P2
#define COM_SEL2_PIN      7

#define WHEEL_SEL_PORT    P3
#define WHEEL_SEL_PIN     4

#define IRQX_SEL_PORT     P2
#define IRQX_SEL_PIN      5

#define RATE_SEL1_PORT    P1
#define RATE_SEL1_PIN     2
#define RATE_SEL2_PORT    P1
#define RATE_SEL2_PIN     4

#define RxIRQ_PORT        P1
#define RxIRQ_PIN         6

#define USE_IRQ3  0
#define USE_IRQX  1
#define USE_IRQ4  2

// Только у CH559L
#define RxD_PORT          P0
#define RxD_PIN           2
#define TxD_PORT          P0
#define TxD_PIN           3

//===========================================================================
// Состояние UART IRQ
//===========================================================================
// 1 - не готовность приема символа, 0 - готовность
#define not_rdy_2rcv() (PORT_IN(RxIRQ_PORT) & _BV(RxIRQ_PIN))

//===========================================================================
// Светодиод
//===========================================================================
#if 1 // Штатный вариант
#define led_on()        (PORT_OUT(LED_PORT) &= ~_BV(LED_PIN))
#define led_off()       (PORT_OUT(LED_PORT) |= _BV(LED_PIN))
#else // отладочная плата
#define led_on()        (PORT_OUT(LED_PORT) |= _BV(LED_PIN))
#define led_off()       (PORT_OUT(LED_PORT) &= ~_BV(LED_PIN))
#endif

#define led_timer_stop()  do { T3_CTRL = 0; } while(0)
#define led_timer_start() do { T3_CTRL = 1; } while(0)

//===========================================================================
// Программый SPI для связи с CPLD
//===========================================================================
#define spi_mosi_high()    (PORT_OUT(SPI_MOSI_PORT) |= _BV(SPI_MOSI_PIN))
#define spi_mosi_low()     (PORT_OUT(SPI_MOSI_PORT) &= ~_BV(SPI_MOSI_PIN))
#define spi_sck_high()     (PORT_OUT(SPI_SCK_PORT) |= _BV(SPI_SCK_PIN))
#define spi_sck_low()      (PORT_OUT(SPI_SCK_PORT) &= ~_BV(SPI_SCK_PIN))
#define spi_reset_high()   (PORT_OUT(SPI_RESOUT_PORT) |= _BV(SPI_RESOUT_PIN))
#define spi_reset_low()    (PORT_OUT(SPI_RESOUT_PORT) &= ~_BV(SPI_RESOUT_PIN))

#define spi_timer_stop()  do { TR2 = 0; } while(0)

#define spi_timer_fast()  do { \
    TR2 = 0; \
    RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF); \
    RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF); \
    TH2 = RCAP2H; TL2 = RCAP2L; \
    TR2 = 1; \
} while(0)

#define spi_timer_slow()  do { \
    TR2 = 0; \
    RCAP2H = (uint8_t)((TIMER2_RELOAD_SLOW >> 8) & 0xFF); \
    RCAP2L = (uint8_t)(TIMER2_RELOAD_SLOW & 0xFF); \
    TH2 = RCAP2H; TL2 = RCAP2L; \
    TR2 = 1; \
} while(0)

#define SPI_DELAY() do { __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); } while(0)

#define SPI_SEND_BIT(bit_mask, tx_data) do { \
    spi_sck_low(); \
    SPI_DELAY(); \
    if ((tx_data) & (bit_mask)) spi_mosi_high(); else spi_mosi_low(); \
    SPI_DELAY(); \
    spi_sck_high(); \
    SPI_DELAY(); \
} while (0)

// Пакет из 7 бит с данными мыши
#define SPI_SEND_PACKET(tx_data) do { \
    SPI_SEND_BIT(0x40, (tx_data)); \
    SPI_SEND_BIT(0x20, (tx_data)); \
    SPI_SEND_BIT(0x10, (tx_data)); \
    SPI_SEND_BIT(0x08, (tx_data)); \
    SPI_SEND_BIT(0x04, (tx_data)); \
    SPI_SEND_BIT(0x02, (tx_data)); \
    SPI_SEND_BIT(0x01, (tx_data)); \
    spi_sck_low(); \
    spi_mosi_low(); \
} while (0)

#define SPI_RESET() do { spi_reset_high(); spi_reset_low(); } while(0)

#define CRITICAL_SECTION(code_block) \
    do { \
        uint8_t ea_state_##__LINE__ = EA; \
        EA = 0; \
        code_block \
        EA = ea_state_##__LINE__; \
    } while(0)

#define get_mouse_power_state() (PORT_IN(DTR_PORT) & _BV(DTR_PIN))

//===========================================================================
// Декларации функций
//===========================================================================
static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq);
extern FunctionReference runBootloader;

//===========================================================================
// Выбор базового адреса COM порта
//===========================================================================
typedef enum {
    SELECT_COM1 = 0,
    SELECT_COM2 = 1,
    SELECT_COM3 = 2,
    SELECT_COM4 = 3,
} com_select_t;

//===========================================================================
// Select data rate
//===========================================================================
// Скорость мыши
// Допустимые значения: 10, 20, 40, 60, 80, 100, 200
typedef enum {
    PS2_SAMPLES_PER_SEC_10 = 10,
    PS2_SAMPLES_PER_SEC_20 = 20,
    PS2_SAMPLES_PER_SEC_40 = 40,
    PS2_SAMPLES_PER_SEC_60 = 60,
    PS2_SAMPLES_PER_SEC_80 = 80,
    PS2_SAMPLES_PER_SEC_100 = 100,
    PS2_SAMPLES_PER_SEC_200 = 200,
} data_rate_t;

#define PS2_SAMPLES_PER_SEC_UFAST   PS2_SAMPLES_PER_SEC_100 
#define PS2_SAMPLES_PER_SEC_FAST    PS2_SAMPLES_PER_SEC_80 
#define PS2_SAMPLES_PER_SEC_MID     PS2_SAMPLES_PER_SEC_40
#define PS2_SAMPLES_PER_SEC_SLOW    PS2_SAMPLES_PER_SEC_20

//===========================================================================
// Глобальные переменные
//===========================================================================
uint8_t opt_com_settings;
uint8_t opt_wheel_enabled;
uint8_t opt_rate_settings;
uint8_t opt_irq_settings;

volatile uint8_t m_wheel;
uint8_t mouse_rx_buf[MS_RX_BUF_SIZE];
volatile uint8_t mouse_rx_buf_w;
volatile uint8_t mouse_rx_buf_r;
volatile uint8_t mouse_rx_buf_count;

uint8_t spi_tx_buf[SPI_TX_BUFFER_SIZE];
volatile uint8_t spi_tx_buf_w;
volatile uint8_t spi_tx_buf_r;
volatile uint8_t spi_tx_buf_count;

volatile uint8_t mouse_start;      // Необходимо вывести приветствие мыши
volatile uint8_t mouse_enabled;    // Мышь активна
volatile uint8_t device_init;      // Произведена инициализация адресов/IRQ устройства
volatile uint8_t allow_send_data;  // Флаг синхронизации передачи данных
volatile uint8_t fatal_error;
volatile uint8_t timer0_limit;

//===========================================================================
// Общие функции
//===========================================================================
// Отправить MCU в сон
static inline void mcu_sleep(void) {
    // Проверить, вызывает проблемы со SPI
    // PCON |= PD;  // Power down mode
}

// Ограничение переменной значениями [min, max]
static inline int8_t clamp(int16_t val, int8_t min, int8_t max) {
    if (val < (int16_t)min) return min;
    if (val > (int16_t)max) return max;
    return (int8_t)val;
}

//===========================================================================
// Прерывания
//===========================================================================
// Выключилась линия RTS
void int0_isr(void) __interrupt (INT_NO_INT0) {
    mouse_enabled = get_mouse_power_state();
}

void timer0_isr(void) __interrupt (INT_NO_TMR0) {
    static uint8_t cnt = 0;

    if (++cnt >= timer0_limit) {
        cnt = 0;
        allow_send_data = true;
    }
}

void Timer3_ISR(void) __interrupt (INT_NO_TMR3) {
    T3_CTRL = 0; // Стоп таймер

    led_off();
}

void Timer2_ISR(void) __interrupt (INT_NO_TMR2) {
    uint8_t current_byte;
    TF2 = 0; // Не сбрасывается автоматически

    // Проверяем возможность передачи
    if (not_rdy_2rcv() && device_init) {
        // Медленно продолжаем проверять возможность передачи
        spi_timer_slow();
        return;
    }

    // Нечего передавать, останавливаемся
    if (!spi_tx_buf_count) {
        spi_timer_stop();
        return;
    }

    device_init = true;

    // Забираем байт из буфера
    current_byte = spi_tx_buf[spi_tx_buf_r];
    if (++spi_tx_buf_r == SPI_TX_BUFFER_SIZE) {
        spi_tx_buf_r = 0;
    }
    spi_tx_buf_count--;

    // Линейная передача без циклов
    SPI_SEND_PACKET(current_byte);

    // Управление таймером
    if (!spi_tx_buf_count) { // Нечего передавать, останавливаемся
        spi_timer_stop();
    } else {                 // Продолжаем передавать
        spi_timer_fast();
    }
}

//===========================================================================
// Управление светодиодом
//===========================================================================
// Мигнуть светодиодом
void flash_led(void) {
    led_on();
    led_timer_start();
}

//===========================================================================
// Работа с мышью
//===========================================================================
// Инициализация мыши
static inline void usb_mouse_init(void) {
    m_wheel = opt_wheel_enabled;
}

void mouse_write(uint8_t c) {
    // Передаём данные только если мышь активна
    if (!mouse_enabled)
        return;

    // Если кончилось место в буфере, значит что-то пошло не так
    if (mouse_rx_buf_count >= MS_RX_BUF_SIZE) {
        fatal_error = true;
        return;
    }
    CRITICAL_SECTION (
        mouse_rx_buf[mouse_rx_buf_w] = c;
        mouse_rx_buf_count++;
        if (++mouse_rx_buf_w == MS_RX_BUF_SIZE) {
            mouse_rx_buf_w = 0;
        }
    );
}

static uint8_t mouse_read(void) {
    uint8_t data = 0;

    // Выключаем прерывания, так как обработчик прерывания тоже модифицирует эти переменные.
    CRITICAL_SECTION (
        // Если буфер пуст, возвращаем значение по умолчанию (ноль)
        if (mouse_rx_buf_count) {
            data = mouse_rx_buf[mouse_rx_buf_r];
            mouse_rx_buf_count--;
            if (++mouse_rx_buf_r == MS_RX_BUF_SIZE) {
                mouse_rx_buf_r = 0;
            }
        }
    );
    return data;
}

//===========================================================================
// Soft SPI порт
//===========================================================================
// Инициализация Soft SPI
static inline void spi_init(void) {
    CRITICAL_SECTION (
        spi_tx_buf_w = 0;
        spi_tx_buf_r = 0;
        spi_tx_buf_count = 0;

        // CPLD сброшен, требуется передача байта конфигурации
        if (!device_init) {
            // Сбрасываем базовые настройки устройства
            spi_mosi_high();
            delayUs(1);
            spi_mosi_low();
            // Инициализация порта и IRQ
            spi_send_config(opt_com_settings, opt_irq_settings);
        }
        delayUs(1);
        spi_reset_low();
    );

    // Ждём инициализацию устройства
    while (!device_init) {
        mcu_sleep();
    }
}

static void spi_send(uint8_t c) {
    while (spi_tx_buf_count == SPI_TX_BUFFER_SIZE) {
        mcu_sleep();
    } ;

    CRITICAL_SECTION (
        spi_tx_buf[spi_tx_buf_w] = c;
        if (spi_tx_buf_count++ == 0)
            spi_timer_fast();
        if (++spi_tx_buf_w == SPI_TX_BUFFER_SIZE) {
            spi_tx_buf_w = 0;
        }
    );
}

// Отправка конфигурации устройства через SPI
static inline void spi_send_config(uint8_t opt_com, uint8_t opt_irq) {
    uint8_t config_data = 0;
    config_data |= (opt_com & 0x03); // Base adress
    config_data |= (opt_irq == USE_IRQX) ? 0x4 : 0; // Не использовать стандартное IRQ

    spi_send(config_data);
}

// Отправка данных мыши через SPI
static void spi_m_send(int8_t x, int8_t y, int8_t z, uint8_t b) {
    uint8_t left_b, right_b, middle_b;

    left_b = b & 1;
    right_b = (b >> 1) & 1;
    middle_b = (b >> 2) & 1;

    spi_send((1 << 6) | (left_b << 5) | (right_b << 4) |
             ((y & 0xC0) >> 4) | ((x & 0xC0) >> 6));
    spi_send(x & 0x3F);
    spi_send(y & 0x3F);
    // Данные с колесика посылаем только если установлен джампер
    if (m_wheel) {
        spi_send((middle_b << 4) | (z & 0x0F));
    }

    flash_led();
}

// Отправка приветствия мыши
static inline void send_mouse_id(void) {
    // Имитация переходных процессов при включении
    delay(20);

    // Не передаем ID при кратковременных включениях
    if (!mouse_enabled) {
        return;
    }

    // Приветствие Logitech/Microsoft Plus
    spi_send(0x4D); // Сигнатура MS mouse "M"
    if (m_wheel) {
        spi_send(0x5A); // Сигнатура мыши с колёсиком "Z"
        spi_send(0x40); // Четырехбайтные пакеты
        spi_send(0x00); // Пустой пакет байт 2
        spi_send(0x00); // Пустой пакет байт 3
        spi_send(0x00); // Пустой пакет байт 4
    } else {
        spi_send(0x33); // Сигнатура 3х кнопочной мыши "3"
        spi_send(0x40); // Трёхбайтные пакеты
        spi_send(0x00); // Пустой пакет байт 2
        spi_send(0x00); // Пустой пакет байт 3
    }
}

// Тело основного цикла
static inline void do_process(void) {
    static uint8_t st_m_bt = 0;
    static uint8_t dr_ctr = 0;
    static uint8_t m_bt;
    static int16_t m_cx;
    static int16_t m_cy;
    static int16_t m_cz;

    checkRootHubConnections();

    // Опрашиваем подключенное USB устройство
    pollHIDdevice();

    // Полностью выбираем принятые пакеты
    while (mouse_rx_buf_count >= 4) {
        m_bt = mouse_read() & (m_wheel?7:3); // byte 0: 00000RML  (битовые флаги левой/правой/средней кнопки)
        m_cx += (int8_t)mouse_read(); // byte 1: ΔX (signed)
        m_cy -= (int8_t)mouse_read(); // byte 2: ΔY (signed)
        m_cz += (int8_t)mouse_read(); // byte 3: ΔWheel (signed)
    }

    // Мышь включена и таймер следующей посылки активен
    if (allow_send_data && mouse_enabled) {
        allow_send_data = false;
        dr_ctr = (dr_ctr + 1) & 0x03;

        // Инициализация мыши
        if (mouse_start) {
            mouse_start = false;

            // Очистка данных
            CRITICAL_SECTION (
                m_cx = 0; m_cy = 0;
                m_cz = 0; m_bt = 0;

                spi_tx_buf_r = spi_tx_buf_w;
                spi_tx_buf_count = 0;
                spi_timer_stop();
                SPI_RESET();
            );

            send_mouse_id();
        }

        // Передаём, если что-то изменилось
        if (m_bt != st_m_bt || m_cx || m_cy || m_cz) {
            int8_t cx = clamp(m_cx, -128, 127);
            m_cx -= cx;
            int8_t cy = clamp(m_cy, -128, 127);
            m_cy -= cy;
            int8_t cz = clamp(m_cz, -8, 7);
            m_cz -= cz;

            st_m_bt = m_bt;

            spi_m_send(cx, cy, cz, m_bt);
        }
    }
}

//===========================================================================
// Чтение джамперов
//===========================================================================
static inline uint8_t readCOMsettings(void) {
    uint8_t res = (((PORT_IN(COM_SEL1_PORT) & _BV(COM_SEL1_PIN))?1:0) |
                   ((PORT_IN(COM_SEL2_PORT) & _BV(COM_SEL2_PIN))?2:0));

    switch (res) {
        case 3: 
            res = SELECT_COM1;
            break;
        case 2:
            res = SELECT_COM2;
            break;
        case 1:
            res = SELECT_COM3;
            break;
        case 0:
            res = SELECT_COM4;
            break;
        default:
            res = SELECT_COM1;
    }
    return res;
}

static inline bool readWheelsettings(void) {
    return !(PORT_IN(WHEEL_SEL_PORT) & _BV(WHEEL_SEL_PIN));
}

static inline uint8_t readRatesettings(void) {
    uint8_t res = (((PORT_IN(RATE_SEL1_PORT) & _BV(RATE_SEL1_PIN))?1:0) |
                   ((PORT_IN(RATE_SEL2_PORT) & _BV(RATE_SEL2_PIN))?2:0));

    switch (res) {
        case 3:
            res = PS2_SAMPLES_PER_SEC_UFAST;
            break;
        case 2:
            res = PS2_SAMPLES_PER_SEC_FAST;
            break;
        case 1:
            res = PS2_SAMPLES_PER_SEC_MID;
            break;
        case 0:
            res = PS2_SAMPLES_PER_SEC_SLOW;
            break;
        default:
            res = PS2_SAMPLES_PER_SEC_UFAST;
    }
    return res;
}

static inline uint8_t checkIRQ(uint8_t opt_com) {
    if (!(PORT_IN(IRQX_SEL_PORT) & _BV(IRQX_SEL_PIN))) {
        return USE_IRQX;
    }
    if (opt_com == SELECT_COM1 || opt_com == SELECT_COM3) {
        return USE_IRQ4;
    }
    return USE_IRQ3;
}

//===========================================================================
// Инициализация и тело программы
//===========================================================================
static inline uint8_t get_reset_source(void) {
    return (PCON & (bRST_FLAG1 | bRST_FLAG0)) >> 4;
}

static inline void usb_init(void) {
    resetHubDevices(0);
    resetHubDevices(1);
    initUSB_Host();
}

static inline void init(void) {
    WDOG_COUNT = 0;

    // Init clock
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;

    PLL_CFG = (MASK_USB_4X_DIV & (6 << 5)) | (MASK_PLL_MULT & 24);
    CLOCK_CFG = bOSC_EN_INT | (MASK_SYS_CK_DIV & 6);

    SAFE_MOD = 0xFF;

    delay(7);

    /*
    * #define PIN_MODE_INPUT 0
    * #define PIN_MODE_INPUT_PULLUP 1
    * #define PIN_MODE_OUTPUT 2
    * #define PIN_MODE_OUTPUT_OPEN_DRAIN 3
    * #define PIN_MODE_OUTPUT_OPEN_DRAIN_2CLK 4
    * #define PIN_MODE_INPUT_OUTPUT_PULLUP 5
    * #define PIN_MODE_INPUT_OUTPUT_PULLUP_2CLK 6
    */
    pinMode(PORT_OUT(SPI_RESOUT_PORT), SPI_RESOUT_PIN, PIN_MODE_OUTPUT);
    pinMode(PORT_OUT(SPI_MOSI_PORT), SPI_MOSI_PIN, PIN_MODE_OUTPUT);
    pinMode(PORT_OUT(SPI_SCK_PORT), SPI_SCK_PIN, PIN_MODE_OUTPUT);
    pinMode(PORT_OUT(TxD_PORT), TxD_PIN, PIN_MODE_OUTPUT_OPEN_DRAIN);

    pinMode(PORT_IN(RxD_PORT), RxD_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(DTR_PORT), DTR_PIN, PIN_MODE_INPUT);
    pinMode(PORT_IN(COM_SEL1_PORT), COM_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(COM_SEL2_PORT), COM_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(RATE_SEL1_PORT), RATE_SEL1_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_OUTPUT);

    pinMode(PORT_IN(RATE_SEL2_PORT), RATE_SEL2_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(WHEEL_SEL_PORT), WHEEL_SEL_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(IRQX_SEL_PORT), IRQX_SEL_PIN, PIN_MODE_INPUT_PULLUP);
    pinMode(PORT_IN(RxIRQ_PORT), RxIRQ_PIN, PIN_MODE_INPUT);
    pinMode(PORT_IN(PRG_PORT), PRG_PIN, PIN_MODE_INPUT_PULLUP);

    // Если замкнуты контакты, переходим в бутлоадер
    if (!(PORT_IN(PRG_PORT) & _BV(PRG_PIN))) {
        runBootloader();
    } else { // В противном случае используем ногу как выход светодиода
       pinMode(PORT_OUT(LED_PORT), LED_PIN, PIN_MODE_OUTPUT);
    }

    // Определяем конфигурацию джамперов
    opt_com_settings = readCOMsettings();
    opt_wheel_enabled = readWheelsettings();
    opt_rate_settings = readRatesettings();
    // Время в мс, соответствующее периоду опроса мыши
    timer0_limit = (uint8_t)((2000U + opt_rate_settings) / (2U * opt_rate_settings));

    opt_irq_settings = checkIRQ(opt_com_settings);

    // Timer 0
    // Частота на входе таймера 48 MHz
    // Частота на выходе таймера 1000 Гц
    // Частота таймера = 48 MHz / 12 = 4 MHz => 4000 тиков = 1мс
    // TIMER0_CONST = 65536 - 4000;
    TH0 = (uint8_t)(TIMER0_CONST >> 8);
    TL0 = (uint8_t)(TIMER0_CONST & 0xFF);
    TF0 = 0;
    TR0 = 1;

    // Таймер 2
    // Clock source: System Clock (48 MHZ)
    TR2 = 0;         // останов таймера
    T2MOD = 0x00;    // обычный режим, авто-перезагрузка 16-бит
    RCAP2H = (uint8_t)((TIMER2_RELOAD_FAST >> 8) & 0xFF);
    RCAP2L = (uint8_t)(TIMER2_RELOAD_FAST & 0xFF);
    TH2 = RCAP2H;
    TL2 = RCAP2L;
    TF2 = 0;

    // Таймер 3 для светодиода
    // Настройка таймера 3 в 16-битном режиме с авто-перезагрузкой
    T3_SETUP = 0;           // Режим таймера (не захвата)
    T3_COUNT = 0;           // Сброс счетчика
    T3_END = TIMER1_CONST;  // Установка периода
    T3_CTRL = 0;            // Изначально остановлен, сброс флагов

    // Настроим внешнее прерывание INT0 (8051: EX0 bit в IE)
    // Сброс флага IE0 (в TCON бит1) и разрешение EX0
    IT0 = 1; // Активен по спаду сигнала
    IE0 = 0; // Сброс флага прерывания INT0

    // Timer(s)/Counter(s) Interrupt(s) initialization
    // Включаем прерывания от таймеров
    ET0 = 1; // разрешить прерывания таймера 0
    ET2 = 1; // разрешить прерывания таймера 2
    IE_TMR3 = 1; // разрешить прерывания таймера 3
    EX0 = 1; // разрешить прерывания INT0

    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Включить просыпание по событиям: USB, RXD0/1 low, P3.2 (INT0) edge, pin P3.3 (INT1) low
    WAKE_CTRL = bWAK_BY_USB | bWAK_RXD1_LO | bWAK_P3_2E_3L | bWAK_RXD0_LO;
    // Выключить тактовую частоту для ADC, UART1, PWM1/SPI1, SPI0, timer3, xRAM
    SLEEP_CTRL = bSLP_OFF_ADC | bSLP_OFF_UART1 | bSLP_OFF_P1S1 |
                 bSLP_OFF_SPI0 | bSLP_OFF_TMR3 | bSLP_OFF_XRAM;

    // Разрешим watchdog
    GLOBAL_CFG |= bWDOG_EN;

    SAFE_MOD = 0xFF;

    switch (get_reset_source()) {
        case 0b10: // 10 - Переполнение watchdog
            device_init = true;
            break;
        case 0b11: // 11 - Аппаратный сброс
            led_on(); // Сигнализируем исправность светодиода
            delay(50);
            // Сознательно опущенный break
        case 0b00: // 00 - Программный сброс
        case 0b01: // 01 - Сброс при включении питания
            delay(50); // Ждём окончания переходных процессов
            led_off();
            device_init = false;
            break;
    }

    // Разрешим прерывания
    EA = 1;

    // Инициализация CPLD части
    spi_init();

    initUART0(115200);
    DEBUG_OUT("Startup\n");

    // Инициализация USB части
    usb_init();
    usb_mouse_init();

    mouse_enabled = get_mouse_power_state();
    mouse_start = true;
    fatal_error = false;
}

int main(void) {
    init();

    DEBUG_OUT("Ready\n");

    for (;;) {
        if (!fatal_error) {
            WDOG_COUNT = 0;
        }

        if (!mouse_enabled) { // Мышь выключена
            // Проверяем не включили ли мышь
            mouse_enabled = get_mouse_power_state();
            if (mouse_enabled) {
                // Мышь включили, нужно послать ID
                mouse_start = true;
                allow_send_data = true;
            }
        }

        processUart();

        do_process();

        if (fatal_error ||
               (!allow_send_data &&
                !mouse_rx_buf_count &&
                !spi_tx_buf_count)) {
            mcu_sleep();
        }
    }
}
