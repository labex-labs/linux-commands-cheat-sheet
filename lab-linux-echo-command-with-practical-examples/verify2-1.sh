#!/bin/bash
if echo "Hello, World!" | grep -q "Hello, World!"; then
    exit 0
else
    echo "The echo command did not print the expected output."
    exit 1
fi