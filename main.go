package main

import (
	"fmt"
	"go_script/Config"
	"log"
	"os"
)

func main() {
	// 读取 XML 配置文件
	config, err := Config.ReadConfig("config.xml")
	if err != nil {
		log.Fatalf("无法读取配置文件原因是: %v", err)
	} else {
		log.Println("读取配置文件完成!")
	}
	err = Config.CheckFile(&config)
	if err != nil {
		log.Fatalf("检查到有错误，错误是: %v", err)
	} else {
		log.Println("配置文件无错误")
	}

	// 生成定时器配置代码
	timerCode := Config.GenerateTimerCode(config)

	// 打开文件
	file, err := os.OpenFile("Timer.c", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalf("Failed to open or create file: %v", err)
	}
	defer file.Close()

	// 写入生成的代码
	if _, err := file.WriteString(timerCode); err != nil {
		log.Fatalf("写入文件失败: %v", err)
	}

	fmt.Println("定时器配置代码已成功写入 Timer.c 文件")
}
