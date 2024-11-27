#!/bin/bash
output=$(~/project/hello)
if [ "$output" == "Hello, World!" ]; then
    exit 0
else
    exit 1
fi