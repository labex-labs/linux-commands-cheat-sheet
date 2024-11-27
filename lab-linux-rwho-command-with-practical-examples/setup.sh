#!/bin/bash

# Create the necessary directories
mkdir -p ~/project/rwho

# Change to the project directory
cd ~/project/rwho

# Install the required package
sudo apt-get update
sudo apt-get install -y rwho