#!/bin/bash
if ! command -v joe &> /dev/null
then
    echo "The joe text editor is not installed."
    exit 1
fi
echo "The joe text editor is installed."
exit 0