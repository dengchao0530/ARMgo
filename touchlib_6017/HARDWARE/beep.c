#include "main.h"
#include "beep.h"


void BeepCtr1(u16 value)
{
	static	u16 i = 0;
	if(value)
	{
		if(i==0) 
		{
			i=1;
			BeepEnable(1);
			delay_ms(50);
			BeepEnable(0);
		}
	}
	else 
	{
		if(i)
		{
			BeepEnable(0);
			i=0;
		}

	}	
	
}
void BeepCtr2(u16 value)
{
	static	u16 i = 0;
	if(value)
	{
		i = 0;
	
	}	
	
	if(i>20)
	{
		i = 20;
		BeepEnable(0);
	}
	else
	{
		BeepEnable(1);
	}
	i++;

}




void BeepEnable(u8 enable)
{
	if(enable)
	{
		 PWMA_CCR1 = 125;   
	}
	else
	{
		PWMA_CCR1 = 0;   
	}
}

//sys_clk/1/2/4/6/8
void PWM_Init(u16 arr,u16 psc)
{
		P1M0 |= (1<<0);                             
    P1M1 &= ~(1<<0);	
		P_SW2 = 0x80;
    PWMA_CCER1 = 0x00;                          //дCCMRxǰ����������CCERx�ر�ͨ��
    PWMA_CCMR1 = 0x60;                          //����CC1ΪPWMA���ģʽ
    PWMA_CCER1 = 0x01;                          //ʹ��CC1ͨ��
    PWMA_CCR1 = 125;                            //����ռ�ձ�ʱ��
		PWMA_PSCR = psc;
    PWMA_ARR = arr;                             //��������ʱ��
    PWMA_ENO = 0x01;                            //ʹ��PWM1P�˿����
    PWMA_BKR = 0x80;                            //ʹ�������
    PWMA_CR1 = 0x01;                            //��ʼ��ʱ
	
}


void BeepInit(void)
{
	PWM_Init(250,39);
	BeepEnable(0);
}





