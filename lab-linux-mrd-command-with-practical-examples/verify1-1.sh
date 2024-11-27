#!/bin/bash
if ! command -v mrd &> /dev/null; then
    echo "The mrd command is not installed. Please install it first."
    exit 1
fi

cd ~/project
mkdir dir1 dir2 dir3
if ! mrd dir1 dir2 dir3 &> /dev/null; then
    echo "Failed to remove the directories using the mrd command."
    exit 1
fi

if [ -d dir1 ] || [ -d dir2 ] || [ -d dir3 ]; then
    echo "The directories were not removed successfully."
    exit 1
fi

echo "The mrd command was used successfully to remove the directories."
exit 0