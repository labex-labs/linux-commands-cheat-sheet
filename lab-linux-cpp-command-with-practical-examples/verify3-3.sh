#!/bin/bash
output=$(~/project/cpp-project/build/app)
if [ "$output" == "Hello, C++ on Linux!" ]; then
    exit 0
else
    exit 1
fi