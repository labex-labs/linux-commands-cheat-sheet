#!/bin/bash
if ! grep -q "Executing 'ls -l' command using exec" ~/.zsh_history; then
    echo "The 'Executing 'ls -l' command using exec' line was not found in the command history."
    exit 1
fi
if ! grep -q "Executing 'echo Hello, World!' using exec" ~/.zsh_history; then
    echo "The 'Executing 'echo Hello, World!' using exec' line was not found in the command history."
    exit 1
fi