#!/bin/bash
if dig +short google.com | grep -q "142.250.179.78"; then
    exit 0
else
    echo "The dig +short command did not return the expected output for google.com"
    exit 1
fi