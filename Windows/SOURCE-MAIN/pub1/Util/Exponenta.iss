; -- Exponenta.iss --
;
; This script Create Installator and deinstallator of the
; Exponenta Admin Packages Main Files

[Setup]
AppName=Exponenta Admin Packages Main Files
AppVersion=2.0.0.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%PUB1|c:\pub1}
MinVersion=0,6.0
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=C:\CODE\Compile
OutputBaseFilename=ExponentaMainFilesSetup
SetupIconFile=..\..\Resource\Exponentapic.ico
AllowNoIcons=True
AppPublisher=New Internet Technologies Inc.
RestartApplications=False
UserInfoPage=True
VersionInfoVersion=2.0.0.0
VersionInfoCompany=New Internet Technologies Inc.
VersionInfoTextVersion=Version 2.0.0.0_alpha
VersionInfoProductName=Exponenta Admin Pack
VersionInfoProductVersion=2.0.0.0
AppPublisherURL=http://dummy.mydomen.com/
SolidCompression=True
LicenseFile=..\..\..\..\LICENSE.md

[Dirs]
Name: {app}\Util; Attribs: hidden; Permissions: everyone-full
Name: {app}\Distrib; Attribs:hidden; Permissions: everyone-full;
Name: {app}\Distrib\plugins; Attribs:hidden; Permissions: everyone-full;
Name: {app}\Distrib\Zlovred; Attribs:hidden; Permissions: everyone-full;

[Files]
Source: "*.cmd"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.bat"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.reg"; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: descript.ion; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "user-guide.docx"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "user-guide.html"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "PUB1"; ValueData: "{app}"
;Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Hacker_host1"; ValueData: "{%Hacker_host1}"
;Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: noerror; ValueType: string; ValueName: "PATH"; ValueData: "{olddata};{app}\Util"

[UninstallRun]

;Filename: {app}\Util\uninstall-mainexponenta.cmd; Flags: runhidden
Filename: {app}\Util\minifilters-interface-restore.cmd; Flags: runhidden

