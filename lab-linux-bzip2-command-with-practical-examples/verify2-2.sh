#!/bin/bash
if [ -f ~/project/sample.txt ]; then
    exit 0
else
    exit 1
fi