#!/bin/bash
if command -v emacs &> /dev/null
then
    echo "emacs is installed"
    exit 0
else
    echo "emacs is not installed"
    exit 1
fi