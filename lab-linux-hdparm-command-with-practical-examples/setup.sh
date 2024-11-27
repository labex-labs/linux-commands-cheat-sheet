#!/bin/bash

# Check if hdparm is installed
if ! command -v hdparm &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y hdparm
fi

# Retrieve disk information
sudo hdparm -i /dev/sda

# Measure disk performance
sudo hdparm -tT /dev/sda