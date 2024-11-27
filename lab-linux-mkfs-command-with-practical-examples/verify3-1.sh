#!/bin/bash
if ! sudo blkid | grep -q "/dev/sdb: TYPE=\"vfat\""; then
    exit 1
fi