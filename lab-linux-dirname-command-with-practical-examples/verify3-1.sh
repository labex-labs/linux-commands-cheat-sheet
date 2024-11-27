#!/bin/bash
file_path="/home/labex/project/file.txt"
cd $(dirname $file_path)
if [ "$(pwd)" == "/home/labex/project" ]; then
    exit 0
else
    echo "The dirname command was not used correctly to change the working directory."
    exit 1
fi