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
u32 gao,di;//��ʵ��ߵ�ƽʱ�䣬�͵�ƽʱ��
//02�յ�1����0
//01�յ�������
u8 Sta;
u8 get_w;//���ܵ��ڼ�������λ
u32 Dat;//ֵ����
u16	RmtCnt;//��������������
u8 IRChar[8];
u8 IRDataCnt;//���ݼ���
//u8 StudyCode[IR_SUM][3];

}IR_DATA;


typedef struct{

	u16 key_tim;				//����ʱ���ʱ��
//	u8 key_flag;			//������־
	u16 key_long_value;	//������ֵ
	u16 key_short_value;	//�̰���ֵ
	u16 key_value;				//��ֵ
	u16 key_val_x;				//��������
}IRKEY_DATA;

extern IRKEY_DATA IRKeyDat;

extern IR_DATA IRData;





u8 Remote_Scan(void);
void IR_Key_Init(void);
void IR_IN_DATA(void);
u16 IR_KeyReadCtr(void);
void IR_MoreCtr(void);//�����������ƺ���ȿ���
u8 GetIRCount(void);


//todo:->2023/12/14 add:��ӻ�ȡ����ģʽң�����ϵİ���  1->����   2->��ʱ   3->ů��    4->���
u16 Get_Engineering_KeyValue();
#endif





























