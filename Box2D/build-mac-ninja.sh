#!/bin/bash

mkdir build
cd build
mkdir mac
cd mac

cmake -G"Ninja" ../..

read -n1 -r -p "Press any key to continue..." key

ninja
