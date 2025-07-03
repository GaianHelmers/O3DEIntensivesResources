@echo off
echo === Setting up Visual Studio environment ===

REM Path to your Visual Studio 2022 installation (adjust if needed)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo === Configuring Project Build to Ninja ===

REM Run CMake to configure the project for Ninja
cmake -G "Ninja Multi-Config" -S . -B build/windows
pause