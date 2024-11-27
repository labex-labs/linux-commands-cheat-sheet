#!/bin/bash
if sudo dumpe2fs /dev/sdb1 | grep -q "Block size:.*4096"; then
    if sudo dumpe2fs /dev/sdb1 | grep -q "Inode size:.*8192"; then
        if sudo dumpe2fs /dev/sdb1 | grep -q "Volume name:.*my_filesystem"; then
            exit 0
        fi
    fi
fi
exit 1