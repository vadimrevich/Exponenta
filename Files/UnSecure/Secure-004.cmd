rem This File Adjust Null Session Access

rem Start Schedule Service Auto
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule" /v Start /t REG_DWORD /d 2 /f

rem Deny Anonymous Access to Share
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v restrictanonymous /t REG_DWORD /d 1 /f

rem Deny Null Session
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v RestrictNullSessAccess /t REG_DWORD /d 1 /f
