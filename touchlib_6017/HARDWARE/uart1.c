#include "main.h"
#include "uart1.h"
#include "stdio.h"
#include "stdarg.h"		 
#include "string.h"	
ST_Usart1	sUsart1;

bit busy;

void uart1_Init(void)
{
    SCON = 0x50;
    T2L = BRT;
    T2H = BRT >> 8;
    AUXR |= 0x15;
    busy = 0;
	ES = 1;
	EA = 1;	
}

void UartSend(char dat)
{
    while (busy);
    busy = 1;
    SBUF = dat;
}

void UartSendStr(char *p)
{
    while (*p)
    {
        UartSend(*p++);
    }
}


//void sendint(long dat)
//{
//	char buff[50] = {0};
//	sprintf(buff,"%ld",dat);

//	UartSendStr(buff);
//}

//void sendhex(long dat)
//{
//	char buff[50] = {0};
//	sprintf(buff,"%lx",dat);

//	UartSendStr(buff);
//}

void u1_printf(char* fmt,...)  
{  
	char string[50];
	va_list ap;
	va_start(ap,fmt);
	vsprintf(string,fmt,ap);
	va_end(ap); 
	
	UartSendStr(string);                       
}


void UartIsr() interrupt 4
{
    if (TI)
    {
        TI = 0;
        busy = 0;
    }
    if (RI)
    {
        RI = 0;
        sUsart1.RxData[sUsart1.RxNum] = SBUF;
				sUsart1.RxNum++;
        if(sUsart1.RxNum>=USART1_REC_LEN) sUsart1.RxNum=USART1_REC_LEN-1;
				sUsart1.RxTimer=0;
    }
}