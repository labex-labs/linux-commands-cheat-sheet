#!/bin/bash
if [ -f sample.tiff ]; then
    echo "TIFF conversion successful"
    exit 0
else
    echo "TIFF conversion failed"
    exit 1
fi