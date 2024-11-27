#!/bin/bash
if command -v dmidecode &> /dev/null
then
    echo "dmidecode command is installed"
    exit 0
else
    echo "dmidecode command is not installed"
    exit 1
fi