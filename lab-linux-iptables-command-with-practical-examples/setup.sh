#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the iptables rules file
touch iptables-rules.txt

# Set the correct permissions
chmod 644 iptables-rules.txt