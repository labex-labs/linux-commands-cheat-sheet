#!/bin/bash
if ! command -v mrd &> /dev/null; then
    echo "The mrd command is not installed. Please install it first."
    exit 1
fi

cd ~/project
mkdir dir1 dir2 dir3
mkdir dir1/subdir1 dir1/subdir2
mkdir dir2/subdir1

# Test the -i option
if ! mrd -i dir1 dir2 dir3 2>&1 | grep -q "Remove directory"; then
    echo "The -i option did not work as expected."
    exit 1
fi

# Test the -f option
if ! mrd -f dir1 dir2 dir3 &> /dev/null; then
    echo "The -f option did not work as expected."
    exit 1
fi

if [ -d dir1 ] || [ -d dir2 ] || [ -d dir3 ]; then
    echo "The directories were not removed successfully."
    exit 1
fi

# Test the -r option
mkdir dir1 dir2 dir3
mkdir dir1/subdir1 dir1/subdir2
mkdir dir2/subdir1
if ! mrd -r dir1 dir2 dir3 &> /dev/null; then
    echo "The -r option did not work as expected."
    exit 1
fi

if [ -d dir1 ] || [ -d dir2 ] || [ -d dir3 ] || [ -d dir1/subdir1 ] || [ -d dir1/subdir2 ] || [ -d dir2/subdir1 ]; then
    echo "The directories were not removed recursively."
    exit 1
fi

echo "The mrd command options were used successfully."
exit 0