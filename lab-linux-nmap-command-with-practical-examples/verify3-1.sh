#!/bin/bash
if ! grep -q "VULNERABLE" ~/.zsh_history; then
    echo "Script scan not performed. Please run the script scan command."
    exit 1
else
    echo "Script scan performed successfully."
    exit 0
fi