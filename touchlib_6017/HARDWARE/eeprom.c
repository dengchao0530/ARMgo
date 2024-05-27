#include "eeprom.h"
#include "intrins.h"
#include "touchkey.h"
#include "uart1.h"

#define START_ADDR 0x0400

void IapIdle()
{
    IAP_CONTR = 0;                              //�ر�IAP����
    IAP_CMD = 0;                                //�������Ĵ���
    IAP_TRIG = 0;                               //��������Ĵ���
    IAP_ADDRH = 0x80;                           //����ַ���õ���IAP����
    IAP_ADDRL = 0;
}

char IapRead(int addr)
{
    char dat;

    IAP_CONTR = 0x80;                           //ʹ��IAP
    IAP_TPS = 24;                               //���õȴ�����12MHz
    IAP_CMD = 1;                                //����IAP������
    IAP_ADDRL = addr;                           //����IAP�͵�ַ
    IAP_ADDRH = addr >> 8;                      //����IAP�ߵ�ַ
    IAP_TRIG = 0x5a;                            //д��������(0x5a)
    IAP_TRIG = 0xa5;                            //д��������(0xa5)
    _nop_();
    dat = IAP_DATA;                             //��IAP����
    IapIdle();                                  //�ر�IAP����

    return dat;
}

void IapProgram(int addr, char dat)
{
    IAP_CONTR = 0x80;                           //ʹ��IAP
    IAP_TPS = 24;                               //���õȴ�����12MHz
    IAP_CMD = 2;                                //����IAPд����
    IAP_ADDRL = addr;                           //����IAP�͵�ַ
    IAP_ADDRH = addr >> 8;                      //����IAP�ߵ�ַ
    IAP_DATA = dat;                             //дIAP����
    IAP_TRIG = 0x5a;                            //д��������(0x5a)
    IAP_TRIG = 0xa5;                            //д��������(0xa5)
    _nop_();
    IapIdle();                                  //�ر�IAP����
}

void IapErase(int addr)
{
    IAP_CONTR = 0x80;                           //ʹ��IAP
    IAP_TPS = 24;                               //���õȴ�����12MHz
    IAP_CMD = 3;                                //����IAP��������
    IAP_ADDRL = addr;                           //����IAP�͵�ַ
    IAP_ADDRH = addr >> 8;                      //����IAP�ߵ�ַ
    IAP_TRIG = 0x5a;                            //д��������(0x5a)
    IAP_TRIG = 0xa5;                            //д��������(0xa5)
    _nop_();                                    //
    IapIdle();                                  //�ر�IAP����
}

void E2prom_WriteData(void)//������
{
	u8  i=0;
	u8 dat[50] = {0};
//	static u8 temp = 0;
//	static u8 StandbyStaLast = 0;
//	if(RunData.CumulativeTime%30==0)//
//	{
//		if(temp == 0) temp = 1;
//	}
//	else
//	{
//		temp = 0;
//	}
//	if(((StandbyStaLast != RunData.StandbySta) && (RunData.StandbySta==1)) || (temp==1)) 
//	{
//		temp = 2;
			
			UartSendStr("VoiceEnable:");
			sendint(RunData.VoiceEnable);
			UartSendStr("\r\n");
	
			UartSendStr("FlowSet:");
			sendint(RunData.FlowSet);
			UartSendStr("\r\n");
			
			
			UartSendStr("CumulativeTime:");
			sendint(RunData.CumulativeTime);
			UartSendStr("\r\n");
			
			UartSendStr("XF_TimeSet:");
			sendint(RunData.XF_TimeSet);
			UartSendStr("\r\n");
			
			UartSendStr("JY_TimeSet:");
			sendint(RunData.JY_TimeSet);
			UartSendStr("write front\r\n\r\n\r\n");	
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
		
	UartSendStr("write hex:");
	for(i=0; i<11; i++)
	{
		sendhex(dat[i]);
		UartSendStr(" ");
	}
	UartSendStr("\r\n");
	
		IapErase(START_ADDR);
		for(i=0; i<50; i++)
		{
			IapProgram(START_ADDR | i, dat[i]);
		}
		E2prom_ReadData();
//		IapErase(START_ADDR);
//		IapProgram(START_ADDR | i++, 0x0A);
//		IapProgram(START_ADDR | i++, (RunData.FlowSet>>8)&0xFF);
//		IapProgram(START_ADDR | i++, RunData.FlowSet&0xFF);
////		IapProgram(0x0000 | i++, (RunData.Timing>>8)&0xFF);
////		IapProgram(0x0000 | i++, RunData.Timing&0xFF);
//		
//		IapProgram(START_ADDR | i++, (RunData.CumulativeTime>>24)&0xFF);
//		IapProgram(START_ADDR | i++, (RunData.CumulativeTime>>16)&0xFF);
//		IapProgram(START_ADDR | i++, (RunData.CumulativeTime>>8)&0xFF);
//		IapProgram(START_ADDR | i++, RunData.CumulativeTime&0xFF);
//		IapProgram(START_ADDR | i++, (RunData.XF_TimeSet>>8)&0xFF);
//		IapProgram(START_ADDR | i++, RunData.XF_TimeSet&0xFF);	
//		IapProgram(START_ADDR | i++, (RunData.JY_TimeSet>>8)&0xFF);
//		IapProgram(START_ADDR | i++, RunData.JY_TimeSet&0xFF);	
//		IapProgram(START_ADDR | i++, RunData.VoiceEnable);	


//		
//	}
//	StandbyStaLast = RunData.StandbySta;

}


void E2prom_ReadData(void)
{
	u8 i = 0;
	u8 dat[50] = {0};

	for(i=0; i<50; i++) dat[i] = IapRead(START_ADDR | i);
	UartSendStr("read hex:");
	for(i=0; i<11; i++)
	{
		sendhex(dat[i]);
		UartSendStr(" ");
	}
	UartSendStr("\r\n");	
	if(dat[0] != 0x0A)
	{
		
		RunData.FlowSet = 30;
		RunData.CumulativeTime = 0;
		RunData.XF_TimeSet = 35;//3.5s
		RunData.JY_TimeSet = 5;//0.5s
		RunData.VoiceEnable = 1;
		//E2prom_WriteData();
		return;
	}
	
	RunData.FlowSet = dat[1]<<8;
	RunData.FlowSet |= dat[2];
	
	RunData.CumulativeTime |= (dat[3]<<24);
	RunData.CumulativeTime |= (dat[4]<<16);
	RunData.CumulativeTime |= (dat[5]<<8);
	RunData.CumulativeTime |= dat[6];
	RunData.XF_TimeSet = dat[7]<<8;
	RunData.XF_TimeSet |= dat[8];
	RunData.JY_TimeSet = dat[9]<<8;
	RunData.JY_TimeSet |= dat[10];	
	RunData.VoiceEnable = dat[11];	

	
			UartSendStr("sizeof:");
			sendint(sizeof(long));
			UartSendStr("\r\n");	
	
			UartSendStr("VoiceEnable:");
			sendint(RunData.VoiceEnable);
			UartSendStr("\r\n");
	
			UartSendStr("FlowSet:");
			sendint(RunData.FlowSet);
			UartSendStr("\r\n");
			
			
			UartSendStr("CumulativeTime:");
			sendint(RunData.CumulativeTime);
			UartSendStr("\r\n");
			
			UartSendStr("XF_TimeSet:");
			sendint(RunData.XF_TimeSet);
			UartSendStr("\r\n");
			
			UartSendStr("JY_TimeSet:");
			sendint(RunData.JY_TimeSet);
			UartSendStr("\r\n");
	UartSendStr("Read later\r\n\r\n\r\n");	
}


