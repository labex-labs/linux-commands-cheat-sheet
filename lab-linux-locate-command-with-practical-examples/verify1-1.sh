#!/bin/bash
if ! command -v locate &> /dev/null
then
    echo "The locate command is not installed. Please install the mlocate package."
    exit 1
fi
echo "The locate command is installed."