#!/bin/bash
if ! sudo minicom -D /dev/ttyUSB0 -b 9600 -o | grep -q "Welcome to minicom"; then
    echo "Failed to connect to the serial device"
    exit 1
fi
echo "Successfully connected to the serial device"
exit 0