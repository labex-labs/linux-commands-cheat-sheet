#!/bin/bash
if [ ! -f ~/project/hello ]; then
    exit 1
fi
./hello | grep -q "Hello, World!"
if [ $? -ne 0 ]; then
    exit 1
fi