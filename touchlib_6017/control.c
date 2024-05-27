#include "main.h"
#include "beep.h"
#include "control.h"
#include "touchkey.h"
#include "display.h"
#include "tm1629b.h"
#include "GPIO_Init.h"
#include "eeprom.h"
#include "encoder.h"
#include "GPIO_Init.h"
#include "voice.h"
#include "uart2.h"
#include "irkey.h"
#include "setsysdata.h"
// #include "uart1.h"

#define MAX_SIZE 10

typedef struct {
    int data[MAX_SIZE];
    int top;  // ջ��ָ��
} Stack;

void initialize(Stack *stack) {
    stack->top = -1;
}

int isEmpty(Stack *stack) {
    return stack->top == -1;
}

int isFull(Stack *stack) {
    return stack->top == MAX_SIZE - 1;
}

int isElementInStack(Stack *stack, int element) {
    for (int i = 0; i <= stack->top; i++) {
        if (stack->data[i] == element) {
            return 1;  // Ԫ�ش�����ջ��
        }
    }
    return 0;  // Ԫ�ز�������ջ��
}

void push(Stack *stack, int value) {
    if (isFull(stack)) {
        return;
    }

    // ���Ԫ���Ƿ��Ѿ�������ջ��
    if (!isElementInStack(stack, value)) {
        stack->data[++stack->top] = value;
    }
}

int peek(Stack *stack) {
    if (isEmpty(stack)) {
        return -1;  // ��ʾջΪ��
    }
    return stack->data[stack->top];
}


// ɾ��ջ���ض�λ�õ�Ԫ��
void deleteElementAt(Stack *stack, int position) {
    if (isEmpty(stack) || position < 0 || position > stack->top) {
        return;
    }

    // ��ջ��Ŀ��λ�ú��Ԫ������ǰ��
    for (int i = position; i < stack->top; i++) {
        stack->data[i] = stack->data[i + 1];
    }

    // ջ��ָ���һ���൱��ɾ��Ŀ��λ�õ�Ԫ��
    stack->top--;
}

// ����Ԫ��ֵȷ��Ԫ����ջ�е�λ�ã�������
int findElementIndex(Stack *stack, int value) {
    for (int i = 0; i <= stack->top; i++) {
        if (stack->data[i] == value) {
            return i;  // �ҵ�Ԫ�أ���������
        }
    }
    return -1;  // δ�ҵ�Ԫ�أ����� -1 ��ʾ����
}

// ��ӡջ������
void printStack(Stack *stack) {
    printf("Stack elements: ");
    for (int i = 0; i <= stack->top; ++i) {
        printf("%X ", stack->data[i]);
    }
    printf("\n");
}

static Stack Error_Code_Stack;

void TimingClosureSet(void)
{
	//	static int sw1 = 0;
	static int count = 0;
	static int lastTiming = 0;
	if ((KeyDat.key_short_value == TOUCH_KEY_TIME_ADD) || (KeyDat.key_long_value == TOUCH_KEY_TIME_ADD))
	{
        //todo:->2023/12/13 add:���->RunData.Error_Flag�����־λ��0,���������ʱ�� status->������ɣ�����ʹ��
        RunData.Error_Flag = 0;
        RunData.Error_Delay_Time = 0;
		count++;
		if ((count > 100) && (KeyDat.key_long_value == TOUCH_KEY_TIME_ADD))
		{
			if (lastTiming != 510)
			{
                //todo:->2023/12/14 add���testing , �����ǵ�key_long_valueΪ0����˵����ʱû���κΰ�������
                if(KeyDat.key_long_value == 0)
                {
                    RunData.TOUCHkey_Finally_Time = lastTiming;
                }
                RunData.Timing += 30;
                lastTiming = RunData.Timing;
			}
			count = 0;
		}
		if (KeyDat.key_short_value == TOUCH_KEY_TIME_ADD)
			RunData.Timing += 30;
		if (RunData.Timing > 480)
		{
			RunData.Timing = 0;
			// todo:2024/1/9 �������Ʋ����ƶ������ԭ�ȵĵط���Ҫ�ɿ��������ܱ�ʱ�������󲻷���
			RunData.VoiceNum = continuous_oxygen_therapy;
			RunData.VoiceNumLast = RunData.VoiceNum;
			if(RunData.VoiceEnable == 1)
			{
				PlaySound(RunData.VoiceNum);
			}
		}
		// RunData.Timing = RunData.Timing%10 == 0 ? RunData.Timing : RunData.Timing-RunData.Timing%10;
		RunData.Timing = RunData.Timing % 30 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 30 + 30;
		if (RunData.Timing)
			RunData.TimingFlag = 1;
		else
			RunData.TimingFlag = 0;
	}
	else
	{
		lastTiming = 0;
	}

	if ((KeyDat.key_short_value == TOUCH_KEY_TIME_DEC) || (KeyDat.key_long_value == TOUCH_KEY_TIME_DEC))
	{
		count++;
		if ((count > 50) && (KeyDat.key_long_value == TOUCH_KEY_TIME_DEC))
		{
			RunData.Timing -= 30;
			count = 0;
		}
		if (KeyDat.key_short_value == TOUCH_KEY_TIME_DEC)
			RunData.Timing -= 30;
		if (RunData.Timing <= 0)
			RunData.Timing = 0;
		RunData.Timing = RunData.Timing % 10 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 10;
		if (RunData.Timing)
			RunData.TimingFlag = 1;
		else
			RunData.TimingFlag = 0;
	}

	if ((KeyDat.key_short_value == TOUCH_KEY_FLOW_ADD) || (KeyDat.key_long_value == TOUCH_KEY_FLOW_ADD))
	{
		count++;
		if ((count > 100) && (KeyDat.key_long_value == TOUCH_KEY_FLOW_ADD))
		{
			RunData.FlowSet += 1;
			count = 0;
		}
		if (KeyDat.key_short_value == TOUCH_KEY_FLOW_ADD)
			RunData.FlowSet += 1;
		if (RunData.FlowSet > FLOW_SET * 10)
			RunData.FlowSet = FLOW_SET * 10;
	}
	if ((KeyDat.key_short_value == TOUCH_KEY_FLOW_DEC) || (KeyDat.key_long_value == TOUCH_KEY_FLOW_DEC))
	{
		count++;
		if ((count > 100) && (KeyDat.key_long_value == TOUCH_KEY_FLOW_DEC))
		{
			RunData.FlowSet -= 1;
			
			count = 0;
		}
		if (KeyDat.key_short_value == TOUCH_KEY_FLOW_DEC)
			RunData.FlowSet -= 1;
		if (RunData.FlowSet < 5)
			RunData.FlowSet = 5; // ������С0.5L
	}
}

void ERR_Code(void) {
	static u8 init_stack = 0;
	if(init_stack == 0)
	{
		initialize(&Error_Code_Stack);
		printf("stack init ok!\r\n");
	}
	init_stack = 1;
    static u16 count1 = 0;
    static u16 count2 = 0;
    static u16 count3 = 0;

    if (RunData.ErrCodeSecCount >= 115)//115
    {
        RunData.ErrCodeSecCount = 115;

        if (RunData.Concentration <= 500) // ����Ũ��С��50%
        {
			push(&Error_Code_Stack,0xE3);
			RunData.AOD_TimeCount = 0; //���Ϣ����ʱ
            count1++;
            if (count1 >= 500) // ά��2s
            {
                count1 = 500;
                if ((RunData.SysSta2 & 0x01) == 0) {
                    //Display_SysSta(2);
                    RunData.SysSta2 |= 0x01;
                }
            }
        }
        else
        {
			deleteElementAt(&Error_Code_Stack,findElementIndex(&Error_Code_Stack,0xE3));
            count1 = 0;
            if (RunData.SysSta2 & 0x01)
                RunData.SysSta2 = 0;
        }

        // 500<����Ũ��<=820
        if ((RunData.Concentration > 500) && (RunData.Concentration <= 820))
        {
			push(&Error_Code_Stack,0xE2);
			RunData.AOD_TimeCount = 0; //���Ϣ����ʱ
            count2++;
            if (count2 > 500) // ά��2s
            {
                count2 = 500;
                if ((RunData.SysSta2 & 0x02) == 0) {
                    //Display_SysSta(2);
                    RunData.SysSta2 |= 0x02;
                }
            }
        }
        else
        {
			deleteElementAt(&Error_Code_Stack,findElementIndex(&Error_Code_Stack,0xE2));
            count2 = 0;
            if (RunData.SysSta2 & 0x02)
                RunData.SysSta2 = 0;
        }
    }
    //��ѹ����
    if (RunData.ErrCodeSecCount >= 6)
    {
        if (RunData.ACDC_V <= RunData.Voltage_Calibration) //todo:->2023/12/19 add:���RunData.Voltage_Calibration����ѹ�궨ֵ
        {
			push(&Error_Code_Stack,0xE5);
            //RunData.Error_Flag = 1;                             //todo:->2023/12/13 add:���->RunData.Error_Flag�����־λ��1 status->������ɣ�����ʹ��
            count3++;
			RunData.AOD_TimeCount = 0; //���Ϣ����ʱ
            if (count3 > 500) // ά��2s
            {
                count3 = 500;
                if ((RunData.SysSta2 & 0x04) == 0)
                {
                    //Display_SysSta(2);
                    RunData.SysSta2 |= 0x04;
                }
            }
        }
        else
        {
			deleteElementAt(&Error_Code_Stack,findElementIndex(&Error_Code_Stack,0xE5));
            count3 = 0;
            if (RunData.SysSta2 & 0x04)
                RunData.SysSta2 = 0;
        }
    }
	if (RunData.SysSta2 == 0)//û�д���ϵͳ״̬����0
	{
			//count4 = 0;
			RunData.SysSta = 0xFF;
			RunData.AlarmSwitch = 0; // todo:->2023/12/13 fix���쳣״̬�µ������ȡ�������󣬳��ֱ���ͼ�꣬�ȵ�������ͼ�겻��ʧ������ status->������� ����ʹ��
	}

	RunData.last_SysSta = RunData.SysSta;
	RunData.SysSta = peek(&Error_Code_Stack);

	if(RunData.last_SysSta != RunData.SysSta && RunData.AlarmSwitch == 1)
	{
		RunData.AlarmSwitch = !RunData.AlarmSwitch;
	}


	if(RunData.SysSta != 0xFF)
	{
		RunData.Error_Flag = 1;
	}
	else
	{
		RunData.Error_Flag = 0;
        RunData.Error_Delay_Time = 0;
	}
}

// �������б��������ر�Ū��
void ERR_AlarmVoiceClose(void)
{
}


// ������
void ErrorCtr(void)
{
	u16 i;
	u16 j;
	u16 AlarmSwitchFlag = 1; // ����ʱ�رյ�Դ���غ���1����ֹ�ϵ籨��ʱ���ٴδ򿪱������غ󱨾�

	if (RunData.StandbySta == 0)
	{
		ERR_Code();
		if (sUsart2.LinkSta == 1)
		{
			if (RunData.PowkeyFlag == 1) // �����ص粻����
			{
				sUsart2.RxData[3] = 0;
				ENCODER_LED = 1; // �ߵ�ƽ�ر�
				RunData.SysSta = 0xFF;
				RunData.StandbySta = 1; // �������ģʽ
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				TM1629_Luminance(0);
				Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);//add:�رձ���ͼ��
				Update_Display();
				E2prom_WriteData();
				Display_SysSta(0);
				while (1)
				{
					if ((i % 100) == 0)
						Cmd_Send();
					i++;
					CLRWDT(); // �忴�Ź�
					RunData.StandbySta = 1;
					Cmd_Process();
					DelayMs(1);
					if (RunData.PowkeyFlag == 0) // ��Դ���ش�
					{
						BeepEnable(0);
						RESET();
						break;
					}
				}
			}
			else if (RunData.DC12_V < 600) // ��Դ����û�йر�
			{
				RunData.SysSta = 0xFF;
				//				LAMP_LED = 1;//ˮ��ƹر�
				ENCODER_LED = 1; // �ߵ�ƽ�ر�
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				Update_Display();
				E2prom_WriteData();
				TM1629_Luminance(8); // Ϣ�����ȵ������
				i = 0;
				Display_SysSta(0);
				RunData.AlarmSwitch = 0;
				while (1)
				{
					j++;
					if (j > 100)
					{
						j = 0;
						RunData.StandbySta = 1;
						Cmd_Send();
						if (RunData.PowkeyFlag == 1) // ��Դ���ش򿪱�������ֹ֮ͣ����
							AlarmSwitchFlag = 1;
					}

					CLRWDT(); // �忴�Ź�
					Cmd_Process();
					if (RunData.PowkeyFlag == 0) // ��Դ�����ٴδ򿪺��ǻᱨ��
					{
						if(RunData.Power_After_OnFlag_Time >= 3 || RunData.Power_After_OnFlag == 0){
							Alarm_Sound(0);
							if (RunData.AlarmLEDCount < 250)
								Display_SysSta(3);
							else if (RunData.AlarmLEDCount < 500)
								Display_SysSta(0);
							else
								RunData.AlarmLEDCount = 0;
						}
						
						Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Pattern.Led_Dispaly_CloseAlarm); // ��ʾ���������Ƿ��
					}
					else
					{
						AlarmSound.count = 0;
        				AlarmSound.step = 0;
						PlaySound(0xFD);
						RunData.Power_After_OnFlag = 1;
						RunData.Power_After_OnFlag_Time = 0;
						Display_SysSta(0);
						RunData.AlarmSwitch = 0;
						Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
					}
					static u8 k = 0;
					if( k >= 100)
					{
						Update_Display();
						k = 0;
					}
					k ++;
					IR_MoreCtr();
					BeepCtr1(KeyDat.key_value);
					key_scan();

                    //todo:->2023/12/13 add>��Ӱ������жϣ��û��޸��ϵ�ʱȡ������ͼ���޷���ʾ������ status->������ɣ�����ʹ��
                    if(KeyDat.key_short_value == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 0)
                    {
                        RunData.AlarmSwitch = !RunData.AlarmSwitch;
						if(RunData.AlarmSwitch == 1)
						{
							PlaySound(0xFD);
						}
                    }
					TSC_Scan();					   // ��������ɨ��
					if (TSC_DataProcessing() == 1) // ����1��ʾ���а����������һ�Ρ�
					{
						Get_Key_Demo();
					}
					DelayMs(1);
					if (RunData.DC12_V > 600) // �ϵ�����ϲ��Ͻ������״̬
					{
						PlaySound(0xFD);
						BeepEnable(0);
						RESET();
						break;
					}
				}
			}
		}
	}
	else // ����״̬
	{
		RunData.ErrCodeSecCount = 0; // ����ʱҪ����
		RunData.SysSta2 = 0;		 // ����ʱҪ����
		if (RunData.DC12_V < 600)	 // ��Դ����6V
		{
			//				UartSendStr("POW DOWN\r\n");
			//				FAN1_OUT = 0;
			//				FAN2_OUT = 0;
			//				COMPR_OUT = 0;
			//				SV_A_OUT = 0;
			//				SV_B_OUT = 0;
			//				LAMP_LED = 1;//ˮ��ƹر�
			ENCODER_LED = 1; // �ߵ�ƽ�ر�
			//				TOUCHT_LED = 0;//�͵�ƽ�ر�
			RunData.SysSta = 0xFF;
			for (i = 0; i < 16; i++)
				DisBuf[i] = 0;
			TM1629_Luminance(0);
			Update_Display();
			E2prom_WriteData();
			Display_SysSta(0);
			while (1)
			{
				if ((i % 100) == 0)
					Cmd_Send();
				i++;
				CLRWDT(); // �忴�Ź�
				Cmd_Process();
				DelayMs(1);
				if (RunData.DC12_V > 600) // �ϵ�����ϲ��Ͻ������״̬
				{
					BeepEnable(0);
					RunData.StandbySta = 1;
					RESET();
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
			if (RunData.AOD_TimeCount >= 60 && RunData.Error_Flag != 1 && Engineering_Pattern.Mode != 1)//todo:->2023/12/13 add:����״̬�¿���Ϣ����һ��״̬����Ϣ��
			{
				TM1629_Luminance(1); // Ϣ�����ȵ������
				RunData.AOD_TimeCount = 60;
			}
			else
			{
				if(RunData.Error_Flag == 1)
				{
					if(RunData.Error_Delay_Time == 3)
					{
						TM1629_Luminance(8);
					}
				}
				else TM1629_Luminance(8);
			}

			if (EncoderData.Time < 100 || KeyDat.key_val_x == TOUCH_KEY_FLOW_ADD || KeyDat.key_val_x == TOUCH_KEY_FLOW_DEC)
				count2 = 0;
			//			count2++;
			//			if(count2>1000)
			//			{
			//				count2 = 1000;
			//				Display_Flow(RunData.FlowValue,1);//��ʾʵʱ����
			//			}
			//			else
			//			{
			Display_Flow(RunData.FlowSet, 1,Engineering_Pattern.Led_Display_Flow); // ��ʾ��������
			//			}

			Display_Concentration(RunData.Concentration, 1);		//
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pattern.Led_Display_CumulativeTime_Enbale); // ��ʾ�ۼ�ʱ��

			// Display_CumulativeTime(RunData.ACDC_V,1);//��ʾ�ۼ�ʱ��
			// ��������滻
			// RunData.CumulativeTime = 18000;
			if ((RunData.CumulativeTime % (60 * 1000) == 0) && (RunData.CumulativeTime != 0)) // 60*300
				RunData.FilterMeshFlag = 1;

			// ���������ر�ͼ��,����ĵط��޸��ˣ�����״̬�²��������ƣ�����״̬�¿�������
			if (RunData.SysSta != 0xFF || RunData.SysSta != 0)
			{
				Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Pattern.Led_Dispaly_CloseAlarm); // ��ʾ���������Ƿ��
			}
			else{
				Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
			}

			Display_FilterMesh(RunData.FilterMeshFlag);
			Display_Anion(0);
			Display_Voice(RunData.VoiceEnable);
			Concentration_Low_Alarm();

			// todo:->2023/12/13 add:����ж�����RunData.Error_Delay_Time == 3 status:������ɹ��ܿ���
			if (RunData.SysSta != 0xFF && RunData.Error_Flag == 1 && RunData.Error_Delay_Time >= 3) // ��ʾ���ϴ���
			{
				Display_SysSta(2);
				//todo:�����޸�����ģʽ��ʾ��ǩ����
				Label_Min(0,RunData.Error_Delay_Time);
				Label_Running(0,RunData.Error_Delay_Time);
				Label_Timing(0,RunData.Error_Delay_Time);
				if(Engineering_Pattern.Led_Display_Timing_Enbale != 0)
				{
					Label_Min(1,RunData.Error_Delay_Time);
					Label_Running(1,RunData.Error_Delay_Time);
					Label_Timing(1,RunData.Error_Delay_Time);
				}
				SEG1(ch_table[(RunData.SysSta >> 4) & 0x0F], Engineering_Pattern.Led_Display_Timing_Enbale); // todo:->2023/12/18 add:����ʹ�ܣ�Ϊ�˷�ֹ�빤��ģʽ�Ĵ����ͻ
				SEG2(ch_table[RunData.SysSta & 0x0F], Engineering_Pattern.Led_Display_Timing_Enbale);		 // todo:->2023/12/18 add:����ʹ�ܣ�Ϊ�˷�ֹ�빤��ģʽ�Ĵ����ͻ
				SEG3(0, Engineering_Pattern.Led_Display_Timing_Enbale);
			}
			else
			{
				if (RunData.SysSta == 0xFF || RunData.SysSta == 0x00)
				{
					Display_SysSta(1);
				}
				if (RunData.Timing) // ��ʱ����������Ƿ�����������������֤
				{
					Display_Timing(RunData.Timing, 2, Engineering_Pattern.Led_Display_Timing_Enbale); // ��ʾ��ʱʱ��
				}
				else
				{
					Display_Timing(RunData.RunTime, 1, Engineering_Pattern.Led_Display_Timing_Enbale); // ��ʾ����ʱ��
				}
			}
		}
		else // ����״̬
		{
			RunData.SysSta = 0xFF;//���Ϊʲô��0xFF�أ���Ϊջ��ʼ��Ϊ0XFF����֪��Ϊʲô��һ��ʼ����Ϊ��0x00
			RunData.Error_Flag = 0;
			RunData.Error_Delay_Time = 0;

			Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);//�رձ���ͼ��
			count = 10;
			TM1629_Luminance(8);
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pattern.Led_Display_CumulativeTime_Enbale);
			Display_Timing(0, 3,Engineering_Pattern.Led_Display_Timing_Enbale);
			Display_Flow(0, 3 ,Engineering_Pattern.Led_Display_Flow);			 //
			Display_Concentration(0, 3); //
			Display_SysSta(0);
			Display_Anion(0);
			Display_FilterMesh(0);
			Display_Voice(RunData.VoiceEnable);
		}
	}
	count++;
}
////1,30�����Զ�����һ��
////2,��������10s�󱣴�һ��
// void AutoSaveData(void)
//{
//	static u8 i = 0;
//	if((RunData.CumulativeTime%30==0)&&(RunData.CumulativeTime>10))
//     {
//		if(i==0)
//         {
//			E2prom_WriteData();
//			VoiceCtr2(37);
//			i=1;
//         }
//     }
//     else i = 0;
//     if(KeyDat.key_value) RunData.AutoSaveDataCount = 0;
//		RunData.AutoSaveDataCount++;
//         if(RunData.AutoSaveDataCount>3300)//510
//         {
//			RunData.AutoSaveDataCount = 3301;
//         }
//         if(RunData.AutoSaveDataCount==3300)
//		{
//             E2prom_WriteData();
//             VoiceCtr2(37);
//		}
// }
void control(void)
{
	static int i = 0;
	// �����������ģʽ
	if (KeyDat.key_short_value == TOUCH_KEY_STANDBY)
	{
		RunData.StandbySta = !RunData.StandbySta;
	}
	// ��ʱ�������ģʽ
	if ((RunData.Timing == 0) && (RunData.TimingFlag == 1))
	{
		RunData.TimingVoiceFlag = 1;
		RunData.StandbySta = 1;
	}
	if (RunData.StandbySta == 0)
	{
		RunData.TimingVoiceFlag = 0;
		ENCODER_LED = 0;	// �͵�ƽ��
		TimingClosureSet(); // ��ʱ��������
	}
	else
	{
		E2prom_ReadData();
		initialize(&Error_Code_Stack);
		ENCODER_LED = 0; // �ߵ�ƽ�ر�
		RunData.TimingFlag = 0;
		RunData.Timing = 0;
		RunData.RunTime = 0;
		RunData.sec = 0;
		RunData.SOSFlag = 0;
		RunData.SysSta = 0xFF;
		Engineering_Pattern.Mode = 0;
	}
	// AutoSaveData();//�Զ���������
	VoiceDrive();
	//����������޸�������ʱ����һ˲����Ļȫ��Ϩ������⣬��Ҫ������Update_Display()����ռ��ʱ��̫��
	static int j = 0;
	if(j == 0)
	{
		j = 1;
		Display();
		Update_Display();	
		return;
	}
	//Update_Display();
	//���i��Ҫ��Update_Display�����ᵼ��ϵͳ�ӳ�
	ErrorCtr();
	if(i >= 100)
	{
		Display();
		Update_Display();	
		i = 0;
	}
	i++;
}