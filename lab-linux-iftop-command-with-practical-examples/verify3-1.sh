#!/bin/bash
if ! sudo iftop -i eth0 | grep -q "In:"; then
    echo "iftop is not displaying network traffic information for the eth0 interface correctly."
    exit 1
fi
if ! sudo iftop -F 192.168.1.100 | grep -q "192.168.1.100"; then
    echo "iftop is not displaying network traffic information for the 192.168.1.100 host correctly."
    exit 1
fi
echo "iftop is displaying advanced network traffic information successfully."
exit 0