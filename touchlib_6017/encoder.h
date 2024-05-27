#ifndef __ENCODER_H
#define __ENCODER_H 			   
#include "main.h"


#define EC11_A        PD6
#define EC11_B        PD5
//#define EC11_K        HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_13) //KEY2����PC13

typedef struct
{
	int Time;//�����ʱ
	int EC11_Count;//�ۼ�
	int EC11_Enter;//ȷ��
	int Start_Key;//��ʼ/ֹͣ	
	int EC11_Count_Flag;//��ʼ/ֹͣ	
	int EC11_Speed;//EC11��ת�ٶ�
	int EC11_SpeedCount;//EC11��ת�ٶȼ���
}ENCODER_DATA;

extern ENCODER_DATA	EncoderData;
void EC11_Scan(void);
void EC11_Interrupt(void);
void encoder_Init(void);
void EC11_Set_Value(void);
#endif





























