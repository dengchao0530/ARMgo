#include "setsysdata.h"
#include "touchkey.h"
#include "display.h"
#include "tm1629b.h"
#include "encoder.h"
#include "beep.h"
#include "eeprom.h"
#include "GPIO_Init.h"
#include "control.h"
#include "uart2.h"
#include "stdio.h"
#include "irkey.h"
#include "voice.h"
#include "control.h"

//todo:工程模式->2023/12/18 用状态机的设计模式 现在的问题是touch_key有问题

// 初始化枚举
static Engineering_Mode currentMode = ENGINEERING_MODE_IDLE;

void Flow_Data_init()
{

}

void Beep1()
{
    BeepEnable(1);
    DelayMs(50);
    BeepEnable(0);
}

void Engineering_Mode_Api()
{
    Flow_Data_init();
    Goto_Engineering_Mode();
}
u16 touch_key = 0x00;
void Goto_Engineering_Mode()
{
    if (!Engineering_Pattern.Mode)
    {
        touch_key = TouchKeyValue();
    }
    Engineering_Pattern.IKey = Get_Engineering_KeyValue(); // 获取遥控器上的按键
    // 根据按键和运行时间判断工程模式
    if(RunData.StandbySta == 0) 
    {
        if(touch_key == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 1)
        {
            if(RunData.RunTime < 3 && RunData.RunTime >= 0)
            {
                Beep1();
                touch_key = 0x00;
                Engineering_Pattern.Mode = 1;
                currentMode = ENGINEERING_MODE_ADJUST_JYTIME;
            }else if(RunData.RunTime >= 4)
            {
                Beep1();
                touch_key = 0x00;
                Engineering_Pattern.Mode = 1;
                currentMode = ENGINEERING_MODE_FLOW_COMPENSATION;
            }
        }
        else if (touch_key == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 3)
        {
            Beep1();
            Engineering_Pattern.Mode = 1;
            touch_key = 0x00;
            currentMode = ENGINEERING_MODE_VOLTAGE_CALIBRATION;
        }
        //清除累计时间
        else if (touch_key == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 2)
        {
            static int i = 0;
            if(i == 300)
            {
                Beep1();
            }
            i++;
            if(i > 300) i = 0;
            RunData.CumulativeTime = 0;
        }
        //处理排氮时间
        else if(touch_key == TOUCH_KEY_ALARM && Engineering_Pattern.IKey == 4)
        {
            Beep1();
            Engineering_Pattern.Mode = 1;
            touch_key = 0x00;
            currentMode = ENGINEERING_MODE_PD;
        }
    }
    else{
        Engineering_Pattern.Led_Display_Timing_Enbale = 0;//运行 定时 min使能
        Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;//累计时间显示使能
        Engineering_Pattern.Led_Dispaly_CloseAlarm = 0;
        Engineering_Pattern.Led_Display_Flow = 0;
        currentMode = ENGINEERING_MODE_IDLE;
    }

    //如果进入了工程模式，则应该取消报警熄灭
    if(Engineering_Pattern.Mode == 1)
    {
        Engineering_Pattern.Led_Dispaly_CloseAlarm = 1;
        Label_CloseAlarm(0,0);//关闭报警图标 别问为什么这里的第二个参数是0，问就是要关警报灯
    }
    else Engineering_Pattern.Led_Dispaly_CloseAlarm = 0;

    CLRWDT(); // 清看门狗
    // 根据当前工程模式状态执行相应的函数
    switch (currentMode)
    {
    case ENGINEERING_MODE_VOLTAGE_CALIBRATION:
        Engineering_Voltage_Calibration();
        break;
    case ENGINEERING_MODE_FLOW_COMPENSATION:
        Engineering_Flow_Compensation();
        break;
    case ENGINEERING_MODE_ADJUST_JYTIME:
        Engineering_Adjust_JYTime();
    case ENGINEERING_MODE_PD:
        Engineering_Adjust_PDTime();
    default:
        break;
    }
}

//排氮时间处理
void Engineering_Adjust_PDTime()
{
    Engineering_Pattern.Led_Display_Timing_Enbale = 1;
    Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
    Engineering_Pattern.Time_Start_Flag = 1; // 计时标志位置1，开始计时
    Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);

    static int i = 0;
    Cmd_Process();
    i++;
    if (i > 100)
    {
        i = 0;
        Cmd_Send();
    }

    SEG1(ch_table[20],0);
    SEG2(ch_table[13],0);
    SEG3(0x00,0);
    SEG4(ch_table[(RunData.PD_TimeSet / 10) % 10],0);
    SEG5(ch_table[RunData.PD_TimeSet % 10],0);
    

    static int j = 0;
    j++;
    if (j < 300)
        return;
    else
        j = 0;


    //==================调整排氮逻辑===================//
    Engineering_Pattern.IKey = 0;
    Engineering_Pattern.IKey = Get_Engineering_KeyValue(); // 获取遥控器上的按键

    // 调节吸附时间
    if (Engineering_Pattern.IKey == 3)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        Engineering_Pattern.Time = 0;
        RunData.PD_TimeSet++;
        if (RunData.PD_TimeSet > 90)
        {
            RunData.PD_TimeSet = 30;
        }
    }

    // 调节均压时间
    if (Engineering_Pattern.IKey == 4)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        Engineering_Pattern.Time = 0;
        RunData.PD_TimeSet--;
        if (RunData.PD_TimeSet < 10)
        {
            RunData.PD_TimeSet = 10;
        }
    }

    Engineering_Timeout_Logic(currentMode);
    if (Engineering_Pattern.Return_Flag == 1)
    {
        Engineering_Pattern.Time_Start_Flag = 0; // 计时标志位置1，开始计时
        Engineering_Pattern.Time = 0;
        Engineering_Pattern.Return_Flag = 0;
        E2prom_WriteData();
        Engineering_Pattern.Led_Display_Timing_Enbale = 0;
        Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
        currentMode = ENGINEERING_MODE_IDLE; // 返回到空闲状态
        Engineering_Pattern.Mode = 0;
        return;
    }
}

void Engineering_Adjust_JYTime()
{
    Engineering_Pattern.Led_Display_Timing_Enbale = 1;
    Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
    Engineering_Pattern.Time_Start_Flag = 1; // 计时标志位置1，开始计时


    Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    static int i = 0;
    Cmd_Process();
    i++;
    if (i > 100)
    {
        i = 0;
        Cmd_Send();
    }

    SEG1(ch_table[(RunData.XF_TimeSet / 10) % 10],0);
    SEG2(ch_table[RunData.XF_TimeSet % 10],0);
    SEG3(0x00,0);
    SEG4(ch_table[(RunData.JY_TimeSet / 10) % 10],0);
    SEG5(ch_table[RunData.JY_TimeSet % 10],0);
    //Update_Display();

    static int j = 0;
    j++;
    if (j < 300)
        return;
    else
        j = 0;

    //==================调整均压逻辑===================//
    Engineering_Pattern.IKey = 0;
    Engineering_Pattern.IKey = Get_Engineering_KeyValue(); // 获取遥控器上的按键
    // DelayMs(300);

    // 调节吸附时间
    if (Engineering_Pattern.IKey == 3)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        Engineering_Pattern.Time = 0;
        RunData.XF_TimeSet++;
        if (RunData.XF_TimeSet > 90)
        {
            RunData.XF_TimeSet = 20;
        }
    }

    // 调节均压时间
    if (Engineering_Pattern.IKey == 4)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        Engineering_Pattern.Time = 0;
        RunData.JY_TimeSet++;
        if (RunData.JY_TimeSet > 20)
        {
            RunData.JY_TimeSet = 0;
        }
    }

    Engineering_Timeout_Logic(currentMode);
    if (Engineering_Pattern.Return_Flag == 1)
    {
        Engineering_Pattern.Time_Start_Flag = 0; // 计时标志位置1，开始计时
        Engineering_Pattern.Time = 0;
        Engineering_Pattern.Return_Flag = 0;
        E2prom_WriteData();
        Engineering_Pattern.Led_Display_Timing_Enbale = 0;
        Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
        currentMode = ENGINEERING_MODE_IDLE; // 返回到空闲状态
        Engineering_Pattern.Mode = 0;
        return;
    }
}

// 工程模式状态机 - 电压标定
void Engineering_Voltage_Calibration()
{
    Engineering_Pattern.Led_Display_Timing_Enbale = 2;
    Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
    Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    Engineering_Pattern.Time_Start_Flag = 1; // 计时标志位置1，开始计时
    static int i = 0;
    Cmd_Process();
    i++;
    if (i > 100)
    {
        i = 0;
        Cmd_Send();
    } 
    //==================显示===================//
    SEG1(ch_table[RunData.ACDC_V / 100], 0);
    SEG2(ch_table[(RunData.ACDC_V % 100) / 10], 0);
    SEG3(ch_table[RunData.ACDC_V % 10], 0);
    SEG4(0x00 , 0);
    SEG5(0x00 , 0);
    SEG6(0x00 , 0);
    SEG7(ch_table[(RunData.Voltage_Calibration) / 100] , 0);
    SEG8(ch_table[((RunData.Voltage_Calibration) % 100) / 10] , 0);
    SEG9(ch_table[(RunData.Voltage_Calibration) % 10] , 0);
    Display_hour(0);

    //Update_Display();

    //==================电压标定===================//
    Engineering_Pattern.IKey = 0;
    Engineering_Pattern.IKey = Get_Engineering_KeyValue(); // 获取遥控器上的按键
    // DelayMs(300);
    static int j = 0;
    j++;
    if (j < 300)
        return;
    else
        j = 0;
    if (Engineering_Pattern.IKey == 3)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        RunData.Voltage_Calibration++;
        Engineering_Pattern.Time = 0;
    }

    if (Engineering_Pattern.IKey == 4)
    {
        BeepCtr1(Engineering_Pattern.IKey);
        RunData.Voltage_Calibration--;
        Engineering_Pattern.Time = 0;
    }
    Engineering_Pattern.IKey = 0;

    Engineering_Timeout_Logic(currentMode);
    if (Engineering_Pattern.Return_Flag == 1)
    {
        Engineering_Pattern.Time_Start_Flag = 0; // 计时标志位置1，开始计时
        Engineering_Pattern.Time = 0;
        Engineering_Pattern.Return_Flag = 0;
        E2prom_WriteData();
        currentMode = ENGINEERING_MODE_IDLE; // 返回到空闲状态

        Engineering_Pattern.Mode = 0;
        Engineering_Pattern.Led_Display_Timing_Enbale = 0;
        Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
        return;
    }
}

// 工程模式状态机 - 流量补偿
void Engineering_Flow_Compensation()
{
    //标志位
    static int Adjust_Flow_20 = 0;
    static int Adjust_Flow_50 = 0;
    static int Adjust_Flow_100 = 0;

    //设置为1则有些灯不能显示原来的，需要显示工程模式特定的
    Engineering_Pattern.Led_Display_Timing_Enbale = 2;
    Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
    Engineering_Pattern.Led_Display_Flow = 1;
    Engineering_Pattern.Time_Start_Flag = 1; // 计时标志位置1，开始计时

    //显示灯
    Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
    Display_hour(0);
    SEG4(0x00,0);
    SEG5(0x00,0);


    static int i = 0;
    Cmd_Process();
    i++;
    if (i > 100)
    {
        i = 0;
        Cmd_Send();
    }

    //==================调节逻辑===================//
    Engineering_Pattern.IKey = 0;
    Engineering_Pattern.IKey = Get_Engineering_KeyValue(); // 获取遥控器上的按键
    static int count = 2;
    static int j = 0;
    j++;
    if (j < 300)
        return;
    else
        j = 0;
    if(Engineering_Pattern.IKey == 1)
    {
        BeepCtr1(Engineering_Pattern.IKey); //TODO:修改工程模式按键按下时有声音
        Engineering_Pattern.IKey = 0;
        DelayMs(200);
        count ++;
        if(count == 3)
        {
            count = 0;
        }
        Engineering_Pattern.Time = 0;
    }
    switch (count)
    {
    case 0:
        Display_Flow(RELARE_FLOW * 10 * 0.2,1,0);
        RunData.FlowSet = RELARE_FLOW * 10 * 0.2;
        Adjust_Flow_20 = 1;
        Adjust_Flow_50 = 0;
        Adjust_Flow_100 = 0;
        break;
    case 1:
        Display_Flow(RELARE_FLOW * 10 * 0.5,1,0);
        RunData.FlowSet = RELARE_FLOW * 10 * 0.5;
        Adjust_Flow_20 = 0;
        Adjust_Flow_50 = 1;
        Adjust_Flow_100 = 0;
        break;
    case 2:
        Display_Flow(RELARE_FLOW * 10 * 1,1,0);
        RunData.FlowSet = RELARE_FLOW * 10 * 1;
        Adjust_Flow_20 = 0;
        Adjust_Flow_50 = 0;
        Adjust_Flow_100 = 1;
        break;
    default:
        break;
    }

    //下面的3个if基本上都是一样的，里面首先判断按键，然后再设置值
    if(Adjust_Flow_20 == 1)
    {
        if (Engineering_Pattern.IKey == 3)
        {
            DelayMs(250);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_20_value++;
            if (RunData.Adjust_Flow_20_value >= 3)
                RunData.Adjust_Flow_20_value = 3;
            Engineering_Pattern.Time = 0;
        }
        if (Engineering_Pattern.IKey == 4)
        {
            DelayMs(250);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_20_value--;
            if (RunData.Adjust_Flow_20_value <= -3)
                RunData.Adjust_Flow_20_value = -3;
            Engineering_Pattern.Time = 0;
        }

        if (RunData.Adjust_Flow_20_value > 0)
        {
            Engineering_Flow_Compensation_display1(1);
            SEG3(ch_table[RunData.Adjust_Flow_20_value], 0);
        }
        if (RunData.Adjust_Flow_20_value < 0)
        {
            Engineering_Flow_Compensation_display1(0);
            SEG3(ch_table[-RunData.Adjust_Flow_20_value], 0);
        }
        if (RunData.Adjust_Flow_20_value == 0)
        {
            SEG1(ch_table[RunData.Adjust_Flow_20_value], 0);
            SEG2(ch_table[RunData.Adjust_Flow_20_value], 0);
            SEG3(ch_table[RunData.Adjust_Flow_20_value], 0);
        }
    }

    if(Adjust_Flow_50 == 1)
    {
        if (Engineering_Pattern.IKey == 3)
        {
            DelayMs(200);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_50_value++;
            if (RunData.Adjust_Flow_50_value >= 3)
                RunData.Adjust_Flow_50_value = 3;
            Engineering_Pattern.Time = 0;
        }
        if (Engineering_Pattern.IKey == 4)
        {
            DelayMs(200);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_50_value--;
            if (RunData.Adjust_Flow_50_value <= -3)
                RunData.Adjust_Flow_50_value = -3;
            Engineering_Pattern.Time = 0;
        }

        if (RunData.Adjust_Flow_50_value > 0)
        {
            Engineering_Flow_Compensation_display1(1);
            SEG3(ch_table[RunData.Adjust_Flow_50_value], 0);
        }
        if (RunData.Adjust_Flow_50_value < 0)
        {
            Engineering_Flow_Compensation_display1(0);
            SEG3(ch_table[-RunData.Adjust_Flow_50_value], 0);
        }
        if (RunData.Adjust_Flow_50_value == 0)
        {
            SEG1(ch_table[RunData.Adjust_Flow_50_value], 0);
            SEG2(ch_table[RunData.Adjust_Flow_50_value], 0);
            SEG3(ch_table[RunData.Adjust_Flow_50_value], 0);
        }
    }

    if(Adjust_Flow_100 == 1)
    {
        if (Engineering_Pattern.IKey == 3)
        {
            DelayMs(200);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_100_value++;
            if (RunData.Adjust_Flow_100_value >= 3)
                RunData.Adjust_Flow_100_value = 3;
            Engineering_Pattern.Time = 0;
        }
        if (Engineering_Pattern.IKey == 4)
        {
            DelayMs(200);
            BeepCtr1(Engineering_Pattern.IKey);
            RunData.Adjust_Flow_100_value--;
            if (RunData.Adjust_Flow_100_value <= -3)
                RunData.Adjust_Flow_100_value = -3;
            Engineering_Pattern.Time = 0;
        }

        if (RunData.Adjust_Flow_100_value > 0)
        {
            Engineering_Flow_Compensation_display1(1);
            SEG3(ch_table[RunData.Adjust_Flow_100_value], 0);
        }
        if (RunData.Adjust_Flow_100_value < 0)
        {
            Engineering_Flow_Compensation_display1(0);
            SEG3(ch_table[-RunData.Adjust_Flow_100_value], 0);
        }
        if (RunData.Adjust_Flow_100_value == 0)
        {
            SEG1(ch_table[RunData.Adjust_Flow_100_value], 0);

            SEG2(ch_table[RunData.Adjust_Flow_100_value], 0);
            SEG3(ch_table[RunData.Adjust_Flow_100_value], 0);
        }
    }
    //Update_Display();
    Engineering_Timeout_Logic(currentMode);
    if (Engineering_Pattern.Return_Flag == 1)
    {
        Engineering_Pattern.Led_Display_Flow = 0;

        Engineering_Pattern.Time_Start_Flag = 0; // 计时标志位置1，开始计时
        Engineering_Pattern.Time = 0;
        Engineering_Pattern.Return_Flag = 0;
        E2prom_WriteData();
        Engineering_Pattern.Led_Display_Timing_Enbale = 0;
        Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
        currentMode = ENGINEERING_MODE_IDLE; // 返回到空闲状态
        Engineering_Pattern.Mode = 0;
        return;
    }
}

// 工程模式状态机 - 超时逻辑
void Engineering_Timeout_Logic(Engineering_Mode Mode_Status)
{
    switch (Mode_Status)
    {
    case ENGINEERING_MODE_CLEAR_WORKTIME:
        if (Engineering_Pattern.Time >= 5)
        {
            Engineering_Pattern.Time = 0;
            Engineering_Pattern.Return_Flag = 1;
            BeepCtr1(2);
        }
        break;
    case ENGINEERING_MODE_VOLTAGE_CALIBRATION:
        if (Engineering_Pattern.Time >= 10)
        {
            Engineering_Pattern.Time = 0;
            Engineering_Pattern.Return_Flag = 1;
            BeepCtr1(2);
        }
        break;
    case ENGINEERING_MODE_FLOW_COMPENSATION:
        if (Engineering_Pattern.Time >= 15)
        {
            Engineering_Pattern.Time = 0;
            Engineering_Pattern.Return_Flag = 1;
            BeepCtr1(2);
        }
        break;
    case ENGINEERING_MODE_ADJUST_JYTIME:
        if (Engineering_Pattern.Time >= 15)
        {
            Engineering_Pattern.Time = 0;
            Engineering_Pattern.Return_Flag = 1;
            BeepCtr1(2);
        }
        break;
    case ENGINEERING_MODE_PD:
        if (Engineering_Pattern.Time >= 15)
        {
            Engineering_Pattern.Time = 0;
            Engineering_Pattern.Return_Flag = 1;
            BeepCtr1(2);
        }
        break;
        // default:
        //     Engineering_Pattern.Time = 0;
        //     Engineering_Pattern.Return_Flag = 0;
        //     break;
    }
}