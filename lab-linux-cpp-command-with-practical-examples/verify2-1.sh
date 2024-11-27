#!/bin/bash
if [ -d ~/project/cpp-project ] && [ -f ~/project/cpp-project/main.cpp ] && [ -f ~/project/cpp-project/utils.cpp ] && [ -f ~/project/cpp-project/utils.h ]; then
    exit 0
else
    exit 1
fi