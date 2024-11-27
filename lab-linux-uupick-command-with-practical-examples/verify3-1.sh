#!/bin/bash
if ! command -v uupick &> /dev/null
then
    echo "The uupick command is not installed. Please install the sharutils package."
    exit 1
else
    echo "The uupick command is installed."
    exit 0
fi