@echo off
set CURDATE=%DATE%
set newname2="%~d2%~p2%~n1%CURDATE:~8,2%%CURDATE:~3,2%%CURDATE:~0,2%%~x1"
copy /Y %1 %newname2%
set CURDATE=
set newname2=
