#!/bin/bash

# Check if rsh is installed
if ! command -v rsh &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y rsh-client
fi