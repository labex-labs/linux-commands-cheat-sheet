#!/bin/bash
if [ -f ~/project/cpp-project/build/app ]; then
    exit 0
else
    exit 1
fi