#!/bin/bash
if readelf -S /bin/ls | grep -q "Section Headers"; then
    exit 0
else
    echo "The readelf command did not display the section headers correctly."
    exit 1
fi