#!/bin/bash
if [ -f sample.png ]; then
    echo "PNG conversion successful"
    exit 0
else
    echo "PNG conversion failed"
    exit 1
fi