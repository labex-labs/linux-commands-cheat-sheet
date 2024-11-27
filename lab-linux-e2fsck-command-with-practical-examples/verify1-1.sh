#!/bin/bash
if ! command -v e2fsck &> /dev/null; then
    echo "The e2fsck command is not installed or not available in the system."
    exit 1
fi
echo "The e2fsck command is available and can be used to check and repair Ext file systems."
exit 0