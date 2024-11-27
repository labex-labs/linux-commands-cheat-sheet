#!/bin/bash
if [ ! -d ~/project/extracted_encrypted ]; then
    echo "The extracted_encrypted directory was not created. Please review the steps to extract the encrypted archive."
    exit 1
fi
if [ "$(ls -A ~/project/extracted_encrypted)" != "file1.txt file2.txt file3.txt" ]; then
    echo "The files were not extracted correctly from the encrypted archive. Please review the steps to extract the archive."
    exit 1
fi
echo "The sample_encrypted.rar archive was extracted successfully."
exit 0