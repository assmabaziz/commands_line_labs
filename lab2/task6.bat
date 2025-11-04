@echo off
setlocal enabledelayedexpansion
set /p folder=Enter folder path: 
for /f "delims=" %%A in ('dir /ad /s /b "!folder!\*" ^| find /c /v ""') do set "total=%%A"
echo !total!
pause
