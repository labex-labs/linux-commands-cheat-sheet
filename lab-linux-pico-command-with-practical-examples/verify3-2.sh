#!/bin/bash
content=$(cat ~/.pinerc)
if ! grep -q "color-normal = white on blue" "$content"; then
    echo "The ~/.pinerc file does not contain the expected content."
    exit 1
fi
echo "The ~/.pinerc file contains the expected content."
exit 0