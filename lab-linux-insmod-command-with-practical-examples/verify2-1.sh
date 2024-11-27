#!/bin/bash
if [ -f ~/project/hello2.o ]; then
    exit 0
else
    echo "The 'hello2' kernel module is not compiled."
    exit 1
fi