#!/bin/bash
if ! bzmore sample.txt.bz2 | grep -q "This is a sample text file."; then
    exit 1
fi