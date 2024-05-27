#ifndef __TOUCHKEY_H
#define __TOUCHKEY_H 			   
#include "main.h"

#define TOUCH_KEY_STANDBY 0x01
#define TOUCH_KEY_ADD 0x02
#define TOUCH_KEY_DEC 0x04
#define TOUCH_KEY_AUTO 0x08


typedef struct{

	u16 key_tim;				//按下时间计时；
//	u8 key_flag;			//按键标志
	u16 key_long_value;	//长按键值
	u16 key_short_value;	//短按键值
	u16 key_value;				//键值
	u16 key_val_x;				//按下消抖
}KEY_DATA;

extern KEY_DATA KeyDat;

void TouchKey_Init(void);
u16 TouchKeyValue(void)	;

void key_scan(void);
#endif





























