#include "uart2.h"
#include "display.h"
#define  	FRAME_SIZE		10
volatile	uint8_t usart_rx_buff[FRAME_SIZE] ={0};
volatile	uint8_t	receive_complete_flag = 0;

ST_Usart2	sUsart2;

void uart2_Init(void)
{
	PCKEN2bits.UR2CKEN = 1;		// UART2 模块时钟使能 = 0;
    TRISFbits.TRISF0 = 1; 		// UART2_RX输入，PF0
	TRISFbits.TRISF1 = 0; 		// UART2_TX输出，PF1   
	LATEbits.LATE6  = 1;		
    
	AFP3bits.TX2PO = 0x01;			// UART2_TX 管脚映射选择PF1
    AFP3bits.RX2PO = 0x01;			// UART2_RX 管脚映射选择PF0	
    
    UR2CR1bits.UR2HDSEL = 0;	// 关闭半双工
	UR2CR1bits.UR2STOP = 0;		// 1bit 停止位
    UR2CR1bits.UR2MODE = 0;		// 8位数据
    UR2CR1bits.UR2PCEN = 0;		// 无奇偶校验
    UR2CR1bits.UR2RXEN = 1;		// 接收使能
    UR2CR1bits.UR2TXEN = 1;		// 发送使能
   
	UR2CR2bits.UR2BDM = 0;		// 16 倍波特率过采样模式 
    UR2CR2bits.UR2BRRH = 0; 
    UR2BRRL =104;         		// 9600波特率 = Fosc/16*[URDLH:URDLL]
	UR2CR2bits.UR2RXNEIE = 1;	// 使能接收非空中断
    UR2STAT = 0;					
	INTCON1 = 0B11000000;
    IPEN = 0;					// 禁止中断优先级    
    UR2CR1bits.UR2EN=1;			// 使能UART2模块
	GIE = 1;					// 使能全局总中断
}

void UART2_TEST(void)
{
		if(receive_complete_flag == 1)
        {
			for(int i=0;i<FRAME_SIZE;i++)
			{
				
				UR2DATL =usart_rx_buff[i];
                //UR2DATL = '0'+i;
				while(!UR2TXEF) 
                {
					NOP(); 
                }      
			}
            receive_complete_flag = 0;
        }

}

//===========================================================
//Function name：	putch  串口1发送1 字节（Printf 重定向使用）
//parameters：		val		待发送字符						
//returned value：	无
//===========================================================  
void putch(char val)
{
    UR2DATL = (unsigned char)val;
	while(!UR2TXEF) 
	{
		NOP(); 
	} 
}
//void UART2_Interrupt(void)
//{
//	static uint8_t receiveCnt = 0;
//    uint8_t temp;
//    if(UR2RXNEIE && UR2RXNEF)       //接收中断    
//    {
//		uint8_t temp = UR2DATL;
//		if((receiveCnt < FRAME_SIZE)&&(receive_complete_flag == 0))
//        {
//            usart_rx_buff[receiveCnt] = temp;
//            receiveCnt++;
//        }
//		if (receiveCnt >= FRAME_SIZE)
//        {
//            receiveCnt = 0;
//            receive_complete_flag = 1;
//        }
//    }	
//}



void Uart2Send(char dat)
{
	UR2DATL =dat;
	while(!UR2TXEF) 
	{
		NOP(); 
	}  
}

void UART2_Interrupt(void)
{
    if(UR2RXNEIE && UR2RXNEF)       //接收中断    
    {
		sUsart2.RxData[sUsart2.RxNum] = UR2DATL;
		//Uart2Send(sUsart2.RxData[sUsart2.RxNum]);
		sUsart2.RxNum++;
        if(sUsart2.RxNum>=USART2_REC_LEN) 
			sUsart2.RxNum=USART2_REC_LEN-1;
		sUsart2.RxTimer=0;
    }	
}

void Uart2SendBuff(u8 *dat, u16 len)
{
	u16 i=0;
	for(i=0; i<len; i++)
	{
		Uart2Send(dat[i]);
	}
}

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

u8 CheckSum_Calculate2(u8 *data0,u32 length)
{
	u32 i;
	long accumulate=0;
	u8 checksum=0;
	for(i=0;i<length;i++)
	{
		accumulate+=data0[i];
	} 
	//accumulate =0-accumulate;
	checksum=(u8)(accumulate&0X000000FF);
	return 	checksum;
}


void Cmd_Send(void)
{
	static int send_FlowSet = 0;
	if(RunData.FlowSet == (RELARE_FLOW * 10 * 0.2))
	{
		send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_20_value;
	}
	else if(RunData.FlowSet == (RELARE_FLOW * 10 * 0.5))
	{
		send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_50_value;
	}
	else if(RunData.FlowSet == (RELARE_FLOW * 10 * 1))
	{
		send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_100_value;
	}
	else{
		send_FlowSet = RunData.FlowSet;
	}
	sUsart2.TxNum=0;
	sUsart2.TxData[sUsart2.TxNum++] = 0xD5;
	sUsart2.TxData[sUsart2.TxNum++] = 0x00;
	sUsart2.TxData[sUsart2.TxNum++] = 0x00;
    sUsart2.TxData[sUsart2.TxNum++] = RunData.StandbySta;
	sUsart2.TxData[sUsart2.TxNum++] = (send_FlowSet>>8)&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = send_FlowSet&0xFF;  
	sUsart2.TxData[sUsart2.TxNum++] = (RunData.JY_TimeSet>>8)&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = RunData.JY_TimeSet&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = (RunData.XF_TimeSet>>8)&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = RunData.XF_TimeSet&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = (RunData.FLOW_Trim>>8)&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = RunData.FLOW_Trim&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = (RunData.PD_TimeSet>>8)&0xFF;
	sUsart2.TxData[sUsart2.TxNum++] = RunData.PD_TimeSet&0xFF;
	sUsart2.TxLength=sUsart2.TxNum+1; 
	sUsart2.TxData[sUsart2.TxNum++] = CheckSum_Calculate2(sUsart2.TxData,sUsart2.TxLength-1);
	Uart2SendBuff(sUsart2.TxData,sUsart2.TxLength);
}
u8 Cmd_Process(void)
{
	u8 sum;
    if(sUsart2.LinkCount > 10000) 
    {
		sUsart2.LinkSta = 0;
        sUsart2.LinkCount = 10000;
    }
	if(sUsart2.RxEnd==0x01)
	{
		sUsart2.RxEnd=0;
		sum = CheckSum_Calculate2(sUsart2.RxData,sUsart2.RxLength-1);
//		Display_Timing(sum,1);
		if((sUsart2.RxData[0] == 0xD5)&&(sUsart2.RxData[sUsart2.RxLength-1] == sum))
		{
			sUsart2.LinkCount = 0;
            sUsart2.LinkSta = 1;
			RunData.Concentration = (sUsart2.RxData[3]<<8) | sUsart2.RxData[4];
			RunData.FlowValue = (sUsart2.RxData[5]<<8) | sUsart2.RxData[6];
			RunData.TempValue = (sUsart2.RxData[7]<<8) | sUsart2.RxData[8];
            RunData.DC12_V = (sUsart2.RxData[9]<<8) | sUsart2.RxData[10];
            RunData.ACDC_V = (sUsart2.RxData[11]<<8) | sUsart2.RxData[12];
            RunData.PowkeyFlag = sUsart2.RxData[13];
		}
	}
	if(RunData.Concentration <= 210){
		RunData.Concentration = 210;
	}
	return 0;
}



