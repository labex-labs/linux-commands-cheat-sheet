#!/bin/bash
if ! sudo ntsysv --list | grep -q "Runlevel 3 (Full multiuser mode)"; then
    echo "The runlevel configuration was not modified as expected."
    exit 1
fi
if sudo ntsysv --list | grep -q "[*] apache2"; then
    echo "The apache2 service is still enabled for runlevel 3."
    exit 1
fi
echo "The runlevel configuration was modified successfully."
exit 0