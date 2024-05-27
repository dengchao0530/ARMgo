#ifndef __VOICE_H
#define __VOICE_H 			   
#include "main.h"
#define VOICE_BUSY	P05
#define VOICE_RST		P07
#define VOICE_DATA  P06

void Voice_Init(void);
void VoiceCtr(u16 dat);
void VoiceDrive(void);
#endif





























