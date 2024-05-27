cmake_minimum_required(VERSION 3.26)
project(touchlib_6017 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(touchlib_6017
        beep.c
        beep.h
        control.c
        control.h
        display.c
        display.h
        eeprom.c
        eeprom.h
        encoder.c
        encoder.h
        GPIO_Init.c
        GPIO_Init.h
        irkey.c
        irkey.h
        led.c
        led.h
        main.c
        main.h
        set123.c
        set123.h
        setsysdata.c
        setsysdata.h
        tm1629b.c
        tm1629b.h
        touch.h
        touchkey.c
        touchkey.h
        uart.c
        uart.h
        uart2.c
        uart2.h
        voice.c
        voice.h)
