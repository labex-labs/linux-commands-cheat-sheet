#!/bin/bash
if ! sudo systemctl is-active apache2 &> /dev/null; then
    echo "The apache2 service is not enabled. Please enable it using ntsysv."
    exit 1
fi
echo "The apache2 service is enabled and running."
exit 0