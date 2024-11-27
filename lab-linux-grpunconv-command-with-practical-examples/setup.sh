#!/bin/bash

# Create a new group named "testgroup"
sudo groupadd testgroup

# Verify the group has been created
grep "testgroup" /etc/group

# Convert the /etc/group file to the traditional format
sudo grpunconv

# Verify the group has been removed
grep "testgroup" /etc/group