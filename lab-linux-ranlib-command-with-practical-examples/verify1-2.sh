#!/bin/bash
if grep -q "ranlib libmylib.a" ~/.zsh_history; then
    exit 0
else
    echo "The `ranlib` command is not used to update the symbol table in the static library."
    exit 1
fi