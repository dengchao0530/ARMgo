//Project: 6017_touch.prj
// Device: FT62F0GX
// Memory: Flash 16KX16b, EEPROM 128X8b, SRAM 2048X8b
// Author: 
//Company: 
//Version:
//   Date: 2023-07-21
//===========================================================
//===========================================================
#include "main.h"
#include "tm1629b.h"
#include "display.h"
#include "beep.h"
#include "touchkey.h"
#include "GPIO_Init.h"
#include "encoder.h"
#include "uart2.h"
#include "voice.h"
#include "irkey.h"
#include "stdio.h"
#include "control.h"
#include "eeprom.h"
#include "setsysdata.h"
//===========================================================
//Variable definition
//===========================================================

RUN_DATA	RunData;
engineering_pattern Engineering_Pattern;//todo:->工程模式相关
VOICE_DELAY VoiceDelay;//todo:2023/12/22半点报时相关
unsigned char strongest = 0; //demo_test
unsigned char Sav_strongest = 0; //demo_test
/* 根据 TSC_GetLocalKey() 函数的声明，传参是两个元素的首地址，故定义两个元素的数组 */
unsigned long Sav_single[2] = {0};
unsigned long single[2] = {0};
unsigned char temp = 0;
unsigned long counttest = 0;
void Get_Key_Demo(void);

void Time0_Interrupt(void)
{
	static u16 ms = 0;
	if((INTCON1bits.TMR0IE == 1)&&(INTCON1bits.TMR0IF == 1))
    {
        INTCON1bits.TMR0IF = 0;
        counttest++;
        EncoderData.Time++;
        sUsart2.LinkCount++;
        RunData.AlarmLEDCount++;
        AlarmSound.count++;
        if(EncoderData.Time>1000) EncoderData.Time=1000;
        EncoderData.EC11_SpeedCount++;
        if(KeyDat.key_value) KeyDat.key_tim++;
		usart2_receive_wait();
        if(ms>=1000)
		{
			if(RunData.sec>=60)	
			{	
				//只有再正常工作时才累计
                if (RunData.StandbySta == 0)
                {
                    RunData.RunTime++; // 单位:分钟（min）
                    if (RunData.RunTime >= 999)
                        RunData.RunTime = 999;
                }
                if(RunData.Timing)	
				{
					RunData.Timing--;//单位:分钟（min）
					if(RunData.Timing<=0) RunData.Timing = 0;
				}
				RunData.sec = 0;
				//只有再正常工作时才累计
				if(RunData.StandbySta==0) RunData.CumulativeTime++;//单位:分钟（min）
                if(RunData.CumulativeTime>5999940) RunData.CumulativeTime=5999940;
			}

            //todo:->2023/12/13 add:增加定时
            if(RunData.Error_Flag == 1)
            {
                RunData.Error_Delay_Time ++;
                if(RunData.Error_Delay_Time >= 3)
                {
                    RunData.Error_Delay_Time = 3;
                }
            }

            //todo:->2023/12/15 add：工程模式相关
            if(Engineering_Pattern.Time_Start_Flag == 1)
            {
                Engineering_Pattern.Time ++;
                Engineering_Pattern.Time_End_Flag ++ ;
            }

            //todo:->2023/12/15 add：电源重启后，重新计时
            if(RunData.Power_After_OnFlag == 1){
                RunData.Power_After_OnFlag_Time ++;
                if(RunData.Power_After_OnFlag_Time >= 3){
                    RunData.Power_After_OnFlag_Time = 3;
                }
            }

            RunData.ErrCodeSecCount++;
			RunData.AOD_TimeCount++;
			RunData.sec++;
			ms = 0;
		}
		ms++;
        //todo:->2023/12/15 add：半点报时相关
        if(VoiceDelay.Voice_Delay_Flag == 1)
        {
            VoiceDelay.Voice_Delay ++;
            if(VoiceDelay.Voice_Delay >= 700)
            {
                VoiceDelay.Voice_Delay = 700;
            }
        }

        if(RunData.FilterMesh_Delay_Flag == 1)
        {
            AlarmSound.count = 1999;
            RunData.FilterMesh_Delay_Time ++;
            if(RunData.FilterMesh_Delay_Time > 1000) RunData.FilterMesh_Delay_Time = 0;
        }
    }
}

//===========================================================
//Function name:  	low priority interrupt ISR
//parameters：    	none
//returned value：	none
//===========================================================
void interrupt low_priority InterruptHandlerLow(void)
{

} 
//===========================================================
//Function name:	high priority interrupt ISR
//parameters：		none
//returned value:	none
//===========================================================
void interrupt high_priority InterruptHandlerHigh(void)
{
    Time0_Interrupt();
    IR_IN_DATA();
    EC11_Interrupt();
    UART2_Interrupt();
}
//===========================================================
//Function name：	POWER_INITIAL
//parameters：		none
//returned value：	none
//===========================================================
void POWER_INITIAL (void) 
{ 
	 
	OSCCON = SYS_OSCCON;				//WDT 32KHZ IRCF=111=16MHZ   
										//Bit0=1,系统时钟为内部振荡器
										//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择
		                          
	INTCON1 = 0;  						//暂禁止所有中断
	
	DIVIDER_ENABLE;

    IOCKEN = 1;
    
    PORTA =	0B00000000;		
    PORTB = 0B00000000;	
    PORTC = 0B00000000; 	
    PORTD =	0B00000000;   
    PORTE =	0B00000000;
    PORTF = 0B00000000;  	
    
    TRISA =	TRISA_CONFIG;	    //PA4输入（TKCAP）
    TRISB = TRISB_CONFIG;
    TRISC =	TRISC_CONFIG;		
    TRISD = TRISD_CONFIG;   
    TRISE =	TRISE_CONFIG;
    TRISF = TRISF_CONFIG;     
    
    ANSEL0 = 0B00010000;    //AN4使能（PA4）

	WPUA = 0B00000000;     //PA端口上拉控制 1-开上拉 0-关上拉
    WPUB = 0B00000000;
    WPUC = 0B00000000;
    WPUD = 0B00000000;
	WPDA = 0B00000000;     //PA端口上拉控制 1-开上拉 0-关上拉
    WPDB = 0B00000000;
    WPDC = 0B00000000;
    WPDD = 0B00000000;                        
}

/*------------------------------------------------- 
 *	函数名称：TIM0_INITIAL
 *	功能：    TIMER0初始化配置
 *	输入参数：无
 *	返回参数：无 
 -------------------------------------------------*/
void TIM0_INITIAL (void) 
{
    PCKEN1bits.T0CKEN = 1;			// TIM0 时钟使能位
	T0CRbits.T0CKS = 0B00;			// TIM0 时钟源选择 系统时钟 16M
    T0CRbits.T0PSC = 0B111;			// TIM0 时钟预分频 F_T0CNTCLK = F_T0CK/2^PSC[2:0]; 
									// 计数频率 
    T0CNTR = 0;						// 计数器清零
    T0PR = 124;						// 计数周期125
	CKCON2bits.T0IOMOD = 0;			// TIM0 外部管脚时钟模式关闭
	INTCON1bits.TMR0IF = 0;			// TIM0匹配中断标志位清零
    INTCON1bits.TMR0IE = 1;			// TIM0 中断使能位
    IPEN = 0;						// 关闭中断优先级
	PEIE = 1;						// 使能外设中断
    GIE = 1;						// 使能全局总中断
    T0CRbits.T0CEN = 1;				// TIM0 开始计数
}

//===========================================================
//Function name：	WDT_INITIAL(定时时间=(16384*1)/32000=512ms)
//parameters：		无
//returned value：	无
//===========================================================
void WDT_INITIAL (void) 
{  
	CLRWDT();  				// 清看门狗
    CKCON1bits.LFMOD = 0;
    WDTCON2bits.WDTCKS = 0; 
    WDTCON1bits.WDTPRE = 0x00;		// WDTPRE=000=1:1	
    WDTCON1bits.WDTPS  = 0x09;		// WDTPS=0101=1:16384
	WDTCON1bits.SWDTEN = 1;
}

//===========================================================
//Function name：	Delay10Us（延迟10us 16MHz）
//parameters：		none
//returned value：	none
//===========================================================    
void Delay10Us(void)
{
	for(uint8_t i=0;i<17;i++)
	{
		NOP();
        NOP();
        NOP();
        NOP();
	}
}     
//===========================================================
//Function name：	DelayMs
//parameters：		Time延时时间长度 延时时长Time ms
//returned value：	none
//=========================================================== 
void DelayUs(uint16_t Time)
{
	for(uint16_t a=0;a<Time/10;a++)
	{
		 	Delay10Us(); 	
	}
}
             
//===========================================================
//Function name：	DelayMs
//parameters：		Time延时时间长度 延时时长Time ms
//returned value：	none
//=========================================================== 
void DelayMs(uint16_t Time)
{
	for(uint16_t a=0;a<Time;a++)
	{
		for(uint8_t b=0;b<98;b++)
		{
		 	Delay10Us(); 	
		}
	}
}
//===========================================================
//Function name：	DelayS
//parameters：		Time延时时间长度 延时时长Time S
//returned value：	none
//===========================================================
void DelayS(uint16_t Time)
{
	for(uint16_t a=0;a<Time;a++)
	{
		for(uint16_t b=0;b<10;b++)
		{
		 	DelayMs(100); 
		}
	}
}
void Voicedelay(uint16_t Time)
{
    for(uint16_t i=0;i<Time;i++)
    {
        Delay10Us();
    }
}

void DataInit(void)
{
	RunData.StandbySta = 1;
    RunData.FlowSet = 36;
	RunData.JY_TimeSet = 6;
	RunData.XF_TimeSet = 36;//3.5s
    RunData.PD_TimeSet = 30;//3S
	RunData.RunTime = 0;
	RunData.TimingFlag = 0;
	RunData.Timing = 0;
	RunData.CumulativeTime = 0;
	RunData.VoiceNum = NULL2;
	RunData.FilterMeshFlag = 0;
	RunData.AOD_TimeCount=0;
	RunData.ComprStep = 0;
	RunData.SOSFlag = 0;

    RunData.Voltage_Calibration = 181;
    RunData.AlarmSwitch = 0;

    RunData.Power_After_OnFlag = 0;
    RunData.Power_After_OnFlag_Time = 0;

    VoiceDelay.Voice_enable = 1;
    Engineering_Pattern.Time = 0;
    Engineering_Pattern.Time_Start_Flag = 0;
    Engineering_Pattern.Return_Flag = 0;
    Engineering_Pattern.Mode = 0;
}

//判断断电后是否能重写开机
void CheckPoweOn(void)
{
    Cmd_Send();
    DelayMs(100);
    Cmd_Process();
    while (RunData.DC12_V < 600)
    { // RunData.DC12_V < 600 && RunData.Power_Alarm == 1 && RunData.ACDC_V < 120){
        Cmd_Send();
        DelayMs(100);
        Cmd_Process();
        CLRWDT(); // 清看门狗
    }
}
//===========================================================
//Function name：	main
//parameters：		none
//returned value：	none
//===========================================================
void main(void)
{
	u16 i,j=0;
	DelayMs(50); 
	DataInit();
    //WDT_INITIAL();
    
	POWER_INITIAL();    // 系统初始化
	//LED_INITIAL();
	TSC_INITIAL();      //触摸按键初始化
    GPIO_Init();
    PEIE = 1;           //使能外设中断
	GIE = 1;            //使能全局中断
    E2prom_ReadData();
	Voice_Init();
    IR_Key_Init();
    BeepInit();
    encoder_Init();
    uart2_Init();
    printf("start\r\n");
    TIM0_INITIAL();
    //CheckPoweOn();
    RunData.StandbySta = 0;
    
    TM1629Init();
    StartUpVoice();
//    RunData.VoiceNum = 2;//欢迎使用，请保持湿化杯清洁
//    VoiceCtr2(53);

	for(i=0; i<15; i++) {DelayMs(100);CLRWDT(); }//清看门狗 
	for(i=0; i<16; i++) DisBuf[i] = 0x00;
    DIS_LED_WARNING = 0;//警告
    DIS_LED_NORMAL = 0;//正常
    DIS_LED_ALARM = 0;//报警
	Update_Display();
    
    LAMP_LED = 0;
    
    RunData.ErrCodeSecCount = 0;
	RunData.VoiceNum = 0;
    

	while(1)
    {
        Display_Line(1);
		//EC11_Scan();
        key_scan();
        Engineering_Mode_Api();
        if(RunData.StandbySta == 0)
		{
			BeepCtr2((EncoderData.Time<10));
			BeepCtr1(KeyDat.key_value);
		}
		if(KeyDat.key_value==TOUCH_KEY_STANDBY)
			BeepCtr1(KeyDat.key_value);
        EC11_Set_Value();
        Cmd_Process();
        StartUpVoice();
        control();
        IR_MoreCtr();
		CLRWDT();  //清看门狗  
		TSC_Scan(); //触摸按键扫描
		if(TSC_DataProcessing()== 1) //返回1表示所有按键处理完成一次。
		{
            Get_Key_Demo();
		}
        
//		if(RunData.AOD_TimeCount>=60)//自动息屏后，第一次按键仅仅唤醒，不做任何操作
//		{
//			if(KeyDat.key_value||(EncoderData.Time<200)) 
//			{
//				RunData.AOD_TimeCount = 0;
//				KeyDat.key_val_x = 0;
//				KeyDat.key_long_value = 0;
//				KeyDat.key_tim = 800;
//				KeyDat.key_short_value = 0;
//			}
//		}
        
		if(KeyDat.key_value||(EncoderData.Time<200)) 
		{
			RunData.AOD_TimeCount = 0;
		}
        
		if(i>100)
		{
			//printf("DATA:%X %X %X %X %X %X %X %X %d\r\n",IRData.IRChar[0],IRData.IRChar[1],IRData.IRChar[2],IRData.IRChar[3],IRData.IRChar[4],IRData.IRChar[5],IRData.IRChar[6],IRData.IRChar[7],IRData.IRDataCnt);
			//printf("DATA:%lX,%d\r\n",IRData.Value,IRData.RmtCnt);
            //printf("DATA:%lX\r\n",Sav_single[0]);
			//Uart2SendStr((char*)"hello world\r\n");
			//printf("DATA:%d,%d\r\n",EncoderData.Time,RunData.SOSFlag);
            //printf("DATA:%d\r\n",RunData.FlowSet);
            //printf("DATA:%X\t%X\t%d\r\n",KeyDat.key_val_x,IRData.Value,RunData.SETCount);
            //printf("DATA:%d,%d\r\n",AlarmSound.step,AlarmSound.count);
            
//			u1_printf("TK_cnt1:%d,\t%d,\t%d,\t%d,\t%d,\t\r\n",TK_adc_f[0],TK_adc_f[1],TK_adc_f[2],TK_adc_f[3],KeyDat.key_value);
			
            Cmd_Send();
			//u1_printf("TK_cnt1:%d,\t%d,\t%d,\t%d,\t\r\n",TK_cnt[0],TK_cnt[1],TK_cnt[2],TK_cnt[3]);
			
//            Display_Flow(RunData.FlowValue,1);
//            Display_CumulativeTime(IRData.Value,1);
//            Display_Concentration(RunData.Concentration,1);
//			Update_Display();
			i=0;
			
		}
		i++;

		DelayMs(1); 
        SleepProcess();
    }    
    
}
/******************************************************************************
  * @brief  SleepProcess	program
  * @Description 低功耗处理函数，若未选择低功耗功能，SleepProcess() 在实际工程中可以删除，
				虽然已通过宏裁剪，但是函数也会编译占用4byte rom和 占用cpu执行时间。
                1. bSleepEnable用于使能低功耗功能，如程序满足休眠条件之后，请将bSleepEnable置1；
                2. bSleepMode为触摸库标志，用户不允许操作。
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void SleepProcess(void)
{
    
#ifndef TOUCH_DEBUG  
	#ifdef _DEF_LOW_POWER  
    //	if(PB7 == 0)//检测到PB7低电平进入休眠
    //	{
            TSC_SLEEP_Enable();//bSleepEnable = 1;  
    //	} 

        //if (bSleepMode)
        if (Get_TSC_SLEEP_State())
        {
            ;//关闭所有外设
        }
        
        //while(bSleepMode)
        while(Get_TSC_SLEEP_State())
        {
            TSC_SleepPrcoessing();
            CLRWDT();  
            TSC_Sleep();
            
    //		if(PB7 == 1)//检测到PB7高电平退出休眠
    //		{
    //			TSC_SLEEP_Disable();//bSleepEnable = 0;  
    //		}        
        }
	#endif
#endif

}
/******************************************************************************
  * @brief  TSC_Scan program
  * @Description 请勿删除此函数
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void TSC_Scan(void)
{
#ifndef TOUCH_DEBUG
	TSC_Start();
#else
    TSC_Start_Test();
    ConmunicateToPc(); 
#endif
}

/******************************************************************************
  * @brief  Get_Key_Demo program
  * @Description 获取触摸按键示例，用户参考实现自己的功能
  * @param  None
  * @note   
  * @retval  None
  *****************************************************************************
*/
void Get_Key_Demo(void)
{
     //只有调用CS库才能获取cs按键 TSC_GetCsKey();
    ////demo_test/////////////////////
    strongest = TSC_GetCsKey();	
    if(Sav_strongest != strongest)
    {
        //LED_Scan();      //led.c  按键按下点亮对应的led                   
    }
    Sav_strongest = strongest;

     //获取多个按键，可以用来实现组合按键功能 
    TSC_GetLocalKey(single);
    if( (Sav_single[0] != single[0]) || (Sav_single[1] != single[1]) )
    {
        //LED_Local_Scan(); //led.c  按键按下点亮对应的led            
    }
    Sav_single[0] = single[0];  
    Sav_single[1] = single[1];   
	
}
