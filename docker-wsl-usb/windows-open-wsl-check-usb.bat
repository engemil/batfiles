@echo off
setlocal enabledelayedexpansion

echo Checking USB devices connected inside WSL...
REM wsl lsusb
REM echo If you do NOT see your USB device here, it's most likely NOT configured correctly!

set "device_type=ST-Link"

echo.
echo Found the following %device_type% device^(s^):

rem Initialize check variable
set check=0

rem Run the command and capture the output
for /f "tokens=*" %%A in ('wsl lsusb') do (
    set "line=%%A"
    rem Check if the line contains "ST-Link"
    echo !line! | findstr /i /c:"%device_type%" > nul
    if !errorlevel! equ 0 (
        echo !line!
        set check=1
    )
)

rem Check the value of the check variable
if %check% == 0 (
    echo Did NOT find any USB device with the name %device_type%!
)

echo "%choice%"


endlocal



