#!/bin/bash
if ! grep -q "Before exec" ~/.zsh_history; then
    echo "The 'Before exec' line was not found in the command history."
    exit 1
fi
if grep -q "After exec" ~/.zsh_history; then
    echo "The 'After exec' line was found in the command history, which is unexpected."
    exit 1
fi