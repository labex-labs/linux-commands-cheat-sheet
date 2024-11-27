#!/bin/bash
if ! grep -q "Enter some text:" ~/.zsh_history; then
    echo "The 'Enter some text:' prompt was not found in the command history."
    exit 1
fi
if ! grep -q "Hello, World!" ~/.zsh_history; then
    echo "The 'Hello, World!' input was not found in the command history."
    exit 1
fi