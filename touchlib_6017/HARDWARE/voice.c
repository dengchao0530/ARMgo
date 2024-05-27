#include "voice.h"
#include "uart1.h"
#include "eeprom.h"
#include "touchkey.h"
#include "encoder.h"




void Voice_Init(void)
{
    P0M0 |= ~(1<<5);  //输入                           
    P0M1 &= ~(1<<5);	
    P0M0 |= (1<<6);    //输出                           
    P0M1 &= ~(1<<6);
    P0M0 |= (1<<7);     //输出                            
    P0M1 &= ~(1<<7);
VOICE_BUSY = 1;
VOICE_RST = 0;
VOICE_DATA = 0;	
}


void VoiceCtr(u16 dat)
{
	u8 i = 0;
	static u8 last = 0;
	if(last!=dat)
	{
	if((VOICE_BUSY==0)&&dat)//
	{
		UartSendStr("dat:");
		sendint(dat);
		UartSendStr("\r\n");	
		
		VOICE_RST = 1;
		delay_us(100);
		VOICE_RST = 0;
		delay_us(100);
		for(i=0; i<dat;i++)
		{
				VOICE_DATA = 1;
				delay_us(150);
				VOICE_DATA = 0;
				delay_us(150);
		}
	}
}
	last=dat;
}


void VoiceFilterMesh(void)
{
	static u16 count = 0;
	if(RunData.FilterMeshFlag) 
	{
		if(count==0)
		{
			RunData.VoiceNum = 34;//请清洁制氧机进气滤网
			RunData.CumulativeTime++;//加一防止重复播放
			E2prom_WriteData();
		}
		else if(count<3000)
		{
			RunData.VoiceNum = 1;
		}
		else if(count<4500)
		{
			RunData.VoiceNum = 34;//请清洁制氧机进气滤网
		}
		else if(count<6000)
		{
			RunData.VoiceNum = 1;
		}
		else if(count<7500)
		{
			RunData.VoiceNum = 34;//请清洁制氧机进气滤网
		}
		else
		{
			count = 7500;
		}
		count++;
	}
	
}
void VoiceDrive(void)
{
	//static u8 VoiceEnable = 1;
	//static u8 StandbyStaFlag = 0;
	//static u8 VoiceNumLast = 0;
	//static u16 count = 0;
	if(RunData.StandbySta == 1) RunData.StandbyStaFlag = 0;
	if(RunData.StandbySta == 0)
	{
		if(RunData.StandbyStaFlag == 0)//只执行一次
		{
			RunData.VoiceNum = 3;//智能氧疗开始
			RunData.StandbyStaFlag = 1;
		}
		if((KeyDat.key_short_value==TOUCH_KEY_ADD) ||(KeyDat.key_short_value==TOUCH_KEY_DEC)||(KeyDat.key_long_value==TOUCH_KEY_ADD) ||(KeyDat.key_long_value==TOUCH_KEY_DEC))
		{
			switch(RunData.Timing)
			{
				case 0:RunData.VoiceNum = 26;break;//连续氧疗
				case 10:RunData.VoiceNum = 13;break;//10分钟
				case 20:RunData.VoiceNum = 14;break;//20分钟
				case 30:RunData.VoiceNum = 15;break;//30分钟
				case 40:RunData.VoiceNum = 16;break;//40分钟
				case 50:RunData.VoiceNum = 17;break;//50分钟
				case 60:RunData.VoiceNum = 18;break;//1小时
				case 120:RunData.VoiceNum = 19;break;//2小时
				case 180:RunData.VoiceNum = 20;break;//3小时
				case 240:RunData.VoiceNum = 21;break;//4小时
				case 360:RunData.VoiceNum = 23;break;//6小时
				case 300:RunData.VoiceNum = 22;break;//5小时
				case 420:RunData.VoiceNum = 24;break;//7小时
				case 480:RunData.VoiceNum = 25;break;//8小时
			}
		}
		if((EncoderData.Time<100)||(KeyDat.key_short_value == 5)||(KeyDat.key_long_value == 5))
		{
			switch(RunData.FlowSet)
			{
				case 5:RunData.VoiceNum = 38;break;//0.5升
				case 10:RunData.VoiceNum = 28;break;//1升
				case 15:RunData.VoiceNum = 39;break;//1.5升
				case 20:RunData.VoiceNum = 29;break;//2升
				case 25:RunData.VoiceNum = 40;break;//2.5升
				case 30:RunData.VoiceNum = 30;break;//30升
				case 35:RunData.VoiceNum = 41;break;//3.5升
				case 40:RunData.VoiceNum = 31;break;//4升
				case 45:RunData.VoiceNum = 42;break;//4.5升
				case 50:RunData.VoiceNum = 32;break;//5升
				case 55:RunData.VoiceNum = 43;break;//5.5升
				case 60:RunData.VoiceNum = 33;break;//6升
				case 65:RunData.VoiceNum = 44;break;//6.5升
				case 70:RunData.VoiceNum = 45;break;//7升
				case 75:RunData.VoiceNum = 46;break;//7.5升
				case 80:RunData.VoiceNum = 47;break;//8升			
			}
		
		
		}
		
	}
	else if((RunData.TimingFlag==0)&&RunData.StandbySta)
	{
		RunData.VoiceNum = 4;//智能氧疗结束
	}
	else
	{
		RunData.VoiceNum = 27;//本次定时氧疗时间已到，谢谢使用
	}
	VoiceFilterMesh();//请清洁制氧机进气滤网
	
	if(KeyDat.key_short_value == TOUCH_KEY_AUTO) 
	{
		RunData.VoiceEnable=!RunData.VoiceEnable;
		if(RunData.VoiceEnable) RunData.VoiceNum = 5;
	}
	if(RunData.VoiceEnable == 1)
	{
		if(RunData.VoiceNumLast != RunData.VoiceNum)
			RunData.VoiceCount++;
		if(RunData.VoiceCount>200)//延时500ms播放
		{
			VoiceCtr(RunData.VoiceNum);
			RunData.VoiceCount = 0;
			RunData.VoiceNumLast = RunData.VoiceNum;
		}
	}
	else
	{
		RunData.VoiceNum = 6;
		VoiceCtr(RunData.VoiceNum);
		RunData.VoiceNumLast = RunData.VoiceNum;
	}
}

