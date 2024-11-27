#!/bin/bash
if ! sudo mbadblocks /dev/sda1 | grep -q "Marking bad block"; then
    echo "No bad blocks were identified on the file system."
    exit 1
fi
exit 0