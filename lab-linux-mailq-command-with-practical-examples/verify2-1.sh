#!/bin/bash
if sudo mailq | grep -q "labex@example.com"; then
    exit 0
else
    echo "The test emails are not present in the mail queue."
    exit 1
fi