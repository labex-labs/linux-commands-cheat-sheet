#!/bin/bash
if ! command -v tree &> /dev/null
then
    echo "The tree command is not installed. Please install it first."
    exit 1
else
    echo "The tree command is installed."
    exit 0
fi