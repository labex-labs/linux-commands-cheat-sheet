#!/bin/bash
if bzcmp --version | grep -q "bzip2) 1.0.8"; then
    exit 0
else
    exit 1
fi