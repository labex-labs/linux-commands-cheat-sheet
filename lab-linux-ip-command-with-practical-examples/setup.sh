#!/bin/bash

# Create the required directory structure
mkdir -p ~/project/ip-command

# Display information about all network interfaces
sudo ip link show

# Display IP address information for a specific interface
sudo ip addr show eth0