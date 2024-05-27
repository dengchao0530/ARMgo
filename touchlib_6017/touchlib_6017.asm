//Deviec:FT62F0GX
//-----------------------Variable---------------------------------
		_Error_Code_Stack.data		EQU		2BEH
		_Error_Code_Stack.top		EQU		2D2H
		_Error_Code_Stack		EQU		2BEH
		_EncoderData.Time		EQU		17CH
		_EncoderData.EC11_Count		EQU		17EH
		_EncoderData.EC11_Enter		EQU		180H
		_EncoderData.Start_Key		EQU		182H
		_EncoderData.EC11_Count_Flag		EQU		184H
		_EncoderData.EC11_Speed		EQU		186H
		_EncoderData.EC11_SpeedCount		EQU		188H
		_EncoderData		EQU		17CH
		_IRData.Value		EQU		15FH
		_IRData.gao		EQU		163H
		_IRData.di		EQU		167H
		_IRData.Sta		EQU		16BH
		_IRData.get_w		EQU		16CH
		_IRData.Dat		EQU		16DH
		_IRData.RmtCnt		EQU		171H
		_IRData.IRChar		EQU		173H
		_IRData.IRDataCnt		EQU		17BH
		_IRData		EQU		15FH
		_cnt		EQU		B1H
		_RunData.PowkeyFlag		EQU		100H
		_RunData.SOSFlag		EQU		101H
		_RunData.SysSta		EQU		102H
		_RunData.SysSta2		EQU		103H
		_RunData.FlowSet		EQU		104H
		_RunData.DC12_V		EQU		106H
		_RunData.ACDC_V		EQU		108H
		_RunData.FlowValue		EQU		10AH
		_RunData.TempValue		EQU		10CH
		_RunData.Concentration		EQU		10EH
		_RunData.RunTime		EQU		110H
		_RunData.Timing		EQU		112H
		_RunData.TimingFlag		EQU		114H
		_RunData.TimingVoiceFlag		EQU		115H
		_RunData.CumulativeTime		EQU		116H
		_RunData.JY_TimeSet		EQU		11AH
		_RunData.XF_TimeSet		EQU		11CH
		_RunData.PD_TimeSet		EQU		11EH
		_RunData.JY_TimeCount		EQU		120H
		_RunData.XF_TimeCount		EQU		122H
		_RunData.PD_TimeCount		EQU		124H
		_RunData.FLOW_Trim		EQU		126H
		_RunData.SolenoidValveCount		EQU		128H
		_RunData.AnionSta		EQU		12AH
		_RunData.VoiceSta		EQU		12BH
		_RunData.FilterMeshSta		EQU		12CH
		_RunData.StandbySta		EQU		12DH
		_RunData.FilterMeshFlag		EQU		12EH
		_RunData.VoiceNum		EQU		12FH
		_RunData.VoiceEnable		EQU		130H
		_RunData.AOD_TimeCount		EQU		131H
		_RunData.ComprStep		EQU		133H
		_RunData.StepMode		EQU		134H
		_RunData.VoiceNumLast		EQU		135H
		_RunData.StandbyStaFlag		EQU		136H
		_RunData.VoiceCount		EQU		137H
		_RunData.SETCount		EQU		139H
		_RunData.AlarmSwitch		EQU		13BH
		_RunData.AutoSaveDataCount		EQU		13DH
		_RunData.sec		EQU		13FH
		_RunData.AlarmLEDCount		EQU		141H
		_RunData.ErrCodeSecCount		EQU		143H
		_RunData.Error_Flag		EQU		145H
		_RunData.Error_Delay_Time		EQU		146H
		_RunData.TOUCHkey_Finally_Time		EQU		147H
		_RunData.Voltage_Calibration		EQU		148H
		_RunData.last_SysSta		EQU		14AH
		_RunData.Adjust_Flow_20_value		EQU		14BH
		_RunData.Adjust_Flow_50_value		EQU		14DH
		_RunData.Adjust_Flow_100_value		EQU		14FH
		_RunData.negative_Adjust_Flow_20_Flag		EQU		151H
		_RunData.negative_Adjust_Flow_50_Flag		EQU		153H
		_RunData.negative_Adjust_Flow_100_Flag		EQU		155H
		_RunData.FilterMesh_Delay_Flag		EQU		157H
		_RunData.FilterMesh_Delay_Time		EQU		159H
		_RunData.Power_After_OnFlag		EQU		15BH
		_RunData.Power_After_OnFlag_Time		EQU		15DH
		_RunData		EQU		100H
		_Engineering_Pattern.Time_Start_Flag		EQU		60H
		_Engineering_Pattern.Time		EQU		61H
		_Engineering_Pattern.Time_End_Flag		EQU		62H
		_Engineering_Pattern.Engineering_Mode		EQU		63H
		_Engineering_Pattern.IKey		EQU		64H
		_Engineering_Pattern.Return_Flag		EQU		65H
		_Engineering_Pattern.Mode		EQU		66H
		_Engineering_Pattern.Led_Display_Timing_Enbale		EQU		67H
		_Engineering_Pattern.Led_Display_CumulativeTime_Enbale		EQU		68H
		_Engineering_Pattern.Led_Dispaly_CloseAlarm		EQU		69H
		_Engineering_Pattern.Led_Display_Flow		EQU		6AH
		_Engineering_Pattern		EQU		60H
		_VoiceDelay.Voice_Delay		EQU		1F0H
		_VoiceDelay.VoiceCount		EQU		1F2H
		_VoiceDelay.Voice_Delay_Flag		EQU		1F4H
		_VoiceDelay.Voice_time		EQU		1F5H
		_VoiceDelay.VoiceNumLast		EQU		1F6H
		_VoiceDelay.Voice_enable		EQU		1F7H
		_VoiceDelay		EQU		1F0H
		_strongest		EQU		B9H
		_Sav_strongest		EQU		B8H
		_Sav_single		EQU		18AH
		_single		EQU		1E8H
		_counttest		EQU		27CH
		_currentMode		EQU		ACH
		_touch_key		EQU		85H
		_DisBuf		EQU		BAH
		_unTKData.stTK_Data.UpDown_Counter		EQU		1C8H
		_unTKData.stTK_Data.ucCatchup		EQU		1C9H
		_unTKData.stTK_Data.ucLastdata.Last_Data_L		EQU		1CAH
		_unTKData.stTK_Data.ucLastdata.Last_Data_H		EQU		1CBH
		_unTKData.stTK_Data.ucLastdata..		EQU		1CBH
		_unTKData.stTK_Data.ucLastdata.Local_Key		EQU		1CBH
		_unTKData.stTK_Data.ucLastdata		EQU		1CAH
		_unTKData.stTK_Data.uiLCF_BL.BL_L		EQU		1CCH
		_unTKData.stTK_Data.uiLCF_BL.BL_H		EQU		1CDH
		_unTKData.stTK_Data.uiLCF_BL.Local_Filter		EQU		1CDH
		_unTKData.stTK_Data.uiLCF_BL		EQU		1CCH
		_unTKData.stTK_Data.uiPrevData		EQU		1CEH
		_unTKData.stTK_Data		EQU		1C8H
		_unTKData.uiTKData		EQU		1C8H
		_unTKData		EQU		1C8H
		_ucTKFlag.SBit.bit0		EQU		ABH
		_ucTKFlag.SBit.bit1		EQU		ABH
		_ucTKFlag.SBit.bit2		EQU		ABH
		_ucTKFlag.SBit.bit3		EQU		ABH
		_ucTKFlag.SBit.bit4		EQU		ABH
		_ucTKFlag.SBit.bit5		EQU		ABH
		_ucTKFlag.SBit.bit6		EQU		ABH
		_ucTKFlag.SBit.bit7		EQU		ABH
		_ucTKFlag.SBit		EQU		ABH
		_ucTKFlag.AllBits		EQU		ABH
		_ucTKFlag		EQU		ABH
		_bTestSleepFlag		EQU		54H
		_bTestScanSetFlag		EQU		54H
		_uiDefaultSysclk		EQU		81H
		_ResultData		EQU		198H
		_ReferenceDataL		EQU		AAH
		_ResultDataL		EQU		52H
		_ResultDataH		EQU		A8H
		_uiChargeDataBuffer		EQU		192H
		_ucSweepKeyNum		EQU		51H
		_ucKeyMapNumber		EQU		53H
		_ucTempCount		EQU		50H
		_ucTempIndex		EQU		A7H
		_ucFreqIndex		EQU		A6H
		_ucFreqChargeCount		EQU		A5H
		_ucChangeValueMax1		EQU		A4H
		_ucChangeValueMax2		EQU		A3H
		_ucChangeValue		EQU		4FH
		_ucMaxChangeKey		EQU		A2H
		_ucKeyPollingCount		EQU		9FH
		_ucTKeyOutStrongest		EQU		9EH
		_ucKeyPollingOk		EQU		9CH
		_ucScanCount		EQU		99H
		_ucAll_of_XCount		EQU		98H
		_uiTemp1		EQU		4DH
		_uiTemp2		EQU		4BH
		_uiTemp3		EQU		7FH
		_midres		EQU		76H
		_midres_data		EQU		1F8H
		_mdivs		EQU		7DH
		_mdivs_data		EQU		1FCH
		_OverflowCnt		EQU		97H
		_KeyDat.key_tim		EQU		6BH
		_KeyDat.key_long_value		EQU		6DH
		_KeyDat.key_short_value		EQU		6FH
		_KeyDat.key_value		EQU		71H
		_KeyDat.key_val_x		EQU		73H
		_KeyDat.key_Priority_display		EQU		75H
		_KeyDat		EQU		6BH
		_usart_rx_buff		EQU		26EH
		_receive_complete_flag		EQU		B6H
		_sUsart2.RxData		EQU		288H
		_sUsart2.RxNum		EQU		29CH
		_sUsart2.RxLength		EQU		29EH
		_sUsart2.RxTimer		EQU		2A0H
		_sUsart2.RxEnd		EQU		2A1H
		_sUsart2.TxData		EQU		2A2H
		_sUsart2.TxNum		EQU		2B6H
		_sUsart2.TxLength		EQU		2B8H
		_sUsart2.TxEnd		EQU		2BAH
		_sUsart2.LinkSta		EQU		2BBH
		_sUsart2.LinkCount		EQU		2BCH
		_sUsart2		EQU		288H
		_AlarmSound.count		EQU		7AH
		_AlarmSound.step		EQU		7CH
		_AlarmSound		EQU		7AH
//		main@i		EQU		2D6H
//		control@i		EQU		1B2H
//		control@j		EQU		1B0H
//		VoiceDrive@Flag		EQU		47H
//		VoiceDrive@key_press		EQU		B4H
//		Voice_Half_Hour@Half_Hour		EQU		18H
//		Voice_Half_Hour@i		EQU		19H
//		Voice_Half_Hour@Half_Hour		EQU		18H
//		Voice_Half_Hour@Voice_Enable		EQU		15H
//		Voice_Half_Hour@Half_Hour		EQU		18H
//		VoiceFilterMesh@count		EQU		8FH
//		VoiceCtr@ret		EQU		16H
//		VoiceCtr@dat		EQU		11H
//		VoiceCtr@last		EQU		B5H
//		SOS_Voice@count		EQU		8DH
//		TimingClosureSet@count		EQU		89H
//		TimingClosureSet@lastTiming		EQU		87H
//		ErrorCtr@i		EQU		49H
//		ErrorCtr@j		EQU		47H
//		ErrorCtr@k		EQU		ADH
//		key_scan@i		EQU		12H
//		key_scan@key_		EQU		1BCH
//		IR_KeyReadCtr@ret		EQU		10H
//		___lbmod@dividend		EQU		0BH
//		___lbmod@rem		EQU		0DH
//		___lbmod@counter		EQU		0CH
//		___lbmod@dividend		EQU		0BH
//		___lbmod@divisor		EQU		0AH
//		___lbmod@dividend		EQU		0BH
//		HardDiv@ptr_midres		EQU		0CH
//		HardDiv@ptr_mdivs		EQU		0AH
//		GetLocalCount@temp		EQU		0AH
//		TSC_GetLocalKey@ulTKeyOutSingle		EQU		11H
//		TSC_GetLocalKey@ptr		EQU		0AH
//		ERR_Code@init_stack		EQU		AEH
//		ERR_Code@count1		EQU		1B8H
//		ERR_Code@count2		EQU		1B6H
//		ERR_Code@count3		EQU		1B4H
//		push@stack		EQU		13H
//		push@value		EQU		15H
//		isFull@stack		EQU		0AH
//		isElementInStack@i		EQU		11H
//		isElementInStack@stack		EQU		0AH
//		isElementInStack@element		EQU		0CH
//		printf@pb.ptr		EQU		27H
//		printf@pb.func		EQU		29H
//		printf@pb		EQU		27H
//		printf@ap		EQU		26H
//		printf@f		EQU		22H
//		peek@stack		EQU		0EH
//		initialize@stack		EQU		0AH
//		findElementIndex@i		EQU		11H
//		findElementIndex@stack		EQU		0AH
//		findElementIndex@value		EQU		0CH
//		deleteElementAt@i		EQU		1BH
//		deleteElementAt@stack		EQU		13H
//		deleteElementAt@position		EQU		15H
//		isEmpty@stack		EQU		0AH
//		Alarm_Sound@mode		EQU		15H
//		Alarm_Sound@mode		EQU		15H
//		Alarm_Sound@mode		EQU		15H
//		Display@count		EQU		1FEH
//		Display@count2		EQU		282H
//		___almod@sign		EQU		13H
//		___almod@counter		EQU		12H
//		___almod@dividend		EQU		0AH
//		___almod@divisor		EQU		0EH
//		Concentration_Low_Alarm@count		EQU		8BH
//		Concentration_Low_Alarm@last_syssta		EQU		1BAH
//		VoiceCtr3@ret		EQU		14H
//		VoiceCtr3@dat		EQU		11H
//		SetTouchFreq@tmp		EQU		0AH
//		TM1629Init@i		EQU		15H
//		StartUpVoice@cunt		EQU		2AH
//		StartUpVoice@i		EQU		B3H
//		StartUpVoice@j		EQU		B2H
//		___aldiv@quotient		EQU		14H
//		___aldiv@sign		EQU		13H
//		___aldiv@counter		EQU		12H
//		___aldiv@dividend		EQU		0AH
//		___aldiv@divisor		EQU		0EH
//		VoiceCtr2@ret		EQU		14H
//		VoiceCtr2@dat		EQU		11H
//		PlaySound@data		EQU		0FH
//		PlaySound@i		EQU		10H
//		PlaySound@data		EQU		0FH
//		PlaySound@data		EQU		0FH
//		Voicedelay@i		EQU		0DH
//		Voicedelay@Time		EQU		0BH
//		TM1629_Luminance@dat		EQU		0FH
//		TM1629_Luminance@dat		EQU		0FH
//		TM1629_Luminance@dat		EQU		0FH
//		Display_Voice@sta		EQU		0AH
//		Display_Voice@sta		EQU		0AH
//		Display_Voice@sta		EQU		0AH
//		Display_SysSta@sta		EQU		0AH
//		Display_SysSta@sta		EQU		0AH
//		Display_SysSta@sta		EQU		0AH
//		Display_FilterMesh@sta		EQU		11H
//		Display_FilterMesh@sta		EQU		11H
//		Display_FilterMesh@sta		EQU		11H
//		TM1629_WriteDat@i		EQU		10H
//		TM1629_WriteDat@InDat		EQU		0FH
//		TM1629_WriteCommand@Comm		EQU		0EH
//		TM1629_WriteCommand@Comm		EQU		0EH
//		TM1629_WriteCommand@Comm		EQU		0EH
//		TM1629_WriteByteData@Data		EQU		0CH
//		TM1629_WriteByteData@i		EQU		0DH
//		TM1629_WriteByteData@Data		EQU		0CH
//		TM1629_WriteByteData@Data		EQU		0CH
//		Nop1629@T_Dly		EQU		0AH
//		Display_Concentration@sum		EQU		16H
//		Display_Concentration@mode		EQU		18H
//		SEG14@dat		EQU		0AH
//		SEG14@dat		EQU		0AH
//		SEG14@dat		EQU		0AH
//		SEG13@dat		EQU		0AH
//		SEG13@dat		EQU		0AH
//		SEG13@dat		EQU		0AH
//		SEG12@dat		EQU		0AH
//		SEG12@dat		EQU		0AH
//		SEG12@dat		EQU		0AH
//		Label_Percent@sta		EQU		0AH
//		Label_Percent@sta		EQU		0AH
//		Label_Percent@sta		EQU		0AH
//		Label_Concentration@sta		EQU		0AH
//		Label_Concentration@sta		EQU		0AH
//		Label_Concentration@sta		EQU		0AH
//		Goto_Engineering_Mode@i		EQU		83H
//		TouchKeyValue@ret		EQU		10H
//		Label_CloseAlarm@sta		EQU		0BH
//		Label_CloseAlarm@sta		EQU		0BH
//		Label_CloseAlarm@status		EQU		0AH
//		Label_CloseAlarm@sta		EQU		0BH
//		Engineering_Voltage_Calibration@i		EQU		1A6H
//		Engineering_Voltage_Calibration@j		EQU		1A4H
//		Engineering_Flow_Compensation@Adjust_Flow_20		EQU		1A2H
//		Engineering_Flow_Compensation@Adjust_Flow_50		EQU		1A0H
//		Engineering_Flow_Compensation@Adjust_Flow_100		EQU		19EH
//		Engineering_Flow_Compensation@i		EQU		19CH
//		Engineering_Flow_Compensation@count		EQU		FDH
//		Engineering_Flow_Compensation@j		EQU		19AH
//		Engineering_Flow_Compensation_display1@a		EQU		0AH
//		Engineering_Flow_Compensation_display1@a		EQU		0AH
//		Engineering_Flow_Compensation_display1@a		EQU		0AH
//		Display_Flow@sum		EQU		16H
//		Display_Flow@mode		EQU		18H
//		Display_Flow@enable		EQU		19H
//		SEG11@dat		EQU		0AH
//		SEG11@dat		EQU		0AH
//		SEG11@dat		EQU		0AH
//		SEG10@dat		EQU		0AH
//		SEG10@dat		EQU		0AH
//		SEG10@dat		EQU		0AH
//		Label_L_min@sta		EQU		0AH
//		Label_L_min@sta		EQU		0AH
//		Label_L_min@sta		EQU		0AH
//		Label_Flow@sta		EQU		0AH
//		Label_Flow@sta		EQU		0AH
//		Label_Flow@sta		EQU		0AH
//		Engineering_Adjust_PDTime@i		EQU		1AEH
//		Engineering_Adjust_PDTime@j		EQU		1ACH
//		Engineering_Adjust_JYTime@i		EQU		1AAH
//		Engineering_Adjust_JYTime@j		EQU		1A8H
//		Get_Engineering_KeyValue@IRData_HexString		EQU		30H
//		Get_Engineering_KeyValue@ret		EQU		44H
//		strcmp@r		EQU		0FH
//		strcmp@s1		EQU		0AH
//		strcmp@s2		EQU		0BH
//		sprintf@pb.ptr		EQU		2AH
//		sprintf@pb.func		EQU		2CH
//		sprintf@pb		EQU		2AH
//		sprintf@ap		EQU		29H
//		sprintf@wh		EQU		22H
//		sprintf@f		EQU		23H
//		__doprnt@idx		EQU		1CH
//		__doprnt@val		EQU		1FH
//		__doprnt@c		EQU		21H
//		__doprnt@flag		EQU		1EH
//		__doprnt@prec		EQU		1DH
//		__doprnt@pb		EQU		16H
//		__doprnt@f		EQU		17H
//		__doprnt@ap		EQU		19H
//		putch@val		EQU		0AH
//		putch@val		EQU		0AH
//		putch@val		EQU		0AH
//		___lwmod@counter		EQU		0EH
//		___lwmod@dividend		EQU		0AH
//		___lwmod@divisor		EQU		0CH
//		___lwdiv@quotient		EQU		14H
//		___lwdiv@counter		EQU		13H
//		___lwdiv@dividend		EQU		0FH
//		___lwdiv@divisor		EQU		11H
//		Engineering_Timeout_Logic@Mode_Status		EQU		12H
//		Engineering_Timeout_Logic@Mode_Status		EQU		12H
//		Engineering_Timeout_Logic@Mode_Status		EQU		12H
//		BeepCtr1@value		EQU		10H
//		BeepCtr1@i		EQU		93H
//		E2prom_WriteData@dat		EQU		CAH
//		E2prom_WriteData@i		EQU		FCH
//		EEPROMwrite@EEAddr		EQU		0BH
//		EEPROMwrite@EEAddr		EQU		0BH
//		EEPROMwrite@Data		EQU		0AH
//		EEPROMwrite@EEAddr		EQU		0BH
//		E2prom_ReadData@dat		EQU		10H
//		E2prom_ReadData@i		EQU		42H
//		EEPROMread@EEAddr		EQU		0AH
//		EEPROMread@ReEEPROMread		EQU		0BH
//		EEPROMread@EEAddr		EQU		0AH
//		EEPROMread@EEAddr		EQU		0AH
//		Display_Timing@minute		EQU		28H
//		Display_Timing@hour		EQU		26H
//		Display_Timing@sum		EQU		20H
//		Display_Timing@mode		EQU		24H
//		Display_Timing@enable		EQU		25H
//		___awmod@sign		EQU		0FH
//		___awmod@counter		EQU		0EH
//		___awmod@dividend		EQU		0AH
//		___awmod@divisor		EQU		0CH
//		___awdiv@quotient		EQU		16H
//		___awdiv@sign		EQU		15H
//		___awdiv@counter		EQU		14H
//		___awdiv@dividend		EQU		10H
//		___awdiv@divisor		EQU		12H
//		SEG9@dat		EQU		11H
//		SEG9@dat		EQU		11H
//		SEG9@enable		EQU		10H
//		SEG9@dat		EQU		11H
//		SEG8@dat		EQU		19H
//		SEG8@dat		EQU		19H
//		SEG8@enable		EQU		18H
//		SEG8@dat		EQU		19H
//		SEG7@dat		EQU		19H
//		SEG7@dat		EQU		19H
//		SEG7@enable		EQU		18H
//		SEG7@dat		EQU		19H
//		SEG6@dat		EQU		19H
//		SEG6@dat		EQU		19H
//		SEG6@enable		EQU		18H
//		SEG6@dat		EQU		19H
//		Label_Timing@sta		EQU		0BH
//		Label_Timing@sta		EQU		0BH
//		Label_Timing@enable		EQU		0AH
//		Label_Timing@sta		EQU		0BH
//		Label_Running@sta		EQU		0BH
//		Label_Running@sta		EQU		0BH
//		Label_Running@enable		EQU		0AH
//		Label_Running@sta		EQU		0BH
//		Label_Min@sta		EQU		0BH
//		Label_Min@sta		EQU		0BH
//		Label_Min@enable		EQU		0AH
//		Label_Min@sta		EQU		0BH
//		Display_hour@sta		EQU		0AH
//		Display_hour@sta		EQU		0AH
//		Display_hour@sta		EQU		0AH
//		Display_CumulativeTime@sum		EQU		22H
//		Display_CumulativeTime@mode		EQU		26H
//		Display_CumulativeTime@enable		EQU		27H
//		___llmod@counter		EQU		12H
//		___llmod@dividend		EQU		0AH
//		___llmod@divisor		EQU		0EH
//		___lldiv@quotient		EQU		1BH
//		___lldiv@counter		EQU		1FH
//		___lldiv@dividend		EQU		13H
//		___lldiv@divisor		EQU		17H
//		SEG5@dat		EQU		14H
//		SEG5@dat		EQU		14H
//		SEG5@enable		EQU		13H
//		SEG5@dat		EQU		14H
//		SEG4@dat		EQU		21H
//		SEG4@dat		EQU		21H
//		SEG4@enable		EQU		20H
//		SEG4@dat		EQU		21H
//		SEG3@dat		EQU		21H
//		SEG3@dat		EQU		21H
//		SEG3@enable		EQU		20H
//		SEG3@dat		EQU		21H
//		SEG2@dat		EQU		21H
//		SEG2@dat		EQU		21H
//		SEG2@enable		EQU		20H
//		SEG2@dat		EQU		21H
//		SEG1@dat		EQU		21H
//		SEG1@dat		EQU		21H
//		SEG1@enable		EQU		20H
//		SEG1@dat		EQU		21H
//		Label_h@sta		EQU		0AH
//		Label_h@sta		EQU		0AH
//		Label_h@sta		EQU		0AH
//		Label_AddUp@sta		EQU		0AH
//		Label_AddUp@sta		EQU		0AH
//		Label_AddUp@sta		EQU		0AH
//		Cmd_Send@send_FlowSet		EQU		91H
//		___awtoft@sign		EQU		15H
//		___awtoft@c		EQU		12H
//		___ftpack@arg		EQU		0AH
//		___ftpack@exp		EQU		0DH
//		___ftpack@sign		EQU		0EH
//		Uart2SendBuff@i		EQU		0FH
//		Uart2SendBuff@dat		EQU		0BH
//		Uart2SendBuff@len		EQU		0DH
//		Uart2Send@dat		EQU		0AH
//		Uart2Send@dat		EQU		0AH
//		Uart2Send@dat		EQU		0AH
//		Cmd_Process@sum		EQU		1EH
//		CheckSum_Calculate2@i		EQU		16H
//		CheckSum_Calculate2@accumulate		EQU		11H
//		CheckSum_Calculate2@checksum		EQU		15H
//		CheckSum_Calculate2@data0		EQU		0AH
//		CheckSum_Calculate2@length		EQU		0CH
//		DelayMs@b		EQU		0FH
//		DelayMs@a		EQU		0DH
//		DelayMs@Time		EQU		0BH
//		Delay10Us@i		EQU		0AH
//		EC11_Set_Value@EncoderCount		EQU		0EH
//		Get_EC11_Count@ret		EQU		0CH
//		Display_Line@sta		EQU		0AH
//		Display_Line@sta		EQU		0AH
//		Display_Line@sta		EQU		0AH
//		BeepCtr2@value		EQU		0BH
//		BeepCtr2@i		EQU		1C4H
//		BeepEnable@enable		EQU		0AH
//		BeepEnable@enable		EQU		0AH
//		BeepEnable@enable		EQU		0AH
//		Time0_Interrupt@ms		EQU		95H
		_C		EQU		FD8H
		_N		EQU		FD8H
		_Z		EQU		FD8H
		_DC		EQU		FD8H
		_PD		EQU		F9CH
		_RD		EQU		FA6H
		_TO		EQU		F9CH
		_OV		EQU		FD8H
		_WR		EQU		FA6H
		_PA0		EQU		F80H
		_PB0		EQU		F81H
		_RA0		EQU		F80H
		_PA1		EQU		F80H
		_PC0		EQU		F82H
		_RB0		EQU		F81H
		_PB1		EQU		F81H
		_PD0		EQU		F83H
		_RA1		EQU		F80H
		_RC0		EQU		F82H
		_PA2		EQU		F80H
		_PC1		EQU		F82H
		_PE0		EQU		F84H
		_RB1		EQU		F81H
		_PB2		EQU		F81H
		_PD1		EQU		F83H
		_RA2		EQU		F80H
		_PA3		EQU		F80H
		_PC2		EQU		F82H
		_PE1		EQU		F84H
		_PF0		EQU		F85H
		_PB3		EQU		F81H
		_PD2		EQU		F83H
		_RA3		EQU		F80H
		_PF1		EQU		F85H
		_PA4		EQU		F80H
		_PC3		EQU		F82H
		_PE2		EQU		F84H
		_RB2		EQU		F81H
		_PB4		EQU		F81H
		_PD3		EQU		F83H
		_RA4		EQU		F80H
		_PF2		EQU		F85H
		_PA5		EQU		F80H
		_PC4		EQU		F82H
		_PE3		EQU		F84H
		_RB3		EQU		F81H
		_PB5		EQU		F81H
		_PD4		EQU		F83H
		_RA5		EQU		F80H
		_RC1		EQU		F82H
		_PA6		EQU		F80H
		_PC5		EQU		F82H
		_PE4		EQU		F84H
		_PF3		EQU		F85H
		_PB6		EQU		F81H
		_PD5		EQU		F83H
		_RA6		EQU		F80H
		_RB4		EQU		F81H
		_PA7		EQU		F80H
		_PC6		EQU		F82H
		_PE5		EQU		F84H
		_RC2		EQU		F82H
		_PB7		EQU		F81H
		_PD6		EQU		F83H
		_RD0		EQU		F83H
		_PF4		EQU		F85H
		_PC7		EQU		F82H
		_PE6		EQU		F84H
		_RA7		EQU		F80H
		_RB5		EQU		F81H
		_PD7		EQU		F83H
		_RC3		EQU		F82H
		_RD1		EQU		F83H
		_PF5		EQU		F85H
		_PE7		EQU		F84H
		_RB6		EQU		F81H
		_RC4		EQU		F82H
		_RD2		EQU		F83H
		_RE0		EQU		F84H
		_RB7		EQU		F81H
		_RC5		EQU		F82H
		_RD3		EQU		F83H
		_RE1		EQU		F84H
		_RC6		EQU		F82H
		_RD4		EQU		F83H
		_RE2		EQU		F84H
		_RF0		EQU		F85H
		_RC7		EQU		F82H
		_RD5		EQU		F83H
		_RE3		EQU		F84H
		_RF1		EQU		F85H
		_RD6		EQU		F83H
		_RE4		EQU		F84H
		_RF2		EQU		F85H
		_RD7		EQU		F83H
		_RE5		EQU		F84H
		_RF3		EQU		F85H
		_RE6		EQU		F84H
		_RF4		EQU		F85H
		_RE7		EQU		F84H
		_RF5		EQU		F85H
		_SP0		EQU		FFCH
		_SP1		EQU		FFCH
		_SP2		EQU		FFCH
		_SP3		EQU		FFCH
		_SP4		EQU		FFCH
		__S0		EQU		1000H
		__S1		EQU		2D8H
		_GIE		EQU		FF2H
		_BDM		EQU		F67H
		_WKF		EQU		F68H
		_TXE		EQU		F61H
		_SSI		EQU		F67H
		_SCS		EQU		F27H
		_SSM		EQU		F67H
		_WRN		EQU		F6AH
		_HTS		EQU		F27H
		_LTS		EQU		F27H
		_REM0		EQU		F51H
		_REM1		EQU		F51H
		_REM2		EQU		F51H
		_REM3		EQU		F51H
		_C0IE		EQU		F9DH
		_C1IE		EQU		F9DH
		_C0IF		EQU		F9EH
		_C1IF		EQU		F9EH
		_T1IE		EQU		F8FH
		_T2IE		EQU		F7DH
		_T3IE		EQU		FABH
		_T4IE		EQU		FBEH
		_T1IF		EQU		F8FH
		_T5IE		EQU		FCAH
		_CPHA		EQU		F62H
		_T2IF		EQU		F7DH
		_T6IE		EQU		FD4H
		_T3IF		EQU		FADH
		_WPDA		EQU		E00H
		_T4IF		EQU		FBFH
		_T5IF		EQU		FCBH
		_T6IF		EQU		FD5H
		_ADIE		EQU		F9DH
		_WPDB		EQU		E01H
		_CM1O		EQU		F49H
		_EEIE		EQU		F9DH
		_ADIF		EQU		F9EH
		_WPDC		EQU		E02H
		_EEIF		EQU		F9EH
		_FREE		EQU		FA6H
		_PEIE		EQU		FF2H
		_WPDD		EQU		E03H
		_MODF		EQU		F68H
		_GIEH		EQU		FF2H
		_BDOE		EQU		F67H
		_NACK		EQU		F6BH
		_C0IP		EQU		F9FH
		_SPIF		EQU		F68H
		_T4UG		EQU		FBEH
		_C1IP		EQU		F9FH
		_ADFM		EQU		F17H
		_T5UG		EQU		FCAH
		_T6UG		EQU		FD4H
		_GIEL		EQU		FF2H
		_DIRF		EQU		F6FH
		_WPUA		EQU		E08H
		_T2CR		EQU		F7DH
		_WPUB		EQU		E09H
		_ADGO		EQU		F14H
		_BUSE		EQU		F6FH
		_RXNE		EQU		F61H
		_WPUC		EQU		E0AH
		_PORF		EQU		F9CH
		_WPUD		EQU		E0BH
		_ADIP		EQU		F9FH
		_IPEN		EQU		F9CH
		_LVRF		EQU		F9CH
		_IREN		EQU		FADH
		_EEIP		EQU		F9FH
		_ADON		EQU		F14H
		_WCOL		EQU		F68H
		_CPOL		EQU		F62H
		_WREN		EQU		FA6H
		_CFGS		EQU		FA6H
		_T0PR		EQU		F88H
		_SLAS		EQU		F62H
		_LVDP		EQU		F2FH
		_LPPM		EQU		F2BH
		_STOP		EQU		F6AH
		_LVDW		EQU		F2DH
		_SRMT		EQU		F62H
		_OSTS		EQU		F27H
		_DUTY		EQU		F6BH
		_T4DC0		EQU		FC0H
		_T5DC0		EQU		FCCH
		_T6DC0		EQU		FD6H
		_T4DC1		EQU		FC0H
		_T5DC1		EQU		FCCH
		_T6DC1		EQU		FD6H
		_T4DC2		EQU		FC0H
		_T5DC2		EQU		FCCH
		_T6DC2		EQU		FD6H
		_WPDA0		EQU		E00H
		_T4DC3		EQU		FC0H
		_CM0O0		EQU		F49H
		_T5DC3		EQU		FCCH
		_WPDB0		EQU		E01H
		_T6DC3		EQU		FD6H
		_WPDA1		EQU		E00H
		_WPDC0		EQU		E02H
		_T4DC4		EQU		FC0H
		_CM0O1		EQU		F49H
		_T5DC4		EQU		FCCH
		_LATA0		EQU		F89H
		_WPDB1		EQU		E01H
		_WPDD0		EQU		E03H
		_T6DC4		EQU		FD6H
		_IRCF0		EQU		F27H
		_LATB0		EQU		F8AH
		_WPDA2		EQU		E00H
		_WPDC1		EQU		E02H
		_WPDE0		EQU		E04H
		_T4DC5		EQU		FC0H
		_T5DC5		EQU		FCCH
		_LATA1		EQU		F89H
		_LATC0		EQU		F8BH
		_TKCH0		EQU		F76H
		_T6DC5		EQU		FD6H
		_WPDB2		EQU		E01H
		_IRCF1		EQU		F27H
		_WPDD1		EQU		E03H
		_WPDF0		EQU		E05H
		_LATB1		EQU		F8AH
		_LATD0		EQU		F8CH
		_WPDA3		EQU		E00H
		_WPDC2		EQU		E02H
		_WPDE1		EQU		E04H
		_T4DC6		EQU		FC0H
		_T5DC6		EQU		FCCH
		_LATA2		EQU		F89H
		_LATC1		EQU		F8BH
		_LATE0		EQU		F8DH
		_T6DC6		EQU		FD6H
		_TKCH1		EQU		F77H
		_IRCF2		EQU		F27H
		_RMOD0		EQU		E37H
		_WPDB3		EQU		E01H
		_WPDD2		EQU		E03H
		_WPDF1		EQU		E05H
		_LATB2		EQU		F8AH
		_LATD1		EQU		F8CH
		_LATF0		EQU		F8EH
		_WPDA4		EQU		E00H
		_WPDC3		EQU		E02H
		_WPDE2		EQU		E04H
		_WPUA0		EQU		E08H
		_LATA3		EQU		F89H
		_LATC2		EQU		F8BH
		_LATE1		EQU		F8DH
		_TKCH2		EQU		F78H
		_RMOD1		EQU		E37H
		_WPDB4		EQU		E01H
		_IRCF3		EQU		F27H
		_WPDD3		EQU		E03H
		_WPDF2		EQU		E05H
		_WPUB0		EQU		E09H
		_LATB3		EQU		F8AH
		_LATD2		EQU		F8CH
		_LATF1		EQU		F8EH
		_WPDA5		EQU		E00H
		_WPDC4		EQU		E02H
		_WPDE3		EQU		E04H
		_WPUA1		EQU		E08H
		_WPUC0		EQU		E0AH
		_LATA4		EQU		F89H
		_LATC3		EQU		F8BH
		_LATE2		EQU		F8DH
		_TKCH3		EQU		F79H
		_LVDL0		EQU		F2EH
		_WPDB5		EQU		E01H
		_WPDD4		EQU		E03H
		_WPDF3		EQU		E05H
		_WPUB1		EQU		E09H
		_WPUD0		EQU		E0BH
		_ADCS0		EQU		F0EH
		_LATB4		EQU		F8AH
		_LATD3		EQU		F8CH
		_LATF2		EQU		F8EH
		_WPDA6		EQU		E00H
		_BIAS0		EQU		E36H
		_LVDM0		EQU		F2FH
		_WPDC5		EQU		E02H
		_WPDE4		EQU		E04H
		_WPUA2		EQU		E08H
		_WPUC1		EQU		E0AH
		_WPUE0		EQU		E0CH
		_LATA5		EQU		F89H
		_LATC4		EQU		F8BH
		_LATE3		EQU		F8DH
		_TKCH4		EQU		F7AH
		_LVDL1		EQU		F2EH
		_WPDB6		EQU		E01H
		_WPDD5		EQU		E03H
		_WPDF4		EQU		E05H
		_WPUB2		EQU		E09H
		_WPUD1		EQU		E0BH
		_WPUF0		EQU		E0DH
		_ADCS1		EQU		F0EH
		_LATB5		EQU		F8AH
		_LATD4		EQU		F8CH
		_CLKO0		EQU		F48H
		_LATF3		EQU		F8EH
		_BIAS1		EQU		E36H
		_LVDM1		EQU		F2FH
		_WPDA7		EQU		E00H
		_WPDC6		EQU		E02H
		_WPDE5		EQU		E04H
		_WPUA3		EQU		E08H
		_WPUC2		EQU		E0AH
		_WPUE1		EQU		E0CH
		_LATA6		EQU		F89H
		_LATC5		EQU		F8BH
		_LATE4		EQU		F8DH
		_TKCH5		EQU		F7BH
		_LVDL2		EQU		F2EH
		_WPDB7		EQU		E01H
		_WPDD6		EQU		E03H
		_WPDF5		EQU		E05H
		_WPUB3		EQU		E09H
		_WPUD2		EQU		E0BH
		_WPUF1		EQU		E0DH
		_LATB6		EQU		F8AH
		_LATD5		EQU		F8CH
		_CLKO1		EQU		F48H
		_LATF4		EQU		F8EH
		_TKCS0		EQU		E61H
		_WPDC7		EQU		E02H
		_WPDE6		EQU		E04H
		_WPUA4		EQU		E08H
		_WPUC3		EQU		E0AH
		_WPUE2		EQU		E0CH
		_LATA7		EQU		F89H
		_LATC6		EQU		F8BH
		_LATE5		EQU		F8DH
		_WPDD7		EQU		E03H
		_LVDL3		EQU		F2EH
		_WPUB4		EQU		E09H
		_WPUD3		EQU		E0BH
		_WPUF2		EQU		E0DH
		_LATB7		EQU		F8AH
		_LATD6		EQU		F8CH
		_LATF5		EQU		F8EH
		_TKCS1		EQU		E61H
		_WPDE7		EQU		E04H
		_WPUA5		EQU		E08H
		_WPUC4		EQU		E0AH
		_WPUE3		EQU		E0CH
		_LATC7		EQU		F8BH
		_LATE6		EQU		F8DH
		_NSSM0		EQU		F61H
		_WPUB5		EQU		E09H
		_WPUD4		EQU		E0BH
		_WPUF3		EQU		E0DH
		_LATD7		EQU		F8CH
		_TKCS2		EQU		E61H
		_WPUA6		EQU		E08H
		_WPUC5		EQU		E0AH
		_WPUE4		EQU		E0CH
		_LATE7		EQU		F8DH
		_NSSM1		EQU		F61H
		_WPUB6		EQU		E09H
		_WPUD5		EQU		E0BH
		_WPUF4		EQU		E0DH
		_TKCS3		EQU		E61H
		_WPUA7		EQU		E08H
		_WPUC6		EQU		E0AH
		_WPUE5		EQU		E0CH
		_TKDZ0		EQU		E63H
		_TKRS0		EQU		E63H
		_WPUB7		EQU		E09H
		_WPUD6		EQU		E0BH
		_WPUF5		EQU		E0DH
		_WPUC7		EQU		E0AH
		_WPUE6		EQU		E0CH
		_TKDZ1		EQU		E63H
		_TKRS1		EQU		E63H
		_WPUD7		EQU		E0BH
		_WPUE7		EQU		E0CH
		_TKDZ2		EQU		E63H
		_ADR1F		EQU		F6FH
		_TKDZ3		EQU		E63H
		_ADR2F		EQU		F69H
		_DUTY0		EQU		E37H
		_DUTY1		EQU		E37H
		_I2CIE		EQU		F6BH
		_T4BIE		EQU		FC2H
		_T5BIE		EQU		FCDH
		_T6BIE		EQU		FD7H
		_CM0OE		EQU		F23H
		_CM1OE		EQU		F24H
		_LCDIE		EQU		F9DH
		_EEPGD		EQU		FA6H
		_LCDIF		EQU		F9EH
		_NACKF		EQU		F6FH
		_LVDIE		EQU		F9DH
		_ATHIE		EQU		F9DH
		_nEMCF		EQU		F2DH
		_CM0EN		EQU		F23H
		_T0CKI		EQU		F55H
		_CM1EN		EQU		F24H
		_T1CKI		EQU		F55H
		_T3CCM		EQU		FADH
		_LVDIF		EQU		F9EH
		_ATHIF		EQU		F9EH
		_T4AUE		EQU		FC0H
		_T5AUE		EQU		FCCH
		_T6AUE		EQU		FD6H
		_I2CEN		EQU		F6AH
		_MDMOD		EQU		F38H
		_LFMOD		EQU		F2BH
		_TRISA		EQU		F92H
		_UR1EN		EQU		F72H
		_T0CEN		EQU		F86H
		_UR2EN		EQU		F02H
		_T1CEN		EQU		F8FH
		_T2CEN		EQU		F7DH
		_UR3EN		EQU		F08H
		_T3CEN		EQU		FABH
		_T4CEN		EQU		FBEH
		_T5CEN		EQU		FCAH
		_T6CEN		EQU		FD4H
		_TRISB		EQU		F93H
		_FRMOD		EQU		E37H
		_DACEN		EQU		F22H
		_TRISC		EQU		F94H
		_LEBEN		EQU		F1CH
		_PORTA		EQU		F80H
		_T4BKM		EQU		FBFH
		_T5BKM		EQU		FCBH
		_T6BKM		EQU		FD5H
		_TRISD		EQU		F95H
		_PORTB		EQU		F81H
		_CRCEN		EQU		F67H
		_I2CIP		EQU		FA2H
		_TRISE		EQU		F96H
		_UR1IP		EQU		FA2H
		_PORTC		EQU		F82H
		_OP0ON		EQU		F1EH
		_T2PRH		EQU		F99H
		_IDLEN		EQU		F2BH
		_UR2IP		EQU		FA2H
		_T5CHP		EQU		FCDH
		_HIRCM		EQU		F2BH
		_WNDEN		EQU		F22H
		_T6CHP		EQU		FD7H
		_T4PRH		EQU		FBDH
		_CCOEN		EQU		F2CH
		_UR3IP		EQU		FA2H
		_LVDEN		EQU		F2EH
		_EEADR		EQU		FA9H
		_TRISF		EQU		F97H
		_PORTD		EQU		F83H
		__LRAM		EQU		01H
		_STOPF		EQU		F6FH
		_DPSEL		EQU		E3AH
		_T4BKP		EQU		FC3H
		_T5BKP		EQU		FCDH
		_CTYPE		EQU		E37H
		_SPIEN		EQU		F61H
		_T6BKP		EQU		FD7H
		_PORTE		EQU		F84H
		_LCDIP		EQU		F9FH
		_RTYPE		EQU		E37H
		_PLPEN		EQU		F2BH
		_DADRM		EQU		F6AH
		_PORTF		EQU		F85H
		_ADDRM		EQU		F6AH
		_SRSTF		EQU		F9CH
		_T2PRL		EQU		F98H
		_T4OPM		EQU		FBFH
		_T5OPM		EQU		FCBH
		_MSTEN		EQU		F62H
		_T4PRL		EQU		FBCH
		_T6OPM		EQU		FD5H
		_LVDIP		EQU		F9FH
		_ATHIP		EQU		F9FH
		_PXTEN		EQU		F2BH
		_SPIIP		EQU		FA2H
		_T4BZM		EQU		FBFH
		_T5BZM		EQU		FCBH
		_T6BZM		EQU		FD5H
		_TKDZM		EQU		E63H
		_TKRSM		EQU		E63H
		_STRET		EQU		F6AH
		_WAKUP		EQU		F61H
		_RXBMT		EQU		F62H
		_TXBMT		EQU		F68H
		_WRERR		EQU		FA6H
		_RXERR		EQU		F61H
		_C0OUT		EQU		F20H
		_C1OUT		EQU		F21H
		_START		EQU		F6AH
		_LPRDY		EQU		F0DH
		_MULOV		EQU		F38H
		_PONLY		EQU		FA6H
		_LEBCH0		EQU		F1CH
		_LEBCH1		EQU		F1CH
		_TKCFG0		EQU		E60H
		_LEBCH2		EQU		F1CH
		_TKCFG1		EQU		E61H
		_T0PSC0		EQU		F86H
		_T1PSC0		EQU		F8FH
		_T2PSC0		EQU		F7DH
		_T3PSC0		EQU		FABH
		_T4PSC0		EQU		FBEH
		_TRISA0		EQU		F92H
		_T5PSC0		EQU		FCAH
		_T6PSC0		EQU		FD4H
		_T3CAP0		EQU		F56H
		_TRISB0		EQU		F93H
		_TKCFG2		EQU		E62H
		_T0PSC1		EQU		F86H
		_T1PSC1		EQU		F8FH
		_T2PSC1		EQU		F7DH
		_T3PSC1		EQU		FABH
		_T4PSC1		EQU		FBEH
		_TRISA1		EQU		F92H
		_TRISC0		EQU		F94H
		_T5PSC1		EQU		FCAH
		_T6PSC1		EQU		FD4H
		_T3CAP1		EQU		F56H
		_TRISB1		EQU		F93H
		_TRISD0		EQU		F95H
		_TKCFG3		EQU		E63H
		_T0PSC2		EQU		F86H
		_T1PSC2		EQU		F8FH
		_OP0FR0		EQU		F1EH
		_FCSEL0		EQU		E38H
		_T2PSC2		EQU		F7DH
		_T3PSC2		EQU		FABH
		_TRISA2		EQU		F92H
		_TRISC1		EQU		F94H
		_TRISE0		EQU		F96H
		_ANSEL0		EQU		F40H
		_TRISB2		EQU		F93H
		_TRISD1		EQU		F95H
		_TRISF0		EQU		F97H
		_OP0FR1		EQU		F1EH
		_FCSEL1		EQU		E38H
		_TRISA3		EQU		F92H
		_TRISC2		EQU		F94H
		_TRISE1		EQU		F96H
		_T4CH0A		EQU		F50H
		_T5CH0A		EQU		F4DH
		_T6CH0A		EQU		F4FH
		_TRISB3		EQU		F93H
		_TRISD2		EQU		F95H
		_TRISF1		EQU		F97H
		_RX1PO0		EQU		F4AH
		_T4CH1A		EQU		F50H
		_TX1PO0		EQU		F4AH
		_MDCON0		EQU		F38H
		_RX2PO0		EQU		F4BH
		_TX2PO0		EQU		F4BH
		_ADCMP0		EQU		F0FH
		_RX3PO0		EQU		F4CH
		_OP0FR2		EQU		F1EH
		_TX3PO0		EQU		F4CH
		_TRISA4		EQU		F92H
		_TRISC3		EQU		F94H
		_ADCHS0		EQU		F14H
		_ITYPE1		EQU		F47H
		_TRISE2		EQU		F96H
		_T4CH0B		EQU		F50H
		_T0CKS0		EQU		F86H
		_T4CH2A		EQU		F52H
		_T5CH0B		EQU		F4DH
		_T1CKS0		EQU		F8FH
		_T6CH0B		EQU		F4FH
		_T2CKS0		EQU		F7DH
		_T4BKS0		EQU		FBFH
		_T3CKS0		EQU		FABH
		_T5BKS0		EQU		FCBH
		_SDAPO0		EQU		F49H
		_TKCON0		EQU		F7CH
		_T4CKS0		EQU		FBEH
		_T6BKS0		EQU		FD5H
		_T5CKS0		EQU		FCAH
		_T6CKS0		EQU		FD4H
		_TRISB4		EQU		F93H
		_TRISD3		EQU		F95H
		_TRISF2		EQU		F97H
		_RX1PO1		EQU		F4AH
		_T4CH1B		EQU		F50H
		_T4CH3A		EQU		F54H
		_TX1PO1		EQU		F4AH
		_RX2PO1		EQU		F4BH
		_TX2PO1		EQU		F4BH
		_ADCMP1		EQU		F0FH
		_RX3PO1		EQU		F4CH
		_TX3PO1		EQU		F4CH
		_TRISA5		EQU		F92H
		_TRISC4		EQU		F94H
		_ADCHS1		EQU		F14H
		_TRISE3		EQU		F96H
		_T4CH0C		EQU		F50H
		_T0CKS1		EQU		F86H
		_T4CH2B		EQU		F52H
		_T5CH0C		EQU		F4DH
		_T1CKS1		EQU		F8FH
		_T6CH0C		EQU		F4FH
		_T2CKS1		EQU		F7DH
		_T4BKS1		EQU		FBFH
		_T3CKS1		EQU		FABH
		_T5BKS1		EQU		FCBH
		_SDAPO1		EQU		F49H
		_T4CKS1		EQU		FBEH
		_T6BKS1		EQU		FD5H
		_T5CKS1		EQU		FCAH
		_EECON2		EQU		FA7H
		_T6CKS1		EQU		FD4H
		_TRISB5		EQU		F93H
		_MDRES0		EQU		F32H
		_DEBPR0		EQU		F22H
		_TRISD4		EQU		F95H
		_TRISF3		EQU		F97H
		_T4CH1C		EQU		F50H
		_T4CH3B		EQU		F54H
		_SCLPO0		EQU		F49H
		_RX2PO2		EQU		F4BH
		_TX2PO2		EQU		F4BH
		_ADCMP2		EQU		F0FH
		_RX3PO2		EQU		F4CH
		_TX3PO2		EQU		F4CH
		_TRISA6		EQU		F92H
		_TRISC5		EQU		F94H
		_ADCHS2		EQU		F14H
		_TRISE4		EQU		F96H
		_T4CH0D		EQU		F50H
		_T4CH2C		EQU		F52H
		_T5CH0D		EQU		F4DH
		_T6CH0D		EQU		F4FH
		_T4BKS2		EQU		FBFH
		_T5BKS2		EQU		FCBH
		_T4CKS2		EQU		FBEH
		_T6BKS2		EQU		FD5H
		_T5CKS2		EQU		FCAH
		_T6CKS2		EQU		FD4H
		_TRISB6		EQU		F93H
		_MDRES1		EQU		F33H
		_TRISD5		EQU		F95H
		_DEBPR1		EQU		F22H
		_TRISF4		EQU		F97H
		_T4CH1D		EQU		F50H
		_T4CH3C		EQU		F54H
		_SCLPO1		EQU		F49H
		_ADCMP3		EQU		F0FH
		_ADETR0		EQU		F4DH
		_TRISA7		EQU		F92H
		_TRISC6		EQU		F94H
		_ADCHS3		EQU		F14H
		_TRISE5		EQU		F96H
		_T4CH2D		EQU		F52H
		_T5CH0E		EQU		F4DH
		_T6CH0E		EQU		F4FH
		_NSSPO0		EQU		F4AH
		_TRISB7		EQU		F93H
		_TRISD6		EQU		F95H
		_MDRES2		EQU		F34H
		_TRISF5		EQU		F97H
		_T4CH3D		EQU		F54H
		_SCLPO2		EQU		F49H
		_ADETR1		EQU		F4DH
		_TRISC7		EQU		F94H
		_TRISE6		EQU		F96H
		_ADCHS4		EQU		F14H
		_T4CH2E		EQU		F52H
		_LVDRS0		EQU		F2DH
		_T6CH0F		EQU		F53H
		_NSSPO1		EQU		F4AH
		_TRISD7		EQU		F95H
		_MDRES3		EQU		F35H
		_T4CH3E		EQU		F54H
		_MDIVS0		EQU		F36H
		_ADETR2		EQU		F4DH
		_WDTPS0		EQU		F0CH
		_TRISE7		EQU		F96H
		_ADCHS5		EQU		F14H
		_LVDRS1		EQU		F2DH
		_T6CH0G		EQU		F53H
		_MDIVS1		EQU		F37H
		_WDTPS1		EQU		F0CH
		_LVDRS2		EQU		F2DH
		_T6CH0H		EQU		F53H
		_WDTPS2		EQU		F0CH
		_T3CR1F		EQU		FADH
		_T6CH0I		EQU		F53H
		_WDTPS3		EQU		F0CH
		_T6CH0J		EQU		F53H
		_AFP3bits		EQU		F4BH
		_EPS3bits		EQU		F5AH
		_AFP8bits		EQU		F50H
		_LVDDEB		EQU		F2EH
		_ADDLY8		EQU		F16H
		_WPDCbits		EQU		E02H
		_T4OEbits		EQU		FC2H
		_LATAbits		EQU		F89H
		_WPDDbits		EQU		E03H
		_INT0IE		EQU		FF0H
		_TMR0IE		EQU		FF2H
		_INT1IE		EQU		FF0H
		_LATCbits		EQU		F8BH
		_INT2IE		EQU		FF0H
		_LATDbits		EQU		F8CH
		_INT3IE		EQU		FF0H
		_UR1FEF		EQU		F75H
		_LATEbits		EQU		F8DH
		_UR2FEF		EQU		F05H
		_INT0IF		EQU		FF1H
		_INT4IE		EQU		FF0H
		_UR3FEF		EQU		F0BH
		_TMR0IF		EQU		FF2H
		_LATFbits		EQU		F8EH
		_T0CRbits		EQU		F86H
		_INT1IF		EQU		FF1H
		_INT5IE		EQU		FF0H
		_T3CCIE		EQU		FABH
		_INT2IF		EQU		FF1H
		_INT6IE		EQU		FF0H
		_T4CH1P		EQU		FC3H
		_INT3IF		EQU		FF1H
		_INT7IE		EQU		FF0H
		_WPUDbits		EQU		E0BH
		_INT4IF		EQU		FF1H
		_T4CH2P		EQU		FC3H
		_INT5IF		EQU		FF1H
		_T3CCIF		EQU		FADH
		_INT6IF		EQU		FF1H
		_T4CH3P		EQU		FC3H
		_INT7IF		EQU		FF1H
		_EEDATA		EQU		FA8H
		_T4CH4P		EQU		FC3H
		_UR1PEF		EQU		F75H
		_T3CMPA		EQU		F56H
		_UR2PEF		EQU		F05H
		_UR3PEF		EQU		F0BH
		_OSCFIE		EQU		F9DH
		_T3CAPE		EQU		FACH
		_T3CMPB		EQU		F56H
		_OSCFIF		EQU		F9EH
		_T3CMPC		EQU		F56H
		_ADR1FM		EQU		F6BH
		_T5CHOE		EQU		FCDH
		_T6CHOE		EQU		FD7H
		_PBHOLD		EQU		F2DH
		_UR1BDM		EQU		F73H
		_T3CMPD		EQU		F56H
		_T3COME		EQU		FACH
		_UR2BDM		EQU		F03H
		_UR3BDM		EQU		F09H
		_T3CMPE		EQU		F56H
		_OPCMPE		EQU		F1FH
		_T0CKEN		EQU		F28H
		_T1CKEN		EQU		F28H
		_T2CKEN		EQU		F28H
		_T3CKEN		EQU		F28H
		_T4CKEN		EQU		F28H
		_T5CKEN		EQU		F28H
		_T6CKEN		EQU		F28H
		_TKCGEN		EQU		E61H
		_INT0IP		EQU		FA4H
		_TMR0IP		EQU		FA3H
		_MDCKEN		EQU		F2AH
		_INT1IP		EQU		FA4H
		_TMR1IP		EQU		FA3H
		_DMCKEN		EQU		F2AH
		_nMCLRF		EQU		F2DH
		_INT2IP		EQU		FA4H
		_UR1OVF		EQU		F75H
		_TMR2IP		EQU		FA3H
		_UR2OVF		EQU		F05H
		_IOCKEN		EQU		F29H
		_INT3IP		EQU		FA4H
		_UR3OVF		EQU		F0BH
		_TKCKEN		EQU		F28H
		_TMR3IP		EQU		FA3H
		_IRCKEN		EQU		FADH
		_INT4IP		EQU		FA4H
		_TMR4IP		EQU		FA3H
		_T4BKIN		EQU		F54H
		_INT5IP		EQU		FA4H
		_T5BKIN		EQU		F54H
		_TMR5IP		EQU		FA3H
		_STKUNF		EQU		FFCH
		_T6BKIN		EQU		F54H
		_INT6IP		EQU		FA4H
		_TMR6IP		EQU		FA3H
		_INT7IP		EQU		FA4H
		_NSSVAL		EQU		F62H
		_PHSIEN		EQU		F2BH
		_nIERRF		EQU		F2DH
		_PLSIEN		EQU		F2BH
		_CM0POL		EQU		F23H
		_CM1POL		EQU		F24H
		_CMDEBS		EQU		F22H
		_TKCSEN		EQU		E61H
		_TKDSEN		EQU		E61H
		_IRSIGN		EQU		FADH
		_OSCFIP		EQU		F9FH
		_SWDTEN		EQU		F0CH
		_OSCCON		EQU		F27H
		_SLVREN		EQU		F9CH
		_T5CHNP		EQU		FCDH
		_T6CHNP		EQU		FD7H
		_ADCMPO		EQU		F0FH
		_OPTOIO		EQU		F1FH
		_STKFUL		EQU		FFCH
		_WDTLPM		EQU		F0DH
		_MASTER		EQU		F6AH
		_DISPON		EQU		E3AH
		_PUMPON		EQU		E37H
		_CRCERR		EQU		F68H
		_T0CNTR		EQU		F87H
		_DIVERR		EQU		F38H
		_TKMATS		EQU		E60H
		_T4BEVT		EQU		FBFH
		_T5BEVT		EQU		FCBH
		_RXOVRN		EQU		F68H
		_T6BEVT		EQU		FD5H
		_OP0OUT		EQU		F1EH
		_CRCNXT		EQU		F67H
		_IPINSW		EQU		F1FH
		_RXONLY		EQU		F67H
		_OPINSW		EQU		F1FH
		_IPIPSW		EQU		F1FH
		_MDBUSY		EQU		F38H
		_I2CADR1H0		EQU		F6BH
		_I2CADR1H1		EQU		F6BH
		_I2CADR2L0		EQU		F69H
		_I2CADR2L1		EQU		F69H
		_I2CADR2L2		EQU		F69H
		stackhi		EQU		7FFH
		_I2CADR2L3		EQU		F69H
		stacklo		EQU		2D8H
		_T3CAPMOD0		EQU		FACH
		_T3COMMOD0		EQU		FACH
		_I2CADR2L4		EQU		F69H
		_T3CAPPSC0		EQU		FACH
		_T3CAPMOD1		EQU		FACH
		_T3COMMOD1		EQU		FACH
		_I2CADR2L5		EQU		F69H
		_T3CAPPSC1		EQU		FACH
		_PSINKA0		EQU		E18H
		_ODCONA0		EQU		E10H
		_PSRCAH0		EQU		E21H
		_PSRCBH0		EQU		E23H
		_TKMODE0		EQU		F7CH
		_PSINKB0		EQU		E19H
		_ODCONB0		EQU		E11H
		_PSRCCH0		EQU		E25H
		_PSRCDH0		EQU		E27H
		_PSINKA1		EQU		E18H
		_PSINKC0		EQU		E1AH
		_ODCONA1		EQU		E10H
		_ODCONC0		EQU		E12H
		_ADNREF0		EQU		F15H
		_PSRCAH1		EQU		E21H
		_PSRCEH0		EQU		E29H
		_ADPREF0		EQU		F15H
		_PSRCBH1		EQU		E23H
		_PSRCFH0		EQU		E2BH
		_TKMODE1		EQU		F7CH
		_PSINKB1		EQU		E19H
		_I2CADR2L6		EQU		F69H
		_ODCONB1		EQU		E11H
		_ODCOND0		EQU		E13H
		_PSINKD0		EQU		E1BH
		_PSRCCH1		EQU		E25H
		_PSRCDH1		EQU		E27H
		_PSINKA2		EQU		E18H
		_PSINKC1		EQU		E1AH
		_ODCONA2		EQU		E10H
		_ODCONC1		EQU		E12H
		_ODCONE0		EQU		E14H
		_PSINKE0		EQU		E1CH
		_ADNREF1		EQU		F15H
		_PSRCAH2		EQU		E21H
		_PSRCAL0		EQU		E20H
		_PSRCEH1		EQU		E29H
		_ADPREF1		EQU		F15H
		_PSRCBH2		EQU		E23H
		_PSRCBL0		EQU		E22H
		_PSRCFH1		EQU		E2BH
		_TKMODE2		EQU		F7CH
		_PSINKB2		EQU		E19H
		_PSINKD1		EQU		E1BH
		_ODCONB2		EQU		E11H
		_ODCOND1		EQU		E13H
		_ODCONF0		EQU		E15H
		_PSINKF0		EQU		E1DH
		_PSRCCH2		EQU		E25H
		_PSRCCL0		EQU		E24H
		_PSRCDH2		EQU		E27H
		_PSRCDL0		EQU		E26H
		_PSINKA3		EQU		E18H
		_PSINKC2		EQU		E1AH
		_ODCONA3		EQU		E10H
		_ODCONC2		EQU		E12H
		_ODCONE1		EQU		E14H
		_PSINKE1		EQU		E1CH
		_PSRCAH3		EQU		E21H
		_PSRCAL1		EQU		E20H
		_PSRCEH2		EQU		E29H
		_PSRCEL0		EQU		E28H
		_PSRCBH3		EQU		E23H
		_PSRCBL1		EQU		E22H
		_PSRCFH2		EQU		E2BH
		_PSRCFL0		EQU		E2AH
		_PSINKB3		EQU		E19H
		_PSINKD2		EQU		E1BH
		_ODCONB3		EQU		E11H
		_ODCOND2		EQU		E13H
		_ODCONF1		EQU		E15H
		_PSINKF1		EQU		E1DH
		_PSRCCH3		EQU		E25H
		_PSRCCL1		EQU		E24H
		_PSRCDH3		EQU		E27H
		_PSRCDL1		EQU		E26H
		_PSINKA4		EQU		E18H
		_PSINKC3		EQU		E1AH
		_ODCONA4		EQU		E10H
		_ODCONC3		EQU		E12H
		_ODCONE2		EQU		E14H
		_PSINKE2		EQU		E1CH
		_PSRCAH4		EQU		E21H
		_PSRCAL2		EQU		E20H
		_PSRCEH3		EQU		E29H
		_PSRCEL1		EQU		E28H
		_CCOSEL0		EQU		F2CH
		_CLKSEL0		EQU		E3AH
		_WDTPRE0		EQU		F0CH
		_PSRCBH4		EQU		E23H
		_PSRCBL2		EQU		E22H
		_PSRCFH3		EQU		E2BH
		_PSRCFL1		EQU		E2AH
		_PSINKB4		EQU		E19H
		_PSINKD3		EQU		E1BH
		_ODCONB4		EQU		E11H
		_ODCOND3		EQU		E13H
		_ODCONF2		EQU		E15H
		_PSINKF2		EQU		E1DH
		_PSRCCH4		EQU		E25H
		_PSRCCL2		EQU		E24H
		_PSRCDH4		EQU		E27H
		_PSRCDL2		EQU		E26H
		_PSINKA5		EQU		E18H
		_PSINKC4		EQU		E1AH
		_ODCONA5		EQU		E10H
		_ODCONC4		EQU		E12H
		_ODCONE3		EQU		E14H
		_PSINKE3		EQU		E1CH
		_PSRCAH5		EQU		E21H
		_PSRCAL3		EQU		E20H
		_PSRCEH4		EQU		E29H
		_PSRCEL2		EQU		E28H
		_CCOSEL1		EQU		F2CH
		_CLKSEL1		EQU		E3AH
		_WDTPRE1		EQU		F0CH
		_PSRCBH5		EQU		E23H
		_PSRCBL3		EQU		E22H
		_PSRCFH4		EQU		E2BH
		_PSRCFL2		EQU		E2AH
		_DTYSEL0		EQU		F2CH
		_PSINKB5		EQU		E19H
		_PSINKD4		EQU		E1BH
		_ODCONB5		EQU		E11H
		_ODCOND4		EQU		E13H
		_ODCONF3		EQU		E15H
		_PSINKF3		EQU		E1DH
		_PSRCCH5		EQU		E25H
		_PSRCCL3		EQU		E24H
		_LVDCON0		EQU		F2EH
		_LEBMSK0		EQU		F1DH
		_PSRCDH5		EQU		E27H
		_PSRCDL3		EQU		E26H
		_PSINKA6		EQU		E18H
		_PSINKC5		EQU		E1AH
		_ODCONA6		EQU		E10H
		_ODCONC5		EQU		E12H
		_ODCONE4		EQU		E14H
		_PSINKE4		EQU		E1CH
		_PSRCAH6		EQU		E21H
		_PSRCAL4		EQU		E20H
		_PSRCEH5		EQU		E29H
		_PSRCEL3		EQU		E28H
		_CCOSEL2		EQU		F2CH
		_WDTPRE2		EQU		F0CH
		_PSRCBH6		EQU		E23H
		_PSRCBL4		EQU		E22H
		_PSRCFH5		EQU		E2BH
		_PSRCFL3		EQU		E2AH
		_DTYSEL1		EQU		F2CH
		_PSINKB6		EQU		E19H
		_PSINKD5		EQU		E1BH
		_ODCONB6		EQU		E11H
		_ODCOND5		EQU		E13H
		_ODCONF4		EQU		E15H
		_PSINKF4		EQU		E1DH
		_LCDVOL0		EQU		E38H
		_ADCHOP0		EQU		F17H
		_PSRCCH6		EQU		E25H
		_PSRCCL4		EQU		E24H
		_LVDCON1		EQU		F2FH
		_TKBFIS0		EQU		E62H
		_LEBMSK1		EQU		F1DH
		_PSRCDH6		EQU		E27H
		_PSRCDL4		EQU		E26H
		_PSINKA7		EQU		E18H
		_PSINKC6		EQU		E1AH
		_ODCONA7		EQU		E10H
		_ODCONC6		EQU		E12H
		_ODCONE5		EQU		E14H
		_PSINKE5		EQU		E1CH
		_PSRCAH7		EQU		E21H
		_PSRCAL5		EQU		E20H
		_PSRCEH6		EQU		E29H
		_PSRCEL4		EQU		E28H
		_LVDCKS0		EQU		F2EH
		_PSRCBH7		EQU		E23H
		_PSRCBL5		EQU		E22H
		_PSRCFL4		EQU		E2AH
		_PSINKB7		EQU		E19H
		_PSINKD6		EQU		E1BH
		_ODCONB7		EQU		E11H
		_ODCOND6		EQU		E13H
		_ODCONF5		EQU		E15H
		_INTCON1		EQU		FF2H
		_PSINKF5		EQU		E1DH
		_SCLKPO0		EQU		F4AH
		_LCDVOL1		EQU		E38H
		_ADCHOP1		EQU		F17H
		_PSRCCH7		EQU		E25H
		_PSRCCL5		EQU		E24H
		_TKBFIS1		EQU		E62H
		_LEBMSK2		EQU		F1DH
		_PSRCDH7		EQU		E27H
		_PSRCDL5		EQU		E26H
		_WDTCKS0		EQU		F0DH
		_PSINKC7		EQU		E1AH
		_PSINKE6		EQU		E1CH
		_ODCONC7		EQU		E12H
		_ODCONE6		EQU		E14H
		_MOSIPO0		EQU		F48H
		_PSRCAL6		EQU		E20H
		_PSRCEH7		EQU		E29H
		_PSRCEL5		EQU		E28H
		_LVDCKS1		EQU		F2EH
		_PSRCBL6		EQU		E22H
		_PSRCFL5		EQU		E2AH
		_ADTRGS0		EQU		F16H
		_PSINKD7		EQU		E1BH
		_ODCOND7		EQU		E13H
		_SCLKPO1		EQU		F4AH
		_LCDVOL2		EQU		E38H
		_MISOPO0		EQU		F48H
		_ADCHOP2		EQU		F17H
		_PSRCCL6		EQU		E24H
		_TKBFIS2		EQU		E62H
		_LEBMSK3		EQU		F1DH
		_PSRCDL6		EQU		E26H
		_WDTCKS1		EQU		F0DH
		_ADTRGT0		EQU		F16H
		_T5CHSS0		EQU		FCDH
		_PSINKE7		EQU		E1CH
		_ODCONE7		EQU		E14H
		_T6CHSS0		EQU		FD7H
		_MOSIPO1		EQU		F48H
		_TKBFRS0		EQU		E62H
		_PSRCAL7		EQU		E20H
		_PSRCEL6		EQU		E28H
		_PSRCBL7		EQU		E22H
		_ADTRGS1		EQU		F16H
		_LCDVOL3		EQU		E38H
		_MISOPO1		EQU		F48H
		_ADCHOP3		EQU		F17H
		_PSRCCL7		EQU		E24H
		_TKBFIS3		EQU		E62H
		_LEBMSK4		EQU		F1DH
		_PSRCDL7		EQU		E26H
		_ADTRGT1		EQU		F16H
		_T5CHSS1		EQU		FCDH
		_T6CHSS1		EQU		FD7H
		_MOSIPO2		EQU		F48H
		_TKBFRS1		EQU		E62H
		_PSRCEL7		EQU		E28H
		_ADTRGS2		EQU		F16H
		_MISOPO2		EQU		F48H
		_TKBFIS4		EQU		E62H
		_LEBMSK5		EQU		F1DH
		_T2EVTS0		EQU		E60H
		_ADTRGS3		EQU		F16H
		_AFP14bits		EQU		F56H
		_LEBMSK6		EQU		F1DH
		_T2EVTS1		EQU		E60H
		_STRTYP0		EQU		F2FH
		_LEBTIM8		EQU		F1CH
		_STRTYP1		EQU		F2FH
		_T3CR1bits		EQU		FABH
		_T4CR1bits		EQU		FBEH
		_T3CR2bits		EQU		FACH
		_T4CR2bits		EQU		FBFH
		_T3CR3bits		EQU		FADH
		_T4CR3bits		EQU		FC0H
		_T4CH0NA		EQU		F51H
		_T5CH0NA		EQU		F4EH
		_T4CR4bits		EQU		FC1H
		_T6CH0NA		EQU		F55H
		_T4CH0NB		EQU		F51H
		_T5CH0NB		EQU		F4EH
		_T6CH0NB		EQU		F55H
		_T4CH0NC		EQU		F51H
		_T5CH0NC		EQU		F4EH
		_T6CH0NC		EQU		F55H
		_T4CH0ND		EQU		F51H
		_T5CH0ND		EQU		F4EH
		_T6CH0ND		EQU		F55H
		_T5CH0NE		EQU		F4EH
		_T6CH0NE		EQU		F55H
		_T4CH1OE		EQU		FC2H
		_T4CH2OE		EQU		FC2H
		_T4CH3OE		EQU		FC2H
		_TRISDbits		EQU		F95H
		_T4CH4OE		EQU		FC2H
		_ADSPEED		EQU		F17H
		_TRISFbits		EQU		F97H
		_T4POLbits		EQU		FC3H
		_UR1MODE		EQU		F72H
		_UR2MODE		EQU		F02H
		_UR3MODE		EQU		F08H
		_SEGIOS4_0		EQU		E36H
		_TKPWMCF		EQU		E60H
		_OPTODIG		EQU		F1FH
		_I2CTXEF		EQU		F6FH
		_UR1TXEF		EQU		F75H
		_T0IOMOD		EQU		F2CH
		_UR2TXEF		EQU		F05H
		_T1IOMOD		EQU		F2CH
		_UR3TXEF		EQU		F0BH
		_T5CHNOE		EQU		FCDH
		_SEGIOS4_1		EQU		E36H
		_STRETCH		EQU		F6FH
		_T6CHNOE		EQU		FD7H
		_TKIOMOD		EQU		F7CH
		_TKHWMOD		EQU		F7CH
		_UR1PCEN		EQU		F72H
		_UR2PCEN		EQU		F02H
		_UR3PCEN		EQU		F08H
		_I2CCKEN		EQU		F29H
		_UR1CKEN		EQU		F29H
		_UR2CKEN		EQU		F29H
		_UR3CKEN		EQU		F29H
		_ADCCKEN		EQU		F29H
		_LEBCKEN		EQU		F2AH
		_ANACKEN		EQU		F2AH
		_LCDCKEN		EQU		F29H
		_T4CH1NP		EQU		FC3H
		_OP0PSEL		EQU		F1EH
		_SPICKEN		EQU		F29H
		_SEGIOS4_2		EQU		E36H
		_T3CCPRH		EQU		FB1H
		_TKCAPEN		EQU		F7CH
		_ADCMPFM		EQU		F0FH
		_TKAUXTC		EQU		E60H
		_ADCMPEN		EQU		F0FH
		_TKNDRVE		EQU		F7CH
		_UR1EVEN		EQU		F72H
		_UR2EVEN		EQU		F02H
		_TKPDRVE		EQU		F7CH
		_UR3EVEN		EQU		F08H
		_UR2DATL		EQU		F00H
		_T2CNTRH		EQU		F7FH
		_T3CNTRH		EQU		FAFH
		_T4CNTRH		EQU		FBBH
		_TKAUXTE		EQU		E60H
		_UR1RXEN		EQU		F72H
		_UR2RXEN		EQU		F02H
		_UR3RXEN		EQU		F08H
		_UR1TXEN		EQU		F72H
		_UR2TXEN		EQU		F02H
		_UR3TXEN		EQU		F08H
		_SEGIOS4_3		EQU		E36H
		_T3CCPRL		EQU		FB0H
		_UR2BRRL		EQU		F04H
		_T2CNTRL		EQU		F7EH
		_T3CNTRL		EQU		FAEH
		_T4CNTRL		EQU		FBAH
		_UR2STAT		EQU		F05H
		_ADCMPOP		EQU		F0FH
		_UR1STOP		EQU		F72H
		_UR2STOP		EQU		F02H
		_UR3STOP		EQU		F08H
		_INTCON1bits		EQU		FF2H
		_T2AUSTP		EQU		E61H
		_INTCON2bits		EQU		FF1H
		_INTCON3bits		EQU		FF0H
		_CMAUSTR		EQU		F2FH
		_I2CBUSY		EQU		F6FH
		_SPIBUSY		EQU		F62H
		___rparam_used		EQU		01H
		_UR1RXNEIE		EQU		F73H
		_UR2RXNEIE		EQU		F03H
		_UR3RXNEIE		EQU		F09H
		_T4CH2CCRH		EQU		FB5H
		__Hspace_0		EQU		1000H
		__Hspace_1		EQU		2D8H
		_T4CH2CCRL		EQU		FB4H
		_DACVREF0		EQU		F22H
		_DACVREF1		EQU		F22H
		_DAC1DAT0		EQU		F20H
		_DAC2DAT0		EQU		F21H
		_CM0NSEL0		EQU		F23H
		_CM1NSEL0		EQU		F24H
		_CM0PSEL0		EQU		F23H
		_OP0NSEL0		EQU		F1EH
		_CM1PSEL0		EQU		F24H
		_UR1BRRH0		EQU		F73H
		_UR2BRRH0		EQU		F03H
		_UR3BRRH0		EQU		F09H
		_DAC1DAT1		EQU		F20H
		_DAC2DAT1		EQU		F21H
		_CM0NSEL1		EQU		F23H
		_CM1NSEL1		EQU		F24H
		_CM0PSEL1		EQU		F23H
		_OP0NSEL1		EQU		F1EH
		_CM1PSEL1		EQU		F24H
		_UR1BRRH1		EQU		F73H
		_UR2BRRH1		EQU		F03H
		_UR3BRRH1		EQU		F09H
		_DAC1DAT2		EQU		F20H
		_DAC2DAT2		EQU		F21H
		_LEBEDGS0		EQU		F1CH
		_CM0PSEL2		EQU		F23H
		_CM1PSEL2		EQU		F24H
		_UR1BRRH2		EQU		F73H
		_UR2BRRH2		EQU		F03H
		_UR3BRRH2		EQU		F09H
		_T4CH1SS0		EQU		FC1H
		_DAC1DAT3		EQU		F20H
		_DAC2DAT3		EQU		F21H
		_T4CH2SS0		EQU		FC1H
		_T4CH3SS0		EQU		FC1H
		_LEBEDGS1		EQU		F1CH
		_T4CH4SS0		EQU		FC1H
		_ADVREFS0		EQU		F15H
		_UR1BRRH3		EQU		F73H
		_UR2BRRH3		EQU		F03H
		_UR3BRRH3		EQU		F09H
		_T4CH1SS1		EQU		FC1H
		_DAC1DAT4		EQU		F20H
		_LEDCNUM0		EQU		E3AH
		_DAC2DAT4		EQU		F21H
		_T4CH2SS1		EQU		FC1H
		_T4CH3SS1		EQU		FC1H
		_EPSEL0_0		EQU		F57H
		_T4CH4SS1		EQU		FC1H
		_EPSEL1_0		EQU		F57H
		_ADVREFS1		EQU		F15H
		_ADCKDIV0		EQU		F0EH
		_EPSEL2_0		EQU		F58H
		_EPSEL3_0		EQU		F58H
		_DAC1DAT5		EQU		F20H
		_LEDCNUM1		EQU		E3AH
		_DAC2DAT5		EQU		F21H
		_EPSEL0_1		EQU		F57H
		_EPSEL4_0		EQU		F59H
		_FREQDIV0		EQU		E38H
		_EPSEL1_1		EQU		F57H
		_EPSEL5_0		EQU		F59H
		_ADCKDIV1		EQU		F0EH
		_EPSEL2_1		EQU		F58H
		_EPSEL6_0		EQU		F5AH
		_EPSEL3_1		EQU		F58H
		_EPSEL7_0		EQU		F5AH
		_DAC1DAT6		EQU		F20H
		_LEDCNUM2		EQU		E3AH
		_DAC2DAT6		EQU		F21H
		_EPSEL0_2		EQU		F57H
		_EPSEL4_1		EQU		F59H
		_FREQDIV1		EQU		E38H
		_EPSEL1_2		EQU		F57H
		_EPSEL5_1		EQU		F59H
		_ADCKDIV2		EQU		F0EH
		_EPSEL2_2		EQU		F58H
		_EPSEL6_1		EQU		F5AH
		_EPSEL3_2		EQU		F58H
		_EPSEL7_1		EQU		F5AH
		_EPSEL4_2		EQU		F59H
		_EPSEL5_2		EQU		F59H
		_ADCKDIV3		EQU		F0EH
		_EPSEL6_2		EQU		F5AH
		_EPSEL7_2		EQU		F5AH
		_TKPWMTS0		EQU		E60H
		_ADCKDIV4		EQU		F0EH
		_TKPWMTS1		EQU		E60H
		_ADCKDIV5		EQU		F0EH
		_UR2CR1bits		EQU		F02H
		_PCKEN1bits		EQU		F28H
		_UR2CR2bits		EQU		F03H
		_PCKEN2bits		EQU		F29H
		_EECON1bits		EQU		FA6H
		_PCKEN3bits		EQU		F2AH
		_CKCON2bits		EQU		F2CH
		_T4CH1NOE		EQU		FC2H
		_UR1TXEIE		EQU		F73H
		_UR2TXEIE		EQU		F03H
		_UR3TXEIE		EQU		F09H
		_HIRCCALH		EQU		F26H
		_I2CRXNEF		EQU		F6FH
		_UR1RXNEF		EQU		F75H
		_UR2RXNEF		EQU		F05H
		_UR3RXNEF		EQU		F0BH
		_UR1ERRIE		EQU		F73H
		_UR2ERRIE		EQU		F03H
		_UR3ERRIE		EQU		F09H
		_DISPCLKH		EQU		E36H
		_HIRCCALL		EQU		F25H
		_UR1HDSEL		EQU		F72H
		_UR2HDSEL		EQU		F02H
		_UR3HDSEL		EQU		F08H
		_ADVREFEN		EQU		F15H
		__accesstop		EQU		60H
		_LVDHYSEN		EQU		F2FH
		_LVRHYSEN		EQU		F2FH
		_UR1RXFUL		EQU		F75H
		_UR2RXFUL		EQU		F05H
		_UR3RXFUL		EQU		F0BH
		_LSBFIRST		EQU		F67H
		_UR1TXBSY		EQU		F75H
		_UR2TXBSY		EQU		F05H
		_UR3TXBSY		EQU		F0BH
		__activetblptr		EQU		02H
//-----------------------Variable END---------------------------------

		LJUMP 	26H 			//0000 	2F13 3000
		ORG		0008H
		BSR 	55H, 1H, 0H 		//0008 	C255
		LJUMP 	5C7EH 			//000A 	2F3F 302E
		ORG		0018H
		BSR 	55H, 0H, 0H 		//0018 	C055
		MOVFF 	FE0H, 9H 		//001A 	0FE0 3009
		MOVFF 	9H, FE0H 		//001E 	0009 3FE0
		BCR 	55H, 0H, 0H 		//0022 	D055
		RETI 	0H 			//0024 	4010
		LJUMP 	4B58H 			//0026 	2FAC 3025
		BTSC 	9EH, 4H, 0H 		//002A 	F89E
		BRA 	3AH 			//002C 	1006
		BTSS 	7DH, 7H, 0H 		//002E 	EE7D
		RET 	0H 			//0030 	4012
		BCR 	7DH, 7H, 0H 		//0032 	DE7D
		MOVLB 	0H 			//0034 	4100
		INCR 	97H, 1H, 1H 		//0036 	6B97
		RET 	0H 			//0038 	4012
		MOVFF 	F7EH, 4DH 		//003A 	0F7E 304D
		CLRR 	4EH, 0H 		//003E 	AA4E
		LDR 	7FH, 0H, 0H 		//0040 	907F
		ADDWR 	4EH, 1H, 0H 	//0042 	664E
		MOVLB 	0H 			//0044 	4100
		LDR 	97H, 0H, 1H 		//0046 	9197
		STR 	10H, 0H 			//0048 	AE10
		CLRR 	11H, 0H 		//004A 	AA11
		LDWI 	AH 			//004C 	4E0A
		BCR 	D8H, 0H, 0H 		//004E 	D0D8
		RLCR 	10H, 1H, 0H 		//0050 	7610
		RLCR 	11H, 1H, 0H 		//0052 	7611
		DECRSZ 	E8H, 1H, 0H 	//0054 	6EE8
		BRA 	104EH 			//0056 	17FB
		LDR 	10H, 0H, 0H 		//0058 	9010
		ADDWR 	4DH, 1H, 0H 	//005A 	664D
		LDR 	11H, 0H, 0H 		//005C 	9011
		ADDWRC 	4EH, 1H, 0H 	//005E 	624E
		LDWI 	0H 			//0060 	4E00
		STR 	97H, 1H 			//0062 	AF97
		LDWI 	0H 			//0064 	4E00
		STR 	7CH, 0H 			//0066 	AE7C
		LDWI 	0H 			//0068 	4E00
		STR 	76H, 0H 			//006A 	AE76
		LDWI 	0H 			//006C 	4E00
		STR 	77H, 0H 			//006E 	AE77
		LDWI 	0H 			//0070 	4E00
		STR 	78H, 0H 			//0072 	AE78
		LDWI 	0H 			//0074 	4E00
		STR 	79H, 0H 			//0076 	AE79
		LDWI 	0H 			//0078 	4E00
		STR 	7AH, 0H 			//007A 	AE7A
		LDWI 	0H 			//007C 	4E00
		STR 	7BH, 0H 			//007E 	AE7B
		LCALL 	5F8EH, 0H 		//0080 	2CC7 302F
		LDR 	4EH, 0H, 0H 		//0084 	904E
		BNZ 	96H 			//0086 	2107
		LDWI 	FAH 			//0088 	4EFA
		SUBWR 	4DH, 0H, 0H 	//008A 	9C4D
		BTSS 	D8H, 0H, 0H 		//008C 	E0D8
		BTSC 	ABH, 3H, 1H 		//008E 	F7AB
		BRA 	96H 			//0090 	1002
		BSR 	ABH, 3H, 1H 		//0092 	C7AB
		BRA 	C4H 			//0094 	1017
		BCR 	ABH, 3H, 1H 		//0096 	D7AB
		LCALL 	4EEEH, 0H 		//0098 	2C77 3027
		MOVLB 	0H 			//009C 	4100
		INCR 	A5H, 1H, 1H 		//009E 	6BA5
		LDR 	51H, 0H, 0H 		//00A0 	9051
		MULWI 	8H 			//00A2 	4D08
		LDWI 	CCH 			//00A4 	4ECC
		ADDWR 	F3H, 0H, 0H 	//00A6 	64F3
		STR 	D9H, 0H 			//00A8 	AED9
		LDWI 	1H 			//00AA 	4E01
		ADDWRC 	F4H, 0H, 0H 	//00AC 	60F4
		STR 	DAH, 0H 			//00AE 	AEDA
		MOVFF 	FDEH, 10H 		//00B0 	0FDE 3010
		MOVFF 	FDDH, 11H 		//00B4 	0FDD 3011
		LDWI 	FFH 			//00B8 	4EFF
		ANDWR 	10H, 0H, 0H 	//00BA 	5410
		STR 	7FH, 1H 			//00BC 	AF7F
		LDWI 	7H 			//00BE 	4E07
		ANDWR 	11H, 0H, 0H 	//00C0 	5411
		STR 	80H, 1H 			//00C2 	AF80
		LDWI 	2H 			//00C4 	4E02
		CPRSGT 	A5H, 1H 		//00C6 	A5A5
		BRA 	620H 			//00C8 	12AB
		LDWI 	0H 			//00CA 	4E00
		STR 	A5H, 1H 			//00CC 	AFA5
		MOVLB 	1H 			//00CE 	4101
		LDR 	92H, 0H, 1H 		//00D0 	9192
		ADDWR 	94H, 0H, 1H 	//00D2 	6594
		STR 	92H, 1H 			//00D4 	AF92
		LDR 	93H, 0H, 1H 		//00D6 	9193
		ADDWRC 	95H, 0H, 1H 	//00D8 	6195
		STR 	93H, 1H 			//00DA 	AF93
		BCR 	D8H, 0H, 0H 		//00DC 	D0D8
		RRCR 	93H, 0H, 1H 		//00DE 	7193
		STR 	10H, 0H 			//00E0 	AE10
		RRCR 	92H, 0H, 1H 		//00E2 	7192
		STR 	4BH, 0H 			//00E4 	AE4B
		MOVFF 	10H, 4CH 		//00E6 	0010 304C
		LDWI 	14H 			//00EA 	4E14
		MOVLB 	0H 			//00EC 	4100
		CPRSLT 	9FH, 1H 		//00EE 	A19F
		BRA 	F4H 			//00F0 	1001
		BRA 	5BCH 			//00F2 	1264
		LDWI 	15H 			//00F4 	4E15
		CPRSLT 	9FH, 1H 		//00F6 	A19F
		BRA 	15CH 			//00F8 	1031
		LDWI 	FFH 			//00FA 	4EFF
		STR 	10H, 0H 			//00FC 	AE10
		LDWI 	7H 			//00FE 	4E07
		STR 	11H, 0H 			//0100 	AE11
		MOVFF 	4BH, 12H 		//0102 	004B 3012
		MOVFF 	4CH, 13H 		//0106 	004C 3013
		LDR 	10H, 0H, 0H 		//010A 	9010
		ANDWR 	12H, 1H, 0H 	//010C 	5612
		LDR 	11H, 0H, 0H 		//010E 	9011
		ANDWR 	13H, 1H, 0H 	//0110 	5613
		LDWI 	0H 			//0112 	4E00
		STR 	14H, 0H 			//0114 	AE14
		LDWI 	F8H 			//0116 	4EF8
		STR 	15H, 0H 			//0118 	AE15
		LDR 	51H, 0H, 0H 		//011A 	9051
		MULWI 	8H 			//011C 	4D08
		LDWI 	CCH 			//011E 	4ECC
		ADDWR 	F3H, 0H, 0H 	//0120 	64F3
		STR 	D9H, 0H 			//0122 	AED9
		LDWI 	1H 			//0124 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0126 	60F4
		STR 	DAH, 0H 			//0128 	AEDA
		MOVFF 	FDEH, 16H 		//012A 	0FDE 3016
		MOVFF 	FDDH, 17H 		//012E 	0FDD 3017
		LDR 	14H, 0H, 0H 		//0132 	9014
		ANDWR 	16H, 1H, 0H 	//0134 	5616
		LDR 	15H, 0H, 0H 		//0136 	9015
		ANDWR 	17H, 1H, 0H 	//0138 	5617
		LDR 	12H, 0H, 0H 		//013A 	9012
		IORWR 	16H, 1H, 0H 	//013C 	5216
		LDR 	13H, 0H, 0H 		//013E 	9013
		IORWR 	17H, 1H, 0H 	//0140 	5217
		LDR 	51H, 0H, 0H 		//0142 	9051
		MULWI 	8H 			//0144 	4D08
		LDWI 	CCH 			//0146 	4ECC
		ADDWR 	F3H, 0H, 0H 	//0148 	64F3
		STR 	D9H, 0H 			//014A 	AED9
		LDWI 	1H 			//014C 	4E01
		ADDWRC 	F4H, 0H, 0H 	//014E 	60F4
		STR 	DAH, 0H 			//0150 	AEDA
		MOVFF 	16H, FDEH 		//0152 	0016 3FDE
		MOVFF 	17H, FDDH 		//0156 	0017 3FDD
		BRA 	5BCH 			//015A 	1230
		LDWI 	6EH 			//015C 	4E6E
		STR 	9FH, 1H 			//015E 	AF9F
		LDR 	51H, 0H, 0H 		//0160 	9051
		MULWI 	8H 			//0162 	4D08
		LDWI 	CEH 			//0164 	4ECE
		ADDWR 	F3H, 0H, 0H 	//0166 	64F3
		STR 	D9H, 0H 			//0168 	AED9
		LDWI 	1H 			//016A 	4E01
		ADDWRC 	F4H, 0H, 0H 	//016C 	60F4
		STR 	DAH, 0H 			//016E 	AEDA
		MOVFF 	4BH, FDEH 		//0170 	004B 3FDE
		MOVFF 	4CH, FDDH 		//0174 	004C 3FDD
		LDR 	51H, 0H, 0H 		//0178 	9051
		MULWI 	8H 			//017A 	4D08
		LDWI 	CAH 			//017C 	4ECA
		ADDWR 	F3H, 0H, 0H 	//017E 	64F3
		STR 	D9H, 0H 			//0180 	AED9
		LDWI 	1H 			//0182 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0184 	60F4
		STR 	DAH, 0H 			//0186 	AEDA
		MOVFF 	FDEH, 10H 		//0188 	0FDE 3010
		MOVFF 	FDDH, 11H 		//018C 	0FDD 3011
		LDWI 	FFH 			//0190 	4EFF
		ANDWR 	10H, 0H, 0H 	//0192 	5410
		STR 	4DH, 0H 			//0194 	AE4D
		LDWI 	7H 			//0196 	4E07
		ANDWR 	11H, 0H, 0H 	//0198 	5411
		STR 	4EH, 0H 			//019A 	AE4E
		LDR 	4BH, 0H, 0H 		//019C 	904B
		SUBWR 	4DH, 0H, 0H 	//019E 	9C4D
		LDR 	4CH, 0H, 0H 		//01A0 	904C
		SUBWRB 	4EH, 0H, 0H 	//01A2 	984E
		BTSC 	D8H, 0H, 0H 		//01A4 	F0D8
		BRA 	1F2H 			//01A6 	1025
		LDR 	4DH, 0H, 0H 		//01A8 	904D
		SUBWR 	4BH, 0H, 0H 	//01AA 	9C4B
		STR 	10H, 0H 			//01AC 	AE10
		LDR 	4EH, 0H, 0H 		//01AE 	904E
		SUBWRB 	4CH, 0H, 0H 	//01B0 	984C
		STR 	11H, 0H 			//01B2 	AE11
		LDR 	11H, 0H, 0H 		//01B4 	9011
		BNZ 	1D4H 			//01B6 	210E
		LDWI 	3H 			//01B8 	4E03
		SUBWR 	10H, 0H, 0H 	//01BA 	9C10
		BTSC 	D8H, 0H, 0H 		//01BC 	F0D8
		BRA 	1D4H 			//01BE 	100A
		LDR 	51H, 0H, 0H 		//01C0 	9051
		MULWI 	8H 			//01C2 	4D08
		LDWI 	C9H 			//01C4 	4EC9
		ADDWR 	F3H, 0H, 0H 	//01C6 	64F3
		STR 	D9H, 0H 			//01C8 	AED9
		LDWI 	1H 			//01CA 	4E01
		ADDWRC 	F4H, 0H, 0H 	//01CC 	60F4
		STR 	DAH, 0H 			//01CE 	AEDA
		INCR 	DFH, 1H, 0H 		//01D0 	6ADF
		BRA 	20CH 			//01D2 	101C
		LDR 	51H, 0H, 0H 		//01D4 	9051
		MULWI 	8H 			//01D6 	4D08
		LDWI 	C9H 			//01D8 	4EC9
		ADDWR 	F3H, 0H, 0H 	//01DA 	64F3
		STR 	D9H, 0H 			//01DC 	AED9
		LDWI 	1H 			//01DE 	4E01
		ADDWRC 	F4H, 0H, 0H 	//01E0 	60F4
		STR 	DAH, 0H 			//01E2 	AEDA
		LDWI 	0H 			//01E4 	4E00
		STR 	DFH, 0H 			//01E6 	AEDF
		MOVFF 	4BH, 4DH 		//01E8 	004B 304D
		MOVFF 	4CH, 4EH 		//01EC 	004C 304E
		BRA 	20CH 			//01F0 	100D
		LDR 	4BH, 0H, 0H 		//01F2 	904B
		SUBWR 	4DH, 0H, 0H 	//01F4 	9C4D
		STR 	10H, 0H 			//01F6 	AE10
		LDR 	4CH, 0H, 0H 		//01F8 	904C
		SUBWRB 	4EH, 0H, 0H 	//01FA 	984E
		STR 	11H, 0H 			//01FC 	AE11
		LDR 	11H, 0H, 0H 		//01FE 	9011
		BNZ 	3D4H 			//0200 	21E9
		LDWI 	3H 			//0202 	4E03
		SUBWR 	10H, 0H, 0H 	//0204 	9C10
		BTSS 	D8H, 0H, 0H 		//0206 	E0D8
		BRA 	11C0H 			//0208 	17DB
		BRA 	11D4H 			//020A 	17E4
		LDR 	4BH, 0H, 0H 		//020C 	904B
		SUBWR 	7FH, 0H, 1H 	//020E 	9D7F
		LDR 	4CH, 0H, 0H 		//0210 	904C
		SUBWRB 	80H, 0H, 1H 	//0212 	9980
		BTSC 	D8H, 0H, 0H 		//0214 	F0D8
		BRA 	2D4H 			//0216 	105E
		LDR 	51H, 0H, 0H 		//0218 	9051
		MULWI 	8H 			//021A 	4D08
		LDWI 	C8H 			//021C 	4EC8
		ADDWR 	F3H, 0H, 0H 	//021E 	64F3
		STR 	D9H, 0H 			//0220 	AED9
		LDWI 	1H 			//0222 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0224 	60F4
		STR 	DAH, 0H 			//0226 	AEDA
		INCR 	DEH, 0H, 0H 		//0228 	68DE
		BTSC 	D8H, 2H, 0H 		//022A 	F4D8
		BRA 	240H 			//022C 	1009
		LDR 	51H, 0H, 0H 		//022E 	9051
		MULWI 	8H 			//0230 	4D08
		LDWI 	C8H 			//0232 	4EC8
		ADDWR 	F3H, 0H, 0H 	//0234 	64F3
		STR 	D9H, 0H 			//0236 	AED9
		LDWI 	1H 			//0238 	4E01
		ADDWRC 	F4H, 0H, 0H 	//023A 	60F4
		STR 	DAH, 0H 			//023C 	AEDA
		INCR 	DFH, 1H, 0H 		//023E 	6ADF
		LDR 	51H, 0H, 0H 		//0240 	9051
		MULWI 	8H 			//0242 	4D08
		LDWI 	C9H 			//0244 	4EC9
		ADDWR 	F3H, 0H, 0H 	//0246 	64F3
		STR 	D9H, 0H 			//0248 	AED9
		LDWI 	1H 			//024A 	4E01
		ADDWRC 	F4H, 0H, 0H 	//024C 	60F4
		STR 	DAH, 0H 			//024E 	AEDA
		LDWI 	64H 			//0250 	4E64
		CPRSGT 	DFH, 0H 		//0252 	A4DF
		BRA 	310H 			//0254 	105D
		LDWI 	FFH 			//0256 	4EFF
		STR 	10H, 0H 			//0258 	AE10
		LDWI 	7H 			//025A 	4E07
		STR 	11H, 0H 			//025C 	AE11
		MOVFF 	4BH, 12H 		//025E 	004B 3012
		MOVFF 	4CH, 13H 		//0262 	004C 3013
		LDR 	10H, 0H, 0H 		//0266 	9010
		ANDWR 	12H, 1H, 0H 	//0268 	5612
		LDR 	11H, 0H, 0H 		//026A 	9011
		ANDWR 	13H, 1H, 0H 	//026C 	5613
		LDWI 	0H 			//026E 	4E00
		STR 	14H, 0H 			//0270 	AE14
		LDWI 	F8H 			//0272 	4EF8
		STR 	15H, 0H 			//0274 	AE15
		LDR 	51H, 0H, 0H 		//0276 	9051
		MULWI 	8H 			//0278 	4D08
		LDWI 	CCH 			//027A 	4ECC
		ADDWR 	F3H, 0H, 0H 	//027C 	64F3
		STR 	D9H, 0H 			//027E 	AED9
		LDWI 	1H 			//0280 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0282 	60F4
		STR 	DAH, 0H 			//0284 	AEDA
		MOVFF 	FDEH, 16H 		//0286 	0FDE 3016
		MOVFF 	FDDH, 17H 		//028A 	0FDD 3017
		LDR 	14H, 0H, 0H 		//028E 	9014
		ANDWR 	16H, 1H, 0H 	//0290 	5616
		LDR 	15H, 0H, 0H 		//0292 	9015
		ANDWR 	17H, 1H, 0H 	//0294 	5617
		LDR 	12H, 0H, 0H 		//0296 	9012
		IORWR 	16H, 1H, 0H 	//0298 	5216
		LDR 	13H, 0H, 0H 		//029A 	9013
		IORWR 	17H, 1H, 0H 	//029C 	5217
		LDR 	51H, 0H, 0H 		//029E 	9051
		MULWI 	8H 			//02A0 	4D08
		LDWI 	CCH 			//02A2 	4ECC
		ADDWR 	F3H, 0H, 0H 	//02A4 	64F3
		STR 	D9H, 0H 			//02A6 	AED9
		LDWI 	1H 			//02A8 	4E01
		ADDWRC 	F4H, 0H, 0H 	//02AA 	60F4
		STR 	DAH, 0H 			//02AC 	AEDA
		MOVFF 	16H, FDEH 		//02AE 	0016 3FDE
		MOVFF 	17H, FDDH 		//02B2 	0017 3FDD
		LDR 	51H, 0H, 0H 		//02B6 	9051
		MULWI 	8H 			//02B8 	4D08
		LDWI 	C9H 			//02BA 	4EC9
		ADDWR 	F3H, 0H, 0H 	//02BC 	64F3
		STR 	D9H, 0H 			//02BE 	AED9
		LDWI 	1H 			//02C0 	4E01
		ADDWRC 	F4H, 0H, 0H 	//02C2 	60F4
		STR 	DAH, 0H 			//02C4 	AEDA
		LDWI 	0H 			//02C6 	4E00
		STR 	DFH, 0H 			//02C8 	AEDF
		MOVFF 	4BH, 4DH 		//02CA 	004B 304D
		MOVFF 	4CH, 4EH 		//02CE 	004C 304E
		BRA 	310H 			//02D2 	101E
		LDR 	51H, 0H, 0H 		//02D4 	9051
		MULWI 	8H 			//02D6 	4D08
		LDWI 	C8H 			//02D8 	4EC8
		ADDWR 	F3H, 0H, 0H 	//02DA 	64F3
		STR 	D9H, 0H 			//02DC 	AED9
		LDWI 	1H 			//02DE 	4E01
		ADDWRC 	F4H, 0H, 0H 	//02E0 	60F4
		STR 	DAH, 0H 			//02E2 	AEDA
		LDR 	DFH, 0H, 0H 		//02E4 	90DF
		BTSC 	D8H, 2H, 0H 		//02E6 	F4D8
		BRA 	2FCH 			//02E8 	1009
		LDR 	51H, 0H, 0H 		//02EA 	9051
		MULWI 	8H 			//02EC 	4D08
		LDWI 	C8H 			//02EE 	4EC8
		ADDWR 	F3H, 0H, 0H 	//02F0 	64F3
		STR 	D9H, 0H 			//02F2 	AED9
		LDWI 	1H 			//02F4 	4E01
		ADDWRC 	F4H, 0H, 0H 	//02F6 	60F4
		STR 	DAH, 0H 			//02F8 	AEDA
		DECR 	DFH, 1H, 0H 		//02FA 	46DF
		LDR 	51H, 0H, 0H 		//02FC 	9051
		MULWI 	8H 			//02FE 	4D08
		LDWI 	C9H 			//0300 	4EC9
		ADDWR 	F3H, 0H, 0H 	//0302 	64F3
		STR 	D9H, 0H 			//0304 	AED9
		LDWI 	1H 			//0306 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0308 	60F4
		STR 	DAH, 0H 			//030A 	AEDA
		LDWI 	C8H 			//030C 	4EC8
		BRA 	1252H 			//030E 	17A1
		LDWI 	32H 			//0310 	4E32
		STR 	AH, 0H 			//0312 	AE0A
		LDR 	99H, 0H, 1H 		//0314 	9199
		LCALL 	5B40H, 0H 		//0316 	2CA0 302D
		IORWI 	0H 			//031A 	4900
		BTSS 	D8H, 2H, 0H 		//031C 	E4D8
		BRA 	360H 			//031E 	1020
		LDR 	51H, 0H, 0H 		//0320 	9051
		MULWI 	8H 			//0322 	4D08
		LDWI 	C8H 			//0324 	4EC8
		ADDWR 	F3H, 0H, 0H 	//0326 	64F3
		STR 	D9H, 0H 			//0328 	AED9
		LDWI 	1H 			//032A 	4E01
		ADDWRC 	F4H, 0H, 0H 	//032C 	60F4
		STR 	DAH, 0H 			//032E 	AEDA
		LDWI 	98H 			//0330 	4E98
		CPRSGT 	DFH, 0H 		//0332 	A4DF
		BRA 	360H 			//0334 	1015
		LDR 	51H, 0H, 0H 		//0336 	9051
		MULWI 	8H 			//0338 	4D08
		LDWI 	CCH 			//033A 	4ECC
		ADDWR 	F3H, 0H, 0H 	//033C 	64F3
		STR 	D9H, 0H 			//033E 	AED9
		LDWI 	1H 			//0340 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0342 	60F4
		STR 	DAH, 0H 			//0344 	AEDA
		INCR 	DEH, 1H, 0H 		//0346 	6ADE
		LDWI 	0H 			//0348 	4E00
		ADDWRC 	DDH, 1H, 0H 	//034A 	62DD
		LDR 	51H, 0H, 0H 		//034C 	9051
		MULWI 	8H 			//034E 	4D08
		LDWI 	C8H 			//0350 	4EC8
		ADDWR 	F3H, 0H, 0H 	//0352 	64F3
		STR 	D9H, 0H 			//0354 	AED9
		LDWI 	1H 			//0356 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0358 	60F4
		STR 	DAH, 0H 			//035A 	AEDA
		LDWI 	80H 			//035C 	4E80
		STR 	DFH, 0H 			//035E 	AEDF
		LDWI 	64H 			//0360 	4E64
		STR 	AH, 0H 			//0362 	AE0A
		MOVLB 	0H 			//0364 	4100
		LDR 	99H, 0H, 1H 		//0366 	9199
		LCALL 	5B40H, 0H 		//0368 	2CA0 302D
		IORWI 	0H 			//036C 	4900
		BTSS 	D8H, 2H, 0H 		//036E 	E4D8
		BRA 	3B2H 			//0370 	1020
		LDR 	51H, 0H, 0H 		//0372 	9051
		MULWI 	8H 			//0374 	4D08
		LDWI 	C8H 			//0376 	4EC8
		ADDWR 	F3H, 0H, 0H 	//0378 	64F3
		STR 	D9H, 0H 			//037A 	AED9
		LDWI 	1H 			//037C 	4E01
		ADDWRC 	F4H, 0H, 0H 	//037E 	60F4
		STR 	DAH, 0H 			//0380 	AEDA
		LDWI 	4FH 			//0382 	4E4F
		CPRSLT 	DFH, 0H 		//0384 	A0DF
		BRA 	39EH 			//0386 	100B
		LDR 	51H, 0H, 0H 		//0388 	9051
		MULWI 	8H 			//038A 	4D08
		LDWI 	CCH 			//038C 	4ECC
		ADDWR 	F3H, 0H, 0H 	//038E 	64F3
		STR 	D9H, 0H 			//0390 	AED9
		LDWI 	1H 			//0392 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0394 	60F4
		STR 	DAH, 0H 			//0396 	AEDA
		DECR 	DEH, 1H, 0H 		//0398 	46DE
		LDWI 	0H 			//039A 	4E00
		SUBWRB 	DDH, 1H, 0H 	//039C 	9ADD
		LDR 	51H, 0H, 0H 		//039E 	9051
		MULWI 	8H 			//03A0 	4D08
		LDWI 	C8H 			//03A2 	4EC8
		ADDWR 	F3H, 0H, 0H 	//03A4 	64F3
		STR 	D9H, 0H 			//03A6 	AED9
		LDWI 	1H 			//03A8 	4E01
		ADDWRC 	F4H, 0H, 0H 	//03AA 	60F4
		STR 	DAH, 0H 			//03AC 	AEDA
		LDWI 	80H 			//03AE 	4E80
		STR 	DFH, 0H 			//03B0 	AEDF
		LDWI 	FFH 			//03B2 	4EFF
		STR 	10H, 0H 			//03B4 	AE10
		LDWI 	7H 			//03B6 	4E07
		STR 	11H, 0H 			//03B8 	AE11
		MOVFF 	4DH, 12H 		//03BA 	004D 3012
		MOVFF 	4EH, 13H 		//03BE 	004E 3013
		LDR 	10H, 0H, 0H 		//03C2 	9010
		ANDWR 	12H, 1H, 0H 	//03C4 	5612
		LDR 	11H, 0H, 0H 		//03C6 	9011
		ANDWR 	13H, 1H, 0H 	//03C8 	5613
		LDWI 	0H 			//03CA 	4E00
		STR 	14H, 0H 			//03CC 	AE14
		LDWI 	F8H 			//03CE 	4EF8
		STR 	15H, 0H 			//03D0 	AE15
		LDR 	51H, 0H, 0H 		//03D2 	9051
		MULWI 	8H 			//03D4 	4D08
		LDWI 	CAH 			//03D6 	4ECA
		ADDWR 	F3H, 0H, 0H 	//03D8 	64F3
		STR 	D9H, 0H 			//03DA 	AED9
		LDWI 	1H 			//03DC 	4E01
		ADDWRC 	F4H, 0H, 0H 	//03DE 	60F4
		STR 	DAH, 0H 			//03E0 	AEDA
		MOVFF 	FDEH, 16H 		//03E2 	0FDE 3016
		MOVFF 	FDDH, 17H 		//03E6 	0FDD 3017
		LDR 	14H, 0H, 0H 		//03EA 	9014
		ANDWR 	16H, 1H, 0H 	//03EC 	5616
		LDR 	15H, 0H, 0H 		//03EE 	9015
		ANDWR 	17H, 1H, 0H 	//03F0 	5617
		LDR 	12H, 0H, 0H 		//03F2 	9012
		IORWR 	16H, 1H, 0H 	//03F4 	5216
		LDR 	13H, 0H, 0H 		//03F6 	9013
		IORWR 	17H, 1H, 0H 	//03F8 	5217
		LDR 	51H, 0H, 0H 		//03FA 	9051
		MULWI 	8H 			//03FC 	4D08
		LDWI 	CAH 			//03FE 	4ECA
		ADDWR 	F3H, 0H, 0H 	//0400 	64F3
		STR 	D9H, 0H 			//0402 	AED9
		LDWI 	1H 			//0404 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0406 	60F4
		STR 	DAH, 0H 			//0408 	AEDA
		MOVFF 	16H, FDEH 		//040A 	0016 3FDE
		MOVFF 	17H, FDDH 		//040E 	0017 3FDD
		LDWI 	0H 			//0412 	4E00
		MOVLB 	0H 			//0414 	4100
		STR 	76H, 1H 			//0416 	AF76
		LDWI 	0H 			//0418 	4E00
		STR 	77H, 1H 			//041A 	AF77
		LDWI 	6H 			//041C 	4E06
		STR 	78H, 1H 			//041E 	AF78
		LDWI 	0H 			//0420 	4E00
		STR 	79H, 1H 			//0422 	AF79
		MOVFF 	4BH, 7DH 		//0424 	004B 307D
		MOVFF 	4CH, 7EH 		//0428 	004C 307E
		LCALL 	4470H, 0H 		//042C 	2C38 3022
		MOVFF 	1F8H, 4BH 		//0430 	01F8 304B
		MOVFF 	1F9H, 4CH 		//0434 	01F9 304C
		MOVFF 	7FH, 7DH 		//0438 	007F 307D
		MOVFF 	80H, 7EH 		//043C 	0080 307E
		LCALL 	4470H, 0H 		//0440 	2C38 3022
		MOVFF 	1F8H, 7FH 		//0444 	01F8 307F
		MOVFF 	1F9H, 80H 		//0448 	01F9 3080
		LDWI 	0H 			//044C 	4E00
		STR 	4FH, 0H 			//044E 	AE4F
		MOVLB 	0H 			//0450 	4100
		LDR 	7FH, 0H, 1H 		//0452 	917F
		SUBWR 	4BH, 0H, 0H 	//0454 	9C4B
		LDR 	80H, 0H, 1H 		//0456 	9180
		SUBWRB 	4CH, 0H, 0H 	//0458 	984C
		BTSS 	D8H, 0H, 0H 		//045A 	E0D8
		BRA 	49AH 			//045C 	101E
		LDR 	7FH, 0H, 1H 		//045E 	917F
		SUBWR 	4BH, 0H, 0H 	//0460 	9C4B
		STR 	4DH, 0H 			//0462 	AE4D
		LDR 	80H, 0H, 1H 		//0464 	9180
		SUBWRB 	4CH, 0H, 0H 	//0466 	984C
		STR 	4EH, 0H 			//0468 	AE4E
		DECR 	4EH, 0H, 0H 		//046A 	444E
		BTSS 	D8H, 0H, 0H 		//046C 	E0D8
		BRA 	476H 			//046E 	1003
		LDWI 	0H 			//0470 	4E00
		STR 	4EH, 0H 			//0472 	AE4E
		SETR 	4DH, 0H 		//0474 	A84D
		MOVFF 	4DH, 4FH 		//0476 	004D 304F
		LDR 	4FH, 0H, 0H 		//047A 	904F
		SUBWR 	A4H, 0H, 1H 	//047C 	9DA4
		BTSC 	D8H, 0H, 0H 		//047E 	F0D8
		BRA 	490H 			//0480 	1007
		MOVFF 	A4H, A3H 		//0482 	00A4 30A3
		MOVFF 	4FH, A4H 		//0486 	004F 30A4
		INCR 	51H, 0H, 0H 		//048A 	6851
		STR 	A2H, 1H 			//048C 	AFA2
		BRA 	49AH 			//048E 	1005
		LDR 	4FH, 0H, 0H 		//0490 	904F
		SUBWR 	A3H, 0H, 1H 	//0492 	9DA3
		BTSS 	D8H, 0H, 0H 		//0494 	E0D8
		MOVFF 	4FH, A3H 		//0496 	004F 30A3
		LDR 	4FH, 0H, 0H 		//049A 	904F
		STR 	10H, 0H 			//049C 	AE10
		CLRR 	11H, 0H 		//049E 	AA11
		LDWI 	59H 			//04A0 	4E59
		ADDWR 	51H, 0H, 0H 	//04A2 	6451
		STR 	F6H, 0H 			//04A4 	AEF6
		CLRR 	F7H, 0H 		//04A6 	AAF7
		LDWI 	7FH 			//04A8 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//04AA 	62F7
		TBLRD*  			//04AC 	4008
		MOVFF 	FF5H, 12H 		//04AE 	0FF5 3012
		BCR 	D8H, 0H, 0H 		//04B2 	D0D8
		RRCR 	12H, 1H, 0H 		//04B4 	7212
		LDR 	12H, 0H, 0H 		//04B6 	9012
		MULWI 	3H 			//04B8 	4D03
		LDR 	10H, 0H, 0H 		//04BA 	9010
		SUBWR 	F3H, 0H, 0H 	//04BC 	9CF3
		LDR 	F4H, 0H, 0H 		//04BE 	90F4
		XORWI 	80H 			//04C0 	4A80
		STR 	13H, 0H 			//04C2 	AE13
		LDR 	11H, 0H, 0H 		//04C4 	9011
		XORWI 	80H 			//04C6 	4A80
		SUBWRB 	13H, 0H, 0H 	//04C8 	9813
		BTSS 	D8H, 0H, 0H 		//04CA 	E0D8
		INCR 	98H, 1H, 1H 		//04CC 	6B98
		LDR 	51H, 0H, 0H 		//04CE 	9051
		MULWI 	8H 			//04D0 	4D08
		LDWI 	CDH 			//04D2 	4ECD
		ADDWR 	F3H, 0H, 0H 	//04D4 	64F3
		STR 	D9H, 0H 			//04D6 	AED9
		LDWI 	1H 			//04D8 	4E01
		ADDWRC 	F4H, 0H, 0H 	//04DA 	60F4
		STR 	DAH, 0H 			//04DC 	AEDA
		MOVLB 	1H 			//04DE 	4101
		RRCR 	DFH, 0H, 0H 		//04E0 	70DF
		RRCR 	E8H, 1H, 0H 		//04E2 	72E8
		RRCR 	E8H, 1H, 0H 		//04E4 	72E8
		ANDWI 	1FH 			//04E6 	4B1F
		STR 	52H, 0H 			//04E8 	AE52
		LDR 	52H, 0H, 0H 		//04EA 	9052
		ADDWR 	52H, 0H, 0H 	//04EC 	6452
		ANDWI 	3EH 			//04EE 	4B3E
		STR 	52H, 0H 			//04F0 	AE52
		LDR 	51H, 0H, 0H 		//04F2 	9051
		MULWI 	8H 			//04F4 	4D08
		LDWI 	CBH 			//04F6 	4ECB
		ADDWR 	F3H, 0H, 0H 	//04F8 	64F3
		STR 	D9H, 0H 			//04FA 	AED9
		LDWI 	1H 			//04FC 	4E01
		ADDWRC 	F4H, 0H, 0H 	//04FE 	60F4
		STR 	DAH, 0H 			//0500 	AEDA
		BTSC 	DFH, 7H, 0H 		//0502 	FEDF
		BRA 	550H 			//0504 	1025
		LDWI 	59H 			//0506 	4E59
		ADDWR 	51H, 0H, 0H 	//0508 	6451
		STR 	F6H, 0H 			//050A 	AEF6
		CLRR 	F7H, 0H 		//050C 	AAF7
		LDWI 	7FH 			//050E 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//0510 	62F7
		TBLRD*+  			//0512 	4009
		LDR 	F5H, 0H, 0H 		//0514 	90F5
		SUBWR 	4FH, 0H, 0H 	//0516 	9C4F
		BTSS 	D8H, 0H, 0H 		//0518 	E0D8
		BRA 	596H 			//051A 	103D
		MOVLB 	0H 			//051C 	4100
		BSR 	ABH, 0H, 1H 		//051E 	C1AB
		BSR 	A2H, 7H, 1H 		//0520 	CFA2
		BSR 	52H, 0H, 0H 		//0522 	C052
		LDWI 	1H 			//0524 	4E01
		STR 	A8H, 1H 			//0526 	AFA8
		MOVFF 	52H, AAH 		//0528 	0052 30AA
		LCALL 	5D44H, 0H 		//052C 	2CA2 302E
		LDWI 	2H 			//0530 	4E02
		CPRSGT 	A8H, 1H 		//0532 	A5A8
		BRA 	596H 			//0534 	1030
		LDR 	51H, 0H, 0H 		//0536 	9051
		MULWI 	8H 			//0538 	4D08
		LDWI 	CBH 			//053A 	4ECB
		ADDWR 	F3H, 0H, 0H 	//053C 	64F3
		STR 	D9H, 0H 			//053E 	AED9
		LDWI 	1H 			//0540 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0542 	60F4
		STR 	DAH, 0H 			//0544 	AEDA
		MOVLB 	1H 			//0546 	4101
		BSR 	DFH, 7H, 0H 		//0548 	CEDF
		LDWI 	0H 			//054A 	4E00
		STR 	52H, 0H 			//054C 	AE52
		BRA 	596H 			//054E 	1023
		MOVLB 	0H 			//0550 	4100
		BSR 	ABH, 0H, 1H 		//0552 	C1AB
		BSR 	A2H, 7H, 1H 		//0554 	CFA2
		LDWI 	55H 			//0556 	4E55
		ADDWR 	51H, 0H, 0H 	//0558 	6451
		STR 	F6H, 0H 			//055A 	AEF6
		CLRR 	F7H, 0H 		//055C 	AAF7
		LDWI 	7FH 			//055E 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//0560 	62F7
		LDR 	4FH, 0H, 0H 		//0562 	904F
		TBLRD*+  			//0564 	4009
		SUBWR 	F5H, 0H, 0H 	//0566 	9CF5
		BTSS 	D8H, 0H, 0H 		//0568 	E0D8
		BRA 	596H 			//056A 	1015
		BSR 	52H, 0H, 0H 		//056C 	C052
		LDWI 	1H 			//056E 	4E01
		STR 	A8H, 1H 			//0570 	AFA8
		MOVFF 	52H, AAH 		//0572 	0052 30AA
		LCALL 	5D44H, 0H 		//0576 	2CA2 302E
		LDWI 	2H 			//057A 	4E02
		CPRSGT 	A8H, 1H 		//057C 	A5A8
		BRA 	596H 			//057E 	100B
		LDR 	51H, 0H, 0H 		//0580 	9051
		MULWI 	8H 			//0582 	4D08
		LDWI 	CBH 			//0584 	4ECB
		ADDWR 	F3H, 0H, 0H 	//0586 	64F3
		STR 	D9H, 0H 			//0588 	AED9
		LDWI 	1H 			//058A 	4E01
		ADDWRC 	F4H, 0H, 0H 	//058C 	60F4
		STR 	DAH, 0H 			//058E 	AEDA
		MOVLB 	1H 			//0590 	4101
		BCR 	DFH, 7H, 0H 		//0592 	DEDF
		BRA 	154AH 			//0594 	17DA
		MOVFF 	52H, 10H 		//0596 	0052 3010
		LDR 	51H, 0H, 0H 		//059A 	9051
		MULWI 	8H 			//059C 	4D08
		LDWI 	CDH 			//059E 	4ECD
		ADDWR 	F3H, 0H, 0H 	//05A0 	64F3
		STR 	D9H, 0H 			//05A2 	AED9
		LDWI 	1H 			//05A4 	4E01
		ADDWRC 	F4H, 0H, 0H 	//05A6 	60F4
		STR 	DAH, 0H 			//05A8 	AEDA
		RLNCR 	10H, 1H, 0H 	//05AA 	8610
		RLNCR 	10H, 1H, 0H 	//05AC 	8610
		RLNCR 	10H, 1H, 0H 	//05AE 	8610
		MOVLB 	1H 			//05B0 	4101
		LDR 	DFH, 0H, 0H 		//05B2 	90DF
		XORWR 	10H, 0H, 0H 	//05B4 	5810
		ANDWI 	7H 			//05B6 	4B07
		XORWR 	10H, 0H, 0H 	//05B8 	5810
		STR 	DFH, 0H 			//05BA 	AEDF
		INCR 	51H, 1H, 0H 		//05BC 	6A51
		LDWI 	3H 			//05BE 	4E03
		CPRSGT 	51H, 0H 		//05C0 	A451
		BRA 	620H 			//05C2 	102E
		LDWI 	0H 			//05C4 	4E00
		STR 	51H, 0H 			//05C6 	AE51
		LDWI 	6EH 			//05C8 	4E6E
		MOVLB 	0H 			//05CA 	4100
		XORWR 	9FH, 0H, 1H 	//05CC 	599F
		BTSS 	D8H, 2H, 0H 		//05CE 	E4D8
		BRA 	61EH 			//05D0 	1026
		INCR 	99H, 1H, 1H 		//05D2 	6B99
		LDWI 	1H 			//05D4 	4E01
		STR 	9CH, 1H 			//05D6 	AF9C
		BTSS 	ABH, 0H, 1H 		//05D8 	E1AB
		BRA 	614H 			//05DA 	101C
		LDWI 	0H 			//05DC 	4E00
		STR 	50H, 0H 			//05DE 	AE50
		LDWI 	3H 			//05E0 	4E03
		CPRSGT 	50H, 0H 		//05E2 	A450
		BRA 	5E8H 			//05E4 	1001
		BRA 	614H 			//05E6 	1016
		LDR 	50H, 0H, 0H 		//05E8 	9050
		MULWI 	8H 			//05EA 	4D08
		LDWI 	C9H 			//05EC 	4EC9
		ADDWR 	F3H, 0H, 0H 	//05EE 	64F3
		STR 	D9H, 0H 			//05F0 	AED9
		LDWI 	1H 			//05F2 	4E01
		ADDWRC 	F4H, 0H, 0H 	//05F4 	60F4
		STR 	DAH, 0H 			//05F6 	AEDA
		LDWI 	0H 			//05F8 	4E00
		STR 	DFH, 0H 			//05FA 	AEDF
		LDR 	50H, 0H, 0H 		//05FC 	9050
		MULWI 	8H 			//05FE 	4D08
		LDWI 	C8H 			//0600 	4EC8
		ADDWR 	F3H, 0H, 0H 	//0602 	64F3
		STR 	D9H, 0H 			//0604 	AED9
		LDWI 	1H 			//0606 	4E01
		ADDWRC 	F4H, 0H, 0H 	//0608 	60F4
		STR 	DAH, 0H 			//060A 	AEDA
		LDWI 	80H 			//060C 	4E80
		STR 	DFH, 0H 			//060E 	AEDF
		INCR 	50H, 1H, 0H 		//0610 	6A50
		BRA 	15E0H 			//0612 	17E6
		MOVLB 	0H 			//0614 	4100
		BCR 	ABH, 0H, 1H 		//0616 	D1AB
		BCR 	9DH, 4H, 0H 		//0618 	D89D
		BCR 	9EH, 4H, 0H 		//061A 	D89E
		RET 	0H 			//061C 	4012
		INCR 	9FH, 1H, 1H 		//061E 	6B9F
		BCR 	9EH, 4H, 0H 		//0620 	D89E
		LCALL 	3A70H, 0H 		//0622 	2C38 301D
		RET 	0H 			//0626 	4012

		//;setsysdata.c: 354: static int Adjust_Flow_20 = 0;;setsysdata.c: 355: static int Adjust_
		//+                          Flow_50 = 0;;setsysdata.c: 356: static int Adjust_Flow_100 = 0;;setsysdata.c: 359: Engin
		//+                          eering_Pattern.Led_Display_Timing_Enbale = 2;
		LDWI 	2H 			//0628 	4E02
		STR 	67H, 1H 			//062A 	AF67

		//;setsysdata.c: 360: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
		LDWI 	1H 			//062C 	4E01
		STR 	68H, 1H 			//062E 	AF68

		//;setsysdata.c: 361: Engineering_Pattern.Led_Display_Flow = 1;
		LDWI 	1H 			//0630 	4E01
		STR 	6AH, 1H 			//0632 	AF6A

		//;setsysdata.c: 362: Engineering_Pattern.Time_Start_Flag = 1;
		LDWI 	1H 			//0634 	4E01
		STR 	60H, 1H 			//0636 	AF60

		//;setsysdata.c: 365: Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
		LDWI 	0H 			//0638 	4E00
		STR 	20H, 0H 			//063A 	AE20
		LDWI 	0H 			//063C 	4E00
		STR 	21H, 0H 			//063E 	AE21
		LDWI 	0H 			//0640 	4E00
		STR 	22H, 0H 			//0642 	AE22
		LDWI 	0H 			//0644 	4E00
		STR 	23H, 0H 			//0646 	AE23
		LDWI 	0H 			//0648 	4E00
		STR 	24H, 0H 			//064A 	AE24
		MOVFF 	67H, 25H 		//064C 	0067 3025
		LCALL 	1B4EH, 0H 		//0650 	2CA7 300D

		//;setsysdata.c: 366: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_
		//+                          Enbale);
		LDWI 	0H 			//0654 	4E00
		STR 	22H, 0H 			//0656 	AE22
		LDWI 	0H 			//0658 	4E00
		STR 	23H, 0H 			//065A 	AE23
		LDWI 	0H 			//065C 	4E00
		STR 	24H, 0H 			//065E 	AE24
		LDWI 	0H 			//0660 	4E00
		STR 	25H, 0H 			//0662 	AE25
		LDWI 	0H 			//0664 	4E00
		STR 	26H, 0H 			//0666 	AE26
		MOVFF 	67H, 27H 		//0668 	0067 3027
		LCALL 	2716H, 0H 		//066C 	2C8B 3013

		//;setsysdata.c: 367: Display_hour(0);
		LDWI 	0H 			//0670 	4E00
		LCALL 	5ED8H, 0H 		//0672 	2C6C 302F

		//;setsysdata.c: 368: SEG4(0x00,0);
		LDWI 	0H 			//0676 	4E00
		STR 	20H, 0H 			//0678 	AE20
		LDWI 	0H 			//067A 	4E00
		LCALL 	529EH, 0H 		//067C 	2C4F 3029

		//;setsysdata.c: 369: SEG5(0x00,0);
		LDWI 	0H 			//0680 	4E00
		STR 	13H, 0H 			//0682 	AE13
		LDWI 	0H 			//0684 	4E00
		LCALL 	524AH, 0H 		//0686 	2C25 3029

		//;setsysdata.c: 372: static int i = 0;;setsysdata.c: 373: Cmd_Process();
		LCALL 	3BA2H, 0H 		//068A 	2CD1 301D

		//;setsysdata.c: 374: i++;
		INRSNZ 	9CH, 1H, 1H 	//068E 	8B9C
		INCR 	9DH, 1H, 1H 		//0690 	6B9D

		//;setsysdata.c: 375: if (i > 100)
		BTSC 	9DH, 7H, 1H 		//0692 	FF9D
		BRA 	6AEH 			//0694 	100C
		LDR 	9DH, 0H, 1H 		//0696 	919D
		BNZ 	6A2H 			//0698 	2104
		LDWI 	65H 			//069A 	4E65
		SUBWR 	9CH, 0H, 1H 	//069C 	9D9C
		BTSS 	D8H, 0H, 0H 		//069E 	E0D8
		BRA 	6AEH 			//06A0 	1006

		//;setsysdata.c: 376: {;setsysdata.c: 377: i = 0;
		LDWI 	0H 			//06A2 	4E00
		STR 	9DH, 1H 			//06A4 	AF9D
		LDWI 	0H 			//06A6 	4E00
		STR 	9CH, 1H 			//06A8 	AF9C

		//;setsysdata.c: 378: Cmd_Send();
		LCALL 	24F4H, 0H 		//06AA 	2C7A 3012

		//;setsysdata.c: 379: };setsysdata.c: 382: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//06AE 	4E00
		MOVLB 	0H 			//06B0 	4100
		STR 	64H, 1H 			//06B2 	AF64

		//;setsysdata.c: 383: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
		LCALL 	4098H, 0H 		//06B4 	2C4C 3020
		LDR 	2EH, 0H, 0H 		//06B8 	902E
		MOVLB 	0H 			//06BA 	4100
		STR 	64H, 1H 			//06BC 	AF64

		//;setsysdata.c: 384: static int count = 2;;setsysdata.c: 385: static int j = 0;;setsysdat
		//+                          a.c: 386: j++;
		MOVLB 	1H 			//06BE 	4101
		INRSNZ 	9AH, 1H, 1H 	//06C0 	8B9A
		INCR 	9BH, 1H, 1H 		//06C2 	6B9B

		//;setsysdata.c: 387: if (j < 300)
		BTSC 	9BH, 7H, 1H 		//06C4 	FF9B
		RET 	0H 			//06C6 	4012
		LDWI 	2CH 			//06C8 	4E2C
		SUBWR 	9AH, 0H, 1H 	//06CA 	9D9A
		LDWI 	1H 			//06CC 	4E01
		SUBWRB 	9BH, 0H, 1H 	//06CE 	999B
		BTSS 	D8H, 0H, 0H 		//06D0 	E0D8
		RET 	0H 			//06D2 	4012

		//;setsysdata.c: 389: else;setsysdata.c: 390: j = 0;
		LDWI 	0H 			//06D4 	4E00
		STR 	9BH, 1H 			//06D6 	AF9B
		LDWI 	0H 			//06D8 	4E00
		STR 	9AH, 1H 			//06DA 	AF9A

		//;setsysdata.c: 391: if(Engineering_Pattern.IKey == 1)
		MOVLB 	0H 			//06DC 	4100
		DECR 	64H, 0H, 1H 		//06DE 	4564
		BTSS 	D8H, 2H, 0H 		//06E0 	E4D8
		BRA 	7BAH 			//06E2 	106B

		//;setsysdata.c: 392: {;setsysdata.c: 393: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//06E4 	0064 3010
		CLRR 	11H, 0H 		//06E8 	AA11
		LCALL 	5492H, 0H 		//06EA 	2C49 302A

		//;setsysdata.c: 394: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//06EE 	4E00
		MOVLB 	0H 			//06F0 	4100
		STR 	64H, 1H 			//06F2 	AF64

		//;setsysdata.c: 395: DelayMs(200);
		LDWI 	0H 			//06F4 	4E00
		STR 	CH, 0H 			//06F6 	AE0C
		LDWI 	C8H 			//06F8 	4EC8
		STR 	BH, 0H 			//06FA 	AE0B
		LCALL 	5B14H, 0H 		//06FC 	2C8A 302D

		//;setsysdata.c: 396: count ++;
		MOVLB 	0H 			//0700 	4100
		INRSNZ 	FDH, 1H, 1H 	//0702 	8BFD
		INCR 	FEH, 1H, 1H 		//0704 	6BFE

		//;setsysdata.c: 397: if(count == 3)
		LDWI 	3H 			//0706 	4E03
		XORWR 	FDH, 0H, 1H 	//0708 	59FD
		IORWR 	FEH, 0H, 1H 	//070A 	51FE
		BTSS 	D8H, 2H, 0H 		//070C 	E4D8
		BRA 	718H 			//070E 	1004

		//;setsysdata.c: 398: {;setsysdata.c: 399: count = 0;
		LDWI 	0H 			//0710 	4E00
		STR 	FEH, 1H 			//0712 	AFFE
		LDWI 	0H 			//0714 	4E00
		STR 	FDH, 1H 			//0716 	AFFD

		//;setsysdata.c: 400: };setsysdata.c: 401: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0718 	4E00
		STR 	61H, 1H 			//071A 	AF61
		BRA 	7BAH 			//071C 	104E

		//;setsysdata.c: 406: Display_Flow(5 * 10 * 0.2,1,0);
		LDWI 	0H 			//071E 	4E00
		STR 	17H, 0H 			//0720 	AE17
		LDWI 	AH 			//0722 	4E0A
		STR 	16H, 0H 			//0724 	AE16
		LDWI 	1H 			//0726 	4E01
		STR 	18H, 0H 			//0728 	AE18
		LDWI 	0H 			//072A 	4E00
		STR 	19H, 0H 			//072C 	AE19
		LCALL 	3CC4H, 0H 		//072E 	2C62 301E

		//;setsysdata.c: 407: RunData.FlowSet = 5 * 10 * 0.2;
		LDWI 	0H 			//0732 	4E00
		MOVLB 	1H 			//0734 	4101
		STR 	5H, 1H 			//0736 	AF05
		LDWI 	AH 			//0738 	4E0A
		STR 	4H, 1H 			//073A 	AF04

		//;setsysdata.c: 408: Adjust_Flow_20 = 1;
		LDWI 	0H 			//073C 	4E00
		STR 	A3H, 1H 			//073E 	AFA3
		LDWI 	1H 			//0740 	4E01
		STR 	A2H, 1H 			//0742 	AFA2

		//;setsysdata.c: 409: Adjust_Flow_50 = 0;
		LDWI 	0H 			//0744 	4E00
		STR 	A1H, 1H 			//0746 	AFA1
		LDWI 	0H 			//0748 	4E00
		STR 	A0H, 1H 			//074A 	AFA0

		//;setsysdata.c: 410: Adjust_Flow_100 = 0;
		LDWI 	0H 			//074C 	4E00
		STR 	9FH, 1H 			//074E 	AF9F
		LDWI 	0H 			//0750 	4E00
		BRA 	7B6H 			//0752 	1031

		//;setsysdata.c: 413: Display_Flow(5 * 10 * 0.5,1,0);
		LDWI 	0H 			//0754 	4E00
		STR 	17H, 0H 			//0756 	AE17
		LDWI 	19H 			//0758 	4E19
		STR 	16H, 0H 			//075A 	AE16
		LDWI 	1H 			//075C 	4E01
		STR 	18H, 0H 			//075E 	AE18
		LDWI 	0H 			//0760 	4E00
		STR 	19H, 0H 			//0762 	AE19
		LCALL 	3CC4H, 0H 		//0764 	2C62 301E

		//;setsysdata.c: 414: RunData.FlowSet = 5 * 10 * 0.5;
		LDWI 	0H 			//0768 	4E00
		MOVLB 	1H 			//076A 	4101
		STR 	5H, 1H 			//076C 	AF05
		LDWI 	19H 			//076E 	4E19
		STR 	4H, 1H 			//0770 	AF04

		//;setsysdata.c: 415: Adjust_Flow_20 = 0;
		LDWI 	0H 			//0772 	4E00
		STR 	A3H, 1H 			//0774 	AFA3
		LDWI 	0H 			//0776 	4E00
		STR 	A2H, 1H 			//0778 	AFA2

		//;setsysdata.c: 416: Adjust_Flow_50 = 1;
		LDWI 	0H 			//077A 	4E00
		STR 	A1H, 1H 			//077C 	AFA1
		LDWI 	1H 			//077E 	4E01
		BRA 	174AH 			//0780 	17E4

		//;setsysdata.c: 420: Display_Flow(5 * 10 * 1,1,0);
		LDWI 	0H 			//0782 	4E00
		STR 	17H, 0H 			//0784 	AE17
		LDWI 	32H 			//0786 	4E32
		STR 	16H, 0H 			//0788 	AE16
		LDWI 	1H 			//078A 	4E01
		STR 	18H, 0H 			//078C 	AE18
		LDWI 	0H 			//078E 	4E00
		STR 	19H, 0H 			//0790 	AE19
		LCALL 	3CC4H, 0H 		//0792 	2C62 301E

		//;setsysdata.c: 421: RunData.FlowSet = 5 * 10 * 1;
		LDWI 	0H 			//0796 	4E00
		MOVLB 	1H 			//0798 	4101
		STR 	5H, 1H 			//079A 	AF05
		LDWI 	32H 			//079C 	4E32
		STR 	4H, 1H 			//079E 	AF04

		//;setsysdata.c: 422: Adjust_Flow_20 = 0;
		LDWI 	0H 			//07A0 	4E00
		STR 	A3H, 1H 			//07A2 	AFA3
		LDWI 	0H 			//07A4 	4E00
		STR 	A2H, 1H 			//07A6 	AFA2

		//;setsysdata.c: 423: Adjust_Flow_50 = 0;
		LDWI 	0H 			//07A8 	4E00
		STR 	A1H, 1H 			//07AA 	AFA1
		LDWI 	0H 			//07AC 	4E00
		STR 	A0H, 1H 			//07AE 	AFA0

		//;setsysdata.c: 424: Adjust_Flow_100 = 1;
		LDWI 	0H 			//07B0 	4E00
		STR 	9FH, 1H 			//07B2 	AF9F
		LDWI 	1H 			//07B4 	4E01
		STR 	9EH, 1H 			//07B6 	AF9E

		//;setsysdata.c: 425: break;
		BRA 	7DEH 			//07B8 	1012
		MOVFF 	FDH, 46H 		//07BA 	00FD 3046
		MOVFF 	FEH, 47H 		//07BE 	00FE 3047
		LDR 	47H, 0H, 0H 		//07C2 	9047
		XORWI 	0H 			//07C4 	4A00
		BTSS 	D8H, 2H, 0H 		//07C6 	E4D8
		BRA 	7DEH 			//07C8 	100A
		LDR 	46H, 0H, 0H 		//07CA 	9046
		XORWI 	0H 			//07CC 	4A00
		BTSC 	D8H, 2H, 0H 		//07CE 	F4D8
		BRA 	171EH 			//07D0 	17A6
		XORWI 	1H 			//07D2 	4A01
		BTSC 	D8H, 2H, 0H 		//07D4 	F4D8
		BRA 	1754H 			//07D6 	17BE
		XORWI 	3H 			//07D8 	4A03
		BTSC 	D8H, 2H, 0H 		//07DA 	F4D8
		BRA 	1782H 			//07DC 	17D2

		//;setsysdata.c: 431: if(Adjust_Flow_20 == 1)
		MOVLB 	1H 			//07DE 	4101
		DECR 	A2H, 0H, 1H 		//07E0 	45A2
		IORWR 	A3H, 0H, 1H 	//07E2 	51A3
		BTSS 	D8H, 2H, 0H 		//07E4 	E4D8
		BRA 	928H 			//07E6 	10A0

		//;setsysdata.c: 432: {;setsysdata.c: 433: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//07E8 	4E03
		MOVLB 	0H 			//07EA 	4100
		XORWR 	64H, 0H, 1H 	//07EC 	5964
		BTSS 	D8H, 2H, 0H 		//07EE 	E4D8
		BRA 	82CH 			//07F0 	101D

		//;setsysdata.c: 434: {;setsysdata.c: 435: DelayMs(250);
		LDWI 	0H 			//07F2 	4E00
		STR 	CH, 0H 			//07F4 	AE0C
		LDWI 	FAH 			//07F6 	4EFA
		STR 	BH, 0H 			//07F8 	AE0B
		LCALL 	5B14H, 0H 		//07FA 	2C8A 302D

		//;setsysdata.c: 436: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//07FE 	0064 3010
		CLRR 	11H, 0H 		//0802 	AA11
		LCALL 	5492H, 0H 		//0804 	2C49 302A

		//;setsysdata.c: 437: RunData.Adjust_Flow_20_value++;
		MOVLB 	1H 			//0808 	4101
		INRSNZ 	4BH, 1H, 1H 	//080A 	8B4B
		INCR 	4CH, 1H, 1H 		//080C 	6B4C

		//;setsysdata.c: 438: if (RunData.Adjust_Flow_20_value >= 3)
		BTSC 	4CH, 7H, 1H 		//080E 	FF4C
		BRA 	826H 			//0810 	100A
		LDR 	4CH, 0H, 1H 		//0812 	914C
		BNZ 	81EH 			//0814 	2104
		LDWI 	3H 			//0816 	4E03
		SUBWR 	4BH, 0H, 1H 	//0818 	9D4B
		BTSS 	D8H, 0H, 0H 		//081A 	E0D8
		BRA 	826H 			//081C 	1004

		//;setsysdata.c: 439: RunData.Adjust_Flow_20_value = 3;
		LDWI 	0H 			//081E 	4E00
		STR 	4CH, 1H 			//0820 	AF4C
		LDWI 	3H 			//0822 	4E03
		STR 	4BH, 1H 			//0824 	AF4B

		//;setsysdata.c: 440: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0826 	4E00
		MOVLB 	0H 			//0828 	4100
		STR 	61H, 1H 			//082A 	AF61

		//;setsysdata.c: 441: };setsysdata.c: 442: if (Engineering_Pattern.IKey == 4)
		LDWI 	4H 			//082C 	4E04
		XORWR 	64H, 0H, 1H 	//082E 	5964
		BTSS 	D8H, 2H, 0H 		//0830 	E4D8
		BRA 	870H 			//0832 	101E

		//;setsysdata.c: 443: {;setsysdata.c: 444: DelayMs(250);
		LDWI 	0H 			//0834 	4E00
		STR 	CH, 0H 			//0836 	AE0C
		LDWI 	FAH 			//0838 	4EFA
		STR 	BH, 0H 			//083A 	AE0B
		LCALL 	5B14H, 0H 		//083C 	2C8A 302D

		//;setsysdata.c: 445: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//0840 	0064 3010
		CLRR 	11H, 0H 		//0844 	AA11
		LCALL 	5492H, 0H 		//0846 	2C49 302A

		//;setsysdata.c: 446: RunData.Adjust_Flow_20_value--;
		MOVLB 	1H 			//084A 	4101
		DECR 	4BH, 1H, 1H 		//084C 	474B
		BTSS 	D8H, 0H, 0H 		//084E 	E0D8
		DECR 	4CH, 1H, 1H 		//0850 	474C

		//;setsysdata.c: 447: if (RunData.Adjust_Flow_20_value <= -3)
		BTSS 	4CH, 7H, 1H 		//0852 	EF4C
		BRA 	86AH 			//0854 	100A
		LDWI 	FEH 			//0856 	4EFE
		SUBWR 	4BH, 0H, 1H 	//0858 	9D4B
		LDWI 	FFH 			//085A 	4EFF
		SUBWRB 	4CH, 0H, 1H 	//085C 	994C
		BTSC 	D8H, 0H, 0H 		//085E 	F0D8
		BRA 	86AH 			//0860 	1004

		//;setsysdata.c: 448: RunData.Adjust_Flow_20_value = -3;
		LDWI 	FFH 			//0862 	4EFF
		STR 	4CH, 1H 			//0864 	AF4C
		LDWI 	FDH 			//0866 	4EFD
		STR 	4BH, 1H 			//0868 	AF4B

		//;setsysdata.c: 449: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//086A 	4E00
		MOVLB 	0H 			//086C 	4100
		STR 	61H, 1H 			//086E 	AF61

		//;setsysdata.c: 450: };setsysdata.c: 452: if (RunData.Adjust_Flow_20_value > 0)
		MOVLB 	1H 			//0870 	4101
		BTSC 	4CH, 7H, 1H 		//0872 	FF4C
		BRA 	8A0H 			//0874 	1015
		LDR 	4CH, 0H, 1H 		//0876 	914C
		BNZ 	880H 			//0878 	2103
		DECR 	4BH, 0H, 1H 		//087A 	454B
		BTSS 	D8H, 0H, 0H 		//087C 	E0D8
		BRA 	8A0H 			//087E 	1010

		//;setsysdata.c: 453: {;setsysdata.c: 454: Engineering_Flow_Compensation_display1(1);
		LDWI 	1H 			//0880 	4E01
		LCALL 	561AH, 0H 		//0882 	2C0D 302B

		//;setsysdata.c: 455: SEG3(ch_table[RunData.Adjust_Flow_20_value], 0);
		LDWI 	0H 			//0886 	4E00
		STR 	20H, 0H 			//0888 	AE20
		LDWI 	2BH 			//088A 	4E2B
		MOVLB 	1H 			//088C 	4101
		ADDWR 	4BH, 0H, 1H 	//088E 	654B
		STR 	F6H, 0H 			//0890 	AEF6
		LDWI 	7FH 			//0892 	4E7F
		ADDWRC 	4CH, 0H, 1H 	//0894 	614C
		STR 	F7H, 0H 			//0896 	AEF7
		TBLRD*  			//0898 	4008
		LDR 	F5H, 0H, 0H 		//089A 	90F5
		LCALL 	52F2H, 0H 		//089C 	2C79 3029

		//;setsysdata.c: 456: };setsysdata.c: 457: if (RunData.Adjust_Flow_20_value < 0)
		MOVLB 	1H 			//08A0 	4101
		BTSS 	4CH, 7H, 1H 		//08A2 	EF4C
		BRA 	8D2H 			//08A4 	1016

		//;setsysdata.c: 458: {;setsysdata.c: 459: Engineering_Flow_Compensation_display1(0);
		LDWI 	0H 			//08A6 	4E00
		LCALL 	561AH, 0H 		//08A8 	2C0D 302B

		//;setsysdata.c: 460: SEG3(ch_table[-RunData.Adjust_Flow_20_value], 0);
		LDWI 	0H 			//08AC 	4E00
		STR 	20H, 0H 			//08AE 	AE20
		LDWI 	2BH 			//08B0 	4E2B
		STR 	46H, 0H 			//08B2 	AE46
		LDWI 	7FH 			//08B4 	4E7F
		STR 	47H, 0H 			//08B6 	AE47
		MOVLB 	1H 			//08B8 	4101
		LDR 	4BH, 0H, 1H 		//08BA 	914B
		SUBWR 	46H, 1H, 0H 	//08BC 	9E46
		LDR 	4CH, 0H, 1H 		//08BE 	914C
		SUBWRB 	47H, 1H, 0H 	//08C0 	9A47
		MOVFF 	46H, FF6H 		//08C2 	0046 3FF6
		MOVFF 	47H, FF7H 		//08C6 	0047 3FF7
		TBLRD*  			//08CA 	4008
		LDR 	F5H, 0H, 0H 		//08CC 	90F5
		LCALL 	52F2H, 0H 		//08CE 	2C79 3029

		//;setsysdata.c: 461: };setsysdata.c: 462: if (RunData.Adjust_Flow_20_value == 0)
		MOVLB 	1H 			//08D2 	4101
		LDR 	4BH, 0H, 1H 		//08D4 	914B
		IORWR 	4CH, 0H, 1H 	//08D6 	514C
		BTSS 	D8H, 2H, 0H 		//08D8 	E4D8
		BRA 	928H 			//08DA 	1026

		//;setsysdata.c: 463: {;setsysdata.c: 464: SEG1(ch_table[RunData.Adjust_Flow_20_value], 0)
		//+                          ;
		LDWI 	0H 			//08DC 	4E00
		STR 	20H, 0H 			//08DE 	AE20
		LDWI 	2BH 			//08E0 	4E2B
		ADDWR 	4BH, 0H, 1H 	//08E2 	654B
		STR 	F6H, 0H 			//08E4 	AEF6
		LDWI 	7FH 			//08E6 	4E7F
		ADDWRC 	4CH, 0H, 1H 	//08E8 	614C
		STR 	F7H, 0H 			//08EA 	AEF7
		TBLRD*  			//08EC 	4008
		LDR 	F5H, 0H, 0H 		//08EE 	90F5
		LCALL 	539AH, 0H 		//08F0 	2CCD 3029

		//;setsysdata.c: 465: SEG2(ch_table[RunData.Adjust_Flow_20_value], 0);
		LDWI 	0H 			//08F4 	4E00
		STR 	20H, 0H 			//08F6 	AE20
		LDWI 	2BH 			//08F8 	4E2B
		MOVLB 	1H 			//08FA 	4101
		ADDWR 	4BH, 0H, 1H 	//08FC 	654B
		STR 	F6H, 0H 			//08FE 	AEF6
		LDWI 	7FH 			//0900 	4E7F
		ADDWRC 	4CH, 0H, 1H 	//0902 	614C
		STR 	F7H, 0H 			//0904 	AEF7
		TBLRD*  			//0906 	4008
		LDR 	F5H, 0H, 0H 		//0908 	90F5
		LCALL 	5346H, 0H 		//090A 	2CA3 3029

		//;setsysdata.c: 466: SEG3(ch_table[RunData.Adjust_Flow_20_value], 0);
		LDWI 	0H 			//090E 	4E00
		STR 	20H, 0H 			//0910 	AE20
		LDWI 	2BH 			//0912 	4E2B
		MOVLB 	1H 			//0914 	4101
		ADDWR 	4BH, 0H, 1H 	//0916 	654B
		STR 	F6H, 0H 			//0918 	AEF6
		LDWI 	7FH 			//091A 	4E7F
		ADDWRC 	4CH, 0H, 1H 	//091C 	614C
		STR 	F7H, 0H 			//091E 	AEF7
		TBLRD*  			//0920 	4008
		LDR 	F5H, 0H, 0H 		//0922 	90F5
		LCALL 	52F2H, 0H 		//0924 	2C79 3029

		//;setsysdata.c: 467: };setsysdata.c: 468: };setsysdata.c: 470: if(Adjust_Flow_50 == 1)
		MOVLB 	1H 			//0928 	4101
		DECR 	A0H, 0H, 1H 		//092A 	45A0
		IORWR 	A1H, 0H, 1H 	//092C 	51A1
		BTSS 	D8H, 2H, 0H 		//092E 	E4D8
		BRA 	A72H 			//0930 	10A0

		//;setsysdata.c: 471: {;setsysdata.c: 472: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//0932 	4E03
		MOVLB 	0H 			//0934 	4100
		XORWR 	64H, 0H, 1H 	//0936 	5964
		BTSS 	D8H, 2H, 0H 		//0938 	E4D8
		BRA 	976H 			//093A 	101D

		//;setsysdata.c: 473: {;setsysdata.c: 474: DelayMs(200);
		LDWI 	0H 			//093C 	4E00
		STR 	CH, 0H 			//093E 	AE0C
		LDWI 	C8H 			//0940 	4EC8
		STR 	BH, 0H 			//0942 	AE0B
		LCALL 	5B14H, 0H 		//0944 	2C8A 302D

		//;setsysdata.c: 475: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//0948 	0064 3010
		CLRR 	11H, 0H 		//094C 	AA11
		LCALL 	5492H, 0H 		//094E 	2C49 302A

		//;setsysdata.c: 476: RunData.Adjust_Flow_50_value++;
		MOVLB 	1H 			//0952 	4101
		INRSNZ 	4DH, 1H, 1H 	//0954 	8B4D
		INCR 	4EH, 1H, 1H 		//0956 	6B4E

		//;setsysdata.c: 477: if (RunData.Adjust_Flow_50_value >= 3)
		BTSC 	4EH, 7H, 1H 		//0958 	FF4E
		BRA 	970H 			//095A 	100A
		LDR 	4EH, 0H, 1H 		//095C 	914E
		BNZ 	968H 			//095E 	2104
		LDWI 	3H 			//0960 	4E03
		SUBWR 	4DH, 0H, 1H 	//0962 	9D4D
		BTSS 	D8H, 0H, 0H 		//0964 	E0D8
		BRA 	970H 			//0966 	1004

		//;setsysdata.c: 478: RunData.Adjust_Flow_50_value = 3;
		LDWI 	0H 			//0968 	4E00
		STR 	4EH, 1H 			//096A 	AF4E
		LDWI 	3H 			//096C 	4E03
		STR 	4DH, 1H 			//096E 	AF4D

		//;setsysdata.c: 479: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0970 	4E00
		MOVLB 	0H 			//0972 	4100
		STR 	61H, 1H 			//0974 	AF61

		//;setsysdata.c: 480: };setsysdata.c: 481: if (Engineering_Pattern.IKey == 4)
		LDWI 	4H 			//0976 	4E04
		XORWR 	64H, 0H, 1H 	//0978 	5964
		BTSS 	D8H, 2H, 0H 		//097A 	E4D8
		BRA 	9BAH 			//097C 	101E

		//;setsysdata.c: 482: {;setsysdata.c: 483: DelayMs(200);
		LDWI 	0H 			//097E 	4E00
		STR 	CH, 0H 			//0980 	AE0C
		LDWI 	C8H 			//0982 	4EC8
		STR 	BH, 0H 			//0984 	AE0B
		LCALL 	5B14H, 0H 		//0986 	2C8A 302D

		//;setsysdata.c: 484: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//098A 	0064 3010
		CLRR 	11H, 0H 		//098E 	AA11
		LCALL 	5492H, 0H 		//0990 	2C49 302A

		//;setsysdata.c: 485: RunData.Adjust_Flow_50_value--;
		MOVLB 	1H 			//0994 	4101
		DECR 	4DH, 1H, 1H 		//0996 	474D
		BTSS 	D8H, 0H, 0H 		//0998 	E0D8
		DECR 	4EH, 1H, 1H 		//099A 	474E

		//;setsysdata.c: 486: if (RunData.Adjust_Flow_50_value <= -3)
		BTSS 	4EH, 7H, 1H 		//099C 	EF4E
		BRA 	9B4H 			//099E 	100A
		LDWI 	FEH 			//09A0 	4EFE
		SUBWR 	4DH, 0H, 1H 	//09A2 	9D4D
		LDWI 	FFH 			//09A4 	4EFF
		SUBWRB 	4EH, 0H, 1H 	//09A6 	994E
		BTSC 	D8H, 0H, 0H 		//09A8 	F0D8
		BRA 	9B4H 			//09AA 	1004

		//;setsysdata.c: 487: RunData.Adjust_Flow_50_value = -3;
		LDWI 	FFH 			//09AC 	4EFF
		STR 	4EH, 1H 			//09AE 	AF4E
		LDWI 	FDH 			//09B0 	4EFD
		STR 	4DH, 1H 			//09B2 	AF4D

		//;setsysdata.c: 488: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//09B4 	4E00
		MOVLB 	0H 			//09B6 	4100
		STR 	61H, 1H 			//09B8 	AF61

		//;setsysdata.c: 489: };setsysdata.c: 491: if (RunData.Adjust_Flow_50_value > 0)
		MOVLB 	1H 			//09BA 	4101
		BTSC 	4EH, 7H, 1H 		//09BC 	FF4E
		BRA 	9EAH 			//09BE 	1015
		LDR 	4EH, 0H, 1H 		//09C0 	914E
		BNZ 	9CAH 			//09C2 	2103
		DECR 	4DH, 0H, 1H 		//09C4 	454D
		BTSS 	D8H, 0H, 0H 		//09C6 	E0D8
		BRA 	9EAH 			//09C8 	1010

		//;setsysdata.c: 492: {;setsysdata.c: 493: Engineering_Flow_Compensation_display1(1);
		LDWI 	1H 			//09CA 	4E01
		LCALL 	561AH, 0H 		//09CC 	2C0D 302B

		//;setsysdata.c: 494: SEG3(ch_table[RunData.Adjust_Flow_50_value], 0);
		LDWI 	0H 			//09D0 	4E00
		STR 	20H, 0H 			//09D2 	AE20
		LDWI 	2BH 			//09D4 	4E2B
		MOVLB 	1H 			//09D6 	4101
		ADDWR 	4DH, 0H, 1H 	//09D8 	654D
		STR 	F6H, 0H 			//09DA 	AEF6
		LDWI 	7FH 			//09DC 	4E7F
		ADDWRC 	4EH, 0H, 1H 	//09DE 	614E
		STR 	F7H, 0H 			//09E0 	AEF7
		TBLRD*  			//09E2 	4008
		LDR 	F5H, 0H, 0H 		//09E4 	90F5
		LCALL 	52F2H, 0H 		//09E6 	2C79 3029

		//;setsysdata.c: 495: };setsysdata.c: 496: if (RunData.Adjust_Flow_50_value < 0)
		MOVLB 	1H 			//09EA 	4101
		BTSS 	4EH, 7H, 1H 		//09EC 	EF4E
		BRA 	A1CH 			//09EE 	1016

		//;setsysdata.c: 497: {;setsysdata.c: 498: Engineering_Flow_Compensation_display1(0);
		LDWI 	0H 			//09F0 	4E00
		LCALL 	561AH, 0H 		//09F2 	2C0D 302B

		//;setsysdata.c: 499: SEG3(ch_table[-RunData.Adjust_Flow_50_value], 0);
		LDWI 	0H 			//09F6 	4E00
		STR 	20H, 0H 			//09F8 	AE20
		LDWI 	2BH 			//09FA 	4E2B
		STR 	46H, 0H 			//09FC 	AE46
		LDWI 	7FH 			//09FE 	4E7F
		STR 	47H, 0H 			//0A00 	AE47
		MOVLB 	1H 			//0A02 	4101
		LDR 	4DH, 0H, 1H 		//0A04 	914D
		SUBWR 	46H, 1H, 0H 	//0A06 	9E46
		LDR 	4EH, 0H, 1H 		//0A08 	914E
		SUBWRB 	47H, 1H, 0H 	//0A0A 	9A47
		MOVFF 	46H, FF6H 		//0A0C 	0046 3FF6
		MOVFF 	47H, FF7H 		//0A10 	0047 3FF7
		TBLRD*  			//0A14 	4008
		LDR 	F5H, 0H, 0H 		//0A16 	90F5
		LCALL 	52F2H, 0H 		//0A18 	2C79 3029

		//;setsysdata.c: 500: };setsysdata.c: 501: if (RunData.Adjust_Flow_50_value == 0)
		MOVLB 	1H 			//0A1C 	4101
		LDR 	4DH, 0H, 1H 		//0A1E 	914D
		IORWR 	4EH, 0H, 1H 	//0A20 	514E
		BTSS 	D8H, 2H, 0H 		//0A22 	E4D8
		BRA 	A72H 			//0A24 	1026

		//;setsysdata.c: 502: {;setsysdata.c: 503: SEG1(ch_table[RunData.Adjust_Flow_50_value], 0)
		//+                          ;
		LDWI 	0H 			//0A26 	4E00
		STR 	20H, 0H 			//0A28 	AE20
		LDWI 	2BH 			//0A2A 	4E2B
		ADDWR 	4DH, 0H, 1H 	//0A2C 	654D
		STR 	F6H, 0H 			//0A2E 	AEF6
		LDWI 	7FH 			//0A30 	4E7F
		ADDWRC 	4EH, 0H, 1H 	//0A32 	614E
		STR 	F7H, 0H 			//0A34 	AEF7
		TBLRD*  			//0A36 	4008
		LDR 	F5H, 0H, 0H 		//0A38 	90F5
		LCALL 	539AH, 0H 		//0A3A 	2CCD 3029

		//;setsysdata.c: 504: SEG2(ch_table[RunData.Adjust_Flow_50_value], 0);
		LDWI 	0H 			//0A3E 	4E00
		STR 	20H, 0H 			//0A40 	AE20
		LDWI 	2BH 			//0A42 	4E2B
		MOVLB 	1H 			//0A44 	4101
		ADDWR 	4DH, 0H, 1H 	//0A46 	654D
		STR 	F6H, 0H 			//0A48 	AEF6
		LDWI 	7FH 			//0A4A 	4E7F
		ADDWRC 	4EH, 0H, 1H 	//0A4C 	614E
		STR 	F7H, 0H 			//0A4E 	AEF7
		TBLRD*  			//0A50 	4008
		LDR 	F5H, 0H, 0H 		//0A52 	90F5
		LCALL 	5346H, 0H 		//0A54 	2CA3 3029

		//;setsysdata.c: 505: SEG3(ch_table[RunData.Adjust_Flow_50_value], 0);
		LDWI 	0H 			//0A58 	4E00
		STR 	20H, 0H 			//0A5A 	AE20
		LDWI 	2BH 			//0A5C 	4E2B
		MOVLB 	1H 			//0A5E 	4101
		ADDWR 	4DH, 0H, 1H 	//0A60 	654D
		STR 	F6H, 0H 			//0A62 	AEF6
		LDWI 	7FH 			//0A64 	4E7F
		ADDWRC 	4EH, 0H, 1H 	//0A66 	614E
		STR 	F7H, 0H 			//0A68 	AEF7
		TBLRD*  			//0A6A 	4008
		LDR 	F5H, 0H, 0H 		//0A6C 	90F5
		LCALL 	52F2H, 0H 		//0A6E 	2C79 3029

		//;setsysdata.c: 506: };setsysdata.c: 507: };setsysdata.c: 509: if(Adjust_Flow_100 == 1)
		MOVLB 	1H 			//0A72 	4101
		DECR 	9EH, 0H, 1H 		//0A74 	459E
		IORWR 	9FH, 0H, 1H 	//0A76 	519F
		BTSS 	D8H, 2H, 0H 		//0A78 	E4D8
		BRA 	BBCH 			//0A7A 	10A0

		//;setsysdata.c: 510: {;setsysdata.c: 511: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//0A7C 	4E03
		MOVLB 	0H 			//0A7E 	4100
		XORWR 	64H, 0H, 1H 	//0A80 	5964
		BTSS 	D8H, 2H, 0H 		//0A82 	E4D8
		BRA 	AC0H 			//0A84 	101D

		//;setsysdata.c: 512: {;setsysdata.c: 513: DelayMs(200);
		LDWI 	0H 			//0A86 	4E00
		STR 	CH, 0H 			//0A88 	AE0C
		LDWI 	C8H 			//0A8A 	4EC8
		STR 	BH, 0H 			//0A8C 	AE0B
		LCALL 	5B14H, 0H 		//0A8E 	2C8A 302D

		//;setsysdata.c: 514: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//0A92 	0064 3010
		CLRR 	11H, 0H 		//0A96 	AA11
		LCALL 	5492H, 0H 		//0A98 	2C49 302A

		//;setsysdata.c: 515: RunData.Adjust_Flow_100_value++;
		MOVLB 	1H 			//0A9C 	4101
		INRSNZ 	4FH, 1H, 1H 	//0A9E 	8B4F
		INCR 	50H, 1H, 1H 		//0AA0 	6B50

		//;setsysdata.c: 516: if (RunData.Adjust_Flow_100_value >= 3)
		BTSC 	50H, 7H, 1H 		//0AA2 	FF50
		BRA 	ABAH 			//0AA4 	100A
		LDR 	50H, 0H, 1H 		//0AA6 	9150
		BNZ 	AB2H 			//0AA8 	2104
		LDWI 	3H 			//0AAA 	4E03
		SUBWR 	4FH, 0H, 1H 	//0AAC 	9D4F
		BTSS 	D8H, 0H, 0H 		//0AAE 	E0D8
		BRA 	ABAH 			//0AB0 	1004

		//;setsysdata.c: 517: RunData.Adjust_Flow_100_value = 3;
		LDWI 	0H 			//0AB2 	4E00
		STR 	50H, 1H 			//0AB4 	AF50
		LDWI 	3H 			//0AB6 	4E03
		STR 	4FH, 1H 			//0AB8 	AF4F

		//;setsysdata.c: 518: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0ABA 	4E00
		MOVLB 	0H 			//0ABC 	4100
		STR 	61H, 1H 			//0ABE 	AF61

		//;setsysdata.c: 519: };setsysdata.c: 520: if (Engineering_Pattern.IKey == 4)
		LDWI 	4H 			//0AC0 	4E04
		XORWR 	64H, 0H, 1H 	//0AC2 	5964
		BTSS 	D8H, 2H, 0H 		//0AC4 	E4D8
		BRA 	B04H 			//0AC6 	101E

		//;setsysdata.c: 521: {;setsysdata.c: 522: DelayMs(200);
		LDWI 	0H 			//0AC8 	4E00
		STR 	CH, 0H 			//0ACA 	AE0C
		LDWI 	C8H 			//0ACC 	4EC8
		STR 	BH, 0H 			//0ACE 	AE0B
		LCALL 	5B14H, 0H 		//0AD0 	2C8A 302D

		//;setsysdata.c: 523: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//0AD4 	0064 3010
		CLRR 	11H, 0H 		//0AD8 	AA11
		LCALL 	5492H, 0H 		//0ADA 	2C49 302A

		//;setsysdata.c: 524: RunData.Adjust_Flow_100_value--;
		MOVLB 	1H 			//0ADE 	4101
		DECR 	4FH, 1H, 1H 		//0AE0 	474F
		BTSS 	D8H, 0H, 0H 		//0AE2 	E0D8
		DECR 	50H, 1H, 1H 		//0AE4 	4750

		//;setsysdata.c: 525: if (RunData.Adjust_Flow_100_value <= -3)
		BTSS 	50H, 7H, 1H 		//0AE6 	EF50
		BRA 	AFEH 			//0AE8 	100A
		LDWI 	FEH 			//0AEA 	4EFE
		SUBWR 	4FH, 0H, 1H 	//0AEC 	9D4F
		LDWI 	FFH 			//0AEE 	4EFF
		SUBWRB 	50H, 0H, 1H 	//0AF0 	9950
		BTSC 	D8H, 0H, 0H 		//0AF2 	F0D8
		BRA 	AFEH 			//0AF4 	1004

		//;setsysdata.c: 526: RunData.Adjust_Flow_100_value = -3;
		LDWI 	FFH 			//0AF6 	4EFF
		STR 	50H, 1H 			//0AF8 	AF50
		LDWI 	FDH 			//0AFA 	4EFD
		STR 	4FH, 1H 			//0AFC 	AF4F

		//;setsysdata.c: 527: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0AFE 	4E00
		MOVLB 	0H 			//0B00 	4100
		STR 	61H, 1H 			//0B02 	AF61

		//;setsysdata.c: 528: };setsysdata.c: 530: if (RunData.Adjust_Flow_100_value > 0)
		MOVLB 	1H 			//0B04 	4101
		BTSC 	50H, 7H, 1H 		//0B06 	FF50
		BRA 	B34H 			//0B08 	1015
		LDR 	50H, 0H, 1H 		//0B0A 	9150
		BNZ 	B14H 			//0B0C 	2103
		DECR 	4FH, 0H, 1H 		//0B0E 	454F
		BTSS 	D8H, 0H, 0H 		//0B10 	E0D8
		BRA 	B34H 			//0B12 	1010

		//;setsysdata.c: 531: {;setsysdata.c: 532: Engineering_Flow_Compensation_display1(1);
		LDWI 	1H 			//0B14 	4E01
		LCALL 	561AH, 0H 		//0B16 	2C0D 302B

		//;setsysdata.c: 533: SEG3(ch_table[RunData.Adjust_Flow_100_value], 0);
		LDWI 	0H 			//0B1A 	4E00
		STR 	20H, 0H 			//0B1C 	AE20
		LDWI 	2BH 			//0B1E 	4E2B
		MOVLB 	1H 			//0B20 	4101
		ADDWR 	4FH, 0H, 1H 	//0B22 	654F
		STR 	F6H, 0H 			//0B24 	AEF6
		LDWI 	7FH 			//0B26 	4E7F
		ADDWRC 	50H, 0H, 1H 	//0B28 	6150
		STR 	F7H, 0H 			//0B2A 	AEF7
		TBLRD*  			//0B2C 	4008
		LDR 	F5H, 0H, 0H 		//0B2E 	90F5
		LCALL 	52F2H, 0H 		//0B30 	2C79 3029

		//;setsysdata.c: 534: };setsysdata.c: 535: if (RunData.Adjust_Flow_100_value < 0)
		MOVLB 	1H 			//0B34 	4101
		BTSS 	50H, 7H, 1H 		//0B36 	EF50
		BRA 	B66H 			//0B38 	1016

		//;setsysdata.c: 536: {;setsysdata.c: 537: Engineering_Flow_Compensation_display1(0);
		LDWI 	0H 			//0B3A 	4E00
		LCALL 	561AH, 0H 		//0B3C 	2C0D 302B

		//;setsysdata.c: 538: SEG3(ch_table[-RunData.Adjust_Flow_100_value], 0);
		LDWI 	0H 			//0B40 	4E00
		STR 	20H, 0H 			//0B42 	AE20
		LDWI 	2BH 			//0B44 	4E2B
		STR 	46H, 0H 			//0B46 	AE46
		LDWI 	7FH 			//0B48 	4E7F
		STR 	47H, 0H 			//0B4A 	AE47
		MOVLB 	1H 			//0B4C 	4101
		LDR 	4FH, 0H, 1H 		//0B4E 	914F
		SUBWR 	46H, 1H, 0H 	//0B50 	9E46
		LDR 	50H, 0H, 1H 		//0B52 	9150
		SUBWRB 	47H, 1H, 0H 	//0B54 	9A47
		MOVFF 	46H, FF6H 		//0B56 	0046 3FF6
		MOVFF 	47H, FF7H 		//0B5A 	0047 3FF7
		TBLRD*  			//0B5E 	4008
		LDR 	F5H, 0H, 0H 		//0B60 	90F5
		LCALL 	52F2H, 0H 		//0B62 	2C79 3029

		//;setsysdata.c: 539: };setsysdata.c: 540: if (RunData.Adjust_Flow_100_value == 0)
		MOVLB 	1H 			//0B66 	4101
		LDR 	4FH, 0H, 1H 		//0B68 	914F
		IORWR 	50H, 0H, 1H 	//0B6A 	5150
		BTSS 	D8H, 2H, 0H 		//0B6C 	E4D8
		BRA 	BBCH 			//0B6E 	1026

		//;setsysdata.c: 541: {;setsysdata.c: 542: SEG1(ch_table[RunData.Adjust_Flow_100_value], 0
		//+                          );
		LDWI 	0H 			//0B70 	4E00
		STR 	20H, 0H 			//0B72 	AE20
		LDWI 	2BH 			//0B74 	4E2B
		ADDWR 	4FH, 0H, 1H 	//0B76 	654F
		STR 	F6H, 0H 			//0B78 	AEF6
		LDWI 	7FH 			//0B7A 	4E7F
		ADDWRC 	50H, 0H, 1H 	//0B7C 	6150
		STR 	F7H, 0H 			//0B7E 	AEF7
		TBLRD*  			//0B80 	4008
		LDR 	F5H, 0H, 0H 		//0B82 	90F5
		LCALL 	539AH, 0H 		//0B84 	2CCD 3029

		//;setsysdata.c: 544: SEG2(ch_table[RunData.Adjust_Flow_100_value], 0);
		LDWI 	0H 			//0B88 	4E00
		STR 	20H, 0H 			//0B8A 	AE20
		LDWI 	2BH 			//0B8C 	4E2B
		MOVLB 	1H 			//0B8E 	4101
		ADDWR 	4FH, 0H, 1H 	//0B90 	654F
		STR 	F6H, 0H 			//0B92 	AEF6
		LDWI 	7FH 			//0B94 	4E7F
		ADDWRC 	50H, 0H, 1H 	//0B96 	6150
		STR 	F7H, 0H 			//0B98 	AEF7
		TBLRD*  			//0B9A 	4008
		LDR 	F5H, 0H, 0H 		//0B9C 	90F5
		LCALL 	5346H, 0H 		//0B9E 	2CA3 3029

		//;setsysdata.c: 545: SEG3(ch_table[RunData.Adjust_Flow_100_value], 0);
		LDWI 	0H 			//0BA2 	4E00
		STR 	20H, 0H 			//0BA4 	AE20
		LDWI 	2BH 			//0BA6 	4E2B
		MOVLB 	1H 			//0BA8 	4101
		ADDWR 	4FH, 0H, 1H 	//0BAA 	654F
		STR 	F6H, 0H 			//0BAC 	AEF6
		LDWI 	7FH 			//0BAE 	4E7F
		ADDWRC 	50H, 0H, 1H 	//0BB0 	6150
		STR 	F7H, 0H 			//0BB2 	AEF7
		TBLRD*  			//0BB4 	4008
		LDR 	F5H, 0H, 0H 		//0BB6 	90F5
		LCALL 	52F2H, 0H 		//0BB8 	2C79 3029

		//;setsysdata.c: 546: };setsysdata.c: 547: };setsysdata.c: 549: Engineering_Timeout_Logic(
		//+                          currentMode);
		MOVLB 	0H 			//0BBC 	4100
		LDR 	ACH, 0H, 1H 		//0BBE 	91AC
		LCALL 	55CCH, 0H 		//0BC0 	2CE6 302A

		//;setsysdata.c: 550: if (Engineering_Pattern.Return_Flag == 1)
		MOVLB 	0H 			//0BC4 	4100
		DECR 	65H, 0H, 1H 		//0BC6 	4565
		BTSS 	D8H, 2H, 0H 		//0BC8 	E4D8
		RET 	0H 			//0BCA 	4012

		//;setsysdata.c: 551: {;setsysdata.c: 552: Engineering_Pattern.Led_Display_Flow = 0;
		LDWI 	0H 			//0BCC 	4E00
		STR 	6AH, 1H 			//0BCE 	AF6A

		//;setsysdata.c: 554: Engineering_Pattern.Time_Start_Flag = 0;
		LDWI 	0H 			//0BD0 	4E00
		STR 	60H, 1H 			//0BD2 	AF60

		//;setsysdata.c: 555: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//0BD4 	4E00
		STR 	61H, 1H 			//0BD6 	AF61

		//;setsysdata.c: 556: Engineering_Pattern.Return_Flag = 0;
		LDWI 	0H 			//0BD8 	4E00
		STR 	65H, 1H 			//0BDA 	AF65

		//;setsysdata.c: 557: E2prom_WriteData();
		LCALL 	3936H, 0H 		//0BDC 	2C9B 301C

		//;setsysdata.c: 558: Engineering_Pattern.Led_Display_Timing_Enbale = 0;
		LDWI 	0H 			//0BE0 	4E00
		MOVLB 	0H 			//0BE2 	4100
		STR 	67H, 1H 			//0BE4 	AF67

		//;setsysdata.c: 559: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
		LDWI 	0H 			//0BE6 	4E00
		STR 	68H, 1H 			//0BE8 	AF68

		//;setsysdata.c: 560: currentMode = ENGINEERING_MODE_IDLE;
		LDWI 	0H 			//0BEA 	4E00
		STR 	ACH, 1H 			//0BEC 	AFAC

		//;setsysdata.c: 561: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//0BEE 	4E00
		STR 	66H, 1H 			//0BF0 	AF66
		RET 	0H 			//0BF2 	4012

		//;control.c: 494: static u16 count = 10;;control.c: 495: static u16 count2 = 0;;control.c
		//+                          : 497: if (count >= 1)
		LDR 	FEH, 0H, 1H 		//0BF4 	91FE
		IORWR 	FFH, 0H, 1H 	//0BF6 	51FF
		BTSC 	D8H, 2H, 0H 		//0BF8 	F4D8
		BRA 	F3AH 			//0BFA 	119F

		//;control.c: 498: {;control.c: 499: count = 0;
		LDWI 	0H 			//0BFC 	4E00
		STR 	FFH, 1H 			//0BFE 	AFFF
		LDWI 	0H 			//0C00 	4E00
		STR 	FEH, 1H 			//0C02 	AFFE

		//;control.c: 500: if (RunData.StandbySta == 0)
		LDR 	2DH, 0H, 1H 		//0C04 	912D
		BTSS 	D8H, 2H, 0H 		//0C06 	E4D8
		BRA 	E7CH 			//0C08 	1139

		//;control.c: 501: {;control.c: 502: if (RunData.AOD_TimeCount >= 60 && RunData.Error_Flag
		//+                           != 1 && Engineering_Pattern.Mode != 1)
		LDR 	32H, 0H, 1H 		//0C0A 	9132
		BNZ 	C16H 			//0C0C 	2104
		LDWI 	3CH 			//0C0E 	4E3C
		SUBWR 	31H, 0H, 1H 	//0C10 	9D31
		BTSS 	D8H, 0H, 0H 		//0C12 	E0D8
		BRA 	C36H 			//0C14 	1010
		DECR 	45H, 0H, 1H 		//0C16 	4545
		BTSC 	D8H, 2H, 0H 		//0C18 	F4D8
		BRA 	C36H 			//0C1A 	100D
		MOVLB 	0H 			//0C1C 	4100
		DECR 	66H, 0H, 1H 		//0C1E 	4566
		BTSC 	D8H, 2H, 0H 		//0C20 	F4D8
		BRA 	C36H 			//0C22 	1009

		//;control.c: 503: {;control.c: 504: TM1629_Luminance(1);
		LDWI 	1H 			//0C24 	4E01
		LCALL 	47C4H, 0H 		//0C26 	2CE2 3023

		//;control.c: 505: RunData.AOD_TimeCount = 60;
		LDWI 	0H 			//0C2A 	4E00
		MOVLB 	1H 			//0C2C 	4101
		STR 	32H, 1H 			//0C2E 	AF32
		LDWI 	3CH 			//0C30 	4E3C
		STR 	31H, 1H 			//0C32 	AF31

		//;control.c: 506: }
		BRA 	C54H 			//0C34 	100F

		//;control.c: 507: else;control.c: 508: {;control.c: 509: if(RunData.Error_Flag == 1)
		MOVLB 	1H 			//0C36 	4101
		DECR 	45H, 0H, 1H 		//0C38 	4545
		BTSS 	D8H, 2H, 0H 		//0C3A 	E4D8
		BRA 	C4EH 			//0C3C 	1008

		//;control.c: 510: {;control.c: 511: if(RunData.Error_Delay_Time == 3)
		LDWI 	3H 			//0C3E 	4E03
		XORWR 	46H, 0H, 1H 	//0C40 	5946
		BTSS 	D8H, 2H, 0H 		//0C42 	E4D8
		BRA 	C54H 			//0C44 	1007

		//;control.c: 512: {;control.c: 513: TM1629_Luminance(8);
		LDWI 	8H 			//0C46 	4E08
		LCALL 	47C4H, 0H 		//0C48 	2CE2 3023
		BRA 	C54H 			//0C4C 	1003

		//;control.c: 516: else TM1629_Luminance(8);
		LDWI 	8H 			//0C4E 	4E08
		LCALL 	47C4H, 0H 		//0C50 	2CE2 3023

		//;control.c: 517: };control.c: 519: if (EncoderData.Time < 100 || KeyDat.key_val_x == 0x0
		//+                          4 || KeyDat.key_val_x == 0x05)
		MOVLB 	1H 			//0C54 	4101
		BTSC 	7DH, 7H, 1H 		//0C56 	FF7D
		BRA 	C7CH 			//0C58 	1011
		LDR 	7DH, 0H, 1H 		//0C5A 	917D
		BNZ 	C66H 			//0C5C 	2104
		LDWI 	64H 			//0C5E 	4E64
		SUBWR 	7CH, 0H, 1H 	//0C60 	9D7C
		BTSS 	D8H, 0H, 0H 		//0C62 	E0D8
		BRA 	C7CH 			//0C64 	100B
		LDWI 	4H 			//0C66 	4E04
		MOVLB 	0H 			//0C68 	4100
		XORWR 	73H, 0H, 1H 	//0C6A 	5973
		IORWR 	74H, 0H, 1H 	//0C6C 	5174
		BTSC 	D8H, 2H, 0H 		//0C6E 	F4D8
		BRA 	C7CH 			//0C70 	1005
		LDWI 	5H 			//0C72 	4E05
		XORWR 	73H, 0H, 1H 	//0C74 	5973
		IORWR 	74H, 0H, 1H 	//0C76 	5174
		BTSS 	D8H, 2H, 0H 		//0C78 	E4D8
		BRA 	C86H 			//0C7A 	1005

		//;control.c: 520: count2 = 0;
		LDWI 	0H 			//0C7C 	4E00
		MOVLB 	2H 			//0C7E 	4102
		STR 	83H, 1H 			//0C80 	AF83
		LDWI 	0H 			//0C82 	4E00
		STR 	82H, 1H 			//0C84 	AF82

		//;control.c: 529: Display_Flow(RunData.FlowSet, 1,Engineering_Pattern.Led_Display_Flow);
		MOVFF 	104H, 16H 		//0C86 	0104 3016
		MOVFF 	105H, 17H 		//0C8A 	0105 3017
		LDWI 	1H 			//0C8E 	4E01
		STR 	18H, 0H 			//0C90 	AE18
		MOVFF 	6AH, 19H 		//0C92 	006A 3019
		LCALL 	3CC4H, 0H 		//0C96 	2C62 301E

		//;control.c: 532: Display_Concentration(RunData.Concentration, 1);
		MOVFF 	10EH, 16H 		//0C9A 	010E 3016
		MOVFF 	10FH, 17H 		//0C9E 	010F 3017
		LDWI 	1H 			//0CA2 	4E01
		STR 	18H, 0H 			//0CA4 	AE18
		LCALL 	37E4H, 0H 		//0CA6 	2CF2 301B

		//;control.c: 533: Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pat
		//+                          tern.Led_Display_CumulativeTime_Enbale);
		MOVFF 	116H, AH 		//0CAA 	0116 300A
		MOVFF 	117H, BH 		//0CAE 	0117 300B
		MOVFF 	118H, CH 		//0CB2 	0118 300C
		MOVFF 	119H, DH 		//0CB6 	0119 300D
		LDWI 	3CH 			//0CBA 	4E3C
		STR 	EH, 0H 			//0CBC 	AE0E
		LDWI 	0H 			//0CBE 	4E00
		STR 	FH, 0H 			//0CC0 	AE0F
		LDWI 	0H 			//0CC2 	4E00
		STR 	10H, 0H 			//0CC4 	AE10
		LDWI 	0H 			//0CC6 	4E00
		STR 	11H, 0H 			//0CC8 	AE11
		LCALL 	4166H, 0H 		//0CCA 	2CB3 3020
		MOVFF 	AH, 22H 		//0CCE 	000A 3022
		MOVFF 	BH, 23H 		//0CD2 	000B 3023
		MOVFF 	CH, 24H 		//0CD6 	000C 3024
		MOVFF 	DH, 25H 		//0CDA 	000D 3025
		LDWI 	1H 			//0CDE 	4E01
		STR 	26H, 0H 			//0CE0 	AE26
		MOVFF 	68H, 27H 		//0CE2 	0068 3027
		LCALL 	2716H, 0H 		//0CE6 	2C8B 3013

		//;control.c: 538: if ((RunData.CumulativeTime % (60 * 1000) == 0) && (RunData.CumulativeT
		//+                          ime != 0))
		MOVFF 	116H, AH 		//0CEA 	0116 300A
		MOVFF 	117H, BH 		//0CEE 	0117 300B
		MOVFF 	118H, CH 		//0CF2 	0118 300C
		MOVFF 	119H, DH 		//0CF6 	0119 300D
		LDWI 	60H 			//0CFA 	4E60
		STR 	EH, 0H 			//0CFC 	AE0E
		LDWI 	EAH 			//0CFE 	4EEA
		STR 	FH, 0H 			//0D00 	AE0F
		LDWI 	FFH 			//0D02 	4EFF
		STR 	10H, 0H 			//0D04 	AE10
		LDWI 	FFH 			//0D06 	4EFF
		STR 	11H, 0H 			//0D08 	AE11
		LCALL 	45D4H, 0H 		//0D0A 	2CEA 3022
		LDR 	AH, 0H, 0H 		//0D0E 	900A
		IORWR 	BH, 0H, 0H 		//0D10 	500B
		IORWR 	CH, 0H, 0H 		//0D12 	500C
		IORWR 	DH, 0H, 0H 		//0D14 	500D
		BTSS 	D8H, 2H, 0H 		//0D16 	E4D8
		BRA 	D2CH 			//0D18 	1009
		MOVLB 	1H 			//0D1A 	4101
		LDR 	16H, 0H, 1H 		//0D1C 	9116
		IORWR 	17H, 0H, 1H 	//0D1E 	5117
		IORWR 	18H, 0H, 1H 	//0D20 	5118
		IORWR 	19H, 0H, 1H 	//0D22 	5119
		BTSC 	D8H, 2H, 0H 		//0D24 	F4D8
		BRA 	D2CH 			//0D26 	1002

		//;control.c: 539: RunData.FilterMeshFlag = 1;
		LDWI 	1H 			//0D28 	4E01
		STR 	2EH, 1H 			//0D2A 	AF2E

		//;control.c: 542: if (RunData.SysSta != 0xFF || RunData.SysSta != 0)
		MOVLB 	1H 			//0D2C 	4101
		INCR 	2H, 0H, 1H 		//0D2E 	6902
		BTSS 	D8H, 2H, 0H 		//0D30 	E4D8
		BRA 	D3AH 			//0D32 	1003
		LDR 	2H, 0H, 1H 		//0D34 	9102
		BTSC 	D8H, 2H, 0H 		//0D36 	F4D8
		BRA 	D46H 			//0D38 	1006

		//;control.c: 543: {;control.c: 544: Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Patt
		//+                          ern.Led_Dispaly_CloseAlarm);
		MOVFF 	69H, AH 		//0D3A 	0069 300A
		LDR 	3BH, 0H, 1H 		//0D3E 	913B
		LCALL 	5D26H, 0H 		//0D40 	2C93 302E

		//;control.c: 545: }
		BRA 	D50H 			//0D44 	1005

		//;control.c: 546: else{;control.c: 547: Label_CloseAlarm(0,Engineering_Pattern.Led_Dispal
		//+                          y_CloseAlarm);
		MOVFF 	69H, AH 		//0D46 	0069 300A
		LDWI 	0H 			//0D4A 	4E00
		LCALL 	5D26H, 0H 		//0D4C 	2C93 302E

		//;control.c: 548: };control.c: 550: Display_FilterMesh(RunData.FilterMeshFlag);
		MOVLB 	1H 			//0D50 	4101
		LDR 	2EH, 0H, 1H 		//0D52 	912E
		LCALL 	4E90H, 0H 		//0D54 	2C48 3027

		//;control.c: 551: Display_Anion(0);
		LDWI 	0H 			//0D58 	4E00
		LCALL 	5FA6H, 0H 		//0D5A 	2CD3 302F

		//;control.c: 552: Display_Voice(RunData.VoiceEnable);
		MOVLB 	1H 			//0D5E 	4101
		LDR 	30H, 0H, 1H 		//0D60 	9130
		LCALL 	5E00H, 0H 		//0D62 	2C00 302F

		//;control.c: 553: Concentration_Low_Alarm();
		LCALL 	48E0H, 0H 		//0D66 	2C70 3024

		//;control.c: 556: if (RunData.SysSta != 0xFF && RunData.Error_Flag == 1 && RunData.Error_
		//+                          Delay_Time >= 3)
		MOVLB 	1H 			//0D6A 	4101
		INCR 	2H, 0H, 1H 		//0D6C 	6902
		BTSC 	D8H, 2H, 0H 		//0D6E 	F4D8
		BRA 	E18H 			//0D70 	1053
		DECR 	45H, 0H, 1H 		//0D72 	4545
		BTSS 	D8H, 2H, 0H 		//0D74 	E4D8
		BRA 	E18H 			//0D76 	1050
		LDWI 	2H 			//0D78 	4E02
		CPRSGT 	46H, 1H 		//0D7A 	A546
		BRA 	E18H 			//0D7C 	104D

		//;control.c: 557: {;control.c: 558: Display_SysSta(2);
		LDWI 	2H 			//0D7E 	4E02
		LCALL 	58D0H, 0H 		//0D80 	2C68 302C

		//;control.c: 560: Label_Min(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0D84 	0146 300A
		LDWI 	0H 			//0D88 	4E00
		LCALL 	5DCCH, 0H 		//0D8A 	2CE6 302E

		//;control.c: 561: Label_Running(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0D8E 	0146 300A
		LDWI 	0H 			//0D92 	4E00
		LCALL 	5DB2H, 0H 		//0D94 	2CD9 302E

		//;control.c: 562: Label_Timing(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0D98 	0146 300A
		LDWI 	0H 			//0D9C 	4E00
		LCALL 	5D98H, 0H 		//0D9E 	2CCC 302E

		//;control.c: 563: if(Engineering_Pattern.Led_Display_Timing_Enbale != 0)
		LDR 	67H, 0H, 1H 		//0DA2 	9167
		BTSC 	D8H, 2H, 0H 		//0DA4 	F4D8
		BRA 	DC6H 			//0DA6 	100F

		//;control.c: 564: {;control.c: 565: Label_Min(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0DA8 	0146 300A
		LDWI 	1H 			//0DAC 	4E01
		LCALL 	5DCCH, 0H 		//0DAE 	2CE6 302E

		//;control.c: 566: Label_Running(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0DB2 	0146 300A
		LDWI 	1H 			//0DB6 	4E01
		LCALL 	5DB2H, 0H 		//0DB8 	2CD9 302E

		//;control.c: 567: Label_Timing(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//0DBC 	0146 300A
		LDWI 	1H 			//0DC0 	4E01
		LCALL 	5D98H, 0H 		//0DC2 	2CCC 302E

		//;control.c: 568: };control.c: 569: SEG1(ch_table[(RunData.SysSta >> 4) & 0x0F], Engineer
		//+                          ing_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 20H 		//0DC6 	0067 3020
		MOVLB 	1H 			//0DCA 	4101
		SWAPR 	2H, 0H, 1H 		//0DCC 	7902
		ANDWI 	FH 			//0DCE 	4B0F
		ANDWI 	FH 			//0DD0 	4B0F
		STR 	2AH, 0H 			//0DD2 	AE2A
		CLRR 	2BH, 0H 		//0DD4 	AA2B
		LDWI 	2BH 			//0DD6 	4E2B
		ADDWR 	2AH, 0H, 0H 	//0DD8 	642A
		STR 	F6H, 0H 			//0DDA 	AEF6
		LDWI 	7FH 			//0DDC 	4E7F
		ADDWRC 	2BH, 0H, 0H 	//0DDE 	602B
		STR 	F7H, 0H 			//0DE0 	AEF7
		TBLRD*  			//0DE2 	4008
		LDR 	F5H, 0H, 0H 		//0DE4 	90F5
		LCALL 	539AH, 0H 		//0DE6 	2CCD 3029

		//;control.c: 570: SEG2(ch_table[RunData.SysSta & 0x0F], Engineering_Pattern.Led_Display_T
		//+                          iming_Enbale);
		MOVFF 	67H, 20H 		//0DEA 	0067 3020
		MOVLB 	1H 			//0DEE 	4101
		LDR 	2H, 0H, 1H 		//0DF0 	9102
		ANDWI 	FH 			//0DF2 	4B0F
		STR 	2AH, 0H 			//0DF4 	AE2A
		CLRR 	2BH, 0H 		//0DF6 	AA2B
		LDWI 	2BH 			//0DF8 	4E2B
		ADDWR 	2AH, 0H, 0H 	//0DFA 	642A
		STR 	F6H, 0H 			//0DFC 	AEF6
		LDWI 	7FH 			//0DFE 	4E7F
		ADDWRC 	2BH, 0H, 0H 	//0E00 	602B
		STR 	F7H, 0H 			//0E02 	AEF7
		TBLRD*  			//0E04 	4008
		LDR 	F5H, 0H, 0H 		//0E06 	90F5
		LCALL 	5346H, 0H 		//0E08 	2CA3 3029

		//;control.c: 571: SEG3(0, Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 20H 		//0E0C 	0067 3020
		LDWI 	0H 			//0E10 	4E00
		LCALL 	52F2H, 0H 		//0E12 	2C79 3029

		//;control.c: 572: }
		BRA 	F3AH 			//0E16 	1091

		//;control.c: 573: else;control.c: 574: {;control.c: 575: if (RunData.SysSta == 0xFF || Ru
		//+                          nData.SysSta == 0x00)
		INCR 	2H, 0H, 1H 		//0E18 	6902
		BTSC 	D8H, 2H, 0H 		//0E1A 	F4D8
		BRA 	E24H 			//0E1C 	1003
		LDR 	2H, 0H, 1H 		//0E1E 	9102
		BTSS 	D8H, 2H, 0H 		//0E20 	E4D8
		BRA 	E2AH 			//0E22 	1003

		//;control.c: 576: {;control.c: 577: Display_SysSta(1);
		LDWI 	1H 			//0E24 	4E01
		LCALL 	58D0H, 0H 		//0E26 	2C68 302C

		//;control.c: 578: };control.c: 579: if (RunData.Timing)
		MOVLB 	1H 			//0E2A 	4101
		LDR 	12H, 0H, 1H 		//0E2C 	9112
		IORWR 	13H, 0H, 1H 	//0E2E 	5113
		BTSC 	D8H, 2H, 0H 		//0E30 	F4D8
		BRA 	E58H 			//0E32 	1012

		//;control.c: 580: {;control.c: 581: Display_Timing(RunData.Timing, 2, Engineering_Pattern
		//+                          .Led_Display_Timing_Enbale);
		LFSR 	2H, 121H 		//0E34 	2E21 3012
		MOVFF 	FDEH, 20H 		//0E38 	0FDE 3020
		MOVFF 	FDDH, 21H 		//0E3C 	0FDD 3021
		LDWI 	0H 			//0E40 	4E00
		BTSC 	21H, 7H, 0H 		//0E42 	FE21
		LDWI 	FFH 			//0E44 	4EFF
		STR 	22H, 0H 			//0E46 	AE22
		STR 	23H, 0H 			//0E48 	AE23
		LDWI 	2H 			//0E4A 	4E02
		STR 	24H, 0H 			//0E4C 	AE24
		MOVFF 	67H, 25H 		//0E4E 	0067 3025
		LCALL 	1B4EH, 0H 		//0E52 	2CA7 300D

		//;control.c: 582: }
		BRA 	F3AH 			//0E56 	1071

		//;control.c: 583: else;control.c: 584: {;control.c: 585: Display_Timing(RunData.RunTime,
		//+                          1, Engineering_Pattern.Led_Display_Timing_Enbale);
		LFSR 	2H, 101H 		//0E58 	2E21 3010
		MOVFF 	FDEH, 20H 		//0E5C 	0FDE 3020
		MOVFF 	FDDH, 21H 		//0E60 	0FDD 3021
		LDWI 	0H 			//0E64 	4E00
		BTSC 	21H, 7H, 0H 		//0E66 	FE21
		LDWI 	FFH 			//0E68 	4EFF
		STR 	22H, 0H 			//0E6A 	AE22
		STR 	23H, 0H 			//0E6C 	AE23
		LDWI 	1H 			//0E6E 	4E01
		STR 	24H, 0H 			//0E70 	AE24
		MOVFF 	67H, 25H 		//0E72 	0067 3025
		LCALL 	1B4EH, 0H 		//0E76 	2CA7 300D
		BRA 	F3AH 			//0E7A 	105F

		//;control.c: 589: else;control.c: 590: {;control.c: 591: RunData.SysSta = 0xFF;
		SETR 	2H, 1H 			//0E7C 	A902

		//;control.c: 592: RunData.Error_Flag = 0;
		LDWI 	0H 			//0E7E 	4E00
		STR 	45H, 1H 			//0E80 	AF45

		//;control.c: 593: RunData.Error_Delay_Time = 0;
		LDWI 	0H 			//0E82 	4E00
		STR 	46H, 1H 			//0E84 	AF46

		//;control.c: 595: Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
		MOVFF 	69H, AH 		//0E86 	0069 300A
		LDWI 	0H 			//0E8A 	4E00
		LCALL 	5D26H, 0H 		//0E8C 	2C93 302E

		//;control.c: 596: count = 10;
		LDWI 	0H 			//0E90 	4E00
		MOVLB 	1H 			//0E92 	4101
		STR 	FFH, 1H 			//0E94 	AFFF
		LDWI 	AH 			//0E96 	4E0A
		STR 	FEH, 1H 			//0E98 	AFFE

		//;control.c: 597: TM1629_Luminance(8);
		LDWI 	8H 			//0E9A 	4E08
		LCALL 	47C4H, 0H 		//0E9C 	2CE2 3023

		//;control.c: 598: Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , Engineering_Pat
		//+                          tern.Led_Display_CumulativeTime_Enbale);
		MOVFF 	116H, AH 		//0EA0 	0116 300A
		MOVFF 	117H, BH 		//0EA4 	0117 300B
		MOVFF 	118H, CH 		//0EA8 	0118 300C
		MOVFF 	119H, DH 		//0EAC 	0119 300D
		LDWI 	3CH 			//0EB0 	4E3C
		STR 	EH, 0H 			//0EB2 	AE0E
		LDWI 	0H 			//0EB4 	4E00
		STR 	FH, 0H 			//0EB6 	AE0F
		LDWI 	0H 			//0EB8 	4E00
		STR 	10H, 0H 			//0EBA 	AE10
		LDWI 	0H 			//0EBC 	4E00
		STR 	11H, 0H 			//0EBE 	AE11
		LCALL 	4166H, 0H 		//0EC0 	2CB3 3020
		MOVFF 	AH, 22H 		//0EC4 	000A 3022
		MOVFF 	BH, 23H 		//0EC8 	000B 3023
		MOVFF 	CH, 24H 		//0ECC 	000C 3024
		MOVFF 	DH, 25H 		//0ED0 	000D 3025
		LDWI 	1H 			//0ED4 	4E01
		STR 	26H, 0H 			//0ED6 	AE26
		MOVFF 	68H, 27H 		//0ED8 	0068 3027
		LCALL 	2716H, 0H 		//0EDC 	2C8B 3013

		//;control.c: 599: Display_Timing(0, 3,Engineering_Pattern.Led_Display_Timing_Enbale);
		LDWI 	0H 			//0EE0 	4E00
		STR 	20H, 0H 			//0EE2 	AE20
		LDWI 	0H 			//0EE4 	4E00
		STR 	21H, 0H 			//0EE6 	AE21
		LDWI 	0H 			//0EE8 	4E00
		STR 	22H, 0H 			//0EEA 	AE22
		LDWI 	0H 			//0EEC 	4E00
		STR 	23H, 0H 			//0EEE 	AE23
		LDWI 	3H 			//0EF0 	4E03
		STR 	24H, 0H 			//0EF2 	AE24
		MOVFF 	67H, 25H 		//0EF4 	0067 3025
		LCALL 	1B4EH, 0H 		//0EF8 	2CA7 300D

		//;control.c: 600: Display_Flow(0, 3 ,Engineering_Pattern.Led_Display_Flow);
		LDWI 	0H 			//0EFC 	4E00
		STR 	17H, 0H 			//0EFE 	AE17
		LDWI 	0H 			//0F00 	4E00
		STR 	16H, 0H 			//0F02 	AE16
		LDWI 	3H 			//0F04 	4E03
		STR 	18H, 0H 			//0F06 	AE18
		MOVFF 	6AH, 19H 		//0F08 	006A 3019
		LCALL 	3CC4H, 0H 		//0F0C 	2C62 301E

		//;control.c: 601: Display_Concentration(0, 3);
		LDWI 	0H 			//0F10 	4E00
		STR 	17H, 0H 			//0F12 	AE17
		LDWI 	0H 			//0F14 	4E00
		STR 	16H, 0H 			//0F16 	AE16
		LDWI 	3H 			//0F18 	4E03
		STR 	18H, 0H 			//0F1A 	AE18
		LCALL 	37E4H, 0H 		//0F1C 	2CF2 301B

		//;control.c: 602: Display_SysSta(0);
		LDWI 	0H 			//0F20 	4E00
		LCALL 	58D0H, 0H 		//0F22 	2C68 302C

		//;control.c: 603: Display_Anion(0);
		LDWI 	0H 			//0F26 	4E00
		LCALL 	5FA6H, 0H 		//0F28 	2CD3 302F

		//;control.c: 604: Display_FilterMesh(0);
		LDWI 	0H 			//0F2C 	4E00
		LCALL 	4E90H, 0H 		//0F2E 	2C48 3027

		//;control.c: 605: Display_Voice(RunData.VoiceEnable);
		MOVLB 	1H 			//0F32 	4101
		LDR 	30H, 0H, 1H 		//0F34 	9130
		LCALL 	5E00H, 0H 		//0F36 	2C00 302F

		//;control.c: 606: };control.c: 607: };control.c: 608: count++;
		MOVLB 	1H 			//0F3A 	4101
		INRSNZ 	FEH, 1H, 1H 	//0F3C 	8BFE
		INCR 	FFH, 1H, 1H 		//0F3E 	6BFF
		RET 	0H 			//0F40 	4012

		//;voice.c: 200: static u8 key_press = 0;;voice.c: 206: if (RunData.StandbySta == 1)
		MOVLB 	1H 			//0F42 	4101
		DECR 	2DH, 0H, 1H 		//0F44 	452D
		BTSS 	D8H, 2H, 0H 		//0F46 	E4D8
		BRA 	F4EH 			//0F48 	1002

		//;voice.c: 207: RunData.StandbyStaFlag = 0;
		LDWI 	0H 			//0F4A 	4E00
		STR 	36H, 1H 			//0F4C 	AF36

		//;voice.c: 208: if (RunData.StandbySta == 0)
		LDR 	2DH, 0H, 1H 		//0F4E 	912D
		BTSS 	D8H, 2H, 0H 		//0F50 	E4D8
		BRA 	10D8H 			//0F52 	10C2

		//;voice.c: 209: {;voice.c: 210: if (RunData.StandbyStaFlag == 0)
		LDR 	36H, 0H, 1H 		//0F54 	9136
		BTSS 	D8H, 2H, 0H 		//0F56 	E4D8
		BRA 	F5EH 			//0F58 	1002

		//;voice.c: 211: {;voice.c: 213: RunData.StandbyStaFlag = 1;
		LDWI 	1H 			//0F5A 	4E01
		STR 	36H, 1H 			//0F5C 	AF36

		//;voice.c: 214: };voice.c: 215: if ((KeyDat.key_short_value == 0x02) || (KeyDat.key_short
		//+                          _value == 0x03) ||;voice.c: 216: (KeyDat.key_long_value == 0x02) || (KeyDat.key_long_val
		//+                          ue == 0x03) ||;voice.c: 217: RunData.TOUCHkey_Finally_Time != 0)
		LDWI 	2H 			//0F5E 	4E02
		MOVLB 	0H 			//0F60 	4100
		XORWR 	6FH, 0H, 1H 	//0F62 	596F
		IORWR 	70H, 0H, 1H 	//0F64 	5170
		BTSC 	D8H, 2H, 0H 		//0F66 	F4D8
		BRA 	F90H 			//0F68 	1013
		LDWI 	3H 			//0F6A 	4E03
		XORWR 	6FH, 0H, 1H 	//0F6C 	596F
		IORWR 	70H, 0H, 1H 	//0F6E 	5170
		BTSC 	D8H, 2H, 0H 		//0F70 	F4D8
		BRA 	F90H 			//0F72 	100E
		LDWI 	2H 			//0F74 	4E02
		XORWR 	6DH, 0H, 1H 	//0F76 	596D
		IORWR 	6EH, 0H, 1H 	//0F78 	516E
		BTSC 	D8H, 2H, 0H 		//0F7A 	F4D8
		BRA 	F90H 			//0F7C 	1009
		LDWI 	3H 			//0F7E 	4E03
		XORWR 	6DH, 0H, 1H 	//0F80 	596D
		IORWR 	6EH, 0H, 1H 	//0F82 	516E
		BTSC 	D8H, 2H, 0H 		//0F84 	F4D8
		BRA 	F90H 			//0F86 	1004
		MOVLB 	1H 			//0F88 	4101
		LDR 	47H, 0H, 1H 		//0F8A 	9147
		BTSC 	D8H, 2H, 0H 		//0F8C 	F4D8
		BRA 	10C4H 			//0F8E 	109A

		//;voice.c: 218: {;voice.c: 219: key_press = 1;
		LDWI 	1H 			//0F90 	4E01
		MOVLB 	0H 			//0F92 	4100
		STR 	B4H, 1H 			//0F94 	AFB4

		//;voice.c: 220: if (RunData.TOUCHkey_Finally_Time)
		MOVLB 	1H 			//0F96 	4101
		LDR 	47H, 0H, 1H 		//0F98 	9147
		BTSC 	D8H, 2H, 0H 		//0F9A 	F4D8
		BRA 	101EH 			//0F9C 	1040

		//;voice.c: 221: {;voice.c: 223: RunData.Timing = RunData.TOUCHkey_Finally_Time;
		MOVFF 	147H, 112H 		//0F9E 	0147 3112
		CLRR 	13H, 1H 		//0FA2 	AB13

		//;voice.c: 224: if (RunData.Timing % 60 != 0)
		MOVFF 	112H, AH 		//0FA4 	0112 300A
		MOVFF 	113H, BH 		//0FA8 	0113 300B
		LDWI 	0H 			//0FAC 	4E00
		STR 	DH, 0H 			//0FAE 	AE0D
		LDWI 	3CH 			//0FB0 	4E3C
		STR 	CH, 0H 			//0FB2 	AE0C
		LCALL 	4BC8H, 0H 		//0FB4 	2CE4 3025
		LDR 	AH, 0H, 0H 		//0FB8 	900A
		IORWR 	BH, 0H, 0H 		//0FBA 	500B
		BTSS 	D8H, 2H, 0H 		//0FBC 	E4D8
		RET 	0H 			//0FBE 	4012
		BRA 	101EH 			//0FC0 	102E

		//;voice.c: 232: RunData.VoiceNum = continuous_oxygen_therapy;
		LDWI 	1AH 			//0FC2 	4E1A
		BRA 	1018H 			//0FC4 	1029

		//;voice.c: 235: RunData.VoiceNum = ten_minutes;
		LDWI 	DH 			//0FC6 	4E0D
		BRA 	1018H 			//0FC8 	1027

		//;voice.c: 238: RunData.VoiceNum = twenty_minutes;
		LDWI 	EH 			//0FCA 	4E0E
		BRA 	1018H 			//0FCC 	1025

		//;voice.c: 241: RunData.VoiceNum = thirty_minutes;
		LDWI 	FH 			//0FCE 	4E0F
		BRA 	1018H 			//0FD0 	1023

		//;voice.c: 244: RunData.VoiceNum = forty_minutes;
		LDWI 	10H 			//0FD2 	4E10
		BRA 	1018H 			//0FD4 	1021

		//;voice.c: 247: RunData.VoiceNum = fifty_minutes;
		LDWI 	11H 			//0FD6 	4E11
		BRA 	1018H 			//0FD8 	101F

		//;voice.c: 250: RunData.VoiceNum = one_hour;
		LDWI 	12H 			//0FDA 	4E12
		BRA 	1018H 			//0FDC 	101D

		//;voice.c: 253: VoiceDelay.Voice_time = one_hour;
		LDWI 	12H 			//0FDE 	4E12
		BRA 	1010H 			//0FE0 	1017

		//;voice.c: 256: RunData.VoiceNum = two_hours;
		LDWI 	13H 			//0FE2 	4E13
		BRA 	1018H 			//0FE4 	1019

		//;voice.c: 259: VoiceDelay.Voice_time = two_hours;
		LDWI 	13H 			//0FE6 	4E13
		BRA 	1010H 			//0FE8 	1013

		//;voice.c: 262: RunData.VoiceNum = three_hours;
		LDWI 	14H 			//0FEA 	4E14
		BRA 	1018H 			//0FEC 	1015

		//;voice.c: 265: VoiceDelay.Voice_time = three_hours;
		LDWI 	14H 			//0FEE 	4E14
		BRA 	1010H 			//0FF0 	100F

		//;voice.c: 268: RunData.VoiceNum = four_hours;
		LDWI 	15H 			//0FF2 	4E15
		BRA 	1018H 			//0FF4 	1011

		//;voice.c: 271: VoiceDelay.Voice_time = four_hours;
		LDWI 	15H 			//0FF6 	4E15
		BRA 	1010H 			//0FF8 	100B

		//;voice.c: 274: RunData.VoiceNum = five_hours;
		LDWI 	16H 			//0FFA 	4E16
		BRA 	1018H 			//0FFC 	100D

		//;voice.c: 277: VoiceDelay.Voice_time = five_hours;
		LDWI 	16H 			//0FFE 	4E16
		BRA 	1010H 			//1000 	1007

		//;voice.c: 280: RunData.VoiceNum = six_hours;
		LDWI 	17H 			//1002 	4E17
		BRA 	1018H 			//1004 	1009

		//;voice.c: 283: VoiceDelay.Voice_time = six_hours;
		LDWI 	17H 			//1006 	4E17
		BRA 	1010H 			//1008 	1003

		//;voice.c: 286: RunData.VoiceNum = seven_hours;
		LDWI 	18H 			//100A 	4E18
		BRA 	1018H 			//100C 	1005

		//;voice.c: 289: VoiceDelay.Voice_time = seven_hours;
		LDWI 	18H 			//100E 	4E18
		MOVLB 	1H 			//1010 	4101
		STR 	F5H, 1H 			//1012 	AFF5

		//;voice.c: 290: break;
		BRA 	10BEH 			//1014 	1054

		//;voice.c: 292: RunData.VoiceNum = eight_hours;
		LDWI 	19H 			//1016 	4E19
		MOVLB 	1H 			//1018 	4101
		STR 	2FH, 1H 			//101A 	AF2F

		//;voice.c: 293: break;
		BRA 	10BEH 			//101C 	1050
		LFSR 	2H, 121H 		//101E 	2E21 3012
		MOVFF 	FDEH, 45H 		//1022 	0FDE 3045
		MOVFF 	FDDH, 46H 		//1026 	0FDD 3046
		LDR 	46H, 0H, 0H 		//102A 	9046
		XORWI 	0H 			//102C 	4A00
		BTSC 	D8H, 2H, 0H 		//102E 	F4D8
		BRA 	103AH 			//1030 	1004
		XORWI 	1H 			//1032 	4A01
		BTSC 	D8H, 2H, 0H 		//1034 	F4D8
		BRA 	108CH 			//1036 	102A
		BRA 	10BEH 			//1038 	1042
		LDR 	45H, 0H, 0H 		//103A 	9045
		XORWI 	0H 			//103C 	4A00
		BTSC 	D8H, 2H, 0H 		//103E 	F4D8
		BRA 	1FC2H 			//1040 	17C0
		XORWI 	AH 			//1042 	4A0A
		BTSC 	D8H, 2H, 0H 		//1044 	F4D8
		BRA 	1FC6H 			//1046 	17BF
		XORWI 	1EH 			//1048 	4A1E
		BTSC 	D8H, 2H, 0H 		//104A 	F4D8
		BRA 	1FCAH 			//104C 	17BE
		XORWI 	AH 			//104E 	4A0A
		BTSC 	D8H, 2H, 0H 		//1050 	F4D8
		BRA 	1FCEH 			//1052 	17BD
		XORWI 	36H 			//1054 	4A36
		BTSC 	D8H, 2H, 0H 		//1056 	F4D8
		BRA 	1FD2H 			//1058 	17BC
		XORWI 	1AH 			//105A 	4A1A
		BTSC 	D8H, 2H, 0H 		//105C 	F4D8
		BRA 	1FD6H 			//105E 	17BB
		XORWI 	EH 			//1060 	4A0E
		BTSC 	D8H, 2H, 0H 		//1062 	F4D8
		BRA 	1FDAH 			//1064 	17BA
		XORWI 	66H 			//1066 	4A66
		BTSC 	D8H, 2H, 0H 		//1068 	F4D8
		BRA 	1FDEH 			//106A 	17B9
		XORWI 	22H 			//106C 	4A22
		BTSC 	D8H, 2H, 0H 		//106E 	F4D8
		BRA 	1FE2H 			//1070 	17B8
		XORWI 	EEH 			//1072 	4AEE
		BTSC 	D8H, 2H, 0H 		//1074 	F4D8
		BRA 	1FE6H 			//1076 	17B7
		XORWI 	22H 			//1078 	4A22
		BTSC 	D8H, 2H, 0H 		//107A 	F4D8
		BRA 	1FEAH 			//107C 	17B6
		XORWI 	66H 			//107E 	4A66
		BTSC 	D8H, 2H, 0H 		//1080 	F4D8
		BRA 	1FEEH 			//1082 	17B5
		XORWI 	22H 			//1084 	4A22
		BTSC 	D8H, 2H, 0H 		//1086 	F4D8
		BRA 	1FF2H 			//1088 	17B4
		BRA 	10BEH 			//108A 	1019
		LDR 	45H, 0H, 0H 		//108C 	9045
		XORWI 	EH 			//108E 	4A0E
		BTSC 	D8H, 2H, 0H 		//1090 	F4D8
		BRA 	1FF6H 			//1092 	17B1
		XORWI 	22H 			//1094 	4A22
		BTSC 	D8H, 2H, 0H 		//1096 	F4D8
		BRA 	1FFAH 			//1098 	17B0
		XORWI 	66H 			//109A 	4A66
		BTSC 	D8H, 2H, 0H 		//109C 	F4D8
		BRA 	1FFEH 			//109E 	17AF
		XORWI 	22H 			//10A0 	4A22
		BTSC 	D8H, 2H, 0H 		//10A2 	F4D8
		BRA 	2002H 			//10A4 	17AE
		XORWI 	EEH 			//10A6 	4AEE
		BTSC 	D8H, 2H, 0H 		//10A8 	F4D8
		BRA 	2006H 			//10AA 	17AD
		XORWI 	22H 			//10AC 	4A22
		BTSC 	D8H, 2H, 0H 		//10AE 	F4D8
		BRA 	200AH 			//10B0 	17AC
		XORWI 	66H 			//10B2 	4A66
		BTSC 	D8H, 2H, 0H 		//10B4 	F4D8
		BRA 	200EH 			//10B6 	17AB
		XORWI 	22H 			//10B8 	4A22
		BTSC 	D8H, 2H, 0H 		//10BA 	F4D8
		BRA 	2016H 			//10BC 	17AC

		//;voice.c: 295: RunData.TOUCHkey_Finally_Time = 0;
		LDWI 	0H 			//10BE 	4E00
		MOVLB 	1H 			//10C0 	4101
		STR 	47H, 1H 			//10C2 	AF47

		//;voice.c: 296: };voice.c: 297: if (KeyDat.key_long_value == 0)
		MOVLB 	0H 			//10C4 	4100
		LDR 	6DH, 0H, 1H 		//10C6 	916D
		IORWR 	6EH, 0H, 1H 	//10C8 	516E
		BTSS 	D8H, 2H, 0H 		//10CA 	E4D8
		BRA 	10D8H 			//10CC 	1005

		//;voice.c: 298: {;voice.c: 299: if (key_press == 1)
		DECR 	B4H, 0H, 1H 		//10CE 	45B4
		BTSS 	D8H, 2H, 0H 		//10D0 	E4D8
		BRA 	10D8H 			//10D2 	1002

		//;voice.c: 300: {;voice.c: 301: key_press = 2;
		LDWI 	2H 			//10D4 	4E02
		STR 	B4H, 1H 			//10D6 	AFB4

		//;voice.c: 302: };voice.c: 303: };voice.c: 331: };voice.c: 341: VoiceFilterMesh();
		LCALL 	485AH, 0H 		//10D8 	2C2D 3024

		//;voice.c: 342: SOS_Voice();
		LCALL 	5666H, 0H 		//10DC 	2C33 302B

		//;voice.c: 343: if ((KeyDat.key_short_value == 0x06) && RunData.StandbySta == 0)
		LDWI 	6H 			//10E0 	4E06
		XORWR 	6FH, 0H, 1H 	//10E2 	596F
		IORWR 	70H, 0H, 1H 	//10E4 	5170
		BTSS 	D8H, 2H, 0H 		//10E6 	E4D8
		BRA 	1120H 			//10E8 	101B
		MOVLB 	1H 			//10EA 	4101
		LDR 	2DH, 0H, 1H 		//10EC 	912D
		BTSS 	D8H, 2H, 0H 		//10EE 	E4D8
		BRA 	1120H 			//10F0 	1017

		//;voice.c: 344: {;voice.c: 345: RunData.VoiceEnable = !RunData.VoiceEnable;
		LDR 	30H, 0H, 1H 		//10F2 	9130
		BTSS 	D8H, 2H, 0H 		//10F4 	E4D8
		BRA 	10FCH 			//10F6 	1002
		LDWI 	1H 			//10F8 	4E01
		BRA 	10FEH 			//10FA 	1001
		LDWI 	0H 			//10FC 	4E00
		STR 	30H, 1H 			//10FE 	AF30

		//;voice.c: 346: if (RunData.VoiceEnable)
		LDR 	30H, 0H, 1H 		//1100 	9130
		BTSC 	D8H, 2H, 0H 		//1102 	F4D8
		BRA 	110AH 			//1104 	1002

		//;voice.c: 347: RunData.VoiceNum = intelligent_voice_on;
		LDWI 	5H 			//1106 	4E05
		BRA 	110CH 			//1108 	1001

		//;voice.c: 348: else;voice.c: 349: RunData.VoiceNum = intelligent_voice_off;
		LDWI 	6H 			//110A 	4E06
		STR 	2FH, 1H 			//110C 	AF2F

		//;voice.c: 351: if(RunData.VoiceNum == intelligent_voice_off)
		LDWI 	6H 			//110E 	4E06
		XORWR 	2FH, 0H, 1H 	//1110 	592F
		BTSS 	D8H, 2H, 0H 		//1112 	E4D8
		BRA 	1120H 			//1114 	1005

		//;voice.c: 352: {;voice.c: 353: PlaySound(RunData.VoiceNum);
		LDR 	2FH, 0H, 1H 		//1116 	912F
		LCALL 	4AE2H, 0H 		//1118 	2C71 3025

		//;voice.c: 354: RunData.VoiceNumLast = RunData.VoiceNum;
		MOVFF 	12FH, 135H 		//111C 	012F 3135

		//;voice.c: 355: };voice.c: 356: };voice.c: 358: static int Half_Hour_Flag = 0;;voice.c: 3
		//+                          59: if (RunData.VoiceEnable == 1)
		MOVLB 	1H 			//1120 	4101
		DECR 	30H, 0H, 1H 		//1122 	4530
		BTSS 	D8H, 2H, 0H 		//1124 	E4D8
		RET 	0H 			//1126 	4012

		//;voice.c: 360: {;voice.c: 362: if (RunData.VoiceNumLast != RunData.VoiceNum && RunData.V
		//+                          oiceNum == intelligent_voice_on)
		LDR 	2FH, 0H, 1H 		//1128 	912F
		XORWR 	35H, 0H, 1H 	//112A 	5935
		BTSC 	D8H, 2H, 0H 		//112C 	F4D8
		BRA 	113CH 			//112E 	1006
		LDWI 	5H 			//1130 	4E05
		XORWR 	2FH, 0H, 1H 	//1132 	592F
		BTSS 	D8H, 2H, 0H 		//1134 	E4D8
		BRA 	113CH 			//1136 	1002

		//;voice.c: 363: RunData.VoiceCount++;
		INRSNZ 	37H, 1H, 1H 	//1138 	8B37
		INCR 	38H, 1H, 1H 		//113A 	6B38

		//;voice.c: 364: if(RunData.VoiceCount > 200 && RunData.VoiceNum == intelligent_voice_on)
		LDR 	38H, 0H, 1H 		//113C 	9138
		BNZ 	1148H 			//113E 	2104
		LDWI 	C9H 			//1140 	4EC9
		SUBWR 	37H, 0H, 1H 	//1142 	9D37
		BTSS 	D8H, 0H, 0H 		//1144 	E0D8
		BRA 	1164H 			//1146 	100E
		LDWI 	5H 			//1148 	4E05
		XORWR 	2FH, 0H, 1H 	//114A 	592F
		BTSS 	D8H, 2H, 0H 		//114C 	E4D8
		BRA 	1164H 			//114E 	100A

		//;voice.c: 365: {;voice.c: 366: PlaySound(RunData.VoiceNum);
		LDR 	2FH, 0H, 1H 		//1150 	912F
		LCALL 	4AE2H, 0H 		//1152 	2C71 3025

		//;voice.c: 367: RunData.VoiceCount = 0;
		LDWI 	0H 			//1156 	4E00
		MOVLB 	1H 			//1158 	4101
		STR 	38H, 1H 			//115A 	AF38
		LDWI 	0H 			//115C 	4E00
		STR 	37H, 1H 			//115E 	AF37

		//;voice.c: 368: RunData.VoiceNumLast = RunData.VoiceNum;
		MOVFF 	12FH, 135H 		//1160 	012F 3135

		//;voice.c: 369: };voice.c: 371: if (key_press == 2)
		LDWI 	2H 			//1164 	4E02
		MOVLB 	0H 			//1166 	4100
		XORWR 	B4H, 0H, 1H 	//1168 	59B4
		BTSS 	D8H, 2H, 0H 		//116A 	E4D8
		RET 	0H 			//116C 	4012

		//;voice.c: 372: {;voice.c: 374: if (RunData.VoiceNumLast != RunData.VoiceNum)
		MOVLB 	1H 			//116E 	4101
		LDR 	2FH, 0H, 1H 		//1170 	912F
		XORWR 	35H, 0H, 1H 	//1172 	5935
		BTSC 	D8H, 2H, 0H 		//1174 	F4D8
		BRA 	117CH 			//1176 	1002

		//;voice.c: 375: RunData.VoiceCount++;
		INRSNZ 	37H, 1H, 1H 	//1178 	8B37
		INCR 	38H, 1H, 1H 		//117A 	6B38

		//;voice.c: 376: if ((RunData.VoiceCount > 200 && RunData.Timing % 60 == 0 && RunData.Timi
		//+                          ng >= 0) || RunData.Timing == 30)
		LDR 	38H, 0H, 1H 		//117C 	9138
		BNZ 	1188H 			//117E 	2104
		LDWI 	C9H 			//1180 	4EC9
		SUBWR 	37H, 0H, 1H 	//1182 	9D37
		BTSS 	D8H, 0H, 0H 		//1184 	E0D8
		BRA 	11AAH 			//1186 	1011
		MOVFF 	112H, AH 		//1188 	0112 300A
		MOVFF 	113H, BH 		//118C 	0113 300B
		LDWI 	0H 			//1190 	4E00
		STR 	DH, 0H 			//1192 	AE0D
		LDWI 	3CH 			//1194 	4E3C
		STR 	CH, 0H 			//1196 	AE0C
		LCALL 	4BC8H, 0H 		//1198 	2CE4 3025
		LDR 	AH, 0H, 0H 		//119C 	900A
		IORWR 	BH, 0H, 0H 		//119E 	500B
		BTSS 	D8H, 2H, 0H 		//11A0 	E4D8
		BRA 	11AAH 			//11A2 	1003
		MOVLB 	1H 			//11A4 	4101
		BTSS 	13H, 7H, 1H 		//11A6 	EF13
		BRA 	11B6H 			//11A8 	1006
		LDWI 	1EH 			//11AA 	4E1E
		MOVLB 	1H 			//11AC 	4101
		XORWR 	12H, 0H, 1H 	//11AE 	5912
		IORWR 	13H, 0H, 1H 	//11B0 	5113
		BTSS 	D8H, 2H, 0H 		//11B2 	E4D8
		BRA 	11FAH 			//11B4 	1022

		//;voice.c: 377: {;voice.c: 378: printf("RunData.Timing = %d\r\n",RunData.Timing);
		LDWI 	93H 			//11B6 	4E93
		STR 	22H, 0H 			//11B8 	AE22
		LDWI 	7FH 			//11BA 	4E7F
		STR 	23H, 0H 			//11BC 	AE23
		MOVFF 	112H, 24H 		//11BE 	0112 3024
		MOVFF 	113H, 25H 		//11C2 	0113 3025
		LCALL 	5B6AH, 0H 		//11C6 	2CB5 302D

		//;voice.c: 379: printf("VoiceDelay.Voice_time = %d\r\n",VoiceDelay.Voice_time);
		LDWI 	76H 			//11CA 	4E76
		STR 	22H, 0H 			//11CC 	AE22
		LDWI 	7FH 			//11CE 	4E7F
		STR 	23H, 0H 			//11D0 	AE23
		MOVFF 	1F5H, 24H 		//11D2 	01F5 3024
		CLRR 	25H, 0H 		//11D6 	AA25
		LCALL 	5B6AH, 0H 		//11D8 	2CB5 302D

		//;voice.c: 380: VoiceCtr2(RunData.VoiceNum);
		MOVFF 	12FH, 11H 		//11DC 	012F 3011
		CLRR 	12H, 0H 		//11E0 	AA12
		LCALL 	5ABAH, 0H 		//11E2 	2C5D 302D

		//;voice.c: 381: RunData.VoiceCount = 0;
		LDWI 	0H 			//11E6 	4E00
		MOVLB 	1H 			//11E8 	4101
		STR 	38H, 1H 			//11EA 	AF38
		LDWI 	0H 			//11EC 	4E00
		STR 	37H, 1H 			//11EE 	AF37

		//;voice.c: 382: RunData.VoiceNumLast = RunData.VoiceNum;
		MOVFF 	12FH, 135H 		//11F0 	012F 3135

		//;voice.c: 383: key_press = 0;
		LDWI 	0H 			//11F4 	4E00
		MOVLB 	0H 			//11F6 	4100
		STR 	B4H, 1H 			//11F8 	AFB4

		//;voice.c: 384: };voice.c: 387: if (VoiceDelay.VoiceNumLast != VoiceDelay.Voice_time)
		MOVLB 	1H 			//11FA 	4101
		LDR 	F5H, 0H, 1H 		//11FC 	91F5
		XORWR 	F6H, 0H, 1H 	//11FE 	59F6
		BTSC 	D8H, 2H, 0H 		//1200 	F4D8
		BRA 	1208H 			//1202 	1002

		//;voice.c: 388: {;voice.c: 389: VoiceDelay.VoiceCount++;
		INRSNZ 	F2H, 1H, 1H 	//1204 	8BF2
		INCR 	F3H, 1H, 1H 		//1206 	6BF3

		//;voice.c: 390: };voice.c: 391: if (VoiceDelay.VoiceCount > 200 && RunData.Timing % 60 ==
		//+                           30 && RunData.Timing != 30)
		LDR 	F3H, 0H, 1H 		//1208 	91F3
		BNZ 	1214H 			//120A 	2104
		LDWI 	C9H 			//120C 	4EC9
		SUBWR 	F2H, 0H, 1H 	//120E 	9DF2
		BTSS 	D8H, 0H, 0H 		//1210 	E0D8
		RET 	0H 			//1212 	4012
		MOVFF 	112H, AH 		//1214 	0112 300A
		MOVFF 	113H, BH 		//1218 	0113 300B
		LDWI 	0H 			//121C 	4E00
		STR 	DH, 0H 			//121E 	AE0D
		LDWI 	3CH 			//1220 	4E3C
		STR 	CH, 0H 			//1222 	AE0C
		LCALL 	4BC8H, 0H 		//1224 	2CE4 3025
		LDWI 	1EH 			//1228 	4E1E
		XORWR 	AH, 0H, 0H 		//122A 	580A
		IORWR 	BH, 0H, 0H 		//122C 	500B
		BTSS 	D8H, 2H, 0H 		//122E 	E4D8
		RET 	0H 			//1230 	4012
		LDWI 	1EH 			//1232 	4E1E
		MOVLB 	1H 			//1234 	4101
		XORWR 	12H, 0H, 1H 	//1236 	5912
		IORWR 	13H, 0H, 1H 	//1238 	5113
		BTSC 	D8H, 2H, 0H 		//123A 	F4D8
		RET 	0H 			//123C 	4012

		//;voice.c: 392: {;voice.c: 393: u8 Flag = Voice_Half_Hour(VoiceDelay.Voice_time, &VoiceDe
		//+                          lay.Voice_enable);
		LDWI 	F7H 			//123E 	4EF7
		STR 	15H, 0H 			//1240 	AE15
		LDWI 	1H 			//1242 	4E01
		STR 	16H, 0H 			//1244 	AE16
		LDR 	F5H, 0H, 1H 		//1246 	91F5
		LCALL 	4A6CH, 0H 		//1248 	2C36 3025
		STR 	47H, 0H 			//124C 	AE47

		//;voice.c: 394: if (Flag == 1)
		DECR 	47H, 0H, 0H 		//124E 	4447
		BTSS 	D8H, 2H, 0H 		//1250 	E4D8
		RET 	0H 			//1252 	4012

		//;voice.c: 395: {;voice.c: 396: VoiceDelay.VoiceNumLast = VoiceDelay.Voice_time;
		MOVFF 	1F5H, 1F6H 		//1254 	01F5 31F6

		//;voice.c: 397: VoiceDelay.VoiceCount = 0;
		LDWI 	0H 			//1258 	4E00
		MOVLB 	1H 			//125A 	4101
		STR 	F3H, 1H 			//125C 	AFF3
		LDWI 	0H 			//125E 	4E00
		STR 	F2H, 1H 			//1260 	AFF2

		//;voice.c: 398: key_press = 0;
		LDWI 	0H 			//1262 	4E00
		MOVLB 	0H 			//1264 	4100
		STR 	B4H, 1H 			//1266 	AFB4
		RET 	0H 			//1268 	4012

		//;control.c: 326: if (RunData.StandbySta == 0)
		LDR 	2DH, 0H, 1H 		//126A 	912D
		BTSS 	D8H, 2H, 0H 		//126C 	E4D8
		BRA 	14D6H 			//126E 	1133

		//;control.c: 327: {;control.c: 328: ERR_Code();
		LCALL 	22B8H, 0H 		//1270 	2C5C 3011

		//;control.c: 329: if (sUsart2.LinkSta == 1)
		MOVLB 	2H 			//1274 	4102
		DECR 	BBH, 0H, 1H 		//1276 	45BB
		BTSS 	D8H, 2H, 0H 		//1278 	E4D8
		RET 	0H 			//127A 	4012

		//;control.c: 330: {;control.c: 331: if (RunData.PowkeyFlag == 1)
		MOVLB 	1H 			//127C 	4101
		DECR 	0H, 0H, 1H 		//127E 	4500
		BTSS 	D8H, 2H, 0H 		//1280 	E4D8
		BRA 	1322H 			//1282 	104F

		//;control.c: 332: {;control.c: 333: sUsart2.RxData[3] = 0;
		LDWI 	0H 			//1284 	4E00
		MOVLB 	2H 			//1286 	4102
		STR 	8BH, 1H 			//1288 	AF8B

		//;control.c: 334: LATDbits.LATD7 = 1;
		BSR 	8CH, 7H, 0H 		//128A 	CE8C

		//;control.c: 335: RunData.SysSta = 0xFF;
		MOVLB 	1H 			//128C 	4101
		SETR 	2H, 1H 			//128E 	A902

		//;control.c: 336: RunData.StandbySta = 1;
		LDWI 	1H 			//1290 	4E01
		STR 	2DH, 1H 			//1292 	AF2D

		//;control.c: 337: for (i = 0; i < 16; i++)
		LDWI 	0H 			//1294 	4E00
		STR 	4AH, 0H 			//1296 	AE4A
		LDWI 	0H 			//1298 	4E00
		STR 	49H, 0H 			//129A 	AE49

		//;control.c: 338: DisBuf[i] = 0;
		LDR 	49H, 0H, 0H 		//129C 	9049
		ADDWI 	BAH 			//129E 	4FBA
		STR 	D9H, 0H 			//12A0 	AED9
		CLRR 	DAH, 0H 		//12A2 	AADA
		LDWI 	0H 			//12A4 	4E00
		STR 	DFH, 0H 			//12A6 	AEDF
		INRSNZ 	49H, 1H, 0H 	//12A8 	8A49
		INCR 	4AH, 1H, 0H 		//12AA 	6A4A
		LDR 	4AH, 0H, 0H 		//12AC 	904A
		BNZ 	12B8H 			//12AE 	2104
		LDWI 	10H 			//12B0 	4E10
		SUBWR 	49H, 0H, 0H 	//12B2 	9C49
		BTSS 	D8H, 0H, 0H 		//12B4 	E0D8
		BRA 	229CH 			//12B6 	17F2

		//;control.c: 339: TM1629_Luminance(0);
		LDWI 	0H 			//12B8 	4E00
		LCALL 	47C4H, 0H 		//12BA 	2CE2 3023

		//;control.c: 340: Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
		MOVFF 	69H, AH 		//12BE 	0069 300A
		LDWI 	0H 			//12C2 	4E00
		LCALL 	5D26H, 0H 		//12C4 	2C93 302E

		//;control.c: 341: Update_Display();
		LCALL 	5F74H, 0H 		//12C8 	2CBA 302F

		//;control.c: 342: E2prom_WriteData();
		LCALL 	3936H, 0H 		//12CC 	2C9B 301C

		//;control.c: 343: Display_SysSta(0);
		LDWI 	0H 			//12D0 	4E00
		LCALL 	58D0H, 0H 		//12D2 	2C68 302C

		//;control.c: 345: {;control.c: 346: if ((i % 100) == 0)
		MOVFF 	49H, AH 		//12D6 	0049 300A
		MOVFF 	4AH, BH 		//12DA 	004A 300B
		LDWI 	0H 			//12DE 	4E00
		STR 	DH, 0H 			//12E0 	AE0D
		LDWI 	64H 			//12E2 	4E64
		STR 	CH, 0H 			//12E4 	AE0C
		LCALL 	5814H, 0H 		//12E6 	2C0A 302C
		LDR 	AH, 0H, 0H 		//12EA 	900A
		IORWR 	BH, 0H, 0H 		//12EC 	500B
		BTSC 	D8H, 2H, 0H 		//12EE 	F4D8

		//;control.c: 347: Cmd_Send();
		LCALL 	24F4H, 0H 		//12F0 	2C7A 3012

		//;control.c: 348: i++;
		INRSNZ 	49H, 1H, 0H 	//12F4 	8A49
		INCR 	4AH, 1H, 0H 		//12F6 	6A4A
		CLRWDT  			//12F8 	4004

		//;control.c: 350: RunData.StandbySta = 1;
		LDWI 	1H 			//12FA 	4E01
		MOVLB 	1H 			//12FC 	4101
		STR 	2DH, 1H 			//12FE 	AF2D

		//;control.c: 351: Cmd_Process();
		LCALL 	3BA2H, 0H 		//1300 	2CD1 301D

		//;control.c: 352: DelayMs(1);
		LDWI 	0H 			//1304 	4E00
		STR 	CH, 0H 			//1306 	AE0C
		LDWI 	1H 			//1308 	4E01
		STR 	BH, 0H 			//130A 	AE0B
		LCALL 	5B14H, 0H 		//130C 	2C8A 302D

		//;control.c: 353: if (RunData.PowkeyFlag == 0)
		MOVLB 	1H 			//1310 	4101
		LDR 	0H, 0H, 1H 		//1312 	9100
		BTSS 	D8H, 2H, 0H 		//1314 	E4D8
		BRA 	22D6H 			//1316 	17DF

		//;control.c: 354: {;control.c: 355: BeepEnable(0);
		LDWI 	0H 			//1318 	4E00
		LCALL 	5D7CH, 0H 		//131A 	2CBE 302E
		RESET  			//131E 	40FF

		//;control.c: 357: break;
		RET 	0H 			//1320 	4012

		//;control.c: 361: else if (RunData.DC12_V < 600)
		LDWI 	58H 			//1322 	4E58
		SUBWR 	6H, 0H, 1H 		//1324 	9D06
		LDWI 	2H 			//1326 	4E02
		SUBWRB 	7H, 0H, 1H 	//1328 	9907
		BTSC 	D8H, 0H, 0H 		//132A 	F0D8
		RET 	0H 			//132C 	4012

		//;control.c: 362: {;control.c: 363: RunData.SysSta = 0xFF;
		SETR 	2H, 1H 			//132E 	A902

		//;control.c: 365: LATDbits.LATD7 = 1;
		BSR 	8CH, 7H, 0H 		//1330 	CE8C

		//;control.c: 366: for (i = 0; i < 16; i++)
		LDWI 	0H 			//1332 	4E00
		STR 	4AH, 0H 			//1334 	AE4A
		LDWI 	0H 			//1336 	4E00
		STR 	49H, 0H 			//1338 	AE49

		//;control.c: 367: DisBuf[i] = 0;
		LDR 	49H, 0H, 0H 		//133A 	9049
		ADDWI 	BAH 			//133C 	4FBA
		STR 	D9H, 0H 			//133E 	AED9
		CLRR 	DAH, 0H 		//1340 	AADA
		LDWI 	0H 			//1342 	4E00
		STR 	DFH, 0H 			//1344 	AEDF
		INRSNZ 	49H, 1H, 0H 	//1346 	8A49
		INCR 	4AH, 1H, 0H 		//1348 	6A4A
		LDR 	4AH, 0H, 0H 		//134A 	904A
		BNZ 	1356H 			//134C 	2104
		LDWI 	10H 			//134E 	4E10
		SUBWR 	49H, 0H, 0H 	//1350 	9C49
		BTSS 	D8H, 0H, 0H 		//1352 	E0D8
		BRA 	233AH 			//1354 	17F2

		//;control.c: 368: Update_Display();
		LCALL 	5F74H, 0H 		//1356 	2CBA 302F

		//;control.c: 369: E2prom_WriteData();
		LCALL 	3936H, 0H 		//135A 	2C9B 301C

		//;control.c: 370: TM1629_Luminance(8);
		LDWI 	8H 			//135E 	4E08
		LCALL 	47C4H, 0H 		//1360 	2CE2 3023

		//;control.c: 372: Display_SysSta(0);
		LDWI 	0H 			//1364 	4E00
		LCALL 	58D0H, 0H 		//1366 	2C68 302C

		//;control.c: 373: RunData.AlarmSwitch = 0;
		LDWI 	0H 			//136A 	4E00
		MOVLB 	1H 			//136C 	4101
		STR 	3CH, 1H 			//136E 	AF3C
		LDWI 	0H 			//1370 	4E00
		STR 	3BH, 1H 			//1372 	AF3B

		//;control.c: 375: {;control.c: 376: j++;
		INRSNZ 	47H, 1H, 0H 	//1374 	8A47
		INCR 	48H, 1H, 0H 		//1376 	6A48

		//;control.c: 377: if (j > 100)
		LDR 	48H, 0H, 0H 		//1378 	9048
		BNZ 	1384H 			//137A 	2104
		LDWI 	65H 			//137C 	4E65
		SUBWR 	47H, 0H, 0H 	//137E 	9C47
		BTSS 	D8H, 0H, 0H 		//1380 	E0D8
		BRA 	1398H 			//1382 	100A

		//;control.c: 378: {;control.c: 379: j = 0;
		LDWI 	0H 			//1384 	4E00
		STR 	48H, 0H 			//1386 	AE48
		LDWI 	0H 			//1388 	4E00
		STR 	47H, 0H 			//138A 	AE47

		//;control.c: 380: RunData.StandbySta = 1;
		LDWI 	1H 			//138C 	4E01
		STR 	2DH, 1H 			//138E 	AF2D

		//;control.c: 381: Cmd_Send();
		LCALL 	24F4H, 0H 		//1390 	2C7A 3012

		//;control.c: 382: if (RunData.PowkeyFlag == 1)
		MOVLB 	1H 			//1394 	4101
		DECR 	0H, 0H, 1H 		//1396 	4500
		CLRWDT  			//1398 	4004

		//;control.c: 387: Cmd_Process();
		LCALL 	3BA2H, 0H 		//139A 	2CD1 301D

		//;control.c: 388: if (RunData.PowkeyFlag == 0)
		LDR 	0H, 0H, 1H 		//139E 	9100
		BTSS 	D8H, 2H, 0H 		//13A0 	E4D8
		BRA 	1402H 			//13A2 	102F

		//;control.c: 389: {;control.c: 390: if(RunData.Power_After_OnFlag_Time >= 3 || RunData.Po
		//+                          wer_After_OnFlag == 0){
		BTSC 	5EH, 7H, 1H 		//13A4 	FF5E
		BRA 	13B4H 			//13A6 	1006
		LDR 	5EH, 0H, 1H 		//13A8 	915E
		BNZ 	13BCH 			//13AA 	2108
		LDWI 	3H 			//13AC 	4E03
		SUBWR 	5DH, 0H, 1H 	//13AE 	9D5D
		BTSC 	D8H, 0H, 0H 		//13B0 	F0D8
		BRA 	13BCH 			//13B2 	1004
		LDR 	5BH, 0H, 1H 		//13B4 	915B
		IORWR 	5CH, 0H, 1H 	//13B6 	515C
		BTSS 	D8H, 2H, 0H 		//13B8 	E4D8
		BRA 	13F4H 			//13BA 	101C

		//;control.c: 391: Alarm_Sound(0);
		LDWI 	0H 			//13BC 	4E00
		LCALL 	43B8H, 0H 		//13BE 	2CDC 3021

		//;control.c: 392: if (RunData.AlarmLEDCount < 250)
		MOVLB 	1H 			//13C2 	4101
		LDR 	42H, 0H, 1H 		//13C4 	9142
		BNZ 	13D8H 			//13C6 	2108
		LDWI 	FAH 			//13C8 	4EFA
		SUBWR 	41H, 0H, 1H 	//13CA 	9D41
		BTSC 	D8H, 0H, 0H 		//13CC 	F0D8
		BRA 	13D8H 			//13CE 	1004

		//;control.c: 393: Display_SysSta(3);
		LDWI 	3H 			//13D0 	4E03
		LCALL 	58D0H, 0H 		//13D2 	2C68 302C
		BRA 	13F4H 			//13D6 	100E

		//;control.c: 394: else if (RunData.AlarmLEDCount < 500)
		LDWI 	F4H 			//13D8 	4EF4
		SUBWR 	41H, 0H, 1H 	//13DA 	9D41
		LDWI 	1H 			//13DC 	4E01
		SUBWRB 	42H, 0H, 1H 	//13DE 	9942
		BTSC 	D8H, 0H, 0H 		//13E0 	F0D8
		BRA 	13ECH 			//13E2 	1004

		//;control.c: 395: Display_SysSta(0);
		LDWI 	0H 			//13E4 	4E00
		LCALL 	58D0H, 0H 		//13E6 	2C68 302C
		BRA 	13F4H 			//13EA 	1004

		//;control.c: 396: else;control.c: 397: RunData.AlarmLEDCount = 0;
		LDWI 	0H 			//13EC 	4E00
		STR 	42H, 1H 			//13EE 	AF42
		LDWI 	0H 			//13F0 	4E00
		STR 	41H, 1H 			//13F2 	AF41

		//;control.c: 398: };control.c: 400: Label_CloseAlarm(RunData.AlarmSwitch,Engineering_Patt
		//+                          ern.Led_Dispaly_CloseAlarm);
		MOVFF 	69H, AH 		//13F4 	0069 300A
		MOVLB 	1H 			//13F8 	4101
		LDR 	3BH, 0H, 1H 		//13FA 	913B
		LCALL 	5D26H, 0H 		//13FC 	2C93 302E

		//;control.c: 401: }
		BRA 	1442H 			//1400 	1020

		//;control.c: 402: else;control.c: 403: {;control.c: 404: AlarmSound.count = 0;
		LDWI 	0H 			//1402 	4E00
		MOVLB 	0H 			//1404 	4100
		STR 	7BH, 1H 			//1406 	AF7B
		LDWI 	0H 			//1408 	4E00
		STR 	7AH, 1H 			//140A 	AF7A

		//;control.c: 405: AlarmSound.step = 0;
		LDWI 	0H 			//140C 	4E00
		STR 	7CH, 1H 			//140E 	AF7C

		//;control.c: 406: PlaySound(0xFD);
		LDWI 	FDH 			//1410 	4EFD
		LCALL 	4AE2H, 0H 		//1412 	2C71 3025

		//;control.c: 407: RunData.Power_After_OnFlag = 1;
		LDWI 	0H 			//1416 	4E00
		MOVLB 	1H 			//1418 	4101
		STR 	5CH, 1H 			//141A 	AF5C
		LDWI 	1H 			//141C 	4E01
		STR 	5BH, 1H 			//141E 	AF5B

		//;control.c: 408: RunData.Power_After_OnFlag_Time = 0;
		LDWI 	0H 			//1420 	4E00
		STR 	5EH, 1H 			//1422 	AF5E
		LDWI 	0H 			//1424 	4E00
		STR 	5DH, 1H 			//1426 	AF5D

		//;control.c: 409: Display_SysSta(0);
		LDWI 	0H 			//1428 	4E00
		LCALL 	58D0H, 0H 		//142A 	2C68 302C

		//;control.c: 410: RunData.AlarmSwitch = 0;
		LDWI 	0H 			//142E 	4E00
		MOVLB 	1H 			//1430 	4101
		STR 	3CH, 1H 			//1432 	AF3C
		LDWI 	0H 			//1434 	4E00
		STR 	3BH, 1H 			//1436 	AF3B

		//;control.c: 411: Label_CloseAlarm(0,Engineering_Pattern.Led_Dispaly_CloseAlarm);
		MOVFF 	69H, AH 		//1438 	0069 300A
		LDWI 	0H 			//143C 	4E00
		LCALL 	5D26H, 0H 		//143E 	2C93 302E

		//;control.c: 412: };control.c: 413: static u8 k = 0;;control.c: 414: if( k >= 100)
		LDWI 	63H 			//1442 	4E63
		MOVLB 	0H 			//1444 	4100
		CPRSGT 	ADH, 1H 		//1446 	A5AD
		BRA 	1454H 			//1448 	1005

		//;control.c: 415: {;control.c: 416: Update_Display();
		LCALL 	5F74H, 0H 		//144A 	2CBA 302F

		//;control.c: 417: k = 0;
		LDWI 	0H 			//144E 	4E00
		MOVLB 	0H 			//1450 	4100
		STR 	ADH, 1H 			//1452 	AFAD

		//;control.c: 418: };control.c: 419: k ++;
		INCR 	ADH, 1H, 1H 		//1454 	6BAD

		//;control.c: 420: IR_MoreCtr();
		LCALL 	3ED2H, 0H 		//1456 	2C69 301F

		//;control.c: 421: BeepCtr1(KeyDat.key_value);
		MOVFF 	71H, 10H 		//145A 	0071 3010
		MOVFF 	72H, 11H 		//145E 	0072 3011
		LCALL 	5492H, 0H 		//1462 	2C49 302A

		//;control.c: 422: key_scan();
		LCALL 	4680H, 0H 		//1466 	2C40 3023

		//;control.c: 425: if(KeyDat.key_short_value == 0x07 && Engineering_Pattern.IKey == 0)
		LDWI 	7H 			//146A 	4E07
		XORWR 	6FH, 0H, 1H 	//146C 	596F
		IORWR 	70H, 0H, 1H 	//146E 	5170
		BTSS 	D8H, 2H, 0H 		//1470 	E4D8
		BRA 	149CH 			//1472 	1014
		LDR 	64H, 0H, 1H 		//1474 	9164
		BTSS 	D8H, 2H, 0H 		//1476 	E4D8
		BRA 	149CH 			//1478 	1011

		//;control.c: 426: {;control.c: 427: RunData.AlarmSwitch = !RunData.AlarmSwitch;
		MOVLB 	1H 			//147A 	4101
		LDR 	3BH, 0H, 1H 		//147C 	913B
		IORWR 	3CH, 0H, 1H 	//147E 	513C
		BTSS 	D8H, 2H, 0H 		//1480 	E4D8
		BRA 	1488H 			//1482 	1002
		LDWI 	1H 			//1484 	4E01
		BRA 	148AH 			//1486 	1001
		LDWI 	0H 			//1488 	4E00
		STR 	3BH, 1H 			//148A 	AF3B
		CLRR 	3CH, 1H 		//148C 	AB3C

		//;control.c: 428: if(RunData.AlarmSwitch == 1)
		DECR 	3BH, 0H, 1H 		//148E 	453B
		IORWR 	3CH, 0H, 1H 	//1490 	513C
		BTSS 	D8H, 2H, 0H 		//1492 	E4D8
		BRA 	149CH 			//1494 	1003

		//;control.c: 429: {;control.c: 430: PlaySound(0xFD);
		LDWI 	FDH 			//1496 	4EFD
		LCALL 	4AE2H, 0H 		//1498 	2C71 3025

		//;control.c: 431: };control.c: 432: };control.c: 433: TSC_Scan();
		LCALL 	5F88H, 0H 		//149C 	2CC4 302F

		//;control.c: 434: if (TSC_DataProcessing() == 1)
		LCALL 	5CE6H, 0H 		//14A0 	2C73 302E
		DECR 	E8H, 1H, 0H 		//14A4 	46E8
		BTSC 	D8H, 2H, 0H 		//14A6 	F4D8

		//;control.c: 435: {;control.c: 436: Get_Key_Demo();
		LCALL 	597EH, 0H 		//14A8 	2CBF 302C

		//;control.c: 437: };control.c: 438: DelayMs(1);
		LDWI 	0H 			//14AC 	4E00
		STR 	CH, 0H 			//14AE 	AE0C
		LDWI 	1H 			//14B0 	4E01
		STR 	BH, 0H 			//14B2 	AE0B
		LCALL 	5B14H, 0H 		//14B4 	2C8A 302D

		//;control.c: 439: if (RunData.DC12_V > 600)
		LDWI 	59H 			//14B8 	4E59
		MOVLB 	1H 			//14BA 	4101
		SUBWR 	6H, 0H, 1H 		//14BC 	9D06
		LDWI 	2H 			//14BE 	4E02
		SUBWRB 	7H, 0H, 1H 	//14C0 	9907
		BTSS 	D8H, 0H, 0H 		//14C2 	E0D8
		BRA 	2374H 			//14C4 	1757

		//;control.c: 440: {;control.c: 441: PlaySound(0xFD);
		LDWI 	FDH 			//14C6 	4EFD
		LCALL 	4AE2H, 0H 		//14C8 	2C71 3025

		//;control.c: 442: BeepEnable(0);
		LDWI 	0H 			//14CC 	4E00
		LCALL 	5D7CH, 0H 		//14CE 	2CBE 302E
		RESET  			//14D2 	40FF

		//;control.c: 445: };control.c: 446: };control.c: 447: };control.c: 448: };control.c: 449:
		//+                           }
		//;control.c: 444: break;
		RET 	0H 			//14D4 	4012

		//;control.c: 450: else;control.c: 451: {;control.c: 452: RunData.ErrCodeSecCount = 0;
		LDWI 	0H 			//14D6 	4E00
		STR 	44H, 1H 			//14D8 	AF44
		LDWI 	0H 			//14DA 	4E00
		STR 	43H, 1H 			//14DC 	AF43

		//;control.c: 453: RunData.SysSta2 = 0;
		LDWI 	0H 			//14DE 	4E00
		STR 	3H, 1H 			//14E0 	AF03

		//;control.c: 454: if (RunData.DC12_V < 600)
		LDWI 	58H 			//14E2 	4E58
		SUBWR 	6H, 0H, 1H 		//14E4 	9D06
		LDWI 	2H 			//14E6 	4E02
		SUBWRB 	7H, 0H, 1H 	//14E8 	9907
		BTSC 	D8H, 0H, 0H 		//14EA 	F0D8
		RET 	0H 			//14EC 	4012

		//;control.c: 455: {;control.c: 463: LATDbits.LATD7 = 1;
		BSR 	8CH, 7H, 0H 		//14EE 	CE8C

		//;control.c: 465: RunData.SysSta = 0xFF;
		SETR 	2H, 1H 			//14F0 	A902

		//;control.c: 466: for (i = 0; i < 16; i++)
		LDWI 	0H 			//14F2 	4E00
		STR 	4AH, 0H 			//14F4 	AE4A
		LDWI 	0H 			//14F6 	4E00
		STR 	49H, 0H 			//14F8 	AE49

		//;control.c: 467: DisBuf[i] = 0;
		LDR 	49H, 0H, 0H 		//14FA 	9049
		ADDWI 	BAH 			//14FC 	4FBA
		STR 	D9H, 0H 			//14FE 	AED9
		CLRR 	DAH, 0H 		//1500 	AADA
		LDWI 	0H 			//1502 	4E00
		STR 	DFH, 0H 			//1504 	AEDF
		INRSNZ 	49H, 1H, 0H 	//1506 	8A49
		INCR 	4AH, 1H, 0H 		//1508 	6A4A
		LDR 	4AH, 0H, 0H 		//150A 	904A
		BNZ 	1516H 			//150C 	2104
		LDWI 	10H 			//150E 	4E10
		SUBWR 	49H, 0H, 0H 	//1510 	9C49
		BTSS 	D8H, 0H, 0H 		//1512 	E0D8
		BRA 	24FAH 			//1514 	17F2

		//;control.c: 468: TM1629_Luminance(0);
		LDWI 	0H 			//1516 	4E00
		LCALL 	47C4H, 0H 		//1518 	2CE2 3023

		//;control.c: 469: Update_Display();
		LCALL 	5F74H, 0H 		//151C 	2CBA 302F

		//;control.c: 470: E2prom_WriteData();
		LCALL 	3936H, 0H 		//1520 	2C9B 301C

		//;control.c: 471: Display_SysSta(0);
		LDWI 	0H 			//1524 	4E00
		LCALL 	58D0H, 0H 		//1526 	2C68 302C

		//;control.c: 473: {;control.c: 474: if ((i % 100) == 0)
		MOVFF 	49H, AH 		//152A 	0049 300A
		MOVFF 	4AH, BH 		//152E 	004A 300B
		LDWI 	0H 			//1532 	4E00
		STR 	DH, 0H 			//1534 	AE0D
		LDWI 	64H 			//1536 	4E64
		STR 	CH, 0H 			//1538 	AE0C
		LCALL 	5814H, 0H 		//153A 	2C0A 302C
		LDR 	AH, 0H, 0H 		//153E 	900A
		IORWR 	BH, 0H, 0H 		//1540 	500B
		BTSC 	D8H, 2H, 0H 		//1542 	F4D8

		//;control.c: 475: Cmd_Send();
		LCALL 	24F4H, 0H 		//1544 	2C7A 3012

		//;control.c: 476: i++;
		INRSNZ 	49H, 1H, 0H 	//1548 	8A49
		INCR 	4AH, 1H, 0H 		//154A 	6A4A
		CLRWDT  			//154C 	4004

		//;control.c: 478: Cmd_Process();
		LCALL 	3BA2H, 0H 		//154E 	2CD1 301D

		//;control.c: 479: DelayMs(1);
		LDWI 	0H 			//1552 	4E00
		STR 	CH, 0H 			//1554 	AE0C
		LDWI 	1H 			//1556 	4E01
		STR 	BH, 0H 			//1558 	AE0B
		LCALL 	5B14H, 0H 		//155A 	2C8A 302D

		//;control.c: 480: if (RunData.DC12_V > 600)
		LDWI 	59H 			//155E 	4E59
		MOVLB 	1H 			//1560 	4101
		SUBWR 	6H, 0H, 1H 		//1562 	9D06
		LDWI 	2H 			//1564 	4E02
		SUBWRB 	7H, 0H, 1H 	//1566 	9907
		BTSS 	D8H, 0H, 0H 		//1568 	E0D8
		BRA 	252AH 			//156A 	17DF

		//;control.c: 481: {;control.c: 482: BeepEnable(0);
		LDWI 	0H 			//156C 	4E00
		LCALL 	5D7CH, 0H 		//156E 	2CBE 302E

		//;control.c: 483: RunData.StandbySta = 1;
		LDWI 	1H 			//1572 	4E01
		MOVLB 	1H 			//1574 	4101
		STR 	2DH, 1H 			//1576 	AF2D
		RESET  			//1578 	40FF

		//;control.c: 485: break;
		RET 	0H 			//157A 	4012

		//;control.c: 103: static int count = 0;;control.c: 104: static int lastTiming = 0;;contro
		//+                          l.c: 105: if ((KeyDat.key_short_value == 0x02) || (KeyDat.key_long_value == 0x02))
		LDWI 	2H 			//157C 	4E02
		MOVLB 	0H 			//157E 	4100
		XORWR 	6FH, 0H, 1H 	//1580 	596F
		IORWR 	70H, 0H, 1H 	//1582 	5170
		BTSC 	D8H, 2H, 0H 		//1584 	F4D8
		BRA 	1592H 			//1586 	1005
		LDWI 	2H 			//1588 	4E02
		XORWR 	6DH, 0H, 1H 	//158A 	596D
		IORWR 	6EH, 0H, 1H 	//158C 	516E
		BTSS 	D8H, 2H, 0H 		//158E 	E4D8
		BRA 	16A6H 			//1590 	108A

		//;control.c: 106: {;control.c: 108: RunData.Error_Flag = 0;
		LDWI 	0H 			//1592 	4E00
		MOVLB 	1H 			//1594 	4101
		STR 	45H, 1H 			//1596 	AF45

		//;control.c: 109: RunData.Error_Delay_Time = 0;
		LDWI 	0H 			//1598 	4E00
		STR 	46H, 1H 			//159A 	AF46

		//;control.c: 110: count++;
		MOVLB 	0H 			//159C 	4100
		INRSNZ 	89H, 1H, 1H 	//159E 	8B89
		INCR 	8AH, 1H, 1H 		//15A0 	6B8A

		//;control.c: 111: if ((count > 100) && (KeyDat.key_long_value == 0x02))
		BTSC 	8AH, 7H, 1H 		//15A2 	FF8A
		BRA 	15EEH 			//15A4 	1024
		LDR 	8AH, 0H, 1H 		//15A6 	918A
		BNZ 	15B2H 			//15A8 	2104
		LDWI 	65H 			//15AA 	4E65
		SUBWR 	89H, 0H, 1H 	//15AC 	9D89
		BTSS 	D8H, 0H, 0H 		//15AE 	E0D8
		BRA 	15EEH 			//15B0 	101E
		LDWI 	2H 			//15B2 	4E02
		XORWR 	6DH, 0H, 1H 	//15B4 	596D
		IORWR 	6EH, 0H, 1H 	//15B6 	516E
		BTSS 	D8H, 2H, 0H 		//15B8 	E4D8
		BRA 	15EEH 			//15BA 	1019

		//;control.c: 112: {;control.c: 113: if (lastTiming != 510)
		LDWI 	FEH 			//15BC 	4EFE
		XORWR 	87H, 0H, 1H 	//15BE 	5987
		BNZ 	15C8H 			//15C0 	2103
		DECR 	88H, 0H, 1H 		//15C2 	4588
		BTSC 	D8H, 2H, 0H 		//15C4 	F4D8
		BRA 	15E4H 			//15C6 	100E

		//;control.c: 114: {;control.c: 116: if(KeyDat.key_long_value == 0)
		LDR 	6DH, 0H, 1H 		//15C8 	916D
		IORWR 	6EH, 0H, 1H 	//15CA 	516E
		BTSC 	D8H, 2H, 0H 		//15CC 	F4D8

		//;control.c: 117: {;control.c: 118: RunData.TOUCHkey_Finally_Time = lastTiming;
		MOVFF 	87H, 147H 		//15CE 	0087 3147

		//;control.c: 119: };control.c: 120: RunData.Timing += 30;
		LDWI 	1EH 			//15D2 	4E1E
		MOVLB 	1H 			//15D4 	4101
		ADDWR 	12H, 1H, 1H 	//15D6 	6712
		LDWI 	0H 			//15D8 	4E00
		ADDWRC 	13H, 1H, 1H 	//15DA 	6313

		//;control.c: 121: lastTiming = RunData.Timing;
		MOVFF 	112H, 87H 		//15DC 	0112 3087
		MOVFF 	113H, 88H 		//15E0 	0113 3088

		//;control.c: 122: };control.c: 123: count = 0;
		LDWI 	0H 			//15E4 	4E00
		MOVLB 	0H 			//15E6 	4100
		STR 	8AH, 1H 			//15E8 	AF8A
		LDWI 	0H 			//15EA 	4E00
		STR 	89H, 1H 			//15EC 	AF89

		//;control.c: 124: };control.c: 125: if (KeyDat.key_short_value == 0x02)
		LDWI 	2H 			//15EE 	4E02
		XORWR 	6FH, 0H, 1H 	//15F0 	596F
		IORWR 	70H, 0H, 1H 	//15F2 	5170
		BTSS 	D8H, 2H, 0H 		//15F4 	E4D8
		BRA 	1602H 			//15F6 	1005

		//;control.c: 126: RunData.Timing += 30;
		LDWI 	1EH 			//15F8 	4E1E
		MOVLB 	1H 			//15FA 	4101
		ADDWR 	12H, 1H, 1H 	//15FC 	6712
		LDWI 	0H 			//15FE 	4E00
		ADDWRC 	13H, 1H, 1H 	//1600 	6313

		//;control.c: 127: if (RunData.Timing > 480)
		MOVLB 	1H 			//1602 	4101
		BTSC 	13H, 7H, 1H 		//1604 	FF13
		BRA 	1630H 			//1606 	1014
		LDWI 	E1H 			//1608 	4EE1
		SUBWR 	12H, 0H, 1H 	//160A 	9D12
		LDWI 	1H 			//160C 	4E01
		SUBWRB 	13H, 0H, 1H 	//160E 	9913
		BTSS 	D8H, 0H, 0H 		//1610 	E0D8
		BRA 	1630H 			//1612 	100E

		//;control.c: 128: {;control.c: 129: RunData.Timing = 0;
		LDWI 	0H 			//1614 	4E00
		STR 	13H, 1H 			//1616 	AF13
		LDWI 	0H 			//1618 	4E00
		STR 	12H, 1H 			//161A 	AF12

		//;control.c: 131: RunData.VoiceNum = continuous_oxygen_therapy;
		LDWI 	1AH 			//161C 	4E1A
		STR 	2FH, 1H 			//161E 	AF2F

		//;control.c: 132: RunData.VoiceNumLast = RunData.VoiceNum;
		MOVFF 	12FH, 135H 		//1620 	012F 3135

		//;control.c: 133: if(RunData.VoiceEnable == 1)
		DECR 	30H, 0H, 1H 		//1624 	4530
		BTSS 	D8H, 2H, 0H 		//1626 	E4D8
		BRA 	1630H 			//1628 	1003

		//;control.c: 134: {;control.c: 135: PlaySound(RunData.VoiceNum);
		LDR 	2FH, 0H, 1H 		//162A 	912F
		LCALL 	4AE2H, 0H 		//162C 	2C71 3025

		//;control.c: 136: };control.c: 137: };control.c: 139: RunData.Timing = RunData.Timing % 3
		//+                          0 == 0 ? RunData.Timing : RunData.Timing - RunData.Timing % 30 + 30;
		MOVFF 	112H, AH 		//1630 	0112 300A
		MOVFF 	113H, BH 		//1634 	0113 300B
		LDWI 	0H 			//1638 	4E00
		STR 	DH, 0H 			//163A 	AE0D
		LDWI 	1EH 			//163C 	4E1E
		STR 	CH, 0H 			//163E 	AE0C
		LCALL 	4BC8H, 0H 		//1640 	2CE4 3025
		LDR 	AH, 0H, 0H 		//1644 	900A
		IORWR 	BH, 0H, 0H 		//1646 	500B
		BTSC 	D8H, 2H, 0H 		//1648 	F4D8
		BRA 	1682H 			//164A 	101B
		MOVFF 	112H, AH 		//164C 	0112 300A
		MOVFF 	113H, BH 		//1650 	0113 300B
		LDWI 	0H 			//1654 	4E00
		STR 	DH, 0H 			//1656 	AE0D
		LDWI 	1EH 			//1658 	4E1E
		STR 	CH, 0H 			//165A 	AE0C
		LCALL 	4BC8H, 0H 		//165C 	2CE4 3025
		LFSR 	2H, 121H 		//1660 	2E21 3012
		MOVFF 	FDEH, 11H 		//1664 	0FDE 3011
		MOVFF 	FDDH, 12H 		//1668 	0FDD 3012
		LDR 	AH, 0H, 0H 		//166C 	900A
		SUBWR 	11H, 1H, 0H 	//166E 	9E11
		LDR 	BH, 0H, 0H 		//1670 	900B
		SUBWRB 	12H, 1H, 0H 	//1672 	9A12
		LDWI 	1EH 			//1674 	4E1E
		ADDWR 	11H, 0H, 0H 	//1676 	6411
		STR 	13H, 0H 			//1678 	AE13
		LDWI 	0H 			//167A 	4E00
		ADDWRC 	12H, 0H, 0H 	//167C 	6012
		STR 	14H, 0H 			//167E 	AE14
		BRA 	168AH 			//1680 	1004
		MOVFF 	112H, 13H 		//1682 	0112 3013
		MOVFF 	113H, 14H 		//1686 	0113 3014
		MOVFF 	13H, 112H 		//168A 	0013 3112
		MOVFF 	14H, 113H 		//168E 	0014 3113

		//;control.c: 140: if (RunData.Timing)
		MOVLB 	1H 			//1692 	4101
		LDR 	12H, 0H, 1H 		//1694 	9112
		IORWR 	13H, 0H, 1H 	//1696 	5113
		BTSC 	D8H, 2H, 0H 		//1698 	F4D8
		BRA 	16A0H 			//169A 	1002

		//;control.c: 141: RunData.TimingFlag = 1;
		LDWI 	1H 			//169C 	4E01
		BRA 	16A2H 			//169E 	1001

		//;control.c: 142: else;control.c: 143: RunData.TimingFlag = 0;
		LDWI 	0H 			//16A0 	4E00
		STR 	14H, 1H 			//16A2 	AF14
		BRA 	16AEH 			//16A4 	1004

		//;control.c: 145: else;control.c: 146: {;control.c: 147: lastTiming = 0;
		LDWI 	0H 			//16A6 	4E00
		STR 	88H, 1H 			//16A8 	AF88
		LDWI 	0H 			//16AA 	4E00
		STR 	87H, 1H 			//16AC 	AF87

		//;control.c: 148: };control.c: 150: if ((KeyDat.key_short_value == 0x03) || (KeyDat.key_l
		//+                          ong_value == 0x03))
		LDWI 	3H 			//16AE 	4E03
		MOVLB 	0H 			//16B0 	4100
		XORWR 	6FH, 0H, 1H 	//16B2 	596F
		IORWR 	70H, 0H, 1H 	//16B4 	5170
		BTSC 	D8H, 2H, 0H 		//16B6 	F4D8
		BRA 	16C4H 			//16B8 	1005
		LDWI 	3H 			//16BA 	4E03
		XORWR 	6DH, 0H, 1H 	//16BC 	596D
		IORWR 	6EH, 0H, 1H 	//16BE 	516E
		BTSS 	D8H, 2H, 0H 		//16C0 	E4D8
		BRA 	1784H 			//16C2 	1060

		//;control.c: 151: {;control.c: 152: count++;
		INRSNZ 	89H, 1H, 1H 	//16C4 	8B89
		INCR 	8AH, 1H, 1H 		//16C6 	6B8A

		//;control.c: 153: if ((count > 50) && (KeyDat.key_long_value == 0x03))
		BTSC 	8AH, 7H, 1H 		//16C8 	FF8A
		BRA 	16F6H 			//16CA 	1015
		LDR 	8AH, 0H, 1H 		//16CC 	918A
		BNZ 	16D8H 			//16CE 	2104
		LDWI 	33H 			//16D0 	4E33
		SUBWR 	89H, 0H, 1H 	//16D2 	9D89
		BTSS 	D8H, 0H, 0H 		//16D4 	E0D8
		BRA 	16F6H 			//16D6 	100F
		LDWI 	3H 			//16D8 	4E03
		XORWR 	6DH, 0H, 1H 	//16DA 	596D
		IORWR 	6EH, 0H, 1H 	//16DC 	516E
		BTSS 	D8H, 2H, 0H 		//16DE 	E4D8
		BRA 	16F6H 			//16E0 	100A

		//;control.c: 154: {;control.c: 155: RunData.Timing -= 30;
		MOVLB 	1H 			//16E2 	4101
		LDWI 	E2H 			//16E4 	4EE2
		ADDWR 	12H, 1H, 1H 	//16E6 	6712
		LDWI 	FFH 			//16E8 	4EFF
		ADDWRC 	13H, 1H, 1H 	//16EA 	6313

		//;control.c: 156: count = 0;
		LDWI 	0H 			//16EC 	4E00
		MOVLB 	0H 			//16EE 	4100
		STR 	8AH, 1H 			//16F0 	AF8A
		LDWI 	0H 			//16F2 	4E00
		STR 	89H, 1H 			//16F4 	AF89

		//;control.c: 157: };control.c: 158: if (KeyDat.key_short_value == 0x03)
		LDWI 	3H 			//16F6 	4E03
		XORWR 	6FH, 0H, 1H 	//16F8 	596F
		IORWR 	70H, 0H, 1H 	//16FA 	5170
		BTSS 	D8H, 2H, 0H 		//16FC 	E4D8
		BRA 	170AH 			//16FE 	1005

		//;control.c: 159: RunData.Timing -= 30;
		MOVLB 	1H 			//1700 	4101
		LDWI 	E2H 			//1702 	4EE2
		ADDWR 	12H, 1H, 1H 	//1704 	6712
		LDWI 	FFH 			//1706 	4EFF
		ADDWRC 	13H, 1H, 1H 	//1708 	6313

		//;control.c: 160: if (RunData.Timing <= 0)
		MOVLB 	1H 			//170A 	4101
		BTSC 	13H, 7H, 1H 		//170C 	FF13
		BRA 	171AH 			//170E 	1005
		LDR 	13H, 0H, 1H 		//1710 	9113
		BNZ 	1722H 			//1712 	2107
		DECR 	12H, 0H, 1H 		//1714 	4512
		BTSC 	D8H, 0H, 0H 		//1716 	F0D8
		BRA 	1722H 			//1718 	1004

		//;control.c: 161: RunData.Timing = 0;
		LDWI 	0H 			//171A 	4E00
		STR 	13H, 1H 			//171C 	AF13
		LDWI 	0H 			//171E 	4E00
		STR 	12H, 1H 			//1720 	AF12

		//;control.c: 162: RunData.Timing = RunData.Timing % 10 == 0 ? RunData.Timing : RunData.Ti
		//+                          ming - RunData.Timing % 10;
		MOVFF 	112H, AH 		//1722 	0112 300A
		MOVFF 	113H, BH 		//1726 	0113 300B
		LDWI 	0H 			//172A 	4E00
		STR 	DH, 0H 			//172C 	AE0D
		LDWI 	AH 			//172E 	4E0A
		STR 	CH, 0H 			//1730 	AE0C
		LCALL 	4BC8H, 0H 		//1732 	2CE4 3025
		LDR 	AH, 0H, 0H 		//1736 	900A
		IORWR 	BH, 0H, 0H 		//1738 	500B
		BTSC 	D8H, 2H, 0H 		//173A 	F4D8
		BRA 	1762H 			//173C 	1012
		MOVFF 	112H, AH 		//173E 	0112 300A
		MOVFF 	113H, BH 		//1742 	0113 300B
		LDWI 	0H 			//1746 	4E00
		STR 	DH, 0H 			//1748 	AE0D
		LDWI 	AH 			//174A 	4E0A
		STR 	CH, 0H 			//174C 	AE0C
		LCALL 	4BC8H, 0H 		//174E 	2CE4 3025
		LDR 	AH, 0H, 0H 		//1752 	900A
		MOVLB 	1H 			//1754 	4101
		SUBWR 	12H, 0H, 1H 	//1756 	9D12
		STR 	15H, 0H 			//1758 	AE15
		LDR 	BH, 0H, 0H 		//175A 	900B
		SUBWRB 	13H, 0H, 1H 	//175C 	9913
		STR 	16H, 0H 			//175E 	AE16
		BRA 	176AH 			//1760 	1004
		MOVFF 	112H, 15H 		//1762 	0112 3015
		MOVFF 	113H, 16H 		//1766 	0113 3016
		MOVFF 	15H, 112H 		//176A 	0015 3112
		MOVFF 	16H, 113H 		//176E 	0016 3113

		//;control.c: 163: if (RunData.Timing)
		MOVLB 	1H 			//1772 	4101
		LDR 	12H, 0H, 1H 		//1774 	9112
		IORWR 	13H, 0H, 1H 	//1776 	5113
		BTSC 	D8H, 2H, 0H 		//1778 	F4D8
		BRA 	1780H 			//177A 	1002

		//;control.c: 164: RunData.TimingFlag = 1;
		LDWI 	1H 			//177C 	4E01
		BRA 	1782H 			//177E 	1001

		//;control.c: 165: else;control.c: 166: RunData.TimingFlag = 0;
		LDWI 	0H 			//1780 	4E00
		STR 	14H, 1H 			//1782 	AF14

		//;control.c: 167: };control.c: 169: if ((KeyDat.key_short_value == 0x04) || (KeyDat.key_l
		//+                          ong_value == 0x04))
		LDWI 	4H 			//1784 	4E04
		MOVLB 	0H 			//1786 	4100
		XORWR 	6FH, 0H, 1H 	//1788 	596F
		IORWR 	70H, 0H, 1H 	//178A 	5170
		BTSC 	D8H, 2H, 0H 		//178C 	F4D8
		BRA 	179AH 			//178E 	1005
		LDWI 	4H 			//1790 	4E04
		XORWR 	6DH, 0H, 1H 	//1792 	596D
		IORWR 	6EH, 0H, 1H 	//1794 	516E
		BTSS 	D8H, 2H, 0H 		//1796 	E4D8
		BRA 	17F2H 			//1798 	102C

		//;control.c: 170: {;control.c: 171: count++;
		INRSNZ 	89H, 1H, 1H 	//179A 	8B89
		INCR 	8AH, 1H, 1H 		//179C 	6B8A

		//;control.c: 172: if ((count > 100) && (KeyDat.key_long_value == 0x04))
		BTSC 	8AH, 7H, 1H 		//179E 	FF8A
		BRA 	17C8H 			//17A0 	1013
		LDR 	8AH, 0H, 1H 		//17A2 	918A
		BNZ 	17AEH 			//17A4 	2104
		LDWI 	65H 			//17A6 	4E65
		SUBWR 	89H, 0H, 1H 	//17A8 	9D89
		BTSS 	D8H, 0H, 0H 		//17AA 	E0D8
		BRA 	17C8H 			//17AC 	100D
		LDWI 	4H 			//17AE 	4E04
		XORWR 	6DH, 0H, 1H 	//17B0 	596D
		IORWR 	6EH, 0H, 1H 	//17B2 	516E
		BTSS 	D8H, 2H, 0H 		//17B4 	E4D8
		BRA 	17C8H 			//17B6 	1008

		//;control.c: 173: {;control.c: 174: RunData.FlowSet += 1;
		MOVLB 	1H 			//17B8 	4101
		INRSNZ 	4H, 1H, 1H 	//17BA 	8B04
		INCR 	5H, 1H, 1H 		//17BC 	6B05

		//;control.c: 175: count = 0;
		LDWI 	0H 			//17BE 	4E00
		MOVLB 	0H 			//17C0 	4100
		STR 	8AH, 1H 			//17C2 	AF8A
		LDWI 	0H 			//17C4 	4E00
		STR 	89H, 1H 			//17C6 	AF89

		//;control.c: 176: };control.c: 177: if (KeyDat.key_short_value == 0x04)
		LDWI 	4H 			//17C8 	4E04
		XORWR 	6FH, 0H, 1H 	//17CA 	596F
		IORWR 	70H, 0H, 1H 	//17CC 	5170
		BTSS 	D8H, 2H, 0H 		//17CE 	E4D8
		BRA 	17D8H 			//17D0 	1003

		//;control.c: 178: RunData.FlowSet += 1;
		MOVLB 	1H 			//17D2 	4101
		INRSNZ 	4H, 1H, 1H 	//17D4 	8B04
		INCR 	5H, 1H, 1H 		//17D6 	6B05

		//;control.c: 179: if (RunData.FlowSet > 7 * 10)
		MOVLB 	1H 			//17D8 	4101
		BTSC 	5H, 7H, 1H 		//17DA 	FF05
		BRA 	17F2H 			//17DC 	100A
		LDR 	5H, 0H, 1H 		//17DE 	9105
		BNZ 	17EAH 			//17E0 	2104
		LDWI 	47H 			//17E2 	4E47
		SUBWR 	4H, 0H, 1H 		//17E4 	9D04
		BTSS 	D8H, 0H, 0H 		//17E6 	E0D8
		BRA 	17F2H 			//17E8 	1004

		//;control.c: 180: RunData.FlowSet = 7 * 10;
		LDWI 	0H 			//17EA 	4E00
		STR 	5H, 1H 			//17EC 	AF05
		LDWI 	46H 			//17EE 	4E46
		STR 	4H, 1H 			//17F0 	AF04

		//;control.c: 181: };control.c: 182: if ((KeyDat.key_short_value == 0x05) || (KeyDat.key_l
		//+                          ong_value == 0x05))
		LDWI 	5H 			//17F2 	4E05
		MOVLB 	0H 			//17F4 	4100
		XORWR 	6FH, 0H, 1H 	//17F6 	596F
		IORWR 	70H, 0H, 1H 	//17F8 	5170
		BTSC 	D8H, 2H, 0H 		//17FA 	F4D8
		BRA 	1808H 			//17FC 	1005
		LDWI 	5H 			//17FE 	4E05
		XORWR 	6DH, 0H, 1H 	//1800 	596D
		IORWR 	6EH, 0H, 1H 	//1802 	516E
		BTSS 	D8H, 2H, 0H 		//1804 	E4D8
		RET 	0H 			//1806 	4012

		//;control.c: 183: {;control.c: 184: count++;
		INRSNZ 	89H, 1H, 1H 	//1808 	8B89
		INCR 	8AH, 1H, 1H 		//180A 	6B8A

		//;control.c: 185: if ((count > 100) && (KeyDat.key_long_value == 0x05))
		BTSC 	8AH, 7H, 1H 		//180C 	FF8A
		BRA 	1838H 			//180E 	1014
		LDR 	8AH, 0H, 1H 		//1810 	918A
		BNZ 	181CH 			//1812 	2104
		LDWI 	65H 			//1814 	4E65
		SUBWR 	89H, 0H, 1H 	//1816 	9D89
		BTSS 	D8H, 0H, 0H 		//1818 	E0D8
		BRA 	1838H 			//181A 	100E
		LDWI 	5H 			//181C 	4E05
		XORWR 	6DH, 0H, 1H 	//181E 	596D
		IORWR 	6EH, 0H, 1H 	//1820 	516E
		BTSS 	D8H, 2H, 0H 		//1822 	E4D8
		BRA 	1838H 			//1824 	1009

		//;control.c: 186: {;control.c: 187: RunData.FlowSet -= 1;
		MOVLB 	1H 			//1826 	4101
		DECR 	4H, 1H, 1H 		//1828 	4704
		BTSS 	D8H, 0H, 0H 		//182A 	E0D8
		DECR 	5H, 1H, 1H 		//182C 	4705

		//;control.c: 189: count = 0;
		LDWI 	0H 			//182E 	4E00
		MOVLB 	0H 			//1830 	4100
		STR 	8AH, 1H 			//1832 	AF8A
		LDWI 	0H 			//1834 	4E00
		STR 	89H, 1H 			//1836 	AF89

		//;control.c: 190: };control.c: 191: if (KeyDat.key_short_value == 0x05)
		LDWI 	5H 			//1838 	4E05
		XORWR 	6FH, 0H, 1H 	//183A 	596F
		IORWR 	70H, 0H, 1H 	//183C 	5170
		BTSS 	D8H, 2H, 0H 		//183E 	E4D8
		BRA 	184AH 			//1840 	1004

		//;control.c: 192: RunData.FlowSet -= 1;
		MOVLB 	1H 			//1842 	4101
		DECR 	4H, 1H, 1H 		//1844 	4704
		BTSS 	D8H, 0H, 0H 		//1846 	E0D8
		DECR 	5H, 1H, 1H 		//1848 	4705

		//;control.c: 193: if (RunData.FlowSet < 5)
		MOVLB 	1H 			//184A 	4101
		BTSC 	5H, 7H, 1H 		//184C 	FF05
		BRA 	185CH 			//184E 	1006
		LDR 	5H, 0H, 1H 		//1850 	9105
		BNZ 	1864H 			//1852 	2108
		LDWI 	5H 			//1854 	4E05
		SUBWR 	4H, 0H, 1H 		//1856 	9D04
		BTSC 	D8H, 0H, 0H 		//1858 	F0D8
		RET 	0H 			//185A 	4012

		//;control.c: 194: RunData.FlowSet = 5;
		LDWI 	0H 			//185C 	4E00
		STR 	5H, 1H 			//185E 	AF05
		LDWI 	5H 			//1860 	4E05
		STR 	4H, 1H 			//1862 	AF04
		RET 	0H 			//1864 	4012
		BRA 	1B2CH 			//1866 	1162
		LDWI 	25H 			//1868 	4E25
		XORWR 	21H, 0H, 0H 	//186A 	5821
		BTSC 	D8H, 2H, 0H 		//186C 	F4D8
		BRA 	18CEH 			//186E 	102F
		LDR 	16H, 0H, 0H 		//1870 	9016
		STR 	D9H, 0H 			//1872 	AED9
		CLRR 	DAH, 0H 		//1874 	AADA
		LDWI 	2H 			//1876 	4E02
		ADDWR 	D9H, 1H, 0H 	//1878 	66D9
		LDR 	DEH, 0H, 0H 		//187A 	90DE
		IORWR 	DEH, 0H, 0H 	//187C 	50DE
		BTSC 	D8H, 2H, 0H 		//187E 	F4D8
		BRA 	18A6H 			//1880 	1012
		LDR 	16H, 0H, 0H 		//1882 	9016
		STR 	D9H, 0H 			//1884 	AED9
		CLRR 	DAH, 0H 		//1886 	AADA
		LDWI 	2H 			//1888 	4E02
		ADDWR 	D9H, 1H, 0H 	//188A 	66D9
		RCALL 	1890H 			//188C 	1801
		BRA 	1B2CH 			//188E 	114E
		PUSH  					//1890 	4005
		STR 	FAH, 0H 			//1892 	AEFA
		LDR 	DEH, 0H, 0H 		//1894 	90DE
		STR 	FDH, 0H 			//1896 	AEFD
		LDR 	DEH, 0H, 0H 		//1898 	90DE
		STR 	FEH, 0H 			//189A 	AEFE
		LDR 	F8H, 0H, 0H 		//189C 	90F8
		STR 	FFH, 0H 			//189E 	AEFF
		LDR 	FAH, 0H, 0H 		//18A0 	90FA
		LDR 	21H, 0H, 0H 		//18A2 	9021
		RET 	0H 			//18A4 	4012
		LDR 	16H, 0H, 0H 		//18A6 	9016
		STR 	D9H, 0H 			//18A8 	AED9
		CLRR 	DAH, 0H 		//18AA 	AADA
		MOVFF 	FDEH, 1AH 		//18AC 	0FDE 301A
		MOVFF 	FDDH, 1BH 		//18B0 	0FDD 301B
		MOVFF 	1AH, FD9H 		//18B4 	001A 3FD9
		MOVFF 	1BH, FDAH 		//18B8 	001B 3FDA
		MOVFF 	21H, FDFH 		//18BC 	0021 3FDF
		LDR 	16H, 0H, 0H 		//18C0 	9016
		STR 	D9H, 0H 			//18C2 	AED9
		CLRR 	DAH, 0H 		//18C4 	AADA
		INCR 	DEH, 1H, 0H 		//18C6 	6ADE
		LDWI 	0H 			//18C8 	4E00
		ADDWRC 	DDH, 1H, 0H 	//18CA 	62DD
		BRA 	1B2CH 			//18CC 	112F
		LDWI 	0H 			//18CE 	4E00
		STR 	1EH, 0H 			//18D0 	AE1E
		BRA 	18D8H 			//18D2 	1002
		BSR 	1EH, 7H, 0H 		//18D4 	CE1E
		BRA 	190CH 			//18D6 	101A
		MOVFF 	17H, FF6H 		//18D8 	0017 3FF6
		MOVFF 	18H, FF7H 		//18DC 	0018 3FF7
		INRSNZ 	17H, 1H, 0H 	//18E0 	8A17
		INCR 	18H, 1H, 0H 		//18E2 	6A18
		TBLRD*  			//18E4 	4008
		MOVFF 	FF5H, 21H 		//18E6 	0FF5 3021
		LDR 	21H, 0H, 0H 		//18EA 	9021
		XORWI 	0H 			//18EC 	4A00
		BTSC 	D8H, 2H, 0H 		//18EE 	F4D8
		BRA 	1B44H 			//18F0 	1129
		XORWI 	58H 			//18F2 	4A58
		BTSC 	D8H, 2H, 0H 		//18F4 	F4D8
		BRA 	28D4H 			//18F6 	17EE
		XORWI 	3CH 			//18F8 	4A3C
		BTSC 	D8H, 2H, 0H 		//18FA 	F4D8
		BRA 	190CH 			//18FC 	1007
		XORWI 	DH 			//18FE 	4A0D
		BTSC 	D8H, 2H, 0H 		//1900 	F4D8
		BRA 	190CH 			//1902 	1004
		XORWI 	11H 			//1904 	4A11
		BTSC 	D8H, 2H, 0H 		//1906 	F4D8
		BRA 	28D4H 			//1908 	17E5
		BRA 	1B2CH 			//190A 	1110
		BTSC 	1EH, 7H, 0H 		//190C 	FE1E
		BRA 	193AH 			//190E 	1015
		LDR 	19H, 0H, 0H 		//1910 	9019
		STR 	D9H, 0H 			//1912 	AED9
		CLRR 	DAH, 0H 		//1914 	AADA
		LDWI 	2H 			//1916 	4E02
		ADDWR 	DFH, 1H, 0H 	//1918 	66DF
		SUBWR 	DFH, 0H, 0H 	//191A 	9CDF
		STR 	D9H, 0H 			//191C 	AED9
		CLRR 	DAH, 0H 		//191E 	AADA
		MOVFF 	FDEH, 1FH 		//1920 	0FDE 301F
		MOVFF 	FDEH, 20H 		//1924 	0FDE 3020
		BTSS 	20H, 7H, 0H 		//1928 	EE20
		BRA 	19B4H 			//192A 	1044
		LDWI 	3H 			//192C 	4E03
		IORWR 	1EH, 1H, 0H 	//192E 	521E
		NEGR 	1FH, 0H 		//1930 	AC1F
		COMR 	20H, 1H, 0H 		//1932 	5E20
		BTSC 	D8H, 0H, 0H 		//1934 	F0D8
		INCR 	20H, 1H, 0H 		//1936 	6A20
		BRA 	19B4H 			//1938 	103D
		LDR 	19H, 0H, 0H 		//193A 	9019
		STR 	D9H, 0H 			//193C 	AED9
		CLRR 	DAH, 0H 		//193E 	AADA
		LDWI 	2H 			//1940 	4E02
		ADDWR 	DFH, 1H, 0H 	//1942 	66DF
		SUBWR 	DFH, 0H, 0H 	//1944 	9CDF
		STR 	D9H, 0H 			//1946 	AED9
		CLRR 	DAH, 0H 		//1948 	AADA
		MOVFF 	FDEH, 1FH 		//194A 	0FDE 301F
		MOVFF 	FDEH, 20H 		//194E 	0FDE 3020
		BRA 	19B4H 			//1952 	1030
		LDWI 	1H 			//1954 	4E01
		STR 	21H, 0H 			//1956 	AE21
		LDR 	21H, 0H, 0H 		//1958 	9021
		MULWI 	2H 			//195A 	4D02
		LDWI 	43H 			//195C 	4E43
		ADDWR 	F3H, 0H, 0H 	//195E 	64F3
		STR 	F6H, 0H 			//1960 	AEF6
		LDWI 	7FH 			//1962 	4E7F
		ADDWRC 	F4H, 0H, 0H 	//1964 	60F4
		STR 	F7H, 0H 			//1966 	AEF7
		TBLRD*+  			//1968 	4009
		LDR 	F5H, 0H, 0H 		//196A 	90F5
		SUBWR 	1FH, 0H, 0H 	//196C 	9C1F
		TBLRD*+  			//196E 	4009
		LDR 	F5H, 0H, 0H 		//1970 	90F5
		SUBWRB 	20H, 0H, 0H 	//1972 	9820
		BTSS 	D8H, 0H, 0H 		//1974 	E0D8
		BRA 	19C4H 			//1976 	1026
		INCR 	21H, 1H, 0H 		//1978 	6A21
		LDWI 	5H 			//197A 	4E05
		XORWR 	21H, 0H, 0H 	//197C 	5821
		BTSC 	D8H, 2H, 0H 		//197E 	F4D8
		BRA 	19C4H 			//1980 	1021
		BRA 	2958H 			//1982 	17EA
		LDWI 	1H 			//1984 	4E01
		STR 	21H, 0H 			//1986 	AE21
		LDR 	21H, 0H, 0H 		//1988 	9021
		MULWI 	2H 			//198A 	4D02
		LDWI 	4DH 			//198C 	4E4D
		ADDWR 	F3H, 0H, 0H 	//198E 	64F3
		STR 	F6H, 0H 			//1990 	AEF6
		LDWI 	7FH 			//1992 	4E7F
		ADDWRC 	F4H, 0H, 0H 	//1994 	60F4
		STR 	F7H, 0H 			//1996 	AEF7
		TBLRD*+  			//1998 	4009
		LDR 	F5H, 0H, 0H 		//199A 	90F5
		SUBWR 	1FH, 0H, 0H 	//199C 	9C1F
		TBLRD*+  			//199E 	4009
		LDR 	F5H, 0H, 0H 		//19A0 	90F5
		SUBWRB 	20H, 0H, 0H 	//19A2 	9820
		BTSS 	D8H, 0H, 0H 		//19A4 	E0D8
		BRA 	19C4H 			//19A6 	100E
		INCR 	21H, 1H, 0H 		//19A8 	6A21
		LDWI 	4H 			//19AA 	4E04
		XORWR 	21H, 0H, 0H 	//19AC 	5821
		BTSC 	D8H, 2H, 0H 		//19AE 	F4D8
		BRA 	19C4H 			//19B0 	1009
		BRA 	2988H 			//19B2 	17EA
		LDR 	1EH, 0H, 0H 		//19B4 	901E
		ANDWI 	80H 			//19B6 	4B80
		XORWI 	0H 			//19B8 	4A00
		BTSC 	D8H, 2H, 0H 		//19BA 	F4D8
		BRA 	2954H 			//19BC 	17CB
		XORWI 	80H 			//19BE 	4A80
		BTSC 	D8H, 2H, 0H 		//19C0 	F4D8
		BRA 	2984H 			//19C2 	17E0
		MOVFF 	1EH, 1AH 		//19C4 	001E 301A
		LDWI 	3H 			//19C8 	4E03
		ANDWR 	1AH, 1H, 0H 	//19CA 	561A
		BTSC 	D8H, 2H, 0H 		//19CC 	F4D8
		BRA 	1A2CH 			//19CE 	102E
		LDR 	16H, 0H, 0H 		//19D0 	9016
		STR 	D9H, 0H 			//19D2 	AED9
		CLRR 	DAH, 0H 		//19D4 	AADA
		LDWI 	2H 			//19D6 	4E02
		ADDWR 	D9H, 1H, 0H 	//19D8 	66D9
		LDR 	DEH, 0H, 0H 		//19DA 	90DE
		IORWR 	DEH, 0H, 0H 	//19DC 	50DE
		BTSC 	D8H, 2H, 0H 		//19DE 	F4D8
		BRA 	1A06H 			//19E0 	1012
		LDR 	16H, 0H, 0H 		//19E2 	9016
		STR 	D9H, 0H 			//19E4 	AED9
		CLRR 	DAH, 0H 		//19E6 	AADA
		LDWI 	2H 			//19E8 	4E02
		ADDWR 	D9H, 1H, 0H 	//19EA 	66D9
		RCALL 	19F0H 			//19EC 	1801
		BRA 	1A2CH 			//19EE 	101E
		PUSH  					//19F0 	4005
		STR 	FAH, 0H 			//19F2 	AEFA
		LDR 	DEH, 0H, 0H 		//19F4 	90DE
		STR 	FDH, 0H 			//19F6 	AEFD
		LDR 	DEH, 0H, 0H 		//19F8 	90DE
		STR 	FEH, 0H 			//19FA 	AEFE
		LDR 	F8H, 0H, 0H 		//19FC 	90F8
		STR 	FFH, 0H 			//19FE 	AEFF
		LDR 	FAH, 0H, 0H 		//1A00 	90FA
		LDWI 	2DH 			//1A02 	4E2D
		RET 	0H 			//1A04 	4012
		LDR 	16H, 0H, 0H 		//1A06 	9016
		STR 	D9H, 0H 			//1A08 	AED9
		CLRR 	DAH, 0H 		//1A0A 	AADA
		MOVFF 	FDEH, 1AH 		//1A0C 	0FDE 301A
		MOVFF 	FDDH, 1BH 		//1A10 	0FDD 301B
		MOVFF 	1AH, FD9H 		//1A14 	001A 3FD9
		MOVFF 	1BH, FDAH 		//1A18 	001B 3FDA
		LDWI 	2DH 			//1A1C 	4E2D
		STR 	DFH, 0H 			//1A1E 	AEDF
		LDR 	16H, 0H, 0H 		//1A20 	9016
		STR 	D9H, 0H 			//1A22 	AED9
		CLRR 	DAH, 0H 		//1A24 	AADA
		INCR 	DEH, 1H, 0H 		//1A26 	6ADE
		LDWI 	0H 			//1A28 	4E00
		ADDWRC 	DDH, 1H, 0H 	//1A2A 	62DD
		MOVFF 	21H, 1DH 		//1A2C 	0021 301D
		BRA 	1B24H 			//1A30 	1079
		LDR 	1DH, 0H, 0H 		//1A32 	901D
		MULWI 	2H 			//1A34 	4D02
		LDWI 	43H 			//1A36 	4E43
		ADDWR 	F3H, 0H, 0H 	//1A38 	64F3
		STR 	F6H, 0H 			//1A3A 	AEF6
		LDWI 	7FH 			//1A3C 	4E7F
		ADDWRC 	F4H, 0H, 0H 	//1A3E 	60F4
		STR 	F7H, 0H 			//1A40 	AEF7
		TBLRD*+  			//1A42 	4009
		MOVFF 	FF5H, 11H 		//1A44 	0FF5 3011
		TBLRD*-  			//1A48 	400A
		MOVFF 	FF5H, 12H 		//1A4A 	0FF5 3012
		MOVFF 	1FH, FH 		//1A4E 	001F 300F
		MOVFF 	20H, 10H 		//1A52 	0020 3010
		LCALL 	5440H, 0H 		//1A56 	2C20 302A
		MOVFF 	FH, AH 		//1A5A 	000F 300A
		MOVFF 	10H, BH 		//1A5E 	0010 300B
		LDWI 	0H 			//1A62 	4E00
		STR 	DH, 0H 			//1A64 	AE0D
		LDWI 	AH 			//1A66 	4E0A
		STR 	CH, 0H 			//1A68 	AE0C
		LCALL 	5814H, 0H 		//1A6A 	2C0A 302C
		LDR 	AH, 0H, 0H 		//1A6E 	900A
		ADDWI 	30H 			//1A70 	4F30
		STR 	21H, 0H 			//1A72 	AE21
		BRA 	1AC8H 			//1A74 	1029
		MOVFF 	1FH, FH 		//1A76 	001F 300F
		MOVFF 	20H, 10H 		//1A7A 	0020 3010
		LDR 	1DH, 0H, 0H 		//1A7E 	901D
		MULWI 	2H 			//1A80 	4D02
		LDWI 	4DH 			//1A82 	4E4D
		ADDWR 	F3H, 0H, 0H 	//1A84 	64F3
		STR 	F6H, 0H 			//1A86 	AEF6
		LDWI 	7FH 			//1A88 	4E7F
		ADDWRC 	F4H, 0H, 0H 	//1A8A 	60F4
		STR 	F7H, 0H 			//1A8C 	AEF7
		TBLRD*+  			//1A8E 	4009
		MOVFF 	FF5H, 11H 		//1A90 	0FF5 3011
		TBLRD*-  			//1A94 	400A
		MOVFF 	FF5H, 12H 		//1A96 	0FF5 3012
		LCALL 	5440H, 0H 		//1A9A 	2C20 302A
		LDR 	FH, 0H, 0H 		//1A9E 	900F
		ANDWI 	FH 			//1AA0 	4B0F
		STR 	1CH, 0H 			//1AA2 	AE1C
		LDWI 	A9H 			//1AA4 	4EA9
		ADDWR 	1CH, 0H, 0H 	//1AA6 	641C
		STR 	F6H, 0H 			//1AA8 	AEF6
		CLRR 	F7H, 0H 		//1AAA 	AAF7
		LDWI 	7FH 			//1AAC 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//1AAE 	62F7
		TBLRD*  			//1AB0 	4008
		MOVFF 	FF5H, 21H 		//1AB2 	0FF5 3021
		BRA 	1AC8H 			//1AB6 	1008
		LDR 	1EH, 0H, 0H 		//1AB8 	901E
		ANDWI 	80H 			//1ABA 	4B80
		XORWI 	0H 			//1ABC 	4A00
		BTSC 	D8H, 2H, 0H 		//1ABE 	F4D8
		BRA 	2A32H 			//1AC0 	17B8
		XORWI 	80H 			//1AC2 	4A80
		BTSC 	D8H, 2H, 0H 		//1AC4 	F4D8
		BRA 	2A76H 			//1AC6 	17D7
		LDR 	16H, 0H, 0H 		//1AC8 	9016
		STR 	D9H, 0H 			//1ACA 	AED9
		CLRR 	DAH, 0H 		//1ACC 	AADA
		LDWI 	2H 			//1ACE 	4E02
		ADDWR 	D9H, 1H, 0H 	//1AD0 	66D9
		LDR 	DEH, 0H, 0H 		//1AD2 	90DE
		IORWR 	DEH, 0H, 0H 	//1AD4 	50DE
		BTSC 	D8H, 2H, 0H 		//1AD6 	F4D8
		BRA 	1AFEH 			//1AD8 	1012
		LDR 	16H, 0H, 0H 		//1ADA 	9016
		STR 	D9H, 0H 			//1ADC 	AED9
		CLRR 	DAH, 0H 		//1ADE 	AADA
		LDWI 	2H 			//1AE0 	4E02
		ADDWR 	D9H, 1H, 0H 	//1AE2 	66D9
		RCALL 	1AE8H 			//1AE4 	1801
		BRA 	1B24H 			//1AE6 	101E
		PUSH  					//1AE8 	4005
		STR 	FAH, 0H 			//1AEA 	AEFA
		LDR 	DEH, 0H, 0H 		//1AEC 	90DE
		STR 	FDH, 0H 			//1AEE 	AEFD
		LDR 	DEH, 0H, 0H 		//1AF0 	90DE
		STR 	FEH, 0H 			//1AF2 	AEFE
		LDR 	F8H, 0H, 0H 		//1AF4 	90F8
		STR 	FFH, 0H 			//1AF6 	AEFF
		LDR 	FAH, 0H, 0H 		//1AF8 	90FA
		LDR 	21H, 0H, 0H 		//1AFA 	9021
		RET 	0H 			//1AFC 	4012
		LDR 	16H, 0H, 0H 		//1AFE 	9016
		STR 	D9H, 0H 			//1B00 	AED9
		CLRR 	DAH, 0H 		//1B02 	AADA
		MOVFF 	FDEH, 1AH 		//1B04 	0FDE 301A
		MOVFF 	FDDH, 1BH 		//1B08 	0FDD 301B
		MOVFF 	1AH, FD9H 		//1B0C 	001A 3FD9
		MOVFF 	1BH, FDAH 		//1B10 	001B 3FDA
		MOVFF 	21H, FDFH 		//1B14 	0021 3FDF
		LDR 	16H, 0H, 0H 		//1B18 	9016
		STR 	D9H, 0H 			//1B1A 	AED9
		CLRR 	DAH, 0H 		//1B1C 	AADA
		INCR 	DEH, 1H, 0H 		//1B1E 	6ADE
		LDWI 	0H 			//1B20 	4E00
		ADDWRC 	DDH, 1H, 0H 	//1B22 	62DD
		DECR 	1DH, 1H, 0H 		//1B24 	461D
		INCR 	1DH, 0H, 0H 		//1B26 	681D
		BTSS 	D8H, 2H, 0H 		//1B28 	E4D8
		BRA 	2AB8H 			//1B2A 	17C6
		MOVFF 	17H, FF6H 		//1B2C 	0017 3FF6
		MOVFF 	18H, FF7H 		//1B30 	0018 3FF7
		INRSNZ 	17H, 1H, 0H 	//1B34 	8A17
		INCR 	18H, 1H, 0H 		//1B36 	6A18
		TBLRD*  			//1B38 	4008
		MOVFF 	FF5H, 21H 		//1B3A 	0FF5 3021
		LDR 	21H, 0H, 0H 		//1B3E 	9021
		BTSS 	D8H, 2H, 0H 		//1B40 	E4D8
		BRA 	2868H 			//1B42 	1692
		LDWI 	0H 			//1B44 	4E00
		STR 	17H, 0H 			//1B46 	AE17
		LDWI 	0H 			//1B48 	4E00
		STR 	16H, 0H 			//1B4A 	AE16
		RET 	0H 			//1B4C 	4012

		//;display.c: 544: if (enable == 1)
		DECR 	25H, 0H, 0H 		//1B4E 	4425
		BTSS 	D8H, 2H, 0H 		//1B50 	E4D8
		BRA 	1B9AH 			//1B52 	1023

		//;display.c: 545: {;display.c: 546: if(RunData.Timing > 0){
		MOVLB 	1H 			//1B54 	4101
		BTSC 	13H, 7H, 1H 		//1B56 	FF13
		BRA 	1B7AH 			//1B58 	1010
		LDR 	13H, 0H, 1H 		//1B5A 	9113
		BNZ 	1B64H 			//1B5C 	2103
		DECR 	12H, 0H, 1H 		//1B5E 	4512
		BTSS 	D8H, 0H, 0H 		//1B60 	E0D8
		BRA 	1B7AH 			//1B62 	100B

		//;display.c: 547: Label_Timing(1,0);
		LDWI 	0H 			//1B64 	4E00
		STR 	AH, 0H 			//1B66 	AE0A
		LDWI 	1H 			//1B68 	4E01
		LCALL 	5D98H, 0H 		//1B6A 	2CCC 302E

		//;display.c: 548: Label_Running(0,0);
		LDWI 	0H 			//1B6E 	4E00
		STR 	AH, 0H 			//1B70 	AE0A
		LDWI 	0H 			//1B72 	4E00
		LCALL 	5DB2H, 0H 		//1B74 	2CD9 302E

		//;display.c: 549: }else{
		BRA 	1B8EH 			//1B78 	100A

		//;display.c: 550: Label_Timing(0,0);
		LDWI 	0H 			//1B7A 	4E00
		STR 	AH, 0H 			//1B7C 	AE0A
		LDWI 	0H 			//1B7E 	4E00
		LCALL 	5D98H, 0H 		//1B80 	2CCC 302E

		//;display.c: 551: Label_Running(1,0);
		LDWI 	0H 			//1B84 	4E00
		STR 	AH, 0H 			//1B86 	AE0A
		LDWI 	1H 			//1B88 	4E01
		LCALL 	5DB2H, 0H 		//1B8A 	2CD9 302E

		//;display.c: 552: };display.c: 554: Label_Min(1,0);
		LDWI 	0H 			//1B8E 	4E00
		STR 	AH, 0H 			//1B90 	AE0A
		LDWI 	1H 			//1B92 	4E01
		LCALL 	5DCCH, 0H 		//1B94 	2CE6 302E

		//;display.c: 555: return;
		RET 	0H 			//1B98 	4012

		//;display.c: 557: else if (enable == 2)
		LDWI 	2H 			//1B9A 	4E02
		XORWR 	25H, 0H, 0H 	//1B9C 	5825
		BTSS 	D8H, 2H, 0H 		//1B9E 	E4D8
		BRA 	1BC2H 			//1BA0 	1010

		//;display.c: 558: {;display.c: 559: Label_Timing(0,0);
		LDWI 	0H 			//1BA2 	4E00
		STR 	AH, 0H 			//1BA4 	AE0A
		LDWI 	0H 			//1BA6 	4E00
		LCALL 	5D98H, 0H 		//1BA8 	2CCC 302E

		//;display.c: 560: Label_Running(0,0);
		LDWI 	0H 			//1BAC 	4E00
		STR 	AH, 0H 			//1BAE 	AE0A
		LDWI 	0H 			//1BB0 	4E00
		LCALL 	5DB2H, 0H 		//1BB2 	2CD9 302E

		//;display.c: 561: Label_Min(0,0);
		LDWI 	0H 			//1BB6 	4E00
		STR 	AH, 0H 			//1BB8 	AE0A
		LDWI 	0H 			//1BBA 	4E00
		LCALL 	5DCCH, 0H 		//1BBC 	2CE6 302E

		//;display.c: 562: }
		RET 	0H 			//1BC0 	4012

		//;display.c: 563: else;display.c: 564: {;display.c: 565: if (sum > 999)
		LDR 	23H, 0H, 0H 		//1BC2 	9023
		IORWR 	22H, 0H, 0H 	//1BC4 	5022
		BNZ 	1BD4H 			//1BC6 	2106
		LDWI 	E8H 			//1BC8 	4EE8
		SUBWR 	20H, 0H, 0H 	//1BCA 	9C20
		LDWI 	3H 			//1BCC 	4E03
		SUBWRB 	21H, 0H, 0H 	//1BCE 	9821
		BTSS 	D8H, 0H, 0H 		//1BD0 	E0D8
		BRA 	1BE4H 			//1BD2 	1008

		//;display.c: 566: sum = 999;
		LDWI 	E7H 			//1BD4 	4EE7
		STR 	20H, 0H 			//1BD6 	AE20
		LDWI 	3H 			//1BD8 	4E03
		STR 	21H, 0H 			//1BDA 	AE21
		LDWI 	0H 			//1BDC 	4E00
		STR 	22H, 0H 			//1BDE 	AE22
		LDWI 	0H 			//1BE0 	4E00
		STR 	23H, 0H 			//1BE2 	AE23

		//;display.c: 568: int hour = sum / 60;
		MOVFF 	20H, 13H 		//1BE4 	0020 3013
		MOVFF 	21H, 14H 		//1BE8 	0021 3014
		MOVFF 	22H, 15H 		//1BEC 	0022 3015
		MOVFF 	23H, 16H 		//1BF0 	0023 3016
		LDWI 	3CH 			//1BF4 	4E3C
		STR 	17H, 0H 			//1BF6 	AE17
		LDWI 	0H 			//1BF8 	4E00
		STR 	18H, 0H 			//1BFA 	AE18
		LDWI 	0H 			//1BFC 	4E00
		STR 	19H, 0H 			//1BFE 	AE19
		LDWI 	0H 			//1C00 	4E00
		STR 	1AH, 0H 			//1C02 	AE1A
		LCALL 	49EAH, 0H 		//1C04 	2CF5 3024
		MOVFF 	13H, 26H 		//1C08 	0013 3026
		MOVFF 	14H, 27H 		//1C0C 	0014 3027

		//;display.c: 569: int minute = sum % 60;
		MOVFF 	20H, AH 		//1C10 	0020 300A
		MOVFF 	21H, BH 		//1C14 	0021 300B
		MOVFF 	22H, CH 		//1C18 	0022 300C
		MOVFF 	23H, DH 		//1C1C 	0023 300D
		LDWI 	3CH 			//1C20 	4E3C
		STR 	EH, 0H 			//1C22 	AE0E
		LDWI 	0H 			//1C24 	4E00
		STR 	FH, 0H 			//1C26 	AE0F
		LDWI 	0H 			//1C28 	4E00
		STR 	10H, 0H 			//1C2A 	AE10
		LDWI 	0H 			//1C2C 	4E00
		STR 	11H, 0H 			//1C2E 	AE11
		LCALL 	4D04H, 0H 		//1C30 	2C82 3026
		MOVFF 	AH, 28H 		//1C34 	000A 3028
		MOVFF 	BH, 29H 		//1C38 	000B 3029

		//;display.c: 571: SEG6(ch_table[hour / 10] , Engineering_Pattern.Led_Display_Timing_Enbal
		//+                          e);
		MOVFF 	67H, 18H 		//1C3C 	0067 3018
		MOVFF 	26H, 10H 		//1C40 	0026 3010
		MOVFF 	27H, 11H 		//1C44 	0027 3011
		LDWI 	0H 			//1C48 	4E00
		STR 	13H, 0H 			//1C4A 	AE13
		LDWI 	AH 			//1C4C 	4E0A
		STR 	12H, 0H 			//1C4E 	AE12
		LCALL 	4966H, 0H 		//1C50 	2CB3 3024
		LDWI 	2BH 			//1C54 	4E2B
		ADDWR 	10H, 0H, 0H 	//1C56 	6410
		STR 	F6H, 0H 			//1C58 	AEF6
		LDWI 	7FH 			//1C5A 	4E7F
		ADDWRC 	11H, 0H, 0H 	//1C5C 	6011
		STR 	F7H, 0H 			//1C5E 	AEF7
		TBLRD*  			//1C60 	4008
		LDR 	F5H, 0H, 0H 		//1C62 	90F5
		LCALL 	51F6H, 0H 		//1C64 	2CFB 3028

		//;display.c: 572: SEG7(ch_table[hour % 10] , Engineering_Pattern.Led_Display_Timing_Enbal
		//+                          e);
		MOVFF 	67H, 18H 		//1C68 	0067 3018
		MOVFF 	26H, AH 		//1C6C 	0026 300A
		MOVFF 	27H, BH 		//1C70 	0027 300B
		LDWI 	0H 			//1C74 	4E00
		STR 	DH, 0H 			//1C76 	AE0D
		LDWI 	AH 			//1C78 	4E0A
		STR 	CH, 0H 			//1C7A 	AE0C
		LCALL 	4BC8H, 0H 		//1C7C 	2CE4 3025
		LDWI 	2BH 			//1C80 	4E2B
		ADDWR 	AH, 0H, 0H 		//1C82 	640A
		STR 	F6H, 0H 			//1C84 	AEF6
		LDWI 	7FH 			//1C86 	4E7F
		ADDWRC 	BH, 0H, 0H 	//1C88 	600B
		STR 	F7H, 0H 			//1C8A 	AEF7
		TBLRD*  			//1C8C 	4008
		LDR 	F5H, 0H, 0H 		//1C8E 	90F5
		LCALL 	51A2H, 0H 		//1C90 	2CD1 3028

		//;display.c: 573: SEG8(ch_table[minute / 10] , Engineering_Pattern.Led_Display_Timing_Enb
		//+                          ale);
		MOVFF 	67H, 18H 		//1C94 	0067 3018
		MOVFF 	28H, 10H 		//1C98 	0028 3010
		MOVFF 	29H, 11H 		//1C9C 	0029 3011
		LDWI 	0H 			//1CA0 	4E00
		STR 	13H, 0H 			//1CA2 	AE13
		LDWI 	AH 			//1CA4 	4E0A
		STR 	12H, 0H 			//1CA6 	AE12
		LCALL 	4966H, 0H 		//1CA8 	2CB3 3024
		LDWI 	2BH 			//1CAC 	4E2B
		ADDWR 	10H, 0H, 0H 	//1CAE 	6410
		STR 	F6H, 0H 			//1CB0 	AEF6
		LDWI 	7FH 			//1CB2 	4E7F
		ADDWRC 	11H, 0H, 0H 	//1CB4 	6011
		STR 	F7H, 0H 			//1CB6 	AEF7
		TBLRD*  			//1CB8 	4008
		LDR 	F5H, 0H, 0H 		//1CBA 	90F5
		LCALL 	514EH, 0H 		//1CBC 	2CA7 3028

		//;display.c: 574: SEG9(ch_table[minute % 10] , Engineering_Pattern.Led_Display_Timing_Enb
		//+                          ale);
		MOVFF 	67H, 10H 		//1CC0 	0067 3010
		MOVFF 	28H, AH 		//1CC4 	0028 300A
		MOVFF 	29H, BH 		//1CC8 	0029 300B
		LDWI 	0H 			//1CCC 	4E00
		STR 	DH, 0H 			//1CCE 	AE0D
		LDWI 	AH 			//1CD0 	4E0A
		STR 	CH, 0H 			//1CD2 	AE0C
		LCALL 	4BC8H, 0H 		//1CD4 	2CE4 3025
		LDWI 	2BH 			//1CD8 	4E2B
		ADDWR 	AH, 0H, 0H 		//1CDA 	640A
		STR 	F6H, 0H 			//1CDC 	AEF6
		LDWI 	7FH 			//1CDE 	4E7F
		ADDWRC 	BH, 0H, 0H 	//1CE0 	600B
		STR 	F7H, 0H 			//1CE2 	AEF7
		TBLRD*  			//1CE4 	4008
		LDR 	F5H, 0H, 0H 		//1CE6 	90F5
		LCALL 	50FAH, 0H 		//1CE8 	2C7D 3028

		//;display.c: 576: switch (mode)
		BRA 	1DD6H 			//1CEC 	1074

		//;display.c: 579: Label_Min(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1CEE 	0146 300A
		LDWI 	1H 			//1CF2 	4E01
		LCALL 	5DCCH, 0H 		//1CF4 	2CE6 302E

		//;display.c: 580: Display_hour(1);
		LDWI 	1H 			//1CF8 	4E01
		LCALL 	5ED8H, 0H 		//1CFA 	2C6C 302F

		//;display.c: 581: Label_Running(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1CFE 	0146 300A
		LDWI 	1H 			//1D02 	4E01
		LCALL 	5DB2H, 0H 		//1D04 	2CD9 302E

		//;display.c: 582: Label_Timing(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D08 	0146 300A
		LDWI 	0H 			//1D0C 	4E00
		LCALL 	5D98H, 0H 		//1D0E 	2CCC 302E

		//;display.c: 583: break;
		RET 	0H 			//1D12 	4012

		//;display.c: 585: Display_hour(1);
		LDWI 	1H 			//1D14 	4E01
		LCALL 	5ED8H, 0H 		//1D16 	2C6C 302F

		//;display.c: 586: Label_Min(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D1A 	0146 300A
		LDWI 	1H 			//1D1E 	4E01
		LCALL 	5DCCH, 0H 		//1D20 	2CE6 302E

		//;display.c: 587: Label_Running(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D24 	0146 300A
		LDWI 	0H 			//1D28 	4E00
		LCALL 	5DB2H, 0H 		//1D2A 	2CD9 302E

		//;display.c: 588: Label_Timing(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D2E 	0146 300A
		LDWI 	1H 			//1D32 	4E01
		LCALL 	5D98H, 0H 		//1D34 	2CCC 302E

		//;display.c: 589: break;
		RET 	0H 			//1D38 	4012

		//;display.c: 592: SEG6(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D3A 	0067 3018
		LDWI 	40H 			//1D3E 	4E40
		LCALL 	51F6H, 0H 		//1D40 	2CFB 3028

		//;display.c: 593: SEG7(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D44 	0067 3018
		LDWI 	40H 			//1D48 	4E40
		LCALL 	51A2H, 0H 		//1D4A 	2CD1 3028

		//;display.c: 594: SEG8(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D4E 	0067 3018
		LDWI 	40H 			//1D52 	4E40
		LCALL 	514EH, 0H 		//1D54 	2CA7 3028

		//;display.c: 595: SEG9(0x40 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 10H 		//1D58 	0067 3010
		LDWI 	40H 			//1D5C 	4E40
		LCALL 	50FAH, 0H 		//1D5E 	2C7D 3028

		//;display.c: 596: Label_Min(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D62 	0146 300A
		LDWI 	1H 			//1D66 	4E01
		LCALL 	5DCCH, 0H 		//1D68 	2CE6 302E

		//;display.c: 597: Display_hour(1);
		LDWI 	1H 			//1D6C 	4E01
		LCALL 	5ED8H, 0H 		//1D6E 	2C6C 302F

		//;display.c: 598: Label_Running(1,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D72 	0146 300A
		LDWI 	1H 			//1D76 	4E01
		LCALL 	5DB2H, 0H 		//1D78 	2CD9 302E

		//;display.c: 599: Label_Timing(0,RunData.Error_Delay_Time);
		MOVFF 	146H, AH 		//1D7C 	0146 300A
		LDWI 	0H 			//1D80 	4E00
		LCALL 	5D98H, 0H 		//1D82 	2CCC 302E

		//;display.c: 600: break;
		RET 	0H 			//1D86 	4012

		//;display.c: 609: SEG6(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D88 	0067 3018
		LDWI 	0H 			//1D8C 	4E00
		LCALL 	51F6H, 0H 		//1D8E 	2CFB 3028

		//;display.c: 610: SEG7(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D92 	0067 3018
		LDWI 	0H 			//1D96 	4E00
		LCALL 	51A2H, 0H 		//1D98 	2CD1 3028

		//;display.c: 611: SEG8(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 18H 		//1D9C 	0067 3018
		LDWI 	0H 			//1DA0 	4E00
		LCALL 	514EH, 0H 		//1DA2 	2CA7 3028

		//;display.c: 612: SEG9(0x00 , Engineering_Pattern.Led_Display_Timing_Enbale);
		MOVFF 	67H, 10H 		//1DA6 	0067 3010
		LDWI 	0H 			//1DAA 	4E00
		LCALL 	50FAH, 0H 		//1DAC 	2C7D 3028

		//;display.c: 613: Label_Min(0,0);
		LDWI 	0H 			//1DB0 	4E00
		STR 	AH, 0H 			//1DB2 	AE0A
		LDWI 	0H 			//1DB4 	4E00
		LCALL 	5DCCH, 0H 		//1DB6 	2CE6 302E

		//;display.c: 614: Label_Running(0,0);
		LDWI 	0H 			//1DBA 	4E00
		STR 	AH, 0H 			//1DBC 	AE0A
		LDWI 	0H 			//1DBE 	4E00
		LCALL 	5DB2H, 0H 		//1DC0 	2CD9 302E

		//;display.c: 615: Display_hour(0);
		LDWI 	0H 			//1DC4 	4E00
		LCALL 	5ED8H, 0H 		//1DC6 	2C6C 302F

		//;display.c: 616: Label_Timing(0,0);
		LDWI 	0H 			//1DCA 	4E00
		STR 	AH, 0H 			//1DCC 	AE0A
		LDWI 	0H 			//1DCE 	4E00
		LCALL 	5D98H, 0H 		//1DD0 	2CCC 302E

		//;display.c: 617: break;
		RET 	0H 			//1DD4 	4012
		LDR 	24H, 0H, 0H 		//1DD6 	9024
		XORWI 	1H 			//1DD8 	4A01
		BTSC 	D8H, 2H, 0H 		//1DDA 	F4D8
		BRA 	2CEEH 			//1DDC 	1788
		XORWI 	3H 			//1DDE 	4A03
		BTSC 	D8H, 2H, 0H 		//1DE0 	F4D8
		BRA 	2D14H 			//1DE2 	1798
		XORWI 	1H 			//1DE4 	4A01
		BTSC 	D8H, 2H, 0H 		//1DE6 	F4D8
		BRA 	2D3AH 			//1DE8 	17A8
		XORWI 	7H 			//1DEA 	4A07
		BTSC 	D8H, 2H, 0H 		//1DEC 	F4D8
		RET 	0H 			//1DEE 	4012
		BRA 	2D88H 			//1DF0 	17CB

		//;irkey.c: 63: if (T3CR1bits.T3IE && T3CR3bits.T3IF)
		BTSC 	ABH, 6H, 0H 		//1DF2 	FCAB
		BTSS 	ADH, 6H, 0H 		//1DF4 	ECAD
		BRA 	1E10H 			//1DF6 	100C

		//;irkey.c: 64: {;irkey.c: 65: T3CR3bits.T3IF = 0;
		BCR 	ADH, 6H, 0H 		//1DF8 	DCAD

		//;irkey.c: 66: if (cnt < 5)
		LDWI 	5H 			//1DFA 	4E05
		MOVLB 	0H 			//1DFC 	4100
		CPRSLT 	B1H, 1H 		//1DFE 	A1B1
		BRA 	1E06H 			//1E00 	1002

		//;irkey.c: 67: cnt++;
		INCR 	B1H, 1H, 1H 		//1E02 	6BB1
		BRA 	1E10H 			//1E04 	1005

		//;irkey.c: 68: else;irkey.c: 69: {;irkey.c: 70: cnt = 0;
		LDWI 	0H 			//1E06 	4E00
		STR 	B1H, 1H 			//1E08 	AFB1

		//;irkey.c: 71: IRData.Sta = 0;
		LDWI 	0H 			//1E0A 	4E00
		MOVLB 	1H 			//1E0C 	4101
		STR 	6BH, 1H 			//1E0E 	AF6B

		//;irkey.c: 72: };irkey.c: 73: };irkey.c: 75: if (T3CR1bits.T3CCIE && T3CR3bits.T3CCIF)
		BTSS 	ABH, 7H, 0H 		//1E10 	EEAB
		RET 	0H 			//1E12 	4012
		BTSS 	ADH, 7H, 0H 		//1E14 	EEAD
		RET 	0H 			//1E16 	4012

		//;irkey.c: 76: {;irkey.c: 77: T3CR3bits.T3CCIF = 0;
		BCR 	ADH, 7H, 0H 		//1E18 	DEAD

		//;irkey.c: 78: if (PD4 == 1)
		BTSS 	83H, 4H, 0H 		//1E1A 	E883
		BRA 	1E90H 			//1E1C 	1039

		//;irkey.c: 79: {;irkey.c: 80: IRData.di = T3CCPRL;
		LDR 	B0H, 0H, 0H 		//1E1E 	90B0
		MOVLB 	1H 			//1E20 	4101
		STR 	67H, 1H 			//1E22 	AF67
		CLRR 	68H, 1H 		//1E24 	AB68
		CLRR 	69H, 1H 		//1E26 	AB69
		CLRR 	6AH, 1H 		//1E28 	AB6A

		//;irkey.c: 81: IRData.di |= (T3CCPRH << 8);
		LDR 	B1H, 0H, 0H 		//1E2A 	90B1
		STR 	2H, 0H 			//1E2C 	AE02
		CLRR 	1H, 0H 			//1E2E 	AA01
		MOVFF 	1H, 3H 		//1E30 	0001 3003
		MOVFF 	2H, 4H 		//1E34 	0002 3004
		LDWI 	0H 			//1E38 	4E00
		BTSC 	4H, 7H, 0H 		//1E3A 	FE04
		LDWI 	FFH 			//1E3C 	4EFF
		STR 	5H, 0H 			//1E3E 	AE05
		STR 	6H, 0H 			//1E40 	AE06
		LDR 	3H, 0H, 0H 		//1E42 	9003
		IORWR 	67H, 1H, 1H 	//1E44 	5367
		LDR 	4H, 0H, 0H 		//1E46 	9004
		IORWR 	68H, 1H, 1H 	//1E48 	5368
		LDR 	5H, 0H, 0H 		//1E4A 	9005
		IORWR 	69H, 1H, 1H 	//1E4C 	5369
		LDR 	6H, 0H, 0H 		//1E4E 	9006
		IORWR 	6AH, 1H, 1H 	//1E50 	536A

		//;irkey.c: 82: IRData.di += cnt * 65536;
		MOVFF 	B1H, 1H 		//1E52 	00B1 3001
		CLRR 	2H, 0H 			//1E56 	AA02
		CLRR 	3H, 0H 			//1E58 	AA03
		CLRR 	4H, 0H 			//1E5A 	AA04
		MOVFF 	2H, 4H 		//1E5C 	0002 3004
		MOVFF 	1H, 3H 		//1E60 	0001 3003
		CLRR 	2H, 0H 			//1E64 	AA02
		CLRR 	1H, 0H 			//1E66 	AA01
		LDR 	1H, 0H, 0H 		//1E68 	9001
		ADDWR 	67H, 1H, 1H 	//1E6A 	6767
		LDR 	2H, 0H, 0H 		//1E6C 	9002
		ADDWRC 	68H, 1H, 1H 	//1E6E 	6368
		LDR 	3H, 0H, 0H 		//1E70 	9003
		ADDWRC 	69H, 1H, 1H 	//1E72 	6369
		LDR 	4H, 0H, 0H 		//1E74 	9004
		ADDWRC 	6AH, 1H, 1H 	//1E76 	636A

		//;irkey.c: 83: cnt = 0;
		LDWI 	0H 			//1E78 	4E00
		MOVLB 	0H 			//1E7A 	4100
		STR 	B1H, 1H 			//1E7C 	AFB1

		//;irkey.c: 84: T3CNTRL = 0;
		LDWI 	0H 			//1E7E 	4E00
		STR 	AEH, 0H 			//1E80 	AEAE

		//;irkey.c: 85: T3CNTRH = 0;
		LDWI 	0H 			//1E82 	4E00
		STR 	AFH, 0H 			//1E84 	AEAF

		//;irkey.c: 86: T3CCPRL = 0;
		LDWI 	0H 			//1E86 	4E00
		STR 	B0H, 0H 			//1E88 	AEB0

		//;irkey.c: 87: T3CCPRH = 0;
		LDWI 	0H 			//1E8A 	4E00
		STR 	B1H, 0H 			//1E8C 	AEB1

		//;irkey.c: 88: }
		RET 	0H 			//1E8E 	4012

		//;irkey.c: 89: else;irkey.c: 90: {;irkey.c: 91: IRData.gao = T3CCPRL;
		LDR 	B0H, 0H, 0H 		//1E90 	90B0
		MOVLB 	1H 			//1E92 	4101
		STR 	63H, 1H 			//1E94 	AF63
		CLRR 	64H, 1H 		//1E96 	AB64
		CLRR 	65H, 1H 		//1E98 	AB65
		CLRR 	66H, 1H 		//1E9A 	AB66

		//;irkey.c: 92: IRData.gao |= (T3CCPRH << 8);
		LDR 	B1H, 0H, 0H 		//1E9C 	90B1
		STR 	2H, 0H 			//1E9E 	AE02
		CLRR 	1H, 0H 			//1EA0 	AA01
		MOVFF 	1H, 3H 		//1EA2 	0001 3003
		MOVFF 	2H, 4H 		//1EA6 	0002 3004
		LDWI 	0H 			//1EAA 	4E00
		BTSC 	4H, 7H, 0H 		//1EAC 	FE04
		LDWI 	FFH 			//1EAE 	4EFF
		STR 	5H, 0H 			//1EB0 	AE05
		STR 	6H, 0H 			//1EB2 	AE06
		LDR 	3H, 0H, 0H 		//1EB4 	9003
		IORWR 	63H, 1H, 1H 	//1EB6 	5363
		LDR 	4H, 0H, 0H 		//1EB8 	9004
		IORWR 	64H, 1H, 1H 	//1EBA 	5364
		LDR 	5H, 0H, 0H 		//1EBC 	9005
		IORWR 	65H, 1H, 1H 	//1EBE 	5365
		LDR 	6H, 0H, 0H 		//1EC0 	9006
		IORWR 	66H, 1H, 1H 	//1EC2 	5366

		//;irkey.c: 93: IRData.gao += cnt * 65536;
		MOVFF 	B1H, 1H 		//1EC4 	00B1 3001
		CLRR 	2H, 0H 			//1EC8 	AA02
		CLRR 	3H, 0H 			//1ECA 	AA03
		CLRR 	4H, 0H 			//1ECC 	AA04
		MOVFF 	2H, 4H 		//1ECE 	0002 3004
		MOVFF 	1H, 3H 		//1ED2 	0001 3003
		CLRR 	2H, 0H 			//1ED6 	AA02
		CLRR 	1H, 0H 			//1ED8 	AA01
		LDR 	1H, 0H, 0H 		//1EDA 	9001
		ADDWR 	63H, 1H, 1H 	//1EDC 	6763
		LDR 	2H, 0H, 0H 		//1EDE 	9002
		ADDWRC 	64H, 1H, 1H 	//1EE0 	6364
		LDR 	3H, 0H, 0H 		//1EE2 	9003
		ADDWRC 	65H, 1H, 1H 	//1EE4 	6365
		LDR 	4H, 0H, 0H 		//1EE6 	9004
		ADDWRC 	66H, 1H, 1H 	//1EE8 	6366

		//;irkey.c: 94: T3CNTRL = 0;
		LDWI 	0H 			//1EEA 	4E00
		STR 	AEH, 0H 			//1EEC 	AEAE

		//;irkey.c: 95: T3CNTRH = 0;
		LDWI 	0H 			//1EEE 	4E00
		STR 	AFH, 0H 			//1EF0 	AEAF

		//;irkey.c: 96: T3CCPRL = 0;
		LDWI 	0H 			//1EF2 	4E00
		STR 	B0H, 0H 			//1EF4 	AEB0

		//;irkey.c: 97: T3CCPRH = 0;
		LDWI 	0H 			//1EF6 	4E00
		STR 	B1H, 0H 			//1EF8 	AEB1

		//;irkey.c: 98: cnt = 0;
		LDWI 	0H 			//1EFA 	4E00
		MOVLB 	0H 			//1EFC 	4100
		STR 	B1H, 1H 			//1EFE 	AFB1

		//;irkey.c: 99: if (IRData.gao <= 10)
		MOVLB 	1H 			//1F00 	4101
		LDR 	66H, 0H, 1H 		//1F02 	9166
		IORWR 	65H, 0H, 1H 	//1F04 	5165
		IORWR 	64H, 0H, 1H 	//1F06 	5164
		BNZ 	1F22H 			//1F08 	210C
		LDWI 	BH 			//1F0A 	4E0B
		SUBWR 	63H, 0H, 1H 	//1F0C 	9D63
		BTSC 	D8H, 0H, 0H 		//1F0E 	F0D8
		BRA 	1F22H 			//1F10 	1008

		//;irkey.c: 100: {;irkey.c: 101: IRData.gao = 0;
		LDWI 	0H 			//1F12 	4E00
		STR 	63H, 1H 			//1F14 	AF63
		LDWI 	0H 			//1F16 	4E00
		STR 	64H, 1H 			//1F18 	AF64
		LDWI 	0H 			//1F1A 	4E00
		STR 	65H, 1H 			//1F1C 	AF65
		LDWI 	0H 			//1F1E 	4E00
		STR 	66H, 1H 			//1F20 	AF66

		//;irkey.c: 102: };irkey.c: 104: if (IRData.Sta & 0x01)
		BTSS 	6BH, 0H, 1H 		//1F22 	E16B
		BRA 	2008H 			//1F24 	1071

		//;irkey.c: 105: {;irkey.c: 106: if (IRData.gao > 300 && IRData.gao < 800)
		LDR 	66H, 0H, 1H 		//1F26 	9166
		IORWR 	65H, 0H, 1H 	//1F28 	5165
		BNZ 	1F38H 			//1F2A 	2106
		LDWI 	2DH 			//1F2C 	4E2D
		SUBWR 	63H, 0H, 1H 	//1F2E 	9D63
		LDWI 	1H 			//1F30 	4E01
		SUBWRB 	64H, 0H, 1H 	//1F32 	9964
		BTSS 	D8H, 0H, 0H 		//1F34 	E0D8
		BRA 	1F5EH 			//1F36 	1013
		LDR 	66H, 0H, 1H 		//1F38 	9166
		IORWR 	65H, 0H, 1H 	//1F3A 	5165
		BNZ 	1F5EH 			//1F3C 	2110
		LDWI 	20H 			//1F3E 	4E20
		SUBWR 	63H, 0H, 1H 	//1F40 	9D63
		LDWI 	3H 			//1F42 	4E03
		SUBWRB 	64H, 0H, 1H 	//1F44 	9964
		BTSC 	D8H, 0H, 0H 		//1F46 	F0D8
		BRA 	1F5EH 			//1F48 	100A

		//;irkey.c: 107: {;irkey.c: 108: IRData.get_w++;
		INCR 	6CH, 1H, 1H 		//1F4A 	6B6C

		//;irkey.c: 109: IRData.Dat = IRData.Dat << 1;
		BCR 	D8H, 0H, 0H 		//1F4C 	D0D8
		RLCR 	6DH, 0H, 1H 		//1F4E 	756D
		STR 	6DH, 1H 			//1F50 	AF6D
		RLCR 	6EH, 0H, 1H 		//1F52 	756E
		STR 	6EH, 1H 			//1F54 	AF6E
		RLCR 	6FH, 0H, 1H 		//1F56 	756F
		STR 	6FH, 1H 			//1F58 	AF6F
		RLCR 	70H, 0H, 1H 		//1F5A 	7570
		BRA 	1FD8H 			//1F5C 	103D

		//;irkey.c: 113: else if (IRData.gao > 2200 && IRData.gao < 2600 && IRData.get_w == 33)
		LDR 	66H, 0H, 1H 		//1F5E 	9166
		IORWR 	65H, 0H, 1H 	//1F60 	5165
		BNZ 	1F70H 			//1F62 	2106
		LDWI 	99H 			//1F64 	4E99
		SUBWR 	63H, 0H, 1H 	//1F66 	9D63
		LDWI 	8H 			//1F68 	4E08
		SUBWRB 	64H, 0H, 1H 	//1F6A 	9964
		BTSS 	D8H, 0H, 0H 		//1F6C 	E0D8
		BRA 	1F90H 			//1F6E 	1010
		LDR 	66H, 0H, 1H 		//1F70 	9166
		IORWR 	65H, 0H, 1H 	//1F72 	5165
		BNZ 	1F90H 			//1F74 	210D
		LDWI 	28H 			//1F76 	4E28
		SUBWR 	63H, 0H, 1H 	//1F78 	9D63
		LDWI 	AH 			//1F7A 	4E0A
		SUBWRB 	64H, 0H, 1H 	//1F7C 	9964
		BTSC 	D8H, 0H, 0H 		//1F7E 	F0D8
		BRA 	1F90H 			//1F80 	1007
		LDWI 	21H 			//1F82 	4E21
		XORWR 	6CH, 0H, 1H 	//1F84 	596C
		BTSS 	D8H, 2H, 0H 		//1F86 	E4D8
		BRA 	1F90H 			//1F88 	1003

		//;irkey.c: 119: {;irkey.c: 120: IRData.RmtCnt++;
		INRSNZ 	71H, 1H, 1H 	//1F8A 	8B71
		INCR 	72H, 1H, 1H 		//1F8C 	6B72

		//;irkey.c: 121: }
		BRA 	1FDAH 			//1F8E 	1025

		//;irkey.c: 124: else if (IRData.gao > 1400 && IRData.gao < 1800)
		LDR 	66H, 0H, 1H 		//1F90 	9166
		IORWR 	65H, 0H, 1H 	//1F92 	5165
		BNZ 	1FA2H 			//1F94 	2106
		LDWI 	79H 			//1F96 	4E79
		SUBWR 	63H, 0H, 1H 	//1F98 	9D63
		LDWI 	5H 			//1F9A 	4E05
		SUBWRB 	64H, 0H, 1H 	//1F9C 	9964
		BTSS 	D8H, 0H, 0H 		//1F9E 	E0D8
		BRA 	1FDAH 			//1FA0 	101C
		LDR 	66H, 0H, 1H 		//1FA2 	9166
		IORWR 	65H, 0H, 1H 	//1FA4 	5165
		BNZ 	1FDAH 			//1FA6 	2119
		LDWI 	8H 			//1FA8 	4E08
		SUBWR 	63H, 0H, 1H 	//1FAA 	9D63
		LDWI 	7H 			//1FAC 	4E07
		SUBWRB 	64H, 0H, 1H 	//1FAE 	9964
		BTSC 	D8H, 0H, 0H 		//1FB0 	F0D8
		BRA 	1FDAH 			//1FB2 	1013

		//;irkey.c: 130: {;irkey.c: 132: IRData.get_w++;
		INCR 	6CH, 1H, 1H 		//1FB4 	6B6C

		//;irkey.c: 133: IRData.Dat = (IRData.Dat << 1) | 0x01;
		BCR 	D8H, 0H, 0H 		//1FB6 	D0D8
		RLCR 	6DH, 0H, 1H 		//1FB8 	756D
		STR 	1H, 0H 			//1FBA 	AE01
		RLCR 	6EH, 0H, 1H 		//1FBC 	756E
		STR 	2H, 0H 			//1FBE 	AE02
		RLCR 	6FH, 0H, 1H 		//1FC0 	756F
		STR 	3H, 0H 			//1FC2 	AE03
		RLCR 	70H, 0H, 1H 		//1FC4 	7570
		STR 	4H, 0H 			//1FC6 	AE04
		LDWI 	1H 			//1FC8 	4E01
		IORWR 	1H, 0H, 0H 		//1FCA 	5001
		STR 	6DH, 1H 			//1FCC 	AF6D
		LDR 	2H, 0H, 0H 		//1FCE 	9002
		STR 	6EH, 1H 			//1FD0 	AF6E
		LDR 	3H, 0H, 0H 		//1FD2 	9003
		STR 	6FH, 1H 			//1FD4 	AF6F
		LDR 	4H, 0H, 0H 		//1FD6 	9004
		STR 	70H, 1H 			//1FD8 	AF70

		//;irkey.c: 134: };irkey.c: 145: if (IRData.get_w == 32)
		LDWI 	20H 			//1FDA 	4E20
		XORWR 	6CH, 0H, 1H 	//1FDC 	596C
		BTSS 	D8H, 2H, 0H 		//1FDE 	E4D8
		RET 	0H 			//1FE0 	4012

		//;irkey.c: 146: {;irkey.c: 147: IRData.get_w = 33;
		LDWI 	21H 			//1FE2 	4E21
		STR 	6CH, 1H 			//1FE4 	AF6C

		//;irkey.c: 148: IRData.Value = IRData.Dat;
		MOVFF 	16DH, 15FH 		//1FE6 	016D 315F
		MOVFF 	16EH, 160H 		//1FEA 	016E 3160
		MOVFF 	16FH, 161H 		//1FEE 	016F 3161
		MOVFF 	170H, 162H 		//1FF2 	0170 3162

		//;irkey.c: 150: IRData.Dat = 0;
		LDWI 	0H 			//1FF6 	4E00
		STR 	6DH, 1H 			//1FF8 	AF6D
		LDWI 	0H 			//1FFA 	4E00
		STR 	6EH, 1H 			//1FFC 	AF6E
		LDWI 	0H 			//1FFE 	4E00
		STR 	6FH, 1H 			//2000 	AF6F
		LDWI 	0H 			//2002 	4E00
		STR 	70H, 1H 			//2004 	AF70
		RET 	0H 			//2006 	4012

		//;irkey.c: 166: else if (IRData.gao > 4200 && IRData.gao < 4700)
		LDR 	66H, 0H, 1H 		//2008 	9166
		IORWR 	65H, 0H, 1H 	//200A 	5165
		BNZ 	201AH 			//200C 	2106
		LDWI 	69H 			//200E 	4E69
		SUBWR 	63H, 0H, 1H 	//2010 	9D63
		LDWI 	10H 			//2012 	4E10
		SUBWRB 	64H, 0H, 1H 	//2014 	9964
		BTSS 	D8H, 0H, 0H 		//2016 	E0D8
		RET 	0H 			//2018 	4012
		LDR 	66H, 0H, 1H 		//201A 	9166
		IORWR 	65H, 0H, 1H 	//201C 	5165
		BNZ 	2056H 			//201E 	211B
		LDWI 	5CH 			//2020 	4E5C
		SUBWR 	63H, 0H, 1H 	//2022 	9D63
		LDWI 	12H 			//2024 	4E12
		SUBWRB 	64H, 0H, 1H 	//2026 	9964
		BTSC 	D8H, 0H, 0H 		//2028 	F0D8
		RET 	0H 			//202A 	4012

		//;irkey.c: 167: {;irkey.c: 168: IRData.Sta |= 0x01;
		BSR 	6BH, 0H, 1H 		//202C 	C16B

		//;irkey.c: 169: IRData.RmtCnt = 0;
		LDWI 	0H 			//202E 	4E00
		STR 	72H, 1H 			//2030 	AF72
		LDWI 	0H 			//2032 	4E00
		STR 	71H, 1H 			//2034 	AF71

		//;irkey.c: 170: IRData.Value = 0;
		LDWI 	0H 			//2036 	4E00
		STR 	5FH, 1H 			//2038 	AF5F
		LDWI 	0H 			//203A 	4E00
		STR 	60H, 1H 			//203C 	AF60
		LDWI 	0H 			//203E 	4E00
		STR 	61H, 1H 			//2040 	AF61
		LDWI 	0H 			//2042 	4E00
		STR 	62H, 1H 			//2044 	AF62

		//;irkey.c: 171: IRData.get_w = 0;
		LDWI 	0H 			//2046 	4E00
		STR 	6CH, 1H 			//2048 	AF6C

		//;irkey.c: 172: IRData.IRDataCnt = 0;
		LDWI 	0H 			//204A 	4E00
		STR 	7BH, 1H 			//204C 	AF7B

		//;irkey.c: 173: cnt = 0;
		LDWI 	0H 			//204E 	4E00
		MOVLB 	0H 			//2050 	4100
		STR 	B1H, 1H 			//2052 	AFB1
		RET 	0H 			//2054 	4012
		RET 	0H 			//2056 	4012

		//;setsysdata.c: 282: Engineering_Pattern.Led_Display_Timing_Enbale = 2;
		LDWI 	2H 			//2058 	4E02
		STR 	67H, 1H 			//205A 	AF67

		//;setsysdata.c: 283: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
		LDWI 	1H 			//205C 	4E01
		STR 	68H, 1H 			//205E 	AF68

		//;setsysdata.c: 284: Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
		LDWI 	0H 			//2060 	4E00
		STR 	20H, 0H 			//2062 	AE20
		LDWI 	0H 			//2064 	4E00
		STR 	21H, 0H 			//2066 	AE21
		LDWI 	0H 			//2068 	4E00
		STR 	22H, 0H 			//206A 	AE22
		LDWI 	0H 			//206C 	4E00
		STR 	23H, 0H 			//206E 	AE23
		LDWI 	0H 			//2070 	4E00
		STR 	24H, 0H 			//2072 	AE24
		MOVFF 	67H, 25H 		//2074 	0067 3025
		LCALL 	1B4EH, 0H 		//2078 	2CA7 300D

		//;setsysdata.c: 285: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_
		//+                          Enbale);
		LDWI 	0H 			//207C 	4E00
		STR 	22H, 0H 			//207E 	AE22
		LDWI 	0H 			//2080 	4E00
		STR 	23H, 0H 			//2082 	AE23
		LDWI 	0H 			//2084 	4E00
		STR 	24H, 0H 			//2086 	AE24
		LDWI 	0H 			//2088 	4E00
		STR 	25H, 0H 			//208A 	AE25
		LDWI 	0H 			//208C 	4E00
		STR 	26H, 0H 			//208E 	AE26
		MOVFF 	67H, 27H 		//2090 	0067 3027
		LCALL 	2716H, 0H 		//2094 	2C8B 3013

		//;setsysdata.c: 286: Engineering_Pattern.Time_Start_Flag = 1;
		LDWI 	1H 			//2098 	4E01
		MOVLB 	0H 			//209A 	4100
		STR 	60H, 1H 			//209C 	AF60

		//;setsysdata.c: 287: static int i = 0;;setsysdata.c: 288: Cmd_Process();
		LCALL 	3BA2H, 0H 		//209E 	2CD1 301D

		//;setsysdata.c: 289: i++;
		INRSNZ 	A6H, 1H, 1H 	//20A2 	8BA6
		INCR 	A7H, 1H, 1H 		//20A4 	6BA7

		//;setsysdata.c: 290: if (i > 100)
		BTSC 	A7H, 7H, 1H 		//20A6 	FFA7
		BRA 	20C2H 			//20A8 	100C
		LDR 	A7H, 0H, 1H 		//20AA 	91A7
		BNZ 	20B6H 			//20AC 	2104
		LDWI 	65H 			//20AE 	4E65
		SUBWR 	A6H, 0H, 1H 	//20B0 	9DA6
		BTSS 	D8H, 0H, 0H 		//20B2 	E0D8
		BRA 	20C2H 			//20B4 	1006

		//;setsysdata.c: 291: {;setsysdata.c: 292: i = 0;
		LDWI 	0H 			//20B6 	4E00
		STR 	A7H, 1H 			//20B8 	AFA7
		LDWI 	0H 			//20BA 	4E00
		STR 	A6H, 1H 			//20BC 	AFA6

		//;setsysdata.c: 293: Cmd_Send();
		LCALL 	24F4H, 0H 		//20BE 	2C7A 3012

		//;setsysdata.c: 294: };setsysdata.c: 296: SEG1(ch_table[RunData.ACDC_V / 100], 0);
		LDWI 	0H 			//20C2 	4E00
		STR 	20H, 0H 			//20C4 	AE20
		MOVFF 	108H, FH 		//20C6 	0108 300F
		MOVFF 	109H, 10H 		//20CA 	0109 3010
		LDWI 	0H 			//20CE 	4E00
		STR 	12H, 0H 			//20D0 	AE12
		LDWI 	64H 			//20D2 	4E64
		STR 	11H, 0H 			//20D4 	AE11
		LCALL 	5440H, 0H 		//20D6 	2C20 302A
		LDWI 	2BH 			//20DA 	4E2B
		ADDWR 	FH, 0H, 0H 		//20DC 	640F
		STR 	F6H, 0H 			//20DE 	AEF6
		LDWI 	7FH 			//20E0 	4E7F
		ADDWRC 	10H, 0H, 0H 	//20E2 	6010
		STR 	F7H, 0H 			//20E4 	AEF7
		TBLRD*  			//20E6 	4008
		LDR 	F5H, 0H, 0H 		//20E8 	90F5
		LCALL 	539AH, 0H 		//20EA 	2CCD 3029

		//;setsysdata.c: 297: SEG2(ch_table[(RunData.ACDC_V % 100) / 10], 0);
		LDWI 	0H 			//20EE 	4E00
		STR 	20H, 0H 			//20F0 	AE20
		LDWI 	0H 			//20F2 	4E00
		STR 	DH, 0H 			//20F4 	AE0D
		LDWI 	64H 			//20F6 	4E64
		STR 	CH, 0H 			//20F8 	AE0C
		MOVFF 	108H, AH 		//20FA 	0108 300A
		MOVFF 	109H, BH 		//20FE 	0109 300B
		LCALL 	5814H, 0H 		//2102 	2C0A 302C
		MOVFF 	AH, FH 		//2106 	000A 300F
		MOVFF 	BH, 10H 		//210A 	000B 3010
		LDWI 	0H 			//210E 	4E00
		STR 	12H, 0H 			//2110 	AE12
		LDWI 	AH 			//2112 	4E0A
		STR 	11H, 0H 			//2114 	AE11
		LCALL 	5440H, 0H 		//2116 	2C20 302A
		LDWI 	2BH 			//211A 	4E2B
		ADDWR 	FH, 0H, 0H 		//211C 	640F
		STR 	F6H, 0H 			//211E 	AEF6
		LDWI 	7FH 			//2120 	4E7F
		ADDWRC 	10H, 0H, 0H 	//2122 	6010
		STR 	F7H, 0H 			//2124 	AEF7
		TBLRD*  			//2126 	4008
		LDR 	F5H, 0H, 0H 		//2128 	90F5
		LCALL 	5346H, 0H 		//212A 	2CA3 3029

		//;setsysdata.c: 298: SEG3(ch_table[RunData.ACDC_V % 10], 0);
		LDWI 	0H 			//212E 	4E00
		STR 	20H, 0H 			//2130 	AE20
		MOVFF 	108H, AH 		//2132 	0108 300A
		MOVFF 	109H, BH 		//2136 	0109 300B
		LDWI 	0H 			//213A 	4E00
		STR 	DH, 0H 			//213C 	AE0D
		LDWI 	AH 			//213E 	4E0A
		STR 	CH, 0H 			//2140 	AE0C
		LCALL 	5814H, 0H 		//2142 	2C0A 302C
		LDWI 	2BH 			//2146 	4E2B
		ADDWR 	AH, 0H, 0H 		//2148 	640A
		STR 	F6H, 0H 			//214A 	AEF6
		LDWI 	7FH 			//214C 	4E7F
		ADDWRC 	BH, 0H, 0H 	//214E 	600B
		STR 	F7H, 0H 			//2150 	AEF7
		TBLRD*  			//2152 	4008
		LDR 	F5H, 0H, 0H 		//2154 	90F5
		LCALL 	52F2H, 0H 		//2156 	2C79 3029

		//;setsysdata.c: 299: SEG4(0x00 , 0);
		LDWI 	0H 			//215A 	4E00
		STR 	20H, 0H 			//215C 	AE20
		LDWI 	0H 			//215E 	4E00
		LCALL 	529EH, 0H 		//2160 	2C4F 3029

		//;setsysdata.c: 300: SEG5(0x00 , 0);
		LDWI 	0H 			//2164 	4E00
		STR 	13H, 0H 			//2166 	AE13
		LDWI 	0H 			//2168 	4E00
		LCALL 	524AH, 0H 		//216A 	2C25 3029

		//;setsysdata.c: 301: SEG6(0x00 , 0);
		LDWI 	0H 			//216E 	4E00
		STR 	18H, 0H 			//2170 	AE18
		LDWI 	0H 			//2172 	4E00
		LCALL 	51F6H, 0H 		//2174 	2CFB 3028

		//;setsysdata.c: 302: SEG7(ch_table[(RunData.Voltage_Calibration) / 100] , 0);
		LDWI 	0H 			//2178 	4E00
		STR 	18H, 0H 			//217A 	AE18
		MOVFF 	148H, 10H 		//217C 	0148 3010
		MOVFF 	149H, 11H 		//2180 	0149 3011
		LDWI 	0H 			//2184 	4E00
		STR 	13H, 0H 			//2186 	AE13
		LDWI 	64H 			//2188 	4E64
		STR 	12H, 0H 			//218A 	AE12
		LCALL 	4966H, 0H 		//218C 	2CB3 3024
		LDWI 	2BH 			//2190 	4E2B
		ADDWR 	10H, 0H, 0H 	//2192 	6410
		STR 	F6H, 0H 			//2194 	AEF6
		LDWI 	7FH 			//2196 	4E7F
		ADDWRC 	11H, 0H, 0H 	//2198 	6011
		STR 	F7H, 0H 			//219A 	AEF7
		TBLRD*  			//219C 	4008
		LDR 	F5H, 0H, 0H 		//219E 	90F5
		LCALL 	51A2H, 0H 		//21A0 	2CD1 3028

		//;setsysdata.c: 303: SEG8(ch_table[((RunData.Voltage_Calibration) % 100) / 10] , 0);
		LDWI 	0H 			//21A4 	4E00
		STR 	18H, 0H 			//21A6 	AE18
		LDWI 	0H 			//21A8 	4E00
		STR 	DH, 0H 			//21AA 	AE0D
		LDWI 	64H 			//21AC 	4E64
		STR 	CH, 0H 			//21AE 	AE0C
		MOVFF 	148H, AH 		//21B0 	0148 300A
		MOVFF 	149H, BH 		//21B4 	0149 300B
		LCALL 	4BC8H, 0H 		//21B8 	2CE4 3025
		MOVFF 	AH, 10H 		//21BC 	000A 3010
		MOVFF 	BH, 11H 		//21C0 	000B 3011
		LDWI 	0H 			//21C4 	4E00
		STR 	13H, 0H 			//21C6 	AE13
		LDWI 	AH 			//21C8 	4E0A
		STR 	12H, 0H 			//21CA 	AE12
		LCALL 	4966H, 0H 		//21CC 	2CB3 3024
		LDWI 	2BH 			//21D0 	4E2B
		ADDWR 	10H, 0H, 0H 	//21D2 	6410
		STR 	F6H, 0H 			//21D4 	AEF6
		LDWI 	7FH 			//21D6 	4E7F
		ADDWRC 	11H, 0H, 0H 	//21D8 	6011
		STR 	F7H, 0H 			//21DA 	AEF7
		TBLRD*  			//21DC 	4008
		LDR 	F5H, 0H, 0H 		//21DE 	90F5
		LCALL 	514EH, 0H 		//21E0 	2CA7 3028

		//;setsysdata.c: 304: SEG9(ch_table[(RunData.Voltage_Calibration) % 10] , 0);
		LDWI 	0H 			//21E4 	4E00
		STR 	10H, 0H 			//21E6 	AE10
		MOVFF 	148H, AH 		//21E8 	0148 300A
		MOVFF 	149H, BH 		//21EC 	0149 300B
		LDWI 	0H 			//21F0 	4E00
		STR 	DH, 0H 			//21F2 	AE0D
		LDWI 	AH 			//21F4 	4E0A
		STR 	CH, 0H 			//21F6 	AE0C
		LCALL 	4BC8H, 0H 		//21F8 	2CE4 3025
		LDWI 	2BH 			//21FC 	4E2B
		ADDWR 	AH, 0H, 0H 		//21FE 	640A
		STR 	F6H, 0H 			//2200 	AEF6
		LDWI 	7FH 			//2202 	4E7F
		ADDWRC 	BH, 0H, 0H 	//2204 	600B
		STR 	F7H, 0H 			//2206 	AEF7
		TBLRD*  			//2208 	4008
		LDR 	F5H, 0H, 0H 		//220A 	90F5
		LCALL 	50FAH, 0H 		//220C 	2C7D 3028

		//;setsysdata.c: 305: Display_hour(0);
		LDWI 	0H 			//2210 	4E00
		LCALL 	5ED8H, 0H 		//2212 	2C6C 302F

		//;setsysdata.c: 310: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//2216 	4E00
		STR 	64H, 1H 			//2218 	AF64

		//;setsysdata.c: 311: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
		LCALL 	4098H, 0H 		//221A 	2C4C 3020
		LDR 	2EH, 0H, 0H 		//221E 	902E
		MOVLB 	0H 			//2220 	4100
		STR 	64H, 1H 			//2222 	AF64

		//;setsysdata.c: 313: static int j = 0;;setsysdata.c: 314: j++;
		MOVLB 	1H 			//2224 	4101
		INRSNZ 	A4H, 1H, 1H 	//2226 	8BA4
		INCR 	A5H, 1H, 1H 		//2228 	6BA5

		//;setsysdata.c: 315: if (j < 300)
		BTSC 	A5H, 7H, 1H 		//222A 	FFA5
		RET 	0H 			//222C 	4012
		LDWI 	2CH 			//222E 	4E2C
		SUBWR 	A4H, 0H, 1H 	//2230 	9DA4
		LDWI 	1H 			//2232 	4E01
		SUBWRB 	A5H, 0H, 1H 	//2234 	99A5
		BTSS 	D8H, 0H, 0H 		//2236 	E0D8
		RET 	0H 			//2238 	4012

		//;setsysdata.c: 317: else;setsysdata.c: 318: j = 0;
		LDWI 	0H 			//223A 	4E00
		STR 	A5H, 1H 			//223C 	AFA5
		LDWI 	0H 			//223E 	4E00
		STR 	A4H, 1H 			//2240 	AFA4

		//;setsysdata.c: 319: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//2242 	4E03
		MOVLB 	0H 			//2244 	4100
		XORWR 	64H, 0H, 1H 	//2246 	5964
		BTSS 	D8H, 2H, 0H 		//2248 	E4D8
		BRA 	2262H 			//224A 	100B

		//;setsysdata.c: 320: {;setsysdata.c: 321: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//224C 	0064 3010
		CLRR 	11H, 0H 		//2250 	AA11
		LCALL 	5492H, 0H 		//2252 	2C49 302A

		//;setsysdata.c: 322: RunData.Voltage_Calibration++;
		MOVLB 	1H 			//2256 	4101
		INRSNZ 	48H, 1H, 1H 	//2258 	8B48
		INCR 	49H, 1H, 1H 		//225A 	6B49

		//;setsysdata.c: 323: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//225C 	4E00
		MOVLB 	0H 			//225E 	4100
		STR 	61H, 1H 			//2260 	AF61

		//;setsysdata.c: 324: };setsysdata.c: 326: if (Engineering_Pattern.IKey == 4)
		LDWI 	4H 			//2262 	4E04
		XORWR 	64H, 0H, 1H 	//2264 	5964
		BTSS 	D8H, 2H, 0H 		//2266 	E4D8
		BRA 	2282H 			//2268 	100C

		//;setsysdata.c: 327: {;setsysdata.c: 328: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//226A 	0064 3010
		CLRR 	11H, 0H 		//226E 	AA11
		LCALL 	5492H, 0H 		//2270 	2C49 302A

		//;setsysdata.c: 329: RunData.Voltage_Calibration--;
		MOVLB 	1H 			//2274 	4101
		DECR 	48H, 1H, 1H 		//2276 	4748
		BTSS 	D8H, 0H, 0H 		//2278 	E0D8
		DECR 	49H, 1H, 1H 		//227A 	4749

		//;setsysdata.c: 330: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//227C 	4E00
		MOVLB 	0H 			//227E 	4100
		STR 	61H, 1H 			//2280 	AF61

		//;setsysdata.c: 331: };setsysdata.c: 332: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//2282 	4E00
		STR 	64H, 1H 			//2284 	AF64

		//;setsysdata.c: 334: Engineering_Timeout_Logic(currentMode);
		LDR 	ACH, 0H, 1H 		//2286 	91AC
		LCALL 	55CCH, 0H 		//2288 	2CE6 302A

		//;setsysdata.c: 335: if (Engineering_Pattern.Return_Flag == 1)
		MOVLB 	0H 			//228C 	4100
		DECR 	65H, 0H, 1H 		//228E 	4565
		BTSS 	D8H, 2H, 0H 		//2290 	E4D8
		RET 	0H 			//2292 	4012

		//;setsysdata.c: 336: {;setsysdata.c: 337: Engineering_Pattern.Time_Start_Flag = 0;
		LDWI 	0H 			//2294 	4E00
		STR 	60H, 1H 			//2296 	AF60

		//;setsysdata.c: 338: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2298 	4E00
		STR 	61H, 1H 			//229A 	AF61

		//;setsysdata.c: 339: Engineering_Pattern.Return_Flag = 0;
		LDWI 	0H 			//229C 	4E00
		STR 	65H, 1H 			//229E 	AF65

		//;setsysdata.c: 340: E2prom_WriteData();
		LCALL 	3936H, 0H 		//22A0 	2C9B 301C

		//;setsysdata.c: 341: currentMode = ENGINEERING_MODE_IDLE;
		LDWI 	0H 			//22A4 	4E00
		MOVLB 	0H 			//22A6 	4100
		STR 	ACH, 1H 			//22A8 	AFAC

		//;setsysdata.c: 343: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//22AA 	4E00
		STR 	66H, 1H 			//22AC 	AF66

		//;setsysdata.c: 344: Engineering_Pattern.Led_Display_Timing_Enbale = 0;
		LDWI 	0H 			//22AE 	4E00
		STR 	67H, 1H 			//22B0 	AF67

		//;setsysdata.c: 345: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
		LDWI 	0H 			//22B2 	4E00
		STR 	68H, 1H 			//22B4 	AF68
		RET 	0H 			//22B6 	4012

		//;control.c: 199: static u8 init_stack = 0;;control.c: 200: if(init_stack == 0)
		MOVLB 	0H 			//22B8 	4100
		LDR 	AEH, 0H, 1H 		//22BA 	91AE
		BTSS 	D8H, 2H, 0H 		//22BC 	E4D8
		BRA 	22D8H 			//22BE 	100C

		//;control.c: 201: {;control.c: 202: initialize(&Error_Code_Stack);
		LDWI 	BEH 			//22C0 	4EBE
		STR 	AH, 0H 			//22C2 	AE0A
		LDWI 	2H 			//22C4 	4E02
		STR 	BH, 0H 			//22C6 	AE0B
		LCALL 	5E48H, 0H 		//22C8 	2C24 302F

		//;control.c: 203: printf("stack init ok!\r\n");
		LDWI 	BAH 			//22CC 	4EBA
		STR 	22H, 0H 			//22CE 	AE22
		LDWI 	7FH 			//22D0 	4E7F
		STR 	23H, 0H 			//22D2 	AE23
		LCALL 	5B6AH, 0H 		//22D4 	2CB5 302D

		//;control.c: 204: };control.c: 205: init_stack = 1;
		LDWI 	1H 			//22D8 	4E01
		MOVLB 	0H 			//22DA 	4100
		STR 	AEH, 1H 			//22DC 	AFAE

		//;control.c: 206: static u16 count1 = 0;;control.c: 207: static u16 count2 = 0;;control.c
		//+                          : 208: static u16 count3 = 0;;control.c: 210: if (RunData.ErrCodeSecCount >= 115)
		MOVLB 	1H 			//22DE 	4101
		LDR 	44H, 0H, 1H 		//22E0 	9144
		BNZ 	22ECH 			//22E2 	2104
		LDWI 	73H 			//22E4 	4E73
		SUBWR 	43H, 0H, 1H 	//22E6 	9D43
		BTSS 	D8H, 0H, 0H 		//22E8 	E0D8
		BRA 	240CH 			//22EA 	1090

		//;control.c: 211: {;control.c: 212: RunData.ErrCodeSecCount = 115;
		LDWI 	0H 			//22EC 	4E00
		STR 	44H, 1H 			//22EE 	AF44
		LDWI 	73H 			//22F0 	4E73
		STR 	43H, 1H 			//22F2 	AF43

		//;control.c: 214: if (RunData.Concentration <= 500)
		BTSC 	FH, 7H, 1H 		//22F4 	FF0F
		BRA 	2304H 			//22F6 	1006
		LDWI 	F5H 			//22F8 	4EF5
		SUBWR 	EH, 0H, 1H 		//22FA 	9D0E
		LDWI 	1H 			//22FC 	4E01
		SUBWRB 	FH, 0H, 1H 	//22FE 	990F
		BTSC 	D8H, 0H, 0H 		//2300 	F0D8
		BRA 	2340H 			//2302 	101E

		//;control.c: 215: {;control.c: 216: push(&Error_Code_Stack,0xE3);
		LDWI 	BEH 			//2304 	4EBE
		STR 	13H, 0H 			//2306 	AE13
		LDWI 	2H 			//2308 	4E02
		STR 	14H, 0H 			//230A 	AE14
		LDWI 	0H 			//230C 	4E00
		STR 	16H, 0H 			//230E 	AE16
		LDWI 	E3H 			//2310 	4EE3
		STR 	15H, 0H 			//2312 	AE15
		LCALL 	4C38H, 0H 		//2314 	2C1C 3026

		//;control.c: 217: RunData.AOD_TimeCount = 0;
		LDWI 	0H 			//2318 	4E00
		STR 	32H, 1H 			//231A 	AF32
		LDWI 	0H 			//231C 	4E00
		STR 	31H, 1H 			//231E 	AF31

		//;control.c: 218: count1++;
		INRSNZ 	B8H, 1H, 1H 	//2320 	8BB8
		INCR 	B9H, 1H, 1H 		//2322 	6BB9

		//;control.c: 219: if (count1 >= 500)
		LDWI 	F4H 			//2324 	4EF4
		SUBWR 	B8H, 0H, 1H 	//2326 	9DB8
		LDWI 	1H 			//2328 	4E01
		SUBWRB 	B9H, 0H, 1H 	//232A 	99B9
		BTSS 	D8H, 0H, 0H 		//232C 	E0D8
		BRA 	2378H 			//232E 	1024

		//;control.c: 220: {;control.c: 221: count1 = 500;
		LDWI 	1H 			//2330 	4E01
		STR 	B9H, 1H 			//2332 	AFB9
		LDWI 	F4H 			//2334 	4EF4
		STR 	B8H, 1H 			//2336 	AFB8

		//;control.c: 222: if ((RunData.SysSta2 & 0x01) == 0) {
		BTSC 	3H, 0H, 1H 		//2338 	F103
		BRA 	2378H 			//233A 	101E

		//;control.c: 224: RunData.SysSta2 |= 0x01;
		BSR 	3H, 0H, 1H 		//233C 	C103
		BRA 	2378H 			//233E 	101C

		//;control.c: 228: else;control.c: 229: {;control.c: 230: deleteElementAt(&Error_Code_Stac
		//+                          k,findElementIndex(&Error_Code_Stack,0xE3));
		LDWI 	BEH 			//2340 	4EBE
		STR 	13H, 0H 			//2342 	AE13
		LDWI 	2H 			//2344 	4E02
		STR 	14H, 0H 			//2346 	AE14
		LDWI 	BEH 			//2348 	4EBE
		STR 	AH, 0H 			//234A 	AE0A
		LDWI 	2H 			//234C 	4E02
		STR 	BH, 0H 			//234E 	AE0B
		LDWI 	0H 			//2350 	4E00
		STR 	DH, 0H 			//2352 	AE0D
		LDWI 	E3H 			//2354 	4EE3
		STR 	CH, 0H 			//2356 	AE0C
		LCALL 	4E32H, 0H 		//2358 	2C19 3027
		MOVFF 	AH, 15H 		//235C 	000A 3015
		MOVFF 	BH, 16H 		//2360 	000B 3016
		LCALL 	42FAH, 0H 		//2364 	2C7D 3021

		//;control.c: 231: count1 = 0;
		LDWI 	0H 			//2368 	4E00
		STR 	B9H, 1H 			//236A 	AFB9
		LDWI 	0H 			//236C 	4E00
		STR 	B8H, 1H 			//236E 	AFB8

		//;control.c: 232: if (RunData.SysSta2 & 0x01)
		BTSS 	3H, 0H, 1H 		//2370 	E103
		BRA 	2378H 			//2372 	1002

		//;control.c: 233: RunData.SysSta2 = 0;
		LDWI 	0H 			//2374 	4E00
		STR 	3H, 1H 			//2376 	AF03

		//;control.c: 234: };control.c: 237: if ((RunData.Concentration > 500) && (RunData.Concent
		//+                          ration <= 820))
		BTSC 	FH, 7H, 1H 		//2378 	FF0F
		BRA 	23D4H 			//237A 	102C
		LDWI 	F5H 			//237C 	4EF5
		SUBWR 	EH, 0H, 1H 		//237E 	9D0E
		LDWI 	1H 			//2380 	4E01
		SUBWRB 	FH, 0H, 1H 	//2382 	990F
		BTSS 	D8H, 0H, 0H 		//2384 	E0D8
		BRA 	23D4H 			//2386 	1026
		BTSC 	FH, 7H, 1H 		//2388 	FF0F
		BRA 	2398H 			//238A 	1006
		LDWI 	35H 			//238C 	4E35
		SUBWR 	EH, 0H, 1H 		//238E 	9D0E
		LDWI 	3H 			//2390 	4E03
		SUBWRB 	FH, 0H, 1H 	//2392 	990F
		BTSC 	D8H, 0H, 0H 		//2394 	F0D8
		BRA 	23D4H 			//2396 	101E

		//;control.c: 238: {;control.c: 239: push(&Error_Code_Stack,0xE2);
		LDWI 	BEH 			//2398 	4EBE
		STR 	13H, 0H 			//239A 	AE13
		LDWI 	2H 			//239C 	4E02
		STR 	14H, 0H 			//239E 	AE14
		LDWI 	0H 			//23A0 	4E00
		STR 	16H, 0H 			//23A2 	AE16
		LDWI 	E2H 			//23A4 	4EE2
		STR 	15H, 0H 			//23A6 	AE15
		LCALL 	4C38H, 0H 		//23A8 	2C1C 3026

		//;control.c: 240: RunData.AOD_TimeCount = 0;
		LDWI 	0H 			//23AC 	4E00
		STR 	32H, 1H 			//23AE 	AF32
		LDWI 	0H 			//23B0 	4E00
		STR 	31H, 1H 			//23B2 	AF31

		//;control.c: 241: count2++;
		INRSNZ 	B6H, 1H, 1H 	//23B4 	8BB6
		INCR 	B7H, 1H, 1H 		//23B6 	6BB7

		//;control.c: 242: if (count2 > 500)
		LDWI 	F5H 			//23B8 	4EF5
		SUBWR 	B6H, 0H, 1H 	//23BA 	9DB6
		LDWI 	1H 			//23BC 	4E01
		SUBWRB 	B7H, 0H, 1H 	//23BE 	99B7
		BTSS 	D8H, 0H, 0H 		//23C0 	E0D8
		BRA 	240CH 			//23C2 	1024

		//;control.c: 243: {;control.c: 244: count2 = 500;
		LDWI 	1H 			//23C4 	4E01
		STR 	B7H, 1H 			//23C6 	AFB7
		LDWI 	F4H 			//23C8 	4EF4
		STR 	B6H, 1H 			//23CA 	AFB6

		//;control.c: 245: if ((RunData.SysSta2 & 0x02) == 0) {
		BTSC 	3H, 1H, 1H 		//23CC 	F303
		BRA 	240CH 			//23CE 	101E

		//;control.c: 247: RunData.SysSta2 |= 0x02;
		BSR 	3H, 1H, 1H 		//23D0 	C303
		BRA 	240CH 			//23D2 	101C

		//;control.c: 251: else;control.c: 252: {;control.c: 253: deleteElementAt(&Error_Code_Stac
		//+                          k,findElementIndex(&Error_Code_Stack,0xE2));
		LDWI 	BEH 			//23D4 	4EBE
		STR 	13H, 0H 			//23D6 	AE13
		LDWI 	2H 			//23D8 	4E02
		STR 	14H, 0H 			//23DA 	AE14
		LDWI 	BEH 			//23DC 	4EBE
		STR 	AH, 0H 			//23DE 	AE0A
		LDWI 	2H 			//23E0 	4E02
		STR 	BH, 0H 			//23E2 	AE0B
		LDWI 	0H 			//23E4 	4E00
		STR 	DH, 0H 			//23E6 	AE0D
		LDWI 	E2H 			//23E8 	4EE2
		STR 	CH, 0H 			//23EA 	AE0C
		LCALL 	4E32H, 0H 		//23EC 	2C19 3027
		MOVFF 	AH, 15H 		//23F0 	000A 3015
		MOVFF 	BH, 16H 		//23F4 	000B 3016
		LCALL 	42FAH, 0H 		//23F8 	2C7D 3021

		//;control.c: 254: count2 = 0;
		LDWI 	0H 			//23FC 	4E00
		STR 	B7H, 1H 			//23FE 	AFB7
		LDWI 	0H 			//2400 	4E00
		STR 	B6H, 1H 			//2402 	AFB6

		//;control.c: 255: if (RunData.SysSta2 & 0x02)
		BTSS 	3H, 1H, 1H 		//2404 	E303
		BRA 	240CH 			//2406 	1002

		//;control.c: 256: RunData.SysSta2 = 0;
		LDWI 	0H 			//2408 	4E00
		STR 	3H, 1H 			//240A 	AF03

		//;control.c: 257: };control.c: 258: };control.c: 260: if (RunData.ErrCodeSecCount >= 6)
		LDR 	44H, 0H, 1H 		//240C 	9144
		BNZ 	2418H 			//240E 	2104
		LDWI 	6H 			//2410 	4E06
		SUBWR 	43H, 0H, 1H 	//2412 	9D43
		BTSS 	D8H, 0H, 0H 		//2414 	E0D8
		BRA 	2498H 			//2416 	1040

		//;control.c: 261: {;control.c: 262: if (RunData.ACDC_V <= RunData.Voltage_Calibration)
		LDR 	8H, 0H, 1H 		//2418 	9108
		SUBWR 	48H, 0H, 1H 	//241A 	9D48
		LDR 	9H, 0H, 1H 		//241C 	9109
		SUBWRB 	49H, 0H, 1H 	//241E 	9949
		BTSS 	D8H, 0H, 0H 		//2420 	E0D8
		BRA 	2460H 			//2422 	101E

		//;control.c: 263: {;control.c: 264: push(&Error_Code_Stack,0xE5);
		LDWI 	BEH 			//2424 	4EBE
		STR 	13H, 0H 			//2426 	AE13
		LDWI 	2H 			//2428 	4E02
		STR 	14H, 0H 			//242A 	AE14
		LDWI 	0H 			//242C 	4E00
		STR 	16H, 0H 			//242E 	AE16
		LDWI 	E5H 			//2430 	4EE5
		STR 	15H, 0H 			//2432 	AE15
		LCALL 	4C38H, 0H 		//2434 	2C1C 3026

		//;control.c: 266: count3++;
		INRSNZ 	B4H, 1H, 1H 	//2438 	8BB4
		INCR 	B5H, 1H, 1H 		//243A 	6BB5

		//;control.c: 267: RunData.AOD_TimeCount = 0;
		LDWI 	0H 			//243C 	4E00
		STR 	32H, 1H 			//243E 	AF32
		LDWI 	0H 			//2440 	4E00
		STR 	31H, 1H 			//2442 	AF31

		//;control.c: 268: if (count3 > 500)
		LDWI 	F5H 			//2444 	4EF5
		SUBWR 	B4H, 0H, 1H 	//2446 	9DB4
		LDWI 	1H 			//2448 	4E01
		SUBWRB 	B5H, 0H, 1H 	//244A 	99B5
		BTSS 	D8H, 0H, 0H 		//244C 	E0D8
		BRA 	2498H 			//244E 	1024

		//;control.c: 269: {;control.c: 270: count3 = 500;
		LDWI 	1H 			//2450 	4E01
		STR 	B5H, 1H 			//2452 	AFB5
		LDWI 	F4H 			//2454 	4EF4
		STR 	B4H, 1H 			//2456 	AFB4

		//;control.c: 271: if ((RunData.SysSta2 & 0x04) == 0)
		BTSC 	3H, 2H, 1H 		//2458 	F503
		BRA 	2498H 			//245A 	101E

		//;control.c: 272: {;control.c: 274: RunData.SysSta2 |= 0x04;
		BSR 	3H, 2H, 1H 		//245C 	C503
		BRA 	2498H 			//245E 	101C

		//;control.c: 278: else;control.c: 279: {;control.c: 280: deleteElementAt(&Error_Code_Stac
		//+                          k,findElementIndex(&Error_Code_Stack,0xE5));
		LDWI 	BEH 			//2460 	4EBE
		STR 	13H, 0H 			//2462 	AE13
		LDWI 	2H 			//2464 	4E02
		STR 	14H, 0H 			//2466 	AE14
		LDWI 	BEH 			//2468 	4EBE
		STR 	AH, 0H 			//246A 	AE0A
		LDWI 	2H 			//246C 	4E02
		STR 	BH, 0H 			//246E 	AE0B
		LDWI 	0H 			//2470 	4E00
		STR 	DH, 0H 			//2472 	AE0D
		LDWI 	E5H 			//2474 	4EE5
		STR 	CH, 0H 			//2476 	AE0C
		LCALL 	4E32H, 0H 		//2478 	2C19 3027
		MOVFF 	AH, 15H 		//247C 	000A 3015
		MOVFF 	BH, 16H 		//2480 	000B 3016
		LCALL 	42FAH, 0H 		//2484 	2C7D 3021

		//;control.c: 281: count3 = 0;
		LDWI 	0H 			//2488 	4E00
		STR 	B5H, 1H 			//248A 	AFB5
		LDWI 	0H 			//248C 	4E00
		STR 	B4H, 1H 			//248E 	AFB4

		//;control.c: 282: if (RunData.SysSta2 & 0x04)
		BTSS 	3H, 2H, 1H 		//2490 	E503
		BRA 	2498H 			//2492 	1002

		//;control.c: 283: RunData.SysSta2 = 0;
		LDWI 	0H 			//2494 	4E00
		STR 	3H, 1H 			//2496 	AF03

		//;control.c: 284: };control.c: 285: };control.c: 286: if (RunData.SysSta2 == 0)
		LDR 	3H, 0H, 1H 		//2498 	9103
		BTSS 	D8H, 2H, 0H 		//249A 	E4D8
		BRA 	24A8H 			//249C 	1005

		//;control.c: 287: {;control.c: 289: RunData.SysSta = 0xFF;
		SETR 	2H, 1H 			//249E 	A902

		//;control.c: 290: RunData.AlarmSwitch = 0;
		LDWI 	0H 			//24A0 	4E00
		STR 	3CH, 1H 			//24A2 	AF3C
		LDWI 	0H 			//24A4 	4E00
		STR 	3BH, 1H 			//24A6 	AF3B

		//;control.c: 291: };control.c: 293: RunData.last_SysSta = RunData.SysSta;
		MOVFF 	102H, 14AH 		//24A8 	0102 314A

		//;control.c: 294: RunData.SysSta = peek(&Error_Code_Stack);
		LDWI 	BEH 			//24AC 	4EBE
		STR 	EH, 0H 			//24AE 	AE0E
		LDWI 	2H 			//24B0 	4E02
		STR 	FH, 0H 			//24B2 	AE0F
		LCALL 	56B0H, 0H 		//24B4 	2C58 302B
		LDR 	EH, 0H, 0H 		//24B8 	900E
		STR 	2H, 1H 			//24BA 	AF02

		//;control.c: 296: if(RunData.last_SysSta != RunData.SysSta && RunData.AlarmSwitch == 1)
		LDR 	2H, 0H, 1H 		//24BC 	9102
		XORWR 	4AH, 0H, 1H 	//24BE 	594A
		BTSC 	D8H, 2H, 0H 		//24C0 	F4D8
		BRA 	24DEH 			//24C2 	100D
		DECR 	3BH, 0H, 1H 		//24C4 	453B
		IORWR 	3CH, 0H, 1H 	//24C6 	513C
		BTSS 	D8H, 2H, 0H 		//24C8 	E4D8
		BRA 	24DEH 			//24CA 	1009

		//;control.c: 297: {;control.c: 298: RunData.AlarmSwitch = !RunData.AlarmSwitch;
		LDR 	3BH, 0H, 1H 		//24CC 	913B
		IORWR 	3CH, 0H, 1H 	//24CE 	513C
		BTSS 	D8H, 2H, 0H 		//24D0 	E4D8
		BRA 	24D8H 			//24D2 	1002
		LDWI 	1H 			//24D4 	4E01
		BRA 	24DAH 			//24D6 	1001
		LDWI 	0H 			//24D8 	4E00
		STR 	3BH, 1H 			//24DA 	AF3B
		CLRR 	3CH, 1H 		//24DC 	AB3C

		//;control.c: 299: };control.c: 302: if(RunData.SysSta != 0xFF)
		INCR 	2H, 0H, 1H 		//24DE 	6902
		BTSC 	D8H, 2H, 0H 		//24E0 	F4D8
		BRA 	24EAH 			//24E2 	1003

		//;control.c: 303: {;control.c: 304: RunData.Error_Flag = 1;
		LDWI 	1H 			//24E4 	4E01
		STR 	45H, 1H 			//24E6 	AF45

		//;control.c: 305: }
		RET 	0H 			//24E8 	4012

		//;control.c: 306: else;control.c: 307: {;control.c: 308: RunData.Error_Flag = 0;
		LDWI 	0H 			//24EA 	4E00
		STR 	45H, 1H 			//24EC 	AF45

		//;control.c: 309: RunData.Error_Delay_Time = 0;
		LDWI 	0H 			//24EE 	4E00
		STR 	46H, 1H 			//24F0 	AF46
		RET 	0H 			//24F2 	4012

		//;uart2.c: 154: static int send_FlowSet = 0;;uart2.c: 155: if(RunData.FlowSet == (5 * 10
		//+                          * 0.2))
		MOVFF 	104H, 12H 		//24F4 	0104 3012
		MOVFF 	105H, 13H 		//24F8 	0105 3013
		LCALL 	59B6H, 0H 		//24FC 	2CDB 302C
		LDWI 	20H 			//2500 	4E20
		XORWR 	13H, 0H, 0H 	//2502 	5813
		BNZ 	2520H 			//2504 	210D
		LDWI 	41H 			//2506 	4E41
		XORWR 	14H, 0H, 0H 	//2508 	5814
		IORWR 	12H, 0H, 0H 	//250A 	5012
		BTSS 	D8H, 2H, 0H 		//250C 	E4D8
		BRA 	2520H 			//250E 	1008

		//;uart2.c: 156: {;uart2.c: 157: send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_20_v
		//+                          alue;
		MOVLB 	1H 			//2510 	4101
		LDR 	4BH, 0H, 1H 		//2512 	914B
		ADDWR 	4H, 0H, 1H 		//2514 	6504
		MOVLB 	0H 			//2516 	4100
		STR 	91H, 1H 			//2518 	AF91
		MOVLB 	1H 			//251A 	4101
		LDR 	4CH, 0H, 1H 		//251C 	914C
		BRA 	2564H 			//251E 	1022

		//;uart2.c: 159: else if(RunData.FlowSet == (5 * 10 * 0.5))
		MOVFF 	104H, 12H 		//2520 	0104 3012
		MOVFF 	105H, 13H 		//2524 	0105 3013
		LCALL 	59B6H, 0H 		//2528 	2CDB 302C
		LDWI 	C8H 			//252C 	4EC8
		XORWR 	13H, 0H, 0H 	//252E 	5813
		BNZ 	254CH 			//2530 	210D
		LDWI 	41H 			//2532 	4E41
		XORWR 	14H, 0H, 0H 	//2534 	5814
		IORWR 	12H, 0H, 0H 	//2536 	5012
		BTSS 	D8H, 2H, 0H 		//2538 	E4D8
		BRA 	254CH 			//253A 	1008

		//;uart2.c: 160: {;uart2.c: 161: send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_50_v
		//+                          alue;
		MOVLB 	1H 			//253C 	4101
		LDR 	4DH, 0H, 1H 		//253E 	914D
		ADDWR 	4H, 0H, 1H 		//2540 	6504
		MOVLB 	0H 			//2542 	4100
		STR 	91H, 1H 			//2544 	AF91
		MOVLB 	1H 			//2546 	4101
		LDR 	4EH, 0H, 1H 		//2548 	914E
		BRA 	2564H 			//254A 	100C

		//;uart2.c: 163: else if(RunData.FlowSet == (5 * 10 * 1))
		LDWI 	32H 			//254C 	4E32
		MOVLB 	1H 			//254E 	4101
		XORWR 	4H, 0H, 1H 		//2550 	5904
		IORWR 	5H, 0H, 1H 		//2552 	5105
		BTSS 	D8H, 2H, 0H 		//2554 	E4D8
		BRA 	256CH 			//2556 	100A

		//;uart2.c: 164: {;uart2.c: 165: send_FlowSet = RunData.FlowSet + RunData.Adjust_Flow_100_
		//+                          value;
		LDR 	4FH, 0H, 1H 		//2558 	914F
		ADDWR 	4H, 0H, 1H 		//255A 	6504
		MOVLB 	0H 			//255C 	4100
		STR 	91H, 1H 			//255E 	AF91
		MOVLB 	1H 			//2560 	4101
		LDR 	50H, 0H, 1H 		//2562 	9150
		ADDWRC 	5H, 0H, 1H 	//2564 	6105
		MOVLB 	0H 			//2566 	4100
		STR 	92H, 1H 			//2568 	AF92

		//;uart2.c: 166: }
		BRA 	2574H 			//256A 	1004

		//;uart2.c: 167: else{;uart2.c: 168: send_FlowSet = RunData.FlowSet;
		MOVFF 	104H, 91H 		//256C 	0104 3091
		MOVFF 	105H, 92H 		//2570 	0105 3092

		//;uart2.c: 169: };uart2.c: 170: sUsart2.TxNum=0;
		LDWI 	0H 			//2574 	4E00
		MOVLB 	2H 			//2576 	4102
		STR 	B7H, 1H 			//2578 	AFB7
		LDWI 	0H 			//257A 	4E00
		STR 	B6H, 1H 			//257C 	AFB6

		//;uart2.c: 171: sUsart2.TxData[sUsart2.TxNum++] = 0xD5;
		LDWI 	A2H 			//257E 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2580 	65B6
		STR 	D9H, 0H 			//2582 	AED9
		LDWI 	2H 			//2584 	4E02
		ADDWRC 	B7H, 0H, 1H 	//2586 	61B7
		STR 	DAH, 0H 			//2588 	AEDA
		LDWI 	D5H 			//258A 	4ED5
		STR 	DFH, 0H 			//258C 	AEDF
		INRSNZ 	B6H, 1H, 1H 	//258E 	8BB6
		INCR 	B7H, 1H, 1H 		//2590 	6BB7

		//;uart2.c: 172: sUsart2.TxData[sUsart2.TxNum++] = 0x00;
		LDWI 	A2H 			//2592 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2594 	65B6
		STR 	D9H, 0H 			//2596 	AED9
		LDWI 	2H 			//2598 	4E02
		ADDWRC 	B7H, 0H, 1H 	//259A 	61B7
		STR 	DAH, 0H 			//259C 	AEDA
		LDWI 	0H 			//259E 	4E00
		STR 	DFH, 0H 			//25A0 	AEDF
		INRSNZ 	B6H, 1H, 1H 	//25A2 	8BB6
		INCR 	B7H, 1H, 1H 		//25A4 	6BB7

		//;uart2.c: 173: sUsart2.TxData[sUsart2.TxNum++] = 0x00;
		LDWI 	A2H 			//25A6 	4EA2
		ADDWR 	B6H, 0H, 1H 	//25A8 	65B6
		STR 	D9H, 0H 			//25AA 	AED9
		LDWI 	2H 			//25AC 	4E02
		ADDWRC 	B7H, 0H, 1H 	//25AE 	61B7
		STR 	DAH, 0H 			//25B0 	AEDA
		LDWI 	0H 			//25B2 	4E00
		STR 	DFH, 0H 			//25B4 	AEDF
		INRSNZ 	B6H, 1H, 1H 	//25B6 	8BB6
		INCR 	B7H, 1H, 1H 		//25B8 	6BB7

		//;uart2.c: 174: sUsart2.TxData[sUsart2.TxNum++] = RunData.StandbySta;
		LDWI 	A2H 			//25BA 	4EA2
		ADDWR 	B6H, 0H, 1H 	//25BC 	65B6
		STR 	D9H, 0H 			//25BE 	AED9
		LDWI 	2H 			//25C0 	4E02
		ADDWRC 	B7H, 0H, 1H 	//25C2 	61B7
		STR 	DAH, 0H 			//25C4 	AEDA
		MOVFF 	12DH, FDFH 		//25C6 	012D 3FDF
		INRSNZ 	B6H, 1H, 1H 	//25CA 	8BB6
		INCR 	B7H, 1H, 1H 		//25CC 	6BB7

		//;uart2.c: 175: sUsart2.TxData[sUsart2.TxNum++] = (send_FlowSet>>8)&0xFF;
		LDWI 	A2H 			//25CE 	4EA2
		ADDWR 	B6H, 0H, 1H 	//25D0 	65B6
		STR 	D9H, 0H 			//25D2 	AED9
		LDWI 	2H 			//25D4 	4E02
		ADDWRC 	B7H, 0H, 1H 	//25D6 	61B7
		STR 	DAH, 0H 			//25D8 	AEDA
		MOVLB 	0H 			//25DA 	4100
		LDR 	92H, 0H, 1H 		//25DC 	9192
		STR 	DFH, 0H 			//25DE 	AEDF
		MOVLB 	2H 			//25E0 	4102
		INRSNZ 	B6H, 1H, 1H 	//25E2 	8BB6
		INCR 	B7H, 1H, 1H 		//25E4 	6BB7

		//;uart2.c: 176: sUsart2.TxData[sUsart2.TxNum++] = send_FlowSet&0xFF;
		LDWI 	A2H 			//25E6 	4EA2
		ADDWR 	B6H, 0H, 1H 	//25E8 	65B6
		STR 	D9H, 0H 			//25EA 	AED9
		LDWI 	2H 			//25EC 	4E02
		ADDWRC 	B7H, 0H, 1H 	//25EE 	61B7
		STR 	DAH, 0H 			//25F0 	AEDA
		MOVFF 	91H, FDFH 		//25F2 	0091 3FDF
		INRSNZ 	B6H, 1H, 1H 	//25F6 	8BB6
		INCR 	B7H, 1H, 1H 		//25F8 	6BB7

		//;uart2.c: 177: sUsart2.TxData[sUsart2.TxNum++] = (RunData.JY_TimeSet>>8)&0xFF;
		LDWI 	A2H 			//25FA 	4EA2
		ADDWR 	B6H, 0H, 1H 	//25FC 	65B6
		STR 	D9H, 0H 			//25FE 	AED9
		LDWI 	2H 			//2600 	4E02
		ADDWRC 	B7H, 0H, 1H 	//2602 	61B7
		STR 	DAH, 0H 			//2604 	AEDA
		MOVLB 	1H 			//2606 	4101
		LDR 	1BH, 0H, 1H 		//2608 	911B
		STR 	DFH, 0H 			//260A 	AEDF
		MOVLB 	2H 			//260C 	4102
		INRSNZ 	B6H, 1H, 1H 	//260E 	8BB6
		INCR 	B7H, 1H, 1H 		//2610 	6BB7

		//;uart2.c: 178: sUsart2.TxData[sUsart2.TxNum++] = RunData.JY_TimeSet&0xFF;
		LDWI 	A2H 			//2612 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2614 	65B6
		STR 	D9H, 0H 			//2616 	AED9
		LDWI 	2H 			//2618 	4E02
		ADDWRC 	B7H, 0H, 1H 	//261A 	61B7
		STR 	DAH, 0H 			//261C 	AEDA
		MOVFF 	11AH, FDFH 		//261E 	011A 3FDF
		INRSNZ 	B6H, 1H, 1H 	//2622 	8BB6
		INCR 	B7H, 1H, 1H 		//2624 	6BB7

		//;uart2.c: 179: sUsart2.TxData[sUsart2.TxNum++] = (RunData.XF_TimeSet>>8)&0xFF;
		LDWI 	A2H 			//2626 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2628 	65B6
		STR 	D9H, 0H 			//262A 	AED9
		LDWI 	2H 			//262C 	4E02
		ADDWRC 	B7H, 0H, 1H 	//262E 	61B7
		STR 	DAH, 0H 			//2630 	AEDA
		MOVLB 	1H 			//2632 	4101
		LDR 	1DH, 0H, 1H 		//2634 	911D
		STR 	DFH, 0H 			//2636 	AEDF
		MOVLB 	2H 			//2638 	4102
		INRSNZ 	B6H, 1H, 1H 	//263A 	8BB6
		INCR 	B7H, 1H, 1H 		//263C 	6BB7

		//;uart2.c: 180: sUsart2.TxData[sUsart2.TxNum++] = RunData.XF_TimeSet&0xFF;
		LDWI 	A2H 			//263E 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2640 	65B6
		STR 	D9H, 0H 			//2642 	AED9
		LDWI 	2H 			//2644 	4E02
		ADDWRC 	B7H, 0H, 1H 	//2646 	61B7
		STR 	DAH, 0H 			//2648 	AEDA
		MOVFF 	11CH, FDFH 		//264A 	011C 3FDF
		INRSNZ 	B6H, 1H, 1H 	//264E 	8BB6
		INCR 	B7H, 1H, 1H 		//2650 	6BB7

		//;uart2.c: 181: sUsart2.TxData[sUsart2.TxNum++] = (RunData.FLOW_Trim>>8)&0xFF;
		LDWI 	A2H 			//2652 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2654 	65B6
		STR 	D9H, 0H 			//2656 	AED9
		LDWI 	2H 			//2658 	4E02
		ADDWRC 	B7H, 0H, 1H 	//265A 	61B7
		STR 	DAH, 0H 			//265C 	AEDA
		MOVLB 	1H 			//265E 	4101
		LDR 	27H, 0H, 1H 		//2660 	9127
		STR 	DFH, 0H 			//2662 	AEDF
		MOVLB 	2H 			//2664 	4102
		INRSNZ 	B6H, 1H, 1H 	//2666 	8BB6
		INCR 	B7H, 1H, 1H 		//2668 	6BB7

		//;uart2.c: 182: sUsart2.TxData[sUsart2.TxNum++] = RunData.FLOW_Trim&0xFF;
		LDWI 	A2H 			//266A 	4EA2
		ADDWR 	B6H, 0H, 1H 	//266C 	65B6
		STR 	D9H, 0H 			//266E 	AED9
		LDWI 	2H 			//2670 	4E02
		ADDWRC 	B7H, 0H, 1H 	//2672 	61B7
		STR 	DAH, 0H 			//2674 	AEDA
		MOVFF 	126H, FDFH 		//2676 	0126 3FDF
		INRSNZ 	B6H, 1H, 1H 	//267A 	8BB6
		INCR 	B7H, 1H, 1H 		//267C 	6BB7

		//;uart2.c: 183: sUsart2.TxData[sUsart2.TxNum++] = (RunData.PD_TimeSet>>8)&0xFF;
		LDWI 	A2H 			//267E 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2680 	65B6
		STR 	D9H, 0H 			//2682 	AED9
		LDWI 	2H 			//2684 	4E02
		ADDWRC 	B7H, 0H, 1H 	//2686 	61B7
		STR 	DAH, 0H 			//2688 	AEDA
		MOVLB 	1H 			//268A 	4101
		LDR 	1FH, 0H, 1H 		//268C 	911F
		STR 	DFH, 0H 			//268E 	AEDF
		MOVLB 	2H 			//2690 	4102
		INRSNZ 	B6H, 1H, 1H 	//2692 	8BB6
		INCR 	B7H, 1H, 1H 		//2694 	6BB7

		//;uart2.c: 184: sUsart2.TxData[sUsart2.TxNum++] = RunData.PD_TimeSet&0xFF;
		LDWI 	A2H 			//2696 	4EA2
		ADDWR 	B6H, 0H, 1H 	//2698 	65B6
		STR 	D9H, 0H 			//269A 	AED9
		LDWI 	2H 			//269C 	4E02
		ADDWRC 	B7H, 0H, 1H 	//269E 	61B7
		STR 	DAH, 0H 			//26A0 	AEDA
		MOVFF 	11EH, FDFH 		//26A2 	011E 3FDF
		INRSNZ 	B6H, 1H, 1H 	//26A6 	8BB6
		INCR 	B7H, 1H, 1H 		//26A8 	6BB7

		//;uart2.c: 185: sUsart2.TxLength=sUsart2.TxNum+1;
		LDWI 	1H 			//26AA 	4E01
		ADDWR 	B6H, 0H, 1H 	//26AC 	65B6
		STR 	B8H, 1H 			//26AE 	AFB8
		LDWI 	0H 			//26B0 	4E00
		ADDWRC 	B7H, 0H, 1H 	//26B2 	61B7
		STR 	B9H, 1H 			//26B4 	AFB9

		//;uart2.c: 186: sUsart2.TxData[sUsart2.TxNum++] = CheckSum_Calculate2(sUsart2.TxData,sUsa
		//+                          rt2.TxLength-1);
		LDWI 	A2H 			//26B6 	4EA2
		STR 	AH, 0H 			//26B8 	AE0A
		LDWI 	2H 			//26BA 	4E02
		STR 	BH, 0H 			//26BC 	AE0B
		LDWI 	FFH 			//26BE 	4EFF
		STR 	1AH, 0H 			//26C0 	AE1A
		LDWI 	FFH 			//26C2 	4EFF
		STR 	1BH, 0H 			//26C4 	AE1B
		LFSR 	2H, B82H 		//26C6 	2E22 30B8
		MOVFF 	FDEH, 1CH 		//26CA 	0FDE 301C
		MOVFF 	FDDH, 1DH 		//26CE 	0FDD 301D
		LDR 	1AH, 0H, 0H 		//26D2 	901A
		ADDWR 	1CH, 1H, 0H 	//26D4 	661C
		LDR 	1BH, 0H, 0H 		//26D6 	901B
		ADDWRC 	1DH, 1H, 0H 	//26D8 	621D
		MOVFF 	1CH, CH 		//26DA 	001C 300C
		MOVFF 	1DH, DH 		//26DE 	001D 300D
		CLRR 	EH, 0H 			//26E2 	AA0E
		CLRR 	FH, 0H 			//26E4 	AA0F
		LCALL 	4D6AH, 0H 		//26E6 	2CB5 3026
		STR 	1EH, 0H 			//26EA 	AE1E
		LDWI 	A2H 			//26EC 	4EA2
		ADDWR 	B6H, 0H, 1H 	//26EE 	65B6
		STR 	D9H, 0H 			//26F0 	AED9
		LDWI 	2H 			//26F2 	4E02
		ADDWRC 	B7H, 0H, 1H 	//26F4 	61B7
		STR 	DAH, 0H 			//26F6 	AEDA
		MOVFF 	1EH, FDFH 		//26F8 	001E 3FDF
		INRSNZ 	B6H, 1H, 1H 	//26FC 	8BB6
		INCR 	B7H, 1H, 1H 		//26FE 	6BB7

		//;uart2.c: 187: Uart2SendBuff(sUsart2.TxData,sUsart2.TxLength);
		LDWI 	A2H 			//2700 	4EA2
		STR 	BH, 0H 			//2702 	AE0B
		LDWI 	2H 			//2704 	4E02
		STR 	CH, 0H 			//2706 	AE0C
		MOVFF 	2B8H, DH 		//2708 	02B8 300D
		MOVFF 	2B9H, EH 		//270C 	02B9 300E
		LCALL 	59EEH, 0H 		//2710 	2CF7 302C
		RET 	0H 			//2714 	4012

		//;display.c: 690: if (enable)
		LDR 	27H, 0H, 0H 		//2716 	9027
		BTSS 	D8H, 2H, 0H 		//2718 	E4D8
		RET 	0H 			//271A 	4012

		//;display.c: 692: else;display.c: 693: {;display.c: 694: SEG1(ch_table[sum % 100000 / 100
		//+                          00],0);
		LDWI 	0H 			//271C 	4E00
		STR 	20H, 0H 			//271E 	AE20
		LDWI 	A0H 			//2720 	4EA0
		STR 	EH, 0H 			//2722 	AE0E
		LDWI 	86H 			//2724 	4E86
		STR 	FH, 0H 			//2726 	AE0F
		LDWI 	1H 			//2728 	4E01
		STR 	10H, 0H 			//272A 	AE10
		LDWI 	0H 			//272C 	4E00
		STR 	11H, 0H 			//272E 	AE11
		MOVFF 	22H, AH 		//2730 	0022 300A
		MOVFF 	23H, BH 		//2734 	0023 300B
		MOVFF 	24H, CH 		//2738 	0024 300C
		MOVFF 	25H, DH 		//273C 	0025 300D
		LCALL 	4D04H, 0H 		//2740 	2C82 3026
		MOVFF 	AH, 13H 		//2744 	000A 3013
		MOVFF 	BH, 14H 		//2748 	000B 3014
		MOVFF 	CH, 15H 		//274C 	000C 3015
		MOVFF 	DH, 16H 		//2750 	000D 3016
		LDWI 	10H 			//2754 	4E10
		STR 	17H, 0H 			//2756 	AE17
		LDWI 	27H 			//2758 	4E27
		STR 	18H, 0H 			//275A 	AE18
		LDWI 	0H 			//275C 	4E00
		STR 	19H, 0H 			//275E 	AE19
		LDWI 	0H 			//2760 	4E00
		STR 	1AH, 0H 			//2762 	AE1A
		LCALL 	49EAH, 0H 		//2764 	2CF5 3024
		LDWI 	2BH 			//2768 	4E2B
		ADDWR 	13H, 0H, 0H 	//276A 	6413
		STR 	F6H, 0H 			//276C 	AEF6
		LDWI 	7FH 			//276E 	4E7F
		ADDWRC 	14H, 0H, 0H 	//2770 	6014
		STR 	F7H, 0H 			//2772 	AEF7
		TBLRD*  			//2774 	4008
		LDR 	F5H, 0H, 0H 		//2776 	90F5
		LCALL 	539AH, 0H 		//2778 	2CCD 3029

		//;display.c: 695: SEG2(ch_table[sum % 10000 / 1000],0);
		LDWI 	0H 			//277C 	4E00
		STR 	20H, 0H 			//277E 	AE20
		LDWI 	10H 			//2780 	4E10
		STR 	EH, 0H 			//2782 	AE0E
		LDWI 	27H 			//2784 	4E27
		STR 	FH, 0H 			//2786 	AE0F
		LDWI 	0H 			//2788 	4E00
		STR 	10H, 0H 			//278A 	AE10
		LDWI 	0H 			//278C 	4E00
		STR 	11H, 0H 			//278E 	AE11
		MOVFF 	22H, AH 		//2790 	0022 300A
		MOVFF 	23H, BH 		//2794 	0023 300B
		MOVFF 	24H, CH 		//2798 	0024 300C
		MOVFF 	25H, DH 		//279C 	0025 300D
		LCALL 	4D04H, 0H 		//27A0 	2C82 3026
		MOVFF 	AH, 13H 		//27A4 	000A 3013
		MOVFF 	BH, 14H 		//27A8 	000B 3014
		MOVFF 	CH, 15H 		//27AC 	000C 3015
		MOVFF 	DH, 16H 		//27B0 	000D 3016
		LDWI 	E8H 			//27B4 	4EE8
		STR 	17H, 0H 			//27B6 	AE17
		LDWI 	3H 			//27B8 	4E03
		STR 	18H, 0H 			//27BA 	AE18
		LDWI 	0H 			//27BC 	4E00
		STR 	19H, 0H 			//27BE 	AE19
		LDWI 	0H 			//27C0 	4E00
		STR 	1AH, 0H 			//27C2 	AE1A
		LCALL 	49EAH, 0H 		//27C4 	2CF5 3024
		LDWI 	2BH 			//27C8 	4E2B
		ADDWR 	13H, 0H, 0H 	//27CA 	6413
		STR 	F6H, 0H 			//27CC 	AEF6
		LDWI 	7FH 			//27CE 	4E7F
		ADDWRC 	14H, 0H, 0H 	//27D0 	6014
		STR 	F7H, 0H 			//27D2 	AEF7
		TBLRD*  			//27D4 	4008
		LDR 	F5H, 0H, 0H 		//27D6 	90F5
		LCALL 	5346H, 0H 		//27D8 	2CA3 3029

		//;display.c: 696: SEG3(ch_table[sum % 1000 / 100],0);
		LDWI 	0H 			//27DC 	4E00
		STR 	20H, 0H 			//27DE 	AE20
		LDWI 	E8H 			//27E0 	4EE8
		STR 	EH, 0H 			//27E2 	AE0E
		LDWI 	3H 			//27E4 	4E03
		STR 	FH, 0H 			//27E6 	AE0F
		LDWI 	0H 			//27E8 	4E00
		STR 	10H, 0H 			//27EA 	AE10
		LDWI 	0H 			//27EC 	4E00
		STR 	11H, 0H 			//27EE 	AE11
		MOVFF 	22H, AH 		//27F0 	0022 300A
		MOVFF 	23H, BH 		//27F4 	0023 300B
		MOVFF 	24H, CH 		//27F8 	0024 300C
		MOVFF 	25H, DH 		//27FC 	0025 300D
		LCALL 	4D04H, 0H 		//2800 	2C82 3026
		MOVFF 	AH, 13H 		//2804 	000A 3013
		MOVFF 	BH, 14H 		//2808 	000B 3014
		MOVFF 	CH, 15H 		//280C 	000C 3015
		MOVFF 	DH, 16H 		//2810 	000D 3016
		LDWI 	64H 			//2814 	4E64
		STR 	17H, 0H 			//2816 	AE17
		LDWI 	0H 			//2818 	4E00
		STR 	18H, 0H 			//281A 	AE18
		LDWI 	0H 			//281C 	4E00
		STR 	19H, 0H 			//281E 	AE19
		LDWI 	0H 			//2820 	4E00
		STR 	1AH, 0H 			//2822 	AE1A
		LCALL 	49EAH, 0H 		//2824 	2CF5 3024
		LDWI 	2BH 			//2828 	4E2B
		ADDWR 	13H, 0H, 0H 	//282A 	6413
		STR 	F6H, 0H 			//282C 	AEF6
		LDWI 	7FH 			//282E 	4E7F
		ADDWRC 	14H, 0H, 0H 	//2830 	6014
		STR 	F7H, 0H 			//2832 	AEF7
		TBLRD*  			//2834 	4008
		LDR 	F5H, 0H, 0H 		//2836 	90F5
		LCALL 	52F2H, 0H 		//2838 	2C79 3029

		//;display.c: 697: SEG4(ch_table[sum % 100 / 10],0);
		LDWI 	0H 			//283C 	4E00
		STR 	20H, 0H 			//283E 	AE20
		LDWI 	64H 			//2840 	4E64
		STR 	EH, 0H 			//2842 	AE0E
		LDWI 	0H 			//2844 	4E00
		STR 	FH, 0H 			//2846 	AE0F
		LDWI 	0H 			//2848 	4E00
		STR 	10H, 0H 			//284A 	AE10
		LDWI 	0H 			//284C 	4E00
		STR 	11H, 0H 			//284E 	AE11
		MOVFF 	22H, AH 		//2850 	0022 300A
		MOVFF 	23H, BH 		//2854 	0023 300B
		MOVFF 	24H, CH 		//2858 	0024 300C
		MOVFF 	25H, DH 		//285C 	0025 300D
		LCALL 	4D04H, 0H 		//2860 	2C82 3026
		MOVFF 	AH, 13H 		//2864 	000A 3013
		MOVFF 	BH, 14H 		//2868 	000B 3014
		MOVFF 	CH, 15H 		//286C 	000C 3015
		MOVFF 	DH, 16H 		//2870 	000D 3016
		LDWI 	AH 			//2874 	4E0A
		STR 	17H, 0H 			//2876 	AE17
		LDWI 	0H 			//2878 	4E00
		STR 	18H, 0H 			//287A 	AE18
		LDWI 	0H 			//287C 	4E00
		STR 	19H, 0H 			//287E 	AE19
		LDWI 	0H 			//2880 	4E00
		STR 	1AH, 0H 			//2882 	AE1A
		LCALL 	49EAH, 0H 		//2884 	2CF5 3024
		LDWI 	2BH 			//2888 	4E2B
		ADDWR 	13H, 0H, 0H 	//288A 	6413
		STR 	F6H, 0H 			//288C 	AEF6
		LDWI 	7FH 			//288E 	4E7F
		ADDWRC 	14H, 0H, 0H 	//2890 	6014
		STR 	F7H, 0H 			//2892 	AEF7
		TBLRD*  			//2894 	4008
		LDR 	F5H, 0H, 0H 		//2896 	90F5
		LCALL 	529EH, 0H 		//2898 	2C4F 3029

		//;display.c: 698: SEG5(ch_table[sum % 10],0);
		LDWI 	0H 			//289C 	4E00
		STR 	13H, 0H 			//289E 	AE13
		MOVFF 	22H, AH 		//28A0 	0022 300A
		MOVFF 	23H, BH 		//28A4 	0023 300B
		MOVFF 	24H, CH 		//28A8 	0024 300C
		MOVFF 	25H, DH 		//28AC 	0025 300D
		LDWI 	AH 			//28B0 	4E0A
		STR 	EH, 0H 			//28B2 	AE0E
		LDWI 	0H 			//28B4 	4E00
		STR 	FH, 0H 			//28B6 	AE0F
		LDWI 	0H 			//28B8 	4E00
		STR 	10H, 0H 			//28BA 	AE10
		LDWI 	0H 			//28BC 	4E00
		STR 	11H, 0H 			//28BE 	AE11
		LCALL 	4D04H, 0H 		//28C0 	2C82 3026
		LDWI 	2BH 			//28C4 	4E2B
		ADDWR 	AH, 0H, 0H 		//28C6 	640A
		STR 	F6H, 0H 			//28C8 	AEF6
		LDWI 	7FH 			//28CA 	4E7F
		ADDWRC 	BH, 0H, 0H 	//28CC 	600B
		STR 	F7H, 0H 			//28CE 	AEF7
		TBLRD*  			//28D0 	4008
		LDR 	F5H, 0H, 0H 		//28D2 	90F5
		LCALL 	524AH, 0H 		//28D4 	2C25 3029

		//;display.c: 699: switch (mode)
		BRA 	2928H 			//28D8 	1027

		//;display.c: 702: Label_h(1);
		LDWI 	1H 			//28DA 	4E01
		LCALL 	5EECH, 0H 		//28DC 	2C76 302F

		//;display.c: 703: Label_AddUp(1);
		LDWI 	1H 			//28E0 	4E01
		LCALL 	5F00H, 0H 		//28E2 	2C80 302F

		//;display.c: 704: break;
		RET 	0H 			//28E6 	4012

		//;display.c: 706: SEG1(0x00,0);
		LDWI 	0H 			//28E8 	4E00
		STR 	20H, 0H 			//28EA 	AE20
		LDWI 	0H 			//28EC 	4E00
		LCALL 	539AH, 0H 		//28EE 	2CCD 3029

		//;display.c: 707: SEG2(0x00,0);
		LDWI 	0H 			//28F2 	4E00
		STR 	20H, 0H 			//28F4 	AE20
		LDWI 	0H 			//28F6 	4E00
		LCALL 	5346H, 0H 		//28F8 	2CA3 3029

		//;display.c: 708: SEG3(0x00,0);
		LDWI 	0H 			//28FC 	4E00
		STR 	20H, 0H 			//28FE 	AE20
		LDWI 	0H 			//2900 	4E00
		LCALL 	52F2H, 0H 		//2902 	2C79 3029

		//;display.c: 709: SEG4(0x00,0);
		LDWI 	0H 			//2906 	4E00
		STR 	20H, 0H 			//2908 	AE20
		LDWI 	0H 			//290A 	4E00
		LCALL 	529EH, 0H 		//290C 	2C4F 3029

		//;display.c: 710: SEG5(0x00,0);
		LDWI 	0H 			//2910 	4E00
		STR 	13H, 0H 			//2912 	AE13
		LDWI 	0H 			//2914 	4E00
		LCALL 	524AH, 0H 		//2916 	2C25 3029

		//;display.c: 712: Label_h(0);
		LDWI 	0H 			//291A 	4E00
		LCALL 	5EECH, 0H 		//291C 	2C76 302F

		//;display.c: 713: Label_AddUp(0);
		LDWI 	0H 			//2920 	4E00
		LCALL 	5F00H, 0H 		//2922 	2C80 302F

		//;display.c: 715: break;
		RET 	0H 			//2926 	4012
		LDR 	26H, 0H, 0H 		//2928 	9026
		XORWI 	1H 			//292A 	4A01
		BTSC 	D8H, 2H, 0H 		//292C 	F4D8
		BRA 	38DAH 			//292E 	17D5
		BRA 	38E8H 			//2930 	17DB

		//;setsysdata.c: 205: Engineering_Pattern.Led_Display_Timing_Enbale = 1;
		LDWI 	1H 			//2932 	4E01
		STR 	67H, 1H 			//2934 	AF67

		//;setsysdata.c: 206: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
		LDWI 	1H 			//2936 	4E01
		STR 	68H, 1H 			//2938 	AF68

		//;setsysdata.c: 207: Engineering_Pattern.Time_Start_Flag = 1;
		LDWI 	1H 			//293A 	4E01
		STR 	60H, 1H 			//293C 	AF60

		//;setsysdata.c: 210: Display_Timing(0, 0, Engineering_Pattern.Led_Display_Timing_Enbale);
		LDWI 	0H 			//293E 	4E00
		STR 	20H, 0H 			//2940 	AE20
		LDWI 	0H 			//2942 	4E00
		STR 	21H, 0H 			//2944 	AE21
		LDWI 	0H 			//2946 	4E00
		STR 	22H, 0H 			//2948 	AE22
		LDWI 	0H 			//294A 	4E00
		STR 	23H, 0H 			//294C 	AE23
		LDWI 	0H 			//294E 	4E00
		STR 	24H, 0H 			//2950 	AE24
		MOVFF 	67H, 25H 		//2952 	0067 3025
		LCALL 	1B4EH, 0H 		//2956 	2CA7 300D

		//;setsysdata.c: 211: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_
		//+                          Enbale);
		LDWI 	0H 			//295A 	4E00
		STR 	22H, 0H 			//295C 	AE22
		LDWI 	0H 			//295E 	4E00
		STR 	23H, 0H 			//2960 	AE23
		LDWI 	0H 			//2962 	4E00
		STR 	24H, 0H 			//2964 	AE24
		LDWI 	0H 			//2966 	4E00
		STR 	25H, 0H 			//2968 	AE25
		LDWI 	0H 			//296A 	4E00
		STR 	26H, 0H 			//296C 	AE26
		MOVFF 	67H, 27H 		//296E 	0067 3027
		LCALL 	2716H, 0H 		//2972 	2C8B 3013

		//;setsysdata.c: 212: static int i = 0;;setsysdata.c: 213: Cmd_Process();
		LCALL 	3BA2H, 0H 		//2976 	2CD1 301D

		//;setsysdata.c: 214: i++;
		INRSNZ 	AAH, 1H, 1H 	//297A 	8BAA
		INCR 	ABH, 1H, 1H 		//297C 	6BAB

		//;setsysdata.c: 215: if (i > 100)
		BTSC 	ABH, 7H, 1H 		//297E 	FFAB
		BRA 	299AH 			//2980 	100C
		LDR 	ABH, 0H, 1H 		//2982 	91AB
		BNZ 	298EH 			//2984 	2104
		LDWI 	65H 			//2986 	4E65
		SUBWR 	AAH, 0H, 1H 	//2988 	9DAA
		BTSS 	D8H, 0H, 0H 		//298A 	E0D8
		BRA 	299AH 			//298C 	1006

		//;setsysdata.c: 216: {;setsysdata.c: 217: i = 0;
		LDWI 	0H 			//298E 	4E00
		STR 	ABH, 1H 			//2990 	AFAB
		LDWI 	0H 			//2992 	4E00
		STR 	AAH, 1H 			//2994 	AFAA

		//;setsysdata.c: 218: Cmd_Send();
		LCALL 	24F4H, 0H 		//2996 	2C7A 3012

		//;setsysdata.c: 219: };setsysdata.c: 221: SEG1(ch_table[(RunData.XF_TimeSet / 10) % 10],0
		//+                          );
		LDWI 	0H 			//299A 	4E00
		STR 	20H, 0H 			//299C 	AE20
		LDWI 	0H 			//299E 	4E00
		STR 	13H, 0H 			//29A0 	AE13
		LDWI 	AH 			//29A2 	4E0A
		STR 	12H, 0H 			//29A4 	AE12
		MOVFF 	11CH, 10H 		//29A6 	011C 3010
		MOVFF 	11DH, 11H 		//29AA 	011D 3011
		LCALL 	4966H, 0H 		//29AE 	2CB3 3024
		MOVFF 	10H, AH 		//29B2 	0010 300A
		MOVFF 	11H, BH 		//29B6 	0011 300B
		LDWI 	0H 			//29BA 	4E00
		STR 	DH, 0H 			//29BC 	AE0D
		LDWI 	AH 			//29BE 	4E0A
		STR 	CH, 0H 			//29C0 	AE0C
		LCALL 	4BC8H, 0H 		//29C2 	2CE4 3025
		LDWI 	2BH 			//29C6 	4E2B
		ADDWR 	AH, 0H, 0H 		//29C8 	640A
		STR 	F6H, 0H 			//29CA 	AEF6
		LDWI 	7FH 			//29CC 	4E7F
		ADDWRC 	BH, 0H, 0H 	//29CE 	600B
		STR 	F7H, 0H 			//29D0 	AEF7
		TBLRD*  			//29D2 	4008
		LDR 	F5H, 0H, 0H 		//29D4 	90F5
		LCALL 	539AH, 0H 		//29D6 	2CCD 3029

		//;setsysdata.c: 222: SEG2(ch_table[RunData.XF_TimeSet % 10],0);
		LDWI 	0H 			//29DA 	4E00
		STR 	20H, 0H 			//29DC 	AE20
		MOVFF 	11CH, AH 		//29DE 	011C 300A
		MOVFF 	11DH, BH 		//29E2 	011D 300B
		LDWI 	0H 			//29E6 	4E00
		STR 	DH, 0H 			//29E8 	AE0D
		LDWI 	AH 			//29EA 	4E0A
		STR 	CH, 0H 			//29EC 	AE0C
		LCALL 	4BC8H, 0H 		//29EE 	2CE4 3025
		LDWI 	2BH 			//29F2 	4E2B
		ADDWR 	AH, 0H, 0H 		//29F4 	640A
		STR 	F6H, 0H 			//29F6 	AEF6
		LDWI 	7FH 			//29F8 	4E7F
		ADDWRC 	BH, 0H, 0H 	//29FA 	600B
		STR 	F7H, 0H 			//29FC 	AEF7
		TBLRD*  			//29FE 	4008
		LDR 	F5H, 0H, 0H 		//2A00 	90F5
		LCALL 	5346H, 0H 		//2A02 	2CA3 3029

		//;setsysdata.c: 223: SEG3(0x00,0);
		LDWI 	0H 			//2A06 	4E00
		STR 	20H, 0H 			//2A08 	AE20
		LDWI 	0H 			//2A0A 	4E00
		LCALL 	52F2H, 0H 		//2A0C 	2C79 3029

		//;setsysdata.c: 224: SEG4(ch_table[(RunData.JY_TimeSet / 10) % 10],0);
		LDWI 	0H 			//2A10 	4E00
		STR 	20H, 0H 			//2A12 	AE20
		LDWI 	0H 			//2A14 	4E00
		STR 	13H, 0H 			//2A16 	AE13
		LDWI 	AH 			//2A18 	4E0A
		STR 	12H, 0H 			//2A1A 	AE12
		MOVFF 	11AH, 10H 		//2A1C 	011A 3010
		MOVFF 	11BH, 11H 		//2A20 	011B 3011
		LCALL 	4966H, 0H 		//2A24 	2CB3 3024
		MOVFF 	10H, AH 		//2A28 	0010 300A
		MOVFF 	11H, BH 		//2A2C 	0011 300B
		LDWI 	0H 			//2A30 	4E00
		STR 	DH, 0H 			//2A32 	AE0D
		LDWI 	AH 			//2A34 	4E0A
		STR 	CH, 0H 			//2A36 	AE0C
		LCALL 	4BC8H, 0H 		//2A38 	2CE4 3025
		LDWI 	2BH 			//2A3C 	4E2B
		ADDWR 	AH, 0H, 0H 		//2A3E 	640A
		STR 	F6H, 0H 			//2A40 	AEF6
		LDWI 	7FH 			//2A42 	4E7F
		ADDWRC 	BH, 0H, 0H 	//2A44 	600B
		STR 	F7H, 0H 			//2A46 	AEF7
		TBLRD*  			//2A48 	4008
		LDR 	F5H, 0H, 0H 		//2A4A 	90F5
		LCALL 	529EH, 0H 		//2A4C 	2C4F 3029

		//;setsysdata.c: 225: SEG5(ch_table[RunData.JY_TimeSet % 10],0);
		LDWI 	0H 			//2A50 	4E00
		STR 	13H, 0H 			//2A52 	AE13
		MOVFF 	11AH, AH 		//2A54 	011A 300A
		MOVFF 	11BH, BH 		//2A58 	011B 300B
		LDWI 	0H 			//2A5C 	4E00
		STR 	DH, 0H 			//2A5E 	AE0D
		LDWI 	AH 			//2A60 	4E0A
		STR 	CH, 0H 			//2A62 	AE0C
		LCALL 	4BC8H, 0H 		//2A64 	2CE4 3025
		LDWI 	2BH 			//2A68 	4E2B
		ADDWR 	AH, 0H, 0H 		//2A6A 	640A
		STR 	F6H, 0H 			//2A6C 	AEF6
		LDWI 	7FH 			//2A6E 	4E7F
		ADDWRC 	BH, 0H, 0H 	//2A70 	600B
		STR 	F7H, 0H 			//2A72 	AEF7
		TBLRD*  			//2A74 	4008
		LDR 	F5H, 0H, 0H 		//2A76 	90F5
		LCALL 	524AH, 0H 		//2A78 	2C25 3029

		//;setsysdata.c: 228: static int j = 0;;setsysdata.c: 229: j++;
		MOVLB 	1H 			//2A7C 	4101
		INRSNZ 	A8H, 1H, 1H 	//2A7E 	8BA8
		INCR 	A9H, 1H, 1H 		//2A80 	6BA9

		//;setsysdata.c: 230: if (j < 300)
		BTSC 	A9H, 7H, 1H 		//2A82 	FFA9
		RET 	0H 			//2A84 	4012
		LDWI 	2CH 			//2A86 	4E2C
		SUBWR 	A8H, 0H, 1H 	//2A88 	9DA8
		LDWI 	1H 			//2A8A 	4E01
		SUBWRB 	A9H, 0H, 1H 	//2A8C 	99A9
		BTSS 	D8H, 0H, 0H 		//2A8E 	E0D8
		RET 	0H 			//2A90 	4012

		//;setsysdata.c: 232: else;setsysdata.c: 233: j = 0;
		LDWI 	0H 			//2A92 	4E00
		STR 	A9H, 1H 			//2A94 	AFA9
		LDWI 	0H 			//2A96 	4E00
		STR 	A8H, 1H 			//2A98 	AFA8

		//;setsysdata.c: 236: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//2A9A 	4E00
		MOVLB 	0H 			//2A9C 	4100
		STR 	64H, 1H 			//2A9E 	AF64

		//;setsysdata.c: 237: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
		LCALL 	4098H, 0H 		//2AA0 	2C4C 3020
		LDR 	2EH, 0H, 0H 		//2AA4 	902E
		MOVLB 	0H 			//2AA6 	4100
		STR 	64H, 1H 			//2AA8 	AF64

		//;setsysdata.c: 241: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//2AAA 	4E03
		XORWR 	64H, 0H, 1H 	//2AAC 	5964
		BTSS 	D8H, 2H, 0H 		//2AAE 	E4D8
		BRA 	2AE0H 			//2AB0 	1017

		//;setsysdata.c: 242: {;setsysdata.c: 243: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//2AB2 	0064 3010
		CLRR 	11H, 0H 		//2AB6 	AA11
		LCALL 	5492H, 0H 		//2AB8 	2C49 302A

		//;setsysdata.c: 244: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2ABC 	4E00
		MOVLB 	0H 			//2ABE 	4100
		STR 	61H, 1H 			//2AC0 	AF61

		//;setsysdata.c: 245: RunData.XF_TimeSet++;
		MOVLB 	1H 			//2AC2 	4101
		INRSNZ 	1CH, 1H, 1H 	//2AC4 	8B1C
		INCR 	1DH, 1H, 1H 		//2AC6 	6B1D

		//;setsysdata.c: 246: if (RunData.XF_TimeSet > 90)
		BTSC 	1DH, 7H, 1H 		//2AC8 	FF1D
		BRA 	2AE0H 			//2ACA 	100A
		LDR 	1DH, 0H, 1H 		//2ACC 	911D
		BNZ 	2AD8H 			//2ACE 	2104
		LDWI 	5BH 			//2AD0 	4E5B
		SUBWR 	1CH, 0H, 1H 	//2AD2 	9D1C
		BTSS 	D8H, 0H, 0H 		//2AD4 	E0D8
		BRA 	2AE0H 			//2AD6 	1004

		//;setsysdata.c: 247: {;setsysdata.c: 248: RunData.XF_TimeSet = 20;
		LDWI 	0H 			//2AD8 	4E00
		STR 	1DH, 1H 			//2ADA 	AF1D
		LDWI 	14H 			//2ADC 	4E14
		STR 	1CH, 1H 			//2ADE 	AF1C

		//;setsysdata.c: 249: };setsysdata.c: 250: };setsysdata.c: 253: if (Engineering_Pattern.IK
		//+                          ey == 4)
		LDWI 	4H 			//2AE0 	4E04
		MOVLB 	0H 			//2AE2 	4100
		XORWR 	64H, 0H, 1H 	//2AE4 	5964
		BTSS 	D8H, 2H, 0H 		//2AE6 	E4D8
		BRA 	2B18H 			//2AE8 	1017

		//;setsysdata.c: 254: {;setsysdata.c: 255: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//2AEA 	0064 3010
		CLRR 	11H, 0H 		//2AEE 	AA11
		LCALL 	5492H, 0H 		//2AF0 	2C49 302A

		//;setsysdata.c: 256: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2AF4 	4E00
		MOVLB 	0H 			//2AF6 	4100
		STR 	61H, 1H 			//2AF8 	AF61

		//;setsysdata.c: 257: RunData.JY_TimeSet++;
		MOVLB 	1H 			//2AFA 	4101
		INRSNZ 	1AH, 1H, 1H 	//2AFC 	8B1A
		INCR 	1BH, 1H, 1H 		//2AFE 	6B1B

		//;setsysdata.c: 258: if (RunData.JY_TimeSet > 20)
		BTSC 	1BH, 7H, 1H 		//2B00 	FF1B
		BRA 	2B18H 			//2B02 	100A
		LDR 	1BH, 0H, 1H 		//2B04 	911B
		BNZ 	2B10H 			//2B06 	2104
		LDWI 	15H 			//2B08 	4E15
		SUBWR 	1AH, 0H, 1H 	//2B0A 	9D1A
		BTSS 	D8H, 0H, 0H 		//2B0C 	E0D8
		BRA 	2B18H 			//2B0E 	1004

		//;setsysdata.c: 259: {;setsysdata.c: 260: RunData.JY_TimeSet = 0;
		LDWI 	0H 			//2B10 	4E00
		STR 	1BH, 1H 			//2B12 	AF1B
		LDWI 	0H 			//2B14 	4E00
		STR 	1AH, 1H 			//2B16 	AF1A

		//;setsysdata.c: 261: };setsysdata.c: 262: };setsysdata.c: 264: Engineering_Timeout_Logic(
		//+                          currentMode);
		MOVLB 	0H 			//2B18 	4100
		LDR 	ACH, 0H, 1H 		//2B1A 	91AC
		LCALL 	55CCH, 0H 		//2B1C 	2CE6 302A

		//;setsysdata.c: 265: if (Engineering_Pattern.Return_Flag == 1)
		MOVLB 	0H 			//2B20 	4100
		DECR 	65H, 0H, 1H 		//2B22 	4565
		BTSS 	D8H, 2H, 0H 		//2B24 	E4D8
		RET 	0H 			//2B26 	4012

		//;setsysdata.c: 266: {;setsysdata.c: 267: Engineering_Pattern.Time_Start_Flag = 0;
		LDWI 	0H 			//2B28 	4E00
		STR 	60H, 1H 			//2B2A 	AF60

		//;setsysdata.c: 268: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2B2C 	4E00
		STR 	61H, 1H 			//2B2E 	AF61

		//;setsysdata.c: 269: Engineering_Pattern.Return_Flag = 0;
		LDWI 	0H 			//2B30 	4E00
		STR 	65H, 1H 			//2B32 	AF65

		//;setsysdata.c: 270: E2prom_WriteData();
		LCALL 	3936H, 0H 		//2B34 	2C9B 301C

		//;setsysdata.c: 271: Engineering_Pattern.Led_Display_Timing_Enbale = 0;
		LDWI 	0H 			//2B38 	4E00
		MOVLB 	0H 			//2B3A 	4100
		STR 	67H, 1H 			//2B3C 	AF67

		//;setsysdata.c: 272: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
		LDWI 	0H 			//2B3E 	4E00
		STR 	68H, 1H 			//2B40 	AF68

		//;setsysdata.c: 273: currentMode = ENGINEERING_MODE_IDLE;
		LDWI 	0H 			//2B42 	4E00
		STR 	ACH, 1H 			//2B44 	AFAC

		//;setsysdata.c: 274: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//2B46 	4E00
		STR 	66H, 1H 			//2B48 	AF66
		RET 	0H 			//2B4A 	4012

		//;setsysdata.c: 131: Engineering_Pattern.Led_Display_Timing_Enbale = 1;
		LDWI 	1H 			//2B4C 	4E01
		MOVLB 	0H 			//2B4E 	4100
		STR 	67H, 1H 			//2B50 	AF67

		//;setsysdata.c: 132: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 1;
		LDWI 	1H 			//2B52 	4E01
		STR 	68H, 1H 			//2B54 	AF68

		//;setsysdata.c: 133: Engineering_Pattern.Time_Start_Flag = 1;
		LDWI 	1H 			//2B56 	4E01
		STR 	60H, 1H 			//2B58 	AF60

		//;setsysdata.c: 134: Display_CumulativeTime(0, 0, Engineering_Pattern.Led_Display_Timing_
		//+                          Enbale);
		LDWI 	0H 			//2B5A 	4E00
		STR 	22H, 0H 			//2B5C 	AE22
		LDWI 	0H 			//2B5E 	4E00
		STR 	23H, 0H 			//2B60 	AE23
		LDWI 	0H 			//2B62 	4E00
		STR 	24H, 0H 			//2B64 	AE24
		LDWI 	0H 			//2B66 	4E00
		STR 	25H, 0H 			//2B68 	AE25
		LDWI 	0H 			//2B6A 	4E00
		STR 	26H, 0H 			//2B6C 	AE26
		MOVFF 	67H, 27H 		//2B6E 	0067 3027
		LCALL 	2716H, 0H 		//2B72 	2C8B 3013

		//;setsysdata.c: 136: static int i = 0;;setsysdata.c: 137: Cmd_Process();
		LCALL 	3BA2H, 0H 		//2B76 	2CD1 301D

		//;setsysdata.c: 138: i++;
		INRSNZ 	AEH, 1H, 1H 	//2B7A 	8BAE
		INCR 	AFH, 1H, 1H 		//2B7C 	6BAF

		//;setsysdata.c: 139: if (i > 100)
		BTSC 	AFH, 7H, 1H 		//2B7E 	FFAF
		BRA 	2B9AH 			//2B80 	100C
		LDR 	AFH, 0H, 1H 		//2B82 	91AF
		BNZ 	2B8EH 			//2B84 	2104
		LDWI 	65H 			//2B86 	4E65
		SUBWR 	AEH, 0H, 1H 	//2B88 	9DAE
		BTSS 	D8H, 0H, 0H 		//2B8A 	E0D8
		BRA 	2B9AH 			//2B8C 	1006

		//;setsysdata.c: 140: {;setsysdata.c: 141: i = 0;
		LDWI 	0H 			//2B8E 	4E00
		STR 	AFH, 1H 			//2B90 	AFAF
		LDWI 	0H 			//2B92 	4E00
		STR 	AEH, 1H 			//2B94 	AFAE

		//;setsysdata.c: 142: Cmd_Send();
		LCALL 	24F4H, 0H 		//2B96 	2C7A 3012

		//;setsysdata.c: 143: };setsysdata.c: 145: SEG1(ch_table[20],0);
		LDWI 	0H 			//2B9A 	4E00
		STR 	20H, 0H 			//2B9C 	AE20
		LDWI 	3FH 			//2B9E 	4E3F
		STR 	F6H, 0H 			//2BA0 	AEF6
		LDWI 	7FH 			//2BA2 	4E7F
		STR 	F7H, 0H 			//2BA4 	AEF7
		TBLRD*  			//2BA6 	4008
		LDR 	F5H, 0H, 0H 		//2BA8 	90F5
		LCALL 	539AH, 0H 		//2BAA 	2CCD 3029

		//;setsysdata.c: 146: SEG2(ch_table[13],0);
		LDWI 	0H 			//2BAE 	4E00
		STR 	20H, 0H 			//2BB0 	AE20
		LDWI 	38H 			//2BB2 	4E38
		STR 	F6H, 0H 			//2BB4 	AEF6
		LDWI 	7FH 			//2BB6 	4E7F
		STR 	F7H, 0H 			//2BB8 	AEF7
		TBLRD*  			//2BBA 	4008
		LDR 	F5H, 0H, 0H 		//2BBC 	90F5
		LCALL 	5346H, 0H 		//2BBE 	2CA3 3029

		//;setsysdata.c: 147: SEG3(0x00,0);
		LDWI 	0H 			//2BC2 	4E00
		STR 	20H, 0H 			//2BC4 	AE20
		LDWI 	0H 			//2BC6 	4E00
		LCALL 	52F2H, 0H 		//2BC8 	2C79 3029

		//;setsysdata.c: 148: SEG4(ch_table[(RunData.PD_TimeSet / 10) % 10],0);
		LDWI 	0H 			//2BCC 	4E00
		STR 	20H, 0H 			//2BCE 	AE20
		LDWI 	0H 			//2BD0 	4E00
		STR 	13H, 0H 			//2BD2 	AE13
		LDWI 	AH 			//2BD4 	4E0A
		STR 	12H, 0H 			//2BD6 	AE12
		MOVFF 	11EH, 10H 		//2BD8 	011E 3010
		MOVFF 	11FH, 11H 		//2BDC 	011F 3011
		LCALL 	4966H, 0H 		//2BE0 	2CB3 3024
		MOVFF 	10H, AH 		//2BE4 	0010 300A
		MOVFF 	11H, BH 		//2BE8 	0011 300B
		LDWI 	0H 			//2BEC 	4E00
		STR 	DH, 0H 			//2BEE 	AE0D
		LDWI 	AH 			//2BF0 	4E0A
		STR 	CH, 0H 			//2BF2 	AE0C
		LCALL 	4BC8H, 0H 		//2BF4 	2CE4 3025
		LDWI 	2BH 			//2BF8 	4E2B
		ADDWR 	AH, 0H, 0H 		//2BFA 	640A
		STR 	F6H, 0H 			//2BFC 	AEF6
		LDWI 	7FH 			//2BFE 	4E7F
		ADDWRC 	BH, 0H, 0H 	//2C00 	600B
		STR 	F7H, 0H 			//2C02 	AEF7
		TBLRD*  			//2C04 	4008
		LDR 	F5H, 0H, 0H 		//2C06 	90F5
		LCALL 	529EH, 0H 		//2C08 	2C4F 3029

		//;setsysdata.c: 149: SEG5(ch_table[RunData.PD_TimeSet % 10],0);
		LDWI 	0H 			//2C0C 	4E00
		STR 	13H, 0H 			//2C0E 	AE13
		MOVFF 	11EH, AH 		//2C10 	011E 300A
		MOVFF 	11FH, BH 		//2C14 	011F 300B
		LDWI 	0H 			//2C18 	4E00
		STR 	DH, 0H 			//2C1A 	AE0D
		LDWI 	AH 			//2C1C 	4E0A
		STR 	CH, 0H 			//2C1E 	AE0C
		LCALL 	4BC8H, 0H 		//2C20 	2CE4 3025
		LDWI 	2BH 			//2C24 	4E2B
		ADDWR 	AH, 0H, 0H 		//2C26 	640A
		STR 	F6H, 0H 			//2C28 	AEF6
		LDWI 	7FH 			//2C2A 	4E7F
		ADDWRC 	BH, 0H, 0H 	//2C2C 	600B
		STR 	F7H, 0H 			//2C2E 	AEF7
		TBLRD*  			//2C30 	4008
		LDR 	F5H, 0H, 0H 		//2C32 	90F5
		LCALL 	524AH, 0H 		//2C34 	2C25 3029

		//;setsysdata.c: 152: static int j = 0;;setsysdata.c: 153: j++;
		MOVLB 	1H 			//2C38 	4101
		INRSNZ 	ACH, 1H, 1H 	//2C3A 	8BAC
		INCR 	ADH, 1H, 1H 		//2C3C 	6BAD

		//;setsysdata.c: 154: if (j < 300)
		BTSC 	ADH, 7H, 1H 		//2C3E 	FFAD
		RET 	0H 			//2C40 	4012
		LDWI 	2CH 			//2C42 	4E2C
		SUBWR 	ACH, 0H, 1H 	//2C44 	9DAC
		LDWI 	1H 			//2C46 	4E01
		SUBWRB 	ADH, 0H, 1H 	//2C48 	99AD
		BTSS 	D8H, 0H, 0H 		//2C4A 	E0D8
		RET 	0H 			//2C4C 	4012

		//;setsysdata.c: 156: else;setsysdata.c: 157: j = 0;
		LDWI 	0H 			//2C4E 	4E00
		STR 	ADH, 1H 			//2C50 	AFAD
		LDWI 	0H 			//2C52 	4E00
		STR 	ACH, 1H 			//2C54 	AFAC

		//;setsysdata.c: 161: Engineering_Pattern.IKey = 0;
		LDWI 	0H 			//2C56 	4E00
		MOVLB 	0H 			//2C58 	4100
		STR 	64H, 1H 			//2C5A 	AF64

		//;setsysdata.c: 162: Engineering_Pattern.IKey = Get_Engineering_KeyValue();
		LCALL 	4098H, 0H 		//2C5C 	2C4C 3020
		LDR 	2EH, 0H, 0H 		//2C60 	902E
		MOVLB 	0H 			//2C62 	4100
		STR 	64H, 1H 			//2C64 	AF64

		//;setsysdata.c: 165: if (Engineering_Pattern.IKey == 3)
		LDWI 	3H 			//2C66 	4E03
		XORWR 	64H, 0H, 1H 	//2C68 	5964
		BTSS 	D8H, 2H, 0H 		//2C6A 	E4D8
		BRA 	2C9CH 			//2C6C 	1017

		//;setsysdata.c: 166: {;setsysdata.c: 167: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//2C6E 	0064 3010
		CLRR 	11H, 0H 		//2C72 	AA11
		LCALL 	5492H, 0H 		//2C74 	2C49 302A

		//;setsysdata.c: 168: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2C78 	4E00
		MOVLB 	0H 			//2C7A 	4100
		STR 	61H, 1H 			//2C7C 	AF61

		//;setsysdata.c: 169: RunData.PD_TimeSet++;
		MOVLB 	1H 			//2C7E 	4101
		INRSNZ 	1EH, 1H, 1H 	//2C80 	8B1E
		INCR 	1FH, 1H, 1H 		//2C82 	6B1F

		//;setsysdata.c: 170: if (RunData.PD_TimeSet > 90)
		BTSC 	1FH, 7H, 1H 		//2C84 	FF1F
		BRA 	2C9CH 			//2C86 	100A
		LDR 	1FH, 0H, 1H 		//2C88 	911F
		BNZ 	2C94H 			//2C8A 	2104
		LDWI 	5BH 			//2C8C 	4E5B
		SUBWR 	1EH, 0H, 1H 	//2C8E 	9D1E
		BTSS 	D8H, 0H, 0H 		//2C90 	E0D8
		BRA 	2C9CH 			//2C92 	1004

		//;setsysdata.c: 171: {;setsysdata.c: 172: RunData.PD_TimeSet = 30;
		LDWI 	0H 			//2C94 	4E00
		STR 	1FH, 1H 			//2C96 	AF1F
		LDWI 	1EH 			//2C98 	4E1E
		STR 	1EH, 1H 			//2C9A 	AF1E

		//;setsysdata.c: 173: };setsysdata.c: 174: };setsysdata.c: 177: if (Engineering_Pattern.IK
		//+                          ey == 4)
		LDWI 	4H 			//2C9C 	4E04
		MOVLB 	0H 			//2C9E 	4100
		XORWR 	64H, 0H, 1H 	//2CA0 	5964
		BTSS 	D8H, 2H, 0H 		//2CA2 	E4D8
		BRA 	2CD6H 			//2CA4 	1018

		//;setsysdata.c: 178: {;setsysdata.c: 179: BeepCtr1(Engineering_Pattern.IKey);
		MOVFF 	64H, 10H 		//2CA6 	0064 3010
		CLRR 	11H, 0H 		//2CAA 	AA11
		LCALL 	5492H, 0H 		//2CAC 	2C49 302A

		//;setsysdata.c: 180: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2CB0 	4E00
		MOVLB 	0H 			//2CB2 	4100
		STR 	61H, 1H 			//2CB4 	AF61

		//;setsysdata.c: 181: RunData.PD_TimeSet--;
		MOVLB 	1H 			//2CB6 	4101
		DECR 	1EH, 1H, 1H 		//2CB8 	471E
		BTSS 	D8H, 0H, 0H 		//2CBA 	E0D8
		DECR 	1FH, 1H, 1H 		//2CBC 	471F

		//;setsysdata.c: 182: if (RunData.PD_TimeSet < 10)
		BTSC 	1FH, 7H, 1H 		//2CBE 	FF1F
		BRA 	2CCEH 			//2CC0 	1006
		LDR 	1FH, 0H, 1H 		//2CC2 	911F
		BNZ 	2CD6H 			//2CC4 	2108
		LDWI 	AH 			//2CC6 	4E0A
		SUBWR 	1EH, 0H, 1H 	//2CC8 	9D1E
		BTSC 	D8H, 0H, 0H 		//2CCA 	F0D8
		BRA 	2CD6H 			//2CCC 	1004

		//;setsysdata.c: 183: {;setsysdata.c: 184: RunData.PD_TimeSet = 10;
		LDWI 	0H 			//2CCE 	4E00
		STR 	1FH, 1H 			//2CD0 	AF1F
		LDWI 	AH 			//2CD2 	4E0A
		STR 	1EH, 1H 			//2CD4 	AF1E

		//;setsysdata.c: 185: };setsysdata.c: 186: };setsysdata.c: 188: Engineering_Timeout_Logic(
		//+                          currentMode);
		MOVLB 	0H 			//2CD6 	4100
		LDR 	ACH, 0H, 1H 		//2CD8 	91AC
		LCALL 	55CCH, 0H 		//2CDA 	2CE6 302A

		//;setsysdata.c: 189: if (Engineering_Pattern.Return_Flag == 1)
		MOVLB 	0H 			//2CDE 	4100
		DECR 	65H, 0H, 1H 		//2CE0 	4565
		BTSS 	D8H, 2H, 0H 		//2CE2 	E4D8
		RET 	0H 			//2CE4 	4012

		//;setsysdata.c: 190: {;setsysdata.c: 191: Engineering_Pattern.Time_Start_Flag = 0;
		LDWI 	0H 			//2CE6 	4E00
		STR 	60H, 1H 			//2CE8 	AF60

		//;setsysdata.c: 192: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//2CEA 	4E00
		STR 	61H, 1H 			//2CEC 	AF61

		//;setsysdata.c: 193: Engineering_Pattern.Return_Flag = 0;
		LDWI 	0H 			//2CEE 	4E00
		STR 	65H, 1H 			//2CF0 	AF65

		//;setsysdata.c: 194: E2prom_WriteData();
		LCALL 	3936H, 0H 		//2CF2 	2C9B 301C

		//;setsysdata.c: 195: Engineering_Pattern.Led_Display_Timing_Enbale = 0;
		LDWI 	0H 			//2CF6 	4E00
		MOVLB 	0H 			//2CF8 	4100
		STR 	67H, 1H 			//2CFA 	AF67

		//;setsysdata.c: 196: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
		LDWI 	0H 			//2CFC 	4E00
		STR 	68H, 1H 			//2CFE 	AF68

		//;setsysdata.c: 197: currentMode = ENGINEERING_MODE_IDLE;
		LDWI 	0H 			//2D00 	4E00
		STR 	ACH, 1H 			//2D02 	AFAC

		//;setsysdata.c: 198: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//2D04 	4E00
		STR 	66H, 1H 			//2D06 	AF66
		RET 	0H 			//2D08 	4012

		//;main.c: 42: static u16 ms = 0;;main.c: 43: if((INTCON1bits.TMR0IE == 1)&&(INTCON1bits.T
		//+                          MR0IF == 1))
		BTSS 	F2H, 5H, 0H 		//2D0A 	EAF2
		RET 	0H 			//2D0C 	4012
		BTSS 	F2H, 2H, 0H 		//2D0E 	E4F2
		RET 	0H 			//2D10 	4012

		//;main.c: 44: {;main.c: 45: INTCON1bits.TMR0IF = 0;
		BCR 	F2H, 2H, 0H 		//2D12 	D4F2

		//;main.c: 46: counttest++;
		LDWI 	1H 			//2D14 	4E01
		MOVLB 	2H 			//2D16 	4102
		ADDWR 	7CH, 1H, 1H 	//2D18 	677C
		LDWI 	0H 			//2D1A 	4E00
		ADDWRC 	7DH, 1H, 1H 	//2D1C 	637D
		ADDWRC 	7EH, 1H, 1H 	//2D1E 	637E
		ADDWRC 	7FH, 1H, 1H 	//2D20 	637F

		//;main.c: 47: EncoderData.Time++;
		MOVLB 	1H 			//2D22 	4101
		INRSNZ 	7CH, 1H, 1H 	//2D24 	8B7C
		INCR 	7DH, 1H, 1H 		//2D26 	6B7D

		//;main.c: 48: sUsart2.LinkCount++;
		MOVLB 	2H 			//2D28 	4102
		INRSNZ 	BCH, 1H, 1H 	//2D2A 	8BBC
		INCR 	BDH, 1H, 1H 		//2D2C 	6BBD

		//;main.c: 49: RunData.AlarmLEDCount++;
		MOVLB 	1H 			//2D2E 	4101
		INRSNZ 	41H, 1H, 1H 	//2D30 	8B41
		INCR 	42H, 1H, 1H 		//2D32 	6B42

		//;main.c: 50: AlarmSound.count++;
		MOVLB 	0H 			//2D34 	4100
		INRSNZ 	7AH, 1H, 1H 	//2D36 	8B7A
		INCR 	7BH, 1H, 1H 		//2D38 	6B7B

		//;main.c: 51: if(EncoderData.Time>1000) EncoderData.Time=1000;
		MOVLB 	1H 			//2D3A 	4101
		BTSC 	7DH, 7H, 1H 		//2D3C 	FF7D
		BRA 	2D54H 			//2D3E 	100A
		LDWI 	E9H 			//2D40 	4EE9
		SUBWR 	7CH, 0H, 1H 	//2D42 	9D7C
		LDWI 	3H 			//2D44 	4E03
		SUBWRB 	7DH, 0H, 1H 	//2D46 	997D
		BTSS 	D8H, 0H, 0H 		//2D48 	E0D8
		BRA 	2D54H 			//2D4A 	1004
		LDWI 	3H 			//2D4C 	4E03
		STR 	7DH, 1H 			//2D4E 	AF7D
		LDWI 	E8H 			//2D50 	4EE8
		STR 	7CH, 1H 			//2D52 	AF7C

		//;main.c: 52: EncoderData.EC11_SpeedCount++;
		INRSNZ 	88H, 1H, 1H 	//2D54 	8B88
		INCR 	89H, 1H, 1H 		//2D56 	6B89

		//;main.c: 53: if(KeyDat.key_value) KeyDat.key_tim++;
		MOVLB 	0H 			//2D58 	4100
		LDR 	71H, 0H, 1H 		//2D5A 	9171
		IORWR 	72H, 0H, 1H 	//2D5C 	5172
		BTSC 	D8H, 2H, 0H 		//2D5E 	F4D8
		BRA 	2D66H 			//2D60 	1002
		INRSNZ 	6BH, 1H, 1H 	//2D62 	8B6B
		INCR 	6CH, 1H, 1H 		//2D64 	6B6C

		//;main.c: 54: usart2_receive_wait();
		LCALL 	5B94H, 0H 		//2D66 	2CCA 302D

		//;main.c: 55: if(ms>=1000)
		LDWI 	E8H 			//2D6A 	4EE8
		MOVLB 	0H 			//2D6C 	4100
		SUBWR 	95H, 0H, 1H 	//2D6E 	9D95
		LDWI 	3H 			//2D70 	4E03
		SUBWRB 	96H, 0H, 1H 	//2D72 	9996
		BTSS 	D8H, 0H, 0H 		//2D74 	E0D8
		BRA 	2E68H 			//2D76 	1078

		//;main.c: 56: {;main.c: 57: if(RunData.sec>=60)
		MOVLB 	1H 			//2D78 	4101
		LDR 	40H, 0H, 1H 		//2D7A 	9140
		BNZ 	2D86H 			//2D7C 	2104
		LDWI 	3CH 			//2D7E 	4E3C
		SUBWR 	3FH, 0H, 1H 	//2D80 	9D3F
		BTSS 	D8H, 0H, 0H 		//2D82 	E0D8
		BRA 	2E0EH 			//2D84 	1044

		//;main.c: 58: {;main.c: 60: if (RunData.StandbySta == 0)
		LDR 	2DH, 0H, 1H 		//2D86 	912D
		BTSS 	D8H, 2H, 0H 		//2D88 	E4D8
		BRA 	2DA8H 			//2D8A 	100E

		//;main.c: 61: {;main.c: 62: RunData.RunTime++;
		INRSNZ 	10H, 1H, 1H 	//2D8C 	8B10
		INCR 	11H, 1H, 1H 		//2D8E 	6B11

		//;main.c: 63: if (RunData.RunTime >= 999)
		BTSC 	11H, 7H, 1H 		//2D90 	FF11
		BRA 	2DA8H 			//2D92 	100A
		LDWI 	E7H 			//2D94 	4EE7
		SUBWR 	10H, 0H, 1H 	//2D96 	9D10
		LDWI 	3H 			//2D98 	4E03
		SUBWRB 	11H, 0H, 1H 	//2D9A 	9911
		BTSS 	D8H, 0H, 0H 		//2D9C 	E0D8
		BRA 	2DA8H 			//2D9E 	1004

		//;main.c: 64: RunData.RunTime = 999;
		LDWI 	3H 			//2DA0 	4E03
		STR 	11H, 1H 			//2DA2 	AF11
		LDWI 	E7H 			//2DA4 	4EE7
		STR 	10H, 1H 			//2DA6 	AF10

		//;main.c: 65: };main.c: 66: if(RunData.Timing)
		LDR 	12H, 0H, 1H 		//2DA8 	9112
		IORWR 	13H, 0H, 1H 	//2DAA 	5113
		BTSC 	D8H, 2H, 0H 		//2DAC 	F4D8
		BRA 	2DCCH 			//2DAE 	100E

		//;main.c: 67: {;main.c: 68: RunData.Timing--;
		DECR 	12H, 1H, 1H 		//2DB0 	4712
		BTSS 	D8H, 0H, 0H 		//2DB2 	E0D8
		DECR 	13H, 1H, 1H 		//2DB4 	4713

		//;main.c: 69: if(RunData.Timing<=0) RunData.Timing = 0;
		BTSC 	13H, 7H, 1H 		//2DB6 	FF13
		BRA 	2DC4H 			//2DB8 	1005
		LDR 	13H, 0H, 1H 		//2DBA 	9113
		BNZ 	2DCCH 			//2DBC 	2107
		DECR 	12H, 0H, 1H 		//2DBE 	4512
		BTSC 	D8H, 0H, 0H 		//2DC0 	F0D8
		BRA 	2DCCH 			//2DC2 	1004
		LDWI 	0H 			//2DC4 	4E00
		STR 	13H, 1H 			//2DC6 	AF13
		LDWI 	0H 			//2DC8 	4E00
		STR 	12H, 1H 			//2DCA 	AF12

		//;main.c: 70: };main.c: 71: RunData.sec = 0;
		LDWI 	0H 			//2DCC 	4E00
		STR 	40H, 1H 			//2DCE 	AF40
		LDWI 	0H 			//2DD0 	4E00
		STR 	3FH, 1H 			//2DD2 	AF3F

		//;main.c: 73: if(RunData.StandbySta==0) RunData.CumulativeTime++;
		LDR 	2DH, 0H, 1H 		//2DD4 	912D
		BTSS 	D8H, 2H, 0H 		//2DD6 	E4D8
		BRA 	2DE6H 			//2DD8 	1006
		LDWI 	1H 			//2DDA 	4E01
		ADDWR 	16H, 1H, 1H 	//2DDC 	6716
		LDWI 	0H 			//2DDE 	4E00
		ADDWRC 	17H, 1H, 1H 	//2DE0 	6317
		ADDWRC 	18H, 1H, 1H 	//2DE2 	6318
		ADDWRC 	19H, 1H, 1H 	//2DE4 	6319

		//;main.c: 74: if(RunData.CumulativeTime>5999940) RunData.CumulativeTime=5999940;
		BTSC 	19H, 7H, 1H 		//2DE6 	FF19
		BRA 	2E0EH 			//2DE8 	1012
		LDR 	19H, 0H, 1H 		//2DEA 	9119
		BNZ 	2DFEH 			//2DEC 	2108
		LDWI 	45H 			//2DEE 	4E45
		SUBWR 	16H, 0H, 1H 	//2DF0 	9D16
		LDWI 	8DH 			//2DF2 	4E8D
		SUBWRB 	17H, 0H, 1H 	//2DF4 	9917
		LDWI 	5BH 			//2DF6 	4E5B
		SUBWRB 	18H, 0H, 1H 	//2DF8 	9918
		BTSS 	D8H, 0H, 0H 		//2DFA 	E0D8
		BRA 	2E0EH 			//2DFC 	1008
		LDWI 	44H 			//2DFE 	4E44
		STR 	16H, 1H 			//2E00 	AF16
		LDWI 	8DH 			//2E02 	4E8D
		STR 	17H, 1H 			//2E04 	AF17
		LDWI 	5BH 			//2E06 	4E5B
		STR 	18H, 1H 			//2E08 	AF18
		LDWI 	0H 			//2E0A 	4E00
		STR 	19H, 1H 			//2E0C 	AF19

		//;main.c: 75: };main.c: 78: if(RunData.Error_Flag == 1)
		DECR 	45H, 0H, 1H 		//2E0E 	4545
		BTSS 	D8H, 2H, 0H 		//2E10 	E4D8
		BRA 	2E20H 			//2E12 	1006

		//;main.c: 79: {;main.c: 80: RunData.Error_Delay_Time ++;
		INCR 	46H, 1H, 1H 		//2E14 	6B46

		//;main.c: 81: if(RunData.Error_Delay_Time >= 3)
		LDWI 	2H 			//2E16 	4E02
		CPRSGT 	46H, 1H 		//2E18 	A546
		BRA 	2E20H 			//2E1A 	1002

		//;main.c: 82: {;main.c: 83: RunData.Error_Delay_Time = 3;
		LDWI 	3H 			//2E1C 	4E03
		STR 	46H, 1H 			//2E1E 	AF46

		//;main.c: 84: };main.c: 85: };main.c: 88: if(Engineering_Pattern.Time_Start_Flag == 1)
		MOVLB 	0H 			//2E20 	4100
		DECR 	60H, 0H, 1H 		//2E22 	4560
		BTSS 	D8H, 2H, 0H 		//2E24 	E4D8
		BRA 	2E2CH 			//2E26 	1002

		//;main.c: 89: {;main.c: 90: Engineering_Pattern.Time ++;
		INCR 	61H, 1H, 1H 		//2E28 	6B61

		//;main.c: 91: Engineering_Pattern.Time_End_Flag ++ ;
		INCR 	62H, 1H, 1H 		//2E2A 	6B62

		//;main.c: 92: };main.c: 95: if(RunData.Power_After_OnFlag == 1){
		MOVLB 	1H 			//2E2C 	4101
		DECR 	5BH, 0H, 1H 		//2E2E 	455B
		IORWR 	5CH, 0H, 1H 	//2E30 	515C
		BTSS 	D8H, 2H, 0H 		//2E32 	E4D8
		BRA 	2E52H 			//2E34 	100E

		//;main.c: 96: RunData.Power_After_OnFlag_Time ++;
		INRSNZ 	5DH, 1H, 1H 	//2E36 	8B5D
		INCR 	5EH, 1H, 1H 		//2E38 	6B5E

		//;main.c: 97: if(RunData.Power_After_OnFlag_Time >= 3){
		BTSC 	5EH, 7H, 1H 		//2E3A 	FF5E
		BRA 	2E52H 			//2E3C 	100A
		LDR 	5EH, 0H, 1H 		//2E3E 	915E
		BNZ 	2E4AH 			//2E40 	2104
		LDWI 	3H 			//2E42 	4E03
		SUBWR 	5DH, 0H, 1H 	//2E44 	9D5D
		BTSS 	D8H, 0H, 0H 		//2E46 	E0D8
		BRA 	2E52H 			//2E48 	1004

		//;main.c: 98: RunData.Power_After_OnFlag_Time = 3;
		LDWI 	0H 			//2E4A 	4E00
		STR 	5EH, 1H 			//2E4C 	AF5E
		LDWI 	3H 			//2E4E 	4E03
		STR 	5DH, 1H 			//2E50 	AF5D

		//;main.c: 99: };main.c: 100: };main.c: 102: RunData.ErrCodeSecCount++;
		INRSNZ 	43H, 1H, 1H 	//2E52 	8B43
		INCR 	44H, 1H, 1H 		//2E54 	6B44

		//;main.c: 103: RunData.AOD_TimeCount++;
		INRSNZ 	31H, 1H, 1H 	//2E56 	8B31
		INCR 	32H, 1H, 1H 		//2E58 	6B32

		//;main.c: 104: RunData.sec++;
		INRSNZ 	3FH, 1H, 1H 	//2E5A 	8B3F
		INCR 	40H, 1H, 1H 		//2E5C 	6B40

		//;main.c: 105: ms = 0;
		LDWI 	0H 			//2E5E 	4E00
		MOVLB 	0H 			//2E60 	4100
		STR 	96H, 1H 			//2E62 	AF96
		LDWI 	0H 			//2E64 	4E00
		STR 	95H, 1H 			//2E66 	AF95

		//;main.c: 106: };main.c: 107: ms++;
		INRSNZ 	95H, 1H, 1H 	//2E68 	8B95
		INCR 	96H, 1H, 1H 		//2E6A 	6B96

		//;main.c: 109: if(VoiceDelay.Voice_Delay_Flag == 1)
		MOVLB 	1H 			//2E6C 	4101
		DECR 	F4H, 0H, 1H 		//2E6E 	45F4
		BTSS 	D8H, 2H, 0H 		//2E70 	E4D8
		BRA 	2E8CH 			//2E72 	100C

		//;main.c: 110: {;main.c: 111: VoiceDelay.Voice_Delay ++;
		INRSNZ 	F0H, 1H, 1H 	//2E74 	8BF0
		INCR 	F1H, 1H, 1H 		//2E76 	6BF1

		//;main.c: 112: if(VoiceDelay.Voice_Delay >= 700)
		LDWI 	BCH 			//2E78 	4EBC
		SUBWR 	F0H, 0H, 1H 	//2E7A 	9DF0
		LDWI 	2H 			//2E7C 	4E02
		SUBWRB 	F1H, 0H, 1H 	//2E7E 	99F1
		BTSS 	D8H, 0H, 0H 		//2E80 	E0D8
		BRA 	2E8CH 			//2E82 	1004

		//;main.c: 113: {;main.c: 114: VoiceDelay.Voice_Delay = 700;
		LDWI 	2H 			//2E84 	4E02
		STR 	F1H, 1H 			//2E86 	AFF1
		LDWI 	BCH 			//2E88 	4EBC
		STR 	F0H, 1H 			//2E8A 	AFF0

		//;main.c: 115: };main.c: 116: };main.c: 118: if(RunData.FilterMesh_Delay_Flag == 1)
		DECR 	57H, 0H, 1H 		//2E8C 	4557
		IORWR 	58H, 0H, 1H 	//2E8E 	5158
		BTSS 	D8H, 2H, 0H 		//2E90 	E4D8
		RET 	0H 			//2E92 	4012

		//;main.c: 119: {;main.c: 120: AlarmSound.count = 1999;
		LDWI 	7H 			//2E94 	4E07
		MOVLB 	0H 			//2E96 	4100
		STR 	7BH, 1H 			//2E98 	AF7B
		LDWI 	CFH 			//2E9A 	4ECF
		STR 	7AH, 1H 			//2E9C 	AF7A

		//;main.c: 121: RunData.FilterMesh_Delay_Time ++;
		MOVLB 	1H 			//2E9E 	4101
		INRSNZ 	59H, 1H, 1H 	//2EA0 	8B59
		INCR 	5AH, 1H, 1H 		//2EA2 	6B5A

		//;main.c: 122: if(RunData.FilterMesh_Delay_Time > 1000) RunData.FilterMesh_Delay_Time = 0
		//+                          ;
		BTSC 	5AH, 7H, 1H 		//2EA4 	FF5A
		RET 	0H 			//2EA6 	4012
		LDWI 	E9H 			//2EA8 	4EE9
		SUBWR 	59H, 0H, 1H 	//2EAA 	9D59
		LDWI 	3H 			//2EAC 	4E03
		SUBWRB 	5AH, 0H, 1H 	//2EAE 	995A
		BTSS 	D8H, 0H, 0H 		//2EB0 	E0D8
		RET 	0H 			//2EB2 	4012
		LDWI 	0H 			//2EB4 	4E00
		STR 	5AH, 1H 			//2EB6 	AF5A
		LDWI 	0H 			//2EB8 	4E00
		STR 	59H, 1H 			//2EBA 	AF59
		RET 	0H 			//2EBC 	4012

		//;eeprom.c: 68: u8 dat[50] = {0};
		LFSR 	2H, 100H 		//2EBE 	2E20 3010
		LDWI 	31H 			//2EC2 	4E31
		CLRR 	DEH, 0H 		//2EC4 	AADE
		DECR 	E8H, 1H, 0H 		//2EC6 	46E8
		BC 	30C4H 			//2EC8 	22FD

		//;eeprom.c: 69: for(i=0; i<50; i++) dat[i] = EEPROMread(0x00 | i);
		LDWI 	0H 			//2ECA 	4E00
		STR 	42H, 0H 			//2ECC 	AE42
		LDR 	42H, 0H, 0H 		//2ECE 	9042
		ADDWI 	10H 			//2ED0 	4F10
		STR 	D9H, 0H 			//2ED2 	AED9
		CLRR 	DAH, 0H 		//2ED4 	AADA
		LDR 	42H, 0H, 0H 		//2ED6 	9042
		LCALL 	5BE8H, 0H 		//2ED8 	2CF4 302D
		STR 	DFH, 0H 			//2EDC 	AEDF
		INCR 	42H, 1H, 0H 		//2EDE 	6A42
		LDWI 	31H 			//2EE0 	4E31
		CPRSGT 	42H, 0H 		//2EE2 	A442
		BRA 	3ECEH 			//2EE4 	17F4

		//;eeprom.c: 70: if(dat[0] != 0x0A)
		LDWI 	AH 			//2EE6 	4E0A
		XORWR 	10H, 0H, 0H 	//2EE8 	5810
		BTSC 	D8H, 2H, 0H 		//2EEA 	F4D8
		BRA 	2F1EH 			//2EEC 	1018

		//;eeprom.c: 71: {;eeprom.c: 73: RunData.FlowSet = 30;
		LDWI 	0H 			//2EEE 	4E00
		MOVLB 	1H 			//2EF0 	4101
		STR 	5H, 1H 			//2EF2 	AF05
		LDWI 	1EH 			//2EF4 	4E1E
		STR 	4H, 1H 			//2EF6 	AF04

		//;eeprom.c: 74: RunData.CumulativeTime = 0;
		LDWI 	0H 			//2EF8 	4E00
		STR 	16H, 1H 			//2EFA 	AF16
		LDWI 	0H 			//2EFC 	4E00
		STR 	17H, 1H 			//2EFE 	AF17
		LDWI 	0H 			//2F00 	4E00
		STR 	18H, 1H 			//2F02 	AF18
		LDWI 	0H 			//2F04 	4E00
		STR 	19H, 1H 			//2F06 	AF19

		//;eeprom.c: 75: RunData.XF_TimeSet = 60;
		LDWI 	0H 			//2F08 	4E00
		STR 	1DH, 1H 			//2F0A 	AF1D
		LDWI 	3CH 			//2F0C 	4E3C
		STR 	1CH, 1H 			//2F0E 	AF1C

		//;eeprom.c: 76: RunData.JY_TimeSet = 6;
		LDWI 	0H 			//2F10 	4E00
		STR 	1BH, 1H 			//2F12 	AF1B
		LDWI 	6H 			//2F14 	4E06
		STR 	1AH, 1H 			//2F16 	AF1A

		//;eeprom.c: 77: RunData.VoiceEnable = 1;
		LDWI 	1H 			//2F18 	4E01
		STR 	30H, 1H 			//2F1A 	AF30
		RET 	0H 			//2F1C 	4012

		//;eeprom.c: 80: };eeprom.c: 82: RunData.FlowSet = dat[1]<<8;
		LDR 	11H, 0H, 0H 		//2F1E 	9011
		MOVLB 	1H 			//2F20 	4101
		STR 	5H, 1H 			//2F22 	AF05
		CLRR 	4H, 1H 			//2F24 	AB04

		//;eeprom.c: 83: RunData.FlowSet |= dat[2];
		LDR 	12H, 0H, 0H 		//2F26 	9012
		IORWR 	4H, 1H, 1H 		//2F28 	5304

		//;eeprom.c: 85: RunData.CumulativeTime |= ((u32)dat[3]<<24);
		MOVFF 	13H, CH 		//2F2A 	0013 300C
		CLRR 	DH, 0H 			//2F2E 	AA0D
		CLRR 	EH, 0H 			//2F30 	AA0E
		CLRR 	FH, 0H 			//2F32 	AA0F
		MOVFF 	CH, FH 		//2F34 	000C 300F
		CLRR 	EH, 0H 			//2F38 	AA0E
		CLRR 	DH, 0H 			//2F3A 	AA0D
		CLRR 	CH, 0H 			//2F3C 	AA0C
		LDR 	CH, 0H, 0H 		//2F3E 	900C
		IORWR 	16H, 1H, 1H 	//2F40 	5316
		LDR 	DH, 0H, 0H 		//2F42 	900D
		IORWR 	17H, 1H, 1H 	//2F44 	5317
		LDR 	EH, 0H, 0H 		//2F46 	900E
		IORWR 	18H, 1H, 1H 	//2F48 	5318
		LDR 	FH, 0H, 0H 		//2F4A 	900F
		IORWR 	19H, 1H, 1H 	//2F4C 	5319

		//;eeprom.c: 86: RunData.CumulativeTime |= ((u32)dat[4]<<16);
		MOVFF 	14H, CH 		//2F4E 	0014 300C
		CLRR 	DH, 0H 			//2F52 	AA0D
		CLRR 	EH, 0H 			//2F54 	AA0E
		CLRR 	FH, 0H 			//2F56 	AA0F
		MOVFF 	DH, FH 		//2F58 	000D 300F
		MOVFF 	CH, EH 		//2F5C 	000C 300E
		CLRR 	DH, 0H 			//2F60 	AA0D
		CLRR 	CH, 0H 			//2F62 	AA0C
		LDR 	CH, 0H, 0H 		//2F64 	900C
		IORWR 	16H, 1H, 1H 	//2F66 	5316
		LDR 	DH, 0H, 0H 		//2F68 	900D
		IORWR 	17H, 1H, 1H 	//2F6A 	5317
		LDR 	EH, 0H, 0H 		//2F6C 	900E
		IORWR 	18H, 1H, 1H 	//2F6E 	5318
		LDR 	FH, 0H, 0H 		//2F70 	900F
		IORWR 	19H, 1H, 1H 	//2F72 	5319

		//;eeprom.c: 87: RunData.CumulativeTime |= ((u32)dat[5]<<8);
		MOVFF 	15H, CH 		//2F74 	0015 300C
		CLRR 	DH, 0H 			//2F78 	AA0D
		CLRR 	EH, 0H 			//2F7A 	AA0E
		CLRR 	FH, 0H 			//2F7C 	AA0F
		MOVFF 	EH, FH 		//2F7E 	000E 300F
		MOVFF 	DH, EH 		//2F82 	000D 300E
		MOVFF 	CH, DH 		//2F86 	000C 300D
		CLRR 	CH, 0H 			//2F8A 	AA0C
		LDR 	CH, 0H, 0H 		//2F8C 	900C
		IORWR 	16H, 1H, 1H 	//2F8E 	5316
		LDR 	DH, 0H, 0H 		//2F90 	900D
		IORWR 	17H, 1H, 1H 	//2F92 	5317
		LDR 	EH, 0H, 0H 		//2F94 	900E
		IORWR 	18H, 1H, 1H 	//2F96 	5318
		LDR 	FH, 0H, 0H 		//2F98 	900F
		IORWR 	19H, 1H, 1H 	//2F9A 	5319

		//;eeprom.c: 88: RunData.CumulativeTime |= (u32)dat[6];
		LDR 	16H, 0H, 0H 		//2F9C 	9016
		IORWR 	16H, 1H, 1H 	//2F9E 	5316

		//;eeprom.c: 89: RunData.XF_TimeSet = dat[7]<<8;
		LDR 	17H, 0H, 0H 		//2FA0 	9017
		STR 	1DH, 1H 			//2FA2 	AF1D
		CLRR 	1CH, 1H 		//2FA4 	AB1C

		//;eeprom.c: 90: RunData.XF_TimeSet |= dat[8];
		LDR 	18H, 0H, 0H 		//2FA6 	9018
		IORWR 	1CH, 1H, 1H 	//2FA8 	531C

		//;eeprom.c: 91: RunData.JY_TimeSet = dat[9]<<8;
		LDR 	19H, 0H, 0H 		//2FAA 	9019
		STR 	1BH, 1H 			//2FAC 	AF1B
		CLRR 	1AH, 1H 		//2FAE 	AB1A

		//;eeprom.c: 92: RunData.JY_TimeSet |= dat[10];
		LDR 	1AH, 0H, 0H 		//2FB0 	901A
		IORWR 	1AH, 1H, 1H 	//2FB2 	531A

		//;eeprom.c: 93: RunData.VoiceEnable = dat[11];
		MOVFF 	1BH, 130H 		//2FB4 	001B 3130

		//;eeprom.c: 94: RunData.FLOW_Trim = dat[12]<<8;
		LDR 	1CH, 0H, 0H 		//2FB8 	901C
		STR 	27H, 1H 			//2FBA 	AF27
		CLRR 	26H, 1H 		//2FBC 	AB26

		//;eeprom.c: 95: RunData.FLOW_Trim |= dat[13];
		LDR 	1DH, 0H, 0H 		//2FBE 	901D
		IORWR 	26H, 1H, 1H 	//2FC0 	5326

		//;eeprom.c: 96: RunData.Voltage_Calibration = dat[14] ;
		MOVFF 	1EH, 148H 		//2FC2 	001E 3148
		CLRR 	49H, 1H 		//2FC6 	AB49

		//;eeprom.c: 99: RunData.negative_Adjust_Flow_20_Flag = dat[18];
		MOVFF 	22H, 151H 		//2FC8 	0022 3151
		CLRR 	52H, 1H 		//2FCC 	AB52

		//;eeprom.c: 100: RunData.negative_Adjust_Flow_50_Flag= dat[19];
		MOVFF 	23H, 153H 		//2FCE 	0023 3153
		CLRR 	54H, 1H 		//2FD2 	AB54

		//;eeprom.c: 101: RunData.negative_Adjust_Flow_100_Flag= dat[20];
		MOVFF 	24H, 155H 		//2FD4 	0024 3155
		CLRR 	56H, 1H 		//2FD8 	AB56

		//;eeprom.c: 105: RunData.PD_TimeSet = dat[21]<<8;
		LDR 	25H, 0H, 0H 		//2FDA 	9025
		STR 	1FH, 1H 			//2FDC 	AF1F
		CLRR 	1EH, 1H 		//2FDE 	AB1E

		//;eeprom.c: 106: RunData.PD_TimeSet |= dat[22];
		LDR 	26H, 0H, 0H 		//2FE0 	9026
		IORWR 	1EH, 1H, 1H 	//2FE2 	531E

		//;eeprom.c: 109: if(RunData.negative_Adjust_Flow_20_Flag == 1){
		DECR 	51H, 0H, 1H 		//2FE4 	4551
		IORWR 	52H, 0H, 1H 	//2FE6 	5152
		BTSS 	D8H, 2H, 0H 		//2FE8 	E4D8
		BRA 	3004H 			//2FEA 	100C

		//;eeprom.c: 110: RunData.Adjust_Flow_20_value = -dat[15];
		LDR 	1FH, 0H, 0H 		//2FEC 	901F
		STR 	CH, 0H 			//2FEE 	AE0C
		CLRR 	DH, 0H 			//2FF0 	AA0D
		COMR 	CH, 1H, 0H 		//2FF2 	5E0C
		COMR 	DH, 1H, 0H 		//2FF4 	5E0D
		INRSNZ 	CH, 1H, 0H 	//2FF6 	8A0C
		INCR 	DH, 1H, 0H 		//2FF8 	6A0D
		MOVFF 	CH, 14BH 		//2FFA 	000C 314B
		MOVFF 	DH, 14CH 		//2FFE 	000D 314C

		//;eeprom.c: 111: }else{
		BRA 	300AH 			//3002 	1003

		//;eeprom.c: 112: RunData.Adjust_Flow_20_value = dat[15];
		MOVFF 	1FH, 14BH 		//3004 	001F 314B
		CLRR 	4CH, 1H 		//3008 	AB4C

		//;eeprom.c: 113: };eeprom.c: 115: if(RunData.negative_Adjust_Flow_50_Flag == 1){
		DECR 	53H, 0H, 1H 		//300A 	4553
		IORWR 	54H, 0H, 1H 	//300C 	5154
		BTSS 	D8H, 2H, 0H 		//300E 	E4D8
		BRA 	302AH 			//3010 	100C

		//;eeprom.c: 116: RunData.Adjust_Flow_50_value = -dat[16];
		LDR 	20H, 0H, 0H 		//3012 	9020
		STR 	CH, 0H 			//3014 	AE0C
		CLRR 	DH, 0H 			//3016 	AA0D
		COMR 	CH, 1H, 0H 		//3018 	5E0C
		COMR 	DH, 1H, 0H 		//301A 	5E0D
		INRSNZ 	CH, 1H, 0H 	//301C 	8A0C
		INCR 	DH, 1H, 0H 		//301E 	6A0D
		MOVFF 	CH, 14DH 		//3020 	000C 314D
		MOVFF 	DH, 14EH 		//3024 	000D 314E

		//;eeprom.c: 117: }else{
		BRA 	3030H 			//3028 	1003

		//;eeprom.c: 118: RunData.Adjust_Flow_50_value = dat[16];
		MOVFF 	20H, 14DH 		//302A 	0020 314D
		CLRR 	4EH, 1H 		//302E 	AB4E

		//;eeprom.c: 119: };eeprom.c: 122: if(RunData.negative_Adjust_Flow_100_Flag == 1){
		DECR 	55H, 0H, 1H 		//3030 	4555
		IORWR 	56H, 0H, 1H 	//3032 	5156
		BTSS 	D8H, 2H, 0H 		//3034 	E4D8
		BRA 	3050H 			//3036 	100C

		//;eeprom.c: 123: RunData.Adjust_Flow_100_value = -dat[17];
		LDR 	21H, 0H, 0H 		//3038 	9021
		STR 	CH, 0H 			//303A 	AE0C
		CLRR 	DH, 0H 			//303C 	AA0D
		COMR 	CH, 1H, 0H 		//303E 	5E0C
		COMR 	DH, 1H, 0H 		//3040 	5E0D
		INRSNZ 	CH, 1H, 0H 	//3042 	8A0C
		INCR 	DH, 1H, 0H 		//3044 	6A0D
		MOVFF 	CH, 14FH 		//3046 	000C 314F
		MOVFF 	DH, 150H 		//304A 	000D 3150

		//;eeprom.c: 124: }else{
		RET 	0H 			//304E 	4012

		//;eeprom.c: 125: RunData.Adjust_Flow_100_value = dat[17];
		MOVFF 	21H, 14FH 		//3050 	0021 314F
		CLRR 	50H, 1H 		//3054 	AB50
		RET 	0H 			//3056 	4012
		MOVLB 	FH 			//3058 	410F
		BSR 	28H, 7H, 1H 		//305A 	CF28
		LCALL 	5F5AH, 0H 		//305C 	2CAD 302F
		MOVLB 	EH 			//3060 	410E
		BSR 	61H, 7H, 1H 		//3062 	CF61
		LCALL 	5E74H, 0H 		//3064 	2C3A 302F
		LDWI 	0H 			//3068 	4E00
		STR 	76H, 0H 			//306A 	AE76
		LDWI 	0H 			//306C 	4E00
		STR 	77H, 0H 			//306E 	AE77
		LDWI 	0H 			//3070 	4E00
		STR 	78H, 0H 			//3072 	AE78
		LDWI 	0H 			//3074 	4E00
		STR 	79H, 0H 			//3076 	AE79
		LDWI 	0H 			//3078 	4E00
		STR 	7AH, 0H 			//307A 	AE7A
		LDWI 	0H 			//307C 	4E00
		STR 	7BH, 0H 			//307E 	AE7B
		LDWI 	26H 			//3080 	4E26
		MOVLB 	EH 			//3082 	410E
		STR 	60H, 1H 			//3084 	AF60
		LDWI 	10H 			//3086 	4E10
		STR 	63H, 1H 			//3088 	AF63
		MOVFF 	F25H, 81H 		//308A 	0F25 3081
		MOVLB 	0H 			//308E 	4100
		CLRR 	82H, 1H 		//3090 	AB82
		NOP  					//3092 	3000
		MOVLB 	FH 			//3094 	410F
		LDR 	26H, 0H, 1H 		//3096 	9126
		STR 	11H, 0H 			//3098 	AE11
		CLRR 	10H, 0H 		//309A 	AA10
		LDR 	10H, 0H, 0H 		//309C 	9010
		MOVLB 	0H 			//309E 	4100
		IORWR 	81H, 1H, 1H 	//30A0 	5381
		LDR 	11H, 0H, 0H 		//30A2 	9011
		IORWR 	82H, 1H, 1H 	//30A4 	5382
		NOP  					//30A6 	3000
		LDWI 	0H 			//30A8 	4E00
		STR 	52H, 0H 			//30AA 	AE52
		LDWI 	3H 			//30AC 	4E03
		CPRSGT 	52H, 0H 		//30AE 	A452
		BRA 	30B4H 			//30B0 	1001
		BRA 	3170H 			//30B2 	105E
		LDWI 	5DH 			//30B4 	4E5D
		ADDWR 	52H, 0H, 0H 	//30B6 	6452
		STR 	F6H, 0H 			//30B8 	AEF6
		CLRR 	F7H, 0H 		//30BA 	AAF7
		LDWI 	7FH 			//30BC 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//30BE 	62F7
		TBLRD*  			//30C0 	4008
		MOVFF 	FF5H, A7H 		//30C2 	0FF5 30A7
		MOVLB 	0H 			//30C6 	4100
		LDR 	A7H, 0H, 1H 		//30C8 	91A7
		MULWI 	3H 			//30CA 	4D03
		LDWI 	2H 			//30CC 	4E02
		ADDWR 	F3H, 1H, 0H 	//30CE 	66F3
		LDWI 	0H 			//30D0 	4E00
		ADDWRC 	F4H, 1H, 0H 	//30D2 	62F4
		LDWI 	A1H 			//30D4 	4EA1
		ADDWR 	F3H, 0H, 0H 	//30D6 	64F3
		STR 	F6H, 0H 			//30D8 	AEF6
		LDWI 	7EH 			//30DA 	4E7E
		ADDWRC 	F4H, 0H, 0H 	//30DC 	60F4
		STR 	F7H, 0H 			//30DE 	AEF7
		TBLRD*  			//30E0 	4008
		LDR 	F5H, 0H, 0H 		//30E2 	90F5
		STR 	10H, 0H 			//30E4 	AE10
		CLRR 	11H, 0H 		//30E6 	AA11
		COMR 	10H, 0H, 0H 		//30E8 	5C10
		STR 	12H, 0H 			//30EA 	AE12
		COMR 	11H, 0H, 0H 		//30EC 	5C11
		STR 	13H, 0H 			//30EE 	AE13
		LDR 	A7H, 0H, 1H 		//30F0 	91A7
		MULWI 	3H 			//30F2 	4D03
		LDWI 	A1H 			//30F4 	4EA1
		ADDWR 	F3H, 0H, 0H 	//30F6 	64F3
		STR 	F6H, 0H 			//30F8 	AEF6
		LDWI 	7EH 			//30FA 	4E7E
		ADDWRC 	F4H, 0H, 0H 	//30FC 	60F4
		STR 	F7H, 0H 			//30FE 	AEF7
		TBLRD*+  			//3100 	4009
		MOVFF 	FF5H, FD9H 		//3102 	0FF5 3FD9
		TBLRD*+  			//3106 	4009
		MOVFF 	FF5H, FDAH 		//3108 	0FF5 3FDA
		LDR 	12H, 0H, 0H 		//310C 	9012
		ANDWR 	DEH, 1H, 0H 	//310E 	56DE
		LDR 	13H, 0H, 0H 		//3110 	9013
		ANDWR 	DDH, 1H, 0H 	//3112 	56DD
		LDR 	A7H, 0H, 1H 		//3114 	91A7
		MULWI 	3H 			//3116 	4D03
		LDWI 	2H 			//3118 	4E02
		ADDWR 	F3H, 1H, 0H 	//311A 	66F3
		LDWI 	0H 			//311C 	4E00
		ADDWRC 	F4H, 1H, 0H 	//311E 	62F4
		LDWI 	A1H 			//3120 	4EA1
		ADDWR 	F3H, 0H, 0H 	//3122 	64F3
		STR 	F6H, 0H 			//3124 	AEF6
		LDWI 	7EH 			//3126 	4E7E
		ADDWRC 	F4H, 0H, 0H 	//3128 	60F4
		STR 	F7H, 0H 			//312A 	AEF7
		TBLRD*  			//312C 	4008
		LDR 	F5H, 0H, 0H 		//312E 	90F5
		STR 	10H, 0H 			//3130 	AE10
		CLRR 	11H, 0H 		//3132 	AA11
		COMR 	10H, 0H, 0H 		//3134 	5C10
		STR 	12H, 0H 			//3136 	AE12
		COMR 	11H, 0H, 0H 		//3138 	5C11
		STR 	13H, 0H 			//313A 	AE13
		LDR 	A7H, 0H, 1H 		//313C 	91A7
		MULWI 	3H 			//313E 	4D03
		LDWI 	A1H 			//3140 	4EA1
		ADDWR 	F3H, 0H, 0H 	//3142 	64F3
		STR 	F6H, 0H 			//3144 	AEF6
		LDWI 	7EH 			//3146 	4E7E
		ADDWRC 	F4H, 0H, 0H 	//3148 	60F4
		STR 	F7H, 0H 			//314A 	AEF7
		TBLRD*+  			//314C 	4009
		MOVFF 	FF5H, 14H 		//314E 	0FF5 3014
		TBLRD*+  			//3152 	4009
		MOVFF 	FF5H, 15H 		//3154 	0FF5 3015
		LDWI 	EEH 			//3158 	4EEE
		ADDWR 	14H, 0H, 0H 	//315A 	6414
		STR 	D9H, 0H 			//315C 	AED9
		LDWI 	FFH 			//315E 	4EFF
		ADDWRC 	15H, 0H, 0H 	//3160 	6015
		STR 	DAH, 0H 			//3162 	AEDA
		LDR 	12H, 0H, 0H 		//3164 	9012
		ANDWR 	DEH, 1H, 0H 	//3166 	56DE
		LDR 	13H, 0H, 0H 		//3168 	9013
		ANDWR 	DDH, 1H, 0H 	//316A 	56DD
		INCR 	52H, 1H, 0H 		//316C 	6A52
		BRA 	40ACH 			//316E 	179E
		LDWI 	0H 			//3170 	4E00
		STR 	52H, 0H 			//3172 	AE52
		LDWI 	3H 			//3174 	4E03
		CPRSGT 	52H, 0H 		//3176 	A452
		BRA 	317CH 			//3178 	1001
		BRA 	31C8H 			//317A 	1026
		LDR 	52H, 0H, 0H 		//317C 	9052
		MULWI 	8H 			//317E 	4D08
		LDWI 	C8H 			//3180 	4EC8
		ADDWR 	F3H, 0H, 0H 	//3182 	64F3
		STR 	D9H, 0H 			//3184 	AED9
		LDWI 	1H 			//3186 	4E01
		ADDWRC 	F4H, 0H, 0H 	//3188 	60F4
		STR 	DAH, 0H 			//318A 	AEDA
		LDWI 	80H 			//318C 	4E80
		STR 	DEH, 0H 			//318E 	AEDE
		LDWI 	0H 			//3190 	4E00
		STR 	DDH, 0H 			//3192 	AEDD
		LDR 	52H, 0H, 0H 		//3194 	9052
		MULWI 	8H 			//3196 	4D08
		LDWI 	CAH 			//3198 	4ECA
		ADDWR 	F3H, 0H, 0H 	//319A 	64F3
		STR 	D9H, 0H 			//319C 	AED9
		LDWI 	1H 			//319E 	4E01
		ADDWRC 	F4H, 0H, 0H 	//31A0 	60F4
		STR 	DAH, 0H 			//31A2 	AEDA
		LDWI 	0H 			//31A4 	4E00
		STR 	DEH, 0H 			//31A6 	AEDE
		LDWI 	0H 			//31A8 	4E00
		STR 	DDH, 0H 			//31AA 	AEDD
		LDR 	52H, 0H, 0H 		//31AC 	9052
		MULWI 	8H 			//31AE 	4D08
		LDWI 	CCH 			//31B0 	4ECC
		ADDWR 	F3H, 0H, 0H 	//31B2 	64F3
		STR 	D9H, 0H 			//31B4 	AED9
		LDWI 	1H 			//31B6 	4E01
		ADDWRC 	F4H, 0H, 0H 	//31B8 	60F4
		STR 	DAH, 0H 			//31BA 	AEDA
		LDWI 	0H 			//31BC 	4E00
		STR 	DEH, 0H 			//31BE 	AEDE
		LDWI 	0H 			//31C0 	4E00
		STR 	DDH, 0H 			//31C2 	AEDD
		INCR 	52H, 1H, 0H 		//31C4 	6A52
		BRA 	4174H 			//31C6 	17D6
		LDWI 	0H 			//31C8 	4E00
		MOVLB 	0H 			//31CA 	4100
		STR 	ABH, 1H 			//31CC 	AFAB
		LDWI 	0H 			//31CE 	4E00
		STR 	51H, 0H 			//31D0 	AE51
		LDWI 	0H 			//31D2 	4E00
		STR 	A5H, 1H 			//31D4 	AFA5
		LDWI 	0H 			//31D6 	4E00
		STR 	9FH, 1H 			//31D8 	AF9F
		LDWI 	0H 			//31DA 	4E00
		STR 	A6H, 1H 			//31DC 	AFA6
		LDWI 	0H 			//31DE 	4E00
		STR 	9EH, 1H 			//31E0 	AF9E
		LDWI 	0H 			//31E2 	4E00
		STR 	9CH, 1H 			//31E4 	AF9C
		BSR 	54H, 0H, 0H 		//31E6 	C054
		BCR 	54H, 1H, 0H 		//31E8 	D254
		LCALL 	3A70H, 0H 		//31EA 	2C38 301D
		RET 	0H 			//31EE 	4012

		//;setsysdata.c: 41: if (!Engineering_Pattern.Mode)
		LDR 	66H, 0H, 1H 		//31F0 	9166
		BTSS 	D8H, 2H, 0H 		//31F2 	E4D8
		BRA 	3202H 			//31F4 	1006

		//;setsysdata.c: 42: {;setsysdata.c: 43: touch_key = TouchKeyValue();
		LCALL 	3DD4H, 0H 		//31F6 	2CEA 301E
		MOVFF 	AH, 85H 		//31FA 	000A 3085
		MOVFF 	BH, 86H 		//31FE 	000B 3086

		//;setsysdata.c: 44: };setsysdata.c: 45: Engineering_Pattern.IKey = Get_Engineering_KeyVal
		//+                          ue();
		LCALL 	4098H, 0H 		//3202 	2C4C 3020
		LDR 	2EH, 0H, 0H 		//3206 	902E
		MOVLB 	0H 			//3208 	4100
		STR 	64H, 1H 			//320A 	AF64

		//;setsysdata.c: 47: if(RunData.StandbySta == 0)
		MOVLB 	1H 			//320C 	4101
		LDR 	2DH, 0H, 1H 		//320E 	912D
		BTSS 	D8H, 2H, 0H 		//3210 	E4D8
		BRA 	331AH 			//3212 	1083

		//;setsysdata.c: 48: {;setsysdata.c: 49: if(touch_key == 0x07 && Engineering_Pattern.IKey
		//+                          == 1)
		LDWI 	7H 			//3214 	4E07
		MOVLB 	0H 			//3216 	4100
		XORWR 	85H, 0H, 1H 	//3218 	5985
		IORWR 	86H, 0H, 1H 	//321A 	5186
		BTSS 	D8H, 2H, 0H 		//321C 	E4D8
		BRA 	3278H 			//321E 	102C
		DECR 	64H, 0H, 1H 		//3220 	4564
		BTSS 	D8H, 2H, 0H 		//3222 	E4D8
		BRA 	3278H 			//3224 	1029

		//;setsysdata.c: 50: {;setsysdata.c: 51: if(RunData.RunTime < 3 && RunData.RunTime >= 0)
		MOVLB 	1H 			//3226 	4101
		BTSC 	11H, 7H, 1H 		//3228 	FF11
		BRA 	3238H 			//322A 	1006
		LDR 	11H, 0H, 1H 		//322C 	9111
		BNZ 	3252H 			//322E 	2111
		LDWI 	3H 			//3230 	4E03
		SUBWR 	10H, 0H, 1H 	//3232 	9D10
		BTSC 	D8H, 0H, 0H 		//3234 	F0D8
		BRA 	3252H 			//3236 	100D
		BTSC 	11H, 7H, 1H 		//3238 	FF11
		BRA 	3252H 			//323A 	100B

		//;setsysdata.c: 52: {;setsysdata.c: 53: Beep1();
		LCALL 	5DE6H, 0H 		//323C 	2CF3 302E

		//;setsysdata.c: 54: touch_key = 0x00;
		LDWI 	0H 			//3240 	4E00
		MOVLB 	0H 			//3242 	4100
		STR 	86H, 1H 			//3244 	AF86
		LDWI 	0H 			//3246 	4E00
		STR 	85H, 1H 			//3248 	AF85

		//;setsysdata.c: 55: Engineering_Pattern.Mode = 1;
		LDWI 	1H 			//324A 	4E01
		STR 	66H, 1H 			//324C 	AF66

		//;setsysdata.c: 56: currentMode = ENGINEERING_MODE_ADJUST_JYTIME;
		LDWI 	4H 			//324E 	4E04
		BRA 	332EH 			//3250 	106E
		BTSC 	11H, 7H, 1H 		//3252 	FF11
		BRA 	3330H 			//3254 	106D
		LDR 	11H, 0H, 1H 		//3256 	9111
		BNZ 	3262H 			//3258 	2104
		LDWI 	4H 			//325A 	4E04
		SUBWR 	10H, 0H, 1H 	//325C 	9D10
		BTSS 	D8H, 0H, 0H 		//325E 	E0D8
		BRA 	3330H 			//3260 	1067

		//;setsysdata.c: 58: {;setsysdata.c: 59: Beep1();
		LCALL 	5DE6H, 0H 		//3262 	2CF3 302E

		//;setsysdata.c: 60: touch_key = 0x00;
		LDWI 	0H 			//3266 	4E00
		MOVLB 	0H 			//3268 	4100
		STR 	86H, 1H 			//326A 	AF86
		LDWI 	0H 			//326C 	4E00
		STR 	85H, 1H 			//326E 	AF85

		//;setsysdata.c: 61: Engineering_Pattern.Mode = 1;
		LDWI 	1H 			//3270 	4E01
		STR 	66H, 1H 			//3272 	AF66

		//;setsysdata.c: 62: currentMode = ENGINEERING_MODE_FLOW_COMPENSATION;
		LDWI 	3H 			//3274 	4E03
		BRA 	332EH 			//3276 	105B

		//;setsysdata.c: 65: else if (touch_key == 0x07 && Engineering_Pattern.IKey == 3)
		LDWI 	7H 			//3278 	4E07
		XORWR 	85H, 0H, 1H 	//327A 	5985
		IORWR 	86H, 0H, 1H 	//327C 	5186
		BTSS 	D8H, 2H, 0H 		//327E 	E4D8
		BRA 	32A0H 			//3280 	100F
		LDWI 	3H 			//3282 	4E03
		XORWR 	64H, 0H, 1H 	//3284 	5964
		BTSS 	D8H, 2H, 0H 		//3286 	E4D8
		BRA 	32A0H 			//3288 	100B

		//;setsysdata.c: 66: {;setsysdata.c: 67: Beep1();
		LCALL 	5DE6H, 0H 		//328A 	2CF3 302E

		//;setsysdata.c: 68: Engineering_Pattern.Mode = 1;
		LDWI 	1H 			//328E 	4E01
		MOVLB 	0H 			//3290 	4100
		STR 	66H, 1H 			//3292 	AF66

		//;setsysdata.c: 69: touch_key = 0x00;
		LDWI 	0H 			//3294 	4E00
		STR 	86H, 1H 			//3296 	AF86
		LDWI 	0H 			//3298 	4E00
		STR 	85H, 1H 			//329A 	AF85

		//;setsysdata.c: 70: currentMode = ENGINEERING_MODE_VOLTAGE_CALIBRATION;
		LDWI 	2H 			//329C 	4E02
		BRA 	332EH 			//329E 	1047

		//;setsysdata.c: 73: else if (touch_key == 0x07 && Engineering_Pattern.IKey == 2)
		LDWI 	7H 			//32A0 	4E07
		XORWR 	85H, 0H, 1H 	//32A2 	5985
		IORWR 	86H, 0H, 1H 	//32A4 	5186
		BTSS 	D8H, 2H, 0H 		//32A6 	E4D8
		BRA 	32F2H 			//32A8 	1024
		LDWI 	2H 			//32AA 	4E02
		XORWR 	64H, 0H, 1H 	//32AC 	5964
		BTSS 	D8H, 2H, 0H 		//32AE 	E4D8
		BRA 	32F2H 			//32B0 	1020

		//;setsysdata.c: 74: {;setsysdata.c: 75: static int i = 0;;setsysdata.c: 76: if(i == 300)
		LDWI 	2CH 			//32B2 	4E2C
		XORWR 	83H, 0H, 1H 	//32B4 	5983
		BNZ 	32C0H 			//32B6 	2104
		DECR 	84H, 0H, 1H 		//32B8 	4584
		BTSC 	D8H, 2H, 0H 		//32BA 	F4D8

		//;setsysdata.c: 77: {;setsysdata.c: 78: Beep1();
		LCALL 	5DE6H, 0H 		//32BC 	2CF3 302E

		//;setsysdata.c: 79: };setsysdata.c: 80: i++;
		MOVLB 	0H 			//32C0 	4100
		INRSNZ 	83H, 1H, 1H 	//32C2 	8B83
		INCR 	84H, 1H, 1H 		//32C4 	6B84

		//;setsysdata.c: 81: if(i > 300) i = 0;
		BTSC 	84H, 7H, 1H 		//32C6 	FF84
		BRA 	32DEH 			//32C8 	100A
		LDWI 	2DH 			//32CA 	4E2D
		SUBWR 	83H, 0H, 1H 	//32CC 	9D83
		LDWI 	1H 			//32CE 	4E01
		SUBWRB 	84H, 0H, 1H 	//32D0 	9984
		BTSS 	D8H, 0H, 0H 		//32D2 	E0D8
		BRA 	32DEH 			//32D4 	1004
		LDWI 	0H 			//32D6 	4E00
		STR 	84H, 1H 			//32D8 	AF84
		LDWI 	0H 			//32DA 	4E00
		STR 	83H, 1H 			//32DC 	AF83

		//;setsysdata.c: 82: RunData.CumulativeTime = 0;
		LDWI 	0H 			//32DE 	4E00
		MOVLB 	1H 			//32E0 	4101
		STR 	16H, 1H 			//32E2 	AF16
		LDWI 	0H 			//32E4 	4E00
		STR 	17H, 1H 			//32E6 	AF17
		LDWI 	0H 			//32E8 	4E00
		STR 	18H, 1H 			//32EA 	AF18
		LDWI 	0H 			//32EC 	4E00
		STR 	19H, 1H 			//32EE 	AF19

		//;setsysdata.c: 83: }
		BRA 	3330H 			//32F0 	101F

		//;setsysdata.c: 85: else if(touch_key == 0x07 && Engineering_Pattern.IKey == 4)
		LDWI 	7H 			//32F2 	4E07
		XORWR 	85H, 0H, 1H 	//32F4 	5985
		IORWR 	86H, 0H, 1H 	//32F6 	5186
		BTSS 	D8H, 2H, 0H 		//32F8 	E4D8
		BRA 	3330H 			//32FA 	101A
		LDWI 	4H 			//32FC 	4E04
		XORWR 	64H, 0H, 1H 	//32FE 	5964
		BTSS 	D8H, 2H, 0H 		//3300 	E4D8
		BRA 	3330H 			//3302 	1016

		//;setsysdata.c: 86: {;setsysdata.c: 87: Beep1();
		LCALL 	5DE6H, 0H 		//3304 	2CF3 302E

		//;setsysdata.c: 88: Engineering_Pattern.Mode = 1;
		LDWI 	1H 			//3308 	4E01
		MOVLB 	0H 			//330A 	4100
		STR 	66H, 1H 			//330C 	AF66

		//;setsysdata.c: 89: touch_key = 0x00;
		LDWI 	0H 			//330E 	4E00
		STR 	86H, 1H 			//3310 	AF86
		LDWI 	0H 			//3312 	4E00
		STR 	85H, 1H 			//3314 	AF85

		//;setsysdata.c: 90: currentMode = ENGINEERING_MODE_PD;
		LDWI 	5H 			//3316 	4E05
		BRA 	332EH 			//3318 	100A

		//;setsysdata.c: 93: else{;setsysdata.c: 94: Engineering_Pattern.Led_Display_Timing_Enbale
		//+                           = 0;
		LDWI 	0H 			//331A 	4E00
		MOVLB 	0H 			//331C 	4100
		STR 	67H, 1H 			//331E 	AF67

		//;setsysdata.c: 95: Engineering_Pattern.Led_Display_CumulativeTime_Enbale = 0;
		LDWI 	0H 			//3320 	4E00
		STR 	68H, 1H 			//3322 	AF68

		//;setsysdata.c: 96: Engineering_Pattern.Led_Dispaly_CloseAlarm = 0;
		LDWI 	0H 			//3324 	4E00
		STR 	69H, 1H 			//3326 	AF69

		//;setsysdata.c: 97: Engineering_Pattern.Led_Display_Flow = 0;
		LDWI 	0H 			//3328 	4E00
		STR 	6AH, 1H 			//332A 	AF6A

		//;setsysdata.c: 98: currentMode = ENGINEERING_MODE_IDLE;
		LDWI 	0H 			//332C 	4E00
		STR 	ACH, 1H 			//332E 	AFAC

		//;setsysdata.c: 99: };setsysdata.c: 102: if(Engineering_Pattern.Mode == 1)
		MOVLB 	0H 			//3330 	4100
		DECR 	66H, 0H, 1H 		//3332 	4566
		BTSS 	D8H, 2H, 0H 		//3334 	E4D8
		BRA 	3348H 			//3336 	1008

		//;setsysdata.c: 103: {;setsysdata.c: 104: Engineering_Pattern.Led_Dispaly_CloseAlarm = 1;
		LDWI 	1H 			//3338 	4E01
		STR 	69H, 1H 			//333A 	AF69

		//;setsysdata.c: 105: Label_CloseAlarm(0,0);
		LDWI 	0H 			//333C 	4E00
		STR 	AH, 0H 			//333E 	AE0A
		LDWI 	0H 			//3340 	4E00
		LCALL 	5D26H, 0H 		//3342 	2C93 302E

		//;setsysdata.c: 106: }
		BRA 	334CH 			//3346 	1002

		//;setsysdata.c: 107: else Engineering_Pattern.Led_Dispaly_CloseAlarm = 0;
		LDWI 	0H 			//3348 	4E00
		STR 	69H, 1H 			//334A 	AF69
		CLRWDT  			//334C 	4004

		//;setsysdata.c: 111: switch (currentMode)
		BRA 	3366H 			//334E 	100B

		//;setsysdata.c: 114: Engineering_Voltage_Calibration();
		LCALL 	2058H, 0H 		//3350 	2C2C 3010

		//;setsysdata.c: 115: break;
		RET 	0H 			//3354 	4012

		//;setsysdata.c: 117: Engineering_Flow_Compensation();
		LCALL 	628H, 0H 		//3356 	2C14 3003

		//;setsysdata.c: 118: break;
		RET 	0H 			//335A 	4012

		//;setsysdata.c: 120: Engineering_Adjust_JYTime();
		LCALL 	2932H, 0H 		//335C 	2C99 3014

		//;setsysdata.c: 122: Engineering_Adjust_PDTime();
		LCALL 	2B4CH, 0H 		//3360 	2CA6 3015
		RET 	0H 			//3364 	4012
		MOVLB 	0H 			//3366 	4100
		LDR 	ACH, 0H, 1H 		//3368 	91AC
		XORWI 	2H 			//336A 	4A02
		BTSC 	D8H, 2H, 0H 		//336C 	F4D8
		BRA 	4350H 			//336E 	17F0
		XORWI 	1H 			//3370 	4A01
		BTSC 	D8H, 2H, 0H 		//3372 	F4D8
		BRA 	4356H 			//3374 	17F0
		XORWI 	7H 			//3376 	4A07
		BTSC 	D8H, 2H, 0H 		//3378 	F4D8
		BRA 	435CH 			//337A 	17F0
		XORWI 	1H 			//337C 	4A01
		BTSS 	D8H, 2H, 0H 		//337E 	E4D8
		RET 	0H 			//3380 	4012
		BRA 	4360H 			//3382 	17EE

		//;main.c: 348: DelayMs(50);
		LDWI 	0H 			//3384 	4E00
		STR 	CH, 0H 			//3386 	AE0C
		LDWI 	32H 			//3388 	4E32
		STR 	BH, 0H 			//338A 	AE0B
		LCALL 	5B14H, 0H 		//338C 	2C8A 302D

		//;main.c: 349: DataInit();
		LCALL 	472AH, 0H 		//3390 	2C95 3023

		//;main.c: 352: POWER_INITIAL();
		LCALL 	4C9EH, 0H 		//3394 	2C4F 3026

		//;main.c: 354: TSC_INITIAL();
		LCALL 	3058H, 0H 		//3398 	2C2C 3018

		//;main.c: 355: GPIO_Init();
		LCALL 	5E30H, 0H 		//339C 	2C18 302F

		//;main.c: 356: PEIE = 1;
		BSR 	F2H, 6H, 0H 		//33A0 	CCF2

		//;main.c: 357: GIE = 1;
		BSR 	F2H, 7H, 0H 		//33A2 	CEF2

		//;main.c: 358: E2prom_ReadData();
		LCALL 	2EBEH, 0H 		//33A4 	2C5F 3017

		//;main.c: 359: Voice_Init();
		LCALL 	5F4AH, 0H 		//33A8 	2CA5 302F

		//;main.c: 360: IR_Key_Init();
		LCALL 	53EEH, 0H 		//33AC 	2CF7 3029

		//;main.c: 361: BeepInit();
		LCALL 	5F68H, 0H 		//33B0 	2CB4 302F

		//;main.c: 362: encoder_Init();
		LCALL 	5AE8H, 0H 		//33B4 	2C74 302D

		//;main.c: 363: uart2_Init();
		LCALL 	5856H, 0H 		//33B8 	2C2B 302C

		//;main.c: 364: printf("start\r\n");
		LDWI 	DCH 			//33BC 	4EDC
		STR 	22H, 0H 			//33BE 	AE22
		LDWI 	7FH 			//33C0 	4E7F
		STR 	23H, 0H 			//33C2 	AE23
		LCALL 	5B6AH, 0H 		//33C4 	2CB5 302D

		//;main.c: 365: TIM0_INITIAL();
		LCALL 	5C36H, 0H 		//33C8 	2C1B 302E

		//;main.c: 367: RunData.StandbySta = 0;
		LDWI 	0H 			//33CC 	4E00
		MOVLB 	1H 			//33CE 	4101
		STR 	2DH, 1H 			//33D0 	AF2D

		//;main.c: 369: TM1629Init();
		LCALL 	4FFAH, 0H 		//33D2 	2CFD 3027

		//;main.c: 370: StartUpVoice();
		LCALL 	367EH, 0H 		//33D6 	2C3F 301B

		//;main.c: 374: for(i=0; i<15; i++) {DelayMs(100);asm("clrwdt"); }
		LDWI 	0H 			//33DA 	4E00
		MOVLB 	2H 			//33DC 	4102
		STR 	D7H, 1H 			//33DE 	AFD7
		LDWI 	0H 			//33E0 	4E00
		STR 	D6H, 1H 			//33E2 	AFD6
		LDWI 	0H 			//33E4 	4E00
		STR 	CH, 0H 			//33E6 	AE0C
		LDWI 	64H 			//33E8 	4E64
		STR 	BH, 0H 			//33EA 	AE0B
		LCALL 	5B14H, 0H 		//33EC 	2C8A 302D
		CLRWDT  			//33F0 	4004
		MOVLB 	2H 			//33F2 	4102
		INRSNZ 	D6H, 1H, 1H 	//33F4 	8BD6
		INCR 	D7H, 1H, 1H 		//33F6 	6BD7
		LDR 	D7H, 0H, 1H 		//33F8 	91D7
		BNZ 	3404H 			//33FA 	2104
		LDWI 	FH 			//33FC 	4E0F
		SUBWR 	D6H, 0H, 1H 	//33FE 	9DD6
		BTSS 	D8H, 0H, 0H 		//3400 	E0D8
		BRA 	43E4H 			//3402 	17F0

		//;main.c: 375: for(i=0; i<16; i++) DisBuf[i] = 0x00;
		LDWI 	0H 			//3404 	4E00
		STR 	D7H, 1H 			//3406 	AFD7
		LDWI 	0H 			//3408 	4E00
		STR 	D6H, 1H 			//340A 	AFD6
		LDR 	D6H, 0H, 1H 		//340C 	91D6
		ADDWI 	BAH 			//340E 	4FBA
		STR 	D9H, 0H 			//3410 	AED9
		CLRR 	DAH, 0H 		//3412 	AADA
		LDWI 	0H 			//3414 	4E00
		STR 	DFH, 0H 			//3416 	AEDF
		INRSNZ 	D6H, 1H, 1H 	//3418 	8BD6
		INCR 	D7H, 1H, 1H 		//341A 	6BD7
		LDR 	D7H, 0H, 1H 		//341C 	91D7
		BNZ 	3428H 			//341E 	2104
		LDWI 	10H 			//3420 	4E10
		SUBWR 	D6H, 0H, 1H 	//3422 	9DD6
		BTSS 	D8H, 0H, 0H 		//3424 	E0D8
		BRA 	440CH 			//3426 	17F2

		//;main.c: 376: LATFbits.LATF2 = 0;
		BCR 	8EH, 2H, 0H 		//3428 	D48E

		//;main.c: 377: LATCbits.LATC0 = 0;
		BCR 	8BH, 0H, 0H 		//342A 	D08B

		//;main.c: 378: LATFbits.LATF3 = 0;
		BCR 	8EH, 3H, 0H 		//342C 	D68E

		//;main.c: 379: Update_Display();
		LCALL 	5F74H, 0H 		//342E 	2CBA 302F

		//;main.c: 381: LATDbits.LATD1 = 0;
		BCR 	8CH, 1H, 0H 		//3432 	D28C

		//;main.c: 383: RunData.ErrCodeSecCount = 0;
		LDWI 	0H 			//3434 	4E00
		MOVLB 	1H 			//3436 	4101
		STR 	44H, 1H 			//3438 	AF44
		LDWI 	0H 			//343A 	4E00
		STR 	43H, 1H 			//343C 	AF43

		//;main.c: 384: RunData.VoiceNum = 0;
		LDWI 	0H 			//343E 	4E00
		STR 	2FH, 1H 			//3440 	AF2F

		//;main.c: 388: {;main.c: 389: Display_Line(1);
		LDWI 	1H 			//3442 	4E01
		LCALL 	5C5AH, 0H 		//3444 	2C2D 302E

		//;main.c: 391: key_scan();
		LCALL 	4680H, 0H 		//3448 	2C40 3023

		//;main.c: 392: Engineering_Mode_Api();
		LCALL 	5F7EH, 0H 		//344C 	2CBF 302F

		//;main.c: 393: if(RunData.StandbySta == 0)
		MOVLB 	1H 			//3450 	4101
		LDR 	2DH, 0H, 1H 		//3452 	912D
		BTSS 	D8H, 2H, 0H 		//3454 	E4D8
		BRA 	3482H 			//3456 	1015

		//;main.c: 394: {;main.c: 395: BeepCtr2((EncoderData.Time<10));
		BTSC 	7DH, 7H, 1H 		//3458 	FF7D
		BRA 	3468H 			//345A 	1006
		LDR 	7DH, 0H, 1H 		//345C 	917D
		BNZ 	346CH 			//345E 	2106
		LDWI 	AH 			//3460 	4E0A
		SUBWR 	7CH, 0H, 1H 	//3462 	9D7C
		BTSC 	D8H, 0H, 0H 		//3464 	F0D8
		BRA 	346CH 			//3466 	1002
		LDWI 	1H 			//3468 	4E01
		BRA 	346EH 			//346A 	1001
		LDWI 	0H 			//346C 	4E00
		STR 	BH, 0H 			//346E 	AE0B
		CLRR 	CH, 0H 			//3470 	AA0C
		LCALL 	590AH, 0H 		//3472 	2C85 302C

		//;main.c: 396: BeepCtr1(KeyDat.key_value);
		MOVFF 	71H, 10H 		//3476 	0071 3010
		MOVFF 	72H, 11H 		//347A 	0072 3011
		LCALL 	5492H, 0H 		//347E 	2C49 302A

		//;main.c: 397: };main.c: 398: if(KeyDat.key_value==0x01)
		MOVLB 	0H 			//3482 	4100
		DECR 	71H, 0H, 1H 		//3484 	4571
		IORWR 	72H, 0H, 1H 	//3486 	5172
		BTSS 	D8H, 2H, 0H 		//3488 	E4D8
		BRA 	3498H 			//348A 	1006

		//;main.c: 399: BeepCtr1(KeyDat.key_value);
		MOVFF 	71H, 10H 		//348C 	0071 3010
		MOVFF 	72H, 11H 		//3490 	0072 3011
		LCALL 	5492H, 0H 		//3494 	2C49 302A

		//;main.c: 400: EC11_Set_Value();
		LCALL 	5742H, 0H 		//3498 	2CA1 302B

		//;main.c: 401: Cmd_Process();
		LCALL 	3BA2H, 0H 		//349C 	2CD1 301D

		//;main.c: 402: StartUpVoice();
		LCALL 	367EH, 0H 		//34A0 	2C3F 301B

		//;main.c: 403: control();
		LCALL 	3FCAH, 0H 		//34A4 	2CE5 301F

		//;main.c: 404: IR_MoreCtr();
		LCALL 	3ED2H, 0H 		//34A8 	2C69 301F
		CLRWDT  			//34AC 	4004

		//;main.c: 406: TSC_Scan();
		LCALL 	5F88H, 0H 		//34AE 	2CC4 302F

		//;main.c: 407: if(TSC_DataProcessing()== 1)
		LCALL 	5CE6H, 0H 		//34B2 	2C73 302E
		DECR 	E8H, 1H, 0H 		//34B6 	46E8
		BTSC 	D8H, 2H, 0H 		//34B8 	F4D8

		//;main.c: 408: {;main.c: 409: Get_Key_Demo();
		LCALL 	597EH, 0H 		//34BA 	2CBF 302C

		//;main.c: 410: };main.c: 424: if(KeyDat.key_value||(EncoderData.Time<200))
		MOVLB 	0H 			//34BE 	4100
		LDR 	71H, 0H, 1H 		//34C0 	9171
		IORWR 	72H, 0H, 1H 	//34C2 	5172
		BTSS 	D8H, 2H, 0H 		//34C4 	E4D8
		BRA 	34DAH 			//34C6 	1009
		MOVLB 	1H 			//34C8 	4101
		BTSC 	7DH, 7H, 1H 		//34CA 	FF7D
		BRA 	34DAH 			//34CC 	1006
		LDR 	7DH, 0H, 1H 		//34CE 	917D
		BNZ 	34E4H 			//34D0 	2109
		LDWI 	C8H 			//34D2 	4EC8
		SUBWR 	7CH, 0H, 1H 	//34D4 	9D7C
		BTSC 	D8H, 0H, 0H 		//34D6 	F0D8
		BRA 	34E4H 			//34D8 	1005

		//;main.c: 425: {;main.c: 426: RunData.AOD_TimeCount = 0;
		LDWI 	0H 			//34DA 	4E00
		MOVLB 	1H 			//34DC 	4101
		STR 	32H, 1H 			//34DE 	AF32
		LDWI 	0H 			//34E0 	4E00
		STR 	31H, 1H 			//34E2 	AF31

		//;main.c: 427: };main.c: 429: if(i>100)
		MOVLB 	2H 			//34E4 	4102
		LDR 	D7H, 0H, 1H 		//34E6 	91D7
		BNZ 	34F2H 			//34E8 	2104
		LDWI 	65H 			//34EA 	4E65
		SUBWR 	D6H, 0H, 1H 	//34EC 	9DD6
		BTSS 	D8H, 0H, 0H 		//34EE 	E0D8
		BRA 	3500H 			//34F0 	1007

		//;main.c: 430: {;main.c: 442: Cmd_Send();
		LCALL 	24F4H, 0H 		//34F2 	2C7A 3012

		//;main.c: 449: i=0;
		LDWI 	0H 			//34F6 	4E00
		MOVLB 	2H 			//34F8 	4102
		STR 	D7H, 1H 			//34FA 	AFD7
		LDWI 	0H 			//34FC 	4E00
		STR 	D6H, 1H 			//34FE 	AFD6

		//;main.c: 451: };main.c: 452: i++;
		INRSNZ 	D6H, 1H, 1H 	//3500 	8BD6
		INCR 	D7H, 1H, 1H 		//3502 	6BD7

		//;main.c: 454: DelayMs(1);
		LDWI 	0H 			//3504 	4E00
		STR 	CH, 0H 			//3506 	AE0C
		LDWI 	1H 			//3508 	4E01
		STR 	BH, 0H 			//350A 	AE0B
		LCALL 	5B14H, 0H 		//350C 	2C8A 302D

		//;main.c: 455: SleepProcess();
		LCALL 	5FA8H, 0H 		//3510 	2CD4 302F
		BRA 	4442H 			//3514 	1796

		//;irkey.c: 186: u16 ret = 0;
		LDWI 	0H 			//3516 	4E00
		STR 	11H, 0H 			//3518 	AE11
		LDWI 	0H 			//351A 	4E00
		STR 	10H, 0H 			//351C 	AE10

		//;irkey.c: 187: if (IRData.Sta)
		MOVLB 	1H 			//351E 	4101
		LDR 	6BH, 0H, 1H 		//3520 	916B
		BTSS 	D8H, 2H, 0H 		//3522 	E4D8
		BRA 	3570H 			//3524 	1025
		BRA 	3650H 			//3526 	1094

		//;irkey.c: 192: ret = 0x01;
		LDWI 	0H 			//3528 	4E00
		STR 	11H, 0H 			//352A 	AE11
		LDWI 	1H 			//352C 	4E01
		BRA 	3672H 			//352E 	10A1

		//;irkey.c: 195: ret = 0x02;
		LDWI 	0H 			//3530 	4E00
		STR 	11H, 0H 			//3532 	AE11
		LDWI 	2H 			//3534 	4E02
		BRA 	3672H 			//3536 	109D

		//;irkey.c: 198: ret = 0x03;
		LDWI 	0H 			//3538 	4E00
		STR 	11H, 0H 			//353A 	AE11
		LDWI 	3H 			//353C 	4E03
		BRA 	3672H 			//353E 	1099

		//;irkey.c: 201: ret = 0x06;
		LDWI 	0H 			//3540 	4E00
		STR 	11H, 0H 			//3542 	AE11
		LDWI 	6H 			//3544 	4E06
		BRA 	3672H 			//3546 	1095

		//;irkey.c: 204: ret = 0x04;
		LDWI 	0H 			//3548 	4E00
		STR 	11H, 0H 			//354A 	AE11
		LDWI 	4H 			//354C 	4E04
		BRA 	3672H 			//354E 	1091

		//;irkey.c: 207: ret = 0x05;
		LDWI 	0H 			//3550 	4E00
		STR 	11H, 0H 			//3552 	AE11
		LDWI 	5H 			//3554 	4E05
		BRA 	3672H 			//3556 	108D

		//;irkey.c: 210: ret = 0x08;
		LDWI 	0H 			//3558 	4E00
		STR 	11H, 0H 			//355A 	AE11
		LDWI 	8H 			//355C 	4E08
		BRA 	3672H 			//355E 	1089

		//;irkey.c: 213: ret = 0x09;
		LDWI 	0H 			//3560 	4E00
		STR 	11H, 0H 			//3562 	AE11
		LDWI 	9H 			//3564 	4E09
		BRA 	3672H 			//3566 	1085

		//;irkey.c: 216: ret = 0x07;
		LDWI 	0H 			//3568 	4E00
		STR 	11H, 0H 			//356A 	AE11
		LDWI 	7H 			//356C 	4E07
		BRA 	3672H 			//356E 	1081
		MOVFF 	15FH, CH 		//3570 	015F 300C
		MOVFF 	160H, DH 		//3574 	0160 300D
		MOVFF 	161H, EH 		//3578 	0161 300E
		MOVFF 	162H, FH 		//357C 	0162 300F
		LDR 	FH, 0H, 0H 		//3580 	900F
		XORWI 	0H 			//3582 	4A00
		BTSC 	D8H, 2H, 0H 		//3584 	F4D8
		BRA 	3632H 			//3586 	1055
		XORWI 	84H 			//3588 	4A84
		BTSC 	D8H, 2H, 0H 		//358A 	F4D8
		BRA 	363CH 			//358C 	1057
		XORWI 	7BH 			//358E 	4A7B
		BTSC 	D8H, 2H, 0H 		//3590 	F4D8
		BRA 	3646H 			//3592 	1059
		BRA 	3674H 			//3594 	106F
		LDR 	DH, 0H, 0H 		//3596 	900D
		XORWI 	A0H 			//3598 	4AA0
		BTSC 	D8H, 2H, 0H 		//359A 	F4D8
		BRA 	35A6H 			//359C 	1004
		XORWI 	10H 			//359E 	4A10
		BTSC 	D8H, 2H, 0H 		//35A0 	F4D8
		BRA 	35B0H 			//35A2 	1006
		BRA 	3674H 			//35A4 	1067
		LDR 	CH, 0H, 0H 		//35A6 	900C
		XORWI 	5FH 			//35A8 	4A5F
		BTSC 	D8H, 2H, 0H 		//35AA 	F4D8
		BRA 	4528H 			//35AC 	17BD
		BRA 	3674H 			//35AE 	1062
		LDR 	CH, 0H, 0H 		//35B0 	900C
		XORWI 	4FH 			//35B2 	4A4F
		BTSC 	D8H, 2H, 0H 		//35B4 	F4D8
		BRA 	4530H 			//35B6 	17BC
		BRA 	3674H 			//35B8 	105D
		LDR 	DH, 0H, 0H 		//35BA 	900D
		XORWI 	2BH 			//35BC 	4A2B
		BTSC 	D8H, 2H, 0H 		//35BE 	F4D8
		BRA 	35DCH 			//35C0 	100D
		XORWI 	5DH 			//35C2 	4A5D
		BTSC 	D8H, 2H, 0H 		//35C4 	F4D8
		BRA 	35E6H 			//35C6 	100F
		XORWI 	E0H 			//35C8 	4AE0
		BTSC 	D8H, 2H, 0H 		//35CA 	F4D8
		BRA 	35F0H 			//35CC 	1011
		XORWI 	3DH 			//35CE 	4A3D
		BTSC 	D8H, 2H, 0H 		//35D0 	F4D8
		BRA 	35FAH 			//35D2 	1013
		XORWI 	71H 			//35D4 	4A71
		BTSC 	D8H, 2H, 0H 		//35D6 	F4D8
		BRA 	3604H 			//35D8 	1015
		BRA 	3674H 			//35DA 	104C
		LDR 	CH, 0H, 0H 		//35DC 	900C
		XORWI 	6AH 			//35DE 	4A6A
		BTSC 	D8H, 2H, 0H 		//35E0 	F4D8
		BRA 	4568H 			//35E2 	17C2
		BRA 	3674H 			//35E4 	1047
		LDR 	CH, 0H, 0H 		//35E6 	900C
		XORWI 	4CH 			//35E8 	4A4C
		BTSC 	D8H, 2H, 0H 		//35EA 	F4D8
		BRA 	4550H 			//35EC 	17B1
		BRA 	3674H 			//35EE 	1042
		LDR 	CH, 0H, 0H 		//35F0 	900C
		XORWI 	A5H 			//35F2 	4AA5
		BTSC 	D8H, 2H, 0H 		//35F4 	F4D8
		BRA 	4558H 			//35F6 	17B0
		BRA 	3674H 			//35F8 	103D
		LDR 	CH, 0H, 0H 		//35FA 	900C
		XORWI 	E6H 			//35FC 	4AE6
		BTSC 	D8H, 2H, 0H 		//35FE 	F4D8
		BRA 	4540H 			//3600 	179F
		BRA 	3674H 			//3602 	1038
		LDR 	CH, 0H, 0H 		//3604 	900C
		XORWI 	40H 			//3606 	4A40
		BTSC 	D8H, 2H, 0H 		//3608 	F4D8
		BRA 	4548H 			//360A 	179E
		BRA 	3674H 			//360C 	1033
		LDR 	DH, 0H, 0H 		//360E 	900D
		XORWI 	47H 			//3610 	4A47
		BTSC 	D8H, 2H, 0H 		//3612 	F4D8
		BRA 	361EH 			//3614 	1004
		XORWI 	A0H 			//3616 	4AA0
		BTSC 	D8H, 2H, 0H 		//3618 	F4D8
		BRA 	3628H 			//361A 	1006
		BRA 	3674H 			//361C 	102B
		LDR 	CH, 0H, 0H 		//361E 	900C
		XORWI 	B8H 			//3620 	4AB8
		BTSC 	D8H, 2H, 0H 		//3622 	F4D8
		BRA 	4560H 			//3624 	179D
		BRA 	3674H 			//3626 	1026
		LDR 	CH, 0H, 0H 		//3628 	900C
		XORWI 	18H 			//362A 	4A18
		BTSC 	D8H, 2H, 0H 		//362C 	F4D8
		BRA 	4538H 			//362E 	1784
		BRA 	3674H 			//3630 	1021
		LDR 	EH, 0H, 0H 		//3632 	900E
		XORWI 	0H 			//3634 	4A00
		BTSC 	D8H, 2H, 0H 		//3636 	F4D8
		BRA 	4596H 			//3638 	17AE
		BRA 	3674H 			//363A 	101C
		LDR 	EH, 0H, 0H 		//363C 	900E
		XORWI 	7BH 			//363E 	4A7B
		BTSC 	D8H, 2H, 0H 		//3640 	F4D8
		BRA 	45BAH 			//3642 	17BB
		BRA 	3674H 			//3644 	1017
		LDR 	EH, 0H, 0H 		//3646 	900E
		XORWI 	0H 			//3648 	4A00
		BTSC 	D8H, 2H, 0H 		//364A 	F4D8
		BRA 	460EH 			//364C 	17E0
		BRA 	3674H 			//364E 	1012

		//;irkey.c: 220: else;irkey.c: 221: {;irkey.c: 222: IRData.RmtCnt = 0;
		LDWI 	0H 			//3650 	4E00
		STR 	72H, 1H 			//3652 	AF72
		LDWI 	0H 			//3654 	4E00
		STR 	71H, 1H 			//3656 	AF71

		//;irkey.c: 223: IRData.Value = 0;
		LDWI 	0H 			//3658 	4E00
		STR 	5FH, 1H 			//365A 	AF5F
		LDWI 	0H 			//365C 	4E00
		STR 	60H, 1H 			//365E 	AF60
		LDWI 	0H 			//3660 	4E00
		STR 	61H, 1H 			//3662 	AF61
		LDWI 	0H 			//3664 	4E00
		STR 	62H, 1H 			//3666 	AF62

		//;irkey.c: 224: IRData.get_w = 0;
		LDWI 	0H 			//3668 	4E00
		STR 	6CH, 1H 			//366A 	AF6C

		//;irkey.c: 226: ret = 0;
		LDWI 	0H 			//366C 	4E00
		STR 	11H, 0H 			//366E 	AE11
		LDWI 	0H 			//3670 	4E00
		STR 	10H, 0H 			//3672 	AE10

		//;irkey.c: 227: };irkey.c: 228: return ret;
		MOVFF 	10H, AH 		//3674 	0010 300A
		MOVFF 	11H, BH 		//3678 	0011 300B
		RET 	0H 			//367C 	4012

		//;voice.c: 427: static u8 i = 0;;voice.c: 428: static u8 j = 0;;voice.c: 429: switch (i)
		BRA 	37D2H 			//367E 	10A9

		//;voice.c: 435: Label_CloseAlarm(0,0);
		LDWI 	0H 			//3680 	4E00
		STR 	AH, 0H 			//3682 	AE0A
		LDWI 	0H 			//3684 	4E00
		LCALL 	5D26H, 0H 		//3686 	2C93 302E

		//;voice.c: 436: TM1629_Luminance(8);
		LDWI 	8H 			//368A 	4E08
		LCALL 	47C4H, 0H 		//368C 	2CE2 3023

		//;voice.c: 437: Display_CumulativeTime(RunData.CumulativeTime / 60, 1 , 0);
		MOVFF 	116H, AH 		//3690 	0116 300A
		MOVFF 	117H, BH 		//3694 	0117 300B
		MOVFF 	118H, CH 		//3698 	0118 300C
		MOVFF 	119H, DH 		//369C 	0119 300D
		LDWI 	3CH 			//36A0 	4E3C
		STR 	EH, 0H 			//36A2 	AE0E
		LDWI 	0H 			//36A4 	4E00
		STR 	FH, 0H 			//36A6 	AE0F
		LDWI 	0H 			//36A8 	4E00
		STR 	10H, 0H 			//36AA 	AE10
		LDWI 	0H 			//36AC 	4E00
		STR 	11H, 0H 			//36AE 	AE11
		LCALL 	4166H, 0H 		//36B0 	2CB3 3020
		MOVFF 	AH, 22H 		//36B4 	000A 3022
		MOVFF 	BH, 23H 		//36B8 	000B 3023
		MOVFF 	CH, 24H 		//36BC 	000C 3024
		MOVFF 	DH, 25H 		//36C0 	000D 3025
		LDWI 	1H 			//36C4 	4E01
		STR 	26H, 0H 			//36C6 	AE26
		LDWI 	0H 			//36C8 	4E00
		STR 	27H, 0H 			//36CA 	AE27
		LCALL 	2716H, 0H 		//36CC 	2C8B 3013

		//;voice.c: 438: Display_Timing(0, 3,0);
		LDWI 	0H 			//36D0 	4E00
		STR 	20H, 0H 			//36D2 	AE20
		LDWI 	0H 			//36D4 	4E00
		STR 	21H, 0H 			//36D6 	AE21
		LDWI 	0H 			//36D8 	4E00
		STR 	22H, 0H 			//36DA 	AE22
		LDWI 	0H 			//36DC 	4E00
		STR 	23H, 0H 			//36DE 	AE23
		LDWI 	3H 			//36E0 	4E03
		STR 	24H, 0H 			//36E2 	AE24
		LDWI 	0H 			//36E4 	4E00
		STR 	25H, 0H 			//36E6 	AE25
		LCALL 	1B4EH, 0H 		//36E8 	2CA7 300D

		//;voice.c: 439: Display_Flow(0, 3 ,0);
		LDWI 	0H 			//36EC 	4E00
		STR 	17H, 0H 			//36EE 	AE17
		LDWI 	0H 			//36F0 	4E00
		STR 	16H, 0H 			//36F2 	AE16
		LDWI 	3H 			//36F4 	4E03
		STR 	18H, 0H 			//36F6 	AE18
		LDWI 	0H 			//36F8 	4E00
		STR 	19H, 0H 			//36FA 	AE19
		LCALL 	3CC4H, 0H 		//36FC 	2C62 301E

		//;voice.c: 440: Display_Concentration(0, 3);
		LDWI 	0H 			//3700 	4E00
		STR 	17H, 0H 			//3702 	AE17
		LDWI 	0H 			//3704 	4E00
		STR 	16H, 0H 			//3706 	AE16
		LDWI 	3H 			//3708 	4E03
		STR 	18H, 0H 			//370A 	AE18
		LCALL 	37E4H, 0H 		//370C 	2CF2 301B

		//;voice.c: 441: Display_SysSta(0);
		LDWI 	0H 			//3710 	4E00
		LCALL 	58D0H, 0H 		//3712 	2C68 302C

		//;voice.c: 442: Display_Anion(0);
		LDWI 	0H 			//3716 	4E00
		LCALL 	5FA6H, 0H 		//3718 	2CD3 302F

		//;voice.c: 443: Display_FilterMesh(0);
		LDWI 	0H 			//371C 	4E00
		LCALL 	4E90H, 0H 		//371E 	2C48 3027

		//;voice.c: 444: Display_Voice(1);
		LDWI 	1H 			//3722 	4E01
		LCALL 	5E00H, 0H 		//3724 	2C00 302F

		//;voice.c: 445: Update_Display();
		LCALL 	5F74H, 0H 		//3728 	2CBA 302F

		//;voice.c: 446: for(int cunt = 0 ; cunt < 3 ; cunt ++)
		LDWI 	0H 			//372C 	4E00
		STR 	2BH, 0H 			//372E 	AE2B
		LDWI 	0H 			//3730 	4E00
		STR 	2AH, 0H 			//3732 	AE2A

		//;voice.c: 447: {;voice.c: 448: DelayMs(100);
		LDWI 	0H 			//3734 	4E00
		STR 	CH, 0H 			//3736 	AE0C
		LDWI 	64H 			//3738 	4E64
		STR 	BH, 0H 			//373A 	AE0B
		LCALL 	5B14H, 0H 		//373C 	2C8A 302D
		CLRWDT  			//3740 	4004
		INRSNZ 	2AH, 1H, 0H 	//3742 	8A2A
		INCR 	2BH, 1H, 0H 		//3744 	6A2B
		BTSC 	2BH, 7H, 0H 		//3746 	FE2B
		BRA 	4734H 			//3748 	17F5
		LDR 	2BH, 0H, 0H 		//374A 	902B
		BNZ 	3756H 			//374C 	2104
		LDWI 	3H 			//374E 	4E03
		SUBWR 	2AH, 0H, 0H 	//3750 	9C2A
		BTSS 	D8H, 0H, 0H 		//3752 	E0D8
		BRA 	4734H 			//3754 	17EF

		//;voice.c: 450: };voice.c: 451: i = 1;
		LDWI 	1H 			//3756 	4E01
		MOVLB 	0H 			//3758 	4100
		STR 	B3H, 1H 			//375A 	AFB3

		//;voice.c: 453: break;
		RET 	0H 			//375C 	4012

		//;voice.c: 455: if (PC6 == 0)
		BTSS 	82H, 6H, 0H 		//375E 	EC82
		RET 	0H 			//3760 	4012

		//;voice.c: 457: if ((RunData.StandbySta == 0) && (j == 0))
		MOVLB 	1H 			//3762 	4101
		LDR 	2DH, 0H, 1H 		//3764 	912D
		BTSS 	D8H, 2H, 0H 		//3766 	E4D8
		BRA 	378EH 			//3768 	1012
		MOVLB 	0H 			//376A 	4100
		LDR 	B2H, 0H, 1H 		//376C 	91B2
		BTSS 	D8H, 2H, 0H 		//376E 	E4D8
		BRA 	378EH 			//3770 	100E

		//;voice.c: 458: {;voice.c: 459: j = 1;
		LDWI 	1H 			//3772 	4E01
		STR 	B2H, 1H 			//3774 	AFB2

		//;voice.c: 460: VoiceCtr2(intelligent_oxygen_therapy_start);
		LDWI 	0H 			//3776 	4E00
		STR 	12H, 0H 			//3778 	AE12
		LDWI 	3H 			//377A 	4E03
		STR 	11H, 0H 			//377C 	AE11
		LCALL 	5ABAH, 0H 		//377E 	2C5D 302D

		//;voice.c: 461: DelayMs(1);
		LDWI 	0H 			//3782 	4E00
		STR 	CH, 0H 			//3784 	AE0C
		LDWI 	1H 			//3786 	4E01
		STR 	BH, 0H 			//3788 	AE0B
		LCALL 	5B14H, 0H 		//378A 	2C8A 302D

		//;voice.c: 462: };voice.c: 463: if ((RunData.StandbySta == 1) && (j == 1))
		MOVLB 	1H 			//378E 	4101
		DECR 	2DH, 0H, 1H 		//3790 	452D
		BTSS 	D8H, 2H, 0H 		//3792 	E4D8
		RET 	0H 			//3794 	4012
		MOVLB 	0H 			//3796 	4100
		DECR 	B2H, 0H, 1H 		//3798 	45B2
		BTSS 	D8H, 2H, 0H 		//379A 	E4D8
		RET 	0H 			//379C 	4012

		//;voice.c: 464: {;voice.c: 465: j = 0;
		LDWI 	0H 			//379E 	4E00
		STR 	B2H, 1H 			//37A0 	AFB2

		//;voice.c: 466: if (RunData.TimingVoiceFlag == 0)
		MOVLB 	1H 			//37A2 	4101
		LDR 	15H, 0H, 1H 		//37A4 	9115
		BTSS 	D8H, 2H, 0H 		//37A6 	E4D8
		BRA 	37B8H 			//37A8 	1007

		//;voice.c: 467: VoiceCtr2(intelligent_oxygen_therapy_end);
		LDWI 	0H 			//37AA 	4E00
		STR 	12H, 0H 			//37AC 	AE12
		LDWI 	4H 			//37AE 	4E04
		STR 	11H, 0H 			//37B0 	AE11
		LCALL 	5ABAH, 0H 		//37B2 	2C5D 302D
		BRA 	37C4H 			//37B6 	1006

		//;voice.c: 468: else;voice.c: 469: VoiceCtr2(oxygen_therapy_time_up);
		LDWI 	0H 			//37B8 	4E00
		STR 	12H, 0H 			//37BA 	AE12
		LDWI 	1BH 			//37BC 	4E1B
		STR 	11H, 0H 			//37BE 	AE11
		LCALL 	5ABAH, 0H 		//37C0 	2C5D 302D

		//;voice.c: 470: DelayMs(1);
		LDWI 	0H 			//37C4 	4E00
		STR 	CH, 0H 			//37C6 	AE0C
		LDWI 	1H 			//37C8 	4E01
		STR 	BH, 0H 			//37CA 	AE0B
		LCALL 	5B14H, 0H 		//37CC 	2C8A 302D
		RET 	0H 			//37D0 	4012
		MOVLB 	0H 			//37D2 	4100
		LDR 	B3H, 0H, 1H 		//37D4 	91B3
		XORWI 	0H 			//37D6 	4A00
		BTSC 	D8H, 2H, 0H 		//37D8 	F4D8
		BRA 	4680H 			//37DA 	1752
		XORWI 	1H 			//37DC 	4A01
		BTSS 	D8H, 2H, 0H 		//37DE 	E4D8
		RET 	0H 			//37E0 	4012
		BRA 	475EH 			//37E2 	17BD

		//;display.c: 625: if(sum>999) sum = 999;
		LDWI 	E8H 			//37E4 	4EE8
		SUBWR 	16H, 0H, 0H 	//37E6 	9C16
		LDWI 	3H 			//37E8 	4E03
		SUBWRB 	17H, 0H, 0H 	//37EA 	9817
		BTSS 	D8H, 0H, 0H 		//37EC 	E0D8
		BRA 	37F8H 			//37EE 	1004
		LDWI 	3H 			//37F0 	4E03
		STR 	17H, 0H 			//37F2 	AE17
		LDWI 	E7H 			//37F4 	4EE7
		STR 	16H, 0H 			//37F6 	AE16

		//;display.c: 626: SEG12(ch_table[sum%1000/100]);
		LDWI 	3H 			//37F8 	4E03
		STR 	DH, 0H 			//37FA 	AE0D
		LDWI 	E8H 			//37FC 	4EE8
		STR 	CH, 0H 			//37FE 	AE0C
		MOVFF 	16H, AH 		//3800 	0016 300A
		MOVFF 	17H, BH 		//3804 	0017 300B
		LCALL 	5814H, 0H 		//3808 	2C0A 302C
		MOVFF 	AH, FH 		//380C 	000A 300F
		MOVFF 	BH, 10H 		//3810 	000B 3010
		LDWI 	0H 			//3814 	4E00
		STR 	12H, 0H 			//3816 	AE12
		LDWI 	64H 			//3818 	4E64
		STR 	11H, 0H 			//381A 	AE11
		LCALL 	5440H, 0H 		//381C 	2C20 302A
		LDWI 	2BH 			//3820 	4E2B
		ADDWR 	FH, 0H, 0H 		//3822 	640F
		STR 	F6H, 0H 			//3824 	AEF6
		LDWI 	7FH 			//3826 	4E7F
		ADDWRC 	10H, 0H, 0H 	//3828 	6010
		STR 	F7H, 0H 			//382A 	AEF7
		TBLRD*  			//382C 	4008
		LDR 	F5H, 0H, 0H 		//382E 	90F5
		LCALL 	5530H, 0H 		//3830 	2C98 302A

		//;display.c: 627: SEG13(ch_table[sum%100/10]);
		LDWI 	0H 			//3834 	4E00
		STR 	DH, 0H 			//3836 	AE0D
		LDWI 	64H 			//3838 	4E64
		STR 	CH, 0H 			//383A 	AE0C
		MOVFF 	16H, AH 		//383C 	0016 300A
		MOVFF 	17H, BH 		//3840 	0017 300B
		LCALL 	5814H, 0H 		//3844 	2C0A 302C
		MOVFF 	AH, FH 		//3848 	000A 300F
		MOVFF 	BH, 10H 		//384C 	000B 3010
		LDWI 	0H 			//3850 	4E00
		STR 	12H, 0H 			//3852 	AE12
		LDWI 	AH 			//3854 	4E0A
		STR 	11H, 0H 			//3856 	AE11
		LCALL 	5440H, 0H 		//3858 	2C20 302A
		LDWI 	2BH 			//385C 	4E2B
		ADDWR 	FH, 0H, 0H 		//385E 	640F
		STR 	F6H, 0H 			//3860 	AEF6
		LDWI 	7FH 			//3862 	4E7F
		ADDWRC 	10H, 0H, 0H 	//3864 	6010
		STR 	F7H, 0H 			//3866 	AEF7
		TBLRD*  			//3868 	4008
		LDR 	F5H, 0H, 0H 		//386A 	90F5
		LCALL 	4F4AH, 0H 		//386C 	2CA5 3027

		//;display.c: 628: SEG14(ch_table[sum%10]);
		MOVFF 	16H, AH 		//3870 	0016 300A
		MOVFF 	17H, BH 		//3874 	0017 300B
		LDWI 	0H 			//3878 	4E00
		STR 	DH, 0H 			//387A 	AE0D
		LDWI 	AH 			//387C 	4E0A
		STR 	CH, 0H 			//387E 	AE0C
		LCALL 	5814H, 0H 		//3880 	2C0A 302C
		LDWI 	2BH 			//3884 	4E2B
		ADDWR 	AH, 0H, 0H 		//3886 	640A
		STR 	F6H, 0H 			//3888 	AEF6
		LDWI 	7FH 			//388A 	4E7F
		ADDWRC 	BH, 0H, 0H 	//388C 	600B
		STR 	F7H, 0H 			//388E 	AEF7
		TBLRD*  			//3890 	4008
		LDR 	F5H, 0H, 0H 		//3892 	90F5
		LCALL 	54E2H, 0H 		//3894 	2C71 302A

		//;display.c: 630: switch(mode)
		BRA 	3926H 			//3898 	1046

		//;display.c: 633: Label_Concentration(1);
		LDWI 	1H 			//389A 	4E01
		LCALL 	5E9CH, 0H 		//389C 	2C4E 302F

		//;display.c: 634: Label_Percent(1);
		LDWI 	1H 			//38A0 	4E01
		LCALL 	5E88H, 0H 		//38A2 	2C44 302F

		//;display.c: 635: SEG13(ch_table[sum%100/10]|0x80);
		LDWI 	0H 			//38A6 	4E00
		STR 	DH, 0H 			//38A8 	AE0D
		LDWI 	64H 			//38AA 	4E64
		STR 	CH, 0H 			//38AC 	AE0C
		MOVFF 	16H, AH 		//38AE 	0016 300A
		MOVFF 	17H, BH 		//38B2 	0017 300B
		LCALL 	5814H, 0H 		//38B6 	2C0A 302C
		MOVFF 	AH, FH 		//38BA 	000A 300F
		MOVFF 	BH, 10H 		//38BE 	000B 3010
		LDWI 	0H 			//38C2 	4E00
		STR 	12H, 0H 			//38C4 	AE12
		LDWI 	AH 			//38C6 	4E0A
		STR 	11H, 0H 			//38C8 	AE11
		LCALL 	5440H, 0H 		//38CA 	2C20 302A
		LDWI 	2BH 			//38CE 	4E2B
		ADDWR 	FH, 0H, 0H 		//38D0 	640F
		STR 	F6H, 0H 			//38D2 	AEF6
		LDWI 	7FH 			//38D4 	4E7F
		ADDWRC 	10H, 0H, 0H 	//38D6 	6010
		STR 	F7H, 0H 			//38D8 	AEF7
		TBLRD*  			//38DA 	4008
		LDR 	F5H, 0H, 0H 		//38DC 	90F5
		IORWI 	80H 			//38DE 	4980
		LCALL 	4F4AH, 0H 		//38E0 	2CA5 3027

		//;display.c: 636: break;
		RET 	0H 			//38E4 	4012

		//;display.c: 639: SEG12(0x40);
		LDWI 	40H 			//38E6 	4E40
		LCALL 	5530H, 0H 		//38E8 	2C98 302A

		//;display.c: 640: SEG13(0x40|0x80);
		LDWI 	C0H 			//38EC 	4EC0
		LCALL 	4F4AH, 0H 		//38EE 	2CA5 3027

		//;display.c: 641: SEG14(0x40);
		LDWI 	40H 			//38F2 	4E40
		LCALL 	54E2H, 0H 		//38F4 	2C71 302A

		//;display.c: 642: Label_Percent(1);
		LDWI 	1H 			//38F8 	4E01
		LCALL 	5E88H, 0H 		//38FA 	2C44 302F

		//;display.c: 643: Label_Concentration(1);
		LDWI 	1H 			//38FE 	4E01
		LCALL 	5E9CH, 0H 		//3900 	2C4E 302F

		//;display.c: 644: break;
		RET 	0H 			//3904 	4012

		//;display.c: 646: SEG12(0x00);
		LDWI 	0H 			//3906 	4E00
		LCALL 	5530H, 0H 		//3908 	2C98 302A

		//;display.c: 647: SEG13(0x00);
		LDWI 	0H 			//390C 	4E00
		LCALL 	4F4AH, 0H 		//390E 	2CA5 3027

		//;display.c: 648: SEG14(0x00);
		LDWI 	0H 			//3912 	4E00
		LCALL 	54E2H, 0H 		//3914 	2C71 302A

		//;display.c: 649: Label_Percent(0);
		LDWI 	0H 			//3918 	4E00
		LCALL 	5E88H, 0H 		//391A 	2C44 302F

		//;display.c: 650: Label_Concentration(0);
		LDWI 	0H 			//391E 	4E00
		LCALL 	5E9CH, 0H 		//3920 	2C4E 302F

		//;display.c: 651: break;
		RET 	0H 			//3924 	4012
		LDR 	18H, 0H, 0H 		//3926 	9018
		XORWI 	1H 			//3928 	4A01
		BTSC 	D8H, 2H, 0H 		//392A 	F4D8
		BRA 	489AH 			//392C 	17B6
		XORWI 	2H 			//392E 	4A02
		BTSC 	D8H, 2H, 0H 		//3930 	F4D8
		BRA 	48E6H 			//3932 	17D9
		BRA 	4906H 			//3934 	17E8

		//;eeprom.c: 9: u8 dat[50] = {0};
		LFSR 	2H, CA0H 		//3936 	2E20 30CA
		LDWI 	31H 			//393A 	4E31
		CLRR 	DEH, 0H 		//393C 	AADE
		DECR 	E8H, 1H, 0H 		//393E 	46E8
		BC 	3B3CH 			//3940 	22FD

		//;eeprom.c: 10: dat[0] = 0x0A;
		LDWI 	AH 			//3942 	4E0A
		MOVLB 	0H 			//3944 	4100
		STR 	CAH, 1H 			//3946 	AFCA

		//;eeprom.c: 11: dat[1] = (RunData.FlowSet>>8)&0xFF;
		MOVLB 	1H 			//3948 	4101
		LDR 	5H, 0H, 1H 		//394A 	9105
		MOVLB 	0H 			//394C 	4100
		STR 	CBH, 1H 			//394E 	AFCB

		//;eeprom.c: 12: dat[2] = RunData.FlowSet&0xFF;
		MOVFF 	104H, CCH 		//3950 	0104 30CC

		//;eeprom.c: 13: dat[3] = (RunData.CumulativeTime>>24)&0xFF;
		MOVFF 	119H, CDH 		//3954 	0119 30CD

		//;eeprom.c: 14: dat[4] = (RunData.CumulativeTime>>16)&0xFF;
		MOVFF 	118H, CEH 		//3958 	0118 30CE

		//;eeprom.c: 15: dat[5] = (RunData.CumulativeTime>>8)&0xFF;
		MOVFF 	117H, CFH 		//395C 	0117 30CF

		//;eeprom.c: 16: dat[6] = RunData.CumulativeTime&0xFF;
		MOVFF 	116H, D0H 		//3960 	0116 30D0

		//;eeprom.c: 17: dat[7] = (RunData.XF_TimeSet>>8)&0xFF;
		MOVLB 	1H 			//3964 	4101
		LDR 	1DH, 0H, 1H 		//3966 	911D
		MOVLB 	0H 			//3968 	4100
		STR 	D1H, 1H 			//396A 	AFD1

		//;eeprom.c: 18: dat[8] = RunData.XF_TimeSet;
		MOVFF 	11CH, D2H 		//396C 	011C 30D2

		//;eeprom.c: 19: dat[9] = (RunData.JY_TimeSet>>8)&0xFF;
		MOVLB 	1H 			//3970 	4101
		LDR 	1BH, 0H, 1H 		//3972 	911B
		MOVLB 	0H 			//3974 	4100
		STR 	D3H, 1H 			//3976 	AFD3

		//;eeprom.c: 20: dat[10] = RunData.JY_TimeSet&0xFF;
		MOVFF 	11AH, D4H 		//3978 	011A 30D4

		//;eeprom.c: 21: dat[11] = RunData.VoiceEnable;
		MOVFF 	130H, D5H 		//397C 	0130 30D5

		//;eeprom.c: 22: dat[12] = (RunData.FLOW_Trim>>8)&0xFF;
		MOVLB 	1H 			//3980 	4101
		LDR 	27H, 0H, 1H 		//3982 	9127
		MOVLB 	0H 			//3984 	4100
		STR 	D6H, 1H 			//3986 	AFD6

		//;eeprom.c: 23: dat[13] = RunData.FLOW_Trim&0xFF;
		MOVFF 	126H, D7H 		//3988 	0126 30D7

		//;eeprom.c: 24: dat[14] = RunData.Voltage_Calibration;
		MOVFF 	148H, D8H 		//398C 	0148 30D8

		//;eeprom.c: 28: if(RunData.Adjust_Flow_20_value < 0)
		MOVLB 	1H 			//3990 	4101
		BTSS 	4CH, 7H, 1H 		//3992 	EF4C
		BRA 	39BCH 			//3994 	1013

		//;eeprom.c: 29: {;eeprom.c: 30: RunData.negative_Adjust_Flow_20_Flag = 1;
		LDWI 	0H 			//3996 	4E00
		STR 	52H, 1H 			//3998 	AF52
		LDWI 	1H 			//399A 	4E01
		STR 	51H, 1H 			//399C 	AF51

		//;eeprom.c: 31: RunData.Adjust_Flow_20_value = -RunData.Adjust_Flow_20_value;
		LFSR 	2H, 4B1H 		//399E 	2E21 304B
		MOVFF 	FDEH, 43H 		//39A2 	0FDE 3043
		MOVFF 	FDDH, 44H 		//39A6 	0FDD 3044
		COMR 	43H, 1H, 0H 		//39AA 	5E43
		COMR 	44H, 1H, 0H 		//39AC 	5E44
		INRSNZ 	43H, 1H, 0H 	//39AE 	8A43
		INCR 	44H, 1H, 0H 		//39B0 	6A44
		MOVFF 	43H, 14BH 		//39B2 	0043 314B
		MOVFF 	44H, 14CH 		//39B6 	0044 314C

		//;eeprom.c: 32: }
		BRA 	39C4H 			//39BA 	1004

		//;eeprom.c: 33: else RunData.negative_Adjust_Flow_20_Flag = 0;
		LDWI 	0H 			//39BC 	4E00
		STR 	52H, 1H 			//39BE 	AF52
		LDWI 	0H 			//39C0 	4E00
		STR 	51H, 1H 			//39C2 	AF51

		//;eeprom.c: 35: if(RunData.Adjust_Flow_50_value < 0) {
		BTSS 	4EH, 7H, 1H 		//39C4 	EF4E
		BRA 	39EEH 			//39C6 	1013

		//;eeprom.c: 36: RunData.negative_Adjust_Flow_50_Flag = 1;
		LDWI 	0H 			//39C8 	4E00
		STR 	54H, 1H 			//39CA 	AF54
		LDWI 	1H 			//39CC 	4E01
		STR 	53H, 1H 			//39CE 	AF53

		//;eeprom.c: 37: RunData.Adjust_Flow_50_value = -RunData.Adjust_Flow_50_value;
		LFSR 	2H, 4D1H 		//39D0 	2E21 304D
		MOVFF 	FDEH, 43H 		//39D4 	0FDE 3043
		MOVFF 	FDDH, 44H 		//39D8 	0FDD 3044
		COMR 	43H, 1H, 0H 		//39DC 	5E43
		COMR 	44H, 1H, 0H 		//39DE 	5E44
		INRSNZ 	43H, 1H, 0H 	//39E0 	8A43
		INCR 	44H, 1H, 0H 		//39E2 	6A44
		MOVFF 	43H, 14DH 		//39E4 	0043 314D
		MOVFF 	44H, 14EH 		//39E8 	0044 314E

		//;eeprom.c: 38: }
		BRA 	39F6H 			//39EC 	1004

		//;eeprom.c: 39: else RunData.negative_Adjust_Flow_50_Flag = 0;
		LDWI 	0H 			//39EE 	4E00
		STR 	54H, 1H 			//39F0 	AF54
		LDWI 	0H 			//39F2 	4E00
		STR 	53H, 1H 			//39F4 	AF53

		//;eeprom.c: 41: if(RunData.Adjust_Flow_100_value < 0)
		BTSS 	50H, 7H, 1H 		//39F6 	EF50
		BRA 	3A20H 			//39F8 	1013

		//;eeprom.c: 42: {;eeprom.c: 43: RunData.negative_Adjust_Flow_100_Flag = 1;
		LDWI 	0H 			//39FA 	4E00
		STR 	56H, 1H 			//39FC 	AF56
		LDWI 	1H 			//39FE 	4E01
		STR 	55H, 1H 			//3A00 	AF55

		//;eeprom.c: 44: RunData.Adjust_Flow_100_value = -RunData.Adjust_Flow_100_value;
		LFSR 	2H, 4F1H 		//3A02 	2E21 304F
		MOVFF 	FDEH, 43H 		//3A06 	0FDE 3043
		MOVFF 	FDDH, 44H 		//3A0A 	0FDD 3044
		COMR 	43H, 1H, 0H 		//3A0E 	5E43
		COMR 	44H, 1H, 0H 		//3A10 	5E44
		INRSNZ 	43H, 1H, 0H 	//3A12 	8A43
		INCR 	44H, 1H, 0H 		//3A14 	6A44
		MOVFF 	43H, 14FH 		//3A16 	0043 314F
		MOVFF 	44H, 150H 		//3A1A 	0044 3150

		//;eeprom.c: 45: }
		BRA 	3A28H 			//3A1E 	1004

		//;eeprom.c: 46: else RunData.negative_Adjust_Flow_100_Flag = 0;
		LDWI 	0H 			//3A20 	4E00
		STR 	56H, 1H 			//3A22 	AF56
		LDWI 	0H 			//3A24 	4E00
		STR 	55H, 1H 			//3A26 	AF55

		//;eeprom.c: 47: dat[15] = RunData.Adjust_Flow_20_value;
		MOVFF 	14BH, D9H 		//3A28 	014B 30D9

		//;eeprom.c: 48: dat[16] = RunData.Adjust_Flow_50_value;
		MOVFF 	14DH, DAH 		//3A2C 	014D 30DA

		//;eeprom.c: 49: dat[17] = RunData.Adjust_Flow_100_value;
		MOVFF 	14FH, DBH 		//3A30 	014F 30DB

		//;eeprom.c: 51: dat[18] = RunData.negative_Adjust_Flow_20_Flag;
		MOVFF 	151H, DCH 		//3A34 	0151 30DC

		//;eeprom.c: 52: dat[19] = RunData.negative_Adjust_Flow_50_Flag;
		MOVFF 	153H, DDH 		//3A38 	0153 30DD

		//;eeprom.c: 53: dat[20] = RunData.negative_Adjust_Flow_100_Flag;
		MOVFF 	155H, DEH 		//3A3C 	0155 30DE

		//;eeprom.c: 56: dat[21] = (RunData.PD_TimeSet>>8)&0xFF;
		LDR 	1FH, 0H, 1H 		//3A40 	911F
		MOVLB 	0H 			//3A42 	4100
		STR 	DFH, 1H 			//3A44 	AFDF

		//;eeprom.c: 57: dat[22] = RunData.PD_TimeSet;
		MOVFF 	11EH, E0H 		//3A46 	011E 30E0

		//;eeprom.c: 59: for(i=0; i<50; i++)
		LDWI 	0H 			//3A4A 	4E00
		STR 	FCH, 1H 			//3A4C 	AFFC

		//;eeprom.c: 60: {;eeprom.c: 61: EEPROMwrite(0x00 | i, dat[i]);
		LDR 	FCH, 0H, 1H 		//3A4E 	91FC
		ADDWI 	CAH 			//3A50 	4FCA
		STR 	D9H, 0H 			//3A52 	AED9
		CLRR 	DAH, 0H 		//3A54 	AADA
		LDR 	DFH, 0H, 0H 		//3A56 	90DF
		STR 	AH, 0H 			//3A58 	AE0A
		LDR 	FCH, 0H, 1H 		//3A5A 	91FC
		LCALL 	50A6H, 0H 		//3A5C 	2C53 3028
		MOVLB 	0H 			//3A60 	4100
		INCR 	FCH, 1H, 1H 		//3A62 	6BFC
		LDWI 	31H 			//3A64 	4E31
		CPRSGT 	FCH, 1H 		//3A66 	A5FC
		BRA 	4A4EH 			//3A68 	17F2

		//;eeprom.c: 62: };eeprom.c: 63: E2prom_ReadData();
		LCALL 	2EBEH, 0H 		//3A6A 	2C5F 3017
		RET 	0H 			//3A6E 	4012
		LDWI 	0H 			//3A70 	4E00
		MOVLB 	0H 			//3A72 	4100
		STR 	97H, 1H 			//3A74 	AF97
		LDWI 	7FH 			//3A76 	4E7F
		MOVLB 	FH 			//3A78 	410F
		STR 	2EH, 1H 			//3A7A 	AF2E
		NOP  					//3A7C 	3000
		LDWI 	5DH 			//3A7E 	4E5D
		ADDWR 	51H, 0H, 0H 	//3A80 	6451
		STR 	F6H, 0H 			//3A82 	AEF6
		CLRR 	F7H, 0H 		//3A84 	AAF7
		LDWI 	7FH 			//3A86 	4E7F
		ADDWRC 	F7H, 1H, 0H 	//3A88 	62F7
		TBLRD*  			//3A8A 	4008
		MOVFF 	FF5H, 53H 		//3A8C 	0FF5 3053
		LDWI 	8H 			//3A90 	4E08
		CPRSLT 	53H, 0H 		//3A92 	A053
		BRA 	3AB0H 			//3A94 	100D
		MOVFF 	53H, CH 		//3A96 	0053 300C
		LDWI 	1H 			//3A9A 	4E01
		STR 	DH, 0H 			//3A9C 	AE0D
		INCR 	CH, 1H, 0H 		//3A9E 	6A0C
		BRA 	3AA6H 			//3AA0 	1002
		BCR 	D8H, 0H, 0H 		//3AA2 	D0D8
		RLCR 	DH, 1H, 0H 		//3AA4 	760D
		DECRSZ 	CH, 1H, 0H 	//3AA6 	6E0C
		BRA 	4AA2H 			//3AA8 	17FC
		LDR 	DH, 0H, 0H 		//3AAA 	900D
		STR 	76H, 0H 			//3AAC 	AE76
		BRA 	3B84H 			//3AAE 	106A
		LDWI 	7H 			//3AB0 	4E07
		CPRSGT 	53H, 0H 		//3AB2 	A453
		BRA 	3ADAH 			//3AB4 	1012
		LDWI 	10H 			//3AB6 	4E10
		CPRSLT 	53H, 0H 		//3AB8 	A053
		BRA 	3ADAH 			//3ABA 	100F
		MOVFF 	53H, CH 		//3ABC 	0053 300C
		LDWI 	F8H 			//3AC0 	4EF8
		ADDWR 	CH, 1H, 0H 		//3AC2 	660C
		LDWI 	1H 			//3AC4 	4E01
		STR 	DH, 0H 			//3AC6 	AE0D
		INCR 	CH, 1H, 0H 		//3AC8 	6A0C
		BRA 	3AD0H 			//3ACA 	1002
		BCR 	D8H, 0H, 0H 		//3ACC 	D0D8
		RLCR 	DH, 1H, 0H 		//3ACE 	760D
		DECRSZ 	CH, 1H, 0H 	//3AD0 	6E0C
		BRA 	4ACCH 			//3AD2 	17FC
		LDR 	DH, 0H, 0H 		//3AD4 	900D
		STR 	77H, 0H 			//3AD6 	AE77
		BRA 	3B84H 			//3AD8 	1055
		LDWI 	FH 			//3ADA 	4E0F
		CPRSGT 	53H, 0H 		//3ADC 	A453
		BRA 	3B04H 			//3ADE 	1012
		LDWI 	18H 			//3AE0 	4E18
		CPRSLT 	53H, 0H 		//3AE2 	A053
		BRA 	3B04H 			//3AE4 	100F
		MOVFF 	53H, CH 		//3AE6 	0053 300C
		LDWI 	F0H 			//3AEA 	4EF0
		ADDWR 	CH, 1H, 0H 		//3AEC 	660C
		LDWI 	1H 			//3AEE 	4E01
		STR 	DH, 0H 			//3AF0 	AE0D
		INCR 	CH, 1H, 0H 		//3AF2 	6A0C
		BRA 	3AFAH 			//3AF4 	1002
		BCR 	D8H, 0H, 0H 		//3AF6 	D0D8
		RLCR 	DH, 1H, 0H 		//3AF8 	760D
		DECRSZ 	CH, 1H, 0H 	//3AFA 	6E0C
		BRA 	4AF6H 			//3AFC 	17FC
		LDR 	DH, 0H, 0H 		//3AFE 	900D
		STR 	78H, 0H 			//3B00 	AE78
		BRA 	3B84H 			//3B02 	1040
		LDWI 	17H 			//3B04 	4E17
		CPRSGT 	53H, 0H 		//3B06 	A453
		BRA 	3B2EH 			//3B08 	1012
		LDWI 	20H 			//3B0A 	4E20
		CPRSLT 	53H, 0H 		//3B0C 	A053
		BRA 	3B2EH 			//3B0E 	100F
		MOVFF 	53H, CH 		//3B10 	0053 300C
		LDWI 	E8H 			//3B14 	4EE8
		ADDWR 	CH, 1H, 0H 		//3B16 	660C
		LDWI 	1H 			//3B18 	4E01
		STR 	DH, 0H 			//3B1A 	AE0D
		INCR 	CH, 1H, 0H 		//3B1C 	6A0C
		BRA 	3B24H 			//3B1E 	1002
		BCR 	D8H, 0H, 0H 		//3B20 	D0D8
		RLCR 	DH, 1H, 0H 		//3B22 	760D
		DECRSZ 	CH, 1H, 0H 	//3B24 	6E0C
		BRA 	4B20H 			//3B26 	17FC
		LDR 	DH, 0H, 0H 		//3B28 	900D
		STR 	79H, 0H 			//3B2A 	AE79
		BRA 	3B84H 			//3B2C 	102B
		LDWI 	1FH 			//3B2E 	4E1F
		CPRSGT 	53H, 0H 		//3B30 	A453
		BRA 	3B58H 			//3B32 	1012
		LDWI 	28H 			//3B34 	4E28
		CPRSLT 	53H, 0H 		//3B36 	A053
		BRA 	3B58H 			//3B38 	100F
		MOVFF 	53H, CH 		//3B3A 	0053 300C
		LDWI 	E0H 			//3B3E 	4EE0
		ADDWR 	CH, 1H, 0H 		//3B40 	660C
		LDWI 	1H 			//3B42 	4E01
		STR 	DH, 0H 			//3B44 	AE0D
		INCR 	CH, 1H, 0H 		//3B46 	6A0C
		BRA 	3B4EH 			//3B48 	1002
		BCR 	D8H, 0H, 0H 		//3B4A 	D0D8
		RLCR 	DH, 1H, 0H 		//3B4C 	760D
		DECRSZ 	CH, 1H, 0H 	//3B4E 	6E0C
		BRA 	4B4AH 			//3B50 	17FC
		LDR 	DH, 0H, 0H 		//3B52 	900D
		STR 	7AH, 0H 			//3B54 	AE7A
		BRA 	3B84H 			//3B56 	1016
		LDWI 	27H 			//3B58 	4E27
		CPRSGT 	53H, 0H 		//3B5A 	A453
		BRA 	3B82H 			//3B5C 	1012
		LDWI 	2EH 			//3B5E 	4E2E
		CPRSLT 	53H, 0H 		//3B60 	A053
		BRA 	3B82H 			//3B62 	100F
		MOVFF 	53H, CH 		//3B64 	0053 300C
		LDWI 	D8H 			//3B68 	4ED8
		ADDWR 	CH, 1H, 0H 		//3B6A 	660C
		LDWI 	1H 			//3B6C 	4E01
		STR 	DH, 0H 			//3B6E 	AE0D
		INCR 	CH, 1H, 0H 		//3B70 	6A0C
		BRA 	3B78H 			//3B72 	1002
		BCR 	D8H, 0H, 0H 		//3B74 	D0D8
		RLCR 	DH, 1H, 0H 		//3B76 	760D
		DECRSZ 	CH, 1H, 0H 	//3B78 	6E0C
		BRA 	4B74H 			//3B7A 	17FC
		LDR 	DH, 0H, 0H 		//3B7C 	900D
		STR 	7BH, 0H 			//3B7E 	AE7B
		BRA 	3B84H 			//3B80 	1001
		NOP  					//3B82 	3000
		LCALL 	5A8CH, 0H 		//3B84 	2C46 302D
		BCR 	7CH, 0H, 0H 		//3B88 	D07C
		LDWI 	14H 			//3B8A 	4E14
		STR 	7CH, 0H 			//3B8C 	AE7C
		LDWI 	0H 			//3B8E 	4E00
		STR 	7EH, 0H 			//3B90 	AE7E
		LDWI 	0H 			//3B92 	4E00
		STR 	7FH, 0H 			//3B94 	AE7F
		BSR 	7CH, 0H, 0H 		//3B96 	C07C
		BCR 	9EH, 4H, 0H 		//3B98 	D89E
		BSR 	7DH, 0H, 0H 		//3B9A 	C07D
		MOVLB 	EH 			//3B9C 	410E
		BSR 	60H, 1H, 1H 		//3B9E 	C360
		RET 	0H 			//3BA0 	4012

		//;uart2.c: 191: u8 sum;;uart2.c: 192: if(sUsart2.LinkCount > 10000)
		LDWI 	11H 			//3BA2 	4E11
		MOVLB 	2H 			//3BA4 	4102
		SUBWR 	BCH, 0H, 1H 	//3BA6 	9DBC
		LDWI 	27H 			//3BA8 	4E27
		SUBWRB 	BDH, 0H, 1H 	//3BAA 	99BD
		BTSS 	D8H, 0H, 0H 		//3BAC 	E0D8
		BRA 	3BBCH 			//3BAE 	1006

		//;uart2.c: 193: {;uart2.c: 194: sUsart2.LinkSta = 0;
		LDWI 	0H 			//3BB0 	4E00
		STR 	BBH, 1H 			//3BB2 	AFBB

		//;uart2.c: 195: sUsart2.LinkCount = 10000;
		LDWI 	27H 			//3BB4 	4E27
		STR 	BDH, 1H 			//3BB6 	AFBD
		LDWI 	10H 			//3BB8 	4E10
		STR 	BCH, 1H 			//3BBA 	AFBC

		//;uart2.c: 196: };uart2.c: 197: if(sUsart2.RxEnd==0x01)
		DECR 	A1H, 0H, 1H 		//3BBC 	45A1
		BTSS 	D8H, 2H, 0H 		//3BBE 	E4D8
		BRA 	3CA8H 			//3BC0 	1073

		//;uart2.c: 198: {;uart2.c: 199: sUsart2.RxEnd=0;
		LDWI 	0H 			//3BC2 	4E00
		STR 	A1H, 1H 			//3BC4 	AFA1

		//;uart2.c: 200: sum = CheckSum_Calculate2(sUsart2.RxData,sUsart2.RxLength-1);
		LDWI 	88H 			//3BC6 	4E88
		STR 	AH, 0H 			//3BC8 	AE0A
		LDWI 	2H 			//3BCA 	4E02
		STR 	BH, 0H 			//3BCC 	AE0B
		LDWI 	FFH 			//3BCE 	4EFF
		STR 	1AH, 0H 			//3BD0 	AE1A
		LDWI 	FFH 			//3BD2 	4EFF
		STR 	1BH, 0H 			//3BD4 	AE1B
		LFSR 	2H, 9E2H 		//3BD6 	2E22 309E
		MOVFF 	FDEH, 1CH 		//3BDA 	0FDE 301C
		MOVFF 	FDDH, 1DH 		//3BDE 	0FDD 301D
		LDR 	1AH, 0H, 0H 		//3BE2 	901A
		ADDWR 	1CH, 1H, 0H 	//3BE4 	661C
		LDR 	1BH, 0H, 0H 		//3BE6 	901B
		ADDWRC 	1DH, 1H, 0H 	//3BE8 	621D
		MOVFF 	1CH, CH 		//3BEA 	001C 300C
		MOVFF 	1DH, DH 		//3BEE 	001D 300D
		CLRR 	EH, 0H 			//3BF2 	AA0E
		CLRR 	FH, 0H 			//3BF4 	AA0F
		LCALL 	4D6AH, 0H 		//3BF6 	2CB5 3026
		STR 	1EH, 0H 			//3BFA 	AE1E

		//;uart2.c: 202: if((sUsart2.RxData[0] == 0xD5)&&(sUsart2.RxData[sUsart2.RxLength-1] == su
		//+                          m))
		LDWI 	D5H 			//3BFC 	4ED5
		XORWR 	88H, 0H, 1H 	//3BFE 	5988
		BTSS 	D8H, 2H, 0H 		//3C00 	E4D8
		BRA 	3CA8H 			//3C02 	1052
		LDWI 	87H 			//3C04 	4E87
		ADDWR 	9EH, 0H, 1H 	//3C06 	659E
		STR 	D9H, 0H 			//3C08 	AED9
		LDWI 	2H 			//3C0A 	4E02
		ADDWRC 	9FH, 0H, 1H 	//3C0C 	619F
		STR 	DAH, 0H 			//3C0E 	AEDA
		LDR 	1EH, 0H, 0H 		//3C10 	901E
		XORWR 	DEH, 0H, 0H 	//3C12 	58DE
		BTSS 	D8H, 2H, 0H 		//3C14 	E4D8
		BRA 	3CA8H 			//3C16 	1048

		//;uart2.c: 203: {;uart2.c: 204: sUsart2.LinkCount = 0;
		LDWI 	0H 			//3C18 	4E00
		STR 	BDH, 1H 			//3C1A 	AFBD
		LDWI 	0H 			//3C1C 	4E00
		STR 	BCH, 1H 			//3C1E 	AFBC

		//;uart2.c: 205: sUsart2.LinkSta = 1;
		LDWI 	1H 			//3C20 	4E01
		STR 	BBH, 1H 			//3C22 	AFBB

		//;uart2.c: 206: RunData.Concentration = (sUsart2.RxData[3]<<8) | sUsart2.RxData[4];
		LDR 	8CH, 0H, 1H 		//3C24 	918C
		MOVFF 	28BH, 1AH 		//3C26 	028B 301A
		CLRR 	1BH, 0H 		//3C2A 	AA1B
		MOVFF 	1AH, 1BH 		//3C2C 	001A 301B
		CLRR 	1AH, 0H 		//3C30 	AA1A
		IORWR 	1AH, 0H, 0H 	//3C32 	501A
		MOVLB 	1H 			//3C34 	4101
		STR 	EH, 1H 			//3C36 	AF0E
		LDR 	1BH, 0H, 0H 		//3C38 	901B
		STR 	FH, 1H 			//3C3A 	AF0F

		//;uart2.c: 207: RunData.FlowValue = (sUsart2.RxData[5]<<8) | sUsart2.RxData[6];
		MOVLB 	2H 			//3C3C 	4102
		LDR 	8EH, 0H, 1H 		//3C3E 	918E
		MOVFF 	28DH, 1AH 		//3C40 	028D 301A
		CLRR 	1BH, 0H 		//3C44 	AA1B
		MOVFF 	1AH, 1BH 		//3C46 	001A 301B
		CLRR 	1AH, 0H 		//3C4A 	AA1A
		IORWR 	1AH, 0H, 0H 	//3C4C 	501A
		MOVLB 	1H 			//3C4E 	4101
		STR 	AH, 1H 			//3C50 	AF0A
		LDR 	1BH, 0H, 0H 		//3C52 	901B
		STR 	BH, 1H 			//3C54 	AF0B

		//;uart2.c: 208: RunData.TempValue = (sUsart2.RxData[7]<<8) | sUsart2.RxData[8];
		MOVLB 	2H 			//3C56 	4102
		LDR 	90H, 0H, 1H 		//3C58 	9190
		MOVFF 	28FH, 1AH 		//3C5A 	028F 301A
		CLRR 	1BH, 0H 		//3C5E 	AA1B
		MOVFF 	1AH, 1BH 		//3C60 	001A 301B
		CLRR 	1AH, 0H 		//3C64 	AA1A
		IORWR 	1AH, 0H, 0H 	//3C66 	501A
		MOVLB 	1H 			//3C68 	4101
		STR 	CH, 1H 			//3C6A 	AF0C
		LDR 	1BH, 0H, 0H 		//3C6C 	901B
		STR 	DH, 1H 			//3C6E 	AF0D

		//;uart2.c: 209: RunData.DC12_V = (sUsart2.RxData[9]<<8) | sUsart2.RxData[10];
		MOVLB 	2H 			//3C70 	4102
		LDR 	92H, 0H, 1H 		//3C72 	9192
		MOVFF 	291H, 1AH 		//3C74 	0291 301A
		CLRR 	1BH, 0H 		//3C78 	AA1B
		MOVFF 	1AH, 1BH 		//3C7A 	001A 301B
		CLRR 	1AH, 0H 		//3C7E 	AA1A
		IORWR 	1AH, 0H, 0H 	//3C80 	501A
		MOVLB 	1H 			//3C82 	4101
		STR 	6H, 1H 			//3C84 	AF06
		LDR 	1BH, 0H, 0H 		//3C86 	901B
		STR 	7H, 1H 			//3C88 	AF07

		//;uart2.c: 210: RunData.ACDC_V = (sUsart2.RxData[11]<<8) | sUsart2.RxData[12];
		MOVLB 	2H 			//3C8A 	4102
		LDR 	94H, 0H, 1H 		//3C8C 	9194
		MOVFF 	293H, 1AH 		//3C8E 	0293 301A
		CLRR 	1BH, 0H 		//3C92 	AA1B
		MOVFF 	1AH, 1BH 		//3C94 	001A 301B
		CLRR 	1AH, 0H 		//3C98 	AA1A
		IORWR 	1AH, 0H, 0H 	//3C9A 	501A
		MOVLB 	1H 			//3C9C 	4101
		STR 	8H, 1H 			//3C9E 	AF08
		LDR 	1BH, 0H, 0H 		//3CA0 	901B
		STR 	9H, 1H 			//3CA2 	AF09

		//;uart2.c: 211: RunData.PowkeyFlag = sUsart2.RxData[13];
		MOVFF 	295H, 100H 		//3CA4 	0295 3100

		//;uart2.c: 212: };uart2.c: 213: };uart2.c: 214: if(RunData.Concentration <= 210){
		MOVLB 	1H 			//3CA8 	4101
		BTSC 	FH, 7H, 1H 		//3CAA 	FF0F
		BRA 	3CBAH 			//3CAC 	1006
		LDR 	FH, 0H, 1H 		//3CAE 	910F
		BNZ 	3CC2H 			//3CB0 	2108
		LDWI 	D3H 			//3CB2 	4ED3
		SUBWR 	EH, 0H, 1H 		//3CB4 	9D0E
		BTSC 	D8H, 0H, 0H 		//3CB6 	F0D8
		RET 	0H 			//3CB8 	4012

		//;uart2.c: 215: RunData.Concentration = 210;
		LDWI 	0H 			//3CBA 	4E00
		STR 	FH, 1H 			//3CBC 	AF0F
		LDWI 	D2H 			//3CBE 	4ED2
		STR 	EH, 1H 			//3CC0 	AF0E
		RET 	0H 			//3CC2 	4012

		//;display.c: 658: if(enable == 1) return;
		DECR 	19H, 0H, 0H 		//3CC4 	4419
		BTSC 	D8H, 2H, 0H 		//3CC6 	F4D8
		RET 	0H 			//3CC8 	4012

		//;display.c: 659: else{;display.c: 660: if(sum>99) sum = 99;
		LDR 	17H, 0H, 0H 		//3CCA 	9017
		BNZ 	3CD6H 			//3CCC 	2104
		LDWI 	64H 			//3CCE 	4E64
		SUBWR 	16H, 0H, 0H 	//3CD0 	9C16
		BTSS 	D8H, 0H, 0H 		//3CD2 	E0D8
		BRA 	3CDEH 			//3CD4 	1004
		LDWI 	0H 			//3CD6 	4E00
		STR 	17H, 0H 			//3CD8 	AE17
		LDWI 	63H 			//3CDA 	4E63
		STR 	16H, 0H 			//3CDC 	AE16

		//;display.c: 661: SEG10(ch_table[sum%100/10]);
		LDWI 	0H 			//3CDE 	4E00
		STR 	DH, 0H 			//3CE0 	AE0D
		LDWI 	64H 			//3CE2 	4E64
		STR 	CH, 0H 			//3CE4 	AE0C
		MOVFF 	16H, AH 		//3CE6 	0016 300A
		MOVFF 	17H, BH 		//3CEA 	0017 300B
		LCALL 	5814H, 0H 		//3CEE 	2C0A 302C
		MOVFF 	AH, FH 		//3CF2 	000A 300F
		MOVFF 	BH, 10H 		//3CF6 	000B 3010
		LDWI 	0H 			//3CFA 	4E00
		STR 	12H, 0H 			//3CFC 	AE12
		LDWI 	AH 			//3CFE 	4E0A
		STR 	11H, 0H 			//3D00 	AE11
		LCALL 	5440H, 0H 		//3D02 	2C20 302A
		LDWI 	2BH 			//3D06 	4E2B
		ADDWR 	FH, 0H, 0H 		//3D08 	640F
		STR 	F6H, 0H 			//3D0A 	AEF6
		LDWI 	7FH 			//3D0C 	4E7F
		ADDWRC 	10H, 0H, 0H 	//3D0E 	6010
		STR 	F7H, 0H 			//3D10 	AEF7
		TBLRD*  			//3D12 	4008
		LDR 	F5H, 0H, 0H 		//3D14 	90F5
		LCALL 	4FA2H, 0H 		//3D16 	2CD1 3027

		//;display.c: 662: SEG11(ch_table[sum%10]);
		MOVFF 	16H, AH 		//3D1A 	0016 300A
		MOVFF 	17H, BH 		//3D1E 	0017 300B
		LDWI 	0H 			//3D22 	4E00
		STR 	DH, 0H 			//3D24 	AE0D
		LDWI 	AH 			//3D26 	4E0A
		STR 	CH, 0H 			//3D28 	AE0C
		LCALL 	5814H, 0H 		//3D2A 	2C0A 302C
		LDWI 	2BH 			//3D2E 	4E2B
		ADDWR 	AH, 0H, 0H 		//3D30 	640A
		STR 	F6H, 0H 			//3D32 	AEF6
		LDWI 	7FH 			//3D34 	4E7F
		ADDWRC 	BH, 0H, 0H 	//3D36 	600B
		STR 	F7H, 0H 			//3D38 	AEF7
		TBLRD*  			//3D3A 	4008
		LDR 	F5H, 0H, 0H 		//3D3C 	90F5
		LCALL 	557EH, 0H 		//3D3E 	2CBF 302A

		//;display.c: 663: switch(mode)
		BRA 	3DC4H 			//3D42 	1040

		//;display.c: 666: SEG10(ch_table[sum%100/10]|0x80);
		LDWI 	0H 			//3D44 	4E00
		STR 	DH, 0H 			//3D46 	AE0D
		LDWI 	64H 			//3D48 	4E64
		STR 	CH, 0H 			//3D4A 	AE0C
		MOVFF 	16H, AH 		//3D4C 	0016 300A
		MOVFF 	17H, BH 		//3D50 	0017 300B
		LCALL 	5814H, 0H 		//3D54 	2C0A 302C
		MOVFF 	AH, FH 		//3D58 	000A 300F
		MOVFF 	BH, 10H 		//3D5C 	000B 3010
		LDWI 	0H 			//3D60 	4E00
		STR 	12H, 0H 			//3D62 	AE12
		LDWI 	AH 			//3D64 	4E0A
		STR 	11H, 0H 			//3D66 	AE11
		LCALL 	5440H, 0H 		//3D68 	2C20 302A
		LDWI 	2BH 			//3D6C 	4E2B
		ADDWR 	FH, 0H, 0H 		//3D6E 	640F
		STR 	F6H, 0H 			//3D70 	AEF6
		LDWI 	7FH 			//3D72 	4E7F
		ADDWRC 	10H, 0H, 0H 	//3D74 	6010
		STR 	F7H, 0H 			//3D76 	AEF7
		TBLRD*  			//3D78 	4008
		LDR 	F5H, 0H, 0H 		//3D7A 	90F5
		IORWI 	80H 			//3D7C 	4980
		LCALL 	4FA2H, 0H 		//3D7E 	2CD1 3027

		//;display.c: 667: Label_Flow(1);
		LDWI 	1H 			//3D82 	4E01
		LCALL 	5EC4H, 0H 		//3D84 	2C62 302F

		//;display.c: 668: Label_L_min(1);
		LDWI 	1H 			//3D88 	4E01
		LCALL 	5EB0H, 0H 		//3D8A 	2C58 302F

		//;display.c: 669: break;
		RET 	0H 			//3D8E 	4012

		//;display.c: 672: SEG10(0x40|0x80);
		LDWI 	C0H 			//3D90 	4EC0
		LCALL 	4FA2H, 0H 		//3D92 	2CD1 3027

		//;display.c: 673: SEG11(0x40);
		LDWI 	40H 			//3D96 	4E40
		LCALL 	557EH, 0H 		//3D98 	2CBF 302A

		//;display.c: 674: Label_Flow(1);
		LDWI 	1H 			//3D9C 	4E01
		LCALL 	5EC4H, 0H 		//3D9E 	2C62 302F

		//;display.c: 675: Label_L_min(1);
		LDWI 	1H 			//3DA2 	4E01
		LCALL 	5EB0H, 0H 		//3DA4 	2C58 302F

		//;display.c: 676: break;
		RET 	0H 			//3DA8 	4012

		//;display.c: 678: SEG10(0x00);
		LDWI 	0H 			//3DAA 	4E00
		LCALL 	4FA2H, 0H 		//3DAC 	2CD1 3027

		//;display.c: 679: SEG11(0x00);
		LDWI 	0H 			//3DB0 	4E00
		LCALL 	557EH, 0H 		//3DB2 	2CBF 302A

		//;display.c: 680: Label_Flow(0);
		LDWI 	0H 			//3DB6 	4E00
		LCALL 	5EC4H, 0H 		//3DB8 	2C62 302F

		//;display.c: 681: Label_L_min(0);
		LDWI 	0H 			//3DBC 	4E00
		LCALL 	5EB0H, 0H 		//3DBE 	2C58 302F

		//;display.c: 682: break;
		RET 	0H 			//3DC2 	4012
		LDR 	18H, 0H, 0H 		//3DC4 	9018
		XORWI 	1H 			//3DC6 	4A01
		BTSC 	D8H, 2H, 0H 		//3DC8 	F4D8
		BRA 	4D44H 			//3DCA 	17BC
		XORWI 	2H 			//3DCC 	4A02
		BTSC 	D8H, 2H, 0H 		//3DCE 	F4D8
		BRA 	4D90H 			//3DD0 	17DF
		BRA 	4DAAH 			//3DD2 	17EB

		//;touchkey.c: 45: if(Engineering_Pattern.Mode == 1)
		MOVLB 	0H 			//3DD4 	4100
		DECR 	66H, 0H, 1H 		//3DD6 	4566
		BTSC 	D8H, 2H, 0H 		//3DD8 	F4D8
		BRA 	3DFEH 			//3DDA 	1011
		BRA 	3E74H 			//3DDC 	104B
		LDWI 	0H 			//3DDE 	4E00
		STR 	11H, 0H 			//3DE0 	AE11
		LDWI 	CH 			//3DE2 	4E0C
		BRA 	3E70H 			//3DE4 	1045
		LDWI 	0H 			//3DE6 	4E00
		STR 	11H, 0H 			//3DE8 	AE11
		LDWI 	7H 			//3DEA 	4E07
		BRA 	3E70H 			//3DEC 	1041
		LDWI 	0H 			//3DEE 	4E00
		STR 	11H, 0H 			//3DF0 	AE11
		LDWI 	1H 			//3DF2 	4E01
		BRA 	3E70H 			//3DF4 	103D
		LDWI 	0H 			//3DF6 	4E00
		STR 	11H, 0H 			//3DF8 	AE11
		LDWI 	0H 			//3DFA 	4E00
		BRA 	3E70H 			//3DFC 	1039
		MOVFF 	18AH, CH 		//3DFE 	018A 300C
		MOVFF 	18BH, DH 		//3E02 	018B 300D
		MOVFF 	18CH, EH 		//3E06 	018C 300E
		MOVFF 	18DH, FH 		//3E0A 	018D 300F
		LDR 	FH, 0H, 0H 		//3E0E 	900F
		XORWI 	0H 			//3E10 	4A00
		BTSC 	D8H, 2H, 0H 		//3E12 	F4D8
		BRA 	3E48H 			//3E14 	1019
		BRA 	4DF6H 			//3E16 	17EF
		LDR 	DH, 0H, 0H 		//3E18 	900D
		XORWI 	0H 			//3E1A 	4A00
		BTSS 	D8H, 2H, 0H 		//3E1C 	E4D8
		BRA 	4DF6H 			//3E1E 	17EB
		LDR 	CH, 0H, 0H 		//3E20 	900C
		XORWI 	1H 			//3E22 	4A01
		BTSC 	D8H, 2H, 0H 		//3E24 	F4D8
		BRA 	4DDEH 			//3E26 	17DB
		XORWI 	3H 			//3E28 	4A03
		BTSC 	D8H, 2H, 0H 		//3E2A 	F4D8
		BRA 	4DE6H 			//3E2C 	17DC
		XORWI 	1H 			//3E2E 	4A01
		BTSC 	D8H, 2H, 0H 		//3E30 	F4D8
		BRA 	4DDEH 			//3E32 	17D5
		XORWI 	7H 			//3E34 	4A07
		BTSC 	D8H, 2H, 0H 		//3E36 	F4D8
		BRA 	4DDEH 			//3E38 	17D2
		XORWI 	CH 			//3E3A 	4A0C
		BTSC 	D8H, 2H, 0H 		//3E3C 	F4D8
		BRA 	4DEEH 			//3E3E 	17D7
		XORWI 	4H 			//3E40 	4A04
		BTSC 	D8H, 2H, 0H 		//3E42 	F4D8
		BRA 	4DDEH 			//3E44 	17CC
		BRA 	4DF6H 			//3E46 	17D7
		LDR 	EH, 0H, 0H 		//3E48 	900E
		XORWI 	0H 			//3E4A 	4A00
		BTSC 	D8H, 2H, 0H 		//3E4C 	F4D8
		BRA 	4E18H 			//3E4E 	17E4
		BRA 	4DF6H 			//3E50 	17D2
		LDWI 	0H 			//3E52 	4E00
		STR 	11H, 0H 			//3E54 	AE11
		LDWI 	2H 			//3E56 	4E02
		BRA 	3E70H 			//3E58 	100B
		LDWI 	0H 			//3E5A 	4E00
		STR 	11H, 0H 			//3E5C 	AE11
		LDWI 	6H 			//3E5E 	4E06
		BRA 	3E70H 			//3E60 	1007
		LDWI 	0H 			//3E62 	4E00
		STR 	11H, 0H 			//3E64 	AE11
		LDWI 	AH 			//3E66 	4E0A
		BRA 	3E70H 			//3E68 	1003
		LDWI 	0H 			//3E6A 	4E00
		STR 	11H, 0H 			//3E6C 	AE11
		LDWI 	BH 			//3E6E 	4E0B
		STR 	10H, 0H 			//3E70 	AE10
		BRA 	3EC8H 			//3E72 	102A
		MOVFF 	18AH, CH 		//3E74 	018A 300C
		MOVFF 	18BH, DH 		//3E78 	018B 300D
		MOVFF 	18CH, EH 		//3E7C 	018C 300E
		MOVFF 	18DH, FH 		//3E80 	018D 300F
		LDR 	FH, 0H, 0H 		//3E84 	900F
		XORWI 	0H 			//3E86 	4A00
		BTSC 	D8H, 2H, 0H 		//3E88 	F4D8
		BRA 	3EBEH 			//3E8A 	1019
		BRA 	4DF6H 			//3E8C 	17B4
		LDR 	DH, 0H, 0H 		//3E8E 	900D
		XORWI 	0H 			//3E90 	4A00
		BTSS 	D8H, 2H, 0H 		//3E92 	E4D8
		BRA 	4DF6H 			//3E94 	17B0
		LDR 	CH, 0H, 0H 		//3E96 	900C
		XORWI 	1H 			//3E98 	4A01
		BTSC 	D8H, 2H, 0H 		//3E9A 	F4D8
		BRA 	4DEEH 			//3E9C 	17A8
		XORWI 	3H 			//3E9E 	4A03
		BTSC 	D8H, 2H, 0H 		//3EA0 	F4D8
		BRA 	4E52H 			//3EA2 	17D7
		XORWI 	1H 			//3EA4 	4A01
		BTSC 	D8H, 2H, 0H 		//3EA6 	F4D8
		BRA 	4E6AH 			//3EA8 	17E0
		XORWI 	7H 			//3EAA 	4A07
		BTSC 	D8H, 2H, 0H 		//3EAC 	F4D8
		BRA 	4DE6H 			//3EAE 	179B
		XORWI 	CH 			//3EB0 	4A0C
		BTSC 	D8H, 2H, 0H 		//3EB2 	F4D8
		BRA 	4E5AH 			//3EB4 	17D2
		XORWI 	4H 			//3EB6 	4A04
		BTSC 	D8H, 2H, 0H 		//3EB8 	F4D8
		BRA 	4E62H 			//3EBA 	17D3
		BRA 	4DF6H 			//3EBC 	179C
		LDR 	EH, 0H, 0H 		//3EBE 	900E
		XORWI 	0H 			//3EC0 	4A00
		BTSC 	D8H, 2H, 0H 		//3EC2 	F4D8
		BRA 	4E8EH 			//3EC4 	17E4
		BRA 	4DF6H 			//3EC6 	1797

		//;touchkey.c: 70: };touchkey.c: 71: return ret;
		MOVFF 	10H, AH 		//3EC8 	0010 300A
		MOVFF 	11H, BH 		//3ECC 	0011 300B
		RET 	0H 			//3ED0 	4012

		//;irkey.c: 239: if ((KeyDat.key_short_value == 0x07))
		LDWI 	7H 			//3ED2 	4E07
		MOVLB 	0H 			//3ED4 	4100
		XORWR 	6FH, 0H, 1H 	//3ED6 	596F
		IORWR 	70H, 0H, 1H 	//3ED8 	5170
		BTSS 	D8H, 2H, 0H 		//3EDA 	E4D8
		BRA 	3F1EH 			//3EDC 	1020

		//;irkey.c: 240: {;irkey.c: 241: if (RunData.SysSta == 0xE2 || RunData.SysSta == 0xE3 || R
		//+                          unData.SysSta == 0xE5)
		LDWI 	E2H 			//3EDE 	4EE2
		MOVLB 	1H 			//3EE0 	4101
		XORWR 	2H, 0H, 1H 		//3EE2 	5902
		BTSC 	D8H, 2H, 0H 		//3EE4 	F4D8
		BRA 	3EF8H 			//3EE6 	1008
		LDWI 	E3H 			//3EE8 	4EE3
		XORWR 	2H, 0H, 1H 		//3EEA 	5902
		BTSC 	D8H, 2H, 0H 		//3EEC 	F4D8
		BRA 	3EF8H 			//3EEE 	1004
		LDWI 	E5H 			//3EF0 	4EE5
		XORWR 	2H, 0H, 1H 		//3EF2 	5902
		BTSS 	D8H, 2H, 0H 		//3EF4 	E4D8
		BRA 	3F1EH 			//3EF6 	1013

		//;irkey.c: 242: {;irkey.c: 243: RunData.AlarmSwitch = !RunData.AlarmSwitch;
		LDR 	3BH, 0H, 1H 		//3EF8 	913B
		IORWR 	3CH, 0H, 1H 	//3EFA 	513C
		BTSS 	D8H, 2H, 0H 		//3EFC 	E4D8
		BRA 	3F04H 			//3EFE 	1002
		LDWI 	1H 			//3F00 	4E01
		BRA 	3F06H 			//3F02 	1001
		LDWI 	0H 			//3F04 	4E00
		STR 	3BH, 1H 			//3F06 	AF3B
		CLRR 	3CH, 1H 		//3F08 	AB3C

		//;irkey.c: 244: if(!RunData.AlarmSwitch)
		LDR 	3BH, 0H, 1H 		//3F0A 	913B
		IORWR 	3CH, 0H, 1H 	//3F0C 	513C
		BTSS 	D8H, 2H, 0H 		//3F0E 	E4D8
		BRA 	3F1EH 			//3F10 	1006

		//;irkey.c: 245: {;irkey.c: 246: VoiceCtr2(low1_priority_alarm);
		LDWI 	0H 			//3F12 	4E00
		STR 	12H, 0H 			//3F14 	AE12
		LDWI 	37H 			//3F16 	4E37
		STR 	11H, 0H 			//3F18 	AE11
		LCALL 	5ABAH, 0H 		//3F1A 	2C5D 302D

		//;irkey.c: 247: };irkey.c: 248: };irkey.c: 249: };irkey.c: 250: if ((KeyDat.key_short_val
		//+                          ue == 0x08) || (KeyDat.key_long_value == 0x08))
		LDWI 	8H 			//3F1E 	4E08
		MOVLB 	0H 			//3F20 	4100
		XORWR 	6FH, 0H, 1H 	//3F22 	596F
		IORWR 	70H, 0H, 1H 	//3F24 	5170
		BTSC 	D8H, 2H, 0H 		//3F26 	F4D8
		BRA 	3F34H 			//3F28 	1005
		LDWI 	8H 			//3F2A 	4E08
		XORWR 	6DH, 0H, 1H 	//3F2C 	596D
		IORWR 	6EH, 0H, 1H 	//3F2E 	516E
		BTSS 	D8H, 2H, 0H 		//3F30 	E4D8
		BRA 	3F44H 			//3F32 	1008

		//;irkey.c: 251: {;irkey.c: 252: RunData.SOSFlag = !RunData.SOSFlag;
		MOVLB 	1H 			//3F34 	4101
		LDR 	1H, 0H, 1H 		//3F36 	9101
		BTSS 	D8H, 2H, 0H 		//3F38 	E4D8
		BRA 	3F40H 			//3F3A 	1002
		LDWI 	1H 			//3F3C 	4E01
		BRA 	3F42H 			//3F3E 	1001
		LDWI 	0H 			//3F40 	4E00
		STR 	1H, 1H 			//3F42 	AF01

		//;irkey.c: 253: };irkey.c: 254: if ((KeyDat.key_val_x == 0x0B) && (IRData.Value == 0x847B
		//+                          ABE6))
		LDWI 	BH 			//3F44 	4E0B
		MOVLB 	0H 			//3F46 	4100
		XORWR 	73H, 0H, 1H 	//3F48 	5973
		IORWR 	74H, 0H, 1H 	//3F4A 	5174
		BTSS 	D8H, 2H, 0H 		//3F4C 	E4D8
		BRA 	3F7CH 			//3F4E 	1016
		LDWI 	E6H 			//3F50 	4EE6
		MOVLB 	1H 			//3F52 	4101
		XORWR 	5FH, 0H, 1H 	//3F54 	595F
		BNZ 	3F7CH 			//3F56 	2112
		LDWI 	ABH 			//3F58 	4EAB
		XORWR 	60H, 0H, 1H 	//3F5A 	5960
		BNZ 	3F7CH 			//3F5C 	210F
		LDWI 	7BH 			//3F5E 	4E7B
		XORWR 	61H, 0H, 1H 	//3F60 	5961
		BNZ 	3F7CH 			//3F62 	210C
		LDWI 	84H 			//3F64 	4E84
		XORWR 	62H, 0H, 1H 	//3F66 	5962
		BTSS 	D8H, 2H, 0H 		//3F68 	E4D8
		BRA 	3F7CH 			//3F6A 	1008

		//;irkey.c: 255: RunData.CumulativeTime = 0;
		LDWI 	0H 			//3F6C 	4E00
		STR 	16H, 1H 			//3F6E 	AF16
		LDWI 	0H 			//3F70 	4E00
		STR 	17H, 1H 			//3F72 	AF17
		LDWI 	0H 			//3F74 	4E00
		STR 	18H, 1H 			//3F76 	AF18
		LDWI 	0H 			//3F78 	4E00
		STR 	19H, 1H 			//3F7A 	AF19

		//;irkey.c: 256: if ((KeyDat.key_val_x == 0x0A) && (IRData.Value == 0x847BABE6))
		LDWI 	AH 			//3F7C 	4E0A
		MOVLB 	0H 			//3F7E 	4100
		XORWR 	73H, 0H, 1H 	//3F80 	5973
		IORWR 	74H, 0H, 1H 	//3F82 	5174
		BTSS 	D8H, 2H, 0H 		//3F84 	E4D8
		BRA 	3FBEH 			//3F86 	101B
		LDWI 	E6H 			//3F88 	4EE6
		MOVLB 	1H 			//3F8A 	4101
		XORWR 	5FH, 0H, 1H 	//3F8C 	595F
		BNZ 	3FBEH 			//3F8E 	2117
		LDWI 	ABH 			//3F90 	4EAB
		XORWR 	60H, 0H, 1H 	//3F92 	5960
		BNZ 	3FBEH 			//3F94 	2114
		LDWI 	7BH 			//3F96 	4E7B
		XORWR 	61H, 0H, 1H 	//3F98 	5961
		BNZ 	3FBEH 			//3F9A 	2111
		LDWI 	84H 			//3F9C 	4E84
		XORWR 	62H, 0H, 1H 	//3F9E 	5962
		BTSS 	D8H, 2H, 0H 		//3FA0 	E4D8
		BRA 	3FBEH 			//3FA2 	100D

		//;irkey.c: 257: {;irkey.c: 258: RunData.SETCount++;
		INRSNZ 	39H, 1H, 1H 	//3FA4 	8B39
		INCR 	3AH, 1H, 1H 		//3FA6 	6B3A

		//;irkey.c: 259: if (RunData.SETCount > 5000)
		LDWI 	89H 			//3FA8 	4E89
		SUBWR 	39H, 0H, 1H 	//3FAA 	9D39
		LDWI 	13H 			//3FAC 	4E13
		SUBWRB 	3AH, 0H, 1H 	//3FAE 	993A
		BTSS 	D8H, 0H, 0H 		//3FB0 	E0D8
		RET 	0H 			//3FB2 	4012

		//;irkey.c: 260: {;irkey.c: 261: RunData.SETCount = 5000;
		LDWI 	13H 			//3FB4 	4E13
		STR 	3AH, 1H 			//3FB6 	AF3A
		LDWI 	88H 			//3FB8 	4E88
		STR 	39H, 1H 			//3FBA 	AF39
		RET 	0H 			//3FBC 	4012

		//;irkey.c: 264: else;irkey.c: 265: {;irkey.c: 266: RunData.SETCount = 0;
		LDWI 	0H 			//3FBE 	4E00
		MOVLB 	1H 			//3FC0 	4101
		STR 	3AH, 1H 			//3FC2 	AF3A
		LDWI 	0H 			//3FC4 	4E00
		STR 	39H, 1H 			//3FC6 	AF39
		RET 	0H 			//3FC8 	4012

		//;control.c: 639: static int i = 0;;control.c: 641: if (KeyDat.key_short_value == 0x01)
		MOVLB 	0H 			//3FCA 	4100
		DECR 	6FH, 0H, 1H 		//3FCC 	456F
		IORWR 	70H, 0H, 1H 	//3FCE 	5170
		BTSS 	D8H, 2H, 0H 		//3FD0 	E4D8
		BRA 	3FE4H 			//3FD2 	1008

		//;control.c: 642: {;control.c: 643: RunData.StandbySta = !RunData.StandbySta;
		MOVLB 	1H 			//3FD4 	4101
		LDR 	2DH, 0H, 1H 		//3FD6 	912D
		BTSS 	D8H, 2H, 0H 		//3FD8 	E4D8
		BRA 	3FE0H 			//3FDA 	1002
		LDWI 	1H 			//3FDC 	4E01
		BRA 	3FE2H 			//3FDE 	1001
		LDWI 	0H 			//3FE0 	4E00
		STR 	2DH, 1H 			//3FE2 	AF2D

		//;control.c: 644: };control.c: 646: if ((RunData.Timing == 0) && (RunData.TimingFlag == 1
		//+                          ))
		MOVLB 	1H 			//3FE4 	4101
		LDR 	12H, 0H, 1H 		//3FE6 	9112
		IORWR 	13H, 0H, 1H 	//3FE8 	5113
		BTSS 	D8H, 2H, 0H 		//3FEA 	E4D8
		BRA 	3FFCH 			//3FEC 	1007
		DECR 	14H, 0H, 1H 		//3FEE 	4514
		BTSS 	D8H, 2H, 0H 		//3FF0 	E4D8
		BRA 	3FFCH 			//3FF2 	1004

		//;control.c: 647: {;control.c: 648: RunData.TimingVoiceFlag = 1;
		LDWI 	1H 			//3FF4 	4E01
		STR 	15H, 1H 			//3FF6 	AF15

		//;control.c: 649: RunData.StandbySta = 1;
		LDWI 	1H 			//3FF8 	4E01
		STR 	2DH, 1H 			//3FFA 	AF2D

		//;control.c: 650: };control.c: 651: if (RunData.StandbySta == 0)
		LDR 	2DH, 0H, 1H 		//3FFC 	912D
		BTSS 	D8H, 2H, 0H 		//3FFE 	E4D8
		BRA 	400EH 			//4000 	1006

		//;control.c: 652: {;control.c: 653: RunData.TimingVoiceFlag = 0;
		LDWI 	0H 			//4002 	4E00
		STR 	15H, 1H 			//4004 	AF15

		//;control.c: 654: LATDbits.LATD7 = 0;
		BCR 	8CH, 7H, 0H 		//4006 	DE8C

		//;control.c: 655: TimingClosureSet();
		LCALL 	157CH, 0H 		//4008 	2CBE 300A

		//;control.c: 656: }
		BRA 	404AH 			//400C 	101E

		//;control.c: 657: else;control.c: 658: {;control.c: 659: E2prom_ReadData();
		LCALL 	2EBEH, 0H 		//400E 	2C5F 3017

		//;control.c: 660: initialize(&Error_Code_Stack);
		LDWI 	BEH 			//4012 	4EBE
		STR 	AH, 0H 			//4014 	AE0A
		LDWI 	2H 			//4016 	4E02
		STR 	BH, 0H 			//4018 	AE0B
		LCALL 	5E48H, 0H 		//401A 	2C24 302F

		//;control.c: 661: LATDbits.LATD7 = 0;
		BCR 	8CH, 7H, 0H 		//401E 	DE8C

		//;control.c: 662: RunData.TimingFlag = 0;
		LDWI 	0H 			//4020 	4E00
		MOVLB 	1H 			//4022 	4101
		STR 	14H, 1H 			//4024 	AF14

		//;control.c: 663: RunData.Timing = 0;
		LDWI 	0H 			//4026 	4E00
		STR 	13H, 1H 			//4028 	AF13
		LDWI 	0H 			//402A 	4E00
		STR 	12H, 1H 			//402C 	AF12

		//;control.c: 664: RunData.RunTime = 0;
		LDWI 	0H 			//402E 	4E00
		STR 	11H, 1H 			//4030 	AF11
		LDWI 	0H 			//4032 	4E00
		STR 	10H, 1H 			//4034 	AF10

		//;control.c: 665: RunData.sec = 0;
		LDWI 	0H 			//4036 	4E00
		STR 	40H, 1H 			//4038 	AF40
		LDWI 	0H 			//403A 	4E00
		STR 	3FH, 1H 			//403C 	AF3F

		//;control.c: 666: RunData.SOSFlag = 0;
		LDWI 	0H 			//403E 	4E00
		STR 	1H, 1H 			//4040 	AF01

		//;control.c: 667: RunData.SysSta = 0xFF;
		SETR 	2H, 1H 			//4042 	A902

		//;control.c: 668: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//4044 	4E00
		MOVLB 	0H 			//4046 	4100
		STR 	66H, 1H 			//4048 	AF66

		//;control.c: 669: };control.c: 671: VoiceDrive();
		LCALL 	F42H, 0H 		//404A 	2CA1 3007

		//;control.c: 673: static int j = 0;;control.c: 674: if(j == 0)
		MOVLB 	1H 			//404E 	4101
		LDR 	B0H, 0H, 1H 		//4050 	91B0
		IORWR 	B1H, 0H, 1H 	//4052 	51B1
		BTSS 	D8H, 2H, 0H 		//4054 	E4D8
		BRA 	406AH 			//4056 	1009

		//;control.c: 675: {;control.c: 676: j = 1;
		LDWI 	0H 			//4058 	4E00
		STR 	B1H, 1H 			//405A 	AFB1
		LDWI 	1H 			//405C 	4E01
		STR 	B0H, 1H 			//405E 	AFB0

		//;control.c: 677: Display();
		LCALL 	BF4H, 0H 		//4060 	2CFA 3005

		//;control.c: 678: Update_Display();
		LCALL 	5F74H, 0H 		//4064 	2CBA 302F
		RET 	0H 			//4068 	4012

		//;control.c: 680: };control.c: 683: ErrorCtr();
		LCALL 	126AH, 0H 		//406A 	2C35 3009

		//;control.c: 684: if(i >= 100)
		MOVLB 	1H 			//406E 	4101
		BTSC 	B3H, 7H, 1H 		//4070 	FFB3
		BRA 	4092H 			//4072 	100F
		LDR 	B3H, 0H, 1H 		//4074 	91B3
		BNZ 	4080H 			//4076 	2104
		LDWI 	64H 			//4078 	4E64
		SUBWR 	B2H, 0H, 1H 	//407A 	9DB2
		BTSS 	D8H, 0H, 0H 		//407C 	E0D8
		BRA 	4092H 			//407E 	1009

		//;control.c: 685: {;control.c: 686: Display();
		LCALL 	BF4H, 0H 		//4080 	2CFA 3005

		//;control.c: 687: Update_Display();
		LCALL 	5F74H, 0H 		//4084 	2CBA 302F

		//;control.c: 688: i = 0;
		LDWI 	0H 			//4088 	4E00
		MOVLB 	1H 			//408A 	4101
		STR 	B3H, 1H 			//408C 	AFB3
		LDWI 	0H 			//408E 	4E00
		STR 	B2H, 1H 			//4090 	AFB2

		//;control.c: 689: };control.c: 690: i++;
		INRSNZ 	B2H, 1H, 1H 	//4092 	8BB2
		INCR 	B3H, 1H, 1H 		//4094 	6BB3
		RET 	0H 			//4096 	4012

		//;irkey.c: 280: u16 ret = 0;
		LDWI 	0H 			//4098 	4E00
		STR 	45H, 0H 			//409A 	AE45
		LDWI 	0H 			//409C 	4E00
		STR 	44H, 0H 			//409E 	AE44

		//;irkey.c: 281: if (IRData.Sta)
		MOVLB 	1H 			//40A0 	4101
		LDR 	6BH, 0H, 1H 		//40A2 	916B
		BTSC 	D8H, 2H, 0H 		//40A4 	F4D8
		BRA 	4148H 			//40A6 	1050

		//;irkey.c: 282: {;irkey.c: 283: char IRData_HexString[20];;irkey.c: 284: sprintf(IRData_H
		//+                          exString, "%X", IRData.Value);
		LDWI 	30H 			//40A8 	4E30
		STR 	22H, 0H 			//40AA 	AE22
		LDWI 	FCH 			//40AC 	4EFC
		STR 	23H, 0H 			//40AE 	AE23
		LDWI 	7FH 			//40B0 	4E7F
		STR 	24H, 0H 			//40B2 	AE24
		MOVFF 	15FH, 25H 		//40B4 	015F 3025
		MOVFF 	160H, 26H 		//40B8 	0160 3026
		MOVFF 	161H, 27H 		//40BC 	0161 3027
		MOVFF 	162H, 28H 		//40C0 	0162 3028
		LCALL 	5A24H, 0H 		//40C4 	2C12 302D

		//;irkey.c: 286: if (strcmp(IRData_HexString, "A05F") == 0)
		LDWI 	30H 			//40C8 	4E30
		STR 	AH, 0H 			//40CA 	AE0A
		LDWI 	E9H 			//40CC 	4EE9
		STR 	BH, 0H 			//40CE 	AE0B
		LDWI 	7FH 			//40D0 	4E7F
		STR 	CH, 0H 			//40D2 	AE0C
		LCALL 	57D0H, 0H 		//40D4 	2CE8 302B
		LDR 	AH, 0H, 0H 		//40D8 	900A
		IORWR 	BH, 0H, 0H 		//40DA 	500B
		BTSS 	D8H, 2H, 0H 		//40DC 	E4D8
		BRA 	40E8H 			//40DE 	1004

		//;irkey.c: 287: {;irkey.c: 288: ret = 1;
		LDWI 	0H 			//40E0 	4E00
		STR 	45H, 0H 			//40E2 	AE45
		LDWI 	1H 			//40E4 	4E01
		STR 	44H, 0H 			//40E6 	AE44

		//;irkey.c: 289: };irkey.c: 290: if (strcmp(IRData_HexString, "B04F") == 0)
		LDWI 	30H 			//40E8 	4E30
		STR 	AH, 0H 			//40EA 	AE0A
		LDWI 	E4H 			//40EC 	4EE4
		STR 	BH, 0H 			//40EE 	AE0B
		LDWI 	7FH 			//40F0 	4E7F
		STR 	CH, 0H 			//40F2 	AE0C
		LCALL 	57D0H, 0H 		//40F4 	2CE8 302B
		LDR 	AH, 0H, 0H 		//40F8 	900A
		IORWR 	BH, 0H, 0H 		//40FA 	500B
		BTSS 	D8H, 2H, 0H 		//40FC 	E4D8
		BRA 	4108H 			//40FE 	1004

		//;irkey.c: 291: {;irkey.c: 292: ret = 2;
		LDWI 	0H 			//4100 	4E00
		STR 	45H, 0H 			//4102 	AE45
		LDWI 	2H 			//4104 	4E02
		STR 	44H, 0H 			//4106 	AE44

		//;irkey.c: 293: };irkey.c: 295: if (strcmp(IRData_HexString, "10EF") == 0)
		LDWI 	30H 			//4108 	4E30
		STR 	AH, 0H 			//410A 	AE0A
		LDWI 	F3H 			//410C 	4EF3
		STR 	BH, 0H 			//410E 	AE0B
		LDWI 	7FH 			//4110 	4E7F
		STR 	CH, 0H 			//4112 	AE0C
		LCALL 	57D0H, 0H 		//4114 	2CE8 302B
		LDR 	AH, 0H, 0H 		//4118 	900A
		IORWR 	BH, 0H, 0H 		//411A 	500B
		BTSS 	D8H, 2H, 0H 		//411C 	E4D8
		BRA 	4128H 			//411E 	1004

		//;irkey.c: 296: {;irkey.c: 297: ret = 3;
		LDWI 	0H 			//4120 	4E00
		STR 	45H, 0H 			//4122 	AE45
		LDWI 	3H 			//4124 	4E03
		STR 	44H, 0H 			//4126 	AE44

		//;irkey.c: 298: };irkey.c: 300: if (strcmp(IRData_HexString, "50AF") == 0)
		LDWI 	30H 			//4128 	4E30
		STR 	AH, 0H 			//412A 	AE0A
		LDWI 	EEH 			//412C 	4EEE
		STR 	BH, 0H 			//412E 	AE0B
		LDWI 	7FH 			//4130 	4E7F
		STR 	CH, 0H 			//4132 	AE0C
		LCALL 	57D0H, 0H 		//4134 	2CE8 302B
		LDR 	AH, 0H, 0H 		//4138 	900A
		IORWR 	BH, 0H, 0H 		//413A 	500B
		BTSS 	D8H, 2H, 0H 		//413C 	E4D8
		BRA 	415CH 			//413E 	100E

		//;irkey.c: 301: {;irkey.c: 302: ret = 4;
		LDWI 	0H 			//4140 	4E00
		STR 	45H, 0H 			//4142 	AE45
		LDWI 	4H 			//4144 	4E04
		BRA 	415AH 			//4146 	1009

		//;irkey.c: 305: else;irkey.c: 306: {;irkey.c: 307: IRData.RmtCnt = 0;
		LDWI 	0H 			//4148 	4E00
		STR 	72H, 1H 			//414A 	AF72
		LDWI 	0H 			//414C 	4E00
		STR 	71H, 1H 			//414E 	AF71

		//;irkey.c: 309: IRData.get_w = 0;
		LDWI 	0H 			//4150 	4E00
		STR 	6CH, 1H 			//4152 	AF6C

		//;irkey.c: 311: ret = 0;
		LDWI 	0H 			//4154 	4E00
		STR 	45H, 0H 			//4156 	AE45
		LDWI 	0H 			//4158 	4E00
		STR 	44H, 0H 			//415A 	AE44

		//;irkey.c: 312: };irkey.c: 313: return ret;
		MOVFF 	44H, 2EH 		//415C 	0044 302E
		MOVFF 	45H, 2FH 		//4160 	0045 302F
		RET 	0H 			//4164 	4012
		LDWI 	0H 			//4166 	4E00
		STR 	13H, 0H 			//4168 	AE13
		BTSS 	11H, 7H, 0H 		//416A 	EE11
		BRA 	4182H 			//416C 	100A
		COMR 	11H, 1H, 0H 		//416E 	5E11
		COMR 	10H, 1H, 0H 		//4170 	5E10
		COMR 	FH, 1H, 0H 		//4172 	5E0F
		NEGR 	EH, 0H 			//4174 	AC0E
		LDWI 	0H 			//4176 	4E00
		ADDWRC 	FH, 1H, 0H 	//4178 	620F
		ADDWRC 	10H, 1H, 0H 	//417A 	6210
		ADDWRC 	11H, 1H, 0H 	//417C 	6211
		LDWI 	1H 			//417E 	4E01
		STR 	13H, 0H 			//4180 	AE13
		BTSS 	DH, 7H, 0H 		//4182 	EE0D
		BRA 	419AH 			//4184 	100A
		COMR 	DH, 1H, 0H 		//4186 	5E0D
		COMR 	CH, 1H, 0H 		//4188 	5E0C
		COMR 	BH, 1H, 0H 		//418A 	5E0B
		NEGR 	AH, 0H 			//418C 	AC0A
		LDWI 	0H 			//418E 	4E00
		ADDWRC 	BH, 1H, 0H 	//4190 	620B
		ADDWRC 	CH, 1H, 0H 	//4192 	620C
		ADDWRC 	DH, 1H, 0H 	//4194 	620D
		LDWI 	1H 			//4196 	4E01
		XORWR 	13H, 1H, 0H 	//4198 	5A13
		LDWI 	0H 			//419A 	4E00
		STR 	14H, 0H 			//419C 	AE14
		LDWI 	0H 			//419E 	4E00
		STR 	15H, 0H 			//41A0 	AE15
		LDWI 	0H 			//41A2 	4E00
		STR 	16H, 0H 			//41A4 	AE16
		LDWI 	0H 			//41A6 	4E00
		STR 	17H, 0H 			//41A8 	AE17
		LDR 	EH, 0H, 0H 		//41AA 	900E
		IORWR 	FH, 0H, 0H 		//41AC 	500F
		IORWR 	10H, 0H, 0H 	//41AE 	5010
		IORWR 	11H, 0H, 0H 	//41B0 	5011
		BTSC 	D8H, 2H, 0H 		//41B2 	F4D8
		BRA 	420AH 			//41B4 	102A
		LDWI 	1H 			//41B6 	4E01
		STR 	12H, 0H 			//41B8 	AE12
		BRA 	41C8H 			//41BA 	1006
		BCR 	D8H, 0H, 0H 		//41BC 	D0D8
		RLCR 	EH, 1H, 0H 		//41BE 	760E
		RLCR 	FH, 1H, 0H 		//41C0 	760F
		RLCR 	10H, 1H, 0H 		//41C2 	7610
		RLCR 	11H, 1H, 0H 		//41C4 	7611
		INCR 	12H, 1H, 0H 		//41C6 	6A12
		BTSS 	11H, 7H, 0H 		//41C8 	EE11
		BRA 	51BCH 			//41CA 	17F8
		BCR 	D8H, 0H, 0H 		//41CC 	D0D8
		RLCR 	14H, 1H, 0H 		//41CE 	7614
		RLCR 	15H, 1H, 0H 		//41D0 	7615
		RLCR 	16H, 1H, 0H 		//41D2 	7616
		RLCR 	17H, 1H, 0H 		//41D4 	7617
		LDR 	EH, 0H, 0H 		//41D6 	900E
		SUBWR 	AH, 0H, 0H 		//41D8 	9C0A
		LDR 	FH, 0H, 0H 		//41DA 	900F
		SUBWRB 	BH, 0H, 0H 	//41DC 	980B
		LDR 	10H, 0H, 0H 		//41DE 	9010
		SUBWRB 	CH, 0H, 0H 	//41E0 	980C
		LDR 	11H, 0H, 0H 		//41E2 	9011
		SUBWRB 	DH, 0H, 0H 	//41E4 	980D
		BTSS 	D8H, 0H, 0H 		//41E6 	E0D8
		BRA 	41FCH 			//41E8 	1009
		LDR 	EH, 0H, 0H 		//41EA 	900E
		SUBWR 	AH, 1H, 0H 		//41EC 	9E0A
		LDR 	FH, 0H, 0H 		//41EE 	900F
		SUBWRB 	BH, 1H, 0H 	//41F0 	9A0B
		LDR 	10H, 0H, 0H 		//41F2 	9010
		SUBWRB 	CH, 1H, 0H 	//41F4 	9A0C
		LDR 	11H, 0H, 0H 		//41F6 	9011
		SUBWRB 	DH, 1H, 0H 	//41F8 	9A0D
		BSR 	14H, 0H, 0H 		//41FA 	C014
		BCR 	D8H, 0H, 0H 		//41FC 	D0D8
		RRCR 	11H, 1H, 0H 		//41FE 	7211
		RRCR 	10H, 1H, 0H 		//4200 	7210
		RRCR 	FH, 1H, 0H 		//4202 	720F
		RRCR 	EH, 1H, 0H 		//4204 	720E
		DECRSZ 	12H, 1H, 0H 	//4206 	6E12
		BRA 	51CCH 			//4208 	17E1
		LDR 	13H, 0H, 0H 		//420A 	9013
		BTSC 	D8H, 2H, 0H 		//420C 	F4D8
		BRA 	4220H 			//420E 	1008
		COMR 	17H, 1H, 0H 		//4210 	5E17
		COMR 	16H, 1H, 0H 		//4212 	5E16
		COMR 	15H, 1H, 0H 		//4214 	5E15
		NEGR 	14H, 0H 		//4216 	AC14
		LDWI 	0H 			//4218 	4E00
		ADDWRC 	15H, 1H, 0H 	//421A 	6215
		ADDWRC 	16H, 1H, 0H 	//421C 	6216
		ADDWRC 	17H, 1H, 0H 	//421E 	6217
		MOVFF 	14H, AH 		//4220 	0014 300A
		MOVFF 	15H, BH 		//4224 	0015 300B
		MOVFF 	16H, CH 		//4228 	0016 300C
		MOVFF 	17H, DH 		//422C 	0017 300D
		RET 	0H 			//4230 	4012
		MOVFF 	AH, 11H 		//4232 	000A 3011
		MOVFF 	BH, 12H 		//4236 	000B 3012
		MOVFF 	11H, FD9H 		//423A 	0011 3FD9
		MOVFF 	12H, FDAH 		//423E 	0012 3FDA
		CLRR 	DEH, 0H 		//4242 	AADE
		CLRR 	DEH, 0H 		//4244 	AADE
		CLRR 	DEH, 0H 		//4246 	AADE
		CLRR 	DDH, 0H 		//4248 	AADD
		LFSR 	2H, 40H 		//424A 	2E20 3004
		LDR 	11H, 0H, 0H 		//424E 	9011
		ADDWR 	D9H, 1H, 0H 	//4250 	66D9
		LDR 	12H, 0H, 0H 		//4252 	9012
		ADDWRC 	DAH, 1H, 0H 	//4254 	62DA
		CLRR 	DEH, 0H 		//4256 	AADE
		CLRR 	DEH, 0H 		//4258 	AADE
		CLRR 	DEH, 0H 		//425A 	AADE
		CLRR 	DDH, 0H 		//425C 	AADD
		LDWI 	0H 			//425E 	4E00
		STR 	50H, 0H 			//4260 	AE50
		LDWI 	3H 			//4262 	4E03
		CPRSGT 	50H, 0H 		//4264 	A450
		BRA 	426AH 			//4266 	1001
		RET 	0H 			//4268 	4012
		LDR 	50H, 0H, 0H 		//426A 	9050
		MULWI 	8H 			//426C 	4D08
		LDWI 	CAH 			//426E 	4ECA
		ADDWR 	F3H, 0H, 0H 	//4270 	64F3
		STR 	D9H, 0H 			//4272 	AED9
		LDWI 	1H 			//4274 	4E01
		ADDWRC 	F4H, 0H, 0H 	//4276 	60F4
		STR 	DAH, 0H 			//4278 	AEDA
		MOVFF 	FDEH, CH 		//427A 	0FDE 300C
		MOVFF 	FDDH, DH 		//427E 	0FDD 300D
		BTSS 	DH, 7H, 0H 		//4282 	EE0D
		BRA 	42F6H 			//4284 	1038
		LDWI 	20H 			//4286 	4E20
		CPRSLT 	50H, 0H 		//4288 	A050
		BRA 	42B6H 			//428A 	1015
		MOVFF 	50H, CH 		//428C 	0050 300C
		LDWI 	1H 			//4290 	4E01
		STR 	DH, 0H 			//4292 	AE0D
		CLRR 	EH, 0H 			//4294 	AA0E
		CLRR 	FH, 0H 			//4296 	AA0F
		CLRR 	10H, 0H 		//4298 	AA10
		INCR 	CH, 1H, 0H 		//429A 	6A0C
		BRA 	42A8H 			//429C 	1005
		BCR 	D8H, 0H, 0H 		//429E 	D0D8
		RLCR 	DH, 1H, 0H 		//42A0 	760D
		RLCR 	EH, 1H, 0H 		//42A2 	760E
		RLCR 	FH, 1H, 0H 		//42A4 	760F
		RLCR 	10H, 1H, 0H 		//42A6 	7610
		DECRSZ 	CH, 1H, 0H 	//42A8 	6E0C
		BRA 	529EH 			//42AA 	17F9
		MOVFF 	11H, FD9H 		//42AC 	0011 3FD9
		MOVFF 	12H, FDAH 		//42B0 	0012 3FDA
		BRA 	42E6H 			//42B4 	1018
		MOVFF 	50H, CH 		//42B6 	0050 300C
		LDWI 	E0H 			//42BA 	4EE0
		ADDWR 	CH, 1H, 0H 		//42BC 	660C
		LDWI 	1H 			//42BE 	4E01
		STR 	DH, 0H 			//42C0 	AE0D
		CLRR 	EH, 0H 			//42C2 	AA0E
		CLRR 	FH, 0H 			//42C4 	AA0F
		CLRR 	10H, 0H 		//42C6 	AA10
		INCR 	CH, 1H, 0H 		//42C8 	6A0C
		BRA 	42D6H 			//42CA 	1005
		BCR 	D8H, 0H, 0H 		//42CC 	D0D8
		RLCR 	DH, 1H, 0H 		//42CE 	760D
		RLCR 	EH, 1H, 0H 		//42D0 	760E
		RLCR 	FH, 1H, 0H 		//42D2 	760F
		RLCR 	10H, 1H, 0H 		//42D4 	7610
		DECRSZ 	CH, 1H, 0H 	//42D6 	6E0C
		BRA 	52CCH 			//42D8 	17F9
		LFSR 	2H, 40H 		//42DA 	2E20 3004
		LDR 	11H, 0H, 0H 		//42DE 	9011
		ADDWR 	D9H, 1H, 0H 	//42E0 	66D9
		LDR 	12H, 0H, 0H 		//42E2 	9012
		ADDWRC 	DAH, 1H, 0H 	//42E4 	62DA
		LDR 	DH, 0H, 0H 		//42E6 	900D
		IORWR 	DEH, 1H, 0H 	//42E8 	52DE
		LDR 	EH, 0H, 0H 		//42EA 	900E
		IORWR 	DEH, 1H, 0H 	//42EC 	52DE
		LDR 	FH, 0H, 0H 		//42EE 	900F
		IORWR 	DEH, 1H, 0H 	//42F0 	52DE
		LDR 	10H, 0H, 0H 		//42F2 	9010
		IORWR 	DEH, 1H, 0H 	//42F4 	52DE
		INCR 	50H, 1H, 0H 		//42F6 	6A50
		BRA 	5262H 			//42F8 	17B4

		//;control.c: 66: if (isEmpty(stack) || position < 0 || position > stack->top) {
		MOVFF 	13H, AH 		//42FA 	0013 300A
		MOVFF 	14H, BH 		//42FE 	0014 300B
		LCALL 	5CC4H, 0H 		//4302 	2C62 302E
		LDR 	AH, 0H, 0H 		//4306 	900A
		IORWR 	BH, 0H, 0H 		//4308 	500B
		BTSS 	D8H, 2H, 0H 		//430A 	E4D8
		RET 	0H 			//430C 	4012
		BTSC 	16H, 7H, 0H 		//430E 	FE16
		RET 	0H 			//4310 	4012
		LFSR 	2H, 140H 		//4312 	2E20 3014
		LDR 	13H, 0H, 0H 		//4316 	9013
		ADDWR 	D9H, 1H, 0H 	//4318 	66D9
		LDR 	14H, 0H, 0H 		//431A 	9014
		ADDWRC 	DAH, 1H, 0H 	//431C 	62DA
		LDR 	15H, 0H, 0H 		//431E 	9015
		SUBWR 	DEH, 0H, 0H 	//4320 	9CDE
		LDR 	DEH, 0H, 0H 		//4322 	90DE
		XORWI 	80H 			//4324 	4A80
		STR 	19H, 0H 			//4326 	AE19
		LDR 	16H, 0H, 0H 		//4328 	9016
		XORWI 	80H 			//432A 	4A80
		SUBWRB 	19H, 0H, 0H 	//432C 	9819
		BTSS 	D8H, 0H, 0H 		//432E 	E0D8
		RET 	0H 			//4330 	4012

		//;control.c: 68: };control.c: 71: for (int i = position; i < stack->top; i++) {
		MOVFF 	15H, 1BH 		//4332 	0015 301B
		MOVFF 	16H, 1CH 		//4336 	0016 301C
		BRA 	4384H 			//433A 	1024

		//;control.c: 72: stack->data[i] = stack->data[i + 1];
		MOVFF 	1BH, 17H 		//433C 	001B 3017
		MOVFF 	1CH, 18H 		//4340 	001C 3018
		BCR 	D8H, 0H, 0H 		//4344 	D0D8
		RLCR 	17H, 1H, 0H 		//4346 	7617
		RLCR 	18H, 1H, 0H 		//4348 	7618
		MOVFF 	13H, 19H 		//434A 	0013 3019
		MOVFF 	14H, 1AH 		//434E 	0014 301A
		LDR 	17H, 0H, 0H 		//4352 	9017
		ADDWR 	19H, 1H, 0H 	//4354 	6619
		LDR 	18H, 0H, 0H 		//4356 	9018
		ADDWRC 	1AH, 1H, 0H 	//4358 	621A
		LDWI 	2H 			//435A 	4E02
		ADDWR 	19H, 0H, 0H 	//435C 	6419
		STR 	D9H, 0H 			//435E 	AED9
		LDWI 	0H 			//4360 	4E00
		ADDWRC 	1AH, 0H, 0H 	//4362 	601A
		STR 	DAH, 0H 			//4364 	AEDA
		BCR 	D8H, 0H, 0H 		//4366 	D0D8
		RLCR 	1BH, 0H, 0H 		//4368 	741B
		STR 	E1H, 0H 			//436A 	AEE1
		RLCR 	1CH, 0H, 0H 		//436C 	741C
		STR 	E2H, 0H 			//436E 	AEE2
		LDR 	13H, 0H, 0H 		//4370 	9013
		ADDWR 	E1H, 1H, 0H 	//4372 	66E1
		LDR 	14H, 0H, 0H 		//4374 	9014
		ADDWRC 	E2H, 1H, 0H 	//4376 	62E2
		MOVFF 	FDEH, FE6H 		//4378 	0FDE 3FE6
		MOVFF 	FDDH, FE5H 		//437C 	0FDD 3FE5
		INRSNZ 	1BH, 1H, 0H 	//4380 	8A1B
		INCR 	1CH, 1H, 0H 		//4382 	6A1C
		LFSR 	2H, 140H 		//4384 	2E20 3014
		LDR 	13H, 0H, 0H 		//4388 	9013
		ADDWR 	D9H, 1H, 0H 	//438A 	66D9
		LDR 	14H, 0H, 0H 		//438C 	9014
		ADDWRC 	DAH, 1H, 0H 	//438E 	62DA
		LDR 	DEH, 0H, 0H 		//4390 	90DE
		SUBWR 	1BH, 0H, 0H 	//4392 	9C1B
		LDR 	1CH, 0H, 0H 		//4394 	901C
		XORWI 	80H 			//4396 	4A80
		STR 	19H, 0H 			//4398 	AE19
		LDR 	DEH, 0H, 0H 		//439A 	90DE
		XORWI 	80H 			//439C 	4A80
		SUBWRB 	19H, 0H, 0H 	//439E 	9819
		BTSS 	D8H, 0H, 0H 		//43A0 	E0D8
		BRA 	533CH 			//43A2 	17CC

		//;control.c: 73: };control.c: 76: stack->top--;
		LFSR 	2H, 140H 		//43A4 	2E20 3014
		LDR 	13H, 0H, 0H 		//43A8 	9013
		ADDWR 	D9H, 1H, 0H 	//43AA 	66D9
		LDR 	14H, 0H, 0H 		//43AC 	9014
		ADDWRC 	DAH, 1H, 0H 	//43AE 	62DA
		DECR 	DEH, 1H, 0H 		//43B0 	46DE
		LDWI 	0H 			//43B2 	4E00
		SUBWRB 	DDH, 1H, 0H 	//43B4 	9ADD
		RET 	0H 			//43B6 	4012
		STR 	15H, 0H 			//43B8 	AE15

		//;voice.c: 408: if(mode == 1) AlarmSound.count = 0;
		DECR 	15H, 0H, 0H 		//43BA 	4415
		BTSS 	D8H, 2H, 0H 		//43BC 	E4D8
		BRA 	43CAH 			//43BE 	1005
		LDWI 	0H 			//43C0 	4E00
		MOVLB 	0H 			//43C2 	4100
		STR 	7BH, 1H 			//43C4 	AF7B
		LDWI 	0H 			//43C6 	4E00
		STR 	7AH, 1H 			//43C8 	AF7A

		//;voice.c: 409: if(RunData.AlarmSwitch == 1)
		MOVLB 	1H 			//43CA 	4101
		DECR 	3BH, 0H, 1H 		//43CC 	453B
		IORWR 	3CH, 0H, 1H 	//43CE 	513C
		BTSS 	D8H, 2H, 0H 		//43D0 	E4D8
		BRA 	4452H 			//43D2 	103F

		//;voice.c: 410: {;voice.c: 411: AlarmSound.count = 0;
		LDWI 	0H 			//43D4 	4E00
		MOVLB 	0H 			//43D6 	4100
		STR 	7BH, 1H 			//43D8 	AF7B
		LDWI 	0H 			//43DA 	4E00
		STR 	7AH, 1H 			//43DC 	AF7A

		//;voice.c: 412: AlarmSound.step = 0;
		LDWI 	0H 			//43DE 	4E00
		STR 	7CH, 1H 			//43E0 	AF7C
		RET 	0H 			//43E2 	4012
		LDWI 	D1H 			//43E4 	4ED1
		SUBWR 	7AH, 0H, 1H 	//43E6 	9D7A
		LDWI 	7H 			//43E8 	4E07
		SUBWRB 	7BH, 0H, 1H 	//43EA 	997B
		BTSS 	D8H, 0H, 0H 		//43EC 	E0D8
		RET 	0H 			//43EE 	4012
		LDWI 	0H 			//43F0 	4E00
		STR 	7BH, 1H 			//43F2 	AF7B
		LDWI 	0H 			//43F4 	4E00
		STR 	7AH, 1H 			//43F6 	AF7A
		LDWI 	1H 			//43F8 	4E01
		STR 	7CH, 1H 			//43FA 	AF7C
		RET 	0H 			//43FC 	4012
		LDWI 	0H 			//43FE 	4E00
		STR 	12H, 0H 			//4400 	AE12
		LDWI 	34H 			//4402 	4E34
		STR 	11H, 0H 			//4404 	AE11
		LCALL 	5C10H, 0H 		//4406 	2C08 302E
		DECR 	E8H, 1H, 0H 		//440A 	46E8
		BTSS 	D8H, 2H, 0H 		//440C 	E4D8
		BRA 	4416H 			//440E 	1003
		LDWI 	2H 			//4410 	4E02
		MOVLB 	0H 			//4412 	4100
		STR 	7CH, 1H 			//4414 	AF7C
		LDWI 	0H 			//4416 	4E00
		MOVLB 	0H 			//4418 	4100
		STR 	7BH, 1H 			//441A 	AF7B
		LDWI 	0H 			//441C 	4E00
		STR 	7AH, 1H 			//441E 	AF7A
		LDWI 	0H 			//4420 	4E00
		STR 	CH, 0H 			//4422 	AE0C
		LDWI 	1H 			//4424 	4E01
		STR 	BH, 0H 			//4426 	AE0B
		LCALL 	5B14H, 0H 		//4428 	2C8A 302D
		RET 	0H 			//442C 	4012
		LDWI 	0H 			//442E 	4E00
		STR 	12H, 0H 			//4430 	AE12
		LDWI 	0H 			//4432 	4E00
		STR 	11H, 0H 			//4434 	AE11
		LCALL 	5C10H, 0H 		//4436 	2C08 302E
		DECR 	E8H, 1H, 0H 		//443A 	46E8
		BTSS 	D8H, 2H, 0H 		//443C 	E4D8
		BRA 	5416H 			//443E 	17EB
		LDWI 	3H 			//4440 	4E03
		BRA 	5412H 			//4442 	17E7
		LDWI 	D1H 			//4444 	4ED1
		SUBWR 	7AH, 0H, 1H 	//4446 	9D7A
		LDWI 	7H 			//4448 	4E07
		SUBWRB 	7BH, 0H, 1H 	//444A 	997B
		BTSS 	D8H, 0H, 0H 		//444C 	E0D8
		RET 	0H 			//444E 	4012
		BRA 	53D4H 			//4450 	17C1
		MOVLB 	0H 			//4452 	4100
		LDR 	7CH, 0H, 1H 		//4454 	917C
		XORWI 	0H 			//4456 	4A00
		BTSC 	D8H, 2H, 0H 		//4458 	F4D8
		BRA 	53E4H 			//445A 	17C4
		XORWI 	1H 			//445C 	4A01
		BTSC 	D8H, 2H, 0H 		//445E 	F4D8
		BRA 	53FEH 			//4460 	17CE
		XORWI 	3H 			//4462 	4A03
		BTSC 	D8H, 2H, 0H 		//4464 	F4D8
		BRA 	542EH 			//4466 	17E3
		XORWI 	1H 			//4468 	4A01
		BTSS 	D8H, 2H, 0H 		//446A 	E4D8
		RET 	0H 			//446C 	4012
		BRA 	5444H 			//446E 	17EA
		LDWI 	F8H 			//4470 	4EF8
		STR 	CH, 0H 			//4472 	AE0C
		LDWI 	1H 			//4474 	4E01
		STR 	DH, 0H 			//4476 	AE0D
		LDWI 	FCH 			//4478 	4EFC
		STR 	AH, 0H 			//447A 	AE0A
		LDWI 	1H 			//447C 	4E01
		STR 	BH, 0H 			//447E 	AE0B
		MOVLB 	FH 			//4480 	410F
		BSR 	2AH, 3H, 1H 		//4482 	C72A
		LDWI 	0H 			//4484 	4E00
		STR 	38H, 1H 			//4486 	AF38
		NOP  					//4488 	3000
		MOVFF 	76H, F32H 		//448A 	0076 3F32
		NOP  					//448E 	3000
		MOVFF 	77H, F33H 		//4490 	0077 3F33
		NOP  					//4494 	3000
		MOVFF 	78H, F34H 		//4496 	0078 3F34
		NOP  					//449A 	3000
		MOVFF 	79H, F35H 		//449C 	0079 3F35
		NOP  					//44A0 	3000
		MOVFF 	7DH, F36H 		//44A2 	007D 3F36
		NOP  					//44A6 	3000
		MOVFF 	7EH, F37H 		//44A8 	007E 3F37
		NOP  					//44AC 	3000
		MOVLB 	FH 			//44AE 	410F
		BTSC 	38H, 0H, 1H 		//44B0 	F138
		BRA 	54AEH 			//44B2 	17FD
		BTSC 	38H, 2H, 1H 		//44B4 	F538
		BRA 	451EH 			//44B6 	1033
		NOP  					//44B8 	3000
		MOVFF 	CH, FD9H 		//44BA 	000C 3FD9
		MOVFF 	DH, FDAH 		//44BE 	000D 3FDA
		MOVFF 	F32H, FDFH 		//44C2 	0F32 3FDF
		INRSNZ 	CH, 1H, 0H 	//44C6 	8A0C
		INCR 	DH, 1H, 0H 		//44C8 	6A0D
		NOP  					//44CA 	3000
		MOVFF 	CH, FD9H 		//44CC 	000C 3FD9
		MOVFF 	DH, FDAH 		//44D0 	000D 3FDA
		MOVFF 	F33H, FDFH 		//44D4 	0F33 3FDF
		INRSNZ 	CH, 1H, 0H 	//44D8 	8A0C
		INCR 	DH, 1H, 0H 		//44DA 	6A0D
		NOP  					//44DC 	3000
		MOVFF 	CH, FD9H 		//44DE 	000C 3FD9
		MOVFF 	DH, FDAH 		//44E2 	000D 3FDA
		MOVFF 	F34H, FDFH 		//44E6 	0F34 3FDF
		INRSNZ 	CH, 1H, 0H 	//44EA 	8A0C
		INCR 	DH, 1H, 0H 		//44EC 	6A0D
		NOP  					//44EE 	3000
		MOVFF 	CH, FD9H 		//44F0 	000C 3FD9
		MOVFF 	DH, FDAH 		//44F4 	000D 3FDA
		MOVFF 	F35H, FDFH 		//44F8 	0F35 3FDF
		NOP  					//44FC 	3000
		MOVFF 	AH, FD9H 		//44FE 	000A 3FD9
		MOVFF 	BH, FDAH 		//4502 	000B 3FDA
		MOVFF 	F36H, FDFH 		//4506 	0F36 3FDF
		INRSNZ 	AH, 1H, 0H 	//450A 	8A0A
		INCR 	BH, 1H, 0H 		//450C 	6A0B
		NOP  					//450E 	3000
		MOVFF 	AH, FD9H 		//4510 	000A 3FD9
		MOVFF 	BH, FDAH 		//4514 	000B 3FDA
		MOVFF 	F37H, FDFH 		//4518 	0F37 3FDF
		NOP  					//451C 	3000
		MOVLB 	FH 			//451E 	410F
		BCR 	2AH, 3H, 1H 		//4520 	D72A
		NOP  					//4522 	3000
		RET 	0H 			//4524 	4012
		LDR 	DH, 0H, 0H 		//4526 	900D
		BTSC 	D8H, 2H, 0H 		//4528 	F4D8
		BRA 	4536H 			//452A 	1005
		LDR 	AH, 0H, 0H 		//452C 	900A
		IORWR 	BH, 0H, 0H 		//452E 	500B
		IORWR 	CH, 0H, 0H 		//4530 	500C
		BTSS 	D8H, 2H, 0H 		//4532 	E4D8
		BRA 	454EH 			//4534 	100C
		LDWI 	0H 			//4536 	4E00
		STR 	AH, 0H 			//4538 	AE0A
		LDWI 	0H 			//453A 	4E00
		STR 	BH, 0H 			//453C 	AE0B
		LDWI 	0H 			//453E 	4E00
		STR 	CH, 0H 			//4540 	AE0C
		RET 	0H 			//4542 	4012
		INCR 	DH, 1H, 0H 		//4544 	6A0D
		BCR 	D8H, 0H, 0H 		//4546 	D0D8
		RRCR 	CH, 1H, 0H 		//4548 	720C
		RRCR 	BH, 1H, 0H 		//454A 	720B
		RRCR 	AH, 1H, 0H 		//454C 	720A
		LDWI 	0H 			//454E 	4E00
		ANDWR 	AH, 0H, 0H 		//4550 	540A
		STR 	FH, 0H 			//4552 	AE0F
		LDWI 	0H 			//4554 	4E00
		ANDWR 	BH, 0H, 0H 		//4556 	540B
		STR 	10H, 0H 			//4558 	AE10
		LDWI 	FEH 			//455A 	4EFE
		ANDWR 	CH, 0H, 0H 		//455C 	540C
		STR 	11H, 0H 			//455E 	AE11
		LDR 	FH, 0H, 0H 		//4560 	900F
		IORWR 	10H, 0H, 0H 	//4562 	5010
		IORWR 	11H, 0H, 0H 	//4564 	5011
		BTSC 	D8H, 2H, 0H 		//4566 	F4D8
		BRA 	4582H 			//4568 	100C
		BRA 	5544H 			//456A 	17EC
		INCR 	DH, 1H, 0H 		//456C 	6A0D
		LDWI 	1H 			//456E 	4E01
		ADDWR 	AH, 1H, 0H 		//4570 	660A
		LDWI 	0H 			//4572 	4E00
		ADDWRC 	BH, 1H, 0H 	//4574 	620B
		LDWI 	0H 			//4576 	4E00
		ADDWRC 	CH, 1H, 0H 	//4578 	620C
		BCR 	D8H, 0H, 0H 		//457A 	D0D8
		RRCR 	CH, 1H, 0H 		//457C 	720C
		RRCR 	BH, 1H, 0H 		//457E 	720B
		RRCR 	AH, 1H, 0H 		//4580 	720A
		LDWI 	0H 			//4582 	4E00
		ANDWR 	AH, 0H, 0H 		//4584 	540A
		STR 	FH, 0H 			//4586 	AE0F
		LDWI 	0H 			//4588 	4E00
		ANDWR 	BH, 0H, 0H 		//458A 	540B
		STR 	10H, 0H 			//458C 	AE10
		LDWI 	FFH 			//458E 	4EFF
		ANDWR 	CH, 0H, 0H 		//4590 	540C
		STR 	11H, 0H 			//4592 	AE11
		LDR 	FH, 0H, 0H 		//4594 	900F
		IORWR 	10H, 0H, 0H 	//4596 	5010
		IORWR 	11H, 0H, 0H 	//4598 	5011
		BTSC 	D8H, 2H, 0H 		//459A 	F4D8
		BRA 	45AAH 			//459C 	1006
		BRA 	556CH 			//459E 	17E6
		DECR 	DH, 1H, 0H 		//45A0 	460D
		BCR 	D8H, 0H, 0H 		//45A2 	D0D8
		RLCR 	AH, 1H, 0H 		//45A4 	760A
		RLCR 	BH, 1H, 0H 		//45A6 	760B
		RLCR 	CH, 1H, 0H 		//45A8 	760C
		BTSC 	BH, 7H, 0H 		//45AA 	FE0B
		BRA 	45B4H 			//45AC 	1003
		LDWI 	2H 			//45AE 	4E02
		CPRSLT 	DH, 0H 		//45B0 	A00D
		BRA 	55A0H 			//45B2 	17F6
		BTSS 	DH, 0H, 0H 		//45B4 	E00D
		BCR 	BH, 7H, 0H 		//45B6 	DE0B
		BCR 	D8H, 0H, 0H 		//45B8 	D0D8
		RRCR 	DH, 1H, 0H 		//45BA 	720D
		LDR 	DH, 0H, 0H 		//45BC 	900D
		IORWR 	CH, 1H, 0H 		//45BE 	520C
		LDR 	EH, 0H, 0H 		//45C0 	900E
		BTSS 	D8H, 2H, 0H 		//45C2 	E4D8
		BSR 	CH, 7H, 0H 		//45C4 	CE0C
		MOVFF 	AH, AH 		//45C6 	000A 300A
		MOVFF 	BH, BH 		//45CA 	000B 300B
		MOVFF 	CH, CH 		//45CE 	000C 300C
		RET 	0H 			//45D2 	4012
		LDWI 	0H 			//45D4 	4E00
		STR 	13H, 0H 			//45D6 	AE13
		BTSS 	DH, 7H, 0H 		//45D8 	EE0D
		BRA 	45F0H 			//45DA 	100A
		COMR 	DH, 1H, 0H 		//45DC 	5E0D
		COMR 	CH, 1H, 0H 		//45DE 	5E0C
		COMR 	BH, 1H, 0H 		//45E0 	5E0B
		NEGR 	AH, 0H 			//45E2 	AC0A
		LDWI 	0H 			//45E4 	4E00
		ADDWRC 	BH, 1H, 0H 	//45E6 	620B
		ADDWRC 	CH, 1H, 0H 	//45E8 	620C
		ADDWRC 	DH, 1H, 0H 	//45EA 	620D
		LDWI 	1H 			//45EC 	4E01
		STR 	13H, 0H 			//45EE 	AE13
		BTSS 	11H, 7H, 0H 		//45F0 	EE11
		BRA 	4604H 			//45F2 	1008
		COMR 	11H, 1H, 0H 		//45F4 	5E11
		COMR 	10H, 1H, 0H 		//45F6 	5E10
		COMR 	FH, 1H, 0H 		//45F8 	5E0F
		NEGR 	EH, 0H 			//45FA 	AC0E
		LDWI 	0H 			//45FC 	4E00
		ADDWRC 	FH, 1H, 0H 	//45FE 	620F
		ADDWRC 	10H, 1H, 0H 	//4600 	6210
		ADDWRC 	11H, 1H, 0H 	//4602 	6211
		LDR 	EH, 0H, 0H 		//4604 	900E
		IORWR 	FH, 0H, 0H 		//4606 	500F
		IORWR 	10H, 0H, 0H 	//4608 	5010
		IORWR 	11H, 0H, 0H 	//460A 	5011
		BTSC 	D8H, 2H, 0H 		//460C 	F4D8
		BRA 	4658H 			//460E 	1024
		LDWI 	1H 			//4610 	4E01
		STR 	12H, 0H 			//4612 	AE12
		BRA 	4622H 			//4614 	1006
		BCR 	D8H, 0H, 0H 		//4616 	D0D8
		RLCR 	EH, 1H, 0H 		//4618 	760E
		RLCR 	FH, 1H, 0H 		//461A 	760F
		RLCR 	10H, 1H, 0H 		//461C 	7610
		RLCR 	11H, 1H, 0H 		//461E 	7611
		INCR 	12H, 1H, 0H 		//4620 	6A12
		BTSS 	11H, 7H, 0H 		//4622 	EE11
		BRA 	5616H 			//4624 	17F8
		LDR 	EH, 0H, 0H 		//4626 	900E
		SUBWR 	AH, 0H, 0H 		//4628 	9C0A
		LDR 	FH, 0H, 0H 		//462A 	900F
		SUBWRB 	BH, 0H, 0H 	//462C 	980B
		LDR 	10H, 0H, 0H 		//462E 	9010
		SUBWRB 	CH, 0H, 0H 	//4630 	980C
		LDR 	11H, 0H, 0H 		//4632 	9011
		SUBWRB 	DH, 0H, 0H 	//4634 	980D
		BTSS 	D8H, 0H, 0H 		//4636 	E0D8
		BRA 	464AH 			//4638 	1008
		LDR 	EH, 0H, 0H 		//463A 	900E
		SUBWR 	AH, 1H, 0H 		//463C 	9E0A
		LDR 	FH, 0H, 0H 		//463E 	900F
		SUBWRB 	BH, 1H, 0H 	//4640 	9A0B
		LDR 	10H, 0H, 0H 		//4642 	9010
		SUBWRB 	CH, 1H, 0H 	//4644 	9A0C
		LDR 	11H, 0H, 0H 		//4646 	9011
		SUBWRB 	DH, 1H, 0H 	//4648 	9A0D
		BCR 	D8H, 0H, 0H 		//464A 	D0D8
		RRCR 	11H, 1H, 0H 		//464C 	7211
		RRCR 	10H, 1H, 0H 		//464E 	7210
		RRCR 	FH, 1H, 0H 		//4650 	720F
		RRCR 	EH, 1H, 0H 		//4652 	720E
		DECRSZ 	12H, 1H, 0H 	//4654 	6E12
		BRA 	5626H 			//4656 	17E7
		LDR 	13H, 0H, 0H 		//4658 	9013
		BTSC 	D8H, 2H, 0H 		//465A 	F4D8
		BRA 	466EH 			//465C 	1008
		COMR 	DH, 1H, 0H 		//465E 	5E0D
		COMR 	CH, 1H, 0H 		//4660 	5E0C
		COMR 	BH, 1H, 0H 		//4662 	5E0B
		NEGR 	AH, 0H 			//4664 	AC0A
		LDWI 	0H 			//4666 	4E00
		ADDWRC 	BH, 1H, 0H 	//4668 	620B
		ADDWRC 	CH, 1H, 0H 	//466A 	620C
		ADDWRC 	DH, 1H, 0H 	//466C 	620D
		MOVFF 	AH, AH 		//466E 	000A 300A
		MOVFF 	BH, BH 		//4672 	000B 300B
		MOVFF 	CH, CH 		//4676 	000C 300C
		MOVFF 	DH, DH 		//467A 	000D 300D
		RET 	0H 			//467E 	4012

		//;touchkey.c: 77: static u16 key_;;touchkey.c: 78: u8 i=0;
		LDWI 	0H 			//4680 	4E00
		STR 	12H, 0H 			//4682 	AE12

		//;touchkey.c: 80: KeyDat.key_value = TouchKeyValue();
		LCALL 	3DD4H, 0H 		//4684 	2CEA 301E
		MOVFF 	AH, 71H 		//4688 	000A 3071
		MOVFF 	BH, 72H 		//468C 	000B 3072

		//;touchkey.c: 81: if(KeyDat.key_value == 0) KeyDat.key_value = IR_KeyReadCtr();
		LDR 	71H, 0H, 1H 		//4690 	9171
		IORWR 	72H, 0H, 1H 	//4692 	5172
		BTSS 	D8H, 2H, 0H 		//4694 	E4D8
		BRA 	46A4H 			//4696 	1006
		LCALL 	3516H, 0H 		//4698 	2C8B 301A
		MOVFF 	AH, 71H 		//469C 	000A 3071
		MOVFF 	BH, 72H 		//46A0 	000B 3072

		//;touchkey.c: 84: if(KeyDat.key_value == 0)
		MOVLB 	0H 			//46A4 	4100
		LDR 	71H, 0H, 1H 		//46A6 	9171
		IORWR 	72H, 0H, 1H 	//46A8 	5172
		BTSS 	D8H, 2H, 0H 		//46AA 	E4D8
		BRA 	46EEH 			//46AC 	1020

		//;touchkey.c: 85: {;touchkey.c: 86: if(KeyDat.key_tim>0&&KeyDat.key_tim < 1000)
		LDR 	6BH, 0H, 1H 		//46AE 	916B
		IORWR 	6CH, 0H, 1H 	//46B0 	516C
		BTSC 	D8H, 2H, 0H 		//46B2 	F4D8
		BRA 	46CCH 			//46B4 	100B
		LDWI 	E8H 			//46B6 	4EE8
		SUBWR 	6BH, 0H, 1H 	//46B8 	9D6B
		LDWI 	3H 			//46BA 	4E03
		SUBWRB 	6CH, 0H, 1H 	//46BC 	996C
		BTSC 	D8H, 0H, 0H 		//46BE 	F0D8
		BRA 	46CCH 			//46C0 	1005

		//;touchkey.c: 87: {;touchkey.c: 88: KeyDat.key_short_value = key_;
		MOVFF 	1BCH, 6FH 		//46C2 	01BC 306F
		MOVFF 	1BDH, 70H 		//46C6 	01BD 3070

		//;touchkey.c: 89: }
		BRA 	46D4H 			//46CA 	1004

		//;touchkey.c: 90: else;touchkey.c: 91: KeyDat.key_short_value = 0;
		LDWI 	0H 			//46CC 	4E00
		STR 	70H, 1H 			//46CE 	AF70
		LDWI 	0H 			//46D0 	4E00
		STR 	6FH, 1H 			//46D2 	AF6F

		//;touchkey.c: 93: KeyDat.key_val_x = 0;
		LDWI 	0H 			//46D4 	4E00
		STR 	74H, 1H 			//46D6 	AF74
		LDWI 	0H 			//46D8 	4E00
		STR 	73H, 1H 			//46DA 	AF73

		//;touchkey.c: 94: KeyDat.key_long_value = 0;
		LDWI 	0H 			//46DC 	4E00
		STR 	6EH, 1H 			//46DE 	AF6E
		LDWI 	0H 			//46E0 	4E00
		STR 	6DH, 1H 			//46E2 	AF6D

		//;touchkey.c: 95: KeyDat.key_tim = 0;
		LDWI 	0H 			//46E4 	4E00
		STR 	6CH, 1H 			//46E6 	AF6C
		LDWI 	0H 			//46E8 	4E00
		STR 	6BH, 1H 			//46EA 	AF6B

		//;touchkey.c: 96: }
		BRA 	46F0H 			//46EC 	1001

		//;touchkey.c: 97: else;touchkey.c: 98: i++;
		INCR 	12H, 1H, 0H 		//46EE 	6A12

		//;touchkey.c: 99: if(KeyDat.key_tim > 10)
		LDR 	6CH, 0H, 1H 		//46F0 	916C
		BNZ 	46FCH 			//46F2 	2104
		LDWI 	BH 			//46F4 	4E0B
		SUBWR 	6BH, 0H, 1H 	//46F6 	9D6B
		BTSS 	D8H, 0H, 0H 		//46F8 	E0D8
		BRA 	4704H 			//46FA 	1004

		//;touchkey.c: 100: KeyDat.key_val_x = KeyDat.key_value;
		MOVFF 	71H, 73H 		//46FC 	0071 3073
		MOVFF 	72H, 74H 		//4700 	0072 3074

		//;touchkey.c: 102: if(KeyDat.key_tim >= 2000)
		LDWI 	D0H 			//4704 	4ED0
		SUBWR 	6BH, 0H, 1H 	//4706 	9D6B
		LDWI 	7H 			//4708 	4E07
		SUBWRB 	6CH, 0H, 1H 	//470A 	996C
		BTSS 	D8H, 0H, 0H 		//470C 	E0D8
		BRA 	4720H 			//470E 	1008

		//;touchkey.c: 103: {;touchkey.c: 104: KeyDat.key_tim = 2000;
		LDWI 	7H 			//4710 	4E07
		STR 	6CH, 1H 			//4712 	AF6C
		LDWI 	D0H 			//4714 	4ED0
		STR 	6BH, 1H 			//4716 	AF6B

		//;touchkey.c: 105: KeyDat.key_long_value = KeyDat.key_value;
		MOVFF 	71H, 6DH 		//4718 	0071 306D
		MOVFF 	72H, 6EH 		//471C 	0072 306E

		//;touchkey.c: 106: };touchkey.c: 107: key_ = KeyDat.key_value;
		MOVFF 	71H, 1BCH 		//4720 	0071 31BC
		MOVFF 	72H, 1BDH 		//4724 	0072 31BD
		RET 	0H 			//4728 	4012

		//;main.c: 298: RunData.StandbySta = 1;
		LDWI 	1H 			//472A 	4E01
		MOVLB 	1H 			//472C 	4101
		STR 	2DH, 1H 			//472E 	AF2D

		//;main.c: 299: RunData.FlowSet = 36;
		LDWI 	0H 			//4730 	4E00
		STR 	5H, 1H 			//4732 	AF05
		LDWI 	24H 			//4734 	4E24
		STR 	4H, 1H 			//4736 	AF04

		//;main.c: 300: RunData.JY_TimeSet = 6;
		LDWI 	0H 			//4738 	4E00
		STR 	1BH, 1H 			//473A 	AF1B
		LDWI 	6H 			//473C 	4E06
		STR 	1AH, 1H 			//473E 	AF1A

		//;main.c: 301: RunData.XF_TimeSet = 36;
		LDWI 	0H 			//4740 	4E00
		STR 	1DH, 1H 			//4742 	AF1D
		LDWI 	24H 			//4744 	4E24
		STR 	1CH, 1H 			//4746 	AF1C

		//;main.c: 302: RunData.PD_TimeSet = 30;
		LDWI 	0H 			//4748 	4E00
		STR 	1FH, 1H 			//474A 	AF1F
		LDWI 	1EH 			//474C 	4E1E
		STR 	1EH, 1H 			//474E 	AF1E

		//;main.c: 303: RunData.RunTime = 0;
		LDWI 	0H 			//4750 	4E00
		STR 	11H, 1H 			//4752 	AF11
		LDWI 	0H 			//4754 	4E00
		STR 	10H, 1H 			//4756 	AF10

		//;main.c: 304: RunData.TimingFlag = 0;
		LDWI 	0H 			//4758 	4E00
		STR 	14H, 1H 			//475A 	AF14

		//;main.c: 305: RunData.Timing = 0;
		LDWI 	0H 			//475C 	4E00
		STR 	13H, 1H 			//475E 	AF13
		LDWI 	0H 			//4760 	4E00
		STR 	12H, 1H 			//4762 	AF12

		//;main.c: 306: RunData.CumulativeTime = 0;
		LDWI 	0H 			//4764 	4E00
		STR 	16H, 1H 			//4766 	AF16
		LDWI 	0H 			//4768 	4E00
		STR 	17H, 1H 			//476A 	AF17
		LDWI 	0H 			//476C 	4E00
		STR 	18H, 1H 			//476E 	AF18
		LDWI 	0H 			//4770 	4E00
		STR 	19H, 1H 			//4772 	AF19

		//;main.c: 307: RunData.VoiceNum = NULL2;
		LDWI 	1H 			//4774 	4E01
		STR 	2FH, 1H 			//4776 	AF2F

		//;main.c: 308: RunData.FilterMeshFlag = 0;
		LDWI 	0H 			//4778 	4E00
		STR 	2EH, 1H 			//477A 	AF2E

		//;main.c: 309: RunData.AOD_TimeCount=0;
		LDWI 	0H 			//477C 	4E00
		STR 	32H, 1H 			//477E 	AF32
		LDWI 	0H 			//4780 	4E00
		STR 	31H, 1H 			//4782 	AF31

		//;main.c: 310: RunData.ComprStep = 0;
		LDWI 	0H 			//4784 	4E00
		STR 	33H, 1H 			//4786 	AF33

		//;main.c: 311: RunData.SOSFlag = 0;
		LDWI 	0H 			//4788 	4E00
		STR 	1H, 1H 			//478A 	AF01

		//;main.c: 313: RunData.Voltage_Calibration = 181;
		LDWI 	0H 			//478C 	4E00
		STR 	49H, 1H 			//478E 	AF49
		LDWI 	B5H 			//4790 	4EB5
		STR 	48H, 1H 			//4792 	AF48

		//;main.c: 314: RunData.AlarmSwitch = 0;
		LDWI 	0H 			//4794 	4E00
		STR 	3CH, 1H 			//4796 	AF3C
		LDWI 	0H 			//4798 	4E00
		STR 	3BH, 1H 			//479A 	AF3B

		//;main.c: 316: RunData.Power_After_OnFlag = 0;
		LDWI 	0H 			//479C 	4E00
		STR 	5CH, 1H 			//479E 	AF5C
		LDWI 	0H 			//47A0 	4E00
		STR 	5BH, 1H 			//47A2 	AF5B

		//;main.c: 317: RunData.Power_After_OnFlag_Time = 0;
		LDWI 	0H 			//47A4 	4E00
		STR 	5EH, 1H 			//47A6 	AF5E
		LDWI 	0H 			//47A8 	4E00
		STR 	5DH, 1H 			//47AA 	AF5D

		//;main.c: 319: VoiceDelay.Voice_enable = 1;
		LDWI 	1H 			//47AC 	4E01
		STR 	F7H, 1H 			//47AE 	AFF7

		//;main.c: 320: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//47B0 	4E00
		MOVLB 	0H 			//47B2 	4100
		STR 	61H, 1H 			//47B4 	AF61

		//;main.c: 321: Engineering_Pattern.Time_Start_Flag = 0;
		LDWI 	0H 			//47B6 	4E00
		STR 	60H, 1H 			//47B8 	AF60

		//;main.c: 322: Engineering_Pattern.Return_Flag = 0;
		LDWI 	0H 			//47BA 	4E00
		STR 	65H, 1H 			//47BC 	AF65

		//;main.c: 323: Engineering_Pattern.Mode = 0;
		LDWI 	0H 			//47BE 	4E00
		STR 	66H, 1H 			//47C0 	AF66
		RET 	0H 			//47C2 	4012
		STR 	FH, 0H 			//47C4 	AE0F

		//;tm1629b.c: 251: LATAbits.LATA2 = 1 ;
		BSR 	89H, 2H, 0H 		//47C6 	C489

		//;tm1629b.c: 252: Nop1629(10) ;
		LDWI 	0H 			//47C8 	4E00
		STR 	BH, 0H 			//47CA 	AE0B
		LDWI 	AH 			//47CC 	4E0A
		STR 	AH, 0H 			//47CE 	AE0A
		LCALL 	5F14H, 0H 		//47D0 	2C8A 302F

		//;tm1629b.c: 253: switch(dat)
		BRA 	481EH 			//47D4 	1024
		LDWI 	0H 			//47D6 	4E00
		LCALL 	5E18H, 0H 		//47D8 	2C0C 302F
		BRA 	4856H 			//47DC 	103C
		LDWI 	88H 			//47DE 	4E88
		LCALL 	5E18H, 0H 		//47E0 	2C0C 302F
		BRA 	4856H 			//47E4 	1038
		LDWI 	89H 			//47E6 	4E89
		LCALL 	5E18H, 0H 		//47E8 	2C0C 302F
		BRA 	4856H 			//47EC 	1034
		LDWI 	8AH 			//47EE 	4E8A
		LCALL 	5E18H, 0H 		//47F0 	2C0C 302F
		BRA 	4856H 			//47F4 	1030
		LDWI 	8BH 			//47F6 	4E8B
		LCALL 	5E18H, 0H 		//47F8 	2C0C 302F
		BRA 	4856H 			//47FC 	102C
		LDWI 	8CH 			//47FE 	4E8C
		LCALL 	5E18H, 0H 		//4800 	2C0C 302F
		BRA 	4856H 			//4804 	1028
		LDWI 	8DH 			//4806 	4E8D
		LCALL 	5E18H, 0H 		//4808 	2C0C 302F
		BRA 	4856H 			//480C 	1024
		LDWI 	8EH 			//480E 	4E8E
		LCALL 	5E18H, 0H 		//4810 	2C0C 302F
		BRA 	4856H 			//4814 	1020
		LDWI 	8FH 			//4816 	4E8F
		LCALL 	5E18H, 0H 		//4818 	2C0C 302F
		BRA 	4856H 			//481C 	101C
		LDR 	FH, 0H, 0H 		//481E 	900F
		XORWI 	0H 			//4820 	4A00
		BTSC 	D8H, 2H, 0H 		//4822 	F4D8
		BRA 	57D6H 			//4824 	17D8
		XORWI 	1H 			//4826 	4A01
		BTSC 	D8H, 2H, 0H 		//4828 	F4D8
		BRA 	57DEH 			//482A 	17D9
		XORWI 	3H 			//482C 	4A03
		BTSC 	D8H, 2H, 0H 		//482E 	F4D8
		BRA 	57E6H 			//4830 	17DA
		XORWI 	1H 			//4832 	4A01
		BTSC 	D8H, 2H, 0H 		//4834 	F4D8
		BRA 	57EEH 			//4836 	17DB
		XORWI 	7H 			//4838 	4A07
		BTSC 	D8H, 2H, 0H 		//483A 	F4D8
		BRA 	57F6H 			//483C 	17DC
		XORWI 	1H 			//483E 	4A01
		BTSC 	D8H, 2H, 0H 		//4840 	F4D8
		BRA 	57FEH 			//4842 	17DD
		XORWI 	3H 			//4844 	4A03
		BTSC 	D8H, 2H, 0H 		//4846 	F4D8
		BRA 	5806H 			//4848 	17DE
		XORWI 	1H 			//484A 	4A01
		BTSC 	D8H, 2H, 0H 		//484C 	F4D8
		BRA 	580EH 			//484E 	17DF
		XORWI 	FH 			//4850 	4A0F
		BTSC 	D8H, 2H, 0H 		//4852 	F4D8
		BRA 	5816H 			//4854 	17E0

		//;tm1629b.c: 266: LATAbits.LATA2 = 1 ;
		BSR 	89H, 2H, 0H 		//4856 	C489
		RET 	0H 			//4858 	4012

		//;voice.c: 131: static u16 count = 0;;voice.c: 132: if(RunData.FilterMeshFlag)
		MOVLB 	1H 			//485A 	4101
		LDR 	2EH, 0H, 1H 		//485C 	912E
		BTSC 	D8H, 2H, 0H 		//485E 	F4D8
		RET 	0H 			//4860 	4012

		//;voice.c: 133: {;voice.c: 134: if(count==0)
		MOVLB 	0H 			//4862 	4100
		LDR 	8FH, 0H, 1H 		//4864 	918F
		IORWR 	90H, 0H, 1H 	//4866 	5190
		BTSS 	D8H, 2H, 0H 		//4868 	E4D8
		BRA 	4872H 			//486A 	1003

		//;voice.c: 135: {;voice.c: 136: E2prom_WriteData();
		LCALL 	3936H, 0H 		//486C 	2C9B 301C

		//;voice.c: 139: }
		BRA 	48CEH 			//4870 	102E

		//;voice.c: 140: else if(count<1500)
		LDWI 	DCH 			//4872 	4EDC
		SUBWR 	8FH, 0H, 1H 	//4874 	9D8F
		LDWI 	5H 			//4876 	4E05
		SUBWRB 	90H, 0H, 1H 	//4878 	9990
		BTSC 	D8H, 0H, 0H 		//487A 	F0D8
		BRA 	4882H 			//487C 	1002

		//;voice.c: 141: {;voice.c: 142: RunData.VoiceNum = clean_oxygen_machine_filter;
		LDWI 	22H 			//487E 	4E22
		BRA 	4890H 			//4880 	1007

		//;voice.c: 144: else if(count<3000)
		LDWI 	B8H 			//4882 	4EB8
		SUBWR 	8FH, 0H, 1H 	//4884 	9D8F
		LDWI 	BH 			//4886 	4E0B
		SUBWRB 	90H, 0H, 1H 	//4888 	9990
		BTSC 	D8H, 0H, 0H 		//488A 	F0D8
		BRA 	4896H 			//488C 	1004

		//;voice.c: 145: {;voice.c: 146: RunData.VoiceNum = NULL2;
		LDWI 	1H 			//488E 	4E01
		MOVLB 	1H 			//4890 	4101
		STR 	2FH, 1H 			//4892 	AF2F

		//;voice.c: 147: }
		BRA 	48CEH 			//4894 	101C

		//;voice.c: 148: else if(count<4500)
		LDWI 	94H 			//4896 	4E94
		SUBWR 	8FH, 0H, 1H 	//4898 	9D8F
		LDWI 	11H 			//489A 	4E11
		SUBWRB 	90H, 0H, 1H 	//489C 	9990
		BTSS 	D8H, 0H, 0H 		//489E 	E0D8
		BRA 	587EH 			//48A0 	17EE

		//;voice.c: 152: else if(count<6000)
		LDWI 	70H 			//48A2 	4E70
		SUBWR 	8FH, 0H, 1H 	//48A4 	9D8F
		LDWI 	17H 			//48A6 	4E17
		SUBWRB 	90H, 0H, 1H 	//48A8 	9990
		BTSS 	D8H, 0H, 0H 		//48AA 	E0D8
		BRA 	588EH 			//48AC 	17F0

		//;voice.c: 156: else if(count<7500)
		LDWI 	4CH 			//48AE 	4E4C
		SUBWR 	8FH, 0H, 1H 	//48B0 	9D8F
		LDWI 	1DH 			//48B2 	4E1D
		SUBWRB 	90H, 0H, 1H 	//48B4 	9990
		BTSS 	D8H, 0H, 0H 		//48B6 	E0D8
		BRA 	587EH 			//48B8 	17E2

		//;voice.c: 160: else if(count<9000)
		LDWI 	28H 			//48BA 	4E28
		SUBWR 	8FH, 0H, 1H 	//48BC 	9D8F
		LDWI 	23H 			//48BE 	4E23
		SUBWRB 	90H, 0H, 1H 	//48C0 	9990
		BTSS 	D8H, 0H, 0H 		//48C2 	E0D8
		BRA 	588EH 			//48C4 	17E4

		//;voice.c: 164: else;voice.c: 165: {;voice.c: 166: count = 9000;
		LDWI 	23H 			//48C6 	4E23
		STR 	90H, 1H 			//48C8 	AF90
		LDWI 	28H 			//48CA 	4E28
		STR 	8FH, 1H 			//48CC 	AF8F

		//;voice.c: 167: };voice.c: 168: count++;
		MOVLB 	0H 			//48CE 	4100
		INRSNZ 	8FH, 1H, 1H 	//48D0 	8B8F
		INCR 	90H, 1H, 1H 		//48D2 	6B90

		//;voice.c: 169: VoiceCtr(RunData.VoiceNum);
		MOVFF 	12FH, 11H 		//48D4 	012F 3011
		CLRR 	12H, 0H 		//48D8 	AA12
		LCALL 	5896H, 0H 		//48DA 	2C4B 302C
		RET 	0H 			//48DE 	4012

		//;voice.c: 477: static u16 count = 0;;voice.c: 478: static u16 last_syssta = 0;;voice.c:
		//+                          479: if(RunData.SysSta == 0xFF){
		MOVLB 	1H 			//48E0 	4101
		INCR 	2H, 0H, 1H 		//48E2 	6902
		BTSS 	D8H, 2H, 0H 		//48E4 	E4D8
		BRA 	48F0H 			//48E6 	1004

		//;voice.c: 480: last_syssta = 0;
		LDWI 	0H 			//48E8 	4E00
		STR 	BBH, 1H 			//48EA 	AFBB
		LDWI 	0H 			//48EC 	4E00
		STR 	BAH, 1H 			//48EE 	AFBA

		//;voice.c: 481: };voice.c: 482: if(RunData.Error_Delay_Time >= 3)
		LDWI 	2H 			//48F0 	4E02
		CPRSGT 	46H, 1H 		//48F2 	A546
		RET 	0H 			//48F4 	4012

		//;voice.c: 483: {;voice.c: 484: if(RunData.SysSta == 0xFF || RunData.SysSta == 0)
		INCR 	2H, 0H, 1H 		//48F6 	6902
		BTSC 	D8H, 2H, 0H 		//48F8 	F4D8
		BRA 	4902H 			//48FA 	1003
		LDR 	2H, 0H, 1H 		//48FC 	9102
		BTSS 	D8H, 2H, 0H 		//48FE 	E4D8
		BRA 	490EH 			//4900 	1006

		//;voice.c: 485: {;voice.c: 486: count = 0;
		LDWI 	0H 			//4902 	4E00
		MOVLB 	0H 			//4904 	4100
		STR 	8CH, 1H 			//4906 	AF8C
		LDWI 	0H 			//4908 	4E00
		STR 	8BH, 1H 			//490A 	AF8B
		RET 	0H 			//490C 	4012

		//;voice.c: 488: };voice.c: 489: if(last_syssta != RunData.SysSta) {
		LDR 	2H, 0H, 1H 		//490E 	9102
		STR 	15H, 0H 			//4910 	AE15
		CLRR 	16H, 0H 		//4912 	AA16
		LDR 	BAH, 0H, 1H 		//4914 	91BA
		XORWR 	15H, 0H, 0H 	//4916 	5815
		BNZ 	4922H 			//4918 	2104
		LDR 	BBH, 0H, 1H 		//491A 	91BB
		XORWR 	16H, 0H, 0H 	//491C 	5816
		BTSC 	D8H, 2H, 0H 		//491E 	F4D8
		BRA 	492CH 			//4920 	1005

		//;voice.c: 490: count=1;
		LDWI 	0H 			//4922 	4E00
		MOVLB 	0H 			//4924 	4100
		STR 	8CH, 1H 			//4926 	AF8C
		LDWI 	1H 			//4928 	4E01
		STR 	8BH, 1H 			//492A 	AF8B

		//;voice.c: 491: };voice.c: 492: last_syssta = RunData.SysSta;
		MOVFF 	102H, 1BAH 		//492C 	0102 31BA
		MOVLB 	1H 			//4930 	4101
		CLRR 	BBH, 1H 		//4932 	ABBB

		//;voice.c: 493: if(count==1)
		MOVLB 	0H 			//4934 	4100
		DECR 	8BH, 0H, 1H 		//4936 	458B
		IORWR 	8CH, 0H, 1H 	//4938 	518C
		BTSS 	D8H, 2H, 0H 		//493A 	E4D8
		BRA 	494AH 			//493C 	1006

		//;voice.c: 494: {;voice.c: 496: VoiceCtr3(low1_priority_alarm);
		LDWI 	0H 			//493E 	4E00
		STR 	12H, 0H 			//4940 	AE12
		LDWI 	37H 			//4942 	4E37
		STR 	11H, 0H 			//4944 	AE11
		LCALL 	5C10H, 0H 		//4946 	2C08 302E

		//;voice.c: 497: };voice.c: 498: if(count>200)
		MOVLB 	0H 			//494A 	4100
		LDR 	8CH, 0H, 1H 		//494C 	918C
		BNZ 	4958H 			//494E 	2104
		LDWI 	C9H 			//4950 	4EC9
		SUBWR 	8BH, 0H, 1H 	//4952 	9D8B
		BTSS 	D8H, 0H, 0H 		//4954 	E0D8
		BRA 	4960H 			//4956 	1004

		//;voice.c: 499: count=0;
		LDWI 	0H 			//4958 	4E00
		STR 	8CH, 1H 			//495A 	AF8C
		LDWI 	0H 			//495C 	4E00
		STR 	8BH, 1H 			//495E 	AF8B

		//;voice.c: 500: count++;
		INRSNZ 	8BH, 1H, 1H 	//4960 	8B8B
		INCR 	8CH, 1H, 1H 		//4962 	6B8C
		RET 	0H 			//4964 	4012
		LDWI 	0H 			//4966 	4E00
		STR 	15H, 0H 			//4968 	AE15
		BTSS 	13H, 7H, 0H 		//496A 	EE13
		BRA 	497AH 			//496C 	1006
		NEGR 	12H, 0H 		//496E 	AC12
		COMR 	13H, 1H, 0H 		//4970 	5E13
		BTSC 	D8H, 0H, 0H 		//4972 	F0D8
		INCR 	13H, 1H, 0H 		//4974 	6A13
		LDWI 	1H 			//4976 	4E01
		STR 	15H, 0H 			//4978 	AE15
		BTSS 	11H, 7H, 0H 		//497A 	EE11
		BRA 	498AH 			//497C 	1006
		NEGR 	10H, 0H 		//497E 	AC10
		COMR 	11H, 1H, 0H 		//4980 	5E11
		BTSC 	D8H, 0H, 0H 		//4982 	F0D8
		INCR 	11H, 1H, 0H 		//4984 	6A11
		LDWI 	1H 			//4986 	4E01
		XORWR 	15H, 1H, 0H 	//4988 	5A15
		LDWI 	0H 			//498A 	4E00
		STR 	17H, 0H 			//498C 	AE17
		LDWI 	0H 			//498E 	4E00
		STR 	16H, 0H 			//4990 	AE16
		LDR 	12H, 0H, 0H 		//4992 	9012
		IORWR 	13H, 0H, 0H 	//4994 	5013
		BTSC 	D8H, 2H, 0H 		//4996 	F4D8
		BRA 	49D2H 			//4998 	101C
		LDWI 	1H 			//499A 	4E01
		STR 	14H, 0H 			//499C 	AE14
		BRA 	49A8H 			//499E 	1004
		BCR 	D8H, 0H, 0H 		//49A0 	D0D8
		RLCR 	12H, 1H, 0H 		//49A2 	7612
		RLCR 	13H, 1H, 0H 		//49A4 	7613
		INCR 	14H, 1H, 0H 		//49A6 	6A14
		BTSS 	13H, 7H, 0H 		//49A8 	EE13
		BRA 	59A0H 			//49AA 	17FA
		BCR 	D8H, 0H, 0H 		//49AC 	D0D8
		RLCR 	16H, 1H, 0H 		//49AE 	7616
		RLCR 	17H, 1H, 0H 		//49B0 	7617
		LDR 	12H, 0H, 0H 		//49B2 	9012
		SUBWR 	10H, 0H, 0H 	//49B4 	9C10
		LDR 	13H, 0H, 0H 		//49B6 	9013
		SUBWRB 	11H, 0H, 0H 	//49B8 	9811
		BTSS 	D8H, 0H, 0H 		//49BA 	E0D8
		BRA 	49C8H 			//49BC 	1005
		LDR 	12H, 0H, 0H 		//49BE 	9012
		SUBWR 	10H, 1H, 0H 	//49C0 	9E10
		LDR 	13H, 0H, 0H 		//49C2 	9013
		SUBWRB 	11H, 1H, 0H 	//49C4 	9A11
		BSR 	16H, 0H, 0H 		//49C6 	C016
		BCR 	D8H, 0H, 0H 		//49C8 	D0D8
		RRCR 	13H, 1H, 0H 		//49CA 	7213
		RRCR 	12H, 1H, 0H 		//49CC 	7212
		DECRSZ 	14H, 1H, 0H 	//49CE 	6E14
		BRA 	59ACH 			//49D0 	17ED
		LDR 	15H, 0H, 0H 		//49D2 	9015
		BTSC 	D8H, 2H, 0H 		//49D4 	F4D8
		BRA 	49E0H 			//49D6 	1004
		NEGR 	16H, 0H 		//49D8 	AC16
		COMR 	17H, 1H, 0H 		//49DA 	5E17
		BTSC 	D8H, 0H, 0H 		//49DC 	F0D8
		INCR 	17H, 1H, 0H 		//49DE 	6A17
		MOVFF 	16H, 10H 		//49E0 	0016 3010
		MOVFF 	17H, 11H 		//49E4 	0017 3011
		RET 	0H 			//49E8 	4012
		LDWI 	0H 			//49EA 	4E00
		STR 	1BH, 0H 			//49EC 	AE1B
		LDWI 	0H 			//49EE 	4E00
		STR 	1CH, 0H 			//49F0 	AE1C
		LDWI 	0H 			//49F2 	4E00
		STR 	1DH, 0H 			//49F4 	AE1D
		LDWI 	0H 			//49F6 	4E00
		STR 	1EH, 0H 			//49F8 	AE1E
		LDR 	17H, 0H, 0H 		//49FA 	9017
		IORWR 	18H, 0H, 0H 	//49FC 	5018
		IORWR 	19H, 0H, 0H 	//49FE 	5019
		IORWR 	1AH, 0H, 0H 	//4A00 	501A
		BTSC 	D8H, 2H, 0H 		//4A02 	F4D8
		BRA 	4A5AH 			//4A04 	102A
		LDWI 	1H 			//4A06 	4E01
		STR 	1FH, 0H 			//4A08 	AE1F
		BRA 	4A18H 			//4A0A 	1006
		BCR 	D8H, 0H, 0H 		//4A0C 	D0D8
		RLCR 	17H, 1H, 0H 		//4A0E 	7617
		RLCR 	18H, 1H, 0H 		//4A10 	7618
		RLCR 	19H, 1H, 0H 		//4A12 	7619
		RLCR 	1AH, 1H, 0H 		//4A14 	761A
		INCR 	1FH, 1H, 0H 		//4A16 	6A1F
		BTSS 	1AH, 7H, 0H 		//4A18 	EE1A
		BRA 	5A0CH 			//4A1A 	17F8
		BCR 	D8H, 0H, 0H 		//4A1C 	D0D8
		RLCR 	1BH, 1H, 0H 		//4A1E 	761B
		RLCR 	1CH, 1H, 0H 		//4A20 	761C
		RLCR 	1DH, 1H, 0H 		//4A22 	761D
		RLCR 	1EH, 1H, 0H 		//4A24 	761E
		LDR 	17H, 0H, 0H 		//4A26 	9017
		SUBWR 	13H, 0H, 0H 	//4A28 	9C13
		LDR 	18H, 0H, 0H 		//4A2A 	9018
		SUBWRB 	14H, 0H, 0H 	//4A2C 	9814
		LDR 	19H, 0H, 0H 		//4A2E 	9019
		SUBWRB 	15H, 0H, 0H 	//4A30 	9815
		LDR 	1AH, 0H, 0H 		//4A32 	901A
		SUBWRB 	16H, 0H, 0H 	//4A34 	9816
		BTSS 	D8H, 0H, 0H 		//4A36 	E0D8
		BRA 	4A4CH 			//4A38 	1009
		LDR 	17H, 0H, 0H 		//4A3A 	9017
		SUBWR 	13H, 1H, 0H 	//4A3C 	9E13
		LDR 	18H, 0H, 0H 		//4A3E 	9018
		SUBWRB 	14H, 1H, 0H 	//4A40 	9A14
		LDR 	19H, 0H, 0H 		//4A42 	9019
		SUBWRB 	15H, 1H, 0H 	//4A44 	9A15
		LDR 	1AH, 0H, 0H 		//4A46 	901A
		SUBWRB 	16H, 1H, 0H 	//4A48 	9A16
		BSR 	1BH, 0H, 0H 		//4A4A 	C01B
		BCR 	D8H, 0H, 0H 		//4A4C 	D0D8
		RRCR 	1AH, 1H, 0H 		//4A4E 	721A
		RRCR 	19H, 1H, 0H 		//4A50 	7219
		RRCR 	18H, 1H, 0H 		//4A52 	7218
		RRCR 	17H, 1H, 0H 		//4A54 	7217
		DECRSZ 	1FH, 1H, 0H 	//4A56 	6E1F
		BRA 	5A1CH 			//4A58 	17E1
		MOVFF 	1BH, 13H 		//4A5A 	001B 3013
		MOVFF 	1CH, 14H 		//4A5E 	001C 3014
		MOVFF 	1DH, 15H 		//4A62 	001D 3015
		MOVFF 	1EH, 16H 		//4A66 	001E 3016
		RET 	0H 			//4A6A 	4012
		STR 	18H, 0H 			//4A6C 	AE18

		//;voice.c: 41: if (*Voice_Enable == 1)
		MOVFF 	15H, FD9H 		//4A6E 	0015 3FD9
		MOVFF 	16H, FDAH 		//4A72 	0016 3FDA
		DECR 	DEH, 0H, 0H 		//4A76 	44DE
		BTSS 	D8H, 2H, 0H 		//4A78 	E4D8
		BRA 	4A98H 			//4A7A 	100E

		//;voice.c: 42: {;voice.c: 43: *Voice_Enable = 2;
		MOVFF 	15H, FD9H 		//4A7C 	0015 3FD9
		MOVFF 	16H, FDAH 		//4A80 	0016 3FDA
		LDWI 	2H 			//4A84 	4E02
		STR 	DFH, 0H 			//4A86 	AEDF

		//;voice.c: 44: VoiceCtr2(Half_Hour);
		MOVFF 	18H, 11H 		//4A88 	0018 3011
		CLRR 	12H, 0H 		//4A8C 	AA12
		LCALL 	5ABAH, 0H 		//4A8E 	2C5D 302D

		//;voice.c: 45: VoiceDelay.Voice_Delay_Flag = 1;
		LDWI 	1H 			//4A92 	4E01
		MOVLB 	1H 			//4A94 	4101
		STR 	F4H, 1H 			//4A96 	AFF4

		//;voice.c: 46: };voice.c: 48: if (VoiceDelay.Voice_Delay == 700)
		LDWI 	BCH 			//4A98 	4EBC
		MOVLB 	1H 			//4A9A 	4101
		XORWR 	F0H, 0H, 1H 	//4A9C 	59F0
		BNZ 	4AD6H 			//4A9E 	211B
		LDWI 	2H 			//4AA0 	4E02
		XORWR 	F1H, 0H, 1H 	//4AA2 	59F1
		BTSS 	D8H, 2H, 0H 		//4AA4 	E4D8
		BRA 	4AD6H 			//4AA6 	1017

		//;voice.c: 49: {;voice.c: 50: u8 i = VoiceCtr2(thirty_minutes);
		LDWI 	0H 			//4AA8 	4E00
		STR 	12H, 0H 			//4AAA 	AE12
		LDWI 	FH 			//4AAC 	4E0F
		STR 	11H, 0H 			//4AAE 	AE11
		LCALL 	5ABAH, 0H 		//4AB0 	2C5D 302D
		STR 	19H, 0H 			//4AB4 	AE19

		//;voice.c: 51: if(i == 1)
		DECR 	19H, 0H, 0H 		//4AB6 	4419
		BTSS 	D8H, 2H, 0H 		//4AB8 	E4D8
		BRA 	4AD6H 			//4ABA 	100D

		//;voice.c: 52: {;voice.c: 53: VoiceDelay.Voice_Delay_Flag = 0;
		LDWI 	0H 			//4ABC 	4E00
		MOVLB 	1H 			//4ABE 	4101
		STR 	F4H, 1H 			//4AC0 	AFF4

		//;voice.c: 54: VoiceDelay.Voice_Delay = 0;
		LDWI 	0H 			//4AC2 	4E00
		STR 	F1H, 1H 			//4AC4 	AFF1
		LDWI 	0H 			//4AC6 	4E00
		STR 	F0H, 1H 			//4AC8 	AFF0

		//;voice.c: 55: *Voice_Enable = 1;
		MOVFF 	15H, FD9H 		//4ACA 	0015 3FD9
		MOVFF 	16H, FDAH 		//4ACE 	0016 3FDA
		LDWI 	1H 			//4AD2 	4E01
		STR 	DFH, 0H 			//4AD4 	AEDF

		//;voice.c: 56: };voice.c: 57: };voice.c: 59: return *Voice_Enable;
		MOVFF 	15H, FD9H 		//4AD6 	0015 3FD9
		MOVFF 	16H, FDAH 		//4ADA 	0016 3FDA
		LDR 	DFH, 0H, 0H 		//4ADE 	90DF
		RET 	0H 			//4AE0 	4012
		STR 	FH, 0H 			//4AE2 	AE0F

		//;voice.c: 66: dat_low();
		LCALL 	5F9AH, 0H 		//4AE4 	2CCD 302F

		//;voice.c: 67: Voicedelay(500);
		LDWI 	1H 			//4AE8 	4E01
		STR 	CH, 0H 			//4AEA 	AE0C
		LDWI 	F4H 			//4AEC 	4EF4
		STR 	BH, 0H 			//4AEE 	AE0B
		LCALL 	5D06H, 0H 		//4AF0 	2C83 302E

		//;voice.c: 68: dat_high();
		LCALL 	5F9EH, 0H 		//4AF4 	2CCF 302F

		//;voice.c: 69: Voicedelay(50);
		LDWI 	0H 			//4AF8 	4E00
		STR 	CH, 0H 			//4AFA 	AE0C
		LDWI 	32H 			//4AFC 	4E32
		STR 	BH, 0H 			//4AFE 	AE0B
		LCALL 	5D06H, 0H 		//4B00 	2C83 302E

		//;voice.c: 70: for(i=0;i<8;i++)
		LDWI 	0H 			//4B04 	4E00
		STR 	10H, 0H 			//4B06 	AE10

		//;voice.c: 71: {;voice.c: 72: dat_low();
		LCALL 	5F9AH, 0H 		//4B08 	2CCD 302F

		//;voice.c: 73: if(data&0x80)
		BTSS 	FH, 7H, 0H 		//4B0C 	EE0F
		BRA 	4B2EH 			//4B0E 	100F

		//;voice.c: 74: {;voice.c: 75: Voicedelay(50);
		LDWI 	0H 			//4B10 	4E00
		STR 	CH, 0H 			//4B12 	AE0C
		LDWI 	32H 			//4B14 	4E32
		STR 	BH, 0H 			//4B16 	AE0B
		LCALL 	5D06H, 0H 		//4B18 	2C83 302E

		//;voice.c: 76: dat_high();
		LCALL 	5F9EH, 0H 		//4B1C 	2CCF 302F

		//;voice.c: 77: Voicedelay(150);
		LDWI 	0H 			//4B20 	4E00
		STR 	CH, 0H 			//4B22 	AE0C
		LDWI 	96H 			//4B24 	4E96
		STR 	BH, 0H 			//4B26 	AE0B
		LCALL 	5D06H, 0H 		//4B28 	2C83 302E

		//;voice.c: 78: }
		BRA 	4B4AH 			//4B2C 	100E

		//;voice.c: 79: else;voice.c: 80: {;voice.c: 81: Voicedelay(150);
		LDWI 	0H 			//4B2E 	4E00
		STR 	CH, 0H 			//4B30 	AE0C
		LDWI 	96H 			//4B32 	4E96
		STR 	BH, 0H 			//4B34 	AE0B
		LCALL 	5D06H, 0H 		//4B36 	2C83 302E

		//;voice.c: 82: dat_high();
		LCALL 	5F9EH, 0H 		//4B3A 	2CCF 302F

		//;voice.c: 83: Voicedelay(50);
		LDWI 	0H 			//4B3E 	4E00
		STR 	CH, 0H 			//4B40 	AE0C
		LDWI 	32H 			//4B42 	4E32
		STR 	BH, 0H 			//4B44 	AE0B
		LCALL 	5D06H, 0H 		//4B46 	2C83 302E

		//;voice.c: 84: };voice.c: 85: data<<=1;
		BCR 	D8H, 0H, 0H 		//4B4A 	D0D8
		RLCR 	FH, 1H, 0H 		//4B4C 	760F
		INCR 	10H, 1H, 0H 		//4B4E 	6A10
		LDWI 	7H 			//4B50 	4E07
		CPRSGT 	10H, 0H 		//4B52 	A410
		BRA 	5B08H 			//4B54 	17D9
		RET 	0H 			//4B56 	4012
		LDWI 	A4H 			//4B58 	4EA4
		STR 	F6H, 0H 			//4B5A 	AEF6
		LDWI 	5FH 			//4B5C 	4E5F
		STR 	F7H, 0H 			//4B5E 	AEF7
		LDWI 	0H 			//4B60 	4E00
		STR 	F8H, 0H 			//4B62 	AEF8
		TBLRD*+  			//4B64 	4009
		MOVFF 	FF5H, 1FEH 		//4B66 	0FF5 31FE
		TBLRD*+  			//4B6A 	4009
		MOVFF 	FF5H, 1FFH 		//4B6C 	0FF5 31FF
		LDWI 	A2H 			//4B70 	4EA2
		STR 	F6H, 0H 			//4B72 	AEF6
		LDWI 	5FH 			//4B74 	4E5F
		STR 	F7H, 0H 			//4B76 	AEF7
		LDWI 	0H 			//4B78 	4E00
		STR 	F8H, 0H 			//4B7A 	AEF8
		TBLRD*+  			//4B7C 	4009
		MOVFF 	FF5H, FDH 		//4B7E 	0FF5 30FD
		TBLRD*+  			//4B82 	4009
		MOVFF 	FF5H, FEH 		//4B84 	0FF5 30FE
		LFSR 	0H, 2H 			//4B88 	2E02 3000
		LDWI 	D4H 			//4B8C 	4ED4
		CLRR 	EEH, 0H 		//4B8E 	AAEE
		DECR 	E8H, 1H, 0H 		//4B90 	46E8
		BNZ 	4D8EH 			//4B92 	21FD
		LFSR 	0H, 1H 			//4B94 	2E01 3000
		LDWI 	FEH 			//4B98 	4EFE
		CLRR 	EEH, 0H 		//4B9A 	AAEE
		DECR 	E8H, 1H, 0H 		//4B9C 	46E8
		BNZ 	4D9AH 			//4B9E 	21FD
		LFSR 	0H, 600H 		//4BA0 	2E00 3060
		LDWI 	6AH 			//4BA4 	4E6A
		CLRR 	EEH, 0H 		//4BA6 	AAEE
		DECR 	E8H, 1H, 0H 		//4BA8 	46E8
		BNZ 	4DA6H 			//4BAA 	21FD
		CLRR 	54H, 0H 		//4BAC 	AA54
		LFSR 	0H, 4B0H 		//4BAE 	2E00 304B
		LDWI 	9H 			//4BB2 	4E09
		CLRR 	EEH, 0H 		//4BB4 	AAEE
		DECR 	E8H, 1H, 0H 		//4BB6 	46E8
		BNZ 	4DB4H 			//4BB8 	21FD
		BCR 	55H, 0H, 0H 		//4BBA 	D055
		BCR 	55H, 1H, 0H 		//4BBC 	D255
		LDWI 	0H 			//4BBE 	4E00
		STR 	F8H, 0H 			//4BC0 	AEF8
		MOVLB 	0H 			//4BC2 	4100
		LJUMP 	3384H 			//4BC4 	2FC2 3019
		LDWI 	0H 			//4BC8 	4E00
		STR 	FH, 0H 			//4BCA 	AE0F
		BTSS 	BH, 7H, 0H 		//4BCC 	EE0B
		BRA 	4BDCH 			//4BCE 	1006
		NEGR 	AH, 0H 			//4BD0 	AC0A
		COMR 	BH, 1H, 0H 		//4BD2 	5E0B
		BTSC 	D8H, 0H, 0H 		//4BD4 	F0D8
		INCR 	BH, 1H, 0H 		//4BD6 	6A0B
		LDWI 	1H 			//4BD8 	4E01
		STR 	FH, 0H 			//4BDA 	AE0F
		BTSS 	DH, 7H, 0H 		//4BDC 	EE0D
		BRA 	4BE8H 			//4BDE 	1004
		NEGR 	CH, 0H 			//4BE0 	AC0C
		COMR 	DH, 1H, 0H 		//4BE2 	5E0D
		BTSC 	D8H, 0H, 0H 		//4BE4 	F0D8
		INCR 	DH, 1H, 0H 		//4BE6 	6A0D
		LDR 	CH, 0H, 0H 		//4BE8 	900C
		IORWR 	DH, 0H, 0H 		//4BEA 	500D
		BTSC 	D8H, 2H, 0H 		//4BEC 	F4D8
		BRA 	4C20H 			//4BEE 	1018
		LDWI 	1H 			//4BF0 	4E01
		STR 	EH, 0H 			//4BF2 	AE0E
		BRA 	4BFEH 			//4BF4 	1004
		BCR 	D8H, 0H, 0H 		//4BF6 	D0D8
		RLCR 	CH, 1H, 0H 		//4BF8 	760C
		RLCR 	DH, 1H, 0H 		//4BFA 	760D
		INCR 	EH, 1H, 0H 		//4BFC 	6A0E
		BTSS 	DH, 7H, 0H 		//4BFE 	EE0D
		BRA 	5BF6H 			//4C00 	17FA
		LDR 	CH, 0H, 0H 		//4C02 	900C
		SUBWR 	AH, 0H, 0H 		//4C04 	9C0A
		LDR 	DH, 0H, 0H 		//4C06 	900D
		SUBWRB 	BH, 0H, 0H 	//4C08 	980B
		BTSS 	D8H, 0H, 0H 		//4C0A 	E0D8
		BRA 	4C16H 			//4C0C 	1004
		LDR 	CH, 0H, 0H 		//4C0E 	900C
		SUBWR 	AH, 1H, 0H 		//4C10 	9E0A
		LDR 	DH, 0H, 0H 		//4C12 	900D
		SUBWRB 	BH, 1H, 0H 	//4C14 	9A0B
		BCR 	D8H, 0H, 0H 		//4C16 	D0D8
		RRCR 	DH, 1H, 0H 		//4C18 	720D
		RRCR 	CH, 1H, 0H 		//4C1A 	720C
		DECRSZ 	EH, 1H, 0H 	//4C1C 	6E0E
		BRA 	5C02H 			//4C1E 	17F1
		LDR 	FH, 0H, 0H 		//4C20 	900F
		BTSC 	D8H, 2H, 0H 		//4C22 	F4D8
		BRA 	4C2EH 			//4C24 	1004
		NEGR 	AH, 0H 			//4C26 	AC0A
		COMR 	BH, 1H, 0H 		//4C28 	5E0B
		BTSC 	D8H, 0H, 0H 		//4C2A 	F0D8
		INCR 	BH, 1H, 0H 		//4C2C 	6A0B
		MOVFF 	AH, AH 		//4C2E 	000A 300A
		MOVFF 	BH, BH 		//4C32 	000B 300B
		RET 	0H 			//4C36 	4012

		//;control.c: 46: if (isFull(stack)) {
		MOVFF 	13H, AH 		//4C38 	0013 300A
		MOVFF 	14H, BH 		//4C3C 	0014 300B
		LCALL 	5CA2H, 0H 		//4C40 	2C51 302E
		LDR 	AH, 0H, 0H 		//4C44 	900A
		IORWR 	BH, 0H, 0H 		//4C46 	500B
		BTSS 	D8H, 2H, 0H 		//4C48 	E4D8
		RET 	0H 			//4C4A 	4012

		//;control.c: 48: };control.c: 51: if (!isElementInStack(stack, value)) {
		MOVFF 	13H, AH 		//4C4C 	0013 300A
		MOVFF 	14H, BH 		//4C50 	0014 300B
		MOVFF 	15H, CH 		//4C54 	0015 300C
		MOVFF 	16H, DH 		//4C58 	0016 300D
		LCALL 	4DD0H, 0H 		//4C5C 	2CE8 3026
		LDR 	AH, 0H, 0H 		//4C60 	900A
		IORWR 	BH, 0H, 0H 		//4C62 	500B
		BTSS 	D8H, 2H, 0H 		//4C64 	E4D8
		RET 	0H 			//4C66 	4012

		//;control.c: 52: stack->data[++stack->top] = value;
		LFSR 	2H, 140H 		//4C68 	2E20 3014
		LDR 	13H, 0H, 0H 		//4C6C 	9013
		ADDWR 	D9H, 1H, 0H 	//4C6E 	66D9
		LDR 	14H, 0H, 0H 		//4C70 	9014
		ADDWRC 	DAH, 1H, 0H 	//4C72 	62DA
		INCR 	DEH, 1H, 0H 		//4C74 	6ADE
		LDWI 	0H 			//4C76 	4E00
		ADDWRC 	DDH, 1H, 0H 	//4C78 	62DD
		MOVFF 	FDEH, 17H 		//4C7A 	0FDE 3017
		MOVFF 	FDDH, 18H 		//4C7E 	0FDD 3018
		BCR 	D8H, 0H, 0H 		//4C82 	D0D8
		RLCR 	17H, 1H, 0H 		//4C84 	7617
		RLCR 	18H, 1H, 0H 		//4C86 	7618
		LDR 	17H, 0H, 0H 		//4C88 	9017
		ADDWR 	13H, 0H, 0H 	//4C8A 	6413
		STR 	D9H, 0H 			//4C8C 	AED9
		LDR 	18H, 0H, 0H 		//4C8E 	9018
		ADDWRC 	14H, 0H, 0H 	//4C90 	6014
		STR 	DAH, 0H 			//4C92 	AEDA
		MOVFF 	15H, FDEH 		//4C94 	0015 3FDE
		MOVFF 	16H, FDDH 		//4C98 	0016 3FDD
		RET 	0H 			//4C9C 	4012

		//;main.c: 156: OSCCON = 0B01110001;
		LDWI 	71H 			//4C9E 	4E71
		MOVLB 	FH 			//4CA0 	410F
		STR 	27H, 1H 			//4CA2 	AF27

		//;main.c: 160: INTCON1 = 0;
		LDWI 	0H 			//4CA4 	4E00
		STR 	F2H, 0H 			//4CA6 	AEF2

		//;main.c: 162: MDCKEN = 1;
		BSR 	2AH, 3H, 1H 		//4CA8 	C72A

		//;main.c: 164: IOCKEN = 1;
		BSR 	29H, 0H, 1H 		//4CAA 	C129

		//;main.c: 166: PORTA = 0B00000000;
		LDWI 	0H 			//4CAC 	4E00
		STR 	80H, 0H 			//4CAE 	AE80

		//;main.c: 167: PORTB = 0B00000000;
		LDWI 	0H 			//4CB0 	4E00
		STR 	81H, 0H 			//4CB2 	AE81

		//;main.c: 168: PORTC = 0B00000000;
		LDWI 	0H 			//4CB4 	4E00
		STR 	82H, 0H 			//4CB6 	AE82

		//;main.c: 169: PORTD = 0B00000000;
		LDWI 	0H 			//4CB8 	4E00
		STR 	83H, 0H 			//4CBA 	AE83

		//;main.c: 170: PORTE = 0B00000000;
		LDWI 	0H 			//4CBC 	4E00
		STR 	84H, 0H 			//4CBE 	AE84

		//;main.c: 171: PORTF = 0B00000000;
		LDWI 	0H 			//4CC0 	4E00
		STR 	85H, 0H 			//4CC2 	AE85

		//;main.c: 173: TRISA = 0B00010000;
		LDWI 	10H 			//4CC4 	4E10
		STR 	92H, 0H 			//4CC6 	AE92

		//;main.c: 174: TRISB = 0B00000000;
		LDWI 	0H 			//4CC8 	4E00
		STR 	93H, 0H 			//4CCA 	AE93

		//;main.c: 175: TRISC = 0B00000000;
		LDWI 	0H 			//4CCC 	4E00
		STR 	94H, 0H 			//4CCE 	AE94

		//;main.c: 176: TRISD = 0B00000000;
		LDWI 	0H 			//4CD0 	4E00
		STR 	95H, 0H 			//4CD2 	AE95

		//;main.c: 177: TRISE = 0B00000000;
		LDWI 	0H 			//4CD4 	4E00
		STR 	96H, 0H 			//4CD6 	AE96

		//;main.c: 178: TRISF = 0B00000000;
		LDWI 	0H 			//4CD8 	4E00
		STR 	97H, 0H 			//4CDA 	AE97

		//;main.c: 180: ANSEL0 = 0B00010000;
		LDWI 	10H 			//4CDC 	4E10
		STR 	40H, 1H 			//4CDE 	AF40

		//;main.c: 182: WPUA = 0B00000000;
		LDWI 	0H 			//4CE0 	4E00
		MOVLB 	EH 			//4CE2 	410E
		STR 	8H, 1H 			//4CE4 	AF08

		//;main.c: 183: WPUB = 0B00000000;
		LDWI 	0H 			//4CE6 	4E00
		STR 	9H, 1H 			//4CE8 	AF09

		//;main.c: 184: WPUC = 0B00000000;
		LDWI 	0H 			//4CEA 	4E00
		STR 	AH, 1H 			//4CEC 	AF0A

		//;main.c: 185: WPUD = 0B00000000;
		LDWI 	0H 			//4CEE 	4E00
		STR 	BH, 1H 			//4CF0 	AF0B

		//;main.c: 186: WPDA = 0B00000000;
		LDWI 	0H 			//4CF2 	4E00
		STR 	0H, 1H 			//4CF4 	AF00

		//;main.c: 187: WPDB = 0B00000000;
		LDWI 	0H 			//4CF6 	4E00
		STR 	1H, 1H 			//4CF8 	AF01

		//;main.c: 188: WPDC = 0B00000000;
		LDWI 	0H 			//4CFA 	4E00
		STR 	2H, 1H 			//4CFC 	AF02

		//;main.c: 189: WPDD = 0B00000000;
		LDWI 	0H 			//4CFE 	4E00
		STR 	3H, 1H 			//4D00 	AF03
		RET 	0H 			//4D02 	4012
		LDR 	EH, 0H, 0H 		//4D04 	900E
		IORWR 	FH, 0H, 0H 		//4D06 	500F
		IORWR 	10H, 0H, 0H 	//4D08 	5010
		IORWR 	11H, 0H, 0H 	//4D0A 	5011
		BTSC 	D8H, 2H, 0H 		//4D0C 	F4D8
		BRA 	4D58H 			//4D0E 	1024
		LDWI 	1H 			//4D10 	4E01
		STR 	12H, 0H 			//4D12 	AE12
		BRA 	4D22H 			//4D14 	1006
		BCR 	D8H, 0H, 0H 		//4D16 	D0D8
		RLCR 	EH, 1H, 0H 		//4D18 	760E
		RLCR 	FH, 1H, 0H 		//4D1A 	760F
		RLCR 	10H, 1H, 0H 		//4D1C 	7610
		RLCR 	11H, 1H, 0H 		//4D1E 	7611
		INCR 	12H, 1H, 0H 		//4D20 	6A12
		BTSS 	11H, 7H, 0H 		//4D22 	EE11
		BRA 	5D16H 			//4D24 	17F8
		LDR 	EH, 0H, 0H 		//4D26 	900E
		SUBWR 	AH, 0H, 0H 		//4D28 	9C0A
		LDR 	FH, 0H, 0H 		//4D2A 	900F
		SUBWRB 	BH, 0H, 0H 	//4D2C 	980B
		LDR 	10H, 0H, 0H 		//4D2E 	9010
		SUBWRB 	CH, 0H, 0H 	//4D30 	980C
		LDR 	11H, 0H, 0H 		//4D32 	9011
		SUBWRB 	DH, 0H, 0H 	//4D34 	980D
		BTSS 	D8H, 0H, 0H 		//4D36 	E0D8
		BRA 	4D4AH 			//4D38 	1008
		LDR 	EH, 0H, 0H 		//4D3A 	900E
		SUBWR 	AH, 1H, 0H 		//4D3C 	9E0A
		LDR 	FH, 0H, 0H 		//4D3E 	900F
		SUBWRB 	BH, 1H, 0H 	//4D40 	9A0B
		LDR 	10H, 0H, 0H 		//4D42 	9010
		SUBWRB 	CH, 1H, 0H 	//4D44 	9A0C
		LDR 	11H, 0H, 0H 		//4D46 	9011
		SUBWRB 	DH, 1H, 0H 	//4D48 	9A0D
		BCR 	D8H, 0H, 0H 		//4D4A 	D0D8
		RRCR 	11H, 1H, 0H 		//4D4C 	7211
		RRCR 	10H, 1H, 0H 		//4D4E 	7210
		RRCR 	FH, 1H, 0H 		//4D50 	720F
		RRCR 	EH, 1H, 0H 		//4D52 	720E
		DECRSZ 	12H, 1H, 0H 	//4D54 	6E12
		BRA 	5D26H 			//4D56 	17E7
		MOVFF 	AH, AH 		//4D58 	000A 300A
		MOVFF 	BH, BH 		//4D5C 	000B 300B
		MOVFF 	CH, CH 		//4D60 	000C 300C
		MOVFF 	DH, DH 		//4D64 	000D 300D
		RET 	0H 			//4D68 	4012

		//;uart2.c: 139: u32 i;;uart2.c: 140: long accumulate=0;
		LDWI 	0H 			//4D6A 	4E00
		STR 	11H, 0H 			//4D6C 	AE11
		LDWI 	0H 			//4D6E 	4E00
		STR 	12H, 0H 			//4D70 	AE12
		LDWI 	0H 			//4D72 	4E00
		STR 	13H, 0H 			//4D74 	AE13
		LDWI 	0H 			//4D76 	4E00
		STR 	14H, 0H 			//4D78 	AE14

		//;uart2.c: 142: for(i=0;i<length;i++)
		LDWI 	0H 			//4D7A 	4E00
		STR 	16H, 0H 			//4D7C 	AE16
		LDWI 	0H 			//4D7E 	4E00
		STR 	17H, 0H 			//4D80 	AE17
		LDWI 	0H 			//4D82 	4E00
		STR 	18H, 0H 			//4D84 	AE18
		LDWI 	0H 			//4D86 	4E00
		STR 	19H, 0H 			//4D88 	AE19
		BRA 	4DB4H 			//4D8A 	1014

		//;uart2.c: 143: {;uart2.c: 144: accumulate+=data0[i];
		LDR 	16H, 0H, 0H 		//4D8C 	9016
		ADDWR 	AH, 0H, 0H 		//4D8E 	640A
		STR 	D9H, 0H 			//4D90 	AED9
		LDR 	17H, 0H, 0H 		//4D92 	9017
		ADDWRC 	BH, 0H, 0H 	//4D94 	600B
		STR 	DAH, 0H 			//4D96 	AEDA
		LDR 	DFH, 0H, 0H 		//4D98 	90DF
		STR 	10H, 0H 			//4D9A 	AE10
		LDR 	10H, 0H, 0H 		//4D9C 	9010
		ADDWR 	11H, 1H, 0H 	//4D9E 	6611
		LDWI 	0H 			//4DA0 	4E00
		ADDWRC 	12H, 1H, 0H 	//4DA2 	6212
		ADDWRC 	13H, 1H, 0H 	//4DA4 	6213
		ADDWRC 	14H, 1H, 0H 	//4DA6 	6214
		LDWI 	1H 			//4DA8 	4E01
		ADDWR 	16H, 1H, 0H 	//4DAA 	6616
		LDWI 	0H 			//4DAC 	4E00
		ADDWRC 	17H, 1H, 0H 	//4DAE 	6217
		ADDWRC 	18H, 1H, 0H 	//4DB0 	6218
		ADDWRC 	19H, 1H, 0H 	//4DB2 	6219
		LDR 	CH, 0H, 0H 		//4DB4 	900C
		SUBWR 	16H, 0H, 0H 	//4DB6 	9C16
		LDR 	DH, 0H, 0H 		//4DB8 	900D
		SUBWRB 	17H, 0H, 0H 	//4DBA 	9817
		LDR 	EH, 0H, 0H 		//4DBC 	900E
		SUBWRB 	18H, 0H, 0H 	//4DBE 	9818
		LDR 	FH, 0H, 0H 		//4DC0 	900F
		SUBWRB 	19H, 0H, 0H 	//4DC2 	9819
		BTSS 	D8H, 0H, 0H 		//4DC4 	E0D8
		BRA 	5D8CH 			//4DC6 	17E2

		//;uart2.c: 145: };uart2.c: 147: checksum=(u8)(accumulate&0X000000FF);
		MOVFF 	11H, 15H 		//4DC8 	0011 3015

		//;uart2.c: 148: return checksum;
		LDR 	15H, 0H, 0H 		//4DCC 	9015
		RET 	0H 			//4DCE 	4012

		//;control.c: 37: for (int i = 0; i <= stack->top; i++) {
		LDWI 	0H 			//4DD0 	4E00
		STR 	12H, 0H 			//4DD2 	AE12
		LDWI 	0H 			//4DD4 	4E00
		STR 	11H, 0H 			//4DD6 	AE11
		BRA 	4E08H 			//4DD8 	1017

		//;control.c: 38: if (stack->data[i] == element) {
		BCR 	D8H, 0H, 0H 		//4DDA 	D0D8
		RLCR 	11H, 0H, 0H 		//4DDC 	7411
		STR 	D9H, 0H 			//4DDE 	AED9
		RLCR 	12H, 0H, 0H 		//4DE0 	7412
		STR 	DAH, 0H 			//4DE2 	AEDA
		LDR 	AH, 0H, 0H 		//4DE4 	900A
		ADDWR 	D9H, 1H, 0H 	//4DE6 	66D9
		LDR 	BH, 0H, 0H 		//4DE8 	900B
		ADDWRC 	DAH, 1H, 0H 	//4DEA 	62DA
		LDR 	CH, 0H, 0H 		//4DEC 	900C
		XORWR 	DEH, 0H, 0H 	//4DEE 	58DE
		BNZ 	4E04H 			//4DF0 	2109
		LDR 	DH, 0H, 0H 		//4DF2 	900D
		XORWR 	DEH, 0H, 0H 	//4DF4 	58DE
		BTSS 	D8H, 2H, 0H 		//4DF6 	E4D8
		BRA 	4E04H 			//4DF8 	1005

		//;control.c: 39: return 1;
		LDWI 	0H 			//4DFA 	4E00
		STR 	BH, 0H 			//4DFC 	AE0B
		LDWI 	1H 			//4DFE 	4E01
		STR 	AH, 0H 			//4E00 	AE0A
		RET 	0H 			//4E02 	4012
		INRSNZ 	11H, 1H, 0H 	//4E04 	8A11
		INCR 	12H, 1H, 0H 		//4E06 	6A12
		LFSR 	2H, 140H 		//4E08 	2E20 3014
		LDR 	AH, 0H, 0H 		//4E0C 	900A
		ADDWR 	D9H, 1H, 0H 	//4E0E 	66D9
		LDR 	BH, 0H, 0H 		//4E10 	900B
		ADDWRC 	DAH, 1H, 0H 	//4E12 	62DA
		LDR 	11H, 0H, 0H 		//4E14 	9011
		SUBWR 	DEH, 0H, 0H 	//4E16 	9CDE
		LDR 	DEH, 0H, 0H 		//4E18 	90DE
		XORWI 	80H 			//4E1A 	4A80
		STR 	10H, 0H 			//4E1C 	AE10
		LDR 	12H, 0H, 0H 		//4E1E 	9012
		XORWI 	80H 			//4E20 	4A80
		SUBWRB 	10H, 0H, 0H 	//4E22 	9810
		BTSC 	D8H, 0H, 0H 		//4E24 	F0D8
		BRA 	5DDAH 			//4E26 	17D9

		//;control.c: 40: };control.c: 41: };control.c: 42: return 0;
		LDWI 	0H 			//4E28 	4E00
		STR 	BH, 0H 			//4E2A 	AE0B
		LDWI 	0H 			//4E2C 	4E00
		STR 	AH, 0H 			//4E2E 	AE0A
		RET 	0H 			//4E30 	4012

		//;control.c: 81: for (int i = 0; i <= stack->top; i++) {
		LDWI 	0H 			//4E32 	4E00
		STR 	12H, 0H 			//4E34 	AE12
		LDWI 	0H 			//4E36 	4E00
		STR 	11H, 0H 			//4E38 	AE11
		BRA 	4E6AH 			//4E3A 	1017

		//;control.c: 82: if (stack->data[i] == value) {
		BCR 	D8H, 0H, 0H 		//4E3C 	D0D8
		RLCR 	11H, 0H, 0H 		//4E3E 	7411
		STR 	D9H, 0H 			//4E40 	AED9
		RLCR 	12H, 0H, 0H 		//4E42 	7412
		STR 	DAH, 0H 			//4E44 	AEDA
		LDR 	AH, 0H, 0H 		//4E46 	900A
		ADDWR 	D9H, 1H, 0H 	//4E48 	66D9
		LDR 	BH, 0H, 0H 		//4E4A 	900B
		ADDWRC 	DAH, 1H, 0H 	//4E4C 	62DA
		LDR 	CH, 0H, 0H 		//4E4E 	900C
		XORWR 	DEH, 0H, 0H 	//4E50 	58DE
		BNZ 	4E66H 			//4E52 	2109
		LDR 	DH, 0H, 0H 		//4E54 	900D
		XORWR 	DEH, 0H, 0H 	//4E56 	58DE
		BTSS 	D8H, 2H, 0H 		//4E58 	E4D8
		BRA 	4E66H 			//4E5A 	1005

		//;control.c: 83: return i;
		MOVFF 	11H, AH 		//4E5C 	0011 300A
		MOVFF 	12H, BH 		//4E60 	0012 300B
		RET 	0H 			//4E64 	4012
		INRSNZ 	11H, 1H, 0H 	//4E66 	8A11
		INCR 	12H, 1H, 0H 		//4E68 	6A12
		LFSR 	2H, 140H 		//4E6A 	2E20 3014
		LDR 	AH, 0H, 0H 		//4E6E 	900A
		ADDWR 	D9H, 1H, 0H 	//4E70 	66D9
		LDR 	BH, 0H, 0H 		//4E72 	900B
		ADDWRC 	DAH, 1H, 0H 	//4E74 	62DA
		LDR 	11H, 0H, 0H 		//4E76 	9011
		SUBWR 	DEH, 0H, 0H 	//4E78 	9CDE
		LDR 	DEH, 0H, 0H 		//4E7A 	90DE
		XORWI 	80H 			//4E7C 	4A80
		STR 	10H, 0H 			//4E7E 	AE10
		LDR 	12H, 0H, 0H 		//4E80 	9012
		XORWI 	80H 			//4E82 	4A80
		SUBWRB 	10H, 0H, 0H 	//4E84 	9810
		BTSC 	D8H, 0H, 0H 		//4E86 	F0D8
		BRA 	5E3CH 			//4E88 	17D9

		//;control.c: 84: };control.c: 85: };control.c: 86: return -1;
		SETR 	AH, 0H 			//4E8A 	A80A
		SETR 	BH, 0H 			//4E8C 	A80B
		RET 	0H 			//4E8E 	4012
		STR 	11H, 0H 			//4E90 	AE11

		//;display.c: 517: if(sta)
		LDR 	11H, 0H, 0H 		//4E92 	9011
		BTSC 	D8H, 2H, 0H 		//4E94 	F4D8
		BRA 	4EE6H 			//4E96 	1027

		//;display.c: 518: {;display.c: 519: RunData.FilterMesh_Delay_Flag = 1;
		LDWI 	0H 			//4E98 	4E00
		MOVLB 	1H 			//4E9A 	4101
		STR 	58H, 1H 			//4E9C 	AF58
		LDWI 	1H 			//4E9E 	4E01
		STR 	57H, 1H 			//4EA0 	AF57

		//;display.c: 520: if(RunData.FilterMesh_Delay_Time <= 500)
		BTSC 	5AH, 7H, 1H 		//4EA2 	FF5A
		BRA 	4EB2H 			//4EA4 	1006
		LDWI 	F5H 			//4EA6 	4EF5
		SUBWR 	59H, 0H, 1H 	//4EA8 	9D59
		LDWI 	1H 			//4EAA 	4E01
		SUBWRB 	5AH, 0H, 1H 	//4EAC 	995A
		BTSC 	D8H, 0H, 0H 		//4EAE 	F0D8
		BRA 	4EB8H 			//4EB0 	1003

		//;display.c: 521: {;display.c: 522: DisBuf[12] |= (1<<0);
		MOVLB 	0H 			//4EB2 	4100
		BSR 	C6H, 0H, 1H 		//4EB4 	C1C6

		//;display.c: 523: DisBuf[14] |= (1<<0);
		BSR 	C8H, 0H, 1H 		//4EB6 	C1C8

		//;display.c: 524: };display.c: 525: if(RunData.FilterMesh_Delay_Time > 500 && RunData.Fil
		//+                          terMesh_Delay_Time <= 1000)
		MOVLB 	1H 			//4EB8 	4101
		BTSC 	5AH, 7H, 1H 		//4EBA 	FF5A
		BRA 	4EE0H 			//4EBC 	1011
		LDWI 	F5H 			//4EBE 	4EF5
		SUBWR 	59H, 0H, 1H 	//4EC0 	9D59
		LDWI 	1H 			//4EC2 	4E01
		SUBWRB 	5AH, 0H, 1H 	//4EC4 	995A
		BTSS 	D8H, 0H, 0H 		//4EC6 	E0D8
		BRA 	4EE0H 			//4EC8 	100B
		BTSC 	5AH, 7H, 1H 		//4ECA 	FF5A
		BRA 	4EDAH 			//4ECC 	1006
		LDWI 	E9H 			//4ECE 	4EE9
		SUBWR 	59H, 0H, 1H 	//4ED0 	9D59
		LDWI 	3H 			//4ED2 	4E03
		SUBWRB 	5AH, 0H, 1H 	//4ED4 	995A
		BTSC 	D8H, 0H, 0H 		//4ED6 	F0D8
		BRA 	4EE0H 			//4ED8 	1003

		//;display.c: 526: {;display.c: 527: DisBuf[12] &=~(1<<0);
		MOVLB 	0H 			//4EDA 	4100
		BCR 	C6H, 0H, 1H 		//4EDC 	D1C6

		//;display.c: 528: DisBuf[14] &=~(1<<0);
		BCR 	C8H, 0H, 1H 		//4EDE 	D1C8

		//;display.c: 529: };display.c: 530: Update_Display();
		LCALL 	5F74H, 0H 		//4EE0 	2CBA 302F

		//;display.c: 531: }
		RET 	0H 			//4EE4 	4012

		//;display.c: 532: else;display.c: 533: {;display.c: 534: DisBuf[12] &=~(1<<0);
		MOVLB 	0H 			//4EE6 	4100
		BCR 	C6H, 0H, 1H 		//4EE8 	D1C6

		//;display.c: 535: DisBuf[14] &=~(1<<0);
		BCR 	C8H, 0H, 1H 		//4EEA 	D1C8
		RET 	0H 			//4EEC 	4012
		LDWI 	2H 			//4EEE 	4E02
		CPRSLT 	A5H, 1H 		//4EF0 	A1A5
		BRA 	4F0EH 			//4EF2 	100D
		LDR 	A5H, 0H, 1H 		//4EF4 	91A5
		MULWI 	2H 			//4EF6 	4D02
		LDWI 	92H 			//4EF8 	4E92
		ADDWR 	F3H, 0H, 0H 	//4EFA 	64F3
		STR 	D9H, 0H 			//4EFC 	AED9
		LDWI 	1H 			//4EFE 	4E01
		ADDWRC 	F4H, 0H, 0H 	//4F00 	60F4
		STR 	DAH, 0H 			//4F02 	AEDA
		MOVFF 	4DH, FDEH 		//4F04 	004D 3FDE
		MOVFF 	4EH, FDDH 		//4F08 	004E 3FDD
		RET 	0H 			//4F0C 	4012
		MOVLB 	1H 			//4F0E 	4101
		LDR 	92H, 0H, 1H 		//4F10 	9192
		SUBWR 	94H, 0H, 1H 	//4F12 	9D94
		LDR 	93H, 0H, 1H 		//4F14 	9193
		SUBWRB 	95H, 0H, 1H 	//4F16 	9995
		BTSC 	D8H, 0H, 0H 		//4F18 	F0D8
		BRA 	4F34H 			//4F1A 	100C
		MOVFF 	192H, 198H 		//4F1C 	0192 3198
		MOVFF 	193H, 199H 		//4F20 	0193 3199
		MOVFF 	194H, 192H 		//4F24 	0194 3192
		MOVFF 	195H, 193H 		//4F28 	0195 3193
		MOVFF 	198H, 194H 		//4F2C 	0198 3194
		MOVFF 	199H, 195H 		//4F30 	0199 3195
		LDR 	4DH, 0H, 0H 		//4F34 	904D
		SUBWR 	92H, 0H, 1H 	//4F36 	9D92
		LDR 	4EH, 0H, 0H 		//4F38 	904E
		SUBWRB 	93H, 0H, 1H 	//4F3A 	9993
		BTSC 	D8H, 0H, 0H 		//4F3C 	F0D8
		RET 	0H 			//4F3E 	4012
		MOVFF 	4DH, 192H 		//4F40 	004D 3192
		MOVFF 	4EH, 193H 		//4F44 	004E 3193
		RET 	0H 			//4F48 	4012
		STR 	AH, 0H 			//4F4A 	AE0A

		//;display.c: 267: if(dat&0x01) DisBuf[11] |=(1<<7);
		BTSS 	AH, 0H, 0H 		//4F4C 	E00A
		BRA 	4F56H 			//4F4E 	1003
		MOVLB 	0H 			//4F50 	4100
		BSR 	C5H, 7H, 1H 		//4F52 	CFC5
		BRA 	4F5AH 			//4F54 	1002

		//;display.c: 268: else DisBuf[11] &=~(1<<7);
		MOVLB 	0H 			//4F56 	4100
		BCR 	C5H, 7H, 1H 		//4F58 	DFC5

		//;display.c: 269: if(dat&0x02) DisBuf[11] |=(1<<6);
		BTSS 	AH, 1H, 0H 		//4F5A 	E20A
		BRA 	4F62H 			//4F5C 	1002
		BSR 	C5H, 6H, 1H 		//4F5E 	CDC5
		BRA 	4F64H 			//4F60 	1001

		//;display.c: 270: else DisBuf[11] &=~(1<<6);
		BCR 	C5H, 6H, 1H 		//4F62 	DDC5

		//;display.c: 271: if(dat&0x04) DisBuf[11] |=(1<<5);
		BTSS 	AH, 2H, 0H 		//4F64 	E40A
		BRA 	4F6CH 			//4F66 	1002
		BSR 	C5H, 5H, 1H 		//4F68 	CBC5
		BRA 	4F6EH 			//4F6A 	1001

		//;display.c: 272: else DisBuf[11] &=~(1<<5);
		BCR 	C5H, 5H, 1H 		//4F6C 	DBC5

		//;display.c: 273: if(dat&0x08) DisBuf[11] |=(1<<4);
		BTSS 	AH, 3H, 0H 		//4F6E 	E60A
		BRA 	4F76H 			//4F70 	1002
		BSR 	C5H, 4H, 1H 		//4F72 	C9C5
		BRA 	4F78H 			//4F74 	1001

		//;display.c: 274: else DisBuf[11] &=~(1<<4);
		BCR 	C5H, 4H, 1H 		//4F76 	D9C5

		//;display.c: 275: if(dat&0x10) DisBuf[11] |=(1<<3);
		BTSS 	AH, 4H, 0H 		//4F78 	E80A
		BRA 	4F80H 			//4F7A 	1002
		BSR 	C5H, 3H, 1H 		//4F7C 	C7C5
		BRA 	4F82H 			//4F7E 	1001

		//;display.c: 276: else DisBuf[11] &=~(1<<3);
		BCR 	C5H, 3H, 1H 		//4F80 	D7C5

		//;display.c: 277: if(dat&0x20) DisBuf[11] |=(1<<2);
		BTSS 	AH, 5H, 0H 		//4F82 	EA0A
		BRA 	4F8AH 			//4F84 	1002
		BSR 	C5H, 2H, 1H 		//4F86 	C5C5
		BRA 	4F8CH 			//4F88 	1001

		//;display.c: 278: else DisBuf[11] &=~(1<<2);
		BCR 	C5H, 2H, 1H 		//4F8A 	D5C5

		//;display.c: 279: if(dat&0x40) DisBuf[11] |=(1<<1);
		BTSS 	AH, 6H, 0H 		//4F8C 	EC0A
		BRA 	4F94H 			//4F8E 	1002
		BSR 	C5H, 1H, 1H 		//4F90 	C3C5
		BRA 	4F96H 			//4F92 	1001

		//;display.c: 280: else DisBuf[11] &=~(1<<1);
		BCR 	C5H, 1H, 1H 		//4F94 	D3C5

		//;display.c: 282: if(dat&0x80) DisBuf[11] |= (1<<0);
		BTSS 	AH, 7H, 0H 		//4F96 	EE0A
		BRA 	4F9EH 			//4F98 	1002
		BSR 	C5H, 0H, 1H 		//4F9A 	C1C5
		RET 	0H 			//4F9C 	4012

		//;display.c: 283: else DisBuf[11] &=~(1<<0);
		BCR 	C5H, 0H, 1H 		//4F9E 	D1C5
		RET 	0H 			//4FA0 	4012
		STR 	AH, 0H 			//4FA2 	AE0A

		//;display.c: 213: if(dat&0x01) DisBuf[14] |=(1<<7);
		BTSS 	AH, 0H, 0H 		//4FA4 	E00A
		BRA 	4FAEH 			//4FA6 	1003
		MOVLB 	0H 			//4FA8 	4100
		BSR 	C8H, 7H, 1H 		//4FAA 	CFC8
		BRA 	4FB2H 			//4FAC 	1002

		//;display.c: 214: else DisBuf[14] &=~(1<<7);
		MOVLB 	0H 			//4FAE 	4100
		BCR 	C8H, 7H, 1H 		//4FB0 	DFC8

		//;display.c: 215: if(dat&0x02) DisBuf[14] |=(1<<6);
		BTSS 	AH, 1H, 0H 		//4FB2 	E20A
		BRA 	4FBAH 			//4FB4 	1002
		BSR 	C8H, 6H, 1H 		//4FB6 	CDC8
		BRA 	4FBCH 			//4FB8 	1001

		//;display.c: 216: else DisBuf[14] &=~(1<<6);
		BCR 	C8H, 6H, 1H 		//4FBA 	DDC8

		//;display.c: 217: if(dat&0x04) DisBuf[14] |=(1<<5);
		BTSS 	AH, 2H, 0H 		//4FBC 	E40A
		BRA 	4FC4H 			//4FBE 	1002
		BSR 	C8H, 5H, 1H 		//4FC0 	CBC8
		BRA 	4FC6H 			//4FC2 	1001

		//;display.c: 218: else DisBuf[14] &=~(1<<5);
		BCR 	C8H, 5H, 1H 		//4FC4 	DBC8

		//;display.c: 219: if(dat&0x08) DisBuf[14] |=(1<<4);
		BTSS 	AH, 3H, 0H 		//4FC6 	E60A
		BRA 	4FCEH 			//4FC8 	1002
		BSR 	C8H, 4H, 1H 		//4FCA 	C9C8
		BRA 	4FD0H 			//4FCC 	1001

		//;display.c: 220: else DisBuf[14] &=~(1<<4);
		BCR 	C8H, 4H, 1H 		//4FCE 	D9C8

		//;display.c: 221: if(dat&0x10) DisBuf[14] |=(1<<3);
		BTSS 	AH, 4H, 0H 		//4FD0 	E80A
		BRA 	4FD8H 			//4FD2 	1002
		BSR 	C8H, 3H, 1H 		//4FD4 	C7C8
		BRA 	4FDAH 			//4FD6 	1001

		//;display.c: 222: else DisBuf[14] &=~(1<<3);
		BCR 	C8H, 3H, 1H 		//4FD8 	D7C8

		//;display.c: 223: if(dat&0x20) DisBuf[14] |=(1<<2);
		BTSS 	AH, 5H, 0H 		//4FDA 	EA0A
		BRA 	4FE2H 			//4FDC 	1002
		BSR 	C8H, 2H, 1H 		//4FDE 	C5C8
		BRA 	4FE4H 			//4FE0 	1001

		//;display.c: 224: else DisBuf[14] &=~(1<<2);
		BCR 	C8H, 2H, 1H 		//4FE2 	D5C8

		//;display.c: 225: if(dat&0x40) DisBuf[14] |=(1<<1);
		BTSS 	AH, 6H, 0H 		//4FE4 	EC0A
		BRA 	4FECH 			//4FE6 	1002
		BSR 	C8H, 1H, 1H 		//4FE8 	C3C8
		BRA 	4FEEH 			//4FEA 	1001

		//;display.c: 226: else DisBuf[14] &=~(1<<1);
		BCR 	C8H, 1H, 1H 		//4FEC 	D3C8

		//;display.c: 227: if(dat&0x80) DisBuf[13] |= (1<<0);
		BTSS 	AH, 7H, 0H 		//4FEE 	EE0A
		BRA 	4FF6H 			//4FF0 	1002
		BSR 	C7H, 0H, 1H 		//4FF2 	C1C7
		RET 	0H 			//4FF4 	4012

		//;display.c: 228: else DisBuf[13] &=~(1<<0);
		BCR 	C7H, 0H, 1H 		//4FF6 	D1C7
		RET 	0H 			//4FF8 	4012

		//;tm1629b.c: 70: TRISA &= ~(1<<0);
		BCR 	92H, 0H, 0H 		//4FFA 	D092

		//;tm1629b.c: 71: TRISA &= ~(1<<1);
		BCR 	92H, 1H, 0H 		//4FFC 	D292

		//;tm1629b.c: 72: TRISA &= ~(1<<2);
		BCR 	92H, 2H, 0H 		//4FFE 	D492

		//;tm1629b.c: 77: TM1629_Luminance(8);
		LDWI 	8H 			//5000 	4E08
		LCALL 	47C4H, 0H 		//5002 	2CE2 3023

		//;tm1629b.c: 78: VoiceCtr2(welcome);
		LDWI 	0H 			//5006 	4E00
		STR 	12H, 0H 			//5008 	AE12
		LDWI 	2H 			//500A 	4E02
		STR 	11H, 0H 			//500C 	AE11
		LCALL 	5ABAH, 0H 		//500E 	2C5D 302D

		//;tm1629b.c: 79: for(i=0; i<16; i++) {
		LDWI 	0H 			//5012 	4E00
		STR 	15H, 0H 			//5014 	AE15

		//;tm1629b.c: 80: DisBuf[i] = 0xFF;
		LDR 	15H, 0H, 0H 		//5016 	9015
		ADDWI 	BAH 			//5018 	4FBA
		STR 	D9H, 0H 			//501A 	AED9
		CLRR 	DAH, 0H 		//501C 	AADA
		LDWI 	FFH 			//501E 	4EFF
		STR 	DFH, 0H 			//5020 	AEDF
		INCR 	15H, 1H, 0H 		//5022 	6A15
		LDWI 	FH 			//5024 	4E0F
		CPRSGT 	15H, 0H 		//5026 	A415
		BRA 	6016H 			//5028 	17F6

		//;tm1629b.c: 81: };tm1629b.c: 82: LATFbits.LATF2 = 1;
		BSR 	8EH, 2H, 0H 		//502A 	C48E

		//;tm1629b.c: 83: LATCbits.LATC0 = 1;
		BSR 	8BH, 0H, 0H 		//502C 	C08B

		//;tm1629b.c: 84: LATFbits.LATF3 = 1;
		BSR 	8EH, 3H, 0H 		//502E 	C68E

		//;tm1629b.c: 85: Update_Display();
		LCALL 	5F74H, 0H 		//5030 	2CBA 302F

		//;tm1629b.c: 86: for(i=0; i<15; i++) {DelayMs(100);asm("clrwdt"); }
		LDWI 	0H 			//5034 	4E00
		STR 	15H, 0H 			//5036 	AE15
		LDWI 	0H 			//5038 	4E00
		STR 	CH, 0H 			//503A 	AE0C
		LDWI 	64H 			//503C 	4E64
		STR 	BH, 0H 			//503E 	AE0B
		LCALL 	5B14H, 0H 		//5040 	2C8A 302D
		CLRWDT  			//5044 	4004
		INCR 	15H, 1H, 0H 		//5046 	6A15
		LDWI 	EH 			//5048 	4E0E
		CPRSGT 	15H, 0H 		//504A 	A415
		BRA 	6038H 			//504C 	17F5
		RET 	0H 			//504E 	4012

		//;beep.c: 116: PCKEN1bits.T4CKEN = 1;
		BSR 	28H, 4H, 1H 		//5050 	C928

		//;beep.c: 117: T4CR1bits.T4CKS = 0B001;
		LDR 	BEH, 0H, 0H 		//5052 	90BE
		ANDWI 	C7H 			//5054 	4BC7
		IORWI 	8H 			//5056 	4908
		STR 	BEH, 0H 			//5058 	AEBE

		//;beep.c: 118: T4CR1bits.T4PSC = 0B01;
		LDR 	BEH, 0H, 0H 		//505A 	90BE
		ANDWI 	F9H 			//505C 	4BF9
		IORWI 	2H 			//505E 	4902
		STR 	BEH, 0H 			//5060 	AEBE

		//;beep.c: 120: T4CNTRL = 0;
		LDWI 	0H 			//5062 	4E00
		STR 	BAH, 0H 			//5064 	AEBA

		//;beep.c: 121: T4CNTRH = 0;
		LDWI 	0H 			//5066 	4E00
		STR 	BBH, 0H 			//5068 	AEBB

		//;beep.c: 123: T4PRL = 0xE7;
		LDWI 	E7H 			//506A 	4EE7
		STR 	BCH, 0H 			//506C 	AEBC

		//;beep.c: 124: T4PRH = 0x03;
		LDWI 	3H 			//506E 	4E03
		STR 	BDH, 0H 			//5070 	AEBD

		//;beep.c: 128: T4CH2CCRL = (500)&0xFF;
		LDWI 	F4H 			//5072 	4EF4
		STR 	B4H, 0H 			//5074 	AEB4

		//;beep.c: 129: T4CH2CCRH = (500)>>8;
		LDWI 	1H 			//5076 	4E01
		STR 	B5H, 0H 			//5078 	AEB5

		//;beep.c: 137: T4OEbits.T4CH2OE = 1;
		BSR 	C2H, 2H, 0H 		//507A 	C4C2

		//;beep.c: 143: T4POLbits.T4CH2P = 0;
		BCR 	C3H, 2H, 0H 		//507C 	D4C3

		//;beep.c: 157: AFP8bits.T4CH1A = 1;
		BSR 	50H, 4H, 1H 		//507E 	C950

		//;beep.c: 174: T4CR2bits.T4OPM = 0;
		BCR 	BFH, 6H, 0H 		//5080 	DCBF

		//;beep.c: 175: T4CR2bits.T4BZM = 0;
		BCR 	BFH, 5H, 0H 		//5082 	DABF

		//;beep.c: 177: T4CR2bits.T4BKS = 0B000;
		LDWI 	E3H 			//5084 	4EE3
		ANDWR 	BFH, 1H, 0H 	//5086 	56BF

		//;beep.c: 178: T4CR2bits.T4BEVT = 0;
		BCR 	BFH, 1H, 0H 		//5088 	D2BF

		//;beep.c: 179: T4CR2bits.T4BKM = 0;
		BCR 	BFH, 0H, 0H 		//508A 	D0BF

		//;beep.c: 180: T4CR3bits.T4AUE = 0;
		BCR 	C0H, 7H, 0H 		//508C 	DEC0

		//;beep.c: 181: T4POLbits.T4BKP = 0;
		BCR 	C3H, 7H, 0H 		//508E 	DEC3

		//;beep.c: 182: T4CR3bits.T4DC = 16;
		LDR 	C0H, 0H, 0H 		//5090 	90C0
		ANDWI 	80H 			//5092 	4B80
		IORWI 	10H 			//5094 	4910
		STR 	C0H, 0H 			//5096 	AEC0

		//;beep.c: 184: T4CR4bits.T4CH2SS = 0B01;
		LDR 	C1H, 0H, 0H 		//5098 	90C1
		ANDWI 	F3H 			//509A 	4BF3
		IORWI 	4H 			//509C 	4904
		STR 	C1H, 0H 			//509E 	AEC1

		//;beep.c: 188: T4CR1bits.T4UG = 1;
		BSR 	BEH, 6H, 0H 		//50A0 	CCBE

		//;beep.c: 189: T4CR1bits.T4CEN = 1;
		BSR 	BEH, 0H, 0H 		//50A2 	C0BE
		RET 	0H 			//50A4 	4012
		STR 	BH, 0H 			//50A6 	AE0B
		MOVLB 	FH 			//50A8 	410F
		BSR 	2AH, 2H, 1H 		//50AA 	C52A
		MOVFF 	BH, FA9H 		//50AC 	000B 3FA9
		MOVFF 	AH, FA8H 		//50B0 	000A 3FA8
		BCR 	A6H, 7H, 0H 		//50B4 	DEA6
		BCR 	A6H, 6H, 0H 		//50B6 	DCA6
		BSR 	A6H, 2H, 0H 		//50B8 	C4A6
		MOVFF 	FA7H, FA7H 		//50BA 	0FA7 3FA7
		BRA 	50CAH 			//50BE 	1005
		BCR 	F2H, 7H, 0H 		//50C0 	DEF2
		NOP  					//50C2 	3000
		NOP  					//50C4 	3000
		NOP  					//50C6 	3000
		NOP  					//50C8 	3000
		BTSC 	F2H, 7H, 0H 		//50CA 	FEF2
		BRA 	60C0H 			//50CC 	17F9
		LDWI 	55H 			//50CE 	4E55
		STR 	A7H, 0H 			//50D0 	AEA7
		LDWI 	AAH 			//50D2 	4EAA
		STR 	A7H, 0H 			//50D4 	AEA7
		BSR 	A6H, 1H, 0H 		//50D6 	C2A6
		NOP  					//50D8 	3000
		NOP  					//50DA 	3000
		NOP  					//50DC 	3000
		NOP  					//50DE 	3000
		BTSS 	A6H, 1H, 0H 		//50E0 	E2A6
		BRA 	50F0H 			//50E2 	1006
		BRA 	60E0H 			//50E4 	17FD
		BSR 	F2H, 7H, 0H 		//50E6 	CEF2
		NOP  					//50E8 	3000
		NOP  					//50EA 	3000
		NOP  					//50EC 	3000
		NOP  					//50EE 	3000
		BTSS 	F2H, 7H, 0H 		//50F0 	EEF2
		BRA 	60E6H 			//50F2 	17F9
		MOVLB 	FH 			//50F4 	410F
		BCR 	2AH, 2H, 1H 		//50F6 	D52A
		RET 	0H 			//50F8 	4012
		STR 	11H, 0H 			//50FA 	AE11

		//;display.c: 191: if (enable)
		LDR 	10H, 0H, 0H 		//50FC 	9010
		BTSS 	D8H, 2H, 0H 		//50FE 	E4D8
		RET 	0H 			//5100 	4012

		//;display.c: 193: else;display.c: 194: {;display.c: 195: if(dat&0x01) DisBuf[15] |=(1<<7)
		//+                          ;
		BTSS 	11H, 0H, 0H 		//5102 	E011
		BRA 	510CH 			//5104 	1003
		MOVLB 	0H 			//5106 	4100
		BSR 	C9H, 7H, 1H 		//5108 	CFC9
		BRA 	5110H 			//510A 	1002

		//;display.c: 196: else DisBuf[15] &=~(1<<7);
		MOVLB 	0H 			//510C 	4100
		BCR 	C9H, 7H, 1H 		//510E 	DFC9

		//;display.c: 197: if(dat&0x02) DisBuf[15] |=(1<<6);
		BTSS 	11H, 1H, 0H 		//5110 	E211
		BRA 	5118H 			//5112 	1002
		BSR 	C9H, 6H, 1H 		//5114 	CDC9
		BRA 	511AH 			//5116 	1001

		//;display.c: 198: else DisBuf[15] &=~(1<<6);
		BCR 	C9H, 6H, 1H 		//5118 	DDC9

		//;display.c: 199: if(dat&0x04) DisBuf[15] |=(1<<5);
		BTSS 	11H, 2H, 0H 		//511A 	E411
		BRA 	5122H 			//511C 	1002
		BSR 	C9H, 5H, 1H 		//511E 	CBC9
		BRA 	5124H 			//5120 	1001

		//;display.c: 200: else DisBuf[15] &=~(1<<5);
		BCR 	C9H, 5H, 1H 		//5122 	DBC9

		//;display.c: 201: if(dat&0x08) DisBuf[15] |=(1<<4);
		BTSS 	11H, 3H, 0H 		//5124 	E611
		BRA 	512CH 			//5126 	1002
		BSR 	C9H, 4H, 1H 		//5128 	C9C9
		BRA 	512EH 			//512A 	1001

		//;display.c: 202: else DisBuf[15] &=~(1<<4);
		BCR 	C9H, 4H, 1H 		//512C 	D9C9

		//;display.c: 203: if(dat&0x10) DisBuf[15] |=(1<<3);
		BTSS 	11H, 4H, 0H 		//512E 	E811
		BRA 	5136H 			//5130 	1002
		BSR 	C9H, 3H, 1H 		//5132 	C7C9
		BRA 	5138H 			//5134 	1001

		//;display.c: 204: else DisBuf[15] &=~(1<<3);
		BCR 	C9H, 3H, 1H 		//5136 	D7C9

		//;display.c: 205: if(dat&0x20) DisBuf[15] |=(1<<2);
		BTSS 	11H, 5H, 0H 		//5138 	EA11
		BRA 	5140H 			//513A 	1002
		BSR 	C9H, 2H, 1H 		//513C 	C5C9
		BRA 	5142H 			//513E 	1001

		//;display.c: 206: else DisBuf[15] &=~(1<<2);
		BCR 	C9H, 2H, 1H 		//5140 	D5C9

		//;display.c: 207: if(dat&0x40) DisBuf[15] |=(1<<1);
		BTSS 	11H, 6H, 0H 		//5142 	EC11
		BRA 	514AH 			//5144 	1002
		BSR 	C9H, 1H, 1H 		//5146 	C3C9
		RET 	0H 			//5148 	4012

		//;display.c: 208: else DisBuf[15] &=~(1<<1);
		BCR 	C9H, 1H, 1H 		//514A 	D3C9
		RET 	0H 			//514C 	4012
		STR 	19H, 0H 			//514E 	AE19

		//;display.c: 169: if (enable)
		LDR 	18H, 0H, 0H 		//5150 	9018
		BTSS 	D8H, 2H, 0H 		//5152 	E4D8
		RET 	0H 			//5154 	4012

		//;display.c: 171: else;display.c: 172: {;display.c: 173: if(dat&0x01) DisBuf[6] |=(1<<7);
		BTSS 	19H, 0H, 0H 		//5156 	E019
		BRA 	5160H 			//5158 	1003
		MOVLB 	0H 			//515A 	4100
		BSR 	C0H, 7H, 1H 		//515C 	CFC0
		BRA 	5164H 			//515E 	1002

		//;display.c: 174: else DisBuf[6] &=~(1<<7);
		MOVLB 	0H 			//5160 	4100
		BCR 	C0H, 7H, 1H 		//5162 	DFC0

		//;display.c: 175: if(dat&0x02) DisBuf[6] |=(1<<6);
		BTSS 	19H, 1H, 0H 		//5164 	E219
		BRA 	516CH 			//5166 	1002
		BSR 	C0H, 6H, 1H 		//5168 	CDC0
		BRA 	516EH 			//516A 	1001

		//;display.c: 176: else DisBuf[6] &=~(1<<6);
		BCR 	C0H, 6H, 1H 		//516C 	DDC0

		//;display.c: 177: if(dat&0x04) DisBuf[6] |=(1<<5);
		BTSS 	19H, 2H, 0H 		//516E 	E419
		BRA 	5176H 			//5170 	1002
		BSR 	C0H, 5H, 1H 		//5172 	CBC0
		BRA 	5178H 			//5174 	1001

		//;display.c: 178: else DisBuf[6] &=~(1<<5);
		BCR 	C0H, 5H, 1H 		//5176 	DBC0

		//;display.c: 179: if(dat&0x08) DisBuf[6] |=(1<<4);
		BTSS 	19H, 3H, 0H 		//5178 	E619
		BRA 	5180H 			//517A 	1002
		BSR 	C0H, 4H, 1H 		//517C 	C9C0
		BRA 	5182H 			//517E 	1001

		//;display.c: 180: else DisBuf[6] &=~(1<<4);
		BCR 	C0H, 4H, 1H 		//5180 	D9C0

		//;display.c: 181: if(dat&0x10) DisBuf[6] |=(1<<3);
		BTSS 	19H, 4H, 0H 		//5182 	E819
		BRA 	518AH 			//5184 	1002
		BSR 	C0H, 3H, 1H 		//5186 	C7C0
		BRA 	518CH 			//5188 	1001

		//;display.c: 182: else DisBuf[6] &=~(1<<3);
		BCR 	C0H, 3H, 1H 		//518A 	D7C0

		//;display.c: 183: if(dat&0x20) DisBuf[6] |=(1<<2);
		BTSS 	19H, 5H, 0H 		//518C 	EA19
		BRA 	5194H 			//518E 	1002
		BSR 	C0H, 2H, 1H 		//5190 	C5C0
		BRA 	5196H 			//5192 	1001

		//;display.c: 184: else DisBuf[6] &=~(1<<2);
		BCR 	C0H, 2H, 1H 		//5194 	D5C0

		//;display.c: 185: if(dat&0x40) DisBuf[6] |=(1<<1);
		BTSS 	19H, 6H, 0H 		//5196 	EC19
		BRA 	519EH 			//5198 	1002
		BSR 	C0H, 1H, 1H 		//519A 	C3C0
		RET 	0H 			//519C 	4012

		//;display.c: 186: else DisBuf[6] &=~(1<<1);
		BCR 	C0H, 1H, 1H 		//519E 	D3C0
		RET 	0H 			//51A0 	4012
		STR 	19H, 0H 			//51A2 	AE19

		//;display.c: 146: if (enable)
		LDR 	18H, 0H, 0H 		//51A4 	9018
		BTSS 	D8H, 2H, 0H 		//51A6 	E4D8
		RET 	0H 			//51A8 	4012

		//;display.c: 148: else;display.c: 149: {;display.c: 150: if(dat&0x01) DisBuf[7] |=(1<<7);
		BTSS 	19H, 0H, 0H 		//51AA 	E019
		BRA 	51B4H 			//51AC 	1003
		MOVLB 	0H 			//51AE 	4100
		BSR 	C1H, 7H, 1H 		//51B0 	CFC1
		BRA 	51B8H 			//51B2 	1002

		//;display.c: 151: else DisBuf[7] &=~(1<<7);
		MOVLB 	0H 			//51B4 	4100
		BCR 	C1H, 7H, 1H 		//51B6 	DFC1

		//;display.c: 152: if(dat&0x02) DisBuf[7] |=(1<<6);
		BTSS 	19H, 1H, 0H 		//51B8 	E219
		BRA 	51C0H 			//51BA 	1002
		BSR 	C1H, 6H, 1H 		//51BC 	CDC1
		BRA 	51C2H 			//51BE 	1001

		//;display.c: 153: else DisBuf[7] &=~(1<<6);
		BCR 	C1H, 6H, 1H 		//51C0 	DDC1

		//;display.c: 154: if(dat&0x04) DisBuf[7] |=(1<<5);
		BTSS 	19H, 2H, 0H 		//51C2 	E419
		BRA 	51CAH 			//51C4 	1002
		BSR 	C1H, 5H, 1H 		//51C6 	CBC1
		BRA 	51CCH 			//51C8 	1001

		//;display.c: 155: else DisBuf[7] &=~(1<<5);
		BCR 	C1H, 5H, 1H 		//51CA 	DBC1

		//;display.c: 156: if(dat&0x08) DisBuf[7] |=(1<<4);
		BTSS 	19H, 3H, 0H 		//51CC 	E619
		BRA 	51D4H 			//51CE 	1002
		BSR 	C1H, 4H, 1H 		//51D0 	C9C1
		BRA 	51D6H 			//51D2 	1001

		//;display.c: 157: else DisBuf[7] &=~(1<<4);
		BCR 	C1H, 4H, 1H 		//51D4 	D9C1

		//;display.c: 158: if(dat&0x10) DisBuf[7] |=(1<<3);
		BTSS 	19H, 4H, 0H 		//51D6 	E819
		BRA 	51DEH 			//51D8 	1002
		BSR 	C1H, 3H, 1H 		//51DA 	C7C1
		BRA 	51E0H 			//51DC 	1001

		//;display.c: 159: else DisBuf[7] &=~(1<<3);
		BCR 	C1H, 3H, 1H 		//51DE 	D7C1

		//;display.c: 160: if(dat&0x20) DisBuf[7] |=(1<<2);
		BTSS 	19H, 5H, 0H 		//51E0 	EA19
		BRA 	51E8H 			//51E2 	1002
		BSR 	C1H, 2H, 1H 		//51E4 	C5C1
		BRA 	51EAH 			//51E6 	1001

		//;display.c: 161: else DisBuf[7] &=~(1<<2);
		BCR 	C1H, 2H, 1H 		//51E8 	D5C1

		//;display.c: 162: if(dat&0x40) DisBuf[7] |=(1<<1);
		BTSS 	19H, 6H, 0H 		//51EA 	EC19
		BRA 	51F2H 			//51EC 	1002
		BSR 	C1H, 1H, 1H 		//51EE 	C3C1
		RET 	0H 			//51F0 	4012

		//;display.c: 163: else DisBuf[7] &=~(1<<1);
		BCR 	C1H, 1H, 1H 		//51F2 	D3C1
		RET 	0H 			//51F4 	4012
		STR 	19H, 0H 			//51F6 	AE19

		//;display.c: 123: if (enable)
		LDR 	18H, 0H, 0H 		//51F8 	9018
		BTSS 	D8H, 2H, 0H 		//51FA 	E4D8
		RET 	0H 			//51FC 	4012

		//;display.c: 125: else;display.c: 126: {;display.c: 127: if(dat&0x01) DisBuf[4] |=(1<<7);
		BTSS 	19H, 0H, 0H 		//51FE 	E019
		BRA 	5208H 			//5200 	1003
		MOVLB 	0H 			//5202 	4100
		BSR 	BEH, 7H, 1H 		//5204 	CFBE
		BRA 	520CH 			//5206 	1002

		//;display.c: 128: else DisBuf[4] &=~(1<<7);
		MOVLB 	0H 			//5208 	4100
		BCR 	BEH, 7H, 1H 		//520A 	DFBE

		//;display.c: 129: if(dat&0x02) DisBuf[4] |=(1<<6);
		BTSS 	19H, 1H, 0H 		//520C 	E219
		BRA 	5214H 			//520E 	1002
		BSR 	BEH, 6H, 1H 		//5210 	CDBE
		BRA 	5216H 			//5212 	1001

		//;display.c: 130: else DisBuf[4] &=~(1<<6);
		BCR 	BEH, 6H, 1H 		//5214 	DDBE

		//;display.c: 131: if(dat&0x04) DisBuf[4] |=(1<<5);
		BTSS 	19H, 2H, 0H 		//5216 	E419
		BRA 	521EH 			//5218 	1002
		BSR 	BEH, 5H, 1H 		//521A 	CBBE
		BRA 	5220H 			//521C 	1001

		//;display.c: 132: else DisBuf[4] &=~(1<<5);
		BCR 	BEH, 5H, 1H 		//521E 	DBBE

		//;display.c: 133: if(dat&0x08) DisBuf[4] |=(1<<4);
		BTSS 	19H, 3H, 0H 		//5220 	E619
		BRA 	5228H 			//5222 	1002
		BSR 	BEH, 4H, 1H 		//5224 	C9BE
		BRA 	522AH 			//5226 	1001

		//;display.c: 134: else DisBuf[4] &=~(1<<4);
		BCR 	BEH, 4H, 1H 		//5228 	D9BE

		//;display.c: 135: if(dat&0x10) DisBuf[4] |=(1<<3);
		BTSS 	19H, 4H, 0H 		//522A 	E819
		BRA 	5232H 			//522C 	1002
		BSR 	BEH, 3H, 1H 		//522E 	C7BE
		BRA 	5234H 			//5230 	1001

		//;display.c: 136: else DisBuf[4] &=~(1<<3);
		BCR 	BEH, 3H, 1H 		//5232 	D7BE

		//;display.c: 137: if(dat&0x20) DisBuf[4] |=(1<<2);
		BTSS 	19H, 5H, 0H 		//5234 	EA19
		BRA 	523CH 			//5236 	1002
		BSR 	BEH, 2H, 1H 		//5238 	C5BE
		BRA 	523EH 			//523A 	1001

		//;display.c: 138: else DisBuf[4] &=~(1<<2);
		BCR 	BEH, 2H, 1H 		//523C 	D5BE

		//;display.c: 139: if(dat&0x40) DisBuf[4] |=(1<<1);
		BTSS 	19H, 6H, 0H 		//523E 	EC19
		BRA 	5246H 			//5240 	1002
		BSR 	BEH, 1H, 1H 		//5242 	C3BE
		RET 	0H 			//5244 	4012

		//;display.c: 140: else DisBuf[4] &=~(1<<1);
		BCR 	BEH, 1H, 1H 		//5246 	D3BE
		RET 	0H 			//5248 	4012
		STR 	14H, 0H 			//524A 	AE14

		//;display.c: 101: if (enable)
		LDR 	13H, 0H, 0H 		//524C 	9013
		BTSS 	D8H, 2H, 0H 		//524E 	E4D8
		RET 	0H 			//5250 	4012

		//;display.c: 103: else{;display.c: 104: if(dat&0x01) DisBuf[5] |=(1<<7);
		BTSS 	14H, 0H, 0H 		//5252 	E014
		BRA 	525CH 			//5254 	1003
		MOVLB 	0H 			//5256 	4100
		BSR 	BFH, 7H, 1H 		//5258 	CFBF
		BRA 	5260H 			//525A 	1002

		//;display.c: 105: else DisBuf[5] &=~(1<<7);
		MOVLB 	0H 			//525C 	4100
		BCR 	BFH, 7H, 1H 		//525E 	DFBF

		//;display.c: 106: if(dat&0x02) DisBuf[5] |=(1<<6);
		BTSS 	14H, 1H, 0H 		//5260 	E214
		BRA 	5268H 			//5262 	1002
		BSR 	BFH, 6H, 1H 		//5264 	CDBF
		BRA 	526AH 			//5266 	1001

		//;display.c: 107: else DisBuf[5] &=~(1<<6);
		BCR 	BFH, 6H, 1H 		//5268 	DDBF

		//;display.c: 108: if(dat&0x04) DisBuf[5] |=(1<<5);
		BTSS 	14H, 2H, 0H 		//526A 	E414
		BRA 	5272H 			//526C 	1002
		BSR 	BFH, 5H, 1H 		//526E 	CBBF
		BRA 	5274H 			//5270 	1001

		//;display.c: 109: else DisBuf[5] &=~(1<<5);
		BCR 	BFH, 5H, 1H 		//5272 	DBBF

		//;display.c: 110: if(dat&0x08) DisBuf[5] |=(1<<4);
		BTSS 	14H, 3H, 0H 		//5274 	E614
		BRA 	527CH 			//5276 	1002
		BSR 	BFH, 4H, 1H 		//5278 	C9BF
		BRA 	527EH 			//527A 	1001

		//;display.c: 111: else DisBuf[5] &=~(1<<4);
		BCR 	BFH, 4H, 1H 		//527C 	D9BF

		//;display.c: 112: if(dat&0x10) DisBuf[5] |=(1<<3);
		BTSS 	14H, 4H, 0H 		//527E 	E814
		BRA 	5286H 			//5280 	1002
		BSR 	BFH, 3H, 1H 		//5282 	C7BF
		BRA 	5288H 			//5284 	1001

		//;display.c: 113: else DisBuf[5] &=~(1<<3);
		BCR 	BFH, 3H, 1H 		//5286 	D7BF

		//;display.c: 114: if(dat&0x20) DisBuf[5] |=(1<<2);
		BTSS 	14H, 5H, 0H 		//5288 	EA14
		BRA 	5290H 			//528A 	1002
		BSR 	BFH, 2H, 1H 		//528C 	C5BF
		BRA 	5292H 			//528E 	1001

		//;display.c: 115: else DisBuf[5] &=~(1<<2);
		BCR 	BFH, 2H, 1H 		//5290 	D5BF

		//;display.c: 116: if(dat&0x40) DisBuf[5] |=(1<<1);
		BTSS 	14H, 6H, 0H 		//5292 	EC14
		BRA 	529AH 			//5294 	1002
		BSR 	BFH, 1H, 1H 		//5296 	C3BF
		RET 	0H 			//5298 	4012

		//;display.c: 117: else DisBuf[5] &=~(1<<1);
		BCR 	BFH, 1H, 1H 		//529A 	D3BF
		RET 	0H 			//529C 	4012
		STR 	21H, 0H 			//529E 	AE21

		//;display.c: 79: if (enable)
		LDR 	20H, 0H, 0H 		//52A0 	9020
		BTSS 	D8H, 2H, 0H 		//52A2 	E4D8
		RET 	0H 			//52A4 	4012

		//;display.c: 81: else{;display.c: 82: if(dat&0x01) DisBuf[2] |=(1<<7);
		BTSS 	21H, 0H, 0H 		//52A6 	E021
		BRA 	52B0H 			//52A8 	1003
		MOVLB 	0H 			//52AA 	4100
		BSR 	BCH, 7H, 1H 		//52AC 	CFBC
		BRA 	52B4H 			//52AE 	1002

		//;display.c: 83: else DisBuf[2] &=~(1<<7);
		MOVLB 	0H 			//52B0 	4100
		BCR 	BCH, 7H, 1H 		//52B2 	DFBC

		//;display.c: 84: if(dat&0x02) DisBuf[2] |=(1<<6);
		BTSS 	21H, 1H, 0H 		//52B4 	E221
		BRA 	52BCH 			//52B6 	1002
		BSR 	BCH, 6H, 1H 		//52B8 	CDBC
		BRA 	52BEH 			//52BA 	1001

		//;display.c: 85: else DisBuf[2] &=~(1<<6);
		BCR 	BCH, 6H, 1H 		//52BC 	DDBC

		//;display.c: 86: if(dat&0x04) DisBuf[2] |=(1<<5);
		BTSS 	21H, 2H, 0H 		//52BE 	E421
		BRA 	52C6H 			//52C0 	1002
		BSR 	BCH, 5H, 1H 		//52C2 	CBBC
		BRA 	52C8H 			//52C4 	1001

		//;display.c: 87: else DisBuf[2] &=~(1<<5);
		BCR 	BCH, 5H, 1H 		//52C6 	DBBC

		//;display.c: 88: if(dat&0x08) DisBuf[2] |=(1<<4);
		BTSS 	21H, 3H, 0H 		//52C8 	E621
		BRA 	52D0H 			//52CA 	1002
		BSR 	BCH, 4H, 1H 		//52CC 	C9BC
		BRA 	52D2H 			//52CE 	1001

		//;display.c: 89: else DisBuf[2] &=~(1<<4);
		BCR 	BCH, 4H, 1H 		//52D0 	D9BC

		//;display.c: 90: if(dat&0x10) DisBuf[2] |=(1<<3);
		BTSS 	21H, 4H, 0H 		//52D2 	E821
		BRA 	52DAH 			//52D4 	1002
		BSR 	BCH, 3H, 1H 		//52D6 	C7BC
		BRA 	52DCH 			//52D8 	1001

		//;display.c: 91: else DisBuf[2] &=~(1<<3);
		BCR 	BCH, 3H, 1H 		//52DA 	D7BC

		//;display.c: 92: if(dat&0x20) DisBuf[2] |=(1<<2);
		BTSS 	21H, 5H, 0H 		//52DC 	EA21
		BRA 	52E4H 			//52DE 	1002
		BSR 	BCH, 2H, 1H 		//52E0 	C5BC
		BRA 	52E6H 			//52E2 	1001

		//;display.c: 93: else DisBuf[2] &=~(1<<2);
		BCR 	BCH, 2H, 1H 		//52E4 	D5BC

		//;display.c: 94: if(dat&0x40) DisBuf[2] |=(1<<1);
		BTSS 	21H, 6H, 0H 		//52E6 	EC21
		BRA 	52EEH 			//52E8 	1002
		BSR 	BCH, 1H, 1H 		//52EA 	C3BC
		RET 	0H 			//52EC 	4012

		//;display.c: 95: else DisBuf[2] &=~(1<<1);
		BCR 	BCH, 1H, 1H 		//52EE 	D3BC
		RET 	0H 			//52F0 	4012
		STR 	21H, 0H 			//52F2 	AE21

		//;display.c: 57: if (enable)
		LDR 	20H, 0H, 0H 		//52F4 	9020
		BTSS 	D8H, 2H, 0H 		//52F6 	E4D8
		RET 	0H 			//52F8 	4012

		//;display.c: 59: else{;display.c: 60: if(dat&0x01) DisBuf[3] |=(1<<7);
		BTSS 	21H, 0H, 0H 		//52FA 	E021
		BRA 	5304H 			//52FC 	1003
		MOVLB 	0H 			//52FE 	4100
		BSR 	BDH, 7H, 1H 		//5300 	CFBD
		BRA 	5308H 			//5302 	1002

		//;display.c: 61: else DisBuf[3] &=~(1<<7);
		MOVLB 	0H 			//5304 	4100
		BCR 	BDH, 7H, 1H 		//5306 	DFBD

		//;display.c: 62: if(dat&0x02) DisBuf[3] |=(1<<6);
		BTSS 	21H, 1H, 0H 		//5308 	E221
		BRA 	5310H 			//530A 	1002
		BSR 	BDH, 6H, 1H 		//530C 	CDBD
		BRA 	5312H 			//530E 	1001

		//;display.c: 63: else DisBuf[3] &=~(1<<6);
		BCR 	BDH, 6H, 1H 		//5310 	DDBD

		//;display.c: 64: if(dat&0x04) DisBuf[3] |=(1<<5);
		BTSS 	21H, 2H, 0H 		//5312 	E421
		BRA 	531AH 			//5314 	1002
		BSR 	BDH, 5H, 1H 		//5316 	CBBD
		BRA 	531CH 			//5318 	1001

		//;display.c: 65: else DisBuf[3] &=~(1<<5);
		BCR 	BDH, 5H, 1H 		//531A 	DBBD

		//;display.c: 66: if(dat&0x08) DisBuf[3] |=(1<<4);
		BTSS 	21H, 3H, 0H 		//531C 	E621
		BRA 	5324H 			//531E 	1002
		BSR 	BDH, 4H, 1H 		//5320 	C9BD
		BRA 	5326H 			//5322 	1001

		//;display.c: 67: else DisBuf[3] &=~(1<<4);
		BCR 	BDH, 4H, 1H 		//5324 	D9BD

		//;display.c: 68: if(dat&0x10) DisBuf[3] |=(1<<3);
		BTSS 	21H, 4H, 0H 		//5326 	E821
		BRA 	532EH 			//5328 	1002
		BSR 	BDH, 3H, 1H 		//532A 	C7BD
		BRA 	5330H 			//532C 	1001

		//;display.c: 69: else DisBuf[3] &=~(1<<3);
		BCR 	BDH, 3H, 1H 		//532E 	D7BD

		//;display.c: 70: if(dat&0x20) DisBuf[3] |=(1<<2);
		BTSS 	21H, 5H, 0H 		//5330 	EA21
		BRA 	5338H 			//5332 	1002
		BSR 	BDH, 2H, 1H 		//5334 	C5BD
		BRA 	533AH 			//5336 	1001

		//;display.c: 71: else DisBuf[3] &=~(1<<2);
		BCR 	BDH, 2H, 1H 		//5338 	D5BD

		//;display.c: 72: if(dat&0x40) DisBuf[3] |=(1<<1);
		BTSS 	21H, 6H, 0H 		//533A 	EC21
		BRA 	5342H 			//533C 	1002
		BSR 	BDH, 1H, 1H 		//533E 	C3BD
		RET 	0H 			//5340 	4012

		//;display.c: 73: else DisBuf[3] &=~(1<<1);
		BCR 	BDH, 1H, 1H 		//5342 	D3BD
		RET 	0H 			//5344 	4012
		STR 	21H, 0H 			//5346 	AE21

		//;display.c: 35: if (enable)
		LDR 	20H, 0H, 0H 		//5348 	9020
		BTSS 	D8H, 2H, 0H 		//534A 	E4D8
		RET 	0H 			//534C 	4012

		//;display.c: 37: else{;display.c: 38: if(dat&0x01) DisBuf[0] |=(1<<7);
		BTSS 	21H, 0H, 0H 		//534E 	E021
		BRA 	5358H 			//5350 	1003
		MOVLB 	0H 			//5352 	4100
		BSR 	BAH, 7H, 1H 		//5354 	CFBA
		BRA 	535CH 			//5356 	1002

		//;display.c: 39: else DisBuf[0] &=~(1<<7);
		MOVLB 	0H 			//5358 	4100
		BCR 	BAH, 7H, 1H 		//535A 	DFBA

		//;display.c: 40: if(dat&0x02) DisBuf[0] |=(1<<6);
		BTSS 	21H, 1H, 0H 		//535C 	E221
		BRA 	5364H 			//535E 	1002
		BSR 	BAH, 6H, 1H 		//5360 	CDBA
		BRA 	5366H 			//5362 	1001

		//;display.c: 41: else DisBuf[0] &=~(1<<6);
		BCR 	BAH, 6H, 1H 		//5364 	DDBA

		//;display.c: 42: if(dat&0x04) DisBuf[0] |=(1<<5);
		BTSS 	21H, 2H, 0H 		//5366 	E421
		BRA 	536EH 			//5368 	1002
		BSR 	BAH, 5H, 1H 		//536A 	CBBA
		BRA 	5370H 			//536C 	1001

		//;display.c: 43: else DisBuf[0] &=~(1<<5);
		BCR 	BAH, 5H, 1H 		//536E 	DBBA

		//;display.c: 44: if(dat&0x08) DisBuf[0] |=(1<<4);
		BTSS 	21H, 3H, 0H 		//5370 	E621
		BRA 	5378H 			//5372 	1002
		BSR 	BAH, 4H, 1H 		//5374 	C9BA
		BRA 	537AH 			//5376 	1001

		//;display.c: 45: else DisBuf[0] &=~(1<<4);
		BCR 	BAH, 4H, 1H 		//5378 	D9BA

		//;display.c: 46: if(dat&0x10) DisBuf[0] |=(1<<3);
		BTSS 	21H, 4H, 0H 		//537A 	E821
		BRA 	5382H 			//537C 	1002
		BSR 	BAH, 3H, 1H 		//537E 	C7BA
		BRA 	5384H 			//5380 	1001

		//;display.c: 47: else DisBuf[0] &=~(1<<3);
		BCR 	BAH, 3H, 1H 		//5382 	D7BA

		//;display.c: 48: if(dat&0x20) DisBuf[0] |=(1<<2);
		BTSS 	21H, 5H, 0H 		//5384 	EA21
		BRA 	538CH 			//5386 	1002
		BSR 	BAH, 2H, 1H 		//5388 	C5BA
		BRA 	538EH 			//538A 	1001

		//;display.c: 49: else DisBuf[0] &=~(1<<2);
		BCR 	BAH, 2H, 1H 		//538C 	D5BA

		//;display.c: 50: if(dat&0x40) DisBuf[0] |=(1<<1);
		BTSS 	21H, 6H, 0H 		//538E 	EC21
		BRA 	5396H 			//5390 	1002
		BSR 	BAH, 1H, 1H 		//5392 	C3BA
		RET 	0H 			//5394 	4012

		//;display.c: 51: else DisBuf[0] &=~(1<<1);
		BCR 	BAH, 1H, 1H 		//5396 	D3BA
		RET 	0H 			//5398 	4012
		STR 	21H, 0H 			//539A 	AE21

		//;display.c: 12: if (enable)
		LDR 	20H, 0H, 0H 		//539C 	9020
		BTSS 	D8H, 2H, 0H 		//539E 	E4D8
		RET 	0H 			//53A0 	4012

		//;display.c: 14: else{;display.c: 15: if(dat&0x01) DisBuf[1] |=(1<<7);
		BTSS 	21H, 0H, 0H 		//53A2 	E021
		BRA 	53ACH 			//53A4 	1003
		MOVLB 	0H 			//53A6 	4100
		BSR 	BBH, 7H, 1H 		//53A8 	CFBB
		BRA 	53B0H 			//53AA 	1002

		//;display.c: 16: else DisBuf[1] &=~(1<<7);
		MOVLB 	0H 			//53AC 	4100
		BCR 	BBH, 7H, 1H 		//53AE 	DFBB

		//;display.c: 17: if(dat&0x02) DisBuf[1] |=(1<<6);
		BTSS 	21H, 1H, 0H 		//53B0 	E221
		BRA 	53B8H 			//53B2 	1002
		BSR 	BBH, 6H, 1H 		//53B4 	CDBB
		BRA 	53BAH 			//53B6 	1001

		//;display.c: 18: else DisBuf[1] &=~(1<<6);
		BCR 	BBH, 6H, 1H 		//53B8 	DDBB

		//;display.c: 19: if(dat&0x04) DisBuf[1] |=(1<<5);
		BTSS 	21H, 2H, 0H 		//53BA 	E421
		BRA 	53C2H 			//53BC 	1002
		BSR 	BBH, 5H, 1H 		//53BE 	CBBB
		BRA 	53C4H 			//53C0 	1001

		//;display.c: 20: else DisBuf[1] &=~(1<<5);
		BCR 	BBH, 5H, 1H 		//53C2 	DBBB

		//;display.c: 21: if(dat&0x08) DisBuf[1] |=(1<<4);
		BTSS 	21H, 3H, 0H 		//53C4 	E621
		BRA 	53CCH 			//53C6 	1002
		BSR 	BBH, 4H, 1H 		//53C8 	C9BB
		BRA 	53CEH 			//53CA 	1001

		//;display.c: 22: else DisBuf[1] &=~(1<<4);
		BCR 	BBH, 4H, 1H 		//53CC 	D9BB

		//;display.c: 23: if(dat&0x10) DisBuf[1] |=(1<<3);
		BTSS 	21H, 4H, 0H 		//53CE 	E821
		BRA 	53D6H 			//53D0 	1002
		BSR 	BBH, 3H, 1H 		//53D2 	C7BB
		BRA 	53D8H 			//53D4 	1001

		//;display.c: 24: else DisBuf[1] &=~(1<<3);
		BCR 	BBH, 3H, 1H 		//53D6 	D7BB

		//;display.c: 25: if(dat&0x20) DisBuf[1] |=(1<<2);
		BTSS 	21H, 5H, 0H 		//53D8 	EA21
		BRA 	53E0H 			//53DA 	1002
		BSR 	BBH, 2H, 1H 		//53DC 	C5BB
		BRA 	53E2H 			//53DE 	1001

		//;display.c: 26: else DisBuf[1] &=~(1<<2);
		BCR 	BBH, 2H, 1H 		//53E0 	D5BB

		//;display.c: 27: if(dat&0x40) DisBuf[1] |=(1<<1);
		BTSS 	21H, 6H, 0H 		//53E2 	EC21
		BRA 	53EAH 			//53E4 	1002
		BSR 	BBH, 1H, 1H 		//53E6 	C3BB
		RET 	0H 			//53E8 	4012

		//;display.c: 28: else DisBuf[1] &=~(1<<1);
		BCR 	BBH, 1H, 1H 		//53EA 	D3BB
		RET 	0H 			//53EC 	4012

		//;irkey.c: 16: TRISDbits.TRISD4 = 1;
		BSR 	95H, 4H, 0H 		//53EE 	C895

		//;irkey.c: 17: AFP14bits.T3CAP = 0B10;
		MOVLB 	FH 			//53F0 	410F
		LDR 	56H, 0H, 1H 		//53F2 	9156
		ANDWI 	9FH 			//53F4 	4B9F
		IORWI 	40H 			//53F6 	4940
		STR 	56H, 1H 			//53F8 	AF56

		//;irkey.c: 19: PCKEN1bits.T3CKEN = 1;
		BSR 	28H, 3H, 1H 		//53FA 	C728

		//;irkey.c: 21: T3CR1bits.T3CKS = 0B001;
		LDR 	ABH, 0H, 0H 		//53FC 	90AB
		ANDWI 	CFH 			//53FE 	4BCF
		IORWI 	10H 			//5400 	4910
		STR 	ABH, 0H 			//5402 	AEAB

		//;irkey.c: 22: T3CR1bits.T3PSC = 0B100;
		LDR 	ABH, 0H, 0H 		//5404 	90AB
		ANDWI 	F1H 			//5406 	4BF1
		IORWI 	8H 			//5408 	4908
		STR 	ABH, 0H 			//540A 	AEAB

		//;irkey.c: 24: T3CNTRL = 0;
		LDWI 	0H 			//540C 	4E00
		STR 	AEH, 0H 			//540E 	AEAE

		//;irkey.c: 25: T3CNTRH = 0;
		LDWI 	0H 			//5410 	4E00
		STR 	AFH, 0H 			//5412 	AEAF

		//;irkey.c: 27: T3CCPRL = 0;
		LDWI 	0H 			//5414 	4E00
		STR 	B0H, 0H 			//5416 	AEB0

		//;irkey.c: 28: T3CCPRH = 0;
		LDWI 	0H 			//5418 	4E00
		STR 	B1H, 0H 			//541A 	AEB1

		//;irkey.c: 30: T3CR2bits.T3CAPMOD = 0B10;
		LDR 	ACH, 0H, 0H 		//541C 	90AC
		ANDWI 	3FH 			//541E 	4B3F
		IORWI 	80H 			//5420 	4980
		STR 	ACH, 0H 			//5422 	AEAC

		//;irkey.c: 31: T3CR2bits.T3CAPPSC = 0B00;
		LDWI 	CFH 			//5424 	4ECF
		ANDWR 	ACH, 1H, 0H 	//5426 	56AC

		//;irkey.c: 32: T3CR2bits.T3CAPE = 1;
		BSR 	ACH, 3H, 0H 		//5428 	C6AC

		//;irkey.c: 33: T3CR3bits.T3CCM = 1;
		BSR 	ADH, 0H, 0H 		//542A 	C0AD

		//;irkey.c: 35: T3CR2bits.T3COME = 0;
		BCR 	ACH, 0H, 0H 		//542C 	D0AC

		//;irkey.c: 37: T3CR1bits.T3CCIE = 1;
		BSR 	ABH, 7H, 0H 		//542E 	CEAB

		//;irkey.c: 38: T3CR3bits.T3CCIF = 0;
		BCR 	ADH, 7H, 0H 		//5430 	DEAD

		//;irkey.c: 39: T3CR1bits.T3IE = 1;
		BSR 	ABH, 6H, 0H 		//5432 	CCAB

		//;irkey.c: 40: T3CR3bits.T3IF = 0;
		BCR 	ADH, 6H, 0H 		//5434 	DCAD

		//;irkey.c: 42: IPEN = 0;
		BCR 	9CH, 7H, 0H 		//5436 	DE9C

		//;irkey.c: 43: GIE = 1;
		BSR 	F2H, 7H, 0H 		//5438 	CEF2

		//;irkey.c: 44: PEIE = 1;
		BSR 	F2H, 6H, 0H 		//543A 	CCF2

		//;irkey.c: 46: T3CR1bits.T3CEN = 1;
		BSR 	ABH, 0H, 0H 		//543C 	C0AB
		RET 	0H 			//543E 	4012
		LDWI 	0H 			//5440 	4E00
		STR 	15H, 0H 			//5442 	AE15
		LDWI 	0H 			//5444 	4E00
		STR 	14H, 0H 			//5446 	AE14
		LDR 	11H, 0H, 0H 		//5448 	9011
		IORWR 	12H, 0H, 0H 	//544A 	5012
		BTSC 	D8H, 2H, 0H 		//544C 	F4D8
		BRA 	5488H 			//544E 	101C
		LDWI 	1H 			//5450 	4E01
		STR 	13H, 0H 			//5452 	AE13
		BRA 	545EH 			//5454 	1004
		BCR 	D8H, 0H, 0H 		//5456 	D0D8
		RLCR 	11H, 1H, 0H 		//5458 	7611
		RLCR 	12H, 1H, 0H 		//545A 	7612
		INCR 	13H, 1H, 0H 		//545C 	6A13
		BTSS 	12H, 7H, 0H 		//545E 	EE12
		BRA 	6456H 			//5460 	17FA
		BCR 	D8H, 0H, 0H 		//5462 	D0D8
		RLCR 	14H, 1H, 0H 		//5464 	7614
		RLCR 	15H, 1H, 0H 		//5466 	7615
		LDR 	11H, 0H, 0H 		//5468 	9011
		SUBWR 	FH, 0H, 0H 		//546A 	9C0F
		LDR 	12H, 0H, 0H 		//546C 	9012
		SUBWRB 	10H, 0H, 0H 	//546E 	9810
		BTSS 	D8H, 0H, 0H 		//5470 	E0D8
		BRA 	547EH 			//5472 	1005
		LDR 	11H, 0H, 0H 		//5474 	9011
		SUBWR 	FH, 1H, 0H 		//5476 	9E0F
		LDR 	12H, 0H, 0H 		//5478 	9012
		SUBWRB 	10H, 1H, 0H 	//547A 	9A10
		BSR 	14H, 0H, 0H 		//547C 	C014
		BCR 	D8H, 0H, 0H 		//547E 	D0D8
		RRCR 	12H, 1H, 0H 		//5480 	7212
		RRCR 	11H, 1H, 0H 		//5482 	7211
		DECRSZ 	13H, 1H, 0H 	//5484 	6E13
		BRA 	6462H 			//5486 	17ED
		MOVFF 	14H, FH 		//5488 	0014 300F
		MOVFF 	15H, 10H 		//548C 	0015 3010
		RET 	0H 			//5490 	4012

		//;beep.c: 7: static u16 i = 0;;beep.c: 8: if(value)
		LDR 	10H, 0H, 0H 		//5492 	9010
		IORWR 	11H, 0H, 0H 	//5494 	5011
		BTSC 	D8H, 2H, 0H 		//5496 	F4D8
		BRA 	54C6H 			//5498 	1016

		//;beep.c: 9: {;beep.c: 10: if(i==0)
		MOVLB 	0H 			//549A 	4100
		LDR 	93H, 0H, 1H 		//549C 	9193
		IORWR 	94H, 0H, 1H 	//549E 	5194
		BTSS 	D8H, 2H, 0H 		//54A0 	E4D8
		RET 	0H 			//54A2 	4012

		//;beep.c: 11: {;beep.c: 12: i=1;
		LDWI 	0H 			//54A4 	4E00
		STR 	94H, 1H 			//54A6 	AF94
		LDWI 	1H 			//54A8 	4E01
		STR 	93H, 1H 			//54AA 	AF93

		//;beep.c: 13: BeepEnable(1);
		LDWI 	1H 			//54AC 	4E01
		LCALL 	5D7CH, 0H 		//54AE 	2CBE 302E

		//;beep.c: 14: DelayMs(50);
		LDWI 	0H 			//54B2 	4E00
		STR 	CH, 0H 			//54B4 	AE0C
		LDWI 	32H 			//54B6 	4E32
		STR 	BH, 0H 			//54B8 	AE0B
		LCALL 	5B14H, 0H 		//54BA 	2C8A 302D

		//;beep.c: 15: BeepEnable(0);
		LDWI 	0H 			//54BE 	4E00
		LCALL 	5D7CH, 0H 		//54C0 	2CBE 302E
		RET 	0H 			//54C4 	4012

		//;beep.c: 18: else;beep.c: 19: {;beep.c: 20: if(i)
		MOVLB 	0H 			//54C6 	4100
		LDR 	93H, 0H, 1H 		//54C8 	9193
		IORWR 	94H, 0H, 1H 	//54CA 	5194
		BTSC 	D8H, 2H, 0H 		//54CC 	F4D8
		RET 	0H 			//54CE 	4012

		//;beep.c: 21: {;beep.c: 22: BeepEnable(0);
		LDWI 	0H 			//54D0 	4E00
		LCALL 	5D7CH, 0H 		//54D2 	2CBE 302E

		//;beep.c: 23: i=0;
		LDWI 	0H 			//54D6 	4E00
		MOVLB 	0H 			//54D8 	4100
		STR 	94H, 1H 			//54DA 	AF94
		LDWI 	0H 			//54DC 	4E00
		STR 	93H, 1H 			//54DE 	AF93
		RET 	0H 			//54E0 	4012
		STR 	AH, 0H 			//54E2 	AE0A

		//;display.c: 288: if(dat&0x01) DisBuf[10] |=(1<<7);
		BTSS 	AH, 0H, 0H 		//54E4 	E00A
		BRA 	54EEH 			//54E6 	1003
		MOVLB 	0H 			//54E8 	4100
		BSR 	C4H, 7H, 1H 		//54EA 	CFC4
		BRA 	54F2H 			//54EC 	1002

		//;display.c: 289: else DisBuf[10] &=~(1<<7);
		MOVLB 	0H 			//54EE 	4100
		BCR 	C4H, 7H, 1H 		//54F0 	DFC4

		//;display.c: 290: if(dat&0x02) DisBuf[10] |=(1<<6);
		BTSS 	AH, 1H, 0H 		//54F2 	E20A
		BRA 	54FAH 			//54F4 	1002
		BSR 	C4H, 6H, 1H 		//54F6 	CDC4
		BRA 	54FCH 			//54F8 	1001

		//;display.c: 291: else DisBuf[10] &=~(1<<6);
		BCR 	C4H, 6H, 1H 		//54FA 	DDC4

		//;display.c: 292: if(dat&0x04) DisBuf[10] |=(1<<5);
		BTSS 	AH, 2H, 0H 		//54FC 	E40A
		BRA 	5504H 			//54FE 	1002
		BSR 	C4H, 5H, 1H 		//5500 	CBC4
		BRA 	5506H 			//5502 	1001

		//;display.c: 293: else DisBuf[10] &=~(1<<5);
		BCR 	C4H, 5H, 1H 		//5504 	DBC4

		//;display.c: 294: if(dat&0x08) DisBuf[10] |=(1<<4);
		BTSS 	AH, 3H, 0H 		//5506 	E60A
		BRA 	550EH 			//5508 	1002
		BSR 	C4H, 4H, 1H 		//550A 	C9C4
		BRA 	5510H 			//550C 	1001

		//;display.c: 295: else DisBuf[10] &=~(1<<4);
		BCR 	C4H, 4H, 1H 		//550E 	D9C4

		//;display.c: 296: if(dat&0x10) DisBuf[10] |=(1<<3);
		BTSS 	AH, 4H, 0H 		//5510 	E80A
		BRA 	5518H 			//5512 	1002
		BSR 	C4H, 3H, 1H 		//5514 	C7C4
		BRA 	551AH 			//5516 	1001

		//;display.c: 297: else DisBuf[10] &=~(1<<3);
		BCR 	C4H, 3H, 1H 		//5518 	D7C4

		//;display.c: 298: if(dat&0x20) DisBuf[10] |=(1<<2);
		BTSS 	AH, 5H, 0H 		//551A 	EA0A
		BRA 	5522H 			//551C 	1002
		BSR 	C4H, 2H, 1H 		//551E 	C5C4
		BRA 	5524H 			//5520 	1001

		//;display.c: 299: else DisBuf[10] &=~(1<<2);
		BCR 	C4H, 2H, 1H 		//5522 	D5C4

		//;display.c: 300: if(dat&0x40) DisBuf[10] |=(1<<1);
		BTSS 	AH, 6H, 0H 		//5524 	EC0A
		BRA 	552CH 			//5526 	1002
		BSR 	C4H, 1H, 1H 		//5528 	C3C4
		RET 	0H 			//552A 	4012

		//;display.c: 301: else DisBuf[10] &=~(1<<1);
		BCR 	C4H, 1H, 1H 		//552C 	D3C4
		RET 	0H 			//552E 	4012
		STR 	AH, 0H 			//5530 	AE0A

		//;display.c: 249: if(dat&0x01) DisBuf[12] |=(1<<7);
		BTSS 	AH, 0H, 0H 		//5532 	E00A
		BRA 	553CH 			//5534 	1003
		MOVLB 	0H 			//5536 	4100
		BSR 	C6H, 7H, 1H 		//5538 	CFC6
		BRA 	5540H 			//553A 	1002

		//;display.c: 250: else DisBuf[12] &=~(1<<7);
		MOVLB 	0H 			//553C 	4100
		BCR 	C6H, 7H, 1H 		//553E 	DFC6

		//;display.c: 251: if(dat&0x02) DisBuf[12] |=(1<<6);
		BTSS 	AH, 1H, 0H 		//5540 	E20A
		BRA 	5548H 			//5542 	1002
		BSR 	C6H, 6H, 1H 		//5544 	CDC6
		BRA 	554AH 			//5546 	1001

		//;display.c: 252: else DisBuf[12] &=~(1<<6);
		BCR 	C6H, 6H, 1H 		//5548 	DDC6

		//;display.c: 253: if(dat&0x04) DisBuf[12] |=(1<<5);
		BTSS 	AH, 2H, 0H 		//554A 	E40A
		BRA 	5552H 			//554C 	1002
		BSR 	C6H, 5H, 1H 		//554E 	CBC6
		BRA 	5554H 			//5550 	1001

		//;display.c: 254: else DisBuf[12] &=~(1<<5);
		BCR 	C6H, 5H, 1H 		//5552 	DBC6

		//;display.c: 255: if(dat&0x08) DisBuf[12] |=(1<<4);
		BTSS 	AH, 3H, 0H 		//5554 	E60A
		BRA 	555CH 			//5556 	1002
		BSR 	C6H, 4H, 1H 		//5558 	C9C6
		BRA 	555EH 			//555A 	1001

		//;display.c: 256: else DisBuf[12] &=~(1<<4);
		BCR 	C6H, 4H, 1H 		//555C 	D9C6

		//;display.c: 257: if(dat&0x10) DisBuf[12] |=(1<<3);
		BTSS 	AH, 4H, 0H 		//555E 	E80A
		BRA 	5566H 			//5560 	1002
		BSR 	C6H, 3H, 1H 		//5562 	C7C6
		BRA 	5568H 			//5564 	1001

		//;display.c: 258: else DisBuf[12] &=~(1<<3);
		BCR 	C6H, 3H, 1H 		//5566 	D7C6

		//;display.c: 259: if(dat&0x20) DisBuf[12] |=(1<<2);
		BTSS 	AH, 5H, 0H 		//5568 	EA0A
		BRA 	5570H 			//556A 	1002
		BSR 	C6H, 2H, 1H 		//556C 	C5C6
		BRA 	5572H 			//556E 	1001

		//;display.c: 260: else DisBuf[12] &=~(1<<2);
		BCR 	C6H, 2H, 1H 		//5570 	D5C6

		//;display.c: 261: if(dat&0x40) DisBuf[12] |=(1<<1);
		BTSS 	AH, 6H, 0H 		//5572 	EC0A
		BRA 	557AH 			//5574 	1002
		BSR 	C6H, 1H, 1H 		//5576 	C3C6
		RET 	0H 			//5578 	4012

		//;display.c: 262: else DisBuf[12] &=~(1<<1);
		BCR 	C6H, 1H, 1H 		//557A 	D3C6
		RET 	0H 			//557C 	4012
		STR 	AH, 0H 			//557E 	AE0A

		//;display.c: 232: if(dat&0x01) DisBuf[13] |=(1<<7);
		BTSS 	AH, 0H, 0H 		//5580 	E00A
		BRA 	558AH 			//5582 	1003
		MOVLB 	0H 			//5584 	4100
		BSR 	C7H, 7H, 1H 		//5586 	CFC7
		BRA 	558EH 			//5588 	1002

		//;display.c: 233: else DisBuf[13] &=~(1<<7);
		MOVLB 	0H 			//558A 	4100
		BCR 	C7H, 7H, 1H 		//558C 	DFC7

		//;display.c: 234: if(dat&0x02) DisBuf[13] |=(1<<6);
		BTSS 	AH, 1H, 0H 		//558E 	E20A
		BRA 	5596H 			//5590 	1002
		BSR 	C7H, 6H, 1H 		//5592 	CDC7
		BRA 	5598H 			//5594 	1001

		//;display.c: 235: else DisBuf[13] &=~(1<<6);
		BCR 	C7H, 6H, 1H 		//5596 	DDC7

		//;display.c: 236: if(dat&0x04) DisBuf[13] |=(1<<5);
		BTSS 	AH, 2H, 0H 		//5598 	E40A
		BRA 	55A0H 			//559A 	1002
		BSR 	C7H, 5H, 1H 		//559C 	CBC7
		BRA 	55A2H 			//559E 	1001

		//;display.c: 237: else DisBuf[13] &=~(1<<5);
		BCR 	C7H, 5H, 1H 		//55A0 	DBC7

		//;display.c: 238: if(dat&0x08) DisBuf[13] |=(1<<4);
		BTSS 	AH, 3H, 0H 		//55A2 	E60A
		BRA 	55AAH 			//55A4 	1002
		BSR 	C7H, 4H, 1H 		//55A6 	C9C7
		BRA 	55ACH 			//55A8 	1001

		//;display.c: 239: else DisBuf[13] &=~(1<<4);
		BCR 	C7H, 4H, 1H 		//55AA 	D9C7

		//;display.c: 240: if(dat&0x10) DisBuf[13] |=(1<<3);
		BTSS 	AH, 4H, 0H 		//55AC 	E80A
		BRA 	55B4H 			//55AE 	1002
		BSR 	C7H, 3H, 1H 		//55B0 	C7C7
		BRA 	55B6H 			//55B2 	1001

		//;display.c: 241: else DisBuf[13] &=~(1<<3);
		BCR 	C7H, 3H, 1H 		//55B4 	D7C7

		//;display.c: 242: if(dat&0x20) DisBuf[13] |=(1<<2);
		BTSS 	AH, 5H, 0H 		//55B6 	EA0A
		BRA 	55BEH 			//55B8 	1002
		BSR 	C7H, 2H, 1H 		//55BA 	C5C7
		BRA 	55C0H 			//55BC 	1001

		//;display.c: 243: else DisBuf[13] &=~(1<<2);
		BCR 	C7H, 2H, 1H 		//55BE 	D5C7

		//;display.c: 244: if(dat&0x40) DisBuf[13] |=(1<<1);
		BTSS 	AH, 6H, 0H 		//55C0 	EC0A
		BRA 	55C8H 			//55C2 	1002
		BSR 	C7H, 1H, 1H 		//55C4 	C3C7
		RET 	0H 			//55C6 	4012

		//;display.c: 245: else DisBuf[13] &=~(1<<1);
		BCR 	C7H, 1H, 1H 		//55C8 	D3C7
		RET 	0H 			//55CA 	4012
		STR 	12H, 0H 			//55CC 	AE12

		//;setsysdata.c: 569: switch (Mode_Status)
		BRA 	55F8H 			//55CE 	1014

		//;setsysdata.c: 572: if (Engineering_Pattern.Time >= 5)
		LDWI 	4H 			//55D0 	4E04
		BRA 	55ECH 			//55D2 	100C

		//;setsysdata.c: 573: {;setsysdata.c: 574: Engineering_Pattern.Time = 0;
		LDWI 	0H 			//55D4 	4E00
		STR 	61H, 1H 			//55D6 	AF61

		//;setsysdata.c: 575: Engineering_Pattern.Return_Flag = 1;
		LDWI 	1H 			//55D8 	4E01
		STR 	65H, 1H 			//55DA 	AF65

		//;setsysdata.c: 576: BeepCtr1(2);
		LDWI 	0H 			//55DC 	4E00
		STR 	11H, 0H 			//55DE 	AE11
		LDWI 	2H 			//55E0 	4E02
		STR 	10H, 0H 			//55E2 	AE10
		LCALL 	5492H, 0H 		//55E4 	2C49 302A
		RET 	0H 			//55E8 	4012

		//;setsysdata.c: 580: if (Engineering_Pattern.Time >= 10)
		LDWI 	9H 			//55EA 	4E09
		MOVLB 	0H 			//55EC 	4100
		CPRSGT 	61H, 1H 		//55EE 	A561
		RET 	0H 			//55F0 	4012
		BRA 	65D4H 			//55F2 	17F0

		//;setsysdata.c: 604: if (Engineering_Pattern.Time >= 15)
		LDWI 	EH 			//55F4 	4E0E
		BRA 	65ECH 			//55F6 	17FA
		LDR 	12H, 0H, 0H 		//55F8 	9012
		XORWI 	1H 			//55FA 	4A01
		BTSC 	D8H, 2H, 0H 		//55FC 	F4D8
		BRA 	65D0H 			//55FE 	17E8
		XORWI 	3H 			//5600 	4A03
		BTSC 	D8H, 2H, 0H 		//5602 	F4D8
		BRA 	65EAH 			//5604 	17F2
		XORWI 	1H 			//5606 	4A01
		BTSC 	D8H, 2H, 0H 		//5608 	F4D8
		BRA 	65F4H 			//560A 	17F4
		XORWI 	7H 			//560C 	4A07
		BTSC 	D8H, 2H, 0H 		//560E 	F4D8
		BRA 	65F4H 			//5610 	17F1
		XORWI 	1H 			//5612 	4A01
		BTSS 	D8H, 2H, 0H 		//5614 	E4D8
		RET 	0H 			//5616 	4012
		BRA 	65F4H 			//5618 	17ED
		STR 	AH, 0H 			//561A 	AE0A

		//;display.c: 757: if(a == 1)
		DECR 	AH, 0H, 0H 		//561C 	440A
		BTSS 	D8H, 2H, 0H 		//561E 	E4D8
		BRA 	5640H 			//5620 	100F

		//;display.c: 758: {;display.c: 759: DisBuf[1] |=(1<<6);
		MOVLB 	0H 			//5622 	4100
		BSR 	BBH, 6H, 1H 		//5624 	CDBB

		//;display.c: 760: DisBuf[1] |=(1<<5);
		BSR 	BBH, 5H, 1H 		//5626 	CBBB

		//;display.c: 761: DisBuf[1] |=(1<<1);
		BSR 	BBH, 1H, 1H 		//5628 	C3BB

		//;display.c: 762: DisBuf[1] &= ~(1<<2);
		BCR 	BBH, 2H, 1H 		//562A 	D5BB

		//;display.c: 763: DisBuf[1] &= ~(1<<3);
		BCR 	BBH, 3H, 1H 		//562C 	D7BB

		//;display.c: 764: DisBuf[1] &= ~(1<<4);
		BCR 	BBH, 4H, 1H 		//562E 	D9BB

		//;display.c: 765: DisBuf[1] &= ~(1<<7);
		BCR 	BBH, 7H, 1H 		//5630 	DFBB

		//;display.c: 767: DisBuf[0] |=(1<<3);
		BSR 	BAH, 3H, 1H 		//5632 	C7BA

		//;display.c: 768: DisBuf[0] |=(1<<2);
		BSR 	BAH, 2H, 1H 		//5634 	C5BA

		//;display.c: 769: DisBuf[0] |=(1<<1);
		BSR 	BAH, 1H, 1H 		//5636 	C3BA

		//;display.c: 770: DisBuf[0] &= ~(1<<4);
		BCR 	BAH, 4H, 1H 		//5638 	D9BA

		//;display.c: 771: DisBuf[0] &= ~(1<<5);
		BCR 	BAH, 5H, 1H 		//563A 	DBBA

		//;display.c: 772: DisBuf[0] &= ~(1<<6);
		BCR 	BAH, 6H, 1H 		//563C 	DDBA

		//;display.c: 773: DisBuf[0] &= ~(1<<7);
		BCR 	BAH, 7H, 1H 		//563E 	DFBA

		//;display.c: 774: };display.c: 775: if(a == 0)
		LDR 	AH, 0H, 0H 		//5640 	900A
		BTSS 	D8H, 2H, 0H 		//5642 	E4D8
		RET 	0H 			//5644 	4012

		//;display.c: 776: {;display.c: 777: DisBuf[1] |=(1<<1);
		MOVLB 	0H 			//5646 	4100
		BSR 	BBH, 1H, 1H 		//5648 	C3BB

		//;display.c: 778: DisBuf[1] &= ~(1<<2);
		BCR 	BBH, 2H, 1H 		//564A 	D5BB

		//;display.c: 779: DisBuf[1] &= ~(1<<3);
		BCR 	BBH, 3H, 1H 		//564C 	D7BB

		//;display.c: 780: DisBuf[1] &= ~(1<<4);
		BCR 	BBH, 4H, 1H 		//564E 	D9BB

		//;display.c: 781: DisBuf[1] &= ~(1<<5);
		BCR 	BBH, 5H, 1H 		//5650 	DBBB

		//;display.c: 782: DisBuf[1] &= ~(1<<6);
		BCR 	BBH, 6H, 1H 		//5652 	DDBB

		//;display.c: 783: DisBuf[1] &= ~(1<<7);
		BCR 	BBH, 7H, 1H 		//5654 	DFBB

		//;display.c: 785: DisBuf[0] |=(1<<1);
		BSR 	BAH, 1H, 1H 		//5656 	C3BA

		//;display.c: 786: DisBuf[0] &= ~(1<<2);
		BCR 	BAH, 2H, 1H 		//5658 	D5BA

		//;display.c: 787: DisBuf[0] &= ~(1<<3);
		BCR 	BAH, 3H, 1H 		//565A 	D7BA

		//;display.c: 788: DisBuf[0] &= ~(1<<4);
		BCR 	BAH, 4H, 1H 		//565C 	D9BA

		//;display.c: 789: DisBuf[0] &= ~(1<<5);
		BCR 	BAH, 5H, 1H 		//565E 	DBBA

		//;display.c: 790: DisBuf[0] &= ~(1<<6);
		BCR 	BAH, 6H, 1H 		//5660 	DDBA

		//;display.c: 791: DisBuf[0] &= ~(1<<7);
		BCR 	BAH, 7H, 1H 		//5662 	DFBA
		RET 	0H 			//5664 	4012

		//;voice.c: 175: static u16 count = 0;;voice.c: 176: if(RunData.SOSFlag)
		MOVLB 	1H 			//5666 	4101
		LDR 	1H, 0H, 1H 		//5668 	9101
		BTSC 	D8H, 2H, 0H 		//566A 	F4D8
		BRA 	56A4H 			//566C 	101B

		//;voice.c: 177: {;voice.c: 178: if(count<1000)
		LDWI 	E8H 			//566E 	4EE8
		MOVLB 	0H 			//5670 	4100
		SUBWR 	8DH, 0H, 1H 	//5672 	9D8D
		LDWI 	3H 			//5674 	4E03
		SUBWRB 	8EH, 0H, 1H 	//5676 	998E
		BTSC 	D8H, 0H, 0H 		//5678 	F0D8
		BRA 	5680H 			//567A 	1002

		//;voice.c: 179: {;voice.c: 180: RunData.VoiceNum = is_anyone_there;
		LDWI 	23H 			//567C 	4E23
		BRA 	568EH 			//567E 	1007

		//;voice.c: 182: else if(count<2000)
		LDWI 	D0H 			//5680 	4ED0
		SUBWR 	8DH, 0H, 1H 	//5682 	9D8D
		LDWI 	7H 			//5684 	4E07
		SUBWRB 	8EH, 0H, 1H 	//5686 	998E
		BTSC 	D8H, 0H, 0H 		//5688 	F0D8
		BRA 	5694H 			//568A 	1004

		//;voice.c: 183: {;voice.c: 184: RunData.VoiceNum = NULL2;
		LDWI 	1H 			//568C 	4E01
		MOVLB 	1H 			//568E 	4101
		STR 	2FH, 1H 			//5690 	AF2F

		//;voice.c: 185: }
		BRA 	569CH 			//5692 	1004

		//;voice.c: 186: else;voice.c: 187: {;voice.c: 188: count = 0;
		LDWI 	0H 			//5694 	4E00
		STR 	8EH, 1H 			//5696 	AF8E
		LDWI 	0H 			//5698 	4E00
		STR 	8DH, 1H 			//569A 	AF8D

		//;voice.c: 189: };voice.c: 190: count++;
		MOVLB 	0H 			//569C 	4100
		INRSNZ 	8DH, 1H, 1H 	//569E 	8B8D
		INCR 	8EH, 1H, 1H 		//56A0 	6B8E

		//;voice.c: 191: }
		RET 	0H 			//56A2 	4012

		//;voice.c: 192: else;voice.c: 193: {;voice.c: 194: count = 0;
		LDWI 	0H 			//56A4 	4E00
		MOVLB 	0H 			//56A6 	4100
		STR 	8EH, 1H 			//56A8 	AF8E
		LDWI 	0H 			//56AA 	4E00
		STR 	8DH, 1H 			//56AC 	AF8D
		RET 	0H 			//56AE 	4012

		//;control.c: 57: if (isEmpty(stack)) {
		MOVFF 	EH, AH 		//56B0 	000E 300A
		MOVFF 	FH, BH 		//56B4 	000F 300B
		LCALL 	5CC4H, 0H 		//56B8 	2C62 302E
		LDR 	AH, 0H, 0H 		//56BC 	900A
		IORWR 	BH, 0H, 0H 		//56BE 	500B
		BTSC 	D8H, 2H, 0H 		//56C0 	F4D8
		BRA 	56CAH 			//56C2 	1003

		//;control.c: 58: return -1;
		SETR 	EH, 0H 			//56C4 	A80E
		SETR 	FH, 0H 			//56C6 	A80F
		RET 	0H 			//56C8 	4012

		//;control.c: 59: };control.c: 60: return stack->data[stack->top];
		LFSR 	2H, 140H 		//56CA 	2E20 3014
		LDR 	EH, 0H, 0H 		//56CE 	900E
		ADDWR 	D9H, 1H, 0H 	//56D0 	66D9
		LDR 	FH, 0H, 0H 		//56D2 	900F
		ADDWRC 	DAH, 1H, 0H 	//56D4 	62DA
		MOVFF 	FDEH, 10H 		//56D6 	0FDE 3010
		MOVFF 	FDDH, 11H 		//56DA 	0FDD 3011
		BCR 	D8H, 0H, 0H 		//56DE 	D0D8
		RLCR 	10H, 1H, 0H 		//56E0 	7610
		RLCR 	11H, 1H, 0H 		//56E2 	7611
		LDR 	10H, 0H, 0H 		//56E4 	9010
		ADDWR 	EH, 0H, 0H 		//56E6 	640E
		STR 	D9H, 0H 			//56E8 	AED9
		LDR 	11H, 0H, 0H 		//56EA 	9011
		ADDWRC 	FH, 0H, 0H 	//56EC 	600F
		STR 	DAH, 0H 			//56EE 	AEDA
		MOVFF 	FDEH, EH 		//56F0 	0FDE 300E
		MOVFF 	FDDH, FH 		//56F4 	0FDD 300F
		RET 	0H 			//56F8 	4012

		//;tm1629b.c: 224: u8 i;;tm1629b.c: 225: LATAbits.LATA1 = 1;
		BSR 	89H, 1H, 0H 		//56FA 	C289

		//;tm1629b.c: 226: LATAbits.LATA0 = 1;
		BSR 	89H, 0H, 0H 		//56FC 	C089

		//;tm1629b.c: 228: LATAbits.LATA2 = 1;
		BSR 	89H, 2H, 0H 		//56FE 	C489

		//;tm1629b.c: 229: Nop1629(10) ;
		LDWI 	0H 			//5700 	4E00
		STR 	BH, 0H 			//5702 	AE0B
		LDWI 	AH 			//5704 	4E0A
		STR 	AH, 0H 			//5706 	AE0A
		LCALL 	5F14H, 0H 		//5708 	2C8A 302F

		//;tm1629b.c: 230: TM1629_WriteCommand(0x40) ;
		LDWI 	40H 			//570C 	4E40
		LCALL 	5E18H, 0H 		//570E 	2C0C 302F

		//;tm1629b.c: 233: LATAbits.LATA2 = 1 ;
		BSR 	89H, 2H, 0H 		//5712 	C489

		//;tm1629b.c: 234: Nop1629(10) ;
		LDWI 	0H 			//5714 	4E00
		STR 	BH, 0H 			//5716 	AE0B
		LDWI 	AH 			//5718 	4E0A
		STR 	AH, 0H 			//571A 	AE0A
		LCALL 	5F14H, 0H 		//571C 	2C8A 302F

		//;tm1629b.c: 235: TM1629_WriteCommand(0xC0);
		LDWI 	C0H 			//5720 	4EC0
		LCALL 	5E18H, 0H 		//5722 	2C0C 302F

		//;tm1629b.c: 238: for(i=0;i<16;i++)
		LDWI 	0H 			//5726 	4E00
		STR 	10H, 0H 			//5728 	AE10

		//;tm1629b.c: 239: TM1629_WriteByteData(*InDat++);
		LDR 	FH, 0H, 0H 		//572A 	900F
		STR 	D9H, 0H 			//572C 	AED9
		CLRR 	DAH, 0H 		//572E 	AADA
		LDR 	DFH, 0H, 0H 		//5730 	90DF
		LCALL 	578AH, 0H 		//5732 	2CC5 302B
		INCR 	FH, 1H, 0H 		//5736 	6A0F
		INCR 	10H, 1H, 0H 		//5738 	6A10
		LDWI 	FH 			//573A 	4E0F
		CPRSGT 	10H, 0H 		//573C 	A410
		BRA 	672AH 			//573E 	17F5
		RET 	0H 			//5740 	4012

		//;encoder.c: 78: EncoderCount = Get_EC11_Count();
		LCALL 	5D60H, 0H 		//5742 	2CB0 302E
		MOVFF 	AH, EH 		//5746 	000A 300E
		MOVFF 	BH, FH 		//574A 	000B 300F

		//;encoder.c: 79: RunData.FlowSet+=EncoderCount;
		LDR 	EH, 0H, 0H 		//574E 	900E
		ADDWR 	4H, 1H, 1H 		//5750 	6704
		LDR 	FH, 0H, 0H 		//5752 	900F
		ADDWRC 	5H, 1H, 1H 	//5754 	6305

		//;encoder.c: 80: if(RunData.FlowSet>7*10) RunData.FlowSet = 7*10;
		BTSC 	5H, 7H, 1H 		//5756 	FF05
		BRA 	5770H 			//5758 	100B
		LDR 	5H, 0H, 1H 		//575A 	9105
		BNZ 	5766H 			//575C 	2104
		LDWI 	47H 			//575E 	4E47
		SUBWR 	4H, 0H, 1H 		//5760 	9D04
		BTSS 	D8H, 0H, 0H 		//5762 	E0D8
		BRA 	5770H 			//5764 	1005
		LDWI 	0H 			//5766 	4E00
		STR 	5H, 1H 			//5768 	AF05
		LDWI 	46H 			//576A 	4E46
		STR 	4H, 1H 			//576C 	AF04
		RET 	0H 			//576E 	4012

		//;encoder.c: 81: else if(RunData.FlowSet<5) RunData.FlowSet = 5;
		BTSC 	5H, 7H, 1H 		//5770 	FF05
		BRA 	5780H 			//5772 	1006
		LDR 	5H, 0H, 1H 		//5774 	9105
		BNZ 	5788H 			//5776 	2108
		LDWI 	5H 			//5778 	4E05
		SUBWR 	4H, 0H, 1H 		//577A 	9D04
		BTSC 	D8H, 0H, 0H 		//577C 	F0D8
		RET 	0H 			//577E 	4012
		LDWI 	0H 			//5780 	4E00
		STR 	5H, 1H 			//5782 	AF05
		LDWI 	5H 			//5784 	4E05
		STR 	4H, 1H 			//5786 	AF04
		RET 	0H 			//5788 	4012
		STR 	CH, 0H 			//578A 	AE0C

		//;tm1629b.c: 116: u8 i;;tm1629b.c: 118: Nop1629(10) ;
		LDWI 	0H 			//578C 	4E00
		STR 	BH, 0H 			//578E 	AE0B
		LDWI 	AH 			//5790 	4E0A
		STR 	AH, 0H 			//5792 	AE0A
		LCALL 	5F14H, 0H 		//5794 	2C8A 302F

		//;tm1629b.c: 119: for(i=8;i>0;i--)
		LDWI 	8H 			//5798 	4E08
		STR 	DH, 0H 			//579A 	AE0D

		//;tm1629b.c: 120: {;tm1629b.c: 121: LATAbits.LATA0 = 0;
		BCR 	89H, 0H, 0H 		//579C 	D089

		//;tm1629b.c: 122: if(Data & 0x01)
		BTSS 	CH, 0H, 0H 		//579E 	E00C
		BRA 	57A6H 			//57A0 	1002

		//;tm1629b.c: 123: {;tm1629b.c: 124: LATAbits.LATA1 = 1 ;
		BSR 	89H, 1H, 0H 		//57A2 	C289

		//;tm1629b.c: 125: }
		BRA 	57A8H 			//57A4 	1001

		//;tm1629b.c: 126: else;tm1629b.c: 127: {;tm1629b.c: 128: LATAbits.LATA1 = 0 ;
		BCR 	89H, 1H, 0H 		//57A6 	D289

		//;tm1629b.c: 129: };tm1629b.c: 130: Data >>= 1 ;
		BCR 	D8H, 0H, 0H 		//57A8 	D0D8
		RRCR 	CH, 1H, 0H 		//57AA 	720C

		//;tm1629b.c: 131: Nop1629(10) ;
		LDWI 	0H 			//57AC 	4E00
		STR 	BH, 0H 			//57AE 	AE0B
		LDWI 	AH 			//57B0 	4E0A
		STR 	AH, 0H 			//57B2 	AE0A
		LCALL 	5F14H, 0H 		//57B4 	2C8A 302F

		//;tm1629b.c: 133: LATAbits.LATA0 = 1 ;
		BSR 	89H, 0H, 0H 		//57B8 	C089

		//;tm1629b.c: 134: Nop1629(10) ;
		LDWI 	0H 			//57BA 	4E00
		STR 	BH, 0H 			//57BC 	AE0B
		LDWI 	AH 			//57BE 	4E0A
		STR 	AH, 0H 			//57C0 	AE0A
		LCALL 	5F14H, 0H 		//57C2 	2C8A 302F
		DECR 	DH, 1H, 0H 		//57C6 	460D
		LDR 	DH, 0H, 0H 		//57C8 	900D
		BTSC 	D8H, 2H, 0H 		//57CA 	F4D8
		RET 	0H 			//57CC 	4012
		BRA 	679CH 			//57CE 	17E6
		BRA 	57D8H 			//57D0 	1003
		INCR 	AH, 1H, 0H 		//57D2 	6A0A
		INRSNZ 	BH, 1H, 0H 	//57D4 	8A0B
		INCR 	CH, 1H, 0H 		//57D6 	6A0C
		MOVFF 	BH, FF6H 		//57D8 	000B 3FF6
		MOVFF 	CH, FF7H 		//57DC 	000C 3FF7
		TBLRD*  			//57E0 	4008
		MOVFF 	FF5H, DH 		//57E2 	0FF5 300D
		LDR 	AH, 0H, 0H 		//57E6 	900A
		STR 	D9H, 0H 			//57E8 	AED9
		CLRR 	DAH, 0H 		//57EA 	AADA
		LDR 	DFH, 0H, 0H 		//57EC 	90DF
		STR 	EH, 0H 			//57EE 	AE0E
		LDR 	DH, 0H, 0H 		//57F0 	900D
		SUBWR 	EH, 0H, 0H 		//57F2 	9C0E
		STR 	FH, 0H 			//57F4 	AE0F
		LDR 	FH, 0H, 0H 		//57F6 	900F
		BTSS 	D8H, 2H, 0H 		//57F8 	E4D8
		BRA 	5808H 			//57FA 	1006
		LDR 	AH, 0H, 0H 		//57FC 	900A
		STR 	D9H, 0H 			//57FE 	AED9
		CLRR 	DAH, 0H 		//5800 	AADA
		LDR 	DFH, 0H, 0H 		//5802 	90DF
		BTSS 	D8H, 2H, 0H 		//5804 	E4D8
		BRA 	67D2H 			//5806 	17E5
		LDR 	FH, 0H, 0H 		//5808 	900F
		STR 	AH, 0H 			//580A 	AE0A
		CLRR 	BH, 0H 			//580C 	AA0B
		BTSC 	AH, 7H, 0H 		//580E 	FE0A
		DECR 	BH, 1H, 0H 		//5810 	460B
		RET 	0H 			//5812 	4012
		LDR 	CH, 0H, 0H 		//5814 	900C
		IORWR 	DH, 0H, 0H 		//5816 	500D
		BTSC 	D8H, 2H, 0H 		//5818 	F4D8
		BRA 	584CH 			//581A 	1018
		LDWI 	1H 			//581C 	4E01
		STR 	EH, 0H 			//581E 	AE0E
		BRA 	582AH 			//5820 	1004
		BCR 	D8H, 0H, 0H 		//5822 	D0D8
		RLCR 	CH, 1H, 0H 		//5824 	760C
		RLCR 	DH, 1H, 0H 		//5826 	760D
		INCR 	EH, 1H, 0H 		//5828 	6A0E
		BTSS 	DH, 7H, 0H 		//582A 	EE0D
		BRA 	6822H 			//582C 	17FA
		LDR 	CH, 0H, 0H 		//582E 	900C
		SUBWR 	AH, 0H, 0H 		//5830 	9C0A
		LDR 	DH, 0H, 0H 		//5832 	900D
		SUBWRB 	BH, 0H, 0H 	//5834 	980B
		BTSS 	D8H, 0H, 0H 		//5836 	E0D8
		BRA 	5842H 			//5838 	1004
		LDR 	CH, 0H, 0H 		//583A 	900C
		SUBWR 	AH, 1H, 0H 		//583C 	9E0A
		LDR 	DH, 0H, 0H 		//583E 	900D
		SUBWRB 	BH, 1H, 0H 	//5840 	9A0B
		BCR 	D8H, 0H, 0H 		//5842 	D0D8
		RRCR 	DH, 1H, 0H 		//5844 	720D
		RRCR 	CH, 1H, 0H 		//5846 	720C
		DECRSZ 	EH, 1H, 0H 	//5848 	6E0E
		BRA 	682EH 			//584A 	17F1
		MOVFF 	AH, AH 		//584C 	000A 300A
		MOVFF 	BH, BH 		//5850 	000B 300B
		RET 	0H 			//5854 	4012

		//;uart2.c: 11: PCKEN2bits.UR2CKEN = 1;
		BSR 	29H, 6H, 1H 		//5856 	CD29

		//;uart2.c: 12: TRISFbits.TRISF0 = 1;
		BSR 	97H, 0H, 0H 		//5858 	C097

		//;uart2.c: 13: TRISFbits.TRISF1 = 0;
		BCR 	97H, 1H, 0H 		//585A 	D297

		//;uart2.c: 14: LATEbits.LATE6 = 1;
		BSR 	8DH, 6H, 0H 		//585C 	CC8D

		//;uart2.c: 16: AFP3bits.TX2PO = 0x01;
		LDR 	4BH, 0H, 1H 		//585E 	914B
		ANDWI 	C7H 			//5860 	4BC7
		IORWI 	8H 			//5862 	4908
		STR 	4BH, 1H 			//5864 	AF4B

		//;uart2.c: 17: AFP3bits.RX2PO = 0x01;
		LDR 	4BH, 0H, 1H 		//5866 	914B
		ANDWI 	F8H 			//5868 	4BF8
		IORWI 	1H 			//586A 	4901
		STR 	4BH, 1H 			//586C 	AF4B

		//;uart2.c: 19: UR2CR1bits.UR2HDSEL = 0;
		BCR 	2H, 7H, 1H 		//586E 	DF02

		//;uart2.c: 20: UR2CR1bits.UR2STOP = 0;
		BCR 	2H, 6H, 1H 		//5870 	DD02

		//;uart2.c: 21: UR2CR1bits.UR2MODE = 0;
		BCR 	2H, 5H, 1H 		//5872 	DB02

		//;uart2.c: 22: UR2CR1bits.UR2PCEN = 0;
		BCR 	2H, 3H, 1H 		//5874 	D702

		//;uart2.c: 23: UR2CR1bits.UR2RXEN = 1;
		BSR 	2H, 2H, 1H 		//5876 	C502

		//;uart2.c: 24: UR2CR1bits.UR2TXEN = 1;
		BSR 	2H, 1H, 1H 		//5878 	C302

		//;uart2.c: 26: UR2CR2bits.UR2BDM = 0;
		BCR 	3H, 3H, 1H 		//587A 	D703

		//;uart2.c: 27: UR2CR2bits.UR2BRRH = 0;
		LDWI 	FH 			//587C 	4E0F
		ANDWR 	3H, 1H, 1H 		//587E 	5703

		//;uart2.c: 28: UR2BRRL =104;
		LDWI 	68H 			//5880 	4E68
		STR 	4H, 1H 			//5882 	AF04

		//;uart2.c: 29: UR2CR2bits.UR2RXNEIE = 1;
		BSR 	3H, 1H, 1H 		//5884 	C303

		//;uart2.c: 30: UR2STAT = 0;
		LDWI 	0H 			//5886 	4E00
		STR 	5H, 1H 			//5888 	AF05

		//;uart2.c: 31: INTCON1 = 0B11000000;
		LDWI 	C0H 			//588A 	4EC0
		STR 	F2H, 0H 			//588C 	AEF2

		//;uart2.c: 32: IPEN = 0;
		BCR 	9CH, 7H, 0H 		//588E 	DE9C

		//;uart2.c: 33: UR2CR1bits.UR2EN=1;
		BSR 	2H, 0H, 1H 		//5890 	C102

		//;uart2.c: 34: GIE = 1;
		BSR 	F2H, 7H, 0H 		//5892 	CEF2
		RET 	0H 			//5894 	4012

		//;voice.c: 116: u8 ret = 0;
		LDWI 	0H 			//5896 	4E00
		STR 	16H, 0H 			//5898 	AE16

		//;voice.c: 117: static u8 last = 0;;voice.c: 118: ret = PC6;
		LDWI 	0H 			//589A 	4E00
		BTSC 	82H, 6H, 0H 		//589C 	FC82
		LDWI 	1H 			//589E 	4E01
		STR 	16H, 0H 			//58A0 	AE16

		//;voice.c: 119: if(ret==0) return ret;
		LDR 	16H, 0H, 0H 		//58A2 	9016
		BTSC 	D8H, 2H, 0H 		//58A4 	F4D8
		RET 	0H 			//58A6 	4012

		//;voice.c: 120: if(dat==0) return ret;
		LDR 	11H, 0H, 0H 		//58A8 	9011
		IORWR 	12H, 0H, 0H 	//58AA 	5012
		BTSC 	D8H, 2H, 0H 		//58AC 	F4D8
		RET 	0H 			//58AE 	4012

		//;voice.c: 122: if(last!=dat)
		LDR 	B5H, 0H, 1H 		//58B0 	91B5
		STR 	13H, 0H 			//58B2 	AE13
		CLRR 	14H, 0H 		//58B4 	AA14
		LDR 	11H, 0H, 0H 		//58B6 	9011
		XORWR 	13H, 0H, 0H 	//58B8 	5813
		BNZ 	58C4H 			//58BA 	2104
		LDR 	12H, 0H, 0H 		//58BC 	9012
		XORWR 	14H, 0H, 0H 	//58BE 	5814
		BTSC 	D8H, 2H, 0H 		//58C0 	F4D8
		BRA 	58CAH 			//58C2 	1003

		//;voice.c: 123: PlaySound(dat);
		LDR 	11H, 0H, 0H 		//58C4 	9011
		LCALL 	4AE2H, 0H 		//58C6 	2C71 3025

		//;voice.c: 124: last=dat;
		MOVFF 	11H, B5H 		//58CA 	0011 30B5
		RET 	0H 			//58CE 	4012
		STR 	AH, 0H 			//58D0 	AE0A

		//;display.c: 471: switch(sta)
		BRA 	58F4H 			//58D2 	1010

		//;display.c: 474: LATFbits.LATF2 = 0;
		BCR 	8EH, 2H, 0H 		//58D4 	D48E

		//;display.c: 475: LATCbits.LATC0 = 1;
		BSR 	8BH, 0H, 0H 		//58D6 	C08B

		//;display.c: 476: LATFbits.LATF3 = 0;
		BCR 	8EH, 3H, 0H 		//58D8 	D68E

		//;display.c: 477: break;
		RET 	0H 			//58DA 	4012

		//;display.c: 479: LATFbits.LATF2 = 1;
		BSR 	8EH, 2H, 0H 		//58DC 	C48E

		//;display.c: 480: LATCbits.LATC0 = 0;
		BCR 	8BH, 0H, 0H 		//58DE 	D08B

		//;display.c: 481: LATFbits.LATF3 = 0;
		BCR 	8EH, 3H, 0H 		//58E0 	D68E

		//;display.c: 482: break;
		RET 	0H 			//58E2 	4012

		//;display.c: 484: LATFbits.LATF2 = 0;
		BCR 	8EH, 2H, 0H 		//58E4 	D48E

		//;display.c: 485: LATCbits.LATC0 = 0;
		BCR 	8BH, 0H, 0H 		//58E6 	D08B

		//;display.c: 486: LATFbits.LATF3 = 1;
		BSR 	8EH, 3H, 0H 		//58E8 	C68E

		//;display.c: 487: break;
		RET 	0H 			//58EA 	4012

		//;display.c: 489: LATFbits.LATF2 = 0;
		BCR 	8EH, 2H, 0H 		//58EC 	D48E

		//;display.c: 490: LATCbits.LATC0 = 0;
		BCR 	8BH, 0H, 0H 		//58EE 	D08B

		//;display.c: 491: LATFbits.LATF3 = 0;
		BCR 	8EH, 3H, 0H 		//58F0 	D68E

		//;display.c: 492: break;
		RET 	0H 			//58F2 	4012
		LDR 	AH, 0H, 0H 		//58F4 	900A
		XORWI 	1H 			//58F6 	4A01
		BTSC 	D8H, 2H, 0H 		//58F8 	F4D8
		BRA 	68D4H 			//58FA 	17EC
		XORWI 	3H 			//58FC 	4A03
		BTSC 	D8H, 2H, 0H 		//58FE 	F4D8
		BRA 	68DCH 			//5900 	17ED
		XORWI 	1H 			//5902 	4A01
		BTSC 	D8H, 2H, 0H 		//5904 	F4D8
		BRA 	68E4H 			//5906 	17EE
		BRA 	68ECH 			//5908 	17F1

		//;beep.c: 31: static u16 i = 0;;beep.c: 32: if(value)
		LDR 	BH, 0H, 0H 		//590A 	900B
		IORWR 	CH, 0H, 0H 		//590C 	500C
		BTSC 	D8H, 2H, 0H 		//590E 	F4D8
		BRA 	591AH 			//5910 	1004

		//;beep.c: 33: {;beep.c: 34: i = 0;
		LDWI 	0H 			//5912 	4E00
		STR 	C5H, 1H 			//5914 	AFC5
		LDWI 	0H 			//5916 	4E00
		STR 	C4H, 1H 			//5918 	AFC4

		//;beep.c: 36: };beep.c: 38: if(i>20)
		LDR 	C5H, 0H, 1H 		//591A 	91C5
		BNZ 	5926H 			//591C 	2104
		LDWI 	15H 			//591E 	4E15
		SUBWR 	C4H, 0H, 1H 	//5920 	9DC4
		BTSS 	D8H, 0H, 0H 		//5922 	E0D8
		BRA 	5936H 			//5924 	1008

		//;beep.c: 39: {;beep.c: 40: i = 20;
		LDWI 	0H 			//5926 	4E00
		STR 	C5H, 1H 			//5928 	AFC5
		LDWI 	14H 			//592A 	4E14
		STR 	C4H, 1H 			//592C 	AFC4

		//;beep.c: 41: BeepEnable(0);
		LDWI 	0H 			//592E 	4E00
		LCALL 	5D7CH, 0H 		//5930 	2CBE 302E

		//;beep.c: 42: }
		BRA 	593CH 			//5934 	1003

		//;beep.c: 43: else;beep.c: 44: {;beep.c: 45: BeepEnable(1);
		LDWI 	1H 			//5936 	4E01
		LCALL 	5D7CH, 0H 		//5938 	2CBE 302E

		//;beep.c: 46: };beep.c: 47: i++;
		MOVLB 	1H 			//593C 	4101
		INRSNZ 	C4H, 1H, 1H 	//593E 	8BC4
		INCR 	C5H, 1H, 1H 		//5940 	6BC5
		RET 	0H 			//5942 	4012

		//;uart2.c: 102: if(UR2RXNEIE && UR2RXNEF)
		MOVLB 	FH 			//5944 	410F
		BTSS 	3H, 1H, 1H 		//5946 	E303
		RET 	0H 			//5948 	4012
		BTSS 	5H, 1H, 1H 		//594A 	E305
		RET 	0H 			//594C 	4012

		//;uart2.c: 103: {;uart2.c: 104: sUsart2.RxData[sUsart2.RxNum] = UR2DATL;
		LDWI 	88H 			//594E 	4E88
		MOVLB 	2H 			//5950 	4102
		ADDWR 	9CH, 0H, 1H 	//5952 	659C
		STR 	D9H, 0H 			//5954 	AED9
		LDWI 	2H 			//5956 	4E02
		ADDWRC 	9DH, 0H, 1H 	//5958 	619D
		STR 	DAH, 0H 			//595A 	AEDA
		MOVFF 	F00H, FDFH 		//595C 	0F00 3FDF

		//;uart2.c: 106: sUsart2.RxNum++;
		INRSNZ 	9CH, 1H, 1H 	//5960 	8B9C
		INCR 	9DH, 1H, 1H 		//5962 	6B9D

		//;uart2.c: 107: if(sUsart2.RxNum>=20)
		LDR 	9DH, 0H, 1H 		//5964 	919D
		BNZ 	5970H 			//5966 	2104
		LDWI 	14H 			//5968 	4E14
		SUBWR 	9CH, 0H, 1H 	//596A 	9D9C
		BTSS 	D8H, 0H, 0H 		//596C 	E0D8
		BRA 	5978H 			//596E 	1004

		//;uart2.c: 108: sUsart2.RxNum=20-1;
		LDWI 	0H 			//5970 	4E00
		STR 	9DH, 1H 			//5972 	AF9D
		LDWI 	13H 			//5974 	4E13
		STR 	9CH, 1H 			//5976 	AF9C

		//;uart2.c: 109: sUsart2.RxTimer=0;
		LDWI 	0H 			//5978 	4E00
		STR 	A0H, 1H 			//597A 	AFA0
		RET 	0H 			//597C 	4012

		//;main.c: 532: strongest = TSC_GetCsKey();
		LCALL 	5F94H, 0H 		//597E 	2CCA 302F
		STR 	B9H, 1H 			//5982 	AFB9

		//;main.c: 536: };main.c: 537: Sav_strongest = strongest;
		//;main.c: 534: {
		MOVFF 	B9H, B8H 		//5984 	00B9 30B8

		//;main.c: 540: TSC_GetLocalKey(single);
		LDWI 	E8H 			//5988 	4EE8
		STR 	AH, 0H 			//598A 	AE0A
		LDWI 	1H 			//598C 	4E01
		STR 	BH, 0H 			//598E 	AE0B
		LCALL 	4232H, 0H 		//5990 	2C19 3021

		//;main.c: 544: };main.c: 545: Sav_single[0] = single[0];
		//;main.c: 542: {
		MOVFF 	1E8H, 18AH 		//5994 	01E8 318A
		MOVFF 	1E9H, 18BH 		//5998 	01E9 318B
		MOVFF 	1EAH, 18CH 		//599C 	01EA 318C
		MOVFF 	1EBH, 18DH 		//59A0 	01EB 318D

		//;main.c: 546: Sav_single[1] = single[1];
		MOVFF 	1ECH, 18EH 		//59A4 	01EC 318E
		MOVFF 	1EDH, 18FH 		//59A8 	01ED 318F
		MOVFF 	1EEH, 190H 		//59AC 	01EE 3190
		MOVFF 	1EFH, 191H 		//59B0 	01EF 3191
		RET 	0H 			//59B4 	4012
		LDWI 	0H 			//59B6 	4E00
		STR 	15H, 0H 			//59B8 	AE15
		BTSS 	13H, 7H, 0H 		//59BA 	EE13
		BRA 	59CAH 			//59BC 	1006
		NEGR 	12H, 0H 		//59BE 	AC12
		COMR 	13H, 1H, 0H 		//59C0 	5E13
		BTSC 	D8H, 0H, 0H 		//59C2 	F0D8
		INCR 	13H, 1H, 0H 		//59C4 	6A13
		LDWI 	1H 			//59C6 	4E01
		STR 	15H, 0H 			//59C8 	AE15
		MOVFF 	12H, AH 		//59CA 	0012 300A
		MOVFF 	13H, BH 		//59CE 	0013 300B
		CLRR 	CH, 0H 			//59D2 	AA0C
		LDWI 	8EH 			//59D4 	4E8E
		STR 	DH, 0H 			//59D6 	AE0D
		MOVFF 	15H, EH 		//59D8 	0015 300E
		LCALL 	4526H, 0H 		//59DC 	2C93 3022
		MOVFF 	AH, 12H 		//59E0 	000A 3012
		MOVFF 	BH, 13H 		//59E4 	000B 3013
		MOVFF 	CH, 14H 		//59E8 	000C 3014
		RET 	0H 			//59EC 	4012

		//;uart2.c: 115: u16 i=0;
		LDWI 	0H 			//59EE 	4E00
		STR 	10H, 0H 			//59F0 	AE10
		LDWI 	0H 			//59F2 	4E00
		STR 	FH, 0H 			//59F4 	AE0F

		//;uart2.c: 116: for(i=0; i<len; i++)
		LDWI 	0H 			//59F6 	4E00
		STR 	10H, 0H 			//59F8 	AE10
		LDWI 	0H 			//59FA 	4E00
		STR 	FH, 0H 			//59FC 	AE0F
		BRA 	5A16H 			//59FE 	100B

		//;uart2.c: 117: {;uart2.c: 118: Uart2Send(dat[i]);
		LDR 	FH, 0H, 0H 		//5A00 	900F
		ADDWR 	BH, 0H, 0H 		//5A02 	640B
		STR 	D9H, 0H 			//5A04 	AED9
		LDR 	10H, 0H, 0H 		//5A06 	9010
		ADDWRC 	CH, 0H, 0H 	//5A08 	600C
		STR 	DAH, 0H 			//5A0A 	AEDA
		LDR 	DFH, 0H, 0H 		//5A0C 	90DF
		LCALL 	5F38H, 0H 		//5A0E 	2C9C 302F
		INRSNZ 	FH, 1H, 0H 	//5A12 	8A0F
		INCR 	10H, 1H, 0H 		//5A14 	6A10
		LDR 	DH, 0H, 0H 		//5A16 	900D
		SUBWR 	FH, 0H, 0H 		//5A18 	9C0F
		LDR 	EH, 0H, 0H 		//5A1A 	900E
		SUBWRB 	10H, 0H, 0H 	//5A1C 	9810
		BTSC 	D8H, 0H, 0H 		//5A1E 	F0D8
		RET 	0H 			//5A20 	4012
		BRA 	6A00H 			//5A22 	17EE
		MOVFF 	22H, 2AH 		//5A24 	0022 302A
		CLRR 	2BH, 0H 		//5A28 	AA2B
		LDWI 	0H 			//5A2A 	4E00
		STR 	2CH, 0H 			//5A2C 	AE2C
		LDWI 	0H 			//5A2E 	4E00
		STR 	2DH, 0H 			//5A30 	AE2D
		LDWI 	25H 			//5A32 	4E25
		STR 	29H, 0H 			//5A34 	AE29
		LDWI 	2AH 			//5A36 	4E2A
		STR 	16H, 0H 			//5A38 	AE16
		MOVFF 	23H, 17H 		//5A3A 	0023 3017
		MOVFF 	24H, 18H 		//5A3E 	0024 3018
		LDWI 	29H 			//5A42 	4E29
		STR 	19H, 0H 			//5A44 	AE19
		LCALL 	1866H, 0H 		//5A46 	2C33 300C
		MOVFF 	2AH, FD9H 		//5A4A 	002A 3FD9
		MOVFF 	2BH, FDAH 		//5A4E 	002B 3FDA
		LDWI 	0H 			//5A52 	4E00
		STR 	DFH, 0H 			//5A54 	AEDF
		RET 	0H 			//5A56 	4012

		//;encoder.c: 30: if((INTCON3bits.INT6IE == 1)&&(INTCON2bits.INT6IF == 1))
		BTSS 	F0H, 6H, 0H 		//5A58 	ECF0
		RET 	0H 			//5A5A 	4012
		BTSS 	F1H, 6H, 0H 		//5A5C 	ECF1
		RET 	0H 			//5A5E 	4012

		//;encoder.c: 31: {;encoder.c: 32: EncoderData.Time = 0;
		LDWI 	0H 			//5A60 	4E00
		MOVLB 	1H 			//5A62 	4101
		STR 	7DH, 1H 			//5A64 	AF7D
		LDWI 	0H 			//5A66 	4E00
		STR 	7CH, 1H 			//5A68 	AF7C

		//;encoder.c: 33: EncoderData.EC11_Count_Flag=1;
		LDWI 	0H 			//5A6A 	4E00
		STR 	85H, 1H 			//5A6C 	AF85
		LDWI 	1H 			//5A6E 	4E01
		STR 	84H, 1H 			//5A70 	AF84

		//;encoder.c: 34: EncoderData.EC11_Speed = EncoderData.EC11_SpeedCount;
		MOVFF 	188H, 186H 		//5A72 	0188 3186
		MOVFF 	189H, 187H 		//5A76 	0189 3187

		//;encoder.c: 35: EncoderData.EC11_SpeedCount = 0;
		LDWI 	0H 			//5A7A 	4E00
		STR 	89H, 1H 			//5A7C 	AF89
		LDWI 	0H 			//5A7E 	4E00
		STR 	88H, 1H 			//5A80 	AF88

		//;encoder.c: 37: INTCON2bits.INT6IF = 0;
		BCR 	F1H, 6H, 0H 		//5A82 	DCF1

		//;encoder.c: 38: INTCON3bits.INT6IE = 1;
		BSR 	F0H, 6H, 0H 		//5A84 	CCF0

		//;encoder.c: 40: EC11_Scan();
		LCALL 	5BBEH, 0H 		//5A86 	2CDF 302D
		RET 	0H 			//5A8A 	4012
		MOVLB 	0H 			//5A8C 	4100
		DECR 	A6H, 0H, 1H 		//5A8E 	45A6
		BTSS 	D8H, 2H, 0H 		//5A90 	E4D8
		BRA 	5AA2H 			//5A92 	1007
		LDWI 	0H 			//5A94 	4E00
		ADDWR 	81H, 0H, 1H 	//5A96 	6581
		STR 	AH, 0H 			//5A98 	AE0A
		LDWI 	E7H 			//5A9A 	4EE7
		ADDWRC 	82H, 0H, 1H 	//5A9C 	6182
		STR 	BH, 0H 			//5A9E 	AE0B
		BRA 	5AAAH 			//5AA0 	1004
		MOVFF 	81H, AH 		//5AA2 	0081 300A
		MOVFF 	82H, BH 		//5AA6 	0082 300B
		NOP  					//5AAA 	3000
		MOVFF 	AH, F25H 		//5AAC 	000A 3F25
		NOP  					//5AB0 	3000
		MOVFF 	BH, F26H 		//5AB2 	000B 3F26
		NOP  					//5AB6 	3000
		RET 	0H 			//5AB8 	4012

		//;voice.c: 104: u8 ret = 0;
		LDWI 	0H 			//5ABA 	4E00
		STR 	14H, 0H 			//5ABC 	AE14

		//;voice.c: 105: ret = PC6;
		LDWI 	0H 			//5ABE 	4E00
		BTSC 	82H, 6H, 0H 		//5AC0 	FC82
		LDWI 	1H 			//5AC2 	4E01
		STR 	14H, 0H 			//5AC4 	AE14

		//;voice.c: 106: if(RunData.VoiceEnable==0) return ret;
		MOVLB 	1H 			//5AC6 	4101
		LDR 	30H, 0H, 1H 		//5AC8 	9130
		BTSS 	D8H, 2H, 0H 		//5ACA 	E4D8
		BRA 	5AD2H 			//5ACC 	1002
		LDR 	14H, 0H, 0H 		//5ACE 	9014
		RET 	0H 			//5AD0 	4012

		//;voice.c: 107: if(ret==0) return ret;
		LDR 	14H, 0H, 0H 		//5AD2 	9014
		BTSC 	D8H, 2H, 0H 		//5AD4 	F4D8
		BRA 	6ACEH 			//5AD6 	17FB

		//;voice.c: 108: if(dat==0) return ret;
		LDR 	11H, 0H, 0H 		//5AD8 	9011
		IORWR 	12H, 0H, 0H 	//5ADA 	5012
		BTSC 	D8H, 2H, 0H 		//5ADC 	F4D8
		BRA 	6ACEH 			//5ADE 	17F7

		//;voice.c: 109: PlaySound(dat);
		LDR 	11H, 0H, 0H 		//5AE0 	9011
		LCALL 	4AE2H, 0H 		//5AE2 	2C71 3025
		BRA 	6ACEH 			//5AE6 	17F3

		//;encoder.c: 7: GIE = 0;
		BCR 	F2H, 7H, 0H 		//5AE8 	DEF2

		//;encoder.c: 8: TRISDbits.TRISD6 = 1;
		BSR 	95H, 6H, 0H 		//5AEA 	CC95

		//;encoder.c: 9: WPUDbits.WPUD6 = 1;
		MOVLB 	EH 			//5AEC 	410E
		BSR 	BH, 6H, 1H 		//5AEE 	CD0B

		//;encoder.c: 10: WPDDbits.WPDD6 = 0;
		BCR 	3H, 6H, 1H 		//5AF0 	DD03

		//;encoder.c: 12: TRISDbits.TRISD5 = 1;
		BSR 	95H, 5H, 0H 		//5AF2 	CA95

		//;encoder.c: 13: WPUDbits.WPUD5 = 1;
		BSR 	BH, 5H, 1H 		//5AF4 	CB0B

		//;encoder.c: 14: WPDDbits.WPDD5 = 0;
		BCR 	3H, 5H, 1H 		//5AF6 	DB03

		//;encoder.c: 16: IPEN = 0;
		BCR 	9CH, 7H, 0H 		//5AF8 	DE9C

		//;encoder.c: 17: EPS3bits.EPSEL6 = 0b011;
		MOVLB 	FH 			//5AFA 	410F
		LDR 	5AH, 0H, 1H 		//5AFC 	915A
		ANDWI 	F8H 			//5AFE 	4BF8
		IORWI 	3H 			//5B00 	4903
		STR 	5AH, 1H 			//5B02 	AF5A

		//;encoder.c: 19: ITYPE1 &= 0B11001111;
		LDWI 	CFH 			//5B04 	4ECF
		ANDWR 	47H, 1H, 1H 	//5B06 	5747

		//;encoder.c: 20: ITYPE1 |= 0B00100000;
		BSR 	47H, 5H, 1H 		//5B08 	CB47

		//;encoder.c: 22: INTCON2bits.INT6IF = 0;
		BCR 	F1H, 6H, 0H 		//5B0A 	DCF1

		//;encoder.c: 23: INTCON3bits.INT6IE = 1;
		BSR 	F0H, 6H, 0H 		//5B0C 	CCF0

		//;encoder.c: 24: PEIE = 1;
		BSR 	F2H, 6H, 0H 		//5B0E 	CCF2

		//;encoder.c: 25: GIE = 1;
		BSR 	F2H, 7H, 0H 		//5B10 	CEF2
		RET 	0H 			//5B12 	4012

		//;main.c: 265: for(uint16_t a=0;a<Time;a++)
		LDWI 	0H 			//5B14 	4E00
		STR 	EH, 0H 			//5B16 	AE0E
		LDWI 	0H 			//5B18 	4E00
		STR 	DH, 0H 			//5B1A 	AE0D
		BRA 	5B32H 			//5B1C 	100A

		//;main.c: 266: {;main.c: 267: for(uint8_t b=0;b<98;b++)
		LDWI 	0H 			//5B1E 	4E00
		STR 	FH, 0H 			//5B20 	AE0F

		//;main.c: 268: {;main.c: 269: Delay10Us();
		LCALL 	5E5EH, 0H 		//5B22 	2C2F 302F
		INCR 	FH, 1H, 0H 		//5B26 	6A0F
		LDWI 	61H 			//5B28 	4E61
		CPRSGT 	FH, 0H 		//5B2A 	A40F
		BRA 	6B22H 			//5B2C 	17FA
		INRSNZ 	DH, 1H, 0H 	//5B2E 	8A0D
		INCR 	EH, 1H, 0H 		//5B30 	6A0E
		LDR 	BH, 0H, 0H 		//5B32 	900B
		SUBWR 	DH, 0H, 0H 		//5B34 	9C0D
		LDR 	CH, 0H, 0H 		//5B36 	900C
		SUBWRB 	EH, 0H, 0H 	//5B38 	980E
		BTSC 	D8H, 0H, 0H 		//5B3A 	F0D8
		RET 	0H 			//5B3C 	4012
		BRA 	6B1EH 			//5B3E 	17EF
		STR 	BH, 0H 			//5B40 	AE0B
		LDWI 	8H 			//5B42 	4E08
		STR 	CH, 0H 			//5B44 	AE0C
		LDWI 	0H 			//5B46 	4E00
		STR 	DH, 0H 			//5B48 	AE0D
		BCR 	D8H, 0H, 0H 		//5B4A 	D0D8
		RLCR 	BH, 0H, 0H 		//5B4C 	740B
		RLCR 	DH, 0H, 0H 		//5B4E 	740D
		STR 	DH, 0H 			//5B50 	AE0D
		BCR 	D8H, 0H, 0H 		//5B52 	D0D8
		RLCR 	BH, 1H, 0H 		//5B54 	760B
		LDR 	AH, 0H, 0H 		//5B56 	900A
		SUBWR 	DH, 0H, 0H 		//5B58 	9C0D
		BTSS 	D8H, 0H, 0H 		//5B5A 	E0D8
		BRA 	5B62H 			//5B5C 	1002
		LDR 	AH, 0H, 0H 		//5B5E 	900A
		SUBWR 	DH, 1H, 0H 		//5B60 	9E0D
		DECRSZ 	CH, 1H, 0H 	//5B62 	6E0C
		BRA 	6B4AH 			//5B64 	17F2
		LDR 	DH, 0H, 0H 		//5B66 	900D
		RET 	0H 			//5B68 	4012
		LDWI 	0H 			//5B6A 	4E00
		STR 	27H, 0H 			//5B6C 	AE27
		LDWI 	0H 			//5B6E 	4E00
		STR 	28H, 0H 			//5B70 	AE28
		LDWI 	26H 			//5B72 	4E26
		STR 	29H, 0H 			//5B74 	AE29
		LDWI 	5FH 			//5B76 	4E5F
		STR 	2AH, 0H 			//5B78 	AE2A
		LDWI 	24H 			//5B7A 	4E24
		STR 	26H, 0H 			//5B7C 	AE26
		LDWI 	27H 			//5B7E 	4E27
		STR 	16H, 0H 			//5B80 	AE16
		MOVFF 	22H, 17H 		//5B82 	0022 3017
		MOVFF 	23H, 18H 		//5B86 	0023 3018
		LDWI 	26H 			//5B8A 	4E26
		STR 	19H, 0H 			//5B8C 	AE19
		LCALL 	1866H, 0H 		//5B8E 	2C33 300C
		RET 	0H 			//5B92 	4012

		//;uart2.c: 124: if(sUsart2.RxNum>0)
		MOVLB 	2H 			//5B94 	4102
		LDR 	9CH, 0H, 1H 		//5B96 	919C
		IORWR 	9DH, 0H, 1H 	//5B98 	519D
		BTSS 	D8H, 2H, 0H 		//5B9A 	E4D8

		//;uart2.c: 125: {;uart2.c: 126: sUsart2.RxTimer++;
		INCR 	A0H, 1H, 1H 		//5B9C 	6BA0

		//;uart2.c: 127: };uart2.c: 128: if(sUsart2.RxTimer>5)
		LDWI 	5H 			//5B9E 	4E05
		CPRSGT 	A0H, 1H 		//5BA0 	A5A0
		RET 	0H 			//5BA2 	4012

		//;uart2.c: 129: {;uart2.c: 130: sUsart2.RxLength=sUsart2.RxNum;
		MOVFF 	29CH, 29EH 		//5BA4 	029C 329E
		MOVFF 	29DH, 29FH 		//5BA8 	029D 329F

		//;uart2.c: 131: sUsart2.RxEnd=1;
		LDWI 	1H 			//5BAC 	4E01
		STR 	A1H, 1H 			//5BAE 	AFA1

		//;uart2.c: 132: sUsart2.RxTimer=0;
		LDWI 	0H 			//5BB0 	4E00
		STR 	A0H, 1H 			//5BB2 	AFA0

		//;uart2.c: 133: sUsart2.RxNum=0;
		LDWI 	0H 			//5BB4 	4E00
		STR 	9DH, 1H 			//5BB6 	AF9D
		LDWI 	0H 			//5BB8 	4E00
		STR 	9CH, 1H 			//5BBA 	AF9C
		RET 	0H 			//5BBC 	4012

		//;encoder.c: 48: if(EncoderData.EC11_Count_Flag)
		LDR 	84H, 0H, 1H 		//5BBE 	9184
		IORWR 	85H, 0H, 1H 	//5BC0 	5185
		BTSC 	D8H, 2H, 0H 		//5BC2 	F4D8
		RET 	0H 			//5BC4 	4012

		//;encoder.c: 49: {;encoder.c: 50: RunData.AutoSaveDataCount=0;
		LDWI 	0H 			//5BC6 	4E00
		STR 	3EH, 1H 			//5BC8 	AF3E
		LDWI 	0H 			//5BCA 	4E00
		STR 	3DH, 1H 			//5BCC 	AF3D

		//;encoder.c: 51: if(PD5 == 0)
		BTSC 	83H, 5H, 0H 		//5BCE 	FA83
		BRA 	5BD8H 			//5BD0 	1003

		//;encoder.c: 52: {;encoder.c: 55: EncoderData.EC11_Count+=1;
		INRSNZ 	7EH, 1H, 1H 	//5BD2 	8B7E
		INCR 	7FH, 1H, 1H 		//5BD4 	6B7F

		//;encoder.c: 56: }
		BRA 	5BDEH 			//5BD6 	1003

		//;encoder.c: 57: else;encoder.c: 58: {;encoder.c: 61: EncoderData.EC11_Count-=1;
		DECR 	7EH, 1H, 1H 		//5BD8 	477E
		BTSS 	D8H, 0H, 0H 		//5BDA 	E0D8
		DECR 	7FH, 1H, 1H 		//5BDC 	477F

		//;encoder.c: 62: };encoder.c: 63: EncoderData.EC11_Count_Flag = 0;
		LDWI 	0H 			//5BDE 	4E00
		STR 	85H, 1H 			//5BE0 	AF85
		LDWI 	0H 			//5BE2 	4E00
		STR 	84H, 1H 			//5BE4 	AF84
		RET 	0H 			//5BE6 	4012
		STR 	AH, 0H 			//5BE8 	AE0A
		MOVLB 	FH 			//5BEA 	410F
		BSR 	2AH, 2H, 1H 		//5BEC 	C52A
		BCR 	A6H, 7H, 0H 		//5BEE 	DEA6
		BCR 	A6H, 6H, 0H 		//5BF0 	DCA6
		MOVFF 	AH, FA9H 		//5BF2 	000A 3FA9
		BSR 	A6H, 0H, 0H 		//5BF6 	C0A6
		NOP  					//5BF8 	3000
		NOP  					//5BFA 	3000
		NOP  					//5BFC 	3000
		NOP  					//5BFE 	3000
		BTSC 	A6H, 0H, 0H 		//5C00 	F0A6
		BRA 	6C00H 			//5C02 	17FE
		MOVFF 	FA8H, BH 		//5C04 	0FA8 300B
		MOVLB 	FH 			//5C08 	410F
		BCR 	2AH, 2H, 1H 		//5C0A 	D52A
		LDR 	BH, 0H, 0H 		//5C0C 	900B
		RET 	0H 			//5C0E 	4012

		//;voice.c: 93: u8 ret = 0;
		LDWI 	0H 			//5C10 	4E00
		STR 	14H, 0H 			//5C12 	AE14

		//;voice.c: 94: ret = PC6;
		LDWI 	0H 			//5C14 	4E00
		BTSC 	82H, 6H, 0H 		//5C16 	FC82
		LDWI 	1H 			//5C18 	4E01
		STR 	14H, 0H 			//5C1A 	AE14

		//;voice.c: 95: if(ret==0) return ret;
		LDR 	14H, 0H, 0H 		//5C1C 	9014
		BTSS 	D8H, 2H, 0H 		//5C1E 	E4D8
		BRA 	5C26H 			//5C20 	1002
		LDR 	14H, 0H, 0H 		//5C22 	9014
		RET 	0H 			//5C24 	4012

		//;voice.c: 96: if(dat==0) return ret;
		LDR 	11H, 0H, 0H 		//5C26 	9011
		IORWR 	12H, 0H, 0H 	//5C28 	5012
		BTSC 	D8H, 2H, 0H 		//5C2A 	F4D8
		BRA 	6C22H 			//5C2C 	17FA

		//;voice.c: 97: PlaySound(dat);
		LDR 	11H, 0H, 0H 		//5C2E 	9011
		LCALL 	4AE2H, 0H 		//5C30 	2C71 3025
		BRA 	6C22H 			//5C34 	17F6

		//;main.c: 200: PCKEN1bits.T0CKEN = 1;
		MOVLB 	FH 			//5C36 	410F
		BSR 	28H, 0H, 1H 		//5C38 	C128

		//;main.c: 201: T0CRbits.T0CKS = 0B00;
		LDWI 	CFH 			//5C3A 	4ECF
		ANDWR 	86H, 1H, 0H 	//5C3C 	5686

		//;main.c: 202: T0CRbits.T0PSC = 0B111;
		LDWI 	EH 			//5C3E 	4E0E
		IORWR 	86H, 1H, 0H 	//5C40 	5286

		//;main.c: 204: T0CNTR = 0;
		LDWI 	0H 			//5C42 	4E00
		STR 	87H, 0H 			//5C44 	AE87

		//;main.c: 205: T0PR = 124;
		LDWI 	7CH 			//5C46 	4E7C
		STR 	88H, 0H 			//5C48 	AE88

		//;main.c: 206: CKCON2bits.T0IOMOD = 0;
		BCR 	2CH, 6H, 1H 		//5C4A 	DD2C

		//;main.c: 207: INTCON1bits.TMR0IF = 0;
		BCR 	F2H, 2H, 0H 		//5C4C 	D4F2

		//;main.c: 208: INTCON1bits.TMR0IE = 1;
		BSR 	F2H, 5H, 0H 		//5C4E 	CAF2

		//;main.c: 209: IPEN = 0;
		BCR 	9CH, 7H, 0H 		//5C50 	DE9C

		//;main.c: 210: PEIE = 1;
		BSR 	F2H, 6H, 0H 		//5C52 	CCF2

		//;main.c: 211: GIE = 1;
		BSR 	F2H, 7H, 0H 		//5C54 	CEF2

		//;main.c: 212: T0CRbits.T0CEN = 1;
		BSR 	86H, 0H, 0H 		//5C56 	C086
		RET 	0H 			//5C58 	4012
		STR 	AH, 0H 			//5C5A 	AE0A

		//;display.c: 723: if(sta)
		LDR 	AH, 0H, 0H 		//5C5C 	900A
		BTSC 	D8H, 2H, 0H 		//5C5E 	F4D8
		BRA 	5C70H 			//5C60 	1007

		//;display.c: 724: {;display.c: 725: DisBuf[8] |= (1<<7);
		MOVLB 	0H 			//5C62 	4100
		BSR 	C2H, 7H, 1H 		//5C64 	CFC2

		//;display.c: 726: DisBuf[8] |= (1<<6);
		BSR 	C2H, 6H, 1H 		//5C66 	CDC2

		//;display.c: 727: DisBuf[8] |= (1<<5);
		BSR 	C2H, 5H, 1H 		//5C68 	CBC2

		//;display.c: 728: DisBuf[8] |= (1<<4);
		BSR 	C2H, 4H, 1H 		//5C6A 	C9C2

		//;display.c: 729: DisBuf[8] |= (1<<3);
		BSR 	C2H, 3H, 1H 		//5C6C 	C7C2

		//;display.c: 730: }
		RET 	0H 			//5C6E 	4012

		//;display.c: 731: else;display.c: 732: {;display.c: 733: DisBuf[8] &= ~(1<<7);
		MOVLB 	0H 			//5C70 	4100
		BCR 	C2H, 7H, 1H 		//5C72 	DFC2

		//;display.c: 734: DisBuf[8] &= ~(1<<6);
		BCR 	C2H, 6H, 1H 		//5C74 	DDC2

		//;display.c: 735: DisBuf[8] &= ~(1<<5);
		BCR 	C2H, 5H, 1H 		//5C76 	DBC2

		//;display.c: 736: DisBuf[8] &= ~(1<<4);
		BCR 	C2H, 4H, 1H 		//5C78 	D9C2

		//;display.c: 737: DisBuf[8] &= ~(1<<3);
		BCR 	C2H, 3H, 1H 		//5C7A 	D7C2
		RET 	0H 			//5C7C 	4012
		MOVFF 	FD9H, 7H 		//5C7E 	0FD9 3007
		MOVFF 	FDAH, 8H 		//5C82 	0FDA 3008

		//;main.c: 143: Time0_Interrupt();
		LCALL 	2D0AH, 0H 		//5C86 	2C85 3016

		//;main.c: 144: IR_IN_DATA();
		LCALL 	1DF2H, 0H 		//5C8A 	2CF9 300E

		//;main.c: 145: EC11_Interrupt();
		LCALL 	5A58H, 0H 		//5C8E 	2C2C 302D

		//;main.c: 146: UART2_Interrupt();
		LCALL 	5944H, 0H 		//5C92 	2CA2 302C
		MOVFF 	8H, FDAH 		//5C96 	0008 3FDA
		MOVFF 	7H, FD9H 		//5C9A 	0007 3FD9
		BCR 	55H, 1H, 0H 		//5C9E 	D255
		RETI 	1H 			//5CA0 	4011

		//;control.c: 33: return stack->top == 10 - 1;
		LFSR 	2H, 140H 		//5CA2 	2E20 3014
		LDR 	AH, 0H, 0H 		//5CA6 	900A
		ADDWR 	D9H, 1H, 0H 	//5CA8 	66D9
		LDR 	BH, 0H, 0H 		//5CAA 	900B
		ADDWRC 	DAH, 1H, 0H 	//5CAC 	62DA
		LDWI 	9H 			//5CAE 	4E09
		XORWR 	DEH, 0H, 0H 	//5CB0 	58DE
		IORWR 	DEH, 0H, 0H 	//5CB2 	50DE
		BTSS 	D8H, 2H, 0H 		//5CB4 	E4D8
		BRA 	5CBCH 			//5CB6 	1002
		LDWI 	1H 			//5CB8 	4E01
		BRA 	5CBEH 			//5CBA 	1001
		LDWI 	0H 			//5CBC 	4E00
		STR 	AH, 0H 			//5CBE 	AE0A
		CLRR 	BH, 0H 			//5CC0 	AA0B
		RET 	0H 			//5CC2 	4012

		//;control.c: 29: return stack->top == -1;
		LFSR 	2H, 140H 		//5CC4 	2E20 3014
		LDR 	AH, 0H, 0H 		//5CC8 	900A
		ADDWR 	D9H, 1H, 0H 	//5CCA 	66D9
		LDR 	BH, 0H, 0H 		//5CCC 	900B
		ADDWRC 	DAH, 1H, 0H 	//5CCE 	62DA
		INCR 	DEH, 0H, 0H 		//5CD0 	68DE
		BNZ 	5CDEH 			//5CD2 	2105
		INCR 	DEH, 0H, 0H 		//5CD4 	68DE
		BTSS 	D8H, 2H, 0H 		//5CD6 	E4D8
		BRA 	5CDEH 			//5CD8 	1002
		LDWI 	1H 			//5CDA 	4E01
		BRA 	5CE0H 			//5CDC 	1001
		LDWI 	0H 			//5CDE 	4E00
		STR 	AH, 0H 			//5CE0 	AE0A
		CLRR 	BH, 0H 			//5CE2 	AA0B
		RET 	0H 			//5CE4 	4012
		MOVLB 	0H 			//5CE6 	4100
		DECR 	9CH, 0H, 1H 		//5CE8 	459C
		BTSS 	D8H, 2H, 0H 		//5CEA 	E4D8
		BRA 	5D02H 			//5CEC 	100A
		LDWI 	0H 			//5CEE 	4E00
		STR 	9CH, 1H 			//5CF0 	AF9C
		LDWI 	0H 			//5CF2 	4E00
		STR 	A3H, 1H 			//5CF4 	AFA3
		LDWI 	0H 			//5CF6 	4E00
		STR 	A4H, 1H 			//5CF8 	AFA4
		LCALL 	3A70H, 0H 		//5CFA 	2C38 301D
		LDWI 	1H 			//5CFE 	4E01
		RET 	0H 			//5D00 	4012
		LDWI 	0H 			//5D02 	4E00
		RET 	0H 			//5D04 	4012

		//;main.c: 290: for(uint16_t i=0;i<Time;i++)
		LDWI 	0H 			//5D06 	4E00
		STR 	EH, 0H 			//5D08 	AE0E
		LDWI 	0H 			//5D0A 	4E00
		STR 	DH, 0H 			//5D0C 	AE0D
		BRA 	5D18H 			//5D0E 	1004

		//;main.c: 291: {;main.c: 292: Delay10Us();
		LCALL 	5E5EH, 0H 		//5D10 	2C2F 302F
		INRSNZ 	DH, 1H, 0H 	//5D14 	8A0D
		INCR 	EH, 1H, 0H 		//5D16 	6A0E
		LDR 	BH, 0H, 0H 		//5D18 	900B
		SUBWR 	DH, 0H, 0H 		//5D1A 	9C0D
		LDR 	CH, 0H, 0H 		//5D1C 	900C
		SUBWRB 	EH, 0H, 0H 	//5D1E 	980E
		BTSC 	D8H, 0H, 0H 		//5D20 	F0D8
		RET 	0H 			//5D22 	4012
		BRA 	6D10H 			//5D24 	17F5
		STR 	BH, 0H 			//5D26 	AE0B

		//;display.c: 376: if(status == 1)
		DECR 	AH, 0H, 0H 		//5D28 	440A
		BTSC 	D8H, 2H, 0H 		//5D2A 	F4D8
		RET 	0H 			//5D2C 	4012

		//;display.c: 380: if(sta)
		LDR 	BH, 0H, 0H 		//5D2E 	900B
		BTSC 	D8H, 2H, 0H 		//5D30 	F4D8
		BRA 	5D3CH 			//5D32 	1004

		//;display.c: 381: {;display.c: 382: DisBuf[0] |= (1<<0);
		MOVLB 	0H 			//5D34 	4100
		BSR 	BAH, 0H, 1H 		//5D36 	C1BA

		//;display.c: 383: DisBuf[2] |= (1<<0);
		BSR 	BCH, 0H, 1H 		//5D38 	C1BC

		//;display.c: 384: }
		RET 	0H 			//5D3A 	4012

		//;display.c: 385: else;display.c: 386: {;display.c: 387: DisBuf[0] &=~(1<<0);
		MOVLB 	0H 			//5D3C 	4100
		BCR 	BAH, 0H, 1H 		//5D3E 	D1BA

		//;display.c: 388: DisBuf[2] &=~(1<<0);
		BCR 	BCH, 0H, 1H 		//5D40 	D1BC
		RET 	0H 			//5D42 	4012
		MOVFF 	AAH, AH 		//5D44 	00AA 300A
		LDWI 	1H 			//5D48 	4E01
		STR 	50H, 0H 			//5D4A 	AE50
		BRA 	5D58H 			//5D4C 	1005
		BTSC 	AH, 1H, 0H 		//5D4E 	F20A
		INCR 	A8H, 1H, 1H 		//5D50 	6BA8
		BCR 	D8H, 0H, 0H 		//5D52 	D0D8
		RRCR 	AH, 1H, 0H 		//5D54 	720A
		INCR 	50H, 1H, 0H 		//5D56 	6A50
		LDWI 	3H 			//5D58 	4E03
		CPRSGT 	50H, 0H 		//5D5A 	A450
		BRA 	6D4EH 			//5D5C 	17F8
		RET 	0H 			//5D5E 	4012

		//;encoder.c: 70: int ret = EncoderData.EC11_Count;
		MOVFF 	17EH, CH 		//5D60 	017E 300C
		MOVFF 	17FH, DH 		//5D64 	017F 300D

		//;encoder.c: 71: EncoderData.EC11_Count = 0;
		LDWI 	0H 			//5D68 	4E00
		MOVLB 	1H 			//5D6A 	4101
		STR 	7FH, 1H 			//5D6C 	AF7F
		LDWI 	0H 			//5D6E 	4E00
		STR 	7EH, 1H 			//5D70 	AF7E

		//;encoder.c: 72: return ret;
		MOVFF 	CH, AH 		//5D72 	000C 300A
		MOVFF 	DH, BH 		//5D76 	000D 300B
		RET 	0H 			//5D7A 	4012
		STR 	AH, 0H 			//5D7C 	AE0A

		//;beep.c: 101: if(enable)
		LDR 	AH, 0H, 0H 		//5D7E 	900A
		BTSC 	D8H, 2H, 0H 		//5D80 	F4D8
		BRA 	5D8EH 			//5D82 	1005

		//;beep.c: 102: {;beep.c: 103: T4CH2CCRL = 500&0xFF;
		LDWI 	F4H 			//5D84 	4EF4
		STR 	B4H, 0H 			//5D86 	AEB4

		//;beep.c: 104: T4CH2CCRH = 500>>8;
		LDWI 	1H 			//5D88 	4E01
		STR 	B5H, 0H 			//5D8A 	AEB5

		//;beep.c: 105: }
		RET 	0H 			//5D8C 	4012

		//;beep.c: 106: else;beep.c: 107: {;beep.c: 108: T4CH2CCRL = 0;
		LDWI 	0H 			//5D8E 	4E00
		STR 	B4H, 0H 			//5D90 	AEB4

		//;beep.c: 109: T4CH2CCRH = 0;
		LDWI 	0H 			//5D92 	4E00
		STR 	B5H, 0H 			//5D94 	AEB5
		RET 	0H 			//5D96 	4012
		STR 	BH, 0H 			//5D98 	AE0B

		//;display.c: 422: if(enable >= 3) DisBuf[9] &=~(1<<3);
		LDWI 	2H 			//5D9A 	4E02
		CPRSGT 	AH, 0H 		//5D9C 	A40A
		BRA 	5DA6H 			//5D9E 	1003
		MOVLB 	0H 			//5DA0 	4100
		BCR 	C3H, 3H, 1H 		//5DA2 	D7C3
		RET 	0H 			//5DA4 	4012

		//;display.c: 423: else{;display.c: 424: if(sta)
		LDR 	BH, 0H, 0H 		//5DA6 	900B
		BTSC 	D8H, 2H, 0H 		//5DA8 	F4D8
		BRA 	6DA0H 			//5DAA 	17FA

		//;display.c: 425: {;display.c: 426: DisBuf[9] |=(1<<3);
		MOVLB 	0H 			//5DAC 	4100
		BSR 	C3H, 3H, 1H 		//5DAE 	C7C3

		//;display.c: 427: }
		RET 	0H 			//5DB0 	4012
		STR 	BH, 0H 			//5DB2 	AE0B

		//;display.c: 438: if(enable >= 3) DisBuf[9] &=~(1<<2);
		LDWI 	2H 			//5DB4 	4E02
		CPRSGT 	AH, 0H 		//5DB6 	A40A
		BRA 	5DC0H 			//5DB8 	1003
		MOVLB 	0H 			//5DBA 	4100
		BCR 	C3H, 2H, 1H 		//5DBC 	D5C3
		RET 	0H 			//5DBE 	4012

		//;display.c: 439: else;display.c: 440: {;display.c: 441: if(sta)
		LDR 	BH, 0H, 0H 		//5DC0 	900B
		BTSC 	D8H, 2H, 0H 		//5DC2 	F4D8
		BRA 	6DBAH 			//5DC4 	17FA

		//;display.c: 442: {;display.c: 443: DisBuf[9] |=(1<<2);
		MOVLB 	0H 			//5DC6 	4100
		BSR 	C3H, 2H, 1H 		//5DC8 	C5C3

		//;display.c: 444: }
		RET 	0H 			//5DCA 	4012
		STR 	BH, 0H 			//5DCC 	AE0B

		//;display.c: 455: if(enable >= 3) DisBuf[9] &=~(1<<0);
		LDWI 	2H 			//5DCE 	4E02
		CPRSGT 	AH, 0H 		//5DD0 	A40A
		BRA 	5DDAH 			//5DD2 	1003
		MOVLB 	0H 			//5DD4 	4100
		BCR 	C3H, 0H, 1H 		//5DD6 	D1C3
		RET 	0H 			//5DD8 	4012

		//;display.c: 456: else;display.c: 457: {;display.c: 458: if(sta)
		LDR 	BH, 0H, 0H 		//5DDA 	900B
		BTSC 	D8H, 2H, 0H 		//5DDC 	F4D8
		BRA 	6DD4H 			//5DDE 	17FA

		//;display.c: 459: {;display.c: 460: DisBuf[9] |= (1<<0);
		MOVLB 	0H 			//5DE0 	4100
		BSR 	C3H, 0H, 1H 		//5DE2 	C1C3

		//;display.c: 461: }
		RET 	0H 			//5DE4 	4012

		//;setsysdata.c: 28: BeepEnable(1);
		LDWI 	1H 			//5DE6 	4E01
		LCALL 	5D7CH, 0H 		//5DE8 	2CBE 302E

		//;setsysdata.c: 29: DelayMs(50);
		LDWI 	0H 			//5DEC 	4E00
		STR 	CH, 0H 			//5DEE 	AE0C
		LDWI 	32H 			//5DF0 	4E32
		STR 	BH, 0H 			//5DF2 	AE0B
		LCALL 	5B14H, 0H 		//5DF4 	2C8A 302D

		//;setsysdata.c: 30: BeepEnable(0);
		LDWI 	0H 			//5DF8 	4E00
		LCALL 	5D7CH, 0H 		//5DFA 	2CBE 302E
		RET 	0H 			//5DFE 	4012
		STR 	AH, 0H 			//5E00 	AE0A

		//;display.c: 502: if(sta)
		LDR 	AH, 0H, 0H 		//5E02 	900A
		BTSC 	D8H, 2H, 0H 		//5E04 	F4D8
		BRA 	5E10H 			//5E06 	1004

		//;display.c: 503: {;display.c: 504: DisBuf[4] |= (1<<0);
		MOVLB 	0H 			//5E08 	4100
		BSR 	BEH, 0H, 1H 		//5E0A 	C1BE

		//;display.c: 505: DisBuf[6] |= (1<<0);
		BSR 	C0H, 0H, 1H 		//5E0C 	C1C0

		//;display.c: 506: }
		RET 	0H 			//5E0E 	4012

		//;display.c: 507: else;display.c: 508: {;display.c: 509: DisBuf[4] &=~(1<<0);
		MOVLB 	0H 			//5E10 	4100
		BCR 	BEH, 0H, 1H 		//5E12 	D1BE

		//;display.c: 510: DisBuf[6] &=~(1<<0);
		BCR 	C0H, 0H, 1H 		//5E14 	D1C0
		RET 	0H 			//5E16 	4012
		STR 	EH, 0H 			//5E18 	AE0E

		//;tm1629b.c: 145: LATAbits.LATA2 = 0 ;
		BCR 	89H, 2H, 0H 		//5E1A 	D489

		//;tm1629b.c: 146: Nop1629(10) ;
		LDWI 	0H 			//5E1C 	4E00
		STR 	BH, 0H 			//5E1E 	AE0B
		LDWI 	AH 			//5E20 	4E0A
		STR 	AH, 0H 			//5E22 	AE0A
		LCALL 	5F14H, 0H 		//5E24 	2C8A 302F

		//;tm1629b.c: 147: TM1629_WriteByteData(Comm);
		LDR 	EH, 0H, 0H 		//5E28 	900E
		LCALL 	578AH, 0H 		//5E2A 	2CC5 302B
		RET 	0H 			//5E2E 	4012

		//;GPIO_Init.c: 7: TRISD &= ~(1<<1);
		BCR 	95H, 1H, 0H 		//5E30 	D295

		//;GPIO_Init.c: 8: LATDbits.LATD1 = 1;
		BSR 	8CH, 1H, 0H 		//5E32 	C28C

		//;GPIO_Init.c: 10: TRISD &= ~(1<<7);
		BCR 	95H, 7H, 0H 		//5E34 	DE95

		//;GPIO_Init.c: 11: LATDbits.LATD7 = 1;
		BSR 	8CH, 7H, 0H 		//5E36 	CE8C

		//;GPIO_Init.c: 13: TRISF &= ~(1<<3);
		BCR 	97H, 3H, 0H 		//5E38 	D697

		//;GPIO_Init.c: 14: TRISF &= ~(1<<2);
		BCR 	97H, 2H, 0H 		//5E3A 	D497

		//;GPIO_Init.c: 15: TRISC &= ~(1<<0);
		BCR 	94H, 0H, 0H 		//5E3C 	D094

		//;GPIO_Init.c: 16: TRISC &= ~(1<<1);
		BCR 	94H, 1H, 0H 		//5E3E 	D294

		//;GPIO_Init.c: 17: LATCbits.LATC0 = 0;
		BCR 	8BH, 0H, 0H 		//5E40 	D08B

		//;GPIO_Init.c: 18: LATFbits.LATF2 = 0;
		BCR 	8EH, 2H, 0H 		//5E42 	D48E

		//;GPIO_Init.c: 19: LATFbits.LATF3 = 0;
		BCR 	8EH, 3H, 0H 		//5E44 	D68E
		RET 	0H 			//5E46 	4012

		//;control.c: 25: stack->top = -1;
		LFSR 	2H, 140H 		//5E48 	2E20 3014
		LDR 	AH, 0H, 0H 		//5E4C 	900A
		ADDWR 	D9H, 1H, 0H 	//5E4E 	66D9
		LDR 	BH, 0H, 0H 		//5E50 	900B
		ADDWRC 	DAH, 1H, 0H 	//5E52 	62DA
		LDWI 	FFH 			//5E54 	4EFF
		STR 	DEH, 0H 			//5E56 	AEDE
		LDWI 	FFH 			//5E58 	4EFF
		STR 	DDH, 0H 			//5E5A 	AEDD
		RET 	0H 			//5E5C 	4012

		//;main.c: 237: for(uint8_t i=0;i<17;i++)
		LDWI 	0H 			//5E5E 	4E00
		STR 	AH, 0H 			//5E60 	AE0A

		//;main.c: 238: {;main.c: 239: __nop();
		NOP  					//5E62 	3000

		//;main.c: 240: __nop();
		NOP  					//5E64 	3000

		//;main.c: 241: __nop();
		NOP  					//5E66 	3000

		//;main.c: 242: __nop();
		NOP  					//5E68 	3000
		INCR 	AH, 1H, 0H 		//5E6A 	6A0A
		LDWI 	10H 			//5E6C 	4E10
		CPRSGT 	AH, 0H 		//5E6E 	A40A
		BRA 	6E62H 			//5E70 	17F8
		RET 	0H 			//5E72 	4012
		MOVLB 	FH 			//5E74 	410F
		BSR 	2AH, 0H, 1H 		//5E76 	C12A
		LDWI 	6FH 			//5E78 	4E6F
		STR 	2EH, 1H 			//5E7A 	AF2E
		LDWI 	30H 			//5E7C 	4E30
		STR 	2FH, 1H 			//5E7E 	AF2F
		BCR 	9DH, 4H, 0H 		//5E80 	D89D
		BCR 	9EH, 4H, 0H 		//5E82 	D89E
		BSR 	2EH, 4H, 1H 		//5E84 	C92E
		RET 	0H 			//5E86 	4012
		STR 	AH, 0H 			//5E88 	AE0A

		//;display.c: 348: if(sta)
		LDR 	AH, 0H, 0H 		//5E8A 	900A
		BTSC 	D8H, 2H, 0H 		//5E8C 	F4D8
		BRA 	5E96H 			//5E8E 	1003

		//;display.c: 349: {;display.c: 350: DisBuf[10] |=(1<<0);
		MOVLB 	0H 			//5E90 	4100
		BSR 	C4H, 0H, 1H 		//5E92 	C1C4

		//;display.c: 351: }
		RET 	0H 			//5E94 	4012

		//;display.c: 352: else;display.c: 353: {;display.c: 354: DisBuf[10] &=~(1<<0);
		MOVLB 	0H 			//5E96 	4100
		BCR 	C4H, 0H, 1H 		//5E98 	D1C4
		RET 	0H 			//5E9A 	4012
		STR 	AH, 0H 			//5E9C 	AE0A

		//;display.c: 322: if(sta)
		LDR 	AH, 0H, 0H 		//5E9E 	900A
		BTSC 	D8H, 2H, 0H 		//5EA0 	F4D8
		BRA 	5EAAH 			//5EA2 	1003

		//;display.c: 323: {;display.c: 324: DisBuf[8] |=(1<<0);
		MOVLB 	0H 			//5EA4 	4100
		BSR 	C2H, 0H, 1H 		//5EA6 	C1C2

		//;display.c: 325: }
		RET 	0H 			//5EA8 	4012

		//;display.c: 326: else;display.c: 327: {;display.c: 328: DisBuf[8] &=~(1<<0);
		MOVLB 	0H 			//5EAA 	4100
		BCR 	C2H, 0H, 1H 		//5EAC 	D1C2
		RET 	0H 			//5EAE 	4012
		STR 	AH, 0H 			//5EB0 	AE0A

		//;display.c: 410: if(sta)
		LDR 	AH, 0H, 0H 		//5EB2 	900A
		BTSC 	D8H, 2H, 0H 		//5EB4 	F4D8
		BRA 	5EBEH 			//5EB6 	1003

		//;display.c: 411: {;display.c: 412: DisBuf[8] |= (1<<1);
		MOVLB 	0H 			//5EB8 	4100
		BSR 	C2H, 1H, 1H 		//5EBA 	C3C2

		//;display.c: 413: }
		RET 	0H 			//5EBC 	4012

		//;display.c: 414: else;display.c: 415: {;display.c: 416: DisBuf[8] &=~(1<<1);
		MOVLB 	0H 			//5EBE 	4100
		BCR 	C2H, 1H, 1H 		//5EC0 	D3C2
		RET 	0H 			//5EC2 	4012
		STR 	AH, 0H 			//5EC4 	AE0A

		//;display.c: 335: if(sta)
		LDR 	AH, 0H, 0H 		//5EC6 	900A
		BTSC 	D8H, 2H, 0H 		//5EC8 	F4D8
		BRA 	5ED2H 			//5ECA 	1003

		//;display.c: 336: {;display.c: 337: DisBuf[8] |=(1<<2);
		MOVLB 	0H 			//5ECC 	4100
		BSR 	C2H, 2H, 1H 		//5ECE 	C5C2

		//;display.c: 338: }
		RET 	0H 			//5ED0 	4012

		//;display.c: 339: else;display.c: 340: {;display.c: 341: DisBuf[8] &=~(1<<2);
		MOVLB 	0H 			//5ED2 	4100
		BCR 	C2H, 2H, 1H 		//5ED4 	D5C2
		RET 	0H 			//5ED6 	4012
		STR 	AH, 0H 			//5ED8 	AE0A

		//;display.c: 744: if(sta)
		LDR 	AH, 0H, 0H 		//5EDA 	900A
		BTSC 	D8H, 2H, 0H 		//5EDC 	F4D8
		BRA 	5EE6H 			//5EDE 	1003

		//;display.c: 745: {;display.c: 746: DisBuf[9] |= (1<<1);
		MOVLB 	0H 			//5EE0 	4100
		BSR 	C3H, 1H, 1H 		//5EE2 	C3C3

		//;display.c: 747: }
		RET 	0H 			//5EE4 	4012

		//;display.c: 748: else;display.c: 749: {;display.c: 750: DisBuf[9] &=~(1<<1);
		MOVLB 	0H 			//5EE6 	4100
		BCR 	C3H, 1H, 1H 		//5EE8 	D3C3
		RET 	0H 			//5EEA 	4012
		STR 	AH, 0H 			//5EEC 	AE0A

		//;display.c: 396: if(sta)
		LDR 	AH, 0H, 0H 		//5EEE 	900A
		BTSC 	D8H, 2H, 0H 		//5EF0 	F4D8
		BRA 	5EFAH 			//5EF2 	1003

		//;display.c: 397: {;display.c: 398: DisBuf[9] |= (1<<6);
		MOVLB 	0H 			//5EF4 	4100
		BSR 	C3H, 6H, 1H 		//5EF6 	CDC3

		//;display.c: 399: }
		RET 	0H 			//5EF8 	4012

		//;display.c: 400: else;display.c: 401: {;display.c: 402: DisBuf[9] &=~(1<<6);
		MOVLB 	0H 			//5EFA 	4100
		BCR 	C3H, 6H, 1H 		//5EFC 	DDC3
		RET 	0H 			//5EFE 	4012
		STR 	AH, 0H 			//5F00 	AE0A

		//;display.c: 362: if(sta)
		LDR 	AH, 0H, 0H 		//5F02 	900A
		BTSC 	D8H, 2H, 0H 		//5F04 	F4D8
		BRA 	5F0EH 			//5F06 	1003

		//;display.c: 363: {;display.c: 364: DisBuf[9] |= (1<<7);
		MOVLB 	0H 			//5F08 	4100
		BSR 	C3H, 7H, 1H 		//5F0A 	CFC3

		//;display.c: 365: }
		RET 	0H 			//5F0C 	4012

		//;display.c: 366: else;display.c: 367: {;display.c: 368: DisBuf[9] &=~(1<<7);
		MOVLB 	0H 			//5F0E 	4100
		BCR 	C3H, 7H, 1H 		//5F10 	DFC3
		RET 	0H 			//5F12 	4012
		DECR 	AH, 1H, 0H 		//5F14 	460A
		BTSS 	D8H, 0H, 0H 		//5F16 	E0D8
		DECR 	BH, 1H, 0H 		//5F18 	460B
		INCR 	AH, 0H, 0H 		//5F1A 	680A
		BNZ 	6114H 			//5F1C 	21FB
		INCR 	BH, 0H, 0H 		//5F1E 	680B
		BTSC 	D8H, 2H, 0H 		//5F20 	F4D8
		RET 	0H 			//5F22 	4012
		BRA 	6F14H 			//5F24 	17F7
		STR 	AH, 0H 			//5F26 	AE0A

		//;uart2.c: 63: UR2DATL = (unsigned char)val;
		MOVFF 	AH, F00H 		//5F28 	000A 3F00

		//;uart2.c: 64: while(!UR2TXEF)
		BRA 	5F30H 			//5F2C 	1001

		//;uart2.c: 65: {;uart2.c: 66: __nop();
		NOP  					//5F2E 	3000
		MOVLB 	FH 			//5F30 	410F
		BTSC 	5H, 0H, 1H 		//5F32 	F105
		RET 	0H 			//5F34 	4012
		BRA 	6F2EH 			//5F36 	17FB
		STR 	AH, 0H 			//5F38 	AE0A

		//;uart2.c: 93: UR2DATL =dat;
		MOVFF 	AH, F00H 		//5F3A 	000A 3F00

		//;uart2.c: 94: while(!UR2TXEF)
		BRA 	5F42H 			//5F3E 	1001

		//;uart2.c: 95: {;uart2.c: 96: __nop();
		NOP  					//5F40 	3000
		MOVLB 	FH 			//5F42 	410F
		BTSC 	5H, 0H, 1H 		//5F44 	F105
		RET 	0H 			//5F46 	4012
		BRA 	6F40H 			//5F48 	17FB

		//;voice.c: 18: TRISC |= (1<<6);
		BSR 	94H, 6H, 0H 		//5F4A 	CC94

		//;voice.c: 19: WPDCbits.WPDC6 = 1;
		MOVLB 	EH 			//5F4C 	410E
		BSR 	2H, 6H, 1H 		//5F4E 	CD02

		//;voice.c: 21: TRISD &= ~(1<<0);
		BCR 	95H, 0H, 0H 		//5F50 	D095

		//;voice.c: 22: TRISC &= ~(1<<7);
		BCR 	94H, 7H, 0H 		//5F52 	DE94

		//;voice.c: 24: LATDbits.LATD0 = 0;
		BCR 	8CH, 0H, 0H 		//5F54 	D08C

		//;voice.c: 25: LATCbits.LATC7 = 1;
		BSR 	8BH, 7H, 0H 		//5F56 	CE8B
		RET 	0H 			//5F58 	4012
		BSR 	28H, 2H, 1H 		//5F5A 	C528
		LDWI 	10H 			//5F5C 	4E10
		STR 	7DH, 0H 			//5F5E 	AE7D
		SETR 	98H, 0H 		//5F60 	A898
		LDWI 	3H 			//5F62 	4E03
		STR 	99H, 0H 			//5F64 	AE99
		RET 	0H 			//5F66 	4012

		//;beep.c: 195: PWM_Init();
		LCALL 	5050H, 0H 		//5F68 	2C28 3028

		//;beep.c: 196: BeepEnable(0);
		LDWI 	0H 			//5F6C 	4E00
		LCALL 	5D7CH, 0H 		//5F6E 	2CBE 302E
		RET 	0H 			//5F72 	4012

		//;tm1629b.c: 245: TM1629_WriteDat(DisBuf);
		LDWI 	BAH 			//5F74 	4EBA
		STR 	FH, 0H 			//5F76 	AE0F
		LCALL 	56FAH, 0H 		//5F78 	2C7D 302B
		RET 	0H 			//5F7C 	4012

		//;setsysdata.c: 35: Flow_Data_init();
		LCALL 	5FAAH, 0H 		//5F7E 	2CD5 302F

		//;setsysdata.c: 36: Goto_Engineering_Mode();
		LCALL 	31F0H, 0H 		//5F82 	2CF8 3018
		RET 	0H 			//5F86 	4012

		//;main.c: 513: TSC_Start();
		LCALL 	2AH, 0H 		//5F88 	2C15 3000
		RET 	0H 			//5F8C 	4012
		LDWI 	83H 			//5F8E 	4E83
		STR 	7CH, 0H 			//5F90 	AE7C
		RET 	0H 			//5F92 	4012
		MOVLB 	0H 			//5F94 	4100
		LDR 	9EH, 0H, 1H 		//5F96 	919E
		RET 	0H 			//5F98 	4012

		//;voice.c: 30: LATCbits.LATC7 = 0;
		BCR 	8BH, 7H, 0H 		//5F9A 	DE8B
		RET 	0H 			//5F9C 	4012

		//;voice.c: 35: LATCbits.LATC7 = 1;
		BSR 	8BH, 7H, 0H 		//5F9E 	CE8B
		RET 	0H 			//5FA0 	4012
		 DW 	0002H  			//5FA2 	0002
		 DW 	000AH  			//5FA4 	000A
		RET 	0H 			//5FA6 	4012
		RET 	0H 			//5FA8 	4012
		RET 	0H 			//5FAA 	4012
		ORG		5FFEH
		RESET  			//5FFE 	40FF
		ORG		6FFEH
		RESET  			//6FFE 	40FF
		ORG		7EA0H
		 DB 	00H  			//7EA0 	00
		 DW 	0F92H  			//7EA1 	0F92
		 DB 	01H  			//7EA3 	01
		 DW 	0F92H  			//7EA4 	0F92
		 DB 	02H  			//7EA6 	02
		 DW 	0F92H  			//7EA7 	0F92
		 DB 	04H  			//7EA9 	04
		 DW 	0F92H  			//7EAA 	0F92
		 DB 	08H  			//7EAC 	08
		 DW 	0F92H  			//7EAD 	0F92
		 DB 	10H  			//7EAF 	10
		 DW 	0F92H  			//7EB0 	0F92
		 DB 	20H  			//7EB2 	20
		 DW 	0F92H  			//7EB3 	0F92
		 DB 	40H  			//7EB5 	40
		 DW 	0F92H  			//7EB6 	0F92
		 DB 	80H  			//7EB8 	80
		 DW 	0F93H  			//7EB9 	0F93
		 DB 	01H  			//7EBB 	01
		 DW 	0F93H  			//7EBC 	0F93
		 DB 	02H  			//7EBE 	02
		 DW 	0F93H  			//7EBF 	0F93
		 DB 	04H  			//7EC1 	04
		 DW 	0F93H  			//7EC2 	0F93
		 DB 	08H  			//7EC4 	08
		 DW 	0F93H  			//7EC5 	0F93
		 DB 	10H  			//7EC7 	10
		 DW 	0F93H  			//7EC8 	0F93
		 DB 	20H  			//7ECA 	20
		 DW 	0F93H  			//7ECB 	0F93
		 DB 	40H  			//7ECD 	40
		 DW 	0F93H  			//7ECE 	0F93
		 DB 	80H  			//7ED0 	80
		 DW 	0F94H  			//7ED1 	0F94
		 DB 	01H  			//7ED3 	01
		 DW 	0F94H  			//7ED4 	0F94
		 DB 	02H  			//7ED6 	02
		 DW 	0F94H  			//7ED7 	0F94
		 DB 	04H  			//7ED9 	04
		 DW 	0F94H  			//7EDA 	0F94
		 DB 	08H  			//7EDC 	08
		 DW 	0F94H  			//7EDD 	0F94
		 DB 	10H  			//7EDF 	10
		 DW 	0F94H  			//7EE0 	0F94
		 DB 	20H  			//7EE2 	20
		 DW 	0F94H  			//7EE3 	0F94
		 DB 	40H  			//7EE5 	40
		 DW 	0F94H  			//7EE6 	0F94
		 DB 	80H  			//7EE8 	80
		 DW 	0F95H  			//7EE9 	0F95
		 DB 	01H  			//7EEB 	01
		 DW 	0F95H  			//7EEC 	0F95
		 DB 	02H  			//7EEE 	02
		 DW 	0F95H  			//7EEF 	0F95
		 DB 	04H  			//7EF1 	04
		 DW 	0F95H  			//7EF2 	0F95
		 DB 	08H  			//7EF4 	08
		 DW 	0F95H  			//7EF5 	0F95
		 DB 	10H  			//7EF7 	10
		 DW 	0F95H  			//7EF8 	0F95
		 DB 	20H  			//7EFA 	20
		 DW 	0F95H  			//7EFB 	0F95
		 DB 	40H  			//7EFD 	40
		 DW 	0F95H  			//7EFE 	0F95
		 DB 	80H  			//7F00 	80
		 DW 	0F96H  			//7F01 	0F96
		 DB 	01H  			//7F03 	01
		 DW 	0F96H  			//7F04 	0F96
		 DB 	02H  			//7F06 	02
		 DW 	0F96H  			//7F07 	0F96
		 DB 	04H  			//7F09 	04
		 DW 	0F96H  			//7F0A 	0F96
		 DB 	08H  			//7F0C 	08
		 DW 	0F96H  			//7F0D 	0F96
		 DB 	10H  			//7F0F 	10
		 DW 	0F96H  			//7F10 	0F96
		 DB 	20H  			//7F12 	20
		 DW 	0F96H  			//7F13 	0F96
		 DB 	40H  			//7F15 	40
		 DW 	0F96H  			//7F16 	0F96
		 DB 	80H  			//7F18 	80
		 DW 	0F97H  			//7F19 	0F97
		 DB 	01H  			//7F1B 	01
		 DW 	0F97H  			//7F1C 	0F97
		 DB 	02H  			//7F1E 	02
		 DW 	0F97H  			//7F1F 	0F97
		 DB 	04H  			//7F21 	04
		 DW 	0F97H  			//7F22 	0F97
		 DB 	08H  			//7F24 	08
		 DW 	0F97H  			//7F25 	0F97
		 DB 	10H  			//7F27 	10
		 DW 	0F97H  			//7F28 	0F97
		 DB 	20H  			//7F2A 	20
		 DB 	3FH  			//7F2B 	3F
		 DB 	06H  			//7F2C 	06
		 DB 	5BH  			//7F2D 	5B
		 DB 	4FH  			//7F2E 	4F
		 DB 	66H  			//7F2F 	66
		 DB 	6DH  			//7F30 	6D
		 DB 	7DH  			//7F31 	7D
		 DB 	07H  			//7F32 	07
		 DB 	7FH  			//7F33 	7F
		 DB 	6FH  			//7F34 	6F
		 DB 	77H  			//7F35 	77
		 DB 	7CH  			//7F36 	7C
		 DB 	39H  			//7F37 	39
		 DB 	5EH  			//7F38 	5E
		 DB 	79H  			//7F39 	79
		 DB 	71H  			//7F3A 	71
		 DB 	76H  			//7F3B 	76
		 DB 	38H  			//7F3C 	38
		 DB 	37H  			//7F3D 	37
		 DB 	3EH  			//7F3E 	3E
		 DB 	73H  			//7F3F 	73
		 DB 	5CH  			//7F40 	5C
		 DB 	40H  			//7F41 	40
		 DB 	00H  			//7F42 	00
		 DW 	0001H  			//7F43 	0001
		 DW 	000AH  			//7F45 	000A
		 DW 	0064H  			//7F47 	0064
		 DW 	03E8H  			//7F49 	03E8
		 DW 	2710H  			//7F4B 	2710
		 DW 	0001H  			//7F4D 	0001
		 DW 	0010H  			//7F4F 	0010
		 DW 	0100H  			//7F51 	0100
		 DW 	1000H  			//7F53 	1000
		 DB 	0AH  			//7F55 	0A
		 DB 	0AH  			//7F56 	0A
		 DB 	0AH  			//7F57 	0A
		 DB 	0AH  			//7F58 	0A
		 DB 	0FH  			//7F59 	0F
		 DB 	0FH  			//7F5A 	0F
		 DB 	0FH  			//7F5B 	0F
		 DB 	0FH  			//7F5C 	0F
		 DB 	20H  			//7F5D 	20
		 DB 	21H  			//7F5E 	21
		 DB 	22H  			//7F5F 	22
		 DB 	23H  			//7F60 	23
		 DB 	04H  			//7F61 	04
		 DB 	02H  			//7F62 	02
		 DB 	80H  			//7F63 	80
		 DB 	04H  			//7F64 	04
		 DB 	03H  			//7F65 	03
		 DB 	C8H  			//7F66 	C8
		 DB 	64H  			//7F67 	64
		 DB 	02H  			//7F68 	02
		 DB 	32H  			//7F69 	32
		 DB 	64H  			//7F6A 	64
		 DB 	04H  			//7F6B 	04
		 DB 	03H  			//7F6C 	03
		 DB 	05H  			//7F6D 	05
		 DB 	04H  			//7F6E 	04
		 DB 	14H  			//7F6F 	14
		 DB 	14H  			//7F70 	14
		 DB 	04H  			//7F71 	04
		 DB 	03H  			//7F72 	03
		 DB 	FFH  			//7F73 	FF
		 DB 	03H  			//7F74 	03
		 DB 	60H  			//7F75 	60
		 DB 	56H  			//7F76 	56
		 DB 	6FH  			//7F77 	6F
		 DB 	69H  			//7F78 	69
		 DB 	63H  			//7F79 	63
		 DB 	65H  			//7F7A 	65
		 DB 	44H  			//7F7B 	44
		 DB 	65H  			//7F7C 	65
		 DB 	6CH  			//7F7D 	6C
		 DB 	61H  			//7F7E 	61
		 DB 	79H  			//7F7F 	79
		 DB 	2EH  			//7F80 	2E
		 DB 	56H  			//7F81 	56
		 DB 	6FH  			//7F82 	6F
		 DB 	69H  			//7F83 	69
		 DB 	63H  			//7F84 	63
		 DB 	65H  			//7F85 	65
		 DB 	5FH  			//7F86 	5F
		 DB 	74H  			//7F87 	74
		 DB 	69H  			//7F88 	69
		 DB 	6DH  			//7F89 	6D
		 DB 	65H  			//7F8A 	65
		 DB 	20H  			//7F8B 	20
		 DB 	3DH  			//7F8C 	3D
		 DB 	20H  			//7F8D 	20
		 DB 	25H  			//7F8E 	25
		 DB 	64H  			//7F8F 	64
		 DB 	0DH  			//7F90 	0D
		 DB 	0AH  			//7F91 	0A
		 DB 	00H  			//7F92 	00
		 DB 	52H  			//7F93 	52
		 DB 	75H  			//7F94 	75
		 DB 	6EH  			//7F95 	6E
		 DB 	44H  			//7F96 	44
		 DB 	61H  			//7F97 	61
		 DB 	74H  			//7F98 	74
		 DB 	61H  			//7F99 	61
		 DB 	2EH  			//7F9A 	2E
		 DB 	54H  			//7F9B 	54
		 DB 	69H  			//7F9C 	69
		 DB 	6DH  			//7F9D 	6D
		 DB 	69H  			//7F9E 	69
		 DB 	6EH  			//7F9F 	6E
		 DB 	67H  			//7FA0 	67
		 DB 	20H  			//7FA1 	20
		 DB 	3DH  			//7FA2 	3D
		 DB 	20H  			//7FA3 	20
		 DB 	25H  			//7FA4 	25
		 DB 	64H  			//7FA5 	64
		 DB 	0DH  			//7FA6 	0D
		 DB 	0AH  			//7FA7 	0A
		 DB 	00H  			//7FA8 	00
		 DB 	30H  			//7FA9 	30
		 DB 	31H  			//7FAA 	31
		 DB 	32H  			//7FAB 	32
		 DB 	33H  			//7FAC 	33
		 DB 	34H  			//7FAD 	34
		 DB 	35H  			//7FAE 	35
		 DB 	36H  			//7FAF 	36
		 DB 	37H  			//7FB0 	37
		 DB 	38H  			//7FB1 	38
		 DB 	39H  			//7FB2 	39
		 DB 	41H  			//7FB3 	41
		 DB 	42H  			//7FB4 	42
		 DB 	43H  			//7FB5 	43
		 DB 	44H  			//7FB6 	44
		 DB 	45H  			//7FB7 	45
		 DB 	46H  			//7FB8 	46
		 DB 	00H  			//7FB9 	00
		 DB 	73H  			//7FBA 	73
		 DB 	74H  			//7FBB 	74
		 DB 	61H  			//7FBC 	61
		 DB 	63H  			//7FBD 	63
		 DB 	6BH  			//7FBE 	6B
		 DB 	20H  			//7FBF 	20
		 DB 	69H  			//7FC0 	69
		 DB 	6EH  			//7FC1 	6E
		 DB 	69H  			//7FC2 	69
		 DB 	74H  			//7FC3 	74
		 DB 	20H  			//7FC4 	20
		 DB 	6FH  			//7FC5 	6F
		 DB 	6BH  			//7FC6 	6B
		 DB 	21H  			//7FC7 	21
		 DB 	0DH  			//7FC8 	0D
		 DB 	0AH  			//7FC9 	0A
		 DB 	00H  			//7FCA 	00
		 DB 	53H  			//7FCB 	53
		 DB 	74H  			//7FCC 	74
		 DB 	61H  			//7FCD 	61
		 DB 	63H  			//7FCE 	63
		 DB 	6BH  			//7FCF 	6B
		 DB 	20H  			//7FD0 	20
		 DB 	65H  			//7FD1 	65
		 DB 	6CH  			//7FD2 	6C
		 DB 	65H  			//7FD3 	65
		 DB 	6DH  			//7FD4 	6D
		 DB 	65H  			//7FD5 	65
		 DB 	6EH  			//7FD6 	6E
		 DB 	74H  			//7FD7 	74
		 DB 	73H  			//7FD8 	73
		 DB 	3AH  			//7FD9 	3A
		 DB 	20H  			//7FDA 	20
		 DB 	00H  			//7FDB 	00
		 DB 	73H  			//7FDC 	73
		 DB 	74H  			//7FDD 	74
		 DB 	61H  			//7FDE 	61
		 DB 	72H  			//7FDF 	72
		 DB 	74H  			//7FE0 	74
		 DB 	0DH  			//7FE1 	0D
		 DB 	0AH  			//7FE2 	0A
		 DB 	00H  			//7FE3 	00
		 DB 	42H  			//7FE4 	42
		 DB 	30H  			//7FE5 	30
		 DB 	34H  			//7FE6 	34
		 DB 	46H  			//7FE7 	46
		 DB 	00H  			//7FE8 	00
		 DB 	41H  			//7FE9 	41
		 DB 	30H  			//7FEA 	30
		 DB 	35H  			//7FEB 	35
		 DB 	46H  			//7FEC 	46
		 DB 	00H  			//7FED 	00
		 DB 	35H  			//7FEE 	35
		 DB 	30H  			//7FEF 	30
		 DB 	41H  			//7FF0 	41
		 DB 	46H  			//7FF1 	46
		 DB 	00H  			//7FF2 	00
		 DB 	31H  			//7FF3 	31
		 DB 	30H  			//7FF4 	30
		 DB 	45H  			//7FF5 	45
		 DB 	46H  			//7FF6 	46
		 DB 	00H  			//7FF7 	00
		 DB 	25H  			//7FF8 	25
		 DB 	58H  			//7FF9 	58
		 DB 	20H  			//7FFA 	20
		 DB 	00H  			//7FFB 	00
		 DB 	25H  			//7FFC 	25
		 DB 	58H  			//7FFD 	58
		 DB 	00H  			//7FFE 	00
		 DB 	00H  			//7FFF 	00
			END
