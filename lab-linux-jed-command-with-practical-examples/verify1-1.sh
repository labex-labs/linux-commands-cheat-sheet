#!/bin/bash
if ! command -v jed &> /dev/null
then
    echo "jed is not installed"
    exit 1
fi
echo "jed is installed"
exit 0