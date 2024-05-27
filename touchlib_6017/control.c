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
    int top;  // 栈顶指针
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
            return 1;  // 元素存在于栈中
        }
    }
    return 0;  // 元素不存在于栈中
}

void push(Stack *stack, int value) {
    if (isFull(stack)) {
        return;
    }

    // 检查元素是否已经存在于栈中
    if (!isElementInStack(stack, value)) {
        stack->data[++stack->top] = value;
    }
}

int peek(Stack *stack) {
    if (isEmpty(stack)) {
        return -1;  // 表示栈为空
    }
    return stack->data[stack->top];
}


// 删除栈中特定位置的元素
void deleteElementAt(Stack *stack, int position) {
    if (isEmpty(stack) || position < 0 || position > stack->top) {
        return;
    }

    // 将栈中目标位置后的元素依次前移
    for (int i = position; i < stack->top; i++) {
        stack->data[i] = stack->data[i + 1];
    }

    // 栈顶指针减一，相当于删除目标位置的元素
    stack->top--;
}

// 根据元素值确定元素在栈中的位置（索引）
int findElementIndex(Stack *stack, int value) {
    for (int i = 0; i <= stack->top; i++) {
        if (stack->data[i] == value) {
            return i;  // 找到元素，返回索引
        }
    }
    return -1;  // 未找到元素，返回 -1 表示错误
}

// 打印栈的内容
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
        //todo:->2023/12/13 add:添加->RunData.Error_Flag错误标志位置0,并清除错误时间 status->测试完成，可以使用
        RunData.Error_Flag = 0;
        RunData.Error_Delay_Time = 0;
		count++;
		if ((count > 100) && (KeyDat.key_long_value == TOUCH_KEY_TIME_ADD))
		{
			if (lastTiming != 510)
			{
                //todo:->2023/12/14 add添加testing , 这里是当key_long_value为0，则说明此时没有任何按键按下
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
			// todo:2024/1/9 连续氧疗部分移动到这里，原先的地方需要松开按键才能报时，与需求不符合
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
			RunData.FlowSet = 5; // 流量最小0.5L
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

        if (RunData.Concentration <= 500) // 气体浓度小于50%
        {
			push(&Error_Code_Stack,0xE3);
			RunData.AOD_TimeCount = 0; //清楚息屏计时
            count1++;
            if (count1 >= 500) // 维持2s
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

        // 500<气体浓度<=820
        if ((RunData.Concentration > 500) && (RunData.Concentration <= 820))
        {
			push(&Error_Code_Stack,0xE2);
			RunData.AOD_TimeCount = 0; //清楚息屏计时
            count2++;
            if (count2 > 500) // 维持2s
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
    //低压报警
    if (RunData.ErrCodeSecCount >= 6)
    {
        if (RunData.ACDC_V <= RunData.Voltage_Calibration) //todo:->2023/12/19 add:添加RunData.Voltage_Calibration，电压标定值
        {
			push(&Error_Code_Stack,0xE5);
            //RunData.Error_Flag = 1;                             //todo:->2023/12/13 add:添加->RunData.Error_Flag错误标志位置1 status->测试完成，可以使用
            count3++;
			RunData.AOD_TimeCount = 0; //清楚息屏计时
            if (count3 > 500) // 维持2s
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
	if (RunData.SysSta2 == 0)//没有错误系统状态设置0
	{
			//count4 = 0;
			RunData.SysSta = 0xFF;
			RunData.AlarmSwitch = 0; // todo:->2023/12/13 fix：异常状态下点击报警取消按键后，出现报警图标，等到正常后图标不消失的问题 status->测试完成 可以使用
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

// 正常运行报警声音关闭弄能
void ERR_AlarmVoiceClose(void)
{
}


// 错误处理
void ErrorCtr(void)
{
	u16 i;
	u16 j;
	u16 AlarmSwitchFlag = 1; // 报警时关闭电源开关后置1，防止断电报警时，再次打开报警开关后报警

	if (RunData.StandbySta == 0)
	{
		ERR_Code();
		if (sUsart2.LinkSta == 1)
		{
			if (RunData.PowkeyFlag == 1) // 正常关电不报警
			{
				sUsart2.RxData[3] = 0;
				ENCODER_LED = 1; // 高电平关闭
				RunData.SysSta = 0xFF;
				RunData.StandbySta = 1; // 进入待机模式
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				TM1629_Luminance(0);
				Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);//add:关闭报警图标
				Update_Display();
				E2prom_WriteData();
				Display_SysSta(0);
				while (1)
				{
					if ((i % 100) == 0)
						Cmd_Send();
					i++;
					CLRWDT(); // 清看门狗
					RunData.StandbySta = 1;
					Cmd_Process();
					DelayMs(1);
					if (RunData.PowkeyFlag == 0) // 电源开关打开
					{
						BeepEnable(0);
						RESET();
						break;
					}
				}
			}
			else if (RunData.DC12_V < 600) // 电源开关没有关闭
			{
				RunData.SysSta = 0xFF;
				//				LAMP_LED = 1;//水箱灯关闭
				ENCODER_LED = 1; // 高电平关闭
				for (i = 0; i < 16; i++)
					DisBuf[i] = 0;
				Update_Display();
				E2prom_WriteData();
				TM1629_Luminance(8); // 息屏亮度调到最低
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
						if (RunData.PowkeyFlag == 1) // 电源开关打开报警，反之停止报警
							AlarmSwitchFlag = 1;
					}

					CLRWDT(); // 清看门狗
					Cmd_Process();
					if (RunData.PowkeyFlag == 0) // 电源开关再次打开后还是会报警
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
						
						Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Pattern.Led_Dispaly_CloseAlarm); // 显示报警开关是否打开
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

                    //todo:->2023/12/13 add>添加按键的判断，用户修复断电时取消报警图标无法显示的问题 status->测试完成，可以使用
                    if(KeyDat.key_short_value == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 0)
                    {
                        RunData.AlarmSwitch = !RunData.AlarmSwitch;
						if(RunData.AlarmSwitch == 1)
						{
							PlaySound(0xFD);
						}
                    }
					TSC_Scan();					   // 触摸按键扫描
					if (TSC_DataProcessing() == 1) // 返回1表示所有按键处理完成一次。
					{
						Get_Key_Demo();
					}
					DelayMs(1);
					if (RunData.DC12_V > 600) // 断电后马上插上进入待机状态
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
	else // 待机状态
	{
		RunData.ErrCodeSecCount = 0; // 待机时要清零
		RunData.SysSta2 = 0;		 // 待机时要清零
		if (RunData.DC12_V < 600)	 // 电源低于6V
		{
			//				UartSendStr("POW DOWN\r\n");
			//				FAN1_OUT = 0;
			//				FAN2_OUT = 0;
			//				COMPR_OUT = 0;
			//				SV_A_OUT = 0;
			//				SV_B_OUT = 0;
			//				LAMP_LED = 1;//水箱灯关闭
			ENCODER_LED = 1; // 高电平关闭
			//				TOUCHT_LED = 0;//低电平关闭
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
				CLRWDT(); // 清看门狗
				Cmd_Process();
				DelayMs(1);
				if (RunData.DC12_V > 600) // 断电后马上插上进入待机状态
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
		if (RunData.StandbySta == 0) // 正常工作
		{
			if (RunData.AOD_TimeCount >= 60 && RunData.Error_Flag != 1 && Engineering_Pattern.Mode != 1)//todo:->2023/12/13 add:正常状态下可以息屏，一场状态不可息屏
			{
				TM1629_Luminance(1); // 息屏亮度调到最低
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
			//				Display_Flow(RunData.FlowValue,1);//显示实时流量
			//			}
			//			else
			//			{
			Display_Flow(RunData.FlowSet, 1,Engineering_Pattern.Led_Display_Flow); // 显示设置流量
			//			}

			Display_Concentration(RunData.Concentration, 1);		//
			Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pattern.Led_Display_CumulativeTime_Enbale); // 显示累计时间

			// Display_CumulativeTime(RunData.ACDC_V,1);//显示累计时间
			// 清洁滤网替换
			// RunData.CumulativeTime = 18000;
			if ((RunData.CumulativeTime % (60 * 1000) == 0) && (RunData.CumulativeTime != 0)) // 60*300
				RunData.FilterMeshFlag = 1;

			// 报警声音关闭图标,这个的地方修改了，正常状态下不可以亮灯，故障状态下可以亮灯
			if (RunData.SysSta != 0xFF || RunData.SysSta != 0)
			{
				Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Pattern.Led_Dispaly_CloseAlarm); // 显示报警开关是否打开
			}
			else{
				Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
			}

			Display_FilterMesh(RunData.FilterMeshFlag);
			Display_Anion(0);
			Display_Voice(RunData.VoiceEnable);
			Concentration_Low_Alarm();

			// todo:->2023/12/13 add:添加判断条件RunData.Error_Delay_Time == 3 status:测试完成功能可用
			if (RunData.SysSta != 0xFF && RunData.Error_Flag == 1 && RunData.Error_Delay_Time >= 3) // 显示故障代码
			{
				Display_SysSta(2);
				//todo:用于修复工程模式显示标签问题
				Label_Min(0,RunData.Error_Delay_Time);
				Label_Running(0,RunData.Error_Delay_Time);
				Label_Timing(0,RunData.Error_Delay_Time);
				if(Engineering_Pattern.Led_Display_Timing_Enbale != 0)
				{
					Label_Min(1,RunData.Error_Delay_Time);
					Label_Running(1,RunData.Error_Delay_Time);
					Label_Timing(1,RunData.Error_Delay_Time);
				}
				SEG1(ch_table[(RunData.SysSta >> 4) & 0x0F], Engineering_Pattern.Led_Display_Timing_Enbale); // todo:->2023/12/18 add:调价使能，为了防止与工程模式的代码冲突
				SEG2(ch_table[RunData.SysSta & 0x0F], Engineering_Pattern.Led_Display_Timing_Enbale);		 // todo:->2023/12/18 add:调价使能，为了防止与工程模式的代码冲突
				SEG3(0, Engineering_Pattern.Led_Display_Timing_Enbale);
			}
			else
			{
				if (RunData.SysSta == 0xFF || RunData.SysSta == 0x00)
				{
					Display_SysSta(1);
				}
				if (RunData.Timing) // 定时减到正点后是否会出行语音播报待验证
				{
					Display_Timing(RunData.Timing, 2, Engineering_Pattern.Led_Display_Timing_Enbale); // 显示定时时间
				}
				else
				{
					Display_Timing(RunData.RunTime, 1, Engineering_Pattern.Led_Display_Timing_Enbale); // 显示运行时间
				}
			}
		}
		else // 待机状态
		{
			RunData.SysSta = 0xFF;//这块为什么是0xFF呢，因为栈初始化为0XFF，不知道为什么，一开始我以为是0x00
			RunData.Error_Flag = 0;
			RunData.Error_Delay_Time = 0;

			Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);//关闭报警图标
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
////1,30分钟自动保存一次
////2,按键按下10s后保存一次
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
	// 按键进入待机模式
	if (KeyDat.key_short_value == TOUCH_KEY_STANDBY)
	{
		RunData.StandbySta = !RunData.StandbySta;
	}
	// 定时进入待机模式
	if ((RunData.Timing == 0) && (RunData.TimingFlag == 1))
	{
		RunData.TimingVoiceFlag = 1;
		RunData.StandbySta = 1;
	}
	if (RunData.StandbySta == 0)
	{
		RunData.TimingVoiceFlag = 0;
		ENCODER_LED = 0;	// 低电平打开
		TimingClosureSet(); // 定时待机设置
	}
	else
	{
		E2prom_ReadData();
		initialize(&Error_Code_Stack);
		ENCODER_LED = 0; // 高电平关闭
		RunData.TimingFlag = 0;
		RunData.Timing = 0;
		RunData.RunTime = 0;
		RunData.sec = 0;
		RunData.SOSFlag = 0;
		RunData.SysSta = 0xFF;
		Engineering_Pattern.Mode = 0;
	}
	// AutoSaveData();//自动保存数据
	VoiceDrive();
	//这块是用于修复，开机时候有一瞬间屏幕全部熄灭的问题，主要是由于Update_Display()函数占用时间太长
	static int j = 0;
	if(j == 0)
	{
		j = 1;
		Display();
		Update_Display();	
		return;
	}
	//Update_Display();
	//这个i不要动Update_Display函数会导致系统延迟
	ErrorCtr();
	if(i >= 100)
	{
		Display();
		Update_Display();	
		i = 0;
	}
	i++;
}