#!/bin/bash
if ! sudo chvt 2 &> /dev/null; then
    echo "Failed to switch to virtual terminal 2"
    exit 1
fi
if ! sudo chvt -l | grep -q "VT2"; then
    echo "Virtual terminal 2 not found in the list"
    exit 1
fi
echo "chvt command usage verified successfully"
exit 0