#!/bin/bash
if mount | grep "/mnt/nfs" > /dev/null; then
    exit 0
else
    echo "The remote NFS file system was not mounted successfully."
    exit 1
fi