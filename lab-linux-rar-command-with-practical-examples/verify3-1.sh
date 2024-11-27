#!/bin/bash
if [ ! -f ~/project/sample_encrypted.rar ]; then
    echo "The sample_encrypted.rar archive was not created. Please review the steps to create the encrypted archive."
    exit 1
fi
echo "The sample_encrypted.rar archive was created successfully."
exit 0