#!/bin/bash

# Install mtools package
sudo apt-get update
sudo apt-get install -y mtools

# Create sample files and directories
mkdir -p ~/project/directory1
touch ~/project/file1.txt ~/project/file2.txt

# Compress files and directories using mzip
mzip -c ~/project/myarchive.mz ~/project/file1.txt ~/project/file2.txt ~/project/directory1/