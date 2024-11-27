#!/bin/bash

# Check if traceroute is installed
if ! command -v traceroute &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y traceroute
fi

# Run traceroute to www.example.com
traceroute www.example.com