@echo off
rem reg_del_envvar.bat is a script which delete the environment variable from the shell
rem Usage > reg_del_envvar.bat <variable name>

setlocal enableextensions enabledelayedexpansion

set Key=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
set sParam=%1

if not defined sParam goto ch_NoParam

%SystemRoot%\System32\reg.exe delete "!Key!" /v "!sParam!" /f 2>&1 | %SystemRoot%\system32\find.exe /I "�訡��" >nul 2>nul && goto UnSuccess
goto Success

:UnSuccess
echo "The variable not Deleted."
goto Finish

:Success
echo "Success. The variable is Deleted."
goto Finish

:ch_NoParam
echo "Syntax Error"
echo "Usage > reg_del_envvar.bat <variable name>"
rem exit 1
goto Finish

:Finish

