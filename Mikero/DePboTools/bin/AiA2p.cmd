@echo off

SETLOCAL ENABLEEXTENSIONS
if exist %1 goto hasparm
echo syntax
echo aia2p location\of\your\@AIA\mod\folder
goto err
:hasparm
if exist p:\ (goto pfound)
echo P: drive must be set
goto err
:pfound

:ask
echo aia2p will extract arma TWO game data that is usable in Arma THREE. 
echo This game data is NOT the same as arrowhead game data.
echo The resulting ca\ folder IS NOT USEABLE for bulding arma TWO pbo's
echo Be aware of this when you answer yes
set /P INPUT=This will alter some content on the P drive. Are you sure? (y/n): %=%
If /I "%INPUT%"=="y" goto yes
If /I "%INPUT%"=="n" goto no
goto ask
:no
@exit /B 1
:yes



echo removing ca

if exist p:\ca (rmdir /s/q p:\ca)
if ERRORLEVEL 1 goto err

echo extracting the addons folder....
rem SET aia=Q:\@allinarma\addons

rem extractpbo %aia% p:\
extractpbo %1\addons p:\


:success
echo success 
pause
@exit /B 0

:err

echo failed
pause
@exit /B 1

