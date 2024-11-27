#!/bin/bash

# Create a directory for the lab
mkdir -p ~/project/miscellaneous-utilities

# Change to the lab directory
cd ~/project/miscellaneous-utilities

# Test the 'yes' command
yes | head -n 10
yes "hello" | head -n 5