#!/bin/bash
if sudo snap info gimp | grep -q "GNU Image Manipulation Program"; then
    exit 0
else
    echo "Snap package information for 'gimp' is not as expected"
    exit 1
fi