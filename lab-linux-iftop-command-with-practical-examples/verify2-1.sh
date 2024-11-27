#!/bin/bash
if ! sudo iftop -n | grep -q "In:"; then
    echo "iftop is not displaying network traffic information correctly."
    exit 1
fi
echo "iftop is displaying network traffic information successfully."
exit 0