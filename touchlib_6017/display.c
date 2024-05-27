#include "main.h"
#include "display.h"
#include "tm1629b.h"
#include "stdio.h"
#include "string.h"
#include "GPIO_Init.h"


//�����
void SEG1(u8 dat , u8 enable)
{
	if (enable)
		return;
	else{
		if(dat&0x01) DisBuf[1] |=(1<<7);
		else DisBuf[1] &=~(1<<7);	
		if(dat&0x02) DisBuf[1] |=(1<<6);
		else DisBuf[1] &=~(1<<6);	
		if(dat&0x04) DisBuf[1] |=(1<<5);
		else DisBuf[1] &=~(1<<5);	
		if(dat&0x08) DisBuf[1] |=(1<<4);
		else DisBuf[1] &=~(1<<4);	
		if(dat&0x10) DisBuf[1] |=(1<<3);
		else DisBuf[1] &=~(1<<3);	
		if(dat&0x20) DisBuf[1] |=(1<<2);
		else DisBuf[1] &=~(1<<2);	
		if(dat&0x40) DisBuf[1] |=(1<<1);
		else DisBuf[1] &=~(1<<1);
	}
}

//�����
void SEG2(u8 dat, u8 enable)
{
	if (enable)
		return;
	else{
		if(dat&0x01) DisBuf[0] |=(1<<7);
		else DisBuf[0] &=~(1<<7);	
		if(dat&0x02) DisBuf[0] |=(1<<6);
		else DisBuf[0] &=~(1<<6);	
		if(dat&0x04) DisBuf[0] |=(1<<5);
		else DisBuf[0] &=~(1<<5);	
		if(dat&0x08) DisBuf[0] |=(1<<4);
		else DisBuf[0] &=~(1<<4);	
		if(dat&0x10) DisBuf[0] |=(1<<3);
		else DisBuf[0] &=~(1<<3);	
		if(dat&0x20) DisBuf[0] |=(1<<2);
		else DisBuf[0] &=~(1<<2);	
		if(dat&0x40) DisBuf[0] |=(1<<1);
		else DisBuf[0] &=~(1<<1);
	}
}
//�����
void SEG3(u8 dat, u8 enable)
{
	if (enable)
		return;
	else{
		if(dat&0x01) DisBuf[3] |=(1<<7);
		else DisBuf[3] &=~(1<<7);	
		if(dat&0x02) DisBuf[3] |=(1<<6);
		else DisBuf[3] &=~(1<<6);	
		if(dat&0x04) DisBuf[3] |=(1<<5);
		else DisBuf[3] &=~(1<<5);	
		if(dat&0x08) DisBuf[3] |=(1<<4);
		else DisBuf[3] &=~(1<<4);	
		if(dat&0x10) DisBuf[3] |=(1<<3);
		else DisBuf[3] &=~(1<<3);	
		if(dat&0x20) DisBuf[3] |=(1<<2);
		else DisBuf[3] &=~(1<<2);	
		if(dat&0x40) DisBuf[3] |=(1<<1);
		else DisBuf[3] &=~(1<<1);	
	}
}
//�����
void SEG4(u8 dat, u8 enable)
{
	if (enable)
		return;
	else{
		if(dat&0x01) DisBuf[2] |=(1<<7);
		else DisBuf[2] &=~(1<<7);	
		if(dat&0x02) DisBuf[2] |=(1<<6);
		else DisBuf[2] &=~(1<<6);	
		if(dat&0x04) DisBuf[2] |=(1<<5);
		else DisBuf[2] &=~(1<<5);	
		if(dat&0x08) DisBuf[2] |=(1<<4);
		else DisBuf[2] &=~(1<<4);	
		if(dat&0x10) DisBuf[2] |=(1<<3);
		else DisBuf[2] &=~(1<<3);	
		if(dat&0x20) DisBuf[2] |=(1<<2);
		else DisBuf[2] &=~(1<<2);	
		if(dat&0x40) DisBuf[2] |=(1<<1);
		else DisBuf[2] &=~(1<<1);	
	}
}
//�����
void SEG5(u8 dat, u8 enable)
{
	if (enable)
		return;
	else{
		if(dat&0x01) DisBuf[5] |=(1<<7);
		else DisBuf[5] &=~(1<<7);	
		if(dat&0x02) DisBuf[5] |=(1<<6);
		else DisBuf[5] &=~(1<<6);	
		if(dat&0x04) DisBuf[5] |=(1<<5);
		else DisBuf[5] &=~(1<<5);	
		if(dat&0x08) DisBuf[5] |=(1<<4);
		else DisBuf[5] &=~(1<<4);	
		if(dat&0x10) DisBuf[5] |=(1<<3);
		else DisBuf[5] &=~(1<<3);	
		if(dat&0x20) DisBuf[5] |=(1<<2);
		else DisBuf[5] &=~(1<<2);	
		if(dat&0x40) DisBuf[5] |=(1<<1);
		else DisBuf[5] &=~(1<<1);	
	}
}
//�����
void SEG6(u8 dat, u8 enable)
{
	if (enable)
		return;
	else
	{
		if(dat&0x01) DisBuf[4] |=(1<<7);
		else DisBuf[4] &=~(1<<7);	
		if(dat&0x02) DisBuf[4] |=(1<<6);
		else DisBuf[4] &=~(1<<6);	
		if(dat&0x04) DisBuf[4] |=(1<<5);
		else DisBuf[4] &=~(1<<5);	
		if(dat&0x08) DisBuf[4] |=(1<<4);
		else DisBuf[4] &=~(1<<4);	
		if(dat&0x10) DisBuf[4] |=(1<<3);
		else DisBuf[4] &=~(1<<3);	
		if(dat&0x20) DisBuf[4] |=(1<<2);
		else DisBuf[4] &=~(1<<2);	
		if(dat&0x40) DisBuf[4] |=(1<<1);
		else DisBuf[4] &=~(1<<1);
	}
}
//�����
void SEG7(u8 dat , u8 enable)
{
	if (enable)
		return;
	else
	{
		if(dat&0x01) DisBuf[7] |=(1<<7);
		else DisBuf[7] &=~(1<<7);	
		if(dat&0x02) DisBuf[7] |=(1<<6);
		else DisBuf[7] &=~(1<<6);	
		if(dat&0x04) DisBuf[7] |=(1<<5);
		else DisBuf[7] &=~(1<<5);	
		if(dat&0x08) DisBuf[7] |=(1<<4);
		else DisBuf[7] &=~(1<<4);	
		if(dat&0x10) DisBuf[7] |=(1<<3);
		else DisBuf[7] &=~(1<<3);	
		if(dat&0x20) DisBuf[7] |=(1<<2);
		else DisBuf[7] &=~(1<<2);	
		if(dat&0x40) DisBuf[7] |=(1<<1);
		else DisBuf[7] &=~(1<<1);
	}
}
//�����
void SEG8(u8 dat, u8 enable)
{
	if (enable)
		return;
	else
	{
		if(dat&0x01) DisBuf[6] |=(1<<7);
		else DisBuf[6] &=~(1<<7);	
		if(dat&0x02) DisBuf[6] |=(1<<6);
		else DisBuf[6] &=~(1<<6);	
		if(dat&0x04) DisBuf[6] |=(1<<5);
		else DisBuf[6] &=~(1<<5);	
		if(dat&0x08) DisBuf[6] |=(1<<4);
		else DisBuf[6] &=~(1<<4);	
		if(dat&0x10) DisBuf[6] |=(1<<3);
		else DisBuf[6] &=~(1<<3);	
		if(dat&0x20) DisBuf[6] |=(1<<2);
		else DisBuf[6] &=~(1<<2);	
		if(dat&0x40) DisBuf[6] |=(1<<1);
		else DisBuf[6] &=~(1<<1);
	}
}
void SEG9(u8 dat , u8 enable)
{
	if (enable)
		return;
	else
	{
		if(dat&0x01) DisBuf[15] |=(1<<7);
		else DisBuf[15] &=~(1<<7);	
		if(dat&0x02) DisBuf[15] |=(1<<6);
		else DisBuf[15] &=~(1<<6);	
		if(dat&0x04) DisBuf[15] |=(1<<5);
		else DisBuf[15] &=~(1<<5);	
		if(dat&0x08) DisBuf[15] |=(1<<4);
		else DisBuf[15] &=~(1<<4);	
		if(dat&0x10) DisBuf[15] |=(1<<3);
		else DisBuf[15] &=~(1<<3);	
		if(dat&0x20) DisBuf[15] |=(1<<2);
		else DisBuf[15] &=~(1<<2);	
		if(dat&0x40) DisBuf[15] |=(1<<1);
		else DisBuf[15] &=~(1<<1);
	}
}
void SEG10(u8 dat)
{
	if(dat&0x01) DisBuf[14] |=(1<<7);
	else DisBuf[14] &=~(1<<7);	
	if(dat&0x02) DisBuf[14] |=(1<<6);
	else DisBuf[14] &=~(1<<6);	
	if(dat&0x04) DisBuf[14] |=(1<<5);
	else DisBuf[14] &=~(1<<5);	
	if(dat&0x08) DisBuf[14] |=(1<<4);
	else DisBuf[14] &=~(1<<4);	
	if(dat&0x10) DisBuf[14] |=(1<<3);
	else DisBuf[14] &=~(1<<3);	
	if(dat&0x20) DisBuf[14] |=(1<<2);
	else DisBuf[14] &=~(1<<2);	
	if(dat&0x40) DisBuf[14] |=(1<<1);
	else DisBuf[14] &=~(1<<1);
	if(dat&0x80) DisBuf[13] |= (1<<0);
	else DisBuf[13] &=~(1<<0);
}
void SEG11(u8 dat)
{
	if(dat&0x01) DisBuf[13] |=(1<<7);
	else DisBuf[13] &=~(1<<7);	
	if(dat&0x02) DisBuf[13] |=(1<<6);
	else DisBuf[13] &=~(1<<6);	
	if(dat&0x04) DisBuf[13] |=(1<<5);
	else DisBuf[13] &=~(1<<5);	
	if(dat&0x08) DisBuf[13] |=(1<<4);
	else DisBuf[13] &=~(1<<4);	
	if(dat&0x10) DisBuf[13] |=(1<<3);
	else DisBuf[13] &=~(1<<3);	
	if(dat&0x20) DisBuf[13] |=(1<<2);
	else DisBuf[13] &=~(1<<2);	
	if(dat&0x40) DisBuf[13] |=(1<<1);
	else DisBuf[13] &=~(1<<1);
}
void SEG12(u8 dat)
{
	if(dat&0x01) DisBuf[12] |=(1<<7);
	else DisBuf[12] &=~(1<<7);	
	if(dat&0x02) DisBuf[12] |=(1<<6);
	else DisBuf[12] &=~(1<<6);	
	if(dat&0x04) DisBuf[12] |=(1<<5);
	else DisBuf[12] &=~(1<<5);	
	if(dat&0x08) DisBuf[12] |=(1<<4);
	else DisBuf[12] &=~(1<<4);	
	if(dat&0x10) DisBuf[12] |=(1<<3);
	else DisBuf[12] &=~(1<<3);	
	if(dat&0x20) DisBuf[12] |=(1<<2);
	else DisBuf[12] &=~(1<<2);	
	if(dat&0x40) DisBuf[12] |=(1<<1);
	else DisBuf[12] &=~(1<<1);
	
}
void SEG13(u8 dat)
{
	if(dat&0x01) DisBuf[11] |=(1<<7);
	else DisBuf[11] &=~(1<<7);	
	if(dat&0x02) DisBuf[11] |=(1<<6);
	else DisBuf[11] &=~(1<<6);	
	if(dat&0x04) DisBuf[11] |=(1<<5);
	else DisBuf[11] &=~(1<<5);	
	if(dat&0x08) DisBuf[11] |=(1<<4);
	else DisBuf[11] &=~(1<<4);	
	if(dat&0x10) DisBuf[11] |=(1<<3);
	else DisBuf[11] &=~(1<<3);	
	if(dat&0x20) DisBuf[11] |=(1<<2);
	else DisBuf[11] &=~(1<<2);	
	if(dat&0x40) DisBuf[11] |=(1<<1);
	else DisBuf[11] &=~(1<<1);
	//TODO:С�����ʹ��
	if(dat&0x80) DisBuf[11] |= (1<<0);
	else DisBuf[11] &=~(1<<0);
}

void SEG14(u8 dat)
{
	if(dat&0x01) DisBuf[10] |=(1<<7);
	else DisBuf[10] &=~(1<<7);	
	if(dat&0x02) DisBuf[10] |=(1<<6);
	else DisBuf[10] &=~(1<<6);	
	if(dat&0x04) DisBuf[10] |=(1<<5);
	else DisBuf[10] &=~(1<<5);	
	if(dat&0x08) DisBuf[10] |=(1<<4);
	else DisBuf[10] &=~(1<<4);	
	if(dat&0x10) DisBuf[10] |=(1<<3);
	else DisBuf[10] &=~(1<<3);	
	if(dat&0x20) DisBuf[10] |=(1<<2);
	else DisBuf[10] &=~(1<<2);	
	if(dat&0x40) DisBuf[10] |=(1<<1);
	else DisBuf[10] &=~(1<<1);
}


//��������ʾ��0�رգ���֮��
void Display_Anion(u8 sta)
{
	// if(sta)
	// {
	// 	DisBuf[0] |=(1<<0);
	// 	DisBuf[4] |=(1<<0);
	// }
	// else
	// {
	// 	DisBuf[0] &=~(1<<0);
	// 	DisBuf[4] &=~(1<<0);
	// }
}
//��Ũ�ȱ�ǩ��0�رգ���֮��
void Label_Concentration(u8 sta)
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

//��������ǩ��0�رգ���֮��
void Label_Flow(u8 sta)
{
	if(sta)
	{
		DisBuf[8] |=(1<<2);
	}
	else
	{
		DisBuf[8] &=~(1<<2);
	}
}

//��Ũ��%��ǩ��0�رգ���֮��
void Label_Percent(u8 sta)
{
	if(sta)
	{
		DisBuf[10] |=(1<<0);
	}
	else
	{
		DisBuf[10] &=~(1<<0);
	}
}


//�ۼƱ�ǩ��0�رգ���֮��
void Label_AddUp(u8 sta)
{
	if(sta)
	{
		DisBuf[9] |= (1<<7);
	}
	else
	{
		DisBuf[9] &=~(1<<7);
	}
}

//�رձ�����ǩ��0�رգ���֮��
//�Ѿ����
void Label_CloseAlarm(u8 sta , u8 status)
{
	if(status == 1) 
	{
		return;
	}else{
		if(sta)
		{
			DisBuf[0] |= (1<<0);
			DisBuf[2] |= (1<<0);
		}
		else
		{
			DisBuf[0] &=~(1<<0);
			DisBuf[2] &=~(1<<0);
		}
	}
}

//h��λ��ǩ��0�رգ���֮��
void Label_h(u8 sta)
{
	if(sta)
	{
		DisBuf[9] |= (1<<6);
	}
	else
	{
		DisBuf[9] &=~(1<<6);
	}
}


//L/min��ǩ��0�رգ���֮��
void Label_L_min(u8 sta)
{
	if(sta)
	{
		DisBuf[8] |= (1<<1);
	}
	else
	{
		DisBuf[8] &=~(1<<1);
	}
}
//��ʱ��ǩ��0�رգ���֮��
void Label_Timing(u8 sta, u8 enable)
{
	if(enable >= 3) DisBuf[9] &=~(1<<3);
	else{
		if(sta)
		{
			DisBuf[9] |=(1<<3);
		}
		else
		{
			DisBuf[9] &=~(1<<3);
		}
	}
}

//���б�ǩ��0�رգ���֮��
void Label_Running(u8 sta , u8 enable)
{
	if(enable >= 3) DisBuf[9] &=~(1<<2);
	else
	{
		if(sta)
		{
			DisBuf[9] |=(1<<2);
		}
		else
		{
			DisBuf[9] &=~(1<<2);
		}
	}
}
//min��ǩ��0�رգ���֮��
//TODO:11
void Label_Min(u8 sta , u8 enable)
{
	if(enable >= 3) DisBuf[9] &=~(1<<0);
	else
	{
		if(sta)
		{
			DisBuf[9] |= (1<<0);
		}
		else
		{
			DisBuf[9] &=~(1<<0);
		}
	}
}
//ϵͳ״ָ̬ʾ��,һ��Ҫ�����ۼ�ʱ����ʾ����
void Display_SysSta(u8 sta)
{
	switch(sta)
	{
		case 1://���л�����
				DIS_LED_WARNING = 0;//����
				DIS_LED_NORMAL = 1;//����
				DIS_LED_ALARM = 0;//����
		break;
		case 2://����
				DIS_LED_WARNING = 1;//����
				DIS_LED_NORMAL = 0;//����
				DIS_LED_ALARM = 0;//����
		break;		
		case 3://����
				DIS_LED_WARNING = 0;//����
				DIS_LED_NORMAL = 0;//����
				DIS_LED_ALARM = 1;//����
		break;	
		default: //Ϩ��
				DIS_LED_WARNING = 0;//����
				DIS_LED_NORMAL = 0;//����
				DIS_LED_ALARM = 0;//����
		break;		
	}
}



//����������0�رգ���֮��
//�����
void Display_Voice(u8 sta)
{
	if(sta)
	{
		DisBuf[4] |= (1<<0);
		DisBuf[6] |= (1<<0);
	}
	else
	{
		DisBuf[4] &=~(1<<0);
		DisBuf[6] &=~(1<<0);
	}
}

//���������0�رգ���֮��
void Display_FilterMesh(u8 sta)
{
	if(sta)
	{
		RunData.FilterMesh_Delay_Flag = 1;
		if(RunData.FilterMesh_Delay_Time <= 500)
		{
			DisBuf[12] |= (1<<0);
			DisBuf[14] |= (1<<0);
		}
		if(RunData.FilterMesh_Delay_Time > 500 && RunData.FilterMesh_Delay_Time <= 1000)
		{
			DisBuf[12] &=~(1<<0);
			DisBuf[14] &=~(1<<0);
		}
		Update_Display();
	}
	else
	{
		DisBuf[12] &=~(1<<0);
		DisBuf[14] &=~(1<<0);
	}

}


//��ʱʱ�� //todo:->2023/12/18 fix:�޸ģ�����ʹ�ܲ���
void Display_Timing(u32 sum, u8 mode, u8 enable)
{
	if (enable == 1)
	{
		if(RunData.Timing > 0){
			Label_Timing(1,0);
			Label_Running(0,0);
		}else{
			Label_Timing(0,0);
			Label_Running(1,0);
		}
		
		Label_Min(1,0);
		return;
	}
	else if (enable == 2)
	{
		Label_Timing(0,0);
		Label_Running(0,0);
		Label_Min(0,0);
	}
	else
	{
		if (sum > 999)
			sum = 999;

		int hour = sum / 60;  // ����Сʱ��
		int minute = sum % 60;  // ���������

		SEG6(ch_table[hour / 10] , Engineering_Pattern.Led_Display_Timing_Enbale);  // ��ʾСʱ��ʮλ
		SEG7(ch_table[hour % 10] , Engineering_Pattern.Led_Display_Timing_Enbale);  // ��ʾСʱ�ĸ�λ
		SEG8(ch_table[minute / 10] , Engineering_Pattern.Led_Display_Timing_Enbale);  // ��ʾ���ӵ�ʮλ
		SEG9(ch_table[minute % 10] , Engineering_Pattern.Led_Display_Timing_Enbale);  // ��ʾ���ӵĸ�λ

		switch (mode)
		{
		case 1: // ���л�����
			Label_Min(1,RunData.Error_Delay_Time);
			Display_hour(1);
			Label_Running(1,RunData.Error_Delay_Time);
			Label_Timing(0,RunData.Error_Delay_Time);
			break;
		case 2: // ��ʱ
			Display_hour(1);
			Label_Min(1,RunData.Error_Delay_Time);
			Label_Running(0,RunData.Error_Delay_Time);
			Label_Timing(1,RunData.Error_Delay_Time);
			break;

		case 3: // ����
			SEG6(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG7(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG8(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG9(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
			Label_Min(1,RunData.Error_Delay_Time);
			Display_hour(1);
			Label_Running(1,RunData.Error_Delay_Time);
			Label_Timing(0,RunData.Error_Delay_Time);
			break;

		case 4: // �汾��
			//			DisBuf[0]&= ~0x80;
			//			DisBuf[1]&= ~0x80;
			//			DisBuf[2]&= ~0x80;
			break;

		default: // Ϩ��
			SEG6(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG7(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG8(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
			SEG9(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
			Label_Min(0,0);
			Label_Running(0,0);
			Display_hour(0);
			Label_Timing(0,0);
			break;
		}
	}
}

//����Ũ����ʾ
void Display_Concentration(u16 sum,u8 mode)
{
	if(sum>999) sum = 999;
	SEG12(ch_table[sum%1000/100]);
	SEG13(ch_table[sum%100/10]);
	SEG14(ch_table[sum%10]);	

	switch(mode)
	{
		case 1: //���л�����
			Label_Concentration(1);
			Label_Percent(1);
			SEG13(ch_table[sum%100/10]|0x80);
		break;

		case 3: //����
			SEG12(0x40);
			SEG13(0x40|0x80);
			SEG14(0x40);
			Label_Percent(1);
            Label_Concentration(1);
		break;
		default : //Ϩ��
			SEG12(0x00);
			SEG13(0x00);
			SEG14(0x00);
			Label_Percent(0);
            Label_Concentration(0);
		break;
	}	
}

//������ʾ
void Display_Flow(u16 sum,u8 mode , u8 enable)
{
	if(enable == 1) return;
	else{
		if(sum>99) sum = 99;	
		SEG10(ch_table[sum%100/10]);
		SEG11(ch_table[sum%10]);	
		switch(mode)
		{
			case 1: //���л�����
				SEG10(ch_table[sum%100/10]|0x80);//С���㣬����  ��ʵ�����DisBuf[13] = (1<<0);
				Label_Flow(1);
				Label_L_min(1);
			break;

			case 3: //����
				SEG10(0x40|0x80);
				SEG11(0x40);
				Label_Flow(1);
				Label_L_min(1);
			break;
			default : //Ϩ��
				SEG10(0x00);
				SEG11(0x00);
				Label_Flow(0);
				Label_L_min(0);
			break;
		}	
	}
}

//�ۼ�ʱ�� //todo:->2023/12/18 fix:�޸ģ�����ʹ�ܲ���
void Display_CumulativeTime(u32 sum, u8 mode, u8 enable)
{
	if (enable)
		return;
	else
	{
		SEG1(ch_table[sum % 100000 / 10000],0);
		SEG2(ch_table[sum % 10000 / 1000],0);
		SEG3(ch_table[sum % 1000 / 100],0);
		SEG4(ch_table[sum % 100 / 10],0);
		SEG5(ch_table[sum % 10],0);
		switch (mode)
		{
		case 1: // ���л�����
			Label_h(1);
			Label_AddUp(1);
			break;
		default: // Ϩ��
			SEG1(0x00,0);
			SEG2(0x00,0);
			SEG3(0x00,0);
			SEG4(0x00,0);
			SEG5(0x00,0);

			Label_h(0);
			Label_AddUp(0);

			break;
		}
	}
}

//�����ӵ��� ����������������
void Display_Line(u8 sta)
{
	if(sta)
	{
		DisBuf[8] |= (1<<7);
		DisBuf[8] |= (1<<6);
		DisBuf[8] |= (1<<5);
		DisBuf[8] |= (1<<4);
		DisBuf[8] |= (1<<3);
	}
	else
	{
		DisBuf[8] &= ~(1<<7);
		DisBuf[8] &= ~(1<<6);
		DisBuf[8] &= ~(1<<5);
		DisBuf[8] &= ~(1<<4);
		DisBuf[8] &= ~(1<<3);
	}
}

//����Сʱ��ǩ ��ʹ��
void Display_hour(u8 sta)
{
	if(sta)
	{
		DisBuf[9] |= (1<<1);
	}
	else
	{
		DisBuf[9] &=~(1<<1);
	}
}

//todo:->2023/12/18 add:���ڹ���ģʽ����ʾ
void Engineering_Flow_Compensation_display1(u8 a)//a == 0��ʾ����  a==1��ʾ����
{
	if(a == 1)
	{
		DisBuf[1] |=(1<<6);
		DisBuf[1] |=(1<<5);
		DisBuf[1] |=(1<<1);
		DisBuf[1] &= ~(1<<2);
		DisBuf[1] &= ~(1<<3);
		DisBuf[1] &= ~(1<<4);
		DisBuf[1] &= ~(1<<7);

		DisBuf[0] |=(1<<3);
		DisBuf[0] |=(1<<2);
		DisBuf[0] |=(1<<1);
		DisBuf[0] &= ~(1<<4);
		DisBuf[0] &= ~(1<<5);
		DisBuf[0] &= ~(1<<6);
		DisBuf[0] &= ~(1<<7);
	}
	if(a == 0)
	{
		DisBuf[1] |=(1<<1);
		DisBuf[1] &= ~(1<<2);
		DisBuf[1] &= ~(1<<3);
		DisBuf[1] &= ~(1<<4);
		DisBuf[1] &= ~(1<<5);
		DisBuf[1] &= ~(1<<6);
		DisBuf[1] &= ~(1<<7);

		DisBuf[0] |=(1<<1);
		DisBuf[0] &= ~(1<<2);
		DisBuf[0] &= ~(1<<3);
		DisBuf[0] &= ~(1<<4);
		DisBuf[0] &= ~(1<<5);
		DisBuf[0] &= ~(1<<6);
		DisBuf[0] &= ~(1<<7);
	}
	
}