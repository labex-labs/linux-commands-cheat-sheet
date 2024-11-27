#!/bin/bash

# Check if the necessary commands are installed
if ! command -v uname &> /dev/null; then
    echo "uname command not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y coreutils
fi

# Retrieve system information using uname
echo "Kernel name: $(uname -s)"
echo "Hostname: $(uname -n)"
echo "Kernel release: $(uname -r)"
echo "Kernel version: $(uname -v)"
echo "Machine hardware name: $(uname -m)"
echo "Processor type: $(uname -p)"
echo "Hardware platform: $(uname -i)"
echo "Operating system: $(uname -o)"