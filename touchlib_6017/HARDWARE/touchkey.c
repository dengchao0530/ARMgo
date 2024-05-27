#include "main.h"
#include "touchkey.h"
#include "uart1.h"
#include "irkey.h"


#define KEY_NUM 4


#define TK_PRESS 200

u16	xdata TK_cnt[KEY_NUM];	// 键计数值
u16	xdata TK_zero[KEY_NUM];	// 0点读数 
int	xdata TK_adc_f[KEY_NUM];	// 滤波后的数值
KEY_DATA KeyDat;


void Get_TS_Zero(void)
{
	u8 i;
	for(i=0; i<KEY_NUM; i++)		TK_zero[i] = TK_cnt[i];	//保存0点
}
void TouchKey_Init(void)
{
//	u8	i;

	P_SW2 |= 0x80;	//允许访问XSFR(扩展特殊功能寄存器)
	P1M0 &= ~(1<<3);
	P1M1 |=  (1<<3);
	
	P1M0 &= ~(1<<5);
	P1M1 |=  (1<<5);
	
	P1M0 &= ~(1<<6);
	P1M1 |=  (1<<6);
	
	P1M0 &= ~(1<<7);
	P1M1 |=  (1<<7);
	

//	TSCHEN = 0xffff;	//TK0~TK15
//	TSCHEN1 = 0xFE;		//TK0~TK7
//	TSCHEN2 = 0xff;		//TK8~TK15
	
	TSCHEN1 |=  (1<<3);
	TSCHEN1 |=  (1<<5);
	TSCHEN1 |=  (1<<6);
	TSCHEN1 |=  (1<<7);
	
	TSCFG1  = (7<<4) + 6;	//开关电容工作频率 = fosc/(2*(TSCFG1[6:4]+1)), 放电时间(系统时钟周期数) 0(125) 1(250) 2(500) 3(1000) 4(2000) 5(2500) 6(5000) 7(7500) 最小3
	TSCFG2  = 1;		//配置触摸按键控制器的内部参考电压(AVCC的分压比), 0(1/4)  1(1/2)  2(5/8)  3(3/4)
	TSCTRL = (1<<7) + (1<<6) +3;	//开始扫描, B7: TSGO,  B6: SINGLE,  B5: TSWAIT, B4: TSWUCS, B3: TSDCEN, B2: TSWUEN, B1 B0: TSSAMP
	TSRT = 0x00;		//没有LED分时扫描
	IE2 |= 0x80;		//允许触摸按键中断
	EA = 1;
	delay_ms(100);
	Get_TS_Zero();
	
}

u16 TouchKeyValue(void)	
{
	u8 i=0;
	int temp = 0;
	u16 ret = 0;
	for(i=0;i<KEY_NUM;i++)
	{
		temp =(0-(int)TK_cnt[i])+TK_zero[i];
		TK_adc_f[i] = temp*0.25f+TK_adc_f[i]*0.75f;
		if(TK_adc_f[i]>TK_PRESS) ret |= (1<<i);
		
	}
	
	return ret;	
}
void key_scan(void)
{
	static u16  key_;

	
	KeyDat.key_value = TouchKeyValue();
	
	//if(KeyDat.key_value == 0) KeyDat.key_value = TouchKeyValue();
	
	if(KeyDat.key_value == 0)
	{
		if(KeyDat.key_tim>5&&KeyDat.key_tim < 800)
		{
				KeyDat.key_short_value = key_;
		}
		else
			KeyDat.key_short_value = 0;
		
			KeyDat.key_val_x = 0;
			KeyDat.key_long_value = 0;
			KeyDat.key_tim = 0;
	}
	if(KeyDat.key_tim > 100) 
		KeyDat.key_val_x = KeyDat.key_value;
	
	if(KeyDat.key_tim >= 2000)
	{
		KeyDat.key_tim = 2000;
		KeyDat.key_long_value = KeyDat.key_value;
	}
	key_ = KeyDat.key_value;
	
	
	
	if(KeyDat.key_short_value)  u1_printf("key_short:%d\r\n",KeyDat.key_short_value);   
	if(KeyDat.key_long_value) u1_printf("key_long:%d\r\n",KeyDat.key_long_value);


}


u8	data Isr_Index;
void	AUXR_ISR(void) interrupt 13
{
	u8	j;
	
	switch(Isr_Index)
	{
		case 32:		//0103H 波形发生器5 中断入口
						//用户中断处理代码
		break;

		case 33:		//010BH	波形发生器异常2 中断入口
						//用户中断处理代码
		break;

		case 34:		//0113H	波形发生器异常4 中断入口
						//用户中断处理代码
		break;

		case 35:		//011BH	触摸按键 中断入口
						//用户中断处理代码
			j = TSSTA2;

			if(j & 0x40)	//数据溢出, 错误处理(略)
			{
				TSSTA2 |= 0x40;	//写1清零
			}
			if(j & 0x80)	//扫描完成
			{
				j &= 0x0f;
				TSSTA2 |= 0x80;	//写1清零

				switch(j)
				{
					case 3:
						TK_cnt[0] = TSDAT;	//保存某个通道的读数	低通滤波
					break;
					
					case 5:
						TK_cnt[1] = TSDAT;	//保存某个通道的读数	低通滤波
					break;
					
					case 6:
						TK_cnt[2] = TSDAT;	//保存某个通道的读数	低通滤波
					break;

					case 7:
						TK_cnt[3] = TSDAT;	//保存某个通道的读数	低通滤波
						TSCTRL = (1<<7) + (1<<6) +1;	//开始扫描, 2次平均, 读数大约为无平均的一半	
					break;					
				}
				
			}
			
//				if(!B_TK_Lowpass)	TK_cnt[j] = TSDAT/4;	//保存某个通道的读数	无低通滤波
//				else				TK_cnt[j] = ((TK_cnt[j] * 3)>>2) + TSDAT/16;	//保存某个通道的读数	低通滤波
//				if(j == 15)	B_ReadKeyOk = 1;	//读完一次循环
		break;

		case 36:		//0123H	RTC 中断入口
						//用户中断处理代码
		break;

		case 37:		//012BH	P0口中断入口
						//用户中断处理代码
		break;

		case 38:		//0133H	P1口中断入口
						//用户中断处理代码
		break;

		case 39:		//013BH	P2口中断入口
						//用户中断处理代码
		break;

		case 40:		//0143H	P3口中断入口
						//用户中断处理代码
		break;

		case 41:		//014BH	P4口中断入口
						//用户中断处理代码
		break;

		case 42:		//0153H	P5口中断入口
						//用户中断处理代码
		break;

		case 43:		//015BH	P6口中断入口
						//用户中断处理代码
		break;

		case 44:		//0163H	P7口中断入口
						//用户中断处理代码
		break;

		case 45:		//016BH	P8口中断入口
						//用户中断处理代码
		break;

		case 46:		//0173H	P9口中断入口
						//用户中断处理代码
		break;
		
		default:
		break;
	}
}
