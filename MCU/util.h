#ifndef __UTIL_H__
#define __UTIL_H__
#include <stdio.h>
#include <stdint.h>

#define USE_DEVBOARD 0
#define DEBUG 0

#if DEBUG
#define DEBUG_OUT(...) printf(__VA_ARGS__);
#else
#define DEBUG_OUT(...) (void)0;
#endif

typedef void(* __data FunctionReference)();

void delayUs(uint16_t n);
void delay(uint16_t n);
#endif
