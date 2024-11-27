#!/bin/bash

if [ ! -f ~/project/hello.c ]; then
    echo "The hello.c file does not exist in the ~/project directory."
    exit 1
fi

if [ ! -f ~/project/hello ]; then
    echo "The hello executable file was not created in the ~/project directory."
    exit 1
fi

if ! strings ~/project/hello | grep -q "_g_"; then
    echo "The compiled executable does not contain debugging information (-g flag)."
    exit 1
fi

if ! strings ~/project/hello | grep -q "_O2_"; then
    echo "The compiled executable does not seem to have optimization level 2 (-O2 flag)."
    exit 1
fi

if ! ~/project/hello | grep -q "Hello, World!"; then
    echo "The hello program does not seem to be working correctly."
    exit 1
fi

echo "The C program was compiled with the specified compiler flags and optimization options."
exit 0