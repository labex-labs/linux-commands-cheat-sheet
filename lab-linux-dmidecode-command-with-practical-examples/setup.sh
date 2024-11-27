#!/bin/bash

# Check if dmidecode is installed
if ! command -v dmidecode &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y dmidecode
fi

# Display system hardware information
sudo dmidecode

# Display processor information
sudo dmidecode -t processor