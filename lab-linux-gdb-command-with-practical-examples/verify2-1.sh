#!/bin/bash
if grep -q "divide by zero" ~/.zsh_history; then
    echo "Debugged the divide by zero issue"
    exit 0
else
    echo "Did not debug the divide by zero issue"
    exit 1
fi