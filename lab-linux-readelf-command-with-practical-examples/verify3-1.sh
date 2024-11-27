#!/bin/bash
if readelf -h /bin/ls | grep -q "ELF Header"; then
    exit 0
else
    echo "The readelf command did not display the ELF header information correctly."
    exit 1
fi