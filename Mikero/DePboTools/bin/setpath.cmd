
@echo off
rem
rem  this code is called by the installer to get round the 1024char limitation

SETLOCAL ENABLEEXTENSIONS
set pathkey=HKLM\System\CurrentControlSet\Control\Session Manager\Environment
set pathkey=HKEY_CURRENT_USER\Environment
rem echo %pathkey%
set  mypath=C:\Program Files (x86)\Mikero\DePboTools\bin

for /F "Tokens=2* skip=2" %%A In ('REG QUERY "%pathkey%" /v "path" 2^>nul') do (set _MIKEDLL=%%B)
if defined _MIKEDLL goto found_path
set _MIKEDLL=%mypath%
@setlocal enableextensions enabledelayedexpansion
reg add "%pathkey%" /f /v Path /t REG_EXPAND_SZ /d "%_MIKEDLL%"
endlocal
exit /b 0
:found_path

rem this removes my entry so that the compare will fail if it was there

set var=%_MIKEDLL:C:\Program Files (x86)\Mikero\DePboTools\bin=%

echo car="%var%"
echo mke="%_MIKEDLL%"


if /I "%var%"=="%_MIKEDLL%" (goto not_found) 
rem C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files (x86)\Windows Kits\8.0\Windows Performance Toolkit\;C:\Program Files\TortoiseSVN\bin;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\QuickTime\QTSystem\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Skype\Phone\;C:\Program Files (x86)\Mikero\DePboTools\bin
rem echo found
echo none

exit b/0
:not_found

set _MIKEDLL=%_MIKEDLL%;%mypath%
echo adding %_MIKEDLL%
@setlocal enableextensions enabledelayedexpansion
reg add "%pathkey%" /f /v Path /t REG_EXPAND_SZ /d "%_MIKEDLL%"
endlocal


