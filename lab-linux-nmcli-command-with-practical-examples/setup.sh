#!/bin/bash

# Check nmcli version
nmcli --version

# List available network interfaces
nmcli device status

# Create a new Ethernet connection
sudo nmcli connection add type ethernet con-name my-ethernet ifname eth0 ip4 192.168.1.100/24 gw4 192.168.1.1

# Activate the new connection
sudo nmcli connection up my-ethernet