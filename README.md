# 使用说明

## <mark>目前属于初步开发阶段，计划支持STM32和GD32系列，欢迎开发者前来一起维护</mark>

## 主要参数在config.xml文件中设置

## *1.参数说明*

><chiptype>STM32F103</chiptype>
<chip_speed>72MHZ</chip_speed>

        <!-- 单片机定时器配置 -->
        <timerconfig>
            <enable>1</enable>
            <!-- 定时器号配置 -->
            <timernum1>TIM2</timernum1>

            <!-- 定时器通道配置 -->
            <timerchannel>CH1</timerchannel>

            <!-- 预分频配置 -->
            <prescaler>72</prescaler>

            <!-- 自动重装配置 -->
            <period>10000</period>

            <!-- 是否开启中断 -->
            <nvic>
                <enable>1</enable>
                <IRQChannel>TIM2_IRQn</IRQChannel>
                <!-- 抢占优先级 -->
                <pre_priority>0</pre_priority>
                <!-- 相应优先级 -->
                <sub_priority>0</sub_priority>

                <!-- 是否打开中断函数 -->
                <IRQ_Handle>
                    <enable>1</enable>
                </IRQ_Handle>
            </nvic>

            <!-- 是否输出PWM波形 -->
            <pwm_enable>
                <enable>1</enable>
                <!-- IO口配置 -->
                <gpio>PA0</gpio>

                <!-- pwm模式 -->
                <pwm_mode>1</pwm_mode>

                <!-- 占空比 -->
                <duty>50</duty>
            </pwm_enable>
        </timerconfig>

## *1.代码说明*
### 1.1获取配置文件内容在Config/config.go中
### 1.2构建.c文件在create.go文件中