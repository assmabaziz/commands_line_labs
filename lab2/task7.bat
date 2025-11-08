@echo off
setlocal enabledelayedexpansion
set /p folder1=Enter the first path:
set /p folder2=Enter the second path:
for %%F in (!folder1!\*) do (
    if exist "!folder2!\%%~nxF" echo %%~nxF
)
pause
