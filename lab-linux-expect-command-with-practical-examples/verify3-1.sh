#!/bin/bash
if grep -q "SSH login successful!" ~/.zsh_history; then
    echo "Prompt handling successful"
    exit 0
else
    echo "Prompt handling failed"
    exit 1
fi