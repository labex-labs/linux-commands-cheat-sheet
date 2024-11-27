#!/bin/bash
if [ -f ~/project/sample_encrypted.rar ]; then
    echo "The sample_encrypted.rar archive was not deleted. Please review the steps to delete the archive."
    exit 1
fi
echo "The sample_encrypted.rar archive was deleted successfully."
exit 0