#include "set.h"
#include "touchkey.h"
#include "display.h"
#include "tm1629b.h"
#include "encoder.h"
#include "beep.h"
#include "eeprom.h"
#include "GPIO_Init.h"
#include "control.h"

void FuntionDisplay(u8 fun)
{
	u8 temp = 0;
	temp = (fun>>4)&0x0F;
	DisBuf[11] = ch_table[temp+10];
	temp = fun&0x0F;
	DisBuf[10] = ch_table[temp];
}
void DatDisplay(u8 dat)
{
	DisBuf[4] = ch_table[dat%100/10];
	DisBuf[3] = ch_table[dat%10];	
}
void SetSysData(void)
{
	u16 count = 0;
	u8 mu = 0;
	if(RunData.SETCount>=500)
	{
		Display_Timing(0,0,Engineering_Pattern.Led_Display_Timing_Enbale);
		Display_CumulativeTime(0,0,Engineering_Pattern.Led_Display_CumulativeTime_Enbale);
		Display_Flow(0,0,Engineering_Pattern.Led_Display_Flow);
		Display_Concentration(0,0);
		Display_SysSta(1);
		Display_Anion(0);
		Display_FilterMesh(0);
		Display_Voice(0);
		TM1629_Luminance(8);
//				FAN1_OUT = 0;
//			FAN2_OUT = 0;
//			COMPR_OUT = 0;
//			SV_A_OUT = 0;
//			SV_B_OUT = 0;
//			ENCODER_LED = 1;//�ߵ�ƽ�ر�
//			TOUCHT_LED = 1;//�͵�ƽ��
//			RunData.TimingFlag = 0;
//			RunData.Timing = 0;
//			RunData.RunTime = 0;
			
		RunData.SETCount = 0;
		while(1)
		{
			BeepCtr1(KeyDat.key_value);
			key_scan();
			FuntionDisplay(mu);
//			SolenoidValveCtr();
//			StepCtr(5);//�����������
			count++;
			DelayMs(1);
			
			//if(KeyDat.key_short_value == TOUCH_KEY_ADD)
			switch(mu)
			{
				case 0://����ʱ��
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_ADD)
					{
						RunData.XF_TimeSet++;
						if(RunData.XF_TimeSet>=99) RunData.XF_TimeSet = 99;
						DelayMs(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_DEC)
					{
						RunData.XF_TimeSet--;
						if(RunData.XF_TimeSet<=5) RunData.XF_TimeSet = 5;
						DelayMs(100);
					}
					Display_Timing(0,0,Engineering_Pattern.Led_Display_Timing_Enbale);
					DatDisplay(RunData.XF_TimeSet);
					Display_CumulativeTime(0,0,Engineering_Pattern.Led_Display_CumulativeTime_Enbale);
				break;
				
				case 1://��ѹʱ��
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_ADD)
					{
						RunData.JY_TimeSet++;
						if(RunData.JY_TimeSet>=20) RunData.JY_TimeSet = 20;
						DelayMs(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_DEC)
					{
						RunData.JY_TimeSet--;
						if(RunData.JY_TimeSet<=0) RunData.JY_TimeSet = 0;
						DelayMs(100);
					}
					Display_Timing(0,0,Engineering_Pattern.Led_Display_Timing_Enbale);
					DatDisplay(RunData.JY_TimeSet);
					Display_CumulativeTime(0,0,Engineering_Pattern.Led_Display_CumulativeTime_Enbale);
				break;
					
				case 2://�ۼ�ʱ������
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_ADD)
					{
						RunData.CumulativeTime = 0;
						DelayMs(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_TIME_DEC)
					{
						RunData.CumulativeTime = 0;
						DelayMs(100);
					}
					Display_Timing(0,0,Engineering_Pattern.Led_Display_Timing_Enbale);
					Display_Concentration(0,0);
					Display_CumulativeTime(RunData.CumulativeTime/60,1,Engineering_Pattern.Led_Display_CumulativeTime_Enbale);//��ʱ����Ϊ��λ
				break;	
					
				case 3://�汾��
					Display_Concentration(0,0);
					Display_Timing(VERSION,4,Engineering_Pattern.Led_Display_Timing_Enbale);
					Display_CumulativeTime(0,0,Engineering_Pattern.Led_Display_CumulativeTime_Enbale);//��ʱ����Ϊ��λ
				break;	
			}				
//			UartSendStr("key_value:");
//			sendhex(KeyDat.key_value);
//			UartSendStr("\t");
//			UartSendStr("key_tim:");
//			sendhex(KeyDat.key_tim);
//			UartSendStr("\t");
//			UartSendStr("count:");
//			sendhex(count);
//			UartSendStr("\t");			
//			UartSendStr("\r\n");
			
			if(KeyDat.key_value) count = 0;
			if((KeyDat.key_short_value == TOUCH_KEY_STANDBY)||(count>15000))//�˳�//15000��Լ30s
			{
				E2prom_WriteData();
				RunData.StandbySta = 0;
				RunData.VoiceNum = 1;
				break;
			}
			if(KeyDat.key_short_value == TOUCH_KEY_VOICE)
			{
				mu++;
				if(mu>3)
					mu = 0;
			}
			Update_Display();
		}
	}
}



