#!/bin/bash
if [ ! -f ~/project/simple ]; then
    exit 1
fi
./simple | grep -q "a + b = 30"
if [ $? -ne 0 ]; then
    exit 1
fi