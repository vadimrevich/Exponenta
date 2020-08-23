@echo off
rem check_reg_node checks the node <node> for default value
rem If node is present script returns 0
rem Usage check_reg_item.bat <node>
setlocal enableextensions enabledelayedexpansion

set node=%1

%SystemRoot%\System32\reg.exe query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��. ������ ᨭ⠪��" && goto reg_Absent
%SystemRoot%\System32\reg.exe query !node! /ve 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��: �� 㤠���� ���� 㪠����� ࠧ��� ��� ��ࠬ��� � ॥���." && goto reg_Absent
goto reg_Present
:reg_Absent
echo "This node is absent in the Windows Registry."
rem exit 1
goto reg_Finish
:reg_Present
echo "This node is present in the Windows Registry."
rem exit 0
:reg_Finish
