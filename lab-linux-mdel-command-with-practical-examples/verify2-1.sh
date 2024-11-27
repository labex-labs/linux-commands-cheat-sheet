#!/bin/bash
if ! [ -d ~/project/dir1 ] || ! [ -d ~/project/dir1/subdir1 ] || ! [ -d ~/project/dir1/subdir2 ] || ! [ -d ~/project/dir2 ] || ! [ -d ~/project/dir2/subdir1 ] || ! [ -d ~/project/dir3 ] || ! [ -d ~/project/dir4 ] || ! [ -d ~/project/dir5 ] || ! [ -d ~/project/dir6 ]; then
    echo "One or more directories were not created successfully."
    exit 1
fi
exit 0