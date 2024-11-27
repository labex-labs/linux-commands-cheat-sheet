#!/bin/bash
if dpkg -s aumix | grep -q "Status: install ok installed"; then
    exit 0
else
    echo "aumix package is not installed properly"
    exit 1
fi