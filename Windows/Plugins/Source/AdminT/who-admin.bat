@echo OFF
WHOAMI /PRIV | find /i "SeRemoteShutdownPrivilege"
if %ERRORLEVEL% == 0 goto admin
msg * ����� �믮������ � �ࠢ��� ���짮��⥫� - %USERNAME%
exit
:admin
msg * ����� �믮������ � �ࠢ��� �����������.
