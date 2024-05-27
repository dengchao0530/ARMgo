opt subtitle "Microchip MPLAB XC8 C Compiler v2.10 (Free license) build 20190730164152 Og9 "

opt pagewidth 120

	opt flic

	processor	18F62F0GX
opt include "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\include\18f62f0gx.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
	FNCALL	_main,_BeepCtr1
	FNCALL	_main,_BeepCtr2
	FNCALL	_main,_BeepInit
	FNCALL	_main,_Cmd_Process
	FNCALL	_main,_Cmd_Send
	FNCALL	_main,_DataInit
	FNCALL	_main,_DelayMs
	FNCALL	_main,_E2prom_ReadData
	FNCALL	_main,_EC11_Set_Value
	FNCALL	_main,_Engineering_Mode_Api
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_Get_Key_Demo
	FNCALL	_main,_IR_Key_Init
	FNCALL	_main,_IR_MoreCtr
	FNCALL	_main,_POWER_INITIAL
	FNCALL	_main,_PlaySound
	FNCALL	_main,_SleepProcess
	FNCALL	_main,_StartUpVoice
	FNCALL	_main,_TIM0_INITIAL
	FNCALL	_main,_TM1629Init
	FNCALL	_main,_TSC_DataProcessing
	FNCALL	_main,_TSC_INITIAL
	FNCALL	_main,_TSC_Scan
	FNCALL	_main,_Update_Display
	FNCALL	_main,_Voice_Init
	FNCALL	_main,_WDT_INITIAL
	FNCALL	_main,_control
	FNCALL	_main,_encoder_Init
	FNCALL	_main,_key_scan
	FNCALL	_main,_printf
	FNCALL	_main,_uart2_Init
	FNCALL	_printf,__doprnt
	FNCALL	_control,_Display
	FNCALL	_control,_ErrorCtr
	FNCALL	_control,_TimingClosureSet
	FNCALL	_control,_Update_Display
	FNCALL	_control,_VoiceDrive
	FNCALL	_VoiceDrive,_SOS_Voice
	FNCALL	_VoiceDrive,_VoiceCtr
	FNCALL	_VoiceDrive,_VoiceFilterMesh
	FNCALL	_VoiceDrive,_Voice_Half_Hour
	FNCALL	_VoiceDrive,___awmod
	FNCALL	_Voice_Half_Hour,_PlaySound
	FNCALL	_VoiceFilterMesh,_E2prom_WriteData
	FNCALL	_VoiceCtr,_PlaySound
	FNCALL	_TimingClosureSet,___awmod
	FNCALL	_ErrorCtr,_Alarm_Sound
	FNCALL	_ErrorCtr,_BeepCtr1
	FNCALL	_ErrorCtr,_BeepEnable
	FNCALL	_ErrorCtr,_Cmd_Process
	FNCALL	_ErrorCtr,_Cmd_Send
	FNCALL	_ErrorCtr,_DelayMs
	FNCALL	_ErrorCtr,_Display_SysSta
	FNCALL	_ErrorCtr,_E2prom_WriteData
	FNCALL	_ErrorCtr,_ERR_Code
	FNCALL	_ErrorCtr,_Get_Key_Demo
	FNCALL	_ErrorCtr,_IR_MoreCtr
	FNCALL	_ErrorCtr,_Label_CloseAlarm
	FNCALL	_ErrorCtr,_TM1629_Luminance
	FNCALL	_ErrorCtr,_TSC_DataProcessing
	FNCALL	_ErrorCtr,_TSC_Scan
	FNCALL	_ErrorCtr,_Update_Display
	FNCALL	_ErrorCtr,___lwmod
	FNCALL	_ErrorCtr,_key_scan
	FNCALL	_key_scan,_IR_KeyReadCtr
	FNCALL	_key_scan,_TouchKeyValue
	FNCALL	_TSC_Scan,_ConmunicateToPc
	FNCALL	_TSC_Scan,_TSC_Start_Test
	FNCALL	_TSC_Start_Test,_GetLocalCount
	FNCALL	_TSC_Start_Test,_HardDiv
	FNCALL	_TSC_Start_Test,_TK_CAP_DISCHARGE
	FNCALL	_TSC_Start_Test,_TestReadCap
	FNCALL	_ConmunicateToPc,_ReceiveDataPc
	FNCALL	_ConmunicateToPc,_SendDataToPC
	FNCALL	_ConmunicateToPc,_TSC_GetPrevData
	FNCALL	_SendDataToPC,_uart_tx
	FNCALL	_uart_tx,_uart_delay
	FNCALL	_ReceiveDataPc,_uart_rx
	FNCALL	_Get_Key_Demo,_TSC_GetCsKey
	FNCALL	_Get_Key_Demo,_TSC_GetLocalKey
	FNCALL	_ERR_Code,_Display_SysSta
	FNCALL	_ERR_Code,_Update_Display
	FNCALL	_Alarm_Sound,_DelayMs
	FNCALL	_Alarm_Sound,_VoiceCtr2
	FNCALL	_Display,_Concentration_Low_Alarm
	FNCALL	_Display,_Display_Anion
	FNCALL	_Display,_Display_Concentration
	FNCALL	_Display,_Display_CumulativeTime
	FNCALL	_Display,_Display_FilterMesh
	FNCALL	_Display,_Display_Flow
	FNCALL	_Display,_Display_SysSta
	FNCALL	_Display,_Display_Timing
	FNCALL	_Display,_Display_Voice
	FNCALL	_Display,_Label_CloseAlarm
	FNCALL	_Display,_SEG1
	FNCALL	_Display,_SEG2
	FNCALL	_Display,_SEG3
	FNCALL	_Display,_TM1629_Luminance
	FNCALL	_Display,___aldiv
	FNCALL	_Display,___almod
	FNCALL	_Display_Flow,_Label_Flow
	FNCALL	_Display_Flow,_Label_L_min
	FNCALL	_Display_Flow,_SEG4
	FNCALL	_Display_Flow,_SEG5
	FNCALL	_Display_Flow,___lwdiv
	FNCALL	_Display_Flow,___lwmod
	FNCALL	_Display_Concentration,_Label_Concentration
	FNCALL	_Display_Concentration,_Label_Percent
	FNCALL	_Display_Concentration,_SEG6
	FNCALL	_Display_Concentration,_SEG7
	FNCALL	_Display_Concentration,_SEG8
	FNCALL	_Display_Concentration,___lwdiv
	FNCALL	_Display_Concentration,___lwmod
	FNCALL	_Concentration_Low_Alarm,_VoiceCtr2
	FNCALL	_TSC_INITIAL,_LVD_INITIAL
	FNCALL	_TSC_INITIAL,_ReadCap
	FNCALL	_TSC_INITIAL,_TIM2_INITIAL
	FNCALL	_ReadCap,_SetTouchFreq
	FNCALL	_TM1629Init,_DelayMs
	FNCALL	_TM1629Init,_TM1629_Luminance
	FNCALL	_TM1629Init,_Update_Display
	FNCALL	_TM1629_Luminance,_Nop1629
	FNCALL	_TM1629_Luminance,_TM1629_WriteCommand
	FNCALL	_StartUpVoice,_DelayMs
	FNCALL	_StartUpVoice,_VoiceCtr2
	FNCALL	_VoiceCtr2,_PlaySound
	FNCALL	_Engineering_Mode_Api,_Goto_Engineering_Mode
	FNCALL	_Goto_Engineering_Mode,_BeepCtr1
	FNCALL	_Goto_Engineering_Mode,_Engineering_Adjust_JYTime
	FNCALL	_Goto_Engineering_Mode,_Engineering_Clear_WorkTime
	FNCALL	_Goto_Engineering_Mode,_Engineering_Flow_Compensation
	FNCALL	_Goto_Engineering_Mode,_Engineering_Voltage_Calibration
	FNCALL	_Goto_Engineering_Mode,_Get_Engineering_KeyValue
	FNCALL	_Goto_Engineering_Mode,_Label_CloseAlarm
	FNCALL	_Goto_Engineering_Mode,_PlaySound
	FNCALL	_Goto_Engineering_Mode,_TouchKeyValue
	FNCALL	_Engineering_Voltage_Calibration,_BeepCtr1
	FNCALL	_Engineering_Voltage_Calibration,_Cmd_Process
	FNCALL	_Engineering_Voltage_Calibration,_Cmd_Send
	FNCALL	_Engineering_Voltage_Calibration,_Display_CumulativeTime
	FNCALL	_Engineering_Voltage_Calibration,_Display_Timing
	FNCALL	_Engineering_Voltage_Calibration,_E2prom_WriteData
	FNCALL	_Engineering_Voltage_Calibration,_Engineering_Timeout_Logic
	FNCALL	_Engineering_Voltage_Calibration,_Get_Engineering_KeyValue
	FNCALL	_Engineering_Voltage_Calibration,_SEG1
	FNCALL	_Engineering_Voltage_Calibration,_SEG11
	FNCALL	_Engineering_Voltage_Calibration,_SEG12
	FNCALL	_Engineering_Voltage_Calibration,_SEG13
	FNCALL	_Engineering_Voltage_Calibration,_SEG2
	FNCALL	_Engineering_Voltage_Calibration,_SEG3
	FNCALL	_Engineering_Voltage_Calibration,_Update_Display
	FNCALL	_Engineering_Voltage_Calibration,___awdiv
	FNCALL	_Engineering_Voltage_Calibration,___awmod
	FNCALL	_Engineering_Voltage_Calibration,___lwdiv
	FNCALL	_Engineering_Voltage_Calibration,___lwmod
	FNCALL	_Engineering_Flow_Compensation,_BeepCtr1
	FNCALL	_Engineering_Flow_Compensation,_Cmd_Process
	FNCALL	_Engineering_Flow_Compensation,_Cmd_Send
	FNCALL	_Engineering_Flow_Compensation,_Display_CumulativeTime
	FNCALL	_Engineering_Flow_Compensation,_Display_Timing
	FNCALL	_Engineering_Flow_Compensation,_E2prom_WriteData
	FNCALL	_Engineering_Flow_Compensation,_Engineering_Flow_Compensation_display1
	FNCALL	_Engineering_Flow_Compensation,_Engineering_Timeout_Logic
	FNCALL	_Engineering_Flow_Compensation,_Get_Engineering_KeyValue
	FNCALL	_Engineering_Flow_Compensation,_SEG1
	FNCALL	_Engineering_Flow_Compensation,_SEG2
	FNCALL	_Engineering_Flow_Compensation,_SEG3
	FNCALL	_Engineering_Flow_Compensation,_Update_Display
	FNCALL	_Display_Timing,_Label_Min
	FNCALL	_Display_Timing,_Label_Running
	FNCALL	_Display_Timing,_Label_Timing
	FNCALL	_Display_Timing,_SEG1
	FNCALL	_Display_Timing,_SEG2
	FNCALL	_Display_Timing,_SEG3
	FNCALL	_Display_Timing,___lldiv
	FNCALL	_Display_Timing,___llmod
	FNCALL	_Engineering_Clear_WorkTime,_BeepCtr1
	FNCALL	_Engineering_Clear_WorkTime,_Cmd_Process
	FNCALL	_Engineering_Clear_WorkTime,_Cmd_Send
	FNCALL	_Engineering_Clear_WorkTime,_E2prom_WriteData
	FNCALL	_Engineering_Clear_WorkTime,_Engineering_Timeout_Logic
	FNCALL	_Engineering_Clear_WorkTime,_Get_Engineering_KeyValue
	FNCALL	_Engineering_Adjust_JYTime,_BeepCtr1
	FNCALL	_Engineering_Adjust_JYTime,_Cmd_Process
	FNCALL	_Engineering_Adjust_JYTime,_Cmd_Send
	FNCALL	_Engineering_Adjust_JYTime,_Display_CumulativeTime
	FNCALL	_Engineering_Adjust_JYTime,_E2prom_WriteData
	FNCALL	_Engineering_Adjust_JYTime,_Engineering_Timeout_Logic
	FNCALL	_Engineering_Adjust_JYTime,_Get_Engineering_KeyValue
	FNCALL	_Engineering_Adjust_JYTime,_SEG10
	FNCALL	_Engineering_Adjust_JYTime,_SEG11
	FNCALL	_Engineering_Adjust_JYTime,_SEG12
	FNCALL	_Engineering_Adjust_JYTime,_SEG13
	FNCALL	_Engineering_Adjust_JYTime,_SEG9
	FNCALL	_Engineering_Adjust_JYTime,_Update_Display
	FNCALL	_Engineering_Adjust_JYTime,___awdiv
	FNCALL	_Engineering_Adjust_JYTime,___awmod
	FNCALL	_Update_Display,_TM1629_WriteDat
	FNCALL	_TM1629_WriteDat,_Nop1629
	FNCALL	_TM1629_WriteDat,_TM1629_WriteByteData
	FNCALL	_TM1629_WriteDat,_TM1629_WriteCommand
	FNCALL	_TM1629_WriteCommand,_Nop1629
	FNCALL	_TM1629_WriteCommand,_TM1629_WriteByteData
	FNCALL	_TM1629_WriteByteData,_Nop1629
	FNCALL	_Get_Engineering_KeyValue,_sprintf
	FNCALL	_Get_Engineering_KeyValue,_strcmp
	FNCALL	_sprintf,__doprnt
	FNCALL	__doprnt,___lwdiv
	FNCALL	__doprnt,_putch
	FNCALL	_Engineering_Timeout_Logic,_PlaySound
	FNCALL	_PlaySound,_Voicedelay
	FNCALL	_PlaySound,_dat_high
	FNCALL	_PlaySound,_dat_low
	FNCALL	_Voicedelay,_Delay10Us
	FNCALL	_E2prom_WriteData,_E2prom_ReadData
	FNCALL	_E2prom_WriteData,_EEPROMwrite
	FNCALL	_E2prom_ReadData,_EEPROMread
	FNCALL	_Display_CumulativeTime,_Label_AddUp
	FNCALL	_Display_CumulativeTime,_Label_h
	FNCALL	_Display_CumulativeTime,_SEG10
	FNCALL	_Display_CumulativeTime,_SEG11
	FNCALL	_Display_CumulativeTime,_SEG12
	FNCALL	_Display_CumulativeTime,_SEG13
	FNCALL	_Display_CumulativeTime,_SEG9
	FNCALL	_Display_CumulativeTime,___lldiv
	FNCALL	_Display_CumulativeTime,___llmod
	FNCALL	_Cmd_Send,_CheckSum_Calculate2
	FNCALL	_Cmd_Send,_Uart2SendBuff
	FNCALL	_Uart2SendBuff,_Uart2Send
	FNCALL	_Cmd_Process,_CheckSum_Calculate2
	FNCALL	_BeepCtr1,_BeepEnable
	FNCALL	_BeepCtr1,_DelayMs
	FNCALL	_DelayMs,_Delay10Us
	FNCALL	_EC11_Set_Value,_Get_EC11_Count
	FNCALL	_BeepInit,_BeepEnable
	FNCALL	_BeepInit,_PWM_Init
	FNCALL	_BeepCtr2,_BeepEnable
	FNROOT	_main
	FNCALL	intlevel1,_InterruptHandlerLow
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	_InterruptHandlerHigh,_EC11_Interrupt
	FNCALL	_InterruptHandlerHigh,_IR_IN_DATA
	FNCALL	_InterruptHandlerHigh,_Time0_Interrupt
	FNCALL	_InterruptHandlerHigh,_UART2_Interrupt
	FNCALL	_Time0_Interrupt,_usart2_receive_wait
	FNCALL	_EC11_Interrupt,_EC11_Scan
	FNCALL	intlevel2,_InterruptHandlerHigh
	global	intlevel2
	FNROOT	intlevel2
	global	Display@count
	global	StartUpVoice@i
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	file	"control.c"
	line	358

;initializer for Display@count
	dw	(0Ah)&0ffffh
	file	"voice.c"
	line	394

;initializer for StartUpVoice@i
	db	low(01h)
	global	_stTouchIoMapArray
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"touch.h"
	line	232
_stTouchIoMapArray:
	dw	(0F92h)&0ffffh
	db	low(01h)
	dw	(0F92h)&0ffffh
	db	low(02h)
	dw	(0F92h)&0ffffh
	db	low(04h)
	dw	(0F92h)&0ffffh
	db	low(08h)
	dw	(0F92h)&0ffffh
	db	low(010h)
	dw	(0F92h)&0ffffh
	db	low(020h)
	dw	(0F92h)&0ffffh
	db	low(040h)
	dw	(0F92h)&0ffffh
	db	low(080h)
	dw	(0F93h)&0ffffh
	db	low(01h)
	dw	(0F93h)&0ffffh
	db	low(02h)
	dw	(0F93h)&0ffffh
	db	low(04h)
	dw	(0F93h)&0ffffh
	db	low(08h)
	dw	(0F93h)&0ffffh
	db	low(010h)
	dw	(0F93h)&0ffffh
	db	low(020h)
	dw	(0F93h)&0ffffh
	db	low(040h)
	dw	(0F93h)&0ffffh
	db	low(080h)
	dw	(0F94h)&0ffffh
	db	low(01h)
	dw	(0F94h)&0ffffh
	db	low(02h)
	dw	(0F94h)&0ffffh
	db	low(04h)
	dw	(0F94h)&0ffffh
	db	low(08h)
	dw	(0F94h)&0ffffh
	db	low(010h)
	dw	(0F94h)&0ffffh
	db	low(020h)
	dw	(0F94h)&0ffffh
	db	low(040h)
	dw	(0F94h)&0ffffh
	db	low(080h)
	dw	(0F95h)&0ffffh
	db	low(01h)
	dw	(0F95h)&0ffffh
	db	low(02h)
	dw	(0F95h)&0ffffh
	db	low(04h)
	dw	(0F95h)&0ffffh
	db	low(08h)
	dw	(0F95h)&0ffffh
	db	low(010h)
	dw	(0F95h)&0ffffh
	db	low(020h)
	dw	(0F95h)&0ffffh
	db	low(040h)
	dw	(0F95h)&0ffffh
	db	low(080h)
	dw	(0F96h)&0ffffh
	db	low(01h)
	dw	(0F96h)&0ffffh
	db	low(02h)
	dw	(0F96h)&0ffffh
	db	low(04h)
	dw	(0F96h)&0ffffh
	db	low(08h)
	dw	(0F96h)&0ffffh
	db	low(010h)
	dw	(0F96h)&0ffffh
	db	low(020h)
	dw	(0F96h)&0ffffh
	db	low(040h)
	dw	(0F96h)&0ffffh
	db	low(080h)
	dw	(0F97h)&0ffffh
	db	low(01h)
	dw	(0F97h)&0ffffh
	db	low(02h)
	dw	(0F97h)&0ffffh
	db	low(04h)
	dw	(0F97h)&0ffffh
	db	low(08h)
	dw	(0F97h)&0ffffh
	db	low(010h)
	dw	(0F97h)&0ffffh
	db	low(020h)
	global __end_of_stTouchIoMapArray
__end_of_stTouchIoMapArray:
	global	_ch_table
psect	smallconst
	file	"tm1629b.c"
	line	22
_ch_table:
	db	low(03Fh)
	db	low(06h)
	db	low(05Bh)
	db	low(04Fh)
	db	low(066h)
	db	low(06Dh)
	db	low(07Dh)
	db	low(07h)
	db	low(07Fh)
	db	low(06Fh)
	db	low(077h)
	db	low(07Ch)
	db	low(039h)
	db	low(05Eh)
	db	low(079h)
	db	low(071h)
	db	low(076h)
	db	low(038h)
	db	low(037h)
	db	low(03Eh)
	db	low(073h)
	db	low(05Ch)
	db	low(040h)
	db	low(0)
	global __end_of_ch_table
__end_of_ch_table:
	global	_hexpowers
psect	smallconst
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\doprnt.c"
	line	366
_hexpowers:
	dw	(01h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0100h)&0ffffh
	dw	(01000h)&0ffffh
	global __end_of_hexpowers
__end_of_hexpowers:
	global	_ucKeyIndexMapArray
psect	smallconst
	file	"touch.h"
	line	233
_ucKeyIndexMapArray:
	db	low(020h)
	db	low(021h)
	db	low(022h)
	db	low(023h)
	global __end_of_ucKeyIndexMapArray
__end_of_ucKeyIndexMapArray:
psect	smallconst
	file	"touch.h"
	line	274
_ucTKdata_Size:
	db	low(04h)
	global __end_of_ucTKdata_Size
__end_of_ucTKdata_Size:
psect	smallconst
	file	"touch.h"
	line	273
	global	_ucFREQ_CHARGER_H
_ucFREQ_CHARGER_H:
	db	low(02h)
	global __end_of_ucFREQ_CHARGER_H
__end_of_ucFREQ_CHARGER_H:
psect	smallconst
	file	"touch.h"
	line	272
	global	_ucFREQ_CHARGER_L
_ucFREQ_CHARGER_L:
	db	low(080h)
	global __end_of_ucFREQ_CHARGER_L
__end_of_ucFREQ_CHARGER_L:
psect	smallconst
	file	"touch.h"
	line	271
	global	_ucMEANTIME_MAX_KEY_NUM
_ucMEANTIME_MAX_KEY_NUM:
	db	low(04h)
	global __end_of_ucMEANTIME_MAX_KEY_NUM
__end_of_ucMEANTIME_MAX_KEY_NUM:
psect	smallconst
	file	"touch.h"
	line	270
_ucBL_CATCHUP_DIFF_COEFF:
	db	low(03h)
	global __end_of_ucBL_CATCHUP_DIFF_COEFF
__end_of_ucBL_CATCHUP_DIFF_COEFF:
psect	smallconst
	file	"touch.h"
	line	269
_ucBL_CATCHUP_DOWN_SPEED:
	db	low(0C8h)
	global __end_of_ucBL_CATCHUP_DOWN_SPEED
__end_of_ucBL_CATCHUP_DOWN_SPEED:
psect	smallconst
	file	"touch.h"
	line	268
_ucBL_CATCHUP_UP_SPEED:
	db	low(064h)
	global __end_of_ucBL_CATCHUP_UP_SPEED
__end_of_ucBL_CATCHUP_UP_SPEED:
psect	smallconst
	file	"touch.h"
	line	267
_ucBL_SLOW_DIFF_COEFF:
	db	low(02h)
	global __end_of_ucBL_SLOW_DIFF_COEFF
__end_of_ucBL_SLOW_DIFF_COEFF:
psect	smallconst
	file	"touch.h"
	line	266
_ucBL_SLOW_UP_SPEED:
	db	low(032h)
	global __end_of_ucBL_SLOW_UP_SPEED
__end_of_ucBL_SLOW_UP_SPEED:
psect	smallconst
	file	"touch.h"
	line	265
_ucBL_SLOW_DOWN_SPEED:
	db	low(064h)
	global __end_of_ucBL_SLOW_DOWN_SPEED
__end_of_ucBL_SLOW_DOWN_SPEED:
psect	smallconst
	file	"touch.h"
	line	264
_ucLOCAL_FILTER_SAMPLES:
	db	low(04h)
	global __end_of_ucLOCAL_FILTER_SAMPLES
__end_of_ucLOCAL_FILTER_SAMPLES:
psect	smallconst
	file	"touch.h"
	line	263
_ucLOCAL_FILTER:
	db	low(03h)
	global __end_of_ucLOCAL_FILTER
__end_of_ucLOCAL_FILTER:
psect	smallconst
	file	"touch.h"
	line	261
_ucRESONANCE_DATA_FILTER:
	db	low(0)
	global __end_of_ucRESONANCE_DATA_FILTER
__end_of_ucRESONANCE_DATA_FILTER:
psect	smallconst
	file	"touch.h"
	line	260
_ucKEY_NUMBER_MAX:
	db	low(04h)
	global __end_of_ucKEY_NUMBER_MAX
__end_of_ucKEY_NUMBER_MAX:
psect	smallconst
	file	"touch.h"
	line	229
	global	_RES_CONFIG
_RES_CONFIG:
	db	low(0FFh)
	global __end_of_RES_CONFIG
__end_of_RES_CONFIG:
psect	smallconst
	file	"touch.h"
	line	226
_ucFREQ_CHANGER_NUMBER_MIN:
	db	low(03h)
	global __end_of_ucFREQ_CHANGER_NUMBER_MIN
__end_of_ucFREQ_CHANGER_NUMBER_MIN:
	global	_stTouchIoMapArray
	global	_ch_table
	global	_hexpowers
	global	_ucKeyIndexMapArray
	global	_uiRX_t
	global	_ucTempIndex
	global	_ucTempCount
	global	_ucSweepKeyNum
	global	_ResultDataL
	global	_touch_key
	global	_currentMode
	global	_cnt
	global	_ucPackNum
	global	_ucKeyMapNumber
	global	_bTestScanSetFlag
	global	_TX_Flag
	global	_bTestSleepFlag
	global	_RunData
	global	_KeyDat
	global	_Engineering_Pattern
	global	VoiceFilterMesh@count
	global	_ucKeyPollingCount
	global	_strongest
	global	_DisBuf
	global	_IRData
	global	_EncoderData
	global	_Sav_single
	global	_VoiceDelay
	global	_midres
	global	_uiGroupArray
	global	_ucInActiveSensorDeltaArray
	global	_ucActiveSensorDeltaArray
	global	_AlarmSound
	global	_mdivs
	global	_uiTemp3
	global	_uiTemp2
	global	_uiTemp1
	global	_uiDefaultSysclk
	global	Engineering_Flow_Compensation@j
	global	Engineering_Flow_Compensation@i
	global	Engineering_Voltage_Calibration@j
	global	Engineering_Voltage_Calibration@i
	global	Engineering_Clear_WorkTime@j
	global	Engineering_Clear_WorkTime@i
	global	Engineering_Adjust_JYTime@j
	global	Engineering_Adjust_JYTime@i
	global	Display@count2
	global	ERR_Code@count4
	global	ERR_Code@count3
	global	ERR_Code@count2
	global	ERR_Code@count1
	global	TimingClosureSet@lastTiming
	global	TimingClosureSet@count
	global	Concentration_Low_Alarm@last_syssta
	global	Concentration_Low_Alarm@count
	global	SOS_Voice@count
	global	key_scan@key_
	global	BeepCtr2@i
	global	BeepCtr1@i
	global	_uiTemp
	global	Time0_Interrupt@test1
	global	Time0_Interrupt@ms
	global	__ucSendGapCnt
	global	_OverflowCnt
	global	_ucKeyPollingOk
	global	_ucTKeyOutStrongest
	global	_ucTempMaxChangeKey
	global	_ucChangeValue
	global	_ucFreqChargeCount
	global	_ucFreqIndex
	global	_ResultDataH
	global	_ReferenceDataL
	global	_ucTKFlag
	global	StartUpVoice@j
	global	VoiceDrive@key_press
	global	VoiceCtr@last
	global	_receive_complete_flag
	global	_data
	global	_ucMULTIPLE
	global	_Sav_strongest
	global	_sUsart2
	global	_single
	global	_midres_data
	global	_mdivs_data
	global	_UART_TX_Buff
	global	_usart_rx_buff
	global	_counttest
	global	_unTKData
	global	_TKCFG3
_TKCFG3	set	0xE63
	global	_TKCFG0
_TKCFG0	set	0xE60
	global	_WPDCbits
_WPDCbits	set	0xE02
	global	_WPDDbits
_WPDDbits	set	0xE03
	global	_WPUDbits
_WPUDbits	set	0xE0B
	global	_WPDD
_WPDD	set	0xE03
	global	_WPDC
_WPDC	set	0xE02
	global	_WPDB
_WPDB	set	0xE01
	global	_WPDA
_WPDA	set	0xE00
	global	_WPUD
_WPUD	set	0xE0B
	global	_WPUC
_WPUC	set	0xE0A
	global	_WPUB
_WPUB	set	0xE09
	global	_WPUA
_WPUA	set	0xE08
	global	_TKDZ0
_TKDZ0  equ     29464
	global	_TKDZ1
_TKDZ1  equ     29465
	global	_TKDZ2
_TKDZ2  equ     29466
	global	_TKDZ3
_TKDZ3  equ     29467
	global	_TKDZM
_TKDZM  equ     29468
	global	_TKRS0
_TKRS0  equ     29469
	global	_TKRS1
_TKRS1  equ     29470
	global	_TKRSM
_TKRSM  equ     29471
	global	_TKBFRS0
_TKBFRS0  equ     29456
	global	_TKBFRS1
_TKBFRS1  equ     29457
	global	_TKBFIS0
_TKBFIS0  equ     29458
	global	_TKBFIS1
_TKBFIS1  equ     29459
	global	_TKBFIS2
_TKBFIS2  equ     29460
	global	_TKBFIS3
_TKBFIS3  equ     29461
	global	_TKBFIS4
_TKBFIS4  equ     29462
	global	_TKCSEN
_TKCSEN  equ     29448
	global	_TKCS0
_TKCS0  equ     29449
	global	_TKCS1
_TKCS1  equ     29450
	global	_TKCS2
_TKCS2  equ     29451
	global	_TKCS3
_TKCS3  equ     29452
	global	_TKCGEN
_TKCGEN  equ     29453
	global	_TKDSEN
_TKDSEN  equ     29454
	global	_T2AUSTP
	global	_T2AUSTP
_T2AUSTP  equ     29455
	global	_TKAUXTC
_TKAUXTC  equ     29440
	global	_TKAUXTE
	global	_TKAUXTE
_TKAUXTE  equ     29441
	global	_TKPWMTS0
_TKPWMTS0  equ     29442
	global	_TKPWMTS1
_TKPWMTS1  equ     29443
	global	_TKMATS
_TKMATS  equ     29444
	global	_TKPWMCF
_TKPWMCF  equ     29445
	global	_T2EVTS0
_T2EVTS0  equ     29446
	global	_T2EVTS1
_T2EVTS1  equ     29447
	global	_LEDCNUM0
_LEDCNUM0  equ     29136
	global	_LEDCNUM1
_LEDCNUM1  equ     29137
	global	_LEDCNUM2
_LEDCNUM2  equ     29138
	global	_DPSEL
_DPSEL  equ     29139
	global	_DISPON
_DISPON  equ     29140
	global	_CLKSEL0
_CLKSEL0  equ     29141
	global	_CLKSEL1
_CLKSEL1  equ     29142
	global	_LCDVOL0
_LCDVOL0  equ     29120
	global	_LCDVOL1
_LCDVOL1  equ     29121
	global	_LCDVOL2
_LCDVOL2  equ     29122
	global	_LCDVOL3
_LCDVOL3  equ     29123
	global	_FREQDIV0
_FREQDIV0  equ     29124
	global	_FREQDIV1
_FREQDIV1  equ     29125
	global	_FCSEL0
_FCSEL0  equ     29126
	global	_FCSEL1
_FCSEL1  equ     29127
	global	_RMOD0
_RMOD0  equ     29112
	global	_RMOD1
_RMOD1  equ     29113
	global	_FRMOD
_FRMOD  equ     29114
	global	_RTYPE
_RTYPE  equ     29115
	global	_CTYPE
_CTYPE  equ     29116
	global	_DUTY0
_DUTY0  equ     29117
	global	_DUTY1
_DUTY1  equ     29118
	global	_PUMPON
_PUMPON  equ     29119
	global	_SEGIOS4_0
_SEGIOS4_0  equ     29104
	global	_SEGIOS4_1
_SEGIOS4_1  equ     29105
	global	_SEGIOS4_2
_SEGIOS4_2  equ     29106
	global	_SEGIOS4_3
_SEGIOS4_3  equ     29107
	global	_BIAS0
_BIAS0  equ     29108
	global	_BIAS1
_BIAS1  equ     29109
	global	_DISPCLKH
_DISPCLKH  equ     29110
	global	_PSRCFH5
_PSRCFH5  equ     29021
	global	_PSRCFH4
_PSRCFH4  equ     29020
	global	_PSRCFH3
_PSRCFH3  equ     29019
	global	_PSRCFH2
_PSRCFH2  equ     29018
	global	_PSRCFH1
_PSRCFH1  equ     29017
	global	_PSRCFH0
_PSRCFH0  equ     29016
	global	_PSRCFL5
_PSRCFL5  equ     29013
	global	_PSRCFL4
_PSRCFL4  equ     29012
	global	_PSRCFL3
_PSRCFL3  equ     29011
	global	_PSRCFL2
_PSRCFL2  equ     29010
	global	_PSRCFL1
_PSRCFL1  equ     29009
	global	_PSRCFL0
_PSRCFL0  equ     29008
	global	_PSRCEH7
_PSRCEH7  equ     29007
	global	_PSRCEH6
_PSRCEH6  equ     29006
	global	_PSRCEH5
_PSRCEH5  equ     29005
	global	_PSRCEH4
_PSRCEH4  equ     29004
	global	_PSRCEH3
_PSRCEH3  equ     29003
	global	_PSRCEH2
_PSRCEH2  equ     29002
	global	_PSRCEH1
_PSRCEH1  equ     29001
	global	_PSRCEH0
_PSRCEH0  equ     29000
	global	_PSRCEL7
_PSRCEL7  equ     28999
	global	_PSRCEL6
_PSRCEL6  equ     28998
	global	_PSRCEL5
_PSRCEL5  equ     28997
	global	_PSRCEL4
_PSRCEL4  equ     28996
	global	_PSRCEL3
_PSRCEL3  equ     28995
	global	_PSRCEL2
_PSRCEL2  equ     28994
	global	_PSRCEL1
_PSRCEL1  equ     28993
	global	_PSRCEL0
_PSRCEL0  equ     28992
	global	_PSRCDH7
_PSRCDH7  equ     28991
	global	_PSRCDH6
_PSRCDH6  equ     28990
	global	_PSRCDH5
_PSRCDH5  equ     28989
	global	_PSRCDH4
_PSRCDH4  equ     28988
	global	_PSRCDH3
_PSRCDH3  equ     28987
	global	_PSRCDH2
_PSRCDH2  equ     28986
	global	_PSRCDH1
_PSRCDH1  equ     28985
	global	_PSRCDH0
_PSRCDH0  equ     28984
	global	_PSRCDL7
_PSRCDL7  equ     28983
	global	_PSRCDL6
_PSRCDL6  equ     28982
	global	_PSRCDL5
_PSRCDL5  equ     28981
	global	_PSRCDL4
_PSRCDL4  equ     28980
	global	_PSRCDL3
_PSRCDL3  equ     28979
	global	_PSRCDL2
_PSRCDL2  equ     28978
	global	_PSRCDL1
_PSRCDL1  equ     28977
	global	_PSRCDL0
_PSRCDL0  equ     28976
	global	_PSRCCH7
_PSRCCH7  equ     28975
	global	_PSRCCH6
_PSRCCH6  equ     28974
	global	_PSRCCH5
_PSRCCH5  equ     28973
	global	_PSRCCH4
_PSRCCH4  equ     28972
	global	_PSRCCH3
_PSRCCH3  equ     28971
	global	_PSRCCH2
_PSRCCH2  equ     28970
	global	_PSRCCH1
_PSRCCH1  equ     28969
	global	_PSRCCH0
_PSRCCH0  equ     28968
	global	_PSRCCL7
_PSRCCL7  equ     28967
	global	_PSRCCL6
_PSRCCL6  equ     28966
	global	_PSRCCL5
_PSRCCL5  equ     28965
	global	_PSRCCL4
_PSRCCL4  equ     28964
	global	_PSRCCL3
_PSRCCL3  equ     28963
	global	_PSRCCL2
_PSRCCL2  equ     28962
	global	_PSRCCL1
_PSRCCL1  equ     28961
	global	_PSRCCL0
_PSRCCL0  equ     28960
	global	_PSRCBH7
_PSRCBH7  equ     28959
	global	_PSRCBH6
_PSRCBH6  equ     28958
	global	_PSRCBH5
_PSRCBH5  equ     28957
	global	_PSRCBH4
_PSRCBH4  equ     28956
	global	_PSRCBH3
_PSRCBH3  equ     28955
	global	_PSRCBH2
_PSRCBH2  equ     28954
	global	_PSRCBH1
_PSRCBH1  equ     28953
	global	_PSRCBH0
_PSRCBH0  equ     28952
	global	_PSRCBL7
_PSRCBL7  equ     28951
	global	_PSRCBL6
_PSRCBL6  equ     28950
	global	_PSRCBL5
_PSRCBL5  equ     28949
	global	_PSRCBL4
_PSRCBL4  equ     28948
	global	_PSRCBL3
_PSRCBL3  equ     28947
	global	_PSRCBL2
_PSRCBL2  equ     28946
	global	_PSRCBL1
_PSRCBL1  equ     28945
	global	_PSRCBL0
_PSRCBL0  equ     28944
	global	_PSRCAH7
_PSRCAH7  equ     28943
	global	_PSRCAH6
_PSRCAH6  equ     28942
	global	_PSRCAH5
_PSRCAH5  equ     28941
	global	_PSRCAH4
_PSRCAH4  equ     28940
	global	_PSRCAH3
_PSRCAH3  equ     28939
	global	_PSRCAH2
_PSRCAH2  equ     28938
	global	_PSRCAH1
_PSRCAH1  equ     28937
	global	_PSRCAH0
_PSRCAH0  equ     28936
	global	_PSRCAL7
_PSRCAL7  equ     28935
	global	_PSRCAL6
_PSRCAL6  equ     28934
	global	_PSRCAL5
_PSRCAL5  equ     28933
	global	_PSRCAL4
_PSRCAL4  equ     28932
	global	_PSRCAL3
_PSRCAL3  equ     28931
	global	_PSRCAL2
_PSRCAL2  equ     28930
	global	_PSRCAL1
_PSRCAL1  equ     28929
	global	_PSRCAL0
_PSRCAL0  equ     28928
	global	_PSINKF5
_PSINKF5  equ     28909
	global	_PSINKF4
_PSINKF4  equ     28908
	global	_PSINKF3
_PSINKF3  equ     28907
	global	_PSINKF2
_PSINKF2  equ     28906
	global	_PSINKF1
_PSINKF1  equ     28905
	global	_PSINKF0
_PSINKF0  equ     28904
	global	_PSINKE7
_PSINKE7  equ     28903
	global	_PSINKE6
_PSINKE6  equ     28902
	global	_PSINKE5
_PSINKE5  equ     28901
	global	_PSINKE4
_PSINKE4  equ     28900
	global	_PSINKE3
_PSINKE3  equ     28899
	global	_PSINKE2
_PSINKE2  equ     28898
	global	_PSINKE1
_PSINKE1  equ     28897
	global	_PSINKE0
_PSINKE0  equ     28896
	global	_PSINKD7
_PSINKD7  equ     28895
	global	_PSINKD6
_PSINKD6  equ     28894
	global	_PSINKD5
_PSINKD5  equ     28893
	global	_PSINKD4
_PSINKD4  equ     28892
	global	_PSINKD3
_PSINKD3  equ     28891
	global	_PSINKD2
_PSINKD2  equ     28890
	global	_PSINKD1
_PSINKD1  equ     28889
	global	_PSINKD0
_PSINKD0  equ     28888
	global	_PSINKC7
_PSINKC7  equ     28887
	global	_PSINKC6
_PSINKC6  equ     28886
	global	_PSINKC5
_PSINKC5  equ     28885
	global	_PSINKC4
_PSINKC4  equ     28884
	global	_PSINKC3
_PSINKC3  equ     28883
	global	_PSINKC2
_PSINKC2  equ     28882
	global	_PSINKC1
_PSINKC1  equ     28881
	global	_PSINKC0
_PSINKC0  equ     28880
	global	_PSINKB7
_PSINKB7  equ     28879
	global	_PSINKB6
_PSINKB6  equ     28878
	global	_PSINKB5
_PSINKB5  equ     28877
	global	_PSINKB4
_PSINKB4  equ     28876
	global	_PSINKB3
_PSINKB3  equ     28875
	global	_PSINKB2
_PSINKB2  equ     28874
	global	_PSINKB1
_PSINKB1  equ     28873
	global	_PSINKB0
_PSINKB0  equ     28872
	global	_PSINKA7
_PSINKA7  equ     28871
	global	_PSINKA6
_PSINKA6  equ     28870
	global	_PSINKA5
_PSINKA5  equ     28869
	global	_PSINKA4
_PSINKA4  equ     28868
	global	_PSINKA3
_PSINKA3  equ     28867
	global	_PSINKA2
_PSINKA2  equ     28866
	global	_PSINKA1
_PSINKA1  equ     28865
	global	_PSINKA0
_PSINKA0  equ     28864
	global	_ODCONF5
_ODCONF5  equ     28845
	global	_ODCONF4
_ODCONF4  equ     28844
	global	_ODCONF3
_ODCONF3  equ     28843
	global	_ODCONF2
_ODCONF2  equ     28842
	global	_ODCONF1
_ODCONF1  equ     28841
	global	_ODCONF0
_ODCONF0  equ     28840
	global	_ODCONE7
_ODCONE7  equ     28839
	global	_ODCONE6
_ODCONE6  equ     28838
	global	_ODCONE5
_ODCONE5  equ     28837
	global	_ODCONE4
_ODCONE4  equ     28836
	global	_ODCONE3
_ODCONE3  equ     28835
	global	_ODCONE2
_ODCONE2  equ     28834
	global	_ODCONE1
_ODCONE1  equ     28833
	global	_ODCONE0
_ODCONE0  equ     28832
	global	_ODCOND7
_ODCOND7  equ     28831
	global	_ODCOND6
_ODCOND6  equ     28830
	global	_ODCOND5
_ODCOND5  equ     28829
	global	_ODCOND4
_ODCOND4  equ     28828
	global	_ODCOND3
_ODCOND3  equ     28827
	global	_ODCOND2
_ODCOND2  equ     28826
	global	_ODCOND1
_ODCOND1  equ     28825
	global	_ODCOND0
_ODCOND0  equ     28824
	global	_ODCONC7
_ODCONC7  equ     28823
	global	_ODCONC6
_ODCONC6  equ     28822
	global	_ODCONC5
_ODCONC5  equ     28821
	global	_ODCONC4
_ODCONC4  equ     28820
	global	_ODCONC3
_ODCONC3  equ     28819
	global	_ODCONC2
_ODCONC2  equ     28818
	global	_ODCONC1
_ODCONC1  equ     28817
	global	_ODCONC0
_ODCONC0  equ     28816
	global	_ODCONB7
_ODCONB7  equ     28815
	global	_ODCONB6
_ODCONB6  equ     28814
	global	_ODCONB5
_ODCONB5  equ     28813
	global	_ODCONB4
_ODCONB4  equ     28812
	global	_ODCONB3
_ODCONB3  equ     28811
	global	_ODCONB2
_ODCONB2  equ     28810
	global	_ODCONB1
_ODCONB1  equ     28809
	global	_ODCONB0
_ODCONB0  equ     28808
	global	_ODCONA7
_ODCONA7  equ     28807
	global	_ODCONA6
_ODCONA6  equ     28806
	global	_ODCONA5
_ODCONA5  equ     28805
	global	_ODCONA4
_ODCONA4  equ     28804
	global	_ODCONA3
_ODCONA3  equ     28803
	global	_ODCONA2
_ODCONA2  equ     28802
	global	_ODCONA1
_ODCONA1  equ     28801
	global	_ODCONA0
_ODCONA0  equ     28800
	global	_WPUF5
_WPUF5  equ     28781
	global	_WPUF4
_WPUF4  equ     28780
	global	_WPUF3
_WPUF3  equ     28779
	global	_WPUF2
_WPUF2  equ     28778
	global	_WPUF1
_WPUF1  equ     28777
	global	_WPUF0
_WPUF0  equ     28776
	global	_WPUE7
_WPUE7  equ     28775
	global	_WPUE6
_WPUE6  equ     28774
	global	_WPUE5
_WPUE5  equ     28773
	global	_WPUE4
_WPUE4  equ     28772
	global	_WPUE3
_WPUE3  equ     28771
	global	_WPUE2
_WPUE2  equ     28770
	global	_WPUE1
_WPUE1  equ     28769
	global	_WPUE0
_WPUE0  equ     28768
	global	_WPUD7
_WPUD7  equ     28767
	global	_WPUD6
_WPUD6  equ     28766
	global	_WPUD5
_WPUD5  equ     28765
	global	_WPUD4
_WPUD4  equ     28764
	global	_WPUD3
_WPUD3  equ     28763
	global	_WPUD2
_WPUD2  equ     28762
	global	_WPUD1
_WPUD1  equ     28761
	global	_WPUD0
_WPUD0  equ     28760
	global	_WPUC7
_WPUC7  equ     28759
	global	_WPUC6
_WPUC6  equ     28758
	global	_WPUC5
_WPUC5  equ     28757
	global	_WPUC4
_WPUC4  equ     28756
	global	_WPUC3
_WPUC3  equ     28755
	global	_WPUC2
_WPUC2  equ     28754
	global	_WPUC1
_WPUC1  equ     28753
	global	_WPUC0
_WPUC0  equ     28752
	global	_WPUB7
_WPUB7  equ     28751
	global	_WPUB6
_WPUB6  equ     28750
	global	_WPUB5
_WPUB5  equ     28749
	global	_WPUB4
_WPUB4  equ     28748
	global	_WPUB3
_WPUB3  equ     28747
	global	_WPUB2
_WPUB2  equ     28746
	global	_WPUB1
_WPUB1  equ     28745
	global	_WPUB0
_WPUB0  equ     28744
	global	_WPUA7
_WPUA7  equ     28743
	global	_WPUA6
_WPUA6  equ     28742
	global	_WPUA5
_WPUA5  equ     28741
	global	_WPUA4
_WPUA4  equ     28740
	global	_WPUA3
_WPUA3  equ     28739
	global	_WPUA2
_WPUA2  equ     28738
	global	_WPUA1
_WPUA1  equ     28737
	global	_WPUA0
_WPUA0  equ     28736
	global	_WPDF5
_WPDF5  equ     28717
	global	_WPDF4
_WPDF4  equ     28716
	global	_WPDF3
_WPDF3  equ     28715
	global	_WPDF2
_WPDF2  equ     28714
	global	_WPDF1
_WPDF1  equ     28713
	global	_WPDF0
_WPDF0  equ     28712
	global	_WPDE7
_WPDE7  equ     28711
	global	_WPDE6
_WPDE6  equ     28710
	global	_WPDE5
_WPDE5  equ     28709
	global	_WPDE4
_WPDE4  equ     28708
	global	_WPDE3
_WPDE3  equ     28707
	global	_WPDE2
_WPDE2  equ     28706
	global	_WPDE1
_WPDE1  equ     28705
	global	_WPDE0
_WPDE0  equ     28704
	global	_WPDD7
_WPDD7  equ     28703
	global	_WPDD6
_WPDD6  equ     28702
	global	_WPDD5
_WPDD5  equ     28701
	global	_WPDD4
_WPDD4  equ     28700
	global	_WPDD3
_WPDD3  equ     28699
	global	_WPDD2
_WPDD2  equ     28698
	global	_WPDD1
_WPDD1  equ     28697
	global	_WPDD0
_WPDD0  equ     28696
	global	_WPDC7
_WPDC7  equ     28695
	global	_WPDC6
_WPDC6  equ     28694
	global	_WPDC5
_WPDC5  equ     28693
	global	_WPDC4
_WPDC4  equ     28692
	global	_WPDC3
_WPDC3  equ     28691
	global	_WPDC2
_WPDC2  equ     28690
	global	_WPDC1
_WPDC1  equ     28689
	global	_WPDC0
_WPDC0  equ     28688
	global	_WPDB7
_WPDB7  equ     28687
	global	_WPDB6
_WPDB6  equ     28686
	global	_WPDB5
_WPDB5  equ     28685
	global	_WPDB4
_WPDB4  equ     28684
	global	_WPDB3
_WPDB3  equ     28683
	global	_WPDB2
_WPDB2  equ     28682
	global	_WPDB1
_WPDB1  equ     28681
	global	_WPDB0
_WPDB0  equ     28680
	global	_WPDA7
_WPDA7  equ     28679
	global	_WPDA6
_WPDA6  equ     28678
	global	_WPDA5
_WPDA5  equ     28677
	global	_WPDA4
_WPDA4  equ     28676
	global	_WPDA3
_WPDA3  equ     28675
	global	_WPDA2
_WPDA2  equ     28674
	global	_WPDA1
_WPDA1  equ     28673
	global	_WPDA0
_WPDA0  equ     28672
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_PCKEN3bits
_PCKEN3bits	set	0xF2A
	global	_MDIVS1
_MDIVS1	set	0xF37
	global	_MDIVS0
_MDIVS0	set	0xF36
	global	_MDRES3
_MDRES3	set	0xF35
	global	_MDRES2
_MDRES2	set	0xF34
	global	_MDRES1
_MDRES1	set	0xF33
	global	_MDRES0
_MDRES0	set	0xF32
	global	_MDCON0
_MDCON0	set	0xF38
	global	_HIRCCALH
_HIRCCALH	set	0xF26
	global	_HIRCCALL
_HIRCCALL	set	0xF25
	global	_T2CNTRH
_T2CNTRH	set	0xF7F
	global	_T2CNTRL
_T2CNTRL	set	0xF7E
	global	_TKCH5
_TKCH5	set	0xF7B
	global	_TKCH4
_TKCH4	set	0xF7A
	global	_TKCH3
_TKCH3	set	0xF79
	global	_TKCH2
_TKCH2	set	0xF78
	global	_TKCH1
_TKCH1	set	0xF77
	global	_TKCH0
_TKCH0	set	0xF76
	global	_TKCON0
_TKCON0	set	0xF7C
	global	_LVDCON1
_LVDCON1	set	0xF2F
	global	_LVDCON0
_LVDCON0	set	0xF2E
	global	_T2PRH
_T2PRH	set	0xF99
	global	_T2PRL
_T2PRL	set	0xF98
	global	_T2CR
_T2CR	set	0xF7D
	global	_T3CR3bits
_T3CR3bits	set	0xFAD
	global	_T3CR2bits
_T3CR2bits	set	0xFAC
	global	_T3CCPRH
_T3CCPRH	set	0xFB1
	global	_T3CCPRL
_T3CCPRL	set	0xFB0
	global	_T3CNTRH
_T3CNTRH	set	0xFAF
	global	_T3CNTRL
_T3CNTRL	set	0xFAE
	global	_T3CR1bits
_T3CR1bits	set	0xFAB
	global	_AFP14bits
_AFP14bits	set	0xF56
	global	_UR2DATL
_UR2DATL	set	0xF00
	global	_UR2STAT
_UR2STAT	set	0xF05
	global	_UR2BRRL
_UR2BRRL	set	0xF04
	global	_UR2CR2bits
_UR2CR2bits	set	0xF03
	global	_UR2CR1bits
_UR2CR1bits	set	0xF02
	global	_AFP3bits
_AFP3bits	set	0xF4B
	global	_LATEbits
_LATEbits	set	0xF8D
	global	_TRISFbits
_TRISFbits	set	0xF97
	global	_PCKEN2bits
_PCKEN2bits	set	0xF29
	global	_INTCON3bits
_INTCON3bits	set	0xFF0
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_ITYPE1
_ITYPE1	set	0xF47
	global	_EPS3bits
_EPS3bits	set	0xF5A
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_T4CR4bits
_T4CR4bits	set	0xFC1
	global	_T4CR3bits
_T4CR3bits	set	0xFC0
	global	_T4CR2bits
_T4CR2bits	set	0xFBF
	global	_AFP8bits
_AFP8bits	set	0xF50
	global	_T4POLbits
_T4POLbits	set	0xFC3
	global	_T4OEbits
_T4OEbits	set	0xFC2
	global	_T4PRH
_T4PRH	set	0xFBD
	global	_T4PRL
_T4PRL	set	0xFBC
	global	_T4CNTRH
_T4CNTRH	set	0xFBB
	global	_T4CNTRL
_T4CNTRL	set	0xFBA
	global	_T4CR1bits
_T4CR1bits	set	0xFBE
	global	_T4CH2CCRH
_T4CH2CCRH	set	0xFB5
	global	_T4CH2CCRL
_T4CH2CCRL	set	0xFB4
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_LATFbits
_LATFbits	set	0xF8E
	global	_LATAbits
_LATAbits	set	0xF89
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_WDTCON1bits
_WDTCON1bits	set	0xF0C
	global	_WDTCON2bits
_WDTCON2bits	set	0xF0D
	global	_CKCON1bits
_CKCON1bits	set	0xF2B
	global	_CKCON2bits
_CKCON2bits	set	0xF2C
	global	_T0PR
_T0PR	set	0xF88
	global	_T0CNTR
_T0CNTR	set	0xF87
	global	_T0CRbits
_T0CRbits	set	0xF86
	global	_PCKEN1bits
_PCKEN1bits	set	0xF28
	global	_ANSEL0
_ANSEL0	set	0xF40
	global	_TRISF
_TRISF	set	0xF97
	global	_TRISE
_TRISE	set	0xF96
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISA
_TRISA	set	0xF92
	global	_PORTF
_PORTF	set	0xF85
	global	_PORTE
_PORTE	set	0xF84
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTA
_PORTA	set	0xF80
	global	_INTCON1
_INTCON1	set	0xFF2
	global	_OSCCON
_OSCCON	set	0xF27
	global	_INTCON1bits
_INTCON1bits	set	0xFF2
	global	_MOSIPO2
_MOSIPO2  equ     31298
	global	_SP0
_SP0  equ     32736
	global	_SP1
_SP1  equ     32737
	global	_SP2
_SP2  equ     32738
	global	_SP3
_SP3  equ     32739
	global	_SP4
_SP4  equ     32740
	global	_STKUNF
_STKUNF  equ     32742
	global	_STKFUL
_STKFUL  equ     32743
	global	_TMR0IF
_TMR0IF  equ     32658
	global	_TMR0IE
_TMR0IE  equ     32661
	global	_GIEL
_GIEL  equ     32662
	global	_PEIE
	global	_PEIE
_PEIE  equ     32662
	global	_GIEH
_GIEH  equ     32663
	global	_GIE
	global	_GIE
_GIE  equ     32663
	global	_INT0IF
_INT0IF  equ     32648
	global	_INT1IF
_INT1IF  equ     32649
	global	_INT2IF
_INT2IF  equ     32650
	global	_INT3IF
_INT3IF  equ     32651
	global	_INT4IF
_INT4IF  equ     32652
	global	_INT5IF
_INT5IF  equ     32653
	global	_INT6IF
_INT6IF  equ     32654
	global	_INT7IF
_INT7IF  equ     32655
	global	_INT0IE
_INT0IE  equ     32640
	global	_INT1IE
_INT1IE  equ     32641
	global	_INT2IE
_INT2IE  equ     32642
	global	_INT3IE
_INT3IE  equ     32643
	global	_INT4IE
_INT4IE  equ     32644
	global	_INT5IE
_INT5IE  equ     32645
	global	_INT6IE
_INT6IE  equ     32646
	global	_INT7IE
_INT7IE  equ     32647
	global	_C
_C  equ     32448
	global	_DC
_DC  equ     32449
	global	_Z
_Z  equ     32450
	global	_OV
_OV  equ     32451
	global	_N
_N  equ     32452
	global	_T6CHP
_T6CHP  equ     32440
	global	_T6CHNP
_T6CHNP  equ     32441
	global	_T6CHOE
_T6CHOE  equ     32442
	global	_T6CHNOE
_T6CHNOE  equ     32443
	global	_T6CHSS0
_T6CHSS0  equ     32444
	global	_T6CHSS1
_T6CHSS1  equ     32445
	global	_T6BKP
_T6BKP  equ     32446
	global	_T6BIE
_T6BIE  equ     32447
	global	_T6DC0
_T6DC0  equ     32432
	global	_T6DC1
_T6DC1  equ     32433
	global	_T6DC2
_T6DC2  equ     32434
	global	_T6DC3
_T6DC3  equ     32435
	global	_T6DC4
_T6DC4  equ     32436
	global	_T6DC5
_T6DC5  equ     32437
	global	_T6DC6
_T6DC6  equ     32438
	global	_T6AUE
_T6AUE  equ     32439
	global	_T6BKM
_T6BKM  equ     32424
	global	_T6BEVT
_T6BEVT  equ     32425
	global	_T6BKS0
_T6BKS0  equ     32426
	global	_T6BKS1
_T6BKS1  equ     32427
	global	_T6BKS2
_T6BKS2  equ     32428
	global	_T6BZM
_T6BZM  equ     32429
	global	_T6OPM
_T6OPM  equ     32430
	global	_T6IF
_T6IF  equ     32431
	global	_T6CEN
_T6CEN  equ     32416
	global	_T6PSC0
_T6PSC0  equ     32417
	global	_T6PSC1
_T6PSC1  equ     32418
	global	_T6CKS0
_T6CKS0  equ     32419
	global	_T6CKS1
_T6CKS1  equ     32420
	global	_T6CKS2
_T6CKS2  equ     32421
	global	_T6UG
_T6UG  equ     32422
	global	_T6IE
_T6IE  equ     32423
	global	_T5CHP
_T5CHP  equ     32360
	global	_T5CHNP
_T5CHNP  equ     32361
	global	_T5CHOE
_T5CHOE  equ     32362
	global	_T5CHNOE
_T5CHNOE  equ     32363
	global	_T5CHSS0
_T5CHSS0  equ     32364
	global	_T5CHSS1
_T5CHSS1  equ     32365
	global	_T5BKP
_T5BKP  equ     32366
	global	_T5BIE
_T5BIE  equ     32367
	global	_T5DC0
_T5DC0  equ     32352
	global	_T5DC1
_T5DC1  equ     32353
	global	_T5DC2
_T5DC2  equ     32354
	global	_T5DC3
_T5DC3  equ     32355
	global	_T5DC4
_T5DC4  equ     32356
	global	_T5DC5
_T5DC5  equ     32357
	global	_T5DC6
_T5DC6  equ     32358
	global	_T5AUE
_T5AUE  equ     32359
	global	_T5BKM
_T5BKM  equ     32344
	global	_T5BEVT
_T5BEVT  equ     32345
	global	_T5BKS0
_T5BKS0  equ     32346
	global	_T5BKS1
_T5BKS1  equ     32347
	global	_T5BKS2
_T5BKS2  equ     32348
	global	_T5BZM
_T5BZM  equ     32349
	global	_T5OPM
_T5OPM  equ     32350
	global	_T5IF
_T5IF  equ     32351
	global	_T5CEN
_T5CEN  equ     32336
	global	_T5PSC0
_T5PSC0  equ     32337
	global	_T5PSC1
_T5PSC1  equ     32338
	global	_T5CKS0
_T5CKS0  equ     32339
	global	_T5CKS1
_T5CKS1  equ     32340
	global	_T5CKS2
_T5CKS2  equ     32341
	global	_T5UG
_T5UG  equ     32342
	global	_T5IE
_T5IE  equ     32343
	global	_T4CH1P
_T4CH1P  equ     32280
	global	_T4CH1NP
_T4CH1NP  equ     32281
	global	_T4CH2P
_T4CH2P  equ     32282
	global	_T4CH3P
_T4CH3P  equ     32283
	global	_T4CH4P
_T4CH4P  equ     32284
	global	_T4BKP
_T4BKP  equ     32287
	global	_T4CH1OE
_T4CH1OE  equ     32272
	global	_T4CH1NOE
_T4CH1NOE  equ     32273
	global	_T4CH2OE
_T4CH2OE  equ     32274
	global	_T4CH3OE
_T4CH3OE  equ     32275
	global	_T4CH4OE
_T4CH4OE  equ     32276
	global	_T4BIE
_T4BIE  equ     32279
	global	_T4CH1SS0
_T4CH1SS0  equ     32264
	global	_T4CH1SS1
_T4CH1SS1  equ     32265
	global	_T4CH2SS0
_T4CH2SS0  equ     32266
	global	_T4CH2SS1
_T4CH2SS1  equ     32267
	global	_T4CH3SS0
_T4CH3SS0  equ     32268
	global	_T4CH3SS1
_T4CH3SS1  equ     32269
	global	_T4CH4SS0
_T4CH4SS0  equ     32270
	global	_T4CH4SS1
_T4CH4SS1  equ     32271
	global	_T4DC0
_T4DC0  equ     32256
	global	_T4DC1
_T4DC1  equ     32257
	global	_T4DC2
_T4DC2  equ     32258
	global	_T4DC3
_T4DC3  equ     32259
	global	_T4DC4
_T4DC4  equ     32260
	global	_T4DC5
_T4DC5  equ     32261
	global	_T4DC6
_T4DC6  equ     32262
	global	_T4AUE
_T4AUE  equ     32263
	global	_T4BKM
_T4BKM  equ     32248
	global	_T4BEVT
_T4BEVT  equ     32249
	global	_T4BKS0
_T4BKS0  equ     32250
	global	_T4BKS1
_T4BKS1  equ     32251
	global	_T4BKS2
_T4BKS2  equ     32252
	global	_T4BZM
_T4BZM  equ     32253
	global	_T4OPM
_T4OPM  equ     32254
	global	_T4IF
_T4IF  equ     32255
	global	_T4CEN
_T4CEN  equ     32240
	global	_T4PSC0
_T4PSC0  equ     32241
	global	_T4PSC1
_T4PSC1  equ     32242
	global	_T4CKS0
_T4CKS0  equ     32243
	global	_T4CKS1
_T4CKS1  equ     32244
	global	_T4CKS2
_T4CKS2  equ     32245
	global	_T4UG
_T4UG  equ     32246
	global	_T4IE
_T4IE  equ     32247
	global	_T3CCM
_T3CCM  equ     32104
	global	_IREN
_IREN  equ     32105
	global	_IRCKEN
_IRCKEN  equ     32106
	global	_IRSIGN
_IRSIGN  equ     32107
	global	_T3CR1F
_T3CR1F  equ     32109
	global	_T3IF
_T3IF  equ     32110
	global	_T3CCIF
_T3CCIF  equ     32111
	global	_T3COME
_T3COME  equ     32096
	global	_T3COMMOD0
_T3COMMOD0  equ     32097
	global	_T3COMMOD1
_T3COMMOD1  equ     32098
	global	_T3CAPE
_T3CAPE  equ     32099
	global	_T3CAPPSC0
_T3CAPPSC0  equ     32100
	global	_T3CAPPSC1
_T3CAPPSC1  equ     32101
	global	_T3CAPMOD0
_T3CAPMOD0  equ     32102
	global	_T3CAPMOD1
_T3CAPMOD1  equ     32103
	global	_T3CEN
_T3CEN  equ     32088
	global	_T3PSC0
_T3PSC0  equ     32089
	global	_T3PSC1
_T3PSC1  equ     32090
	global	_T3PSC2
_T3PSC2  equ     32091
	global	_T3CKS0
_T3CKS0  equ     32092
	global	_T3CKS1
_T3CKS1  equ     32093
	global	_T3IE
_T3IE  equ     32094
	global	_T3CCIE
_T3CCIE  equ     32095
	global	_RD
_RD  equ     32048
	global	_WR
_WR  equ     32049
	global	_WREN
_WREN  equ     32050
	global	_WRERR
_WRERR  equ     32051
	global	_FREE
_FREE  equ     32052
	global	_PONLY
_PONLY  equ     32053
	global	_CFGS
_CFGS  equ     32054
	global	_EEPGD
_EEPGD  equ     32055
	global	_INT0IP
_INT0IP  equ     32032
	global	_INT1IP
_INT1IP  equ     32033
	global	_INT2IP
_INT2IP  equ     32034
	global	_INT3IP
_INT3IP  equ     32035
	global	_INT4IP
_INT4IP  equ     32036
	global	_INT5IP
_INT5IP  equ     32037
	global	_INT6IP
_INT6IP  equ     32038
	global	_INT7IP
_INT7IP  equ     32039
	global	_TMR0IP
_TMR0IP  equ     32024
	global	_TMR1IP
_TMR1IP  equ     32025
	global	_TMR2IP
_TMR2IP  equ     32026
	global	_TMR3IP
_TMR3IP  equ     32027
	global	_TMR4IP
_TMR4IP  equ     32028
	global	_TMR5IP
_TMR5IP  equ     32029
	global	_TMR6IP
_TMR6IP  equ     32030
	global	_SPIIP
_SPIIP  equ     32016
	global	_I2CIP
_I2CIP  equ     32017
	global	_UR1IP
_UR1IP  equ     32018
	global	_UR2IP
_UR2IP  equ     32019
	global	_UR3IP
_UR3IP  equ     32020
	global	_EEIP
_EEIP  equ     31992
	global	_ADIP
_ADIP  equ     31993
	global	_C0IP
_C0IP  equ     31994
	global	_C1IP
_C1IP  equ     31995
	global	_LVDIP
_LVDIP  equ     31996
	global	_OSCFIP
_OSCFIP  equ     31997
	global	_LCDIP
_LCDIP  equ     31998
	global	_ATHIP
_ATHIP  equ     31999
	global	_EEIF
_EEIF  equ     31984
	global	_ADIF
_ADIF  equ     31985
	global	_C0IF
_C0IF  equ     31986
	global	_C1IF
_C1IF  equ     31987
	global	_LVDIF
	global	_LVDIF
_LVDIF  equ     31988
	global	_OSCFIF
_OSCFIF  equ     31989
	global	_LCDIF
_LCDIF  equ     31990
	global	_ATHIF
_ATHIF  equ     31991
	global	_EEIE
_EEIE  equ     31976
	global	_ADIE
_ADIE  equ     31977
	global	_C0IE
_C0IE  equ     31978
	global	_C1IE
_C1IE  equ     31979
	global	_LVDIE
	global	_LVDIE
_LVDIE  equ     31980
	global	_OSCFIE
_OSCFIE  equ     31981
	global	_LCDIE
_LCDIE  equ     31982
	global	_ATHIE
_ATHIE  equ     31983
	global	_LVRF
_LVRF  equ     31968
	global	_PORF
_PORF  equ     31969
	global	_PD
_PD  equ     31970
	global	_TO
_TO  equ     31971
	global	_SRSTF
_SRSTF  equ     31972
	global	_SLVREN
_SLVREN  equ     31974
	global	_IPEN
	global	_IPEN
_IPEN  equ     31975
	global	_TRISF5
_TRISF5  equ     31933
	global	_TRISF4
_TRISF4  equ     31932
	global	_TRISF3
_TRISF3  equ     31931
	global	_TRISF2
_TRISF2  equ     31930
	global	_TRISF1
_TRISF1  equ     31929
	global	_TRISF0
_TRISF0  equ     31928
	global	_TRISE7
_TRISE7  equ     31927
	global	_TRISE6
_TRISE6  equ     31926
	global	_TRISE5
_TRISE5  equ     31925
	global	_TRISE4
_TRISE4  equ     31924
	global	_TRISE3
_TRISE3  equ     31923
	global	_TRISE2
_TRISE2  equ     31922
	global	_TRISE1
_TRISE1  equ     31921
	global	_TRISE0
_TRISE0  equ     31920
	global	_TRISD7
_TRISD7  equ     31919
	global	_TRISD6
_TRISD6  equ     31918
	global	_TRISD5
_TRISD5  equ     31917
	global	_TRISD4
_TRISD4  equ     31916
	global	_TRISD3
_TRISD3  equ     31915
	global	_TRISD2
_TRISD2  equ     31914
	global	_TRISD1
_TRISD1  equ     31913
	global	_TRISD0
_TRISD0  equ     31912
	global	_TRISC7
_TRISC7  equ     31911
	global	_TRISC6
_TRISC6  equ     31910
	global	_TRISC5
_TRISC5  equ     31909
	global	_TRISC4
_TRISC4  equ     31908
	global	_TRISC3
_TRISC3  equ     31907
	global	_TRISC2
_TRISC2  equ     31906
	global	_TRISC1
_TRISC1  equ     31905
	global	_TRISC0
_TRISC0  equ     31904
	global	_TRISB7
_TRISB7  equ     31903
	global	_TRISB6
_TRISB6  equ     31902
	global	_TRISB5
_TRISB5  equ     31901
	global	_TRISB4
_TRISB4  equ     31900
	global	_TRISB3
_TRISB3  equ     31899
	global	_TRISB2
_TRISB2  equ     31898
	global	_TRISB1
_TRISB1  equ     31897
	global	_TRISB0
_TRISB0  equ     31896
	global	_TRISA7
_TRISA7  equ     31895
	global	_TRISA6
_TRISA6  equ     31894
	global	_TRISA5
_TRISA5  equ     31893
	global	_TRISA4
_TRISA4  equ     31892
	global	_TRISA3
_TRISA3  equ     31891
	global	_TRISA2
_TRISA2  equ     31890
	global	_TRISA1
_TRISA1  equ     31889
	global	_TRISA0
_TRISA0  equ     31888
	global	_T1CEN
_T1CEN  equ     31864
	global	_T1PSC0
_T1PSC0  equ     31865
	global	_T1PSC1
_T1PSC1  equ     31866
	global	_T1PSC2
_T1PSC2  equ     31867
	global	_T1CKS0
_T1CKS0  equ     31868
	global	_T1CKS1
_T1CKS1  equ     31869
	global	_T1IE
_T1IE  equ     31870
	global	_T1IF
_T1IF  equ     31871
	global	_LATF0
_LATF0  equ     31856
	global	_LATF1
_LATF1  equ     31857
	global	_LATF2
_LATF2  equ     31858
	global	_LATF3
_LATF3  equ     31859
	global	_LATF4
_LATF4  equ     31860
	global	_LATF5
_LATF5  equ     31861
	global	_LATE0
_LATE0  equ     31848
	global	_LATE1
_LATE1  equ     31849
	global	_LATE2
_LATE2  equ     31850
	global	_LATE3
_LATE3  equ     31851
	global	_LATE4
_LATE4  equ     31852
	global	_LATE5
_LATE5  equ     31853
	global	_LATE6
_LATE6  equ     31854
	global	_LATE7
_LATE7  equ     31855
	global	_LATD0
_LATD0  equ     31840
	global	_LATD1
_LATD1  equ     31841
	global	_LATD2
_LATD2  equ     31842
	global	_LATD3
_LATD3  equ     31843
	global	_LATD4
_LATD4  equ     31844
	global	_LATD5
_LATD5  equ     31845
	global	_LATD6
_LATD6  equ     31846
	global	_LATD7
_LATD7  equ     31847
	global	_LATC0
_LATC0  equ     31832
	global	_LATC1
_LATC1  equ     31833
	global	_LATC2
_LATC2  equ     31834
	global	_LATC3
_LATC3  equ     31835
	global	_LATC4
_LATC4  equ     31836
	global	_LATC5
_LATC5  equ     31837
	global	_LATC6
_LATC6  equ     31838
	global	_LATC7
_LATC7  equ     31839
	global	_LATB0
_LATB0  equ     31824
	global	_LATB1
_LATB1  equ     31825
	global	_LATB2
_LATB2  equ     31826
	global	_LATB3
_LATB3  equ     31827
	global	_LATB4
_LATB4  equ     31828
	global	_LATB5
_LATB5  equ     31829
	global	_LATB6
_LATB6  equ     31830
	global	_LATB7
_LATB7  equ     31831
	global	_LATA0
_LATA0  equ     31816
	global	_LATA1
_LATA1  equ     31817
	global	_LATA2
_LATA2  equ     31818
	global	_LATA3
_LATA3  equ     31819
	global	_LATA4
_LATA4  equ     31820
	global	_LATA5
_LATA5  equ     31821
	global	_LATA6
_LATA6  equ     31822
	global	_LATA7
_LATA7  equ     31823
	global	_T0CEN
_T0CEN  equ     31792
	global	_T0PSC0
_T0PSC0  equ     31793
	global	_T0PSC1
_T0PSC1  equ     31794
	global	_T0PSC2
_T0PSC2  equ     31795
	global	_T0CKS0
_T0CKS0  equ     31796
	global	_T0CKS1
_T0CKS1  equ     31797
	global	_PF5
_PF5  equ     31789
	global	_PF4
_PF4  equ     31788
	global	_PF3
_PF3  equ     31787
	global	_PF2
_PF2  equ     31786
	global	_PF1
_PF1  equ     31785
	global	_PF0
_PF0  equ     31784
	global	_RF5
_RF5  equ     31789
	global	_RF4
_RF4  equ     31788
	global	_RF3
_RF3  equ     31787
	global	_RF2
_RF2  equ     31786
	global	_RF1
_RF1  equ     31785
	global	_RF0
_RF0  equ     31784
	global	_PE7
_PE7  equ     31783
	global	_PE6
_PE6  equ     31782
	global	_PE5
_PE5  equ     31781
	global	_PE4
_PE4  equ     31780
	global	_PE3
_PE3  equ     31779
	global	_PE2
_PE2  equ     31778
	global	_PE1
_PE1  equ     31777
	global	_PE0
_PE0  equ     31776
	global	_RE7
_RE7  equ     31783
	global	_RE6
_RE6  equ     31782
	global	_RE5
_RE5  equ     31781
	global	_RE4
_RE4  equ     31780
	global	_RE3
_RE3  equ     31779
	global	_RE2
_RE2  equ     31778
	global	_RE1
_RE1  equ     31777
	global	_RE0
_RE0  equ     31776
	global	_PD7
_PD7  equ     31775
	global	_PD6
_PD6  equ     31774
	global	_PD5
	global	_PD5
_PD5  equ     31773
	global	_PD4
	global	_PD4
_PD4  equ     31772
	global	_PD3
_PD3  equ     31771
	global	_PD2
_PD2  equ     31770
	global	_PD1
_PD1  equ     31769
	global	_PD0
_PD0  equ     31768
	global	_RD7
_RD7  equ     31775
	global	_RD6
_RD6  equ     31774
	global	_RD5
_RD5  equ     31773
	global	_RD4
_RD4  equ     31772
	global	_RD3
_RD3  equ     31771
	global	_RD2
_RD2  equ     31770
	global	_RD1
_RD1  equ     31769
	global	_RD0
_RD0  equ     31768
	global	_PC7
_PC7  equ     31767
	global	_PC6
	global	_PC6
_PC6  equ     31766
	global	_PC5
_PC5  equ     31765
	global	_PC4
_PC4  equ     31764
	global	_PC3
_PC3  equ     31763
	global	_PC2
_PC2  equ     31762
	global	_PC1
_PC1  equ     31761
	global	_PC0
_PC0  equ     31760
	global	_RC7
_RC7  equ     31767
	global	_RC6
_RC6  equ     31766
	global	_RC5
_RC5  equ     31765
	global	_RC4
_RC4  equ     31764
	global	_RC3
_RC3  equ     31763
	global	_RC2
_RC2  equ     31762
	global	_RC1
_RC1  equ     31761
	global	_RC0
_RC0  equ     31760
	global	_PB7
_PB7  equ     31759
	global	_PB6
_PB6  equ     31758
	global	_PB5
_PB5  equ     31757
	global	_PB4
_PB4  equ     31756
	global	_PB3
_PB3  equ     31755
	global	_PB2
_PB2  equ     31754
	global	_PB1
	global	_PB1
_PB1  equ     31753
	global	_PB0
	global	_PB0
_PB0  equ     31752
	global	_RB7
_RB7  equ     31759
	global	_RB6
_RB6  equ     31758
	global	_RB5
_RB5  equ     31757
	global	_RB4
_RB4  equ     31756
	global	_RB3
_RB3  equ     31755
	global	_RB2
_RB2  equ     31754
	global	_RB1
_RB1  equ     31753
	global	_RB0
_RB0  equ     31752
	global	_PA7
_PA7  equ     31751
	global	_PA6
_PA6  equ     31750
	global	_PA5
_PA5  equ     31749
	global	_PA4
_PA4  equ     31748
	global	_PA3
_PA3  equ     31747
	global	_PA2
_PA2  equ     31746
	global	_PA1
_PA1  equ     31745
	global	_PA0
_PA0  equ     31744
	global	_RA7
_RA7  equ     31751
	global	_RA6
_RA6  equ     31750
	global	_RA5
_RA5  equ     31749
	global	_RA4
_RA4  equ     31748
	global	_RA3
_RA3  equ     31747
	global	_RA2
_RA2  equ     31746
	global	_RA1
_RA1  equ     31745
	global	_RA0
_RA0  equ     31744
	global	_T2CEN
	global	_T2CEN
_T2CEN  equ     31720
	global	_T2PSC0
_T2PSC0  equ     31721
	global	_T2PSC1
_T2PSC1  equ     31722
	global	_T2PSC2
_T2PSC2  equ     31723
	global	_T2CKS0
_T2CKS0  equ     31724
	global	_T2CKS1
_T2CKS1  equ     31725
	global	_T2IE
_T2IE  equ     31726
	global	_T2IF
	global	_T2IF
_T2IF  equ     31727
	global	_TKCAPEN
	global	_TKCAPEN
_TKCAPEN  equ     31712
	global	_TKMODE0
_TKMODE0  equ     31713
	global	_TKMODE1
_TKMODE1  equ     31714
	global	_TKMODE2
_TKMODE2  equ     31715
	global	_TKHWMOD
_TKHWMOD  equ     31716
	global	_TKIOMOD
_TKIOMOD  equ     31717
	global	_TKPDRVE
_TKPDRVE  equ     31718
	global	_TKNDRVE
_TKNDRVE  equ     31719
	global	_UR1TXEF
_UR1TXEF  equ     31656
	global	_UR1RXNEF
_UR1RXNEF  equ     31657
	global	_UR1FEF
_UR1FEF  equ     31658
	global	_UR1RXFUL
_UR1RXFUL  equ     31659
	global	_UR1PEF
_UR1PEF  equ     31660
	global	_UR1OVF
_UR1OVF  equ     31661
	global	_UR1TXBSY
_UR1TXBSY  equ     31662
	global	_UR1TXEIE
_UR1TXEIE  equ     31640
	global	_UR1RXNEIE
_UR1RXNEIE  equ     31641
	global	_UR1ERRIE
_UR1ERRIE  equ     31642
	global	_UR1BDM
_UR1BDM  equ     31643
	global	_UR1BRRH0
_UR1BRRH0  equ     31644
	global	_UR1BRRH1
_UR1BRRH1  equ     31645
	global	_UR1BRRH2
_UR1BRRH2  equ     31646
	global	_UR1BRRH3
_UR1BRRH3  equ     31647
	global	_UR1EN
_UR1EN  equ     31632
	global	_UR1TXEN
_UR1TXEN  equ     31633
	global	_UR1RXEN
_UR1RXEN  equ     31634
	global	_UR1PCEN
_UR1PCEN  equ     31635
	global	_UR1EVEN
_UR1EVEN  equ     31636
	global	_UR1MODE
_UR1MODE  equ     31637
	global	_UR1STOP
_UR1STOP  equ     31638
	global	_UR1HDSEL
_UR1HDSEL  equ     31639
	global	_I2CTXEF
_I2CTXEF  equ     31608
	global	_I2CRXNEF
_I2CRXNEF  equ     31609
	global	_BUSE
_BUSE  equ     31610
	global	_DIRF
_DIRF  equ     31610
	global	_I2CBUSY
_I2CBUSY  equ     31611
	global	_NACKF
_NACKF  equ     31612
	global	_ADR1F
_ADR1F  equ     31613
	global	_STOPF
_STOPF  equ     31614
	global	_STRETCH
_STRETCH  equ     31615
	global	_I2CIE
_I2CIE  equ     31576
	global	_ADR1FM
_ADR1FM  equ     31577
	global	_DUTY
_DUTY  equ     31580
	global	_NACK
_NACK  equ     31581
	global	_I2CADR1H0
_I2CADR1H0  equ     31582
	global	_I2CADR1H1
_I2CADR1H1  equ     31583
	global	_I2CEN
_I2CEN  equ     31568
	global	_MASTER
_MASTER  equ     31569
	global	_START
_START  equ     31570
	global	_WRN
_WRN  equ     31571
	global	_STOP
_STOP  equ     31572
	global	_ADDRM
_ADDRM  equ     31573
	global	_DADRM
_DADRM  equ     31574
	global	_STRET
_STRET  equ     31575
	global	_I2CADR2L0
_I2CADR2L0  equ     31560
	global	_I2CADR2L1
_I2CADR2L1  equ     31561
	global	_I2CADR2L2
_I2CADR2L2  equ     31562
	global	_I2CADR2L3
_I2CADR2L3  equ     31563
	global	_I2CADR2L4
_I2CADR2L4  equ     31564
	global	_I2CADR2L5
_I2CADR2L5  equ     31565
	global	_I2CADR2L6
_I2CADR2L6  equ     31566
	global	_ADR2F
_ADR2F  equ     31567
	global	_CRCERR
_CRCERR  equ     31552
	global	_WKF
_WKF  equ     31553
	global	_TXBMT
_TXBMT  equ     31554
	global	_RXOVRN
_RXOVRN  equ     31556
	global	_MODF
_MODF  equ     31557
	global	_WCOL
_WCOL  equ     31558
	global	_SPIF
_SPIF  equ     31559
	global	_LSBFIRST
_LSBFIRST  equ     31544
	global	_CRCEN
_CRCEN  equ     31545
	global	_CRCNXT
_CRCNXT  equ     31546
	global	_SSM
_SSM  equ     31547
	global	_SSI
_SSI  equ     31548
	global	_RXONLY
_RXONLY  equ     31549
	global	_BDOE
_BDOE  equ     31550
	global	_BDM
_BDM  equ     31551
	global	_RXBMT
_RXBMT  equ     31504
	global	_SRMT
_SRMT  equ     31505
	global	_NSSVAL
_NSSVAL  equ     31506
	global	_SLAS
_SLAS  equ     31507
	global	_CPOL
_CPOL  equ     31508
	global	_CPHA
_CPHA  equ     31509
	global	_MSTEN
_MSTEN  equ     31510
	global	_SPIBUSY
_SPIBUSY  equ     31511
	global	_SPIEN
_SPIEN  equ     31496
	global	_NSSM0
_NSSM0  equ     31498
	global	_NSSM1
_NSSM1  equ     31499
	global	_TXE
_TXE  equ     31500
	global	_RXNE
_RXNE  equ     31501
	global	_RXERR
_RXERR  equ     31502
	global	_WAKUP
_WAKUP  equ     31503
	global	_EPSEL6_0
_EPSEL6_0  equ     31440
	global	_EPSEL6_1
_EPSEL6_1  equ     31441
	global	_EPSEL6_2
_EPSEL6_2  equ     31442
	global	_EPSEL7_0
_EPSEL7_0  equ     31443
	global	_EPSEL7_1
_EPSEL7_1  equ     31444
	global	_EPSEL7_2
_EPSEL7_2  equ     31445
	global	_EPSEL4_0
_EPSEL4_0  equ     31432
	global	_EPSEL4_1
_EPSEL4_1  equ     31433
	global	_EPSEL4_2
_EPSEL4_2  equ     31434
	global	_EPSEL5_0
_EPSEL5_0  equ     31435
	global	_EPSEL5_1
_EPSEL5_1  equ     31436
	global	_EPSEL5_2
_EPSEL5_2  equ     31437
	global	_EPSEL2_0
_EPSEL2_0  equ     31424
	global	_EPSEL2_1
_EPSEL2_1  equ     31425
	global	_EPSEL2_2
_EPSEL2_2  equ     31426
	global	_EPSEL3_0
_EPSEL3_0  equ     31427
	global	_EPSEL3_1
_EPSEL3_1  equ     31428
	global	_EPSEL3_2
_EPSEL3_2  equ     31429
	global	_EPSEL0_0
_EPSEL0_0  equ     31416
	global	_EPSEL0_1
_EPSEL0_1  equ     31417
	global	_EPSEL0_2
_EPSEL0_2  equ     31418
	global	_EPSEL1_0
_EPSEL1_0  equ     31419
	global	_EPSEL1_1
_EPSEL1_1  equ     31420
	global	_EPSEL1_2
_EPSEL1_2  equ     31421
	global	_T3CMPA
_T3CMPA  equ     31408
	global	_T3CMPB
_T3CMPB  equ     31409
	global	_T3CMPC
_T3CMPC  equ     31410
	global	_T3CMPD
_T3CMPD  equ     31411
	global	_T3CMPE
_T3CMPE  equ     31412
	global	_T3CAP0
_T3CAP0  equ     31413
	global	_T3CAP1
_T3CAP1  equ     31414
	global	_T6CH0NA
_T6CH0NA  equ     31400
	global	_T6CH0NB
_T6CH0NB  equ     31401
	global	_T6CH0NC
_T6CH0NC  equ     31402
	global	_T6CH0ND
_T6CH0ND  equ     31403
	global	_T6CH0NE
_T6CH0NE  equ     31404
	global	_T0CKI
_T0CKI  equ     31405
	global	_T1CKI
_T1CKI  equ     31406
	global	_T4CH3A
_T4CH3A  equ     31392
	global	_T4CH3B
_T4CH3B  equ     31393
	global	_T4CH3C
_T4CH3C  equ     31394
	global	_T4CH3D
_T4CH3D  equ     31395
	global	_T4CH3E
_T4CH3E  equ     31396
	global	_T4BKIN
_T4BKIN  equ     31397
	global	_T5BKIN
_T5BKIN  equ     31398
	global	_T6BKIN
_T6BKIN  equ     31399
	global	_T6CH0F
_T6CH0F  equ     31384
	global	_T6CH0G
_T6CH0G  equ     31385
	global	_T6CH0H
_T6CH0H  equ     31386
	global	_T6CH0I
_T6CH0I  equ     31387
	global	_T6CH0J
_T6CH0J  equ     31388
	global	_T4CH2A
_T4CH2A  equ     31376
	global	_T4CH2B
_T4CH2B  equ     31377
	global	_T4CH2C
_T4CH2C  equ     31378
	global	_T4CH2D
_T4CH2D  equ     31379
	global	_T4CH2E
_T4CH2E  equ     31380
	global	_T4CH0NA
_T4CH0NA  equ     31368
	global	_T4CH0NB
_T4CH0NB  equ     31369
	global	_T4CH0NC
_T4CH0NC  equ     31370
	global	_T4CH0ND
_T4CH0ND  equ     31371
	global	_REM0
_REM0  equ     31372
	global	_REM1
_REM1  equ     31373
	global	_REM2
_REM2  equ     31374
	global	_REM3
_REM3  equ     31375
	global	_T4CH0A
_T4CH0A  equ     31360
	global	_T4CH0B
_T4CH0B  equ     31361
	global	_T4CH0C
_T4CH0C  equ     31362
	global	_T4CH0D
_T4CH0D  equ     31363
	global	_T4CH1A
_T4CH1A  equ     31364
	global	_T4CH1B
_T4CH1B  equ     31365
	global	_T4CH1C
_T4CH1C  equ     31366
	global	_T4CH1D
_T4CH1D  equ     31367
	global	_T6CH0A
_T6CH0A  equ     31352
	global	_T6CH0B
_T6CH0B  equ     31353
	global	_T6CH0C
_T6CH0C  equ     31354
	global	_T6CH0D
_T6CH0D  equ     31355
	global	_T6CH0E
_T6CH0E  equ     31356
	global	_T5CH0NA
_T5CH0NA  equ     31344
	global	_T5CH0NB
_T5CH0NB  equ     31345
	global	_T5CH0NC
_T5CH0NC  equ     31346
	global	_T5CH0ND
_T5CH0ND  equ     31347
	global	_T5CH0NE
_T5CH0NE  equ     31348
	global	_ADETR0
_ADETR0  equ     31336
	global	_ADETR1
_ADETR1  equ     31337
	global	_ADETR2
_ADETR2  equ     31338
	global	_T5CH0A
_T5CH0A  equ     31339
	global	_T5CH0B
_T5CH0B  equ     31340
	global	_T5CH0C
_T5CH0C  equ     31341
	global	_T5CH0D
_T5CH0D  equ     31342
	global	_T5CH0E
_T5CH0E  equ     31343
	global	_RX3PO0
_RX3PO0  equ     31328
	global	_RX3PO1
_RX3PO1  equ     31329
	global	_RX3PO2
_RX3PO2  equ     31330
	global	_TX3PO0
_TX3PO0  equ     31331
	global	_TX3PO1
_TX3PO1  equ     31332
	global	_TX3PO2
_TX3PO2  equ     31333
	global	_RX2PO0
_RX2PO0  equ     31320
	global	_RX2PO1
_RX2PO1  equ     31321
	global	_RX2PO2
_RX2PO2  equ     31322
	global	_TX2PO0
_TX2PO0  equ     31323
	global	_TX2PO1
_TX2PO1  equ     31324
	global	_TX2PO2
_TX2PO2  equ     31325
	global	_RX1PO0
_RX1PO0  equ     31312
	global	_RX1PO1
_RX1PO1  equ     31313
	global	_TX1PO0
_TX1PO0  equ     31314
	global	_TX1PO1
_TX1PO1  equ     31315
	global	_SCLKPO0
_SCLKPO0  equ     31316
	global	_SCLKPO1
_SCLKPO1  equ     31317
	global	_NSSPO0
_NSSPO0  equ     31318
	global	_NSSPO1
_NSSPO1  equ     31319
	global	_SDAPO0
_SDAPO0  equ     31304
	global	_SDAPO1
_SDAPO1  equ     31305
	global	_SCLPO0
_SCLPO0  equ     31306
	global	_SCLPO1
_SCLPO1  equ     31307
	global	_SCLPO2
_SCLPO2  equ     31308
	global	_CM0O0
_CM0O0  equ     31309
	global	_CM0O1
_CM0O1  equ     31310
	global	_CM1O
_CM1O  equ     31311
	global	_MOSIPO0
_MOSIPO0  equ     31296
	global	_MOSIPO1
_MOSIPO1  equ     31297
	global	_MISOPO0
_MISOPO0  equ     31298
	global	_MISOPO1
_MISOPO1  equ     31299
	global	_MISOPO2
_MISOPO2  equ     31300
	global	_CLKO0
_CLKO0  equ     31301
	global	_CLKO1
_CLKO1  equ     31302
	global	_MDBUSY
	global	_MDBUSY
_MDBUSY  equ     31168
	global	_MDMOD
_MDMOD  equ     31169
	global	_DIVERR
	global	_DIVERR
_DIVERR  equ     31170
	global	_MULOV
_MULOV  equ     31171
	global	_STRTYP0
_STRTYP0  equ     31096
	global	_STRTYP1
_STRTYP1  equ     31097
	global	_CMAUSTR
_CMAUSTR  equ     31098
	global	_LVDM0
_LVDM0  equ     31099
	global	_LVDM1
_LVDM1  equ     31100
	global	_LVDP
_LVDP  equ     31101
	global	_LVDHYSEN
_LVDHYSEN  equ     31102
	global	_LVRHYSEN
_LVRHYSEN  equ     31103
	global	_LVDL0
_LVDL0  equ     31088
	global	_LVDL1
_LVDL1  equ     31089
	global	_LVDL2
_LVDL2  equ     31090
	global	_LVDL3
_LVDL3  equ     31091
	global	_LVDEN
	global	_LVDEN
_LVDEN  equ     31092
	global	_LVDDEB
_LVDDEB  equ     31093
	global	_LVDCKS0
_LVDCKS0  equ     31094
	global	_LVDCKS1
_LVDCKS1  equ     31095
	global	_nMCLRF
_nMCLRF  equ     31080
	global	_nIERRF
_nIERRF  equ     31081
	global	_nEMCF
_nEMCF  equ     31082
	global	_LVDW
_LVDW  equ     31083
	global	_LVDRS0
_LVDRS0  equ     31084
	global	_LVDRS1
_LVDRS1  equ     31085
	global	_LVDRS2
_LVDRS2  equ     31086
	global	_PBHOLD
_PBHOLD  equ     31087
	global	_CCOEN
_CCOEN  equ     31072
	global	_CCOSEL0
_CCOSEL0  equ     31073
	global	_CCOSEL1
_CCOSEL1  equ     31074
	global	_CCOSEL2
_CCOSEL2  equ     31075
	global	_DTYSEL0
_DTYSEL0  equ     31076
	global	_DTYSEL1
_DTYSEL1  equ     31077
	global	_T0IOMOD
_T0IOMOD  equ     31078
	global	_T1IOMOD
_T1IOMOD  equ     31079
	global	_LFMOD
_LFMOD  equ     31064
	global	_PLPEN
_PLPEN  equ     31065
	global	_PXTEN
_PXTEN  equ     31066
	global	_PLSIEN
_PLSIEN  equ     31067
	global	_PHSIEN
_PHSIEN  equ     31068
	global	_IDLEN
_IDLEN  equ     31069
	global	_HIRCM
_HIRCM  equ     31070
	global	_LPPM
_LPPM  equ     31071
	global	_ANACKEN
	global	_ANACKEN
_ANACKEN  equ     31056
	global	_LEBCKEN
_LEBCKEN  equ     31057
	global	_DMCKEN
_DMCKEN  equ     31058
	global	_MDCKEN
	global	_MDCKEN
_MDCKEN  equ     31059
	global	_IOCKEN
	global	_IOCKEN
_IOCKEN  equ     31048
	global	_LCDCKEN
_LCDCKEN  equ     31049
	global	_ADCCKEN
_ADCCKEN  equ     31050
	global	_SPICKEN
_SPICKEN  equ     31051
	global	_I2CCKEN
_I2CCKEN  equ     31052
	global	_UR1CKEN
_UR1CKEN  equ     31053
	global	_UR2CKEN
_UR2CKEN  equ     31054
	global	_UR3CKEN
_UR3CKEN  equ     31055
	global	_T0CKEN
_T0CKEN  equ     31040
	global	_T1CKEN
_T1CKEN  equ     31041
	global	_T2CKEN
	global	_T2CKEN
_T2CKEN  equ     31042
	global	_T3CKEN
_T3CKEN  equ     31043
	global	_T4CKEN
_T4CKEN  equ     31044
	global	_T5CKEN
_T5CKEN  equ     31045
	global	_T6CKEN
_T6CKEN  equ     31046
	global	_TKCKEN
	global	_TKCKEN
_TKCKEN  equ     31047
	global	_SCS
_SCS  equ     31032
	global	_LTS
_LTS  equ     31033
	global	_HTS
_HTS  equ     31034
	global	_OSTS
_OSTS  equ     31035
	global	_IRCF0
_IRCF0  equ     31036
	global	_IRCF1
_IRCF1  equ     31037
	global	_IRCF2
_IRCF2  equ     31038
	global	_IRCF3
_IRCF3  equ     31039
	global	_CM1NSEL0
_CM1NSEL0  equ     31008
	global	_CM1NSEL1
_CM1NSEL1  equ     31009
	global	_CM1PSEL0
_CM1PSEL0  equ     31010
	global	_CM1PSEL1
_CM1PSEL1  equ     31011
	global	_CM1PSEL2
_CM1PSEL2  equ     31012
	global	_CM1OE
_CM1OE  equ     31013
	global	_CM1POL
_CM1POL  equ     31014
	global	_CM1EN
_CM1EN  equ     31015
	global	_CM0NSEL0
_CM0NSEL0  equ     31000
	global	_CM0NSEL1
_CM0NSEL1  equ     31001
	global	_CM0PSEL0
_CM0PSEL0  equ     31002
	global	_CM0PSEL1
_CM0PSEL1  equ     31003
	global	_CM0PSEL2
_CM0PSEL2  equ     31004
	global	_CM0OE
_CM0OE  equ     31005
	global	_CM0POL
_CM0POL  equ     31006
	global	_CM0EN
_CM0EN  equ     31007
	global	_DACVREF0
_DACVREF0  equ     30992
	global	_DACVREF1
_DACVREF1  equ     30993
	global	_DACEN
_DACEN  equ     30994
	global	_WNDEN
_WNDEN  equ     30995
	global	_DEBPR0
_DEBPR0  equ     30997
	global	_DEBPR1
_DEBPR1  equ     30998
	global	_CMDEBS
_CMDEBS  equ     30999
	global	_DAC2DAT0
_DAC2DAT0  equ     30984
	global	_DAC2DAT1
_DAC2DAT1  equ     30985
	global	_DAC2DAT2
_DAC2DAT2  equ     30986
	global	_DAC2DAT3
_DAC2DAT3  equ     30987
	global	_DAC2DAT4
_DAC2DAT4  equ     30988
	global	_DAC2DAT5
_DAC2DAT5  equ     30989
	global	_DAC2DAT6
_DAC2DAT6  equ     30990
	global	_C1OUT
_C1OUT  equ     30991
	global	_DAC1DAT0
_DAC1DAT0  equ     30976
	global	_DAC1DAT1
_DAC1DAT1  equ     30977
	global	_DAC1DAT2
_DAC1DAT2  equ     30978
	global	_DAC1DAT3
_DAC1DAT3  equ     30979
	global	_DAC1DAT4
_DAC1DAT4  equ     30980
	global	_DAC1DAT5
_DAC1DAT5  equ     30981
	global	_DAC1DAT6
_DAC1DAT6  equ     30982
	global	_C0OUT
_C0OUT  equ     30983
	global	_OPTOIO
_OPTOIO  equ     30968
	global	_OPTODIG
_OPTODIG  equ     30969
	global	_OPCMPE
_OPCMPE  equ     30971
	global	_IPINSW
_IPINSW  equ     30972
	global	_OPINSW
_OPINSW  equ     30973
	global	_IPIPSW
_IPIPSW  equ     30974
	global	_OP0ON
_OP0ON  equ     30960
	global	_OP0FR0
_OP0FR0  equ     30961
	global	_OP0FR1
_OP0FR1  equ     30962
	global	_OP0FR2
_OP0FR2  equ     30963
	global	_OP0NSEL0
_OP0NSEL0  equ     30964
	global	_OP0NSEL1
_OP0NSEL1  equ     30965
	global	_OP0PSEL
_OP0PSEL  equ     30966
	global	_OP0OUT
_OP0OUT  equ     30967
	global	_LEBMSK0
_LEBMSK0  equ     30952
	global	_LEBMSK1
_LEBMSK1  equ     30953
	global	_LEBMSK2
_LEBMSK2  equ     30954
	global	_LEBMSK3
_LEBMSK3  equ     30955
	global	_LEBMSK4
_LEBMSK4  equ     30956
	global	_LEBMSK5
_LEBMSK5  equ     30957
	global	_LEBMSK6
_LEBMSK6  equ     30958
	global	_LEBEDGS0
_LEBEDGS0  equ     30944
	global	_LEBEDGS1
_LEBEDGS1  equ     30945
	global	_LEBTIM8
_LEBTIM8  equ     30947
	global	_LEBCH0
_LEBCH0  equ     30948
	global	_LEBCH1
_LEBCH1  equ     30949
	global	_LEBCH2
_LEBCH2  equ     30950
	global	_LEBEN
_LEBEN  equ     30951
	global	_ADCHOP0
_ADCHOP0  equ     30904
	global	_ADCHOP1
_ADCHOP1  equ     30905
	global	_ADCHOP2
_ADCHOP2  equ     30906
	global	_ADCHOP3
_ADCHOP3  equ     30907
	global	_ADSPEED
_ADSPEED  equ     30910
	global	_ADFM
_ADFM  equ     30911
	global	_ADTRGS0
_ADTRGS0  equ     30896
	global	_ADTRGS1
_ADTRGS1  equ     30897
	global	_ADTRGS2
_ADTRGS2  equ     30898
	global	_ADTRGS3
_ADTRGS3  equ     30899
	global	_ADTRGT0
_ADTRGT0  equ     30900
	global	_ADTRGT1
_ADTRGT1  equ     30901
	global	_ADDLY8
_ADDLY8  equ     30903
	global	_ADPREF0
_ADPREF0  equ     30888
	global	_ADPREF1
_ADPREF1  equ     30889
	global	_ADNREF0
_ADNREF0  equ     30890
	global	_ADNREF1
_ADNREF1  equ     30891
	global	_ADVREFS0
_ADVREFS0  equ     30892
	global	_ADVREFS1
_ADVREFS1  equ     30893
	global	_ADVREFEN
_ADVREFEN  equ     30895
	global	_ADON
_ADON  equ     30880
	global	_ADGO
_ADGO  equ     30881
	global	_ADCHS0
_ADCHS0  equ     30882
	global	_ADCHS1
_ADCHS1  equ     30883
	global	_ADCHS2
_ADCHS2  equ     30884
	global	_ADCHS3
_ADCHS3  equ     30885
	global	_ADCHS4
_ADCHS4  equ     30886
	global	_ADCHS5
_ADCHS5  equ     30887
	global	_ADCMPEN
_ADCMPEN  equ     30840
	global	_ADCMPFM
_ADCMPFM  equ     30841
	global	_ADCMPOP
_ADCMPOP  equ     30842
	global	_ADCMPO
_ADCMPO  equ     30843
	global	_ADCMP0
_ADCMP0  equ     30844
	global	_ADCMP1
_ADCMP1  equ     30845
	global	_ADCMP2
_ADCMP2  equ     30846
	global	_ADCMP3
_ADCMP3  equ     30847
	global	_ADCKDIV0
_ADCKDIV0  equ     30832
	global	_ADCKDIV1
_ADCKDIV1  equ     30833
	global	_ADCKDIV2
_ADCKDIV2  equ     30834
	global	_ADCKDIV3
_ADCKDIV3  equ     30835
	global	_ADCKDIV4
_ADCKDIV4  equ     30836
	global	_ADCKDIV5
_ADCKDIV5  equ     30837
	global	_ADCS0
_ADCS0  equ     30838
	global	_ADCS1
_ADCS1  equ     30839
	global	_WDTCKS0
_WDTCKS0  equ     30824
	global	_WDTCKS1
_WDTCKS1  equ     30825
	global	_WDTLPM
_WDTLPM  equ     30826
	global	_LPRDY
_LPRDY  equ     30827
	global	_SWDTEN
_SWDTEN  equ     30816
	global	_WDTPS0
_WDTPS0  equ     30817
	global	_WDTPS1
_WDTPS1  equ     30818
	global	_WDTPS2
_WDTPS2  equ     30819
	global	_WDTPS3
_WDTPS3  equ     30820
	global	_WDTPRE0
_WDTPRE0  equ     30821
	global	_WDTPRE1
_WDTPRE1  equ     30822
	global	_WDTPRE2
_WDTPRE2  equ     30823
	global	_UR3TXEF
_UR3TXEF  equ     30808
	global	_UR3RXNEF
_UR3RXNEF  equ     30809
	global	_UR3FEF
_UR3FEF  equ     30810
	global	_UR3RXFUL
_UR3RXFUL  equ     30811
	global	_UR3PEF
_UR3PEF  equ     30812
	global	_UR3OVF
_UR3OVF  equ     30813
	global	_UR3TXBSY
_UR3TXBSY  equ     30814
	global	_UR3TXEIE
_UR3TXEIE  equ     30792
	global	_UR3RXNEIE
_UR3RXNEIE  equ     30793
	global	_UR3ERRIE
_UR3ERRIE  equ     30794
	global	_UR3BDM
_UR3BDM  equ     30795
	global	_UR3BRRH0
_UR3BRRH0  equ     30796
	global	_UR3BRRH1
_UR3BRRH1  equ     30797
	global	_UR3BRRH2
_UR3BRRH2  equ     30798
	global	_UR3BRRH3
_UR3BRRH3  equ     30799
	global	_UR3EN
_UR3EN  equ     30784
	global	_UR3TXEN
_UR3TXEN  equ     30785
	global	_UR3RXEN
_UR3RXEN  equ     30786
	global	_UR3PCEN
_UR3PCEN  equ     30787
	global	_UR3EVEN
_UR3EVEN  equ     30788
	global	_UR3MODE
_UR3MODE  equ     30789
	global	_UR3STOP
_UR3STOP  equ     30790
	global	_UR3HDSEL
_UR3HDSEL  equ     30791
	global	_UR2TXEF
	global	_UR2TXEF
_UR2TXEF  equ     30760
	global	_UR2RXNEF
	global	_UR2RXNEF
_UR2RXNEF  equ     30761
	global	_UR2FEF
_UR2FEF  equ     30762
	global	_UR2RXFUL
_UR2RXFUL  equ     30763
	global	_UR2PEF
_UR2PEF  equ     30764
	global	_UR2OVF
_UR2OVF  equ     30765
	global	_UR2TXBSY
_UR2TXBSY  equ     30766
	global	_UR2TXEIE
_UR2TXEIE  equ     30744
	global	_UR2RXNEIE
	global	_UR2RXNEIE
_UR2RXNEIE  equ     30745
	global	_UR2ERRIE
_UR2ERRIE  equ     30746
	global	_UR2BDM
_UR2BDM  equ     30747
	global	_UR2BRRH0
_UR2BRRH0  equ     30748
	global	_UR2BRRH1
_UR2BRRH1  equ     30749
	global	_UR2BRRH2
_UR2BRRH2  equ     30750
	global	_UR2BRRH3
_UR2BRRH3  equ     30751
	global	_UR2EN
_UR2EN  equ     30736
	global	_UR2TXEN
_UR2TXEN  equ     30737
	global	_UR2RXEN
_UR2RXEN  equ     30738
	global	_UR2PCEN
_UR2PCEN  equ     30739
	global	_UR2EVEN
_UR2EVEN  equ     30740
	global	_UR2MODE
_UR2MODE  equ     30741
	global	_UR2STOP
_UR2STOP  equ     30742
	global	_UR2HDSEL
_UR2HDSEL  equ     30743
	
STR_8:; BSR set to: 1

	db	48	;'0'
	db	49	;'1'
	db	50	;'2'
	db	51	;'3'
	db	52	;'4'
	db	53	;'5'
	db	54	;'6'
	db	55	;'7'
	db	56	;'8'
	db	57	;'9'
	db	65	;'A'
	db	66	;'B'
	db	67	;'C'
	db	68	;'D'
	db	69	;'E'
	db	70	;'F'
	db	0
	
STR_2:; BSR set to: 1

	db	82	;'R'
	db	117	;'u'
	db	110	;'n'
	db	110	;'n'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	13
	db	10
	db	0
	
STR_1:; BSR set to: 1

	db	115	;'s'
	db	116	;'t'
	db	97	;'a'
	db	114	;'r'
	db	116	;'t'
	db	13
	db	10
	db	0
	
STR_5:; BSR set to: 1

	db	66	;'B'
	db	48	;'0'
	db	52	;'4'
	db	70	;'F'
	db	0
	
STR_4:; BSR set to: 1

	db	65	;'A'
	db	48	;'0'
	db	53	;'5'
	db	70	;'F'
	db	0
	
STR_7:; BSR set to: 1

	db	53	;'5'
	db	48	;'0'
	db	65	;'A'
	db	70	;'F'
	db	0
	
STR_6:; BSR set to: 1

	db	49	;'1'
	db	48	;'0'
	db	69	;'E'
	db	70	;'F'
	db	0
	
STR_3:; BSR set to: 1

	db	37
	db	88	;'X'
	db	0
; #config settings
	file	"touchlib_6017.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMRAM,class=COMRAM,bit,space=1,noexec
global __pbitbssCOMRAM
__pbitbssCOMRAM:
	global	_bTestScanSetFlag
_bTestScanSetFlag:
       ds      1
	global	_TX_Flag
_TX_Flag:
       ds      1
	global	_bTestSleepFlag
_bTestSleepFlag:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_uiRX_t
_uiRX_t:
       ds      2
	global	_ucTempIndex
_ucTempIndex:
       ds      1
	global	_ucTempCount
_ucTempCount:
       ds      1
	global	_ucSweepKeyNum
_ucSweepKeyNum:
       ds      1
_ResultDataL:
       ds      1
	global	_touch_key
_touch_key:
       ds      1
_currentMode:
       ds      1
	global	_cnt
_cnt:
       ds      1
	global	_ucPackNum
_ucPackNum:
       ds      1
	global	_ucKeyMapNumber
_ucKeyMapNumber:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_RunData
_RunData:
       ds      70
	global	_KeyDat
_KeyDat:
       ds      11
	global	_Engineering_Pattern
_Engineering_Pattern:
       ds      8
VoiceFilterMesh@count:
       ds      2
	global	_ucKeyPollingCount
_ucKeyPollingCount:
       ds      1
	global	_strongest
_strongest:
       ds      1
	global	_DisBuf
_DisBuf:
       ds      16
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
	global	_IRData
_IRData:
       ds      29
	global	_EncoderData
_EncoderData:
       ds      14
	global	_Sav_single
_Sav_single:
       ds      8
	global	_VoiceDelay
_VoiceDelay:
       ds      7
	global	_midres
_midres:
       ds      4
	global	_uiGroupArray
_uiGroupArray:
       ds      4
	global	_ucInActiveSensorDeltaArray
_ucInActiveSensorDeltaArray:
       ds      4
	global	_ucActiveSensorDeltaArray
_ucActiveSensorDeltaArray:
       ds      4
	global	_AlarmSound
_AlarmSound:
       ds      3
	global	_mdivs
_mdivs:
       ds      2
	global	_uiTemp3
_uiTemp3:
       ds      2
	global	_uiTemp2
_uiTemp2:
       ds      2
	global	_uiTemp1
_uiTemp1:
       ds      2
_ResultData:
       ds      2
_ReferenceData:
       ds      2
	global	_uiDefaultSysclk
_uiDefaultSysclk:
       ds      2
Engineering_Flow_Compensation@j:
       ds      2
Engineering_Flow_Compensation@i:
       ds      2
Engineering_Voltage_Calibration@j:
       ds      2
Engineering_Voltage_Calibration@i:
       ds      2
Engineering_Clear_WorkTime@j:
       ds      2
Engineering_Clear_WorkTime@i:
       ds      2
Engineering_Adjust_JYTime@j:
       ds      2
Engineering_Adjust_JYTime@i:
       ds      2
control@i:
       ds      2
Display@count2:
       ds      2
ERR_Code@count4:
       ds      2
ERR_Code@count3:
       ds      2
ERR_Code@count2:
       ds      2
ERR_Code@count1:
       ds      2
TimingClosureSet@lastTiming:
       ds      2
TimingClosureSet@count:
       ds      2
	global	_Dval
	global	_Dval
_Dval:
       ds      2
Concentration_Low_Alarm@last_syssta:
       ds      2
Concentration_Low_Alarm@count:
       ds      2
SOS_Voice@count:
       ds      2
key_scan@key_:
       ds      2
BEEP_FlashCode@time:
       ds      2
BEEP_FlashCode@count:
       ds      2
BeepCtr2@i:
       ds      2
BeepCtr1@i:
       ds      2
	global	_uiTempX1
	global	_uiTempX1
_uiTempX1:
       ds      2
	global	_uiTemp
_uiTemp:
       ds      2
Time0_Interrupt@test1:
       ds      2
Time0_Interrupt@ms:
       ds      2
	global	_puiSLEEP
_puiSLEEP:
       ds      2
	global	__ucLPGapCnt
	global	__ucLPGapCnt
__ucLPGapCnt:
       ds      1
	global	__ucSendGapCnt
__ucSendGapCnt:
       ds      1
	global	_OverflowCnt
_OverflowCnt:
       ds      1
	global	_ucAll_of_XCount
_ucAll_of_XCount:
       ds      1
	global	_ucScanCount
_ucScanCount:
       ds      1
	global	_ucNine2ThreeIndex
	global	_ucNine2ThreeIndex
_ucNine2ThreeIndex:
       ds      1
	global	_ucAbnormalCount
_ucAbnormalCount:
       ds      1
	global	_ucKeyPollingOk
_ucKeyPollingOk:
       ds      1
	global	_ucLeftshiftCs_filter
	global	_ucLeftshiftCs_filter
_ucLeftshiftCs_filter:
       ds      1
	global	_ucTKeyOutStrongest
_ucTKeyOutStrongest:
       ds      1
	global	_ucCSCount
	global	_ucCSCount
_ucCSCount:
       ds      1
	global	_ucTempMaxChangeKey
_ucTempMaxChangeKey:
       ds      1
	global	_ucMaxChangeKey
_ucMaxChangeKey:
       ds      1
	global	_ucChangeValue
_ucChangeValue:
       ds      1
	global	_ucChangeValueMax2
_ucChangeValueMax2:
       ds      1
	global	_ucChangeValueMax1
_ucChangeValueMax1:
       ds      1
	global	_ucFreqChargeCount
_ucFreqChargeCount:
       ds      1
	global	_ucFreqIndex
_ucFreqIndex:
       ds      1
_ResultDataH:
       ds      1
_ReferenceDataH:
       ds      1
_ReferenceDataL:
       ds      1
	global	_ucTKFlag
_ucTKFlag:
       ds      1
	global	_RmtCnt
	global	_RmtCnt
_RmtCnt:
       ds      1
	global	_RmtSta
	global	_RmtSta
_RmtSta:
       ds      1
StartUpVoice@j:
       ds      1
VoiceDrive@key_press:
       ds      1
VoiceCtr@last:
       ds      1
	global	_receive_complete_flag
_receive_complete_flag:
       ds      1
	global	_data
_data:
       ds      1
	global	_ucMULTIPLE
_ucMULTIPLE:
       ds      1
	global	_temp
	global	_temp
_temp:
       ds      1
	global	_Sav_strongest
_Sav_strongest:
       ds      1
	global	_sUsart2
_sUsart2:
       ds      54
	global	_single
_single:
       ds      8
	global	_midres_data
_midres_data:
       ds      4
	global	_mdivs_data
_mdivs_data:
       ds      2
psect	dataBANK1,class=BANK1,space=1,noexec,lowdata
global __pdataBANK1
__pdataBANK1:
	file	"control.c"
	line	358
Display@count:
       ds      2
psect	dataBANK1
	file	"voice.c"
	line	394
StartUpVoice@i:
       ds      1
psect	bssBANK2,class=BANK2,space=1,noexec,lowdata
global __pbssBANK2
__pbssBANK2:
E2prom_ReadData@F5582:
       ds      50
E2prom_WriteData@F5578:
       ds      50
	global	_UART_TX_Buff
_UART_TX_Buff:
       ds      21
	global	_IRKeyDat
	global	_IRKeyDat
_IRKeyDat:
       ds      10
	global	_usart_rx_buff
_usart_rx_buff:
       ds      10
	global	_uiChargeDataBuffer
_uiChargeDataBuffer:
       ds      6
	global	_RmtRec
	global	_RmtRec
_RmtRec:
       ds      4
	global	_counttest
_counttest:
       ds      4
	global	_unTKData
_unTKData:
       ds      32
	file	"touchlib_6017.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (3 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataBANK1+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataBANK1+1		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataBANK1+2		
	line	#
; Clear objects allocated to BANK2 (187 bytes)
	global __pbssBANK2
lfsr	0,__pbssBANK2
movlw	187
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK1 (251 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	251
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (109 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	109
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to BITCOMRAM (1 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (11 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	11
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	E2prom_WriteData@dat
E2prom_WriteData@dat:	; 50 bytes @ 0x0
	ds   50
	global	E2prom_WriteData@i
E2prom_WriteData@i:	; 1 bytes @ 0x32
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_usart2_receive_wait:	; 1 bytes @ 0x0
??_usart2_receive_wait:	; 1 bytes @ 0x0
?_IR_IN_DATA:	; 1 bytes @ 0x0
??_IR_IN_DATA:	; 1 bytes @ 0x0
?_EC11_Interrupt:	; 1 bytes @ 0x0
?_UART2_Interrupt:	; 1 bytes @ 0x0
??_UART2_Interrupt:	; 1 bytes @ 0x0
?_TSC_INITIAL:	; 1 bytes @ 0x0
?_GPIO_Init:	; 1 bytes @ 0x0
?_E2prom_ReadData:	; 1 bytes @ 0x0
?_Voice_Init:	; 1 bytes @ 0x0
?_PlaySound:	; 1 bytes @ 0x0
?_IR_Key_Init:	; 1 bytes @ 0x0
?_BeepInit:	; 1 bytes @ 0x0
?_encoder_Init:	; 1 bytes @ 0x0
?_uart2_Init:	; 1 bytes @ 0x0
?_TM1629Init:	; 1 bytes @ 0x0
?_Update_Display:	; 1 bytes @ 0x0
?_Engineering_Mode_Api:	; 1 bytes @ 0x0
?_key_scan:	; 1 bytes @ 0x0
?_EC11_Set_Value:	; 1 bytes @ 0x0
?_Cmd_Process:	; 1 bytes @ 0x0
?_StartUpVoice:	; 1 bytes @ 0x0
?_control:	; 1 bytes @ 0x0
?_IR_MoreCtr:	; 1 bytes @ 0x0
?_TSC_Scan:	; 1 bytes @ 0x0
?_TSC_DataProcessing:	; 1 bytes @ 0x0
?_Get_Key_Demo:	; 1 bytes @ 0x0
?_Cmd_Send:	; 1 bytes @ 0x0
?_SleepProcess:	; 1 bytes @ 0x0
?_TSC_Start_Test:	; 1 bytes @ 0x0
?_ConmunicateToPc:	; 1 bytes @ 0x0
?_TSC_GetCsKey:	; 1 bytes @ 0x0
?_uart_tx:	; 1 bytes @ 0x0
?_TM1629_Luminance:	; 1 bytes @ 0x0
?_BeepEnable:	; 1 bytes @ 0x0
?_EC11_Scan:	; 1 bytes @ 0x0
??_EC11_Scan:	; 1 bytes @ 0x0
?_EEPROMread:	; 1 bytes @ 0x0
?_Goto_Engineering_Mode:	; 1 bytes @ 0x0
?_Engineering_Clear_WorkTime:	; 1 bytes @ 0x0
?_Engineering_Voltage_Calibration:	; 1 bytes @ 0x0
?_Engineering_Flow_Compensation:	; 1 bytes @ 0x0
?_Engineering_Adjust_JYTime:	; 1 bytes @ 0x0
?_Engineering_Timeout_Logic:	; 1 bytes @ 0x0
?_SetTouchFreq:	; 1 bytes @ 0x0
?_Time0_Interrupt:	; 1 bytes @ 0x0
??_Time0_Interrupt:	; 1 bytes @ 0x0
?_InterruptHandlerLow:	; 1 bytes @ 0x0
?_InterruptHandlerHigh:	; 1 bytes @ 0x0
?_POWER_INITIAL:	; 1 bytes @ 0x0
?_TIM0_INITIAL:	; 1 bytes @ 0x0
?_WDT_INITIAL:	; 1 bytes @ 0x0
?_Delay10Us:	; 1 bytes @ 0x0
?_DataInit:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_uart_delay:	; 1 bytes @ 0x0
?_uart_rx:	; 1 bytes @ 0x0
?_ReceiveDataPc:	; 1 bytes @ 0x0
?_SendDataToPC:	; 1 bytes @ 0x0
?_TM1629_WriteByteData:	; 1 bytes @ 0x0
?_TM1629_WriteCommand:	; 1 bytes @ 0x0
?_SEG4:	; 1 bytes @ 0x0
?_SEG5:	; 1 bytes @ 0x0
?_SEG6:	; 1 bytes @ 0x0
?_SEG7:	; 1 bytes @ 0x0
?_SEG8:	; 1 bytes @ 0x0
?_SEG9:	; 1 bytes @ 0x0
?_SEG10:	; 1 bytes @ 0x0
?_SEG11:	; 1 bytes @ 0x0
?_SEG12:	; 1 bytes @ 0x0
?_SEG13:	; 1 bytes @ 0x0
?_Display_Anion:	; 1 bytes @ 0x0
?_Label_Concentration:	; 1 bytes @ 0x0
?_Label_Flow:	; 1 bytes @ 0x0
?_Label_Percent:	; 1 bytes @ 0x0
?_Label_AddUp:	; 1 bytes @ 0x0
?_Label_CloseAlarm:	; 1 bytes @ 0x0
?_Label_h:	; 1 bytes @ 0x0
?_Label_L_min:	; 1 bytes @ 0x0
?_Label_Timing:	; 1 bytes @ 0x0
?_Label_Running:	; 1 bytes @ 0x0
?_Label_Min:	; 1 bytes @ 0x0
?_Display_SysSta:	; 1 bytes @ 0x0
?_Display_Voice:	; 1 bytes @ 0x0
?_Display_FilterMesh:	; 1 bytes @ 0x0
?_Engineering_Flow_Compensation_display1:	; 1 bytes @ 0x0
?_PWM_Init:	; 1 bytes @ 0x0
?_E2prom_WriteData:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_Uart2Send:	; 1 bytes @ 0x0
?_dat_low:	; 1 bytes @ 0x0
?_dat_high:	; 1 bytes @ 0x0
?_VoiceFilterMesh:	; 1 bytes @ 0x0
?_SOS_Voice:	; 1 bytes @ 0x0
?_VoiceDrive:	; 1 bytes @ 0x0
?_Alarm_Sound:	; 1 bytes @ 0x0
?_Concentration_Low_Alarm:	; 1 bytes @ 0x0
?_TimingClosureSet:	; 1 bytes @ 0x0
?_ERR_Code:	; 1 bytes @ 0x0
?_ErrorCtr:	; 1 bytes @ 0x0
?_Display:	; 1 bytes @ 0x0
?_TIM2_INITIAL:	; 1 bytes @ 0x0
?_LVD_INITIAL:	; 1 bytes @ 0x0
?_TK_CAP_DISCHARGE:	; 1 bytes @ 0x0
?_ReadCap:	; 1 bytes @ 0x0
?_HardDiv:	; 1 bytes @ 0x0
?_GetLocalCount:	; 1 bytes @ 0x0
?_TestReadCap:	; 1 bytes @ 0x0
	ds   1
??_EC11_Interrupt:	; 1 bytes @ 0x1
	ds   5
??_InterruptHandlerHigh:	; 1 bytes @ 0x6
	ds   2
??_InterruptHandlerLow:	; 1 bytes @ 0x8
	ds   1
??_GPIO_Init:	; 1 bytes @ 0x9
??_Voice_Init:	; 1 bytes @ 0x9
??_IR_Key_Init:	; 1 bytes @ 0x9
??_encoder_Init:	; 1 bytes @ 0x9
??_uart2_Init:	; 1 bytes @ 0x9
??_IR_MoreCtr:	; 1 bytes @ 0x9
??_TSC_DataProcessing:	; 1 bytes @ 0x9
??_SleepProcess:	; 1 bytes @ 0x9
??_TSC_GetCsKey:	; 1 bytes @ 0x9
?_TSC_GetLocalKey:	; 1 bytes @ 0x9
??_uart_tx:	; 1 bytes @ 0x9
??_BeepEnable:	; 1 bytes @ 0x9
?_EEPROMwrite:	; 1 bytes @ 0x9
??_EEPROMread:	; 1 bytes @ 0x9
??_SetTouchFreq:	; 1 bytes @ 0x9
??_POWER_INITIAL:	; 1 bytes @ 0x9
??_TIM0_INITIAL:	; 1 bytes @ 0x9
??_WDT_INITIAL:	; 1 bytes @ 0x9
??_Delay10Us:	; 1 bytes @ 0x9
??_DataInit:	; 1 bytes @ 0x9
??_uart_delay:	; 1 bytes @ 0x9
??_uart_rx:	; 1 bytes @ 0x9
?_Nop1629:	; 1 bytes @ 0x9
??_SEG4:	; 1 bytes @ 0x9
??_SEG5:	; 1 bytes @ 0x9
??_SEG6:	; 1 bytes @ 0x9
??_SEG7:	; 1 bytes @ 0x9
??_SEG8:	; 1 bytes @ 0x9
??_SEG9:	; 1 bytes @ 0x9
??_SEG10:	; 1 bytes @ 0x9
??_SEG11:	; 1 bytes @ 0x9
??_SEG12:	; 1 bytes @ 0x9
??_SEG13:	; 1 bytes @ 0x9
??_Display_Anion:	; 1 bytes @ 0x9
??_Label_Concentration:	; 1 bytes @ 0x9
??_Label_Flow:	; 1 bytes @ 0x9
??_Label_Percent:	; 1 bytes @ 0x9
??_Label_AddUp:	; 1 bytes @ 0x9
??_Label_CloseAlarm:	; 1 bytes @ 0x9
??_Label_h:	; 1 bytes @ 0x9
??_Label_L_min:	; 1 bytes @ 0x9
??_Label_Timing:	; 1 bytes @ 0x9
??_Label_Running:	; 1 bytes @ 0x9
??_Label_Min:	; 1 bytes @ 0x9
??_Display_SysSta:	; 1 bytes @ 0x9
??_Display_Voice:	; 1 bytes @ 0x9
??_Display_FilterMesh:	; 1 bytes @ 0x9
??_Engineering_Flow_Compensation_display1:	; 1 bytes @ 0x9
??_PWM_Init:	; 1 bytes @ 0x9
??_putch:	; 1 bytes @ 0x9
??_Uart2Send:	; 1 bytes @ 0x9
?_CheckSum_Calculate2:	; 1 bytes @ 0x9
??_dat_low:	; 1 bytes @ 0x9
??_dat_high:	; 1 bytes @ 0x9
??_SOS_Voice:	; 1 bytes @ 0x9
??_TIM2_INITIAL:	; 1 bytes @ 0x9
??_LVD_INITIAL:	; 1 bytes @ 0x9
??_TK_CAP_DISCHARGE:	; 1 bytes @ 0x9
??_HardDiv:	; 1 bytes @ 0x9
??_GetLocalCount:	; 1 bytes @ 0x9
??_TestReadCap:	; 1 bytes @ 0x9
	global	?_TSC_GetPrevData
?_TSC_GetPrevData:	; 2 bytes @ 0x9
	global	?_IR_KeyReadCtr
?_IR_KeyReadCtr:	; 2 bytes @ 0x9
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x9
	global	?_TouchKeyValue
?_TouchKeyValue:	; 2 bytes @ 0x9
	global	?_Get_EC11_Count
?_Get_EC11_Count:	; 2 bytes @ 0x9
	global	?___awmod
?___awmod:	; 2 bytes @ 0x9
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x9
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x9
	global	?___almod
?___almod:	; 4 bytes @ 0x9
	global	?___llmod
?___llmod:	; 4 bytes @ 0x9
	global	Delay10Us@i
Delay10Us@i:	; 1 bytes @ 0x9
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x9
	global	SEG4@dat
SEG4@dat:	; 1 bytes @ 0x9
	global	SEG5@dat
SEG5@dat:	; 1 bytes @ 0x9
	global	SEG6@dat
SEG6@dat:	; 1 bytes @ 0x9
	global	SEG7@dat
SEG7@dat:	; 1 bytes @ 0x9
	global	SEG8@dat
SEG8@dat:	; 1 bytes @ 0x9
	global	SEG9@dat
SEG9@dat:	; 1 bytes @ 0x9
	global	SEG10@dat
SEG10@dat:	; 1 bytes @ 0x9
	global	SEG11@dat
SEG11@dat:	; 1 bytes @ 0x9
	global	SEG12@dat
SEG12@dat:	; 1 bytes @ 0x9
	global	SEG13@dat
SEG13@dat:	; 1 bytes @ 0x9
	global	Display_Anion@sta
Display_Anion@sta:	; 1 bytes @ 0x9
	global	Label_Concentration@sta
Label_Concentration@sta:	; 1 bytes @ 0x9
	global	Label_Flow@sta
Label_Flow@sta:	; 1 bytes @ 0x9
	global	Label_Percent@sta
Label_Percent@sta:	; 1 bytes @ 0x9
	global	Label_AddUp@sta
Label_AddUp@sta:	; 1 bytes @ 0x9
	global	Label_CloseAlarm@sta
Label_CloseAlarm@sta:	; 1 bytes @ 0x9
	global	Label_h@sta
Label_h@sta:	; 1 bytes @ 0x9
	global	Label_L_min@sta
Label_L_min@sta:	; 1 bytes @ 0x9
	global	Label_Timing@sta
Label_Timing@sta:	; 1 bytes @ 0x9
	global	Label_Running@sta
Label_Running@sta:	; 1 bytes @ 0x9
	global	Label_Min@sta
Label_Min@sta:	; 1 bytes @ 0x9
	global	Display_SysSta@sta
Display_SysSta@sta:	; 1 bytes @ 0x9
	global	Display_Voice@sta
Display_Voice@sta:	; 1 bytes @ 0x9
	global	Display_FilterMesh@sta
Display_FilterMesh@sta:	; 1 bytes @ 0x9
	global	Engineering_Flow_Compensation_display1@a
Engineering_Flow_Compensation_display1@a:	; 1 bytes @ 0x9
	global	BeepEnable@enable
BeepEnable@enable:	; 1 bytes @ 0x9
	global	putch@val
putch@val:	; 1 bytes @ 0x9
	global	Uart2Send@dat
Uart2Send@dat:	; 1 bytes @ 0x9
	global	GetLocalCount@temp
GetLocalCount@temp:	; 1 bytes @ 0x9
	global	EEPROMread@EEAddr
EEPROMread@EEAddr:	; 1 bytes @ 0x9
	global	EEPROMwrite@Data
EEPROMwrite@Data:	; 1 bytes @ 0x9
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x9
	global	Nop1629@T_Dly
Nop1629@T_Dly:	; 2 bytes @ 0x9
	global	CheckSum_Calculate2@data0
CheckSum_Calculate2@data0:	; 2 bytes @ 0x9
	global	HardDiv@ptr_mdivs
HardDiv@ptr_mdivs:	; 2 bytes @ 0x9
	global	SetTouchFreq@tmp
SetTouchFreq@tmp:	; 2 bytes @ 0x9
	global	TSC_GetLocalKey@ptr
TSC_GetLocalKey@ptr:	; 2 bytes @ 0x9
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x9
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x9
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x9
	ds   1
??_BeepInit:	; 1 bytes @ 0xA
?_BeepCtr2:	; 1 bytes @ 0xA
??_EEPROMwrite:	; 1 bytes @ 0xA
?_DelayMs:	; 1 bytes @ 0xA
?_Voicedelay:	; 1 bytes @ 0xA
??_ReceiveDataPc:	; 1 bytes @ 0xA
??_SendDataToPC:	; 1 bytes @ 0xA
?_Uart2SendBuff:	; 1 bytes @ 0xA
	global	ReceiveDataPc@i
ReceiveDataPc@i:	; 1 bytes @ 0xA
	global	SendDataToPC@size
SendDataToPC@size:	; 1 bytes @ 0xA
	global	EEPROMread@ReEEPROMread
EEPROMread@ReEEPROMread:	; 1 bytes @ 0xA
	global	EEPROMwrite@EEAddr
EEPROMwrite@EEAddr:	; 1 bytes @ 0xA
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0xA
	global	DelayMs@Time
DelayMs@Time:	; 2 bytes @ 0xA
	global	Voicedelay@Time
Voicedelay@Time:	; 2 bytes @ 0xA
	global	BeepCtr2@value
BeepCtr2@value:	; 2 bytes @ 0xA
	global	Uart2SendBuff@dat
Uart2SendBuff@dat:	; 2 bytes @ 0xA
	ds   1
??_E2prom_ReadData:	; 1 bytes @ 0xB
??_TSC_GetLocalKey:	; 1 bytes @ 0xB
??_TSC_GetPrevData:	; 1 bytes @ 0xB
??_IR_KeyReadCtr:	; 1 bytes @ 0xB
??_strcmp:	; 1 bytes @ 0xB
??_Nop1629:	; 1 bytes @ 0xB
??_TM1629_WriteByteData:	; 1 bytes @ 0xB
??_TouchKeyValue:	; 1 bytes @ 0xB
??_Get_EC11_Count:	; 1 bytes @ 0xB
??_ReadCap:	; 1 bytes @ 0xB
	global	SendDataToPC@i
SendDataToPC@i:	; 1 bytes @ 0xB
	global	TM1629_WriteByteData@Data
TM1629_WriteByteData@Data:	; 1 bytes @ 0xB
	global	TestReadCap@ucGroup
TestReadCap@ucGroup:	; 1 bytes @ 0xB
	global	TSC_GetPrevData@KeyNum
TSC_GetPrevData@KeyNum:	; 1 bytes @ 0xB
	global	Get_EC11_Count@ret
Get_EC11_Count@ret:	; 2 bytes @ 0xB
	global	HardDiv@ptr_midres
HardDiv@ptr_midres:	; 2 bytes @ 0xB
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xB
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xB
	global	CheckSum_Calculate2@length
CheckSum_Calculate2@length:	; 4 bytes @ 0xB
	ds   1
??_BeepCtr2:	; 1 bytes @ 0xC
??_ConmunicateToPc:	; 1 bytes @ 0xC
??_DelayMs:	; 1 bytes @ 0xC
??_Voicedelay:	; 1 bytes @ 0xC
	global	TM1629_WriteByteData@i
TM1629_WriteByteData@i:	; 1 bytes @ 0xC
	global	DelayMs@a
DelayMs@a:	; 2 bytes @ 0xC
	global	Voicedelay@i
Voicedelay@i:	; 2 bytes @ 0xC
	global	Uart2SendBuff@len
Uart2SendBuff@len:	; 2 bytes @ 0xC
	ds   1
??_EC11_Set_Value:	; 1 bytes @ 0xD
??_TSC_Start_Test:	; 1 bytes @ 0xD
??_TM1629_WriteCommand:	; 1 bytes @ 0xD
??___awmod:	; 1 bytes @ 0xD
??___lwmod:	; 1 bytes @ 0xD
	global	TM1629_WriteCommand@Comm
TM1629_WriteCommand@Comm:	; 1 bytes @ 0xD
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0xD
	global	EC11_Set_Value@EncoderCount
EC11_Set_Value@EncoderCount:	; 2 bytes @ 0xD
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xD
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0xD
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0xD
	ds   1
??_PlaySound:	; 1 bytes @ 0xE
??_TM1629_Luminance:	; 1 bytes @ 0xE
?_TM1629_WriteDat:	; 1 bytes @ 0xE
??_Uart2SendBuff:	; 1 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	DelayMs@b
DelayMs@b:	; 1 bytes @ 0xE
	global	TM1629_WriteDat@InDat
TM1629_WriteDat@InDat:	; 1 bytes @ 0xE
	global	TM1629_Luminance@dat
TM1629_Luminance@dat:	; 1 bytes @ 0xE
	global	PlaySound@data
PlaySound@data:	; 1 bytes @ 0xE
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xE
	global	Uart2SendBuff@i
Uart2SendBuff@i:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	ds   1
??_TSC_INITIAL:	; 1 bytes @ 0xF
?_BeepCtr1:	; 1 bytes @ 0xF
??_TM1629_WriteDat:	; 1 bytes @ 0xF
??_CheckSum_Calculate2:	; 1 bytes @ 0xF
??_TimingClosureSet:	; 1 bytes @ 0xF
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xF
	global	TM1629_WriteDat@i
TM1629_WriteDat@i:	; 1 bytes @ 0xF
	global	PlaySound@i
PlaySound@i:	; 1 bytes @ 0xF
	global	BeepCtr1@value
BeepCtr1@value:	; 2 bytes @ 0xF
	global	TouchKeyValue@ret
TouchKeyValue@ret:	; 2 bytes @ 0xF
	global	IR_KeyReadCtr@ret
IR_KeyReadCtr@ret:	; 2 bytes @ 0xF
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xF
	global	E2prom_ReadData@dat
E2prom_ReadData@dat:	; 50 bytes @ 0xF
	ds   1
??_TM1629Init:	; 1 bytes @ 0x10
??_Update_Display:	; 1 bytes @ 0x10
??_Engineering_Timeout_Logic:	; 1 bytes @ 0x10
?_Voice_Half_Hour:	; 1 bytes @ 0x10
?_VoiceCtr2:	; 1 bytes @ 0x10
?_VoiceCtr:	; 1 bytes @ 0x10
??_ERR_Code:	; 1 bytes @ 0x10
	global	TM1629Init@i
TM1629Init@i:	; 1 bytes @ 0x10
	global	Voice_Half_Hour@Voice_Enable
Voice_Half_Hour@Voice_Enable:	; 1 bytes @ 0x10
	global	Engineering_Timeout_Logic@Mode_Status
Engineering_Timeout_Logic@Mode_Status:	; 1 bytes @ 0x10
	global	VoiceCtr2@dat
VoiceCtr2@dat:	; 2 bytes @ 0x10
	global	VoiceCtr@dat
VoiceCtr@dat:	; 2 bytes @ 0x10
	global	TSC_GetLocalKey@ulTKeyOutSingle
TSC_GetLocalKey@ulTKeyOutSingle:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	global	CheckSum_Calculate2@accumulate
CheckSum_Calculate2@accumulate:	; 4 bytes @ 0x10
	ds   1
??_key_scan:	; 1 bytes @ 0x11
??_BeepCtr1:	; 1 bytes @ 0x11
??_Voice_Half_Hour:	; 1 bytes @ 0x11
??___aldiv:	; 1 bytes @ 0x11
??___almod:	; 1 bytes @ 0x11
??___llmod:	; 1 bytes @ 0x11
	global	key_scan@i
key_scan@i:	; 1 bytes @ 0x11
	global	Voice_Half_Hour@Half_Hour
Voice_Half_Hour@Half_Hour:	; 1 bytes @ 0x11
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x11
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x11
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x11
	global	_TimingClosureSet$20058
_TimingClosureSet$20058:	; 2 bytes @ 0x11
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x11
	ds   1
??_Get_Key_Demo:	; 1 bytes @ 0x12
?_SEG3:	; 1 bytes @ 0x12
??_VoiceCtr2:	; 1 bytes @ 0x12
??_VoiceCtr:	; 1 bytes @ 0x12
??___lwdiv:	; 1 bytes @ 0x12
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x12
	global	SEG3@enable
SEG3@enable:	; 1 bytes @ 0x12
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x12
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x12
	ds   1
??_SEG3:	; 1 bytes @ 0x13
??___awdiv:	; 1 bytes @ 0x13
	global	SEG3@dat
SEG3@dat:	; 1 bytes @ 0x13
	global	VoiceCtr2@ret
VoiceCtr2@ret:	; 1 bytes @ 0x13
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x13
	global	_TimingClosureSet$20059
_TimingClosureSet$20059:	; 2 bytes @ 0x13
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x13
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x13
	ds   1
??_StartUpVoice:	; 1 bytes @ 0x14
??_Alarm_Sound:	; 1 bytes @ 0x14
??_Concentration_Low_Alarm:	; 1 bytes @ 0x14
	global	ConmunicateToPc@ucTemp
ConmunicateToPc@ucTemp:	; 1 bytes @ 0x14
	global	CheckSum_Calculate2@checksum
CheckSum_Calculate2@checksum:	; 1 bytes @ 0x14
	global	Alarm_Sound@mode
Alarm_Sound@mode:	; 1 bytes @ 0x14
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x14
	ds   1
?_Display_Concentration:	; 1 bytes @ 0x15
?_Display_Flow:	; 1 bytes @ 0x15
	global	?__doprnt
?__doprnt:	; 2 bytes @ 0x15
	global	ConmunicateToPc@ucTempLength
ConmunicateToPc@ucTempLength:	; 1 bytes @ 0x15
	global	VoiceCtr@ret
VoiceCtr@ret:	; 1 bytes @ 0x15
	global	__doprnt@pb
__doprnt@pb:	; 1 bytes @ 0x15
	global	Display_Concentration@sum
Display_Concentration@sum:	; 2 bytes @ 0x15
	global	Display_Flow@sum
Display_Flow@sum:	; 2 bytes @ 0x15
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x15
	global	CheckSum_Calculate2@i
CheckSum_Calculate2@i:	; 4 bytes @ 0x15
	ds   1
	global	ConmunicateToPc@ucTempPackNum
ConmunicateToPc@ucTempPackNum:	; 1 bytes @ 0x16
	global	__doprnt@f
__doprnt@f:	; 1 bytes @ 0x16
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x16
	ds   1
	global	ConmunicateToPc@temp_xor
ConmunicateToPc@temp_xor:	; 1 bytes @ 0x17
	global	Display_Concentration@mode
Display_Concentration@mode:	; 1 bytes @ 0x17
	global	Display_Flow@mode
Display_Flow@mode:	; 1 bytes @ 0x17
	global	__doprnt@ap
__doprnt@ap:	; 1 bytes @ 0x17
	ds   1
??_Display_Concentration:	; 1 bytes @ 0x18
??_Display_Flow:	; 1 bytes @ 0x18
??__doprnt:	; 1 bytes @ 0x18
	global	ConmunicateToPc@i
ConmunicateToPc@i:	; 1 bytes @ 0x18
	ds   1
??_Cmd_Process:	; 1 bytes @ 0x19
??_TSC_Scan:	; 1 bytes @ 0x19
??_Cmd_Send:	; 1 bytes @ 0x19
	ds   1
??___lldiv:	; 1 bytes @ 0x1A
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x1A
	ds   1
	global	__doprnt@idx
__doprnt@idx:	; 1 bytes @ 0x1B
	ds   1
	global	__doprnt@val
__doprnt@val:	; 2 bytes @ 0x1C
	ds   1
	global	Cmd_Process@sum
Cmd_Process@sum:	; 1 bytes @ 0x1D
	ds   1
	global	__doprnt@prec
__doprnt@prec:	; 1 bytes @ 0x1E
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x1E
	ds   1
?_SEG1:	; 1 bytes @ 0x1F
?_SEG2:	; 1 bytes @ 0x1F
?_Display_CumulativeTime:	; 1 bytes @ 0x1F
	global	SEG1@enable
SEG1@enable:	; 1 bytes @ 0x1F
	global	SEG2@enable
SEG2@enable:	; 1 bytes @ 0x1F
	global	__doprnt@c
__doprnt@c:	; 1 bytes @ 0x1F
	global	Display_CumulativeTime@sum
Display_CumulativeTime@sum:	; 4 bytes @ 0x1F
	ds   1
??_SEG1:	; 1 bytes @ 0x20
??_SEG2:	; 1 bytes @ 0x20
	global	?_printf
?_printf:	; 2 bytes @ 0x20
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x20
	global	SEG1@dat
SEG1@dat:	; 1 bytes @ 0x20
	global	SEG2@dat
SEG2@dat:	; 1 bytes @ 0x20
	global	printf@f
printf@f:	; 1 bytes @ 0x20
	global	sprintf@wh
sprintf@wh:	; 1 bytes @ 0x20
	ds   1
??_printf:	; 1 bytes @ 0x21
?_Display_Timing:	; 1 bytes @ 0x21
	global	printf@ap
printf@ap:	; 1 bytes @ 0x21
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x21
	global	Display_Timing@sum
Display_Timing@sum:	; 4 bytes @ 0x21
	ds   1
	global	printf@pb
printf@pb:	; 4 bytes @ 0x22
	ds   1
	global	Display_CumulativeTime@mode
Display_CumulativeTime@mode:	; 1 bytes @ 0x23
	ds   1
	global	Display_CumulativeTime@enable
Display_CumulativeTime@enable:	; 1 bytes @ 0x24
	ds   1
??_Display_CumulativeTime:	; 1 bytes @ 0x25
	global	Display_Timing@mode
Display_Timing@mode:	; 1 bytes @ 0x25
	ds   1
??_sprintf:	; 1 bytes @ 0x26
	global	Display_Timing@enable
Display_Timing@enable:	; 1 bytes @ 0x26
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x26
	ds   1
??_Display_Timing:	; 1 bytes @ 0x27
	global	sprintf@pb
sprintf@pb:	; 4 bytes @ 0x27
	ds   1
??_Display:	; 1 bytes @ 0x28
	ds   3
	global	?_Get_Engineering_KeyValue
?_Get_Engineering_KeyValue:	; 2 bytes @ 0x2B
	ds   2
??_Get_Engineering_KeyValue:	; 1 bytes @ 0x2D
	global	Get_Engineering_KeyValue@IRData_HexString
Get_Engineering_KeyValue@IRData_HexString:	; 20 bytes @ 0x2D
	ds   20
	global	E2prom_ReadData@i
E2prom_ReadData@i:	; 1 bytes @ 0x41
	global	Get_Engineering_KeyValue@ret
Get_Engineering_KeyValue@ret:	; 2 bytes @ 0x41
	ds   1
??_E2prom_WriteData:	; 1 bytes @ 0x42
??_VoiceFilterMesh:	; 1 bytes @ 0x42
??_VoiceDrive:	; 1 bytes @ 0x42
??_ErrorCtr:	; 1 bytes @ 0x42
	ds   1
??_Engineering_Clear_WorkTime:	; 1 bytes @ 0x43
??_Engineering_Voltage_Calibration:	; 1 bytes @ 0x43
??_Engineering_Flow_Compensation:	; 1 bytes @ 0x43
??_Engineering_Adjust_JYTime:	; 1 bytes @ 0x43
	ds   1
??_Engineering_Mode_Api:	; 1 bytes @ 0x44
??_Goto_Engineering_Mode:	; 1 bytes @ 0x44
	global	VoiceDrive@Flag
VoiceDrive@Flag:	; 1 bytes @ 0x44
	global	ErrorCtr@j
ErrorCtr@j:	; 2 bytes @ 0x44
	ds   2
	global	ErrorCtr@i
ErrorCtr@i:	; 2 bytes @ 0x46
	ds   2
??_control:	; 1 bytes @ 0x48
??_main:	; 1 bytes @ 0x48
;!
;!Data Sizes:
;!    Strings     58
;!    Constant    190
;!    Data        3
;!    BSS         558
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     72      84
;!    BANK0           160     51     160
;!    BANK1           256      0     254
;!    BANK2           256      4     191
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_7(CODE[5]), STR_6(CODE[5]), STR_5(CODE[5]), STR_4(CODE[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_3(CODE[3]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(COMRAM[2]), ?_printf(COMRAM[2]), 
;!
;!    sprintf@wh	PTR unsigned char  size(1) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), 
;!
;!    pb.func	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> Absolute function(), putch(), 
;!
;!    pb.ptr	PTR unsigned char  size(2) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), NULL(NULL[0]), 
;!
;!    printf@f	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_2(CODE[10]), STR_1(CODE[8]), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(COMRAM[2]), ?_printf(COMRAM[2]), 
;!
;!    pb.func	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> Absolute function(), putch(), 
;!
;!    pb.ptr	PTR unsigned char  size(2) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), NULL(NULL[0]), 
;!
;!    puiSLEEP	PTR const unsigned int [4] size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    TSC_GetLocalKey@ptr	PTR unsigned long  size(2) Largest target is 8
;!		 -> single(BANK1[8]), 
;!
;!    TSC_GetLocalKey@ulTKeyOutSingle	PTR unsigned long  size(2) Largest target is 8
;!		 -> single(BANK1[8]), 
;!
;!    HardDiv@ptr_mdivs	PTR unsigned char  size(2) Largest target is 2
;!		 -> mdivs_data(BANK1[2]), 
;!
;!    HardDiv@ptr_midres	PTR unsigned char  size(2) Largest target is 4
;!		 -> midres_data(BANK1[4]), 
;!
;!    _doprnt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> sprintf@ap(COMRAM[1]), printf@ap(COMRAM[1]), 
;!
;!    _doprnt@f	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_3(CODE[3]), STR_2(CODE[10]), STR_1(CODE[8]), 
;!
;!    S21521__prbuf$func	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> Absolute function(), putch(), 
;!
;!    _doprnt@pb.func	PTR FTN(unsigned char ,)void  size(2) Largest target is 1
;!		 -> Absolute function(), putch(), 
;!
;!    S21521__prbuf$ptr	PTR unsigned char  size(2) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), NULL(NULL[0]), 
;!
;!    _doprnt@pb.ptr	PTR unsigned char  size(2) Largest target is 20
;!		 -> Get_Engineering_KeyValue@IRData_HexString(COMRAM[20]), NULL(NULL[0]), 
;!
;!    _doprnt@pb	PTR struct __prbuf size(1) Largest target is 5
;!		 -> sprintf@pb(COMRAM[4]), printf@pb(COMRAM[4]), 
;!
;!    CheckSum_Calculate2@data0	PTR unsigned char  size(2) Largest target is 54
;!		 -> sUsart2(BANK1[54]), 
;!
;!    Uart2SendBuff@dat	PTR unsigned char  size(2) Largest target is 54
;!		 -> sUsart2(BANK1[54]), 
;!
;!    TM1629_WriteDat@InDat	PTR unsigned char  size(1) Largest target is 16
;!		 -> DisBuf(BANK0[16]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _printf->__doprnt
;!    _control->_ErrorCtr
;!    _Voice_Half_Hour->_PlaySound
;!    _VoiceCtr->_PlaySound
;!    _TimingClosureSet->___awmod
;!    _key_scan->_IR_KeyReadCtr
;!    _key_scan->_TouchKeyValue
;!    _TSC_Scan->_ConmunicateToPc
;!    _TSC_Start_Test->_HardDiv
;!    _ConmunicateToPc->_SendDataToPC
;!    _ConmunicateToPc->_TSC_GetPrevData
;!    _SendDataToPC->_uart_tx
;!    _ReceiveDataPc->_uart_rx
;!    _Get_Key_Demo->_TSC_GetLocalKey
;!    _Alarm_Sound->_VoiceCtr2
;!    _Display->_Display_Timing
;!    _Display_Flow->___lwdiv
;!    _Display_Concentration->___lwdiv
;!    _Concentration_Low_Alarm->_VoiceCtr2
;!    _TSC_INITIAL->_ReadCap
;!    _ReadCap->_SetTouchFreq
;!    _TM1629_Luminance->_TM1629_WriteCommand
;!    _StartUpVoice->_VoiceCtr2
;!    _VoiceCtr2->_PlaySound
;!    _Goto_Engineering_Mode->_Engineering_Adjust_JYTime
;!    _Goto_Engineering_Mode->_Engineering_Flow_Compensation
;!    _Goto_Engineering_Mode->_Engineering_Voltage_Calibration
;!    _Engineering_Voltage_Calibration->_Get_Engineering_KeyValue
;!    _Engineering_Flow_Compensation->_Get_Engineering_KeyValue
;!    _Display_Timing->_SEG1
;!    _Display_Timing->_SEG2
;!    _SEG3->___llmod
;!    _SEG2->___lldiv
;!    _SEG1->___lldiv
;!    _Engineering_Clear_WorkTime->_Get_Engineering_KeyValue
;!    _Engineering_Adjust_JYTime->_Get_Engineering_KeyValue
;!    ___awdiv->___awmod
;!    _Update_Display->_TM1629_WriteDat
;!    _TM1629_WriteDat->_TM1629_WriteCommand
;!    _TM1629_WriteCommand->_TM1629_WriteByteData
;!    _TM1629_WriteByteData->_Nop1629
;!    _Get_Engineering_KeyValue->_sprintf
;!    _sprintf->__doprnt
;!    __doprnt->___lwdiv
;!    ___lwdiv->___lwmod
;!    _Engineering_Timeout_Logic->_PlaySound
;!    _PlaySound->_Voicedelay
;!    _Voicedelay->_Delay10Us
;!    _E2prom_WriteData->_E2prom_ReadData
;!    _E2prom_ReadData->_EEPROMread
;!    _Display_CumulativeTime->___lldiv
;!    ___lldiv->___llmod
;!    _Cmd_Send->_CheckSum_Calculate2
;!    _Uart2SendBuff->_Uart2Send
;!    _Cmd_Process->_CheckSum_Calculate2
;!    _BeepCtr1->_DelayMs
;!    _DelayMs->_Delay10Us
;!    _EC11_Set_Value->_Get_EC11_Count
;!    _BeepInit->_BeepEnable
;!    _BeepCtr2->_BeepEnable
;!
;!Critical Paths under _InterruptHandlerLow in COMRAM
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in COMRAM
;!
;!    _InterruptHandlerHigh->_IR_IN_DATA
;!    _EC11_Interrupt->_EC11_Scan
;!
;!Critical Paths under _main in BANK0
;!
;!    _VoiceFilterMesh->_E2prom_WriteData
;!    _ErrorCtr->_E2prom_WriteData
;!    _Engineering_Voltage_Calibration->_E2prom_WriteData
;!    _Engineering_Flow_Compensation->_E2prom_WriteData
;!    _Engineering_Clear_WorkTime->_E2prom_WriteData
;!    _Engineering_Adjust_JYTime->_E2prom_WriteData
;!
;!Critical Paths under _InterruptHandlerLow in BANK0
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK1
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK2
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK3
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK4
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK5
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK6
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerLow in BANK7
;!
;!    None.
;!
;!Critical Paths under _InterruptHandlerHigh in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0  215626
;!                                              0 BANK2      4     4      0
;!                           _BeepCtr1
;!                           _BeepCtr2
;!                           _BeepInit
;!                        _Cmd_Process
;!                           _Cmd_Send
;!                           _DataInit
;!                            _DelayMs
;!                    _E2prom_ReadData
;!                     _EC11_Set_Value
;!               _Engineering_Mode_Api
;!                          _GPIO_Init
;!                       _Get_Key_Demo
;!                        _IR_Key_Init
;!                         _IR_MoreCtr
;!                      _POWER_INITIAL
;!                          _PlaySound
;!                       _SleepProcess
;!                       _StartUpVoice
;!                       _TIM0_INITIAL
;!                         _TM1629Init
;!                 _TSC_DataProcessing
;!                        _TSC_INITIAL
;!                           _TSC_Scan
;!                     _Update_Display
;!                         _Voice_Init
;!                        _WDT_INITIAL
;!                            _control
;!                       _encoder_Init
;!                           _key_scan
;!                             _printf
;!                         _uart2_Init
;! ---------------------------------------------------------------------------------
;! (1) _uart2_Init                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _printf                                               6     5      1    4106
;!                                             32 COMRAM     6     5      1
;!                            __doprnt
;! ---------------------------------------------------------------------------------
;! (1) _encoder_Init                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _control                                              0     0      0   70634
;!                            _Display
;!                           _ErrorCtr
;!                   _TimingClosureSet
;!                     _Update_Display
;!                         _VoiceDrive
;! ---------------------------------------------------------------------------------
;! (2) _VoiceDrive                                           3     3      0    6601
;!                                             66 COMRAM     3     3      0
;!                          _SOS_Voice
;!                           _VoiceCtr
;!                    _VoiceFilterMesh
;!                    _Voice_Half_Hour
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) _Voice_Half_Hour                                      2     1      1     970
;!                                             16 COMRAM     2     1      1
;!                          _PlaySound
;! ---------------------------------------------------------------------------------
;! (3) _VoiceFilterMesh                                      0     0      0    1588
;!                   _E2prom_WriteData
;! ---------------------------------------------------------------------------------
;! (3) _VoiceCtr                                             6     4      2    1236
;!                                             16 COMRAM     6     4      2
;!                          _PlaySound
;! ---------------------------------------------------------------------------------
;! (3) _SOS_Voice                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _TimingClosureSet                                     6     6      0    2847
;!                                             15 COMRAM     6     6      0
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) _ErrorCtr                                             6     6      0   24353
;!                                             66 COMRAM     6     6      0
;!                        _Alarm_Sound
;!                           _BeepCtr1
;!                         _BeepEnable
;!                        _Cmd_Process
;!                           _Cmd_Send
;!                            _DelayMs
;!                     _Display_SysSta
;!                   _E2prom_WriteData
;!                           _ERR_Code
;!                       _Get_Key_Demo
;!                         _IR_MoreCtr
;!                   _Label_CloseAlarm
;!                   _TM1629_Luminance
;!                 _TSC_DataProcessing
;!                           _TSC_Scan
;!                     _Update_Display
;!                            ___lwmod
;!                           _key_scan
;! ---------------------------------------------------------------------------------
;! (1) _key_scan                                             1     1      0     125
;!                                             17 COMRAM     1     1      0
;!                      _IR_KeyReadCtr
;!                      _TouchKeyValue
;! ---------------------------------------------------------------------------------
;! (2) _IR_KeyReadCtr                                        8     6      2      64
;!                                              9 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! (3) _TSC_Scan                                             0     0      0    1968
;!                    _ConmunicateToPc
;!                     _TSC_Start_Test
;! ---------------------------------------------------------------------------------
;! (4) _TSC_Start_Test                                       8     8      0     464
;!                                             13 COMRAM     8     8      0
;!                      _GetLocalCount
;!                            _HardDiv
;!                   _TK_CAP_DISCHARGE
;!                        _TestReadCap
;! ---------------------------------------------------------------------------------
;! (5) _TestReadCap                                          3     3      0     223
;!                                              9 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (5) _TK_CAP_DISCHARGE                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _HardDiv                                              4     4      0     204
;!                                              9 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (5) _GetLocalCount                                        1     1      0      37
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _ConmunicateToPc                                     13    13      0    1504
;!                                             12 COMRAM    13    13      0
;!                      _ReceiveDataPc
;!                       _SendDataToPC
;!                    _TSC_GetPrevData
;! ---------------------------------------------------------------------------------
;! (5) _TSC_GetPrevData                                      3     1      2      62
;!                                              9 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (5) _SendDataToPC                                         2     2      0     347
;!                                             10 COMRAM     2     2      0
;!                            _uart_tx
;! ---------------------------------------------------------------------------------
;! (6) _uart_tx                                              1     1      0     248
;!                                              9 COMRAM     1     1      0
;!                         _uart_delay
;! ---------------------------------------------------------------------------------
;! (7) _uart_delay                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _ReceiveDataPc                                        1     1      0      99
;!                                             10 COMRAM     1     1      0
;!                            _uart_rx
;! ---------------------------------------------------------------------------------
;! (6) _uart_rx                                              1     1      0       0
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _TSC_DataProcessing                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _IR_MoreCtr                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Get_Key_Demo                                         0     0      0     248
;!                       _TSC_GetCsKey
;!                    _TSC_GetLocalKey
;! ---------------------------------------------------------------------------------
;! (4) _TSC_GetLocalKey                                      9     7      2     248
;!                                              9 COMRAM     9     7      2
;! ---------------------------------------------------------------------------------
;! (4) _TSC_GetCsKey                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ERR_Code                                             0     0      0    3102
;!                     _Display_SysSta
;!                     _Update_Display
;! ---------------------------------------------------------------------------------
;! (3) _Alarm_Sound                                          1     1      0    3112
;!                                             20 COMRAM     1     1      0
;!                            _DelayMs
;!                          _VoiceCtr2
;! ---------------------------------------------------------------------------------
;! (2) _Display                                              2     2      0   33762
;!                                             40 COMRAM     2     2      0
;!            _Concentration_Low_Alarm
;!                      _Display_Anion
;!              _Display_Concentration
;!             _Display_CumulativeTime
;!                 _Display_FilterMesh
;!                       _Display_Flow
;!                     _Display_SysSta
;!                     _Display_Timing
;!                      _Display_Voice
;!                   _Label_CloseAlarm
;!                               _SEG1
;!                               _SEG2
;!                               _SEG3
;!                   _TM1629_Luminance
;!                            ___aldiv
;!                            ___almod
;! ---------------------------------------------------------------------------------
;! (3) ___almod                                             10     2      8     613
;!                                              9 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (3) ___aldiv                                             14     6      8     805
;!                                              9 COMRAM    14     6      8
;! ---------------------------------------------------------------------------------
;! (3) _Display_Voice                                        1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Display_SysSta                                       1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_Flow                                         4     1      3    6198
;!                                             21 COMRAM     4     1      3
;!                         _Label_Flow
;!                        _Label_L_min
;!                               _SEG4
;!                               _SEG5
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (4) _SEG5                                                 1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG4                                                 1     1      0     248
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_L_min                                          1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_Flow                                           1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_FilterMesh                                   1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_Concentration                                4     1      3    6508
;!                                             21 COMRAM     4     1      3
;!                _Label_Concentration
;!                      _Label_Percent
;!                               _SEG6
;!                               _SEG7
;!                               _SEG8
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (4) _SEG8                                                 1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG7                                                 1     1      0     279
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG6                                                 1     1      0     248
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_Percent                                        1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_Concentration                                  1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_Anion                                        1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Concentration_Low_Alarm                              2     2      0    1637
;!                                             20 COMRAM     2     2      0
;!                          _VoiceCtr2
;! ---------------------------------------------------------------------------------
;! (1) _WDT_INITIAL                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Voice_Init                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TSC_INITIAL                                          9     9      0      77
;!                                             15 COMRAM     9     9      0
;!                        _LVD_INITIAL
;!                            _ReadCap
;!                       _TIM2_INITIAL
;! ---------------------------------------------------------------------------------
;! (2) _TIM2_INITIAL                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ReadCap                                              4     4      0      77
;!                                             11 COMRAM     4     4      0
;!                       _SetTouchFreq
;! ---------------------------------------------------------------------------------
;! (3) _SetTouchFreq                                         2     2      0      74
;!                                              9 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _LVD_INITIAL                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TM1629Init                                           1     1      0    6832
;!                                             16 COMRAM     1     1      0
;!                            _DelayMs
;!                   _TM1629_Luminance
;!                     _Update_Display
;! ---------------------------------------------------------------------------------
;! (3) _TM1629_Luminance                                     1     1      0    2147
;!                                             14 COMRAM     1     1      0
;!                            _Nop1629
;!                _TM1629_WriteCommand
;! ---------------------------------------------------------------------------------
;! (1) _TIM0_INITIAL                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _StartUpVoice                                         0     0      0    3081
;!                            _DelayMs
;!                          _VoiceCtr2
;! ---------------------------------------------------------------------------------
;! (4) _VoiceCtr2                                            4     2      2    1637
;!                                             16 COMRAM     4     2      2
;!                          _PlaySound
;! ---------------------------------------------------------------------------------
;! (1) _SleepProcess                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _POWER_INITIAL                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _IR_Key_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _GPIO_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Engineering_Mode_Api                                 0     0      0  117781
;!              _Goto_Engineering_Mode
;! ---------------------------------------------------------------------------------
;! (2) _Goto_Engineering_Mode                                0     0      0  117781
;!                           _BeepCtr1
;!          _Engineering_Adjust_JYTime
;!         _Engineering_Clear_WorkTime
;!      _Engineering_Flow_Compensation
;!    _Engineering_Voltage_Calibration
;!           _Get_Engineering_KeyValue
;!                   _Label_CloseAlarm
;!                          _PlaySound
;!                      _TouchKeyValue
;! ---------------------------------------------------------------------------------
;! (2) _TouchKeyValue                                        8     6      2      55
;!                                              9 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! (3) _Label_CloseAlarm                                     1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Engineering_Voltage_Calibration                      1     1      0   40447
;!                                             67 COMRAM     1     1      0
;!                           _BeepCtr1
;!                        _Cmd_Process
;!                           _Cmd_Send
;!             _Display_CumulativeTime
;!                     _Display_Timing
;!                   _E2prom_WriteData
;!          _Engineering_Timeout_Logic
;!           _Get_Engineering_KeyValue
;!                               _SEG1
;!                              _SEG11
;!                              _SEG12
;!                              _SEG13
;!                               _SEG2
;!                               _SEG3
;!                     _Update_Display
;!                            ___awdiv
;!                            ___awmod
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4    2772
;!                                              9 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (3) _Engineering_Flow_Compensation                        1     1      0   30767
;!                                             67 COMRAM     1     1      0
;!                           _BeepCtr1
;!                        _Cmd_Process
;!                           _Cmd_Send
;!             _Display_CumulativeTime
;!                     _Display_Timing
;!                   _E2prom_WriteData
;!_Engineering_Flow_Compensation_displ
;!          _Engineering_Timeout_Logic
;!           _Get_Engineering_KeyValue
;!                               _SEG1
;!                               _SEG2
;!                               _SEG3
;!                     _Update_Display
;! ---------------------------------------------------------------------------------
;! (4) _Engineering_Flow_Compensation_display1               1     1      0      62
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_Timing                                       7     1      6    7448
;!                                             33 COMRAM     7     1      6
;!                          _Label_Min
;!                      _Label_Running
;!                       _Label_Timing
;!                               _SEG1
;!                               _SEG2
;!                               _SEG3
;!                            ___lldiv
;!                            ___llmod
;! ---------------------------------------------------------------------------------
;! (3) _SEG3                                                 2     1      1     968
;!                                             18 COMRAM     2     1      1
;!                            ___llmod (ARG)
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _SEG2                                                 2     1      1     788
;!                                             31 COMRAM     2     1      1
;!                            ___lldiv (ARG)
;!                            ___llmod (ARG)
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _SEG1                                                 2     1      1     788
;!                                             31 COMRAM     2     1      1
;!                            ___lldiv (ARG)
;!                            ___llmod (ARG)
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _Label_Timing                                         1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_Running                                        1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_Min                                            1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Engineering_Clear_WorkTime                           0     0      0   11935
;!                           _BeepCtr1
;!                        _Cmd_Process
;!                           _Cmd_Send
;!                   _E2prom_WriteData
;!          _Engineering_Timeout_Logic
;!           _Get_Engineering_KeyValue
;! ---------------------------------------------------------------------------------
;! (3) _Engineering_Adjust_JYTime                            1     1      0   25736
;!                                             67 COMRAM     1     1      0
;!                           _BeepCtr1
;!                        _Cmd_Process
;!                           _Cmd_Send
;!             _Display_CumulativeTime
;!                   _E2prom_WriteData
;!          _Engineering_Timeout_Logic
;!           _Get_Engineering_KeyValue
;!                              _SEG10
;!                              _SEG11
;!                              _SEG12
;!                              _SEG13
;!                               _SEG9
;!                     _Update_Display
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4    2773
;!                                              9 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4    1165
;!                                             15 COMRAM     8     4      4
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _Update_Display                                       0     0      0    3071
;!                    _TM1629_WriteDat
;! ---------------------------------------------------------------------------------
;! (3) _TM1629_WriteDat                                      2     1      1    3071
;!                                             14 COMRAM     2     1      1
;!                            _Nop1629
;!               _TM1629_WriteByteData
;!                _TM1629_WriteCommand
;! ---------------------------------------------------------------------------------
;! (4) _TM1629_WriteCommand                                  1     1      0    1455
;!                                             13 COMRAM     1     1      0
;!                            _Nop1629
;!               _TM1629_WriteByteData
;! ---------------------------------------------------------------------------------
;! (5) _TM1629_WriteByteData                                 2     2      0     763
;!                                             11 COMRAM     2     2      0
;!                            _Nop1629
;! ---------------------------------------------------------------------------------
;! (6) _Nop1629                                              2     0      2     661
;!                                              9 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _Get_Engineering_KeyValue                            24    22      2    5263
;!                                             43 COMRAM    24    22      2
;!                            _sprintf
;!                             _strcmp
;! ---------------------------------------------------------------------------------
;! (4) _strcmp                                               5     3      2     853
;!                                              9 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (4) _sprintf                                             11     5      6    4182
;!                                             32 COMRAM    11     5      6
;!                            __doprnt
;! ---------------------------------------------------------------------------------
;! (2) __doprnt                                             20    17      3    3754
;!                                             21 COMRAM    11     8      3
;!                   Absolute function *
;!                            ___lwdiv
;!                              _putch *
;! ---------------------------------------------------------------------------------
;! (3) _putch                                                1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4    2381
;!                                             14 COMRAM     7     3      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) Absolute function(Fake)                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _Engineering_Timeout_Logic                            1     1      0     812
;!                                             16 COMRAM     1     1      0
;!                          _PlaySound
;! ---------------------------------------------------------------------------------
;! (4) _PlaySound                                            2     2      0     781
;!                                             14 COMRAM     2     2      0
;!                         _Voicedelay
;!                           _dat_high
;!                            _dat_low
;! ---------------------------------------------------------------------------------
;! (5) _dat_low                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _dat_high                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _Voicedelay                                           4     2      2     676
;!                                             10 COMRAM     4     2      2
;!                          _Delay10Us
;! ---------------------------------------------------------------------------------
;! (4) _E2prom_WriteData                                    51    51      0    1588
;!                                              0 BANK0     51    51      0
;!                    _E2prom_ReadData
;!                        _EEPROMwrite
;! ---------------------------------------------------------------------------------
;! (5) _EEPROMwrite                                          2     1      1     152
;!                                              9 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (5) _E2prom_ReadData                                     55    55      0     745
;!                                             11 COMRAM    55    55      0
;!                         _EEPROMread
;! ---------------------------------------------------------------------------------
;! (6) _EEPROMread                                           2     2      0      65
;!                                              9 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_CumulativeTime                               7     1      6    5707
;!                                             31 COMRAM     7     1      6
;!                        _Label_AddUp
;!                            _Label_h
;!                              _SEG10
;!                              _SEG11
;!                              _SEG12
;!                              _SEG13
;!                               _SEG9
;!                            ___aldiv (ARG)
;!                            ___lldiv
;!                            ___llmod
;! ---------------------------------------------------------------------------------
;! (4) ___llmod                                              9     1      8    1672
;!                                              9 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! (4) ___lldiv                                             13     5      8    1321
;!                                             18 COMRAM    13     5      8
;!                            ___llmod (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _SEG9                                                 1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG13                                                1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG12                                                1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG11                                                1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _SEG10                                                1     1      0     217
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_h                                              1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Label_AddUp                                          1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Cmd_Send                                             5     5      0     908
;!                                             25 COMRAM     5     5      0
;!                _CheckSum_Calculate2
;!                      _Uart2SendBuff
;! ---------------------------------------------------------------------------------
;! (4) _Uart2SendBuff                                        6     2      4     344
;!                                             10 COMRAM     6     2      4
;!                          _Uart2Send
;! ---------------------------------------------------------------------------------
;! (5) _Uart2Send                                            1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _Cmd_Process                                          5     5      0     598
;!                                             25 COMRAM     5     5      0
;!                _CheckSum_Calculate2
;! ---------------------------------------------------------------------------------
;! (4) _CheckSum_Calculate2                                 16    10      6     564
;!                                              9 COMRAM    16    10      6
;! ---------------------------------------------------------------------------------
;! (3) _BeepCtr1                                             2     0      2    2766
;!                                             15 COMRAM     2     0      2
;!                         _BeepEnable
;!                            _DelayMs
;! ---------------------------------------------------------------------------------
;! (3) _DelayMs                                              5     3      2    1444
;!                                             10 COMRAM     5     3      2
;!                          _Delay10Us
;! ---------------------------------------------------------------------------------
;! (6) _Delay10Us                                            1     1      0      68
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _EC11_Set_Value                                       2     2      0      71
;!                                             13 COMRAM     2     2      0
;!                     _Get_EC11_Count
;! ---------------------------------------------------------------------------------
;! (2) _Get_EC11_Count                                       4     2      2      34
;!                                              9 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _DataInit                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _BeepInit                                             0     0      0      31
;!                         _BeepEnable
;!                           _PWM_Init
;! ---------------------------------------------------------------------------------
;! (2) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _BeepCtr2                                             2     0      2     152
;!                                             10 COMRAM     2     0      2
;!                         _BeepEnable
;! ---------------------------------------------------------------------------------
;! (3) _BeepEnable                                           1     1      0      31
;!                                              9 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _InterruptHandlerLow                                  1     1      0       0
;!                                              8 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (10) _InterruptHandlerHigh                                2     2      0       1
;!                                              6 COMRAM     2     2      0
;!                     _EC11_Interrupt
;!                         _IR_IN_DATA
;!                    _Time0_Interrupt
;!                    _UART2_Interrupt
;! ---------------------------------------------------------------------------------
;! (11) _UART2_Interrupt                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (11) _Time0_Interrupt                                     0     0      0       0
;!                _usart2_receive_wait
;! ---------------------------------------------------------------------------------
;! (12) _usart2_receive_wait                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (11) _IR_IN_DATA                                          6     6      0       0
;!                                              0 COMRAM     6     6      0
;! ---------------------------------------------------------------------------------
;! (11) _EC11_Interrupt                                      0     0      0       1
;!                          _EC11_Scan
;! ---------------------------------------------------------------------------------
;! (12) _EC11_Scan                                           1     1      0       1
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 12
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _BeepCtr1
;!     _BeepEnable
;!     _DelayMs
;!       _Delay10Us
;!   _BeepCtr2
;!     _BeepEnable
;!   _BeepInit
;!     _BeepEnable
;!     _PWM_Init
;!   _Cmd_Process
;!     _CheckSum_Calculate2
;!   _Cmd_Send
;!     _CheckSum_Calculate2
;!     _Uart2SendBuff
;!       _Uart2Send
;!   _DataInit
;!   _DelayMs
;!     _Delay10Us
;!   _E2prom_ReadData
;!     _EEPROMread
;!   _EC11_Set_Value
;!     _Get_EC11_Count
;!   _Engineering_Mode_Api
;!     _Goto_Engineering_Mode
;!       _BeepCtr1
;!         _BeepEnable
;!         _DelayMs
;!           _Delay10Us
;!       _Engineering_Adjust_JYTime
;!         _BeepCtr1
;!           _BeepEnable
;!           _DelayMs
;!             _Delay10Us
;!         _Cmd_Process
;!           _CheckSum_Calculate2
;!         _Cmd_Send
;!           _CheckSum_Calculate2
;!           _Uart2SendBuff
;!             _Uart2Send
;!         _Display_CumulativeTime
;!           _Label_AddUp
;!           _Label_h
;!           _SEG10
;!           _SEG11
;!           _SEG12
;!           _SEG13
;!           _SEG9
;!           ___aldiv (ARG)
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!         _E2prom_WriteData
;!           _E2prom_ReadData
;!             _EEPROMread
;!           _EEPROMwrite
;!         _Engineering_Timeout_Logic
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!         _Get_Engineering_KeyValue
;!           _sprintf
;!             __doprnt
;!               Absolute function(Fake) *
;!               ___lwdiv *
;!                 ___lwmod (ARG)
;!               _putch *
;!           _strcmp
;!         _SEG10
;!         _SEG11
;!         _SEG12
;!         _SEG13
;!         _SEG9
;!         _Update_Display
;!           _TM1629_WriteDat
;!             _Nop1629
;!             _TM1629_WriteByteData
;!               _Nop1629
;!             _TM1629_WriteCommand
;!               _Nop1629
;!               _TM1629_WriteByteData
;!                 _Nop1629
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!       _Engineering_Clear_WorkTime
;!         _BeepCtr1
;!           _BeepEnable
;!           _DelayMs
;!             _Delay10Us
;!         _Cmd_Process
;!           _CheckSum_Calculate2
;!         _Cmd_Send
;!           _CheckSum_Calculate2
;!           _Uart2SendBuff
;!             _Uart2Send
;!         _E2prom_WriteData
;!           _E2prom_ReadData
;!             _EEPROMread
;!           _EEPROMwrite
;!         _Engineering_Timeout_Logic
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!         _Get_Engineering_KeyValue
;!           _sprintf
;!             __doprnt
;!               Absolute function(Fake) *
;!               ___lwdiv *
;!                 ___lwmod (ARG)
;!               _putch *
;!           _strcmp
;!       _Engineering_Flow_Compensation
;!         _BeepCtr1
;!           _BeepEnable
;!           _DelayMs
;!             _Delay10Us
;!         _Cmd_Process
;!           _CheckSum_Calculate2
;!         _Cmd_Send
;!           _CheckSum_Calculate2
;!           _Uart2SendBuff
;!             _Uart2Send
;!         _Display_CumulativeTime
;!           _Label_AddUp
;!           _Label_h
;!           _SEG10
;!           _SEG11
;!           _SEG12
;!           _SEG13
;!           _SEG9
;!           ___aldiv (ARG)
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!         _Display_Timing
;!           _Label_Min
;!           _Label_Running
;!           _Label_Timing
;!           _SEG1
;!             ___lldiv (ARG)
;!               ___llmod (ARG)
;!             ___llmod (ARG)
;!             ___lwdiv (ARG)
;!               ___lwmod (ARG)
;!           _SEG2
;!             ___lldiv (ARG)
;!               ___llmod (ARG)
;!             ___llmod (ARG)
;!             ___lwdiv (ARG)
;!               ___lwmod (ARG)
;!             ___lwmod (ARG)
;!           _SEG3
;!             ___llmod (ARG)
;!             ___lwmod (ARG)
;!           ___lldiv
;!             ___llmod (ARG)
;!           ___llmod
;!         _E2prom_WriteData
;!           _E2prom_ReadData
;!             _EEPROMread
;!           _EEPROMwrite
;!         _Engineering_Flow_Compensation_display1
;!         _Engineering_Timeout_Logic
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!         _Get_Engineering_KeyValue
;!           _sprintf
;!             __doprnt
;!               Absolute function(Fake) *
;!               ___lwdiv *
;!                 ___lwmod (ARG)
;!               _putch *
;!           _strcmp
;!         _SEG1
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!         _SEG2
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!           ___lwmod (ARG)
;!         _SEG3
;!           ___llmod (ARG)
;!           ___lwmod (ARG)
;!         _Update_Display
;!           _TM1629_WriteDat
;!             _Nop1629
;!             _TM1629_WriteByteData
;!               _Nop1629
;!             _TM1629_WriteCommand
;!               _Nop1629
;!               _TM1629_WriteByteData
;!                 _Nop1629
;!       _Engineering_Voltage_Calibration
;!         _BeepCtr1
;!           _BeepEnable
;!           _DelayMs
;!             _Delay10Us
;!         _Cmd_Process
;!           _CheckSum_Calculate2
;!         _Cmd_Send
;!           _CheckSum_Calculate2
;!           _Uart2SendBuff
;!             _Uart2Send
;!         _Display_CumulativeTime
;!           _Label_AddUp
;!           _Label_h
;!           _SEG10
;!           _SEG11
;!           _SEG12
;!           _SEG13
;!           _SEG9
;!           ___aldiv (ARG)
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!         _Display_Timing
;!           _Label_Min
;!           _Label_Running
;!           _Label_Timing
;!           _SEG1
;!             ___lldiv (ARG)
;!               ___llmod (ARG)
;!             ___llmod (ARG)
;!             ___lwdiv (ARG)
;!               ___lwmod (ARG)
;!           _SEG2
;!             ___lldiv (ARG)
;!               ___llmod (ARG)
;!             ___llmod (ARG)
;!             ___lwdiv (ARG)
;!               ___lwmod (ARG)
;!             ___lwmod (ARG)
;!           _SEG3
;!             ___llmod (ARG)
;!             ___lwmod (ARG)
;!           ___lldiv
;!             ___llmod (ARG)
;!           ___llmod
;!         _E2prom_WriteData
;!           _E2prom_ReadData
;!             _EEPROMread
;!           _EEPROMwrite
;!         _Engineering_Timeout_Logic
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!         _Get_Engineering_KeyValue
;!           _sprintf
;!             __doprnt
;!               Absolute function(Fake) *
;!               ___lwdiv *
;!                 ___lwmod (ARG)
;!               _putch *
;!           _strcmp
;!         _SEG1
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!         _SEG11
;!         _SEG12
;!         _SEG13
;!         _SEG2
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!           ___lwmod (ARG)
;!         _SEG3
;!           ___llmod (ARG)
;!           ___lwmod (ARG)
;!         _Update_Display
;!           _TM1629_WriteDat
;!             _Nop1629
;!             _TM1629_WriteByteData
;!               _Nop1629
;!             _TM1629_WriteCommand
;!               _Nop1629
;!               _TM1629_WriteByteData
;!                 _Nop1629
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___lwdiv
;!           ___lwmod (ARG)
;!         ___lwmod
;!       _Get_Engineering_KeyValue
;!         _sprintf
;!           __doprnt
;!             Absolute function(Fake) *
;!             ___lwdiv *
;!               ___lwmod (ARG)
;!             _putch *
;!         _strcmp
;!       _Label_CloseAlarm
;!       _PlaySound
;!         _Voicedelay
;!           _Delay10Us
;!         _dat_high
;!         _dat_low
;!       _TouchKeyValue
;!   _GPIO_Init
;!   _Get_Key_Demo
;!     _TSC_GetCsKey
;!     _TSC_GetLocalKey
;!   _IR_Key_Init
;!   _IR_MoreCtr
;!   _POWER_INITIAL
;!   _PlaySound
;!     _Voicedelay
;!       _Delay10Us
;!     _dat_high
;!     _dat_low
;!   _SleepProcess
;!   _StartUpVoice
;!     _DelayMs
;!       _Delay10Us
;!     _VoiceCtr2
;!       _PlaySound
;!         _Voicedelay
;!           _Delay10Us
;!         _dat_high
;!         _dat_low
;!   _TIM0_INITIAL
;!   _TM1629Init
;!     _DelayMs
;!       _Delay10Us
;!     _TM1629_Luminance
;!       _Nop1629
;!       _TM1629_WriteCommand
;!         _Nop1629
;!         _TM1629_WriteByteData
;!           _Nop1629
;!     _Update_Display
;!       _TM1629_WriteDat
;!         _Nop1629
;!         _TM1629_WriteByteData
;!           _Nop1629
;!         _TM1629_WriteCommand
;!           _Nop1629
;!           _TM1629_WriteByteData
;!             _Nop1629
;!   _TSC_DataProcessing
;!   _TSC_INITIAL
;!     _LVD_INITIAL
;!     _ReadCap
;!       _SetTouchFreq
;!     _TIM2_INITIAL
;!   _TSC_Scan
;!     _ConmunicateToPc
;!       _ReceiveDataPc
;!         _uart_rx
;!       _SendDataToPC
;!         _uart_tx
;!           _uart_delay
;!       _TSC_GetPrevData
;!     _TSC_Start_Test
;!       _GetLocalCount
;!       _HardDiv
;!       _TK_CAP_DISCHARGE
;!       _TestReadCap
;!   _Update_Display
;!     _TM1629_WriteDat
;!       _Nop1629
;!       _TM1629_WriteByteData
;!         _Nop1629
;!       _TM1629_WriteCommand
;!         _Nop1629
;!         _TM1629_WriteByteData
;!           _Nop1629
;!   _Voice_Init
;!   _WDT_INITIAL
;!   _control
;!     _Display
;!       _Concentration_Low_Alarm
;!         _VoiceCtr2
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!       _Display_Anion
;!       _Display_Concentration
;!         _Label_Concentration
;!         _Label_Percent
;!         _SEG6
;!         _SEG7
;!         _SEG8
;!         ___lwdiv
;!           ___lwmod (ARG)
;!         ___lwmod
;!       _Display_CumulativeTime
;!         _Label_AddUp
;!         _Label_h
;!         _SEG10
;!         _SEG11
;!         _SEG12
;!         _SEG13
;!         _SEG9
;!         ___aldiv (ARG)
;!         ___lldiv (ARG)
;!           ___llmod (ARG)
;!         ___llmod (ARG)
;!       _Display_FilterMesh
;!       _Display_Flow
;!         _Label_Flow
;!         _Label_L_min
;!         _SEG4
;!         _SEG5
;!         ___lwdiv
;!           ___lwmod (ARG)
;!         ___lwmod
;!       _Display_SysSta
;!       _Display_Timing
;!         _Label_Min
;!         _Label_Running
;!         _Label_Timing
;!         _SEG1
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!         _SEG2
;!           ___lldiv (ARG)
;!             ___llmod (ARG)
;!           ___llmod (ARG)
;!           ___lwdiv (ARG)
;!             ___lwmod (ARG)
;!           ___lwmod (ARG)
;!         _SEG3
;!           ___llmod (ARG)
;!           ___lwmod (ARG)
;!         ___lldiv
;!           ___llmod (ARG)
;!         ___llmod
;!       _Display_Voice
;!       _Label_CloseAlarm
;!       _SEG1
;!         ___lldiv (ARG)
;!           ___llmod (ARG)
;!         ___llmod (ARG)
;!         ___lwdiv (ARG)
;!           ___lwmod (ARG)
;!       _SEG2
;!         ___lldiv (ARG)
;!           ___llmod (ARG)
;!         ___llmod (ARG)
;!         ___lwdiv (ARG)
;!           ___lwmod (ARG)
;!         ___lwmod (ARG)
;!       _SEG3
;!         ___llmod (ARG)
;!         ___lwmod (ARG)
;!       _TM1629_Luminance
;!         _Nop1629
;!         _TM1629_WriteCommand
;!           _Nop1629
;!           _TM1629_WriteByteData
;!             _Nop1629
;!       ___aldiv
;!       ___almod
;!     _ErrorCtr
;!       _Alarm_Sound
;!         _DelayMs
;!           _Delay10Us
;!         _VoiceCtr2
;!           _PlaySound
;!             _Voicedelay
;!               _Delay10Us
;!             _dat_high
;!             _dat_low
;!       _BeepCtr1
;!         _BeepEnable
;!         _DelayMs
;!           _Delay10Us
;!       _BeepEnable
;!       _Cmd_Process
;!         _CheckSum_Calculate2
;!       _Cmd_Send
;!         _CheckSum_Calculate2
;!         _Uart2SendBuff
;!           _Uart2Send
;!       _DelayMs
;!         _Delay10Us
;!       _Display_SysSta
;!       _E2prom_WriteData
;!         _E2prom_ReadData
;!           _EEPROMread
;!         _EEPROMwrite
;!       _ERR_Code
;!         _Display_SysSta
;!         _Update_Display
;!           _TM1629_WriteDat
;!             _Nop1629
;!             _TM1629_WriteByteData
;!               _Nop1629
;!             _TM1629_WriteCommand
;!               _Nop1629
;!               _TM1629_WriteByteData
;!                 _Nop1629
;!       _Get_Key_Demo
;!         _TSC_GetCsKey
;!         _TSC_GetLocalKey
;!       _IR_MoreCtr
;!       _Label_CloseAlarm
;!       _TM1629_Luminance
;!         _Nop1629
;!         _TM1629_WriteCommand
;!           _Nop1629
;!           _TM1629_WriteByteData
;!             _Nop1629
;!       _TSC_DataProcessing
;!       _TSC_Scan
;!         _ConmunicateToPc
;!           _ReceiveDataPc
;!             _uart_rx
;!           _SendDataToPC
;!             _uart_tx
;!               _uart_delay
;!           _TSC_GetPrevData
;!         _TSC_Start_Test
;!           _GetLocalCount
;!           _HardDiv
;!           _TK_CAP_DISCHARGE
;!           _TestReadCap
;!       _Update_Display
;!         _TM1629_WriteDat
;!           _Nop1629
;!           _TM1629_WriteByteData
;!             _Nop1629
;!           _TM1629_WriteCommand
;!             _Nop1629
;!             _TM1629_WriteByteData
;!               _Nop1629
;!       ___lwmod
;!       _key_scan
;!         _IR_KeyReadCtr
;!         _TouchKeyValue
;!     _TimingClosureSet
;!       ___awmod
;!     _Update_Display
;!       _TM1629_WriteDat
;!         _Nop1629
;!         _TM1629_WriteByteData
;!           _Nop1629
;!         _TM1629_WriteCommand
;!           _Nop1629
;!           _TM1629_WriteByteData
;!             _Nop1629
;!     _VoiceDrive
;!       _SOS_Voice
;!       _VoiceCtr
;!         _PlaySound
;!           _Voicedelay
;!             _Delay10Us
;!           _dat_high
;!           _dat_low
;!       _VoiceFilterMesh
;!         _E2prom_WriteData
;!           _E2prom_ReadData
;!             _EEPROMread
;!           _EEPROMwrite
;!       _Voice_Half_Hour
;!         _PlaySound
;!           _Voicedelay
;!             _Delay10Us
;!           _dat_high
;!           _dat_low
;!       ___awmod
;!   _encoder_Init
;!   _key_scan
;!     _IR_KeyReadCtr
;!     _TouchKeyValue
;!   _printf
;!     __doprnt
;!       Absolute function(Fake) *
;!       ___lwdiv *
;!         ___lwmod (ARG)
;!       _putch *
;!   _uart2_Init
;!
;! _InterruptHandlerLow (ROOT)
;!
;! _InterruptHandlerHigh (ROOT)
;!   _EC11_Interrupt
;!     _EC11_Scan
;!   _IR_IN_DATA
;!   _Time0_Interrupt
;!     _usart2_receive_wait
;!   _UART2_Interrupt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      4      BF      10       74.6%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0      FE       8       99.2%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     33      A0       5      100.0%
;!BITCOMRAM           5E      0       1       0        1.1%
;!COMRAM              5E     48      54       1       89.4%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     2B1       6        0.0%
;!DATA                 0      0     2B1       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 313 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK2 ] unsigned int 
;;  j               2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       4       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_BeepCtr1
;;		_BeepCtr2
;;		_BeepInit
;;		_Cmd_Process
;;		_Cmd_Send
;;		_DataInit
;;		_DelayMs
;;		_E2prom_ReadData
;;		_EC11_Set_Value
;;		_Engineering_Mode_Api
;;		_GPIO_Init
;;		_Get_Key_Demo
;;		_IR_Key_Init
;;		_IR_MoreCtr
;;		_POWER_INITIAL
;;		_PlaySound
;;		_SleepProcess
;;		_StartUpVoice
;;		_TIM0_INITIAL
;;		_TM1629Init
;;		_TSC_DataProcessing
;;		_TSC_INITIAL
;;		_TSC_Scan
;;		_Update_Display
;;		_Voice_Init
;;		_WDT_INITIAL
;;		_control
;;		_encoder_Init
;;		_key_scan
;;		_printf
;;		_uart2_Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	313
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	313
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	callstack 19
	line	315
	
l56628:
	line	316
	
l56630:
;main.c: 316: DelayMs(50);
	movlw	high(032h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(032h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	317
	
l56632:
;main.c: 317: DataInit();
	call	_DataInit	;wreg free
	line	318
	
l56634:; BSR set to: 0

;main.c: 318: WDT_INITIAL();
	call	_WDT_INITIAL	;wreg free
	line	320
	
l56636:; BSR set to: 15

;main.c: 320: POWER_INITIAL();
	call	_POWER_INITIAL	;wreg free
	line	322
	
l56638:; BSR set to: 14

;main.c: 322: TSC_INITIAL();
	call	_TSC_INITIAL	;wreg free
	line	323
	
l56640:; BSR set to: 14

;main.c: 323: GPIO_Init();
	call	_GPIO_Init	;wreg free
	line	324
	
l56642:; BSR set to: 14

;main.c: 324: E2prom_ReadData();
	call	_E2prom_ReadData	;wreg free
	line	325
	
l56644:; BSR set to: 0

;main.c: 325: Voice_Init();
	call	_Voice_Init	;wreg free
	line	326
	
l56646:; BSR set to: 14

;main.c: 326: PlaySound(welcome);
	movlw	(02h)&0ffh
	
	call	_PlaySound
	line	328
	
l56648:
;main.c: 328: IR_Key_Init();
	call	_IR_Key_Init	;wreg free
	line	329
	
l56650:; BSR set to: 15

;main.c: 329: BeepInit();
	call	_BeepInit	;wreg free
	line	330
	
l56652:
;main.c: 330: encoder_Init();
	call	_encoder_Init	;wreg free
	line	331
	
l56654:; BSR set to: 15

;main.c: 331: uart2_Init();
	call	_uart2_Init	;wreg free
	line	332
	
l56656:; BSR set to: 15

;main.c: 332: printf("start\r\n");
		movlw	low(STR_1)
	movwf	((c:printf@f))^00h,c

	call	_printf	;wreg free
	line	333
	
l56658:
;main.c: 333: TIM0_INITIAL();
	call	_TIM0_INITIAL	;wreg free
	line	334
	
l56660:; BSR set to: 15

;main.c: 334: TM1629Init();
	call	_TM1629Init	;wreg free
	line	338
	
l56662:
;main.c: 338: for(i=0; i<15; i++) {DelayMs(100);asm("clrwdt"); }
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l56668:; BSR set to: 2

	movlw	high(064h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(064h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
# 338 "main.c"
clrwdt ;# 
psect	text0
	
l56670:
	movlb	2	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l56672:; BSR set to: 2

		movf	((main@i+1))&0ffh,w
	bnz	u17110
	movlw	15
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u17111
	goto	u17110

u17111:
	goto	l56668
u17110:
	line	339
	
l56674:; BSR set to: 2

;main.c: 339: for(i=0; i<16; i++) DisBuf[i] = 0x00;
	movlw	high(0)
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l56680:; BSR set to: 2

	movf	((main@i))&0ffh,w
	addlw	low(_DisBuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	
l56682:; BSR set to: 2

	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l56684:; BSR set to: 2

		movf	((main@i+1))&0ffh,w
	bnz	u17120
	movlw	16
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u17121
	goto	u17120

u17121:
	goto	l56680
u17120:
	line	340
	
l56686:; BSR set to: 2

;main.c: 340: Update_Display();
	call	_Update_Display	;wreg free
	line	342
	
l56688:
;main.c: 342: LATDbits.LATD1 = 0;
	bcf	((c:3980))^0f00h,c,1	;volatile
	line	346
	
l56690:
;main.c: 346: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	347
	
l56692:
;main.c: 347: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	348
	
l56694:
;main.c: 348: RunData.VoiceNum = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	349
	
l56696:; BSR set to: 0

;main.c: 349: RunData.ErrCodeSecCount = 0;
	movlw	high(0)
	movwf	(1+(_RunData+03Fh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+03Fh))&0ffh
	line	350
	
l56698:; BSR set to: 0

;main.c: 350: printf("Running\r\n");
		movlw	low(STR_2)
	movwf	((c:printf@f))^00h,c

	call	_printf	;wreg free
	line	354
	
l56700:
;main.c: 353: {;main.c: 354: Engineering_Mode_Api();
	call	_Engineering_Mode_Api	;wreg free
	line	356
	
l56702:
;main.c: 356: key_scan();
	call	_key_scan	;wreg free
	line	357
	
l56704:; BSR set to: 0

;main.c: 357: if(RunData.StandbySta == 0)
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u17131
	goto	u17130
u17131:
	goto	l56708
u17130:
	line	359
	
l56706:; BSR set to: 0

;main.c: 358: {;main.c: 359: BeepCtr2((EncoderData.Time<10));
	movlb	1	; () banked
	btfsc	((_EncoderData+1))&0ffh,7
	goto	u17141
	movf	((_EncoderData+1))&0ffh,w
	bnz	u17140
	movlw	10
	subwf	 ((_EncoderData))&0ffh,w
	btfss	status,0
	goto	u17141
	goto	u17140

u17141:
	movlw	1
	goto	u17150
u17140:
	movlw	0
u17150:
	movwf	((c:BeepCtr2@value))^00h,c
	clrf	((c:BeepCtr2@value+1))^00h,c
	call	_BeepCtr2	;wreg free
	line	360
;main.c: 360: BeepCtr1(KeyDat.key_value);
	movff	0+(_KeyDat+06h),(c:BeepCtr1@value)
	movff	1+(_KeyDat+06h),(c:BeepCtr1@value+1)
	call	_BeepCtr1	;wreg free
	line	362
	
l56708:
;main.c: 361: };main.c: 362: if(KeyDat.key_value==0x01)
	movlb	0	; () banked
		decf	(0+(_KeyDat+06h))&0ffh,w
iorwf	(1+(_KeyDat+06h))&0ffh,w
	btfss	status,2
	goto	u17161
	goto	u17160

u17161:
	goto	l2740
u17160:
	line	363
	
l56710:; BSR set to: 0

;main.c: 363: BeepCtr1(KeyDat.key_value);
	movff	0+(_KeyDat+06h),(c:BeepCtr1@value)
	movff	1+(_KeyDat+06h),(c:BeepCtr1@value+1)
	call	_BeepCtr1	;wreg free
	
l2740:
	line	364
;main.c: 364: EC11_Set_Value();
	call	_EC11_Set_Value	;wreg free
	line	365
	
l56712:; BSR set to: 0

;main.c: 365: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	366
	
l56714:
;main.c: 366: StartUpVoice();
	call	_StartUpVoice	;wreg free
	line	367
	
l56716:
;main.c: 367: control();
	call	_control	;wreg free
	line	369
	
l56718:
;main.c: 369: IR_MoreCtr();
	call	_IR_MoreCtr	;wreg free
	line	370
# 370 "main.c"
clrwdt ;# 
psect	text0
	line	371
	
l56720:
;main.c: 371: TSC_Scan();
	call	_TSC_Scan	;wreg free
	line	372
	
l56722:
;main.c: 372: if(TSC_DataProcessing()== 1)
	call	_TSC_DataProcessing	;wreg free
	decf	wreg
	btfss	status,2
	goto	u17171
	goto	u17170
u17171:
	goto	l56726
u17170:
	line	374
	
l56724:; BSR set to: 1

;main.c: 373: {;main.c: 374: Get_Key_Demo();
	call	_Get_Key_Demo	;wreg free
	line	389
	
l56726:
;main.c: 375: };main.c: 389: if(KeyDat.key_value||(EncoderData.Time<200))
	movlb	0	; () banked
	movf	(0+(_KeyDat+06h))&0ffh,w
iorwf	(1+(_KeyDat+06h))&0ffh,w
	btfss	status,2
	goto	u17181
	goto	u17180

u17181:
	goto	l56730
u17180:
	
l56728:; BSR set to: 0

	movlb	1	; () banked
	btfsc	((_EncoderData+1))&0ffh,7
	goto	u17190
	movf	((_EncoderData+1))&0ffh,w
	bnz	u17191
	movlw	200
	subwf	 ((_EncoderData))&0ffh,w
	btfsc	status,0
	goto	u17191
	goto	u17190

u17191:
	goto	l56732
u17190:
	line	391
	
l56730:
;main.c: 390: {;main.c: 391: RunData.AOD_TimeCount = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+02Dh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+02Dh))&0ffh
	line	394
	
l56732:
;main.c: 392: };main.c: 394: if(i>100)
	movlb	2	; () banked
		movf	((main@i+1))&0ffh,w
	bnz	u17200
	movlw	101
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u17201
	goto	u17200

u17201:
	goto	l56738
u17200:
	line	407
	
l56734:; BSR set to: 2

;main.c: 395: {;main.c: 407: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	414
	
l56736:
;main.c: 414: i=0;
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	line	417
	
l56738:; BSR set to: 2

;main.c: 416: };main.c: 417: i++;
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	line	419
	
l56740:; BSR set to: 2

;main.c: 419: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	420
	
l56742:
;main.c: 420: SleepProcess();
	call	_SleepProcess	;wreg free
	goto	l56700
	global	start
	goto	start
	opt callstack 0
	line	423
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_uart2_Init

;; *************** function _uart2_Init *****************
;; Defined at:
;;		line 9 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"uart2.c"
	line	9
global __ptext1
__ptext1:
psect	text1
	file	"uart2.c"
	line	9
	global	__size_of_uart2_Init
	__size_of_uart2_Init	equ	__end_of_uart2_Init-_uart2_Init
	
_uart2_Init:
;incstack = 0
	opt	callstack 26
	line	11
	
l56468:; BSR set to: 15

;uart2.c: 11: PCKEN2bits.UR2CKEN = 1;
	bsf	((3881))&0ffh,6	;volatile
	line	12
;uart2.c: 12: TRISFbits.TRISF0 = 1;
	bsf	((c:3991))^0f00h,c,0	;volatile
	line	13
;uart2.c: 13: TRISFbits.TRISF1 = 0;
	bcf	((c:3991))^0f00h,c,1	;volatile
	line	14
;uart2.c: 14: LATEbits.LATE6 = 1;
	bsf	((c:3981))^0f00h,c,6	;volatile
	line	16
	
l56470:; BSR set to: 15

;uart2.c: 16: AFP3bits.TX2PO = 0x01;
	movf	((3915))&0ffh,w	;volatile
	andlw	not (((1<<3)-1)<<3)
	iorlw	(01h & ((1<<3)-1))<<3
	movwf	((3915))&0ffh	;volatile
	line	17
;uart2.c: 17: AFP3bits.RX2PO = 0x01;
	movf	((3915))&0ffh,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((3915))&0ffh	;volatile
	line	19
	
l56472:; BSR set to: 15

;uart2.c: 19: UR2CR1bits.UR2HDSEL = 0;
	bcf	((3842))&0ffh,7	;volatile
	line	20
	
l56474:; BSR set to: 15

;uart2.c: 20: UR2CR1bits.UR2STOP = 0;
	bcf	((3842))&0ffh,6	;volatile
	line	21
	
l56476:; BSR set to: 15

;uart2.c: 21: UR2CR1bits.UR2MODE = 0;
	bcf	((3842))&0ffh,5	;volatile
	line	22
	
l56478:; BSR set to: 15

;uart2.c: 22: UR2CR1bits.UR2PCEN = 0;
	bcf	((3842))&0ffh,3	;volatile
	line	23
	
l56480:; BSR set to: 15

;uart2.c: 23: UR2CR1bits.UR2RXEN = 1;
	bsf	((3842))&0ffh,2	;volatile
	line	24
	
l56482:; BSR set to: 15

;uart2.c: 24: UR2CR1bits.UR2TXEN = 1;
	bsf	((3842))&0ffh,1	;volatile
	line	26
	
l56484:; BSR set to: 15

;uart2.c: 26: UR2CR2bits.UR2BDM = 0;
	bcf	((3843))&0ffh,3	;volatile
	line	27
;uart2.c: 27: UR2CR2bits.UR2BRRH = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	((3843))&0ffh	;volatile
	line	28
;uart2.c: 28: UR2BRRL =104;
	movlw	low(068h)
	movwf	((3844))&0ffh	;volatile
	line	29
	
l56486:; BSR set to: 15

;uart2.c: 29: UR2CR2bits.UR2RXNEIE = 1;
	bsf	((3843))&0ffh,1	;volatile
	line	30
;uart2.c: 30: UR2STAT = 0;
	movlw	low(0)
	movwf	((3845))&0ffh	;volatile
	line	31
;uart2.c: 31: INTCON1 = 0B11000000;
	movlw	low(0C0h)
	movwf	((c:4082))^0f00h,c	;volatile
	line	32
	
l56488:; BSR set to: 15

;uart2.c: 32: IPEN = 0;
	bcf	c:(31975/8),(31975)&7	;volatile
	line	33
	
l56490:; BSR set to: 15

;uart2.c: 33: UR2CR1bits.UR2EN=1;
	bsf	((3842))&0ffh,0	;volatile
	line	34
	
l56492:; BSR set to: 15

;uart2.c: 34: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	35
	
l28439:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_uart2_Init
	__end_of_uart2_Init:
	signat	_uart2_Init,89
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\printf.c"
;; Parameters:    Size  Location     Type
;;  f               1   32[COMRAM] PTR const unsigned char 
;;		 -> STR_2(10), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  pb              4   34[COMRAM] struct __prbuf
;;  ap              1   33[COMRAM] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   32[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 30/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\printf.c"
	line	13
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\printf.c"
	line	13
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:; BSR set to: 15

;incstack = 0
	opt	callstack 24
	line	23
	
l56494:
		movlw	low(0)
	movwf	((c:printf@pb))^00h,c
	movlw	high(0)
	movwf	((c:printf@pb+1))^00h,c

	line	24
		movlw	low(_putch)
	movwf	(0+((c:printf@pb)+02h))^00h,c
	movlw	high(_putch)
	movwf	(1+((c:printf@pb)+02h))^00h,c

	line	25
		movlw	low(?_printf+01h)
	movwf	((c:printf@ap))^00h,c

	line	26
	
l56496:
;	Return value of _printf is never used
		movlw	low(printf@pb)
	movwf	((c:__doprnt@pb))^00h,c

		movff	(c:printf@f),(c:__doprnt@f)

		movlw	low(printf@ap)
	movwf	((c:__doprnt@ap))^00h,c

	call	__doprnt	;wreg free
	line	28
	
l42693:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_encoder_Init

;; *************** function _encoder_Init *****************
;; Defined at:
;;		line 5 in file "encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"encoder.c"
	line	5
global __ptext3
__ptext3:
psect	text3
	file	"encoder.c"
	line	5
	global	__size_of_encoder_Init
	__size_of_encoder_Init	equ	__end_of_encoder_Init-_encoder_Init
	
_encoder_Init:
;incstack = 0
	opt	callstack 26
	line	7
	
l56452:
;encoder.c: 7: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	8
;encoder.c: 8: TRISDbits.TRISD6 = 1;
	bsf	((c:3989))^0f00h,c,6	;volatile
	line	9
;encoder.c: 9: WPUDbits.WPUD6 = 1;
	movlb	14	; () banked
	bsf	((3595))&0ffh,6	;volatile
	line	10
;encoder.c: 10: WPDDbits.WPDD6 = 0;
	bcf	((3587))&0ffh,6	;volatile
	line	12
;encoder.c: 12: TRISDbits.TRISD5 = 1;
	bsf	((c:3989))^0f00h,c,5	;volatile
	line	13
;encoder.c: 13: WPUDbits.WPUD5 = 1;
	bsf	((3595))&0ffh,5	;volatile
	line	14
;encoder.c: 14: WPDDbits.WPDD5 = 0;
	bcf	((3587))&0ffh,5	;volatile
	line	16
;encoder.c: 16: IPEN = 0;
	bcf	c:(31975/8),(31975)&7	;volatile
	line	17
	
l56454:; BSR set to: 14

;encoder.c: 17: EPS3bits.EPSEL6 = 0b011;
	movlb	15	; () banked
	movf	((3930))&0ffh,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(03h & ((1<<3)-1))<<0
	movwf	((3930))&0ffh	;volatile
	line	19
	
l56456:; BSR set to: 15

;encoder.c: 19: ITYPE1 &= 0B11001111;
	movlw	(0CFh)&0ffh
	andwf	((3911))&0ffh	;volatile
	line	20
	
l56458:; BSR set to: 15

;encoder.c: 20: ITYPE1 |= 0B00100000;
	bsf	(0+(5/8)+(3911))&0ffh,(5)&7	;volatile
	line	22
	
l56460:; BSR set to: 15

;encoder.c: 22: INTCON2bits.INT6IF = 0;
	bcf	((c:4081))^0f00h,c,6	;volatile
	line	23
	
l56462:; BSR set to: 15

;encoder.c: 23: INTCON3bits.INT6IE = 1;
	bsf	((c:4080))^0f00h,c,6	;volatile
	line	24
	
l56464:; BSR set to: 15

;encoder.c: 24: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	25
	
l56466:; BSR set to: 15

;encoder.c: 25: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	26
	
l23392:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_encoder_Init
	__end_of_encoder_Init:
	signat	_encoder_Init,89
	global	_control

;; *************** function _control *****************
;; Defined at:
;;		line 474 in file "control.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_Display
;;		_ErrorCtr
;;		_TimingClosureSet
;;		_Update_Display
;;		_VoiceDrive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"control.c"
	line	474
global __ptext4
__ptext4:
psect	text4
	file	"control.c"
	line	474
	global	__size_of_control
	__size_of_control	equ	__end_of_control-_control
	
_control:; BSR set to: 15

;incstack = 0
	opt	callstack 19
	line	478
	
l56600:
;control.c: 476: static int i = 0;;control.c: 478: if (KeyDat.key_short_value == 0x01)
	movlb	0	; () banked
		decf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u17051
	goto	u17050

u17051:
	goto	l56604
u17050:
	line	480
	
l56602:; BSR set to: 0

;control.c: 479: {;control.c: 480: RunData.StandbySta = !RunData.StandbySta;
	movf	(0+(_RunData+029h))&0ffh,w
	btfsc	status,2
	goto	u17061
	goto	u17060
u17061:
	movlw	1
	goto	u17070
u17060:
	movlw	0
u17070:
	movwf	(0+(_RunData+029h))&0ffh
	line	483
	
l56604:; BSR set to: 0

;control.c: 481: };control.c: 483: if ((RunData.Timing == 0) && (RunData.TimingFlag == 1))
	movf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfss	status,2
	goto	u17081
	goto	u17080

u17081:
	goto	l36465
u17080:
	
l56606:; BSR set to: 0

		decf	(0+(_RunData+014h))&0ffh,w
	btfss	status,2
	goto	u17091
	goto	u17090

u17091:
	goto	l36465
u17090:
	line	485
	
l56608:; BSR set to: 0

;control.c: 484: {;control.c: 485: RunData.TimingVoiceFlag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+015h))&0ffh
	line	486
;control.c: 486: RunData.StandbySta = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+029h))&0ffh
	line	487
	
l36465:; BSR set to: 0

	line	488
;control.c: 487: };control.c: 488: if (RunData.StandbySta == 0)
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u17101
	goto	u17100
u17101:
	goto	l36466
u17100:
	line	490
	
l56610:; BSR set to: 0

;control.c: 489: {;control.c: 490: RunData.TimingVoiceFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+015h))&0ffh
	line	491
	
l56612:; BSR set to: 0

;control.c: 491: LATDbits.LATD7 = 0;
	bcf	((c:3980))^0f00h,c,7	;volatile
	line	492
	
l56614:; BSR set to: 0

;control.c: 492: TimingClosureSet();
	call	_TimingClosureSet	;wreg free
	line	493
;control.c: 493: }
	goto	l56618
	line	494
	
l36466:; BSR set to: 0

	line	496
;control.c: 494: else;control.c: 495: {;control.c: 496: LATDbits.LATD7 = 0;
	bcf	((c:3980))^0f00h,c,7	;volatile
	line	497
	
l56616:; BSR set to: 0

;control.c: 497: RunData.TimingFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+014h))&0ffh
	line	498
;control.c: 498: RunData.Timing = 0;
	movlw	high(0)
	movwf	(1+(_RunData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+012h))&0ffh
	line	499
;control.c: 499: RunData.RunTime = 0;
	movlw	high(0)
	movwf	(1+(_RunData+010h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+010h))&0ffh
	line	500
;control.c: 500: RunData.sec = 0;
	movlw	high(0)
	movwf	(1+(_RunData+03Bh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+03Bh))&0ffh
	line	501
;control.c: 501: RunData.SOSFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+01h))&0ffh
	line	504
	
l56618:; BSR set to: 0

;control.c: 502: };control.c: 504: VoiceDrive();
	call	_VoiceDrive	;wreg free
	line	505
	
l56620:
;control.c: 505: Display();
	call	_Display	;wreg free
	line	506
	
l56622:; BSR set to: 1

;control.c: 506: Update_Display();
	call	_Update_Display	;wreg free
	line	507
	
l56624:
;control.c: 507: ErrorCtr();
	call	_ErrorCtr	;wreg free
	line	508
	
l56626:
;control.c: 508: Update_Display();
	call	_Update_Display	;wreg free
	line	509
	
l36468:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_control
	__end_of_control:
	signat	_control,89
	global	_VoiceDrive

;; *************** function _VoiceDrive *****************
;; Defined at:
;;		line 175 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Flag            1   68[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_SOS_Voice
;;		_VoiceCtr
;;		_VoiceFilterMesh
;;		_Voice_Half_Hour
;;		___awmod
;; This function is called by:
;;		_control
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	175
global __ptext5
__ptext5:
psect	text5
	file	"voice.c"
	line	175
	global	__size_of_VoiceDrive
	__size_of_VoiceDrive	equ	__end_of_VoiceDrive-_VoiceDrive
	
_VoiceDrive:
;incstack = 0
	opt	callstack 21
	line	182
	
l55602:; BSR set to: 0

;voice.c: 177: static u8 key_press = 0;;voice.c: 182: if (sUsart2.LinkSta == 0) return;
	movlb	1	; () banked
	movf	(0+(_sUsart2+033h))&0ffh,w
	btfss	status,2
	goto	u15641
	goto	u15640
u15641:
	goto	l55606
u15640:
	goto	l31077
	
l55604:; BSR set to: 1

	goto	l31077
	line	183
	
l55606:; BSR set to: 1

;voice.c: 183: if (RunData.StandbySta == 1)
	movlb	0	; () banked
		decf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u15651
	goto	u15650

u15651:
	goto	l31078
u15650:
	line	184
	
l55608:; BSR set to: 0

;voice.c: 184: RunData.StandbyStaFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+032h))&0ffh
	
l31078:; BSR set to: 0

	line	185
;voice.c: 185: if (RunData.StandbySta == 0)
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u15661
	goto	u15660
u15661:
	goto	l55686
u15660:
	line	187
	
l55610:; BSR set to: 0

;voice.c: 186: {;voice.c: 187: if (RunData.StandbyStaFlag == 0)
	movf	(0+(_RunData+032h))&0ffh,w
	btfss	status,2
	goto	u15671
	goto	u15670
u15671:
	goto	l55614
u15670:
	line	190
	
l55612:; BSR set to: 0

;voice.c: 188: {;voice.c: 190: RunData.StandbyStaFlag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+032h))&0ffh
	line	194
	
l55614:; BSR set to: 0

;voice.c: 191: };voice.c: 192: if ((KeyDat.key_short_value == 0x02) || (KeyDat.key_short_value == 0x03) ||;voice.c: 193: (KeyDat.key_long_value == 0x02) || (KeyDat.key_long_value == 0x03) ||;voice.c: 194: RunData.TOUCHkey_Finally_Time != 0)
		movlw	2
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u15681
	goto	u15680

u15681:
	goto	l55624
u15680:
	
l55616:; BSR set to: 0

		movlw	3
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u15691
	goto	u15690

u15691:
	goto	l55624
u15690:
	
l55618:; BSR set to: 0

		movlw	2
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfsc	status,2
	goto	u15701
	goto	u15700

u15701:
	goto	l55624
u15700:
	
l55620:; BSR set to: 0

		movlw	3
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfsc	status,2
	goto	u15711
	goto	u15710

u15711:
	goto	l55624
u15710:
	
l55622:; BSR set to: 0

	movf	(0+(_RunData+043h))&0ffh,w
	btfsc	status,2
	goto	u15721
	goto	u15720
u15721:
	goto	l55680
u15720:
	line	196
	
l55624:; BSR set to: 0

;voice.c: 195: {;voice.c: 196: key_press = 1;
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((VoiceDrive@key_press))&0ffh
	line	197
;voice.c: 197: if (RunData.TOUCHkey_Finally_Time)
	movlb	0	; () banked
	movf	(0+(_RunData+043h))&0ffh,w
	btfsc	status,2
	goto	u15731
	goto	u15730
u15731:
	goto	l55676
u15730:
	line	200
	
l55626:; BSR set to: 0

;voice.c: 198: {;voice.c: 200: RunData.Timing = RunData.TOUCHkey_Finally_Time;
	movff	0+(_RunData+043h),0+(_RunData+012h)
	clrf	(1+(_RunData+012h))&0ffh
	line	201
	
l55628:; BSR set to: 0

;voice.c: 201: if (RunData.Timing % 60 != 0)
	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
iorwf	(1+?___awmod)^00h,c,w
	btfsc	status,2
	goto	u15741
	goto	u15740

u15741:
	goto	l55676
u15740:
	goto	l31077
	line	209
	
l55632:
;voice.c: 209: RunData.VoiceNum = continuous_oxygen_therapy;
	movlw	low(01Ah)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	210
;voice.c: 210: break;
	goto	l55678
	line	212
	
l55634:
;voice.c: 212: RunData.VoiceNum = ten_minutes;
	movlw	low(0Dh)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	213
;voice.c: 213: break;
	goto	l55678
	line	215
	
l55636:
;voice.c: 215: RunData.VoiceNum = twenty_minutes;
	movlw	low(0Eh)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	216
;voice.c: 216: break;
	goto	l55678
	line	218
	
l55638:
;voice.c: 218: RunData.VoiceNum = thirty_minutes;
	movlw	low(0Fh)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	219
;voice.c: 219: break;
	goto	l55678
	line	221
	
l55640:
;voice.c: 221: RunData.VoiceNum = forty_minutes;
	movlw	low(010h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	222
;voice.c: 222: break;
	goto	l55678
	line	224
	
l55642:
;voice.c: 224: RunData.VoiceNum = fifty_minutes;
	movlw	low(011h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	225
;voice.c: 225: break;
	goto	l55678
	line	227
	
l55644:
;voice.c: 227: RunData.VoiceNum = one_hour;
	movlw	low(012h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	228
;voice.c: 228: break;
	goto	l55678
	line	230
	
l55646:
;voice.c: 230: VoiceDelay.Voice_time = one_hour;
	movlw	low(012h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	231
;voice.c: 231: break;
	goto	l55678
	line	233
	
l55648:
;voice.c: 233: RunData.VoiceNum = two_hours;
	movlw	low(013h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	234
;voice.c: 234: break;
	goto	l55678
	line	236
	
l55650:
;voice.c: 236: VoiceDelay.Voice_time = two_hours;
	movlw	low(013h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	237
;voice.c: 237: break;
	goto	l55678
	line	239
	
l55652:
;voice.c: 239: RunData.VoiceNum = three_hours;
	movlw	low(014h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	240
;voice.c: 240: break;
	goto	l55678
	line	242
	
l55654:
;voice.c: 242: VoiceDelay.Voice_time = three_hours;
	movlw	low(014h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	243
;voice.c: 243: break;
	goto	l55678
	line	245
	
l55656:
;voice.c: 245: RunData.VoiceNum = four_hours;
	movlw	low(015h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	246
;voice.c: 246: break;
	goto	l55678
	line	248
	
l55658:
;voice.c: 248: VoiceDelay.Voice_time = four_hours;
	movlw	low(015h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	249
;voice.c: 249: break;
	goto	l55678
	line	251
	
l55660:
;voice.c: 251: RunData.VoiceNum = five_hours;
	movlw	low(016h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	252
;voice.c: 252: break;
	goto	l55678
	line	254
	
l55662:
;voice.c: 254: VoiceDelay.Voice_time = five_hours;
	movlw	low(016h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	255
;voice.c: 255: break;
	goto	l55678
	line	257
	
l55664:
;voice.c: 257: RunData.VoiceNum = six_hours;
	movlw	low(017h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	258
;voice.c: 258: break;
	goto	l55678
	line	260
	
l55666:
;voice.c: 260: VoiceDelay.Voice_time = six_hours;
	movlw	low(017h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	261
;voice.c: 261: break;
	goto	l55678
	line	263
	
l55668:
;voice.c: 263: RunData.VoiceNum = seven_hours;
	movlw	low(018h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	264
;voice.c: 264: break;
	goto	l55678
	line	266
	
l55670:
;voice.c: 266: VoiceDelay.Voice_time = seven_hours;
	movlw	low(018h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+05h))&0ffh
	line	267
;voice.c: 267: break;
	goto	l55678
	line	269
	
l55672:
;voice.c: 269: RunData.VoiceNum = eight_hours;
	movlw	low(019h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	270
;voice.c: 270: break;
	goto	l55678
	line	206
	
l55676:
	lfsr	2,(_RunData)+012h
	movff	postinc2,??_VoiceDrive+0+0
	movff	postdec2,??_VoiceDrive+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_VoiceDrive+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57314
	xorlw	1^0	; case 1
	skipnz
	goto	l57316
	goto	l55678
	
l57314:
; Switch size 1, requested type "simple"
; Number of cases is 13, Range of values is 0 to 240
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           40    21 (average)
;	Chosen strategy is simple_byte

	movf ??_VoiceDrive+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l55632
	xorlw	10^0	; case 10
	skipnz
	goto	l55634
	xorlw	20^10	; case 20
	skipnz
	goto	l55636
	xorlw	30^20	; case 30
	skipnz
	goto	l55638
	xorlw	40^30	; case 40
	skipnz
	goto	l55640
	xorlw	50^40	; case 50
	skipnz
	goto	l55642
	xorlw	60^50	; case 60
	skipnz
	goto	l55644
	xorlw	90^60	; case 90
	skipnz
	goto	l55646
	xorlw	120^90	; case 120
	skipnz
	goto	l55648
	xorlw	150^120	; case 150
	skipnz
	goto	l55650
	xorlw	180^150	; case 180
	skipnz
	goto	l55652
	xorlw	210^180	; case 210
	skipnz
	goto	l55654
	xorlw	240^210	; case 240
	skipnz
	goto	l55656
	goto	l55678
	
l57316:
; Switch size 1, requested type "simple"
; Number of cases is 8, Range of values is 14 to 224
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movf ??_VoiceDrive+0+0^00h,c,w
	xorlw	14^0	; case 14
	skipnz
	goto	l55658
	xorlw	44^14	; case 44
	skipnz
	goto	l55660
	xorlw	74^44	; case 74
	skipnz
	goto	l55662
	xorlw	104^74	; case 104
	skipnz
	goto	l55664
	xorlw	134^104	; case 134
	skipnz
	goto	l55666
	xorlw	164^134	; case 164
	skipnz
	goto	l55668
	xorlw	194^164	; case 194
	skipnz
	goto	l55670
	xorlw	224^194	; case 224
	skipnz
	goto	l55672
	goto	l55678

	line	272
	
l55678:
;voice.c: 272: RunData.TOUCHkey_Finally_Time = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_RunData+043h))&0ffh
	line	274
	
l55680:; BSR set to: 0

;voice.c: 273: };voice.c: 274: if (KeyDat.key_long_value == 0)
	movf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u15751
	goto	u15750

u15751:
	goto	l55686
u15750:
	line	276
	
l55682:; BSR set to: 0

;voice.c: 275: {;voice.c: 276: if (key_press == 1)
	movlb	1	; () banked
		decf	((VoiceDrive@key_press))&0ffh,w
	btfss	status,2
	goto	u15761
	goto	u15760

u15761:
	goto	l55686
u15760:
	line	278
	
l55684:; BSR set to: 1

;voice.c: 277: {;voice.c: 278: key_press = 2;
	movlw	low(02h)
	movwf	((VoiceDrive@key_press))&0ffh
	line	318
	
l55686:
;voice.c: 279: };voice.c: 280: };voice.c: 308: };voice.c: 318: VoiceFilterMesh();
	call	_VoiceFilterMesh	;wreg free
	line	319
	
l55688:; BSR set to: 0

;voice.c: 319: SOS_Voice();
	call	_SOS_Voice	;wreg free
	line	320
	
l55690:; BSR set to: 1

;voice.c: 320: if ((KeyDat.key_short_value == 0x06) && RunData.StandbySta == 0)
		movlw	6
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u15771
	goto	u15770

u15771:
	goto	l55698
u15770:
	
l55692:; BSR set to: 0

	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u15781
	goto	u15780
u15781:
	goto	l55698
u15780:
	line	322
	
l55694:; BSR set to: 0

;voice.c: 321: {;voice.c: 322: RunData.VoiceEnable = !RunData.VoiceEnable;
	movf	(0+(_RunData+02Ch))&0ffh,w
	btfsc	status,2
	goto	u15791
	goto	u15790
u15791:
	movlw	1
	goto	u15800
u15790:
	movlw	0
u15800:
	movwf	(0+(_RunData+02Ch))&0ffh
	line	323
;voice.c: 323: if (RunData.VoiceEnable)
	movf	(0+(_RunData+02Ch))&0ffh,w
	btfsc	status,2
	goto	u15811
	goto	u15810
u15811:
	goto	l55698
u15810:
	line	324
	
l55696:; BSR set to: 0

;voice.c: 324: RunData.VoiceNum = intelligent_voice_on;
	movlw	low(05h)
	movwf	(0+(_RunData+02Bh))&0ffh
	line	326
	
l55698:; BSR set to: 0

;voice.c: 325: };voice.c: 326: if (RunData.VoiceEnable == 1)
		decf	(0+(_RunData+02Ch))&0ffh,w
	btfss	status,2
	goto	u15821
	goto	u15820

u15821:
	goto	l55752
u15820:
	line	329
	
l55700:; BSR set to: 0

;voice.c: 327: {;voice.c: 329: if (RunData.VoiceNumLast != RunData.VoiceNum && RunData.VoiceNum == intelligent_voice_on)
	movf	(0+(_RunData+02Bh))&0ffh,w
xorwf	(0+(_RunData+031h))&0ffh,w
	btfsc	status,2
	goto	u15831
	goto	u15830

u15831:
	goto	l55706
u15830:
	
l55702:; BSR set to: 0

		movlw	5
	xorwf	(0+(_RunData+02Bh))&0ffh,w
	btfss	status,2
	goto	u15841
	goto	u15840

u15841:
	goto	l55706
u15840:
	line	330
	
l55704:; BSR set to: 0

;voice.c: 330: RunData.VoiceCount++;
	infsnz	(0+(_RunData+033h))&0ffh
	incf	(1+(_RunData+033h))&0ffh
	line	331
	
l55706:; BSR set to: 0

;voice.c: 331: if(RunData.VoiceCount > 200 && RunData.VoiceNum == intelligent_voice_on)
		movf	(1+(_RunData+033h))&0ffh,w
	bnz	u15850
	movlw	201
	subwf	 (0+(_RunData+033h))&0ffh,w
	btfss	status,0
	goto	u15851
	goto	u15850

u15851:
	goto	l55716
u15850:
	
l55708:; BSR set to: 0

		movlw	5
	xorwf	(0+(_RunData+02Bh))&0ffh,w
	btfss	status,2
	goto	u15861
	goto	u15860

u15861:
	goto	l55716
u15860:
	line	333
	
l55710:; BSR set to: 0

;voice.c: 332: {;voice.c: 333: VoiceCtr(RunData.VoiceNum);
	movff	0+(_RunData+02Bh),(c:VoiceCtr@dat)
	clrf	((c:VoiceCtr@dat+1))^00h,c
	call	_VoiceCtr	;wreg free
	line	334
	
l55712:
;voice.c: 334: RunData.VoiceCount = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+033h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+033h))&0ffh
	line	335
	
l55714:; BSR set to: 0

;voice.c: 335: RunData.VoiceNumLast = RunData.VoiceNum;
	movff	0+(_RunData+02Bh),0+(_RunData+031h)
	line	338
	
l55716:; BSR set to: 0

;voice.c: 336: };voice.c: 338: if (key_press == 2)
		movlw	2
	movlb	1	; () banked
	xorwf	((VoiceDrive@key_press))&0ffh,w
	btfss	status,2
	goto	u15871
	goto	u15870

u15871:
	goto	l31077
u15870:
	line	341
	
l55718:; BSR set to: 1

;voice.c: 339: {;voice.c: 341: if (RunData.VoiceNumLast != RunData.VoiceNum)
	movlb	0	; () banked
	movf	(0+(_RunData+02Bh))&0ffh,w
xorwf	(0+(_RunData+031h))&0ffh,w
	btfsc	status,2
	goto	u15881
	goto	u15880

u15881:
	goto	l55722
u15880:
	line	342
	
l55720:; BSR set to: 0

;voice.c: 342: RunData.VoiceCount++;
	infsnz	(0+(_RunData+033h))&0ffh
	incf	(1+(_RunData+033h))&0ffh
	line	343
	
l55722:; BSR set to: 0

;voice.c: 343: if ((RunData.VoiceCount > 200 && RunData.Timing % 60 == 0) || RunData.Timing == 30)
		movf	(1+(_RunData+033h))&0ffh,w
	bnz	u15890
	movlw	201
	subwf	 (0+(_RunData+033h))&0ffh,w
	btfss	status,0
	goto	u15891
	goto	u15890

u15891:
	goto	l55726
u15890:
	
l55724:; BSR set to: 0

	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
iorwf	(1+?___awmod)^00h,c,w
	btfsc	status,2
	goto	u15901
	goto	u15900

u15901:
	goto	l55728
u15900:
	
l55726:
		movlw	30
	movlb	0	; () banked
	xorwf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfss	status,2
	goto	u15911
	goto	u15910

u15911:
	goto	l55736
u15910:
	line	345
	
l55728:
;voice.c: 344: {;voice.c: 345: VoiceCtr(RunData.VoiceNum);
	movff	0+(_RunData+02Bh),(c:VoiceCtr@dat)
	clrf	((c:VoiceCtr@dat+1))^00h,c
	call	_VoiceCtr	;wreg free
	line	346
	
l55730:
;voice.c: 346: RunData.VoiceCount = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+033h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+033h))&0ffh
	line	347
	
l55732:; BSR set to: 0

;voice.c: 347: RunData.VoiceNumLast = RunData.VoiceNum;
	movff	0+(_RunData+02Bh),0+(_RunData+031h)
	line	348
	
l55734:; BSR set to: 0

;voice.c: 348: key_press = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((VoiceDrive@key_press))&0ffh
	line	352
	
l55736:
;voice.c: 349: };voice.c: 352: if (VoiceDelay.VoiceNumLast != VoiceDelay.Voice_time)
	movlb	1	; () banked
	movf	(0+(_VoiceDelay+05h))&0ffh,w
xorwf	(0+(_VoiceDelay+06h))&0ffh,w
	btfsc	status,2
	goto	u15921
	goto	u15920

u15921:
	goto	l55740
u15920:
	line	354
	
l55738:; BSR set to: 1

;voice.c: 353: {;voice.c: 354: VoiceDelay.VoiceCount++;
	infsnz	(0+(_VoiceDelay+02h))&0ffh
	incf	(1+(_VoiceDelay+02h))&0ffh
	line	356
	
l55740:; BSR set to: 1

;voice.c: 355: };voice.c: 356: if (VoiceDelay.VoiceCount > 200 && RunData.Timing % 60 == 30)
		movf	(1+(_VoiceDelay+02h))&0ffh,w
	bnz	u15930
	movlw	201
	subwf	 (0+(_VoiceDelay+02h))&0ffh,w
	btfss	status,0
	goto	u15931
	goto	u15930

u15931:
	goto	l31077
u15930:
	
l55742:; BSR set to: 1

	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
		movlw	30
	xorwf	(0+?___awmod)^00h,c,w
iorwf	(1+?___awmod)^00h,c,w
	btfss	status,2
	goto	u15941
	goto	u15940

u15941:
	goto	l31077
u15940:
	line	358
	
l55744:
;voice.c: 357: {;voice.c: 358: u8 Flag = Voice_Half_Hour(VoiceDelay.Voice_time, 1);
	movlw	low(01h)
	movwf	((c:Voice_Half_Hour@Voice_Enable))^00h,c
	movlb	1	; () banked
	movf	(0+(_VoiceDelay+05h))&0ffh,w
	
	call	_Voice_Half_Hour
	movwf	((c:VoiceDrive@Flag))^00h,c
	line	359
	
l55746:; BSR set to: 1

;voice.c: 359: if (Flag == 0)
	movf	((c:VoiceDrive@Flag))^00h,c,w
	btfss	status,2
	goto	u15951
	goto	u15950
u15951:
	goto	l55604
u15950:
	line	361
	
l55748:; BSR set to: 1

;voice.c: 360: {;voice.c: 361: VoiceDelay.VoiceNumLast = VoiceDelay.Voice_time;
	movff	0+(_VoiceDelay+05h),0+(_VoiceDelay+06h)
	line	362
	
l55750:; BSR set to: 1

;voice.c: 362: VoiceDelay.VoiceCount = 0;
	movlw	high(0)
	movwf	(1+(_VoiceDelay+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_VoiceDelay+02h))&0ffh
	line	363
;voice.c: 363: key_press = 0;
	movlw	low(0)
	movwf	((VoiceDrive@key_press))&0ffh
	goto	l31077
	line	370
	
l55752:; BSR set to: 0

;voice.c: 368: else;voice.c: 369: {;voice.c: 370: RunData.VoiceNum = intelligent_voice_off;
	movlw	low(06h)
	movwf	(0+(_RunData+02Bh))&0ffh
	line	371
	
l55754:; BSR set to: 0

;voice.c: 371: VoiceCtr(RunData.VoiceNum);
	movff	0+(_RunData+02Bh),(c:VoiceCtr@dat)
	clrf	((c:VoiceCtr@dat+1))^00h,c
	call	_VoiceCtr	;wreg free
	line	372
	
l55756:
;voice.c: 372: RunData.VoiceNumLast = RunData.VoiceNum;
	movff	0+(_RunData+02Bh),0+(_RunData+031h)
	line	374
	
l31077:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_VoiceDrive
	__end_of_VoiceDrive:
	signat	_VoiceDrive,89
	global	_Voice_Half_Hour

;; *************** function _Voice_Half_Hour *****************
;; Defined at:
;;		line 35 in file "voice.c"
;; Parameters:    Size  Location     Type
;;  Half_Hour       1    wreg     unsigned char 
;;  Voice_Enable    1   16[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Half_Hour       1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_PlaySound
;; This function is called by:
;;		_VoiceDrive
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	35
global __ptext6
__ptext6:
psect	text6
	file	"voice.c"
	line	35
	global	__size_of_Voice_Half_Hour
	__size_of_Voice_Half_Hour	equ	__end_of_Voice_Half_Hour-_Voice_Half_Hour
	
_Voice_Half_Hour:
;incstack = 0
	opt	callstack 21
;Voice_Half_Hour@Half_Hour stored from wreg
	movwf	((c:Voice_Half_Hour@Half_Hour))^00h,c
	line	37
	
l54960:
;voice.c: 37: if(Voice_Enable == 1 && VoiceDelay.Voice_Delay == 0)
		decf	((c:Voice_Half_Hour@Voice_Enable))^00h,c,w
	btfss	status,2
	goto	u14821
	goto	u14820

u14821:
	goto	l54970
u14820:
	
l54962:
	movlb	1	; () banked
	movf	((_VoiceDelay))&0ffh,w
iorwf	((_VoiceDelay+1))&0ffh,w
	btfss	status,2
	goto	u14831
	goto	u14830

u14831:
	goto	l54970
u14830:
	line	39
	
l54964:; BSR set to: 1

;voice.c: 38: {;voice.c: 39: Voice_Enable = 2;
	movlw	low(02h)
	movwf	((c:Voice_Half_Hour@Voice_Enable))^00h,c
	line	40
	
l54966:; BSR set to: 1

;voice.c: 40: PlaySound(Half_Hour);
	movf	((c:Voice_Half_Hour@Half_Hour))^00h,c,w
	
	call	_PlaySound
	line	41
	
l54968:
;voice.c: 41: VoiceDelay.Voice_Delay_Flag = 1;
	movlw	low(01h)
	movlb	1	; () banked
	movwf	(0+(_VoiceDelay+04h))&0ffh
	line	43
	
l54970:
;voice.c: 42: };voice.c: 43: if(VoiceDelay.Voice_Delay == 700)
		movlw	188
	movlb	1	; () banked
	xorwf	((_VoiceDelay))&0ffh,w
	bnz	u14841
	movlw	2
	xorwf	((_VoiceDelay+1))&0ffh,w
	btfss	status,2
	goto	u14841
	goto	u14840

u14841:
	goto	l54980
u14840:
	line	45
	
l54972:; BSR set to: 1

;voice.c: 44: {;voice.c: 45: PlaySound(thirty_minutes);
	movlw	(0Fh)&0ffh
	
	call	_PlaySound
	line	46
	
l54974:
;voice.c: 46: VoiceDelay.Voice_Delay = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((_VoiceDelay+1))&0ffh
	movlw	low(0)
	movwf	((_VoiceDelay))&0ffh
	line	47
	
l54976:; BSR set to: 1

;voice.c: 47: VoiceDelay.Voice_Delay_Flag = 0;
	movlw	low(0)
	movwf	(0+(_VoiceDelay+04h))&0ffh
	line	48
	
l54978:; BSR set to: 1

;voice.c: 48: Voice_Enable = 0;
	movlw	low(0)
	movwf	((c:Voice_Half_Hour@Voice_Enable))^00h,c
	line	50
	
l54980:; BSR set to: 1

;voice.c: 49: };voice.c: 50: return Voice_Enable;
	movf	((c:Voice_Half_Hour@Voice_Enable))^00h,c,w
	line	51
	
l31019:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Voice_Half_Hour
	__end_of_Voice_Half_Hour:
	signat	_Voice_Half_Hour,8313
	global	_VoiceFilterMesh

;; *************** function _VoiceFilterMesh *****************
;; Defined at:
;;		line 107 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3E/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_E2prom_WriteData
;; This function is called by:
;;		_VoiceDrive
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	line	107
global __ptext7
__ptext7:
psect	text7
	file	"voice.c"
	line	107
	global	__size_of_VoiceFilterMesh
	__size_of_VoiceFilterMesh	equ	__end_of_VoiceFilterMesh-_VoiceFilterMesh
	
_VoiceFilterMesh:; BSR set to: 1

;incstack = 0
	opt	callstack 21
	line	110
	
l55000:
;voice.c: 109: static u16 count = 0;;voice.c: 110: if(RunData.FilterMeshFlag)
	movlb	0	; () banked
	movf	(0+(_RunData+02Ah))&0ffh,w
	btfsc	status,2
	goto	u14881
	goto	u14880
u14881:
	goto	l31060
u14880:
	line	112
	
l55002:; BSR set to: 0

;voice.c: 111: {;voice.c: 112: if(count==0)
	movf	((VoiceFilterMesh@count))&0ffh,w
iorwf	((VoiceFilterMesh@count+1))&0ffh,w
	btfss	status,2
	goto	u14891
	goto	u14890

u14891:
	goto	l55006
u14890:
	line	114
	
l55004:; BSR set to: 0

;voice.c: 113: {;voice.c: 114: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	117
;voice.c: 117: }
	goto	l55032
	line	118
	
l55006:; BSR set to: 0

;voice.c: 118: else if(count<1500)
		movlw	220
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	5
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14901
	goto	u14900

u14901:
	goto	l55010
u14900:
	line	120
	
l55008:; BSR set to: 0

;voice.c: 119: {;voice.c: 120: RunData.VoiceNum = clean_oxygen_machine_filter;
	movlw	low(022h)
	movwf	(0+(_RunData+02Bh))&0ffh
	line	121
;voice.c: 121: }
	goto	l55032
	line	122
	
l55010:; BSR set to: 0

;voice.c: 122: else if(count<3000)
		movlw	184
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	11
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14911
	goto	u14910

u14911:
	goto	l55014
u14910:
	line	124
	
l55012:; BSR set to: 0

;voice.c: 123: {;voice.c: 124: RunData.VoiceNum = NULL2;
	movlw	low(01h)
	movwf	(0+(_RunData+02Bh))&0ffh
	line	125
;voice.c: 125: }
	goto	l55032
	line	126
	
l55014:; BSR set to: 0

;voice.c: 126: else if(count<4500)
		movlw	148
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	17
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14921
	goto	u14920

u14921:
	goto	l55018
u14920:
	goto	l55008
	line	130
	
l55018:; BSR set to: 0

;voice.c: 130: else if(count<6000)
		movlw	112
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	23
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14931
	goto	u14930

u14931:
	goto	l55022
u14930:
	goto	l55012
	line	134
	
l55022:; BSR set to: 0

;voice.c: 134: else if(count<7500)
		movlw	76
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	29
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14941
	goto	u14940

u14941:
	goto	l55026
u14940:
	goto	l55008
	line	138
	
l55026:; BSR set to: 0

;voice.c: 138: else if(count<9000)
		movlw	40
	subwf	 ((VoiceFilterMesh@count))&0ffh,w
	movlw	35
	subwfb	((VoiceFilterMesh@count+1))&0ffh,w
	btfsc	status,0
	goto	u14951
	goto	u14950

u14951:
	goto	l55030
u14950:
	goto	l55012
	line	144
	
l55030:; BSR set to: 0

;voice.c: 142: else;voice.c: 143: {;voice.c: 144: count = 9000;
	movlw	high(02328h)
	movwf	((VoiceFilterMesh@count+1))&0ffh
	movlw	low(02328h)
	movwf	((VoiceFilterMesh@count))&0ffh
	line	146
	
l55032:; BSR set to: 0

;voice.c: 145: };voice.c: 146: count++;
	infsnz	((VoiceFilterMesh@count))&0ffh
	incf	((VoiceFilterMesh@count+1))&0ffh
	line	148
	
l31060:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_VoiceFilterMesh
	__end_of_VoiceFilterMesh:
	signat	_VoiceFilterMesh,89
	global	_VoiceCtr

;; *************** function _VoiceCtr *****************
;; Defined at:
;;		line 91 in file "voice.c"
;; Parameters:    Size  Location     Type
;;  dat             2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ret             1   21[COMRAM] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_PlaySound
;; This function is called by:
;;		_VoiceDrive
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	line	91
global __ptext8
__ptext8:
psect	text8
	file	"voice.c"
	line	91
	global	__size_of_VoiceCtr
	__size_of_VoiceCtr	equ	__end_of_VoiceCtr-_VoiceCtr
	
_VoiceCtr:; BSR set to: 0

;incstack = 0
	opt	callstack 21
	line	93
	
l54984:
	line	94
;voice.c: 94: u8 ret = 0;
	movlw	low(0)
	movwf	((c:VoiceCtr@ret))^00h,c
	line	96
;voice.c: 95: static u8 last = 0;;voice.c: 96: ret = PC6;
	movlw	0
	btfsc	c:(31766/8),(31766)&7	;volatile
	movlw	1
	movwf	((c:VoiceCtr@ret))^00h,c
	line	97
;voice.c: 97: if(ret==0) return ret;
	movf	((c:VoiceCtr@ret))^00h,c,w
	btfss	status,2
	goto	u14851
	goto	u14850
u14851:
	goto	l54988
u14850:
	goto	l31038
	line	98
	
l54988:
;voice.c: 98: if(dat==0) return ret;
	movf	((c:VoiceCtr@dat))^00h,c,w
iorwf	((c:VoiceCtr@dat+1))^00h,c,w
	btfss	status,2
	goto	u14861
	goto	u14860

u14861:
	goto	l54992
u14860:
	goto	l31038
	line	100
	
l54992:
;voice.c: 100: if(last!=dat)
	movlb	1	; () banked
	movf	((VoiceCtr@last))&0ffh,w
	movwf	(??_VoiceCtr+0+0)^00h,c
	clrf	(??_VoiceCtr+0+0+1)^00h,c

	movf	((c:VoiceCtr@dat))^00h,c,w
xorwf	(??_VoiceCtr+0+0)^00h,c,w
	bnz	u14870
movf	((c:VoiceCtr@dat+1))^00h,c,w
xorwf	(??_VoiceCtr+0+1)^00h,c,w
	btfsc	status,2
	goto	u14871
	goto	u14870

u14871:
	goto	l54996
u14870:
	line	101
	
l54994:; BSR set to: 1

;voice.c: 101: PlaySound(dat);
	movf	((c:VoiceCtr@dat))^00h,c,w
	
	call	_PlaySound
	line	102
	
l54996:
;voice.c: 102: last=dat;
	movff	(c:VoiceCtr@dat),(VoiceCtr@last)
	line	104
	
l31038:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_VoiceCtr
	__end_of_VoiceCtr:
	signat	_VoiceCtr,4217
	global	_SOS_Voice

;; *************** function _SOS_Voice *****************
;; Defined at:
;;		line 150 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_VoiceDrive
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	150
global __ptext9
__ptext9:
psect	text9
	file	"voice.c"
	line	150
	global	__size_of_SOS_Voice
	__size_of_SOS_Voice	equ	__end_of_SOS_Voice-_SOS_Voice
	
_SOS_Voice:
;incstack = 0
	opt	callstack 24
	line	153
	
l55034:; BSR set to: 0

;voice.c: 152: static u16 count = 0;;voice.c: 153: if(RunData.SOSFlag)
	movf	(0+(_RunData+01h))&0ffh,w
	btfsc	status,2
	goto	u14961
	goto	u14960
u14961:
	goto	l55048
u14960:
	line	155
	
l55036:; BSR set to: 0

;voice.c: 154: {;voice.c: 155: if(count<1000)
		movlw	232
	movlb	1	; () banked
	subwf	 ((SOS_Voice@count))&0ffh,w
	movlw	3
	subwfb	((SOS_Voice@count+1))&0ffh,w
	btfsc	status,0
	goto	u14971
	goto	u14970

u14971:
	goto	l55040
u14970:
	line	157
	
l55038:; BSR set to: 1

;voice.c: 156: {;voice.c: 157: RunData.VoiceNum = is_anyone_there;
	movlw	low(023h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	158
;voice.c: 158: }
	goto	l55046
	line	159
	
l55040:; BSR set to: 1

;voice.c: 159: else if(count<2000)
		movlw	208
	subwf	 ((SOS_Voice@count))&0ffh,w
	movlw	7
	subwfb	((SOS_Voice@count+1))&0ffh,w
	btfsc	status,0
	goto	u14981
	goto	u14980

u14981:
	goto	l55044
u14980:
	line	161
	
l55042:; BSR set to: 1

;voice.c: 160: {;voice.c: 161: RunData.VoiceNum = NULL2;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_RunData+02Bh))&0ffh
	line	162
;voice.c: 162: }
	goto	l55046
	line	165
	
l55044:; BSR set to: 1

;voice.c: 163: else;voice.c: 164: {;voice.c: 165: count = 0;
	movlw	high(0)
	movwf	((SOS_Voice@count+1))&0ffh
	movlw	low(0)
	movwf	((SOS_Voice@count))&0ffh
	line	167
	
l55046:
;voice.c: 166: };voice.c: 167: count++;
	movlb	1	; () banked
	infsnz	((SOS_Voice@count))&0ffh
	incf	((SOS_Voice@count+1))&0ffh
	line	168
;voice.c: 168: }
	goto	l31071
	line	171
	
l55048:; BSR set to: 0

;voice.c: 169: else;voice.c: 170: {;voice.c: 171: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((SOS_Voice@count+1))&0ffh
	movlw	low(0)
	movwf	((SOS_Voice@count))&0ffh
	line	173
	
l31071:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SOS_Voice
	__end_of_SOS_Voice:
	signat	_SOS_Voice,89
	global	_TimingClosureSet

;; *************** function _TimingClosureSet *****************
;; Defined at:
;;		line 16 in file "control.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awmod
;; This function is called by:
;;		_control
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"control.c"
	line	16
global __ptext10
__ptext10:
psect	text10
	file	"control.c"
	line	16
	global	__size_of_TimingClosureSet
	__size_of_TimingClosureSet	equ	__end_of_TimingClosureSet-_TimingClosureSet
	
_TimingClosureSet:; BSR set to: 1

;incstack = 0
	opt	callstack 24
	line	21
	
l55770:; BSR set to: 0

;control.c: 19: static int count = 0;;control.c: 20: static int lastTiming = 0;;control.c: 21: if ((KeyDat.key_short_value == 0x02) || (KeyDat.key_long_value == 0x02))
		movlw	2
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u15961
	goto	u15960

u15961:
	goto	l55774
u15960:
	
l55772:; BSR set to: 0

		movlw	2
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u15971
	goto	u15970

u15971:
	goto	l55810
u15970:
	line	24
	
l55774:; BSR set to: 0

;control.c: 22: {;control.c: 24: RunData.Error_Flag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+041h))&0ffh
	line	25
;control.c: 25: RunData.Error_Delay_Time = 0;
	movlw	low(0)
	movwf	(0+(_RunData+042h))&0ffh
	line	26
	
l55776:; BSR set to: 0

;control.c: 26: count++;
	movlb	1	; () banked
	infsnz	((TimingClosureSet@count))&0ffh
	incf	((TimingClosureSet@count+1))&0ffh
	line	27
	
l55778:; BSR set to: 1

;control.c: 27: if ((count > 50) && (KeyDat.key_long_value == 0x02))
	btfsc	((TimingClosureSet@count+1))&0ffh,7
	goto	u15981
	movf	((TimingClosureSet@count+1))&0ffh,w
	bnz	u15980
	movlw	51
	subwf	 ((TimingClosureSet@count))&0ffh,w
	btfss	status,0
	goto	u15981
	goto	u15980

u15981:
	goto	l55794
u15980:
	
l55780:; BSR set to: 1

		movlw	2
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u15991
	goto	u15990

u15991:
	goto	l55794
u15990:
	line	29
	
l55782:; BSR set to: 0

;control.c: 28: {;control.c: 29: if (lastTiming != 510)
		movlw	254
	movlb	1	; () banked
	xorwf	((TimingClosureSet@lastTiming))&0ffh,w
	bnz	u16000
	decf	((TimingClosureSet@lastTiming+1))&0ffh,w
	btfsc	status,2
	goto	u16001
	goto	u16000

u16001:
	goto	l55792
u16000:
	line	32
	
l55784:; BSR set to: 1

;control.c: 30: {;control.c: 32: if(KeyDat.key_long_value == 0)
	movlb	0	; () banked
	movf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16011
	goto	u16010

u16011:
	goto	l55788
u16010:
	line	34
	
l55786:; BSR set to: 0

;control.c: 33: {;control.c: 34: RunData.TOUCHkey_Finally_Time = lastTiming;
	movff	(TimingClosureSet@lastTiming),0+(_RunData+043h)
	line	36
	
l55788:; BSR set to: 0

;control.c: 35: };control.c: 36: RunData.Timing += 30;
	movlw	01Eh
	addwf	(0+(_RunData+012h))&0ffh
	movlw	0
	addwfc	(1+(_RunData+012h))&0ffh
	line	37
	
l55790:; BSR set to: 0

;control.c: 37: lastTiming = RunData.Timing;
	movff	0+(_RunData+012h),(TimingClosureSet@lastTiming)
	movff	1+(_RunData+012h),(TimingClosureSet@lastTiming+1)
	line	39
	
l55792:
;control.c: 38: };control.c: 39: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((TimingClosureSet@count+1))&0ffh
	movlw	low(0)
	movwf	((TimingClosureSet@count))&0ffh
	line	41
	
l55794:
;control.c: 40: };control.c: 41: if (KeyDat.key_short_value == 0x02)
		movlw	2
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u16021
	goto	u16020

u16021:
	goto	l36331
u16020:
	line	42
	
l55796:; BSR set to: 0

;control.c: 42: RunData.Timing += 30;
	movlw	01Eh
	addwf	(0+(_RunData+012h))&0ffh
	movlw	0
	addwfc	(1+(_RunData+012h))&0ffh
	
l36331:; BSR set to: 0

	line	43
;control.c: 43: if (RunData.Timing > 480)
	btfsc	(1+(_RunData+012h))&0ffh,7
	goto	u16031
	movlw	225
	subwf	 (0+(_RunData+012h))&0ffh,w
	movlw	1
	subwfb	(1+(_RunData+012h))&0ffh,w
	btfss	status,0
	goto	u16031
	goto	u16030

u16031:
	goto	l55800
u16030:
	line	44
	
l55798:; BSR set to: 0

;control.c: 44: RunData.Timing = 0;
	movlw	high(0)
	movwf	(1+(_RunData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+012h))&0ffh
	line	46
	
l55800:; BSR set to: 0

;control.c: 46: RunData.Timing = RunData.Timing % 30 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 30 + 30;
	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(01Eh)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(01Eh)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
iorwf	(1+?___awmod)^00h,c,w
	btfsc	status,2
	goto	u16041
	goto	u16040

u16041:
	goto	l36334
u16040:
	
l55802:
	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(01Eh)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(01Eh)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	lfsr	2,(_RunData)+012h
	movff	postinc2,??_TimingClosureSet+0+0
	movff	postdec2,??_TimingClosureSet+0+0+1
	movf	(0+?___awmod)^00h,c,w
	subwf	(??_TimingClosureSet+0+0)^00h,c
	movf	(1+?___awmod)^00h,c,w
	subwfb	(??_TimingClosureSet+0+1)^00h,c
	movlw	low(01Eh)
	addwf	(??_TimingClosureSet+0+0)^00h,c,w
	movwf	((c:_TimingClosureSet$20058))^00h,c
	movlw	high(01Eh)
	addwfc	(??_TimingClosureSet+0+1)^00h,c,w
	movwf	1+((c:_TimingClosureSet$20058))^00h,c
	goto	l36336
	
l36334:
	movff	0+(_RunData+012h),(c:_TimingClosureSet$20058)
	movff	1+(_RunData+012h),(c:_TimingClosureSet$20058+1)
	
l36336:
	movff	(c:_TimingClosureSet$20058),0+(_RunData+012h)
	movff	(c:_TimingClosureSet$20058+1),1+(_RunData+012h)
	line	47
	
l55804:
;control.c: 47: if (RunData.Timing)
	movlb	0	; () banked
	movf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfsc	status,2
	goto	u16051
	goto	u16050

u16051:
	goto	l55808
u16050:
	line	48
	
l55806:; BSR set to: 0

;control.c: 48: RunData.TimingFlag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+014h))&0ffh
	goto	l55812
	line	50
	
l55808:; BSR set to: 0

;control.c: 49: else;control.c: 50: RunData.TimingFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+014h))&0ffh
	goto	l55812
	line	54
	
l55810:; BSR set to: 0

;control.c: 52: else;control.c: 53: {;control.c: 54: lastTiming = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((TimingClosureSet@lastTiming+1))&0ffh
	movlw	low(0)
	movwf	((TimingClosureSet@lastTiming))&0ffh
	line	57
	
l55812:
;control.c: 55: };control.c: 57: if ((KeyDat.key_short_value == 0x03) || (KeyDat.key_long_value == 0x03))
		movlw	3
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u16061
	goto	u16060

u16061:
	goto	l55816
u16060:
	
l55814:; BSR set to: 0

		movlw	3
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16071
	goto	u16070

u16071:
	goto	l55842
u16070:
	line	59
	
l55816:; BSR set to: 0

;control.c: 58: {;control.c: 59: count++;
	movlb	1	; () banked
	infsnz	((TimingClosureSet@count))&0ffh
	incf	((TimingClosureSet@count+1))&0ffh
	line	60
	
l55818:; BSR set to: 1

;control.c: 60: if ((count > 50) && (KeyDat.key_long_value == 0x03))
	btfsc	((TimingClosureSet@count+1))&0ffh,7
	goto	u16081
	movf	((TimingClosureSet@count+1))&0ffh,w
	bnz	u16080
	movlw	51
	subwf	 ((TimingClosureSet@count))&0ffh,w
	btfss	status,0
	goto	u16081
	goto	u16080

u16081:
	goto	l55826
u16080:
	
l55820:; BSR set to: 1

		movlw	3
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16091
	goto	u16090

u16091:
	goto	l55826
u16090:
	line	62
	
l55822:; BSR set to: 0

;control.c: 61: {;control.c: 62: RunData.Timing -= 30;
	movlw	low(-30)
	addwf	(0+(_RunData+012h))&0ffh
	movlw	high(-30)
	addwfc	(1+(_RunData+012h))&0ffh
	line	63
	
l55824:; BSR set to: 0

;control.c: 63: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((TimingClosureSet@count+1))&0ffh
	movlw	low(0)
	movwf	((TimingClosureSet@count))&0ffh
	line	65
	
l55826:
;control.c: 64: };control.c: 65: if (KeyDat.key_short_value == 0x03)
		movlw	3
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u16101
	goto	u16100

u16101:
	goto	l36344
u16100:
	line	66
	
l55828:; BSR set to: 0

;control.c: 66: RunData.Timing -= 30;
	movlw	low(-30)
	addwf	(0+(_RunData+012h))&0ffh
	movlw	high(-30)
	addwfc	(1+(_RunData+012h))&0ffh
	
l36344:; BSR set to: 0

	line	67
;control.c: 67: if (RunData.Timing <= 0)
	btfsc	(1+(_RunData+012h))&0ffh,7
	goto	u16110
	movf	(1+(_RunData+012h))&0ffh,w
	bnz	u16111
	decf	(0+(_RunData+012h))&0ffh,w
	btfsc	status,0
	goto	u16111
	goto	u16110

u16111:
	goto	l55832
u16110:
	line	68
	
l55830:; BSR set to: 0

;control.c: 68: RunData.Timing = 0;
	movlw	high(0)
	movwf	(1+(_RunData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+012h))&0ffh
	line	69
	
l55832:; BSR set to: 0

;control.c: 69: RunData.Timing = RunData.Timing % 10 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 10;
	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
iorwf	(1+?___awmod)^00h,c,w
	btfsc	status,2
	goto	u16121
	goto	u16120

u16121:
	goto	l36347
u16120:
	
l55834:
	movff	0+(_RunData+012h),(c:___awmod@dividend)
	movff	1+(_RunData+012h),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movlb	0	; () banked
	subwf	(0+(_RunData+012h))&0ffh,w
	movwf	((c:_TimingClosureSet$20059))^00h,c
	movf	(1+?___awmod)^00h,c,w
	subwfb	(1+(_RunData+012h))&0ffh,w
	movwf	1+((c:_TimingClosureSet$20059))^00h,c
	goto	l36349
	
l36347:
	movff	0+(_RunData+012h),(c:_TimingClosureSet$20059)
	movff	1+(_RunData+012h),(c:_TimingClosureSet$20059+1)
	
l36349:
	movff	(c:_TimingClosureSet$20059),0+(_RunData+012h)
	movff	(c:_TimingClosureSet$20059+1),1+(_RunData+012h)
	line	70
	
l55836:
;control.c: 70: if (RunData.Timing)
	movlb	0	; () banked
	movf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfsc	status,2
	goto	u16131
	goto	u16130

u16131:
	goto	l55840
u16130:
	line	71
	
l55838:; BSR set to: 0

;control.c: 71: RunData.TimingFlag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+014h))&0ffh
	goto	l55842
	line	73
	
l55840:; BSR set to: 0

;control.c: 72: else;control.c: 73: RunData.TimingFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+014h))&0ffh
	line	76
	
l55842:; BSR set to: 0

;control.c: 74: };control.c: 76: if ((KeyDat.key_short_value == 0x04) || (KeyDat.key_long_value == 0x04))
		movlw	4
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u16141
	goto	u16140

u16141:
	goto	l55846
u16140:
	
l55844:; BSR set to: 0

		movlw	4
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16151
	goto	u16150

u16151:
	goto	l55864
u16150:
	line	78
	
l55846:; BSR set to: 0

;control.c: 77: {;control.c: 78: count++;
	movlb	1	; () banked
	infsnz	((TimingClosureSet@count))&0ffh
	incf	((TimingClosureSet@count+1))&0ffh
	line	79
	
l55848:; BSR set to: 1

;control.c: 79: if ((count > 100) && (KeyDat.key_long_value == 0x04))
	btfsc	((TimingClosureSet@count+1))&0ffh,7
	goto	u16161
	movf	((TimingClosureSet@count+1))&0ffh,w
	bnz	u16160
	movlw	101
	subwf	 ((TimingClosureSet@count))&0ffh,w
	btfss	status,0
	goto	u16161
	goto	u16160

u16161:
	goto	l55856
u16160:
	
l55850:; BSR set to: 1

		movlw	4
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16171
	goto	u16170

u16171:
	goto	l55856
u16170:
	line	81
	
l55852:; BSR set to: 0

;control.c: 80: {;control.c: 81: RunData.FlowSet += 1;
	infsnz	(0+(_RunData+04h))&0ffh
	incf	(1+(_RunData+04h))&0ffh
	line	82
	
l55854:; BSR set to: 0

;control.c: 82: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((TimingClosureSet@count+1))&0ffh
	movlw	low(0)
	movwf	((TimingClosureSet@count))&0ffh
	line	84
	
l55856:
;control.c: 83: };control.c: 84: if (KeyDat.key_short_value == 0x04)
		movlw	4
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u16181
	goto	u16180

u16181:
	goto	l55860
u16180:
	line	85
	
l55858:; BSR set to: 0

;control.c: 85: RunData.FlowSet += 1;
	infsnz	(0+(_RunData+04h))&0ffh
	incf	(1+(_RunData+04h))&0ffh
	line	86
	
l55860:; BSR set to: 0

;control.c: 86: if (RunData.FlowSet > 7 * 10)
	btfsc	(1+(_RunData+04h))&0ffh,7
	goto	u16191
	movf	(1+(_RunData+04h))&0ffh,w
	bnz	u16190
	movlw	71
	subwf	 (0+(_RunData+04h))&0ffh,w
	btfss	status,0
	goto	u16191
	goto	u16190

u16191:
	goto	l55864
u16190:
	line	87
	
l55862:; BSR set to: 0

;control.c: 87: RunData.FlowSet = 7 * 10;
	movlw	high(046h)
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(046h)
	movwf	(0+(_RunData+04h))&0ffh
	line	89
	
l55864:; BSR set to: 0

;control.c: 88: };control.c: 89: if ((KeyDat.key_short_value == 0x05) || (KeyDat.key_long_value == 0x05))
		movlw	5
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u16201
	goto	u16200

u16201:
	goto	l55868
u16200:
	
l55866:; BSR set to: 0

		movlw	5
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16211
	goto	u16210

u16211:
	goto	l36364
u16210:
	line	91
	
l55868:; BSR set to: 0

;control.c: 90: {;control.c: 91: count++;
	movlb	1	; () banked
	infsnz	((TimingClosureSet@count))&0ffh
	incf	((TimingClosureSet@count+1))&0ffh
	line	92
	
l55870:; BSR set to: 1

;control.c: 92: if ((count > 100) && (KeyDat.key_long_value == 0x05))
	btfsc	((TimingClosureSet@count+1))&0ffh,7
	goto	u16221
	movf	((TimingClosureSet@count+1))&0ffh,w
	bnz	u16220
	movlw	101
	subwf	 ((TimingClosureSet@count))&0ffh,w
	btfss	status,0
	goto	u16221
	goto	u16220

u16221:
	goto	l55878
u16220:
	
l55872:; BSR set to: 1

		movlw	5
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u16231
	goto	u16230

u16231:
	goto	l55878
u16230:
	line	94
	
l55874:; BSR set to: 0

;control.c: 93: {;control.c: 94: RunData.FlowSet -= 1;
	decf	(0+(_RunData+04h))&0ffh
	btfss	status,0
	decf	(1+(_RunData+04h))&0ffh
	line	95
	
l55876:; BSR set to: 0

;control.c: 95: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((TimingClosureSet@count+1))&0ffh
	movlw	low(0)
	movwf	((TimingClosureSet@count))&0ffh
	line	97
	
l55878:
;control.c: 96: };control.c: 97: if (KeyDat.key_short_value == 0x05)
		movlw	5
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u16241
	goto	u16240

u16241:
	goto	l55882
u16240:
	line	98
	
l55880:; BSR set to: 0

;control.c: 98: RunData.FlowSet -= 1;
	decf	(0+(_RunData+04h))&0ffh
	btfss	status,0
	decf	(1+(_RunData+04h))&0ffh
	line	99
	
l55882:; BSR set to: 0

;control.c: 99: if (RunData.FlowSet < 5)
	btfsc	(1+(_RunData+04h))&0ffh,7
	goto	u16250
	movf	(1+(_RunData+04h))&0ffh,w
	bnz	u16251
	movlw	5
	subwf	 (0+(_RunData+04h))&0ffh,w
	btfsc	status,0
	goto	u16251
	goto	u16250

u16251:
	goto	l36364
u16250:
	line	100
	
l55884:; BSR set to: 0

;control.c: 100: RunData.FlowSet = 5;
	movlw	high(05h)
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(05h)
	movwf	(0+(_RunData+04h))&0ffh
	line	102
	
l36364:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TimingClosureSet
	__end_of_TimingClosureSet:
	signat	_TimingClosureSet,89
	global	_ErrorCtr

;; *************** function _ErrorCtr *****************
;; Defined at:
;;		line 205 in file "control.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   70[COMRAM] unsigned int 
;;  j               2   68[COMRAM] unsigned int 
;;  AlarmSwitchF    2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Alarm_Sound
;;		_BeepCtr1
;;		_BeepEnable
;;		_Cmd_Process
;;		_Cmd_Send
;;		_DelayMs
;;		_Display_SysSta
;;		_E2prom_WriteData
;;		_ERR_Code
;;		_Get_Key_Demo
;;		_IR_MoreCtr
;;		_Label_CloseAlarm
;;		_TM1629_Luminance
;;		_TSC_DataProcessing
;;		_TSC_Scan
;;		_Update_Display
;;		___lwmod
;;		_key_scan
;; This function is called by:
;;		_control
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	205
global __ptext11
__ptext11:
psect	text11
	file	"control.c"
	line	205
	global	__size_of_ErrorCtr
	__size_of_ErrorCtr	equ	__end_of_ErrorCtr-_ErrorCtr
	
_ErrorCtr:; BSR set to: 0

;incstack = 0
	opt	callstack 19
	line	209
	
l55886:
	line	211
;control.c: 211: if (RunData.StandbySta == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u16261
	goto	u16260
u16261:
	goto	l56012
u16260:
	line	213
	
l55888:; BSR set to: 0

;control.c: 212: {;control.c: 213: ERR_Code();
	call	_ERR_Code	;wreg free
	line	214
	
l55890:
;control.c: 214: if (sUsart2.LinkSta == 1)
	movlb	1	; () banked
		decf	(0+(_sUsart2+033h))&0ffh,w
	btfss	status,2
	goto	u16271
	goto	u16270

u16271:
	goto	l36438
u16270:
	line	216
	
l55892:; BSR set to: 1

;control.c: 215: {;control.c: 216: if (RunData.PowkeyFlag == 1)
	movlb	0	; () banked
		decf	((_RunData))&0ffh,w
	btfss	status,2
	goto	u16281
	goto	u16280

u16281:
	goto	l55926
u16280:
	line	218
	
l55894:; BSR set to: 0

;control.c: 217: {;control.c: 218: LATDbits.LATD7 = 1;
	bsf	((c:3980))^0f00h,c,7	;volatile
	line	219
	
l55896:; BSR set to: 0

;control.c: 219: RunData.SysSta = 0x00;
	movlw	low(0)
	movwf	(0+(_RunData+02h))&0ffh
	line	220
;control.c: 220: RunData.StandbySta = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+029h))&0ffh
	line	221
;control.c: 221: for (i = 0; i < 16; i++)
	movlw	high(0)
	movwf	((c:ErrorCtr@i+1))^00h,c
	movlw	low(0)
	movwf	((c:ErrorCtr@i))^00h,c
	line	222
	
l55902:
;control.c: 222: DisBuf[i] = 0;
	movf	((c:ErrorCtr@i))^00h,c,w
	addlw	low(_DisBuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	221
	
l55904:
	infsnz	((c:ErrorCtr@i))^00h,c
	incf	((c:ErrorCtr@i+1))^00h,c
	
l55906:
		movf	((c:ErrorCtr@i+1))^00h,c,w
	bnz	u16290
	movlw	16
	subwf	 ((c:ErrorCtr@i))^00h,c,w
	btfss	status,0
	goto	u16291
	goto	u16290

u16291:
	goto	l55902
u16290:
	line	223
	
l55908:
;control.c: 223: TM1629_Luminance(0);
	movlw	(0)&0ffh
	
	call	_TM1629_Luminance
	line	224
	
l55910:
;control.c: 224: Update_Display();
	call	_Update_Display	;wreg free
	line	225
	
l55912:
;control.c: 225: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	226
;control.c: 226: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	line	227
;control.c: 227: while (1)
	
l36406:
	line	229
;control.c: 228: {;control.c: 229: if ((i % 100) == 0)
	movff	(c:ErrorCtr@i),(c:___lwmod@dividend)
	movff	(c:ErrorCtr@i+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
iorwf	(1+?___lwmod)^00h,c,w
	btfss	status,2
	goto	u16301
	goto	u16300

u16301:
	goto	l55916
u16300:
	line	230
	
l55914:
;control.c: 230: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	231
	
l55916:
;control.c: 231: i++;
	infsnz	((c:ErrorCtr@i))^00h,c
	incf	((c:ErrorCtr@i+1))^00h,c
	line	232
# 232 "control.c"
clrwdt ;# 
psect	text11
	line	233
	
l55918:
;control.c: 233: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	234
	
l55920:
;control.c: 234: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	235
	
l55922:
;control.c: 235: if (RunData.PowkeyFlag == 0)
	movlb	0	; () banked
	movf	((_RunData))&0ffh,w
	btfss	status,2
	goto	u16311
	goto	u16310
u16311:
	goto	l36406
u16310:
	line	237
	
l55924:; BSR set to: 0

;control.c: 236: {;control.c: 237: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	238
# 238 "control.c"
reset ;# 
psect	text11
	line	239
;control.c: 239: break;
	goto	l36438
	line	243
	
l55926:; BSR set to: 0

;control.c: 243: else if (RunData.DC12_V < 600)
		movlw	88
	subwf	 (0+(_RunData+06h))&0ffh,w
	movlw	2
	subwfb	(1+(_RunData+06h))&0ffh,w
	btfsc	status,0
	goto	u16321
	goto	u16320

u16321:
	goto	l36402
u16320:
	line	245
	
l55928:; BSR set to: 0

;control.c: 244: {;control.c: 245: RunData.SysSta = 0x00;
	movlw	low(0)
	movwf	(0+(_RunData+02h))&0ffh
	line	247
	
l55930:; BSR set to: 0

;control.c: 247: LATDbits.LATD7 = 1;
	bsf	((c:3980))^0f00h,c,7	;volatile
	line	249
;control.c: 249: for (i = 0; i < 16; i++)
	movlw	high(0)
	movwf	((c:ErrorCtr@i+1))^00h,c
	movlw	low(0)
	movwf	((c:ErrorCtr@i))^00h,c
	line	250
	
l55936:
;control.c: 250: DisBuf[i] = 0;
	movf	((c:ErrorCtr@i))^00h,c,w
	addlw	low(_DisBuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	249
	
l55938:
	infsnz	((c:ErrorCtr@i))^00h,c
	incf	((c:ErrorCtr@i+1))^00h,c
	
l55940:
		movf	((c:ErrorCtr@i+1))^00h,c,w
	bnz	u16330
	movlw	16
	subwf	 ((c:ErrorCtr@i))^00h,c,w
	btfss	status,0
	goto	u16331
	goto	u16330

u16331:
	goto	l55936
u16330:
	line	253
	
l55942:
;control.c: 253: Update_Display();
	call	_Update_Display	;wreg free
	line	254
;control.c: 254: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	255
	
l55944:; BSR set to: 0

;control.c: 255: TM1629_Luminance(8);
	movlw	(08h)&0ffh
	
	call	_TM1629_Luminance
	line	256
	
l55946:
	line	257
	
l55948:
;control.c: 257: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	line	258
	
l55950:
;control.c: 258: RunData.AlarmSwitch = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+037h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+037h))&0ffh
	line	261
	
l55952:; BSR set to: 0

;control.c: 260: {;control.c: 261: j++;
	infsnz	((c:ErrorCtr@j))^00h,c
	incf	((c:ErrorCtr@j+1))^00h,c
	line	262
	
l55954:; BSR set to: 0

;control.c: 262: if (j > 100)
		movf	((c:ErrorCtr@j+1))^00h,c,w
	bnz	u16340
	movlw	101
	subwf	 ((c:ErrorCtr@j))^00h,c,w
	btfss	status,0
	goto	u16341
	goto	u16340

u16341:
	goto	l36416
u16340:
	line	264
	
l55956:; BSR set to: 0

;control.c: 263: {;control.c: 264: j = 0;
	movlw	high(0)
	movwf	((c:ErrorCtr@j+1))^00h,c
	movlw	low(0)
	movwf	((c:ErrorCtr@j))^00h,c
	line	265
	
l55958:; BSR set to: 0

;control.c: 265: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	266
	
l55960:
;control.c: 266: if (RunData.PowkeyFlag == 1)
	movlb	0	; () banked
		decf	((_RunData))&0ffh,w
	btfss	status,2
	goto	u16351
	goto	u16350

u16351:
	goto	l36416
u16350:
	line	267
	
l55962:; BSR set to: 0

	line	268
	
l36416:; BSR set to: 0

	line	270
# 270 "control.c"
clrwdt ;# 
psect	text11
	line	271
	
l55964:
;control.c: 271: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	273
	
l55966:
;control.c: 273: if (RunData.PowkeyFlag == 0)
	movlb	0	; () banked
	movf	((_RunData))&0ffh,w
	btfss	status,2
	goto	u16361
	goto	u16360
u16361:
	goto	l55980
u16360:
	line	275
	
l55968:; BSR set to: 0

;control.c: 274: {;control.c: 275: Alarm_Sound(0);
	movlw	(0)&0ffh
	
	call	_Alarm_Sound
	line	276
	
l55970:
;control.c: 276: if (RunData.AlarmLEDCount < 250)
	movlb	0	; () banked
		movf	(1+(_RunData+03Dh))&0ffh,w
	bnz	u16371
	movlw	250
	subwf	 (0+(_RunData+03Dh))&0ffh,w
	btfsc	status,0
	goto	u16371
	goto	u16370

u16371:
	goto	l55974
u16370:
	line	277
	
l55972:; BSR set to: 0

;control.c: 277: Display_SysSta(3);
	movlw	(03h)&0ffh
	
	call	_Display_SysSta
	goto	l55986
	line	278
	
l55974:; BSR set to: 0

;control.c: 278: else if (RunData.AlarmLEDCount < 500)
		movlw	244
	subwf	 (0+(_RunData+03Dh))&0ffh,w
	movlw	1
	subwfb	(1+(_RunData+03Dh))&0ffh,w
	btfsc	status,0
	goto	u16381
	goto	u16380

u16381:
	goto	l55978
u16380:
	line	279
	
l55976:; BSR set to: 0

;control.c: 279: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	goto	l55986
	line	281
	
l55978:; BSR set to: 0

;control.c: 280: else;control.c: 281: RunData.AlarmLEDCount = 0;
	movlw	high(0)
	movwf	(1+(_RunData+03Dh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+03Dh))&0ffh
	goto	l55986
	line	285
	
l55980:; BSR set to: 0

;control.c: 283: else;control.c: 284: {;control.c: 285: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	line	286
	
l55982:
;control.c: 286: RunData.AlarmSwitch = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+037h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+037h))&0ffh
	line	287
	
l55984:; BSR set to: 0

;control.c: 287: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	289
	
l55986:
;control.c: 288: };control.c: 289: Update_Display();
	call	_Update_Display	;wreg free
	line	290
	
l55988:
;control.c: 290: IR_MoreCtr();
	call	_IR_MoreCtr	;wreg free
	line	291
	
l55990:; BSR set to: 0

;control.c: 291: BeepCtr1(KeyDat.key_value);
	movff	0+(_KeyDat+06h),(c:BeepCtr1@value)
	movff	1+(_KeyDat+06h),(c:BeepCtr1@value+1)
	call	_BeepCtr1	;wreg free
	line	292
	
l55992:
;control.c: 292: key_scan();
	call	_key_scan	;wreg free
	line	295
	
l55994:; BSR set to: 0

;control.c: 295: if(KeyDat.key_short_value == 0x07)
		movlw	7
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfss	status,2
	goto	u16391
	goto	u16390

u16391:
	goto	l55998
u16390:
	line	297
	
l55996:; BSR set to: 0

;control.c: 296: {;control.c: 297: RunData.AlarmSwitch = !RunData.AlarmSwitch;
	movf	(0+(_RunData+037h))&0ffh,w
iorwf	(1+(_RunData+037h))&0ffh,w
	btfsc	status,2
	goto	u16401
	goto	u16400

u16401:
	movlw	1
	goto	u16410
u16400:
	movlw	0
u16410:
	movwf	(0+(_RunData+037h))&0ffh
	clrf	(1+(_RunData+037h))&0ffh
	line	299
	
l55998:; BSR set to: 0

;control.c: 298: };control.c: 299: Label_CloseAlarm(RunData.AlarmSwitch);
	movf	(0+(_RunData+037h))&0ffh,w
	
	call	_Label_CloseAlarm
	line	300
	
l56000:
;control.c: 300: TSC_Scan();
	call	_TSC_Scan	;wreg free
	line	301
	
l56002:
;control.c: 301: if (TSC_DataProcessing() == 1)
	call	_TSC_DataProcessing	;wreg free
	decf	wreg
	btfss	status,2
	goto	u16421
	goto	u16420
u16421:
	goto	l56006
u16420:
	line	303
	
l56004:; BSR set to: 1

;control.c: 302: {;control.c: 303: Get_Key_Demo();
	call	_Get_Key_Demo	;wreg free
	line	305
	
l56006:
;control.c: 304: };control.c: 305: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	306
	
l56008:
;control.c: 306: if (RunData.DC12_V > 600)
		movlw	89
	movlb	0	; () banked
	subwf	 (0+(_RunData+06h))&0ffh,w
	movlw	2
	subwfb	(1+(_RunData+06h))&0ffh,w
	btfss	status,0
	goto	u16431
	goto	u16430

u16431:
	goto	l55952
u16430:
	line	308
	
l56010:; BSR set to: 0

;control.c: 307: {;control.c: 308: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	309
# 309 "control.c"
reset ;# 
psect	text11
	line	310
;control.c: 310: break;
	goto	l36438
	line	314
	
l36402:; BSR set to: 0

	line	315
;control.c: 311: };control.c: 312: };control.c: 313: };control.c: 314: };control.c: 315: }
	goto	l36438
	line	318
	
l56012:; BSR set to: 0

;control.c: 316: else;control.c: 317: {;control.c: 318: RunData.ErrCodeSecCount = 0;
	movlw	high(0)
	movwf	(1+(_RunData+03Fh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+03Fh))&0ffh
	line	319
;control.c: 319: RunData.SysSta2 = 0;
	movlw	low(0)
	movwf	(0+(_RunData+03h))&0ffh
	line	320
	
l56014:; BSR set to: 0

;control.c: 320: if (RunData.DC12_V < 600)
		movlw	88
	subwf	 (0+(_RunData+06h))&0ffh,w
	movlw	2
	subwfb	(1+(_RunData+06h))&0ffh,w
	btfsc	status,0
	goto	u16441
	goto	u16440

u16441:
	goto	l36438
u16440:
	line	329
	
l56016:; BSR set to: 0

;control.c: 321: {;control.c: 329: LATDbits.LATD7 = 1;
	bsf	((c:3980))^0f00h,c,7	;volatile
	line	331
	
l56018:; BSR set to: 0

;control.c: 331: RunData.SysSta = 0x00;
	movlw	low(0)
	movwf	(0+(_RunData+02h))&0ffh
	line	332
;control.c: 332: for (i = 0; i < 16; i++)
	movlw	high(0)
	movwf	((c:ErrorCtr@i+1))^00h,c
	movlw	low(0)
	movwf	((c:ErrorCtr@i))^00h,c
	line	333
	
l56024:
;control.c: 333: DisBuf[i] = 0;
	movf	((c:ErrorCtr@i))^00h,c,w
	addlw	low(_DisBuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	332
	
l56026:
	infsnz	((c:ErrorCtr@i))^00h,c
	incf	((c:ErrorCtr@i+1))^00h,c
	
l56028:
		movf	((c:ErrorCtr@i+1))^00h,c,w
	bnz	u16450
	movlw	16
	subwf	 ((c:ErrorCtr@i))^00h,c,w
	btfss	status,0
	goto	u16451
	goto	u16450

u16451:
	goto	l56024
u16450:
	line	334
	
l56030:
;control.c: 334: TM1629_Luminance(0);
	movlw	(0)&0ffh
	
	call	_TM1629_Luminance
	line	335
	
l56032:
;control.c: 335: Update_Display();
	call	_Update_Display	;wreg free
	line	336
	
l56034:
;control.c: 336: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	337
;control.c: 337: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	line	338
;control.c: 338: while (1)
	
l36433:
	line	340
;control.c: 339: {;control.c: 340: if ((i % 100) == 0)
	movff	(c:ErrorCtr@i),(c:___lwmod@dividend)
	movff	(c:ErrorCtr@i+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
iorwf	(1+?___lwmod)^00h,c,w
	btfss	status,2
	goto	u16461
	goto	u16460

u16461:
	goto	l56038
u16460:
	line	341
	
l56036:
;control.c: 341: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	342
	
l56038:
;control.c: 342: i++;
	infsnz	((c:ErrorCtr@i))^00h,c
	incf	((c:ErrorCtr@i+1))^00h,c
	line	343
# 343 "control.c"
clrwdt ;# 
psect	text11
	line	344
	
l56040:
;control.c: 344: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	345
	
l56042:
;control.c: 345: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	346
	
l56044:
;control.c: 346: if (RunData.DC12_V > 600)
		movlw	89
	movlb	0	; () banked
	subwf	 (0+(_RunData+06h))&0ffh,w
	movlw	2
	subwfb	(1+(_RunData+06h))&0ffh,w
	btfss	status,0
	goto	u16471
	goto	u16470

u16471:
	goto	l36433
u16470:
	line	348
	
l56046:; BSR set to: 0

;control.c: 347: {;control.c: 348: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	349
# 349 "control.c"
reset ;# 
psect	text11
	line	355
;control.c: 350: break;
	
l36438:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_ErrorCtr
	__end_of_ErrorCtr:
	signat	_ErrorCtr,89
	global	_key_scan

;; *************** function _key_scan *****************
;; Defined at:
;;		line 60 in file "touchkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_IR_KeyReadCtr
;;		_TouchKeyValue
;; This function is called by:
;;		_main
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"touchkey.c"
	line	60
global __ptext12
__ptext12:
psect	text12
	file	"touchkey.c"
	line	60
	global	__size_of_key_scan
	__size_of_key_scan	equ	__end_of_key_scan-_key_scan
	
_key_scan:
;incstack = 0
	opt	callstack 25
	line	63
	
l54772:
;touchkey.c: 62: static u16 key_;;touchkey.c: 63: u8 i=0;
	movlw	low(0)
	movwf	((c:key_scan@i))^00h,c
	line	65
	
l54774:
;touchkey.c: 65: KeyDat.key_value = TouchKeyValue();
	call	_TouchKeyValue	;wreg free
	movff	0+?_TouchKeyValue,0+(_KeyDat+06h)
	movff	1+?_TouchKeyValue,1+(_KeyDat+06h)
	line	66
	
l54776:
;touchkey.c: 66: if(KeyDat.key_value == 0) KeyDat.key_value = IR_KeyReadCtr();
	movlb	0	; () banked
	movf	(0+(_KeyDat+06h))&0ffh,w
iorwf	(1+(_KeyDat+06h))&0ffh,w
	btfss	status,2
	goto	u14541
	goto	u14540

u14541:
	goto	l54780
u14540:
	
l54778:; BSR set to: 0

	call	_IR_KeyReadCtr	;wreg free
	movff	0+?_IR_KeyReadCtr,0+(_KeyDat+06h)
	movff	1+?_IR_KeyReadCtr,1+(_KeyDat+06h)
	line	69
	
l54780:
;touchkey.c: 69: if(KeyDat.key_value == 0)
	movlb	0	; () banked
	movf	(0+(_KeyDat+06h))&0ffh,w
iorwf	(1+(_KeyDat+06h))&0ffh,w
	btfss	status,2
	goto	u14551
	goto	u14550

u14551:
	goto	l54790
u14550:
	line	71
	
l54782:; BSR set to: 0

;touchkey.c: 70: {;touchkey.c: 71: if(KeyDat.key_tim>0&&KeyDat.key_tim < 1000)
	movf	((_KeyDat))&0ffh,w
iorwf	((_KeyDat+1))&0ffh,w
	btfsc	status,2
	goto	u14561
	goto	u14560

u14561:
	goto	l54788
u14560:
	
l54784:; BSR set to: 0

		movlw	232
	subwf	 ((_KeyDat))&0ffh,w
	movlw	3
	subwfb	((_KeyDat+1))&0ffh,w
	btfsc	status,0
	goto	u14571
	goto	u14570

u14571:
	goto	l54788
u14570:
	line	73
	
l54786:; BSR set to: 0

;touchkey.c: 72: {;touchkey.c: 73: KeyDat.key_short_value = key_;
	movff	(key_scan@key_),0+(_KeyDat+04h)
	movff	(key_scan@key_+1),1+(_KeyDat+04h)
	line	74
;touchkey.c: 74: }
	goto	l18378
	line	76
	
l54788:; BSR set to: 0

;touchkey.c: 75: else;touchkey.c: 76: KeyDat.key_short_value = 0;
	movlw	high(0)
	movwf	(1+(_KeyDat+04h))&0ffh
	movlw	low(0)
	movwf	(0+(_KeyDat+04h))&0ffh
	
l18378:; BSR set to: 0

	line	78
;touchkey.c: 78: KeyDat.key_val_x = 0;
	movlw	high(0)
	movwf	(1+(_KeyDat+08h))&0ffh
	movlw	low(0)
	movwf	(0+(_KeyDat+08h))&0ffh
	line	79
;touchkey.c: 79: KeyDat.key_long_value = 0;
	movlw	high(0)
	movwf	(1+(_KeyDat+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_KeyDat+02h))&0ffh
	line	80
;touchkey.c: 80: KeyDat.key_tim = 0;
	movlw	high(0)
	movwf	((_KeyDat+1))&0ffh
	movlw	low(0)
	movwf	((_KeyDat))&0ffh
	line	81
;touchkey.c: 81: }
	goto	l54792
	line	83
	
l54790:; BSR set to: 0

;touchkey.c: 82: else;touchkey.c: 83: i++;
	incf	((c:key_scan@i))^00h,c
	line	84
	
l54792:; BSR set to: 0

;touchkey.c: 84: if(KeyDat.key_tim > 10)
		movf	((_KeyDat+1))&0ffh,w
	bnz	u14580
	movlw	11
	subwf	 ((_KeyDat))&0ffh,w
	btfss	status,0
	goto	u14581
	goto	u14580

u14581:
	goto	l54796
u14580:
	line	85
	
l54794:; BSR set to: 0

;touchkey.c: 85: KeyDat.key_val_x = KeyDat.key_value;
	movff	0+(_KeyDat+06h),0+(_KeyDat+08h)
	movff	1+(_KeyDat+06h),1+(_KeyDat+08h)
	line	87
	
l54796:; BSR set to: 0

;touchkey.c: 87: if(KeyDat.key_tim >= 2000)
		movlw	208
	subwf	 ((_KeyDat))&0ffh,w
	movlw	7
	subwfb	((_KeyDat+1))&0ffh,w
	btfss	status,0
	goto	u14591
	goto	u14590

u14591:
	goto	l54802
u14590:
	line	89
	
l54798:; BSR set to: 0

;touchkey.c: 88: {;touchkey.c: 89: KeyDat.key_tim = 2000;
	movlw	high(07D0h)
	movwf	((_KeyDat+1))&0ffh
	movlw	low(07D0h)
	movwf	((_KeyDat))&0ffh
	line	90
	
l54800:; BSR set to: 0

;touchkey.c: 90: KeyDat.key_long_value = KeyDat.key_value;
	movff	0+(_KeyDat+06h),0+(_KeyDat+02h)
	movff	1+(_KeyDat+06h),1+(_KeyDat+02h)
	line	92
	
l54802:; BSR set to: 0

;touchkey.c: 91: };touchkey.c: 92: key_ = KeyDat.key_value;
	movff	0+(_KeyDat+06h),(key_scan@key_)
	movff	1+(_KeyDat+06h),(key_scan@key_+1)
	line	96
	
l18382:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_key_scan
	__end_of_key_scan:
	signat	_key_scan,89
	global	_IR_KeyReadCtr

;; *************** function _IR_KeyReadCtr *****************
;; Defined at:
;;		line 182 in file "irkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ret             2   15[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"irkey.c"
	line	182
global __ptext13
__ptext13:
psect	text13
	file	"irkey.c"
	line	182
	global	__size_of_IR_KeyReadCtr
	__size_of_IR_KeyReadCtr	equ	__end_of_IR_KeyReadCtr-_IR_KeyReadCtr
	
_IR_KeyReadCtr:; BSR set to: 0

;incstack = 0
	opt	callstack 25
	line	184
	
l54426:; BSR set to: 0

;irkey.c: 184: u16 ret = 0;
	movlw	high(0)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(0)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	185
;irkey.c: 185: if (IRData.Sta)
	movlb	1	; () banked
	movf	(0+(_IRData+0Ch))&0ffh,w
	btfsc	status,2
	goto	u14241
	goto	u14240
u14241:
	goto	l54452
u14240:
	goto	l54450
	line	190
	
l54430:; BSR set to: 1

;irkey.c: 190: ret = 0x01;
	movlw	high(01h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(01h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	191
;irkey.c: 191: break;
	goto	l54454
	line	193
	
l54432:; BSR set to: 1

;irkey.c: 193: ret = 0x02;
	movlw	high(02h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(02h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	194
;irkey.c: 194: break;
	goto	l54454
	line	196
	
l54434:; BSR set to: 1

;irkey.c: 196: ret = 0x03;
	movlw	high(03h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(03h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	197
;irkey.c: 197: break;
	goto	l54454
	line	199
	
l54436:; BSR set to: 1

;irkey.c: 199: ret = 0x06;
	movlw	high(06h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(06h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	200
;irkey.c: 200: break;
	goto	l54454
	line	202
	
l54438:; BSR set to: 1

;irkey.c: 202: ret = 0x04;
	movlw	high(04h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(04h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	203
;irkey.c: 203: break;
	goto	l54454
	line	205
	
l54440:; BSR set to: 1

;irkey.c: 205: ret = 0x05;
	movlw	high(05h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(05h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	206
;irkey.c: 206: break;
	goto	l54454
	line	208
	
l54442:; BSR set to: 1

;irkey.c: 208: ret = 0x08;
	movlw	high(08h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(08h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	209
;irkey.c: 209: break;
	goto	l54454
	line	211
	
l54444:; BSR set to: 1

;irkey.c: 211: ret = 0x09;
	movlw	high(09h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(09h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	212
;irkey.c: 212: break;
	goto	l54454
	line	214
	
l54446:; BSR set to: 1

;irkey.c: 214: ret = 0x07;
	movlw	high(07h)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(07h)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	215
;irkey.c: 215: break;
	goto	l54454
	line	187
	
l54450:; BSR set to: 1

	movff	(_IRData),??_IR_KeyReadCtr+0+0
	movff	(_IRData+1),??_IR_KeyReadCtr+0+0+1
	movff	(_IRData+2),??_IR_KeyReadCtr+0+0+2
	movff	(_IRData+3),??_IR_KeyReadCtr+0+0+3
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 6 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+3^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57324
	xorlw	132^0	; case 132
	skipnz
	goto	l57326
	xorlw	255^132	; case 255
	skipnz
	goto	l57328
	goto	l54454
	
l57318:; BSR set to: 1

; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 160 to 176
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+1^00h,c,w
	xorlw	160^0	; case 160
	skipnz
	goto	l57330
	xorlw	176^160	; case 176
	skipnz
	goto	l57332
	goto	l54454
	
l57330:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 95 to 95
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	95^0	; case 95
	skipnz
	goto	l54430
	goto	l54454
	
l57332:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 79 to 79
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	79^0	; case 79
	skipnz
	goto	l54432
	goto	l54454
	
l57320:; BSR set to: 1

; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 5 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 43 to 218
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+1^00h,c,w
	xorlw	43^0	; case 43
	skipnz
	goto	l57334
	xorlw	118^43	; case 118
	skipnz
	goto	l57336
	xorlw	150^118	; case 150
	skipnz
	goto	l57338
	xorlw	171^150	; case 171
	skipnz
	goto	l57340
	xorlw	218^171	; case 218
	skipnz
	goto	l57342
	goto	l54454
	
l57334:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 106 to 106
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	106^0	; case 106
	skipnz
	goto	l54446
	goto	l54454
	
l57336:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 76 to 76
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	76^0	; case 76
	skipnz
	goto	l54440
	goto	l54454
	
l57338:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 165 to 165
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	165^0	; case 165
	skipnz
	goto	l54442
	goto	l54454
	
l57340:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 230 to 230
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	230^0	; case 230
	skipnz
	goto	l54436
	goto	l54454
	
l57342:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 64 to 64
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	64^0	; case 64
	skipnz
	goto	l54438
	goto	l54454
	
l57322:; BSR set to: 1

; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 71 to 231
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+1^00h,c,w
	xorlw	71^0	; case 71
	skipnz
	goto	l57344
	xorlw	231^71	; case 231
	skipnz
	goto	l57346
	goto	l54454
	
l57344:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 184 to 184
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	184^0	; case 184
	skipnz
	goto	l54444
	goto	l54454
	
l57346:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 24 to 24
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+0^00h,c,w
	xorlw	24^0	; case 24
	skipnz
	goto	l54434
	goto	l54454
	
l57324:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+2^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57318
	goto	l54454
	
l57326:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 123 to 123
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+2^00h,c,w
	xorlw	123^0	; case 123
	skipnz
	goto	l57320
	goto	l54454
	
l57328:; BSR set to: 1

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_IR_KeyReadCtr+0+2^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57322
	goto	l54454

	line	220
	
l54452:; BSR set to: 1

;irkey.c: 218: else;irkey.c: 219: {;irkey.c: 220: IRData.RmtCnt = 0;
	movlw	high(0)
	movwf	(1+(_IRData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_IRData+012h))&0ffh
	line	221
;irkey.c: 221: IRData.Value = 0;
	movlw	low(0)
	movwf	((_IRData))&0ffh
	movlw	high(0)
	movwf	((_IRData+1))&0ffh
	movlw	low highword(0)
	movwf	((_IRData+2))&0ffh
	movlw	high highword(0)
	movwf	((_IRData+3))&0ffh
	line	222
;irkey.c: 222: IRData.get_w = 0;
	movlw	low(0)
	movwf	(0+(_IRData+0Dh))&0ffh
	line	224
;irkey.c: 224: ret = 0;
	movlw	high(0)
	movwf	((c:IR_KeyReadCtr@ret+1))^00h,c
	movlw	low(0)
	movwf	((c:IR_KeyReadCtr@ret))^00h,c
	line	226
	
l54454:; BSR set to: 1

;irkey.c: 225: };irkey.c: 226: return ret;
	movff	(c:IR_KeyReadCtr@ret),(c:?_IR_KeyReadCtr)
	movff	(c:IR_KeyReadCtr@ret+1),(c:?_IR_KeyReadCtr+1)
	line	227
	
l33734:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_IR_KeyReadCtr
	__end_of_IR_KeyReadCtr:
	signat	_IR_KeyReadCtr,90
	global	_TSC_Scan

;; *************** function _TSC_Scan *****************
;; Defined at:
;;		line 475 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_ConmunicateToPc
;;		_TSC_Start_Test
;; This function is called by:
;;		_main
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	475
global __ptext14
__ptext14:
psect	text14
	file	"main.c"
	line	475
	global	__size_of_TSC_Scan
	__size_of_TSC_Scan	equ	__end_of_TSC_Scan-_TSC_Scan
	
_TSC_Scan:; BSR set to: 1

;incstack = 0
	opt	callstack 20
	line	480
	
l54834:
;main.c: 480: TSC_Start_Test();
	call	_TSC_Start_Test	;wreg free
	line	481
	
l54836:
;main.c: 481: ConmunicateToPc();
	call	_ConmunicateToPc	;wreg free
	line	483
	
l2754:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_Scan
	__end_of_TSC_Scan:
	signat	_TSC_Scan,89
	global	_TSC_Start_Test

;; *************** function _TSC_Start_Test *****************
;; Defined at:
;;		line 1720 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GetLocalCount
;;		_HardDiv
;;		_TK_CAP_DISCHARGE
;;		_TestReadCap
;; This function is called by:
;;		_TSC_Scan
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	1720
global __ptext15
__ptext15:
psect	text15
	file	"touch.h"
	line	1720
	global	__size_of_TSC_Start_Test
	__size_of_TSC_Start_Test	equ	__end_of_TSC_Start_Test-_TSC_Start_Test
	
_TSC_Start_Test:
;incstack = 0
	opt	callstack 22
	line	1723
	
l53782:
;touch_test.c: 1723: TestReadCap();
	call	_TestReadCap	;wreg free
	line	1725
	
l53784:
;touch_test.c: 1725: if (LVDIF == 0)
	btfsc	c:(31988/8),(31988)&7	;volatile
	goto	u13401
	goto	u13400
u13401:
	goto	l41978
u13400:
	line	1727
	
l53786:
;touch_test.c: 1726: {;touch_test.c: 1727: if(T2IF==1)
	btfss	c:(31727/8),(31727)&7	;volatile
	goto	u13411
	goto	u13410
u13411:
	goto	l41980
u13410:
	line	1729
	
l53788:
;touch_test.c: 1728: {;touch_test.c: 1729: T2IF=0;
	bcf	c:(31727/8),(31727)&7	;volatile
	line	1730
	
l53790:
;touch_test.c: 1730: OverflowCnt++;
	movlb	1	; () banked
	incf	((_OverflowCnt))&0ffh
	goto	l41980
	line	1733
	
l41978:
	line	1735
;touch_test.c: 1733: };touch_test.c: 1735: bTestScanSetFlag = 0;
	bcf	(_bTestScanSetFlag/8)^00h,c,(_bTestScanSetFlag)&7	;volatile
	line	1737
;touch_test.c: 1737: uiTemp1 = T2CNTRL;
	movff	(c:3966),(_uiTemp1)	;volatile
	movlb	1	; () banked
	clrf	((_uiTemp1+1))&0ffh
	line	1738
	
l53794:; BSR set to: 1

;touch_test.c: 1738: uiTemp1 += ( ((unsigned int)T2CNTRH) <<8);
	movf	((c:3967))^0f00h,c,w	;volatile
	addwf	((_uiTemp1+1))&0ffh
	line	1739
	
l53796:; BSR set to: 1

;touch_test.c: 1739: uiTemp1 += ( ((unsigned int)OverflowCnt) <<10);
	movf	((_OverflowCnt))&0ffh,w
	movwf	(??_TSC_Start_Test+0+0)^00h,c
	clrf	(??_TSC_Start_Test+0+0+1)^00h,c

	movlw	0Ah
u13425:
	bcf	status,0
	rlcf	(??_TSC_Start_Test+0+0)^00h,c
	rlcf	(??_TSC_Start_Test+0+1)^00h,c
	decfsz	wreg
	goto	u13425
	movf	(??_TSC_Start_Test+0+0)^00h,c,w
	addwf	((_uiTemp1))&0ffh
	movf	(??_TSC_Start_Test+0+1)^00h,c,w
	addwfc	((_uiTemp1+1))&0ffh

	line	1740
	
l53798:; BSR set to: 1

;touch_test.c: 1740: OverflowCnt = 0;
	movlw	low(0)
	movwf	((_OverflowCnt))&0ffh
	line	1742
	
l53800:; BSR set to: 1

;touch_test.c: 1742: TKCON0 = 0x00;
	movlw	low(0)
	movwf	((c:3964))^0f00h,c	;volatile
	line	1744
	
l53802:; BSR set to: 1

;touch_test.c: 1744: TKCH0 = 0x00;
	movlw	low(0)
	movwf	((c:3958))^0f00h,c	;volatile
	line	1745
	
l53804:; BSR set to: 1

;touch_test.c: 1745: TKCH1 = 0x00;
	movlw	low(0)
	movwf	((c:3959))^0f00h,c	;volatile
	line	1746
	
l53806:; BSR set to: 1

;touch_test.c: 1746: TKCH2 = 0x00;
	movlw	low(0)
	movwf	((c:3960))^0f00h,c	;volatile
	line	1747
	
l53808:; BSR set to: 1

;touch_test.c: 1747: TKCH3 = 0x00;
	movlw	low(0)
	movwf	((c:3961))^0f00h,c	;volatile
	line	1748
	
l53810:; BSR set to: 1

;touch_test.c: 1748: TKCH4 = 0x00;
	movlw	low(0)
	movwf	((c:3962))^0f00h,c	;volatile
	line	1749
	
l53812:; BSR set to: 1

;touch_test.c: 1749: TKCH5 = 0x00;
	movlw	low(0)
	movwf	((c:3963))^0f00h,c	;volatile
	line	1751
	
l53814:; BSR set to: 1

;touch_test.c: 1751: TK_CAP_DISCHARGE();
	call	_TK_CAP_DISCHARGE	;wreg free
	line	1753
	
l53816:; BSR set to: 1

;touch_test.c: 1753: ucFreqChargeCount++;
	incf	((_ucFreqChargeCount))&0ffh
	line	1754
	
l53818:; BSR set to: 1

;touch_test.c: 1754: if(ucFreqChargeCount >= 1)
	movf	((_ucFreqChargeCount))&0ffh,w
	btfsc	status,2
	goto	u13431
	goto	u13430
u13431:
	goto	l53922
u13430:
	line	1756
	
l53820:; BSR set to: 1

;touch_test.c: 1755: {;touch_test.c: 1756: ucFreqChargeCount = 0;
	movlw	low(0)
	movwf	((_ucFreqChargeCount))&0ffh
	line	1758
	
l53822:; BSR set to: 1

;touch_test.c: 1758: uiTemp2 = uiTemp1;
	movff	(_uiTemp1),(_uiTemp2)
	movff	(_uiTemp1+1),(_uiTemp2+1)
	line	1759
;touch_test.c: 1759: if(ucKeyPollingCount < 1)
	movlb	0	; () banked
	movf	((_ucKeyPollingCount))&0ffh,w
	btfss	status,2
	goto	u13441
	goto	u13440
u13441:
	goto	l53826
u13440:
	goto	l53904
	line	1763
	
l53826:; BSR set to: 0

;touch_test.c: 1763: else if(ucKeyPollingCount < 2)
		movlw	02h-0
	cpfslt	((_ucKeyPollingCount))&0ffh
	goto	u13451
	goto	u13450

u13451:
	goto	l53830
u13450:
	line	1765
	
l53828:; BSR set to: 0

;touch_test.c: 1764: {;touch_test.c: 1765: (unTKData[ucSweepKeyNum].uiTKData[2] = unTKData[ucSweepKeyNum].uiTKData[2] & (~0x07FF) | (uiTemp2 & 0x07FF));
	movlw	low(07FFh)
	movwf	(??_TSC_Start_Test+0+0)^00h,c
	movlw	high(07FFh)
	movwf	1+(??_TSC_Start_Test+0+0)^00h,c
	movff	(_uiTemp2),??_TSC_Start_Test+2+0
	movff	(_uiTemp2+1),??_TSC_Start_Test+2+0+1
	movf	(??_TSC_Start_Test+0+0)^00h,c,w
	andwf	(??_TSC_Start_Test+2+0)^00h,c
	movf	(??_TSC_Start_Test+0+1)^00h,c,w
	andwf	(??_TSC_Start_Test+2+1)^00h,c
	movlw	low(0F800h)
	movwf	(??_TSC_Start_Test+4+0)^00h,c
	movlw	high(0F800h)
	movwf	1+(??_TSC_Start_Test+4+0)^00h,c
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TSC_Start_Test+6+0
	movff	postdec2,??_TSC_Start_Test+6+0+1
	movf	(??_TSC_Start_Test+4+0)^00h,c,w
	andwf	(??_TSC_Start_Test+6+0)^00h,c
	movf	(??_TSC_Start_Test+4+1)^00h,c,w
	andwf	(??_TSC_Start_Test+6+1)^00h,c
	movf	(??_TSC_Start_Test+2+0)^00h,c,w
	iorwf	(??_TSC_Start_Test+6+0)^00h,c
	movf	(??_TSC_Start_Test+2+1)^00h,c,w
	iorwf	(??_TSC_Start_Test+6+1)^00h,c
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??_TSC_Start_Test+6+0,postinc2
	movff	??_TSC_Start_Test+6+1,postdec2

	line	1766
;touch_test.c: 1766: }
	goto	l53904
	line	1769
	
l53830:; BSR set to: 0

;touch_test.c: 1767: else;touch_test.c: 1768: {;touch_test.c: 1769: unTKData[ucSweepKeyNum].stTK_Data.uiPrevData = uiTemp2;
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+06h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+06h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(_uiTemp2),postinc2
	movff	(_uiTemp2+1),postdec2
	line	1770
	
l53832:; BSR set to: 0

;touch_test.c: 1770: if(bTestSleepFlag == 0)
	btfsc	(_bTestSleepFlag/8)^00h,c,(_bTestSleepFlag)&7	;volatile
	goto	u13461
	goto	u13460
u13461:
	goto	l53904
u13460:
	line	1772
	
l53834:; BSR set to: 0

;touch_test.c: 1771: {;touch_test.c: 1772: uiTemp3 = (unTKData[ucSweepKeyNum].uiTKData[2] & 0x07FF);
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TSC_Start_Test+0+0
	movff	postdec2,??_TSC_Start_Test+0+0+1
	movlw	0FFh
	andwf	(??_TSC_Start_Test+0+0)^00h,c,w
	movlb	1	; () banked
	movwf	((_uiTemp3))&0ffh
	movlw	07h
	andwf	(??_TSC_Start_Test+0+1)^00h,c,w
	movwf	1+((_uiTemp3))&0ffh
	line	1773
	
l53836:; BSR set to: 1

;touch_test.c: 1773: ucKeyPollingCount = 110;
	movlw	low(06Eh)
	movlb	0	; () banked
	movwf	((_ucKeyPollingCount))&0ffh
	line	1775
	
l53838:; BSR set to: 0

;touch_test.c: 1775: midres = ((unsigned long)ucMULTIPLE) <<12 ;
	movff	(_ucMULTIPLE),??_TSC_Start_Test+0+0
	clrf	(??_TSC_Start_Test+0+0+1)^00h,c
	clrf	(??_TSC_Start_Test+0+0+2)^00h,c
	clrf	(??_TSC_Start_Test+0+0+3)^00h,c
	movlw	0Ch
u13475:
	bcf	status,0
	rlcf	(??_TSC_Start_Test+0+0)^00h,c
	rlcf	(??_TSC_Start_Test+0+1)^00h,c
	rlcf	(??_TSC_Start_Test+0+2)^00h,c
	rlcf	(??_TSC_Start_Test+0+3)^00h,c
	decfsz	wreg
	goto	u13475
	movff	??_TSC_Start_Test+0+0,(_midres)
	movff	??_TSC_Start_Test+0+1,(_midres+1)
	movff	??_TSC_Start_Test+0+2,(_midres+2)
	movff	??_TSC_Start_Test+0+3,(_midres+3)
	line	1776
	
l53840:; BSR set to: 0

;touch_test.c: 1776: mdivs = uiTemp2;
	movff	(_uiTemp2),(_mdivs)
	movff	(_uiTemp2+1),(_mdivs+1)
	line	1777
	
l53842:; BSR set to: 0

;touch_test.c: 1777: HardDiv();
	call	_HardDiv	;wreg free
	line	1778
	
l53844:
;touch_test.c: 1778: uiTemp2 = midres_data;
	movff	(_midres_data),(_uiTemp2)
	movff	(_midres_data+1),(_uiTemp2+1)
	line	1780
	
l53846:
;touch_test.c: 1780: mdivs = uiTemp3;
	movff	(_uiTemp3),(_mdivs)
	movff	(_uiTemp3+1),(_mdivs+1)
	line	1781
	
l53848:
;touch_test.c: 1781: HardDiv();
	call	_HardDiv	;wreg free
	line	1782
	
l53850:
;touch_test.c: 1782: uiTemp3 = midres_data;
	movff	(_midres_data),(_uiTemp3)
	movff	(_midres_data+1),(_uiTemp3+1)
	line	1784
	
l53852:
;touch_test.c: 1784: ucChangeValue = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_ucChangeValue))&0ffh
	line	1786
	
l53854:; BSR set to: 1

;touch_test.c: 1786: if(uiTemp2 >= uiTemp3)
		movf	((_uiTemp3))&0ffh,w
	subwf	((_uiTemp2))&0ffh,w
	movf	((_uiTemp3+1))&0ffh,w
	subwfb	((_uiTemp2+1))&0ffh,w
	btfss	status,0
	goto	u13481
	goto	u13480

u13481:
	goto	l53862
u13480:
	line	1788
	
l53856:; BSR set to: 1

;touch_test.c: 1787: {;touch_test.c: 1788: uiTemp1 = uiTemp2 - uiTemp3;
	movf	((_uiTemp3))&0ffh,w
	subwf	((_uiTemp2))&0ffh,w
	movwf	((_uiTemp1))&0ffh
	movf	((_uiTemp3+1))&0ffh,w
	subwfb	((_uiTemp2+1))&0ffh,w
	movwf	1+((_uiTemp1))&0ffh
	line	1789
;touch_test.c: 1789: if(uiTemp1 > 255) uiTemp1 = 255;
		decf	((_uiTemp1+1))&0ffh,w
	btfss	status,0
	goto	u13491
	goto	u13490

u13491:
	goto	l53860
u13490:
	
l53858:; BSR set to: 1

	movlw	high(0FFh)
	movwf	((_uiTemp1+1))&0ffh
	setf	((_uiTemp1))&0ffh
	line	1790
	
l53860:; BSR set to: 1

;touch_test.c: 1790: ucChangeValue = (unsigned char)uiTemp1;
	movff	(_uiTemp1),(_ucChangeValue)
	line	1792
	
l53862:; BSR set to: 1

;touch_test.c: 1791: };touch_test.c: 1792: ResultDataL = (unTKData[ucSweepKeyNum].stTK_Data.uiLCF_BL.Local_Filter);
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+05h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+05h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	2	; () banked
	rrcf	(c:indf2)&0ffh,w
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<5)-1
	movwf	((c:_ResultDataL))^00h,c
	line	1793
	
l53864:; BSR set to: 2

;touch_test.c: 1793: ResultDataL = (ResultDataL << 1) & 0x003E;
	movf	((c:_ResultDataL))^00h,c,w
	addwf	((c:_ResultDataL))^00h,c,w
	andlw	low(03Eh)
	movwf	((c:_ResultDataL))^00h,c
	line	1795
	
l53866:; BSR set to: 2

;touch_test.c: 1795: if((unTKData[ucSweepKeyNum].stTK_Data.ucLastdata.Local_Key) == 0)
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+03h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+03h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	btfsc	c:indf2,7
	goto	u13501
	goto	u13500
u13501:
	goto	l53886
u13500:
	line	1797
	
l53868:; BSR set to: 2

;touch_test.c: 1796: {;touch_test.c: 1797: if(ucChangeValue >= ucActiveSensorDeltaArray[ucSweepKeyNum])
	movlw	low(_ucActiveSensorDeltaArray)
	addwf	((c:_ucSweepKeyNum))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ucActiveSensorDeltaArray)
	addwfc	1+c:fsr2l
		movf	postinc2,w
	movlb	1	; () banked
	subwf	((_ucChangeValue))&0ffh,w
	btfss	status,0
	goto	u13511
	goto	u13510

u13511:
	goto	l53902
u13510:
	line	1799
	
l53870:; BSR set to: 1

;touch_test.c: 1798: {;touch_test.c: 1799: ResultDataL |= 0x01;
	bsf	(0+(0/8)+(c:_ResultDataL))^00h,c,(0)&7
	line	1800
	
l53872:; BSR set to: 1

;touch_test.c: 1800: ResultDataH = 1;
	movlw	low(01h)
	movwf	((_ResultDataH))&0ffh
	line	1801
	
l53874:; BSR set to: 1

;touch_test.c: 1801: ReferenceDataL = ResultDataL;
	movff	(c:_ResultDataL),(_ReferenceDataL)
	line	1802
	
l53876:; BSR set to: 1

;touch_test.c: 1802: GetLocalCount();
	call	_GetLocalCount	;wreg free
	line	1803
	
l53878:; BSR set to: 1

;touch_test.c: 1803: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	1804
	
l53880:
;touch_test.c: 1804: if(ResultDataH >= ucLOCAL_FILTER)
		movlw	03h-1
	movlb	1	; () banked
	cpfsgt	((_ResultDataH))&0ffh
	goto	u13521
	goto	u13520

u13521:
	goto	l53902
u13520:
	line	1806
	
l53882:; BSR set to: 1

;touch_test.c: 1805: {;touch_test.c: 1806: (unTKData[ucSweepKeyNum].stTK_Data.ucLastdata.Local_Key) = 1;
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+03h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+03h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	2	; () banked
	bsf	c:indf2,7
	line	1807
	
l53884:; BSR set to: 2

;touch_test.c: 1807: ResultDataL = 0;
	movlw	low(0)
	movwf	((c:_ResultDataL))^00h,c
	goto	l53902
	line	1814
	
l53886:; BSR set to: 2

;touch_test.c: 1811: else;touch_test.c: 1812: {;touch_test.c: 1814: if( ucChangeValue <= ucInActiveSensorDeltaArray[ucSweepKeyNum] )
	movlw	low(_ucInActiveSensorDeltaArray)
	addwf	((c:_ucSweepKeyNum))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ucInActiveSensorDeltaArray)
	addwfc	1+c:fsr2l
	movlb	1	; () banked
		movf	((_ucChangeValue))&0ffh,w
	subwf	postinc2,w
	btfss	status,0
	goto	u13531
	goto	u13530

u13531:
	goto	l53902
u13530:
	line	1817
	
l53888:; BSR set to: 1

;touch_test.c: 1815: {;touch_test.c: 1817: ResultDataL |= 0x01;
	bsf	(0+(0/8)+(c:_ResultDataL))^00h,c,(0)&7
	line	1818
	
l53890:; BSR set to: 1

;touch_test.c: 1818: ResultDataH = 1;
	movlw	low(01h)
	movwf	((_ResultDataH))&0ffh
	line	1819
	
l53892:; BSR set to: 1

;touch_test.c: 1819: ReferenceDataL = ResultDataL;
	movff	(c:_ResultDataL),(_ReferenceDataL)
	line	1820
	
l53894:; BSR set to: 1

;touch_test.c: 1820: GetLocalCount();
	call	_GetLocalCount	;wreg free
	line	1821
	
l53896:; BSR set to: 1

;touch_test.c: 1821: if(ResultDataH >= ucLOCAL_FILTER)
		movlw	03h-1
	cpfsgt	((_ResultDataH))&0ffh
	goto	u13541
	goto	u13540

u13541:
	goto	l53902
u13540:
	line	1823
	
l53898:; BSR set to: 1

;touch_test.c: 1822: {;touch_test.c: 1823: (unTKData[ucSweepKeyNum].stTK_Data.ucLastdata.Local_Key) = 0;
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+03h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+03h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	2	; () banked
	bcf	c:indf2,7
	goto	l53884
	line	1829
	
l53902:
;touch_test.c: 1825: };touch_test.c: 1826: };touch_test.c: 1827: };touch_test.c: 1829: (unTKData[ucSweepKeyNum].stTK_Data.uiLCF_BL.Local_Filter) = ResultDataL;
	movff	(c:_ResultDataL),??_TSC_Start_Test+0+0
	movf	((c:_ucSweepKeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+05h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+05h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	rlncf	(??_TSC_Start_Test+0+0)^00h,c
	rlncf	(??_TSC_Start_Test+0+0)^00h,c
	rlncf	(??_TSC_Start_Test+0+0)^00h,c
	movlb	2	; () banked
	movf	(c:indf2)&0ffh,w
	xorwf	(??_TSC_Start_Test+0+0)^00h,c,w
	andlw	not (((1<<5)-1)<<3)
	xorwf	(??_TSC_Start_Test+0+0)^00h,c,w
	movwf	(c:indf2)&0ffh
	line	1833
	
l53904:
;touch_test.c: 1830: };touch_test.c: 1831: };touch_test.c: 1833: ucSweepKeyNum++;
	incf	((c:_ucSweepKeyNum))^00h,c
	line	1834
	
l53906:
;touch_test.c: 1834: if(ucSweepKeyNum >= ucTempMaxChangeKey)
	movlb	1	; () banked
		movf	((_ucTempMaxChangeKey))&0ffh,w
	subwf	((c:_ucSweepKeyNum))^00h,c,w
	btfss	status,0
	goto	u13551
	goto	u13550

u13551:
	goto	l53922
u13550:
	line	1836
	
l53908:; BSR set to: 1

;touch_test.c: 1835: {;touch_test.c: 1836: ucSweepKeyNum = 0;
	movlw	low(0)
	movwf	((c:_ucSweepKeyNum))^00h,c
	line	1838
	
l53910:; BSR set to: 1

;touch_test.c: 1838: if(ucKeyPollingCount == 110)
		movlw	110
	movlb	0	; () banked
	xorwf	((_ucKeyPollingCount))&0ffh,w
	btfss	status,2
	goto	u13561
	goto	u13560

u13561:
	goto	l53920
u13560:
	line	1840
	
l53912:; BSR set to: 0

;touch_test.c: 1839: {;touch_test.c: 1840: ucKeyPollingOk = SET;
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_ucKeyPollingOk))&0ffh
	line	1842
	
l53914:; BSR set to: 1

;touch_test.c: 1842: LVDIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	1843
	
l53916:; BSR set to: 1

;touch_test.c: 1843: LVDIE = 0;
	bcf	c:(31980/8),(31980)&7	;volatile
	goto	l41980
	line	1847
	
l53920:; BSR set to: 0

;touch_test.c: 1846: };touch_test.c: 1847: ucKeyPollingCount++;
	incf	((_ucKeyPollingCount))&0ffh
	line	1850
	
l53922:
;touch_test.c: 1848: };touch_test.c: 1849: };touch_test.c: 1850: LVDIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	1852
	
l41980:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_Start_Test
	__end_of_TSC_Start_Test:
	signat	_TSC_Start_Test,89
	global	_TestReadCap

;; *************** function _TestReadCap *****************
;; Defined at:
;;		line 1630 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ucGroup         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=1
	line	1630
global __ptext16
__ptext16:
psect	text16
	file	"touch.h"
	line	1630
	global	__size_of_TestReadCap
	__size_of_TestReadCap	equ	__end_of_TestReadCap-_TestReadCap
	
_TestReadCap:
;incstack = 0
	opt	callstack 22
	line	1632
	
l53572:
	line	1634
	
l53574:
;touch_test.c: 1634: if(bTestScanSetFlag) return;
	btfss	(_bTestScanSetFlag/8)^00h,c,(_bTestScanSetFlag)&7	;volatile
	goto	u13081
	goto	u13080
u13081:
	goto	l41960
u13080:
	goto	l41961
	
l41960:
	line	1635
;touch_test.c: 1635: bTestScanSetFlag = 1;
	bsf	(_bTestScanSetFlag/8)^00h,c,(_bTestScanSetFlag)&7	;volatile
	line	1637
	
l53578:
;touch_test.c: 1637: LVDCON0 = 0x7F;
	movlw	low(07Fh)
	movlb	15	; () banked
	movwf	((3886))&0ffh	;volatile
	line	1638
	
l53580:; BSR set to: 15

;touch_test.c: 1638: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	260
;touch_test.c: 1640: ucTempMaxChangeKey = ucKEY_NUMBER_MAX;
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((_ucTempMaxChangeKey))&0ffh
	line	1643
	
l53582:; BSR set to: 1

;touch_test.c: 1643: ucGroup = uiGroupArray[ucSweepKeyNum];
	movlw	low(_uiGroupArray)
	addwf	((c:_ucSweepKeyNum))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_uiGroupArray)
	addwfc	1+c:fsr2l
	movf	indf2,w
	movwf	((c:TestReadCap@ucGroup))^00h,c
	line	1644
	
l53584:; BSR set to: 1

;touch_test.c: 1644: if(ucGroup != 0xFF)
		incf	((c:TestReadCap@ucGroup))^00h,c,w
	btfsc	status,2
	goto	u13091
	goto	u13090

u13091:
	goto	l53588
u13090:
	line	1646
	
l53586:; BSR set to: 1

;touch_test.c: 1645: {;touch_test.c: 1646: TKCH0 = puiSLEEP[ucGroup][0]>>8;
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(0)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(0)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TestReadCap+0+0
	movff	postdec2,??_TestReadCap+0+0+1
	movff	??_TestReadCap+0+1,??_TestReadCap+0+0
	clrf	(??_TestReadCap+0+1)^00h,c
	movf	(??_TestReadCap+0+0)^00h,c,w
	movwf	((c:3958))^0f00h,c	;volatile
	line	1647
;touch_test.c: 1647: TKCH1 = puiSLEEP[ucGroup][0];
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(0)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(0)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3959))^0f00h,c	;volatile
	line	1648
;touch_test.c: 1648: TKCH2 = puiSLEEP[ucGroup][1]>>8;
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(02h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(02h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TestReadCap+0+0
	movff	postdec2,??_TestReadCap+0+0+1
	movff	??_TestReadCap+0+1,??_TestReadCap+0+0
	clrf	(??_TestReadCap+0+1)^00h,c
	movf	(??_TestReadCap+0+0)^00h,c,w
	movwf	((c:3960))^0f00h,c	;volatile
	line	1649
;touch_test.c: 1649: TKCH3 = puiSLEEP[ucGroup][1];
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(02h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(02h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3961))^0f00h,c	;volatile
	line	1650
;touch_test.c: 1650: TKCH4 = puiSLEEP[ucGroup][2]>>8;
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TestReadCap+0+0
	movff	postdec2,??_TestReadCap+0+0+1
	movff	??_TestReadCap+0+1,??_TestReadCap+0+0
	clrf	(??_TestReadCap+0+1)^00h,c
	movf	(??_TestReadCap+0+0)^00h,c,w
	movwf	((c:3962))^0f00h,c	;volatile
	line	1651
;touch_test.c: 1651: TKCH5 = puiSLEEP[ucGroup][2];
	movf	((c:TestReadCap@ucGroup))^00h,c,w
	mullw	08h
	movlw	low(04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3963))^0f00h,c	;volatile
	line	1652
;touch_test.c: 1652: }
	goto	l53624
	line	1655
	
l53588:; BSR set to: 1

;touch_test.c: 1653: else;touch_test.c: 1654: {;touch_test.c: 1655: ucKeyMapNumber = ucKeyIndexMapArray[ucSweepKeyNum];
	movf	((c:_ucSweepKeyNum))^00h,c,w
	addlw	low(_ucKeyIndexMapArray)
	movwf	(??_TestReadCap+0+0)^00h,c
	movff	(??_TestReadCap+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:_ucKeyMapNumber)
	line	1659
	
l53590:; BSR set to: 1

;touch_test.c: 1659: if(ucKeyMapNumber<8)
		movlw	08h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13101
	goto	u13100

u13101:
	goto	l53594
u13100:
	line	1661
	
l53592:; BSR set to: 1

;touch_test.c: 1660: {;touch_test.c: 1661: TKCH0 = 0x01<<ucKeyMapNumber;
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13114
u13115:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13114:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13115
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3958))^0f00h,c	;volatile
	line	1662
;touch_test.c: 1662: }
	goto	l53624
	line	1663
	
l53594:; BSR set to: 1

;touch_test.c: 1663: else if((ucKeyMapNumber>=8)&&(ucKeyMapNumber<16))
		movlw	08h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u13121
	goto	u13120

u13121:
	goto	l53600
u13120:
	
l53596:; BSR set to: 1

		movlw	010h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13131
	goto	u13130

u13131:
	goto	l53600
u13130:
	line	1665
	
l53598:; BSR set to: 1

;touch_test.c: 1664: {;touch_test.c: 1665: TKCH1 = (0x01<<ucKeyMapNumber-8);
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	-8
	addwf	(??_TestReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13144
u13145:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13144:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13145
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3959))^0f00h,c	;volatile
	line	1666
;touch_test.c: 1666: }
	goto	l53624
	line	1667
	
l53600:; BSR set to: 1

;touch_test.c: 1667: else if((ucKeyMapNumber>=16)&&(ucKeyMapNumber<24))
		movlw	010h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u13151
	goto	u13150

u13151:
	goto	l53606
u13150:
	
l53602:; BSR set to: 1

		movlw	018h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13161
	goto	u13160

u13161:
	goto	l53606
u13160:
	line	1669
	
l53604:; BSR set to: 1

;touch_test.c: 1668: {;touch_test.c: 1669: TKCH2 = (0x01<<ucKeyMapNumber-16);
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	-16
	addwf	(??_TestReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13174
u13175:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13174:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13175
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3960))^0f00h,c	;volatile
	line	1670
;touch_test.c: 1670: }
	goto	l53624
	line	1671
	
l53606:; BSR set to: 1

;touch_test.c: 1671: else if((ucKeyMapNumber>=24)&&(ucKeyMapNumber<32))
		movlw	018h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u13181
	goto	u13180

u13181:
	goto	l53612
u13180:
	
l53608:; BSR set to: 1

		movlw	020h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13191
	goto	u13190

u13191:
	goto	l53612
u13190:
	line	1673
	
l53610:; BSR set to: 1

;touch_test.c: 1672: {;touch_test.c: 1673: TKCH3 = (0x01<<ucKeyMapNumber-24);
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	-24
	addwf	(??_TestReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13204
u13205:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13204:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13205
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3961))^0f00h,c	;volatile
	line	1674
;touch_test.c: 1674: }
	goto	l53624
	line	1675
	
l53612:; BSR set to: 1

;touch_test.c: 1675: else if((ucKeyMapNumber>=32)&&(ucKeyMapNumber<40))
		movlw	020h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u13211
	goto	u13210

u13211:
	goto	l53618
u13210:
	
l53614:; BSR set to: 1

		movlw	028h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13221
	goto	u13220

u13221:
	goto	l53618
u13220:
	line	1677
	
l53616:; BSR set to: 1

;touch_test.c: 1676: {;touch_test.c: 1677: TKCH4 = (0x01<<ucKeyMapNumber-32);
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	-32
	addwf	(??_TestReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13234
u13235:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13234:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13235
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3962))^0f00h,c	;volatile
	line	1678
;touch_test.c: 1678: }
	goto	l53624
	line	1679
	
l53618:; BSR set to: 1

;touch_test.c: 1679: else if((ucKeyMapNumber>=40)&&(ucKeyMapNumber<46))
		movlw	028h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u13241
	goto	u13240

u13241:
	goto	l41974
u13240:
	
l53620:; BSR set to: 1

		movlw	02Eh-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u13251
	goto	u13250

u13251:
	goto	l41974
u13250:
	line	1681
	
l53622:; BSR set to: 1

;touch_test.c: 1680: {;touch_test.c: 1681: TKCH5 = (0x01<<ucKeyMapNumber-40);
	movff	(c:_ucKeyMapNumber),??_TestReadCap+0+0
	movlw	-40
	addwf	(??_TestReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_TestReadCap+1+0)^00h,c
	incf	(??_TestReadCap+0+0)^00h,c
	goto	u13264
u13265:
	bcf	status,0
	rlcf	((??_TestReadCap+1+0))^00h,c
u13264:
	decfsz	(??_TestReadCap+0+0)^00h,c
	goto	u13265
	movf	((??_TestReadCap+1+0))^00h,c,w
	movwf	((c:3963))^0f00h,c	;volatile
	line	1682
;touch_test.c: 1682: }
	goto	l53624
	line	1683
	
l41974:; BSR set to: 1

	line	1685
;touch_test.c: 1683: else;touch_test.c: 1684: {;touch_test.c: 1685: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	1689
	
l53624:
;touch_test.c: 1686: };touch_test.c: 1687: };touch_test.c: 1689: OverflowCnt = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_OverflowCnt))&0ffh
	line	1692
	
l53626:; BSR set to: 1

;touch_test.c: 1692: TKCAPEN = 0;
	bcf	c:(31712/8),(31712)&7	;volatile
	line	1694
;touch_test.c: 1694: TKCON0 = 0x14;
	movlw	low(014h)
	movwf	((c:3964))^0f00h,c	;volatile
	line	1703
;touch_test.c: 1703: T2CNTRL = 0;
	movlw	low(0)
	movwf	((c:3966))^0f00h,c	;volatile
	line	1704
;touch_test.c: 1704: T2CNTRH = 0;
	movlw	low(0)
	movwf	((c:3967))^0f00h,c	;volatile
	line	1706
	
l53628:; BSR set to: 1

;touch_test.c: 1706: TKCAPEN = 1;
	bsf	c:(31712/8),(31712)&7	;volatile
	line	1708
	
l53630:; BSR set to: 1

;touch_test.c: 1708: LVDIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	1709
	
l53632:; BSR set to: 1

;touch_test.c: 1709: T2CEN = 1;
	bsf	c:(31720/8),(31720)&7	;volatile
	line	1710
	
l53634:; BSR set to: 1

;touch_test.c: 1710: TKAUXTE = 1;
	movlb	14	; () banked
	bsf	(29441/8)&0ffh,(29441)&7	;volatile
	line	1711
	
l41961:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TestReadCap
	__end_of_TestReadCap:
	signat	_TestReadCap,89
	global	_TK_CAP_DISCHARGE

;; *************** function _TK_CAP_DISCHARGE *****************
;; Defined at:
;;		line 559 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,inline,group=1
	line	559
global __ptext17
__ptext17:
psect	text17
	file	"touch.h"
	line	559
	global	__size_of_TK_CAP_DISCHARGE
	__size_of_TK_CAP_DISCHARGE	equ	__end_of_TK_CAP_DISCHARGE-_TK_CAP_DISCHARGE
	
_TK_CAP_DISCHARGE:
;incstack = 0
	opt	callstack 22
	line	563
	
l53492:; BSR set to: 1

;touch_test.c: 563: TKCON0 = 0x83;
	movlw	low(083h)
	movwf	((c:3964))^0f00h,c	;volatile
	line	570
	
l41809:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TK_CAP_DISCHARGE
	__end_of_TK_CAP_DISCHARGE:
	signat	_TK_CAP_DISCHARGE,89
	global	_HardDiv

;; *************** function _HardDiv *****************
;; Defined at:
;;		line 771 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ptr_midres      2   11[COMRAM] PTR unsigned char 
;;		 -> midres_data(4), 
;;  ptr_mdivs       2    9[COMRAM] PTR unsigned char 
;;		 -> mdivs_data(2), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=1
	line	771
global __ptext18
__ptext18:
psect	text18
	file	"touch.h"
	line	771
	global	__size_of_HardDiv
	__size_of_HardDiv	equ	__end_of_HardDiv-_HardDiv
	
_HardDiv:; BSR set to: 1

;incstack = 0
	opt	callstack 22
	line	776
	
l53494:
;touch_test.c: 776: unsigned char *ptr_midres = (unsigned char *)&midres_data;
		movlw	low(_midres_data)
	movwf	((c:HardDiv@ptr_midres))^00h,c
	movlw	high(_midres_data)
	movwf	((c:HardDiv@ptr_midres+1))^00h,c

	line	777
;touch_test.c: 777: unsigned char *ptr_mdivs = (unsigned char *)&mdivs_data;
		movlw	low(_mdivs_data)
	movwf	((c:HardDiv@ptr_mdivs))^00h,c
	movlw	high(_mdivs_data)
	movwf	((c:HardDiv@ptr_mdivs+1))^00h,c

	line	778
	
l53496:
;touch_test.c: 778: MDCKEN = 1;
	movlb	15	; () banked
	bsf	(31059/8)&0ffh,(31059)&7	;volatile
	line	780
	
l53498:; BSR set to: 15

;touch_test.c: 780: MDCON0 = 0;
	movlw	low(0)
	movwf	((3896))&0ffh	;volatile
	line	782
	
l53500:; BSR set to: 15

;touch_test.c: 782: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	784
	
l53502:
;touch_test.c: 784: MDRES0 = midres;
	movff	(_midres),(3890)	;volatile
	line	785
	
l53504:
;touch_test.c: 785: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	786
	
l53506:
;touch_test.c: 786: MDRES1 = midres>>8;
	movff	0+(_midres+01h),(3891)	;volatile
	line	787
	
l53508:
;touch_test.c: 787: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	788
	
l53510:
;touch_test.c: 788: MDRES2 = midres>>16;
	movff	0+(_midres+02h),(3892)	;volatile
	line	789
	
l53512:
;touch_test.c: 789: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	790
	
l53514:
;touch_test.c: 790: MDRES3 = midres>>24;
	movff	0+(_midres+03h),(3893)	;volatile
	line	791
	
l53516:
;touch_test.c: 791: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	794
	
l53518:
;touch_test.c: 794: MDIVS0 = mdivs;
	movff	(_mdivs),(3894)	;volatile
	line	795
	
l53520:
;touch_test.c: 795: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	796
	
l53522:
;touch_test.c: 796: MDIVS1 = mdivs>>8;
	movff	0+(_mdivs+01h),(3895)	;volatile
	line	797
	
l53524:
;touch_test.c: 797: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	802
;touch_test.c: 800: {;touch_test.c: 801: ;
	
l41841:
	line	799
	movlb	15	; () banked
	btfsc	(31168/8)&0ffh,(31168)&7	;volatile
	goto	u13031
	goto	u13030
u13031:
	goto	l41841
u13030:
	
l41843:; BSR set to: 15

	line	804
;touch_test.c: 802: };touch_test.c: 804: if(!DIVERR)
	btfsc	(31170/8)&0ffh,(31170)&7	;volatile
	goto	u13041
	goto	u13040
u13041:
	goto	l53554
u13040:
	line	808
	
l53526:; BSR set to: 15

;touch_test.c: 805: {;touch_test.c: 808: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	809
	
l53528:
;touch_test.c: 809: *ptr_midres++ = MDRES0;
	movff	(c:HardDiv@ptr_midres),fsr2l
	movff	(c:HardDiv@ptr_midres+1),fsr2h
	movff	(3890),indf2	;volatile

	
l53530:
	infsnz	((c:HardDiv@ptr_midres))^00h,c
	incf	((c:HardDiv@ptr_midres+1))^00h,c
	line	810
	
l53532:
;touch_test.c: 810: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	811
	
l53534:
;touch_test.c: 811: *ptr_midres++ = MDRES1;
	movff	(c:HardDiv@ptr_midres),fsr2l
	movff	(c:HardDiv@ptr_midres+1),fsr2h
	movff	(3891),indf2	;volatile

	infsnz	((c:HardDiv@ptr_midres))^00h,c
	incf	((c:HardDiv@ptr_midres+1))^00h,c
	line	812
	
l53536:
;touch_test.c: 812: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	813
	
l53538:
;touch_test.c: 813: *ptr_midres++ = MDRES2;
	movff	(c:HardDiv@ptr_midres),fsr2l
	movff	(c:HardDiv@ptr_midres+1),fsr2h
	movff	(3892),indf2	;volatile

	
l53540:
	infsnz	((c:HardDiv@ptr_midres))^00h,c
	incf	((c:HardDiv@ptr_midres+1))^00h,c
	line	814
	
l53542:
;touch_test.c: 814: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	815
;touch_test.c: 815: *ptr_midres = MDRES3;
	movff	(c:HardDiv@ptr_midres),fsr2l
	movff	(c:HardDiv@ptr_midres+1),fsr2h
	movff	(3893),indf2	;volatile

	line	816
	
l53544:
;touch_test.c: 816: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	818
;touch_test.c: 818: *ptr_mdivs++ = MDIVS0;
	movff	(c:HardDiv@ptr_mdivs),fsr2l
	movff	(c:HardDiv@ptr_mdivs+1),fsr2h
	movff	(3894),indf2	;volatile

	
l53546:
	infsnz	((c:HardDiv@ptr_mdivs))^00h,c
	incf	((c:HardDiv@ptr_mdivs+1))^00h,c
	line	819
	
l53548:
;touch_test.c: 819: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	820
	
l53550:
;touch_test.c: 820: *ptr_mdivs = MDIVS1;
	movff	(c:HardDiv@ptr_mdivs),fsr2l
	movff	(c:HardDiv@ptr_mdivs+1),fsr2h
	movff	(3895),indf2	;volatile

	line	821
	
l53552:
;touch_test.c: 821: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	824
	
l53554:
;touch_test.c: 822: };touch_test.c: 824: MDCKEN = 0;
	movlb	15	; () banked
	bcf	(31059/8)&0ffh,(31059)&7	;volatile
	line	825
	
l53556:; BSR set to: 15

;touch_test.c: 825: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	878
	
l41845:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_HardDiv
	__end_of_HardDiv:
	signat	_HardDiv,89
	global	_GetLocalCount

;; *************** function _GetLocalCount *****************
;; Defined at:
;;		line 1039 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_Start_Test
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	line	1039
global __ptext19
__ptext19:
psect	text19
	file	"touch.h"
	line	1039
	global	__size_of_GetLocalCount
	__size_of_GetLocalCount	equ	__end_of_GetLocalCount-_GetLocalCount
	
_GetLocalCount:
;incstack = 0
	opt	callstack 22
	line	1041
	
l53558:; BSR set to: 1

;touch_test.c: 1041: unsigned char temp = ReferenceDataL;
	movff	(_ReferenceDataL),(c:GetLocalCount@temp)
	line	1042
	
l53560:; BSR set to: 1

;touch_test.c: 1042: for(ucTempCount=1;ucTempCount<ucLOCAL_FILTER_SAMPLES;ucTempCount++)
	movlw	low(01h)
	movwf	((c:_ucTempCount))^00h,c
	
l53562:; BSR set to: 1

		movlw	04h-1
	cpfsgt	((c:_ucTempCount))^00h,c
	goto	u13051
	goto	u13050

u13051:
	goto	l41877
u13050:
	goto	l41880
	line	1043
	
l41877:; BSR set to: 1

	line	1044
;touch_test.c: 1043: {;touch_test.c: 1044: if (temp & 0x02)
	
	btfss	((c:GetLocalCount@temp))^00h,c,(1)&7
	goto	u13061
	goto	u13060
u13061:
	goto	l53568
u13060:
	line	1046
	
l53566:; BSR set to: 1

;touch_test.c: 1045: {;touch_test.c: 1046: ResultDataH++;
	incf	((_ResultDataH))&0ffh
	line	1048
	
l53568:; BSR set to: 1

;touch_test.c: 1047: };touch_test.c: 1048: temp >>=1;
	bcf status,0
	rrcf	((c:GetLocalCount@temp))^00h,c

	line	1042
	
l53570:; BSR set to: 1

	incf	((c:_ucTempCount))^00h,c
		movlw	04h-1
	cpfsgt	((c:_ucTempCount))^00h,c
	goto	u13071
	goto	u13070

u13071:
	goto	l41877
u13070:
	line	1050
	
l41880:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_GetLocalCount
	__end_of_GetLocalCount:
	signat	_GetLocalCount,89
	global	_ConmunicateToPc

;; *************** function _ConmunicateToPc *****************
;; Defined at:
;;		line 365 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   24[COMRAM] unsigned char 
;;  temp_xor        1   23[COMRAM] unsigned char 
;;  ucTempPackNu    1   22[COMRAM] unsigned char 
;;  ucTempLength    1   21[COMRAM] unsigned char 
;;  ucTemp          1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ReceiveDataPc
;;		_SendDataToPC
;;		_TSC_GetPrevData
;; This function is called by:
;;		_TSC_Scan
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	365
global __ptext20
__ptext20:
psect	text20
	file	"uart.c"
	line	365
	global	__size_of_ConmunicateToPc
	__size_of_ConmunicateToPc	equ	__end_of_ConmunicateToPc-_ConmunicateToPc
	
_ConmunicateToPc:; BSR set to: 1

;incstack = 0
	opt	callstack 20
	line	368
	
l53924:
;uart.c: 368: unsigned char temp_xor = 0,i,ucTempLength,ucTemp,ucTempPackNum = 0;
	movlw	low(0)
	movwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	371
	
l53926:
;uart.c: 371: if(TX_Flag)
	btfss	(_TX_Flag/8)^00h,c,(_TX_Flag)&7
	goto	u13571
	goto	u13570
u13571:
	goto	l7894
u13570:
	line	373
	
l53928:
;uart.c: 372: {;uart.c: 373: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	374
	
l53930:
;uart.c: 374: UART_TX_Buff[0] = 0x3A;
	movlw	low(03Ah)
	movlb	2	; () banked
	movwf	((_UART_TX_Buff))&0ffh
	line	375
;uart.c: 375: UART_TX_Buff[1] = 0xA3;
	movlw	low(0A3h)
	movwf	(0+(_UART_TX_Buff+01h))&0ffh
	line	376
;uart.c: 376: UART_TX_Buff[2] = 0x11;
	movlw	low(011h)
	movwf	(0+(_UART_TX_Buff+02h))&0ffh
	line	377
	
l53932:; BSR set to: 2

;uart.c: 377: UART_TX_Buff[3] = 0xB0 + ucPackNum;
	movf	((c:_ucPackNum))^00h,c,w
	addlw	low(0B0h)
	movwf	(0+(_UART_TX_Buff+03h))&0ffh
	line	378
	
l53934:; BSR set to: 2

;uart.c: 378: for (i = 0; i < 4; i++)
	movlw	low(0)
	movwf	((c:ConmunicateToPc@i))^00h,c
	line	380
	
l53938:
;uart.c: 379: {;uart.c: 380: temp_xor ^= UART_TX_Buff[i];
	movlw	low(_UART_TX_Buff)
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	1+c:fsr2l
	movf	indf2,w
	xorwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	378
	
l53940:
	incf	((c:ConmunicateToPc@i))^00h,c
	
l53942:
		movlw	04h-1
	cpfsgt	((c:ConmunicateToPc@i))^00h,c
	goto	u13581
	goto	u13580

u13581:
	goto	l53938
u13580:
	line	382
	
l53944:
;uart.c: 381: };uart.c: 382: for (i = 0; i < 8; i++)
	movlw	low(0)
	movwf	((c:ConmunicateToPc@i))^00h,c
	line	384
	
l53950:
;uart.c: 383: {;uart.c: 384: uiTemp = TSC_GetPrevData(ucPackNum*8 + i);
	movf	((c:_ucPackNum))^00h,c,w
	mullw	08h
	movf	(prodl)^0f00h,c,w
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	
	call	_TSC_GetPrevData
	movff	0+?_TSC_GetPrevData,(_uiTemp)
	movff	1+?_TSC_GetPrevData,(_uiTemp+1)
	line	386
	
l53952:
;uart.c: 386: UART_TX_Buff[(unsigned char)(4+2*i)] = (unsigned char)(uiTemp>>8);
	movf	((c:ConmunicateToPc@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	0+(_uiTemp+01h),indf2

	line	387
	
l53954:
;uart.c: 387: UART_TX_Buff[(unsigned char)(4+2*i+1)] = (unsigned char)uiTemp;
	movf	((c:ConmunicateToPc@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(_uiTemp),indf2

	line	388
	
l53956:
;uart.c: 388: temp_xor ^= UART_TX_Buff[(unsigned char)(4+2*i)];
	movf	((c:ConmunicateToPc@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	xorwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	389
	
l53958:
;uart.c: 389: temp_xor ^= UART_TX_Buff[(unsigned char)(4+2*i+1)];
	movf	((c:ConmunicateToPc@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	xorwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	382
	
l53960:
	incf	((c:ConmunicateToPc@i))^00h,c
	
l53962:
		movlw	08h-1
	cpfsgt	((c:ConmunicateToPc@i))^00h,c
	goto	u13591
	goto	u13590

u13591:
	goto	l53950
u13590:
	
l7870:
	line	391
;uart.c: 390: };uart.c: 391: UART_TX_Buff[20] = temp_xor;
	movff	(c:ConmunicateToPc@temp_xor),0+(_UART_TX_Buff+014h)
	line	392
	
l53964:
;uart.c: 392: SendDataToPC(21);
	movlw	(015h)&0ffh
	
	call	_SendDataToPC
	line	393
	
l53966:
;uart.c: 393: ucPackNum ++;
	incf	((c:_ucPackNum))^00h,c
	line	394
	
l53968:
;uart.c: 394: if(ucPackNum > (4-1)/8)
	movf	((c:_ucPackNum))^00h,c,w
	btfsc	status,2
	goto	u13601
	goto	u13600
u13601:
	goto	l53974
u13600:
	line	396
	
l53970:
;uart.c: 395: {;uart.c: 396: TX_Flag = 0;
	bcf	(_TX_Flag/8)^00h,c,(_TX_Flag)&7
	line	397
	
l53972:
;uart.c: 397: ucPackNum = 0;
	movlw	low(0)
	movwf	((c:_ucPackNum))^00h,c
	line	400
	
l53974:
;uart.c: 398: };uart.c: 400: if(ReceiveDataPc() == 1)
	call	_ReceiveDataPc	;wreg free
	decf	wreg
	btfss	status,2
	goto	u13611
	goto	u13610
u13611:
	goto	l54046
u13610:
	line	402
	
l53976:
;uart.c: 401: {;uart.c: 402: temp_xor = 0;
	movlw	low(0)
	movwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	403
	
l53978:
;uart.c: 403: ucTempLength = UART_TX_Buff[2];
	movff	0+(_UART_TX_Buff+02h),(c:ConmunicateToPc@ucTempLength)
	line	404
	
l53980:
;uart.c: 404: if(UART_TX_Buff[0] != 0x3A || UART_TX_Buff[1] != 0xA3)
		movlw	58
	movlb	2	; () banked
	xorwf	((_UART_TX_Buff))&0ffh,w
	btfss	status,2
	goto	u13621
	goto	u13620

u13621:
	goto	l53984
u13620:
	
l53982:; BSR set to: 2

		movlw	163
	xorwf	(0+(_UART_TX_Buff+01h))&0ffh,w
	btfsc	status,2
	goto	u13631
	goto	u13630

u13631:
	goto	l53986
u13630:
	line	406
	
l53984:; BSR set to: 2

;uart.c: 405: {;uart.c: 406: UART_TX_Buff[0] = 0x00;
	movlw	low(0)
	movwf	((_UART_TX_Buff))&0ffh
	line	407
;uart.c: 407: }
	goto	l54046
	line	410
	
l53986:; BSR set to: 2

;uart.c: 408: else;uart.c: 409: {;uart.c: 410: for (i = 0; i < (ucTempLength + 3); i++)
	movlw	low(0)
	movwf	((c:ConmunicateToPc@i))^00h,c
	goto	l53992
	line	412
	
l53988:
;uart.c: 411: {;uart.c: 412: temp_xor ^= UART_TX_Buff[i];
	movlw	low(_UART_TX_Buff)
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	1+c:fsr2l
	movf	indf2,w
	xorwf	((c:ConmunicateToPc@temp_xor))^00h,c
	line	410
	
l53990:
	incf	((c:ConmunicateToPc@i))^00h,c
	
l53992:
	movf	((c:ConmunicateToPc@ucTempLength))^00h,c,w
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	03h
	addwf	(??_ConmunicateToPc+0+0)^00h,c
	movlw	0
	addwfc	(??_ConmunicateToPc+0+1)^00h,c
	movf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	(??_ConmunicateToPc+2+0)^00h,c
	clrf	(??_ConmunicateToPc+2+0+1)^00h,c

		movf	(??_ConmunicateToPc+0+0)^00h,c,w
	subwf	(??_ConmunicateToPc+2+0)^00h,c,w
	movf	(??_ConmunicateToPc+2+1)^00h,c,w
	xorlw	80h
	movwf	(??_ConmunicateToPc+4+0)^00h,c
	movf	(??_ConmunicateToPc+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_ConmunicateToPc+4+0)^00h,c,w
	btfss	status,0
	goto	u13641
	goto	u13640

u13641:
	goto	l53988
u13640:
	line	414
	
l53994:
;uart.c: 413: };uart.c: 414: if(temp_xor == UART_TX_Buff[(unsigned char)(ucTempLength + 3)])
	movf	((c:ConmunicateToPc@ucTempLength))^00h,c,w
	addlw	low(03h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:ConmunicateToPc@temp_xor))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u13651
	goto	u13650

u13651:
	goto	l54042
u13650:
	line	416
	
l53996:
;uart.c: 415: {;uart.c: 416: ucTempPackNum = UART_TX_Buff[3] & 0x0F;
	movlb	2	; () banked
	movf	(0+(_UART_TX_Buff+03h))&0ffh,w
	andlw	low(0Fh)
	movwf	((c:ConmunicateToPc@ucTempPackNum))^00h,c
	line	417
	
l53998:; BSR set to: 2

;uart.c: 417: if(ucTempPackNum == (4-1)/8)
	movf	((c:ConmunicateToPc@ucTempPackNum))^00h,c,w
	btfss	status,2
	goto	u13661
	goto	u13660
u13661:
	goto	l54006
u13660:
	line	425
	
l54004:; BSR set to: 2

;uart.c: 423: else;uart.c: 424: {;uart.c: 425: ucTemp = (4)%8;
	movlw	low(04h)
	movwf	((c:ConmunicateToPc@ucTemp))^00h,c
	goto	l54008
	line	430
	
l54006:; BSR set to: 2

;uart.c: 428: else;uart.c: 429: {;uart.c: 430: ucTemp = 8;
	movlw	low(08h)
	movwf	((c:ConmunicateToPc@ucTemp))^00h,c
	line	433
	
l54008:; BSR set to: 2

;uart.c: 431: };uart.c: 433: if((UART_TX_Buff[3] & 0xF0) == 0xC0)
	movf	(0+(_UART_TX_Buff+03h))&0ffh,w
	andlw	low(0F0h)
	xorlw	0C0h
	btfss	status,2
	goto	u13671
	goto	u13670
u13671:
	goto	l54034
u13670:
	line	435
	
l54010:; BSR set to: 2

;uart.c: 434: {;uart.c: 435: for(i=0;i<ucTemp;i++)
	movlw	low(0)
	movwf	((c:ConmunicateToPc@i))^00h,c
	goto	l54016
	line	437
	
l54012:
;uart.c: 436: {;uart.c: 437: ucActiveSensorDeltaArray[(unsigned char)(ucTempPackNum*8 + i)] = UART_TX_Buff[(unsigned char)(4+i)];
	movf	((c:ConmunicateToPc@i))^00h,c,w
	addlw	low(04h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:ConmunicateToPc@ucTempPackNum))^00h,c,w
	mullw	08h
	movf	(prodl)^0f00h,c,w
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	(??_ConmunicateToPc+2+0)^00h,c
	clrf	(??_ConmunicateToPc+2+0+1)^00h,c

	movlw	low(_ucActiveSensorDeltaArray)
	addwf	(??_ConmunicateToPc+2+0)^00h,c,w
	movwf	c:fsr1l
	movlw	high(_ucActiveSensorDeltaArray)
	addwfc	(??_ConmunicateToPc+2+1)^00h,c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	438
;uart.c: 438: ucInActiveSensorDeltaArray[(unsigned char)(ucTempPackNum*8 + i)] = UART_TX_Buff[(unsigned char)(4+i)] - UART_TX_Buff[(unsigned char)(4+i)]/4;
	movf	((c:ConmunicateToPc@ucTempPackNum))^00h,c,w
	mullw	08h
	movf	(prodl)^0f00h,c,w
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_ucInActiveSensorDeltaArray)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_ucInActiveSensorDeltaArray)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:ConmunicateToPc@i))^00h,c,w
	addlw	low(04h)
	movwf	(??_ConmunicateToPc+2+0)^00h,c
	clrf	(??_ConmunicateToPc+2+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+2+0)^00h,c,w
	movwf	c:fsr1l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+2+1)^00h,c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_ConmunicateToPc+4+0)^00h,c
	bcf	status,0
	rrcf	((??_ConmunicateToPc+4+0))^00h,c
	bcf	status,0
	rrcf	((??_ConmunicateToPc+4+0))^00h,c

	movf	((c:ConmunicateToPc@i))^00h,c,w
	addlw	low(04h)
	movwf	(??_ConmunicateToPc+5+0)^00h,c
	clrf	(??_ConmunicateToPc+5+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+5+0)^00h,c,w
	movwf	c:fsr1l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+5+1)^00h,c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_ConmunicateToPc+7+0)^00h,c
	movf	((??_ConmunicateToPc+4+0))^00h,c,w
	subwf	((??_ConmunicateToPc+7+0))^00h,c,w
	movwf	indf2,c

	line	435
	
l54014:
	incf	((c:ConmunicateToPc@i))^00h,c
	
l54016:
		movf	((c:ConmunicateToPc@ucTemp))^00h,c,w
	subwf	((c:ConmunicateToPc@i))^00h,c,w
	btfss	status,0
	goto	u13681
	goto	u13680

u13681:
	goto	l54012
u13680:
	line	440
	
l54018:
;uart.c: 439: };uart.c: 440: ucMULTIPLE = UART_TX_Buff[(unsigned char)(ucTempLength + 2)];
	movf	((c:ConmunicateToPc@ucTempLength))^00h,c,w
	addlw	low(02h)
	movwf	(??_ConmunicateToPc+0+0)^00h,c
	clrf	(??_ConmunicateToPc+0+0+1)^00h,c

	movlw	low(_UART_TX_Buff)
	addwf	(??_ConmunicateToPc+0+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	(??_ConmunicateToPc+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movwf	((_ucMULTIPLE))&0ffh
	line	443
	
l54020:; BSR set to: 1

;uart.c: 443: bTestSleepFlag = 0;
	bcf	(_bTestSleepFlag/8)^00h,c,(_bTestSleepFlag)&7	;volatile
	line	444
	
l54022:; BSR set to: 1

;uart.c: 444: for(i = 0;i< 4;i++)
	movlw	low(0)
	movwf	((c:ConmunicateToPc@i))^00h,c
	line	446
	
l54028:
;uart.c: 445: {;uart.c: 446: uiGroupArray[i] = 0xFF;
	movlw	low(_uiGroupArray)
	addwf	((c:ConmunicateToPc@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_uiGroupArray)
	addwfc	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	444
	
l54030:
	incf	((c:ConmunicateToPc@i))^00h,c
	
l54032:
		movlw	04h-1
	cpfsgt	((c:ConmunicateToPc@i))^00h,c
	goto	u13691
	goto	u13690

u13691:
	goto	l54028
u13690:
	goto	l54040
	line	450
	
l54034:; BSR set to: 2

;uart.c: 450: else if((UART_TX_Buff[3] & 0xF0) == 0xD0)
	movf	(0+(_UART_TX_Buff+03h))&0ffh,w
	andlw	low(0F0h)
	xorlw	0D0h
	btfss	status,2
	goto	u13701
	goto	u13700
u13701:
	goto	l54040
u13700:
	line	452
	
l54036:; BSR set to: 2

;uart.c: 451: {;uart.c: 452: bTestSleepFlag = 1;
	bsf	(_bTestSleepFlag/8)^00h,c,(_bTestSleepFlag)&7	;volatile
	line	455
	
l54038:; BSR set to: 2

;uart.c: 455: uiGroupArray[UART_TX_Buff[11]] = UART_TX_Buff[12];
	movlw	low(_uiGroupArray)
	addwf	(0+(_UART_TX_Buff+0Bh))&0ffh,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_uiGroupArray)
	addwfc	1+c:fsr2l
	movff	0+(_UART_TX_Buff+0Ch),indf2

	line	457
	
l54040:
;uart.c: 456: };uart.c: 457: UART_TX_Buff[0] = 0x55;
	movlw	low(055h)
	movlb	2	; () banked
	movwf	((_UART_TX_Buff))&0ffh
	line	458
;uart.c: 458: }
	goto	l54044
	line	461
	
l54042:
;uart.c: 459: else;uart.c: 460: {;uart.c: 461: UART_TX_Buff[0] = 0x00;
	movlw	low(0)
	movlb	2	; () banked
	movwf	((_UART_TX_Buff))&0ffh
	line	463
	
l54044:; BSR set to: 2

;uart.c: 462: };uart.c: 463: SendDataToPC(1);
	movlw	(01h)&0ffh
	
	call	_SendDataToPC
	line	466
	
l54046:
;uart.c: 464: };uart.c: 465: };uart.c: 466: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	470
	
l7894:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_ConmunicateToPc
	__end_of_ConmunicateToPc:
	signat	_ConmunicateToPc,89
	global	_TSC_GetPrevData

;; *************** function _TSC_GetPrevData *****************
;; Defined at:
;;		line 1862 in file "touch.h"
;; Parameters:    Size  Location     Type
;;  KeyNum          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyNum          1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	1862
global __ptext21
__ptext21:
psect	text21
	file	"touch.h"
	line	1862
	global	__size_of_TSC_GetPrevData
	__size_of_TSC_GetPrevData	equ	__end_of_TSC_GetPrevData-_TSC_GetPrevData
	
_TSC_GetPrevData:
;incstack = 0
	opt	callstack 22
;TSC_GetPrevData@KeyNum stored from wreg
	movwf	((c:TSC_GetPrevData@KeyNum))^00h,c
	line	1864
	
l53022:
;touch_test.c: 1864: if(KeyNum < ucKEY_NUMBER_MAX)
		movlw	04h-0
	cpfslt	((c:TSC_GetPrevData@KeyNum))^00h,c
	goto	u12291
	goto	u12290

u12291:
	goto	l53030
u12290:
	line	1866
	
l53024:
;touch_test.c: 1865: {;touch_test.c: 1866: return (unsigned int)unTKData[KeyNum].stTK_Data.uiPrevData;
	movf	((c:TSC_GetPrevData@KeyNum))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+06h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+06h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:?_TSC_GetPrevData)
	movff	postdec2,(c:?_TSC_GetPrevData+1)
	goto	l42000
	line	1870
	
l53030:
;touch_test.c: 1868: else;touch_test.c: 1869: {;touch_test.c: 1870: return 0;
	movlw	high(0)
	movwf	((c:?_TSC_GetPrevData+1))^00h,c
	movlw	low(0)
	movwf	((c:?_TSC_GetPrevData))^00h,c
	line	1872
	
l42000:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_GetPrevData
	__end_of_TSC_GetPrevData:
	signat	_TSC_GetPrevData,4218
	global	_SendDataToPC

;; *************** function _SendDataToPC *****************
;; Defined at:
;;		line 353 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  size            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  size            1   10[COMRAM] unsigned char 
;;  i               1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	353
global __ptext22
__ptext22:
psect	text22
	file	"uart.c"
	line	353
	global	__size_of_SendDataToPC
	__size_of_SendDataToPC	equ	__end_of_SendDataToPC-_SendDataToPC
	
_SendDataToPC:
;incstack = 0
	opt	callstack 20
;SendDataToPC@size stored from wreg
	movwf	((c:SendDataToPC@size))^00h,c
	line	356
	
l53014:
;uart.c: 355: unsigned char i;;uart.c: 356: for(i=0;i<size;i++)
	movlw	low(0)
	movwf	((c:SendDataToPC@i))^00h,c
	goto	l53020
	line	358
	
l53016:
;uart.c: 357: {;uart.c: 358: uart_tx(UART_TX_Buff[i]);
	movlw	low(_UART_TX_Buff)
	addwf	((c:SendDataToPC@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	1+c:fsr2l
	movf	indf2,w
	
	call	_uart_tx
	line	356
	
l53018:
	incf	((c:SendDataToPC@i))^00h,c
	
l53020:
		movf	((c:SendDataToPC@size))^00h,c,w
	subwf	((c:SendDataToPC@i))^00h,c,w
	btfss	status,0
	goto	u12281
	goto	u12280

u12281:
	goto	l53016
u12280:
	line	361
	
l7859:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SendDataToPC
	__end_of_SendDataToPC:
	signat	_SendDataToPC,4217
	global	_uart_tx

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 107 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_uart_delay
;; This function is called by:
;;		_SendDataToPC
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	107
global __ptext23
__ptext23:
psect	text23
	file	"uart.c"
	line	107
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:
;incstack = 0
	opt	callstack 20
;uart_tx@data stored from wreg
	line	108
	movwf	((c:uart_tx@data))^00h,c
	line	110
	
l52602:
;uart.c: 110: PB0 =0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	111
;uart.c: 111: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	112
;uart.c: 112: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	113
	
l52604:
;uart.c: 113: uart_delay();
	call	_uart_delay	;wreg free
	line	114
	
l52606:
;uart.c: 114: if(data & 0x01)
	
	btfss	((c:uart_tx@data))^00h,c,(0)&7
	goto	u11861
	goto	u11860
u11861:
	goto	l7796
u11860:
	line	116
	
l52608:
;uart.c: 115: {;uart.c: 116: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	117
;uart.c: 117: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	118
	
l52610:
;uart.c: 118: uart_delay();
	call	_uart_delay	;wreg free
	line	119
;uart.c: 119: }
	goto	l52614
	line	120
	
l7796:
	line	122
;uart.c: 120: else;uart.c: 121: {;uart.c: 122: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	123
;uart.c: 123: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	124
;uart.c: 124: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52610
	line	127
	
l52614:
;uart.c: 126: };uart.c: 127: if(data & 0x02)
	
	btfss	((c:uart_tx@data))^00h,c,(1)&7
	goto	u11871
	goto	u11870
u11871:
	goto	l7798
u11870:
	line	129
	
l52616:
;uart.c: 128: {;uart.c: 129: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	130
;uart.c: 130: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	131
	
l52618:
;uart.c: 131: uart_delay();
	call	_uart_delay	;wreg free
	line	132
;uart.c: 132: }
	goto	l52622
	line	133
	
l7798:
	line	135
;uart.c: 133: else;uart.c: 134: {;uart.c: 135: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	136
;uart.c: 136: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	137
;uart.c: 137: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52618
	line	140
	
l52622:
;uart.c: 139: };uart.c: 140: if(data & 0x04)
	
	btfss	((c:uart_tx@data))^00h,c,(2)&7
	goto	u11881
	goto	u11880
u11881:
	goto	l7800
u11880:
	line	142
	
l52624:
;uart.c: 141: {;uart.c: 142: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	143
;uart.c: 143: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	144
	
l52626:
;uart.c: 144: uart_delay();
	call	_uart_delay	;wreg free
	line	145
;uart.c: 145: }
	goto	l52630
	line	146
	
l7800:
	line	148
;uart.c: 146: else;uart.c: 147: {;uart.c: 148: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	149
;uart.c: 149: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	150
;uart.c: 150: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52626
	line	153
	
l52630:
;uart.c: 152: };uart.c: 153: if(data & 0x08)
	
	btfss	((c:uart_tx@data))^00h,c,(3)&7
	goto	u11891
	goto	u11890
u11891:
	goto	l7802
u11890:
	line	155
	
l52632:
;uart.c: 154: {;uart.c: 155: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	156
;uart.c: 156: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	157
	
l52634:
;uart.c: 157: uart_delay();
	call	_uart_delay	;wreg free
	line	158
;uart.c: 158: }
	goto	l52638
	line	159
	
l7802:
	line	161
;uart.c: 159: else;uart.c: 160: {;uart.c: 161: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	162
;uart.c: 162: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	163
;uart.c: 163: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52634
	line	166
	
l52638:
;uart.c: 165: };uart.c: 166: if(data & 0x10)
	
	btfss	((c:uart_tx@data))^00h,c,(4)&7
	goto	u11901
	goto	u11900
u11901:
	goto	l7804
u11900:
	line	168
	
l52640:
;uart.c: 167: {;uart.c: 168: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	169
;uart.c: 169: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	170
	
l52642:
;uart.c: 170: uart_delay();
	call	_uart_delay	;wreg free
	line	171
;uart.c: 171: }
	goto	l52646
	line	172
	
l7804:
	line	174
;uart.c: 172: else;uart.c: 173: {;uart.c: 174: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	175
;uart.c: 175: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	176
;uart.c: 176: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52642
	line	179
	
l52646:
;uart.c: 178: };uart.c: 179: if(data & 0x20)
	
	btfss	((c:uart_tx@data))^00h,c,(5)&7
	goto	u11911
	goto	u11910
u11911:
	goto	l7806
u11910:
	line	181
	
l52648:
;uart.c: 180: {;uart.c: 181: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	182
;uart.c: 182: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	183
	
l52650:
;uart.c: 183: uart_delay();
	call	_uart_delay	;wreg free
	line	184
;uart.c: 184: }
	goto	l52654
	line	185
	
l7806:
	line	187
;uart.c: 185: else;uart.c: 186: {;uart.c: 187: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	188
;uart.c: 188: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	189
;uart.c: 189: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52650
	line	192
	
l52654:
;uart.c: 191: };uart.c: 192: if(data & 0x40)
	
	btfss	((c:uart_tx@data))^00h,c,(6)&7
	goto	u11921
	goto	u11920
u11921:
	goto	l7808
u11920:
	line	194
	
l52656:
;uart.c: 193: {;uart.c: 194: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	195
;uart.c: 195: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	196
	
l52658:
;uart.c: 196: uart_delay();
	call	_uart_delay	;wreg free
	line	197
;uart.c: 197: }
	goto	l52662
	line	198
	
l7808:
	line	200
;uart.c: 198: else;uart.c: 199: {;uart.c: 200: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	201
;uart.c: 201: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	202
;uart.c: 202: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52658
	line	205
	
l52662:
;uart.c: 204: };uart.c: 205: if(data & 0x80)
	
	btfss	((c:uart_tx@data))^00h,c,(7)&7
	goto	u11931
	goto	u11930
u11931:
	goto	l7810
u11930:
	line	207
	
l52664:
;uart.c: 206: {;uart.c: 207: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	208
;uart.c: 208: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	209
	
l52666:
;uart.c: 209: uart_delay();
	call	_uart_delay	;wreg free
	line	210
;uart.c: 210: }
	goto	l52670
	line	211
	
l7810:
	line	213
;uart.c: 211: else;uart.c: 212: {;uart.c: 213: PB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	214
;uart.c: 214: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	215
;uart.c: 215: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	goto	l52666
	line	218
	
l52670:
;uart.c: 217: };uart.c: 218: PB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	219
	
l52672:
;uart.c: 219: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	220
	
l52674:
;uart.c: 220: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	221
;uart.c: 221: uart_delay ();
	call	_uart_delay	;wreg free
	line	223
	
l7812:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
	signat	_uart_tx,4217
	global	_uart_delay

;; *************** function _uart_delay *****************
;; Defined at:
;;		line 89 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_tx
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	89
global __ptext24
__ptext24:
psect	text24
	file	"uart.c"
	line	89
	global	__size_of_uart_delay
	__size_of_uart_delay	equ	__end_of_uart_delay-_uart_delay
	
_uart_delay:
;incstack = 0
	opt	callstack 20
	line	92
	
l52546:
;uart.c: 92: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	93
;uart.c: 93: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	94
;uart.c: 94: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	95
;uart.c: 95: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	96
;uart.c: 96: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	97
;uart.c: 97: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	98
;uart.c: 98: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	99
;uart.c: 99: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	100
;uart.c: 100: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	101
;uart.c: 101: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	102
;uart.c: 102: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	103
;uart.c: 103: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	104
;uart.c: 104: __nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();__nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	105
	
l7793:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_uart_delay
	__end_of_uart_delay:
	signat	_uart_delay,89
	global	_ReceiveDataPc

;; *************** function _ReceiveDataPc *****************
;; Defined at:
;;		line 341 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_uart_rx
;; This function is called by:
;;		_ConmunicateToPc
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	341
global __ptext25
__ptext25:
psect	text25
	file	"uart.c"
	line	341
	global	__size_of_ReceiveDataPc
	__size_of_ReceiveDataPc	equ	__end_of_ReceiveDataPc-_ReceiveDataPc
	
_ReceiveDataPc:
;incstack = 0
	opt	callstack 21
	line	344
	
l52992:
;uart.c: 343: unsigned char i;;uart.c: 344: for(i=0;i<14;i++)
	movlw	low(0)
	movwf	((c:ReceiveDataPc@i))^00h,c
	line	346
	
l52998:
;uart.c: 345: {;uart.c: 346: if(uart_rx() == IDLE_STA) return 0;
	call	_uart_rx	;wreg free
	iorlw	0
	btfss	status,2
	goto	u12261
	goto	u12260
u12261:
	goto	l53004
u12260:
	
l53000:
	movlw	(0)&0ffh
	goto	l7853
	line	347
	
l53004:
;uart.c: 347: UART_TX_Buff[i] = data;
	movlw	low(_UART_TX_Buff)
	addwf	((c:ReceiveDataPc@i))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_UART_TX_Buff)
	addwfc	1+c:fsr2l
	movff	(_data),indf2

	line	344
	
l53006:
	incf	((c:ReceiveDataPc@i))^00h,c
	
l53008:
		movlw	0Eh-1
	cpfsgt	((c:ReceiveDataPc@i))^00h,c
	goto	u12271
	goto	u12270

u12271:
	goto	l52998
u12270:
	line	349
	
l53010:
;uart.c: 348: };uart.c: 349: return 1;
	movlw	(01h)&0ffh
	line	350
	
l7853:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_ReceiveDataPc
	__end_of_ReceiveDataPc:
	signat	_ReceiveDataPc,89
	global	_uart_rx

;; *************** function _uart_rx *****************
;; Defined at:
;;		line 225 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E5308
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReceiveDataPc
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	225
global __ptext26
__ptext26:
psect	text26
	file	"uart.c"
	line	225
	global	__size_of_uart_rx
	__size_of_uart_rx	equ	__end_of_uart_rx-_uart_rx
	
_uart_rx:
;incstack = 0
	opt	callstack 21
	line	228
	
l52676:
;uart.c: 228: data = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_data))&0ffh
	line	229
;uart.c: 229: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	231
;uart.c: 231: while(PB1)
	goto	l7815
	line	234
	
l52678:
;uart.c: 232: {;uart.c: 234: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	235
	
l52680:
;uart.c: 235: if(uiRX_t > 1000)
		movlw	233
	subwf	 ((c:_uiRX_t))^00h,c,w
	movlw	3
	subwfb	((c:_uiRX_t+1))^00h,c,w
	btfss	status,0
	goto	u11941
	goto	u11940

u11941:
	goto	l7817
u11940:
	line	237
	
l52682:
;uart.c: 236: {;uart.c: 237: return IDLE_STA;
	movlw	(0)&0ffh
	goto	l7818
	line	238
	
l7817:
	line	239
;uart.c: 238: };uart.c: 239: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	240
	
l7815:
	line	231
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u11951
	goto	u11950
u11951:
	goto	l52678
u11950:
	
l7819:
	line	241
;uart.c: 240: };uart.c: 241: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	243
;uart.c: 243: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	244
	
l52686:
;uart.c: 244: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	246
;uart.c: 246: while(uiRX_t != 21)
	goto	l52690
	line	248
	
l52688:
;uart.c: 247: {;uart.c: 248: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	246
	
l52690:
		movlw	21
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u11961
	goto	u11960

u11961:
	goto	l52688
u11960:
	line	250
	
l52692:
;uart.c: 249: };uart.c: 250: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	251
	
l52694:
;uart.c: 251: data |= (unsigned char)PB1;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	1
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	252
	
l52696:; BSR set to: 1

;uart.c: 252: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	253
	
l52698:
;uart.c: 253: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	255
	
l52700:
;uart.c: 255: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	257
;uart.c: 257: while(uiRX_t != 15)
	goto	l52704
	line	259
	
l52702:
;uart.c: 258: {;uart.c: 259: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	257
	
l52704:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u11971
	goto	u11970

u11971:
	goto	l52702
u11970:
	line	261
	
l52706:
;uart.c: 260: };uart.c: 261: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	262
	
l52708:
;uart.c: 262: data |= (unsigned char)PB1 << 1;
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u11981
	goto	u11980
u11981:
	clrf	(??_uart_rx+0+0)^00h,c
	incf	(??_uart_rx+0+0)^00h,c
	goto	u11998
u11980:
	clrf	(??_uart_rx+0+0)^00h,c
u11998:
	bcf	status,0
	rlcf	(??_uart_rx+0+0)^00h,c,w
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	263
	
l52710:; BSR set to: 1

;uart.c: 263: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	265
	
l52712:
;uart.c: 265: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	266
	
l52714:
;uart.c: 266: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	267
;uart.c: 267: while(uiRX_t != 15)
	goto	l52718
	line	269
	
l52716:
;uart.c: 268: {;uart.c: 269: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	267
	
l52718:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12001
	goto	u12000

u12001:
	goto	l52716
u12000:
	line	271
	
l52720:
;uart.c: 270: };uart.c: 271: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	272
	
l52722:
;uart.c: 272: data |= (unsigned char)PB1 << 2;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (02h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	273
	
l52724:; BSR set to: 1

;uart.c: 273: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	275
	
l52726:
;uart.c: 275: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	276
	
l52728:
;uart.c: 276: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	277
;uart.c: 277: while(uiRX_t != 15)
	goto	l52732
	line	279
	
l52730:
;uart.c: 278: {;uart.c: 279: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	277
	
l52732:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12011
	goto	u12010

u12011:
	goto	l52730
u12010:
	line	281
	
l52734:
;uart.c: 280: };uart.c: 281: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	282
	
l52736:
;uart.c: 282: data |= (unsigned char)PB1 << 3;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (03h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	283
	
l52738:; BSR set to: 1

;uart.c: 283: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	285
	
l52740:
;uart.c: 285: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	286
	
l52742:
;uart.c: 286: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	287
;uart.c: 287: while(uiRX_t != 15)
	goto	l52746
	line	289
	
l52744:
;uart.c: 288: {;uart.c: 289: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	287
	
l52746:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12021
	goto	u12020

u12021:
	goto	l52744
u12020:
	line	291
	
l52748:
;uart.c: 290: };uart.c: 291: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	292
	
l52750:
;uart.c: 292: data |= (unsigned char)PB1 << 4;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (04h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	293
	
l52752:; BSR set to: 1

;uart.c: 293: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	295
	
l52754:
;uart.c: 295: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	296
	
l52756:
;uart.c: 296: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	297
;uart.c: 297: while(uiRX_t != 15)
	goto	l52760
	line	299
	
l52758:
;uart.c: 298: {;uart.c: 299: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	297
	
l52760:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12031
	goto	u12030

u12031:
	goto	l52758
u12030:
	line	301
	
l52762:
;uart.c: 300: };uart.c: 301: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	302
	
l52764:
;uart.c: 302: data |= (unsigned char)PB1 << 5;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (05h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	303
	
l52766:; BSR set to: 1

;uart.c: 303: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	305
	
l52768:
;uart.c: 305: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	306
	
l52770:
;uart.c: 306: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	307
;uart.c: 307: while(uiRX_t != 15)
	goto	l52774
	line	309
	
l52772:
;uart.c: 308: {;uart.c: 309: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	307
	
l52774:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12041
	goto	u12040

u12041:
	goto	l52772
u12040:
	line	311
	
l52776:
;uart.c: 310: };uart.c: 311: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	312
	
l52778:
;uart.c: 312: data |= (unsigned char)PB1 << 6;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (06h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	313
	
l52780:; BSR set to: 1

;uart.c: 313: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	315
	
l52782:
;uart.c: 315: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	316
	
l52784:
;uart.c: 316: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	317
;uart.c: 317: while(uiRX_t != 15)
	goto	l52788
	line	319
	
l52786:
;uart.c: 318: {;uart.c: 319: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	317
	
l52788:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12051
	goto	u12050

u12051:
	goto	l52786
u12050:
	line	321
	
l52790:
;uart.c: 320: };uart.c: 321: uiRX_t = 0;
	movlw	high(0)
	movwf	((c:_uiRX_t+1))^00h,c
	movlw	low(0)
	movwf	((c:_uiRX_t))^00h,c
	line	322
	
l52792:
;uart.c: 322: data |= (unsigned char)PB1 << 7;
	movlw	0
	btfsc	c:(31753/8),(31753)&7	;volatile
	movlw	(1 << (07h))
	movlb	1	; () banked
	iorwf	((_data))&0ffh
	line	323
	
l52794:; BSR set to: 1

;uart.c: 323: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	325
	
l52796:
;uart.c: 325: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	326
	
l52798:
;uart.c: 326: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	327
;uart.c: 327: while(uiRX_t != 15)
	goto	l52802
	line	329
	
l52800:
;uart.c: 328: {;uart.c: 329: uiRX_t++;
	infsnz	((c:_uiRX_t))^00h,c
	incf	((c:_uiRX_t+1))^00h,c
	line	327
	
l52802:
		movlw	15
	xorwf	((c:_uiRX_t))^00h,c,w
iorwf	((c:_uiRX_t+1))^00h,c,w
	btfss	status,2
	goto	u12061
	goto	u12060

u12061:
	goto	l52800
u12060:
	
l7846:
	line	331
;uart.c: 330: };uart.c: 331: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	333
;uart.c: 333: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	334
;uart.c: 334: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	335
;uart.c: 335: if(!PB1)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u12071
	goto	u12070
u12071:
	goto	l52808
u12070:
	line	336
	
l52804:
;uart.c: 336: return STOP_ERROR_STA;
	movlw	(02h)&0ffh
	goto	l7818
	line	338
	
l52808:
;uart.c: 338: return DATA_STA;
	movlw	(01h)&0ffh
	line	339
	
l7818:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_uart_rx
	__end_of_uart_rx:
	signat	_uart_rx,89
	global	_TSC_DataProcessing

;; *************** function _TSC_DataProcessing *****************
;; Defined at:
;;		line 1397 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	1397
global __ptext27
__ptext27:
psect	text27
	file	"touch.h"
	line	1397
	global	__size_of_TSC_DataProcessing
	__size_of_TSC_DataProcessing	equ	__end_of_TSC_DataProcessing-_TSC_DataProcessing
	
_TSC_DataProcessing:
;incstack = 0
	opt	callstack 24
	line	1400
	
l54838:
;touch_test.c: 1400: if(ucKeyPollingOk == SET)
	movlb	1	; () banked
		decf	((_ucKeyPollingOk))&0ffh,w
	btfss	status,2
	goto	u14741
	goto	u14740

u14741:
	goto	l54854
u14740:
	line	1402
	
l54840:; BSR set to: 1

;touch_test.c: 1401: {;touch_test.c: 1402: ucKeyPollingOk = RESET;
	movlw	low(0)
	movwf	((_ucKeyPollingOk))&0ffh
	line	1404
	
l54842:; BSR set to: 1

;touch_test.c: 1404: _ucSendGapCnt++;
	incf	((__ucSendGapCnt))&0ffh
	line	1405
	
l54844:; BSR set to: 1

;touch_test.c: 1405: if(_ucSendGapCnt > 16/ucKEY_NUMBER_MAX)
		movlw	05h-1
	cpfsgt	((__ucSendGapCnt))&0ffh
	goto	u14751
	goto	u14750

u14751:
	goto	l54850
u14750:
	line	1407
	
l54846:; BSR set to: 1

;touch_test.c: 1406: {;touch_test.c: 1407: _ucSendGapCnt = 0;
	movlw	low(0)
	movwf	((__ucSendGapCnt))&0ffh
	line	1408
	
l54848:; BSR set to: 1

;touch_test.c: 1408: TX_Flag = 1;
	bsf	(_TX_Flag/8)^00h,c,(_TX_Flag)&7
	line	1515
	
l54850:; BSR set to: 1

;touch_test.c: 1409: };touch_test.c: 1515: return 1;
	movlw	(01h)&0ffh
	goto	l41941
	line	1518
	
l54854:; BSR set to: 1

;touch_test.c: 1517: };touch_test.c: 1518: return 0;
	movlw	(0)&0ffh
	line	1519
	
l41941:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_DataProcessing
	__end_of_TSC_DataProcessing:
	signat	_TSC_DataProcessing,89
	global	_IR_MoreCtr

;; *************** function _IR_MoreCtr *****************
;; Defined at:
;;		line 229 in file "irkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"irkey.c"
	line	229
global __ptext28
__ptext28:
psect	text28
	file	"irkey.c"
	line	229
	global	__size_of_IR_MoreCtr
	__size_of_IR_MoreCtr	equ	__end_of_IR_MoreCtr-_IR_MoreCtr
	
_IR_MoreCtr:; BSR set to: 1

;incstack = 0
	opt	callstack 24
	line	237
	
l54804:
;irkey.c: 237: if ((KeyDat.key_short_value == 0x07) || (KeyDat.key_long_value == 0x07))
		movlw	7
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u14601
	goto	u14600

u14601:
	goto	l54808
u14600:
	
l54806:; BSR set to: 0

		movlw	7
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u14611
	goto	u14610

u14611:
	goto	l33737
u14610:
	line	239
	
l54808:; BSR set to: 0

;irkey.c: 238: {;irkey.c: 239: if (RunData.SysSta)
	movf	(0+(_RunData+02h))&0ffh,w
	btfsc	status,2
	goto	u14621
	goto	u14620
u14621:
	goto	l33737
u14620:
	line	240
	
l54810:; BSR set to: 0

;irkey.c: 240: RunData.AlarmSwitch = !RunData.AlarmSwitch;
	movf	(0+(_RunData+037h))&0ffh,w
iorwf	(1+(_RunData+037h))&0ffh,w
	btfsc	status,2
	goto	u14631
	goto	u14630

u14631:
	movlw	1
	goto	u14640
u14630:
	movlw	0
u14640:
	movwf	(0+(_RunData+037h))&0ffh
	clrf	(1+(_RunData+037h))&0ffh
	line	241
	
l33737:; BSR set to: 0

	line	242
;irkey.c: 241: };irkey.c: 242: if ((KeyDat.key_short_value == 0x08) || (KeyDat.key_long_value == 0x08))
		movlw	8
	xorwf	(0+(_KeyDat+04h))&0ffh,w
iorwf	(1+(_KeyDat+04h))&0ffh,w
	btfsc	status,2
	goto	u14651
	goto	u14650

u14651:
	goto	l54814
u14650:
	
l54812:; BSR set to: 0

		movlw	8
	xorwf	(0+(_KeyDat+02h))&0ffh,w
iorwf	(1+(_KeyDat+02h))&0ffh,w
	btfss	status,2
	goto	u14661
	goto	u14660

u14661:
	goto	l54816
u14660:
	line	244
	
l54814:; BSR set to: 0

;irkey.c: 243: {;irkey.c: 244: RunData.SOSFlag = !RunData.SOSFlag;
	movf	(0+(_RunData+01h))&0ffh,w
	btfsc	status,2
	goto	u14671
	goto	u14670
u14671:
	movlw	1
	goto	u14680
u14670:
	movlw	0
u14680:
	movwf	(0+(_RunData+01h))&0ffh
	line	246
	
l54816:; BSR set to: 0

;irkey.c: 245: };irkey.c: 246: if ((KeyDat.key_val_x == 0x0B) && (IRData.Value == 0x847BABE6))
		movlw	11
	xorwf	(0+(_KeyDat+08h))&0ffh,w
iorwf	(1+(_KeyDat+08h))&0ffh,w
	btfss	status,2
	goto	u14691
	goto	u14690

u14691:
	goto	l54822
u14690:
	
l54818:; BSR set to: 0

		movlw	230
	movlb	1	; () banked
	xorwf	((_IRData))&0ffh,w
	bnz	u14701
	movlw	171
	xorwf	((_IRData+1))&0ffh,w
	bnz	u14701
	movlw	123
	xorwf	((_IRData+2))&0ffh,w
	bnz	u14701
	movlw	132
	xorwf	((_IRData+3))&0ffh,w
	btfss	status,2
	goto	u14701
	goto	u14700

u14701:
	goto	l54822
u14700:
	line	247
	
l54820:; BSR set to: 1

;irkey.c: 247: RunData.CumulativeTime = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_RunData+016h))&0ffh
	movlw	high(0)
	movwf	(1+(_RunData+016h))&0ffh
	movlw	low highword(0)
	movwf	(2+(_RunData+016h))&0ffh
	movlw	high highword(0)
	movwf	(3+(_RunData+016h))&0ffh
	line	248
	
l54822:
;irkey.c: 248: if ((KeyDat.key_val_x == 0x0A) && (IRData.Value == 0x847BABE6))
		movlw	10
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+08h))&0ffh,w
iorwf	(1+(_KeyDat+08h))&0ffh,w
	btfss	status,2
	goto	u14711
	goto	u14710

u14711:
	goto	l54832
u14710:
	
l54824:; BSR set to: 0

		movlw	230
	movlb	1	; () banked
	xorwf	((_IRData))&0ffh,w
	bnz	u14721
	movlw	171
	xorwf	((_IRData+1))&0ffh,w
	bnz	u14721
	movlw	123
	xorwf	((_IRData+2))&0ffh,w
	bnz	u14721
	movlw	132
	xorwf	((_IRData+3))&0ffh,w
	btfss	status,2
	goto	u14721
	goto	u14720

u14721:
	goto	l54832
u14720:
	line	250
	
l54826:; BSR set to: 1

;irkey.c: 249: {;irkey.c: 250: RunData.SETCount++;
	movlb	0	; () banked
	infsnz	(0+(_RunData+035h))&0ffh
	incf	(1+(_RunData+035h))&0ffh
	line	251
	
l54828:; BSR set to: 0

;irkey.c: 251: if (RunData.SETCount > 5000)
		movlw	137
	subwf	 (0+(_RunData+035h))&0ffh,w
	movlw	19
	subwfb	(1+(_RunData+035h))&0ffh,w
	btfss	status,0
	goto	u14731
	goto	u14730

u14731:
	goto	l33748
u14730:
	line	253
	
l54830:; BSR set to: 0

;irkey.c: 252: {;irkey.c: 253: RunData.SETCount = 5000;
	movlw	high(01388h)
	movwf	(1+(_RunData+035h))&0ffh
	movlw	low(01388h)
	movwf	(0+(_RunData+035h))&0ffh
	goto	l33748
	line	258
	
l54832:
;irkey.c: 256: else;irkey.c: 257: {;irkey.c: 258: RunData.SETCount = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+035h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+035h))&0ffh
	line	260
	
l33748:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_IR_MoreCtr
	__end_of_IR_MoreCtr:
	signat	_IR_MoreCtr,89
	global	_Get_Key_Demo

;; *************** function _Get_Key_Demo *****************
;; Defined at:
;;		line 493 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TSC_GetCsKey
;;		_TSC_GetLocalKey
;; This function is called by:
;;		_main
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	493
global __ptext29
__ptext29:
psect	text29
	file	"main.c"
	line	493
	global	__size_of_Get_Key_Demo
	__size_of_Get_Key_Demo	equ	__end_of_Get_Key_Demo-_Get_Key_Demo
	
_Get_Key_Demo:; BSR set to: 0

;incstack = 0
	opt	callstack 23
	line	497
	
l54858:; BSR set to: 1

;main.c: 497: strongest = TSC_GetCsKey();
	call	_TSC_GetCsKey	;wreg free
	movlb	0	; () banked
	movwf	((_strongest))&0ffh
	line	501
;main.c: 499: {
	
l2757:; BSR set to: 0

	line	502
;main.c: 501: };main.c: 502: Sav_strongest = strongest;
	movff	(_strongest),(_Sav_strongest)
	line	505
	
l54862:; BSR set to: 0

;main.c: 505: TSC_GetLocalKey(single);
		movlw	low(_single)
	movwf	((c:TSC_GetLocalKey@ptr))^00h,c
	movlw	high(_single)
	movwf	((c:TSC_GetLocalKey@ptr+1))^00h,c

	call	_TSC_GetLocalKey	;wreg free
	line	509
;main.c: 507: {
	
l2758:; BSR set to: 0

	line	510
;main.c: 509: };main.c: 510: Sav_single[0] = single[0];
	movff	(_single),(_Sav_single)
	movff	(_single+1),(_Sav_single+1)
	movff	(_single+2),(_Sav_single+2)
	movff	(_single+3),(_Sav_single+3)
	line	511
;main.c: 511: Sav_single[1] = single[1];
	movff	0+(_single+04h),0+(_Sav_single+04h)
	movff	1+(_single+04h),1+(_Sav_single+04h)
	movff	2+(_single+04h),2+(_Sav_single+04h)
	movff	3+(_single+04h),3+(_Sav_single+04h)
	line	513
	
l2761:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Get_Key_Demo
	__end_of_Get_Key_Demo:
	signat	_Get_Key_Demo,89
	global	_TSC_GetLocalKey

;; *************** function _TSC_GetLocalKey *****************
;; Defined at:
;;		line 1367 in file "touch.h"
;; Parameters:    Size  Location     Type
;;  ptr             2    9[COMRAM] PTR unsigned long 
;;		 -> single(8), 
;; Auto vars:     Size  Location     Type
;;  ulTKeyOutSin    2   16[COMRAM] PTR unsigned long 
;;		 -> single(8), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_Key_Demo
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	1367
global __ptext30
__ptext30:
psect	text30
	file	"touch.h"
	line	1367
	global	__size_of_TSC_GetLocalKey
	__size_of_TSC_GetLocalKey	equ	__end_of_TSC_GetLocalKey-_TSC_GetLocalKey
	
_TSC_GetLocalKey:; BSR set to: 0

;incstack = 0
	opt	callstack 23
	line	1369
	
l54052:; BSR set to: 0

;touch_test.c: 1369: unsigned long *ulTKeyOutSingle = ptr;
		movff	(c:TSC_GetLocalKey@ptr),(c:TSC_GetLocalKey@ulTKeyOutSingle)
	movff	(c:TSC_GetLocalKey@ptr+1),(c:TSC_GetLocalKey@ulTKeyOutSingle+1)

	line	1371
	
l54054:; BSR set to: 0

;touch_test.c: 1371: *ulTKeyOutSingle = 0;
	movff	(c:TSC_GetLocalKey@ulTKeyOutSingle),fsr2l
	movff	(c:TSC_GetLocalKey@ulTKeyOutSingle+1),fsr2h
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	1372
	
l54056:; BSR set to: 0

;touch_test.c: 1372: *(ulTKeyOutSingle +1) = 0;
	lfsr	2,04h
	movf	((c:TSC_GetLocalKey@ulTKeyOutSingle))^00h,c,w
	addwf	fsr2l
	movf	((c:TSC_GetLocalKey@ulTKeyOutSingle+1))^00h,c,w
	addwfc	fsr2h
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	1373
	
l54058:; BSR set to: 0

;touch_test.c: 1373: for(ucTempCount=0;ucTempCount<ucKEY_NUMBER_MAX;ucTempCount++)
	movlw	low(0)
	movwf	((c:_ucTempCount))^00h,c
	
l54060:; BSR set to: 0

		movlw	04h-1
	cpfsgt	((c:_ucTempCount))^00h,c
	goto	u13711
	goto	u13710

u13711:
	goto	l54064
u13710:
	goto	l41936
	line	1375
	
l54064:; BSR set to: 0

;touch_test.c: 1374: {;touch_test.c: 1375: if(unTKData[ucTempCount].uiTKData[1] & 0x8000)
	movf	((c:_ucTempCount))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+02h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+02h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,??_TSC_GetLocalKey+0+0
	movff	postdec2,??_TSC_GetLocalKey+0+0+1
	
	btfss	(??_TSC_GetLocalKey+0+1)^00h,c,(15)&7
	goto	u13721
	goto	u13720
u13721:
	goto	l54072
u13720:
	line	1377
	
l54066:; BSR set to: 0

;touch_test.c: 1376: {;touch_test.c: 1377: if (ucTempCount < 32)
		movlw	020h-0
	cpfslt	((c:_ucTempCount))^00h,c
	goto	u13731
	goto	u13730

u13731:
	goto	l54070
u13730:
	line	1379
	
l54068:; BSR set to: 0

;touch_test.c: 1378: {;touch_test.c: 1379: *ulTKeyOutSingle |= ((unsigned long)0x00000001 << ucTempCount);
	movff	(c:_ucTempCount),??_TSC_GetLocalKey+0+0
	movlw	01h
	movwf	(??_TSC_GetLocalKey+1+0)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+1)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+2)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+3)^00h,c
	incf	(??_TSC_GetLocalKey+0+0)^00h,c
	goto	u13740
u13745:
	bcf	status,0
	rlcf	(??_TSC_GetLocalKey+1+0)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+1)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+2)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+3)^00h,c
u13740:
	decfsz	(??_TSC_GetLocalKey+0+0)^00h,c
	goto	u13745
	movff	(c:TSC_GetLocalKey@ulTKeyOutSingle),fsr2l
	movff	(c:TSC_GetLocalKey@ulTKeyOutSingle+1),fsr2h
	movf	(??_TSC_GetLocalKey+1+0)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+1)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+2)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+3)^00h,c,w
	iorwf	postinc2

	line	1380
;touch_test.c: 1380: }
	goto	l54072
	line	1383
	
l54070:; BSR set to: 0

;touch_test.c: 1381: else;touch_test.c: 1382: {;touch_test.c: 1383: *(ulTKeyOutSingle + 1) |= ((unsigned long)0x00000001 << (ucTempCount - 32) );
	movff	(c:_ucTempCount),??_TSC_GetLocalKey+0+0
	movlw	-32
	addwf	(??_TSC_GetLocalKey+0+0)^00h,c
	movlw	01h
	movwf	(??_TSC_GetLocalKey+1+0)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+1)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+2)^00h,c
	clrf	(??_TSC_GetLocalKey+1+0+3)^00h,c
	incf	(??_TSC_GetLocalKey+0+0)^00h,c
	goto	u13750
u13755:
	bcf	status,0
	rlcf	(??_TSC_GetLocalKey+1+0)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+1)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+2)^00h,c
	rlcf	(??_TSC_GetLocalKey+1+3)^00h,c
u13750:
	decfsz	(??_TSC_GetLocalKey+0+0)^00h,c
	goto	u13755
	lfsr	2,04h
	movf	((c:TSC_GetLocalKey@ulTKeyOutSingle))^00h,c,w
	addwf	fsr2l
	movf	((c:TSC_GetLocalKey@ulTKeyOutSingle+1))^00h,c,w
	addwfc	fsr2h
	movf	(??_TSC_GetLocalKey+1+0)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+1)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+2)^00h,c,w
	iorwf	postinc2
	movf	(??_TSC_GetLocalKey+1+3)^00h,c,w
	iorwf	postinc2

	line	1373
	
l54072:; BSR set to: 0

	incf	((c:_ucTempCount))^00h,c
	goto	l54060
	line	1387
	
l41936:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_GetLocalKey
	__end_of_TSC_GetLocalKey:
	signat	_TSC_GetLocalKey,4217
	global	_TSC_GetCsKey

;; *************** function _TSC_GetCsKey *****************
;; Defined at:
;;		line 1353 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_Key_Demo
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=1
	line	1353
global __ptext31
__ptext31:
psect	text31
	file	"touch.h"
	line	1353
	global	__size_of_TSC_GetCsKey
	__size_of_TSC_GetCsKey	equ	__end_of_TSC_GetCsKey-_TSC_GetCsKey
	
_TSC_GetCsKey:; BSR set to: 0

;incstack = 0
	opt	callstack 23
	line	1355
	
l54048:; BSR set to: 1

;touch_test.c: 1355: return ucTKeyOutStrongest;
	movf	((_ucTKeyOutStrongest))&0ffh,w
	line	1356
	
l41928:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_GetCsKey
	__end_of_TSC_GetCsKey:
	signat	_TSC_GetCsKey,89
	global	_ERR_Code

;; *************** function _ERR_Code *****************
;; Defined at:
;;		line 104 in file "control.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Display_SysSta
;;		_Update_Display
;; This function is called by:
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"control.c"
	line	104
global __ptext32
__ptext32:
psect	text32
	file	"control.c"
	line	104
	global	__size_of_ERR_Code
	__size_of_ERR_Code	equ	__end_of_ERR_Code-_ERR_Code
	
_ERR_Code:; BSR set to: 1

;incstack = 0
	opt	callstack 19
	line	110
	
l55102:; BSR set to: 0

;control.c: 105: static u16 count1 = 0;;control.c: 106: static u16 count2 = 0;;control.c: 107: static u16 count3 = 0;;control.c: 108: static u16 count4 = 0;;control.c: 110: if (RunData.ErrCodeSecCount >= 115)
		movf	(1+(_RunData+03Fh))&0ffh,w
	bnz	u15080
	movlw	115
	subwf	 (0+(_RunData+03Fh))&0ffh,w
	btfss	status,0
	goto	u15081
	goto	u15080

u15081:
	goto	l55156
u15080:
	line	112
	
l55104:; BSR set to: 0

;control.c: 111: {;control.c: 112: RunData.ErrCodeSecCount = 115;
	movlw	high(073h)
	movwf	(1+(_RunData+03Fh))&0ffh
	movlw	low(073h)
	movwf	(0+(_RunData+03Fh))&0ffh
	line	113
	
l55106:; BSR set to: 0

;control.c: 113: if (RunData.Concentration <= 500)
	btfsc	(1+(_RunData+0Eh))&0ffh,7
	goto	u15090
	movlw	245
	subwf	 (0+(_RunData+0Eh))&0ffh,w
	movlw	1
	subwfb	(1+(_RunData+0Eh))&0ffh,w
	btfsc	status,0
	goto	u15091
	goto	u15090

u15091:
	goto	l55124
u15090:
	line	115
	
l55108:; BSR set to: 0

;control.c: 114: {;control.c: 115: RunData.Error_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+041h))&0ffh
	line	116
	
l55110:; BSR set to: 0

;control.c: 116: count1++;
	movlb	1	; () banked
	infsnz	((ERR_Code@count1))&0ffh
	incf	((ERR_Code@count1+1))&0ffh
	line	117
	
l55112:; BSR set to: 1

;control.c: 117: if (count1 > 500)
		movlw	245
	subwf	 ((ERR_Code@count1))&0ffh,w
	movlw	1
	subwfb	((ERR_Code@count1+1))&0ffh,w
	btfss	status,0
	goto	u15101
	goto	u15100

u15101:
	goto	l55130
u15100:
	line	119
	
l55114:; BSR set to: 1

;control.c: 118: {;control.c: 119: count1 = 500;
	movlw	high(01F4h)
	movwf	((ERR_Code@count1+1))&0ffh
	movlw	low(01F4h)
	movwf	((ERR_Code@count1))&0ffh
	line	120
	
l55116:; BSR set to: 1

;control.c: 120: if ((RunData.SysSta2 & 0x01) == 0) {
	movlb	0	; () banked
	
	btfsc	(0+(_RunData+03h))&0ffh,(0)&7
	goto	u15111
	goto	u15110
u15111:
	goto	l55130
u15110:
	line	121
	
l55118:; BSR set to: 0

;control.c: 121: RunData.SysSta = 0xE3;
	movlw	low(0E3h)
	movwf	(0+(_RunData+02h))&0ffh
	line	122
	
l55120:; BSR set to: 0

;control.c: 122: Display_SysSta(2);
	movlw	(02h)&0ffh
	
	call	_Display_SysSta
	line	123
	
l55122:
;control.c: 123: RunData.SysSta2 |= 0x01;
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_RunData+03h))&0ffh,(0)&7
	goto	l55130
	line	129
	
l55124:; BSR set to: 0

;control.c: 127: else;control.c: 128: {;control.c: 129: count1 = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((ERR_Code@count1+1))&0ffh
	movlw	low(0)
	movwf	((ERR_Code@count1))&0ffh
	line	130
	
l55126:; BSR set to: 1

;control.c: 130: if (RunData.SysSta2 & 0x01)
	movlb	0	; () banked
	
	btfss	(0+(_RunData+03h))&0ffh,(0)&7
	goto	u15121
	goto	u15120
u15121:
	goto	l55130
u15120:
	line	131
	
l55128:; BSR set to: 0

;control.c: 131: RunData.SysSta2 = 0;
	movlw	low(0)
	movwf	(0+(_RunData+03h))&0ffh
	line	135
	
l55130:
;control.c: 132: };control.c: 135: if ((RunData.Concentration > 500) && (RunData.Concentration <= 820))
	movlb	0	; () banked
	btfsc	(1+(_RunData+0Eh))&0ffh,7
	goto	u15131
	movlw	245
	subwf	 (0+(_RunData+0Eh))&0ffh,w
	movlw	1
	subwfb	(1+(_RunData+0Eh))&0ffh,w
	btfss	status,0
	goto	u15131
	goto	u15130

u15131:
	goto	l55150
u15130:
	
l55132:; BSR set to: 0

	btfsc	(1+(_RunData+0Eh))&0ffh,7
	goto	u15140
	movlw	53
	subwf	 (0+(_RunData+0Eh))&0ffh,w
	movlw	3
	subwfb	(1+(_RunData+0Eh))&0ffh,w
	btfsc	status,0
	goto	u15141
	goto	u15140

u15141:
	goto	l55150
u15140:
	line	137
	
l55134:; BSR set to: 0

;control.c: 136: {;control.c: 137: RunData.Error_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+041h))&0ffh
	line	138
	
l55136:; BSR set to: 0

;control.c: 138: count2++;
	movlb	1	; () banked
	infsnz	((ERR_Code@count2))&0ffh
	incf	((ERR_Code@count2+1))&0ffh
	line	139
	
l55138:; BSR set to: 1

;control.c: 139: if (count2 > 500)
		movlw	245
	subwf	 ((ERR_Code@count2))&0ffh,w
	movlw	1
	subwfb	((ERR_Code@count2+1))&0ffh,w
	btfss	status,0
	goto	u15151
	goto	u15150

u15151:
	goto	l55156
u15150:
	line	141
	
l55140:; BSR set to: 1

;control.c: 140: {;control.c: 141: count2 = 500;
	movlw	high(01F4h)
	movwf	((ERR_Code@count2+1))&0ffh
	movlw	low(01F4h)
	movwf	((ERR_Code@count2))&0ffh
	line	142
	
l55142:; BSR set to: 1

;control.c: 142: if ((RunData.SysSta2 & 0x02) == 0) {
	movlb	0	; () banked
	
	btfsc	(0+(_RunData+03h))&0ffh,(1)&7
	goto	u15161
	goto	u15160
u15161:
	goto	l36384
u15160:
	line	143
	
l55144:; BSR set to: 0

;control.c: 143: RunData.SysSta = 0xE2;
	movlw	low(0E2h)
	movwf	(0+(_RunData+02h))&0ffh
	line	144
	
l55146:; BSR set to: 0

;control.c: 144: Display_SysSta(2);
	movlw	(02h)&0ffh
	
	call	_Display_SysSta
	line	145
	
l55148:
;control.c: 145: RunData.SysSta2 |= 0x02;
	movlb	0	; () banked
	bsf	(0+(1/8)+0+(_RunData+03h))&0ffh,(1)&7
	goto	l55156
	line	151
	
l55150:; BSR set to: 0

;control.c: 149: else;control.c: 150: {;control.c: 151: count2 = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((ERR_Code@count2+1))&0ffh
	movlw	low(0)
	movwf	((ERR_Code@count2))&0ffh
	line	152
	
l55152:; BSR set to: 1

;control.c: 152: if (RunData.SysSta2 & 0x02)
	movlb	0	; () banked
	
	btfss	(0+(_RunData+03h))&0ffh,(1)&7
	goto	u15171
	goto	u15170
u15171:
	goto	l55156
u15170:
	line	153
	
l55154:; BSR set to: 0

;control.c: 153: RunData.SysSta2 = 0;
	movlw	low(0)
	movwf	(0+(_RunData+03h))&0ffh
	goto	l55156
	line	154
	
l36384:; BSR set to: 0

	line	157
	
l55156:
;control.c: 154: };control.c: 155: };control.c: 157: if (RunData.ErrCodeSecCount >= 6)
	movlb	0	; () banked
		movf	(1+(_RunData+03Fh))&0ffh,w
	bnz	u15180
	movlw	6
	subwf	 (0+(_RunData+03Fh))&0ffh,w
	btfss	status,0
	goto	u15181
	goto	u15180

u15181:
	goto	l36386
u15180:
	line	159
	
l55158:; BSR set to: 0

;control.c: 158: {;control.c: 159: if (RunData.ACDC_V <= RunData.Voltage_Calibration)
		movf	(0+(_RunData+08h))&0ffh,w
	subwf	(0+(_RunData+044h))&0ffh,w
	movf	(1+(_RunData+08h))&0ffh,w
	subwfb	(1+(_RunData+044h))&0ffh,w
	btfss	status,0
	goto	u15191
	goto	u15190

u15191:
	goto	l55176
u15190:
	line	161
	
l55160:; BSR set to: 0

;control.c: 160: {;control.c: 161: RunData.Error_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+041h))&0ffh
	line	162
	
l55162:; BSR set to: 0

;control.c: 162: count3++;
	movlb	1	; () banked
	infsnz	((ERR_Code@count3))&0ffh
	incf	((ERR_Code@count3+1))&0ffh
	line	163
	
l55164:; BSR set to: 1

;control.c: 163: if (count3 > 500)
		movlw	245
	subwf	 ((ERR_Code@count3))&0ffh,w
	movlw	1
	subwfb	((ERR_Code@count3+1))&0ffh,w
	btfss	status,0
	goto	u15201
	goto	u15200

u15201:
	goto	l36386
u15200:
	line	165
	
l55166:; BSR set to: 1

;control.c: 164: {;control.c: 165: count3 = 500;
	movlw	high(01F4h)
	movwf	((ERR_Code@count3+1))&0ffh
	movlw	low(01F4h)
	movwf	((ERR_Code@count3))&0ffh
	line	166
	
l55168:; BSR set to: 1

;control.c: 166: if ((RunData.SysSta2 & 0x04) == 0)
	movlb	0	; () banked
	
	btfsc	(0+(_RunData+03h))&0ffh,(2)&7
	goto	u15211
	goto	u15210
u15211:
	goto	l36386
u15210:
	line	168
	
l55170:; BSR set to: 0

;control.c: 167: {;control.c: 168: RunData.SysSta = 0xE5;
	movlw	low(0E5h)
	movwf	(0+(_RunData+02h))&0ffh
	line	169
	
l55172:; BSR set to: 0

;control.c: 169: Display_SysSta(2);
	movlw	(02h)&0ffh
	
	call	_Display_SysSta
	line	170
	
l55174:
;control.c: 170: RunData.SysSta2 |= 0x04;
	movlb	0	; () banked
	bsf	(0+(2/8)+0+(_RunData+03h))&0ffh,(2)&7
	goto	l36386
	line	176
	
l55176:; BSR set to: 0

;control.c: 174: else;control.c: 175: {;control.c: 176: count3 = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((ERR_Code@count3+1))&0ffh
	movlw	low(0)
	movwf	((ERR_Code@count3))&0ffh
	line	177
	
l55178:; BSR set to: 1

;control.c: 177: if (RunData.SysSta2 & 0x04)
	movlb	0	; () banked
	
	btfss	(0+(_RunData+03h))&0ffh,(2)&7
	goto	u15221
	goto	u15220
u15221:
	goto	l36386
u15220:
	line	178
	
l55180:; BSR set to: 0

;control.c: 178: RunData.SysSta2 = 0;
	movlw	low(0)
	movwf	(0+(_RunData+03h))&0ffh
	line	180
	
l36386:
	line	181
;control.c: 179: };control.c: 180: };control.c: 181: if (RunData.SysSta2 == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+03h))&0ffh,w
	btfss	status,2
	goto	u15231
	goto	u15230
u15231:
	goto	l55194
u15230:
	line	183
	
l55182:; BSR set to: 0

;control.c: 182: {;control.c: 183: Update_Display();
	call	_Update_Display	;wreg free
	line	184
	
l55184:
;control.c: 184: count4++;
	movlb	1	; () banked
	infsnz	((ERR_Code@count4))&0ffh
	incf	((ERR_Code@count4+1))&0ffh
	line	185
	
l55186:; BSR set to: 1

;control.c: 185: if (count4 > 500)
		movlw	245
	subwf	 ((ERR_Code@count4))&0ffh,w
	movlw	1
	subwfb	((ERR_Code@count4+1))&0ffh,w
	btfss	status,0
	goto	u15241
	goto	u15240

u15241:
	goto	l36395
u15240:
	line	187
	
l55188:; BSR set to: 1

;control.c: 186: {;control.c: 187: count4 = 0;
	movlw	high(0)
	movwf	((ERR_Code@count4+1))&0ffh
	movlw	low(0)
	movwf	((ERR_Code@count4))&0ffh
	line	188
;control.c: 188: RunData.SysSta = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_RunData+02h))&0ffh
	line	189
	
l55190:; BSR set to: 0

;control.c: 189: Display_SysSta(1);
	movlw	(01h)&0ffh
	
	call	_Display_SysSta
	line	190
	
l55192:
;control.c: 190: RunData.AlarmSwitch = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+037h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+037h))&0ffh
	goto	l36395
	line	195
	
l55194:; BSR set to: 0

;control.c: 193: else;control.c: 194: {;control.c: 195: count4 = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((ERR_Code@count4+1))&0ffh
	movlw	low(0)
	movwf	((ERR_Code@count4))&0ffh
	line	197
	
l36395:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_ERR_Code
	__end_of_ERR_Code:
	signat	_ERR_Code,89
	global	_Alarm_Sound

;; *************** function _Alarm_Sound *****************
;; Defined at:
;;		line 376 in file "voice.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DelayMs
;;		_VoiceCtr2
;; This function is called by:
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	376
global __ptext33
__ptext33:
psect	text33
	file	"voice.c"
	line	376
	global	__size_of_Alarm_Sound
	__size_of_Alarm_Sound	equ	__end_of_Alarm_Sound-_Alarm_Sound
	
_Alarm_Sound:
;incstack = 0
	opt	callstack 20
;Alarm_Sound@mode stored from wreg
	movwf	((c:Alarm_Sound@mode))^00h,c
	line	378
	
l55050:
;voice.c: 378: if(mode == 1) AlarmSound.count = 0;
		decf	((c:Alarm_Sound@mode))^00h,c,w
	btfss	status,2
	goto	u14991
	goto	u14990

u14991:
	goto	l55054
u14990:
	
l55052:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((_AlarmSound+1))&0ffh
	movlw	low(0)
	movwf	((_AlarmSound))&0ffh
	line	379
	
l55054:
;voice.c: 379: if(RunData.AlarmSwitch == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+037h))&0ffh,w
iorwf	(1+(_RunData+037h))&0ffh,w
	btfss	status,2
	goto	u15001
	goto	u15000

u15001:
	goto	l55078
u15000:
	line	381
	
l55056:; BSR set to: 0

;voice.c: 380: {;voice.c: 381: AlarmSound.step = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	(0+(_AlarmSound+02h))&0ffh
	goto	l31131
	line	386
	
l55060:; BSR set to: 1

	movlw	high(034h)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(034h)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	decf	wreg
	btfss	status,2
	goto	u15011
	goto	u15010
u15011:
	goto	l31134
u15010:
	
l55062:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	(0+(_AlarmSound+02h))&0ffh
	
l31134:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((_AlarmSound+1))&0ffh
	movlw	low(0)
	movwf	((_AlarmSound))&0ffh
	
l55064:; BSR set to: 1

	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	goto	l31131
	line	387
	
l55066:; BSR set to: 1

	movlw	high(0)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(0)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	decf	wreg
	btfss	status,2
	goto	u15021
	goto	u15020
u15021:
	goto	l31134
u15020:
	
l55068:
	movlw	low(02h)
	movlb	1	; () banked
	movwf	(0+(_AlarmSound+02h))&0ffh
	goto	l31134
	line	388
	
l55072:; BSR set to: 1

		movlw	137
	subwf	 ((_AlarmSound))&0ffh,w
	movlw	19
	subwfb	((_AlarmSound+1))&0ffh,w
	btfss	status,0
	goto	u15031
	goto	u15030

u15031:
	goto	l31131
u15030:
	
l55074:; BSR set to: 1

	movlw	high(0)
	movwf	((_AlarmSound+1))&0ffh
	movlw	low(0)
	movwf	((_AlarmSound))&0ffh
	movlw	low(0)
	movwf	(0+(_AlarmSound+02h))&0ffh
	goto	l31131
	line	384
	
l55078:; BSR set to: 0

	movlb	1	; () banked
	movf	(0+(_AlarmSound+02h))&0ffh,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l55060
	xorlw	1^0	; case 1
	skipnz
	goto	l55066
	xorlw	2^1	; case 2
	skipnz
	goto	l55072
	goto	l31131

	line	390
	
l31131:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Alarm_Sound
	__end_of_Alarm_Sound:
	signat	_Alarm_Sound,4217
	global	_Display

;; *************** function _Display *****************
;; Defined at:
;;		line 356 in file "control.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Concentration_Low_Alarm
;;		_Display_Anion
;;		_Display_Concentration
;;		_Display_CumulativeTime
;;		_Display_FilterMesh
;;		_Display_Flow
;;		_Display_SysSta
;;		_Display_Timing
;;		_Display_Voice
;;		_Label_CloseAlarm
;;		_SEG1
;;		_SEG2
;;		_SEG3
;;		_TM1629_Luminance
;;		___aldiv
;;		___almod
;; This function is called by:
;;		_control
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"control.c"
	line	356
global __ptext34
__ptext34:
psect	text34
	file	"control.c"
	line	356
	global	__size_of_Display
	__size_of_Display	equ	__end_of_Display-_Display
	
_Display:
;incstack = 0
	opt	callstack 20
	line	361
	
l56048:
;control.c: 358: static u16 count = 10;;control.c: 359: static u16 count2 = 0;;control.c: 361: if (count >= 1)
	movlb	1	; () banked
	movf	((Display@count))&0ffh,w
iorwf	((Display@count+1))&0ffh,w
	btfsc	status,2
	goto	u16481
	goto	u16480

u16481:
	goto	l56130
u16480:
	line	363
	
l56050:; BSR set to: 1

;control.c: 362: {;control.c: 363: count = 0;
	movlw	high(0)
	movwf	((Display@count+1))&0ffh
	movlw	low(0)
	movwf	((Display@count))&0ffh
	line	364
;control.c: 364: if (RunData.StandbySta == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u16491
	goto	u16490
u16491:
	goto	l56108
u16490:
	line	366
	
l56052:; BSR set to: 0

;control.c: 365: {;control.c: 366: if (RunData.AOD_TimeCount >= 60 && RunData.Error_Flag != 1 && Engineering_Pattern.Mode != 1)
		movf	(1+(_RunData+02Dh))&0ffh,w
	bnz	u16500
	movlw	60
	subwf	 (0+(_RunData+02Dh))&0ffh,w
	btfss	status,0
	goto	u16501
	goto	u16500

u16501:
	goto	l56062
u16500:
	
l56054:; BSR set to: 0

		decf	(0+(_RunData+041h))&0ffh,w
	btfsc	status,2
	goto	u16511
	goto	u16510

u16511:
	goto	l56062
u16510:
	
l56056:; BSR set to: 0

		decf	(0+(_Engineering_Pattern+06h))&0ffh,w
	btfsc	status,2
	goto	u16521
	goto	u16520

u16521:
	goto	l56062
u16520:
	line	368
	
l56058:; BSR set to: 0

;control.c: 367: {;control.c: 368: TM1629_Luminance(1);
	movlw	(01h)&0ffh
	
	call	_TM1629_Luminance
	line	369
	
l56060:
;control.c: 369: RunData.AOD_TimeCount = 60;
	movlw	high(03Ch)
	movlb	0	; () banked
	movwf	(1+(_RunData+02Dh))&0ffh
	movlw	low(03Ch)
	movwf	(0+(_RunData+02Dh))&0ffh
	line	370
;control.c: 370: }
	goto	l56064
	line	373
	
l56062:; BSR set to: 0

;control.c: 371: else;control.c: 372: {;control.c: 373: TM1629_Luminance(8);
	movlw	(08h)&0ffh
	
	call	_TM1629_Luminance
	line	376
	
l56064:
;control.c: 374: };control.c: 376: if (EncoderData.Time < 100 || KeyDat.key_val_x == 0x04 || KeyDat.key_val_x == 0x05)
	movlb	1	; () banked
	btfsc	((_EncoderData+1))&0ffh,7
	goto	u16531
	movf	((_EncoderData+1))&0ffh,w
	bnz	u16530
	movlw	100
	subwf	 ((_EncoderData))&0ffh,w
	btfss	status,0
	goto	u16531
	goto	u16530

u16531:
	goto	l56070
u16530:
	
l56066:; BSR set to: 1

		movlw	4
	movlb	0	; () banked
	xorwf	(0+(_KeyDat+08h))&0ffh,w
iorwf	(1+(_KeyDat+08h))&0ffh,w
	btfsc	status,2
	goto	u16541
	goto	u16540

u16541:
	goto	l56070
u16540:
	
l56068:; BSR set to: 0

		movlw	5
	xorwf	(0+(_KeyDat+08h))&0ffh,w
iorwf	(1+(_KeyDat+08h))&0ffh,w
	btfss	status,2
	goto	u16551
	goto	u16550

u16551:
	goto	l56072
u16550:
	line	377
	
l56070:
;control.c: 377: count2 = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((Display@count2+1))&0ffh
	movlw	low(0)
	movwf	((Display@count2))&0ffh
	line	386
	
l56072:
;control.c: 386: Display_Flow(RunData.FlowSet, 1);
	movff	0+(_RunData+04h),(c:Display_Flow@sum)
	movff	1+(_RunData+04h),(c:Display_Flow@sum+1)
	movlw	low(01h)
	movwf	((c:Display_Flow@mode))^00h,c
	call	_Display_Flow	;wreg free
	line	389
	
l56074:; BSR set to: 0

;control.c: 389: Display_Concentration(RunData.Concentration, 1);
	movff	0+(_RunData+0Eh),(c:Display_Concentration@sum)
	movff	1+(_RunData+0Eh),(c:Display_Concentration@sum+1)
	movlw	low(01h)
	movwf	((c:Display_Concentration@mode))^00h,c
	call	_Display_Concentration	;wreg free
	line	390
	
l56076:; BSR set to: 0

;control.c: 390: Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pattern.Led_Displat_Enbale);
	movff	0+(_RunData+016h),(c:___aldiv@dividend)
	movff	1+(_RunData+016h),(c:___aldiv@dividend+1)
	movff	2+(_RunData+016h),(c:___aldiv@dividend+2)
	movff	3+(_RunData+016h),(c:___aldiv@dividend+3)
	movlw	low(03Ch)
	movwf	((c:___aldiv@divisor))^00h,c
	movlw	high(03Ch)
	movwf	((c:___aldiv@divisor+1))^00h,c
	movlw	low highword(03Ch)
	movwf	((c:___aldiv@divisor+2))^00h,c
	movlw	high highword(03Ch)
	movwf	((c:___aldiv@divisor+3))^00h,c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:Display_CumulativeTime@sum)
	movff	1+?___aldiv,(c:Display_CumulativeTime@sum+1)
	movff	2+?___aldiv,(c:Display_CumulativeTime@sum+2)
	movff	3+?___aldiv,(c:Display_CumulativeTime@sum+3)
	
	movlw	low(01h)
	movwf	((c:Display_CumulativeTime@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_CumulativeTime@enable)
	call	_Display_CumulativeTime	;wreg free
	line	395
	
l56078:
;control.c: 395: if ((RunData.CumulativeTime % (60 * 1000) == 0) && (RunData.CumulativeTime != 0))
	movff	0+(_RunData+016h),(c:___almod@dividend)
	movff	1+(_RunData+016h),(c:___almod@dividend+1)
	movff	2+(_RunData+016h),(c:___almod@dividend+2)
	movff	3+(_RunData+016h),(c:___almod@dividend+3)
	movlw	low(-5536)
	movwf	((c:___almod@divisor))^00h,c
	movlw	high(-5536)
	movwf	((c:___almod@divisor+1))^00h,c
	movlw	low highword(-5536)
	movwf	((c:___almod@divisor+2))^00h,c
	movlw	high highword(-5536)
	movwf	((c:___almod@divisor+3))^00h,c
	call	___almod	;wreg free
	movf	(0+?___almod)^00h,c,w
iorwf	(1+?___almod)^00h,c,w
iorwf	(2+?___almod)^00h,c,w
iorwf	(3+?___almod)^00h,c,w
	btfss	status,2
	goto	u16561
	goto	u16560

u16561:
	goto	l36452
u16560:
	
l56080:
	movlb	0	; () banked
	movf	(0+(_RunData+016h))&0ffh,w
iorwf	(1+(_RunData+016h))&0ffh,w
iorwf	(2+(_RunData+016h))&0ffh,w
iorwf	(3+(_RunData+016h))&0ffh,w
	btfsc	status,2
	goto	u16571
	goto	u16570

u16571:
	goto	l36452
u16570:
	line	396
	
l56082:; BSR set to: 0

;control.c: 396: RunData.FilterMeshFlag = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+02Ah))&0ffh
	
l36452:
	line	398
;control.c: 398: if (RunData.SysSta)
	movlb	0	; () banked
	movf	(0+(_RunData+02h))&0ffh,w
	btfsc	status,2
	goto	u16581
	goto	u16580
u16581:
	goto	l56086
u16580:
	line	400
	
l56084:; BSR set to: 0

;control.c: 399: {;control.c: 400: Label_CloseAlarm(RunData.AlarmSwitch);
	movf	(0+(_RunData+037h))&0ffh,w
	
	call	_Label_CloseAlarm
	line	403
	
l56086:
;control.c: 401: };control.c: 403: Display_FilterMesh(RunData.FilterMeshFlag);
	movlb	0	; () banked
	movf	(0+(_RunData+02Ah))&0ffh,w
	
	call	_Display_FilterMesh
	line	404
	
l56088:; BSR set to: 0

;control.c: 404: Display_Anion(0);
	movlw	(0)&0ffh
	
	call	_Display_Anion
	line	405
	
l56090:; BSR set to: 0

;control.c: 405: Display_Voice(RunData.VoiceEnable);
	movf	(0+(_RunData+02Ch))&0ffh,w
	
	call	_Display_Voice
	line	406
	
l56092:; BSR set to: 0

;control.c: 406: Concentration_Low_Alarm();
	call	_Concentration_Low_Alarm	;wreg free
	line	408
	
l56094:; BSR set to: 1

;control.c: 408: if (RunData.SysSta && RunData.Error_Delay_Time == 3)
	movlb	0	; () banked
	movf	(0+(_RunData+02h))&0ffh,w
	btfsc	status,2
	goto	u16591
	goto	u16590
u16591:
	goto	l56102
u16590:
	
l56096:; BSR set to: 0

		movlw	3
	xorwf	(0+(_RunData+042h))&0ffh,w
	btfss	status,2
	goto	u16601
	goto	u16600

u16601:
	goto	l56102
u16600:
	line	414
	
l56098:; BSR set to: 0

;control.c: 409: {;control.c: 414: SEG1(ch_table[(RunData.SysSta >> 4) & 0x0F],Engineering_Pattern.Led_Displat_Enbale);
	movff	0+(_Engineering_Pattern+07h),(c:SEG1@enable)
	movff	0+(_RunData+02h),??_Display+0+0
	swapf	(??_Display+0+0)^00h,c
	movlw	(0ffh shr 4) & 0ffh
	andwf	(??_Display+0+0)^00h,c
	movlw	0Fh
	andwf	(??_Display+0+0)^00h,c
	movf	(??_Display+0+0)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display+1+0)^00h,c
	movff	(??_Display+1+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG1
	line	415
;control.c: 415: SEG2(ch_table[RunData.SysSta & 0x0F],Engineering_Pattern.Led_Displat_Enbale);
	movff	0+(_Engineering_Pattern+07h),(c:SEG2@enable)
	movff	0+(_RunData+02h),??_Display+0+0
	movlw	0Fh
	andwf	(??_Display+0+0)^00h,c
	movf	(??_Display+0+0)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display+1+0)^00h,c
	movff	(??_Display+1+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG2
	line	416
	
l56100:
;control.c: 416: SEG3(0,Engineering_Pattern.Led_Displat_Enbale);
	movff	0+(_Engineering_Pattern+07h),(c:SEG3@enable)
	movlw	(0)&0ffh
	
	call	_SEG3
	line	417
;control.c: 417: }
	goto	l56130
	line	420
	
l56102:; BSR set to: 0

;control.c: 418: else;control.c: 419: {;control.c: 420: if (RunData.Timing)
	movf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfsc	status,2
	goto	u16611
	goto	u16610

u16611:
	goto	l56106
u16610:
	line	422
	
l56104:; BSR set to: 0

;control.c: 421: {;control.c: 422: Display_Timing(RunData.Timing, 2 , Engineering_Pattern.Led_Displat_Enbale);
	lfsr	2,(_RunData)+012h
	movff	postinc2,(c:Display_Timing@sum)
	movff	postdec2,(c:Display_Timing@sum+1)
	movlw	0
	btfsc	((c:Display_Timing@sum+1))^00h,c,7
	movlw	-1
	movwf	((c:Display_Timing@sum+2))^00h,c
	movwf	((c:Display_Timing@sum+3))^00h,c
	movlw	low(02h)
	movwf	((c:Display_Timing@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_Timing@enable)
	call	_Display_Timing	;wreg free
	line	423
;control.c: 423: }
	goto	l56130
	line	426
	
l56106:; BSR set to: 0

;control.c: 424: else;control.c: 425: {;control.c: 426: Display_Timing(RunData.RunTime, 1,Engineering_Pattern.Led_Displat_Enbale);
	lfsr	2,(_RunData)+010h
	movff	postinc2,(c:Display_Timing@sum)
	movff	postdec2,(c:Display_Timing@sum+1)
	movlw	0
	btfsc	((c:Display_Timing@sum+1))^00h,c,7
	movlw	-1
	movwf	((c:Display_Timing@sum+2))^00h,c
	movwf	((c:Display_Timing@sum+3))^00h,c
	movlw	low(01h)
	movwf	((c:Display_Timing@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_Timing@enable)
	call	_Display_Timing	;wreg free
	goto	l56130
	line	432
	
l56108:; BSR set to: 0

;control.c: 430: else;control.c: 431: {;control.c: 432: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	433
	
l56110:
;control.c: 433: count = 10;
	movlw	high(0Ah)
	movlb	1	; () banked
	movwf	((Display@count+1))&0ffh
	movlw	low(0Ah)
	movwf	((Display@count))&0ffh
	line	434
	
l56112:; BSR set to: 1

;control.c: 434: TM1629_Luminance(8);
	movlw	(08h)&0ffh
	
	call	_TM1629_Luminance
	line	435
	
l56114:
;control.c: 435: Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pattern.Led_Displat_Enbale);
	movff	0+(_RunData+016h),(c:___aldiv@dividend)
	movff	1+(_RunData+016h),(c:___aldiv@dividend+1)
	movff	2+(_RunData+016h),(c:___aldiv@dividend+2)
	movff	3+(_RunData+016h),(c:___aldiv@dividend+3)
	movlw	low(03Ch)
	movwf	((c:___aldiv@divisor))^00h,c
	movlw	high(03Ch)
	movwf	((c:___aldiv@divisor+1))^00h,c
	movlw	low highword(03Ch)
	movwf	((c:___aldiv@divisor+2))^00h,c
	movlw	high highword(03Ch)
	movwf	((c:___aldiv@divisor+3))^00h,c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:Display_CumulativeTime@sum)
	movff	1+?___aldiv,(c:Display_CumulativeTime@sum+1)
	movff	2+?___aldiv,(c:Display_CumulativeTime@sum+2)
	movff	3+?___aldiv,(c:Display_CumulativeTime@sum+3)
	
	movlw	low(01h)
	movwf	((c:Display_CumulativeTime@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_CumulativeTime@enable)
	call	_Display_CumulativeTime	;wreg free
	line	436
	
l56116:
;control.c: 436: Display_Timing(0, 3,Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_Timing@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_Timing@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_Timing@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_Timing@sum+3))^00h,c
	movlw	low(03h)
	movwf	((c:Display_Timing@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_Timing@enable)
	call	_Display_Timing	;wreg free
	line	437
	
l56118:
;control.c: 437: Display_Flow(0, 3);
	movlw	high(0)
	movwf	((c:Display_Flow@sum+1))^00h,c
	movlw	low(0)
	movwf	((c:Display_Flow@sum))^00h,c
	movlw	low(03h)
	movwf	((c:Display_Flow@mode))^00h,c
	call	_Display_Flow	;wreg free
	line	438
	
l56120:; BSR set to: 0

;control.c: 438: Display_Concentration(0, 3);
	movlw	high(0)
	movwf	((c:Display_Concentration@sum+1))^00h,c
	movlw	low(0)
	movwf	((c:Display_Concentration@sum))^00h,c
	movlw	low(03h)
	movwf	((c:Display_Concentration@mode))^00h,c
	call	_Display_Concentration	;wreg free
	line	439
	
l56122:; BSR set to: 0

;control.c: 439: Display_SysSta(0);
	movlw	(0)&0ffh
	
	call	_Display_SysSta
	line	440
	
l56124:
;control.c: 440: Display_Anion(0);
	movlw	(0)&0ffh
	
	call	_Display_Anion
	line	441
	
l56126:; BSR set to: 0

;control.c: 441: Display_FilterMesh(0);
	movlw	(0)&0ffh
	
	call	_Display_FilterMesh
	line	442
	
l56128:; BSR set to: 0

;control.c: 442: Display_Voice(RunData.VoiceEnable);
	movf	(0+(_RunData+02Ch))&0ffh,w
	
	call	_Display_Voice
	line	445
	
l56130:
;control.c: 443: };control.c: 444: };control.c: 445: count++;
	movlb	1	; () banked
	infsnz	((Display@count))&0ffh
	incf	((Display@count+1))&0ffh
	line	446
	
l36459:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display
	__end_of_Display:
	signat	_Display,89
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\almod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    9[COMRAM] long 
;;  divisor         4   13[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   18[COMRAM] unsigned char 
;;  counter         1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    9[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\almod.c"
	line	7
global __ptext35
__ptext35:
psect	text35
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\almod.c"
	line	7
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:; BSR set to: 1

;incstack = 0
	opt	callstack 24
	line	12
	
l55532:
	movlw	low(0)
	movwf	((c:___almod@sign))^00h,c
	line	13
	
l55534:
	btfsc	((c:___almod@dividend+3))^00h,c,7
	goto	u15580
	goto	u15581

u15581:
	goto	l55540
u15580:
	line	14
	
l55536:
	comf	((c:___almod@dividend+3))^00h,c
	comf	((c:___almod@dividend+2))^00h,c
	comf	((c:___almod@dividend+1))^00h,c
	negf	((c:___almod@dividend))^00h,c
	movlw	0
	addwfc	((c:___almod@dividend+1))^00h,c
	addwfc	((c:___almod@dividend+2))^00h,c
	addwfc	((c:___almod@dividend+3))^00h,c
	line	15
	
l55538:
	movlw	low(01h)
	movwf	((c:___almod@sign))^00h,c
	line	17
	
l55540:
	btfsc	((c:___almod@divisor+3))^00h,c,7
	goto	u15590
	goto	u15591

u15591:
	goto	l55544
u15590:
	line	18
	
l55542:
	comf	((c:___almod@divisor+3))^00h,c
	comf	((c:___almod@divisor+2))^00h,c
	comf	((c:___almod@divisor+1))^00h,c
	negf	((c:___almod@divisor))^00h,c
	movlw	0
	addwfc	((c:___almod@divisor+1))^00h,c
	addwfc	((c:___almod@divisor+2))^00h,c
	addwfc	((c:___almod@divisor+3))^00h,c
	line	19
	
l55544:
	movf	((c:___almod@divisor))^00h,c,w
iorwf	((c:___almod@divisor+1))^00h,c,w
iorwf	((c:___almod@divisor+2))^00h,c,w
iorwf	((c:___almod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u15601
	goto	u15600

u15601:
	goto	l55560
u15600:
	line	20
	
l55546:
	movlw	low(01h)
	movwf	((c:___almod@counter))^00h,c
	line	21
	goto	l55550
	line	22
	
l55548:
	bcf	status,0
	rlcf	((c:___almod@divisor))^00h,c
	rlcf	((c:___almod@divisor+1))^00h,c
	rlcf	((c:___almod@divisor+2))^00h,c
	rlcf	((c:___almod@divisor+3))^00h,c
	line	23
	incf	((c:___almod@counter))^00h,c
	line	21
	
l55550:
	
	btfss	((c:___almod@divisor+3))^00h,c,(31)&7
	goto	u15611
	goto	u15610
u15611:
	goto	l55548
u15610:
	line	26
	
l55552:
		movf	((c:___almod@divisor))^00h,c,w
	subwf	((c:___almod@dividend))^00h,c,w
	movf	((c:___almod@divisor+1))^00h,c,w
	subwfb	((c:___almod@dividend+1))^00h,c,w
	movf	((c:___almod@divisor+2))^00h,c,w
	subwfb	((c:___almod@dividend+2))^00h,c,w
	movf	((c:___almod@divisor+3))^00h,c,w
	subwfb	((c:___almod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u15621
	goto	u15620

u15621:
	goto	l55556
u15620:
	line	27
	
l55554:
	movf	((c:___almod@divisor))^00h,c,w
	subwf	((c:___almod@dividend))^00h,c
	movf	((c:___almod@divisor+1))^00h,c,w
	subwfb	((c:___almod@dividend+1))^00h,c
	movf	((c:___almod@divisor+2))^00h,c,w
	subwfb	((c:___almod@dividend+2))^00h,c
	movf	((c:___almod@divisor+3))^00h,c,w
	subwfb	((c:___almod@dividend+3))^00h,c
	line	28
	
l55556:
	bcf	status,0
	rrcf	((c:___almod@divisor+3))^00h,c
	rrcf	((c:___almod@divisor+2))^00h,c
	rrcf	((c:___almod@divisor+1))^00h,c
	rrcf	((c:___almod@divisor))^00h,c
	line	29
	
l55558:
	decfsz	((c:___almod@counter))^00h,c
	
	goto	l55552
	line	31
	
l55560:
	movf	((c:___almod@sign))^00h,c,w
	btfsc	status,2
	goto	u15631
	goto	u15630
u15631:
	goto	l55564
u15630:
	line	32
	
l55562:
	comf	((c:___almod@dividend+3))^00h,c
	comf	((c:___almod@dividend+2))^00h,c
	comf	((c:___almod@dividend+1))^00h,c
	negf	((c:___almod@dividend))^00h,c
	movlw	0
	addwfc	((c:___almod@dividend+1))^00h,c
	addwfc	((c:___almod@dividend+2))^00h,c
	addwfc	((c:___almod@dividend+3))^00h,c
	line	33
	
l55564:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	line	34
	
l42117:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    9[COMRAM] long 
;;  divisor         4   13[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   19[COMRAM] long 
;;  sign            1   18[COMRAM] unsigned char 
;;  counter         1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    9[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\aldiv.c"
	line	7
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\aldiv.c"
	line	7
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	callstack 24
	line	13
	
l55488:
	movlw	low(0)
	movwf	((c:___aldiv@sign))^00h,c
	line	14
	
l55490:
	btfsc	((c:___aldiv@divisor+3))^00h,c,7
	goto	u15520
	goto	u15521

u15521:
	goto	l55496
u15520:
	line	15
	
l55492:
	comf	((c:___aldiv@divisor+3))^00h,c
	comf	((c:___aldiv@divisor+2))^00h,c
	comf	((c:___aldiv@divisor+1))^00h,c
	negf	((c:___aldiv@divisor))^00h,c
	movlw	0
	addwfc	((c:___aldiv@divisor+1))^00h,c
	addwfc	((c:___aldiv@divisor+2))^00h,c
	addwfc	((c:___aldiv@divisor+3))^00h,c
	line	16
	
l55494:
	movlw	low(01h)
	movwf	((c:___aldiv@sign))^00h,c
	line	18
	
l55496:
	btfsc	((c:___aldiv@dividend+3))^00h,c,7
	goto	u15530
	goto	u15531

u15531:
	goto	l55502
u15530:
	line	19
	
l55498:
	comf	((c:___aldiv@dividend+3))^00h,c
	comf	((c:___aldiv@dividend+2))^00h,c
	comf	((c:___aldiv@dividend+1))^00h,c
	negf	((c:___aldiv@dividend))^00h,c
	movlw	0
	addwfc	((c:___aldiv@dividend+1))^00h,c
	addwfc	((c:___aldiv@dividend+2))^00h,c
	addwfc	((c:___aldiv@dividend+3))^00h,c
	line	20
	
l55500:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign))^00h,c
	line	22
	
l55502:
	movlw	low(0)
	movwf	((c:___aldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3))^00h,c
	line	23
	
l55504:
	movf	((c:___aldiv@divisor))^00h,c,w
iorwf	((c:___aldiv@divisor+1))^00h,c,w
iorwf	((c:___aldiv@divisor+2))^00h,c,w
iorwf	((c:___aldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u15541
	goto	u15540

u15541:
	goto	l55524
u15540:
	line	24
	
l55506:
	movlw	low(01h)
	movwf	((c:___aldiv@counter))^00h,c
	line	25
	goto	l55510
	line	26
	
l55508:
	bcf	status,0
	rlcf	((c:___aldiv@divisor))^00h,c
	rlcf	((c:___aldiv@divisor+1))^00h,c
	rlcf	((c:___aldiv@divisor+2))^00h,c
	rlcf	((c:___aldiv@divisor+3))^00h,c
	line	27
	incf	((c:___aldiv@counter))^00h,c
	line	25
	
l55510:
	
	btfss	((c:___aldiv@divisor+3))^00h,c,(31)&7
	goto	u15551
	goto	u15550
u15551:
	goto	l55508
u15550:
	line	30
	
l55512:
	bcf	status,0
	rlcf	((c:___aldiv@quotient))^00h,c
	rlcf	((c:___aldiv@quotient+1))^00h,c
	rlcf	((c:___aldiv@quotient+2))^00h,c
	rlcf	((c:___aldiv@quotient+3))^00h,c
	line	31
	
l55514:
		movf	((c:___aldiv@divisor))^00h,c,w
	subwf	((c:___aldiv@dividend))^00h,c,w
	movf	((c:___aldiv@divisor+1))^00h,c,w
	subwfb	((c:___aldiv@dividend+1))^00h,c,w
	movf	((c:___aldiv@divisor+2))^00h,c,w
	subwfb	((c:___aldiv@dividend+2))^00h,c,w
	movf	((c:___aldiv@divisor+3))^00h,c,w
	subwfb	((c:___aldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u15561
	goto	u15560

u15561:
	goto	l55520
u15560:
	line	32
	
l55516:
	movf	((c:___aldiv@divisor))^00h,c,w
	subwf	((c:___aldiv@dividend))^00h,c
	movf	((c:___aldiv@divisor+1))^00h,c,w
	subwfb	((c:___aldiv@dividend+1))^00h,c
	movf	((c:___aldiv@divisor+2))^00h,c,w
	subwfb	((c:___aldiv@dividend+2))^00h,c
	movf	((c:___aldiv@divisor+3))^00h,c,w
	subwfb	((c:___aldiv@dividend+3))^00h,c
	line	33
	
l55518:
	bsf	(0+(0/8)+(c:___aldiv@quotient))^00h,c,(0)&7
	line	35
	
l55520:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3))^00h,c
	rrcf	((c:___aldiv@divisor+2))^00h,c
	rrcf	((c:___aldiv@divisor+1))^00h,c
	rrcf	((c:___aldiv@divisor))^00h,c
	line	36
	
l55522:
	decfsz	((c:___aldiv@counter))^00h,c
	
	goto	l55512
	line	38
	
l55524:
	movf	((c:___aldiv@sign))^00h,c,w
	btfsc	status,2
	goto	u15571
	goto	u15570
u15571:
	goto	l55528
u15570:
	line	39
	
l55526:
	comf	((c:___aldiv@quotient+3))^00h,c
	comf	((c:___aldiv@quotient+2))^00h,c
	comf	((c:___aldiv@quotient+1))^00h,c
	negf	((c:___aldiv@quotient))^00h,c
	movlw	0
	addwfc	((c:___aldiv@quotient+1))^00h,c
	addwfc	((c:___aldiv@quotient+2))^00h,c
	addwfc	((c:___aldiv@quotient+3))^00h,c
	line	40
	
l55528:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	line	41
	
l42104:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_Display_Voice

;; *************** function _Display_Voice *****************
;; Defined at:
;;		line 522 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"display.c"
	line	522
global __ptext37
__ptext37:
psect	text37
	file	"display.c"
	line	522
	global	__size_of_Display_Voice
	__size_of_Display_Voice	equ	__end_of_Display_Voice-_Display_Voice
	
_Display_Voice:
;incstack = 0
	opt	callstack 24
;Display_Voice@sta stored from wreg
	movwf	((c:Display_Voice@sta))^00h,c
	line	524
	
l54904:
;display.c: 524: if(sta)
	movf	((c:Display_Voice@sta))^00h,c,w
	btfsc	status,2
	goto	u14781
	goto	u14780
u14781:
	goto	l54908
u14780:
	line	526
	
l54906:
;display.c: 525: {;display.c: 526: DisBuf[2] |= (1<<0);
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_DisBuf+02h))&0ffh,(0)&7
	line	527
;display.c: 527: DisBuf[14] |=(1<<1);
	bsf	(0+(1/8)+0+(_DisBuf+0Eh))&0ffh,(1)&7
	line	528
;display.c: 528: }
	goto	l13254
	line	531
	
l54908:
;display.c: 529: else;display.c: 530: {;display.c: 531: DisBuf[2] &= ~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+0+(_DisBuf+02h))&0ffh,(0)&7
	line	532
;display.c: 532: DisBuf[14] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+0Eh))&0ffh,(1)&7
	line	534
	
l13254:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_Voice
	__end_of_Display_Voice:
	signat	_Display_Voice,4217
	global	_Display_SysSta

;; *************** function _Display_SysSta *****************
;; Defined at:
;;		line 492 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ERR_Code
;;		_ErrorCtr
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	492
global __ptext38
__ptext38:
psect	text38
	file	"display.c"
	line	492
	global	__size_of_Display_SysSta
	__size_of_Display_SysSta	equ	__end_of_Display_SysSta-_Display_SysSta
	
_Display_SysSta:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Display_SysSta@sta stored from wreg
	movwf	((c:Display_SysSta@sta))^00h,c
	line	494
	
l54334:
;display.c: 494: switch(sta)
	goto	l54338
	line	496
;display.c: 495: {;display.c: 496: case 1:
	
l13244:
	line	497
;display.c: 497: LATCbits.LATC1 = 0;
	bcf	((c:3979))^0f00h,c,1	;volatile
	line	498
;display.c: 498: LATCbits.LATC0 = 1;
	bsf	((c:3979))^0f00h,c,0	;volatile
	line	499
;display.c: 499: LATFbits.LATF2 = 0;
	bcf	((c:3982))^0f00h,c,2	;volatile
	line	500
;display.c: 500: break;
	goto	l13249
	line	501
;display.c: 501: case 2:
	
l13246:
	line	502
;display.c: 502: LATCbits.LATC1 = 1;
	bsf	((c:3979))^0f00h,c,1	;volatile
	line	503
;display.c: 503: LATCbits.LATC0 = 0;
	bcf	((c:3979))^0f00h,c,0	;volatile
	line	504
;display.c: 504: LATFbits.LATF2 = 0;
	bcf	((c:3982))^0f00h,c,2	;volatile
	line	505
;display.c: 505: break;
	goto	l13249
	line	506
;display.c: 506: case 3:
	
l13247:
	line	507
;display.c: 507: LATCbits.LATC1 = 0;
	bcf	((c:3979))^0f00h,c,1	;volatile
	line	508
;display.c: 508: LATCbits.LATC0 = 0;
	bcf	((c:3979))^0f00h,c,0	;volatile
	line	509
;display.c: 509: LATFbits.LATF2 = 1;
	bsf	((c:3982))^0f00h,c,2	;volatile
	line	510
;display.c: 510: break;
	goto	l13249
	line	511
;display.c: 511: default:
	
l13248:
	line	512
;display.c: 512: LATCbits.LATC1 = 0;
	bcf	((c:3979))^0f00h,c,1	;volatile
	line	513
;display.c: 513: LATCbits.LATC0 = 0;
	bcf	((c:3979))^0f00h,c,0	;volatile
	line	514
;display.c: 514: LATFbits.LATF2 = 0;
	bcf	((c:3982))^0f00h,c,2	;volatile
	line	515
;display.c: 515: break;
	goto	l13249
	line	494
	
l54338:
	movf	((c:Display_SysSta@sta))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l13244
	xorlw	2^1	; case 2
	skipnz
	goto	l13246
	xorlw	3^2	; case 3
	skipnz
	goto	l13247
	goto	l13248

	line	517
	
l13249:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_SysSta
	__end_of_Display_SysSta:
	signat	_Display_SysSta,4217
	global	_Display_Flow

;; *************** function _Display_Flow *****************
;; Defined at:
;;		line 648 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sum             2   21[COMRAM] unsigned int 
;;  mode            1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Label_Flow
;;		_Label_L_min
;;		_SEG4
;;		_SEG5
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	648
global __ptext39
__ptext39:
psect	text39
	file	"display.c"
	line	648
	global	__size_of_Display_Flow
	__size_of_Display_Flow	equ	__end_of_Display_Flow-_Display_Flow
	
_Display_Flow:
;incstack = 0
	opt	callstack 23
	line	650
	
l54938:
;display.c: 650: if(sum>99) sum = 99;
		movf	((c:Display_Flow@sum+1))^00h,c,w
	bnz	u14810
	movlw	100
	subwf	 ((c:Display_Flow@sum))^00h,c,w
	btfss	status,0
	goto	u14811
	goto	u14810

u14811:
	goto	l54942
u14810:
	
l54940:
	movlw	high(063h)
	movwf	((c:Display_Flow@sum+1))^00h,c
	movlw	low(063h)
	movwf	((c:Display_Flow@sum))^00h,c
	line	651
	
l54942:
;display.c: 651: SEG4(ch_table[sum%100/10]);
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	(c:Display_Flow@sum),(c:___lwmod@dividend)
	movff	(c:Display_Flow@sum+1),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Flow+0+0)^00h,c
	movff	(??_Display_Flow+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG4
	line	652
	
l54944:; BSR set to: 0

;display.c: 652: SEG5(ch_table[sum%10]);
	movff	(c:Display_Flow@sum),(c:___lwmod@dividend)
	movff	(c:Display_Flow@sum+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Flow+0+0)^00h,c
	movff	(??_Display_Flow+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG5
	line	653
;display.c: 653: switch(mode)
	goto	l54958
	line	656
	
l54946:; BSR set to: 0

;display.c: 656: SEG4(ch_table[sum%100/10]|0x80);
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	(c:Display_Flow@sum),(c:___lwmod@dividend)
	movff	(c:Display_Flow@sum+1),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Flow+0+0)^00h,c
	movff	(??_Display_Flow+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_SEG4
	line	657
	
l54948:; BSR set to: 0

;display.c: 657: Label_Flow(1);
	movlw	(01h)&0ffh
	
	call	_Label_Flow
	line	658
	
l54950:; BSR set to: 0

;display.c: 658: Label_L_min(1);
	movlw	(01h)&0ffh
	
	call	_Label_L_min
	line	659
;display.c: 659: break;
	goto	l13290
	line	662
	
l54952:; BSR set to: 0

;display.c: 662: SEG4(0x40|0x80);
	movlw	(0C0h)&0ffh
	
	call	_SEG4
	line	663
;display.c: 663: SEG5(0x40);
	movlw	(040h)&0ffh
	
	call	_SEG5
	line	664
;display.c: 664: Label_Flow(1);
	movlw	(01h)&0ffh
	
	call	_Label_Flow
	line	665
;display.c: 665: Label_L_min(1);
	movlw	(01h)&0ffh
	
	call	_Label_L_min
	line	666
;display.c: 666: break;
	goto	l13290
	line	668
	
l54954:; BSR set to: 0

;display.c: 668: SEG4(0x00);
	movlw	(0)&0ffh
	
	call	_SEG4
	line	669
;display.c: 669: SEG5(0x00);
	movlw	(0)&0ffh
	
	call	_SEG5
	line	670
;display.c: 670: Label_Flow(0);
	movlw	(0)&0ffh
	
	call	_Label_Flow
	line	671
;display.c: 671: Label_L_min(0);
	movlw	(0)&0ffh
	
	call	_Label_L_min
	line	672
;display.c: 672: break;
	goto	l13290
	line	653
	
l54958:; BSR set to: 0

	movf	((c:Display_Flow@mode))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l54946
	xorlw	3^1	; case 3
	skipnz
	goto	l54952
	goto	l54954

	line	675
	
l13290:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_Flow
	__end_of_Display_Flow:
	signat	_Display_Flow,8313
	global	_SEG5

;; *************** function _SEG5 *****************
;; Defined at:
;;		line 117 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Flow
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	117
global __ptext40
__ptext40:
psect	text40
	file	"display.c"
	line	117
	global	__size_of_SEG5
	__size_of_SEG5	equ	__end_of_SEG5-_SEG5
	
_SEG5:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG5@dat stored from wreg
	movwf	((c:SEG5@dat))^00h,c
	line	119
	
l54124:
;display.c: 119: if(dat&0x01) DisBuf[0] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(0)&7
	goto	u13841
	goto	u13840
u13841:
	goto	l54128
u13840:
	
l54126:
	movlb	0	; () banked
	bsf	(0+(6/8)+(_DisBuf))&0ffh,(6)&7
	goto	l54130
	line	120
	
l54128:
;display.c: 120: else DisBuf[0] &=~(1<<6);
	movlb	0	; () banked
	bcf	(0+(6/8)+(_DisBuf))&0ffh,(6)&7
	line	122
	
l54130:; BSR set to: 0

;display.c: 122: if(dat&0x02) DisBuf[2] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(1)&7
	goto	u13851
	goto	u13850
u13851:
	goto	l54134
u13850:
	
l54132:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+02h))&0ffh,(6)&7
	goto	l54136
	line	123
	
l54134:; BSR set to: 0

;display.c: 123: else DisBuf[2] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+02h))&0ffh,(6)&7
	line	125
	
l54136:; BSR set to: 0

;display.c: 125: if(dat&0x04) DisBuf[4] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(2)&7
	goto	u13861
	goto	u13860
u13861:
	goto	l54140
u13860:
	
l54138:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+04h))&0ffh,(6)&7
	goto	l54142
	line	126
	
l54140:; BSR set to: 0

;display.c: 126: else DisBuf[4] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+04h))&0ffh,(6)&7
	line	128
	
l54142:; BSR set to: 0

;display.c: 128: if(dat&0x08) DisBuf[6] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(3)&7
	goto	u13871
	goto	u13870
u13871:
	goto	l54146
u13870:
	
l54144:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+06h))&0ffh,(6)&7
	goto	l54148
	line	129
	
l54146:; BSR set to: 0

;display.c: 129: else DisBuf[6] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+06h))&0ffh,(6)&7
	line	131
	
l54148:; BSR set to: 0

;display.c: 131: if(dat&0x10) DisBuf[8] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(4)&7
	goto	u13881
	goto	u13880
u13881:
	goto	l54152
u13880:
	
l54150:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+08h))&0ffh,(6)&7
	goto	l54154
	line	132
	
l54152:; BSR set to: 0

;display.c: 132: else DisBuf[8] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+08h))&0ffh,(6)&7
	line	134
	
l54154:; BSR set to: 0

;display.c: 134: if(dat&0x20) DisBuf[10] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(5)&7
	goto	u13891
	goto	u13890
u13891:
	goto	l54158
u13890:
	
l54156:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+0Ah))&0ffh,(6)&7
	goto	l54160
	line	135
	
l54158:; BSR set to: 0

;display.c: 135: else DisBuf[10] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+0Ah))&0ffh,(6)&7
	line	137
	
l54160:; BSR set to: 0

;display.c: 137: if(dat&0x40) DisBuf[12] |=(1<<6);
	
	btfss	((c:SEG5@dat))^00h,c,(6)&7
	goto	u13901
	goto	u13900
u13901:
	goto	l54164
u13900:
	
l54162:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+0Ch))&0ffh,(6)&7
	goto	l13043
	line	138
	
l54164:; BSR set to: 0

;display.c: 138: else DisBuf[12] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+0Ch))&0ffh,(6)&7
	line	139
	
l13043:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG5
	__end_of_SEG5:
	signat	_SEG5,4217
	global	_SEG4

;; *************** function _SEG4 *****************
;; Defined at:
;;		line 91 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Flow
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	91
global __ptext41
__ptext41:
psect	text41
	file	"display.c"
	line	91
	global	__size_of_SEG4
	__size_of_SEG4	equ	__end_of_SEG4-_SEG4
	
_SEG4:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG4@dat stored from wreg
	movwf	((c:SEG4@dat))^00h,c
	line	93
	
l54076:
;display.c: 93: if(dat&0x01) DisBuf[0] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(0)&7
	goto	u13761
	goto	u13760
u13761:
	goto	l54080
u13760:
	
l54078:
	movlb	0	; () banked
	bsf	(0+(7/8)+(_DisBuf))&0ffh,(7)&7
	goto	l54082
	line	94
	
l54080:
;display.c: 94: else DisBuf[0] &=~(1<<7);
	movlb	0	; () banked
	bcf	(0+(7/8)+(_DisBuf))&0ffh,(7)&7
	line	96
	
l54082:; BSR set to: 0

;display.c: 96: if(dat&0x02) DisBuf[2] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(1)&7
	goto	u13771
	goto	u13770
u13771:
	goto	l54086
u13770:
	
l54084:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+02h))&0ffh,(7)&7
	goto	l54088
	line	97
	
l54086:; BSR set to: 0

;display.c: 97: else DisBuf[2] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+02h))&0ffh,(7)&7
	line	99
	
l54088:; BSR set to: 0

;display.c: 99: if(dat&0x04) DisBuf[4] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(2)&7
	goto	u13781
	goto	u13780
u13781:
	goto	l54092
u13780:
	
l54090:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+04h))&0ffh,(7)&7
	goto	l54094
	line	100
	
l54092:; BSR set to: 0

;display.c: 100: else DisBuf[4] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+04h))&0ffh,(7)&7
	line	102
	
l54094:; BSR set to: 0

;display.c: 102: if(dat&0x08) DisBuf[6] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(3)&7
	goto	u13791
	goto	u13790
u13791:
	goto	l54098
u13790:
	
l54096:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+06h))&0ffh,(7)&7
	goto	l54100
	line	103
	
l54098:; BSR set to: 0

;display.c: 103: else DisBuf[6] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+06h))&0ffh,(7)&7
	line	105
	
l54100:; BSR set to: 0

;display.c: 105: if(dat&0x10) DisBuf[8] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(4)&7
	goto	u13801
	goto	u13800
u13801:
	goto	l54104
u13800:
	
l54102:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+08h))&0ffh,(7)&7
	goto	l54106
	line	106
	
l54104:; BSR set to: 0

;display.c: 106: else DisBuf[8] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+08h))&0ffh,(7)&7
	line	108
	
l54106:; BSR set to: 0

;display.c: 108: if(dat&0x20) DisBuf[10] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(5)&7
	goto	u13811
	goto	u13810
u13811:
	goto	l54110
u13810:
	
l54108:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+0Ah))&0ffh,(7)&7
	goto	l54112
	line	109
	
l54110:; BSR set to: 0

;display.c: 109: else DisBuf[10] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+0Ah))&0ffh,(7)&7
	line	111
	
l54112:; BSR set to: 0

;display.c: 111: if(dat&0x40) DisBuf[12] |=(1<<7);
	
	btfss	((c:SEG4@dat))^00h,c,(6)&7
	goto	u13821
	goto	u13820
u13821:
	goto	l54116
u13820:
	
l54114:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+0Ch))&0ffh,(7)&7
	goto	l54118
	line	112
	
l54116:; BSR set to: 0

;display.c: 112: else DisBuf[12] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+0Ch))&0ffh,(7)&7
	line	114
	
l54118:; BSR set to: 0

;display.c: 114: if(dat&0x80) DisBuf[15] |=(1<<0);
	
	btfss	((c:SEG4@dat))^00h,c,(7)&7
	goto	u13831
	goto	u13830
u13831:
	goto	l54122
u13830:
	
l54120:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+0Fh))&0ffh,(0)&7
	goto	l13026
	line	115
	
l54122:; BSR set to: 0

;display.c: 115: else DisBuf[15] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+0Fh))&0ffh,(0)&7
	line	116
	
l13026:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG4
	__end_of_SEG4:
	signat	_SEG4,4217
	global	_Label_L_min

;; *************** function _Label_L_min *****************
;; Defined at:
;;		line 441 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Flow
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	441
global __ptext42
__ptext42:
psect	text42
	file	"display.c"
	line	441
	global	__size_of_Label_L_min
	__size_of_Label_L_min	equ	__end_of_Label_L_min-_Label_L_min
	
_Label_L_min:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_L_min@sta stored from wreg
	movwf	((c:Label_L_min@sta))^00h,c
	line	443
	
l54328:
;display.c: 443: if(sta)
	movf	((c:Label_L_min@sta))^00h,c,w
	btfsc	status,2
	goto	u14181
	goto	u14180
u14181:
	goto	l54332
u14180:
	line	445
	
l54330:
;display.c: 444: {;display.c: 445: DisBuf[15] |=(1<<1);
	movlb	0	; () banked
	bsf	(0+(1/8)+0+(_DisBuf+0Fh))&0ffh,(1)&7
	line	446
;display.c: 446: DisBuf[15] |=(1<<2);
	bsf	(0+(2/8)+0+(_DisBuf+0Fh))&0ffh,(2)&7
	line	447
;display.c: 447: }
	goto	l13225
	line	450
	
l54332:
;display.c: 448: else;display.c: 449: {;display.c: 450: DisBuf[15] &=~(1<<1);
	movlb	0	; () banked
	bcf	(0+(1/8)+0+(_DisBuf+0Fh))&0ffh,(1)&7
	line	451
;display.c: 451: DisBuf[15] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+0Fh))&0ffh,(2)&7
	line	453
	
l13225:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_L_min
	__end_of_Label_L_min:
	signat	_Label_L_min,4217
	global	_Label_Flow

;; *************** function _Label_Flow *****************
;; Defined at:
;;		line 372 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Flow
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	372
global __ptext43
__ptext43:
psect	text43
	file	"display.c"
	line	372
	global	__size_of_Label_Flow
	__size_of_Label_Flow	equ	__end_of_Label_Flow-_Label_Flow
	
_Label_Flow:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_Flow@sta stored from wreg
	movwf	((c:Label_Flow@sta))^00h,c
	line	374
	
l54316:
;display.c: 374: if(sta)
	movf	((c:Label_Flow@sta))^00h,c,w
	btfsc	status,2
	goto	u14161
	goto	u14160
u14161:
	goto	l54320
u14160:
	line	376
	
l54318:
;display.c: 375: {;display.c: 376: DisBuf[14] |=(1<<6);
	movlb	0	; () banked
	bsf	(0+(6/8)+0+(_DisBuf+0Eh))&0ffh,(6)&7
	line	377
;display.c: 377: DisBuf[14] |=(1<<7);
	bsf	(0+(7/8)+0+(_DisBuf+0Eh))&0ffh,(7)&7
	line	378
;display.c: 378: }
	goto	l13200
	line	381
	
l54320:
;display.c: 379: else;display.c: 380: {;display.c: 381: DisBuf[14] &=~(1<<6);
	movlb	0	; () banked
	bcf	(0+(6/8)+0+(_DisBuf+0Eh))&0ffh,(6)&7
	line	382
;display.c: 382: DisBuf[14] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+0Eh))&0ffh,(7)&7
	line	384
	
l13200:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Flow
	__end_of_Label_Flow:
	signat	_Label_Flow,4217
	global	_Display_FilterMesh

;; *************** function _Display_FilterMesh *****************
;; Defined at:
;;		line 537 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	537
global __ptext44
__ptext44:
psect	text44
	file	"display.c"
	line	537
	global	__size_of_Display_FilterMesh
	__size_of_Display_FilterMesh	equ	__end_of_Display_FilterMesh-_Display_FilterMesh
	
_Display_FilterMesh:; BSR set to: 0

;incstack = 0
	opt	callstack 24
;Display_FilterMesh@sta stored from wreg
	movwf	((c:Display_FilterMesh@sta))^00h,c
	line	539
	
l54910:
;display.c: 539: if(sta)
	movf	((c:Display_FilterMesh@sta))^00h,c,w
	btfsc	status,2
	goto	u14791
	goto	u14790
u14791:
	goto	l54914
u14790:
	line	541
	
l54912:
;display.c: 540: {;display.c: 541: DisBuf[14] |=(1<<0);
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_DisBuf+0Eh))&0ffh,(0)&7
	line	542
;display.c: 542: DisBuf[12] |=(1<<0);
	bsf	(0+(0/8)+0+(_DisBuf+0Ch))&0ffh,(0)&7
	line	543
;display.c: 543: DisBuf[10] |=(1<<0);
	bsf	(0+(0/8)+0+(_DisBuf+0Ah))&0ffh,(0)&7
	line	544
;display.c: 544: }
	goto	l13259
	line	547
	
l54914:
;display.c: 545: else;display.c: 546: {;display.c: 547: DisBuf[14] &=~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+0+(_DisBuf+0Eh))&0ffh,(0)&7
	line	548
;display.c: 548: DisBuf[12] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+0Ch))&0ffh,(0)&7
	line	549
;display.c: 549: DisBuf[10] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+0Ah))&0ffh,(0)&7
	line	552
	
l13259:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_FilterMesh
	__end_of_Display_FilterMesh:
	signat	_Display_FilterMesh,4217
	global	_Display_Concentration

;; *************** function _Display_Concentration *****************
;; Defined at:
;;		line 615 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sum             2   21[COMRAM] unsigned int 
;;  mode            1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Label_Concentration
;;		_Label_Percent
;;		_SEG6
;;		_SEG7
;;		_SEG8
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	615
global __ptext45
__ptext45:
psect	text45
	file	"display.c"
	line	615
	global	__size_of_Display_Concentration
	__size_of_Display_Concentration	equ	__end_of_Display_Concentration-_Display_Concentration
	
_Display_Concentration:; BSR set to: 0

;incstack = 0
	opt	callstack 23
	line	617
	
l54916:; BSR set to: 0

;display.c: 617: if(sum>999) sum = 999;
		movlw	232
	subwf	 ((c:Display_Concentration@sum))^00h,c,w
	movlw	3
	subwfb	((c:Display_Concentration@sum+1))^00h,c,w
	btfss	status,0
	goto	u14801
	goto	u14800

u14801:
	goto	l54920
u14800:
	
l54918:; BSR set to: 0

	movlw	high(03E7h)
	movwf	((c:Display_Concentration@sum+1))^00h,c
	movlw	low(03E7h)
	movwf	((c:Display_Concentration@sum))^00h,c
	line	618
	
l54920:; BSR set to: 0

;display.c: 618: SEG6(ch_table[sum%1000/100]);
	movlw	high(03E8h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(03E8h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	(c:Display_Concentration@sum),(c:___lwmod@dividend)
	movff	(c:Display_Concentration@sum+1),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Concentration+0+0)^00h,c
	movff	(??_Display_Concentration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG6
	line	619
	
l54922:; BSR set to: 0

;display.c: 619: SEG7(ch_table[sum%100/10]);
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	(c:Display_Concentration@sum),(c:___lwmod@dividend)
	movff	(c:Display_Concentration@sum+1),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Concentration+0+0)^00h,c
	movff	(??_Display_Concentration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG7
	line	620
	
l54924:; BSR set to: 0

;display.c: 620: SEG8(ch_table[sum%10]);
	movff	(c:Display_Concentration@sum),(c:___lwmod@dividend)
	movff	(c:Display_Concentration@sum+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Concentration+0+0)^00h,c
	movff	(??_Display_Concentration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG8
	line	622
;display.c: 622: switch(mode)
	goto	l54936
	line	625
	
l54926:; BSR set to: 0

;display.c: 625: Label_Concentration(1);
	movlw	(01h)&0ffh
	
	call	_Label_Concentration
	line	626
;display.c: 626: Label_Percent(1);
	movlw	(01h)&0ffh
	
	call	_Label_Percent
	line	627
	
l54928:; BSR set to: 0

;display.c: 627: SEG7(ch_table[sum%100/10]|0x80);
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	(c:Display_Concentration@sum),(c:___lwmod@dividend)
	movff	(c:Display_Concentration@sum+1),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Concentration+0+0)^00h,c
	movff	(??_Display_Concentration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_SEG7
	line	628
;display.c: 628: break;
	goto	l13281
	line	631
	
l54930:; BSR set to: 0

;display.c: 631: SEG6(0x40);
	movlw	(040h)&0ffh
	
	call	_SEG6
	line	632
;display.c: 632: SEG7(0x40|0x80);
	movlw	(0C0h)&0ffh
	
	call	_SEG7
	line	633
;display.c: 633: SEG8(0x40);
	movlw	(040h)&0ffh
	
	call	_SEG8
	line	634
;display.c: 634: Label_Percent(1);
	movlw	(01h)&0ffh
	
	call	_Label_Percent
	line	635
;display.c: 635: Label_Concentration(1);
	movlw	(01h)&0ffh
	
	call	_Label_Concentration
	line	636
;display.c: 636: break;
	goto	l13281
	line	638
	
l54932:; BSR set to: 0

;display.c: 638: SEG6(0x00);
	movlw	(0)&0ffh
	
	call	_SEG6
	line	639
;display.c: 639: SEG7(0x00);
	movlw	(0)&0ffh
	
	call	_SEG7
	line	640
;display.c: 640: SEG8(0x00);
	movlw	(0)&0ffh
	
	call	_SEG8
	line	641
;display.c: 641: Label_Percent(0);
	movlw	(0)&0ffh
	
	call	_Label_Percent
	line	642
;display.c: 642: Label_Concentration(0);
	movlw	(0)&0ffh
	
	call	_Label_Concentration
	line	643
;display.c: 643: break;
	goto	l13281
	line	622
	
l54936:; BSR set to: 0

	movf	((c:Display_Concentration@mode))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l54926
	xorlw	3^1	; case 3
	skipnz
	goto	l54930
	goto	l54932

	line	645
	
l13281:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_Concentration
	__end_of_Display_Concentration:
	signat	_Display_Concentration,8313
	global	_SEG8

;; *************** function _SEG8 *****************
;; Defined at:
;;		line 196 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	196
global __ptext46
__ptext46:
psect	text46
	file	"display.c"
	line	196
	global	__size_of_SEG8
	__size_of_SEG8	equ	__end_of_SEG8-_SEG8
	
_SEG8:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG8@dat stored from wreg
	movwf	((c:SEG8@dat))^00h,c
	line	198
	
l54268:
;display.c: 198: if(dat&0x01) DisBuf[1] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(0)&7
	goto	u14081
	goto	u14080
u14081:
	goto	l54272
u14080:
	
l54270:
	movlb	0	; () banked
	bsf	(0+(2/8)+0+(_DisBuf+01h))&0ffh,(2)&7
	goto	l54274
	line	199
	
l54272:
;display.c: 199: else DisBuf[1] &=~(1<<2);
	movlb	0	; () banked
	bcf	(0+(2/8)+0+(_DisBuf+01h))&0ffh,(2)&7
	line	201
	
l54274:; BSR set to: 0

;display.c: 201: if(dat&0x02) DisBuf[3] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(1)&7
	goto	u14091
	goto	u14090
u14091:
	goto	l54278
u14090:
	
l54276:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+03h))&0ffh,(2)&7
	goto	l54280
	line	202
	
l54278:; BSR set to: 0

;display.c: 202: else DisBuf[3] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+03h))&0ffh,(2)&7
	line	204
	
l54280:; BSR set to: 0

;display.c: 204: if(dat&0x04) DisBuf[5] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(2)&7
	goto	u14101
	goto	u14100
u14101:
	goto	l54284
u14100:
	
l54282:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+05h))&0ffh,(2)&7
	goto	l54286
	line	205
	
l54284:; BSR set to: 0

;display.c: 205: else DisBuf[5] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+05h))&0ffh,(2)&7
	line	207
	
l54286:; BSR set to: 0

;display.c: 207: if(dat&0x08) DisBuf[7] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(3)&7
	goto	u14111
	goto	u14110
u14111:
	goto	l54290
u14110:
	
l54288:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+07h))&0ffh,(2)&7
	goto	l54292
	line	208
	
l54290:; BSR set to: 0

;display.c: 208: else DisBuf[7] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+07h))&0ffh,(2)&7
	line	210
	
l54292:; BSR set to: 0

;display.c: 210: if(dat&0x10) DisBuf[9] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(4)&7
	goto	u14121
	goto	u14120
u14121:
	goto	l54296
u14120:
	
l54294:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+09h))&0ffh,(2)&7
	goto	l54298
	line	211
	
l54296:; BSR set to: 0

;display.c: 211: else DisBuf[9] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+09h))&0ffh,(2)&7
	line	213
	
l54298:; BSR set to: 0

;display.c: 213: if(dat&0x20) DisBuf[11] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(5)&7
	goto	u14131
	goto	u14130
u14131:
	goto	l54302
u14130:
	
l54300:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+0Bh))&0ffh,(2)&7
	goto	l54304
	line	214
	
l54302:; BSR set to: 0

;display.c: 214: else DisBuf[11] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+0Bh))&0ffh,(2)&7
	line	216
	
l54304:; BSR set to: 0

;display.c: 216: if(dat&0x40) DisBuf[13] |=(1<<2);
	
	btfss	((c:SEG8@dat))^00h,c,(6)&7
	goto	u14141
	goto	u14140
u14141:
	goto	l54308
u14140:
	
l54306:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+0Dh))&0ffh,(2)&7
	goto	l13100
	line	217
	
l54308:; BSR set to: 0

;display.c: 217: else DisBuf[13] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+0Dh))&0ffh,(2)&7
	line	219
	
l13100:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG8
	__end_of_SEG8:
	signat	_SEG8,4217
	global	_SEG7

;; *************** function _SEG7 *****************
;; Defined at:
;;		line 167 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	line	167
global __ptext47
__ptext47:
psect	text47
	file	"display.c"
	line	167
	global	__size_of_SEG7
	__size_of_SEG7	equ	__end_of_SEG7-_SEG7
	
_SEG7:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG7@dat stored from wreg
	movwf	((c:SEG7@dat))^00h,c
	line	169
	
l54214:
;display.c: 169: if(dat&0x01) DisBuf[1] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(0)&7
	goto	u13991
	goto	u13990
u13991:
	goto	l54218
u13990:
	
l54216:
	movlb	0	; () banked
	bsf	(0+(1/8)+0+(_DisBuf+01h))&0ffh,(1)&7
	goto	l54220
	line	170
	
l54218:
;display.c: 170: else DisBuf[1] &=~(1<<1);
	movlb	0	; () banked
	bcf	(0+(1/8)+0+(_DisBuf+01h))&0ffh,(1)&7
	line	172
	
l54220:; BSR set to: 0

;display.c: 172: if(dat&0x01) DisBuf[1] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(0)&7
	goto	u14001
	goto	u14000
u14001:
	goto	l54224
u14000:
	
l54222:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+01h))&0ffh,(1)&7
	goto	l54226
	line	173
	
l54224:; BSR set to: 0

;display.c: 173: else DisBuf[1] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+01h))&0ffh,(1)&7
	line	175
	
l54226:; BSR set to: 0

;display.c: 175: if(dat&0x02) DisBuf[3] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(1)&7
	goto	u14011
	goto	u14010
u14011:
	goto	l54230
u14010:
	
l54228:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+03h))&0ffh,(1)&7
	goto	l54232
	line	176
	
l54230:; BSR set to: 0

;display.c: 176: else DisBuf[3] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+03h))&0ffh,(1)&7
	line	178
	
l54232:; BSR set to: 0

;display.c: 178: if(dat&0x04) DisBuf[5] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(2)&7
	goto	u14021
	goto	u14020
u14021:
	goto	l54236
u14020:
	
l54234:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+05h))&0ffh,(1)&7
	goto	l54238
	line	179
	
l54236:; BSR set to: 0

;display.c: 179: else DisBuf[5] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+05h))&0ffh,(1)&7
	line	181
	
l54238:; BSR set to: 0

;display.c: 181: if(dat&0x08) DisBuf[7] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(3)&7
	goto	u14031
	goto	u14030
u14031:
	goto	l54242
u14030:
	
l54240:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+07h))&0ffh,(1)&7
	goto	l54244
	line	182
	
l54242:; BSR set to: 0

;display.c: 182: else DisBuf[7] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+07h))&0ffh,(1)&7
	line	184
	
l54244:; BSR set to: 0

;display.c: 184: if(dat&0x10) DisBuf[9] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(4)&7
	goto	u14041
	goto	u14040
u14041:
	goto	l54248
u14040:
	
l54246:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+09h))&0ffh,(1)&7
	goto	l54250
	line	185
	
l54248:; BSR set to: 0

;display.c: 185: else DisBuf[9] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+09h))&0ffh,(1)&7
	line	187
	
l54250:; BSR set to: 0

;display.c: 187: if(dat&0x20) DisBuf[11] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(5)&7
	goto	u14051
	goto	u14050
u14051:
	goto	l54254
u14050:
	
l54252:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+0Bh))&0ffh,(1)&7
	goto	l54256
	line	188
	
l54254:; BSR set to: 0

;display.c: 188: else DisBuf[11] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+0Bh))&0ffh,(1)&7
	line	190
	
l54256:; BSR set to: 0

;display.c: 190: if(dat&0x40) DisBuf[13] |=(1<<1);
	
	btfss	((c:SEG7@dat))^00h,c,(6)&7
	goto	u14061
	goto	u14060
u14061:
	goto	l54260
u14060:
	
l54258:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+0Dh))&0ffh,(1)&7
	goto	l54262
	line	191
	
l54260:; BSR set to: 0

;display.c: 191: else DisBuf[13] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+0Dh))&0ffh,(1)&7
	line	193
	
l54262:; BSR set to: 0

;display.c: 193: if(dat&0x80) DisBuf[14] |=(1<<3);
	
	btfss	((c:SEG7@dat))^00h,c,(7)&7
	goto	u14071
	goto	u14070
u14071:
	goto	l54266
u14070:
	
l54264:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+0Eh))&0ffh,(3)&7
	goto	l13083
	line	194
	
l54266:; BSR set to: 0

;display.c: 194: else DisBuf[14] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+0Eh))&0ffh,(3)&7
	line	195
	
l13083:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG7
	__end_of_SEG7:
	signat	_SEG7,4217
	global	_SEG6

;; *************** function _SEG6 *****************
;; Defined at:
;;		line 140 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	line	140
global __ptext48
__ptext48:
psect	text48
	file	"display.c"
	line	140
	global	__size_of_SEG6
	__size_of_SEG6	equ	__end_of_SEG6-_SEG6
	
_SEG6:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG6@dat stored from wreg
	movwf	((c:SEG6@dat))^00h,c
	line	142
	
l54166:
;display.c: 142: if(dat&0x01) DisBuf[1] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(0)&7
	goto	u13911
	goto	u13910
u13911:
	goto	l54170
u13910:
	
l54168:
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_DisBuf+01h))&0ffh,(0)&7
	goto	l54172
	line	143
	
l54170:
;display.c: 143: else DisBuf[1] &=~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+0+(_DisBuf+01h))&0ffh,(0)&7
	line	145
	
l54172:; BSR set to: 0

;display.c: 145: if(dat&0x01) DisBuf[1] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(0)&7
	goto	u13921
	goto	u13920
u13921:
	goto	l54176
u13920:
	
l54174:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+01h))&0ffh,(0)&7
	goto	l54178
	line	146
	
l54176:; BSR set to: 0

;display.c: 146: else DisBuf[1] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+01h))&0ffh,(0)&7
	line	148
	
l54178:; BSR set to: 0

;display.c: 148: if(dat&0x02) DisBuf[3] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(1)&7
	goto	u13931
	goto	u13930
u13931:
	goto	l54182
u13930:
	
l54180:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+03h))&0ffh,(0)&7
	goto	l54184
	line	149
	
l54182:; BSR set to: 0

;display.c: 149: else DisBuf[3] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+03h))&0ffh,(0)&7
	line	151
	
l54184:; BSR set to: 0

;display.c: 151: if(dat&0x04) DisBuf[5] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(2)&7
	goto	u13941
	goto	u13940
u13941:
	goto	l54188
u13940:
	
l54186:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+05h))&0ffh,(0)&7
	goto	l54190
	line	152
	
l54188:; BSR set to: 0

;display.c: 152: else DisBuf[5] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+05h))&0ffh,(0)&7
	line	154
	
l54190:; BSR set to: 0

;display.c: 154: if(dat&0x08) DisBuf[7] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(3)&7
	goto	u13951
	goto	u13950
u13951:
	goto	l54194
u13950:
	
l54192:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+07h))&0ffh,(0)&7
	goto	l54196
	line	155
	
l54194:; BSR set to: 0

;display.c: 155: else DisBuf[7] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+07h))&0ffh,(0)&7
	line	157
	
l54196:; BSR set to: 0

;display.c: 157: if(dat&0x10) DisBuf[9] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(4)&7
	goto	u13961
	goto	u13960
u13961:
	goto	l54200
u13960:
	
l54198:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+09h))&0ffh,(0)&7
	goto	l54202
	line	158
	
l54200:; BSR set to: 0

;display.c: 158: else DisBuf[9] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+09h))&0ffh,(0)&7
	line	160
	
l54202:; BSR set to: 0

;display.c: 160: if(dat&0x20) DisBuf[11] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(5)&7
	goto	u13971
	goto	u13970
u13971:
	goto	l54206
u13970:
	
l54204:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+0Bh))&0ffh,(0)&7
	goto	l54208
	line	161
	
l54206:; BSR set to: 0

;display.c: 161: else DisBuf[11] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+0Bh))&0ffh,(0)&7
	line	163
	
l54208:; BSR set to: 0

;display.c: 163: if(dat&0x40) DisBuf[13] |=(1<<0);
	
	btfss	((c:SEG6@dat))^00h,c,(6)&7
	goto	u13981
	goto	u13980
u13981:
	goto	l54212
u13980:
	
l54210:; BSR set to: 0

	bsf	(0+(0/8)+0+(_DisBuf+0Dh))&0ffh,(0)&7
	goto	l13062
	line	164
	
l54212:; BSR set to: 0

;display.c: 164: else DisBuf[13] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+0Dh))&0ffh,(0)&7
	line	166
	
l13062:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG6
	__end_of_SEG6:
	signat	_SEG6,4217
	global	_Label_Percent

;; *************** function _Label_Percent *****************
;; Defined at:
;;		line 387 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=0
	line	387
global __ptext49
__ptext49:
psect	text49
	file	"display.c"
	line	387
	global	__size_of_Label_Percent
	__size_of_Label_Percent	equ	__end_of_Label_Percent-_Label_Percent
	
_Label_Percent:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_Percent@sta stored from wreg
	movwf	((c:Label_Percent@sta))^00h,c
	line	389
	
l54322:
;display.c: 389: if(sta)
	movf	((c:Label_Percent@sta))^00h,c,w
	btfsc	status,2
	goto	u14171
	goto	u14170
u14171:
	goto	l54326
u14170:
	line	391
	
l54324:
;display.c: 390: {;display.c: 391: DisBuf[14] |=(1<<2);
	movlb	0	; () banked
	bsf	(0+(2/8)+0+(_DisBuf+0Eh))&0ffh,(2)&7
	line	392
;display.c: 392: }
	goto	l13205
	line	395
	
l54326:
;display.c: 393: else;display.c: 394: {;display.c: 395: DisBuf[14] &=~(1<<2);
	movlb	0	; () banked
	bcf	(0+(2/8)+0+(_DisBuf+0Eh))&0ffh,(2)&7
	line	397
	
l13205:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Percent
	__end_of_Label_Percent:
	signat	_Label_Percent,4217
	global	_Label_Concentration

;; *************** function _Label_Concentration *****************
;; Defined at:
;;		line 357 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2,group=0
	line	357
global __ptext50
__ptext50:
psect	text50
	file	"display.c"
	line	357
	global	__size_of_Label_Concentration
	__size_of_Label_Concentration	equ	__end_of_Label_Concentration-_Label_Concentration
	
_Label_Concentration:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_Concentration@sta stored from wreg
	movwf	((c:Label_Concentration@sta))^00h,c
	line	359
	
l54310:
;display.c: 359: if(sta)
	movf	((c:Label_Concentration@sta))^00h,c,w
	btfsc	status,2
	goto	u14151
	goto	u14150
u14151:
	goto	l54314
u14150:
	line	361
	
l54312:
;display.c: 360: {;display.c: 361: DisBuf[14] |=(1<<4);
	movlb	0	; () banked
	bsf	(0+(4/8)+0+(_DisBuf+0Eh))&0ffh,(4)&7
	line	362
;display.c: 362: DisBuf[14] |=(1<<5);
	bsf	(0+(5/8)+0+(_DisBuf+0Eh))&0ffh,(5)&7
	line	363
;display.c: 363: }
	goto	l13195
	line	366
	
l54314:
;display.c: 364: else;display.c: 365: {;display.c: 366: DisBuf[14] &=~(1<<4);
	movlb	0	; () banked
	bcf	(0+(4/8)+0+(_DisBuf+0Eh))&0ffh,(4)&7
	line	367
;display.c: 367: DisBuf[14] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Eh))&0ffh,(5)&7
	line	369
	
l13195:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Concentration
	__end_of_Label_Concentration:
	signat	_Label_Concentration,4217
	global	_Display_Anion

;; *************** function _Display_Anion *****************
;; Defined at:
;;		line 342 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2,group=0
	line	342
global __ptext51
__ptext51:
psect	text51
	file	"display.c"
	line	342
	global	__size_of_Display_Anion
	__size_of_Display_Anion	equ	__end_of_Display_Anion-_Display_Anion
	
_Display_Anion:; BSR set to: 0

;incstack = 0
	opt	callstack 24
;Display_Anion@sta stored from wreg
	movwf	((c:Display_Anion@sta))^00h,c
	line	344
	
l54894:
;display.c: 344: if(sta)
	movf	((c:Display_Anion@sta))^00h,c,w
	btfsc	status,2
	goto	u14761
	goto	u14760
u14761:
	goto	l54898
u14760:
	line	346
	
l54896:
;display.c: 345: {;display.c: 346: DisBuf[0] |=(1<<0);
	movlb	0	; () banked
	bsf	(0+(0/8)+(_DisBuf))&0ffh,(0)&7
	line	347
;display.c: 347: DisBuf[4] |=(1<<0);
	bsf	(0+(0/8)+0+(_DisBuf+04h))&0ffh,(0)&7
	line	348
;display.c: 348: }
	goto	l13190
	line	351
	
l54898:
;display.c: 349: else;display.c: 350: {;display.c: 351: DisBuf[0] &=~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+(_DisBuf))&0ffh,(0)&7
	line	352
;display.c: 352: DisBuf[4] &=~(1<<0);
	bcf	(0+(0/8)+0+(_DisBuf+04h))&0ffh,(0)&7
	line	355
	
l13190:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_Anion
	__end_of_Display_Anion:
	signat	_Display_Anion,4217
	global	_Concentration_Low_Alarm

;; *************** function _Concentration_Low_Alarm *****************
;; Defined at:
;;		line 426 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_VoiceCtr2
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	426
global __ptext52
__ptext52:
psect	text52
	file	"voice.c"
	line	426
	global	__size_of_Concentration_Low_Alarm
	__size_of_Concentration_Low_Alarm	equ	__end_of_Concentration_Low_Alarm-_Concentration_Low_Alarm
	
_Concentration_Low_Alarm:; BSR set to: 0

;incstack = 0
	opt	callstack 20
	line	430
	
l55080:; BSR set to: 0

;voice.c: 428: static u16 count = 0;;voice.c: 429: static u16 last_syssta = 0;;voice.c: 430: if(RunData.SysSta == 0)
	movf	(0+(_RunData+02h))&0ffh,w
	btfss	status,2
	goto	u15041
	goto	u15040
u15041:
	goto	l55086
u15040:
	line	432
	
l55082:; BSR set to: 0

;voice.c: 431: {;voice.c: 432: count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((Concentration_Low_Alarm@count+1))&0ffh
	movlw	low(0)
	movwf	((Concentration_Low_Alarm@count))&0ffh
	goto	l31165
	line	435
	
l55086:; BSR set to: 0

;voice.c: 434: };voice.c: 435: if(last_syssta != RunData.SysSta2) count=0;
	movf	(0+(_RunData+03h))&0ffh,w
	movwf	(??_Concentration_Low_Alarm+0+0)^00h,c
	clrf	(??_Concentration_Low_Alarm+0+0+1)^00h,c

	movlb	1	; () banked
	movf	((Concentration_Low_Alarm@last_syssta))&0ffh,w
xorwf	(??_Concentration_Low_Alarm+0+0)^00h,c,w
	bnz	u15050
movf	((Concentration_Low_Alarm@last_syssta+1))&0ffh,w
xorwf	(??_Concentration_Low_Alarm+0+1)^00h,c,w
	btfsc	status,2
	goto	u15051
	goto	u15050

u15051:
	goto	l55090
u15050:
	
l55088:; BSR set to: 1

	movlw	high(0)
	movwf	((Concentration_Low_Alarm@count+1))&0ffh
	movlw	low(0)
	movwf	((Concentration_Low_Alarm@count))&0ffh
	line	436
	
l55090:; BSR set to: 1

;voice.c: 436: last_syssta = RunData.SysSta2;
	movff	0+(_RunData+03h),(Concentration_Low_Alarm@last_syssta)
	clrf	((Concentration_Low_Alarm@last_syssta+1))&0ffh
	line	437
	
l55092:; BSR set to: 1

;voice.c: 437: if(count==10)
		movlw	10
	xorwf	((Concentration_Low_Alarm@count))&0ffh,w
iorwf	((Concentration_Low_Alarm@count+1))&0ffh,w
	btfss	status,2
	goto	u15061
	goto	u15060

u15061:
	goto	l55096
u15060:
	line	440
	
l55094:; BSR set to: 1

;voice.c: 438: {;voice.c: 440: VoiceCtr2(low1_priority_alarm);
	movlw	high(037h)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(037h)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	line	444
	
l55096:
;voice.c: 443: };voice.c: 444: if(count>7000)
		movlw	89
	movlb	1	; () banked
	subwf	 ((Concentration_Low_Alarm@count))&0ffh,w
	movlw	27
	subwfb	((Concentration_Low_Alarm@count+1))&0ffh,w
	btfss	status,0
	goto	u15071
	goto	u15070

u15071:
	goto	l55100
u15070:
	line	445
	
l55098:; BSR set to: 1

;voice.c: 445: count=0;
	movlw	high(0)
	movwf	((Concentration_Low_Alarm@count+1))&0ffh
	movlw	low(0)
	movwf	((Concentration_Low_Alarm@count))&0ffh
	line	447
	
l55100:; BSR set to: 1

;voice.c: 447: count++;
	infsnz	((Concentration_Low_Alarm@count))&0ffh
	incf	((Concentration_Low_Alarm@count+1))&0ffh
	line	449
	
l31165:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Concentration_Low_Alarm
	__end_of_Concentration_Low_Alarm:
	signat	_Concentration_Low_Alarm,89
	global	_WDT_INITIAL

;; *************** function _WDT_INITIAL *****************
;; Defined at:
;;		line 212 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	212
global __ptext53
__ptext53:
psect	text53
	file	"main.c"
	line	212
	global	__size_of_WDT_INITIAL
	__size_of_WDT_INITIAL	equ	__end_of_WDT_INITIAL-_WDT_INITIAL
	
_WDT_INITIAL:; BSR set to: 1

;incstack = 0
	opt	callstack 26
	line	214
	
l56314:; BSR set to: 0

# 214 "main.c"
clrwdt ;# 
psect	text53
	line	215
;main.c: 215: CKCON1bits.LFMOD = 0;
	movlb	15	; () banked
	bcf	((3883))&0ffh,0	;volatile
	line	216
	
l56316:; BSR set to: 15

;main.c: 216: WDTCON2bits.WDTCKS = 0;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	((3853))&0ffh	;volatile
	line	217
;main.c: 217: WDTCON1bits.WDTPRE = 0x00;
	movlw	((0 & ((1<<3)-1))<<5)|not (((1<<3)-1)<<5)
	andwf	((3852))&0ffh	;volatile
	line	218
;main.c: 218: WDTCON1bits.WDTPS = 0x09;
	movf	((3852))&0ffh,w	;volatile
	andlw	not (((1<<4)-1)<<1)
	iorlw	(09h & ((1<<4)-1))<<1
	movwf	((3852))&0ffh	;volatile
	line	219
	
l56318:; BSR set to: 15

;main.c: 219: WDTCON1bits.SWDTEN = 1;
	bsf	((3852))&0ffh,0	;volatile
	line	220
	
l2693:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_WDT_INITIAL
	__end_of_WDT_INITIAL:
	signat	_WDT_INITIAL,89
	global	_Voice_Init

;; *************** function _Voice_Init *****************
;; Defined at:
;;		line 12 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/E
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text54,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	12
global __ptext54
__ptext54:
psect	text54
	file	"voice.c"
	line	12
	global	__size_of_Voice_Init
	__size_of_Voice_Init	equ	__end_of_Voice_Init-_Voice_Init
	
_Voice_Init:; BSR set to: 15

;incstack = 0
	opt	callstack 26
	line	14
	
l56414:; BSR set to: 0

;voice.c: 14: TRISC |= (1<<6);
	bsf	(0+(6/8)+(c:3988))^0f00h,c,(6)&7	;volatile
	line	15
	
l56416:; BSR set to: 0

;voice.c: 15: WPDCbits.WPDC6 = 1;
	movlb	14	; () banked
	bsf	((3586))&0ffh,6	;volatile
	line	17
;voice.c: 17: TRISD &= ~(1<<0);
	bcf	(0+(0/8)+(c:3989))^0f00h,c,(0)&7	;volatile
	line	18
;voice.c: 18: TRISC &= ~(1<<7);
	bcf	(0+(7/8)+(c:3988))^0f00h,c,(7)&7	;volatile
	line	20
	
l56418:; BSR set to: 14

;voice.c: 20: LATDbits.LATD0 = 0;
	bcf	((c:3980))^0f00h,c,0	;volatile
	line	21
	
l56420:; BSR set to: 14

;voice.c: 21: LATCbits.LATC7 = 1;
	bsf	((c:3979))^0f00h,c,7	;volatile
	line	23
	
l31008:; BSR set to: 14

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Voice_Init
	__end_of_Voice_Init:
	signat	_Voice_Init,89
	global	_TSC_INITIAL

;; *************** function _TSC_INITIAL *****************
;; Defined at:
;;		line 678 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/E
;;		On exit  : 3F/E
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          9       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LVD_INITIAL
;;		_ReadCap
;;		_TIM2_INITIAL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	678
global __ptext55
__ptext55:
psect	text55
	file	"touch.h"
	line	678
	global	__size_of_TSC_INITIAL
	__size_of_TSC_INITIAL	equ	__end_of_TSC_INITIAL-_TSC_INITIAL
	
_TSC_INITIAL:; BSR set to: 14

;incstack = 0
	opt	callstack 24
	line	684
	
l56322:; BSR set to: 14

;touch_test.c: 684: TKCKEN = 1;
	movlb	15	; () banked
	bsf	(31047/8)&0ffh,(31047)&7	;volatile
	line	695
	
l56324:; BSR set to: 15

;touch_test.c: 695: TIM2_INITIAL();
	call	_TIM2_INITIAL	;wreg free
	line	696
	
l56326:; BSR set to: 15

;touch_test.c: 696: T2AUSTP = 1;
	movlb	14	; () banked
	bsf	(29455/8)&0ffh,(29455)&7	;volatile
	line	697
;touch_test.c: 697: LVD_INITIAL();
	call	_LVD_INITIAL	;wreg free
	line	699
	
l56328:; BSR set to: 15

;touch_test.c: 699: TKCH0 = 0x00;
	movlw	low(0)
	movwf	((c:3958))^0f00h,c	;volatile
	line	700
	
l56330:; BSR set to: 15

;touch_test.c: 700: TKCH1 = 0x00;
	movlw	low(0)
	movwf	((c:3959))^0f00h,c	;volatile
	line	701
	
l56332:; BSR set to: 15

;touch_test.c: 701: TKCH2 = 0x00;
	movlw	low(0)
	movwf	((c:3960))^0f00h,c	;volatile
	line	702
	
l56334:; BSR set to: 15

;touch_test.c: 702: TKCH3 = 0x00;
	movlw	low(0)
	movwf	((c:3961))^0f00h,c	;volatile
	line	703
	
l56336:; BSR set to: 15

;touch_test.c: 703: TKCH4 = 0x00;
	movlw	low(0)
	movwf	((c:3962))^0f00h,c	;volatile
	line	704
	
l56338:; BSR set to: 15

;touch_test.c: 704: TKCH5 = 0x00;
	movlw	low(0)
	movwf	((c:3963))^0f00h,c	;volatile
	line	706
	
l56340:; BSR set to: 15

;touch_test.c: 706: TKCFG0 = 0x26;
	movlw	low(026h)
	movlb	14	; () banked
	movwf	((3680))&0ffh	;volatile
	line	714
	
l56342:; BSR set to: 14

;touch_test.c: 714: TKCFG3 = 0x10;
	movlw	low(010h)
	movwf	((3683))&0ffh	;volatile
	line	717
	
l56344:; BSR set to: 14

;touch_test.c: 717: uiDefaultSysclk = HIRCCALL;
	movff	(3877),(_uiDefaultSysclk)	;volatile
	movlb	1	; () banked
	clrf	((_uiDefaultSysclk+1))&0ffh	;volatile
	line	718
	
l56346:; BSR set to: 1

;touch_test.c: 718: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	719
	
l56348:
;touch_test.c: 719: uiDefaultSysclk |= ( ((unsigned int)HIRCCALH) <<8);
	movlb	15	; () banked
	movf	((3878))&0ffh,w	;volatile
	movwf	(??_TSC_INITIAL+0+0+1)^00h,c
	clrf	(??_TSC_INITIAL+0+0)^00h,c
	movf	(??_TSC_INITIAL+0+0)^00h,c,w
	movlb	1	; () banked
	iorwf	((_uiDefaultSysclk))&0ffh	;volatile
	movf	(??_TSC_INITIAL+0+1)^00h,c,w
	iorwf	((_uiDefaultSysclk+1))&0ffh	;volatile

	line	720
	
l56350:; BSR set to: 1

;touch_test.c: 720: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	723
	
l56352:
;touch_test.c: 723: for(ResultDataL = 0; ResultDataL < ucKEY_NUMBER_MAX; ResultDataL++)
	movlw	low(0)
	movwf	((c:_ResultDataL))^00h,c
	
l56354:
		movlw	04h-1
	cpfsgt	((c:_ResultDataL))^00h,c
	goto	u16881
	goto	u16880

u16881:
	goto	l56358
u16880:
	goto	l56368
	line	725
	
l56358:
;touch_test.c: 724: {;touch_test.c: 725: ucTempIndex = ucKeyIndexMapArray[ResultDataL];
	movf	((c:_ResultDataL))^00h,c,w
	addlw	low(_ucKeyIndexMapArray)
	movwf	(??_TSC_INITIAL+0+0)^00h,c
	movff	(??_TSC_INITIAL+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:_ucTempIndex)
	line	726
	
l56360:
;touch_test.c: 726: *((unsigned int*)(stTouchIoMapArray[ucTempIndex].tr)) &= ~stTouchIoMapArray[ucTempIndex].b;
	movf	((c:_ucTempIndex))^00h,c,w
	mullw	03h
	movff	prodl,??_TSC_INITIAL+0+0
	movlw	02h
	addwf	(??_TSC_INITIAL+0+0)^00h,c
	movf	(??_TSC_INITIAL+0+0)^00h,c,w
	addlw	low(_stTouchIoMapArray)
	movwf	(??_TSC_INITIAL+1+0)^00h,c
	movff	(??_TSC_INITIAL+1+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movwf	(??_TSC_INITIAL+2+0)^00h,c
	clrf	(??_TSC_INITIAL+2+0+1)^00h,c

	comf	(??_TSC_INITIAL+2+0)^00h,c,w

	movwf	(??_TSC_INITIAL+4+0)^00h,c
	comf	(??_TSC_INITIAL+2+1)^00h,c,w
	movwf	1+(??_TSC_INITIAL+4+0)^00h,c
	
	movf	((c:_ucTempIndex))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_stTouchIoMapArray)
	movwf	(??_TSC_INITIAL+6+0)^00h,c
	movff	(??_TSC_INITIAL+6+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*+
	
	movff	tablat,??_TSC_INITIAL+7+0
	tblrd	*+
	
	movff	tablat,??_TSC_INITIAL+7+0+1
	movff	??_TSC_INITIAL+7+0,fsr2l
	movff	??_TSC_INITIAL+7+1,fsr2h
	movf	(??_TSC_INITIAL+4+0)^00h,c,w
	andwf	postinc2
	movf	(??_TSC_INITIAL+4+1)^00h,c,w
	andwf	postdec2
	line	727
	
l56362:
;touch_test.c: 727: *((unsigned int*)(stTouchIoMapArray[ucTempIndex].tr - 0x12)) &= ~stTouchIoMapArray[ucTempIndex].b;
	movf	((c:_ucTempIndex))^00h,c,w
	mullw	03h
	movff	prodl,??_TSC_INITIAL+0+0
	movlw	02h
	addwf	(??_TSC_INITIAL+0+0)^00h,c
	movf	(??_TSC_INITIAL+0+0)^00h,c,w
	addlw	low(_stTouchIoMapArray)
	movwf	(??_TSC_INITIAL+1+0)^00h,c
	movff	(??_TSC_INITIAL+1+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movwf	(??_TSC_INITIAL+2+0)^00h,c
	clrf	(??_TSC_INITIAL+2+0+1)^00h,c

	comf	(??_TSC_INITIAL+2+0)^00h,c,w

	movwf	(??_TSC_INITIAL+4+0)^00h,c
	comf	(??_TSC_INITIAL+2+1)^00h,c,w
	movwf	1+(??_TSC_INITIAL+4+0)^00h,c
	
	movf	((c:_ucTempIndex))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_stTouchIoMapArray)
	movwf	(??_TSC_INITIAL+6+0)^00h,c
	movff	(??_TSC_INITIAL+6+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*+
	
	movff	tablat,??_TSC_INITIAL+7+0
	tblrd	*+
	
	movff	tablat,??_TSC_INITIAL+7+0+1
	movlw	low(0FFEEh)
	addwf	(??_TSC_INITIAL+7+0)^00h,c,w
	movwf	c:fsr2l
	movlw	high(0FFEEh)
	addwfc	(??_TSC_INITIAL+7+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	(??_TSC_INITIAL+4+0)^00h,c,w
	andwf	postinc2
	movf	(??_TSC_INITIAL+4+1)^00h,c,w
	andwf	postdec2
	line	723
	
l56364:
	incf	((c:_ResultDataL))^00h,c
	goto	l56354
	line	731
	
l56368:
;touch_test.c: 728: };touch_test.c: 731: for(ResultDataL = 0; ResultDataL < ucKEY_NUMBER_MAX; ResultDataL++)
	movlw	low(0)
	movwf	((c:_ResultDataL))^00h,c
	
l56370:
		movlw	04h-1
	cpfsgt	((c:_ResultDataL))^00h,c
	goto	u16891
	goto	u16890

u16891:
	goto	l56374
u16890:
	goto	l56380
	line	733
	
l56374:
;touch_test.c: 732: {;touch_test.c: 733: ucActiveSensorDeltaArray[ResultDataL] = 0xFF;
	movlw	low(_ucActiveSensorDeltaArray)
	addwf	((c:_ResultDataL))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ucActiveSensorDeltaArray)
	addwfc	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	734
;touch_test.c: 734: ucInActiveSensorDeltaArray[ResultDataL] = 0xFF;
	movlw	low(_ucInActiveSensorDeltaArray)
	addwf	((c:_ResultDataL))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_ucInActiveSensorDeltaArray)
	addwfc	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	735
;touch_test.c: 735: uiGroupArray[ResultDataL] = 0xFF;
	movlw	low(_uiGroupArray)
	addwf	((c:_ResultDataL))^00h,c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_uiGroupArray)
	addwfc	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	731
	
l56376:
	incf	((c:_ResultDataL))^00h,c
	goto	l56370
	line	738
	
l56380:
;touch_test.c: 736: };touch_test.c: 738: for(ResultDataL = 0; ResultDataL < ucKEY_NUMBER_MAX; ResultDataL++)
	movlw	low(0)
	movwf	((c:_ResultDataL))^00h,c
	
l56382:
		movlw	04h-1
	cpfsgt	((c:_ResultDataL))^00h,c
	goto	u16901
	goto	u16900

u16901:
	goto	l56386
u16900:
	goto	l56392
	line	740
	
l56386:
;touch_test.c: 739: {;touch_test.c: 740: unTKData[ResultDataL].uiTKData[0] = 128;
	movf	((c:_ResultDataL))^00h,c,w
	mullw	08h
	movlw	low(_unTKData)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(080h)
	movwf	postinc2,c
	movlw	high(080h)
	movwf	postdec2,c
	line	741
;touch_test.c: 741: unTKData[ResultDataL].uiTKData[1] = 0;
	movf	((c:_ResultDataL))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+02h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+02h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	742
;touch_test.c: 742: unTKData[ResultDataL].uiTKData[2] = 0;
	movf	((c:_ResultDataL))^00h,c,w
	mullw	08h
	movlw	low(_unTKData+04h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_unTKData+04h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	738
	
l56388:
	incf	((c:_ResultDataL))^00h,c
	goto	l56382
	line	748
	
l56392:
;touch_test.c: 746: };touch_test.c: 748: ucTKFlag.AllBits = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_ucTKFlag))&0ffh
	line	752
;touch_test.c: 752: ucSweepKeyNum = 0;
	movlw	low(0)
	movwf	((c:_ucSweepKeyNum))^00h,c
	line	753
;touch_test.c: 753: ucFreqChargeCount = 0;
	movlw	low(0)
	movwf	((_ucFreqChargeCount))&0ffh
	line	754
;touch_test.c: 754: ucKeyPollingCount = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_ucKeyPollingCount))&0ffh
	line	755
;touch_test.c: 755: ucFreqIndex = F_4M;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_ucFreqIndex))&0ffh
	line	756
;touch_test.c: 756: ucTKeyOutStrongest = 0;
	movlw	low(0)
	movwf	((_ucTKeyOutStrongest))&0ffh
	line	757
;touch_test.c: 757: ucKeyPollingOk = RESET;
	movlw	low(0)
	movwf	((_ucKeyPollingOk))&0ffh
	line	758
	
l56394:; BSR set to: 1

;touch_test.c: 758: bTestScanSetFlag = 1;
	bsf	(_bTestScanSetFlag/8)^00h,c,(_bTestScanSetFlag)&7	;volatile
	line	759
	
l56396:; BSR set to: 1

;touch_test.c: 759: bTestSleepFlag = 0;
	bcf	(_bTestSleepFlag/8)^00h,c,(_bTestSleepFlag)&7	;volatile
	line	761
	
l56398:; BSR set to: 1

;touch_test.c: 761: ReadCap();
	call	_ReadCap	;wreg free
	line	762
	
l41838:; BSR set to: 14

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TSC_INITIAL
	__end_of_TSC_INITIAL:
	signat	_TSC_INITIAL,89
	global	_TIM2_INITIAL

;; *************** function _TIM2_INITIAL *****************
;; Defined at:
;;		line 517 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_INITIAL
;; This function uses a non-reentrant model
;;
psect	text56,class=CODE,space=0,reloc=2,group=1
	line	517
global __ptext56
__ptext56:
psect	text56
	file	"touch.h"
	line	517
	global	__size_of_TIM2_INITIAL
	__size_of_TIM2_INITIAL	equ	__end_of_TIM2_INITIAL-_TIM2_INITIAL
	
_TIM2_INITIAL:; BSR set to: 14

;incstack = 0
	opt	callstack 25
	line	519
	
l56206:; BSR set to: 15

;touch_test.c: 519: T2CKEN = 1;
	bsf	(31042/8)&0ffh,(31042)&7	;volatile
	line	521
	
l56208:; BSR set to: 15

;touch_test.c: 521: T2CR = 0x10;
	movlw	low(010h)
	movwf	((c:3965))^0f00h,c	;volatile
	line	530
	
l56210:; BSR set to: 15

;touch_test.c: 530: T2PRL = 0xFF;
	setf	((c:3992))^0f00h,c	;volatile
	line	531
;touch_test.c: 531: T2PRH = 0x3;
	movlw	low(03h)
	movwf	((c:3993))^0f00h,c	;volatile
	line	532
	
l41803:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TIM2_INITIAL
	__end_of_TIM2_INITIAL:
	signat	_TIM2_INITIAL,89
	global	_ReadCap

;; *************** function _ReadCap *****************
;; Defined at:
;;		line 606 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/E
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SetTouchFreq
;; This function is called by:
;;		_TSC_INITIAL
;; This function uses a non-reentrant model
;;
psect	text57,class=CODE,space=0,reloc=2,group=1
	line	606
global __ptext57
__ptext57:
psect	text57
	file	"touch.h"
	line	606
	global	__size_of_ReadCap
	__size_of_ReadCap	equ	__end_of_ReadCap-_ReadCap
	
_ReadCap:; BSR set to: 15

;incstack = 0
	opt	callstack 24
	line	608
	
l56222:; BSR set to: 1

	line	610
;touch_test.c: 610: OverflowCnt = 0;
	movlw	low(0)
	movwf	((_OverflowCnt))&0ffh
	line	612
;touch_test.c: 612: LVDCON0 = 0x7F;
	movlw	low(07Fh)
	movlb	15	; () banked
	movwf	((3886))&0ffh	;volatile
	line	613
	
l56224:; BSR set to: 15

;touch_test.c: 613: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	614
	
l56226:
;touch_test.c: 614: ucKeyMapNumber = ucKeyIndexMapArray[ucSweepKeyNum];
	movf	((c:_ucSweepKeyNum))^00h,c,w
	addlw	low(_ucKeyIndexMapArray)
	movwf	(??_ReadCap+0+0)^00h,c
	movff	(??_ReadCap+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:_ucKeyMapNumber)
	line	618
	
l56228:
;touch_test.c: 618: if(ucKeyMapNumber<8)
		movlw	08h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16711
	goto	u16710

u16711:
	goto	l56232
u16710:
	line	620
	
l56230:
;touch_test.c: 619: {;touch_test.c: 620: TKCH0 = 0x01<<ucKeyMapNumber;
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16724
u16725:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16724:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16725
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3958))^0f00h,c	;volatile
	line	621
;touch_test.c: 621: }
	goto	l56262
	line	622
	
l56232:
;touch_test.c: 622: else if((ucKeyMapNumber>=8)&&(ucKeyMapNumber<16))
		movlw	08h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u16731
	goto	u16730

u16731:
	goto	l56238
u16730:
	
l56234:
		movlw	010h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16741
	goto	u16740

u16741:
	goto	l56238
u16740:
	line	624
	
l56236:
;touch_test.c: 623: {;touch_test.c: 624: TKCH1 = (0x01<<ucKeyMapNumber-8);
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	-8
	addwf	(??_ReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16754
u16755:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16754:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16755
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3959))^0f00h,c	;volatile
	line	625
;touch_test.c: 625: }
	goto	l56262
	line	626
	
l56238:
;touch_test.c: 626: else if((ucKeyMapNumber>=16)&&(ucKeyMapNumber<24))
		movlw	010h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u16761
	goto	u16760

u16761:
	goto	l56244
u16760:
	
l56240:
		movlw	018h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16771
	goto	u16770

u16771:
	goto	l56244
u16770:
	line	628
	
l56242:
;touch_test.c: 627: {;touch_test.c: 628: TKCH2 = (0x01<<ucKeyMapNumber-16);
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	-16
	addwf	(??_ReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16784
u16785:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16784:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16785
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3960))^0f00h,c	;volatile
	line	629
;touch_test.c: 629: }
	goto	l56262
	line	630
	
l56244:
;touch_test.c: 630: else if((ucKeyMapNumber>=24)&&(ucKeyMapNumber<32))
		movlw	018h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u16791
	goto	u16790

u16791:
	goto	l56250
u16790:
	
l56246:
		movlw	020h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16801
	goto	u16800

u16801:
	goto	l56250
u16800:
	line	632
	
l56248:
;touch_test.c: 631: {;touch_test.c: 632: TKCH3 = (0x01<<ucKeyMapNumber-24);
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	-24
	addwf	(??_ReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16814
u16815:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16814:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16815
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3961))^0f00h,c	;volatile
	line	633
;touch_test.c: 633: }
	goto	l56262
	line	634
	
l56250:
;touch_test.c: 634: else if((ucKeyMapNumber>=32)&&(ucKeyMapNumber<40))
		movlw	020h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u16821
	goto	u16820

u16821:
	goto	l56256
u16820:
	
l56252:
		movlw	028h-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16831
	goto	u16830

u16831:
	goto	l56256
u16830:
	line	636
	
l56254:
;touch_test.c: 635: {;touch_test.c: 636: TKCH4 = (0x01<<ucKeyMapNumber-32);
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	-32
	addwf	(??_ReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16844
u16845:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16844:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16845
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3962))^0f00h,c	;volatile
	line	637
;touch_test.c: 637: }
	goto	l56262
	line	638
	
l56256:
;touch_test.c: 638: else if((ucKeyMapNumber>=40)&&(ucKeyMapNumber<46))
		movlw	028h-1
	cpfsgt	((c:_ucKeyMapNumber))^00h,c
	goto	u16851
	goto	u16850

u16851:
	goto	l41827
u16850:
	
l56258:
		movlw	02Eh-0
	cpfslt	((c:_ucKeyMapNumber))^00h,c
	goto	u16861
	goto	u16860

u16861:
	goto	l41827
u16860:
	line	640
	
l56260:
;touch_test.c: 639: {;touch_test.c: 640: TKCH5 = (0x01<<ucKeyMapNumber-40);
	movff	(c:_ucKeyMapNumber),??_ReadCap+0+0
	movlw	-40
	addwf	(??_ReadCap+0+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_ReadCap+1+0)^00h,c
	incf	(??_ReadCap+0+0)^00h,c
	goto	u16874
u16875:
	bcf	status,0
	rlcf	((??_ReadCap+1+0))^00h,c
u16874:
	decfsz	(??_ReadCap+0+0)^00h,c
	goto	u16875
	movf	((??_ReadCap+1+0))^00h,c,w
	movwf	((c:3963))^0f00h,c	;volatile
	line	641
;touch_test.c: 641: }
	goto	l56262
	line	642
	
l41827:
	line	644
;touch_test.c: 642: else;touch_test.c: 643: {;touch_test.c: 644: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	647
	
l56262:
;touch_test.c: 645: };touch_test.c: 647: SetTouchFreq();
	call	_SetTouchFreq	;wreg free
	line	650
	
l56264:
;touch_test.c: 650: TKCAPEN = 0;
	bcf	c:(31712/8),(31712)&7	;volatile
	line	652
	
l56266:
;touch_test.c: 652: TKCON0 = 0x14;
	movlw	low(014h)
	movwf	((c:3964))^0f00h,c	;volatile
	line	661
	
l56268:
;touch_test.c: 661: T2CNTRL = 0;
	movlw	low(0)
	movwf	((c:3966))^0f00h,c	;volatile
	line	662
	
l56270:
;touch_test.c: 662: T2CNTRH = 0;
	movlw	low(0)
	movwf	((c:3967))^0f00h,c	;volatile
	line	664
	
l56272:
;touch_test.c: 664: TKCAPEN = 1;
	bsf	c:(31712/8),(31712)&7	;volatile
	line	666
	
l56274:
;touch_test.c: 666: LVDIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	667
	
l56276:
;touch_test.c: 667: T2CEN = 1;
	bsf	c:(31720/8),(31720)&7	;volatile
	line	668
	
l56278:
;touch_test.c: 668: TKAUXTE = 1;
	movlb	14	; () banked
	bsf	(29441/8)&0ffh,(29441)&7	;volatile
	line	669
	
l41829:; BSR set to: 14

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_ReadCap
	__end_of_ReadCap:
	signat	_ReadCap,89
	global	_SetTouchFreq

;; *************** function _SetTouchFreq *****************
;; Defined at:
;;		line 968 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tmp             2    9[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadCap
;; This function uses a non-reentrant model
;;
psect	text58,class=CODE,space=0,reloc=2,group=1
	line	968
global __ptext58
__ptext58:
psect	text58
	file	"touch.h"
	line	968
	global	__size_of_SetTouchFreq
	__size_of_SetTouchFreq	equ	__end_of_SetTouchFreq-_SetTouchFreq
	
_SetTouchFreq:; BSR set to: 14

;incstack = 0
	opt	callstack 24
	line	970
	
l55482:
	line	972
	
l55484:
;touch_test.c: 972: if(ucFreqIndex == F_3d8M)
	movlb	1	; () banked
		decf	((_ucFreqIndex))&0ffh,w
	btfss	status,2
	goto	u15511
	goto	u15510

u15511:
	goto	l41861
u15510:
	line	974
	
l55486:; BSR set to: 1

;touch_test.c: 973: {;touch_test.c: 974: tmp = uiDefaultSysclk - 6400 ;
	movlw	low(0E700h)
	addwf	((_uiDefaultSysclk))&0ffh,w	;volatile
	movwf	((c:SetTouchFreq@tmp))^00h,c
	movlw	high(0E700h)
	addwfc	((_uiDefaultSysclk+1))&0ffh,w	;volatile
	movwf	1+((c:SetTouchFreq@tmp))^00h,c
	line	975
;touch_test.c: 975: }
	goto	l41862
	line	976
	
l41861:; BSR set to: 1

	line	978
;touch_test.c: 976: else;touch_test.c: 977: {;touch_test.c: 978: tmp = uiDefaultSysclk;
	movff	(_uiDefaultSysclk),(c:SetTouchFreq@tmp)	;volatile
	movff	(_uiDefaultSysclk+1),(c:SetTouchFreq@tmp+1)	;volatile
	line	979
	
l41862:; BSR set to: 1

	line	980
;touch_test.c: 979: };touch_test.c: 980: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	981
;touch_test.c: 981: HIRCCALL = tmp;
	movff	(c:SetTouchFreq@tmp),(3877)	;volatile
	line	982
;touch_test.c: 982: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	983
;touch_test.c: 983: HIRCCALH = tmp>>8;
	movff	0+((c:SetTouchFreq@tmp)+01h),(3878)	;volatile
	line	984
;touch_test.c: 984: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	985
	
l41863:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SetTouchFreq
	__end_of_SetTouchFreq:
	signat	_SetTouchFreq,89
	global	_LVD_INITIAL

;; *************** function _LVD_INITIAL *****************
;; Defined at:
;;		line 539 in file "touch.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/E
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TSC_INITIAL
;; This function uses a non-reentrant model
;;
psect	text59,class=CODE,space=0,reloc=2,group=1
	line	539
global __ptext59
__ptext59:
psect	text59
	file	"touch.h"
	line	539
	global	__size_of_LVD_INITIAL
	__size_of_LVD_INITIAL	equ	__end_of_LVD_INITIAL-_LVD_INITIAL
	
_LVD_INITIAL:
;incstack = 0
	opt	callstack 25
	line	541
	
l56212:; BSR set to: 14

;touch_test.c: 541: ANACKEN = 1;
	movlb	15	; () banked
	bsf	(31056/8)&0ffh,(31056)&7	;volatile
	line	544
	
l56214:; BSR set to: 15

;touch_test.c: 544: LVDCON0 = 0x6F;
	movlw	low(06Fh)
	movwf	((3886))&0ffh	;volatile
	line	545
;touch_test.c: 545: LVDCON1 = 0x30;
	movlw	low(030h)
	movwf	((3887))&0ffh	;volatile
	line	549
	
l56216:; BSR set to: 15

;touch_test.c: 549: LVDIE = 0;
	bcf	c:(31980/8),(31980)&7	;volatile
	line	550
	
l56218:; BSR set to: 15

;touch_test.c: 550: LVDIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	551
	
l56220:; BSR set to: 15

;touch_test.c: 551: LVDEN = 1;
	bsf	(31092/8)&0ffh,(31092)&7	;volatile
	line	552
	
l41806:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_LVD_INITIAL
	__end_of_LVD_INITIAL:
	signat	_LVD_INITIAL,89
	global	_TM1629Init

;; *************** function _TM1629Init *****************
;; Defined at:
;;		line 65 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_DelayMs
;;		_TM1629_Luminance
;;		_Update_Display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text60,class=CODE,space=0,reloc=2,group=0
	file	"tm1629b.c"
	line	65
global __ptext60
__ptext60:
psect	text60
	file	"tm1629b.c"
	line	65
	global	__size_of_TM1629Init
	__size_of_TM1629Init	equ	__end_of_TM1629Init-_TM1629Init
	
_TM1629Init:; BSR set to: 15

;incstack = 0
	opt	callstack 21
	line	67
	
l56500:; BSR set to: 15

	line	68
	
l56502:; BSR set to: 15

;tm1629b.c: 68: TRISA &= ~(1<<0);
	bcf	(0+(0/8)+(c:3986))^0f00h,c,(0)&7	;volatile
	line	69
	
l56504:; BSR set to: 15

;tm1629b.c: 69: TRISA &= ~(1<<1);
	bcf	(0+(1/8)+(c:3986))^0f00h,c,(1)&7	;volatile
	line	70
	
l56506:; BSR set to: 15

;tm1629b.c: 70: TRISA &= ~(1<<2);
	bcf	(0+(2/8)+(c:3986))^0f00h,c,(2)&7	;volatile
	line	75
	
l56508:; BSR set to: 15

;tm1629b.c: 75: TM1629_Luminance(8);
	movlw	(08h)&0ffh
	
	call	_TM1629_Luminance
	line	76
	
l56510:
;tm1629b.c: 76: for(i=0; i<16; i++) {
	movlw	low(0)
	movwf	((c:TM1629Init@i))^00h,c
	line	77
	
l56516:
;tm1629b.c: 77: DisBuf[i] = 0xFF;
	movf	((c:TM1629Init@i))^00h,c,w
	addlw	low(_DisBuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0FFh)
	movwf	indf2
	line	76
	
l56518:
	incf	((c:TM1629Init@i))^00h,c
	
l56520:
		movlw	010h-1
	cpfsgt	((c:TM1629Init@i))^00h,c
	goto	u16911
	goto	u16910

u16911:
	goto	l56516
u16910:
	line	79
	
l56522:
;tm1629b.c: 78: };tm1629b.c: 79: Update_Display();
	call	_Update_Display	;wreg free
	line	81
	
l56524:
;tm1629b.c: 81: for(i=0; i<15; i++) {DelayMs(100);asm("clrwdt"); }
	movlw	low(0)
	movwf	((c:TM1629Init@i))^00h,c
	
l56530:
	movlw	high(064h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(064h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
# 81 "tm1629b.c"
clrwdt ;# 
psect	text60
	
l56532:
	incf	((c:TM1629Init@i))^00h,c
	
l56534:
		movlw	0Fh-1
	cpfsgt	((c:TM1629Init@i))^00h,c
	goto	u16921
	goto	u16920

u16921:
	goto	l56530
u16920:
	line	83
	
l10415:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TM1629Init
	__end_of_TM1629Init:
	signat	_TM1629Init,89
	global	_TM1629_Luminance

;; *************** function _TM1629_Luminance *****************
;; Defined at:
;;		line 244 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Nop1629
;;		_TM1629_WriteCommand
;; This function is called by:
;;		_TM1629Init
;;		_ErrorCtr
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text61,class=CODE,space=0,reloc=2,group=0
	line	244
global __ptext61
__ptext61:
psect	text61
	file	"tm1629b.c"
	line	244
	global	__size_of_TM1629_Luminance
	__size_of_TM1629_Luminance	equ	__end_of_TM1629_Luminance-_TM1629_Luminance
	
_TM1629_Luminance:
;incstack = 0
	opt	callstack 21
;TM1629_Luminance@dat stored from wreg
	movwf	((c:TM1629_Luminance@dat))^00h,c
	line	247
	
l54868:
;tm1629b.c: 247: LATAbits.LATA2 = 1 ;
	bsf	((c:3977))^0f00h,c,2	;volatile
	line	248
	
l54870:
;tm1629b.c: 248: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	249
;tm1629b.c: 249: switch(dat)
	goto	l54892
	line	251
	
l54872:
	movlw	(0)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	252
	
l54874:
	movlw	(088h)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	253
	
l54876:
	movlw	(089h)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	254
	
l54878:
	movlw	(08Ah)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	255
	
l54880:
	movlw	(08Bh)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	256
	
l54882:
	movlw	(08Ch)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	257
	
l54884:
	movlw	(08Dh)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	258
	
l54886:
	movlw	(08Eh)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	259
	
l54888:
	movlw	(08Fh)&0ffh
	
	call	_TM1629_WriteCommand
	goto	l10444
	line	249
	
l54892:
	movf	((c:TM1629_Luminance@dat))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 9, Range of values is 0 to 8
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l54872
	xorlw	1^0	; case 1
	skipnz
	goto	l54874
	xorlw	2^1	; case 2
	skipnz
	goto	l54876
	xorlw	3^2	; case 3
	skipnz
	goto	l54878
	xorlw	4^3	; case 4
	skipnz
	goto	l54880
	xorlw	5^4	; case 5
	skipnz
	goto	l54882
	xorlw	6^5	; case 6
	skipnz
	goto	l54884
	xorlw	7^6	; case 7
	skipnz
	goto	l54886
	xorlw	8^7	; case 8
	skipnz
	goto	l54888
	goto	l10444

	line	260
	
l10444:
	line	262
;tm1629b.c: 262: LATAbits.LATA2 = 1 ;
	bsf	((c:3977))^0f00h,c,2	;volatile
	line	264
	
l10453:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TM1629_Luminance
	__end_of_TM1629_Luminance:
	signat	_TM1629_Luminance,4217
	global	_TIM0_INITIAL

;; *************** function _TIM0_INITIAL *****************
;; Defined at:
;;		line 190 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text62,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	190
global __ptext62
__ptext62:
psect	text62
	file	"main.c"
	line	190
	global	__size_of_TIM0_INITIAL
	__size_of_TIM0_INITIAL	equ	__end_of_TIM0_INITIAL-_TIM0_INITIAL
	
_TIM0_INITIAL:
;incstack = 0
	opt	callstack 26
	line	192
	
l56296:
;main.c: 192: PCKEN1bits.T0CKEN = 1;
	movlb	15	; () banked
	bsf	((3880))&0ffh,0	;volatile
	line	193
	
l56298:; BSR set to: 15

;main.c: 193: T0CRbits.T0CKS = 0B00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:3974))^0f00h,c	;volatile
	line	194
;main.c: 194: T0CRbits.T0PSC = 0B111;
	movlw	(07h & ((1<<3)-1))<<1
	iorwf	((c:3974))^0f00h,c	;volatile
	line	196
;main.c: 196: T0CNTR = 0;
	movlw	low(0)
	movwf	((c:3975))^0f00h,c	;volatile
	line	197
;main.c: 197: T0PR = 124;
	movlw	low(07Ch)
	movwf	((c:3976))^0f00h,c	;volatile
	line	198
	
l56300:; BSR set to: 15

;main.c: 198: CKCON2bits.T0IOMOD = 0;
	bcf	((3884))&0ffh,6	;volatile
	line	199
	
l56302:; BSR set to: 15

;main.c: 199: INTCON1bits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	200
	
l56304:; BSR set to: 15

;main.c: 200: INTCON1bits.TMR0IE = 1;
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	201
	
l56306:; BSR set to: 15

;main.c: 201: IPEN = 0;
	bcf	c:(31975/8),(31975)&7	;volatile
	line	202
	
l56308:; BSR set to: 15

;main.c: 202: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	203
	
l56310:; BSR set to: 15

;main.c: 203: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	204
	
l56312:; BSR set to: 15

;main.c: 204: T0CRbits.T0CEN = 1;
	bsf	((c:3974))^0f00h,c,0	;volatile
	line	205
	
l2690:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TIM0_INITIAL
	__end_of_TIM0_INITIAL:
	signat	_TIM0_INITIAL,89
	global	_StartUpVoice

;; *************** function _StartUpVoice *****************
;; Defined at:
;;		line 392 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3E/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DelayMs
;;		_VoiceCtr2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text63,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	392
global __ptext63
__ptext63:
psect	text63
	file	"voice.c"
	line	392
	global	__size_of_StartUpVoice
	__size_of_StartUpVoice	equ	__end_of_StartUpVoice-_StartUpVoice
	
_StartUpVoice:; BSR set to: 15

;incstack = 0
	opt	callstack 22
	line	396
	
l56566:
;voice.c: 394: static u8 i = 1;;voice.c: 395: static u8 j = 0;;voice.c: 396: if (sUsart2.LinkSta == 0)
	movlb	1	; () banked
	movf	(0+(_sUsart2+033h))&0ffh,w
	btfss	status,2
	goto	u16971
	goto	u16970
u16971:
	goto	l56598
u16970:
	goto	l31147
	line	401
	
l56570:; BSR set to: 1

;voice.c: 401: if (VoiceCtr2(welcome) == 1)
	movlw	high(02h)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(02h)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	decf	wreg
	btfss	status,2
	goto	u16981
	goto	u16980
u16981:
	goto	l56574
u16980:
	line	402
	
l56572:
;voice.c: 402: i = 1;
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((StartUpVoice@i))&0ffh
	line	403
	
l56574:
;voice.c: 403: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	404
;voice.c: 404: break;
	goto	l31147
	line	405
;voice.c: 405: case 1:
	
l31152:; BSR set to: 1

	line	406
;voice.c: 406: if (PC6 == 0)
	btfsc	c:(31766/8),(31766)&7	;volatile
	goto	u16991
	goto	u16990
u16991:
	goto	l56578
u16990:
	goto	l31147
	line	408
	
l56578:; BSR set to: 1

;voice.c: 408: if ((RunData.StandbySta == 0) && (j == 0))
	movlb	0	; () banked
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u17001
	goto	u17000
u17001:
	goto	l56588
u17000:
	
l56580:; BSR set to: 0

	movlb	1	; () banked
	movf	((StartUpVoice@j))&0ffh,w
	btfss	status,2
	goto	u17011
	goto	u17010
u17011:
	goto	l56588
u17010:
	line	410
	
l56582:; BSR set to: 1

;voice.c: 409: {;voice.c: 410: j = 1;
	movlw	low(01h)
	movwf	((StartUpVoice@j))&0ffh
	line	411
	
l56584:; BSR set to: 1

;voice.c: 411: VoiceCtr2(intelligent_oxygen_therapy_start);
	movlw	high(03h)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(03h)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	line	412
	
l56586:
;voice.c: 412: DelayMs(1);
	movlw	high(01h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(01h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	414
	
l56588:
;voice.c: 413: };voice.c: 414: if ((RunData.StandbySta == 1) && (j == 1))
	movlb	0	; () banked
		decf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	u17021
	goto	u17020

u17021:
	goto	l31147
u17020:
	
l56590:; BSR set to: 0

	movlb	1	; () banked
		decf	((StartUpVoice@j))&0ffh,w
	btfss	status,2
	goto	u17031
	goto	u17030

u17031:
	goto	l31147
u17030:
	line	416
	
l56592:; BSR set to: 1

;voice.c: 415: {;voice.c: 416: j = 0;
	movlw	low(0)
	movwf	((StartUpVoice@j))&0ffh
	line	417
;voice.c: 417: if (RunData.TimingVoiceFlag == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+015h))&0ffh,w
	btfss	status,2
	goto	u17041
	goto	u17040
u17041:
	goto	l56596
u17040:
	line	418
	
l56594:; BSR set to: 0

;voice.c: 418: VoiceCtr2(intelligent_oxygen_therapy_end);
	movlw	high(04h)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(04h)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	goto	l56574
	line	420
	
l56596:; BSR set to: 0

;voice.c: 419: else;voice.c: 420: VoiceCtr2(oxygen_therapy_time_up);
	movlw	high(01Bh)
	movwf	((c:VoiceCtr2@dat+1))^00h,c
	movlw	low(01Bh)
	movwf	((c:VoiceCtr2@dat))^00h,c
	call	_VoiceCtr2	;wreg free
	goto	l56574
	line	398
	
l56598:; BSR set to: 1

	movf	((StartUpVoice@i))&0ffh,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l56570
	xorlw	1^0	; case 1
	skipnz
	goto	l31152
	goto	l31147

	line	424
	
l31147:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_StartUpVoice
	__end_of_StartUpVoice:
	signat	_StartUpVoice,89
	global	_VoiceCtr2

;; *************** function _VoiceCtr2 *****************
;; Defined at:
;;		line 79 in file "voice.c"
;; Parameters:    Size  Location     Type
;;  dat             2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ret             1   19[COMRAM] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_PlaySound
;; This function is called by:
;;		_Alarm_Sound
;;		_StartUpVoice
;;		_Concentration_Low_Alarm
;; This function uses a non-reentrant model
;;
psect	text64,class=CODE,space=0,reloc=2,group=0
	line	79
global __ptext64
__ptext64:
psect	text64
	file	"voice.c"
	line	79
	global	__size_of_VoiceCtr2
	__size_of_VoiceCtr2	equ	__end_of_VoiceCtr2-_VoiceCtr2
	
_VoiceCtr2:
;incstack = 0
	opt	callstack 20
	line	81
	
l54596:
	line	82
;voice.c: 82: u8 ret = 0;
	movlw	low(0)
	movwf	((c:VoiceCtr2@ret))^00h,c
	line	83
;voice.c: 83: ret = PC6;
	movlw	0
	btfsc	c:(31766/8),(31766)&7	;volatile
	movlw	1
	movwf	((c:VoiceCtr2@ret))^00h,c
	line	84
;voice.c: 84: if(RunData.VoiceEnable==0) return ret;
	movlb	0	; () banked
	movf	(0+(_RunData+02Ch))&0ffh,w
	btfss	status,2
	goto	u14271
	goto	u14270
u14271:
	goto	l54602
u14270:
	
l54598:
	movf	((c:VoiceCtr2@ret))^00h,c,w
	goto	l31030
	line	85
	
l54602:; BSR set to: 0

;voice.c: 85: if(ret==0) return ret;
	movf	((c:VoiceCtr2@ret))^00h,c,w
	btfss	status,2
	goto	u14281
	goto	u14280
u14281:
	goto	l54608
u14280:
	goto	l54598
	line	86
	
l54608:; BSR set to: 0

;voice.c: 86: if(dat==0) return ret;
	movf	((c:VoiceCtr2@dat))^00h,c,w
iorwf	((c:VoiceCtr2@dat+1))^00h,c,w
	btfss	status,2
	goto	u14291
	goto	u14290

u14291:
	goto	l54614
u14290:
	goto	l54598
	line	87
	
l54614:; BSR set to: 0

;voice.c: 87: PlaySound(dat);
	movf	((c:VoiceCtr2@dat))^00h,c,w
	
	call	_PlaySound
	goto	l54598
	line	89
	
l31030:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_VoiceCtr2
	__end_of_VoiceCtr2:
	signat	_VoiceCtr2,4217
	global	_SleepProcess

;; *************** function _SleepProcess *****************
;; Defined at:
;;		line 435 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text65,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	435
global __ptext65
__ptext65:
psect	text65
	file	"main.c"
	line	435
	global	__size_of_SleepProcess
	__size_of_SleepProcess	equ	__end_of_SleepProcess-_SleepProcess
	
_SleepProcess:
;incstack = 0
	opt	callstack 26
	line	466
	
l2751:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SleepProcess
	__end_of_SleepProcess:
	signat	_SleepProcess,89
	global	_POWER_INITIAL

;; *************** function _POWER_INITIAL *****************
;; Defined at:
;;		line 145 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 3F/E
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text66,class=CODE,space=0,reloc=2,group=0
	line	145
global __ptext66
__ptext66:
psect	text66
	file	"main.c"
	line	145
	global	__size_of_POWER_INITIAL
	__size_of_POWER_INITIAL	equ	__end_of_POWER_INITIAL-_POWER_INITIAL
	
_POWER_INITIAL:
;incstack = 0
	opt	callstack 26
	line	148
	
l56280:; BSR set to: 15

;main.c: 148: OSCCON = 0B01110001;
	movlw	low(071h)
	movwf	((3879))&0ffh	;volatile
	line	152
;main.c: 152: INTCON1 = 0;
	movlw	low(0)
	movwf	((c:4082))^0f00h,c	;volatile
	line	154
	
l56282:; BSR set to: 15

;main.c: 154: MDCKEN = 1;
	bsf	(31059/8)&0ffh,(31059)&7	;volatile
	line	156
	
l56284:; BSR set to: 15

;main.c: 156: IOCKEN = 1;
	bsf	(31048/8)&0ffh,(31048)&7	;volatile
	line	158
;main.c: 158: PORTA = 0B00000000;
	movlw	low(0)
	movwf	((c:3968))^0f00h,c	;volatile
	line	159
;main.c: 159: PORTB = 0B00000000;
	movlw	low(0)
	movwf	((c:3969))^0f00h,c	;volatile
	line	160
;main.c: 160: PORTC = 0B00000000;
	movlw	low(0)
	movwf	((c:3970))^0f00h,c	;volatile
	line	161
;main.c: 161: PORTD = 0B00000000;
	movlw	low(0)
	movwf	((c:3971))^0f00h,c	;volatile
	line	162
;main.c: 162: PORTE = 0B00000000;
	movlw	low(0)
	movwf	((c:3972))^0f00h,c	;volatile
	line	163
;main.c: 163: PORTF = 0B00000000;
	movlw	low(0)
	movwf	((c:3973))^0f00h,c	;volatile
	line	165
	
l56286:; BSR set to: 15

;main.c: 165: TRISA = 0B11111111;
	setf	((c:3986))^0f00h,c	;volatile
	line	166
;main.c: 166: TRISB = 0B11111110;
	movlw	low(0FEh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	167
	
l56288:; BSR set to: 15

;main.c: 167: TRISC = 0B11111111;
	setf	((c:3988))^0f00h,c	;volatile
	line	168
	
l56290:; BSR set to: 15

;main.c: 168: TRISD = 0B11111111;
	setf	((c:3989))^0f00h,c	;volatile
	line	169
	
l56292:; BSR set to: 15

;main.c: 169: TRISE = 0B11111111;
	setf	((c:3990))^0f00h,c	;volatile
	line	170
	
l56294:; BSR set to: 15

;main.c: 170: TRISF = 0B11111111;
	setf	((c:3991))^0f00h,c	;volatile
	line	172
;main.c: 172: ANSEL0 = 0B00010000;
	movlw	low(010h)
	movwf	((3904))&0ffh	;volatile
	line	174
;main.c: 174: WPUA = 0B00000000;
	movlw	low(0)
	movlb	14	; () banked
	movwf	((3592))&0ffh	;volatile
	line	175
;main.c: 175: WPUB = 0B00000000;
	movlw	low(0)
	movwf	((3593))&0ffh	;volatile
	line	176
;main.c: 176: WPUC = 0B00000000;
	movlw	low(0)
	movwf	((3594))&0ffh	;volatile
	line	177
;main.c: 177: WPUD = 0B00000000;
	movlw	low(0)
	movwf	((3595))&0ffh	;volatile
	line	178
;main.c: 178: WPDA = 0B00000000;
	movlw	low(0)
	movwf	((3584))&0ffh	;volatile
	line	179
;main.c: 179: WPDB = 0B00000000;
	movlw	low(0)
	movwf	((3585))&0ffh	;volatile
	line	180
;main.c: 180: WPDC = 0B00000000;
	movlw	low(0)
	movwf	((3586))&0ffh	;volatile
	line	181
;main.c: 181: WPDD = 0B00000000;
	movlw	low(0)
	movwf	((3587))&0ffh	;volatile
	line	182
	
l2687:; BSR set to: 14

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_POWER_INITIAL
	__end_of_POWER_INITIAL:
	signat	_POWER_INITIAL,89
	global	_IR_Key_Init

;; *************** function _IR_Key_Init *****************
;; Defined at:
;;		line 11 in file "irkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/E
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67,class=CODE,space=0,reloc=2,group=0
	file	"irkey.c"
	line	11
global __ptext67
__ptext67:
psect	text67
	file	"irkey.c"
	line	11
	global	__size_of_IR_Key_Init
	__size_of_IR_Key_Init	equ	__end_of_IR_Key_Init-_IR_Key_Init
	
_IR_Key_Init:; BSR set to: 14

;incstack = 0
	opt	callstack 26
	line	14
	
l56422:
;irkey.c: 14: TRISDbits.TRISD4 = 1;
	bsf	((c:3989))^0f00h,c,4	;volatile
	line	15
	
l56424:
;irkey.c: 15: AFP14bits.T3CAP = 0B10;
	movlb	15	; () banked
	movf	((3926))&0ffh,w	;volatile
	andlw	not (((1<<2)-1)<<5)
	iorlw	(02h & ((1<<2)-1))<<5
	movwf	((3926))&0ffh	;volatile
	line	17
	
l56426:; BSR set to: 15

;irkey.c: 17: PCKEN1bits.T3CKEN = 1;
	bsf	((3880))&0ffh,3	;volatile
	line	19
;irkey.c: 19: T3CR1bits.T3CKS = 0B001;
	movf	((c:4011))^0f00h,c,w	;volatile
	andlw	not (((1<<2)-1)<<4)
	iorlw	(01h & ((1<<2)-1))<<4
	movwf	((c:4011))^0f00h,c	;volatile
	line	20
;irkey.c: 20: T3CR1bits.T3PSC = 0B100;
	movf	((c:4011))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<1)
	iorlw	(04h & ((1<<3)-1))<<1
	movwf	((c:4011))^0f00h,c	;volatile
	line	22
;irkey.c: 22: T3CNTRL = 0;
	movlw	low(0)
	movwf	((c:4014))^0f00h,c	;volatile
	line	23
;irkey.c: 23: T3CNTRH = 0;
	movlw	low(0)
	movwf	((c:4015))^0f00h,c	;volatile
	line	25
;irkey.c: 25: T3CCPRL = 0;
	movlw	low(0)
	movwf	((c:4016))^0f00h,c	;volatile
	line	26
;irkey.c: 26: T3CCPRH = 0;
	movlw	low(0)
	movwf	((c:4017))^0f00h,c	;volatile
	line	28
;irkey.c: 28: T3CR2bits.T3CAPMOD = 0B10;
	movf	((c:4012))^0f00h,c,w	;volatile
	andlw	not (((1<<2)-1)<<6)
	iorlw	(02h & ((1<<2)-1))<<6
	movwf	((c:4012))^0f00h,c	;volatile
	line	29
;irkey.c: 29: T3CR2bits.T3CAPPSC = 0B00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4012))^0f00h,c	;volatile
	line	30
	
l56428:; BSR set to: 15

;irkey.c: 30: T3CR2bits.T3CAPE = 1;
	bsf	((c:4012))^0f00h,c,3	;volatile
	line	31
	
l56430:; BSR set to: 15

;irkey.c: 31: T3CR3bits.T3CCM = 1;
	bsf	((c:4013))^0f00h,c,0	;volatile
	line	33
	
l56432:; BSR set to: 15

;irkey.c: 33: T3CR2bits.T3COME = 0;
	bcf	((c:4012))^0f00h,c,0	;volatile
	line	35
	
l56434:; BSR set to: 15

;irkey.c: 35: T3CR1bits.T3CCIE = 1;
	bsf	((c:4011))^0f00h,c,7	;volatile
	line	36
	
l56436:; BSR set to: 15

;irkey.c: 36: T3CR3bits.T3CCIF = 0;
	bcf	((c:4013))^0f00h,c,7	;volatile
	line	37
	
l56438:; BSR set to: 15

;irkey.c: 37: T3CR1bits.T3IE = 1;
	bsf	((c:4011))^0f00h,c,6	;volatile
	line	38
	
l56440:; BSR set to: 15

;irkey.c: 38: T3CR3bits.T3IF = 0;
	bcf	((c:4013))^0f00h,c,6	;volatile
	line	40
	
l56442:; BSR set to: 15

;irkey.c: 40: IPEN = 0;
	bcf	c:(31975/8),(31975)&7	;volatile
	line	41
	
l56444:; BSR set to: 15

;irkey.c: 41: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	42
	
l56446:; BSR set to: 15

;irkey.c: 42: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	44
	
l56448:; BSR set to: 15

;irkey.c: 44: T3CR1bits.T3CEN = 1;
	bsf	((c:4011))^0f00h,c,0	;volatile
	line	45
	
l33691:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_IR_Key_Init
	__end_of_IR_Key_Init:
	signat	_IR_Key_Init,89
	global	_GPIO_Init

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 4 in file "GPIO_Init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 3F/E
;;		On exit  : 3F/E
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text68,class=CODE,space=0,reloc=2,group=0
	file	"GPIO_Init.c"
	line	4
global __ptext68
__ptext68:
psect	text68
	file	"GPIO_Init.c"
	line	4
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:; BSR set to: 15

;incstack = 0
	opt	callstack 26
	line	7
	
l56400:; BSR set to: 14

;GPIO_Init.c: 7: TRISD &= ~(1<<1);
	bcf	(0+(1/8)+(c:3989))^0f00h,c,(1)&7	;volatile
	line	8
	
l56402:; BSR set to: 14

;GPIO_Init.c: 8: LATDbits.LATD1 = 1;
	bsf	((c:3980))^0f00h,c,1	;volatile
	line	10
;GPIO_Init.c: 10: TRISD &= ~(1<<7);
	bcf	(0+(7/8)+(c:3989))^0f00h,c,(7)&7	;volatile
	line	11
	
l56404:; BSR set to: 14

;GPIO_Init.c: 11: LATDbits.LATD7 = 1;
	bsf	((c:3980))^0f00h,c,7	;volatile
	line	13
;GPIO_Init.c: 13: TRISF &= ~(1<<3);
	bcf	(0+(3/8)+(c:3991))^0f00h,c,(3)&7	;volatile
	line	14
;GPIO_Init.c: 14: TRISF &= ~(1<<2);
	bcf	(0+(2/8)+(c:3991))^0f00h,c,(2)&7	;volatile
	line	15
;GPIO_Init.c: 15: TRISC &= ~(1<<0);
	bcf	(0+(0/8)+(c:3988))^0f00h,c,(0)&7	;volatile
	line	16
;GPIO_Init.c: 16: TRISC &= ~(1<<1);
	bcf	(0+(1/8)+(c:3988))^0f00h,c,(1)&7	;volatile
	line	17
	
l56406:; BSR set to: 14

;GPIO_Init.c: 17: LATCbits.LATC0 = 0;
	bcf	((c:3979))^0f00h,c,0	;volatile
	line	18
	
l56408:; BSR set to: 14

;GPIO_Init.c: 18: LATCbits.LATC1 = 0;
	bcf	((c:3979))^0f00h,c,1	;volatile
	line	19
	
l56410:; BSR set to: 14

;GPIO_Init.c: 19: LATFbits.LATF2 = 0;
	bcf	((c:3982))^0f00h,c,2	;volatile
	line	20
	
l56412:; BSR set to: 14

;GPIO_Init.c: 20: LATFbits.LATF3 = 0;
	bcf	((c:3982))^0f00h,c,3	;volatile
	line	21
	
l20883:; BSR set to: 14

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
	signat	_GPIO_Init,89
	global	_Engineering_Mode_Api

;; *************** function _Engineering_Mode_Api *****************
;; Defined at:
;;		line 240 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_Goto_Engineering_Mode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text69,class=CODE,space=0,reloc=2,group=0
	file	"setsysdata.c"
	line	240
global __ptext69
__ptext69:
psect	text69
	file	"setsysdata.c"
	line	240
	global	__size_of_Engineering_Mode_Api
	__size_of_Engineering_Mode_Api	equ	__end_of_Engineering_Mode_Api-_Engineering_Mode_Api
	
_Engineering_Mode_Api:; BSR set to: 14

;incstack = 0
	opt	callstack 19
	line	242
	
l56536:
;setsysdata.c: 242: Goto_Engineering_Mode();
	call	_Goto_Engineering_Mode	;wreg free
	line	243
	
l39017:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Mode_Api
	__end_of_Engineering_Mode_Api:
	signat	_Engineering_Mode_Api,89
	global	_Goto_Engineering_Mode

;; *************** function _Goto_Engineering_Mode *****************
;; Defined at:
;;		line 245 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_BeepCtr1
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Flow_Compensation
;;		_Engineering_Voltage_Calibration
;;		_Get_Engineering_KeyValue
;;		_Label_CloseAlarm
;;		_PlaySound
;;		_TouchKeyValue
;; This function is called by:
;;		_Engineering_Mode_Api
;; This function uses a non-reentrant model
;;
psect	text70,class=CODE,space=0,reloc=2,group=0
	line	245
global __ptext70
__ptext70:
psect	text70
	file	"setsysdata.c"
	line	245
	global	__size_of_Goto_Engineering_Mode
	__size_of_Goto_Engineering_Mode	equ	__end_of_Goto_Engineering_Mode-_Goto_Engineering_Mode
	
_Goto_Engineering_Mode:
;incstack = 0
	opt	callstack 19
	line	247
	
l56132:
;setsysdata.c: 247: if (!Engineering_Pattern.Mode)
	movlb	0	; () banked
	movf	(0+(_Engineering_Pattern+06h))&0ffh,w
	btfss	status,2
	goto	u16621
	goto	u16620
u16621:
	goto	l56136
u16620:
	line	249
	
l56134:; BSR set to: 0

;setsysdata.c: 248: {;setsysdata.c: 249: touch_key = TouchKeyValue();
	call	_TouchKeyValue	;wreg free
	movf	(0+?_TouchKeyValue)^00h,c,w
	movwf	((c:_touch_key))^00h,c
	line	251
	
l56136:
;setsysdata.c: 250: };setsysdata.c: 251: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
	call	_Get_Engineering_KeyValue	;wreg free
	movf	(0+?_Get_Engineering_KeyValue)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	253
	
l56138:; BSR set to: 0

;setsysdata.c: 253: if (touch_key == 0x07 && Engineering_Pattern.IKey == 4)
		movlw	7
	xorwf	((c:_touch_key))^00h,c,w
	btfss	status,2
	goto	u16631
	goto	u16630

u16631:
	goto	l56152
u16630:
	
l56140:; BSR set to: 0

		movlw	4
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u16641
	goto	u16640

u16641:
	goto	l56152
u16640:
	line	255
	
l56142:; BSR set to: 0

;setsysdata.c: 254: {;setsysdata.c: 255: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	line	256
;setsysdata.c: 256: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	257
	
l56144:
;setsysdata.c: 257: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	258
	
l56146:
;setsysdata.c: 258: Engineering_Pattern.Mode = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	259
	
l56148:; BSR set to: 0

;setsysdata.c: 259: touch_key = 0x00;
	movlw	low(0)
	movwf	((c:_touch_key))^00h,c
	line	260
	
l56150:; BSR set to: 0

;setsysdata.c: 260: currentMode = ENGINEERING_MODE_ADJUST_JYTIME;
	movlw	low(04h)
	movwf	((c:_currentMode))^00h,c
	line	261
;setsysdata.c: 261: }
	goto	l39024
	line	262
	
l56152:; BSR set to: 0

;setsysdata.c: 262: else if (touch_key == 0x07 && Engineering_Pattern.IKey == 3)
		movlw	7
	xorwf	((c:_touch_key))^00h,c,w
	btfss	status,2
	goto	u16651
	goto	u16650

u16651:
	goto	l56166
u16650:
	
l56154:; BSR set to: 0

		movlw	3
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u16661
	goto	u16660

u16661:
	goto	l56166
u16660:
	line	264
	
l56156:; BSR set to: 0

;setsysdata.c: 263: {;setsysdata.c: 264: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	line	265
;setsysdata.c: 265: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	266
	
l56158:
;setsysdata.c: 266: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	267
	
l56160:
;setsysdata.c: 267: Engineering_Pattern.Mode = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	268
	
l56162:; BSR set to: 0

;setsysdata.c: 268: touch_key = 0x00;
	movlw	low(0)
	movwf	((c:_touch_key))^00h,c
	line	269
	
l56164:; BSR set to: 0

;setsysdata.c: 269: currentMode = ENGINEERING_MODE_VOLTAGE_CALIBRATION;
	movlw	low(02h)
	movwf	((c:_currentMode))^00h,c
	line	270
;setsysdata.c: 270: }
	goto	l39024
	line	271
	
l56166:; BSR set to: 0

;setsysdata.c: 271: else if (touch_key == 0x07 && Engineering_Pattern.IKey == 2)
		movlw	7
	xorwf	((c:_touch_key))^00h,c,w
	btfss	status,2
	goto	u16671
	goto	u16670

u16671:
	goto	l56180
u16670:
	
l56168:; BSR set to: 0

		movlw	2
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u16681
	goto	u16680

u16681:
	goto	l56180
u16680:
	line	273
	
l56170:; BSR set to: 0

;setsysdata.c: 272: {;setsysdata.c: 273: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	line	274
;setsysdata.c: 274: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	275
	
l56172:
;setsysdata.c: 275: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	276
	
l56174:
;setsysdata.c: 276: Engineering_Pattern.Mode = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	277
	
l56176:; BSR set to: 0

;setsysdata.c: 277: touch_key = 0x00;
	movlw	low(0)
	movwf	((c:_touch_key))^00h,c
	line	278
	
l56178:; BSR set to: 0

;setsysdata.c: 278: currentMode = ENGINEERING_MODE_CLEAR_WORKTIME;
	movlw	low(01h)
	movwf	((c:_currentMode))^00h,c
	line	279
;setsysdata.c: 279: }
	goto	l39024
	line	280
	
l56180:; BSR set to: 0

;setsysdata.c: 280: else if (touch_key == 0x07 && Engineering_Pattern.IKey == 1)
		movlw	7
	xorwf	((c:_touch_key))^00h,c,w
	btfss	status,2
	goto	u16691
	goto	u16690

u16691:
	goto	l39024
u16690:
	
l56182:; BSR set to: 0

		decf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u16701
	goto	u16700

u16701:
	goto	l39024
u16700:
	line	282
	
l56184:; BSR set to: 0

;setsysdata.c: 281: {;setsysdata.c: 282: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	line	283
;setsysdata.c: 283: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	284
	
l56186:
;setsysdata.c: 284: Label_CloseAlarm(0);
	movlw	(0)&0ffh
	
	call	_Label_CloseAlarm
	line	285
	
l56188:
;setsysdata.c: 285: Engineering_Pattern.Mode = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	286
	
l56190:; BSR set to: 0

;setsysdata.c: 286: touch_key = 0x00;
	movlw	low(0)
	movwf	((c:_touch_key))^00h,c
	line	287
	
l56192:; BSR set to: 0

;setsysdata.c: 287: currentMode = ENGINEERING_MODE_FLOW_COMPENSATION;
	movlw	low(03h)
	movwf	((c:_currentMode))^00h,c
	line	290
	
l39024:; BSR set to: 0

# 290 "setsysdata.c"
clrwdt ;# 
psect	text70
	line	293
;setsysdata.c: 293: switch (currentMode)
	goto	l56204
	line	296
	
l56194:
;setsysdata.c: 296: Engineering_Clear_WorkTime();
	call	_Engineering_Clear_WorkTime	;wreg free
	line	297
;setsysdata.c: 297: break;
	goto	l39037
	line	299
	
l56196:
;setsysdata.c: 299: Engineering_Voltage_Calibration();
	call	_Engineering_Voltage_Calibration	;wreg free
	line	300
;setsysdata.c: 300: break;
	goto	l39037
	line	302
	
l56198:
;setsysdata.c: 302: Engineering_Flow_Compensation();
	call	_Engineering_Flow_Compensation	;wreg free
	line	303
;setsysdata.c: 303: break;
	goto	l39037
	line	305
	
l56200:
;setsysdata.c: 305: Engineering_Adjust_JYTime();
	call	_Engineering_Adjust_JYTime	;wreg free
	goto	l39037
	line	293
	
l56204:
	movf	((c:_currentMode))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l56194
	xorlw	2^1	; case 2
	skipnz
	goto	l56196
	xorlw	3^2	; case 3
	skipnz
	goto	l56198
	xorlw	4^3	; case 4
	skipnz
	goto	l56200
	goto	l39037

	line	309
	
l39037:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Goto_Engineering_Mode
	__end_of_Goto_Engineering_Mode:
	signat	_Goto_Engineering_Mode,89
	global	_TouchKeyValue

;; *************** function _TouchKeyValue *****************
;; Defined at:
;;		line 43 in file "touchkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ret             2   15[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_scan
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text71,class=CODE,space=0,reloc=2,group=0
	file	"touchkey.c"
	line	43
global __ptext71
__ptext71:
psect	text71
	file	"touchkey.c"
	line	43
	global	__size_of_TouchKeyValue
	__size_of_TouchKeyValue	equ	__end_of_TouchKeyValue-_TouchKeyValue
	
_TouchKeyValue:
;incstack = 0
	opt	callstack 25
	line	45
	
l54394:
	line	46
;touchkey.c: 46: switch(Sav_single[0])
	goto	l54412
	line	48
	
l54396:
	movlw	high(02h)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(02h)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	49
	
l54398:
	movlw	high(07h)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(07h)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	50
	
l54400:
	movlw	high(06h)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(06h)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	51
	
l54402:
	movlw	high(01h)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(01h)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	52
	
l54404:
	movlw	high(0Ah)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	53
	
l54406:
	movlw	high(0Bh)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(0Bh)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	54
	
l54408:
	movlw	high(0)
	movwf	((c:TouchKeyValue@ret+1))^00h,c
	movlw	low(0)
	movwf	((c:TouchKeyValue@ret))^00h,c
	goto	l18363
	line	46
	
l54412:
	movff	(_Sav_single),??_TouchKeyValue+0+0
	movff	(_Sav_single+1),??_TouchKeyValue+0+0+1
	movff	(_Sav_single+2),??_TouchKeyValue+0+0+2
	movff	(_Sav_single+3),??_TouchKeyValue+0+0+3
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_TouchKeyValue+0+3^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57350
	goto	l54408
	
l57348:
; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_TouchKeyValue+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57352
	goto	l54408
	
l57352:
; Switch size 1, requested type "simple"
; Number of cases is 6, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	movf ??_TouchKeyValue+0+0^00h,c,w
	xorlw	1^0	; case 1
	skipnz
	goto	l54396
	xorlw	2^1	; case 2
	skipnz
	goto	l54398
	xorlw	3^2	; case 3
	skipnz
	goto	l54406
	xorlw	4^3	; case 4
	skipnz
	goto	l54400
	xorlw	8^4	; case 8
	skipnz
	goto	l54402
	xorlw	12^8	; case 12
	skipnz
	goto	l54404
	goto	l54408
	
l57350:
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_TouchKeyValue+0+2^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l57348
	goto	l54408

	line	55
	
l18363:
	line	56
;touchkey.c: 56: return ret;
	movff	(c:TouchKeyValue@ret),(c:?_TouchKeyValue)
	movff	(c:TouchKeyValue@ret+1),(c:?_TouchKeyValue+1)
	line	58
	
l18370:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TouchKeyValue
	__end_of_TouchKeyValue:
	signat	_TouchKeyValue,90
	global	_Label_CloseAlarm

;; *************** function _Label_CloseAlarm *****************
;; Defined at:
;;		line 414 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ErrorCtr
;;		_Display
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text72,class=CODE,space=0,reloc=2,group=0
	file	"display.c"
	line	414
global __ptext72
__ptext72:
psect	text72
	file	"display.c"
	line	414
	global	__size_of_Label_CloseAlarm
	__size_of_Label_CloseAlarm	equ	__end_of_Label_CloseAlarm-_Label_CloseAlarm
	
_Label_CloseAlarm:
;incstack = 0
	opt	callstack 24
;Label_CloseAlarm@sta stored from wreg
	movwf	((c:Label_CloseAlarm@sta))^00h,c
	line	416
	
l54900:
;display.c: 416: if(sta)
	movf	((c:Label_CloseAlarm@sta))^00h,c,w
	btfsc	status,2
	goto	u14771
	goto	u14770
u14771:
	goto	l13213
u14770:
	line	418
	
l54902:
;display.c: 417: {;display.c: 418: LATFbits.LATF3 = 1;
	bsf	((c:3982))^0f00h,c,3	;volatile
	line	419
;display.c: 419: }
	goto	l13215
	line	420
	
l13213:
	line	422
;display.c: 420: else;display.c: 421: {;display.c: 422: LATFbits.LATF3 = 0;
	bcf	((c:3982))^0f00h,c,3	;volatile
	line	424
	
l13215:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_CloseAlarm
	__end_of_Label_CloseAlarm:
	signat	_Label_CloseAlarm,4217
	global	_Engineering_Voltage_Calibration

;; *************** function _Engineering_Voltage_Calibration *****************
;; Defined at:
;;		line 428 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_BeepCtr1
;;		_Cmd_Process
;;		_Cmd_Send
;;		_Display_CumulativeTime
;;		_Display_Timing
;;		_E2prom_WriteData
;;		_Engineering_Timeout_Logic
;;		_Get_Engineering_KeyValue
;;		_SEG1
;;		_SEG11
;;		_SEG12
;;		_SEG13
;;		_SEG2
;;		_SEG3
;;		_Update_Display
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text73,class=CODE,space=0,reloc=2,group=0
	file	"setsysdata.c"
	line	428
global __ptext73
__ptext73:
psect	text73
	file	"setsysdata.c"
	line	428
	global	__size_of_Engineering_Voltage_Calibration
	__size_of_Engineering_Voltage_Calibration	equ	__end_of_Engineering_Voltage_Calibration-_Engineering_Voltage_Calibration
	
_Engineering_Voltage_Calibration:
;incstack = 0
	opt	callstack 19
	line	430
	
l55244:
;setsysdata.c: 430: Engineering_Pattern.Led_Displat_Enbale = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	431
	
l55246:; BSR set to: 0

;setsysdata.c: 431: Display_Timing(0, 0, Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_Timing@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_Timing@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_Timing@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_Timing@sum+3))^00h,c
	movlw	low(0)
	movwf	((c:Display_Timing@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_Timing@enable)
	call	_Display_Timing	;wreg free
	line	432
	
l55248:
;setsysdata.c: 432: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_CumulativeTime@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_CumulativeTime@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_CumulativeTime@sum+3))^00h,c
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_CumulativeTime@enable)
	call	_Display_CumulativeTime	;wreg free
	line	433
;setsysdata.c: 433: Engineering_Pattern.Time_Start_Flag = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_Engineering_Pattern))&0ffh
	line	435
	
l55250:; BSR set to: 0

;setsysdata.c: 434: static int i = 0;;setsysdata.c: 435: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	436
	
l55252:
;setsysdata.c: 436: i++;
	movlb	1	; () banked
	infsnz	((Engineering_Voltage_Calibration@i))&0ffh
	incf	((Engineering_Voltage_Calibration@i+1))&0ffh
	line	437
	
l55254:; BSR set to: 1

;setsysdata.c: 437: if (i > 100)
	btfsc	((Engineering_Voltage_Calibration@i+1))&0ffh,7
	goto	u15291
	movf	((Engineering_Voltage_Calibration@i+1))&0ffh,w
	bnz	u15290
	movlw	101
	subwf	 ((Engineering_Voltage_Calibration@i))&0ffh,w
	btfss	status,0
	goto	u15291
	goto	u15290

u15291:
	goto	l55260
u15290:
	line	439
	
l55256:; BSR set to: 1

;setsysdata.c: 438: {;setsysdata.c: 439: i = 0;
	movlw	high(0)
	movwf	((Engineering_Voltage_Calibration@i+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Voltage_Calibration@i))&0ffh
	line	440
	
l55258:; BSR set to: 1

;setsysdata.c: 440: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	443
	
l55260:
;setsysdata.c: 441: };setsysdata.c: 443: SEG1(ch_table[RunData.ACDC_V / 100], 0);
	movlw	low(0)
	movwf	((c:SEG1@enable))^00h,c
	movff	0+(_RunData+08h),(c:___lwdiv@dividend)
	movff	1+(_RunData+08h),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG1
	line	444
	
l55262:
;setsysdata.c: 444: SEG2(ch_table[(RunData.ACDC_V % 100) / 10], 0);
	movlw	low(0)
	movwf	((c:SEG2@enable))^00h,c
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor))^00h,c
	movff	0+(_RunData+08h),(c:___lwmod@dividend)
	movff	1+(_RunData+08h),(c:___lwmod@dividend+1)
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:___lwdiv@dividend)
	movff	1+?___lwmod,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG2
	line	445
	
l55264:
;setsysdata.c: 445: SEG3(ch_table[RunData.ACDC_V % 10], 0);
	movlw	low(0)
	movwf	((c:SEG3@enable))^00h,c
	movff	0+(_RunData+08h),(c:___lwmod@dividend)
	movff	1+(_RunData+08h),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG3
	line	446
	
l55266:
;setsysdata.c: 446: SEG11(ch_table[(RunData.Voltage_Calibration) / 100]);
	movff	0+(_RunData+044h),(c:___awdiv@dividend)
	movff	1+(_RunData+044h),(c:___awdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG11
	line	447
	
l55268:; BSR set to: 0

;setsysdata.c: 447: SEG12(ch_table[((RunData.Voltage_Calibration) % 100) / 10]);
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___awmod@divisor))^00h,c
	movff	0+(_RunData+044h),(c:___awmod@dividend)
	movff	1+(_RunData+044h),(c:___awmod@dividend+1)
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG12
	line	448
	
l55270:; BSR set to: 0

;setsysdata.c: 448: SEG13(ch_table[(RunData.Voltage_Calibration) % 10]);
	movff	0+(_RunData+044h),(c:___awmod@dividend)
	movff	1+(_RunData+044h),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Voltage_Calibration+0+0)^00h,c
	movff	(??_Engineering_Voltage_Calibration+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG13
	line	450
	
l55272:; BSR set to: 0

;setsysdata.c: 450: Update_Display();
	call	_Update_Display	;wreg free
	line	453
;setsysdata.c: 453: Engineering_Pattern.IKey = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	454
	
l55274:; BSR set to: 0

;setsysdata.c: 454: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
	call	_Get_Engineering_KeyValue	;wreg free
	movf	(0+?_Get_Engineering_KeyValue)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	457
	
l55276:; BSR set to: 0

;setsysdata.c: 456: static int j = 0;;setsysdata.c: 457: j++;
	movlb	1	; () banked
	infsnz	((Engineering_Voltage_Calibration@j))&0ffh
	incf	((Engineering_Voltage_Calibration@j+1))&0ffh
	line	458
	
l55278:; BSR set to: 1

;setsysdata.c: 458: if (j < 100)
	btfsc	((Engineering_Voltage_Calibration@j+1))&0ffh,7
	goto	u15300
	movf	((Engineering_Voltage_Calibration@j+1))&0ffh,w
	bnz	u15301
	movlw	100
	subwf	 ((Engineering_Voltage_Calibration@j))&0ffh,w
	btfsc	status,0
	goto	u15301
	goto	u15300

u15301:
	goto	l55284
u15300:
	goto	l39073
	line	461
	
l55284:; BSR set to: 1

;setsysdata.c: 460: else;setsysdata.c: 461: j = 0;
	movlw	high(0)
	movwf	((Engineering_Voltage_Calibration@j+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Voltage_Calibration@j))&0ffh
	line	462
	
l55286:; BSR set to: 1

;setsysdata.c: 462: if (Engineering_Pattern.IKey == 3)
		movlw	3
	movlb	0	; () banked
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15311
	goto	u15310

u15311:
	goto	l55294
u15310:
	line	464
	
l55288:; BSR set to: 0

;setsysdata.c: 463: {;setsysdata.c: 464: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	465
	
l55290:
;setsysdata.c: 465: RunData.Voltage_Calibration++;
	movlb	0	; () banked
	infsnz	(0+(_RunData+044h))&0ffh
	incf	(1+(_RunData+044h))&0ffh
	line	466
	
l55292:; BSR set to: 0

;setsysdata.c: 466: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	469
	
l55294:; BSR set to: 0

;setsysdata.c: 467: };setsysdata.c: 469: if (Engineering_Pattern.IKey == 4)
		movlw	4
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15321
	goto	u15320

u15321:
	goto	l55302
u15320:
	line	471
	
l55296:; BSR set to: 0

;setsysdata.c: 470: {;setsysdata.c: 471: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	472
	
l55298:
;setsysdata.c: 472: RunData.Voltage_Calibration--;
	movlb	0	; () banked
	decf	(0+(_RunData+044h))&0ffh
	btfss	status,0
	decf	(1+(_RunData+044h))&0ffh
	line	473
	
l55300:; BSR set to: 0

;setsysdata.c: 473: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	475
	
l55302:; BSR set to: 0

;setsysdata.c: 474: };setsysdata.c: 475: Engineering_Pattern.IKey = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	477
	
l55304:; BSR set to: 0

;setsysdata.c: 477: Engineering_Timeout_Logic(currentMode);
	movf	((c:_currentMode))^00h,c,w
	
	call	_Engineering_Timeout_Logic
	line	478
	
l55306:
;setsysdata.c: 478: if (Engineering_Pattern.Return_Flag == 1)
	movlb	0	; () banked
		decf	(0+(_Engineering_Pattern+05h))&0ffh,w
	btfss	status,2
	goto	u15331
	goto	u15330

u15331:
	goto	l39073
u15330:
	line	480
	
l55308:; BSR set to: 0

;setsysdata.c: 479: {;setsysdata.c: 480: Engineering_Pattern.Time_Start_Flag = 0;
	movlw	low(0)
	movwf	((_Engineering_Pattern))&0ffh
	line	481
;setsysdata.c: 481: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	482
;setsysdata.c: 482: Engineering_Pattern.Return_Flag = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	483
	
l55310:; BSR set to: 0

;setsysdata.c: 483: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	484
	
l55312:; BSR set to: 0

;setsysdata.c: 484: currentMode = ENGINEERING_MODE_IDLE;
	movlw	low(0)
	movwf	((c:_currentMode))^00h,c
	line	486
	
l55314:; BSR set to: 0

;setsysdata.c: 486: Engineering_Pattern.Mode = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	487
	
l55316:; BSR set to: 0

;setsysdata.c: 487: Engineering_Pattern.Led_Displat_Enbale = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	490
	
l39073:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Voltage_Calibration
	__end_of_Engineering_Voltage_Calibration:
	signat	_Engineering_Voltage_Calibration,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    9[COMRAM] unsigned int 
;;  divisor         2   11[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;;		_Display_Flow
;;		_ErrorCtr
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text74,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext74
__ptext74:
psect	text74
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwmod.c"
	line	7
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	callstack 24
	line	12
	
l54756:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u14511
	goto	u14510

u14511:
	goto	l42514
u14510:
	line	13
	
l54758:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l54762
	line	15
	
l54760:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l54762:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u14521
	goto	u14520
u14521:
	goto	l54760
u14520:
	line	19
	
l54764:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u14531
	goto	u14530

u14531:
	goto	l54768
u14530:
	line	20
	
l54766:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l54768:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l54770:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l54764
	line	23
	
l42514:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l42521:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_Engineering_Flow_Compensation

;; *************** function _Engineering_Flow_Compensation *****************
;; Defined at:
;;		line 493 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_BeepCtr1
;;		_Cmd_Process
;;		_Cmd_Send
;;		_Display_CumulativeTime
;;		_Display_Timing
;;		_E2prom_WriteData
;;		_Engineering_Flow_Compensation_display1
;;		_Engineering_Timeout_Logic
;;		_Get_Engineering_KeyValue
;;		_SEG1
;;		_SEG2
;;		_SEG3
;;		_Update_Display
;; This function is called by:
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text75,class=CODE,space=0,reloc=2,group=0
	file	"setsysdata.c"
	line	493
global __ptext75
__ptext75:
psect	text75
	file	"setsysdata.c"
	line	493
	global	__size_of_Engineering_Flow_Compensation
	__size_of_Engineering_Flow_Compensation	equ	__end_of_Engineering_Flow_Compensation-_Engineering_Flow_Compensation
	
_Engineering_Flow_Compensation:
;incstack = 0
	opt	callstack 19
	line	495
	
l55320:
;setsysdata.c: 495: Engineering_Pattern.Led_Displat_Enbale = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	496
	
l55322:; BSR set to: 0

;setsysdata.c: 496: Display_Timing(0, 0, Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_Timing@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_Timing@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_Timing@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_Timing@sum+3))^00h,c
	movlw	low(0)
	movwf	((c:Display_Timing@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_Timing@enable)
	call	_Display_Timing	;wreg free
	line	497
	
l55324:
;setsysdata.c: 497: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_CumulativeTime@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_CumulativeTime@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_CumulativeTime@sum+3))^00h,c
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_CumulativeTime@enable)
	call	_Display_CumulativeTime	;wreg free
	line	498
;setsysdata.c: 498: Engineering_Pattern.Time_Start_Flag = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_Engineering_Pattern))&0ffh
	line	500
	
l55326:; BSR set to: 0

;setsysdata.c: 499: static int i = 0;;setsysdata.c: 500: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	501
	
l55328:
;setsysdata.c: 501: i++;
	movlb	1	; () banked
	infsnz	((Engineering_Flow_Compensation@i))&0ffh
	incf	((Engineering_Flow_Compensation@i+1))&0ffh
	line	502
	
l55330:; BSR set to: 1

;setsysdata.c: 502: if (i > 100)
	btfsc	((Engineering_Flow_Compensation@i+1))&0ffh,7
	goto	u15341
	movf	((Engineering_Flow_Compensation@i+1))&0ffh,w
	bnz	u15340
	movlw	101
	subwf	 ((Engineering_Flow_Compensation@i))&0ffh,w
	btfss	status,0
	goto	u15341
	goto	u15340

u15341:
	goto	l55336
u15340:
	line	504
	
l55332:; BSR set to: 1

;setsysdata.c: 503: {;setsysdata.c: 504: i = 0;
	movlw	high(0)
	movwf	((Engineering_Flow_Compensation@i+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Flow_Compensation@i))&0ffh
	line	505
	
l55334:; BSR set to: 1

;setsysdata.c: 505: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	508
	
l55336:
;setsysdata.c: 506: };setsysdata.c: 508: if (RunData.FLOW_Trim > 0)
	movlb	0	; () banked
	btfsc	(1+(_RunData+022h))&0ffh,7
	goto	u15351
	movf	(1+(_RunData+022h))&0ffh,w
	bnz	u15350
	decf	(0+(_RunData+022h))&0ffh,w
	btfss	status,0
	goto	u15351
	goto	u15350

u15351:
	goto	l55342
u15350:
	line	510
	
l55338:; BSR set to: 0

;setsysdata.c: 509: {;setsysdata.c: 510: Engineering_Flow_Compensation_display1(1);
	movlw	(01h)&0ffh
	
	call	_Engineering_Flow_Compensation_display1
	line	511
	
l55340:
;setsysdata.c: 511: SEG3(ch_table[RunData.FLOW_Trim], 0);
	movlw	low(0)
	movwf	((c:SEG3@enable))^00h,c
	movlb	0	; () banked
	movf	(0+(_RunData+022h))&0ffh,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Flow_Compensation+0+0)^00h,c
	movff	(??_Engineering_Flow_Compensation+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG3
	line	513
	
l55342:
;setsysdata.c: 512: };setsysdata.c: 513: if (RunData.FLOW_Trim < 0)
	movlb	0	; () banked
	btfsc	(1+(_RunData+022h))&0ffh,7
	goto	u15360
	goto	u15361

u15361:
	goto	l55348
u15360:
	line	515
	
l55344:; BSR set to: 0

;setsysdata.c: 514: {;setsysdata.c: 515: Engineering_Flow_Compensation_display1(0);
	movlw	(0)&0ffh
	
	call	_Engineering_Flow_Compensation_display1
	line	516
	
l55346:
;setsysdata.c: 516: SEG3(ch_table[-RunData.FLOW_Trim], 0);
	movlw	low(0)
	movwf	((c:SEG3@enable))^00h,c
	movlb	0	; () banked
	movf	(0+(_RunData+022h))&0ffh,w
	sublw	low(_ch_table)
	movwf	(??_Engineering_Flow_Compensation+0+0)^00h,c
	movff	(??_Engineering_Flow_Compensation+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG3
	line	518
	
l55348:
;setsysdata.c: 517: };setsysdata.c: 518: if (RunData.FLOW_Trim == 0)
	movlb	0	; () banked
	movf	(0+(_RunData+022h))&0ffh,w
iorwf	(1+(_RunData+022h))&0ffh,w
	btfss	status,2
	goto	u15371
	goto	u15370

u15371:
	goto	l55352
u15370:
	line	520
	
l55350:; BSR set to: 0

;setsysdata.c: 519: {;setsysdata.c: 520: SEG1(ch_table[RunData.FLOW_Trim], 0);
	movlw	low(0)
	movwf	((c:SEG1@enable))^00h,c
	movf	(0+(_RunData+022h))&0ffh,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Flow_Compensation+0+0)^00h,c
	movff	(??_Engineering_Flow_Compensation+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG1
	line	521
;setsysdata.c: 521: SEG2(ch_table[RunData.FLOW_Trim], 0);
	movlw	low(0)
	movwf	((c:SEG2@enable))^00h,c
	movlb	0	; () banked
	movf	(0+(_RunData+022h))&0ffh,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Flow_Compensation+0+0)^00h,c
	movff	(??_Engineering_Flow_Compensation+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG2
	line	522
;setsysdata.c: 522: SEG3(ch_table[RunData.FLOW_Trim], 0);
	movlw	low(0)
	movwf	((c:SEG3@enable))^00h,c
	movlb	0	; () banked
	movf	(0+(_RunData+022h))&0ffh,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Flow_Compensation+0+0)^00h,c
	movff	(??_Engineering_Flow_Compensation+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG3
	line	524
	
l55352:
;setsysdata.c: 523: };setsysdata.c: 524: Update_Display();
	call	_Update_Display	;wreg free
	line	527
	
l55354:
;setsysdata.c: 527: Engineering_Pattern.IKey = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	528
	
l55356:; BSR set to: 0

;setsysdata.c: 528: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
	call	_Get_Engineering_KeyValue	;wreg free
	movf	(0+?_Get_Engineering_KeyValue)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	531
	
l55358:; BSR set to: 0

;setsysdata.c: 530: static int j = 0;;setsysdata.c: 531: j++;
	movlb	1	; () banked
	infsnz	((Engineering_Flow_Compensation@j))&0ffh
	incf	((Engineering_Flow_Compensation@j+1))&0ffh
	line	532
	
l55360:; BSR set to: 1

;setsysdata.c: 532: if (j < 100)
	btfsc	((Engineering_Flow_Compensation@j+1))&0ffh,7
	goto	u15380
	movf	((Engineering_Flow_Compensation@j+1))&0ffh,w
	bnz	u15381
	movlw	100
	subwf	 ((Engineering_Flow_Compensation@j))&0ffh,w
	btfsc	status,0
	goto	u15381
	goto	u15380

u15381:
	goto	l55366
u15380:
	goto	l39089
	line	535
	
l55366:; BSR set to: 1

;setsysdata.c: 534: else;setsysdata.c: 535: j = 0;
	movlw	high(0)
	movwf	((Engineering_Flow_Compensation@j+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Flow_Compensation@j))&0ffh
	line	536
	
l55368:; BSR set to: 1

;setsysdata.c: 536: if (Engineering_Pattern.IKey == 3)
		movlw	3
	movlb	0	; () banked
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15391
	goto	u15390

u15391:
	goto	l55378
u15390:
	line	538
	
l55370:; BSR set to: 0

;setsysdata.c: 537: {;setsysdata.c: 538: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	539
	
l55372:
;setsysdata.c: 539: RunData.FLOW_Trim++;
	movlb	0	; () banked
	infsnz	(0+(_RunData+022h))&0ffh
	incf	(1+(_RunData+022h))&0ffh
	line	540
	
l55374:; BSR set to: 0

;setsysdata.c: 540: if (RunData.FLOW_Trim >= 3)
	btfsc	(1+(_RunData+022h))&0ffh,7
	goto	u15401
	movf	(1+(_RunData+022h))&0ffh,w
	bnz	u15400
	movlw	3
	subwf	 (0+(_RunData+022h))&0ffh,w
	btfss	status,0
	goto	u15401
	goto	u15400

u15401:
	goto	l39092
u15400:
	line	541
	
l55376:; BSR set to: 0

;setsysdata.c: 541: RunData.FLOW_Trim = 3;
	movlw	high(03h)
	movwf	(1+(_RunData+022h))&0ffh
	movlw	low(03h)
	movwf	(0+(_RunData+022h))&0ffh
	
l39092:; BSR set to: 0

	line	542
;setsysdata.c: 542: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	544
	
l55378:; BSR set to: 0

;setsysdata.c: 543: };setsysdata.c: 544: if (Engineering_Pattern.IKey == 4)
		movlw	4
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15411
	goto	u15410

u15411:
	goto	l55388
u15410:
	line	546
	
l55380:; BSR set to: 0

;setsysdata.c: 545: {;setsysdata.c: 546: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	547
	
l55382:
;setsysdata.c: 547: RunData.FLOW_Trim--;
	movlb	0	; () banked
	decf	(0+(_RunData+022h))&0ffh
	btfss	status,0
	decf	(1+(_RunData+022h))&0ffh
	line	548
	
l55384:; BSR set to: 0

;setsysdata.c: 548: if (RunData.FLOW_Trim <= -3)
	btfss	(1+(_RunData+022h))&0ffh,7
	goto	u15421
	movlw	254
	subwf	 (0+(_RunData+022h))&0ffh,w
	movlw	255
	subwfb	(1+(_RunData+022h))&0ffh,w
	btfsc	status,0
	goto	u15421
	goto	u15420

u15421:
	goto	l39094
u15420:
	line	549
	
l55386:; BSR set to: 0

;setsysdata.c: 549: RunData.FLOW_Trim = -3;
	movlw	high(-3)
	movwf	(1+(_RunData+022h))&0ffh
	movlw	low(-3)
	movwf	(0+(_RunData+022h))&0ffh
	
l39094:; BSR set to: 0

	line	550
;setsysdata.c: 550: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	553
	
l55388:; BSR set to: 0

;setsysdata.c: 551: };setsysdata.c: 553: Engineering_Timeout_Logic(currentMode);
	movf	((c:_currentMode))^00h,c,w
	
	call	_Engineering_Timeout_Logic
	line	554
	
l55390:
;setsysdata.c: 554: if (Engineering_Pattern.Return_Flag == 1)
	movlb	0	; () banked
		decf	(0+(_Engineering_Pattern+05h))&0ffh,w
	btfss	status,2
	goto	u15431
	goto	u15430

u15431:
	goto	l39089
u15430:
	line	556
	
l55392:; BSR set to: 0

;setsysdata.c: 555: {;setsysdata.c: 556: Engineering_Pattern.Time_Start_Flag = 0;
	movlw	low(0)
	movwf	((_Engineering_Pattern))&0ffh
	line	557
;setsysdata.c: 557: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	558
;setsysdata.c: 558: Engineering_Pattern.Return_Flag = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	559
	
l55394:; BSR set to: 0

;setsysdata.c: 559: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	560
	
l55396:; BSR set to: 0

;setsysdata.c: 560: Engineering_Pattern.Led_Displat_Enbale = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	561
	
l55398:; BSR set to: 0

;setsysdata.c: 561: currentMode = ENGINEERING_MODE_IDLE;
	movlw	low(0)
	movwf	((c:_currentMode))^00h,c
	line	562
	
l55400:; BSR set to: 0

;setsysdata.c: 562: Engineering_Pattern.Mode = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	565
	
l39089:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Flow_Compensation
	__end_of_Engineering_Flow_Compensation:
	signat	_Engineering_Flow_Compensation,89
	global	_Engineering_Flow_Compensation_display1

;; *************** function _Engineering_Flow_Compensation_display1 *****************
;; Defined at:
;;		line 784 in file "display.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text76,class=CODE,space=0,reloc=2,group=0
	file	"display.c"
	line	784
global __ptext76
__ptext76:
psect	text76
	file	"display.c"
	line	784
	global	__size_of_Engineering_Flow_Compensation_display1
	__size_of_Engineering_Flow_Compensation_display1	equ	__end_of_Engineering_Flow_Compensation_display1-_Engineering_Flow_Compensation_display1
	
_Engineering_Flow_Compensation_display1:
;incstack = 0
	opt	callstack 23
;Engineering_Flow_Compensation_display1@a stored from wreg
	movwf	((c:Engineering_Flow_Compensation_display1@a))^00h,c
	line	786
	
l54386:
;display.c: 786: if(a == 1)
		decf	((c:Engineering_Flow_Compensation_display1@a))^00h,c,w
	btfss	status,2
	goto	u14221
	goto	u14220

u14221:
	goto	l54390
u14220:
	line	788
	
l54388:
;display.c: 787: {;display.c: 788: DisBuf[3] |=(1<<5);
	movlb	0	; () banked
	bsf	(0+(5/8)+0+(_DisBuf+03h))&0ffh,(5)&7
	line	789
;display.c: 789: DisBuf[5] |=(1<<5);
	bsf	(0+(5/8)+0+(_DisBuf+05h))&0ffh,(5)&7
	line	790
;display.c: 790: DisBuf[13] |=(1<<5);
	bsf	(0+(5/8)+0+(_DisBuf+0Dh))&0ffh,(5)&7
	line	791
;display.c: 791: DisBuf[1] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+01h))&0ffh,(5)&7
	line	792
;display.c: 792: DisBuf[7] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+07h))&0ffh,(5)&7
	line	793
;display.c: 793: DisBuf[9] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+09h))&0ffh,(5)&7
	line	794
;display.c: 794: DisBuf[11] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Bh))&0ffh,(5)&7
	line	796
;display.c: 796: DisBuf[9] |=(1<<6);
	bsf	(0+(6/8)+0+(_DisBuf+09h))&0ffh,(6)&7
	line	797
;display.c: 797: DisBuf[11] |=(1<<6);
	bsf	(0+(6/8)+0+(_DisBuf+0Bh))&0ffh,(6)&7
	line	798
;display.c: 798: DisBuf[13] |=(1<<6);
	bsf	(0+(6/8)+0+(_DisBuf+0Dh))&0ffh,(6)&7
	line	800
;display.c: 800: DisBuf[1] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+01h))&0ffh,(6)&7
	line	801
;display.c: 801: DisBuf[7] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+07h))&0ffh,(6)&7
	line	802
;display.c: 802: DisBuf[3] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+03h))&0ffh,(6)&7
	line	803
;display.c: 803: DisBuf[5] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+05h))&0ffh,(6)&7
	line	805
	
l54390:
;display.c: 804: };display.c: 805: if(a == 0)
	movf	((c:Engineering_Flow_Compensation_display1@a))^00h,c,w
	btfss	status,2
	goto	u14231
	goto	u14230
u14231:
	goto	l13304
u14230:
	line	807
	
l54392:
;display.c: 806: {;display.c: 807: DisBuf[13] |=(1<<5);
	movlb	0	; () banked
	bsf	(0+(5/8)+0+(_DisBuf+0Dh))&0ffh,(5)&7
	line	808
;display.c: 808: DisBuf[13] |=(1<<6);
	bsf	(0+(6/8)+0+(_DisBuf+0Dh))&0ffh,(6)&7
	line	810
;display.c: 810: DisBuf[1] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+01h))&0ffh,(5)&7
	line	811
;display.c: 811: DisBuf[3] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+03h))&0ffh,(5)&7
	line	812
;display.c: 812: DisBuf[5] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+05h))&0ffh,(5)&7
	line	813
;display.c: 813: DisBuf[7] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+07h))&0ffh,(5)&7
	line	814
;display.c: 814: DisBuf[9] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+09h))&0ffh,(5)&7
	line	815
;display.c: 815: DisBuf[11] &= ~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Bh))&0ffh,(5)&7
	line	817
;display.c: 817: DisBuf[1] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+01h))&0ffh,(6)&7
	line	818
;display.c: 818: DisBuf[3] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+03h))&0ffh,(6)&7
	line	819
;display.c: 819: DisBuf[5] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+05h))&0ffh,(6)&7
	line	820
;display.c: 820: DisBuf[7] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+07h))&0ffh,(6)&7
	line	821
;display.c: 821: DisBuf[9] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+09h))&0ffh,(6)&7
	line	822
;display.c: 822: DisBuf[11] &= ~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+0Bh))&0ffh,(6)&7
	line	825
	
l13304:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Flow_Compensation_display1
	__end_of_Engineering_Flow_Compensation_display1:
	signat	_Engineering_Flow_Compensation_display1,4217
	global	_Display_Timing

;; *************** function _Display_Timing *****************
;; Defined at:
;;		line 556 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sum             4   33[COMRAM] unsigned long 
;;  mode            1   37[COMRAM] unsigned char 
;;  enable          1   38[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Label_Min
;;		_Label_Running
;;		_Label_Timing
;;		_SEG1
;;		_SEG2
;;		_SEG3
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_Display
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text77,class=CODE,space=0,reloc=2,group=0
	line	556
global __ptext77
__ptext77:
psect	text77
	file	"display.c"
	line	556
	global	__size_of_Display_Timing
	__size_of_Display_Timing	equ	__end_of_Display_Timing-_Display_Timing
	
_Display_Timing:
;incstack = 0
	opt	callstack 23
	line	558
	
l54340:
;display.c: 558: if (enable)
	movf	((c:Display_Timing@enable))^00h,c,w
	btfsc	status,2
	goto	u14191
	goto	u14190
u14191:
	goto	l54348
u14190:
	line	560
	
l54342:
;display.c: 559: {;display.c: 560: Label_Min(0);
	movlw	(0)&0ffh
	
	call	_Label_Min
	line	561
;display.c: 561: Label_Running(0);
	movlw	(0)&0ffh
	
	call	_Label_Running
	line	562
;display.c: 562: Label_Timing(0);
	movlw	(0)&0ffh
	
	call	_Label_Timing
	goto	l13263
	line	567
	
l54348:
;display.c: 565: else;display.c: 566: {;display.c: 567: if (sum > 999)
		movf	((c:Display_Timing@sum+3))^00h,c,w
	iorwf	((c:Display_Timing@sum+2))^00h,c,w
	bnz	u14200
	movlw	232
	subwf	 ((c:Display_Timing@sum))^00h,c,w
	movlw	3
	subwfb	((c:Display_Timing@sum+1))^00h,c,w
	btfss	status,0
	goto	u14201
	goto	u14200

u14201:
	goto	l54352
u14200:
	line	568
	
l54350:
;display.c: 568: sum = 999;
	movlw	low(03E7h)
	movwf	((c:Display_Timing@sum))^00h,c
	movlw	high(03E7h)
	movwf	((c:Display_Timing@sum+1))^00h,c
	movlw	low highword(03E7h)
	movwf	((c:Display_Timing@sum+2))^00h,c
	movlw	high highword(03E7h)
	movwf	((c:Display_Timing@sum+3))^00h,c
	line	570
	
l54352:
;display.c: 570: SEG1(ch_table[sum % 1000 / 100],enable);
	movff	(c:Display_Timing@enable),(c:SEG1@enable)
	movlw	low(03E8h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(03E8h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(03E8h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(03E8h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_Timing@sum),(c:___llmod@dividend)
	movff	(c:Display_Timing@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_Timing@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_Timing@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(064h)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(064h)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Timing+0+0)^00h,c
	movff	(??_Display_Timing+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG1
	line	571
	
l54354:
;display.c: 571: SEG2(ch_table[sum % 100 / 10],enable);
	movff	(c:Display_Timing@enable),(c:SEG2@enable)
	movlw	low(064h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(064h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_Timing@sum),(c:___llmod@dividend)
	movff	(c:Display_Timing@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_Timing@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_Timing@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(0Ah)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Timing+0+0)^00h,c
	movff	(??_Display_Timing+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG2
	line	572
	
l54356:
;display.c: 572: SEG3(ch_table[sum % 10],enable);
	movff	(c:Display_Timing@enable),(c:SEG3@enable)
	movff	(c:Display_Timing@sum),(c:___llmod@dividend)
	movff	(c:Display_Timing@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_Timing@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_Timing@sum+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3))^00h,c
	call	___llmod	;wreg free
	movf	(0+?___llmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_Timing+0+0)^00h,c
	movff	(??_Display_Timing+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG3
	line	574
;display.c: 574: switch (mode)
	goto	l54368
	line	577
	
l54358:
;display.c: 577: Label_Min(1);
	movlw	(01h)&0ffh
	
	call	_Label_Min
	line	578
;display.c: 578: Label_Running(1);
	movlw	(01h)&0ffh
	
	call	_Label_Running
	line	579
;display.c: 579: Label_Timing(0);
	movlw	(0)&0ffh
	
	call	_Label_Timing
	line	580
;display.c: 580: break;
	goto	l13263
	line	582
	
l54360:
;display.c: 582: Label_Min(1);
	movlw	(01h)&0ffh
	
	call	_Label_Min
	line	583
;display.c: 583: Label_Running(0);
	movlw	(0)&0ffh
	
	call	_Label_Running
	line	584
;display.c: 584: Label_Timing(1);
	movlw	(01h)&0ffh
	
	call	_Label_Timing
	line	585
;display.c: 585: break;
	goto	l13263
	line	588
	
l54362:
;display.c: 588: SEG1(0x40,enable);
	movff	(c:Display_Timing@enable),(c:SEG1@enable)
	movlw	(040h)&0ffh
	
	call	_SEG1
	line	589
;display.c: 589: SEG2(0x40,enable);
	movff	(c:Display_Timing@enable),(c:SEG2@enable)
	movlw	(040h)&0ffh
	
	call	_SEG2
	line	590
;display.c: 590: SEG3(0x40,enable);
	movff	(c:Display_Timing@enable),(c:SEG3@enable)
	movlw	(040h)&0ffh
	
	call	_SEG3
	line	591
;display.c: 591: Label_Min(1);
	movlw	(01h)&0ffh
	
	call	_Label_Min
	line	592
;display.c: 592: Label_Running(1);
	movlw	(01h)&0ffh
	
	call	_Label_Running
	line	593
;display.c: 593: Label_Timing(0);
	movlw	(0)&0ffh
	
	call	_Label_Timing
	line	594
;display.c: 594: break;
	goto	l13263
	line	603
	
l54364:
;display.c: 603: SEG1(0x00,enable);
	movff	(c:Display_Timing@enable),(c:SEG1@enable)
	movlw	(0)&0ffh
	
	call	_SEG1
	line	604
;display.c: 604: SEG2(0x00,enable);
	movff	(c:Display_Timing@enable),(c:SEG2@enable)
	movlw	(0)&0ffh
	
	call	_SEG2
	line	605
;display.c: 605: SEG3(0x00,enable);
	movff	(c:Display_Timing@enable),(c:SEG3@enable)
	movlw	(0)&0ffh
	
	call	_SEG3
	line	606
;display.c: 606: Label_Min(0);
	movlw	(0)&0ffh
	
	call	_Label_Min
	line	607
;display.c: 607: Label_Running(0);
	movlw	(0)&0ffh
	
	call	_Label_Running
	line	608
;display.c: 608: Label_Timing(0);
	movlw	(0)&0ffh
	
	call	_Label_Timing
	line	609
;display.c: 609: break;
	goto	l13263
	line	574
	
l54368:
	movf	((c:Display_Timing@mode))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l54358
	xorlw	2^1	; case 2
	skipnz
	goto	l54360
	xorlw	3^2	; case 3
	skipnz
	goto	l54362
	xorlw	4^3	; case 4
	skipnz
	goto	l13263
	goto	l54364

	line	612
	
l13263:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_Timing
	__end_of_Display_Timing:
	signat	_Display_Timing,12409
	global	_SEG3

;; *************** function _SEG3 *****************
;; Defined at:
;;		line 64 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;;  enable          1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;;		_Display
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text78,class=CODE,space=0,reloc=2,group=0
	line	64
global __ptext78
__ptext78:
psect	text78
	file	"display.c"
	line	64
	global	__size_of_SEG3
	__size_of_SEG3	equ	__end_of_SEG3-_SEG3
	
_SEG3:
;incstack = 0
	opt	callstack 24
;SEG3@dat stored from wreg
	movwf	((c:SEG3@dat))^00h,c
	line	66
	
l53146:
;display.c: 66: if (enable)
	movf	((c:SEG3@enable))^00h,c,w
	btfsc	status,2
	goto	u12471
	goto	u12470
u12471:
	goto	l12991
u12470:
	goto	l12992
	line	68
	
l12991:
	line	69
;display.c: 68: else{;display.c: 69: if(dat&0x01) DisBuf[1] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(0)&7
	goto	u12481
	goto	u12480
u12481:
	goto	l53154
u12480:
	
l53152:
	movlb	0	; () banked
	bsf	(0+(7/8)+0+(_DisBuf+01h))&0ffh,(7)&7
	goto	l53156
	line	70
	
l53154:
;display.c: 70: else DisBuf[1] &=~(1<<7);
	movlb	0	; () banked
	bcf	(0+(7/8)+0+(_DisBuf+01h))&0ffh,(7)&7
	line	72
	
l53156:; BSR set to: 0

;display.c: 72: if(dat&0x02) DisBuf[3] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(1)&7
	goto	u12491
	goto	u12490
u12491:
	goto	l53160
u12490:
	
l53158:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+03h))&0ffh,(7)&7
	goto	l53162
	line	73
	
l53160:; BSR set to: 0

;display.c: 73: else DisBuf[3] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+03h))&0ffh,(7)&7
	line	75
	
l53162:; BSR set to: 0

;display.c: 75: if(dat&0x04) DisBuf[5] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(2)&7
	goto	u12501
	goto	u12500
u12501:
	goto	l53166
u12500:
	
l53164:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+05h))&0ffh,(7)&7
	goto	l53168
	line	76
	
l53166:; BSR set to: 0

;display.c: 76: else DisBuf[5] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+05h))&0ffh,(7)&7
	line	78
	
l53168:; BSR set to: 0

;display.c: 78: if(dat&0x08) DisBuf[7] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(3)&7
	goto	u12511
	goto	u12510
u12511:
	goto	l53172
u12510:
	
l53170:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+07h))&0ffh,(7)&7
	goto	l53174
	line	79
	
l53172:; BSR set to: 0

;display.c: 79: else DisBuf[7] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+07h))&0ffh,(7)&7
	line	81
	
l53174:; BSR set to: 0

;display.c: 81: if(dat&0x10) DisBuf[9] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(4)&7
	goto	u12521
	goto	u12520
u12521:
	goto	l53178
u12520:
	
l53176:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+09h))&0ffh,(7)&7
	goto	l53180
	line	82
	
l53178:; BSR set to: 0

;display.c: 82: else DisBuf[9] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+09h))&0ffh,(7)&7
	line	84
	
l53180:; BSR set to: 0

;display.c: 84: if(dat&0x20) DisBuf[11] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(5)&7
	goto	u12531
	goto	u12530
u12531:
	goto	l53184
u12530:
	
l53182:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+0Bh))&0ffh,(7)&7
	goto	l53186
	line	85
	
l53184:; BSR set to: 0

;display.c: 85: else DisBuf[11] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+0Bh))&0ffh,(7)&7
	line	87
	
l53186:; BSR set to: 0

;display.c: 87: if(dat&0x40) DisBuf[13] |=(1<<7);
	
	btfss	((c:SEG3@dat))^00h,c,(6)&7
	goto	u12541
	goto	u12540
u12541:
	goto	l53190
u12540:
	
l53188:; BSR set to: 0

	bsf	(0+(7/8)+0+(_DisBuf+0Dh))&0ffh,(7)&7
	goto	l12992
	line	88
	
l53190:; BSR set to: 0

;display.c: 88: else DisBuf[13] &=~(1<<7);
	bcf	(0+(7/8)+0+(_DisBuf+0Dh))&0ffh,(7)&7
	line	90
	
l12992:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG3
	__end_of_SEG3:
	signat	_SEG3,8313
	global	_SEG2

;; *************** function _SEG2 *****************
;; Defined at:
;;		line 37 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;;  enable          1   31[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;;		_Display
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text79,class=CODE,space=0,reloc=2,group=0
	line	37
global __ptext79
__ptext79:
psect	text79
	file	"display.c"
	line	37
	global	__size_of_SEG2
	__size_of_SEG2	equ	__end_of_SEG2-_SEG2
	
_SEG2:
;incstack = 0
	opt	callstack 24
;SEG2@dat stored from wreg
	movwf	((c:SEG2@dat))^00h,c
	line	39
	
l53100:
;display.c: 39: if (enable)
	movf	((c:SEG2@enable))^00h,c,w
	btfsc	status,2
	goto	u12391
	goto	u12390
u12391:
	goto	l12972
u12390:
	goto	l12973
	line	41
	
l12972:
	line	42
;display.c: 41: else{;display.c: 42: if(dat&0x01) DisBuf[1] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(0)&7
	goto	u12401
	goto	u12400
u12401:
	goto	l53108
u12400:
	
l53106:
	movlb	0	; () banked
	bsf	(0+(6/8)+0+(_DisBuf+01h))&0ffh,(6)&7
	goto	l53110
	line	43
	
l53108:
;display.c: 43: else DisBuf[1] &=~(1<<6);
	movlb	0	; () banked
	bcf	(0+(6/8)+0+(_DisBuf+01h))&0ffh,(6)&7
	line	45
	
l53110:; BSR set to: 0

;display.c: 45: if(dat&0x02) DisBuf[3] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(1)&7
	goto	u12411
	goto	u12410
u12411:
	goto	l53114
u12410:
	
l53112:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+03h))&0ffh,(6)&7
	goto	l53116
	line	46
	
l53114:; BSR set to: 0

;display.c: 46: else DisBuf[3] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+03h))&0ffh,(6)&7
	line	48
	
l53116:; BSR set to: 0

;display.c: 48: if(dat&0x04) DisBuf[5] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(2)&7
	goto	u12421
	goto	u12420
u12421:
	goto	l53120
u12420:
	
l53118:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+05h))&0ffh,(6)&7
	goto	l53122
	line	49
	
l53120:; BSR set to: 0

;display.c: 49: else DisBuf[5] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+05h))&0ffh,(6)&7
	line	51
	
l53122:; BSR set to: 0

;display.c: 51: if(dat&0x08) DisBuf[7] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(3)&7
	goto	u12431
	goto	u12430
u12431:
	goto	l53126
u12430:
	
l53124:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+07h))&0ffh,(6)&7
	goto	l53128
	line	52
	
l53126:; BSR set to: 0

;display.c: 52: else DisBuf[7] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+07h))&0ffh,(6)&7
	line	54
	
l53128:; BSR set to: 0

;display.c: 54: if(dat&0x10) DisBuf[9] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(4)&7
	goto	u12441
	goto	u12440
u12441:
	goto	l53132
u12440:
	
l53130:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+09h))&0ffh,(6)&7
	goto	l53134
	line	55
	
l53132:; BSR set to: 0

;display.c: 55: else DisBuf[9] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+09h))&0ffh,(6)&7
	line	57
	
l53134:; BSR set to: 0

;display.c: 57: if(dat&0x20) DisBuf[11] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(5)&7
	goto	u12451
	goto	u12450
u12451:
	goto	l53138
u12450:
	
l53136:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+0Bh))&0ffh,(6)&7
	goto	l53140
	line	58
	
l53138:; BSR set to: 0

;display.c: 58: else DisBuf[11] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+0Bh))&0ffh,(6)&7
	line	60
	
l53140:; BSR set to: 0

;display.c: 60: if(dat&0x40) DisBuf[13] |=(1<<6);
	
	btfss	((c:SEG2@dat))^00h,c,(6)&7
	goto	u12461
	goto	u12460
u12461:
	goto	l53144
u12460:
	
l53142:; BSR set to: 0

	bsf	(0+(6/8)+0+(_DisBuf+0Dh))&0ffh,(6)&7
	goto	l12973
	line	61
	
l53144:; BSR set to: 0

;display.c: 61: else DisBuf[13] &=~(1<<6);
	bcf	(0+(6/8)+0+(_DisBuf+0Dh))&0ffh,(6)&7
	line	63
	
l12973:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG2
	__end_of_SEG2:
	signat	_SEG2,8313
	global	_SEG1

;; *************** function _SEG1 *****************
;; Defined at:
;;		line 10 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;;  enable          1   31[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;;		_Display
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text80,class=CODE,space=0,reloc=2,group=0
	line	10
global __ptext80
__ptext80:
psect	text80
	file	"display.c"
	line	10
	global	__size_of_SEG1
	__size_of_SEG1	equ	__end_of_SEG1-_SEG1
	
_SEG1:
;incstack = 0
	opt	callstack 24
;SEG1@dat stored from wreg
	movwf	((c:SEG1@dat))^00h,c
	line	12
	
l53054:
;display.c: 12: if (enable)
	movf	((c:SEG1@enable))^00h,c,w
	btfsc	status,2
	goto	u12311
	goto	u12310
u12311:
	goto	l12953
u12310:
	goto	l12954
	line	14
	
l12953:
	line	15
;display.c: 14: else{;display.c: 15: if(dat&0x01) DisBuf[1] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(0)&7
	goto	u12321
	goto	u12320
u12321:
	goto	l53062
u12320:
	
l53060:
	movlb	0	; () banked
	bsf	(0+(5/8)+0+(_DisBuf+01h))&0ffh,(5)&7
	goto	l53064
	line	16
	
l53062:
;display.c: 16: else DisBuf[1] &=~(1<<5);
	movlb	0	; () banked
	bcf	(0+(5/8)+0+(_DisBuf+01h))&0ffh,(5)&7
	line	18
	
l53064:; BSR set to: 0

;display.c: 18: if(dat&0x02) DisBuf[3] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(1)&7
	goto	u12331
	goto	u12330
u12331:
	goto	l53068
u12330:
	
l53066:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+03h))&0ffh,(5)&7
	goto	l53070
	line	19
	
l53068:; BSR set to: 0

;display.c: 19: else DisBuf[3] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+03h))&0ffh,(5)&7
	line	21
	
l53070:; BSR set to: 0

;display.c: 21: if(dat&0x04) DisBuf[5] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(2)&7
	goto	u12341
	goto	u12340
u12341:
	goto	l53074
u12340:
	
l53072:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+05h))&0ffh,(5)&7
	goto	l53076
	line	22
	
l53074:; BSR set to: 0

;display.c: 22: else DisBuf[5] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+05h))&0ffh,(5)&7
	line	24
	
l53076:; BSR set to: 0

;display.c: 24: if(dat&0x08) DisBuf[7] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(3)&7
	goto	u12351
	goto	u12350
u12351:
	goto	l53080
u12350:
	
l53078:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+07h))&0ffh,(5)&7
	goto	l53082
	line	25
	
l53080:; BSR set to: 0

;display.c: 25: else DisBuf[7] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+07h))&0ffh,(5)&7
	line	27
	
l53082:; BSR set to: 0

;display.c: 27: if(dat&0x10) DisBuf[9] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(4)&7
	goto	u12361
	goto	u12360
u12361:
	goto	l53086
u12360:
	
l53084:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+09h))&0ffh,(5)&7
	goto	l53088
	line	28
	
l53086:; BSR set to: 0

;display.c: 28: else DisBuf[9] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+09h))&0ffh,(5)&7
	line	30
	
l53088:; BSR set to: 0

;display.c: 30: if(dat&0x20) DisBuf[11] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(5)&7
	goto	u12371
	goto	u12370
u12371:
	goto	l53092
u12370:
	
l53090:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+0Bh))&0ffh,(5)&7
	goto	l53094
	line	31
	
l53092:; BSR set to: 0

;display.c: 31: else DisBuf[11] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Bh))&0ffh,(5)&7
	line	33
	
l53094:; BSR set to: 0

;display.c: 33: if(dat&0x40) DisBuf[13] |=(1<<5);
	
	btfss	((c:SEG1@dat))^00h,c,(6)&7
	goto	u12381
	goto	u12380
u12381:
	goto	l53098
u12380:
	
l53096:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+0Dh))&0ffh,(5)&7
	goto	l12954
	line	34
	
l53098:; BSR set to: 0

;display.c: 34: else DisBuf[13] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Dh))&0ffh,(5)&7
	line	36
	
l12954:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG1
	__end_of_SEG1:
	signat	_SEG1,8313
	global	_Label_Timing

;; *************** function _Label_Timing *****************
;; Defined at:
;;		line 455 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;; This function uses a non-reentrant model
;;
psect	text81,class=CODE,space=0,reloc=2,group=0
	line	455
global __ptext81
__ptext81:
psect	text81
	file	"display.c"
	line	455
	global	__size_of_Label_Timing
	__size_of_Label_Timing	equ	__end_of_Label_Timing-_Label_Timing
	
_Label_Timing:
;incstack = 0
	opt	callstack 23
;Label_Timing@sta stored from wreg
	movwf	((c:Label_Timing@sta))^00h,c
	line	457
	
l53414:
;display.c: 457: if(sta)
	movf	((c:Label_Timing@sta))^00h,c,w
	btfsc	status,2
	goto	u12921
	goto	u12920
u12921:
	goto	l53418
u12920:
	line	459
	
l53416:
;display.c: 458: {;display.c: 459: DisBuf[15] |=(1<<5);
	movlb	0	; () banked
	bsf	(0+(5/8)+0+(_DisBuf+0Fh))&0ffh,(5)&7
	line	460
;display.c: 460: }
	goto	l13230
	line	463
	
l53418:
;display.c: 461: else;display.c: 462: {;display.c: 463: DisBuf[15] &=~(1<<5);
	movlb	0	; () banked
	bcf	(0+(5/8)+0+(_DisBuf+0Fh))&0ffh,(5)&7
	line	465
	
l13230:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Timing
	__end_of_Label_Timing:
	signat	_Label_Timing,4217
	global	_Label_Running

;; *************** function _Label_Running *****************
;; Defined at:
;;		line 468 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;; This function uses a non-reentrant model
;;
psect	text82,class=CODE,space=0,reloc=2,group=0
	line	468
global __ptext82
__ptext82:
psect	text82
	file	"display.c"
	line	468
	global	__size_of_Label_Running
	__size_of_Label_Running	equ	__end_of_Label_Running-_Label_Running
	
_Label_Running:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_Running@sta stored from wreg
	movwf	((c:Label_Running@sta))^00h,c
	line	470
	
l53420:
;display.c: 470: if(sta)
	movf	((c:Label_Running@sta))^00h,c,w
	btfsc	status,2
	goto	u12931
	goto	u12930
u12931:
	goto	l53424
u12930:
	line	472
	
l53422:
;display.c: 471: {;display.c: 472: DisBuf[15] |=(1<<6);
	movlb	0	; () banked
	bsf	(0+(6/8)+0+(_DisBuf+0Fh))&0ffh,(6)&7
	line	473
;display.c: 473: }
	goto	l13235
	line	476
	
l53424:
;display.c: 474: else;display.c: 475: {;display.c: 476: DisBuf[15] &=~(1<<6);
	movlb	0	; () banked
	bcf	(0+(6/8)+0+(_DisBuf+0Fh))&0ffh,(6)&7
	line	478
	
l13235:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Running
	__end_of_Label_Running:
	signat	_Label_Running,4217
	global	_Label_Min

;; *************** function _Label_Min *****************
;; Defined at:
;;		line 480 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;; This function uses a non-reentrant model
;;
psect	text83,class=CODE,space=0,reloc=2,group=0
	line	480
global __ptext83
__ptext83:
psect	text83
	file	"display.c"
	line	480
	global	__size_of_Label_Min
	__size_of_Label_Min	equ	__end_of_Label_Min-_Label_Min
	
_Label_Min:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_Min@sta stored from wreg
	movwf	((c:Label_Min@sta))^00h,c
	line	482
	
l53426:
;display.c: 482: if(sta)
	movf	((c:Label_Min@sta))^00h,c,w
	btfsc	status,2
	goto	u12941
	goto	u12940
u12941:
	goto	l53430
u12940:
	line	484
	
l53428:
;display.c: 483: {;display.c: 484: DisBuf[15] |=(1<<7);
	movlb	0	; () banked
	bsf	(0+(7/8)+0+(_DisBuf+0Fh))&0ffh,(7)&7
	line	485
;display.c: 485: }
	goto	l13240
	line	488
	
l53430:
;display.c: 486: else;display.c: 487: {;display.c: 488: DisBuf[15] &=~(1<<7);
	movlb	0	; () banked
	bcf	(0+(7/8)+0+(_DisBuf+0Fh))&0ffh,(7)&7
	line	490
	
l13240:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_Min
	__end_of_Label_Min:
	signat	_Label_Min,4217
	global	_Engineering_Clear_WorkTime

;; *************** function _Engineering_Clear_WorkTime *****************
;; Defined at:
;;		line 384 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_BeepCtr1
;;		_Cmd_Process
;;		_Cmd_Send
;;		_E2prom_WriteData
;;		_Engineering_Timeout_Logic
;;		_Get_Engineering_KeyValue
;; This function is called by:
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text84,class=CODE,space=0,reloc=2,group=0
	file	"setsysdata.c"
	line	384
global __ptext84
__ptext84:
psect	text84
	file	"setsysdata.c"
	line	384
	global	__size_of_Engineering_Clear_WorkTime
	__size_of_Engineering_Clear_WorkTime	equ	__end_of_Engineering_Clear_WorkTime-_Engineering_Clear_WorkTime
	
_Engineering_Clear_WorkTime:; BSR set to: 0

;incstack = 0
	opt	callstack 20
	line	386
	
l55196:
;setsysdata.c: 386: Engineering_Pattern.Led_Displat_Enbale = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	387
;setsysdata.c: 387: Engineering_Pattern.Time_Start_Flag = 1;
	movlw	low(01h)
	movwf	((_Engineering_Pattern))&0ffh
	line	389
	
l55198:; BSR set to: 0

;setsysdata.c: 388: static int i = 0;;setsysdata.c: 389: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	390
	
l55200:
;setsysdata.c: 390: i++;
	movlb	1	; () banked
	infsnz	((Engineering_Clear_WorkTime@i))&0ffh
	incf	((Engineering_Clear_WorkTime@i+1))&0ffh
	line	391
	
l55202:; BSR set to: 1

;setsysdata.c: 391: if (i > 100)
	btfsc	((Engineering_Clear_WorkTime@i+1))&0ffh,7
	goto	u15251
	movf	((Engineering_Clear_WorkTime@i+1))&0ffh,w
	bnz	u15250
	movlw	101
	subwf	 ((Engineering_Clear_WorkTime@i))&0ffh,w
	btfss	status,0
	goto	u15251
	goto	u15250

u15251:
	goto	l55208
u15250:
	line	393
	
l55204:; BSR set to: 1

;setsysdata.c: 392: {;setsysdata.c: 393: i = 0;
	movlw	high(0)
	movwf	((Engineering_Clear_WorkTime@i+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Clear_WorkTime@i))&0ffh
	line	394
	
l55206:; BSR set to: 1

;setsysdata.c: 394: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	397
	
l55208:
;setsysdata.c: 395: };setsysdata.c: 397: Engineering_Pattern.IKey = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	398
	
l55210:; BSR set to: 0

;setsysdata.c: 398: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
	call	_Get_Engineering_KeyValue	;wreg free
	movf	(0+?_Get_Engineering_KeyValue)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	401
	
l55212:; BSR set to: 0

;setsysdata.c: 400: static int j = 0;;setsysdata.c: 401: j++;
	movlb	1	; () banked
	infsnz	((Engineering_Clear_WorkTime@j))&0ffh
	incf	((Engineering_Clear_WorkTime@j+1))&0ffh
	line	402
	
l55214:; BSR set to: 1

;setsysdata.c: 402: if (j < 100)
	btfsc	((Engineering_Clear_WorkTime@j+1))&0ffh,7
	goto	u15260
	movf	((Engineering_Clear_WorkTime@j+1))&0ffh,w
	bnz	u15261
	movlw	100
	subwf	 ((Engineering_Clear_WorkTime@j))&0ffh,w
	btfsc	status,0
	goto	u15261
	goto	u15260

u15261:
	goto	l55220
u15260:
	goto	l39061
	line	405
	
l55220:; BSR set to: 1

;setsysdata.c: 404: else;setsysdata.c: 405: j = 0;
	movlw	high(0)
	movwf	((Engineering_Clear_WorkTime@j+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Clear_WorkTime@j))&0ffh
	line	406
	
l55222:; BSR set to: 1

;setsysdata.c: 406: if (Engineering_Pattern.IKey == 2)
		movlw	2
	movlb	0	; () banked
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15271
	goto	u15270

u15271:
	goto	l39063
u15270:
	line	408
	
l55224:; BSR set to: 0

;setsysdata.c: 407: {;setsysdata.c: 408: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	409
	
l55226:
;setsysdata.c: 409: RunData.CumulativeTime = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_RunData+016h))&0ffh
	movlw	high(0)
	movwf	(1+(_RunData+016h))&0ffh
	movlw	low highword(0)
	movwf	(2+(_RunData+016h))&0ffh
	movlw	high highword(0)
	movwf	(3+(_RunData+016h))&0ffh
	line	410
	
l55228:; BSR set to: 0

;setsysdata.c: 410: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	411
	
l39063:; BSR set to: 0

	line	413
;setsysdata.c: 411: };setsysdata.c: 413: Engineering_Timeout_Logic(currentMode);
	movf	((c:_currentMode))^00h,c,w
	
	call	_Engineering_Timeout_Logic
	line	414
	
l55230:
;setsysdata.c: 414: if (Engineering_Pattern.Return_Flag == 1)
	movlb	0	; () banked
		decf	(0+(_Engineering_Pattern+05h))&0ffh,w
	btfss	status,2
	goto	u15281
	goto	u15280

u15281:
	goto	l39061
u15280:
	line	416
	
l55232:; BSR set to: 0

;setsysdata.c: 415: {;setsysdata.c: 416: Engineering_Pattern.Time_Start_Flag = 0;
	movlw	low(0)
	movwf	((_Engineering_Pattern))&0ffh
	line	417
;setsysdata.c: 417: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	418
;setsysdata.c: 418: Engineering_Pattern.Return_Flag = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	419
	
l55234:; BSR set to: 0

;setsysdata.c: 419: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	420
	
l55236:; BSR set to: 0

;setsysdata.c: 420: currentMode = ENGINEERING_MODE_IDLE;
	movlw	low(0)
	movwf	((c:_currentMode))^00h,c
	line	421
	
l55238:; BSR set to: 0

;setsysdata.c: 421: Engineering_Pattern.Led_Displat_Enbale = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	422
	
l55240:; BSR set to: 0

;setsysdata.c: 422: Engineering_Pattern.Mode = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	425
	
l39061:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Clear_WorkTime
	__end_of_Engineering_Clear_WorkTime:
	signat	_Engineering_Clear_WorkTime,89
	global	_Engineering_Adjust_JYTime

;; *************** function _Engineering_Adjust_JYTime *****************
;; Defined at:
;;		line 311 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_BeepCtr1
;;		_Cmd_Process
;;		_Cmd_Send
;;		_Display_CumulativeTime
;;		_E2prom_WriteData
;;		_Engineering_Timeout_Logic
;;		_Get_Engineering_KeyValue
;;		_SEG10
;;		_SEG11
;;		_SEG12
;;		_SEG13
;;		_SEG9
;;		_Update_Display
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_Goto_Engineering_Mode
;; This function uses a non-reentrant model
;;
psect	text85,class=CODE,space=0,reloc=2,group=0
	line	311
global __ptext85
__ptext85:
psect	text85
	file	"setsysdata.c"
	line	311
	global	__size_of_Engineering_Adjust_JYTime
	__size_of_Engineering_Adjust_JYTime	equ	__end_of_Engineering_Adjust_JYTime-_Engineering_Adjust_JYTime
	
_Engineering_Adjust_JYTime:
;incstack = 0
	opt	callstack 19
	line	313
	
l55404:
;setsysdata.c: 313: Engineering_Pattern.Led_Displat_Enbale = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	314
;setsysdata.c: 314: Engineering_Pattern.Time_Start_Flag = 1;
	movlw	low(01h)
	movwf	((_Engineering_Pattern))&0ffh
	line	316
	
l55406:; BSR set to: 0

;setsysdata.c: 316: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Displat_Enbale);
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@sum))^00h,c
	movlw	high(0)
	movwf	((c:Display_CumulativeTime@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:Display_CumulativeTime@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:Display_CumulativeTime@sum+3))^00h,c
	movlw	low(0)
	movwf	((c:Display_CumulativeTime@mode))^00h,c
	movff	0+(_Engineering_Pattern+07h),(c:Display_CumulativeTime@enable)
	call	_Display_CumulativeTime	;wreg free
	line	318
	
l55408:
;setsysdata.c: 317: static int i = 0;;setsysdata.c: 318: Cmd_Process();
	call	_Cmd_Process	;wreg free
	line	319
	
l55410:
;setsysdata.c: 319: i++;
	movlb	1	; () banked
	infsnz	((Engineering_Adjust_JYTime@i))&0ffh
	incf	((Engineering_Adjust_JYTime@i+1))&0ffh
	line	320
	
l55412:; BSR set to: 1

;setsysdata.c: 320: if (i > 100)
	btfsc	((Engineering_Adjust_JYTime@i+1))&0ffh,7
	goto	u15441
	movf	((Engineering_Adjust_JYTime@i+1))&0ffh,w
	bnz	u15440
	movlw	101
	subwf	 ((Engineering_Adjust_JYTime@i))&0ffh,w
	btfss	status,0
	goto	u15441
	goto	u15440

u15441:
	goto	l55418
u15440:
	line	322
	
l55414:; BSR set to: 1

;setsysdata.c: 321: {;setsysdata.c: 322: i = 0;
	movlw	high(0)
	movwf	((Engineering_Adjust_JYTime@i+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Adjust_JYTime@i))&0ffh
	line	323
	
l55416:; BSR set to: 1

;setsysdata.c: 323: Cmd_Send();
	call	_Cmd_Send	;wreg free
	line	326
	
l55418:
;setsysdata.c: 324: };setsysdata.c: 326: SEG9(ch_table[(RunData.XF_TimeSet / 10) % 10]);
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	0+(_RunData+01Ch),(c:___awdiv@dividend)
	movff	1+(_RunData+01Ch),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Adjust_JYTime+0+0)^00h,c
	movff	(??_Engineering_Adjust_JYTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG9
	line	327
	
l55420:; BSR set to: 0

;setsysdata.c: 327: SEG10(ch_table[RunData.XF_TimeSet % 10]);
	movff	0+(_RunData+01Ch),(c:___awmod@dividend)
	movff	1+(_RunData+01Ch),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Adjust_JYTime+0+0)^00h,c
	movff	(??_Engineering_Adjust_JYTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG10
	line	328
	
l55422:; BSR set to: 0

;setsysdata.c: 328: SEG11(0x00);
	movlw	(0)&0ffh
	
	call	_SEG11
	line	329
	
l55424:; BSR set to: 0

;setsysdata.c: 329: SEG12(ch_table[(RunData.JY_TimeSet / 10) % 10]);
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	0+(_RunData+01Ah),(c:___awdiv@dividend)
	movff	1+(_RunData+01Ah),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Adjust_JYTime+0+0)^00h,c
	movff	(??_Engineering_Adjust_JYTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG12
	line	330
	
l55426:; BSR set to: 0

;setsysdata.c: 330: SEG13(ch_table[RunData.JY_TimeSet % 10]);
	movff	0+(_RunData+01Ah),(c:___awmod@dividend)
	movff	1+(_RunData+01Ah),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Engineering_Adjust_JYTime+0+0)^00h,c
	movff	(??_Engineering_Adjust_JYTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG13
	line	331
	
l55428:; BSR set to: 0

;setsysdata.c: 331: Update_Display();
	call	_Update_Display	;wreg free
	line	334
	
l55430:
;setsysdata.c: 333: static int j = 0;;setsysdata.c: 334: j++;
	movlb	1	; () banked
	infsnz	((Engineering_Adjust_JYTime@j))&0ffh
	incf	((Engineering_Adjust_JYTime@j+1))&0ffh
	line	335
	
l55432:; BSR set to: 1

;setsysdata.c: 335: if (j < 100)
	btfsc	((Engineering_Adjust_JYTime@j+1))&0ffh,7
	goto	u15450
	movf	((Engineering_Adjust_JYTime@j+1))&0ffh,w
	bnz	u15451
	movlw	100
	subwf	 ((Engineering_Adjust_JYTime@j))&0ffh,w
	btfsc	status,0
	goto	u15451
	goto	u15450

u15451:
	goto	l55438
u15450:
	goto	l39046
	line	338
	
l55438:; BSR set to: 1

;setsysdata.c: 337: else;setsysdata.c: 338: j = 0;
	movlw	high(0)
	movwf	((Engineering_Adjust_JYTime@j+1))&0ffh
	movlw	low(0)
	movwf	((Engineering_Adjust_JYTime@j))&0ffh
	
l39047:; BSR set to: 1

	line	341
;setsysdata.c: 341: Engineering_Pattern.IKey = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	342
	
l55440:; BSR set to: 0

;setsysdata.c: 342: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
	call	_Get_Engineering_KeyValue	;wreg free
	movf	(0+?_Get_Engineering_KeyValue)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+04h))&0ffh
	line	346
	
l55442:; BSR set to: 0

;setsysdata.c: 346: if (Engineering_Pattern.IKey == 3)
		movlw	3
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15461
	goto	u15460

u15461:
	goto	l55454
u15460:
	line	348
	
l55444:; BSR set to: 0

;setsysdata.c: 347: {;setsysdata.c: 348: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	349
	
l55446:
;setsysdata.c: 349: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	350
	
l55448:; BSR set to: 0

;setsysdata.c: 350: RunData.XF_TimeSet++;
	infsnz	(0+(_RunData+01Ch))&0ffh
	incf	(1+(_RunData+01Ch))&0ffh
	line	351
	
l55450:; BSR set to: 0

;setsysdata.c: 351: if (RunData.XF_TimeSet > 90)
	btfsc	(1+(_RunData+01Ch))&0ffh,7
	goto	u15471
	movf	(1+(_RunData+01Ch))&0ffh,w
	bnz	u15470
	movlw	91
	subwf	 (0+(_RunData+01Ch))&0ffh,w
	btfss	status,0
	goto	u15471
	goto	u15470

u15471:
	goto	l55454
u15470:
	line	353
	
l55452:; BSR set to: 0

;setsysdata.c: 352: {;setsysdata.c: 353: RunData.XF_TimeSet = 20;
	movlw	high(014h)
	movwf	(1+(_RunData+01Ch))&0ffh
	movlw	low(014h)
	movwf	(0+(_RunData+01Ch))&0ffh
	line	358
	
l55454:; BSR set to: 0

;setsysdata.c: 354: };setsysdata.c: 355: };setsysdata.c: 358: if (Engineering_Pattern.IKey == 4)
		movlw	4
	xorwf	(0+(_Engineering_Pattern+04h))&0ffh,w
	btfss	status,2
	goto	u15481
	goto	u15480

u15481:
	goto	l55466
u15480:
	line	360
	
l55456:; BSR set to: 0

;setsysdata.c: 359: {;setsysdata.c: 360: BeepCtr1(Engineering_Pattern.IKey);
	movff	0+(_Engineering_Pattern+04h),(c:BeepCtr1@value)
	clrf	((c:BeepCtr1@value+1))^00h,c
	call	_BeepCtr1	;wreg free
	line	361
	
l55458:
;setsysdata.c: 361: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	362
	
l55460:; BSR set to: 0

;setsysdata.c: 362: RunData.JY_TimeSet++;
	infsnz	(0+(_RunData+01Ah))&0ffh
	incf	(1+(_RunData+01Ah))&0ffh
	line	363
	
l55462:; BSR set to: 0

;setsysdata.c: 363: if (RunData.JY_TimeSet > 20)
	btfsc	(1+(_RunData+01Ah))&0ffh,7
	goto	u15491
	movf	(1+(_RunData+01Ah))&0ffh,w
	bnz	u15490
	movlw	21
	subwf	 (0+(_RunData+01Ah))&0ffh,w
	btfss	status,0
	goto	u15491
	goto	u15490

u15491:
	goto	l55466
u15490:
	line	365
	
l55464:; BSR set to: 0

;setsysdata.c: 364: {;setsysdata.c: 365: RunData.JY_TimeSet = 0;
	movlw	high(0)
	movwf	(1+(_RunData+01Ah))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+01Ah))&0ffh
	line	369
	
l55466:; BSR set to: 0

;setsysdata.c: 366: };setsysdata.c: 367: };setsysdata.c: 369: Engineering_Timeout_Logic(currentMode);
	movf	((c:_currentMode))^00h,c,w
	
	call	_Engineering_Timeout_Logic
	line	370
	
l55468:
;setsysdata.c: 370: if (Engineering_Pattern.Return_Flag == 1)
	movlb	0	; () banked
		decf	(0+(_Engineering_Pattern+05h))&0ffh,w
	btfss	status,2
	goto	u15501
	goto	u15500

u15501:
	goto	l39046
u15500:
	line	372
	
l55470:; BSR set to: 0

;setsysdata.c: 371: {;setsysdata.c: 372: Engineering_Pattern.Time_Start_Flag = 0;
	movlw	low(0)
	movwf	((_Engineering_Pattern))&0ffh
	line	373
;setsysdata.c: 373: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	374
;setsysdata.c: 374: Engineering_Pattern.Return_Flag = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	375
	
l55472:; BSR set to: 0

;setsysdata.c: 375: E2prom_WriteData();
	call	_E2prom_WriteData	;wreg free
	line	376
	
l55474:; BSR set to: 0

;setsysdata.c: 376: Engineering_Pattern.Led_Displat_Enbale = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+07h))&0ffh
	line	377
	
l55476:; BSR set to: 0

;setsysdata.c: 377: currentMode = ENGINEERING_MODE_IDLE;
	movlw	low(0)
	movwf	((c:_currentMode))^00h,c
	line	378
	
l55478:; BSR set to: 0

;setsysdata.c: 378: Engineering_Pattern.Mode = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+06h))&0ffh
	line	381
	
l39046:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Adjust_JYTime
	__end_of_Engineering_Adjust_JYTime:
	signat	_Engineering_Adjust_JYTime,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    9[COMRAM] int 
;;  divisor         2   11[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   14[COMRAM] unsigned char 
;;  counter         1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_VoiceDrive
;;		_TimingClosureSet
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text86,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awmod.c"
	line	7
global __ptext86
__ptext86:
psect	text86
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awmod.c"
	line	7
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	callstack 24
	line	12
	
l54720:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l54722:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u14450
	goto	u14451

u14451:
	goto	l54728
u14450:
	line	14
	
l54724:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l54726:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l54728:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u14460
	goto	u14461

u14461:
	goto	l54732
u14460:
	line	18
	
l54730:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l54732:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u14471
	goto	u14470

u14471:
	goto	l54748
u14470:
	line	20
	
l54734:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l54738
	line	22
	
l54736:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l54738:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u14481
	goto	u14480
u14481:
	goto	l54736
u14480:
	line	26
	
l54740:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u14491
	goto	u14490

u14491:
	goto	l54744
u14490:
	line	27
	
l54742:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l54744:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l54746:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l54740
	line	31
	
l54748:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u14501
	goto	u14500
u14501:
	goto	l54752
u14500:
	line	32
	
l54750:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l54752:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l42269:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   15[COMRAM] int 
;;  divisor         2   17[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   21[COMRAM] int 
;;  sign            1   20[COMRAM] unsigned char 
;;  counter         1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   15[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text87,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext87
__ptext87:
psect	text87
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\awdiv.c"
	line	7
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	callstack 23
	line	13
	
l54676:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l54678:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u14390
	goto	u14391

u14391:
	goto	l54684
u14390:
	line	15
	
l54680:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l54682:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l54684:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u14400
	goto	u14401

u14401:
	goto	l54690
u14400:
	line	19
	
l54686:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l54688:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l54690:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l54692:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u14411
	goto	u14410

u14411:
	goto	l54712
u14410:
	line	24
	
l54694:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l54698
	line	26
	
l54696:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l54698:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u14421
	goto	u14420
u14421:
	goto	l54696
u14420:
	line	30
	
l54700:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l54702:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u14431
	goto	u14430

u14431:
	goto	l54708
u14430:
	line	32
	
l54704:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l54706:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l54708:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l54710:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l54700
	line	38
	
l54712:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u14441
	goto	u14440
u14441:
	goto	l54716
u14440:
	line	39
	
l54714:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l54716:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l42256:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Update_Display

;; *************** function _Update_Display *****************
;; Defined at:
;;		line 238 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_TM1629_WriteDat
;; This function is called by:
;;		_main
;;		_TM1629Init
;;		_ERR_Code
;;		_ErrorCtr
;;		_control
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text88,class=CODE,space=0,reloc=2,group=0
	file	"tm1629b.c"
	line	238
global __ptext88
__ptext88:
psect	text88
	file	"tm1629b.c"
	line	238
	global	__size_of_Update_Display
	__size_of_Update_Display	equ	__end_of_Update_Display-_Update_Display
	
_Update_Display:
;incstack = 0
	opt	callstack 21
	line	241
	
l53674:
;tm1629b.c: 241: TM1629_WriteDat(DisBuf);
		movlw	low(_DisBuf)
	movwf	((c:TM1629_WriteDat@InDat))^00h,c

	call	_TM1629_WriteDat	;wreg free
	line	242
	
l10439:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Update_Display
	__end_of_Update_Display:
	signat	_Update_Display,89
	global	_TM1629_WriteDat

;; *************** function _TM1629_WriteDat *****************
;; Defined at:
;;		line 218 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;  InDat           1   14[COMRAM] PTR unsigned char 
;;		 -> DisBuf(16), 
;; Auto vars:     Size  Location     Type
;;  i               1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Nop1629
;;		_TM1629_WriteByteData
;;		_TM1629_WriteCommand
;; This function is called by:
;;		_Update_Display
;; This function uses a non-reentrant model
;;
psect	text89,class=CODE,space=0,reloc=2,group=0
	line	218
global __ptext89
__ptext89:
psect	text89
	file	"tm1629b.c"
	line	218
	global	__size_of_TM1629_WriteDat
	__size_of_TM1629_WriteDat	equ	__end_of_TM1629_WriteDat-_TM1629_WriteDat
	
_TM1629_WriteDat:
;incstack = 0
	opt	callstack 21
	line	221
	
l53034:
;tm1629b.c: 220: u8 i;;tm1629b.c: 221: LATAbits.LATA1 = 1;
	bsf	((c:3977))^0f00h,c,1	;volatile
	line	222
;tm1629b.c: 222: LATAbits.LATA0 = 1;
	bsf	((c:3977))^0f00h,c,0	;volatile
	line	224
;tm1629b.c: 224: LATAbits.LATA2 = 1;
	bsf	((c:3977))^0f00h,c,2	;volatile
	line	225
	
l53036:
;tm1629b.c: 225: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	226
;tm1629b.c: 226: TM1629_WriteCommand(0x40) ;
	movlw	(040h)&0ffh
	
	call	_TM1629_WriteCommand
	line	229
	
l53038:
;tm1629b.c: 229: LATAbits.LATA2 = 1 ;
	bsf	((c:3977))^0f00h,c,2	;volatile
	line	230
;tm1629b.c: 230: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	231
;tm1629b.c: 231: TM1629_WriteCommand(0xC0);
	movlw	(0C0h)&0ffh
	
	call	_TM1629_WriteCommand
	line	234
	
l53040:
;tm1629b.c: 234: for(i=0;i<16;i++)
	movlw	low(0)
	movwf	((c:TM1629_WriteDat@i))^00h,c
	line	235
	
l53046:
;tm1629b.c: 235: TM1629_WriteByteData(*InDat++);
	movf	((c:TM1629_WriteDat@InDat))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_TM1629_WriteByteData
	
l53048:
	incf	((c:TM1629_WriteDat@InDat))^00h,c
	line	234
	
l53050:
	incf	((c:TM1629_WriteDat@i))^00h,c
	
l53052:
		movlw	010h-1
	cpfsgt	((c:TM1629_WriteDat@i))^00h,c
	goto	u12301
	goto	u12300

u12301:
	goto	l53046
u12300:
	line	237
	
l10436:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TM1629_WriteDat
	__end_of_TM1629_WriteDat:
	signat	_TM1629_WriteDat,4217
	global	_TM1629_WriteCommand

;; *************** function _TM1629_WriteCommand *****************
;; Defined at:
;;		line 139 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;  Comm            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Comm            1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Nop1629
;;		_TM1629_WriteByteData
;; This function is called by:
;;		_TM1629_WriteDat
;;		_TM1629_Luminance
;; This function uses a non-reentrant model
;;
psect	text90,class=CODE,space=0,reloc=2,group=0
	line	139
global __ptext90
__ptext90:
psect	text90
	file	"tm1629b.c"
	line	139
	global	__size_of_TM1629_WriteCommand
	__size_of_TM1629_WriteCommand	equ	__end_of_TM1629_WriteCommand-_TM1629_WriteCommand
	
_TM1629_WriteCommand:
;incstack = 0
	opt	callstack 21
;TM1629_WriteCommand@Comm stored from wreg
	movwf	((c:TM1629_WriteCommand@Comm))^00h,c
	line	141
	
l52812:
;tm1629b.c: 141: LATAbits.LATA2 = 0 ;
	bcf	((c:3977))^0f00h,c,2	;volatile
	line	142
	
l52814:
;tm1629b.c: 142: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	143
;tm1629b.c: 143: TM1629_WriteByteData(Comm);
	movf	((c:TM1629_WriteCommand@Comm))^00h,c,w
	
	call	_TM1629_WriteByteData
	line	145
	
l10431:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TM1629_WriteCommand
	__end_of_TM1629_WriteCommand:
	signat	_TM1629_WriteCommand,4217
	global	_TM1629_WriteByteData

;; *************** function _TM1629_WriteByteData *****************
;; Defined at:
;;		line 110 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1   11[COMRAM] unsigned char 
;;  i               1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Nop1629
;; This function is called by:
;;		_TM1629_WriteCommand
;;		_TM1629_WriteDat
;; This function uses a non-reentrant model
;;
psect	text91,class=CODE,space=0,reloc=2,group=0
	line	110
global __ptext91
__ptext91:
psect	text91
	file	"tm1629b.c"
	line	110
	global	__size_of_TM1629_WriteByteData
	__size_of_TM1629_WriteByteData	equ	__end_of_TM1629_WriteByteData-_TM1629_WriteByteData
	
_TM1629_WriteByteData:
;incstack = 0
	opt	callstack 21
;TM1629_WriteByteData@Data stored from wreg
	movwf	((c:TM1629_WriteByteData@Data))^00h,c
	line	114
	
l52548:
;tm1629b.c: 112: u8 i;;tm1629b.c: 114: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	115
	
l52550:
;tm1629b.c: 115: for(i=8;i>0;i--)
	movlw	low(08h)
	movwf	((c:TM1629_WriteByteData@i))^00h,c
	line	116
	
l10424:
	line	117
;tm1629b.c: 116: {;tm1629b.c: 117: LATAbits.LATA0 = 0;
	bcf	((c:3977))^0f00h,c,0	;volatile
	line	118
;tm1629b.c: 118: if(Data & 0x01)
	
	btfss	((c:TM1629_WriteByteData@Data))^00h,c,(0)&7
	goto	u11791
	goto	u11790
u11791:
	goto	l10426
u11790:
	line	120
	
l52556:
;tm1629b.c: 119: {;tm1629b.c: 120: LATAbits.LATA1 = 1 ;
	bsf	((c:3977))^0f00h,c,1	;volatile
	line	121
;tm1629b.c: 121: }
	goto	l52558
	line	122
	
l10426:
	line	124
;tm1629b.c: 122: else;tm1629b.c: 123: {;tm1629b.c: 124: LATAbits.LATA1 = 0 ;
	bcf	((c:3977))^0f00h,c,1	;volatile
	line	126
	
l52558:
;tm1629b.c: 125: };tm1629b.c: 126: Data >>= 1 ;
	bcf status,0
	rrcf	((c:TM1629_WriteByteData@Data))^00h,c

	line	127
	
l52560:
;tm1629b.c: 127: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	129
	
l52562:
;tm1629b.c: 129: LATAbits.LATA0 = 1 ;
	bsf	((c:3977))^0f00h,c,0	;volatile
	line	130
	
l52564:
;tm1629b.c: 130: Nop1629(10) ;
	movlw	high(0Ah)
	movwf	((c:Nop1629@T_Dly+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:Nop1629@T_Dly))^00h,c
	call	_Nop1629	;wreg free
	line	115
	
l52566:
	decf	((c:TM1629_WriteByteData@i))^00h,c
	
l52568:
	movf	((c:TM1629_WriteByteData@i))^00h,c,w
	btfss	status,2
	goto	u11801
	goto	u11800
u11801:
	goto	l10424
u11800:
	line	132
	
l10428:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_TM1629_WriteByteData
	__end_of_TM1629_WriteByteData:
	signat	_TM1629_WriteByteData,4217
	global	_Nop1629

;; *************** function _Nop1629 *****************
;; Defined at:
;;		line 96 in file "tm1629b.c"
;; Parameters:    Size  Location     Type
;;  T_Dly           2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TM1629_WriteByteData
;;		_TM1629_WriteCommand
;;		_TM1629_WriteDat
;;		_TM1629_Luminance
;; This function uses a non-reentrant model
;;
psect	text92,class=CODE,space=0,reloc=2,group=0
	line	96
global __ptext92
__ptext92:
psect	text92
	file	"tm1629b.c"
	line	96
	global	__size_of_Nop1629
	__size_of_Nop1629	equ	__end_of_Nop1629-_Nop1629
	
_Nop1629:
;incstack = 0
	opt	callstack 21
	line	98
	
l52532:
;tm1629b.c: 98: while(T_Dly--);
	
l52534:
	decf	((c:Nop1629@T_Dly))^00h,c
	btfss	status,0
	decf	((c:Nop1629@T_Dly+1))^00h,c
		incf	((c:Nop1629@T_Dly))^00h,c,w
	bnz	u11771
	incf	((c:Nop1629@T_Dly+1))^00h,c,w
	btfss	status,2
	goto	u11771
	goto	u11770

u11771:
	goto	l52534
u11770:
	line	102
	
l10421:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Nop1629
	__end_of_Nop1629:
	signat	_Nop1629,4217
	global	_Get_Engineering_KeyValue

;; *************** function _Get_Engineering_KeyValue *****************
;; Defined at:
;;		line 270 in file "irkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  IRData_HexSt   20   45[COMRAM] unsigned char [20]
;;  ret             2   65[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   43[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:        22       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        24       0       0       0       0       0       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_sprintf
;;		_strcmp
;; This function is called by:
;;		_Goto_Engineering_Mode
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text93,class=CODE,space=0,reloc=2,group=0
	file	"irkey.c"
	line	270
global __ptext93
__ptext93:
psect	text93
	file	"irkey.c"
	line	270
	global	__size_of_Get_Engineering_KeyValue
	__size_of_Get_Engineering_KeyValue	equ	__end_of_Get_Engineering_KeyValue-_Get_Engineering_KeyValue
	
_Get_Engineering_KeyValue:
;incstack = 0
	opt	callstack 21
	line	272
	
l54620:
;irkey.c: 272: u16 ret = 0;
	movlw	high(0)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(0)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	line	273
;irkey.c: 273: if (IRData.Sta)
	movlb	1	; () banked
	movf	(0+(_IRData+0Ch))&0ffh,w
	btfsc	status,2
	goto	u14301
	goto	u14300
u14301:
	goto	l54640
u14300:
	line	276
	
l54622:; BSR set to: 1

;irkey.c: 274: {;irkey.c: 275: char IRData_HexString[20];;irkey.c: 276: sprintf(IRData_HexString, "%X", IRData.Value);
		movlw	low(Get_Engineering_KeyValue@IRData_HexString)
	movwf	((c:sprintf@wh))^00h,c

		movlw	low(STR_3)
	movwf	((c:sprintf@f))^00h,c

	movff	(_IRData),0+((c:?_sprintf)+02h)
	movff	(_IRData+1),1+((c:?_sprintf)+02h)
	movff	(_IRData+2),2+((c:?_sprintf)+02h)
	movff	(_IRData+3),3+((c:?_sprintf)+02h)
	call	_sprintf	;wreg free
	line	278
	
l54624:
;irkey.c: 278: if (strcmp(IRData_HexString, "A05F") == 0)
		movlw	low(Get_Engineering_KeyValue@IRData_HexString)
	movwf	((c:strcmp@s1))^00h,c

		movlw	low(STR_4)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u14311
	goto	u14310

u14311:
	goto	l54628
u14310:
	line	280
	
l54626:
;irkey.c: 279: {;irkey.c: 280: ret = 1;
	movlw	high(01h)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(01h)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	line	282
	
l54628:
;irkey.c: 281: };irkey.c: 282: if (strcmp(IRData_HexString, "B04F") == 0)
		movlw	low(Get_Engineering_KeyValue@IRData_HexString)
	movwf	((c:strcmp@s1))^00h,c

		movlw	low(STR_5)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u14321
	goto	u14320

u14321:
	goto	l54632
u14320:
	line	284
	
l54630:
;irkey.c: 283: {;irkey.c: 284: ret = 2;
	movlw	high(02h)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(02h)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	line	287
	
l54632:
;irkey.c: 285: };irkey.c: 287: if (strcmp(IRData_HexString, "10EF") == 0)
		movlw	low(Get_Engineering_KeyValue@IRData_HexString)
	movwf	((c:strcmp@s1))^00h,c

		movlw	low(STR_6)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u14331
	goto	u14330

u14331:
	goto	l54636
u14330:
	line	289
	
l54634:
;irkey.c: 288: {;irkey.c: 289: ret = 3;
	movlw	high(03h)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(03h)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	line	292
	
l54636:
;irkey.c: 290: };irkey.c: 292: if (strcmp(IRData_HexString, "50AF") == 0)
		movlw	low(Get_Engineering_KeyValue@IRData_HexString)
	movwf	((c:strcmp@s1))^00h,c

		movlw	low(STR_7)
	movwf	((c:strcmp@s2))^00h,c

	call	_strcmp	;wreg free
	movf	(0+?_strcmp)^00h,c,w
iorwf	(1+?_strcmp)^00h,c,w
	btfss	status,2
	goto	u14341
	goto	u14340

u14341:
	goto	l54642
u14340:
	line	294
	
l54638:
;irkey.c: 293: {;irkey.c: 294: ret = 4;
	movlw	high(04h)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(04h)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	goto	l54642
	line	299
	
l54640:; BSR set to: 1

;irkey.c: 297: else;irkey.c: 298: {;irkey.c: 299: IRData.RmtCnt = 0;
	movlw	high(0)
	movwf	(1+(_IRData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_IRData+012h))&0ffh
	line	301
;irkey.c: 301: IRData.get_w = 0;
	movlw	low(0)
	movwf	(0+(_IRData+0Dh))&0ffh
	line	303
;irkey.c: 303: ret = 0;
	movlw	high(0)
	movwf	((c:Get_Engineering_KeyValue@ret+1))^00h,c
	movlw	low(0)
	movwf	((c:Get_Engineering_KeyValue@ret))^00h,c
	line	305
	
l54642:
;irkey.c: 304: };irkey.c: 305: return ret;
	movff	(c:Get_Engineering_KeyValue@ret),(c:?_Get_Engineering_KeyValue)
	movff	(c:Get_Engineering_KeyValue@ret+1),(c:?_Get_Engineering_KeyValue+1)
	line	306
	
l33760:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Get_Engineering_KeyValue
	__end_of_Get_Engineering_KeyValue:
	signat	_Get_Engineering_KeyValue,90
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    9[COMRAM] PTR const unsigned char 
;;		 -> Get_Engineering_KeyValue@IRData_HexString(20), 
;;  s2              1   10[COMRAM] PTR const unsigned char 
;;		 -> STR_7(5), STR_6(5), STR_5(5), STR_4(5), 
;; Auto vars:     Size  Location     Type
;;  r               1   13[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_Engineering_KeyValue
;; This function uses a non-reentrant model
;;
psect	text94,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext94
__ptext94:
psect	text94
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:
;incstack = 0
	opt	callstack 23
	line	37
	
l53480:
	goto	l53484
	line	38
	
l53482:
	incf	((c:strcmp@s1))^00h,c
	line	39
	incf	((c:strcmp@s2))^00h,c
	line	37
	
l53484:
	movff	(c:strcmp@s2),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,??_strcmp+0+0
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_strcmp+1+0)^00h,c
	movf	(??_strcmp+0+0)^00h,c,w
	subwf	((??_strcmp+1+0))^00h,c,w
	movwf	((c:strcmp@r))^00h,c
	movf	((c:strcmp@r))^00h,c,w
	btfss	status,2
	goto	u13011
	goto	u13010
u13011:
	goto	l53488
u13010:
	
l53486:
	movf	((c:strcmp@s1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u13021
	goto	u13020
u13021:
	goto	l53482
u13020:
	line	41
	
l53488:
	movf	((c:strcmp@r))^00h,c,w
	movwf	((c:?_strcmp))^00h,c
	clrf	((c:?_strcmp+1))^00h,c
	btfsc	((c:?_strcmp))^00h,c,7
	decf	((c:?_strcmp+1))^00h,c
	line	42
	
l42708:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\sprintf.c"
;; Parameters:    Size  Location     Type
;;  wh              1   32[COMRAM] PTR unsigned char 
;;		 -> Get_Engineering_KeyValue@IRData_HexString(20), 
;;  f               1   33[COMRAM] PTR const unsigned char 
;;		 -> STR_3(3), 
;; Auto vars:     Size  Location     Type
;;  pb              4   39[COMRAM] struct __prbuf
;;  ap              1   38[COMRAM] PTR void [1]
;;		 -> ?_sprintf(2), ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   32[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		__doprnt
;; This function is called by:
;;		_Get_Engineering_KeyValue
;; This function uses a non-reentrant model
;;
psect	text95,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\sprintf.c"
	line	13
global __ptext95
__ptext95:
psect	text95
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\sprintf.c"
	line	13
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:
;incstack = 0
	opt	callstack 21
	line	31
	
l53472:; BSR set to: 1

		movff	(c:sprintf@wh),(c:sprintf@pb)
	clrf	((c:sprintf@pb+1))^00h,c

	line	32
		movlw	low(0)
	movwf	(0+((c:sprintf@pb)+02h))^00h,c
	movlw	high(0)
	movwf	(1+((c:sprintf@pb)+02h))^00h,c

	line	33
		movlw	low(?_sprintf+02h)
	movwf	((c:sprintf@ap))^00h,c

	line	34
	
l53474:; BSR set to: 1

		movlw	low(sprintf@pb)
	movwf	((c:__doprnt@pb))^00h,c

		movff	(c:sprintf@f),(c:__doprnt@f)

		movlw	low(sprintf@ap)
	movwf	((c:__doprnt@ap))^00h,c

	call	__doprnt	;wreg free
	line	35
	
l53476:
	movff	(c:sprintf@pb),fsr2l
	movff	(c:sprintf@pb+1),fsr2h
	movlw	low(0)
	movwf	indf2
	line	38
	
l42700:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	__doprnt

;; *************** function __doprnt *****************
;; Defined at:
;;		line 471 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  pb              1   21[COMRAM] PTR struct __prbuf
;;		 -> sprintf@pb(4), printf@pb(4), 
;;  f               1   22[COMRAM] PTR const unsigned char 
;;		 -> STR_3(3), STR_2(10), STR_1(8), 
;;  ap              1   23[COMRAM] PTR PTR void 
;;		 -> sprintf@ap(1), printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  idx             1   27[COMRAM] unsigned char 
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  val             2   28[COMRAM] unsigned int 
;;  len             2    0        unsigned int 
;;  c               1   31[COMRAM] unsigned char 
;;  prec            1   30[COMRAM] char 
;;  flag            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclath, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 30/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Absolute function
;;		___lwdiv
;;		_putch
;; This function is called by:
;;		_printf
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text96,class=CODE,space=0,reloc=2,group=0
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\doprnt.c"
	line	471
global __ptext96
__ptext96:
psect	text96
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\doprnt.c"
	line	471
	global	__size_of__doprnt
	__size_of__doprnt	equ	__end_of__doprnt-__doprnt
	
__doprnt:
;incstack = 0
	opt	callstack 24
	line	553
	
l52836:
;doprnt.c: 512: char c;;doprnt.c: 521: signed char prec;;doprnt.c: 525: unsigned char flag;;doprnt.c: 540: union {;doprnt.c: 541: unsigned long vd;;doprnt.c: 542: double integ;;doprnt.c: 543: } tmpval;;doprnt.c: 545: unsigned int val;;doprnt.c: 546: unsigned len;;doprnt.c: 547: const char * cp;;doprnt.c: 553: while((c = *f++)) {
	goto	l52884
	line	555
	
l52838:
;doprnt.c: 555: if(c != '%')
		movlw	37
	xorwf	((c:__doprnt@c))^00h,c,w
	btfsc	status,2
	goto	u12101
	goto	u12100

u12101:
	goto	l52848
u12100:
	line	558
	
l52840:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	postinc2,w
iorwf	postinc2,w
	btfsc	status,2
	goto	u12111
	goto	u12110

u12111:
	goto	l52844
u12110:
	
l52842:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	call	u12128
	goto	u12129
u12128:
	push
	movwf	pclath
	movf	postinc2,w
	movwf	tosl
	movf	postinc2,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movf	((c:__doprnt@c))^00h,c,w
	
	return	;indir
	u12129:
	goto	l52836
	
l52844:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??__doprnt+0+0
	movff	postdec2,??__doprnt+0+0+1
	movff	??__doprnt+0+0,fsr2l
	movff	??__doprnt+0+1,fsr2h
	movff	(c:__doprnt@c),indf2

	
l52846:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	goto	l52836
	line	565
	
l52848:
	line	661
;doprnt.c: 661: switch(c = *f++) {
	
l52852:
	incf	((c:__doprnt@f))^00h,c
	decf	((c:__doprnt@f))^00h,c,w
	movwf	(??__doprnt+0+0)^00h,c
	movff	(??__doprnt+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:__doprnt@c)
	movf	((c:__doprnt@c))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l52886
	xorlw	88^0	; case 88
	skipnz
	goto	l52854
	xorlw	120^88	; case 120
	skipnz
	goto	l52854
	goto	l52884

	line	1312
	
l52854:
;doprnt.c: 1299: {;doprnt.c: 1312: val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	((c:__doprnt@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:__doprnt@val)
	movff	postinc2,(c:__doprnt@val+1)
	line	1342
	
l52856:
;doprnt.c: 1313: };doprnt.c: 1342: for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
	movlw	low(01h)
	movwf	((c:__doprnt@c))^00h,c
	line	1343
	
l52862:
;doprnt.c: 1343: if(val < hexpowers[c])
	movf	((c:__doprnt@c))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_hexpowers)
	movwf	(??__doprnt+0+0)^00h,c
	movff	(??__doprnt+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
		tblrd	*+
	movf	tablat,w
	subwf	((c:__doprnt@val))^00h,c,w
	tblrd	*+
	movf	tablat,w
	subwfb	((c:__doprnt@val+1))^00h,c,w
	btfsc	status,0
	goto	u12131
	goto	u12130

u12131:
	goto	l52866
u12130:
	goto	l39130
	line	1342
	
l52866:
	incf	((c:__doprnt@c))^00h,c
	
l52868:
		movlw	4
	xorwf	((c:__doprnt@c))^00h,c,w
	btfss	status,2
	goto	u12141
	goto	u12140

u12141:
	goto	l52862
u12140:
	
l39130:
	line	1498
;doprnt.c: 1448: {;doprnt.c: 1495: };doprnt.c: 1498: prec = c;
	movff	(c:__doprnt@c),(c:__doprnt@prec)
	line	1500
;doprnt.c: 1500: while(prec--) {
	goto	l52882
	line	1526
	
l52870:
;doprnt.c: 1504: {;doprnt.c: 1525: {;doprnt.c: 1526: unsigned char idx = (val / hexpowers[(unsigned char)prec]) & 0xF;
	movff	(c:__doprnt@val),(c:___lwdiv@dividend)
	movff	(c:__doprnt@val+1),(c:___lwdiv@dividend+1)
	movf	((c:__doprnt@prec))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_hexpowers)
	movwf	(??__doprnt+0+0)^00h,c
	movff	(??__doprnt+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___lwdiv@divisor)
	tblrd*-
	
	movff	tablat,(c:___lwdiv@divisor+1)

	call	___lwdiv
	movf	(0+?___lwdiv)^00h,c,w
	andlw	low(0Fh)
	movwf	((c:__doprnt@idx))^00h,c
	line	1530
	
l52872:
;doprnt.c: 1530: c = "0123456789ABCDEF"[idx];
	movf	((c:__doprnt@idx))^00h,c,w
	addlw	low(STR_8)
	movwf	(??__doprnt+0+0)^00h,c
	movff	(??__doprnt+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:__doprnt@c)
	line	1550
	
l52874:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	postinc2,w
iorwf	postinc2,w
	btfsc	status,2
	goto	u12151
	goto	u12150

u12151:
	goto	l52878
u12150:
	
l52876:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	call	u12168
	goto	u12169
u12168:
	push
	movwf	pclath
	movf	postinc2,w
	movwf	tosl
	movf	postinc2,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	movf	((c:__doprnt@c))^00h,c,w
	
	return	;indir
	u12169:
	goto	l52882
	
l52878:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??__doprnt+0+0
	movff	postdec2,??__doprnt+0+0+1
	movff	??__doprnt+0+0,fsr2l
	movff	??__doprnt+0+1,fsr2h
	movff	(c:__doprnt@c),indf2

	
l52880:
	movf	((c:__doprnt@pb))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1500
	
l52882:
	decf	((c:__doprnt@prec))^00h,c
		incf	((c:__doprnt@prec))^00h,c,w
	btfss	status,2
	goto	u12171
	goto	u12170

u12171:
	goto	l52870
u12170:
	line	553
	
l52884:
	incf	((c:__doprnt@f))^00h,c
	decf	((c:__doprnt@f))^00h,c,w
	movwf	(??__doprnt+0+0)^00h,c
	movff	(??__doprnt+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:__doprnt@c)
	movf	((c:__doprnt@c))^00h,c,w
	btfss	status,2
	goto	u12181
	goto	u12180
u12181:
	goto	l52838
u12180:
	line	1566
	
l52886:
;doprnt.c: 1566: return 0;
	movlw	high(0)
	movwf	((c:?__doprnt+1))^00h,c
	movlw	low(0)
	movwf	((c:?__doprnt))^00h,c
	line	1567
	
l39140:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of__doprnt
	__end_of__doprnt:
	signat	__doprnt,12410
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 61 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text97,class=CODE,space=0,reloc=2,group=0
	file	"uart2.c"
	line	61
global __ptext97
__ptext97:
psect	text97
	file	"uart2.c"
	line	61
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	callstack 24
;putch@val stored from wreg
	movwf	((c:putch@val))^00h,c
	line	63
	
l52570:
;uart2.c: 63: UR2DATL = (unsigned char)val;
	movff	(c:putch@val),(3840)	;volatile
	line	64
;uart2.c: 64: while(!UR2TXEF)
	goto	l28451
	
l28452:; BSR set to: 15

	line	66
;uart2.c: 65: {;uart2.c: 66: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	67
	
l28451:
	line	64
	movlb	15	; () banked
	btfss	(30760/8)&0ffh,(30760)&7	;volatile
	goto	u11811
	goto	u11810
u11811:
	goto	l28452
u11810:
	line	68
	
l28454:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   19[COMRAM] unsigned int 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Concentration
;;		_Display_Flow
;;		_Engineering_Voltage_Calibration
;;		__doprnt
;; This function uses a non-reentrant model
;;
psect	text98,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext98
__ptext98:
psect	text98
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\lwdiv.c"
	line	7
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:; BSR set to: 15

;incstack = 0
	opt	callstack 24
	line	13
	
l52572:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l52574:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u11821
	goto	u11820

u11821:
	goto	l42504
u11820:
	line	15
	
l52576:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l52580
	line	17
	
l52578:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l52580:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u11831
	goto	u11830
u11831:
	goto	l52578
u11830:
	line	21
	
l52582:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l52584:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u11841
	goto	u11840

u11841:
	goto	l52590
u11840:
	line	23
	
l52586:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l52588:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l52590:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l52592:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l52582
	line	28
	
l42504:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l42511:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Engineering_Timeout_Logic

;; *************** function _Engineering_Timeout_Logic *****************
;; Defined at:
;;		line 568 in file "setsysdata.c"
;; Parameters:    Size  Location     Type
;;  Mode_Status     1    wreg     enum E5581
;; Auto vars:     Size  Location     Type
;;  Mode_Status     1   16[COMRAM] enum E5581
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_PlaySound
;; This function is called by:
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text99,class=CODE,space=0,reloc=2,group=0
	file	"setsysdata.c"
	line	568
global __ptext99
__ptext99:
psect	text99
	file	"setsysdata.c"
	line	568
	global	__size_of_Engineering_Timeout_Logic
	__size_of_Engineering_Timeout_Logic	equ	__end_of_Engineering_Timeout_Logic-_Engineering_Timeout_Logic
	
_Engineering_Timeout_Logic:
;incstack = 0
	opt	callstack 20
;Engineering_Timeout_Logic@Mode_Status stored from wreg
	movwf	((c:Engineering_Timeout_Logic@Mode_Status))^00h,c
	line	570
	
l54646:
;setsysdata.c: 570: switch (Mode_Status)
	goto	l54674
	line	573
	
l54648:
;setsysdata.c: 573: if (Engineering_Pattern.Time >= 6)
		movlw	06h-1
	movlb	0	; () banked
	cpfsgt	(0+(_Engineering_Pattern+01h))&0ffh
	goto	u14351
	goto	u14350

u14351:
	goto	l39108
u14350:
	line	575
	
l54650:; BSR set to: 0

;setsysdata.c: 574: {;setsysdata.c: 575: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	576
;setsysdata.c: 576: Engineering_Pattern.Return_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	577
	
l54652:; BSR set to: 0

;setsysdata.c: 577: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	goto	l39108
	line	581
	
l54654:
;setsysdata.c: 581: if (Engineering_Pattern.Time >= 16)
		movlw	010h-1
	movlb	0	; () banked
	cpfsgt	(0+(_Engineering_Pattern+01h))&0ffh
	goto	u14361
	goto	u14360

u14361:
	goto	l39108
u14360:
	line	583
	
l54656:; BSR set to: 0

;setsysdata.c: 582: {;setsysdata.c: 583: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	584
;setsysdata.c: 584: Engineering_Pattern.Return_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	585
	
l54658:; BSR set to: 0

;setsysdata.c: 585: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	goto	l39108
	line	589
	
l54660:
;setsysdata.c: 589: if (Engineering_Pattern.Time >= 15)
		movlw	0Fh-1
	movlb	0	; () banked
	cpfsgt	(0+(_Engineering_Pattern+01h))&0ffh
	goto	u14371
	goto	u14370

u14371:
	goto	l39108
u14370:
	line	591
	
l54662:; BSR set to: 0

;setsysdata.c: 590: {;setsysdata.c: 591: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	592
;setsysdata.c: 592: Engineering_Pattern.Return_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	593
	
l54664:; BSR set to: 0

;setsysdata.c: 593: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	goto	l39108
	line	597
	
l54666:
;setsysdata.c: 597: if (Engineering_Pattern.Time >= 5)
		movlw	05h-1
	movlb	0	; () banked
	cpfsgt	(0+(_Engineering_Pattern+01h))&0ffh
	goto	u14381
	goto	u14380

u14381:
	goto	l39108
u14380:
	line	599
	
l54668:; BSR set to: 0

;setsysdata.c: 598: {;setsysdata.c: 599: Engineering_Pattern.Time = 0;
	movlw	low(0)
	movwf	(0+(_Engineering_Pattern+01h))&0ffh
	line	600
;setsysdata.c: 600: Engineering_Pattern.Return_Flag = 1;
	movlw	low(01h)
	movwf	(0+(_Engineering_Pattern+05h))&0ffh
	line	601
	
l54670:; BSR set to: 0

;setsysdata.c: 601: PlaySound(beep_once_50);
	movlw	(033h)&0ffh
	
	call	_PlaySound
	goto	l39108
	line	570
	
l54674:
	movf	((c:Engineering_Timeout_Logic@Mode_Status))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l54648
	xorlw	2^1	; case 2
	skipnz
	goto	l54654
	xorlw	3^2	; case 3
	skipnz
	goto	l54660
	xorlw	4^3	; case 4
	skipnz
	goto	l54666
	goto	l39108

	line	609
	
l39108:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Engineering_Timeout_Logic
	__end_of_Engineering_Timeout_Logic:
	signat	_Engineering_Timeout_Logic,4217
	global	_PlaySound

;; *************** function _PlaySound *****************
;; Defined at:
;;		line 53 in file "voice.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   14[COMRAM] unsigned char 
;;  i               1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 30/E
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Voicedelay
;;		_dat_high
;;		_dat_low
;; This function is called by:
;;		_main
;;		_Voice_Half_Hour
;;		_VoiceCtr2
;;		_VoiceCtr
;;		_Goto_Engineering_Mode
;;		_Engineering_Timeout_Logic
;; This function uses a non-reentrant model
;;
psect	text100,class=CODE,space=0,reloc=2,group=0
	file	"voice.c"
	line	53
global __ptext100
__ptext100:
psect	text100
	file	"voice.c"
	line	53
	global	__size_of_PlaySound
	__size_of_PlaySound	equ	__end_of_PlaySound-_PlaySound
	
_PlaySound:
;incstack = 0
	opt	callstack 21
;PlaySound@data stored from wreg
	movwf	((c:PlaySound@data))^00h,c
	line	55
	
l52954:
	line	56
	
l52956:
;voice.c: 56: dat_low();
	call	_dat_low	;wreg free
	line	57
	
l52958:
;voice.c: 57: Voicedelay(500);
	movlw	high(01F4h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(01F4h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	58
	
l52960:
;voice.c: 58: dat_high();
	call	_dat_high	;wreg free
	line	59
	
l52962:
;voice.c: 59: Voicedelay(50);
	movlw	high(032h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(032h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	60
	
l52964:
;voice.c: 60: for(i=0;i<8;i++)
	movlw	low(0)
	movwf	((c:PlaySound@i))^00h,c
	line	62
	
l52970:
;voice.c: 61: {;voice.c: 62: dat_low();
	call	_dat_low	;wreg free
	line	63
	
l52972:
;voice.c: 63: if(data&0x80)
	
	btfss	((c:PlaySound@data))^00h,c,(7)&7
	goto	u12241
	goto	u12240
u12241:
	goto	l52980
u12240:
	line	65
	
l52974:
;voice.c: 64: {;voice.c: 65: Voicedelay(50);
	movlw	high(032h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(032h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	66
	
l52976:
;voice.c: 66: dat_high();
	call	_dat_high	;wreg free
	line	67
	
l52978:
;voice.c: 67: Voicedelay(150);
	movlw	high(096h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(096h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	68
;voice.c: 68: }
	goto	l52986
	line	71
	
l52980:
;voice.c: 69: else;voice.c: 70: {;voice.c: 71: Voicedelay(150);
	movlw	high(096h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(096h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	72
	
l52982:
;voice.c: 72: dat_high();
	call	_dat_high	;wreg free
	line	73
	
l52984:
;voice.c: 73: Voicedelay(50);
	movlw	high(032h)
	movwf	((c:Voicedelay@Time+1))^00h,c
	movlw	low(032h)
	movwf	((c:Voicedelay@Time))^00h,c
	call	_Voicedelay	;wreg free
	line	75
	
l52986:
;voice.c: 74: };voice.c: 75: data<<=1;
	bcf status,0
	rlcf	((c:PlaySound@data))^00h,c

	line	60
	
l52988:
	incf	((c:PlaySound@i))^00h,c
	
l52990:
		movlw	08h-1
	cpfsgt	((c:PlaySound@i))^00h,c
	goto	u12251
	goto	u12250

u12251:
	goto	l52970
u12250:
	line	78
	
l31026:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_PlaySound
	__end_of_PlaySound:
	signat	_PlaySound,4217
	global	_dat_low

;; *************** function _dat_low *****************
;; Defined at:
;;		line 24 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/E
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PlaySound
;; This function uses a non-reentrant model
;;
psect	text101,class=CODE,space=0,reloc=2,group=0
	line	24
global __ptext101
__ptext101:
psect	text101
	file	"voice.c"
	line	24
	global	__size_of_dat_low
	__size_of_dat_low	equ	__end_of_dat_low-_dat_low
	
_dat_low:
;incstack = 0
	opt	callstack 22
	line	26
	
l52832:
;voice.c: 26: LATCbits.LATC7 = 0;
	bcf	((c:3979))^0f00h,c,7	;volatile
	line	27
	
l31011:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_dat_low
	__end_of_dat_low:
	signat	_dat_low,89
	global	_dat_high

;; *************** function _dat_high *****************
;; Defined at:
;;		line 29 in file "voice.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/E
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PlaySound
;; This function uses a non-reentrant model
;;
psect	text102,class=CODE,space=0,reloc=2,group=0
	line	29
global __ptext102
__ptext102:
psect	text102
	file	"voice.c"
	line	29
	global	__size_of_dat_high
	__size_of_dat_high	equ	__end_of_dat_high-_dat_high
	
_dat_high:
;incstack = 0
	opt	callstack 22
	line	31
	
l52834:
;voice.c: 31: LATCbits.LATC7 = 1;
	bsf	((c:3979))^0f00h,c,7	;volatile
	line	32
	
l31014:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_dat_high
	__end_of_dat_high:
	signat	_dat_high,89
	global	_Voicedelay

;; *************** function _Voicedelay *****************
;; Defined at:
;;		line 280 in file "main.c"
;; Parameters:    Size  Location     Type
;;  Time            2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/E
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Delay10Us
;; This function is called by:
;;		_PlaySound
;; This function uses a non-reentrant model
;;
psect	text103,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	280
global __ptext103
__ptext103:
psect	text103
	file	"main.c"
	line	280
	global	__size_of_Voicedelay
	__size_of_Voicedelay	equ	__end_of_Voicedelay-_Voicedelay
	
_Voicedelay:
;incstack = 0
	opt	callstack 21
	line	282
	
l52594:
;main.c: 282: for(uint16_t i=0;i<Time;i++)
	movlw	high(0)
	movwf	((c:Voicedelay@i+1))^00h,c
	movlw	low(0)
	movwf	((c:Voicedelay@i))^00h,c
	goto	l52600
	line	284
	
l52596:
;main.c: 283: {;main.c: 284: Delay10Us();
	call	_Delay10Us	;wreg free
	line	282
	
l52598:
	infsnz	((c:Voicedelay@i))^00h,c
	incf	((c:Voicedelay@i+1))^00h,c
	
l52600:
		movf	((c:Voicedelay@Time))^00h,c,w
	subwf	((c:Voicedelay@i))^00h,c,w
	movf	((c:Voicedelay@Time+1))^00h,c,w
	subwfb	((c:Voicedelay@i+1))^00h,c,w
	btfss	status,0
	goto	u11851
	goto	u11850

u11851:
	goto	l52596
u11850:
	line	286
	
l2726:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Voicedelay
	__end_of_Voicedelay:
	signat	_Voicedelay,4217
	global	_E2prom_WriteData

;; *************** function _E2prom_WriteData *****************
;; Defined at:
;;		line 6 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dat            50    0[BANK0 ] unsigned char [50]
;;  i               1   50[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      51       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0      51       0       0       0       0       0       0       0
;;Total ram usage:       51 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_E2prom_ReadData
;;		_EEPROMwrite
;; This function is called by:
;;		_VoiceFilterMesh
;;		_ErrorCtr
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text104,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	6
global __ptext104
__ptext104:
psect	text104
	file	"eeprom.c"
	line	6
	global	__size_of_E2prom_WriteData
	__size_of_E2prom_WriteData	equ	__end_of_E2prom_WriteData-_E2prom_WriteData
	
_E2prom_WriteData:
;incstack = 0
	opt	callstack 21
	line	8
	
l54548:
	line	9
	
l54550:
;eeprom.c: 9: u8 dat[50] = {0};
	lfsr	2,(E2prom_WriteData@dat)
	movlw	50-1
u14251:
	clrf	postinc2
	decf	wreg
	bc	u14251
	line	10
	
l54552:
;eeprom.c: 10: dat[0] = 0x0A;
	movlw	low(0Ah)
	movlb	0	; () banked
	movwf	((E2prom_WriteData@dat))&0ffh
	line	11
	
l54554:; BSR set to: 0

;eeprom.c: 11: dat[1] = (RunData.FlowSet>>8)&0xFF;
	movf	(1+(_RunData+04h))&0ffh,w
	movwf	(0+(E2prom_WriteData@dat+01h))&0ffh
	line	12
	
l54556:; BSR set to: 0

;eeprom.c: 12: dat[2] = RunData.FlowSet&0xFF;
	movff	0+(_RunData+04h),0+(E2prom_WriteData@dat+02h)
	line	13
	
l54558:; BSR set to: 0

;eeprom.c: 13: dat[3] = (RunData.CumulativeTime>>24)&0xFF;
	movff	0+3+0+(_RunData+016h),0+(E2prom_WriteData@dat+03h)
	line	14
	
l54560:; BSR set to: 0

;eeprom.c: 14: dat[4] = (RunData.CumulativeTime>>16)&0xFF;
	movff	0+2+0+(_RunData+016h),0+(E2prom_WriteData@dat+04h)
	line	15
	
l54562:; BSR set to: 0

;eeprom.c: 15: dat[5] = (RunData.CumulativeTime>>8)&0xFF;
	movff	0+1+0+(_RunData+016h),0+(E2prom_WriteData@dat+05h)
	line	16
	
l54564:; BSR set to: 0

;eeprom.c: 16: dat[6] = RunData.CumulativeTime&0xFF;
	movff	0+(_RunData+016h),0+(E2prom_WriteData@dat+06h)
	line	17
	
l54566:; BSR set to: 0

;eeprom.c: 17: dat[7] = (RunData.XF_TimeSet>>8)&0xFF;
	movf	(1+(_RunData+01Ch))&0ffh,w
	movwf	(0+(E2prom_WriteData@dat+07h))&0ffh
	line	18
	
l54568:; BSR set to: 0

;eeprom.c: 18: dat[8] = RunData.XF_TimeSet;
	movff	0+(_RunData+01Ch),0+(E2prom_WriteData@dat+08h)
	line	19
	
l54570:; BSR set to: 0

;eeprom.c: 19: dat[9] = (RunData.JY_TimeSet>>8)&0xFF;
	movf	(1+(_RunData+01Ah))&0ffh,w
	movwf	(0+(E2prom_WriteData@dat+09h))&0ffh
	line	20
	
l54572:; BSR set to: 0

;eeprom.c: 20: dat[10] = RunData.JY_TimeSet&0xFF;
	movff	0+(_RunData+01Ah),0+(E2prom_WriteData@dat+0Ah)
	line	21
	
l54574:; BSR set to: 0

;eeprom.c: 21: dat[11] = RunData.VoiceEnable;
	movff	0+(_RunData+02Ch),0+(E2prom_WriteData@dat+0Bh)
	line	22
	
l54576:; BSR set to: 0

;eeprom.c: 22: dat[12] = (RunData.FLOW_Trim>>8)&0xFF;
	movf	(1+(_RunData+022h))&0ffh,w
	movwf	(0+(E2prom_WriteData@dat+0Ch))&0ffh
	line	23
	
l54578:; BSR set to: 0

;eeprom.c: 23: dat[13] = RunData.FLOW_Trim&0xFF;
	movff	0+(_RunData+022h),0+(E2prom_WriteData@dat+0Dh)
	line	24
	
l54580:; BSR set to: 0

;eeprom.c: 24: dat[14] = RunData.Voltage_Calibration;
	movff	0+(_RunData+044h),0+(E2prom_WriteData@dat+0Eh)
	line	26
	
l54582:; BSR set to: 0

;eeprom.c: 26: for(i=0; i<50; i++)
	movlw	low(0)
	movwf	((E2prom_WriteData@i))&0ffh
	line	28
	
l54588:; BSR set to: 0

;eeprom.c: 27: {;eeprom.c: 28: EEPROMwrite(0x00 | i, dat[i]);
	movf	((E2prom_WriteData@i))&0ffh,w
	addlw	low(E2prom_WriteData@dat)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:EEPROMwrite@Data))^00h,c
	movf	((E2prom_WriteData@i))&0ffh,w
	
	call	_EEPROMwrite
	line	26
	
l54590:; BSR set to: 15

	movlb	0	; () banked
	incf	((E2prom_WriteData@i))&0ffh
	
l54592:; BSR set to: 0

		movlw	032h-1
	cpfsgt	((E2prom_WriteData@i))&0ffh
	goto	u14261
	goto	u14260

u14261:
	goto	l54588
u14260:
	line	30
	
l54594:; BSR set to: 0

;eeprom.c: 29: };eeprom.c: 30: E2prom_ReadData();
	call	_E2prom_ReadData	;wreg free
	line	31
	
l25912:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_E2prom_WriteData
	__end_of_E2prom_WriteData:
	signat	_E2prom_WriteData,89
	global	_EEPROMwrite

;; *************** function _EEPROMwrite *****************
;; Defined at:
;;		line 2236 in file "touch.h"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;;  Data            1    9[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_E2prom_WriteData
;; This function uses a non-reentrant model
;;
psect	text105,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	2236
global __ptext105
__ptext105:
psect	text105
	file	"touch.h"
	line	2236
	global	__size_of_EEPROMwrite
	__size_of_EEPROMwrite	equ	__end_of_EEPROMwrite-_EEPROMwrite
	
_EEPROMwrite:; BSR set to: 0

;incstack = 0
	opt	callstack 22
;EEPROMwrite@EEAddr stored from wreg
	movwf	((c:EEPROMwrite@EEAddr))^00h,c
	line	2238
	
l53438:
;touch_test.c: 2238: PCKEN3bits.DMCKEN = 1;
	movlb	15	; () banked
	bsf	((3882))&0ffh,2	;volatile
	line	2239
	
l53440:; BSR set to: 15

;touch_test.c: 2239: EEADR = EEAddr;
	movff	(c:EEPROMwrite@EEAddr),(c:4009)	;volatile
	line	2240
	
l53442:; BSR set to: 15

;touch_test.c: 2240: EEDATA = Data;
	movff	(c:EEPROMwrite@Data),(c:4008)	;volatile
	line	2242
	
l53444:; BSR set to: 15

;touch_test.c: 2242: EECON1bits.EEPGD = 0;
	bcf	((c:4006))^0f00h,c,7	;volatile
	line	2243
	
l53446:; BSR set to: 15

;touch_test.c: 2243: EECON1bits.CFGS = 0;
	bcf	((c:4006))^0f00h,c,6	;volatile
	line	2244
	
l53448:; BSR set to: 15

;touch_test.c: 2244: EECON1bits.WREN = 1;
	bsf	((c:4006))^0f00h,c,2	;volatile
	line	2246
	
l53450:; BSR set to: 15

;touch_test.c: 2246: EECON2 = EECON2;
	movff	(c:4007),(c:4007)	;volatile
	line	2248
;touch_test.c: 2248: while(GIE)
	goto	l42013
	
l42014:
	line	2250
;touch_test.c: 2249: {;touch_test.c: 2250: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	2251
;touch_test.c: 2251: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2252
;touch_test.c: 2252: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2253
;touch_test.c: 2253: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2254
;touch_test.c: 2254: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2255
	
l42013:
	line	2248
	btfsc	c:(32663/8),(32663)&7	;volatile
	goto	u12961
	goto	u12960
u12961:
	goto	l42014
u12960:
	
l42015:
	line	2261
# 2261 "touch.h"
MOVLW 0x55 ;# 
	line	2262
# 2262 "touch.h"
MOVWF _EECON2 ;# 
	line	2263
# 2263 "touch.h"
MOVLW 0xAA ;# 
	line	2264
# 2264 "touch.h"
MOVWF _EECON2 ;# 
psect	text105
	line	2267
;touch_test.c: 2267: EECON1bits.WR = 1;
	bsf	((c:4006))^0f00h,c,1	;volatile
	line	2269
;touch_test.c: 2269: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2270
;touch_test.c: 2270: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2271
;touch_test.c: 2271: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2272
;touch_test.c: 2272: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2273
;touch_test.c: 2273: while(EECON1bits.WR);
	
l42016:
	btfsc	((c:4006))^0f00h,c,1	;volatile
	goto	u12971
	goto	u12970
u12971:
	goto	l42016
u12970:
	goto	l42019
	line	2275
	
l42020:
	line	2277
;touch_test.c: 2276: {;touch_test.c: 2277: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	2278
;touch_test.c: 2278: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2279
;touch_test.c: 2279: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2280
;touch_test.c: 2280: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2281
;touch_test.c: 2281: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2282
	
l42019:
	line	2275
	btfss	c:(32663/8),(32663)&7	;volatile
	goto	u12981
	goto	u12980
u12981:
	goto	l42020
u12980:
	
l42021:
	line	2283
;touch_test.c: 2282: };touch_test.c: 2283: PCKEN3bits.DMCKEN = 0;
	movlb	15	; () banked
	bcf	((3882))&0ffh,2	;volatile
	line	2284
	
l42022:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_EEPROMwrite
	__end_of_EEPROMwrite:
	signat	_EEPROMwrite,8313
	global	_E2prom_ReadData

;; *************** function _E2prom_ReadData *****************
;; Defined at:
;;		line 32 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dat            50   15[COMRAM] unsigned char [50]
;;  i               1   65[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 31/E
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:        51       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        55       0       0       0       0       0       0       0       0
;;Total ram usage:       55 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EEPROMread
;; This function is called by:
;;		_main
;;		_E2prom_WriteData
;; This function uses a non-reentrant model
;;
psect	text106,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	32
global __ptext106
__ptext106:
psect	text106
	file	"eeprom.c"
	line	32
	global	__size_of_E2prom_ReadData
	__size_of_E2prom_ReadData	equ	__end_of_E2prom_ReadData-_E2prom_ReadData
	
_E2prom_ReadData:; BSR set to: 15

;incstack = 0
	opt	callstack 21
	line	34
	
l52908:
	line	35
	
l52910:
;eeprom.c: 35: u8 dat[50] = {0};
	lfsr	2,(E2prom_ReadData@dat)
	movlw	50-1
u12211:
	clrf	postinc2
	decf	wreg
	bc	u12211
	line	36
	
l52912:
;eeprom.c: 36: for(i=0; i<50; i++) dat[i] = EEPROMread(0x00 | i);
	movlw	low(0)
	movwf	((c:E2prom_ReadData@i))^00h,c
	
l52918:
	movf	((c:E2prom_ReadData@i))^00h,c,w
	addlw	low(E2prom_ReadData@dat)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:E2prom_ReadData@i))^00h,c,w
	
	call	_EEPROMread
	movwf	indf2,c

	
l52920:; BSR set to: 15

	incf	((c:E2prom_ReadData@i))^00h,c
	
l52922:; BSR set to: 15

		movlw	032h-1
	cpfsgt	((c:E2prom_ReadData@i))^00h,c
	goto	u12221
	goto	u12220

u12221:
	goto	l52918
u12220:
	line	37
	
l52924:; BSR set to: 15

;eeprom.c: 37: if(dat[0] != 0x0A)
		movlw	10
	xorwf	((c:E2prom_ReadData@dat))^00h,c,w
	btfsc	status,2
	goto	u12231
	goto	u12230

u12231:
	goto	l52930
u12230:
	line	40
	
l52926:; BSR set to: 15

;eeprom.c: 38: {;eeprom.c: 40: RunData.FlowSet = 30;
	movlw	high(01Eh)
	movlb	0	; () banked
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(01Eh)
	movwf	(0+(_RunData+04h))&0ffh
	line	41
;eeprom.c: 41: RunData.CumulativeTime = 0;
	movlw	low(0)
	movwf	(0+(_RunData+016h))&0ffh
	movlw	high(0)
	movwf	(1+(_RunData+016h))&0ffh
	movlw	low highword(0)
	movwf	(2+(_RunData+016h))&0ffh
	movlw	high highword(0)
	movwf	(3+(_RunData+016h))&0ffh
	line	42
;eeprom.c: 42: RunData.XF_TimeSet = 60;
	movlw	high(03Ch)
	movwf	(1+(_RunData+01Ch))&0ffh
	movlw	low(03Ch)
	movwf	(0+(_RunData+01Ch))&0ffh
	line	43
;eeprom.c: 43: RunData.JY_TimeSet = 6;
	movlw	high(06h)
	movwf	(1+(_RunData+01Ah))&0ffh
	movlw	low(06h)
	movwf	(0+(_RunData+01Ah))&0ffh
	line	44
;eeprom.c: 44: RunData.VoiceEnable = 1;
	movlw	low(01h)
	movwf	(0+(_RunData+02Ch))&0ffh
	goto	l25920
	line	49
	
l52930:; BSR set to: 15

;eeprom.c: 47: };eeprom.c: 49: RunData.FlowSet = dat[1]<<8;
	movf	(0+((c:E2prom_ReadData@dat)+01h))^00h,c,w
	movlb	0	; () banked
	movwf	(1+(_RunData+04h))&0ffh
	clrf	(0+(_RunData+04h))&0ffh
	line	50
	
l52932:; BSR set to: 0

;eeprom.c: 50: RunData.FlowSet |= dat[2];
	movf	(0+((c:E2prom_ReadData@dat)+02h))^00h,c,w
	iorwf	(0+(_RunData+04h))&0ffh
	line	52
	
l52934:; BSR set to: 0

;eeprom.c: 52: RunData.CumulativeTime |= ((u32)dat[3]<<24);
	movff	0+((c:E2prom_ReadData@dat)+03h),??_E2prom_ReadData+0+0
	clrf	(??_E2prom_ReadData+0+0+1)^00h,c
	clrf	(??_E2prom_ReadData+0+0+2)^00h,c
	clrf	(??_E2prom_ReadData+0+0+3)^00h,c
	movff	??_E2prom_ReadData+0+0,??_E2prom_ReadData+0+3
	clrf	(??_E2prom_ReadData+0+2)^00h,c
	clrf	(??_E2prom_ReadData+0+1)^00h,c
	clrf	(??_E2prom_ReadData+0+0)^00h,c
	movf	(??_E2prom_ReadData+0+0)^00h,c,w
	iorwf	(0+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+1)^00h,c,w
	iorwf	(1+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+2)^00h,c,w
	iorwf	(2+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+3)^00h,c,w
	iorwf	(3+(_RunData+016h))&0ffh

	line	53
	
l52936:; BSR set to: 0

;eeprom.c: 53: RunData.CumulativeTime |= ((u32)dat[4]<<16);
	movff	0+((c:E2prom_ReadData@dat)+04h),??_E2prom_ReadData+0+0
	clrf	(??_E2prom_ReadData+0+0+1)^00h,c
	clrf	(??_E2prom_ReadData+0+0+2)^00h,c
	clrf	(??_E2prom_ReadData+0+0+3)^00h,c
	movff	??_E2prom_ReadData+0+1,??_E2prom_ReadData+0+3
	movff	??_E2prom_ReadData+0+0,??_E2prom_ReadData+0+2
	clrf	(??_E2prom_ReadData+0+1)^00h,c
	clrf	(??_E2prom_ReadData+0+0)^00h,c
	movf	(??_E2prom_ReadData+0+0)^00h,c,w
	iorwf	(0+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+1)^00h,c,w
	iorwf	(1+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+2)^00h,c,w
	iorwf	(2+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+3)^00h,c,w
	iorwf	(3+(_RunData+016h))&0ffh

	line	54
	
l52938:; BSR set to: 0

;eeprom.c: 54: RunData.CumulativeTime |= ((u32)dat[5]<<8);
	movff	0+((c:E2prom_ReadData@dat)+05h),??_E2prom_ReadData+0+0
	clrf	(??_E2prom_ReadData+0+0+1)^00h,c
	clrf	(??_E2prom_ReadData+0+0+2)^00h,c
	clrf	(??_E2prom_ReadData+0+0+3)^00h,c
	movff	??_E2prom_ReadData+0+2,??_E2prom_ReadData+0+3
	movff	??_E2prom_ReadData+0+1,??_E2prom_ReadData+0+2
	movff	??_E2prom_ReadData+0+0,??_E2prom_ReadData+0+1
	clrf	(??_E2prom_ReadData+0+0)^00h,c
	movf	(??_E2prom_ReadData+0+0)^00h,c,w
	iorwf	(0+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+1)^00h,c,w
	iorwf	(1+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+2)^00h,c,w
	iorwf	(2+(_RunData+016h))&0ffh
	movf	(??_E2prom_ReadData+0+3)^00h,c,w
	iorwf	(3+(_RunData+016h))&0ffh

	line	55
	
l52940:; BSR set to: 0

;eeprom.c: 55: RunData.CumulativeTime |= (u32)dat[6];
	movf	(0+((c:E2prom_ReadData@dat)+06h))^00h,c,w
	iorwf	(0+(_RunData+016h))&0ffh
	line	56
	
l52942:; BSR set to: 0

;eeprom.c: 56: RunData.XF_TimeSet = dat[7]<<8;
	movf	(0+((c:E2prom_ReadData@dat)+07h))^00h,c,w
	movwf	(1+(_RunData+01Ch))&0ffh
	clrf	(0+(_RunData+01Ch))&0ffh
	line	57
;eeprom.c: 57: RunData.XF_TimeSet |= dat[8];
	movf	(0+((c:E2prom_ReadData@dat)+08h))^00h,c,w
	iorwf	(0+(_RunData+01Ch))&0ffh
	line	58
	
l52944:; BSR set to: 0

;eeprom.c: 58: RunData.JY_TimeSet = dat[9]<<8;
	movf	(0+((c:E2prom_ReadData@dat)+09h))^00h,c,w
	movwf	(1+(_RunData+01Ah))&0ffh
	clrf	(0+(_RunData+01Ah))&0ffh
	line	59
	
l52946:; BSR set to: 0

;eeprom.c: 59: RunData.JY_TimeSet |= dat[10];
	movf	(0+((c:E2prom_ReadData@dat)+0Ah))^00h,c,w
	iorwf	(0+(_RunData+01Ah))&0ffh
	line	60
	
l52948:; BSR set to: 0

;eeprom.c: 60: RunData.VoiceEnable = dat[11];
	movff	0+((c:E2prom_ReadData@dat)+0Bh),0+(_RunData+02Ch)
	line	61
;eeprom.c: 61: RunData.FLOW_Trim = dat[12]<<8;
	movf	(0+((c:E2prom_ReadData@dat)+0Ch))^00h,c,w
	movwf	(1+(_RunData+022h))&0ffh
	clrf	(0+(_RunData+022h))&0ffh
	line	62
	
l52950:; BSR set to: 0

;eeprom.c: 62: RunData.FLOW_Trim |= dat[13];
	movf	(0+((c:E2prom_ReadData@dat)+0Dh))^00h,c,w
	iorwf	(0+(_RunData+022h))&0ffh
	line	63
	
l52952:; BSR set to: 0

;eeprom.c: 63: RunData.Voltage_Calibration = dat[14] ;
	movff	0+((c:E2prom_ReadData@dat)+0Eh),0+(_RunData+044h)
	clrf	(1+(_RunData+044h))&0ffh
	line	64
	
l25920:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_E2prom_ReadData
	__end_of_E2prom_ReadData:
	signat	_E2prom_ReadData,89
	global	_EEPROMread

;; *************** function _EEPROMread *****************
;; Defined at:
;;		line 2212 in file "touch.h"
;; Parameters:    Size  Location     Type
;;  EEAddr          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  EEAddr          1    9[COMRAM] unsigned char 
;;  ReEEPROMread    1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 30/E
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_E2prom_ReadData
;; This function uses a non-reentrant model
;;
psect	text107,class=CODE,space=0,reloc=2,group=1
	file	"touch.h"
	line	2212
global __ptext107
__ptext107:
psect	text107
	file	"touch.h"
	line	2212
	global	__size_of_EEPROMread
	__size_of_EEPROMread	equ	__end_of_EEPROMread-_EEPROMread
	
_EEPROMread:; BSR set to: 0

;incstack = 0
	opt	callstack 21
;EEPROMread@EEAddr stored from wreg
	movwf	((c:EEPROMread@EEAddr))^00h,c
	line	2215
	
l52816:
;touch_test.c: 2214: unsigned char ReEEPROMread;;touch_test.c: 2215: PCKEN3bits.DMCKEN = 1;
	movlb	15	; () banked
	bsf	((3882))&0ffh,2	;volatile
	line	2216
;touch_test.c: 2216: EECON1bits.EEPGD = 0;
	bcf	((c:4006))^0f00h,c,7	;volatile
	line	2217
;touch_test.c: 2217: EECON1bits.CFGS = 0;
	bcf	((c:4006))^0f00h,c,6	;volatile
	line	2218
	
l52818:; BSR set to: 15

;touch_test.c: 2218: EEADR = EEAddr;
	movff	(c:EEPROMread@EEAddr),(c:4009)	;volatile
	line	2219
	
l52820:; BSR set to: 15

;touch_test.c: 2219: EECON1bits.RD = 1;
	bsf	((c:4006))^0f00h,c,0	;volatile
	line	2220
	
l52822:; BSR set to: 15

;touch_test.c: 2220: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2221
	
l52824:
;touch_test.c: 2221: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2222
	
l52826:
;touch_test.c: 2222: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2223
	
l52828:
;touch_test.c: 2223: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	2224
;touch_test.c: 2224: while(EECON1bits.RD);
	
l42007:
	btfsc	((c:4006))^0f00h,c,0	;volatile
	goto	u12081
	goto	u12080
u12081:
	goto	l42007
u12080:
	
l42009:
	line	2226
;touch_test.c: 2226: ReEEPROMread = EEDATA;
	movff	(c:4008),(c:EEPROMread@ReEEPROMread)	;volatile
	line	2227
;touch_test.c: 2227: PCKEN3bits.DMCKEN = 0;
	movlb	15	; () banked
	bcf	((3882))&0ffh,2	;volatile
	line	2228
;touch_test.c: 2228: return ReEEPROMread;
	movf	((c:EEPROMread@ReEEPROMread))^00h,c,w
	line	2229
	
l42010:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_EEPROMread
	__end_of_EEPROMread:
	signat	_EEPROMread,4217
	global	_Display_CumulativeTime

;; *************** function _Display_CumulativeTime *****************
;; Defined at:
;;		line 678 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sum             4   31[COMRAM] unsigned long 
;;  mode            1   35[COMRAM] unsigned char 
;;  enable          1   36[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Label_AddUp
;;		_Label_h
;;		_SEG10
;;		_SEG11
;;		_SEG12
;;		_SEG13
;;		_SEG9
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_Display
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text108,class=CODE,space=0,reloc=2,group=0
	file	"display.c"
	line	678
global __ptext108
__ptext108:
psect	text108
	file	"display.c"
	line	678
	global	__size_of_Display_CumulativeTime
	__size_of_Display_CumulativeTime	equ	__end_of_Display_CumulativeTime-_Display_CumulativeTime
	
_Display_CumulativeTime:; BSR set to: 15

;incstack = 0
	opt	callstack 23
	line	680
	
l54370:
;display.c: 680: if (enable)
	movf	((c:Display_CumulativeTime@enable))^00h,c,w
	btfsc	status,2
	goto	u14211
	goto	u14210
u14211:
	goto	l54376
u14210:
	goto	l13294
	line	684
	
l54376:
;display.c: 682: else;display.c: 683: {;display.c: 684: SEG9(ch_table[sum % 100000 / 10000]);
	movlw	low(0186A0h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(0186A0h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(0186A0h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(0186A0h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_CumulativeTime@sum),(c:___llmod@dividend)
	movff	(c:Display_CumulativeTime@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_CumulativeTime@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_CumulativeTime@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(02710h)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(02710h)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(02710h)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(02710h)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_CumulativeTime+0+0)^00h,c
	movff	(??_Display_CumulativeTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG9
	line	685
;display.c: 685: SEG10(ch_table[sum % 10000 / 1000]);
	movlw	low(02710h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(02710h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(02710h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(02710h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_CumulativeTime@sum),(c:___llmod@dividend)
	movff	(c:Display_CumulativeTime@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_CumulativeTime@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_CumulativeTime@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(03E8h)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(03E8h)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(03E8h)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(03E8h)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_CumulativeTime+0+0)^00h,c
	movff	(??_Display_CumulativeTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG10
	line	686
;display.c: 686: SEG11(ch_table[sum % 1000 / 100]);
	movlw	low(03E8h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(03E8h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(03E8h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(03E8h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_CumulativeTime@sum),(c:___llmod@dividend)
	movff	(c:Display_CumulativeTime@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_CumulativeTime@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_CumulativeTime@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(064h)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(064h)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_CumulativeTime+0+0)^00h,c
	movff	(??_Display_CumulativeTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG11
	line	687
;display.c: 687: SEG12(ch_table[sum % 100 / 10]);
	movlw	low(064h)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(064h)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(064h)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(064h)
	movwf	((c:___llmod@divisor+3))^00h,c
	movff	(c:Display_CumulativeTime@sum),(c:___llmod@dividend)
	movff	(c:Display_CumulativeTime@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_CumulativeTime@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_CumulativeTime@sum+3),(c:___llmod@dividend+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(c:___lldiv@dividend)
	movff	1+?___llmod,(c:___lldiv@dividend+1)
	movff	2+?___llmod,(c:___lldiv@dividend+2)
	movff	3+?___llmod,(c:___lldiv@dividend+3)
	
	movlw	low(0Ah)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movf	(0+?___lldiv)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_CumulativeTime+0+0)^00h,c
	movff	(??_Display_CumulativeTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG12
	line	688
;display.c: 688: SEG13(ch_table[sum % 10]);
	movff	(c:Display_CumulativeTime@sum),(c:___llmod@dividend)
	movff	(c:Display_CumulativeTime@sum+1),(c:___llmod@dividend+1)
	movff	(c:Display_CumulativeTime@sum+2),(c:___llmod@dividend+2)
	movff	(c:Display_CumulativeTime@sum+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3))^00h,c
	call	___llmod	;wreg free
	movf	(0+?___llmod)^00h,c,w
	addlw	low(_ch_table)
	movwf	(??_Display_CumulativeTime+0+0)^00h,c
	movff	(??_Display_CumulativeTime+0+0),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_SEG13
	line	689
;display.c: 689: switch (mode)
	goto	l54384
	line	692
	
l54378:; BSR set to: 0

;display.c: 692: Label_h(1);
	movlw	(01h)&0ffh
	
	call	_Label_h
	line	693
;display.c: 693: Label_AddUp(1);
	movlw	(01h)&0ffh
	
	call	_Label_AddUp
	line	694
;display.c: 694: break;
	goto	l13294
	line	696
	
l54380:; BSR set to: 0

;display.c: 696: SEG9(0x00);
	movlw	(0)&0ffh
	
	call	_SEG9
	line	697
;display.c: 697: SEG10(0x00);
	movlw	(0)&0ffh
	
	call	_SEG10
	line	698
;display.c: 698: SEG11(0x00);
	movlw	(0)&0ffh
	
	call	_SEG11
	line	699
;display.c: 699: SEG12(0x00);
	movlw	(0)&0ffh
	
	call	_SEG12
	line	700
;display.c: 700: SEG13(0x00);
	movlw	(0)&0ffh
	
	call	_SEG13
	line	702
;display.c: 702: Label_h(0);
	movlw	(0)&0ffh
	
	call	_Label_h
	line	703
;display.c: 703: Label_AddUp(0);
	movlw	(0)&0ffh
	
	call	_Label_AddUp
	line	705
;display.c: 705: break;
	goto	l13294
	line	689
	
l54384:; BSR set to: 0

	movf	((c:Display_CumulativeTime@mode))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 1 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l54378
	goto	l54380

	line	708
	
l13294:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Display_CumulativeTime
	__end_of_Display_CumulativeTime:
	signat	_Display_CumulativeTime,12409
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    9[COMRAM] unsigned long 
;;  divisor         4   13[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    9[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;;		_Display_CumulativeTime
;; This function uses a non-reentrant model
;;
psect	text109,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\llmod.c"
	line	7
global __ptext109
__ptext109:
psect	text109
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\llmod.c"
	line	7
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:
;incstack = 0
	opt	callstack 23
	line	12
	
l53658:
	movf	((c:___llmod@divisor))^00h,c,w
iorwf	((c:___llmod@divisor+1))^00h,c,w
iorwf	((c:___llmod@divisor+2))^00h,c,w
iorwf	((c:___llmod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u13301
	goto	u13300

u13301:
	goto	l42433
u13300:
	line	13
	
l53660:
	movlw	low(01h)
	movwf	((c:___llmod@counter))^00h,c
	line	14
	goto	l53664
	line	15
	
l53662:
	bcf	status,0
	rlcf	((c:___llmod@divisor))^00h,c
	rlcf	((c:___llmod@divisor+1))^00h,c
	rlcf	((c:___llmod@divisor+2))^00h,c
	rlcf	((c:___llmod@divisor+3))^00h,c
	line	16
	incf	((c:___llmod@counter))^00h,c
	line	14
	
l53664:
	
	btfss	((c:___llmod@divisor+3))^00h,c,(31)&7
	goto	u13311
	goto	u13310
u13311:
	goto	l53662
u13310:
	line	19
	
l53666:
		movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c,w
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c,w
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c,w
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u13321
	goto	u13320

u13321:
	goto	l53670
u13320:
	line	20
	
l53668:
	movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c
	line	21
	
l53670:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3))^00h,c
	rrcf	((c:___llmod@divisor+2))^00h,c
	rrcf	((c:___llmod@divisor+1))^00h,c
	rrcf	((c:___llmod@divisor))^00h,c
	line	22
	
l53672:
	decfsz	((c:___llmod@counter))^00h,c
	
	goto	l53666
	line	23
	
l42433:
	line	24
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	25
	
l42440:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\__lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   18[COMRAM] unsigned long 
;;  divisor         4   22[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   26[COMRAM] unsigned long 
;;  counter         1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Timing
;;		_Display_CumulativeTime
;; This function uses a non-reentrant model
;;
psect	text110,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\__lldiv.c"
	line	7
global __ptext110
__ptext110:
psect	text110
	file	"C:\Program Files (x86)\CCompiler\Compiler\datav2.10\pic\sources\c90\common\__lldiv.c"
	line	7
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:
;incstack = 0
	opt	callstack 23
	line	13
	
l53636:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l53638:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u13271
	goto	u13270

u13271:
	goto	l42052
u13270:
	line	15
	
l53640:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l53644
	line	17
	
l53642:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l53644:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u13281
	goto	u13280
u13281:
	goto	l53642
u13280:
	line	21
	
l53646:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l53648:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u13291
	goto	u13290

u13291:
	goto	l53654
u13290:
	line	23
	
l53650:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l53652:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l53654:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l53656:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l53646
	line	28
	
l42052:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l42059:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_SEG9

;; *************** function _SEG9 *****************
;; Defined at:
;;		line 220 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;;		_Engineering_Adjust_JYTime
;; This function uses a non-reentrant model
;;
psect	text111,class=CODE,space=0,reloc=2,group=0
	file	"display.c"
	line	220
global __ptext111
__ptext111:
psect	text111
	file	"display.c"
	line	220
	global	__size_of_SEG9
	__size_of_SEG9	equ	__end_of_SEG9-_SEG9
	
_SEG9:
;incstack = 0
	opt	callstack 23
;SEG9@dat stored from wreg
	movwf	((c:SEG9@dat))^00h,c
	line	222
	
l53192:
;display.c: 222: if(dat&0x01) DisBuf[0] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(0)&7
	goto	u12551
	goto	u12550
u12551:
	goto	l53196
u12550:
	
l53194:
	movlb	0	; () banked
	bsf	(0+(5/8)+(_DisBuf))&0ffh,(5)&7
	goto	l53198
	line	223
	
l53196:
;display.c: 223: else DisBuf[0] &=~(1<<5);
	movlb	0	; () banked
	bcf	(0+(5/8)+(_DisBuf))&0ffh,(5)&7
	line	225
	
l53198:; BSR set to: 0

;display.c: 225: if(dat&0x02) DisBuf[2] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(1)&7
	goto	u12561
	goto	u12560
u12561:
	goto	l53202
u12560:
	
l53200:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+02h))&0ffh,(5)&7
	goto	l53204
	line	226
	
l53202:; BSR set to: 0

;display.c: 226: else DisBuf[2] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+02h))&0ffh,(5)&7
	line	228
	
l53204:; BSR set to: 0

;display.c: 228: if(dat&0x04) DisBuf[4] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(2)&7
	goto	u12571
	goto	u12570
u12571:
	goto	l53208
u12570:
	
l53206:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+04h))&0ffh,(5)&7
	goto	l53210
	line	229
	
l53208:; BSR set to: 0

;display.c: 229: else DisBuf[4] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+04h))&0ffh,(5)&7
	line	231
	
l53210:; BSR set to: 0

;display.c: 231: if(dat&0x08) DisBuf[6] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(3)&7
	goto	u12581
	goto	u12580
u12581:
	goto	l53214
u12580:
	
l53212:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+06h))&0ffh,(5)&7
	goto	l53216
	line	232
	
l53214:; BSR set to: 0

;display.c: 232: else DisBuf[6] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+06h))&0ffh,(5)&7
	line	234
	
l53216:; BSR set to: 0

;display.c: 234: if(dat&0x10) DisBuf[8] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(4)&7
	goto	u12591
	goto	u12590
u12591:
	goto	l53220
u12590:
	
l53218:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+08h))&0ffh,(5)&7
	goto	l53222
	line	235
	
l53220:; BSR set to: 0

;display.c: 235: else DisBuf[8] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+08h))&0ffh,(5)&7
	line	237
	
l53222:; BSR set to: 0

;display.c: 237: if(dat&0x20) DisBuf[10] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(5)&7
	goto	u12601
	goto	u12600
u12601:
	goto	l53226
u12600:
	
l53224:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+0Ah))&0ffh,(5)&7
	goto	l53228
	line	238
	
l53226:; BSR set to: 0

;display.c: 238: else DisBuf[10] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Ah))&0ffh,(5)&7
	line	240
	
l53228:; BSR set to: 0

;display.c: 240: if(dat&0x40) DisBuf[12] |=(1<<5);
	
	btfss	((c:SEG9@dat))^00h,c,(6)&7
	goto	u12611
	goto	u12610
u12611:
	goto	l53232
u12610:
	
l53230:; BSR set to: 0

	bsf	(0+(5/8)+0+(_DisBuf+0Ch))&0ffh,(5)&7
	goto	l13117
	line	241
	
l53232:; BSR set to: 0

;display.c: 241: else DisBuf[12] &=~(1<<5);
	bcf	(0+(5/8)+0+(_DisBuf+0Ch))&0ffh,(5)&7
	line	243
	
l13117:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG9
	__end_of_SEG9:
	signat	_SEG9,4217
	global	_SEG13

;; *************** function _SEG13 *****************
;; Defined at:
;;		line 315 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text112,class=CODE,space=0,reloc=2,group=0
	line	315
global __ptext112
__ptext112:
psect	text112
	file	"display.c"
	line	315
	global	__size_of_SEG13
	__size_of_SEG13	equ	__end_of_SEG13-_SEG13
	
_SEG13:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG13@dat stored from wreg
	movwf	((c:SEG13@dat))^00h,c
	line	317
	
l53360:
;display.c: 317: if(dat&0x01) DisBuf[0] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(0)&7
	goto	u12831
	goto	u12830
u12831:
	goto	l53364
u12830:
	
l53362:
	movlb	0	; () banked
	bsf	(0+(1/8)+(_DisBuf))&0ffh,(1)&7
	goto	l53366
	line	318
	
l53364:
;display.c: 318: else DisBuf[0] &=~(1<<1);
	movlb	0	; () banked
	bcf	(0+(1/8)+(_DisBuf))&0ffh,(1)&7
	line	320
	
l53366:; BSR set to: 0

;display.c: 320: if(dat&0x02) DisBuf[2] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(1)&7
	goto	u12841
	goto	u12840
u12841:
	goto	l53370
u12840:
	
l53368:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+02h))&0ffh,(1)&7
	goto	l53372
	line	321
	
l53370:; BSR set to: 0

;display.c: 321: else DisBuf[2] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+02h))&0ffh,(1)&7
	line	323
	
l53372:; BSR set to: 0

;display.c: 323: if(dat&0x04) DisBuf[4] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(2)&7
	goto	u12851
	goto	u12850
u12851:
	goto	l53376
u12850:
	
l53374:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+04h))&0ffh,(1)&7
	goto	l53378
	line	324
	
l53376:; BSR set to: 0

;display.c: 324: else DisBuf[4] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+04h))&0ffh,(1)&7
	line	326
	
l53378:; BSR set to: 0

;display.c: 326: if(dat&0x08) DisBuf[6] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(3)&7
	goto	u12861
	goto	u12860
u12861:
	goto	l53382
u12860:
	
l53380:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+06h))&0ffh,(1)&7
	goto	l53384
	line	327
	
l53382:; BSR set to: 0

;display.c: 327: else DisBuf[6] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+06h))&0ffh,(1)&7
	line	329
	
l53384:; BSR set to: 0

;display.c: 329: if(dat&0x10) DisBuf[8] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(4)&7
	goto	u12871
	goto	u12870
u12871:
	goto	l53388
u12870:
	
l53386:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+08h))&0ffh,(1)&7
	goto	l53390
	line	330
	
l53388:; BSR set to: 0

;display.c: 330: else DisBuf[8] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+08h))&0ffh,(1)&7
	line	332
	
l53390:; BSR set to: 0

;display.c: 332: if(dat&0x20) DisBuf[10] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(5)&7
	goto	u12881
	goto	u12880
u12881:
	goto	l53394
u12880:
	
l53392:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+0Ah))&0ffh,(1)&7
	goto	l53396
	line	333
	
l53394:; BSR set to: 0

;display.c: 333: else DisBuf[10] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+0Ah))&0ffh,(1)&7
	line	335
	
l53396:; BSR set to: 0

;display.c: 335: if(dat&0x40) DisBuf[12] |=(1<<1);
	
	btfss	((c:SEG13@dat))^00h,c,(6)&7
	goto	u12891
	goto	u12890
u12891:
	goto	l53400
u12890:
	
l53398:; BSR set to: 0

	bsf	(0+(1/8)+0+(_DisBuf+0Ch))&0ffh,(1)&7
	goto	l13185
	line	336
	
l53400:; BSR set to: 0

;display.c: 336: else DisBuf[12] &=~(1<<1);
	bcf	(0+(1/8)+0+(_DisBuf+0Ch))&0ffh,(1)&7
	line	338
	
l13185:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG13
	__end_of_SEG13:
	signat	_SEG13,4217
	global	_SEG12

;; *************** function _SEG12 *****************
;; Defined at:
;;		line 291 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text113,class=CODE,space=0,reloc=2,group=0
	line	291
global __ptext113
__ptext113:
psect	text113
	file	"display.c"
	line	291
	global	__size_of_SEG12
	__size_of_SEG12	equ	__end_of_SEG12-_SEG12
	
_SEG12:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG12@dat stored from wreg
	movwf	((c:SEG12@dat))^00h,c
	line	293
	
l53318:
;display.c: 293: if(dat&0x01) DisBuf[0] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(0)&7
	goto	u12761
	goto	u12760
u12761:
	goto	l53322
u12760:
	
l53320:
	movlb	0	; () banked
	bsf	(0+(2/8)+(_DisBuf))&0ffh,(2)&7
	goto	l53324
	line	294
	
l53322:
;display.c: 294: else DisBuf[0] &=~(1<<2);
	movlb	0	; () banked
	bcf	(0+(2/8)+(_DisBuf))&0ffh,(2)&7
	line	296
	
l53324:; BSR set to: 0

;display.c: 296: if(dat&0x02) DisBuf[2] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(1)&7
	goto	u12771
	goto	u12770
u12771:
	goto	l53328
u12770:
	
l53326:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+02h))&0ffh,(2)&7
	goto	l53330
	line	297
	
l53328:; BSR set to: 0

;display.c: 297: else DisBuf[2] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+02h))&0ffh,(2)&7
	line	299
	
l53330:; BSR set to: 0

;display.c: 299: if(dat&0x04) DisBuf[4] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(2)&7
	goto	u12781
	goto	u12780
u12781:
	goto	l53334
u12780:
	
l53332:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+04h))&0ffh,(2)&7
	goto	l53336
	line	300
	
l53334:; BSR set to: 0

;display.c: 300: else DisBuf[4] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+04h))&0ffh,(2)&7
	line	302
	
l53336:; BSR set to: 0

;display.c: 302: if(dat&0x08) DisBuf[6] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(3)&7
	goto	u12791
	goto	u12790
u12791:
	goto	l53340
u12790:
	
l53338:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+06h))&0ffh,(2)&7
	goto	l53342
	line	303
	
l53340:; BSR set to: 0

;display.c: 303: else DisBuf[6] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+06h))&0ffh,(2)&7
	line	305
	
l53342:; BSR set to: 0

;display.c: 305: if(dat&0x10) DisBuf[8] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(4)&7
	goto	u12801
	goto	u12800
u12801:
	goto	l53346
u12800:
	
l53344:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+08h))&0ffh,(2)&7
	goto	l53348
	line	306
	
l53346:; BSR set to: 0

;display.c: 306: else DisBuf[8] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+08h))&0ffh,(2)&7
	line	308
	
l53348:; BSR set to: 0

;display.c: 308: if(dat&0x20) DisBuf[10] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(5)&7
	goto	u12811
	goto	u12810
u12811:
	goto	l53352
u12810:
	
l53350:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+0Ah))&0ffh,(2)&7
	goto	l53354
	line	309
	
l53352:; BSR set to: 0

;display.c: 309: else DisBuf[10] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+0Ah))&0ffh,(2)&7
	line	311
	
l53354:; BSR set to: 0

;display.c: 311: if(dat&0x40) DisBuf[12] |=(1<<2);
	
	btfss	((c:SEG12@dat))^00h,c,(6)&7
	goto	u12821
	goto	u12820
u12821:
	goto	l53358
u12820:
	
l53356:; BSR set to: 0

	bsf	(0+(2/8)+0+(_DisBuf+0Ch))&0ffh,(2)&7
	goto	l13168
	line	312
	
l53358:; BSR set to: 0

;display.c: 312: else DisBuf[12] &=~(1<<2);
	bcf	(0+(2/8)+0+(_DisBuf+0Ch))&0ffh,(2)&7
	line	314
	
l13168:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG12
	__end_of_SEG12:
	signat	_SEG12,4217
	global	_SEG11

;; *************** function _SEG11 *****************
;; Defined at:
;;		line 268 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Voltage_Calibration
;; This function uses a non-reentrant model
;;
psect	text114,class=CODE,space=0,reloc=2,group=0
	line	268
global __ptext114
__ptext114:
psect	text114
	file	"display.c"
	line	268
	global	__size_of_SEG11
	__size_of_SEG11	equ	__end_of_SEG11-_SEG11
	
_SEG11:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG11@dat stored from wreg
	movwf	((c:SEG11@dat))^00h,c
	line	270
	
l53276:
;display.c: 270: if(dat&0x01) DisBuf[0] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(0)&7
	goto	u12691
	goto	u12690
u12691:
	goto	l53280
u12690:
	
l53278:
	movlb	0	; () banked
	bsf	(0+(3/8)+(_DisBuf))&0ffh,(3)&7
	goto	l53282
	line	271
	
l53280:
;display.c: 271: else DisBuf[0] &=~(1<<3);
	movlb	0	; () banked
	bcf	(0+(3/8)+(_DisBuf))&0ffh,(3)&7
	line	273
	
l53282:; BSR set to: 0

;display.c: 273: if(dat&0x02) DisBuf[2] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(1)&7
	goto	u12701
	goto	u12700
u12701:
	goto	l53286
u12700:
	
l53284:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+02h))&0ffh,(3)&7
	goto	l53288
	line	274
	
l53286:; BSR set to: 0

;display.c: 274: else DisBuf[2] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+02h))&0ffh,(3)&7
	line	276
	
l53288:; BSR set to: 0

;display.c: 276: if(dat&0x04) DisBuf[4] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(2)&7
	goto	u12711
	goto	u12710
u12711:
	goto	l53292
u12710:
	
l53290:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+04h))&0ffh,(3)&7
	goto	l53294
	line	277
	
l53292:; BSR set to: 0

;display.c: 277: else DisBuf[4] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+04h))&0ffh,(3)&7
	line	279
	
l53294:; BSR set to: 0

;display.c: 279: if(dat&0x08) DisBuf[6] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(3)&7
	goto	u12721
	goto	u12720
u12721:
	goto	l53298
u12720:
	
l53296:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+06h))&0ffh,(3)&7
	goto	l53300
	line	280
	
l53298:; BSR set to: 0

;display.c: 280: else DisBuf[6] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+06h))&0ffh,(3)&7
	line	282
	
l53300:; BSR set to: 0

;display.c: 282: if(dat&0x10) DisBuf[8] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(4)&7
	goto	u12731
	goto	u12730
u12731:
	goto	l53304
u12730:
	
l53302:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+08h))&0ffh,(3)&7
	goto	l53306
	line	283
	
l53304:; BSR set to: 0

;display.c: 283: else DisBuf[8] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+08h))&0ffh,(3)&7
	line	285
	
l53306:; BSR set to: 0

;display.c: 285: if(dat&0x20) DisBuf[10] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(5)&7
	goto	u12741
	goto	u12740
u12741:
	goto	l53310
u12740:
	
l53308:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+0Ah))&0ffh,(3)&7
	goto	l53312
	line	286
	
l53310:; BSR set to: 0

;display.c: 286: else DisBuf[10] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+0Ah))&0ffh,(3)&7
	line	288
	
l53312:; BSR set to: 0

;display.c: 288: if(dat&0x40) DisBuf[12] |=(1<<3);
	
	btfss	((c:SEG11@dat))^00h,c,(6)&7
	goto	u12751
	goto	u12750
u12751:
	goto	l53316
u12750:
	
l53314:; BSR set to: 0

	bsf	(0+(3/8)+0+(_DisBuf+0Ch))&0ffh,(3)&7
	goto	l13151
	line	289
	
l53316:; BSR set to: 0

;display.c: 289: else DisBuf[12] &=~(1<<3);
	bcf	(0+(3/8)+0+(_DisBuf+0Ch))&0ffh,(3)&7
	line	290
	
l13151:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG11
	__end_of_SEG11:
	signat	_SEG11,4217
	global	_SEG10

;; *************** function _SEG10 *****************
;; Defined at:
;;		line 244 in file "display.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;;		_Engineering_Adjust_JYTime
;; This function uses a non-reentrant model
;;
psect	text115,class=CODE,space=0,reloc=2,group=0
	line	244
global __ptext115
__ptext115:
psect	text115
	file	"display.c"
	line	244
	global	__size_of_SEG10
	__size_of_SEG10	equ	__end_of_SEG10-_SEG10
	
_SEG10:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;SEG10@dat stored from wreg
	movwf	((c:SEG10@dat))^00h,c
	line	246
	
l53234:
;display.c: 246: if(dat&0x01) DisBuf[0] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(0)&7
	goto	u12621
	goto	u12620
u12621:
	goto	l53238
u12620:
	
l53236:
	movlb	0	; () banked
	bsf	(0+(4/8)+(_DisBuf))&0ffh,(4)&7
	goto	l53240
	line	247
	
l53238:
;display.c: 247: else DisBuf[0] &=~(1<<4);
	movlb	0	; () banked
	bcf	(0+(4/8)+(_DisBuf))&0ffh,(4)&7
	line	249
	
l53240:; BSR set to: 0

;display.c: 249: if(dat&0x02) DisBuf[2] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(1)&7
	goto	u12631
	goto	u12630
u12631:
	goto	l53244
u12630:
	
l53242:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+02h))&0ffh,(4)&7
	goto	l53246
	line	250
	
l53244:; BSR set to: 0

;display.c: 250: else DisBuf[2] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+02h))&0ffh,(4)&7
	line	252
	
l53246:; BSR set to: 0

;display.c: 252: if(dat&0x04) DisBuf[4] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(2)&7
	goto	u12641
	goto	u12640
u12641:
	goto	l53250
u12640:
	
l53248:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+04h))&0ffh,(4)&7
	goto	l53252
	line	253
	
l53250:; BSR set to: 0

;display.c: 253: else DisBuf[4] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+04h))&0ffh,(4)&7
	line	255
	
l53252:; BSR set to: 0

;display.c: 255: if(dat&0x08) DisBuf[6] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(3)&7
	goto	u12651
	goto	u12650
u12651:
	goto	l53256
u12650:
	
l53254:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+06h))&0ffh,(4)&7
	goto	l53258
	line	256
	
l53256:; BSR set to: 0

;display.c: 256: else DisBuf[6] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+06h))&0ffh,(4)&7
	line	258
	
l53258:; BSR set to: 0

;display.c: 258: if(dat&0x10) DisBuf[8] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(4)&7
	goto	u12661
	goto	u12660
u12661:
	goto	l53262
u12660:
	
l53260:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+08h))&0ffh,(4)&7
	goto	l53264
	line	259
	
l53262:; BSR set to: 0

;display.c: 259: else DisBuf[8] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+08h))&0ffh,(4)&7
	line	261
	
l53264:; BSR set to: 0

;display.c: 261: if(dat&0x20) DisBuf[10] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(5)&7
	goto	u12671
	goto	u12670
u12671:
	goto	l53268
u12670:
	
l53266:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+0Ah))&0ffh,(4)&7
	goto	l53270
	line	262
	
l53268:; BSR set to: 0

;display.c: 262: else DisBuf[10] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+0Ah))&0ffh,(4)&7
	line	264
	
l53270:; BSR set to: 0

;display.c: 264: if(dat&0x40) DisBuf[12] |=(1<<4);
	
	btfss	((c:SEG10@dat))^00h,c,(6)&7
	goto	u12681
	goto	u12680
u12681:
	goto	l53274
u12680:
	
l53272:; BSR set to: 0

	bsf	(0+(4/8)+0+(_DisBuf+0Ch))&0ffh,(4)&7
	goto	l13134
	line	265
	
l53274:; BSR set to: 0

;display.c: 265: else DisBuf[12] &=~(1<<4);
	bcf	(0+(4/8)+0+(_DisBuf+0Ch))&0ffh,(4)&7
	line	267
	
l13134:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_SEG10
	__end_of_SEG10:
	signat	_SEG10,4217
	global	_Label_h

;; *************** function _Label_h *****************
;; Defined at:
;;		line 427 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;; This function uses a non-reentrant model
;;
psect	text116,class=CODE,space=0,reloc=2,group=0
	line	427
global __ptext116
__ptext116:
psect	text116
	file	"display.c"
	line	427
	global	__size_of_Label_h
	__size_of_Label_h	equ	__end_of_Label_h-_Label_h
	
_Label_h:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_h@sta stored from wreg
	movwf	((c:Label_h@sta))^00h,c
	line	429
	
l53408:
;display.c: 429: if(sta)
	movf	((c:Label_h@sta))^00h,c,w
	btfsc	status,2
	goto	u12911
	goto	u12910
u12911:
	goto	l53412
u12910:
	line	431
	
l53410:
;display.c: 430: {;display.c: 431: DisBuf[8] |=(1<<0);
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_DisBuf+08h))&0ffh,(0)&7
	line	432
;display.c: 432: }
	goto	l13220
	line	435
	
l53412:
;display.c: 433: else;display.c: 434: {;display.c: 435: DisBuf[8] &=~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+0+(_DisBuf+08h))&0ffh,(0)&7
	line	437
	
l13220:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_h
	__end_of_Label_h:
	signat	_Label_h,4217
	global	_Label_AddUp

;; *************** function _Label_AddUp *****************
;; Defined at:
;;		line 401 in file "display.c"
;; Parameters:    Size  Location     Type
;;  sta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sta             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_CumulativeTime
;; This function uses a non-reentrant model
;;
psect	text117,class=CODE,space=0,reloc=2,group=0
	line	401
global __ptext117
__ptext117:
psect	text117
	file	"display.c"
	line	401
	global	__size_of_Label_AddUp
	__size_of_Label_AddUp	equ	__end_of_Label_AddUp-_Label_AddUp
	
_Label_AddUp:; BSR set to: 0

;incstack = 0
	opt	callstack 23
;Label_AddUp@sta stored from wreg
	movwf	((c:Label_AddUp@sta))^00h,c
	line	403
	
l53402:
;display.c: 403: if(sta)
	movf	((c:Label_AddUp@sta))^00h,c,w
	btfsc	status,2
	goto	u12901
	goto	u12900
u12901:
	goto	l53406
u12900:
	line	405
	
l53404:
;display.c: 404: {;display.c: 405: DisBuf[6] |=(1<<0);
	movlb	0	; () banked
	bsf	(0+(0/8)+0+(_DisBuf+06h))&0ffh,(0)&7
	line	406
;display.c: 406: }
	goto	l13210
	line	409
	
l53406:
;display.c: 407: else;display.c: 408: {;display.c: 409: DisBuf[6] &=~(1<<0);
	movlb	0	; () banked
	bcf	(0+(0/8)+0+(_DisBuf+06h))&0ffh,(0)&7
	line	411
	
l13210:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Label_AddUp
	__end_of_Label_AddUp:
	signat	_Label_AddUp,4217
	global	_Cmd_Send

;; *************** function _Cmd_Send *****************
;; Defined at:
;;		line 148 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 31/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_CheckSum_Calculate2
;;		_Uart2SendBuff
;; This function is called by:
;;		_main
;;		_ErrorCtr
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text118,class=CODE,space=0,reloc=2,group=0
	file	"uart2.c"
	line	148
global __ptext118
__ptext118:
psect	text118
	file	"uart2.c"
	line	148
	global	__size_of_Cmd_Send
	__size_of_Cmd_Send	equ	__end_of_Cmd_Send-_Cmd_Send
	
_Cmd_Send:; BSR set to: 0

;incstack = 0
	opt	callstack 22
	line	153
	
l53724:
;uart2.c: 153: sUsart2.TxNum=0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	(1+(_sUsart2+02Eh))&0ffh
	movlw	low(0)
	movwf	(0+(_sUsart2+02Eh))&0ffh
	line	154
	
l53726:; BSR set to: 1

;uart2.c: 154: sUsart2.TxData[sUsart2.TxNum++] = 0xD5;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0D5h)
	movwf	indf2
	
l53728:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	155
	
l53730:; BSR set to: 1

;uart2.c: 155: sUsart2.TxData[sUsart2.TxNum++] = 0x00;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	
l53732:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	156
	
l53734:; BSR set to: 1

;uart2.c: 156: sUsart2.TxData[sUsart2.TxNum++] = 0x00;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	
l53736:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	157
	
l53738:; BSR set to: 1

;uart2.c: 157: sUsart2.TxData[sUsart2.TxNum++] = RunData.StandbySta;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	0+(_RunData+029h),indf2

	
l53740:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	158
	
l53742:; BSR set to: 1

;uart2.c: 158: sUsart2.TxData[sUsart2.TxNum++] = (RunData.FlowSet>>8)&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(1+(_RunData+04h))&0ffh,w
	movwf	indf2,c

	
l53744:; BSR set to: 0

	movlb	1	; () banked
	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	159
	
l53746:; BSR set to: 1

;uart2.c: 159: sUsart2.TxData[sUsart2.TxNum++] = RunData.FlowSet&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	0+(_RunData+04h),indf2

	
l53748:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	160
	
l53750:; BSR set to: 1

;uart2.c: 160: sUsart2.TxData[sUsart2.TxNum++] = (RunData.JY_TimeSet>>8)&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(1+(_RunData+01Ah))&0ffh,w
	movwf	indf2,c

	
l53752:; BSR set to: 0

	movlb	1	; () banked
	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	161
	
l53754:; BSR set to: 1

;uart2.c: 161: sUsart2.TxData[sUsart2.TxNum++] = RunData.JY_TimeSet&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	0+(_RunData+01Ah),indf2

	
l53756:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	162
	
l53758:; BSR set to: 1

;uart2.c: 162: sUsart2.TxData[sUsart2.TxNum++] = (RunData.XF_TimeSet>>8)&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(1+(_RunData+01Ch))&0ffh,w
	movwf	indf2,c

	
l53760:; BSR set to: 0

	movlb	1	; () banked
	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	163
	
l53762:; BSR set to: 1

;uart2.c: 163: sUsart2.TxData[sUsart2.TxNum++] = RunData.XF_TimeSet&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	0+(_RunData+01Ch),indf2

	
l53764:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	164
	
l53766:; BSR set to: 1

;uart2.c: 164: sUsart2.TxData[sUsart2.TxNum++] = (RunData.FLOW_Trim>>8)&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(1+(_RunData+022h))&0ffh,w
	movwf	indf2,c

	
l53768:; BSR set to: 0

	movlb	1	; () banked
	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	165
	
l53770:; BSR set to: 1

;uart2.c: 165: sUsart2.TxData[sUsart2.TxNum++] = RunData.FLOW_Trim&0xFF;
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	0+(_RunData+022h),indf2

	
l53772:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	167
	
l53774:; BSR set to: 1

;uart2.c: 167: sUsart2.TxLength=sUsart2.TxNum+1;
	movlw	low(01h)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	(0+(_sUsart2+030h))&0ffh
	movlw	high(01h)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+(0+(_sUsart2+030h))&0ffh
	line	168
	
l53776:; BSR set to: 1

;uart2.c: 168: sUsart2.TxData[sUsart2.TxNum++] = CheckSum_Calculate2(sUsart2.TxData,sUsart2.TxLength-1);
		movlw	low(_sUsart2+01Ah)
	movwf	((c:CheckSum_Calculate2@data0))^00h,c
	movlw	high(_sUsart2+01Ah)
	movwf	((c:CheckSum_Calculate2@data0+1))^00h,c

	movlw	low(0FFFFh)
	movwf	(??_Cmd_Send+0+0)^00h,c
	movlw	high(0FFFFh)
	movwf	1+(??_Cmd_Send+0+0)^00h,c
	lfsr	2,(_sUsart2)+030h
	movff	postinc2,??_Cmd_Send+2+0
	movff	postdec2,??_Cmd_Send+2+0+1
	movf	(??_Cmd_Send+0+0)^00h,c,w
	addwf	(??_Cmd_Send+2+0)^00h,c
	movf	(??_Cmd_Send+0+1)^00h,c,w
	addwfc	(??_Cmd_Send+2+1)^00h,c
	movff	??_Cmd_Send+2+0,(c:CheckSum_Calculate2@length)
	movff	??_Cmd_Send+2+1,(c:CheckSum_Calculate2@length+1)
	clrf	((c:CheckSum_Calculate2@length+2))^00h,c
	clrf	((c:CheckSum_Calculate2@length+3))^00h,c
	call	_CheckSum_Calculate2	;wreg free
	movwf	(??_Cmd_Send+4+0)^00h,c
	movlw	low(_sUsart2+01Ah)
	addwf	(0+(_sUsart2+02Eh))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+01Ah)
	addwfc	(1+(_sUsart2+02Eh))&0ffh,w
	movwf	1+c:fsr2l
	movff	(??_Cmd_Send+4+0),indf2

	
l53778:; BSR set to: 1

	infsnz	(0+(_sUsart2+02Eh))&0ffh
	incf	(1+(_sUsart2+02Eh))&0ffh
	line	169
	
l53780:; BSR set to: 1

;uart2.c: 169: Uart2SendBuff(sUsart2.TxData,sUsart2.TxLength);
		movlw	low(_sUsart2+01Ah)
	movwf	((c:Uart2SendBuff@dat))^00h,c
	movlw	high(_sUsart2+01Ah)
	movwf	((c:Uart2SendBuff@dat+1))^00h,c

	movff	0+(_sUsart2+030h),(c:Uart2SendBuff@len)
	movff	1+(_sUsart2+030h),(c:Uart2SendBuff@len+1)
	call	_Uart2SendBuff	;wreg free
	line	170
	
l28485:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Cmd_Send
	__end_of_Cmd_Send:
	signat	_Cmd_Send,89
	global	_Uart2SendBuff

;; *************** function _Uart2SendBuff *****************
;; Defined at:
;;		line 109 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;  dat             2   10[COMRAM] PTR unsigned char 
;;		 -> sUsart2(54), 
;;  len             2   12[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   14[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 31/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Uart2Send
;; This function is called by:
;;		_Cmd_Send
;; This function uses a non-reentrant model
;;
psect	text119,class=CODE,space=0,reloc=2,group=0
	line	109
global __ptext119
__ptext119:
psect	text119
	file	"uart2.c"
	line	109
	global	__size_of_Uart2SendBuff
	__size_of_Uart2SendBuff	equ	__end_of_Uart2SendBuff-_Uart2SendBuff
	
_Uart2SendBuff:
;incstack = 0
	opt	callstack 22
	line	111
	
l53452:; BSR set to: 1

;uart2.c: 111: u16 i=0;
	movlw	high(0)
	movwf	((c:Uart2SendBuff@i+1))^00h,c
	movlw	low(0)
	movwf	((c:Uart2SendBuff@i))^00h,c
	line	112
;uart2.c: 112: for(i=0; i<len; i++)
	movlw	high(0)
	movwf	((c:Uart2SendBuff@i+1))^00h,c
	movlw	low(0)
	movwf	((c:Uart2SendBuff@i))^00h,c
	goto	l53458
	line	114
	
l53454:
;uart2.c: 113: {;uart2.c: 114: Uart2Send(dat[i]);
	movf	((c:Uart2SendBuff@i))^00h,c,w
	addwf	((c:Uart2SendBuff@dat))^00h,c,w
	movwf	c:fsr2l
	movf	((c:Uart2SendBuff@i+1))^00h,c,w
	addwfc	((c:Uart2SendBuff@dat+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_Uart2Send
	line	112
	
l53456:; BSR set to: 15

	infsnz	((c:Uart2SendBuff@i))^00h,c
	incf	((c:Uart2SendBuff@i+1))^00h,c
	
l53458:
		movf	((c:Uart2SendBuff@len))^00h,c,w
	subwf	((c:Uart2SendBuff@i))^00h,c,w
	movf	((c:Uart2SendBuff@len+1))^00h,c,w
	subwfb	((c:Uart2SendBuff@i+1))^00h,c,w
	btfss	status,0
	goto	u12991
	goto	u12990

u12991:
	goto	l53454
u12990:
	line	116
	
l28471:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Uart2SendBuff
	__end_of_Uart2SendBuff:
	signat	_Uart2SendBuff,8313
	global	_Uart2Send

;; *************** function _Uart2Send *****************
;; Defined at:
;;		line 101 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 31/1
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart2SendBuff
;; This function uses a non-reentrant model
;;
psect	text120,class=CODE,space=0,reloc=2,group=0
	line	101
global __ptext120
__ptext120:
psect	text120
	file	"uart2.c"
	line	101
	global	__size_of_Uart2Send
	__size_of_Uart2Send	equ	__end_of_Uart2Send-_Uart2Send
	
_Uart2Send:
;incstack = 0
	opt	callstack 22
;Uart2Send@dat stored from wreg
	movwf	((c:Uart2Send@dat))^00h,c
	line	103
	
l52830:
;uart2.c: 103: UR2DATL =dat;
	movff	(c:Uart2Send@dat),(3840)	;volatile
	line	104
;uart2.c: 104: while(!UR2TXEF)
	goto	l28462
	
l28463:; BSR set to: 15

	line	106
;uart2.c: 105: {;uart2.c: 106: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	107
	
l28462:
	line	104
	movlb	15	; () banked
	btfss	(30760/8)&0ffh,(30760)&7	;volatile
	goto	u12091
	goto	u12090
u12091:
	goto	l28463
u12090:
	line	108
	
l28465:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Uart2Send
	__end_of_Uart2Send:
	signat	_Uart2Send,4217
	global	_Cmd_Process

;; *************** function _Cmd_Process *****************
;; Defined at:
;;		line 171 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sum             1   29[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3E/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CheckSum_Calculate2
;; This function is called by:
;;		_main
;;		_ErrorCtr
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text121,class=CODE,space=0,reloc=2,group=0
	line	171
global __ptext121
__ptext121:
psect	text121
	file	"uart2.c"
	line	171
	global	__size_of_Cmd_Process
	__size_of_Cmd_Process	equ	__end_of_Cmd_Process-_Cmd_Process
	
_Cmd_Process:; BSR set to: 15

;incstack = 0
	opt	callstack 23
	line	174
	
l53694:
;uart2.c: 173: u8 sum;;uart2.c: 174: if(sUsart2.LinkCount > 10000)
		movlw	17
	movlb	1	; () banked
	subwf	 (0+(_sUsart2+034h))&0ffh,w
	movlw	39
	subwfb	(1+(_sUsart2+034h))&0ffh,w
	btfss	status,0
	goto	u13361
	goto	u13360

u13361:
	goto	l53698
u13360:
	line	176
	
l53696:; BSR set to: 1

;uart2.c: 175: {;uart2.c: 176: sUsart2.LinkSta = 0;
	movlw	low(0)
	movwf	(0+(_sUsart2+033h))&0ffh
	line	177
;uart2.c: 177: sUsart2.LinkCount = 10000;
	movlw	high(02710h)
	movwf	(1+(_sUsart2+034h))&0ffh
	movlw	low(02710h)
	movwf	(0+(_sUsart2+034h))&0ffh
	line	179
	
l53698:; BSR set to: 1

;uart2.c: 178: };uart2.c: 179: if(sUsart2.RxEnd==0x01)
		decf	(0+(_sUsart2+019h))&0ffh,w
	btfss	status,2
	goto	u13371
	goto	u13370

u13371:
	goto	l28491
u13370:
	line	181
	
l53700:; BSR set to: 1

;uart2.c: 180: {;uart2.c: 181: sUsart2.RxEnd=0;
	movlw	low(0)
	movwf	(0+(_sUsart2+019h))&0ffh
	line	182
	
l53702:; BSR set to: 1

;uart2.c: 182: sum = CheckSum_Calculate2(sUsart2.RxData,sUsart2.RxLength-1);
		movlw	low(_sUsart2)
	movwf	((c:CheckSum_Calculate2@data0))^00h,c
	movlw	high(_sUsart2)
	movwf	((c:CheckSum_Calculate2@data0+1))^00h,c

	movlw	low(0FFFFh)
	movwf	(??_Cmd_Process+0+0)^00h,c
	movlw	high(0FFFFh)
	movwf	1+(??_Cmd_Process+0+0)^00h,c
	lfsr	2,(_sUsart2)+016h
	movff	postinc2,??_Cmd_Process+2+0
	movff	postdec2,??_Cmd_Process+2+0+1
	movf	(??_Cmd_Process+0+0)^00h,c,w
	addwf	(??_Cmd_Process+2+0)^00h,c
	movf	(??_Cmd_Process+0+1)^00h,c,w
	addwfc	(??_Cmd_Process+2+1)^00h,c
	movff	??_Cmd_Process+2+0,(c:CheckSum_Calculate2@length)
	movff	??_Cmd_Process+2+1,(c:CheckSum_Calculate2@length+1)
	clrf	((c:CheckSum_Calculate2@length+2))^00h,c
	clrf	((c:CheckSum_Calculate2@length+3))^00h,c
	call	_CheckSum_Calculate2	;wreg free
	movwf	((c:Cmd_Process@sum))^00h,c
	line	184
	
l53704:; BSR set to: 1

;uart2.c: 184: if((sUsart2.RxData[0] == 0xD5)&&(sUsart2.RxData[sUsart2.RxLength-1] == sum))
		movlw	213
	xorwf	((_sUsart2))&0ffh,w
	btfss	status,2
	goto	u13381
	goto	u13380

u13381:
	goto	l28491
u13380:
	
l53706:; BSR set to: 1

	movlw	low(_sUsart2+0FFFFh)
	addwf	(0+(_sUsart2+016h))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2+0FFFFh)
	addwfc	(1+(_sUsart2+016h))&0ffh,w
	movwf	1+c:fsr2l
	movf	((c:Cmd_Process@sum))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u13391
	goto	u13390

u13391:
	goto	l28491
u13390:
	line	186
	
l53708:; BSR set to: 1

;uart2.c: 185: {;uart2.c: 186: sUsart2.LinkCount = 0;
	movlw	high(0)
	movwf	(1+(_sUsart2+034h))&0ffh
	movlw	low(0)
	movwf	(0+(_sUsart2+034h))&0ffh
	line	187
;uart2.c: 187: sUsart2.LinkSta = 1;
	movlw	low(01h)
	movwf	(0+(_sUsart2+033h))&0ffh
	line	188
	
l53710:; BSR set to: 1

;uart2.c: 188: RunData.Concentration = (sUsart2.RxData[3]<<8) | sUsart2.RxData[4];
	movf	(0+(_sUsart2+04h))&0ffh,w
	movff	0+(_sUsart2+03h),??_Cmd_Process+0+0
	clrf	(??_Cmd_Process+0+0+1)^00h,c
	movff	??_Cmd_Process+0+0,??_Cmd_Process+0+1
	clrf	(??_Cmd_Process+0+0)^00h,c
	iorwf	(??_Cmd_Process+0+0)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_RunData+0Eh))&0ffh
	movf	(??_Cmd_Process+0+1)^00h,c,w
	movwf	1+(0+(_RunData+0Eh))&0ffh
	line	189
	
l53712:; BSR set to: 0

;uart2.c: 189: RunData.FlowValue = (sUsart2.RxData[5]<<8) | sUsart2.RxData[6];
	movlb	1	; () banked
	movf	(0+(_sUsart2+06h))&0ffh,w
	movff	0+(_sUsart2+05h),??_Cmd_Process+0+0
	clrf	(??_Cmd_Process+0+0+1)^00h,c
	movff	??_Cmd_Process+0+0,??_Cmd_Process+0+1
	clrf	(??_Cmd_Process+0+0)^00h,c
	iorwf	(??_Cmd_Process+0+0)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_RunData+0Ah))&0ffh
	movf	(??_Cmd_Process+0+1)^00h,c,w
	movwf	1+(0+(_RunData+0Ah))&0ffh
	line	190
	
l53714:; BSR set to: 0

;uart2.c: 190: RunData.TempValue = (sUsart2.RxData[7]<<8) | sUsart2.RxData[8];
	movlb	1	; () banked
	movf	(0+(_sUsart2+08h))&0ffh,w
	movff	0+(_sUsart2+07h),??_Cmd_Process+0+0
	clrf	(??_Cmd_Process+0+0+1)^00h,c
	movff	??_Cmd_Process+0+0,??_Cmd_Process+0+1
	clrf	(??_Cmd_Process+0+0)^00h,c
	iorwf	(??_Cmd_Process+0+0)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_RunData+0Ch))&0ffh
	movf	(??_Cmd_Process+0+1)^00h,c,w
	movwf	1+(0+(_RunData+0Ch))&0ffh
	line	191
	
l53716:; BSR set to: 0

;uart2.c: 191: RunData.DC12_V = (sUsart2.RxData[9]<<8) | sUsart2.RxData[10];
	movlb	1	; () banked
	movf	(0+(_sUsart2+0Ah))&0ffh,w
	movff	0+(_sUsart2+09h),??_Cmd_Process+0+0
	clrf	(??_Cmd_Process+0+0+1)^00h,c
	movff	??_Cmd_Process+0+0,??_Cmd_Process+0+1
	clrf	(??_Cmd_Process+0+0)^00h,c
	iorwf	(??_Cmd_Process+0+0)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_RunData+06h))&0ffh
	movf	(??_Cmd_Process+0+1)^00h,c,w
	movwf	1+(0+(_RunData+06h))&0ffh
	line	192
	
l53718:; BSR set to: 0

;uart2.c: 192: RunData.ACDC_V = (sUsart2.RxData[11]<<8) | sUsart2.RxData[12];
	movlb	1	; () banked
	movf	(0+(_sUsart2+0Ch))&0ffh,w
	movff	0+(_sUsart2+0Bh),??_Cmd_Process+0+0
	clrf	(??_Cmd_Process+0+0+1)^00h,c
	movff	??_Cmd_Process+0+0,??_Cmd_Process+0+1
	clrf	(??_Cmd_Process+0+0)^00h,c
	iorwf	(??_Cmd_Process+0+0)^00h,c,w
	movlb	0	; () banked
	movwf	(0+(_RunData+08h))&0ffh
	movf	(??_Cmd_Process+0+1)^00h,c,w
	movwf	1+(0+(_RunData+08h))&0ffh
	line	193
	
l53720:; BSR set to: 0

;uart2.c: 193: RunData.PowkeyFlag = sUsart2.RxData[13];
	movff	0+(_sUsart2+0Dh),(_RunData)
	line	197
	
l28491:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Cmd_Process
	__end_of_Cmd_Process:
	signat	_Cmd_Process,89
	global	_CheckSum_Calculate2

;; *************** function _CheckSum_Calculate2 *****************
;; Defined at:
;;		line 133 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;  data0           2    9[COMRAM] PTR unsigned char 
;;		 -> sUsart2(54), 
;;  length          4   11[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  i               4   21[COMRAM] unsigned long 
;;  accumulate      4   16[COMRAM] long 
;;  checksum        1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Cmd_Send
;;		_Cmd_Process
;; This function uses a non-reentrant model
;;
psect	text122,class=CODE,space=0,reloc=2,group=0
	line	133
global __ptext122
__ptext122:
psect	text122
	file	"uart2.c"
	line	133
	global	__size_of_CheckSum_Calculate2
	__size_of_CheckSum_Calculate2	equ	__end_of_CheckSum_Calculate2-_CheckSum_Calculate2
	
_CheckSum_Calculate2:
;incstack = 0
	opt	callstack 23
	line	136
	
l53460:; BSR set to: 1

;uart2.c: 135: u32 i;;uart2.c: 136: long accumulate=0;
	movlw	low(0)
	movwf	((c:CheckSum_Calculate2@accumulate))^00h,c
	movlw	high(0)
	movwf	((c:CheckSum_Calculate2@accumulate+1))^00h,c
	movlw	low highword(0)
	movwf	((c:CheckSum_Calculate2@accumulate+2))^00h,c
	movlw	high highword(0)
	movwf	((c:CheckSum_Calculate2@accumulate+3))^00h,c
	line	138
;uart2.c: 138: for(i=0;i<length;i++)
	movlw	low(0)
	movwf	((c:CheckSum_Calculate2@i))^00h,c
	movlw	high(0)
	movwf	((c:CheckSum_Calculate2@i+1))^00h,c
	movlw	low highword(0)
	movwf	((c:CheckSum_Calculate2@i+2))^00h,c
	movlw	high highword(0)
	movwf	((c:CheckSum_Calculate2@i+3))^00h,c
	goto	l53466
	line	140
	
l53462:; BSR set to: 1

;uart2.c: 139: {;uart2.c: 140: accumulate+=data0[i];
	movf	((c:CheckSum_Calculate2@i))^00h,c,w
	addwf	((c:CheckSum_Calculate2@data0))^00h,c,w
	movwf	c:fsr2l
	movf	((c:CheckSum_Calculate2@i+1))^00h,c,w
	addwfc	((c:CheckSum_Calculate2@data0+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_CheckSum_Calculate2+0+0)^00h,c
	movf	((??_CheckSum_Calculate2+0+0))^00h,c,w
	addwf	((c:CheckSum_Calculate2@accumulate))^00h,c
	movlw	0
	addwfc	((c:CheckSum_Calculate2@accumulate+1))^00h,c
	addwfc	((c:CheckSum_Calculate2@accumulate+2))^00h,c
	addwfc	((c:CheckSum_Calculate2@accumulate+3))^00h,c
	line	138
	
l53464:; BSR set to: 1

	movlw	low(01h)
	addwf	((c:CheckSum_Calculate2@i))^00h,c
	movlw	0
	addwfc	((c:CheckSum_Calculate2@i+1))^00h,c
	addwfc	((c:CheckSum_Calculate2@i+2))^00h,c
	addwfc	((c:CheckSum_Calculate2@i+3))^00h,c
	
l53466:; BSR set to: 1

		movf	((c:CheckSum_Calculate2@length))^00h,c,w
	subwf	((c:CheckSum_Calculate2@i))^00h,c,w
	movf	((c:CheckSum_Calculate2@length+1))^00h,c,w
	subwfb	((c:CheckSum_Calculate2@i+1))^00h,c,w
	movf	((c:CheckSum_Calculate2@length+2))^00h,c,w
	subwfb	((c:CheckSum_Calculate2@i+2))^00h,c,w
	movf	((c:CheckSum_Calculate2@length+3))^00h,c,w
	subwfb	((c:CheckSum_Calculate2@i+3))^00h,c,w
	btfss	status,0
	goto	u13001
	goto	u13000

u13001:
	goto	l53462
u13000:
	
l28481:; BSR set to: 1

	line	143
;uart2.c: 141: };uart2.c: 143: checksum=(u8)(accumulate&0X000000FF);
	movff	(c:CheckSum_Calculate2@accumulate),(c:CheckSum_Calculate2@checksum)
	line	144
	
l53468:; BSR set to: 1

;uart2.c: 144: return checksum;
	movf	((c:CheckSum_Calculate2@checksum))^00h,c,w
	line	145
	
l28482:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_CheckSum_Calculate2
	__end_of_CheckSum_Calculate2:
	signat	_CheckSum_Calculate2,8313
	global	_BeepCtr1

;; *************** function _BeepCtr1 *****************
;; Defined at:
;;		line 5 in file "beep.c"
;; Parameters:    Size  Location     Type
;;  value           2   15[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_BeepEnable
;;		_DelayMs
;; This function is called by:
;;		_main
;;		_ErrorCtr
;;		_Goto_Engineering_Mode
;;		_Engineering_Adjust_JYTime
;;		_Engineering_Clear_WorkTime
;;		_Engineering_Voltage_Calibration
;;		_Engineering_Flow_Compensation
;; This function uses a non-reentrant model
;;
psect	text123,class=CODE,space=0,reloc=2,group=0
	file	"beep.c"
	line	5
global __ptext123
__ptext123:
psect	text123
	file	"beep.c"
	line	5
	global	__size_of_BeepCtr1
	__size_of_BeepCtr1	equ	__end_of_BeepCtr1-_BeepCtr1
	
_BeepCtr1:; BSR set to: 1

;incstack = 0
	opt	callstack 22
	line	8
	
l53676:
;beep.c: 7: static u16 i = 0;;beep.c: 8: if(value)
	movf	((c:BeepCtr1@value))^00h,c,w
iorwf	((c:BeepCtr1@value+1))^00h,c,w
	btfsc	status,2
	goto	u13331
	goto	u13330

u13331:
	goto	l53688
u13330:
	line	10
	
l53678:
;beep.c: 9: {;beep.c: 10: if(i==0)
	movlb	1	; () banked
	movf	((BeepCtr1@i))&0ffh,w
iorwf	((BeepCtr1@i+1))&0ffh,w
	btfss	status,2
	goto	u13341
	goto	u13340

u13341:
	goto	l15831
u13340:
	line	12
	
l53680:; BSR set to: 1

;beep.c: 11: {;beep.c: 12: i=1;
	movlw	high(01h)
	movwf	((BeepCtr1@i+1))&0ffh
	movlw	low(01h)
	movwf	((BeepCtr1@i))&0ffh
	line	13
	
l53682:; BSR set to: 1

;beep.c: 13: BeepEnable(1);
	movlw	(01h)&0ffh
	
	call	_BeepEnable
	line	14
	
l53684:
;beep.c: 14: DelayMs(50);
	movlw	high(032h)
	movwf	((c:DelayMs@Time+1))^00h,c
	movlw	low(032h)
	movwf	((c:DelayMs@Time))^00h,c
	call	_DelayMs	;wreg free
	line	15
	
l53686:
;beep.c: 15: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	goto	l15831
	line	20
	
l53688:
;beep.c: 18: else;beep.c: 19: {;beep.c: 20: if(i)
	movlb	1	; () banked
	movf	((BeepCtr1@i))&0ffh,w
iorwf	((BeepCtr1@i+1))&0ffh,w
	btfsc	status,2
	goto	u13351
	goto	u13350

u13351:
	goto	l15831
u13350:
	line	22
	
l53690:; BSR set to: 1

;beep.c: 21: {;beep.c: 22: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	23
	
l53692:
;beep.c: 23: i=0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((BeepCtr1@i+1))&0ffh
	movlw	low(0)
	movwf	((BeepCtr1@i))&0ffh
	line	28
	
l15831:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_BeepCtr1
	__end_of_BeepCtr1:
	signat	_BeepCtr1,4217
	global	_DelayMs

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 255 in file "main.c"
;; Parameters:    Size  Location     Type
;;  Time            2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  b               1   14[COMRAM] unsigned char 
;;  a               2   12[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Delay10Us
;; This function is called by:
;;		_main
;;		_TM1629Init
;;		_BeepCtr1
;;		_Alarm_Sound
;;		_StartUpVoice
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text124,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	255
global __ptext124
__ptext124:
psect	text124
	file	"main.c"
	line	255
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:
;incstack = 0
	opt	callstack 23
	line	257
	
l52890:
;main.c: 257: for(uint16_t a=0;a<Time;a++)
	movlw	high(0)
	movwf	((c:DelayMs@a+1))^00h,c
	movlw	low(0)
	movwf	((c:DelayMs@a))^00h,c
	goto	l52906
	line	259
	
l52892:
;main.c: 258: {;main.c: 259: for(uint8_t b=0;b<98;b++)
	movlw	low(0)
	movwf	((c:DelayMs@b))^00h,c
	line	261
	
l52898:
;main.c: 260: {;main.c: 261: Delay10Us();
	call	_Delay10Us	;wreg free
	line	259
	
l52900:
	incf	((c:DelayMs@b))^00h,c
	
l52902:
		movlw	062h-1
	cpfsgt	((c:DelayMs@b))^00h,c
	goto	u12191
	goto	u12190

u12191:
	goto	l52898
u12190:
	line	257
	
l52904:
	infsnz	((c:DelayMs@a))^00h,c
	incf	((c:DelayMs@a+1))^00h,c
	
l52906:
		movf	((c:DelayMs@Time))^00h,c,w
	subwf	((c:DelayMs@a))^00h,c,w
	movf	((c:DelayMs@Time+1))^00h,c,w
	subwfb	((c:DelayMs@a+1))^00h,c,w
	btfss	status,0
	goto	u12201
	goto	u12200

u12201:
	goto	l52892
u12200:
	line	264
	
l2712:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
	signat	_DelayMs,4217
	global	_Delay10Us

;; *************** function _Delay10Us *****************
;; Defined at:
;;		line 227 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/E
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayMs
;;		_Voicedelay
;; This function uses a non-reentrant model
;;
psect	text125,class=CODE,space=0,reloc=2,group=0
	line	227
global __ptext125
__ptext125:
psect	text125
	file	"main.c"
	line	227
	global	__size_of_Delay10Us
	__size_of_Delay10Us	equ	__end_of_Delay10Us-_Delay10Us
	
_Delay10Us:
;incstack = 0
	opt	callstack 21
	line	229
	
l52536:
;main.c: 229: for(uint8_t i=0;i<17;i++)
	movlw	low(0)
	movwf	((c:Delay10Us@i))^00h,c
	line	230
	
l2696:
	line	231
;main.c: 230: {;main.c: 231: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	232
;main.c: 232: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	233
;main.c: 233: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	234
;main.c: 234: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	229
	
l52542:
	incf	((c:Delay10Us@i))^00h,c
	
l52544:
		movlw	011h-1
	cpfsgt	((c:Delay10Us@i))^00h,c
	goto	u11781
	goto	u11780

u11781:
	goto	l2696
u11780:
	line	236
	
l2698:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Delay10Us
	__end_of_Delay10Us:
	signat	_Delay10Us,89
	global	_EC11_Set_Value

;; *************** function _EC11_Set_Value *****************
;; Defined at:
;;		line 75 in file "encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  EncoderCount    2   13[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Get_EC11_Count
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text126,class=CODE,space=0,reloc=2,group=0
	file	"encoder.c"
	line	75
global __ptext126
__ptext126:
psect	text126
	file	"encoder.c"
	line	75
	global	__size_of_EC11_Set_Value
	__size_of_EC11_Set_Value	equ	__end_of_EC11_Set_Value-_EC11_Set_Value
	
_EC11_Set_Value:
;incstack = 0
	opt	callstack 25
	line	77
	
l56552:
	line	78
	
l56554:
;encoder.c: 78: EncoderCount = Get_EC11_Count();
	call	_Get_EC11_Count	;wreg free
	movff	0+?_Get_EC11_Count,(c:EC11_Set_Value@EncoderCount)
	movff	1+?_Get_EC11_Count,(c:EC11_Set_Value@EncoderCount+1)
	line	79
	
l56556:; BSR set to: 1

;encoder.c: 79: RunData.FlowSet+=EncoderCount;
	movf	((c:EC11_Set_Value@EncoderCount))^00h,c,w
	movlb	0	; () banked
	addwf	(0+(_RunData+04h))&0ffh
	movf	((c:EC11_Set_Value@EncoderCount+1))^00h,c,w
	addwfc	(1+(_RunData+04h))&0ffh

	line	80
	
l56558:; BSR set to: 0

;encoder.c: 80: if(RunData.FlowSet>7*10) RunData.FlowSet = 7*10;
	btfsc	(1+(_RunData+04h))&0ffh,7
	goto	u16951
	movf	(1+(_RunData+04h))&0ffh,w
	bnz	u16950
	movlw	71
	subwf	 (0+(_RunData+04h))&0ffh,w
	btfss	status,0
	goto	u16951
	goto	u16950

u16951:
	goto	l56562
u16950:
	
l56560:; BSR set to: 0

	movlw	high(046h)
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(046h)
	movwf	(0+(_RunData+04h))&0ffh
	goto	l23411
	line	81
	
l56562:; BSR set to: 0

;encoder.c: 81: else if(RunData.FlowSet<5) RunData.FlowSet = 5;
	btfsc	(1+(_RunData+04h))&0ffh,7
	goto	u16960
	movf	(1+(_RunData+04h))&0ffh,w
	bnz	u16961
	movlw	5
	subwf	 (0+(_RunData+04h))&0ffh,w
	btfsc	status,0
	goto	u16961
	goto	u16960

u16961:
	goto	l23411
u16960:
	
l56564:; BSR set to: 0

	movlw	high(05h)
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(05h)
	movwf	(0+(_RunData+04h))&0ffh
	line	82
	
l23411:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_EC11_Set_Value
	__end_of_EC11_Set_Value:
	signat	_EC11_Set_Value,89
	global	_Get_EC11_Count

;; *************** function _Get_EC11_Count *****************
;; Defined at:
;;		line 68 in file "encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ret             2   11[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EC11_Set_Value
;; This function uses a non-reentrant model
;;
psect	text127,class=CODE,space=0,reloc=2,group=0
	line	68
global __ptext127
__ptext127:
psect	text127
	file	"encoder.c"
	line	68
	global	__size_of_Get_EC11_Count
	__size_of_Get_EC11_Count	equ	__end_of_Get_EC11_Count-_Get_EC11_Count
	
_Get_EC11_Count:; BSR set to: 0

;incstack = 0
	opt	callstack 25
	line	70
	
l55594:
;encoder.c: 70: int ret = EncoderData.EC11_Count;
	movff	0+(_EncoderData+02h),(c:Get_EC11_Count@ret)
	movff	1+(_EncoderData+02h),(c:Get_EC11_Count@ret+1)
	line	71
	
l55596:
;encoder.c: 71: EncoderData.EC11_Count = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	(1+(_EncoderData+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_EncoderData+02h))&0ffh
	line	72
	
l55598:; BSR set to: 1

;encoder.c: 72: return ret;
	movff	(c:Get_EC11_Count@ret),(c:?_Get_EC11_Count)
	movff	(c:Get_EC11_Count@ret+1),(c:?_Get_EC11_Count+1)
	line	73
	
l23405:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Get_EC11_Count
	__end_of_Get_EC11_Count:
	signat	_Get_EC11_Count,90
	global	_DataInit

;; *************** function _DataInit *****************
;; Defined at:
;;		line 288 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text128,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	288
global __ptext128
__ptext128:
psect	text128
	file	"main.c"
	line	288
	global	__size_of_DataInit
	__size_of_DataInit	equ	__end_of_DataInit-_DataInit
	
_DataInit:; BSR set to: 1

;incstack = 0
	opt	callstack 26
	line	290
	
l56320:
;main.c: 290: RunData.StandbySta = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(0+(_RunData+029h))&0ffh
	line	291
;main.c: 291: RunData.FlowSet = 36;
	movlw	high(024h)
	movwf	(1+(_RunData+04h))&0ffh
	movlw	low(024h)
	movwf	(0+(_RunData+04h))&0ffh
	line	292
;main.c: 292: RunData.JY_TimeSet = 6;
	movlw	high(06h)
	movwf	(1+(_RunData+01Ah))&0ffh
	movlw	low(06h)
	movwf	(0+(_RunData+01Ah))&0ffh
	line	293
;main.c: 293: RunData.XF_TimeSet = 36;
	movlw	high(024h)
	movwf	(1+(_RunData+01Ch))&0ffh
	movlw	low(024h)
	movwf	(0+(_RunData+01Ch))&0ffh
	line	294
;main.c: 294: RunData.StandbySta = 0;
	movlw	low(0)
	movwf	(0+(_RunData+029h))&0ffh
	line	295
;main.c: 295: RunData.RunTime = 0;
	movlw	high(0)
	movwf	(1+(_RunData+010h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+010h))&0ffh
	line	296
;main.c: 296: RunData.TimingFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+014h))&0ffh
	line	297
;main.c: 297: RunData.Timing = 0;
	movlw	high(0)
	movwf	(1+(_RunData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+012h))&0ffh
	line	298
;main.c: 298: RunData.CumulativeTime = 0;
	movlw	low(0)
	movwf	(0+(_RunData+016h))&0ffh
	movlw	high(0)
	movwf	(1+(_RunData+016h))&0ffh
	movlw	low highword(0)
	movwf	(2+(_RunData+016h))&0ffh
	movlw	high highword(0)
	movwf	(3+(_RunData+016h))&0ffh
	line	299
;main.c: 299: RunData.VoiceNum = NULL2;
	movlw	low(01h)
	movwf	(0+(_RunData+02Bh))&0ffh
	line	300
;main.c: 300: RunData.FilterMeshFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+02Ah))&0ffh
	line	301
;main.c: 301: RunData.AOD_TimeCount=0;
	movlw	high(0)
	movwf	(1+(_RunData+02Dh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+02Dh))&0ffh
	line	302
;main.c: 302: RunData.ComprStep = 0;
	movlw	low(0)
	movwf	(0+(_RunData+02Fh))&0ffh
	line	303
;main.c: 303: RunData.SOSFlag = 0;
	movlw	low(0)
	movwf	(0+(_RunData+01h))&0ffh
	line	305
;main.c: 305: RunData.Voltage_Calibration = 181;
	movlw	high(0B5h)
	movwf	(1+(_RunData+044h))&0ffh
	movlw	low(0B5h)
	movwf	(0+(_RunData+044h))&0ffh
	line	306
	
l2729:; BSR set to: 0

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_DataInit
	__end_of_DataInit:
	signat	_DataInit,89
	global	_BeepInit

;; *************** function _BeepInit *****************
;; Defined at:
;;		line 178 in file "beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BeepEnable
;;		_PWM_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129,class=CODE,space=0,reloc=2,group=0
	file	"beep.c"
	line	178
global __ptext129
__ptext129:
psect	text129
	file	"beep.c"
	line	178
	global	__size_of_BeepInit
	__size_of_BeepInit	equ	__end_of_BeepInit-_BeepInit
	
_BeepInit:; BSR set to: 0

;incstack = 0
	opt	callstack 25
	line	180
	
l56450:; BSR set to: 15

;beep.c: 180: PWM_Init();
	call	_PWM_Init	;wreg free
	line	181
;beep.c: 181: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	182
	
l15863:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_BeepInit
	__end_of_BeepInit:
	signat	_BeepInit,89
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 99 in file "beep.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 3F/F
;;		On exit  : 3F/F
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BeepInit
;; This function uses a non-reentrant model
;;
psect	text130,class=CODE,space=0,reloc=2,group=0
	line	99
global __ptext130
__ptext130:
psect	text130
	file	"beep.c"
	line	99
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:
;incstack = 0
	opt	callstack 25
	line	101
	
l55568:; BSR set to: 15

;beep.c: 101: PCKEN1bits.T4CKEN = 1;
	bsf	((3880))&0ffh,4	;volatile
	line	102
	
l55570:; BSR set to: 15

;beep.c: 102: T4CR1bits.T4CKS = 0B001;
	movf	((c:4030))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<3)
	iorlw	(01h & ((1<<3)-1))<<3
	movwf	((c:4030))^0f00h,c	;volatile
	line	103
;beep.c: 103: T4CR1bits.T4PSC = 0B01;
	movf	((c:4030))^0f00h,c,w	;volatile
	andlw	not (((1<<2)-1)<<1)
	iorlw	(01h & ((1<<2)-1))<<1
	movwf	((c:4030))^0f00h,c	;volatile
	line	105
;beep.c: 105: T4CNTRL = 0;
	movlw	low(0)
	movwf	((c:4026))^0f00h,c	;volatile
	line	106
;beep.c: 106: T4CNTRH = 0;
	movlw	low(0)
	movwf	((c:4027))^0f00h,c	;volatile
	line	108
;beep.c: 108: T4PRL = 0xE7;
	movlw	low(0E7h)
	movwf	((c:4028))^0f00h,c	;volatile
	line	109
;beep.c: 109: T4PRH = 0x03;
	movlw	low(03h)
	movwf	((c:4029))^0f00h,c	;volatile
	line	113
;beep.c: 113: T4CH2CCRL = (500)&0xFF;
	movlw	low(0F4h)
	movwf	((c:4020))^0f00h,c	;volatile
	line	114
;beep.c: 114: T4CH2CCRH = (500)>>8;
	movlw	low(01h)
	movwf	((c:4021))^0f00h,c	;volatile
	line	122
	
l55572:; BSR set to: 15

;beep.c: 122: T4OEbits.T4CH2OE = 1;
	bsf	((c:4034))^0f00h,c,2	;volatile
	line	128
	
l55574:; BSR set to: 15

;beep.c: 128: T4POLbits.T4CH2P = 0;
	bcf	((c:4035))^0f00h,c,2	;volatile
	line	142
	
l55576:; BSR set to: 15

;beep.c: 142: AFP8bits.T4CH1A = 1;
	bsf	((3920))&0ffh,4	;volatile
	line	159
	
l55578:; BSR set to: 15

;beep.c: 159: T4CR2bits.T4OPM = 0;
	bcf	((c:4031))^0f00h,c,6	;volatile
	line	160
	
l55580:; BSR set to: 15

;beep.c: 160: T4CR2bits.T4BZM = 0;
	bcf	((c:4031))^0f00h,c,5	;volatile
	line	162
;beep.c: 162: T4CR2bits.T4BKS = 0B000;
	movlw	((0 & ((1<<3)-1))<<2)|not (((1<<3)-1)<<2)
	andwf	((c:4031))^0f00h,c	;volatile
	line	163
	
l55582:; BSR set to: 15

;beep.c: 163: T4CR2bits.T4BEVT = 0;
	bcf	((c:4031))^0f00h,c,1	;volatile
	line	164
	
l55584:; BSR set to: 15

;beep.c: 164: T4CR2bits.T4BKM = 0;
	bcf	((c:4031))^0f00h,c,0	;volatile
	line	165
	
l55586:; BSR set to: 15

;beep.c: 165: T4CR3bits.T4AUE = 0;
	bcf	((c:4032))^0f00h,c,7	;volatile
	line	166
	
l55588:; BSR set to: 15

;beep.c: 166: T4POLbits.T4BKP = 0;
	bcf	((c:4035))^0f00h,c,7	;volatile
	line	167
;beep.c: 167: T4CR3bits.T4DC = 16;
	movf	((c:4032))^0f00h,c,w	;volatile
	andlw	not (((1<<7)-1)<<0)
	iorlw	(010h & ((1<<7)-1))<<0
	movwf	((c:4032))^0f00h,c	;volatile
	line	169
;beep.c: 169: T4CR4bits.T4CH2SS = 0B01;
	movf	((c:4033))^0f00h,c,w	;volatile
	andlw	not (((1<<2)-1)<<2)
	iorlw	(01h & ((1<<2)-1))<<2
	movwf	((c:4033))^0f00h,c	;volatile
	line	173
	
l55590:; BSR set to: 15

;beep.c: 173: T4CR1bits.T4UG = 1;
	bsf	((c:4030))^0f00h,c,6	;volatile
	line	174
	
l55592:; BSR set to: 15

;beep.c: 174: T4CR1bits.T4CEN = 1;
	bsf	((c:4030))^0f00h,c,0	;volatile
	line	175
	
l15860:; BSR set to: 15

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,89
	global	_BeepCtr2

;; *************** function _BeepCtr2 *****************
;; Defined at:
;;		line 29 in file "beep.c"
;; Parameters:    Size  Location     Type
;;  value           2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_BeepEnable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text131,class=CODE,space=0,reloc=2,group=0
	line	29
global __ptext131
__ptext131:
psect	text131
	file	"beep.c"
	line	29
	global	__size_of_BeepCtr2
	__size_of_BeepCtr2	equ	__end_of_BeepCtr2-_BeepCtr2
	
_BeepCtr2:; BSR set to: 15

;incstack = 0
	opt	callstack 25
	line	32
	
l56538:; BSR set to: 1

;beep.c: 31: static u16 i = 0;;beep.c: 32: if(value)
	movf	((c:BeepCtr2@value))^00h,c,w
iorwf	((c:BeepCtr2@value+1))^00h,c,w
	btfsc	status,2
	goto	u16931
	goto	u16930

u16931:
	goto	l56542
u16930:
	line	34
	
l56540:; BSR set to: 1

;beep.c: 33: {;beep.c: 34: i = 0;
	movlw	high(0)
	movwf	((BeepCtr2@i+1))&0ffh
	movlw	low(0)
	movwf	((BeepCtr2@i))&0ffh
	line	38
	
l56542:; BSR set to: 1

;beep.c: 36: };beep.c: 38: if(i>20)
		movf	((BeepCtr2@i+1))&0ffh,w
	bnz	u16940
	movlw	21
	subwf	 ((BeepCtr2@i))&0ffh,w
	btfss	status,0
	goto	u16941
	goto	u16940

u16941:
	goto	l56548
u16940:
	line	40
	
l56544:; BSR set to: 1

;beep.c: 39: {;beep.c: 40: i = 20;
	movlw	high(014h)
	movwf	((BeepCtr2@i+1))&0ffh
	movlw	low(014h)
	movwf	((BeepCtr2@i))&0ffh
	line	41
	
l56546:; BSR set to: 1

;beep.c: 41: BeepEnable(0);
	movlw	(0)&0ffh
	
	call	_BeepEnable
	line	42
;beep.c: 42: }
	goto	l56550
	line	45
	
l56548:; BSR set to: 1

;beep.c: 43: else;beep.c: 44: {;beep.c: 45: BeepEnable(1);
	movlw	(01h)&0ffh
	
	call	_BeepEnable
	line	47
	
l56550:
;beep.c: 46: };beep.c: 47: i++;
	movlb	1	; () banked
	infsnz	((BeepCtr2@i))&0ffh
	incf	((BeepCtr2@i+1))&0ffh
	line	49
	
l15839:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_BeepCtr2
	__end_of_BeepCtr2:
	signat	_BeepCtr2,4217
	global	_BeepEnable

;; *************** function _BeepEnable *****************
;; Defined at:
;;		line 84 in file "beep.c"
;; Parameters:    Size  Location     Type
;;  enable          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  enable          1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BeepCtr1
;;		_BeepCtr2
;;		_BeepInit
;;		_ErrorCtr
;; This function uses a non-reentrant model
;;
psect	text132,class=CODE,space=0,reloc=2,group=0
	line	84
global __ptext132
__ptext132:
psect	text132
	file	"beep.c"
	line	84
	global	__size_of_BeepEnable
	__size_of_BeepEnable	equ	__end_of_BeepEnable-_BeepEnable
	
_BeepEnable:; BSR set to: 1

;incstack = 0
	opt	callstack 24
;BeepEnable@enable stored from wreg
	movwf	((c:BeepEnable@enable))^00h,c
	line	86
	
l53432:
;beep.c: 86: if(enable)
	movf	((c:BeepEnable@enable))^00h,c,w
	btfsc	status,2
	goto	u12951
	goto	u12950
u12951:
	goto	l53436
u12950:
	line	88
	
l53434:
;beep.c: 87: {;beep.c: 88: T4CH2CCRL = 500&0xFF;
	movlw	low(0F4h)
	movwf	((c:4020))^0f00h,c	;volatile
	line	89
;beep.c: 89: T4CH2CCRH = 500>>8;
	movlw	low(01h)
	movwf	((c:4021))^0f00h,c	;volatile
	line	90
;beep.c: 90: }
	goto	l15857
	line	93
	
l53436:
;beep.c: 91: else;beep.c: 92: {;beep.c: 93: T4CH2CCRL = 0;
	movlw	low(0)
	movwf	((c:4020))^0f00h,c	;volatile
	line	94
;beep.c: 94: T4CH2CCRH = 0;
	movlw	low(0)
	movwf	((c:4021))^0f00h,c	;volatile
	line	96
	
l15857:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_BeepEnable
	__end_of_BeepEnable:
	signat	_BeepEnable,4217
	global	_InterruptHandlerLow

;; *************** function _InterruptHandlerLow *****************
;; Defined at:
;;		line 124 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
	file	"touchlib_6017.as"
	line	#
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"main.c"
	line	124
	global	__size_of_InterruptHandlerLow
	__size_of_InterruptHandlerLow	equ	__end_of_InterruptHandlerLow-_InterruptHandlerLow
	
_InterruptHandlerLow:
;incstack = 0
	opt	callstack 19
	bsf int$flags,0,c ;set compiler interrupt flag (level 1)
	movff	bsr+0,??_InterruptHandlerLow+0
	line	127
	
i1l2679:
	movff	??_InterruptHandlerLow+0,bsr+0
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	retfie
	opt callstack 0
GLOBAL	__end_of_InterruptHandlerLow
	__end_of_InterruptHandlerLow:
	signat	_InterruptHandlerLow,89
	global	_InterruptHandlerHigh

;; *************** function _InterruptHandlerHigh *****************
;; Defined at:
;;		line 133 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 31/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_EC11_Interrupt
;;		_IR_IN_DATA
;;		_Time0_Interrupt
;;		_UART2_Interrupt
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"touchlib_6017.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	133
	global	__size_of_InterruptHandlerHigh
	__size_of_InterruptHandlerHigh	equ	__end_of_InterruptHandlerHigh-_InterruptHandlerHigh
	
_InterruptHandlerHigh:
;incstack = 0
	opt	callstack 19
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	goto	int_func
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:
	movff	fsr2l+0,??_InterruptHandlerHigh+0
	movff	fsr2h+0,??_InterruptHandlerHigh+1
	line	135
	
i2l51842:
;main.c: 135: Time0_Interrupt();
	call	_Time0_Interrupt	;wreg free
	line	136
;main.c: 136: IR_IN_DATA();
	call	_IR_IN_DATA	;wreg free
	line	137
;main.c: 137: EC11_Interrupt();
	call	_EC11_Interrupt	;wreg free
	line	138
	
i2l51844:
;main.c: 138: UART2_Interrupt();
	call	_UART2_Interrupt	;wreg free
	line	139
	
i2l2684:
	movff	??_InterruptHandlerHigh+1,fsr2h+0
	movff	??_InterruptHandlerHigh+0,fsr2l+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt callstack 0
GLOBAL	__end_of_InterruptHandlerHigh
	__end_of_InterruptHandlerHigh:
	signat	_InterruptHandlerHigh,89
	global	_UART2_Interrupt

;; *************** function _UART2_Interrupt *****************
;; Defined at:
;;		line 89 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 31/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InterruptHandlerHigh
;; This function uses a non-reentrant model
;;
psect	text135,class=CODE,space=0,reloc=2,group=0
	file	"uart2.c"
	line	89
global __ptext135
__ptext135:
psect	text135
	file	"uart2.c"
	line	89
	global	__size_of_UART2_Interrupt
	__size_of_UART2_Interrupt	equ	__end_of_UART2_Interrupt-_UART2_Interrupt
	
_UART2_Interrupt:
;incstack = 0
	opt	callstack 20
	line	91
	
i2l51482:
;uart2.c: 91: if(UR2RXNEIE && UR2RXNEF)
	movlb	15	; () banked
	btfss	(30745/8)&0ffh,(30745)&7	;volatile
	goto	i2u1141_41
	goto	i2u1141_40
i2u1141_41:
	goto	i2l28459
i2u1141_40:
	
i2l51484:; BSR set to: 15

	btfss	(30761/8)&0ffh,(30761)&7	;volatile
	goto	i2u1142_41
	goto	i2u1142_40
i2u1142_41:
	goto	i2l28459
i2u1142_40:
	line	93
	
i2l51486:; BSR set to: 15

;uart2.c: 92: {;uart2.c: 93: sUsart2.RxData[sUsart2.RxNum] = UR2DATL;
	movlw	low(_sUsart2)
	movlb	1	; () banked
	addwf	(0+(_sUsart2+014h))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sUsart2)
	addwfc	(1+(_sUsart2+014h))&0ffh,w
	movwf	1+c:fsr2l
	movff	(3840),indf2	;volatile

	line	94
	
i2l51488:; BSR set to: 1

;uart2.c: 94: sUsart2.RxNum++;
	infsnz	(0+(_sUsart2+014h))&0ffh
	incf	(1+(_sUsart2+014h))&0ffh
	line	95
	
i2l51490:; BSR set to: 1

;uart2.c: 95: if(sUsart2.RxNum>=20)
		movf	(1+(_sUsart2+014h))&0ffh,w
	bnz	i2u1143_40
	movlw	20
	subwf	 (0+(_sUsart2+014h))&0ffh,w
	btfss	status,0
	goto	i2u1143_41
	goto	i2u1143_40

i2u1143_41:
	goto	i2l28458
i2u1143_40:
	line	96
	
i2l51492:; BSR set to: 1

;uart2.c: 96: sUsart2.RxNum=20-1;
	movlw	high(013h)
	movwf	(1+(_sUsart2+014h))&0ffh
	movlw	low(013h)
	movwf	(0+(_sUsart2+014h))&0ffh
	
i2l28458:; BSR set to: 1

	line	97
;uart2.c: 97: sUsart2.RxTimer=0;
	movlw	low(0)
	movwf	(0+(_sUsart2+018h))&0ffh
	line	99
	
i2l28459:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_UART2_Interrupt
	__end_of_UART2_Interrupt:
	signat	_UART2_Interrupt,89
	global	_Time0_Interrupt

;; *************** function _Time0_Interrupt *****************
;; Defined at:
;;		line 40 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_usart2_receive_wait
;; This function is called by:
;;		_InterruptHandlerHigh
;; This function uses a non-reentrant model
;;
psect	text136,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	40
global __ptext136
__ptext136:
psect	text136
	file	"main.c"
	line	40
	global	__size_of_Time0_Interrupt
	__size_of_Time0_Interrupt	equ	__end_of_Time0_Interrupt-_Time0_Interrupt
	
_Time0_Interrupt:
;incstack = 0
	opt	callstack 19
	line	44
	
i2l51308:
;main.c: 42: static u16 ms = 0;;main.c: 43: static u16 test1 = 0;;main.c: 44: if((INTCON1bits.TMR0IE == 1)&&(INTCON1bits.TMR0IF == 1))
	btfss	((c:4082))^0f00h,c,5	;volatile
	goto	i2u1104_41
	goto	i2u1104_40
i2u1104_41:
	goto	i2l2674
i2u1104_40:
	
i2l51310:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u1105_41
	goto	i2u1105_40
i2u1105_41:
	goto	i2l2674
i2u1105_40:
	line	46
	
i2l51312:
;main.c: 45: {;main.c: 46: INTCON1bits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	47
	
i2l51314:
;main.c: 47: counttest++;
	movlw	low(01h)
	movlb	2	; () banked
	addwf	((_counttest))&0ffh
	movlw	0
	addwfc	((_counttest+1))&0ffh
	addwfc	((_counttest+2))&0ffh
	addwfc	((_counttest+3))&0ffh
	line	48
	
i2l51316:; BSR set to: 2

;main.c: 48: EncoderData.Time++;
	movlb	1	; () banked
	infsnz	((_EncoderData))&0ffh
	incf	((_EncoderData+1))&0ffh
	line	49
	
i2l51318:; BSR set to: 1

;main.c: 49: sUsart2.LinkCount++;
	infsnz	(0+(_sUsart2+034h))&0ffh
	incf	(1+(_sUsart2+034h))&0ffh
	line	50
	
i2l51320:; BSR set to: 1

;main.c: 50: RunData.AlarmLEDCount++;
	movlb	0	; () banked
	infsnz	(0+(_RunData+03Dh))&0ffh
	incf	(1+(_RunData+03Dh))&0ffh
	line	51
	
i2l51322:; BSR set to: 0

;main.c: 51: AlarmSound.count++;
	movlb	1	; () banked
	infsnz	((_AlarmSound))&0ffh
	incf	((_AlarmSound+1))&0ffh
	line	52
;main.c: 52: if(EncoderData.Time>1000) EncoderData.Time=1000;
	btfsc	((_EncoderData+1))&0ffh,7
	goto	i2u1106_41
	movlw	233
	subwf	 ((_EncoderData))&0ffh,w
	movlw	3
	subwfb	((_EncoderData+1))&0ffh,w
	btfss	status,0
	goto	i2u1106_41
	goto	i2u1106_40

i2u1106_41:
	goto	i2l51326
i2u1106_40:
	
i2l51324:; BSR set to: 1

	movlw	high(03E8h)
	movwf	((_EncoderData+1))&0ffh
	movlw	low(03E8h)
	movwf	((_EncoderData))&0ffh
	line	53
	
i2l51326:; BSR set to: 1

;main.c: 53: EncoderData.EC11_SpeedCount++;
	infsnz	(0+(_EncoderData+0Ch))&0ffh
	incf	(1+(_EncoderData+0Ch))&0ffh
	line	54
	
i2l51328:; BSR set to: 1

;main.c: 54: if(KeyDat.key_value) KeyDat.key_tim++;
	movlb	0	; () banked
	movf	(0+(_KeyDat+06h))&0ffh,w
iorwf	(1+(_KeyDat+06h))&0ffh,w
	btfsc	status,2
	goto	i2u1107_41
	goto	i2u1107_40

i2u1107_41:
	goto	i2l51332
i2u1107_40:
	
i2l51330:; BSR set to: 0

	infsnz	((_KeyDat))&0ffh
	incf	((_KeyDat+1))&0ffh
	line	55
	
i2l51332:; BSR set to: 0

;main.c: 55: usart2_receive_wait();
	call	_usart2_receive_wait	;wreg free
	line	56
	
i2l51334:; BSR set to: 1

;main.c: 56: test1++;
	infsnz	((Time0_Interrupt@test1))&0ffh
	incf	((Time0_Interrupt@test1+1))&0ffh
	line	57
	
i2l51336:; BSR set to: 1

;main.c: 57: if(test1>50)
		movf	((Time0_Interrupt@test1+1))&0ffh,w
	bnz	i2u1108_40
	movlw	51
	subwf	 ((Time0_Interrupt@test1))&0ffh,w
	btfss	status,0
	goto	i2u1108_41
	goto	i2u1108_40

i2u1108_41:
	goto	i2l51340
i2u1108_40:
	line	59
	
i2l51338:; BSR set to: 1

;main.c: 58: {;main.c: 59: test1 = 0;
	movlw	high(0)
	movwf	((Time0_Interrupt@test1+1))&0ffh
	movlw	low(0)
	movwf	((Time0_Interrupt@test1))&0ffh
	line	63
	
i2l51340:; BSR set to: 1

;main.c: 62: };main.c: 63: if(ms>=1000)
		movlw	232
	subwf	 ((Time0_Interrupt@ms))&0ffh,w
	movlw	3
	subwfb	((Time0_Interrupt@ms+1))&0ffh,w
	btfss	status,0
	goto	i2u1109_41
	goto	i2u1109_40

i2u1109_41:
	goto	i2l51376
i2u1109_40:
	line	65
	
i2l51342:; BSR set to: 1

;main.c: 64: {;main.c: 65: if(RunData.sec>=60)
	movlb	0	; () banked
		movf	(1+(_RunData+03Bh))&0ffh,w
	bnz	i2u1110_40
	movlw	60
	subwf	 (0+(_RunData+03Bh))&0ffh,w
	btfss	status,0
	goto	i2u1110_41
	goto	i2u1110_40

i2u1110_41:
	goto	i2l51362
i2u1110_40:
	line	68
	
i2l51344:; BSR set to: 0

;main.c: 66: {;main.c: 68: if(RunData.Timing == 0)
	movf	(0+(_RunData+012h))&0ffh,w
iorwf	(1+(_RunData+012h))&0ffh,w
	btfss	status,2
	goto	i2u1111_41
	goto	i2u1111_40

i2u1111_41:
	goto	i2l51352
i2u1111_40:
	line	70
	
i2l51346:; BSR set to: 0

;main.c: 69: {;main.c: 70: RunData.RunTime++;
	infsnz	(0+(_RunData+010h))&0ffh
	incf	(1+(_RunData+010h))&0ffh
	line	71
	
i2l51348:; BSR set to: 0

;main.c: 71: if(RunData.RunTime>=999) RunData.RunTime = 999;
	btfsc	(1+(_RunData+010h))&0ffh,7
	goto	i2u1112_41
	movlw	231
	subwf	 (0+(_RunData+010h))&0ffh,w
	movlw	3
	subwfb	(1+(_RunData+010h))&0ffh,w
	btfss	status,0
	goto	i2u1112_41
	goto	i2u1112_40

i2u1112_41:
	goto	i2l2665
i2u1112_40:
	
i2l51350:; BSR set to: 0

	movlw	high(03E7h)
	movwf	(1+(_RunData+010h))&0ffh
	movlw	low(03E7h)
	movwf	(0+(_RunData+010h))&0ffh
	goto	i2l2665
	line	75
	
i2l51352:; BSR set to: 0

;main.c: 73: else;main.c: 74: {;main.c: 75: RunData.Timing--;
	decf	(0+(_RunData+012h))&0ffh
	btfss	status,0
	decf	(1+(_RunData+012h))&0ffh
	line	76
	
i2l51354:; BSR set to: 0

;main.c: 76: if(RunData.Timing<=0) RunData.Timing = 0;
	btfsc	(1+(_RunData+012h))&0ffh,7
	goto	i2u1113_40
	movf	(1+(_RunData+012h))&0ffh,w
	bnz	i2u1113_41
	decf	(0+(_RunData+012h))&0ffh,w
	btfsc	status,0
	goto	i2u1113_41
	goto	i2u1113_40

i2u1113_41:
	goto	i2l2665
i2u1113_40:
	
i2l51356:; BSR set to: 0

	movlw	high(0)
	movwf	(1+(_RunData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+012h))&0ffh
	line	77
	
i2l2665:; BSR set to: 0

	line	78
;main.c: 77: };main.c: 78: RunData.sec = 0;
	movlw	high(0)
	movwf	(1+(_RunData+03Bh))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+03Bh))&0ffh
	line	80
;main.c: 80: if(RunData.StandbySta==0) RunData.CumulativeTime++;
	movf	(0+(_RunData+029h))&0ffh,w
	btfss	status,2
	goto	i2u1114_41
	goto	i2u1114_40
i2u1114_41:
	goto	i2l2667
i2u1114_40:
	
i2l51358:; BSR set to: 0

	movlw	low(01h)
	addwf	(0+(_RunData+016h))&0ffh
	movlw	0
	addwfc	(1+(_RunData+016h))&0ffh
	addwfc	(2+(_RunData+016h))&0ffh
	addwfc	(3+(_RunData+016h))&0ffh
	
i2l2667:; BSR set to: 0

	line	81
;main.c: 81: if(RunData.CumulativeTime>5999940) RunData.CumulativeTime=5999940;
	btfsc	(3+(_RunData+016h))&0ffh,7
	goto	i2u1115_41
	movf	(3+(_RunData+016h))&0ffh,w
	bnz	i2u1115_40
	movlw	69
	subwf	 (0+(_RunData+016h))&0ffh,w
	movlw	141
	subwfb	(1+(_RunData+016h))&0ffh,w
	movlw	91
	subwfb	(2+(_RunData+016h))&0ffh,w
	btfss	status,0
	goto	i2u1115_41
	goto	i2u1115_40

i2u1115_41:
	goto	i2l51362
i2u1115_40:
	
i2l51360:; BSR set to: 0

	movlw	low(05B8D44h)
	movwf	(0+(_RunData+016h))&0ffh
	movlw	high(05B8D44h)
	movwf	(1+(_RunData+016h))&0ffh
	movlw	low highword(05B8D44h)
	movwf	(2+(_RunData+016h))&0ffh
	movlw	high highword(05B8D44h)
	movwf	(3+(_RunData+016h))&0ffh
	line	85
	
i2l51362:; BSR set to: 0

;main.c: 82: };main.c: 85: if(RunData.Error_Flag == 1)
		decf	(0+(_RunData+041h))&0ffh,w
	btfss	status,2
	goto	i2u1116_41
	goto	i2u1116_40

i2u1116_41:
	goto	i2l51370
i2u1116_40:
	line	87
	
i2l51364:; BSR set to: 0

;main.c: 86: {;main.c: 87: RunData.Error_Delay_Time ++;
	incf	(0+(_RunData+042h))&0ffh
	line	88
	
i2l51366:; BSR set to: 0

;main.c: 88: if(RunData.Error_Delay_Time >= 3)
		movlw	03h-1
	cpfsgt	(0+(_RunData+042h))&0ffh
	goto	i2u1117_41
	goto	i2u1117_40

i2u1117_41:
	goto	i2l51370
i2u1117_40:
	line	90
	
i2l51368:; BSR set to: 0

;main.c: 89: {;main.c: 90: RunData.Error_Delay_Time = 3;
	movlw	low(03h)
	movwf	(0+(_RunData+042h))&0ffh
	line	95
	
i2l51370:; BSR set to: 0

;main.c: 91: };main.c: 92: };main.c: 95: if(Engineering_Pattern.Time_Start_Flag == 1)
		decf	((_Engineering_Pattern))&0ffh,w
	btfss	status,2
	goto	i2u1118_41
	goto	i2u1118_40

i2u1118_41:
	goto	i2l2671
i2u1118_40:
	line	97
	
i2l51372:; BSR set to: 0

;main.c: 96: {;main.c: 97: Engineering_Pattern.Time ++;
	incf	(0+(_Engineering_Pattern+01h))&0ffh
	line	98
;main.c: 98: Engineering_Pattern.Time_End_Flag ++ ;
	incf	(0+(_Engineering_Pattern+02h))&0ffh
	line	99
	
i2l2671:; BSR set to: 0

	line	101
;main.c: 99: };main.c: 101: RunData.ErrCodeSecCount++;
	infsnz	(0+(_RunData+03Fh))&0ffh
	incf	(1+(_RunData+03Fh))&0ffh
	line	102
;main.c: 102: RunData.AOD_TimeCount++;
	infsnz	(0+(_RunData+02Dh))&0ffh
	incf	(1+(_RunData+02Dh))&0ffh
	line	103
;main.c: 103: RunData.sec++;
	infsnz	(0+(_RunData+03Bh))&0ffh
	incf	(1+(_RunData+03Bh))&0ffh
	line	104
	
i2l51374:; BSR set to: 0

;main.c: 104: ms = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((Time0_Interrupt@ms+1))&0ffh
	movlw	low(0)
	movwf	((Time0_Interrupt@ms))&0ffh
	line	106
	
i2l51376:; BSR set to: 1

;main.c: 105: };main.c: 106: ms++;
	infsnz	((Time0_Interrupt@ms))&0ffh
	incf	((Time0_Interrupt@ms+1))&0ffh
	line	108
	
i2l51378:; BSR set to: 1

;main.c: 108: if(VoiceDelay.Voice_Delay_Flag == 1)
		decf	(0+(_VoiceDelay+04h))&0ffh,w
	btfss	status,2
	goto	i2u1119_41
	goto	i2u1119_40

i2u1119_41:
	goto	i2l2674
i2u1119_40:
	line	110
	
i2l51380:; BSR set to: 1

;main.c: 109: {;main.c: 110: VoiceDelay.Voice_Delay ++;
	infsnz	((_VoiceDelay))&0ffh
	incf	((_VoiceDelay+1))&0ffh
	line	111
	
i2l51382:; BSR set to: 1

;main.c: 111: if(VoiceDelay.Voice_Delay >= 700)
		movlw	188
	subwf	 ((_VoiceDelay))&0ffh,w
	movlw	2
	subwfb	((_VoiceDelay+1))&0ffh,w
	btfss	status,0
	goto	i2u1120_41
	goto	i2u1120_40

i2u1120_41:
	goto	i2l2674
i2u1120_40:
	line	113
	
i2l51384:; BSR set to: 1

;main.c: 112: {;main.c: 113: VoiceDelay.Voice_Delay = 700;
	movlw	high(02BCh)
	movwf	((_VoiceDelay+1))&0ffh
	movlw	low(02BCh)
	movwf	((_VoiceDelay))&0ffh
	line	117
	
i2l2674:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_Time0_Interrupt
	__end_of_Time0_Interrupt:
	signat	_Time0_Interrupt,89
	global	_usart2_receive_wait

;; *************** function _usart2_receive_wait *****************
;; Defined at:
;;		line 118 in file "uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Time0_Interrupt
;; This function uses a non-reentrant model
;;
psect	text137,class=CODE,space=0,reloc=2,group=0
	file	"uart2.c"
	line	118
global __ptext137
__ptext137:
psect	text137
	file	"uart2.c"
	line	118
	global	__size_of_usart2_receive_wait
	__size_of_usart2_receive_wait	equ	__end_of_usart2_receive_wait-_usart2_receive_wait
	
_usart2_receive_wait:
;incstack = 0
	opt	callstack 19
	line	120
	
i2l50572:; BSR set to: 0

;uart2.c: 120: if(sUsart2.RxNum>0)
	movlb	1	; () banked
	movf	(0+(_sUsart2+014h))&0ffh,w
iorwf	(1+(_sUsart2+014h))&0ffh,w
	btfsc	status,2
	goto	i2u976_41
	goto	i2u976_40

i2u976_41:
	goto	i2l50576
i2u976_40:
	line	122
	
i2l50574:; BSR set to: 1

;uart2.c: 121: {;uart2.c: 122: sUsart2.RxTimer++;
	incf	(0+(_sUsart2+018h))&0ffh
	line	124
	
i2l50576:; BSR set to: 1

;uart2.c: 123: };uart2.c: 124: if(sUsart2.RxTimer>5)
		movlw	06h-1
	cpfsgt	(0+(_sUsart2+018h))&0ffh
	goto	i2u977_41
	goto	i2u977_40

i2u977_41:
	goto	i2l28476
i2u977_40:
	line	126
	
i2l50578:; BSR set to: 1

;uart2.c: 125: {;uart2.c: 126: sUsart2.RxLength=sUsart2.RxNum;
	movff	0+(_sUsart2+014h),0+(_sUsart2+016h)
	movff	1+(_sUsart2+014h),1+(_sUsart2+016h)
	line	127
	
i2l50580:; BSR set to: 1

;uart2.c: 127: sUsart2.RxEnd=1;
	movlw	low(01h)
	movwf	(0+(_sUsart2+019h))&0ffh
	line	128
;uart2.c: 128: sUsart2.RxTimer=0;
	movlw	low(0)
	movwf	(0+(_sUsart2+018h))&0ffh
	line	129
;uart2.c: 129: sUsart2.RxNum=0;
	movlw	high(0)
	movwf	(1+(_sUsart2+014h))&0ffh
	movlw	low(0)
	movwf	(0+(_sUsart2+014h))&0ffh
	line	131
	
i2l28476:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_usart2_receive_wait
	__end_of_usart2_receive_wait:
	signat	_usart2_receive_wait,89
	global	_IR_IN_DATA

;; *************** function _IR_IN_DATA *****************
;; Defined at:
;;		line 59 in file "irkey.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InterruptHandlerHigh
;; This function uses a non-reentrant model
;;
psect	text138,class=CODE,space=0,reloc=2,group=0
	file	"irkey.c"
	line	59
global __ptext138
__ptext138:
psect	text138
	file	"irkey.c"
	line	59
	global	__size_of_IR_IN_DATA
	__size_of_IR_IN_DATA	equ	__end_of_IR_IN_DATA-_IR_IN_DATA
	
_IR_IN_DATA:; BSR set to: 1

;incstack = 0
	opt	callstack 20
	line	61
	
i2l51386:
;irkey.c: 61: if (T3CR1bits.T3IE && T3CR3bits.T3IF)
	btfss	((c:4011))^0f00h,c,6	;volatile
	goto	i2u1121_41
	goto	i2u1121_40
i2u1121_41:
	goto	i2l51398
i2u1121_40:
	
i2l51388:
	btfss	((c:4013))^0f00h,c,6	;volatile
	goto	i2u1122_41
	goto	i2u1122_40
i2u1122_41:
	goto	i2l51398
i2u1122_40:
	line	63
	
i2l51390:
;irkey.c: 62: {;irkey.c: 63: T3CR3bits.T3IF = 0;
	bcf	((c:4013))^0f00h,c,6	;volatile
	line	64
	
i2l51392:
;irkey.c: 64: if (cnt < 5)
		movlw	05h-0
	cpfslt	((c:_cnt))^00h,c
	goto	i2u1123_41
	goto	i2u1123_40

i2u1123_41:
	goto	i2l51396
i2u1123_40:
	line	65
	
i2l51394:
;irkey.c: 65: cnt++;
	incf	((c:_cnt))^00h,c
	goto	i2l51398
	line	68
	
i2l51396:
;irkey.c: 66: else;irkey.c: 67: {;irkey.c: 68: cnt = 0;
	movlw	low(0)
	movwf	((c:_cnt))^00h,c
	line	69
;irkey.c: 69: IRData.Sta = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	(0+(_IRData+0Ch))&0ffh
	line	73
	
i2l51398:
;irkey.c: 70: };irkey.c: 71: };irkey.c: 73: if (T3CR1bits.T3CCIE && T3CR3bits.T3CCIF)
	btfss	((c:4011))^0f00h,c,7	;volatile
	goto	i2u1124_41
	goto	i2u1124_40
i2u1124_41:
	goto	i2l33718
i2u1124_40:
	
i2l51400:
	btfss	((c:4013))^0f00h,c,7	;volatile
	goto	i2u1125_41
	goto	i2u1125_40
i2u1125_41:
	goto	i2l33718
i2u1125_40:
	line	75
	
i2l51402:
;irkey.c: 74: {;irkey.c: 75: T3CR3bits.T3CCIF = 0;
	bcf	((c:4013))^0f00h,c,7	;volatile
	line	76
;irkey.c: 76: if (PD4 == 1)
	btfss	c:(31772/8),(31772)&7	;volatile
	goto	i2u1126_41
	goto	i2u1126_40
i2u1126_41:
	goto	i2l51410
i2u1126_40:
	line	78
	
i2l51404:
;irkey.c: 77: {;irkey.c: 78: IRData.di = T3CCPRL;
	movf	((c:4016))^0f00h,c,w	;volatile
	movlb	1	; () banked
	movwf	(0+(_IRData+08h))&0ffh
	clrf	(1+(_IRData+08h))&0ffh
	clrf	(2+(_IRData+08h))&0ffh
	clrf	(3+(_IRData+08h))&0ffh

	line	79
	
i2l51406:; BSR set to: 1

;irkey.c: 79: IRData.di |= (T3CCPRH << 8);
	movf	((c:4017))^0f00h,c,w	;volatile
	movwf	(??_IR_IN_DATA+0+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0)^00h,c
	movff	??_IR_IN_DATA+0+0,??_IR_IN_DATA+2+0
	movff	??_IR_IN_DATA+0+1,??_IR_IN_DATA+2+0+1
	movlw	0
	btfsc	(??_IR_IN_DATA+2+0+1)^00h,c,7
	movlw	255
	movwf	(??_IR_IN_DATA+2+0+2)^00h,c
	movwf	(??_IR_IN_DATA+2+0+3)^00h,c
	movf	(??_IR_IN_DATA+2+0)^00h,c,w
	iorwf	(0+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+2+1)^00h,c,w
	iorwf	(1+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+2+2)^00h,c,w
	iorwf	(2+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+2+3)^00h,c,w
	iorwf	(3+(_IRData+08h))&0ffh

	line	80
	
i2l51408:; BSR set to: 1

;irkey.c: 80: IRData.di += cnt * 65536;
	movff	(c:_cnt),??_IR_IN_DATA+0+0
	clrf	(??_IR_IN_DATA+0+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0+2)^00h,c
	clrf	(??_IR_IN_DATA+0+0+3)^00h,c
	movff	??_IR_IN_DATA+0+1,??_IR_IN_DATA+0+3
	movff	??_IR_IN_DATA+0+0,??_IR_IN_DATA+0+2
	clrf	(??_IR_IN_DATA+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0)^00h,c
	movf	(??_IR_IN_DATA+0+0)^00h,c,w
	addwf	(0+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+0+1)^00h,c,w
	addwfc	(1+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+0+2)^00h,c,w
	addwfc	(2+(_IRData+08h))&0ffh
	movf	(??_IR_IN_DATA+0+3)^00h,c,w
	addwfc	(3+(_IRData+08h))&0ffh

	line	81
;irkey.c: 81: cnt = 0;
	movlw	low(0)
	movwf	((c:_cnt))^00h,c
	line	82
;irkey.c: 82: T3CNTRL = 0;
	movlw	low(0)
	movwf	((c:4014))^0f00h,c	;volatile
	line	83
;irkey.c: 83: T3CNTRH = 0;
	movlw	low(0)
	movwf	((c:4015))^0f00h,c	;volatile
	line	84
;irkey.c: 84: T3CCPRL = 0;
	movlw	low(0)
	movwf	((c:4016))^0f00h,c	;volatile
	line	85
;irkey.c: 85: T3CCPRH = 0;
	movlw	low(0)
	movwf	((c:4017))^0f00h,c	;volatile
	line	86
;irkey.c: 86: }
	goto	i2l33718
	line	89
	
i2l51410:
;irkey.c: 87: else;irkey.c: 88: {;irkey.c: 89: IRData.gao = T3CCPRL;
	movf	((c:4016))^0f00h,c,w	;volatile
	movlb	1	; () banked
	movwf	(0+(_IRData+04h))&0ffh
	clrf	(1+(_IRData+04h))&0ffh
	clrf	(2+(_IRData+04h))&0ffh
	clrf	(3+(_IRData+04h))&0ffh

	line	90
	
i2l51412:; BSR set to: 1

;irkey.c: 90: IRData.gao |= (T3CCPRH << 8);
	movf	((c:4017))^0f00h,c,w	;volatile
	movwf	(??_IR_IN_DATA+0+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0)^00h,c
	movff	??_IR_IN_DATA+0+0,??_IR_IN_DATA+2+0
	movff	??_IR_IN_DATA+0+1,??_IR_IN_DATA+2+0+1
	movlw	0
	btfsc	(??_IR_IN_DATA+2+0+1)^00h,c,7
	movlw	255
	movwf	(??_IR_IN_DATA+2+0+2)^00h,c
	movwf	(??_IR_IN_DATA+2+0+3)^00h,c
	movf	(??_IR_IN_DATA+2+0)^00h,c,w
	iorwf	(0+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+2+1)^00h,c,w
	iorwf	(1+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+2+2)^00h,c,w
	iorwf	(2+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+2+3)^00h,c,w
	iorwf	(3+(_IRData+04h))&0ffh

	line	91
	
i2l51414:; BSR set to: 1

;irkey.c: 91: IRData.gao += cnt * 65536;
	movff	(c:_cnt),??_IR_IN_DATA+0+0
	clrf	(??_IR_IN_DATA+0+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0+2)^00h,c
	clrf	(??_IR_IN_DATA+0+0+3)^00h,c
	movff	??_IR_IN_DATA+0+1,??_IR_IN_DATA+0+3
	movff	??_IR_IN_DATA+0+0,??_IR_IN_DATA+0+2
	clrf	(??_IR_IN_DATA+0+1)^00h,c
	clrf	(??_IR_IN_DATA+0+0)^00h,c
	movf	(??_IR_IN_DATA+0+0)^00h,c,w
	addwf	(0+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+0+1)^00h,c,w
	addwfc	(1+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+0+2)^00h,c,w
	addwfc	(2+(_IRData+04h))&0ffh
	movf	(??_IR_IN_DATA+0+3)^00h,c,w
	addwfc	(3+(_IRData+04h))&0ffh

	line	92
;irkey.c: 92: T3CNTRL = 0;
	movlw	low(0)
	movwf	((c:4014))^0f00h,c	;volatile
	line	93
;irkey.c: 93: T3CNTRH = 0;
	movlw	low(0)
	movwf	((c:4015))^0f00h,c	;volatile
	line	94
;irkey.c: 94: T3CCPRL = 0;
	movlw	low(0)
	movwf	((c:4016))^0f00h,c	;volatile
	line	95
;irkey.c: 95: T3CCPRH = 0;
	movlw	low(0)
	movwf	((c:4017))^0f00h,c	;volatile
	line	96
;irkey.c: 96: cnt = 0;
	movlw	low(0)
	movwf	((c:_cnt))^00h,c
	line	97
	
i2l51416:; BSR set to: 1

;irkey.c: 97: if (IRData.gao <= 10)
		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	iorwf	(1+(_IRData+04h))&0ffh,w
	bnz	i2u1127_41
	movlw	11
	subwf	 (0+(_IRData+04h))&0ffh,w
	btfsc	status,0
	goto	i2u1127_41
	goto	i2u1127_40

i2u1127_41:
	goto	i2l51420
i2u1127_40:
	line	99
	
i2l51418:; BSR set to: 1

;irkey.c: 98: {;irkey.c: 99: IRData.gao = 0;
	movlw	low(0)
	movwf	(0+(_IRData+04h))&0ffh
	movlw	high(0)
	movwf	(1+(_IRData+04h))&0ffh
	movlw	low highword(0)
	movwf	(2+(_IRData+04h))&0ffh
	movlw	high highword(0)
	movwf	(3+(_IRData+04h))&0ffh
	line	102
	
i2l51420:; BSR set to: 1

;irkey.c: 100: };irkey.c: 102: if (IRData.Sta & 0x01)
	
	btfss	(0+(_IRData+0Ch))&0ffh,(0)&7
	goto	i2u1128_41
	goto	i2u1128_40
i2u1128_41:
	goto	i2l51452
i2u1128_40:
	line	104
	
i2l51422:; BSR set to: 1

;irkey.c: 103: {;irkey.c: 104: if (IRData.gao > 300 && IRData.gao < 800)
		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1129_40
	movlw	45
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	1
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfss	status,0
	goto	i2u1129_41
	goto	i2u1129_40

i2u1129_41:
	goto	i2l51430
i2u1129_40:
	
i2l51424:; BSR set to: 1

		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1130_41
	movlw	32
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	3
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfsc	status,0
	goto	i2u1130_41
	goto	i2u1130_40

i2u1130_41:
	goto	i2l51430
i2u1130_40:
	line	106
	
i2l51426:; BSR set to: 1

;irkey.c: 105: {;irkey.c: 106: IRData.get_w++;
	incf	(0+(_IRData+0Dh))&0ffh
	line	107
	
i2l51428:; BSR set to: 1

;irkey.c: 107: IRData.Dat = IRData.Dat << 1;
	bcf	status,0
	rlcf	(0+(_IRData+0Eh))&0ffh,w
	movwf	(0+(_IRData+0Eh))&0ffh
	rlcf	(1+(_IRData+0Eh))&0ffh,w
	movwf	1+(0+(_IRData+0Eh))&0ffh
	
	rlcf	(2+(_IRData+0Eh))&0ffh,w
	movwf	2+(0+(_IRData+0Eh))&0ffh
	
	rlcf	(3+(_IRData+0Eh))&0ffh,w
	movwf	3+(0+(_IRData+0Eh))&0ffh
	line	108
;irkey.c: 108: }
	goto	i2l51446
	line	111
	
i2l51430:; BSR set to: 1

;irkey.c: 111: else if (IRData.gao > 2200 && IRData.gao < 2600 && IRData.get_w == 33)
		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1131_40
	movlw	153
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	8
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfss	status,0
	goto	i2u1131_41
	goto	i2u1131_40

i2u1131_41:
	goto	i2l51438
i2u1131_40:
	
i2l51432:; BSR set to: 1

		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1132_41
	movlw	40
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	10
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfsc	status,0
	goto	i2u1132_41
	goto	i2u1132_40

i2u1132_41:
	goto	i2l51438
i2u1132_40:
	
i2l51434:; BSR set to: 1

		movlw	33
	xorwf	(0+(_IRData+0Dh))&0ffh,w
	btfss	status,2
	goto	i2u1133_41
	goto	i2u1133_40

i2u1133_41:
	goto	i2l51438
i2u1133_40:
	line	118
	
i2l51436:; BSR set to: 1

;irkey.c: 117: {;irkey.c: 118: IRData.RmtCnt++;
	infsnz	(0+(_IRData+012h))&0ffh
	incf	(1+(_IRData+012h))&0ffh
	line	119
;irkey.c: 119: }
	goto	i2l51446
	line	122
	
i2l51438:; BSR set to: 1

;irkey.c: 122: else if (IRData.gao > 1400 && IRData.gao < 1800)
		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1134_40
	movlw	121
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	5
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfss	status,0
	goto	i2u1134_41
	goto	i2u1134_40

i2u1134_41:
	goto	i2l51446
i2u1134_40:
	
i2l51440:; BSR set to: 1

		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1135_41
	movlw	8
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	7
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfsc	status,0
	goto	i2u1135_41
	goto	i2u1135_40

i2u1135_41:
	goto	i2l51446
i2u1135_40:
	line	130
	
i2l51442:; BSR set to: 1

;irkey.c: 128: {;irkey.c: 130: IRData.get_w++;
	incf	(0+(_IRData+0Dh))&0ffh
	line	131
	
i2l51444:; BSR set to: 1

;irkey.c: 131: IRData.Dat = (IRData.Dat << 1) | 0x01;
	bcf	status,0
	rlcf	(0+(_IRData+0Eh))&0ffh,w
	movwf	(??_IR_IN_DATA+0+0)^00h,c
	rlcf	(1+(_IRData+0Eh))&0ffh,w
	movwf	1+(??_IR_IN_DATA+0+0)^00h,c
	
	rlcf	(2+(_IRData+0Eh))&0ffh,w
	movwf	2+(??_IR_IN_DATA+0+0)^00h,c
	
	rlcf	(3+(_IRData+0Eh))&0ffh,w
	movwf	3+(??_IR_IN_DATA+0+0)^00h,c
	movlw	01h
	iorwf	(??_IR_IN_DATA+0+0)^00h,c,w
	movwf	(0+(_IRData+0Eh))&0ffh
	movf	(??_IR_IN_DATA+0+1)^00h,c,w
	movwf	1+(0+(_IRData+0Eh))&0ffh
	
	movf	(??_IR_IN_DATA+0+2)^00h,c,w
	movwf	2+(0+(_IRData+0Eh))&0ffh
	
	movf	(??_IR_IN_DATA+0+3)^00h,c,w
	movwf	3+(0+(_IRData+0Eh))&0ffh
	line	143
	
i2l51446:; BSR set to: 1

;irkey.c: 132: };irkey.c: 143: if (IRData.get_w == 32)
		movlw	32
	xorwf	(0+(_IRData+0Dh))&0ffh,w
	btfss	status,2
	goto	i2u1136_41
	goto	i2u1136_40

i2u1136_41:
	goto	i2l33707
i2u1136_40:
	line	145
	
i2l51448:; BSR set to: 1

;irkey.c: 144: {;irkey.c: 145: IRData.get_w = 33;
	movlw	low(021h)
	movwf	(0+(_IRData+0Dh))&0ffh
	line	146
	
i2l51450:; BSR set to: 1

;irkey.c: 146: IRData.Value = IRData.Dat;
	movff	0+(_IRData+0Eh),(_IRData)
	movff	1+(_IRData+0Eh),(_IRData+1)
	movff	2+(_IRData+0Eh),(_IRData+2)
	movff	3+(_IRData+0Eh),(_IRData+3)
	line	148
;irkey.c: 148: IRData.Dat = 0;
	movlw	low(0)
	movwf	(0+(_IRData+0Eh))&0ffh
	movlw	high(0)
	movwf	(1+(_IRData+0Eh))&0ffh
	movlw	low highword(0)
	movwf	(2+(_IRData+0Eh))&0ffh
	movlw	high highword(0)
	movwf	(3+(_IRData+0Eh))&0ffh
	goto	i2l33718
	line	164
	
i2l51452:; BSR set to: 1

;irkey.c: 164: else if (IRData.gao > 4200 && IRData.gao < 4700)
		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1137_40
	movlw	105
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	16
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfss	status,0
	goto	i2u1137_41
	goto	i2u1137_40

i2u1137_41:
	goto	i2l33707
i2u1137_40:
	
i2l51454:; BSR set to: 1

		movf	(3+(_IRData+04h))&0ffh,w
	iorwf	(2+(_IRData+04h))&0ffh,w
	bnz	i2u1138_41
	movlw	92
	subwf	 (0+(_IRData+04h))&0ffh,w
	movlw	18
	subwfb	(1+(_IRData+04h))&0ffh,w
	btfsc	status,0
	goto	i2u1138_41
	goto	i2u1138_40

i2u1138_41:
	goto	i2l33707
i2u1138_40:
	line	166
	
i2l51456:; BSR set to: 1

;irkey.c: 165: {;irkey.c: 166: IRData.Sta |= 0x01;
	bsf	(0+(0/8)+0+(_IRData+0Ch))&0ffh,(0)&7
	line	167
	
i2l51458:; BSR set to: 1

;irkey.c: 167: IRData.RmtCnt = 0;
	movlw	high(0)
	movwf	(1+(_IRData+012h))&0ffh
	movlw	low(0)
	movwf	(0+(_IRData+012h))&0ffh
	line	168
	
i2l51460:; BSR set to: 1

;irkey.c: 168: IRData.Value = 0;
	movlw	low(0)
	movwf	((_IRData))&0ffh
	movlw	high(0)
	movwf	((_IRData+1))&0ffh
	movlw	low highword(0)
	movwf	((_IRData+2))&0ffh
	movlw	high highword(0)
	movwf	((_IRData+3))&0ffh
	line	169
	
i2l51462:; BSR set to: 1

;irkey.c: 169: IRData.get_w = 0;
	movlw	low(0)
	movwf	(0+(_IRData+0Dh))&0ffh
	line	170
	
i2l51464:; BSR set to: 1

;irkey.c: 170: IRData.IRDataCnt = 0;
	movlw	low(0)
	movwf	(0+(_IRData+01Ch))&0ffh
	line	171
	
i2l51466:; BSR set to: 1

;irkey.c: 171: cnt = 0;
	movlw	low(0)
	movwf	((c:_cnt))^00h,c
	goto	i2l33718
	line	173
	
i2l33707:; BSR set to: 1

	line	175
	
i2l33718:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_IR_IN_DATA
	__end_of_IR_IN_DATA:
	signat	_IR_IN_DATA,89
	global	_EC11_Interrupt

;; *************** function _EC11_Interrupt *****************
;; Defined at:
;;		line 28 in file "encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_EC11_Scan
;; This function is called by:
;;		_InterruptHandlerHigh
;; This function uses a non-reentrant model
;;
psect	text139,class=CODE,space=0,reloc=2,group=0
	file	"encoder.c"
	line	28
global __ptext139
__ptext139:
psect	text139
	file	"encoder.c"
	line	28
	global	__size_of_EC11_Interrupt
	__size_of_EC11_Interrupt	equ	__end_of_EC11_Interrupt-_EC11_Interrupt
	
_EC11_Interrupt:
;incstack = 0
	opt	callstack 19
	line	30
	
i2l51468:
;encoder.c: 30: if((INTCON3bits.INT6IE == 1)&&(INTCON2bits.INT6IF == 1))
	btfss	((c:4080))^0f00h,c,6	;volatile
	goto	i2u1139_41
	goto	i2u1139_40
i2u1139_41:
	goto	i2l23396
i2u1139_40:
	
i2l51470:
	btfss	((c:4081))^0f00h,c,6	;volatile
	goto	i2u1140_41
	goto	i2u1140_40
i2u1140_41:
	goto	i2l23396
i2u1140_40:
	line	32
	
i2l51472:
;encoder.c: 31: {;encoder.c: 32: EncoderData.Time = 0;
	movlw	high(0)
	movlb	1	; () banked
	movwf	((_EncoderData+1))&0ffh
	movlw	low(0)
	movwf	((_EncoderData))&0ffh
	line	33
;encoder.c: 33: EncoderData.EC11_Count_Flag=1;
	movlw	high(01h)
	movwf	(1+(_EncoderData+08h))&0ffh
	movlw	low(01h)
	movwf	(0+(_EncoderData+08h))&0ffh
	line	34
	
i2l51474:; BSR set to: 1

;encoder.c: 34: EncoderData.EC11_Speed = EncoderData.EC11_SpeedCount;
	movff	0+(_EncoderData+0Ch),0+(_EncoderData+0Ah)
	movff	1+(_EncoderData+0Ch),1+(_EncoderData+0Ah)
	line	35
;encoder.c: 35: EncoderData.EC11_SpeedCount = 0;
	movlw	high(0)
	movwf	(1+(_EncoderData+0Ch))&0ffh
	movlw	low(0)
	movwf	(0+(_EncoderData+0Ch))&0ffh
	line	37
	
i2l51476:; BSR set to: 1

;encoder.c: 37: INTCON2bits.INT6IF = 0;
	bcf	((c:4081))^0f00h,c,6	;volatile
	line	38
	
i2l51478:; BSR set to: 1

;encoder.c: 38: INTCON3bits.INT6IE = 1;
	bsf	((c:4080))^0f00h,c,6	;volatile
	line	40
	
i2l51480:; BSR set to: 1

;encoder.c: 40: EC11_Scan();
	call	_EC11_Scan	;wreg free
	line	43
	
i2l23396:
	return	;funcret
	opt callstack 0
GLOBAL	__end_of_EC11_Interrupt
	__end_of_EC11_Interrupt:
	signat	_EC11_Interrupt,89
	global	_EC11_Scan

;; *************** function _EC11_Scan *****************
;; Defined at:
;;		line 45 in file "encoder.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/1
;;		On exit  : 3F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EC11_Interrupt
;; This function uses a non-reentrant model
;;
psect	text140,class=CODE,space=0,reloc=2,group=0
	line	45
global __ptext140
__ptext140:
psect	text140
	file	"encoder.c"
	line	45
	global	__size_of_EC11_Scan
	__size_of_EC11_Scan	equ	__end_of_EC11_Scan-_EC11_Scan
	
_EC11_Scan:
;incstack = 0
	opt	callstack 19
	line	47
	
i2l50608:; BSR set to: 1

	line	48
	
i2l50610:; BSR set to: 1

;encoder.c: 48: if(EncoderData.EC11_Count_Flag)
	movf	(0+(_EncoderData+08h))&0ffh,w
iorwf	(1+(_EncoderData+08h))&0ffh,w
	btfsc	status,2
	goto	i2u978_41
	goto	i2u978_40

i2u978_41:
	goto	i2l23402
i2u978_40:
	line	50
	
i2l50612:; BSR set to: 1

;encoder.c: 49: {;encoder.c: 50: RunData.AutoSaveDataCount=0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(_RunData+039h))&0ffh
	movlw	low(0)
	movwf	(0+(_RunData+039h))&0ffh
	line	51
	
i2l50614:; BSR set to: 0

;encoder.c: 51: if(PD5 == 0)
	btfsc	c:(31773/8),(31773)&7	;volatile
	goto	i2u979_41
	goto	i2u979_40
i2u979_41:
	goto	i2l50618
i2u979_40:
	line	55
	
i2l50616:; BSR set to: 0

;encoder.c: 52: {;encoder.c: 55: EncoderData.EC11_Count+=1;
	movlb	1	; () banked
	infsnz	(0+(_EncoderData+02h))&0ffh
	incf	(1+(_EncoderData+02h))&0ffh
	line	56
;encoder.c: 56: }
	goto	i2l50620
	line	61
	
i2l50618:; BSR set to: 0

;encoder.c: 57: else;encoder.c: 58: {;encoder.c: 61: EncoderData.EC11_Count-=1;
	movlb	1	; () banked
	decf	(0+(_EncoderData+02h))&0ffh
	btfss	status,0
	decf	(1+(_EncoderData+02h))&0ffh
	line	63
	
i2l50620:; BSR set to: 1

;encoder.c: 62: };encoder.c: 63: EncoderData.EC11_Count_Flag = 0;
	movlw	high(0)
	movwf	(1+(_EncoderData+08h))&0ffh
	movlw	low(0)
	movwf	(0+(_EncoderData+08h))&0ffh
	line	65
	
i2l23402:; BSR set to: 1

	return	;funcret
	opt callstack 0
GLOBAL	__end_of_EC11_Scan
	__end_of_EC11_Scan:
	signat	_EC11_Scan,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	file ""
	line	0
psect	text141,class=CODE,space=0,reloc=2,group=0
global __ptext141
__ptext141:
fp__putch:
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
