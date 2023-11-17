@echo off

title wambo

color 0a

cls
goto SPLASH


:SPLASH
cls
echo                     ********************************************************************************
echo                     *   W      W        A      MMM   MMM  B       OOOO                             *
echo                     *   W      W       A A     M  M M  M  BBBB   O    O  **  APU BOOSTER           *
echo                     *   W  WW  W      AAAAA    M   M   M  B  BB  O    O  **                        *
echo                     *    WW  WW     A       A  M       M  BBBBB   OOOO                             *
echo                     ********************************************************************************

echo Welcome to my APU booster program. Hope you enjoy gaming...

echo Strike any key to continue
pause >nul
cls
goto MENU

:MENU
cls
echo                     ********************************************************************************
echo                     *   W      W        A      MMM   MMM  B       OOOO                             *
echo                     *   W      W       A A     M  M M  M  BBBB   O    O  **  APU BOOSTER           *
echo                     *   W  WW  W      AAAAA    M   M   M  B  BB  O    O  **                        *
echo                     *    WW  WW     A       A  M       M  BBBBB   OOOO                             *
echo                     ********************************************************************************

echo Option 1   Speed up GPU  _ : GPUBOOST
echo Option 2   Speed up Network  _ : NETBOOST
echo Option 3   Run CIG Launcher _ : STARTCIG

SET /p ans=Enter Option Here:

if %ans%==GPUBOOST (
    goto GPUBOOSTER
)

if %ans%==NETBOOST (
    goto NETBOOST
)

if %ans%==STARTCIG (
    goto CIGLAUNCHER
)

:NETBOOST
cls
echo Loading network booster configurations. 
ping localhost -n 5 >nul

:FLUSHCACHE
ipconfig /displaydns
ipconfig /flushdns
echo NETWORK SPEEDUP COMPLETED. Press any key to go back to the menu.
pause >nul
goto MENU

:CIGLAUNCHER
cls

goto ciglogo

:ciglogo
echo                                           **********************                                     
echo                                         *************************                                  
echo                                       *****************************                                 
echo                                     ********************************                                 
echo                                   **********************************                                 
echo                                 *************************************                                  
echo                                ************************************                                  
echo                                *********************************                                   
echo                               ***********************************                                   
echo                              **************************************                                
echo                            *******************************************                              
echo                            *********************************************                            
echo                            ***      ****************             *********                           
echo                            **        **************               *******                          
echo                            **          ***********                *******                          
echo                            **         *************               *******                          
echo                            *         ***************            *********                          
echo                             ********************************************                           
echo                              **********  **  *************************                           
echo                                *********      **********************                              
echo                                   ******  **   *******************                                
echo                                     *****  *   *****************                                   
echo                                      *************************                                      
echo                                       **********************                                         
echo                                         ****************                                            
echo                                          ** ** ** **                                              
echo                                          ** ** ** **
echo  Initializing client Please wait

ping localhost -n 30 >nul



echo Running CIG Launcher 

echo *******************************************
echo **                                      **
echo **         Initializing client          **
echo **                                      **
echo *******************************************

ping localhost -n 30 >nul

echo Running CIG Launcher 
start "" "C:\Program Files\Roberts Space Industries\RSI Launcher\RSI Launcher.exe"
pause >nul

goto MENU

:GPUBOOSTER
cls
REM Prompt user to select the AMD Adrenalin executable using File Explorer
set /p adrenalinPath=Enter the path to AMD Adrenalin (e.g., C:\Program Files\AMD\CNext\CNext\adrenalin.exe): 

REM Check if the specified file exists
if exist "%adrenalinPath%" (
    echo AMD GPUs found. Performing cleanup...

    REM Get a list of GPU devices
    for /f "tokens=1" %%i in ('"%adrenalinPath%" --list-adapters') do (
        set "gpuId=%%i"
        echo Cleaning up GPU !gpuId!

        REM Run your cleanup commands here (replace with your actual cleanup commands)
        REM Example: "%adrenalinPath%" --reset-profile --adapter=!gpuId!

        REM Add more cleanup commands as needed

        echo GPU !gpuId! cleanup complete
    )

    echo Cleanup finished.
) else (
    echo AMD Adrenalin not found, system incompatible, or path is incorrect. Please try again.
    pause
    goto GPUBOOSTER
)

pause
goto MENU