#!/bin/bash
version=$(dpkg -s mtools | grep Version | awk -F': ' '{print $2}')
if [ "$version" != "4.0.26-1" ]; then
    echo "Incorrect mtools version installed. Expected 4.0.26-1, found $version."
    exit 1
else
    echo "Correct mtools version (4.0.26-1) installed."
    exit 0
fi