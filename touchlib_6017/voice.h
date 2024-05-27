#ifndef __VOICE_H
#define __VOICE_H 			   
#include "main.h"

#define VOICE_BUSY PC6
#define VOICE_RST	LATDbits.LATD0
#define VOICE_DATA  LATCbits.LATC7
typedef struct
{
	u16 count;
    u8 step;
    
}ALARM_SOUND;

//作为半点报时使用
typedef struct
{
	u16 Voice_Delay;    //半点报时的延时使用，用于两天语言拼接使用的
    u16 VoiceCount;     //计数器
    u8 Voice_Delay_Flag;//计时开始标志，1开始 。
    u8 Voice_time;      //计时时间
    u8 VoiceNumLast;    //最后一条语音
    u8 Voice_enable;
}VOICE_DELAY;



typedef enum
{
	NULL1 = 0,    
    NULL2 = 1,    
    welcome = 2,                          //"欢迎使用，请保持湿化杯清洁"
    intelligent_oxygen_therapy_start = 3, //"智能氧疗开始"
    intelligent_oxygen_therapy_end = 4,   //"智能氧疗结束"
    intelligent_voice_on = 5,             //"智能语音开启"
    intelligent_voice_off = 6,            //"智能语音关闭"
    negative_ion_purification_on = 7,     //"负离子净化开启"
    negative_ion_purification_off = 8,    //"负离子净化关闭"
    atomization_function_on = 9,          //"雾化功能开启"
    atomization_function_off = 10,         //"雾化功能关闭"
    alarm_function_on = 11,                //"报警功能开启"
    alarm_function_off = 12,               //"报警功能关闭"
    ten_minutes = 13,                      //"十分钟"
    twenty_minutes = 14,                   //"二十分钟"
    thirty_minutes = 15,                   //"三十分钟"
    forty_minutes = 16,                    //"四十分钟"
    fifty_minutes = 17,                    //" 五十分钟"
    one_hour = 18,                         //"一小时"
    two_hours = 19,                        //"两小时"
    three_hours = 20,                      //"三小时"
    four_hours = 21,                       //"四小时"
    five_hours = 22,                       //"五小时"
    six_hours = 23,                        //"六小时"
    seven_hours = 24,                      //"七小时"
    eight_hours = 25,                      //"八小时"
    continuous_oxygen_therapy = 26,        //"连续氧疗"
    oxygen_therapy_time_up = 27,           //"本次定时氧疗时间已到，谢谢使用"
    one_litre = 28,                        //"一升"
    two_litres = 29,                       //"二升"
    three_litres = 30,                     //"三升"
    four_litres = 31,                      //"四升"
    five_litres = 32,                      //"五升"
    six_litres = 33,                       //"六升"
    clean_oxygen_machine_filter = 34,      //"请清洁制氧机进气滤网"
    is_anyone_there = 35,                  //"有人吗，我需要帮助"
    beep_three_times = 36,                 //"滴滴滴三声"
    beep_once = 37,                        //"滴一声"
    half_a_litre = 38,                     //"零点五升"
    one_and_a_half_litres = 39,            //"一点五升"
    two_and_a_half_litres = 40,            //"二点五升"
    three_and_a_half_litres = 41,          //"三点五升"
    four_and_a_half_litres = 42,           //"四点五升"
    five_and_a_half_litres = 43,           //"五点五升"
    six_and_a_half_litres = 44,            //"六点五升"
    seven_litres = 45,                     //"七升"
    seven_and_a_half_litres = 46,          //"七点五升"
    eight_litres = 47,                     //"八升"
    beep_three_times_30 = 48,              //"滴滴滴"响三声 百分之30音量
    beep_three_times_50 = 49,              //"滴滴滴"响三声 百分之50音量
    beep_once_30 = 50,                     //"滴"响一声 百分之30音量
    beep_once_50 = 51,                     //"滴"响一声 百分之50音量
    high_priority_alarm = 52,                   //"嘟嘟嘟 嘟嘟"
    low2_priority_alarm = 53,                   //"嘟嘟"
    medium_priority_alarm = 54,                 //"嘟嘟嘟
    low1_priority_alarm = 55,                   //"嘟"
} VOICE_DATA_ENUM;

extern ALARM_SOUND AlarmSound;
void Concentration_Low_Alarm(void);
void Voice_Init(void);
u8 VoiceCtr(u16 dat);
void VoiceDrive(void);
void Alarm_Sound(u8 mode);
void StartUpVoice(void);
u8 VoiceCtr2(u16 dat);
u8 PlaySound(uint8_t data);
u8 VoiceCtr3(u16 dat);

u8 Voice_Half_Hour(u8 Half_Hour , u8 *Voice_Enable);
extern VOICE_DELAY VoiceDelay;
#endif





























