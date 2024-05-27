#include "irkey.h"
#include "uart1.h"
#include "touchkey.h"
IRKEY_DATA IRKeyDat;
IR_DATA IRData;

void IR_Key_Init(void)
{
	//��������
	TRISDbits.TRISD4 = 1;			// PD4 ��Ϊ����
    AFP14bits.T3CAP = 10;			// PD4 ��Ϊ T3CAP ����	
		
    
    PCKEN1bits.T3CKEN = 1;			// TIM3 ʱ��ʹ��λ    
        
    T3CR1bits.T3CKS = 0B001;		// TIM5 ʱ��Դѡ�� HIRC 16M
    T3CR1bits.T3PSC = 0B100;		// TIM5 ʱ��Ԥ��Ƶ F_T0CNTCLK = F_T4CK/16 = 1M;
    
	T3CNTRL = 0;					// ����������
    T3CNTRH = 0;					// ����������
    
	T3CCPRL = 0;					// ���㲶��Ĵ���
    T3CCPRH = 0;               		// ���㲶��Ĵ���
     
	T3CR2bits.T3CAPMOD = 0B10;		// ��׽ģʽѡ�������ز���
    T3CR2bits.T3CAPPSC = 0B00;		// ��׽�˲�ѡ��4���˲�
    T3CR2bits.T3CAPE = 1;			// ��׽����ʹ��
    T3CR3bits.T3CCM = 1;			// ������׽�¼������ TIM3 ����������Ԥ��Ƶ������
    
    T3CR2bits.T3COME = 0;			// �ȽϹ��ܽ�ֹ
    
    T3CR1bits.T3CCIE = 1;			// TIM3 ��׽/ƥ���ж�ʹ��
    T3CR3bits.T3CCIF = 0;			// ���TIM3��׽/�Ƚϱ�ʶ
    
    IPEN = 0;						// ��ֹ�ж����ȼ� 
    GIE = 1;						// ʹ��ȫ�����ж�
    PEIE = 1;						// ʹ���������ж�
   
	T3CR1bits.T3CEN = 1;			// TIM3 ʹ��			
}
//ң��������״̬
//[7]:�յ����������־
//[6]:�õ���һ��������������Ϣ
//[5]:����	
//[4]:����������Ƿ��Ѿ�������								   
//[3:0]:�����ʱ��
u8 	RmtSta=0;	  	  
u16 Dval;		//�½���ʱ��������ֵ
u32 RmtRec=0;	//������յ�������	   		    
u8  RmtCnt=0;	//�������µĴ���	
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
//		if(RmtSta&0x80)								//�ϴ������ݱ����յ���
//		{	
//			RmtSta&=~0X10;							//ȡ���������Ѿ���������
//			if((RmtSta&0X0F)==0X00)RmtSta|=1<<6;	//����Ѿ����һ�ΰ����ļ�ֵ��Ϣ�ɼ�
//			if((RmtSta&0X0F)<5)RmtSta++;
//			else
//			{
//				RmtSta&=~(1<<7);					//���������ʶ
//				RmtSta&=0XF0;						//��ռ�����	
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
//			if(RmtSta&0X10)							//���һ�θߵ�ƽ���� 
//			{
// 				if(RmtSta&0X80)//���յ���������
//				{
//					
//					if(Dval>600&&Dval<1600)			//1120Ϊ��׼ֵ,560us
//					{
//						RmtRec<<=1;					//����һλ.
//						RmtRec|=0;					//���յ�0	   
//					}else if(Dval>2800&&Dval<3600)	//3360Ϊ��׼ֵ,1680us
//					{
//						RmtRec<<=1;					//����һλ.
//						RmtRec|=1;					//���յ�1
//					}else if(Dval>4400&&Dval<5200)	//�õ�������ֵ���ӵ���Ϣ 2500Ϊ��׼ֵ2.5ms
//					{
//						RmtCnt++; 					//������������1��
//						RmtSta&=0XF0;				//��ռ�ʱ��		
//					}
// 				}else if(Dval>8400&&Dval<9400)		//4500Ϊ��׼ֵ4.5ms
//				{
//					RmtSta|=1<<7;					//��ǳɹ����յ���������
//					RmtCnt=0;						//�����������������
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
				
			
			
				if(IRData.Sta&0x01)//���յ���������
				{
					if(IRData.gao>900&&IRData.gao<2400)			//1120Ϊ��׼ֵ,560us
					{
						IRData.get_w++;
						IRData.Dat=(IRData.Dat<<1)|0x01;
					}
					else if(IRData.gao>4200&&IRData.gao<5400)//	//3360Ϊ��׼ֵ,1680us
					{
						IRData.get_w++;
						IRData.Dat=IRData.Dat<<1;
						
					}
					else if(IRData.gao>6600&&IRData.gao<7800)	//�õ�������ֵ���ӵ���Ϣ 5000Ϊ��׼ֵ2.5ms
					{
						IRData.RmtCnt++; 					//������������1��

					}
					if(IRData.get_w==32) 
					{
						IRData.Value=IRData.Dat;
						//printf("RF:%X\r\n",RF_D.TouchValue);
						IRData.Dat=0;
						IRData.get_w=0;
					}
				}
				else if(IRData.gao>12600&&IRData.gao<14100) //9000Ϊ��׼ֵ4.5ms
				{
					
					IRData.Sta|=0x01;   //�յ�������
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

void IR_MoreCtr(void)//�����������ƺ���ȿ���
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

