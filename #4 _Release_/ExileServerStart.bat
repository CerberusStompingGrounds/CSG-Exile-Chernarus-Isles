::
::	ExileServerStart.bat
::	By: Jstrow and Danny Dorito for CSG Exile
::
@echo off
title CSG Exile Chernarus Isles #1

SET crashes=0

:start

C:\Windows\System32\tasklist /FI "C:\arma eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo Pre startup initailzed
echo.

::Delete vars.Arma3Profile for performance gains
echo Deleting CSG.vars.Arma3Profile
del /Q /F "C:\arma\CSG\Users\CSG\CSG.vars.Arma3Profile"
echo Delete complete

::Database backup script
echo Starting Database Backup
start C:\Heidi\MySQLBackups\mysqlbackup.bat
echo Database Backup Complete

::Mikero's PBO Packer
::echo Starting PBO Packer
::Place commands here
::echo PBOs packed

::Arma 3 Launcher Mission Prefetch
::echo Starting Mission Prefetch Server
::start C:\arma\MissionPrefetchServer.exe 2302 C:\arma\mpmissions\Exile.Chernarus_Isles.pbo 144.217.255.231 2309 90
::echo Mission Prefetch Server Started

::Steam automatic update for the server files
::echo Steam Automatic Update Starting
::start C:\Steam\steamcmd.exe +login "iibetrayforlan" "StickBug!" +force_install_dir c:\arma\ +app_update 233780 validate +quit
::TIMEOUT /T 40
::echo Steam Automatic Update Completed

echo.
echo Pre startup complete
echo.
echo Starting server at: %date%,%time% 
echo Restarts/Crashes: %crashes%

::Start the Arma Server
cd "C:\arma"
start "CSG" /min /wait /affinity 0xAA arma3server.exe "-mod=@Exile;@Exile Expansion;@Extended_Items_Exile;@CBA_A3;@Chernarus Isles;@CUP Terrains - Core;@CUP Terrains - Maps;@Extended_Base_Mod;@Enhanced Movement;@RHSAFRF;@RHSSAF;@RHSUSAF;@RHSGREF;@Specialist Military Arms (SMA) Version 2.7.1;@TRYK [TRYK's Multi-play Uniforms];@NIArsenal;@Caucasus Insurgency;@Temp fix for exile miniguns;@Open Chernarus Project;" "-servermod=@exileserver;@Advanced Urban Rappelling;@AdvancedTowing" "-config=C:\arma\config.cfg" -port=2302 "-profiles=CSG" "-cfg=C:\arma\basic.cfg" "-bepath=C:\arma\battleye" -name=CSG -autoinit -enableHT -loadMissionToMemory -high -filePatching -hugepages	
goto started

:loop

::Monitorting Loop
cls
echo Server is already running, running monitoring loop

:started

::Restart/Crash Hander
set /A crashes=crashes+1
C:\Windows\System32\timeout /t 5
C:\Windows\System32\tasklist /FI "C:\arma eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
taskkill /F /IM MissionPrefetchServer.exe
if "%ERRORLEVEL%"=="0" goto loop

cls

goto start

pause