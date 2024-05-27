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
	
		
	
    IT0 = 1;                                    //使能INT0下降沿中断
    EX0 = 1;                                    //使能INT0中断
	
    IT1 = 1;                                    //使能INT1下降沿中断
    EX1 = 1;                                    //使能INT1中断
	
    EA = 1;
}

//不知道为什么拧一下加两个(已解决，第二个脉冲再累加)
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
			if(RunData.FlowSet<5) RunData.FlowSet = 5;//流量最小0.5L
	}
}



