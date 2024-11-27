#!/bin/bash
dump_version=$(sudo dump --version | grep -o -E '[0-9]+\.[0-9]+')
if [[ $dump_version == "0.4b41" ]]; then
    exit 0
else
    echo "Unexpected dump command version: $dump_version"
    exit 1
fi