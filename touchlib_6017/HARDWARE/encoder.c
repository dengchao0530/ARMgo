#include "encoder.h"


#define ENCODER_KEY_ADD P32
#define ENCODER_KEY_DEC P33
ENCODER_DATA	EncoderData;

void encoder_Init(void)
{
		P3M0 &= ~(1<<2);	
		P3M1 &= ~(1<<2);
	
		P3M0 &= ~(1<<3);	
		P3M1 &= ~(1<<3);
	
		
	
    IT0 = 1;                                    //ʹ��INT0�½����ж�
    EX0 = 1;                                    //ʹ��INT0�ж�
	
    IT1 = 1;                                    //ʹ��INT1�½����ж�
    EX1 = 1;                                    //ʹ��INT1�ж�
	
    EA = 1;
}

//��֪��Ϊʲôšһ�¼�����(�ѽ�����ڶ����������ۼ�)
void INT0_Isr() interrupt 0
{
	EncoderData.Time = 0;
	if(EncoderData.Direction == 0)
	{
		EncoderData.Direction = 1;
	}
	if(EncoderData.Direction == 2)
	{
		if(RunData.StandbySta == 0)
				RunData.FlowSet++;
		if(RunData.FlowSet>FLOW_SET*10) RunData.FlowSet = FLOW_SET*10;
	}
}


void INT1_Isr() interrupt 2
{
	EncoderData.Time = 0;
   if(EncoderData.Direction == 0)
	{
		EncoderData.Direction = 2;
	}
	if(EncoderData.Direction == 1)
	{
		if(RunData.StandbySta == 0)
			RunData.FlowSet--;
			if(RunData.FlowSet<5) RunData.FlowSet = 5;//������С0.5L
	}
}



