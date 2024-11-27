#!/bin/bash
if [ -f sample.jpg ]; then
    echo "JPEG conversion successful"
    exit 0
else
    echo "JPEG conversion failed"
    exit 1
fi