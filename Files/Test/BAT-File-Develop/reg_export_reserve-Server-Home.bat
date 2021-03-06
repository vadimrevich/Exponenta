@echo off
rem reg_export_reserve.bat is a script to maka of a reserved copy of the Windows Registry Node
rem script returns 0 if success, 1 if node not found and 2 if bad syntaxis and 3 if cause general error at file saving
rem If Old reserve copy is present, it is assigned name backupp1-5 with warning and then return warning or general error
rem Usage: > reg_inport_fale.bat <node> <file name with extension>
setlocal enableextensions enabledelayedexpansion

set sParam1=%~1
set sParam2=%~2

if not defined sParam1 goto ch_NoParam
if not defined sParam2 goto ch_NoParam
rem Cycle for check a prethence of the file and its reserve copy
:NoBackup
if not exist %2 goto ch_NoFile
if not exist %2.backup1 goto Backup1
if not exist %2.backup2 goto Backup2
if not exist %2.backup3 goto Backup3
if not exist %2.backup4 goto Backup4
if not exist %2.backup5 goto Backup5
echo "Unable to create backup copy"
goto ch_General
:Backup1
ren %2 %2.backup1
echo "Backup copy 1 created"
goto NoBackup
:Backup2
ren %2.backup1 %2.backup2
echo "Backup copy 2 created"
goto NoBackup
:Backup3
ren %2.backup2 %2.backup3
echo "Backup copy 3 created"
goto NoBackup
:Backup4
ren %2.backup3 %2.backup4
echo "Backup copy 4 created"
goto NoBackup
:Backup5
echo "Backup copy 5 created"
ren %2.backup4 %2.backup5
goto NoBackup

:ch_NoFile
reg query !sParam1! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��. ������ ᨭ⠪��" && goto reg_Absent
reg query !sParam1! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��: �� 㤠���� ���� 㪠����� ࠧ��� ��� ��ࠬ��� � ॥���." && goto reg_Absent
goto reg_Present
:reg_Absent
echo ������ ����� � ॥��� ���������
rem exit 1
goto Finish

:reg_Present
reg export !sParam1! %2 >nul 2>nul
if errorlevel == 0 goto ch_Ok
goto ch_General
:ch_Ok
echo "Test. Export is succces!"
rem exit 0
goto Finish
:ch_General
echo "Test. General Eroor in Adding file."
rem exit 3
goto Finish
:ch_NoParam
echo "Test. Bad Syntax"
echo "Usage: reg_inport_fale.bat <node> <file name with extension>"
rem exit 2
goto Finish
:Finish

