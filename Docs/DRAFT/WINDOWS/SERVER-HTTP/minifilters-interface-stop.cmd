@echo off
icacls "C:\Windows\System32\fltLib.dll" /save fltlib.dll.acl >>setup.log 2>>setup.log
takeown /f "C:\Windows\System32\fltLib.dll" && icacls "C:\Windows\System32\fltLib.dll" /grant:r ��������������:(F) >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny �������:RX  >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny ���:RX >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny ��������������:RX >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny ������������:RX >>setup.log 2>>setup.log
