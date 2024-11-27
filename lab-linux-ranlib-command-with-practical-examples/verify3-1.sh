#!/bin/bash
if nm libmylib.a | grep -q "T myfunction"; then
    exit 0
else
    echo "The static library does not contain the expected symbol `myfunction`."
    exit 1
fi