#include "encoder.h"
#include "main.h"
ENCODER_DATA	EncoderData;

void encoder_Init(void)
{
	GIE = 0;
	TRISDbits.TRISD6  = 1;		// PD6设置为输入
    WPUDbits.WPUD6 = 1;			// PD6开启弱上拉
    WPDDbits.WPDD6 = 0; 		// PD6关闭弱下拉
    
	TRISDbits.TRISD5  = 1;		// PD6设置为输入
    WPUDbits.WPUD5 = 1;			// PD6开启弱上拉
    WPDDbits.WPDD5 = 0; 		// PD6关闭弱下拉
    
    IPEN = 0;					// 关闭中断优先级功能
    EPS3bits.EPSEL6 = 0b011;	// INT6 选择PD6 
      	
    ITYPE1 &= 0B11001111;		
    ITYPE1 |= 0B00100000;		// INT_IEVT6 选择下升降沿
    
    INTCON2bits.INT6IF = 0;		// 清除INT6中断标志
    INTCON3bits.INT6IE = 1;		// 使能INT6中断
    PEIE = 1;					// 使能外设中断
    GIE = 1;					// 使能全局总中断  
}

void EC11_Interrupt(void)
{
	if((INTCON3bits.INT6IE == 1)&&(INTCON2bits.INT6IF == 1))
    {
		EncoderData.Time = 0;
		EncoderData.EC11_Count_Flag=1;
		EncoderData.EC11_Speed = EncoderData.EC11_SpeedCount;
		EncoderData.EC11_SpeedCount = 0;

		INTCON2bits.INT6IF = 0;		// 清除INT6中断标志
		INTCON3bits.INT6IE = 1;		// 使能INT6中断
        
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

//获取编码器值
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
    else if(RunData.FlowSet<5) RunData.FlowSet = 5;//流量最小0.5L
}


////不知道为什么拧一下加两个(已解决，第二个脉冲再累加)
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
//			if(RunData.FlowSet<5) RunData.FlowSet = 5;//流量最小0.5L
//	}
//}




