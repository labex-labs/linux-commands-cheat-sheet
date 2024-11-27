#!/bin/bash

# Verify the user and group information for the current user
echo "Current user information:"
id

# Create a new user 'alice'
sudo useradd -m -s /bin/bash alice
sudo usermod -a -G sudo alice

# Verify the user and group information for the user 'alice'
echo "Alice's user information:"
sudo id alice

# Create a new group 'developers'
sudo groupadd developers

# Add the user 'alice' to the 'developers' group
sudo usermod -a -G developers alice

# Verify the user and group information for the user 'alice'
echo "Alice's user information after adding to 'developers' group:"
sudo id alice

# Create a new directory 'project' in the current user's home directory
mkdir ~/project

# Change the ownership of the 'project' directory to the current user
chown labex:labex ~/project

# Change the permissions of the 'project' directory to allow read, write, and execute for the owner
chmod 755 ~/project