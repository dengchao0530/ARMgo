#ifndef __SETSYSDATA_H
#define __SETSYSDATA_H 			   

#include "touchkey.h"
#include "main.h"


typedef struct {
    u8 Time_Start_Flag;//��ʱ����ʼ��ʱ��־λ
    u8 Time;           //��ʱλ Time_Start_FlagΪ1��ʼ��ʱ
    u8 Time_End_Flag;  //����ģʽ�˳���־
    u8 Engineering_Mode;//���빤��ģʽ��־λ
    u8 IKey;            //����ң��������ֵ
    u8 Return_Flag; //�˳���־
    u8 Mode;        
    u8 Led_Display_Timing_Enbale;//���� ��ʱʱ��ʹ��
    u8 Led_Display_CumulativeTime_Enbale;//�ۼ�ʱ����ʾʹ��
    u8 Led_Dispaly_CloseAlarm;//�رձ���ʹ��
    u8 Led_Display_Flow;    //������ʾʹ��
}engineering_pattern;

// ö�����Ͷ��幤��ģʽ�Ĳ�ͬ�׶�
typedef enum {
    ENGINEERING_MODE_IDLE,  //����ģʽ����
    ENGINEERING_MODE_CLEAR_WORKTIME,//����ģʽ����ۼ�ʱ��
    ENGINEERING_MODE_VOLTAGE_CALIBRATION,//����ģʽ��ѹУ׼
    ENGINEERING_MODE_FLOW_COMPENSATION, //����ģʽ��������
    ENGINEERING_MODE_ADJUST_JYTIME,//����ģʽ������ѹʱ��
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





























