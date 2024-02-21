@echo off
SET THEFILE=F:\code\Result\delphi\Lazarus\Tray2\tray.exe
echo Linking %THEFILE%
C:\lazarus\fpc\3.2.0\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o F:\code\Result\delphi\Lazarus\Tray2\tray.exe F:\code\Result\delphi\Lazarus\Tray2\link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
