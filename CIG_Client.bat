@echo off
setlocal enabledelayedexpansion

echo -Welcome to the very early version of a new CIG SERVER CLIENT ENDPOINT

echo to continue with conecting press any key (otherwise press left [Ctrl + C then type y and hit enter ] to exit  
pause >nul
REM Prompt user for editor path
set /p OldClientPath=Enter the path to RSI Launcher.exe :

REM Prompt user for game project path
set /p GamePath=Enter the path to the StarCitizen.exe :


REM Construct the command with quotes around paths
set command="%OldClientPath%" "%GamePath%" 26.47.160.80 -game -ResX=800 -ResY=900 -WinX=0 -WinY=20 -log -nosteam

REM Execute the command and wait for it to finish
call start "" %command%

endlocal