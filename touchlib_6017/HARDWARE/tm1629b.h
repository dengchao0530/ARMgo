//================文件tm1629.h================================
//原程序连接 http://www.2cto.com/kf/201410/341589.html
/**************************************************************/
//time：2017年2月16日15:58:28
// Star
//brief stm32驱动TM1629B芯片
//测试环境：软件：keil5  芯片 stm32f103r8t6
//备注：测试使用72M的主时钟 如果其他需要改变延时程序
//			延时程序最好不用用到stm32内部的systick程序
/**************************************************************/
#ifndef _TM1629_H_
#define _TM1629_H_
//#include "tm1629.h"
#include "main.h"
 
/*
#define P_1668DAT       LATA0 //数据输出端口
#define P_1668CLK       LATA1
#define P_1668CS        LATC0
*/
//---------------设置IO 口端脚
//#define P_1629DAT       PBout(5) //数据输出端口
//#define P_1629CLK       PBout(4)
//#define P_1629CS        PBout(3)

sbit TM1629DAT = P0^3; // I2C接口定义
sbit TM1629CLK = P1^4;
sbit TM1629CS = P1^1;//片选

//数据命令设置
#define     V_MDAT1     0x40 //写数据到显示区 自动地址增加   
#define     V_MDAT4     0x44 //写数据到显示区 固定地址 
 
//地址命令设置
#define     V_ADDR0         0xC0 //地址0
#define     V_ADDR1         0xC1 //地址1  
#define     V_ADDR2         0xC2 //地址2
#define     V_ADDR3         0xC3 //地址3
#define     V_ADDR4         0xC4 //地址4
#define     V_ADDR5         0xC5 //地址5
#define     V_ADDR6         0xC6 //地址6  
#define     V_ADDR7         0xC7 //地址7
#define     V_ADDR8         0xC8 //地址8
#define     V_ADDR9         0xC9 //地址9
#define     V_ADDR10        0xCA //地址10
#define     V_ADDR11        0xCB //地址11
#define     V_ADDR12        0xCC //地址12
#define     V_ADDR13        0xCD //地址13
#define     V_ADDR14        0xCE //地址14
#define     V_ADDR15        0xCF //地址15
 
 
//显示控制 - 亮度调节
#define     V_DIS16_01      0x80 //显示宽度1/16
#define     V_DIS16_02      0x81 //显示宽度2/16
#define     V_DIS16_03      0x82 //显示宽度4/16 
#define     V_DIS16_10      0x83 //显示宽度10/16
#define     V_DIS16_11      0x84 //显示宽度11/16
#define     V_DIS16_12      0x85 //显示宽度12/16
#define     V_DIS16_13      0x86 //显示宽度13/16    
#define     V_DIS16_14      0x87 //显示宽度14/16
 
#define     V_DIS16_OFF     0x00 //显示关
#define     V_DIS16_ON      0x88 //显示开
 
//---------------------------------------------
//    V_DIS16_01
#define     V_LED_LIGHT1    (V_DIS16_02|V_DIS16_ON)  //显示亮度设置
#define     V_LED_LIGHT2    (V_DIS16_12|V_DIS16_ON)  //显示亮度设置
#define     V_LED_LIGHT3    (V_DIS16_14|V_DIS16_ON)  //显示亮度设置
 
 
extern unsigned char DisBuf[16];           // 显示缓存
extern unsigned char code ch_table[]; 
 
 
 
 
 
 
//-------------------------------------------
/*
*功能：初始化TM1692对应的IO口
*备注：TM1629 高电平需要5V电压，所以STM32IO口要设置成开漏输出或者外接芯片
*/
void TM1629Init(void);


/*
*功能：向TM1629写入命令BYTE
*传入：命令
*备注：
*/
void TM1629_WriteCommand(u8 Comm);


/*
*功能：向TM1629写入一个16byte的数据
*传入：一个数组的首地址
*备注：
*/
void TM1629_WriteDat(u8 *InDat);

void TM1629_Luminance(u8 dat);
/*
*功能：向TM1629指定地址写入1BYTE数据
*传入：	Addr：写数据的地址
*		Data:数据内容
*备注：
*/
//extern void TM1629_WriteADat(u8 Addr,u8 InDat);


 
 /*
 *功能：重置TM1629输出引脚
 *备注：
 */
void TM1629_Clear(void);
void Update_Display(void);
#endif

