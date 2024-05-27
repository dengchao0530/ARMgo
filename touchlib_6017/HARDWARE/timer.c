#include "timer.h"
#include "touchkey.h"
#include "encoder.h"
#include "GPIO_Init.h"
#include "uart2.h"
#include "uart1.h"
void Tim_Init(void)
{

	T4T3M |= 0x20;			//定时器时钟1T模式
	T4L = 0xC0;				//设置定时初始值
	T4H = 0x63;				//设置定时初始值
	T4T3M |= 0x80;			//定时器4开始计时
	IE2 |= 0x40;			//使能定时器4中断
  EA = 1;
}


void TM4_Isr() interrupt 20
{
	
	static u16 ms = 0;
	static u16 sec = 0;
	//P10 = !P10;
//	usart2_receive_wait();
  if(KeyDat.key_value) KeyDat.key_tim++;
	RunData.JY_TimeCount++;
	RunData.XF_TimeCount++;
	EncoderData.Time++;
	WDT_CONTR = 0x34;//清除看门狗
	//TOUCHT_LED=!TOUCHT_LED;//TEST
	RunData.IR_Count++;
	if(RunData.IR_Count>500) RunData.IR_Count = 500;
	if(EncoderData.Time>400)
	{
		EncoderData.Direction = 0;
		EncoderData.Time = 400;
	}
	
	if(ms>1000)
	{
		if(sec>=60)		
		{
			if(RunData.Timing == 0)
			{
				RunData.RunTime++;//单位:分钟（min）
				if(RunData.RunTime>=999) RunData.RunTime = 999;
			}
			else		
			{
				RunData.Timing--;//单位:分钟（min）
				if(RunData.Timing<=0) RunData.Timing = 0;
			}
			sec = 0;
			if(RunData.StandbySta==0)//只有再正常工作时才累计
				RunData.CumulativeTime++;//单位:分钟（min）
	if(RunData.CumulativeTime>99999) 
	{
		RunData.CumulativeTime=0;
	}

		}
		RunData.AOD_TimeCount++;
		sec++;

		ms = 0;
	}
	ms++;
}

