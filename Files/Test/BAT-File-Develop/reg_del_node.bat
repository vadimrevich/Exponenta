@echo off
rem reg_del_node.bat is a script to delete of a Windows Registry Node only if reserve copy is created
rem script returns 0 if success, 1 if node not found and 3 if bad syntaxis 
rem and 2 if a file of reserved copy not found and 4 if cause general error of an operation caused
rem Usage: > reg_inport_fale.bat <node> <file name with extension>
setlocal enableextensions enabledelayedexpansion

set sParam1=%~1
set sParam2=%~2

if not defined sParam1 goto ch_NoParam
if not defined sParam2 goto ch_NoParam
if not exist %2 goto ch_NoFile

reg query !sParam1! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��. ������ ᨭ⠪��" && goto reg_Absent
reg query !sParam1! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��: �� 㤠���� ���� 㪠����� ࠧ��� ��� ��ࠬ��� � ॥���." && goto reg_Absent
goto reg_Present

:reg_Absent
echo The current Node Not Found
rem exit 1
goto Finish

:reg_Present
reg delete !sParam1! /f >nul 2>nul
if errorlevel == 0 goto ch_Ok
goto ch_General

:ch_Ok
echo "Test. Deletion is succces!"
rem exit 0
goto Finish

:ch_General
echo "Test. General Eroor in Adding file."
rem exit 4
goto Finish

:ch_NoParam
echo "Test. Bad Syntax"
echo "Usage: reg_inport_fale.bat <node> <file name with extension>"
rem exit 2
goto Finish

:ch_NoFile
echo "Test. No file of a reserve copy. Check valid path and file name"
echo "Usage: reg_inport_fale.bat <node> <file name with extension>"
rem exit 2
goto Finish
:Finish

