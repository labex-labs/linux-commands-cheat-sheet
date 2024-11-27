#!/bin/bash

# Create a new group
sudo groupadd developers

# Add user to the group
sudo useradd -m john
sudo usermod -a -G developers john

# Modify group properties
sudo groupadd finance