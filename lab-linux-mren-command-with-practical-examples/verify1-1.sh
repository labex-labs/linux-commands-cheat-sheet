#!/bin/bash
if [ "$(ls -1 | grep -c 'myfile')" -eq 5 ]; then
    exit 0
else
    exit 1
fi