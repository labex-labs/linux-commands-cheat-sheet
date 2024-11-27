#!/bin/bash

# Check if the aclocal.m4 file already exists
if [ -f "aclocal.m4" ]; then
    echo "aclocal.m4 file already exists, skipping generation."
else
    # Generate the aclocal.m4 file
    aclocal
    echo "aclocal.m4 file generated."
fi