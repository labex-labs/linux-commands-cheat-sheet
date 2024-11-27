#!/bin/bash
if [ -f ~/project/sample.txt.bz2 ] && [ -f ~/project/sample2.txt ]; then
    exit 0
else
    exit 1
fi