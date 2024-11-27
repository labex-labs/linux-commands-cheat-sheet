#!/bin/bash
if ! grep -q "developers" /etc/group; then
    echo "The 'developers' group does not exist"
    exit 1
fi
if ! id labex | grep -q "developers"; then
    echo "The 'labex' user is not a member of the 'developers' group"
    exit 1
fi