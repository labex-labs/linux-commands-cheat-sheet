#!/bin/bash

# Check current disk usage
echo "Current disk usage:"
df -h

# Create directory for disk quota testing
mkdir -p ~/project/quota_test
cd ~/project/quota_test

# Set disk quota for user labex
sudo setquota -u labex 100M 200M 0 0 /