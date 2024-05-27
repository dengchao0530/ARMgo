#ifndef __UART2_H
#define __UART2_H 			   
#include "main.h"


#define USART2_REC_LEN 20  	//定义最大接收字节数 200
#define USART2_TRS_LEN 20

typedef struct
{
	u8	RxData[USART2_REC_LEN];
	u16	RxNum;
	u16	RxLength;
	u8	RxTimer;
	u8	RxEnd;
	u8	TxData[USART2_TRS_LEN];
	u16	TxNum;
	u16	TxLength;
	u8	TxEnd;
}ST_Usart2;

extern ST_Usart2	sUsart2;

u8 Cmd_Process(void);
void uart2_Init(void);
//void Uart2SendStr(char *p);
void usart2_receive_wait(void);
#endif





























