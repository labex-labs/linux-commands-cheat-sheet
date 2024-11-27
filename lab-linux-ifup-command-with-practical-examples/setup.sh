#!/bin/bash

# Check the current status of network interfaces
ip link show

# Create the network interface configuration file
sudo nano /etc/network/interfaces <<EOF
auto eth1
iface eth1 inet static
    address 192.168.1.100
    netmask 255.255.255.0
    gateway 192.168.1.1
EOF

# Activate the eth1 network interface
sudo ifup eth1