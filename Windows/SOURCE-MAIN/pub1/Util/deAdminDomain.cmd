rem This Script deletes Domain USER MyAdminAccount from local admin group
rem deletes Domain administrator Group from local  administrators group
rem Domain user MyAdminAccount from the Domain Administrators group and from system
rem Script Must Run With Highest access right!
rem This file must encoded on 866 Windows Codepage
echo off
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\chcp.exe 866
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MyAdminAccount /delete
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MyAdminAccount /delete
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" %COMPUTERNAME%\"Администраторы" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" %COMPUTERNAME%\"Administrators" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" MyAdminAccount /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" MyAdminAccount /delete /DOMAIN
%SystemRoot%\System32\net.exe user MyAdminAccount /delete /DOMAIN
%SystemRoot%\System32\chcp.exe 866
