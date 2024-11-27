#!/bin/bash
if bzcat sample.txt.bz2 | grep -q "banana" && bzcat sample.txt.bz2 | wc -w -eq 3; then
    exit 0
else
    exit 1
fi