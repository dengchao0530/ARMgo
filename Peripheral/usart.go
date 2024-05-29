package Peripheral

import (
	"ARMgo/Config"
	"log"
	"os"
)

// 创建定时器代码
func CreateUsartCode(config Config.Config) {
	//判断芯片类型
	var UsartCode string
	if config.ChipConfig.ChipType == "STM32F103" {
		UsartCode = Config.GenerateUsartCodestm32(config)
	} else if config.ChipConfig.ChipType == "GD32F103" {
		UsartCode = Config.GenerateUsartCodegd32(config)
	}
	// 打开文件
	file, err := os.OpenFile("usart_init.c", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalf("Failed to open or create file: %v", err)
	}
	defer file.Close()
	// 写入生成的代码
	if _, err := file.WriteString(UsartCode); err != nil {
		log.Fatalf("写入文件失败: %v", err)
	}
	log.Println("IO配置代码已成功写入 usart_init.c 文件")
}
