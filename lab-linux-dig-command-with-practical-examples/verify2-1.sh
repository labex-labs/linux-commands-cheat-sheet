#!/bin/bash
if dig google.com | grep -q "142.250.179.78"; then
    exit 0
else
    echo "The dig command did not return the expected IP address for google.com"
    exit 1
fi