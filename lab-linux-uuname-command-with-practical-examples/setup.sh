#!/bin/bash

# Check uuname version
uuname --version

# Retrieve system information
echo "System name: $(uuname -s)"
echo "Node name: $(uuname -n)"
echo "Release: $(uuname -r)"
echo "Version: $(uuname -v)"
echo "Machine hardware name: $(uuname -m)"

echo "System information retrieved successfully."