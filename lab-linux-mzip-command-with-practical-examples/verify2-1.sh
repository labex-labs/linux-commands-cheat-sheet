#!/bin/bash
if [ ! -f sample_archive.mz ]; then
    echo "sample_archive.mz file not found. Please create the archive using mzip."
    exit 1
fi
echo "sample_archive.mz file created successfully."
exit 0