#!/bin/bash
if ! grep -q "finance:!" /etc/gshadow; then
    echo "The 'finance' group password is not synchronized"
    exit 1
fi