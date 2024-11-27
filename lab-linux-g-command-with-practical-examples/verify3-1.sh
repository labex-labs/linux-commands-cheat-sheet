#!/bin/bash
g++ -O0 -o optimize optimize.cpp
time ./optimize | grep -q "real"
if [ $? -ne 0 ]; then
    exit 1
fi
g++ -O2 -o optimize optimize.cpp
time ./optimize | grep -q "real"
if [ $? -ne 0 ]; then
    exit 1
fi
g++ -O3 -o optimize optimize.cpp
time ./optimize | grep -q "real"
if [ $? -ne 0 ]; then
    exit 1
fi