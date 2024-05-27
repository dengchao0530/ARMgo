#include "eeprom.h"
#include "touchkey.h"
#include "touch.h"
#define START_ADDR 0x00

void E2prom_WriteData(void)//有问题
{
	u8  i=0;
	u8 dat[50] = {0};
	dat[0] = 0x0A;
	dat[1] = (RunData.FlowSet>>8)&0xFF;
	dat[2] = RunData.FlowSet&0xFF;
	dat[3] = (RunData.CumulativeTime>>24)&0xFF;
	dat[4] = (RunData.CumulativeTime>>16)&0xFF;
	dat[5] = (RunData.CumulativeTime>>8)&0xFF;
	dat[6] = RunData.CumulativeTime&0xFF;
	dat[7] = (RunData.XF_TimeSet>>8)&0xFF;
	dat[8] = RunData.XF_TimeSet;
	dat[9] = (RunData.JY_TimeSet>>8)&0xFF;
	dat[10] = RunData.JY_TimeSet&0xFF;
	dat[11] = RunData.VoiceEnable;
	dat[12] = (RunData.FLOW_Trim>>8)&0xFF;
    dat[13] = RunData.FLOW_Trim&0xFF;
	dat[14] = RunData.Voltage_Calibration; //todo:->2023/12/18 add:增加电压标定值


	//这么一大串IF是让流量补偿值可以存负数
	if(RunData.Adjust_Flow_20_value < 0) 
	{
		RunData.negative_Adjust_Flow_20_Flag = 1;
		RunData.Adjust_Flow_20_value = -RunData.Adjust_Flow_20_value;
	}
	else RunData.negative_Adjust_Flow_20_Flag = 0;

	if(RunData.Adjust_Flow_50_value < 0) {
		RunData.negative_Adjust_Flow_50_Flag = 1;
		RunData.Adjust_Flow_50_value = -RunData.Adjust_Flow_50_value;
	}
	else RunData.negative_Adjust_Flow_50_Flag = 0;

	if(RunData.Adjust_Flow_100_value < 0) 
	{
		RunData.negative_Adjust_Flow_100_Flag = 1;
		RunData.Adjust_Flow_100_value = -RunData.Adjust_Flow_100_value;
	}
	else RunData.negative_Adjust_Flow_100_Flag = 0;
	dat[15] = RunData.Adjust_Flow_20_value; //todo:->2024/1/12 add:增加20%流量校准
	dat[16] = RunData.Adjust_Flow_50_value; //todo:->2024/1/12 add:增加50%流量校准
	dat[17] = RunData.Adjust_Flow_100_value; //todo:->2024/1/12 add:增加10%流量校准

	dat[18] = RunData.negative_Adjust_Flow_20_Flag; 
	dat[19] = RunData.negative_Adjust_Flow_50_Flag; 
	dat[20] = RunData.negative_Adjust_Flow_100_Flag; 

	//增加排氮时间
	dat[21] = (RunData.PD_TimeSet>>8)&0xFF;
	dat[22] = RunData.PD_TimeSet;
    
	for(i=0; i<50; i++)
	{
		EEPROMwrite(START_ADDR | i, dat[i]);
	}
	E2prom_ReadData();
}
void E2prom_ReadData(void)
{
	u8 i = 0;
	u8 dat[50] = {0};
	for(i=0; i<50; i++) dat[i] = EEPROMread(START_ADDR | i);
	if(dat[0] != 0x0A)
	{
		
		RunData.FlowSet = 30;
		RunData.CumulativeTime = 0;
		RunData.XF_TimeSet = 60;//3.5s
		RunData.JY_TimeSet = 6;//0.5s
		RunData.VoiceEnable = 1;
		//E2prom_WriteData();
		return;
	}
	
	RunData.FlowSet = dat[1]<<8;
	RunData.FlowSet |= dat[2];
	
	RunData.CumulativeTime |= ((u32)dat[3]<<24);
	RunData.CumulativeTime |= ((u32)dat[4]<<16);
	RunData.CumulativeTime |= ((u32)dat[5]<<8);
	RunData.CumulativeTime |= (u32)dat[6];
	RunData.XF_TimeSet = dat[7]<<8;
	RunData.XF_TimeSet |= dat[8];
	RunData.JY_TimeSet = dat[9]<<8;
	RunData.JY_TimeSet |= dat[10];	
	RunData.VoiceEnable = dat[11];	
    RunData.FLOW_Trim = dat[12]<<8;
    RunData.FLOW_Trim |= dat[13];
	RunData.Voltage_Calibration = dat[14] ; //todo:->2023/12/18 add:
	
	//增加电压标定值
	RunData.negative_Adjust_Flow_20_Flag = dat[18]; 
	RunData.negative_Adjust_Flow_50_Flag= dat[19]; 
	RunData.negative_Adjust_Flow_100_Flag= dat[20]; 


	//读取排氮时间
	RunData.PD_TimeSet = dat[21]<<8;
	RunData.PD_TimeSet |= dat[22];

	//这么一大串if是让流量补偿值读取负数
	if(RunData.negative_Adjust_Flow_20_Flag == 1){
		RunData.Adjust_Flow_20_value = -dat[15];
	}else{
		RunData.Adjust_Flow_20_value = dat[15]; //todo:->2024/1/12 add:增加20%流量校准
	}

	if(RunData.negative_Adjust_Flow_50_Flag == 1){
		RunData.Adjust_Flow_50_value = -dat[16];
	}else{
		RunData.Adjust_Flow_50_value = dat[16]; //todo:->2024/1/12 add:增加20%流量校准
	}


	if(RunData.negative_Adjust_Flow_100_Flag == 1){
		RunData.Adjust_Flow_100_value = -dat[17];
	}else{
		RunData.Adjust_Flow_100_value = dat[17]; //todo:->2024/1/12 add:增加20%流量校准
	}
}

