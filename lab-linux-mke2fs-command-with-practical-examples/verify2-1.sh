#!/bin/bash
if sudo file -s /dev/sdb1 | grep -q "ext4"; then
    exit 0
else
    exit 1
fi