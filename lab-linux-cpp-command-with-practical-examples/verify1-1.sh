#!/bin/bash
if [ -f ~/project/hello ]; then
    exit 0
else
    exit 1
fi