
#include "stm32f10x.h"
void GPIO_Init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	GPIO_InitTypeDef GPIO_InitStructure;
 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
 	GPIO_Init(GPIOB, &GPIO_InitStructure);



	EXTI_InitTypeDef EXTI_InitStructure;
 	NVIC_InitTypeDef NVIC_InitStructure;

 	//使能复用功能时钟
  	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO,ENABLE);	
	//选择EXTI信号源
  	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB,GPIO_PinSource0);
	//确定中断线、中断模式、触发方式并使能：
  	EXTI_InitStructure.EXTI_Line=EXTI_Line0;
  	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;	
  	EXTI_InitStructure.EXTI_Trigger = ;
  	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  	EXTI_Init(&EXTI_InitStructure);
	//确定中断源、优先级（抢占优先级和子优先级），使能：
  	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;	
  	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;	
  	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;				
  	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			
  	NVIC_Init(&NVIC_InitStructure);
}


void TIM2_IRQn_IRQHandler(void)
{
	 if (EXTI_GetITStatus(EXTI_Line0) != RESET) {
        // 清除中断标志
        EXTI_ClearITPendingBit(EXTI_Line0);

        // 用户代码: 处理中断事件
    }
}