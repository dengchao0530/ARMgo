#include "TM1640B.h"
#include "intrins.h"
#define TM1640B_CLK P51
#define TM1640B_DATA P35


#define WRITE_DATA_MODE_Z   0x40        // ��ַ�Զ���
#define WRITE_DATA_MODE_G   0x44        // �̶���ַ
#define START_DATA          0xC0        // 
#define DISPLAY_EN          0x8A        // ����ʾ
#define DISPLAY_DIS         0x80        // ����ʾ

unsigned char DisBuf[16];           // ��ʾ����

unsigned char code ch_table[]={
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

// ��ʼ
void start(void)
{
    TM1640B_CLK=1;
    _nop_(); _nop_();
    TM1640B_DATA=1;
    _nop_(); _nop_();
    TM1640B_DATA=0;
    _nop_(); _nop_();
    TM1640B_CLK=0;   
}

// ����
void stop(void)
{
    TM1640B_CLK=0;
    TM1640B_DATA=0;
	
    TM1640B_CLK=1;
    TM1640B_DATA=1;
}

void send_data(unsigned char x)          //������    ��λ�ȴ�
{
    unsigned char  i;
    for(i=0;i<8;i++)
    {
        TM1640B_CLK=0;
        _nop_();
        _nop_();
        TM1640B_DATA=(bit)(x&0x01);
        _nop_();
        _nop_();
        TM1640B_CLK=1;
        x>>=1;
    }
    TM1640B_CLK=0;
}

void Update_Display(void)
{
    unsigned char i;
		start();
		send_data(START_DATA);              //��ʼ��ַ
		for(i=0;i<16;i++)                   //��16λ��
		{
				send_data(DisBuf[i]);
		}
		stop();

}
//���ȵ���
void TM1640B_Luminance(u8 dat)
{
	
    start();
		switch(dat)
		{
			case 0:send_data(0x80);   break;             // �ر���ʾ
			case 1:send_data(0x88);   break;             // ��ʾ�����1/16
			case 2:send_data(0x89);   break;             // ��ʾ�����2/16
			case 3:send_data(0x8A);   break;             // ��ʾ�����4/16
			case 4:send_data(0x8B);   break;             // ��ʾ�����10/16
			case 5:send_data(0x8C);   break;             // ��ʾ�����11/16
			case 6:send_data(0x8D);   break;             // ��ʾ�����12/16
			case 7:send_data(0x8E);   break;             // ��ʾ�����13/16
			case 8:send_data(0x8F);   break;             // ��ʾ�����14/16
		}
    
    stop();	

}

void TM1640B_Init(void)
{
		u8 i = 0;
	  P5M0 |= (1<<1);                             
    P5M1 &= ~(1<<1);	
	  P3M0 |= (1<<5);                             
    P3M1 &= ~(1<<5);	
		
    start();
    send_data(DISPLAY_DIS);         // ����ʾ
    stop();
		
    start();
    send_data(WRITE_DATA_MODE_Z);   // �Զ���ַ
    stop();

    start();
    send_data(0x8F);                // ����ʾ
    stop();
	
//    start();
//    send_data(0x88);                // ��ʾ�����
//    stop();	
		
		
		for(i=0; i<16; i++) DisBuf[i] = 0xFF;

delay_ms(3000);
	
	Update_Display();
	

}





