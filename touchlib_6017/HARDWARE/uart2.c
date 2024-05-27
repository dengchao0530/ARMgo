#include "uart2.h"
#include "uart1.h"
bit busy2;




ST_Usart2	sUsart2;


void uart2_Init(void)
{
    S2CON = 0x10;
    T2L = BRT;
    T2H = BRT >> 8;
    AUXR |= 0x14;
    busy2 = 0;
		IE2 |= 0x01;
}


//void Uart2Send(char dat)
//{
//    while (busy2);
//    busy2 = 1;
//    S2BUF = dat;
//}

//void Uart2SendStr(char *p)
//{
//    while (*p)
//    {
//        Uart2Send(*p++);
//    }
//}



void usart2_receive_wait(void)
{
	if(sUsart2.RxNum>0)
	{
		sUsart2.RxTimer++;
	}
	if(sUsart2.RxTimer>5)
	{		
		sUsart2.RxLength=sUsart2.RxNum;
		sUsart2.RxEnd=1;
		sUsart2.RxTimer=0;
		sUsart2.RxNum=0;
	}
}

u8 CheckSum_Calculate(u8 *data0,u32 length)
{
	u32 i;
	long accumulate=0;
	u8 checksum=0;
	for(i=0;i<length;i++)
	{
		accumulate+=data0[i];
	} 
	accumulate =0-accumulate;
	checksum=(u8)(accumulate&0X000000FF);
	return 	checksum;
}



u8 Cmd_Process(void)
{
	u8 sum;
	if(sUsart2.RxEnd==0x01)
	{
		sUsart2.RxEnd=0;
		sum = CheckSum_Calculate(sUsart2.RxData,sUsart2.RxLength-1);
		
		if((sUsart2.RxData[0] == 0x16)&&(sUsart2.RxData[sUsart2.RxLength-1] == sum))
		{
			RunData.Concentration = (sUsart2.RxData[3]<<8) | sUsart2.RxData[4];
			RunData.FlowValue = (sUsart2.RxData[5]<<8) | sUsart2.RxData[6];
			RunData.TempValue = (sUsart2.RxData[7]<<8) | sUsart2.RxData[8];
		}
	}
	return 0;
}








//void Uart2Isr() interrupt 8
//{
//    if (S2CON & 0x02)
//    {
//        S2CON &= ~0x02;
//        busy2 = 0;
//    }
//    if (S2CON & 0x01)
//    {
//        S2CON &= ~0x01;
//	
//			  sUsart2.RxData[sUsart2.RxNum] = S2BUF;
//				sUsart2.RxNum++;
//        if(sUsart2.RxNum>=USART2_REC_LEN) sUsart2.RxNum=USART2_REC_LEN-1;
//				sUsart2.RxTimer=0;
//			
//    }
//}



