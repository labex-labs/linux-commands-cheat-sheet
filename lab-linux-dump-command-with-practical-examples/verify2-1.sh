#!/bin/bash
if [ -f ~/backup/full_backup.dump ]; then
    exit 0
else
    echo "Full backup file not found at ~/backup/full_backup.dump"
    exit 1
fi