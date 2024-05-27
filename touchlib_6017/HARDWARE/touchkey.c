#include "main.h"
#include "touchkey.h"
#include "uart1.h"
#include "irkey.h"


#define KEY_NUM 4


#define TK_PRESS 200

u16	xdata TK_cnt[KEY_NUM];	// ������ֵ
u16	xdata TK_zero[KEY_NUM];	// 0����� 
int	xdata TK_adc_f[KEY_NUM];	// �˲������ֵ
KEY_DATA KeyDat;


void Get_TS_Zero(void)
{
	u8 i;
	for(i=0; i<KEY_NUM; i++)		TK_zero[i] = TK_cnt[i];	//����0��
}
void TouchKey_Init(void)
{
//	u8	i;

	P_SW2 |= 0x80;	//�������XSFR(��չ���⹦�ܼĴ���)
	P1M0 &= ~(1<<3);
	P1M1 |=  (1<<3);
	
	P1M0 &= ~(1<<5);
	P1M1 |=  (1<<5);
	
	P1M0 &= ~(1<<6);
	P1M1 |=  (1<<6);
	
	P1M0 &= ~(1<<7);
	P1M1 |=  (1<<7);
	

//	TSCHEN = 0xffff;	//TK0~TK15
//	TSCHEN1 = 0xFE;		//TK0~TK7
//	TSCHEN2 = 0xff;		//TK8~TK15
	
	TSCHEN1 |=  (1<<3);
	TSCHEN1 |=  (1<<5);
	TSCHEN1 |=  (1<<6);
	TSCHEN1 |=  (1<<7);
	
	TSCFG1  = (7<<4) + 6;	//���ص��ݹ���Ƶ�� = fosc/(2*(TSCFG1[6:4]+1)), �ŵ�ʱ��(ϵͳʱ��������) 0(125) 1(250) 2(500) 3(1000) 4(2000) 5(2500) 6(5000) 7(7500) ��С3
	TSCFG2  = 1;		//���ô����������������ڲ��ο���ѹ(AVCC�ķ�ѹ��), 0(1/4)  1(1/2)  2(5/8)  3(3/4)
	TSCTRL = (1<<7) + (1<<6) +3;	//��ʼɨ��, B7: TSGO,  B6: SINGLE,  B5: TSWAIT, B4: TSWUCS, B3: TSDCEN, B2: TSWUEN, B1 B0: TSSAMP
	TSRT = 0x00;		//û��LED��ʱɨ��
	IE2 |= 0x80;		//�����������ж�
	EA = 1;
	delay_ms(100);
	Get_TS_Zero();
	
}

u16 TouchKeyValue(void)	
{
	u8 i=0;
	int temp = 0;
	u16 ret = 0;
	for(i=0;i<KEY_NUM;i++)
	{
		temp =(0-(int)TK_cnt[i])+TK_zero[i];
		TK_adc_f[i] = temp*0.25f+TK_adc_f[i]*0.75f;
		if(TK_adc_f[i]>TK_PRESS) ret |= (1<<i);
		
	}
	
	return ret;	
}
void key_scan(void)
{
	static u16  key_;

	
	KeyDat.key_value = TouchKeyValue();
	
	//if(KeyDat.key_value == 0) KeyDat.key_value = TouchKeyValue();
	
	if(KeyDat.key_value == 0)
	{
		if(KeyDat.key_tim>5&&KeyDat.key_tim < 800)
		{
				KeyDat.key_short_value = key_;
		}
		else
			KeyDat.key_short_value = 0;
		
			KeyDat.key_val_x = 0;
			KeyDat.key_long_value = 0;
			KeyDat.key_tim = 0;
	}
	if(KeyDat.key_tim > 100) 
		KeyDat.key_val_x = KeyDat.key_value;
	
	if(KeyDat.key_tim >= 2000)
	{
		KeyDat.key_tim = 2000;
		KeyDat.key_long_value = KeyDat.key_value;
	}
	key_ = KeyDat.key_value;
	
	
	
	if(KeyDat.key_short_value)  u1_printf("key_short:%d\r\n",KeyDat.key_short_value);   
	if(KeyDat.key_long_value) u1_printf("key_long:%d\r\n",KeyDat.key_long_value);


}


u8	data Isr_Index;
void	AUXR_ISR(void) interrupt 13
{
	u8	j;
	
	switch(Isr_Index)
	{
		case 32:		//0103H ���η�����5 �ж����
						//�û��жϴ������
		break;

		case 33:		//010BH	���η������쳣2 �ж����
						//�û��жϴ������
		break;

		case 34:		//0113H	���η������쳣4 �ж����
						//�û��жϴ������
		break;

		case 35:		//011BH	�������� �ж����
						//�û��жϴ������
			j = TSSTA2;

			if(j & 0x40)	//�������, ������(��)
			{
				TSSTA2 |= 0x40;	//д1����
			}
			if(j & 0x80)	//ɨ�����
			{
				j &= 0x0f;
				TSSTA2 |= 0x80;	//д1����

				switch(j)
				{
					case 3:
						TK_cnt[0] = TSDAT;	//����ĳ��ͨ���Ķ���	��ͨ�˲�
					break;
					
					case 5:
						TK_cnt[1] = TSDAT;	//����ĳ��ͨ���Ķ���	��ͨ�˲�
					break;
					
					case 6:
						TK_cnt[2] = TSDAT;	//����ĳ��ͨ���Ķ���	��ͨ�˲�
					break;

					case 7:
						TK_cnt[3] = TSDAT;	//����ĳ��ͨ���Ķ���	��ͨ�˲�
						TSCTRL = (1<<7) + (1<<6) +1;	//��ʼɨ��, 2��ƽ��, ������ԼΪ��ƽ����һ��	
					break;					
				}
				
			}
			
//				if(!B_TK_Lowpass)	TK_cnt[j] = TSDAT/4;	//����ĳ��ͨ���Ķ���	�޵�ͨ�˲�
//				else				TK_cnt[j] = ((TK_cnt[j] * 3)>>2) + TSDAT/16;	//����ĳ��ͨ���Ķ���	��ͨ�˲�
//				if(j == 15)	B_ReadKeyOk = 1;	//����һ��ѭ��
		break;

		case 36:		//0123H	RTC �ж����
						//�û��жϴ������
		break;

		case 37:		//012BH	P0���ж����
						//�û��жϴ������
		break;

		case 38:		//0133H	P1���ж����
						//�û��жϴ������
		break;

		case 39:		//013BH	P2���ж����
						//�û��жϴ������
		break;

		case 40:		//0143H	P3���ж����
						//�û��жϴ������
		break;

		case 41:		//014BH	P4���ж����
						//�û��жϴ������
		break;

		case 42:		//0153H	P5���ж����
						//�û��жϴ������
		break;

		case 43:		//015BH	P6���ж����
						//�û��жϴ������
		break;

		case 44:		//0163H	P7���ж����
						//�û��жϴ������
		break;

		case 45:		//016BH	P8���ж����
						//�û��жϴ������
		break;

		case 46:		//0173H	P9���ж����
						//�û��жϴ������
		break;
		
		default:
		break;
	}
}
