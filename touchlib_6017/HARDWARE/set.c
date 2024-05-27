#include "set.h"
#include "touchkey.h"
#include "display.h"
#include "TM1640B.h"
#include "encoder.h"
#include "beep.h"
#include "eeprom.h"
#include "GPIO_Init.h"
#include "control.h"
#include "uart1.h"
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
		Display_Timing(0,0);
		Display_CumulativeTime(0,0);
		Display_Flow(0,0);
		Display_Concentration(0,0);
		Display_SysSta(1);
		Display_Anion(0);
		Display_FilterMesh(0);
		Display_Voice(0);
		TM1640B_Luminance(8);
//				FAN1_OUT = 0;
//			FAN2_OUT = 0;
//			COMPR_OUT = 0;
//			SV_A_OUT = 0;
//			SV_B_OUT = 0;
//			ENCODER_LED = 1;//高电平关闭
//			TOUCHT_LED = 1;//低电平打开
//			RunData.TimingFlag = 0;
//			RunData.Timing = 0;
//			RunData.RunTime = 0;
			
		RunData.SETCount = 0;
		while(1)
		{
			BeepCtr1(KeyDat.key_value);
			key_scan();
			FuntionDisplay(mu);
			SolenoidValveCtr();
			StepCtr(5);//步进电机工作
			count++;
			delay_ms(1);
			
			//if(KeyDat.key_short_value == TOUCH_KEY_ADD)

			switch(mu)
			{
				case 0://吸附时间
					if(KeyDat.key_short_value==TOUCH_KEY_ADD)
					{
						RunData.XF_TimeSet++;
						if(RunData.XF_TimeSet>=99) RunData.XF_TimeSet = 99;
						delay_ms(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_DEC)
					{
						RunData.XF_TimeSet--;
						if(RunData.XF_TimeSet<=5) RunData.XF_TimeSet = 5;
						delay_ms(100);
					}
					Display_Timing(0,0);
					DatDisplay(RunData.XF_TimeSet);
					Display_CumulativeTime(0,0);
				break;
				
				case 1://均压时间
					if(KeyDat.key_short_value==TOUCH_KEY_ADD)
					{
						RunData.JY_TimeSet++;
						if(RunData.JY_TimeSet>=20) RunData.JY_TimeSet = 20;
						delay_ms(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_DEC)
					{
						RunData.JY_TimeSet--;
						if(RunData.JY_TimeSet<=0) RunData.JY_TimeSet = 0;
						delay_ms(100);
					}
					Display_Timing(0,0);
					DatDisplay(RunData.JY_TimeSet);
					Display_CumulativeTime(0,0);
				break;
					
				case 2://累计时间清零
					if(KeyDat.key_short_value==TOUCH_KEY_ADD)
					{
						RunData.CumulativeTime = 0;
						delay_ms(100);
					}
					if(KeyDat.key_short_value==TOUCH_KEY_DEC)
					{
						RunData.CumulativeTime = 0;
						delay_ms(100);
					}
					Display_Timing(0,0);
					Display_Concentration(0,0);
					Display_CumulativeTime(RunData.CumulativeTime/60,1);//暂时分钟为单位
				break;	
					
				case 3://版本号

					Display_Concentration(0,0);
					Display_Timing(VERSION,4);
					Display_CumulativeTime(0,0);//暂时分钟为单位
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
			if((KeyDat.key_short_value == TOUCH_KEY_STANDBY)||(count>15000))//退出//15000大约30s
			{
				E2prom_WriteData();
				RunData.StandbySta = 0;
				RunData.VoiceNum = 1;
				break;
			}
			if(KeyDat.key_short_value == TOUCH_KEY_AUTO)
			{
				mu++;
				if(mu>3)
					mu = 0;
			}
			Update_Display();
		}
	}
}




