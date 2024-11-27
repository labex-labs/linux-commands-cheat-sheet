#!/bin/bash

# Check current locale settings
echo "Checking current locale settings..."
localectl status

# Set system locale to French (France) with UTF-8 encoding
echo "Setting system locale to fr_FR.UTF-8..."
sudo localectl set-locale LANG=fr_FR.UTF-8

# Verify the locale change
echo "Verifying the locale change..."
localectl status