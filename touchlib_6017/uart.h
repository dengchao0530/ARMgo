/**
  *********************************************************************************
  * @file    	    led.h
  * @author  	    FMD AE
  * @brief   	    Í·ÎÄ¼þ
  * @version 	    V1.0.0           
  * @data		    2023-05-26
  **********************************************************************************
  * @attention
  * COPYRIGHT (C) 2021 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *(SZ) Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  **********************************************************************************
  */  

#ifndef	_UART_H_
#define	_UART_H_

#include "syscfg.h"

typedef enum
{
	IDLE_STA = 0, 
	DATA_STA,
    STOP_ERROR_STA,
}RXStatus;

extern volatile bit bTestSleepFlag;

#ifdef TOUCH_DEBUG

    //#define	SEND_GAP			16/KEY_NUMBER
	extern bit TX_Flag;
	extern unsigned char UART_TX_Buff[];
	extern unsigned char ucActiveSensorDeltaArray[];
	extern unsigned char ucInActiveSensorDeltaArray[];
	extern unsigned char uiGroupArray[];
	extern unsigned char ucMULTIPLE ,ucPackNum;
	extern unsigned char _ucSendGapCnt,_ucLPGapCnt;
#endif

void uart_tx(unsigned char data);
void SEND_16(unsigned int data);
void SEND_16asc(unsigned int data);
void SendHead();
void SendDataToPC(unsigned char size);
unsigned char ReceiveDataPc(void);
void ConmunicateToPc(void);

#endif	