#!/bin/bash
if ! zless --help &> /dev/null; then
    echo "The zless command could not be found or executed properly."
    exit 1
fi
echo "The zless command is working as expected."
exit 0