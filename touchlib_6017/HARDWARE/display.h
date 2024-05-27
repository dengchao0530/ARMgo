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


void Display_Anion(u8 sta);//负离子显示，0关闭，反之打开
void Label_Concentration(u8 sta);//氧浓度标签，0关闭，反之打开
void Label_Flow(u8 sta);//氧流量标签，0关闭，反之打开
void Label_AddUp(u8 sta);//累计标签，0关闭，反之打开
void Label_CloseAlarm(u8 sta);//关闭报警标签，0关闭，反之打开
void Label_h(u8 sta);//h单位标签，0关闭，反之打开
void Label_L_min(u8 sta);//L/min标签，0关闭，反之打开
void Label_Timing(u8 sta);//定时标签，0关闭，反之打开
void Label_Running(u8 sta);//运行标签，0关闭，反之打开
void Label_Min(u8 sta);//min标签，0关闭，反之打开
void Display_SysSta(u8 sta);//系统状态指示灯,一定要放在累计时间显示后面
void Display_Voice(u8 sta);//智能语音，0关闭，反之打开
void Display_FilterMesh(u8 sta);//清洁滤网，0关闭，反之打开
void Label_Percent(u8 sta);	//氧流%标签，0关闭，反之打开

void Display_Timing(u32 sum, u8 mode);
void Display_Flow(u16 sum,u8 mode);
void Display_CumulativeTime(u32 sum, u8 mode);
void Display_SysSta(u8 sta);
void Display_Voice(u8 sta);
void Display_FilterMesh(u8 sta);
void Display_Anion(u8 sta);
void Display_Concentration(u16 sum,u8 mode);
#endif





























