#!/bin/bash
if ! grep -q "PORT     STATE SERVICE" ~/.zsh_history; then
    echo "SYN scan not performed. Please run the SYN scan command."
    exit 1
else
    echo "SYN scan performed successfully."
    exit 0
fi