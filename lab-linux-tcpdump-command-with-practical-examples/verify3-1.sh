#!/bin/bash
if ! sudo tcpdump -i any -c 1 tcp port 80 &> /dev/null
then
    echo "Failed to capture HTTP traffic using tcpdump."
    exit 1
fi
echo "HTTP traffic capture successful."
exit 0