#!/bin/bash
if [ ! -d ~/project/protected ]; then
    exit 1
fi
if [ ! -f ~/project/protected/protected_file.txt ]; then
    exit 1
fi
grep -q "This is a protected file." ~/project/protected/protected_file.txt
if [ $? -ne 0 ]; then
    exit 1
fi