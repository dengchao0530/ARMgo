#include "GPIO_Init.h"
#include "touchkey.h"

void GPIO_Init(void)
{
	//ˮ���
	TRISD &= ~(1<<1);	//PD1���ģʽ
    LAMP_LED = 1;
	//��ת���뿪��LED
	TRISD &= ~(1<<7);	//PD7���ģʽ
    ENCODER_LED = 1;
    
    TRISF &= ~(1<<3);	//PF3���ģʽ
    TRISF &= ~(1<<2);
    TRISC &= ~(1<<0);
    TRISC &= ~(1<<1);
	DIS_LED_NORMAL = 0;
    DIS_LED_WARNING = 0;
    DIS_LED_ALARM = 0;
}



