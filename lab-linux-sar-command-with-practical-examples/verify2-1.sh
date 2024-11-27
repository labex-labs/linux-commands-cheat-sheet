#!/bin/bash
if sudo sar -u 1 1 | grep -q "%user"; then
    echo "sar -u option works correctly"
    if sudo sar -r 1 1 | grep -q "kbmemfree"; then
        echo "sar -r option works correctly"
        exit 0
    else
        echo "sar -r option does not work as expected"
        exit 1
    fi
else
    echo "sar -u option does not work as expected"
    exit 1
fi