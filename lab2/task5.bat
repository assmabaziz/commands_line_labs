@echo off
set /p num1=enter the first number
if "%num1%"=="-" goto :EOF
set /p num2=enter the second number
if "%num2%"=="-" goto :EOF
if %num1% GTR %num2% (
echo Max: %num1%
echo Min: %num2%
) else (
echo Max: %num2%
echo Min: %num1%
)
pause
