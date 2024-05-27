//================�ļ�tm1629.c==============================
#include "tm1629b.h"
#include "string.h"
#include "voice.h"
#include "GPIO_Init.h"
#include "display.h"
//#include "intrins.h"
 

#define     TM1629_CS_HIGH  TM1629CS = 1
#define     TM1629_CS_LOW   TM1629CS = 0
 
#define     TM1629_DAT_HIGH TM1629DAT = 1
#define     TM1629_DAT_LOW  TM1629DAT = 0
 
#define     TM1629_CLK_HIGH TM1629CLK = 1
#define     TM1629_CLK_LOW  TM1629CLK = 0
 
//----------------------------
#define     V_NOP       10    //1//3 5

unsigned char DisBuf[16];           // ��ʾ����

const unsigned char  ch_table[]={
        0x3F,  //"0"
        0x06,  //"1"
        0x5B,  //"2"
        0x4F,  //"3"
        0x66,  //"4"
        0x6D,  //"5"
        0x7D,  //"6"
        0x07,  //"7"
        0x7F,  //"8"
        0x6F,  //"9"
        0x77,  //"A"
        0x7C,  //"B"
        0x39,  //"C"
        0x5E,  //"D"
        0x79,  //"E"
        0x71,  //"F"
        0x76,  //"H"
        0x38,  //"L"
        0x37,  //"n"
        0x3E,  //"u"
        0x73,  //"P"
        0x5C,  //"o"
        0x40,  //"-"
        0x00,  //Ϩ��
};











//*****************************************
//��������:TM1629Init
//�������ܣ���ʼ��stm32 ��io��
//��ں�������
//���ڲ�������
//******************************************
void TM1629Init(void)
{					     
		u8 i = 0;
		TRISA &= ~(1<<0);	//0���ģʽ
		TRISA &= ~(1<<1);	//0���ģʽ
		TRISA &= ~(1<<2);	//0���ģʽ
//		ODCONA |= (1<<0);	//0���ģʽ
//		ODCONA |= (1<<1);	//0���ģʽ
//		ODCONA |= (1<<2);	//0���ģʽ
            
		TM1629_Luminance(8);
        VoiceCtr2(welcome);
		for(i=0; i<16; i++) {
            DisBuf[i] = 0xFF;
        }
        DIS_LED_WARNING = 1;//����
        DIS_LED_NORMAL = 1;//����
        DIS_LED_ALARM = 1;//����
		Update_Display();     
		for(i=0; i<15; i++) {DelayMs(100);CLRWDT();  }//�忴�Ź� 
}

//*************************************
// �������ƣ�Nop1629
// �������ܣ���ʱ����
// ��ڲ�������ʱʱ��
// ���ڲ�����������ò�Ҫ�õ�systickʱ����ʱ����Ϊ����ĺ������ܻ��õ��ڶ�ʱ������
//			�����ʱ������systick �ⲿҲ��systick���ͻᵼ���ⲿ��systick��ʱ��׼ȷ��
//			�ο���ַ  http://www.openedv.com/thread-38193-1-1.html
//--------------------------------
//			��ʱ���� �ο���ַ http://www.openedv.com/posts/list/13937.htm
//					���ԣ�72M��stm32 1us ����ִ��ָ��90 ��  ����ĳ����õ�����ʱ����1us
//***************************************
void Nop1629(u16 T_Dly)
{   
	while(T_Dly--);
//_nop_(); _nop_(); 
//	delay_us(T_Dly);
 //   return ;
}

//**************************************
// �������ƣ�TM1629_WriteByteData
// �������ܣ�TM1668����һ�ֽ�����
// ��ڲ�����Ҫ���͵�����
// ���ڲ�����
//***************************************
void TM1629_WriteByteData(u8 Data)   
{   
    u8 i;  

    Nop1629(V_NOP) ;
    for(i=8;i>0;i--)   
    {   
        TM1629_CLK_LOW;   
        if(Data & 0x01) 
        {
            TM1629_DAT_HIGH ;
        }   
        else 
        {
            TM1629_DAT_LOW ;
        }
        Data >>= 1 ;
        Nop1629(V_NOP) ;
 
        TM1629_CLK_HIGH ;
        Nop1629(V_NOP) ;
    }   
}
//**************************************
// �������ƣ�TM1668_WriteCommand
// �������ܣ�д��������
// ��ڲ����������������
// ���ڲ�������
//***************************************
void TM1629_WriteCommand(u8 Comm)
{
    TM1629_CS_LOW ;  
    Nop1629(V_NOP) ;    
    TM1629_WriteByteData(Comm);
  
}
//**************************************
// �������ƣ�TM1668_WriteAddrData
// �������ܣ���̶���ַдһ������  
// ��ڲ�������ַ ����
// ���ڲ�������
//***************************************
//void TM1629_WriteAddrData(u8 Addr,u8 Data)
//{
//    TM1629_CS_LOW ;
//	Nop1629(V_NOP) ; 
//    TM1629_WriteByteData(Addr); //д��ַ
//    TM1629_WriteByteData(Data); //д����SS
//    TM1629_CS_HIGH ;  
//	Nop1629(V_NOP) ; 
//}


//**************************************
// �������ƣ�TM1629_Clear
// �������ܣ�����
// ��ڲ�������
// ���ڲ�������
//***************************************
//void TM1629_Clear(void)
//{
//	u8 TempClr[16];
//	memset(TempClr,0,16);
//	TM1629_WriteDat(TempClr);
//}
//**************************************
// �������ƣ�TM1629_WriteDat
// �������ܣ�TM1629 д����������
// ��ڲ�������ʾ���ݻ�����
// ���ڲ������̶���ַģʽ��һ��д��16������
// ��ע���˺���������ĺ���һ�������Կ�2ѡ1
//***************************************
//void TM1629_WriteDat(u8 *InDat)
//{
//    u8 i ;
//    u8 Addr=0 ;
//	//��ʼ���˿�
//	TM1629_DAT_HIGH;
//	TM1629_CLK_HIGH;
//	TM1629_CS_HIGH;//ÿ��д����ǰ����Ҫ��Ƭѡ����
//	Nop1629(V_NOP) ;//���ߺ�������ʱ1us
//    TM1629_WriteCommand(V_MDAT4) ; //д���ݵ�1629 д���ݵ���ʾ�� �̶���ַ  //������������ 
//     
//    //-----
//    Addr = V_ADDR0 ;//�ӵ�1����ַ��ʼд
//	TM1629_CS_HIGH;
//	Nop1629(V_NOP) ;
//    for(i=0;i<16;i++)  //ˢ������ 6
//    {
//        TM1629_WriteAddrData(Addr,*InDat) ;
//        Addr ++ ;
//        InDat ++ ;
//    }
//    //-----
//	TM1629_CS_HIGH ;
//	Nop1629(V_NOP) ;
//	TM1629_WriteCommand(V_LED_LIGHT3) ; //V_LED_LIGHT1  ��ʾ�Աȶ�  //������ʾ����
//	TM1629_CS_HIGH ;
//	Nop1629(V_NOP) ;
//}

//**************************************
// �������ƣ�TM1629_WriteAddrDat
// �������ܣ�TM1629 д����������
// ��ڲ�������ʾ���ݻ�����
// ���ڲ�������
// ��ע��
//***************************************
void TM1629_WriteDat(u8 *InDat)
{
	u8 i;
	TM1629_DAT_HIGH;
	TM1629_CLK_HIGH;

	TM1629_CS_HIGH;//ÿ��д����ǰ����Ҫ��Ƭѡ����
	Nop1629(V_NOP) ;//���ߺ�������ʱ1us
  TM1629_WriteCommand(V_MDAT1) ; //д���ݵ�1629 //д���ݵ���ʾ�� �Զ���ַ����  //������������ 
	
	//-----
	TM1629_CS_HIGH ;
	Nop1629(V_NOP) ;
  TM1629_WriteCommand(V_ADDR0);   
//  for(i=0;i<16;i++) InDat[i] = 0x00;
//	InDat[0] = 0x80;
	for(i=0;i<16;i++)
		TM1629_WriteByteData(*InDat++);//д����ʱ��Ƭѡһֱ�ǵ͵�ƽ
//while(1);
}
void Update_Display(void)
{

	TM1629_WriteDat(DisBuf);
}
//���ȵ���
void TM1629_Luminance(u8 dat)
{
	
	TM1629_CS_HIGH ;
	Nop1629(V_NOP) ;
		switch(dat)
		{
			case 0:TM1629_WriteCommand(V_DIS16_OFF);   break;             // �ر���ʾ
			case 1:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_01);   break;             // ��ʾ�����1/16
			case 2:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_02);   break;             // ��ʾ�����2/16
			case 3:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_03);   break;             // ��ʾ�����4/16
			case 4:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_10);   break;             // ��ʾ�����10/16
			case 5:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_11);   break;             // ��ʾ�����11/16
			case 6:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_12);   break;             // ��ʾ�����12/16
			case 7:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_13);   break;             // ��ʾ�����13/16
			case 8:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_14);   break;             // ��ʾ�����14/16
		}
    
    TM1629_CS_HIGH ;

}

void demo()
{
TRISD &= ~(1 << 5); 
TRISD &= ~(1 << 7); 
TRISD &= ~(1 << 6);
TRISC &= ~(1 << 1);  
TRISC &= ~(1 << 0);  
TRISA &= ~(1 << 3);  

TRISF &= ~(1 << 3); 

// ���øߵ�ƽ
PORTC |= (1 << 1);  
PORTC |= (1 << 0);  
PORTD |= (1 << 5);  
PORTD |= (1 << 7);  
PORTD |= (1 << 6);  
PORTA |= (1 << 3);

PORTF |= (1 << 3);

}