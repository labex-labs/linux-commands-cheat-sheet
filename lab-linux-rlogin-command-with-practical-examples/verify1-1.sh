#!/bin/bash
if ! command -v rlogin &> /dev/null; then
    echo "The rlogin command is not available on your system."
    exit 1
fi
echo "The rlogin command is available on your system."
exit 0