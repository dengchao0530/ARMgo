#ifndef __IRKEY_H
#define __IRKEY_H 			   
#include "main.h"

#define IR_IN_PIN PD4

#define IR_SUM 3
#define IRONETIME 1132


#if !Ikey_Debug_Mode
#define IR_KEY_STANDBY 		0x847BD6E3
#define IR_KEY_TIME_ADD		0x847BB686
#define IR_KEY_TIME_DEC		0xff00e718
#define IR_KEY_VOICE		0x847BABE6
#define IR_KEY_FLOW_ADD		0x847BDA40
#define IR_KEY_FLOW_DEC		0x847B764C
#define IR_KEY_ALARM 	 	0x847B2B6A
#define IR_KEY_SOS			0x847B96A5
#define IR_KEY_ANION		0xff0047b8
#endif

#if Ikey_Debug_Mode
#define IR_KEY_STANDBY 		0xA05F
#define IR_KEY_TIME_ADD		0xB04F
#define IR_KEY_TIME_DEC		0xff00e718
#define IR_KEY_VOICE		0x847BABE6
#define IR_KEY_FLOW_ADD		0x847BDA40
#define IR_KEY_FLOW_DEC		0x847B764C
#define IR_KEY_ALARM 	 	0x847B2B6A
#define IR_KEY_SOS			0x847B96A5
#define IR_KEY_ANION		0xff0047b8
#endif

typedef struct{

u32 Value;
u32 gao,di;//其实码高电平时间，低电平时间
//02收到1或者0
//01收到引导码
u8 Sta;
u8 get_w;//接受到第几个数据位
u32 Dat;//值缓存
u16	RmtCnt;//按键次数计数器
u8 IRChar[8];
u8 IRDataCnt;//数据计数
//u8 StudyCode[IR_SUM][3];

}IR_DATA;


typedef struct{

	u16 key_tim;				//按下时间计时；
//	u8 key_flag;			//按键标志
	u16 key_long_value;	//长按键值
	u16 key_short_value;	//短按键值
	u16 key_value;				//键值
	u16 key_val_x;				//按下消抖
}IRKEY_DATA;

extern IRKEY_DATA IRKeyDat;

extern IR_DATA IRData;





u8 Remote_Scan(void);
void IR_Key_Init(void);
void IR_IN_DATA(void);
u16 IR_KeyReadCtr(void);
void IR_MoreCtr(void);//红外流量控制和求救开关
u8 GetIRCount(void);


//todo:->2023/12/14 add:添加获取工程模式遥控器上的按键  1->开关   2->定时   3->暖风    4->冷风
u16 Get_Engineering_KeyValue();
#endif





























