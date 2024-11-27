#!/bin/bash
if [ -f ~/project/hello.c ]; then
    exit 0
else
    exit 1
fi