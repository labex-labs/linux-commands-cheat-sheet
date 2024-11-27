#!/bin/bash
if dig +norecurse @8.8.8.8 google.com | grep -q "google.com.              300     IN      A       142.250.179.78"; then
    exit 0
else
    echo "The dig +norecurse command did not return the expected output for google.com"
    exit 1
fi