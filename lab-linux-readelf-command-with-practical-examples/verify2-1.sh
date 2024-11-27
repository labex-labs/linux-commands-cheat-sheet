#!/bin/bash
if readelf --help | grep -q "Display the ELF file header"; then
    exit 0
else
    echo "The readelf command did not display the expected help information."
    exit 1
fi