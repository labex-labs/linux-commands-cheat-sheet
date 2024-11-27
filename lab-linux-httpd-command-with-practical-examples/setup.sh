#!/bin/bash

# Update the package index
sudo apt-get update

# Install Apache HTTP Server
sudo apt-get install -y apache2

# Create directory structure
mkdir -p ~/project

# Set permissions
sudo chown -R labex:labex ~/project