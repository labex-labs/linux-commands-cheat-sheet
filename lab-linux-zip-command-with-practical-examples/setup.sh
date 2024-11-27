#!/bin/bash

# Check zip command version
zip --version

# Create a zip archive
zip archive.zip file1.txt file2.txt directory/

# List the contents of a zip archive
unzip -l archive.zip

# Extract a zip archive
unzip archive.zip

# Extract a zip archive to a specific directory
unzip archive.zip -d /path/to/extract/directory

# Compress a directory with the zip command
zip -r archive.zip directory/

# Encrypt a zip archive
zip -e archive.zip file1.txt file2.txt