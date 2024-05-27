//================文件tm1629.c==============================
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

unsigned char DisBuf[16];           // 显示缓存

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
        0x00,  //熄灭
};











//*****************************************
//函数名称:TM1629Init
//函数功能：初始化stm32 的io口
//入口函数：无
//出口参数：无
//******************************************
void TM1629Init(void)
{					     
		u8 i = 0;
		TRISA &= ~(1<<0);	//0输出模式
		TRISA &= ~(1<<1);	//0输出模式
		TRISA &= ~(1<<2);	//0输出模式
//		ODCONA |= (1<<0);	//0输出模式
//		ODCONA |= (1<<1);	//0输出模式
//		ODCONA |= (1<<2);	//0输出模式
            
		TM1629_Luminance(8);
        VoiceCtr2(welcome);
		for(i=0; i<16; i++) {
            DisBuf[i] = 0xFF;
        }
        DIS_LED_WARNING = 1;//警告
        DIS_LED_NORMAL = 1;//正常
        DIS_LED_ALARM = 1;//报警
		Update_Display();     
		for(i=0; i<15; i++) {DelayMs(100);CLRWDT();  }//清看门狗 
}

//*************************************
// 函数名称：Nop1629
// 函数功能：延时函数
// 入口参数：延时时间
// 出口参数：这里最好不要用到systick时钟延时，因为下面的函数可能会用到在定时器里面
//			如果定时器调用systick 外部也用systick，就会导致外部的systick延时不准确，
//			参考网址  http://www.openedv.com/thread-38193-1-1.html
//--------------------------------
//			延时程序 参考网址 http://www.openedv.com/posts/list/13937.htm
//					所以，72M的stm32 1us 可以执行指令90 条  下面的程序用到的延时最少1us
//***************************************
void Nop1629(u16 T_Dly)
{   
	while(T_Dly--);
//_nop_(); _nop_(); 
//	delay_us(T_Dly);
 //   return ;
}

//**************************************
// 函数名称：TM1629_WriteByteData
// 函数功能：TM1668发送一字节数据
// 入口参数：要发送的数据
// 出口参数：
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
// 函数名称：TM1668_WriteCommand
// 函数功能：写设置命令
// 入口参数：设置命令参数
// 出口参数：无
//***************************************
void TM1629_WriteCommand(u8 Comm)
{
    TM1629_CS_LOW ;  
    Nop1629(V_NOP) ;    
    TM1629_WriteByteData(Comm);
  
}
//**************************************
// 函数名称：TM1668_WriteAddrData
// 函数功能：向固定地址写一个数据  
// 入口参数：地址 数据
// 出口参数：无
//***************************************
//void TM1629_WriteAddrData(u8 Addr,u8 Data)
//{
//    TM1629_CS_LOW ;
//	Nop1629(V_NOP) ; 
//    TM1629_WriteByteData(Addr); //写地址
//    TM1629_WriteByteData(Data); //写数据SS
//    TM1629_CS_HIGH ;  
//	Nop1629(V_NOP) ; 
//}


//**************************************
// 函数名称：TM1629_Clear
// 函数功能：重置
// 入口参数：无
// 出口参数：无
//***************************************
//void TM1629_Clear(void)
//{
//	u8 TempClr[16];
//	memset(TempClr,0,16);
//	TM1629_WriteDat(TempClr);
//}
//**************************************
// 函数名称：TM1629_WriteDat
// 函数功能：TM1629 写缓冲区数据
// 入口参数：显示数据缓存区
// 出口参数：固定地址模式，一次写入16个数据
// 备注：此函数和下面的函数一样，所以可2选1
//***************************************
//void TM1629_WriteDat(u8 *InDat)
//{
//    u8 i ;
//    u8 Addr=0 ;
//	//初始化端口
//	TM1629_DAT_HIGH;
//	TM1629_CLK_HIGH;
//	TM1629_CS_HIGH;//每次写命令前都需要把片选拉高
//	Nop1629(V_NOP) ;//拉高后最少延时1us
//    TM1629_WriteCommand(V_MDAT4) ; //写数据到1629 写数据到显示区 固定地址  //设置数据命令 
//     
//    //-----
//    Addr = V_ADDR0 ;//从第1个地址开始写
//	TM1629_CS_HIGH;
//	Nop1629(V_NOP) ;
//    for(i=0;i<16;i++)  //刷显数据 6
//    {
//        TM1629_WriteAddrData(Addr,*InDat) ;
//        Addr ++ ;
//        InDat ++ ;
//    }
//    //-----
//	TM1629_CS_HIGH ;
//	Nop1629(V_NOP) ;
//	TM1629_WriteCommand(V_LED_LIGHT3) ; //V_LED_LIGHT1  显示对比度  //设置显示控制
//	TM1629_CS_HIGH ;
//	Nop1629(V_NOP) ;
//}

//**************************************
// 函数名称：TM1629_WriteAddrDat
// 函数功能：TM1629 写缓冲区数据
// 入口参数：显示数据缓存区
// 出口参数：空
// 备注：
//***************************************
void TM1629_WriteDat(u8 *InDat)
{
	u8 i;
	TM1629_DAT_HIGH;
	TM1629_CLK_HIGH;

	TM1629_CS_HIGH;//每次写命令前都需要把片选拉高
	Nop1629(V_NOP) ;//拉高后最少延时1us
  TM1629_WriteCommand(V_MDAT1) ; //写数据到1629 //写数据到显示区 自动地址增加  //设置数据命令 
	
	//-----
	TM1629_CS_HIGH ;
	Nop1629(V_NOP) ;
  TM1629_WriteCommand(V_ADDR0);   
//  for(i=0;i<16;i++) InDat[i] = 0x00;
//	InDat[0] = 0x80;
	for(i=0;i<16;i++)
		TM1629_WriteByteData(*InDat++);//写数据时，片选一直是低电平
//while(1);
}
void Update_Display(void)
{

	TM1629_WriteDat(DisBuf);
}
//亮度调节
void TM1629_Luminance(u8 dat)
{
	
	TM1629_CS_HIGH ;
	Nop1629(V_NOP) ;
		switch(dat)
		{
			case 0:TM1629_WriteCommand(V_DIS16_OFF);   break;             // 关闭显示
			case 1:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_01);   break;             // 显示亮度最暗1/16
			case 2:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_02);   break;             // 显示亮度最暗2/16
			case 3:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_03);   break;             // 显示亮度最暗4/16
			case 4:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_10);   break;             // 显示亮度最暗10/16
			case 5:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_11);   break;             // 显示亮度最暗11/16
			case 6:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_12);   break;             // 显示亮度最暗12/16
			case 7:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_13);   break;             // 显示亮度最暗13/16
			case 8:TM1629_WriteCommand(V_DIS16_ON|V_DIS16_14);   break;             // 显示亮度最暗14/16
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

// 设置高电平
PORTC |= (1 << 1);  
PORTC |= (1 << 0);  
PORTD |= (1 << 5);  
PORTD |= (1 << 7);  
PORTD |= (1 << 6);  
PORTA |= (1 << 3);

PORTF |= (1 << 3);

}