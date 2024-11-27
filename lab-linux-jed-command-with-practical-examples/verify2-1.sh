#!/bin/bash
touch test.txt
jed test.txt

# Verify moving to the beginning of the line
if ! grep -q "^Ctrl+A" ~/.zsh_history; then
    echo "Failed to verify moving to the beginning of the line"
    exit 1
fi

# Verify deleting the current line
if ! grep -q "^Ctrl+K" ~/.zsh_history; then
    echo "Failed to verify deleting the current line"
    exit 1
fi

# Verify copying and pasting the current line
if ! grep -q "^Ctrl+Y" ~/.zsh_history && ! grep -q "^Ctrl+U" ~/.zsh_history; then
    echo "Failed to verify copying and pasting the current line"
    exit 1
fi

# Verify indenting the current line
if ! grep -q "^Ctrl+T" ~/.zsh_history; then
    echo "Failed to verify indenting the current line"
    exit 1
fi

rm test.txt
echo "All basic jed commands verified"
exit 0