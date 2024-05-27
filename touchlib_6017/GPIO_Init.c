#include "GPIO_Init.h"
#include "touchkey.h"

void GPIO_Init(void)
{
	//水箱灯
	TRISD &= ~(1<<1);	//PD1输出模式
    LAMP_LED = 1;
	//旋转编码开关LED
	TRISD &= ~(1<<7);	//PD7输出模式
    ENCODER_LED = 1;
    
    TRISF &= ~(1<<3);	//PF3输出模式
    TRISF &= ~(1<<2);
    TRISC &= ~(1<<0);
    TRISC &= ~(1<<1);
	DIS_LED_NORMAL = 0;
    DIS_LED_WARNING = 0;
    DIS_LED_ALARM = 0;
}



