#ifndef __TOUCHKEY_H
#define __TOUCHKEY_H 			   
#include "main.h"

#define TOUCH_KEY_STANDBY 0x01
#define TOUCH_KEY_ADD 0x02
#define TOUCH_KEY_DEC 0x04
#define TOUCH_KEY_AUTO 0x08


typedef struct{

	u16 key_tim;				//����ʱ���ʱ��
//	u8 key_flag;			//������־
	u16 key_long_value;	//������ֵ
	u16 key_short_value;	//�̰���ֵ
	u16 key_value;				//��ֵ
	u16 key_val_x;				//��������
}KEY_DATA;

extern KEY_DATA KeyDat;

void TouchKey_Init(void);
u16 TouchKeyValue(void)	;

void key_scan(void);
#endif





























