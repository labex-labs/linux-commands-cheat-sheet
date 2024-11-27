#!/bin/bash

# Update package index
sudo apt-get update

# Install CMake
if ! command -v cmake &> /dev/null
then
    sudo apt-get install -y cmake
fi