@echo on
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where drivetype^="3" get name /value^|find "="') do (
 set "disk=%%a"& cmd/v/c echo \\%Computername%\!disk:~,1!$\papka_shara
 rem set "disk=%%a"& cmd/v/c net share !disk:~,1!$
 rem cmd/c takeown /f "���� � ����������" /r /d y && icacls "���� � ����������" /grant Administrators:F /t
)
pause