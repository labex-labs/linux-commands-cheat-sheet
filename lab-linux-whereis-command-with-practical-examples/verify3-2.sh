#!/bin/bash
if [[ $(whereis -m python3 | grep -o '/usr/share/man/man1/python3.1.gz') ]]; then
    exit 0
else
    echo "The manual page location of 'python3' was not found at /usr/share/man/man1/python3.1.gz."
    exit 1
fi