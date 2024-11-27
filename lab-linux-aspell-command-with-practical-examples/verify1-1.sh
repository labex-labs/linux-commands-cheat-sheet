#!/bin/bash
if ! command -v aspell &> /dev/null
then
    echo "aspell package is not installed"
    exit 1
fi
echo "aspell package is installed"
exit 0