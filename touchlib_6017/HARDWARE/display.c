#include "main.h"
#include "display.h"
#include "tm1629b.h"
#include "stdio.h"
#include "string.h"
#include "uart1.h"



void SEG1(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<5);
	else DisBuf[1] &=~(1<<5);	

	if(dat&0x02) DisBuf[3] |=(1<<5);
	else DisBuf[3] &=~(1<<5);	
	
	if(dat&0x04) DisBuf[5] |=(1<<5);
	else DisBuf[5] &=~(1<<5);	

	if(dat&0x08) DisBuf[7] |=(1<<5);
	else DisBuf[7] &=~(1<<5);	

	if(dat&0x10) DisBuf[9] |=(1<<5);
	else DisBuf[9] &=~(1<<5);	

	if(dat&0x20) DisBuf[11] |=(1<<5);
	else DisBuf[11] &=~(1<<5);	

	if(dat&0x40) DisBuf[13] |=(1<<5);
	else DisBuf[13] &=~(1<<5);
}
void SEG2(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<6);
	else DisBuf[1] &=~(1<<6);	

	if(dat&0x02) DisBuf[3] |=(1<<6);
	else DisBuf[3] &=~(1<<6);	
	
	if(dat&0x04) DisBuf[5] |=(1<<6);
	else DisBuf[5] &=~(1<<6);	

	if(dat&0x08) DisBuf[7] |=(1<<6);
	else DisBuf[7] &=~(1<<6);	

	if(dat&0x10) DisBuf[9] |=(1<<6);
	else DisBuf[9] &=~(1<<6);	

	if(dat&0x20) DisBuf[11] |=(1<<6);
	else DisBuf[11] &=~(1<<6);	

	if(dat&0x40) DisBuf[13] |=(1<<6);
	else DisBuf[13] &=~(1<<6);	
}
void SEG3(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<7);
	else DisBuf[1] &=~(1<<7);	

	if(dat&0x02) DisBuf[3] |=(1<<7);
	else DisBuf[3] &=~(1<<7);	
	
	if(dat&0x04) DisBuf[5] |=(1<<7);
	else DisBuf[5] &=~(1<<7);	

	if(dat&0x08) DisBuf[7] |=(1<<7);
	else DisBuf[7] &=~(1<<7);	

	if(dat&0x10) DisBuf[9] |=(1<<7);
	else DisBuf[9] &=~(1<<7);	

	if(dat&0x20) DisBuf[11] |=(1<<7);
	else DisBuf[11] &=~(1<<7);	

	if(dat&0x40) DisBuf[13] |=(1<<7);
	else DisBuf[13] &=~(1<<7);
}
void SEG4(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<7);
	else DisBuf[0] &=~(1<<7);	

	if(dat&0x02) DisBuf[2] |=(1<<7);
	else DisBuf[2] &=~(1<<7);	
	
	if(dat&0x04) DisBuf[4] |=(1<<7);
	else DisBuf[4] &=~(1<<7);	

	if(dat&0x08) DisBuf[6] |=(1<<7);
	else DisBuf[6] &=~(1<<7);	

	if(dat&0x10) DisBuf[8] |=(1<<7);
	else DisBuf[8] &=~(1<<7);	

	if(dat&0x20) DisBuf[10] |=(1<<7);
	else DisBuf[10] &=~(1<<7);	

	if(dat&0x40) DisBuf[12] |=(1<<7);
	else DisBuf[12] &=~(1<<7);	
	
	if(dat&0x80) DisBuf[15] |=(1<<0);
	else DisBuf[15] &=~(1<<0);		
}
void SEG5(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<6);
	else DisBuf[0] &=~(1<<6);	

	if(dat&0x02) DisBuf[2] |=(1<<6);
	else DisBuf[2] &=~(1<<6);	
	
	if(dat&0x04) DisBuf[4] |=(1<<6);
	else DisBuf[4] &=~(1<<6);	

	if(dat&0x08) DisBuf[6] |=(1<<6);
	else DisBuf[6] &=~(1<<6);	

	if(dat&0x10) DisBuf[8] |=(1<<6);
	else DisBuf[8] &=~(1<<6);	

	if(dat&0x20) DisBuf[10] |=(1<<6);
	else DisBuf[10] &=~(1<<6);	

	if(dat&0x40) DisBuf[12] |=(1<<6);
	else DisBuf[12] &=~(1<<6);	
}
void SEG6(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<0);
	else DisBuf[1] &=~(1<<0);	
	
	if(dat&0x01) DisBuf[1] |=(1<<0);
	else DisBuf[1] &=~(1<<0);	

	if(dat&0x02) DisBuf[3] |=(1<<0);
	else DisBuf[3] &=~(1<<0);	
	
	if(dat&0x04) DisBuf[5] |=(1<<0);
	else DisBuf[5] &=~(1<<0);	

	if(dat&0x08) DisBuf[7] |=(1<<0);
	else DisBuf[7] &=~(1<<0);	

	if(dat&0x10) DisBuf[9] |=(1<<0);
	else DisBuf[9] &=~(1<<0);	

	if(dat&0x20) DisBuf[11] |=(1<<0);
	else DisBuf[11] &=~(1<<0);	

	if(dat&0x40) DisBuf[13] |=(1<<0);
	else DisBuf[13] &=~(1<<0);	

}
void SEG7(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<1);
	else DisBuf[1] &=~(1<<1);	
	
	if(dat&0x01) DisBuf[1] |=(1<<1);
	else DisBuf[1] &=~(1<<1);	

	if(dat&0x02) DisBuf[3] |=(1<<1);
	else DisBuf[3] &=~(1<<1);	
	
	if(dat&0x04) DisBuf[5] |=(1<<1);
	else DisBuf[5] &=~(1<<1);	

	if(dat&0x08) DisBuf[7] |=(1<<1);
	else DisBuf[7] &=~(1<<1);	

	if(dat&0x10) DisBuf[9] |=(1<<1);
	else DisBuf[9] &=~(1<<1);	

	if(dat&0x20) DisBuf[11] |=(1<<1);
	else DisBuf[11] &=~(1<<1);	

	if(dat&0x40) DisBuf[13] |=(1<<1);
	else DisBuf[13] &=~(1<<1);	

	if(dat&0x80) DisBuf[14] |=(1<<3);
	else DisBuf[14] &=~(1<<3);	
}
void SEG8(u8 dat)
{
	if(dat&0x01) DisBuf[1] |=(1<<2);
	else DisBuf[1] &=~(1<<2);	

	if(dat&0x02) DisBuf[3] |=(1<<2);
	else DisBuf[3] &=~(1<<2);	
	
	if(dat&0x04) DisBuf[5] |=(1<<2);
	else DisBuf[5] &=~(1<<2);	

	if(dat&0x08) DisBuf[7] |=(1<<2);
	else DisBuf[7] &=~(1<<2);	

	if(dat&0x10) DisBuf[9] |=(1<<2);
	else DisBuf[9] &=~(1<<2);	

	if(dat&0x20) DisBuf[11] |=(1<<2);
	else DisBuf[11] &=~(1<<2);	

	if(dat&0x40) DisBuf[13] |=(1<<2);
	else DisBuf[13] &=~(1<<2);	

}
void SEG9(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<5);
	else DisBuf[0] &=~(1<<5);	

	if(dat&0x02) DisBuf[2] |=(1<<5);
	else DisBuf[2] &=~(1<<5);	
	
	if(dat&0x04) DisBuf[4] |=(1<<5);
	else DisBuf[4] &=~(1<<5);	

	if(dat&0x08) DisBuf[6] |=(1<<5);
	else DisBuf[6] &=~(1<<5);	

	if(dat&0x10) DisBuf[8] |=(1<<5);
	else DisBuf[8] &=~(1<<5);	

	if(dat&0x20) DisBuf[10] |=(1<<5);
	else DisBuf[10] &=~(1<<5);	

	if(dat&0x40) DisBuf[12] |=(1<<5);
	else DisBuf[12] &=~(1<<5);	

}
void SEG10(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<4);
	else DisBuf[0] &=~(1<<4);	

	if(dat&0x02) DisBuf[2] |=(1<<4);
	else DisBuf[2] &=~(1<<4);	
	
	if(dat&0x04) DisBuf[4] |=(1<<4);
	else DisBuf[4] &=~(1<<4);	

	if(dat&0x08) DisBuf[6] |=(1<<4);
	else DisBuf[6] &=~(1<<4);	

	if(dat&0x10) DisBuf[8] |=(1<<4);
	else DisBuf[8] &=~(1<<4);	

	if(dat&0x20) DisBuf[10] |=(1<<4);
	else DisBuf[10] &=~(1<<4);	

	if(dat&0x40) DisBuf[12] |=(1<<4);
	else DisBuf[12] &=~(1<<4);	

}
void SEG11(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<3);
	else DisBuf[0] &=~(1<<3);	

	if(dat&0x02) DisBuf[2] |=(1<<3);
	else DisBuf[2] &=~(1<<3);	
	
	if(dat&0x04) DisBuf[4] |=(1<<3);
	else DisBuf[4] &=~(1<<3);	

	if(dat&0x08) DisBuf[6] |=(1<<3);
	else DisBuf[6] &=~(1<<3);	

	if(dat&0x10) DisBuf[8] |=(1<<3);
	else DisBuf[8] &=~(1<<3);	

	if(dat&0x20) DisBuf[10] |=(1<<3);
	else DisBuf[10] &=~(1<<3);	

	if(dat&0x40) DisBuf[12] |=(1<<3);
	else DisBuf[12] &=~(1<<3);	

}
void SEG12(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<2);
	else DisBuf[0] &=~(1<<2);	

	if(dat&0x02) DisBuf[2] |=(1<<2);
	else DisBuf[2] &=~(1<<2);	
	
	if(dat&0x04) DisBuf[4] |=(1<<2);
	else DisBuf[4] &=~(1<<2);	

	if(dat&0x08) DisBuf[6] |=(1<<2);
	else DisBuf[6] &=~(1<<2);	

	if(dat&0x10) DisBuf[8] |=(1<<2);
	else DisBuf[8] &=~(1<<2);	

	if(dat&0x20) DisBuf[10] |=(1<<2);
	else DisBuf[10] &=~(1<<2);	

	if(dat&0x40) DisBuf[12] |=(1<<2);
	else DisBuf[12] &=~(1<<2);	
	
}
void SEG13(u8 dat)
{
	if(dat&0x01) DisBuf[0] |=(1<<1);
	else DisBuf[0] &=~(1<<1);	
	
	if(dat&0x02) DisBuf[2] |=(1<<1);
	else DisBuf[2] &=~(1<<1);
	
	if(dat&0x04) DisBuf[4] |=(1<<1);
	else DisBuf[4] &=~(1<<1);

	if(dat&0x08) DisBuf[6] |=(1<<1);
	else DisBuf[6] &=~(1<<1);

	if(dat&0x10) DisBuf[8] |=(1<<1);
	else DisBuf[8] &=~(1<<1);

	if(dat&0x20) DisBuf[10] |=(1<<1);
	else DisBuf[10] &=~(1<<1);

	if(dat&0x40) DisBuf[12] |=(1<<1);
	else DisBuf[12] &=~(1<<1);

}


//负离子显示，0关闭，反之打开
void Display_Anion(u8 sta)
{
	if(sta)
	{
		DisBuf[0] |=(1<<0);
		DisBuf[4] |=(1<<0);
	}
	else
	{
		DisBuf[0] &=~(1<<0);
		DisBuf[4] &=~(1<<0);
	}

}
//氧浓度标签，0关闭，反之打开
void Label_Concentration(u8 sta)
{
	if(sta)
	{
		DisBuf[14] |=(1<<4);
		DisBuf[14] |=(1<<5);
	}
	else
	{
		DisBuf[14] &=~(1<<4);
		DisBuf[14] &=~(1<<5);
	}
}

//氧流量标签，0关闭，反之打开
void Label_Flow(u8 sta)
{
	if(sta)
	{
		DisBuf[14] |=(1<<6);
		DisBuf[14] |=(1<<7);
	}
	else
	{
		DisBuf[14] &=~(1<<6);
		DisBuf[14] &=~(1<<7);
	}
}

//氧流%标签，0关闭，反之打开
void Label_Percent(u8 sta)
{
	if(sta)
	{
		DisBuf[14] |=(1<<2);
	}
	else
	{
		DisBuf[14] &=~(1<<2);
	}
}


//累计标签，0关闭，反之打开
void Label_AddUp(u8 sta)
{
	if(sta)
	{
		DisBuf[6] |=(1<<0);
	}
	else
	{
		DisBuf[6] &=~(1<<0);
	}
}

//关闭报警标签，0关闭，反之打开
void Label_CloseAlarm(u8 sta)
{
	if(sta)
	{
		DisBuf[7] |=(1<<3);
	}
	else
	{
		DisBuf[7] &=~(1<<3);
	}
}

//h单位标签，0关闭，反之打开
void Label_h(u8 sta)
{
	if(sta)
	{
		DisBuf[8] |=(1<<0);
	}
	else
	{
		DisBuf[8] &=~(1<<0);
	}
}


//L/min标签，0关闭，反之打开
void Label_L_min(u8 sta)
{
	if(sta)
	{
		DisBuf[15] |=(1<<1);
		DisBuf[15] |=(1<<2);
	}
	else
	{
		DisBuf[15] &=~(1<<1);
		DisBuf[15] &=~(1<<2);
	}
}
//定时标签，0关闭，反之打开
void Label_Timing(u8 sta)
{
	if(sta)
	{
		DisBuf[15] |=(1<<5);
	}
	else
	{
		DisBuf[15] &=~(1<<5);
	}
}

//运行标签，0关闭，反之打开
void Label_Running(u8 sta)
{
	if(sta)
	{
		DisBuf[15] |=(1<<6);
	}
	else
	{
		DisBuf[15] &=~(1<<6);
	}
}
//min标签，0关闭，反之打开
void Label_Min(u8 sta)
{
	if(sta)
	{
		DisBuf[15] |=(1<<7);
	}
	else
	{
		DisBuf[15] &=~(1<<7);
	}
}
//系统状态指示灯,一定要放在累计时间显示后面
void Display_SysSta(u8 sta)
{
	switch(sta)
	{
		case 1://运行或正常
				DisBuf[1] &= ~(1<<3);//警告
				DisBuf[3] |= (1<<3);//正常
				DisBuf[5] &= ~(1<<3);//报警
		break;
		case 2://警告
				DisBuf[1] |= (1<<3);//警告
				DisBuf[3] &= ~(1<<3);//正常
				DisBuf[5] &= ~(1<<3);//报警
		break;		
		case 3://报警
				DisBuf[1] &= ~(1<<3);//警告
				DisBuf[3] &= ~(1<<3);//正常
				DisBuf[5] |= (1<<3);//报警
		break;	
		default: //熄灭
				DisBuf[1] &= ~(1<<3);//警告
				DisBuf[3] &= ~(1<<3);//正常
				DisBuf[5] &= ~(1<<3);//报警
		break;		
	}
}

//智能语音，0关闭，反之打开
void Display_Voice(u8 sta)
{
	if(sta)
	{
		DisBuf[2] |= (1<<0);
		DisBuf[14] |=(1<<1);
	}
	else
	{
		DisBuf[2] &= ~(1<<0);
		DisBuf[14] &=~(1<<1);
	}
}

//清洁滤网，0关闭，反之打开
void Display_FilterMesh(u8 sta)
{
	if(sta)
	{
		DisBuf[14] |=(1<<0);
		DisBuf[12] |=(1<<0);
		DisBuf[10] |=(1<<0);
	}
	else
	{
		DisBuf[14] &=~(1<<0);
		DisBuf[12] &=~(1<<0);
		DisBuf[10] &=~(1<<0);
	}

}


//定时时间
void Display_Timing(u32 sum, u8 mode)
{

	if(sum>999) sum = 999;

	SEG1(ch_table[sum%1000/100]);
	SEG2(ch_table[sum%100/10]);
	SEG3(ch_table[sum%10]);

	switch(mode)
	{
		case 1: //运行或正常
			Label_Min(1);
			Label_Running(1);
			Label_Timing(0);
		break;
		case 2: //定时
			Label_Min(1);
			Label_Running(0);
			Label_Timing(1);
		break;
		
		case 3: //待机
			SEG1(0x40);
			SEG2(0x40);
			SEG3(0x40);
			Label_Min(0);
			Label_Running(0);
			Label_Timing(0);
		break;
		
		case 4: //版本号
//			DisBuf[0]&= ~0x80;
//			DisBuf[1]&= ~0x80;
//			DisBuf[2]&= ~0x80;
		break;
		
		default : //熄灭
			SEG1(0x00);
			SEG2(0x00);
			SEG3(0x00);
			Label_Min(0);
			Label_Running(0);
			Label_Timing(0);
		break;
	}	
}

//气体浓度显示
void Display_Concentration(u16 sum,u8 mode)
{
	if(sum>999) sum = 999;
	SEG6(ch_table[sum%1000/100]);
	SEG7(ch_table[sum%100/10]);
	SEG8(ch_table[sum%10]);	

	switch(mode)
	{
		case 1: //运行或正常
			Label_Concentration(1);
			Label_Percent(1);
			SEG7(ch_table[sum%100/10]|0x80);
		break;

		case 3: //待机
			SEG6(0x40);
			SEG7(0x40);
			SEG8(0x40);
			Label_Percent(0);
		break;
		default : //熄灭
			SEG6(0x00);
			SEG7(0x00);
			SEG8(0x00);
			Label_Percent(0);
		break;
	}	
}

//流量显示
void Display_Flow(u16 sum,u8 mode)
{
	if(sum>99) sum = 99;	
	SEG4(ch_table[sum%100/10]);
	SEG5(ch_table[sum%10]);	
	switch(mode)
	{
		case 1: //运行或正常
			SEG4(ch_table[sum%100/10]|0x80);//小数点，点亮
			Label_Flow(1);
			Label_L_min(1);
		break;

		case 3: //待机
			SEG4(0x40);
			SEG5(0x40);
			Label_Flow(0);
			Label_L_min(0);
		break;
		default : //熄灭
			SEG4(0x00);
			SEG5(0x00);
			Label_Flow(0);
			Label_L_min(0);
		break;
	}	

}

//累计时间
void Display_CumulativeTime(u32 sum, u8 mode)
{
	SEG9(ch_table[sum%100000/10000]);
	SEG10(ch_table[sum%10000/1000]);
	SEG11(ch_table[sum%1000/100]);
	SEG12(ch_table[sum%100/10]);
	SEG13(ch_table[sum%10]);
	switch(mode)
	{
		case 1: //运行或正常
			Label_h(1);
			Label_AddUp(1);
		break;
		default : //熄灭
			SEG9(0x00);
			SEG10(0x00);
			SEG11(0x00);
			SEG12(0x00);
			SEG13(0x00);
			
			Label_h(0);
			Label_AddUp(0);
		
		break;
	}
	
}
////系统状态指示灯,一定要放在累计时间显示后面
//void Display_SysSta(u8 sta)
//{
//	switch(sta)
//	{
//		case 1://运行或正常
//			DisBuf[8] &= ~0x80;//警告
//			DisBuf[7] |= 0x80;//正常
//			DisBuf[6] &= ~0x80;//报警
//		break;
//		case 2://警告
//			DisBuf[8] |= 0x80;//警告
//			DisBuf[7] &= ~0x80;//正常
//			DisBuf[6] &= ~0x80;//报警
//		break;		
//		case 3://报警
//			DisBuf[8] &= ~0x80;//警告
//			DisBuf[7] &= ~0x80;//正常
//			DisBuf[6] |= 0x80;//报警
//		break;	
//		default: //熄灭
//			DisBuf[8] &= ~0x80;//警告
//			DisBuf[7] &= ~0x80;//正常
//			DisBuf[6] &= ~0x80;//报警
//		break;		
//	}
//}
////负离子显示，0关闭，反之打开
//void Display_Anion(u8 sta)
//{
//	if(sta)
//	{
//		DisBuf[15] |= 0x07;
//	}
//	else
//	{
//		DisBuf[15] &= ~0x07;
//	}

//}

////清洁滤网，0关闭，反之打开
//void Display_FilterMesh(u8 sta)
//{
//	if(sta)
//	{
//		DisBuf[15] |= 0x038;
//	}
//	else
//	{
//		DisBuf[15] &= ~0x38;
//	}

//}	

////智能语音，0关闭，反之打开
//void Display_Voice(u8 sta)
//{
//	if(sta)
//	{
//		DisBuf[14] |= 0x40;
//		DisBuf[14] |= 0x80;
//		DisBuf[15] |= 0x40;
//		
//	}
//	else
//	{
//		DisBuf[14] &= ~0x40;
//		DisBuf[14] &= ~0x80;
//		DisBuf[15] &= ~0x40;
//	}
//}
//	
