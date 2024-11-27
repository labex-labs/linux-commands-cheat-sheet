#!/bin/bash

# Update package index
sudo apt-get update

# Install vnstat
sudo apt-get install -y vnstat

# Verify vnstat installation
sudo vnstat --version

# Check network interfaces
sudo vnstat --iface

# Start monitoring network traffic
sudo vnstat -u -i eth0