#!/bin/bash
if sudo snap find gimp | grep -q "gimp"; then
    exit 0
else
    echo "Snap package search for 'gimp' failed"
    exit 1
fi