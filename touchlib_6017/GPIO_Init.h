#ifndef __GPIO_INIT_H
#define __GPIO_INIT_H 			   
#include "main.h"

#define ENCODER_LED LATDbits.LATD7  //��ת�����䣬�͵�ƽ����
#define LAMP_LED LATDbits.LATD1  //ˮ��LED�͵�ƽ����

#define DIS_LED_NORMAL LATCbits.LATC0  			//����LED
#define DIS_LED_WARNING LATFbits.LATF2			//����LED
#define DIS_LED_ALARM LATFbits.LATF3 				//����LED

void GPIO_Init(void);

#endif





























