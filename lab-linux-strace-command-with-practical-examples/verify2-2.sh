#!/bin/bash
if ! strace python ~/project/example.py | grep -q "Hello, World!"; then
    echo "The strace output did not contain the 'Hello, World!' message."
    exit 1
fi
echo "The strace output contained the 'Hello, World!' message as expected."
exit 0