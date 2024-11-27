#!/bin/bash

# Create directory structure
mkdir -p ~/project/cpu_monitoring

# Install required packages
sudo apt-get update
sudo apt-get install -y sysstat

# Run mpstat command to explore CPU utilization metrics
cd ~/project/cpu_monitoring
sudo mpstat -P ALL