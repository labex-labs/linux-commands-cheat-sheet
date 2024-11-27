#!/bin/bash

# Check if wireless interface exists
WIRELESS_INTERFACE=$(iwconfig 2>/dev/null | grep -o -E 'wlan[0-9]+')
if [ -z "$WIRELESS_INTERFACE" ]; then
    echo "No wireless interface found."
    exit 1
fi

# Configure wireless network interface
sudo iwconfig "$WIRELESS_INTERFACE" mode managed essid "my_wireless_network" freq 2.412G rate 54M