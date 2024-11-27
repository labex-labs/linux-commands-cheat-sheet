#!/bin/bash
if command -v dstat &> /dev/null; then
    exit 0
else
    exit 1
fi