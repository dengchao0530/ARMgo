#include "irkey.h"
#include "uart1.h"
#include "touchkey.h"
IRKEY_DATA IRKeyDat;
IR_DATA IRData;

void IR_Key_Init(void)
{
	//红外输入
	TRISDbits.TRISD4 = 1;			// PD4 设为输入
    AFP14bits.T3CAP = 10;			// PD4 作为 T3CAP 输入	
		
    
    PCKEN1bits.T3CKEN = 1;			// TIM3 时钟使能位    
        
    T3CR1bits.T3CKS = 0B001;		// TIM5 时钟源选择 HIRC 16M
    T3CR1bits.T3PSC = 0B100;		// TIM5 时钟预分频 F_T0CNTCLK = F_T4CK/16 = 1M;
    
	T3CNTRL = 0;					// 计数器清零
    T3CNTRH = 0;					// 计数器清零
    
	T3CCPRL = 0;					// 清零捕获寄存器
    T3CCPRH = 0;               		// 清零捕获寄存器
     
	T3CR2bits.T3CAPMOD = 0B10;		// 捕捉模式选择上升沿捕获
    T3CR2bits.T3CAPPSC = 0B00;		// 捕捉滤波选择4次滤波
    T3CR2bits.T3CAPE = 1;			// 捕捉功能使能
    T3CR3bits.T3CCM = 1;			// 发生捕捉事件会清除 TIM3 计数器和与预分频计数器
    
    T3CR2bits.T3COME = 0;			// 比较功能禁止
    
    T3CR1bits.T3CCIE = 1;			// TIM3 捕捉/匹配中断使能
    T3CR3bits.T3CCIF = 0;			// 清除TIM3捕捉/比较标识
    
    IPEN = 0;						// 禁止中断优先级 
    GIE = 1;						// 使能全局总中断
    PEIE = 1;						// 使能外设总中断
   
	T3CR1bits.T3CEN = 1;			// TIM3 使能			
}
//遥控器接收状态
//[7]:收到了引导码标志
//[6]:得到了一个按键的所有信息
//[5]:保留	
//[4]:标记上升沿是否已经被捕获								   
//[3:0]:溢出计时器
u8 	RmtSta=0;	  	  
u16 Dval;		//下降沿时计数器的值
u32 RmtRec=0;	//红外接收到的数据	   		    
u8  RmtCnt=0;	//按键按下的次数	
void TM0_Isr() interrupt 1
{
	

//	if(IRData.count<4)
//   IRData.count++;
//	else
//	{
//		IRData.gao = 0;
//		IRData.Sta=0;
//		IRData.count = 0;
//	}
//		if(RmtSta&0x80)								//上次有数据被接收到了
//		{	
//			RmtSta&=~0X10;							//取消上升沿已经被捕获标记
//			if((RmtSta&0X0F)==0X00)RmtSta|=1<<6;	//标记已经完成一次按键的键值信息采集
//			if((RmtSta&0X0F)<5)RmtSta++;
//			else
//			{
//				RmtSta&=~(1<<7);					//清空引导标识
//				RmtSta&=0XF0;						//清空计数器	
//			}								 	   	
//		}
}
extern unsigned char cnt; 
//2MHZ =  24mhz/12 
void IR_IN_DATA(void)
{
		if(CCF1)
		{
			RunData.IR_Count = 0;
			//cnt=0;
			CCF1 = 0;
			if(P36 == 1)
			{
				IRData.di = CCAP1L;
				IRData.di |= (CCAP1H<<8);
				cnt = 0;
				CL = CH = 0;
				IRData.count = 0;
			}
			else
			{
//				Dval = TL0;
//				Dval |= (TH0<<8);
//				TH0 = TL0	= 0;
//			if(RmtSta&0X10)							//完成一次高电平捕获 
//			{
// 				if(RmtSta&0X80)//接收到了引导码
//				{
//					
//					if(Dval>600&&Dval<1600)			//1120为标准值,560us
//					{
//						RmtRec<<=1;					//左移一位.
//						RmtRec|=0;					//接收到0	   
//					}else if(Dval>2800&&Dval<3600)	//3360为标准值,1680us
//					{
//						RmtRec<<=1;					//左移一位.
//						RmtRec|=1;					//接收到1
//					}else if(Dval>4400&&Dval<5200)	//得到按键键值增加的信息 2500为标准值2.5ms
//					{
//						RmtCnt++; 					//按键次数增加1次
//						RmtSta&=0XF0;				//清空计时器		
//					}
// 				}else if(Dval>8400&&Dval<9400)		//4500为标准值4.5ms
//				{
//					RmtSta|=1<<7;					//标记成功接收到了引导码
//					RmtCnt=0;						//清除按键次数计数器
//				}	
//			}
//			RmtSta&=~(1<<4);
			
					IRData.gao=CCAP1L;
					IRData.gao |= (CCAP1H<<8);
					if(IRData.gao<=10) 
					{
									IRData.gao = 0;
					}
					cnt = 0;
					CL = CH = 0;
				
			
			
				if(IRData.Sta&0x01)//接收到了引导码
				{
					if(IRData.gao>900&&IRData.gao<2400)			//1120为标准值,560us
					{
						IRData.get_w++;
						IRData.Dat=(IRData.Dat<<1)|0x01;
					}
					else if(IRData.gao>4200&&IRData.gao<5400)//	//3360为标准值,1680us
					{
						IRData.get_w++;
						IRData.Dat=IRData.Dat<<1;
						
					}
					else if(IRData.gao>6600&&IRData.gao<7800)	//得到按键键值增加的信息 5000为标准值2.5ms
					{
						IRData.RmtCnt++; 					//按键次数增加1次

					}
					if(IRData.get_w==32) 
					{
						IRData.Value=IRData.Dat;
						//printf("RF:%X\r\n",RF_D.TouchValue);
						IRData.Dat=0;
						IRData.get_w=0;
					}
				}
				else if(IRData.gao>12600&&IRData.gao<14100) //9000为标准值4.5ms
				{
					
					IRData.Sta|=0x01;   //收到引导码
					IRData.RmtCnt = 0;
					IRData.Value = 0;
					IRData.get_w = 0;
					IRData.count = 0;
				}
				
				
				
				
				//if()
						
			}
	}



}



//#define TOUCH_KEY_STANDBY 0x1E0F
//#define TOUCH_KEY_ADD 0x2D0F
//#define TOUCH_KEY_DEC 0x4B0F
//#define TOUCH_KEY_AUTO 0x870F
//#define TOUCH_KEY_SET 0x960F
u16 IR_KeyReadCtr(void)
{
	u16 ret = 0;
	if(IRData.Sta)
	{

		
		switch(IRData.Value)
		{
			case IR_KEY1_STANDBY: 	ret = TOUCH_KEY_STANDBY;break;
			case IR_KEY2_TIME_ADD: 	ret = TOUCH_KEY_ADD;break;
			case IR_KEY3_TIME_DEC: 	ret = TOUCH_KEY_DEC;break;
			case IR_KEY4_VOICE: 		ret = TOUCH_KEY_AUTO;break;
			case IR_KEY5_FLOW: 			ret = 5;break;
			case IR_KEY6_SOS: 			ret = 6;break;
			case IR_KEY7_ANION:			ret = 7;break;
		}
	}
	else
	{
		IRData.RmtCnt = 0;
		IRData.Value = 0;
		IRData.get_w = 0;
		IRData.count = 0;
		ret = 0;
	}
	return ret;
}

void IR_MoreCtr(void)//红外流量控制和求救开关
{
	if((KeyDat.key_short_value == 5)||(KeyDat.key_long_value == 5))
	{
		RunData.FlowSet++;
		if(RunData.FlowSet>FLOW_SET*10) RunData.FlowSet = 5;
		delay_ms(100);
	}
	if((KeyDat.key_short_value == 6)||(KeyDat.key_long_value == 6))
	{
		RunData.SOSFlag = !RunData.SOSFlag;
	}
	if((RF_D.TouchValue == TOUCH_KEY_SET)&&(IRData.Value == IR_KEY4_VOICE))
	{
		RunData.SETCount++;
		if(RunData.SETCount>500)
		{
			RunData.SETCount = 500;
		
		}
	
	}
	else
	{
		RunData.SETCount =0;
	
	
	}
	
	
}

