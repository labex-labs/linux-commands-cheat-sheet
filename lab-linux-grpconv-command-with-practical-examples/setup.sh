#!/bin/bash

# Create "developers" group
sudo groupadd developers

# Add users to "developers" group
sudo usermod -a -G developers labex
sudo usermod -a -G developers user1
sudo usermod -a -G developers user2

# Synchronize group password file with shadow group file
sudo grpconv