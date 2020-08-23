@echo off
rem check_reg_item checks the item <item> at node <node> for value or default value
rem If value is present script returns 0
rem Usage check_reg_item.bat <node> <item>
setlocal enableextensions enabledelayedexpansion

set node=%1
set item=%2

reg query !node! /v !item! 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��. ������ ᨭ⠪��" && goto reg_Absent
reg query !node! /v !item! 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��: �� 㤠���� ���� 㪠����� ࠧ��� ��� ��ࠬ��� � ॥���." && goto reg_Absent
goto reg_Present
:reg_Absent
echo ������ �㭪� � ॥��� ���������
rem exit 1
goto reg_Finish
:reg_Present
echo ����� �㭪� � ॥��� ���������
rem exit 0
:reg_Finish