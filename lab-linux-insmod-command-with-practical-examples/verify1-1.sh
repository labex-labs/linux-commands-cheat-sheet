#!/bin/bash
if lsmod | grep -q 'hello'; then
    exit 0
else
    echo "The 'hello' kernel module is not loaded."
    exit 1
fi