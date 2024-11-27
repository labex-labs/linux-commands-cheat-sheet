#!/bin/bash

# Update package lists
sudo apt-get update

# Install zip package
sudo apt-get install -y zip

# Create sample directory and files
mkdir -p ~/project
cd ~/project
touch file1.txt file2.txt file3.txt
zip sample.zip file1.txt file2.txt file3.txt