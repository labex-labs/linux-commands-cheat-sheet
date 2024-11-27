#!/bin/bash
file_path="/home/labex/project/file.txt"
new_dir=$(dirname $file_path)/new_dir
if [ -d "$new_dir" ]; then
    exit 0
else
    echo "The dirname command was not used correctly to create a new directory."
    exit 1
fi