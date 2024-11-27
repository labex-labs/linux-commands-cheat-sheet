#!/bin/bash
if sudo accton | grep -q "accounting enabled"; then
    exit 0
else
    echo "Accounting is not enabled. Please enable it using the accton command."
    exit 1
fi