#!/bin/bash
if ! command -v nmap &> /dev/null
then
    echo "nmap is not installed. Please install it first."
    exit 1
else
    echo "nmap is installed."
    exit 0
fi