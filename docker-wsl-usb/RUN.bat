@echo off

echo.
echo ================================================================================
echo Running windows-start-docker.bat
echo ================================================================================
echo.

call windows-start-docker.bat

echo.
echo ================================================================================
echo Running windows-install-usbipd.bat
echo ================================================================================
echo.

call windows-install-usbipd.bat

echo.
echo ================================================================================
echo Running windows-usbipd-usb-to-wsl.bat
echo ================================================================================
echo.

call windows-usbipd-usb-to-wsl.bat

REM echo.
REM echo ================================================================================
REM echo Running windows-open-wsl-check-usb.bat
REM echo ================================================================================
REM call windows-open-wsl-check-usb.bat
REM echo.

echo.
echo ================================================================================
echo All scripts have been executed.
echo ================================================================================
echo.