#!/bin/bash
if ! diff sample.c formatted_sample.c &> /dev/null; then
    echo "The source code was not formatted correctly using the 'GNU' style."
    exit 1
else
    echo "The source code was formatted correctly using the 'GNU' style."
fi