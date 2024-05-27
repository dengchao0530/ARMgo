package main

import (
	"ARMgo/Config"
	"ARMgo/Peripheral"
	"log"
)

var config Config.Config

func init() {
	// 读取 XML 配置文件
	var err error
	config, err = Config.ReadConfig("config.xml")
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
}

func main() {
	Peripheral.CreateTimerCode(config) //创建定时器代码
}
