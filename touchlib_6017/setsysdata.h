#ifndef __SETSYSDATA_H
#define __SETSYSDATA_H 			   

#include "touchkey.h"
#include "main.h"


typedef struct {
    u8 Time_Start_Flag;//定时器开始计时标志位
    u8 Time;           //计时位 Time_Start_Flag为1开始计时
    u8 Time_End_Flag;  //工程模式退出标志
    u8 Engineering_Mode;//进入工程模式标志位
    u8 IKey;            //工程遥控器按键值
    u8 Return_Flag; //退出标志
    u8 Mode;        
    u8 Led_Display_Timing_Enbale;//运行 定时时间使能
    u8 Led_Display_CumulativeTime_Enbale;//累计时间显示使能
    u8 Led_Dispaly_CloseAlarm;//关闭报警使能
    u8 Led_Display_Flow;    //流量显示使能
}engineering_pattern;

// 枚举类型定义工程模式的不同阶段
typedef enum {
    ENGINEERING_MODE_IDLE,  //工程模式空闲
    ENGINEERING_MODE_CLEAR_WORKTIME,//工程模式清楚累计时间
    ENGINEERING_MODE_VOLTAGE_CALIBRATION,//工程模式电压校准
    ENGINEERING_MODE_FLOW_COMPENSATION, //工程模式流量补偿
    ENGINEERING_MODE_ADJUST_JYTIME,//工程模式调整均压时间
    ENGINEERING_MODE_PD,
} Engineering_Mode;

extern engineering_pattern Engineering_Pattern;

void Engineering_Mode_init();
void Engineering_Mode_Api();
void Goto_Engineering_Mode();
void Engineering_Clear_WorkTime();
void Engineering_Voltage_Calibration();
void Engineering_Flow_Compensation();
void Engineering_Timeout_Logic(Engineering_Mode Mode_Status);
void Engineering_Adjust_JYTime();
void Engineering_Adjust_PDTime();
#endif





























