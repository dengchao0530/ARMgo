#ifndef __GPIO_INIT_H
#define __GPIO_INIT_H 			   
#include "main.h"

#define ENCODER_LED P53  //��ת�����䣬�͵�ƽ����
#define TOUCHT_LED P41  //��������LED�ߵ�ƽ����
#define LAMP_LED P50  //��������LED�ߵ�ƽ����

#define POW_KEY P34  //��Դ��������
#define DC_TEST P24  //��Դ�Ͽ����

#define COMPR_OUT P01  //ѹ�������
#define FAN1_OUT P27  //����1
#define FAN2_OUT P26  //����2
#define SV_A_OUT P45  //��ŷ�A
#define SV_B_OUT P46  //��ŷ�B

#define STEPA P02  //�������A
#define STEPB P03  //�������B
#define STEPC P04  //�������C
#define STEPD P52  //�������D

void GPIO_Init(void);
void StepCtr(u8 speed);
void StepDrive(u8 speed,u8 mode);

#endif





























