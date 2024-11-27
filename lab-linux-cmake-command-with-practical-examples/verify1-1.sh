#!/bin/bash
if ! command -v cmake &> /dev/null
then
    echo "CMake is not installed."
    exit 1
fi

if [[ "$(cmake --version | head -n 1 | cut -d ' ' -f 3)" != "3.22.1" ]]
then
    echo "CMake version is not 3.22.1."
    exit 1
fi

echo "CMake is installed and the version is 3.22.1."
exit 0