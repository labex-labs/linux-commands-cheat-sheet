#!/bin/bash
if python3 -c "
import os

# Create a new directory
os.mkdir('my_directory')
os.chdir('my_directory')

# List directory contents
print(os.listdir())

# Create a new file
file_path = os.path.join('my_directory', 'example.txt')
with open(file_path, 'w') as file:
    file.write('This is an example file.')

# Remove the file
os.remove(file_path)

# Remove the directory
os.chdir('..')
os.rmdir('my_directory')

# Check if directory exists
print(os.path.exists('my_directory'))
" | grep -q "[].*my_directory/example.txt.*False"; then
    exit 0
else
    echo "One or more file and directory management operations did not work as expected."
    exit 1
fi