#!/bin/bash

# Update package index
sudo apt-get update

# Install Midnight Commander (mc)
if ! command -v mc &> /dev/null; then
    sudo apt-get install -y mc
fi