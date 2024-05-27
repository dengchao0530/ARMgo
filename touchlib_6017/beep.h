#ifndef __BEEP_H
#define __BEEP_H 			   
#include "main.h"



void BeepEnable(u8 enable);
void BeepInit(void);
void BeepCtr2(u16 value);
void BeepCtr1(u16 value);
void BeepCtr3(u16 value);
void BEEP_FlashCode(u8 dat,u16 delay);
#endif





























