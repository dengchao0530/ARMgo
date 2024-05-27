#ifndef __ENCODER_H
#define __ENCODER_H 			   
#include "main.h"


#define EC11_A        PD6
#define EC11_B        PD5
//#define EC11_K        HAL_GPIO_ReadPin(GPIOC,GPIO_PIN_13) //KEY2按键PC13

typedef struct
{
	int Time;//换向计时
	int EC11_Count;//累计
	int EC11_Enter;//确认
	int Start_Key;//开始/停止	
	int EC11_Count_Flag;//开始/停止	
	int EC11_Speed;//EC11旋转速度
	int EC11_SpeedCount;//EC11旋转速度计数
}ENCODER_DATA;

extern ENCODER_DATA	EncoderData;
void EC11_Scan(void);
void EC11_Interrupt(void);
void encoder_Init(void);
void EC11_Set_Value(void);
#endif





























