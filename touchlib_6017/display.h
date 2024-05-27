#ifndef __DISPLAY_H
#define __DISPLAY_H 			   
#include "main.h"
#include "setsysdata.h"


void SEG0(u8 dat);
void SEG1(u8 dat, u8 enable);
void SEG2(u8 dat, u8 enable);
void SEG3(u8 dat, u8 enable);

void SEG4(u8 dat, u8 enable);
void SEG5(u8 dat, u8 enable);
void SEG6(u8 dat, u8 enable);
void SEG7(u8 dat , u8 enable);

void SEG8(u8 dat, u8 enable);
void SEG9(u8 dat, u8 enable);
void SEG10(u8 dat);
void SEG11(u8 dat);

void SEG12(u8 dat);
void SEG13(u8 dat);
void SEG14(u8 dat);
void SEG15(u8 dat);

void SEG14(u8 dat);


void Display_Anion(u8 sta);//��������ʾ��0�رգ���֮��
void Label_Concentration(u8 sta);//��Ũ�ȱ�ǩ��0�رգ���֮��
void Label_Flow(u8 sta);//��������ǩ��0�رգ���֮��
void Label_AddUp(u8 sta);//�ۼƱ�ǩ��0�رգ���֮��
void Label_CloseAlarm(u8 sta , u8 status);//�رձ�����ǩ��0�رգ���֮��
void Label_h(u8 sta);//h��λ��ǩ��0�رգ���֮��
void Label_L_min(u8 sta);//L/min��ǩ��0�رգ���֮��
void Label_Timing(u8 sta, u8 enable);//��ʱ��ǩ��0�رգ���֮��
void Label_Running(u8 sta, u8 enable);//���б�ǩ��0�رգ���֮��
void Label_Min(u8 sta, u8 enable);//min��ǩ��0�رգ���֮��
void Display_SysSta(u8 sta);//ϵͳ״ָ̬ʾ��,һ��Ҫ�����ۼ�ʱ����ʾ����
void Display_Voice(u8 sta);//����������0�رգ���֮��
void Display_FilterMesh(u8 sta);//���������0�رգ���֮��
void Label_Percent(u8 sta);	//����%��ǩ��0�رգ���֮��

void Display_Timing(u32 sum, u8 mode , u8 enable);
void Display_Flow(u16 sum,u8 mode , u8 enable);
void Display_CumulativeTime(u32 sum, u8 mode , u8 enable);
void Display_SysSta(u8 sta);
void Display_Voice(u8 sta);
void Display_FilterMesh(u8 sta);
void Display_Anion(u8 sta);
void Display_Concentration(u16 sum,u8 mode);
void Display_hour(u8 sta);
void Display_Line(u8 sta);


void Engineering_Flow_Compensation_display1(u8 a);
extern engineering_pattern Engineering_Pattern;
#endif





























