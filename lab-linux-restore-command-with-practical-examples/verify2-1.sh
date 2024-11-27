#!/bin/bash
if [ ! -f ~/project/sample_file.txt ]; then
    exit 1
fi
if ! grep -q "This is a sample file." ~/project/sample_file.txt; then
    exit 1
fi