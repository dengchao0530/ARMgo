#ifndef __TOUCHKEY_H
#define __TOUCHKEY_H 			   
#include "main.h"

#define TOUCH_KEY_STANDBY 	0x01
#define TOUCH_KEY_TIME_ADD 	0x02
#define TOUCH_KEY_TIME_DEC	0x03
#define TOUCH_KEY_FLOW_ADD 	0x04
#define TOUCH_KEY_FLOW_DEC	0x05
#define TOUCH_KEY_VOICE 	0x06
#define TOUCH_KEY_ALARM 	0x07
#define TOUCH_KEY_SOS 		0x08
#define TOUCH_KEY_ANION 	0x09
#define TOUCH_KEY_SET		0x0A
#define TOUCH_KEY_CLEAR_TIME	0x0B
#define TOUCH_KEY_NULL		0x0C//�ް���
typedef struct{
	u16 key_tim;				//����ʱ���ʱ��
//	u8 key_flag;			//������־
	u16 key_long_value;	//������ֵ
	u16 key_short_value;	//�̰���ֵ
	u16 key_value;				//��ֵ
	u16 key_val_x;				//��������

    //todo:->2023/12/13 add:���һ������Ϊkey_Priority_display����Ŀ����Ϊ���޸��쳣״̬���޷���ʾ��ʱʱ������� status->������ɣ�����ʹ��
    u8 key_Priority_display;
}KEY_DATA;

extern KEY_DATA KeyDat;

void TouchKey_Init(void);
u16 TouchKeyValue(void)	;

void key_scan(void);
#endif





























