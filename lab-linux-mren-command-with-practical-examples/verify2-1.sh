#!/bin/bash
if [ "$(ls -1 | grep -c 'myfile_')" -eq 3 ] && [ "$(ls -1 | grep -c 'image_')" -eq 3 ]; then
    exit 0
else
    exit 1
fi