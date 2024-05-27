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
  * @芯片资源
  * 1. Device: FT62F0GX
  * 2. Memory: Flash 16KX16b, EEPROM 128X8b, SRAM 2048X8b
  * @库使用资源说明:
  * 1. TIMER2
  * 2. LVD中断
  * 3. ROM & SARM (K = 1不包含led.c)  
  *     库类型            		ROM *14b      	 SRAM*8b
  *  touch.lpp							
  *  touch_cs.lpp				
  *  touch_lp.lpp				
  *  touch_cs_lp.lpp			
  *
  ***************************************************************************************************************
  */  
  
#ifndef	__TOUCH_H__
#define	__TOUCH_H__

//库版本;
#define TOUCH_LIB_VERSION        V1.0.1                 //库版本;

//{{VERSION_DEFINE
//}}VERSION_DEFINE

///////////头文件/////////////////////////////////////
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
/////////系统时钟定义//////////////////////////////////////
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
/////////按键对应芯片KEYIO映射定义//////////////////////////
#define   KEY0_INDEX_MAP       32
#define   KEY1_INDEX_MAP       33
#define   KEY2_INDEX_MAP       34
#define   KEY3_INDEX_MAP       35

#define   KEY_NUMBER             4  //按键数
//}}KEY_DEFINE

//{{KEY_ONOFF_VALUE
/////////////按键有效阀值////////////////////////////////////
#define   KEY0_ON                15
#define   KEY1_ON                15
#define   KEY2_ON                15
#define   KEY3_ON                15

///////////按键无效阀值//////////////////////////////////////
#define   KEY0_OFF               10
#define   KEY1_OFF               10
#define   KEY2_OFF               10
#define   KEY3_OFF               10
//}}KEY_ONOFF_VALUE

//{{OTHER_CONST_PARAMS
//////////采集数据处理相关定义///////////////////////////////////////////
#define   LOCAL_FILTER               3     //多按键滤波次数
#define   LOCAL_FILTER_SAMPLES       4     //多按键滤波采样次数
#define   CS_FILTER                  3     //CS按键滤波次数
#define   CS_FILTER_SAMPLES          4     //CS按键滤波采样次数
#define   BL_SLOW_DOWN_SPEED         100     //慢速向下更新速度
#define   BL_SLOW_UP_SPEED           50     //慢速向上更新速度
#define   BL_SLOW_DIFF_COEFF         2                    //慢速更新难度系数
#define   BL_CATCHUP_DOWN_SPEED      200     //慢速向下更新速度
#define   BL_CATCHUP_UP_SPEED        100     //慢速向上更新速度
#define   BL_CATCHUP_DIFF_COEFF      3                    //慢速更新难度系数
#define	MEANTIME_MAX_KEY_NUM       KEY_NUMBER  

//////////正常状态或CS模式下的条件判定///////////////////////////////////////////
#define   RESONANCE_DATA_FILTER      5    

#define   MULTIPLE                   96    //放大倍数
#define   CS_ON_FACTOR               20    //整体信噪比
#define   CS_OFF_FACTOR              20    //整体信噪比
//}}OTHER_CONST_PARAMS
#ifdef _DEF_LOW_POWER
////////低功耗定义///////////////////////////////////////////////////
//睡眠模式下的基线更新
#define	SLEEP_BL_UPDATA_SPEED				8
//多少次无按键按下进入低功耗,处理所有按键计一次
#define	SLEEP_MODE_WAIT_NUMBER				( ((unsigned int)5000)/KEY_NUMBER)
//低功耗状态下看门狗唤醒频率
#define	SLEEP_RATE_SET0						0B00001111      // 1/4096
#define	SLEEP_RATE_SET1						0B00001111      // 1/4096
//次数，即每2s扫一次，那么就是 2000/128 = 15
#define	SLEEP_UPDATA_BASELINE_WAIT_NUMBER	16 
//{{PARAM_LOWPOWER
//低功耗按键有效阈值
#define SLEEP_KEY_ON_VALUE					0
//低功耗扫描组合数
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

////////频率微调定义///////////////////////////////////////////////////
#define	FREQ_CHARGER_L						0X80		//扫描频率
#define	FREQ_CHARGER_H						0X02		//扫描频率

#ifdef TOUCH_CS
#define FREQ_CHANGER_NUMBER_MIN   			12		    //每按键扫描的最小次数，其值必须是频点数的倍数
#else 
#define FREQ_CHANGER_NUMBER_MIN   			3		    //每按键扫描的最小次数，其值必须是频点数的倍数
#endif

const unsigned char ucFREQ_CHANGER_NUMBER_MIN           = FREQ_CHANGER_NUMBER_MIN;

/* 电阻配置 */
const unsigned char RES_CONFIG = 0xFF;

//{{KEY_MAP
////////按键对应KEYIO映射表/////////////////////////////////////////////
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

//低功耗功能函数定义
void TSC_SleepPrcoessing(void);//休眠状态下的按键检测处理流程
void TSC_Sleep(void);
////////低功耗定义///////////////////////////////////////////////////
#endif

#ifdef _DEF_LOW_POWER
    const unsigned int (*puiSLEEP)[4] = uiSLEEP_KEY_GPIO_CONFIG;
#else
    const unsigned int (*puiSLEEP)[4] = 0;
#endif

extern volatile bit bTestSleepFlag;
///////////功能函数定义/////////////////////////////////////
void TSC_Scan(void);
void HardDiv(void);
void HardMul(void);
void TSC_INITIAL(void);    //触摸按键配置初始化          
void TSC_Start(void);      //按键扫描结果处理，每次只做一个按键的一次扫描处理
void TSC_Start_Test(void); //debug模式下的按键扫描
void TSC_Reset(void);      //复位触摸. 长按保护可使用
unsigned char TSC_DataProcessing(void);//所有按键数据处理状态: 1表示所有按键数据处理完成 0表示未处理按键数据
unsigned char TSC_GetCsKey(void);      //获取CS按键值
void TSC_GetLocalKey(unsigned long *ptr); //ptr:外部定义的一个数组首地址，长度是2，*ptr ：表示1-32个按键的状态，*(ptr + 1) ：表示32-44个按键的状态。获取按键有效标志，每bit表示一个键，1为有按键按下，0为无按键按下 
unsigned int TSC_GetPrevData(unsigned char KeyNum); //当前按键采集数据值
unsigned int TSC_GetBaseValue(unsigned char KeyNum);//当前按键采集基线值
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