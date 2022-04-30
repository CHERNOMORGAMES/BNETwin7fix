@echo off
setlocal enableextensions & color 02
echo Battle.net.13434+ autodelete by [TIHB]CHERNOMOR & echo.

cd.. & if exist "Battle.net\" (
cd "Battle.net"
) else (
echo Error - I am not in a Battle.net folder
pause
exit
)

if not exist "Battle.net.13401" (
echo You need to download Battle.net.13401 into "%cd%"
pause
exit
)

for /f "delims=. tokens=3" %%i in ('dir /b /a:d') do (
 if 13433 LSS %%i (
 rmdir Battle.net.%%i /s /q
 )
)

endlocal
start "" "Battle.net Launcher.exe"
exit
