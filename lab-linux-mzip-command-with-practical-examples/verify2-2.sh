#!/bin/bash
if ! mzip -l sample_archive.mz | grep -q "sample_directory/"; then
    echo "sample_directory not found in the archive. Please check the mzip command."
    exit 1
fi
if ! mzip -l sample_archive.mz | grep -q "sample_file1.txt"; then
    echo "sample_file1.txt not found in the archive. Please check the mzip command."
    exit 1
fi
if ! mzip -l sample_archive.mz | grep -q "sample_file2.txt"; then
    echo "sample_file2.txt not found in the archive. Please check the mzip command."
    exit 1
fi
echo "sample_archive.mz contains the expected files and directories."
exit 0