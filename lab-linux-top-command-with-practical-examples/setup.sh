#!/bin/bash

# Check if the user is running the script with sudo
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Navigate to the project directory
cd ~/project

# No additional setup required for this step
echo "Environment is ready for the 'Understand the top Command' step."