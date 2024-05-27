#ifndef __UART1_H
#define __UART1_H 			   



#define USART1_REC_LEN 20  	//定义最大接收字节数 200
#define USART1_TRS_LEN 20

typedef struct
{
	u8	RxData[USART1_REC_LEN];
	u16	RxNum;
	u16	RxLength;
	u8	RxTimer;
	u8	RxEnd;
	u8	TxData[USART1_TRS_LEN];
	u16	TxNum;
	u16	TxLength;
	u8	TxEnd;
}ST_Usart1;

extern ST_Usart1	sUsart1;


void uart1_Init(void);
void UartSend(char dat);
void UartSendStr(char *p);
void sendhex(long dat);
void sendint(long dat);
void u1_printf(char* fmt,...);
#endif





























