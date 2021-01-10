@echo off

REM
REM Check for commandline args
REM
if "[%~1]" == "[]" goto error
if "[%~2]" == "[]" goto error

set LN=ln.exe

if not exist "%~1" goto error
if not exist "%~2" goto error

setLocal EnableDelayedExpansion

REM
REM Get date and time for timestamps on directories
REM
for /f "delims=" %%a in ('%LN% --datetime') do set DATETIMESTAMP=%%a

set SourceDir=%~n1
set DestDir=%~2

REM
REM Do the Delorean Copy
REM
pushd %DestDir%
set BACKUPCREATED=%DestDir%\%SourceDir% - %DATETIMESTAMP%
if exist "%SourceDir% - ????-??-?? ??-??-??" (
  for /f "delims=" %%a in ('dir /b /AD /O:N "%SourceDir% - ????-??-?? ??-??-??"') do set LastBackup=%%a
  popd
  %LN% --delorean "%~1" "%DestDir%\!LastBackup!" "%BACKUPCREATED%"
) else (
  popd
  %LN% --copy "%~1" "%BACKUPCREATED%"
)
if errorlevel 1 goto errorexit

REM
REM The Tower of Hanoi Backup Scheme
REM
set BACKUPSTRATEGY=%DestDir%\.hanoi.cache
echo.

REM
REM Read BackupContext
REM
if not "%3"=="" (set /a KeepMax=%~3) else (set KeepMax=0)
if %KeepMax% EQU 0 goto :EOF

REM If .cache is not available then generate it
REM
if not exist %BACKUPSTRATEGY% (
  echo ;%KeepMax%;^1> %BACKUPSTRATEGY%
)

set /p firstline= <%BACKUPSTRATEGY%
for /f "tokens=1,2 delims=;" %%a in ("%firstline%") do ( 
  set /a BACKUPCOUNT=%%a
  set /a BACKUPID=%%b
)

REM Overwrite BACKUPCOUNT
REM
set /a BACKUPCOUNT=%KeepMax%

set i=0
for /F "eol=; tokens=1,2 delims=^|" %%a in (%BACKUPSTRATEGY%) do (
   set /A i+=1
   set tape[!i!]=%%a
   set BackupSet[!i!]=%%b
)
set NumberOfSets=%i%

REM
REM Lookup which backup set has to be deleted
REM
REM echo on
set /a idx=%BACKUPID%
set /a BackupSetIdx = 0
for /L %%i in (2,1,%BACKUPCOUNT%) do ( 
  set /a BIT0 = "!idx! & 1"
  if !BIT0! gtr 0 goto lbl_BackupSet
  set /a idx ">>= 1"
  set /a BackupSetIdx += 1
)

:lbl_BackupSet
  
REM
REM Delete BackupSetIdxs
REM
set /a BackupSetIdx += 1
if %BackupSetIdx% LEQ %NumberOfSets% (
  if "!tape[%BackupSetIdx%]!" NEQ "" (
    if exist "!BackupSet[%BackupSetIdx%]!" (
      echo Deleting BackupSet !tape[%BackupSetIdx%]!: '!BackupSet[%BackupSetIdx%]!'
      %LN% --deeppathdelete "!BackupSet[%BackupSetIdx%]!" > nul
    ) 
  ) 
)
set BackupSet[!BackupSetIdx!]=%BACKUPCREATED%
set tape[!BackupSetIdx!]=!BackupSetIdx!

set /a BACKUPID += 1
echo Using BackupSet  !tape[%BackupSetIdx%]!: '!BackupSet[%BackupSetIdx%]!'

REM
REM Make sure the BackupId does not exceed 2^BackupCount
REM
SET BackUpMaxNum=1
FOR /L %%i IN (1,1,%BACKUPCOUNT%) DO SET /A BackUpMaxNum *= 2
if %BACKUPID% gtr !BackUpMaxNum! set /a BACKUPID = 1

REM
REM Write the BackupContext
REM
echo ;%BACKUPCOUNT%;%BACKUPID% > %BACKUPSTRATEGY%
for /L %%i in (1,1,%BACKUPCOUNT%) do ( 
  @echo !tape[%%i]!^|!BackupSet[%%i]!>> %BACKUPSTRATEGY%
)

) 
goto :EOF

REM
REM Usage
REM
:error
echo Usage: %~n0 ^<SourcePath^> ^<DestPath^> (^<BackupSets^>)
echo.
echo  SourcePath    directory containing the files to be backed up
echo  DestPath      directory where "DeLorean copy" sets will be created
echo  BackupSets    (opt.) number of backupsets for tower of Hanoi backup
echo.
echo e.g. %~n0 c:\data\source c:\data\backup 5

:errorexit
exit /b 1
