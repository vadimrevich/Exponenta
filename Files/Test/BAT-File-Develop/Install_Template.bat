@echo off
rem
rem ��������� 䠩� ���⠫��樨 ����ਡ�⨢� � �᭮��묨 䠩���� ����� (蠡���)
rem
rem ���� �����頥�:
rem 0 -- �ᯥ譠� ���⠫����
rem 1 -- �ணࠬ�� 㦥 ��⠭������
rem 2 -- ���ࠢ���� ID ������� ��� ��㤮���⢮�񭭠� ����ᨬ����
rem 3 -- ��⠭���� �����稫��� ��㤠祩

setlocal enableextensions enabledelayedexpansion

Rem ��⠭���� ��⥬����� ��६����� ���㦥���

set myID="<��� ID ��� �����>"
set manifest=Disk\path\packet.newmanifest
set manifaes1 %TEMP%\packet.manifest1
set curdir=%CD%
set Key_Var=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
set Dest_DIR=
set Log_Path=
set Log_File=Packet.log
set Param1=

rem �஢�ઠ ����ᨬ��⥩ ��⥬���� ���㦥���
rem
rem checknewid_E
rem if not exist <䠩�� ������� ����ᨬ��⥩>

rem �����⮢�� ���짮��⥫�᪨� ��६����� ���㦥���.
rem �� ��६���� ���㦥��� ।��������� ���짮��⥫��  ��� ����� ������� �����.
rem ����� �஢������ ����稥 �������� �ਫ������ ��� �����. �᫨ ������� ��������� -- ��祣�� �� ��������.

echo -
echo ���� ���������� � �ணࠬ�� ��⠭���� �����
echo ������ �ணࠬ�� ��⠭�������� 䠩�� � ��⠫�� %Dest_DIR%
echo -

rem ����� ����� �㦥� ⮫쪮 ��� ��⠭��騪�� ����⮢, ������ �����⠫����.
echo ����塞 ����� ��⠭����...
echo Nothing to do!

rem del /F /S /Q %Dest_DIR%
rem rd /S /Q %Dest_DIR%
echo -
echo ����塞 ���� ��६���� ���㦥���...
echo -
rem call %curdir%\reg_del_envvar.bat %Param%

rem ��ᯠ����� ����ਡ�⨢� �� SFX ��娢� � ��⠫�� %Dest_DIR%
rem ��⮬���᪠� �ᯠ����� ������ ���� ����஥�� �⤥�쭮
rem ��������! ᬮ��� �� �����祭�� ��⥬��� ��६�����!
rem �����. �� �ணࠬ��஢���� ��ন� ��� ᢮��� ��� ���������� 䠩�

echo -
echo ��ᯠ���뢠�� ����ਡ�⨢...
echo -
<�����>.SFX.exe

rem ��������� ��६�����, �᫨ �㦭�

echo 
echo ��������㥬 ���� ��६���� ���㦥���...
echo
rem Reg Add "!Key_Var!" /v "!��ࠬ���!" /t REG_SZ /d "!��ࠬ���!" /f 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "�訡��" && goto UnSuccess
rem echo The variable is created
echo Nothing to do
echo -

rem �ࠢ�� 䠩��� ���䨣��樨 ����� Exponenta
@echo on
rem "=== Changing Exponente Config ==="
rem

rem �������� १�ࢭ�� ����� onSysLoad
rem
rem backup-sysloads
rem
rem ᮧ����� ᯨ᪠ ����ﭭ�� ��������� ��� �������
rem echo > Packet_onload.bat
rem echo  > packet_send.bat
rem echo > packet_email.bat
rem
rem ����஢���� ������� � �㦭�� ����
rem
rem
echo off
echo -
echo Installation is made with Success!
rem
rem ��ࠢ�� ���� ��⠭���� �� �ࢥ� 宧鶴�
rem curl
exit 0
goto sess_Finish

:already_Exist
echo Installation Warning!
echo This Packet has been already insnfktd
echo The yuden.Exponenta configuration stay the same.
rem
rem ��ࠢ�� ���� ��⠭���� �� �ࢥ� 宧鶴�
rem curl
exit 1
goto sess_Finish


:UnSuccess
echo General Error
echo Installation may be incomplete!
echo The yuden.Exponenta configuration stay the same.
rem
rem ��ࠢ�� ���� ��⠭���� �� �ࢥ� 宧鶴�
rem curl
exit 3
goto sess_Finish

:Bad_ID
echo General Error
echo Bad ID or missing dependence
echo 
echo The yuden.Exponenta configuration stay the same.
rem
rem ��ࠢ�� ���� ��⠭���� �� �ࢥ� 宧鶴�
rem curl
exit 2

:sess_Finish
rem pause