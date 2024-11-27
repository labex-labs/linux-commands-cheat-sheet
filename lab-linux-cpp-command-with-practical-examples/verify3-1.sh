#!/bin/bash
if [ -d ~/project/cpp-project/src ] && [ -f ~/project/cpp-project/src/main.cpp ]; then
    exit 0
else
    exit 1
fi