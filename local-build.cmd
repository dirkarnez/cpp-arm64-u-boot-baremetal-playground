@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

SET PATH=^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\arm-gnu-toolchain-12.2.rel1-mingw-w64-i686-aarch64-none-elf\arm-gnu-toolchain-12.2.rel1-mingw-w64-i686-aarch64-none-elf\bin;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
%DOWNLOADS_DIR%\cmake-3.26.1-windows-x86_64\bin;

@REM set PATH=^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
@REM D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;
@REM -Dportaudio_DIR="%DOWNLOADS_DIR_LINUX%/portaudio-v19.7.0-mingw64-x86_64-posix-seh-rev0-8.1.0/lib/cmake/portaudio" ^

if exist cmake-build (
    echo "!!! deleting"
    rmdir /s /q cmake-build
)
@REM cmake --build . &&^

cmake --debug-output -G"MinGW Makefiles" ^
-DCMAKE_BUILD_TYPE=Debug ^
--toolchain "%CD:\=/%/cmake/aarch64-none-elf.cmake" ^
-B./cmake-build &&^
cd cmake-build &&^
mingw32-make &&^
echo "Successful build"
pause
