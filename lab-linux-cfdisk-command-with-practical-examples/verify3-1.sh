#!/bin/bash
if [ -f ~/project/disk.img ]; then
    partitions=$(sudo fdisk -l ~/project/disk.img | grep -c "Linux")
    if [ $partitions -eq 1 ]; then
        echo "Partition management successful"
        exit 0
    else
        echo "Partition management failed"
        exit 1
    fi
else
    echo "Disk image file not found"
    exit 1
fi