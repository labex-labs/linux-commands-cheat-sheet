#!/bin/bash
if dig +trace google.com | grep -q "google.com.             300     IN      A       142.250.179.78"; then
    exit 0
else
    echo "The dig +trace command did not return the expected output for google.com"
    exit 1
fi