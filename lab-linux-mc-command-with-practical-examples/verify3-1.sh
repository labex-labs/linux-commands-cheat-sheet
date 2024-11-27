#!/bin/bash
if [ -d ~/project/mc_demo ] && [ -f ~/project/mc_demo/example.txt ] && [ ! -f ~/project/mc_demo/copied_file.txt ]; then
    echo "You have successfully performed file and directory operations using Midnight Commander."
    exit 0
else
    echo "You have not completed the file and directory operations as expected. Please review the step instructions."
    exit 1
fi