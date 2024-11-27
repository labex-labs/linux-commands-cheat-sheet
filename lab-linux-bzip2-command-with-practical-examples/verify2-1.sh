#!/bin/bash
if [ -f ~/project/sample.txt.bz2 ]; then
    exit 0
else
    exit 1
fi