#!/bin/bash
if lsmod | grep -q 'hello2'; then
    exit 0
else
    echo "The 'hello2' kernel module is not loaded."
    exit 1
fi