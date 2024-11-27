#!/bin/bash
if command -v mc &> /dev/null; then
    echo "Midnight Commander is installed successfully."
    exit 0
else
    echo "Midnight Commander is not installed. Please check the installation steps."
    exit 1
fi