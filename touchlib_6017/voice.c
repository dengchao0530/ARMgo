#include "voice.h"
#include "eeprom.h"
#include "touchkey.h"
#include "encoder.h"
#include "main.h"
#include "uart2.h"
#include "stdio.h"
#include "beep.h"
#include "tm1629b.h"
#include "control.h"
#include "display.h"
ALARM_SOUND AlarmSound;
#define start_delay  500
#define send_delay   50
#define send_delay150  150
void Voice_Init(void)
{
	TRISC |= (1<<6);	//PC6输入模式
    WPDCbits.WPDC6 = 1;		// PC6 -> 上拉 

    TRISD &= ~(1<<0);	//PD0输出模式
    TRISC &= ~(1<<7);	//PC7输出模式
	//VOICE_BUSY = 1;
	VOICE_RST = 0;
	VOICE_DATA = 1;	
    
}
void dat_low()
{
	VOICE_DATA = 0;
}

void dat_high()
{
	VOICE_DATA = 1;
}

//半点报时函数，第一个参数是报时时间，第二个参数是报时使能，注意这个使能用为了，在while循环中用整点报时部分让他叫一次，同时可以检测返回的值判断是否执行完成
u8 Voice_Half_Hour(u8 Half_Hour, u8 *Voice_Enable)
{
    if (*Voice_Enable == 1)//&& VoiceDelay.Voice_Delay == 0)
    {
        *Voice_Enable = 2; // 使用解引用来设置 Voice_Enable 指向的值为 2
        VoiceCtr2(Half_Hour);
        VoiceDelay.Voice_Delay_Flag = 1;
    }

    if (VoiceDelay.Voice_Delay == 700)
    {
        u8 i = VoiceCtr2(thirty_minutes); // 这块一定要用PlaySound函数，不建议修改
        if(i == 1)
        {
            VoiceDelay.Voice_Delay_Flag = 0;
            VoiceDelay.Voice_Delay = 0;
            *Voice_Enable = 1;
        }
    }

    return *Voice_Enable; // 返回 Voice_Enable 指向的值
}


u8 PlaySound(uint8_t data)
{
    u8 i = 0;
	dat_low();
	Voicedelay(start_delay);
	dat_high();
	Voicedelay(send_delay);
	for(i=0;i<8;i++)
	{
		dat_low();
		if(data&0x80)
		{
			Voicedelay(send_delay);
			dat_high();
			Voicedelay(send_delay150);
		}
		else
		{
			Voicedelay(send_delay150);
			dat_high();
			Voicedelay(send_delay);
		}
		data<<=1;
	}
	return 1;
}

u8 VoiceCtr3(u16 dat)
{
	u8 i = 0;
    u8 ret = 0;
    ret = VOICE_BUSY;
    if(ret==0)  return ret;
    if(dat==0)  return ret;
	PlaySound(dat);
	return ret;
}

u8 VoiceCtr2(u16 dat)
{
	u8 i = 0;
    u8 ret = 0;
    ret = VOICE_BUSY;
    if(RunData.VoiceEnable==0)	return ret;
    if(ret==0)  return ret;
    if(dat==0)  return ret;
	PlaySound(dat);
	return ret;
}

u8 VoiceCtr(u16 dat)
{   
	u8 i = 0;
    u8 ret = 0;
	static u8 last = 0;
    ret = VOICE_BUSY;
    if(ret==0)  return ret;
    if(dat==0)  return ret;
    
	if(last!=dat) 
		PlaySound(dat);
	last=dat;
    return ret; 
}


void VoiceFilterMesh(void)
{
	static u16 count = 0;
	if(RunData.FilterMeshFlag) 
	{
		if(count==0)
		{
			E2prom_WriteData();
//			RunData.VoiceNum = clean_oxygen_machine_filter;//请清洁制氧机进气滤网
//			RunData.CumulativeTime++;//加一防止重复播放
		}
		else if(count<1500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//请清洁制氧机进气滤网
		}      
		else if(count<3000)
		{
			RunData.VoiceNum = NULL2;
		}
		else if(count<4500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//请清洁制氧机进气滤网
		}
		else if(count<6000)
		{
			RunData.VoiceNum = NULL2;
		}
		else if(count<7500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//请清洁制氧机进气滤网
		}
		else if(count<9000)
		{
			RunData.VoiceNum = NULL2;//请清洁制氧机进气滤网
		}
		else
		{
			count = 9000;
		}
		count++;
        VoiceCtr(RunData.VoiceNum);
	}
}

void SOS_Voice(void)
{
	static u16 count = 0;
	if(RunData.SOSFlag) 
	{
		if(count<1000)
		{
			RunData.VoiceNum = is_anyone_there;//有人吗，我需要帮助
		}
		else if(count<2000)
		{
			RunData.VoiceNum = NULL2;
		}      
		else
        {
			count = 0;
        }
		count++;
	}
    else
    {
		count = 0;
    }
}

void VoiceDrive(void)
{
    static u8 key_press = 0; // 按键检测，主要是按键按下和按键松开，主要修复长按报时停留在最后
    // static u8 VoiceEnable = 1;
    // static u8 StandbyStaFlag = 0;
    // static u8 VoiceNumLast = 0;
    // static u16 count = 0;
    //if (sUsart2.LinkSta == 0) return;//通信未连接
    if (RunData.StandbySta == 1)
        RunData.StandbyStaFlag = 0;
    if (RunData.StandbySta == 0)
    {
        if (RunData.StandbyStaFlag == 0) // 只执行一次
        {
            // RunData.VoiceNum = intelligent_oxygen_therapy_start;//智能氧疗开始
            RunData.StandbyStaFlag = 1;
        }
        if ((KeyDat.key_short_value == TOUCH_KEY_TIME_ADD) || (KeyDat.key_short_value == TOUCH_KEY_TIME_DEC) ||
            (KeyDat.key_long_value == TOUCH_KEY_TIME_ADD) || (KeyDat.key_long_value == TOUCH_KEY_TIME_DEC) ||
            RunData.TOUCHkey_Finally_Time != 0) // todo:2023/12/14 add->添加判断条件
        {
            key_press = 1;//状态1是按下了
            if (RunData.TOUCHkey_Finally_Time)
            {
                // todo:2023/12/14 add->修改RunData.Timg的获取方式
                RunData.Timing = RunData.TOUCHkey_Finally_Time;
                if (RunData.Timing % 60 != 0)
                {
                    return;
                }
            }
            switch (RunData.Timing)
            {
            case 0:
                RunData.VoiceNum = continuous_oxygen_therapy;
                break; // 连续氧疗
            case 10:
                RunData.VoiceNum = ten_minutes;
                break; // 10分钟
            case 20:
                RunData.VoiceNum = twenty_minutes;
                break; // 20分钟
            case 30:
                RunData.VoiceNum = thirty_minutes;
                break; // 30分钟
            case 40:
                RunData.VoiceNum = forty_minutes;
                break; // 40分钟
            case 50:
                RunData.VoiceNum = fifty_minutes;
                break; // 50分钟
            case 60:
                RunData.VoiceNum = one_hour;
                break; // 1小时
            case 90:
                VoiceDelay.Voice_time = one_hour;
                break; // 1小时30分钟
            case 120:
                RunData.VoiceNum = two_hours;
                break; // 2小时
            case 150:
                VoiceDelay.Voice_time = two_hours;
                break; // 2小时30分钟
            case 180:
                RunData.VoiceNum = three_hours;
                break; // 3小时
            case 210:
                VoiceDelay.Voice_time = three_hours;
                break; // 3小时30分钟
            case 240:
                RunData.VoiceNum = four_hours;
                break; // 4小时
            case 270:
                VoiceDelay.Voice_time = four_hours;
                break; // 4小时30分钟
            case 300:
                RunData.VoiceNum = five_hours;
                break; // 5小时
            case 330:
                VoiceDelay.Voice_time = five_hours;
                break; // 5小时30分钟
            case 360:
                RunData.VoiceNum = six_hours;
                break; // 6小时
            case 390:
                VoiceDelay.Voice_time = six_hours;
                break; // 6小时30分钟
            case 420:
                RunData.VoiceNum = seven_hours;
                break; // 7小时
            case 450:
                VoiceDelay.Voice_time = seven_hours;
                break; // 7小时30分钟
            case 480:
                RunData.VoiceNum = eight_hours;
                break; // 8小时
            }
            RunData.TOUCHkey_Finally_Time = 0; // todo:2023/12/14 add->添加当播放完成后，长按最终时间清除
        }
        if (KeyDat.key_long_value == 0)
        {
            if (key_press == 1)
            {
                key_press = 2; // 状态2为松开状态
            }
        }
        // if ((EncoderData.Time < 100) || (KeyDat.key_val_x == TOUCH_KEY_FLOW_ADD) ||
        //     (KeyDat.key_val_x == TOUCH_KEY_FLOW_DEC))
        // {
        //			switch(RunData.FlowSet)
        //			{
        //				case 5:RunData.VoiceNum = half_a_litre;break;//0.5升
        //				case 10:RunData.VoiceNum = one_litre;break;//1升
        //				case 15:RunData.VoiceNum = one_and_a_half_litres;break;//1.5升
        //				case 20:RunData.VoiceNum = two_litres;break;//2升
        //				case 25:RunData.VoiceNum = two_and_a_half_litres;break;//2.5升
        //				case 30:RunData.VoiceNum = three_litres;break;//30升
        //				case 35:RunData.VoiceNum = three_and_a_half_litres;break;//3.5升
        //				case 40:RunData.VoiceNum = four_litres;break;//4升
        //				case 45:RunData.VoiceNum = four_and_a_half_litres;break;//4.5升
        //				case 50:RunData.VoiceNum = five_litres;break;//5升
        //				case 55:RunData.VoiceNum = five_and_a_half_litres;break;//5.5升
        //				case 60:RunData.VoiceNum = six_litres;break;//6升
        //				case 65:RunData.VoiceNum = six_and_a_half_litres;break;//6.5升
        //				case 70:RunData.VoiceNum = seven_litres;break;//7升
        //				case 75:RunData.VoiceNum = seven_and_a_half_litres;break;//7.5升
        //				case 80:RunData.VoiceNum = eight_litres;break;//8升
        //			}
        //        }
        //        if((RunData.SysSta == 0xE2) || (RunData.SysSta == 0xE3))//氧浓度低喇叭滴一声
        //        {
        //			RunData.VoiceNum = beep_once;
        //        }
    }
    //	else if((RunData.TimingFlag==0)&&RunData.StandbySta)
    //	{
    //		RunData.VoiceNum = intelligent_oxygen_therapy_end;//智能氧疗结束
    //	}
    //	else
    //	{
    //		RunData.VoiceNum = oxygen_therapy_time_up;//本次定时氧疗时间已到，谢谢使用
    //	}

    VoiceFilterMesh(); // 请清洁制氧机进气滤网
    SOS_Voice();       // 呼叫求助
    if ((KeyDat.key_short_value == TOUCH_KEY_VOICE) && RunData.StandbySta == 0)
    {
        RunData.VoiceEnable = !RunData.VoiceEnable;
        if (RunData.VoiceEnable)
            RunData.VoiceNum = intelligent_voice_on;//修改智能语音开启播报
        else
            RunData.VoiceNum = intelligent_voice_off;
        
        if(RunData.VoiceNum == intelligent_voice_off)
        {
            PlaySound(RunData.VoiceNum);
            RunData.VoiceNumLast = RunData.VoiceNum;
        }
    }

    static int Half_Hour_Flag = 0;
    if (RunData.VoiceEnable == 1)
    {
        //智能语音开启
        if (RunData.VoiceNumLast != RunData.VoiceNum && RunData.VoiceNum == intelligent_voice_on)
                RunData.VoiceCount++;
        if(RunData.VoiceCount > 200 && RunData.VoiceNum == intelligent_voice_on)
        {
            PlaySound(RunData.VoiceNum);
            RunData.VoiceCount = 0;
            RunData.VoiceNumLast = RunData.VoiceNum;
        }

        if (key_press == 2)
        {
            //整点报时
            if (RunData.VoiceNumLast != RunData.VoiceNum)
                RunData.VoiceCount++;
            if ((RunData.VoiceCount > 200 && RunData.Timing % 60 == 0 && RunData.Timing >= 0) || RunData.Timing == 30) // 延时500ms播放
            {
                printf("RunData.Timing = %d\r\n",RunData.Timing);
                printf("VoiceDelay.Voice_time = %d\r\n",VoiceDelay.Voice_time);
                VoiceCtr2(RunData.VoiceNum);
                RunData.VoiceCount = 0;
                RunData.VoiceNumLast = RunData.VoiceNum;
                key_press = 0;
            }

             // todo:2023/12/22 add:添加半点报时
            if (VoiceDelay.VoiceNumLast != VoiceDelay.Voice_time)
            {
                VoiceDelay.VoiceCount++;
            }
            if (VoiceDelay.VoiceCount > 200 && RunData.Timing % 60 == 30 && RunData.Timing != 30) // 延时500ms播放
            {
                u8 Flag = Voice_Half_Hour(VoiceDelay.Voice_time, &VoiceDelay.Voice_enable);
                if (Flag == 1)
                {
                    VoiceDelay.VoiceNumLast = VoiceDelay.Voice_time;
                    VoiceDelay.VoiceCount = 0;
                    key_press = 0;
                }
            }
        }
    }
}

//TODO：这个问题是在VoiceCtr2，会判断是否静音
void Alarm_Sound(u8 mode)
{
    if(mode == 1) AlarmSound.count = 0;
    if(RunData.AlarmSwitch == 1) 
    {
        AlarmSound.count = 0;//todo:修改按下时候立刻发声
	    AlarmSound.step = 0;
        return;
    }

    switch(AlarmSound.step)
    {
        case 0:if(AlarmSound.count>2000) {AlarmSound.count = 0; AlarmSound.step = 1;}break; 
		case 1:if(VoiceCtr3(high_priority_alarm) == 1) AlarmSound.step = 2; AlarmSound.count = 0; DelayMs(1); break;
        case 2:if(VoiceCtr3(0) == 1) AlarmSound.step = 3; AlarmSound.count = 0; DelayMs(1); break;
        case 3:if(AlarmSound.count>2000) {AlarmSound.count = 0; AlarmSound.step = 0;}break; 
    }
}

void StartUpVoice(void)
{
	static u8 i = 0;
	static u8 j = 0;
	switch (i)
	{
	case 0:
		// if (VoiceCtr2(welcome) == 1)
        // {
            //显示待机这块有问题
            Label_CloseAlarm(0,0);//关闭报警图标
            TM1629_Luminance(8);
            Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , 0);
            Display_Timing(0, 3,0);
            Display_Flow(0, 3 ,0);			 //
            Display_Concentration(0, 3); //
            Display_SysSta(0);
            Display_Anion(0);
            Display_FilterMesh(0);
            Display_Voice(1);
            Update_Display();	
            for(int cunt = 0 ; cunt < 3 ; cunt ++)
            {
                DelayMs(100);
                CLRWDT();  //清看门狗 
            }
            i = 1;
        //}
		break;
	case 1:
		if (VOICE_BUSY == 0)
			break; // 语音模块忙
		if ((RunData.StandbySta == 0) && (j == 0))
		{
			j = 1;
			VoiceCtr2(intelligent_oxygen_therapy_start); // 智能氧疗开始
			DelayMs(1);
		}
		if ((RunData.StandbySta == 1) && (j == 1))
		{
			j = 0;
			if (RunData.TimingVoiceFlag == 0)
				VoiceCtr2(intelligent_oxygen_therapy_end); // 智能氧疗结束
			else
				VoiceCtr2(oxygen_therapy_time_up); // 本次定时氧疗时间已到，谢谢使用
			DelayMs(1);
		}
	}
}
//低优先级报警
void Concentration_Low_Alarm(void)
{
    static u16 count = 0;
    static u16 last_syssta = 0;
    if(RunData.SysSta == 0xFF){
        last_syssta = 0;
    }
    if(RunData.Error_Delay_Time >= 3)
    {
        if(RunData.SysSta == 0xFF || RunData.SysSta == 0) 
        {
            count = 0;
            return;
        }
        if(last_syssta != RunData.SysSta) {
            count=1;//当有新的警告触发，计时清零，再响一次
        }
        last_syssta = RunData.SysSta;
        if(count==1) 
        {
            //BeepCtr2(2);
            VoiceCtr3(low1_priority_alarm);
        }
        if(count>200) 
            count=0;
        count++;
    }
}




