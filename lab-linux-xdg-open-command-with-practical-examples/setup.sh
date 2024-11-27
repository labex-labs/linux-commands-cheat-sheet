#!/bin/bash

# Check xdg-open version
xdg-open --version

# Create sample text file
mkdir -p ~/project
echo "This is a sample text file." > ~/project/sample.txt

# Open sample text file with default application
xdg-open ~/project/sample.txt