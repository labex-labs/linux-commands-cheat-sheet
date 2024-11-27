#!/bin/bash
cd ~/project/myproject
if ! grep -q "This is a sample project managed by CVS" README.md; then
    echo "Changes not committed to the CVS repository."
    exit 1
else
    echo "Changes committed successfully."
    exit 0
fi