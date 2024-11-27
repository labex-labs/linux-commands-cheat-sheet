#!/bin/bash

# Check if the 'vboxsf' module is loaded
if lsmod | grep -q 'vboxsf'; then
    sudo rmmod vboxsf
fi

# Verify the 'vboxsf' module has been removed
lsmod