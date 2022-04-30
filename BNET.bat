@echo off
color 02
echo “Battle.net.13434 autodelete by [TIHB]CHERNOMOR”

cd %windir% & cd/

if exist “Program Files (x86)\Battle.net” (
set BNETPATH="%cd%Program Files (x86)\Battle.net"
) else (
echo “Battle.net folder not found on system disk”
pause
exit
)

cd %BNETPATH%

if exist “Battle.net.13434” (
rmdir Battle.net.13434 /s /q
)

set “BNETPATH=”
start “” “Battle.net Launcher.exe”
exit