#!/bin/bash
if [ "$(ls -1 | grep -c 'report_2023_')" -eq 9 ]; then
    exit 0
else
    exit 1
fi