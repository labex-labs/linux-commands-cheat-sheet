#!/bin/bash
if ! sudo tcpdump -i any -c 1 host 172.17.0.2 &> /dev/null
then
    echo "Failed to capture traffic for IP address 172.17.0.2 using tcpdump."
    exit 1
fi
echo "IP address filtering successful."
exit 0