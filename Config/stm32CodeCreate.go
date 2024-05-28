package Config

import (
	"fmt"
	"log"
	"strconv"
)

/*-------------------------------------------------------------------------------定时器相关-------------------------------------------------------------------------------*/
//生成 STM32 标准库定时器初始化代码
func timeBaseTemplateStm32(config Config) string {
	timer_base := config.ChipConfig.TimerConfig
	var timer_Base_Code string
	var nvic_Code string

	// 根据定时器号设置 RCC 时钟使能宏和定时器初始化
	var rcc_periph string
	var rcc_APB string
	var tim_instance string
	if timer_base.TimerNum == "TIM1" || timer_base.TimerNum == "TIM8" {
		rcc_periph = fmt.Sprintf("RCC_APB2PeriphClockCmd")
		rcc_APB = fmt.Sprintf("RCC_APB2Periph_%s", config.ChipConfig.TimerConfig.TimerNum)
		tim_instance = timer_base.TimerNum
	} else {
		rcc_periph = fmt.Sprintf("RCC_APB1PeriphClockCmd")
		rcc_APB = fmt.Sprintf("RCC_APB1Periph_%s", config.ChipConfig.TimerConfig.TimerNum)
		tim_instance = timer_base.TimerNum
	}

	timer_Base_Code = fmt.Sprintf(`
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
`, rcc_periph, rcc_APB, timer_base.Period, timer_base.Prescaler, tim_instance, tim_instance, tim_instance)

	//如果开启的中断
	if config.ChipConfig.TimerConfig.NVIC.Enable == 1 {
		nvic_Code = fmt.Sprintf(`	//配置nvic
	NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = %s;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = %d;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = %d;
    NVIC_InitStructure.NVIC_IRQChannelCmd = %s;
    NVIC_Init(&NVIC_InitStructure);
}
`, config.ChipConfig.TimerConfig.NVIC.IRQChannel, config.ChipConfig.TimerConfig.NVIC.PrePriority, config.ChipConfig.TimerConfig.NVIC.SubPriority, "ENABLE")
	} else { //如果没有开启的中断
		nvic_Code = fmt.Sprintf(`
	}
`)
	}
	timer_code := fmt.Sprintf(`%s
%s`, timer_Base_Code, nvic_Code)
	return timer_code
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

/*-------------------------------------------------------------------------------通用IO相关-------------------------------------------------------------------------------*/
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
}
`, config.ChipConfig.IOPutPort.GPIO[1:2], config.ChipConfig.IOPutPort.Mode, config.ChipConfig.IOPutPort.GPIOSpeed, config.ChipConfig.IOPutPort.GPIO[2:], config.ChipConfig.IOPutPort.GPIO[1:2])
	return iocode
}

func GenerateIOCodestm32(config Config) string {
	iocode := IOTemplateStm32(config)
	return iocode
}
