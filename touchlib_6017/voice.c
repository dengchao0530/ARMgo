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
	TRISC |= (1<<6);	//PC6����ģʽ
    WPDCbits.WPDC6 = 1;		// PC6 -> ���� 

    TRISD &= ~(1<<0);	//PD0���ģʽ
    TRISC &= ~(1<<7);	//PC7���ģʽ
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

//��㱨ʱ��������һ�������Ǳ�ʱʱ�䣬�ڶ��������Ǳ�ʱʹ�ܣ�ע�����ʹ����Ϊ�ˣ���whileѭ���������㱨ʱ����������һ�Σ�ͬʱ���Լ�ⷵ�ص�ֵ�ж��Ƿ�ִ�����
u8 Voice_Half_Hour(u8 Half_Hour, u8 *Voice_Enable)
{
    if (*Voice_Enable == 1)//&& VoiceDelay.Voice_Delay == 0)
    {
        *Voice_Enable = 2; // ʹ�ý����������� Voice_Enable ָ���ֵΪ 2
        VoiceCtr2(Half_Hour);
        VoiceDelay.Voice_Delay_Flag = 1;
    }

    if (VoiceDelay.Voice_Delay == 700)
    {
        u8 i = VoiceCtr2(thirty_minutes); // ���һ��Ҫ��PlaySound�������������޸�
        if(i == 1)
        {
            VoiceDelay.Voice_Delay_Flag = 0;
            VoiceDelay.Voice_Delay = 0;
            *Voice_Enable = 1;
        }
    }

    return *Voice_Enable; // ���� Voice_Enable ָ���ֵ
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
//			RunData.VoiceNum = clean_oxygen_machine_filter;//�������������������
//			RunData.CumulativeTime++;//��һ��ֹ�ظ�����
		}
		else if(count<1500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//�������������������
		}      
		else if(count<3000)
		{
			RunData.VoiceNum = NULL2;
		}
		else if(count<4500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//�������������������
		}
		else if(count<6000)
		{
			RunData.VoiceNum = NULL2;
		}
		else if(count<7500)
		{
			RunData.VoiceNum = clean_oxygen_machine_filter;//�������������������
		}
		else if(count<9000)
		{
			RunData.VoiceNum = NULL2;//�������������������
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
			RunData.VoiceNum = is_anyone_there;//����������Ҫ����
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
    static u8 key_press = 0; // ������⣬��Ҫ�ǰ������ºͰ����ɿ�����Ҫ�޸�������ʱͣ�������
    // static u8 VoiceEnable = 1;
    // static u8 StandbyStaFlag = 0;
    // static u8 VoiceNumLast = 0;
    // static u16 count = 0;
    //if (sUsart2.LinkSta == 0) return;//ͨ��δ����
    if (RunData.StandbySta == 1)
        RunData.StandbyStaFlag = 0;
    if (RunData.StandbySta == 0)
    {
        if (RunData.StandbyStaFlag == 0) // ִֻ��һ��
        {
            // RunData.VoiceNum = intelligent_oxygen_therapy_start;//�������ƿ�ʼ
            RunData.StandbyStaFlag = 1;
        }
        if ((KeyDat.key_short_value == TOUCH_KEY_TIME_ADD) || (KeyDat.key_short_value == TOUCH_KEY_TIME_DEC) ||
            (KeyDat.key_long_value == TOUCH_KEY_TIME_ADD) || (KeyDat.key_long_value == TOUCH_KEY_TIME_DEC) ||
            RunData.TOUCHkey_Finally_Time != 0) // todo:2023/12/14 add->����ж�����
        {
            key_press = 1;//״̬1�ǰ�����
            if (RunData.TOUCHkey_Finally_Time)
            {
                // todo:2023/12/14 add->�޸�RunData.Timg�Ļ�ȡ��ʽ
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
                break; // ��������
            case 10:
                RunData.VoiceNum = ten_minutes;
                break; // 10����
            case 20:
                RunData.VoiceNum = twenty_minutes;
                break; // 20����
            case 30:
                RunData.VoiceNum = thirty_minutes;
                break; // 30����
            case 40:
                RunData.VoiceNum = forty_minutes;
                break; // 40����
            case 50:
                RunData.VoiceNum = fifty_minutes;
                break; // 50����
            case 60:
                RunData.VoiceNum = one_hour;
                break; // 1Сʱ
            case 90:
                VoiceDelay.Voice_time = one_hour;
                break; // 1Сʱ30����
            case 120:
                RunData.VoiceNum = two_hours;
                break; // 2Сʱ
            case 150:
                VoiceDelay.Voice_time = two_hours;
                break; // 2Сʱ30����
            case 180:
                RunData.VoiceNum = three_hours;
                break; // 3Сʱ
            case 210:
                VoiceDelay.Voice_time = three_hours;
                break; // 3Сʱ30����
            case 240:
                RunData.VoiceNum = four_hours;
                break; // 4Сʱ
            case 270:
                VoiceDelay.Voice_time = four_hours;
                break; // 4Сʱ30����
            case 300:
                RunData.VoiceNum = five_hours;
                break; // 5Сʱ
            case 330:
                VoiceDelay.Voice_time = five_hours;
                break; // 5Сʱ30����
            case 360:
                RunData.VoiceNum = six_hours;
                break; // 6Сʱ
            case 390:
                VoiceDelay.Voice_time = six_hours;
                break; // 6Сʱ30����
            case 420:
                RunData.VoiceNum = seven_hours;
                break; // 7Сʱ
            case 450:
                VoiceDelay.Voice_time = seven_hours;
                break; // 7Сʱ30����
            case 480:
                RunData.VoiceNum = eight_hours;
                break; // 8Сʱ
            }
            RunData.TOUCHkey_Finally_Time = 0; // todo:2023/12/14 add->��ӵ�������ɺ󣬳�������ʱ�����
        }
        if (KeyDat.key_long_value == 0)
        {
            if (key_press == 1)
            {
                key_press = 2; // ״̬2Ϊ�ɿ�״̬
            }
        }
        // if ((EncoderData.Time < 100) || (KeyDat.key_val_x == TOUCH_KEY_FLOW_ADD) ||
        //     (KeyDat.key_val_x == TOUCH_KEY_FLOW_DEC))
        // {
        //			switch(RunData.FlowSet)
        //			{
        //				case 5:RunData.VoiceNum = half_a_litre;break;//0.5��
        //				case 10:RunData.VoiceNum = one_litre;break;//1��
        //				case 15:RunData.VoiceNum = one_and_a_half_litres;break;//1.5��
        //				case 20:RunData.VoiceNum = two_litres;break;//2��
        //				case 25:RunData.VoiceNum = two_and_a_half_litres;break;//2.5��
        //				case 30:RunData.VoiceNum = three_litres;break;//30��
        //				case 35:RunData.VoiceNum = three_and_a_half_litres;break;//3.5��
        //				case 40:RunData.VoiceNum = four_litres;break;//4��
        //				case 45:RunData.VoiceNum = four_and_a_half_litres;break;//4.5��
        //				case 50:RunData.VoiceNum = five_litres;break;//5��
        //				case 55:RunData.VoiceNum = five_and_a_half_litres;break;//5.5��
        //				case 60:RunData.VoiceNum = six_litres;break;//6��
        //				case 65:RunData.VoiceNum = six_and_a_half_litres;break;//6.5��
        //				case 70:RunData.VoiceNum = seven_litres;break;//7��
        //				case 75:RunData.VoiceNum = seven_and_a_half_litres;break;//7.5��
        //				case 80:RunData.VoiceNum = eight_litres;break;//8��
        //			}
        //        }
        //        if((RunData.SysSta == 0xE2) || (RunData.SysSta == 0xE3))//��Ũ�ȵ����ȵ�һ��
        //        {
        //			RunData.VoiceNum = beep_once;
        //        }
    }
    //	else if((RunData.TimingFlag==0)&&RunData.StandbySta)
    //	{
    //		RunData.VoiceNum = intelligent_oxygen_therapy_end;//�������ƽ���
    //	}
    //	else
    //	{
    //		RunData.VoiceNum = oxygen_therapy_time_up;//���ζ�ʱ����ʱ���ѵ���ллʹ��
    //	}

    VoiceFilterMesh(); // �������������������
    SOS_Voice();       // ��������
    if ((KeyDat.key_short_value == TOUCH_KEY_VOICE) && RunData.StandbySta == 0)
    {
        RunData.VoiceEnable = !RunData.VoiceEnable;
        if (RunData.VoiceEnable)
            RunData.VoiceNum = intelligent_voice_on;//�޸�����������������
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
        //������������
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
            //���㱨ʱ
            if (RunData.VoiceNumLast != RunData.VoiceNum)
                RunData.VoiceCount++;
            if ((RunData.VoiceCount > 200 && RunData.Timing % 60 == 0 && RunData.Timing >= 0) || RunData.Timing == 30) // ��ʱ500ms����
            {
                printf("RunData.Timing = %d\r\n",RunData.Timing);
                printf("VoiceDelay.Voice_time = %d\r\n",VoiceDelay.Voice_time);
                VoiceCtr2(RunData.VoiceNum);
                RunData.VoiceCount = 0;
                RunData.VoiceNumLast = RunData.VoiceNum;
                key_press = 0;
            }

             // todo:2023/12/22 add:��Ӱ�㱨ʱ
            if (VoiceDelay.VoiceNumLast != VoiceDelay.Voice_time)
            {
                VoiceDelay.VoiceCount++;
            }
            if (VoiceDelay.VoiceCount > 200 && RunData.Timing % 60 == 30 && RunData.Timing != 30) // ��ʱ500ms����
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

//TODO�������������VoiceCtr2�����ж��Ƿ���
void Alarm_Sound(u8 mode)
{
    if(mode == 1) AlarmSound.count = 0;
    if(RunData.AlarmSwitch == 1) 
    {
        AlarmSound.count = 0;//todo:�޸İ���ʱ�����̷���
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
            //��ʾ�������������
            Label_CloseAlarm(0,0);//�رձ���ͼ��
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
                CLRWDT();  //�忴�Ź� 
            }
            i = 1;
        //}
		break;
	case 1:
		if (VOICE_BUSY == 0)
			break; // ����ģ��æ
		if ((RunData.StandbySta == 0) && (j == 0))
		{
			j = 1;
			VoiceCtr2(intelligent_oxygen_therapy_start); // �������ƿ�ʼ
			DelayMs(1);
		}
		if ((RunData.StandbySta == 1) && (j == 1))
		{
			j = 0;
			if (RunData.TimingVoiceFlag == 0)
				VoiceCtr2(intelligent_oxygen_therapy_end); // �������ƽ���
			else
				VoiceCtr2(oxygen_therapy_time_up); // ���ζ�ʱ����ʱ���ѵ���ллʹ��
			DelayMs(1);
		}
	}
}
//�����ȼ�����
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
            count=1;//�����µľ��津������ʱ���㣬����һ��
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




