#ifndef __GPIO_INIT_H
#define __GPIO_INIT_H 			   
#include "main.h"

#define ENCODER_LED P53  //旋转编码其，低电平点亮
#define TOUCHT_LED P41  //触摸按键LED高电平点亮
#define LAMP_LED P50  //触摸按键LED高电平点亮

#define POW_KEY P34  //电源开关输入
#define DC_TEST P24  //电源断开检测

#define COMPR_OUT P01  //压缩机输出
#define FAN1_OUT P27  //风扇1
#define FAN2_OUT P26  //风扇2
#define SV_A_OUT P45  //电磁阀A
#define SV_B_OUT P46  //电磁阀B

#define STEPA P02  //步进电机A
#define STEPB P03  //步进电机B
#define STEPC P04  //步进电机C
#define STEPD P52  //步进电机D

void GPIO_Init(void);
void StepCtr(u8 speed);
void StepDrive(u8 speed,u8 mode);

#endif





























