#!/bin/bash
if ! command -v mrd &> /dev/null; then
    echo "The mrd command is not installed. Please install it first."
    exit 1
fi

cd ~/project
mkdir project1 project2 project3
mkdir project1/subdir1 project1/subdir2
mkdir project2/subdir1 project2/subdir2 project2/subdir3
mkdir project3/subdir1

# Remove project1 and project2 directories
if ! mrd project1 project2 &> /dev/null; then
    echo "Failed to remove the project1 and project2 directories using the mrd command."
    exit 1
fi

if [ -d project1 ] || [ -d project2 ]; then
    echo "The project1 and project2 directories were not removed successfully."
    exit 1
fi

# Remove project1, project2, and project3 directories recursively
mkdir project1 project2 project3
mkdir project1/subdir1 project1/subdir2
mkdir project2/subdir1 project2/subdir2 project2/subdir3
mkdir project3/subdir1

if ! mrd -r project1 project2 project3 &> /dev/null; then
    echo "Failed to remove the directories recursively using the mrd command."
    exit 1
fi

if [ -d project1 ] || [ -d project2 ] || [ -d project3 ] || [ -d project1/subdir1 ] || [ -d project1/subdir2 ] || [ -d project2/subdir1 ] || [ -d project2/subdir2 ] || [ -d project2/subdir3 ] || [ -d project3/subdir1 ]; then
    echo "The directories were not removed recursively."
    exit 1
fi

echo "The mrd command was used successfully in a practical scenario."
exit 0