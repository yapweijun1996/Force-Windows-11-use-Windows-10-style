@echo off
echo =========================================
echo   Force Windows 11 use Windows 10 style
echo   right-click context menu
echo =========================================
echo.

:: Add registry entries
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

:: Restart Explorer to apply changes
echo Restarting Windows Explorer...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo Done! Now your right-click menu should look like Windows 10.
pause