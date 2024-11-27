#!/bin/bash

# Verify the current root directory
echo "Current root directory:"
pwd

# Create a chroot environment
echo "Creating chroot environment..."
sudo chroot /

# Verify the new root directory
echo "New root directory:"
pwd

# Exit the chroot environment
echo "Exiting chroot environment..."
exit