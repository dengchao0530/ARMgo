#ifndef __KEY_H
#define __KEY_H	
#include "stm8h.h"

typedef struct{

	u16 key_tim;				//����ʱ���ʱ��
//	u8 key_flag;			//������־
	u8 key_long_value;	//������ֵ
	u8 key_short_value;	//�̰���ֵ
	u8 key_value;				//��ֵ
	u8 key_val_x;				//��������
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
