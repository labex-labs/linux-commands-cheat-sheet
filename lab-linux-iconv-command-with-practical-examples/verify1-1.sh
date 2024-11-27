#!/bin/bash
if ! echo "Hello, World!" | iconv -f UTF-8 -t ISO-8859-1 &> /dev/null; then
    exit 1
fi