@echo off
rem check_uname_admin.bat is a file for checking current user login windows for administrative rights
rem usage: > check_uname_admin.bat
net session >nul 2>&1
if %errorLevel% == 0  goto ch_Admin
echo � ������ ��⭮� ����� ��� �ࠢ ����������� 
goto ch_Finish
:ch_Admin
echo � ������ ��⭮� ����� ���� �ࠢ� �����������
:ch_Finish