#!/bin/bash

# Check uucico version
uucico --version

# Create uucico configuration file
sudo mkdir -p /etc/uucp
echo "
# Remote system name
system remote_system
# Phone number or address of the remote system
phone 192.168.1.100
# Login credentials for the remote system
login uucp
password secret
# Directory on the remote system for file transfer
remote-path /home
" | sudo tee /etc/uucp/sys > /dev/null