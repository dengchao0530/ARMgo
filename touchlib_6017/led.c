#include "led.h"

#ifdef DIS_74HC595
void DIS_74HC595Send(uint8_t idata)
{
	uint8_t i;

	for(i=0;i<8;i++)
	{
		if(((idata>>i) & 0x01) != 0)
		{
			PE3 = 1;
		}
		else PE3 = 0;

		PE0 = 1;
		NOP();
		PE0 = 0;
		NOP();
	}
	PE1 = 1;
	NOP();
	PE1 = 0;
}

void DIS_74HC595DispOne(uint8_t idata)
{
	uint8_t send_data;
	static uint8_t databuff = 0;

    TRISC5 = 0;
    TRISC6 = 0;
    TRISC7 = 0;
    TRISE0 = 0;
    TRISE1 = 0;
    TRISE3 = 0;
    
	if(idata == 0)
	{
		PC6 = 0;
		PC7 = 0;
		PC5 = 0;	
		DIS_74HC595Send(0xff); //OFF
		return;
	}
	if(idata == databuff)return;

	switch(idata)
	{
		case 1:
		case 2:
		case 3:
		send_data = ~((unsigned char)0x80);
		break;
		
		case 4: 
		case 5:   
		case 6:        
		send_data = ~((unsigned char)0x40);
		break;
		
		case 7:  
		case 8: 
		case 9:         
		send_data = ~((unsigned char)0x20);
		break;
		case 10:     
		case 11: 
		case 12:         
		send_data = ~((unsigned char)0x10);
		break;
		case 13: 
		case 14: 
		case 15:         
		send_data = ~((unsigned char)0x08);
		break;
		case 16:       
		case 17:  
		case 18:          
		send_data = ~((unsigned char)0x04);
		break;
		case 19:
		case 20:  
		case 21:          
		send_data = ~((unsigned char)0x02);
		break;
		case 22:                      
		case 23: 
		case 24: 
		send_data = ~((unsigned char)0x01);
		break;
		default:
		return;
	}   
	
	switch(idata)
	{
		case 1:
		case 4:                       
		case 7:                       
		case 10:                      
		case 13:                      
		case 16:                      
		case 19:                      
		case 22:                      
		PC6 = 0;
		PC7 = 0;
		DIS_74HC595Send(send_data);
		PC5 = 1;
		break;
		
		case 2:
		case 5:
		case 8:
		case 11:
		case 14:
		case 17:
		case 20:
		case 23:
		PC5 = 0;
		PC7 = 0;
		DIS_74HC595Send(send_data);
		PC6 = 1;
		break;

		case 3:
		case 6:
		case 9:
		case 12:
		case 15:
		case 18:
		case 21:
		case 24:
		PC6 = 0;
		PC5 = 0;		
		DIS_74HC595Send(send_data);
		PC7 = 1;
		break;
		
		default:
		break;
	}   
}

void LED_INITIAL (void) 
{
    DIS_74HC595DispOne(0);
}

void LED_Scan(void)
{
    DIS_74HC595DispOne(strongest);
}

void LED_Local_Scan(void)
{
    uint32_t i = 0;
    
    for(i = 0;i<32;i++)
    {
        if(single[0] & ( ((uint32_t)1)<<i))
        {
            i = i + 1;
            break;
        }
    }
    
    if(i == 32)
    {
        i = 0;  //熄灭
    }
    DIS_74HC595DispOne(i);
}
#else
/*------------------------------------------------- 
 *	函数名称：LED_INITIAL
 *	功能：    LED 低电平点亮, 初始化为高电平
 *	输入参数：无
 *	返回参数：无 
 -------------------------------------------------*/
void LED_INITIAL (void) 
{
    LED_OUT_MODE;
    
	LED1_OFF;
    LED2_OFF;
	LED3_OFF;
    LED4_OFF;
	LED5_OFF;
    LED6_OFF;
	LED7_OFF;
    LED8_OFF;            
}

void LED_Scan(void)
{
    LED_OUT_MODE;
	if(strongest == 1)
	{
		LED1_ON;
	}
	else
	if(strongest == 2)
	{
		LED2_ON;
	}
	else
	if(strongest == 3)
	{
		LED3_ON;
	}
	else
	if(strongest == 4)
	{         
        LED4_ON;
	}
	else
	if(strongest == 5)
	{
		LED5_ON;
	}
	else
	if(strongest == 6)
	{
		LED6_ON;
	}
	else
	if(strongest == 7)
	{
		LED7_ON;
	}
	else
	if(strongest == 8)
	{
		LED8_ON;
	}
    else
    {
        LED_INITIAL();
    }  
}

/******************************************************************************
  * @brief  LED_Local_Scan	program
  * @Description 显示对应的灯
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/

void LED_Local_Scan(void)
{

    LED_INITIAL();
	if(single[0]&0x00000001)
	{
		LED1_ON;
	}
	if(single[0]&0x00000002)
	{
		LED2_ON;
	}
	if(single[0]&0x00000004)
	{
		LED3_ON;
	}
	if(single[0]&0x00000008)
	{         
		LED4_ON;
	}
	if(single[0]&0x00000010)
	{
		LED5_ON;
	}
	if(single[0]&0x00000020)
	{
		LED6_ON;
	}
	if(single[0]&0x00000040)
	{
		LED7_ON;
	}
	if(single[0]&0x00000080)
	{
		LED8_ON;
	}  
}

#endif
