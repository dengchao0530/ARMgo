#include "uart.h"
#include "touch.h"

#ifdef TOUCH_DEBUG
	#define PACK_KEY_MAX		8
	#define PACK_NUM_MAX 		(KEY_NUMBER-1)/PACK_KEY_MAX
	#define REST_KEY_NUM 		(KEY_NUMBER)%PACK_KEY_MAX
	#define	COM_HEAD1			0x3A
	#define	COM_HEAD2			0xA3
	#define	COM_TX_RAWDATA		0xB0
	#define	COM_ON_PACK			0xC0
	#define	COM_SLEEP_PACK		0xD0

	#define REC_ACK				0x55
	#define REC_NACK			0x00
	#define	DATA_INDEX			4
	#define	UART_TX_SIZE		5+2*8
	
	bit TX_Flag = 0;
	unsigned char UART_TX_Buff[UART_TX_SIZE];
	unsigned char ucActiveSensorDeltaArray[KEY_NUMBER];
	unsigned char ucInActiveSensorDeltaArray[KEY_NUMBER];
	unsigned char uiGroupArray[KEY_NUMBER];
	unsigned char ucMULTIPLE ,ucPackNum = 0;
	//unsigned char _ucSendGapCnt,_ucLPGapCnt;
#endif

#ifdef TOUCH_DEBUG

#define	WAIT_START_TIME 1000
#define RX_T_START	21
#define RX_T_BIT	15

#define RX_SIZE		14

unsigned int uiRX_t = 0;
unsigned char data = 0;  


unsigned char DEC2ASC(unsigned char data)
{
	switch(data)
	{
		case 0: return 0x30;//0
		case 1: return 0x31;//1
		case 2: return 0x32;//2 
		case 3: return 0x33;//3
		case 4: return 0x34;//4
		case 5: return 0x35;//5
		case 6: return 0x36;//6
		case 7: return 0x37;//7
		case 8: return 0x38;//8
		case 9: return 0x39;//9
		case 10:return 0x41;//A
		case 11:return 0x42;//B
		case 12:return 0x43;//C
		case 13:return 0x44;//D
		case 14:return 0x45;//E
		case 15:return 0x46;//F	
	}
	return 0x78;
}

void  SendHead(void)
{
	uart_tx(0x00);
	uart_tx(0x55);
	uart_tx(0xaa);
}

void SEND_16(unsigned int data)
{
	uart_tx((data&0xFF00)>>8);
	uart_tx(data&0x00FF); 
}

void SEND_16asc(unsigned int b)
{
	uart_tx(DEC2ASC(b/10000));
	uart_tx(DEC2ASC((b%10000)/1000));
	uart_tx(DEC2ASC((b%1000)/100));
	uart_tx(DEC2ASC((b%100)/10));
	uart_tx(DEC2ASC(b%10));
	uart_tx(0x2C);// :/r
}



void uart_delay(void)
{
    //    16M  ВЈЬиТЪ 115200
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();    
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP(); 
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP(); 
    NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();NOP();
}  

void uart_tx(unsigned char  data)
{

	TX =0; //start
    NOP();
    NOP();
	uart_delay();
	if(data & 0x01)  //1Ты  1
	{
        NOP();   
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
       	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x02)  //1Ты  1
	{
        NOP();   
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
       	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x04)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
	    NOP();
		uart_delay();
	}
	if(data & 0x08)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x10)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x20)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x40)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
		NOP();
		uart_delay();
	}
	if(data & 0x80)  //1Ты  1
	{
        NOP();
		TX = 1;
		uart_delay(); 	 
	}
	else //0Ты
	{
		TX = 0;
    	NOP();
		NOP();
		uart_delay();
	}
	TX = 1; //stop
    NOP();
	NOP();
	uart_delay ();

}

RXStatus uart_rx(void)
{
	
	data = 0;
    uiRX_t = 0;
//    PD0 = 1;
	while(RX)		
    {
    
		uiRX_t++;
        if(uiRX_t > WAIT_START_TIME) 
        {
			return IDLE_STA;            		
        }
        NOP();
    }
    NOP();
//    PD0 = 0;
	NOP();
    uiRX_t = 0;

	while(uiRX_t != RX_T_START)		//start
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX;		//bit 0
    NOP();
    NOP();
//    PD0 = 1;
	NOP();
        
 	while(uiRX_t != RX_T_BIT)		
    {		
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 1;		//bit 1
    NOP();
//    PD0 = 0;
	NOP();
    NOP();    
 	while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;     
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 2;		//bit 2
    NOP();
//    PD0 = 1;
	NOP();
    NOP();    
    while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 3;		//bit 3
    NOP();
//    PD0 = 0;
	NOP();
    NOP();    
    while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 4;		//bit 4
    NOP();
//    PD0 = 1;
	NOP();
    NOP();    
    while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 5;		//bit 5
    NOP();
//    PD0 = 0;
    NOP();  
    NOP();  
    while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 6;		//bit 6
    NOP();
//    PD0 = 1;
	NOP();
    NOP();    
    while(uiRX_t != RX_T_BIT)		
    {
		uiRX_t++;
    }
	uiRX_t = 0;
	data |= (unsigned char)RX << 7;		//bit 7
    NOP();
//    PD0 = 0;
	NOP();
    NOP();        
	while(uiRX_t != RX_T_BIT)		//stop
    {
		uiRX_t++;
    } 
    NOP();
//    PD0 = 1;
    NOP();
    NOP();
	if(!RX) 
    return STOP_ERROR_STA;
    
    return DATA_STA; 
}

unsigned char ReceiveDataPc(void)
{
	unsigned char i;
	for(i=0;i<RX_SIZE;i++)
    {
		if(uart_rx() == IDLE_STA) return 0;
		UART_TX_Buff[i] = data;
    }
    return 1;
}


void SendDataToPC(unsigned char size)
{
	unsigned char i;
	for(i=0;i<size;i++)
    {
		uart_tx(UART_TX_Buff[i]);
    }	
	
}

unsigned int uiTemp;
unsigned int uiTempX1;
void ConmunicateToPc(void)
{
#ifdef TOUCH_DEBUG
	unsigned char temp_xor = 0,i,ucTempLength,ucTemp,ucTempPackNum = 0;
    
    
    if(TX_Flag)
	{
		GIE = 0;             
		UART_TX_Buff[0] = COM_HEAD1;
		UART_TX_Buff[1] = COM_HEAD2;
        UART_TX_Buff[2] = 0x11;
		UART_TX_Buff[3] = COM_TX_RAWDATA + ucPackNum;
		for (i = 0; i < 4; i++)
		{
			temp_xor ^= UART_TX_Buff[i];
		}
		for (i = 0; i < PACK_KEY_MAX; i++)
		{
			uiTemp = TSC_GetPrevData(ucPackNum*PACK_KEY_MAX + i);

			UART_TX_Buff[(unsigned char)(DATA_INDEX+2*i)] = (unsigned char)(uiTemp>>8);
			UART_TX_Buff[(unsigned char)(DATA_INDEX+2*i+1)] = (unsigned char)uiTemp;
			temp_xor ^= UART_TX_Buff[(unsigned char)(DATA_INDEX+2*i)];
			temp_xor ^= UART_TX_Buff[(unsigned char)(DATA_INDEX+2*i+1)];
		}
		UART_TX_Buff[20] = temp_xor;    
		SendDataToPC(21);  
        ucPackNum ++; 
		if(ucPackNum > PACK_NUM_MAX)
        {
			TX_Flag = 0;
            ucPackNum = 0;
        } 
						  
		if(ReceiveDataPc() == 1)
		{
			temp_xor = 0;
            ucTempLength = UART_TX_Buff[2];
			if(UART_TX_Buff[0] != COM_HEAD1 || UART_TX_Buff[1] != COM_HEAD2)
            {
				UART_TX_Buff[0] = REC_NACK;
            }
            else
			{
				for (i = 0; i < (ucTempLength + 3); i++)
				{
					temp_xor ^= UART_TX_Buff[i];
				}
				if(temp_xor == UART_TX_Buff[(unsigned char)(ucTempLength + 3)]) 	//
				{
                    ucTempPackNum = UART_TX_Buff[3] & 0x0F;
                    if(ucTempPackNum == PACK_NUM_MAX)			//
                    {
                        if( (KEY_NUMBER % PACK_KEY_MAX) == 0)
                        {
                            ucTemp = PACK_KEY_MAX;
                        }
                        else
                        {
                            ucTemp = REST_KEY_NUM;
                        }
                    }
                    else
                    {
						ucTemp = PACK_KEY_MAX;
                    }

                    if((UART_TX_Buff[3] & 0xF0) == COM_ON_PACK)
                    {
						for(i=0;i<ucTemp;i++)			//
						{
							ucActiveSensorDeltaArray[(unsigned char)(ucTempPackNum*PACK_KEY_MAX + i)] = UART_TX_Buff[(unsigned char)(DATA_INDEX+i)];
							ucInActiveSensorDeltaArray[(unsigned char)(ucTempPackNum*PACK_KEY_MAX + i)] = UART_TX_Buff[(unsigned char)(DATA_INDEX+i)] - UART_TX_Buff[(unsigned char)(DATA_INDEX+i)]/4; 
						}   
                        ucMULTIPLE = UART_TX_Buff[(unsigned char)(ucTempLength + 2)]; 
                        
                        //complete
                        bTestSleepFlag = 0;
                        for(i = 0;i< KEY_NUMBER;i++)
                        {
                            uiGroupArray[i] = 0xFF;
                        }

                    }
                    else if((UART_TX_Buff[3] & 0xF0) == COM_SLEEP_PACK)
                    {
                        bTestSleepFlag = 1;
                        //UART_TX_Buff[11]:key_num
                        //UART_TX_Buff[12]:key_group
                        uiGroupArray[UART_TX_Buff[11]] = UART_TX_Buff[12];  
                    }
                    UART_TX_Buff[0] = REC_ACK;					
				}
				else				
				{
					UART_TX_Buff[0] = REC_NACK;
				}   
                SendDataToPC(1);
			}	
		}  
		GIE = 1;    
    }
  
#endif    
}

#endif

