#!/bin/bash
if [ ! -f ~/project/new_file.txt ]; then
    echo "new_file.txt was not created in the ~/project directory."
    exit 1
fi
echo "new_file.txt was created successfully in the ~/project directory."
exit 0