@echo off
rem ���� ��������� ��������� ���������� Windows � ����������. ������ ���� ����������� �������������� ������.

rem ��������� ���������� ���������� Windows 7-10 (����������� ��-���������)

%SystemRoot%\System32\systeminfo.exe > %PUB1%\Util\MySystemInfoCheck.txt
net user  >> %PUB1%\Util\MySystemInfoCheck.txt
net share >> %PUB1%\Util\MySystemInfoCheck.txt
wmic.exe ComputerSystem get Name, PartOfDomain, Domain, Workgroup, DNSHostName, DomainRole /FORMAT: TEXTVALUELIST  >> %PUB1%\Util\MySystemInfoCheck.txt

rem ��������� �������������� �������� ���������� �� ������ Scripts (nht,.etn �����������. ����� ��������� ������)
rem %Util%\SysInfo.bat >>  >> %PUB1%\Util\MySystemInfoCheck.txt
