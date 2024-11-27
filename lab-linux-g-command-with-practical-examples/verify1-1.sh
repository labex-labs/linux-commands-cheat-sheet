#!/bin/bash
g++ --version | grep -q "g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
if [ $? -ne 0 ]; then
    exit 1
fi