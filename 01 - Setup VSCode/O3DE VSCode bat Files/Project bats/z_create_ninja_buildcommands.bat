@echo off
echo === Setting up Visual Studio environment ===

REM Path to your Visual Studio 2022 installation (adjust if needed)
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

echo === Building Ninja Compile Commands ===
cmake -S. -B build/n_cc -G "Ninja Multi-Config" -DLY_3RDPARTY_PATH=< Path to 3rd Party Gems > -DLY_UNITY_BUILD=OFF -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
pause