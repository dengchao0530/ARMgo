/**
  **************************************************************************************************************
  * @file    	    touch.h
  * @author  	    FMD AE
  * @brief   	    
  * @version 	    V1.0.1          
  * @data		    2023-07-21
  **************************************************************************************************************
  * @attention
  * COPYRIGHT (C) 2022 Fremont Micro Devices Corporation All rights reserved.
  *    This software is provided by the copyright holders and contributors,and the
  *software is believed to be accurate and reliable. However, Fremont Micro Devices
  *Corporation assumes no responsibility for the consequences of use of such
  *software or for any infringement of patents of other rights of third parties,
  *which may result from its use. No license is granted by implication or otherwise
  *under any patent rights of Fremont Micro Devices Corporation.
  ***************************************************************************************************************
  */  
  
/****************************************************************************************************************
  * @оƬ��Դ
  * 1. Device: FT62F0GX
  * 2. Memory: Flash 16KX16b, EEPROM 128X8b, SRAM 2048X8b
  * @��ʹ����Դ˵��:
  * 1. TIMER2
  * 2. LVD�ж�
  * 3. ROM & SARM (K = 1������led.c)  
  *     ������            		ROM *14b      	 SRAM*8b
  *  touch.lpp							
  *  touch_cs.lpp				
  *  touch_lp.lpp				
  *  touch_cs_lp.lpp			
  *
  ***************************************************************************************************************
  */  
  
#ifndef	__TOUCH_H__
#define	__TOUCH_H__

//��汾;
#define TOUCH_LIB_VERSION        V1.0.1                 //��汾;

//{{VERSION_DEFINE
//}}VERSION_DEFINE

///////////ͷ�ļ�/////////////////////////////////////
#include <string.h>
#include "SYSCFG.h"
#include "main.h"
//{{CONST_DEFINE
#define TOUCH_TOOL_VERSION    V2.0.3.1

//#define TOUCH_DEBUG
//#define _DEF_LOW_POWER
//#define TOUCH_CS
#define  TX									PB0
#define  RX									PB1
/////////ϵͳʱ�Ӷ���//////////////////////////////////////
#define	SYS_OSCCON							0B01110001 //16M
#ifdef	TOUCH_DEBUG
	#define TRISA_CONFIG					0B11111111 
	#define TRISB_CONFIG					0B11111110 
	#define TRISC_CONFIG					0B11111111 
	#define	TRISD_CONFIG					0B11111111 
	#define TRISE_CONFIG					0B11111111 
	#define TRISF_CONFIG					0B11111111 
#else
	#define TRISA_CONFIG					0B00010000 
	#define TRISB_CONFIG					0B00000000 
	#define TRISC_CONFIG					0B00000000 
	#define TRISD_CONFIG					0B00000000 
	#define TRISE_CONFIG					0B00000000 
	#define TRISF_CONFIG					0B00000000 
#endif

//}}CONST_DEFINE

//{{KEY_DEFINE
/////////������ӦоƬKEYIOӳ�䶨��//////////////////////////
#define   KEY0_INDEX_MAP       32
#define   KEY1_INDEX_MAP       33
#define   KEY2_INDEX_MAP       34
#define   KEY3_INDEX_MAP       35

#define   KEY_NUMBER             4  //������
//}}KEY_DEFINE

//{{KEY_ONOFF_VALUE
/////////////������Ч��ֵ////////////////////////////////////
#define   KEY0_ON                15
#define   KEY1_ON                15
#define   KEY2_ON                15
#define   KEY3_ON                15

///////////������Ч��ֵ//////////////////////////////////////
#define   KEY0_OFF               10
#define   KEY1_OFF               10
#define   KEY2_OFF               10
#define   KEY3_OFF               10
//}}KEY_ONOFF_VALUE

//{{OTHER_CONST_PARAMS
//////////�ɼ����ݴ�����ض���///////////////////////////////////////////
#define   LOCAL_FILTER               3     //�ఴ���˲�����
#define   LOCAL_FILTER_SAMPLES       4     //�ఴ���˲���������
#define   CS_FILTER                  3     //CS�����˲�����
#define   CS_FILTER_SAMPLES          4     //CS�����˲���������
#define   BL_SLOW_DOWN_SPEED         100     //�������¸����ٶ�
#define   BL_SLOW_UP_SPEED           50     //�������ϸ����ٶ�
#define   BL_SLOW_DIFF_COEFF         2                    //���ٸ����Ѷ�ϵ��
#define   BL_CATCHUP_DOWN_SPEED      200     //�������¸����ٶ�
#define   BL_CATCHUP_UP_SPEED        100     //�������ϸ����ٶ�
#define   BL_CATCHUP_DIFF_COEFF      3                    //���ٸ����Ѷ�ϵ��
#define	MEANTIME_MAX_KEY_NUM       KEY_NUMBER  

//////////����״̬��CSģʽ�µ������ж�///////////////////////////////////////////
#define   RESONANCE_DATA_FILTER      5    

#define   MULTIPLE                   96    //�Ŵ���
#define   CS_ON_FACTOR               20    //���������
#define   CS_OFF_FACTOR              20    //���������
//}}OTHER_CONST_PARAMS
#ifdef _DEF_LOW_POWER
////////�͹��Ķ���///////////////////////////////////////////////////
//˯��ģʽ�µĻ��߸���
#define	SLEEP_BL_UPDATA_SPEED				8
//���ٴ��ް������½���͹���,�������а�����һ��
#define	SLEEP_MODE_WAIT_NUMBER				( ((unsigned int)5000)/KEY_NUMBER)
//�͹���״̬�¿��Ź�����Ƶ��
#define	SLEEP_RATE_SET0						0B00001111      // 1/4096
#define	SLEEP_RATE_SET1						0B00001111      // 1/4096
//��������ÿ2sɨһ�Σ���ô���� 2000/128 = 15
#define	SLEEP_UPDATA_BASELINE_WAIT_NUMBER	16 
//{{PARAM_LOWPOWER
//�͹��İ�����Ч��ֵ
#define SLEEP_KEY_ON_VALUE					0
//�͹���ɨ�������
#define SLEEP_SCAN_GROUP					    0

#define TOUCH_IO_MASK_A						0x00FF
#define TOUCH_IO_MASK_B						0x00FF
#define TOUCH_IO_MASK_C						0x00FF
#define TOUCH_IO_MASK_D						0x00FF
#define TOUCH_IO_MASK_E						0x0000
#define TOUCH_IO_MASK_F						0x0000

#define	SLEEP_TRIS_AB_0						0x0003
#define	SLEEP_TRIS_CD_0						0x0000
#define	SLEEP_TK_01_0						0x000C
#define	SLEEP_TK_23_0						0x00C0
#define	SLEEP_TRIS_AB_1						0x0000
#define	SLEEP_TRIS_CD_1						0x0003
#define	SLEEP_TK_01_1      					0x0003
#define	SLEEP_TK_23_1     					0x00C0
#define	SLEEP_TRIS_AB_2						0x6000
#define	SLEEP_TRIS_CD_2						0x0000
#define	SLEEP_TK_01_2      					0x6000
#define	SLEEP_TK_23_2     					0x00C0
#define	SLEEP_TRIS_AB_3	 					0x0000
#define	SLEEP_TRIS_CD_3    					0x0000
#define	SLEEP_TK_01_3      					0x0000
#define	SLEEP_TK_23_3     					0x0000
#define	SLEEP_TRIS_AB_4	 					0x0000
#define	SLEEP_TRIS_CD_4    					0x0000
#define	SLEEP_TK_01_4      					0x0000
#define	SLEEP_TK_23_4     					0x0000
#define	SLEEP_TRIS_AB_5	 					0x0000
#define	SLEEP_TRIS_CD_5						0x0000
#define	SLEEP_TK_01_5						0x0000
#define	SLEEP_TK_23_5						0x0000
#define	SLEEP_TRIS_AB_6						0x0000
#define	SLEEP_TRIS_CD_6						0x0000
#define	SLEEP_TK_01_6						0x0000
#define	SLEEP_TK_23_6						0x0000
#define	SLEEP_TRIS_AB_7						0x0000
#define	SLEEP_TRIS_CD_7						0x0000
#define	SLEEP_TK_01_7						0x0000
#define	SLEEP_TK_23_7						0x0000
#define	SLEEP_TRIS_AB_8						0x0000
#define	SLEEP_TRIS_CD_8						0x0000
#define	SLEEP_TK_01_8						0x0000
#define	SLEEP_TK_23_8						0x0000
#define	SLEEP_TRIS_AB_9						0x0000
#define	SLEEP_TRIS_CD_9						0x0000
#define	SLEEP_TK_01_9						0x0000
#define	SLEEP_TK_23_9						0x0000
#define	SLEEP_TRIS_AB_10						0x0003
#define	SLEEP_TRIS_CD_10						0x0000
#define	SLEEP_TK_01_10						0x000C
#define	SLEEP_TK_23_10						0x00C0
#define	SLEEP_TRIS_AB_11						0x0000
#define	SLEEP_TRIS_CD_11						0x0003
#define	SLEEP_TK_01_11      					0x0003
#define	SLEEP_TK_23_11     					0x00C0
#define	SLEEP_TRIS_AB_12						0x6000
#define	SLEEP_TRIS_CD_12						0x0000
#define	SLEEP_TK_01_12      					0x6000
#define	SLEEP_TK_23_12     					0x00C0
#define	SLEEP_TRIS_AB_13	 					0x0000
#define	SLEEP_TRIS_CD_13    					0x0000
#define	SLEEP_TK_01_13      					0x0000
#define	SLEEP_TK_23_13     					0x0000
#define	SLEEP_TRIS_AB_14	 					0x0000
#define	SLEEP_TRIS_CD_14    					0x0000
#define	SLEEP_TK_01_14      					0x0000
#define	SLEEP_TK_23_14     					0x0000
#define	SLEEP_TRIS_AB_15	 					0x0000
#define	SLEEP_TRIS_CD_15						0x0000
#define	SLEEP_TK_01_15						0x0000
#define	SLEEP_TK_23_15						0x0000
//}}PARAM_LOWPOWER
#endif

#define	RESERVED						    0x0000

////////Ƶ��΢������///////////////////////////////////////////////////
#define	FREQ_CHARGER_L						0X80		//ɨ��Ƶ��
#define	FREQ_CHARGER_H						0X02		//ɨ��Ƶ��

#ifdef TOUCH_CS
#define FREQ_CHANGER_NUMBER_MIN   			12		    //ÿ����ɨ�����С��������ֵ������Ƶ�����ı���
#else 
#define FREQ_CHANGER_NUMBER_MIN   			3		    //ÿ����ɨ�����С��������ֵ������Ƶ�����ı���
#endif

const unsigned char ucFREQ_CHANGER_NUMBER_MIN           = FREQ_CHANGER_NUMBER_MIN;

/* �������� */
const unsigned char RES_CONFIG = 0xFF;

//{{KEY_MAP
////////������ӦKEYIOӳ���/////////////////////////////////////////////
const unsigned char ucKeyIndexMapArray[KEY_NUMBER]=
{
   KEY0_INDEX_MAP,
   KEY1_INDEX_MAP,
   KEY2_INDEX_MAP,
   KEY3_INDEX_MAP,
};
//}}KEY_MAP
#ifndef TOUCH_DEBUG
//{{KEY_ONOFF_ARRARY
const unsigned char ucActiveSensorDeltaArray[KEY_NUMBER]=
{
    KEY0_ON, KEY1_ON, KEY2_ON, KEY3_ON   
};


const unsigned char ucInActiveSensorDeltaArray[KEY_NUMBER]=
{
    KEY0_OFF, KEY1_OFF, KEY2_OFF, KEY3_OFF   
};
const unsigned char ucMULTIPLE = MULTIPLE;
//}}KEY_ONOFF_ARRARY
const unsigned char ucCS_FILTER 						= CS_FILTER;
const unsigned char ucCS_FILTER_SAMPLES					= CS_FILTER_SAMPLES;
const unsigned char ucCS_ON_FACTOR 						= CS_ON_FACTOR;	
const unsigned char ucCS_OFF_FACTOR 					= CS_OFF_FACTOR;	
#endif
const unsigned char ucKEY_NUMBER_MAX 					= KEY_NUMBER;
const unsigned char ucRESONANCE_DATA_FILTER 			= RESONANCE_DATA_FILTER;

const unsigned char ucLOCAL_FILTER 						= LOCAL_FILTER;
const unsigned char ucLOCAL_FILTER_SAMPLES 				= LOCAL_FILTER_SAMPLES;
const unsigned char ucBL_SLOW_DOWN_SPEED 				= BL_SLOW_DOWN_SPEED;
const unsigned char ucBL_SLOW_UP_SPEED 					= BL_SLOW_UP_SPEED;
const unsigned char ucBL_SLOW_DIFF_COEFF 				= BL_SLOW_DIFF_COEFF;
const unsigned char ucBL_CATCHUP_UP_SPEED 				= BL_CATCHUP_UP_SPEED;
const unsigned char ucBL_CATCHUP_DOWN_SPEED 			    = BL_CATCHUP_DOWN_SPEED;
const unsigned char ucBL_CATCHUP_DIFF_COEFF 			= BL_CATCHUP_DIFF_COEFF;	
const unsigned char ucMEANTIME_MAX_KEY_NUM 				= MEANTIME_MAX_KEY_NUM;
const unsigned char ucFREQ_CHARGER_L 					= FREQ_CHARGER_L;
const unsigned char ucFREQ_CHARGER_H 					= FREQ_CHARGER_H;
const unsigned char ucTKdata_Size 			            = KEY_NUMBER;
#ifdef _DEF_LOW_POWER
const unsigned char ucSLEEP_RATE_SET0 					= SLEEP_RATE_SET0;
const unsigned char ucSLEEP_RATE_SET1 					= SLEEP_RATE_SET1;
const unsigned int  uiSLEEP_MODE_WAIT_NUMBER 			= SLEEP_MODE_WAIT_NUMBER;
const unsigned char ucSLEEP_BL_UPDATA_SPEED 			= SLEEP_BL_UPDATA_SPEED;
const unsigned char ucSLEEP_UPDATA_BASELINE_WAIT_NUMBER = SLEEP_UPDATA_BASELINE_WAIT_NUMBER; 
const unsigned char ucSLEEP_KEY_ON_VALUE 				= SLEEP_KEY_ON_VALUE; 
const unsigned char ucSLEEP_SCAN_GROUP 					= SLEEP_SCAN_GROUP; 


const unsigned char ucTOUCH_IO_MASK_A 					= TOUCH_IO_MASK_A; 
const unsigned char ucTOUCH_IO_MASK_B 					= TOUCH_IO_MASK_B; 
const unsigned char ucTOUCH_IO_MASK_C = TOUCH_IO_MASK_C; 
const unsigned char ucTOUCH_IO_MASK_D = TOUCH_IO_MASK_D; 
const unsigned char ucTOUCH_IO_MASK_E = TOUCH_IO_MASK_E; 
const unsigned char ucTOUCH_IO_MASK_F = TOUCH_IO_MASK_F; 

const unsigned int uiSLEEP_KEY_GPIO_CONFIG[16][4] =
{
    //SLEEP_TK_01_0,SLEEP_TK_23_0,SLEEP_TK_45_0,RESERVED,
    SLEEP_TK_01_0,  SLEEP_TK_23_0,  SLEEP_TK_45_0,  RESERVED,
    SLEEP_TK_01_1,  SLEEP_TK_23_1,  SLEEP_TK_45_1,  RESERVED,
    SLEEP_TK_01_2,  SLEEP_TK_23_2,  SLEEP_TK_45_2,  RESERVED,
    SLEEP_TK_01_3,  SLEEP_TK_23_3,  SLEEP_TK_45_3,  RESERVED,
    SLEEP_TK_01_4,  SLEEP_TK_23_4,  SLEEP_TK_45_4,  RESERVED,
    SLEEP_TK_01_5,  SLEEP_TK_23_5,  SLEEP_TK_45_5,  RESERVED,
    SLEEP_TK_01_6,  SLEEP_TK_23_6,  SLEEP_TK_45_6,  RESERVED,
    SLEEP_TK_01_7,  SLEEP_TK_23_7,  SLEEP_TK_45_7,  RESERVED,  
    SLEEP_TK_01_8,  SLEEP_TK_23_8,  SLEEP_TK_45_8,  RESERVED,
    SLEEP_TK_01_9,  SLEEP_TK_23_9,  SLEEP_TK_45_9,  RESERVED,
    SLEEP_TK_01_10, SLEEP_TK_23_10, SLEEP_TK_45_10, RESERVED,
    SLEEP_TK_01_11, SLEEP_TK_23_11, SLEEP_TK_45_11, RESERVED,
    SLEEP_TK_01_12, SLEEP_TK_23_12, SLEEP_TK_45_12, RESERVED,
    SLEEP_TK_01_13, SLEEP_TK_23_13, SLEEP_TK_45_13, RESERVED,
    SLEEP_TK_01_14, SLEEP_TK_23_14, SLEEP_TK_45_14, RESERVED,
    SLEEP_TK_01_15, SLEEP_TK_23_15, SLEEP_TK_45_15, RESERVED,      
};

//�͹��Ĺ��ܺ�������
void TSC_SleepPrcoessing(void);//����״̬�µİ�����⴦������
void TSC_Sleep(void);
////////�͹��Ķ���///////////////////////////////////////////////////
#endif

#ifdef _DEF_LOW_POWER
    const unsigned int (*puiSLEEP)[4] = uiSLEEP_KEY_GPIO_CONFIG;
#else
    const unsigned int (*puiSLEEP)[4] = 0;
#endif

extern volatile bit bTestSleepFlag;
///////////���ܺ�������/////////////////////////////////////
void TSC_Scan(void);
void HardDiv(void);
void HardMul(void);
void TSC_INITIAL(void);    //�����������ó�ʼ��          
void TSC_Start(void);      //����ɨ��������ÿ��ֻ��һ��������һ��ɨ�账��
void TSC_Start_Test(void); //debugģʽ�µİ���ɨ��
void TSC_Reset(void);      //��λ����. ����������ʹ��
unsigned char TSC_DataProcessing(void);//���а������ݴ���״̬: 1��ʾ���а������ݴ������ 0��ʾδ����������
unsigned char TSC_GetCsKey(void);      //��ȡCS����ֵ
void TSC_GetLocalKey(unsigned long *ptr); //ptr:�ⲿ�����һ�������׵�ַ��������2��*ptr ����ʾ1-32��������״̬��*(ptr + 1) ����ʾ32-44��������״̬����ȡ������Ч��־��ÿbit��ʾһ������1Ϊ�а������£�0Ϊ�ް������� 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //��ǰ�����ɼ�����ֵ
unsigned int TSC_GetBaseValue(unsigned char KeyNum);//��ǰ�����ɼ�����ֵ
unsigned char TSC_GetDelta(unsigned char KeyNum);
void TSC_SLEEP_Enable(void);
void TSC_SLEEP_Disable(void);
unsigned char Get_TSC_SLEEP_State(void);
unsigned char EEPROMread(unsigned char EEAddr);
void EEPROMwrite(unsigned char EEAddr,unsigned char Data);

#endif

///////////////////////////////////////////////////////
//CONST_ROM_TOTAL         16384
//CONST_RAM_TOTAL         2048
//CONST_ROM_TOUCH         1584+3*KEY_NUMBER
//CONST_ROM_CS_TOUCH      1876+3*KEY_NUMBER   
//CONST_ROM_LP_TOUCH      2412+3*KEY_NUMBER
//CONST_ROM_CS_LPTOUCH    2702+3*KEY_NUMBER
//CONST_RAM_TOUCH         103+8*KEY_NUMBER
//CONST_RAM_CS_TOUCH      102+8*KEY_NUMBER
//CONST_RAM_LP_TOUCH      94+10*KEY_NUMBER
//CONST_RAM_CS_LPTOUCH    99+10*KEY_NUMBER
//CONST_TIMER_TOTAL       7
//CONST_TIMER_USED        1
//CONST_TIMER             T2