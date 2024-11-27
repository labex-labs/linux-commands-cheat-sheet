#!/bin/bash

# Check if systemctl is available
if ! command -v systemctl &> /dev/null
then
    echo "systemctl command not found. This script requires a system with systemd."
    exit 1
fi

# List all running services
sudo systemctl list-units --type=service

# Check the status of the sshd service
sudo systemctl status sshd.service