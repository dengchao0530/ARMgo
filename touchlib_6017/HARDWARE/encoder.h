#ifndef __ENCODER_H
#define __ENCODER_H 			   
#include "main.h"


typedef struct
{
	u16 Time;//�����ʱ
	u8 Direction;//����
	
}ENCODER_DATA;

extern ENCODER_DATA	EncoderData;


void encoder_Init(void);
#endif





























