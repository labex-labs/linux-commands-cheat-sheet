#!/bin/bash

# Install sysstat package
sudo apt-get update
sudo apt-get install -y sysstat

# Create project directory if it doesn't exist
mkdir -p ~/project
cd ~/project