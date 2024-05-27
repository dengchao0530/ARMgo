package Config

import (
	"encoding/xml"
	"errors"
	"io/ioutil"
	"os"
)

type Config struct {
	XMLName    xml.Name   `xml:"config"`
	ChipConfig ChipConfig `xml:"chipconfig"`
}

type ChipConfig struct {
	ChipType    string      `xml:"chiptype"`
	ChipSpeed   string      `xml:"chip_speed"`
	IOPutPort   IOPutPort   `xml:"ioputport"`
	TimerConfig TimerConfig `xml:"timerconfig"`
	UARTConfig  UARTConfig  `xml:"uartconfig"`
}

type IOPutPort struct {
	GPIO      string         `xml:"gpio"`
	Mode      string         `xml:"mode"`
	GPIOSpeed string         `xml:"gpiospeed"`
	NVIC      PortNVICConfig `xml:"nvic"`
}

type PortNVICConfig struct {
	Enable      int       `xml:"enable"`
	IRQChannel  string    `xml:"IRQChannel"`
	PrePriority int       `xml:"pre_priority"`
	SubPriority int       `xml:"sub_priority"`
	IRQHandle   IRQHandle `xml:"IRQ_Handle"`
}

type TimerConfig struct {
	Enable       int             `xml:"enable"`
	TimerNum     string          `xml:"timernum1"`
	TimerChannel string          `xml:"timerchannel"`
	Prescaler    string          `xml:"prescaler"`
	Period       string          `xml:"period"`
	NVIC         TimerNVICConfig `xml:"nvic"`
	PWMEnable    PWMConfig       `xml:"pwm_enable"`
}

type TimerNVICConfig struct {
	Enable      int       `xml:"enable"`
	IRQChannel  string    `xml:"IRQChannel"`
	PrePriority int       `xml:"pre_priority"`
	SubPriority int       `xml:"sub_priority"`
	IRQHandle   IRQHandle `xml:"IRQ_Handle"`
}

type IRQHandle struct {
	Enable int `xml:"enable"`
}

type PWMConfig struct {
	Enable  int    `xml:"enable"`
	GPIO    string `xml:"gpio"`
	PWMMode int    `xml:"pwm_mode"`
	Duty    int    `xml:"duty"`
}

type UARTConfig struct {
	General UARTGeneral `xml:"general"`
	NVIC    UARTNVIC    `xml:"nvic"`
	Fput    FputConfig  `xml:"fput"`
}

type UARTGeneral struct {
	USARTNum    string   `xml:"usartnum"`
	Baud        string   `xml:"Baud"`
	CheckBit    string   `xml:"checkbit"`
	DataBit     string   `xml:"databit"`
	StopBit     string   `xml:"stopbit"`
	ControlFlow string   `xml:"controlflow"`
	GPIO        UARTGPIO `xml:"gpio"`
	Mode        int      `xml:"mode"`
}

type UARTGPIO struct {
	TXGPIO string `xml:"tx_gpio"`
	RXGPIO string `xml:"rx_gpio"`
}

type UARTNVIC struct {
	Enable      int       `xml:"enable"`
	IRQChannel  string    `xml:"IRQChannel"`
	PrePriority int       `xml:"pre_priority"`
	SubPriority int       `xml:"sub_priority"`
	IRQHandle   IRQHandle `xml:"IRQ_Handle"`
}

type FputConfig struct {
	Enable   int    `xml:"enable"`
	USARTNum string `xml:"usartnum"`
}

// 从指定的 XML 文件读取配置
func ReadConfig(filename string) (Config, error) {
	var config Config

	// 打开 XML 文件
	xmlFile, err := os.Open(filename)
	if err != nil {
		return config, err
	}
	defer xmlFile.Close()

	// 读取 XML 文件内容
	byteValue, err := ioutil.ReadAll(xmlFile)
	if err != nil {
		return config, err
	}

	// 解析 XML 文件内容到结构体
	err = xml.Unmarshal(byteValue, &config)
	if err != nil {
		return config, err
	}

	return config, nil
}

// 检查配置文件中的内容是否合法
func CheckFile(config *Config) error {
	//检查芯片型号
	if config.ChipConfig.ChipType != "STM32F103" && config.ChipConfig.ChipType != "GD32F103" {
		return errors.New("芯片不是STM32F103或者GD32F103\n")
	}

	// 检查定时器配置的
	if config.ChipConfig.TimerConfig.Enable == 1 {
		// 检查定时器时基单元参数
		if config.ChipConfig.TimerConfig.TimerNum == "" {
			return errors.New("定时器号不能为空")
		}
		if config.ChipConfig.TimerConfig.TimerChannel == "" {
			return errors.New("定时器通道不能为空")
		}
		if config.ChipConfig.TimerConfig.Prescaler == "" {
			return errors.New("预分频配置不能为空")
		}
		if config.ChipConfig.TimerConfig.Period == "" {
			return errors.New("自动重装配置不能为空")
		}
	}

	// 检查定时器中断配置
	if config.ChipConfig.TimerConfig.NVIC.Enable == 1 {
		if config.ChipConfig.TimerConfig.NVIC.PrePriority < 0 {
			return errors.New("抢占优先级配置无效")
		}
		if config.ChipConfig.TimerConfig.NVIC.SubPriority < 0 {
			return errors.New("响应优先级配置无效")
		}
	}

	// 检查PWM配置
	if config.ChipConfig.TimerConfig.PWMEnable.Enable == 1 {
		if config.ChipConfig.TimerConfig.PWMEnable.GPIO == "" {
			return errors.New("PWM GPIO配置不能为空")
		}
		if config.ChipConfig.TimerConfig.PWMEnable.PWMMode < 0 {
			return errors.New("PWM模式配置无效")
		}
		if config.ChipConfig.TimerConfig.PWMEnable.Duty < 0 || config.ChipConfig.TimerConfig.PWMEnable.Duty > 100 {
			return errors.New("PWM占空比配置无效")
		}
	}
	return nil
}
