@echo off
color 02
echo "Battle.net.13434+ autodelete by [TIHB]CHERNOMOR"

cd %windir% & cd/

if exist "Program Files (x86)\Battle.net\" (
set BNPATCHVER="%cd%Program Files (x86)\Battle.net\"
) else (
echo "Battle.net folder not found on system disk"
pause
exit
)

cd %BNPATCHVER%

if not exist "Battle.net.13401" (
set "BNPATCHVER="
echo "You need to download Battle.net.13401 into %cd%"
pause
exit
)

set BNPATCHVER=13458

if exist "Battle.net.%BNPATCHVER%" (
rmdir Battle.net.%BNPATCHVER% /s /q
)

set "BNPATCHVER="

start "" "Battle.net Launcher.exe"
exit
