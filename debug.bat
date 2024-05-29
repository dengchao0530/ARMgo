@echo off
rem This script deletes all .c files in the current directory

rem Delete all .c files
del /Q *.c
if %ERRORLEVEL% == 0 (
    echo All .c files deleted.
) else (
    echo No .c files found or an error occurred.
)

del /Q *.exe
if %ERRORLEVEL% == 0 (
    echo All .exe files deleted.
) else (
    echo No .exe files found or an error occurred.
)
echo Finished.
pause
