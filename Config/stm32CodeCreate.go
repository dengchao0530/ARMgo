package Config

import (
	"fmt"
	"log"
	"strconv"
)

/*todo:-------------------------------------------------------------------------------定时器相关-------------------------------------------------------------------------------*/
//生成 STM32 标准库定时器初始化代码
func timeBaseTemplateStm32(config Config) string {
	timerBase := config.ChipConfig.TimerConfig
	var timerBaseCode string
	var nvicCode string

	// 根据定时器号设置 RCC 时钟使能宏和定时器初始化
	var rccPeriph string
	var rccApb string
	var timInstance string
	if timerBase.TimerNum == "TIM1" || timerBase.TimerNum == "TIM8" {
		rccPeriph = fmt.Sprintf("RCC_APB2PeriphClockCmd")
		rccApb = fmt.Sprintf("RCC_APB2Periph_%s", config.ChipConfig.TimerConfig.TimerNum)
		timInstance = timerBase.TimerNum
	} else {
		rccPeriph = fmt.Sprintf("RCC_APB1PeriphClockCmd")
		rccApb = fmt.Sprintf("RCC_APB1Periph_%s", config.ChipConfig.TimerConfig.TimerNum)
		timInstance = timerBase.TimerNum
	}

	timerBaseCode = fmt.Sprintf(`
#include "stm32f10x.h"

// 定时器初始化函数
void Timer_Init(void) {
    TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
    // 定时器时钟使能
    %s(%s, ENABLE);
    // 定时器基本配置
    TIM_TimeBaseStructure.TIM_Period = %s - 1;
    TIM_TimeBaseStructure.TIM_Prescaler = %s - 1;
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(%s, &TIM_TimeBaseStructure);
    TIM_ARRPreloadConfig(%s, ENABLE);
    TIM_Cmd(%s, ENABLE);
`, rccPeriph, rccApb, timerBase.Period, timerBase.Prescaler, timInstance, timInstance, timInstance)

	//如果开启的中断
	if config.ChipConfig.TimerConfig.NVIC.Enable == 1 {
		nvicCode = fmt.Sprintf(`	//配置nvic
	NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = %s;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = %d;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = %d;
    NVIC_InitStructure.NVIC_IRQChannelCmd = %s;
    NVIC_Init(&NVIC_InitStructure);
}
`, config.ChipConfig.TimerConfig.NVIC.IRQChannel, config.ChipConfig.TimerConfig.NVIC.PrePriority, config.ChipConfig.TimerConfig.NVIC.SubPriority, "ENABLE")
	} else { //如果没有开启的中断
		nvicCode = fmt.Sprintf(`
	}
`)
	}
	timerCode := fmt.Sprintf(`%s
%s`, timerBaseCode, nvicCode)
	return timerCode
}

// 生成定时器中断处理函数代码
func timerInterruptHandlerTemplatestm32(config Config) string {
	timerNum := config.ChipConfig.TimerConfig.TimerNum
	code := fmt.Sprintf(`
// 定时器中断处理函数
void %s_IRQHandler(void) {
    if (TIM_GetITStatus(%s, TIM_IT_Update) != RESET) {
        TIM_ClearITPendingBit(%s, TIM_IT_Update);
        // 用户代码
    }
}
`, timerNum, timerNum, timerNum)
	fmt.Println()
	return code
}

// 生成 PWM 配置代码
func pwmConfigTemplatestm32(config Config) string {
	pwm := config.ChipConfig.TimerConfig.PWMEnable
	period, err := strconv.Atoi(config.ChipConfig.TimerConfig.Period)
	if err != nil {
		log.Println("转化失败")
	}
	Duty := (pwm.Duty * (period - 1)) / 100
	code := fmt.Sprintf(`
// PWM 配置函数
void PWM_Config(void) {
    TIM_OCInitTypeDef  TIM_OCInitStructure;
    GPIO_InitTypeDef GPIO_InitStructure;

    // GPIO 时钟使能
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO%s, ENABLE);

    // GPIO 配置
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_%s;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIO%s, &GPIO_InitStructure);

    // PWM 配置
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
    TIM_OCInitStructure.TIM_Pulse = %d;
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
    TIM_OC1Init(TIM%s, &TIM_OCInitStructure);
    TIM_OC1PreloadConfig(TIM%s, TIM_OCPreload_Enable);

    // TIM 使能
    TIM_Cmd(TIM%s, ENABLE);
    TIM_CtrlPWMOutputs(TIM%s, ENABLE);
}
`, pwm.GPIO[1:2], pwm.GPIO[2:3], pwm.GPIO[1:2], Duty, config.ChipConfig.TimerConfig.TimerNum[3:4], config.ChipConfig.TimerConfig.TimerNum[3:4], config.ChipConfig.TimerConfig.TimerNum[3:4], config.ChipConfig.TimerConfig.TimerNum[3:4])

	return code
}

// 生成完整的定时器相关的 C 代码
func GenerateTimerCodestm32(config Config) string {
	timerInit := timeBaseTemplateStm32(config)
	pwmConfig := pwmConfigTemplatestm32(config)
	interruptHandler := timerInterruptHandlerTemplatestm32(config)

	// 将所有代码组合在一起
	fullCode := fmt.Sprintf(`%s

%s

%s
`, timerInit, pwmConfig, interruptHandler)

	return fullCode
}

/*todo:-------------------------------------------------------------------------------通用IO相关-------------------------------------------------------------------------------*/
func IOTemplateStm32(config Config) string {
	iocode := fmt.Sprintf(`#include "stm32f10x.h"
void GPIO_Init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO%s, ENABLE);
	GPIO_InitTypeDef GPIO_InitStructure;
 	GPIO_InitStructure.GPIO_Mode = %s;
	GPIO_InitStructure.GPIO_Speed = %s;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_%s;
 	GPIO_Init(GPIO%s, &GPIO_InitStructure);
`, config.ChipConfig.IOPutPort.GPIO[1:2], config.ChipConfig.IOPutPort.Mode, config.ChipConfig.IOPutPort.GPIOSpeed, config.ChipConfig.IOPutPort.GPIO[2:], config.ChipConfig.IOPutPort.GPIO[1:2])
	return iocode
}

func IOExitStm32(config Config) string {
	if config.ChipConfig.IOPutPort.NVIC.Enable == 1 {
		ioexti := fmt.Sprintf(`
	EXTI_InitTypeDef EXTI_InitStructure;
 	NVIC_InitTypeDef NVIC_InitStructure;

 	//使能复用功能时钟
  	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO,ENABLE);	
	//选择EXTI信号源
  	GPIO_EXTILineConfig(GPIO_PortSourceGPIO%s,GPIO_PinSource%s);
	//确定中断线、中断模式、触发方式并使能：
  	EXTI_InitStructure.EXTI_Line=EXTI_Line%s;
  	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;	
  	EXTI_InitStructure.EXTI_Trigger = %s;
  	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  	EXTI_Init(&EXTI_InitStructure);
	//确定中断源、优先级（抢占优先级和子优先级），使能：
  	NVIC_InitStructure.NVIC_IRQChannel = %s;	
  	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = %d;	
  	NVIC_InitStructure.NVIC_IRQChannelSubPriority = %d;				
  	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			
  	NVIC_Init(&NVIC_InitStructure);
}`, config.ChipConfig.IOPutPort.GPIO[1:2], config.ChipConfig.IOPutPort.GPIO[2:3], config.ChipConfig.IOPutPort.GPIO[2:3], config.ChipConfig.IOPutPort.NVIC.triggeringlevel, config.ChipConfig.IOPutPort.NVIC.IRQChannel, config.ChipConfig.IOPutPort.NVIC.PrePriority, config.ChipConfig.IOPutPort.NVIC.SubPriority)
		return ioexti
	} else {
		return "}"
	}
	return ""
}

func IOIRQHandle(config Config) string {
	if config.ChipConfig.IOPutPort.NVIC.Enable == 1 {
		IRQHandle := fmt.Sprintf(`
void %s_IRQHandler(void)
{
	 if (EXTI_GetITStatus(EXTI_Line%s) != RESET) {
        // 清除中断标志
        EXTI_ClearITPendingBit(EXTI_Line%s);

        // 用户代码: 处理中断事件
    }
}`, config.ChipConfig.IOPutPort.NVIC.IRQChannel, config.ChipConfig.IOPutPort.GPIO[2:3], config.ChipConfig.IOPutPort.GPIO[2:3])
		return IRQHandle
	}
	return ""
}

func GenerateIOCodestm32(config Config) string {
	ioconfigcode := IOTemplateStm32(config)
	ioconfigexit := IOExitStm32(config)
	ioirqhandle := IOIRQHandle(config)
	iocode := fmt.Sprintf(`
%s

%s

%s`, ioconfigcode, ioconfigexit, ioirqhandle)
	return iocode
}

/*todo:-------------------------------------------------------------------------------串口相关-------------------------------------------------------------------------------*/
func usartCodestm32(config Config) string {
	var usartioConfigcode string
	PeriphPort := config.ChipConfig.UARTConfig.General.GPIO.TXGPIO[1:2]
	PeriphSuart := config.ChipConfig.UARTConfig.General.USARTNum
	rxpin := config.ChipConfig.UARTConfig.General.GPIO.RXGPIO[2:]
	txpin := config.ChipConfig.UARTConfig.General.GPIO.TXGPIO[2:]
	baud := config.ChipConfig.UARTConfig.General.Baud
	//确认开启串口
	if config.ChipConfig.UARTConfig.Enable == 1 {
		usartioConfigcode = fmt.Sprintf(`
void Serial_Init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_%s, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO%s, ENABLE);
	
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_%s;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIO%s, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_%s;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIO%s, &GPIO_InitStructure);
	
	USART_InitTypeDef USART_InitStructure;
	USART_InitStructure.USART_BaudRate = %s;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_Init(%s, &USART_InitStructure);
	USART_Cmd(%s, ENABLE);
`, PeriphSuart, PeriphPort, txpin, PeriphPort, rxpin, PeriphPort, baud, PeriphSuart, PeriphSuart)
		return usartioConfigcode
	}
	return ""
}

func usartNvicCode(config Config) string {
	var usartIRQhandle string
	PeriphSuart := config.ChipConfig.UARTConfig.General.USARTNum
	if config.ChipConfig.UARTConfig.NVIC.Enable == 1 {
		usartIRQhandle = fmt.Sprintf(`
	USART_ITConfig(%s, USART_IT_RXNE, ENABLE);
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
	NVIC_InitTypeDef NVIC_InitStructure;
	NVIC_InitStructure.NVIC_IRQChannel = %s_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = %s;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = %s;
	NVIC_Init(&NVIC_InitStructure);
}
`, PeriphSuart, PeriphSuart, config.ChipConfig.UARTConfig.NVIC.PrePriority, config.ChipConfig.UARTConfig.NVIC.SubPriority)
		return usartIRQhandle
	}
	return "}"
}

func usartfput(config Config) string {
	var usartfput string
	PeriphSuart := config.ChipConfig.UARTConfig.General.USARTNum
	if config.ChipConfig.UARTConfig.Fput.Enable == 1 {
		usartfput = fmt.Sprintf(`
#innclude <stdio.h>
int fputc(int ch, FILE *f)
{      
	while((%s->SR&0X40)==0);//循环发送,直到发送完毕   
    USART1->DR = (u8) ch;      
	return ch;
}
`, PeriphSuart)
		return usartfput
	}
	return ""
}

func usartIRQHandle(config Config) string {
	var usartIRQHandle string
	PeriphSuart := config.ChipConfig.UARTConfig.General.USARTNum
	if config.ChipConfig.UARTConfig.NVIC.IRQHandle.Enable == 1 {
		usartIRQHandle = fmt.Sprintf(`
void USART1_IRQHandler(void)
{
	if (USART_GetITStatus(%s, USART_IT_RXNE) == SET)
	{
		USART_ClearITPendingBit(%s, USART_IT_RXNE);
	}
}
`, PeriphSuart, PeriphSuart)
		return usartIRQHandle
	}
	return ""
}

func GenerateUsartCodestm32(config Config) string {
	usartconfigcode := usartCodestm32(config)
	usartconfignvic := usartNvicCode(config)
	usartirqhandle := usartIRQHandle(config)
	usartfput := usartfput(config)
	UsartCode := fmt.Sprintf(`
%s

%s

%s

%s`, usartconfigcode, usartconfignvic, usartirqhandle, usartfput)
	return UsartCode
}
