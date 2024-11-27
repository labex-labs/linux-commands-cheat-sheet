#!/bin/bash

# Check current user groups
groups labex

# List all groups
cat /etc/group

# Create new group "developers"
sudo groupadd developers

# Add user "labex" to "developers" group
sudo usermod -a -G developers labex