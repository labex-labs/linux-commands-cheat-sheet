#!/bin/bash
g++ -O2 -march=native -o optimize optimize.cpp
time ./optimize | grep -q "real"
if [ $? -ne 0 ]; then
    exit 1
fi
g++ -O2 -ffast-math -o optimize optimize.cpp
time ./optimize | grep -q "real"
if [ $? -ne 0 ]; then
    exit 1
fi