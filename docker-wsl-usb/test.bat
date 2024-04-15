@echo off
setlocal enabledelayedexpansion

set "device_type=ST-Link"

echo Found the following %device_type% device^(s^):

rem Run the command and capture the output
for /f "tokens=*" %%A in ('wsl lsusb') do (
    set "line=%%A"
    rem Check if the line contains "ST-Link"
    echo !line! | findstr /i /c:"%device_type%" > nul
    if !errorlevel! equ 0 (
        echo !line!
    )
)

endlocal



@echo off

setlocal

rem Initialize check variable
set check=0

rem Example condition (you can replace this with your actual condition)
if "%USERNAME%" == "Alice" (
    rem Set check variable to 1 if the condition is true
    set check=1
)

rem Check the value of the check variable
if %check% == 1 (
    echo The check variable is set to 1.
) else (
    echo The check variable is not set to 1.
)

endlocal
