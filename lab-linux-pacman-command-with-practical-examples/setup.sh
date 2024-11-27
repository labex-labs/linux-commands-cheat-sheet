#!/bin/bash

# Check pacman version
pacman --version

# Update package database
sudo pacman -Sy

# Install htop
sudo pacman -S htop

# Update all installed packages
sudo pacman -Syu