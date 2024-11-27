#!/bin/bash

# Check current update configuration
sudo apt-get update
sudo apt-get upgrade -s

# Install unattended-upgrades package
sudo apt-get install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades

# Verify the configuration
cat /etc/apt/apt.conf.d/50unattended-upgrades