@echo off
SETLOCAL

::android ndk path set here
set ANDROID_NDK=C:\android-ndk-r8b
set ANDROID_ABI=armeabi
set ANDROID_NATIVE_API_LEVEL=android-14

::Using mingw64 make because android make fails
set CMAKE_MAKE_PROGRAM=C:\mingw64\bin\mingw32-make
set CMAKE_TOOLCHAIN_FILE=cmake\DetectAndroidNDK.cmake

mkdir build
:start
cd build
mkdir android
cd android

cmake -G"MinGW Makefiles"^
 -DCMAKE_TOOLCHAIN_FILE="..\..\%CMAKE_TOOLCHAIN_FILE%"^
 -DCMAKE_MAKE_PROGRAM="%CMAKE_MAKE_PROGRAM%"^
 -DANDROID_ABI="%ANDROID_ABI%"^
 -DANDROID_NATIVE_API_LEVEL="%ANDROID_NATIVE_API_LEVEL%"^
 ../..

pause
%CMAKE_MAKE_PROGRAM%

del /F CMakeCache.txt
cd ..
pause
