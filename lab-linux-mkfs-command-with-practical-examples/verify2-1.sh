#!/bin/bash
if ! sudo blkid | grep -q "/dev/sdb1"; then
    exit 1
fi