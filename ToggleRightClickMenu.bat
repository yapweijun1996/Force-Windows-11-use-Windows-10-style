@echo off
title Windows 11 Right-Click Menu Switcher
color 0a

:menu
cls
echo ============================================
echo   Windows 11 Right-Click Menu Switcher
echo ============================================
echo.
echo   1) Switch to Windows 10 classic right-click menu
echo   2) Restore to Windows 11 default right-click menu
echo   0) Exit
echo.
set /p choice=Enter your choice (1/2/0):

if "%choice%"=="1" goto win10
if "%choice%"=="2" goto win11
if "%choice%"=="0" exit
goto menu

:win10
echo.
echo Enabling Windows 10 style right-click menu...
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
goto restart

:win11
echo.
echo Restoring to Windows 11 default right-click menu...
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
goto restart

:restart
echo.
echo Restarting Windows Explorer to apply changes...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
echo.
echo Done! Please right-click to test the menu effect.
pause
goto menu