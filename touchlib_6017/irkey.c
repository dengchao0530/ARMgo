
#include "irkey.h"
// #include "uart1.h"
#include "touchkey.h"
#include "GPIO_Init.h"
#include "uart2.h"
#include "voice.h"
#include "setsysdata.h"
IRKEY_DATA IRKeyDat;
IR_DATA IRData;

unsigned char cnt; // �洢PCA��ʱ�������
void IR_Key_Init(void)
{
	// ��������
	TRISDbits.TRISD4 = 1;	// PD4 ��Ϊ����
	AFP14bits.T3CAP = 0B10; // PD4 ��Ϊ T3CAP ����

	PCKEN1bits.T3CKEN = 1; // TIM3 ʱ��ʹ��λ

	T3CR1bits.T3CKS = 0B001; // TIM5 ʱ��Դѡ�� HIRC 16M
	T3CR1bits.T3PSC = 0B100; // TIM5 ʱ��Ԥ��Ƶ F_T0CNTCLK = F_T4CK/16 = 1M;

	T3CNTRL = 0; // ����������
	T3CNTRH = 0; // ����������

	T3CCPRL = 0; // ���㲶��Ĵ���
	T3CCPRH = 0; // ���㲶��Ĵ���

	T3CR2bits.T3CAPMOD = 0B10; // ��׽ģʽѡ�������ز���
	T3CR2bits.T3CAPPSC = 0B00; // ��׽�˲�ѡ��4���˲�
	T3CR2bits.T3CAPE = 1;	   // ��׽����ʹ��
	T3CR3bits.T3CCM = 1;	   // ������׽�¼������ TIM3 ����������Ԥ��Ƶ������

	T3CR2bits.T3COME = 0; // �ȽϹ��ܽ�ֹ

	T3CR1bits.T3CCIE = 1; // TIM3 ��׽/ƥ���ж�ʹ��
	T3CR3bits.T3CCIF = 0; // ���TIM3��׽/�Ƚϱ�ʶ
	T3CR1bits.T3IE = 1;	  // TIM3 ����ж�ʹ��
	T3CR3bits.T3IF = 0;	  // TIM3 ����жϱ�ʶ

	IPEN = 0; // ��ֹ�ж����ȼ�
	GIE = 1;  // ʹ��ȫ�����ж�
	PEIE = 1; // ʹ���������ж�

	T3CR1bits.T3CEN = 1; // TIM3 ʹ��
}
// ң��������״̬
//[7]:�յ����������־
//[6]:�õ���һ��������������Ϣ
//[5]:����
//[4]:����������Ƿ��Ѿ�������
//[3:0]:�����ʱ��
u8 RmtSta = 0;
u16 Dval;		// �½���ʱ��������ֵ
u32 RmtRec = 0; // ������յ�������
u8 RmtCnt = 0;	// �������µĴ���

extern unsigned char cnt;
// 2MHZ =  24mhz/12
void IR_IN_DATA(void)
{
	if (T3CR1bits.T3IE && T3CR3bits.T3IF)
	{
		T3CR3bits.T3IF = 0;
		if (cnt < 5)
			cnt++; // PCA��ʱ�������+1
		else
		{
			cnt = 0;
			IRData.Sta = 0;
		}
	}

	if (T3CR1bits.T3CCIE && T3CR3bits.T3CCIF)
	{
		T3CR3bits.T3CCIF = 0;
		if (IR_IN_PIN == 1)
		{
			IRData.di = T3CCPRL;
			IRData.di |= (T3CCPRH << 8);
			IRData.di += cnt * 65536;
			cnt = 0;
			T3CNTRL = 0; // ����������
			T3CNTRH = 0; // ����������
			T3CCPRL = 0; // ���㲶��Ĵ���
			T3CCPRH = 0; // ���㲶��Ĵ���
		}
		else
		{
			IRData.gao = T3CCPRL;
			IRData.gao |= (T3CCPRH << 8);
			IRData.gao += cnt * 65536;
			T3CNTRL = 0; // ����������
			T3CNTRH = 0; // ����������
			T3CCPRL = 0; // ���㲶��Ĵ���
			T3CCPRH = 0; // ���㲶��Ĵ���
			cnt = 0;
			if (IRData.gao <= 10)
			{
				IRData.gao = 0;
			}

			if (IRData.Sta & 0x01) // ���յ���������
			{
				if (IRData.gao > 300 && IRData.gao < 800) // 560Ϊ��׼ֵ,560us
				{
					IRData.get_w++;
					IRData.Dat = IRData.Dat << 1;
				}

#if Ikey_Debug_Mode
				else if (IRData.gao > 2200 && IRData.gao < 2600 && IRData.get_w == 33) // �õ�������ֵ���ӵ���Ϣ 2240Ϊ��׼ֵ2.240ms
#endif

#if !Ikey_Debug_Mode
					else if (IRData.gao > 2000 && IRData.gao < 2500 && IRData.get_w == 33) // �õ�������ֵ���ӵ���Ϣ 2240Ϊ��׼ֵ2.240ms
#endif
					{
						IRData.RmtCnt++; // ������������1��
					}

#if Ikey_Debug_Mode
				else if (IRData.gao > 1400 && IRData.gao < 1800) // 1680Ϊ��׼ֵ,2240us
#endif

#if !Ikey_Debug_Mode
					else if (IRData.gao > 2000 && IRData.gao < 2500) // 1680Ϊ��׼ֵ,2240us
#endif
					{

						IRData.get_w++;
						IRData.Dat = (IRData.Dat << 1) | 0x01;
					}

				//                    else
				//                    {
				//						IRData.Sta =0x00;   //�յ�������
				//						IRData.RmtCnt = 0;
				//						IRData.Value = 0;
				//						IRData.get_w = 0;
				//						IRData.IRDataCnt = 0;
				//						cnt=0;
				//                    }
				if (IRData.get_w == 32)
				{
					IRData.get_w = 33;
					IRData.Value = IRData.Dat;
					// printf("RF:%X\r\n",RF_D.TouchValue);
					IRData.Dat = 0;
					// IRData.get_w=0;
				}
				//					if(IRData.get_w==8)
				//					{
				//						IRData.IRChar[IRData.IRDataCnt]=IRData.Dat;
				//                        IRData.IRDataCnt++;
				////                        if(IRData.IRDataCnt==8)
				////                        {
				////							IRData.IRDataCnt = 0;
				////                        }
				//						//printf("RF:%X\r\n",RF_D.TouchValue);
				//						IRData.Dat=0;
				//						IRData.get_w=0;
				//					}
			}
			else if (IRData.gao > 4200 && IRData.gao < 4700) // 4500Ϊ��׼ֵ4.5ms
			{
				IRData.Sta |= 0x01; // �յ�������
				IRData.RmtCnt = 0;
				IRData.Value = 0;
				IRData.get_w = 0;
				IRData.IRDataCnt = 0;
				cnt = 0;
			}
		}
	}
}

// #define TOUCH_KEY_STANDBY 0x1E0F
// #define TOUCH_KEY_ADD 0x2D0F
// #define TOUCH_KEY_DEC 0x4B0F
// #define TOUCH_KEY_AUTO 0x870F
// #define TOUCH_KEY_SET 0x960F
u16 IR_KeyReadCtr(void)
{
	u16 ret = 0;
	if (IRData.Sta)
	{
		switch (IRData.Value)
		{
		case IR_KEY_STANDBY:
			ret = TOUCH_KEY_STANDBY;
			break;
		case IR_KEY_TIME_ADD:
			ret = TOUCH_KEY_TIME_ADD;
			break;
		case IR_KEY_TIME_DEC:
			ret = TOUCH_KEY_TIME_DEC;
			break;
		case IR_KEY_VOICE:
			ret = TOUCH_KEY_VOICE;
			break;
		case IR_KEY_FLOW_ADD:
			ret = TOUCH_KEY_FLOW_ADD;
			break;
		case IR_KEY_FLOW_DEC:
			ret = TOUCH_KEY_FLOW_DEC;
			break;
		case IR_KEY_SOS:
			ret = TOUCH_KEY_SOS;
			break;
		case IR_KEY_ANION:
			ret = TOUCH_KEY_ANION;
			break;
		case IR_KEY_ALARM:
			ret = TOUCH_KEY_ALARM;
			break;
		}
	}
	else
	{
		IRData.RmtCnt = 0;
		IRData.Value = 0;
		IRData.get_w = 0;
		//		IRData.count = 0;
		ret = 0;
	}
	return ret;
}

void IR_MoreCtr(void) // �����������ƺ���ȿ���
{
	//	if((KeyDat.key_short_value == 5)||(KeyDat.key_long_value == 5))
	//	{
	//		RunData.FlowSet++;
	//		if(RunData.FlowSet>FLOW_SET*10) RunData.FlowSet = 5;
	//		DelayMs(100);
	//	}
	if ((KeyDat.key_short_value == TOUCH_KEY_ALARM))// || (KeyDat.key_long_value == TOUCH_KEY_ALARM)) //TODO:�޸Ĵ���״̬�£�����ȡ������������һֱ�е�����
	{
		if (RunData.SysSta == 0xE2 || RunData.SysSta == 0xE3 || RunData.SysSta == 0xE5) // ֻ�����й��ϻ򾯸�ʱ������
		{
			RunData.AlarmSwitch = !RunData.AlarmSwitch;
			if(!RunData.AlarmSwitch)
			{
				VoiceCtr2(low1_priority_alarm);
			}
		}
	}
	if ((KeyDat.key_short_value == TOUCH_KEY_SOS) || (KeyDat.key_long_value == TOUCH_KEY_SOS))
	{
		RunData.SOSFlag = !RunData.SOSFlag;
	}
	if ((KeyDat.key_val_x == TOUCH_KEY_CLEAR_TIME) && (IRData.Value == IR_KEY_VOICE))
		RunData.CumulativeTime = 0;
	if ((KeyDat.key_val_x == TOUCH_KEY_SET) && (IRData.Value == IR_KEY_VOICE))
	{
		RunData.SETCount++;
		if (RunData.SETCount > 5000)
		{
			RunData.SETCount = 5000;
		}
	}
	else
	{
		RunData.SETCount = 0;
	}
}

u8 GetIRCount(void)
{
	u8 ret = 0;
	ret = IRData.RmtCnt;
	return ret;
}

//todo:->2023/12/15 add->��ӻ�ȡ����ң�صļ�ֵ������һ���򵥵�ӳ��
u16 Get_Engineering_KeyValue()
{
    u16 ret = 0;
    if (IRData.Sta)
    {
        char IRData_HexString[20];
        sprintf(IRData_HexString, "%X", IRData.Value);

        if (strcmp(IRData_HexString, "A05F") == 0)
        {
            ret = 1;
        }
        if (strcmp(IRData_HexString, "B04F") == 0)
        {
            ret = 2;
        }
		// ���10EF
		if (strcmp(IRData_HexString, "10EF") == 0)
		{
			ret = 3;
		}
        //�ұ�
        if (strcmp(IRData_HexString, "50AF") == 0)
        {
            ret = 4;
        }
    }
    else
    {
        IRData.RmtCnt = 0;
        //IRData.Value = 0;
        IRData.get_w = 0;
        //		IRData.count = 0;
    	ret = 0;
    }
    return ret;
}