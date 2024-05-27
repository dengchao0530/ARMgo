#include "voice.h"
#include "uart1.h"
#include "eeprom.h"
#include "touchkey.h"
#include "encoder.h"




void Voice_Init(void)
{
    P0M0 |= ~(1<<5);  //����                           
    P0M1 &= ~(1<<5);	
    P0M0 |= (1<<6);    //���                           
    P0M1 &= ~(1<<6);
    P0M0 |= (1<<7);     //���                            
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
			RunData.VoiceNum = 34;//�������������������
			RunData.CumulativeTime++;//��һ��ֹ�ظ�����
			E2prom_WriteData();
		}
		else if(count<3000)
		{
			RunData.VoiceNum = 1;
		}
		else if(count<4500)
		{
			RunData.VoiceNum = 34;//�������������������
		}
		else if(count<6000)
		{
			RunData.VoiceNum = 1;
		}
		else if(count<7500)
		{
			RunData.VoiceNum = 34;//�������������������
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
		if(RunData.StandbyStaFlag == 0)//ִֻ��һ��
		{
			RunData.VoiceNum = 3;//�������ƿ�ʼ
			RunData.StandbyStaFlag = 1;
		}
		if((KeyDat.key_short_value==TOUCH_KEY_ADD) ||(KeyDat.key_short_value==TOUCH_KEY_DEC)||(KeyDat.key_long_value==TOUCH_KEY_ADD) ||(KeyDat.key_long_value==TOUCH_KEY_DEC))
		{
			switch(RunData.Timing)
			{
				case 0:RunData.VoiceNum = 26;break;//��������
				case 10:RunData.VoiceNum = 13;break;//10����
				case 20:RunData.VoiceNum = 14;break;//20����
				case 30:RunData.VoiceNum = 15;break;//30����
				case 40:RunData.VoiceNum = 16;break;//40����
				case 50:RunData.VoiceNum = 17;break;//50����
				case 60:RunData.VoiceNum = 18;break;//1Сʱ
				case 120:RunData.VoiceNum = 19;break;//2Сʱ
				case 180:RunData.VoiceNum = 20;break;//3Сʱ
				case 240:RunData.VoiceNum = 21;break;//4Сʱ
				case 360:RunData.VoiceNum = 23;break;//6Сʱ
				case 300:RunData.VoiceNum = 22;break;//5Сʱ
				case 420:RunData.VoiceNum = 24;break;//7Сʱ
				case 480:RunData.VoiceNum = 25;break;//8Сʱ
			}
		}
		if((EncoderData.Time<100)||(KeyDat.key_short_value == 5)||(KeyDat.key_long_value == 5))
		{
			switch(RunData.FlowSet)
			{
				case 5:RunData.VoiceNum = 38;break;//0.5��
				case 10:RunData.VoiceNum = 28;break;//1��
				case 15:RunData.VoiceNum = 39;break;//1.5��
				case 20:RunData.VoiceNum = 29;break;//2��
				case 25:RunData.VoiceNum = 40;break;//2.5��
				case 30:RunData.VoiceNum = 30;break;//30��
				case 35:RunData.VoiceNum = 41;break;//3.5��
				case 40:RunData.VoiceNum = 31;break;//4��
				case 45:RunData.VoiceNum = 42;break;//4.5��
				case 50:RunData.VoiceNum = 32;break;//5��
				case 55:RunData.VoiceNum = 43;break;//5.5��
				case 60:RunData.VoiceNum = 33;break;//6��
				case 65:RunData.VoiceNum = 44;break;//6.5��
				case 70:RunData.VoiceNum = 45;break;//7��
				case 75:RunData.VoiceNum = 46;break;//7.5��
				case 80:RunData.VoiceNum = 47;break;//8��			
			}
		
		
		}
		
	}
	else if((RunData.TimingFlag==0)&&RunData.StandbySta)
	{
		RunData.VoiceNum = 4;//�������ƽ���
	}
	else
	{
		RunData.VoiceNum = 27;//���ζ�ʱ����ʱ���ѵ���ллʹ��
	}
	VoiceFilterMesh();//�������������������
	
	if(KeyDat.key_short_value == TOUCH_KEY_AUTO) 
	{
		RunData.VoiceEnable=!RunData.VoiceEnable;
		if(RunData.VoiceEnable) RunData.VoiceNum = 5;
	}
	if(RunData.VoiceEnable == 1)
	{
		if(RunData.VoiceNumLast != RunData.VoiceNum)
			RunData.VoiceCount++;
		if(RunData.VoiceCount>200)//��ʱ500ms����
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

