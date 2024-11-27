#!/bin/bash
if [ "$(logname)" == "labex" ]; then
    exit 0
else
    echo "The logname command did not return the expected output 'labex'"
    exit 1
fi