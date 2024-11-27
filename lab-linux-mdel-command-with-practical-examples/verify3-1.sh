#!/bin/bash
if ! [ -d ~/project/dir7 ] || ! [ -d ~/project/dir\ 8 ] || ! [ -d ~/project/dir\ 9 ] || ! [ -d /tmp/dir10 ] || ! [ -d /tmp/dir11 ]; then
    echo "One or more directories were not created successfully."
    exit 1
fi
if ! [ "$(ls -ld ~/project/dir7 | awk '{print $1}')" = "drwxr-xr-x" ]; then
    echo "The permissions for ~/project/dir7 are not set correctly."
    exit 1
fi
exit 0