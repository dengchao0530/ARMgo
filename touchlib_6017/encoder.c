#include "encoder.h"
#include "main.h"
ENCODER_DATA	EncoderData;

void encoder_Init(void)
{
	GIE = 0;
	TRISDbits.TRISD6  = 1;		// PD6����Ϊ����
    WPUDbits.WPUD6 = 1;			// PD6����������
    WPDDbits.WPDD6 = 0; 		// PD6�ر�������
    
	TRISDbits.TRISD5  = 1;		// PD6����Ϊ����
    WPUDbits.WPUD5 = 1;			// PD6����������
    WPDDbits.WPDD5 = 0; 		// PD6�ر�������
    
    IPEN = 0;					// �ر��ж����ȼ�����
    EPS3bits.EPSEL6 = 0b011;	// INT6 ѡ��PD6 
      	
    ITYPE1 &= 0B11001111;		
    ITYPE1 |= 0B00100000;		// INT_IEVT6 ѡ����������
    
    INTCON2bits.INT6IF = 0;		// ���INT6�жϱ�־
    INTCON3bits.INT6IE = 1;		// ʹ��INT6�ж�
    PEIE = 1;					// ʹ�������ж�
    GIE = 1;					// ʹ��ȫ�����ж�  
}

void EC11_Interrupt(void)
{
	if((INTCON3bits.INT6IE == 1)&&(INTCON2bits.INT6IF == 1))
    {
		EncoderData.Time = 0;
		EncoderData.EC11_Count_Flag=1;
		EncoderData.EC11_Speed = EncoderData.EC11_SpeedCount;
		EncoderData.EC11_SpeedCount = 0;

		INTCON2bits.INT6IF = 0;		// ���INT6�жϱ�־
		INTCON3bits.INT6IE = 1;		// ʹ��INT6�ж�
        
		EC11_Scan();
        
    }	
}

void EC11_Scan(void)
{
	u8 i=0;
	if(EncoderData.EC11_Count_Flag)
	{
		RunData.AutoSaveDataCount=0;
		if(EC11_B == 0)
		{
//			if(EncoderData.EC11_Speed<100) 	EncoderData.EC11_Count-=5;
//			else	
            EncoderData.EC11_Count+=1;
		}
		else
		{
//			if(EncoderData.EC11_Speed<100) EncoderData.EC11_Count+=5;
//			else 
            EncoderData.EC11_Count-=1;
		}
		EncoderData.EC11_Count_Flag = 0;
	} 
}

//��ȡ������ֵ
int Get_EC11_Count(void)
{
	int ret = EncoderData.EC11_Count;
	EncoderData.EC11_Count = 0;
	return ret;
}

void EC11_Set_Value(void)
{
	int EncoderCount = 0;
	EncoderCount = Get_EC11_Count();
    RunData.FlowSet+=EncoderCount;
    if(RunData.FlowSet>FLOW_SET*10) RunData.FlowSet = FLOW_SET*10;
    else if(RunData.FlowSet<5) RunData.FlowSet = 5;//������С0.5L
}


////��֪��Ϊʲôšһ�¼�����(�ѽ�����ڶ����������ۼ�)
//void INT0_Isr() interrupt 0
//{
//	EncoderData.Time = 0;
//	if(EncoderData.Direction == 0)
//	{
//		EncoderData.Direction = 1;
//	}
//	if(EncoderData.Direction == 2)
//	{
//		if(RunData.StandbySta == 0)
//				RunData.FlowSet++;
//		if(RunData.FlowSet>FLOW_SET*10) RunData.FlowSet = FLOW_SET*10;
//	}
//}
//void INT1_Isr() interrupt 2
//{
//	EncoderData.Time = 0;
//   if(EncoderData.Direction == 0)
//	{
//		EncoderData.Direction = 2;
//	}
//	if(EncoderData.Direction == 1)
//	{
//		if(RunData.StandbySta == 0)
//			RunData.FlowSet--;
//			if(RunData.FlowSet<5) RunData.FlowSet = 5;//������С0.5L
//	}
//}




