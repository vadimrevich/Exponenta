@echo off
%SystemRoot%\System32\chcp.exe 1251

%SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /save usoclient.exe.acl >>setup.log 2>>setup.log
%SystemRoot%\System32\takeown /f "%SystemRoot%\system32\usoclient.exe" /a && %SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /grant:r ��������������:(F) >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /deny �������:RX  >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /deny ���:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /deny ��������������:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe "%SystemRoot%\system32\usoclient.exe" /deny ������������:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\chcp.exe 866
