#!/bin/bash

# Create test groups
sudo groupadd group1
sudo groupadd group2
sudo groupadd group3

# Verify group creation
cat /etc/group | grep -E 'group1|group2|group3'

# Delete groups using groupdel command
sudo groupdel testgroup