#!/bin/bash
if [ ! -f ~/project/sample_files/sample.rar ]; then
    echo "The sample.rar archive was not created. Please review the steps to create the archive."
    exit 1
fi
echo "The sample.rar archive was created successfully."
exit 0