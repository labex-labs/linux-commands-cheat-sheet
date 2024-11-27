#!/bin/bash
if [ ! -d ~/project/extracted_files ]; then
    echo "The extracted_files directory was not created. Please review the steps to extract the archive."
    exit 1
fi
if [ "$(ls -A ~/project/extracted_files)" != "file1.txt file2.txt file3.txt" ]; then
    echo "The files were not extracted correctly. Please review the steps to extract the archive."
    exit 1
fi
echo "The sample.rar archive was extracted successfully."
exit 0