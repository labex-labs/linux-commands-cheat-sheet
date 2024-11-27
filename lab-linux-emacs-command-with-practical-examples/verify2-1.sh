#!/bin/bash
if grep -q "Ctrl+p, Ctrl+n, Ctrl+b, Ctrl+f" ~/.zsh_history; then
    echo "Cursor navigation commands verified"
else
    echo "Cursor navigation commands not found in history"
    exit 1
fi

if grep -q "Ctrl+d" ~/.zsh_history; then
    echo "Delete character command verified"
else
    echo "Delete character command not found in history"
    exit 1
fi

if grep -q "Alt+Backspace" ~/.zsh_history; then
    echo "Delete word command verified"
else
    echo "Delete word command not found in history"
    exit 1
fi

if grep -q "Ctrl+k" ~/.zsh_history; then
    echo "Cut line command verified"
else
    echo "Cut line command not found in history"
    exit 1
fi

if grep -q "Ctrl+y" ~/.zsh_history; then
    echo "Paste command verified"
else
    echo "Paste command not found in history"
    exit 1
fi

if grep -q "Ctrl+x Ctrl+s" ~/.zsh_history; then
    echo "Save file command verified"
else
    echo "Save file command not found in history"
    exit 1
fi

if grep -q "Ctrl+x Ctrl+c" ~/.zsh_history; then
    echo "Exit emacs command verified"
else
    echo "Exit emacs command not found in history"
    exit 1
fi

echo "All basic emacs commands verified"
exit 0