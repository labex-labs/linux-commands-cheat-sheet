#!/bin/bash
if grep -q "gcc -o main main.o -L. -lmylib" ~/.zsh_history; then
    if ./main | grep -q "The answer is: 42"; then
        exit 0
    else
        echo "The program does not run as expected."
        exit 1
    fi
else
    echo "The program is not linked against the static library."
    exit 1
fi