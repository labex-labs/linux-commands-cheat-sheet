#!/bin/bash
g++ -g -o simple simple.cpp
if [ $? -ne 0 ]; then
    exit 1
fi
g++ -Wall -Wextra -o simple simple.cpp
if [ $? -ne 0 ]; then
    exit 1
fi