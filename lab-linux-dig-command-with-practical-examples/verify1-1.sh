#!/bin/bash
if dig example.com | grep -q "93.184.216.34"; then
    exit 0
else
    echo "The dig command did not return the expected IP address for example.com"
    exit 1
fi