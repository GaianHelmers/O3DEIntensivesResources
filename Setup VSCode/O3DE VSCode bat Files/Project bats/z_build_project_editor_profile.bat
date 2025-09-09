@echo off
echo === Setting up Visual Studio environment ===

REM Path to your Visual Studio 2022 installation (adjust if needed)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

REM === Check if O3DE Editor is running ===
set "processName=Editor.exe"

tasklist /FI "IMAGENAME eq %processName%" | find /I "%processName%" >nul
if not errorlevel 1 (
    echo.
    echo WARNING: %processName% is currently running.
    echo Please save your work. By continuing it will be closed.
    pause
    echo Closing %processName%...
    taskkill /F /IM %processName%
    echo %processName% has been closed.
    echo.
)

echo === Building Project ===
cmake --build build/windows --target Editor --config profile
pause