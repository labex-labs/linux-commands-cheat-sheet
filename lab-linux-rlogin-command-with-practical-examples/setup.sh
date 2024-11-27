#!/bin/bash

# Check if rlogin command is available
if ! command -v rlogin &> /dev/null
then
    echo "rlogin command not found. Please ensure it is installed on your system."
    exit 1
fi

# Establish remote login session
rlogin 192.168.1.100