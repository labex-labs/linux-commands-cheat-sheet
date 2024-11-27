#!/bin/bash
if sudo losetup -a | grep -q "/dev/loop"; then
    exit 0
else
    echo "No loopback devices found. Please run 'sudo losetup -a' to check the current loopback devices."
    exit 1
fi