#!/bin/bash

# Check ethtool version
ethtool_version=$(ethtool --version | awk '{print $3}')
echo "ethtool version: $ethtool_version"

# Create project directory if it doesn't exist
project_dir="$HOME/project"
if [ ! -d "$project_dir" ]; then
  mkdir "$project_dir"
  echo "Created project directory: $project_dir"
fi

# Change to project directory
cd "$project_dir"

# List available network interfaces
echo "Available network interfaces:"
ip link show

# Retrieve detailed information about the eth0 interface
echo "Detailed information for eth0 interface:"
ethtool eth0