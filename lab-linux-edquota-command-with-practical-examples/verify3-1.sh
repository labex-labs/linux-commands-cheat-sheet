#!/bin/bash
if sudo edquota -p alice labex | grep -q "50000.*60000"; then
    exit 0
else
    echo "User disk quota for alice is not set correctly."
    exit 1
fi