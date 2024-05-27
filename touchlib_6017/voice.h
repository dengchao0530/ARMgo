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

//��Ϊ��㱨ʱʹ��
typedef struct
{
	u16 Voice_Delay;    //��㱨ʱ����ʱʹ�ã�������������ƴ��ʹ�õ�
    u16 VoiceCount;     //������
    u8 Voice_Delay_Flag;//��ʱ��ʼ��־��1��ʼ ��
    u8 Voice_time;      //��ʱʱ��
    u8 VoiceNumLast;    //���һ������
    u8 Voice_enable;
}VOICE_DELAY;



typedef enum
{
	NULL1 = 0,    
    NULL2 = 1,    
    welcome = 2,                          //"��ӭʹ�ã��뱣��ʪ�������"
    intelligent_oxygen_therapy_start = 3, //"�������ƿ�ʼ"
    intelligent_oxygen_therapy_end = 4,   //"�������ƽ���"
    intelligent_voice_on = 5,             //"������������"
    intelligent_voice_off = 6,            //"���������ر�"
    negative_ion_purification_on = 7,     //"�����Ӿ�������"
    negative_ion_purification_off = 8,    //"�����Ӿ����ر�"
    atomization_function_on = 9,          //"�����ܿ���"
    atomization_function_off = 10,         //"�����ܹر�"
    alarm_function_on = 11,                //"�������ܿ���"
    alarm_function_off = 12,               //"�������ܹر�"
    ten_minutes = 13,                      //"ʮ����"
    twenty_minutes = 14,                   //"��ʮ����"
    thirty_minutes = 15,                   //"��ʮ����"
    forty_minutes = 16,                    //"��ʮ����"
    fifty_minutes = 17,                    //" ��ʮ����"
    one_hour = 18,                         //"һСʱ"
    two_hours = 19,                        //"��Сʱ"
    three_hours = 20,                      //"��Сʱ"
    four_hours = 21,                       //"��Сʱ"
    five_hours = 22,                       //"��Сʱ"
    six_hours = 23,                        //"��Сʱ"
    seven_hours = 24,                      //"��Сʱ"
    eight_hours = 25,                      //"��Сʱ"
    continuous_oxygen_therapy = 26,        //"��������"
    oxygen_therapy_time_up = 27,           //"���ζ�ʱ����ʱ���ѵ���ллʹ��"
    one_litre = 28,                        //"һ��"
    two_litres = 29,                       //"����"
    three_litres = 30,                     //"����"
    four_litres = 31,                      //"����"
    five_litres = 32,                      //"����"
    six_litres = 33,                       //"����"
    clean_oxygen_machine_filter = 34,      //"�������������������"
    is_anyone_there = 35,                  //"����������Ҫ����"
    beep_three_times = 36,                 //"�εε�����"
    beep_once = 37,                        //"��һ��"
    half_a_litre = 38,                     //"�������"
    one_and_a_half_litres = 39,            //"һ������"
    two_and_a_half_litres = 40,            //"��������"
    three_and_a_half_litres = 41,          //"��������"
    four_and_a_half_litres = 42,           //"�ĵ�����"
    five_and_a_half_litres = 43,           //"�������"
    six_and_a_half_litres = 44,            //"��������"
    seven_litres = 45,                     //"����"
    seven_and_a_half_litres = 46,          //"�ߵ�����"
    eight_litres = 47,                     //"����"
    beep_three_times_30 = 48,              //"�εε�"������ �ٷ�֮30����
    beep_three_times_50 = 49,              //"�εε�"������ �ٷ�֮50����
    beep_once_30 = 50,                     //"��"��һ�� �ٷ�֮30����
    beep_once_50 = 51,                     //"��"��һ�� �ٷ�֮50����
    high_priority_alarm = 52,                   //"��� ��"
    low2_priority_alarm = 53,                   //"��"
    medium_priority_alarm = 54,                 //"���
    low1_priority_alarm = 55,                   //"�"
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





























