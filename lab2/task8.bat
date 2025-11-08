@echo off
setlocal enabledelayedexpansion
set /p num=Enter a number
if %num% LSS 0 ( 
    echo please enter a number greater than 0
    goto :EOF
)
if %num% GTR 15 ( 
    echo Too large number, Please enter a value between 0 and 15
    goto :EOF
)
set /a factorial=1
for /l %%i in (1,1,%num%) do (
set /a factorial=!factorial!*%%i
)
echo Factorial of %num% is: !factorial!
pause
