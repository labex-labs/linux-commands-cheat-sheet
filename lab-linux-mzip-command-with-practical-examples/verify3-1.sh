#!/bin/bash
if [ ! -d sample_directory ]; then
    echo "sample_directory not found. Please extract the archive using mzip."
    exit 1
fi
if [ ! -f sample_file1.txt ]; then
    echo "sample_file1.txt not found. Please extract the archive using mzip."
    exit 1
fi
if [ ! -f sample_file2.txt ]; then
    echo "sample_file2.txt not found. Please extract the archive using mzip."
    exit 1
fi
echo "sample_archive.mz extracted successfully."
exit 0