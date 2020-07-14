@echo off
echo.

REM Add your device's IP address on the line below if you want to auto-connect when you launch this file
set ip=""

if %ip% EQU "" set /p ip="Enter Android Device IP Address (eg. 192.168.1.43): "

echo.
echo Connecting adb over TCP/IP on IP: %ip%...
adb connect %ip%:5555

REM Add y or n here (NO QUOTES!) to skip the quality prompt in future.
set lower_quality=

echo.
if [%lower_quality%]==[] set /P lower_quality="Lower bitrate and resolution for clearer/faster response? [Y/N]"

echo.
if /I "%lower_quality%" EQU "Y" scrcpy --bit-rate 2M --max-size 800
if /I "%lower_quality%" EQU "N" scrcpy