#!/bin/bash
if [ "$(echo "Hello, World!" | tr -d '\n')" == "Hello, World!" ]; then
    exit 0
else
    echo "The echo command did not print the expected output."
    exit 1
fi