#include "main.h"
#include "beep.h"
#include "stdio.h"

void BeepCtr1(u16 value)
{
	static	u16 i = 0;
	if(value)
	{
		if(i==0) 
		{
			i=1;
			BeepEnable(1);
			DelayMs(50);
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

void BeepCtr3(u16 value)
{
	static	u16 i = 0;
	if(value)
	{
		if(i==0) 
		{
			i=1;
			BeepEnable(1);
			DelayMs(50);
			BeepEnable(0);
		}
	}	
}

void BEEP_FlashCode(u8 dat,u16 delay)
{
	static u16 count = 0;
	static u16 time = 0;
	
	if(dat == 0) 
	{
		BeepEnable(0);
		return;
	}
	count++;
	if(count>delay)
	{
		count = 0;
		time++;
		if(time>=dat*2+15) time = 0;
	}
	if(time<dat*2) 
	{
		if(time%2==0)
		{
			//LED_ERR(1);//
			BeepEnable(1);
		}
		else
		{
			//LED_ERR(0);//
			BeepEnable(0);
		}
	}
}


void BeepEnable(u8 enable)
{
	if(enable)
	{
		T4CH2CCRL = 500&0xFF;		// CH2ռ�ձ�40%
		T4CH2CCRH = 500>>8;   
	}
	else
	{
		T4CH2CCRL = 0;		// CH2ռ�ձ�40%
		T4CH2CCRH = 0;   
	}
}

//sys_clk/1/2/4/6/8
void PWM_Init(void)
{
	PCKEN1bits.T4CKEN = 1;			// TIM4 ʱ��ʹ��λ
    T4CR1bits.T4CKS = 0B001;		// TIM4 ʱ��Դѡ�� HIRC 16M
    T4CR1bits.T4PSC = 0B01;			// TIM4 ʱ��Ԥ��Ƶ F_T0CNTCLK = F_T4CK/4 = 4M;    
     
	T4CNTRL = 0;					// ����������
    T4CNTRH = 0;					// ����������
    
    T4PRL = 0xE7;					// ��������������ΪT = 400(100us 10kHz)
    T4PRH = 0x03;						

//	T4CH1CCRL = (400*1/5)&0xFF;		// CH1ռ�ձ�20%
//    T4CH1CCRH = (400*1/5)>>8;    	
	T4CH2CCRL = (500)&0xFF;		// CH2ռ�ձ�40%
    T4CH2CCRH = (500)>>8;   
//	T4CH3CCRL = (400*3/5)&0xFF;		// CH3ռ�ձ�60%
//    T4CH3CCRH = (400*3/5)>>8;    
//	T4CH4CCRL = (400*4/5)&0xFF;		// CH4ռ�ձ�80%
//    T4CH4CCRH = (400*4/5)>>8;
    
//    T4OEbits.T4CH1OE = 1;			// T4CH1���ʹ��
//    T4OEbits.T4CH1NOE = 1;			// T4CH1N���ʹ��
    T4OEbits.T4CH2OE = 1;			// T4CH2���ʹ��
//    T4OEbits.T4CH3OE = 1;			// T4CH3���ʹ��
//    T4OEbits.T4CH4OE = 1;			// T4CH4���ʹ��
    
//    T4POLbits.T4CH1P = 0;			// T4CH1����ߵ�ƽ��Ч
//    T4POLbits.T4CH1NP = 0;			// T4CH1N����ߵ�ƽ��Ч
    T4POLbits.T4CH2P = 0;			// T4CH2����ߵ�ƽ��Ч
//    T4POLbits.T4CH3P = 0;			// T4CH3����ߵ�ƽ��Ч
//    T4POLbits.T4CH4P = 0;			// T4CH4����ߵ�ƽ��Ч
    
//    AFP8bits.T4CH0A = 1;			// PE6 ��Ϊ T4CH1 ���
////    AFP8bits.T4CH0B = 1;			// PD6 ��Ϊ T4CH1 ���
////    AFP8bits.T4CH0C = 1;			// PB7 ��Ϊ T4CH1 ���
////    AFP8bits.T4CH0D = 1;			// PB2 ��Ϊ T4CH1 ���
//    
//    AFP9bits.T4CH0NA = 1;			// PE7 ��Ϊ T4CH1N ���
////    AFP9bits.T4CH0NB = 1;			// PD7 ��Ϊ T4CH1N ���
////    AFP9bits.T4CH0NC = 1;			// PC0 ��Ϊ T4CH1N ���
////    AFP9bits.T4CH0ND = 1;			// PB3 ��Ϊ T4CH1N ���
//    
    AFP8bits.T4CH1A = 1;			// PE7 ��Ϊ T4CH2 ���
//    AFP8bits.T4CH1B = 1;			// PD7 ��Ϊ T4CH2 ���
////    AFP8bits.T4CH1C = 1;			// PC0 ��Ϊ T4CH2 ���
////    AFP8bits.T4CH1D = 1;			// PB3 ��Ϊ T4CH2 ���
//    
////    AFP10bits.T4CH2A = 1;			// PA6 ��Ϊ T4CH3 ���
//// 	  AFP10bits.T4CH2B = 1;			// PA1 ��Ϊ T4CH3 ���
////    AFP10bits.T4CH2C = 1;			// PF0 ��Ϊ T4CH3 ���
////    AFP10bits.T4CH2D = 1;			// PE0 ��Ϊ T4CH3 ���    
//    AFP10bits.T4CH2E = 1;			// PB4 ��Ϊ T4CH3 ��� 
//    
// //   AFP12bits.T4CH3A = 1;			// PA7 ��Ϊ T4CH3 ���
//    AFP12bits.T4CH3B = 1;			// PA0 ��Ϊ T4CH3 ���
////    AFP12bits.T4CH3C = 1;			// PF1 ��Ϊ T4CH3 ���
////    AFP12bits.T4CH3D = 1;			// PE1 ��Ϊ T4CH3 ���    
////    AFP12bits.T4CH3E = 1;			// PB5 ��Ϊ T4CH3 ���      

    T4CR2bits.T4OPM = 0;			// �ر� PWM ������ģʽ
    T4CR2bits.T4BZM = 0;			// �ر� PWM ������ģʽ
    
    T4CR2bits.T4BKS = 0B000;		// ��ֹ����ɲ������
    T4CR2bits.T4BEVT = 0;			// ���� PWM �����¼�״̬λ
    T4CR2bits.T4BKM = 0;			// ����ɲ��ʱ������������Ԥ��Ƶ����Ӱ��
    T4CR3bits.T4AUE = 0;			// ����ɲ��ʱ�������������T4BEVT ���������� PWM ���
	T4POLbits.T4BKP = 0;			// �ⲿ�ܽ�ɲ������ѡ�����Ч
    T4CR3bits.T4DC = 16;			// PWM ����ʱ��=TIM4 ʱ��Դ����*T4DC = 1us
//    T4CR4bits.T4CH1SS = 0B01;		// ������T4CH1���0/T4CH1N���1
    T4CR4bits.T4CH2SS = 0B01;		// �����£�T4CH2�����0
//	T4CR4bits.T4CH3SS = 0B01;		// �����£�T4CH3�����0
//    T4CR4bits.T4CH4SS = 0B01;		// �����£�T4CH4�����0

    T4CR1bits.T4UG = 1;				// ������� TIM4 ���ں�ռ�ձ��������
	T4CR1bits.T4CEN = 1;			// TIM4 ����ʹ��	
}


void BeepInit(void)
{
	PWM_Init();
	BeepEnable(0);
}





