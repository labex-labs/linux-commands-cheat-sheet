#!/bin/bash
if ! command -v pppstats &> /dev/null; then
    echo "pppstats command not found. Please install the ppp package."
    exit 1
fi
if ! pppstats | grep -q "bytes_in"; then
    echo "pppstats output does not contain the expected fields."
    exit 1
fi
echo "pppstats command is working as expected."
exit 0