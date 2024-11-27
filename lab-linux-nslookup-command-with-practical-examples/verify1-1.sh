#!/bin/bash
if ! command -v nslookup &> /dev/null; then
    echo "The nslookup command is not available. Please check your system setup."
    exit 1
fi

if ! nslookup google.com | grep -q "Address: "; then
    echo "Failed to perform a basic DNS lookup using nslookup."
    exit 1
fi

echo "Verified nslookup command usage successfully."
exit 0