#ifndef __GPIO_INIT_H
#define __GPIO_INIT_H 			   
#include "main.h"

#define ENCODER_LED LATDbits.LATD7  //旋转编码其，低电平点亮
#define LAMP_LED LATDbits.LATD1  //水箱LED低电平点亮

#define DIS_LED_NORMAL LATCbits.LATC0  			//正常LED
#define DIS_LED_WARNING LATFbits.LATF2			//警告LED
#define DIS_LED_ALARM LATFbits.LATF3 				//报警LED

void GPIO_Init(void);

#endif





























