#!/bin/bash

# Create project directory
mkdir -p ~/project

# Install mrd command
sudo apt-get update
sudo apt-get install -y mrd

# Create test directories
cd ~/project
mkdir dir1 dir2 dir3