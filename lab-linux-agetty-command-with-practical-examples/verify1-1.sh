#!/bin/bash
if agetty --version | grep -q "util-linux 2.37.2"; then
    exit 0
else
    echo "agetty version does not match the expected version"
    exit 1
fi