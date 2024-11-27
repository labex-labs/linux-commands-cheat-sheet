#!/bin/bash
if mount | grep "/quota_fs" | grep "usrquota,grpquota"; then
    exit 0
else
    echo "Disk quota is not enabled on the /quota_fs file system."
    exit 1
fi