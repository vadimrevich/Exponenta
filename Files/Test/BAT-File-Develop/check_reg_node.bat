@echo off
rem check_reg_node checks the node <node> for default value
rem If node is present script returns 0
rem Usage check_reg_item.bat <node>
setlocal enableextensions enabledelayedexpansion

set node=%1

reg query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��. ������ ᨭ⠪��" && goto reg_Absent
reg query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��: �� 㤠���� ���� 㪠����� ࠧ��� ��� ��ࠬ��� � ॥���." && goto reg_Absent
goto reg_Present
:reg_Absent
echo ������ ����� � ॥��� ���������
rem exit 1
goto reg_Finish
:reg_Present
echo ������ ����� � ॥��� ���������
rem exit 0
:reg_Finish