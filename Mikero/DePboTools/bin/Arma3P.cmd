@echo off

SETLOCAL ENABLEEXTENSIONS

echo Mikero's Arma3 to "Pdrive"
:chosedrv
choice /C ABCDEFGHIJKLMNOPQRSTUVWXYZ /N /M "enter drive to extract to E..Z 
if not errorlevel 1 exit /b 0
IF ERRORLEVEL 26 SET BOOTLETTER=Z
IF ERRORLEVEL 25 SET BOOTLETTER=Y
IF ERRORLEVEL 24 SET BOOTLETTER=X
IF ERRORLEVEL 23 SET BOOTLETTER=W
IF ERRORLEVEL 22 SET BOOTLETTER=V
IF ERRORLEVEL 21 SET BOOTLETTER=U
IF ERRORLEVEL 20 SET BOOTLETTER=T
IF ERRORLEVEL 19 SET BOOTLETTER=S
IF ERRORLEVEL 18 SET BOOTLETTER=R
IF ERRORLEVEL 17 SET BOOTLETTER=Q
IF ERRORLEVEL 16 SET BOOTLETTER=P
IF ERRORLEVEL 15 SET BOOTLETTER=O
IF ERRORLEVEL 14 SET BOOTLETTER=N
IF ERRORLEVEL 13 SET BOOTLETTER=M
IF ERRORLEVEL 12 SET BOOTLETTER=L
IF ERRORLEVEL 11 SET BOOTLETTER=K
IF ERRORLEVEL 10 SET BOOTLETTER=J
IF ERRORLEVEL  9 SET BOOTLETTER=I
IF ERRORLEVEL  8 SET BOOTLETTER=H
IF ERRORLEVEL  7 SET BOOTLETTER=G
IF ERRORLEVEL  6 SET BOOTLETTER=F
IF ERRORLEVEL  5 SET BOOTLETTER=E
IF ERRORLEVEL  1 goto chosedrv

set BOOTDRV=%BOOTLETTER%:
if exist %BOOTDRV%\ (goto askp)

choice  /m "%BOOTDRV% does not exist. Do you wish to make one?"
IF ERRORLEVEL 2 exit /b 1
set Pdrive= c:\%BOOTLETTER%Drive
mkdir %Pdrive%
if exist %Pdrive% goto gooddir
:baddir
rem ^^ can't use errorlevl coz it may exist already
echo cannot make %Pdrive%
pause
@exit /B 1
:gooddir
set setdrive=%Pdrive%\set%BOOTLETTER%drive.bat
echo if exist %BOOTDRV% (subst %BOOTDRV% /d) > %setdrive%
rem ^^ only needed for subsequent calls
echo subst %BOOTDRV% %Pdrive% >>%setdrive%
call %setdrive%
if not exist %BOOTDRV% goto baddir

choice /c k /m "%setdrive% has been created for your subsequent use"
goto yesp

:askp
set /P INPUT=This will alter some content on the %BOOTDRV% drive. Are you sure? (y/n): %=%
If /I "%INPUT%"=="y" goto yesp
If /I "%INPUT%"=="n" goto nop
goto askp
:nop
@exit /B 1
:yesp


rem ////////////////////////////////////////
echo searching for mikero tools
rem /////////////////////////////////////
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Mikero\depbo" /v "path" 2^>nul') do (set _MIKEDLL=%%B)
if defined _MIKEDLL goto mikefound
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKCU\SOFTWARE\Mikero\depbo" /v "path" 2^>nul') do (set _MIKEDLL=%%B)
if defined _MIKEDLL goto mikefound
echo mikero tools is not set in registry
set _MIKEDLL=C:\Program Files (x86)\Mikero\DePboTools
:mikefound

set _MIKEDLL=%_MIKEDLL%\bin
echo %_MIKEDLL%
rem if not exist "%_MIKEDLL%\depbo.dll" (goto nofind)
if exist "%_MIKEDLL%\extractpbo.exe" goto foundextract
echo extractpbo is not installed
goto err


:foundextract
if exist "%_MIKEDLL%\derap.exe" goto foundDeRap
echo derap.exe is not installed
goto err


:foundDeRap
goto foundDeroad
if exist "%_MIKEDLL%\deroad.exe" goto foundDeroad
echo deroad.exe is not installed
goto err

:foundderoad

rem ********************
echo searching registry for the arma3 path
rem ********************


for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive Studio\ArmA 3" /v "MAIN" 2^>nul') do (set _ARMA3PATH=%%B)
if defined _ARMA3PATH goto found_A3
 
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive Studio\ArmA 3" /v "MAIN" 2^>nul') do (set _ARMA3PATH=%%B)
if defined _ARMA3PATH goto found_A3
 
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Bohemia Interactive\ArmA 3" /v "MAIN" 2^>nul') do (set _ARMA3PATH=%%B)
if defined _ARMA3PATH goto found_A3
 
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Bohemia Interactive\ArmA 3" /v "MAIN" 2^>nul') do (set _ARMA3PATH=%%B)
if defined _ARMA3PATH goto found_A3
 
rem no regkeys are found so use steams generic folder if present

for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Wow6432Node\Valve\Steam" /v "InstallPath" 2^>nul') do (set _ARMA3PATH=%%B\steamapps\common\Arma 3)
if defined _ARMA3PATH goto found_A3
for /F "Tokens=2* skip=2" %%A In ('REG QUERY "HKLM\SOFTWARE\Valve\Steam" /v "InstallPath" 2^>nul') do (set _ARMA3PATH=%%B\steamapps\common\Arma 3)
if defined _ARMA3PATH goto found_A3

echo arma3 does not exist in the registry
goto err


:found_A3
echo %_ARMA3PATH%
rem goto fred
echo removing folders. Expect this to take some time......

rem //////////////////////
echo removing a3...
rem //////////////////////
if exist %BOOTDRV%\a3 (rmdir /s/q %BOOTDRV%\a3)
if ERRORLEVEL 1 goto err

rem //////////////////////////////////////
echo extracting all addons except dubbing....
rem ///////////////////////////////////////

dir /b/s "%_ARMA3PATH%\Addons\*.pbo" >%BOOTDRV%\a3.txt
if ERRORLEVEL 1 goto err

findstr  /vic:"dubbing" "%BOOTDRV%\a3.txt" >"%BOOTDRV%\pipe.txt"
FOR /F "tokens=1* delims=," %%A in (%BOOTDRV%\pipe.txt) do (

extractpbo -p "%%A" %BOOTDRV%\
 if ERRORLEVEL 1 goto err
)
del %BOOTDRV%\pipe.txt


rem ////////////////////////////////////////////////
echo extracting dlc's (if any)
rem ////////////////////////////////////////////////


if not exist "%_ARMA3PATH%\heli" goto noheli
echo extracting the heli folder....
extractpbo -p "%_ARMA3PATH%\heli\Addons" %BOOTDRV%\
if ERRORLEVEL 1 goto err
:noheli

if not exist "%_ARMA3PATH%\kart" goto nokarts
echo extracting the kart folder....
extractpbo -p "%_ARMA3PATH%\kart\Addons" %BOOTDRV%\
if ERRORLEVEL 1 goto err
:nokarts

if not exist "%_ARMA3PATH%\curator" goto nocurator
echo extracting the curator folder....
extractpbo -p "%_ARMA3PATH%\curator\Addons" %BOOTDRV%\
if ERRORLEVEL 1 goto err
:nocurator

if not exist "%_ARMA3PATH%\mark" goto nomark
echo extracting marksman dlc
extractpbo -p "%_ARMA3PATH%\mark\Addons" %BOOTDRV%\
if ERRORLEVEL 1 goto err


:nomark


rem echo removing deprecated a3_dta if it exists...
if exist %BOOTDRV%\a3_dta (rmdir /s/q %BOOTDRV%\a3_dta)
if ERRORLEVEL 1 goto err

echo removing bin...
if exist %BOOTDRV%\bin (rmdir /s/q %BOOTDRV%\bin)
if ERRORLEVEL 1 goto err

echo removing core...
if exist %BOOTDRV%\core (rmdir /s/q %BOOTDRV%\core)
if ERRORLEVEL 1 goto err

echo removing languages...
if exist %BOOTDRV%\languagecore (rmdir /s/q %BOOTDRV%\languagecore)
if ERRORLEVEL 1 goto err
if exist %BOOTDRV%\languagecore_f (rmdir /s/q %BOOTDRV%\languagecore_f)
if ERRORLEVEL 1 goto err
if exist %BOOTDRV%\languagecore_h (rmdir /s/q %BOOTDRV%\languagecore_h)
if ERRORLEVEL 1 goto err


rem ////////////////////////////////
echo extracting dta....
rem ////////////////////////////////

extractpbo -p "%_ARMA3PATH%\Dta" %BOOTDRV%\
if ERRORLEVEL 1 goto err



rem ////////////////////////////
echo unrapping bin extensions to dta
rem ////////////////////////////

rem remove wrong locations from a previous install if any
if exist %BOOTDRV%\languagelist.* (del /q %BOOTDRV%\languagelist.*)
if exist %BOOTDRV%\product.* (del /q %BOOTDRV%\product.*)
if exist %BOOTDRV%\splashwindow.* (del /q %BOOTDRV%\splashwindow.*)

rem arma3 has a collection of rapified bins : product, languagelist and blah
rem one exception is texheaders.bin
if exist %BOOTDRV%\dta (rmdir /s/q %BOOTDRV%\dta)
if ERRORLEVEL 1 goto err

echo making dta folder
mkdir %BOOTDRV%\dta
if ERRORLEVEL 1 goto err
set binfiles="%_ARMA3PATH%\Dta\*.bin"


dir /b/s %binfiles% >%BOOTDRV%\a3.txt
if ERRORLEVEL 1 goto err


FOR /F "tokens=1* delims=," %%A in (%BOOTDRV%\a3.txt) do (
rem always copy the bin
xcopy /Q/y "%%A" %BOOTDRV%\dta >nul
 if ERRORLEVEL 1 goto err

rem derap -Q "%%A" 
rem if errorlevel 1 goto not_rap
 derap -p "%%A" %BOOTDRV%\dta
if errorlevel 1 echo ignored
rem echo "%%A"



)
del %BOOTDRV%\a3.txt

goto skiproads
echo debinarising roads....
deroad.exe %BOOTDRV%\a3\roads_f >%BOOTDRV%\roads.lst
echo done. output is in %BOOTDRV%\roads.lst
echo creating binarised roads in temp
if exist %BOOTDRV%\temp\a3\roads_f (rmdir /s/q %BOOTDRV%\temp\a3\roads_f)
extractpbo -p "%_ARMA3PATH%\addons\roads_f" %BOOTDRV%\temp

echo datestamping binary roads
dir/b/s %BOOTDRV%\temp\a3\roads_f\*.p3d >touch.txt
FOR /F "tokens=1* delims=," %%A in (touch.txt) do  copy/b/y nul>>"%%A"
del/q touch.txt
:skiproads
:skip
echo removing buldozer from p:
if exist %BOOTDRV%\*.dll (del/q %BOOTDRV%\*.dll)
if exist %BOOTDRV%\buldozer.exe (del /q %BOOTDRV%\buldozer.exe)
if exist %BOOTDRV%\steam_appid.txt (del /q %BOOTDRV%\steam_appid.txt)
goto nobul

echo installing buldozer and it's dlls
echo    all dlls
echo delete
del %BOOTDRV%\*.dll
rem if ERRORLEVEL 1 goto err

echo copying..
xcopy /y "%_ARMA3PATH%\*.dll" %BOOTDRV%\
if ERRORLEVEL 1 goto err

echo buldozer...
copy /b/y "%_ARMA3PATH%\arma3.exe" %BOOTDRV%\buldozer.exe
if ERRORLEVEL 1 goto err
echo appid
xcopy /q/y "%_ARMA3PATH%\steam_appid.txt" %BOOTDRV%\
if ERRORLEVEL 1 goto err
:nobul
:success

echo All tasks completed successfully
echo ***warning warning warning***
echo ***warning warning warning***
echo ***warning warning warning***
echo %BOOTDRV%\buldozer.exe has been removed

echo adjust Object Builder AND Terrain Builder to point to:
choice /c k /m "%_ARMA3PATH%\arma3.exe"

@exit /B 0

:err

echo failed
choice /c k /m "Steam/Mikero tools WILL NOT WORK until you fix this error!"

@exit /B 1

