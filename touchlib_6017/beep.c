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
		T4CH2CCRL = 500&0xFF;		// CH2占空比40%
		T4CH2CCRH = 500>>8;   
	}
	else
	{
		T4CH2CCRL = 0;		// CH2占空比40%
		T4CH2CCRH = 0;   
	}
}

//sys_clk/1/2/4/6/8
void PWM_Init(void)
{
	PCKEN1bits.T4CKEN = 1;			// TIM4 时钟使能位
    T4CR1bits.T4CKS = 0B001;		// TIM4 时钟源选择 HIRC 16M
    T4CR1bits.T4PSC = 0B01;			// TIM4 时钟预分频 F_T0CNTCLK = F_T4CK/4 = 4M;    
     
	T4CNTRL = 0;					// 计数器清零
    T4CNTRH = 0;					// 计数器清零
    
    T4PRL = 0xE7;					// 计数器周期设置为T = 400(100us 10kHz)
    T4PRH = 0x03;						

//	T4CH1CCRL = (400*1/5)&0xFF;		// CH1占空比20%
//    T4CH1CCRH = (400*1/5)>>8;    	
	T4CH2CCRL = (500)&0xFF;		// CH2占空比40%
    T4CH2CCRH = (500)>>8;   
//	T4CH3CCRL = (400*3/5)&0xFF;		// CH3占空比60%
//    T4CH3CCRH = (400*3/5)>>8;    
//	T4CH4CCRL = (400*4/5)&0xFF;		// CH4占空比80%
//    T4CH4CCRH = (400*4/5)>>8;
    
//    T4OEbits.T4CH1OE = 1;			// T4CH1输出使能
//    T4OEbits.T4CH1NOE = 1;			// T4CH1N输出使能
    T4OEbits.T4CH2OE = 1;			// T4CH2输出使能
//    T4OEbits.T4CH3OE = 1;			// T4CH3输出使能
//    T4OEbits.T4CH4OE = 1;			// T4CH4输出使能
    
//    T4POLbits.T4CH1P = 0;			// T4CH1输出高电平有效
//    T4POLbits.T4CH1NP = 0;			// T4CH1N输出高电平有效
    T4POLbits.T4CH2P = 0;			// T4CH2输出高电平有效
//    T4POLbits.T4CH3P = 0;			// T4CH3输出高电平有效
//    T4POLbits.T4CH4P = 0;			// T4CH4输出高电平有效
    
//    AFP8bits.T4CH0A = 1;			// PE6 作为 T4CH1 输出
////    AFP8bits.T4CH0B = 1;			// PD6 作为 T4CH1 输出
////    AFP8bits.T4CH0C = 1;			// PB7 作为 T4CH1 输出
////    AFP8bits.T4CH0D = 1;			// PB2 作为 T4CH1 输出
//    
//    AFP9bits.T4CH0NA = 1;			// PE7 作为 T4CH1N 输出
////    AFP9bits.T4CH0NB = 1;			// PD7 作为 T4CH1N 输出
////    AFP9bits.T4CH0NC = 1;			// PC0 作为 T4CH1N 输出
////    AFP9bits.T4CH0ND = 1;			// PB3 作为 T4CH1N 输出
//    
    AFP8bits.T4CH1A = 1;			// PE7 作为 T4CH2 输出
//    AFP8bits.T4CH1B = 1;			// PD7 作为 T4CH2 输出
////    AFP8bits.T4CH1C = 1;			// PC0 作为 T4CH2 输出
////    AFP8bits.T4CH1D = 1;			// PB3 作为 T4CH2 输出
//    
////    AFP10bits.T4CH2A = 1;			// PA6 作为 T4CH3 输出
//// 	  AFP10bits.T4CH2B = 1;			// PA1 作为 T4CH3 输出
////    AFP10bits.T4CH2C = 1;			// PF0 作为 T4CH3 输出
////    AFP10bits.T4CH2D = 1;			// PE0 作为 T4CH3 输出    
//    AFP10bits.T4CH2E = 1;			// PB4 作为 T4CH3 输出 
//    
// //   AFP12bits.T4CH3A = 1;			// PA7 作为 T4CH3 输出
//    AFP12bits.T4CH3B = 1;			// PA0 作为 T4CH3 输出
////    AFP12bits.T4CH3C = 1;			// PF1 作为 T4CH3 输出
////    AFP12bits.T4CH3D = 1;			// PE1 作为 T4CH3 输出    
////    AFP12bits.T4CH3E = 1;			// PB5 作为 T4CH3 输出      

    T4CR2bits.T4OPM = 0;			// 关闭 PWM 单脉冲模式
    T4CR2bits.T4BZM = 0;			// 关闭 PWM 蜂鸣器模式
    
    T4CR2bits.T4BKS = 0B000;		// 禁止故障刹车功能
    T4CR2bits.T4BEVT = 0;			// 清零 PWM 故障事件状态位
    T4CR2bits.T4BKM = 0;			// 故障刹车时，计数器及其预分频不受影响
    T4CR3bits.T4AUE = 0;			// 故障刹车时，必须用软件将T4BEVT 清零以重启 PWM 输出
	T4POLbits.T4BKP = 0;			// 外部管脚刹车极性选择高有效
    T4CR3bits.T4DC = 16;			// PWM 死区时间=TIM4 时钟源周期*T4DC = 1us
//    T4CR4bits.T4CH1SS = 0B01;		// 故障下T4CH1输出0/T4CH1N输出1
    T4CR4bits.T4CH2SS = 0B01;		// 故障下，T4CH2的输出0
//	T4CR4bits.T4CH3SS = 0B01;		// 故障下，T4CH3的输出0
//    T4CR4bits.T4CH4SS = 0B01;		// 故障下，T4CH4的输出0

    T4CR1bits.T4UG = 1;				// 软件触发 TIM4 周期和占空比软件更新
	T4CR1bits.T4CEN = 1;			// TIM4 计数使能	
}


void BeepInit(void)
{
	PWM_Init();
	BeepEnable(0);
}





