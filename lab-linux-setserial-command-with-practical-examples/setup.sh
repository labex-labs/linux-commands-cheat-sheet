#!/bin/bash

# Check and get serial port information
serial_ports=$(sudo setserial -g /dev/ttyS*)
echo "Serial port information:"
echo "$serial_ports"

# Set custom baud rate for /dev/ttyS0
sudo setserial /dev/ttyS0 baud_base 115200 spd_cust