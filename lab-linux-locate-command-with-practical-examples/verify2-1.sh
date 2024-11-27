#!/bin/bash
if ! dpkg -s mlocate &> /dev/null
then
    echo "The mlocate package is not installed. Please install it using the following commands:"
    echo "sudo apt-get update"
    echo "sudo apt-get install -y mlocate"
    exit 1
fi
echo "The mlocate package is installed."