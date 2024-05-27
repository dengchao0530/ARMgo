#ifndef __LED_H__
#define __LED_H__

#include "syscfg.h"

#define  LED1_OUT TRISD4 = 0
#define  LED2_OUT TRISD1 = 0
#define  LED3_OUT TRISD0 = 0
#define  LED4_OUT TRISC7 = 0
#define  LED5_OUT TRISF2 = 0
#define  LED6_OUT TRISF3 = 0
#define  LED7_OUT TRISA0 = 0
#define  LED8_OUT TRISA1 = 0

#define  LED_OUT_MODE {LED1_OUT;\
LED2_OUT;\
LED3_OUT;\
LED4_OUT;\
LED5_OUT;\
LED6_OUT;\
LED7_OUT;\
LED8_OUT;}

#define  LED1 PD4
#define  LED2 PD1
#define  LED3 PD0
#define  LED4 PC7
#define  LED5 PF2
#define  LED6 PF3
#define  LED7 PA0
#define  LED8 PA1

#define  LED1_OFF	LED1 = 1
#define	 LED2_OFF	LED2 = 1
#define  LED3_OFF	LED3 = 1
#define	 LED4_OFF	LED4 = 1
#define  LED5_OFF	LED5 = 1
#define	 LED6_OFF	LED6 = 1
#define  LED7_OFF	LED7 = 1
#define	 LED8_OFF	LED8 = 1

#define  LED1_ON	LED1 = 0
#define	 LED2_ON	LED2 = 0
#define  LED3_ON	LED3 = 0
#define	 LED4_ON	LED4 = 0
#define  LED5_ON	LED5 = 0
#define	 LED6_ON	LED6 = 0
#define  LED7_ON	LED7 = 0
#define	 LED8_ON	LED8 = 0

/*LED IC control */
//#define  DIS_74HC595 

extern unsigned char strongest;
extern unsigned long single[];

typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

void DIS_74HC595DispOne(uint8_t idata);
void LED_INITIAL(void);
void LED_Scan(void);
void LED_Local_Scan(void);

#endif
