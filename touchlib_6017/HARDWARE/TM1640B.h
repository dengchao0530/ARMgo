#ifndef __TM1640B_H
#define __TM1640B_H 			   
#include "main.h"

extern unsigned char code ch_table[];
extern unsigned char DisBuf[16];
void TM1640B_Init(void);
void Update_Display(void);
void Display_Concentration(u16 sum,u8 mode);
void TM1640B_Luminance(u8 dat);
#endif





























