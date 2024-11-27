#!/bin/bash
if ! command -v ctags &> /dev/null
then
    echo "ctags command not found"
    exit 1
else
    echo "ctags command found"
    exit 0
fi