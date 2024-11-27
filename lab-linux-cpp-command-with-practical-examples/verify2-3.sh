#!/bin/bash
output=$(~/project/cpp-project/app)
if [ "$output" == "This is a utility function." ]; then
    exit 0
else
    exit 1
fi