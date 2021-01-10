rem This script is created thr local user MyAdminAccount and register it
rem As local administrator
rem It also registred Group "Domain Administrators" as local group
rem and domain user MyAdminAccount as local administrator
rem This file must encoded on 866 Windows Codepage
echo off
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\chcp.exe 866
%SystemRoot%\System32\net.exe user MyAdminAccount MyAdminPassword /add
%SystemRoot%\System32\net.exe localgroup Администраторы MyAdminAccount /add
%SystemRoot%\System32\net.exe localgroup Пользователи MyAdminAccount /delete
%SystemRoot%\System32\net.exe localgroup Users MyAdminAccount /delete
%SystemRoot%\System32\net.exe localgroup Administrators MyAdminAccount /add
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\"Администраторы домена" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\"Domain Administrators" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\"Пользователи домена" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\"Domain Users" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MyAdminAccount /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MyAdminAccount /add /DOMAIN
call c:\pub1\Util\reg_import_file.cmd c:\pub1\Util\winlogon-SpecialAccounts.reg
%SystemRoot%\System32\chcp.exe 866
