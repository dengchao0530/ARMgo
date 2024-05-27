//================�ļ�tm1629.h================================
//ԭ�������� http://www.2cto.com/kf/201410/341589.html
/**************************************************************/
//time��2017��2��16��15:58:28
// Star
//brief stm32����TM1629BоƬ
//���Ի����������keil5  оƬ stm32f103r8t6
//��ע������ʹ��72M����ʱ�� ���������Ҫ�ı���ʱ����
//			��ʱ������ò����õ�stm32�ڲ���systick����
/**************************************************************/
#ifndef _TM1629_H_
#define _TM1629_H_
//#include "tm1629.h"
#include "main.h"
 
/*
#define P_1668DAT       LATA0 //��������˿�
#define P_1668CLK       LATA1
#define P_1668CS        LATC0
*/
//---------------����IO �ڶ˽�
//#define P_1629DAT       PBout(5) //��������˿�
//#define P_1629CLK       PBout(4)
//#define P_1629CS        PBout(3)

sbit TM1629DAT = P0^3; // I2C�ӿڶ���
sbit TM1629CLK = P1^4;
sbit TM1629CS = P1^1;//Ƭѡ

//������������
#define     V_MDAT1     0x40 //д���ݵ���ʾ�� �Զ���ַ����   
#define     V_MDAT4     0x44 //д���ݵ���ʾ�� �̶���ַ 
 
//��ַ��������
#define     V_ADDR0         0xC0 //��ַ0
#define     V_ADDR1         0xC1 //��ַ1  
#define     V_ADDR2         0xC2 //��ַ2
#define     V_ADDR3         0xC3 //��ַ3
#define     V_ADDR4         0xC4 //��ַ4
#define     V_ADDR5         0xC5 //��ַ5
#define     V_ADDR6         0xC6 //��ַ6  
#define     V_ADDR7         0xC7 //��ַ7
#define     V_ADDR8         0xC8 //��ַ8
#define     V_ADDR9         0xC9 //��ַ9
#define     V_ADDR10        0xCA //��ַ10
#define     V_ADDR11        0xCB //��ַ11
#define     V_ADDR12        0xCC //��ַ12
#define     V_ADDR13        0xCD //��ַ13
#define     V_ADDR14        0xCE //��ַ14
#define     V_ADDR15        0xCF //��ַ15
 
 
//��ʾ���� - ���ȵ���
#define     V_DIS16_01      0x80 //��ʾ���1/16
#define     V_DIS16_02      0x81 //��ʾ���2/16
#define     V_DIS16_03      0x82 //��ʾ���4/16 
#define     V_DIS16_10      0x83 //��ʾ���10/16
#define     V_DIS16_11      0x84 //��ʾ���11/16
#define     V_DIS16_12      0x85 //��ʾ���12/16
#define     V_DIS16_13      0x86 //��ʾ���13/16    
#define     V_DIS16_14      0x87 //��ʾ���14/16
 
#define     V_DIS16_OFF     0x00 //��ʾ��
#define     V_DIS16_ON      0x88 //��ʾ��
 
//---------------------------------------------
//    V_DIS16_01
#define     V_LED_LIGHT1    (V_DIS16_02|V_DIS16_ON)  //��ʾ��������
#define     V_LED_LIGHT2    (V_DIS16_12|V_DIS16_ON)  //��ʾ��������
#define     V_LED_LIGHT3    (V_DIS16_14|V_DIS16_ON)  //��ʾ��������
 
 
extern unsigned char DisBuf[16];           // ��ʾ����
extern unsigned char code ch_table[]; 
 
 
 
 
 
 
//-------------------------------------------
/*
*���ܣ���ʼ��TM1692��Ӧ��IO��
*��ע��TM1629 �ߵ�ƽ��Ҫ5V��ѹ������STM32IO��Ҫ���óɿ�©����������оƬ
*/
void TM1629Init(void);


/*
*���ܣ���TM1629д������BYTE
*���룺����
*��ע��
*/
void TM1629_WriteCommand(u8 Comm);


/*
*���ܣ���TM1629д��һ��16byte������
*���룺һ��������׵�ַ
*��ע��
*/
void TM1629_WriteDat(u8 *InDat);

void TM1629_Luminance(u8 dat);
/*
*���ܣ���TM1629ָ����ַд��1BYTE����
*���룺	Addr��д���ݵĵ�ַ
*		Data:��������
*��ע��
*/
//extern void TM1629_WriteADat(u8 Addr,u8 InDat);


 
 /*
 *���ܣ�����TM1629�������
 *��ע��
 */
void TM1629_Clear(void);
void Update_Display(void);
#endif

