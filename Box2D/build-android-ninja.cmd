@echo off
SETLOCAL

::android ndk path set here
set ANDROID_NDK=C:/android-ndk-r8b
set ANDROID_ABI=armeabi
set ANDROID_NATIVE_API_LEVEL=android-14

set CMAKE_TOOLCHAIN_FILE=cmake/DetectAndroidNDK.cmake

mkdir build
:start
cd build
mkdir android
cd android

cmake -G"Ninja"^
 -DCMAKE_TOOLCHAIN_FILE="..\..\%CMAKE_TOOLCHAIN_FILE%"^
 -DANDROID_ABI="%ANDROID_ABI%"^
 -DANDROID_NATIVE_API_LEVEL="%ANDROID_NATIVE_API_LEVEL%"^
 ../..

pause
ninja

del /F CMakeCache.txt
cd ..
pause
