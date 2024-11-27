#!/bin/bash
if [ -f libmylib.a ]; then
    exit 0
else
    echo "The static library libmylib.a is not created."
    exit 1
fi