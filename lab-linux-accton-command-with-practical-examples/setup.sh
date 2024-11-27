#!/bin/bash

# Check the current status of the accounting system
sudo accton

# Enable the accounting system and store the data in /var/log/account/pacct
sudo accton /var/log/account/pacct

# Verify that the accounting system is now enabled
sudo accton

# Create the necessary directory structure
sudo mkdir -p /var/log/account

# Set the appropriate permissions
sudo chmod 755 /var/log/account