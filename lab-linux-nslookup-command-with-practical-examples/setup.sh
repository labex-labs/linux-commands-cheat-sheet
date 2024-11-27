#!/bin/bash

# Create the necessary directories
mkdir -p ~/project/nslookup

# Change to the project directory
cd ~/project/nslookup

# Perform the basic DNS lookups
nslookup example.com
nslookup -type=any example.com