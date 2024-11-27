#!/bin/bash
if ! sudo tcpdump -i any -c 1 &> /dev/null
then
    echo "Failed to capture network traffic using tcpdump."
    exit 1
fi
echo "Network traffic capture successful."
exit 0