#!/bin/bash

# Check current hostname
echo "Current hostname: $(hostname)"

# Display detailed hostname information
echo "Hostname details:"
echo "  Alias hostname: $(hostname -a)"
echo "  DNS domain name: $(hostname -d)"
echo "  Fully qualified domain name: $(hostname -f)"
echo "  Network addresses: $(hostname -i)"
echo "  Short host name: $(hostname -s)"

# Change hostname
echo "Changing hostname to 'new-hostname'..."
sudo hostnamectl set-hostname new-hostname
echo "New hostname: $(hostname)"