@echo off

echo.
echo This script will set up your Android device to use adb wirelessly.
echo Make sure your device is plugged in via USB, with USB debugging enabled.
echo Make sure you have selected to trust this computer.
echo.

pause

echo.
echo Enabling adb over TCP/IP on your device...
adb tcpip 5555

echo.
echo Done! (Unless you got an error!)
pause