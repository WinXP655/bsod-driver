@echo off
title BSOD Service Control Panel
:menu
cls
echo.
echo 1. Install driver
echo 2. Uninstall driver
echo 3. Activate (crash system)
echo 4. Reinstall driver
echo 5. Exit
echo.
echo Please enter the number of the option you want to perform and press Enter.
set /p choice=
if "%choice%"=="1" goto install
if "%choice%"=="2" goto uninstall
if "%choice%"=="3" goto activate
if "%choice%"=="4" goto reinstall
if "%choice%"=="5" goto exit
echo Invalid choice. Please try again.
pause
goto menu

:install
echo Installing driver...
sc create bsod binpath= "%cd%\bsod.sys" type= kernel
echo Driver successfully installed.
pause
goto menu

:uninstall
echo Uninstalling driver...
sc delete bsod
echo Driver successfully uninstalled.
pause
goto menu

:activate
echo Activating driver...
sc start bsod
pause
goto menu

:reinstall
echo Reinstalling driver...
sc delete bsod
sc create bsod binpath= "%cd%\bsod.sys" type= kernel
echo Driver successfully reinstalled.
pause
goto menu

:exit
echo Exiting the program...
exit
