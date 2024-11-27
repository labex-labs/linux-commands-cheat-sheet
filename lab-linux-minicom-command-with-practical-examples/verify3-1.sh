#!/bin/bash
if ! sudo minicom -C /dev/null | grep -q "Screen color"; then
    echo "Screen color settings not found"
    exit 1
fi
echo "Screen color settings found"
exit 0