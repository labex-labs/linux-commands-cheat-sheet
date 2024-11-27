#!/bin/bash
if ! command -v traceroute &> /dev/null
then
    echo "The traceroute command is not installed. Please install it first."
    exit 1
else
    echo "The traceroute command is installed."
    exit 0
fi