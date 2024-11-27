#!/bin/bash
# Check if the first email was deleted
if sudo mailq | grep -q "0A1234B6"; then
    echo "The first email was not deleted from the queue."
    exit 1
fi

# Check if the second email was held and then released
if ! sudo mailq | grep -q "0B5678C9"; then
    echo "The second email was not present in the queue."
    exit 1
fi