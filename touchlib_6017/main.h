#ifndef __MAIN_H__
#define __MAIN_H__

#include	"SYSCFG.h"
#include    "touch.h"
#include    "led.h"
#include    "uart.h"

#define FLOW_SET 7   //7��
#define RELARE_FLOW  5//5��

/* ʹ�ܳ˳�����ʱ�� */
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
	u8 PowkeyFlag;//0:��Դ���ش򿪣�1��Դ���عر�
	u8 SOSFlag;//���SOS��־
	u8 SysSta;//ϵͳ״̬
    u8 SysSta2;//ϵͳ״̬2������������������
	int FlowSet;//���� = Flow/10
    u16 DC12_V;//ACתDC��ѹ
    u16 ACDC_V;//ACתDC��ѹ
	int FlowValue;//��ǰ����
	int TempValue;//��ǰ�¶�
	int Concentration;//Ũ��
	int RunTime;//����ʱ��
	int Timing;//��ʱʱ��
	u8 TimingFlag;
    u8 TimingVoiceFlag;//��־λ�����ζ�ʱ����ʱ���ѵ���ллʹ��
	long CumulativeTime;//�ۼ�ʱ��
	int JY_TimeSet;//��ѹʱ��		*10ms
	int XF_TimeSet;//����ʱ��  *100ms
	int PD_TimeSet;//�ŵ�ʱ��		*10ms
	int JY_TimeCount;//��ѹʱ��
	int XF_TimeCount;//����ʱ��	
	int PD_TimeCount;
    int FLOW_Trim;//����΢��
	int SolenoidValveCount;//��ŷ����м���
	u8 AnionSta;//������״̬
	u8 VoiceSta;//��������״̬
	u8 FilterMeshSta;//�������״̬
	u8 StandbySta;//����״̬0��������1����
	u8 FilterMeshFlag;//����������־
	u8 VoiceNum;//�������
	u8 VoiceEnable;//����ʹ��
	u16 AOD_TimeCount;//Ϣ����ʱ
	u8 ComprStep;//ѹ������������
	u8 StepMode;//�������ģʽ
	u8 VoiceNumLast;//��һ������
	u8 StandbyStaFlag;//˯��״̬����������
	u16 VoiceCount;//������ʱ���ż�ʱ
//	u16 IR_Count;//�����źŽ��ܼ�ʱ
//	u8 SOSFlag;//���SOS��־
	u16 SETCount;
    u16 AlarmSwitch;//1�������ر�  0������
    u16 AutoSaveDataCount;//���������Զ��������ݼ���
    u16 sec;
	u16 AlarmLEDCount;//����led������
	u16 ErrCodeSecCount;//�����봥����ʱ

    u8 Error_Flag;                                      //todo:->2023/12/13 add:��Ӵ�������־λ�������޸��쳣״̬�µĶ�ʱʱ�䲻��ʾ������ status->������ɣ�����ʹ��
    u8 Error_Delay_Time;                                //todo:->2023/12/13 add:2S���л����������룬�����޸��쳣״̬�µĶ�ʱʱ�䲻��ʾ������ status->������ɣ�����ʹ��

    u8 TOUCHkey_Finally_Time;                           //todo:->2023/12/13 add:���ڼ�¼�������յ�ʱ��

	int Voltage_Calibration;								//todo:->2023/12/19 add:��ѹУֵ

	u8 last_SysSta;//ϵͳ״̬

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
