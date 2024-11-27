#!/bin/bash
if grep -q "SSH login successful!" ~/.zsh_history; then
    echo "SSH login automation successful"
    exit 0
else
    echo "SSH login automation failed"
    exit 1
fi