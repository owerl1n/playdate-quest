@echo off
setlocal
cd /d "%~dp0"

rem Usage:
rem   build.bat            - device + simulator (-> .pdx)
rem   build.bat device     - device only
rem   build.bat sim        - simulator only
rem   build.bat clean      - delete build folders and rebuild everything
rem   build.bat device clean / sim clean - clean rebuild of one target

if not defined PLAYDATE_SDK_PATH set "PLAYDATE_SDK_PATH=D:\Playdate\PlaydateSDK"

set "MODE=%~1"
set "CLEAN=%~2"
if /i "%MODE%"=="clean" (
	set "MODE=all"
	set "CLEAN=clean"
)
if "%MODE%"=="" set "MODE=all"

rem Load the Visual Studio compiler environment if it is not loaded yet
where cl >nul 2>nul
if errorlevel 1 call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

where arm-none-eabi-gcc >nul 2>nul
if errorlevel 1 (
	echo [!] arm-none-eabi-gcc not found in PATH. Add the toolchain bin folder to PATH.
	exit /b 1
)

rem ---------------- DEVICE ----------------
if /i "%MODE%"=="sim" goto build_sim

echo.
echo ===== Building for Playdate device =====
if /i "%CLEAN%"=="clean" if exist build_device rmdir /s /q build_device
if not exist build_device\CMakeCache.txt (
	cmake -S . -B build_device -G "NMake Makefiles" --toolchain "%PLAYDATE_SDK_PATH%/C_API/buildsupport/arm.cmake" -DTOOLCHAIN=armgcc -DBUILD_PLATFORM=PLAYDATE -DCMAKE_BUILD_TYPE=Release
	if errorlevel 1 exit /b 1
)
cmake --build build_device
if errorlevel 1 exit /b 1

rem ---------------- SIMULATOR ----------------
:build_sim
if /i "%MODE%"=="device" goto done

echo.
echo ===== Building for Playdate simulator =====
if /i "%CLEAN%"=="clean" if exist build_sim rmdir /s /q build_sim
if not exist build_sim\CMakeCache.txt (
	cmake -S . -B build_sim -G "NMake Makefiles" -DBUILD_PLATFORM=PLAYDATE_SIM -DCMAKE_BUILD_TYPE=Release
	if errorlevel 1 exit /b 1
)
cmake --build build_sim
if errorlevel 1 exit /b 1

:done
echo.
echo ===== Done =====
endlocal
