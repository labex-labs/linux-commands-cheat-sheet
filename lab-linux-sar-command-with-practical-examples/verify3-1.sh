#!/bin/bash
if sudo sar -u 1 1 | grep -q "%user"; then
    echo "CPU utilization metrics are available"
else
    echo "CPU utilization metrics are not available"
    exit 1
fi