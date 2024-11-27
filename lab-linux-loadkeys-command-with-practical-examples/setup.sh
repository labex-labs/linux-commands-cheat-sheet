#!/bin/bash

# Check current keyboard layout
echo "Current keyboard layout:"
loadkeys -c

# Load French keyboard layout
echo "Loading French keyboard layout..."
sudo loadkeys fr-latin1

# Verify keyboard layout change
echo "Verifying keyboard layout change:"
loadkeys -c