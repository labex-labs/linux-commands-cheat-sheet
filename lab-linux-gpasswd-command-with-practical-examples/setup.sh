#!/bin/bash

# Create a new group called "developers"
sudo groupadd developers

# Add the user "labex" to the "developers" group
sudo gpasswd -a labex developers

# Verify that the user has been added to the group
groups labex

# Remove the user "labex" from the "developers" group
sudo gpasswd -d labex developers

# Verify that the user has been removed from the group
groups labex