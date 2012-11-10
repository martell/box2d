#!/bin/bash

mkdir build
cd build
mkdir mac
cd mac

cmake -G"Unix Makefiles" ../..

read -n1 -r -p "Press any key to continue..." key

make
