#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker before running this script."
    exit 1
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change the working directory to the project directory
cd ~/project

# Display the current system hostname information
echo "Current system hostname information:"
hostnamectl status

# Temporarily change the hostname
echo "Temporarily changing the hostname to 'networking-lab'..."
hostnamectl set-hostname networking-lab

# Display the updated hostname information
echo "Updated system hostname information:"
hostnamectl status

# Change the hostname back to the original
echo "Changing the hostname back to the original..."
hostnamectl set-hostname ubuntu

# Display the restored hostname information
echo "Restored system hostname information:"
hostnamectl status