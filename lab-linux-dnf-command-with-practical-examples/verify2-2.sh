#!/bin/bash
if dnf check-update &> /dev/null; then
    echo "There are updates available for installed packages."
    exit 1
else
    echo "All installed packages are up-to-date."
    exit 0
fi