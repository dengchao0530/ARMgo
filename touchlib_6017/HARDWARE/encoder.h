#ifndef __ENCODER_H
#define __ENCODER_H 			   
#include "main.h"


typedef struct
{
	u16 Time;//换向计时
	u8 Direction;//方向
	
}ENCODER_DATA;

extern ENCODER_DATA	EncoderData;


void encoder_Init(void);
#endif





























