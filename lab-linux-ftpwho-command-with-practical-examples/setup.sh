#!/bin/bash

# Check if ftpwho is installed
if ! command -v ftpwho &> /dev/null
then
    echo "ftpwho command not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y vsftpd
fi

# Explore the ftpwho command options
sudo ftpwho --help