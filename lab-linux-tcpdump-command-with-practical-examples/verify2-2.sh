#!/bin/bash
if [ ! -f network_capture.pcap ]
then
    echo "Network capture file 'network_capture.pcap' not found."
    exit 1
fi
echo "Network capture file 'network_capture.pcap' found."
exit 0