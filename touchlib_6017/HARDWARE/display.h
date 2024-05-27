#ifndef __DISPLAY_H
#define __DISPLAY_H 			   
#include "main.h"





void SEG0(u8 dat);
void SEG1(u8 dat);
void SEG2(u8 dat);
void SEG3(u8 dat);

void SEG4(u8 dat);
void SEG5(u8 dat);
void SEG6(u8 dat);
void SEG7(u8 dat);

void SEG8(u8 dat);
void SEG9(u8 dat);
void SEG10(u8 dat);
void SEG11(u8 dat);

void SEG12(u8 dat);
void SEG13(u8 dat);
void SEG14(u8 dat);
void SEG15(u8 dat);


void Display_Anion(u8 sta);//��������ʾ��0�رգ���֮��
void Label_Concentration(u8 sta);//��Ũ�ȱ�ǩ��0�رգ���֮��
void Label_Flow(u8 sta);//��������ǩ��0�رգ���֮��
void Label_AddUp(u8 sta);//�ۼƱ�ǩ��0�رգ���֮��
void Label_CloseAlarm(u8 sta);//�رձ�����ǩ��0�رգ���֮��
void Label_h(u8 sta);//h��λ��ǩ��0�رգ���֮��
void Label_L_min(u8 sta);//L/min��ǩ��0�رգ���֮��
void Label_Timing(u8 sta);//��ʱ��ǩ��0�رգ���֮��
void Label_Running(u8 sta);//���б�ǩ��0�رգ���֮��
void Label_Min(u8 sta);//min��ǩ��0�رգ���֮��
void Display_SysSta(u8 sta);//ϵͳ״ָ̬ʾ��,һ��Ҫ�����ۼ�ʱ����ʾ����
void Display_Voice(u8 sta);//����������0�رգ���֮��
void Display_FilterMesh(u8 sta);//���������0�رգ���֮��
void Label_Percent(u8 sta);	//����%��ǩ��0�رգ���֮��

void Display_Timing(u32 sum, u8 mode);
void Display_Flow(u16 sum,u8 mode);
void Display_CumulativeTime(u32 sum, u8 mode);
void Display_SysSta(u8 sta);
void Display_Voice(u8 sta);
void Display_FilterMesh(u8 sta);
void Display_Anion(u8 sta);
void Display_Concentration(u16 sum,u8 mode);
#endif





























