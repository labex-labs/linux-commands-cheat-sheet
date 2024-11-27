#!/bin/bash
if sudo accton | grep -q "accounting enabled"; then
    if sudo dump -f /var/log/account/pacct | grep -q "network"; then
        exit 0
    else
        echo "No network-related processes were found in the accounting log."
        exit 1
    fi
else
    echo "Accounting is not enabled. Please enable it using the accton command."
    exit 1
fi