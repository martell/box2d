#!/bin/bash

mkdir build
cd build
mkdir ios
cd ios

cmake -G"Xcode" -DCMAKE_TOOLCHAIN_FILE=cmake/ios.cmake -DIOS_PLATFORM="OS" ../..
read -n1 -r -p "Press any key to continue..." key
xcodebuild -sdk iphoneos -configuration Debug -target ALL_BUILD