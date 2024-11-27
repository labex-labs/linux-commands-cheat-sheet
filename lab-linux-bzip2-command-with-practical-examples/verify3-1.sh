#!/bin/bash
if [ -f ~/project/sample.txt.bz2 ] && [ $(du -b ~/project/sample.txt.bz2 | cut -f1) -lt $(du -b ~/project/sample.txt | cut -f1) ]; then
    exit 0
else
    exit 1
fi