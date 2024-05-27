#ifndef __KEY_H
#define __KEY_H	
#include "stm8h.h"

typedef struct{

	u16 key_tim;				//按下时间计时；
//	u8 key_flag;			//按键标志
	u8 key_long_value;	//长按键值
	u8 key_short_value;	//短按键值
	u8 key_value;				//键值
	u8 key_val_x;				//按下消抖
}KEY_DATA;

#define KEY1    ((GPIOC->IDR>>6)&0x01)
#define KEY2    ((GPIOC->IDR>>7)&0x01)
#define KEY3    ((GPIOG->IDR>>0)&0x01)

#define CW1     ((GPIOA->IDR>>1)&0x01)
#define CCW1    ((GPIOA->IDR>>2)&0x01)

#define CW2     ((GPIOA->IDR>>4)&0x01)
#define CCW2    ((GPIOA->IDR>>5)&0x01)
 
#define HR    ((GPIOA->IDR>>6)&0x01)


extern KEY_DATA KeyDat;
void Key_Init(void);
void key_scan(void);
#endif 
