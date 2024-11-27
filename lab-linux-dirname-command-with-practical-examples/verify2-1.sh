#!/bin/bash
file_path="/home/labex/project/file.txt"
dir_name=$(dirname $file_path)
if [ "$dir_name" == "/home/labex/project" ]; then
    exit 0
else
    echo "The dirname command did not correctly extract the directory name from the file path."
    exit 1
fi