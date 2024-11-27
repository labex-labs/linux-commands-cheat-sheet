#!/bin/bash

# Check if the 'bridge' module is loaded
if ! lsmod | grep -q 'bridge'; then
    # Load the 'bridge' module
    sudo modprobe bridge
fi

# Verify that the 'bridge' module is loaded
if lsmod | grep -q 'bridge'; then
    echo "The 'bridge' module has been loaded successfully."
else
    echo "Failed to load the 'bridge' module."
fi