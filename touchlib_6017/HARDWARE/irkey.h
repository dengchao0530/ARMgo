#ifndef __IRKEY_H
#define __IRKEY_H 			   
#include "main.h"
#define IR_SUM 3
#define IRONETIME 1132


#define IR_KEY1_STANDBY 		0xff00c53a
#define IR_KEY2_TIME_ADD		0xff00659a
#define IR_KEY3_TIME_DEC		0xff00e718
#define IR_KEY4_VOICE				0xff00e51a
#define IR_KEY5_FLOW				0xff008778
#define IR_KEY6_SOS					0xff006798
#define IR_KEY7_ANION				0xff0047b8




typedef struct{
u32 count;	
u32 Value;
u16 gao,di;//��ʵ��ߵ�ƽʱ�䣬�͵�ƽʱ��
//02�յ�1����0
//01�յ�������
u8 Sta;
u8 get_w;//���ܵ��ڼ�������λ
u32 Dat;//ֵ����
u16	RmtCnt;//��������������
u8 TouchChar[3];
u8 StudyCode[IR_SUM][3];

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
#endif





























