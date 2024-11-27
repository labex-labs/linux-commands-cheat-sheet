#!/bin/bash
if sudo sar -r 1 1 | grep -q "kbmemfree"; then
    echo "Memory utilization metrics are available"
else
    echo "Memory utilization metrics are not available"
    exit 1
fi