#!/bin/bash
if ! grep -q "Error found in sample.log" ~/.zsh_history; then
    echo "swatch did not detect the error message in the sample.log file."
    exit 1
else
    echo "swatch successfully detected the error message in the sample.log file."
    exit 0
fi