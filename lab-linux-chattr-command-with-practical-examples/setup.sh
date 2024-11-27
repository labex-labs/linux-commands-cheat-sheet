#!/bin/bash

# Create sample file
touch ~/project/file.txt

# Set immutable attribute on file
sudo chattr +i ~/project/file.txt

# Remove immutable attribute from file
sudo chattr -i ~/project/file.txt

# Set append-only attribute on directory
sudo chattr +a ~/project/logs

# Remove append-only attribute from directory
sudo chattr -a ~/project/logs