@echo off
echo === Setting up Visual Studio environment ===

REM Path to your Visual Studio 2022 installation (adjust if needed)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo === Building Project ===
cmake --build build/windows --target Editor --config profile
pause