#!/bin/bash

# Check dnf version
sudo dnf --version

# Display dnf help
sudo dnf help

# Search for "tree" package
sudo dnf search tree

# Install "tree" package
sudo dnf install -y tree

# Update all installed packages
sudo dnf update -y