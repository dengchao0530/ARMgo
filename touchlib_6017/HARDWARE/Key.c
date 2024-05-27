


#include "key.h"
#include "main.h"
#include "UART.h"

 KEY_DATA KeyDat;
void Key_Init(void)
{
  
  GPIOG->DDR &= ~(1<<0); 
  GPIOG->CR1 |= (1<<0); 
  GPIOG->CR2 &= ~(1<<0); 		

  GPIOC->DDR &= ~(1<<6); 
  GPIOC->CR1 |= (1<<6); 
  GPIOC->CR2 &= ~(1<<6); 
  
  GPIOC->DDR &= ~(1<<7); 
  GPIOC->CR1 |= (1<<7); 
  GPIOC->CR2 &= ~(1<<7); 

//ÏÞÎ»
  //CW1
  GPIOA->DDR &= ~(1<<1); 
  GPIOA->CR1 |= (1<<1); 
  GPIOA->CR2 &= ~(1<<1);
  //CCW1
  GPIOA->DDR &= ~(1<<2); 
  GPIOA->CR1 |= (1<<2); 
  GPIOA->CR2 &= ~(1<<2); 
  //CW2
  GPIOA->DDR &= ~(1<<4); 
  GPIOA->CR1 |= (1<<4); 
  GPIOA->CR2 &= ~(1<<4); 
  //CCW2
  GPIOA->DDR &= ~(1<<5); 
  GPIOA->CR1 |= (1<<5); 
  GPIOA->CR2 &= ~(1<<5); 
  
  //»ô¶û
  GPIOA->DDR &= ~(1<<6); 
  GPIOA->CR1 |= (1<<6); 
  GPIOA->CR2 &= ~(1<<6);    
  
}

u8 GetKey(void)
{

	if(KEY1 == 0) 
          return 1;
	else if(KEY2 == 0) 
          return 2;
	else if(KEY3 == 0) 
          return 3;
	return 0;

}

void key_scan(void)
{
	static u8  key_;
	
	KeyDat.key_value=GetKey();

	if(KeyDat.key_value == 0)
	{
		if(KeyDat.key_tim>5&&KeyDat.key_tim < 800)
		{
				KeyDat.key_short_value = key_;
		}
		else
			KeyDat.key_short_value = 0;
		
			KeyDat.key_val_x = 0;
			KeyDat.key_long_value = 0;
			KeyDat.key_tim = 0;
	}
	if(KeyDat.key_tim > 5) 
		KeyDat.key_val_x = KeyDat.key_value;
	
	if(KeyDat.key_tim >= 2000)
	{
		KeyDat.key_tim = 2000;
		KeyDat.key_long_value = KeyDat.key_value;
	}
	key_ = KeyDat.key_value;
	
//	if(KeyDat.key_short_value) 
//        {
//          u1_printf("key_short_value:%d\r\n",KeyDat.key_short_value);
//        }
//        
//	if(KeyDat.key_long_value) 
//        {
//          u1_printf("key_long_value:%d\r\n",KeyDat.key_long_value);
//        }

}


