#include "main.h"
#include "beep.h"
#include "control.h"
#include "touchkey.h"
#include "display.h"
#include "TM1640B.h"
#include "GPIO_Init.h"
#include "eeprom.h"
#include "encoder.h"
#include "GPIO_Init.h"
#include "voice.h"
#include "uart1.h"
void TimingClosureSet(void)
{
	//	static int sw1 = 0;
	//	static int sw1_last = 0;
	if ((KeyDat.key_short_value == TOUCH_KEY_ADD) || (KeyDat.key_long_value == TOUCH_KEY_ADD))
	{
		RunData.Timing += 10;
		if (RunData.Timing > 480)
			RunData.Timing = 0;
		RunData.Timing = RunData.Timing % 10 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 10;
		if (RunData.Timing)
			RunData.TimingFlag = 1;
		else
			RunData.TimingFlag = 0;
		delay_ms(100);
	}

	if ((KeyDat.key_short_value == TOUCH_KEY_DEC) || (KeyDat.key_long_value == TOUCH_KEY_DEC))
	{
		RunData.Timing -= 10;
		if (RunData.Timing <= 0)
			RunData.Timing = 0;
		RunData.Timing = RunData.Timing % 10 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 10;
		if (RunData.Timing)
			RunData.TimingFlag = 1;
		else
			RunData.TimingFlag = 0;
		delay_ms(100);
	}

	//	if(sw1!=sw1_last)
	//	{
	//		switch(sw1)
	//		{
	//			case 0: RunData.Timing = 0; break;
	//			case 1: RunData.Timing = 10; break;
	//			case 2: RunData.Timing = 20; break;
	//			case 3: RunData.Timing = 30; break;
	//			case 4: RunData.Timing = 40; break;
	//
	//			case 5: RunData.Timing = 50; break;
	//			case 6: RunData.Timing = 60; break;
	//			case 7: RunData.Timing = 120; break;
	//			case 8: RunData.Timing = 180; break;
	//			case 9: RunData.Timing = 240; break;
	//			case 10: RunData.Timing = 300; break;
	//			case 11: RunData.Timing = 360; break;
	//			case 12: RunData.Timing = 420; break;
	//			case 13: RunData.Timing = 480; break;
	//		}
	//		if(RunData.Timing) RunData.TimingFlag = 1;
	//		else RunData.TimingFlag = 0;
	//	}
	//	sw1_last = sw1;
}
// 错误控制
void ErrorCtr(void)
{
	u8 i;
	if (RunData.StandbySta == 0)
	{
		if (RunData.RunTime >= 2)
		{
			if (RunData.Concentration < 500) // 气体浓度小于50%
			{
				RunData.SysSta = 0xE3;
				Display_SysSta(3);
			}
			else if ((RunData.Concentration >= 500) && (RunData.Concentration < 820)) // 500<=气体浓度<=820
			{
				RunData.SysSta = 0xE2;
				Display_SysSta(2);
			}
			else
			{
				Display_SysSta(1);
				RunData.SysSta = 0;
			}
		}
		else
		{
			RunData.SysSta = 0;
			Display_SysSta(1);
		}

		if (DC_TEST == 0) // 断电后马上插上进入待机状态
		{
			if (POW_KEY == 0) // 电源开关没有关闭
			{
				UartSendStr("POW ERR\r\n");
				FAN1_OUT = 0;
				FAN2_OUT = 0;
				COMPR_OUT = 0;
				SV_A_OUT = 0;
				SV_B_OUT = 0;
				LAMP_LED = 1;	 // 水箱灯关闭
				ENCODER_LED = 1; // 高电平关闭
				TOUCHT_LED = 0;	 // 低电平关闭
				RunData.SysSta = 0xE5;

				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				DisBuf[1] = ch_table[0x0E];
				DisBuf[0] = ch_table[5];

				Update_Display();
				E2prom_WriteData();
				while (1)
				{
					if (POW_KEY == 0) // 电源开关没有关闭
					{
						DisBuf[1] = ch_table[0x0E];
						DisBuf[0] = ch_table[5];
						BeepEnable(1);
						Display_SysSta(3);

						Update_Display();
						delay_ms(250);

						Display_SysSta(0);
						Update_Display();
						delay_ms(250);
					}
					else // 电源开关关闭
					{
						BeepEnable(0);
						DisBuf[1] = 0;
						DisBuf[0] = 0;
						Display_SysSta(0);
						Update_Display();
					}
					if (DC_TEST == 1) // 断电后马上插上进入待机状态
					{
						UartSendStr("RESET1\r\n");
						BeepEnable(0);
						IAP_CONTR |= 0x60;
						break;
					}
				}
			}
			else // 电源开关关闭
			{
				FAN1_OUT = 0;
				FAN2_OUT = 0;
				COMPR_OUT = 0;
				SV_A_OUT = 0;
				SV_B_OUT = 0;
				LAMP_LED = 1;	 // 水箱灯关闭
				ENCODER_LED = 1; // 高电平关闭
				TOUCHT_LED = 0;	 // 低电平关闭
				RunData.SysSta = 0x00;
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				E2prom_WriteData();
				while (1)
				{
					Update_Display();
					if (DC_TEST == 1) // 断电后马上插上进入待机状态
					{

						BeepEnable(0);
						IAP_CONTR |= 0x60;
						break;
					}
				}
			}
		}
	}
	else // 待机状态
	{
		if ((DC_TEST == 0) || (POW_KEY == 1)) // 12V和电源开关检测
		{
			UartSendStr("POW DOWN\r\n");
			FAN1_OUT = 0;
			FAN2_OUT = 0;
			COMPR_OUT = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 0;
			LAMP_LED = 1;	 // 水箱灯关闭
			ENCODER_LED = 1; // 高电平关闭
			TOUCHT_LED = 0;	 // 低电平关闭
			RunData.SysSta = 0x00;

			for (i = 0; i < 16; i++)
				DisBuf[i] = 0;
			TM1640B_Luminance(0);
			E2prom_WriteData();
			while (1)
			{
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				// IAP_CONTR |= 0x60;
				Update_Display();
				if ((DC_TEST == 1) && (POW_KEY == 0)) // 断电后马上插上进入待机状态
				{
					BeepEnable(0);
					UartSendStr("Pow again up\r\n"); // 电源又一次
					IAP_CONTR |= 0x60;

					break;
				}
			}
		}
	}
}
void Display(void)
{
	static u16 count = 10;
	static u16 count2 = 0;
	//	static u8 FilterMeshFlag = 0;
	if (count >= 1)
	{
		count = 0;
		if (RunData.StandbySta == 0) // 正常工作
		{
			if (RunData.AOD_TimeCount >= 60)
			{
				TM1640B_Luminance(1); // 息屏亮度调到最低
				RunData.AOD_TimeCount = 60;
			}
			else
			{
				TM1640B_Luminance(8);
			}

			if (EncoderData.Time < 100)
				count2 = 0;
			count2++;
			//			if(count2>1000)
			//			{
			//				count2 = 1000;
			//				Display_Flow(RunData.FlowValue,1);//显示实时流量
			//			}
			//			else
			//			{
			Display_Flow(RunData.FlowSet, 1); // 显示设置流量
			//			}

			Display_Concentration(RunData.Concentration / 10, 1);	//
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1); // 显示累计时间
			// 清洁滤网替换
			// RunData.CumulativeTime = 18000;
			if ((RunData.CumulativeTime % (60 * 300) == 0) && (RunData.CumulativeTime != 0)) // 60*300
				RunData.FilterMeshFlag = 1;

			Display_FilterMesh(RunData.FilterMeshFlag);
			Display_Anion(0);
			Display_Voice(RunData.VoiceEnable);

			if (RunData.SysSta) // 显示故障代码
			{
				DisBuf[2] = 0;
				DisBuf[1] = ch_table[(RunData.SysSta >> 4) & 0x0F];
				DisBuf[0] = ch_table[RunData.SysSta & 0x0F];
			}
			else
			{
				if (RunData.Timing)
				{
					Display_Timing(RunData.Timing, 2); // 显示定时时间
				}
				else
				{
					Display_Timing(RunData.RunTime, 1); // 显示运行时间
				}
			}
		}
		else // 待机状态
		{
			count = 10;
			TM1640B_Luminance(1);
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1);
			Display_Timing(0, 0);
			Display_Flow(0, 3);			 //
			Display_Concentration(0, 3); //
			Display_SysSta(0);
			Display_Anion(0);
			Display_FilterMesh(0);
			Display_Voice(RunData.VoiceEnable);
		}
	}
	count++;
}

void SolenoidValveCtr(void)
{
	// static u8 step = 0;
	if (RunData.StandbySta == 1)
		RunData.ComprStep = 0;

	switch (RunData.ComprStep)
	{
	case 0:
		if (RunData.StandbySta == 0)
		{
			RunData.ComprStep = 1;
			RunData.XF_TimeCount = 0;
			COMPR_OUT = 1;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
		}
		else
		{
			COMPR_OUT = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 0;
		}
		break;
	case 1:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 1;
			RunData.ComprStep = 2;
		}
		break;
	case 2:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
			RunData.ComprStep = 3;
		}
		break;
	case 3:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 1;
			RunData.ComprStep = 4;
		}
		break;
	case 4:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
			RunData.ComprStep = 5;
		}
		break;
	case 5:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 1;
			RunData.ComprStep = 6;
		}
		break;
	case 6:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
			RunData.ComprStep = 7;
		}
		break;
	case 7:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 1;
			RunData.ComprStep = 8;
		}
		break;
	case 8:
		if (RunData.XF_TimeCount >= 500)
		{
			RunData.XF_TimeCount = 0;
			RunData.JY_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
			RunData.ComprStep = 9;
		}
		break;

	case 9: // 开始循环
		if (RunData.JY_TimeCount >= RunData.JY_TimeSet * 100)
		{
			RunData.XF_TimeCount = 0;
			RunData.JY_TimeCount = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 1;
			RunData.ComprStep = 10;
		}
		break;
	case 10:
		if (RunData.XF_TimeCount >= RunData.XF_TimeSet * 100)
		{
			RunData.XF_TimeCount = 0;
			RunData.JY_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 1;
			RunData.ComprStep = 11;
		}
		break;
	case 11:
		if (RunData.JY_TimeCount >= RunData.JY_TimeSet * 100)
		{
			RunData.XF_TimeCount = 0;
			RunData.JY_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 0;
			RunData.ComprStep = 12;
		}
		break;
	case 12:
		if (RunData.XF_TimeCount >= RunData.XF_TimeSet * 100)
		{
			RunData.XF_TimeCount = 0;
			RunData.JY_TimeCount = 0;
			SV_A_OUT = 1;
			SV_B_OUT = 1;
			RunData.ComprStep = 9;
		}
		break;
	}
}

void control(void)
{

	// 按键进入待机模式
	if (KeyDat.key_short_value == TOUCH_KEY_STANDBY)
	{
		RunData.StandbySta = !RunData.StandbySta;
	}
	// 定时进入待机模式
	if ((RunData.Timing == 0) && (RunData.TimingFlag == 1))
	{
		RunData.StandbySta = 1;
	}
	if (RunData.StandbySta == 0)
	{
		FAN1_OUT = 1;
		FAN2_OUT = 1;
		ENCODER_LED = 0;	// 低电平打开
		TOUCHT_LED = 1;		// 低电平打开
		StepCtr(5);			// 步进电机工作
		TimingClosureSet(); // 定时待机设置
	}
	else
	{
		if (FAN1_OUT == 1) // 待机后只执行一次
		{
			//				E2prom_WriteData();
		}
		FAN1_OUT = 0;
		FAN2_OUT = 0;
		COMPR_OUT = 0;
		SV_A_OUT = 0;
		SV_B_OUT = 0;
		ENCODER_LED = 1; // 高电平关闭
		TOUCHT_LED = 1;	 // 低电平关闭
		RunData.TimingFlag = 0;
		RunData.Timing = 0;
		RunData.RunTime = 0;
		StepDrive(5, 0); // 步进电机停止工作
	}
	VoiceDrive();
	SolenoidValveCtr();

	Display();
	ErrorCtr();
	Update_Display();
}
