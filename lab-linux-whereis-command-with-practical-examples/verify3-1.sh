#!/bin/bash
if [[ $(whereis -b gcc | grep -o '/usr/bin/gcc') ]]; then
    exit 0
else
    echo "The binary location of 'gcc' was not found at /usr/bin/gcc."
    exit 1
fi