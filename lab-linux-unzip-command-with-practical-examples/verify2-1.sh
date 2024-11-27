#!/bin/bash
if [ ! -d ~/project/example ]; then
    exit 1
fi
if [ ! -f ~/project/example/file1.txt ]; then
    exit 1
fi
if [ ! -f ~/project/example/file2.txt ]; then
    exit 1
fi
if [ ! -f ~/project/example/file3.txt ]; then
    exit 1
fi