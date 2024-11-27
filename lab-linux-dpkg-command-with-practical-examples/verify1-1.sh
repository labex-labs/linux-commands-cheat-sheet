#!/bin/bash
dpkg_version=$(dpkg --version | head -n 1 | awk '{print $2}')
if [[ "$dpkg_version" == "1.21.1ubuntu2.1" ]]; then
    exit 0
else
    echo "Unexpected dpkg version: $dpkg_version"
    exit 1
fi