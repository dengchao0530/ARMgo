#include "GPIO_Init.h"
#include "touchkey.h"
#include "encoder.h"

void GPIO_Init(void)
{
    P0M0 = 0x00;
    P0M1 = 0x00;
    P1M0 = 0x00;
    P1M1 = 0x00;
    P2M0 = 0x00;
    P2M1 = 0x00;
    P3M0 = 0x00;
    P3M1 = 0x00;
    P4M0 = 0x00;
    P4M1 = 0x00;
    P5M0 = 0x00;
    P5M1 = 0x00;
    P6M0 = 0x00;
    P6M1 = 0x00;
    P7M0 = 0x00;
    P7M1 = 0x00;
		//断电检测
//    P2M0 &= ~(1<<4);       
//    P2M1 &= ~(1<<4);
    P2M1 |= (1<<4);       
    P2M0 &= ~(1<<4);	
		DC_TEST = 0;
	
		//触摸按键LED
    P4M0 |= (1<<1);       
    P4M1 &= ~(1<<1);
		
		//水箱灯
    P5M0 |= (1<<0);       
    P5M1 &= ~(1<<0);
		
		//旋转编码开关LED
    P5M0 |= (1<<3);       
    P5M1 &= ~(1<<3);
		//电源开关输入
    P3M0 &= ~(1<<4);       
    P3M1 &= ~(1<<4);		
		POW_KEY = 1;
		//压缩机输出
    P0M0 |= (1<<1);       
    P0M1 &= ~(1<<1);
		COMPR_OUT = 0;
		//风扇
    P2M0 |= (1<<6);       
    P2M1 &= ~(1<<6);		
    P2M0 |= (1<<7);       
    P2M1 &= ~(1<<7);	
		FAN1_OUT = 0;
		FAN2_OUT = 0;
		//电磁阀
    P4M0 |= (1<<5);       
    P4M1 &= ~(1<<5);		
    P4M0 |= (1<<6);       
    P4M1 &= ~(1<<6);	
		SV_A_OUT = 0;
		SV_B_OUT = 0;		
		//步进电机
	  P0M0 |= (1<<2);       
    P0M1 &= ~(1<<2);		
    P0M0 |= (1<<3);       
    P0M1 &= ~(1<<3);		
    P0M0 |= (1<<4);       
    P0M1 &= ~(1<<4);				
    P5M0 |= (1<<2);       
    P5M1 &= ~(1<<2);

		STEPA = 0;
		STEPB = 0;
		STEPC = 0;
		STEPD = 0;
}



//speed:转速
//mode:0,电机停止，1：流量减小，2：流量加大
void StepDrive(u8 speed,u8 mode)
{
	static u8 StepNumber = 0;
	static u8 Count = 0;
	if(mode==1)
	{	
		switch(StepNumber)
		{
			case 0: STEPA = 1; STEPB = 0; STEPC = 0; STEPD = 0;break;
			case 1: STEPA = 1; STEPB = 1; STEPC = 0; STEPD = 0;break;
			case 2: STEPA = 0; STEPB = 1; STEPC = 0; STEPD = 0;break;
			case 3: STEPA = 0; STEPB = 1; STEPC = 1; STEPD = 0;break;
			case 4: STEPA = 0; STEPB = 0; STEPC = 1; STEPD = 0;break;
			case 5: STEPA = 0; STEPB = 0; STEPC = 1; STEPD = 1;break;
			case 6: STEPA = 0; STEPB = 0; STEPC = 0; STEPD = 1;break;
			case 7: STEPA = 1; STEPB = 0; STEPC = 0; STEPD = 1;break;
		}
	}
	else if(mode==2)
	{
		switch(StepNumber)
		{
			case 7: STEPA = 1; STEPB = 0; STEPC = 0; STEPD = 0;break;
			case 6: STEPA = 1; STEPB = 1; STEPC = 0; STEPD = 0;break;
			case 5: STEPA = 0; STEPB = 1; STEPC = 0; STEPD = 0;break;
			case 4: STEPA = 0; STEPB = 1; STEPC = 1; STEPD = 0;break;
			case 3: STEPA = 0; STEPB = 0; STEPC = 1; STEPD = 0;break;
			case 2: STEPA = 0; STEPB = 0; STEPC = 1; STEPD = 1;break;
			case 1: STEPA = 0; STEPB = 0; STEPC = 0; STEPD = 1;break;
			case 0: STEPA = 1; STEPB = 0; STEPC = 0; STEPD = 1;break;
		}
	}
	else
	{
		STEPA = 0; STEPB = 0; STEPC = 0; STEPD = 0;
	}
	
	if(Count>=speed)
	{
		Count = 0;
		StepNumber++;
		if(StepNumber==8) StepNumber = 0;
	}
	Count++;
}

void StepCtr(u8 speed)
{
	//static u8 stepmode = 0;
	static u8 modelast = 0;
	static u32 count = 0;//运行步速计数
	if(RunData.FlowValue<RunData.FlowSet-1)//流量变大30  30
	{
		RunData.StepMode = 2;
	}
	else if(RunData.FlowValue>RunData.FlowSet+1)//流量变小
	{
		RunData.StepMode = 1;
	}
	else
	{
		RunData.StepMode = 0;
	}
	
	
	if(RunData.StepMode!=modelast) count=0;
	if(count>180*1000)//限制最大步数
	{
		count = 180*1000;
		StepDrive(speed,0);
	}
	else//电机正常运行
	{
		StepDrive(speed,RunData.StepMode);
	}
	
	count++;
	modelast = RunData.StepMode;
	
}

