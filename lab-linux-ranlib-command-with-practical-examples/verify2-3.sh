#!/bin/bash
if grep -q "gcc -o main main.o -L. -lmylib" ~/.zsh_history; then
    exit 0
else
    echo "The program is not linked against the static library."
    exit 1
fi