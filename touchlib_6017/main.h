#ifndef __MAIN_H__
#define __MAIN_H__

#include	"SYSCFG.h"
#include    "touch.h"
#include    "led.h"
#include    "uart.h"

#define FLOW_SET 7   //7升
#define RELARE_FLOW  5//5升

/* 使能乘除法器时钟 */
#define     DIVIDER_ENABLE    MDCKEN = 1  
#define VERSION 101

#define Ikey_Debug_Mode 1

typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

typedef unsigned char u8;
typedef unsigned int u16;
typedef unsigned long u32;

typedef struct
{
	u8 PowkeyFlag;//0:电源开关打开，1电源开关关闭
	u8 SOSFlag;//求救SOS标志
	u8 SysSta;//系统状态
    u8 SysSta2;//系统状态2用来处理警告响声问题
	int FlowSet;//流量 = Flow/10
    u16 DC12_V;//AC转DC电压
    u16 ACDC_V;//AC转DC电压
	int FlowValue;//当前流量
	int TempValue;//当前温度
	int Concentration;//浓度
	int RunTime;//运行时间
	int Timing;//定时时间
	u8 TimingFlag;
    u8 TimingVoiceFlag;//标志位：本次定时氧疗时间已到，谢谢使用
	long CumulativeTime;//累计时间
	int JY_TimeSet;//均压时间		*10ms
	int XF_TimeSet;//吸附时间  *100ms
	int PD_TimeSet;//排氮时间		*10ms
	int JY_TimeCount;//均压时间
	int XF_TimeCount;//吸附时间	
	int PD_TimeCount;
    int FLOW_Trim;//流量微调
	int SolenoidValveCount;//电磁阀运行计数
	u8 AnionSta;//负离子状态
	u8 VoiceSta;//智能语音状态
	u8 FilterMeshSta;//清洁滤网状态
	u8 StandbySta;//待机状态0，开机，1待机
	u8 FilterMeshFlag;//清洁过滤网标志
	u8 VoiceNum;//语音序号
	u8 VoiceEnable;//语音使能
	u16 AOD_TimeCount;//息屏计时
	u8 ComprStep;//压缩机工作步骤
	u8 StepMode;//步进电机模式
	u8 VoiceNumLast;//上一条语音
	u8 StandbyStaFlag;//睡眠状态标至，语音
	u16 VoiceCount;//语音延时播放计时
//	u16 IR_Count;//红外信号接受计时
//	u8 SOSFlag;//求救SOS标志
	u16 SETCount;
    u16 AlarmSwitch;//1：报警关闭  0报警打开
    u16 AutoSaveDataCount;//按键触发自动保存数据计数
    u16 sec;
	u16 AlarmLEDCount;//报警led计数器
	u16 ErrCodeSecCount;//故障码触发计时

    u8 Error_Flag;                                      //todo:->2023/12/13 add:添加错误发生标志位，用于修复异常状态下的定时时间不显示的问题 status->测试完成，可以使用
    u8 Error_Delay_Time;                                //todo:->2023/12/13 add:2S后切换到报警代码，用于修复异常状态下的定时时间不显示的问题 status->测试完成，可以使用

    u8 TOUCHkey_Finally_Time;                           //todo:->2023/12/13 add:用于记录长按最终的时间

	int Voltage_Calibration;								//todo:->2023/12/19 add:电压校值

	u8 last_SysSta;//系统状态

	int Adjust_Flow_20_value;
    int Adjust_Flow_50_value;
    int Adjust_Flow_100_value;

	int negative_Adjust_Flow_20_Flag;
	int negative_Adjust_Flow_50_Flag;
	int negative_Adjust_Flow_100_Flag;

	int FilterMesh_Delay_Flag;
	int FilterMesh_Delay_Time;

	int Power_After_OnFlag;
	int Power_After_OnFlag_Time;
}RUN_DATA;

extern RUN_DATA	RunData;
void DelayUs(uint16_t Time);
void Delay10Us(void);
void TSC_Scan(void);
void ConmunicateToPc(void);
void SleepProcess(void);
void TSC_SleepPrcoessing(void);
void DelayMs(uint16_t Time);
void Get_Key_Demo(void);
void Voicedelay(uint16_t Time);
#endif
