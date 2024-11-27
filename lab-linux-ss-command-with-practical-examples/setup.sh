#!/bin/bash

# Create the necessary directory structure
mkdir -p ~/project

# Install required packages (if not already installed)
sudo apt-get update
sudo apt-get install -y net-tools