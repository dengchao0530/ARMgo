#include "main.h"
#include "touchkey.h"
#include "irkey.h"
#include "setsysdata.h"
KEY_DATA KeyDat;
void TouchKey_Init(void)
{
//	u8	i;
//	P_SW2 |= 0x80;	//�������XSFR(��չ���⹦�ܼĴ���)
//	P1M0 &= ~(1<<3);
//	P1M1 |=  (1<<3);
//	
//	P1M0 &= ~(1<<5);
//	P1M1 |=  (1<<5);
//	
//	P1M0 &= ~(1<<6);
//	P1M1 |=  (1<<6);
//	
//	P1M0 &= ~(1<<7);
//	P1M1 |=  (1<<7);
//	
////	TSCHEN = 0xffff;	//TK0~TK15
////	TSCHEN1 = 0xFE;		//TK0~TK7
////	TSCHEN2 = 0xff;		//TK8~TK15
//	
//	TSCHEN1 |=  (1<<3);
//	TSCHEN1 |=  (1<<5);
//	TSCHEN1 |=  (1<<6);
//	TSCHEN1 |=  (1<<7);
//	
//	TSCFG1  = (7<<4) + 6;	//���ص��ݹ���Ƶ�� = fosc/(2*(TSCFG1[6:4]+1)), �ŵ�ʱ��(ϵͳʱ��������) 0(125) 1(250) 2(500) 3(1000) 4(2000) 5(2500) 6(5000) 7(7500) ��С3
//	TSCFG2  = 1;		//���ô����������������ڲ��ο���ѹ(AVCC�ķ�ѹ��), 0(1/4)  1(1/2)  2(5/8)  3(3/4)
//	TSCTRL = (1<<7) + (1<<6) +3;	//��ʼɨ��, B7: TSGO,  B6: SINGLE,  B5: TSWAIT, B4: TSWUCS, B3: TSDCEN, B2: TSWUEN, B1 B0: TSSAMP
//	TSRT = 0x00;		//û��LED��ʱɨ��
//	IE2 |= 0x80;		//�����������ж�
//	EA = 1;
//	delay_ms(100);
//	Get_TS_Zero();
	
}
extern unsigned long Sav_single[2];
u16 TouchKeyValue(void)	
{
	u16 ret = 0;
	if(Engineering_Pattern.Mode == 1)
	{
		switch(Sav_single[0])
		{
			case 1: ret = TOUCH_KEY_NULL; 	break;
			case 2: ret = TOUCH_KEY_ALARM; 		break;
			case 4: ret = TOUCH_KEY_NULL; 		break;
			case 8: ret = TOUCH_KEY_STANDBY; 	break;
			case 12: ret = TOUCH_KEY_NULL; 		break;
			case 3: ret = TOUCH_KEY_NULL; break;
			default:ret = 0; 					break;
		}
	}
	else
	{
		switch(Sav_single[0]) 
		{
			case 1: ret = TOUCH_KEY_STANDBY; 	break;
			case 2: ret = TOUCH_KEY_TIME_ADD; 		break;
			case 4: ret = TOUCH_KEY_ALARM; 		break;
			case 8: ret = TOUCH_KEY_VOICE; 	break;
			case 12: ret = TOUCH_KEY_SET; 		break;
			case 3: ret = TOUCH_KEY_CLEAR_TIME; break;
			default:ret = 0; 					break;
		}
	}
	return ret;	
//return Sav_single[0];	
}

void key_scan(void)
{
	static u16  key_;
	u8 i=0;
	
	KeyDat.key_value = TouchKeyValue();
	if(KeyDat.key_value == 0) KeyDat.key_value = IR_KeyReadCtr();
	//if(KeyDat.key_value == 0) KeyDat.key_value = TouchKeyValue();
	
	if(KeyDat.key_value == 0)
	{
		if(KeyDat.key_tim>0&&KeyDat.key_tim < 1000)
		{
			KeyDat.key_short_value = key_;
		}
		else
			KeyDat.key_short_value = 0;
		
			KeyDat.key_val_x = 0;
			KeyDat.key_long_value = 0;
			KeyDat.key_tim = 0;
	}
    else
		i++;
	if(KeyDat.key_tim > 10) 
		KeyDat.key_val_x = KeyDat.key_value;
	
	if(KeyDat.key_tim >= 2000)
	{
		KeyDat.key_tim = 2000;
		KeyDat.key_long_value = KeyDat.key_value;
	}
	key_ = KeyDat.key_value;

//	if(KeyDat.key_short_value)  u1_printf("key_short:%d\r\n",KeyDat.key_short_value);   
//	if(KeyDat.key_long_value) u1_printf("key_long:%d\r\n",KeyDat.key_long_value);
}


