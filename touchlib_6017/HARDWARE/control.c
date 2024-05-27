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
// �������
void ErrorCtr(void)
{
	u8 i;
	if (RunData.StandbySta == 0)
	{
		if (RunData.RunTime >= 2)
		{
			if (RunData.Concentration < 500) // ����Ũ��С��50%
			{
				RunData.SysSta = 0xE3;
				Display_SysSta(3);
			}
			else if ((RunData.Concentration >= 500) && (RunData.Concentration < 820)) // 500<=����Ũ��<=820
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

		if (DC_TEST == 0) // �ϵ�����ϲ��Ͻ������״̬
		{
			if (POW_KEY == 0) // ��Դ����û�йر�
			{
				UartSendStr("POW ERR\r\n");
				FAN1_OUT = 0;
				FAN2_OUT = 0;
				COMPR_OUT = 0;
				SV_A_OUT = 0;
				SV_B_OUT = 0;
				LAMP_LED = 1;	 // ˮ��ƹر�
				ENCODER_LED = 1; // �ߵ�ƽ�ر�
				TOUCHT_LED = 0;	 // �͵�ƽ�ر�
				RunData.SysSta = 0xE5;

				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				DisBuf[1] = ch_table[0x0E];
				DisBuf[0] = ch_table[5];

				Update_Display();
				E2prom_WriteData();
				while (1)
				{
					if (POW_KEY == 0) // ��Դ����û�йر�
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
					else // ��Դ���عر�
					{
						BeepEnable(0);
						DisBuf[1] = 0;
						DisBuf[0] = 0;
						Display_SysSta(0);
						Update_Display();
					}
					if (DC_TEST == 1) // �ϵ�����ϲ��Ͻ������״̬
					{
						UartSendStr("RESET1\r\n");
						BeepEnable(0);
						IAP_CONTR |= 0x60;
						break;
					}
				}
			}
			else // ��Դ���عر�
			{
				FAN1_OUT = 0;
				FAN2_OUT = 0;
				COMPR_OUT = 0;
				SV_A_OUT = 0;
				SV_B_OUT = 0;
				LAMP_LED = 1;	 // ˮ��ƹر�
				ENCODER_LED = 1; // �ߵ�ƽ�ر�
				TOUCHT_LED = 0;	 // �͵�ƽ�ر�
				RunData.SysSta = 0x00;
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				E2prom_WriteData();
				while (1)
				{
					Update_Display();
					if (DC_TEST == 1) // �ϵ�����ϲ��Ͻ������״̬
					{

						BeepEnable(0);
						IAP_CONTR |= 0x60;
						break;
					}
				}
			}
		}
	}
	else // ����״̬
	{
		if ((DC_TEST == 0) || (POW_KEY == 1)) // 12V�͵�Դ���ؼ��
		{
			UartSendStr("POW DOWN\r\n");
			FAN1_OUT = 0;
			FAN2_OUT = 0;
			COMPR_OUT = 0;
			SV_A_OUT = 0;
			SV_B_OUT = 0;
			LAMP_LED = 1;	 // ˮ��ƹر�
			ENCODER_LED = 1; // �ߵ�ƽ�ر�
			TOUCHT_LED = 0;	 // �͵�ƽ�ر�
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
				if ((DC_TEST == 1) && (POW_KEY == 0)) // �ϵ�����ϲ��Ͻ������״̬
				{
					BeepEnable(0);
					UartSendStr("Pow again up\r\n"); // ��Դ��һ��
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
		if (RunData.StandbySta == 0) // ��������
		{
			if (RunData.AOD_TimeCount >= 60)
			{
				TM1640B_Luminance(1); // Ϣ�����ȵ������
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
			//				Display_Flow(RunData.FlowValue,1);//��ʾʵʱ����
			//			}
			//			else
			//			{
			Display_Flow(RunData.FlowSet, 1); // ��ʾ��������
			//			}

			Display_Concentration(RunData.Concentration / 10, 1);	//
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1); // ��ʾ�ۼ�ʱ��
			// ��������滻
			// RunData.CumulativeTime = 18000;
			if ((RunData.CumulativeTime % (60 * 300) == 0) && (RunData.CumulativeTime != 0)) // 60*300
				RunData.FilterMeshFlag = 1;

			Display_FilterMesh(RunData.FilterMeshFlag);
			Display_Anion(0);
			Display_Voice(RunData.VoiceEnable);

			if (RunData.SysSta) // ��ʾ���ϴ���
			{
				DisBuf[2] = 0;
				DisBuf[1] = ch_table[(RunData.SysSta >> 4) & 0x0F];
				DisBuf[0] = ch_table[RunData.SysSta & 0x0F];
			}
			else
			{
				if (RunData.Timing)
				{
					Display_Timing(RunData.Timing, 2); // ��ʾ��ʱʱ��
				}
				else
				{
					Display_Timing(RunData.RunTime, 1); // ��ʾ����ʱ��
				}
			}
		}
		else // ����״̬
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

	case 9: // ��ʼѭ��
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

	// �����������ģʽ
	if (KeyDat.key_short_value == TOUCH_KEY_STANDBY)
	{
		RunData.StandbySta = !RunData.StandbySta;
	}
	// ��ʱ�������ģʽ
	if ((RunData.Timing == 0) && (RunData.TimingFlag == 1))
	{
		RunData.StandbySta = 1;
	}
	if (RunData.StandbySta == 0)
	{
		FAN1_OUT = 1;
		FAN2_OUT = 1;
		ENCODER_LED = 0;	// �͵�ƽ��
		TOUCHT_LED = 1;		// �͵�ƽ��
		StepCtr(5);			// �����������
		TimingClosureSet(); // ��ʱ��������
	}
	else
	{
		if (FAN1_OUT == 1) // ������ִֻ��һ��
		{
			//				E2prom_WriteData();
		}
		FAN1_OUT = 0;
		FAN2_OUT = 0;
		COMPR_OUT = 0;
		SV_A_OUT = 0;
		SV_B_OUT = 0;
		ENCODER_LED = 1; // �ߵ�ƽ�ر�
		TOUCHT_LED = 1;	 // �͵�ƽ�ر�
		RunData.TimingFlag = 0;
		RunData.Timing = 0;
		RunData.RunTime = 0;
		StepDrive(5, 0); // �������ֹͣ����
	}
	VoiceDrive();
	SolenoidValveCtr();

	Display();
	ErrorCtr();
	Update_Display();
}
