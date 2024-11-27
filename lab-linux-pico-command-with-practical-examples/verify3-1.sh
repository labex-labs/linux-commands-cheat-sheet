#!/bin/bash
if [ ! -f ~/.pinerc ]; then
    echo "The ~/.pinerc file was not created."
    exit 1
fi
echo "The ~/.pinerc file was created successfully."
exit 0