#!/bin/bash
unzip -h | grep -q "Usage: unzip"
if [ $? -ne 0 ]; then
    exit 1
fi