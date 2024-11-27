#!/bin/bash
dnf_version=$(sudo dnf --version | grep -o -E '[0-9]+\.[0-9]+\.[0-9]+')
if [[ "$dnf_version" == "4.9.0" ]]; then
    exit 0
else
    echo "Expected dnf version 4.9.0, but found $dnf_version"
    exit 1
fi