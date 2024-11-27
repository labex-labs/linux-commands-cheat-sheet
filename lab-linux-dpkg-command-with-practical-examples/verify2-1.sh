#!/bin/bash
dpkg -s example-package | grep -q "Status: install ok installed"
if [ $? -eq 0 ]; then
    exit 0
else
    echo "example-package is not installed correctly"
    exit 1
fi