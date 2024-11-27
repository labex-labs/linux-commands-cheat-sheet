#!/bin/bash
if ! grep -q "PORT    STATE SERVICE" ~/.zsh_history; then
    echo "UDP scan not performed. Please run the UDP scan command."
    exit 1
else
    echo "UDP scan performed successfully."
    exit 0
fi